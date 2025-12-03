@interface ICUtilities
+ (BOOL)isInternetReachable;
@end

@implementation ICUtilities

+ (BOOL)isInternetReachable
{
  v2 = +[ICReachability sharedReachabilityForInternetConnection];
  currentReachabilityStatus = [v2 currentReachabilityStatus];

  return currentReachabilityStatus != 0;
}

@end