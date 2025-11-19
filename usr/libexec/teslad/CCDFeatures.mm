@interface CCDFeatures
+ (BOOL)sentinelExistsAtPath:(id)a3;
+ (id)depBaseURLStringWithURLString:(id)a3;
+ (id)depDeviceSerialNumberWithValue:(id)a3;
+ (id)depProvisionalEnrollmentURLStringWithURLString:(id)a3;
+ (id)depResponseContentTypeFromContentType:(id)a3;
+ (id)depResponseDataFromData:(id)a3;
+ (id)stringForDefaultsKey:(id)a3;
@end

@implementation CCDFeatures

+ (id)stringForDefaultsKey:(id)a3
{
  v4 = a3;
  if ([a1 isAppleInternal])
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 stringForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)sentinelExistsAtPath:(id)a3
{
  v4 = a3;
  if ([a1 isAppleInternal])
  {
    v5 = +[NSFileManager defaultManager];
    v6 = [v5 fileExistsAtPath:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)depBaseURLStringWithURLString:(id)a3
{
  v4 = kCCURLUserDefaultsKey;
  v5 = a3;
  v6 = [a1 stringForDefaultsKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v8;
}

+ (id)depProvisionalEnrollmentURLStringWithURLString:(id)a3
{
  v4 = a3;
  v5 = [a1 stringForDefaultsKey:@"MCTeslaProvisionalEnrollmentURL"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

+ (id)depDeviceSerialNumberWithValue:(id)a3
{
  v4 = a3;
  v5 = [a1 stringForDefaultsKey:@"MCTeslaDeviceSerialNumber"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

+ (id)depResponseContentTypeFromContentType:(id)a3
{
  v4 = a3;
  if ([a1 sentinelExistsAtPath:kCCFakeDEPJSONResponsePath])
  {
    v5 = @"application/json";
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

+ (id)depResponseDataFromData:(id)a3
{
  v4 = a3;
  v5 = kCCFakeDEPJSONResponsePath;
  if ([a1 sentinelExistsAtPath:kCCFakeDEPJSONResponsePath])
  {
    v6 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Overriding cloud config with file at path: %{public}@", &v9, 0xCu);
    }

    v7 = [NSData dataWithContentsOfFile:v5];

    v4 = v7;
  }

  return v4;
}

@end