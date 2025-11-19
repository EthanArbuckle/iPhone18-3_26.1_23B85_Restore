@interface CLContextMetricsService
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLContextMetricsService)init;
- (id).cxx_construct;
- (void)beginService;
- (void)endService;
- (void)getInitialTransitionStates;
- (void)onMotionStateNotification:(int)a3 data:(NotificationData *)a4;
- (void)onStatusNotification:(const int *)a3 data:(const NotificationData *)a4;
- (void)onVisit:(id)a3;
- (void)onWifiNotification:(const int *)a3 data:(const void *)a4;
- (void)queryForTransitionEvents;
@end

@implementation CLContextMetricsService

- (void)queryForTransitionEvents
{
  Current = CFAbsoluteTimeGetCurrent();
  v4 = Current - self->_lastActivityQuery;
  if (v4 >= 3600.0)
  {
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:Current + -900.0];
    if (qword_1025D47C0 != -1)
    {
      sub_1018B646C();
    }

    v7 = qword_1025D47C8;
    if (os_log_type_enabled(qword_1025D47C8, OS_LOG_TYPE_DEFAULT))
    {
      lastActivityQuery = self->_lastActivityQuery;
      *buf = 68290307;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 1026;
      v19 = v4;
      v20 = 1026;
      v21 = lastActivityQuery;
      v22 = 1026;
      v23 = Current;
      v24 = 2113;
      v25 = v5;
      v26 = 2113;
      v27 = v6;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cms mode query, delta:%{public}d, last:%{public}d, now:%{public}d, from:%{private, location:escape_only}@, to:%{private, location:escape_only}@}", buf, 0x38u);
    }

    [(CMMotionActivityManager *)self->_motionActivityManager queryActivityWithAttribute:1 fromDate:v5 toDate:v6 toQueue:self->_oq withHandler:&stru_10245C958];
    if (&RTVisitConfidenceHigh)
    {
      v9 = [[NSDateInterval alloc] initWithStartDate:v5 endDate:v6];
      v10 = [RTStoredVisitFetchOptions alloc];
      v11 = [v10 initWithAscending:1 confidence:+[NSNumber numberWithDouble:](NSNumber dateInterval:"numberWithDouble:" labelVisit:RTVisitConfidenceHigh) limit:{v9, 1, 0}];
      routineMonitor = self->_routineMonitor;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100535FD8;
      v13[3] = &unk_102447440;
      v13[4] = self;
      [(CLRoutineMonitorServiceProtocol *)routineMonitor fetchStoredVisitsWithOptions:v11 withReply:v13];
    }

    self->_lastActivityQuery = Current + -900.0;
  }
}

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
  if (qword_102656CA0 != -1)
  {
    sub_1018B6458();
  }

  return qword_102656C98;
}

