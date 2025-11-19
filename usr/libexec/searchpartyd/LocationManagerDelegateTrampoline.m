@interface LocationManagerDelegateTrampoline
- (_TtC12searchpartydP33_59DB3DB2CFFD0A5DD2F04F14E73C8D1533LocationManagerDelegateTrampoline)init;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation LocationManagerDelegateTrampoline

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  sub_100008BB8(0, &qword_1016A3160, CLLocation_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    v12[5] = v8;
    sub_10025EDD4(0, 0, v7, &unk_1013F52C8, v12);
  }

  else
  {
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    v12[5] = a4;
    v13 = a4;
    sub_10025EDD4(0, 0, v8, &unk_1013F52B0, v12);
  }
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    sub_10025EDD4(0, 0, v6, &unk_1013F52A0, v10);
  }
}

- (_TtC12searchpartydP33_59DB3DB2CFFD0A5DD2F04F14E73C8D1533LocationManagerDelegateTrampoline)init
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(LocationManagerDelegateTrampoline *)&v5 init];
}

@end