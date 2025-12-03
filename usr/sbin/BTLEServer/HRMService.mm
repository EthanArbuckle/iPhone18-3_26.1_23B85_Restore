@interface HRMService
- (BOOL)supportsHKQuantityType:(id)type;
- (HRMService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service;
- (id)hidDeviceProperties;
- (void)deviceInformation:(id)information readCompleteForDeviceUUID:(id)d;
- (void)didUpdateBodySensorLocation:(id)location;
- (void)didUpdateHeartRateMeasurement:(id)measurement;
- (void)hidDeviceDidStart;
- (void)hidDeviceDidStop;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)refreshUpdateHealthEnabledStatus;
- (void)setupHIDBluetoothDevice;
- (void)start;
- (void)stop;
@end

@implementation HRMService

- (HRMService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service
{
  v19.receiver = self;
  v19.super_class = HRMService;
  v5 = [(FitnessService *)&v19 initWithManager:manager peripheral:peripheral service:service];
  peripheral = [(ClientService *)v5 peripheral];
  -[HRMService set_isFitnessClassicDevice:](v5, "set_isFitnessClassicDevice:", [peripheral hasTag:@"FitnessClassic"]);

  peripheral2 = [(ClientService *)v5 peripheral];
  v8 = [peripheral2 customProperty:@"UpdateHealth"];
  -[HRMService set_updateHealthEnabled:](v5, "set_updateHealthEnabled:", [v8 isEqualToString:@"1"]);

  peripheral3 = [(ClientService *)v5 peripheral];
  -[HRMService setShouldBlockCATTHRM:](v5, "setShouldBlockCATTHRM:", [peripheral3 hasTag:@"BlockCATTHRM"]);

  v10 = +[FitnessDeviceManager instance];
  if (([v10 workoutInSession]& 1) != 0)
  {
    goto LABEL_2;
  }

  _isFitnessClassicDevice = [(HRMService *)v5 _isFitnessClassicDevice];

  if ((_isFitnessClassicDevice & 1) == 0)
  {
    v12 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
    v24 = v12;
    v13 = [NSArray arrayWithObjects:&v24 count:1];
    [(HRMService *)v5 set_alwaysCollectQuantityTypes:v13];

    v14 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v14;
      _alwaysCollectQuantityTypes = [(HRMService *)v5 _alwaysCollectQuantityTypes];
      peripheral4 = [(ClientService *)v5 peripheral];
      name = [peripheral4 name];
      *buf = 138412546;
      v21 = _alwaysCollectQuantityTypes;
      v22 = 2112;
      v23 = name;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Always collect quantity types: %@ for peripheral %@", buf, 0x16u);

LABEL_2:
    }
  }

  return v5;
}

- (void)refreshUpdateHealthEnabledStatus
{
  peripheral = [(ClientService *)self peripheral];
  v4 = [peripheral customProperty:@"UpdateHealth"];
  -[HRMService set_updateHealthEnabled:](self, "set_updateHealthEnabled:", [v4 isEqualToString:@"1"]);

  if (![(HRMService *)self _isFitnessClassicDevice])
  {
    _alwaysCollectQuantityTypes = [(HRMService *)self _alwaysCollectQuantityTypes];
    v6 = [_alwaysCollectQuantityTypes count];

    if (v6)
    {
      if ([(HRMService *)self _updateHealthEnabled])
      {
        if (_os_feature_enabled_impl())
        {
          v7 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
          {
            *v9 = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "HRMService refreshUpdateHealthEnabledStatus: starting HRM", v9, 2u);
          }

          [(HRMService *)self start];
        }
      }

      else
      {
        v8 = objc_opt_new();
        [(HRMService *)self set_alwaysCollectQuantityTypes:v8];

        [(HRMService *)self stop];
      }
    }
  }
}

- (id)hidDeviceProperties
{
  v3 = objc_opt_new();
  if (_os_feature_enabled_impl())
  {
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
  }

  v26 = [v3 copy];

  return v26;
}

