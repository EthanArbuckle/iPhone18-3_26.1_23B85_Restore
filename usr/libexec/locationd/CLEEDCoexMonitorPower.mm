@interface CLEEDCoexMonitorPower
- (CLEEDCoexMonitorPower)initWithQueue:(id)queue mitigationConfig:(MitigationsConfig *)config cachedCoexMetricData:(id)data eventCB:(id)b coexMetricUpdateCB:(id)cB;
- (id).cxx_construct;
- (id)getMitigationForCurrentlevel;
- (void)computePowerLevelDurationForCA;
- (void)dealloc;
- (void)processPowerLevelForCA:(unsigned int)a;
- (void)queryPeakPowerLevel;
- (void)updateCoexMetricDict:(id *)dict forCASubmission:(BOOL)submission;
@end

@implementation CLEEDCoexMonitorPower

- (CLEEDCoexMonitorPower)initWithQueue:(id)queue mitigationConfig:(MitigationsConfig *)config cachedCoexMetricData:(id)data eventCB:(id)b coexMetricUpdateCB:(id)cB
{
  if (qword_1025D4660 != -1)
  {
    sub_101892E90();
  }

  v13 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
  {
    sub_1004A0AB8(__p);
    v14 = v41 >= 0 ? __p : *__p;
    *buf = 136446978;
    v46 = "[CLEEDCoexMonitorPower initWithQueue:mitigationConfig:cachedCoexMetricData:eventCB:coexMetricUpdateCB:]";
    v47 = 2114;
    queueCopy = queue;
    v49 = 2082;
    v50 = v14;
    v51 = 2114;
    bCopy = b;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#EED2CXPB,%{public}s[queue:%{public}@,peakPowerConfig:%{public}s,mitigationCB:%{public}@]", buf, 0x2Au);
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
      sub_101892EA4();
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
    *&__p[4] = "[CLEEDCoexMonitorPower initWithQueue:mitigationConfig:cachedCoexMetricData:eventCB:coexMetricUpdateCB:]";
    v39 = 2114;
    queueCopy2 = queue;
    v41 = 2082;
    v42 = v28;
    v43 = 2114;
    bCopy2 = b;
    v29 = _os_log_send_and_compose_impl();
    if (v37 < 0)
    {
      operator delete(location[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "[CLEEDCoexMonitorPower initWithQueue:mitigationConfig:cachedCoexMetricData:eventCB:coexMetricUpdateCB:]", "%s\n", v29);
    if (v29 != buf)
    {
      free(v29);
    }
  }

  v35.receiver = self;
  v35.super_class = CLEEDCoexMonitorPower;
  v15 = [(CLEEDCoexMonitorPower *)&v35 init];
  if (v15)
  {
    dispatch_assert_queue_V2(queue);
    *(v15 + 1) = queue;
    *(v15 + 2) = _Block_copy(b);
    *(v15 + 25) = _Block_copy(cB);
    *(v15 + 24) = 0;
    v16 = *&config->cellular.enabled;
    *(v15 + 2) = config->nominal;
    *(v15 + 3) = v16;
    v17 = *&config->cellular.rsrpSamplesToAvg;
    v18 = *&config->cellular.belowThresholdParams.maxStreamingBitrateKbps;
    v19 = *&config->thermal.moderate.maxFramerateFps;
    *(v15 + 6) = *&config->thermal.light.maxFramerateFps;
    *(v15 + 7) = v19;
    *(v15 + 4) = v17;
    *(v15 + 5) = v18;
    v20 = *&config->thermal.heavyAndGreater.maxFramerateFps;
    light = config->peakPower.light;
    heavyAndGreater = config->peakPower.heavyAndGreater;
    *(v15 + 10) = config->peakPower.moderate;
    *(v15 + 11) = heavyAndGreater;
    *(v15 + 8) = v20;
    *(v15 + 9) = light;
    *(v15 + 26) = [[CLEEDCoexPowerForCA alloc] initWithCoexMetricDict:data];
    if ((*(v15 + 140) & 1) == 0)
    {
      v23 = *(v15 + 1);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1004A0DD0;
      block[3] = &unk_102447418;
      block[4] = v15;
      dispatch_async(v23, block);
    }

    objc_initWeak(location, v15);
    v24 = *(v15 + 1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1004A0ED0;
    handler[3] = &unk_102457078;
    objc_copyWeak(&v33, location);
    if (notify_register_dispatch("com.apple.system.peakpowerpressurelevel", v15 + 48, v24, handler))
    {
      if (qword_1025D4660 != -1)
      {
        sub_101892EA4();
      }

      v25 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v46 = "[CLEEDCoexMonitorPower initWithQueue:mitigationConfig:cachedCoexMetricData:eventCB:coexMetricUpdateCB:]";
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "#EED2CXPB,%{public}s: unable to register for PeakPower notifications", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101892ECC(buf);
        *__p = 136446210;
        *&__p[4] = "[CLEEDCoexMonitorPower initWithQueue:mitigationConfig:cachedCoexMetricData:eventCB:coexMetricUpdateCB:]";
        v30 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLEEDCoexMonitorPower initWithQueue:mitigationConfig:cachedCoexMetricData:eventCB:coexMetricUpdateCB:]", "%s\n", v30);
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
      v31[2] = sub_1004A0F08;
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
    sub_101892E90();
  }

  v3 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v9 = "[CLEEDCoexMonitorPower dealloc]";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#EED2CXPB,%{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101892FFC();
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

  fCoexPowerForCA = self->_fCoexPowerForCA;
  if (fCoexPowerForCA)
  {

    self->_fCoexPowerForCA = 0;
  }

  self->fQueue = 0;
  v7.receiver = self;
  v7.super_class = CLEEDCoexMonitorPower;
  [(CLEEDCoexMonitorPower *)&v7 dealloc];
}

- (void)queryPeakPowerLevel
{
  state64 = 0;
  if (notify_get_state(self->fToken, &state64))
  {
    if (qword_1025D4660 != -1)
    {
      sub_101892EA4();
    }

    v3 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v10 = "[CLEEDCoexMonitorPower queryPeakPowerLevel]";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "#EED2CXPB,%{public}s, could not get PeakPowerLevel", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018930E8();
    }
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_101892EA4();
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
      v10 = "[CLEEDCoexMonitorPower queryPeakPowerLevel]";
      v11 = 2082;
      v12 = v5;
      v13 = 2050;
      v14 = state64;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#EED2CXPB,%{public}s, InitialValue:%{public}s, PowerLevel:%{public}llu", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018931D4(self, &state64);
    }

    if (!self->fInitialValueReceived || (v6 = state64, [(CLEEDCoexMonitorPower *)self currentPowerLevel]!= v6))
    {
      [(CLEEDCoexMonitorPower *)self processPowerLevelForCA:state64];
      self->fInitialValueReceived = 1;
      [(CLEEDCoexMonitorPower *)self setCurrentPowerLevel:state64];
      fNotificationCallback = self->fNotificationCallback;
      if (fNotificationCallback)
      {
        fNotificationCallback[2](fNotificationCallback, [(CLEEDCoexMonitorPower *)self getMitigationForCurrentlevel], 0);
      }
    }
  }
}

- (id)getMitigationForCurrentlevel
{
  p_fMitigationConfig = &self->fMitigationConfig;
  if (self->fMitigationConfig.peakPower.enabled)
  {
    currentPowerLevel = [(CLEEDCoexMonitorPower *)self currentPowerLevel];
    if (currentPowerLevel <= 19)
    {
      if (!currentPowerLevel)
      {
        goto LABEL_17;
      }

      if (currentPowerLevel == 10)
      {
        p_fMitigationConfig = &self->fMitigationConfig.peakPower.light;
        goto LABEL_17;
      }
    }

    else
    {
      if (currentPowerLevel == 20)
      {
        p_fMitigationConfig = &self->fMitigationConfig.peakPower.moderate;
        goto LABEL_17;
      }

      if (currentPowerLevel == 30 || currentPowerLevel == 40)
      {
        p_fMitigationConfig = &self->fMitigationConfig.peakPower.heavyAndGreater;
        goto LABEL_17;
      }
    }

    if (qword_1025D4660 != -1)
    {
      sub_101892E90();
    }

    v5 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v12 = "[CLEEDCoexMonitorPower getMitigationForCurrentlevel]";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "#EED2CXPB,%{public}s, unhandled PPPN state", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189330C();
    }
  }

LABEL_17:
  v6 = [[CLEEDMitigation alloc] initWithStreamingAllowed:p_fMitigationConfig->nominal.allowNewStreamingRequests framerateFps:p_fMitigationConfig->nominal.maxFramerateFps bitrateKbps:p_fMitigationConfig->nominal.maxStreamingBitrateKbps dropStreaming:p_fMitigationConfig->nominal.dropStreaming uploadAllowed:p_fMitigationConfig->nominal.allowNewMediaRequests uploadMitigation:p_fMitigationConfig->nominal.delayMedia source:3];
  v7 = v6;
  if (qword_1025D4660 != -1)
  {
    sub_101892EA4();
  }

  v8 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
  {
    currentPowerLevel2 = [(CLEEDCoexMonitorPower *)self currentPowerLevel];
    *buf = 136446722;
    v12 = "[CLEEDCoexMonitorPower getMitigationForCurrentlevel]";
    v13 = 1026;
    v14 = currentPowerLevel2;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#EED2CXPB,%{public}s, PowerLevel:%{public}u, Mitigation:%{public}@", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018933F8(self, v6);
  }

  return v6;
}

