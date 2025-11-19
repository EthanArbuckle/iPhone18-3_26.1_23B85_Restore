@interface HIDService
- (BOOL)allInputReportsReady;
- (BOOL)isPowerManagementBasedOnDisplayState;
- (HIDService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5;
- (id)hidDeviceProperties;
- (id)reportTypeToString:(int)a3;
- (void)authDidSucceedNotification:(id)a3;
- (void)createHIDDeviceIfEverythingReady;
- (void)createReportInfo:(id)a3;
- (void)dealloc;
- (void)deregisterForPowerManagementEvents;
- (void)destroyHIDDevice;
- (void)enterSuspendModeIfNeeded:(int64_t)a3;
- (void)exitSuspendModeIfNeeded;
- (void)hidDeviceDesiredConnectionParametersDidChange;
- (void)notifyDidStartIfEverythingReady;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)registerForPowerManagementEvents;
- (void)signalCommandCondition:(id)a3 error:(id)a4;
- (void)start;
- (void)stop;
- (void)writeControlPointCommand:(unsigned __int8)a3;
@end

@implementation HIDService

- (HIDService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5
{
  v10.receiver = self;
  v10.super_class = HIDService;
  v5 = [(ClientService *)&v10 initWithManager:a3 peripheral:a4 service:a5];
  v6 = v5;
  if (v5)
  {
    [(ClientService *)v5 setIsPrimary:1];
    [(ClientService *)v6 setPriority:2];
    v7 = +[NSMapTable strongToStrongObjectsMapTable];
    reportInfoMap = v6->_reportInfoMap;
    v6->_reportInfoMap = v7;

    [(HIDService *)v6 setPmService:0];
    [(HIDService *)v6 setPmNotifier:0];
  }

  return v6;
}

- (void)start
{
  v13.receiver = self;
  v13.super_class = HIDService;
  [(ClientService *)&v13 start];
  v3 = [CBUUID UUIDWithString:CBUUIDReportMapCharacteristicString];
  v14[0] = v3;
  v4 = [CBUUID UUIDWithString:CBUUIDReportCharacteristicString];
  v14[1] = v4;
  v5 = [CBUUID UUIDWithString:CBUUIDHIDControlPointCharacteristicString];
  v14[2] = v5;
  v6 = [CBUUID UUIDWithString:CBUUIDHIDInformationCharacteristicString];
  v14[3] = v6;
  v7 = [CBUUID UUIDWithString:@"D31D8DEA-47DB-4796-A6B9-E38909CB34FF"];
  v14[4] = v7;
  v8 = [CBUUID UUIDWithString:CBUUIDBootKeyboardInputReportCharacteristicString];
  v14[5] = v8;
  v9 = [CBUUID UUIDWithString:CBUUIDBootMouseInputReportCharacteristicString];
  v14[6] = v9;
  v10 = [NSArray arrayWithObjects:v14 count:7];

  v11 = [(ClientService *)self peripheral];
  v12 = [(ClientService *)self service];
  [v11 discoverCharacteristics:v10 forService:v12];
}

- (void)stop
{
  [(HIDService *)self deregisterForPowerManagementEvents];
  [(HIDService *)self destroyHIDDevice];
  v3.receiver = self;
  v3.super_class = HIDService;
  [(ClientService *)&v3 stop];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HIDService;
  [(HIDService *)&v4 dealloc];
}

- (void)createReportInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 value];
  v6 = [DataInputStream inputStreamWithData:v5];

  v17 = 0;
  if ([v6 readUint8:&v17 + 1] && objc_msgSend(v6, "readUint8:", &v17))
  {
    LOBYTE(v17) = v17 - 1;
    v7 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      v14 = v17;
      v15 = v7;
      v16 = [(HIDService *)self reportTypeToString:v14];
      *buf = 138412546;
      v19 = v16;
      v20 = 1024;
      v21 = HIBYTE(v17);
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Found %@ report for ID #%u", buf, 0x12u);
    }

    v8 = [HIDReportInfo alloc];
    v9 = [(HIDReportInfo *)v8 initWithID:HIBYTE(v17) type:v17];
    reportInfoMap = self->_reportInfoMap;
    v11 = [v4 characteristic];
    [(NSMapTable *)reportInfoMap setObject:v9 forKey:v11];

    if (!v17)
    {
      v12 = [(ClientService *)self peripheral];
      v13 = [v4 characteristic];
      [v12 setNotifyValue:1 forCharacteristic:v13];
    }

    [(HIDService *)self createHIDDeviceIfEverythingReady];
  }
}

