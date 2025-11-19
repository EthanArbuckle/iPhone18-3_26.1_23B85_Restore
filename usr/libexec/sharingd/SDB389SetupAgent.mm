@interface SDB389SetupAgent
+ (_TtC16DaemoniOSLibrary16SDB389SetupAgent)shared;
- (void)activate;
- (void)advertisingB389Found:(id)a3;
- (void)advertisingB389Lost:(id)a3;
- (void)dismissNFCPrompt;
- (void)displayStringForContactIdentifier:(id)a3 deviceIdentifier:(id)a4 completion:(id)a5;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)setNfcXPCCnx:(id)a3;
- (void)setupDevice:(id)a3 homeIdentifier:(id)a4 completion:(id)a5;
- (void)showNFCPromptWithConfig:(id)a3 responseHandler:(id)a4;
- (void)updateNFCPromptConfig:(id)a3 responseHandler:(id)a4;
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
  v2 = self;
  SDB389SetupAgent.activate()();
}

- (void)advertisingB389Found:(id)a3
{
  v4 = a3;
  v5 = self;
  SDB389SetupAgent.advertisingB389Found(_:)(v4);
}

- (void)advertisingB389Lost:(id)a3
{
  v5 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  if (a3)
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

  v11 = self;
  SDB389SetupAgent.advertisingB389Lost(_:)(v8);

  sub_100005508(v8, &unk_100976120, &qword_1007F9260);
}

- (void)showNFCPromptWithConfig:(id)a3 responseHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v8 = self;
  _s16DaemoniOSLibrary16SDB389SetupAgentC23showNFCPromptWithConfig_15responseHandlerySo06SFB389G13ConfigurationC_ys5Error_pSg_SdSo0L11NFCResponseVtctF_0(v7);
  _Block_release(v6);
}

- (void)setNfcXPCCnx:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB389SetupAgent_nfcXPCCnx);
  *(&self->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB389SetupAgent_nfcXPCCnx) = a3;
  v3 = a3;
}

- (void)updateNFCPromptConfig:(id)a3 responseHandler:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  SDB389SetupAgent.updateNFCPromptConfig(_:responseHandler:)(a3, v6, v7);
  sub_100015D04(v6);
}

- (void)dismissNFCPrompt
{
  v2 = self;
  SDB389SetupAgent.updateNFCPromptConfig(_:responseHandler:)(0, 0, 0);
  v3 = *(&v2->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB389SetupAgent_nfcConfig);
  *(&v2->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB389SetupAgent_nfcConfig) = 0;
}

- (void)displayStringForContactIdentifier:(id)a3 deviceIdentifier:(id)a4 completion:(id)a5
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 8))(v9, v5);
}

- (void)setupDevice:(id)a3 homeIdentifier:(id)a4 completion:(id)a5
{
  v6 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v12 - v8;
  if (a4)
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

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  SDB389SetupAgent.remoteAlertHandleDidActivate(_:)(v4);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_100683958(a4);
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = self;
  SDB389SetupAgent.remoteAlertHandleDidDeactivate(_:)(v4);
}

@end