@interface CLEEDCoexMonitorThermal
- (CLEEDCoexMonitorThermal)initWithQueue:(id)a3 mitigationConfig:(MitigationsConfig *)a4 cachedCoexMetricData:(id)a5 eventCB:(id)a6 coexMetricUpdateCB:(id)a7;
- (id).cxx_construct;
- (id)getMitigationForCurrentlevel;
- (void)computeThermalLevelDurationForCA;
- (void)dealloc;
- (void)processThermalLevelForCA:(int)a3;
- (void)queryThermalLevel;
- (void)updateCoexMetricDict:(id *)a3 forCASubmission:(BOOL)a4;
@end

@implementation CLEEDCoexMonitorThermal

- (CLEEDCoexMonitorThermal)initWithQueue:(id)a3 mitigationConfig:(MitigationsConfig *)a4 cachedCoexMetricData:(id)a5 eventCB:(id)a6 coexMetricUpdateCB:(id)a7
{
  if (qword_1025D4660 != -1)
  {
    sub_10189B794();
  }

  v13 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
  {
    sub_1004A0AB8(__p);
    v14 = v41 >= 0 ? __p : *__p;
    *buf = 136446978;
    v46 = "[CLEEDCoexMonitorThermal initWithQueue:mitigationConfig:cachedCoexMetricData:eventCB:coexMetricUpdateCB:]";
    v47 = 2114;
    v48 = a3;
    v49 = 2082;
    v50 = v14;
    v51 = 2114;
    v52 = a6;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#EED2CXTH,%{public}s[queue:%{public}@,thermalConfig:%{public}s,mitigationCB:%{public}@]", buf, 0x2Au);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4660 != -1)
    {
      sub_10189B7A8();
    }

    sub_1004A0AB8(location);
    if (v37 >= 0)
    {
      v28 = location;
    }

    else
    {
      v28 = location[0];
    }

    *__p = 136446978;
    *&__p[4] = "[CLEEDCoexMonitorThermal initWithQueue:mitigationConfig:cachedCoexMetricData:eventCB:coexMetricUpdateCB:]";
    v39 = 2114;
    v40 = a3;
    v41 = 2082;
    v42 = v28;
    v43 = 2114;
    v44 = a6;
    v29 = _os_log_send_and_compose_impl();
    if (v37 < 0)
    {
      operator delete(location[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "[CLEEDCoexMonitorThermal initWithQueue:mitigationConfig:cachedCoexMetricData:eventCB:coexMetricUpdateCB:]", "%s\n", v29);
    if (v29 != buf)
    {
      free(v29);
    }
  }

  v35.receiver = self;
  v35.super_class = CLEEDCoexMonitorThermal;
  v15 = [(CLEEDCoexMonitorThermal *)&v35 init];
  if (v15)
  {
    dispatch_assert_queue_V2(a3);
    *(v15 + 1) = a3;
    *(v15 + 2) = _Block_copy(a6);
    *(v15 + 25) = _Block_copy(a7);
    *(v15 + 24) = 0;
    v16 = *&a4->cellular.enabled;
    *(v15 + 2) = a4->nominal;
    *(v15 + 3) = v16;
    v17 = *&a4->cellular.rsrpSamplesToAvg;
    v18 = *&a4->cellular.belowThresholdParams.maxStreamingBitrateKbps;
    v19 = *&a4->thermal.moderate.maxFramerateFps;
    *(v15 + 6) = *&a4->thermal.light.maxFramerateFps;
    *(v15 + 7) = v19;
    *(v15 + 4) = v17;
    *(v15 + 5) = v18;
    v20 = *&a4->thermal.heavyAndGreater.maxFramerateFps;
    light = a4->peakPower.light;
    heavyAndGreater = a4->peakPower.heavyAndGreater;
    *(v15 + 10) = a4->peakPower.moderate;
    *(v15 + 11) = heavyAndGreater;
    *(v15 + 8) = v20;
    *(v15 + 9) = light;
    *(v15 + 26) = [[CLEEDCoexThermalForCA alloc] initWithCoexMetricDict:a5];
    if ((*(v15 + 88) & 1) == 0)
    {
      v23 = *(v15 + 1);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1004D524C;
      block[3] = &unk_102447418;
      block[4] = v15;
      dispatch_async(v23, block);
    }

    objc_initWeak(location, v15);
    v24 = *(v15 + 1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1004D534C;
    handler[3] = &unk_102457078;
    objc_copyWeak(&v33, location);
    if (notify_register_dispatch("com.apple.system.thermalpressurelevel", v15 + 48, v24, handler))
    {
      if (qword_1025D4660 != -1)
      {
        sub_10189B7A8();
      }

      v25 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v46 = "[CLEEDCoexMonitorThermal initWithQueue:mitigationConfig:cachedCoexMetricData:eventCB:coexMetricUpdateCB:]";
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "#EED2CXTH,%{public}s: unable to register for Thermal notifications", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10189B7D0(buf);
        *__p = 136446210;
        *&__p[4] = "[CLEEDCoexMonitorThermal initWithQueue:mitigationConfig:cachedCoexMetricData:eventCB:coexMetricUpdateCB:]";
        v30 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLEEDCoexMonitorThermal initWithQueue:mitigationConfig:cachedCoexMetricData:eventCB:coexMetricUpdateCB:]", "%s\n", v30);
        if (v30 != buf)
        {
          free(v30);
        }
      }

      objc_destroyWeak(&v33);
      objc_destroyWeak(location);
      return 0;
    }

    else
    {
      v26 = *(v15 + 1);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1004D5384;
      v31[3] = &unk_102447418;
      v31[4] = v15;
      dispatch_async(v26, v31);
      objc_destroyWeak(&v33);
      objc_destroyWeak(location);
    }
  }

  return v15;
}

- (void)dealloc
{
  if (qword_1025D4660 != -1)
  {
    sub_10189B794();
  }

  v3 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v9 = "[CLEEDCoexMonitorThermal dealloc]";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#EED2CXTH,%{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189B900();
  }

  notify_cancel(self->fToken);
  fNotificationCallback = self->fNotificationCallback;
  if (fNotificationCallback)
  {
    _Block_release(fNotificationCallback);
    self->fNotificationCallback = 0;
  }

  fCoexMetricUpdateCallback = self->_fCoexMetricUpdateCallback;
  if (fCoexMetricUpdateCallback)
  {
    _Block_release(fCoexMetricUpdateCallback);
    self->_fCoexMetricUpdateCallback = 0;
  }

  fCoexTermalForCA = self->_fCoexTermalForCA;
  if (fCoexTermalForCA)
  {

    self->_fCoexTermalForCA = 0;
  }

  self->fQueue = 0;
  v7.receiver = self;
  v7.super_class = CLEEDCoexMonitorThermal;
  [(CLEEDCoexMonitorThermal *)&v7 dealloc];
}

