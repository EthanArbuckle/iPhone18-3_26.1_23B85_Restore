uint64_t start(int a1)
{
  v2 = os_log_create("com.apple.coredata", "coredatad");
  qword_100008038 = v2;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v11 = a1;
    *&v11[4] = 2112;
    *&v11[6] = [+[NSProcessInfo processInfo](NSProcessInfo arguments];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "coredatad launched with argc: %d argv: %@", buf, 0x12u);
  }

  errorbuf = 0;
  if (sandbox_init("com.apple.coredatad", 1uLL, &errorbuf))
  {
    v3 = qword_100008038;
    if (os_log_type_enabled(qword_100008038, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *v11 = errorbuf;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Failed to enter sandbox: %s", buf, 0xCu);
    }

    return 1;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = qword_100008038;
    if (os_log_type_enabled(qword_100008038, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v11 = 0;
      *&v11[8] = 2112;
      *&v11[10] = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Bringing up cloudkit server: %@ / %@", buf, 0x16u);
    }

    v7 = [NSCloudKitMirroringDelegate createCloudKitServerWithMachServiceName:0 andStorageDirectoryPath:0];
    [v7 setUp];
    objc_autoreleasePoolPop(v5);
    [+[NSRunLoop currentRunLoop](NSRunLoop run];
    v8 = qword_100008038;
    if (os_log_type_enabled(qword_100008038, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Tearing down coredatad.", buf, 2u);
      v8 = qword_100008038;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Tearing down cloudkit server: %@", buf, 0xCu);
    }

    [v7 tearDown];

    return 0;
  }
}