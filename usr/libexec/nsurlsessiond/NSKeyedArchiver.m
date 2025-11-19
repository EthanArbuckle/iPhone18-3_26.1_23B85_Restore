@interface NSKeyedArchiver
+ (id)_nsurlsessionproxy_secureArchivedDataWithRootObject:(id)a3;
@end

@implementation NSKeyedArchiver

+ (id)_nsurlsessionproxy_secureArchivedDataWithRootObject:(id)a3
{
  v3 = a3;
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v4 encodeObject:v3 forKey:NSKeyedArchiveRootObjectKey];
  v5 = [v4 encodedData];

  return v5;
}

@end