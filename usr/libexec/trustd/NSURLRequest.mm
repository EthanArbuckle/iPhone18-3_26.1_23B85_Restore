@interface NSURLRequest
- (id)taskId;
@end

@implementation NSURLRequest

- (id)taskId
{
  allHTTPHeaderFields = [(NSURLRequest *)self allHTTPHeaderFields];
  v3 = [allHTTPHeaderFields objectForKey:@"X-Apple-Request-UUID"];

  if (v3)
  {
    v4 = [[NSUUID alloc] initWithUUIDString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end