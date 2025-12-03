@interface NSUUID
+ (id)eks_garbageUUID;
@end

@implementation NSUUID

+ (id)eks_garbageUUID
{
  v2 = +[NSUUID UUID];
  uUIDString = [v2 UUIDString];
  v4 = [NSString stringWithFormat:@"GARBAGE:%@", uUIDString];

  return v4;
}

@end