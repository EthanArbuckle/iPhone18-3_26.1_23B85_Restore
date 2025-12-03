@interface DMDSUManagerInstallTask
+ (DMDSUManagerInstallTask)sharedInstallTask;
+ (id)_dmfStatusErrorFromSUStatusError:(id)error;
+ (id)productKeyFromStatus:(id)status;
+ (id)productKeyOrDefaultFromStatus:(id)status;
@end

@implementation DMDSUManagerInstallTask

+ (DMDSUManagerInstallTask)sharedInstallTask
{
  if (qword_1000FF2E8 != -1)
  {
    sub_10008788C();
  }

  v3 = qword_1000FF2E0;

  return v3;
}

+ (id)_dmfStatusErrorFromSUStatusError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    v8 = NSUnderlyingErrorKey;
    v9 = errorCopy;
    v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v6 = DMFErrorWithCodeAndUserInfo();
  }

  else
  {
    v6 = DMFErrorWithCodeAndUserInfo();
  }

  return v6;
}

+ (id)productKeyFromStatus:(id)status
{
  productBuildVersion = [status productBuildVersion];
  if (productBuildVersion)
  {
    defaultProductKey = [self defaultProductKey];
    v6 = [defaultProductKey stringByAppendingString:productBuildVersion];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)productKeyOrDefaultFromStatus:(id)status
{
  v4 = [self productKeyFromStatus:status];
  v5 = v4;
  if (v4)
  {
    defaultProductKey = v4;
  }

  else
  {
    defaultProductKey = [self defaultProductKey];
  }

  v7 = defaultProductKey;

  return v7;
}

@end