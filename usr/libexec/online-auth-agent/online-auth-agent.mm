uint64_t sub_100002240(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  return 1;
}

void sub_100002994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000029AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000029C4(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, 1, v3, -1, 0);
}

uint64_t sub_100002A14(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sub_100002F74(a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

uint64_t sub_100002B2C(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0);
  v4 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, 2, v4, -1, 0);
}

uint64_t sub_100002C44(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, 1, v3, -1, 0);
}

void sub_100002DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002E14(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sub_100002FEC(a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

void sub_100002F04(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_100002F54(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

id sub_100002F74(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_text(a1, a2);
  if (v2)
  {
    v2 = [NSString stringWithUTF8String:v2];
  }

  return v2;
}

id sub_100002FB4(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_int64(a1, a2);

  return [NSDate dateWithTimeIntervalSince1970:v2];
}

NSNumber *sub_100002FEC(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_int64(a1, a2);

  return [NSNumber numberWithLongLong:v2];
}

NSData *sub_10000302C(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_blob(a1, a2);
  v5 = sqlite3_column_bytes(a1, a2);

  return [NSData dataWithBytes:v4 length:v5];
}

sqlite3 *sub_100003090(void *a1, int a2)
{
  ppDb = 0;
  if (a2)
  {
    v2 = 65537;
  }

  else
  {
    v2 = 65542;
  }

  v3 = [a1 path];
  v4 = sqlite3_open_v2([v3 UTF8String], &ppDb, v2, 0);

  if (v4)
  {
    v5 = sub_100006750();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003FCC4(v4, v5);
    }
  }

  return ppDb;
}

uint64_t sub_100003148(const char *a1, int a2)
{
  if (!a1)
  {
    sub_10003FEBC();
  }

  v3 = open(a1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v3 == -1)
  {
    v6 = sub_100006750();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003FE3C();
    }

    return 0;
  }

  else
  {
    v4 = v3;
    if (fstat(v3, &v9) < 0)
    {
      v7 = sub_100006750();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10003FDBC();
      }
    }

    else
    {
      if ((v9.st_mode & 0x1FF) == a2 || (fchmod(v4, a2) & 0x80000000) == 0)
      {
        v5 = 1;
        if (v4 < 0)
        {
          return v5;
        }

        goto LABEL_16;
      }

      v7 = sub_100006750();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10003FD3C();
      }
    }

    v5 = 0;
    if ((v4 & 0x80000000) == 0)
    {
LABEL_16:
      close(v4);
    }
  }

  return v5;
}

id sub_1000032A4()
{
  if (qword_100067938 != -1)
  {
    sub_10003FEE8();
  }

  v1 = qword_100067930;

  return v1;
}

void sub_1000032E8(id a1)
{
  v1 = [@"/Library/MobileDevice/ProvisioningProfiles" stringByAppendingPathComponent:@"mis.db"];
  v4 = [NSURL fileURLWithPath:v1];

  v2 = [(SQLDB *)MISDBManager databaseWithURL:v4];
  v3 = qword_100067930;
  qword_100067930 = v2;
}

id sub_100003380()
{
  if (qword_100067940 != -1)
  {
    sub_10003FEFC();
  }

  v1 = qword_100067948;

  return v1;
}

void sub_1000033C4(id a1)
{
  qword_100067948 = objc_opt_new();

  _objc_release_x1();
}

uint64_t sub_100003400(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = xpc_connection_copy_entitlement_value();
  pid = xpc_connection_get_pid(v5);
  if (v7)
  {
    v9 = v7 == &_xpc_BOOL_false;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v9)
  {
    v11 = pid;
    v12 = sub_100006750();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003FF10(a3, v11, v12);
    }

    xpc_dictionary_set_int64(v6, "resu", 16);
    xpc_connection_send_message(v5, v6);
    xpc_connection_cancel(v5);
  }

  return v10;
}

void start()
{
  sub_100003644();
  objc_opt_new();
  v0 = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.online-auth-agent.xpc", v0, 1uLL);

  xpc_connection_set_event_handler(mach_service, &stru_10005D970);
  sub_100003B2C();
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  v2 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"denylist.map"];
  sub_10000D724(v2, &v6);
  v3 = v6;
  v4 = v7;
  v5 = v8;
  sub_10000F644(&v3);
  v3 = v6;
  v4 = v7;
  v5 = v8;
  sub_10000DAD4(&v3);
  xpc_activity_register("com.apple.mis.profile-garbage-collection", XPC_ACTIVITY_CHECK_IN, &stru_10005D9B8);
  xpc_activity_register("com.apple.online-auth-agent.check-indeterminates", XPC_ACTIVITY_CHECK_IN, &stru_10005D9D8);
  xpc_activity_register("com.apple.online-auth-agent.reaper", XPC_ACTIVITY_CHECK_IN, &stru_10005D9F8);
  xpc_activity_register("com.apple.mis.opportunistic-validation.boot", XPC_ACTIVITY_CHECK_IN, &stru_10005DA18);
  xpc_activity_register("com.apple.online-auth-agent.denylist-update", XPC_ACTIVITY_CHECK_IN, &stru_10005DA38);
  xpc_connection_resume(mach_service);
  dispatch_main();
}

uint64_t sub_100003644()
{
  v0 = umask(0x12u);
  if (mkdir([@"/private/var/db/MobileIdentityData" fileSystemRepresentation], 0x1EDu) < 0 && *__error() != 17)
  {
    v1 = sub_100006750();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10003FF98(v1);
    }
  }

  return umask(v0);
}

void sub_1000036C4(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  type = xpc_get_type(v2);
  if (type == &_xpc_type_connection)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000037D0;
    handler[3] = &unk_10005D998;
    v8 = v2;
    v10 = v8;
    xpc_connection_set_event_handler(v8, handler);
    xpc_connection_resume(v8);
    v5 = v10;
  }

  else
  {
    v4 = type;
    v5 = sub_100006750();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v2 == &_xpc_error_connection_invalid && v4 == &_xpc_type_error)
    {
      if (v6)
      {
        sub_100040080(v5);
      }
    }

    else if (v6)
    {
      sub_10004003C(v5);
    }
  }
}

void sub_1000037D0(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  sub_100005618(*(a1 + 32), v4);
  objc_autoreleasePoolPop(v3);
}

void sub_100003830(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v4 = os_transaction_create();
  state = xpc_activity_get_state(v2);

  if (state)
  {
    sub_10000F7DC();
  }
}

void sub_100003898(id a1, OS_xpc_object *a2)
{
  activity = a2;
  v2 = os_transaction_create();
  if (xpc_activity_get_state(activity))
  {
    sub_10001123C(activity);
  }
}

void sub_100003900(id a1, OS_xpc_object *a2)
{
  if (xpc_activity_get_state(a2))
  {

    sub_1000067E8();
  }
}

void sub_100003938(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = os_transaction_create();
  if (xpc_activity_get_state(v2))
  {
    v4 = sub_100006750();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Checking whether opportunistic validation is needed", buf, 2u);
    }

    v5 = objc_opt_new();
    v6 = [v5 existsIndeterminatesSoon];
    v7 = sub_100006750();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v8)
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Yes, performing opportunistic validation.", v10, 2u);
      }

      sub_10001123C(v2);
    }

    else
    {
      if (v8)
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Opportunistic validation not necessary.", v9, 2u);
      }
    }
  }
}

void sub_100003A7C(id a1, OS_xpc_object *a2)
{
  if (xpc_activity_get_state(a2))
  {
    sub_10000EAB4();
    if (_os_feature_enabled_impl())
    {
      v2 = sub_100003380();
      v5 = 0;
      [v2 syncLaunchWarningsAndReturnError:&v5];
      v3 = v5;
      if (v3)
      {
        v4 = sub_100006750();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_1000400C4(v3, v4);
        }
      }
    }
  }
}

void sub_100003B2C()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  targetq = dispatch_queue_create("com.apple.mis.relister", v0);

  xpc_set_event_stream_handler("com.apple.distnoted.matching", targetq, &stru_10005DA80);
}

void sub_100003BA8(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = os_transaction_create();
  v4 = sub_100006750();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Relister invoked.", buf, 2u);
  }

  string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
  if (string && !strcmp(string, "Application Installed"))
  {
    v6 = sub_100006750();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Relister handling app installation.", v13, 2u);
    }

    v7 = xpc_dictionary_get_value(v2, "UserInfo");
    v8 = v7;
    if (v7)
    {
      if (xpc_get_type(v7) == &_xpc_type_dictionary)
      {
        v10 = _CFXPCCreateCFObjectFromXPCObject();
        v9 = v10;
        if (v10)
        {
          v11 = [v10 objectForKeyedSubscript:@"bundleIDs"];
          v12 = v11;
          if (v11)
          {
            [v11 enumerateObjectsUsingBlock:&stru_10005DAC0];
          }
        }

        else
        {
          v12 = sub_100006750();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_100040170();
          }
        }
      }

      else
      {
        v9 = sub_100006750();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10004013C();
        }
      }
    }

    else
    {
      v9 = sub_100006750();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000401A4();
      }
    }
  }
}

void sub_100003D98(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [LSApplicationProxy applicationProxyForIdentifier:v4 placeholder:0];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 bundleURL];
      v8 = [v7 path];

      if (v8)
      {
        [v7 path];
        MISQueryBlacklistForBundle();
      }
    }
  }

  else
  {
    v6 = sub_100006750();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000401D8();
    }
  }
}

void sub_100003F38(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_100003F60()
{
  if (qword_100067958 != -1)
  {
    sub_10004020C();
  }

  return byte_100067950;
}

void sub_100003F98(id a1)
{
  v3 = sub_10000E938();
  v1 = sub_10000E96C() ^ 1;
  v2 = sub_10000EAA8();
  byte_100067950 = [v3 isEqualToString:v2] & v1;
}

uint64_t sub_10000400C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11)
{
  v17 = a1;
  v18 = a2;
  v65 = a3;
  v19 = a4;
  v20 = a5;
  v66 = a6;
  v67 = a7;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = sub_100006750();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = v21;
    *&buf[12] = 2114;
    *&buf[14] = v17;
    *&buf[22] = 2114;
    v80 = v18;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Performing auth request for: %{public}@, %{public}@, %{public}@", buf, 0x20u);
  }

  if (sub_10003F9C8(v18))
  {
    v25 = sub_100006750();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "UPP is ready.", buf, 2u);
    }

    v26 = sub_1000032A4();
    [v26 deleteOnlineAuthEntryNoThrowWithProfileUUID:v18 cdHash:v17];

    v27 = v22[2](v22, 65);
    goto LABEL_9;
  }

  if (_os_feature_enabled_impl())
  {
    goto LABEL_8;
  }

  v74 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v31 = off_100067960;
  v78 = off_100067960;
  if (!off_100067960)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100006444;
    v80 = &unk_10005DB30;
    v81 = &v75;
    sub_100006444(buf);
    v31 = v76[3];
  }

  _Block_object_dispose(&v75, 8);
  if (!v31)
  {
    sub_100040324();
  }

  v32 = v31(&v74);
  v33 = v74;
  if (v33 || !v32)
  {

LABEL_21:
    if (([v19 BOOLValue] & 1) == 0)
    {
      *buf = 0;
      MISCopyProvisioningProfile();
      if (*buf)
      {
        if (MISProvisioningProfileHasPPQExemption())
        {
          CFRelease(*buf);
          v36 = sub_1000032A4();
          [v36 deleteOnlineAuthEntryNoThrowWithProfileUUID:v18 cdHash:v17];

          v27 = v22[2](v22, 1);
          goto LABEL_9;
        }

        if (*buf)
        {
          CFRelease(*buf);
        }
      }
    }

    v37 = sub_10000DC28(&unk_100067728, dword_100067924);
    v63 = sub_10000DC28(&unk_1000676E0, dword_100067724);
    if (sub_10000DD10(v37, v18) || sub_10000DD10(v63, v20))
    {
      v38 = sub_100006750();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "UPP or Team ID is exempt.", buf, 2u);
      }

      v39 = sub_1000032A4();
      [v39 deleteOnlineAuthEntryNoThrowWithProfileUUID:v18 cdHash:v17];

      v40 = v22[2](v22, 1);
    }

    else
    {
      if ([v17 length] == 20 || objc_msgSend(v17, "length") == 32)
      {
        v41 = [NSMutableData dataWithLength:16];
        v42 = v41;
        if (v41)
        {
          v43 = v41;
          v44 = [v42 mutableBytes];
          if (v44 && !SecRandomCopyBytes(kSecRandomDefault, 0x10uLL, v44))
          {
            v62 = sub_1000048B0();
            if (v62)
            {
              v61 = sub_100004A18(v17, v18);
              if (v61)
              {
                v46 = sub_1000032A4();
                v58 = [v46 getOnlineAuthEntryNoThrowWithProfileUUID:v18 cdHash:v17];

                v59 = [v58 isRejectedByWholeProfile];
                v47 = sub_1000032A4();
                v56 = [v47 countCDHashesRejectedByProfileNoThrowWithProfileUUID:v18];

                v60 = sub_100004B74(v42, v62, v18, v61, v20, v59, v56, v65, v19, v66, v67, v21, a8);
                if (v60)
                {
                  v68[0] = _NSConcreteStackBlock;
                  v68[1] = 3221225472;
                  v68[2] = sub_100004F94;
                  v68[3] = &unk_10005DB08;
                  v55 = v18;
                  v69 = v55;
                  v54 = v17;
                  v70 = v54;
                  v73 = a8;
                  v53 = v23;
                  v71 = v53;
                  v72 = v22;
                  v57 = objc_retainBlock(v68);
                  if (sub_100007548(v60, 0, v57))
                  {
                    v29 = 1;
                  }

                  else
                  {
                    v51 = sub_100006750();
                    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Could not perform authorization attempt", buf, 2u);
                    }

                    v52 = sub_1000032A4();
                    [v52 recordIndeterminateEntryNoThrowWithProfileUUID:v55 cdHash:v54 onConflictDoNothing:a8 != 0];

                    v29 = v53[2]();
                  }
                }

                else
                {
                  v50 = sub_100006750();
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                  {
                    sub_100040254();
                  }

                  v29 = v23[2](v23);
                }
              }

              else
              {
                v49 = sub_100006750();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  sub_100040288();
                }

                v29 = v23[2](v23);
              }
            }

            else
            {
              v48 = sub_100006750();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                sub_1000402BC();
              }

              v29 = v23[2](v23);
            }

            goto LABEL_33;
          }
        }

        v45 = sub_100006750();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_1000402F0();
        }
      }

      else
      {
        v45 = sub_100006750();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_100040220();
        }
      }

      v40 = v23[2](v23);
    }

    v29 = v40;
LABEL_33:

    goto LABEL_10;
  }

  v34 = [v32 objectForKeyedSubscript:@"DeviceConfigurationFlags"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_21;
  }

  v35 = (~[v34 intValue] & 0x21) == 0;

  if (!v35)
  {
    goto LABEL_21;
  }

LABEL_8:
  v28 = sub_1000032A4();
  [v28 deleteOnlineAuthEntryNoThrowWithProfileUUID:v18 cdHash:v17];

  v27 = v22[2](v22, 1);
LABEL_9:
  v29 = v27;
LABEL_10:

  return v29;
}

id sub_1000048B0()
{
  v0 = sub_100011F44();
  v1 = v0;
  if (!v0)
  {
    v12 = sub_100006750();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100040410();
    }

    goto LABEL_14;
  }

  v2 = [v0 lengthOfBytesUsingEncoding:4];
  v3 = (v2 + 15) & 0xFFFFFFF0;
  v4 = sub_100012118([v1 UTF8String], v2, v3);
  if (!v4)
  {
LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  v5 = v4;
  v6 = sub_1000120C0(v3);
  if (!v6)
  {
    free(v5);
    goto LABEL_14;
  }

  v7 = v6;
  v8 = sub_100042D2C();
  v9 = v8;
  if (!v8)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_19;
  }

  if (sub_100012170(v8, v5, v7, v3))
  {
    v10 = sub_100006750();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004039C();
    }

    goto LABEL_9;
  }

  v11 = [NSData dataWithBytes:v7 length:v2];
LABEL_19:
  free(v5);
  free(v7);
  if (v9)
  {
    j__IOServiceClose(v9);
  }

LABEL_15:

  return v11;
}

id sub_100004A18(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[NSMutableData alloc] initWithData:v4];

  if (v5)
  {
    v6 = [v3 UTF8String];
    if (v6)
    {
      [v5 appendBytes:v6 length:{objc_msgSend(v3, "lengthOfBytesUsingEncoding:", 4)}];
      ccsha256_di();
      [v5 length];
      [v5 bytes];
      ccdigest();
      v7 = [[NSData alloc] initWithBytes:v10 length:32];
      goto LABEL_8;
    }

    v8 = sub_100006750();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100040444();
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

id sub_100004B74(void *a1, void *a2, void *a3, void *a4, void *a5, unsigned int a6, unsigned int a7, void *a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13)
{
  v48 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v47 = a5;
  v49 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = objc_alloc_init(NSMutableDictionary);
  v45 = v23;
  v46 = v22;
  if (v25)
  {
    v26 = [v48 base64EncodedStringWithOptions:0];
    [v25 setObject:v26 forKey:@"nonce"];

    [v25 setObject:@"INSTALL_FINE_GRAINED" forKey:@"action"];
    v27 = [v18 base64EncodedStringWithOptions:0];
    [v25 setObject:v27 forKey:@"deviceID"];

    [v25 setObject:v19 forKey:@"profileID"];
    v28 = [v20 base64EncodedStringWithOptions:0];
    [v25 setObject:v28 forKey:@"appID"];

    v29 = [NSNumber numberWithLong:a13];
    [v25 setObject:v29 forKey:@"checkType"];

    [v25 setObject:v22 forKey:@"cdVersion"];
    [v25 setObject:v23 forKey:@"signingTime"];
    v30 = v48;
    v31 = v47;
    if (v24)
    {
      v32 = sub_10001186C(v24, v20);
      v33 = v32;
      if (v32 && [v32 count])
      {
        [v25 setObject:v33 forKey:@"appIdentity"];
      }
    }

    if (v49)
    {
      [v25 setObject:v49 forKey:@"universalProfile"];
    }

    if (v21)
    {
      [v25 setObject:v21 forKey:@"localProfile"];
    }

    if ([v47 isEqual:&stru_1000603A0])
    {
      v34 = v21;
      [v25 setObject:&stru_1000603A0 forKey:@"teamID"];
LABEL_15:
      v39 = [NSNumber numberWithBool:a6];
      [v25 setObject:v39 forKey:@"previousRejected"];

      v40 = [NSNumber numberWithInt:a7];
      [v25 setObject:v40 forKey:@"rejectedApps"];

      v41 = v25;
      v21 = v34;
      goto LABEL_18;
    }

    v35 = [v47 dataUsingEncoding:4];
    ccsha256_di();
    [v35 length];
    [v35 bytes];
    ccdigest();
    v36 = [NSData dataWithBytes:v50 length:32];
    if (v36)
    {
      v37 = v36;
      v34 = v21;
      v38 = [v36 base64EncodedStringWithOptions:0];
      [v25 setObject:v38 forKey:@"teamID"];

      v31 = v47;
      v30 = v48;
      goto LABEL_15;
    }
  }

  v41 = 0;
  v31 = v47;
  v30 = v48;
LABEL_18:

  return v41;
}

void sub_100004F94(uint64_t *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1000032A4();
    v5 = [v3 valueForKey:@"actions"];
    v6 = a1 + 5;
    v7 = sub_100011FEC(a1[5]);
    if ([v5 containsObject:@"AUTHORIZED"])
    {
      v8 = sub_100006750();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = a1[4];
        *buf = 138543618;
        v55 = v7;
        v56 = 2114;
        v57 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Authorized: %{public}@, %{public}@", buf, 0x16u);
      }

      j__TMGetKernelMonotonicClock();
      v11 = v10;
      v12 = [v3 valueForKey:@"validity"];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 intValue];
      }

      else
      {
        v14 = 33;
      }

      v34 = a1[4];
      v35 = a1[5];
      v53 = 0;
      [v4 authorizeEntryWithProfileUUID:v34 cdHash:v35 gracePeriod:v14 currentMonotonicTime:v11 currentResetCount:j__TMGetRTCResetCount() error:&v53];
      v36 = v53;
      if (v36)
      {
        v22 = v36;
        v37 = sub_100006750();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v47 = a1[4];
          v48 = a1[5];
          *buf = 138544130;
          v55 = v47;
          v56 = 2114;
          v57 = v48;
          v58 = 1024;
          LODWORD(v59[0]) = v14;
          WORD2(v59[0]) = 2114;
          *(v59 + 6) = v22;
          _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Error authorizing entry for %{public}@, %{public}@, %d, %{public}@", buf, 0x26u);
        }

        (*(a1[6] + 16))();
        goto LABEL_42;
      }

