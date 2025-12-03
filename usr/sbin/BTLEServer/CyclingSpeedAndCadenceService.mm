@interface CyclingSpeedAndCadenceService
- ($F0FB0F8730EF0E25F4B4D62181058401)lastMeasurement;
- (BOOL)supportsHKQuantityType:(id)type;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)readWheelSize;
- (void)receiveDeviceInfoUpdateNotification:(id)notification;
- (void)start;
- (void)updatedCadenceMeasurementValue:(id *)value at:(id)at;
- (void)updatedControlPointCharacteristicValue;
- (void)updatedFeatureCharacteristicValue;
- (void)updatedMeasurementCharacteristicValue:(id)value at:(id)at;
- (void)updatedSpeedMeasurementValue:(id *)value at:(id)at;
@end

@implementation CyclingSpeedAndCadenceService

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
        sub_10007C6D0(v8, self, v4);
      }
    }
  }
}

- (void)start
{
  v9.receiver = self;
  v9.super_class = CyclingSpeedAndCadenceService;
  [(FitnessService *)&v9 start];
  *&self->_lastMeasurement.cumulative_wheel_revolution = 0;
  self->_lastMeasurement.cycling_last_crank_event_time = 0;
  self->_sendZeroForDuplicates = 1;
  self->_wheelDiameterInInches = 26.3796185;
  [(CyclingSpeedAndCadenceService *)self readWheelSize];
  [(CyclingSpeedAndCadenceService *)self updateZeroDuplicateValues];
  v3 = [CBUUID UUIDWithString:@"0x2A5C"];
  v10[0] = v3;
  v4 = [CBUUID UUIDWithString:@"0x2A5D"];
  v10[1] = v4;
  v5 = [CBUUID UUIDWithString:@"0x2A5B"];
  v10[2] = v5;
  v6 = [NSArray arrayWithObjects:v10 count:3];

  peripheral = [(ClientService *)self peripheral];
  service = [(ClientService *)self service];
  [peripheral discoverCharacteristics:v6 forService:service];
}

- (BOOL)supportsHKQuantityType:(id)type
{
  typeCopy = type;
  identifier = [typeCopy identifier];
  if ([identifier isEqualToString:HKQuantityTypeIdentifierCyclingSpeed])
  {

LABEL_4:
    v8 = &OBJC_IVAR___CyclingSpeedAndCadenceService__wheelRevolutionDataSupported;
    goto LABEL_5;
  }

  identifier2 = [typeCopy identifier];
  v7 = [identifier2 isEqualToString:HKQuantityTypeIdentifierDistanceCycling];

  if (v7)
  {
    goto LABEL_4;
  }

  identifier3 = [typeCopy identifier];
  v12 = [identifier3 isEqualToString:HKQuantityTypeIdentifierCyclingCadence];

  if (!v12)
  {
    v9 = 0;
    goto LABEL_6;
  }

  v8 = &OBJC_IVAR___CyclingSpeedAndCadenceService__crankRevolutionDataSupported;
LABEL_5:
  v9 = *(&self->super.super.super.isa + *v8);
LABEL_6:

  return v9 & 1;
}

- (void)receiveDeviceInfoUpdateNotification:(id)notification
{
  notificationCopy = notification;
  v17.receiver = self;
  v17.super_class = CyclingSpeedAndCadenceService;
  [(FitnessService *)&v17 receiveDeviceInfoUpdateNotification:notificationCopy];
  name = [notificationCopy name];
  peripheral = [(ClientService *)self peripheral];
  identifier = [peripheral identifier];
  uUIDString = [identifier UUIDString];
  userInfo = [notificationCopy userInfo];
  NSLog(@"RECEIVE DEVICE INFO UPDATE NOTIFICATION - name:%@ device UUID:%@ notification userinfo:%@", name, uUIDString, userInfo);

  name2 = [notificationCopy name];
  if ([name2 isEqualToString:@"DeviceInformationUpdate"])
  {
    peripheral2 = [(ClientService *)self peripheral];
    identifier2 = [peripheral2 identifier];
    uUIDString2 = [identifier2 UUIDString];
    userInfo2 = [notificationCopy userInfo];
    v15 = [userInfo2 valueForKey:@"UUID"];
    v16 = [uUIDString2 isEqualToString:v15];

    if (v16)
    {
      [(CyclingSpeedAndCadenceService *)self updateZeroDuplicateValues];
    }
  }

  else
  {
  }
}

