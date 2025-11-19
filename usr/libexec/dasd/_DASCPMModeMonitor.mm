@interface _DASCPMModeMonitor
+ (id)sharedMonitor;
- (_DASCPMModeMonitor)init;
- (void)queue_handleMode:(id)a3 updatedToState:(BOOL)a4;
- (void)registerForContextualPowerBudgets;
- (void)registerForModeChanges;
@end

@implementation _DASCPMModeMonitor

- (_DASCPMModeMonitor)init
{
  v7.receiver = self;
  v7.super_class = _DASCPMModeMonitor;
  v2 = [(_DASCPMModeMonitor *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.dasd.cpmModesMonitorQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    [(_DASCPMModeMonitor *)v2 registerForModeChanges];
    [(_DASCPMModeMonitor *)v2 registerForContextualPowerBudgets];
  }

  return v2;
}

+ (id)sharedMonitor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B438;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020ADB0 != -1)
  {
    dispatch_once(&qword_10020ADB0, block);
  }

  v2 = qword_10020ADB8;

  return v2;
}

- (void)registerForModeChanges
{
  v3 = objc_alloc_init(ContextualPowerModesClient);
  cpmClient = self->_cpmClient;
  self->_cpmClient = v3;

  v5 = self->_cpmClient;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000B514;
  v7[3] = &unk_1001B54C8;
  v7[4] = self;
  [(ContextualPowerModesClient *)v5 registerWithIdentifier:@"com.apple.dasd" queue:queue callback:v7];
}

- (void)queue_handleMode:(id)a3 updatedToState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [_DASDaemonLogger logForCategory:@"cpmModes"];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10011BC5C(v6, v4, v7);
  }

  if (v6)
  {
    v8 = [(_DASCPMModeMonitor *)self currentMode];
    v9 = v8;
    if (v4)
    {
      if (v8)
      {
        v10 = [(_DASCPMModeMonitor *)self currentMode];
        v11 = [v10 isEqualToString:v6] ^ 1;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = [v8 isEqualToString:v6];
    }

    v12 = [(_DASCPMModeMonitor *)self currentMode];
    v13 = [v12 isEqual:v6];

    if (!v13 || v4)
    {
      if (!v4)
      {
        goto LABEL_15;
      }

      v14 = self;
      v15 = v6;
    }

    else
    {
      v14 = self;
      v15 = 0;
    }

    [(_DASCPMModeMonitor *)v14 setCurrentMode:v15];
LABEL_15:
    if (v11)
    {
      v16 = +[_DASDaemon sharedInstance];
      v18 = @"com.apple.das.cpm.modeChanged";
      v17 = [NSArray arrayWithObjects:&v18 count:1];
      [v16 handleTriggersBatched:v17];
    }
  }
}

- (void)registerForContextualPowerBudgets
{
  v3 = objc_alloc_init(ContextualPowerTargetsClient);
  cpmPowerTargetsClient = self->_cpmPowerTargetsClient;
  self->_cpmPowerTargetsClient = v3;

  v5 = self->_cpmPowerTargetsClient;
  queue = self->_queue;

  [(ContextualPowerTargetsClient *)v5 registerWithIdentifier:@"com.apple.dasd" queue:queue callback:&stru_1001B5508];
}

@end