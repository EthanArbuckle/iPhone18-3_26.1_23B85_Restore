@interface AirDropUISessionClient
- (void)dealloc;
- (void)runActionWasRequestedForTransferIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier;
@end

@implementation AirDropUISessionClient

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_connection);
  selfCopy = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for AirDropUISessionClient();
  [(AirDropUISessionClient *)&v5 dealloc];
}

- (void)runActionWasRequestedForTransferIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  sub_10044D614(v5, v7, v8, v10);
}

@end