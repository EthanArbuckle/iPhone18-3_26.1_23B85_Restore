@interface _DASSmartPowerNapMonitor
+ (id)sharedMonitorWithDaemon:(id)a3;
- (_DASSmartPowerNapMonitor)initWithDaemon:(id)a3;
- (void)handleSmartPowerNapNotification:(unsigned __int8)a3;
- (void)registerForSmartPowerNapNotifications;
@end

@implementation _DASSmartPowerNapMonitor

- (void)handleSmartPowerNapNotification:(unsigned __int8)a3
{
  if (self->_currentState != a3)
  {
    self->_currentState = a3;
    daemon = self->_daemon;
    if (a3 == 1)
    {
      v5 = @"Entered SmartPowerNap";
    }

    else
    {
      v5 = @"Exit SmartPowerNap";
    }

    [(_DASDaemon *)daemon evaluateScoreAndRunAllActivitiesForReason:v5];
    v6 = +[_DASSystemConditionsRecorder sharedInstance];
    [v6 recordPowerManagementStatus];
  }
}

- (void)registerForSmartPowerNapNotifications
{
  v3 = objc_alloc_init(_PMCoreSmartPowerNap);
  smartPowerNapMonitor = self->_smartPowerNapMonitor;
  self->_smartPowerNapMonitor = v3;

  v5 = self->_smartPowerNapMonitor;
  if (v5)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100047CB0;
    v7[3] = &unk_1001B64B8;
    v7[4] = self;
    [(_PMCoreSmartPowerNap *)v5 registerWithCallback:queue callback:v7];
  }
}

- (_DASSmartPowerNapMonitor)initWithDaemon:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _DASSmartPowerNapMonitor;
  v6 = [(_DASSmartPowerNapMonitor *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_daemon, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.duetactivityscheduler.smartpowernapmonitor", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    [(_DASSmartPowerNapMonitor *)v7 registerForSmartPowerNapNotifications];
  }

  return v7;
}

+ (id)sharedMonitorWithDaemon:(id)a3
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100047E2C;
  v9[3] = &unk_1001B6250;
  v10 = a3;
  v11 = a1;
  v4 = qword_10020B0B8;
  v5 = v10;
  if (v4 != -1)
  {
    dispatch_once(&qword_10020B0B8, v9);
  }

  v6 = qword_10020B0C0;
  v7 = qword_10020B0C0;

  return v6;
}

@end