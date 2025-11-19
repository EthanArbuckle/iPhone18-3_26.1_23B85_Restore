@interface BonjourBrowser
- (_TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser)init;
- (void)subscribeReceivedDiscoveryResult:(id)a3;
- (void)subscribeTerminatedWithReason:(int64_t)a3;
@end

@implementation BonjourBrowser

- (void)subscribeTerminatedWithReason:(int64_t)a3
{
  v3 = self;
  sub_100084414();
}

- (void)subscribeReceivedDiscoveryResult:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100079590(v4);
}

- (_TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end