- (void)updatedCadenceMeasurementValue:(id *)value at:(id)at
{
  atCopy = at;
  v7 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007C7B0(v7, self, value);
  }

  p_lastMeasurement = &self->_lastMeasurement;
  if (self->_lastMeasurement.cycling_crank_revolution || self->_lastMeasurement.cycling_last_crank_event_time)
  {
    v9 = [FitnessService hkQuantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingCadence];
    if (v9)
    {
      if ([(FitnessService *)self isCollectingHKQuantityType:v9])
      {
        v10 = value->var4 - self->_lastMeasurement.cycling_last_crank_event_time + ((value->var4 < self->_lastMeasurement.cycling_last_crank_event_time) << 16);
        if (v10)
        {
          v11 = value->var3 - self->_lastMeasurement.cycling_crank_revolution;
          if (v11 >= 1)
          {
            v12 = vcvtd_n_f64_u32(v10, 0xAuLL);
            v13 = v11 * 60.0 / v12;
            if (v13 < 0.0 || v13 >= 500.0)
            {
              v17 = qword_1000DDBC8;
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
              {
                v18 = v17;
                peripheral = [(ClientService *)self peripheral];
                name = [peripheral name];
                var3 = value->var3;
                var4 = value->var4;
                cycling_crank_revolution = p_lastMeasurement->cycling_crank_revolution;
                cycling_last_crank_event_time = p_lastMeasurement->cycling_last_crank_event_time;
                v25 = 138413570;
                v26 = name;
                v27 = 2048;
                v28 = v13;
                v29 = 1024;
                v30 = var3;
                v31 = 1024;
                v32 = var4;
                v33 = 1024;
                v34 = cycling_crank_revolution;
                v35 = 1024;
                v36 = cycling_last_crank_event_time;
                _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "“%@” Invalid cadence detected:%f rpm rev count=0x%04X timestamp=0x%04X previous rev count=0x%04X timestamp=0x%04X", &v25, 0x2Eu);
              }
            }

            else
            {
              v14 = [NSDate dateWithTimeInterval:atCopy sinceDate:-v12];
              [(FitnessService *)self recordDatum:v14 start:atCopy end:v9 quantityType:v13];
              [(FitnessService *)self storeDatumsForQuantityType:v9];
            }
          }
        }

        else if (self->fCurrentDataIsDuplicate && [(CyclingSpeedAndCadenceService *)self sendDuplicateReadingsAsZero])
        {
          [(FitnessService *)self recordDatum:atCopy start:atCopy end:v9 quantityType:0.0];
          [(FitnessService *)self storeDatumsForQuantityType:v9];
        }
      }

      else
      {
        v16 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_10007C86C(v16);
        }
      }
    }

    else
    {
      v15 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007C914(v15);
      }
    }
  }

  *&p_lastMeasurement->cycling_crank_revolution = *&value->var3;
}

- (void)updatedSpeedMeasurementValue:(id *)value at:(id)at
{
  atCopy = at;
  v7 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007C9BC(v7, self, value);
  }

  p_lastMeasurement = &self->_lastMeasurement;
  if (self->_lastMeasurement.cumulative_wheel_revolution || self->_lastMeasurement.cycling_last_wheel_event_time)
  {
    v9 = [FitnessService hkQuantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingSpeed];
    v10 = [FitnessService hkQuantityTypeForIdentifier:HKQuantityTypeIdentifierDistanceCycling];
    if (v9 | v10)
    {
      v11 = value->var2 - self->_lastMeasurement.cycling_last_wheel_event_time + ((value->var2 < self->_lastMeasurement.cycling_last_wheel_event_time) << 16);
      if (v11)
      {
        v12 = vcvtd_n_f64_u32(v11, 0xAuLL);
        v13 = self->_wheelDiameterInInches * ((value->var1 - self->_lastMeasurement.cumulative_wheel_revolution) * 3.14159265);
        v14 = v13 / v12 * 0.0568181818;
        if (v14 >= 0.0 && v14 < 200.0)
        {
          v25 = [NSDate dateWithTimeInterval:atCopy sinceDate:-v12];
          if (v9 && [(FitnessService *)self isCollectingHKQuantityType:v9])
          {
            [(FitnessService *)self recordDatum:v25 start:atCopy end:v9 quantityType:v14];
            [(FitnessService *)self storeDatumsForQuantityType:v9];
          }

          if (v10 && [(FitnessService *)self isCollectingHKQuantityType:v10])
          {
            [(FitnessService *)self recordDatum:v25 start:atCopy end:v10 quantityType:v13 * 0.0254];
            [(FitnessService *)self storeDatumsForQuantityType:v10];
          }
        }

        else
        {
          v16 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            v17 = v16;
            peripheral = [(ClientService *)self peripheral];
            name = [peripheral name];
            var1 = value->var1;
            var2 = value->var2;
            cumulative_wheel_revolution = p_lastMeasurement->cumulative_wheel_revolution;
            cycling_last_wheel_event_time = p_lastMeasurement->cycling_last_wheel_event_time;
            v26 = 138413570;
            v27 = name;
            v28 = 2048;
            v29 = v14;
            v30 = 1024;
            v31 = var1;
            v32 = 1024;
            v33 = var2;
            v34 = 1024;
            v35 = cumulative_wheel_revolution;
            v36 = 1024;
            v37 = cycling_last_wheel_event_time;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "“%@” Invalid speed detected:%f rpm rev count=0x%08X timestamp=0x%04X previous rev count=0x%08X timestamp=0x%04X", &v26, 0x2Eu);
          }
        }
      }

      else if (self->fCurrentDataIsDuplicate && [(CyclingSpeedAndCadenceService *)self sendDuplicateReadingsAsZero])
      {
        if ([(FitnessService *)self isCollectingHKQuantityType:v9])
        {
          [(FitnessService *)self recordDatum:atCopy start:atCopy end:v9 quantityType:0.0];
          [(FitnessService *)self storeDatumsForQuantityType:v9];
        }

        if (v10 && [(FitnessService *)self isCollectingHKQuantityType:v10])
        {
          [(FitnessService *)self recordDatum:atCopy start:atCopy end:v10 quantityType:0.0];
          [(FitnessService *)self storeDatumsForQuantityType:v10];
        }
      }
    }

    else
    {
      v24 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007CA78(v24);
      }
    }
  }

  p_lastMeasurement->cumulative_wheel_revolution = value->var1;
  p_lastMeasurement->cycling_last_wheel_event_time = value->var2;
}

