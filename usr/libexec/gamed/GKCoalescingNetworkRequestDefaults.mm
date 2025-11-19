@interface GKCoalescingNetworkRequestDefaults
+ (id)_updateRequestBody:(id)a3 newBody:(id)a4;
@end

@implementation GKCoalescingNetworkRequestDefaults

+ (id)_updateRequestBody:(id)a3 newBody:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 mutableCopy];
  v8 = [NSPropertyListSerialization dataWithPropertyList:v5 format:100 options:0 error:0];

  v9 = [v6 allHTTPHeaderFields];

  if (v9)
  {
    [v7 setValue:0 forHTTPHeaderField:@"Content-Encoding"];
  }

  [v7 setHTTPBody:v8];

  return v7;
}

@end