LABEL_39:
      v42 = [v3 valueForKey:@"validity"];
      v43 = v42;
      if (v42)
      {
        [v4 setGracePeriodNoThrowWithProfileUUID:a1[4] gracePeriod:{objc_msgSend(v42, "intValue")}];
      }

      (*(a1[7] + 16))();

      v22 = 0;
      goto LABEL_42;
    }

    if ([v5 containsObject:@"REJECT_APP_FOR_PROFILE"])
    {
      v17 = sub_100006750();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = a1[4];
        *buf = 138543618;
        v55 = v7;
        v56 = 2114;
        v57 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Rejected app/profile combination: %{public}@, %{public}@", buf, 0x16u);
      }

      v19 = a1[4];
      v20 = a1[5];
      v52 = 0;
      [v4 rejectEntryWithProfileUUID:v19 cdHash:v20 isRejectedByWholeProfile:0 error:&v52];
      v21 = v52;
      if (!v21)
      {
        goto LABEL_39;
      }

      v22 = v21;
      v23 = sub_100006750();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v24 = a1[4];
      v25 = a1[5];
      *buf = 138543874;
      v55 = v24;
      v56 = 2114;
      v57 = v25;
      v58 = 2114;
      v59[0] = v22;
      v26 = "Error rejecting entry for %{public}@, %{public}@, %{public}@";
    }

    else
    {
      if (![v5 containsObject:@"REJECT_APP_AND_PROFILE"])
      {
        if (![v5 containsObject:@"REJECT_PROFILE"])
        {
          [v4 recordIndeterminateEntryNoThrowWithProfileUUID:a1[4] cdHash:a1[5] onConflictDoNothing:a1[8] != 0];
          goto LABEL_39;
        }

        v38 = sub_100006750();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = a1[4];
          *buf = 138543618;
          v55 = v7;
          v56 = 2114;
          v57 = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Permanently rejected profile: %{public}@, %{public}@", buf, 0x16u);
        }

        v40 = a1[4];
        v50 = 0;
        [v4 banProfileUUID:v40 error:&v50];
        v41 = v50;
        if (!v41)
        {
          v44 = *v6;
          v49 = 0;
          [v4 banCDHash:v44 error:&v49];
          v45 = v49;
          if (!v45)
          {
            [v4 deleteOnlineAuthEntryNoThrowWithProfileUUID:a1[4] cdHash:*v6];
            goto LABEL_39;
          }

          v22 = v45;
          v46 = sub_100006750();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            sub_1000404E4(a1 + 5);
          }

LABEL_37:
          (*(a1[6] + 16))();
LABEL_42:

          goto LABEL_43;
        }

        v22 = v41;
        v23 = sub_100006750();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100040478(a1 + 4);
        }

LABEL_36:

        goto LABEL_37;
      }

      v27 = sub_100006750();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = a1[4];
        *buf = 138543618;
        v55 = v7;
        v56 = 2114;
        v57 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Rejected profile: %{public}@, %{public}@", buf, 0x16u);
      }

      v29 = a1[4];
      v30 = a1[5];
      v51 = 0;
      [v4 rejectEntryWithProfileUUID:v29 cdHash:v30 isRejectedByWholeProfile:1 error:&v51];
      v31 = v51;
      if (!v31)
      {
        goto LABEL_39;
      }

      v22 = v31;
      v23 = sub_100006750();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v32 = a1[4];
      v33 = a1[5];
      *buf = 138543874;
      v55 = v32;
      v56 = 2114;
      v57 = v33;
      v58 = 2114;
      v59[0] = v22;
      v26 = "Error rejecting profile for %{public}@, %{public}@, %{public}@";
    }

    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v26, buf, 0x20u);
    goto LABEL_36;
  }

  v15 = sub_100006750();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Did not receive a valid response.", buf, 2u);
  }

  v16 = sub_1000032A4();
  [v16 recordIndeterminateEntryNoThrowWithProfileUUID:a1[4] cdHash:a1[5] onConflictDoNothing:a1[8] != 0];

  (*(a1[6] + 16))();
LABEL_43:
}

void sub_100005618(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  type = xpc_get_type(v4);
  if (type == &_xpc_type_error)
  {
    if (v4 == &_xpc_error_connection_invalid)
    {
      v6 = sub_100006750();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v12 = "connection is now invalid.";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v12, buf, 2u);
      }
    }

    else
    {
      if (v4 != &_xpc_error_termination_imminent)
      {
        goto LABEL_7;
      }

      v6 = sub_100006750();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v12 = "termination imminent, canceling connection.";
        goto LABEL_25;
      }
    }

LABEL_26:

    xpc_connection_cancel(v3);
    v8 = 0;
    goto LABEL_27;
  }

  if (type != &_xpc_type_dictionary)
  {
    v6 = sub_100006750();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100040550();
    }

    goto LABEL_26;
  }

LABEL_7:
  reply = xpc_dictionary_create_reply(v4);
  if (!reply)
  {
    sub_100040620();
  }

  v8 = reply;
  string = xpc_dictionary_get_string(v4, "type");
  if (!string)
  {
    v11 = sub_100006750();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000405EC();
    }

LABEL_18:

    xpc_connection_cancel(v3);
    goto LABEL_27;
  }

  v10 = string;
  if (!strncmp(string, "ping", 4uLL))
  {
    if (sub_100003400(v3, v8, "com.apple.private.mis.online_auth_agent"))
    {
      v13 = v3;
      v8 = v8;
      xpc_dictionary_set_int64(v8, "resu", 1);
      xpc_dictionary_set_string(v8, "pong", "pong!");
      xpc_connection_send_message(v13, v8);
    }
  }

  else if (!strncmp(v10, "auth", 4uLL))
  {
    if (sub_100003400(v3, v8, "com.apple.private.mis.online_auth_agent"))
    {
      v14 = v3;
      v15 = v4;
      *buf = _NSConcreteStackBlock;
      v40 = 3221225472;
      v41 = sub_1000065E0;
      v42 = &unk_10005DB90;
      v8 = v8;
      v43 = v8;
      v44 = v14;
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100006620;
      v37[3] = &unk_10005DBB8;
      v16 = objc_retainBlock(buf);
      v38 = v16;
      v17 = objc_retainBlock(v37);
      length = 0;
      data = xpc_dictionary_get_data(v15, "cdha", &length);
      v19 = xpc_dictionary_get_string(v15, "uuid");
      v20 = xpc_dictionary_get_string(v15, "team");
      v31 = xpc_dictionary_get_string(v15, "apppath");
      v21 = xpc_dictionary_get_value(v15, "univ");
      v35 = xpc_dictionary_get_value(v15, "locl");
      v34 = xpc_dictionary_get_value(v15, "cdvr");
      xint = xpc_dictionary_get_value(v15, "sgnt");
      if (data && v19 && v20)
      {
        v32 = [NSData dataWithBytes:data length:length];
        v30 = [NSString stringWithUTF8String:v19];
        if (v21)
        {
          v29 = [NSNumber numberWithBool:xpc_BOOL_get_value(v21)];
        }

        else
        {
          v29 = 0;
        }

        if (v35)
        {
          v28 = [NSNumber numberWithBool:xpc_BOOL_get_value(v35)];
        }

        else
        {
          v28 = 0;
        }

        if (v34)
        {
          v27 = [NSNumber numberWithUnsignedLongLong:xpc_uint64_get_value(v34)];
        }

        else
        {
          v27 = &off_100061398;
        }

        if (xint)
        {
          v26 = [NSNumber numberWithLongLong:xpc_int64_get_value(xint)];
        }

        else
        {
          v26 = &off_100061398;
        }

        v23 = [NSString stringWithUTF8String:v20];
        if (v31)
        {
          v24 = [NSString stringWithUTF8String:?];
        }

        else
        {
          v24 = 0;
        }

        int64 = xpc_dictionary_get_int64(v15, "ckty");
        sub_10000400C(v32, v30, v29, v28, v23, v27, v26, int64, v24, v16, v17);
      }

      else
      {
        v22 = sub_100006750();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1000405B8();
        }

        (v17[2])(v17);
      }
    }
  }

  else if (!strncmp(v10, "blov", 4uLL))
  {
    if (sub_100003400(v3, v8, "com.apple.private.mis.trust.set"))
    {
      sub_100005D18(v3, v4, v8);
    }
  }

  else
  {
    if (strncmp(v10, "lwov", 4uLL))
    {
      if (!strncmp(v10, "chlw", 4uLL))
      {
        sub_100006118(v3, v4, v8);
        goto LABEL_27;
      }

      v11 = sub_100006750();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100040584();
      }

      goto LABEL_18;
    }

    if (sub_100003400(v3, v8, "com.apple.private.mis.trust.set"))
    {
      sub_100005F34(v3, v4, v8);
    }
  }

LABEL_27:
}

void sub_100005D18(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000664C;
  v20[3] = &unk_10005DBE0;
  v6 = a3;
  v21 = v6;
  v7 = v5;
  v22 = v7;
  v8 = a2;
  v9 = objc_retainBlock(v20);
  length = 0;
  data = xpc_dictionary_get_data(v8, "cdha", &length);
  uint64 = xpc_dictionary_get_uint64(v8, "haty");
  v11 = xpc_dictionary_get_BOOL(v8, "ovrr");

  if (data)
  {
    v12 = [NSMutableData alloc];
    v13 = [v12 initWithBytes:data length:length];
    v14 = v13;
    if (v13)
    {
      [(__CFData *)v13 appendBytes:&uint64 length:4];
      v15 = sub_100011FEC(v14);
      if (v11)
      {
        sub_10000DDE0(@"UserOverriddenCdHashes.plist", v15);
      }

      else
      {
        sub_10000E190(@"UserOverriddenCdHashes.plist", v15);
      }

      xpc_dictionary_set_int64(v6, "resu", 1024);
      xpc_connection_send_message(v7, v6);
    }

    else
    {
      v17 = sub_100006750();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10004064C();
      }

      (v9[2])(v9);
    }
  }

  else
  {
    v16 = sub_100006750();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100040680();
    }

    (v9[2])(v9);
  }
}

void sub_100005F34(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000668C;
  v17[3] = &unk_10005DBE0;
  v6 = a3;
  v18 = v6;
  v7 = v5;
  v19 = v7;
  v8 = a2;
  v9 = objc_retainBlock(v17);
  uint64 = xpc_dictionary_get_uint64(v8, "lwid");
  v11 = xpc_dictionary_get_BOOL(v8, "ovrr");

  if (v11 && notify_post("com.apple.mis.warning.override"))
  {
    v12 = sub_100006750();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000406B4();
    }
  }

  v13 = sub_100003380();
  v16 = 0;
  [v13 setUserOverride:v11 forID:uint64 error:&v16];
  v14 = v16;
  if (v14)
  {
    v15 = sub_100006750();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100040728();
    }

    (v9[2])(v9);
  }

  else
  {
    xpc_dictionary_set_int64(v6, "resu", 1024);
    xpc_connection_send_message(v7, v6);
  }
}

void sub_100006118(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000066CC;
  v23[3] = &unk_10005DBE0;
  v7 = a3;
  v24 = v7;
  v8 = v5;
  v25 = v8;
  v9 = objc_retainBlock(v23);
  length = 0;
  data = xpc_dictionary_get_data(v6, "cdhd", &length);
  if (data && length)
  {
    v11 = [NSData dataWithBytes:data length:?];
    int64 = xpc_dictionary_get_int64(v6, "cdht");
    v13 = sub_100006750();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v27 = int64;
      v28 = 2114;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "XPC: checking launch warning data for: %llu, %{public}@", buf, 0x16u);
    }

    v14 = sub_100003380();
    v21 = 0;
    v15 = [v14 lookupLaunchWarningData:v11 cdhashType:int64 error:&v21];
    v16 = v21;
    v17 = sub_100006750();
    v18 = v17;
    if (v15)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = [v15 length];
        *buf = 138543618;
        v27 = v15;
        v28 = 2048;
        v29 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "XPC: launch warning data response: %{public}@, %lu", buf, 0x16u);
      }

      xpc_dictionary_set_data(v7, "warndata", [v15 bytes], objc_msgSend(v15, "length"));
      xpc_dictionary_set_int64(v7, "resu", 0);
      xpc_connection_send_message(v8, v7);
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10004079C();
      }

      (v9[2])(v9);
    }
  }

  else
  {
    v20 = sub_100006750();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100040810();
    }

    (v9[2])(v9);
  }
}

void *sub_100006444(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100067968)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10000656C;
    v4[4] = &unk_10005DB68;
    v4[5] = v4;
    v5 = off_10005DB50;
    v6 = 0;
    qword_100067968 = _sl_dlopen();
  }

  v2 = qword_100067968;
  if (!qword_100067968)
  {
    sub_100040844(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "MAECopyActivationRecordWithError");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100067960 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000656C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100067968 = result;
  return result;
}

uint64_t sub_1000065E0(uint64_t a1, int64_t value)
{
  xpc_dictionary_set_int64(*(a1 + 32), "resu", value);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  return 1;
}

uint64_t sub_10000664C(uint64_t a1)
{
  xpc_dictionary_set_int64(*(a1 + 32), "resu", 4);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  return 0;
}

uint64_t sub_10000668C(uint64_t a1)
{
  xpc_dictionary_set_int64(*(a1 + 32), "resu", 4);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  return 0;
}

uint64_t sub_1000066CC(uint64_t a1)
{
  xpc_dictionary_set_int64(*(a1 + 32), "resu", 4);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  return 0;
}

void sub_100006730(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_100006750()
{
  if (qword_100067978 != -1)
  {
    sub_1000408C4();
  }

  if (qword_100067970)
  {
    v1 = qword_100067970;
  }

  else
  {
    v1 = &_os_log_default;
  }

  return v1;
}

void sub_1000067A4(id a1)
{
  qword_100067970 = os_log_create("com.apple.mis", "mis");

  _objc_release_x1();
}

void sub_1000067E8()
{
  v18 = 0;
  *v27 = 0x600000001;
  v17 = 4;
  v0 = sub_100006750();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "The reaper woke up.", buf, 2u);
  }

  *buf = 0;
  v1 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v1);
  v3 = MatchingService;
  if (MatchingService)
  {
    if (IOServiceOpen(MatchingService, mach_task_self_, 0, buf))
    {
      v4 = sub_100006750();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000408D8();
      }
    }

    else
    {
      if (!IOConnectCallMethod(*buf, 4u, 0, 0, 0, 0, 0, 0, 0, 0))
      {
        goto LABEL_13;
      }

      v4 = sub_100006750();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10004094C();
      }
    }
  }

  else
  {
    v4 = sub_100006750();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000409C0();
    }
  }

LABEL_13:
  if (*buf)
  {
    IOServiceClose(*buf);
  }

  if (v3)
  {
    IOObjectRelease(v3);
  }

  v5 = sysctl(v27, 2u, &v18, &v17, 0, 0);
  v6 = sub_100006750();
  v7 = v6;
  if (v5 == -1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100040A40();
    }

    goto LABEL_36;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    v22 = v18;
    v23 = 2048;
    v24 = 4;
    v25 = 2048;
    v26 = 4 * v18;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "pid space %d*%lu = %lu", buf, 0x1Cu);
  }

  v8 = malloc_type_malloc(4 * v18, 0x100004052888210uLL);
  if (!v8)
  {
    v7 = sub_100006750();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100040A00();
    }

LABEL_36:

    return;
  }

  v9 = v8;
  v10 = proc_listallpids(v8, 4 * v18);
  if (v10 >= 1)
  {
    v11 = v10;
    v12 = v9;
    do
    {
      v14 = *v12++;
      v13 = v14;
      if ((csops() & 0x80000000) != 0)
      {
        v15 = sub_100006750();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *v19 = 67109120;
          v20 = v13;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "reaper could not get cdhash for pid %d", v19, 8u);
        }
      }

      else
      {
        v15 = [NSData dataWithBytes:buf length:20];
        if (MISQueryBlacklistForCdHash())
        {
          v16 = sub_100006750();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *v19 = 67109120;
            v20 = v13;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "reaping process %d", v19, 8u);
          }

          kill(v13, 9);
        }
      }

      --v11;
    }

    while (v11);
  }

  free(v9);
}

