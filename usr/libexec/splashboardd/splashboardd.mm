id sub_100001028()
{
  if (qword_1000113A8 != -1)
  {
    sub_100005BD4();
  }

  v1 = qword_1000113A0;

  return v1;
}

void sub_10000106C(id a1)
{
  qword_1000113A0 = os_log_create("com.apple.SplashBoard", "Snapshot");

  _objc_release_x1();
}

id sub_1000010B0()
{
  if (qword_1000113B8 != -1)
  {
    sub_100005BE8();
  }

  v1 = qword_1000113B0;

  return v1;
}

void sub_1000010F4(id a1)
{
  qword_1000113B0 = os_log_create("com.apple.SplashBoard", "Memory");

  _objc_release_x1();
}

id sub_100001138()
{
  if (qword_1000113C8 != -1)
  {
    sub_100005BFC();
  }

  v1 = qword_1000113C0;

  return v1;
}

void sub_10000117C(id a1)
{
  qword_1000113C0 = os_log_create("com.apple.SplashBoard", "FetchRequests");

  _objc_release_x1();
}

id sub_1000011C0()
{
  if (qword_1000113D8 != -1)
  {
    sub_100005C10();
  }

  v1 = qword_1000113D0;

  return v1;
}

void sub_100001204(id a1)
{
  qword_1000113D0 = os_log_create("com.apple.SplashBoard", "SnapshotReaper");

  _objc_release_x1();
}

id sub_100001248()
{
  if (qword_1000113E8 != -1)
  {
    sub_100005C24();
  }

  v1 = qword_1000113E0;

  return v1;
}

void sub_10000128C(id a1)
{
  qword_1000113E0 = os_log_create("com.apple.SplashBoard", "DaemonLifecycle");

  _objc_release_x1();
}

id sub_1000012D0()
{
  if (qword_1000113F8 != -1)
  {
    sub_100005C38();
  }

  v1 = qword_1000113F0;

  return v1;
}

void sub_100001314(id a1)
{
  qword_1000113F0 = os_log_create("com.apple.SplashBoard", "Capture");

  _objc_release_x1();
}

id sub_100001358()
{
  if (qword_100011408 != -1)
  {
    sub_100005C4C();
  }

  v1 = qword_100011400;

  return v1;
}

void sub_10000139C(id a1)
{
  qword_100011400 = os_log_create("com.apple.SplashBoard", "FileManifest");

  _objc_release_x1();
}

id sub_1000013E0()
{
  if (qword_100011418 != -1)
  {
    sub_100005C60();
  }

  v1 = qword_100011410;

  return v1;
}

void sub_100001424(id a1)
{
  qword_100011410 = os_log_create("com.apple.SplashBoard", "Purge");

  _objc_release_x1();
}

id sub_100001468()
{
  if (qword_100011428 != -1)
  {
    sub_100005C74();
  }

  v1 = qword_100011420;

  return v1;
}

void sub_1000014AC(id a1)
{
  qword_100011420 = os_log_create("com.apple.SplashBoard", "Common");

  _objc_release_x1();
}

uint64_t sub_100001634(uint64_t result)
{
  if (result)
  {
    if (result == 2)
    {
      return __UIAppStatusBarDefaultDoubleHeight();
    }

    else
    {
      return __UIAppStatusBarDefaultHeight();
    }
  }

  return result;
}

void sub_100001D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(exception_object);
    if (a14)
    {
      *a14 = [v14 _errorForParsingException:v15 bundleID:a13];
    }

    objc_end_catch();
    JUMPOUT(0x100001CA0);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000023C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a2 == 1)
  {
    v23 = objc_begin_catch(exception_object);
    if (a19)
    {
      v24 = [XBLaunchImageError alloc];
      v26 = [v23 description];
      v25 = [NSString stringWithFormat:@"Exception thrown during configuration load: %@"];
      *a19 = [v24 initWithCode:2 bundleID:a21 reason:v25 fatal:0];
    }

    objc_end_catch();
    JUMPOUT(0x100002364);
  }

  _Unwind_Resume(exception_object);
}

void sub_100002850(void *a1)
{
  v1 = a1;
  v2 = [v1 subviews];

  if (v2)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [v1 subviews];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          sub_100002850(*(*(&v8 + 1) + 8 * v7));
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }

  [v1 setSemanticContentAttribute:4];
}

void sub_100002F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    v11 = [XBLaunchImageError alloc];
    v12 = [*(v9 + 32) bundleIdentifier];
    v15 = [v10 description];
    v13 = [NSString stringWithFormat:@"Exception thrown during display: %@"];
    v14 = [v11 initWithCode:7 bundleID:v12 reason:v13 fatal:1];

    objc_end_catch();
    if (!v14)
    {
      JUMPOUT(0x100002E30);
    }

    JUMPOUT(0x100002DDCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_100003F10(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = +[XBLaunchImageProviderServer sharedInstance];
  [v2 run];

  objc_autoreleasePoolPop(v1);
  v3 = +[NSRunLoop mainRunLoop];
  [v3 run];

  objc_autoreleasePoolPop(v0);
  return 0xFFFFFFFFLL;
}

void sub_100004014(id a1)
{
  v1 = objc_alloc_init(XBLaunchImageProviderServer);
  qword_100011430 = v1;

  _objc_release_x1(v1);
}

void sub_1000041B8(id a1)
{
  if (!+[NSThread isMainThread])
  {
    sub_100005FC0();
  }

  qword_100011448 = pthread_self();
}

void sub_1000041F0(id a1)
{
  v1 = +[NSDate date];
  v2 = sub_100001248();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Warming up", &v11, 2u);
  }

  v3 = +[NSBundle mainBundle];
  v4 = +[NSLocale currentLocale];
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = +[UIScreen mainScreen];
  +[UIKeyboard usesInputSystemUI];
  objc_opt_class();
  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  UIAnimationDragCoefficient();
  [UIWindow setShouldRestrictViewsForSplashboard:1];
  [UIWindow setRestrictedSplashboardClasses:&off_10000CC08];

  v8 = sub_1000012D0();
  _XBDebugCaptureIsEnabled();
  v9 = sub_100001248();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    [v1 timeIntervalSinceNow];
    v11 = 134217984;
    v12 = -v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warm-up complete after %.3fs", &v11, 0xCu);
  }
}