- (id)hidDeviceProperties
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(ClientService *)self manager];
  v5 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
  v6 = [v4 clientServiceForUUID:v5];

  if (v6)
  {
    if ([v6 hasIDs])
    {
      v7 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v6 vendorIDSource]);
      [v3 setObject:v7 forKeyedSubscript:@"VendorIDSource"];

      v8 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v6 vendorID]);
      [v3 setObject:v8 forKeyedSubscript:@"VendorID"];

      v9 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v6 productID]);
      [v3 setObject:v9 forKeyedSubscript:@"ProductID"];

      v10 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v6 productVersion]);
      [v3 setObject:v10 forKeyedSubscript:@"VersionNumber"];
    }

    v11 = [v6 firmwareRevision];

    if (v11)
    {
      v12 = [v6 firmwareRevision];
      v13 = [v12 stringByReplacingOccurrencesOfString:&stru_1000C15C0 withString:&stru_1000BEA00];
      [v3 setObject:v13 forKeyedSubscript:@"kBTFirmwareRevisionKey"];
    }

    v14 = [v6 hardwareRevision];

    if (v14)
    {
      v15 = [v6 hardwareRevision];
      v16 = [v15 stringByReplacingOccurrencesOfString:&stru_1000C15C0 withString:&stru_1000BEA00];
      [v3 setObject:v16 forKeyedSubscript:@"kBTHardwareRevisionKey"];
    }

    v17 = [v6 serialNumber];

    if (v17)
    {
      v18 = [v6 serialNumber];
      v19 = [v18 stringByReplacingOccurrencesOfString:&stru_1000C15C0 withString:&stru_1000BEA00];
      [v3 setObject:v19 forKeyedSubscript:@"SerialNumber"];
    }

    v20 = [v6 modelNumber];

    if (v20)
    {
      v21 = [v6 modelNumber];
      v22 = [v21 stringByReplacingOccurrencesOfString:&stru_1000C15C0 withString:&stru_1000BEA00];
      [v3 setObject:v22 forKeyedSubscript:@"ModelNumber"];
    }

    v23 = [v6 manufacturerName];

    if (v23)
    {
      v24 = [v6 manufacturerName];
      v25 = [v24 stringByReplacingOccurrencesOfString:&stru_1000C15C0 withString:&stru_1000BEA00];
      [v3 setObject:v25 forKeyedSubscript:@"Manufacturer"];
    }
  }

  v26 = [(HIDService *)self hidInformationCharacteristic];
  v27 = [v26 value];
  v28 = [DataInputStream inputStreamWithData:v27 byteOrder:1];

  LOWORD(v56[0]) = 0;
  v55 = 0;
  [v28 readUint16:v56];
  if ([v28 readUint8:&v55])
  {
    v29 = [NSNumber numberWithUnsignedChar:v55];
    [v3 setObject:v29 forKeyedSubscript:@"CountryCode"];
  }

  v56[0] = 0;
  v56[1] = 0;
  v30 = [(ClientService *)self peripheral];
  v31 = [v30 identifier];
  [v31 getUUIDBytes:v56];

  v32 = [NSNumber numberWithUnsignedInt:LODWORD(v56[0])];
  [v3 setObject:v32 forKeyedSubscript:@"LocationID"];

  v33 = [(ClientService *)self peripheral];
  v34 = [v33 identifier];
  v35 = [v34 UUIDString];
  [v3 setObject:v35 forKeyedSubscript:@"PhysicalDeviceUniqueID"];

  v36 = [(ClientService *)self peripheral];
  v37 = [v36 name];

  if (v37)
  {
    v38 = [(ClientService *)self peripheral];
    v39 = [v38 name];
    [v3 setObject:v39 forKeyedSubscript:@"Product"];
  }

  v40 = [(HIDService *)self reportMapCharacteristic];
  v41 = [v40 value];
  [v3 setObject:v41 forKeyedSubscript:@"ReportDescriptor"];

  [v3 setObject:@"BluetoothLowEnergy" forKeyedSubscript:@"Transport"];
  [v3 setObject:&off_1000C42B0 forKeyedSubscript:@"RequestTimeout"];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"HIDVirtualDevice"];
  v42 = [(ClientService *)self manager];
  v43 = [CBUUID UUIDWithString:@"8341F2B4-C013-4F04-8197-C4CDB42E26DC"];
  v44 = [v42 clientServiceForUUID:v43];

  if (v44)
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Authenticated"];
    v45 = +[NSNotificationCenter defaultCenter];
    v46 = [(ClientService *)self peripheral];
    [v45 addObserver:self selector:"authDidSucceedNotification:" name:@"AuthenticationServiceAuthDidSucceedNotification" object:v46];
  }

  else
  {
    v47 = [(ClientService *)self peripheral];
    v48 = [v47 hasTag:@"needsMFiAuthentication4.0"];

    if (v48)
    {
      [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Authenticated"];
    }
  }

  v49 = [(HIDService *)self accessoryCategoryCharacteristic];

  if (v49)
  {
    v50 = [(HIDService *)self accessoryCategoryCharacteristic];
    v51 = [v50 value];
    v52 = [DataInputStream inputStreamWithData:v51];

    LOBYTE(v56[0]) = 0;
    if ([v52 readUint8:v56])
    {
      v53 = [NSNumber numberWithUnsignedChar:LOBYTE(v56[0])];
      [v3 setObject:v53 forKeyedSubscript:@"IAPHIDAccessoryCategory"];
    }
  }

  return v3;
}