uint64_t MISProvisioningProfileIsAppleInternalProfile()
{
  v0 = MISProvisioningProfileGetTeamIdentifier();
  if ([v0 caseInsensitiveCompare:@"243LU875E5"])
  {
    v1 = sub_100006CC4();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

const void *MISProvisioningProfileGetTeamIdentifier()
{
  Value = MISProfileGetValue();
  if (!Value)
  {
    return 0;
  }

  v1 = Value;
  if (CFArrayGetCount(Value) != 1)
  {
    return 0;
  }

  return CFArrayGetValueAtIndex(v1, 0);
}

uint64_t sub_100006CC4()
{
  Value = MISProfileGetValue();
  if (!Value)
  {
    return 0;
  }

  v1 = Value;
  v2 = CFGetTypeID(Value);
  if (v2 != CFBooleanGetTypeID())
  {
    return 0;
  }

  return CFBooleanGetValue(v1);
}

BOOL MISProvisioningProfileHasPPQExemption()
{
  if (sub_100006CC4())
  {
    return 0;
  }

  if (sub_100006CC4())
  {
    v1 = MISProfileGetValue();
    v2 = v1;
    v0 = v1 && [v1 containsObject:@"InternalBuild"] && (v3 = sub_100006E10()) != 0 && CFBooleanGetValue(v3) == 0;
  }

  else
  {
    v4 = sub_100006E10();
    return !v4 || CFBooleanGetValue(v4) == 0;
  }

  return v0;
}

const void *sub_100006E10()
{
  Value = MISProfileGetValue();
  v1 = Value;
  if (Value)
  {
    v2 = CFGetTypeID(Value);
    if (v2 != CFBooleanGetTypeID())
    {
      v3 = sub_100006750();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5[0] = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Encountered a non-BOOLean value for 'PPQCheck'.", v5, 2u);
      }

      return 0;
    }
  }

  return v1;
}

void *MISProvisioningProfileGetDeveloperCertificatesHashes(void *a1)
{
  v1 = [a1 certs];

  return v1;
}

uint64_t MISXMLProvisioningProfileGetDeveloperCertificates()
{
  if (MISProfileIsDEREncoded())
  {
    return 0;
  }

  return MISProfileGetValue();
}

void *MISProvisioningProfileGetEntitlements(void *a1)
{
  v1 = [a1 entitlements];

  return v1;
}

uint64_t MISProvisioningProfileIsForBetaDeployment(void *a1)
{
  v1 = [a1 entitlements];

  if (!v1)
  {
    return 0;
  }

  v2 = CFGetTypeID(v1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return _MISEntitlementDictionaryAllowsEntitlementValue(v1, @"beta-reports-active", kCFBooleanTrue);
}

void sub_100007444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100007494(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(*(*(a1 + 40) + 8) + 24);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t sub_1000074F4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

BOOL sub_100007548(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (a2 < 3)
  {
    v62 = 0;
    v9 = [NSJSONSerialization dataWithJSONObject:v5 options:0 error:&v62];
    v10 = v62;
    v7 = v10;
    if (!v9)
    {
      v24 = v10 == 0;
      oslog = sub_100006750();
      v25 = os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
      if (v24)
      {
        if (v25)
        {
          sub_100040F34();
        }
      }

      else if (v25)
      {
        sub_100040EA8(v7);
      }

      v8 = 0;
      goto LABEL_63;
    }

    v11 = sub_100006750();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [[NSString alloc] initWithData:v9 encoding:4];
      v13 = v12;
      v14 = [v12 UTF8String];
      *buf = 136446210;
      *&buf[4] = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Full JSON message to send: %{public}s", buf, 0xCu);
    }

    oslog = [v5 objectForKey:@"appID"];
    v55 = [v5 objectForKey:@"profileID"];
    v15 = sub_100006750();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = oslog;
      *&buf[12] = 2114;
      *&buf[14] = v55;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Signing JSON message for %{public}@, %{public}@", buf, 0x16u);
    }

    v53 = v9;
    if (!&_DeviceIdentityIssueClientCertificateWithCompletion)
    {
      v17 = sub_100006750();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "DeviceIdentityIssueClientCertificate not available", buf, 2u);
      }

      v26 = 0;
LABEL_34:

      if (!v26)
      {
        v8 = 0;
LABEL_62:

LABEL_63:
        goto LABEL_64;
      }

      v32 = [NSURL URLWithString:@"https://ppq.apple.com/v2/authorization"];
      if (sub_100003F60())
      {
        v33 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mis"];
        v34 = [v33 stringForKey:@"serverUrl"];

        if (v34)
        {
          v35 = [NSURL URLWithString:v34];

          v32 = v35;
        }

        v36 = sub_100006750();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          *&buf[4] = v32;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "ppq Server URL is %{public}@", buf, 0xCu);
        }
      }

      if (!v32)
      {
        v38 = sub_100006750();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_100040E74();
        }

        v8 = 0;
        goto LABEL_61;
      }

      v37 = [NSMutableURLRequest requestWithURL:v32];
      v38 = v37;
      if (v37)
      {
        [v37 setHTTPMethod:@"POST"];
        [v38 addValue:@"8bit" forHTTPHeaderField:@"Content-Transfer-Encoding"];
        [v38 addValue:@"application/octet-stream" forHTTPHeaderField:@"Content-Type"];
        v39 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
        v40 = v39;
        if (v39)
        {
          [v39 setTimeoutIntervalForRequest:10.0];
          [v40 setTimeoutIntervalForResource:10.0];
          v52 = objc_alloc_init(OnlineAuthAgentURLSessionDelegate);
          v54 = [NSURLSession sessionWithConfiguration:v40 delegate:v52 delegateQueue:0];
          if (v54)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v78 = sub_1000080DC;
            v79 = sub_1000080EC;
            v80 = os_transaction_create();
            v57[0] = _NSConcreteStackBlock;
            v57[1] = 3221225472;
            v57[2] = sub_1000080F4;
            v57[3] = &unk_10005DC78;
            v61 = a2;
            v58 = v5;
            v59 = v6;
            v60 = buf;
            cfa = objc_retainBlock(v57);
            v41 = sub_100006750();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *v84 = 138543618;
              *&v84[4] = oslog;
              *&v84[12] = 2114;
              *&v84[14] = v55;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Sending request for %{public}@, %{public}@", v84, 0x16u);
            }

            v42 = [v54 uploadTaskWithRequest:v38 fromData:v26 completionHandler:cfa];
            [v54 finishTasksAndInvalidate];
            v8 = v42 != 0;
            if (v42)
            {
              [v42 resume];
            }

            else
            {
              v43 = *(*&buf[8] + 40);
              *(*&buf[8] + 40) = 0;
            }

            _Block_object_dispose(buf, 8);
          }

          else
          {
            v8 = 0;
          }

          goto LABEL_60;
        }
      }

      else
      {
        v40 = sub_100006750();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_100040E40();
        }
      }

      v8 = 0;
LABEL_60:

LABEL_61:
      goto LABEL_62;
    }

    v16 = arc4random_uniform(0x2A300u);
    v17 = objc_alloc_init(NSMutableData);
    v18 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, 0);
    v83[0] = kMAOptionsBAAKeychainLabel;
    v83[1] = kMAOptionsBAAKeychainAccessGroup;
    *v84 = @"com.apple.online-auth.ppq-identity";
    *&v84[8] = @"online-auth-agent";
    *&v84[16] = &off_1000613B0;
    v83[2] = kMAOptionsBAANetworkTimeoutInterval;
    v83[3] = kMAOptionsBAAValidity;
    v19 = [NSNumber numberWithUnsignedInt:v16 + 172800];
    v85 = v19;
    v83[4] = kMAOptionsBAASCRTAttestation;
    v83[5] = kMAOptionsBAAAccessControls;
    v86 = &__kCFBooleanFalse;
    v87 = v18;
    v51 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:6];

    v20 = dispatch_semaphore_create(0);
    v73 = 0;
    v74[0] = &v73;
    v74[1] = 0x3032000000;
    v74[2] = sub_1000080DC;
    v74[3] = sub_1000080EC;
    v75 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 0;
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = sub_1000080DC;
    v67 = sub_1000080EC;
    v68 = 0;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10000861C;
    v78 = &unk_10005DCA0;
    v80 = &v73;
    v81 = &v69;
    v82 = &v63;
    v21 = v20;
    v79 = v21;
    DeviceIdentityIssueClientCertificateWithCompletion();
    dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
    CFRelease(v18);
    v22 = v70[3];
    if (*(v74[0] + 40))
    {
      v23 = sub_100006750();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100040CA0(v74, v23);
      }
    }

    else if (v22 && (v27 = v64[5]) != 0)
    {
      v28 = [v27 objectAtIndexedSubscript:0];
      cf = SecIdentityCreate();

      if (cf)
      {
        v23 = +[NSMutableDictionary dictionary];
        v46 = [v64[5] objectAtIndexedSubscript:1];
        v76 = v46;
        v29 = [NSArray arrayWithObjects:&v76 count:1];
        [v23 setObject:v29 forKeyedSubscript:kSecCMSAdditionalCerts];

        v30 = SecCMSCreateSignedData();
        if (!v30)
        {
          if (sub_100003F60())
          {
            v48 = [v17 base64EncodedStringWithOptions:33];
            v45 = sub_100006750();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              sub_100040D98();
            }

            [v48 enumerateLinesUsingBlock:&stru_10005DCE0];
          }

          CFRelease(cf);
          v26 = v17;
          goto LABEL_33;
        }

        v47 = v30;
        v31 = sub_100006750();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_100040D20(v47, v31);
        }

        CFRelease(cf);
      }

      else
      {
        v23 = sub_100006750();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100040DD8();
        }
      }
    }

    else
    {
      v23 = sub_100006750();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100040E0C();
      }
    }

    v26 = 0;
LABEL_33:

    _Block_object_dispose(&v63, 8);
    _Block_object_dispose(&v69, 8);
    _Block_object_dispose(&v73, 8);

    goto LABEL_34;
  }

  v7 = sub_100006750();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Maximum number of attempts (%d) reached, bailing out.", buf, 8u);
  }

  v8 = 0;
LABEL_64:

  return v8;
}

void sub_100008070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000080DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000080F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v41 = 0;
  v10 = sub_100006750();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Response received", buf, 2u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v11 = [v8 statusCode], v11 == 200))
  {
    v12 = 0;
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_16:
    v23 = sub_100006750();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Server returned no data", buf, 2u);
    }

    goto LABEL_20;
  }

  v21 = v11;
  v22 = sub_100006750();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v43[0] = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Server returned HTTP status code %ld", buf, 0xCu);
  }

  v12 = 1;
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_6:
  ApplePPQSigning = SecPolicyCreateApplePPQSigning();
  if (!ApplePPQSigning)
  {
    v23 = sub_100006750();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100040F68();
    }

LABEL_20:

    goto LABEL_21;
  }

  v14 = ApplePPQSigning;
  v15 = SecCMSVerifyCopyDataAndAttributes();
  if (v15)
  {
    v16 = v15;
    v17 = sub_100006750();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v43[0]) = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Could not verify the CMS blob, received error %d", buf, 8u);
    }

    v18 = sub_100006750();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [[NSString alloc] initWithData:v7 encoding:4];
      v20 = [v19 UTF8String];
      *buf = 136446210;
      v43[0] = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "The server returned: %{public}s", buf, 0xCu);
    }

    CFRelease(v14);
    goto LABEL_21;
  }

  CFRelease(v14);
  if (v12)
  {
LABEL_21:
    v24 = sub_100006750();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 56) + 1;
      *buf = 67109376;
      LODWORD(v43[0]) = v25;
      WORD2(v43[0]) = 1024;
      *(v43 + 6) = 3;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Could not complete online authorization (attempt %d/%d).", buf, 0xEu);
    }

    if (v9)
    {
      v26 = sub_100006750();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100040F9C(v9);
      }
    }

    if ((sub_100007548(*(a1 + 32), (*(a1 + 56) + 1), *(a1 + 40)) & 1) == 0)
    {
      (*(*(a1 + 40) + 16))();
    }

    v27 = *(*(a1 + 48) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = 0;
    goto LABEL_30;
  }

  v29 = v41;
  v30 = sub_100006750();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [[NSString alloc] initWithData:v41 encoding:4];
    v32 = [v31 UTF8String];
    *buf = 136446210;
    v43[0] = v32;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "The server returned: %{public}s", buf, 0xCu);
  }

  v40 = 0;
  v33 = [NSJSONSerialization JSONObjectWithData:v41 options:0 error:&v40];
  v34 = v40;
  v28 = v34;
  if (v33)
  {
    v35 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (v34)
    {
      v36 = sub_100006750();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v28 localizedDescription];
        *buf = 138543362;
        v43[0] = v37;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Could not convert JSON to Dictionary: %{public}@", buf, 0xCu);
      }
    }

    v35 = *(*(a1 + 40) + 16);
  }

  v35();
  v38 = *(*(a1 + 48) + 8);
  v39 = *(v38 + 40);
  *(v38 + 40) = 0;

LABEL_30:
}

void sub_10000861C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v8 = a4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  *(*(*(a1 + 48) + 8) + 24) = a2;
  if (v9 && [v9 count] == 2)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000086DC(id a1, NSString *a2, BOOL *a3)
{
  v4 = a2;
  *a3 = 0;
  v5 = sub_100006750();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100041024(v4, v5);
  }
}

void sub_100008738(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_1000089C8(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, v4, v5, -1, 0);
}

uint64_t sub_100008A58(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, v4, v5, -1, 0);
}

void sub_100008B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008BAC(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"profile_cms_blob"];
  v6 = sub_10000302C(a2, [v5 intValue]);

  *(*(*(a1 + 32) + 8) + 24) = MISProfileCreateWithData();
}

uint64_t sub_100008DB0(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, v4, v5, -1, 0);
}

void sub_100008E20(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"profile_uuid"];
  v6 = sub_100002F74(a2, [v5 intValue]);

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) isEqualToString:v6];
}

uint64_t sub_10000917C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@signing_identity");
  v6 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, v5, v6, -1, 0);
}

uint64_t sub_10000993C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@cms_blob");
  v6 = [*(a1 + 40) bytes];
  v7 = [*(a1 + 40) length];

  return sqlite3_bind_blob(a2, v5, v6, v7, 0);
}

uint64_t sub_1000099F0(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@team_id");
  sqlite3_bind_text(a2, v5, [*(a1 + 40) UTF8String], -1, 0);
  v6 = sqlite3_bind_parameter_index(a2, "@name");
  sqlite3_bind_text(a2, v6, [*(a1 + 48) UTF8String], -1, 0);
  v7 = sqlite3_bind_parameter_index(a2, "@expires");
  [*(a1 + 56) timeIntervalSince1970];
  sqlite3_bind_int64(a2, v7, v8);
  v9 = sqlite3_bind_parameter_index(a2, "@is_for_all_devices");
  sqlite3_bind_int(a2, v9, *(a1 + 72));
  v10 = sqlite3_bind_parameter_index(a2, "@is_apple_internal");
  sqlite3_bind_int(a2, v10, *(a1 + 73));
  v11 = sqlite3_bind_parameter_index(a2, "@is_local");
  sqlite3_bind_int(a2, v11, *(a1 + 74));
  v12 = sqlite3_bind_parameter_index(a2, "@is_beta");
  sqlite3_bind_int(a2, v12, *(a1 + 75));
  v13 = sqlite3_bind_parameter_index(a2, "@cms_blob");
  sqlite3_bind_blob(a2, v13, [*(a1 + 64) bytes], objc_msgSend(*(a1 + 64), "length"), 0);
  v14 = sqlite3_bind_parameter_index(a2, "@is_der");
  v15 = *(a1 + 76);

  return sqlite3_bind_int(a2, v14, v15);
}

uint64_t sub_100009BE0(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@leaf_pk");
  v6 = [*(a1 + 40) longLongValue];

  return sqlite3_bind_int64(a2, v5, v6);
}

void sub_100009C7C(void *a1, void *a2)
{
  if (!*(*(a1[6] + 8) + 24))
  {
    v4 = a1[4];
    v5 = a2;
    v6 = [v4 Entitlements];
    LODWORD(v4) = [v6 insertEntitlement:v5 forProfile:a1[5]];

    *(*(a1[6] + 8) + 24) = v4;
  }
}

uint64_t sub_100009D10(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@team_id");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@team_name");
  v6 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, v5, v6, -1, 0);
}

uint64_t sub_100009FC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009FD8(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@cert");
  v5 = [*(a1 + 32) bytes];
  v6 = [*(a1 + 32) length];

  return sqlite3_bind_blob(a2, v4, v5, v6, 0);
}

uint64_t sub_10000A054(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@cert");
  v5 = [*(a1 + 32) bytes];
  v6 = [*(a1 + 32) length];

  return sqlite3_bind_blob(a2, v4, v5, v6, 0);
}

void sub_10000A0D0(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v8 = [a3 objectForKeyedSubscript:@"pk"];
  v5 = sub_100002FEC(a2, [v8 intValue]);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10000A794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A7B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A7D0(uint64_t a1)
{
  v2 = [*(a1 + 32) readSetting:@"databaseSchemaVersion"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (!v5)
  {
    v8 = sub_100006750();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MISQL: null version, potential erase or upgrade", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"1"];
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE profiles(uuid TEXT NOT NULL PRIMARY KEY withBind:team_id TEXT NOT NULL withResults:{install_time TEXT DEFAULT CURRENT_TIMESTAMP, name TEXT NOT NULL, expires INTEGER, is_for_all_devices INTEGER, is_apple_internal INTEGER, is_local INTEGER, is_beta INTEGER, cms_blob BLOB NOT NULL)", 0, 0}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_100006750();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000410E0(a1 + 48);
      }

      goto LABEL_73;
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE certificates(pk INTEGER PRIMARY KEY AUTOINCREMENT withBind:leaf BLOB UNIQUE NOT NULL)" withResults:{0, 0}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_100006750();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100041154(a1 + 48);
      }

      goto LABEL_73;
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE UNIQUE INDEX certificate_leaf_index ON certificates (leaf)" withBind:0 withResults:0];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_100006750();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000411C8(a1 + 48);
      }

      goto LABEL_73;
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE certificate_provisioning_cache(pk INTEGER PRIMARY KEY AUTOINCREMENT withBind:uuid TEXT NOT NULL withResults:{leaf_pk INTEGER NOT NULL, UNIQUE(uuid, leaf_pk), CONSTRAINT fk_certificate_leaf  FOREIGN KEY (leaf_pk)  REFERENCES certificates(pk)  ON DELETE CASCADE, CONSTRAINT fk_cert_profile_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_100006750();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10004123C(a1 + 48);
      }

      goto LABEL_73;
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE entitlements_provisioning_cache(pk INTEGER PRIMARY KEY AUTOINCREMENT withBind:uuid TEXT NOT NULL withResults:{predicate TEXT NOT NULL, wildcard INTEGER NOT NULL, UNIQUE(uuid, predicate), CONSTRAINT fk_predicate_profile_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_100006750();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000412B0(a1 + 48);
      }

      goto LABEL_73;
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE UNIQUE INDEX entitlements_cache_index ON entitlements_provisioning_cache (uuid withBind:predicate)" withResults:{0, 0}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_100006750();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100041324(a1 + 48);
      }

      goto LABEL_73;
    }

    v79 = *(*(a1 + 40) + 8);
    v80 = *(v79 + 40);
    *(v79 + 40) = @"1";

    v5 = *(*(*(a1 + 40) + 8) + 40);
  }

  if ([v5 isEqualToString:@"1"])
  {
    v6 = sub_100006750();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MISQL: performing database migration 1 -> 2", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"2"];
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"ALTER TABLE profiles ADD COLUMN is_der INTEGER DEFAULT (0)" withBind:0 withResults:0];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_100006750();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100041398(a1 + 48);
      }

      goto LABEL_73;
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE xml_profiles_cache(uuid TEXT NOT NULL PRIMARY KEY withBind:cms_blob BLOB NOT NULL withResults:{CONSTRAINT fk_xml_profile_cache_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_100006750();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10004140C(a1 + 48);
      }

      goto LABEL_73;
    }

    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = @"2";
  }

  if ([*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"2"])
  {
    v11 = sub_100006750();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "MISQL: performing database migration 2 -> 3", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"3"];
    [*(a1 + 32) findProfilesMatchingEntitlements:&off_1000613F0 withCertificate:0];
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    v7 = v177 = 0u;
    v12 = [v7 countByEnumeratingWithState:&v174 objects:v187 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v175;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v175 != v14)
          {
            objc_enumerationMutation(v7);
          }

          v16 = *(*(&v174 + 1) + 8 * i);
          if (![v16 ProvisionsAllDevices] && !objc_msgSend(v16, "AppleInternal"))
          {
            v17 = *(a1 + 32);
            v173[0] = _NSConcreteStackBlock;
            v173[1] = 3221225472;
            v173[2] = sub_10000C0A0;
            v173[3] = &unk_10005D880;
            v173[4] = v16;
            *(*(*(a1 + 48) + 8) + 24) = [v17 executeQuery:@"UPDATE profiles SET is_beta = 1 WHERE uuid = @uuid" withBind:v173 withResults:0];
            if (*(*(*(a1 + 48) + 8) + 24))
            {
              v21 = sub_100006750();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                sub_100041480(a1 + 48);
              }

              goto LABEL_73;
            }
          }
        }

        v13 = [v7 countByEnumeratingWithState:&v174 objects:v187 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = @"3";
  }

  if ([*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"3"])
  {
    v20 = sub_100006750();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "MISQL: performing database migration 3 -> 4", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"4"];
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS trusted_team_ids(team_id TEXT PRIMARY KEY withBind:signature BLOB)" withResults:{0, 0}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_100006750();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000414F4(a1 + 48);
      }

      goto LABEL_73;
    }

    v22 = *(*(a1 + 40) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = @"4";
  }

  if ([*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"4"])
  {
    v24 = sub_100006750();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "MISQL: performing database migration 4 -> 5", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"5"];
    v25 = objc_opt_new();
    v26 = *(a1 + 32);
    v171[0] = _NSConcreteStackBlock;
    v171[1] = 3221225472;
    v171[2] = sub_10000C130;
    v171[3] = &unk_10005DDA8;
    v7 = v25;
    v172 = v7;
    *(*(*(a1 + 48) + 8) + 24) = [v26 executeQuery:@"SELECT team_id withBind:signature FROM trusted_team_ids" withResults:{0, v171}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v27 = sub_100006750();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100041568(a1 + 48);
      }

