@interface RDFeatureFlagsTemporaryOverrideObjcWrapper
- (_TtC7remindd42RDFeatureFlagsTemporaryOverrideObjcWrapper)init;
- (void)finish;
@end

@implementation RDFeatureFlagsTemporaryOverrideObjcWrapper

- (void)finish
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC7remindd42RDFeatureFlagsTemporaryOverrideObjcWrapper_backing);
  v4 = *&self->backing[OBJC_IVAR____TtC7remindd42RDFeatureFlagsTemporaryOverrideObjcWrapper_backing];
  swift_getObjectType();
  selfCopy = self;
  v5 = v3;
  dispatch thunk of REMFeatureFlagsTemporaryOverride.finish()();
}

- (_TtC7remindd42RDFeatureFlagsTemporaryOverrideObjcWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end