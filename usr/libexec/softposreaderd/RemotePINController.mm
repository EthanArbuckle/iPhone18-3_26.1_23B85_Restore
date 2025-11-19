@interface RemotePINController
- (_TtC14softposreaderd19RemotePINController)init;
- (void)addDigitWithCipher:(id)a3 reply:(id)a4;
- (void)cancelPINCaptureWithReply:(id)a3;
- (void)capturePINWithParameters:(id)a3 reply:(id)a4;
- (void)generatePINBlockWithReply:(id)a3;
- (void)removeLastDigitWithReply:(id)a3;
- (void)updateParameters:(id)a3 reply:(id)a4;
- (void)verifyWithPINToken:(id)a3 reply:(id)a4;
@end

@implementation RemotePINController

- (void)capturePINWithParameters:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10018DDB4(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)addDigitWithCipher:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v8 = self;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = *&v8->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 16];
  v13 = *&v8->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 24];
  sub_10000BE18((&v8->super.isa + OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance), v12);
  (*(v13 + 16))(v9, v11, v12, v13);
  v6[2](v6, 0);

  sub_100009548(v9, v11);

  _Block_release(v6);
}

- (void)removeLastDigitWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = *&self->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 16];
  v6 = *&self->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance), v5);
  v7 = *(v6 + 24);
  v8 = self;
  v7(v5, v6);
  v4[2](v4, 0);

  _Block_release(v4);
}

- (void)generatePINBlockWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_10018E058(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)updateParameters:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = *&self->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 16];
  v8 = *&self->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance), v7);
  v9 = *(v8 + 48);
  v10 = a3;
  v11 = self;
  v9(v10, v7, v8);
  v6[2](v6, 0);

  _Block_release(v6);
}

- (void)cancelPINCaptureWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = *&self->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 16];
  v6 = *&self->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance), v5);
  v7 = *(v6 + 40);
  v8 = self;
  v7(v5, v6);
  v9 = *(&v8->super.isa + OBJC_IVAR____TtC14softposreaderd19RemotePINController_captureInProgress);
  *(&v8->super.isa + OBJC_IVAR____TtC14softposreaderd19RemotePINController_captureInProgress) = 0;
  swift_unknownObjectRelease();
  v4[2](v4);

  _Block_release(v4);
}

- (void)verifyWithPINToken:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = *&self->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 16];
  v10 = *&self->instance[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance), v9);
  v11 = *(v10 + 56);
  v12 = self;
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