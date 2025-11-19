id sub_100001460()
{
  v6 = 8;
  v7 = 0;
  if (sysctlbyname("security.mac.amfi.developer_mode_status", &v7, &v6, 0, 0))
  {
    v0 = sub_1000015A0();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_100012D7C();
    }

    v1 = 0;
  }

  else
  {
    v2 = v7;
    v3 = sub_1000015A0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = @"disabled";
      if (v2)
      {
        v4 = @"enabled";
      }

      *buf = 138543362;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Developer mode is %{public}@", buf, 0xCu);
    }

    v1 = [NSNumber numberWithBool:v2 != 0];
  }

  return v1;
}

id sub_1000015A0()
{
  if (qword_100025C50 != -1)
  {
    sub_100012DFC();
  }

  v1 = qword_100025C48;

  return v1;
}

uint64_t sub_1000015E4()
{
  if (qword_100025C40 != -1)
  {
    sub_100012E10();
  }

  return byte_100025C38;
}

uint64_t sub_100001644(void *a1)
{
  v9 = 66565;
  v1 = open([a1 UTF8String], 0);
  if (v1 < 0)
  {
    v6 = sub_1000015A0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100012E24();
    }

    return 0;
  }

  v2 = v1;
  v3 = ffsctl(v1, 0xC0084A44uLL, &v9, 0);
  v4 = sub_1000015A0();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100012EA4(v3, v5);
    }

    close(v2);
    return 0;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Marked file purgeable", v8, 2u);
  }

  close(v2);
  return 1;
}

BOOL sub_10000175C(void *a1, void *a2)
{
  v3 = a1;
  if (sub_1000022D4())
  {
    *v53 = 0;
    v54 = v53;
    v55 = 0x2050000000;
    v4 = qword_100025C60;
    v56 = qword_100025C60;
    if (!qword_100025C60)
    {
      *buf = _NSConcreteStackBlock;
      v48 = 3221225472;
      v49 = sub_100002418;
      v50 = &unk_100020800;
      v51 = v53;
      sub_100002418(buf);
      v4 = *(v54 + 3);
    }

    v5 = v4;
    _Block_object_dispose(v53, 8);
    v6 = [[v4 alloc] initWithBundleIdentifier:@"com.apple.PerformanceTrace.notifications"];
    *v53 = 0;
    v54 = v53;
    v55 = 0x2050000000;
    v7 = qword_100025C68;
    v56 = qword_100025C68;
    if (!qword_100025C68)
    {
      *buf = _NSConcreteStackBlock;
      v48 = 3221225472;
      v49 = sub_1000024C0;
      v50 = &unk_100020800;
      v51 = v53;
      sub_1000024C0(buf);
      v7 = *(v54 + 3);
    }

    v8 = v7;
    _Block_object_dispose(v53, 8);
    v9 = objc_alloc_init(v7);
    [v9 setThreadIdentifier:@"performanceTraceNotifications"];
    [v9 setTitle:@"Performance Trace"];
    if (v3)
    {
      if (qword_100025C40 != -1)
      {
        sub_100012F1C();
      }

      v10 = @"prefs:root=DEVELOPER_SETTINGS&path=PERFORMANCE_TRACE";
      if ((byte_100025C38 & 1) == 0)
      {
        v11 = sub_100001460();
        v12 = [v11 BOOLValue];

        if (!v12)
        {
          v10 = @"prefs:root=Privacy&path=PROBLEM_REPORTING/DIAGNOSTIC_USAGE_DATA/";
        }
      }

      v13 = [v3 lastPathComponent];
      v14 = [(__CFString *)v10 stringByAppendingPathComponent:v13];

      v15 = [NSURL URLWithString:v14];
      v45 = [v3 lastPathComponent];
      v16 = [NSString stringWithFormat:@"Saved %@."];
      [v9 setBody:v16];

      [v9 setDefaultActionURL:v15];
      *v53 = 0;
      v54 = v53;
      v55 = 0x2050000000;
      v17 = qword_100025C70;
      v56 = qword_100025C70;
      if (!qword_100025C70)
      {
        *buf = _NSConcreteStackBlock;
        v48 = 3221225472;
        v49 = sub_100002518;
        v50 = &unk_100020800;
        v51 = v53;
        sub_100002518(buf);
        v17 = *(v54 + 3);
      }

      v18 = v17;
      _Block_object_dispose(v53, 8);
      v19 = [v17 iconWithSystemImageName:@"doc.text.below.ecg"];
      *v53 = 0;
      v54 = v53;
      v55 = 0x2050000000;
      v20 = qword_100025C78;
      v56 = qword_100025C78;
      if (!qword_100025C78)
      {
        *buf = _NSConcreteStackBlock;
        v48 = 3221225472;
        v49 = sub_100002570;
        v50 = &unk_100020800;
        v51 = v53;
        sub_100002570(buf);
        v20 = *(v54 + 3);
      }

      v21 = v20;
      _Block_object_dispose(v53, 8);
      v22 = [v20 actionWithIdentifier:@"viewAction" title:@"View" url:v15 options:0 icon:v19];
      *v53 = 0;
      v54 = v53;
      v55 = 0x2050000000;
      v23 = qword_100025C80;
      v56 = qword_100025C80;
      if (!qword_100025C80)
      {
        *buf = _NSConcreteStackBlock;
        v48 = 3221225472;
        v49 = sub_1000025C8;
        v50 = &unk_100020800;
        v51 = v53;
        sub_1000025C8(buf);
        v23 = *(v54 + 3);
      }

      v24 = v23;
      _Block_object_dispose(v53, 8);
      v57 = v22;
      v25 = [NSArray arrayWithObjects:&v57 count:1];
      v26 = [v23 categoryWithIdentifier:@"performanceTraceNotifications" actions:v25 intentIdentifiers:&__NSArray0__struct options:0];

      v27 = [NSSet setWithObject:v26];
      [v6 setNotificationCategories:v27];
    }

    else
    {
      [v9 setBody:@"Performance Trace failed to complete."];
    }

    [v9 setCategoryIdentifier:@"performanceTraceNotifications"];
    *v53 = 0;
    v54 = v53;
    v55 = 0x2050000000;
    v37 = qword_100025C88;
    v56 = qword_100025C88;
    if (!qword_100025C88)
    {
      *buf = _NSConcreteStackBlock;
      v48 = 3221225472;
      v49 = sub_100002620;
      v50 = &unk_100020800;
      v51 = v53;
      sub_100002620(buf, v30, v31, v32, v33, v34, v35, v36, v45);
      v37 = *(v54 + 3);
    }

    v38 = v37;
    _Block_object_dispose(v53, 8);
    v39 = +[NSUUID UUID];
    v40 = [v39 UUIDString];
    v41 = [v37 requestWithIdentifier:v40 content:v9 trigger:0];

    *buf = 0;
    v48 = buf;
    v49 = 0x3032000000;
    v50 = sub_100001F70;
    v51 = sub_100001F80;
    v52 = 0;
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100001F88;
    v46[3] = &unk_100020780;
    v46[4] = buf;
    [v6 addNotificationRequest:v41 withCompletionHandler:v46];
    if (a2)
    {
      *a2 = *(v48 + 40);
    }

    v42 = *(v48 + 40);
    v29 = v42 == 0;
    if (!v42)
    {
      v43 = sub_1000015A0();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Performance Trace completion notification sent", v53, 2u);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v28 = sub_1000015A0();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "UserNotifications.framework is soft-linked and unavailable; Performance Trace cannot post notifications", buf, 2u);
    }

    if (a2)
    {
      [NSError error:0 description:@"Tried to send a user notification in an unsupported environment"];
      *a2 = v29 = 0;
    }

    else
    {
      v29 = 0;
    }
  }

  return v29;
}

