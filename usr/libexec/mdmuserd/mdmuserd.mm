uint64_t start()
{
  if ((+[DMCMultiUserModeUtilities inSharediPadUserSession]& 1) != 0)
  {
    v0 = objc_autoreleasePoolPush();
    v1 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "mdmuserd starting...", buf, 2u);
    }

    v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v3 = dispatch_queue_create("mdmuserd Catalyst Queue", v2);
    CATSetCatalystQueue();

    v4 = [[DMCPowerAssertion alloc] initWithReason:@"mdmuserd-Start"];
    v5 = [[MDMServerCore alloc] initWithChannelType:1];
    [v5 startOutError:0];
    v6 = [[MDMServiceDelegate alloc] initWithServer:v5];
    v7 = [NSXPCListener alloc];
    v8 = [v7 initWithMachServiceName:kMDMUserServiceBootstrapName];
    [v8 setDelegate:v6];
    [v8 resume];

    objc_autoreleasePoolPop(v0);
    v9 = +[NSRunLoop currentRunLoop];
    [v9 run];

    v10 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "mdmuserd stopping.", v13, 2u);
    }

    return 0;
  }

  else
  {
    v12 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "mdmuserd exiting immediately - device is not in Shared iPad user session and user channel feature is not enabled", v15, 2u);
    }

    return 1;
  }
}