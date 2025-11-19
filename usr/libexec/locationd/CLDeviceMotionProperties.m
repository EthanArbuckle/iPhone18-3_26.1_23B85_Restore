@interface CLDeviceMotionProperties
- (CLDeviceMotionProperties)initWithMode:(int)a3;
- (id)description;
@end

@implementation CLDeviceMotionProperties

- (CLDeviceMotionProperties)initWithMode:(int)a3
{
  v5.receiver = self;
  v5.super_class = CLDeviceMotionProperties;
  result = [(CLDeviceMotionProperties *)&v5 init];
  if (result)
  {
    result->_mode = a3;
  }

  return result;
}

- (id)description
{
  mode = self->_mode;
  v3 = @"3AxisDynamicGyro";
  v4 = @"6AxisThrottledGyro";
  if (mode != 67)
  {
    v4 = 0;
  }

  if (mode != 34)
  {
    v3 = v4;
  }

  v5 = @"9AxisWithNorthReference";
  v6 = @"BuildGYTT";
  if (mode != 19)
  {
    v6 = 0;
  }

  if (mode != 15)
  {
    v5 = v6;
  }

  if (mode <= 33)
  {
    v3 = v5;
  }

  v7 = @"6Axis";
  v8 = @"9Axis";
  if (mode != 7)
  {
    v8 = 0;
  }

  if (mode != 3)
  {
    v7 = v8;
  }

  v9 = @"Unknown";
  v10 = @"GyroOnly";
  if (mode != 2)
  {
    v10 = 0;
  }

  if (mode)
  {
    v9 = v10;
  }

  if (mode <= 2)
  {
    v7 = v9;
  }

  if (mode <= 14)
  {
    v11 = v7;
  }

  else
  {
    v11 = v3;
  }

  return [NSString stringWithFormat:@"CLDeviceMotionProperties<DeviceMotion=%@>", v11];
}

@end