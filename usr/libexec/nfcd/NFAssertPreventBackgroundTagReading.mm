@interface NFAssertPreventBackgroundTagReading
- (BOOL)isEntitled:(id)entitled;
- (id)onAssert;
- (id)onDeassert;
@end

@implementation NFAssertPreventBackgroundTagReading

- (BOOL)isEntitled:(id)entitled
{
  nF_whitelistChecker = [entitled NF_whitelistChecker];
  bgTagReadingAssertion = [nF_whitelistChecker bgTagReadingAssertion];

  return bgTagReadingAssertion;
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