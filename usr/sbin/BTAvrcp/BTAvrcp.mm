void sub_1000011E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) condition];
  [v7 lock];

  if ([*(a1 + 32) pendingSwitchers])
  {
    v5[2](v5);
    v8 = *(a1 + 32);
    v9 = [v8 pendingSwitchers] - 1;
    [v8 setPendingSwitchers:v9];
    if (!v9)
    {
      v10 = [*(a1 + 32) condition];
      [v10 signal];
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001320;
    block[3] = &unk_1000187B0;
    v13 = v6;
    dispatch_async(&_dispatch_main_q, block);
  }

  v11 = [*(a1 + 32) condition];
  [v11 unlock];
}

void sub_100001618()
{
  v0 = qword_10001EFD0;
  if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Language did change, exiting", v1, 2u);
  }

  exit(1);
}

void sub_100001B6C(id a1)
{
  v1 = [NSValue valueWithPointer:&_xpc_type_BOOL];
  v7[0] = v1;
  v8[0] = &stru_100018880;
  v2 = [NSValue valueWithPointer:&_xpc_type_int64];
  v7[1] = v2;
  v8[1] = &stru_1000188A0;
  v3 = [NSValue valueWithPointer:&_xpc_type_uint64];
  v7[2] = v3;
  v8[2] = &stru_1000188C0;
  v4 = [NSValue valueWithPointer:&_xpc_type_double];
  v7[3] = v4;
  v8[3] = &stru_1000188E0;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v6 = qword_10001EF90;
  qword_10001EF90 = v5;
}

NSNumber *__cdecl sub_100001CA4(id a1, OS_xpc_object *a2)
{
  value = xpc_BOOL_get_value(a2);

  return [NSNumber numberWithBool:value];
}

NSNumber *__cdecl sub_100001CE8(id a1, OS_xpc_object *a2)
{
  value = xpc_int64_get_value(a2);

  return [NSNumber numberWithLongLong:value];
}

NSNumber *__cdecl sub_100001D2C(id a1, OS_xpc_object *a2)
{
  value = xpc_uint64_get_value(a2);

  return [NSNumber numberWithUnsignedLongLong:value];
}

NSNumber *__cdecl sub_100001D70(id a1, OS_xpc_object *a2)
{
  value = xpc_double_get_value(a2);

  return [NSNumber numberWithDouble:value];
}

void sub_100001E44(id a1)
{
  v1 = [NSValue valueWithPointer:&_xpc_type_string];
  v4 = v1;
  v5 = &stru_100018940;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = qword_10001EFA0;
  qword_10001EFA0 = v2;
}

NSString *__cdecl sub_100001EEC(id a1, OS_xpc_object *a2)
{
  string_ptr = xpc_string_get_string_ptr(a2);

  return [NSString stringWithUTF8String:string_ptr];
}

void sub_100001FC4(id a1)
{
  v1 = [NSValue valueWithPointer:&_xpc_type_dictionary];
  v4 = v1;
  v5 = &stru_1000189A0;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = qword_10001EFB0;
  qword_10001EFB0 = v2;
}

void sub_10000285C(id a1)
{
  getpid();

  WriteStackshotReportWithPID();
}

uint64_t start()
{
  sub_100008AE8("BTAvrcp");
  v0 = [[BTXpcService alloc] initWithName:"com.apple.BTServer.avrcp" sessionClass:objc_opt_class()];
  if (v0)
  {
    v1 = +[NSRunLoop currentRunLoop];
    [v1 run];
  }

  return 1;
}

