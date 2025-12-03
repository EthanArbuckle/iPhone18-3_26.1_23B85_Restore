@interface HIDService
- (BOOL)allInputReportsReady;
- (BOOL)isPowerManagementBasedOnDisplayState;
- (HIDService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service;
- (id)hidDeviceProperties;
- (id)reportTypeToString:(int)string;
- (void)authDidSucceedNotification:(id)notification;
- (void)createHIDDeviceIfEverythingReady;
- (void)createReportInfo:(id)info;
- (void)dealloc;
- (void)deregisterForPowerManagementEvents;
- (void)destroyHIDDevice;
- (void)enterSuspendModeIfNeeded:(int64_t)needed;
- (void)exitSuspendModeIfNeeded;
- (void)hidDeviceDesiredConnectionParametersDidChange;
- (void)notifyDidStartIfEverythingReady;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)registerForPowerManagementEvents;
- (void)signalCommandCondition:(id)condition error:(id)error;
- (void)start;
- (void)stop;
- (void)writeControlPointCommand:(unsigned __int8)command;
@end

@implementation HIDService

- (HIDService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service
{
  v10.receiver = self;
  v10.super_class = HIDService;
  v5 = [(ClientService *)&v10 initWithManager:manager peripheral:peripheral service:service];
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

  peripheral = [(ClientService *)self peripheral];
  service = [(ClientService *)self service];
  [peripheral discoverCharacteristics:v10 forService:service];
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

- (void)createReportInfo:(id)info
{
  infoCopy = info;
  value = [infoCopy value];
  v6 = [DataInputStream inputStreamWithData:value];

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
    characteristic = [infoCopy characteristic];
    [(NSMapTable *)reportInfoMap setObject:v9 forKey:characteristic];

    if (!v17)
    {
      peripheral = [(ClientService *)self peripheral];
      characteristic2 = [infoCopy characteristic];
      [peripheral setNotifyValue:1 forCharacteristic:characteristic2];
    }

    [(HIDService *)self createHIDDeviceIfEverythingReady];
  }
}

- (id)hidDeviceProperties
{
  v3 = +[NSMutableDictionary dictionary];
  manager = [(ClientService *)self manager];
  v5 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
  v6 = [manager clientServiceForUUID:v5];

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

    firmwareRevision = [v6 firmwareRevision];

    if (firmwareRevision)
    {
      firmwareRevision2 = [v6 firmwareRevision];
      v13 = [firmwareRevision2 stringByReplacingOccurrencesOfString:&stru_1000C15C0 withString:&stru_1000BEA00];
      [v3 setObject:v13 forKeyedSubscript:@"kBTFirmwareRevisionKey"];
    }

    hardwareRevision = [v6 hardwareRevision];

    if (hardwareRevision)
    {
      hardwareRevision2 = [v6 hardwareRevision];
      v16 = [hardwareRevision2 stringByReplacingOccurrencesOfString:&stru_1000C15C0 withString:&stru_1000BEA00];
      [v3 setObject:v16 forKeyedSubscript:@"kBTHardwareRevisionKey"];
    }

    serialNumber = [v6 serialNumber];

    if (serialNumber)
    {
      serialNumber2 = [v6 serialNumber];
      v19 = [serialNumber2 stringByReplacingOccurrencesOfString:&stru_1000C15C0 withString:&stru_1000BEA00];
      [v3 setObject:v19 forKeyedSubscript:@"SerialNumber"];
    }

    modelNumber = [v6 modelNumber];

    if (modelNumber)
    {
      modelNumber2 = [v6 modelNumber];
      v22 = [modelNumber2 stringByReplacingOccurrencesOfString:&stru_1000C15C0 withString:&stru_1000BEA00];
      [v3 setObject:v22 forKeyedSubscript:@"ModelNumber"];
    }

    manufacturerName = [v6 manufacturerName];

    if (manufacturerName)
    {
      manufacturerName2 = [v6 manufacturerName];
      v25 = [manufacturerName2 stringByReplacingOccurrencesOfString:&stru_1000C15C0 withString:&stru_1000BEA00];
      [v3 setObject:v25 forKeyedSubscript:@"Manufacturer"];
    }
  }

  hidInformationCharacteristic = [(HIDService *)self hidInformationCharacteristic];
  value = [hidInformationCharacteristic value];
  v28 = [DataInputStream inputStreamWithData:value byteOrder:1];

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
  peripheral = [(ClientService *)self peripheral];
  identifier = [peripheral identifier];
  [identifier getUUIDBytes:v56];

  v32 = [NSNumber numberWithUnsignedInt:LODWORD(v56[0])];
  [v3 setObject:v32 forKeyedSubscript:@"LocationID"];

  peripheral2 = [(ClientService *)self peripheral];
  identifier2 = [peripheral2 identifier];
  uUIDString = [identifier2 UUIDString];
  [v3 setObject:uUIDString forKeyedSubscript:@"PhysicalDeviceUniqueID"];

  peripheral3 = [(ClientService *)self peripheral];
  name = [peripheral3 name];

  if (name)
  {
    peripheral4 = [(ClientService *)self peripheral];
    name2 = [peripheral4 name];
    [v3 setObject:name2 forKeyedSubscript:@"Product"];
  }

  reportMapCharacteristic = [(HIDService *)self reportMapCharacteristic];
  value2 = [reportMapCharacteristic value];
  [v3 setObject:value2 forKeyedSubscript:@"ReportDescriptor"];

  [v3 setObject:@"BluetoothLowEnergy" forKeyedSubscript:@"Transport"];
  [v3 setObject:&off_1000C42B0 forKeyedSubscript:@"RequestTimeout"];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"HIDVirtualDevice"];
  manager2 = [(ClientService *)self manager];
  v43 = [CBUUID UUIDWithString:@"8341F2B4-C013-4F04-8197-C4CDB42E26DC"];
  v44 = [manager2 clientServiceForUUID:v43];

  if (v44)
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Authenticated"];
    v45 = +[NSNotificationCenter defaultCenter];
    peripheral5 = [(ClientService *)self peripheral];
    [v45 addObserver:self selector:"authDidSucceedNotification:" name:@"AuthenticationServiceAuthDidSucceedNotification" object:peripheral5];
  }

  else
  {
    peripheral6 = [(ClientService *)self peripheral];
    v48 = [peripheral6 hasTag:@"needsMFiAuthentication4.0"];

    if (v48)
    {
      [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Authenticated"];
    }
  }

  accessoryCategoryCharacteristic = [(HIDService *)self accessoryCategoryCharacteristic];

  if (accessoryCategoryCharacteristic)
  {
    accessoryCategoryCharacteristic2 = [(HIDService *)self accessoryCategoryCharacteristic];
    value3 = [accessoryCategoryCharacteristic2 value];
    v52 = [DataInputStream inputStreamWithData:value3];

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
  reportMapCharacteristic = [(HIDService *)self reportMapCharacteristic];
  value = [reportMapCharacteristic value];
  if (value)
  {
    v4 = value;
    hidInformationCharacteristic = [(HIDService *)self hidInformationCharacteristic];
    value2 = [hidInformationCharacteristic value];
    if (value2 && [(NSMapTable *)self->_reportInfoMap count]== self->_numReports)
    {
      accessoryCategoryCharacteristic = [(HIDService *)self accessoryCategoryCharacteristic];
      if (accessoryCategoryCharacteristic)
      {
        v8 = accessoryCategoryCharacteristic;
        accessoryCategoryCharacteristic2 = [(HIDService *)self accessoryCategoryCharacteristic];
        value3 = [accessoryCategoryCharacteristic2 value];

        if (!value3)
        {
          return;
        }
      }

      else
      {
      }

      hidDeviceProperties = [(HIDService *)self hidDeviceProperties];
      peripheral = [(ClientService *)self peripheral];
      if ([peripheral isLinkEncrypted])
      {
        hidDevice = [(HIDService *)self hidDevice];

        if (!hidDevice)
        {
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
          {
            sub_10007655C();
          }

          objectEnumerator = [(NSMapTable *)self->_reportInfoMap objectEnumerator];
          allObjects = [objectEnumerator allObjects];
          v16 = [HIDBluetoothDevice hidDeviceWithProperties:hidDeviceProperties reports:allObjects];
          [(HIDService *)self setHidDevice:v16];

          hidDevice2 = [(HIDService *)self hidDevice];

          if (hidDevice2)
          {
            hidDevice3 = [(HIDService *)self hidDevice];
            [hidDevice3 setService:self];

            peripheral2 = [(ClientService *)self peripheral];
            hidDevice4 = [(HIDService *)self hidDevice];
            [hidDevice4 setPeripheral:peripheral2];

            hidDevice5 = [(HIDService *)self hidDevice];
            desiredConnectionParameters = [hidDevice5 desiredConnectionParameters];

            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
            {
              sub_1000765D0();
            }

            manager = [(ClientService *)self manager];
            [manager clientService:self desiresConnectionParameters:desiredConnectionParameters];

            hidDevice6 = [(HIDService *)self hidDevice];
            [hidDevice6 start];
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
  hidDevice = [(HIDService *)self hidDevice];

  if (hidDevice)
  {
    reportInfoMap = self->_reportInfoMap;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000407E4;
    v6[3] = &unk_1000BDFE8;
    v6[4] = self;
    [(NSMapTable *)reportInfoMap enumerateKeysAndObjectsUsingBlock:v6];
    hidDevice2 = [(HIDService *)self hidDevice];
    [hidDevice2 stop];
  }
}

- (void)signalCommandCondition:(id)condition error:(id)error
{
  errorCopy = error;
  conditionCopy = condition;
  commandCondition = [conditionCopy commandCondition];
  [commandCondition lock];

  [conditionCopy setCommandPending:0];
  [conditionCopy setCommandError:errorCopy];

  commandCondition2 = [conditionCopy commandCondition];
  [commandCondition2 signal];

  commandCondition3 = [conditionCopy commandCondition];

  [commandCondition3 unlock];
}

- (BOOL)isPowerManagementBasedOnDisplayState
{
  peripheral = [(ClientService *)self peripheral];
  v3 = [peripheral hasTag:@"A2538"];

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

    systemMonitor = [(HIDService *)self systemMonitor];
    [systemMonitor setDispatchQueue:&_dispatch_main_q];

    objc_initWeak(buf, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100040B58;
    v9[3] = &unk_1000BD3C0;
    objc_copyWeak(&v10, buf);
    systemMonitor2 = [(HIDService *)self systemMonitor];
    [systemMonitor2 setScreenOnChangedHandler:v9];

    systemMonitor3 = [(HIDService *)self systemMonitor];
    [systemMonitor3 activateWithCompletion:0];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    [(HIDService *)self setPmService:IORegisterForSystemPower(self, &self->_pmNotificationPort, j__objc_msgSend_handlePowerManagementNotification_notificationID_, &self->_pmNotifier)];
    pmNotificationPort = [(HIDService *)self pmNotificationPort];

    IONotificationPortSetDispatchQueue(pmNotificationPort, &_dispatch_main_q);
  }
}

- (void)deregisterForPowerManagementEvents
{
  if ([(HIDService *)self isPowerManagementBasedOnDisplayState])
  {
    systemMonitor = [(HIDService *)self systemMonitor];
    [systemMonitor invalidate];

    [(HIDService *)self setSystemMonitor:0];
  }

  else if ([(HIDService *)self pmService])
  {
    IODeregisterForSystemPower(&self->_pmNotifier);
    IONotificationPortDestroy([(HIDService *)self pmNotificationPort]);
    pmService = [(HIDService *)self pmService];

    IOServiceClose(pmService);
  }
}

- (void)notifyDidStartIfEverythingReady
{
  hidDevice = [(HIDService *)self hidDevice];
  if ([hidDevice state] == 2)
  {
    allInputReportsReady = [(HIDService *)self allInputReportsReady];

    if (allInputReportsReady)
    {
      v4 = +[NSNotificationCenter defaultCenter];
      peripheral = [(ClientService *)self peripheral];
      [v4 postNotificationName:@"PeerIsUsingBuiltinServiceNotification" object:peripheral];

      [(ClientService *)self notifyDidStart];
    }
  }

  else
  {
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  if (!error)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = [service characteristics];
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
          reportMapCharacteristic = [(HIDService *)self reportMapCharacteristic];
          if (reportMapCharacteristic)
          {
          }

          else
          {
            uUID = [v13 UUID];
            v16 = [CBUUID UUIDWithString:v51];
            v17 = [uUID isEqual:v16];

            if (v17)
            {
              [(HIDService *)self setReportMapCharacteristic:v13];
              [peripheralCopy discoverDescriptorsForCharacteristic:v13];
LABEL_25:
              peripheral = [(ClientService *)self peripheral];
              if ([peripheral isLinkEncrypted])
              {
                value = [v13 value];

                if (value)
                {
                  goto LABEL_39;
                }
              }

              else
              {
              }

              [peripheralCopy readValueForCharacteristic:v13];
              goto LABEL_39;
            }
          }

          uUID2 = [v13 UUID];
          v19 = [CBUUID UUIDWithString:v11];
          v20 = [uUID2 isEqual:v19];

          if (v20)
          {
            ++self->_numReports;
            [peripheralCopy discoverDescriptorsForCharacteristic:v13];
            goto LABEL_39;
          }

          hidControlPointCharacteristic = [(HIDService *)self hidControlPointCharacteristic];
          if (hidControlPointCharacteristic)
          {
          }

          else
          {
            uUID3 = [v13 UUID];
            v23 = [CBUUID UUIDWithString:v49];
            v24 = [uUID3 isEqual:v23];

            if (v24)
            {
              [(HIDService *)self setHidControlPointCharacteristic:v13];
              [(HIDService *)self registerForPowerManagementEvents];
              goto LABEL_39;
            }
          }

          hidInformationCharacteristic = [(HIDService *)self hidInformationCharacteristic];
          if (hidInformationCharacteristic)
          {
          }

          else
          {
            uUID4 = [v13 UUID];
            v27 = [CBUUID UUIDWithString:v48];
            v28 = [uUID4 isEqual:v27];

            if (v28)
            {
              [(HIDService *)self setHidInformationCharacteristic:v13];
              goto LABEL_25;
            }
          }

          accessoryCategoryCharacteristic = [(HIDService *)self accessoryCategoryCharacteristic];
          if (accessoryCategoryCharacteristic)
          {
          }

          else
          {
            uUID5 = [v13 UUID];
            v31 = [CBUUID UUIDWithString:@"D31D8DEA-47DB-4796-A6B9-E38909CB34FF"];
            v32 = [uUID5 isEqual:v31];

            if (v32)
            {
              [(HIDService *)self setAccessoryCategoryCharacteristic:v13];
              goto LABEL_25;
            }
          }

          uUID6 = [v13 UUID];
          v36 = [CBUUID UUIDWithString:v50];
          v37 = [uUID6 isEqual:v36];

          if (v37)
          {
            v38 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Detected keyboard LE HID", buf, 2u);
            }

            v39 = peripheralCopy;
            v40 = @"IsLEKeyboard";
          }

          else
          {
            uUID7 = [v13 UUID];
            v42 = [CBUUID UUIDWithString:v47];
            v43 = [uUID7 isEqual:v42];

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

            v39 = peripheralCopy;
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

    reportMapCharacteristic2 = [(HIDService *)self reportMapCharacteristic];

    if (!reportMapCharacteristic2 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100076678();
    }

    if (!self->_numReports && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000766AC();
    }

    hidInformationCharacteristic2 = [(HIDService *)self hidInformationCharacteristic];

    if (!hidInformationCharacteristic2 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000766E0();
    }
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  errorCopy = error;
  v9 = [(NSMapTable *)self->_reportInfoMap objectForKey:characteristicCopy];
  v10 = v9;
  if (v9)
  {
    if ([v9 commandPending] == 1)
    {
      v11 = qword_1000DDBC8;
      if (errorCopy)
      {
        if (!os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
LABEL_17:
          [(HIDService *)self signalCommandCondition:v10 error:errorCopy];
          goto LABEL_30;
        }

        value2 = v11;
        v13 = -[HIDService reportTypeToString:](self, "reportTypeToString:", [v10 type]);
        v33 = 138412802;
        v34 = v13;
        v35 = 1024;
        v36 = [v10 ID];
        v37 = 2112;
        v38 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, value2, OS_LOG_TYPE_ERROR, "Error getting %@ report for ID #%u: %@", &v33, 0x1Cu);
      }

      else
      {
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
        {
          v25 = v11;
          v26 = -[HIDService reportTypeToString:](self, "reportTypeToString:", [v10 type]);
          v27 = [v10 ID];
          value = [characteristicCopy value];
          v33 = 138412802;
          v34 = v26;
          v35 = 1024;
          v36 = v27;
          v37 = 2112;
          v38 = value;
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Did get %@ report for ID #%u: %@", &v33, 0x1Cu);
        }

        value2 = [characteristicCopy value];
        [v10 setCommandValue:value2];
      }

      goto LABEL_17;
    }

    if (errorCopy)
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
        v38 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error updating %@ report for ID #%u: %@", &v33, 0x1Cu);
      }
    }

    else
    {
      valueTimestamp = [characteristicCopy valueTimestamp];
      if (!valueTimestamp)
      {
        valueTimestamp = mach_absolute_time();
      }

      v22 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
      {
        v29 = v22;
        v30 = -[HIDService reportTypeToString:](self, "reportTypeToString:", [v10 type]);
        v31 = [v10 ID];
        value3 = [characteristicCopy value];
        v33 = 138412802;
        v34 = v30;
        v35 = 1024;
        v36 = v31;
        v37 = 2112;
        v38 = value3;
        _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Updated %@ report for ID #%u: %@", &v33, 0x1Cu);
      }

      if (byte_1000DDBC0 == 1)
      {
        kdebug_trace();
      }

      hidDevice = [(HIDService *)self hidDevice];
      value4 = [characteristicCopy value];
      [hidDevice handleInputReportData:value4 reportID:objc_msgSend(v10 timestamp:{"ID"), valueTimestamp}];
    }
  }

  else
  {
    reportMapCharacteristic = [(HIDService *)self reportMapCharacteristic];
    if (reportMapCharacteristic == characteristicCopy)
    {
      v17 = 0;
    }

    else
    {
      hidInformationCharacteristic = [(HIDService *)self hidInformationCharacteristic];
      if (hidInformationCharacteristic == characteristicCopy)
      {
        v17 = 0;
      }

      else
      {
        accessoryCategoryCharacteristic = [(HIDService *)self accessoryCategoryCharacteristic];
        v17 = accessoryCategoryCharacteristic != characteristicCopy;
      }
    }

    if (!errorCopy && !v17)
    {
      [(HIDService *)self createHIDDeviceIfEverythingReady];
    }
  }

LABEL_30:
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  errorCopy = error;
  v8 = [(NSMapTable *)self->_reportInfoMap objectForKey:characteristic];
  v9 = v8;
  if (v8 && [v8 commandPending] == 2)
  {
    v10 = qword_1000DDBC8;
    if (errorCopy)
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
        v18 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error setting %@ report for ID #%u: %@", &v13, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_100076714(v10, v9, self);
    }

    [(HIDService *)self signalCommandCondition:v9 error:errorCopy];
  }
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  errorCopy = error;
  v8 = [(NSMapTable *)self->_reportInfoMap objectForKey:characteristic];
  if (v8)
  {
    v9 = qword_1000DDBC8;
    if (errorCopy)
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
        v18 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error starting notifications on %@ report for ID #%u: %@", &v13, 0x1Cu);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000767C8(v9, v8, self);
      }

      hidDevice = [(HIDService *)self hidDevice];

      if (!hidDevice)
      {
        [(HIDService *)self createHIDDeviceIfEverythingReady];
      }

      [(HIDService *)self notifyDidStartIfEverythingReady];
    }
  }
}

- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  v8 = characteristicCopy;
  if (error)
  {
    goto LABEL_22;
  }

  uUID = [characteristicCopy UUID];
  v10 = [CBUUID UUIDWithString:CBUUIDReportCharacteristicString];
  v11 = [uUID isEqual:v10];

  if (!v11)
  {
    goto LABEL_22;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  descriptors = [v8 descriptors];
  v13 = [descriptors countByEnumeratingWithState:&v28 objects:v32 count:16];
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
        objc_enumerationMutation(descriptors);
      }

      v19 = *(*(&v28 + 1) + 8 * i);
      uUID2 = [v19 UUID];
      v21 = [CBUUID UUIDWithString:v17];
      v22 = [uUID2 isEqual:v21];

      if (v22)
      {
        peripheral = [(ClientService *)self peripheral];
        if ([peripheral isLinkEncrypted])
        {
          value = [v19 value];

          if (value)
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

        [peripheralCopy readValueForDescriptor:v19];
        goto LABEL_14;
      }
    }

    v14 = [descriptors countByEnumeratingWithState:&v28 objects:v32 count:16];
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

- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error
{
  descriptorCopy = descriptor;
  if (!error)
  {
    v11 = descriptorCopy;
    uUID = [descriptorCopy UUID];
    v9 = [CBUUID UUIDWithString:CBUUIDReportReferenceDescriptorString];
    v10 = [uUID isEqual:v9];

    descriptorCopy = v11;
    if (v10)
    {
      [(HIDService *)self createReportInfo:v11];
      descriptorCopy = v11;
    }
  }
}

- (void)hidDeviceDesiredConnectionParametersDidChange
{
  hidDevice = [(HIDService *)self hidDevice];
  desiredConnectionParameters = [hidDevice desiredConnectionParameters];

  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000768B0();
  }

  manager = [(ClientService *)self manager];
  [manager clientService:self desiresConnectionParameters:desiredConnectionParameters];
}

