@interface CMHealthColdStorageWatchService
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)checkDeferral:(id)deferral;
- (CMHealthColdStorageWatchService)init;
- (id).cxx_construct;
- (void)beginService;
- (void)continueSync:(id)sync;
- (void)endService;
- (void)onCompanionNotification:(const int *)notification data:(const NotificationData *)data;
- (void)onSyncActivity:(id)activity;
- (void)resetAnalytics;
- (void)saveCurrentSyncProgress;
- (void)sendAnalytics;
- (void)sendCompanionData:(id)data activity:(id)activity;
- (void)setActivityAsDone:(id)done;
- (void)setUpAggregationOnTimer;
- (void)setupSyncActivity;
@end

@implementation CMHealthColdStorageWatchService

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v5 = index + 1;
  if (index + 1 < [blocked count])
  {
    [objc_msgSend(blocked objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blocked, v5}];
  }
}

+ (id)getSilo
{
  if (qword_102658240 != -1)
  {
    sub_1018DF510();
  }

  return qword_102658238;
}

- (CMHealthColdStorageWatchService)init
{
  v3.receiver = self;
  v3.super_class = CMHealthColdStorageWatchService;
  return [(CMHealthColdStorageWatchService *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CMHealthColdStorageWatchServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CMHealthColdStorageWatchServiceClientProtocol];
}

+ (BOOL)isSupported
{
  if (qword_102658250 != -1)
  {
    sub_1018DF524();
  }

  return byte_102658248;
}

- (void)beginService
{
  if (qword_1025D4530 != -1)
  {
    sub_1018DF538();
  }

  v3 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Starting up CMHealthColdStorageWatchService", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DF54C();
  }

  self->fCurrentTableIndex = 0;
  self->fIterationCount = 0;
  [(CMHealthColdStorageWatchService *)self setupSyncActivity];
  self->fCompanionConnected = 0;
  sub_100058FD4();
}

- (void)endService
{
  if (qword_1025D4530 != -1)
  {
    sub_1018DF538();
  }

  v3 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Shutting down CMHealthColdStorageWatchService", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DF638();
  }

  ptr = self->fCompanionClient.__ptr_;
  if (ptr)
  {
    [*(ptr + 2) unregister:*(ptr + 1) forNotification:5];
    v5 = self->fCompanionClient.__ptr_;
    self->fCompanionClient.__ptr_ = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  fAggregationTimer = self->fAggregationTimer;
  if (fAggregationTimer)
  {
    dispatch_source_cancel(fAggregationTimer);
    dispatch_release(self->fAggregationTimer);
    self->fAggregationTimer = 0;
  }
}

- (void)setUpAggregationOnTimer
{
  ptr = self->fElevationGradeAggregator.__ptr_;
  v5 = ptr[1];
  v4 = ptr[2];
  if (v5 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *ptr) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10028C64C();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *ptr) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_10013E290(self->fElevationGradeAggregator.__ptr_, v10);
    }

    v11 = 24 * v7;
    *v11 = xmmword_101C78EA0;
    *(v11 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = ptr[1] - *ptr;
    v13 = 24 * v7 - v12;
    memcpy((v11 - v12), *ptr, v12);
    v14 = *ptr;
    *ptr = v13;
    ptr[1] = v6;
    ptr[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = xmmword_101C78EA0;
    v5[16] = 0;
    v6 = (v5 + 24);
  }

  ptr[1] = v6;
  v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, [objc_msgSend(-[CMHealthColdStorageWatchService universe](self "universe")]);
  self->fAggregationTimer = v15;
  dispatch_source_set_timer(v15, 0, 0x4E94914F0000uLL, 0xDF8475800uLL);
  fAggregationTimer = self->fAggregationTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1005E81CC;
  handler[3] = &unk_102447418;
  handler[4] = self;
  dispatch_source_set_event_handler(fAggregationTimer, handler);
  dispatch_resume(self->fAggregationTimer);
}

- (void)onCompanionNotification:(const int *)notification data:(const NotificationData *)data
{
  [-[CMHealthColdStorageWatchService universe](self "universe")];
  if (*notification == 5)
  {
    self->fCompanionConnected = *data;
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018DF538();
    }

    v7 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      v8 = *notification;
      v9[0] = 67109120;
      v9[1] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[WatchService] Unhandled notification type, %d", v9, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DFBC4(notification);
    }
  }
}

- (void)sendCompanionData:(id)data activity:(id)activity
{
  v7 = objc_autoreleasePoolPush();
  v11 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:data requiringSecureCoding:1 error:&v11];
  if (v11)
  {
    ++self->fStats.numErrors;
    if (qword_1025D4530 != -1)
    {
      sub_1018DFCB8();
    }

    v9 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "[WatchService] Failed to archive data with error, %@", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DFCE0();
    }

    [(CMHealthColdStorageWatchService *)self setActivityAsDone:activity];
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1005E8854;
    v10[3] = &unk_102462EF8;
    v10[4] = v8;
    v10[5] = self;
    v10[6] = activity;
    [objc_msgSend(objc_msgSend(-[CMHealthColdStorageWatchService universe](self "universe")];
  }

  [data removeAllObjects];
  objc_autoreleasePoolPop(v7);
}

