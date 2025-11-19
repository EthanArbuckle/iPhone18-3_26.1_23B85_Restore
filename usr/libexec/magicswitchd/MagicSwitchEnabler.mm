@interface MagicSwitchEnabler
+ (void)run;
- (BOOL)isSettingEnabled;
- (MagicSwitchEnabler)init;
@end

@implementation MagicSwitchEnabler

- (MagicSwitchEnabler)init
{
  v8.receiver = self;
  v8.super_class = MagicSwitchEnabler;
  v2 = [(MagicSwitchEnabler *)&v8 init];
  if (v2)
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MagicSwitchEnabler --- Initializing (%p)", buf, 0xCu);
    }

    objc_storeStrong(&qword_100021418, v2);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.NanoRegistry.MagicSwitch", v4);
    workQueue = v2->_workQueue;
    v2->_workQueue = v5;
  }

  return v2;
}

+ (void)run
{
  v2 = objc_autoreleasePoolPush();
  sub_100007DC4();
  v3 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MagicSwitchEnabler --- Launching; MagicSwitch-40 3947", buf, 2u);
  }

  if (MGGetBoolAnswer() && (v4 = objc_opt_new()) != 0)
  {
    v5 = v4;
    v6 = +[MagicSwitchEnabler sharedInstance];
    v7 = [v6 workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000094A4;
    block[3] = &unk_100018538;
    v13 = v5;
    dispatch_async(v7, block);
  }

  else
  {
    +[KeepAliveManager deleteMagicSwitchPathFile];
  }

  v8 = +[MagicSwitchEnabler sharedInstance];
  v9 = [v8 workQueue];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &_dispatch_main_q;
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v11, &stru_1000186F8);

  objc_autoreleasePoolPop(v2);
  dispatch_main();
}

- (BOOL)isSettingEnabled
{
  v2 = objc_opt_class();

  return [v2 isMagicSwitchEnabled];
}

@end