LABEL_71:

      v39 = v172;
      goto LABEL_72;
    }

    v124 = a1 + 48;
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v27 = v7;
    v28 = [v27 countByEnumeratingWithState:&v167 objects:v186 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v168;
      while (2)
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v168 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v167 + 1) + 8 * j);
          v33 = *(a1 + 32);
          v166[0] = _NSConcreteStackBlock;
          v166[1] = 3221225472;
          v166[2] = sub_10000C1B0;
          v166[3] = &unk_10005D880;
          v166[4] = v32;
          *(*(*(a1 + 48) + 8) + 24) = [v33 executeQuery:@"UPDATE trusted_team_ids SET signature = NULL WHERE team_id = ?1" withBind:v166 withResults:0];
          if (*(*(*(a1 + 48) + 8) + 24))
          {
            v38 = sub_100006750();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              sub_1000415DC(v124);
            }

            goto LABEL_71;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v167 objects:v186 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    v34 = *(*(a1 + 40) + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = @"5";
  }

  if ([*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"5"])
  {
    v36 = sub_100006750();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "MISQL: performing database migration 5 -> 6", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"6"];
    v37 = a1 + 48;
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS team_id_info(team_id TEXT NOT NULL withBind:team_name TEXT NOT NULL withResults:{PRIMARY KEY (team_id))", 0, 0}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_100006750();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100041650(a1 + 48);
      }

      goto LABEL_73;
    }

    v42 = objc_opt_new();
    v43 = *(a1 + 32);
    v164[0] = _NSConcreteStackBlock;
    v164[1] = 3221225472;
    v164[2] = sub_10000C200;
    v164[3] = &unk_10005DDA8;
    v7 = v42;
    v165 = v7;
    *(*(*(a1 + 48) + 8) + 24) = [v43 executeQuery:@"SELECT profiles.team_id withBind:profiles.cms_blob withResults:{profiles.uuid FROM profiles", 0, v164}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v44 = sub_100006750();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_1000416C4(a1 + 48);
      }

LABEL_107:

      v39 = v165;
      goto LABEL_72;
    }

    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v44 = v7;
    v45 = [v44 countByEnumeratingWithState:&v160 objects:v185 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v161;
      while (2)
      {
        for (k = 0; k != v46; k = k + 1)
        {
          if (*v161 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v160 + 1) + 8 * k);
          v50 = [v44 objectForKeyedSubscript:v49];
          v51 = *(a1 + 32);
          v158[0] = _NSConcreteStackBlock;
          v158[1] = 3221225472;
          v158[2] = sub_10000C330;
          v158[3] = &unk_10005D8D0;
          v158[4] = v49;
          v52 = v50;
          v159 = v52;
          *(*(*(a1 + 48) + 8) + 24) = [v51 executeQuery:@"INSERT INTO team_id_info VALUES (@team_id withBind:@team_name)" withResults:{v158, 0}];
          if (*(*(*(a1 + 48) + 8) + 24))
          {
            v61 = sub_100006750();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              sub_100041738(v37);
            }

            goto LABEL_107;
          }
        }

        v46 = [v44 countByEnumeratingWithState:&v160 objects:v185 count:16];
        if (v46)
        {
          continue;
        }

        break;
      }
    }

    v53 = *(*(a1 + 40) + 8);
    v54 = *(v53 + 40);
    *(v53 + 40) = @"6";
  }

  if (![*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"6"])
  {
    goto LABEL_130;
  }

  v55 = sub_100006750();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "MISQL: performing database migration 6 -> 7", buf, 2u);
  }

  [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"7"];
  v56 = a1 + 48;
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS signing_identities(pk INTEGER PRIMARY KEY AUTOINCREMENT withBind:uuid TEXT NOT NULL withResults:{signing_identity TEXT NOT NULL, UNIQUE(uuid, signing_identity), CONSTRAINT fk_signing_identity_profile_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0}];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v7 = sub_100006750();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000417AC(a1 + 48);
    }

    goto LABEL_73;
  }

  v156[0] = _NSConcreteStackBlock;
  v156[1] = 3221225472;
  v156[2] = sub_10000C3D8;
  v156[3] = &unk_10005DDD0;
  v7 = objc_opt_new();
  v157 = v7;
  v57 = objc_retainBlock(v156);
  v58 = *(a1 + 32);
  v154[0] = _NSConcreteStackBlock;
  v154[1] = 3221225472;
  v154[2] = sub_10000C6A4;
  v154[3] = &unk_10005DDF8;
  v59 = v57;
  v155 = v59;
  *(*(*(a1 + 48) + 8) + 24) = [v58 executeQuery:@"SELECT uuid withBind:cms_blob FROM profiles WHERE is_der = 0 AND (is_for_all_devices = 1 OR is_local = 1)" withResults:{0, v154}];
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v62 = *(a1 + 32);
    v152[0] = _NSConcreteStackBlock;
    v152[1] = 3221225472;
    v152[2] = sub_10000C74C;
    v152[3] = &unk_10005DDF8;
    v63 = v59;
    v153 = v63;
    *(*(*(a1 + 48) + 8) + 24) = [v62 executeQuery:@"SELECT xml_profiles_cache.uuid withBind:xml_profiles_cache.cms_blob FROM xml_profiles_cache LEFT JOIN profiles ON profiles.uuid = xml_profiles_cache.uuid WHERE profiles.is_for_all_devices = 1 OR profiles.is_local = 1" withResults:{0, v152}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v64 = sub_100006750();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_100041894(v56);
      }

LABEL_146:

      goto LABEL_147;
    }

    v125 = v63;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v65 = v7;
    v118 = [v65 countByEnumeratingWithState:&v148 objects:v184 count:16];
    if (v118)
    {
      v66 = *v149;
      v122 = v65;
      v116 = *v149;
      do
      {
        v67 = 0;
        do
        {
          if (*v149 != v66)
          {
            objc_enumerationMutation(v65);
          }

          v120 = v67;
          v68 = *(*(&v148 + 1) + 8 * v67);
          v144 = 0u;
          v145 = 0u;
          v146 = 0u;
          v147 = 0u;
          v69 = [v65 objectForKeyedSubscript:v68];
          v70 = [v69 countByEnumeratingWithState:&v144 objects:v183 count:16];
          if (v70)
          {
            v71 = v70;
            v72 = *v145;
            while (2)
            {
              for (m = 0; m != v71; m = m + 1)
              {
                if (*v145 != v72)
                {
                  objc_enumerationMutation(v69);
                }

                v74 = *(*(&v144 + 1) + 8 * m);
                v75 = *(a1 + 32);
                v143[0] = _NSConcreteStackBlock;
                v143[1] = 3221225472;
                v143[2] = sub_10000C7F4;
                v143[3] = &unk_10005D8D0;
                v143[4] = v68;
                v143[5] = v74;
                *(*(*(a1 + 48) + 8) + 24) = [v75 executeQuery:@"INSERT OR IGNORE INTO signing_identities VALUES (NULL withBind:@uuid withResults:{@signing_identity)", v143, 0}];
                if (*(*(*(a1 + 48) + 8) + 24))
                {
                  v81 = sub_100006750();
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                  {
                    sub_100041908(v56);
                  }

                  v64 = v122;
                  v63 = v125;
                  goto LABEL_146;
                }
              }

              v71 = [v69 countByEnumeratingWithState:&v144 objects:v183 count:16];
              if (v71)
              {
                continue;
              }

              break;
            }
          }

          v67 = v120 + 1;
          v65 = v122;
          v66 = v116;
        }

        while ((v120 + 1) != v118);
        v118 = [v122 countByEnumeratingWithState:&v148 objects:v184 count:16];
      }

      while (v118);
    }

    v76 = *(*(a1 + 40) + 8);
    v77 = *(v76 + 40);
    *(v76 + 40) = @"7";

LABEL_130:
    if ([*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"7"])
    {
      v78 = sub_100006750();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "MISQL: performing database migration 7 -> 8", buf, 2u);
      }

      [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"8"];
      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS online_auth( uuid TEXT NOT NULL withBind:cdhash BLOB NOT NULL withResults:{grace_period INT NOT NULL, last_success_monotonic_time INT NOT NULL, last_success_reset_count INT NOT NULL, is_rejected INT NOT NULL DEFAULT (0), is_rejected_by_whole_profile INT NOT NULL DEFAULT (0), PRIMARY KEY (uuid, cdhash), CONSTRAINT fk_online_auth_profile_uuid    FOREIGN KEY (uuid)    REFERENCES profiles(uuid)    ON DELETE CASCADE)", 0, 0}];
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v7 = sub_100006750();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10004197C(a1 + 48);
        }

        goto LABEL_73;
      }

      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS banned_profile_uuids( uuid TEXT NOT NULL)" withBind:0 withResults:0];
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v7 = sub_100006750();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1000419F0(a1 + 48);
        }

        goto LABEL_73;
      }

      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS banned_cdhashes( cdhash BLOB NOT NULL)" withBind:0 withResults:0];
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v7 = sub_100006750();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_100041A64(a1 + 48);
        }

        goto LABEL_73;
      }

      v82 = *(*(a1 + 40) + 8);
      v83 = *(v82 + 40);
      *(v82 + 40) = @"8";
    }

    if (![*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"8"])
    {
      return 1;
    }

    v84 = sub_100006750();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "MISQL: performing database migration 8 -> 9", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"9"];
    v85 = objc_opt_new();
    v86 = *(a1 + 32);
    v141[0] = _NSConcreteStackBlock;
    v141[1] = 3221225472;
    v141[2] = sub_10000C89C;
    v141[3] = &unk_10005DDA8;
    v7 = v85;
    v142 = v7;
    v87 = [v86 executeQuery:@"SELECT uuid withBind:predicate FROM entitlements_provisioning_cache WHERE predicate LIKE 'string%' || x'1f' || '*' AND wildcard = 1" withResults:{0, v141}];
    v88 = a1 + 48;
    *(*(*(a1 + 48) + 8) + 24) = v87;
    if (!*(*(*(a1 + 48) + 8) + 24))
    {
      v115 = a1 + 48;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v90 = v7;
      v91 = [v90 countByEnumeratingWithState:&v137 objects:v182 count:16];
      if (v91)
      {
        v92 = *v138;
        v117 = v90;
        v113 = *v138;
        do
        {
          v93 = 0;
          v114 = v91;
          do
          {
            if (*v138 != v92)
            {
              v94 = v93;
              objc_enumerationMutation(v90);
              v93 = v94;
            }

            v119 = v93;
            v95 = *(*(&v137 + 1) + 8 * v93);
            v133 = 0u;
            v134 = 0u;
            v135 = 0u;
            v136 = 0u;
            obj = [v90 objectForKeyedSubscript:v95];
            v123 = [obj countByEnumeratingWithState:&v133 objects:v181 count:16];
            if (v123)
            {
              v126 = *v134;
              do
              {
                for (n = 0; n != v123; n = n + 1)
                {
                  if (*v134 != v126)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v97 = *(*(&v133 + 1) + 8 * n);
                  v98 = [v97 rangeOfString:off_100066300];
                  if (v98 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v99 = [v97 substringFromIndex:v98];
                    v100 = [NSString stringWithFormat:@"BOOL%@", v99];
                    v180[0] = v100;
                    v121 = v99;
                    v101 = [NSString stringWithFormat:@"number%@", v99];
                    v180[1] = v101;
                    v102 = [NSArray arrayWithObjects:v180 count:2];

                    v131 = 0u;
                    v132 = 0u;
                    v129 = 0u;
                    v130 = 0u;
                    v103 = v102;
                    v104 = [v103 countByEnumeratingWithState:&v129 objects:v179 count:16];
                    if (v104)
                    {
                      v105 = v104;
                      v106 = *v130;
                      while (2)
                      {
                        for (ii = 0; ii != v105; ii = ii + 1)
                        {
                          if (*v130 != v106)
                          {
                            objc_enumerationMutation(v103);
                          }

                          v108 = *(*(&v129 + 1) + 8 * ii);
                          v109 = *(a1 + 32);
                          v128[0] = _NSConcreteStackBlock;
                          v128[1] = 3221225472;
                          v128[2] = sub_10000C970;
                          v128[3] = &unk_10005D8D0;
                          v128[4] = v95;
                          v128[5] = v108;
                          *(*(*(a1 + 48) + 8) + 24) = [v109 executeQuery:@"INSERT OR IGNORE INTO entitlements_provisioning_cache (uuid withBind:predicate withResults:{wildcard) VALUES (?1, ?2, 1)", v128, 0}];
                          if (*(*(*(a1 + 48) + 8) + 24))
                          {
                            v112 = sub_100006750();
                            if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
                            {
                              sub_100041B4C(v115);
                            }

                            v89 = v117;
                            goto LABEL_184;
                          }
                        }

                        v105 = [v103 countByEnumeratingWithState:&v129 objects:v179 count:16];
                        if (v105)
                        {
                          continue;
                        }

                        break;
                      }
                    }
                  }
                }

                v90 = v117;
                v123 = [obj countByEnumeratingWithState:&v133 objects:v181 count:16];
              }

              while (v123);
            }

            v93 = v119 + 1;
            v92 = v113;
          }

          while ((v119 + 1) != v114);
          v91 = [v90 countByEnumeratingWithState:&v137 objects:v182 count:16];
        }

        while (v91);
      }

      v110 = *(*(a1 + 40) + 8);
      v111 = *(v110 + 40);
      *(v110 + 40) = @"9";

      v40 = 1;
      v7 = v90;
      goto LABEL_74;
    }

    v89 = sub_100006750();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      sub_100041AD8(v88);
    }

LABEL_184:

    v39 = v142;
    goto LABEL_72;
  }

  v60 = sub_100006750();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
  {
    sub_100041820(v56);
  }

LABEL_147:
  v39 = v157;
LABEL_72:

LABEL_73:
  v40 = 0;
LABEL_74:

  return v40;
}

void sub_10000C0A0(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v6 = [*(a1 + 32) UUID];
  v5 = v6;
  sqlite3_bind_text(a2, v4, [v6 UTF8String], -1, 0);
}

void sub_10000C130(uint64_t a1, sqlite3_stmt *a2)
{
  v5 = sub_100002F74(a2, 0);
  v4 = sub_10000302C(a2, 1);
  if (![v4 length])
  {
    [*(a1 + 32) addObject:v5];
  }
}

uint64_t sub_10000C1B0(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, 1, v3, -1, 0);
}

void sub_10000C200(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = sub_100002F74(a2, 0);
  v8 = [*(a1 + 32) objectForKey:v7];

  if (!v8)
  {
    v9 = sub_10000302C(a2, 1);
    v10 = sub_100002F74(a2, 2);
    v11 = MISProfileCreateWithData();
    if (v11)
    {
      v12 = v11;
      v13 = MISProvisioningProfileGetTeamName();
      [*(a1 + 32) setObject:v13 forKeyedSubscript:v7];
      CFRelease(v12);
    }

    else
    {
      v14 = sub_100006750();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100041BC0();
      }
    }
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t sub_10000C330(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@team_id");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@team_name");
  v6 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, v5, v6, -1, 0);
}

void sub_10000C3D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (!v7)
  {
    v8 = MISProfileCreateWithData();
    if (v8)
    {
      v9 = v8;
      v10 = MISXMLProvisioningProfileGetDeveloperCertificates();
      CFRelease(v9);
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          v15 = 0;
          do
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = SecCertificateCreateWithData(0, *(*(&v22 + 1) + 8 * v15));
            if (v16)
            {
              v17 = v16;
              v18 = SecCertificateCopySubjectSummary(v16);
              CFRelease(v17);
              if (v18)
              {
                v19 = [*(a1 + 32) objectForKeyedSubscript:v5];

                if (!v19)
                {
                  v20 = objc_opt_new();
                  [*(a1 + 32) setObject:v20 forKeyedSubscript:v5];
                }

                v21 = [*(a1 + 32) objectForKeyedSubscript:v5];
                [v21 addObject:v18];
              }

              else
              {
                v21 = sub_100006750();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v27 = v5;
                  _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Migration: Unable to get signing identity from %@", buf, 0xCu);
                }
              }
            }

            else
            {
              v18 = sub_100006750();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v27 = v5;
                _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Migration: Couldn't create SecCertificate for %@", buf, 0xCu);
              }
            }

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
        }

        while (v13);
      }
    }

    else
    {
      v11 = sub_100006750();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100041C34();
      }
    }
  }
}

void sub_10000C6A4(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v8 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_100002F74(a2, 0);
  v7 = sub_10000302C(a2, 1);
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v5);
}

void sub_10000C74C(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v8 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_100002F74(a2, 0);
  v7 = sub_10000302C(a2, 1);
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_10000C7F4(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@signing_identity");
  v6 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, v5, v6, -1, 0);
}

void sub_10000C89C(uint64_t a1, sqlite3_stmt *a2)
{
  v8 = sub_100002F74(a2, 0);
  v4 = sub_100002F74(a2, 1);
  v5 = [*(a1 + 32) objectForKeyedSubscript:v8];

  if (!v5)
  {
    v6 = objc_opt_new();
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v8];
  }

  v7 = [*(a1 + 32) objectForKeyedSubscript:v8];
  [v7 addObject:v4];
}

uint64_t sub_10000C970(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0);
  v4 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, 2, v4, -1, 0);
}

BOOL sub_10000CAD8(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if ([v2 isProfileInstalled:MISProvisioningProfileGetUUID()])
  {
    return 1;
  }

  *(*(a1[5] + 8) + 24) = [*(a1[4] + 56) insertProfile:a1[6]];
  return *(*(a1[5] + 8) + 24) == 0;
}

void sub_10000CC80(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"profile_cms_blob"];
  v6 = sub_10000302C(a2, [v5 intValue]);

  [*(a1 + 32) addObject:v6];
}

