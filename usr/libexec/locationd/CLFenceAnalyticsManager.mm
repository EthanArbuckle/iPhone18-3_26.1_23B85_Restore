@interface CLFenceAnalyticsManager
+ (BOOL)isSupported;
+ (id)getSilo;
+ (id)regionForFence:(Fence *)fence;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)updateHistoricalFenceStateWithNotificationData:(NotificationData *)data;
- (CLFenceAnalyticsManager)init;
- (CLStepDistance)fetchStepCountInInterval:(SEL)interval;
- (id).cxx_construct;
- (id)historicalFenceStateForFence:(Fence *)fence;
- (id)historicalFenceStateForFenceName:(id)name;
- (id)queue;
- (void)beginService;
- (void)endService;
- (void)fetchDominantMotionActivityInInterval:(id)interval handler:(id)handler;
- (void)fetchLocationOfInterestForFence:(Fence *)fence handler:;
- (void)fetchLocationOfInterestForRegion:(id)region handler:(id)handler;
- (void)fetchLocationSystemStateWithHandler:(id)handler;
- (void)fetchMotionActivitiesInInterval:(id)interval handler:(id)handler;
- (void)onMonitorNotification:(int)notification data:(NotificationData *)data;
- (void)updateTimeToInitialStateChangeForFence:(CLFenceAnalyticsManager *)self previousStatus:(SEL)status timeOfStateChange:(Fence *)change;
@end

@implementation CLFenceAnalyticsManager

+ (BOOL)isSupported
{
  if (qword_10265A738 != -1)
  {
    sub_1019557E8();
  }

  return byte_10265A730;
}

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
  if (qword_10265A748 != -1)
  {
    sub_1019557FC();
  }

  return qword_10265A740;
}

