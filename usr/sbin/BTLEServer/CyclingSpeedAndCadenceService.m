@interface CyclingSpeedAndCadenceService
- ($F0FB0F8730EF0E25F4B4D62181058401)lastMeasurement;
- (BOOL)supportsHKQuantityType:(id)a3;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)readWheelSize;
- (void)receiveDeviceInfoUpdateNotification:(id)a3;
- (void)start;
- (void)updatedCadenceMeasurementValue:(id *)a3 at:(id)a4;
- (void)updatedControlPointCharacteristicValue;
- (void)updatedFeatureCharacteristicValue;
- (void)updatedMeasurementCharacteristicValue:(id)a3 at:(id)a4;
- (void)updatedSpeedMeasurementValue:(id *)a3 at:(id)a4;
@end

@implementation CyclingSpeedAndCadenceService

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

  v7 = [(ClientService *)self peripheral];
  v8 = [(ClientService *)self service];
  [v7 discoverCharacteristics:v6 forService:v8];
}

- (BOOL)supportsHKQuantityType:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if ([v5 isEqualToString:HKQuantityTypeIdentifierCyclingSpeed])
  {

LABEL_4:
    v8 = &OBJC_IVAR___CyclingSpeedAndCadenceService__wheelRevolutionDataSupported;
    goto LABEL_5;
  }

  v6 = [v4 identifier];
  v7 = [v6 isEqualToString:HKQuantityTypeIdentifierDistanceCycling];

  if (v7)
  {
    goto LABEL_4;
  }

  v11 = [v4 identifier];
  v12 = [v11 isEqualToString:HKQuantityTypeIdentifierCyclingCadence];

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

- (void)receiveDeviceInfoUpdateNotification:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CyclingSpeedAndCadenceService;
  [(FitnessService *)&v17 receiveDeviceInfoUpdateNotification:v4];
  v5 = [v4 name];
  v6 = [(ClientService *)self peripheral];
  v7 = [v6 identifier];
  v8 = [v7 UUIDString];
  v9 = [v4 userInfo];
  NSLog(@"RECEIVE DEVICE INFO UPDATE NOTIFICATION - name:%@ device UUID:%@ notification userinfo:%@", v5, v8, v9);

  v10 = [v4 name];
  if ([v10 isEqualToString:@"DeviceInformationUpdate"])
  {
    v11 = [(ClientService *)self peripheral];
    v12 = [v11 identifier];
    v13 = [v12 UUIDString];
    v14 = [v4 userInfo];
    v15 = [v14 valueForKey:@"UUID"];
    v16 = [v13 isEqualToString:v15];

    if (v16)
    {
      [(CyclingSpeedAndCadenceService *)self updateZeroDuplicateValues];
    }
  }

  else
  {
  }
}

