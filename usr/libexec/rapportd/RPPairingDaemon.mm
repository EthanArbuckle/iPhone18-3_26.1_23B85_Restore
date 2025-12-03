@interface RPPairingDaemon
+ (_TtC8rapportd15RPPairingDaemon)shared;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (OS_dispatch_queue)dispatchQueue;
- (id)descriptionWithLevel:(int)level;
- (void)activate;
- (void)invalidate;
- (void)setDispatchQueue:(id)queue;
@end

@implementation RPPairingDaemon

+ (_TtC8rapportd15RPPairingDaemon)shared
{
  if (qword_1001D88B8 != -1)
  {
    swift_once();
  }

  v3 = qword_1001DA6C8;

  return v3;
}

- (OS_dispatch_queue)dispatchQueue
{
  v3 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDispatchQueue:(id)queue
{
  v5 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = queue;
  queueCopy = queue;
}

- (id)descriptionWithLevel:(int)level
{
  selfCopy = self;
  _s8rapportd15RPPairingDaemonC20descriptionWithLevelySSs5Int32VF_0();

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)activate
{
  selfCopy = self;
  RPPairingDaemon.activate()();
}

- (void)invalidate
{
  selfCopy = self;
  RPPairingDaemon.invalidate()();
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1000E90E4(connectionCopy);

  return v9 & 1;
}

@end