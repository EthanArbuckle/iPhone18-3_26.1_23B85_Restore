@interface SEKeySyncManager
+ (_TtC10seserviced16SEKeySyncManager)singleton;
+ (void)kickOff;
- (NSString)ptcViewName;
- (id)getAvailableTLKForViewName:(id)a3 secureElement:(id)a4;
- (id)haveAvailableTLKForEncryptedData:(id)a3 secureElement:(id)a4 error:(id *)a5;
- (void)onAlarm:(id)a3;
- (void)onDarwinNotification:(id)a3;
@end

@implementation SEKeySyncManager

+ (_TtC10seserviced16SEKeySyncManager)singleton
{
  if (qword_100501A08 != -1)
  {
    swift_once();
  }

  return v2;
}

- (NSString)ptcViewName
{
  v2 = *(self + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_ptcViewName);
  v3 = *(self + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_ptcViewName + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

+ (void)kickOff
{
  v2 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = ObjCClassMetadata;
  sub_1001F9BE8(0, 0, v5, &unk_10040C600, v8);
}

- (void)onDarwinNotification:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  sub_10016051C(v3, v5);
}

- (id)getAvailableTLKForViewName:(id)a3 secureElement:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = a4;

  v9 = sub_100160BDC(v5, v7, v8);
  v11 = v10;

  if (v11 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v9, v11);
    v12 = isa;
  }

  return v12;
}

- (id)haveAvailableTLKForEncryptedData:(id)a3 secureElement:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_1001625A8(v8, v10, v7);
  v12 = v11;

  sub_10006A178(v8, v10);

  return v12;
}

- (void)onAlarm:(id)a3
{
  v4 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = self;
  *(v9 + 40) = 8;

  sub_1001F9BE8(0, 0, v7, &unk_10040C570, v9);
}

@end