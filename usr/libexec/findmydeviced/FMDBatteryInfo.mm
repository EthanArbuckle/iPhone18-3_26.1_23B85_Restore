@interface FMDBatteryInfo
- (FMDBatteryInfo)init;
- (FMDBatteryInfo)initWithCoder:(id)coder;
- (FMDBatteryInfo)initWithType:(unint64_t)type level:(double)level state:(unint64_t)state;
- (NSDictionary)dictionaryValue;
- (id)batteryStatusForState:(unint64_t)state;
- (void)encodeWithCoder:(id)coder;
- (void)populateBatterStatsForCurrentDevice;
@end

@implementation FMDBatteryInfo

- (FMDBatteryInfo)init
{
  v5.receiver = self;
  v5.super_class = FMDBatteryInfo;
  v2 = [(FMDBatteryInfo *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_batteryType = 4;
    [(FMDBatteryInfo *)v2 populateBatterStatsForCurrentDevice];
  }

  return v3;
}

- (void)populateBatterStatsForCurrentDevice
{
  v3 = objc_autoreleasePoolPush();
  v4 = IOServiceMatching("IOPMPowerSource");
  if (v4)
  {
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v4);
    if (MatchingService)
    {
      v6 = MatchingService;
      CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"FullyCharged", kCFAllocatorDefault, 0);
      v8 = IORegistryEntryCreateCFProperty(v6, @"IsCharging", kCFAllocatorDefault, 0);
      v9 = v8;
      if (CFProperty)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        self->_batteryState = 0;
        if (!CFProperty)
        {
          if (!v8)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }
      }

      else
      {
        Value = CFBooleanGetValue(CFProperty);
        if (CFBooleanGetValue(v9))
        {
          v16 = Value == 0;
        }

        else
        {
          v16 = 0;
        }

        v17 = 1;
        if (v16)
        {
          v17 = 2;
        }

        self->_batteryState = v17;
      }

      CFRelease(CFProperty);
      if (!v9)
      {
LABEL_11:
        v11 = IORegistryEntryCreateCFProperty(v6, @"CurrentCapacity", kCFAllocatorDefault, 0);
        v12 = IORegistryEntryCreateCFProperty(v6, @"MaxCapacity", kCFAllocatorDefault, 0);
        v13 = v12;
        if (v11)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          if (!v11)
          {
            if (!v12)
            {
LABEL_19:
              IOObjectRelease(v6);
              goto LABEL_20;
            }

LABEL_18:
            CFRelease(v13);
            goto LABEL_19;
          }
        }

        else
        {
          valuePtr = 0;
          CFNumberGetValue(v11, kCFNumberFloatType, &valuePtr + 4);
          CFNumberGetValue(v13, kCFNumberFloatType, &valuePtr);
          v18 = 0.0;
          if (COERCE_INT(fabs(*(&valuePtr + 1) / *&valuePtr)) < 2139095040)
          {
            v18 = (*(&valuePtr + 1) / *&valuePtr);
          }

          self->_batteryLevel = v18;
        }

        CFRelease(v11);
        if (!v13)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

LABEL_10:
      CFRelease(v9);
      goto LABEL_11;
    }
  }

LABEL_20:
  objc_autoreleasePoolPop(v3);
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithDouble:self->_batteryLevel];
  [v3 setValue:v4 forKey:@"batteryLevel"];

  v5 = [(FMDBatteryInfo *)self batteryStatusForState:self->_batteryState];
  [v3 setValue:v5 forKey:@"batteryStatus"];

  v6 = [NSNumber numberWithUnsignedInteger:self->_batteryType];
  [v3 setValue:v6 forKey:@"batteryType"];

  v7 = [NSNumber numberWithBool:self->_batteryState == 2];
  [v3 setValue:v7 forKey:@"isChargerConnected"];

  return v3;
}

- (FMDBatteryInfo)initWithType:(unint64_t)type level:(double)level state:(unint64_t)state
{
  v9.receiver = self;
  v9.super_class = FMDBatteryInfo;
  result = [(FMDBatteryInfo *)&v9 init];
  if (result)
  {
    result->_batteryLevel = level;
    result->_batteryState = state;
    result->_batteryType = type;
  }

  return result;
}

- (FMDBatteryInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = FMDBatteryInfo;
  v5 = [(FMDBatteryInfo *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("batteryLevel");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    [v8 doubleValue];
    v5->_batteryLevel = v9;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector("batteryState");
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    v5->_batteryState = [v12 unsignedIntegerValue];

    v13 = objc_opt_class();
    v14 = NSStringFromSelector("batteryType");
    v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];
    v5->_batteryType = [v15 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  batteryLevel = self->_batteryLevel;
  coderCopy = coder;
  v6 = [NSNumber numberWithDouble:batteryLevel];
  v7 = NSStringFromSelector("batteryLevel");
  [coderCopy encodeObject:v6 forKey:v7];

  v8 = [NSNumber numberWithUnsignedInteger:self->_batteryState];
  v9 = NSStringFromSelector("batteryState");
  [coderCopy encodeObject:v8 forKey:v9];

  v11 = [NSNumber numberWithUnsignedInteger:self->_batteryType];
  v10 = NSStringFromSelector("batteryType");
  [coderCopy encodeObject:v11 forKey:v10];
}

- (id)batteryStatusForState:(unint64_t)state
{
  if (state - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1002CF258 + state - 1);
  }
}

@end