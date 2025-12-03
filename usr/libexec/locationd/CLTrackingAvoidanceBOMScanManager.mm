@interface CLTrackingAvoidanceBOMScanManager
- (BOOL)checkDailyResetEligible:(id)eligible;
- (CLTrackingAvoidanceBOMScanManager)initWithQueue:(id)queue andController:(id)controller;
- (double)computeBOMScanBackoffOfDate:(id)date;
- (id)initAndStartWithQueue:(id)queue andController:(id)controller;
- (id)timestampOfLastBOMDailyLimitResetDate;
- (id)timestampOfLastBeepOnMoveScanDate;
- (unsigned)remainingBOMScans;
- (void)dispatchEnableBomScanAfterBackoff;
- (void)enableBOMScan;
- (void)handleRegisterWithController:(id)controller;
- (void)handleUnRegisterController;
- (void)resetBOMScanIfNeeded;
- (void)scanCompleted;
- (void)scheduleDailyResetBOMScan;
- (void)setRemainingBOMScansTo:(unsigned int)to;
- (void)setTimeStampLastBeepOnMoveScan:(double)scan;
- (void)setTimestampLastBOMDailyLimitResetDate:(double)date;
- (void)submitBOMMetricsScansCompleted:(unint64_t)completed andTimeSinceLastDisable:(double)disable;
@end

@implementation CLTrackingAvoidanceBOMScanManager

