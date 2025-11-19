@interface GHSService
- (BOOL)getDebugLoggingEnabled;
- (GHSService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5;
- (id)ghsDeviceProperties;
- (void)abortRACPRequest;
- (void)connectionIdleTimeout;
- (void)consentDidFail:(id)a3;
- (void)consentDidSucceed:(id)a3;
- (void)createGHSDeviceIfReady;
- (void)deleteAllStoredObservation;
- (void)extractGHSControlPointResponse;
- (void)extractHealthObservationBodySegmentFromData:(id)a3 isLive:(BOOL)a4;
- (void)extractHealthSensorFeatures;
- (void)extractLiveHealthObservation;
- (void)extractObservationScheduleChanged;
- (void)extractRACPResponse;
- (void)extractStoredHealthObservation;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)retrieveLastStoredObservation;
- (void)start;
- (void)startLiveHealthObservation;
- (void)stop;
- (void)stopLiveHealthObservation;
@end

@implementation GHSService

- (GHSService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5
{
  v10.receiver = self;
  v10.super_class = GHSService;
  v5 = [(ClientService *)&v10 initWithManager:a3 peripheral:a4 service:a5];
  v6 = v5;
  if (v5)
  {
    [(ClientService *)v5 setIsPrimary:1];
    [(ClientService *)v6 setPriority:7];
    [(ClientService *)v6 setStartTimeout:0.0];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"consentDidSucceed:" name:@"UserDataServiceConsentDidSucceedNotification" object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v6 selector:"consentDidFail:" name:@"UserDataServiceConsentDidFailNotification" object:0];

    v6->_isExtraLoggingEnabled = [(GHSService *)v6 getDebugLoggingEnabled];
  }

  return v6;
}

- (void)start
{
  v20.receiver = self;
  v20.super_class = GHSService;
  [(ClientService *)&v20 start];
  self->_isRACPInProgress = 0;
  self->_currentRACPOpCode = -1;
  v3 = objc_alloc_init(NSMutableData);
  liveObservationData = self->_liveObservationData;
  self->_liveObservationData = v3;

  v5 = objc_alloc_init(NSMutableData);
  storedObservationData = self->_storedObservationData;
  self->_storedObservationData = v5;

  self->_lastSyncedRecordNum = 0;
  v7 = [(ClientService *)self manager];
  v8 = [CBUUID UUIDWithString:CBUUIDUserDataServiceString];
  v9 = [v7 clientServiceForUUID:v8];

  self->_isUDSConsentGranted = v9 == 0;
  v10 = [CBUUID UUIDWithString:CBUUIDHealthSensorFeaturesCharacteristicString];
  v21[0] = v10;
  v11 = [CBUUID UUIDWithString:CBUUIDLiveHealthObservationsCharacteristicString];
  v21[1] = v11;
  v12 = [CBUUID UUIDWithString:CBUUIDStoredHealthObservationsCharacteristicString];
  v21[2] = v12;
  v13 = [CBUUID UUIDWithString:CBUUIDRACPCharacteristicString];
  v21[3] = v13;
  v14 = [CBUUID UUIDWithString:CBUUIDGHSControlPointCharacteristicString];
  v21[4] = v14;
  v15 = [CBUUID UUIDWithString:CBUUIDObservationScheduleChangedCharacteristicString];
  v21[5] = v15;
  v16 = [NSArray arrayWithObjects:v21 count:6];

  v17 = [(ClientService *)self peripheral];
  v18 = [(ClientService *)self service];
  [v17 discoverCharacteristics:v16 forService:v18];

  v19 = [NSTimer scheduledTimerWithTimeInterval:self target:"connectionIdleTimeout" selector:0 userInfo:0 repeats:30.0];
  [(GHSService *)self setConnectionIdleTimer:v19];
}

- (void)stop
{
  self->_isRACPInProgress = 0;
  self->_isUDSConsentGranted = 0;
  self->_currentRACPOpCode = -1;
  liveObservationData = self->_liveObservationData;
  self->_liveObservationData = 0;

  storedObservationData = self->_storedObservationData;
  self->_storedObservationData = 0;

  v5 = [(GHSService *)self connectionIdleTimer];
  [v5 invalidate];

  [(GHSService *)self setConnectionIdleTimer:0];
  v6.receiver = self;
  v6.super_class = GHSService;
  [(ClientService *)&v6 stop];
}

- (void)consentDidSucceed:(id)a3
{
  v4 = [a3 object];
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 name];
    v8 = 141558275;
    v9 = 1752392040;
    v10 = 2113;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "UDS consent succeeded for peripheral %{private, mask.hash}@", &v8, 0x16u);
  }

  self->_isUDSConsentGranted = 1;
  [(GHSService *)self createGHSDeviceIfReady];
}

- (void)consentDidFail:(id)a3
{
  v3 = [a3 object];
  v4 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100073880(v4);
  }
}

- (id)ghsDeviceProperties
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(ClientService *)self manager];
  v5 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
  v6 = [v4 clientServiceForUUID:v5];

  v7 = [v6 manufacturerName];
  [v3 setObject:v7 forKeyedSubscript:@"ManufacturerName"];

  v8 = [v6 modelNumber];
  [v3 setObject:v8 forKeyedSubscript:@"ModelNumber"];

  v9 = [v6 serialNumber];
  [v3 setObject:v9 forKeyedSubscript:@"SerialNumber"];

  v10 = [v6 hardwareRevision];
  [v3 setObject:v10 forKeyedSubscript:@"HardwareRevision"];

  v11 = [v6 softwareRevision];
  [v3 setObject:v11 forKeyedSubscript:@"SoftwareRevision"];

  v12 = [v6 firmwareRevision];
  [v3 setObject:v12 forKeyedSubscript:@"FirmwareRevision"];

  v13 = [v6 udiForMedicalDevices];
  [v3 setObject:v13 forKeyedSubscript:@"UDIForMedicalDevices"];

  v14 = [(ClientService *)self peripheral];
  v15 = [v14 identifier];
  v16 = [v15 UUIDString];
  [v3 setObject:v16 forKeyedSubscript:@"UUID"];

  v17 = [(ClientService *)self peripheral];
  v18 = [v17 name];

  if (v18)
  {
    v19 = [(ClientService *)self peripheral];
    v20 = [v19 name];
    [v3 setObject:v20 forKeyedSubscript:@"kGHSDeviceNameKey"];
  }

  if (self->_deviceType)
  {
    v21 = [NSNumber numberWithUnsignedShort:?];
    [v3 setObject:v21 forKeyedSubscript:@"kBTDeviceTypeMDCDevSpecKey"];
  }

  else
  {
    v22 = [(GHSService *)self featuresCharacteristic];
    v23 = [v22 value];
    v21 = [DataInputStream inputStreamWithData:v23 byteOrder:1];

    v44 = 0;
    [v21 readUint8:&v44 + 1];
    if ([v21 readUint8:&v44] && v44)
    {
      v25 = 0;
      *&v24 = 141558531;
      v40 = v24;
      do
      {
        v43 = 0;
        [v21 readUint32:{&v43, v40}];
        v26 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v26;
          v28 = [(ClientService *)self peripheral];
          v29 = [v28 name];
          *buf = v40;
          v46 = 1752392040;
          v47 = 2113;
          v48 = v29;
          v49 = 1024;
          v50 = v43;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Health Sensor Features for peripheral %{private, mask.hash}@: observationType %u", buf, 0x1Cu);
        }

        v30 = [NSNumber numberWithUnsignedInt:v43];
        [v3 setObject:v30 forKeyedSubscript:@"kBTObservationTypesMDCCodeKey"];

        ++v25;
      }

      while (v25 < v44);
    }

    if ((v44 & 0x100) != 0 && [v21 readUint8:&v44] && v44)
    {
      v32 = 0;
      *&v31 = 141558787;
      v41 = v31;
      do
      {
        LOWORD(v43) = 0;
        v42 = 0;
        [v21 readUint16:{&v43, v41}];
        [v21 readUint8:&v42];
        v33 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v33;
          v35 = [(ClientService *)self peripheral];
          v36 = [v35 name];
          *buf = v41;
          v46 = 1752392040;
          v47 = 2113;
          v48 = v36;
          v49 = 1024;
          v50 = v43;
          v51 = 1024;
          v52 = v42;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Health Sensor Features for peripheral %{private, mask.hash}@: deviceType %u, version %u", buf, 0x22u);
        }

        v37 = [NSNumber numberWithUnsignedShort:v43];
        [v3 setObject:v37 forKeyedSubscript:@"kBTDeviceTypeMDCDevSpecKey"];

        ++v32;
      }

      while (v32 < v44);
    }
  }

  v38 = [NSNumber numberWithBool:self->_isExtraLoggingEnabled];
  [v3 setObject:v38 forKeyedSubscript:@"kGHSPDebugLoggingEnabledKey"];

  return v3;
}

