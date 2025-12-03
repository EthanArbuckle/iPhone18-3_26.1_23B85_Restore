@interface XPCConnection
- (NSString)description;
- (_TtC17proximitycontrold13XPCConnection)init;
- (void)activateObserver:(id)observer;
- (void)didSwitchRouteToDevice:(id)device;
- (void)requestState;
- (void)startObservingHomeKitIdentifier:(id)identifier;
- (void)startObservingMediaRemoteIdentifier:(id)identifier;
- (void)stopObservingAllDevices;
- (void)stopObservingHomeKitIdentifier:(id)identifier;
- (void)stopObservingMediaRemoteIdentifier:(id)identifier;
- (void)triggerHandoffFeedbackAlertWithCompletion:(id)completion;
- (void)userTappedCloseButton;
- (void)userTappedDisambiguationButton:(id)button;
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

- (void)startObservingHomeKitIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  sub_100079C80(identifierCopy, "startObserving(_:)", sub_1000A7B80);
}

- (void)stopObservingHomeKitIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  sub_100079C80(identifierCopy, "stopObserving(_:)", sub_1000A92E0);
}

- (void)startObservingMediaRemoteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  sub_100079C80(identifierCopy, "startObserving(_:)", sub_1000A8C70);
}

- (void)stopObservingMediaRemoteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  sub_100079C80(identifierCopy, "stopObserving(_:)", sub_1000A96A0);
}

- (void)stopObservingAllDevices
{
  selfCopy = self;
  sub_10007A1D4();
}

- (void)userTappedCloseButton
{
  selfCopy = self;
  sub_10007AA6C();
}

- (void)userTappedDisambiguationButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_10007ACAC(buttonCopy);
}

- (void)requestState
{
  selfCopy = self;
  sub_10007B6B8();
}

- (void)triggerHandoffFeedbackAlertWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_10007D440(sub_10007E5A8, v5);
}

- (void)activateObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  sub_10007BCE4(observerCopy);
}

- (void)didSwitchRouteToDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  sub_10007D98C(deviceCopy);
}

- (NSString)description
{
  selfCopy = self;
  sub_10007C3BC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end