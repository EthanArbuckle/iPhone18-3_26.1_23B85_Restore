@interface CyclingPowerService
- (BOOL)matchesDistributedService:(id)a3;
- (BOOL)supportsHKQuantityType:(id)a3;
- (double)powerBalanceForValue:(double)a3 otherService:(id)a4 otherValue:(double)a5;
- (id)getDeviceInformationService;
- (id)originatingHKDevice;
- (id)sensorLocationSideString;
- (id)sensorLocationString;
- (id)updateComboString:(id)a3 withValue:(id)a4;
- (void)createDistributedHKDeviceWithSecondary:(id)a3;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)readWheelSize;
- (void)receiveDeviceInfoUpdateNotification:(id)a3;
- (void)start;
- (void)updateForSensorLocation;
- (void)updatedCadenceMeasurementValueForRevolutions:(unsigned __int16)a3 andCrankEventTime:(unsigned __int16)a4 timeStamp:(id)a5;
- (void)updatedFeatureCharacteristicValue;
- (void)updatedMeasurementCharacteristicValue:(id)a3 at:(id)a4;
- (void)updatedPowerMeasurementValue:(id *)a3 timeStamp:(id)a4;
- (void)updatedSensorLocationCharacteristicValue;
- (void)updatedSpeedMeasurementValueForRevolutions:(unsigned int)a3 andWheelEventTime:(unsigned __int16)a4 timeStamp:(id)a5;
- (void)updatedVectorCharacteristicValue;
@end

@implementation CyclingPowerService

- (void)readWheelSize
{
  v3 = [(ClientService *)self peripheral];
  v4 = [v3 customProperty:@"wheelCircumferenceMM"];

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

  v9 = [(ClientService *)self peripheral];
  v10 = [(ClientService *)self service];
  [v9 discoverCharacteristics:v8 forService:v10];
}

- (BOOL)supportsHKQuantityType:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:HKQuantityTypeIdentifierCyclingPower];

  if ((v6 & 1) == 0)
  {
    v8 = [v4 identifier];
    if ([v8 isEqualToString:HKQuantityTypeIdentifierCyclingSpeed])
    {
    }

    else
    {
      v9 = [v4 identifier];
      v10 = [v9 isEqualToString:HKQuantityTypeIdentifierDistanceCycling];

      if ((v10 & 1) == 0)
      {
        v13 = [v4 identifier];
        v14 = [v13 isEqualToString:HKQuantityTypeIdentifierCyclingCadence];

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
  v2 = [(ClientService *)self manager];
  v3 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
  v4 = [v2 clientServiceForUUID:v3];

  return v4;
}

- (void)createDistributedHKDeviceWithSecondary:(id)a3
{
  v63 = a3;
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
  v62 = self;
  v6 = [(CyclingPowerService *)self isSensorLocationLeft];
  v7 = v63;
  if (v6)
  {
    v7 = self;
  }

  v8 = v7;
  v9 = [(CyclingPowerService *)self isSensorLocationLeft];
  v10 = v63;
  if (!v9)
  {
    v10 = self;
  }

  v64 = v10;
  v11 = [(ClientService *)v8 peripheral];
  v12 = [v11 name];
  v13 = [(ClientService *)v64 peripheral];
  v14 = [v13 name];
  v61 = [NSString stringWithFormat:@"%@/%@", v12, v14];

  v15 = [(ClientService *)v8 peripheral];
  v16 = [v15 hkDevice];
  v17 = [v16 manufacturer];
  v18 = v17;
  if (v17)
  {
    v60 = v17;
  }

  else
  {
    v19 = [(ClientService *)v64 peripheral];
    v20 = [v19 hkDevice];
    v60 = [v20 manufacturer];
  }

  v21 = [(ClientService *)v8 peripheral];
  v22 = [v21 hkDevice];
  v23 = [v22 model];
  v24 = v23;
  if (v23)
  {
    v59 = v23;
  }

  else
  {
    v25 = [(ClientService *)v64 peripheral];
    v26 = [v25 hkDevice];
    v59 = [v26 model];
  }

  v27 = [(ClientService *)v8 peripheral];
  v28 = [v27 hkDevice];
  v29 = [v28 hardwareVersion];
  v30 = v29;
  if (v29)
  {
    v58 = v29;
  }

  else
  {
    v31 = [(ClientService *)v64 peripheral];
    v32 = [v31 hkDevice];
    v58 = [v32 hardwareVersion];
  }

  v33 = [(ClientService *)v8 peripheral];
  v34 = [v33 hkDevice];
  v35 = [v34 firmwareVersion];
  v36 = v35;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v38 = [(ClientService *)v64 peripheral];
    v39 = [v38 hkDevice];
    v37 = [v39 firmwareVersion];
  }

  if (v4)
  {
    v40 = [v4 alloc];
    v41 = [(ClientService *)v8 peripheral];
    v42 = [v41 identifier];
    v43 = [v42 UUIDString];
    v44 = [(ClientService *)v64 peripheral];
    v45 = [v44 identifier];
    v46 = [v45 UUIDString];
    v47 = [NSString stringWithFormat:@"%@/%@", v43, v46];
    v48 = [v40 initWithName:v61 manufacturer:v60 model:v59 hardwareVersion:v58 firmwareVersion:v37 softwareVersion:0 localIdentifier:v47 UDIDeviceIdentifier:0];

    v49 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v49;
      v51 = [v48 name];
      v52 = [v48 manufacturer];
      v53 = [v48 model];
      v54 = [v48 hardwareVersion];
      v55 = [v48 firmwareVersion];
      v56 = [v48 localIdentifier];
      *buf = 138413570;
      *&buf[4] = v51;
      *&buf[12] = 2112;
      *&buf[14] = v52;
      *&buf[22] = 2112;
      v70 = v53;
      *v71 = 2112;
      *&v71[2] = v54;
      v72 = 2112;
      v73 = v55;
      v74 = 2112;
      v75 = v56;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Created distributed HKDevice name:“%@” manufacturer:“%@” model:“%@” HW:“%@” FW:“%@” localID:“%@”", buf, 0x3Eu);
    }

    [(CyclingPowerService *)v62 setComboHKDevice:v48];
    [(CyclingPowerService *)v63 setComboHKDevice:v48];
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

- (id)updateComboString:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 length])
  {
    if ([v6 containsString:@"/"] || objc_msgSend(v7, "isEqualToString:", v6))
    {
      v8 = v6;
    }

    else
    {
      if ([(CyclingPowerService *)self isSensorLocationLeft])
      {
        v11 = v7;
      }

      else
      {
        v11 = v6;
      }

      if ([(CyclingPowerService *)self isSensorLocationLeft])
      {
        v12 = v6;
      }

      else
      {
        v12 = v7;
      }

      v8 = [NSString stringWithFormat:@"%@/%@", v11, v12];
    }
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v9;
}

