@interface CLHealthAssessmentNotifierAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLHealthAssessmentNotifierAdapter)init;
- (void)adaptee;
- (void)addMonitoringPeriodFrom:(double)a3 until:(double)a4;
- (void)aggregateRecords;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
- (void)processDataWithMaxDuration:(double)a3 endTime:(double)a4;
- (void)processNextIntervalWithRemainingDurationToProcess:(double *)a3 endTime:(double)a4 updateCanContinue:(BOOL *)a5;
- (void)setLastProcessedTime:(double)a3;
- (void)setupService;
- (void)startUpdatesforAnalyzer:(int)a3;
- (void)stopMonitoring;
- (void)syncgetResultReady:(id)a3 ForAnalyzer:(int)a4;
- (void)teardownService;
- (void)updateSensorRecorderQuery;
- (void)updateSensorRecorderSubscription;
@end

@implementation CLHealthAssessmentNotifierAdapter

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v5 = a4 + 1;
  if (a4 + 1 < [a3 count])
  {
    [objc_msgSend(a3 objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", a3, v5}];
  }
}

+ (id)getSilo
{
  if (qword_102656338 != -1)
  {
    sub_10188BE58();
  }

  return qword_102656330;
}

- (CLHealthAssessmentNotifierAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLHealthAssessmentNotifierAdapter;
  return [(CLHealthAssessmentNotifierAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLHealthAssessmentNotifierProtocol outboundProtocol:&OBJC_PROTOCOL___CLHealthAssessmentNotifierClientProtocol];
}

- (void)beginService
{
  if (qword_1025D4590 != -1)
  {
    sub_10188BE6C();
  }

  v3 = qword_1025D4598;
  if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLHealthAssessmentNotifier starting up", &v17, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188BE80();
  }

  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_100475F14([(CLHealthAssessmentNotifierAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_10188C14C();
  }

  v4 = sub_1000206B4();
  if (sub_1004FB14C(v4))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = sub_1000206B4();
    sub_100023B78(v6, @"kMonitorKinesiasStart", &self->_monitorKinesiasStart);
    monitorKinesiasStart = self->_monitorKinesiasStart;
    if (Current < monitorKinesiasStart)
    {
      monitorKinesiasStart = Current;
    }

    self->_monitorKinesiasStart = monitorKinesiasStart;
    v8 = sub_1000206B4();
    sub_100023B78(v8, @"kMonitorKinesiasExpiration", &self->_monitorKinesiasExpiration);
    monitorKinesiasExpiration = self->_monitorKinesiasStart + 604800.0;
    if (monitorKinesiasExpiration >= self->_monitorKinesiasExpiration)
    {
      monitorKinesiasExpiration = self->_monitorKinesiasExpiration;
    }

    self->_monitorKinesiasExpiration = monitorKinesiasExpiration;
    if (qword_1025D4590 != -1)
    {
      sub_10188BF5C();
    }

    v10 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_monitorKinesiasStart;
      v12 = self->_monitorKinesiasExpiration;
      v17 = 134349312;
      v18 = v11;
      v19 = 2050;
      v20 = v12;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "Loaded monitoring period start: %{public}f expiration date: %{public}f", &v17, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188BF84();
    }

    v13 = sub_1000206B4();
    sub_100023B78(v13, @"kMonitorKinesiasLastProcessed", &self->_lastProcessedTime);
    lastProcessedTime = self->_lastProcessedTime;
    if (Current < lastProcessedTime)
    {
      lastProcessedTime = Current;
    }

    self->_lastProcessedTime = lastProcessedTime;
    [(CLHealthAssessmentNotifierAdapter *)self setupService];
    [(CLHealthAssessmentNotifierAdapter *)self monitorKinesiasExpiration];
    if (v15 > Current)
    {
      if (qword_1025D4590 != -1)
      {
        sub_10188BF5C();
      }

      v16 = qword_1025D4598;
      if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "Resume sensor recording on service start", &v17, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10188C070();
      }

      [(CLHealthAssessmentNotifierAdapter *)self updateSensorRecorderSubscription];
      self->fDyskinesiaSubscribed = 1;
      self->fTremorSubscribed = 1;
    }
  }
}

