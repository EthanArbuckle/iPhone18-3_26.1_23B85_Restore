@interface APSigningObservabilityDiary
- (void)recordFailure;
- (void)recordSuccess;
@end

@implementation APSigningObservabilityDiary

- (void)recordFailure
{
  selfCopy = self;
  sub_10035A0DC();
}

- (void)recordSuccess
{
  selfCopy = self;
  sub_10035A7D8();
}

@end