@interface KTEligibilityStatusReporting
- (_TtC13transparencyd28KTEligibilityStatusReporting)init;
- (_TtC13transparencyd28KTEligibilityStatusReporting)initWithPath:(id)a3 idsReporting:(id)a4 eligibilitySupport:(id)a5 configBag:(id)a6 error:(id *)a7;
- (void)aggregateResultWithSamples:(int64_t)a3 element:(NSString *)a4 completionHandler:(id)a5;
- (void)clearDatabaseWithCompletionHandler:(id)a3;
- (void)clearEligibilityOverridesWithCompletionHandler:(id)a3;
- (void)clearReportOverridesWithCompletionHandler:(id)a3;
- (void)closeDatabaseWithCompletionHandler:(id)a3;
- (void)dateFirstSeenWithError:(NSError *)a3 element:(NSString *)a4 completionHandler:(id)a5;
- (void)eligibilityCheckupMetricsWithSamples:(int64_t)a3 interval:(double)a4 completionHandler:(id)a5;
- (void)getContinuousDaysOfSuccessWithElement:(NSString *)a3 completionHandler:(id)a4;
- (void)getLatestResultForElementWithElement:(NSString *)a3 completionHandler:(id)a4;
- (void)hasOptedInByDefaultWithCompletionHandler:(id)a3;
- (void)iCloudAnalyticsEnabledWithCompletionHandler:(id)a3;
- (void)insertHasOptedInByDefaultWithValue:(int64_t)a3 completionHandler:(id)a4;
- (void)insertOSVersion:(NSString *)a3 completionHandler:(id)a4;
- (void)insertResultWithElement:(NSString *)a3 samplesAgo:(int64_t)a4 success:(BOOL)a5 completionHandler:(id)a6;
- (void)insertTimeOfLastReportWithTime:(NSDate *)a3 completionHandler:(id)a4;
- (void)lastRecommendationWithCompletionHandler:(id)a3;
- (void)osVersionWithCompletionHandler:(id)a3;
- (void)reportWithCompletionHandler:(id)a3;
- (void)setLastIDSRecWithRecommendation:(BOOL)a3 completionHandler:(id)a4;
- (void)setOverrideReportValueWithReportValue:(BOOL)a3 completionHandler:(id)a4;
- (void)setOverrideTimeBetweenReportsWithValue:(double)a3 completionHandler:(id)a4;
- (void)storeWithStatus:(_TtC13transparencyd25KTEligibilityStatusResult *)a3 completionHandler:(id)a4;
- (void)successInfoWithElement:(NSString *)a3 samples:(int64_t)a4 completionHandler:(id)a5;
- (void)timeOfLastReportWithCompletionHandler:(id)a3;
@end

@implementation KTEligibilityStatusReporting

- (_TtC13transparencyd28KTEligibilityStatusReporting)initWithPath:(id)a3 idsReporting:(id)a4 eligibilitySupport:(id)a5 configBag:(id)a6 error:(id *)a7
{
  v10 = type metadata accessor for URL();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_100008300(v13, a4, a5, a6);
}

- (void)reportWithCompletionHandler:(id)a3
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
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
  v12[4] = &unk_1002DCB70;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DCB78;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DCB80, v13);
}

- (void)storeWithStatus:(_TtC13transparencyd25KTEligibilityStatusResult *)a3 completionHandler:(id)a4
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
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
  v14[4] = &unk_1002DCB50;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002DCB58;
  v15[5] = v14;
  v16 = a3;

  sub_1000EAE9C(0, 0, v10, &unk_1002DCB60, v15);
}

- (void)iCloudAnalyticsEnabledWithCompletionHandler:(id)a3
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
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
  v12[4] = &unk_1002DCB30;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DCB38;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DCB40, v13);
}

- (void)getLatestResultForElementWithElement:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
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
  v14[4] = &unk_1002DCB10;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002DCB18;
  v15[5] = v14;
  v16 = a3;

  sub_1000EAE9C(0, 0, v10, &unk_1002DCB20, v15);
}