- (CLTrackingAvoidanceBOMScanManager)initWithQueue:(id)queue andController:(id)controller
{
  v15.receiver = self;
  v15.super_class = CLTrackingAvoidanceBOMScanManager;
  v6 = [(CLTrackingAvoidanceBOMScanManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_queue = queue;
    v6->_controller = controller;
    sub_10001CAF4(buf);
    v16 = 0.0;
    v8 = sub_1000B9370(*buf, "TrackingAvoidanceCooldownTimeForBOMScan", &v16);
    v9 = v16;
    if (!v8)
    {
      v9 = 960.0;
    }

    v7->_coolDownScan = v9;
    if (*v18)
    {
      sub_100008080(*v18);
    }

    v7->_dailyStartingValue = 5;
    sub_10001CAF4(buf);
    v10 = sub_1004FB7DC(*buf, "TrackingAvoidanceRemainingBOMScansStartingValue", &v7->_dailyStartingValue);
    if (*v18)
    {
      sub_100008080(*v18);
    }

    if (v10)
    {
      [(CLTrackingAvoidanceBOMScanManager *)v7 setRemainingBOMScansTo:v7->_dailyStartingValue];
    }

    if (qword_1025D4700 != -1)
    {
      sub_101883F90();
    }

    v11 = qword_1025D4708;
    if (os_log_type_enabled(qword_1025D4708, OS_LOG_TYPE_INFO))
    {
      coolDownScan = v7->_coolDownScan;
      remainingBOMScans = [(CLTrackingAvoidanceBOMScanManager *)v7 remainingBOMScans];
      *buf = 68289538;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2050;
      v20 = coolDownScan;
      v21 = 2050;
      v22 = remainingBOMScans;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#ut BOM scan manager init , coolDownScan:%{public}lu, remainingBOMScans:%{public}lu}", buf, 0x26u);
    }

    [(CLTrackingAvoidanceBOMScanManager *)v7 submitBOMMetricsBoot];
  }

  return v7;
}

- (id)initAndStartWithQueue:(id)queue andController:(id)controller
{
  v4 = [(CLTrackingAvoidanceBOMScanManager *)self initWithQueue:queue andController:controller];
  v5 = v4;
  if (v4)
  {
    [(CLTrackingAvoidanceBOMScanManager *)v4 resetBOMScanIfNeeded];
    [(CLTrackingAvoidanceBOMScanManager *)v5 scheduleDailyResetBOMScan];
    [(CLTrackingAvoidanceBOMScanManager *)v5 dispatchEnableBomScanAfterBackoff];
  }

  return v5;
}

- (void)setTimeStampLastBeepOnMoveScan:(double)scan
{
  scanCopy = scan;
  v3 = sub_1000206B4();
  sub_100116D68(v3, "TrackingAvoidanceLastBeepOnMoveScanDate", &scanCopy);
  v4 = *sub_1000206B4();
  (*(v4 + 944))();
  if (qword_1025D4700 != -1)
  {
    sub_101883F90();
  }

  v5 = qword_1025D4708;
  if (os_log_type_enabled(qword_1025D4708, OS_LOG_TYPE_INFO))
  {
    *buf = 68289283;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2049;
    v12 = scanCopy;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#ut BOM setting last BOM timestamp, time:%{private}lu}", buf, 0x1Cu);
  }
}

- (id)timestampOfLastBeepOnMoveScanDate
{
  v6 = 0.0;
  v3 = sub_1000206B4();
  if ((sub_1000B9370(v3, "TrackingAvoidanceLastBeepOnMoveScanDate", &v6) & 1) == 0)
  {
    v6 = 0.0;
    [(CLTrackingAvoidanceBOMScanManager *)self setTimeStampLastBeepOnMoveScan:0.0];
    if (qword_1025D4700 != -1)
    {
      sub_101883F90();
    }

    v4 = qword_1025D4708;
    if (os_log_type_enabled(qword_1025D4708, OS_LOG_TYPE_INFO))
    {
      *buf = 68289283;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2049;
      v12 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#ut BOM setting default value, timestampOfLastBeepOnMoveScanDate:%{private}lu}", buf, 0x1Cu);
    }
  }

  return [NSDate dateWithTimeIntervalSince1970:v6];
}

- (void)setTimestampLastBOMDailyLimitResetDate:(double)date
{
  dateCopy = date;
  v3 = sub_1000206B4();
  sub_100116D68(v3, "TrackingAvoidanceLastBOMDailyLimitReset", &dateCopy);
  v4 = *sub_1000206B4();
  (*(v4 + 944))();
  if (qword_1025D4700 != -1)
  {
    sub_101883F90();
  }

  v5 = qword_1025D4708;
  if (os_log_type_enabled(qword_1025D4708, OS_LOG_TYPE_INFO))
  {
    *buf = 68289283;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2049;
    v12 = dateCopy;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#ut BOM setting last BOM daily limit reset timestamp, time:%{private}lu}", buf, 0x1Cu);
  }
}

- (id)timestampOfLastBOMDailyLimitResetDate
{
  v6 = 0.0;
  v3 = sub_1000206B4();
  if ((sub_1000B9370(v3, "TrackingAvoidanceLastBOMDailyLimitReset", &v6) & 1) == 0)
  {
    v6 = 0.0;
    [(CLTrackingAvoidanceBOMScanManager *)self setTimestampLastBOMDailyLimitResetDate:0.0];
    if (qword_1025D4700 != -1)
    {
      sub_101883F90();
    }

    v4 = qword_1025D4708;
    if (os_log_type_enabled(qword_1025D4708, OS_LOG_TYPE_INFO))
    {
      *buf = 68289283;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2049;
      v12 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#ut BOM setting default value, lastBOMDailyLimitResetKey:%{private}lu}", buf, 0x1Cu);
    }
  }

  return [NSDate dateWithTimeIntervalSince1970:v6];
}

- (void)setRemainingBOMScansTo:(unsigned int)to
{
  toCopy = to;
  v3 = sub_1000206B4();
  sub_1001E8460(v3, "TrackingAvoidanceRemainingBOMScans", &toCopy);
  v4 = *sub_1000206B4();
  (*(v4 + 944))();
  if (qword_1025D4700 != -1)
  {
    sub_101883F90();
  }

  v5 = qword_1025D4708;
  if (os_log_type_enabled(qword_1025D4708, OS_LOG_TYPE_INFO))
  {
    *buf = 68289283;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2049;
    v12 = toCopy;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#ut BOM setting scans reaming, remainingBOMScans:%{private}lu}", buf, 0x1Cu);
  }
}

- (unsigned)remainingBOMScans
{
  v6 = 0;
  v3 = sub_1000206B4();
  if ((sub_1004FB7DC(v3, "TrackingAvoidanceRemainingBOMScans", &v6) & 1) == 0)
  {
    [(CLTrackingAvoidanceBOMScanManager *)self setRemainingBOMScansTo:5];
    v6 = 5;
    if (qword_1025D4700 != -1)
    {
      sub_101883F90();
    }

    v4 = qword_1025D4708;
    if (os_log_type_enabled(qword_1025D4708, OS_LOG_TYPE_INFO))
    {
      *buf = 68289283;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2049;
      v12 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#ut BOM setting default value, remainingBOMScans:%{private}lu}", buf, 0x1Cu);
    }
  }

  return v6;
}

- (void)handleRegisterWithController:(id)controller
{
  if (qword_1025D4700 != -1)
  {
    sub_101883FB8();
  }

  v5 = qword_1025D4708;
  if (os_log_type_enabled(qword_1025D4708, OS_LOG_TYPE_INFO))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#ut BOM register}", v6, 0x12u);
  }

  [(CLTrackingAvoidanceBOMScanManager *)self setController:controller];
  [(CLTrackingAvoidanceBOMScanManager *)self dispatchEnableBomScanAfterBackoff];
}

