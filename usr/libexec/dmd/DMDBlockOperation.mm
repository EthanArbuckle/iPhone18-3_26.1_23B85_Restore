@interface DMDBlockOperation
+ (id)blockOperationWithBlock:(id)block;
- (void)main;
@end

@implementation DMDBlockOperation

+ (id)blockOperationWithBlock:(id)block
{
  blockCopy = block;
  v4 = objc_opt_new();
  [v4 setBlock:blockCopy];

  return v4;
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  block = [(DMDBlockOperation *)self block];
  block[2]();

  objc_autoreleasePoolPop(v3);
}

@end