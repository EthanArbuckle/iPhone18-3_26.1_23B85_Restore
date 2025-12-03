@interface BonjourResolver
- (_TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver)init;
- (void)datapathConfirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info;
- (void)datapathFailedToStartWithError:(int64_t)error;
- (void)datapathTerminatedWithReason:(int64_t)reason;
- (void)datapathUpdatedServiceSpecificInfo:(id)info;
@end

@implementation BonjourResolver

- (void)datapathFailedToStartWithError:(int64_t)error
{
  v3 = (self + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_terminationHandler);
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_terminationHandler);
  if (v4)
  {
    v5 = v3[1];
    selfCopy = self;
    v7 = sub_10001F89C(v4);
    v4(v7);
    sub_100010520(v4);
    v8 = *v3;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0;
  }

  v10 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_100010520(v8);
}

- (void)datapathConfirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info
{
  addressCopy = address;
  infoCopy = info;
  selfCopy = self;
  sub_10007B524(addressCopy, info);
}

- (void)datapathUpdatedServiceSpecificInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  sub_10007BDD0(info);
}

- (void)datapathTerminatedWithReason:(int64_t)reason
{
  selfCopy = self;
  sub_1000844E4();
}

- (_TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end