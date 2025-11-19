@interface CrashlogDecoder
+ (id)decoderForSubsystem:(id)a3;
@end

@implementation CrashlogDecoder

+ (id)decoderForSubsystem:(id)a3
{
  if ([a3 isEqualToString:@"BT"])
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