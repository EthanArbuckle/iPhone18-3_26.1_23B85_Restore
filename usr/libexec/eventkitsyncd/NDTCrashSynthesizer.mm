@interface NDTCrashSynthesizer
+ (void)writeCrashReport:(id)report;
+ (void)writeStackshot:(id)stackshot;
@end

@implementation NDTCrashSynthesizer

+ (void)writeStackshot:(id)stackshot
{
  v3 = qword_1000D17C8;
  stackshotCopy = stackshot;
  if (v3 != -1)
  {
    sub_100070FB4();
  }

  off_1000D17B0();
}

+ (void)writeCrashReport:(id)report
{
  v3 = qword_1000D17C8;
  reportCopy = report;
  if (v3 != -1)
  {
    sub_100070FB4();
  }

  v4 = off_1000D17B8;
  v5 = getpid();
  v4(v5, 2917850285, reportCopy);
}

@end