@interface SDAuthenticationManager
+ (_TtC16DaemoniOSLibrary23SDAuthenticationManager)shared;
- (_TtC16DaemoniOSLibrary23SDAuthenticationManager)init;
- (_TtP16DaemoniOSLibrary31SDAuthenticationManagerDelegate_)delegate;
- (void)addAuthenticationStateChangesObserver:(id)a3 identifier:(id)a4;
- (void)authenticateFor:(unint64_t)a3 sessionID:(id)a4 options:(id)a5 delegate:(id)a6;
- (void)canAuthenticateFor:(unint64_t)a3 options:(id)a4 sessionID:(id)a5 delegate:(id)a6;
- (void)disableFor:(unint64_t)a3 idsDeviceID:(id)a4 sessionID:(id)a5 delegate:(id)a6;
- (void)enableFor:(unint64_t)a3 deviceID:(id)a4 passcode:(id)a5 sessionID:(id)a6 delegate:(id)a7;
- (void)getEnabledAuthenticationTypesWithCompletionHandler:(id)a3;
- (void)handleDelegateInvalidatedFor:(id)a3;
- (void)handleStateChanged;
- (void)handleVisionOSFailureTappedWithUserInfo:(id)a3;
- (void)listEligibleDevicesFor:(unint64_t)a3 completionHandler:(id)a4;
- (void)registerForApprovalRequestsFor:(unint64_t)a3 delegate:(id)a4;
- (void)reportApprovalResultWithAcmToken:(id)a3 error:(id)a4 sessionID:(id)a5;
- (void)requestEnablementFor:(unint64_t)a3 deviceID:(id)a4 sessionID:(id)a5 delegate:(id)a6;
- (void)start;
@end

@implementation SDAuthenticationManager

- (_TtP16DaemoniOSLibrary31SDAuthenticationManagerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (_TtC16DaemoniOSLibrary23SDAuthenticationManager)shared
{
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v3 = qword_1009A10A8;

  return v3;
}

- (void)start
{
  v2 = self;
  sub_1006A1840();
}

- (void)listEligibleDevicesFor:(unint64_t)a3 completionHandler:(id)a4
{
  v7 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100810778;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100810780;
  v15[5] = v14;
  v16 = self;
  sub_1006E2B30(0, 0, v10, &unk_100810788, v15);
}

- (void)enableFor:(unint64_t)a3 deviceID:(id)a4 passcode:(id)a5 sessionID:(id)a6 delegate:(id)a7
{
  v24 = a3;
  v25 = type metadata accessor for UUID();
  v11 = *(v25 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v25);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = a5;
  v19 = a6;
  swift_unknownObjectRetain();
  v20 = self;
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1006A2828(v24, v15, v17, v21, v23, v14, a7);
  swift_unknownObjectRelease();

  sub_100026AC0(v21, v23);
  (*(v11 + 8))(v14, v25);
}

- (void)requestEnablementFor:(unint64_t)a3 deviceID:(id)a4 sessionID:(id)a5 delegate:(id)a6
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v17 = self;
  sub_1006A6A1C(a3, v14, v16, v13, a6);
  swift_unknownObjectRelease();

  (*(v10 + 8))(v13, v9);
}

- (void)disableFor:(unint64_t)a3 idsDeviceID:(id)a4 sessionID:(id)a5 delegate:(id)a6
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v17 = self;
  sub_1006A87C8(a3, v14, v16, v13, a6);
  swift_unknownObjectRelease();

  (*(v10 + 8))(v13, v9);
}

- (void)canAuthenticateFor:(unint64_t)a3 options:(id)a4 sessionID:(id)a5 delegate:(id)a6
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a4;
  swift_unknownObjectRetain();
  v16 = self;
  sub_1006AC46C(a3, v15, v14, a6);

  swift_unknownObjectRelease();
  (*(v11 + 8))(v14, v10);
}

- (void)authenticateFor:(unint64_t)a3 sessionID:(id)a4 options:(id)a5 delegate:(id)a6
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a5;
  swift_unknownObjectRetain();
  v16 = self;
  sub_1006B02C4(a3, v14, a5, a6);

  swift_unknownObjectRelease();
  (*(v11 + 8))(v14, v10);
}

- (void)registerForApprovalRequestsFor:(unint64_t)a3 delegate:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_1006B41AC(a3, a4);
  swift_unknownObjectRelease();
}

- (void)reportApprovalResultWithAcmToken:(id)a3 error:(id)a4 sessionID:(id)a5
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a4;
  v15 = a5;
  v16 = self;
  if (a3)
  {
    v17 = a3;
    a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v19 = 0xF000000000000000;
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1006B5120(a3, v19, a4, v13);
  sub_10028BCC0(a3, v19);

  (*(v10 + 8))(v13, v9);
}

- (void)addAuthenticationStateChangesObserver:(id)a3 identifier:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v11 = self;
  sub_1006B6290(a3, v10);
  swift_unknownObjectRelease();

  (*(v7 + 8))(v10, v6);
}

- (void)handleVisionOSFailureTappedWithUserInfo:(id)a3
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;
  v10[5] = v8;
  v11 = self;
  sub_1002B3098(0, 0, v7, &unk_100810698, v10);
}

- (void)getEnabledAuthenticationTypesWithCompletionHandler:(id)a3
{
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100810630;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10080F2C0;
  v13[5] = v12;
  v14 = self;
  sub_1006E2B30(0, 0, v8, &unk_1007FB9F0, v13);
}

- (void)handleStateChanged
{
  v2 = self;
  sub_1006B9190();
}

- (_TtC16DaemoniOSLibrary23SDAuthenticationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleDelegateInvalidatedFor:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1006DEA5C(a3);
  swift_unknownObjectRelease();
}

@end