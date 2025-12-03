@interface CCDDeviceUtilities
+ (BOOL)isAppleTV;
+ (BOOL)isHomePod;
+ (BOOL)isRunningInDiagnosticsMode;
+ (BOOL)isWatch;
+ (BOOL)isiPad;
+ (BOOL)isiPhone;
+ (id)UDID;
+ (id)_systemInfo;
+ (id)deviceCapacity;
+ (id)deviceColor;
+ (id)deviceType;
+ (id)modelNumber;
+ (id)productBuildVersion;
+ (id)productName;
+ (id)productVersion;
+ (id)serialNumber;
@end

@implementation CCDDeviceUtilities

+ (id)deviceType
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    v2 = @"iPhone";
  }

  return v2;
}

+ (BOOL)isiPad
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003EAC;
  block[3] = &unk_10001C670;
  block[4] = self;
  if (qword_100025A28 != -1)
  {
    dispatch_once(&qword_100025A28, block);
  }

  return byte_100025A20;
}

+ (BOOL)isAppleTV
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003F90;
  block[3] = &unk_10001C670;
  block[4] = self;
  if (qword_100025A38 != -1)
  {
    dispatch_once(&qword_100025A38, block);
  }

  return byte_100025A30;
}

+ (BOOL)isWatch
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004074;
  block[3] = &unk_10001C670;
  block[4] = self;
  if (qword_100025A48 != -1)
  {
    dispatch_once(&qword_100025A48, block);
  }

  return byte_100025A40;
}

+ (BOOL)isHomePod
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004158;
  block[3] = &unk_10001C670;
  block[4] = self;
  if (qword_100025A58 != -1)
  {
    dispatch_once(&qword_100025A58, block);
  }

  return byte_100025A50;
}

+ (BOOL)isiPhone
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000423C;
  block[3] = &unk_10001C670;
  block[4] = self;
  if (qword_100025A68 != -1)
  {
    dispatch_once(&qword_100025A68, block);
  }

  return byte_100025A60;
}

+ (BOOL)isRunningInDiagnosticsMode
{
  if (qword_100025A78 != -1)
  {
    sub_10000F988();
  }

  return byte_100025A70;
}

+ (id)serialNumber
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (id)UDID
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (id)modelNumber
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (id)deviceCapacity
{
  v2 = MGCopyAnswer();
  v3 = [v2 objectForKey:kMGQDiskUsageTotalDataCapacity];

  return v3;
}

+ (id)deviceColor
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (id)_systemInfo
{
  if (qword_100025A88 != -1)
  {
    sub_10000F99C();
  }

  v3 = qword_100025A80;

  return v3;
}

+ (id)productName
{
  _systemInfo = [self _systemInfo];
  v3 = [_systemInfo objectForKeyedSubscript:@"ProductName"];

  return v3;
}

+ (id)productVersion
{
  _systemInfo = [self _systemInfo];
  v3 = [_systemInfo objectForKeyedSubscript:@"ProductVersion"];

  return v3;
}

+ (id)productBuildVersion
{
  _systemInfo = [self _systemInfo];
  v3 = [_systemInfo objectForKeyedSubscript:@"ProductBuildVersion"];

  return v3;
}

@end