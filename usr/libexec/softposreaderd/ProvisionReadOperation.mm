@interface ProvisionReadOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (_TtC14softposreaderd22ProvisionReadOperation)init;
- (void)cancel;
- (void)handleSessionReachedTimeLimit;
- (void)readerSession:(id)session didReceiveThermalIndication:(BOOL)indication;
- (void)readerSession:(id)session receivedData:(id)data fromApplet:(id)applet;
- (void)secureElementReaderSessionDidEndUnexpectedly:(id)unexpectedly;
- (void)setExecuting:(BOOL)executing;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation ProvisionReadOperation

- (BOOL)isExecuting
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_lockedState);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 20));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));

  return v4;
}

- (void)setExecuting:(BOOL)executing
{
  selfCopy = self;
  v5 = String._bridgeToObjectiveC()();
  [(ProvisionReadOperation *)selfCopy willChangeValueForKey:v5];

  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_lockedState);
  os_unfair_lock_lock((v6 + 20));
  *(v6 + 16) = executing;
  os_unfair_lock_unlock((v6 + 20));
  v7 = String._bridgeToObjectiveC()();
  [(ProvisionReadOperation *)selfCopy didChangeValueForKey:v7];
}

- (BOOL)isFinished
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_lockedState);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 20));
  v4 = *(v2 + 17);
  os_unfair_lock_unlock((v2 + 20));

  return v4;
}

- (void)setFinished:(BOOL)finished
{
  selfCopy = self;
  v5 = String._bridgeToObjectiveC()();
  [(ProvisionReadOperation *)selfCopy willChangeValueForKey:v5];

  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_lockedState);
  os_unfair_lock_lock((v6 + 20));
  *(v6 + 17) = finished;
  os_unfair_lock_unlock((v6 + 20));
  v7 = String._bridgeToObjectiveC()();
  [(ProvisionReadOperation *)selfCopy didChangeValueForKey:v7];
}

- (void)cancel
{
  selfCopy = self;
  sub_10000EF90();
}

- (void)start
{
  selfCopy = self;
  sub_100010FA8();
}

- (void)handleSessionReachedTimeLimit
{
  selfCopy = self;
  sub_100012DB0();
}

- (void)readerSession:(id)session didReceiveThermalIndication:(BOOL)indication
{
  sessionCopy = session;
  selfCopy = self;
  sub_1000130D4(sessionCopy, indication);
}

- (void)secureElementReaderSessionDidEndUnexpectedly:(id)unexpectedly
{
  unexpectedlyCopy = unexpectedly;
  selfCopy = self;
  sub_1000136D4();
}

- (void)readerSession:(id)session receivedData:(id)data fromApplet:(id)applet
{
  sessionCopy = session;
  dataCopy = data;
  appletCopy = applet;
  selfCopy = self;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_1000149DC(sessionCopy, v11, v13, v14, v16);

  sub_100009548(v11, v13);
}

- (_TtC14softposreaderd22ProvisionReadOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end