- (void)endService
{
  v3 = [(CLNotifierServiceAdapter *)self notifier];
  (*(v3->var0 + 2))(v3);

  v4 = [(CLHealthAssessmentNotifierAdapter *)self tremorDetectionService];
}

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

- (void)doAsync:(id)a3
{
  v4 = [(CLHealthAssessmentNotifierAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLHealthAssessmentNotifierAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

- (void)setupService
{
  if (![(CLHealthAssessmentNotifierAdapter *)self sensorRecorder])
  {
    [(CLHealthAssessmentNotifierAdapter *)self setSensorRecorder:objc_alloc_init(CMSensorRecorder)];
    sub_100476420([(CLHealthAssessmentNotifierAdapter *)self adaptee]);
    [(CLHealthAssessmentNotifierAdapter *)self setChoreaDetectionService:objc_alloc_init(CLHealthAssessmentChoreaDetectionService)];
    [(CLHealthAssessmentChoreaDetectionService *)[(CLHealthAssessmentNotifierAdapter *)self choreaDetectionService] setDelegate:self];
    [(CLHealthAssessmentNotifierAdapter *)self setTremorDetectionService:objc_alloc_init(CLHealthAssessmentTremorDetectionService)];
    [(CLHealthAssessmentTremorDetectionService *)[(CLHealthAssessmentNotifierAdapter *)self tremorDetectionService] setDelegate:self];
    -[CLHealthAssessmentNotifierAdapter setFSensorRecorderQueryTimer:](self, "setFSensorRecorderQueryTimer:", [objc_msgSend(-[CLHealthAssessmentNotifierAdapter universe](self "universe")]);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1004766C8;
    v9[3] = &unk_102447418;
    v9[4] = self;
    [(CLTimer *)[(CLHealthAssessmentNotifierAdapter *)self fSensorRecorderQueryTimer] setHandler:v9];
    v8 = 15.0;
    v3 = sub_100011660();
    sub_100185AC0(v3, &buf);
    sub_1000B9370(buf, "kMonitorKinesiasProcessingDelay", &v8);
    if (*(&buf + 1))
    {
      sub_100008080(*(&buf + 1));
    }

    v4 = [(CLHealthAssessmentNotifierAdapter *)self fSensorRecorderQueryTimer];
    [(CLTimer *)v4 setNextFireDelay:v8];
    if (qword_1025D4590 != -1)
    {
      sub_10188BF5C();
    }

    v5 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      [(CLTimer *)[(CLHealthAssessmentNotifierAdapter *)self fSensorRecorderQueryTimer] nextFireTime];
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "fSensorRecorderQueryTimer.nextFireTime, %{public}f", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188C2E0(self);
    }

    -[CLHealthAssessmentNotifierAdapter setFAggregateRecordsTimer:](self, "setFAggregateRecordsTimer:", [objc_msgSend(-[CLHealthAssessmentNotifierAdapter universe](self "universe")]);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1004766D0;
    v7[3] = &unk_102447418;
    v7[4] = self;
    [(CLTimer *)[(CLHealthAssessmentNotifierAdapter *)self fAggregateRecordsTimer] setHandler:v7];
    [(CLHealthAssessmentNotifierAdapter *)self aggregateRecords];
  }
}

- (void)teardownService
{
  if (qword_1025D4590 != -1)
  {
    sub_10188BE6C();
  }

  v3 = qword_1025D4598;
  if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Tearing down service", v9, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188C3EC();
  }

  v4 = sub_1000206B4();
  sub_1004FA94C(v4);
  v5 = sub_1000206B4();
  sub_1004FA94C(v5);
  self->_monitorKinesiasStart = 0.0;
  v6 = sub_1000206B4();
  sub_1004FA94C(v6);
  self->_monitorKinesiasExpiration = 0.0;
  v7 = sub_1000206B4();
  sub_1004FA94C(v7);
  self->_lastProcessedTime = 0.0;
  self->_updateStartTime = 0.0;
  v8 = *sub_1000206B4();
  (*(v8 + 944))();
  [(CLHealthAssessmentNotifierAdapter *)self setFSensorRecorderQueryTimer:0];
  [(CLHealthAssessmentNotifierAdapter *)self setFAggregateRecordsTimer:0];
  [(CLHealthAssessmentNotifierAdapter *)self setFSensorRecorderSubscribeTimer:0];

  [(CLHealthAssessmentNotifierAdapter *)self setChoreaDetectionService:0];
  [(CLHealthAssessmentNotifierAdapter *)self setTremorDetectionService:0];

  [(CLHealthAssessmentNotifierAdapter *)self setSensorRecorder:0];
}

- (void)updateSensorRecorderSubscription
{
  [+[NSDate date](NSDate timeIntervalSinceReferenceDate];
  v4 = v3;
  [(CLHealthAssessmentNotifierAdapter *)self monitorKinesiasExpiration];
  if (v4 >= v5)
  {
    if (qword_1025D4590 != -1)
    {
      sub_10188BE6C();
    }

    v7 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Stop renewing sensorRecorder subscription", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188C4C8();
    }
  }

  else
  {
    if (![(CLHealthAssessmentNotifierAdapter *)self fSensorRecorderSubscribeTimer])
    {
      -[CLHealthAssessmentNotifierAdapter setFSensorRecorderSubscribeTimer:](self, "setFSensorRecorderSubscribeTimer:", [objc_msgSend(-[CLHealthAssessmentNotifierAdapter universe](self "universe")]);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100476A3C;
      v10[3] = &unk_102447418;
      v10[4] = self;
      [(CLTimer *)[(CLHealthAssessmentNotifierAdapter *)self fSensorRecorderSubscribeTimer] setHandler:v10];
    }

    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100476A44;
    block[3] = &unk_102447418;
    block[4] = self;
    dispatch_async(global_queue, block);
  }
}

- (void)updateSensorRecorderQuery
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100476D5C;
  v2[3] = &unk_102447418;
  v2[4] = self;
  [objc_msgSend(-[CLHealthAssessmentNotifierAdapter universe](self "universe")];
}

- (void)processDataWithMaxDuration:(double)a3 endTime:(double)a4
{
  if (a3 > 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = Current;
      if (qword_1025D4590 != -1)
      {
        sub_10188BE6C();
      }

      v9 = qword_1025D4598;
      if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349312;
        v37 = v8;
        v38 = 2050;
        v39 = a4;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Limiting processing up to timestamp %{public}lf (asked %{public}lf)", buf, 0x16u);
      }

      v10 = sub_10000A100(121, 2);
      if (v10)
      {
        sub_10188C98C(v10, v11, v12, v13, v14, v15, v16, v17, v8, a4);
      }
    }

    v25 = a3;
    v24 = 1;
    v18 = 0;
    if (a3 > 0.0)
    {
      while (v18 <= 0x1D)
      {
        [(CLHealthAssessmentNotifierAdapter *)self processNextIntervalWithRemainingDurationToProcess:&v25 endTime:&v24 updateCanContinue:v8];
        if (qword_1025D4590 != -1)
        {
          sub_10188BF5C();
        }

        v19 = qword_1025D4598;
        if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349312;
          v37 = v25;
          v38 = 1026;
          LODWORD(v39) = v18;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "Remaining duration to process = %{public}lf, current iteration = %{public}i", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4590 != -1)
          {
            sub_10188BF5C();
          }

          v26 = 134349312;
          v27 = v25;
          v28 = 1026;
          LODWORD(v29) = v18;
          v20 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLHealthAssessmentNotifierAdapter processDataWithMaxDuration:endTime:]", "%s\n", v20);
          if (v20 != buf)
          {
            free(v20);
          }
        }

        ++v18;
        if (v25 <= 0.0 || (v24 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      if (qword_1025D4590 != -1)
      {
        sub_10188BF5C();
      }

      v21 = qword_1025D4598;
      if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        LODWORD(v37) = v18;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "Exceeding maximum number of iterations when processing data = %{public}i - interrupting the processing", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10188CAA0(&v34, v18, v35);
      }

      v24 = 0;
    }

LABEL_31:
    if (qword_1025D4590 != -1)
    {
      sub_10188BF5C();
    }

    v22 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349824;
      v37 = a3;
      v38 = 2050;
      v39 = v8;
      v40 = 2050;
      v41 = a3 - v25;
      v42 = 1026;
      v43 = v18;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "Processed data up to max duration = %{public}lf, endTime = %{public}lf, total duration processed = %{public}lf, number of iterations %{public}i", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4590 != -1)
      {
        sub_10188BF5C();
      }

      v26 = 134349824;
      v27 = a3;
      v28 = 2050;
      v29 = v8;
      v30 = 2050;
      v31 = a3 - v25;
      v32 = 1026;
      v33 = v18;
      v23 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLHealthAssessmentNotifierAdapter processDataWithMaxDuration:endTime:]", "%s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }
  }
}