void sub_10000CD0C(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"blob"];
  v6 = sub_10000302C(a2, [v5 intValue]);

  [*(a1 + 32) addObject:v6];
}

void sub_10000CE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [BoxedMISProfile fromSQLStatement:a2 withMap:a3];
  [v3 addObject:v4];
}

id sub_10000D1E4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 0;
  if (a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  return [*(a1 + 32) appendFormat:@"(%lu, @p%lu)", a3, a3];
}

id sub_10000D23C(uint64_t a1, sqlite3_stmt *a2)
{
  if (*(a1 + 32))
  {
    v4 = sqlite3_bind_parameter_index(a2, "@cert");
    sqlite3_bind_blob(a2, v4, [*(a1 + 32) bytes], objc_msgSend(*(a1 + 32), "length"), 0);
  }

  v5 = sqlite3_bind_parameter_index(a2, "@totalPredicates");
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) count]);
  sqlite3_bind_int64(a2, v5, [v6 longLongValue]);

  result = [*(a1 + 40) count];
  if (result)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = [NSString stringWithFormat:@"@p%u", v9];
      v11 = sqlite3_bind_parameter_index(a2, [v10 UTF8String]);
      v12 = [*(a1 + 40) objectAtIndexedSubscript:v8];
      sqlite3_bind_text(a2, v11, [v12 UTF8String], -1, 0);

      v8 = (v9 + 1);
      result = [*(a1 + 40) count];
      v9 = v8;
    }

    while (result > v8);
  }

  return result;
}

void sub_10000D3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [BoxedMISProfile fromSQLStatement:a2 withMap:a3];
  [v3 addObject:v4];
}

uint64_t sub_10000D580(uint64_t result, sqlite3_stmt *a2)
{
  if (*(result + 32))
  {
    v3 = result;
    v4 = sqlite3_bind_parameter_index(a2, "@cert");
    v5 = [*(v3 + 32) bytes];
    v6 = [*(v3 + 32) length];

    return sqlite3_bind_blob(a2, v4, v5, v6, 0);
  }

  return result;
}

void sub_10000D608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [BoxedMISProfile fromSQLStatement:a2 withMap:a3];
  [v3 addObject:v4];
}

const char *sub_10000D6F8(uint64_t a1)
{
  v2 = *(*(*a1 + 8) + 24);

  return sqlite3_errstr(v2);
}

void sub_10000D724(const __CFString *a1@<X0>, unsigned int **a2@<X8>)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  Typed = CFAllocatorAllocateTyped();
  if (Typed)
  {
    if (CFStringGetCString(a1, Typed, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      v7 = open(Typed, 0);
      if ((v7 & 0x80000000) == 0)
      {
        v8 = v7;
        v9 = lseek(v7, 0, 2);
        if (v9 > 23)
        {
          v16 = mmap(0, v9, 1, 2, v8, 0);
          if (v16 == -1)
          {
            v19 = sub_100006750();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_100041DA4();
            }

            v11 = -1;
          }

          else
          {
            v11 = v16;
            a2[2] = 0;
            a2[3] = 0;
            *(a2 + 6) = v8;
            a2[4] = v16;
            a2[5] = v9;
            *a2 = v16;
            a2[1] = 0;
            if (*v16 == 1134124660)
            {
              v17 = v16[2];
              if (v9 >= v17)
              {
                v24 = v16 + v17;
                v25 = v16[3];
                v26 = &v24[32 * v25];
                a2[1] = v24;
                a2[2] = v26;
                v27 = &v26[4 * v25];
                v28 = v27 - (v16 + v9);
                if (v27 <= v16 + v9)
                {
LABEL_35:
                  CFAllocatorDeallocate(0, Typed);
                  return;
                }

                v29 = sub_100006750();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v31 = 134217984;
                  v32 = v28;
                  _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Denylist is %td bytes short for entry count", &v31, 0xCu);
                }
              }

              else
              {
                v18 = sub_100006750();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  sub_100041D1C(v11 + 2);
                }
              }
            }

            else
            {
              v20 = sub_100006750();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                sub_100041CA8(v11);
              }
            }
          }
        }

        else
        {
          v10 = sub_100006750();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_100041E20();
          }

          if (v9 < 1)
          {
            goto LABEL_30;
          }

          v11 = 0;
        }

        if (v11 + 1 >= 2)
        {
          munmap(v11, v9);
        }

LABEL_30:
        close(v8);
        goto LABEL_31;
      }

      v14 = *__error();
      v15 = sub_100006750();
      if (v14 == 2)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          sub_100041F20();
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100041EA4();
      }
    }

    else
    {
      v13 = sub_100006750();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100041F60();
      }
    }
  }

  else
  {
    v12 = sub_100006750();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100041F9C();
    }
  }

LABEL_31:
  v21 = sub_100006750();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_100041FD8();
  }

  v22 = mmap(0, 0x18uLL, 3, 4098, -1, 0);
  if (v22 == -1)
  {
    v30 = sub_100006750();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100042018();
    }

    abort();
  }

  v23 = v22;
  *(v22 + 2) = 0;
  *v22 = xmmword_100046C78;
  mprotect(v22, 0x18uLL, 1);
  *a2 = v23;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0xFFFFFFFFLL;
  a2[4] = v23;
  a2[5] = 24;
  if (Typed)
  {
    goto LABEL_35;
  }
}

uint64_t sub_10000DAD4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3 + 1 >= 2)
    {
      munmap(v3, v2);
    }
  }

  result = *(a1 + 24);
  if ((result & 0x80000000) == 0)
  {

    return close(result);
  }

  return result;
}

void *sub_10000DB34(uint64_t a1, void *__key)
{
  result = bsearch_b(__key, *(a1 + 8), *(*a1 + 12), 0x20uLL, &stru_10005DED8);
  if (result)
  {
    return (*(a1 + 16) + ((result - *(a1 + 8)) >> 3));
  }

  return result;
}

int sub_10000DB84(id a1, const void *a2, const void *a3)
{
  v3 = bswap64(*a2);
  v4 = bswap64(*a3);
  if (v3 == v4)
  {
    v3 = bswap64(*(a2 + 1));
    v4 = bswap64(*(a3 + 1));
    if (v3 == v4)
    {
      v3 = bswap64(*(a2 + 2));
      v4 = bswap64(*(a3 + 2));
      if (v3 == v4)
      {
        v3 = bswap64(*(a2 + 3));
        v4 = bswap64(*(a3 + 3));
        if (v3 == v4)
        {
          return 0;
        }
      }
    }
  }

  if (v3 < v4)
  {
    return -1;
  }

  return 1;
}

void sub_10000DC08(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

id sub_10000DC28(uint64_t a1, unsigned int a2)
{
  v2 = [NSData dataWithBytesNoCopy:a1 length:a2 freeWhenDone:0];
  v7 = 0;
  v3 = [NSPropertyListSerialization propertyListWithData:v2 options:0 format:0 error:&v7];
  v4 = v7;
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = sub_100006750();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100042054(v4, v5);
    }
  }

  return v3;
}

BOOL sub_10000DD10(void *a1, void *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000DDB4;
  v6[3] = &unk_10005DF00;
  v7 = a2;
  v3 = v7;
  v4 = [a1 indexOfObjectPassingTest:v6] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

uint64_t sub_10000DDE0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = sub_10000DEE0();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DF24;
  block[3] = &unk_10005DF28;
  v11 = v3;
  v12 = v4;
  v13 = &v14;
  v6 = v4;
  v7 = v3;
  dispatch_sync(v5, block);

  v8 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v8;
}

id sub_10000DEE0()
{
  if (qword_100067980 != -1)
  {
    sub_1000420CC();
  }

  v1 = qword_100067988;

  return v1;
}

void sub_10000DF24(uint64_t a1)
{
  v2 = [NSMutableArray alloc];
  v3 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:*(a1 + 32)];
  v4 = sub_10000DFF4(v3);
  v6 = [v2 initWithArray:v4];

  if (sub_10000DD10(v6, *(a1 + 40)))
  {
    v5 = 0;
  }

  else
  {
    [v6 addObject:*(a1 + 40)];
    sub_10000E0F4(v6, *(a1 + 32));
    v5 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v5;
}

id sub_10000DFF4(void *a1)
{
  v1 = a1;
  v2 = [[NSArray alloc] initWithContentsOfFile:v1];

  if (!v2)
  {
    v3 = sub_100006750();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "could not read in auth list (may be non-existing)", buf, 2u);
    }

    v4 = sub_100006750();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "creating empty auth list", v6, 2u);
    }

    v2 = objc_alloc_init(NSArray);
  }

  return v2;
}

void sub_10000E0F4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:v3];
  v6 = [v4 writeToFile:v5 atomically:1];

  if ((v6 & 1) == 0)
  {
    v7 = sub_100006750();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000420E0(v7);
    }
  }
}

uint64_t sub_10000E190(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = sub_10000DEE0();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E290;
  block[3] = &unk_10005DF28;
  v11 = v3;
  v12 = v4;
  v13 = &v14;
  v6 = v4;
  v7 = v3;
  dispatch_sync(v5, block);

  v8 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v8;
}

void sub_10000E290(uint64_t a1)
{
  v2 = [NSMutableArray alloc];
  v3 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:*(a1 + 32)];
  v4 = sub_10000DFF4(v3);
  v6 = [v2 initWithArray:v4];

  if (sub_10000DD10(v6, *(a1 + 40)))
  {
    [v6 removeObject:*(a1 + 40)];
    sub_10000E0F4(v6, *(a1 + 32));
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v5;
}

void sub_10000E360(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("auth-list-queue", v3);
  v2 = qword_100067988;
  qword_100067988 = v1;
}

CFTypeRef sub_10000E3C4(CFStringRef filePath, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  cf = 0;
  valuePtr = a2;
  v7 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, filePath, kCFURLPOSIXPathStyle, 0);
  if (!v7)
  {
    LODWORD(v10) = -402620406;
    if (!a4)
    {
      return cf;
    }

    goto LABEL_20;
  }

  v8 = v7;
  if (a2)
  {
    values = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
    v9 = CFDictionaryCreate(kCFAllocatorDefault, &kSecCodeAttributeUniversalFileOffset, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFRelease(values);
    v10 = SecStaticCodeCreateWithPathAndAttributes(v8, 0, v9, &cf);
    if (v9)
    {
      CFRelease(v9);
    }

    if (!v10)
    {
LABEL_6:
      if (!a3)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v10 = SecStaticCodeCreateWithPathAndAttributes(v7, 0, 0, &cf);
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v11 = sub_100006750();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(values) = 67109120;
    HIDWORD(values) = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failure creating static code: %d", &values, 8u);
  }

  LODWORD(v10) = sub_10000E5FC(v10);
  if (a3)
  {
LABEL_14:
    v12 = SecCodeSetDetachedSignature();
    if (v12)
    {
      v13 = v12;
      LODWORD(v10) = sub_10000E5FC(v12);
      if (cf)
      {
        v14 = sub_100006750();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(values) = 67109120;
          HIDWORD(values) = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failure setting detached signature: %d", &values, 8u);
        }

        CFRelease(cf);
        cf = 0;
      }
    }
  }

LABEL_19:
  CFRelease(v8);
  if (a4)
  {
LABEL_20:
    *a4 = v10;
  }

  return cf;
}

uint64_t sub_10000E5FC(uint64_t a1)
{
  v1 = a1;
  if (a1 > -67055)
  {
    switch(a1)
    {
      case 0xFFFEFA12:
        v2 = 22;
        break;
      case 0xFFFEFA4C:
        v2 = 18;
        break;
      case 0:
        return v1;
      default:
        goto LABEL_13;
    }

    return v2 | 0xE8008001;
  }

  if (a1 == -67062)
  {
    return 3892346908;
  }

  if (a1 == -67061)
  {
    return 3892346905;
  }

LABEL_13:
  if ((a1 - 100001) <= 0x6A)
  {
    return (a1 - 100000) | 0xC000u;
  }

  v3 = sub_100006750();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100042124();
  }

  v1 = 3892346881;

  return v1;
}

CFDictionaryRef sub_10000E70C(const __SecCode *a1)
{
  information = 0;
  v2 = objc_autoreleasePoolPush();
  LODWORD(a1) = SecCodeCopySigningInformation(a1, 0x23u, &information);
  objc_autoreleasePoolPop(v2);
  if (a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = information;
  }

  return v3;
}

const void *sub_10000E778(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, kSecCodeInfoUnique);
  v2 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v2;
}

const void *sub_10000E7B8(const __CFString *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v14 = 0;
  v5 = sub_10000E3C4(a1, a2, a3, &v14);
  v6 = v5;
  if (v5)
  {
    v7 = sub_10000E70C(v5);
    v8 = v7;
    if (!v7)
    {
      v10 = 0;
      v14 = -402620407;
      goto LABEL_13;
    }

    v9 = sub_10000E778(v7);
    if (v9)
    {
      v10 = v9;
      goto LABEL_13;
    }

    v14 = -402620415;
    v12 = sub_100006750();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Could not copy code directory hash.", buf, 2u);
    }
  }

  else
  {
    v11 = sub_100006750();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not copy signature, error 0x%x", buf, 8u);
    }

    v8 = 0;
  }

  v10 = 0;
LABEL_13:
  if (a4)
  {
    *a4 = v14;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v10;
}

id sub_10000E938()
{
  v0 = MGCopyAnswer();

  return v0;
}

uint64_t sub_10000E978()
{
  v0 = sub_10000E938();
  v1 = [v0 isEqualToString:@"Internal"];
  if ((MGGetBoolAnswer() & 1) == 0 && v1 && os_parse_boot_arg_string())
  {
    v2 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
    v3 = sub_100006750();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Using emulated device UDID: %{public}@\n", &v5, 0xCu);
    }
  }

  else
  {
    v2 = MGCopyAnswer();
  }

  return v2;
}

void sub_10000EAB4()
{
  v0 = objc_opt_new();
  [v0 setAllowsCellularAccess:1];
  [v0 setAllowsExpensiveAccess:1];
  [v0 setRequiresPowerPluggedIn:0];
  [v0 setDiscretionary:1];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10000F2C4;
  v48[3] = &unk_10005DF70;
  v33 = v0;
  dsema = dispatch_semaphore_create(0);
  v49 = dsema;
  [MAAsset startCatalogDownload:@"com.apple.MobileAsset.MobileIdentityService.DenyList" options:v0 then:v48];
  v1 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(dsema, v1);
  v35 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.MobileIdentityService.DenyList"];
  [v35 queryMetaDataSync];
  v2 = [v35 results];
  if (!v2 || (ResultFailure = MAIsQueryResultFailure(), v2, ResultFailure))
  {
    v4 = sub_100006750();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Denylist asset query failed: %@", &buf, 0xCu);
    }

    goto LABEL_54;
  }

  v54 = 0u;
  v55 = 0u;
  buf = 0u;
  v5 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"denylist.map"];
  sub_10000D724(v5, &buf);
  v37 = *(buf + 16);
  *v51 = buf;
  *&v51[16] = v54;
  v52 = v55;
  sub_10000DAD4(v51);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [v35 results];
  v6 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (!v6)
  {

    goto LABEL_46;
  }

  val = 0;
  v7 = *v45;
  v8 = ASAttributeCompatibilityVersion;
  v39 = ASAttributeContentVersion;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v45 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v44 + 1) + 8 * i);
      v11 = [v10 attributes];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 objectForKey:v8];
        if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v13 intValue]== 1)
        {
          v14 = [v12 objectForKey:v39];
          if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v15 = sub_100006750();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v16 = [v10 state];
              *v51 = 138412802;
              *&v51[4] = v10;
              *&v51[12] = 2112;
              *&v51[14] = v14;
              *&v51[22] = 2048;
              *&v51[24] = v16;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Seeing denylist asset '%@' (version '%@', state %ld)", v51, 0x20u);
            }

            v17 = [v14 unsignedLongLongValue];
            if (v17 > v37)
            {
              v18 = v10;
              v19 = val;
              val = v18;
              v37 = v17;
              goto LABEL_35;
            }
          }

          else
          {
            v19 = sub_100006750();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              if (v14)
              {
                v38 = [v14 debugDescription];
                v22 = v38;
                v23 = [v38 UTF8String];
              }

              else
              {
                v23 = "NULL";
              }

              *v51 = 136315138;
              *&v51[4] = v23;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Skipping asset with unparsable content version '%s'.", v51, 0xCu);
              if (v14)
              {
              }
            }

LABEL_35:
          }
        }

        else
        {
          v14 = sub_100006750();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            if (v13)
            {
              v2 = [v13 debugDescription];
              v20 = v2;
              v21 = [v2 UTF8String];
            }

            else
            {
              v21 = "NULL";
            }

            *v51 = 136315138;
            *&v51[4] = v21;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skipping asset with incompatible compatibility version '%s'.", v51, 0xCu);
            if (v13)
            {
            }
          }
        }

        goto LABEL_37;
      }

      v13 = sub_100006750();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100042198(&v42, v43, v13);
      }

LABEL_37:
    }

    v6 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  }

  while (v6);

  if (val)
  {
    v24 = sub_100006750();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [val assetId];
      v26 = [val state];
      [val state];
      v27 = MAStringForMAAssetState();
      *v51 = 138412802;
      *&v51[4] = v25;
      *&v51[12] = 2048;
      *&v51[14] = v26;
      *&v51[22] = 2112;
      *&v51[24] = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Using latest asset: %@, state: %ld (%@)", v51, 0x20u);
    }

    if ([val wasLocal])
    {
      v28 = [val getLocalUrl];
      v29 = [v28 path];

      if (v29)
      {
        v30 = sub_10000F40C(v29);
        v31 = sub_10000F488(v29);
        sub_10000F330(v30, v31);
      }

      else
      {
        v30 = sub_100006750();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_1000421D8();
        }
      }
    }

    else
    {
      *v51 = 0;
      *&v51[8] = v51;
      *&v51[16] = 0x3042000000;
      *&v51[24] = sub_10000F504;
      *&v52 = sub_10000F510;
      objc_initWeak(&v52 + 1, val);
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10000F518;
      v41[3] = &unk_10005DF98;
      v41[4] = v51;
      [val startDownload:v33 completionWithError:v41];
      _Block_object_dispose(v51, 8);
      objc_destroyWeak(&v52 + 1);
    }

    v32 = val;
    goto LABEL_53;
  }

LABEL_46:
  v32 = sub_100006750();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "No new denylist found.", v51, 2u);
  }

LABEL_53:

LABEL_54:
}

void sub_10000F29C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 224), 8);
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

intptr_t sub_10000F2C4(uint64_t a1)
{
  if (MAIsDownloadResultFailure())
  {
    v2 = sub_100006750();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100042214();
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000F330(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (qword_100067990 != -1)
  {
    sub_100042288();
  }

  v5 = qword_100067998;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000F980;
  v8[3] = &unk_10005DFE0;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, v8);
}

id sub_10000F40C(void *a1)
{
  v1 = a1;
  v2 = [NSString stringWithUTF8String:"denylist.map"];
  v3 = [v1 stringByAppendingPathComponent:v2];

  return v3;
}

id sub_10000F488(void *a1)
{
  v1 = a1;
  v2 = [NSString stringWithUTF8String:"DocumentCheckerDefinition.plist"];
  v3 = [v1 stringByAppendingPathComponent:v2];

  return v3;
}

void sub_10000F518(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MAIsDownloadResultFailure();
  v6 = sub_100006750();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      sub_100042314();
    }
  }

  else
  {
    if (v7)
    {
      sub_10004229C();
    }

    WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
    v6 = [WeakRetained getLocalUrl];

    if (v6)
    {
      v9 = [v6 path];
      v10 = v9;
      if (v9)
      {
        v11 = sub_10000F40C(v9);
        v12 = sub_10000F488(v10);
        sub_10000F330(v11, v12);
      }

      else
      {
        v11 = sub_100006750();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000422D8();
        }
      }
    }
  }
}

