@interface KTEligibilityStatusReporting
- (_TtC13transparencyd28KTEligibilityStatusReporting)init;
- (_TtC13transparencyd28KTEligibilityStatusReporting)initWithPath:(id)path idsReporting:(id)reporting eligibilitySupport:(id)support configBag:(id)bag error:(id *)error;
- (void)aggregateResultWithSamples:(int64_t)samples element:(NSString *)element completionHandler:(id)handler;
- (void)clearDatabaseWithCompletionHandler:(id)handler;
- (void)clearEligibilityOverridesWithCompletionHandler:(id)handler;
- (void)clearReportOverridesWithCompletionHandler:(id)handler;
- (void)closeDatabaseWithCompletionHandler:(id)handler;
- (void)dateFirstSeenWithError:(NSError *)error element:(NSString *)element completionHandler:(id)handler;
- (void)eligibilityCheckupMetricsWithSamples:(int64_t)samples interval:(double)interval completionHandler:(id)handler;
- (void)getContinuousDaysOfSuccessWithElement:(NSString *)element completionHandler:(id)handler;
- (void)getLatestResultForElementWithElement:(NSString *)element completionHandler:(id)handler;
- (void)hasOptedInByDefaultWithCompletionHandler:(id)handler;
- (void)iCloudAnalyticsEnabledWithCompletionHandler:(id)handler;
- (void)insertHasOptedInByDefaultWithValue:(int64_t)value completionHandler:(id)handler;
- (void)insertOSVersion:(NSString *)version completionHandler:(id)handler;
- (void)insertResultWithElement:(NSString *)element samplesAgo:(int64_t)ago success:(BOOL)success completionHandler:(id)handler;
- (void)insertTimeOfLastReportWithTime:(NSDate *)time completionHandler:(id)handler;
- (void)lastRecommendationWithCompletionHandler:(id)handler;
- (void)osVersionWithCompletionHandler:(id)handler;
- (void)reportWithCompletionHandler:(id)handler;
- (void)setLastIDSRecWithRecommendation:(BOOL)recommendation completionHandler:(id)handler;
- (void)setOverrideReportValueWithReportValue:(BOOL)value completionHandler:(id)handler;
- (void)setOverrideTimeBetweenReportsWithValue:(double)value completionHandler:(id)handler;
- (void)storeWithStatus:(_TtC13transparencyd25KTEligibilityStatusResult *)status completionHandler:(id)handler;
- (void)successInfoWithElement:(NSString *)element samples:(int64_t)samples completionHandler:(id)handler;
- (void)timeOfLastReportWithCompletionHandler:(id)handler;
@end

@implementation KTEligibilityStatusReporting

- (_TtC13transparencyd28KTEligibilityStatusReporting)initWithPath:(id)path idsReporting:(id)reporting eligibilitySupport:(id)support configBag:(id)bag error:(id *)error
{
  v10 = type metadata accessor for URL();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_100008300(v13, reporting, support, bag);
}

- (void)reportWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DCB70;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DCB78;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DCB80, v13);
}

- (void)storeWithStatus:(_TtC13transparencyd25KTEligibilityStatusResult *)status completionHandler:(id)handler
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = status;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002DCB50;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002DCB58;
  v15[5] = v14;
  statusCopy = status;

  sub_1000EAE9C(0, 0, v10, &unk_1002DCB60, v15);
}

- (void)iCloudAnalyticsEnabledWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DCB30;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DCB38;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DCB40, v13);
}

- (void)getLatestResultForElementWithElement:(NSString *)element completionHandler:(id)handler
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = element;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002DCB10;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002DCB18;
  v15[5] = v14;
  elementCopy = element;

  sub_1000EAE9C(0, 0, v10, &unk_1002DCB20, v15);
}

- (void)getContinuousDaysOfSuccessWithElement:(NSString *)element completionHandler:(id)handler
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = element;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002DCAF0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002DCAF8;
  v15[5] = v14;
  elementCopy = element;

  sub_1000EAE9C(0, 0, v10, &unk_1002DCB00, v15);
}

- (void)successInfoWithElement:(NSString *)element samples:(int64_t)samples completionHandler:(id)handler
{
  v9 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = element;
  v14[3] = samples;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1002DCAD0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1002DCAD8;
  v17[5] = v16;
  elementCopy = element;

  sub_1000EAE9C(0, 0, v12, &unk_1002DCAE0, v17);
}