- (void)createGHSDeviceIfReady
{
  deviceType = self->_deviceType;
  if (!self->_deviceType)
  {
    v8 = [(GHSService *)self featuresCharacteristic];
    if (!v8)
    {
      return;
    }

    v39 = v8;
    v2 = [(GHSService *)self featuresCharacteristic];
    v9 = [v2 value];
    if (!v9)
    {

      return;
    }

    v3 = v9;
  }

  v6 = [(GHSService *)self liveObservationCharacteristic];
  if (v6)
  {
    isUDSConsentGranted = self->_isUDSConsentGranted;
  }

  else
  {
    v10 = [(GHSService *)self storedObservationCharacteristic];
    if (v10)
    {
      isUDSConsentGranted = self->_isUDSConsentGranted;
    }

    else
    {
      isUDSConsentGranted = 0;
    }
  }

  if (deviceType)
  {
    if (!isUDSConsentGranted)
    {
      return;
    }
  }

  else
  {

    if (!isUDSConsentGranted)
    {
      return;
    }
  }

  v11 = [(GHSService *)self ghsDeviceProperties];
  v12 = [(GHSService *)self ghsDevice];

  if (!v12)
  {
    v13 = [GHSBluetoothDevice ghsDeviceWithProperties:v11];
    [(GHSService *)self setGhsDevice:v13];

    v14 = [(GHSService *)self ghsDevice];

    if (v14)
    {
      v15 = [(ClientService *)self peripheral];
      v16 = [(GHSService *)self ghsDevice];
      [v16 setPeripheral:v15];

      v17 = [(ClientService *)self peripheral];
      v18 = [v17 customProperty:@"UserSelectedHealthDataSyncConfig"];

      if (!self->_lastSyncedRecordNum)
      {
        v19 = [(ClientService *)self peripheral];
        v20 = [v19 customProperty:@"HealthDataSyncLastStoredRecordNumber"];

        if (v20)
        {
          v21 = objc_alloc_init(NSNumberFormatter);
          [v21 setNumberStyle:1];
          v22 = [v21 numberFromString:v20];
          v23 = v22;
          if (v22)
          {
            self->_lastSyncedRecordNum = [v22 unsignedIntValue];
          }

          else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            sub_100073910();
          }
        }
      }

      v32 = [(GHSService *)self liveObservationCharacteristic];

      v33 = [v18 isEqualToString:@"HealthDataSyncAlways"];
      if (v32)
      {
        if ((v33 & 1) != 0 || [v18 isEqualToString:@"HealthDataSyncWithUserConfirm"])
        {
          [(GHSService *)self startLiveHealthObservation];
        }
      }

      else if (v33)
      {
        [(GHSService *)self retrieveStoredObservationsAfterRecordNumber:self->_lastSyncedRecordNum];
      }

      else if ([v18 isEqualToString:@"HealthDataSyncWithUserConfirm"])
      {
        [(GHSService *)self retrieveLastStoredObservation];
      }

      v34 = +[NSNotificationCenter defaultCenter];
      v35 = [(ClientService *)self peripheral];
      [v34 postNotificationName:@"PeerIsUsingBuiltinServiceNotification" object:v35];

      v36 = [(GHSService *)self connectionIdleTimer];
      [v36 invalidate];

      v37 = [(GHSService *)self ghsDevice];
      v38 = +[NSTimer scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:](NSTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", self, "connectionIdleTimeout", 0, 0, [v37 linkIdleTimeout]);
      [(GHSService *)self setConnectionIdleTimer:v38];

      [(ClientService *)self notifyDidStart];
    }

    else
    {
      v24 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_1000739C8(v24, v25, v26, v27, v28, v29, v30, v31);
      }
    }
  }
}

- (void)startLiveHealthObservation
{
  v3 = [(GHSService *)self liveObservationCharacteristic];
  if (v3)
  {
    v4 = v3;
    v5 = [(GHSService *)self ghsControlPointCharacteristic];

    if (v5)
    {
      v9 = 1;
      v6 = [NSData dataWithBytesNoCopy:&v9 length:1 freeWhenDone:0];
      v7 = [(ClientService *)self peripheral];
      v8 = [(GHSService *)self ghsControlPointCharacteristic];
      [v7 writeValue:v6 forCharacteristic:v8 type:0];
    }
  }
}

