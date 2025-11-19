@interface tmad80096ce0126d046ebbef0e89cc46f8
- (id)initProduct:(id)a3;
- (void)updateAllThermalLoad:(BOOL)a3;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tmad80096ce0126d046ebbef0e89cc46f8

- (id)initProduct:(id)a3
{
  v4.receiver = self;
  v4.super_class = tmad80096ce0126d046ebbef0e89cc46f8;
  return [(CommonProduct *)&v4 initProduct:a3];
}

- (void)updateAllThermalLoad:(BOOL)a3
{
  v4 = qword_1000AB824;
  v5 = dword_1000AB850;
  v6 = qword_1000AB834;
  v32 = HIDWORD(qword_1000AB82C);
  v7 = HIDWORD(qword_1000AB834);
  v8 = dword_1000AB83C;
  v9 = dword_1000AB840;
  v10 = dword_1000AB844;
  v11 = [(CommonProduct *)self findComponent:18];
  v12 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  v13 = [(CommonProduct *)self dieTempFilteredMaxAverage]/ 100.0;
  *&v14 = v13;
  *&v13 = v12;
  [v11 calculateControlEffort:v13 trigger:v14];
  sub_10000533C(52, (v6 * 0.4 + -43.94 + v9 * 0.59));
  v15 = v7;
  v16 = v8;
  sub_10000533C(53, (v7 * 0.72 + -49.02 + v8 * 0.29));
  v17 = qword_1000AB8F4;
  v18 = [(CommonProduct *)self findComponent:19];
  v19 = v17 / 100.0;
  *&v20 = v19;
  [v18 calculateControlEffort:v20];
  v21 = [(CommonProduct *)self findComponent:20];
  *&v22 = v19;
  [v21 calculateControlEffort:v22];
  v23 = [-[CommonProduct findComponent:](self findComponent:{0), "currentLoadingIndex"}];
  v24 = (v23 * v23) / 100.0;
  filteredBacklightCurrentLI2 = self->_filteredBacklightCurrentLI2;
  if (filteredBacklightCurrentLI2 >= 0.0)
  {
    v24 = filteredBacklightCurrentLI2 + ((v24 - filteredBacklightCurrentLI2) * 0.14286);
  }

  self->_filteredBacklightCurrentLI2 = v24;
  sub_10000533C(54, (v24 * 2.74 + 230.79 + v4 * 1.4 + v16 * -0.38));
  v26 = dword_1000AB8FC;
  v27 = [(CommonProduct *)self findComponent:21];
  *&v28 = v26 / 100.0;
  [v27 calculateControlEffort:v28];
  sub_10000533C(56, (v5 * 0.34 + -10.0 + v15 * 0.52 + v16 * 0.14));
  sub_10000533C(57, (v15 * 0.62 + -28.27 + v16 * 0.28 + v10 * 0.1));
  sub_10000533C(58, (v32 * 0.09 + 49.39 + v6 * 0.41 + v15 * 0.47));
  sub_10000533C(55, (v4 * 0.62 + -8.64 + v9 * 0.39));
  v29 = dword_1000AB900;
  v30 = [(CommonProduct *)self findComponent:22];

  *&v31 = v29 / 100.0;
  [v30 calculateControlEffort:v31];
}

- (void)updateCoreAnalyticsInfo
{
  sub_100006FB4();
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self dieTempMaxMax];
  [(CommonProduct *)self getChargerState];
  [-[CommonProduct findComponent:](self findComponent:{2), "releaseMaxLI"}];
  [-[CommonProduct findComponent:](self findComponent:{3), "releaseMaxLI"}];
  AnalyticsSendEventLazy();
}

@end