- (void)receiveDeviceInfoUpdateNotification:(id)a3
{
  v4 = a3;
  v52.receiver = self;
  v52.super_class = CyclingPowerService;
  [(FitnessService *)&v52 receiveDeviceInfoUpdateNotification:v4];
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100072DEC(v5, v4, self);
  }

  v6 = [v4 name];
  if (![v6 isEqualToString:@"DeviceInformationUpdate"])
  {
    goto LABEL_29;
  }

  v7 = [(ClientService *)self peripheral];
  v8 = [v7 identifier];
  v9 = [v8 UUIDString];
  v10 = [v4 userInfo];
  v11 = [v10 valueForKey:@"UUID"];
  v12 = [v9 isEqualToString:v11];

  if (v12)
  {
    v13 = [v4 userInfo];
    v14 = [v13 valueForKey:@"PnP"];

    if (v14)
    {
      [(CyclingPowerService *)self updateZeroDuplicateValues];
    }

    v15 = [v4 userInfo];
    v16 = [v15 valueForKey:@"ModelNumber"];

    if (v16)
    {
      [(CyclingPowerService *)self updateZeroDuplicateValues];
      if (self->fDistributedPower)
      {
        v17 = [(CyclingPowerService *)self comboHKDevice];

        if (v17)
        {
          v18 = [(CyclingPowerService *)self comboHKDevice];
          [v18 _setModel:v16];
        }
      }
    }

    v19 = [v4 userInfo];
    v20 = [v19 valueForKey:@"FirmwareRevision"];

    if (v20)
    {
      if (self->fDistributedPower)
      {
        v21 = [(CyclingPowerService *)self comboHKDevice];

        if (v21)
        {
          v22 = [(CyclingPowerService *)self comboHKDevice];
          v23 = [(CyclingPowerService *)self comboHKDevice];
          v24 = [v23 firmwareVersion];
          v25 = [(CyclingPowerService *)self updateComboString:v24 withValue:v20];
          [v22 _setFirmwareVersion:v25];
        }
      }
    }

    v26 = [v4 userInfo];
    v27 = [v26 valueForKey:@"HardwareRevision"];

    if (v27)
    {
      if (self->fDistributedPower)
      {
        v28 = [(CyclingPowerService *)self comboHKDevice];

        if (v28)
        {
          v29 = [(CyclingPowerService *)self comboHKDevice];
          v30 = [(CyclingPowerService *)self comboHKDevice];
          v31 = [v30 hardwareVersion];
          v32 = [(CyclingPowerService *)self updateComboString:v31 withValue:v27];
          [v29 _setHardwareVersion:v32];
        }
      }
    }

    v33 = [v4 userInfo];
    v6 = [v33 valueForKey:@"ManufacturerName"];

    if (v6)
    {
      [(CyclingPowerService *)self updateZeroDuplicateValues];
      if (self->fDistributedPower)
      {
        v34 = [(CyclingPowerService *)self comboHKDevice];

        if (v34)
        {
          v35 = [(CyclingPowerService *)self comboHKDevice];
          [v35 _setManufacturer:v6];
        }
      }
    }

    if (self->fDistributedPower && ([(CyclingPowerService *)self comboHKDevice], v36 = objc_claimAutoreleasedReturnValue(), v36, v36))
    {
      v37 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        log = v37;
        v51 = [(CyclingPowerService *)self comboHKDevice];
        v46 = [v51 name];
        v50 = [(CyclingPowerService *)self comboHKDevice];
        v38 = [v50 manufacturer];
        v49 = [(CyclingPowerService *)self comboHKDevice];
        v39 = [v49 model];
        v47 = [(CyclingPowerService *)self comboHKDevice];
        v40 = [v47 hardwareVersion];
        v41 = [(CyclingPowerService *)self comboHKDevice];
        v42 = [v41 firmwareVersion];
        v43 = [(CyclingPowerService *)self comboHKDevice];
        v44 = [v43 localIdentifier];
        *buf = 138413570;
        v54 = v46;
        v55 = 2112;
        v56 = v38;
        v57 = 2112;
        v58 = v39;
        v59 = 2112;
        v60 = v40;
        v61 = 2112;
        v62 = v42;
        v63 = 2112;
        v64 = v44;
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
    v3 = [(CyclingPowerService *)self comboHKDevice];

    if (!v3)
    {
      v4 = +[FitnessDeviceManager instance];
      v7 = [v4 findMatchingDistributedFitnessService:self];

      v5 = v7;
      if (v7 && v7->fFeatureCharacteristicRead && v7->fSensorLocationCharacteristicRead)
      {
        if ([(CyclingPowerService *)self isSensorLocationLeft])
        {
          v7->fIsSecondary = 1;
          v6 = self;
        }

        else
        {
          self->fIsSecondary = 1;
          v6 = v7;
        }

        [(CyclingPowerService *)v6 createDistributedHKDeviceWithSecondary:?];
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
  v3 = [(CyclingPowerService *)self cyclingPowerSensorLocationCharacteristic];
  v4 = [v3 value];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(CyclingPowerService *)self cyclingPowerSensorLocationCharacteristic];
    v7 = [v6 value];
    [(FitnessService *)self readBytesFromNSData:v7 into:&self->fSensorLocation startingAt:0 length:1 info:@"Cycling Power Sensor Location Characteristic Value"];

    v8 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(CyclingPowerService *)self sensorLocationString];
      v11 = [(ClientService *)self peripheral];
      v12 = [v11 name];
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v12;
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
  v3 = [(CyclingPowerService *)self cyclingPowerFeatureCharacteristic];
  v4 = [v3 value];
  v5 = [v4 length];

  if (v5 > 3)
  {
    v8 = 4;
  }

  else
  {
    v6 = [(CyclingPowerService *)self cyclingPowerFeatureCharacteristic];
    v7 = [v6 value];
    v8 = [v7 length];

    if (v8 <= 2)
    {
      v9 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_1000730C4(v9, self);
      }
    }
  }

  v10 = [(CyclingPowerService *)self cyclingPowerFeatureCharacteristic];
  v11 = [v10 value];
  [(FitnessService *)self readBytesFromNSData:v11 into:&self->_sendZeroForDuplicates startingAt:0 length:v8 info:@"Cycling Power Feature Characteristic Value"];

  self->fDistributedPower = (*&self->_sendZeroForDuplicates & 0x200000) != 0;
  v12 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [(ClientService *)self peripheral];
    v15 = [v14 name];
    v16 = v15;
    v17 = @"NON-";
    v18 = *&self->_sendZeroForDuplicates;
    if (self->fDistributedPower)
    {
      v17 = &stru_1000BEA00;
    }

    *v21 = 138413058;
    *&v21[4] = v15;
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

- (BOOL)matchesDistributedService:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 isDistributed])
    {
      if ([(CyclingPowerService *)self isDistributed])
      {
        v6 = [v5 peripheral];
        v7 = [v6 identifier];
        v8 = [v7 UUIDString];
        v9 = [(ClientService *)self peripheral];
        v10 = [v9 identifier];
        v11 = [v10 UUIDString];
        v12 = [v8 isEqualToString:v11];

        if ((v12 & 1) == 0)
        {
          v13 = [(FitnessService *)self vendorID];
          if (v13 == [v5 vendorID])
          {
            v14 = [(FitnessService *)self productID];
            if (v14 == [v5 productID])
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

- (void)updatedSpeedMeasurementValueForRevolutions:(unsigned int)a3 andWheelEventTime:(unsigned __int16)a4 timeStamp:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    v25 = v9;
    v26 = [(ClientService *)self peripheral];
    v27 = [v26 name];
    v28 = 138413570;
    v29 = v27;
    v30 = 1024;
    *v31 = a3;
    *&v31[4] = 1024;
    *&v31[6] = a3;
    *v32 = 1024;
    *&v32[2] = v5;
    *v33 = 1024;
    *&v33[2] = v5;
    LOWORD(v34[0]) = 2048;
    *(v34 + 2) = vcvtd_n_f64_u32(v5, 0xBuLL);
    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "“%@” READ CP Measurement SPEED, CumWheelRev:%d (0x%08X) last Wheel Event Time:%d (0x%04X) (%f in sec)", &v28, 0x2Eu);
  }

  p_lastPowerMeasurementReading = &self->lastPowerMeasurementReading;
  if (*&self->lastPowerMeasurementReading.accumulated_torque || LOWORD(self->lastPowerMeasurementReading.wheel_revolution_data))
  {
    v11 = [FitnessService hkQuantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingSpeed];
    v12 = [FitnessService hkQuantityTypeForIdentifier:HKQuantityTypeIdentifierDistanceCycling];
    if (v11 | v12)
    {
      v13 = v5 - LOWORD(self->lastPowerMeasurementReading.wheel_revolution_data) + ((v5 - LOWORD(self->lastPowerMeasurementReading.wheel_revolution_data)) >> 31 << 16);
      if (v13)
      {
        v14 = vcvtd_n_f64_u32(v13, 0xBuLL);
        v15 = self->_wheelDiameterInInches * ((a3 - *&self->lastPowerMeasurementReading.accumulated_torque) * 3.14159265);
        v16 = v15 / v14 * 0.0568181818;
        if (v16 >= 0.0 && v16 < 200.0)
        {
          v24 = [NSDate dateWithTimeInterval:v8 sinceDate:-v14];
          if (v11 && [(FitnessService *)self isCollectingHKQuantityType:v11])
          {
            [(FitnessService *)self recordDatum:v24 start:v8 end:v11 quantityType:v16];
            [(FitnessService *)self storeDatumsForQuantityType:v11];
          }

          if (v12 && [(FitnessService *)self isCollectingHKQuantityType:v12])
          {
            [(FitnessService *)self recordDatum:v24 start:v8 end:v12 quantityType:v15 * 0.0254];
            [(FitnessService *)self storeDatumsForQuantityType:v12];
          }
        }

        else
        {
          v18 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            v19 = v18;
            v20 = [(ClientService *)self peripheral];
            v21 = [v20 name];
            v22 = *&p_lastPowerMeasurementReading->accumulated_torque;
            wheel_revolution_data_low = LOWORD(p_lastPowerMeasurementReading->wheel_revolution_data);
            v28 = 138413570;
            v29 = v21;
            v30 = 2048;
            *v31 = v16;
            *&v31[8] = 1024;
            *v32 = a3;
            *&v32[4] = 1024;
            *v33 = v5;
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
          [(FitnessService *)self recordDatum:v8 start:v8 end:v11 quantityType:0.0];
          [(FitnessService *)self storeDatumsForQuantityType:v11];
        }

        if (v12 && [(FitnessService *)self isCollectingHKQuantityType:v12])
        {
          [(FitnessService *)self recordDatum:v8 start:v8 end:v12 quantityType:0.0];
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

- (void)updatedCadenceMeasurementValueForRevolutions:(unsigned __int16)a3 andCrankEventTime:(unsigned __int16)a4 timeStamp:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    v17 = v9;
    v18 = [(ClientService *)self peripheral];
    v19 = [v18 name];
    v26 = 138413570;
    v27 = v19;
    v28 = 1024;
    *v29 = v6;
    *&v29[4] = 1024;
    *&v29[6] = v6;
    *v30 = 1024;
    *&v30[2] = v5;
    *v31 = 1024;
    *&v31[2] = v5;
    *v32 = 2048;
    *&v32[2] = vcvtd_n_f64_u32(v5, 0xAuLL);
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
        v12 = v5 - self->lastPowerMeasurementReading.last_wheel_event_time + ((v5 - self->lastPowerMeasurementReading.last_wheel_event_time) >> 31 << 16);
        if (v12)
        {
          v13 = v6 - HIWORD(self->lastPowerMeasurementReading.wheel_revolution_data);
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
                v22 = [(ClientService *)self peripheral];
                v23 = [v22 name];
                wheel_revolution_data_high = HIWORD(p_lastPowerMeasurementReading->wheel_revolution_data);
                last_wheel_event_time = p_lastPowerMeasurementReading->last_wheel_event_time;
                v26 = 138413570;
                v27 = v23;
                v28 = 2048;
                *v29 = v15;
                *&v29[8] = 1024;
                *v30 = v6;
                *&v30[4] = 1024;
                *v31 = v5;
                *&v31[4] = 1024;
                *v32 = wheel_revolution_data_high;
                *&v32[4] = 1024;
                *&v32[6] = last_wheel_event_time;
                _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "“%@” Invalid cadence detected:%f rpm rev count=0x%04X timestamp=0x%04X previous rev count=0x%04X timestamp=0x%04X", &v26, 0x2Eu);
              }
            }

            else
            {
              v16 = [NSDate dateWithTimeInterval:v8 sinceDate:-v14];
              [(FitnessService *)self recordDatum:v16 start:v8 end:v11 quantityType:v15];
              [(FitnessService *)self storeDatumsForQuantityType:v11];
            }
          }
        }

        else if (self->fCurrentDataIsDuplicate && [(CyclingPowerService *)self sendDuplicateReadingsAsZero])
        {
          [(FitnessService *)self recordDatum:v8 start:v8 end:v11 quantityType:0.0];
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

- (double)powerBalanceForValue:(double)a3 otherService:(id)a4 otherValue:(double)a5
{
  v8 = a4;
  if (a3 + a5 <= 0.0)
  {
    goto LABEL_9;
  }

  if (!-[CyclingPowerService isSensorLocationLeft](self, "isSensorLocationLeft") || ![v8 isSensorLocationRight])
  {
    if (-[CyclingPowerService isSensorLocationRight](self, "isSensorLocationRight") && [v8 isSensorLocationLeft])
    {
      v9 = a5 * 100.0;
      goto LABEL_8;
    }

LABEL_9:
    v10 = 50.0;
    goto LABEL_10;
  }

  v9 = a3 * 100.0;
LABEL_8:
  v10 = v9 / (a3 + a5);
LABEL_10:

  return v10;
}

- (id)originatingHKDevice
{
  if ([(CyclingPowerService *)self isDistributed]&& ([(CyclingPowerService *)self comboHKDevice], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(CyclingPowerService *)self comboHKDevice];
  }

  else
  {
    v5 = [(ClientService *)self peripheral];
    v4 = [v5 hkDevice];
  }

  return v4;
}

- (void)updatedPowerMeasurementValue:(id *)a3 timeStamp:(id)a4
{
  v6 = a4;
  v7 = [FitnessService hkQuantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingPower];
  if (v7 && [(FitnessService *)self isCollectingHKQuantityType:v7])
  {
    v8 = +[FitnessDeviceManager instance];
    v9 = [v8 findMatchingDistributedFitnessService:self];

    if ([(CyclingPowerService *)self isDistributed])
    {
      if (v9)
      {
        v10 = [(CyclingPowerService *)self comboHKDevice];

        if (v10)
        {
          if (!self->_lastDistributedDatum)
          {
            goto LABEL_40;
          }

          v11 = [v9 lastDistributedDatum];
          if (!v11)
          {
            goto LABEL_31;
          }

          v12 = v11;
          v13 = [v9 lastDistributedDatum];
          v14 = [v13 dateInterval];
          v15 = [v14 startDate];
          [v6 timeIntervalSinceDate:v15];
          v17 = fabs(v16);

          if (v17 >= 1.5)
          {
LABEL_31:
            v54 = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
            [v54 _value];
            v56 = v55 + v55;

            if (v56 < 0.0 || v56 >= 5000.0)
            {
              v64 = qword_1000DDBC8;
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
              {
                v65 = v64;
                v66 = [(ClientService *)self peripheral];
                v67 = [v66 name];
                v68 = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
                [v68 _value];
                v70 = v69;
                v71 = [(CyclingPowerService *)self sensorLocationSideString];
                *buf = 138413314;
                v172 = v67;
                v173 = 2048;
                *v174 = v70;
                *&v174[8] = 2114;
                *&v174[10] = v71;
                *&v174[18] = 2048;
                *&v174[20] = v56;
                v175 = 2048;
                v176 = 0x4049000000000000;
                _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "“%@” READ CP Measurement POWER distributed single unit doubling qty:%f (%{public}@) -> %f (INVALID VALUE) balance = %f", buf, 0x34u);
              }
            }

            else
            {
              v57 = [(HKQuantityDatum *)self->_lastDistributedDatum dateInterval];
              v58 = [v57 startDate];
              v59 = [(HKQuantityDatum *)self->_lastDistributedDatum dateInterval];
              v60 = [v59 endDate];
              v61 = [(FitnessService *)self createDatum:v58 start:v60 end:v7 quantityType:v56];

              v62 = qword_1000DDBC8;
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
              {
                loga = v62;
                v166 = [(ClientService *)self peripheral];
                v156 = [v166 name];
                v106 = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
                [v106 _value];
                v108 = v107;
                v109 = [(CyclingPowerService *)self sensorLocationSideString];
                v110 = [v61 quantity];
                [v110 _value];
                *buf = 138413314;
                v172 = v156;
                v173 = 2048;
                *v174 = v108;
                *&v174[8] = 2114;
                *&v174[10] = v109;
                *&v174[18] = 2048;
                *&v174[20] = v111;
                v175 = 2048;
                v176 = 0x4049000000000000;
                _os_log_debug_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEBUG, "“%@” READ CP Measurement POWER distributed single unit doubling qty:%f (%{public}@) -> %f balance = %f", buf, 0x34u);
              }

              [(FitnessService *)self recordDatum:v61 forType:v7];
              v63 = [(CyclingPowerService *)self comboHKDevice];
              [(FitnessService *)self storeDatumsForQuantityType:v7 usingHKDevice:v63];
            }

            goto LABEL_40;
          }

          v18 = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
          [v18 _value];
          v20 = v19;
          v21 = [v9 lastDistributedDatum];
          v22 = [v21 quantity];
          [v22 _value];
          [(CyclingPowerService *)self powerBalanceForValue:v9 otherService:v20 otherValue:v23];
          v25 = v24;

          v26 = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
          [v26 _value];
          v28 = v27;
          v29 = [v9 lastDistributedDatum];
          v30 = [v29 quantity];
          [v30 _value];
          v32 = v28 + v31;

          if (v32 < 0.0 || v32 >= 5000.0)
          {
            v72 = qword_1000DDBC8;
            if (!os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_39;
            }

            v159 = v72;
            v169 = [(ClientService *)self peripheral];
            v146 = [v169 name];
            logd = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
            [logd _value];
            v130 = v129;
            v131 = [(CyclingPowerService *)self sensorLocationSideString];
            v154 = [v9 lastDistributedDatum];
            v150 = [v154 quantity];
            [v150 _value];
            v133 = v132;
            v134 = [v9 peripheral];
            v135 = [v134 name];
            v136 = [v9 sensorLocationSideString];
            *buf = 138414082;
            v172 = v146;
            v173 = 2048;
            *v174 = v130;
            *&v174[8] = 2114;
            *&v174[10] = v131;
            *&v174[18] = 2048;
            *&v174[20] = v133;
            v175 = 2112;
            v176 = v135;
            v177 = 2114;
            v178 = v136;
            v179 = 2048;
            v180 = v32;
            v181 = 2048;
            v182 = v25;
            v36 = v159;
            _os_log_error_impl(&_mh_execute_header, v159, OS_LOG_TYPE_ERROR, "“%@” READ CP Measurement POWER distributed combined units qty:%f (%{public}@) + %f (“%@” - %{public}@) -> %f (INVALID VALUE) balance:%f", buf, 0x52u);
          }

          else
          {
            v33 = [v9 lastDistributedDatum];
            v34 = [v33 dateInterval];
            v35 = [v34 startDate];
            v36 = [(FitnessService *)self createDatum:v35 start:v6 end:v7 quantityType:v32];

            [(FitnessService *)self recordDatum:v36 forType:v7];
            v37 = [(CyclingPowerService *)self comboHKDevice];
            [(FitnessService *)self storeDatumsForQuantityType:v7 usingHKDevice:v37];

            v38 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
            {
              v160 = v38;
              v170 = [(ClientService *)self peripheral];
              v147 = [v170 name];
              log = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
              [log _value];
              v138 = v137;
              v139 = [(CyclingPowerService *)self sensorLocationSideString];
              v155 = [v9 lastDistributedDatum];
              v151 = [v155 quantity];
              [v151 _value];
              v141 = v140;
              v144 = [v9 peripheral];
              v142 = [v144 name];
              v143 = [v9 sensorLocationSideString];
              *buf = 138414082;
              v172 = v147;
              v173 = 2048;
              *v174 = v138;
              *&v174[8] = 2114;
              *&v174[10] = v139;
              *&v174[18] = 2048;
              *&v174[20] = v141;
              v175 = 2112;
              v176 = v142;
              v177 = 2114;
              v178 = v143;
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
          v73 = [(FitnessService *)self createDatum:v6 start:v6 end:v7 quantityType:*(&a3->var0 + 1)];
          lastDistributedDatum = self->_lastDistributedDatum;
          self->_lastDistributedDatum = v73;

          v75 = [v9 lastDistributedDatum];

          if (v75)
          {
            v76 = [v9 lastDistributedDatum];
            v77 = [v76 dateInterval];
            v78 = [v77 startDate];
            [v6 timeIntervalSinceDate:v78];
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
              v81 = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
              [v81 _value];
              v83 = v82;
              v84 = [v9 lastDistributedDatum];
              v85 = [v84 quantity];
              [v85 _value];
              [(CyclingPowerService *)self powerBalanceForValue:v9 otherService:v83 otherValue:v86];
              v88 = v87;

              v89 = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
              [v89 _value];
              v91 = v90;
              v92 = [v9 lastDistributedDatum];
              v93 = [v92 quantity];
              [v93 _value];
              v95 = v91 + v94;

              if (v95 < 0.0 || v95 >= 5000.0)
              {
                v104 = qword_1000DDBC8;
                if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
                {
                  v157 = v104;
                  v167 = [(ClientService *)self peripheral];
                  v148 = [v167 name];
                  logc = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
                  [logc _value];
                  v113 = v112;
                  v114 = [(CyclingPowerService *)self sensorLocationSideString];
                  v152 = [v9 lastDistributedDatum];
                  v115 = [v152 quantity];
                  [v115 _value];
                  v117 = v116;
                  v118 = [v9 peripheral];
                  v119 = [v118 name];
                  v120 = [v9 sensorLocationSideString];
                  *buf = 138414082;
                  v172 = v148;
                  v173 = 2048;
                  *v174 = v113;
                  *&v174[8] = 2114;
                  *&v174[10] = v114;
                  *&v174[18] = 2048;
                  *&v174[20] = v117;
                  v175 = 2112;
                  v176 = v119;
                  v177 = 2114;
                  v178 = v120;
                  v179 = 2048;
                  v180 = v95;
                  v181 = 2048;
                  v182 = v88;
                  _os_log_error_impl(&_mh_execute_header, v157, OS_LOG_TYPE_ERROR, "“%@” READ CP Measurement POWER distributed combined units qty:%f (%{public}@) + %f (“%@” - %{public}@) -> %f (INVALID VALUE) balance:%f", buf, 0x52u);
                }
              }

              else
              {
                v96 = [v9 lastDistributedDatum];
                v97 = [v96 dateInterval];
                v98 = [v97 startDate];
                v99 = [(FitnessService *)self createDatum:v98 start:v6 end:v7 quantityType:v95];

                [(FitnessService *)self recordDatum:v99 forType:v7];
                v100 = [(CyclingPowerService *)self comboHKDevice];
                [(FitnessService *)self storeDatumsForQuantityType:v7 usingHKDevice:v100];

                v101 = qword_1000DDBC8;
                if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
                {
                  v158 = v101;
                  v168 = [(ClientService *)self peripheral];
                  v145 = [v168 name];
                  logb = [(HKQuantityDatum *)self->_lastDistributedDatum quantity];
                  [logb _value];
                  v122 = v121;
                  v123 = [(CyclingPowerService *)self sensorLocationSideString];
                  v153 = [v9 lastDistributedDatum];
                  v149 = [v153 quantity];
                  [v149 _value];
                  v125 = v124;
                  v126 = [v9 peripheral];
                  v127 = [v126 name];
                  v128 = [v9 sensorLocationSideString];
                  *buf = 138414082;
                  v172 = v145;
                  v173 = 2048;
                  *v174 = v122;
                  *&v174[8] = 2114;
                  *&v174[10] = v123;
                  *&v174[18] = 2048;
                  *&v174[20] = v125;
                  v175 = 2112;
                  v176 = v127;
                  v177 = 2114;
                  v178 = v128;
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
      v39 = *(&a3->var0 + 1);
      if ((*(&a3->var0 + 1) >> 3) > 0x270u)
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

    [(FitnessService *)self recordDatum:v6 start:v6 end:v7 quantityType:v39];
    [(FitnessService *)self storeDatumsForQuantityType:v7];
    var0 = a3->var0;
    v42 = qword_1000DDBC8;
    v43 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG);
    if (var0)
    {
      if (v43)
      {
        v52 = vcvtd_n_f64_u32(LOBYTE(a3->var1), 1uLL);
        v44 = v42;
        v45 = [(ClientService *)self peripheral];
        v46 = [v45 name];
        v53 = &stru_1000BEA00;
        *buf = 138413058;
        v173 = 1024;
        v172 = v46;
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
      v45 = [(ClientService *)self peripheral];
      v46 = [v45 name];
      v47 = &stru_1000BEA00;
      *buf = 138412802;
      v172 = v46;
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

- (void)updatedMeasurementCharacteristicValue:(id)a3 at:(id)a4
{
  v5 = a4;
  v67[0] = 0;
  v65 = 0u;
  v66 = 0u;
  v6 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  v7 = [v6 value];
  v8 = [(FitnessService *)self readBytesFromNSData:v7 into:&v65 startingAt:0 length:2 info:@"CPM - status flags"];

  v9 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  v10 = [v9 value];
  v11 = [(FitnessService *)self readBytesFromNSData:v10 into:&v65 + 2 startingAt:v8 length:2 info:@"CPM - instantaneous power"]+ v8;

  v12 = v65;
  if (v65)
  {
    v20 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
    v21 = [v20 value];
    v11 = &v11[[(FitnessService *)self readBytesFromNSData:v21 into:&v65 + 4 startingAt:v11 length:1 info:@"CPM - power balance"]];

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

  v22 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  v23 = [v22 value];
  v11 = &v11[[(FitnessService *)self readBytesFromNSData:v23 into:&v65 + 6 startingAt:v11 length:2 info:@"CPM - accumulated torque"]];

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
  v24 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  v25 = [v24 value];
  v26 = &v11[[(FitnessService *)self readBytesFromNSData:v25 into:&v65 + 8 startingAt:v11 length:4 info:@"CPM - wheel revolutions"]];

  v27 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  v28 = [v27 value];
  v11 = &v26[[(FitnessService *)self readBytesFromNSData:v28 into:&v65 | 0xC startingAt:v26 length:2 info:@"CPM - wheel event time"]];

  v13 = v65;
  if ((v65 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v14 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  v15 = [v14 value];
  v16 = &v11[[(FitnessService *)self readBytesFromNSData:v15 into:&v65 | 0xE startingAt:v11 length:2 info:@"CPM - crank revolutions"]];

  v17 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  v18 = [v17 value];
  v11 = &v16[[(FitnessService *)self readBytesFromNSData:v18 into:&v66 startingAt:v16 length:2 info:@"CPM - crank event time"]];

  v19 = v65;
  if ((v65 & 0x40) != 0)
  {
LABEL_11:
    v29 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
    v30 = [v29 value];
    v31 = &v11[[(FitnessService *)self readBytesFromNSData:v30 into:&v66 + 2 startingAt:v11 length:2 info:@"CPM - extreme force magnitude max"]];

    v32 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
    v33 = [v32 value];
    v11 = &v31[[(FitnessService *)self readBytesFromNSData:v33 into:&v66 + 4 startingAt:v31 length:2 info:@"CPM - extreme force magnitude min"]];

    v19 = v65;
  }

LABEL_12:
  if ((v19 & 0x80) != 0)
  {
    v39 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
    v40 = [v39 value];
    v41 = &v11[[(FitnessService *)self readBytesFromNSData:v40 into:&v66 + 6 startingAt:v11 length:2 info:@"CPM - extreme torque magnitude max"]];

    v42 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
    v43 = [v42 value];
    v11 = &v41[[(FitnessService *)self readBytesFromNSData:v43 into:&v66 + 8 startingAt:v41 length:2 info:@"CPM - extreme torque magnitude min"]];

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
  v44 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  v45 = [v44 value];
  v11 = &v11[[(FitnessService *)self readBytesFromNSData:v45 into:buf startingAt:v11 length:4 info:@"CPM - extreme angles"]];

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
  v46 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  v47 = [v46 value];
  v11 = &v11[[(FitnessService *)self readBytesFromNSData:v47 into:&v66 + 14 startingAt:v11 length:2 info:@"CPM - top dead spot angle"]];

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
  v48 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
  v49 = [v48 value];
  v11 = &v11[[(FitnessService *)self readBytesFromNSData:v49 into:v67 startingAt:v11 length:2 info:@"CPM - bottom dead spot angle"]];

  if ((v65 & 0x800) != 0)
  {
LABEL_17:
    v34 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
    v35 = [v34 value];
    [(FitnessService *)self readBytesFromNSData:v35 into:v67 + 2 startingAt:v11 length:2 info:@"CPM - accumulated energy"];
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
    v50 = v5;
    firstDuplicateEventTimeStamp = self->firstDuplicateEventTimeStamp;
    self->firstDuplicateEventTimeStamp = v50;
LABEL_43:
  }

  if (*p_fCurrentDataIsDuplicate && -[CyclingPowerService sendZeroForDuplicates](self, "sendZeroForDuplicates") && ([v5 timeIntervalSinceDate:self->firstDuplicateEventTimeStamp], v53 < 1.5))
  {
    v54 = 0;
  }

  else
  {
    if ((v12 & 0x10) != 0)
    {
      [(CyclingPowerService *)self updatedSpeedMeasurementValueForRevolutions:DWORD2(v65) andWheelEventTime:WORD6(v65) timeStamp:v5];
    }

    if ((v13 & 0x20) != 0)
    {
      [(CyclingPowerService *)self updatedCadenceMeasurementValueForRevolutions:HIWORD(v65) andCrankEventTime:v66 timeStamp:v5];
    }

    [(CyclingPowerService *)self updatedPowerMeasurementValue:&v65 timeStamp:v5];
    v54 = 1;
  }

  v55 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    log = v55;
    v64 = [(ClientService *)self peripheral];
    v57 = [v64 name];
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
    [v5 timeIntervalSinceDate:self->firstDuplicateEventTimeStamp];
    *buf = 138413826;
    v69 = v57;
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
  v3 = [(CyclingPowerService *)self cyclingPowerVectorCharacteristic];
  v4 = [v3 value];
  v5 = [(FitnessService *)self readBytesFromNSData:v4 into:&v18 startingAt:0 length:1 info:@"CPV - status flags"];

  v6 = v18;
  if (v18)
  {
    v9 = [(CyclingPowerService *)self cyclingPowerVectorCharacteristic];
    v10 = [v9 value];
    v11 = &v5[[(FitnessService *)self readBytesFromNSData:v10 into:&v18 + 2 startingAt:v5 length:2 info:@"CPV - crank revolutions"]];

    v12 = [(CyclingPowerService *)self cyclingPowerVectorCharacteristic];
    v13 = [v12 value];
    v5 = &v11[[(FitnessService *)self readBytesFromNSData:v13 into:&v18 + 4 startingAt:v11 length:2 info:@"CPV - crank time"]];

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

  v14 = [(CyclingPowerService *)self cyclingPowerVectorCharacteristic];
  v15 = [v14 value];
  v5 = &v5[[(FitnessService *)self readBytesFromNSData:v15 into:&v18 + 6 startingAt:v5 length:2 info:@"CPV - first crank measurement angle"]];

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
  v16 = [(CyclingPowerService *)self cyclingPowerVectorCharacteristic];
  v17 = [v16 value];
  v5 = &v5[[(FitnessService *)self readBytesFromNSData:v17 into:&v19 startingAt:v5 length:2 info:@"CPV - instantaneous force magnitude array"]];

  if ((v18 & 8) == 0)
  {
    return;
  }

LABEL_5:
  v7 = [(CyclingPowerService *)self cyclingPowerVectorCharacteristic];
  v8 = [v7 value];
  [(FitnessService *)self readBytesFromNSData:v8 into:&v19 + 2 startingAt:v5 length:2 info:@"CPV - instantaneous torque magnitude array"];
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v38 = a3;
  if (!a5)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = [a4 characteristics];
    v9 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v40 + 1) + 8 * v12);
          v14 = [(CyclingPowerService *)self cyclingPowerSensorLocationCharacteristic];
          if (v14)
          {
          }

          else
          {
            v15 = [v13 UUID];
            v16 = [CBUUID UUIDWithString:v39];
            v17 = [v15 isEqual:v16];

            if (v17)
            {
              [(CyclingPowerService *)self setCyclingPowerSensorLocationCharacteristic:v13];
LABEL_15:
              [(FitnessService *)self setNotify:1 forCharacteristic:v13];
              [v38 readValueForCharacteristic:v13];
              goto LABEL_29;
            }
          }

          v18 = [(CyclingPowerService *)self cyclingPowerFeatureCharacteristic];
          if (v18)
          {
          }

          else
          {
            v19 = [v13 UUID];
            v20 = [CBUUID UUIDWithString:@"0x2A65"];
            v21 = [v19 isEqual:v20];

            if (v21)
            {
              [(CyclingPowerService *)self setCyclingPowerFeatureCharacteristic:v13];
              goto LABEL_15;
            }
          }

          v22 = [(CyclingPowerService *)self cyclingPowerControlPointCharacteristic];
          if (v22)
          {
          }

          else
          {
            v23 = [v13 UUID];
            v24 = [CBUUID UUIDWithString:@"0x2A66"];
            v25 = [v23 isEqual:v24];

            if (v25)
            {
              [(CyclingPowerService *)self setCyclingPowerControlPointCharacteristic:v13];
LABEL_28:
              [(FitnessService *)self setNotify:0 forCharacteristic:v13];
              goto LABEL_29;
            }
          }

          v26 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];
          if (v26)
          {
          }

          else
          {
            v27 = [v13 UUID];
            v28 = [CBUUID UUIDWithString:@"0x2A63"];
            v29 = [v27 isEqual:v28];

            if (v29)
            {
              [(CyclingPowerService *)self setCyclingPowerMeasurementCharacteristic:v13];
              goto LABEL_28;
            }
          }

          v30 = [(CyclingPowerService *)self cyclingPowerVectorCharacteristic];
          if (v30)
          {

            goto LABEL_29;
          }

          v31 = [v13 UUID];
          v32 = [CBUUID UUIDWithString:@"0x2A64"];
          v33 = [v31 isEqual:v32];

          if (v33)
          {
            [(CyclingPowerService *)self setCyclingPowerVectorCharacteristic:v13];
            goto LABEL_28;
          }

LABEL_29:
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v10);
    }

    [(ClientService *)self notifyDidStart];
    v34 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];

    if (!v34 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000734F0();
    }

    v35 = [(CyclingPowerService *)self cyclingPowerVectorCharacteristic];

    if (!v35 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100073524();
    }

    v36 = [(CyclingPowerService *)self cyclingPowerFeatureCharacteristic];

    if (!v36 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100073558();
    }

    v37 = [(CyclingPowerService *)self cyclingPowerControlPointCharacteristic];

    if (!v37 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007358C();
    }
  }
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a4;
  if (!a5)
  {
    v15 = v7;
    v8 = [(CyclingPowerService *)self cyclingPowerSensorLocationCharacteristic];

    if (v8 == v15)
    {
      [(CyclingPowerService *)self updatedSensorLocationCharacteristicValue];
    }

    else
    {
      v9 = [(CyclingPowerService *)self cyclingPowerFeatureCharacteristic];

      if (v9 == v15)
      {
        [(CyclingPowerService *)self updatedFeatureCharacteristicValue];
      }

      else
      {
        v10 = [(CyclingPowerService *)self cyclingPowerControlPointCharacteristic];

        if (v10 == v15)
        {
          [(CyclingPowerService *)self updatedControlPointCharacteristicValue];
        }

        else
        {
          v11 = [(CyclingPowerService *)self cyclingPowerMeasurementCharacteristic];

          if (v11 == v15)
          {
            v13 = [v15 value];
            v14 = +[NSDate now];
            [(CyclingPowerService *)self updatedMeasurementCharacteristicValue:v13 at:v14];
          }

          else
          {
            v12 = [(CyclingPowerService *)self cyclingPowerVectorCharacteristic];

            v7 = v15;
            if (v12 != v15)
            {
              goto LABEL_13;
            }

            [(CyclingPowerService *)self updatedVectorCharacteristicValue];
          }
        }
      }
    }

    v7 = v15;
  }

LABEL_13:
}

@end