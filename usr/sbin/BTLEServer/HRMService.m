@interface HRMService
- (BOOL)supportsHKQuantityType:(id)a3;
- (HRMService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5;
- (id)hidDeviceProperties;
- (void)deviceInformation:(id)a3 readCompleteForDeviceUUID:(id)a4;
- (void)didUpdateBodySensorLocation:(id)a3;
- (void)didUpdateHeartRateMeasurement:(id)a3;
- (void)hidDeviceDidStart;
- (void)hidDeviceDidStop;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)refreshUpdateHealthEnabledStatus;
- (void)setupHIDBluetoothDevice;
- (void)start;
- (void)stop;
@end

@implementation HRMService

- (HRMService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5
{
  v19.receiver = self;
  v19.super_class = HRMService;
  v5 = [(FitnessService *)&v19 initWithManager:a3 peripheral:a4 service:a5];
  v6 = [(ClientService *)v5 peripheral];
  -[HRMService set_isFitnessClassicDevice:](v5, "set_isFitnessClassicDevice:", [v6 hasTag:@"FitnessClassic"]);

  v7 = [(ClientService *)v5 peripheral];
  v8 = [v7 customProperty:@"UpdateHealth"];
  -[HRMService set_updateHealthEnabled:](v5, "set_updateHealthEnabled:", [v8 isEqualToString:@"1"]);

  v9 = [(ClientService *)v5 peripheral];
  -[HRMService setShouldBlockCATTHRM:](v5, "setShouldBlockCATTHRM:", [v9 hasTag:@"BlockCATTHRM"]);

  v10 = +[FitnessDeviceManager instance];
  if (([v10 workoutInSession]& 1) != 0)
  {
    goto LABEL_2;
  }

  v11 = [(HRMService *)v5 _isFitnessClassicDevice];

  if ((v11 & 1) == 0)
  {
    v12 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
    v24 = v12;
    v13 = [NSArray arrayWithObjects:&v24 count:1];
    [(HRMService *)v5 set_alwaysCollectQuantityTypes:v13];

    v14 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v14;
      v15 = [(HRMService *)v5 _alwaysCollectQuantityTypes];
      v16 = [(ClientService *)v5 peripheral];
      v17 = [v16 name];
      *buf = 138412546;
      v21 = v15;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Always collect quantity types: %@ for peripheral %@", buf, 0x16u);

LABEL_2:
    }
  }

  return v5;
}