- (void)stopLiveHealthObservation
{
  v3 = [(GHSService *)self liveObservationCharacteristic];
  if (v3)
  {
    v4 = v3;
    v5 = [(GHSService *)self ghsControlPointCharacteristic];

    if (v5)
    {
      v9 = 2;
      v6 = [NSData dataWithBytesNoCopy:&v9 length:1 freeWhenDone:0];
      v7 = [(ClientService *)self peripheral];
      v8 = [(GHSService *)self ghsControlPointCharacteristic];
      [v7 writeValue:v6 forCharacteristic:v8 type:0];
    }
  }
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = v8;
  if (a5)
  {
    goto LABEL_50;
  }

  v66 = v8;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v10 = [a4 characteristics];
  v11 = [v10 countByEnumeratingWithState:&v67 objects:v79 count:16];
  if (!v11)
  {
    goto LABEL_37;
  }

  v12 = v11;
  v13 = *v68;
  v65 = CBUUIDHealthSensorFeaturesCharacteristicString;
  v63 = CBUUIDStoredHealthObservationsCharacteristicString;
  v64 = CBUUIDLiveHealthObservationsCharacteristicString;
  v61 = CBUUIDGHSControlPointCharacteristicString;
  v62 = CBUUIDRACPCharacteristicString;
  v60 = CBUUIDObservationScheduleChangedCharacteristicString;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v68 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v67 + 1) + 8 * i);
      v16 = [(GHSService *)self featuresCharacteristic];
      if (v16)
      {
      }

      else
      {
        v17 = [v15 UUID];
        v18 = [CBUUID UUIDWithString:v65];
        v19 = [v17 isEqual:v18];

        if (v19)
        {
          [(GHSService *)self setFeaturesCharacteristic:v15];
          [v66 readValueForCharacteristic:v15];
          continue;
        }
      }

      v20 = [(GHSService *)self liveObservationCharacteristic];
      if (v20)
      {
      }

      else
      {
        v21 = [v15 UUID];
        v22 = [CBUUID UUIDWithString:v64];
        v23 = [v21 isEqual:v22];

        if (v23)
        {
          [(GHSService *)self setLiveObservationCharacteristic:v15];
          goto LABEL_19;
        }
      }

      v24 = [(GHSService *)self storedObservationCharacteristic];
      if (v24)
      {

        goto LABEL_21;
      }

      v25 = [v15 UUID];
      v26 = [CBUUID UUIDWithString:v63];
      v27 = [v25 isEqual:v26];

      if (v27)
      {
        [(GHSService *)self setStoredObservationCharacteristic:v15];
LABEL_19:
        if (([v15 properties] & 0x10) == 0)
        {
LABEL_33:
          if (([v15 properties] & 0x20) == 0)
          {
            continue;
          }
        }

        [v66 setNotifyValue:1 forCharacteristic:v15];
        continue;
      }

LABEL_21:
      v28 = [(GHSService *)self racpCharacteristic];
      if (v28)
      {

        goto LABEL_25;
      }

      v29 = [v15 UUID];
      v30 = [CBUUID UUIDWithString:v62];
      v31 = [v29 isEqual:v30];

      if (v31)
      {
        [(GHSService *)self setRacpCharacteristic:v15];
        goto LABEL_33;
      }

LABEL_25:
      v32 = [(GHSService *)self ghsControlPointCharacteristic];
      if (v32)
      {

        goto LABEL_29;
      }

      v33 = [v15 UUID];
      v34 = [CBUUID UUIDWithString:v61];
      v35 = [v33 isEqual:v34];

      if (v35)
      {
        [(GHSService *)self setGhsControlPointCharacteristic:v15];
        goto LABEL_33;
      }

LABEL_29:
      v36 = [(GHSService *)self observationScheduleChangedCharacteristic];
      if (v36)
      {

        continue;
      }

      v37 = [v15 UUID];
      v38 = [CBUUID UUIDWithString:v60];
      v39 = [v37 isEqual:v38];

      if (v39)
      {
        [(GHSService *)self setObservationScheduleChangedCharacteristic:v15];
        goto LABEL_33;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v67 objects:v79 count:16];
  }

  while (v12);
LABEL_37:

  if (!self->_deviceType)
  {
    v40 = [(ClientService *)self peripheral];
    v41 = [v40 customProperty:@"GHSDeviceType"];

    if (v41)
    {
      v42 = objc_alloc_init(NSNumberFormatter);
      [v42 setNumberStyle:1];
      v43 = [v42 numberFromString:v41];
      v44 = v43;
      if (v43)
      {
        self->_deviceType = [v43 intValue];
        v45 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v46 = v45;
          v47 = [(ClientService *)self peripheral];
          v48 = [v47 name];
          deviceType = self->_deviceType;
          *buf = 138544131;
          v72 = @"GHSDeviceType";
          v73 = 2160;
          v74 = 1752392040;
          v75 = 2113;
          v76 = v48;
          v77 = 1024;
          v78 = deviceType;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Read property %{public}@ from %{private, mask.hash}@ = “%d”", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100073A00();
      }
    }
  }

  v50 = [(GHSService *)self liveObservationCharacteristic];
  if (v50)
  {

    v9 = v66;
    goto LABEL_49;
  }

  v51 = [(GHSService *)self storedObservationCharacteristic];

  v9 = v66;
  if (v51)
  {
LABEL_49:
    [(GHSService *)self createGHSDeviceIfReady];
  }

  else
  {
    v52 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100073AB8(v52, v53, v54, v55, v56, v57, v58, v59);
    }
  }

LABEL_50:
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a4;
  if (!a5)
  {
    v17 = v7;
    v8 = [(GHSService *)self featuresCharacteristic];

    if (v8 == v17)
    {
      [(GHSService *)self extractHealthSensorFeatures];
      [(GHSService *)self createGHSDeviceIfReady];
    }

    else
    {
      v9 = [(GHSService *)self liveObservationCharacteristic];

      if (v9 == v17)
      {
        [(GHSService *)self extractLiveHealthObservation];
      }

      else
      {
        v10 = [(GHSService *)self storedObservationCharacteristic];

        if (v10 == v17)
        {
          [(GHSService *)self extractStoredHealthObservation];
        }

        else
        {
          v11 = [(GHSService *)self racpCharacteristic];

          if (v11 == v17)
          {
            [(GHSService *)self extractRACPResponse];
          }

          else
          {
            v12 = [(GHSService *)self observationScheduleChangedCharacteristic];

            if (v12 == v17)
            {
              [(GHSService *)self extractObservationScheduleChanged];
            }

            else
            {
              v13 = [(GHSService *)self ghsControlPointCharacteristic];

              if (v13 == v17)
              {
                [(GHSService *)self extractGHSControlPointResponse];
              }
            }
          }
        }
      }
    }

    v14 = [(GHSService *)self connectionIdleTimer];
    [v14 invalidate];

    v15 = [(GHSService *)self ghsDevice];
    v16 = +[NSTimer scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:](NSTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", self, "connectionIdleTimeout", 0, 0, [v15 linkIdleTimeout]);
    [(GHSService *)self setConnectionIdleTimer:v16];

    v7 = v17;
  }
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100073AF0();
  }
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100073BAC();
    }

    v11 = [(GHSService *)self racpCharacteristic];

    if (v11 == v9)
    {
      self->_currentRACPOpCode = -1;
      self->_isRACPInProgress = 0;
    }
  }
}

