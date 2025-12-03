@interface AsyncOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (void)start;
@end

@implementation AsyncOperation

- (BOOL)isExecuting
{
  selfCopy = self;
  v3 = sub_1000660F0();

  return v3 & 1;
}

- (BOOL)isFinished
{
  selfCopy = self;
  v3 = sub_100066190();

  return v3 & 1;
}

- (void)start
{
  selfCopy = self;
  sub_1000662A8();
}

@end