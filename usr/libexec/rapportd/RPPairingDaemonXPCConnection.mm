@interface RPPairingDaemonXPCConnection
- (NSString)description;
- (_TtC8rapportd28RPPairingDaemonXPCConnection)init;
- (void)pairingValueUIVisibleUpdated:(BOOL)updated;
- (void)startPairingReceiverController:(id)controller;
@end

@implementation RPPairingDaemonXPCConnection

- (NSString)description
{
  selfCopy = self;
  sub_1000E5E48();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)startPairingReceiverController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1000E5FD8(controllerCopy);
}

- (void)pairingValueUIVisibleUpdated:(BOOL)updated
{
  selfCopy = self;
  sub_1000E629C(updated);
}

- (_TtC8rapportd28RPPairingDaemonXPCConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end