- (void)getContinuousDaysOfSuccessWithElement:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
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
  v14[4] = &unk_1002DCAF0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002DCAF8;
  v15[5] = v14;
  v16 = a3;

  sub_1000EAE9C(0, 0, v10, &unk_1002DCB00, v15);
}

- (void)successInfoWithElement:(NSString *)a3 samples:(int64_t)a4 completionHandler:(id)a5
{
  v9 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;

  sub_1000EAE9C(0, 0, v12, &unk_1002DCAE0, v17);
}

- (void)aggregateResultWithSamples:(int64_t)a3 element:(NSString *)a4 completionHandler:(id)a5
{
  v9 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a4;

  sub_1000EAE9C(0, 0, v12, &unk_1002DCAC0, v17);
}

- (void)insertOSVersion:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
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
  v14[4] = &unk_1002DCA90;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002DCA98;
  v15[5] = v14;
  v16 = a3;

  sub_1000EAE9C(0, 0, v10, &unk_1002DCAA0, v15);
}

- (void)osVersionWithCompletionHandler:(id)a3
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
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
  v12[4] = &unk_1002DCA70;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DCA78;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DCA80, v13);
}

- (void)insertHasOptedInByDefaultWithValue:(int64_t)a3 completionHandler:(id)a4
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
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
  v14[4] = &unk_1002DCA50;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002DCA58;
  v15[5] = v14;

  sub_1000EAE9C(0, 0, v10, &unk_1002DCA60, v15);
}

- (void)hasOptedInByDefaultWithCompletionHandler:(id)a3
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
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
  v12[4] = &unk_1002DCA30;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DCA38;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DCA40, v13);
}

- (void)timeOfLastReportWithCompletionHandler:(id)a3
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
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
  v12[4] = &unk_1002DCA10;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DCA18;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DCA20, v13);
}

- (void)lastRecommendationWithCompletionHandler:(id)a3
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
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
  v12[4] = &unk_1002DC9F0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DC9F8;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DCA00, v13);
}

- (void)dateFirstSeenWithError:(NSError *)a3 element:(NSString *)a4 completionHandler:(id)a5
{
  v9 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;

  sub_1000EAE9C(0, 0, v12, &unk_1002DC9E0, v17);
}

- (void)clearEligibilityOverridesWithCompletionHandler:(id)a3
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
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
  v12[4] = &unk_1002DC9B0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DC9B8;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DC9C0, v13);
}

- (void)clearReportOverridesWithCompletionHandler:(id)a3
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
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
  v12[4] = &unk_1002DC990;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DC998;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DC9A0, v13);
}

- (void)setOverrideReportValueWithReportValue:(BOOL)a3 completionHandler:(id)a4
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
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

- (void)setLastIDSRecWithRecommendation:(BOOL)a3 completionHandler:(id)a4
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
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

- (void)setOverrideTimeBetweenReportsWithValue:(double)a3 completionHandler:(id)a4
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
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

- (void)insertResultWithElement:(NSString *)a3 samplesAgo:(int64_t)a4 success:(BOOL)a5 completionHandler:(id)a6
{
  v11 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
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
  v20 = a3;

  sub_1000EAE9C(0, 0, v14, &unk_1002DC920, v19);
}

- (void)insertTimeOfLastReportWithTime:(NSDate *)a3 completionHandler:(id)a4
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
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
  v14[4] = &unk_1002DC8F0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002DC8F8;
  v15[5] = v14;
  v16 = a3;

  sub_1000EAE9C(0, 0, v10, &unk_1002DC900, v15);
}

- (void)clearDatabaseWithCompletionHandler:(id)a3
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
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
  v12[4] = &unk_1002DC8D0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DC8D8;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DC8E0, v13);
}

- (void)closeDatabaseWithCompletionHandler:(id)a3
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
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
  v12[4] = &unk_1002DC8B0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DC8B8;
  v13[5] = v12;

  sub_1000EAE9C(0, 0, v8, &unk_1002DC8C0, v13);
}

- (void)eligibilityCheckupMetricsWithSamples:(int64_t)a3 interval:(double)a4 completionHandler:(id)a5
{
  v9 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v18 - v11;
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