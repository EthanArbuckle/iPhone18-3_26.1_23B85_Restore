@interface _InternalVisionSession
+ (id)sharedInstance;
- (id)_initInternal;
- (void)_handleARSessionDidUpdateFrame:(id)a3;
- (void)_setUpARSession;
- (void)_tearDownARSession;
- (void)registerObserver:(id)a3 withIdentifier:(id)a4;
- (void)session:(id)a3 didChangeState:(unint64_t)a4;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)sessionInterruptionEnded:(id)a3;
- (void)sessionShouldAttemptRelocalization:(id)a3 completion:(id)a4;
- (void)sessionWasInterrupted:(id)a3;
- (void)unregisterObserverWithIdentifier:(id)a3;
@end

@implementation _InternalVisionSession

- (id)_initInternal
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#vision,_initInternal", buf, 2u);
  }

  v12.receiver = self;
  v12.super_class = _InternalVisionSession;
  v4 = [(_InternalVisionSession *)&v12 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.nearbyd.vision", v5);
    queue = v4->_queue;
    v4->_queue = v6;

    v8 = v4->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100256428;
    block[3] = &unk_10098BD28;
    v11 = v4;
    dispatch_sync(v8, block);
  }

  return v4;
}

+ (id)sharedInstance
{
  if (qword_1009F2628 != -1)
  {
    sub_1004B16A0();
  }

  v3 = qword_1009F2620;

  return v3;
}

- (void)registerObserver:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002565CC;
  block[3] = &unk_10099BB28;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)unregisterObserverWithIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10025676C;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_setUpARSession
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#vision,Set up ARSession", v8, 2u);
  }

  if (!self->_arSession)
  {
    if (&_MSNMonitorBeginException)
    {
      MSNMonitorBeginException();
    }

    v4 = objc_opt_new();
    arSession = self->_arSession;
    self->_arSession = v4;

    [(ARSession *)self->_arSession setDelegateQueue:self->_queue];
    [(ARSession *)self->_arSession _addObserver:self];
    v6 = self->_arSession;
    v7 = objc_alloc_init(ARWorldTrackingConfiguration);
    [(ARSession *)v6 runWithConfiguration:v7 options:1];
  }
}

- (void)_tearDownARSession
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#vision,Tear down ARSession", v6, 2u);
  }

  arSession = self->_arSession;
  if (arSession)
  {
    [(ARSession *)arSession pause];
    [(ARSession *)self->_arSession _removeObserver:self];
    v5 = self->_arSession;
    self->_arSession = 0;

    if (&_MSNMonitorEndException)
    {
      MSNMonitorEndException();
    }
  }
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100256AB4;
  v8[3] = &unk_10098A2E8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)sessionShouldAttemptRelocalization:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    __assert_rtn("[_InternalVisionSession sessionShouldAttemptRelocalization:completion:]", "NIServerVisionInternalSession.mm", 166, "completion");
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100256BA8;
  block[3] = &unk_10099CF08;
  v11 = v7;
  v9 = v7;
  dispatch_async(queue, block);
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v4 = a4;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004B16B4(v4, v5);
  }
}

- (void)sessionWasInterrupted:(id)a3
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#vision,Session was interrupted", v4, 2u);
  }
}

- (void)sessionInterruptionEnded:(id)a3
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#vision,Session interrupted ended", v4, 2u);
  }
}

- (void)session:(id)a3 didChangeState:(unint64_t)a4
{
  v4 = a4;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#vision,Session changed state: %d", v6, 8u);
  }
}

- (void)_handleARSessionDidUpdateFrame:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v33 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#vision,Updated ARFrame: %{private}@", buf, 0xCu);
  }

  v7 = [v5 camera];
  v8 = [v7 trackingState];

  if (v8 != 2)
  {
    v8 = v8 == 1;
  }

  v9 = [v5 worldTrackingState];
  v10 = v9 == 0;

  if (v10)
  {
    v14 = 0;
    v12 = 0;
  }

  else
  {
    v11 = [v5 worldTrackingState];
    v12 = [v11 majorRelocalization];

    v13 = [v5 worldTrackingState];
    v14 = [v13 minorRelocalization];
  }

  v15 = [NIVisionInput alloc];
  [v5 timestamp];
  v17 = v16;
  v18 = [v5 camera];
  [v18 transform];
  v30 = v20;
  v31 = v19;
  v28 = v22;
  v29 = v21;
  v23 = [v5 lightEstimate];
  if (v23)
  {
    v3 = [v5 lightEstimate];
    [v3 ambientIntensity];
    v25 = v24;
  }

  else
  {
    v25 = *&NIARLightEstimateNotAvailable;
  }

  v26 = [(NIVisionInput *)v15 initWithTimestamp:v8 devicePose:v12 trackingState:v14 lightEstimate:v17 majorRelocalization:v31 minorRelocalization:v30, v29, v28, v25];
  if (v23)
  {
  }

  v27 = +[NIServerVisionDataDistributor sharedProvider];
  [v27 processVisionInput:v26];
}

@end