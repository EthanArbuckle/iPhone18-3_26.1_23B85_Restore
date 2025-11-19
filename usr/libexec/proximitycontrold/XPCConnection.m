@interface XPCConnection
- (NSString)description;
- (_TtC17proximitycontrold13XPCConnection)init;
- (void)activateObserver:(id)a3;
- (void)didSwitchRouteToDevice:(id)a3;
- (void)requestState;
- (void)startObservingHomeKitIdentifier:(id)a3;
- (void)startObservingMediaRemoteIdentifier:(id)a3;
- (void)stopObservingAllDevices;
- (void)stopObservingHomeKitIdentifier:(id)a3;
- (void)stopObservingMediaRemoteIdentifier:(id)a3;
- (void)triggerHandoffFeedbackAlertWithCompletion:(id)a3;
- (void)userTappedCloseButton;
- (void)userTappedDisambiguationButton:(id)a3;
@end

@implementation XPCConnection

- (_TtC17proximitycontrold13XPCConnection)init
{
  v2 = [objc_allocWithZone(NSXPCConnection) init];
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v3 = qword_10038B5B8;
  v4 = objc_allocWithZone(type metadata accessor for XPCServer());
  v5 = sub_100101BB4(v3);
  v6 = objc_allocWithZone(type metadata accessor for XPCConnection());
  v7 = sub_100079434(v2, v5);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

- (void)startObservingHomeKitIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100079C80(v4, "startObserving(_:)", sub_1000A7B80);
}

- (void)stopObservingHomeKitIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100079C80(v4, "stopObserving(_:)", sub_1000A92E0);
}

- (void)startObservingMediaRemoteIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100079C80(v4, "startObserving(_:)", sub_1000A8C70);
}

- (void)stopObservingMediaRemoteIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100079C80(v4, "stopObserving(_:)", sub_1000A96A0);
}

- (void)stopObservingAllDevices
{
  v2 = self;
  sub_10007A1D4();
}

- (void)userTappedCloseButton
{
  v2 = self;
  sub_10007AA6C();
}

- (void)userTappedDisambiguationButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10007ACAC(v4);
}

- (void)requestState
{
  v2 = self;
  sub_10007B6B8();
}

- (void)triggerHandoffFeedbackAlertWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_10007D440(sub_10007E5A8, v5);
}

- (void)activateObserver:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10007BCE4(v4);
}

- (void)didSwitchRouteToDevice:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10007D98C(v4);
}

- (NSString)description
{
  v2 = self;
  sub_10007C3BC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end