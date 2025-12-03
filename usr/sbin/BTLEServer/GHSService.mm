@interface GHSService
- (BOOL)getDebugLoggingEnabled;
- (GHSService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service;
- (id)ghsDeviceProperties;
- (void)abortRACPRequest;
- (void)connectionIdleTimeout;
- (void)consentDidFail:(id)fail;
- (void)consentDidSucceed:(id)succeed;
- (void)createGHSDeviceIfReady;
- (void)deleteAllStoredObservation;
- (void)extractGHSControlPointResponse;
- (void)extractHealthObservationBodySegmentFromData:(id)data isLive:(BOOL)live;
- (void)extractHealthSensorFeatures;
- (void)extractLiveHealthObservation;
- (void)extractObservationScheduleChanged;
- (void)extractRACPResponse;
- (void)extractStoredHealthObservation;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)retrieveLastStoredObservation;
- (void)start;
- (void)startLiveHealthObservation;
- (void)stop;
- (void)stopLiveHealthObservation;
@end

@implementation GHSService

- (GHSService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service
{
  v10.receiver = self;
  v10.super_class = GHSService;
  v5 = [(ClientService *)&v10 initWithManager:manager peripheral:peripheral service:service];
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
  manager = [(ClientService *)self manager];
  v8 = [CBUUID UUIDWithString:CBUUIDUserDataServiceString];
  v9 = [manager clientServiceForUUID:v8];

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

  peripheral = [(ClientService *)self peripheral];
  service = [(ClientService *)self service];
  [peripheral discoverCharacteristics:v16 forService:service];

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

  connectionIdleTimer = [(GHSService *)self connectionIdleTimer];
  [connectionIdleTimer invalidate];

  [(GHSService *)self setConnectionIdleTimer:0];
  v6.receiver = self;
  v6.super_class = GHSService;
  [(ClientService *)&v6 stop];
}

- (void)consentDidSucceed:(id)succeed
{
  object = [succeed object];
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    name = [object name];
    v8 = 141558275;
    v9 = 1752392040;
    v10 = 2113;
    v11 = name;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "UDS consent succeeded for peripheral %{private, mask.hash}@", &v8, 0x16u);
  }

  self->_isUDSConsentGranted = 1;
  [(GHSService *)self createGHSDeviceIfReady];
}

- (void)consentDidFail:(id)fail
{
  object = [fail object];
  v4 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100073880(v4);
  }
}