- (void)updatedMeasurementCharacteristicValue:(id)value at:(id)at
{
  atCopy = at;
  v44 = 0;
  v45 = 0;
  csMeasurementCharacteristic = [(CyclingSpeedAndCadenceService *)self csMeasurementCharacteristic];
  value = [csMeasurementCharacteristic value];
  v8 = [(FitnessService *)self readBytesFromNSData:value into:&v44 startingAt:0 length:1 info:@"CSCM - flags"];

  v9 = v44;
  if (v44)
  {
    csMeasurementCharacteristic2 = [(CyclingSpeedAndCadenceService *)self csMeasurementCharacteristic];
    value2 = [csMeasurementCharacteristic2 value];
    v14 = [(FitnessService *)self readBytesFromNSData:value2 into:&v44 + 4 startingAt:v8 length:4 info:@"CSCM - wheel revs"]+ v8;

    csMeasurementCharacteristic3 = [(CyclingSpeedAndCadenceService *)self csMeasurementCharacteristic];
    value3 = [csMeasurementCharacteristic3 value];
    v17 = [(FitnessService *)self readBytesFromNSData:value3 into:&v45 startingAt:v14 length:2 info:@"CSCM - wheel event time"];

    if ((v44 & 2) == 0)
    {
      p_fCurrentDataIsDuplicate = &self->fCurrentDataIsDuplicate;
      v18 = 1;
      self->fCurrentDataIsDuplicate = 1;
      goto LABEL_9;
    }

    v8 = &v14[v17];
  }

  else if ((v44 & 2) == 0)
  {
    p_fCurrentDataIsDuplicate = &self->fCurrentDataIsDuplicate;
    v11 = 1;
    self->fCurrentDataIsDuplicate = 1;
    goto LABEL_19;
  }

  csMeasurementCharacteristic4 = [(CyclingSpeedAndCadenceService *)self csMeasurementCharacteristic];
  value4 = [csMeasurementCharacteristic4 value];
  v21 = [(FitnessService *)self readBytesFromNSData:value4 into:&v45 + 2 startingAt:v8 length:2 info:@"CSCM - crank revs"];

  csMeasurementCharacteristic5 = [(CyclingSpeedAndCadenceService *)self csMeasurementCharacteristic];
  value5 = [csMeasurementCharacteristic5 value];
  [(FitnessService *)self readBytesFromNSData:value5 into:&v45 + 4 startingAt:v21 + v8 length:2 info:@"CSCM - crank event time"];

  p_fCurrentDataIsDuplicate = &self->fCurrentDataIsDuplicate;
  self->fCurrentDataIsDuplicate = 1;
  if ((v9 & 1) == 0)
  {
LABEL_16:
    if (WORD1(v45) == self->_lastMeasurement.cycling_crank_revolution)
    {
      v11 = 0;
      v25 = WORD2(v45) == self->_lastMeasurement.cycling_last_crank_event_time;
      *p_fCurrentDataIsDuplicate = v25;
      if (!v25)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

LABEL_21:
    v11 = 0;
    *p_fCurrentDataIsDuplicate = 0;
LABEL_22:
    firstDuplicateEventTimeStamp = self->firstDuplicateEventTimeStamp;
    self->firstDuplicateEventTimeStamp = 0;
    goto LABEL_23;
  }

  v18 = 0;
LABEL_9:
  v24 = HIDWORD(v44) == self->_lastMeasurement.cumulative_wheel_revolution && v45 == self->_lastMeasurement.cycling_last_wheel_event_time;
  *p_fCurrentDataIsDuplicate = v24;
  if ((v18 & 1) == 0)
  {
    if (!v24)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v11 = 1;
  if (!v24)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (!self->firstDuplicateEventTimeStamp)
  {
    v26 = atCopy;
    firstDuplicateEventTimeStamp = self->firstDuplicateEventTimeStamp;
    self->firstDuplicateEventTimeStamp = v26;
LABEL_23:
  }

  v29 = 1;
  if (*p_fCurrentDataIsDuplicate)
  {
    if ([(CyclingSpeedAndCadenceService *)self sendZeroForDuplicates])
    {
      [atCopy timeIntervalSinceDate:self->firstDuplicateEventTimeStamp];
      if (v28 < 1.5)
      {
        v29 = 0;
      }
    }
  }

  v30 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    log = v30;
    peripheral = [(ClientService *)self peripheral];
    name = [peripheral name];
    if (self->_wheelRevolutionDataSupported)
    {
      v32 = @"✓";
    }

    else
    {
      v32 = @"0";
    }

    v40 = v32;
    v41 = name;
    if (self->_crankRevolutionDataSupported)
    {
      v33 = @"✓";
    }

    else
    {
      v33 = @"0";
    }

    v39 = v33;
    csMeasurementCharacteristic6 = [(CyclingSpeedAndCadenceService *)self csMeasurementCharacteristic];
    value6 = [csMeasurementCharacteristic6 value];
    v36 = *p_fCurrentDataIsDuplicate;
    sendZeroForDuplicates = [(CyclingSpeedAndCadenceService *)self sendZeroForDuplicates];
    [atCopy timeIntervalSinceDate:self->firstDuplicateEventTimeStamp];
    *buf = 138414082;
    v47 = v41;
    v48 = 2112;
    v49 = v40;
    v50 = 2112;
    v51 = v39;
    v52 = 2112;
    v53 = value6;
    v54 = 1024;
    v55 = v36;
    v56 = 1024;
    v57 = sendZeroForDuplicates;
    v58 = 2048;
    v59 = v38;
    v60 = 1024;
    v61 = v29;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "“%@” Measurement - SPEED:%@ CADENCE:%@ (%@) duplicate:%d sendZeroForDuplicates:%d secondsSinceFirstDuplicate:%f sending:%d", buf, 0x46u);

    if (!v29)
    {
      goto LABEL_35;
    }
  }

  else if (!v29)
  {
    goto LABEL_35;
  }

  if (v9)
  {
    [(CyclingSpeedAndCadenceService *)self updatedSpeedMeasurementValue:&v44 at:atCopy];
  }

  if ((v11 & 1) == 0)
  {
    [(CyclingSpeedAndCadenceService *)self updatedCadenceMeasurementValue:&v44 at:atCopy];
  }

LABEL_35:
}

