@interface FindMyLocateSession
+ (NSString)scheduleAlarmStream;
+ (NSString)scheduleTimerIdentifier;
- (id)fencesUpdateCallback;
- (void)checkIfThisDeviceIsBeingUsedToShareLocationWithCompletionHandler:(id)a3;
- (void)getFences:(id)a3;
- (void)setFencesUpdateCallback:(id)a3;
- (void)triggerFenceWithID:(NSUUID *)a3 trigger:(int64_t)a4 location:(CLLocation *)a5 completionHandler:(id)a6;
@end

@implementation FindMyLocateSession

- (id)fencesUpdateCallback
{
  v2 = (self + OBJC_IVAR____TtC11fmflocatord19FindMyLocateSession_fencesUpdateCallback);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002C2D4;
    aBlock[3] = &unk_10005E9B8;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFencesUpdateCallback:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_100002828;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC11fmflocatord19FindMyLocateSession_fencesUpdateCallback);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1000028D4(v7);
}

- (void)triggerFenceWithID:(NSUUID *)a3 trigger:(int64_t)a4 location:(CLLocation *)a5 completionHandler:(id)a6
{
  v11 = sub_10002C750(&qword_10006FDA8, &qword_100044D90);
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
  v18[4] = &unk_100044F58;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100044F60;
  v19[5] = v18;
  v20 = a3;
  v21 = a5;
  v22 = self;
  sub_10002FE64(0, 0, v14, &unk_100044F68, v19);
}

- (void)checkIfThisDeviceIsBeingUsedToShareLocationWithCompletionHandler:(id)a3
{
  v5 = sub_10002C750(&qword_10006FDA8, &qword_100044D90);
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
  v12[4] = &unk_100044F10;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100044F20;
  v13[5] = v12;
  v14 = self;
  sub_10002FE64(0, 0, v8, &unk_100044F30, v13);
}

+ (NSString)scheduleTimerIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)scheduleAlarmStream
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)getFences:(id)a3
{
  v5 = sub_10002C750(&qword_10006FDA8, &qword_100044D90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = self;

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  v14[5] = sub_100030A04;
  v14[6] = v10;
  sub_10002CE84(0, 0, v8, &unk_100044F00, v14);
}

@end