void sub_1000036FC(void *a1, uint64_t a2)
{
  if (a2 == 5)
  {
    v6 = a1[7];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

    v3 = a1[4];
    v4 = [NSString stringWithFormat:@"%lu", v6];
    v9 = v4;
    v5 = @"kTrackCount";
    goto LABEL_11;
  }

  if (a2 == 4)
  {
    v2 = a1[6];
    if (v2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

    v3 = a1[4];
    v4 = [NSString stringWithFormat:@"%lu", v2];
    v9 = v4;
    v5 = @"kTrackNumber";
LABEL_11:
    [v3 setValue:v4 forKey:v5];

    return;
  }

  v7 = a1[4];
  v8 = a1[5];

  [v8 setReplyAttributeForID:a2 inReplyAttributes:v7];
}

void sub_100005730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    MRPlaybackQueueGetContentItemAtOffset();
    v7 = MRContentItemGetArtworkData();
    if (v7)
    {
      v6 = +[NSMutableDictionary dictionary];
      [v6 setValue:v7 forKey:@"kImageData"];
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

void sub_100006198(uint64_t a1, uint64_t a2)
{
  if (a2 > 4)
  {
    if (a2 > 6)
    {
      if (a2 == 7)
      {
        v18 = [*(a1 + 32) nowPlayingInfo];
        v20 = [v18 trackDuration];

        v4 = v20;
        if (!v20)
        {
          goto LABEL_29;
        }

        v19 = [v20 unsignedIntegerValue];
        v10 = *(a1 + 40);
        v11 = [NSString stringWithFormat:@"%lu", v19];
        v12 = @"kPlayingTime";
        goto LABEL_27;
      }

      if (a2 != 8)
      {
        return;
      }

      v13 = [*(a1 + 32) nowPlayingInfo];
      v20 = [v13 trackImageHandle];

      v4 = v20;
      if (!v20)
      {
        goto LABEL_29;
      }

      v5 = *(a1 + 40);
      v6 = @"kImageHandle";
    }

    else
    {
      if (a2 == 5)
      {
        v15 = [*(a1 + 32) nowPlayingInfo];
        v20 = [v15 trackQueueCount];

        v4 = v20;
        if (!v20)
        {
          goto LABEL_29;
        }

        v16 = [v20 unsignedIntegerValue];
        v10 = *(a1 + 40);
        v11 = [NSString stringWithFormat:@"%lu", v16];
        v12 = @"kTrackCount";
        goto LABEL_27;
      }

      v7 = [*(a1 + 32) nowPlayingInfo];
      v20 = [v7 trackGenre];

      v4 = v20;
      if (!v20)
      {
        goto LABEL_29;
      }

      v5 = *(a1 + 40);
      v6 = @"kGenre";
    }

LABEL_24:
    [v5 setValue:v20 forKey:v6];
LABEL_28:
    v4 = v20;
    goto LABEL_29;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v17 = [*(a1 + 32) nowPlayingInfo];
      v20 = [v17 trackAlbum];

      v4 = v20;
      if (v20)
      {
        v5 = *(a1 + 40);
        v6 = @"kAlbum";
        goto LABEL_24;
      }

      goto LABEL_29;
    }

    v8 = [*(a1 + 32) nowPlayingInfo];
    v20 = [v8 trackQueueIndex];

    v4 = v20;
    if (!v20)
    {
      goto LABEL_29;
    }

    v9 = [v20 unsignedIntegerValue];
    v10 = *(a1 + 40);
    v11 = [NSString stringWithFormat:@"%lu", v9];
    v12 = @"kTrackNumber";
LABEL_27:
    [v10 setValue:v11 forKey:v12];

    goto LABEL_28;
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
      return;
    }

    v3 = [*(a1 + 32) nowPlayingInfo];
    v20 = [v3 trackArtist];

    v4 = v20;
    if (!v20)
    {
      goto LABEL_29;
    }

    v5 = *(a1 + 40);
    v6 = @"kArtist";
    goto LABEL_24;
  }

  v14 = [*(a1 + 32) nowPlayingInfo];
  v20 = [v14 trackTitle];

  v4 = v20;
  if (v20)
  {
    v5 = *(a1 + 40);
    v6 = @"kTitle";
    goto LABEL_24;
  }

LABEL_29:
}

uint64_t sub_100008AE8(char *category)
{
  qword_10001EFD0 = os_log_create("com.apple.bluetooth", category);

  return _objc_release_x1();
}

void sub_100009794(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [(NSDictionary *)v2 objectForKeyedSubscript:kSymptomDiagnosticReplySuccess];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [(NSDictionary *)v2 objectForKeyedSubscript:kSymptomDiagnosticReplySessionID];
    v6 = qword_10001EFD0;
    if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v5;
      v8 = v6;
      v17 = 136315138;
      v18 = [v5 UTF8String];
      v9 = "ABC Snapshot successful with SessionID %s";
      v10 = v8;
      v11 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v17, v11);
    }
  }

  else
  {
    v12 = [(NSDictionary *)v2 objectForKeyedSubscript:kSymptomDiagnosticReplyReason];
    v13 = [v12 intValue];

    v5 = [(NSDictionary *)v2 objectForKeyedSubscript:kSymptomDiagnosticReplyReasonString];
    v14 = qword_10001EFD0;
    if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v13;
      v16 = v5;
      v8 = v14;
      v17 = 134218242;
      v18 = v15;
      v19 = 2080;
      v20 = [v5 UTF8String];
      v9 = "ABC Snapshot failed with code %lld and reason: %s";
      v10 = v8;
      v11 = 22;
      goto LABEL_6;
    }
  }
}

void sub_10000A4B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000A5DC;
  v10[3] = &unk_100018B58;
  v4 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A5E4;
  v7[3] = &unk_100018B58;
  v8 = *(a1 + 32);
  v9 = v12;
  v5 = *(v4 + 16);
  v6 = v12;
  v5(v4, v10, v7);
}

