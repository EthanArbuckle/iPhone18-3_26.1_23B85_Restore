@interface CyclingPowerService
- (BOOL)matchesDistributedService:(id)service;
- (BOOL)supportsHKQuantityType:(id)type;
- (double)powerBalanceForValue:(double)value otherService:(id)service otherValue:(double)otherValue;
- (id)getDeviceInformationService;
- (id)originatingHKDevice;
- (id)sensorLocationSideString;
- (id)sensorLocationString;
- (id)updateComboString:(id)string withValue:(id)value;
- (void)createDistributedHKDeviceWithSecondary:(id)secondary;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)readWheelSize;
- (void)receiveDeviceInfoUpdateNotification:(id)notification;
- (void)start;
- (void)updateForSensorLocation;
- (void)updatedCadenceMeasurementValueForRevolutions:(unsigned __int16)revolutions andCrankEventTime:(unsigned __int16)time timeStamp:(id)stamp;
- (void)updatedFeatureCharacteristicValue;
- (void)updatedMeasurementCharacteristicValue:(id)value at:(id)at;
- (void)updatedPowerMeasurementValue:(id *)value timeStamp:(id)stamp;
- (void)updatedSensorLocationCharacteristicValue;
- (void)updatedSpeedMeasurementValueForRevolutions:(unsigned int)revolutions andWheelEventTime:(unsigned __int16)time timeStamp:(id)stamp;
- (void)updatedVectorCharacteristicValue;
@end

@implementation CyclingPowerService

- (void)readWheelSize
{
  peripheral = [(ClientService *)self peripheral];
  v4 = [peripheral customProperty:@"wheelCircumferenceMM"];

  if (v4)
  {
    v5 = objc_alloc_init(NSNumberFormatter);
    [v5 setNumberStyle:1];
    v6 = [v5 numberFromString:v4];
    v7 = v6;
    if (v6)
    {
      self->_wheelDiameterInInches = [v6 intValue] * 0.0125318853;
    }

    else
    {
      v8 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100072C9C(v8, self);
      }
    }
  }
}

- (void)start
{
  v11.receiver = self;
  v11.super_class = CyclingPowerService;
  [(FitnessService *)&v11 start];
  self->_wheelDiameterInInches = 26.0;
  [(CyclingPowerService *)self readWheelSize];
  [(CyclingPowerService *)self updateZeroDuplicateValues];
  v3 = [CBUUID UUIDWithString:CBUUIDSensorLocation];
  v12[0] = v3;
  v4 = [CBUUID UUIDWithString:@"0x2A65"];
  v12[1] = v4;
  v5 = [CBUUID UUIDWithString:@"0x2A66"];
  v12[2] = v5;
  v6 = [CBUUID UUIDWithString:@"0x2A63"];
  v12[3] = v6;
  v7 = [CBUUID UUIDWithString:@"0x2A64"];
  v12[4] = v7;
  v8 = [NSArray arrayWithObjects:v12 count:5];

  peripheral = [(ClientService *)self peripheral];
  service = [(ClientService *)self service];
  [peripheral discoverCharacteristics:v8 forService:service];
}

- (BOOL)supportsHKQuantityType:(id)type
{
  typeCopy = type;
  identifier = [typeCopy identifier];
  v6 = [identifier isEqualToString:HKQuantityTypeIdentifierCyclingPower];

  if ((v6 & 1) == 0)
  {
    identifier2 = [typeCopy identifier];
    if ([identifier2 isEqualToString:HKQuantityTypeIdentifierCyclingSpeed])
    {
    }

    else
    {
      identifier3 = [typeCopy identifier];
      v10 = [identifier3 isEqualToString:HKQuantityTypeIdentifierDistanceCycling];

      if ((v10 & 1) == 0)
      {
        identifier4 = [typeCopy identifier];
        v14 = [identifier4 isEqualToString:HKQuantityTypeIdentifierCyclingCadence];

        if (!v14)
        {
          v7 = 0;
          goto LABEL_8;
        }

        v11 = 8;
        goto LABEL_7;
      }
    }

    v11 = 4;
LABEL_7:
    v7 = (*&self->_sendZeroForDuplicates & v11) != 0;
    goto LABEL_8;
  }

  v7 = 1;
LABEL_8:

  return v7;
}

- (id)getDeviceInformationService
{
  manager = [(ClientService *)self manager];
  v3 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
  v4 = [manager clientServiceForUUID:v3];

  return v4;
}

- (void)createDistributedHKDeviceWithSecondary:(id)secondary
{
  secondaryCopy = secondary;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2050000000;
  v4 = qword_1000DDA90;
  v68 = qword_1000DDA90;
  if (!qword_1000DDA90)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10001DCFC;
    v70 = &unk_1000BD290;
    *v71 = &v65;
    sub_10001DCFC(buf);
    v4 = v66[3];
  }

  v5 = v4;
  _Block_object_dispose(&v65, 8);
  selfCopy = self;
  isSensorLocationLeft = [(CyclingPowerService *)self isSensorLocationLeft];
  selfCopy2 = secondaryCopy;
  if (isSensorLocationLeft)
  {
    selfCopy2 = self;
  }

  v8 = selfCopy2;
  isSensorLocationLeft2 = [(CyclingPowerService *)self isSensorLocationLeft];
  selfCopy3 = secondaryCopy;
  if (!isSensorLocationLeft2)
  {
    selfCopy3 = self;
  }

  v64 = selfCopy3;
  peripheral = [(ClientService *)v8 peripheral];
  name = [peripheral name];
  peripheral2 = [(ClientService *)v64 peripheral];
  name2 = [peripheral2 name];
  v61 = [NSString stringWithFormat:@"%@/%@", name, name2];

  peripheral3 = [(ClientService *)v8 peripheral];
  hkDevice = [peripheral3 hkDevice];
  manufacturer = [hkDevice manufacturer];
  v18 = manufacturer;
  if (manufacturer)
  {
    manufacturer2 = manufacturer;
  }

  else
  {
    peripheral4 = [(ClientService *)v64 peripheral];
    hkDevice2 = [peripheral4 hkDevice];
    manufacturer2 = [hkDevice2 manufacturer];
  }

  peripheral5 = [(ClientService *)v8 peripheral];
  hkDevice3 = [peripheral5 hkDevice];
  model = [hkDevice3 model];
  v24 = model;
  if (model)
  {
    model2 = model;
  }

  else
  {
    peripheral6 = [(ClientService *)v64 peripheral];
    hkDevice4 = [peripheral6 hkDevice];
    model2 = [hkDevice4 model];
  }

  peripheral7 = [(ClientService *)v8 peripheral];
  hkDevice5 = [peripheral7 hkDevice];
  hardwareVersion = [hkDevice5 hardwareVersion];
  v30 = hardwareVersion;
  if (hardwareVersion)
  {
    hardwareVersion2 = hardwareVersion;
  }

  else
  {
    peripheral8 = [(ClientService *)v64 peripheral];
    hkDevice6 = [peripheral8 hkDevice];
    hardwareVersion2 = [hkDevice6 hardwareVersion];
  }

  peripheral9 = [(ClientService *)v8 peripheral];
  hkDevice7 = [peripheral9 hkDevice];
  firmwareVersion = [hkDevice7 firmwareVersion];
  v36 = firmwareVersion;
  if (firmwareVersion)
  {
    firmwareVersion2 = firmwareVersion;
  }

  else
  {
    peripheral10 = [(ClientService *)v64 peripheral];
    hkDevice8 = [peripheral10 hkDevice];
    firmwareVersion2 = [hkDevice8 firmwareVersion];
  }

  if (v4)
  {
    v40 = [v4 alloc];
    peripheral11 = [(ClientService *)v8 peripheral];
    identifier = [peripheral11 identifier];
    uUIDString = [identifier UUIDString];
    peripheral12 = [(ClientService *)v64 peripheral];
    identifier2 = [peripheral12 identifier];
    uUIDString2 = [identifier2 UUIDString];
    v47 = [NSString stringWithFormat:@"%@/%@", uUIDString, uUIDString2];
    v48 = [v40 initWithName:v61 manufacturer:manufacturer2 model:model2 hardwareVersion:hardwareVersion2 firmwareVersion:firmwareVersion2 softwareVersion:0 localIdentifier:v47 UDIDeviceIdentifier:0];

    v49 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v49;
      name3 = [v48 name];
      manufacturer3 = [v48 manufacturer];
      model3 = [v48 model];
      hardwareVersion3 = [v48 hardwareVersion];
      firmwareVersion3 = [v48 firmwareVersion];
      localIdentifier = [v48 localIdentifier];
      *buf = 138413570;
      *&buf[4] = name3;
      *&buf[12] = 2112;
      *&buf[14] = manufacturer3;
      *&buf[22] = 2112;
      v70 = model3;
      *v71 = 2112;
      *&v71[2] = hardwareVersion3;
      v72 = 2112;
      v73 = firmwareVersion3;
      v74 = 2112;
      v75 = localIdentifier;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Created distributed HKDevice name:“%@” manufacturer:“%@” model:“%@” HW:“%@” FW:“%@” localID:“%@”", buf, 0x3Eu);
    }

    [(CyclingPowerService *)selfCopy setComboHKDevice:v48];
    [(CyclingPowerService *)secondaryCopy setComboHKDevice:v48];
  }

  else
  {
    v57 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100072D74(v61, v57);
    }
  }
}

