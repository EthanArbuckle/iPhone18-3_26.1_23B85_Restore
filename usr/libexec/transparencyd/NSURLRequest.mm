@interface NSURLRequest
- (id)kt_requestId;
@end

@implementation NSURLRequest

- (id)kt_requestId
{
  allHTTPHeaderFields = [(NSURLRequest *)self allHTTPHeaderFields];
  v3 = [allHTTPHeaderFields objectForKey:off_10038B9D8];

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