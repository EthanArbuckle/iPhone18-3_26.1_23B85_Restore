void sub_100001034()
{
  v0 = qword_10000CEC8;
  if (os_log_type_enabled(qword_10000CEC8, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Language did change, exiting", v1, 2u);
  }

  exit(1);
}

void sub_100001880(id a1)
{
  v1 = [NSValue valueWithPointer:&_xpc_type_BOOL];
  v7[0] = v1;
  v8[0] = &stru_1000084B8;
  v2 = [NSValue valueWithPointer:&_xpc_type_int64];
  v7[1] = v2;
  v8[1] = &stru_1000084D8;
  v3 = [NSValue valueWithPointer:&_xpc_type_uint64];
  v7[2] = v3;
  v8[2] = &stru_1000084F8;
  v4 = [NSValue valueWithPointer:&_xpc_type_double];
  v7[3] = v4;
  v8[3] = &stru_100008518;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v6 = qword_10000CE88;
  qword_10000CE88 = v5;
}

NSNumber *__cdecl sub_1000019B8(id a1, OS_xpc_object *a2)
{
  value = xpc_BOOL_get_value(a2);

  return [NSNumber numberWithBool:value];
}

NSNumber *__cdecl sub_1000019FC(id a1, OS_xpc_object *a2)
{
  value = xpc_int64_get_value(a2);

  return [NSNumber numberWithLongLong:value];
}

NSNumber *__cdecl sub_100001A40(id a1, OS_xpc_object *a2)
{
  value = xpc_uint64_get_value(a2);

  return [NSNumber numberWithUnsignedLongLong:value];
}

NSNumber *__cdecl sub_100001A84(id a1, OS_xpc_object *a2)
{
  value = xpc_double_get_value(a2);

  return [NSNumber numberWithDouble:value];
}

void sub_100001B58(id a1)
{
  v1 = [NSValue valueWithPointer:&_xpc_type_string];
  v4 = v1;
  v5 = &stru_100008578;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = qword_10000CE98;
  qword_10000CE98 = v2;
}

NSString *__cdecl sub_100001C00(id a1, OS_xpc_object *a2)
{
  string_ptr = xpc_string_get_string_ptr(a2);

  return [NSString stringWithUTF8String:string_ptr];
}

void sub_100001CD8(id a1)
{
  v1 = [NSValue valueWithPointer:&_xpc_type_dictionary];
  v4 = v1;
  v5 = &stru_1000085D8;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = qword_10000CEA8;
  qword_10000CEA8 = v2;
}

uint64_t sub_100002194(char *category)
{
  qword_10000CEC8 = os_log_create("com.apple.bluetooth", category);

  return _objc_release_x1();
}

void sub_1000025B0(id a1)
{
  getpid();

  WriteStackshotReportWithPID();
}

uint64_t start()
{
  sub_100002194("BTMap");
  v0 = [[BTXpcService alloc] initWithName:"com.apple.BTServer.map" sessionClass:objc_opt_class()];
  if (v0)
  {
    v1 = +[NSRunLoop currentRunLoop];
    [v1 run];
  }

  return 1;
}

void sub_100003240(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_10000CEC8;
  if (os_log_type_enabled(qword_10000CEC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding guid %@ to pending send list", buf, 0xCu);
  }

  v5 = [*(*(a1 + 32) + 32) pendingSendGuids];
  [v5 addObject:v3];

  v17[0] = @"kMessageGUID";
  v17[1] = @"kBody";
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v18[0] = v3;
  v18[1] = v6;
  v17[2] = @"kRecipientPhoneNumber";
  v8 = v7;
  if (!v7)
  {
    v8 = +[NSNull null];
  }

  v18[2] = v8;
  v17[3] = @"kRecipientEmail";
  v9 = *(a1 + 56);
  v10 = v9;
  if (!v9)
  {
    v10 = +[NSNull null];
  }

  v18[3] = v10;
  v17[4] = @"kDate";
  v11 = +[NSDate date];
  v18[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:5];

  if (!v9)
  {

    if (v7)
    {
      goto LABEL_9;
    }

LABEL_11:

    goto LABEL_9;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_9:
  v13 = +[NSMutableArray array];
  [v13 addObject:v12];
  v15 = @"kMessagesInfo";
  v16 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [*(a1 + 32) sendMsg:@"kPendingSendMessage" args:v14];
}

void sub_100003514(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v3 reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(a1 + 32) serializeIMSPIMessage:*(*(&v12 + 1) + 8 * v9)];
        [v4 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v7);
  }

  v16 = @"kMessagesInfo";
  v17 = v4;
  v11 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [*(a1 + 32) sendReplyToMsg:*(a1 + 40) status:1 args:v11];
}

void sub_1000043F8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected XPC server event: %@", &v2, 0xCu);
}

void sub_100004470(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "XPC server error: %@", &v2, 0xCu);
}

void sub_10000452C(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Ignoring request to add ellipsis as there is insufficient space. bufferMaxLength = %lu", &v2, 0xCu);
}

void sub_1000045E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [sub_100002174() description];
  sub_100002168();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

void sub_1000046AC(void *a1)
{
  v2 = a1;
  v7 = [sub_100002174() description];
  sub_100002168();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0xCu);
}

void sub_10000474C(void *a1)
{
  v2 = a1;
  v7 = [sub_100002174() description];
  sub_100002168();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0xCu);
}

void sub_1000047EC(void *a1)
{
  v2 = a1;
  v7 = [sub_100002174() description];
  sub_100002168();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0xCu);
}

void sub_10000488C()
{
  sub_100002180();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"BTXpcSession.m" lineNumber:150 description:{@"Invalid XPC value type for key %s: %@", v1, v0}];
}

id sub_100004908()
{
  sub_100002180();
  v4 = +[NSAssertionHandler currentHandler];
  *v0 = v4;
  return [v4 handleFailureInMethod:v3 object:v2 file:@"BTXpcSession.m" lineNumber:154 description:{@"Missing XPC value for key %s", v1}];
}

void sub_100004970()
{
  getpid();
  WriteStackshotReportWithPID();
  abort();
}