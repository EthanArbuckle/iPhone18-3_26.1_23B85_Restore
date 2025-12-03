@interface LyonHomeDelegate
- (_TtC10seserviced16LyonHomeDelegate)init;
- (void)homeDidUpdateAccessControlForCurrentUser:(id)user;
- (void)homeDidUpdateHomeLocationStatus:(id)status;
- (void)restrictedGuestAllowedPeriodEnded:(id)ended;
- (void)restrictedGuestAllowedPeriodStarted:(id)started;
@end

@implementation LyonHomeDelegate

- (void)homeDidUpdateHomeLocationStatus:(id)status
{
  statusCopy = status;
  selfCopy = self;
  sub_1001DF2A0(statusCopy);
}

- (void)homeDidUpdateAccessControlForCurrentUser:(id)user
{
  userCopy = user;
  selfCopy = self;
  sub_1001DF68C(userCopy);
}

- (void)restrictedGuestAllowedPeriodStarted:(id)started
{
  startedCopy = started;
  selfCopy = self;
  sub_1001E03B4(&unk_1004CB3A8, sub_1001E06D0, &unk_1004CB3C0);
}

- (void)restrictedGuestAllowedPeriodEnded:(id)ended
{
  endedCopy = ended;
  selfCopy = self;
  sub_1001E03B4(&unk_1004CB358, sub_1001E06A8, &unk_1004CB370);
}

- (_TtC10seserviced16LyonHomeDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end