- (BOOL)getDebugLoggingEnabled
{
  v2 = CFPreferencesCopyAppValue(@"GHSP", @"com.apple.MobileBluetooth.debug");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"GHSPEnableLogging"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 BOOLValue];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)extractGHSControlPointResponse
{
  v2 = [(GHSService *)self ghsControlPointCharacteristic];
  v3 = [v2 value];
  v4 = [DataInputStream inputStreamWithData:v3];

  v14 = 0;
  if ([v4 readUint8:&v14])
  {
    v5 = qword_1000DDBC8;
    if (v14 == 128)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GHS control point success response received", v13, 2u);
      }
    }

    else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100073C68(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

- (void)extractHealthSensorFeatures
{
  v3 = [(GHSService *)self liveObservationCharacteristic];
  v4 = [v3 value];
  v5 = [DataInputStream inputStreamWithData:v4];

  v23 = 0;
  [v5 readUint8:&v23 + 1];
  if ([v5 readUint8:&v23])
  {
    v7 = v23 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = 0;
    *&v6 = 141558531;
    v19 = v6;
    do
    {
      v22 = 0;
      [v5 readUint32:{&v22, v19}];
      v9 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = [(ClientService *)self peripheral];
        v12 = [v11 name];
        *buf = v19;
        v25 = 1752392040;
        v26 = 2113;
        v27 = v12;
        v28 = 1024;
        v29 = v22;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Health Sensor Features for peripheral %{private, mask.hash}@: observationType %u", buf, 0x1Cu);
      }

      ++v8;
    }

    while (v8 < v23);
  }

  if ((v23 & 0x100) != 0 && [v5 readUint8:&v23] && v23)
  {
    v14 = 0;
    *&v13 = 141558787;
    v20 = v13;
    do
    {
      LOWORD(v22) = 0;
      v21 = 0;
      [v5 readUint16:{&v22, v20}];
      [v5 readUint8:&v21];
      v15 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [(ClientService *)self peripheral];
        v18 = [v17 name];
        *buf = v20;
        v25 = 1752392040;
        v26 = 2113;
        v27 = v18;
        v28 = 1024;
        v29 = v22;
        v30 = 1024;
        v31 = v21;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Health Sensor Features for peripheral %{private, mask.hash}@: deviceType %u, version %u", buf, 0x22u);
      }

      ++v14;
    }

    while (v14 < v23);
  }
}

- (void)extractHealthObservationBodySegmentFromData:(id)a3 isLive:(BOOL)a4
{
  v124 = a4;
  v122 = a3;
  v4 = [DataInputStream inputStreamWithData:"inputStreamWithData:byteOrder:" byteOrder:?];
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v134 = 0;
  v135 = -1;
  v133 = 0;
  v5 = +[NSDate date];
  if ([v4 readUint8:&v138])
  {
    v6 = qword_1000DDBC8;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (v124)
      {
        v7 = "Live";
      }

      else
      {
        v7 = "Stored";
      }

      v8 = [(ClientService *)self peripheral];
      v9 = [v8 name];
      *buf = 136315907;
      v140 = v7;
      v141 = 2160;
      *v142 = 1752392040;
      *&v142[8] = 2113;
      v143 = v9;
      v144 = 1024;
      *v145 = v138;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: classType %u", buf, 0x26u);
    }
  }

  if ([v4 readUint16:&v137])
  {
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (v124)
      {
        v11 = "Live";
      }

      else
      {
        v11 = "Stored";
      }

      v12 = [(ClientService *)self peripheral];
      v13 = [v12 name];
      *buf = 136315907;
      v140 = v11;
      v141 = 2160;
      *v142 = 1752392040;
      *&v142[8] = 2113;
      v143 = v13;
      v144 = 1024;
      *v145 = v137;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: len %u", buf, 0x26u);
    }
  }

  if ([v4 readUint16:&v136])
  {
    v14 = qword_1000DDBC8;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (v124)
      {
        v15 = "Live";
      }

      else
      {
        v15 = "Stored";
      }

      v16 = [(ClientService *)self peripheral];
      v17 = [v16 name];
      *buf = 136315907;
      v140 = v15;
      v141 = 2160;
      *v142 = 1752392040;
      *&v142[8] = 2113;
      v143 = v17;
      v144 = 1024;
      *v145 = v136;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: flags %u", buf, 0x26u);
    }
  }

  if (v136)
  {
    if (![v4 readUint32:&v135])
    {
      goto LABEL_32;
    }

    v18 = qword_1000DDBC8;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (v124)
      {
        v19 = "Live";
      }

      else
      {
        v19 = "Stored";
      }

      v20 = [(ClientService *)self peripheral];
      v21 = [v20 name];
      *buf = 136315907;
      v140 = v19;
      v141 = 2160;
      *v142 = 1752392040;
      *&v142[8] = 2113;
      v143 = v21;
      v144 = 1024;
      *v145 = v135;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: observationType %d", buf, 0x26u);
    }
  }

  else
  {
    v18 = qword_1000DDBC8;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100073CA0(v124, &v136, v18);
    }
  }

LABEL_32:
  v22 = v136;
  if ((v136 & 2) != 0)
  {
    v23 = objc_alloc_init(NSMutableData);
    [v4 readNumBytes:9 toData:v23];
    v24 = [(ClientService *)self manager];
    v25 = [CBUUID UUIDWithString:CBUUIDElapsedTimeServiceString];
    v26 = [v24 clientServiceForUUID:v25];

    if (v26)
    {
      v27 = [v26 dateWithElapsedTimeData:v23];

      v28 = qword_1000DDBC8;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        if (v124)
        {
          v29 = "Live";
        }

        else
        {
          v29 = "Stored";
        }

        v30 = [(ClientService *)self peripheral];
        v31 = [v30 name];
        *buf = 136315907;
        v140 = v29;
        v141 = 2160;
        *v142 = 1752392040;
        *&v142[8] = 2113;
        v143 = v31;
        v144 = 2112;
        *v145 = v23;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: timeData %@", buf, 0x2Au);
      }
    }

    else
    {
      v28 = qword_1000DDBC8;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        if (v124)
        {
          v117 = "Live";
        }

        else
        {
          v117 = "Stored";
        }

        v118 = [(ClientService *)self peripheral];
        v119 = [v118 name];
        *buf = 136315907;
        v140 = v117;
        v141 = 2160;
        *v142 = 1752392040;
        *&v142[8] = 2113;
        v143 = v119;
        v144 = 2112;
        *v145 = v23;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s Health Observation for peripheral %{private, mask.hash}@: timeData %@ without ETS", buf, 0x2Au);
      }

      v27 = v5;
    }

    v22 = v136;
    v5 = v27;
    if ((v136 & 4) == 0)
    {
LABEL_34:
      if ((v22 & 8) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_54;
    }
  }

  else if ((v136 & 4) == 0)
  {
    goto LABEL_34;
  }

  v132 = 0;
  if ([v4 readUint32:&v132])
  {
    v32 = qword_1000DDBC8;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      if (v124)
      {
        v33 = "Live";
      }

      else
      {
        v33 = "Stored";
      }

      v34 = [(ClientService *)self peripheral];
      v35 = [v34 name];
      *buf = 136315907;
      v140 = v33;
      v141 = 2160;
      *v142 = 1752392040;
      *&v142[8] = 2113;
      v143 = v35;
      v144 = 1024;
      *v145 = v132;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: measurementDuration %u", buf, 0x26u);
    }
  }

  v22 = v136;
  if ((v136 & 8) == 0)
  {
LABEL_35:
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_62;
  }