- (void)setupHIDBluetoothDevice
{
  if (_os_feature_enabled_impl())
  {
    v3 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up HRMService HID device", &v28, 2u);
    }

    if (![(HRMService *)self updateHealthEnabled])
    {
      v5 = qword_1000DDBC8;
      if (!os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(v28) = 0;
      v6 = "Cannot set up HRMService HID device: Update health disabled";
      goto LABEL_10;
    }

    hidBluetoothDevice = [(HRMService *)self hidBluetoothDevice];

    if (hidBluetoothDevice)
    {
      v5 = qword_1000DDBC8;
      if (!os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(v28) = 0;
      v6 = "HRMService HID device already exists";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, &v28, 2u);
      return;
    }

    v7 = [NSData dataWithBytes:&unk_1000DD620 length:36];
    v30[0] = @"ReportDescriptor";
    v30[1] = @"Transport";
    v31[0] = v7;
    v31[1] = @"BluetoothLowEnergy";
    v30[2] = @"HIDServiceAccessEntitlement";
    v30[3] = @"HIDDeviceAccessEntitlement";
    v31[2] = @"com.apple.hid.heartrate-access";
    v31[3] = @"com.apple.hid.heartrate-access";
    v30[4] = @"PhysicalDeviceUniqueID";
    peripheral = [(ClientService *)self peripheral];
    identifier = [peripheral identifier];
    uUIDString = [identifier UUIDString];
    v31[4] = uUIDString;
    v11 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:5];
    v12 = [v11 mutableCopy];

    alwaysCollectQuantityTypes = [(HRMService *)self alwaysCollectQuantityTypes];
    firstObject = [alwaysCollectQuantityTypes firstObject];

    if (firstObject)
    {
      [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"kBTHRMManualConnectionKey"];
    }

    peripheral2 = [(ClientService *)self peripheral];
    name = [peripheral2 name];

    if (name)
    {
      peripheral3 = [(ClientService *)self peripheral];
      name2 = [peripheral3 name];
      [v12 setObject:name2 forKeyedSubscript:@"Product"];
    }

    hidDeviceProperties = [(HRMService *)self hidDeviceProperties];
    [v12 addEntriesFromDictionary:hidDeviceProperties];

    v20 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "HRMService HID Device created with properties:%@", &v28, 0xCu);
    }

    v21 = [(HIDBluetoothDevice *)HIDSingleReportDevice hidDeviceWithProperties:v12 reports:&__NSArray0__struct];
    [(HRMService *)self setHidBluetoothDevice:v21];

    hidBluetoothDevice2 = [(HRMService *)self hidBluetoothDevice];
    [hidBluetoothDevice2 setService:self];

    hidBluetoothDevice3 = [(HRMService *)self hidBluetoothDevice];
    if (hidBluetoothDevice3)
    {
      v24 = hidBluetoothDevice3;
      hidBluetoothDevice4 = [(HRMService *)self hidBluetoothDevice];
      state = [hidBluetoothDevice4 state];

      if (!state)
      {
        hidBluetoothDevice5 = [(HRMService *)self hidBluetoothDevice];
        [hidBluetoothDevice5 start];
      }
    }
  }
}

- (void)start
{
  v18.receiver = self;
  v18.super_class = HRMService;
  [(FitnessService *)&v18 start];
  if (_os_feature_enabled_impl())
  {
    v3 = [FitnessService hkQuantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
    [(HRMService *)self setHkQuantityType:v3];

    v4 = [CBUUID UUIDWithString:CBUUIDHeartRateMeasurementCharacteristicString];
    v19[0] = v4;
    v5 = [CBUUID UUIDWithString:CBUUIDBodySensorLocationCharacteristicString];
    v19[1] = v5;
    v6 = [NSArray arrayWithObjects:v19 count:2];

    peripheral = [(ClientService *)self peripheral];
    service = [(ClientService *)self service];
    [peripheral discoverCharacteristics:v6 forService:service];

    peripheral2 = [(ClientService *)self peripheral];
    v10 = [peripheral2 customProperty:@"UpdateHealth"];
    -[HRMService set_updateHealthEnabled:](self, "set_updateHealthEnabled:", [v10 isEqualToString:@"1"]);

    if (-[HRMService _isFitnessClassicDevice](self, "_isFitnessClassicDevice") || (-[HRMService _alwaysCollectQuantityTypes](self, "_alwaysCollectQuantityTypes"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 count], v11, !v12))
    {
      if (_os_feature_enabled_impl())
      {
        hidBluetoothDevice = [(HRMService *)self hidBluetoothDevice];
        if (hidBluetoothDevice)
        {
          v14 = hidBluetoothDevice;
          hidBluetoothDevice2 = [(HRMService *)self hidBluetoothDevice];
          state = [hidBluetoothDevice2 state];

          if (!state)
          {
            hidBluetoothDevice3 = [(HRMService *)self hidBluetoothDevice];
            [hidBluetoothDevice3 start];
          }
        }
      }
    }

    else if (![(HRMService *)self _updateHealthEnabled])
    {
      [(HRMService *)self set_alwaysCollectQuantityTypes:&__NSArray0__struct];
      [(HRMService *)self stop];
    }
  }
}

- (void)stop
{
  v11.receiver = self;
  v11.super_class = HRMService;
  [(FitnessService *)&v11 stop];
  if (_os_feature_enabled_impl())
  {
    v3 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HRMService stopping HID", buf, 2u);
    }

    hidBluetoothDevice = [(HRMService *)self hidBluetoothDevice];
    if (hidBluetoothDevice)
    {
      v5 = hidBluetoothDevice;
      hidBluetoothDevice2 = [(HRMService *)self hidBluetoothDevice];
      if ([hidBluetoothDevice2 state])
      {
        hidBluetoothDevice3 = [(HRMService *)self hidBluetoothDevice];
        state = [hidBluetoothDevice3 state];

        if (state <= 2)
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000464B0;
          block[3] = &unk_1000BD398;
          block[4] = self;
          dispatch_async(&_dispatch_main_q, block);
        }
      }

      else
      {
      }
    }

    [(HRMService *)self collectData:0];
  }
}

