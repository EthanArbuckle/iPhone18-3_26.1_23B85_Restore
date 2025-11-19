@interface RPPairingSession
+ (NSDictionary)pairingEndpoints;
+ (id)agentClientListenerGetPairingData:(id)a3;
+ (id)endpointGetPINFor:(id)a3;
+ (void)addPairingSession:(id)a3 forUUID:(id)a4;
+ (void)setPairingEndpoints:(id)a3;
- (_TtC8rapportd16RPPairingSession)init;
- (_TtC8rapportd16RPPairingSession)initWithApplicationService:(id)a3 queue:(id)a4 availablePINsChangedHandler:(id)a5 bonjourResolveHandler:(id)a6 endpointsChangedHandler:(id)a7;
- (void)activateForBrowsingWithMode:(unint64_t)a3 completionHandler:(id)a4;
- (void)activateForServerWithPin:(NSString *)a3 advertiseSensitiveInfo:(BOOL)a4 completionHandler:(id)a5;
- (void)pairWithPin:(NSString *)a3 completionHandler:(id)a4;
- (void)pairingResolveBonjourFor:(RPNWEndpoint *)a3 withPIN:(NSString *)a4 clientPublicKey:(NSData *)a5 completionHandler:(id)a6;
- (void)sendPAKEClientIdentityFor:(NSString *)a3 completionHandler:(id)a4;
- (void)stopBrowsingWithCompletionHandler:(id)a3;
- (void)stopServerWithCompletionHandler:(id)a3;
@end

@implementation RPPairingSession

+ (NSDictionary)pairingEndpoints
{
  if (qword_1001D88E0 != -1)
  {
    swift_once();
  }

  swift_getObjCClassMetadata();
  swift_beginAccess();
  type metadata accessor for UUID();
  sub_1000F16F0(&qword_1001D55A8, &type metadata accessor for UUID);

  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (void)setPairingEndpoints:(id)a3
{
  swift_getObjCClassMetadata();
  type metadata accessor for UUID();
  sub_1000F16F0(&qword_1001D55A8, &type metadata accessor for UUID);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_1001D88E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1001DA6D0 = v3;
}

- (_TtC8rapportd16RPPairingSession)initWithApplicationService:(id)a3 queue:(id)a4 availablePINsChangedHandler:(id)a5 bonjourResolveHandler:(id)a6 endpointsChangedHandler:(id)a7
{
  v10 = _Block_copy(a5);
  v11 = _Block_copy(a6);
  v12 = _Block_copy(a7);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v10)
  {
    *(swift_allocObject() + 16) = v10;
    v10 = sub_1000F1654;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_3:
  *(swift_allocObject() + 16) = v11;
  v11 = sub_1000F164C;
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_4:
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v12 = sub_1000F1644;
LABEL_8:
  v17 = a4;
  v18 = sub_1000EFC40(v13, v15, v17, v12, v16);
  sub_1000134D4(v11);
  sub_1000134D4(v10);

  return v18;
}

- (void)activateForServerWithPin:(NSString *)a3 advertiseSensitiveInfo:(BOOL)a4 completionHandler:(id)a5
{
  v9 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10014B468;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10014B470;
  v17[5] = v16;
  v18 = a3;

  sub_1000EED08(0, 0, v12, &unk_10014B478, v17);
}

- (void)stopServerWithCompletionHandler:(id)a3
{
  v5 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10014B448;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10014B450;
  v13[5] = v12;

  sub_1000EED08(0, 0, v8, &unk_10014B458, v13);
}

- (void)activateForBrowsingWithMode:(unint64_t)a3 completionHandler:(id)a4
{
  v7 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
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
  v14[4] = &unk_10014B428;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10014B430;
  v15[5] = v14;

  sub_1000EED08(0, 0, v10, &unk_10014B438, v15);
}

- (void)pairingResolveBonjourFor:(RPNWEndpoint *)a3 withPIN:(NSString *)a4 clientPublicKey:(NSData *)a5 completionHandler:(id)a6
{
  v11 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10014B400;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_10014B408;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;

  sub_1000EED08(0, 0, v14, &unk_10014B410, v19);
}

- (void)pairWithPin:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
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
  v14[4] = &unk_10014B3E0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10014B3E8;
  v15[5] = v14;
  v16 = a3;

  sub_1000EED08(0, 0, v10, &unk_10014B3F0, v15);
}

- (void)sendPAKEClientIdentityFor:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
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
  v14[4] = &unk_10014B3C0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10014B3C8;
  v15[5] = v14;
  v16 = a3;

  sub_1000EED08(0, 0, v10, &unk_10014B3D0, v15);
}

- (void)stopBrowsingWithCompletionHandler:(id)a3
{
  v5 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10014B378;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10014B388;
  v13[5] = v12;

  sub_1000EED08(0, 0, v8, &unk_10014B398, v13);
}

+ (void)addPairingSession:(id)a3 forUUID:(id)a4
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = qword_1001D88E0;

  if (v10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = qword_1001DA6D0;
  qword_1001DA6D0 = 0x8000000000000000;
  sub_1000EF508(a3, v9, isUniquelyReferenced_nonNull_native);
  qword_1001DA6D0 = v12;
  swift_endAccess();

  (*(v6 + 8))(v9, v5);
}

+ (id)agentClientListenerGetPairingData:(id)a3
{
  swift_unknownObjectRetain();
  v3 = sub_1000EE4D0();
  v5 = v4;
  swift_unknownObjectRelease();
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000C5928(v3, v5);
    v6 = isa;
  }

  return v6;
}

+ (id)endpointGetPINFor:(id)a3
{
  swift_unknownObjectRetain();
  sub_1000F0C60(a3);
  v5 = v4;
  swift_unknownObjectRelease();
  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_TtC8rapportd16RPPairingSession)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end