void sub_10000A658(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000A6F4;
  v5[3] = &unk_100018B58;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_10000A7A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        v10 = [*(*(&v12 + 1) + 8 * v9) stations];
        [v4 addObjectsFromArray:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = qword_10001EFD0;
  if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_DEBUG))
  {
    sub_10000EAAC(v11, v4);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10000BD20(uint64_t a1, uint64_t a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000BDE0;
  v5[3] = &unk_100018BF8;
  v2 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000BDEC;
  v4[3] = &unk_1000189C8;
  v4[4] = v6;
  return (*(v2 + 16))(v2, v5, v4);
}

uint64_t sub_10000BDF4(uint64_t a1, uint64_t a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000BEB4;
  v5[3] = &unk_100018BF8;
  v2 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000BEC0;
  v4[3] = &unk_1000189C8;
  v4[4] = v6;
  return (*(v2 + 16))(v2, v5, v4);
}

uint64_t sub_10000BEC8(uint64_t a1, char a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000BF8C;
  v5[3] = &unk_100018C70;
  v2 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000BFA4;
  v4[3] = &unk_1000189C8;
  v4[4] = v6;
  return (*(v2 + 16))(v2, v5, v4);
}

uint64_t sub_10000BFAC(uint64_t a1, char a2, uint64_t a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000C070;
  v6[3] = &unk_100018CC0;
  v9 = a2;
  v3 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = a3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000C088;
  v5[3] = &unk_1000189C8;
  v5[4] = v7;
  return (*(v3 + 16))(v3, v6, v5);
}

id *sub_10000C070(id *result)
{
  if (*(result + 48))
  {
    return [result[4] _activeOriginDidChange:result[5]];
  }

  return result;
}

uint64_t sub_10000C090(uint64_t a1, uint64_t a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000C150;
  v5[3] = &unk_100018BF8;
  v2 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000C190;
  v4[3] = &unk_1000189C8;
  v4[4] = v6;
  return (*(v2 + 16))(v2, v5, v4);
}

void sub_10000C150(uint64_t a1)
{
  v1 = *(a1 + 40);
  [*(a1 + 32) _supportedCommandsDidChange:?];
}

id *sub_10000C430(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _activeOriginDidChange:?];
  }

  return result;
}

void sub_10000C4B4(uint64_t a1, void *a2)
{
  [*(a1 + 32) _supportedCommandsDidChange:a2];
}

void sub_10000E40C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected XPC server event: %@", &v2, 0xCu);
}

void sub_10000E484(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "XPC server error: %@", &v2, 0xCu);
}

void sub_10000E57C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [sub_100002460() description];
  sub_100002454();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

void sub_10000E648(void *a1)
{
  v2 = a1;
  v7 = [sub_100002460() description];
  sub_100002454();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0xCu);
}

void sub_10000E6E8(void *a1)
{
  v2 = a1;
  v7 = [sub_100002460() description];
  sub_100002454();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0xCu);
}

void sub_10000E788(void *a1)
{
  v2 = a1;
  v7 = [sub_100002460() description];
  sub_100002454();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0xCu);
}

void sub_10000E828()
{
  sub_10000246C();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"BTXpcSession.m" lineNumber:150 description:{@"Invalid XPC value type for key %s: %@", v1, v0}];
}

id sub_10000E8A4()
{
  sub_10000246C();
  v4 = +[NSAssertionHandler currentHandler];
  *v0 = v4;
  return [v4 handleFailureInMethod:v3 object:v2 file:@"BTXpcSession.m" lineNumber:154 description:{@"Missing XPC value for key %s", v1}];
}

void sub_10000E90C()
{
  getpid();
  WriteStackshotReportWithPID();
  abort();
}

void sub_10000E94C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 builtQuery];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Built query: %@", &v5, 0xCu);
}

void sub_10000E9F4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BTAVRCP_VFSFolder.m" lineNumber:57 description:@"Trying to store a predicate after the query is already built"];
}

void sub_10000EAAC(void *a1, void *a2)
{
  v3 = a1;
  v4 = 134217984;
  v5 = [a2 count];
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Found %lu recent stations", &v4, 0xCu);
}

void sub_10000EBCC()
{
  sub_10000DA2C();
  sub_10000DA20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000EC3C()
{
  sub_10000DA2C();
  sub_10000DA20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000ED78(void *a1, const void *a2)
{
  v3 = a1;
  v4 = CFCopyDescription(a2);
  sub_10000DA2C();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "ActiveOrigin did change: %@", v5, 0xCu);
}

void sub_10000EE18()
{
  sub_10000DA2C();
  sub_10000DA20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000EE88(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 80);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Missing artwork identifier. CurrentArtworkIdentifier: %@", &v3, 0xCu);
}