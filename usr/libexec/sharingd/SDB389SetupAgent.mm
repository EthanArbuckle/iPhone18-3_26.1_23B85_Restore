@interface SDB389SetupAgent
+ (_TtC16DaemoniOSLibrary16SDB389SetupAgent)shared;
- (void)activate;
- (void)advertisingB389Found:(id)found;
- (void)advertisingB389Lost:(id)lost;
- (void)dismissNFCPrompt;
- (void)displayStringForContactIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier completion:(id)completion;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)setNfcXPCCnx:(id)cnx;
- (void)setupDevice:(id)device homeIdentifier:(id)identifier completion:(id)completion;
- (void)showNFCPromptWithConfig:(id)config responseHandler:(id)handler;
- (void)updateNFCPromptConfig:(id)config responseHandler:(id)handler;
@end

@implementation SDB389SetupAgent

+ (_TtC16DaemoniOSLibrary16SDB389SetupAgent)shared
{
  if (qword_100973C38 != -1)
  {
    swift_once();
  }

  v3 = static SDB389SetupAgent.shared;

  return v3;
}

- (void)activate
{
  selfCopy = self;
  SDB389SetupAgent.activate()();
}

- (void)advertisingB389Found:(id)found
{
  foundCopy = found;
  selfCopy = self;
  SDB389SetupAgent.advertisingB389Found(_:)(foundCopy);
}

- (void)advertisingB389Lost:(id)lost
{
  v5 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  if (lost)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  selfCopy = self;
  SDB389SetupAgent.advertisingB389Lost(_:)(v8);

  sub_100005508(v8, &unk_100976120, &qword_1007F9260);
}

- (void)showNFCPromptWithConfig:(id)config responseHandler:(id)handler
{
  v6 = _Block_copy(handler);
  configCopy = config;
  selfCopy = self;
  _s16DaemoniOSLibrary16SDB389SetupAgentC23showNFCPromptWithConfig_15responseHandlerySo06SFB389G13ConfigurationC_ys5Error_pSg_SdSo0L11NFCResponseVtctF_0(configCopy);
  _Block_release(v6);
}

- (void)setNfcXPCCnx:(id)cnx
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB389SetupAgent_nfcXPCCnx);
  *(&self->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB389SetupAgent_nfcXPCCnx) = cnx;
  cnxCopy = cnx;
}

- (void)updateNFCPromptConfig:(id)config responseHandler:(id)handler
{
  v6 = _Block_copy(handler);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100683DBC;
  }

  else
  {
    v7 = 0;
  }

  configCopy = config;
  selfCopy = self;
  SDB389SetupAgent.updateNFCPromptConfig(_:responseHandler:)(config, v6, v7);
  sub_100015D04(v6);
}

- (void)dismissNFCPrompt
{
  selfCopy = self;
  SDB389SetupAgent.updateNFCPromptConfig(_:responseHandler:)(0, 0, 0);
  v3 = *(&selfCopy->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB389SetupAgent_nfcConfig);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB389SetupAgent_nfcConfig) = 0;
}

- (void)displayStringForContactIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier completion:(id)completion
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 8))(v9, v5);
}

- (void)setupDevice:(id)device homeIdentifier:(id)identifier completion:(id)completion
{
  v6 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v12 - v8;
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  sub_100005508(v9, &unk_100976120, &qword_1007F9260);
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  SDB389SetupAgent.remoteAlertHandleDidActivate(_:)(activateCopy);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  selfCopy = self;
  errorCopy = error;
  sub_100683958(error);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  selfCopy = self;
  SDB389SetupAgent.remoteAlertHandleDidDeactivate(_:)(deactivateCopy);
}

@end