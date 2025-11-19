@interface CentauriDaemon
+ (BOOL)configureTempDirectory;
+ (BOOL)shouldDisableDaemon;
+ (int64_t)powerStatsTaskInterval;
+ (void)handleSignal:(int)a3;
+ (void)setupSignalHandlers;
- (CentauriDaemon)init;
- (void)_run;
- (void)dealloc;
- (void)log;
- (void)run;
- (void)runBackgroundTaskWithIdentifier:(id)a3 completion:(id)a4;
@end

@implementation CentauriDaemon

- (CentauriDaemon)init
{
  v4 = [objc_opt_class() configureTempDirectory];
  v5 = sub_100025204();
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    sub_1000287D4(v5, self, a2);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    *buf = 138543618;
    v27 = v7;
    v28 = 2114;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: Centauri daemon starting", buf, 0x16u);
  }

  v9 = sub_100025204();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [objc_opt_class() description];
    v11 = NSStringFromSelector(a2);
    v12 = sub_10002529C();
    v13 = "no";
    *buf = 138543874;
    v27 = v10;
    if (v12)
    {
      v13 = "yes";
    }

    v28 = 2114;
    v29 = v11;
    v30 = 2080;
    v31 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: internal build: %s", buf, 0x20u);
  }

  v25.receiver = self;
  v25.super_class = CentauriDaemon;
  v14 = [(CentauriDaemon *)&v25 init];
  if (v14)
  {
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.centaurid", v15);
    dispatchQueue = v14->_dispatchQueue;
    v14->_dispatchQueue = v16;

    v18 = [[ChipManager alloc] initWithQueue:v14->_dispatchQueue];
    chipManager = v14->_chipManager;
    v14->_chipManager = v18;

    v20 = [[XPCServer alloc] initWithChipManager:v14->_chipManager];
    xpcServer = v14->_xpcServer;
    v14->_xpcServer = v20;

    v22 = -[BackgroundTaskScheduler initWithIdentifier:interval:queue:delegate:]([BackgroundTaskScheduler alloc], "initWithIdentifier:interval:queue:delegate:", @"com.apple.centaurid.PowerStats", [objc_opt_class() powerStatsTaskInterval], v14->_dispatchQueue, v14);
    powerStatsTaskScheduler = v14->_powerStatsTaskScheduler;
    v14->_powerStatsTaskScheduler = v22;
  }

  return v14;
}

- (void)run
{
  [objc_opt_class() setupSignalHandlers];
  dispatchQueue = self->_dispatchQueue;
  handler[6] = _NSConcreteStackBlock;
  handler[7] = 3221225472;
  handler[8] = sub_100001834;
  handler[9] = &unk_10005C6B0;
  handler[10] = self;
  os_state_add_handler();
  v5 = self->_dispatchQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001864;
  handler[3] = &unk_10005C6D8;
  handler[4] = self;
  handler[5] = a2;
  xpc_set_event_stream_handler("com.apple.iokit.matching", v5, handler);
  v6 = [objc_opt_class() shouldDisableDaemon];
  self->_disabled = v6;
  if (v6)
  {
    v7 = sub_100025204();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [objc_opt_class() description];
      v9 = NSStringFromSelector(a2);
      *buf = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: Bailing due to boot-arg", buf, 0x16u);
    }
  }

  else
  {
    v10 = self->_dispatchQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100001970;
    v12[3] = &unk_10005C700;
    v12[4] = self;
    v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, v12);
    dispatch_async(v10, v11);
  }
}

- (void)_run
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v10, 0x16u);
  }

  if (![(ChipManager *)self->_chipManager hasHardware])
  {
    v7 = sub_100025204();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [objc_opt_class() description];
      v9 = NSStringFromSelector(a2);
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: no hardware present, exiting", &v10, 0x16u);
    }

    exit(0);
  }

  [(ChipManager *)self->_chipManager activate];
  [(XPCServer *)self->_xpcServer activate];
  [(BackgroundTaskScheduler *)self->_powerStatsTaskScheduler activate];
}