- (void)createHIDDeviceIfEverythingReady
{
  v25 = [(HIDService *)self reportMapCharacteristic];
  v3 = [v25 value];
  if (v3)
  {
    v4 = v3;
    v5 = [(HIDService *)self hidInformationCharacteristic];
    v6 = [v5 value];
    if (v6 && [(NSMapTable *)self->_reportInfoMap count]== self->_numReports)
    {
      v7 = [(HIDService *)self accessoryCategoryCharacteristic];
      if (v7)
      {
        v8 = v7;
        v9 = [(HIDService *)self accessoryCategoryCharacteristic];
        v10 = [v9 value];

        if (!v10)
        {
          return;
        }
      }

      else
      {
      }

      v11 = [(HIDService *)self hidDeviceProperties];
      v12 = [(ClientService *)self peripheral];
      if ([v12 isLinkEncrypted])
      {
        v13 = [(HIDService *)self hidDevice];

        if (!v13)
        {
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
          {
            sub_10007655C();
          }

          v14 = [(NSMapTable *)self->_reportInfoMap objectEnumerator];
          v15 = [v14 allObjects];
          v16 = [HIDBluetoothDevice hidDeviceWithProperties:v11 reports:v15];
          [(HIDService *)self setHidDevice:v16];

          v17 = [(HIDService *)self hidDevice];

          if (v17)
          {
            v18 = [(HIDService *)self hidDevice];
            [v18 setService:self];

            v19 = [(ClientService *)self peripheral];
            v20 = [(HIDService *)self hidDevice];
            [v20 setPeripheral:v19];

            v21 = [(HIDService *)self hidDevice];
            v22 = [v21 desiredConnectionParameters];

            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
            {
              sub_1000765D0();
            }

            v23 = [(ClientService *)self manager];
            [v23 clientService:self desiresConnectionParameters:v22];

            v24 = [(HIDService *)self hidDevice];
            [v24 start];
          }

          else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            sub_100076644();
          }

LABEL_24:

          return;
        }
      }

      else
      {
      }

      if ([(HIDService *)self allInputReportsReady]&& os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100076528();
      }

      goto LABEL_24;
    }
  }
}

