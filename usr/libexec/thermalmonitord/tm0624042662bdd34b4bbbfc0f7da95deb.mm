@interface tm0624042662bdd34b4bbbfc0f7da95deb
- (id)getGridX;
- (id)getGridY;
- (int)compute2DGridTemps;
- (void)updateAllThermalLoad:(BOOL)a3;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm0624042662bdd34b4bbbfc0f7da95deb

- (void)updateAllThermalLoad:(BOOL)a3
{
  v4 = dword_1000AB84C;
  v5 = dword_1000AB850;
  v6 = HIDWORD(qword_1000AB8E0);
  v7 = [(CommonProduct *)self findComponent:18];
  v8 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  *&v8 = v8;
  [v7 calculateControlEffort:v8];
  sub_10000533C(51, (v4 * 0.68 + 50.49 + v5 * 0.3));
  v9 = SHIDWORD(qword_1000AB8EC);
  v10 = [(CommonProduct *)self findComponent:19];
  v11 = v9 / 100.0;
  *&v12 = v11;
  [v10 calculateControlEffort:v12];
  v13 = [(CommonProduct *)self findComponent:20];
  *&v14 = v11;
  [v13 calculateControlEffort:v14];
  sub_10000533C(54, (v5 * 0.11 + 155.28 + v6 * 0.84));
  v15 = dword_1000AB8FC;
  v16 = [(CommonProduct *)self findComponent:21];
  *&v17 = v15 / 100.0;
  [v16 calculateControlEffort:v17];
  v18 = self->super.baseVT[12];

  sub_10000533C(52, v18);
}

- (int)compute2DGridTemps
{
  v3 = HIDWORD(qword_1000AB824);
  v5 = HIDWORD(qword_1000AB82C);
  v4 = qword_1000AB834;
  v6 = dword_1000AB84C;
  v7 = dword_1000AB8C4;
  v8 = unk_1000AB8C8;
  v9 = dword_1000AB8D4;
  v10 = dword_1000AB83C;
  v11 = dword_1000AB850;
  baseVT = self->super.baseVT;
  v13 = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100066790, xmmword_100066780, dword_1000AB83C), xmmword_1000667A0, dword_1000AB850)));
  v14 = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_1000667C0, xmmword_1000667B0, dword_1000AB83C), xmmword_1000667D0, dword_1000AB850)));
  *self->super.baseVT = v13;
  *&self->super.baseVT[2] = v14;
  *&self->super.baseVT[4] = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_1000667F0, xmmword_1000667E0, v10), xmmword_100066800, v11)));
  *&self->super.baseVT[6] = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100066820, xmmword_100066810, v10), xmmword_100066830, v11)));
  *&self->super.baseVT[8] = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100066850, xmmword_100066840, v10), xmmword_100066860, v11)));
  *&self->super.baseVT[10] = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100066880, xmmword_100066870, v3), xmmword_100066890, v5), xmmword_1000668A0, v11)));
  *&self->super.baseVT[13] = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_1000668C0, xmmword_1000668B0, v3), xmmword_1000668D0, v5), xmmword_1000668E0, v11)));
  *&self->super.baseVT[15] = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100066900, xmmword_1000668F0, v8), xmmword_100066910, v4), xmmword_100066920, v11)));
  self->super.baseVT[12] = (v5 * 0.171 + 8.1 + v6 * 0.271 + v11 * 0.546);
  self->super.baseVT[17] = (v9 * 0.062 + 61.0 + v4 * 0.464 + v11 * 0.451);
  *&self->super.baseVT[18] = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100066940, xmmword_100066930, v7), xmmword_100066950, v4), xmmword_100066960, v11)));
  *&self->super.baseVT[20] = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_100066980, xmmword_100066970, v8), xmmword_100066990, v4), xmmword_1000669A0, v11)));
  self->super.baseVT[22] = (v9 * 0.271 + 103.0 + v4 * 0.42 + v11 * 0.264);
  self->super.baseVT[23] = (v7 * 0.366 + 137.0 + v4 * 0.287 + v11 * 0.287);
  self->super.baseVT[24] = (v7 * 0.391 + 204.4 + v11 * 0.536);
  *&self->super.baseVT[25] = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_1000669C0, xmmword_1000669B0, v8), xmmword_1000669D0, v4), xmmword_1000669E0, v11)));
  self->super.baseVT[27] = (v9 * 0.628 + 160.8 + v4 * 0.202 + v11 * 0.115);
  self->super.baseVT[28] = (v7 * 0.87 + 224.9 + v11 * 0.078);
  v15 = v7 * 0.612 + 181.8 + v4 * 0.091 + v11 * 0.237;
  v16 = v13.i32[0];
  v17 = 1;
  v18 = v13.i32[0];
  self->super.baseVT[29] = v15;
  do
  {
    v19 = baseVT[v17];
    if (v16 >= v19)
    {
      v16 = baseVT[v17];
    }

    if (v18 <= v19)
    {
      v18 = baseVT[v17];
    }

    ++v17;
  }

  while (v17 != 30);
  sub_10000533C(53, (v18 - v16));
  v20 = byte_1000AB2F8;
  if (byte_1000AB2F8)
  {
    v21 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "<Notice> 5x6 Grid", buf, 2u);
      v20 = byte_1000AB2F8;
    }

    else
    {
      v20 = 1;
    }
  }

  v22 = &self->super.baseVT[2];
  v23 = -5;
  do
  {
    if (v20)
    {
      v24 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(v22 - 2);
        v26 = *(v22 - 1);
        v27 = *v22;
        v28 = v22[1];
        v29 = v22[2];
        *buf = 67110144;
        v32 = v25;
        v33 = 1024;
        v34 = v26;
        v35 = 1024;
        v36 = v27;
        v37 = 1024;
        v38 = v28;
        v39 = 1024;
        v40 = v29;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "<Notice> %4d %4d %4d %4d %4d", buf, 0x20u);
        v20 = byte_1000AB2F8;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 0;
    }

    v23 += 5;
    v22 += 5;
  }

  while (v23 < 0x19);
  return baseVT;
}

- (id)getGridX
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017344;
  block[3] = &unk_100085260;
  block[4] = self;
  if (qword_1000A24D8 != -1)
  {
    dispatch_once(&qword_1000A24D8, block);
  }

  return self->gridX;
}

- (id)getGridY
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017420;
  block[3] = &unk_100085260;
  block[4] = self;
  if (qword_1000A24E0 != -1)
  {
    dispatch_once(&qword_1000A24E0, block);
  }

  return self->gridY;
}

- (void)updateCoreAnalyticsInfo
{
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self dieTempMaxMax];
  [(CommonProduct *)self getChargerState];
  sub_100006FB4();
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [-[CommonProduct findComponent:](self findComponent:{2), "releaseMaxLI"}];
  [-[CommonProduct findComponent:](self findComponent:{3), "releaseMaxLI"}];
  [-[CommonProduct findComponent:](self findComponent:{7), "releaseMaxLI"}];
  [(CommonProduct *)self isBackLightOn];
  AnalyticsSendEventLazy();
}

@end