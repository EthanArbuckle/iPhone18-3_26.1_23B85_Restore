@interface TableDrivenLowTempController
- (BOOL)populateIntArray:(int *)a3 params:(id)a4 key:(id)a5 expectedCount:(unint64_t)a6 assertArraySorting:(BOOL)a7;
- (TableDrivenLowTempController)initWithParams:(id)a3;
- (int)mitigationIndexForBatteryTemperature:(int)a3 stateOfCharge:(int)a4 batteryRaValue:(int)a5;
@end

@implementation TableDrivenLowTempController

- (TableDrivenLowTempController)initWithParams:(id)a3
{
  *&self->_tempThresholdHysteresis = 0xFFFFFFFF00000000;
  sub_100002A20(a3, @"tempLimitHysteresis", kCFNumberIntType, &self->_tempThresholdHysteresis);
  v5 = [a3 valueForKey:@"tempLimits"];
  v6 = [a3 valueForKey:@"chargeLimits"];
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
      [TableDrivenLowTempController populateIntArray:"populateIntArray:params:key:expectedCount:assertArraySorting:" params:self->_temperatureThresholds key:a3 expectedCount:@"tempLimits" assertArraySorting:?];
      [(TableDrivenLowTempController *)self populateIntArray:self->_chargeThresholds params:a3 key:@"chargeLimits" expectedCount:self->_chargeThresholdCount assertArraySorting:1];
      [(TableDrivenLowTempController *)self populateTableValues:a3 expectedCount:self->_responseTableCellCount assertArraySorting:0];
    }
  }

  v12 = [a3 valueForKey:@"RaLimits"];
  if (v12)
  {
    v13 = [v12 count];
    self->_batteryRaThresholdCount = v13;
    if (v13 < 7)
    {
      if (v13 >= 1)
      {
        [(TableDrivenLowTempController *)self populateIntArray:self->_batteryRaThresholds params:a3 key:@"RaLimits" expectedCount:v13 & 0x7FFFFFFF assertArraySorting:1];
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

- (BOOL)populateIntArray:(int *)a3 params:(id)a4 key:(id)a5 expectedCount:(unint64_t)a6 assertArraySorting:(BOOL)a7
{
  if (a3 && a4 && a5)
  {
    v7 = a7;
    v9 = a3;
    v10 = [a4 valueForKey:a5];
    if (v10)
    {
      v11 = v10;
      if ([v10 count] == a6)
      {
        if (a6)
        {
          v12 = 0;
          v13 = -32768;
          do
          {
            v14 = [v11 objectAtIndex:v12];
            if (v14)
            {
              v15 = [v14 intValue];
              if (v7)
              {
                v16 = v15 <= v13;
                v13 = v15;
                if (v16)
                {
                  sub_10005533C(&v19);
                  return v19;
                }
              }

              *v9++ = v15;
            }

            ++v12;
          }

          while (a6 != v12);
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

- (int)mitigationIndexForBatteryTemperature:(int)a3 stateOfCharge:(int)a4 batteryRaValue:(int)a5
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

      if (v7 > a3)
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
    while (self->_batteryRaThresholds[v9] <= a5)
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
    while (self->_chargeThresholds[v12] <= a4)
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