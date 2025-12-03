@interface W5WiFiConnectionMonitor
- (W5WiFiConnectionMonitor)initWithStatusManager:(id)manager diagnosticsManager:(id)diagnosticsManager;
- (id)__followupTests;
- (id)__initialTests;
- (void)__runDiagnosticsTests:(id)tests reply:(id)reply;
- (void)dealloc;
- (void)pauseMonitoring;
- (void)resumeMonitoringAfterDelay:(double)delay;
- (void)setDroppedWiFiConnectionCallback:(id)callback;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation W5WiFiConnectionMonitor

- (W5WiFiConnectionMonitor)initWithStatusManager:(id)manager diagnosticsManager:(id)diagnosticsManager
{
  v12.receiver = self;
  v12.super_class = W5WiFiConnectionMonitor;
  v6 = [(W5WiFiConnectionMonitor *)&v12 init];
  v7 = v6;
  if (manager && v6 && (v6->_status = manager, diagnosticsManager))
  {
    v7->_diagnostics = diagnosticsManager;
    v8 = dispatch_queue_create("com.apple.wifivelocity.wifi-conn-monitor", 0);
    v7->_queue = v8;
    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v8);
    v7->_pingTimer = v9;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000365D8;
    handler[3] = &unk_1000E1CE8;
    handler[4] = v7;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_source_set_timer(v7->_pingTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(v7->_pingTimer);
  }

  else
  {

    return 0;
  }

  return v7;
}

- (void)dealloc
{
  pingTimer = self->_pingTimer;
  if (pingTimer)
  {
    dispatch_source_cancel(pingTimer);
    dispatch_release(self->_pingTimer);
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  v5.receiver = self;
  v5.super_class = W5WiFiConnectionMonitor;
  [(W5WiFiConnectionMonitor *)&v5 dealloc];
}

- (void)setDroppedWiFiConnectionCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_droppedWiFiConnectionCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100036C68;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

- (void)__runDiagnosticsTests:(id)tests reply:(id)reply
{
  v7 = objc_alloc_init(W5DiagnosticsTestRequestInternal);
  [(W5DiagnosticsTestRequestInternal *)v7 setUuid:+[NSUUID UUID]];
  [(W5DiagnosticsTestRequestInternal *)v7 setTestRequests:tests];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100036D90;
  v8[3] = &unk_1000E2400;
  v8[4] = self;
  v8[5] = reply;
  [(W5DiagnosticsTestRequestInternal *)v7 setReply:v8];
  [(W5DiagnosticsManager *)self->_diagnostics addRequest:v7];
}

- (id)__initialTests
{
  v3[1] = [W5DiagnosticsTestRequest requestWithTestID:3 configuration:0, [W5DiagnosticsTestRequest requestWithTestID:52 configuration:0]];
  v3[2] = [W5DiagnosticsTestRequest requestWithTestID:6 configuration:0];
  v3[3] = [W5DiagnosticsTestRequest requestWithTestID:7 configuration:0];
  v3[4] = [W5DiagnosticsTestRequest requestWithTestID:9 configuration:0];
  v3[5] = [W5DiagnosticsTestRequest requestWithTestID:11 configuration:0];
  v3[6] = [W5DiagnosticsTestRequest requestWithTestID:32 configuration:0];
  return [NSArray arrayWithObjects:v3 count:7];
}

- (id)__followupTests
{
  v3[0] = [W5DiagnosticsTestRequest requestWithTestID:52 configuration:0];
  v3[1] = [W5DiagnosticsTestRequest requestWithTestID:3 configuration:0];
  v3[2] = [W5DiagnosticsTestRequest requestWithTestID:6 configuration:0];
  v3[3] = [W5DiagnosticsTestRequest requestWithTestID:7 configuration:0];
  v3[4] = [W5DiagnosticsTestRequest requestWithTestID:9 configuration:0];
  v3[5] = [W5DiagnosticsTestRequest requestWithTestID:11 configuration:0];
  v3[6] = [W5DiagnosticsTestRequest requestWithTestID:24 configuration:0];
  v3[7] = [W5DiagnosticsTestRequest requestWithTestID:32 configuration:0];
  return [NSArray arrayWithObjects:v3 count:8];
}

- (void)startMonitoring
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037270;
  block[3] = &unk_1000E1CE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopMonitoring
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037350;
  block[3] = &unk_1000E1CE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)pauseMonitoring
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037430;
  block[3] = &unk_1000E1CE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)resumeMonitoringAfterDelay:(double)delay
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003750C;
  v4[3] = &unk_1000E2558;
  v4[4] = self;
  *&v4[5] = delay;
  dispatch_async(queue, v4);
}

@end