- (void)destroyHIDDevice
{
  v3 = [(HIDService *)self hidDevice];

  if (v3)
  {
    reportInfoMap = self->_reportInfoMap;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000407E4;
    v6[3] = &unk_1000BDFE8;
    v6[4] = self;
    [(NSMapTable *)reportInfoMap enumerateKeysAndObjectsUsingBlock:v6];
    v5 = [(HIDService *)self hidDevice];
    [v5 stop];
  }
}

- (void)signalCommandCondition:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 commandCondition];
  [v7 lock];

  [v6 setCommandPending:0];
  [v6 setCommandError:v5];

  v8 = [v6 commandCondition];
  [v8 signal];

  v9 = [v6 commandCondition];

  [v9 unlock];
}

- (BOOL)isPowerManagementBasedOnDisplayState
{
  v2 = [(ClientService *)self peripheral];
  v3 = [v2 hasTag:@"A2538"];

  return v3;
}

- (void)registerForPowerManagementEvents
{
  if ([(HIDService *)self isPowerManagementBasedOnDisplayState])
  {
    v3 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering for display state instead of system sleep state", buf, 2u);
    }

    v4 = objc_alloc_init(CUSystemMonitor);
    [(HIDService *)self setSystemMonitor:v4];

    v5 = [(HIDService *)self systemMonitor];
    [v5 setDispatchQueue:&_dispatch_main_q];

    objc_initWeak(buf, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100040B58;
    v9[3] = &unk_1000BD3C0;
    objc_copyWeak(&v10, buf);
    v6 = [(HIDService *)self systemMonitor];
    [v6 setScreenOnChangedHandler:v9];

    v7 = [(HIDService *)self systemMonitor];
    [v7 activateWithCompletion:0];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    [(HIDService *)self setPmService:IORegisterForSystemPower(self, &self->_pmNotificationPort, j__objc_msgSend_handlePowerManagementNotification_notificationID_, &self->_pmNotifier)];
    v8 = [(HIDService *)self pmNotificationPort];

    IONotificationPortSetDispatchQueue(v8, &_dispatch_main_q);
  }
}

- (void)deregisterForPowerManagementEvents
{
  if ([(HIDService *)self isPowerManagementBasedOnDisplayState])
  {
    v3 = [(HIDService *)self systemMonitor];
    [v3 invalidate];

    [(HIDService *)self setSystemMonitor:0];
  }

  else if ([(HIDService *)self pmService])
  {
    IODeregisterForSystemPower(&self->_pmNotifier);
    IONotificationPortDestroy([(HIDService *)self pmNotificationPort]);
    v4 = [(HIDService *)self pmService];

    IOServiceClose(v4);
  }
}