void sub_1000045AC(uint64_t a1)
{
  v2 = [*(a1 + 32) _transactionWorkForClient:*(a1 + 40)];
  v3 = [v2 contextWrapper];
  v4 = v3;
  if (v3)
  {
    [v3 invalidate];
    [v2 setContextWrapper:0];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004684;
  block[3] = &unk_10000C730;
  v6 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
}

intptr_t sub_100004684(uint64_t a1)
{
  +[CATransaction flush];
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

void sub_100004D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Block_object_dispose((v33 - 224), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004D5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100004D74(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 97))
    {
      v3 = 3;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 72) + 8);
  v7 = *(v6 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(*(a1 + 80) + 8);
  v13 = *(v10 + 40);
  obj = v7;
  v11 = [v4 _onMain_createLaunchWindowForClient:v5 withLaunchRequest:v8 appInfo:v9 captureInfo:&obj captureOptions:v3 error:&v13];
  objc_storeStrong((v6 + 40), obj);
  objc_storeStrong((v10 + 40), v13);
  *(*(*(a1 + 64) + 8) + 24) = v11;
  v12 = *(a1 + 88);
  pthread_dependency_fulfill_np();
  objc_autoreleasePoolPop(v2);
}

void sub_100004E40(uint64_t a1, void *a2)
{
  v7 = a2;
  xpc_dictionary_set_int64(v7, XBLaunchImageProviderMessageKeyContextID, *(*(*(a1 + 32) + 8) + 24));
  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (v3)
  {
    v4 = [v3 bs_secureEncoded];
    BSSerializeDataToXPCDictionaryWithKey();
  }

  if (*(a1 + 56) == 1)
  {
    v5 = *(*(*(a1 + 48) + 8) + 40);
    if (v5)
    {
      v6 = [v5 bs_secureEncoded];
      BSSerializeDataToXPCDictionaryWithKey();
    }
  }
}

_DWORD *sub_1000057B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = dispatch_source_get_data(*(v2 + 16));
  result = *(a1 + 32);
  v5 = result[6];
  if (v3 != v5)
  {
    if (v5 == 16)
    {
      v6 = @"ProcessMemoryWarning";
    }

    else
    {
      if (v5 != 32)
      {
        return result;
      }

      v6 = @"ProcessMemoryCritical";
    }

    return [result _publishMemoryReportForPressureType:v6];
  }

  return result;
}

void sub_1000059E4(uint64_t a1, void *a2)
{
  v3 = kSymptomDiagnosticReplySuccess;
  v4 = a2;
  if ([v4 bs_BOOLForKey:v3])
  {
    v5 = [v4 objectForKeyedSubscript:kSymptomDiagnosticReplySessionID];

    v6 = sub_1000010B0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100006270(a1, v5, v6);
    }
  }

  else
  {
    v7 = [v4 bs_safeNumberForKey:@"reason"];

    v8 = [v7 longValue];
    v5 = sub_1000010B0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000061B0(a1, v8, v5);
    }
  }
}

void sub_100005C88(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[%@] unsupported configuration found in xib - ignoring UIWindow", buf, 0xCu);
}

void sub_100005E60()
{
  sub_100003F38();
  v3 = v0;
  v4 = 25000000;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "[%@] estimated size (%zu) is over limit (%zu); proceeding to capture under set default", v2, 0x20u);
}

void sub_100005EE8(uint64_t a1, uint64_t a2)
{
  v5 = +[NSAssertionHandler currentHandler];
  v4 = _NSFullMethodName();
  [v5 handleFailureInMethod:a2 object:a1 file:@"XBLaunchImageContextWrapper.m" lineNumber:403 description:{@"%@ must be called on the main thread", v4}];
}

void sub_100005FC0()
{
  v1 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"[XBLaunchImageProviderServer run]_block_invoke"];
  [v1 handleFailureInFunction:v0 file:@"XBLaunchImageProviderServer.m" lineNumber:96 description:@"this call must be made on the main thread"];
}

void sub_10000604C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Not an allowed client %{public}@", &v2, 0xCu);
}

void sub_1000060C4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"XBLaunchImageProviderServer.m" lineNumber:365 description:@"memory record count should not be greater than the max allowed size"];
}

void sub_100006138(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error getting process memory while processing bundleID: %{public}@", &v2, 0xCu);
}

void sub_1000061B0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) description];
  v7 = 138543874;
  v8 = v5;
  v9 = 2048;
  v10 = a2;
  v11 = 2114;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Memory pressure event: %{public}@. Not published for reason code: %ld. Memory history: %{public}@", &v7, 0x20u);
}

void sub_100006270(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Memory pressure event: %{public}@. Published with sessionID: %{public}@", &v4, 0x16u);
}