LABEL_54:
  LOWORD(v132) = 0;
  if ([v4 readUint16:&v132])
  {
    v36 = qword_1000DDBC8;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      if (v124)
      {
        v37 = "Live";
      }

      else
      {
        v37 = "Stored";
      }

      v38 = [(ClientService *)self peripheral];
      v39 = [v38 name];
      *buf = 136315907;
      v140 = v37;
      v141 = 2160;
      *v142 = 1752392040;
      *&v142[8] = 2113;
      v143 = v39;
      v144 = 1024;
      *v145 = v132;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: measurementStatus %u", buf, 0x26u);
    }
  }

  if ((v136 & 0x10) != 0)
  {
LABEL_62:
    if ([v4 readUint32:&v134])
    {
      v40 = qword_1000DDBC8;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        if (v124)
        {
          v41 = "Live";
        }

        else
        {
          v41 = "Stored";
        }

        v42 = [(ClientService *)self peripheral];
        v43 = [v42 name];
        *buf = 136315907;
        v140 = v41;
        v141 = 2160;
        *v142 = 1752392040;
        *&v142[8] = 2113;
        v143 = v43;
        v144 = 1024;
        *v145 = v134;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: observationId %u", buf, 0x26u);
      }
    }
  }

LABEL_69:
  if ((v136 & 0x20) != 0 && [v4 readUint8:&v133])
  {
    v44 = qword_1000DDBC8;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      if (v124)
      {
        v45 = "Live";
      }

      else
      {
        v45 = "Stored";
      }

      v46 = [(ClientService *)self peripheral];
      v47 = [v46 name];
      *buf = 136315907;
      v140 = v45;
      v141 = 2160;
      *v142 = 1752392040;
      *&v142[8] = 2113;
      v143 = v47;
      v144 = 1024;
      *v145 = v133;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: userId %u", buf, 0x26u);
    }
  }

  v48 = v136;
  v123 = v5;
  if ((v136 & 0x40) != 0)
  {
    LOBYTE(v126) = 0;
    v132 = 0;
    if ([v4 readUint8:&v126])
    {
      v49 = qword_1000DDBC8;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        if (v124)
        {
          v50 = "Live";
        }

        else
        {
          v50 = "Stored";
        }

        v51 = [(ClientService *)self peripheral];
        v52 = [v51 name];
        *buf = 136315907;
        v140 = v50;
        v141 = 2160;
        *v142 = 1752392040;
        *&v142[8] = 2113;
        v143 = v52;
        v144 = 1024;
        *v145 = v126;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: numOfItems %u", buf, 0x26u);
      }
    }

    if (v126)
    {
      v53 = 0;
      if (v124)
      {
        v54 = "Live";
      }

      else
      {
        v54 = "Stored";
      }

      do
      {
        if ([v4 readUint32:&v132])
        {
          v55 = qword_1000DDBC8;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = [(ClientService *)self peripheral];
            v57 = [v56 name];
            *buf = 136315907;
            v140 = v54;
            v141 = 2160;
            *v142 = 1752392040;
            *&v142[8] = 2113;
            v143 = v57;
            v144 = 1024;
            *v145 = v132;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: derivedObservationId %u", buf, 0x26u);
          }
        }

        ++v53;
      }

      while (v53 < v126);
    }

    v48 = v136;
    v5 = v123;
    if ((v136 & 0x80) == 0)
    {
LABEL_79:
      if ((v48 & 0x100) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_115;
    }
  }

  else if ((v136 & 0x80) == 0)
  {
    goto LABEL_79;
  }

  LOBYTE(v126) = 0;
  v132 = 0;
  if ([v4 readUint8:&v126])
  {
    v58 = qword_1000DDBC8;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      if (v124)
      {
        v59 = "Live";
      }

      else
      {
        v59 = "Stored";
      }

      v60 = [(ClientService *)self peripheral];
      v61 = [v60 name];
      *buf = 136315907;
      v140 = v59;
      v141 = 2160;
      *v142 = 1752392040;
      *&v142[8] = 2113;
      v143 = v61;
      v144 = 1024;
      *v145 = v126;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: numOfItems %u", buf, 0x26u);
    }
  }

  if (v126)
  {
    v62 = 0;
    if (v124)
    {
      v63 = "Live";
    }

    else
    {
      v63 = "Stored";
    }

    do
    {
      if ([v4 readUint32:&v132])
      {
        v64 = qword_1000DDBC8;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = [(ClientService *)self peripheral];
          v66 = [v65 name];
          *buf = 136315907;
          v140 = v63;
          v141 = 2160;
          *v142 = 1752392040;
          *&v142[8] = 2113;
          v143 = v66;
          v144 = 1024;
          *v145 = v132;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: derivedObservationId %u", buf, 0x26u);
        }
      }

      ++v62;
    }

    while (v62 < v126);
  }

  v48 = v136;
  v5 = v123;
  if ((v136 & 0x100) != 0)
  {
LABEL_115:
    LOBYTE(v126) = 0;
    v132 = 0;
    if ([v4 readUint8:&v126])
    {
      v67 = qword_1000DDBC8;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        if (v124)
        {
          v68 = "Live";
        }

        else
        {
          v68 = "Stored";
        }

        v69 = [(ClientService *)self peripheral];
        v70 = [v69 name];
        *buf = 136315907;
        v140 = v68;
        v141 = 2160;
        *v142 = 1752392040;
        *&v142[8] = 2113;
        v143 = v70;
        v144 = 1024;
        *v145 = v126;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: numOfItems %u", buf, 0x26u);
      }
    }

    if (v126)
    {
      v71 = 0;
      if (v124)
      {
        v72 = "Live";
      }

      else
      {
        v72 = "Stored";
      }

      do
      {
        if ([v4 readUint32:&v132])
        {
          v73 = qword_1000DDBC8;
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v74 = [(ClientService *)self peripheral];
            v75 = [v74 name];
            *buf = 136315907;
            v140 = v72;
            v141 = 2160;
            *v142 = 1752392040;
            *&v142[8] = 2113;
            v143 = v75;
            v144 = 1024;
            *v145 = v132;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: IsMemberOfObservationId %u", buf, 0x26u);
          }
        }

        ++v71;
      }

      while (v71 < v126);
    }

    v48 = v136;
    v5 = v123;
  }