- (id)updateComboString:(id)string withValue:(id)value
{
  stringCopy = string;
  valueCopy = value;
  if (stringCopy && [stringCopy length])
  {
    if ([stringCopy containsString:@"/"] || objc_msgSend(valueCopy, "isEqualToString:", stringCopy))
    {
      v8 = stringCopy;
    }

    else
    {
      if ([(CyclingPowerService *)self isSensorLocationLeft])
      {
        v11 = valueCopy;
      }

      else
      {
        v11 = stringCopy;
      }

      if ([(CyclingPowerService *)self isSensorLocationLeft])
      {
        v12 = stringCopy;
      }

      else
      {
        v12 = valueCopy;
      }

      v8 = [NSString stringWithFormat:@"%@/%@", v11, v12];
    }
  }

  else
  {
    v8 = valueCopy;
  }

  v9 = v8;

  return v9;
}

- (void)receiveDeviceInfoUpdateNotification:(id)notification
{
  notificationCopy = notification;
  v52.receiver = self;
  v52.super_class = CyclingPowerService;
  [(FitnessService *)&v52 receiveDeviceInfoUpdateNotification:notificationCopy];
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100072DEC(v5, notificationCopy, self);
  }

  name = [notificationCopy name];
  if (![name isEqualToString:@"DeviceInformationUpdate"])
  {
    goto LABEL_29;
  }

  peripheral = [(ClientService *)self peripheral];
  identifier = [peripheral identifier];
  uUIDString = [identifier UUIDString];
  userInfo = [notificationCopy userInfo];
  v11 = [userInfo valueForKey:@"UUID"];
  v12 = [uUIDString isEqualToString:v11];

  if (v12)
  {
    userInfo2 = [notificationCopy userInfo];
    v14 = [userInfo2 valueForKey:@"PnP"];

    if (v14)
    {
      [(CyclingPowerService *)self updateZeroDuplicateValues];
    }

    userInfo3 = [notificationCopy userInfo];
    v16 = [userInfo3 valueForKey:@"ModelNumber"];

    if (v16)
    {
      [(CyclingPowerService *)self updateZeroDuplicateValues];
      if (self->fDistributedPower)
      {
        comboHKDevice = [(CyclingPowerService *)self comboHKDevice];

        if (comboHKDevice)
        {
          comboHKDevice2 = [(CyclingPowerService *)self comboHKDevice];
          [comboHKDevice2 _setModel:v16];
        }
      }
    }

    userInfo4 = [notificationCopy userInfo];
    v20 = [userInfo4 valueForKey:@"FirmwareRevision"];

    if (v20)
    {
      if (self->fDistributedPower)
      {
        comboHKDevice3 = [(CyclingPowerService *)self comboHKDevice];

        if (comboHKDevice3)
        {
          comboHKDevice4 = [(CyclingPowerService *)self comboHKDevice];
          comboHKDevice5 = [(CyclingPowerService *)self comboHKDevice];
          firmwareVersion = [comboHKDevice5 firmwareVersion];
          v25 = [(CyclingPowerService *)self updateComboString:firmwareVersion withValue:v20];
          [comboHKDevice4 _setFirmwareVersion:v25];
        }
      }
    }

    userInfo5 = [notificationCopy userInfo];
    v27 = [userInfo5 valueForKey:@"HardwareRevision"];

    if (v27)
    {
      if (self->fDistributedPower)
      {
        comboHKDevice6 = [(CyclingPowerService *)self comboHKDevice];

        if (comboHKDevice6)
        {
          comboHKDevice7 = [(CyclingPowerService *)self comboHKDevice];
          comboHKDevice8 = [(CyclingPowerService *)self comboHKDevice];
          hardwareVersion = [comboHKDevice8 hardwareVersion];
          v32 = [(CyclingPowerService *)self updateComboString:hardwareVersion withValue:v27];
          [comboHKDevice7 _setHardwareVersion:v32];
        }
      }
    }

    userInfo6 = [notificationCopy userInfo];
    name = [userInfo6 valueForKey:@"ManufacturerName"];

    if (name)
    {
      [(CyclingPowerService *)self updateZeroDuplicateValues];
      if (self->fDistributedPower)
      {
        comboHKDevice9 = [(CyclingPowerService *)self comboHKDevice];

        if (comboHKDevice9)
        {
          comboHKDevice10 = [(CyclingPowerService *)self comboHKDevice];
          [comboHKDevice10 _setManufacturer:name];
        }
      }
    }

    if (self->fDistributedPower && ([(CyclingPowerService *)self comboHKDevice], v36 = objc_claimAutoreleasedReturnValue(), v36, v36))
    {
      v37 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        log = v37;
        comboHKDevice11 = [(CyclingPowerService *)self comboHKDevice];
        name2 = [comboHKDevice11 name];
        comboHKDevice12 = [(CyclingPowerService *)self comboHKDevice];
        manufacturer = [comboHKDevice12 manufacturer];
        comboHKDevice13 = [(CyclingPowerService *)self comboHKDevice];
        model = [comboHKDevice13 model];
        comboHKDevice14 = [(CyclingPowerService *)self comboHKDevice];
        hardwareVersion2 = [comboHKDevice14 hardwareVersion];
        comboHKDevice15 = [(CyclingPowerService *)self comboHKDevice];
        firmwareVersion2 = [comboHKDevice15 firmwareVersion];
        comboHKDevice16 = [(CyclingPowerService *)self comboHKDevice];
        localIdentifier = [comboHKDevice16 localIdentifier];
        *buf = 138413570;
        v54 = name2;
        v55 = 2112;
        v56 = manufacturer;
        v57 = 2112;
        v58 = model;
        v59 = 2112;
        v60 = hardwareVersion2;
        v61 = 2112;
        v62 = firmwareVersion2;
        v63 = 2112;
        v64 = localIdentifier;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Updated distributed HKDevice name:“%@” manufacturer:“%@” model:“%@” HW:“%@” FW:“%@” localID:“%@”", buf, 0x3Eu);
      }
    }

    else
    {
      v45 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
      {
        sub_100072EFC(v45, self);
      }
    }

LABEL_29:
  }
}

- (void)updateForSensorLocation
{
  if (self->fFeatureCharacteristicRead && self->fSensorLocationCharacteristicRead && self->fDistributedPower)
  {
    comboHKDevice = [(CyclingPowerService *)self comboHKDevice];

    if (!comboHKDevice)
    {
      v4 = +[FitnessDeviceManager instance];
      v7 = [v4 findMatchingDistributedFitnessService:self];

      v5 = v7;
      if (v7 && v7->fFeatureCharacteristicRead && v7->fSensorLocationCharacteristicRead)
      {
        if ([(CyclingPowerService *)self isSensorLocationLeft])
        {
          v7->fIsSecondary = 1;
          selfCopy = self;
        }

        else
        {
          self->fIsSecondary = 1;
          selfCopy = v7;
        }

        [(CyclingPowerService *)selfCopy createDistributedHKDeviceWithSecondary:?];
        v5 = v7;
      }
    }
  }
}