- (void)continueSync:(id)sync
{
  if ([(CMHealthColdStorageWatchService *)self checkDeferral:?])
  {
    return;
  }

  self->fLastBatchSize = 0;
  if (self->fCurrentTableIndex > 4u)
  {
    return;
  }

  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = dword_101C81080[self->fCurrentTableIndex];
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      v7 = sub_100F3A4E8(self->fHRRSyncManager.__ptr_, v5, 0x30D40u);
    }

    else
    {
      if (v6 != 2)
      {
        goto LABEL_22;
      }

      v7 = sub_100F3A0BC(self->fHRRSyncManager.__ptr_, v5, 0x30D40u);
    }
  }

  else
  {
    switch(v6)
    {
      case 3:
        v7 = sub_100F39CC4(self->fHRRSyncManager.__ptr_, v5, 0x30D40u);
        break;
      case 4:
        v7 = sub_100A9ED44(self->fPredWalkDistanceSyncManager.__ptr_, v5, 0x30D40u);
        break;
      case 5:
        v7 = sub_100933A40(self->fElevationGradeSyncManager.__ptr_, v5, 0x30D40u);
        break;
      default:
        goto LABEL_22;
    }
  }

  v8 = v7;
  if (v7)
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018DF538();
    }

    v9 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_INFO))
    {
      fIterationCount = self->fIterationCount;
      self->fIterationCount = fIterationCount + 1;
      fCurrentTableIndex = self->fCurrentTableIndex;
      v16 = 67240448;
      v17 = fIterationCount;
      v18 = 1024;
      v19 = fCurrentTableIndex;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "[WatchService] Sending companion data iteration:(%{public}d), for table: %d", &v16, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DFED8(self, &self->fCurrentTableIndex);
    }

    self->fLastBatchSize = v8;
    [(CMHealthColdStorageWatchService *)self sendCompanionData:v5 activity:sync];

    return;
  }

LABEL_22:

  ++self->fCurrentTableIndex;
  if (qword_1025D4530 != -1)
  {
    sub_1018DF538();
  }

  v12 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_INFO))
  {
    v13 = self->fCurrentTableIndex;
    v16 = 67109120;
    v17 = v13;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "[WatchService] Advancing to next table: %d", &v16, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E0000(&self->fCurrentTableIndex);
  }

  if (self->fCurrentTableIndex > 4u)
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018DFCB8();
    }

    v15 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "[WatchService] Data transfer completed", &v16, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E00F4();
    }

    [(CMHealthColdStorageWatchService *)self setActivityAsDone:sync];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    [(CMHealthColdStorageWatchService *)self continueSync:sync];
    objc_autoreleasePoolPop(v14);
  }
}

- (void)saveCurrentSyncProgress
{
  fCurrentTableIndex = self->fCurrentTableIndex;
  if (fCurrentTableIndex <= 4)
  {
    v4 = dword_101C81080[fCurrentTableIndex];
    if (v4 <= 2)
    {
      if (v4 == 1)
      {
        sub_100F3AB80(self->fHRRSyncManager.__ptr_);
        v5 = 16;
      }

      else
      {
        if (v4 != 2)
        {
          return;
        }

        sub_100F3AA4C(self->fHRRSyncManager.__ptr_);
        v5 = 12;
      }
    }

    else
    {
      switch(v4)
      {
        case 3:
          sub_100F3A918(self->fHRRSyncManager.__ptr_);
          v5 = 8;
          break;
        case 4:
          sub_100A9F17C(self->fPredWalkDistanceSyncManager.__ptr_);
          v5 = 20;
          break;
        case 5:
          sub_100933E0C(self->fElevationGradeSyncManager.__ptr_);
          v5 = 4;
          break;
        default:
          return;
      }
    }

    *(&self->fStats.numErrors + v5) += self->fLastBatchSize;
  }
}

- (void)setupSyncActivity
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
  sub_101844980(v5, "CMHealthColdStorageCompanionSyncActivityInterval", &XPC_ACTIVITY_INTERVAL_8_HOURS, 0);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, value);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRES_CLASS_B, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_MEMORY_INTENSIVE, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE, 1);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1005E90CC;
  handler[3] = &unk_102462F20;
  handler[4] = self;
  handler[5] = [objc_msgSend(-[CMHealthColdStorageWatchService universe](self "universe")];
  xpc_activity_register("com.apple.locationd.Motion.ColdStorageWatchSync", v3, handler);
  xpc_release(v3);
}

