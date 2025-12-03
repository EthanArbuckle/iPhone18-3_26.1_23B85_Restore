@interface tm408f6d8c14caf38138befe9f3b97ef02
- (id)initProduct:(id)product;
- (int)computeMaxCGTemp;
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm408f6d8c14caf38138befe9f3b97ef02

- (id)initProduct:(id)product
{
  v6.receiver = self;
  v6.super_class = tm408f6d8c14caf38138befe9f3b97ef02;
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
    [(tm408f6d8c14caf38138befe9f3b97ef02 *)self resetVTFilterState];
  }

  v5 = qword_1000AB824;
  v4 = HIDWORD(qword_1000AB824);
  v6 = HIDWORD(qword_1000AB82C);
  v7 = qword_1000AB834;
  v8 = HIDWORD(qword_1000AB834);
  v30 = dword_1000AB83C;
  v9 = dword_1000AB844;
  v10 = dword_1000AB848;
  v11 = [(CommonProduct *)self findComponent:18];
  v12 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  v13 = [(CommonProduct *)self dieTempFilteredMaxAverage]/ 100.0;
  *&v14 = v13;
  *&v13 = v12;
  [v11 calculateControlEffort:v13 trigger:v14];
  sub_10000533C(55, (v5 * 0.194 + -184.5 + v8 * 0.341 + v9 * 0.516));
  v15 = dword_1000AB900;
  v16 = [(CommonProduct *)self findComponent:19];
  v17 = v15 / 100.0;
  *&v18 = v17;
  [v16 calculateControlEffort:v18];
  v19 = [(CommonProduct *)self findComponent:20];
  *&v20 = v17;
  [v19 calculateControlEffort:v20];
  v21 = [-[CommonProduct findComponent:](self findComponent:{0), "currentLoadingIndex"}];
  v22 = (v21 * v21) / 100.0;
  filteredBacklightCurrentLI2 = self->_filteredBacklightCurrentLI2;
  if (filteredBacklightCurrentLI2 >= 0.0)
  {
    v22 = filteredBacklightCurrentLI2 + ((v22 - filteredBacklightCurrentLI2) * 0.076923);
  }

  self->_filteredBacklightCurrentLI2 = v22;
  sub_10000533C(57, (v4 * 0.37 + 113.9 + v10 * 0.58 + v22 * 4.99));
  sub_10000533C(56, (v4 * 0.39 + -103.38 + v7 * 0.4 + v9 * 0.19));
  sub_10000533C(59, (v4 * 0.12 + -10.06 + v10 * 0.83));
  v24 = SHIDWORD(qword_1000AB904);
  v25 = [(CommonProduct *)self findComponent:21];
  *&v26 = v24 / 100.0;
  [v25 calculateControlEffort:v26];
  sub_10000533C(60, (v6 * 0.59 + 91.72 + v7 * 0.35));
  sub_10000533C(58, (v6 * 0.75 + -39.61 + v30 * 0.25));
  v27 = qword_1000AB90C;
  v28 = [(CommonProduct *)self findComponent:22];

  *&v29 = v27 / 100.0;
  [v28 calculateControlEffort:v29];
}

- (int)computeMaxCGTemp
{
  if (qword_1000AB904 <= SHIDWORD(qword_1000AB904))
  {
    return HIDWORD(qword_1000AB904);
  }

  else
  {
    return qword_1000AB904;
  }
}

- (void)updateCoreAnalyticsInfo
{
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self getChargerState];
  [(CommonProduct *)self dieTempMaxMax];
  [(CommonProduct *)self thermalPressureLevel];
  AnalyticsSendEventLazy();
}

@end