void sub_100001F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001F70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001F88(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v5 = sub_1000015A0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100012F44(v4, v5);
    }
  }
}

id sub_100002004()
{
  v2 = NSFilePosixPermissions;
  v3 = &off_100021B60;
  v0 = [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];

  return v0;
}

id sub_100002090(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v3 = sub_100002004();
  v10 = 0;
  v4 = [v2 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:v3 error:&v10];

  v5 = v10;
  v6 = 0;
  if ((v4 & 1) == 0)
  {
    v7 = [v5 localizedDescription];
    v8 = [NSString stringWithFormat:@"Cannot start tracing as Performance Trace cannot write to the target directory: %@", v7];
    v6 = [NSError error:4 description:v8 underlyingError:v5];
  }

  return v6;
}

id sub_1000021A8(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v3 = sub_100002004();
  v8 = 0;
  v4 = [v2 setAttributes:v3 ofItemAtPath:v1 error:&v8];

  v5 = v8;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    if (!v5)
    {
      v5 = [NSError error:0 description:@"Failed to update POSIX permissions of trace file"];
    }

    v5 = v5;
    v6 = v5;
  }

  return v6;
}

void sub_100002290(id a1)
{
  qword_100025C48 = os_log_create("com.apple.PerformanceTrace", "SharedServiceFunctionality");

  _objc_release_x1();
}

uint64_t sub_1000022D4()
{
  if (!qword_100025C58)
  {
    qword_100025C58 = _sl_dlopen();
  }

  return qword_100025C58;
}

uint64_t sub_1000023A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100025C58 = result;
  return result;
}

void sub_100002418(uint64_t a1)
{
  sub_100002470();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UNUserNotificationCenter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100025C60 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100012FBC();
    sub_100002470();
  }
}

void sub_100002470()
{
  if (!sub_1000022D4())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

Class sub_1000024C0(uint64_t a1)
{
  sub_100002470();
  result = objc_getClass("UNMutableNotificationContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100025C68 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100012FE4();
    return sub_100002518(v3);
  }

  return result;
}

Class sub_100002518(uint64_t a1)
{
  sub_100002470();
  result = objc_getClass("UNNotificationActionIcon");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100025C70 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10001300C();
    return sub_100002570(v3);
  }

  return result;
}

Class sub_100002570(uint64_t a1)
{
  sub_100002470();
  result = objc_getClass("UNNotificationAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100025C78 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100013034();
    return sub_1000025C8(v3);
  }

  return result;
}

Class sub_1000025C8(uint64_t a1)
{
  sub_100002470();
  result = objc_getClass("UNNotificationCategory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100025C80 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10001305C();
    return sub_100002620(v3);
  }

  return result;
}

void sub_100002620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{
  sub_100002470();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UNNotificationRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100025C88 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100013084();
    sub_100002678(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  }
}

void sub_100002678(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

BOOL sub_100002698()
{
  v0 = notify_post("com.apple.performancetrace.global_state_did_change");
  v1 = sub_10000273C();
  v2 = v1;
  if (v0)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1000130AC(v0, v2);
    }
  }

  else if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Posted global state change notification", v4, 2u);
  }

  return v0 == 0;
}

id sub_10000273C()
{
  if (qword_100025C98 != -1)
  {
    sub_100013124();
  }

  v1 = qword_100025C90;

  return v1;
}

void sub_100002780(id a1)
{
  qword_100025C90 = os_log_create("com.apple.PerformanceTrace", "StateChangeNotification");

  _objc_release_x1();
}