- (void)notifyDidStartIfEverythingReady
{
  v6 = [(HIDService *)self hidDevice];
  if ([v6 state] == 2)
  {
    v3 = [(HIDService *)self allInputReportsReady];

    if (v3)
    {
      v4 = +[NSNotificationCenter defaultCenter];
      v5 = [(ClientService *)self peripheral];
      [v4 postNotificationName:@"PeerIsUsingBuiltinServiceNotification" object:v5];

      [(ClientService *)self notifyDidStart];
    }
  }

  else
  {
  }
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v53 = a3;
  if (!a5)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = [a4 characteristics];
    v8 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v56;
      v51 = CBUUIDReportMapCharacteristicString;
      v11 = CBUUIDReportCharacteristicString;
      v49 = CBUUIDHIDControlPointCharacteristicString;
      v48 = CBUUIDHIDInformationCharacteristicString;
      v50 = CBUUIDBootKeyboardInputReportCharacteristicString;
      v47 = CBUUIDBootMouseInputReportCharacteristicString;
      do
      {
        v12 = 0;
        do
        {
          if (*v56 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v55 + 1) + 8 * v12);
          v14 = [(HIDService *)self reportMapCharacteristic];
          if (v14)
          {
          }

          else
          {
            v15 = [v13 UUID];
            v16 = [CBUUID UUIDWithString:v51];
            v17 = [v15 isEqual:v16];

            if (v17)
            {
              [(HIDService *)self setReportMapCharacteristic:v13];
              [v53 discoverDescriptorsForCharacteristic:v13];
LABEL_25:
              v33 = [(ClientService *)self peripheral];
              if ([v33 isLinkEncrypted])
              {
                v34 = [v13 value];

                if (v34)
                {
                  goto LABEL_39;
                }
              }

              else
              {
              }

              [v53 readValueForCharacteristic:v13];
              goto LABEL_39;
            }
          }

          v18 = [v13 UUID];
          v19 = [CBUUID UUIDWithString:v11];
          v20 = [v18 isEqual:v19];

          if (v20)
          {
            ++self->_numReports;
            [v53 discoverDescriptorsForCharacteristic:v13];
            goto LABEL_39;
          }

          v21 = [(HIDService *)self hidControlPointCharacteristic];
          if (v21)
          {
          }

          else
          {
            v22 = [v13 UUID];
            v23 = [CBUUID UUIDWithString:v49];
            v24 = [v22 isEqual:v23];

            if (v24)
            {
              [(HIDService *)self setHidControlPointCharacteristic:v13];
              [(HIDService *)self registerForPowerManagementEvents];
              goto LABEL_39;
            }
          }

          v25 = [(HIDService *)self hidInformationCharacteristic];
          if (v25)
          {
          }

          else
          {
            v26 = [v13 UUID];
            v27 = [CBUUID UUIDWithString:v48];
            v28 = [v26 isEqual:v27];

            if (v28)
            {
              [(HIDService *)self setHidInformationCharacteristic:v13];
              goto LABEL_25;
            }
          }

          v29 = [(HIDService *)self accessoryCategoryCharacteristic];
          if (v29)
          {
          }

          else
          {
            v30 = [v13 UUID];
            v31 = [CBUUID UUIDWithString:@"D31D8DEA-47DB-4796-A6B9-E38909CB34FF"];
            v32 = [v30 isEqual:v31];

            if (v32)
            {
              [(HIDService *)self setAccessoryCategoryCharacteristic:v13];
              goto LABEL_25;
            }
          }

          v35 = [v13 UUID];
          v36 = [CBUUID UUIDWithString:v50];
          v37 = [v35 isEqual:v36];

          if (v37)
          {
            v38 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Detected keyboard LE HID", buf, 2u);
            }

            v39 = v53;
            v40 = @"IsLEKeyboard";
          }

          else
          {
            v41 = [v13 UUID];
            v42 = [CBUUID UUIDWithString:v47];
            v43 = [v41 isEqual:v42];

            if (!v43)
            {
              goto LABEL_39;
            }

            v44 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Detected mouse LE HID", buf, 2u);
            }

            v39 = v53;
            v40 = @"IsLEMouse";
          }

          [v39 tag:v40];
