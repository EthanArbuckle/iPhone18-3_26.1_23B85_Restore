@interface WiFiNWReliabilityMonitor
- (WiFiNWReliabilityMonitor)initWithManagerQueue:(id)queue;
- (void)_cleanup;
- (void)_evaluationComplete:(unint64_t)complete;
- (void)dealloc;
- (void)ingestLQMUpdate:(id)update;
- (void)processRoamEvent:(__WiFiNetwork *)event;
- (void)waitForNetworkToBeReliableWithTimeout:(__WiFiNetwork *)timeout withTimeout:(unint64_t)withTimeout withMgrCallback:(id)callback;
@end

@implementation WiFiNWReliabilityMonitor

- (WiFiNWReliabilityMonitor)initWithManagerQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = WiFiNWReliabilityMonitor;
  v6 = [(WiFiNWReliabilityMonitor *)&v11 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_sharedMgrQueue, queue);
  if (!v7->_sharedMgrQueue || (v7->_metrics = 1, *&v7->_isEvalInProgress = 0, +[NSMutableArray array], v8 = objc_claimAutoreleasedReturnValue(), sessions = v7->_sessions, v7->_sessions = v8, sessions, !v7->_sessions))
  {
LABEL_4:

    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(WiFiNWReliabilityMonitor *)self _cleanup];
  v3.receiver = self;
  v3.super_class = WiFiNWReliabilityMonitor;
  [(WiFiNWReliabilityMonitor *)&v3 dealloc];
}

- (void)waitForNetworkToBeReliableWithTimeout:(__WiFiNetwork *)timeout withTimeout:(unint64_t)withTimeout withMgrCallback:(id)callback
{
  callbackCopy = callback;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v9 = [callbackCopy copy];
  mgrCallback = self->_mgrCallback;
  self->_mgrCallback = v9;

  self->_isEvalInProgress = 1;
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: kickstarting network reliability learning", "-[WiFiNWReliabilityMonitor waitForNetworkToBeReliableWithTimeout:withTimeout:withMgrCallback:]"}];
  }

  objc_autoreleasePoolPop(v11);
  v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_sharedMgrQueue);
  timer = self->_timer;
  self->_timer = v12;

  v14 = self->_timer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100037FD0;
  handler[3] = &unk_10025E9B8;
  handler[4] = self;
  dispatch_source_set_cancel_handler(v14, handler);
  v15 = [[WiFiNWReliabilityMonitorSession alloc] initWithNetworkRecord:timeout withMetrics:self->_metrics withMaxSamples:20 withMinSampleThresh:16];
  if (v15)
  {
    [(NSMutableArray *)self->_sessions insertObject:v15 atIndex:0];
    objc_storeStrong(&self->_activeSession, v15);
    v16 = +[NSDate date];
    learningStartTimestamp = self->_learningStartTimestamp;
    self->_learningStartTimestamp = v16;

    v18 = self->_timer;
    v19 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v18, v19, 0x2540BE400uLL, 0xE8D4A51000uLL);
    v20 = self->_timer;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100037FE0;
    v21[3] = &unk_10025E9E0;
    v21[4] = self;
    v21[5] = &v23;
    v21[6] = withTimeout;
    dispatch_source_set_event_handler(v20, v21);
    dispatch_resume(self->_timer);
  }

  else
  {
    v24[3] = 2;
    [(WiFiNWReliabilityMonitor *)self _evaluationComplete:2];
  }

  _Block_object_dispose(&v23, 8);
}

- (void)_cleanup
{
  if (self->_isEvalInProgress)
  {
    self->_isEvalInProgress = 0;
    timer = self->_timer;
    if (timer)
    {
      dispatch_source_cancel(timer);
    }

    [(NSMutableArray *)self->_sessions removeAllObjects];
    activeSession = self->_activeSession;
    if (activeSession)
    {
      self->_activeSession = 0;
    }
  }
}

- (void)_evaluationComplete:(unint64_t)complete
{
  if (self->_isEvalInProgress)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: network reliability evaluation complete with result:%lu", "-[WiFiNWReliabilityMonitor _evaluationComplete:]", complete}];
    }

    objc_autoreleasePoolPop(v6);
    [(WiFiNWReliabilityMonitor *)self _cleanup];
    mgrCallback = self->_mgrCallback;
    if (complete != 3 && mgrCallback)
    {
      mgrCallback[2](mgrCallback, complete);
      mgrCallback = self->_mgrCallback;
    }

    self->_mgrCallback = 0;
  }
}

- (void)processRoamEvent:(__WiFiNetwork *)event
{
  if (self->_isEvalInProgress)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: received roam event", "-[WiFiNWReliabilityMonitor processRoamEvent:]"}];
    }

    objc_autoreleasePoolPop(v6);
    activeSession = self->_activeSession;
    self->_activeSession = 0;

    v8 = [[WiFiNWReliabilityMonitorSession alloc] initWithNetworkRecord:event withMetrics:self->_metrics withMaxSamples:20 withMinSampleThresh:16];
    if (v8)
    {
      obj = v8;
      [(NSMutableArray *)self->_sessions insertObject:v8 atIndex:0];
      objc_storeStrong(&self->_activeSession, obj);
      self->_isRoamHappended = 1;
    }

    _objc_release_x2();
  }
}

- (void)ingestLQMUpdate:(id)update
{
  updateCopy = update;
  v5 = updateCopy;
  if (self->_isEvalInProgress)
  {
    activeSession = self->_activeSession;
    v8 = v5;
    if (activeSession)
    {
      updateCopy = [(WiFiNWReliabilityMonitorSession *)activeSession ingestLQMUpdate:v5];
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: active session is null, unexpected", "-[WiFiNWReliabilityMonitor ingestLQMUpdate:]"}];
      }

      objc_autoreleasePoolPop(v7);
    }

    v5 = v8;
  }

  _objc_release_x1(updateCopy, v5);
}

@end