- (void)processPowerLevelForCA:(unsigned int)a
{
  v3 = *&a;
  if (!self->fInitialValueReceived)
  {
    [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] setPeakPowerAtStartOfCall:*&a];
LABEL_6:
    [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] setMaxPeakPowerInCall:v3];
    goto LABEL_7;
  }

  if ([(CLEEDCoexMonitorPower *)self currentPowerLevel]== a)
  {
    goto LABEL_8;
  }

  [(CLEEDCoexMonitorPower *)self computePowerLevelDurationForCA];
  if ([(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] maxPeakPowerInCall]< v3)
  {
    goto LABEL_6;
  }

LABEL_7:
  [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] setCurrentpeakPowerStartTime:CFAbsoluteTimeGetCurrent()];
LABEL_8:
  [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] setPeakPowerAtEndOfCall:v3];
  if ([(CLEEDCoexMonitorPower *)self fCoexMetricUpdateCallback])
  {
    v5 = *([(CLEEDCoexMonitorPower *)self fCoexMetricUpdateCallback]+ 2);

    v5();
  }
}

- (void)computePowerLevelDurationForCA
{
  currentPowerLevel = [(CLEEDCoexMonitorPower *)self currentPowerLevel];
  if (currentPowerLevel <= 19)
  {
    if (currentPowerLevel)
    {
      if (currentPowerLevel == 10)
      {
        [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] currentpeakPowerStartTime];
        if (v11 > 0.0)
        {
          [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] peakPowerLightDuration];
          v13 = v12;
          Current = CFAbsoluteTimeGetCurrent();
          [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] currentpeakPowerStartTime];
          v16 = v13 + vabdd_f64(Current, v15);
          fCoexPowerForCA = [(CLEEDCoexMonitorPower *)self fCoexPowerForCA];

          [(CLEEDCoexPowerForCA *)fCoexPowerForCA setPeakPowerLightDuration:v16];
        }
      }
    }

    else
    {
      [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] currentpeakPowerStartTime];
      if (v32 > 0.0)
      {
        [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] peakPowerNominalDuration];
        v34 = v33;
        v35 = CFAbsoluteTimeGetCurrent();
        [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] currentpeakPowerStartTime];
        v37 = v34 + vabdd_f64(v35, v36);
        fCoexPowerForCA2 = [(CLEEDCoexMonitorPower *)self fCoexPowerForCA];

        [(CLEEDCoexPowerForCA *)fCoexPowerForCA2 setPeakPowerNominalDuration:v37];
      }
    }
  }

  else
  {
    switch(currentPowerLevel)
    {
      case 20:
        [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] currentpeakPowerStartTime];
        if (v18 > 0.0)
        {
          [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] peakPowerModerateDuration];
          v20 = v19;
          v21 = CFAbsoluteTimeGetCurrent();
          [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] currentpeakPowerStartTime];
          v23 = v20 + vabdd_f64(v21, v22);
          fCoexPowerForCA3 = [(CLEEDCoexMonitorPower *)self fCoexPowerForCA];

          [(CLEEDCoexPowerForCA *)fCoexPowerForCA3 setPeakPowerModerateDuration:v23];
        }

        break;
      case 30:
        [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] currentpeakPowerStartTime];
        if (v25 > 0.0)
        {
          [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] peakPowerHeavyDuration];
          v27 = v26;
          v28 = CFAbsoluteTimeGetCurrent();
          [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] currentpeakPowerStartTime];
          v30 = v27 + vabdd_f64(v28, v29);
          fCoexPowerForCA4 = [(CLEEDCoexMonitorPower *)self fCoexPowerForCA];

          [(CLEEDCoexPowerForCA *)fCoexPowerForCA4 setPeakPowerHeavyDuration:v30];
        }

        break;
      case 40:
        [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] currentpeakPowerStartTime];
        if (v4 > 0.0)
        {
          [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] peakPowerCriticalDuration];
          v6 = v5;
          v7 = CFAbsoluteTimeGetCurrent();
          [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] currentpeakPowerStartTime];
          v9 = v6 + vabdd_f64(v7, v8);
          fCoexPowerForCA5 = [(CLEEDCoexMonitorPower *)self fCoexPowerForCA];

          [(CLEEDCoexPowerForCA *)fCoexPowerForCA5 setPeakPowerCriticalDuration:v9];
        }

        break;
    }
  }
}