LABEL_132:
  if ((v48 & 0x200) != 0)
  {
    LOBYTE(v129) = 0;
    v132 = 0;
    LOWORD(v126) = 0;
    LOBYTE(v128) = 0;
    v76 = objc_alloc_init(NSMutableData);
    if ([v4 readUint8:&v129])
    {
      v77 = qword_1000DDBC8;
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        if (v124)
        {
          v78 = "Live";
        }

        else
        {
          v78 = "Stored";
        }

        v79 = [(ClientService *)self peripheral];
        v80 = [v79 name];
        *buf = 136315907;
        v140 = v78;
        v141 = 2160;
        *v142 = 1752392040;
        *&v142[8] = 2113;
        v143 = v80;
        v144 = 1024;
        *v145 = v129;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%s Health Observation TLVs for peripheral %{private, mask.hash}@: numOfItems %u", buf, 0x26u);
      }
    }

    if (v129)
    {
      v81 = 0;
      if (v124)
      {
        v82 = "Live";
      }

      else
      {
        v82 = "Stored";
      }

      do
      {
        [v4 readUint32:&v132];
        [v4 readUint16:&v126];
        [v4 readUint8:&v128];
        [v4 readNumBytes:v137 toData:v76];
        v83 = qword_1000DDBC8;
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          v84 = [(ClientService *)self peripheral];
          v85 = [v84 name];
          *buf = 136316419;
          v140 = v82;
          v141 = 2160;
          *v142 = 1752392040;
          *&v142[8] = 2113;
          v143 = v85;
          v144 = 1024;
          *v145 = v81;
          *&v145[4] = 1024;
          *&v145[6] = v132;
          v146 = 1024;
          v147 = v126;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "%s Health Observation TLVs for peripheral %{private, mask.hash}@: item # %u type %d length %d", buf, 0x32u);
        }

        ++v81;
      }

      while (v81 < v129);
    }

    v5 = v123;
  }

  if (v138 != 255)
  {
    v86 = [(GHSService *)self ghsDevice];
    v87 = v86;
    if (v124)
    {
      [v86 handleLiveHealthObservationsData:v4 observationClassType:v138 observationType:v135 userID:v133 observationID:v134 timestamp:v5];
    }

    else
    {
      [v86 handleStoredHealthObservationsData:v4 observationClassType:v138 observationType:v135 userID:v133 observationID:v134 timestamp:v5];
    }

    goto LABEL_204;
  }

  v131 = 0;
  if ([v4 readUint8:&v131])
  {
    v89 = qword_1000DDBC8;
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      if (v124)
      {
        v90 = "Live";
      }

      else
      {
        v90 = "Stored";
      }

      v91 = [(ClientService *)self peripheral];
      v92 = [v91 name];
      *buf = 136315907;
      v140 = v90;
      v141 = 2160;
      *v142 = 1752392040;
      *&v142[8] = 2113;
      v143 = v92;
      v144 = 1024;
      *v145 = v131;
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "%s Health Observation TLVs for peripheral %{private, mask.hash}@: numOfObservations %u", buf, 0x26u);
    }
  }

  if (v131)
  {
    v93 = 0;
    if (v124)
    {
      v94 = "Live";
    }

    else
    {
      v94 = "Stored";
    }

    v95 = "live";
    if (!v124)
    {
      v95 = "stored";
    }

    v121 = v95;
    *&v88 = 136315650;
    v120 = v88;
    while (1)
    {
      v130 = 0;
      v129 = 0;
      v128 = 0;
      v132 = -1;
      if ([v4 readUint8:{&v130, v120, v121}])
      {
        v96 = qword_1000DDBC8;
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          v97 = [(ClientService *)self peripheral];
          v98 = [v97 name];
          *buf = 136316163;
          v140 = v94;
          v141 = 2160;
          *v142 = 1752392040;
          *&v142[8] = 2113;
          v143 = v98;
          v144 = 1024;
          *v145 = v93;
          *&v145[4] = 1024;
          *&v145[6] = v130;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: bundle # %u, classType %u", buf, 0x2Cu);
        }
      }

      if ([v4 readUint16:&v129])
      {
        v99 = qword_1000DDBC8;
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          v100 = [(ClientService *)self peripheral];
          v101 = [v100 name];
          *buf = 136316163;
          v140 = v94;
          v141 = 2160;
          *v142 = 1752392040;
          *&v142[8] = 2113;
          v143 = v101;
          v144 = 1024;
          *v145 = v93;
          *&v145[4] = 1024;
          *&v145[6] = v129;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: bundle # %u, len %u", buf, 0x2Cu);
        }
      }

      if ([v4 readUint16:&v128])
      {
        v102 = qword_1000DDBC8;
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          v103 = [(ClientService *)self peripheral];
          v104 = [v103 name];
          *buf = 136316163;
          v140 = v94;
          v141 = 2160;
          *v142 = 1752392040;
          *&v142[8] = 2113;
          v143 = v104;
          v144 = 1024;
          *v145 = v93;
          *&v145[4] = 1024;
          *&v145[6] = v128;
          _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: bundle # %u, flags %u", buf, 0x2Cu);
        }
      }

      if ((v128 & 1) == 0)
      {
        break;
      }

      if ([v4 readUint32:&v132])
      {
        v105 = qword_1000DDBC8;
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          v106 = [(ClientService *)self peripheral];
          v107 = [v106 name];
          *buf = 136316163;
          v140 = v94;
          v141 = 2160;
          *v142 = 1752392040;
          *&v142[8] = 2113;
          v143 = v107;
          v144 = 1024;
          *v145 = v93;
          *&v145[4] = 1024;
          *&v145[6] = v132;
          _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: bundle # %u, observationType %d", buf, 0x2Cu);
        }

        goto LABEL_183;
      }

LABEL_184:
      if ((v128 & 0x40) != 0)
      {
        v127 = 0;
        v126 = 0;
        if ([v4 readUint8:&v127])
        {
          v108 = qword_1000DDBC8;
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
          {
            v109 = [(ClientService *)self peripheral];
            v110 = [v109 name];
            *buf = 136316163;
            v140 = v94;
            v141 = 2160;
            *v142 = 1752392040;
            *&v142[8] = 2113;
            v143 = v110;
            v144 = 1024;
            *v145 = v93;
            *&v145[4] = 1024;
            *&v145[6] = v127;
            _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: bundle # %u,  numOfInfo %u", buf, 0x2Cu);
          }
        }

        if (v127)
        {
          for (i = 0; i < v127; ++i)
          {
            if ([v4 readUint32:&v126])
            {
              v112 = qword_1000DDBC8;
              if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
              {
                v113 = [(ClientService *)self peripheral];
                v114 = [v113 name];
                *buf = 136316163;
                v140 = v94;
                v141 = 2160;
                *v142 = 1752392040;
                *&v142[8] = 2113;
                v143 = v114;
                v144 = 1024;
                *v145 = v93;
                *&v145[4] = 1024;
                *&v145[6] = v126;
                _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: bundle # %u,  supplementalInfo %u", buf, 0x2Cu);
              }
            }
          }
        }

        v5 = v123;
      }

      v115 = [(GHSService *)self ghsDevice];
      v116 = v115;
      if (v124)
      {
        [v115 handleLiveHealthObservationsData:v4 observationClassType:v130 observationType:v132 userID:v133 observationID:v134 timestamp:v5];
      }

      else
      {
        [v115 handleStoredHealthObservationsData:v4 observationClassType:v130 observationType:v132 userID:v133 observationID:v134 timestamp:v5];
      }

      if (++v93 >= v131)
      {
        goto LABEL_204;
      }
    }

    v105 = qword_1000DDBC8;
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      *buf = v120;
      v140 = v121;
      v141 = 1024;
      *v142 = v93;
      *&v142[4] = 1024;
      *&v142[6] = v136;
      _os_log_error_impl(&_mh_execute_header, v105, OS_LOG_TYPE_ERROR, "Missing observation type in %s health observation, bundle # %u, flags: %u", buf, 0x18u);
    }