- (void)queryThermalLevel
{
  state64 = 0;
  if (notify_get_state(self->fToken, &state64))
  {
    if (qword_1025D4660 != -1)
    {
      sub_10189B7A8();
    }

    v3 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v10 = "[CLEEDCoexMonitorThermal queryThermalLevel]";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "#EED2CXTH,%{public}s, could not get Thermal State", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189B9EC();
    }
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_10189B7A8();
    }

    v4 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "YES";
      if (self->fInitialValueReceived)
      {
        v5 = "NO";
      }

      *buf = 136446722;
      v10 = "[CLEEDCoexMonitorThermal queryThermalLevel]";
      v11 = 2082;
      v12 = v5;
      v13 = 2050;
      v14 = state64;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#EED2CXTH,%{public}s, InitialValue:%{public}s, ThermalPressureLevel:%{public}llu", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189BAD8(self, &state64);
    }

    if (!self->fInitialValueReceived || (v6 = state64, [(CLEEDCoexMonitorThermal *)self currentThermalLevel]!= v6))
    {
      [(CLEEDCoexMonitorThermal *)self processThermalLevelForCA:state64];
      self->fInitialValueReceived = 1;
      [(CLEEDCoexMonitorThermal *)self setCurrentThermalLevel:state64];
      fNotificationCallback = self->fNotificationCallback;
      if (fNotificationCallback)
      {
        fNotificationCallback[2](fNotificationCallback, [(CLEEDCoexMonitorThermal *)self getMitigationForCurrentlevel], 0);
      }
    }
  }
}

