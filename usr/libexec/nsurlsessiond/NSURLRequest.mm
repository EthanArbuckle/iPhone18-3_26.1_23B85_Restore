@interface NSURLRequest
- (BOOL)_nsurlsessionproxy_isSafeRequest;
@end

@implementation NSURLRequest

- (BOOL)_nsurlsessionproxy_isSafeRequest
{
  v2 = [(NSURLRequest *)self URL];
  scheme = [v2 scheme];
  lowercaseString = [scheme lowercaseString];

  if ([lowercaseString isEqualToString:@"http"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [lowercaseString isEqualToString:@"https"];
  }

  return v5;
}

@end