- (void)updatedCadenceMeasurementValue:(id *)a3 at:(id)a4
{
  v6 = a4;
  v7 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007C7B0(v7, self, a3);
  }

  p_lastMeasurement = &self->_lastMeasurement;
  if (self->_lastMeasurement.cycling_crank_revolution || self->_lastMeasurement.cycling_last_crank_event_time)
  {
    v9 = [FitnessService hkQuantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingCadence];
    if (v9)
    {
      if ([(FitnessService *)self isCollectingHKQuantityType:v9])
      {
        v10 = a3->var4 - self->_lastMeasurement.cycling_last_crank_event_time + ((a3->var4 < self->_lastMeasurement.cycling_last_crank_event_time) << 16);
        if (v10)
        {
          v11 = a3->var3 - self->_lastMeasurement.cycling_crank_revolution;
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
                v19 = [(ClientService *)self peripheral];
                v20 = [v19 name];
                var3 = a3->var3;
                var4 = a3->var4;
                cycling_crank_revolution = p_lastMeasurement->cycling_crank_revolution;
                cycling_last_crank_event_time = p_lastMeasurement->cycling_last_crank_event_time;
                v25 = 138413570;
                v26 = v20;
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
              v14 = [NSDate dateWithTimeInterval:v6 sinceDate:-v12];
              [(FitnessService *)self recordDatum:v14 start:v6 end:v9 quantityType:v13];
              [(FitnessService *)self storeDatumsForQuantityType:v9];
            }
          }
        }

        else if (self->fCurrentDataIsDuplicate && [(CyclingSpeedAndCadenceService *)self sendDuplicateReadingsAsZero])
        {
          [(FitnessService *)self recordDatum:v6 start:v6 end:v9 quantityType:0.0];
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

  *&p_lastMeasurement->cycling_crank_revolution = *&a3->var3;
}

- (void)updatedSpeedMeasurementValue:(id *)a3 at:(id)a4
{
  v6 = a4;
  v7 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007C9BC(v7, self, a3);
  }

  p_lastMeasurement = &self->_lastMeasurement;
  if (self->_lastMeasurement.cumulative_wheel_revolution || self->_lastMeasurement.cycling_last_wheel_event_time)
  {
    v9 = [FitnessService hkQuantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingSpeed];
    v10 = [FitnessService hkQuantityTypeForIdentifier:HKQuantityTypeIdentifierDistanceCycling];
    if (v9 | v10)
    {
      v11 = a3->var2 - self->_lastMeasurement.cycling_last_wheel_event_time + ((a3->var2 < self->_lastMeasurement.cycling_last_wheel_event_time) << 16);
      if (v11)
      {
        v12 = vcvtd_n_f64_u32(v11, 0xAuLL);
        v13 = self->_wheelDiameterInInches * ((a3->var1 - self->_lastMeasurement.cumulative_wheel_revolution) * 3.14159265);
        v14 = v13 / v12 * 0.0568181818;
        if (v14 >= 0.0 && v14 < 200.0)
        {
          v25 = [NSDate dateWithTimeInterval:v6 sinceDate:-v12];
          if (v9 && [(FitnessService *)self isCollectingHKQuantityType:v9])
          {
            [(FitnessService *)self recordDatum:v25 start:v6 end:v9 quantityType:v14];
            [(FitnessService *)self storeDatumsForQuantityType:v9];
          }

          if (v10 && [(FitnessService *)self isCollectingHKQuantityType:v10])
          {
            [(FitnessService *)self recordDatum:v25 start:v6 end:v10 quantityType:v13 * 0.0254];
            [(FitnessService *)self storeDatumsForQuantityType:v10];
          }
        }

        else
        {
          v16 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            v17 = v16;
            v18 = [(ClientService *)self peripheral];
            v19 = [v18 name];
            var1 = a3->var1;
            var2 = a3->var2;
            cumulative_wheel_revolution = p_lastMeasurement->cumulative_wheel_revolution;
            cycling_last_wheel_event_time = p_lastMeasurement->cycling_last_wheel_event_time;
            v26 = 138413570;
            v27 = v19;
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
          [(FitnessService *)self recordDatum:v6 start:v6 end:v9 quantityType:0.0];
          [(FitnessService *)self storeDatumsForQuantityType:v9];
        }

        if (v10 && [(FitnessService *)self isCollectingHKQuantityType:v10])
        {
          [(FitnessService *)self recordDatum:v6 start:v6 end:v10 quantityType:0.0];
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

  p_lastMeasurement->cumulative_wheel_revolution = a3->var1;
  p_lastMeasurement->cycling_last_wheel_event_time = a3->var2;
}

- (void)updatedMeasurementCharacteristicValue:(id)a3 at:(id)a4
{
  v5 = a4;
  v44 = 0;
  v45 = 0;
  v6 = [(CyclingSpeedAndCadenceService *)self csMeasurementCharacteristic];
  v7 = [v6 value];
  v8 = [(FitnessService *)self readBytesFromNSData:v7 into:&v44 startingAt:0 length:1 info:@"CSCM - flags"];

  v9 = v44;
  if (v44)
  {
    v12 = [(CyclingSpeedAndCadenceService *)self csMeasurementCharacteristic];
    v13 = [v12 value];
    v14 = [(FitnessService *)self readBytesFromNSData:v13 into:&v44 + 4 startingAt:v8 length:4 info:@"CSCM - wheel revs"]+ v8;

    v15 = [(CyclingSpeedAndCadenceService *)self csMeasurementCharacteristic];
    v16 = [v15 value];
    v17 = [(FitnessService *)self readBytesFromNSData:v16 into:&v45 startingAt:v14 length:2 info:@"CSCM - wheel event time"];

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

  v19 = [(CyclingSpeedAndCadenceService *)self csMeasurementCharacteristic];
  v20 = [v19 value];
  v21 = [(FitnessService *)self readBytesFromNSData:v20 into:&v45 + 2 startingAt:v8 length:2 info:@"CSCM - crank revs"];

  v22 = [(CyclingSpeedAndCadenceService *)self csMeasurementCharacteristic];
  v23 = [v22 value];
  [(FitnessService *)self readBytesFromNSData:v23 into:&v45 + 4 startingAt:v21 + v8 length:2 info:@"CSCM - crank event time"];

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
    v26 = v5;
    firstDuplicateEventTimeStamp = self->firstDuplicateEventTimeStamp;
    self->firstDuplicateEventTimeStamp = v26;
LABEL_23:
  }

  v29 = 1;
  if (*p_fCurrentDataIsDuplicate)
  {
    if ([(CyclingSpeedAndCadenceService *)self sendZeroForDuplicates])
    {
      [v5 timeIntervalSinceDate:self->firstDuplicateEventTimeStamp];
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
    v43 = [(ClientService *)self peripheral];
    v31 = [v43 name];
    if (self->_wheelRevolutionDataSupported)
    {
      v32 = @"✓";
    }

    else
    {
      v32 = @"0";
    }

    v40 = v32;
    v41 = v31;
    if (self->_crankRevolutionDataSupported)
    {
      v33 = @"✓";
    }

    else
    {
      v33 = @"0";
    }

    v39 = v33;
    v34 = [(CyclingSpeedAndCadenceService *)self csMeasurementCharacteristic];
    v35 = [v34 value];
    v36 = *p_fCurrentDataIsDuplicate;
    v37 = [(CyclingSpeedAndCadenceService *)self sendZeroForDuplicates];
    [v5 timeIntervalSinceDate:self->firstDuplicateEventTimeStamp];
    *buf = 138414082;
    v47 = v41;
    v48 = 2112;
    v49 = v40;
    v50 = 2112;
    v51 = v39;
    v52 = 2112;
    v53 = v35;
    v54 = 1024;
    v55 = v36;
    v56 = 1024;
    v57 = v37;
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
    [(CyclingSpeedAndCadenceService *)self updatedSpeedMeasurementValue:&v44 at:v5];
  }

  if ((v11 & 1) == 0)
  {
    [(CyclingSpeedAndCadenceService *)self updatedCadenceMeasurementValue:&v44 at:v5];
  }

LABEL_35:
}

- (void)updatedFeatureCharacteristicValue
{
  v14 = 0;
  v3 = [(CyclingSpeedAndCadenceService *)self csFeatureCharacteristic];
  v4 = [v3 value];
  [(FitnessService *)self readBytesFromNSData:v4 into:&v14 startingAt:0 length:2 info:@"CSCF - flags"];

  v5 = v14;
  self->_wheelRevolutionDataSupported = v14 & 1;
  self->_crankRevolutionDataSupported = (v5 & 2) != 0;
  v6 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(ClientService *)self peripheral];
    v9 = [v8 name];
    v10 = v9;
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
    v16 = v9;
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

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v32 = a3;
  if (!a5)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = [a4 characteristics];
    v9 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v33 + 1) + 8 * v12);
          v14 = [(CyclingSpeedAndCadenceService *)self csFeatureCharacteristic];
          if (v14)
          {
          }

          else
          {
            v15 = [v13 UUID];
            v16 = [CBUUID UUIDWithString:@"0x2A5C"];
            v17 = [v15 isEqual:v16];

            if (v17)
            {
              [(CyclingSpeedAndCadenceService *)self setCsFeatureCharacteristic:v13];
              [(FitnessService *)self setNotify:1 forCharacteristic:v13];
              [v32 readValueForCharacteristic:v13];
              goto LABEL_20;
            }
          }

          v18 = [(CyclingSpeedAndCadenceService *)self csMeasurementCharacteristic];
          if (v18)
          {
          }

          else
          {
            v19 = [v13 UUID];
            v20 = [CBUUID UUIDWithString:@"0x2A5B"];
            v21 = [v19 isEqual:v20];

            if (v21)
            {
              [(CyclingSpeedAndCadenceService *)self setCsMeasurementCharacteristic:v13];
LABEL_19:
              [(FitnessService *)self setNotify:0 forCharacteristic:v13];
              goto LABEL_20;
            }
          }

          v22 = [(CyclingSpeedAndCadenceService *)self csControlPointCharacteristic];
          if (v22)
          {

            goto LABEL_20;
          }

          v23 = [v13 UUID];
          v24 = [CBUUID UUIDWithString:@"0x2A5D"];
          v25 = [v23 isEqual:v24];

          if (v25)
          {
            [(CyclingSpeedAndCadenceService *)self setCsControlPointCharacteristic:v13];
            goto LABEL_19;
          }

LABEL_20:
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v10);
    }

    [(ClientService *)self notifyDidStart];
    v26 = [(CyclingSpeedAndCadenceService *)self csMeasurementCharacteristic];

    if (!v26)
    {
      v27 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007CBD8(v27);
      }
    }

    v28 = [(CyclingSpeedAndCadenceService *)self csFeatureCharacteristic];

    if (!v28)
    {
      v29 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007CC80(v29);
      }
    }

    v30 = [(CyclingSpeedAndCadenceService *)self csControlPointCharacteristic];

    if (!v30)
    {
      v31 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007CD28(v31);
      }
    }
  }
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a4;
  if (!a5)
  {
    v13 = v7;
    v8 = [(CyclingSpeedAndCadenceService *)self csFeatureCharacteristic];

    if (v8 == v13)
    {
      [(CyclingSpeedAndCadenceService *)self updatedFeatureCharacteristicValue];
    }

    v9 = [(CyclingSpeedAndCadenceService *)self csMeasurementCharacteristic];

    if (v9 == v13)
    {
      v10 = [v13 value];
      v11 = +[NSDate now];
      [(CyclingSpeedAndCadenceService *)self updatedMeasurementCharacteristicValue:v10 at:v11];
    }

    v12 = [(CyclingSpeedAndCadenceService *)self csControlPointCharacteristic];

    v7 = v13;
    if (v12 == v13)
    {
      [(CyclingSpeedAndCadenceService *)self updatedControlPointCharacteristicValue];
      v7 = v13;
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