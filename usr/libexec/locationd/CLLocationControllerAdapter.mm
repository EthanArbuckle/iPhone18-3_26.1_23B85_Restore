@interface CLLocationControllerAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)syncgetMetric:(void *)metric;
- (BOOL)syncgetZaxisStats:(void *)stats;
- (CLLocationControllerAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)emergencyStateChange:(id)change;
- (void)endService;
- (void)getRecentLocationsBufferInternalState:(BOOL)state withReply:(id)reply;
- (void)onOutdoorUpdate:(id)update;
- (void)requestRouteReconstruction:(int64_t)reconstruction;
- (void)setGpsAssistantHasClients:(BOOL)clients forNotification:(int)notification;
- (void)setRealTimeHarvestTriggered:(double)triggered;
- (void)setTrackRunHint:(id)hint;
- (void)triggerRecentLocationsRevisedFromMachContinuousTime:(double)time toMachContinuousTime:(double)continuousTime;
- (void)zipperedRouteReconstructionCallback:(int)callback;
@end

@implementation CLLocationControllerAdapter

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
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
  if (qword_102658580 != -1)
  {
    sub_1018F7C34();
  }

  return qword_102658578;
}

- (CLLocationControllerAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLLocationControllerAdapter;
  return [(CLLocationControllerAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLLocationControllerProtocol outboundProtocol:&OBJC_PROTOCOL___CLLocationControllerClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_10066C274([(CLLocationControllerAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_1018F7C48();
  }
}

- (void)endService
{
  v2 = *(*[(CLNotifierServiceAdapter *)self notifier]+ 16);

  v2();
}

- (void)doAsync:(id)async
{
  adaptee = [(CLLocationControllerAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLLocationControllerAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

- (BOOL)syncgetMetric:(void *)metric
{
  v4 = *([(CLLocationControllerAdapter *)self adaptee]+ 35);
  if (v4)
  {
    (*(*v4 + 248))(v4, metric);
  }

  return 1;
}

- (BOOL)syncgetZaxisStats:(void *)stats
{
  adaptee = [(CLLocationControllerAdapter *)self adaptee];

  return sub_100F28474(adaptee, stats);
}

- (void)setTrackRunHint:(id)hint
{
  bytes = [hint bytes];
  if (qword_1025D41D0 != -1)
  {
    sub_1018F80E4();
  }

  v5 = qword_1025D41D8;
  if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *bytes;
    v7 = bytes[2];
    v8 = bytes[3];
    v10 = 134349569;
    v11 = v6;
    v12 = 1025;
    v13 = v7;
    v14 = 1025;
    v15 = v8;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLTR,Daemon,syncsetTrackRunHint,received,mctime,%{public}.1lf,lane,%{private}d,notification,%{private}d", &v10, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F80F8();
  }

  v9 = *([(CLLocationControllerAdapter *)self adaptee]+ 35);
  if (v9)
  {
    (*(*v9 + 464))(v9, bytes);
  }
}

- (void)setGpsAssistantHasClients:(BOOL)clients forNotification:(int)notification
{
  clientsCopy = clients;
  notificationCopy = notification;
  v5 = *([(CLLocationControllerAdapter *)self adaptee]+ 35);
  if (v5)
  {
    (*(*v5 + 344))(v5, &notificationCopy, clientsCopy);
  }
}

- (void)emergencyStateChange:(id)change
{
  (*(change + 2))(&v8, change, a2);
  if (qword_1025D4600 != -1)
  {
    sub_1018F7C0C();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    sub_100C3D494(&v8, &__p);
    v5 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315138;
    v11 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "notifier adapter received emergency state %s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F8204(&v8);
  }

  adaptee = [(CLLocationControllerAdapter *)self adaptee];
  *&__p.__r_.__value_.__l.__data_ = v8;
  LODWORD(__p.__r_.__value_.__r.__words[2]) = v9;
  sub_10066C84C(adaptee, &__p);
}

- (void)onOutdoorUpdate:(id)update
{
  adaptee = [(CLLocationControllerAdapter *)self adaptee];
  (*(update + 2))(v5, update);
  sub_1000C7110(adaptee, v5);
}

- (void)setRealTimeHarvestTriggered:(double)triggered
{
  v4 = *([(CLLocationControllerAdapter *)self adaptee]+ 35);
  if (v4)
  {
    (*(*v4 + 304))(v4, triggered);
  }

  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v6 = 134349056;
    triggeredCopy = triggered;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "BaroAlt,Realtime harvest,received,%{public}.3f", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F8430(triggered);
  }
}

- (void)zipperedRouteReconstructionCallback:(int)callback
{
  adaptee = [(CLLocationControllerAdapter *)self adaptee];

  sub_10066CB88(adaptee, callback);
}

- (void)getRecentLocationsBufferInternalState:(BOOL)state withReply:(id)reply
{
  [(CLLocationControllerAdapter *)self silo];
  if (!state)
  {
    (*(reply + 2))(reply, 0xFFFFFFFFLL, 0, -1.0, -1.0);
  }

  if (![(CLLocationControllerAdapter *)self adaptee])
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "LocationController,#ADL,getRecentLocationsBufferInternalState,adaptee is nullptr", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F8894();
    }

    v10 = [NSError alloc];
    v11 = kCLErrorDomainPrivate;
    v42 = NSLocalizedDescriptionKey;
    v43 = @"LocationController,#ADL,getRecentLocationsBufferInternalState,adaptee is nullptr";
    v12 = &v43;
    v13 = &v42;
    goto LABEL_21;
  }

  v26 = 0xBFF0000000000000;
  v27 = 0xBFF0000000000000;
  if ((sub_10066D38C([(CLLocationControllerAdapter *)self adaptee], &v27, &v26) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v14 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "LocationController,#ADL,getRecentLocationsBufferInternalState,getOutputBufferTimeSpan failed", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F87B0();
    }

    v10 = [NSError alloc];
    v11 = kCLErrorDomainPrivate;
    v40 = NSLocalizedDescriptionKey;
    v41 = @"LocationController,#ADL,getRecentLocationsBufferInternalState,getOutputBufferTimeSpan failed";
    v12 = &v41;
    v13 = &v40;
LABEL_21:
    v15 = [v10 initWithDomain:v11 code:5 userInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v12, v13, 1)}];
    v16.n128_u64[0] = -1.0;
    v17.n128_u64[0] = -1.0;
    (*(reply + 2))(reply, 0xFFFFFFFFLL, v15, v16, v17);
    return;
  }

  v7 = *([(CLLocationControllerAdapter *)self adaptee]+ 748);
  if (v7)
  {
    v8 = *(*(v7 + 40) + 68);
  }

  else
  {
    v8 = 0;
  }

  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v18 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    *buf = 67240704;
    v35 = v8;
    v36 = 2050;
    v37 = v27;
    v38 = 2050;
    v39 = v26;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "LocationController,#ADL,getRecentLocationsBufferInternalState,currentSize,%{public}d,startMctSec,%{public}.3f,endMctSec,%{public}.3f", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v24 = v26;
    v23 = v27;
    v28 = 67240704;
    v29 = v8;
    v30 = 2050;
    v31 = v27;
    v32 = 2050;
    v33 = v26;
    v25 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLLocationControllerAdapter getRecentLocationsBufferInternalState:withReply:]", "%s\n", v25);
    v21 = v23;
    v22 = v24;
    if (v25 != buf)
    {
      free(v25);
    }
  }

  else
  {
    v22 = v26;
    v21 = v27;
  }

  v19.n128_u64[0] = v21;
  v20.n128_u64[0] = v22;
  (*(reply + 2))(reply, v8, 0, v19, v20);
}

- (void)triggerRecentLocationsRevisedFromMachContinuousTime:(double)time toMachContinuousTime:(double)continuousTime
{
  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v7 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134349312;
    timeCopy = time;
    v13 = 2050;
    continuousTimeCopy = continuousTime;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "LocationController,#ADL,triggerRecentLocationsRevised internal notification,start_mct_sec,%{public}.3f,end_mct_sec,%{public}.3f", &v11, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F8978(time, continuousTime);
  }

  adaptee = [(CLLocationControllerAdapter *)self adaptee];
  v9 = sub_10000B1F8();
  v11 = 1;
  v10 = sub_10001A6B0(v9, &v11);
  sub_100E6F1C0(adaptee, v10, time, continuousTime);
}

- (void)requestRouteReconstruction:(int64_t)reconstruction
{
  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67240192;
    v6[1] = reconstruction;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "LocationController,#ADL,requestRouteReconstruction,type,%{public}d", v6, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F8A84(reconstruction);
  }

  sub_10066D6BC([(CLLocationControllerAdapter *)self adaptee]);
}

@end