- (void)processNextIntervalWithRemainingDurationToProcess:(double *)a3 endTime:(double)a4 updateCanContinue:(BOOL *)a5
{
  v5 = __chkstk_darwin(self);
  v7 = v6;
  v8 = v5;
  v10 = v9;
  v12 = v11;
  if (sub_100099160(*([v11 adaptee] + 20) + 72))
  {
    [v12 updateStartTime];
    if (v13 == 0.0)
    {
      [v12 lastProcessedTime];
      if (v14 > 0.0)
      {
        if (qword_1025D4590 != -1)
        {
          sub_10188BE6C();
        }

        v15 = qword_1025D4598;
        if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
        {
          [v12 lastProcessedTime];
          v112 = 134349056;
          v113 = v16;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "Updating start time to %{public}f based on last processed time", &v112, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10188CC8C();
        }

        [v12 lastProcessedTime];
        [v12 setUpdateStartTime:?];
      }
    }

    if (*v10 <= 0.0 || ([v12 updateStartTime], v17 > v8))
    {
      if (qword_1025D4590 != -1)
      {
        sub_10188BF5C();
      }

      v18 = qword_1025D4598;
      if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *v10;
        [v12 updateStartTime];
        v112 = 134349568;
        v113 = v19;
        v114 = 2050;
        v115 = v8;
        v116 = 2050;
        v117[0] = v20;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "No processing to do, remainingDurationToProcess=%{public}f, endTime=%{public}f, updateStartTime=%{public}f", &v112, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&v112, 0x65CuLL);
        if (qword_1025D4590 != -1)
        {
          sub_10188BF5C();
        }

        v82 = *v10;
        [v12 updateStartTime];
        v106 = 134349568;
        v107 = v82;
        v108 = 2050;
        v109 = v8;
        v110 = 2050;
        v111[0] = v83;
        v84 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLHealthAssessmentNotifierAdapter processNextIntervalWithRemainingDurationToProcess:endTime:updateCanContinue:]", "%s\n", v84);
        if (v84 != &v112)
        {
          free(v84);
        }
      }

