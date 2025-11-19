@interface DKPairSetupSession
- (BOOL)isSecureSession;
- (_TtC14dockaccessoryd18DKPairSetupSession)init;
- (id)getCertificate;
- (void)generateSessionKeys;
- (void)receivedSetupExchangeData:(id)a3 error:(id)a4;
- (void)start;
- (void)stop;
- (void)stopWithError:(id)a3;
@end

@implementation DKPairSetupSession

- (void)start
{
  v2 = self;
  sub_1000A584C();
}

- (void)stop
{
  v2 = self;
  sub_1000A5D58(0);
}

- (void)stopWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_1000A5D58(a3);
}

- (void)receivedSetupExchangeData:(id)a3 error:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = self;
    v8 = a3;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v12 = a4;
    v13 = self;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  sub_1000B3CF8(v9, v11);

  sub_1000A452C(v9, v11);
}

- (void)generateSessionKeys
{
  v2 = self;
  sub_1000AD028();
}

- (BOOL)isSecureSession
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_clientQueue);
  v3 = self;
  OS_dispatch_queue.sync<A>(execute:)();

  return v5;
}

- (id)getCertificate
{
  v2.super.isa = Data._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (_TtC14dockaccessoryd18DKPairSetupSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end