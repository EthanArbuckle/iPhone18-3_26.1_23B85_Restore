@interface WiFiAIRAgent
+ (id)sharedInstance;
- (id)_initPrivate;
- (unint64_t)convertFromNWReliabilityMonitorResult:(unint64_t)a3;
- (void)_evaluationComplete:(unint64_t)a3;
- (void)_userInteractivityChangedCallback:(unint64_t)a3;
- (void)ingestLQMUpdate:(id)a3;
- (void)processRoamEvent:(__WiFiNetwork *)a3;
- (void)setWiFiManagerQueue:(id)a3;
- (void)terminateRequest;
- (void)waitForConfirmationWithTimeout:(__WiFiNetwork *)a3 withBssEnvironment:(signed __int16)a4 withMgrCallback:(id)a5;
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

- (void)setWiFiManagerQueue:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong(&self->_sharedMgrQueue, a3);
  }

  else
  {
    sub_1001383A0();
  }
}

- (void)_userInteractivityChangedCallback:(unint64_t)a3
{
  sharedMgrQueue = self->_sharedMgrQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100038C44;
  v4[3] = &unk_10025EA50;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(sharedMgrQueue, v4);
}

- (unint64_t)convertFromNWReliabilityMonitorResult:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1001CDFF8[a3 - 1];
  }
}

- (void)waitForConfirmationWithTimeout:(__WiFiNetwork *)a3 withBssEnvironment:(signed __int16)a4 withMgrCallback:(id)a5
{
  v8 = a5;
  v9 = [v8 copy];
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

  if ((a4 & 0xFFFD) != 4)
  {
    v21 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: not a multi-AP environment", "-[WiFiAIRAgent waitForConfirmationWithTimeout:withBssEnvironment:withMgrCallback:]"}];
    }

    objc_autoreleasePoolPop(v21);
    v19 = self;
    v20 = 3;
    goto LABEL_18;
  }

  v12 = +[WiFiUserInteractionMonitor sharedInstance];
  v13 = [v12 isRealTimeAppActive];

  if ((v13 & 1) == 0)
  {
    v22 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: no realtime app active", "-[WiFiAIRAgent waitForConfirmationWithTimeout:withBssEnvironment:withMgrCallback:]"}];
    }

    objc_autoreleasePoolPop(v22);
    v19 = self;
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
    v19 = self;
    v20 = 2;
LABEL_18:
    [(WiFiAIRAgent *)v19 _evaluationComplete:v20];
    goto LABEL_19;
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10003905C;
  v23[3] = &unk_10025EAB8;
  v23[4] = self;
  [(WiFiNWReliabilityMonitor *)v17 waitForNetworkToBeReliableWithTimeout:a3 withTimeout:60 withMgrCallback:v23];
LABEL_19:
}

- (void)terminateRequest
{
  [(WiFiNWReliabilityMonitor *)self->_monitor terminateNetworkReliabilityEvaluation];

  [(WiFiAIRAgent *)self _evaluationComplete:6];
}

- (void)_evaluationComplete:(unint64_t)a3
{
  if (self->_isEvalInProgress)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: AIR agent request complete with result:%lu", "-[WiFiAIRAgent _evaluationComplete:]", a3}];
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
      if (a3 != 6)
      {
        mgrCallback[2](mgrCallback, a3);
        mgrCallback = self->_mgrCallback;
      }

      self->_mgrCallback = 0;
    }
  }
}

- (void)processRoamEvent:(__WiFiNetwork *)a3
{
  if ([(WiFiAIRAgent *)self isInterfaceRankingInProgress])
  {
    monitor = self->_monitor;
    if (monitor)
    {

      [(WiFiNWReliabilityMonitor *)monitor processRoamEvent:a3];
    }
  }
}

- (void)ingestLQMUpdate:(id)a3
{
  v5 = a3;
  if ([(WiFiAIRAgent *)self isInterfaceRankingInProgress])
  {
    monitor = self->_monitor;
    if (monitor)
    {
      [(WiFiNWReliabilityMonitor *)monitor ingestLQMUpdate:v5];
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