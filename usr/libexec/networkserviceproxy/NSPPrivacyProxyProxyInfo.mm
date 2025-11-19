@interface NSPPrivacyProxyProxyInfo
+ (BOOL)allowPQTLS;
- (BOOL)usesPQTLS;
@end

@implementation NSPPrivacyProxyProxyInfo

+ (BOOL)allowPQTLS
{
  if (qword_1001296D8 != -1)
  {
    dispatch_once(&qword_1001296D8, &stru_100109498);
  }

  return byte_100128CA0;
}

- (BOOL)usesPQTLS
{
  v3 = +[NSPPrivacyProxyProxyInfo allowPQTLS];
  if (v3)
  {
    LOBYTE(v3) = [(NSPPrivacyProxyProxyInfo *)self algorithm]== 3;
  }

  return v3;
}

@end