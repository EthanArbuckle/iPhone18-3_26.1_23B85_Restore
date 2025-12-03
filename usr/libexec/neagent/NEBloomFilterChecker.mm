@interface NEBloomFilterChecker
- (void)start:(id)start responseQueue:(id)queue completionHandler:(id)handler;
@end

@implementation NEBloomFilterChecker

- (void)start:(id)start responseQueue:(id)queue completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

@end