LABEL_18:
      *v7 = 0;
      return;
    }

    v22 = fmin(*v10, 43200.0);
    [v12 updateStartTime];
    v98 = v8;
    v99 = v23;
    [CLHealthAssessmentUtilities limitStart:&v99 andEnd:&v98 maxDuration:259190.0 from:CFAbsoluteTimeGetCurrent()];
    if ((sub_100477FAC([v12 adaptee], &v99, &v98, v22) & 1) == 0)
    {
      [v12 setLastProcessedTime:v98];
      if (qword_1025D4590 != -1)
      {
        sub_10188BF5C();
      }

      v69 = qword_1025D4598;
      if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
      {
        v112 = 134349056;
        v113 = v98;
        _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_DEFAULT, "No valid period, marking up to %{public}f as processed", &v112, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10188CD80();
      }

      goto LABEL_18;
    }

    v98 = fmin(v98, v8);
    v24 = [NSDate alloc];
    v25 = [v24 initWithTimeIntervalSinceReferenceDate:v99];
    v26 = [NSDate alloc];
    v27 = [v26 initWithTimeIntervalSinceReferenceDate:v98 + 2.0];
    v95 = [objc_msgSend(v12 "sensorRecorder")];
    v94 = [objc_msgSend(v12 "sensorRecorder")];
    if (qword_1025D4590 != -1)
    {
      sub_10188BF5C();
    }

    v28 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      v112 = 134349824;
      v113 = v99;
      v114 = 2050;
      v115 = v98;
      v116 = 1026;
      LODWORD(v117[0]) = v95 != 0;
      WORD2(v117[0]) = 1026;
      *(v117 + 6) = v94 != 0;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "Requested sensorRecorder data from %{public}f to %{public}f. Accel=%{public}d, Gyro=%{public}d", &v112, 0x22u);
    }

    v91 = v10;
    v92 = v7;
    if (sub_10000A100(121, 2))
    {
      bzero(&v112, 0x65CuLL);
      if (qword_1025D4590 != -1)
      {
        sub_10188BF5C();
      }

      v106 = 134349824;
      v107 = v99;
      v108 = 2050;
      v109 = v98;
      v110 = 1026;
      LODWORD(v111[0]) = v95 != 0;
      WORD2(v111[0]) = 1026;
      *(v111 + 6) = v94 != 0;
      v85 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLHealthAssessmentNotifierAdapter processNextIntervalWithRemainingDurationToProcess:endTime:updateCanContinue:]", "%s\n", v85);
      if (v85 != &v112)
      {
        free(v85);
      }
    }

    v93 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    while (1)
    {
      if (v31 >= v33)
      {
        v34 = [v95 countByEnumeratingWithState:v97 objects:&v112 count:700];
        if (!v34)
        {
          goto LABEL_63;
        }

        v33 = v34;
        v31 = 0;
      }

      if (v30 >= v32)
      {
        v35 = [v94 countByEnumeratingWithState:v96 objects:&v106 count:700];
        if (!v35)
        {
          goto LABEL_63;
        }

        v32 = v35;
        v30 = 0;
      }

      v36 = *(&v112 + v31);
      v37 = *(&v106 + v30);
      [v36 startTime];
      v39 = v38;
      [v37 startTime];
      v41 = v40;
      if (v39 > v98 && v40 > v98)
      {
        break;
      }

      if (v39 >= v40)
      {
        if (v40 <= v98 && v40 > v99)
        {
          [v37 rotationRate];
          v60 = v59;
          [v37 rotationRate];
          v62 = v61;
          [v37 rotationRate];
          v64 = v63;
          v65 = [v12 tremorDetectionService];
          *&v66 = v60;
          *&v67 = v62;
          *&v68 = v64;
          [v65 feedGyroSample:v66 time:{v67, v68, v41}];
          [v12 setUpdateStartTime:v41];
          ++v93;
        }

        ++v30;
      }

      else
      {
        if (v39 <= v98 && v39 > v99)
        {
          [v36 acceleration];
          v45 = v44;
          [v36 acceleration];
          v47 = v46;
          [v36 acceleration];
          v49 = v48;
          v50 = [v12 tremorDetectionService];
          *&v51 = v45;
          *&v52 = v47;
          *&v53 = v49;
          [v50 feedAccelSample:v51 time:{v52, v53, v39}];
          v54 = [v12 choreaDetectionService];
          *&v55 = v45;
          *&v56 = v47;
          *&v57 = v49;
          [v54 feedAccelSample:v55 time:{v56, v57, v39}];
          [v12 setUpdateStartTime:v39];
          ++v29;
        }

        ++v31;
      }
    }

    [v12 setUpdateStartTime:?];
