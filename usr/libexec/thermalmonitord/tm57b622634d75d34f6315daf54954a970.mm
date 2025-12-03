@interface tm57b622634d75d34f6315daf54954a970
- (id)initProduct:(id)product;
- (int)computeMaxCGTemp;
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm57b622634d75d34f6315daf54954a970

- (id)initProduct:(id)product
{
  v6.receiver = self;
  v6.super_class = tm57b622634d75d34f6315daf54954a970;
  v3 = [(CommonProduct *)&v6 initProduct:product];
  v4 = v3;
  if (v3)
  {
    [v3 resetVTFilterState];
  }

  return v4;
}

- (void)updateAllThermalLoad:(BOOL)load
{
  if (load)
  {
    [(tm57b622634d75d34f6315daf54954a970 *)self resetVTFilterState];
  }

  v4 = qword_1000AB824;
  v5 = qword_1000AB82C;
  v7 = HIDWORD(qword_1000AB834);
  v6 = dword_1000AB83C;
  v9 = dword_1000AB840;
  v8 = dword_1000AB844;
  v10 = [(CommonProduct *)self findComponent:18];
  v11 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  v12 = [(CommonProduct *)self dieTempFilteredMaxAverage]/ 100.0;
  *&v13 = v12;
  *&v12 = v11;
  [v10 calculateControlEffort:v12 trigger:v13];
  v14 = v5;
  v15 = v7;
  sub_10000533C(53, (v5 * 0.4 + -126.0 + v7 * 0.22 + v9 * 0.39));
  v16 = SHIDWORD(qword_1000AB8F4);
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
    v23 = filteredBacklightCurrentLI2 + ((v23 - filteredBacklightCurrentLI2) * 0.125);
  }

  self->_filteredBacklightCurrentLI2 = v23;
  sub_10000533C(55, (v4 * 0.89 + 181.0 + v6 * -0.29 + v8 * 0.42 + v23 * 8.64));
  sub_10000533C(54, (v4 * 0.55 + -9.0 + v15 * 0.26 + v9 * 0.22));
  sub_10000533C(57, (v4 * 0.81 + 54.0 + v15 * 0.32 + v6 * -0.13));
  v25 = dword_1000AB900;
  v26 = [(CommonProduct *)self findComponent:21];
  *&v27 = v25 / 100.0;
  [v26 calculateControlEffort:v27];
  sub_10000533C(58, (v4 * 0.4 + -38.0 + v14 * 0.46 + v6 * 0.15));
  sub_10000533C(56, (v14 * 1.1 + -75.0 + v15 * -0.25 + v6 * 0.15));
  v28 = unk_1000AB904;
  v29 = [(CommonProduct *)self findComponent:22];

  *&v30 = v28 / 100.0;
  [v29 calculateControlEffort:v30];
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