- (void)handleUnRegisterController
{
  if (qword_1025D4700 != -1)
  {
    sub_101883FB8();
  }

  v3 = qword_1025D4708;
  if (os_log_type_enabled(qword_1025D4708, OS_LOG_TYPE_INFO))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#ut BOM unregister}", v4, 0x12u);
  }

  [(CLTrackingAvoidanceBOMScanManager *)self setController:0];
}

- (void)enableBOMScan
{
  if (qword_1025D4700 != -1)
  {
    sub_101883FB8();
  }

  v3 = qword_1025D4708;
  if (os_log_type_enabled(qword_1025D4708, OS_LOG_TYPE_INFO))
  {
    v6 = 68289539;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2049;
    remainingBOMScans = [(CLTrackingAvoidanceBOMScanManager *)self remainingBOMScans];
    v12 = 2113;
    timestampOfLastBeepOnMoveScanDate = [(CLTrackingAvoidanceBOMScanManager *)self timestampOfLastBeepOnMoveScanDate];
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#ut BOM scans, count:%{private}lu, LastBOMScan:%{private, location:escape_only}@}", &v6, 0x26u);
  }

  if ([(CLTrackingAvoidanceBOMScanManager *)self remainingBOMScans]&& [(CLTrackingAvoidanceBOMScanManager *)self controller])
  {
    performNotOptedInBOMScan = [(CLAvengerScannerClient *)self->_controller performNotOptedInBOMScan];
    if (qword_1025D4700 != -1)
    {
      sub_101883F90();
    }

    v5 = qword_1025D4708;
    if (os_log_type_enabled(qword_1025D4708, OS_LOG_TYPE_INFO))
    {
      v6 = 68289283;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2049;
      remainingBOMScans = performNotOptedInBOMScan;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#ut BOM scan completed, completed:%{private}lu}", &v6, 0x1Cu);
    }
  }
}

- (double)computeBOMScanBackoffOfDate:(id)date
{
  [date timeIntervalSinceDate:{-[CLTrackingAvoidanceBOMScanManager timestampOfLastBeepOnMoveScanDate](self, "timestampOfLastBeepOnMoveScanDate")}];
  coolDownScan = self->_coolDownScan;
  v6 = v4 >= coolDownScan || v4 < 0.0;
  result = coolDownScan - v4;
  if (v6)
  {
    return 0.0;
  }

  return result;
}