LABEL_63:
    if (v29 | v93)
    {
      if (qword_1025D4590 != -1)
      {
        sub_10188BF5C();
      }

      v76 = qword_1025D4598;
      if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
      {
        [v12 updateStartTime];
        *buf = 67240704;
        *v104 = v29;
        *&v104[4] = 1026;
        *&v104[6] = v93;
        *v105 = 2050;
        *&v105[2] = v77 - v99;
        _os_log_impl(dword_100000000, v76, OS_LOG_TYPE_DEFAULT, "New records read, accel = %{public}d, gyro = %{public}d, duration processed = %{public}lf", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4590 != -1)
        {
          sub_10188BF5C();
        }

        [v12 updateStartTime];
        v100 = 67240704;
        *v101 = v29;
        *&v101[4] = 1026;
        *&v101[6] = v93;
        *v102 = 2050;
        *&v102[2] = v86 - v99;
        v87 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLHealthAssessmentNotifierAdapter processNextIntervalWithRemainingDurationToProcess:endTime:updateCanContinue:]", "%s\n", v87);
        if (v87 != buf)
        {
          free(v87);
        }
      }

      [v12 updateStartTime];
      v72 = v92;
      *v91 = *v91 - (v78 - v99);
    }

    else
    {
      v70 = CFAbsoluteTimeGetCurrent() + -600.0;
      [v12 updateStartTime];
      if (v71 >= v70)
      {
        v72 = v92;
        if (qword_1025D4590 != -1)
        {
          sub_10188BF5C();
        }

        v80 = qword_1025D4598;
        if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
        {
          [v12 updateStartTime];
          *buf = 134349056;
          *v104 = v81;
          _os_log_impl(dword_100000000, v80, OS_LOG_TYPE_DEFAULT, "No new records from sensorRecorder, updateStartTime is up to date (%{public}f)", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10188CE74();
        }

        goto LABEL_87;
      }

      v72 = v92;
      if (qword_1025D4590 != -1)
      {
        sub_10188BF5C();
      }

      v73 = qword_1025D4598;
      if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
      {
        [v12 updateStartTime];
        v75 = v98;
        if (v70 < v98)
        {
          v75 = v70;
        }

        *buf = 134349312;
        *v104 = v74;
        *&v104[8] = 2050;
        *v105 = v75;
        _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_DEFAULT, "No new records from sensorRecorder, advancing startUpdateTime from %{public}f to %{public}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4590 != -1)
        {
          sub_10188BF5C();
        }

        [v12 updateStartTime];
        v89 = v98;
        if (v70 < v98)
        {
          v89 = v70;
        }

        v100 = 134349312;
        *v101 = v88;
        *&v101[8] = 2050;
        *v102 = v89;
        v90 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLHealthAssessmentNotifierAdapter processNextIntervalWithRemainingDurationToProcess:endTime:updateCanContinue:]", "%s\n", v90);
        if (v90 != buf)
        {
          free(v90);
        }

        v72 = v92;
      }

      if (v70 < v98)
      {
        [v12 setUpdateStartTime:v70];
LABEL_87:
        v79 = 0;
        goto LABEL_88;
      }

      [v12 setUpdateStartTime:?];
    }

    v79 = 1;