LABEL_39:
          v12 = v12 + 1;
        }

        while (v9 != v12);
        v9 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v9);
    }

    v45 = [(HIDService *)self reportMapCharacteristic];

    if (!v45 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100076678();
    }

    if (!self->_numReports && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000766AC();
    }

    v46 = [(HIDService *)self hidInformationCharacteristic];

    if (!v46 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000766E0();
    }
  }
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(NSMapTable *)self->_reportInfoMap objectForKey:v7];
  v10 = v9;
  if (v9)
  {
    if ([v9 commandPending] == 1)
    {
      v11 = qword_1000DDBC8;
      if (v8)
      {
        if (!os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
LABEL_17:
          [(HIDService *)self signalCommandCondition:v10 error:v8];
          goto LABEL_30;
        }

        v12 = v11;
        v13 = -[HIDService reportTypeToString:](self, "reportTypeToString:", [v10 type]);
        v33 = 138412802;
        v34 = v13;
        v35 = 1024;
        v36 = [v10 ID];
        v37 = 2112;
        v38 = v8;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error getting %@ report for ID #%u: %@", &v33, 0x1Cu);
      }

      else
      {
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
        {
          v25 = v11;
          v26 = -[HIDService reportTypeToString:](self, "reportTypeToString:", [v10 type]);
          v27 = [v10 ID];
          v28 = [v7 value];
          v33 = 138412802;
          v34 = v26;
          v35 = 1024;
          v36 = v27;
          v37 = 2112;
          v38 = v28;
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Did get %@ report for ID #%u: %@", &v33, 0x1Cu);
        }

        v12 = [v7 value];
        [v10 setCommandValue:v12];
      }

      goto LABEL_17;
    }

    if (v8)
    {
      v18 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
        v20 = -[HIDService reportTypeToString:](self, "reportTypeToString:", [v10 type]);
        v33 = 138412802;
        v34 = v20;
        v35 = 1024;
        v36 = [v10 ID];
        v37 = 2112;
        v38 = v8;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error updating %@ report for ID #%u: %@", &v33, 0x1Cu);
      }
    }

    else
    {
      v21 = [v7 valueTimestamp];
      if (!v21)
      {
        v21 = mach_absolute_time();
      }

      v22 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
      {
        v29 = v22;
        v30 = -[HIDService reportTypeToString:](self, "reportTypeToString:", [v10 type]);
        v31 = [v10 ID];
        v32 = [v7 value];
        v33 = 138412802;
        v34 = v30;
        v35 = 1024;
        v36 = v31;
        v37 = 2112;
        v38 = v32;
        _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Updated %@ report for ID #%u: %@", &v33, 0x1Cu);
      }

      if (byte_1000DDBC0 == 1)
      {
        kdebug_trace();
      }

      v23 = [(HIDService *)self hidDevice];
      v24 = [v7 value];
      [v23 handleInputReportData:v24 reportID:objc_msgSend(v10 timestamp:{"ID"), v21}];
    }
  }

  else
  {
    v14 = [(HIDService *)self reportMapCharacteristic];
    if (v14 == v7)
    {
      v17 = 0;
    }

    else
    {
      v15 = [(HIDService *)self hidInformationCharacteristic];
      if (v15 == v7)
      {
        v17 = 0;
      }

      else
      {
        v16 = [(HIDService *)self accessoryCategoryCharacteristic];
        v17 = v16 != v7;
      }
    }

    if (!v8 && !v17)
    {
      [(HIDService *)self createHIDDeviceIfEverythingReady];
    }
  }

LABEL_30:
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = [(NSMapTable *)self->_reportInfoMap objectForKey:a4];
  v9 = v8;
  if (v8 && [v8 commandPending] == 2)
  {
    v10 = qword_1000DDBC8;
    if (v7)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = -[HIDService reportTypeToString:](self, "reportTypeToString:", [v9 type]);
        v13 = 138412802;
        v14 = v12;
        v15 = 1024;
        v16 = [v9 ID];
        v17 = 2112;
        v18 = v7;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error setting %@ report for ID #%u: %@", &v13, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_100076714(v10, v9, self);
    }

    [(HIDService *)self signalCommandCondition:v9 error:v7];
  }
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = [(NSMapTable *)self->_reportInfoMap objectForKey:a4];
  if (v8)
  {
    v9 = qword_1000DDBC8;
    if (v7)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        v11 = -[HIDService reportTypeToString:](self, "reportTypeToString:", [v8 type]);
        v13 = 138412802;
        v14 = v11;
        v15 = 1024;
        v16 = [v8 ID];
        v17 = 2112;
        v18 = v7;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error starting notifications on %@ report for ID #%u: %@", &v13, 0x1Cu);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000767C8(v9, v8, self);
      }

      v12 = [(HIDService *)self hidDevice];

      if (!v12)
      {
        [(HIDService *)self createHIDDeviceIfEverythingReady];
      }

      [(HIDService *)self notifyDidStartIfEverythingReady];
    }
  }
}

- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5
{
  v26 = a3;
  v7 = a4;
  v8 = v7;
  if (a5)
  {
    goto LABEL_22;
  }

  v9 = [v7 UUID];
  v10 = [CBUUID UUIDWithString:CBUUIDReportCharacteristicString];
  v11 = [v9 isEqual:v10];

  if (!v11)
  {
    goto LABEL_22;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = [v8 descriptors];
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v13)
  {

    goto LABEL_20;
  }

  v14 = v13;
  v25 = v8;
  v15 = 0;
  v16 = *v29;
  v17 = CBUUIDReportReferenceDescriptorString;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v29 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v28 + 1) + 8 * i);
      v20 = [v19 UUID];
      v21 = [CBUUID UUIDWithString:v17];
      v22 = [v20 isEqual:v21];

      if (v22)
      {
        v23 = [(ClientService *)self peripheral];
        if ([v23 isLinkEncrypted])
        {
          v24 = [v19 value];

          if (v24)
          {
            [(HIDService *)self createReportInfo:v19];
LABEL_14:
            v15 = 1;
            continue;
          }
        }

        else
        {
        }

        [v26 readValueForDescriptor:v19];
        goto LABEL_14;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v14);

  v8 = v25;
  if (v15)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_10007687C();
  }

LABEL_22:
}

- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5
{
  v7 = a4;
  if (!a5)
  {
    v11 = v7;
    v8 = [v7 UUID];
    v9 = [CBUUID UUIDWithString:CBUUIDReportReferenceDescriptorString];
    v10 = [v8 isEqual:v9];

    v7 = v11;
    if (v10)
    {
      [(HIDService *)self createReportInfo:v11];
      v7 = v11;
    }
  }
}

- (void)hidDeviceDesiredConnectionParametersDidChange
{
  v3 = [(HIDService *)self hidDevice];
  v4 = [v3 desiredConnectionParameters];

  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000768B0();
  }

  v5 = [(ClientService *)self manager];
  [v5 clientService:self desiresConnectionParameters:v4];
}

- (void)enterSuspendModeIfNeeded:(int64_t)a3
{
  if ([(HIDService *)self pmIsSuspended])
  {
    v5 = [(HIDService *)self pmService];

    IOAllowPowerChange(v5, a3);
  }

  else
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_100076924();
    }

    [(HIDService *)self setPmIsSuspended:1];
    [(HIDService *)self writeControlPointCommand:0];
    v6 = dispatch_time(0, 1000000000);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000424E0;
    v7[3] = &unk_1000BE010;
    v7[4] = self;
    v7[5] = a3;
    dispatch_after(v6, &_dispatch_main_q, v7);
  }
}

- (void)exitSuspendModeIfNeeded
{
  if ([(HIDService *)self pmIsSuspended])
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_100076960();
    }

    [(HIDService *)self setPmIsSuspended:0];
    [(HIDService *)self writeControlPointCommand:1];
  }
}

- (void)writeControlPointCommand:(unsigned __int8)a3
{
  v7 = a3;
  v4 = [NSData dataWithBytes:&v7 length:1];
  v5 = [(ClientService *)self peripheral];
  v6 = [(HIDService *)self hidControlPointCharacteristic];
  [v5 writeValue:v4 forCharacteristic:v6 type:1];
}

- (void)authDidSucceedNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v10 = [v5 objectForKeyedSubscript:@"AuthenticationServiceCertClassUserInfoKey"];

  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:@"AuthenticationServiceAuthVersionKey"];

  if ([v7 intValue] <= 2 && (!v10 || objc_msgSend(v10, "unsignedIntValue")))
  {
    v8 = +[NSNotificationCenter defaultCenter];
    v9 = [(ClientService *)self peripheral];
    [v8 postNotificationName:@"AuthenticationServiceAuthDidFailNotification" object:v9];
  }
}

- (BOOL)allInputReportsReady
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  reportInfoMap = self->_reportInfoMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000428CC;
  v5[3] = &unk_1000BE038;
  v5[4] = &v6;
  [(NSMapTable *)reportInfoMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)reportTypeToString:(int)a3
{
  if (a3 > 2)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1000BE080 + a3);
  }
}

@end