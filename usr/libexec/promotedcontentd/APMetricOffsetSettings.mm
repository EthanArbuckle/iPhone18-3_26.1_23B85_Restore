@interface APMetricOffsetSettings
- (void)resetRouteOffsets;
@end

@implementation APMetricOffsetSettings

- (void)resetRouteOffsets
{
  outCount = 0;
  v3 = objc_opt_class();
  v4 = class_copyPropertyList(v3, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v6 = [[NSString alloc] initWithCString:property_getName(v4[i]) encoding:4];
      if (([v6 isEqualToString:@"lastActivity"] & 1) == 0)
      {
        v7 = [NSNumber numberWithUnsignedInt:arc4random_uniform(0x258u) + 300];
        [(APMetricOffsetSettings *)self setValue:v7 forKey:v6];
        v8 = APLogForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          *buf = 138478339;
          v13 = v10;
          v14 = 2113;
          v15 = v6;
          v16 = 2113;
          v17 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{private}@] Resetting offset for %{private}@ to %{private}@.", buf, 0x20u);
        }
      }
    }
  }

  free(v4);
}

@end