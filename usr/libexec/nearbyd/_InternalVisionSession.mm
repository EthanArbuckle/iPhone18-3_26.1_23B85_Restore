@interface _InternalVisionSession
+ (id)sharedInstance;
- (id)_initInternal;
- (void)_handleARSessionDidUpdateFrame:(id)frame;
- (void)_setUpARSession;
- (void)_tearDownARSession;
- (void)registerObserver:(id)observer withIdentifier:(id)identifier;
- (void)session:(id)session didChangeState:(unint64_t)state;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)sessionInterruptionEnded:(id)ended;
- (void)sessionShouldAttemptRelocalization:(id)relocalization completion:(id)completion;
- (void)sessionWasInterrupted:(id)interrupted;
- (void)unregisterObserverWithIdentifier:(id)identifier;
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

- (void)registerObserver:(id)observer withIdentifier:(id)identifier
{
  observerCopy = observer;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002565CC;
  block[3] = &unk_10099BB28;
  block[4] = self;
  v12 = observerCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = observerCopy;
  dispatch_sync(queue, block);
}

- (void)unregisterObserverWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10025676C;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
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

- (void)session:(id)session didUpdateFrame:(id)frame
{
  frameCopy = frame;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100256AB4;
  v8[3] = &unk_10098A2E8;
  v8[4] = self;
  v9 = frameCopy;
  v7 = frameCopy;
  dispatch_async(queue, v8);
}

- (void)sessionShouldAttemptRelocalization:(id)relocalization completion:(id)completion
{
  relocalizationCopy = relocalization;
  completionCopy = completion;
  if (!completionCopy)
  {
    __assert_rtn("[_InternalVisionSession sessionShouldAttemptRelocalization:completion:]", "NIServerVisionInternalSession.mm", 166, "completion");
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100256BA8;
  block[3] = &unk_10099CF08;
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_async(queue, block);
}

- (void)session:(id)session didFailWithError:(id)error
{
  errorCopy = error;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004B16B4(errorCopy, v5);
  }
}

- (void)sessionWasInterrupted:(id)interrupted
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#vision,Session was interrupted", v4, 2u);
  }
}

- (void)sessionInterruptionEnded:(id)ended
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#vision,Session interrupted ended", v4, 2u);
  }
}

- (void)session:(id)session didChangeState:(unint64_t)state
{
  stateCopy = state;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = stateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#vision,Session changed state: %d", v6, 8u);
  }
}

- (void)_handleARSessionDidUpdateFrame:(id)frame
{
  frameCopy = frame;
  dispatch_assert_queue_V2(self->_queue);
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v33 = frameCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#vision,Updated ARFrame: %{private}@", buf, 0xCu);
  }

  camera = [frameCopy camera];
  trackingState = [camera trackingState];

  if (trackingState != 2)
  {
    trackingState = trackingState == 1;
  }

  worldTrackingState = [frameCopy worldTrackingState];
  v10 = worldTrackingState == 0;

  if (v10)
  {
    minorRelocalization = 0;
    majorRelocalization = 0;
  }

  else
  {
    worldTrackingState2 = [frameCopy worldTrackingState];
    majorRelocalization = [worldTrackingState2 majorRelocalization];

    worldTrackingState3 = [frameCopy worldTrackingState];
    minorRelocalization = [worldTrackingState3 minorRelocalization];
  }

  v15 = [NIVisionInput alloc];
  [frameCopy timestamp];
  v17 = v16;
  camera2 = [frameCopy camera];
  [camera2 transform];
  v30 = v20;
  v31 = v19;
  v28 = v22;
  v29 = v21;
  lightEstimate = [frameCopy lightEstimate];
  if (lightEstimate)
  {
    lightEstimate2 = [frameCopy lightEstimate];
    [lightEstimate2 ambientIntensity];
    v25 = v24;
  }

  else
  {
    v25 = *&NIARLightEstimateNotAvailable;
  }

  v26 = [(NIVisionInput *)v15 initWithTimestamp:trackingState devicePose:majorRelocalization trackingState:minorRelocalization lightEstimate:v17 majorRelocalization:v31 minorRelocalization:v30, v29, v28, v25];
  if (lightEstimate)
  {
  }

  v27 = +[NIServerVisionDataDistributor sharedProvider];
  [v27 processVisionInput:v26];
}

@end