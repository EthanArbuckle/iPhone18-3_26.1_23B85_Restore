void start()
{
  v0 = objc_autoreleasePoolPush();
  IRSetupLogging();
  v1 = objc_autoreleasePoolPush();
  v2 = IRLogObject;
  if (os_log_type_enabled(IRLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "starting daemon", v5, 2u);
  }

  v3 = objc_alloc_init(IRDaemon);
  v4 = qword_100008008;
  qword_100008008 = v3;

  [qword_100008008 run];
  objc_autoreleasePoolPop(v1);
  dispatch_main();
}