- (id)getMitigationForCurrentlevel
{
  p_fMitigationConfig = &self->fMitigationConfig;
  if (self->fMitigationConfig.thermal.enabled)
  {
    v4 = [(CLEEDCoexMonitorThermal *)self currentThermalLevel];
    if (v4 > 29)
    {
      if (v4 == 30 || v4 == 40 || v4 == 50)
      {
        p_fMitigationConfig = &self->fMitigationConfig.thermal.heavyAndGreater;
        goto LABEL_18;
      }
    }

    else
    {
      switch(v4)
      {
        case 0:
          goto LABEL_18;
        case 10:
          p_fMitigationConfig = &self->fMitigationConfig.thermal.light;
          goto LABEL_18;
        case 20:
          p_fMitigationConfig = &self->fMitigationConfig.thermal.moderate;
          goto LABEL_18;
      }
    }

    if (qword_1025D4660 != -1)
    {
      sub_10189B794();
    }

    v5 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v12 = "[CLEEDCoexMonitorThermal getMitigationForCurrentlevel]";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "#EED2CXTH,%{public}s, unhandled thermal state", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189BC10();
    }
  }

LABEL_18:
  v6 = [[CLEEDMitigation alloc] initWithStreamingAllowed:p_fMitigationConfig->nominal.allowNewStreamingRequests framerateFps:p_fMitigationConfig->nominal.maxFramerateFps bitrateKbps:p_fMitigationConfig->nominal.maxStreamingBitrateKbps dropStreaming:p_fMitigationConfig->nominal.dropStreaming uploadAllowed:p_fMitigationConfig->nominal.allowNewMediaRequests uploadMitigation:p_fMitigationConfig->nominal.delayMedia source:2];
  v7 = v6;
  if (qword_1025D4660 != -1)
  {
    sub_10189B7A8();
  }

  v8 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CLEEDCoexMonitorThermal *)self currentThermalLevel];
    *buf = 136446722;
    v12 = "[CLEEDCoexMonitorThermal getMitigationForCurrentlevel]";
    v13 = 1026;
    v14 = v9;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#EED2CXTH,%{public}s ThermalState:%{public}u, Mitigation:%{public}@", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189BCFC(self, v6);
  }

  return v6;
}

- (void)processThermalLevelForCA:(int)a3
{
  v3 = *&a3;
  if (!self->fInitialValueReceived)
  {
    [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] setThermalLevelAtStartOfCall:*&a3];
LABEL_6:
    [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] setMaxThermalLevelInCall:v3];
    goto LABEL_7;
  }

  if ([(CLEEDCoexMonitorThermal *)self currentThermalLevel]== a3)
  {
    goto LABEL_8;
  }

  [(CLEEDCoexMonitorThermal *)self computeThermalLevelDurationForCA];
  if ([(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] maxThermalLevelInCall]< v3)
  {
    goto LABEL_6;
  }

LABEL_7:
  [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] setCurrentThermalLevelStartTime:CFAbsoluteTimeGetCurrent()];
LABEL_8:
  [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] setThermalLevelAtEndOfCall:v3];
  if ([(CLEEDCoexMonitorThermal *)self fCoexMetricUpdateCallback])
  {
    v5 = *([(CLEEDCoexMonitorThermal *)self fCoexMetricUpdateCallback]+ 2);

    v5();
  }
}

