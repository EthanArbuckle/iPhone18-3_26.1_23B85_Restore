@interface GracePeriodMock
- (NSDate)startDate;
- (NSString)name;
- (void)setName:(id)name;
- (void)setStartDate:(id)date;
@end

@implementation GracePeriodMock

- (NSString)name
{
  v2 = *(self + 2);
  v3 = *(self + 3);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)setName:(id)name
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + 3);
  *(self + 2) = v4;
  *(self + 3) = v6;
}

- (NSDate)startDate
{
  v3 = sub_100001EB0(&qword_10005BD00, "^/");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC12eligibilitydP33_76CB2993945AB83551AB4E5A6C0D5A8815GracePeriodMock_startDate;
  swift_beginAccess();
  sub_100012A74(self + v7, v6);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
    v11 = isa;
  }

  return v11;
}

- (void)setStartDate:(id)date
{
  v5 = sub_100001EB0(&qword_10005BD00, "^/");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  if (date)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR____TtC12eligibilitydP33_76CB2993945AB83551AB4E5A6C0D5A8815GracePeriodMock_startDate;
  swift_beginAccess();

  sub_100012740(v8, self + v11);
  swift_endAccess();
}

@end