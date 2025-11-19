uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "mdmd starting...", buf, 2u);
  }

  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v3 = dispatch_queue_create("mdmd Catalyst Queue", v2);
  CATSetCatalystQueue();

  v4 = [[DMCPowerAssertion alloc] initWithReason:@"mdmd-Start"];
  v5 = [[MDMServerCore alloc] initWithChannelType:0];
  [v5 startOutError:0];
  v6 = [[MDMServiceDelegate alloc] initWithServer:v5];
  v7 = [NSXPCListener alloc];
  v8 = [v7 initWithMachServiceName:kMDMServiceBootstrapName];
  [v8 setDelegate:v6];
  [v8 resume];

  objc_autoreleasePoolPop(v0);
  v9 = +[NSRunLoop currentRunLoop];
  [v9 run];

  v10 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "mdmd stopping.", v12, 2u);
  }

  return 0;
}