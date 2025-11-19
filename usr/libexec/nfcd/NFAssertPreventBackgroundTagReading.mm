@interface NFAssertPreventBackgroundTagReading
- (BOOL)isEntitled:(id)a3;
- (id)onAssert;
- (id)onDeassert;
@end

@implementation NFAssertPreventBackgroundTagReading

- (BOOL)isEntitled:(id)a3
{
  v3 = [a3 NF_whitelistChecker];
  v4 = [v3 bgTagReadingAssertion];

  return v4;
}

- (id)onAssert
{
  [(NFAsserter *)self setState:2];
  v2 = +[_NFHardwareManager sharedHardwareManager];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 416);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v5 queueSuspend];

  return 0;
}

- (id)onDeassert
{
  [(NFAsserter *)self setState:4];
  v2 = +[_NFHardwareManager sharedHardwareManager];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 416);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v5 queueResume];

  return 0;
}

@end