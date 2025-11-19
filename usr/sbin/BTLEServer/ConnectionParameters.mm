@interface ConnectionParameters
- (id)description;
@end

@implementation ConnectionParameters

- (id)description
{
  v3 = objc_opt_new();
  outCount = 0;
  v4 = objc_opt_class();
  v5 = class_copyPropertyList(v4, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Name = property_getName(v5[i]);
      v8 = [NSString stringWithUTF8String:Name];
      v9 = [(ConnectionParameters *)self valueForKey:v8];

      v10 = [NSString stringWithUTF8String:Name];
      [v3 setObject:v9 forKey:v10];
    }
  }

  free(v5);
  v11 = [NSString stringWithFormat:@"%@ 0x%x %@", objc_opt_class(), self, v3];

  return v11;
}

@end