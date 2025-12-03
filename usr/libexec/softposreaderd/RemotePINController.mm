@interface RemotePINController
- (_TtC14softposreaderd19RemotePINController)init;
- (void)addDigitWithCipher:(id)cipher reply:(id)reply;
- (void)cancelPINCaptureWithReply:(id)reply;
- (void)capturePINWithParameters:(id)parameters reply:(id)reply;
- (void)generatePINBlockWithReply:(id)reply;
- (void)removeLastDigitWithReply:(id)reply;
- (void)updateParameters:(id)parameters reply:(id)reply;
- (void)verifyWithPINToken:(id)token reply:(id)reply;
@end

@implementation RemotePINController

- (void)capturePINWithParameters:(id)parameters reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  parametersCopy = parameters;
  selfCopy = self;
  sub_10018DDB4(parametersCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)addDigitWithCipher:(id)cipher reply:(id)reply
{
  v6 = _Block_copy(reply);
  cipherCopy = cipher;
  selfCopy = self;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = *&selfCopy->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 16];
  v13 = *&selfCopy->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 24];
  sub_10000BE18((&selfCopy->super.isa + OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance), v12);
  (*(v13 + 16))(v9, v11, v12, v13);
  v6[2](v6, 0);

  sub_100009548(v9, v11);

  _Block_release(v6);
}

- (void)removeLastDigitWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  v5 = *&self->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 16];
  v6 = *&self->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance), v5);
  v7 = *(v6 + 24);
  selfCopy = self;
  v7(v5, v6);
  v4[2](v4, 0);

  _Block_release(v4);
}

- (void)generatePINBlockWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  _Block_copy(v4);
  selfCopy = self;
  sub_10018E058(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)updateParameters:(id)parameters reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = *&self->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 16];
  v8 = *&self->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance), v7);
  v9 = *(v8 + 48);
  parametersCopy = parameters;
  selfCopy = self;
  v9(parametersCopy, v7, v8);
  v6[2](v6, 0);

  _Block_release(v6);
}

- (void)cancelPINCaptureWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  v5 = *&self->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 16];
  v6 = *&self->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance), v5);
  v7 = *(v6 + 40);
  selfCopy = self;
  v7(v5, v6);
  v9 = *(&selfCopy->super.isa + OBJC_IVAR____TtC14softposreaderd19RemotePINController_captureInProgress);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC14softposreaderd19RemotePINController_captureInProgress) = 0;
  swift_unknownObjectRelease();
  v4[2](v4);

  _Block_release(v4);
}

- (void)verifyWithPINToken:(id)token reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = *&self->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 16];
  v10 = *&self->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance), v9);
  v11 = *(v10 + 56);
  selfCopy = self;
  v11(v6, v8, v9, v10);

  v5[2](v5, 0);

  _Block_release(v5);
}

- (_TtC14softposreaderd19RemotePINController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end