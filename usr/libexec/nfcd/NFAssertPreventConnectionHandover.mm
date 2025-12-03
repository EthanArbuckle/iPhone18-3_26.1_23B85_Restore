@interface NFAssertPreventConnectionHandover
- (BOOL)isEntitled:(id)entitled;
- (id)onAssert;
- (id)onDeassert;
@end

@implementation NFAssertPreventConnectionHandover

- (BOOL)isEntitled:(id)entitled
{
  nF_whitelistChecker = [entitled NF_whitelistChecker];
  chAssertion = [nF_whitelistChecker chAssertion];

  return chAssertion;
}

- (id)onAssert
{
  [(NFAsserter *)self setState:2];
  v3 = +[_NFHardwareManager sharedHardwareManager];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 416);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v6 queueSuspend];

  if (self)
  {
    clientInfo = self->_clientInfo;
  }

  else
  {
    clientInfo = 0;
  }

  sub_10017D968(v4, clientInfo);

  return 0;
}

- (id)onDeassert
{
  [(NFAsserter *)self setState:4];
  v3 = +[_NFHardwareManager sharedHardwareManager];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 416);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v6 queueResume];

  if (self)
  {
    clientInfo = self->_clientInfo;
  }

  else
  {
    clientInfo = 0;
  }

  sub_10017DD1C(v4, clientInfo);

  return 0;
}

@end