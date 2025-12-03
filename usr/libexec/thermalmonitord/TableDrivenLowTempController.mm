@interface TableDrivenLowTempController
- (BOOL)populateIntArray:(int *)array params:(id)params key:(id)key expectedCount:(unint64_t)count assertArraySorting:(BOOL)sorting;
- (TableDrivenLowTempController)initWithParams:(id)params;
- (int)mitigationIndexForBatteryTemperature:(int)temperature stateOfCharge:(int)charge batteryRaValue:(int)value;
@end

@implementation TableDrivenLowTempController

- (TableDrivenLowTempController)initWithParams:(id)params
{
  *&self->_tempThresholdHysteresis = 0xFFFFFFFF00000000;
  sub_100002A20(params, @"tempLimitHysteresis", kCFNumberIntType, &self->_tempThresholdHysteresis);
  v5 = [params valueForKey:@"tempLimits"];
  v6 = [params valueForKey:@"chargeLimits"];
  if (v5)
  {
    v7 = v6;
    if (v6)
    {
      v8 = [v5 count];
      self->_temperatureThresholdCount = v8;
      if (v8 >= 16)
      {
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100055190();
        }

        self->_temperatureThresholdCount = 0;
      }

      v9 = [v7 count];
      self->_chargeThresholdCount = v9;
      if (v9 >= 19)
      {
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100055200();
        }

        self->_chargeThresholdCount = 0;
      }
    }
  }

  temperatureThresholdCount = self->_temperatureThresholdCount;
  if (temperatureThresholdCount >= 1)
  {
    chargeThresholdCount = self->_chargeThresholdCount;
    if (chargeThresholdCount >= 1)
    {
      self->_responseTableCellCount = temperatureThresholdCount + 1 + (temperatureThresholdCount + 1) * chargeThresholdCount;
      [TableDrivenLowTempController populateIntArray:"populateIntArray:params:key:expectedCount:assertArraySorting:" params:self->_temperatureThresholds key:params expectedCount:@"tempLimits" assertArraySorting:?];
      [(TableDrivenLowTempController *)self populateIntArray:self->_chargeThresholds params:params key:@"chargeLimits" expectedCount:self->_chargeThresholdCount assertArraySorting:1];
      [(TableDrivenLowTempController *)self populateTableValues:params expectedCount:self->_responseTableCellCount assertArraySorting:0];
    }
  }

  v12 = [params valueForKey:@"RaLimits"];
  if (v12)
  {
    v13 = [v12 count];
    self->_batteryRaThresholdCount = v13;
    if (v13 < 7)
    {
      if (v13 >= 1)
      {
        [(TableDrivenLowTempController *)self populateIntArray:self->_batteryRaThresholds params:params key:@"RaLimits" expectedCount:v13 & 0x7FFFFFFF assertArraySorting:1];
        if (byte_1000AB2F8 == 1)
        {
          v14 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            batteryRaThresholdCount = self->_batteryRaThresholdCount;
            v16 = self->_batteryRaThresholds[0];
            v17 = self->_batteryRaThresholds[1];
            v19[0] = 67109632;
            v19[1] = batteryRaThresholdCount;
            v20 = 1024;
            v21 = v16;
            v22 = 1024;
            v23 = v17;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "<Notice> Clamp: Ra thresholds (%d) %d %d", v19, 0x14u);
          }
        }
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100055270();
      }

      self->_batteryRaThresholdCount = 0;
    }
  }

  return self;
}

- (BOOL)populateIntArray:(int *)array params:(id)params key:(id)key expectedCount:(unint64_t)count assertArraySorting:(BOOL)sorting
{
  if (array && params && key)
  {
    sortingCopy = sorting;
    arrayCopy = array;
    v10 = [params valueForKey:key];
    if (v10)
    {
      v11 = v10;
      if ([v10 count] == count)
      {
        if (count)
        {
          v12 = 0;
          v13 = -32768;
          do
          {
            v14 = [v11 objectAtIndex:v12];
            if (v14)
            {
              intValue = [v14 intValue];
              if (sortingCopy)
              {
                v16 = intValue <= v13;
                v13 = intValue;
                if (v16)
                {
                  sub_10005533C(&v19);
                  return v19;
                }
              }

              *arrayCopy++ = intValue;
            }

            ++v12;
          }

          while (count != v12);
        }

        return 1;
      }

      else
      {
        sub_1000552E0(&v18);
        return v18;
      }
    }

    else
    {
      sub_100055398(&v20);
      return v20;
    }
  }

  else
  {
    sub_1000553F4(&v21);
    return v21;
  }
}

- (int)mitigationIndexForBatteryTemperature:(int)temperature stateOfCharge:(int)charge batteryRaValue:(int)value
{
  temperatureThresholdCount = self->_temperatureThresholdCount;
  if (temperatureThresholdCount <= 0)
  {
LABEL_7:
    LODWORD(v6) = self->_temperatureThresholdCount;
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = self->_temperatureThresholds[v6];
      if (v6 >= self->_temperatureRow)
      {
        v7 += self->_tempThresholdHysteresis;
      }

      if (v7 > temperature)
      {
        break;
      }

      if (temperatureThresholdCount == ++v6)
      {
        goto LABEL_7;
      }
    }
  }

  batteryRaThresholdCount = self->_batteryRaThresholdCount;
  if (batteryRaThresholdCount < 1)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v9 = 0;
    while (self->_batteryRaThresholds[v9] <= value)
    {
      if (batteryRaThresholdCount == ++v9)
      {
        LODWORD(v9) = self->_batteryRaThresholdCount;
        break;
      }
    }
  }

  v10 = (v6 - v9) & ~((v6 - v9) >> 31);
  if (v10 < temperatureThresholdCount)
  {
    LODWORD(temperatureThresholdCount) = v10;
  }

  self->_temperatureRow = temperatureThresholdCount;
  chargeThresholdCount = self->_chargeThresholdCount;
  if (chargeThresholdCount <= 0)
  {
LABEL_20:
    LODWORD(v12) = self->_chargeThresholdCount;
  }

  else
  {
    v12 = 0;
    while (self->_chargeThresholds[v12] <= charge)
    {
      if (chargeThresholdCount == ++v12)
      {
        goto LABEL_20;
      }
    }
  }

  return v12 + temperatureThresholdCount + temperatureThresholdCount * chargeThresholdCount;
}

@end