- (id)sensorLocationString
{
  if ((self->fSensorLocation - 5) > 3u)
  {
    return @"Unsupported";
  }

  else
  {
    return off_1000BD7C8[(self->fSensorLocation - 5)];
  }
}

- (void)updatedSensorLocationCharacteristicValue
{
  cyclingPowerSensorLocationCharacteristic = [(CyclingPowerService *)self cyclingPowerSensorLocationCharacteristic];
  value = [cyclingPowerSensorLocationCharacteristic value];
  v5 = [value length];

  if (v5)
  {
    cyclingPowerSensorLocationCharacteristic2 = [(CyclingPowerService *)self cyclingPowerSensorLocationCharacteristic];
    value2 = [cyclingPowerSensorLocationCharacteristic2 value];
    [(FitnessService *)self readBytesFromNSData:value2 into:&self->fSensorLocation startingAt:0 length:1 info:@"Cycling Power Sensor Location Characteristic Value"];

    v8 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      sensorLocationString = [(CyclingPowerService *)self sensorLocationString];
      peripheral = [(ClientService *)self peripheral];
      name = [peripheral name];
      v14 = 138412546;
      v15 = sensorLocationString;
      v16 = 2112;
      v17 = name;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "updatedSensorLocationCharacteristicValue:%@ for “%@”", &v14, 0x16u);
    }
  }

  else
  {
    v13 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100072FBC(v13, self);
    }
  }

  self->fSensorLocationCharacteristicRead = 1;
  [(CyclingPowerService *)self updateForSensorLocation];
}

- (void)updatedFeatureCharacteristicValue
{
  cyclingPowerFeatureCharacteristic = [(CyclingPowerService *)self cyclingPowerFeatureCharacteristic];
  value = [cyclingPowerFeatureCharacteristic value];
  v5 = [value length];

  if (v5 > 3)
  {
    v8 = 4;
  }

  else
  {
    cyclingPowerFeatureCharacteristic2 = [(CyclingPowerService *)self cyclingPowerFeatureCharacteristic];
    value2 = [cyclingPowerFeatureCharacteristic2 value];
    v8 = [value2 length];

    if (v8 <= 2)
    {
      v9 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_1000730C4(v9, self);
      }
    }
  }

  cyclingPowerFeatureCharacteristic3 = [(CyclingPowerService *)self cyclingPowerFeatureCharacteristic];
  value3 = [cyclingPowerFeatureCharacteristic3 value];
  [(FitnessService *)self readBytesFromNSData:value3 into:&self->_sendZeroForDuplicates startingAt:0 length:v8 info:@"Cycling Power Feature Characteristic Value"];

  self->fDistributedPower = (*&self->_sendZeroForDuplicates & 0x200000) != 0;
  v12 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    peripheral = [(ClientService *)self peripheral];
    name = [peripheral name];
    v16 = name;
    v17 = @"NON-";
    v18 = *&self->_sendZeroForDuplicates;
    if (self->fDistributedPower)
    {
      v17 = &stru_1000BEA00;
    }

    *v21 = 138413058;
    *&v21[4] = name;
    if ((v18 & 4) != 0)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    *&v21[14] = v17;
    *&v21[12] = 2112;
    *&v21[22] = 2112;
    v22 = v19;
    if ((v18 & 8) != 0)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v23 = 2112;
    v24 = v20;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "“%@” Features - %@DISTRIBUTED POWER:YES SPEED:%@ CADENCE:%@", v21, 0x2Au);
  }

  self->fFeatureCharacteristicRead = 1;
  [(CyclingPowerService *)self updateForSensorLocation:*v21];
  [(FitnessService *)self featuresReadComplete];
}

- (BOOL)matchesDistributedService:(id)service
{
  serviceCopy = service;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = serviceCopy;
    if ([v5 isDistributed])
    {
      if ([(CyclingPowerService *)self isDistributed])
      {
        peripheral = [v5 peripheral];
        identifier = [peripheral identifier];
        uUIDString = [identifier UUIDString];
        peripheral2 = [(ClientService *)self peripheral];
        identifier2 = [peripheral2 identifier];
        uUIDString2 = [identifier2 UUIDString];
        v12 = [uUIDString isEqualToString:uUIDString2];

        if ((v12 & 1) == 0)
        {
          vendorID = [(FitnessService *)self vendorID];
          if (vendorID == [v5 vendorID])
          {
            productID = [(FitnessService *)self productID];
            if (productID == [v5 productID])
            {
              v15 = 0;
              fSensorLocation = self->fSensorLocation;
              if (fSensorLocation > 6)
              {
                if (fSensorLocation != 7)
                {
                  if (fSensorLocation == 8)
                  {
                    v15 = v5[113] == 7;
                  }

                  goto LABEL_20;
                }

                if (v5[113] == 8)
                {
                  goto LABEL_11;
                }
              }

              else if (fSensorLocation == 5)
              {
                if (v5[113] == 6)
                {
                  goto LABEL_11;
                }
              }

              else
              {
                if (fSensorLocation != 6)
                {
LABEL_20:

                  goto LABEL_21;
                }

                if (v5[113] == 5)
                {
LABEL_11:
                  v15 = 1;
                  goto LABEL_20;
                }
              }
            }
          }
        }
      }
    }

    v15 = 0;
    goto LABEL_20;
  }

  v15 = 0;
LABEL_21:

  return v15;
}

- (void)updatedSpeedMeasurementValueForRevolutions:(unsigned int)revolutions andWheelEventTime:(unsigned __int16)time timeStamp:(id)stamp
{
  timeCopy = time;
  stampCopy = stamp;
  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    v25 = v9;
    peripheral = [(ClientService *)self peripheral];
    name = [peripheral name];
    v28 = 138413570;
    v29 = name;
    v30 = 1024;
    *v31 = revolutions;
    *&v31[4] = 1024;
    *&v31[6] = revolutions;
    *v32 = 1024;
    *&v32[2] = timeCopy;
    *v33 = 1024;
    *&v33[2] = timeCopy;
    LOWORD(v34[0]) = 2048;
    *(v34 + 2) = vcvtd_n_f64_u32(timeCopy, 0xBuLL);
    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "“%@” READ CP Measurement SPEED, CumWheelRev:%d (0x%08X) last Wheel Event Time:%d (0x%04X) (%f in sec)", &v28, 0x2Eu);
  }

  p_lastPowerMeasurementReading = &self->lastPowerMeasurementReading;
  if (*&self->lastPowerMeasurementReading.accumulated_torque || LOWORD(self->lastPowerMeasurementReading.wheel_revolution_data))
  {
    v11 = [FitnessService hkQuantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingSpeed];
    v12 = [FitnessService hkQuantityTypeForIdentifier:HKQuantityTypeIdentifierDistanceCycling];
    if (v11 | v12)
    {
      v13 = timeCopy - LOWORD(self->lastPowerMeasurementReading.wheel_revolution_data) + ((timeCopy - LOWORD(self->lastPowerMeasurementReading.wheel_revolution_data)) >> 31 << 16);
      if (v13)
      {
        v14 = vcvtd_n_f64_u32(v13, 0xBuLL);
        v15 = self->_wheelDiameterInInches * ((revolutions - *&self->lastPowerMeasurementReading.accumulated_torque) * 3.14159265);
        v16 = v15 / v14 * 0.0568181818;
        if (v16 >= 0.0 && v16 < 200.0)
        {
          v24 = [NSDate dateWithTimeInterval:stampCopy sinceDate:-v14];
          if (v11 && [(FitnessService *)self isCollectingHKQuantityType:v11])
          {
            [(FitnessService *)self recordDatum:v24 start:stampCopy end:v11 quantityType:v16];
            [(FitnessService *)self storeDatumsForQuantityType:v11];
          }

          if (v12 && [(FitnessService *)self isCollectingHKQuantityType:v12])
          {
            [(FitnessService *)self recordDatum:v24 start:stampCopy end:v12 quantityType:v15 * 0.0254];
            [(FitnessService *)self storeDatumsForQuantityType:v12];
          }
        }

        else
        {
          v18 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            v19 = v18;
            peripheral2 = [(ClientService *)self peripheral];
            name2 = [peripheral2 name];
            v22 = *&p_lastPowerMeasurementReading->accumulated_torque;
            wheel_revolution_data_low = LOWORD(p_lastPowerMeasurementReading->wheel_revolution_data);
            v28 = 138413570;
            v29 = name2;
            v30 = 2048;
            *v31 = v16;
            *&v31[8] = 1024;
            *v32 = revolutions;
            *&v32[4] = 1024;
            *v33 = timeCopy;
            *&v33[4] = 1024;
            v34[0] = v22;
            LOWORD(v34[1]) = 1024;
            *(&v34[1] + 2) = wheel_revolution_data_low;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "“%@” Invalid speed detected:%f rpm rev count=0x%08X timestamp=0x%04X previous rev count=0x%08X timestamp=0x%04X", &v28, 0x2Eu);
          }
        }
      }

      else if (self->fCurrentDataIsDuplicate && [(CyclingPowerService *)self sendDuplicateReadingsAsZero])
      {
        if ([(FitnessService *)self isCollectingHKQuantityType:v11])
        {
          [(FitnessService *)self recordDatum:stampCopy start:stampCopy end:v11 quantityType:0.0];
          [(FitnessService *)self storeDatumsForQuantityType:v11];
        }

        if (v12 && [(FitnessService *)self isCollectingHKQuantityType:v12])
        {
          [(FitnessService *)self recordDatum:stampCopy start:stampCopy end:v12 quantityType:0.0];
          [(FitnessService *)self storeDatumsForQuantityType:v12];
        }
      }
    }

    else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007318C();
    }
  }
}