id sub_1000027C4(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v8 = sub_1000029A4(a1, a2, v7);
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    if (v10 == CFNumberGetTypeID() && (*valuePtr = 0, CFNumberGetValue(v9, kCFNumberSInt64Type, valuePtr)))
    {
      v11 = [NSNumber numberWithLongLong:*valuePtr];
    }

    else
    {
      v12 = CFGetTypeID(v9);
      v13 = CFCopyTypeIDDescription(v12);
      v14 = sub_100002AD8();
      if (os_signpost_enabled(v14))
      {
        *valuePtr = 138543874;
        *&valuePtr[4] = v7;
        v18 = 2114;
        v19 = v13;
        v20 = 2114;
        v21 = v9;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidValueForExpectedInt64", "Invalid value for setting %{public}@: (%{public}@)%{public}@", valuePtr, 0x20u);
      }

      if (a4)
      {
        v15 = [NSString stringWithFormat:@"Invalid value for setting %@: (%@)%@", v7, v13, v9];
        *a4 = [NSError passiveTraceError:1 description:v15];
      }

      CFRelease(v13);
      v11 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

CFPropertyListRef sub_1000029A4(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v6)
  {
    v6 = kCFPreferencesAnyApplication;
  }

  v8 = sub_100002EC8();
  if (os_signpost_enabled(v8))
  {
    v11 = 138543874;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FetchingValue", "Fetching value:\nUser:\t%{public}@\nDomain:\t%{public}@\nKey:\t%{public}@\n", &v11, 0x20u);
  }

  v9 = CFPreferencesCopyValue(v7, v6, v5, kCFPreferencesCurrentHost);
  return v9;
}

id sub_100002AD8()
{
  if (qword_100025CA8 != -1)
  {
    sub_100013138();
  }

  v1 = qword_100025CA0;

  return v1;
}

id sub_100002B1C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v8 = sub_1000029A4(a1, a2, v7);
  if (!v8)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v9 = v8;
  v10 = CFGetTypeID(v8);
  if (v10 != CFNumberGetTypeID())
  {
    v13 = CFGetTypeID(v9);
    if (v13 == CFBooleanGetTypeID())
    {
      v11 = [NSNumber numberWithUnsignedChar:CFBooleanGetValue(v9)];
      goto LABEL_11;
    }

LABEL_12:
    v14 = CFGetTypeID(v9);
    v15 = CFCopyTypeIDDescription(v14);
    v16 = sub_100002AD8();
    if (os_signpost_enabled(v16))
    {
      *valuePtr = 138543874;
      *&valuePtr[4] = v7;
      v20 = 2114;
      v21 = v15;
      v22 = 2114;
      v23 = v9;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidValidForExpectedBool", "Invalid value for tasking setting %{public}@: (%{public}@)%{public}@", valuePtr, 0x20u);
    }

    if (a4)
    {
      v17 = [NSString stringWithFormat:@"Invalid value for setting %@: (%@)%@", v7, v15, v9];
      *a4 = [NSError passiveTraceError:1 description:v17];
    }

    CFRelease(v15);
    v12 = 0;
    goto LABEL_17;
  }

  *valuePtr = 0;
  if (!CFNumberGetValue(v9, kCFNumberSInt64Type, valuePtr) || *valuePtr >= 2uLL)
  {
    goto LABEL_12;
  }

  v11 = [NSNumber numberWithInt:?];
LABEL_11:
  v12 = v11;
LABEL_17:
  CFRelease(v9);
LABEL_18:

  return v12;
}

void sub_100002D40(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v10)
  {
    v11 = v10;
    v12 = [v10 BOOLValue];
    v13 = &__kCFBooleanFalse;
    if (v12)
    {
      v13 = &__kCFBooleanTrue;
    }

    v14 = v13;

    if (!v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = 0;
    if (!v8)
    {
LABEL_5:
      v8 = kCFPreferencesAnyApplication;
    }
  }

  v15 = sub_100002EC8();
  if (os_signpost_enabled(v15))
  {
    v16 = 138544130;
    v17 = v7;
    v18 = 2114;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    v23 = v14;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SettingBoolValue", "Setting value:\nUser:\t%{public}@\nDomain:\t%{public}@\nKey:\t%{public}@\nValue:\t%{public}@\n", &v16, 0x2Au);
  }

  CFPreferencesSetValue(v9, v14, v8, v7, kCFPreferencesCurrentHost);
}

id sub_100002EC8()
{
  if (qword_100025CB8 != -1)
  {
    sub_10001314C();
  }

  v1 = qword_100025CB0;

  return v1;
}

void sub_100002F0C(id a1)
{
  qword_100025CA0 = os_log_create("com.apple.PerformanceTrace", "DefaultsReadingError");

  _objc_release_x1();
}

void sub_100002F50(id a1)
{
  qword_100025CB0 = os_log_create("com.apple.PerformanceTrace", "DefaultsReading");

  _objc_release_x1();
}

id sub_1000031A4()
{
  if (qword_100025CF8 != -1)
  {
    sub_100013160();
  }

  v1 = qword_100025CF0;

  return v1;
}

id sub_100003420()
{
  if (qword_100025D08 != -1)
  {
    sub_100013174();
  }

  v1 = qword_100025D00;

  return v1;
}

