@interface ReportTime
- (NSDate)lastReport;
- (_TtC13transparencyd10ReportTime)init;
- (double)timeBetweenReports;
- (void)setLastReport:(id)report;
- (void)setTimeBetweenReports:(double)reports;
@end

@implementation ReportTime

- (NSDate)lastReport
{
  v3 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC13transparencyd10ReportTime_lastReport;
  swift_beginAccess();
  sub_1000AB050(self + v7, v6, &qword_100383FB0, &unk_1002D6690);
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

- (void)setLastReport:(id)report
{
  v5 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  if (report)
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

  v11 = OBJC_IVAR____TtC13transparencyd10ReportTime_lastReport;
  swift_beginAccess();
  selfCopy = self;
  sub_1000BECD4(v8, self + v11);
  swift_endAccess();
}

- (double)timeBetweenReports
{
  v3 = OBJC_IVAR____TtC13transparencyd10ReportTime_timeBetweenReports;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTimeBetweenReports:(double)reports
{
  v5 = OBJC_IVAR____TtC13transparencyd10ReportTime_timeBetweenReports;
  swift_beginAccess();
  *(self + v5) = reports;
}

- (_TtC13transparencyd10ReportTime)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end