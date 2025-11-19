@interface SCCollectionsUtility
+ (id)getDifferenceBetween:(id)a3 andArray:(id)a4;
@end

@implementation SCCollectionsUtility

+ (id)getDifferenceBetween:(id)a3 andArray:(id)a4
{
  v5 = a4;
  v6 = [NSMutableSet setWithArray:a3];
  v7 = [NSSet setWithArray:v5];

  [v6 minusSet:v7];

  return v6;
}

@end