uint64_t sub_10000F644(const void **a1)
{
  connect = 0;
  input = *(*a1 + 3);
  v2 = sub_100006750();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Sending denylist to AMFI....", buf, 2u);
  }

  v3 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  v5 = MatchingService;
  if (MatchingService)
  {
    if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
    {
      v6 = sub_100006750();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100042388();
      }
    }

    else
    {
      if (!IOConnectCallMethod(connect, 9u, &input, 1u, a1[1], 32 * *(*a1 + 3), 0, 0, 0, 0))
      {
        goto LABEL_13;
      }

      v6 = sub_100006750();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000423F8();
      }
    }
  }

  else
  {
    v6 = sub_100006750();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100042468();
    }
  }

LABEL_13:
  result = connect;
  if (connect)
  {
    result = IOServiceClose(connect);
  }

  if (v5)
  {
    return IOObjectRelease(v5);
  }

  return result;
}

uint64_t sub_10000F7DC()
{
  connect = 0;
  v0 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  v2 = MatchingService;
  if (MatchingService)
  {
    if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
    {
      v3 = sub_100006750();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_100042388();
      }
    }

    else
    {
      if (!IOConnectCallMethod(connect, 0xDu, 0, 0, 0, 0, 0, 0, 0, 0))
      {
        goto LABEL_11;
      }

      v3 = sub_100006750();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000423F8();
      }
    }
  }

  else
  {
    v3 = sub_100006750();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100042468();
    }
  }

LABEL_11:
  result = connect;
  if (connect)
  {
    result = IOServiceClose(connect);
  }

  if (v2)
  {
    return IOObjectRelease(v2);
  }

  return result;
}

void sub_10000F91C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("blacklist-ingest", v3);
  v2 = qword_100067998;
  qword_100067998 = v1;
}

void sub_10000F980(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_100006750();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = [(__CFString *)v2 UTF8String];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Ingesting denylist '%s'", buf, 0xCu);
  }

  *from_fd = 0u;
  v72 = 0u;
  v70 = 0u;
  sub_10000D724(v2, &v70);
  if (from_fd[2] < 0)
  {
    v22 = sub_100006750();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10004283C();
    }

    goto LABEL_34;
  }

  v4 = *(v70 + 16);
  v5 = sub_100006750();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(__CFString *)v2 UTF8String];
    v7 = *(v70 + 12);
    *buf = 136315650;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = v4;
    *&buf[22] = 1024;
    *&buf[24] = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Denylist '%s' was issued at %{time_t}lld with %u entries.", buf, 0x1Cu);
  }

  *v73 = 0u;
  v74 = 0u;
  v8 = *(v70 + 12);
  if (v8)
  {
    v9 = 0;
    v10 = v73;
    v11 = *(&v70 + 1);
    while (1)
    {
      v12 = bswap64(*v11);
      v13 = bswap64(*v10);
      if (v12 != v13)
      {
        goto LABEL_13;
      }

      v12 = bswap64(v11[1]);
      v13 = bswap64(v10[1]);
      if (v12 == v13 && (v12 = bswap64(v11[2]), v13 = bswap64(v10[2]), v12 == v13) && (v12 = bswap64(v11[3]), v13 = bswap64(v10[3]), v12 == v13))
      {
        v14 = 0;
      }

      else
      {
LABEL_13:
        v14 = v12 < v13 ? -1 : 1;
      }

      if (v14 < 0)
      {
        break;
      }

      v10 = (*(&v70 + 1) + 32 * v9++);
      v11 += 4;
      if (v8 == v9)
      {
        goto LABEL_18;
      }
    }

    v23 = sub_100006750();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = sub_1000104E0(v11);
      v25 = [v24 UTF8String];
      v26 = sub_1000104E0(v10);
      v27 = [v26 UTF8String];
      *buf = 134218498;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = v25;
      *&buf[22] = 2080;
      *&buf[24] = v27;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Denylist entry number %zu smaller than previous entry: %s < %s", buf, 0x20u);
    }

    goto LABEL_32;
  }

LABEL_18:
  *buf = v70;
  *&buf[16] = *from_fd;
  v77 = v72;
  if (!sub_10000DB34(buf, "INTEGRITY_CHECK_SENTINEL_01"))
  {
    v23 = sub_100006750();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000427C4();
    }

LABEL_32:

    v22 = sub_100006750();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100042800();
    }

LABEL_34:

    *buf = v70;
    *&buf[16] = *from_fd;
    v77 = v72;
    v21 = buf;
LABEL_35:
    sub_10000DAD4(v21);
    goto LABEL_36;
  }

  v77 = 0u;
  memset(buf, 0, sizeof(buf));
  v15 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"denylist.map"];
  sub_10000D724(v15, buf);
  v16 = *&buf[24];
  v17 = sub_100006750();
  v18 = v17;
  if (v16 < 0)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Currently installed denylist is broken, replacing unconditionally.", v73, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = *(*buf + 16);
      *v73 = 134217984;
      *&v73[4] = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Existing denylist was issued at %lld", v73, 0xCu);
    }

    if (v4 < *(*buf + 16))
    {
      v20 = sub_100006750();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Denylist to ingest is older than current denylist, ignoring.", v73, 2u);
      }

      *v73 = *buf;
      v74 = *&buf[16];
      v75 = v77;
      sub_10000DAD4(v73);
      *v73 = v70;
      v74 = *from_fd;
      v75 = v72;
      v21 = v73;
      goto LABEL_35;
    }
  }

  *v73 = *buf;
  v74 = *&buf[16];
  v75 = v77;
  sub_10000DAD4(v73);
  *v73 = v70;
  v74 = *from_fd;
  v75 = v72;
  sub_10000F644(v73);
  v48 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"denylist.map.ingestXXXXXXX"];
  v49 = [v48 lengthOfBytesUsingEncoding:4];
  v50 = malloc_type_malloc(v49 + 1, 0x446B24D6uLL);
  if (!v50)
  {
    v63 = sub_100006750();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      sub_100042788();
    }

    *v73 = v70;
    v74 = *from_fd;
    v75 = v72;
    sub_10000DAD4(v73);
    goto LABEL_98;
  }

  v51 = v50;
  strlcpy(v50, [v48 UTF8String], v49 + 1);
  v52 = mkstemp(v51);
  if (v52 < 0)
  {
    v65 = sub_100006750();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      sub_1000426F0();
    }

    *v73 = v70;
    v74 = *from_fd;
    v75 = v72;
    sub_10000DAD4(v73);
    goto LABEL_97;
  }

  v53 = v52;
  if (fchmod(v52, 0x1A4u) < 0)
  {
    v67 = sub_100006750();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      sub_100042658();
    }

    *v73 = v70;
    v74 = *from_fd;
    v75 = v72;
    sub_10000DAD4(v73);
    close(v53);
  }

  else
  {
    lseek(from_fd[2], 0, 0);
    v54 = fcopyfile(from_fd[2], v53, 0, 8u);
    v55 = lseek(v53, 0, 2);
    close(v53);
    *v73 = v70;
    v74 = *from_fd;
    v75 = v72;
    sub_10000DAD4(v73);
    if (v54 < 0)
    {
      v68 = sub_100006750();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        sub_1000425D0();
      }
    }

    else
    {
      if (v55 == *(&v72 + 1))
      {
        v56 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"denylist.map"];
        v57 = [v56 UTF8String];

        rename(v51, v57, v58);
        if ((v59 & 0x80000000) == 0)
        {
          free(v51);
          v60 = sub_100006750();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
          {
            v61 = [(__CFString *)v2 UTF8String];
            *v73 = 136315138;
            *&v73[4] = v61;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "Successfully ingested new denylist '%s'", v73, 0xCu);
          }

          goto LABEL_98;
        }

        v69 = sub_100006750();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          sub_100042530();
        }

        goto LABEL_96;
      }

      v68 = sub_100006750();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        sub_1000424A4(&v72 + 1, v55, v68);
      }
    }
  }

LABEL_96:
  unlink(v51);
LABEL_97:
  free(v51);
LABEL_98:

LABEL_36:
  v28 = *(a1 + 40);
  v29 = sub_100006750();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = [v28 UTF8String];
    *buf = 136315138;
    *&buf[4] = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Ingesting DocumentCheckList '%s'", buf, 0xCu);
  }

  v31 = open([v28 cStringUsingEncoding:4], 0);
  if ((v31 & 0x80000000) == 0)
  {
    v32 = v31;
    v33 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"DocumentCheckerDefinition.plist.ingestXXXXXXX"];
    v34 = [v33 lengthOfBytesUsingEncoding:4];
    v35 = malloc_type_malloc(v34 + 1, 0x19EDD7EuLL);
    if (v35)
    {
      v36 = v35;
      strlcpy(v35, [v33 UTF8String], v34 + 1);
      v37 = mkstemp(v36);
      if (v37 < 0)
      {
        v47 = sub_100006750();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_100042AA8();
        }

        close(v32);
      }

      else
      {
        v38 = v37;
        if (fchmod(v37, 0x1A4u) < 0)
        {
          v62 = sub_100006750();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            sub_100042A10();
          }

          close(v32);
          close(v38);
        }

        else
        {
          v39 = fcopyfile(v32, v38, 0, 8u);
          close(v32);
          close(v38);
          if (v39 < 0)
          {
            v64 = sub_100006750();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              sub_100042988();
            }
          }

          else
          {
            v40 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"DocumentCheckerDefinition.plist"];
            v41 = [v40 UTF8String];

            rename(v36, v41, v42);
            if ((v43 & 0x80000000) == 0)
            {
              if (notify_post("com.apple.mis.doc-check-list-ingested"))
              {
                v44 = sub_100006750();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  sub_100042918();
                }
              }

              free(v36);
              v45 = sub_100006750();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                v46 = [v28 UTF8String];
                *buf = 136315138;
                *&buf[4] = v46;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Successfully ingested new DocCheckList '%s'", buf, 0xCu);
              }

LABEL_54:

              goto LABEL_87;
            }

            v66 = sub_100006750();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              sub_100042878();
            }
          }
        }

        unlink(v36);
      }

      free(v36);
      goto LABEL_87;
    }

    v45 = sub_100006750();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_100042B40();
    }

    goto LABEL_54;
  }

  v33 = sub_100006750();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    sub_100042B7C();
  }

LABEL_87:

  sub_1000067E8();
}

__CFString *sub_1000104E0(uint64_t a1)
{
  v1 = [NSData dataWithBytes:a1 length:28];
  v2 = sub_100011FEC(v1);

  return v2;
}

void sub_1000105B0(void *a1, void *a2)
{
  v3 = a2;
  v4 = [NSMutableString stringWithString:off_100066300];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100010730;
  v6[3] = &unk_10005E008;
  v7 = v3;
  v5 = v3;
  sub_100010674(a1, v4, v6);
}

void sub_100010674(void *a1, void *a2, void *a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010740;
  v7[3] = &unk_10005E030;
  v8 = a2;
  v9 = a3;
  v5 = v9;
  v6 = v8;
  [a1 enumerateKeysAndObjectsUsingBlock:v7];
}

void sub_100010740(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  *a4 = 0;
  v7 = *(a1 + 32);
  v8 = a3;
  [v7 appendString:v9];
  [*(a1 + 32) appendString:off_100066300];
  sub_100010804(*(a1 + 32), v8, *(a1 + 40));

  [*(a1 + 32) deleteCharactersInRange:{objc_msgSend(*(a1 + 32), "length") + ~objc_msgSend(v9, "length"), objc_msgSend(v9, "length") + 1}];
}

void sub_100010804(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_100010674(v6, v5, v7);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [NSString stringWithFormat:@"%@%@%@", @"string", v5, v6];
        v7[2](v7, v8);

        if (![v6 isEqual:@"*"])
        {
          goto LABEL_16;
        }

        v9 = [NSString stringWithFormat:@"%@%@%@", @"BOOL", v5, v6];
        v7[2](v7, v9);

        v10 = [NSString stringWithFormat:@"%@%@%@", @"number", v5, v6];
        v7[2](v7, v10);
      }

      else
      {
        v11 = CFGetTypeID(v6);
        if (v11 == CFBooleanGetTypeID())
        {
          if (CFEqual(v6, kCFBooleanTrue))
          {
            v12 = @"true";
          }

          else
          {
            v12 = @"false";
          }

          v10 = [NSString stringWithFormat:@"%@%@%@", @"BOOL", v5, v12];
          v7[2](v7, v10);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            abort();
          }

          v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%@%lld", @"number", v5, [v6 longLongValue]);
          v7[2](v7, v10);
        }
      }

      goto LABEL_16;
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100010B08;
    v13[3] = &unk_10005E058;
    v14 = v5;
    v15 = v7;
    [v6 enumerateObjectsUsingBlock:v13];
  }

LABEL_16:
}

void sub_10001123C(void *a1)
{
  v1 = a1;
  v2 = sub_100006750();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Revalidating apps", buf, 2u);
  }

  v60[0] = kMISValidationOptionValidateSignatureOnly;
  v60[1] = kMISValidationOptionOnlineAuthorization;
  v61[0] = kCFBooleanTrue;
  v61[1] = kCFBooleanTrue;
  v60[2] = kMISValidationOptionOnlineCheckType;
  v60[3] = @"OnlineAuthorizationOnAllMatchingProfiles";
  v61[2] = &off_1000613C8;
  v61[3] = kCFBooleanTrue;
  v42 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:4];
  v3 = objc_opt_new();
  [LSApplicationRecord enumeratorWithOptions:0];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v4 = v51 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v48 objects:v59 count:16];
  v41 = v4;
  v40 = v1;
  if (v5)
  {
    v7 = v5;
    v8 = *v49;
    *&v6 = 138412290;
    v39 = v6;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v48 + 1) + 8 * i);
        if (v1 && xpc_activity_should_defer(v1))
        {
          v11 = xpc_activity_set_state(v1, 3);
          v12 = sub_100006750();
          v13 = v12;
          if (v11)
          {
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deferring revalidateApps activity", buf, 2u);
            }

            v38 = v4;
            goto LABEL_41;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v39;
            v56 = v1;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to defer %@", buf, 0xCu);
          }
        }

        if ([v10 isProfileValidated])
        {
          v14 = sub_100006750();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v10 URL];
            v16 = [v15 path];
            *buf = 138543362;
            v56 = v16;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "revalidateApps: Checking %{public}@", buf, 0xCu);
          }

          theDict = 0;
          v17 = [v10 URL];
          v18 = [v17 path];
          v19 = MISValidateSignatureAndCopyInfo();

          v20 = sub_100006750();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v10 URL];
            v22 = [v21 path];
            *buf = 138543618;
            v56 = v22;
            v57 = 1024;
            v58 = v19;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "App revalidation: Failed to validate app %{public}@, 0%x", buf, 0x12u);
          }

          *buf = 0;
          v23 = [v10 URL];
          v24 = [v23 path];
          v25 = sub_10000E7B8(v24, 0, 0, buf);

          if (v25)
          {
            v4 = v41;
            [v3 addObject:v25];
          }

          else
          {
            v25 = sub_100006750();
            v4 = v41;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_100042C14(v53, v10, &v54, v25);
            }
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v48 objects:v59 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v26 = sub_1000032A4();
  v27 = [v26 getOnlineAuthEntriesNoThrow];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = v27;
  v28 = [v13 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v44;
    do
    {
      for (j = 0; j != v29; j = j + 1)
      {
        if (*v44 != v30)
        {
          objc_enumerationMutation(v13);
        }

        v32 = *(*(&v43 + 1) + 8 * j);
        v33 = [v32 cdHash];
        v34 = [v3 containsObject:v33];

        if ((v34 & 1) == 0)
        {
          v35 = sub_100006750();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v56 = v32;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Pruning online auth entry: %{public}@", buf, 0xCu);
          }

          v36 = sub_1000032A4();
          v37 = [v32 cdHash];
          [v36 deleteOnlineAuthEntryNoThrowWithCdHash:v37];
        }
      }

      v29 = [v13 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v29);
  }

  v38 = v13;
  v4 = v41;
LABEL_41:
}

id sub_10001186C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!objc_opt_class())
  {
    v5 = sub_100006750();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v13 = "PVAppIdentityDigest not supported";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v13, buf, 2u);
    }

LABEL_10:
    v12 = &__NSDictionary0__struct;
    goto LABEL_15;
  }

  if (!&_PVAppIdentity_GenerateDigestWithCompletion)
  {
    v5 = sub_100006750();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v13 = "Digest calculation not supported";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v5 = [NSURL fileURLWithPath:v3];
  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = sub_100011B80;
  v22 = sub_100011B90;
  v23 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = dispatch_get_global_queue(21, 0);
  v8 = v6;
  v9 = v3;
  v17 = v9;
  PVAppIdentity_GenerateDigestWithCompletion();

  v10 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v8, v10);
  v11 = *(v19 + 5);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v14 = sub_100006750();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v24 = 138412290;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Timed out digest calculation for %@", v24, 0xCu);
    }

    v15 = +[PVAppIdentityDigest digestWithTimeoutError];
    v12 = [v15 asDictionary];
  }

  _Block_object_dispose(buf, 8);
LABEL_15:

  return v12;
}

void sub_100011B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100011B80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100011B98(uint64_t a1, void *a2)
{
  v3 = [a2 asDictionary];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  dispatch_semaphore_signal(*(a1 + 32));
  v6 = sub_100006750();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Succesfully calculated digest for %@", &v8, 0xCu);
  }
}

uint64_t sub_100011E74(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@predicate");
  sqlite3_bind_text(a2, v5, [*(a1 + 40) UTF8String], -1, 0);
  v6 = sqlite3_bind_parameter_index(a2, "@wildcard");
  v7 = *(a1 + 48);

  return sqlite3_bind_int(a2, v6, v7);
}

const void *sub_100011F44()
{
  v0 = sub_10000E978();
  if (!v0)
  {
    v4 = sub_100006750();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100042CE8(v4);
    }

    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFStringGetTypeID())
  {
    v3 = sub_100006750();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100042CA4(v3);
    }

    CFRelease(v1);
    return 0;
  }

  return v1;
}

const __CFString *sub_100011FEC(const __CFData *a1)
{
  if (!a1)
  {
    return @"NULL";
  }

  Length = CFDataGetLength(a1);
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
  BytePtr = CFDataGetBytePtr(a1);
  v5 = CFDataGetLength(a1);
  if (v5 >= 1)
  {
    v6 = v5;
    do
    {
      v7 = *BytePtr++;
      CFStringAppendFormat(Mutable, 0, @"%02x", v7);
      --v6;
    }

    while (v6);
  }

  return Mutable;
}

__CFString *sub_100012098(const __CFData *a1)
{
  v1 = sub_100011FEC(a1);

  return v1;
}

void *sub_1000120C0(size_t size)
{
  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 0x10uLL, size, 0xF68CEDE8uLL))
  {
    bzero(memptr, size);
  }

  return memptr;
}