PTPCPassiveCollectionConfig *sub_1000041C0(uint64_t a1)
{
  if (a1 == 1)
  {
    BYTE2(v4) = 1;
    LOWORD(v4) = 257;
    v2 = [PTPCPassiveCollectionConfig initWithName:"initWithName:collectMSS:collectAppInFocus:collectLoggingPerfPowerMetrics:collectLoggingHangs:collectLoggingUserInteraction:collectLoggingMetalFramePacing:collectLoggingScrolling:collectLoggingAppLaunch:" collectMSS:@"PowerProfiler" collectAppInFocus:1 collectLoggingPerfPowerMetrics:1 collectLoggingHangs:1 collectLoggingUserInteraction:1 collectLoggingMetalFramePacing:1 collectLoggingScrolling:v4 collectLoggingAppLaunch:?];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100004414(void *a1, void *a2)
{
  v3 = a1;
  v4 = [[NSUserDefaults alloc] initWithSuiteName:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    if (a2)
    {
      v7 = [NSString stringWithFormat:@"Unable to read defaults domain: '%@'", v3];
      *a2 = [NSError passiveTraceError:1 description:v7];
    }

    v8 = sub_1000031A4();
    if (os_signpost_enabled(v8))
    {
      *buf = 138543362;
      v11 = v3;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CouldNotReadDefaults", "Could not read defaults for domain %{public}@", buf, 0xCu);
    }
  }

  return v5;
}

id sub_100004560()
{
  if (qword_100025D18 != -1)
  {
    sub_100013188();
  }

  v1 = qword_100025D10;

  return v1;
}

id sub_1000045A4()
{
  if (qword_100025D28 != -1)
  {
    sub_10001319C();
  }

  v1 = qword_100025D20;

  return v1;
}

void sub_10000462C(id a1)
{
  v3[0] = @"MSS";
  v4[0] = objc_opt_class();
  v3[1] = @"AppInFocus";
  v4[1] = objc_opt_class();
  v3[2] = @"PerfPowerMetrics";
  v4[2] = objc_opt_class();
  v3[3] = @"Hangs";
  v4[3] = objc_opt_class();
  v3[4] = @"UserInteraction";
  v4[4] = objc_opt_class();
  v3[5] = @"MetalFramePacing";
  v4[5] = objc_opt_class();
  v3[6] = @"Scrolling";
  v4[6] = objc_opt_class();
  v3[7] = @"AppLaunch";
  v4[7] = objc_opt_class();
  v3[8] = @"CollectionLookbackSeconds";
  v4[8] = objc_opt_class();
  v3[9] = @"ImitationRecordStartDate";
  v4[9] = objc_opt_class();
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:10];
  v2 = qword_100025CC0;
  qword_100025CC0 = v1;
}

void sub_10000493C(uint64_t a1)
{
  v1 = [*(a1 + 32) defaultsManager];
  [v1 resetPersistedDefaults];
}

void sub_100004E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004E28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004E40(uint64_t a1)
{
  v2 = [*(a1 + 32) _numberValueForKey:@"MSS" defaultValue:&__kCFBooleanTrue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10000511C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005134(uint64_t a1)
{
  v2 = [*(a1 + 32) _numberValueForKey:@"AppInFocus" defaultValue:&__kCFBooleanTrue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100005410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005428(uint64_t a1)
{
  v2 = [*(a1 + 32) _numberValueForKey:@"UserInteraction" defaultValue:&__kCFBooleanTrue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100005704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000571C(uint64_t a1)
{
  v2 = [*(a1 + 32) _numberValueForKey:@"MetalFramePacing" defaultValue:&__kCFBooleanTrue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000059F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005A10(uint64_t a1)
{
  v2 = [*(a1 + 32) _numberValueForKey:@"Scrolling" defaultValue:&__kCFBooleanTrue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100005CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005D04(uint64_t a1)
{
  v2 = [*(a1 + 32) _numberValueForKey:@"PerfPowerMetrics" defaultValue:&__kCFBooleanTrue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100005FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005FF8(uint64_t a1)
{
  v2 = [*(a1 + 32) _numberValueForKey:@"AppLaunch" defaultValue:&__kCFBooleanTrue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000062D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000062EC(uint64_t a1)
{
  v2 = [*(a1 + 32) _numberValueForKey:@"Hangs" defaultValue:&__kCFBooleanTrue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000065C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000065E0(uint64_t a1)
{
  v2 = [*(a1 + 32) _numberValueForKey:@"ImitationRecordStartDate" defaultValue:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10000691C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006934(uint64_t a1)
{
  v2 = [*(a1 + 32) _numberValueForKey:@"CollectionLookbackSeconds" defaultValue:&off_100021B78];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id sub_100006DB0()
{
  if (qword_100025D38 != -1)
  {
    sub_1000131C4();
  }

  v1 = qword_100025D30;

  return v1;
}

id sub_100006DF4(int a1)
{
  if (a1)
  {
    v1 = [NSString stringWithFormat:@"Encountered MSS PMI set/get error: %s", strerror(a1)];
    v2 = [NSError passiveTraceError:0 description:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100006E80()
{
  if (qword_100025D48 != -1)
  {
    sub_1000131D8();
  }

  v1 = qword_100025D40;

  return v1;
}

void sub_1000072B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000072D4(void *a1)
{
  v2 = a1[4];
  v9 = 0;
  v3 = [v2 _locked_mssPMICycleInterval:&v9];
  v4 = v9;
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;
}

void sub_100007598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000075B0(uint64_t a1)
{
  v2 = [*(a1 + 32) _locked_setMssPMICycleInterval:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100007774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100007798(void *a1)
{
  v2 = a1[4];
  v9 = 0;
  v3 = [v2 _locked_MssPMICycleIntervalOverride:&v9];
  v4 = v9;
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;
}

void sub_100007988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000079AC(void *a1)
{
  v2 = a1[4];
  v9 = 0;
  v3 = [v2 _locked_perDrawableEnabled:&v9];
  v4 = v9;
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;
}

void sub_100007C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007C24(uint64_t a1)
{
  v2 = [*(a1 + 32) _locked_setPerDrawableEnabled:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100007E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100007E34()
{
  if (qword_100025D68 != -1)
  {
    sub_100013200();
  }

  v1 = qword_100025D60;

  return v1;
}

uint64_t sub_100007E78(uint64_t a1)
{
  v2 = [*(a1 + 32) _locked_metricMonitoredAppProcessNames:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000082A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000082C8(uint64_t a1)
{
  v5 = [*(a1 + 32) defaultsManager];
  v2 = [v5 setObjectForKey:@"MonitoredProcessNames" objectValue:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100008534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100008554(uint64_t a1)
{
  result = [*(a1 + 32) _locked_isMetricMonitorIsMonitoring];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100008AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100008AC4(uint64_t a1)
{
  v2 = [*(a1 + 32) _locked_setMetricMonitoringEnabled:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000096E4(id a1)
{
  v3[0] = @"AppliedPreset";
  v4[0] = objc_opt_class();
  v3[1] = @"MonitoredProcessNames";
  v4[1] = objc_opt_class();
  v3[2] = @"CachedPerFrameDrawable";
  v4[2] = objc_opt_class();
  v3[3] = @"CachedMetricMonitorEnabled";
  v4[3] = objc_opt_class();
  v3[4] = @"CachedMssPmiInterval";
  v4[4] = objc_opt_class();
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:5];
  v2 = qword_100025CD0;
  qword_100025CD0 = v1;
}

void sub_100009B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100009B74(uint64_t a1)
{
  result = [*(a1 + 32) _locked_currentPresetSetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10000A918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A930(uint64_t a1)
{
  v2 = [*(a1 + 32) _locked_applyPresetSettings:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10000AA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000AAAC(uint64_t a1)
{
  v2 = [*(a1 + 32) _locked_applyPresetSettings:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id sub_10000AB30(void *a1)
{
  v1 = qword_100025CE8;
  v2 = a1;
  if (v1 != -1)
  {
    sub_100013228();
  }

  v3 = [qword_100025CE0 stringFromDate:v2];

  return v3;
}

void sub_10000AB9C(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_100025CE0;
  qword_100025CE0 = v1;

  v3 = qword_100025CE0;

  [v3 setDateFormat:@"yy-MM-dd_HHmmss"];
}

void sub_10000ABF0(id a1)
{
  qword_100025CF0 = os_log_create("com.apple.PerformanceTrace", "DefaultsManagementError");

  _objc_release_x1();
}

void sub_10000AC34(id a1)
{
  qword_100025D00 = os_log_create("com.apple.PerformanceTrace", "DefaultsManagement");

  _objc_release_x1();
}

void sub_10000AC78(id a1)
{
  qword_100025D10 = os_log_create("com.apple.PerformanceTrace", "CollectionConfigurationError");

  _objc_release_x1();
}

void sub_10000ACBC(id a1)
{
  qword_100025D20 = os_log_create("com.apple.PerformanceTrace", "CollectionConfiguration");

  _objc_release_x1();
}

void sub_10000AD00(id a1)
{
  qword_100025D30 = os_log_create("com.apple.PerformanceTrace", "InstrumentationConfiguration");

  _objc_release_x1();
}

void sub_10000AD44(id a1)
{
  qword_100025D40 = os_log_create("com.apple.PerformanceTrace", "InstrumentationConfigurationError");

  _objc_release_x1();
}

void sub_10000ADB8(id a1)
{
  qword_100025D60 = [NSError passiveTraceError:3 description:@"Power monitoring not supported in current environment"];

  _objc_release_x1();
}

void sub_10000B580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10000B5D4()
{
  if (qword_100025D78 != -1)
  {
    sub_10001323C();
  }

  v1 = qword_100025D70;

  return v1;
}

void sub_10000B618(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained pidToConnection];
  v4 = [NSNumber numberWithInt:*(a1 + 48)];
  [v3 removeObjectForKey:v4];

  v5 = sub_10000B758();
  if (os_signpost_enabled(v5))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v8 = [WeakRetained pidToConnection];
    v9 = 138543874;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    v13 = 1024;
    v14 = [v8 count];
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConnectionInvalidated", "Invalidated connection to '%{public}@ [%u]'. %u concurrent client(s) at this time.", &v9, 0x18u);
  }
}

id sub_10000B758()
{
  if (qword_100025D88 != -1)
  {
    sub_100013250();
  }

  v1 = qword_100025D80;

  return v1;
}

void sub_10000B79C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained pidToConnection];
  v4 = [NSNumber numberWithInt:*(a1 + 56)];
  [v3 removeObjectForKey:v4];

  v5 = sub_10000B758();
  if (os_signpost_enabled(v5))
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) pidToConnection];
    v9 = 138543874;
    v10 = v7;
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = [v8 count];
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConnectionInterrupted", "Interrupted connection to '%{public}@ [%u]'. %u concurrent client(s) at this time.", &v9, 0x18u);
  }
}

void sub_10000BD1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10000BD40(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);

  if (string)
  {
    v6 = [NSString stringWithUTF8String:string];
    v7 = [v6 isEqualToString:@"com.apple.performancetrace.metric_monitoring_timed_out"];
    v8 = sub_10000B758();
    v9 = os_signpost_enabled(v8);
    if (v7)
    {
      if (v9)
      {
        LOWORD(v10) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MetricMonitorTimedOut", "Collecting a trace if we were recording", &v10, 2u);
      }

      [WeakRetained _collectAndClearCurrentSettingWithTraceNamePrefix:0 triggerUserNotification:1 callback:0];
    }

    else
    {
      if (v9)
      {
        v10 = 138543362;
        v11 = v6;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedEventWithExpectedName", "Ignoring event with name: '%{public}@'", &v10, 0xCu);
      }
    }
  }

  else
  {
    v6 = sub_10000B758();
    if (os_signpost_enabled(v6))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedEventWithNoName", "Ignoring", &v10, 2u);
    }
  }
}

id sub_10000CFA4()
{
  if (qword_100025D98 != -1)
  {
    sub_10001340C();
  }

  v1 = qword_100025D90;

  return v1;
}

void sub_10000E448(id a1)
{
  v1 = sub_10000B758();
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EagerlyExiting", "Eagerly exiting via 'xpc_transaction_exit_clean()'", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_10000E5F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  v8 = [v2 passiveCollectionConfig];
  LOBYTE(v7) = 0;
  [v2 _collectionQueue_collectWithStartDate:v3 endDate:v4 traceNamePrefix:v5 collectionType:4 triggerUserNotification:v6 collectionConfig:v8 clearPresetSettings:v7 callback:*(a1 + 64)];
}

void sub_10000E7F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  v8 = [v2 passiveCollectionConfig];
  LOBYTE(v7) = 0;
  [v2 _collectionQueue_collectWithStartDate:v3 endDate:v4 traceNamePrefix:v5 collectionType:2 triggerUserNotification:v6 collectionConfig:v8 clearPresetSettings:v7 callback:*(a1 + 64)];
}

void sub_10000F60C(id a1)
{
  qword_100025D70 = os_log_create("com.apple.PerformanceTrace", "PassiveCollectionServiceError");

  _objc_release_x1();
}

void sub_10000F650(id a1)
{
  qword_100025D80 = os_log_create("com.apple.PerformanceTrace", "PassiveCollectionService");

  _objc_release_x1();
}

void sub_10000F694(id a1)
{
  qword_100025D90 = os_log_create("com.apple.PerformanceTrace", "PassiveCollectionServiceTelemetry");

  _objc_release_x1();
}

void sub_10000F6D8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

BOOL sub_10000F6F8(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = [v6 pathExtension];
  v9 = [v8 isEqualToString:@"aar"];

  if ((v9 & 1) == 0)
  {
    v23 = sub_10000FD5C();
    if (os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidOutputPathFileExtension", "Output file path did not have '*.aar' extension", buf, 2u);
    }

    if (!a3)
    {
      goto LABEL_35;
    }

    [NSString stringWithFormat:@"Invalid output file path extension (expected *.aar): %@", v6];
    v27 = LABEL_19:;
    *a3 = [NSError passiveTraceError:6 description:v27];

LABEL_35:
    v19 = 0;
    goto LABEL_36;
  }

  v10 = AAFileStreamOpenWithPath([v6 UTF8String], 513, 0x1A4u);
  if (!v10)
  {
    v24 = sub_10000FD5C();
    if (os_signpost_enabled(v24))
    {
      v25 = __error();
      v26 = strerror(*v25);
      *buf = 138543618;
      v39 = v6;
      v40 = 2082;
      v41 = v26;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FileStreamOpenFailure", "Failed to open file stream for path: %{public}@, errno: %{public}s", buf, 0x16u);
    }

    if (!a3)
    {
      goto LABEL_35;
    }

    [NSString stringWithFormat:@"Failed to create file stream for output archive path: '%@'", v6];
    goto LABEL_19;
  }

  v11 = v10;
  v12 = AACompressionOutputStreamOpen(v10, 0x801u, 0x100000uLL, 0, 0);
  if (!v12)
  {
    v28 = sub_10000FD5C();
    if (os_signpost_enabled(v28))
    {
      *buf = 138543362;
      v39 = v6;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CompressionStreamOpenFailure", "Failed to open compression stream for path: %{public}@", buf, 0xCu);
    }

    if (a3)
    {
      v29 = [NSString stringWithFormat:@"Failed to create compression stream for output archive path: '%@'", v6];
      *a3 = [NSError passiveTraceError:6 description:v29];
    }

    goto LABEL_34;
  }

  v13 = v12;
  v14 = AAEncodeArchiveOutputStreamOpen(v12, 0, 0, 0, 0);
  if (!v14)
  {
    v30 = sub_10000FD5C();
    if (os_signpost_enabled(v30))
    {
      *buf = 138543362;
      v39 = v6;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EncodeStreamOpenFailure", "Failed to open encoding stream for path: %{public}@", buf, 0xCu);
    }

    if (a3)
    {
      v31 = [NSString stringWithFormat:@"Failed to create encoding stream for output archive path: '%@'", v6];
      *a3 = [NSError passiveTraceError:6 description:v31];
    }

    goto LABEL_33;
  }

  v15 = v14;
  v16 = AAPathListCreateWithDirectoryContents([v5 UTF8String], 0, 0, 0, 0, 0);
  if (!v16)
  {
    v32 = sub_10000FD5C();
    if (os_signpost_enabled(v32))
    {
      *buf = 138543362;
      v39 = v5;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PathListCreationFailure", "Failed create path list for path: %{public}@", buf, 0xCu);
    }

    if (a3)
    {
      v33 = [NSString stringWithFormat:@"Failed create path list for path: '%@'", v5];
      *a3 = [NSError passiveTraceError:6 description:v33];
    }

    AAArchiveStreamClose(v15);
LABEL_33:
    AAByteStreamClose(v13);
LABEL_34:
    AAByteStreamClose(v11);
    goto LABEL_35;
  }

  v17 = v16;
  key_set = AAFieldKeySetCreateWithString("TYP,PAT,LNK,DEV,DAT,UID,GID,MOD,FLG,MTM,BTM,CTM");
  path_list = v17;
  v18 = AAArchiveStreamWritePathList(v15, v17, key_set, [v5 UTF8String], 0, 0, 0, 0);
  v19 = v18 == 0;
  if (v18)
  {
    v20 = v18;
    v21 = sub_10000FD5C();
    if (os_signpost_enabled(v21))
    {
      *buf = 138543874;
      v39 = v5;
      v40 = 2114;
      v41 = v6;
      v42 = 1024;
      v43 = v20;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ArchiveStreamWriteFailure", "Failed write archive stream for:\nInput path: %{public}@\nOutput path: %{public}@\nError code: %#x", buf, 0x1Cu);
    }

    if (a3)
    {
      v22 = [NSString stringWithFormat:@"Failed to write archive stream with error code: '%#x'", v20];
      *a3 = [NSError passiveTraceError:6 description:v22];
    }
  }

  else
  {
    if (qword_100025DB8 != -1)
    {
      sub_100013420();
    }

    v35 = qword_100025DB0;
    if (os_signpost_enabled(qword_100025DB0))
    {
      *buf = 138543618;
      v39 = v5;
      v40 = 2114;
      v41 = v6;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ArchiveStreamWriteSuccess", "Successfully wrote archive stream for:\nInput path: %{public}@\nOutput path: %{public}@\n", buf, 0x16u);
    }
  }

  AAArchiveStreamClose(v15);
  AAFieldKeySetDestroy(key_set);
  AAPathListDestroy(path_list);
  AAByteStreamClose(v13);
  AAByteStreamClose(v11);
LABEL_36:
  objc_autoreleasePoolPop(v7);

  return v19;
}

id sub_10000FD5C()
{
  if (qword_100025DA8 != -1)
  {
    sub_100013434();
  }

  v1 = qword_100025DA0;

  return v1;
}

void sub_10000FDA0(id a1)
{
  qword_100025DA0 = os_log_create("com.apple.PerformanceTrace", "DirectoryArchivingError");

  _objc_release_x1();
}

void sub_10000FDE4(id a1)
{
  qword_100025DB0 = os_log_create("com.apple.PerformanceTrace", "DirectoryArchiving");

  _objc_release_x1();
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  if (_set_user_dir_suffix())
  {
    v1 = objc_alloc_init(PTPCPassiveCollectionService);
    [(PTPCPassiveCollectionService *)v1 setGenerateCoreAnalyticsTelemetry:1];
    v2 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.PerformanceTrace.ptpassivecollectiond.collectionconfig"];
    [v2 setDelegate:v1];
    v3 = [(PTPCPassiveCollectionService *)v1 connectionQueue];
    [v2 _setQueue:v3];

    [v2 resume];
    dispatch_main();
  }

  if (qword_100025DC8 != -1)
  {
    dispatch_once(&qword_100025DC8, &stru_100020CC0);
  }

  v4 = qword_100025DC0;
  if (os_log_type_enabled(qword_100025DC0, OS_LOG_TYPE_FAULT))
  {
    v5 = v4;
    v6 = __error();
    v7 = strerror(*v6);
    v8 = 136446210;
    v9 = v7;
    _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Unable to _set_user_dir_suffix() on temporary directory due to error: %{public}s", &v8, 0xCu);
  }

  exit(1);
}

void sub_10000FF5C(id a1)
{
  qword_100025DC0 = os_log_create("com.apple.PerformanceTrace", "FatalPTPassiveCollectiondSetupError");

  _objc_release_x1();
}

uint64_t sub_10000FFB0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ptpassivecollectiond20PTPCPassiveCollector_outputDirectory;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100010028()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ptpassivecollectiond20PTPCPassiveCollector_traceNamePrefix);
  v2 = *(v0 + OBJC_IVAR____TtC20ptpassivecollectiond20PTPCPassiveCollector_traceNamePrefix + 8);

  return v1;
}

uint64_t sub_100010064()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100012D18(v0, qword_100025DF0);
  sub_100010108(v0, qword_100025DF0);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_100010108(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100010164()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100012D18(v0, qword_100025E08);
  sub_100010108(v0, qword_100025E08);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_100010208(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for OSSignposter();

  return sub_100010108(v3, a2);
}

uint64_t sub_100010280@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for OSSignposter();
  v6 = sub_100010108(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_100010390(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  sub_100012768(v7, v9, a4, a5);
}

id sub_100010438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC20ptpassivecollectiond20PTPCPassiveCollector_config] = a1;
  v10 = OBJC_IVAR____TtC20ptpassivecollectiond20PTPCPassiveCollector_outputDirectory;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v9[v10], a4, v11);
  v13 = &v9[OBJC_IVAR____TtC20ptpassivecollectiond20PTPCPassiveCollector_traceNamePrefix];
  *v13 = a2;
  *(v13 + 1) = a3;
  v16.receiver = v9;
  v16.super_class = v4;
  v14 = objc_msgSendSuper2(&v16, "init");
  (*(v12 + 8))(a4, v11);
  return v14;
}

id sub_10001053C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC20ptpassivecollectiond20PTPCPassiveCollector_config] = a1;
  v8 = OBJC_IVAR____TtC20ptpassivecollectiond20PTPCPassiveCollector_outputDirectory;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v4[v8], a4, v9);
  v11 = &v4[OBJC_IVAR____TtC20ptpassivecollectiond20PTPCPassiveCollector_traceNamePrefix];
  *v11 = a2;
  *(v11 + 1) = a3;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for PTPCPassiveCollector();
  v12 = objc_msgSendSuper2(&v14, "init");
  (*(v10 + 8))(a4, v9);
  return v12;
}

uint64_t sub_1000107AC(char *a1, uint64_t a2)
{
  v92 = a2;
  v3 = v2;
  v90 = a1;
  v4 = (*(*(sub_1000129D0(&qword_100025AD0, &qword_100016910) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v6 = &v78 - v5;
  v7 = type metadata accessor for PassiveCollectionResult();
  v96 = *(v7 - 8);
  v97 = v7;
  v8 = *(v96 + 64);
  v9 = (__chkstk_darwin)();
  v82 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v89 = &v78 - v12;
  __chkstk_darwin(v11);
  v14 = &v78 - v13;
  v94 = type metadata accessor for URL();
  v91 = *(v94 - 8);
  v15 = *(v91 + 64);
  v16 = __chkstk_darwin(v94);
  v88 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v86 = &v78 - v18;
  v19 = sub_1000129D0(&qword_100025AD8, &qword_100016918);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v85 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v78 - v23;
  v25 = type metadata accessor for PassiveCollection();
  v80 = *(v25 - 8);
  v81 = v25;
  v26 = *(v80 + 64);
  __chkstk_darwin(v25);
  v87 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PassiveDataSourceCollectionConfig();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v2 + OBJC_IVAR____TtC20ptpassivecollectiond20PTPCPassiveCollector_config);
  v33 = &_swiftEmptyDictionarySingleton;
  if ([v32 collectMSS])
  {
    sub_100012A18(&_swiftEmptyArrayStorage);
    PassiveDataSourceCollectionConfig.init(options:dataCategoryNames:)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = &_swiftEmptyDictionarySingleton;
    sub_100012290(v31, 0x6174736F7263694DLL, 0xEE00746F68736B63, isUniquelyReferenced_nonNull_native);
    v33 = v98;
  }

  if ([v32 collectAppInFocus])
  {
    sub_100012A18(&_swiftEmptyArrayStorage);
    PassiveDataSourceCollectionConfig.init(options:dataCategoryNames:)();
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v33;
    sub_100012290(v31, 0x636F466E49707041, 0xEA00000000007375, v35);
    v33 = v98;
  }

  v36 = [v32 loggingDataCategoryNames];
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = *(v37 + 16);
  v95 = v6;
  v79 = v14;
  if (v38)
  {
    sub_100012A18(&_swiftEmptyArrayStorage);
    PassiveDataSourceCollectionConfig.init(options:dataCategoryNames:)();
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v33;
    sub_100012290(v31, 0x676E6967676F4CLL, 0xE700000000000000, v39);
    v40 = v98;
  }

  else
  {

    v40 = v33;
  }

  v41 = *(v3 + OBJC_IVAR____TtC20ptpassivecollectiond20PTPCPassiveCollector_traceNamePrefix);
  v83 = *(v3 + OBJC_IVAR____TtC20ptpassivecollectiond20PTPCPassiveCollector_traceNamePrefix + 8);
  v84 = v41;
  v42 = type metadata accessor for Date();
  v43 = *(v42 - 8);
  v44 = *(v43 + 16);
  v44(v24, v90, v42);
  v45 = v3;
  v46 = *(v43 + 56);
  v46(v24, 0, 1, v42);
  v47 = v85;
  v44(v85, v92, v42);
  v46(v47, 0, 1, v42);
  (*(v91 + 16))(v86, v45 + OBJC_IVAR____TtC20ptpassivecollectiond20PTPCPassiveCollector_outputDirectory, v94);
  type metadata accessor for PTPCPassiveCollector.PTLogger();
  swift_allocObject();
  v48 = v83;

  v49 = v93;
  PassiveCollection.init(traceNamePrefix:startDate:endDate:outputDirectory:dataSourceOptions:flags:logger:)();
  if (v49)
  {

    return v48;
  }

  v84 = v40;
  result = PassiveCollection.collect()();
  v51 = v95;
  v52 = result;
  v83 = 0;
  v53 = *(result + 16);
  if (!v53)
  {
    v85 = &_swiftEmptyArrayStorage;
LABEL_25:

    v66 = *(v85 + 2);
    if (v66)
    {
      v67 = *(v96 + 16);
      v68 = &v85[(*(v96 + 80) + 32) & ~*(v96 + 80)];
      v92 = *(v96 + 72);
      v93 = v67;
      v86 = (v91 + 8);
      v96 += 16;
      v91 = v96 - 8;
      v48 = &_swiftEmptyArrayStorage;
      v69 = v89;
      do
      {
        v70 = v97;
        (v93)(v69, v68, v97);
        PassiveCollectionResult.outputFile.getter();
        v71 = type metadata accessor for PassiveCollectionResult.OutputFile();
        v72 = *(v71 - 8);
        if ((*(v72 + 48))(v51, 1, v71) == 1)
        {
          (*v91)(v69, v70);
          sub_100012B54(v51);
        }

        else
        {
          v90 = v48;
          v73 = v88;
          PassiveCollectionResult.OutputFile.path.getter();
          (*(v72 + 8))(v51, v71);
          v74 = URL.path(percentEncoded:)(1);
          v75 = v73;
          v48 = v90;
          (*v86)(v75, v94);
          (*v91)(v69, v70);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_1000115E0(0, *(v48 + 2) + 1, 1, v48);
          }

          v77 = *(v48 + 2);
          v76 = *(v48 + 3);
          if (v77 >= v76 >> 1)
          {
            v48 = sub_1000115E0((v76 > 1), v77 + 1, 1, v48);
          }

          *(v48 + 2) = v77 + 1;
          *&v48[16 * v77 + 32] = v74;
          v51 = v95;
          v69 = v89;
        }

        v68 += v92;
        --v66;
      }

      while (v66);
    }

    else
    {

      v48 = &_swiftEmptyArrayStorage;
    }

    (*(v80 + 8))(v87, v81);

    return v48;
  }

  v54 = 0;
  v55 = (v96 + 8);
  v93 = (v96 + 32);
  v85 = &_swiftEmptyArrayStorage;
  v56 = v79;
  v92 = v96 + 16;
  while (v54 < *(v52 + 16))
  {
    v57 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v58 = *(v96 + 72);
    (*(v96 + 16))(v56, v52 + v57 + v58 * v54, v97);
    if (PassiveCollectionResult.dataSourceErrors.getter() || PassiveCollectionResult.infrastructureErrors.getter())
    {

      result = (*v55)(v56, v97);
      v51 = v95;
    }

    else
    {
      v59 = *v93;
      (*v93)(v82, v56, v97);
      v60 = v85;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v62 = v60;
      v98 = v60;
      if ((v61 & 1) == 0)
      {
        sub_100011C94(0, *(v60 + 2) + 1, 1);
        v62 = v98;
      }

      v64 = *(v62 + 2);
      v63 = *(v62 + 3);
      v65 = (v64 + 1);
      if (v64 >= v63 >> 1)
      {
        v86 = v59;
        v90 = (v64 + 1);
        sub_100011C94(v63 > 1, v64 + 1, 1);
        v65 = v90;
        v59 = v86;
        v62 = v98;
      }

      *(v62 + 2) = v65;
      v85 = v62;
      result = (v59)(&v62[v57 + v64 * v58], v82, v97);
      v51 = v95;
    }

    if (v53 == ++v54)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

id sub_1000113CC()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_100011460()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PTPCPassiveCollector();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100011528(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_1000115E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000129D0(&qword_100025C10, &qword_100016980);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000116EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000117B8(v11, 0, 0, 1, a1, a2);
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
    sub_100012CBC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100012C70(v11);
  return v7;
}

unint64_t sub_1000117B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000118C4(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_1000118C4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100011910(a1, a2);
  sub_100011A40(&off_100020CE0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100011910(uint64_t a1, unint64_t a2)
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

  v6 = sub_100011B2C(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100011B2C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_100011A40(uint64_t result)
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

  result = sub_100011BA0(result, v12, 1, v3);
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

void *sub_100011B2C(uint64_t a1, uint64_t a2)
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

  sub_1000129D0(&qword_100025C30, &qword_1000169A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100011BA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000129D0(&qword_100025C30, &qword_1000169A0);
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

size_t sub_100011C94(size_t a1, int64_t a2, char a3)
{
  result = sub_100011CB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100011CB4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000129D0(&qword_100025C18, &qword_100016988);
  v10 = *(type metadata accessor for PassiveCollectionResult() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PassiveCollectionResult() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100011E8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  return a3(a1, a2, v7);
}

uint64_t sub_100011F10(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = type metadata accessor for PassiveDataSourceCollectionConfig();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_1000129D0(&qword_100025C20, &qword_100016990);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_100012290(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100011E8C(a2, a3, sub_100011528);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1000124E8();
      goto LABEL_7;
    }

    sub_100011F10(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_100011E8C(a2, a3, sub_100011528);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for PassiveDataSourceCollectionConfig();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_100012438(v12, a2, a3, a1, v18);
}

uint64_t sub_100012438(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for PassiveDataSourceCollectionConfig();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_1000124E8()
{
  v1 = v0;
  v36 = type metadata accessor for PassiveDataSourceCollectionConfig();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin();
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000129D0(&qword_100025C20, &qword_100016990);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100012768(uint64_t a1, unint64_t a2, const char *a3, const char *a4)
{
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100025DD0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_100010108(v13, qword_100025DF0);

  static OSSignpostID.exclusive.getter();
  v14 = OSSignposter.logHandle.getter();
  v15 = static os_signpost_type_t.event.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v16 = a1;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v8;
    v24 = v18;
    v19 = a4;
    v20 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1000116EC(v16, a2, &v24);
    v21 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, v21, a3, v19, v17, 0xCu);
    sub_100012C70(v20);

    return (*(v9 + 8))(v12, v23);
  }

  else
  {

    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t type metadata accessor for PTPCPassiveCollector()
{
  result = qword_100025DE0;
  if (!qword_100025DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000129D0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100012A18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000129D0(&qword_100025C28, &qword_100016998);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100011E8C(v5, v6, sub_100011528);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_100012B54(uint64_t a1)
{
  v2 = sub_1000129D0(&qword_100025AD0, &qword_100016910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012BC4()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100012C70(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100012CBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100012D18(uint64_t a1, uint64_t *a2)
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

void sub_100012EA4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to mark file purgeable: %{errno}d", v2, 8u);
}

void sub_100012F44(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Notification added with error: %{public}@", &v2, 0xCu);
}

void sub_1000130AC(int a1, NSObject *a2)
{
  v2[0] = 67240192;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to post notification for new global state change. Status: %{public}#x", v2, 8u);
}

void sub_100013264(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10000F6D8(&_mh_execute_header, v2, v3, "Unrecoverable error: Could not reset invalid persisted state due to unrecoverable error: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_1000132FC(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10000F6D8(&_mh_execute_header, v2, v3, "Unrecoverable error: Could not determine instrumentation configuration due to unrecoverable error: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_100013394(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unrecoverable error: Could not setup trace directory due to error: %{public}@", &v2, 0xCu);
}