- (void)computeThermalLevelDurationForCA
{
  v3 = [(CLEEDCoexMonitorThermal *)self currentThermalLevel];
  if (v3 > 29)
  {
    switch(v3)
    {
      case 30:
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] currentThermalLevelStartTime];
        if (v25 > 0.0)
        {
          [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] thermalHeavyDuration];
          v27 = v26;
          Current = CFAbsoluteTimeGetCurrent();
          [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] currentThermalLevelStartTime];
          v30 = v27 + vabdd_f64(Current, v29);
          v31 = [(CLEEDCoexMonitorThermal *)self fCoexTermalForCA];

          [(CLEEDCoexThermalForCA *)v31 setThermalHeavyDuration:v30];
        }

        break;
      case 40:
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] currentThermalLevelStartTime];
        if (v39 > 0.0)
        {
          [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] thermalTrappingDuration];
          v41 = v40;
          v42 = CFAbsoluteTimeGetCurrent();
          [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] currentThermalLevelStartTime];
          v44 = v41 + vabdd_f64(v42, v43);
          v45 = [(CLEEDCoexMonitorThermal *)self fCoexTermalForCA];

          [(CLEEDCoexThermalForCA *)v45 setThermalTrappingDuration:v44];
        }

        break;
      case 50:
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] currentThermalLevelStartTime];
        if (v11 > 0.0)
        {
          [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] thermalSleepingDuration];
          v13 = v12;
          v14 = CFAbsoluteTimeGetCurrent();
          [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] currentThermalLevelStartTime];
          v16 = v13 + vabdd_f64(v14, v15);
          v17 = [(CLEEDCoexMonitorThermal *)self fCoexTermalForCA];

          [(CLEEDCoexThermalForCA *)v17 setThermalSleepingDuration:v16];
        }

        break;
    }
  }

  else if (v3)
  {
    if (v3 == 10)
    {
      [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] currentThermalLevelStartTime];
      if (v32 > 0.0)
      {
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] thermalLightDuration];
        v34 = v33;
        v35 = CFAbsoluteTimeGetCurrent();
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] currentThermalLevelStartTime];
        v37 = v34 + vabdd_f64(v35, v36);
        v38 = [(CLEEDCoexMonitorThermal *)self fCoexTermalForCA];

        [(CLEEDCoexThermalForCA *)v38 setThermalLightDuration:v37];
      }
    }

    else if (v3 == 20)
    {
      [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] currentThermalLevelStartTime];
      if (v4 > 0.0)
      {
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] thermalModerateDuration];
        v6 = v5;
        v7 = CFAbsoluteTimeGetCurrent();
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] currentThermalLevelStartTime];
        v9 = v6 + vabdd_f64(v7, v8);
        v10 = [(CLEEDCoexMonitorThermal *)self fCoexTermalForCA];

        [(CLEEDCoexThermalForCA *)v10 setThermalModerateDuration:v9];
      }
    }
  }

  else
  {
    [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] currentThermalLevelStartTime];
    if (v18 > 0.0)
    {
      [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] thermalNominalDuration];
      v20 = v19;
      v21 = CFAbsoluteTimeGetCurrent();
      [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] currentThermalLevelStartTime];
      v23 = v20 + vabdd_f64(v21, v22);
      v24 = [(CLEEDCoexMonitorThermal *)self fCoexTermalForCA];

      [(CLEEDCoexThermalForCA *)v24 setThermalNominalDuration:v23];
    }
  }
}

