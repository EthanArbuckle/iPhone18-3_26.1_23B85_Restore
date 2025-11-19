@interface NSUUID
+ (id)eks_garbageUUID;
@end

@implementation NSUUID

+ (id)eks_garbageUUID
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];
  v4 = [NSString stringWithFormat:@"GARBAGE:%@", v3];

  return v4;
}

@end