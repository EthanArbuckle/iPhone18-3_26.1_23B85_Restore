@interface DKPairSetupSession
- (BOOL)isSecureSession;
- (_TtC14dockaccessoryd18DKPairSetupSession)init;
- (id)getCertificate;
- (void)generateSessionKeys;
- (void)receivedSetupExchangeData:(id)data error:(id)error;
- (void)start;
- (void)stop;
- (void)stopWithError:(id)error;
@end

@implementation DKPairSetupSession

- (void)start
{
  selfCopy = self;
  sub_1000A584C();
}

- (void)stop
{
  selfCopy = self;
  sub_1000A5D58(0);
}

- (void)stopWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_1000A5D58(error);
}

- (void)receivedSetupExchangeData:(id)data error:(id)error
{
  if (data)
  {
    errorCopy = error;
    selfCopy = self;
    dataCopy = data;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    errorCopy2 = error;
    selfCopy2 = self;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  sub_1000B3CF8(v9, v11);

  sub_1000A452C(v9, v11);
}

- (void)generateSessionKeys
{
  selfCopy = self;
  sub_1000AD028();
}

- (BOOL)isSecureSession
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_clientQueue);
  selfCopy = self;
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