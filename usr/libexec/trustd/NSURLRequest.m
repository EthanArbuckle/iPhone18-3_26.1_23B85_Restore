@interface NSURLRequest
- (id)taskId;
@end

@implementation NSURLRequest

- (id)taskId
{
  v2 = [(NSURLRequest *)self allHTTPHeaderFields];
  v3 = [v2 objectForKey:@"X-Apple-Request-UUID"];

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