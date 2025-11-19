@interface LyonHomeDelegate
- (_TtC10seserviced16LyonHomeDelegate)init;
- (void)homeDidUpdateAccessControlForCurrentUser:(id)a3;
- (void)homeDidUpdateHomeLocationStatus:(id)a3;
- (void)restrictedGuestAllowedPeriodEnded:(id)a3;
- (void)restrictedGuestAllowedPeriodStarted:(id)a3;
@end

@implementation LyonHomeDelegate

- (void)homeDidUpdateHomeLocationStatus:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001DF2A0(v4);
}

- (void)homeDidUpdateAccessControlForCurrentUser:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001DF68C(v4);
}

- (void)restrictedGuestAllowedPeriodStarted:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001E03B4(&unk_1004CB3A8, sub_1001E06D0, &unk_1004CB3C0);
}

- (void)restrictedGuestAllowedPeriodEnded:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001E03B4(&unk_1004CB358, sub_1001E06A8, &unk_1004CB370);
}

- (_TtC10seserviced16LyonHomeDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end