void *sub_100012118(const void *a1, size_t a2, size_t size)
{
  result = sub_1000120C0(size);
  if (result)
  {

    return memcpy(result, a1, a2);
  }

  return result;
}

uint64_t sub_100012170(mach_port_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *&v19[4] = 0;
  outputStructCnt = 88;
  memset(&c, 0, sizeof(c));
  data = CFAbsoluteTimeGetCurrent() & 0xFFFFFFFFFF800000;
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, &data, 8u);
  CC_SHA256_Final(md, &c);
  v15 = *md;
  outputStruct[0] = a2;
  outputStruct[1] = a3;
  v14 = a4;
  v16 = 0x8000000000;
  v17 = 0u;
  v18 = 0u;
  *v19 = 2106;
  return IOConnectCallStructMethod(a1, 1u, outputStruct, 0x58uLL, outputStruct, &outputStructCnt);
}

uint64_t sub_1000122D8(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_10001236C(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1000123A0(uint64_t a1, unint64_t a2, int a3)
{
  if (a2 >> 60 == 15)
  {
    v5 = (*(*v3 + 88))();

    return sqlite3_bind_null(v5, a3);
  }

  else
  {

    sub_1000130F0(a1, a2);
    sub_100012E44(a1, a2, v3, a3);

    return sub_100013158(a1, a2);
  }
}

uint64_t sub_100012480(const void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = (*(*a3 + 88))();
  if (a1)
  {
    v8 = a2 - a1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v8 <= 0x7FFFFFFF)
  {
    if (qword_1000679A8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  v11 = v7;
  swift_once();
  v7 = v11;
LABEL_7:
  v9 = qword_10006A980;

  return sqlite3_bind_blob(v7, a4, a1, v8, v9);
}

_BYTE *sub_100012564(int a1)
{
  v3 = *(*v1 + 88);
  v4 = v3();
  result = sqlite3_column_blob(v4, a1);
  if (result)
  {
    v6 = result;
    v7 = v3();
    v8 = sqlite3_column_bytes(v7, a1);
    return sub_100013278(v6, v8);
  }

  return result;
}

uint64_t sub_1000125F0(uint64_t a1, int a2)
{
  result = sub_100043144();
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = v5;
  v7 = (*(*v2 + 88))(result);

  return sqlite3_bind_int64(v7, a2, v6);
}

uint64_t sub_1000126AC(int a1)
{
  v3 = (*(*v1 + 88))();
  v4.n128_f64[0] = sqlite3_column_int64(v3, a1);

  return Date.init(timeIntervalSince1970:)(v4);
}

uint64_t sub_10001271C(sqlite3_int64 a1, int a2)
{
  v5 = (*(*v2 + 88))();

  return sqlite3_bind_int64(v5, a2, a1);
}

sqlite3_int64 sub_100012784(int a1)
{
  v3 = (*(*v1 + 88))();

  return sqlite3_column_int64(v3, a1);
}

uint64_t sub_1000127DC(char a1, int a2)
{
  v5 = (*(*v2 + 88))();

  return sqlite3_bind_int64(v5, a2, a1 & 1);
}

uint64_t sub_100012898(uint64_t result, uint64_t a2, int a3)
{
  if (a2)
  {
    v6 = result;

    return sub_1000128F4(v6, a2, v3, a3);
  }

  return result;
}

uint64_t sub_1000128F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *v12 = a1;
    v13 = a2 & 0xFFFFFFFFFFFFFFLL;
    v6 = (*(*a3 + 88))();
    if (qword_1000679A8 != -1)
    {
      v10 = v6;
      swift_once();
      v6 = v10;
    }

    v7 = qword_10006A980;
    v8 = v12;
    goto LABEL_10;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_12:
    sub_100043614();
  }

  v5 = a2 & 0xFFFFFFFFFFFFFFFLL;
  v6 = (*(*a3 + 88))();
  if (qword_1000679A8 != -1)
  {
    v11 = v6;
    swift_once();
    v6 = v11;
  }

  v7 = qword_10006A980;
  v8 = (v5 + 32);
LABEL_10:
  sqlite3_bind_text(v6, a4, v8, -1, v7);
}

const unsigned __int8 *sub_100012A7C(int a1)
{
  v3 = (*(*v1 + 88))();
  result = sqlite3_column_text(v3, a1);
  if (result)
  {
    return sub_1000433A4();
  }

  return result;
}

uint64_t sub_100012AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v18 = sub_1000432E4();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v24 = sub_1000133A0;
  v25 = v10;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100012D60;
  v23 = &unk_10005E140;
  v11 = _Block_copy(&aBlock);
  sub_100013448(a3);

  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = v9;
  v24 = sub_1000134A0;
  v25 = v12;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100012DB4;
  v23 = &unk_10005E190;
  v13 = _Block_copy(&aBlock);
  sub_100013448(a5);

  v14 = [v19 executeQuery:v18 withBind:v11 withResults:v13];
  _Block_release(v13);
  _Block_release(v11);

  if (v14)
  {
    sub_100013550();
    swift_allocError();
    *v15 = v14;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
LABEL_5:
    swift_willThrow();
  }

  swift_beginAccess();
  if (*(v9 + 16))
  {
    swift_errorRetain();
    goto LABEL_5;
  }
}

uint64_t sub_100012D60(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_100012DB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_100013698();
  v5 = sub_1000432B4();

  v4(a2, v5);
}

uint64_t sub_100012E44(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v6 = BYTE6(a2);
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v26, 0, 14);
      a1 = (*(*a3 + 88))();
      if (qword_1000679A8 == -1)
      {
LABEL_25:
        v9 = qword_10006A980;
        v10 = a4;
        v11 = 0;
LABEL_26:
        sqlite3_bind_blob(a1, v10, v26, v11, v9);
      }

LABEL_29:
      v25 = a1;
      swift_once();
      a1 = v25;
      goto LABEL_25;
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    a1 = sub_100042DF4();
    v14 = a1;
    if (a1)
    {
      a1 = sub_100042E24();
      if (__OFSUB__(v12, a1))
      {
        __break(1u);
        goto LABEL_31;
      }

      v14 += v12 - a1;
    }

    v15 = __OFSUB__(v13, v12);
    v16 = v13 - v12;
    if (!v15)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v26[0] = a1;
    LOWORD(v26[1]) = a2;
    BYTE2(v26[1]) = BYTE2(a2);
    BYTE3(v26[1]) = BYTE3(a2);
    BYTE4(v26[1]) = BYTE4(a2);
    BYTE5(v26[1]) = BYTE5(a2);
    a1 = (*(*a3 + 88))();
    v8 = v6;
    if (qword_1000679A8 != -1)
    {
      v24 = a1;
      swift_once();
      a1 = v24;
    }

    v9 = qword_10006A980;
    v10 = a4;
    v11 = v8;
    goto LABEL_26;
  }

  v17 = a1;
  v16 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v14 = sub_100042DF4();
  if (v14)
  {
    v18 = sub_100042E24();
    if (!__OFSUB__(v17, v18))
    {
      v14 += v17 - v18;
      goto LABEL_17;
    }

LABEL_31:
    __break(1u);
  }

LABEL_17:
  v19 = sub_100042E14();
  if (v19 >= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v19;
  }

  v21 = &v14[v20];
  if (v14)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  sub_100012480(v14, v22, a3, a4);
}

uint64_t sub_1000130F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100013104(a1, a2);
  }

  return a1;
}

uint64_t sub_100013104(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100013158(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001316C(a1, a2);
  }

  return a1;
}

uint64_t sub_10001316C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000131C0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100013278(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1000131C0(a1, &a1[a2]);
  }

  v3 = sub_100042E34();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_100042DE4();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_100043054();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_100013328()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013360()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000133A0(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 24);
    type metadata accessor for SQLStatement();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;

    v2(v5);

    return sub_1000136E4(v2);
  }

  return result;
}

uint64_t sub_100013430(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013448(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100013458()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000134A0(uint64_t result)
{
  v2 = v1[2];
  if (v2)
  {
    v3 = result;
    v4 = v1[3];
    v5 = v1[4];
    type metadata accessor for SQLStatement();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;

    v2(v6);

    return sub_1000136E4(v2);
  }

  return result;
}

unint64_t sub_100013550()
{
  result = qword_100066368;
  if (!qword_100066368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066368);
  }

  return result;
}

__n128 sub_1000135B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000135C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001360C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_100013698()
{
  result = qword_100066478;
  if (!qword_100066478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100066478);
  }

  return result;
}

uint64_t sub_1000136E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000136F4(const char *a1)
{
  v3 = *(v1 + 24);
  v4 = (*(**(v1 + 16) + 88))();
  if (qword_1000679A8 != -1)
  {
    v6 = v4;
    swift_once();
    v4 = v6;
  }

  return sqlite3_bind_text(v4, v3, a1, -1, qword_10006A980);
}

uint64_t sub_1000137B0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000430F4();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62 == 2)
  {
    v8 = *(a1 + 16);
  }

  sub_100013104(a1, a2);
  sub_100043104();
  sub_1000139DC();
  sub_1000435B4();
  if (v23)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
    v19 = xmmword_100046DE0;
    do
    {
      v11 = v22;
      sub_100013A34(&qword_100066488, &qword_100046DF0);
      v12 = swift_allocObject();
      *(v12 + 16) = v19;
      *(v12 + 56) = &type metadata for UInt8;
      *(v12 + 64) = &protocol witness table for UInt8;
      *(v12 + 32) = v11;
      v13 = sub_100043334();
      v15 = v14;
      v20 = v9;
      v21 = v10;

      v24._countAndFlagsBits = v13;
      v24._object = v15;
      sub_100043394(v24);

      v9 = v20;
      v10 = v21;
      sub_1000435B4();
    }

    while (v23 != 1);
  }

  (*(v18 + 8))(v7, v4);
  return v9;
}

unint64_t sub_1000139DC()
{
  result = qword_100066480;
  if (!qword_100066480)
  {
    sub_1000430F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066480);
  }

  return result;
}

