@interface CrashlogDecoder
+ (id)decoderForSubsystem:(id)subsystem;
@end

@implementation CrashlogDecoder

+ (id)decoderForSubsystem:(id)subsystem
{
  if ([subsystem isEqualToString:@"BT"])
  {
    v3 = objc_alloc_init(BTCrashlogDecoder);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end