- (BOOL)supportsHKQuantityType:(id)type
{
  identifier = [type identifier];
  hkQuantityType = [(HRMService *)self hkQuantityType];
  identifier2 = [hkQuantityType identifier];
  v7 = [identifier isEqualToString:identifier2];

  return v7;
}

- (void)deviceInformation:(id)information readCompleteForDeviceUUID:(id)d
{
  informationCopy = information;
  dCopy = d;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_25;
  }

  v27.receiver = self;
  v27.super_class = HRMService;
  [(FitnessService *)&v27 deviceInformation:informationCopy readCompleteForDeviceUUID:dCopy];
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    hidDeviceProperties = [(HRMService *)self hidDeviceProperties];
    *buf = 138412290;
    v29 = hidDeviceProperties;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DeviceInfo received: %@", buf, 0xCu);
  }

  peripheral = [(ClientService *)self peripheral];
  identifier = [peripheral identifier];
  uUIDString = [identifier UUIDString];
  v14 = [dCopy isEqualToString:uUIDString];

  if (!v14)
  {
    goto LABEL_25;
  }

  if (![(HRMService *)self _isFitnessClassicDevice])
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_100076C6C();
    }

    goto LABEL_24;
  }

  if ([(HRMService *)self shouldBlockCATTHRM])
  {
    v15 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      peripheral2 = [(ClientService *)self peripheral];
      *buf = 138412290;
      v29 = peripheral2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Blocking GATT HR path for %@", buf, 0xCu);
    }

    [(HRMService *)self stop];
    goto LABEL_25;
  }

  firmwareRevision = [informationCopy firmwareRevision];
  v19 = [firmwareRevision componentsSeparatedByString:@"."];
  firstObject = [v19 firstObject];
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100076CA8();
    if (firstObject)
    {
      goto LABEL_14;
    }

LABEL_21:
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100076E0C();
    }

    goto LABEL_23;
  }

  if (!firstObject)
  {
    goto LABEL_21;
  }

LABEL_14:
  integerValue = [firstObject integerValue];
  v22 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG);
  if (integerValue < 80)
  {
    if (v22)
    {
      sub_100076D9C();
    }

LABEL_23:

LABEL_24:
    [(HRMService *)self setupHIDBluetoothDevice];
    goto LABEL_25;
  }

  if (v22)
  {
    sub_100076D2C();
  }

  peripheral3 = [(ClientService *)self peripheral];
  [peripheral3 setCustomProperty:@"Fitness" value:0];

  peripheral4 = [(ClientService *)self peripheral];
  [peripheral4 setCustomProperty:@"UpdateHealth" value:0];

  peripheral5 = [(ClientService *)self peripheral];
  [peripheral5 untag:HKQuantityTypeIdentifierHeartRate];

  peripheral6 = [(ClientService *)self peripheral];
  [peripheral6 tag:@"BlockCATTHRM"];

  [(HRMService *)self setShouldBlockCATTHRM:1];
  [(HRMService *)self stop];

LABEL_25:
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  if (errorCopy)
  {
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100076E40(v10, serviceCopy, errorCopy);
    }

    goto LABEL_27;
  }

  v29 = serviceCopy;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  characteristics = [serviceCopy characteristics];
  v12 = [characteristics countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    v15 = CBUUIDHeartRateMeasurementCharacteristicString;
    v31 = CBUUIDBodySensorLocationCharacteristicString;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(characteristics);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        heartRateMeasurementCharacteristic = [(HRMService *)self heartRateMeasurementCharacteristic];
        if (heartRateMeasurementCharacteristic)
        {
        }

        else
        {
          uUID = [v17 UUID];
          v20 = [CBUUID UUIDWithString:v15];
          v21 = [uUID isEqual:v20];

          if (v21)
          {
            [(HRMService *)self setHeartRateMeasurementCharacteristic:v17];
            continue;
          }
        }

        bodySensorLocationCharacteristic = [(HRMService *)self bodySensorLocationCharacteristic];
        if (bodySensorLocationCharacteristic)
        {
        }

        else
        {
          uUID2 = [v17 UUID];
          v24 = [CBUUID UUIDWithString:v31];
          v25 = [uUID2 isEqual:v24];

          if (v25)
          {
            [(HRMService *)self setBodySensorLocationCharacteristic:v17];
            if (([v17 properties] & 2) != 0)
            {
              [peripheralCopy readValueForCharacteristic:v17];
            }
          }
        }
      }

      v13 = [characteristics countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v13);
  }

  heartRateMeasurementCharacteristic2 = [(HRMService *)self heartRateMeasurementCharacteristic];

  if (!heartRateMeasurementCharacteristic2 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100076F04();
  }

  bodySensorLocationCharacteristic2 = [(HRMService *)self bodySensorLocationCharacteristic];

  if (!bodySensorLocationCharacteristic2 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100076F38();
  }

  [(ClientService *)self notifyDidStart];
  v28 = +[FitnessDeviceManager instance];
  [v28 registerFitnessService:self];

  errorCopy = 0;
  serviceCopy = v29;