- (void)refreshUpdateHealthEnabledStatus
{
  v3 = [(ClientService *)self peripheral];
  v4 = [v3 customProperty:@"UpdateHealth"];
  -[HRMService set_updateHealthEnabled:](self, "set_updateHealthEnabled:", [v4 isEqualToString:@"1"]);

  if (![(HRMService *)self _isFitnessClassicDevice])
  {
    v5 = [(HRMService *)self _alwaysCollectQuantityTypes];
    v6 = [v5 count];

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

    v4 = [(HRMService *)self hidBluetoothDevice];

    if (v4)
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
    v8 = [(ClientService *)self peripheral];
    v9 = [v8 identifier];
    v10 = [v9 UUIDString];
    v31[4] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:5];
    v12 = [v11 mutableCopy];

    v13 = [(HRMService *)self alwaysCollectQuantityTypes];
    v14 = [v13 firstObject];

    if (v14)
    {
      [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"kBTHRMManualConnectionKey"];
    }

    v15 = [(ClientService *)self peripheral];
    v16 = [v15 name];

    if (v16)
    {
      v17 = [(ClientService *)self peripheral];
      v18 = [v17 name];
      [v12 setObject:v18 forKeyedSubscript:@"Product"];
    }

    v19 = [(HRMService *)self hidDeviceProperties];
    [v12 addEntriesFromDictionary:v19];

    v20 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "HRMService HID Device created with properties:%@", &v28, 0xCu);
    }

    v21 = [(HIDBluetoothDevice *)HIDSingleReportDevice hidDeviceWithProperties:v12 reports:&__NSArray0__struct];
    [(HRMService *)self setHidBluetoothDevice:v21];

    v22 = [(HRMService *)self hidBluetoothDevice];
    [v22 setService:self];

    v23 = [(HRMService *)self hidBluetoothDevice];
    if (v23)
    {
      v24 = v23;
      v25 = [(HRMService *)self hidBluetoothDevice];
      v26 = [v25 state];

      if (!v26)
      {
        v27 = [(HRMService *)self hidBluetoothDevice];
        [v27 start];
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

    v7 = [(ClientService *)self peripheral];
    v8 = [(ClientService *)self service];
    [v7 discoverCharacteristics:v6 forService:v8];

    v9 = [(ClientService *)self peripheral];
    v10 = [v9 customProperty:@"UpdateHealth"];
    -[HRMService set_updateHealthEnabled:](self, "set_updateHealthEnabled:", [v10 isEqualToString:@"1"]);

    if (-[HRMService _isFitnessClassicDevice](self, "_isFitnessClassicDevice") || (-[HRMService _alwaysCollectQuantityTypes](self, "_alwaysCollectQuantityTypes"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 count], v11, !v12))
    {
      if (_os_feature_enabled_impl())
      {
        v13 = [(HRMService *)self hidBluetoothDevice];
        if (v13)
        {
          v14 = v13;
          v15 = [(HRMService *)self hidBluetoothDevice];
          v16 = [v15 state];

          if (!v16)
          {
            v17 = [(HRMService *)self hidBluetoothDevice];
            [v17 start];
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

    v4 = [(HRMService *)self hidBluetoothDevice];
    if (v4)
    {
      v5 = v4;
      v6 = [(HRMService *)self hidBluetoothDevice];
      if ([v6 state])
      {
        v7 = [(HRMService *)self hidBluetoothDevice];
        v8 = [v7 state];

        if (v8 <= 2)
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

- (BOOL)supportsHKQuantityType:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(HRMService *)self hkQuantityType];
  v6 = [v5 identifier];
  v7 = [v4 isEqualToString:v6];

  return v7;
}

- (void)deviceInformation:(id)a3 readCompleteForDeviceUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_25;
  }

  v27.receiver = self;
  v27.super_class = HRMService;
  [(FitnessService *)&v27 deviceInformation:v6 readCompleteForDeviceUUID:v7];
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(HRMService *)self hidDeviceProperties];
    *buf = 138412290;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DeviceInfo received: %@", buf, 0xCu);
  }

  v11 = [(ClientService *)self peripheral];
  v12 = [v11 identifier];
  v13 = [v12 UUIDString];
  v14 = [v7 isEqualToString:v13];

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
      v17 = [(ClientService *)self peripheral];
      *buf = 138412290;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Blocking GATT HR path for %@", buf, 0xCu);
    }

    [(HRMService *)self stop];
    goto LABEL_25;
  }

  v18 = [v6 firmwareRevision];
  v19 = [v18 componentsSeparatedByString:@"."];
  v20 = [v19 firstObject];
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100076CA8();
    if (v20)
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

  if (!v20)
  {
    goto LABEL_21;
  }

LABEL_14:
  v21 = [v20 integerValue];
  v22 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG);
  if (v21 < 80)
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

  v23 = [(ClientService *)self peripheral];
  [v23 setCustomProperty:@"Fitness" value:0];

  v24 = [(ClientService *)self peripheral];
  [v24 setCustomProperty:@"UpdateHealth" value:0];

  v25 = [(ClientService *)self peripheral];
  [v25 untag:HKQuantityTypeIdentifierHeartRate];

  v26 = [(ClientService *)self peripheral];
  [v26 tag:@"BlockCATTHRM"];

  [(HRMService *)self setShouldBlockCATTHRM:1];
  [(HRMService *)self stop];