- (void)log
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v14 = 138543618;
    v15 = v5;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ==================== state dump start ====================", &v14, 0x16u);
  }

  v7 = sub_100025204();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() description];
    v9 = NSStringFromSelector(a2);
    disabled = self->_disabled;
    v14 = 138543874;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    v18 = 1024;
    v19 = disabled;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: disabled by boot-arg: %u", &v14, 0x1Cu);
  }

  [(ChipManager *)self->_chipManager log];
  [(BackgroundTaskScheduler *)self->_powerStatsTaskScheduler log];
  v11 = sub_100025204();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [objc_opt_class() description];
    v13 = NSStringFromSelector(a2);
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ==================== state dump end ====================", &v14, 0x16u);
  }
}

- (void)dealloc
{
  v3 = sub_100025204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_opt_class() description];
    v5 = NSStringFromSelector(a2);
    v10 = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: assertion failure: NO -- unexpected dealloc", &v10, 0x16u);
  }

  v6 = abort_report_np();
  [(CentauriDaemon *)v6 runBackgroundTaskWithIdentifier:v7 completion:v8, v9];
}

- (void)runBackgroundTaskWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 == @"com.apple.centaurid.PowerStats")
  {
    chipManager = self->_chipManager;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100001EB4;
    v9[3] = &unk_10005C728;
    v10 = v6;
    [(ChipManager *)chipManager getPowerStats:0 completion:v9];
  }
}

+ (BOOL)shouldDisableDaemon
{
  sysctlbyname_get_data_np();
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100028880(a1, a2);
  }

  return 0;
}

+ (void)setupSignalHandlers
{
  v2.__sigaction_u.__sa_handler = sub_1000021E8;
  *&v2.sa_mask = 0xFFFFFFFFLL;
  sigaction(30, &v2, 0);
  sigaction(31, &v2, 0);
}

+ (void)handleSignal:(int)a3
{
  LODWORD(v3) = a3;
  v5 = sub_100025204();
  v6 = v5;
  if (v3 == 31)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [objc_opt_class() description];
      v9 = NSStringFromSelector(a2);
      *buf = 138543618;
      v16 = v3;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: SIGUSR2", buf, 0x16u);
    }

    v6 = sub_100025204();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = [objc_opt_class() description];
      a2 = NSStringFromSelector(a2);
      *buf = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = a2;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: assertion failure: NO -- SIGUSR2", buf, 0x16u);
    }

    v5 = abort_report_np();
  }

  else if (v3 == 30)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [objc_opt_class() description];
      v8 = NSStringFromSelector(a2);
      *buf = 138543618;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: SIGUSR1", buf, 0x16u);
    }

    exit(0);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    *buf = 138543874;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    v19 = 1024;
    v20 = v3;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: assertion failure: NO -- unexpected signal %d", buf, 0x1Cu);
  }

  v13 = abort_report_np();
  +[(CentauriDaemon *)v13];
}

+ (BOOL)configureTempDirectory
{
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v11 = sub_100025204();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100028938(a1, a2, v11);
    }

    v9 = 0;
    goto LABEL_9;
  }

  v4 = +[NSFileManager defaultManager];
  v23 = NSFilePosixPermissions;
  v24 = &off_10006D8C0;
  v5 = 1;
  v6 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v7 = NSTemporaryDirectory();
  v16 = 0;
  v8 = [v4 setAttributes:v6 ofItemAtPath:v7 error:&v16];
  v9 = v16;

  if ((v8 & 1) == 0)
  {
    v11 = sub_100025204();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_opt_class() description];
      v13 = NSStringFromSelector(a2);
      v14 = [v9 description];
      v15 = [v14 UTF8String];
      *buf = 138543874;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      v21 = 2082;
      v22 = v15;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to set temp directory permissions: %{public}s", buf, 0x20u);
    }

LABEL_9:

    v5 = 0;
  }

  return v5;
}

+ (int64_t)powerStatsTaskInterval
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 integerForKey:@"PowerStatsTaskInterval"];

  v5 = sub_100025204();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (!v6)
    {
      v4 = 900;
      goto LABEL_8;
    }

    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2048;
    v4 = 900;
    v16 = 900;
    v9 = "%{public}@::%{public}@: defaulting to %ld seconds";
    goto LABEL_6;
  }

  if (v6)
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2048;
    v16 = v4;
    v9 = "%{public}@::%{public}@: overriding to %ld seconds";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v9, &v11, 0x20u);
  }

LABEL_8:

  return v4;
}

@end