@interface DMDBlockOperation
+ (id)blockOperationWithBlock:(id)a3;
- (void)main;
@end

@implementation DMDBlockOperation

+ (id)blockOperationWithBlock:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setBlock:v3];

  return v4;
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(DMDBlockOperation *)self block];
  v4[2]();

  objc_autoreleasePoolPop(v3);
}

@end