- (void)dispatchEnableBomScanAfterBackoff
{
  objc_initWeak(&location, self);
  [(CLTrackingAvoidanceBOMScanManager *)self computeBOMScanBackoffOfDate:+[NSDate now]];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100460750;
  v6[3] = &unk_102455798;
  objc_copyWeak(&v7, &location);
  dispatch_after(v4, queue, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)scanCompleted
{
  if (qword_1025D4700 != -1)
  {
    sub_101883FB8();
  }

  v3 = qword_1025D4708;
  if (os_log_type_enabled(qword_1025D4708, OS_LOG_TYPE_INFO))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#ut BOM scan completed }", v4, 0x12u);
  }

  [(CLTrackingAvoidanceBOMScanManager *)self setRemainingBOMScansTo:[(CLTrackingAvoidanceBOMScanManager *)self remainingBOMScans]- 1];
  [+[NSDate now](NSDate timeIntervalSinceDate:"timeIntervalSinceDate:", [(CLTrackingAvoidanceBOMScanManager *)self timestampOfLastBeepOnMoveScanDate]];
  [(CLTrackingAvoidanceBOMScanManager *)self submitBOMMetricsScansCompleted:1 andTimeSinceLastDisable:?];
  [+[NSDate now](NSDate timeIntervalSince1970];
  [(CLTrackingAvoidanceBOMScanManager *)self setTimeStampLastBeepOnMoveScan:?];
  [(CLTrackingAvoidanceBOMScanManager *)self dispatchEnableBomScanAfterBackoff];
}

- (void)submitBOMMetricsScansCompleted:(unint64_t)completed andTimeSinceLastDisable:(double)disable
{
  if (disable > 86400.0 || disable < 0.0)
  {
    disableCopy = -1.0;
  }

  else
  {
    disableCopy = disable;
  }

  if (qword_1025D4700 != -1)
  {
    sub_101883FB8();
  }

  v7 = qword_1025D4708;
  if (os_log_type_enabled(qword_1025D4708, OS_LOG_TYPE_INFO))
  {
    *buf = 68289538;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2050;
    v13 = disableCopy;
    v14 = 2050;
    completedCopy = completed;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#ut BOM metrics , timeSinceLastDisable:%{public}lu, scanCount:%{public}lu}", buf, 0x26u);
  }

  AnalyticsSendEventLazy();
}

- (void)resetBOMScanIfNeeded
{
  if ([(CLTrackingAvoidanceBOMScanManager *)self checkDailyResetEligible:+[NSDate now]])
  {
    if (qword_1025D4700 != -1)
    {
      sub_101883FB8();
    }

    v3 = qword_1025D4708;
    if (os_log_type_enabled(qword_1025D4708, OS_LOG_TYPE_INFO))
    {
      v4[0] = 68289026;
      v4[1] = 0;
      v5 = 2082;
      v6 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#ut BOM reset }", v4, 0x12u);
    }

    [(CLTrackingAvoidanceBOMScanManager *)self setRemainingBOMScansTo:self->_dailyStartingValue];
    [+[NSDate now](NSDate timeIntervalSince1970];
    [(CLTrackingAvoidanceBOMScanManager *)self setTimestampLastBOMDailyLimitResetDate:?];
    [(CLTrackingAvoidanceBOMScanManager *)self dispatchEnableBomScanAfterBackoff];
  }
}

- (BOOL)checkDailyResetEligible:(id)eligible
{
  [eligible timeIntervalSinceDate:{-[CLTrackingAvoidanceBOMScanManager timestampOfLastBOMDailyLimitResetDate](self, "timestampOfLastBOMDailyLimitResetDate")}];
  v4 = v3;
  if (qword_1025D4700 != -1)
  {
    sub_101883FB8();
  }

  v5 = qword_1025D4708;
  if (os_log_type_enabled(qword_1025D4708, OS_LOG_TYPE_INFO))
  {
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2050;
    v11 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#ut BOM checking daily reset , timeSinceLastDailyReset:%{public}lu}", v7, 0x1Cu);
  }

  return fabs(v4) > 86400.0;
}

- (void)scheduleDailyResetBOMScan
{
  if (qword_1025D4700 != -1)
  {
    sub_101883FB8();
  }

  v3 = qword_1025D4708;
  if (os_log_type_enabled(qword_1025D4708, OS_LOG_TYPE_INFO))
  {
    buf = 68289282;
    v9 = 2082;
    v10 = "";
    v11 = 2050;
    v12 = 3600;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#ut BOM schedule daily reset check, timeUntilNextReset:%{public}lu}", &buf, 0x1Cu);
  }

  objc_initWeak(&buf, self);
  v4 = dispatch_time(0, 3600000000000);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100460E78;
  block[3] = &unk_102455798;
  objc_copyWeak(&v7, &buf);
  dispatch_after(v4, queue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&buf);
}

@end