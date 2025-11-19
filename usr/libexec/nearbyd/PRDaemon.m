@interface PRDaemon
- (PRDaemon)init;
- (void)checkForUnlockSinceBoot;
- (void)deviceHasUnlockedSinceBoot;
- (void)run;
- (void)startServices;
@end

@implementation PRDaemon

- (PRDaemon)init
{
  v7.receiver = self;
  v7.super_class = PRDaemon;
  v2 = [(PRDaemon *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.nearbyd.eventQueue", 0);
    eventQueue = v2->_eventQueue;
    v2->_eventQueue = v3;

    v5 = sub_10035D02C();
    v8[0] = off_10098BD58;
    v8[3] = v8;
    sub_10035D0C8(v5, v8);
    sub_10005280C(v8);
  }

  return v2;
}

- (void)run
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PRDaemon] run", buf, 2u);
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[PRDaemon] registering for iokit xpc events", v9, 2u);
  }

  xpc_set_event_stream_handler("com.apple.iokit.matching", self->_eventQueue, &stru_10098BCC0);
  [(PRDaemon *)self checkForUnlockSinceBoot];
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[PRDaemon] registering for notifyd xpc events", v8, 2u);
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", self->_eventQueue, &stru_10098BCE0);
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PRDaemon] registering for CBDiscovery xpc events", v7, 2u);
  }

  xpc_set_event_stream_handler("com.apple.bluetooth.discovery", self->_eventQueue, &stru_10098BD00);
  [(PRDaemon *)self startServices];
}

- (void)startServices
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PRDaemon] starting services", v8, 2u);
  }

  v4 = [[PRBSTActivityManager alloc] initWithQueue:self->_eventQueue];
  bstActivityManager = self->_bstActivityManager;
  self->_bstActivityManager = v4;

  v6 = objc_alloc_init(PRXPCServicesManager);
  xpcManager = self->_xpcManager;
  self->_xpcManager = v6;

  [(PRXPCServicesManager *)self->_xpcManager startServices];
}

- (void)checkForUnlockSinceBoot
{
  eventQueue = self->_eventQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005C044;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_sync(eventQueue, block);
}

- (void)deviceHasUnlockedSinceBoot
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005C2B8;
  block[3] = &unk_10098BD28;
  block[4] = self;
  if (qword_1009ED0E0 != -1)
  {
    dispatch_once(&qword_1009ED0E0, block);
  }
}

@end