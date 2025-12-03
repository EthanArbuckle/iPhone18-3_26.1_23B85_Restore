@interface SECUserSession
- (_TtC10seserviced14SECUserSession)init;
- (void)armCredentialForCardEmulation:(id)emulation sceneIdentifier:(id)identifier reply:(id)reply;
- (void)armCurrentCredentialForCardEmulationWithSceneIdentifier:(id)identifier reply:(id)reply;
- (void)authorizeCredentialInWiredModeWith:(id)with instanceAID:(id)d sceneIdentifier:(id)identifier reply:(id)reply;
- (void)createCredentialWithServerConfigUUID:(id)d friendlyName:(id)name reply:(id)reply;
- (void)deleteCredential:(id)credential reply:(id)reply;
- (void)endCardEmulationWithReply:(id)reply;
- (void)endWiredModeWithReply:(id)reply;
- (void)modifyAccessForCredential:(id)credential addingOwners:(id)owners removingOwners:(id)removingOwners addingUsers:(id)users removingUsers:(id)removingUsers reply:(id)reply;
- (void)secureElementInfoWithReply:(id)reply;
- (void)setCredentialInWiredModeWith:(id)with reply:(id)reply;
- (void)transceive:(id)transceive reply:(id)reply;
@end

@implementation SECUserSession

- (void)secureElementInfoWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  _Block_copy(v4);
  selfCopy = self;
  sub_1000C25A8(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)armCredentialForCardEmulation:(id)emulation sceneIdentifier:(id)identifier reply:(id)reply
{
  selfCopy = self;
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v30 - v8;
  v32 = &v30 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  v17 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v19;
  v31 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v25 = selfCopy;
  *(v24 + 4) = selfCopy;
  (*(v11 + 32))(&v24[v22], v14, v10);
  v26 = &v24[v23];
  v27 = v30;
  *v26 = v31;
  v26[1] = v27;
  v28 = &v24[(v23 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v28 = sub_10012E5A0;
  *(v28 + 1) = v20;
  v29 = v25;

  sub_1001F9BE8(0, 0, v32, &unk_10040B590, v24);

  (*(v11 + 8))(v16, v10);
}

- (void)endCardEmulationWithReply:(id)reply
{
  v5 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(reply);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = sub_10012DE64;
  v12[6] = v10;
  selfCopy = self;
  sub_1001F9BE8(0, 0, v8, &unk_10040B580, v12);
}

- (void)createCredentialWithServerConfigUUID:(id)d friendlyName:(id)name reply:(id)reply
{
  selfCopy = self;
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v30 - v8;
  v32 = &v30 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  v17 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v19;
  v31 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v25 = selfCopy;
  *(v24 + 4) = selfCopy;
  (*(v11 + 32))(&v24[v22], v14, v10);
  v26 = &v24[v23];
  v27 = v30;
  *v26 = v31;
  v26[1] = v27;
  v28 = &v24[(v23 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v28 = sub_1000C2784;
  v28[1] = v20;
  v29 = v25;

  sub_1001F9BE8(0, 0, v32, &unk_10040F9C8, v24);

  (*(v11 + 8))(v16, v10);
}

- (void)deleteCredential:(id)credential reply:(id)reply
{
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v17 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = self;
  (*(v11 + 32))(&v22[v20], v14, v10);
  v23 = &v22[v21];
  *v23 = sub_10012E5A0;
  *(v23 + 1) = v18;
  selfCopy = self;

  sub_1001F9BE8(0, 0, v9, &unk_10040F9A0, v22);

  (*(v11 + 8))(v16, v10);
}

- (void)modifyAccessForCredential:(id)credential addingOwners:(id)owners removingOwners:(id)removingOwners addingUsers:(id)users removingUsers:(id)removingUsers reply:(id)reply
{
  usersCopy = users;
  removingUsersCopy = removingUsers;
  removingOwnersCopy = removingOwners;
  selfCopy = self;
  v9 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - v11;
  v33 = &v33 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v33 - v18;
  v20 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  removingOwnersCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  usersCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  (*(v14 + 16))(v17, v19, v13);
  v24 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v25 = (v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v27 = selfCopy;
  v29 = removingOwnersCopy;
  v28 = v35;
  *(v26 + 4) = selfCopy;
  *(v26 + 5) = v28;
  v30 = usersCopy;
  *(v26 + 6) = v29;
  *(v26 + 7) = v30;
  *(v26 + 8) = v21;
  (*(v14 + 32))(&v26[v24], v17, v13);
  v31 = &v26[v25];
  *v31 = sub_10012DE64;
  v31[1] = v22;
  v32 = v27;

  sub_1001F9BE8(0, 0, v33, &unk_10040F990, v26);

  (*(v14 + 8))(v19, v13);
}

- (_TtC10seserviced14SECUserSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setCredentialInWiredModeWith:(id)with reply:(id)reply
{
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v17 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = self;
  (*(v11 + 32))(&v22[v20], v14, v10);
  v23 = &v22[v21];
  *v23 = sub_10012E5A0;
  *(v23 + 1) = v18;
  selfCopy = self;

  sub_1001F9BE8(0, 0, v9, &unk_100414000, v22);

  (*(v11 + 8))(v16, v10);
}

- (void)authorizeCredentialInWiredModeWith:(id)with instanceAID:(id)d sceneIdentifier:(id)identifier reply:(id)reply
{
  v10 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v48 = &v41 - v12;
  v47 = type metadata accessor for UUID();
  v13 = *(v47 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v47);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = _Block_copy(reply);
  v46 = v17;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  dCopy = d;
  identifierCopy = identifier;
  selfCopy = self;
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v22;
  v45 = v21;

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v24;
  v42 = v23;

  v25 = swift_allocObject();
  *(v25 + 16) = v18;
  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v48, 1, 1, v26);
  v27 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v47;
  (*(v13 + 16))(v27, v17, v47);
  v29 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v30 = (v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  v33 = selfCopy;
  *(v32 + 4) = selfCopy;
  (*(v13 + 32))(&v32[v29], v27, v28);
  v34 = &v32[v30];
  v36 = v44;
  v35 = v45;
  *v34 = v45;
  v34[1] = v36;
  v37 = &v32[v31];
  v38 = v41;
  *v37 = v42;
  v37[1] = v38;
  v39 = &v32[(v31 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v39 = sub_10012E5A0;
  *(v39 + 1) = v25;
  v40 = v33;
  sub_100069E2C(v35, v36);

  sub_1001F9BE8(0, 0, v48, &unk_100413FF0, v32);

  sub_10006A178(v35, v36);
  (*(v13 + 8))(v46, v28);
}

- (void)transceive:(id)transceive reply:(id)reply
{
  v6 = _Block_copy(reply);
  transceiveCopy = transceive;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_10029770C(v8, v10, sub_100264854, v11);

  sub_10006A178(v8, v10);
}

- (void)armCurrentCredentialForCardEmulationWithSceneIdentifier:(id)identifier reply:(id)reply
{
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(reply);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = sub_10012E5A0;
  v16[6] = v14;
  v16[7] = v11;
  v16[8] = v13;
  selfCopy = self;
  sub_1001F9BE8(0, 0, v9, &unk_100413FD0, v16);
}

- (void)endWiredModeWithReply:(id)reply
{
  v5 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(reply);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = sub_10012DE64;
  v12[6] = v10;
  selfCopy = self;
  sub_1001F9BE8(0, 0, v8, &unk_100413FC0, v12);
}

@end