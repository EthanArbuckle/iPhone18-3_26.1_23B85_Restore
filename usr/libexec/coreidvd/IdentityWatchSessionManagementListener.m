@interface IdentityWatchSessionManagementListener
- (_TtC8coreidvd38IdentityWatchSessionManagementListener)init;
- (void)lockStateMonitor:(id)a3 deviceLockDidUpdate:(BOOL)a4 watchPairingID:(id)a5;
- (void)manager:(id)a3 didCompleteAuthenticationForSessionWithID:(id)a4;
- (void)manager:(id)a3 didFailAuthenticationForSessionWithID:(id)a4 error:(id)a5;
- (void)manager:(id)a3 didStartAuthenticationForSessionWithID:(id)a4;
@end

@implementation IdentityWatchSessionManagementListener

- (void)lockStateMonitor:(id)a3 deviceLockDidUpdate:(BOOL)a4 watchPairingID:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = a3;
  v11 = self;
  sub_1004CC5E8(v7, v9);
}

- (void)manager:(id)a3 didStartAuthenticationForSessionWithID:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  sub_1004CC9B8(v10);

  (*(v7 + 8))(v10, v6);
}

- (void)manager:(id)a3 didCompleteAuthenticationForSessionWithID:(id)a4
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v20 - v14;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  (*(v10 + 16))(v13, v15, v9);
  v17 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = self;
  (*(v10 + 32))(&v18[v17], v13, v9);
  v19 = self;
  sub_1003E653C(0, 0, v8, &unk_1006E6488, v18);

  (*(v10 + 8))(v15, v9);
}

- (void)manager:(id)a3 didFailAuthenticationForSessionWithID:(id)a4 error:(id)a5
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v24 - v16;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  (*(v12 + 16))(v15, v17, v11);
  v19 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = self;
  (*(v12 + 32))(&v20[v19], v15, v11);
  *&v20[(v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8] = a5;
  v21 = a5;
  v22 = self;
  v23 = v21;
  sub_1003E653C(0, 0, v10, &unk_1006E6478, v20);

  (*(v12 + 8))(v17, v11);
}

- (_TtC8coreidvd38IdentityWatchSessionManagementListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end