- (CLContextMetricsService)init
{
  v3.receiver = self;
  v3.super_class = CLContextMetricsService;
  return [(CLContextMetricsService *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLContextMetricsServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLContextMetricsServiceClientProtocol];
}

- (void)beginService
{
  [-[CLContextMetricsService universe](self "universe")];
  if (qword_1025D47C0 != -1)
  {
    sub_1018B646C();
  }

  v3 = qword_1025D47C8;
  if (os_log_type_enabled(qword_1025D47C8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 68289026;
    v5 = 2082;
    v6 = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cms start service}", &v4, 0x12u);
  }

  self->_dq = [objc_msgSend(-[CLContextMetricsService universe](self "universe")];
  self->_oq = [objc_msgSend(-[CLContextMetricsService universe](self "universe")];
  self->_scanMetrics = [[CLContextScanMetrics alloc] initWithStartTime:CFAbsoluteTimeGetCurrent()];
  sub_1000EE3E8();
}

- (void)endService
{
  [-[CLContextMetricsService universe](self "universe")];
  if (qword_1025D47C0 != -1)
  {
    sub_1018B646C();
  }

  v3 = qword_1025D47C8;
  if (os_log_type_enabled(qword_1025D47C8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 68289026;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cms end service}", v10, 0x12u);
  }

  ptr = self->_wifiClient.__ptr_;
  if (ptr)
  {
    [*(ptr + 2) unregister:*(ptr + 1) forNotification:12];
    v5 = self->_wifiClient.__ptr_;
    self->_wifiClient.__ptr_ = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  v6 = self->_statusClient.__ptr_;
  if (v6)
  {
    [*(v6 + 2) unregister:*(v6 + 1) forNotification:16];
    v7 = self->_statusClient.__ptr_;
    self->_statusClient.__ptr_ = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  v8 = self->_motionClient.__ptr_;
  if (v8)
  {
    [*(v8 + 2) unregister:*(v8 + 1) forNotification:3];
    v9 = self->_motionClient.__ptr_;
    self->_motionClient.__ptr_ = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  [(CLRoutineMonitorServiceProtocol *)self->_routineMonitor stopLeechingVisitsForClient:self];
}

- (void)onWifiNotification:(const int *)a3 data:(const void *)a4
{
  [-[CLContextMetricsService universe](self "universe")];
  v7 = *a3;
  if (*a3 == 12 && *(a4 + 35) == 2)
  {
    v9 = objc_alloc_init(NSMutableArray);
    v10 = *(a4 + 14);
    v11 = *(a4 + 15);
    if (v10 != v11)
    {
      v12 = *(v10 + 56) + -5.0;
      do
      {
        v13 = *(v10 + 56);
        if (vabdd_f64(v12, v13) > 4.0)
        {
          [v9 addObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", round(v13))}];
          v12 = *(v10 + 56);
        }

        v10 += 88;
      }

      while (v10 != v11);
    }

    [(CLContextMetricsService *)self queryForTransitionEvents];
    [(CLContextScanMetrics *)self->_scanMetrics scanEvents:v9 atTime:CFAbsoluteTimeGetCurrent()];
    v7 = *a3;
  }

  if (v7 == 6)
  {
    scanMetrics = self->_scanMetrics;
    if (*(a4 + 12) > 0)
    {
      v15 = *(a4 + 96);
    }

    else
    {
      v15 = 0;
    }

    Current = CFAbsoluteTimeGetCurrent();

    [(CLContextScanMetrics *)scanMetrics associationEvent:v15 atTime:Current];
  }
}

- (void)onStatusNotification:(const int *)a3 data:(const NotificationData *)a4
{
  [-[CLContextMetricsService universe](self universe];
  if (*a3 == 16)
  {
    [(CLContextMetricsService *)self queryForTransitionEvents];
    scanMetrics = self->_scanMetrics;
    Current = CFAbsoluteTimeGetCurrent();

    [(CLContextScanMetrics *)scanMetrics hearbeatEventAtTime:Current];
  }
}

- (void)onMotionStateNotification:(int)a3 data:(NotificationData *)a4
{
  [-[CLContextMetricsService universe](self universe];
  if (a3 == 3)
  {
    scanMetrics = self->_scanMetrics;
    v11 = *(a4 + 7);
    v15[6] = *(a4 + 6);
    v15[7] = v11;
    v16 = *(a4 + 16);
    v12 = *(a4 + 3);
    v15[2] = *(a4 + 2);
    v15[3] = v12;
    v13 = *(a4 + 5);
    v15[4] = *(a4 + 4);
    v15[5] = v13;
    v14 = *(a4 + 1);
    v15[0] = *a4;
    v15[1] = v14;
    [(CLContextScanMetrics *)scanMetrics motionEvent:v15];
  }
}

- (void)onVisit:(id)a3
{
  if ([a3 hasDepartureDate])
  {
    scanMetrics = self->_scanMetrics;

    [(CLContextScanMetrics *)scanMetrics visitEvent:a3 withFamiliarityIndex:0];
  }

  else
  {
    routineMonitor = self->_routineMonitor;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100535CB0;
    v7[3] = &unk_10245C918;
    v7[4] = self;
    v7[5] = a3;
    [(CLRoutineMonitorServiceProtocol *)routineMonitor getFamiliarityIndexForVisit:a3 withReply:v7];
  }
}

- (void)getInitialTransitionStates
{
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_1025D47C0 != -1)
  {
    sub_1018B646C();
  }

  v4 = qword_1025D47C8;
  if (os_log_type_enabled(qword_1025D47C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 1026;
    v14 = Current;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cms mode init query, now:%{public}d}", buf, 0x18u);
  }

  [(CMMotionActivityManager *)self->_motionActivityManager queryActivityStartingFromDate:+[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate toDate:"dateWithTimeIntervalSinceReferenceDate:" toQueue:Current + -900.0) withHandler:+[NSDate date], self->_oq, &stru_10245C978];
  if (&RTVisitConfidenceHigh)
  {
    v5 = [RTStoredVisitFetchOptions alloc];
    v6 = [v5 initWithAscending:0 confidence:+[NSNumber numberWithDouble:](NSNumber dateInterval:"numberWithDouble:" labelVisit:RTVisitConfidenceHigh) limit:{0, 1, &off_10254EA38}];
    routineMonitor = self->_routineMonitor;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100536858;
    v8[3] = &unk_102447440;
    v8[4] = self;
    [(CLRoutineMonitorServiceProtocol *)routineMonitor fetchStoredVisitsWithOptions:v6 withReply:v8];
  }

  self->_lastActivityQuery = Current;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

@end