LABEL_183:

    goto LABEL_184;
  }

LABEL_204:
}

- (void)extractLiveHealthObservation
{
  v3 = [(GHSService *)self liveObservationCharacteristic];
  v4 = [v3 value];
  v5 = [DataInputStream inputStreamWithData:v4 byteOrder:1];

  v6 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(ClientService *)self peripheral];
    v9 = [v8 name];
    *buf = 141558531;
    v24 = 1752392040;
    v25 = 2113;
    v26 = v9;
    v27 = 2112;
    *v28 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Live Health Observation for peripheral %{private, mask.hash}@: rawDataBytes %@", buf, 0x20u);
  }

  v10 = [(GHSService *)self liveObservationCharacteristic];
  v11 = [v10 value];
  v12 = [v11 length];

  v22 = 0;
  if ([v5 readUint8:&v22])
  {
    v13 = v22;
    v14 = v12 - 1;
    v15 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [(ClientService *)self peripheral];
      v18 = [v17 name];
      v19 = v18;
      v20 = "Y";
      *buf = 141559555;
      v24 = 1752392040;
      v25 = 2113;
      if (v13)
      {
        v21 = "Y";
      }

      else
      {
        v21 = "N";
      }

      v26 = v18;
      if ((v13 & 2) == 0)
      {
        v20 = "N";
      }

      v27 = 1024;
      *v28 = v22;
      *&v28[4] = 2080;
      *&v28[6] = v21;
      v29 = 2080;
      v30 = v20;
      v31 = 1024;
      v32 = v13 >> 2;
      v33 = 1024;
      v34 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Live Health Observation for peripheral %{private, mask.hash}@: header %u, firstSeg %s, lastSeg %s, segCount %u, len %u", buf, 0x3Cu);
    }

    if (v13)
    {
      [(NSMutableData *)self->_liveObservationData setLength:0];
    }

    [v5 readNumBytes:v14 toData:self->_liveObservationData];
    if ((v13 & 2) != 0)
    {
      [(GHSService *)self extractHealthObservationBodySegmentFromData:self->_liveObservationData isLive:1];
    }
  }
}

- (void)extractStoredHealthObservation
{
  v3 = [(GHSService *)self storedObservationCharacteristic];
  v4 = [v3 value];
  v5 = [DataInputStream inputStreamWithData:v4 byteOrder:1];

  if (self->_isExtraLoggingEnabled)
  {
    v6 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(ClientService *)self peripheral];
      v9 = [v8 name];
      *buf = 141558531;
      v29 = 1752392040;
      v30 = 2113;
      v31 = v9;
      v32 = 2112;
      *v33 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Stored Health Observation for peripheral %{private, mask.hash}@: rawDataBytes %@", buf, 0x20u);
    }
  }

  v27 = 0;
  v26 = 0;
  v10 = [(GHSService *)self storedObservationCharacteristic];
  v11 = [v10 value];
  v12 = [v11 length];

  if ([v5 readUint8:&v27])
  {
    v13 = v27;
    v14 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [(ClientService *)self peripheral];
      v17 = [v16 name];
      v18 = v17;
      v19 = "Y";
      *buf = 141559299;
      v29 = 1752392040;
      v30 = 2113;
      if (v13)
      {
        v20 = "Y";
      }

      else
      {
        v20 = "N";
      }

      v31 = v17;
      if ((v13 & 2) == 0)
      {
        v19 = "N";
      }

      v32 = 1024;
      *v33 = v27;
      *&v33[4] = 2080;
      *&v33[6] = v20;
      v34 = 2080;
      v35 = v19;
      v36 = 1024;
      v37 = v13 >> 2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Stored Health Observation for peripheral %{private, mask.hash}@: header %u, firstSeg %s, lastSeg %s, segCount %u", buf, 0x36u);
    }

    if (v13)
    {
      if ([v5 readUint32:&v26])
      {
        v22 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          v24 = [(ClientService *)self peripheral];
          v25 = [v24 name];
          *buf = 141558531;
          v29 = 1752392040;
          v30 = 2113;
          v31 = v25;
          v32 = 1024;
          *v33 = v26;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Stored Health Observation for peripheral %{private, mask.hash}@: recordNum %u", buf, 0x1Cu);
        }

        self->_lastSyncedRecordNum = v26;
      }

      [(NSMutableData *)self->_storedObservationData setLength:0];
      v21 = v12 - 5;
    }

    else
    {
      v21 = v12 - 1;
    }

    [v5 readNumBytes:v21 toData:self->_storedObservationData];
    if ((v13 & 2) != 0)
    {
      [(GHSService *)self extractHealthObservationBodySegmentFromData:self->_storedObservationData isLive:0];
    }
  }
}