- (void)enterSuspendModeIfNeeded:(int64_t)needed
{
  if ([(HIDService *)self pmIsSuspended])
  {
    pmService = [(HIDService *)self pmService];

    IOAllowPowerChange(pmService, needed);
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
    v7[5] = needed;
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

- (void)writeControlPointCommand:(unsigned __int8)command
{
  commandCopy = command;
  v4 = [NSData dataWithBytes:&commandCopy length:1];
  peripheral = [(ClientService *)self peripheral];
  hidControlPointCharacteristic = [(HIDService *)self hidControlPointCharacteristic];
  [peripheral writeValue:v4 forCharacteristic:hidControlPointCharacteristic type:1];
}

- (void)authDidSucceedNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"AuthenticationServiceCertClassUserInfoKey"];

  userInfo2 = [notificationCopy userInfo];

  v7 = [userInfo2 objectForKeyedSubscript:@"AuthenticationServiceAuthVersionKey"];

  if ([v7 intValue] <= 2 && (!v10 || objc_msgSend(v10, "unsignedIntValue")))
  {
    v8 = +[NSNotificationCenter defaultCenter];
    peripheral = [(ClientService *)self peripheral];
    [v8 postNotificationName:@"AuthenticationServiceAuthDidFailNotification" object:peripheral];
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

- (id)reportTypeToString:(int)string
{
  if (string > 2)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1000BE080 + string);
  }
}

@end