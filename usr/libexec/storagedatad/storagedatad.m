id sub_100000D18()
{
  if (qword_100008600 != -1)
  {
    sub_1000012D4();
  }

  v1 = qword_1000085F8;

  return v1;
}

void sub_100000D5C(id a1)
{
  qword_1000085F8 = os_log_create("com.apple.storagedatad", "storagedatad");

  _objc_release_x1();
}

void sub_1000010CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000010F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = sub_100000D18();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 40));
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Connection from remote invalidated: %@", &v9, 0xCu);
    }

    v5 = *(*(a1 + 32) + 8);
    v6 = objc_loadWeakRetained((a1 + 40));
    [v5 removeObject:v6];
  }

  result = [*(*(a1 + 32) + 8) count];
  if (!result)
  {
    v8 = sub_100000D18();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Last connection invalidated ; exiting", &v9, 2u);
    }

    exit(0);
  }

  return result;
}

uint64_t start()
{
  v0 = objc_opt_new();
  v1 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.storagedatad"];
  [v1 setDelegate:v0];
  [v1 resume];
  v2 = +[NSRunLoop currentRunLoop];
  [v2 run];

  return 0;
}

void sub_1000012E8(void *a1, NSObject *a2)
{
  v3[0] = 67109120;
  v3[1] = [a1 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Client %d is missing entitlements required to use this service", v3, 8u);
}