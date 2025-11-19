@interface tmab4b5a2f057efd0a64835b9c4226bf18
- (id)initProduct:(id)a3;
- (int)computeMaxCGTemp;
- (void)updateAllThermalLoad:(BOOL)a3;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tmab4b5a2f057efd0a64835b9c4226bf18

- (id)initProduct:(id)a3
{
  v6.receiver = self;
  v6.super_class = tmab4b5a2f057efd0a64835b9c4226bf18;
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
  if (a3)
  {
    [(tmab4b5a2f057efd0a64835b9c4226bf18 *)self resetVTFilterState];
  }

  v4 = qword_1000AB824;
  v6 = qword_1000AB82C;
  v5 = HIDWORD(qword_1000AB82C);
  v7 = qword_1000AB834;
  v8 = HIDWORD(qword_1000AB834);
  v9 = dword_1000AB83C;
  v10 = dword_1000AB840;
  v11 = [(CommonProduct *)self findComponent:18];
  v12 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  v13 = [(CommonProduct *)self dieTempFilteredMaxAverage]/ 100.0;
  *&v14 = v13;
  *&v13 = v12;
  [v11 calculateControlEffort:v13 trigger:v14];
  v15 = v6;
  v16 = v10;
  sub_10000533C(53, (v6 * 0.32 + -61.0 + v8 * 0.37 + v10 * 0.29));
  v17 = SHIDWORD(qword_1000AB8F4);
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
    v24 = filteredBacklightCurrentLI2 + ((v24 - filteredBacklightCurrentLI2) * 0.076923);
  }

  self->_filteredBacklightCurrentLI2 = v24;
  sub_10000533C(55, (v4 * 1.22 + 3.0 + v9 * -0.09 + v16 * -0.1 + v24 * 5.78));
  sub_10000533C(54, (v4 * 0.42 + -49.0 + v7 * 0.43 + v16 * 0.15));
  sub_10000533C(57, (v5 * -0.3 + 119.0 + v7 * 1.31 + v16 * -0.05));
  v26 = dword_1000AB900;
  v27 = [(CommonProduct *)self findComponent:21];
  *&v28 = v26 / 100.0;
  [v27 calculateControlEffort:v28];
  sub_10000533C(58, (v15 * 0.87 + -29.0 + v5 * -0.28 + v8 * 0.39));
  sub_10000533C(56, (v15 * 1.21 + 16.0 + v7 * -0.38 + v16 * 0.14));
  v29 = unk_1000AB904;
  v30 = [(CommonProduct *)self findComponent:22];

  *&v31 = v29 / 100.0;
  [v30 calculateControlEffort:v31];
}

- (int)computeMaxCGTemp
{
  if (dword_1000AB8FC <= dword_1000AB900)
  {
    return dword_1000AB900;
  }

  else
  {
    return dword_1000AB8FC;
  }
}

- (void)updateCoreAnalyticsInfo
{
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self dieTempMaxMax];
  [qword_1000ABCB0 getCurrentPackagePower];
  [(CommonProduct *)self getChargerState];
  sub_100006FB4();
  AnalyticsSendEventLazy();
}

@end