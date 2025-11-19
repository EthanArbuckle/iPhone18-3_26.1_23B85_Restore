@interface NEBloomFilterChecker
- (void)start:(id)a3 responseQueue:(id)a4 completionHandler:(id)a5;
@end

@implementation NEBloomFilterChecker

- (void)start:(id)a3 responseQueue:(id)a4 completionHandler:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0);
  }
}

@end