- (void)extractRACPResponse
{
  v32 = 0;
  v3 = [(GHSService *)self racpCharacteristic];
  v4 = [v3 value];
  v5 = [DataInputStream inputStreamWithData:v4 byteOrder:1];

  if (([v5 readUint8:&v32 + 1] & 1) == 0)
  {
    v6 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100073D44(v6);
    }
  }

  if ([v5 readUint8:&v32])
  {
    v7 = v32 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      v25 = v8;
      v26 = [(ClientService *)self peripheral];
      v27 = [v26 name];
      *buf = 141558787;
      v34 = 1752392040;
      v35 = 2113;
      v36 = v27;
      v37 = 1024;
      v38 = HIBYTE(v32);
      v39 = 1024;
      v40 = v32;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "RACP response for peripheral %{private, mask.hash}@: opCode %u, operator %u", buf, 0x22u);
    }
  }

  if (HIBYTE(v32) == 5)
  {
    if (self->_currentRACPOpCode != 4)
    {
LABEL_28:
      v23 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100073DEC(v23, self, &v32 + 1);
      }

      goto LABEL_32;
    }

    self->_currentRACPOpCode = -1;
    self->_isRACPInProgress = 0;
    *v31 = 0;
    if ([v5 readUint32:v31])
    {
      v19 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = [(ClientService *)self peripheral];
        v22 = [v21 name];
        *buf = 141558531;
        v34 = 1752392040;
        v35 = 2113;
        v36 = v22;
        v37 = 1024;
        v38 = *v31;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "RACP response for peripheral %{private, mask.hash}@: numOfRecord %d", buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (HIBYTE(v32) != 6)
    {
      if (HIBYTE(v32) == 8 && self->_currentRACPOpCode == 7)
      {
        self->_currentRACPOpCode = -1;
        self->_isRACPInProgress = 0;
        *v31 = 0;
        if ([v5 readUint32:v31])
        {
          v9 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
          {
            v10 = v9;
            v11 = [(ClientService *)self peripheral];
            v12 = [v11 name];
            *buf = 141558531;
            v34 = 1752392040;
            v35 = 2113;
            v36 = v12;
            v37 = 1024;
            v38 = *v31;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "RACP response for peripheral %{private, mask.hash}@: retrieved numOfRecord %d", buf, 0x1Cu);
          }
        }

        v13 = [(ClientService *)self peripheral];
        v14 = [NSString stringWithFormat:@"%d", self->_lastSyncedRecordNum];
        [v13 setCustomProperty:@"HealthDataSyncLastStoredRecordNumber" value:v14];

        goto LABEL_32;
      }

      goto LABEL_28;
    }

    v31[0] = 0;
    v30 = 0;
    if ([v5 readUint8:v31] && v31[0] == self->_currentRACPOpCode)
    {
      if ([v5 readUint8:&v30])
      {
        if (v30)
        {
          v15 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            v16 = v15;
            v17 = [(ClientService *)self peripheral];
            v18 = [v17 name];
            *buf = 141558787;
            v34 = 1752392040;
            v35 = 2113;
            v36 = v18;
            v37 = 1024;
            v38 = v31[0];
            v39 = 1024;
            v40 = v30;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "RACP for peripheral %{private, mask.hash}@ failed: opCode %d responseCode %d", buf, 0x22u);
          }
        }

        else if (self->_currentRACPOpCode == 1)
        {
          v28 = [(ClientService *)self peripheral];
          v29 = [NSString stringWithFormat:@"%d", self->_lastSyncedRecordNum];
          [v28 setCustomProperty:@"HealthDataSyncLastStoredRecordNumber" value:v29];
        }

        self->_currentRACPOpCode = -1;
        self->_isRACPInProgress = 0;
      }
    }

    else
    {
      v24 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100073DEC(v24, self, v31);
      }
    }
  }

LABEL_32:
}

- (void)retrieveLastStoredObservation
{
  v3 = qword_1000DDBC8;
  if (self->_isRACPInProgress)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100073F5C(v3);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [(ClientService *)self peripheral];
      v6 = [v5 name];
      v17 = 141558275;
      v18 = 1752392040;
      v19 = 2113;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Request last stored observation for peripheral %{private, mask.hash}@", &v17, 0x16u);
    }

    self->_isRACPInProgress = 1;
    self->_currentRACPOpCode = 1;
    v7 = [DataOutputStream outputStreamWithByteOrder:1];
    [v7 writeUint8:self->_currentRACPOpCode];
    [v7 writeUint8:6];
    v8 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(ClientService *)self peripheral];
      v11 = [v10 name];
      v12 = [v7 data];
      v13 = [v12 length];
      v17 = 141558787;
      v18 = 1752392040;
      v19 = 2113;
      v20 = v11;
      v21 = 1024;
      v22 = 6;
      v23 = 2048;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "RACP Retrieve for peripheral %{private, mask.hash}@ operator: %d | total len: %lu", &v17, 0x26u);
    }

    v14 = [(ClientService *)self peripheral];
    v15 = [v7 data];
    v16 = [(GHSService *)self racpCharacteristic];
    [v14 writeValue:v15 forCharacteristic:v16 type:0];
  }
}

- (void)deleteAllStoredObservation
{
  if (self->_isRACPInProgress)
  {
    v3 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100074004(v3);
    }
  }

  else
  {
    self->_isRACPInProgress = 1;
    self->_currentRACPOpCode = 2;
    v4 = [DataOutputStream outputStreamWithByteOrder:1];
    [v4 writeUint8:2];
    [v4 writeUint8:1];
    v5 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(ClientService *)self peripheral];
      v8 = [v7 name];
      v9 = [v4 data];
      v13 = 141558787;
      v14 = 1752392040;
      v15 = 2113;
      v16 = v8;
      v17 = 1024;
      v18 = 1;
      v19 = 2048;
      v20 = [v9 length];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "RACP Delelte for peripheral %{private, mask.hash}@ operator: %d | total len: %lu", &v13, 0x26u);
    }

    v10 = [(ClientService *)self peripheral];
    v11 = [v4 data];
    v12 = [(GHSService *)self racpCharacteristic];
    [v10 writeValue:v11 forCharacteristic:v12 type:0];
  }
}

- (void)abortRACPRequest
{
  self->_isRACPInProgress = 1;
  self->_currentRACPOpCode = 3;
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  [v3 writeUint8:3];
  [v3 writeUint8:0];
  v4 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(ClientService *)self peripheral];
    v7 = [v6 name];
    v8 = [v3 data];
    v12 = 141558787;
    v13 = 1752392040;
    v14 = 2113;
    v15 = v7;
    v16 = 1024;
    v17 = 0;
    v18 = 2048;
    v19 = [v8 length];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "RACP Abort for peripheral %{private, mask.hash}@ operator: %d | total len: %lu", &v12, 0x26u);
  }

  v9 = [(ClientService *)self peripheral];
  v10 = [v3 data];
  v11 = [(GHSService *)self racpCharacteristic];
  [v9 writeValue:v10 forCharacteristic:v11 type:0];
}

- (void)extractObservationScheduleChanged
{
  v11 = 0;
  v10 = 0.0;
  v3 = [(GHSService *)self observationScheduleChangedCharacteristic];
  v4 = [v3 value];
  v5 = [DataInputStream inputStreamWithData:v4 byteOrder:1];

  [v5 readUint32:&v11 + 4];
  [v5 readIEEEFloat:&v11];
  [v5 readIEEEFloat:&v10];
  v6 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(ClientService *)self peripheral];
    v9 = [v8 name];
    *buf = 141559043;
    v13 = 1752392040;
    v14 = 2113;
    v15 = v9;
    v16 = 1024;
    v17 = HIDWORD(v11);
    v18 = 2048;
    v19 = *&v11;
    v20 = 2048;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Observation schedule changed for peripheral %{private, mask.hash}@ observationType %d measurementPeriod %f updateInterval %f", buf, 0x30u);
  }
}

- (void)connectionIdleTimeout
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_1000740AC(v3);
  }

  [(GHSService *)self stop];
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = [(ClientService *)self peripheral];
  [v4 postNotificationName:@"PeerDidIdleTimeoutNotification" object:v5];
}

@end