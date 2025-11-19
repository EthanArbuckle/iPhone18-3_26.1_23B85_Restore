@interface SDAuthenticationSecurityManager
- (_TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager)init;
- (void)handleKeyBagStateChanged;
- (void)handleOnWristStateChanged;
@end

@implementation SDAuthenticationSecurityManager

- (void)handleKeyBagStateChanged
{
  v2 = self;
  sub_100013728(sub_100015D14, &unk_1008DD0B8);
}

- (void)handleOnWristStateChanged
{
  v2 = self;
  sub_100013728(sub_100356384, &unk_1008DD090);
}

- (_TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end