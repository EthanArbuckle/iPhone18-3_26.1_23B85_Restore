@interface NDTCrashSynthesizer
+ (void)writeCrashReport:(id)a3;
+ (void)writeStackshot:(id)a3;
@end

@implementation NDTCrashSynthesizer

+ (void)writeStackshot:(id)a3
{
  v3 = qword_1000D17C8;
  v4 = a3;
  if (v3 != -1)
  {
    sub_100070FB4();
  }

  off_1000D17B0();
}

+ (void)writeCrashReport:(id)a3
{
  v3 = qword_1000D17C8;
  v6 = a3;
  if (v3 != -1)
  {
    sub_100070FB4();
  }

  v4 = off_1000D17B8;
  v5 = getpid();
  v4(v5, 2917850285, v6);
}

@end