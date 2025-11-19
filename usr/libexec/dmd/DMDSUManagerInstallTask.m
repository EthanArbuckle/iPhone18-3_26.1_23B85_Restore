@interface DMDSUManagerInstallTask
+ (DMDSUManagerInstallTask)sharedInstallTask;
+ (id)_dmfStatusErrorFromSUStatusError:(id)a3;
+ (id)productKeyFromStatus:(id)a3;
+ (id)productKeyOrDefaultFromStatus:(id)a3;
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

+ (id)_dmfStatusErrorFromSUStatusError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v8 = NSUnderlyingErrorKey;
    v9 = v3;
    v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v6 = DMFErrorWithCodeAndUserInfo();
  }

  else
  {
    v6 = DMFErrorWithCodeAndUserInfo();
  }

  return v6;
}

+ (id)productKeyFromStatus:(id)a3
{
  v4 = [a3 productBuildVersion];
  if (v4)
  {
    v5 = [a1 defaultProductKey];
    v6 = [v5 stringByAppendingString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)productKeyOrDefaultFromStatus:(id)a3
{
  v4 = [a1 productKeyFromStatus:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [a1 defaultProductKey];
  }

  v7 = v6;

  return v7;
}

@end