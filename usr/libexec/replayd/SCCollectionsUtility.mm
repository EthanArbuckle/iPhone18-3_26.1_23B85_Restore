@interface SCCollectionsUtility
+ (id)getDifferenceBetween:(id)between andArray:(id)array;
@end

@implementation SCCollectionsUtility

+ (id)getDifferenceBetween:(id)between andArray:(id)array
{
  arrayCopy = array;
  v6 = [NSMutableSet setWithArray:between];
  v7 = [NSSet setWithArray:arrayCopy];

  [v6 minusSet:v7];

  return v6;
}

@end