- (void)updatedCadenceMeasurementValueForRevolutions:(unsigned __int16)revolutions andCrankEventTime:(unsigned __int16)time timeStamp:(id)stamp
{
  timeCopy = time;
  revolutionsCopy = revolutions;
  stampCopy = stamp;
  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    v17 = v9;
    peripheral = [(ClientService *)self peripheral];
    name = [peripheral name];
    v26 = 138413570;
    v27 = name;
    v28 = 1024;
    *v29 = revolutionsCopy;
    *&v29[4] = 1024;
    *&v29[6] = revolutionsCopy;
    *v30 = 1024;
    *&v30[2] = timeCopy;
    *v31 = 1024;
    *&v31[2] = timeCopy;
    *v32 = 2048;
    *&v32[2] = vcvtd_n_f64_u32(timeCopy, 0xAuLL);
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "“%@” READ CP Measurement CADENCE, CrankRev:%d (0x%04X) last Crank Event Time:%d (0x%04X) (%f in sec)", &v26, 0x2Eu);
  }

  p_lastPowerMeasurementReading = &self->lastPowerMeasurementReading;
  if (HIWORD(self->lastPowerMeasurementReading.wheel_revolution_data) || self->lastPowerMeasurementReading.last_wheel_event_time)
  {
    v11 = [FitnessService hkQuantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingCadence];
    if (v11)
    {
      if ([(FitnessService *)self isCollectingHKQuantityType:v11])
      {
        v12 = timeCopy - self->lastPowerMeasurementReading.last_wheel_event_time + ((timeCopy - self->lastPowerMeasurementReading.last_wheel_event_time) >> 31 << 16);
        if (v12)
        {
          v13 = revolutionsCopy - HIWORD(self->lastPowerMeasurementReading.wheel_revolution_data);
          if (v13 >= 1)
          {
            v14 = vcvtd_n_f64_u32(v12, 0xAuLL);
            v15 = v13 * 60.0 / v14;
            if (v15 < 0.0 || v15 >= 500.0)
            {
              v20 = qword_1000DDBC8;
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
              {
                v21 = v20;
                peripheral2 = [(ClientService *)self peripheral];
                name2 = [peripheral2 name];
                wheel_revolution_data_high = HIWORD(p_lastPowerMeasurementReading->wheel_revolution_data);
                last_wheel_event_time = p_lastPowerMeasurementReading->last_wheel_event_time;
                v26 = 138413570;
                v27 = name2;
                v28 = 2048;
                *v29 = v15;
                *&v29[8] = 1024;
                *v30 = revolutionsCopy;
                *&v30[4] = 1024;
                *v31 = timeCopy;
                *&v31[4] = 1024;
                *v32 = wheel_revolution_data_high;
                *&v32[4] = 1024;
                *&v32[6] = last_wheel_event_time;
                _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "“%@” Invalid cadence detected:%f rpm rev count=0x%04X timestamp=0x%04X previous rev count=0x%04X timestamp=0x%04X", &v26, 0x2Eu);
              }
            }

            else
            {
              v16 = [NSDate dateWithTimeInterval:stampCopy sinceDate:-v14];
              [(FitnessService *)self recordDatum:v16 start:stampCopy end:v11 quantityType:v15];
              [(FitnessService *)self storeDatumsForQuantityType:v11];
            }
          }
        }

        else if (self->fCurrentDataIsDuplicate && [(CyclingPowerService *)self sendDuplicateReadingsAsZero])
        {
          [(FitnessService *)self recordDatum:stampCopy start:stampCopy end:v11 quantityType:0.0];
          [(FitnessService *)self storeDatumsForQuantityType:v11];
        }
      }

      else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_1000731C0();
      }
    }

    else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000731F4();
    }
  }
}

- (id)sensorLocationSideString
{
  if ([(CyclingPowerService *)self isSensorLocationLeft])
  {
    return @"Left";
  }

  if ([(CyclingPowerService *)self isSensorLocationRight])
  {
    return @"Right";
  }

  return @"-";
}

- (double)powerBalanceForValue:(double)value otherService:(id)service otherValue:(double)otherValue
{
  serviceCopy = service;
  if (value + otherValue <= 0.0)
  {
    goto LABEL_9;
  }

  if (!-[CyclingPowerService isSensorLocationLeft](self, "isSensorLocationLeft") || ![serviceCopy isSensorLocationRight])
  {
    if (-[CyclingPowerService isSensorLocationRight](self, "isSensorLocationRight") && [serviceCopy isSensorLocationLeft])
    {
      v9 = otherValue * 100.0;
      goto LABEL_8;
    }

LABEL_9:
    v10 = 50.0;
    goto LABEL_10;
  }

  v9 = value * 100.0;
LABEL_8:
  v10 = v9 / (value + otherValue);
LABEL_10:

  return v10;
}

