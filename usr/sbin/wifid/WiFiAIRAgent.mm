@interface WiFiAIRAgent
+ (id)sharedInstance;
- (id)_initPrivate;
- (unint64_t)convertFromNWReliabilityMonitorResult:(unint64_t)result;
- (void)_evaluationComplete:(unint64_t)complete;
- (void)_userInteractivityChangedCallback:(unint64_t)callback;
- (void)ingestLQMUpdate:(id)update;
- (void)processRoamEvent:(__WiFiNetwork *)event;
- (void)setWiFiManagerQueue:(id)queue;
- (void)terminateRequest;
- (void)waitForConfirmationWithTimeout:(__WiFiNetwork *)timeout withBssEnvironment:(signed __int16)environment withMgrCallback:(id)callback;
@end

@implementation WiFiAIRAgent

+ (id)sharedInstance
{
  if (_os_feature_enabled_impl())
  {
    v2 = +[WiFiUserInteractionMonitor sharedInstance];

    if (v2)
    {
      if (qword_100298450 != -1)
      {
        dispatch_once(&qword_100298450, &stru_10025EA28);
      }
    }
  }

  v3 = qword_100298458;

  return v3;
}

- (void)setWiFiManagerQueue:(id)queue
{
  queueCopy = queue;
  if (queueCopy)
  {
    objc_storeStrong(&self->_sharedMgrQueue, queue);
  }

  else
  {
    sub_1001383A0();
  }
}

- (void)_userInteractivityChangedCallback:(unint64_t)callback
{
  sharedMgrQueue = self->_sharedMgrQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100038C44;
  v4[3] = &unk_10025EA50;
  v4[4] = self;
  v4[5] = callback;
  dispatch_async(sharedMgrQueue, v4);
}

- (unint64_t)convertFromNWReliabilityMonitorResult:(unint64_t)result
{
  if (result - 1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1001CDFF8[result - 1];
  }
}

- (void)waitForConfirmationWithTimeout:(__WiFiNetwork *)timeout withBssEnvironment:(signed __int16)environment withMgrCallback:(id)callback
{
  callbackCopy = callback;
  v9 = [callbackCopy copy];
  mgrCallback = self->_mgrCallback;
  self->_mgrCallback = v9;

  self->_isEvalInProgress = 1;
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: AIR agent received a request", "-[WiFiAIRAgent waitForConfirmationWithTimeout:withBssEnvironment:withMgrCallback:]"}];
  }

  objc_autoreleasePoolPop(v11);
  if (!self->_sharedMgrQueue)
  {
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: managerQueue is not SET", "-[WiFiAIRAgent waitForConfirmationWithTimeout:withBssEnvironment:withMgrCallback:]"}];
    }

    objc_autoreleasePoolPop(v18);
    goto LABEL_11;
  }

  if ((environment & 0xFFFD) != 4)
  {
    v21 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: not a multi-AP environment", "-[WiFiAIRAgent waitForConfirmationWithTimeout:withBssEnvironment:withMgrCallback:]"}];
    }

    objc_autoreleasePoolPop(v21);
    selfCopy3 = self;
    v20 = 3;
    goto LABEL_18;
  }

  v12 = +[WiFiUserInteractionMonitor sharedInstance];
  isRealTimeAppActive = [v12 isRealTimeAppActive];

  if ((isRealTimeAppActive & 1) == 0)
  {
    v22 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: no realtime app active", "-[WiFiAIRAgent waitForConfirmationWithTimeout:withBssEnvironment:withMgrCallback:]"}];
    }

    objc_autoreleasePoolPop(v22);
    selfCopy3 = self;
    v20 = 4;
    goto LABEL_18;
  }

  v14 = +[WiFiUserInteractionMonitor sharedInstance];
  [v14 registerStateChangeCallback:&stru_10025EA90 withCallbackContext:self];

  self->_cbRegisteredWithUserActivity = 1;
  v15 = [[WiFiNWReliabilityMonitor alloc] initWithManagerQueue:self->_sharedMgrQueue];
  monitor = self->_monitor;
  self->_monitor = v15;

  v17 = self->_monitor;
  if (!v17)
  {
LABEL_11:
    selfCopy3 = self;
    v20 = 2;
LABEL_18:
    [(WiFiAIRAgent *)selfCopy3 _evaluationComplete:v20];
    goto LABEL_19;
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10003905C;
  v23[3] = &unk_10025EAB8;
  v23[4] = self;
  [(WiFiNWReliabilityMonitor *)v17 waitForNetworkToBeReliableWithTimeout:timeout withTimeout:60 withMgrCallback:v23];
LABEL_19:
}

- (void)terminateRequest
{
  [(WiFiNWReliabilityMonitor *)self->_monitor terminateNetworkReliabilityEvaluation];

  [(WiFiAIRAgent *)self _evaluationComplete:6];
}

- (void)_evaluationComplete:(unint64_t)complete
{
  if (self->_isEvalInProgress)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: AIR agent request complete with result:%lu", "-[WiFiAIRAgent _evaluationComplete:]", complete}];
    }

    objc_autoreleasePoolPop(v5);
    self->_isEvalInProgress = 0;
    if (self->_cbRegisteredWithUserActivity)
    {
      v6 = +[WiFiUserInteractionMonitor sharedInstance];
      [v6 unregisterStateChangeCallback:self];

      self->_cbRegisteredWithUserActivity = 0;
    }

    monitor = self->_monitor;
    if (monitor)
    {
      self->_monitor = 0;
    }

    mgrCallback = self->_mgrCallback;
    if (mgrCallback)
    {
      if (complete != 6)
      {
        mgrCallback[2](mgrCallback, complete);
        mgrCallback = self->_mgrCallback;
      }

      self->_mgrCallback = 0;
    }
  }
}

- (void)processRoamEvent:(__WiFiNetwork *)event
{
  if ([(WiFiAIRAgent *)self isInterfaceRankingInProgress])
  {
    monitor = self->_monitor;
    if (monitor)
    {

      [(WiFiNWReliabilityMonitor *)monitor processRoamEvent:event];
    }
  }
}

- (void)ingestLQMUpdate:(id)update
{
  updateCopy = update;
  if ([(WiFiAIRAgent *)self isInterfaceRankingInProgress])
  {
    monitor = self->_monitor;
    if (monitor)
    {
      [(WiFiNWReliabilityMonitor *)monitor ingestLQMUpdate:updateCopy];
    }
  }
}

- (id)_initPrivate
{
  v3.receiver = self;
  v3.super_class = WiFiAIRAgent;
  result = [(WiFiAIRAgent *)&v3 init];
  if (result)
  {
    *(result + 12) = 0;
  }

  return result;
}

@end