- (void)updatedFeatureCharacteristicValue
{
  v14 = 0;
  csFeatureCharacteristic = [(CyclingSpeedAndCadenceService *)self csFeatureCharacteristic];
  value = [csFeatureCharacteristic value];
  [(FitnessService *)self readBytesFromNSData:value into:&v14 startingAt:0 length:2 info:@"CSCF - flags"];

  v5 = v14;
  self->_wheelRevolutionDataSupported = v14 & 1;
  self->_crankRevolutionDataSupported = (v5 & 2) != 0;
  v6 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    peripheral = [(ClientService *)self peripheral];
    name = [peripheral name];
    v10 = name;
    v11 = @"NO";
    crankRevolutionDataSupported = self->_crankRevolutionDataSupported;
    if (self->_wheelRevolutionDataSupported)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    *buf = 138412802;
    v16 = name;
    v17 = 2112;
    if (crankRevolutionDataSupported)
    {
      v11 = @"YES";
    }

    v18 = v13;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "“%@” Features - SPEED:%@ CADENCE:%@", buf, 0x20u);
  }

  [(FitnessService *)self featuresReadComplete];
}

- (void)updatedControlPointCharacteristicValue
{
  v2 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007CB20(v2);
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  if (!error)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    characteristics = [service characteristics];
    v9 = [characteristics countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      do
      {
        v12 = 0;
        do
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(characteristics);
          }

          v13 = *(*(&v33 + 1) + 8 * v12);
          csFeatureCharacteristic = [(CyclingSpeedAndCadenceService *)self csFeatureCharacteristic];
          if (csFeatureCharacteristic)
          {
          }

          else
          {
            uUID = [v13 UUID];
            v16 = [CBUUID UUIDWithString:@"0x2A5C"];
            v17 = [uUID isEqual:v16];

            if (v17)
            {
              [(CyclingSpeedAndCadenceService *)self setCsFeatureCharacteristic:v13];
              [(FitnessService *)self setNotify:1 forCharacteristic:v13];
              [peripheralCopy readValueForCharacteristic:v13];
              goto LABEL_20;
            }
          }

          csMeasurementCharacteristic = [(CyclingSpeedAndCadenceService *)self csMeasurementCharacteristic];
          if (csMeasurementCharacteristic)
          {
          }

          else
          {
            uUID2 = [v13 UUID];
            v20 = [CBUUID UUIDWithString:@"0x2A5B"];
            v21 = [uUID2 isEqual:v20];

            if (v21)
            {
              [(CyclingSpeedAndCadenceService *)self setCsMeasurementCharacteristic:v13];
LABEL_19:
              [(FitnessService *)self setNotify:0 forCharacteristic:v13];
              goto LABEL_20;
            }
          }

          csControlPointCharacteristic = [(CyclingSpeedAndCadenceService *)self csControlPointCharacteristic];
          if (csControlPointCharacteristic)
          {

            goto LABEL_20;
          }

          uUID3 = [v13 UUID];
          v24 = [CBUUID UUIDWithString:@"0x2A5D"];
          v25 = [uUID3 isEqual:v24];

          if (v25)
          {
            [(CyclingSpeedAndCadenceService *)self setCsControlPointCharacteristic:v13];
            goto LABEL_19;
          }

LABEL_20:
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [characteristics countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v10);
    }

    [(ClientService *)self notifyDidStart];
    csMeasurementCharacteristic2 = [(CyclingSpeedAndCadenceService *)self csMeasurementCharacteristic];

    if (!csMeasurementCharacteristic2)
    {
      v27 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007CBD8(v27);
      }
    }

    csFeatureCharacteristic2 = [(CyclingSpeedAndCadenceService *)self csFeatureCharacteristic];

    if (!csFeatureCharacteristic2)
    {
      v29 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007CC80(v29);
      }
    }

    csControlPointCharacteristic2 = [(CyclingSpeedAndCadenceService *)self csControlPointCharacteristic];

    if (!csControlPointCharacteristic2)
    {
      v31 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007CD28(v31);
      }
    }
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  if (!error)
  {
    v13 = characteristicCopy;
    csFeatureCharacteristic = [(CyclingSpeedAndCadenceService *)self csFeatureCharacteristic];

    if (csFeatureCharacteristic == v13)
    {
      [(CyclingSpeedAndCadenceService *)self updatedFeatureCharacteristicValue];
    }

    csMeasurementCharacteristic = [(CyclingSpeedAndCadenceService *)self csMeasurementCharacteristic];

    if (csMeasurementCharacteristic == v13)
    {
      value = [v13 value];
      v11 = +[NSDate now];
      [(CyclingSpeedAndCadenceService *)self updatedMeasurementCharacteristicValue:value at:v11];
    }

    csControlPointCharacteristic = [(CyclingSpeedAndCadenceService *)self csControlPointCharacteristic];

    characteristicCopy = v13;
    if (csControlPointCharacteristic == v13)
    {
      [(CyclingSpeedAndCadenceService *)self updatedControlPointCharacteristicValue];
      characteristicCopy = v13;
    }
  }
}

- ($F0FB0F8730EF0E25F4B4D62181058401)lastMeasurement
{
  p_lastMeasurement = &self->_lastMeasurement;
  v3 = *&self->_lastMeasurement.cycling_speed_cadence_flags;
  v4 = *&p_lastMeasurement->cycling_last_wheel_event_time;
  result.var2 = v4;
  result.var3 = WORD1(v4);
  result.var4 = WORD2(v4);
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  return result;
}

@end