- (id)originatingHKDevice
{
  if ([(CyclingPowerService *)self isDistributed]&& ([(CyclingPowerService *)self comboHKDevice], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    comboHKDevice = [(CyclingPowerService *)self comboHKDevice];
  }

  else
  {
    peripheral = [(ClientService *)self peripheral];
    comboHKDevice = [peripheral hkDevice];
  }

  return comboHKDevice;
}

- (void)updatedPowerMeasurementValue:(id *)value timeStamp:(id)stamp
{
  stampCopy = stamp;
  v7 = [FitnessService hkQuantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingPower];
  if (v7 && [(FitnessService *)self isCollectingHKQuantityType:v7])
  {
    v8 = +[FitnessDeviceManager instance];
    v9 = [v8 findMatchingDistributedFitnessService:self];

    if ([(CyclingPowerService *)self isDistributed])
    {
      if (v9)
      {
        comboHKDevice = [(CyclingPowerService *)self comboHKDevice];

        if (comboHKDevice)
        {
          if (!self->_lastDistributedDatum)
          {
            goto LABEL_40;
          }

          lastDistributedDatum = [v9 lastDistributedDatum];
          if (!lastDistributedDatum)
          {
            goto LABEL_31;
          }

          v12 = lastDistributedDatum;
          lastDistributedDatum2 = [v9 lastDistributedDatum];
          dateInterval = [lastDistributedDatum2 dateInterval];
          startDate = [dateInterval startDate];
          [stampCopy timeIntervalSinceDate:startDate];
          v17 = fabs(v16);

          if (v17 >= 1.5)
          {
LABEL_31:
            quantity = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
            [quantity _value];
            v56 = v55 + v55;

            if (v56 < 0.0 || v56 >= 5000.0)
            {
              v64 = qword_1000DDBC8;
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
              {
                v65 = v64;
                peripheral = [(ClientService *)self peripheral];
                name = [peripheral name];
                quantity2 = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
                [quantity2 _value];
                v70 = v69;
                sensorLocationSideString = [(CyclingPowerService *)self sensorLocationSideString];
                *buf = 138413314;
                v172 = name;
                v173 = 2048;
                *v174 = v70;
                *&v174[8] = 2114;
                *&v174[10] = sensorLocationSideString;
                *&v174[18] = 2048;
                *&v174[20] = v56;
                v175 = 2048;
                v176 = 0x4049000000000000;
                _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "“%@” READ CP Measurement POWER distributed single unit doubling qty:%f (%{public}@) -> %f (INVALID VALUE) balance = %f", buf, 0x34u);
              }
            }

            else
            {
              dateInterval2 = [(HKQuantityDatum *)self->_lastDistributedDatum dateInterval];
              startDate2 = [dateInterval2 startDate];
              dateInterval3 = [(HKQuantityDatum *)self->_lastDistributedDatum dateInterval];
              endDate = [dateInterval3 endDate];
              v61 = [(FitnessService *)self createDatum:startDate2 start:endDate end:v7 quantityType:v56];

              v62 = qword_1000DDBC8;
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
              {
                loga = v62;
                peripheral2 = [(ClientService *)self peripheral];
                name2 = [peripheral2 name];
                quantity3 = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
                [quantity3 _value];
                v108 = v107;
                sensorLocationSideString2 = [(CyclingPowerService *)self sensorLocationSideString];
                quantity4 = [v61 quantity];
                [quantity4 _value];
                *buf = 138413314;
                v172 = name2;
                v173 = 2048;
                *v174 = v108;
                *&v174[8] = 2114;
                *&v174[10] = sensorLocationSideString2;
                *&v174[18] = 2048;
                *&v174[20] = v111;
                v175 = 2048;
                v176 = 0x4049000000000000;
                _os_log_debug_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEBUG, "“%@” READ CP Measurement POWER distributed single unit doubling qty:%f (%{public}@) -> %f balance = %f", buf, 0x34u);
              }

              [(FitnessService *)self recordDatum:v61 forType:v7];
              comboHKDevice2 = [(CyclingPowerService *)self comboHKDevice];
              [(FitnessService *)self storeDatumsForQuantityType:v7 usingHKDevice:comboHKDevice2];
            }

            goto LABEL_40;
          }

          quantity5 = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
          [quantity5 _value];
          v20 = v19;
          lastDistributedDatum3 = [v9 lastDistributedDatum];
          quantity6 = [lastDistributedDatum3 quantity];
          [quantity6 _value];
          [(CyclingPowerService *)self powerBalanceForValue:v9 otherService:v20 otherValue:v23];
          v25 = v24;

          quantity7 = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
          [quantity7 _value];
          v28 = v27;
          lastDistributedDatum4 = [v9 lastDistributedDatum];
          quantity8 = [lastDistributedDatum4 quantity];
          [quantity8 _value];
          v32 = v28 + v31;

          if (v32 < 0.0 || v32 >= 5000.0)
          {
            v72 = qword_1000DDBC8;
            if (!os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_39;
            }

            v159 = v72;
            peripheral3 = [(ClientService *)self peripheral];
            name3 = [peripheral3 name];
            logd = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
            [logd _value];
            v130 = v129;
            sensorLocationSideString3 = [(CyclingPowerService *)self sensorLocationSideString];
            lastDistributedDatum5 = [v9 lastDistributedDatum];
            quantity9 = [lastDistributedDatum5 quantity];
            [quantity9 _value];
            v133 = v132;
            peripheral4 = [v9 peripheral];
            name4 = [peripheral4 name];
            sensorLocationSideString4 = [v9 sensorLocationSideString];
            *buf = 138414082;
            v172 = name3;
            v173 = 2048;
            *v174 = v130;
            *&v174[8] = 2114;
            *&v174[10] = sensorLocationSideString3;
            *&v174[18] = 2048;
            *&v174[20] = v133;
            v175 = 2112;
            v176 = name4;
            v177 = 2114;
            v178 = sensorLocationSideString4;
            v179 = 2048;
            v180 = v32;
            v181 = 2048;
            v182 = v25;
            v36 = v159;
            _os_log_error_impl(&_mh_execute_header, v159, OS_LOG_TYPE_ERROR, "“%@” READ CP Measurement POWER distributed combined units qty:%f (%{public}@) + %f (“%@” - %{public}@) -> %f (INVALID VALUE) balance:%f", buf, 0x52u);
          }

          else
          {
            lastDistributedDatum6 = [v9 lastDistributedDatum];
            dateInterval4 = [lastDistributedDatum6 dateInterval];
            startDate3 = [dateInterval4 startDate];
            v36 = [(FitnessService *)self createDatum:startDate3 start:stampCopy end:v7 quantityType:v32];

            [(FitnessService *)self recordDatum:v36 forType:v7];
            comboHKDevice3 = [(CyclingPowerService *)self comboHKDevice];
            [(FitnessService *)self storeDatumsForQuantityType:v7 usingHKDevice:comboHKDevice3];

            v38 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
            {
              v160 = v38;
              peripheral5 = [(ClientService *)self peripheral];
              name5 = [peripheral5 name];
              log = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
              [log _value];
              v138 = v137;
              sensorLocationSideString5 = [(CyclingPowerService *)self sensorLocationSideString];
              lastDistributedDatum7 = [v9 lastDistributedDatum];
              quantity10 = [lastDistributedDatum7 quantity];
              [quantity10 _value];
              v141 = v140;
              peripheral6 = [v9 peripheral];
              name6 = [peripheral6 name];
              sensorLocationSideString6 = [v9 sensorLocationSideString];
              *buf = 138414082;
              v172 = name5;
              v173 = 2048;
              *v174 = v138;
              *&v174[8] = 2114;
              *&v174[10] = sensorLocationSideString5;
              *&v174[18] = 2048;
              *&v174[20] = v141;
              v175 = 2112;
              v176 = name6;
              v177 = 2114;
              v178 = sensorLocationSideString6;
              v179 = 2048;
              v180 = v32;
              v181 = 2048;
              v182 = v25;
              _os_log_debug_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEBUG, "“%@” READ CP Measurement POWER distributed combined units qty:%f (%{public}@) + %f (“%@” - %{public}@) -> %f balance:%f", buf, 0x52u);
            }
          }

LABEL_39:
          [v9 setLastDistributedDatum:0];
LABEL_40:
          v73 = [(FitnessService *)self createDatum:stampCopy start:stampCopy end:v7 quantityType:*(&value->var0 + 1)];
          lastDistributedDatum = self->_lastDistributedDatum;
          self->_lastDistributedDatum = v73;

          lastDistributedDatum8 = [v9 lastDistributedDatum];

          if (lastDistributedDatum8)
          {
            lastDistributedDatum9 = [v9 lastDistributedDatum];
            dateInterval5 = [lastDistributedDatum9 dateInterval];
            startDate4 = [dateInterval5 startDate];
            [stampCopy timeIntervalSinceDate:startDate4];
            v80 = fabs(v79);

            if (v80 >= 1.5)
            {
              v103 = qword_1000DDBC8;
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
              {
                sub_100073228(v103, self, &self->_lastDistributedDatum);
              }
            }

            else
            {
              quantity11 = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
              [quantity11 _value];
              v83 = v82;
              lastDistributedDatum10 = [v9 lastDistributedDatum];
              quantity12 = [lastDistributedDatum10 quantity];
              [quantity12 _value];
              [(CyclingPowerService *)self powerBalanceForValue:v9 otherService:v83 otherValue:v86];
              v88 = v87;

              quantity13 = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
              [quantity13 _value];
              v91 = v90;
              lastDistributedDatum11 = [v9 lastDistributedDatum];
              quantity14 = [lastDistributedDatum11 quantity];
              [quantity14 _value];
              v95 = v91 + v94;

              if (v95 < 0.0 || v95 >= 5000.0)
              {
                v104 = qword_1000DDBC8;
                if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
                {
                  v157 = v104;
                  peripheral7 = [(ClientService *)self peripheral];
                  name7 = [peripheral7 name];
                  logc = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
                  [logc _value];
                  v113 = v112;
                  sensorLocationSideString7 = [(CyclingPowerService *)self sensorLocationSideString];
                  lastDistributedDatum12 = [v9 lastDistributedDatum];
                  quantity15 = [lastDistributedDatum12 quantity];
                  [quantity15 _value];
                  v117 = v116;
                  peripheral8 = [v9 peripheral];
                  name8 = [peripheral8 name];
                  sensorLocationSideString8 = [v9 sensorLocationSideString];
                  *buf = 138414082;
                  v172 = name7;
                  v173 = 2048;
                  *v174 = v113;
                  *&v174[8] = 2114;
                  *&v174[10] = sensorLocationSideString7;
                  *&v174[18] = 2048;
                  *&v174[20] = v117;
                  v175 = 2112;
                  v176 = name8;
                  v177 = 2114;
                  v178 = sensorLocationSideString8;
                  v179 = 2048;
                  v180 = v95;
                  v181 = 2048;
                  v182 = v88;
                  _os_log_error_impl(&_mh_execute_header, v157, OS_LOG_TYPE_ERROR, "“%@” READ CP Measurement POWER distributed combined units qty:%f (%{public}@) + %f (“%@” - %{public}@) -> %f (INVALID VALUE) balance:%f", buf, 0x52u);
                }
              }

              else
              {
                lastDistributedDatum13 = [v9 lastDistributedDatum];
                dateInterval6 = [lastDistributedDatum13 dateInterval];
                startDate5 = [dateInterval6 startDate];
                v99 = [(FitnessService *)self createDatum:startDate5 start:stampCopy end:v7 quantityType:v95];

                [(FitnessService *)self recordDatum:v99 forType:v7];
                comboHKDevice4 = [(CyclingPowerService *)self comboHKDevice];
                [(FitnessService *)self storeDatumsForQuantityType:v7 usingHKDevice:comboHKDevice4];

                v101 = qword_1000DDBC8;
                if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
                {
                  v158 = v101;
                  peripheral9 = [(ClientService *)self peripheral];
                  name9 = [peripheral9 name];
                  logb = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
                  [logb _value];
                  v122 = v121;
                  sensorLocationSideString9 = [(CyclingPowerService *)self sensorLocationSideString];
                  lastDistributedDatum14 = [v9 lastDistributedDatum];
                  quantity16 = [lastDistributedDatum14 quantity];
                  [quantity16 _value];
                  v125 = v124;
                  peripheral10 = [v9 peripheral];
                  name10 = [peripheral10 name];
                  sensorLocationSideString10 = [v9 sensorLocationSideString];
                  *buf = 138414082;
                  v172 = name9;
                  v173 = 2048;
                  *v174 = v122;
                  *&v174[8] = 2114;
                  *&v174[10] = sensorLocationSideString9;
                  *&v174[18] = 2048;
                  *&v174[20] = v125;
                  v175 = 2112;
                  v176 = name10;
                  v177 = 2114;
                  v178 = sensorLocationSideString10;
                  v179 = 2048;
                  v180 = v95;
                  v181 = 2048;
                  v182 = v88;
                  _os_log_debug_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEBUG, "“%@” READ CP Measurement POWER distributed combined units qty:%f (%{public}@) + %f (“%@” - %{public}@) -> %f balance:%f", buf, 0x52u);
                }
              }

              v105 = self->_lastDistributedDatum;
              self->_lastDistributedDatum = 0;

              [v9 setLastDistributedDatum:0];
            }
          }

          else
          {
            v102 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
            {
              sub_100073328(v102, self, &self->_lastDistributedDatum);
            }
          }

          goto LABEL_54;
        }
      }
    }

    if (self->fCurrentDataIsDuplicate && [(CyclingPowerService *)self sendDuplicateReadingsAsZero])
    {
      v39 = 0;
      v40 = 1;
    }

    else
    {
      v39 = *(&value->var0 + 1);
      if ((*(&value->var0 + 1) >> 3) > 0x270u)
      {
        v51 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_100073438(v51, self);
        }

        goto LABEL_54;
      }

      v40 = 0;
    }

    [(FitnessService *)self recordDatum:stampCopy start:stampCopy end:v7 quantityType:v39];
    [(FitnessService *)self storeDatumsForQuantityType:v7];
    var0 = value->var0;
    v42 = qword_1000DDBC8;
    v43 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG);
    if (var0)
    {
      if (v43)
      {
        v52 = vcvtd_n_f64_u32(LOBYTE(value->var1), 1uLL);
        v44 = v42;
        peripheral11 = [(ClientService *)self peripheral];
        name11 = [peripheral11 name];
        v53 = &stru_1000BEA00;
        *buf = 138413058;
        v173 = 1024;
        v172 = name11;
        if (v40)
        {
          v53 = @"DUPLICATE";
        }

        *v174 = v39;
        *&v174[4] = 2114;
        *&v174[6] = v53;
        *&v174[14] = 2048;
        *&v174[16] = v52;
        v48 = "“%@” READ CP Measurement POWER non-distributed qty:%d %{public}@ balance:%f";
        v49 = v44;
        v50 = 38;
        goto LABEL_30;
      }
    }

    else if (v43)
    {
      v44 = v42;
      peripheral11 = [(ClientService *)self peripheral];
      name11 = [peripheral11 name];
      v47 = &stru_1000BEA00;
      *buf = 138412802;
      v172 = name11;
      if (v40)
      {
        v47 = @"DUPLICATE";
      }

      v173 = 1024;
      *v174 = v39;
      *&v174[4] = 2114;
      *&v174[6] = v47;
      v48 = "“%@” READ CP Measurement POWER non-distributed qty:%d %{public}@ (no balance data)";
      v49 = v44;
      v50 = 28;
LABEL_30:
      _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, v48, buf, v50);
    }