uint64_t sub_100013A34(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_100013A7C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100013A34(&qword_100066490, &unk_100046EA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100013AF0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_100013B38(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100013B7C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

int *sub_100013BEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100043004();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v48 - v12;
  __chkstk_darwin(v11);
  v15 = (&v48 - v14);
  v16 = [a1 bundleIdentifier];
  if (v16)
  {
    v17 = v16;
    v54 = sub_100043314();
    v53 = v18;

    v19 = [a1 URL];
    sub_100042FA4();

    v20 = sub_10001CD78(v15);
    if (v2)
    {

      v52 = 0;
      v50 = 0;
      v51 = 0xF000000000000000;
    }

    else
    {
      v51 = v22;
      v52 = v21;
      v50 = v20;
    }

    (*(v6 + 8))(v15, v5);
    v27 = [a1 URL];
    sub_100042FA4();

    v28 = [a1 teamIdentifier];
    if (v28)
    {
      v29 = v28;
      v30 = sub_100043314();
      v48 = v31;
      v49 = v30;
    }

    else
    {
      v48 = 0;
      v49 = 0;
    }

    v32 = v5;
    v33 = [a1 iTunesMetadata];
    v34 = [v33 versionIdentifier];

    v35 = [a1 uniqueInstallIdentifier];
    if (v35)
    {
      v36 = v35;
      v37 = sub_1000430B4();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0xF000000000000000;
    }

    (*(v6 + 32))(a2, v13, v32);
    result = type metadata accessor for AppRecord(0);
    v40 = (a2 + result[5]);
    v41 = v53;
    *v40 = v54;
    v40[1] = v41;
    v42 = (a2 + result[6]);
    v43 = v48;
    *v42 = v49;
    v42[1] = v43;
    *(a2 + result[7]) = v34;
    v44 = (a2 + result[8]);
    *v44 = v37;
    v44[1] = v39;
    v45 = (a2 + result[9]);
    v46 = v51;
    v47 = v52;
    *v45 = v50;
    v45[1] = v47;
    v45[2] = v46;
  }

  else
  {
    type metadata accessor for AppManagerError(0);
    sub_100013FC4();
    swift_allocError();
    v24 = v23;
    v25 = [a1 URL];
    sub_100042FA4();

    (*(v6 + 32))(v24, v10, v5);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100013F8C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100013FC4()
{
  result = qword_100066498;
  if (!qword_100066498)
  {
    type metadata accessor for AppManagerError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066498);
  }

  return result;
}

uint64_t sub_10001401C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() enumeratorWithOptions:0];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100015628;
  *(v6 + 24) = v5;
  v9[4] = sub_100015630;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100014708;
  v9[3] = &unk_10005E310;
  v7 = _Block_copy(v9);

  [v4 swift_forEach:v7];

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001419C(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v25[1] = a3;
  v26 = a2;
  v4 = sub_1000431E4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for AppRecord(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v28 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100043004();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v27 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v25 - v14;
  result = [a1 teamIdentifier];
  if (!result)
  {
    return result;
  }

  v17 = [a1 teamIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = sub_100043314();
    v21 = v20;

    if (v19 == 0x3030303030303030 && v21 == 0xEA00000000003030)
    {
    }

    v22 = sub_1000437F4();

    if (v22)
    {
      return result;
    }
  }

  if (![a1 isProfileValidated] || (result = objc_msgSend(a1, "isBeta"), result))
  {
    v23 = [a1 URL];
    sub_100042FA4();

    LOBYTE(v23) = sub_1000179C4(v15);
    v25[0] = *(v10 + 8);
    result = (v25[0])(v15, v9);
    if ((v23 & 1) == 0)
    {
      result = [a1 isDeletableSystemApplication];
      if ((result & 1) == 0)
      {
        v24 = v28;
        sub_100013BEC(a1, v28);
        v26(v24);
        return sub_1000156D4(v24);
      }
    }
  }

  return result;
}

void sub_100014708(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

void sub_100014754(unint64_t a1, uint64_t *a2)
{
  v123 = a1;
  v3 = type metadata accessor for AppRecord(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v120 = &v109 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v109 - v11;
  __chkstk_darwin(v10);
  v14 = &v109 - v13;
  v15 = sub_1000431E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v22 = __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v26 = &v109 - v25;
  v27 = (a2 + *(v3 + 32));
  v126 = v27[1];
  if (v126 >> 60 == 15)
  {
    v28 = sub_1000212A8();
    (*(v16 + 16))(v20, v28, v15);
    sub_100015670(a2, v7);
    v29 = sub_1000431C4();
    v30 = sub_1000434A4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v125 = a2;
      v32 = v31;
      v33 = v16;
      v34 = swift_slowAlloc();
      v127 = v34;
      *v32 = 136446210;
      v35 = sub_100042FC4();
      v122 = v15;
      v37 = v36;
      sub_1000156D4(v7);
      v38 = sub_100015730(v35, v37, &v127);

      *(v32 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unable to add launch warning to app without installation ID: %{public}s", v32, 0xCu);
      sub_100013B7C(v34);

      a2 = v125;

      (*(v33 + 8))(v20, v122);
    }

    else
    {

      sub_1000156D4(v7);
      (*(v16 + 8))(v20, v15);
    }

    type metadata accessor for AppManagerError(0);
    sub_100013FC4();
    swift_allocError();
    v54 = v53;
    v55 = sub_100043004();
    (*(*(v55 - 8) + 16))(v54, a2, v55);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v112 = v24;
    v113 = v12;
    v114 = v23;
    v121 = v3;
    v39 = *v27;
    sub_100013104(*v27, v126);
    v40 = sub_1000212A8();
    v41 = *(v16 + 16);
    v115 = v40;
    v116 = v41;
    v117 = v16 + 16;
    (v41)(v26);
    v125 = a2;
    sub_100015670(a2, v14);
    v42 = sub_1000431C4();
    v43 = sub_1000434B4();
    v44 = os_log_type_enabled(v42, v43);
    v119 = v16;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v127 = v46;
      *v45 = 136446210;
      v47 = v121;
      v48 = &v14[*(v121 + 20)];
      v122 = v15;
      v118 = v39;
      v49 = *v48;
      v50 = v48[1];

      sub_1000156D4(v14);
      v51 = sub_100015730(v49, v50, &v127);
      v39 = v118;

      *(v45 + 4) = v51;
      v15 = v122;
      _os_log_impl(&_mh_execute_header, v42, v43, "Adding launch warning mark to: %{public}s", v45, 0xCu);
      sub_100013B7C(v46);

      v52 = *(v119 + 8);
      v52(v26, v15);
    }

    else
    {

      sub_1000156D4(v14);
      v52 = *(v16 + 8);
      v52(v26, v15);
      v47 = v121;
    }

    v56 = (v125 + *(v47 + 20));
    v57 = *v56;
    v58 = v56[1];
    v59 = objc_allocWithZone(MIAppIdentity);
    v60 = sub_1000432E4();
    v61 = [v59 initWithBundleID:v60];

    v62 = v124;
    v63 = (*(*v123 + 112))();
    if (v62)
    {

      sub_100013158(v39, v126);
    }

    else
    {
      v65 = v63;
      v66 = v64;
      v124 = v52;
      v67 = v61;
      isa = sub_100043094().super.isa;
      v69 = v39;
      v70 = v66;
      v71 = sub_100043094().super.isa;
      v127 = 0;
      v72 = MISetLaunchWarning();

      v73 = v65;
      v74 = v127;
      if (v72)
      {
        v75 = v127;

        sub_100013158(v69, v126);
        sub_10001316C(v73, v70);
      }

      else
      {
        v110 = v67;
        v111 = v73;
        v123 = v70;
        v118 = v69;
        if (v127)
        {
          v76 = v114;
          v116(v114, v115, v15);
          v77 = v113;
          sub_100015670(v125, v113);
          v78 = v74;
          v79 = sub_1000431C4();
          v80 = v15;
          v81 = sub_1000434B4();

          if (os_log_type_enabled(v79, v81))
          {
            v82 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            v127 = v125;
            *v82 = 136446466;
            v84 = (v77 + *(v121 + 20));
            v122 = v80;
            v85 = *v84;
            v86 = v84[1];

            sub_1000156D4(v77);
            v87 = sub_100015730(v85, v86, &v127);

            *(v82 + 4) = v87;
            *(v82 + 12) = 2114;
            *(v82 + 14) = v78;
            *v83 = v74;
            v88 = v78;
            _os_log_impl(&_mh_execute_header, v79, v81, "Failed to add launch warning mark: %{public}s, %{public}@", v82, 0x16u);
            sub_100015C64(v83);

            sub_100013B7C(v125);

            v89 = v114;
            v90 = v122;
          }

          else
          {

            sub_1000156D4(v77);
            v89 = v76;
            v90 = v80;
          }

          v124(v89, v90);
          v105 = v110;
          swift_willThrow();
          v106 = v78;

          sub_100013158(v118, v126);
          sub_10001316C(v111, v123);
        }

        else
        {
          v91 = v112;
          v116(v112, v115, v15);
          v92 = v120;
          sub_100015670(v125, v120);
          v93 = sub_1000431C4();
          v94 = sub_1000434B4();
          v95 = os_log_type_enabled(v93, v94);
          v96 = v124;
          if (v95)
          {
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v127 = v98;
            *v97 = 136315138;
            v99 = (v92 + *(v121 + 20));
            v122 = v15;
            v100 = *v99;
            v101 = v99[1];

            sub_1000156D4(v92);
            v102 = sub_100015730(v100, v101, &v127);

            *(v97 + 4) = v102;
            _os_log_impl(&_mh_execute_header, v93, v94, "Failed to add launch warning mark with no error: %s", v97, 0xCu);
            sub_100013B7C(v98);

            v103 = v91;
            v104 = v122;
          }

          else
          {

            sub_1000156D4(v92);
            v103 = v91;
            v104 = v15;
          }

          v96(v103, v104);
          v107 = v118;
          v108 = v111;
          type metadata accessor for AppManagerError(0);
          sub_100013FC4();
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_100013158(v107, v126);
          sub_10001316C(v108, v123);
        }
      }
    }
  }
}

id sub_1000151D0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000431E4();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(RBSTerminateContext);
  v9 = sub_1000432E4();
  v10 = [v8 initWithExplanation:v9];

  [v10 setMaximumTerminationResistance:40];
  v28 = a1;
  v11 = sub_1000432E4();
  v12 = [objc_opt_self() predicateMatchingBundleIdentifier:v11];

  v13 = [objc_allocWithZone(RBSTerminateRequest) initWithPredicate:v12 context:v10];
  v30 = 0;
  v14 = [v13 execute:&v30];
  if (v14)
  {
    v15 = v30;
  }

  else
  {
    v16 = v30;
    v17 = sub_100042F44();

    swift_willThrow();
    v18 = sub_1000212A8();
    (*(v29 + 16))(v7, v18, v4);

    v19 = sub_1000431C4();
    v20 = sub_1000434A4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v26[1] = v17;
      v22 = v21;
      v23 = swift_slowAlloc();
      v27 = v4;
      v24 = v23;
      v30 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_100015730(v28, a2, &v30);
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to terminate app: %s", v22, 0xCu);
      sub_100013B7C(v24);

      (*(v29 + 8))(v7, v27);
    }

    else
    {

      (*(v29 + 8))(v7, v4);
    }
  }

  return v14;
}

uint64_t sub_100015630()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100015658(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100015670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000156D4(uint64_t a1)
{
  v2 = type metadata accessor for AppRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015730(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000157FC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001607C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100013B7C(v11);
  return v7;
}

unint64_t sub_1000157FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100015908(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100043654();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100015908(uint64_t a1, unint64_t a2)
{
  v4 = sub_100015954(a1, a2);
  sub_100015A84(&off_10005E298);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100015954(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100013A7C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100043654();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000433B4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100013A7C(v10, 0);
        result = sub_100043604();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100015A84(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100015B70(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100015B70(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100013A34(&qword_100066490, &unk_100046EA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100015C64(uint64_t a1)
{
  v2 = sub_100013A34(&qword_100067060, &qword_100046E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015D1C()
{
  result = sub_100043004();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100015D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100043004();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100015E64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100043004();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100015F20()
{
  sub_100043004();
  if (v0 <= 0x3F)
  {
    sub_10001600C(319, &qword_100066590);
    if (v1 <= 0x3F)
    {
      sub_10001600C(319, &qword_100066598);
      if (v2 <= 0x3F)
      {
        sub_10001600C(319, &unk_1000665A0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10001600C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1000435A4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10001607C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1000160DC()
{
  v0 = sub_100043004();
  sub_1000168B0(v0, qword_10006A988);
  sub_1000161D0(v0, qword_10006A988);
  v1 = sub_1000432E4();
  v2 = sub_100016914();
  v3 = [v2 stringByAppendingPathComponent:v1];

  v4 = v3;
  if (v4)
  {
    sub_100043314();

    sub_100042F74();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000161D0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_100016210(char a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  if (qword_100067AD0 != -1)
  {
    swift_once();
  }

  v5 = sub_100043004();
  sub_1000161D0(v5, qword_10006A988);
  sub_100042F84(v6);
  v8 = v7;
  v11.receiver = v4;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, "initWithDatabaseURL:asReadOnly:", v7, a1 & 1);

  return v9;
}

id sub_100016508()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for LaunchWarningDB();
  v1 = objc_msgSendSuper2(&v16, "setupSchema");
  if (v1)
  {
    v2 = [v0 readSetting:@"databaseSchemaVersion"];
    if (v2)
    {
      v3 = v2;
      v4 = sub_100043314();
      v6 = v5;
    }

    else
    {
      v7 = sub_1000432E4();
      [v0 executeQuery:v7 withBind:0 withResults:0];

      v8 = @"databaseSchemaVersion";
      v4 = 49;
      v6 = 0xE100000000000000;
      v9 = sub_1000432E4();
      [v0 setSetting:v8 toValue:v9];
    }

    if (v4 == 49 && v6 == 0xE100000000000000)
    {
    }

    else
    {
      v11 = sub_1000437F4();

      if ((v11 & 1) == 0)
      {
        return v1;
      }
    }

    v12 = sub_1000432E4();
    [v0 executeQuery:v12 withBind:0 withResults:0];

    v13 = @"databaseSchemaVersion";
    v14 = sub_1000432E4();
    [v0 setSetting:v13 toValue:v14];
  }

  return v1;
}

id sub_100016878()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LaunchWarningDB();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t *sub_1000168B0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100016920()
{
  v0 = sub_1000431E4();
  v51 = *(v0 - 8);
  v1 = *(v51 + 64);
  v2 = __chkstk_darwin(v0);
  v50 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v49 = &v49 - v5;
  __chkstk_darwin(v4);
  v7 = &v49 - v6;
  v8 = objc_opt_self();
  v9 = [v8 defaultManager];
  sub_100042FC4();
  v10 = sub_1000432E4();

  v11 = [v9 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = [v8 defaultManager];
    sub_100042F84(v13);
    v15 = v14;
    v52 = 0;
    v16 = [v12 removeItemAtURL:v14 error:&v52];

    v17 = v52;
    if (!v16)
    {
LABEL_16:
      v48 = v17;
      sub_100042F44();

      return swift_willThrow();
    }

    v18 = v52;
  }

  v19 = [v8 defaultManager];
  sub_100042F84(v20);
  v22 = v21;
  sub_100042F84(v23);
  v25 = v24;
  v52 = 0;
  v26 = [v19 copyItemAtURL:v22 toURL:v24 error:&v52];

  v17 = v52;
  if (!v26)
  {
    goto LABEL_16;
  }

  v27 = v52;
  sub_100042FB4(1);
  v28 = sub_100043374();

  v29 = chmod((v28 + 32), 0x1A4u);

  v30 = v51;
  v31 = v49;
  if (v29)
  {
    v32 = sub_1000212A8();
    (*(v30 + 16))(v7, v32, v0);
    v33 = sub_1000431C4();
    v34 = sub_1000434A4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 67109120;
      *(v35 + 4) = sub_100043204();
      _os_log_impl(&_mh_execute_header, v33, v34, "Failed to chmod document checker: %d", v35, 8u);
    }

    (*(v30 + 8))(v7, v0);
  }

  v36 = notify_post("com.apple.mis.doc-check-list-ingested");
  if (v36)
  {
    v37 = v36;
    v38 = sub_1000212A8();
    (*(v30 + 16))(v31, v38, v0);
    v39 = sub_1000431C4();
    v40 = sub_1000434A4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 67109120;
      *(v41 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to notify about new document checker: %u", v41, 8u);
    }

    (*(v30 + 8))(v31, v0);
  }

  v42 = sub_1000212A8();
  v43 = v50;
  (*(v30 + 16))(v50, v42, v0);
  v44 = sub_1000431C4();
  v45 = sub_1000434B4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Updated new document checker.", v46, 2u);
  }

  return (*(v30 + 8))(v43, v0);
}

unint64_t sub_100016E38(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000430F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2 >> 62 == 2)
  {
    v9 = *(a1 + 16);
  }

  sub_100013104(a1, a2);
  sub_100043104();
  sub_100018BBC(&qword_100066480, &type metadata accessor for Data.Iterator);
  sub_1000435B4();
  if (v13)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v10 = v12[14] | (v10 << 8);
      sub_1000435B4();
    }

    while (v13 != 1);
  }

  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_100016FD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100043664();
  v6 = sub_100013278(v5, v4);
  (*(v3 + 8))(v5, a2);
  return v6;
}

uint64_t sub_1000170EC(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (HIDWORD(v2))
  {
    goto LABEL_5;
  }

  LODWORD(__src[0]) = bswap32(v2);
  v5 = sub_1000131C0(__src, __src + 4);
  v7 = v6 & 0xFFFFFFFFFFFFFFLL;
  v8 = sub_100016FD4(a1, a2);
  v10 = v9;
  v16 = v5;
  v17 = v7;
  __src[3] = &type metadata for Data;
  __src[4] = &protocol witness table for Data;
  __src[0] = v8;
  __src[1] = v9;
  v11 = sub_100013B38(__src, &type metadata for Data);
  v12 = *v11;
  v13 = v11[1];
  sub_100013104(v8, v10);
  sub_100018620(v12, v13);
  sub_10001316C(v8, v10);
  sub_100013B7C(__src);
  return v16;
}

uint64_t sub_10001721C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100043354();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = __src - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    LODWORD(v12) = 0;
    v10 = 0xC000000000000000;
    goto LABEL_19;
  }

  sub_100043344();
  a2 = sub_100043324();
  v9 = v8;
  (*(v4 + 8))(v7, v3);
  if (v9 >> 60 == 15)
  {
    a2 = 0;
    v10 = 0xC000000000000000;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_18;
    }

    v14 = *(a2 + 16);
    v13 = *(a2 + 24);
    v15 = __OFSUB__(v13, v14);
    v12 = v13 - v14;
    if (!v15)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_13:
    LODWORD(v12) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_21;
    }

    v12 = v12;
LABEL_15:
    if ((v12 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v12))
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_18:
      LODWORD(v12) = 0;
      goto LABEL_19;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  if (v11)
  {
    goto LABEL_13;
  }

  LODWORD(v12) = BYTE6(v10);
LABEL_19:
  LODWORD(__src[0]) = bswap32(v12);
  v21 = sub_1000131C0(__src, __src + 4);
  v22 = v16 & 0xFFFFFFFFFFFFFFLL;
  __src[3] = &type metadata for Data;
  __src[4] = &protocol witness table for Data;
  __src[0] = a2;
  __src[1] = v10;
  v17 = sub_100013B38(__src, &type metadata for Data);
  sub_100018620(*v17, v17[1]);
  sub_100013B7C(__src);
  return v21;
}

uint64_t sub_100017418(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  if (a2 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = a2;
  }

  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    LODWORD(v7) = 0;
    if (v6 != 2)
    {
      goto LABEL_18;
    }

    v9 = *(v4 + 16);
    v8 = *(v4 + 24);
    v10 = __OFSUB__(v8, v9);
    v7 = v8 - v9;
    if (!v10)
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_14:
    LODWORD(v7) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
      goto LABEL_21;
    }

    v7 = v7;
LABEL_16:
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v7))
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  if (v6)
  {
    goto LABEL_14;
  }

  LODWORD(v7) = BYTE6(v5);
LABEL_18:
  LODWORD(__src[0]) = bswap32(v7);
  v17 = sub_1000131C0(__src, __src + 4);
  v18 = v11 & 0xFFFFFFFFFFFFFFLL;
  __src[3] = &type metadata for Data;
  __src[4] = &protocol witness table for Data;
  __src[0] = v4;
  __src[1] = v5;
  v12 = sub_100013B38(__src, &type metadata for Data);
  v13 = *v12;
  v14 = v12[1];
  sub_1000130F0(a1, a2);
  sub_100018620(v13, v14);
  sub_100013B7C(__src);
  return v17;
}

uint64_t sub_1000175A4(const char *a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_100042DD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 >> 62;
  v38 = v11;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      memset(value, 0, 14);
      v30 = sub_100043374();
      v31 = setxattr(a1, (v30 + 32), value, 0, 0, 0);

      if ((v31 & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    v36 = a1;
    v37 = v3;
    v16 = v8;
    v17 = v7;
    v18 = *(a2 + 16);
    v19 = sub_100042DF4();
    if (v19)
    {
      v20 = sub_100042E24();
      if (__OFSUB__(v18, v20))
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      v19 += v18 - v20;
    }

    v7 = v17;
    sub_100042E14();
    v22 = *(a2 + 16);
    v21 = *(a2 + 24);
    v23 = v21 - v22;
    if (!__OFSUB__(v21, v22))
    {
      v8 = v16;
      v24 = sub_100043374();
      v25 = setxattr(v36, (v24 + 32), v19, v23, 0, 0);

      if ((v25 & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_26;
  }

  if (v12)
  {
    v37 = v7;
    if (a2 <= a2 >> 32)
    {
      v36 = v8;
      v26 = sub_100042DF4();
      if (v26)
      {
        v27 = sub_100042E24();
        if (__OFSUB__(a2, v27))
        {
          goto LABEL_29;
        }

        v26 += a2 - v27;
      }

      sub_100042E14();
      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        v28 = sub_100043374();
        v29 = setxattr(a1, (v28 + 32), v26, HIDWORD(a2) - a2, 0, 0);

        v8 = v36;
        v7 = v37;
        if ((v29 & 0x80000000) == 0)
        {
          return result;
        }

        goto LABEL_20;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  value[0] = a2;
  LOWORD(value[1]) = a3;
  BYTE2(value[1]) = BYTE2(a3);
  BYTE3(value[1]) = BYTE3(a3);
  BYTE4(value[1]) = BYTE4(a3);
  BYTE5(value[1]) = BYTE5(a3);
  v13 = sub_100043374();
  v14 = setxattr(a1, (v13 + 32), value, BYTE6(a3), 0, 0);

  if ((v14 & 0x80000000) == 0)
  {
    return result;
  }

LABEL_20:
  v32 = sub_100043204();
  v33 = sub_1000431F4();
  if ((v33 & 0x100000000) != 0)
  {
    sub_1000189B8();
    swift_allocError();
    *v35 = v32;
  }

  else
  {
    LODWORD(value[0]) = v33;
    sub_100018AAC(&_swiftEmptyArrayStorage);
    sub_100018BBC(&qword_100066700, &type metadata accessor for POSIXError);
    v34 = v38;
    sub_100042F24();
    sub_100042DC4();
    (*(v8 + 1))(v34, v7);
  }

  return swift_willThrow();
}

uint64_t sub_1000179C4(uint64_t a1)
{
  bzero(v7, 0x878uLL);
  v3 = sub_100042FB4(1);
  v10 = v7;
  v11 = a1;
  sub_100017EE8(sub_10001885C, v9, v3, v4);

  if (!v1)
  {
    v5 = (v8 >> 14) & 1;
  }

  return v5 & 1;
}

uint64_t sub_100017AA0(const char *a1, statfs *a2, uint64_t a3)
{
  v38 = a3;
  v5 = sub_100042DD4();
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100043004();
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000431E4();
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = statfs(a1, a2);
  if (result == -1)
  {
    v36 = v8;
    v37 = v5;
    v18 = sub_100043204();
    v19 = sub_1000212A8();
    v20 = v13;
    (*(v41 + 16))(v16, v19, v13);
    (*(v40 + 16))(v12, v38, v9);
    v21 = sub_1000431C4();
    v22 = sub_1000434A4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      LODWORD(v38) = v18;
      v24 = v23;
      v25 = swift_slowAlloc();
      v42 = v25;
      *v24 = 67109378;
      *(v24 + 4) = v38;
      *(v24 + 8) = 2082;
      v43 = v22;
      v26 = sub_100042FC4();
      v28 = v27;
      (*(v40 + 8))(v12, v9);
      v29 = sub_100015730(v26, v28, &v42);

      *(v24 + 10) = v29;
      _os_log_impl(&_mh_execute_header, v21, v43, "Unable to statfs app: %d, %{public}s", v24, 0x12u);
      sub_100013B7C(v25);

      v18 = v38;
    }

    else
    {

      (*(v40 + 8))(v12, v9);
    }

    (*(v41 + 8))(v16, v20);
    v30 = v37;
    v31 = sub_1000431F4();
    v32 = v39;
    v33 = v36;
    if ((v31 & 0x100000000) != 0)
    {
      sub_1000189B8();
      swift_allocError();
      *v34 = v18;
    }

    else
    {
      v44 = v31;
      sub_100018AAC(&_swiftEmptyArrayStorage);
      sub_100018BBC(&qword_100066700, &type metadata accessor for POSIXError);
      sub_100042F24();
      sub_100042DC4();
      (*(v32 + 8))(v33, v30);
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100017EE8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return sub_100043614();
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v7[0] = a3;
    v7[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v5 = v7;
    return a1(v5);
  }

  if ((a3 & 0x1000000000000000) == 0)
  {
    return sub_100043614();
  }

  v5 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return a1(v5);
}

uint64_t sub_100017F58()
{
  v1 = *v0;
  sub_100043314();
  v2 = sub_1000433C4();

  return v2;
}

uint64_t sub_100017F94()
{
  v1 = *v0;
  sub_100043314();
  sub_100043384();
}

Swift::Int sub_100017FE8()
{
  v1 = *v0;
  sub_100043314();
  sub_1000438A4();
  sub_100043384();
  v2 = sub_1000438C4();

  return v2;
}

uint64_t sub_100018064(uint64_t a1, id *a2)
{
  result = sub_1000432F4();
  *a2 = 0;
  return result;
}

uint64_t sub_1000180DC(uint64_t a1, id *a2)
{
  v3 = sub_100043304();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10001815C@<X0>(void *a1@<X8>)
{
  sub_100043314();
  v2 = sub_1000432E4();

  *a1 = v2;
  return result;
}

uint64_t sub_1000181A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_100043314();
  v6 = v5;
  if (v4 == sub_100043314() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000437F4();
  }

  return v9 & 1;
}

uint64_t sub_100018228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1000432E4();

  *a2 = v5;
  return result;
}

uint64_t sub_100018270@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_100043314();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10001829C(uint64_t a1)
{
  v2 = sub_100018BBC(&qword_1000666C0, type metadata accessor for FileAttributeKey);
  v3 = sub_100018BBC(&qword_1000666F0, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_100018358(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000438A4();
  sub_100043384();
  v6 = sub_1000438C4();

  return sub_1000183D0(a1, a2, v6);
}

unint64_t sub_1000183D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000437F4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100018488(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_100043314();
  sub_1000438A4();
  sub_100043384();
  v4 = sub_1000438C4();

  return sub_10001851C(a1, v4);
}

unint64_t sub_10001851C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100043314();
      v9 = v8;
      if (v7 == sub_100043314() && v9 == v10)
      {
        break;
      }

      v12 = sub_1000437F4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_100018620(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_100043064();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100018758(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_100018758(v3, v4);
  }

  return sub_100043064();
}

uint64_t sub_100018758(uint64_t a1, uint64_t a2)
{
  result = sub_100042DF4();
  if (!result || (result = sub_100042E24(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_100042E14();
      return sub_100043064();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_1000666D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000666D0);
    }
  }
}

uint64_t sub_10001883C(const char *a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_1000175A4(a1, v1[2], v1[3]);
}

uint64_t getEnumTagSinglePayload for UtilitiesError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UtilitiesError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

unint64_t sub_1000189B8()
{
  result = qword_1000666F8;
  if (!qword_1000666F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000666F8);
  }

  return result;
}

uint64_t sub_100018A0C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_100042E34();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_100042E04();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_100043054();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_100018AAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100013A34(&qword_100066708, &qword_100047118);
    v3 = sub_1000436F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100018C04(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100018358(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100018C74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}