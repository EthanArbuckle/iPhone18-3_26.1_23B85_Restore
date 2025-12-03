@interface NSPDeviceIdentityStats
- (id)analyticsDict;
@end

@implementation NSPDeviceIdentityStats

- (id)analyticsDict
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithBool:[(NSPDeviceIdentityStats *)self success]];
  [v3 setObject:v4 forKeyedSubscript:@"Success"];

  errorDomain = [(NSPDeviceIdentityStats *)self errorDomain];
  [v3 setObject:errorDomain forKeyedSubscript:@"ErrorDomain"];

  v6 = [NSNumber numberWithInteger:[(NSPDeviceIdentityStats *)self errorCode]];
  [v3 setObject:v6 forKeyedSubscript:@"ErrorCode"];

  return v3;
}

@end