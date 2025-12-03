@interface SDAppleIDAccountInfo
- (NSDictionary)personInfo;
- (_TtC16DaemoniOSLibrary20SDAppleIDAccountInfo)init;
- (void)setAccount:(id)account;
@end

@implementation SDAppleIDAccountInfo

- (void)setAccount:(id)account
{
  v4 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAppleIDAccountInfo_account);
  *(self + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAppleIDAccountInfo_account) = account;
  accountCopy = account;
}

- (NSDictionary)personInfo
{
  v2 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAppleIDAccountInfo_personInfo);
  sub_1000276B4(0, &qword_10097EE28, SFAppleIDPersonInfo_ptr);

  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (_TtC16DaemoniOSLibrary20SDAppleIDAccountInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end