@interface RPPairingDaemon
+ (_TtC8rapportd15RPPairingDaemon)shared;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (OS_dispatch_queue)dispatchQueue;
- (id)descriptionWithLevel:(int)a3;
- (void)activate;
- (void)invalidate;
- (void)setDispatchQueue:(id)a3;
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

- (void)setDispatchQueue:(id)a3
{
  v5 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (id)descriptionWithLevel:(int)a3
{
  v3 = self;
  _s8rapportd15RPPairingDaemonC20descriptionWithLevelySSs5Int32VF_0();

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)activate
{
  v2 = self;
  RPPairingDaemon.activate()();
}

- (void)invalidate
{
  v2 = self;
  RPPairingDaemon.invalidate()();
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1000E90E4(v7);

  return v9 & 1;
}

@end