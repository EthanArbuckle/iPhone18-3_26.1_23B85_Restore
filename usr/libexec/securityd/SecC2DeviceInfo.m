@interface SecC2DeviceInfo
+ (id)processName;
+ (id)processUUID;
+ (id)processVersion;
@end

@implementation SecC2DeviceInfo

+ (id)processUUID
{
  if (qword_10039E298 != -1)
  {
    dispatch_once(&qword_10039E298, &stru_100343AF0);
  }

  v3 = qword_10039E290;

  return v3;
}

+ (id)processVersion
{
  v2 = sub_1001ADDE8();
  v3 = [v2 objectForKeyedSubscript:_kCFBundleShortVersionStringKey];

  return v3;
}

+ (id)processName
{
  v2 = sub_1001ADDE8();
  v3 = [v2 objectForKeyedSubscript:kCFBundleIdentifierKey];

  return v3;
}

@end