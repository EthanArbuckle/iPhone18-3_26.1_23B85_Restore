@interface RPPairingDaemonXPCConnection
- (NSString)description;
- (_TtC8rapportd28RPPairingDaemonXPCConnection)init;
- (void)pairingValueUIVisibleUpdated:(BOOL)a3;
- (void)startPairingReceiverController:(id)a3;
@end

@implementation RPPairingDaemonXPCConnection

- (NSString)description
{
  v2 = self;
  sub_1000E5E48();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)startPairingReceiverController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000E5FD8(v4);
}

- (void)pairingValueUIVisibleUpdated:(BOOL)a3
{
  v4 = self;
  sub_1000E629C(a3);
}

- (_TtC8rapportd28RPPairingDaemonXPCConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end