- (id)ghsDeviceProperties
{
  v3 = +[NSMutableDictionary dictionary];
  manager = [(ClientService *)self manager];
  v5 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
  v6 = [manager clientServiceForUUID:v5];

  manufacturerName = [v6 manufacturerName];
  [v3 setObject:manufacturerName forKeyedSubscript:@"ManufacturerName"];

  modelNumber = [v6 modelNumber];
  [v3 setObject:modelNumber forKeyedSubscript:@"ModelNumber"];

  serialNumber = [v6 serialNumber];
  [v3 setObject:serialNumber forKeyedSubscript:@"SerialNumber"];

  hardwareRevision = [v6 hardwareRevision];
  [v3 setObject:hardwareRevision forKeyedSubscript:@"HardwareRevision"];

  softwareRevision = [v6 softwareRevision];
  [v3 setObject:softwareRevision forKeyedSubscript:@"SoftwareRevision"];

  firmwareRevision = [v6 firmwareRevision];
  [v3 setObject:firmwareRevision forKeyedSubscript:@"FirmwareRevision"];

  udiForMedicalDevices = [v6 udiForMedicalDevices];
  [v3 setObject:udiForMedicalDevices forKeyedSubscript:@"UDIForMedicalDevices"];

  peripheral = [(ClientService *)self peripheral];
  identifier = [peripheral identifier];
  uUIDString = [identifier UUIDString];
  [v3 setObject:uUIDString forKeyedSubscript:@"UUID"];

  peripheral2 = [(ClientService *)self peripheral];
  name = [peripheral2 name];

  if (name)
  {
    peripheral3 = [(ClientService *)self peripheral];
    name2 = [peripheral3 name];
    [v3 setObject:name2 forKeyedSubscript:@"kGHSDeviceNameKey"];
  }

  if (self->_deviceType)
  {
    v21 = [NSNumber numberWithUnsignedShort:?];
    [v3 setObject:v21 forKeyedSubscript:@"kBTDeviceTypeMDCDevSpecKey"];
  }

  else
  {
    featuresCharacteristic = [(GHSService *)self featuresCharacteristic];
    value = [featuresCharacteristic value];
    v21 = [DataInputStream inputStreamWithData:value byteOrder:1];

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
          peripheral4 = [(ClientService *)self peripheral];
          name3 = [peripheral4 name];
          *buf = v40;
          v46 = 1752392040;
          v47 = 2113;
          v48 = name3;
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
          peripheral5 = [(ClientService *)self peripheral];
          name4 = [peripheral5 name];
          *buf = v41;
          v46 = 1752392040;
          v47 = 2113;
          v48 = name4;
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
    featuresCharacteristic = [(GHSService *)self featuresCharacteristic];
    if (!featuresCharacteristic)
    {
      return;
    }

    v39 = featuresCharacteristic;
    featuresCharacteristic2 = [(GHSService *)self featuresCharacteristic];
    value = [featuresCharacteristic2 value];
    if (!value)
    {

      return;
    }

    v3 = value;
  }

  liveObservationCharacteristic = [(GHSService *)self liveObservationCharacteristic];
  if (liveObservationCharacteristic)
  {
    isUDSConsentGranted = self->_isUDSConsentGranted;
  }

  else
  {
    storedObservationCharacteristic = [(GHSService *)self storedObservationCharacteristic];
    if (storedObservationCharacteristic)
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

  ghsDeviceProperties = [(GHSService *)self ghsDeviceProperties];
  ghsDevice = [(GHSService *)self ghsDevice];

  if (!ghsDevice)
  {
    v13 = [GHSBluetoothDevice ghsDeviceWithProperties:ghsDeviceProperties];
    [(GHSService *)self setGhsDevice:v13];

    ghsDevice2 = [(GHSService *)self ghsDevice];

    if (ghsDevice2)
    {
      peripheral = [(ClientService *)self peripheral];
      ghsDevice3 = [(GHSService *)self ghsDevice];
      [ghsDevice3 setPeripheral:peripheral];

      peripheral2 = [(ClientService *)self peripheral];
      v18 = [peripheral2 customProperty:@"UserSelectedHealthDataSyncConfig"];

      if (!self->_lastSyncedRecordNum)
      {
        peripheral3 = [(ClientService *)self peripheral];
        v20 = [peripheral3 customProperty:@"HealthDataSyncLastStoredRecordNumber"];

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

      liveObservationCharacteristic2 = [(GHSService *)self liveObservationCharacteristic];

      v33 = [v18 isEqualToString:@"HealthDataSyncAlways"];
      if (liveObservationCharacteristic2)
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
      peripheral4 = [(ClientService *)self peripheral];
      [v34 postNotificationName:@"PeerIsUsingBuiltinServiceNotification" object:peripheral4];

      connectionIdleTimer = [(GHSService *)self connectionIdleTimer];
      [connectionIdleTimer invalidate];

      ghsDevice4 = [(GHSService *)self ghsDevice];
      v38 = +[NSTimer scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:](NSTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", self, "connectionIdleTimeout", 0, 0, [ghsDevice4 linkIdleTimeout]);
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
  liveObservationCharacteristic = [(GHSService *)self liveObservationCharacteristic];
  if (liveObservationCharacteristic)
  {
    v4 = liveObservationCharacteristic;
    ghsControlPointCharacteristic = [(GHSService *)self ghsControlPointCharacteristic];

    if (ghsControlPointCharacteristic)
    {
      v9 = 1;
      v6 = [NSData dataWithBytesNoCopy:&v9 length:1 freeWhenDone:0];
      peripheral = [(ClientService *)self peripheral];
      ghsControlPointCharacteristic2 = [(GHSService *)self ghsControlPointCharacteristic];
      [peripheral writeValue:v6 forCharacteristic:ghsControlPointCharacteristic2 type:0];
    }
  }
}

- (void)stopLiveHealthObservation
{
  liveObservationCharacteristic = [(GHSService *)self liveObservationCharacteristic];
  if (liveObservationCharacteristic)
  {
    v4 = liveObservationCharacteristic;
    ghsControlPointCharacteristic = [(GHSService *)self ghsControlPointCharacteristic];

    if (ghsControlPointCharacteristic)
    {
      v9 = 2;
      v6 = [NSData dataWithBytesNoCopy:&v9 length:1 freeWhenDone:0];
      peripheral = [(ClientService *)self peripheral];
      ghsControlPointCharacteristic2 = [(GHSService *)self ghsControlPointCharacteristic];
      [peripheral writeValue:v6 forCharacteristic:ghsControlPointCharacteristic2 type:0];
    }
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  v9 = peripheralCopy;
  if (error)
  {
    goto LABEL_50;
  }

  v66 = peripheralCopy;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  characteristics = [service characteristics];
  v11 = [characteristics countByEnumeratingWithState:&v67 objects:v79 count:16];
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
        objc_enumerationMutation(characteristics);
      }

      v15 = *(*(&v67 + 1) + 8 * i);
      featuresCharacteristic = [(GHSService *)self featuresCharacteristic];
      if (featuresCharacteristic)
      {
      }

      else
      {
        uUID = [v15 UUID];
        v18 = [CBUUID UUIDWithString:v65];
        v19 = [uUID isEqual:v18];

        if (v19)
        {
          [(GHSService *)self setFeaturesCharacteristic:v15];
          [v66 readValueForCharacteristic:v15];
          continue;
        }
      }

      liveObservationCharacteristic = [(GHSService *)self liveObservationCharacteristic];
      if (liveObservationCharacteristic)
      {
      }

      else
      {
        uUID2 = [v15 UUID];
        v22 = [CBUUID UUIDWithString:v64];
        v23 = [uUID2 isEqual:v22];

        if (v23)
        {
          [(GHSService *)self setLiveObservationCharacteristic:v15];
          goto LABEL_19;
        }
      }

      storedObservationCharacteristic = [(GHSService *)self storedObservationCharacteristic];
      if (storedObservationCharacteristic)
      {

        goto LABEL_21;
      }

      uUID3 = [v15 UUID];
      v26 = [CBUUID UUIDWithString:v63];
      v27 = [uUID3 isEqual:v26];

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
      racpCharacteristic = [(GHSService *)self racpCharacteristic];
      if (racpCharacteristic)
      {

        goto LABEL_25;
      }

      uUID4 = [v15 UUID];
      v30 = [CBUUID UUIDWithString:v62];
      v31 = [uUID4 isEqual:v30];

      if (v31)
      {
        [(GHSService *)self setRacpCharacteristic:v15];
        goto LABEL_33;
      }

LABEL_25:
      ghsControlPointCharacteristic = [(GHSService *)self ghsControlPointCharacteristic];
      if (ghsControlPointCharacteristic)
      {

        goto LABEL_29;
      }

      uUID5 = [v15 UUID];
      v34 = [CBUUID UUIDWithString:v61];
      v35 = [uUID5 isEqual:v34];

      if (v35)
      {
        [(GHSService *)self setGhsControlPointCharacteristic:v15];
        goto LABEL_33;
      }

LABEL_29:
      observationScheduleChangedCharacteristic = [(GHSService *)self observationScheduleChangedCharacteristic];
      if (observationScheduleChangedCharacteristic)
      {

        continue;
      }

      uUID6 = [v15 UUID];
      v38 = [CBUUID UUIDWithString:v60];
      v39 = [uUID6 isEqual:v38];

      if (v39)
      {
        [(GHSService *)self setObservationScheduleChangedCharacteristic:v15];
        goto LABEL_33;
      }
    }

    v12 = [characteristics countByEnumeratingWithState:&v67 objects:v79 count:16];
  }

  while (v12);
LABEL_37:

  if (!self->_deviceType)
  {
    peripheral = [(ClientService *)self peripheral];
    v41 = [peripheral customProperty:@"GHSDeviceType"];

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
          peripheral2 = [(ClientService *)self peripheral];
          name = [peripheral2 name];
          deviceType = self->_deviceType;
          *buf = 138544131;
          v72 = @"GHSDeviceType";
          v73 = 2160;
          v74 = 1752392040;
          v75 = 2113;
          v76 = name;
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

  liveObservationCharacteristic2 = [(GHSService *)self liveObservationCharacteristic];
  if (liveObservationCharacteristic2)
  {

    v9 = v66;
    goto LABEL_49;
  }

  storedObservationCharacteristic2 = [(GHSService *)self storedObservationCharacteristic];

  v9 = v66;
  if (storedObservationCharacteristic2)
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

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  if (!error)
  {
    v17 = characteristicCopy;
    featuresCharacteristic = [(GHSService *)self featuresCharacteristic];

    if (featuresCharacteristic == v17)
    {
      [(GHSService *)self extractHealthSensorFeatures];
      [(GHSService *)self createGHSDeviceIfReady];
    }

    else
    {
      liveObservationCharacteristic = [(GHSService *)self liveObservationCharacteristic];

      if (liveObservationCharacteristic == v17)
      {
        [(GHSService *)self extractLiveHealthObservation];
      }

      else
      {
        storedObservationCharacteristic = [(GHSService *)self storedObservationCharacteristic];

        if (storedObservationCharacteristic == v17)
        {
          [(GHSService *)self extractStoredHealthObservation];
        }

        else
        {
          racpCharacteristic = [(GHSService *)self racpCharacteristic];

          if (racpCharacteristic == v17)
          {
            [(GHSService *)self extractRACPResponse];
          }

          else
          {
            observationScheduleChangedCharacteristic = [(GHSService *)self observationScheduleChangedCharacteristic];

            if (observationScheduleChangedCharacteristic == v17)
            {
              [(GHSService *)self extractObservationScheduleChanged];
            }

            else
            {
              ghsControlPointCharacteristic = [(GHSService *)self ghsControlPointCharacteristic];

              if (ghsControlPointCharacteristic == v17)
              {
                [(GHSService *)self extractGHSControlPointResponse];
              }
            }
          }
        }
      }
    }

    connectionIdleTimer = [(GHSService *)self connectionIdleTimer];
    [connectionIdleTimer invalidate];

    ghsDevice = [(GHSService *)self ghsDevice];
    v16 = +[NSTimer scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:](NSTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", self, "connectionIdleTimeout", 0, 0, [ghsDevice linkIdleTimeout]);
    [(GHSService *)self setConnectionIdleTimer:v16];

    characteristicCopy = v17;
  }
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (errorCopy && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100073AF0();
  }
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (errorCopy)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100073BAC();
    }

    racpCharacteristic = [(GHSService *)self racpCharacteristic];

    if (racpCharacteristic == characteristicCopy)
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
      bOOLValue = [v3 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)extractGHSControlPointResponse
{
  ghsControlPointCharacteristic = [(GHSService *)self ghsControlPointCharacteristic];
  value = [ghsControlPointCharacteristic value];
  v4 = [DataInputStream inputStreamWithData:value];

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
  liveObservationCharacteristic = [(GHSService *)self liveObservationCharacteristic];
  value = [liveObservationCharacteristic value];
  v5 = [DataInputStream inputStreamWithData:value];

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
        peripheral = [(ClientService *)self peripheral];
        name = [peripheral name];
        *buf = v19;
        v25 = 1752392040;
        v26 = 2113;
        v27 = name;
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
        peripheral2 = [(ClientService *)self peripheral];
        name2 = [peripheral2 name];
        *buf = v20;
        v25 = 1752392040;
        v26 = 2113;
        v27 = name2;
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

- (void)extractHealthObservationBodySegmentFromData:(id)data isLive:(BOOL)live
{
  liveCopy = live;
  dataCopy = data;
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
      if (liveCopy)
      {
        v7 = "Live";
      }

      else
      {
        v7 = "Stored";
      }

      peripheral = [(ClientService *)self peripheral];
      name = [peripheral name];
      *buf = 136315907;
      v140 = v7;
      v141 = 2160;
      *v142 = 1752392040;
      *&v142[8] = 2113;
      v143 = name;
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
      if (liveCopy)
      {
        v11 = "Live";
      }

      else
      {
        v11 = "Stored";
      }

      peripheral2 = [(ClientService *)self peripheral];
      name2 = [peripheral2 name];
      *buf = 136315907;
      v140 = v11;
      v141 = 2160;
      *v142 = 1752392040;
      *&v142[8] = 2113;
      v143 = name2;
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
      if (liveCopy)
      {
        v15 = "Live";
      }

      else
      {
        v15 = "Stored";
      }

      peripheral3 = [(ClientService *)self peripheral];
      name3 = [peripheral3 name];
      *buf = 136315907;
      v140 = v15;
      v141 = 2160;
      *v142 = 1752392040;
      *&v142[8] = 2113;
      v143 = name3;
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
      if (liveCopy)
      {
        v19 = "Live";
      }

      else
      {
        v19 = "Stored";
      }

      peripheral4 = [(ClientService *)self peripheral];
      name4 = [peripheral4 name];
      *buf = 136315907;
      v140 = v19;
      v141 = 2160;
      *v142 = 1752392040;
      *&v142[8] = 2113;
      v143 = name4;
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
      sub_100073CA0(liveCopy, &v136, v18);
    }
  }

LABEL_32:
  v22 = v136;
  if ((v136 & 2) != 0)
  {
    v23 = objc_alloc_init(NSMutableData);
    [v4 readNumBytes:9 toData:v23];
    manager = [(ClientService *)self manager];
    v25 = [CBUUID UUIDWithString:CBUUIDElapsedTimeServiceString];
    v26 = [manager clientServiceForUUID:v25];

    if (v26)
    {
      v27 = [v26 dateWithElapsedTimeData:v23];

      v28 = qword_1000DDBC8;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        if (liveCopy)
        {
          v29 = "Live";
        }

        else
        {
          v29 = "Stored";
        }

        peripheral5 = [(ClientService *)self peripheral];
        name5 = [peripheral5 name];
        *buf = 136315907;
        v140 = v29;
        v141 = 2160;
        *v142 = 1752392040;
        *&v142[8] = 2113;
        v143 = name5;
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
        if (liveCopy)
        {
          v117 = "Live";
        }

        else
        {
          v117 = "Stored";
        }

        peripheral6 = [(ClientService *)self peripheral];
        name6 = [peripheral6 name];
        *buf = 136315907;
        v140 = v117;
        v141 = 2160;
        *v142 = 1752392040;
        *&v142[8] = 2113;
        v143 = name6;
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
      if (liveCopy)
      {
        v33 = "Live";
      }

      else
      {
        v33 = "Stored";
      }

      peripheral7 = [(ClientService *)self peripheral];
      name7 = [peripheral7 name];
      *buf = 136315907;
      v140 = v33;
      v141 = 2160;
      *v142 = 1752392040;
      *&v142[8] = 2113;
      v143 = name7;
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
      if (liveCopy)
      {
        v37 = "Live";
      }

      else
      {
        v37 = "Stored";
      }

      peripheral8 = [(ClientService *)self peripheral];
      name8 = [peripheral8 name];
      *buf = 136315907;
      v140 = v37;
      v141 = 2160;
      *v142 = 1752392040;
      *&v142[8] = 2113;
      v143 = name8;
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
        if (liveCopy)
        {
          v41 = "Live";
        }

        else
        {
          v41 = "Stored";
        }

        peripheral9 = [(ClientService *)self peripheral];
        name9 = [peripheral9 name];
        *buf = 136315907;
        v140 = v41;
        v141 = 2160;
        *v142 = 1752392040;
        *&v142[8] = 2113;
        v143 = name9;
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
      if (liveCopy)
      {
        v45 = "Live";
      }

      else
      {
        v45 = "Stored";
      }

      peripheral10 = [(ClientService *)self peripheral];
      name10 = [peripheral10 name];
      *buf = 136315907;
      v140 = v45;
      v141 = 2160;
      *v142 = 1752392040;
      *&v142[8] = 2113;
      v143 = name10;
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
        if (liveCopy)
        {
          v50 = "Live";
        }

        else
        {
          v50 = "Stored";
        }

        peripheral11 = [(ClientService *)self peripheral];
        name11 = [peripheral11 name];
        *buf = 136315907;
        v140 = v50;
        v141 = 2160;
        *v142 = 1752392040;
        *&v142[8] = 2113;
        v143 = name11;
        v144 = 1024;
        *v145 = v126;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: numOfItems %u", buf, 0x26u);
      }
    }

    if (v126)
    {
      v53 = 0;
      if (liveCopy)
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
            peripheral12 = [(ClientService *)self peripheral];
            name12 = [peripheral12 name];
            *buf = 136315907;
            v140 = v54;
            v141 = 2160;
            *v142 = 1752392040;
            *&v142[8] = 2113;
            v143 = name12;
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
      if (liveCopy)
      {
        v59 = "Live";
      }

      else
      {
        v59 = "Stored";
      }

      peripheral13 = [(ClientService *)self peripheral];
      name13 = [peripheral13 name];
      *buf = 136315907;
      v140 = v59;
      v141 = 2160;
      *v142 = 1752392040;
      *&v142[8] = 2113;
      v143 = name13;
      v144 = 1024;
      *v145 = v126;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: numOfItems %u", buf, 0x26u);
    }
  }

  if (v126)
  {
    v62 = 0;
    if (liveCopy)
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
          peripheral14 = [(ClientService *)self peripheral];
          name14 = [peripheral14 name];
          *buf = 136315907;
          v140 = v63;
          v141 = 2160;
          *v142 = 1752392040;
          *&v142[8] = 2113;
          v143 = name14;
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
        if (liveCopy)
        {
          v68 = "Live";
        }

        else
        {
          v68 = "Stored";
        }

        peripheral15 = [(ClientService *)self peripheral];
        name15 = [peripheral15 name];
        *buf = 136315907;
        v140 = v68;
        v141 = 2160;
        *v142 = 1752392040;
        *&v142[8] = 2113;
        v143 = name15;
        v144 = 1024;
        *v145 = v126;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%s Health Observation for peripheral %{private, mask.hash}@: numOfItems %u", buf, 0x26u);
      }
    }

    if (v126)
    {
      v71 = 0;
      if (liveCopy)
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
            peripheral16 = [(ClientService *)self peripheral];
            name16 = [peripheral16 name];
            *buf = 136315907;
            v140 = v72;
            v141 = 2160;
            *v142 = 1752392040;
            *&v142[8] = 2113;
            v143 = name16;
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
        if (liveCopy)
        {
          v78 = "Live";
        }

        else
        {
          v78 = "Stored";
        }

        peripheral17 = [(ClientService *)self peripheral];
        name17 = [peripheral17 name];
        *buf = 136315907;
        v140 = v78;
        v141 = 2160;
        *v142 = 1752392040;
        *&v142[8] = 2113;
        v143 = name17;
        v144 = 1024;
        *v145 = v129;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%s Health Observation TLVs for peripheral %{private, mask.hash}@: numOfItems %u", buf, 0x26u);
      }
    }

    if (v129)
    {
      v81 = 0;
      if (liveCopy)
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
          peripheral18 = [(ClientService *)self peripheral];
          name18 = [peripheral18 name];
          *buf = 136316419;
          v140 = v82;
          v141 = 2160;
          *v142 = 1752392040;
          *&v142[8] = 2113;
          v143 = name18;
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
    ghsDevice = [(GHSService *)self ghsDevice];
    v87 = ghsDevice;
    if (liveCopy)
    {
      [ghsDevice handleLiveHealthObservationsData:v4 observationClassType:v138 observationType:v135 userID:v133 observationID:v134 timestamp:v5];
    }

    else
    {
      [ghsDevice handleStoredHealthObservationsData:v4 observationClassType:v138 observationType:v135 userID:v133 observationID:v134 timestamp:v5];
    }

    goto LABEL_204;
  }

  v131 = 0;
  if ([v4 readUint8:&v131])
  {
    v89 = qword_1000DDBC8;
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      if (liveCopy)
      {
        v90 = "Live";
      }

      else
      {
        v90 = "Stored";
      }

      peripheral19 = [(ClientService *)self peripheral];
      name19 = [peripheral19 name];
      *buf = 136315907;
      v140 = v90;
      v141 = 2160;
      *v142 = 1752392040;
      *&v142[8] = 2113;
      v143 = name19;
      v144 = 1024;
      *v145 = v131;
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "%s Health Observation TLVs for peripheral %{private, mask.hash}@: numOfObservations %u", buf, 0x26u);
    }
  }

  if (v131)
  {
    v93 = 0;
    if (liveCopy)
    {
      v94 = "Live";
    }

    else
    {
      v94 = "Stored";
    }

    v95 = "live";
    if (!liveCopy)
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
          peripheral20 = [(ClientService *)self peripheral];
          name20 = [peripheral20 name];
          *buf = 136316163;
          v140 = v94;
          v141 = 2160;
          *v142 = 1752392040;
          *&v142[8] = 2113;
          v143 = name20;
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
          peripheral21 = [(ClientService *)self peripheral];
          name21 = [peripheral21 name];
          *buf = 136316163;
          v140 = v94;
          v141 = 2160;
          *v142 = 1752392040;
          *&v142[8] = 2113;
          v143 = name21;
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
          peripheral22 = [(ClientService *)self peripheral];
          name22 = [peripheral22 name];
          *buf = 136316163;
          v140 = v94;
          v141 = 2160;
          *v142 = 1752392040;
          *&v142[8] = 2113;
          v143 = name22;
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
          peripheral23 = [(ClientService *)self peripheral];
          name23 = [peripheral23 name];
          *buf = 136316163;
          v140 = v94;
          v141 = 2160;
          *v142 = 1752392040;
          *&v142[8] = 2113;
          v143 = name23;
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
            peripheral24 = [(ClientService *)self peripheral];
            name24 = [peripheral24 name];
            *buf = 136316163;
            v140 = v94;
            v141 = 2160;
            *v142 = 1752392040;
            *&v142[8] = 2113;
            v143 = name24;
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
                peripheral25 = [(ClientService *)self peripheral];
                name25 = [peripheral25 name];
                *buf = 136316163;
                v140 = v94;
                v141 = 2160;
                *v142 = 1752392040;
                *&v142[8] = 2113;
                v143 = name25;
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

      ghsDevice2 = [(GHSService *)self ghsDevice];
      v116 = ghsDevice2;
      if (liveCopy)
      {
        [ghsDevice2 handleLiveHealthObservationsData:v4 observationClassType:v130 observationType:v132 userID:v133 observationID:v134 timestamp:v5];
      }

      else
      {
        [ghsDevice2 handleStoredHealthObservationsData:v4 observationClassType:v130 observationType:v132 userID:v133 observationID:v134 timestamp:v5];
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
  liveObservationCharacteristic = [(GHSService *)self liveObservationCharacteristic];
  value = [liveObservationCharacteristic value];
  v5 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v6 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    peripheral = [(ClientService *)self peripheral];
    name = [peripheral name];
    *buf = 141558531;
    v24 = 1752392040;
    v25 = 2113;
    v26 = name;
    v27 = 2112;
    *v28 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Live Health Observation for peripheral %{private, mask.hash}@: rawDataBytes %@", buf, 0x20u);
  }

  liveObservationCharacteristic2 = [(GHSService *)self liveObservationCharacteristic];
  value2 = [liveObservationCharacteristic2 value];
  v12 = [value2 length];

  v22 = 0;
  if ([v5 readUint8:&v22])
  {
    v13 = v22;
    v14 = v12 - 1;
    v15 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      peripheral2 = [(ClientService *)self peripheral];
      name2 = [peripheral2 name];
      v19 = name2;
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

      v26 = name2;
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
  storedObservationCharacteristic = [(GHSService *)self storedObservationCharacteristic];
  value = [storedObservationCharacteristic value];
  v5 = [DataInputStream inputStreamWithData:value byteOrder:1];

  if (self->_isExtraLoggingEnabled)
  {
    v6 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      peripheral = [(ClientService *)self peripheral];
      name = [peripheral name];
      *buf = 141558531;
      v29 = 1752392040;
      v30 = 2113;
      v31 = name;
      v32 = 2112;
      *v33 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Stored Health Observation for peripheral %{private, mask.hash}@: rawDataBytes %@", buf, 0x20u);
    }
  }

  v27 = 0;
  v26 = 0;
  storedObservationCharacteristic2 = [(GHSService *)self storedObservationCharacteristic];
  value2 = [storedObservationCharacteristic2 value];
  v12 = [value2 length];

  if ([v5 readUint8:&v27])
  {
    v13 = v27;
    v14 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      peripheral2 = [(ClientService *)self peripheral];
      name2 = [peripheral2 name];
      v18 = name2;
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

      v31 = name2;
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
          peripheral3 = [(ClientService *)self peripheral];
          name3 = [peripheral3 name];
          *buf = 141558531;
          v29 = 1752392040;
          v30 = 2113;
          v31 = name3;
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
  racpCharacteristic = [(GHSService *)self racpCharacteristic];
  value = [racpCharacteristic value];
  v5 = [DataInputStream inputStreamWithData:value byteOrder:1];

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
      peripheral = [(ClientService *)self peripheral];
      name = [peripheral name];
      *buf = 141558787;
      v34 = 1752392040;
      v35 = 2113;
      v36 = name;
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
        peripheral2 = [(ClientService *)self peripheral];
        name2 = [peripheral2 name];
        *buf = 141558531;
        v34 = 1752392040;
        v35 = 2113;
        v36 = name2;
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
            peripheral3 = [(ClientService *)self peripheral];
            name3 = [peripheral3 name];
            *buf = 141558531;
            v34 = 1752392040;
            v35 = 2113;
            v36 = name3;
            v37 = 1024;
            v38 = *v31;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "RACP response for peripheral %{private, mask.hash}@: retrieved numOfRecord %d", buf, 0x1Cu);
          }
        }

        peripheral4 = [(ClientService *)self peripheral];
        v14 = [NSString stringWithFormat:@"%d", self->_lastSyncedRecordNum];
        [peripheral4 setCustomProperty:@"HealthDataSyncLastStoredRecordNumber" value:v14];

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
            peripheral5 = [(ClientService *)self peripheral];
            name4 = [peripheral5 name];
            *buf = 141558787;
            v34 = 1752392040;
            v35 = 2113;
            v36 = name4;
            v37 = 1024;
            v38 = v31[0];
            v39 = 1024;
            v40 = v30;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "RACP for peripheral %{private, mask.hash}@ failed: opCode %d responseCode %d", buf, 0x22u);
          }
        }

        else if (self->_currentRACPOpCode == 1)
        {
          peripheral6 = [(ClientService *)self peripheral];
          v29 = [NSString stringWithFormat:@"%d", self->_lastSyncedRecordNum];
          [peripheral6 setCustomProperty:@"HealthDataSyncLastStoredRecordNumber" value:v29];
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
      peripheral = [(ClientService *)self peripheral];
      name = [peripheral name];
      v17 = 141558275;
      v18 = 1752392040;
      v19 = 2113;
      v20 = name;
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
      peripheral2 = [(ClientService *)self peripheral];
      name2 = [peripheral2 name];
      data = [v7 data];
      v13 = [data length];
      v17 = 141558787;
      v18 = 1752392040;
      v19 = 2113;
      v20 = name2;
      v21 = 1024;
      v22 = 6;
      v23 = 2048;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "RACP Retrieve for peripheral %{private, mask.hash}@ operator: %d | total len: %lu", &v17, 0x26u);
    }

    peripheral3 = [(ClientService *)self peripheral];
    data2 = [v7 data];
    racpCharacteristic = [(GHSService *)self racpCharacteristic];
    [peripheral3 writeValue:data2 forCharacteristic:racpCharacteristic type:0];
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
      peripheral = [(ClientService *)self peripheral];
      name = [peripheral name];
      data = [v4 data];
      v13 = 141558787;
      v14 = 1752392040;
      v15 = 2113;
      v16 = name;
      v17 = 1024;
      v18 = 1;
      v19 = 2048;
      v20 = [data length];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "RACP Delelte for peripheral %{private, mask.hash}@ operator: %d | total len: %lu", &v13, 0x26u);
    }

    peripheral2 = [(ClientService *)self peripheral];
    data2 = [v4 data];
    racpCharacteristic = [(GHSService *)self racpCharacteristic];
    [peripheral2 writeValue:data2 forCharacteristic:racpCharacteristic type:0];
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
    peripheral = [(ClientService *)self peripheral];
    name = [peripheral name];
    data = [v3 data];
    v12 = 141558787;
    v13 = 1752392040;
    v14 = 2113;
    v15 = name;
    v16 = 1024;
    v17 = 0;
    v18 = 2048;
    v19 = [data length];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "RACP Abort for peripheral %{private, mask.hash}@ operator: %d | total len: %lu", &v12, 0x26u);
  }

  peripheral2 = [(ClientService *)self peripheral];
  data2 = [v3 data];
  racpCharacteristic = [(GHSService *)self racpCharacteristic];
  [peripheral2 writeValue:data2 forCharacteristic:racpCharacteristic type:0];
}

- (void)extractObservationScheduleChanged
{
  v11 = 0;
  v10 = 0.0;
  observationScheduleChangedCharacteristic = [(GHSService *)self observationScheduleChangedCharacteristic];
  value = [observationScheduleChangedCharacteristic value];
  v5 = [DataInputStream inputStreamWithData:value byteOrder:1];

  [v5 readUint32:&v11 + 4];
  [v5 readIEEEFloat:&v11];
  [v5 readIEEEFloat:&v10];
  v6 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    peripheral = [(ClientService *)self peripheral];
    name = [peripheral name];
    *buf = 141559043;
    v13 = 1752392040;
    v14 = 2113;
    v15 = name;
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
  peripheral = [(ClientService *)self peripheral];
  [v4 postNotificationName:@"PeerDidIdleTimeoutNotification" object:peripheral];
}

@end