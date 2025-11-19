@interface RPReachability
+ (BOOL)isNetworkAvailable;
@end

@implementation RPReachability

+ (BOOL)isNetworkAvailable
{
  flags = 0;
  v2 = SCNetworkReachabilityCreateWithName(0, "www.apple.com");
  v3 = SCNetworkReachabilityGetFlags(v2, &flags);
  CFRelease(v2);
  if (!v3)
  {
    return 0;
  }

  if ((flags & 4) != 0)
  {
    return 0;
  }

  return (flags & 2) != 0;
}

@end