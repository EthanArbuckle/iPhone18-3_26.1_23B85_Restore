@interface MCKeybagUnlockAssertion
+ (id)assertionHoldQueue;
+ (void)holdAssertion;
+ (void)releaseAssertion;
- (MCKeybagUnlockAssertion)init;
- (void)dealloc;
@end

@implementation MCKeybagUnlockAssertion

+ (id)assertionHoldQueue
{
  if (qword_100136C58 != -1)
  {
    sub_1000C2DE4();
  }

  v3 = qword_100136C50;

  return v3;
}

+ (void)holdAssertion
{
  v2 = [a1 assertionHoldQueue];
  dispatch_async(v2, &stru_10011CEE8);
}

+ (void)releaseAssertion
{
  v2 = [a1 assertionHoldQueue];
  dispatch_sync(v2, &stru_10011CF18);
}

- (MCKeybagUnlockAssertion)init
{
  v4.receiver = self;
  v4.super_class = MCKeybagUnlockAssertion;
  v2 = [(MCKeybagUnlockAssertion *)&v4 init];
  if (v2)
  {
    +[MCKeybagUnlockAssertion holdAssertion];
  }

  return v2;
}

- (void)dealloc
{
  +[MCKeybagUnlockAssertion releaseAssertion];
  v3.receiver = self;
  v3.super_class = MCKeybagUnlockAssertion;
  [(MCKeybagUnlockAssertion *)&v3 dealloc];
}

@end