- (void)onSyncActivity:(id)activity
{
  if (activity)
  {
    state = xpc_activity_get_state(activity);
    if (state == 4 || (v6 = state, state == 2))
    {
      if (self->fCompanionConnected)
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_1005E950C;
        v10[3] = &unk_1024473F0;
        v10[4] = self;
        v10[5] = activity;
        [objc_msgSend(-[CMHealthColdStorageWatchService universe](self "universe")];
      }

      else
      {
        if (qword_1025D4530 != -1)
        {
          sub_1018DF538();
        }

        v8 = qword_1025D4538;
        if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "[WatchService] Cannot send data, companion not nearby", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018E03E8();
        }

        [(CMHealthColdStorageWatchService *)self setActivityAsDone:activity];
      }
    }

    else
    {
      if (qword_1025D4530 != -1)
      {
        sub_1018DF538();
      }

      v9 = qword_1025D4538;
      if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "com.apple.locationd.Motion.ColdStorageWatchSync";
        v13 = 2048;
        v14 = v6;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "[WatchService] Unexpected activity (%s) state: %ld", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E04CC();
      }
    }
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018DF538();
    }

    v7 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "com.apple.locationd.Motion.ColdStorageWatchSync";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[WatchService] Invalid xpc activity (%s).", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E05DC();
    }
  }
}

- (BOOL)checkDeferral:(id)deferral
{
  if (deferral)
  {
    should_defer = xpc_activity_should_defer(deferral);
    if (should_defer)
    {
      if (qword_1025D4530 != -1)
      {
        sub_1018DF538();
      }

      v6 = qword_1025D4538;
      if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_INFO))
      {
        v12 = 136446210;
        v13 = "com.apple.locationd.Motion.ColdStorageWatchSync";
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "[WatchService] Cancelling (%{public}s) early due to deferral.", &v12, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E06DC();
      }

      if (xpc_activity_set_state(deferral, 3))
      {
        if (qword_1025D4530 != -1)
        {
          sub_1018DFCB8();
        }

        v7 = qword_1025D4538;
        if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_INFO))
        {
          LOWORD(v12) = 0;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "[WatchService] Activity deferred", &v12, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018E08E4();
        }
      }

      else
      {
        if (qword_1025D4530 != -1)
        {
          sub_1018DFCB8();
        }

        v8 = qword_1025D4538;
        if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_FAULT))
        {
          state = xpc_activity_get_state(deferral);
          v12 = 134349056;
          v13 = state;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "[WatchService] Failed to defer activity. Current state is %{public}ld", &v12, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018E07DC();
        }
      }

      [(CMHealthColdStorageWatchService *)self sendAnalytics];
      self->fCurrentTableIndex = 0;
      self->fIterationCount = 0;
      fTransaction = self->fTransaction;
      if (fTransaction)
      {

        self->fTransaction = 0;
      }

      LOBYTE(should_defer) = 1;
    }
  }

  else
  {
    LOBYTE(should_defer) = 0;
  }

  return should_defer;
}

- (void)setActivityAsDone:(id)done
{
  [(CMHealthColdStorageWatchService *)self sendAnalytics];
  if (!xpc_activity_set_state(done, 5))
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018DF538();
    }

    v5 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_FAULT))
    {
      v7 = 136446466;
      v8 = "com.apple.locationd.Motion.ColdStorageWatchSync";
      v9 = 2050;
      state = xpc_activity_get_state(done);
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "[WatchService] failed to mark %{public}s activity as Done. Current state is %{public}ld", &v7, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E09C8();
    }
  }

  self->fCurrentTableIndex = 0;
  self->fIterationCount = 0;
  fTransaction = self->fTransaction;
  if (fTransaction)
  {

    self->fTransaction = 0;
  }
}

- (void)sendAnalytics
{
  if (objc_opt_class() && ([+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")] & 1) != 0)
  {
    v8[0] = @"NumErrors";
    v9[0] = [NSNumber numberWithInt:self->fStats.numErrors];
    v8[1] = @"NumRecordsSync_EGH";
    v9[1] = [NSNumber numberWithInt:self->fStats.numRecordsSync_EGH];
    v8[2] = @"NumRecordsSync_HRRIHH";
    v9[2] = [NSNumber numberWithInt:self->fStats.numRecordsSync_HRRIHH];
    v8[3] = @"NumRecordsSync_HRRIWH";
    v9[3] = [NSNumber numberWithInt:self->fStats.numRecordsSync_HRRIWH];
    v8[4] = @"NumRecordsSync_HRRSH";
    v9[4] = [NSNumber numberWithInt:self->fStats.numRecordsSync_HRRSH];
    v8[5] = @"NumRecordsSync_PWDBH";
    v9[5] = [NSNumber numberWithInt:self->fStats.numRecordsSync_PWDBH];
    v3 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:6];
    AnalyticsSendEventLazy();
    if (qword_1025D4530 != -1)
    {
      sub_1018DFCB8();
    }

    v4 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v7 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "[WatchService] sent Core Analytics event: %@", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E0AE8();
    }

    [(CMHealthColdStorageWatchService *)self resetAnalytics];
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018DF538();
    }

    v5 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "[WatchService] not sending analytics, no IHA permission", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E0BE0();
    }
  }
}

- (void)resetAnalytics
{
  *&self->fStats.numRecordsSync_HRRIHH = 0;
  *&self->fStats.numRecordsSync_HRRSH = 0;
  *&self->fStats.numErrors = 0;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 22) = 0;
  *(self + 23) = 0;
  *(self + 21) = 0;
  return self;
}

@end