LABEL_54:
  }
}

- (void)updatedMeasurementCharacteristicValue:(id)value at:(id)at
{
  atCopy = at;
  v67[0] = 0;
  v65 = 0u;
  v66 = 0u;
  cyclingPowerMeasurementCharacteristic = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  value = [cyclingPowerMeasurementCharacteristic value];
  v8 = [(FitnessService *)self readBytesFromNSData:value into:&v65 startingAt:0 length:2 info:@"CPM - status flags"];

  cyclingPowerMeasurementCharacteristic2 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  value2 = [cyclingPowerMeasurementCharacteristic2 value];
  v11 = [(FitnessService *)self readBytesFromNSData:value2 into:&v65 + 2 startingAt:v8 length:2 info:@"CPM - instantaneous power"]+ v8;

  v12 = v65;
  if (v65)
  {
    cyclingPowerMeasurementCharacteristic3 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
    value3 = [cyclingPowerMeasurementCharacteristic3 value];
    v11 = &v11[[(FitnessService *)self readBytesFromNSData:value3 into:&v65 + 4 startingAt:v11 length:1 info:@"CPM - power balance"]];

    v12 = v65;
    if ((v65 & 4) == 0)
    {
LABEL_3:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v65 & 4) == 0)
  {
    goto LABEL_3;
  }

  cyclingPowerMeasurementCharacteristic4 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  value4 = [cyclingPowerMeasurementCharacteristic4 value];
  v11 = &v11[[(FitnessService *)self readBytesFromNSData:value4 into:&v65 + 6 startingAt:v11 length:2 info:@"CPM - accumulated torque"]];

  v12 = v65;
  if ((v65 & 0x10) == 0)
  {
LABEL_4:
    v13 = v12;
    if ((v12 & 0x20) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v19 = v13;
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_9:
  cyclingPowerMeasurementCharacteristic5 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  value5 = [cyclingPowerMeasurementCharacteristic5 value];
  v26 = &v11[[(FitnessService *)self readBytesFromNSData:value5 into:&v65 + 8 startingAt:v11 length:4 info:@"CPM - wheel revolutions"]];

  cyclingPowerMeasurementCharacteristic6 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  value6 = [cyclingPowerMeasurementCharacteristic6 value];
  v11 = &v26[[(FitnessService *)self readBytesFromNSData:value6 into:&v65 | 0xC startingAt:v26 length:2 info:@"CPM - wheel event time"]];

  v13 = v65;
  if ((v65 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  cyclingPowerMeasurementCharacteristic7 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  value7 = [cyclingPowerMeasurementCharacteristic7 value];
  v16 = &v11[[(FitnessService *)self readBytesFromNSData:value7 into:&v65 | 0xE startingAt:v11 length:2 info:@"CPM - crank revolutions"]];

  cyclingPowerMeasurementCharacteristic8 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  value8 = [cyclingPowerMeasurementCharacteristic8 value];
  v11 = &v16[[(FitnessService *)self readBytesFromNSData:value8 into:&v66 startingAt:v16 length:2 info:@"CPM - crank event time"]];

  v19 = v65;
  if ((v65 & 0x40) != 0)
  {
LABEL_11:
    cyclingPowerMeasurementCharacteristic9 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
    value9 = [cyclingPowerMeasurementCharacteristic9 value];
    v31 = &v11[[(FitnessService *)self readBytesFromNSData:value9 into:&v66 + 2 startingAt:v11 length:2 info:@"CPM - extreme force magnitude max"]];

    cyclingPowerMeasurementCharacteristic10 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
    value10 = [cyclingPowerMeasurementCharacteristic10 value];
    v11 = &v31[[(FitnessService *)self readBytesFromNSData:value10 into:&v66 + 4 startingAt:v31 length:2 info:@"CPM - extreme force magnitude min"]];

    v19 = v65;
  }

LABEL_12:
  if ((v19 & 0x80) != 0)
  {
    cyclingPowerMeasurementCharacteristic11 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
    value11 = [cyclingPowerMeasurementCharacteristic11 value];
    v41 = &v11[[(FitnessService *)self readBytesFromNSData:value11 into:&v66 + 6 startingAt:v11 length:2 info:@"CPM - extreme torque magnitude max"]];

    cyclingPowerMeasurementCharacteristic12 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
    value12 = [cyclingPowerMeasurementCharacteristic12 value];
    v11 = &v41[[(FitnessService *)self readBytesFromNSData:value12 into:&v66 + 8 startingAt:v41 length:2 info:@"CPM - extreme torque magnitude min"]];

    v19 = v65;
    if ((v65 & 0x100) == 0)
    {
LABEL_14:
      if ((v19 & 0x200) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }
  }

  else if ((v19 & 0x100) == 0)
  {
    goto LABEL_14;
  }

  *buf = 0;
  cyclingPowerMeasurementCharacteristic13 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  value13 = [cyclingPowerMeasurementCharacteristic13 value];
  v11 = &v11[[(FitnessService *)self readBytesFromNSData:value13 into:buf startingAt:v11 length:4 info:@"CPM - extreme angles"]];

  WORD5(v66) = *buf & 0xFFF;
  WORD6(v66) = (*buf >> 12) & 0xFFF;
  v19 = v65;
  if ((v65 & 0x200) == 0)
  {
LABEL_15:
    if ((v19 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

LABEL_25:
  cyclingPowerMeasurementCharacteristic14 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  value14 = [cyclingPowerMeasurementCharacteristic14 value];
  v11 = &v11[[(FitnessService *)self readBytesFromNSData:value14 into:&v66 + 14 startingAt:v11 length:2 info:@"CPM - top dead spot angle"]];

  v19 = v65;
  if ((v65 & 0x400) == 0)
  {
LABEL_16:
    if ((v19 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_26:
  cyclingPowerMeasurementCharacteristic15 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  value15 = [cyclingPowerMeasurementCharacteristic15 value];
  v11 = &v11[[(FitnessService *)self readBytesFromNSData:value15 into:v67 startingAt:v11 length:2 info:@"CPM - bottom dead spot angle"]];

  if ((v65 & 0x800) != 0)
  {
LABEL_17:
    cyclingPowerMeasurementCharacteristic16 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
    value16 = [cyclingPowerMeasurementCharacteristic16 value];
    [(FitnessService *)self readBytesFromNSData:value16 into:v67 + 2 startingAt:v11 length:2 info:@"CPM - accumulated energy"];
  }

LABEL_18:
  if (WORD1(v65) != *(&self->lastPowerMeasurementReading.cycling_power_status_flags + 1))
  {
    p_fCurrentDataIsDuplicate = &self->fCurrentDataIsDuplicate;
    self->fCurrentDataIsDuplicate = 0;
    if ((v12 & 0x10) == 0)
    {
      if ((v13 & 0x20) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

LABEL_31:
    v37 = 0;
    goto LABEL_32;
  }

  v36 = *&self->_sendZeroForDuplicates & 0xC;
  v37 = v36 != 0;
  p_fCurrentDataIsDuplicate = &self->fCurrentDataIsDuplicate;
  self->fCurrentDataIsDuplicate = v37;
  if ((v12 & 0x10) == 0)
  {
    goto LABEL_33;
  }

  if (!v36 || DWORD2(v65) != *&self->lastPowerMeasurementReading.accumulated_torque)
  {
    goto LABEL_31;
  }

  v37 = WORD6(v65) == LOWORD(self->lastPowerMeasurementReading.wheel_revolution_data);
LABEL_32:
  *p_fCurrentDataIsDuplicate = v37;
LABEL_33:
  if ((v13 & 0x20) == 0)
  {
    if (v37)
    {
      goto LABEL_35;
    }

LABEL_42:
    firstDuplicateEventTimeStamp = self->firstDuplicateEventTimeStamp;
    self->firstDuplicateEventTimeStamp = 0;
    goto LABEL_43;
  }

  if (!v37 || HIWORD(v65) != HIWORD(self->lastPowerMeasurementReading.wheel_revolution_data))
  {
LABEL_41:
    *p_fCurrentDataIsDuplicate = 0;
    goto LABEL_42;
  }

  v52 = v66 == self->lastPowerMeasurementReading.last_wheel_event_time;
  *p_fCurrentDataIsDuplicate = v52;
  if (!v52)
  {
    goto LABEL_42;
  }

LABEL_35:
  if (!self->firstDuplicateEventTimeStamp)
  {
    v50 = atCopy;
    firstDuplicateEventTimeStamp = self->firstDuplicateEventTimeStamp;
    self->firstDuplicateEventTimeStamp = v50;
LABEL_43:
  }

  if (*p_fCurrentDataIsDuplicate && -[CyclingPowerService sendZeroForDuplicates](self, "sendZeroForDuplicates") && ([atCopy timeIntervalSinceDate:self->firstDuplicateEventTimeStamp], v53 < 1.5))
  {
    v54 = 0;
  }

  else
  {
    if ((v12 & 0x10) != 0)
    {
      [(CyclingPowerService *)self updatedSpeedMeasurementValueForRevolutions:DWORD2(v65) andWheelEventTime:WORD6(v65) timeStamp:atCopy];
    }

    if ((v13 & 0x20) != 0)
    {
      [(CyclingPowerService *)self updatedCadenceMeasurementValueForRevolutions:HIWORD(v65) andCrankEventTime:v66 timeStamp:atCopy];
    }

    [(CyclingPowerService *)self updatedPowerMeasurementValue:&v65 timeStamp:atCopy];
    v54 = 1;
  }

  v55 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    log = v55;
    peripheral = [(ClientService *)self peripheral];
    name = [peripheral name];
    v58 = SWORD1(v65);
    if ((v12 & 0x10) != 0)
    {
      v59 = @"✓";
    }

    else
    {
      v59 = &stru_1000BEA00;
    }

    if ((v13 & 0x20) != 0)
    {
      v60 = @"✓";
    }

    else
    {
      v60 = &stru_1000BEA00;
    }

    v61 = *p_fCurrentDataIsDuplicate;
    [atCopy timeIntervalSinceDate:self->firstDuplicateEventTimeStamp];
    *buf = 138413826;
    v69 = name;
    v70 = 1024;
    v71 = v58;
    v72 = 2112;
    v73 = v59;
    v74 = 2112;
    v75 = v60;
    v76 = 1024;
    v77 = v61;
    v78 = 2048;
    v79 = v62;
    v80 = 1024;
    v81 = v54;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "“%@” Measurement - POWER:%d SPEED:%@ CADENCE:%@ duplicate:%d secondsSinceFirstDuplicate:%f sending:%d", buf, 0x3Cu);
  }

  v56 = v66;
  *&self->lastPowerMeasurementReading.cycling_power_status_flags = v65;
  *&self->lastPowerMeasurementReading.last_wheel_event_time = v56;
  *&self->lastPowerMeasurementReading.min_angle = v67[0];
}

- (void)updatedVectorCharacteristicValue
{
  v19 = 0;
  v18 = 0;
  cyclingPowerVectorCharacteristic = [(CyclingPowerService *)self cyclingPowerVectorCharacteristic];
  value = [cyclingPowerVectorCharacteristic value];
  v5 = [(FitnessService *)self readBytesFromNSData:value into:&v18 startingAt:0 length:1 info:@"CPV - status flags"];

  v6 = v18;
  if (v18)
  {
    cyclingPowerVectorCharacteristic2 = [(CyclingPowerService *)self cyclingPowerVectorCharacteristic];
    value2 = [cyclingPowerVectorCharacteristic2 value];
    v11 = &v5[[(FitnessService *)self readBytesFromNSData:value2 into:&v18 + 2 startingAt:v5 length:2 info:@"CPV - crank revolutions"]];

    cyclingPowerVectorCharacteristic3 = [(CyclingPowerService *)self cyclingPowerVectorCharacteristic];
    value3 = [cyclingPowerVectorCharacteristic3 value];
    v5 = &v11[[(FitnessService *)self readBytesFromNSData:value3 into:&v18 + 4 startingAt:v11 length:2 info:@"CPV - crank time"]];

    v6 = v18;
    if ((v18 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v18 & 2) == 0)
  {
    goto LABEL_3;
  }

  cyclingPowerVectorCharacteristic4 = [(CyclingPowerService *)self cyclingPowerVectorCharacteristic];
  value4 = [cyclingPowerVectorCharacteristic4 value];
  v5 = &v5[[(FitnessService *)self readBytesFromNSData:value4 into:&v18 + 6 startingAt:v5 length:2 info:@"CPV - first crank measurement angle"]];

  v6 = v18;
  if ((v18 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

LABEL_9:
  cyclingPowerVectorCharacteristic5 = [(CyclingPowerService *)self cyclingPowerVectorCharacteristic];
  value5 = [cyclingPowerVectorCharacteristic5 value];
  v5 = &v5[[(FitnessService *)self readBytesFromNSData:value5 into:&v19 startingAt:v5 length:2 info:@"CPV - instantaneous force magnitude array"]];

  if ((v18 & 8) == 0)
  {
    return;
  }

LABEL_5:
  cyclingPowerVectorCharacteristic6 = [(CyclingPowerService *)self cyclingPowerVectorCharacteristic];
  value6 = [cyclingPowerVectorCharacteristic6 value];
  [(FitnessService *)self readBytesFromNSData:value6 into:&v19 + 2 startingAt:v5 length:2 info:@"CPV - instantaneous torque magnitude array"];
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  if (!error)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    characteristics = [service characteristics];
    v9 = [characteristics countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v41;
      v39 = CBUUIDSensorLocation;
      do
      {
        v12 = 0;
        do
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(characteristics);
          }

          v13 = *(*(&v40 + 1) + 8 * v12);
          cyclingPowerSensorLocationCharacteristic = [(CyclingPowerService *)self cyclingPowerSensorLocationCharacteristic];
          if (cyclingPowerSensorLocationCharacteristic)
          {
          }

          else
          {
            uUID = [v13 UUID];
            v16 = [CBUUID UUIDWithString:v39];
            v17 = [uUID isEqual:v16];

            if (v17)
            {
              [(CyclingPowerService *)self setCyclingPowerSensorLocationCharacteristic:v13];
LABEL_15:
              [(FitnessService *)self setNotify:1 forCharacteristic:v13];
              [peripheralCopy readValueForCharacteristic:v13];
              goto LABEL_29;
            }
          }

          cyclingPowerFeatureCharacteristic = [(CyclingPowerService *)self cyclingPowerFeatureCharacteristic];
          if (cyclingPowerFeatureCharacteristic)
          {
          }

          else
          {
            uUID2 = [v13 UUID];
            v20 = [CBUUID UUIDWithString:@"0x2A65"];
            v21 = [uUID2 isEqual:v20];

            if (v21)
            {
              [(CyclingPowerService *)self setCyclingPowerFeatureCharacteristic:v13];
              goto LABEL_15;
            }
          }

          cyclingPowerControlPointCharacteristic = [(CyclingPowerService *)self cyclingPowerControlPointCharacteristic];
          if (cyclingPowerControlPointCharacteristic)
          {
          }

          else
          {
            uUID3 = [v13 UUID];
            v24 = [CBUUID UUIDWithString:@"0x2A66"];
            v25 = [uUID3 isEqual:v24];

            if (v25)
            {
              [(CyclingPowerService *)self setCyclingPowerControlPointCharacteristic:v13];
LABEL_28:
              [(FitnessService *)self setNotify:0 forCharacteristic:v13];
              goto LABEL_29;
            }
          }

          cyclingPowerMeasurementCharacteristic = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
          if (cyclingPowerMeasurementCharacteristic)
          {
          }

          else
          {
            uUID4 = [v13 UUID];
            v28 = [CBUUID UUIDWithString:@"0x2A63"];
            v29 = [uUID4 isEqual:v28];

            if (v29)
            {
              [(CyclingPowerService *)self setCyclingPowerMeasurementCharacteristic:v13];
              goto LABEL_28;
            }
          }

          cyclingPowerVectorCharacteristic = [(CyclingPowerService *)self cyclingPowerVectorCharacteristic];
          if (cyclingPowerVectorCharacteristic)
          {

            goto LABEL_29;
          }

          uUID5 = [v13 UUID];
          v32 = [CBUUID UUIDWithString:@"0x2A64"];
          v33 = [uUID5 isEqual:v32];

          if (v33)
          {
            [(CyclingPowerService *)self setCyclingPowerVectorCharacteristic:v13];
            goto LABEL_28;
          }

LABEL_29:
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [characteristics countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v10);
    }

    [(ClientService *)self notifyDidStart];
    cyclingPowerMeasurementCharacteristic2 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];

    if (!cyclingPowerMeasurementCharacteristic2 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000734F0();
    }

    cyclingPowerVectorCharacteristic2 = [(CyclingPowerService *)self cyclingPowerVectorCharacteristic];

    if (!cyclingPowerVectorCharacteristic2 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100073524();
    }

    cyclingPowerFeatureCharacteristic2 = [(CyclingPowerService *)self cyclingPowerFeatureCharacteristic];

    if (!cyclingPowerFeatureCharacteristic2 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100073558();
    }

    cyclingPowerControlPointCharacteristic2 = [(CyclingPowerService *)self cyclingPowerControlPointCharacteristic];

    if (!cyclingPowerControlPointCharacteristic2 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007358C();
    }
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  if (!error)
  {
    v15 = characteristicCopy;
    cyclingPowerSensorLocationCharacteristic = [(CyclingPowerService *)self cyclingPowerSensorLocationCharacteristic];

    if (cyclingPowerSensorLocationCharacteristic == v15)
    {
      [(CyclingPowerService *)self updatedSensorLocationCharacteristicValue];
    }

    else
    {
      cyclingPowerFeatureCharacteristic = [(CyclingPowerService *)self cyclingPowerFeatureCharacteristic];

      if (cyclingPowerFeatureCharacteristic == v15)
      {
        [(CyclingPowerService *)self updatedFeatureCharacteristicValue];
      }

      else
      {
        cyclingPowerControlPointCharacteristic = [(CyclingPowerService *)self cyclingPowerControlPointCharacteristic];

        if (cyclingPowerControlPointCharacteristic == v15)
        {
          [(CyclingPowerService *)self updatedControlPointCharacteristicValue];
        }

        else
        {
          cyclingPowerMeasurementCharacteristic = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];

          if (cyclingPowerMeasurementCharacteristic == v15)
          {
            value = [v15 value];
            v14 = +[NSDate now];
            [(CyclingPowerService *)self updatedMeasurementCharacteristicValue:value at:v14];
          }

          else
          {
            cyclingPowerVectorCharacteristic = [(CyclingPowerService *)self cyclingPowerVectorCharacteristic];

            characteristicCopy = v15;
            if (cyclingPowerVectorCharacteristic != v15)
            {
              goto LABEL_13;
            }

            [(CyclingPowerService *)self updatedVectorCharacteristicValue];
          }
        }
      }
    }

    characteristicCopy = v15;
  }

LABEL_13:
}

@end