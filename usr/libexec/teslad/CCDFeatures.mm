@interface CCDFeatures
+ (BOOL)sentinelExistsAtPath:(id)path;
+ (id)depBaseURLStringWithURLString:(id)string;
+ (id)depDeviceSerialNumberWithValue:(id)value;
+ (id)depProvisionalEnrollmentURLStringWithURLString:(id)string;
+ (id)depResponseContentTypeFromContentType:(id)type;
+ (id)depResponseDataFromData:(id)data;
+ (id)stringForDefaultsKey:(id)key;
@end

@implementation CCDFeatures

+ (id)stringForDefaultsKey:(id)key
{
  keyCopy = key;
  if ([self isAppleInternal])
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 stringForKey:keyCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)sentinelExistsAtPath:(id)path
{
  pathCopy = path;
  if ([self isAppleInternal])
  {
    v5 = +[NSFileManager defaultManager];
    v6 = [v5 fileExistsAtPath:pathCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)depBaseURLStringWithURLString:(id)string
{
  v4 = kCCURLUserDefaultsKey;
  stringCopy = string;
  v6 = [self stringForDefaultsKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = stringCopy;
  }

  v9 = v8;

  return v8;
}

+ (id)depProvisionalEnrollmentURLStringWithURLString:(id)string
{
  stringCopy = string;
  v5 = [self stringForDefaultsKey:@"MCTeslaProvisionalEnrollmentURL"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = stringCopy;
  }

  v8 = v7;

  return v7;
}

+ (id)depDeviceSerialNumberWithValue:(id)value
{
  valueCopy = value;
  v5 = [self stringForDefaultsKey:@"MCTeslaDeviceSerialNumber"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = valueCopy;
  }

  v8 = v7;

  return v7;
}

+ (id)depResponseContentTypeFromContentType:(id)type
{
  typeCopy = type;
  if ([self sentinelExistsAtPath:kCCFakeDEPJSONResponsePath])
  {
    v5 = @"application/json";
  }

  else
  {
    v5 = typeCopy;
  }

  return v5;
}

+ (id)depResponseDataFromData:(id)data
{
  dataCopy = data;
  v5 = kCCFakeDEPJSONResponsePath;
  if ([self sentinelExistsAtPath:kCCFakeDEPJSONResponsePath])
  {
    v6 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Overriding cloud config with file at path: %{public}@", &v9, 0xCu);
    }

    v7 = [NSData dataWithContentsOfFile:v5];

    dataCopy = v7;
  }

  return dataCopy;
}

@end