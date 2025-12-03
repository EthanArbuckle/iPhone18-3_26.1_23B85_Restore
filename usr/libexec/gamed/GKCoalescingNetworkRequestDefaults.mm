@interface GKCoalescingNetworkRequestDefaults
+ (id)_updateRequestBody:(id)body newBody:(id)newBody;
@end

@implementation GKCoalescingNetworkRequestDefaults

+ (id)_updateRequestBody:(id)body newBody:(id)newBody
{
  newBodyCopy = newBody;
  bodyCopy = body;
  v7 = [bodyCopy mutableCopy];
  v8 = [NSPropertyListSerialization dataWithPropertyList:newBodyCopy format:100 options:0 error:0];

  allHTTPHeaderFields = [bodyCopy allHTTPHeaderFields];

  if (allHTTPHeaderFields)
  {
    [v7 setValue:0 forHTTPHeaderField:@"Content-Encoding"];
  }

  [v7 setHTTPBody:v8];

  return v7;
}

@end