- (void)aggregateResultWithSamples:(int64_t)samples element:(NSString *)element completionHandler:(id)handler
{
  v9 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = samples;
  v14[3] = element;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1002DCAB0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1002DCAB8;
  v17[5] = v16;
  elementCopy = element;

  sub_1000EAE9C(0, 0, v12, &unk_1002DCAC0, v17);
}

- (void)insertOSVersion:(NSString *)version completionHandler:(id)handler
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = version;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002DCA90;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002DCA98;
  v15[5] = v14;
  versionCopy = version;

  sub_1000EAE9C(0, 0, v10, &unk_1002DCAA0, v15);
}

- (void)osVersionWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DCA70;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DCA78;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DCA80, v13);
}

- (void)insertHasOptedInByDefaultWithValue:(int64_t)value completionHandler:(id)handler
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = value;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002DCA50;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002DCA58;
  v15[5] = v14;

  sub_1000EAE9C(0, 0, v10, &unk_1002DCA60, v15);
}

- (void)hasOptedInByDefaultWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DCA30;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DCA38;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DCA40, v13);
}

- (void)timeOfLastReportWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DCA10;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DCA18;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DCA20, v13);
}

- (void)lastRecommendationWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DC9F0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DC9F8;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DCA00, v13);
}

- (void)dateFirstSeenWithError:(NSError *)error element:(NSString *)element completionHandler:(id)handler
{
  v9 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = error;
  v14[3] = element;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1002DC9D0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1002DC9D8;
  v17[5] = v16;
  errorCopy = error;
  elementCopy = element;

  sub_1000EAE9C(0, 0, v12, &unk_1002DC9E0, v17);
}

- (void)clearEligibilityOverridesWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DC9B0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DC9B8;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DC9C0, v13);
}

- (void)clearReportOverridesWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DC990;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DC998;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DC9A0, v13);
}

- (void)setOverrideReportValueWithReportValue:(BOOL)value completionHandler:(id)handler
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = value;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002DC970;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002DC978;
  v15[5] = v14;

  sub_1000EAE9C(0, 0, v10, &unk_1002DC980, v15);
}

- (void)setLastIDSRecWithRecommendation:(BOOL)recommendation completionHandler:(id)handler
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = recommendation;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002DC950;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002DC958;
  v15[5] = v14;

  sub_1000EAE9C(0, 0, v10, &unk_1002DC960, v15);
}

- (void)setOverrideTimeBetweenReportsWithValue:(double)value completionHandler:(id)handler
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = value;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002DC930;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002DC938;
  v15[5] = v14;

  sub_1000EAE9C(0, 0, v10, &unk_1002DC940, v15);
}

- (void)insertResultWithElement:(NSString *)element samplesAgo:(int64_t)ago success:(BOOL)success completionHandler:(id)handler
{
  v11 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  *(v16 + 16) = element;
  *(v16 + 24) = ago;
  *(v16 + 32) = success;
  *(v16 + 40) = v15;
  *(v16 + 48) = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1002DC910;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1002DC918;
  v19[5] = v18;
  elementCopy = element;

  sub_1000EAE9C(0, 0, v14, &unk_1002DC920, v19);
}

- (void)insertTimeOfLastReportWithTime:(NSDate *)time completionHandler:(id)handler
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = time;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002DC8F0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002DC8F8;
  v15[5] = v14;
  timeCopy = time;

  sub_1000EAE9C(0, 0, v10, &unk_1002DC900, v15);
}

- (void)clearDatabaseWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DC8D0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DC8D8;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DC8E0, v13);
}

- (void)closeDatabaseWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DC8B0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DC8B8;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DC8C0, v13);
}

- (void)eligibilityCheckupMetricsWithSamples:(int64_t)samples interval:(double)interval completionHandler:(id)handler
{
  v9 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v18 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = samples;
  *(v14 + 24) = interval;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1002DC868;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1002DC878;
  v17[5] = v16;

  sub_1000EAE9C(0, 0, v12, &unk_1002DC888, v17);
}

- (_TtC13transparencyd28KTEligibilityStatusReporting)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end