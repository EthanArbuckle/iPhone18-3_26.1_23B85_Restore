@interface SecureLocationsTrampoline
- (_TtC12searchpartyd25SecureLocationsTrampoline)init;
- (void)getAllSharedKeysWithCompletion:(id)completion;
- (void)getSharingKeyWithCompletion:(id)completion;
- (void)processIDSServiceMessage:(id)message completion:(id)completion;
@end

@implementation SecureLocationsTrampoline

- (void)getAllSharedKeysWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd25SecureLocationsTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd25SecureLocationsTrampoline_implementation + 16]);
  _Block_copy(v4);
  selfCopy = self;
  sub_1009B35AC(v5, v4);
  _Block_release(v4);

  _Block_release(v4);
}

- (void)getSharingKeyWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(*sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd25SecureLocationsTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd25SecureLocationsTrampoline_implementation + 16]) + 80);
  selfCopy = self;

  sub_100B658D8(sub_1007BF36C, v5);
}

- (void)processIDSServiceMessage:(id)message completion:(id)completion
{
  v6 = _Block_copy(completion);
  messageCopy = message;
  selfCopy = self;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = *(*(*sub_1000035D0((&selfCopy->super.isa + OBJC_IVAR____TtC12searchpartyd25SecureLocationsTrampoline_implementation), *&selfCopy->implementation[OBJC_IVAR____TtC12searchpartyd25SecureLocationsTrampoline_implementation + 16]) + 72) + 24);
  _Block_copy(v6);

  sub_1011DE828(v9, v11, v12, v6);
  _Block_release(v6);

  _Block_release(v6);
  sub_100016590(v9, v11);
}

- (_TtC12searchpartyd25SecureLocationsTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end