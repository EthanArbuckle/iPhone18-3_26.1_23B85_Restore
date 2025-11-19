uint64_t start()
{
  v0 = [[ASTRepairSessionProvider alloc] initWithServiceName:@"com.apple.corerepair.diagnostics-controller" entitlements:&off_100011210];
  v1 = [[CRRepairSession alloc] initWithDelegate:v0];
  v2 = objc_autoreleasePoolPush();
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "@(#)PROGRAM:corerepaird  PROJECT:CoreRepair-921.40.62\n";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "corerepaird has started: %s", &v16, 0xCu);
  }

  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.corerepair"];
  if (!v7)
  {
    v8 = handleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cannot create listener", &v16, 2u);
    }
  }

  [v7 setDelegate:v4];
  [v7 resume];
  v9 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.corerepair.intentControl"];
  if (!v9)
  {
    v10 = handleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cannot create listener", &v16, 2u);
    }
  }

  [v9 setDelegate:v5];
  [v9 resume];
  v11 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.corerepair.preflightControl"];
  if (!v11)
  {
    v12 = handleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cannot create listener", &v16, 2u);
    }
  }

  [v11 setDelegate:v6];
  [v11 resume];
  if (objc_opt_class())
  {
    [v0 setReceiver:v1];
    [v0 startListening];
  }

  else
  {
    v13 = handleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ASTRepairSessionProvider is not linked on current platform", &v16, 2u);
    }
  }

  objc_autoreleasePoolPop(v2);
  v14 = +[NSRunLoop currentRunLoop];
  [v14 run];

  return 0;
}

BOOL sub_100002414(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void sub_100003A88(id a1)
{
  qword_100016908 = objc_alloc_init(CRCFactoryHelper);

  _objc_release_x1();
}

void sub_100005234(uint64_t a1)
{
  v1 = [*(a1 + 32) testSequencer];
  [v1 start];
}

void sub_100005A48(uint64_t a1)
{
  v2 = [*(a1 + 32) testSequencer];
  [v2 handleResult:*(a1 + 40)];
}

uint64_t sub_100006B60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006B78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "answer %@", &v8, 0xCu);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
}

void sub_100006C44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "answer %@", &v8, 0xCu);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
}

void sub_1000090FC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100009124()
{
  sub_1000023E8();
  v0 = handleForCategory();
  if (sub_100002414(v0))
  {
    sub_1000023F4();
    sub_1000023D8();
    _os_log_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  sub_100002408();
}

void sub_1000091C8()
{
  sub_1000023E8();
  v0 = handleForCategory();
  if (sub_100002414(v0))
  {
    sub_1000023D8();
    _os_log_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  sub_100002408();
}

void sub_100009260()
{
  sub_1000023E8();
  v0 = handleForCategory();
  if (sub_100002414(v0))
  {
    sub_1000023F4();
    sub_1000023D8();
    _os_log_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  sub_100002408();
}

void sub_100009304()
{
  sub_1000023E8();
  v0 = handleForCategory();
  if (sub_100002414(v0))
  {
    sub_1000023D8();
    _os_log_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  sub_100002408();
}

void sub_1000093B0(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 localizedDescription];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to read asset %@: %@", &v6, 0x16u);
}

void sub_1000094EC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to get delta components: %@", &v2, 0xCu);
}

void sub_100009564(void *a1, NSObject *a2)
{
  v3 = [a1 statusCode];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "8262 failed with statusCode: %@, continue to run the following testIDs", &v4, 0xCu);
}