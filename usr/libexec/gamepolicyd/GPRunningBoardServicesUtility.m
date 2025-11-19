@interface GPRunningBoardServicesUtility
+ (id)everythingPredicate;
@end

@implementation GPRunningBoardServicesUtility

+ (id)everythingPredicate
{
  v2 = objc_alloc_init(NSClassFromString(@"RBSProcessEverythingPredicate"));
  v3 = [RBSProcessPredicate predicateMatching:v2];

  return v3;
}

@end