LABEL_27:
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (!errorCopy)
  {
    heartRateMeasurementCharacteristic = [(HRMService *)self heartRateMeasurementCharacteristic];
    v13 = heartRateMeasurementCharacteristic;
    if (heartRateMeasurementCharacteristic == characteristicCopy)
    {
      heartRateMeasurementCharacteristic2 = [(HRMService *)self heartRateMeasurementCharacteristic];
      value = [heartRateMeasurementCharacteristic2 value];

      if (value)
      {
        heartRateMeasurementCharacteristic3 = [(HRMService *)self heartRateMeasurementCharacteristic];
        value2 = [heartRateMeasurementCharacteristic3 value];
        [(HRMService *)self didUpdateHeartRateMeasurement:value2];
        goto LABEL_11;
      }
    }

    else
    {
    }

    heartRateMeasurementCharacteristic3 = [(HRMService *)self bodySensorLocationCharacteristic];
    if (heartRateMeasurementCharacteristic3 != characteristicCopy)
    {
LABEL_12:

      goto LABEL_13;
    }

    bodySensorLocationCharacteristic = [(HRMService *)self bodySensorLocationCharacteristic];
    value3 = [bodySensorLocationCharacteristic value];

    if (!value3)
    {
      goto LABEL_13;
    }

    heartRateMeasurementCharacteristic3 = [(HRMService *)self bodySensorLocationCharacteristic];
    value2 = [heartRateMeasurementCharacteristic3 value];
    [(HRMService *)self didUpdateBodySensorLocation:value2];
LABEL_11:

    goto LABEL_12;
  }

  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100076F6C(v11, characteristicCopy, errorCopy);
  }

LABEL_13:
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (errorCopy)
  {
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100077030(v10, characteristicCopy, errorCopy);
    }
  }
}

- (void)didUpdateHeartRateMeasurement:(id)measurement
{
  measurementCopy = measurement;
  if ([measurementCopy length] > 1)
  {
    v6 = +[NSDate now];
    v16 = 0;
    [measurementCopy getBytes:&v16 length:1];
    v15 = 0;
    if (v16)
    {
      [measurementCopy getBytes:&v15 range:{1, 2}];
    }

    else
    {
      v15 = *([measurementCopy bytes] + 1);
    }

    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000770F4(&v15);
    }

    if (v15)
    {
      if ([(HRMService *)self _updateHealthEnabled])
      {
        if (_os_feature_enabled_impl())
        {
          v13 = v15;
          hkQuantityType2 = [NSData dataWithBytes:&v13 length:1];
          hidBluetoothDevice = [(HRMService *)self hidBluetoothDevice];
          [hidBluetoothDevice handleInputReportData:hkQuantityType2 reportID:1 timestamp:mach_absolute_time()];
        }

        else
        {
          LOWORD(v7) = v15;
          v11 = v7;
          hkQuantityType = [(HRMService *)self hkQuantityType];
          [(FitnessService *)self recordDatum:v6 start:v6 end:hkQuantityType quantityType:v11];

          hkQuantityType2 = [(HRMService *)self hkQuantityType];
          [(FitnessService *)self storeDatumsForQuantityType:hkQuantityType2];
        }
      }
    }

    else
    {
      v10 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ignoring invalid HR value", buf, 2u);
      }
    }
  }

  else
  {
    v5 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007716C(v5, measurementCopy);
    }
  }
}

- (void)didUpdateBodySensorLocation:(id)location
{
  v4 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [location debugDescription];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HRM Service: Updated body sensor location: %@", &v7, 0xCu);
  }
}

- (void)hidDeviceDidStart
{
  v2 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HRMService HID device did start", v3, 2u);
  }
}

- (void)hidDeviceDidStop
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HRMService HID device did stop", v4, 2u);
  }

  [(HRMService *)self setHidBluetoothDevice:0];
  [(HRMService *)self stop];
}

@end