- (void)updateCoexMetricDict:(id *)dict forCASubmission:(BOOL)submission
{
  if (dict && *dict)
  {
    submissionCopy = submission;
    if ([(CLEEDCoexMonitorPower *)self fCoexPowerForCA])
    {
      if (submissionCopy)
      {
        [(CLEEDCoexMonitorPower *)self computePowerLevelDurationForCA];
        v7 = *dict;
        [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] peakPowerNominalDuration];
        LODWORD(v9) = vcvtpd_s64_f64(v8 * 1000.0);
        [v7 setValue:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", v9), @"peakPowerNominalDuration"}];
        v10 = *dict;
        [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] peakPowerLightDuration];
        LODWORD(v12) = vcvtpd_s64_f64(v11 * 1000.0);
        [v10 setValue:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", v12), @"peakPowerLightDuration"}];
        v13 = *dict;
        [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] peakPowerModerateDuration];
        LODWORD(v15) = vcvtpd_s64_f64(v14 * 1000.0);
        [v13 setValue:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", v15), @"peakPowerModerateDuration"}];
        v16 = *dict;
        [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] peakPowerHeavyDuration];
        LODWORD(v18) = vcvtpd_s64_f64(v17 * 1000.0);
        [v16 setValue:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", v18), @"peakPowerHeavyDuration"}];
        v19 = *dict;
        [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] peakPowerCriticalDuration];
        LODWORD(v21) = vcvtpd_s64_f64(v20 * 1000.0);
        v22 = [NSNumber numberWithInt:v21];
        v23 = @"peakPowerCriticalDuration";
      }

      else
      {
        v26 = *dict;
        [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] peakPowerNominalDuration];
        [v26 setValue:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"peakPowerNominalDuration"}];
        v27 = *dict;
        [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] peakPowerLightDuration];
        [v27 setValue:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"peakPowerLightDuration"}];
        v28 = *dict;
        [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] peakPowerModerateDuration];
        [v28 setValue:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"peakPowerModerateDuration"}];
        v29 = *dict;
        [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] peakPowerHeavyDuration];
        [v29 setValue:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"peakPowerHeavyDuration"}];
        v30 = *dict;
        [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] peakPowerCriticalDuration];
        [v30 setValue:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"peakPowerCriticalDuration"}];
        v19 = *dict;
        [(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] currentpeakPowerStartTime];
        v22 = [NSNumber numberWithDouble:?];
        v23 = @"currentpeakPowerStartTime";
      }

      [v19 setValue:v22 forKey:v23];
      [*dict setValue:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", -[CLEEDCoexPowerForCA peakPowerAtStartOfCall](-[CLEEDCoexMonitorPower fCoexPowerForCA](self, "fCoexPowerForCA"), "peakPowerAtStartOfCall")), @"peakPowerAtStartOfCall"}];
      [*dict setValue:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", -[CLEEDCoexPowerForCA maxPeakPowerInCall](-[CLEEDCoexMonitorPower fCoexPowerForCA](self, "fCoexPowerForCA"), "maxPeakPowerInCall")), @"maxPeakPowerInCall"}];
      v31 = *dict;
      v32 = [NSNumber numberWithInt:[(CLEEDCoexPowerForCA *)[(CLEEDCoexMonitorPower *)self fCoexPowerForCA] peakPowerAtEndOfCall]];

      [v31 setValue:v32 forKey:@"peakPowerAtEndOfCall"];
    }

    else
    {
      if (qword_1025D4660 != -1)
      {
        sub_101892E90();
      }

      v25 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        v33 = 136446210;
        v34 = "[CLEEDCoexMonitorPower updateCoexMetricDict:forCASubmission:]";
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_ERROR, "#EED2CXPB,%{public}s, nil fCoexPowerForCA", &v33, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101893540();
      }
    }
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_101892E90();
    }

    v24 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      v33 = 136446210;
      v34 = "[CLEEDCoexMonitorPower updateCoexMetricDict:forCASubmission:]";
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "#EED2CXPB,%{public}s, nil metricDict", &v33, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189362C();
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