- (void)updateCoexMetricDict:(id *)a3 forCASubmission:(BOOL)a4
{
  if (a3 && *a3)
  {
    v5 = a4;
    if ([(CLEEDCoexMonitorThermal *)self fCoexTermalForCA])
    {
      if (v5)
      {
        [(CLEEDCoexMonitorThermal *)self computeThermalLevelDurationForCA];
        v7 = *a3;
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] thermalNominalDuration];
        LODWORD(v9) = vcvtpd_s64_f64(v8 * 1000.0);
        [v7 setValue:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", v9), @"thermalNominalDuration"}];
        v10 = *a3;
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] thermalLightDuration];
        LODWORD(v12) = vcvtpd_s64_f64(v11 * 1000.0);
        [v10 setValue:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", v12), @"thermalLightDuration"}];
        v13 = *a3;
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] thermalModerateDuration];
        LODWORD(v15) = vcvtpd_s64_f64(v14 * 1000.0);
        [v13 setValue:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", v15), @"thermalModerateDuration"}];
        v16 = *a3;
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] thermalHeavyDuration];
        LODWORD(v18) = vcvtpd_s64_f64(v17 * 1000.0);
        [v16 setValue:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", v18), @"thermalHeavyDuration"}];
        v19 = *a3;
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] thermalTrappingDuration];
        LODWORD(v21) = vcvtpd_s64_f64(v20 * 1000.0);
        [v19 setValue:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", v21), @"thermalTrappingDuration"}];
        v22 = *a3;
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] thermalSleepingDuration];
        LODWORD(v24) = vcvtpd_s64_f64(v23 * 1000.0);
        v25 = [NSNumber numberWithInt:v24];
        v26 = @"thermalSleepingDuration";
      }

      else
      {
        v29 = *a3;
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] thermalNominalDuration];
        [v29 setValue:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"thermalNominalDuration"}];
        v30 = *a3;
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] thermalLightDuration];
        [v30 setValue:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"thermalLightDuration"}];
        v31 = *a3;
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] thermalModerateDuration];
        [v31 setValue:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"thermalModerateDuration"}];
        v32 = *a3;
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] thermalHeavyDuration];
        [v32 setValue:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"thermalHeavyDuration"}];
        v33 = *a3;
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] thermalTrappingDuration];
        [v33 setValue:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"thermalTrappingDuration"}];
        v34 = *a3;
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] thermalSleepingDuration];
        [v34 setValue:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"thermalSleepingDuration"}];
        v22 = *a3;
        [(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] currentThermalLevelStartTime];
        v25 = [NSNumber numberWithDouble:?];
        v26 = @"currentThermalLevelStartTime";
      }

      [v22 setValue:v25 forKey:v26];
      [*a3 setValue:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", -[CLEEDCoexThermalForCA thermalLevelAtStartOfCall](-[CLEEDCoexMonitorThermal fCoexTermalForCA](self, "fCoexTermalForCA"), "thermalLevelAtStartOfCall")), @"thermalLevelAtStartOfCall"}];
      [*a3 setValue:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", -[CLEEDCoexThermalForCA maxThermalLevelInCall](-[CLEEDCoexMonitorThermal fCoexTermalForCA](self, "fCoexTermalForCA"), "maxThermalLevelInCall")), @"maxThermalLevelInCall"}];
      v35 = *a3;
      v36 = [NSNumber numberWithInt:[(CLEEDCoexThermalForCA *)[(CLEEDCoexMonitorThermal *)self fCoexTermalForCA] thermalLevelAtEndOfCall]];

      [v35 setValue:v36 forKey:@"thermalLevelAtEndOfCall"];
    }

    else
    {
      if (qword_1025D4660 != -1)
      {
        sub_10189B794();
      }

      v28 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        v37 = 136446210;
        v38 = "[CLEEDCoexMonitorThermal updateCoexMetricDict:forCASubmission:]";
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_ERROR, "#EED2CXTH,%{public}s, nil fCoexTermalForCA", &v37, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10189BE44();
      }
    }
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_10189B794();
    }

    v27 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      v37 = 136446210;
      v38 = "[CLEEDCoexMonitorThermal updateCoexMetricDict:forCASubmission:]";
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_ERROR, "#EED2CXTH,%{public}s, nil metricDict", &v37, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189BF30();
    }
  }
}

- (id).cxx_construct
{
  *(self + 16) = 257;
  *(self + 36) = 0x32000000018;
  *(self + 22) = 0;
  *(self + 24) = 257;
  *(self + 13) = -115;
  *(self + 7) = 0x4000000000000000;
  *(self + 8) = 0x3E800000005;
  *(self + 36) = 0;
  *(self + 76) = -1;
  *(self + 42) = 257;
  *(self + 88) = 1;
  *(self + 46) = 257;
  *(self + 12) = 0x32000000018;
  *(self + 52) = 0;
  *(self + 54) = 0;
  *(self + 14) = 0x6400000005;
  *(self + 60) = 256;
  *(self + 62) = 0;
  *(self + 16) = -1;
  *(self + 68) = 257;
  *(self + 140) = 1;
  *(self + 72) = 0;
  *(self + 148) = -1;
  *(self + 78) = 257;
  *(self + 80) = 0;
  *(self + 164) = -1;
  *(self + 86) = 257;
  *(self + 88) = 0;
  *(self + 180) = -1;
  *(self + 94) = 257;
  return self;
}

@end