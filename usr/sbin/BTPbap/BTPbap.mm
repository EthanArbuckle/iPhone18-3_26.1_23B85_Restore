uint64_t sub_100000DD8(char *category)
{
  qword_10000C908 = os_log_create("com.apple.bluetooth", category);

  return _objc_release_x1();
}

void sub_10000100C()
{
  v0 = qword_10000C908;
  if (os_log_type_enabled(qword_10000C908, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Language did change, exiting", v1, 2u);
  }

  exit(1);
}

void sub_100001560(id a1)
{
  v1 = [NSValue valueWithPointer:&_xpc_type_BOOL];
  v7[0] = v1;
  v8[0] = &stru_100008420;
  v2 = [NSValue valueWithPointer:&_xpc_type_int64];
  v7[1] = v2;
  v8[1] = &stru_100008440;
  v3 = [NSValue valueWithPointer:&_xpc_type_uint64];
  v7[2] = v3;
  v8[2] = &stru_100008460;
  v4 = [NSValue valueWithPointer:&_xpc_type_double];
  v7[3] = v4;
  v8[3] = &stru_100008480;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v6 = qword_10000C910;
  qword_10000C910 = v5;
}

NSNumber *__cdecl sub_100001698(id a1, OS_xpc_object *a2)
{
  value = xpc_BOOL_get_value(a2);

  return [NSNumber numberWithBool:value];
}

NSNumber *__cdecl sub_1000016DC(id a1, OS_xpc_object *a2)
{
  value = xpc_int64_get_value(a2);

  return [NSNumber numberWithLongLong:value];
}

NSNumber *__cdecl sub_100001720(id a1, OS_xpc_object *a2)
{
  value = xpc_uint64_get_value(a2);

  return [NSNumber numberWithUnsignedLongLong:value];
}

NSNumber *__cdecl sub_100001764(id a1, OS_xpc_object *a2)
{
  value = xpc_double_get_value(a2);

  return [NSNumber numberWithDouble:value];
}

void sub_100001838(id a1)
{
  v1 = [NSValue valueWithPointer:&_xpc_type_string];
  v4 = v1;
  v5 = &stru_1000084E0;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = qword_10000C920;
  qword_10000C920 = v2;
}

NSString *__cdecl sub_1000018E0(id a1, OS_xpc_object *a2)
{
  string_ptr = xpc_string_get_string_ptr(a2);

  return [NSString stringWithUTF8String:string_ptr];
}

void sub_1000019B8(id a1)
{
  v1 = [NSValue valueWithPointer:&_xpc_type_dictionary];
  v4 = v1;
  v5 = &stru_100008540;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = qword_10000C930;
  qword_10000C930 = v2;
}

void sub_1000021DC(id a1)
{
  getpid();

  WriteStackshotReportWithPID();
}

uint64_t start()
{
  sub_100000DD8("BTPbap");
  v0 = [[BTXpcService alloc] initWithName:"com.apple.BTServer.pbap" sessionClass:objc_opt_class()];
  if (v0)
  {
    v1 = +[NSRunLoop currentRunLoop];
    [v1 run];
  }

  return 1;
}

void sub_100002D98(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected XPC server event: %@", &v2, 0xCu);
}

void sub_100002E10(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "XPC server error: %@", &v2, 0xCu);
}

void sub_100002F08(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [sub_100001DF4() description];
  sub_100001DE8();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

void sub_100002FD4(void *a1)
{
  v2 = a1;
  v7 = [sub_100001DF4() description];
  sub_100001DE8();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0xCu);
}

void sub_100003074(void *a1)
{
  v2 = a1;
  v7 = [sub_100001DF4() description];
  sub_100001DE8();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0xCu);
}

void sub_100003114(void *a1)
{
  v2 = a1;
  v7 = [sub_100001DF4() description];
  sub_100001DE8();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0xCu);
}

void sub_1000031B4()
{
  getpid();
  WriteStackshotReportWithPID();
  abort();
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}