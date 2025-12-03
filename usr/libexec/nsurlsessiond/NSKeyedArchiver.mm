@interface NSKeyedArchiver
+ (id)_nsurlsessionproxy_secureArchivedDataWithRootObject:(id)object;
@end

@implementation NSKeyedArchiver

+ (id)_nsurlsessionproxy_secureArchivedDataWithRootObject:(id)object
{
  objectCopy = object;
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v4 encodeObject:objectCopy forKey:NSKeyedArchiveRootObjectKey];
  encodedData = [v4 encodedData];

  return encodedData;
}

@end