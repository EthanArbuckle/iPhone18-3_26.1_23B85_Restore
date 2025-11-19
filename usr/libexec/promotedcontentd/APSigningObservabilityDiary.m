@interface APSigningObservabilityDiary
- (void)recordFailure;
- (void)recordSuccess;
@end

@implementation APSigningObservabilityDiary

- (void)recordFailure
{
  v2 = self;
  sub_10035A0DC();
}

- (void)recordSuccess
{
  v2 = self;
  sub_10035A7D8();
}

@end