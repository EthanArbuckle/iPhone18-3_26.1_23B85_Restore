@interface HangDataStreamStatus
- (HangDataStreamStatus)init;
@end

@implementation HangDataStreamStatus

- (HangDataStreamStatus)init
{
  v5.receiver = self;
  v5.super_class = HangDataStreamStatus;
  v2 = [(HangDataStreamStatus *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HangDataStreamStatus *)v2 initStatus];
  }

  return v3;
}

@end