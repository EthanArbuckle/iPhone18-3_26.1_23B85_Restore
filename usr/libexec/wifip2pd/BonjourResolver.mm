@interface BonjourResolver
- (_TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver)init;
- (void)datapathConfirmedForPeerDataAddress:(id)a3 serviceSpecificInfo:(id)a4;
- (void)datapathFailedToStartWithError:(int64_t)a3;
- (void)datapathTerminatedWithReason:(int64_t)a3;
- (void)datapathUpdatedServiceSpecificInfo:(id)a3;
@end

@implementation BonjourResolver

- (void)datapathFailedToStartWithError:(int64_t)a3
{
  v3 = (self + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_terminationHandler);
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_terminationHandler);
  if (v4)
  {
    v5 = v3[1];
    v6 = self;
    v7 = sub_10001F89C(v4);
    v4(v7);
    sub_100010520(v4);
    v8 = *v3;
  }

  else
  {
    v9 = self;
    v8 = 0;
  }

  v10 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_100010520(v8);
}

- (void)datapathConfirmedForPeerDataAddress:(id)a3 serviceSpecificInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10007B524(v6, a4);
}

- (void)datapathUpdatedServiceSpecificInfo:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10007BDD0(a3);
}

- (void)datapathTerminatedWithReason:(int64_t)a3
{
  v3 = self;
  sub_1000844E4();
}

- (_TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end