- (CLFenceAnalyticsManager)init
{
  v3.receiver = self;
  v3.super_class = CLFenceAnalyticsManager;
  return [(CLFenceAnalyticsManager *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLFenceAnalyticsManagerServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLFenceAnalyticsManagerClientProtocol];
}

- (void)beginService
{
  if (qword_1025D4640 != -1)
  {
    sub_101955810();
  }

  v3 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "FenceAnalyticsManager beginService", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101955824();
  }

  self->_stateChangeAnalytics = [[CLFenceStateChangeAnalytics alloc] initWithUniverse:[(CLFenceAnalyticsManager *)self universe] fenceAnalyticsManager:self];
  if ([objc_msgSend(-[CLFenceAnalyticsManager universe](self "universe")])
  {
    self->_motionStateProxy = [objc_msgSend(-[CLFenceAnalyticsManager universe](self "universe")];
  }

  sub_10015CEC8();
}

- (void)endService
{
  self->_historicalFenceStates = 0;
  motionStateProxy = self->_motionStateProxy;
  if (motionStateProxy)
  {

    self->_motionStateProxy = 0;
  }

  fenceManagerProxy = self->_fenceManagerProxy;
  if (fenceManagerProxy)
  {

    self->_fenceManagerProxy = 0;
  }

  stateChangeAnalytics = self->_stateChangeAnalytics;
  if (stateChangeAnalytics)
  {

    self->_stateChangeAnalytics = 0;
  }

  routineMonitor = self->_routineMonitor;
  if (routineMonitor)
  {

    self->_routineMonitor = 0;
  }
}

- (id)queue
{
  v2 = [-[CLFenceAnalyticsManager universe](self "universe")];

  return [v2 queue];
}

- (void)fetchMotionActivitiesInInterval:(id)interval handler:(id)handler
{
  if (!handler)
  {
    sub_101955924();
  }

  v7 = [[CLOSTransaction alloc] initWithDescription:"CLFenceAnalyticsManager.MotionActivityQuery"];
  motionStateProxy = self->_motionStateProxy;
  [objc_msgSend(interval "startDate")];
  v10 = v9;
  [objc_msgSend(interval "endDate")];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10084F150;
  v12[3] = &unk_102476E58;
  v12[5] = v7;
  v12[6] = handler;
  v12[4] = self;
  [(CLMotionStateProtocol *)motionStateProxy queryMotionStatesWithStartTime:1 endTime:v12 isFromInternalClient:v10 withReply:v11];
}

- (void)fetchDominantMotionActivityInInterval:(id)interval handler:(id)handler
{
  if (!handler)
  {
    sub_101955980();
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10084F250;
  v7[3] = &unk_102476E80;
  v7[4] = self;
  v7[5] = interval;
  v7[6] = handler;
  [(CLFenceAnalyticsManager *)self fetchMotionActivitiesInInterval:interval handler:v7];
}

- (CLStepDistance)fetchStepCountInInterval:(SEL)interval
{
  *&retstr->var7 = 0;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  ptr = self->_stepCountDb.__ptr_;
  [objc_msgSend(a4 "startDate")];
  v8 = v7;
  [objc_msgSend(a4 "endDate")];

  sub_101369004(ptr, 0, retstr, v8, v9);
  return result;
}

+ (id)regionForFence:(Fence *)fence
{
  if (*(&fence[9].var0.__rep_.__l + 2) != fence[9].var0.__rep_.__l.__size_)
  {
    return 0;
  }

  v17 = v3;
  v11 = [NSString alloc];
  data = fence + 1;
  if (*(&fence[1].var0.__rep_.__l + 23) < 0)
  {
    data = data->var0.__rep_.__l.__data_;
  }

  v13 = [v11 initWithCString:data encoding:{4, v6, v5, v4, v17, v7}];
  v14 = [CLCircularRegion alloc];
  v15 = CLLocationCoordinate2DMake(*&fence[3].var0.__rep_.__l.__data_, *&fence[3].var0.__rep_.__l.__size_);
  v16 = [v14 initWithCenter:v13 radius:v15.latitude identifier:{v15.longitude, *(&fence[3].var0.__rep_.__l + 2)}];

  return v16;
}

- (void)fetchLocationOfInterestForFence:(Fence *)fence handler:
{
  v4 = v3;
  if (!v3)
  {
    sub_1019559DC();
  }

  v7 = objc_opt_class();
  sub_1004BF718(__dst, fence->var0.__rep_.__s.__data_);
  -[CLFenceAnalyticsManager fetchLocationOfInterestForRegion:handler:](self, "fetchLocationOfInterestForRegion:handler:", [v7 regionForFence:__dst], v4);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(__dst[0]);
  }
}

- (void)fetchLocationOfInterestForRegion:(id)region handler:(id)handler
{
  if (!handler)
  {
    sub_101955A38();
  }

  if (self->_routineMonitor && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    routineMonitor = self->_routineMonitor;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10084F5F8;
    v9[3] = &unk_102476EA8;
    v9[4] = self;
    v9[5] = handler;
    [(CLRoutineMonitorServiceProtocol *)routineMonitor fetchLocationOfInterestForRegion:region withReply:v9];
  }

  else
  {
    v8 = *(handler + 2);

    v8(handler, 0);
  }
}

- (BOOL)updateHistoricalFenceStateWithNotificationData:(NotificationData *)data
{
  v6 = [NSString alloc];
  v7 = (data + 24);
  if (*(data + 47) < 0)
  {
    v7 = *v7;
  }

  v8 = [v6 initWithCString:v7 encoding:4];
  v9 = *(data + 318);
  v10 = *(data + 163);
  if (v9 == -1)
  {
    v11 = 3;
  }

  else
  {
    v11 = v9;
  }

  v23 = *(data + 56);
  v24 = *(data + 57);
  *v25 = *(data + 58);
  *&v25[12] = *(data + 940);
  v19 = *(data + 52);
  v20 = *(data + 53);
  v21 = *(data + 54);
  v22 = *(data + 55);
  v17 = *(data + 50);
  v18 = *(data + 51);
  if (qword_1025D4640 != -1)
  {
    sub_101955810();
  }

  v12 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(data + 99);
    *buf = 138413058;
    *&buf[4] = v8;
    *&buf[12] = 1024;
    *&buf[14] = v11;
    *&buf[18] = 1024;
    *&buf[20] = v10;
    *&buf[24] = 2048;
    *&buf[26] = v13;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#FenceMetrics update historical fence state %@, previousStatus %d, currentStatus %d, timeOfLocationReceived %f", buf, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4640 != -1)
    {
      sub_101955A94();
    }

    v16 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLFenceAnalyticsManager updateHistoricalFenceStateWithNotificationData:]", "%s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  if (![(NSMutableDictionary *)self->_historicalFenceStates objectForKey:v8])
  {
    [(NSMutableDictionary *)self->_historicalFenceStates setObject:objc_alloc_init(CLFenceAnalyticsHistoricalStates) forKeyedSubscript:v8];
  }

  v14 = [(NSMutableDictionary *)self->_historicalFenceStates objectForKey:v8];
  v30 = v23;
  v31 = v24;
  v32[0] = *v25;
  *(v32 + 12) = *&v25[12];
  *&buf[32] = v19;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  *buf = v17;
  *&buf[16] = v18;
  [v14 updateCurrentState:v10 previousState:v11 location:buf locationReceivedTime:*(data + 99)];
  return 1;
}

- (void)updateTimeToInitialStateChangeForFence:(CLFenceAnalyticsManager *)self previousStatus:(SEL)status timeOfStateChange:(Fence *)change
{
  if (v3 == -1)
  {
    v17 = v9;
    v18 = v5;
    v19 = v4;
    v13 = v8 - *&change[5].var0.__rep_.__l.__data_;
    v14 = [NSString alloc];
    data = change + 1;
    if (*(&change[1].var0.__rep_.__l + 23) < 0)
    {
      data = data->var0.__rep_.__l.__data_;
    }

    v16 = -[NSMutableDictionary objectForKey:](self->_historicalFenceStates, "objectForKey:", [v14 initWithCString:data encoding:{4, v10, v17, v18, v19, v6}]);

    [v16 updateTimeToInitialStateChange:v13];
  }
}

- (void)fetchLocationSystemStateWithHandler:(id)handler
{
  if (!handler)
  {
    sub_101955ABC();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10084FA60;
  v5[3] = &unk_102476ED0;
  v5[4] = self;
  v5[5] = handler;
  sub_100047D60([(CLFenceAnalyticsManager *)self universe], v5);
}

- (id)historicalFenceStateForFence:(Fence *)fence
{
  v5 = [NSString alloc];
  data = fence + 1;
  if (*(&fence[1].var0.__rep_.__l + 23) < 0)
  {
    data = data->var0.__rep_.__l.__data_;
  }

  v7 = [v5 initWithCString:data encoding:4];

  return [(CLFenceAnalyticsManager *)self historicalFenceStateForFenceName:v7];
}

- (id)historicalFenceStateForFenceName:(id)name
{
  historicalFenceStates = [(CLFenceAnalyticsManager *)self historicalFenceStates];

  return [(NSMutableDictionary *)historicalFenceStates objectForKey:name];
}

- (void)onMonitorNotification:(int)notification data:(NotificationData *)data
{
  v5 = __chkstk_darwin(self);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [objc_msgSend(v10 universe];
  if (qword_1025D4640 != -1)
  {
    sub_101955810();
  }

  v12 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#FenceMetrics Received FenceMonitor notification, processing metrics for state change", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101955B18();
  }

  if (v9 == 11)
  {
    sub_1004BF718(__dst, v7);
    sub_1004BF718(v23, (v7 + 248));
    memcpy(v24, v7 + 31, sizeof(v24));
    [v11 updateHistoricalFenceStateWithNotificationData:__dst];
    sub_10005E520(__dst);
    v13 = v11[8];
    sub_1004BF718(v19, v7);
    sub_1004BF718(v20, (v7 + 248));
    memcpy(v21, v7 + 31, sizeof(v21));
    [v13 submitAllMetricsFromNotification:v19];
    sub_10005E520(v19);
    v14 = v11[8];
    sub_1004BF718(v16, v7);
    sub_1004BF718(v17, (v7 + 248));
    memcpy(v18, v7 + 31, sizeof(v18));
    [v14 evaluatePossibleFalseExitFromNotification:v16];
    sub_10005E520(v16);
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_101955A94();
    }

    v15 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v26 = v9;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "#FenceMetrics analytics received invalid notification type, %u", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101955C1C(v9);
    }
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 5) = 0;
  return self;
}

@end