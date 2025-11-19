@interface PDURLSessionProxyServerService
+ (id)sharedService;
- (PDURLSessionProxyServerService)init;
- (id)_onqueue_loggableDescriptionForMessage:(id)a3;
- (id)_onqueue_sourceApplicationForMessage:(id)a3;
- (int64_t)_onqueue_IDSTimoutForMessage:(id)a3;
- (void)_onqueue_remoteDeviceStartedUp;
- (void)dealloc;
- (void)proxyServerBecameInvalid:(id)a3;
- (void)releaseBTLinkAssertion;
- (void)releaseInfraWiFi;
- (void)retainBTLinkAssertion;
- (void)retainInfraWiFi;
- (void)start;
@end

@implementation PDURLSessionProxyServerService

- (void)proxyServerBecameInvalid:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000DF08;
  v5[3] = &unk_1000D6420;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(PDURLSessionProxyService *)self withWorkQueue:v5];
}

- (id)_onqueue_loggableDescriptionForMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 _nsurlsessionproxy_sessionIdentifier];
  v6 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = [v6 messageLoggableDescriptionForTaskWithIdentifier:{objc_msgSend(v4, "_nsurlsessionproxy_taskIdentifier")}];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PDURLSessionProxyServerService;
    v7 = [(PDURLSessionProxyService *)&v10 _onqueue_loggableDescriptionForMessage:v4];
  }

  v8 = v7;

  return v8;
}

- (int64_t)_onqueue_IDSTimoutForMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 _nsurlsessionproxy_sessionIdentifier];
  v6 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 IDSMessageTimeout];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PDURLSessionProxyServerService;
    v8 = [(PDURLSessionProxyService *)&v11 _onqueue_IDSTimoutForMessage:v4];
  }

  v9 = v8;

  return v9;
}

- (id)_onqueue_sourceApplicationForMessage:(id)a3
{
  v4 = [a3 _nsurlsessionproxy_sessionIdentifier];
  v5 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 sourceApplicationBundleIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_onqueue_remoteDeviceStartedUp
{
  [(NSMutableDictionary *)self->_sessions enumerateKeysAndObjectsUsingBlock:&stru_1000D5120];
  [(NSMutableDictionary *)self->_sessions removeAllObjects];
  v3.receiver = self;
  v3.super_class = PDURLSessionProxyServerService;
  [(PDURLSessionProxyService *)&v3 _onqueue_remoteDeviceStartedUp];
}

- (void)releaseBTLinkAssertion
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000EACC;
  v2[3] = &unk_1000D63D0;
  v2[4] = self;
  [(PDURLSessionProxyService *)self withWorkQueue:v2];
}

- (void)retainBTLinkAssertion
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000ECEC;
  v2[3] = &unk_1000D63D0;
  v2[4] = self;
  [(PDURLSessionProxyService *)self withWorkQueue:v2];
}

- (void)releaseInfraWiFi
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000F4B0;
  v2[3] = &unk_1000D63D0;
  v2[4] = self;
  [(PDURLSessionProxyService *)self withWorkQueue:v2];
}

- (void)retainInfraWiFi
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000F69C;
  v2[3] = &unk_1000D63D0;
  v2[4] = self;
  [(PDURLSessionProxyService *)self withWorkQueue:v2];
}

- (void)start
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000F7B8;
  v2[3] = &unk_1000D63D0;
  v2[4] = self;
  [NSURLSession _obliterateAllBackgroundSessionsWithCompletionHandler:v2];
}

- (void)dealloc
{
  infraWiFiTimer = self->_infraWiFiTimer;
  if (infraWiFiTimer)
  {
    dispatch_source_cancel(infraWiFiTimer);
  }

  btLinkAssertionTimer = self->_btLinkAssertionTimer;
  if (btLinkAssertionTimer)
  {
    dispatch_source_cancel(btLinkAssertionTimer);
  }

  v5.receiver = self;
  v5.super_class = PDURLSessionProxyServerService;
  [(PDURLSessionProxyServerService *)&v5 dealloc];
}

- (PDURLSessionProxyServerService)init
{
  v6.receiver = self;
  v6.super_class = PDURLSessionProxyServerService;
  v2 = [(PDURLSessionProxyService *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    sessions = v2->_sessions;
    v2->_sessions = v3;

    v2->_infraWiFiRetainCount = 0;
    v2->_btLinkAssertionRetainCount = 0;
  }

  return v2;
}

+ (id)sharedService
{
  if (qword_1000EB100 != -1)
  {
    dispatch_once(&qword_1000EB100, &stru_1000D50E0);
  }

  v3 = qword_1000EB0F8;

  return v3;
}

@end