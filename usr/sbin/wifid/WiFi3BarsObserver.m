@interface WiFi3BarsObserver
+ (id)sharedWiFi3BarsObserver;
- (WiFi3BarsObserver)init;
- (void)_cleanupMaintenanceTask;
- (void)_installDeferMonitorForActivity:(id)a3 proxy:(id)a4;
- (void)dealloc;
- (void)fetch3BarsNetworksForLocation:(id)a3;
- (void)forceFetch3BarsNetworkMatchingBSSID:(id)a3 completionHandler:(id)a4;
- (void)prune3BarsNetworks:(unint64_t)a3;
- (void)run3BarsObserver:(void *)a3 withActivity:(id)a4 withCompletion:(id)a5;
@end

@implementation WiFi3BarsObserver

+ (id)sharedWiFi3BarsObserver
{
  v2 = objc_autoreleasePoolPush();
  if (qword_100298B40 != -1)
  {
    sub_1001AEE28();
  }

  v3 = qword_100298B38;
  objc_autoreleasePoolPop(v2);
  return v3;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connectionToService invalidate];
  dispatch_release(self->_timerQueue);
  v3.receiver = self;
  v3.super_class = WiFi3BarsObserver;
  [(WiFi3BarsObserver *)&v3 dealloc];
}

- (void)_installDeferMonitorForActivity:(id)a3 proxy:(id)a4
{
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_timerQueue);
  self->_timer = v7;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100119A3C;
  handler[3] = &unk_10025ED68;
  handler[4] = self;
  dispatch_source_set_cancel_handler(v7, handler);
  self->_activityStartTimestamp = +[NSDate date];
  timer = self->_timer;
  v9 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(timer, v9, 0x12A05F200uLL, 0x12A05F200uLL);
  v10 = self->_timer;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100119A70;
  v11[3] = &unk_100262558;
  v11[4] = self;
  v11[5] = a4;
  v11[6] = a3;
  dispatch_source_set_event_handler(v10, v11);
  dispatch_resume(self->_timer);
}

- (void)_cleanupMaintenanceTask
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: cleaning maintenance task", "-[WiFi3BarsObserver _cleanupMaintenanceTask]"}];
  }

  objc_autoreleasePoolPop(v3);
  timer = self->_timer;
  if (timer)
  {

    dispatch_source_cancel(timer);
  }
}

- (void)fetch3BarsNetworksForLocation:(id)a3
{
  v4 = [(NSXPCConnection *)self->_connectionToService remoteObjectProxyWithErrorHandler:&stru_1002633A8];
  if (v4)
  {

    [v4 fetch3BarsNetworksForLocation:a3];
  }
}

- (void)prune3BarsNetworks:(unint64_t)a3
{
  v4 = [(NSXPCConnection *)self->_connectionToService remoteObjectProxyWithErrorHandler:&stru_1002633C8];
  if (v4)
  {

    [v4 prune3BarsNetworks:a3];
  }
}

- (void)forceFetch3BarsNetworkMatchingBSSID:(id)a3 completionHandler:(id)a4
{
  v6 = [(NSXPCConnection *)self->_connectionToService remoteObjectProxyWithErrorHandler:&stru_1002633E8];
  if (v6)
  {

    [v6 forceFetch3BarsNetworkMatchingBSSID:a3 completionHandler:a4];
  }
}

- (WiFi3BarsObserver)init
{
  v7.receiver = self;
  v7.super_class = WiFi3BarsObserver;
  v2 = [(WiFi3BarsObserver *)&v7 init];
  if (v2)
  {
    v3 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.wifi.ThreeBarsXPCService"];
    v2->_connectionToService = v3;
    if (v3)
    {
      [(NSXPCConnection *)v2->_connectionToService setRemoteObjectInterface:[NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TBXPCServiceProtocol]];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1001196AC;
      v6[3] = &unk_10025ED68;
      v6[4] = v2;
      [(NSXPCConnection *)v2->_connectionToService setInvalidationHandler:v6];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1001197A4;
      v5[3] = &unk_10025ED68;
      v5[4] = v2;
      [(NSXPCConnection *)v2->_connectionToService setInterruptionHandler:v5];
      [(NSXPCConnection *)v2->_connectionToService resume];
      v2->_timerQueue = dispatch_queue_create("com.apple.wifid.3BarsObserverTimer", 0);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

- (void)run3BarsObserver:(void *)a3 withActivity:(id)a4 withCompletion:(id)a5
{
  if (!sub_100076C24(a3))
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: availability engine is not enabled", "-[WiFi3BarsObserver run3BarsObserver:withActivity:withCompletion:]"}];
    }

    v9 = 0;
LABEL_13:
    objc_autoreleasePoolPop(v13);
    (*(a5 + 2))(a5, 0);
    if (!v9)
    {
      return;
    }

    goto LABEL_6;
  }

  v9 = sub_10000FB4C(a3);
  if (!sub_10008653C(a3, v9))
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: location not valid", "-[WiFi3BarsObserver run3BarsObserver:withActivity:withCompletion:]"}];
    }

    goto LABEL_13;
  }

  connectionToService = self->_connectionToService;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100119C04;
  v15[3] = &unk_100263340;
  v15[4] = a5;
  v11 = [(NSXPCConnection *)connectionToService remoteObjectProxyWithErrorHandler:v15];
  if (v11)
  {
    v12 = v11;
    [(WiFi3BarsObserver *)self _installDeferMonitorForActivity:a4 proxy:v11];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100119C94;
    v14[3] = &unk_100263368;
    v14[4] = self;
    v14[5] = a5;
    [v12 maintenanceTask:104857600 location:v9 predictedForDuration:1 maxPredictedLocations:v14 completionHandler:86400.0];
  }

  if (v9)
  {
LABEL_6:
    CFRelease(v9);
  }
}

@end