LABEL_88:
    *v72 = v79;
    return;
  }

  if (qword_1025D4590 != -1)
  {
    sub_10188BE6C();
  }

  v21 = qword_1025D4598;
  if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v112) = 0;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "DB not accessible, cannot process accel, gyro data", &v112, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10188CBA8();
  }

  *v7 = 0;
  [v12 adaptee];
  sub_100477F10();
}

- (void)addMonitoringPeriodFrom:(double)a3 until:(double)a4
{
  [(CLHealthAssessmentNotifierAdapter *)self monitorKinesiasStart];
  if (v7 == 0.0 || ([(CLHealthAssessmentNotifierAdapter *)self monitorKinesiasExpiration], v8 < a3))
  {
    self->_monitorKinesiasStart = a3;
    v9 = sub_1000206B4();
    sub_100116DD4(v9, @"kMonitorKinesiasStart", &self->_monitorKinesiasStart);
    v10 = sub_1000206B4();
    LOBYTE(v16) = 1;
    sub_1000434C8(v10, @"kMonitorKinesiasHasData", &v16);
  }

  self->_monitorKinesiasExpiration = a4;
  v11 = sub_1000206B4();
  sub_100116DD4(v11, @"kMonitorKinesiasExpiration", &self->_monitorKinesiasExpiration);
  v12 = *sub_1000206B4();
  (*(v12 + 944))();
  if (qword_1025D4590 != -1)
  {
    sub_10188BF5C();
  }

  v13 = qword_1025D4598;
  if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
  {
    monitorKinesiasStart = self->_monitorKinesiasStart;
    monitorKinesiasExpiration = self->_monitorKinesiasExpiration;
    v16 = 134349312;
    v17 = monitorKinesiasStart;
    v18 = 2050;
    v19 = monitorKinesiasExpiration;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "Updated monitoring period to %{public}f - %{public}f", &v16, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188D634();
  }
}