LABEL_25:
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v30 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100076E40(v10, v8, v9);
    }

    goto LABEL_27;
  }

  v29 = v8;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = [v8 characteristics];
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        v18 = [(HRMService *)self heartRateMeasurementCharacteristic];
        if (v18)
        {
        }

        else
        {
          v19 = [v17 UUID];
          v20 = [CBUUID UUIDWithString:v15];
          v21 = [v19 isEqual:v20];

          if (v21)
          {
            [(HRMService *)self setHeartRateMeasurementCharacteristic:v17];
            continue;
          }
        }

        v22 = [(HRMService *)self bodySensorLocationCharacteristic];
        if (v22)
        {
        }

        else
        {
          v23 = [v17 UUID];
          v24 = [CBUUID UUIDWithString:v31];
          v25 = [v23 isEqual:v24];

          if (v25)
          {
            [(HRMService *)self setBodySensorLocationCharacteristic:v17];
            if (([v17 properties] & 2) != 0)
            {
              [v30 readValueForCharacteristic:v17];
            }
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v13);
  }

  v26 = [(HRMService *)self heartRateMeasurementCharacteristic];

  if (!v26 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100076F04();
  }

  v27 = [(HRMService *)self bodySensorLocationCharacteristic];

  if (!v27 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100076F38();
  }

  [(ClientService *)self notifyDidStart];
  v28 = +[FitnessDeviceManager instance];
  [v28 registerFitnessService:self];

  v9 = 0;
  v8 = v29;
LABEL_27:
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v12 = [(HRMService *)self heartRateMeasurementCharacteristic];
    v13 = v12;
    if (v12 == v9)
    {
      v18 = [(HRMService *)self heartRateMeasurementCharacteristic];
      v19 = [v18 value];

      if (v19)
      {
        v14 = [(HRMService *)self heartRateMeasurementCharacteristic];
        v17 = [v14 value];
        [(HRMService *)self didUpdateHeartRateMeasurement:v17];
        goto LABEL_11;
      }
    }

    else
    {
    }

    v14 = [(HRMService *)self bodySensorLocationCharacteristic];
    if (v14 != v9)
    {
LABEL_12:

      goto LABEL_13;
    }

    v15 = [(HRMService *)self bodySensorLocationCharacteristic];
    v16 = [v15 value];

    if (!v16)
    {
      goto LABEL_13;
    }

    v14 = [(HRMService *)self bodySensorLocationCharacteristic];
    v17 = [v14 value];
    [(HRMService *)self didUpdateBodySensorLocation:v17];
LABEL_11:

    goto LABEL_12;
  }

  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100076F6C(v11, v9, v10);
  }

LABEL_13:
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100077030(v10, v8, v9);
    }
  }
}

- (void)didUpdateHeartRateMeasurement:(id)a3
{
  v4 = a3;
  if ([v4 length] > 1)
  {
    v6 = +[NSDate now];
    v16 = 0;
    [v4 getBytes:&v16 length:1];
    v15 = 0;
    if (v16)
    {
      [v4 getBytes:&v15 range:{1, 2}];
    }

    else
    {
      v15 = *([v4 bytes] + 1);
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
          v8 = [NSData dataWithBytes:&v13 length:1];
          v9 = [(HRMService *)self hidBluetoothDevice];
          [v9 handleInputReportData:v8 reportID:1 timestamp:mach_absolute_time()];
        }

        else
        {
          LOWORD(v7) = v15;
          v11 = v7;
          v12 = [(HRMService *)self hkQuantityType];
          [(FitnessService *)self recordDatum:v6 start:v6 end:v12 quantityType:v11];

          v8 = [(HRMService *)self hkQuantityType];
          [(FitnessService *)self storeDatumsForQuantityType:v8];
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
      sub_10007716C(v5, v4);
    }
  }
}

- (void)didUpdateBodySensorLocation:(id)a3
{
  v4 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [a3 debugDescription];
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