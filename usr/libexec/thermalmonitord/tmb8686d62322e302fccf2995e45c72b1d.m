@interface tmb8686d62322e302fccf2995e45c72b1d
- (id)initProduct:(id)a3;
- (void)updateAllThermalLoad:(BOOL)a3;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tmb8686d62322e302fccf2995e45c72b1d

- (id)initProduct:(id)a3
{
  v6.receiver = self;
  v6.super_class = tmb8686d62322e302fccf2995e45c72b1d;
  v3 = [(CommonProduct *)&v6 initProduct:a3];
  v4 = v3;
  if (v3)
  {
    [v3 resetVTFilterState];
  }

  return v4;
}

- (void)updateAllThermalLoad:(BOOL)a3
{
  v4 = dword_1000AB850;
  v5 = qword_1000AB824;
  v31 = HIDWORD(qword_1000AB824);
  v6 = qword_1000AB82C;
  v7 = qword_1000AB834;
  v8 = HIDWORD(qword_1000AB834);
  v10 = dword_1000AB840;
  v9 = dword_1000AB844;
  v11 = [(CommonProduct *)self findComponent:18];
  v12 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  v13 = [(CommonProduct *)self dieTempFilteredMaxAverage]/ 100.0;
  *&v14 = v13;
  *&v13 = v12;
  [v11 calculateControlEffort:v13 trigger:v14];
  v15 = v5;
  sub_10000533C(52, (v5 * 0.2 + -16.92 + v8 * 0.79));
  sub_10000533C(53, (v5 * 0.61 + 181.3 + v7 * 0.28));
  v16 = qword_1000AB8F4;
  v17 = [(CommonProduct *)self findComponent:19];
  v18 = v16 / 100.0;
  *&v19 = v18;
  [v17 calculateControlEffort:v19];
  v20 = [(CommonProduct *)self findComponent:20];
  *&v21 = v18;
  [v20 calculateControlEffort:v21];
  v22 = [-[CommonProduct findComponent:](self findComponent:{0), "currentLoadingIndex"}];
  v23 = (v22 * v22) / 100.0;
  filteredBacklightCurrentLI2 = self->_filteredBacklightCurrentLI2;
  if (filteredBacklightCurrentLI2 >= 0.0)
  {
    v23 = filteredBacklightCurrentLI2 + ((v23 - filteredBacklightCurrentLI2) * 0.14286);
  }

  self->_filteredBacklightCurrentLI2 = v23;
  sub_10000533C(54, (v23 * 0.8 + -115.3 + v15 * 0.98 + v6 * 0.05));
  sub_10000533C(56, (v4 * 0.48 + -27.45 + v6 * 0.3 + v10 * 0.22));
  sub_10000533C(57, (v4 * 0.51 + -71.07 + v7 * 0.21 + v10 * 0.29));
  sub_10000533C(58, (v15 * 0.11 + -24.71 + v4 * 0.96 + v9 * -0.07));
  v25 = dword_1000AB8FC;
  v26 = [(CommonProduct *)self findComponent:21];
  *&v27 = v25 / 100.0;
  [v26 calculateControlEffort:v27];
  sub_10000533C(55, (v31 * -0.01 + -65.87 + v6 * 1.02));
  v28 = dword_1000AB900;
  v29 = [(CommonProduct *)self findComponent:22];

  *&v30 = v28 / 100.0;
  [v29 calculateControlEffort:v30];
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