- (void)startUpdatesforAnalyzer:(int)a3
{
  v5 = [(CLHealthAssessmentNotifierAdapter *)self anySubscribedToSensorRecorder];
  if (!a3)
  {
    v6 = &OBJC_IVAR___CLHealthAssessmentNotifierAdapter_fTremorSubscribed;
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (a3 != 1)
  {
    return;
  }

  v6 = &OBJC_IVAR___CLHealthAssessmentNotifierAdapter_fDyskinesiaSubscribed;
  if ((v5 & 1) == 0)
  {
LABEL_4:
    [(CLHealthAssessmentNotifierAdapter *)self updateSensorRecorderSubscription];
  }

LABEL_5:
  self->super.CLIntersiloService_opaque[*v6] = 1;
}

- (void)stopMonitoring
{
  [+[NSDate date](NSDate timeIntervalSinceReferenceDate];
  v4 = v3;
  [(CLHealthAssessmentNotifierAdapter *)self monitorKinesiasExpiration];
  if (v5 > v4)
  {
    self->_monitorKinesiasExpiration = v4;
    v6 = sub_1000206B4();
    sub_100116DD4(v6, @"kMonitorKinesiasExpiration", &self->_monitorKinesiasExpiration);
    v7 = *sub_1000206B4();
    (*(v7 + 944))();
    if (qword_1025D4590 != -1)
    {
      sub_10188BE6C();
    }

    v8 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      monitorKinesiasStart = self->_monitorKinesiasStart;
      monitorKinesiasExpiration = self->_monitorKinesiasExpiration;
      v11 = 134349312;
      v12 = monitorKinesiasStart;
      v13 = 2050;
      v14 = monitorKinesiasExpiration;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Stop monitoring, set period to %{public}f - %{public}f", &v11, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188D72C();
    }

    self->fDyskinesiaSubscribed = 0;
    self->fTremorSubscribed = 0;
    [(CLHealthAssessmentNotifierAdapter *)self updateSensorRecorderSubscription];
  }
}

- (void)syncgetResultReady:(id)a3 ForAnalyzer:(int)a4
{
  v6 = [(CLHealthAssessmentNotifierAdapter *)self adaptee];

  sub_100478A38(v6, a3, a4);
}

- (void)aggregateRecords
{
  if (sub_1004790B0([(CLHealthAssessmentNotifierAdapter *)self adaptee]))
  {
    [(CLTimer *)[(CLHealthAssessmentNotifierAdapter *)self fAggregateRecordsTimer] setNextFireDelay:3600.0];
    if (qword_1025D4590 != -1)
    {
      sub_10188BE6C();
    }

    v3 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      [(CLTimer *)[(CLHealthAssessmentNotifierAdapter *)self fAggregateRecordsTimer] nextFireTime];
      v6 = 134349056;
      v7 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "fAggregateRecordsTimer.nextFireTime, %{public}f", &v6, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188DC04();
    }
  }

  else
  {
    if (qword_1025D4590 != -1)
    {
      sub_10188BE6C();
    }

    v5 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Closing down CLHealthAssessmentNotifier, past timeout period for stored data", &v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188DB28();
    }

    [(CLHealthAssessmentNotifierAdapter *)self teardownService];
  }
}

- (void)setLastProcessedTime:(double)a3
{
  if (self->_lastProcessedTime < a3)
  {
    self->_lastProcessedTime = a3;
    v5 = sub_1000206B4();
    sub_100116DD4(v5, @"kMonitorKinesiasLastProcessed", &self->_lastProcessedTime);
    v6 = *sub_1000206B4();
    (*(v6 + 944))();
  }

  [(CLHealthAssessmentNotifierAdapter *)self updateStartTime];
  if (v7 < a3)
  {
    v7 = a3;
  }

  [(CLHealthAssessmentNotifierAdapter *)self setUpdateStartTime:v7];
}

+ (BOOL)isSupported
{
  if (qword_102656348 != -1)
  {
    sub_10188DDD8();
  }

  return byte_102656340;
}

@end