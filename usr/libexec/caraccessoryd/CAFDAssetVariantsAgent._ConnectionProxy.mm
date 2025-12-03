@interface CAFDAssetVariantsAgent._ConnectionProxy
- (NSString)description;
- (_TtCC13caraccessoryd22CAFDAssetVariantsAgentP33_AD8EB03328B3296C924C05733247A05A16_ConnectionProxy)init;
- (void)fetchResourcesWithReply:(id)reply;
- (void)invalidate;
- (void)refreshVariants;
@end

@implementation CAFDAssetVariantsAgent._ConnectionProxy

- (NSString)description
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCC13caraccessoryd22CAFDAssetVariantsAgentP33_AD8EB03328B3296C924C05733247A05A16_ConnectionProxy_connection);
  swift_getObjectType();
  selfCopy = self;
  BSServiceConnectionHost.CAFDDescription.getter();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (_TtCC13caraccessoryd22CAFDAssetVariantsAgentP33_AD8EB03328B3296C924C05733247A05A16_ConnectionProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)invalidate
{
  selfCopy = self;
  CAFDAssetVariantsAgent._ConnectionProxy.activate()("invalidate proxy %@", &selRef_invalidate);
}

- (void)fetchResourcesWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  _Block_copy(v4);
  selfCopy = self;
  specialized CAFDAssetVariantsAgent._ConnectionProxy.fetchResources(reply:)(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)refreshVariants
{
  selfCopy = self;
  CAFDAssetVariantsAgent._ConnectionProxy.refreshVariants()();
}

@end