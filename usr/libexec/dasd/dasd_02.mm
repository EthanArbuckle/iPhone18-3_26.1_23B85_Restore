void sub_1000C3C38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 doubleValue];
  v7 = [NSNumber numberWithDouble:v6 / *(*(*(a1 + 40) + 8) + 24)];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
}

id sub_1000C3F40(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = [objc_opt_class() computeHasDeviceRecentlyUpdated];
  byte_10020B778 = result;
  return result;
}

void sub_1000C4150(id a1)
{
  v1 = MGGetStringAnswer();
  byte_10020B779 = [v1 isEqualToString:@"iPad"];
}

void sub_1000C41DC(id a1)
{
  v1 = MGGetStringAnswer();
  byte_10020B788 = [v1 isEqualToString:@"iPhone"];
}

uint64_t sub_1000C4A54(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [NSNumber numberWithUnsignedLong:*(a1 + 40)];
  v9 = [v7 countForObject:v8];

  v10 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v11 = [NSNumber numberWithUnsignedLong:*(a1 + 40)];
  v12 = [v10 countForObject:v11];

  v13 = -1;
  if (v9 <= v12)
  {
    v13 = 1;
  }

  if (v9 == v12)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

void sub_1000C59DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(*(a1 + 32) + 16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10012A2CC(v4);
    }
  }
}

uint64_t sub_1000C5A38(uint64_t a1, void *a2)
{
  [a2 timestamp];
  *(*(*(a1 + 32) + 8) + 24) = v3;
  return 0;
}

void sub_1000C5CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C5CD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C5CEC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(*(a1 + 32) + 16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10012A2CC(v4);
    }
  }
}

uint64_t sub_1000C5D48(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1(v3, v5);
}

int64_t sub_1000C5D90(id a1, BPSTuple *a2, BPSTuple *a3)
{
  v4 = a3;
  v5 = [(BPSTuple *)a2 first];
  [v5 timestamp];
  v6 = [NSDate dateFromAbsoluteTime:?];

  v7 = [(BPSTuple *)v4 first];

  [v7 timestamp];
  v8 = [NSDate dateFromAbsoluteTime:?];

  v9 = [v6 compare:v8];
  return v9;
}

BOOL sub_1000C5FB0(id a1, BMStoreEvent *a2)
{
  v2 = a2;
  v3 = [(BMStoreEvent *)v2 eventBody];
  if ([v3 starting])
  {
    v4 = [(BMStoreEvent *)v2 eventBody];
    v5 = [v4 type] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1000C61D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C61F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(*(a1 + 32) + 16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10012A2CC(v4);
    }
  }
}

NSString *__cdecl sub_1000C625C(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 bundleID];

  return v3;
}

NSString *__cdecl sub_1000C6740(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 bundleID];

  return v3;
}

BOOL sub_1000C6790(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 starting];

  return v3;
}

id sub_1000C67CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  if ([v4 starting])
  {
    v5 = [v3 eventBody];
    v6 = [v5 bundleID];
    v7 = [v6 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BPSTuple *__cdecl sub_1000C685C(id a1, BMStoreEvent *a2)
{
  v2 = a2;
  v3 = [[BPSTuple alloc] initWithFirst:v2 second:0];

  return v3;
}

void sub_1000C68B8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(*(a1 + 32) + 16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10012A2CC(v4);
    }
  }
}

void sub_1000C6924(uint64_t a1)
{
  v2 = BiomeLibrary();
  v3 = [v2 Activity];
  v4 = [v3 Level];
  v5 = qword_10020B7A8;
  qword_10020B7A8 = v4;

  v6 = *(a1 + 32);
  v9 = [qword_10020B7A8 publisher];
  v7 = [v6 firstEventDateOnPublisher:v9];
  v8 = qword_10020B7B0;
  qword_10020B7B0 = v7;
}

BOOL sub_1000C69D4(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 inUseStatus];

  return (v3 & 0xFFFFFFF7) != 0;
}

BPSTuple *__cdecl sub_1000C6A14(id a1, BMStoreEvent *a2)
{
  v2 = a2;
  v3 = [[BPSTuple alloc] initWithFirst:v2 second:0];

  return v3;
}

void sub_1000C6A70(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(*(a1 + 32) + 16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10012A2CC(v4);
    }
  }
}

void sub_1000C6D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000C6DC8(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 starting];

  return v3;
}

void sub_1000C6E04(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(*(a1 + 32) + 16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10012A2CC(v4);
    }
  }
}

void sub_1000C7130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000C714C(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 starting];

  return v3;
}

BPSTuple *__cdecl sub_1000C7188(id a1, BMStoreEvent *a2)
{
  v2 = a2;
  v3 = [[BPSTuple alloc] initWithFirst:v2 second:0];

  return v3;
}

void sub_1000C71E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(*(a1 + 32) + 16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10012A2CC(v4);
    }
  }
}

id sub_1000C7594(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 budgetID];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

BPSTuple *__cdecl sub_1000C75F0(id a1, BMStoreEvent *a2)
{
  v2 = a2;
  v3 = [[BPSTuple alloc] initWithFirst:v2 second:0];

  return v3;
}

void sub_1000C764C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(*(a1 + 32) + 16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10012A2CC(v4);
    }
  }
}

void sub_1000C7724(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_1000C7B24(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_10020B7C8 = [objc_alloc(objc_opt_class()) initAsAnonymous:0 withContext:0];

  return _objc_release_x1();
}

void sub_1000C8824(uint64_t a1)
{
  obj = *(*(a1 + 32) + 472);
  objc_sync_enter(obj);
  [*(*(a1 + 32) + 472) removeAllObjects];
  [*(*(a1 + 32) + 480) removeAllObjects];
  objc_sync_exit(obj);
}

void sub_1000C88B4(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = +[_DASSystemConditionsRecorder sharedInstance];
  [v3 recordForKeyPaths:v2];
}

void sub_1000C8924(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_DASDaemonLogger logForCategory:@"evaluation"];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "NW Evaluation: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [NSSet setWithArray:v3];
  [v5 unprotectedEvaluateScoreAndRunActivities:v6];
}

void sub_1000CA11C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 56) >= 120.0)
  {
    v3 = *(a1 + 56);
  }

  else
  {
    v3 = 120.0;
  }

  if (v2 > v3 + -60.0)
  {
    v2 = v3 + -60.0;
  }

  if (v2 >= 60.0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 60.0;
  }

  v5 = arc4random_uniform(0xB4u) + 510.0;
  v6 = arc4random_uniform(0xB4u);
  if (v4 >= v5)
  {
    v4 = v5;
  }

  if (v3 >= v6 + 810.0)
  {
    v3 = v6 + 810.0;
  }

  v7 = [_DASSystemContext isPluggedIn:*(*(a1 + 32) + 768)];
  v8 = v7 | *(a1 + 64);
  if (v7 && (*(a1 + 64) & 1) == 0 && v3 < 60.0)
  {
    v3 = arc4random_uniform(0xAu) + 60.0;
  }

  v9 = +[NSDate date];
  v10 = [v9 dateByAddingTimeInterval:v3];
  v11 = *(a1 + 32);
  v12 = *(v11 + 216);
  *(v11 + 216) = v10;

  v13 = [v9 dateByAddingTimeInterval:v4];
  v14 = *(a1 + 32);
  v15 = *(v14 + 208);
  *(v14 + 208) = v13;

  v16 = v8 & 1;
  [*(*(a1 + 32) + 200) scheduleOnBehalfOf:*(a1 + 40) between:v8 & 1 and:v4 waking:v3];
  v17 = +[NSLocale currentLocale];
  v18 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 64);
    v20 = [*(*(a1 + 32) + 208) descriptionWithLocale:v17];
    v21 = [*(*(a1 + 32) + 216) descriptionWithLocale:v17];
    v22 = *(a1 + 40);
    v23[0] = 67110146;
    v23[1] = v16;
    v24 = 1024;
    v25 = v19;
    v26 = 2112;
    v27 = v20;
    v28 = 2112;
    v29 = v21;
    v30 = 2112;
    v31 = v22;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Setting timer (isWaking=%u, activityRequiresWaking=%u) between %@ and %@ for %@", v23, 0x2Cu);
  }
}

void sub_1000CA9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000CC1DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 isBackgroundTaskActivity] && (objc_msgSend(v9, "isContactTracingBackgroundActivity") & 1) == 0)
        {
          [*(a1 + 32) addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_1000CD578(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = _DASLaunchReasonBackgroundRemoteNotification;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 launchReason];
        v12 = [v11 isEqualToString:v8];

        if (v12)
        {
          [*(a1 + 32) addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

void sub_1000CD780(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 isBackgroundTaskActivity])
        {
          [*(a1 + 32) addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_1000CE970(uint64_t a1)
{
  v2 = [_DASDaemonLogger logForCategory:@"lifecycle"];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "STARTING local activity %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) startHandler];
  v4[2](v4, *(a1 + 32));
}

void sub_1000CF414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id location, char a46)
{
  objc_destroyWeak((v46 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Unwind_Resume(a1);
}

void sub_1000CF470(void *a1, void *a2)
{
  v3 = a2;
  v4 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Assertion %@ for %@ is about to expire, warning clients", &v9, 0x16u);
  }

  v6 = atomic_load((*(a1[6] + 8) + 24));
  if ((v6 & 1) == 0)
  {
    v7 = a1[5];
    v8 = [NSSet setWithObject:a1[4]];
    [v7 warnBGTaskClientsForActivitiesAboutToExpire:v8];

    atomic_store(1u, (*(a1[6] + 8) + 24));
  }
}

void sub_1000CF598(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412802;
    v16 = v5;
    v17 = 2112;
    v18 = v7;
    v19 = 1024;
    v20 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Assertion %@ for %@ was invalidated, server-initiated: %{BOOL}d", buf, 0x1Cu);
  }

  v8 = atomic_load((*(*(a1 + 48) + 8) + 24));
  if ((v8 & 1) == 0)
  {
    if (a3)
    {
      v9 = [*(a1 + 40) evaluationQueue];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000CF754;
      v13[3] = &unk_1001B56E0;
      v14 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
      dispatch_async(v9, v13);

      v10 = *(a1 + 40);
      v11 = [NSSet setWithObject:*(a1 + 32)];
      [v10 cancelActivities:v11];

      WeakRetained = objc_loadWeakRetained((a1 + 56));
      [WeakRetained invalidate];
    }

    atomic_store(1u, (*(*(a1 + 48) + 8) + 24));
  }
}

void sub_1000CF754(uint64_t a1)
{
  v2 = [*(a1 + 32) budgetManager];
  [v2 reportActivityNoLongerRunning:*(a1 + 40)];
}

void sub_1000D0910(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 result];
  v6 = *(a1 + 32);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = v6;
    v10 = [v7 launchReason];
    v11 = [NSNumber numberWithUnsignedInteger:v5];
    *buf = 138412802;
    v25 = v8;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Launch for %@ with reason %@ result: %@", buf, 0x20u);
  }

  dispatch_group_wait(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL);
  v12 = *(a1 + 64);
  os_unfair_recursive_lock_lock_with_options();
  v13 = *(a1 + 32);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 48);
    v15 = v13;
    v16 = [v14 assertion];
    v17 = *(a1 + 40);
    *buf = 138412546;
    v25 = v16;
    v26 = 2112;
    v27 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Invalidating assertion %@ for %@", buf, 0x16u);
  }

  v18 = [*(a1 + 48) assertion];
  v23 = 0;
  v19 = [v18 invalidateWithError:&v23];
  v20 = v23;

  if ((v19 & 1) == 0)
  {
    if (v20)
    {
      v21 = *(a1 + 32);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10012A434((a1 + 48), v21, v20);
      }
    }
  }

  v22 = *(a1 + 64);
  os_unfair_recursive_lock_unlock();
}

void sub_1000D0B6C(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 40));
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D0CC8;
  v8[3] = &unk_1001B85D8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 80);
  v11 = *(a1 + 56);
  v12 = *(a1 + 40);
  v16 = *(a1 + 104);
  v17 = *(a1 + 112);
  v6 = *(a1 + 88);
  v7 = *(a1 + 48);
  v13 = v6;
  v14 = v7;
  v15 = *(a1 + 96);
  v18 = *(a1 + 120);
  [v2 launchApplication:v3 applicationURL:v4 additionalOptions:v5 completion:v8];
}

void sub_1000D0CC8(uint64_t a1, unsigned int a2, void *a3)
{
  v51 = a3;
  v56 = a2;
  if (a2)
  {
    (*(*(a1 + 96) + 16))();
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 48);
      *buf = 138412290;
      v84 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Successful launch for %@", buf, 0xCu);
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEBUG))
    {
      sub_10012A4EC(a1);
    }

    v54 = +[NSMutableSet set];
    v52 = +[NSMutableSet set];
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = *(a1 + 64);
    v57 = [obj countByEnumeratingWithState:&v78 objects:v82 count:16];
    if (v57)
    {
      v55 = *v79;
      do
      {
        for (i = 0; i != v57; i = i + 1)
        {
          if (*v79 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v78 + 1) + 8 * i);
          v9 = *(a1 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v84 = v8;
            _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Current activity %@", buf, 0xCu);
          }

          v10 = [*(*(a1 + 72) + 568) createUnmanagedAssertionsForActivity:v8 targetPID:v56];
          v11 = [v10 anyObject];
          if (v11)
          {
            objc_initWeak(&location, v11);
            v71[0] = _NSConcreteStackBlock;
            v71[1] = 3221225472;
            v71[2] = sub_1000D1748;
            v71[3] = &unk_1001B8560;
            v72 = *(a1 + 40);
            objc_copyWeak(&v76, &location);
            v12 = *(a1 + 48);
            v13 = *(a1 + 72);
            v73 = v12;
            v74 = v13;
            v75 = v8;
            [v11 setWarningHandler:v71];
            if ([v8 isBackgroundTaskActivity])
            {
              v14 = 0;
            }

            else
            {
              v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, *(*(a1 + 72) + 368));
              v16 = dispatch_time(0, 29000000000);
              dispatch_source_set_timer(v14, v16, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
              v17 = *(a1 + 80);
              v18 = [v8 uuid];
              v19 = [v17 objectForKeyedSubscript:v18];

              handler[0] = _NSConcreteStackBlock;
              handler[1] = 3221225472;
              handler[2] = sub_1000D1840;
              handler[3] = &unk_1001B5668;
              v70 = v19;
              v20 = v19;
              dispatch_source_set_event_handler(v14, handler);
              dispatch_activate(v14);
            }

            v59[0] = _NSConcreteStackBlock;
            v59[1] = 3221225472;
            v59[2] = sub_1000D1848;
            v59[3] = &unk_1001B85B0;
            v60 = *(a1 + 32);
            objc_copyWeak(&v68, &location);
            v61 = *(a1 + 40);
            v62 = *(a1 + 48);
            v21 = v14;
            v22 = *(a1 + 72);
            v63 = v21;
            v64 = v22;
            v65 = v8;
            v23 = v54;
            v66 = v23;
            v67 = *(a1 + 104);
            [v11 setInvalidationHandler:v59];
            v24 = *(a1 + 72);
            os_unfair_recursive_lock_lock_with_options();
            v25 = [v8 assertion];
            v26 = [v25 isValid];

            if (v26)
            {
              v27 = *(a1 + 40);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v37 = [v8 assertion];
                *buf = 138412546;
                v84 = v8;
                v85 = 2112;
                v86 = v37;
                _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Activity %@ was launched while it has an existing valid assertion: %@. Skipping this activity", buf, 0x16u);
              }

              v28 = *(a1 + 72);
              os_unfair_recursive_lock_unlock();
              goto LABEL_32;
            }

            v58 = 0;
            v29 = [v11 acquireWithError:&v58];
            v30 = v58;
            if (v29)
            {
              [v8 setAssertion:v11];
              [v23 addObject:v11];
              v31 = *(a1 + 40);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v84 = v11;
                v85 = 2112;
                v86 = v8;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Assertion %@ acquired for task %@", buf, 0x16u);
              }
            }

            else
            {
              v32 = *(a1 + 40);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v38 = *(a1 + 48);
                *buf = 138412546;
                v84 = v38;
                v85 = 2112;
                v86 = v30;
                _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to acquire assertion for %@, error: %@", buf, 0x16u);
              }
            }

            v33 = *(a1 + 72);
            os_unfair_recursive_lock_unlock();
            if (v29)
            {
              [*(*(a1 + 72) + 552) reportActivityRunning:v8];
              if ([v8 isBackgroundTaskActivity])
              {
                [v52 addObject:v8];
              }
            }

            else
            {
LABEL_32:
              if (v21)
              {
                v34 = *(a1 + 80);
                v35 = [v8 uuid];
                v36 = [v34 objectForKeyedSubscript:v35];
                [v36 invalidate];

                dispatch_source_cancel(v21);
              }
            }

            objc_destroyWeak(&v68);
            objc_destroyWeak(&v76);

            objc_destroyWeak(&location);
            goto LABEL_35;
          }

          v15 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v84 = v8;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to create assertions associated with %@, skipping", buf, 0xCu);
          }

LABEL_35:
        }

        v57 = [obj countByEnumeratingWithState:&v78 objects:v82 count:16];
      }

      while (v57);
    }

    if ([v54 count])
    {
      if ([v52 count])
      {
        v39 = [*(a1 + 72) connectedBGTaskClients];
        objc_sync_enter(v39);
        v40 = [*(a1 + 72) connectedBGTaskClients];
        v41 = [NSNumber numberWithInt:v56];
        v42 = [v40 objectForKeyedSubscript:v41];

        if (v42)
        {
          [v42 handleLaunchFromDaemonForActivities:v52];
        }

        else
        {
          v45 = [*(a1 + 72) activitiesWaitingForBGTaskClients];
          v46 = [NSNumber numberWithInt:v56];
          v47 = [v45 objectForKeyedSubscript:v46];

          if (!v47)
          {
            v47 = +[NSMutableSet set];
            v48 = [*(a1 + 72) activitiesWaitingForBGTaskClients];
            v49 = [NSNumber numberWithInt:v56];
            [v48 setObject:v47 forKeyedSubscript:v49];
          }

          v50 = *(a1 + 40);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v84 = v52;
            v85 = 1024;
            LODWORD(v86) = v56;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Queueing activities %@ until app with pid %d launches", buf, 0x12u);
          }

          [v47 unionSet:v52];
          [*(a1 + 72) scheduleConnectionTimeoutForPid:v56];
        }

        objc_sync_exit(v39);
      }

      dispatch_group_leave(*(a1 + 56));
    }

    else
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10012A558();
      }

      dispatch_group_leave(*(a1 + 56));
      (*(*(a1 + 104) + 16))();
    }
  }

  else
  {
    v43 = *(a1 + 40);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = *(a1 + 48);
      *buf = 138412546;
      v84 = v44;
      v85 = 2112;
      v86 = v51;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Error launching %@: %@", buf, 0x16u);
    }

    dispatch_group_leave(*(a1 + 56));
    (*(*(a1 + 88) + 16))();
  }
}

void sub_1000D1748(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v5 = *(a1 + 40);
    v8 = 138412546;
    v9 = WeakRetained;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Assertion %@ for app %@ about to expire, warning", &v8, 0x16u);
  }

  v6 = *(a1 + 48);
  v7 = [NSSet setWithObject:*(a1 + 56)];
  [v6 warnBGTaskClientsForActivitiesAboutToExpire:v7];
}

void sub_1000D1848(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_loadWeakRetained((a1 + 96));
    v8 = *(a1 + 48);
    *buf = 138412802;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    v23 = 1024;
    v24 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Assertion %@ for app %@ invalidated, server-initiated: %{BOOL}d", buf, 0x1Cu);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    dispatch_source_cancel(v9);
  }

  v10 = *(*(a1 + 64) + 368);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D1A0C;
  block[3] = &unk_1001B8588;
  v13 = *(a1 + 32);
  v14 = *(a1 + 64);
  v15 = *(a1 + 80);
  v16 = WeakRetained;
  v17 = *(a1 + 40);
  v18 = *(a1 + 88);
  v11 = WeakRetained;
  dispatch_async(v10, block);
}

id sub_1000D1A0C(uint64_t a1)
{
  [*(*(a1 + 40) + 552) reportActivityNoLongerRunning:*(a1 + 48)];
  v2 = *(a1 + 40);
  os_unfair_recursive_lock_lock_with_options();
  [*(a1 + 48) setAssertion:0];
  [*(a1 + 56) removeObject:*(a1 + 64)];
  v3 = *(a1 + 40);
  os_unfair_recursive_lock_unlock();
  result = [*(a1 + 56) count];
  if (!result)
  {
    v5 = *(a1 + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Calling completion", v6, 2u);
    }

    return (*(*(a1 + 80) + 16))();
  }

  return result;
}

void sub_1000D1CE8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Process: %@, Error: %@", &v12, 0x16u);
  }

  if ([v6 code] == 6 || objc_msgSend(v6, "code") == 7)
  {
    v8 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[5];
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error servicing launch request for %@: %@", &v12, 0x16u);
    }

    v10 = *(a1[6] + 16);
  }

  else
  {
    v11 = a1[6];
    [v5 pid];
    v10 = *(v11 + 16);
  }

  v10();
}

id sub_1000D2268(uint64_t a1)
{
  v2 = [_DASDaemonLogger logForCategory:@"lifecycle"];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Suspending extension launch activity %@", &v5, 0xCu);
  }

  return [*(a1 + 40) suspendActivity:*(a1 + 32)];
}

void sub_1000D2FC4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D305C;
  block[3] = &unk_1001B56B8;
  v3 = *(a1 + 32);
  v1 = *(v3 + 368);
  v4 = *(a1 + 48);
  dispatch_async(v1, block);
}

void sub_1000D305C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  os_unfair_recursive_lock_lock_with_options();
  v4 = [*(*(a1 + 32) + 144) objectForKeyedSubscript:*(a1 + 40)];
  [v4 minusSet:*(a1 + 48)];

  v5 = [*(*(a1 + 32) + 152) objectForKeyedSubscript:*(a1 + 40)];
  if (!v5)
  {
    v5 = +[NSMutableSet set];
    [*(*(a1 + 32) + 152) setObject:v5 forKeyedSubscript:*(a1 + 40)];
  }

  [v5 unionSet:*(a1 + 48)];

  v6 = *(a1 + 32);
  os_unfair_recursive_lock_unlock();
  v7 = [*(a1 + 48) mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = *(a1 + 48);
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 startHandler];

        if (v14)
        {
          [v7 removeObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v10);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(a1 + 32) moveActivityToRunning:{*(*(&v20 + 1) + 8 * j), v20}];
      }

      v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000D32B0(void *a1)
{
  v2 = *(a1[5] + 368);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D334C;
  block[3] = &unk_1001B56B8;
  v3 = a1[7];
  block[4] = a1[6];
  v4 = v3;
  v5 = a1[5];
  v7 = v4;
  v8 = v5;
  dispatch_async(v2, block);
}

void sub_1000D334C(uint64_t a1)
{
  v2 = [_DASDaemonLogger logForCategory:@"lifecycle"];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10012A600(a1);
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 40) mutableCopy];
  v5 = +[NSMutableSet set];
  v6 = *(a1 + 48);
  os_unfair_recursive_lock_lock_with_options();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        if ([v12 isBackgroundTaskActivity])
        {
          [v4 removeObject:v12];
          if ([*(*(a1 + 48) + 72) containsObject:v12])
          {
            [v5 addObject:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v13 = *(a1 + 48);
  os_unfair_recursive_lock_unlock();
  [*(a1 + 48) runActivitiesAndRemoveUnknown:v4];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(a1 + 48) activityCompleted:{*(*(&v22 + 1) + 8 * j), v22}];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  v19 = *(a1 + 48);
  os_unfair_recursive_lock_lock_with_options();
  v20 = [*(*(a1 + 48) + 152) objectForKeyedSubscript:*(a1 + 32)];
  [v20 minusSet:*(a1 + 40)];

  v21 = *(a1 + 48);
  os_unfair_recursive_lock_unlock();

  objc_autoreleasePoolPop(v3);
}

void sub_1000D35E8(uint64_t a1)
{
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(a1 + 40);
  v2 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v32;
    v25 = kNWEndpointKey;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v32 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v31 + 1) + 8 * i);
        [*(a1 + 48) moveToPending:{v6, v25}];
        v7 = *(a1 + 48);
        os_unfair_recursive_lock_lock_with_options();
        v8 = [*(*(a1 + 48) + 144) objectForKeyedSubscript:*(a1 + 56)];
        [v8 unionSet:*(a1 + 40)];

        v9 = [*(*(a1 + 48) + 152) objectForKeyedSubscript:*(a1 + 56)];
        [v9 minusSet:*(a1 + 40)];

        v10 = *(a1 + 48);
        os_unfair_recursive_lock_unlock();
        if (_os_feature_enabled_impl())
        {
          v11 = [v6 internalGroupNames];
          v12 = [v11 count];

          if (!v12)
          {
            goto LABEL_21;
          }

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v13 = [v6 internalGroupNames];
          v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v28;
            do
            {
              for (j = 0; j != v15; j = j + 1)
              {
                if (*v28 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v27 + 1) + 8 * j);
                if (v18)
                {
                  [*(a1 + 48) addPendingActivity:v6 toGroup:v18 withReason:@"[Failed to activate]"];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v15);
          }
        }

        else
        {
          v19 = [v6 groupName];

          if (!v19)
          {
            goto LABEL_21;
          }

          v20 = *(a1 + 48);
          v13 = [v6 groupName];
          [v20 addPendingActivity:v6 toGroup:v13 withReason:@"[Failed to activate]"];
        }

LABEL_21:
        if ([*(*(a1 + 48) + 224) requiresNetworkPathMonitoring:v6])
        {
          v21 = *(*(a1 + 48) + 224);
          v22 = [_DASNetworkEvaluationMonitor nwParametersForActivity:v6];
          v23 = [v6 userInfo];
          v24 = [v23 objectForKeyedSubscript:v25];
          [v21 startMonitoringActivity:v6 withNetworkParameters:v22 withEndpoint:v24];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v3);
  }
}

id sub_1000D3AB4(uint64_t a1)
{
  if ([*(a1 + 32) pid] >= 1)
  {
    v2 = [_DASDaemonLogger logForCategory:@"lifecycle"];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10012A70C(a1);
    }
  }

  return [*(a1 + 40) unload];
}

void sub_1000D4220(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 672);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) activitiesWereSubmitted:{*(a1 + 40), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_1000D43B0(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 672);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) activitiesBeganRunning:{*(a1 + 40), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_1000D4540(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 672);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) activitiesWereSuspended:{*(a1 + 40), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_1000D46E0(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 672);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) activitiesWereCompleted:*(a1 + 40) withSuccess:{*(a1 + 48), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

uint64_t sub_1000D4C1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_recursive_lock_lock_with_options();
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = a1;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if ([v8 isBackgroundTaskActivity])
        {
          v9 = [v8 assertion];
          v10 = [v9 isValid];

          if (v10)
          {
            v11 = [_DASDaemonLogger logForCategory:@"bar"];
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = [v8 assertion];
              v13 = [v12 pid];
              *buf = 138412546;
              v29 = v8;
              v30 = 2048;
              v31 = v13;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "BGTask activity %@ did not respond to suspension. Dropping assertion for app with pid: %ld", buf, 0x16u);
            }

            v14 = [v8 assertion];
            v21 = 0;
            v15 = [v14 invalidateWithError:&v21];
            v16 = v21;

            if ((v15 & 1) == 0)
            {
              v17 = [_DASDaemonLogger logForCategory:@"bar"];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                sub_10012A79C(v26, v8, &v27, v17);
              }
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v5);
  }

  v18 = *(v20 + 32);
  return os_unfair_recursive_lock_unlock();
}

uint64_t sub_1000D4E78(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_recursive_lock_lock_with_options();
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    v29 = _DASLaunchReasonBackgroundFetch;
    v28 = v3;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        [*(a1 + 32) releasePowerAssertion:v8];
        v9 = [v8 name];
        v10 = [v9 hasPrefix:@"com.apple.dasd"];

        if ((v10 & 1) == 0)
        {
          if (![v8 requestsApplicationLaunch])
          {
            goto LABEL_24;
          }

          v11 = [v8 startHandler];
          if (!v11 || (v12 = v11, [v8 launchReason], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", v29), v13, v12, (v14 & 1) == 0))
          {
LABEL_24:
            if ([v8 pid] >= 1)
            {
              v15 = [v8 suspendRequestDate];
              if (v15)
              {
                v16 = v15;
                v17 = [*(*(a1 + 32) + 72) containsObject:v8];

                if (v17)
                {
                  v18 = +[_DASDaemonLogger defaultCategory];
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                  {
                    v19 = [v8 name];
                    v20 = *(a1 + 48);
                    *buf = 138412546;
                    v37 = v19;
                    v38 = 1024;
                    v39 = v20;
                    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Activity %@ asked to suspend %ds ago but has not yet suspended. Generating crash report.", buf, 0x12u);
                  }

                  [_DASMetricRecorder recordOccurrenceForKey:@"com.apple.dasd.xpc.notdeferred"];
                  v21 = [v8 name];
                  v22 = [NSString stringWithFormat:@"com.apple.dasd.xpc.notdeferred.%@", v21];

                  [_DASMetricRecorder recordOccurrenceForKey:@"com.apple.dasd.xpc.notdeferred"];
                  [_DASMetricRecorder recordOccurrenceForKey:v22];

                  v3 = v28;
                }
              }
            }

            v23 = [v8 suspendRequestDate];
            if (v23)
            {
              v24 = v23;
              v25 = [v8 startDate];

              if (v25)
              {
                v30 = *(a1 + 32);
                v31 = *(a1 + 48);
                AnalyticsSendEventLazy();
              }
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v5);
  }

  v26 = *(a1 + 32);
  return os_unfair_recursive_lock_unlock();
}

id sub_1000D51FC(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  if ([*(*(a1 + 32) + 72) containsObject:*(a1 + 40)])
  {
    v3 = &__kCFBooleanFalse;
  }

  else
  {
    v3 = &__kCFBooleanTrue;
  }

  [v2 setObject:v3 forKeyedSubscript:@"suspended"];
  v4 = [NSNumber numberWithInteger:*(a1 + 48)];
  [v2 setObject:v4 forKeyedSubscript:@"limit"];

  v5 = [*(a1 + 40) identifier];
  v6 = [v5 copy];
  if ([v5 hasPrefix:@"com.apple."])
  {
    v7 = [v5 substringFromIndex:{objc_msgSend(@"com.apple.", "length")}];

    v6 = v7;
  }

  if ([v6 length] >= 0x1E)
  {
    v8 = [v6 substringToIndex:30];

    v6 = v8;
  }

  [v2 setObject:v6 forKeyedSubscript:@"identifier"];

  return v2;
}

void sub_1000D6D9C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v95 = a2;
  [a3 score];
  if ([_DASPolicyResponse isScoreBlocking:?])
  {
    v7 = +[_DASLowPowerModePolicy policyInstance];
    v8 = [v7 policyName];
    if ([v95 isEqualToString:v8])
    {
      v9 = *(a1 + 48);

      if (v9 == 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v10 = +[_DASPhotosPolicy policyInstance];
    v11 = [v10 policyName];
    if ([v95 isEqualToString:v11])
    {
      v12 = *(a1 + 49);

      if (v12 == 1)
      {
LABEL_8:
        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 24) | 0x20;
LABEL_22:
        *(v13 + 24) = v14;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v15 = +[_DASLowPowerModePolicy policyInstance];
    v16 = [v15 policyName];
    if ([v95 isEqualToString:v16])
    {
      v17 = *(a1 + 50);

      if (v17 == 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    v18 = +[_DASPhotosPolicy policyInstance];
    v19 = [v18 policyName];
    if ([v95 isEqualToString:v19])
    {
      v20 = *(a1 + 51);

      if (v20 == 1)
      {
LABEL_16:
        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 24) | 4;
        goto LABEL_22;
      }
    }

    else
    {
    }

    v21 = +[_DASBatteryLevelPolicy policyInstance];
    v22 = [v21 policyName];
    v23 = [v95 isEqualToString:v22];

    if (v23)
    {
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 24) | 8;
      goto LABEL_22;
    }

    v24 = +[_DASEnergyBudgetPolicy policyInstance];
    v25 = [v24 policyName];
    v26 = [v95 isEqualToString:v25];

    if (v26)
    {
LABEL_21:
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 24) | 2;
      goto LABEL_22;
    }

    v27 = +[_DASDataBudgetPolicy policyInstance];
    v28 = [v27 policyName];
    v29 = [v95 isEqualToString:v28];

    if (v29)
    {
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 24) | 1;
      goto LABEL_22;
    }

    v30 = +[_DASNetworkQualityPolicy policyInstance];
    v31 = [v30 policyName];
    if ([v95 isEqualToString:v31])
    {
      v32 = *(a1 + 52);

      if (v32 == 1)
      {
        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 24) | 0x10;
        goto LABEL_22;
      }
    }

    else
    {
    }

    v33 = +[_DASNetworkQualityPolicy policyInstance];
    v34 = [v33 policyName];
    if ([v95 isEqualToString:v34])
    {
      v35 = *(a1 + 53);

      if (v35 == 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
    }

    v36 = +[_DASNetworkQualityPolicy policyInstance];
    v37 = [v36 policyName];
    if ([v95 isEqualToString:v37])
    {
      v38 = [*(a1 + 32) objectForKeyedSubscript:v95];
      v39 = [v38 decision];

      if (v39 != 100)
      {
LABEL_38:
        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 24) | 0x100;
        goto LABEL_22;
      }
    }

    else
    {
    }

    v40 = +[_DASCPUUsagePolicy policyInstance];
    v41 = [v40 policyName];
    v42 = [v95 isEqualToString:v41];

    if (v42)
    {
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 24) | 0x40;
      goto LABEL_22;
    }

    v43 = +[_DASMemoryPressurePolicy policyInstance];
    v44 = [v43 policyName];
    v45 = [v95 isEqualToString:v44];

    if (v45)
    {
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 24) | 0x80;
      goto LABEL_22;
    }

    v46 = +[_DASSmartPowerNapPolicy policyInstance];
    v47 = [v46 policyName];
    v48 = [v95 isEqualToString:v47];

    if (v48)
    {
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 24) | 0x200;
      goto LABEL_22;
    }

    v49 = +[_DASThermalPolicy policyInstance];
    v50 = [v49 policyName];
    if ([v95 isEqualToString:v50])
    {
      v51 = *(a1 + 54);

      if (v51 == 1)
      {
        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 24) | 0x1000;
        goto LABEL_22;
      }
    }

    else
    {
    }

    v52 = +[_DASThermalPolicy policyInstance];
    v53 = [v52 policyName];
    v54 = [v95 isEqualToString:v53];

    if (v54)
    {
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 24) | 0x800;
      goto LABEL_22;
    }

    v55 = +[_DASThunderingHerdPolicy policyInstance];
    v56 = [v55 policyName];
    v57 = [v95 isEqualToString:v56];

    if (v57)
    {
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 24) | 0x400;
      goto LABEL_22;
    }

    v58 = +[_DASGroupSchedulingPolicy policyInstance];
    v59 = [v58 policyName];
    v60 = [v95 isEqualToString:v59];

    if (v60)
    {
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 24) | 0x4000;
      goto LABEL_22;
    }

    v61 = +[_DASRequiresPluggedInPolicy policyInstance];
    v62 = [v61 policyName];
    if ([v95 isEqualToString:v62])
    {
      v63 = *(a1 + 55);

      if (v63 == 1)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v64 = +[_DASDeviceActivityPolicy policyInstance];
    v65 = [v64 policyName];
    v66 = [v95 isEqualToString:v65];

    if (v66)
    {
      *(*(*(a1 + 40) + 8) + 24) |= 0x8000uLL;
      v67 = 4;
      if (!*(a1 + 56))
      {
        v67 = 0;
      }

      *(*(*(a1 + 40) + 8) + 24) |= v67;
      v68 = 0x10000;
      if (!*(a1 + 57))
      {
        v68 = 0;
      }

      *(*(*(a1 + 40) + 8) + 24) |= v68;
    }

    else
    {
      v69 = +[_DASConsoleModePolicy policyInstance];
      v70 = [v69 policyName];
      v71 = [v95 isEqualToString:v70];

      if (v71)
      {
        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 24) | 0x20000;
        goto LABEL_22;
      }

      v72 = +[_DASApplicationPolicy policyInstance];
      v73 = [v72 policyName];
      v74 = [v95 isEqualToString:v73];

      if (v74)
      {
        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 24) | 0x2000000;
        goto LABEL_22;
      }

      v75 = +[_DASBootTimePolicy policyInstance];
      v76 = [v75 policyName];
      v77 = [v95 isEqualToString:v76];

      if (v77)
      {
        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 24) | 0x40000;
        goto LABEL_22;
      }

      v78 = +[_DASCarPlayPolicy policyInstance];
      v79 = [v78 policyName];
      v80 = [v95 isEqualToString:v79];

      if (v80)
      {
        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 24) | 0x80000;
        goto LABEL_22;
      }

      v81 = +[_DASInCarPolicy policyInstance];
      v82 = [v81 policyName];
      v83 = [v95 isEqualToString:v82];

      if (v83)
      {
        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 24) | 0x100000;
        goto LABEL_22;
      }

      v84 = +[_DASActivityRateLimitPolicy policyInstance];
      v85 = [v84 policyName];
      v86 = [v95 isEqualToString:v85];

      if (v86)
      {
        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 24) | 0x200000;
        goto LABEL_22;
      }

      v87 = +[_DASMotionStatePolicy policyInstance];
      v88 = [v87 policyName];
      v89 = [v95 isEqualToString:v88];

      if (v89)
      {
        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 24) | 0x400000;
        goto LABEL_22;
      }

      v90 = +[_DASInternetSharingPolicy policyInstance];
      v91 = [v90 policyName];
      v92 = [v95 isEqualToString:v91];

      if (v92)
      {
        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 24) | 0x1000000;
        goto LABEL_22;
      }

      v93 = [*(a1 + 32) objectForKeyedSubscript:v95];
      v94 = [v93 decision];

      v13 = *(*(a1 + 40) + 8);
      if (v94 != 100)
      {
        v14 = *(v13 + 24) | 0x2000;
        goto LABEL_22;
      }

      *(v13 + 24) = 0;
      *a4 = 1;
    }
  }

LABEL_23:
}

void sub_1000D777C(uint64_t a1)
{
  v2 = [_DASPhotosPolicy shouldOverrideForIntentSync:*(*(a1 + 32) + 584) activity:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 272);
  if (v2)
  {
    [v3 setPendingUnregistration:0];
    if ([*(*(a1 + 32) + 272) anyRemoteDeviceActive])
    {
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) name];
      v15 = v5;
      v6 = [NSArray arrayWithObjects:&v15 count:1];
      [v4 runActivitiesWithUrgency:1 activities:v6];

      v7 = +[_DASPhotosPolicy policyInstance];
      [v7 setIntentSyncIsEngaged:1];

      v8 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        v9 = "Remote device is active. We should sync Photos now.";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v14, 2u);
      }
    }

    else
    {
      v11 = +[_DASUrgencyOverridePolicy policyInstance];
      v12 = [*(a1 + 40) name];
      [v11 removeActivity:v12];

      v13 = +[_DASPhotosPolicy policyInstance];
      [v13 setIntentSyncIsEngaged:0];

      v8 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        v9 = "Remote device is not active.";
        goto LABEL_10;
      }
    }

    return;
  }

  [v3 setPendingUnregistration:1];
  v10 = *(*(a1 + 32) + 272);

  [v10 clearRemoteDeviceActiveSet];
}

void sub_1000D8840(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  [a3 doubleValue];
  if (v5 < 2.22507386e-308)
  {
    if ([*(a1 + 32) count])
    {
      v6 = [*(a1 + 32) containsObject:v9];
      v7 = v9;
      v8 = 48;
      if (v6)
      {
        v8 = 40;
      }
    }

    else
    {
      v8 = 40;
      v7 = v9;
    }

    [*(a1 + v8) addObject:v7];
  }
}

void sub_1000D9884(uint64_t a1)
{
  v2 = +[_DASClientMetricsRecorder sharedInstance];
  [v2 reportTaskCheckpoint:15 forTask:*(a1 + 32) error:0];
}

void sub_1000D9C8C(uint64_t a1)
{
  v2 = +[_DASClientMetricsRecorder sharedInstance];
  [v2 reportTaskCheckpoint:16 forTask:*(a1 + 32) error:0];
}

void sub_1000D9CEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_recursive_lock_lock_with_options();
  v3 = [*(*(a1 + 32) + 64) containsObject:*(a1 + 40)];
  v4 = *(a1 + 32);
  os_unfair_recursive_lock_unlock();
  if (v3)
  {
    v5 = [_DASDaemonLogger logForCategory:@"lifecycle"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10012A8A8((a1 + 40));
    }

    v6 = *(a1 + 32);
    v7 = [NSSet setWithObject:*(a1 + 40)];
    [v6 cancelActivitiesWithReason:v7 cancellationReason:3];
  }
}

void sub_1000DA084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DA0B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000DA0D0(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = [v6 name];
  v8 = [*(a1 + 32) name];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ was in pre-running. Removing due to submission of %@", &v12, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_1000DA630(uint64_t a1)
{
  v2 = +[_DASClientMetricsRecorder sharedInstance];
  [v2 reportTaskCheckpoint:20 forTask:*(a1 + 32) error:0];
}

void sub_1000DB438(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 tasksNoLongerEligible];
  [v1 suspendActivities:v2];
}

void sub_1000DC028(uint64_t a1)
{
  if (([*(a1 + 32) requestsApplicationLaunch] & 1) == 0)
  {
    v2 = [*(a1 + 32) widgetID];

    if (!v2)
    {
      v3 = +[_DASClientMetricsRecorder sharedInstance];
      [v3 checkAndAddMetadataForTask:*(a1 + 32)];

      v4 = +[_DASClientMetricsRecorder sharedInstance];
      v5 = [*(a1 + 32) taskID];
      v6 = [*(a1 + 32) taskInstanceID];
      [v4 addMappingForTaskID:v5 toTaskInstanceID:v6];
    }
  }

  v7 = +[_DASClientMetricsRecorder sharedInstance];
  [v7 reportTaskCheckpoint:10 forTask:*(a1 + 32) error:0];
}

void sub_1000DCCBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSArray arrayWithObject:*(a1 + 40)];
  [v1 handleCompletedActivities:v2];
}

id sub_1000DD2FC(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 uuid];
  v6 = [*(a1 + 32) uuid];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    *a3 = 1;
  }

  return v7;
}

void sub_1000DD370(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = *(a1 + 40);
  v2 = [NSArray arrayWithObjects:&v4 count:1];
  v3 = [v1 tasksNoLongerEligibleFromTasks:v2];
  [v1 suspendActivities:v3];
}

id sub_1000DD5AC(uint64_t a1)
{
  v2 = [*(a1 + 32) limitationResponse];
  v3 = [_DASLimiterResponse bitmaskFromResponses:v2];

  v4 = +[NSMutableDictionary dictionary];
  v5 = [*(a1 + 32) identifier];
  v6 = [v5 copy];
  if ([v5 hasPrefix:@"com.apple."])
  {
    v7 = [v5 substringFromIndex:{objc_msgSend(@"com.apple.", "length")}];

    v6 = v7;
  }

  if ([v6 length] >= 0x1E)
  {
    v8 = [v6 substringToIndex:30];

    v6 = v8;
  }

  v9 = [*(a1 + 32) limitationResponse];
  v10 = [_DASLimiterResponse queryActivityDecision:5 fromResponses:v9];

  if (v10)
  {
    v11 = [_DASRateLimiterUtilities rateLimitIdentifierForActivity:*(a1 + 32)];

    v6 = v11;
  }

  [v4 setObject:v6 forKeyedSubscript:@"name"];
  v12 = [NSNumber numberWithUnsignedChar:v3];
  [v4 setObject:v12 forKeyedSubscript:@"limitationsValue"];

  return v4;
}

id sub_1000DD754(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v4 = *(a1 + 40);
  v3 = (a1 + 40);
  [*(*(v3 - 1) + 53) maximumRuntimeForActivity:v4];
  v6 = v5;
  v7 = [*(*(v3 - 1) + 53) hasDynamicOverrides:*v3];
  v8 = [*(*(v3 - 1) + 53) hasStaticOverrides:*v3];
  v9 = @"none";
  if (v8)
  {
    v9 = @"static";
  }

  if (v7)
  {
    v10 = @"dynamic";
  }

  else
  {
    v10 = v9;
  }

  [v2 setObject:v10 forKeyedSubscript:@"overrides"];
  v11 = [NSNumber numberWithDouble:v6];
  [v2 setObject:v11 forKeyedSubscript:@"durationLimit"];

  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"runtimeLimitApplies"];
  v12 = [*v3 limitationResponse];
  LODWORD(v11) = [_DASLimiterResponse queryActivityDecision:3 fromResponses:v12];

  if (v11)
  {
    [v2 setObject:&off_1001CA4F8 forKeyedSubscript:@"runtimeLimitCount"];
    [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"runtimeSuspended"];
  }

  else if (((v7 | v8) & 1) == 0)
  {
    goto LABEL_14;
  }

  v13 = [*v3 identifier];
  v14 = [v13 copy];
  if ([v13 hasPrefix:@"com.apple."])
  {
    v15 = [v13 substringFromIndex:{objc_msgSend(@"com.apple.", "length")}];

    v14 = v15;
  }

  if ([v14 length] >= 0x1E)
  {
    v16 = [v14 substringToIndex:30];

    v14 = v16;
  }

  [v2 setObject:v14 forKeyedSubscript:@"name"];

LABEL_14:
  v17 = [*v3 endTime];
  if (v17 && (v18 = v17, [*v3 startDate], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19))
  {
    v20 = [*v3 startDate];
    v21 = [*v3 endTime];
    [v21 timeIntervalSinceDate:v20];
    v23 = v22;
  }

  else
  {
    v24 = [*v3 startDate];

    if (!v24)
    {
      goto LABEL_23;
    }

    v25 = [_DASDaemonLogger logForCategory:@"limitations"];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_10012AD34(v3);
    }

    v20 = [*v3 startDate];
    [v20 timeIntervalSinceNow];
    v23 = -v26;
  }

  if (v23 > 0.0)
  {
    v27 = [NSNumber numberWithDouble:v23];
    [v2 setObject:v27 forKeyedSubscript:@"runtimeDuration"];

    goto LABEL_26;
  }

LABEL_23:
  v28 = [_DASDaemonLogger logForCategory:@"limitations"];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    sub_10012ADF4();
  }

  [v2 setObject:&off_1001CA4E0 forKeyedSubscript:@"runtimeDuration"];
LABEL_26:

  return v2;
}

void sub_1000DED20(uint64_t a1)
{
  [*(*(a1 + 32) + 456) validateIntensityForActivity:*(a1 + 40)];
  v1 = [_DASDaemonLogger logForCategory:@"intensityValidator"];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_10012AEB0();
  }
}

void sub_1000DED8C(uint64_t a1)
{
  v2 = +[_DASClientMetricsRecorder sharedInstance];
  [v2 reportTaskCheckpoint:30 forTask:*(a1 + 32) error:0];

  v3 = +[_DASClientMetricsRecorder sharedInstance];
  [v3 addTaskInstanceInfoAtTermination:*(a1 + 32)];
}

void sub_1000DFBD0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 > 3)
  {
    switch(v2)
    {
      case 4:
        v3 = +[_DASClientMetricsRecorder sharedInstance];
        v10 = v3;
        v4 = *(a1 + 32);
        v5 = 41;
        goto LABEL_19;
      case 5:
        v3 = +[_DASClientMetricsRecorder sharedInstance];
        v10 = v3;
        v4 = *(a1 + 32);
        v5 = 43;
        goto LABEL_19;
      case 6:
        v3 = +[_DASClientMetricsRecorder sharedInstance];
        v10 = v3;
        v4 = *(a1 + 32);
        v5 = 50;
        goto LABEL_19;
    }
  }

  else
  {
    switch(v2)
    {
      case 1:
        v3 = +[_DASClientMetricsRecorder sharedInstance];
        v10 = v3;
        v4 = *(a1 + 32);
        v5 = 42;
        goto LABEL_19;
      case 2:
        v3 = +[_DASClientMetricsRecorder sharedInstance];
        v10 = v3;
        v4 = *(a1 + 32);
        v5 = 11;
        goto LABEL_19;
      case 3:
        v3 = +[_DASClientMetricsRecorder sharedInstance];
        v10 = v3;
        v4 = *(a1 + 32);
        v5 = 17;
LABEL_19:
        [v3 reportTaskCheckpoint:v5 forTask:v4 error:0];

        return;
    }
  }

  v6 = (a1 + 32);
  v7 = [*(a1 + 32) clientName];
  v8 = [v7 isEqualToString:_DASClientNameBGST];

  if (v8)
  {
    v9 = [_DASDaemonLogger logForCategory:@"misuse"];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10012B048(v6);
    }
  }
}

void sub_1000DFD90(uint64_t a1)
{
  [*(*(a1 + 32) + 456) validateIntensityForActivity:*(a1 + 40)];
  v1 = [_DASDaemonLogger logForCategory:@"intensityValidator"];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_10012AEB0();
  }
}

void sub_1000DFDFC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 4 || v2 == 1)
  {
    v5 = +[_DASClientMetricsRecorder sharedInstance];
    [v5 reportTaskCheckpoint:40 forTask:*(a1 + 32) error:0];

    v6 = +[_DASClientMetricsRecorder sharedInstance];
    [v6 addTaskInstanceInfoAtTermination:*(a1 + 32)];
  }
}

void sub_1000DFF3C(uint64_t a1)
{
  v2 = +[_DASClientMetricsRecorder sharedInstance];
  [v2 reportTaskCheckpoint:44 forTask:*(a1 + 32) error:0];
}

void sub_1000E0834(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 112) objectForKeyedSubscript:v7];
  if (!v6)
  {
    v6 = +[NSMutableSet set];
    [*(*(a1 + 32) + 112) setObject:v6 forKeyedSubscript:v7];
  }

  [v6 _DAS_unionSetOverridingExisting:v5];
}

void sub_1000E1FB8(uint64_t a1)
{
  if (([*(a1 + 32) requestsApplicationLaunch] & 1) == 0)
  {
    v2 = [*(a1 + 32) widgetID];

    if (!v2)
    {
      v3 = +[_DASClientMetricsRecorder sharedInstance];
      [v3 checkAndAddMetadataForTask:*(a1 + 32)];

      v4 = +[_DASClientMetricsRecorder sharedInstance];
      v5 = [*(a1 + 32) taskID];
      v6 = [*(a1 + 32) taskInstanceID];
      [v4 addMappingForTaskID:v5 toTaskInstanceID:v6];
    }
  }

  v7 = +[_DASClientMetricsRecorder sharedInstance];
  [v7 reportTaskCheckpoint:10 forTask:*(a1 + 32) error:0];
}

void sub_1000E20AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_recursive_lock_lock_with_options();
  if ([*(*(a1 + 32) + 56) containsObject:*(a1 + 40)])
  {
    v3 = *(a1 + 32);
    os_unfair_recursive_lock_unlock();
    [_DASConditionScore computeOptimalScoreAndDateForActivity:*(a1 + 40)];
    if ([*(a1 + 40) isContinuedProcessingTask])
    {
      v4 = *(a1 + 32);
      v5 = [NSSet setWithObject:*(a1 + 40)];
      [v4 informObserversOfActivitiesSubmitted:v5];
    }

    if ([*(a1 + 32) shouldEvaluateTask:*(a1 + 40) atDate:*(a1 + 48)])
    {
      if ([*(a1 + 40) isIntensive] && (v6 = *(*(a1 + 32) + 304), +[NSSet setWithObject:](NSSet, "setWithObject:", *(a1 + 40)), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "reallocateRuntimeWithActivities:", v7), v7, objc_msgSend(*(*(a1 + 32) + 304), "isRuntimeAllocatedForActivity:", *(a1 + 40))) && (objc_msgSend(*(*(a1 + 32) + 304), "remainingAllocatedRuntimeForActivity:", *(a1 + 40)), v8 <= 0.0))
      {
        v14 = +[_DASDaemonLogger defaultCategory];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 40);
          v16 = 138412290;
          v17 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Could not run %@ immediately on submission, no runtime remaining", &v16, 0xCu);
        }
      }

      else if ([*(a1 + 32) shouldRunActivityNow:*(a1 + 40)] && objc_msgSend(*(*(a1 + 32) + 416), "executeActivity:", *(a1 + 40)))
      {
        v9 = +[_DASDaemonLogger defaultCategory];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 40);
          v16 = 138412290;
          v17 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Running %@ immediately on submission", &v16, 0xCu);
        }

        [*(a1 + 32) immediatelyBeginWorkForActivity:*(a1 + 40)];
      }
    }
  }

  else
  {
    v11 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 40) debugDescription];
      v16 = 138543362;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ was canceled soon after submission", &v16, 0xCu);
    }

    v13 = *(a1 + 32);
    os_unfair_recursive_lock_unlock();
  }
}

void sub_1000E2340(uint64_t a1)
{
  v3 = *(a1 + 32);
  v28 = [*(a1 + 40) startBefore];
  [v3 timeIntervalSinceDate:?];
  if (v4 >= 0.0 || ([*(*(a1 + 48) + 216) timeIntervalSinceDate:*(a1 + 32)], v5 <= 120.0))
  {

    return;
  }

  v6 = [*(a1 + 40) startBefore];
  [v6 timeIntervalSinceDate:*(*(a1 + 48) + 216)];
  v8 = v7;

  if (v8 >= 0.0)
  {
    return;
  }

  if ([*(a1 + 40) timewiseEligibleAtDate:*(a1 + 32)])
  {
    v9 = [*(a1 + 40) groupName];
    if (v9 || ([*(a1 + 40) internalGroupNames], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "count")))
    {
      v10 = [*(a1 + 40) fastPass];

      if (v9)
      {

        if (!v10)
        {
LABEL_14:
          if (_os_feature_enabled_impl())
          {
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v11 = [*(a1 + 40) internalGroupNames];
            v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v30;
LABEL_17:
              v15 = 0;
              while (1)
              {
                if (*v30 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                if ([*(a1 + 48) additionalCapacityForActivity:*(a1 + 40) inGroupWithName:*(*(&v29 + 1) + 8 * v15) shouldTryToSuspend:0] < 1)
                {
                  goto LABEL_32;
                }

                if (v13 == ++v15)
                {
                  v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
                  if (v13)
                  {
                    goto LABEL_17;
                  }

                  break;
                }
              }
            }
          }

          else
          {
            v17 = *(a1 + 40);
            v16 = *(a1 + 48);
            v18 = [v17 groupName];
            v19 = [v16 additionalCapacityForActivity:v17 inGroupWithName:v18 shouldTryToSuspend:0];

            if (v19 < 1)
            {
              return;
            }
          }
        }
      }

      else
      {

        if (!v10)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
    }
  }

  if (![*(a1 + 40) requiresNetwork] || objc_msgSend(*(*(a1 + 48) + 224), "isNetworkPathAvailableForActivity:", *(a1 + 40)))
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 48) + 208));
    v11 = [*(a1 + 40) predictedOptimalStartDate];
    [v11 timeIntervalSinceDate:*(*(a1 + 48) + 208)];
    if (v20 <= 0.0)
    {
LABEL_32:

      return;
    }

    v21 = [*(a1 + 40) startBefore];
    v22 = [*(a1 + 40) predictedOptimalStartDate];
    [v21 timeIntervalSinceDate:v22];
    v24 = v23;

    if (v24 > 60.0)
    {
      v25 = [*(a1 + 40) predictedOptimalStartDate];
      v26 = *(*(a1 + 56) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;
    }
  }
}

void sub_1000E27B0(void *a1)
{
  v2 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138412546;
    v29 = v3;
    v30 = 2112;
    v31 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "endLaunchWithReason: Requesting end launch for Application %@ with Reason %@", buf, 0x16u);
  }

  v5 = a1[6];
  os_unfair_recursive_lock_lock_with_options();
  v6 = [*(a1[6] + 152) objectForKeyedSubscript:a1[4]];
  v7 = v6;
  if (v6)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (!v8)
    {
      goto LABEL_17;
    }

    v10 = v8;
    v11 = *v25;
    *&v9 = 138412802;
    v23 = v9;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 launchReason];
        if ([v14 isEqualToString:a1[5]])
        {
          v15 = [v13 assertion];

          if (!v15)
          {
            continue;
          }

          v16 = +[_DASDaemonLogger defaultCategory];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = a1[4];
            v18 = a1[5];
            *buf = v23;
            v29 = v17;
            v30 = 2112;
            v31 = v18;
            v32 = 2112;
            v33 = v13;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "endLaunchWithReason: Ending launch for Application %@ with Reason %@ and Activity %@", buf, 0x20u);
          }

          v14 = [v13 assertion];
          [v14 invalidateWithError:0];
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (!v10)
      {
LABEL_17:
        v19 = a1[6];
        os_unfair_recursive_lock_unlock();
        goto LABEL_21;
      }
    }
  }

  v20 = a1[6];
  os_unfair_recursive_lock_unlock();
  v21 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = a1[4];
    *buf = 138412290;
    v29 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "endLaunchWithReason: No activities found for Application %@", buf, 0xCu);
  }

LABEL_21:
}

void sub_1000E3D50(uint64_t a1)
{
  v1 = [_DASDaemonLogger logForCategory:@"bar"];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_10012B3F0(a1, v1);
  }

  obj = [*(a1 + 32) connectedBGTaskClients];
  objc_sync_enter(obj);
  v2 = [*(a1 + 32) activitiesWaitingForBGTaskClients];
  v20 = (a1 + 40);
  v3 = [NSNumber numberWithInt:*(a1 + 40)];
  v22 = [v2 objectForKeyedSubscript:v3];

  if ([v22 count])
  {
    v4 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10012B46C(v20);
    }

    v5 = *(a1 + 32);
    os_unfair_recursive_lock_lock_with_options();
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v22;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v7)
    {
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = [v10 assertion];
          v24 = 0;
          v12 = [v11 invalidateWithError:&v24];
          v13 = v24;

          if (v13)
          {
            v14 = v12;
          }

          else
          {
            v14 = 1;
          }

          if ((v14 & 1) == 0)
          {
            v15 = [_DASDaemonLogger logForCategory:@"bar"];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = [v10 assertion];
              *buf = 138412546;
              v30 = v16;
              v31 = 2112;
              v32 = v13;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error invalidating assertion %@: %@", buf, 0x16u);
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v7);
    }

    v17 = *(a1 + 32);
    os_unfair_recursive_lock_unlock();
  }

  v18 = [*(a1 + 32) activitiesWaitingForBGTaskClients];
  v19 = [NSNumber numberWithInt:*v20];
  [v18 removeObjectForKey:v19];

  objc_sync_exit(obj);
}

int64_t sub_1000E4710(id a1, _DASActivity *a2, _DASActivity *a3)
{
  v4 = a3;
  v5 = [(_DASActivity *)a2 startBefore];
  v6 = [(_DASActivity *)v4 startBefore];

  v7 = [v5 compare:v6];
  return v7;
}

int64_t sub_1000E4834(id a1, _DASActivity *a2, _DASActivity *a3)
{
  v4 = a3;
  v5 = [(_DASActivity *)a2 startBefore];
  v6 = [(_DASActivity *)v4 startBefore];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_1000E499C(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 startedTasks];
  objc_sync_enter(v3);
  v4 = *(a1 + 32);
  v5 = [v7 startedTasks];
  v6 = [v5 allObjects];
  [v4 addObjectsFromArray:v6];

  objc_sync_exit(v3);
}

int64_t sub_1000E4A4C(id a1, _DASActivity *a2, _DASActivity *a3)
{
  v4 = a3;
  v5 = [(_DASActivity *)a2 startBefore];
  v6 = [(_DASActivity *)v4 startBefore];

  v7 = [v5 compare:v6];
  return v7;
}

id sub_1000E50BC(uint64_t a1)
{
  result = [*(a1 + 32) shouldRunActivityNow:*(a1 + 40)];
  if (result)
  {
    result = [*(*(a1 + 32) + 416) executeActivity:*(a1 + 40)];
    if (result)
    {
      v3 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 48);
        v4 = *(a1 + 56);
        v6[0] = 67109378;
        v6[1] = v4;
        v7 = 2112;
        v8 = v5;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "With %i urgency level, running %@ immediately on submission", v6, 0x12u);
      }

      return [*(a1 + 32) immediatelyBeginWorkForActivity:*(a1 + 40)];
    }
  }

  return result;
}

void sub_1000E6230(id a1, BPSCompletion *a2)
{
  v2 = a2;
  if ([(BPSCompletion *)v2 state]== 1)
  {
    v3 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10012B4E4(v2);
    }
  }
}

void sub_1000E6298(uint64_t a1, void *a2)
{
  v5 = [a2 eventBody];
  v3 = [v5 budgetID];
  [*(a1 + 32) addObject:v3];
  v4 = [v5 startDate];
  [*(a1 + 40) setObject:v4 forKeyedSubscript:v3];
}

void sub_1000E632C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [v3 countForObject:v4]);
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
}

uint64_t sub_1000E63B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 compare:v8];
  if (v9 == 1)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_1000E6930(id a1, BPSCompletion *a2)
{
  v2 = a2;
  if ([(BPSCompletion *)v2 state]== 1)
  {
    v3 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10012B590(v2);
    }
  }
}

void sub_1000E6998(uint64_t a1, void *a2)
{
  v4 = [a2 eventBody];
  v3 = [v4 budgetID];
  [*(a1 + 32) addObject:v3];
  if ([v4 isDASInitiated])
  {
    [*(a1 + 40) addObject:v3];
  }
}

void sub_1000E6A18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [v3 countForObject:v4]);
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];

  v6 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [*(a1 + 56) countForObject:v4]);
  [*(a1 + 48) setObject:v6 forKeyedSubscript:v4];
}

uint64_t sub_1000E6AE4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 compare:v8];
  if (v9 == 1)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_1000E78A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E78C0(uint64_t a1)
{
  v2 = [*(a1 + 32) evaluatePolicies:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1000E7A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E7A24(void *a1)
{
  v2 = a1[4];
  os_unfair_recursive_lock_lock_with_options();
  v3 = a1[4];
  v4 = [v3 pendingTasks];
  *(*(a1[6] + 8) + 24) = [v3 evaluateAllActivitiesFor:v4 writingToFile:a1[5]];

  v5 = a1[4];
  v6 = [v5 prerunningTasks];
  v7 = [v5 evaluateAllActivitiesFor:v6 writingToFile:a1[5]];
  v8 = 0;
  v9 = *(a1[6] + 8);
  if (v7)
  {
    v8 = *(v9 + 24);
  }

  *(v9 + 24) = v8 & 1;

  v10 = a1[4];
  v11 = [v10 runningTasks];
  v12 = [v10 evaluateAllActivitiesFor:v11 writingToFile:a1[5]];
  v13 = *(a1[6] + 8);
  if (v12)
  {
    v14 = *(v13 + 24);
  }

  else
  {
    v14 = 0;
  }

  *(v13 + 24) = v14 & 1;

  v15 = a1[4] + 40;

  return os_unfair_recursive_lock_unlock();
}

void sub_1000E7BD8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v8 = (a1 + 40);
  if (([*(v8 - 1) evaluatePoliciesForActivitiesChunk:v6 writingToFile:v9] & 1) == 0)
  {
    *a4 = 1;
  }

  v10 = [@"\n" dataUsingEncoding:4];
  v11 = *v8;
  v17 = 0;
  v12 = [v11 writeData:v10 error:&v17];
  v13 = v17;
  v14 = v13;
  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    v16 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10012B63C(v8);
    }

    *a4 = 1;
  }

  objc_autoreleasePoolPop(v7);
}

uint64_t sub_1000E84B4(uint64_t a1)
{
  v2 = [*(a1 + 32) evaluatePolicies:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1000EAC50(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
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

        [*(*(a1 + 32) + 400) addWorkItem:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_1000EC054(uint64_t a1, void *a2)
{
  v21 = a2;
  [*(a1 + 32) keyPaths];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v3 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v28;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v8 = +[_DASDaemonLogger defaultCategory];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [*(*(a1 + 40) + 768) objectForKeyedSubscript:v7];
          *buf = 138412546;
          v33 = v7;
          v34 = 2112;
          v35 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Trigger: %@ is now [%@]", buf, 0x16u);
        }

        [*(*(a1 + 40) + 384) addWorkItem:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 40) + 376) addWorkItem:v21];
  if ([*(a1 + 48) isEqualToString:@"com.apple.das.apppolicy.appchanged"])
  {
    v10 = +[NSMutableArray array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = [_DASApplicationPolicy focalApplicationsWithContext:*(*(a1 + 40) + 768)];
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * j);
          if ([v16 length])
          {
            v17 = [v16 dk_dedup];
            [v10 addObject:v17];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v13);
    }

    v18 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Foreground apps changed—-%@", buf, 0xCu);
    }

    v19 = *(*(a1 + 40) + 784);
    v20 = [v10 copy];
    [v19 handleAppsForegrounded:v20];
  }

  if ([*(a1 + 48) isEqualToString:@"com.apple.das.userRequestedBackup"])
  {
    [*(*(a1 + 40) + 168) syncRequested];
  }
}

uint64_t sub_1000ED72C(uint64_t a1)
{
  result = IOPMAssertionRelease(*(*(*(a1 + 32) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t sub_1000ED898(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  v9 = [v7 schedulingPriority];
  if (v9 >= _DASSchedulingPriorityUserInitiated)
  {
    v10 = [v8 schedulingPriority];
    if (v10 < _DASSchedulingPriorityUserInitiated)
    {
      goto LABEL_30;
    }
  }

  v11 = [v8 schedulingPriority];
  if (v11 >= _DASSchedulingPriorityUserInitiated)
  {
    v12 = [v7 schedulingPriority];
    if (v12 < _DASSchedulingPriorityUserInitiated)
    {
      goto LABEL_65;
    }
  }

  v13 = [v7 schedulingPriority];
  if (v13 < _DASSchedulingPriorityUserInitiated)
  {
    goto LABEL_7;
  }

  v14 = [v8 schedulingPriority];
  if (v14 < _DASSchedulingPriorityUserInitiated)
  {
    goto LABEL_7;
  }

  v35 = [v7 name];
  if (([v35 hasPrefix:@"nsurl-av"] & 1) == 0)
  {

LABEL_35:
    v38 = [v8 submitDate];
    v39 = [v7 submitDate];
    v34 = [v38 compare:v39];
    goto LABEL_36;
  }

  v36 = [v8 name];
  v37 = [v36 hasPrefix:@"nsurl-av"];

  if ((v37 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_7:
  if (*(a1 + 40) == 1)
  {
    v15 = [v7 userRequestedBackupTask];
    v16 = [v8 userRequestedBackupTask];
    if (v15 && !v16)
    {
      goto LABEL_30;
    }

    if (!(v15 & 1 | ((v16 & 1) == 0)))
    {
      goto LABEL_65;
    }
  }

  if (*(a1 + 41) == 1)
  {
    if ([_DASPhotosPolicy isiCPLActivity:v7]&& ![_DASPhotosPolicy isiCPLActivity:v8])
    {
      goto LABEL_30;
    }

    if ([_DASPhotosPolicy isiCPLActivity:v8]&& ![_DASPhotosPolicy isiCPLActivity:v7])
    {
      goto LABEL_65;
    }
  }

  if ([v7 isPrioritizedIdleStackTasks] && !objc_msgSend(v8, "isPrioritizedIdleStackTasks"))
  {
    goto LABEL_30;
  }

  if ([v8 isPrioritizedIdleStackTasks] && !objc_msgSend(v7, "isPrioritizedIdleStackTasks"))
  {
    goto LABEL_65;
  }

  v17 = [v7 fastPass];
  if (v17)
  {
    v18 = v17;
    v19 = [v8 fastPass];

    if (!v19)
    {
      goto LABEL_30;
    }
  }

  v20 = [v8 fastPass];
  if (v20)
  {
    v21 = v20;
    v22 = [v7 fastPass];

    if (!v22)
    {
      goto LABEL_65;
    }
  }

  v23 = [v7 fastPass];
  if (v23)
  {
    v24 = v23;
    v25 = [v8 fastPass];

    if (v25)
    {
      v26 = [v7 staticPriority];
      if (v26 < [v8 staticPriority])
      {
        goto LABEL_30;
      }

      v27 = [v7 staticPriority];
      if (v27 > [v8 staticPriority])
      {
        goto LABEL_65;
      }
    }
  }

  v28 = [v7 fileProtection];
  v29 = +[_DASFileProtection completeUnlessOpen];
  v30 = [v28 isEqual:v29];

  v31 = [v8 fileProtection];
  v32 = +[_DASFileProtection completeUnlessOpen];
  v33 = [v31 isEqual:v32];

  if (v30 && !v33)
  {
    goto LABEL_30;
  }

  if (!(v30 & 1 | ((v33 & 1) == 0)))
  {
    goto LABEL_65;
  }

  v40 = [v7 fileProtection];
  v41 = +[_DASFileProtection completeWhenUserInactive];
  v42 = [v40 isEqual:v41];

  v43 = [v8 fileProtection];
  v44 = +[_DASFileProtection completeWhenUserInactive];
  v45 = [v43 isEqual:v44];

  if (v42 && !v45)
  {
    goto LABEL_30;
  }

  if (!(v42 & 1 | ((v45 & 1) == 0)))
  {
LABEL_65:
    v34 = 1;
    goto LABEL_66;
  }

  if ([v7 triggersRestart] && !objc_msgSend(v8, "triggersRestart"))
  {
    goto LABEL_30;
  }

  if ([v8 triggersRestart] && !objc_msgSend(v7, "triggersRestart"))
  {
    goto LABEL_65;
  }

  if ([v7 requiresSignificantUserInactivity] && !objc_msgSend(v8, "requiresSignificantUserInactivity"))
  {
    goto LABEL_30;
  }

  if ([v8 requiresSignificantUserInactivity] && !objc_msgSend(v7, "requiresSignificantUserInactivity"))
  {
    goto LABEL_65;
  }

  if ([v7 isIntensive] && !objc_msgSend(v8, "isIntensive"))
  {
    goto LABEL_30;
  }

  if ([v8 isIntensive] && !objc_msgSend(v7, "isIntensive"))
  {
    goto LABEL_65;
  }

  if ([v7 isIntensive] && objc_msgSend(v8, "isIntensive"))
  {
    v34 = [*(*(a1 + 32) + 408) compareActivity:v7 withActivity:v8];
    goto LABEL_66;
  }

  if (![v7 requiresNetwork] || !objc_msgSend(v8, "requiresNetwork") || (v46 = objc_msgSend(v7, "deferred"), v46 == objc_msgSend(v8, "deferred")))
  {
    v47 = [v7 schedulingPriority];
    if (v47 <= [v8 schedulingPriority])
    {
      v48 = [v7 schedulingPriority];
      if (v48 < [v8 schedulingPriority])
      {
        goto LABEL_65;
      }

      v50 = [v7 staticPriority];
      if (v50 >= [v8 staticPriority])
      {
        v51 = [v7 staticPriority];
        if (v51 > [v8 staticPriority])
        {
          goto LABEL_65;
        }

        v38 = +[_DASNetworkEvaluationMonitor sharedInstance];
        if ([v7 requiresNetwork] && (objc_msgSend(v8, "requiresNetwork") & 1) == 0 && (objc_msgSend(v38, "isNetworkPathAvailableForActivity:", v7) & 1) != 0)
        {
          goto LABEL_82;
        }

        if ([v8 requiresNetwork] && (objc_msgSend(v7, "requiresNetwork") & 1) == 0 && (objc_msgSend(v38, "isNetworkPathAvailableForActivity:", v8) & 1) != 0)
        {
          goto LABEL_80;
        }

        if (![v7 uninterruptibleDuration] && objc_msgSend(v8, "uninterruptibleDuration"))
        {
          goto LABEL_82;
        }

        if ([v7 uninterruptibleDuration] && !objc_msgSend(v8, "uninterruptibleDuration"))
        {
          goto LABEL_80;
        }

        v52 = [v7 maximumRuntime];
        if (v52 < [v8 maximumRuntime])
        {
          goto LABEL_82;
        }

        v53 = [v7 maximumRuntime];
        if (v53 > [v8 maximumRuntime])
        {
LABEL_80:
          v34 = 1;
          goto LABEL_37;
        }

        v54 = [v7 rateLimitConfigurationName];
        if (v54)
        {
          v55 = v54;
          v56 = [v8 rateLimitConfigurationName];

          if (!v56)
          {
LABEL_82:
            v34 = -1;
            goto LABEL_37;
          }
        }

        v57 = [v8 rateLimitConfigurationName];
        if (v57)
        {
          v58 = v57;
          v59 = [v7 rateLimitConfigurationName];

          if (!v59)
          {
            goto LABEL_80;
          }
        }

        v39 = [v7 startBefore];
        v60 = [v8 startBefore];
        v34 = [v39 compare:v60];

LABEL_36:
LABEL_37:

        goto LABEL_66;
      }
    }

LABEL_30:
    v34 = -1;
    goto LABEL_66;
  }

  if ([v7 deferred])
  {
    v34 = -1;
  }

  else
  {
    v34 = 1;
  }

LABEL_66:

  return v34;
}

void sub_1000EEBDC(uint64_t a1)
{
  v2 = *(a1 + 40);
  os_unfair_recursive_lock_lock_with_options();
  v3 = [*(*(a1 + 40) + 56) mutableCopy];
  v4 = *(a1 + 40);
  os_unfair_recursive_lock_unlock();
  v5 = [_DASDaemonLogger logForCategory:@"evaluation"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 count];
    v7 = *(a1 + 48);
    v8 = 134218242;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Rescoring all %lu pending activities [%@]", &v8, 0x16u);
  }

  [*(a1 + 40) unprotectedEvaluateScoreAndRunActivities:v3];
}

void sub_1000EFD10(uint64_t a1)
{
  v2 = +[_DASClientMetricsRecorder sharedInstance];
  [v2 reportTaskCheckpoint:45 forTask:*(a1 + 32) error:0];
}

void sub_1000F022C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000F025C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 isEqualToString:_DASUpdateActivityXPCActivityNameKey])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v6 = 32;
    goto LABEL_10;
  }

  if ([v7 isEqualToString:_DASUpdateActivityErrorKey])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v6 = 40;
    goto LABEL_10;
  }

  if ([v7 isEqualToString:_DASUpdateActivityXPCActivityClientStringKey])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = 48;
LABEL_10:
      objc_storeStrong((*(*(a1 + v6) + 8) + 40), a3);
    }
  }

LABEL_11:
}

id sub_1000F069C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = [NSString alloc];
  [*(a1 + 32) timeIntervalSince1970];
  v5 = [v3 initWithFormat:@"%f", v4];
  [v2 setObject:v5 forKeyedSubscript:@"startDate"];

  v6 = [*(a1 + 40) name];
  [v2 setObject:v6 forKeyedSubscript:@"name"];

  v7 = [*(a1 + 40) bundleId];
  [v2 setObject:v7 forKeyedSubscript:@"bundleID"];

  v8 = [*(a1 + 40) clientName];
  [v2 setObject:v8 forKeyedSubscript:@"clientName"];

  v9 = [*(a1 + 40) clientProvidedStartDate];
  [v2 setObject:v9 forKeyedSubscript:@"clientProvidedStartDate"];

  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) delayedStart]);
  [v2 setObject:v10 forKeyedSubscript:@"delayedStart"];

  v11 = [[NSString alloc] initWithFormat:@"%lu", objc_msgSend(*(a1 + 40), "downloadSize")];
  [v2 setObject:v11 forKeyedSubscript:@"downloadSize"];

  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) diskIntensive]);
  [v2 setObject:v12 forKeyedSubscript:@"diskIntensive"];

  v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) darkWakeEligible]);
  [v2 setObject:v13 forKeyedSubscript:@"darkWakeEligible"];

  v14 = [*(a1 + 40) groupName];
  [v2 setObject:v14 forKeyedSubscript:@"groupName"];

  [*(a1 + 40) interval];
  v15 = [NSNumber numberWithDouble:?];
  [v2 setObject:v15 forKeyedSubscript:@"interval"];

  v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) memoryIntensive]);
  [v2 setObject:v16 forKeyedSubscript:@"memoryIntensive"];

  v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) preventDeviceSleep]);
  [v2 setObject:v17 forKeyedSubscript:@"preventDeviceSleep"];

  v18 = [NSString alloc];
  [*(a1 + 40) percentCompleted];
  v20 = [v18 initWithFormat:@"%f", v19];
  [v2 setObject:v20 forKeyedSubscript:@"percentCompleted"];

  v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) preClearedMode]);
  [v2 setObject:v21 forKeyedSubscript:@"preClearedMode"];

  v22 = [NSString alloc];
  v23 = [*(a1 + 40) predictedOptimalStartDate];
  [v23 timeIntervalSince1970];
  v25 = [v22 initWithFormat:@"%f", v24];
  [v2 setObject:v25 forKeyedSubscript:@"predictedOptimalStartDate"];

  v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) requiresNetwork]);
  [v2 setObject:v26 forKeyedSubscript:@"requiresNetwork"];

  v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) requiresDeviceInactivity]);
  [v2 setObject:v27 forKeyedSubscript:@"requiresDeviceInactivity"];

  v28 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) requestsApplicationLaunch]);
  [v2 setObject:v28 forKeyedSubscript:@"requestsApplicationLaunch"];

  v29 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) requiresInexpensiveNetworking]);
  [v2 setObject:v29 forKeyedSubscript:@"requiresInexpensiveNetworking"];

  v30 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) requiresUnconstrainedNetworking]);
  [v2 setObject:v30 forKeyedSubscript:@"requiresUnconstrainedNetworking"];

  v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) runOnAppForeground]);
  [v2 setObject:v31 forKeyedSubscript:@"runOnAppForeground"];

  v32 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) runWhenAppLaunchUnlikely]);
  [v2 setObject:v32 forKeyedSubscript:@"runWhenAppLaunchUnlikely"];

  v33 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) requiresSignificantUserInactivity]);
  [v2 setObject:v33 forKeyedSubscript:@"requiresSignificantUserInactivity"];

  v34 = [NSString alloc];
  v35 = [*(a1 + 40) startAfter];
  [v35 timeIntervalSince1970];
  v37 = [v34 initWithFormat:@"%f", v36];
  [v2 setObject:v37 forKeyedSubscript:@"startAfter"];

  v38 = [NSString alloc];
  v39 = [*(a1 + 40) submitDate];
  [v39 timeIntervalSince1970];
  v41 = [v38 initWithFormat:@"%f", v40];
  [v2 setObject:v41 forKeyedSubscript:@"submitDate"];

  v42 = [NSString alloc];
  v43 = [*(a1 + 40) startBefore];
  [v43 timeIntervalSince1970];
  v45 = [v42 initWithFormat:@"%f", v44];
  [v2 setObject:v45 forKeyedSubscript:@"startBefore"];

  v46 = [[NSString alloc] initWithFormat:@"%lu", objc_msgSend(*(a1 + 40), "uploadSize")];
  [v2 setObject:v46 forKeyedSubscript:@"uploadSize"];

  v47 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) wasForceRun]);
  [v2 setObject:v47 forKeyedSubscript:@"wasForceRun"];

  return v2;
}

void sub_1000F1990(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  v5 = *(a1 + 32);
  if (type == &_xpc_type_connection)
  {
    os_unfair_lock_lock(v5 + 6);
    [*(*(a1 + 32) + 744) addObject:v3];
    v6 = dispatch_get_global_queue(25, 0);
    xpc_connection_set_target_queue(v3, v6);

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F1AB4;
    v8[3] = &unk_1001B89A0;
    v8[4] = *(a1 + 32);
    v7 = v3;
    v9 = v7;
    xpc_connection_set_event_handler(v7, v8);
    xpc_connection_activate(v7);
    os_unfair_lock_unlock((*(a1 + 32) + 24));
  }

  else
  {
    [(os_unfair_lock_s *)v5 _unexpectedXPCObject:v3 WithLog:@"Prewarm suspend listener received unexpected message"];
  }
}

void sub_1000F2718(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t sub_1000F2730(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_1000F2774(id a1)
{
  v1 = os_log_create("com.apple.duetactivityscheduler", "default");
  v2 = qword_10020B7E0;
  qword_10020B7E0 = v1;

  v3 = +[NSMutableDictionary dictionary];
  v4 = qword_10020B7E8;
  qword_10020B7E8 = v3;

  v5 = +[NSMutableDictionary dictionary];
  v6 = qword_10020B7F0;
  qword_10020B7F0 = v5;

  v7 = +[NSMutableDictionary dictionary];
  v8 = qword_10020B7F8;
  qword_10020B7F8 = v7;

  dword_10020B800 = 0;
}

void sub_1000F2D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F2D48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained handleClientInterruption];
    WeakRetained = v2;
  }
}

void sub_1000F304C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000F3064(void *a1, void *a2, _BYTE *a3)
{
  v5 = a1[4];
  v6 = [a2 name];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    if (++*(*(a1[5] + 8) + 24) == a1[6])
    {
      *a3 = 1;
    }
  }

  return v7;
}

void sub_1000F536C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F53B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000F6438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000F9EC0(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____DASActivitySchedulerClient];
  v3 = qword_10020B810;
  qword_10020B810 = v2;

  v4 = qword_10020B810;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v5 = [NSArray arrayWithObjects:&v7 count:3];
  v6 = [NSSet setWithArray:v5, v7, v8];
  [v4 setClasses:v6 forSelector:"handleLaunchFromDaemonForActivities:" argumentIndex:0 ofReply:0];

  objc_autoreleasePoolPop(v1);
}

void sub_1000F9FDC(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____DASActivityOmnibusScheduling];
  v3 = qword_10020B820;
  qword_10020B820 = v2;

  v4 = qword_10020B820;
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v5 = [NSArray arrayWithObjects:v27 count:2];
  v6 = [NSSet setWithArray:v5];
  [v4 setClasses:v6 forSelector:"submitActivities:" argumentIndex:0 ofReply:0];

  v7 = qword_10020B820;
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v8 = [NSArray arrayWithObjects:v26 count:2];
  v9 = [NSSet setWithArray:v8];
  [v7 setClasses:v9 forSelector:"startedActivities:" argumentIndex:0 ofReply:0];

  v10 = qword_10020B820;
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v11 = [NSArray arrayWithObjects:v25 count:2];
  v12 = [NSSet setWithArray:v11];
  [v10 setClasses:v12 forSelector:"delayedStartActivities:" argumentIndex:0 ofReply:0];

  v13 = qword_10020B820;
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v14 = [NSArray arrayWithObjects:v24 count:2];
  v15 = [NSSet setWithArray:v14];
  [v13 setClasses:v15 forSelector:"enableTaskRegistryMode:processes:handler:" argumentIndex:1 ofReply:0];

  [qword_10020B820 setXPCType:&_xpc_type_dictionary forSelector:"submitTaskRequestWithIdentifier:descriptor:completionHandler:" argumentIndex:1 ofReply:0];
  [qword_10020B820 setXPCType:&_xpc_type_dictionary forSelector:"updateTaskRequestWithIdentifier:descriptor:completionHandler:" argumentIndex:1 ofReply:0];
  v16 = qword_10020B820;
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v17 = [NSArray arrayWithObjects:v23 count:2];
  v18 = [NSSet setWithArray:v17];
  [v16 setClasses:v18 forSelector:"reportSystemTaskWithIdentifier:consumedResults:completionHandler:" argumentIndex:1 ofReply:0];

  v19 = qword_10020B820;
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v20 = [NSArray arrayWithObjects:v22 count:2];
  v21 = [NSSet setWithArray:v20];
  [v19 setClasses:v21 forSelector:"reportSystemTaskWithIdentifier:producedResults:completionHandler:" argumentIndex:1 ofReply:0];

  objc_autoreleasePoolPop(v1);
}

void sub_1000FA39C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

id sub_1000FA4A0(uint64_t a1)
{
  v2 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Active app changed", v4, 2u);
  }

  return [*(a1 + 32) handleActiveAppChanged];
}

void sub_1000FA6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FA6C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000FA6E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 || ![*(a1 + 32) exposureNotificationEnabled])
  {
    v6 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EN is not active. Not performing block.", buf, 2u);
    }

    [*(a1 + 32) invalidate];
    dispatch_semaphore_signal(*(a1 + 40));
  }

  else
  {
    v4 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EN is active", buf, 2u);
    }

    v5 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000FA874;
    v7[3] = &unk_1001B8AA8;
    v10 = *(a1 + 48);
    v8 = v5;
    v9 = *(a1 + 40);
    [v8 getInfoForKey:@"activeApp" completion:v7];
  }
}

void sub_1000FA874(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10012C650(v5, v6, v7);
  }

  if (v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Error obtaining active EN app: %@", &v11, 0xCu);
    }
  }

  else
  {
    v8 = *(*(a1 + 48) + 8);
    v9 = v5;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  [*(a1 + 32) invalidate];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000FB1D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [objc_opt_class() runPeriodicRelaunchTask];
  [v3 setTaskCompleted];
}

void sub_1000FB2E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 || ![*(a1 + 32) exposureNotificationEnabled])
  {
    v5 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EN is not active. Not performing block.", v6, 2u);
    }
  }

  else
  {
    v4 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EN is active. Performing block.", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  [*(a1 + 32) invalidate];
}

void sub_1000FB530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FB548(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = 138544130;
    v12 = v10;
    v13 = 1024;
    v14 = a2;
    v15 = 2048;
    v16 = a3;
    v17 = 2112;
    v18 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@ - Active? %u, Interval %llu, Error: %@", &v11, 0x26u);
  }

  if (v7)
  {
    v9 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10012C750(a1, v7, v9);
    }
  }

  else if (a2)
  {
    *(*(*(a1 + 56) + 8) + 24) = a3;
  }

  [*(a1 + 40) invalidate];
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1000FC1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FC714(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 prewarmNewlyRecommendedApps];
  [v3 setTaskCompleted];
}

void sub_1000FC9BC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 freezeNewlyRecommendedApps];
  [v3 setTaskCompleted];
}

void sub_1000FCE38(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10020B828;
  qword_10020B828 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_1000FD31C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [objc_alloc(objc_opt_class()) initWithDaemon:*(a1 + 32)];
  v4 = qword_10020B840;
  qword_10020B840 = v3;

  return _objc_release_x1(v3, v4);
}

void sub_1000FD460(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[4])
  {
    v3 = +[NSMutableSet set];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(a1 + 32);
  }

  v6 = [v2 pendingActivities];
  [v6 addObject:*(a1 + 40)];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) diskVolume];
  [v7 registerForDiskVolumeMonitoring:v8];
}

void sub_1000FD5F4(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingActivities];
  [v2 removeObject:*(a1 + 40)];

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) diskVolume];
  [v3 unregisterForDiskVolumeMonitoring:v4];
}

void sub_1000FDA0C(uint64_t a1)
{
  v2 = [*(a1 + 32) daemon];
  [v2 evaluateScoreAndRunActivities:*(a1 + 40)];
}

void sub_1000FDD88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained handleTimerFired];
    WeakRetained = v2;
  }
}

uint64_t sub_1000FEDB8(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10020B850;
  qword_10020B850 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_1000FF190(uint64_t a1)
{
  v2 = [_DASDaemonLogger logForCategory:@"customsysconstraints"];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Timer fired to reset workloads", &v17, 2u);
  }

  v3 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:kDASSystemContextMCWorkloadRunningState];

  if (v3)
  {
    v4 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:kDASSystemContextMCWorkloadRunningState];
    [v4 timeIntervalSinceNow];
    v6 = v5 < -600.0;
    if (v5 < -600.0)
    {
      [*(*(a1 + 32) + 40) setObject:0 forKeyedSubscript:kDASSystemContextMCWorkloadRunningState];
      v7 = [_DASDaemonLogger logForCategory:@"customsysconstraints"];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resetting MC, set at %@", &v17, 0xCu);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:kDASSystemContextGPWorkloadRunningState];

  if (v8)
  {
    v9 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:kDASSystemContextGPWorkloadRunningState];
    [v9 timeIntervalSinceNow];
    if (v10 >= -600.0)
    {

      if (!v6)
      {
        return;
      }
    }

    else
    {
      [*(*(a1 + 32) + 40) setObject:0 forKeyedSubscript:kDASSystemContextGPWorkloadRunningState];
      v11 = *(a1 + 32);
      v12 = *(v11 + 48);
      if (v12 <= 1)
      {
        v12 = 1;
      }

      *(v11 + 48) = v12 - 1;
      v13 = [_DASDaemonLogger logForCategory:@"customsysconstraints"];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Resetting GP, set at %@", &v17, 0xCu);
      }
    }
  }

  else if (!v6)
  {
    return;
  }

  v14 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:kDASSystemContextGPWorkloadRunningState];
  if (v14)
  {
  }

  else
  {
    v15 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:kDASSystemContextMCWorkloadRunningState];

    if (!v15)
    {
      v16 = [_DASDaemonLogger logForCategory:@"customsysconstraints"];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Reevaluating activities due to system constraint reset", &v17, 2u);
      }

      [*(a1 + 32) reevaluateAllActivitiesWithDaemon:*(*(a1 + 32) + 72)];
      [*(a1 + 32) cancelResetTimer];
    }
  }
}

void sub_1000FF6E4(uint64_t a1)
{
  v2 = [_DASDaemonLogger logForCategory:@"customsysconstraints"];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting _heavyDiskUsage = 0", v3, 2u);
  }

  *(*(a1 + 32) + 8) = 0;
}

void sub_1000FF9F8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (*(a1 + 64))
    {
      return;
    }

    [*(a1 + 40) cancelResetTimer];
    [*(*(a1 + 40) + 40) setObject:0 forKeyedSubscript:*(a1 + 48)];
    v2 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:kDASSystemContextGPWorkloadRunningState];

    if (v2)
    {
      v3 = [_DASDaemonLogger logForCategory:@"customsysconstraints"];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v10 = 0;
        v4 = "Not evaluating because GP is still blocking!";
        v5 = &v10;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (!*(a1 + 64))
    {
      return;
    }

    [*(a1 + 40) armResetTimer];
    v6 = +[NSDate now];
    [*(*(a1 + 40) + 40) setObject:v6 forKeyedSubscript:*(a1 + 48)];

    v7 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:kDASSystemContextGPWorkloadRunningState];

    if (v7)
    {
      v3 = [_DASDaemonLogger logForCategory:@"customsysconstraints"];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v4 = "Not evaluating because GP is already blocking!";
        v5 = buf;
        goto LABEL_10;
      }

LABEL_11:

      return;
    }
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 56);

  [v8 reevaluateAllActivitiesWithDaemon:v9];
}

void sub_1000FFB8C(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = v3[6];
  if (v2 == 1)
  {
    if (v4)
    {
LABEL_7:
      v3[6] = v4 + 1;
      return;
    }

    [v3 armResetTimer];
    v5 = +[NSDate now];
    [*(*(a1 + 32) + 40) setObject:v5 forKeyedSubscript:*(a1 + 40)];

    v6 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:kDASSystemContextMCWorkloadRunningState];

    if (v6)
    {
      v7 = [_DASDaemonLogger logForCategory:@"customsysconstraints"];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Not evaluating because MC is already blocking!", &v15, 2u);
      }

      v3 = *(a1 + 32);
      v4 = v3[6];
      goto LABEL_7;
    }

    ++*(*(a1 + 32) + 48);
    goto LABEL_22;
  }

  if (v4 != 1)
  {
    goto LABEL_13;
  }

  [v3 cancelResetTimer];
  [*(*(a1 + 32) + 40) setObject:0 forKeyedSubscript:kDASSystemContextGPWorkloadRunningState];
  v8 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:kDASSystemContextMCWorkloadRunningState];

  if (v8)
  {
    v9 = [_DASDaemonLogger logForCategory:@"customsysconstraints"];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Not evaluating because MC is still blocking!", &v15, 2u);
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v10 = 1;
LABEL_14:
  v11 = *(a1 + 32);
  v12 = *(v11 + 48);
  if (v12 <= 1)
  {
    v12 = 1;
  }

  *(v11 + 48) = v12 - 1;
  v13 = [_DASDaemonLogger logForCategory:@"customsysconstraints"];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [NSNumber numberWithInteger:*(*(a1 + 32) + 48)];
    v15 = 138412290;
    v16 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "GP is now %@", &v15, 0xCu);
  }

  if (v10)
  {
LABEL_22:
    [*(a1 + 32) reevaluateAllActivitiesWithDaemon:*(a1 + 48)];
  }
}

void sub_10010037C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (nw_path_get_status(v3) != nw_path_status_unsatisfied)
  {
    v4 = *(a1 + 32);
    v5 = (a1 + 32);
    if (*(a1 + 40))
    {
      v6 = [v4 activities];
      objc_sync_enter(v6);
      v7 = [*v5 activities];
      v8 = [v7 copy];

      objc_sync_exit(v6);
      v9 = dispatch_get_global_queue(2, 0);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1001004E0;
      v12[3] = &unk_1001B8B90;
      v10 = *(a1 + 40);
      v13 = v8;
      v14 = v10;
      v11 = v8;
      dispatch_async(v9, v12);
    }

    else
    {
      v11 = [v4 log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10012CC9C(v5, v11);
      }
    }
  }
}

void sub_100100B90(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10020B860;
  qword_10020B860 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100100BCC(id a1)
{
  v1 = +[NWPathEvaluator sharedDefaultEvaluator];
  v2 = qword_10020B870;
  qword_10020B870 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100100C0C(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(NWParameters);
  [v2 setProhibitExpensivePaths:1];
  v3 = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:v2];
  v4 = qword_10020B880;
  qword_10020B880 = v3;

  objc_autoreleasePoolPop(v1);
}

void sub_100100C88(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(NWParameters);
  [v2 setProhibitConstrainedPaths:1];
  v3 = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:v2];
  v4 = qword_10020B890;
  qword_10020B890 = v3;

  objc_autoreleasePoolPop(v1);
}

void sub_100100DD0(id a1)
{
  v1 = objc_alloc_init(NWParameters);
  v2 = qword_10020B8A0;
  qword_10020B8A0 = v1;

  v3 = qword_10020B8A0;

  [v3 setProhibitExpensivePaths:1];
}

void sub_100100E20(id a1)
{
  v1 = objc_alloc_init(NWParameters);
  v2 = qword_10020B8B0;
  qword_10020B8B0 = v1;

  v3 = qword_10020B8B0;

  [v3 setProhibitExpensivePaths:0];
}

uint64_t sub_100101810(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020B8C0;
  qword_10020B8C0 = v2;

  return _objc_release_x1(v2, v3);
}

id sub_1001019B8(uint64_t a1)
{
  v2 = +[BLSBacklight sharedBacklight];
  *(*(a1 + 32) + 16) = [v2 backlightState];

  v3 = [_DASDaemonLogger logForCategory:@"BacklightStateMonitor"];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 16);
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initial BacklightState: %ld.", &v6, 0xCu);
  }

  return [*(a1 + 32) registerForBacklightUpdates];
}

uint64_t sub_100101B40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020B8D0;
  qword_10020B8D0 = v2;

  return _objc_release_x1(v2, v3);
}

id sub_10010219C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10020B8F8;
  v7 = qword_10020B8F8;
  if (!qword_10020B8F8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10010F794;
    v3[3] = &unk_1001B5798;
    v3[4] = &v4;
    sub_10010F794(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100102264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001024DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = qword_10020B8E0;
  qword_10020B8E0 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_100102774(id a1)
{
  v4[0] = &off_1001CA558;
  v4[1] = &off_1001CA570;
  v5[0] = @"Submitted";
  v5[1] = @"Updated";
  v4[2] = &off_1001CA588;
  v4[3] = &off_1001CA5A0;
  v5[2] = @"TimeWiseEligible";
  v5[3] = @"RequestedLaunch";
  v4[4] = &off_1001CA5B8;
  v4[5] = &off_1001CA5D0;
  v5[4] = @"ClientFailedToLaunch";
  v5[5] = @"Started";
  v4[6] = &off_1001CA5E8;
  v4[7] = &off_1001CA600;
  v5[6] = @"Completed";
  v5[7] = @"Expired";
  v4[8] = &off_1001CA618;
  v4[9] = &off_1001CA630;
  v5[8] = @"ClientRequestedExpiry";
  v5[9] = @"DASRequestedExpiry";
  v4[10] = &off_1001CA648;
  v4[11] = &off_1001CA660;
  v5[10] = @"ClientDisconnected";
  v5[11] = @"ClientFailedToExpireWithinThreshold";
  v4[12] = &off_1001CA678;
  v4[13] = &off_1001CA690;
  v5[12] = @"TimeLimited";
  v5[13] = @"ClientCanceled";
  v1 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:14];
  v2 = [NSMutableDictionary dictionaryWithDictionary:v1];
  v3 = qword_10020B8D8;
  qword_10020B8D8 = v2;
}

void sub_10010F5A0(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = a1[4];
    v6 = [v3 taskIdentifier];
    v7 = [v5 objectForKeyedSubscript:v6];

    v8 = [v7 objectForKeyedSubscript:@"Estimated Runtime"];
    [v8 doubleValue];
    [v4 setEstimatedRunTime:?];

    v9 = *(a1[5] + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v4 taskIdentifier];
      [v4 estimatedRunTime];
      v15 = 138412546;
      v16 = v11;
      v17 = 2048;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updating Estimated Runtime for %@: %f", &v15, 0x16u);
    }

    v13 = a1[6];
    v14 = [v4 taskIdentifier];
    [v13 addObject:v14];
  }
}

void sub_10010F794(uint64_t a1)
{
  sub_10010F7EC();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PPSEvent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10020B8F8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10011F6CC();
    sub_10010F7EC();
  }
}

void sub_10010F7EC()
{
  v1[0] = 0;
  if (!qword_10020B900)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_10010F8E8;
    v1[4] = &unk_1001B54A0;
    v1[5] = v1;
    v2 = off_1001B8D00;
    v3 = 0;
    qword_10020B900 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_10020B900)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_10010F8E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10020B900 = result;
  return result;
}

_DASUserRequestedBackupTaskManager *sub_10010F95C(uint64_t a1)
{
  sub_10010F7EC();
  result = objc_getClass("PPSTimeSeries");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10020B908 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10011F6A4();
    return [(_DASUserRequestedBackupTaskManager *)v3 initWithContext:v4, v5];
  }

  return result;
}

void sub_10010FB18(id a1)
{
  v1 = [_CDContextualKeyPath keyPathWithKey:@"/backup/userRequested"];
  v2 = qword_10020B918;
  qword_10020B918 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10010FC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100110340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011036C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ has state %@", &v8, 0x16u);
  }

  if ([*(a1 + 32) isBackupStatusCompleted:{objc_msgSend(v6, "unsignedIntegerValue")}])
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

Class sub_100110988(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10020B928)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100110ACC;
    v4[4] = &unk_1001B54A0;
    v4[5] = v4;
    v5 = off_1001B8E38;
    v6 = 0;
    qword_10020B928 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10020B928)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BYBuddyDaemonCloudSyncClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10012D418();
  }

  qword_10020B920 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100110ACC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10020B928 = result;
  return result;
}

void sub_100111758(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_100111784(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100111868;
    v8[3] = &unk_1001B56E0;
    v9 = v5;
    v10 = v3;
    v7 = v5;
    dispatch_async(v6, v8);
  }
}

void sub_100111868(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionID];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    v4 = [_DASDaemonLogger logForCategory:@"plugin"];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10012D624(v4);
    }

    [*(a1 + 32) setSessionID:0];
    v5 = [*(a1 + 32) pluginDelegate];
    v6 = [*(a1 + 32) currentActivity];
    v7 = [*(a1 + 32) delegateQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001119B0;
    v10[3] = &unk_1001B56E0;
    v11 = v5;
    v12 = v6;
    v8 = v6;
    v9 = v5;
    dispatch_async(v7, v10);
  }
}

uint64_t sub_1001119B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 extensionActivity:v5 finishedWithStatus:3];
  }

  return result;
}

void sub_100111A08(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [_DASDaemonLogger logForCategory:@"plugin"];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10012D668();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained extension];
  v10 = [v9 requestInterruptionBlock];
  (v10)[2](v10, v6);
}

uint64_t sub_10011219C(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    return [v4 extensionActivity:v5 finishedWithStatus:v6];
  }

  return result;
}

void sub_10011227C(uint64_t a1)
{
  v2 = [_DASDaemonLogger logForCategory:@"plugin"];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Killing plugin %@", &v11, 0xCu);
  }

  v4 = [*(a1 + 32) sessionID];

  if (v4)
  {
    v5 = [*(a1 + 32) extension];
    v6 = [*(a1 + 32) sessionID];
    [v5 cancelExtensionRequestWithIdentifier:v6];

    [*(a1 + 32) setSessionID:0];
  }

  v7 = [*(a1 + 32) extension];
  [v7 _kill:9];

  v8 = [*(a1 + 32) currentActivity];
  [v8 setPid:0];

  [*(a1 + 32) setCurrentActivity:0];
  os_unfair_lock_lock(&unk_10020B930);
  v9 = qword_10020B938;
  v10 = [*(a1 + 32) pluginMapKey];
  [v9 removeObjectForKey:v10];

  os_unfair_lock_unlock(&unk_10020B930);
}

void sub_1001127AC(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____DASHostExtensionContextProtocol];
  v2 = qword_10020B948;
  qword_10020B948 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100112838(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____DASRemoteExtensionContextProtocol];
  v2 = qword_10020B958;
  qword_10020B958 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001129C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001129E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001129F8(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = [_DASDaemonLogger logForCategory:@"plugin"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10012D908(v4, v5);
  }
}

void sub_100112FD4(uint64_t a1)
{
  obj = *(*(a1 + 32) + 112);
  objc_sync_enter(obj);
  v2 = [*(*(a1 + 32) + 112) allKeys];
  v3 = [NSSet setWithArray:v2];

  if ([v3 count])
  {
    [*(*(a1 + 32) + 120) reportScheduledIntensiveWorkByProcesses:v3];
  }

  objc_sync_exit(obj);
}

id sub_100113A0C(uint64_t a1)
{
  v30 = +[NSMutableDictionary dictionary];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = *(*(a1 + 32) + 88);
  v31 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v31)
  {
    v29 = *v39;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v38 + 1) + 8 * i);
        v4 = [NSString stringWithFormat:@"%@AvailableCount", v3];
        v5 = [NSString stringWithFormat:@"%@UnavailableCount", v3];
        v6 = [NSString stringWithFormat:@"%@EstimatedUnavailableDuration", v3];
        v37 = [NSString stringWithFormat:@"%@EstimatedHoursUnavailable", v3];
        v36 = [NSString stringWithFormat:@"%@EstimatedUnavailableStartDates", v3];
        v35 = [NSString stringWithFormat:@"%@ActualUnavailableDuration", v3];
        v34 = [NSString stringWithFormat:@"%@ActualHoursUnavailable", v3];
        v33 = [NSString stringWithFormat:@"%@ActualUnavailableStartDates", v3];
        v7 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:v4];
        if (v7)
        {
          v8 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:v4];
          [v30 setObject:v8 forKeyedSubscript:v4];
        }

        else
        {
          [v30 setObject:&off_1001CA9C0 forKeyedSubscript:v4];
        }

        v9 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:v5];
        if (v9)
        {
          v10 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:v5];
          [v30 setObject:v10 forKeyedSubscript:v5];
        }

        else
        {
          [v30 setObject:&off_1001CA9C0 forKeyedSubscript:v5];
        }

        v11 = *(a1 + 32);
        v12 = [v11[10] objectForKeyedSubscript:v36];
        [*(*(a1 + 32) + 80) objectForKeyedSubscript:v6];
        v13 = v32 = v6;
        [v11 newDurationForStartDates:v12 withPreviousDurations:v13];
        v15 = v14;

        v16 = *(a1 + 32);
        v17 = [v16[10] objectForKeyedSubscript:v33];
        v18 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:v35];
        [v16 newDurationForStartDates:v17 withPreviousDurations:v18];
        v20 = v19;

        v21 = v15 / 3600.0;
        v22 = [NSNumber numberWithDouble:v21];
        [v30 setObject:v22 forKeyedSubscript:v37];

        v23 = [v3 isEqualToString:off_10020ACC0];
        v24 = v20 / 3600.0;
        if (!v23)
        {
          v24 = v21;
        }

        v25 = [NSNumber numberWithDouble:v24];
        [v30 setObject:v25 forKeyedSubscript:v34];
      }

      v31 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v31);
  }

  v26 = [_DASDaemonLogger logForCategory:@"PowerLog"];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v30;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Logging daily CA trigger metrics %@", buf, 0xCu);
  }

  return v30;
}

void sub_100114EA4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = v5[9];
  v7 = a3;
  v8 = [v6 objectForKeyedSubscript:v10];
  v9 = [v5 getValuesFromTimeline:v7 valueMultiplier:v8];

  if (v9)
  {
    [*(a1 + 40) setObject:v9 forKeyedSubscript:v10];
  }
}

void sub_100114F58(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) getValuesFromTimeline:a3 valueMultiplier:*(a1 + 40)];
  v7 = v6;
  if (v6)
  {
    v9 = v5;
    v10 = v6;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [*(a1 + 48) addObject:v8];
  }
}

void sub_100115014(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10020B968;
  qword_10020B968 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100115E28(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = [NSString stringWithFormat:@"score%@", a2];
  v6 = *(a1 + 40);
  [v5 score];
  v8 = v7;

  v9 = [v6 numberFromDouble:v8 * 100.0];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
}

id sub_100117564(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setObject:*(a1 + 40) forKeyedSubscript:*(a1 + 32)];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 56) requiresPlugin]);
  [v2 setObject:v3 forKeyedSubscript:*(a1 + 48)];

  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 56) requiresNetwork]);
  [v2 setObject:v4 forKeyedSubscript:*(a1 + 64)];

  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 56) isIntensive]);
  [v2 setObject:v5 forKeyedSubscript:*(a1 + 72)];

  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 56) requiresDeviceInactivity]);
  [v2 setObject:v6 forKeyedSubscript:*(a1 + 80)];

  [v2 setObject:*(a1 + 96) forKeyedSubscript:*(a1 + 88)];
  [v2 setObject:*(a1 + 112) forKeyedSubscript:*(a1 + 104)];
  v7 = [*(a1 + 120) experimentID];

  if (v7)
  {
    v8 = [*(a1 + 120) experimentID];
    [v2 setObject:v8 forKeyedSubscript:*(a1 + 128)];

    v9 = [*(a1 + 120) treatmentID];
    [v2 setObject:v9 forKeyedSubscript:*(a1 + 136)];

    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 120) deploymentID]);
    v11 = [v10 stringValue];
    [v2 setObject:v11 forKeyedSubscript:*(a1 + 144)];
  }

  return v2;
}

void start()
{
  v0 = os_log_create("com.apple.dasd", "main");
  getpid();
  v1 = memorystatus_control();
  if (v1)
  {
    v2 = v1;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = v2;
      _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Failed to elevate inactive jetsam priority, error: %d", v5, 8u);
    }
  }

  else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5[0]) = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Succeeded to elevate inactive jetsam priority", v5, 2u);
  }

  v3 = objc_autoreleasePoolPush();
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_1001B8FE8);
  v4 = +[_DASDaemon sharedInstance];
  [v4 start];

  objc_autoreleasePoolPop(v3);
  CFRunLoopRun();
  exit(1);
}

uint64_t sub_10011825C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020B978;
  qword_10020B978 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_100118A28(id a1, BPSCompletion *a2)
{
  if ([(BPSCompletion *)a2 state])
  {
    v2 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10012DAFC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void sub_100118A80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 deviceUUID];

  if (v5)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [v3 eventBody];
    v7 = [v6 deviceActivityState];

    v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v22 + 1) + 8 * i) state] == 1)
          {
            os_unfair_lock_lock((*(a1 + 32) + 12));
            [*(*(a1 + 32) + 72) addObject:v5];
            os_unfair_lock_unlock((*(a1 + 32) + 12));
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v9);
    }

    v20 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = BMContextSyncDeviceActivityLevelActivityStateAsString();
      *buf = 138412546;
      v27 = v5;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "DASContext: Remote device with UUID %@ had activity level changed to %@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10012DB34(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }
}

void sub_1001193F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100119460(id a1, id a2, NSDictionary *a3)
{
  v3 = a2;
  if ([v3 platform] != 1 && objc_msgSend(v3, "platform") != 2)
  {
    if ([v3 platform] == 3 || objc_msgSend(v3, "platform") == 4)
    {
      v8 = [v3 model];
      v9 = [v8 substringToIndex:2];
      v10 = [v9 intValue];

      if (v10 > 22)
      {
        goto LABEL_4;
      }
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v4 = [v3 model];
  v5 = [v4 substringToIndex:2];
  v6 = [v5 intValue];

  if (v6 <= 20)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = 1;
LABEL_9:

  return v7;
}

void sub_10011955C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 filterWithIsIncluded:&stru_1001B90F0];
  v6 = [v5 last];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100119710;
  v10[3] = &unk_1001B9138;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v13 = a3;
  v9 = [v6 sinkWithCompletion:&stru_1001B9110 receiveInput:v10];
}

BOOL sub_100119638(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 bundleID];

  if ([v3 isEqualToString:@"com.apple.mobileslideshow"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.Photos"];
  }

  return v4;
}

void sub_1001196AC(id a1, BPSCompletion *a2)
{
  v2 = [(BPSCompletion *)a2 error];

  if (v2)
  {
    v3 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10012DC3C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100119710(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 48)];
  v6 = [v4 idsDeviceIdentifier];

  if (a2)
  {
    if (v6)
    {
      v5 = [*(*(a1 + 40) + 80) objectForKey:v6];

      if (!v5)
      {
        os_unfair_lock_lock((*(a1 + 40) + 12));
        [*(*(a1 + 40) + 80) setValue:&off_1001CAA20 forKey:v6];
        os_unfair_lock_unlock((*(a1 + 40) + 12));
      }
    }
  }
}

uint64_t sub_100119D74(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [objc_alloc(objc_opt_class()) initWithDaemon:*(a1 + 32)];
  v4 = qword_10020B988;
  qword_10020B988 = v3;

  return _objc_release_x1(v3, v4);
}

uint64_t sub_10011A030(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020B998;
  qword_10020B998 = v2;

  return _objc_release_x1(v2, v3);
}

uint64_t sub_10011AB5C(uint64_t a1)
{
  qword_10020B9A8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10011AE60(uint64_t a1)
{
  if ([_DASActivityDurationTracker shouldTrackActivity:*(a1 + 32)])
  {
    v2 = *(a1 + 40);
    v4 = [*(a1 + 32) startDate];
    [v4 timeIntervalSinceNow];
    [v2 addTimeInterval:*(a1 + 32) forActivity:-v3];
  }
}

id sub_10011AF7C(uint64_t a1)
{
  result = [_DASActivityDurationTracker shouldTrackActivity:*(a1 + 32)];
  if (result)
  {
    v3 = [*(a1 + 32) startDate];
    [v3 timeIntervalSinceNow];
    v5 = -v4;

    v6 = fmax(v5, 3600.0);
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);

    return [v7 addTimeInterval:v8 forActivity:v6];
  }

  return result;
}

uint64_t sub_10011B460(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020B9B8;
  qword_10020B9B8 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_10011BB2C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = 134218242;
  v7 = [a2 pid];
  v8 = 2112;
  v9 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not terminate app with pid %ld due to error: %@, invalidating instead", &v6, 0x16u);
}

void sub_10011BBE4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "DASAssertion dealloced before being invalidated! %@", &v2, 0xCu);
}

void sub_10011BC5C(uint64_t a1, char a2, NSObject *a3)
{
  v5 = [NSNumber numberWithBool:a2 & 1];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Mode %@ state updated to: %@", &v6, 0x16u);
}

void sub_10011BD2C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 error];
  v5 = [v4 description];
  v6 = 136315138;
  v7 = [v5 UTF8String];
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error while querying Device.Power.PluggedIn stream: %s\n", &v6, 0xCu);
}

void sub_10011BE68()
{
  v0 = [NSNumber numberWithDouble:?];
  sub_10000FC60();
  sub_10000FC78(&_mh_execute_header, v1, v2, "Dynamic limit for %@ set to be %@", v3, v4, v5, v6, v7);
}

void sub_10011BF00()
{
  v0 = [NSNumber numberWithDouble:?];
  sub_10000FC60();
  sub_10000FC78(&_mh_execute_header, v1, v2, "Static limit for %@ set to be %@", v3, v4, v5, v6, v7);
}

void sub_10011C224()
{
  sub_100005040();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "'%{public}@' could not be marked completed because can't find rate limit configuration %@", v2, 0x16u);
}

void sub_10011C2A8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  sub_100005040();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "No group name for %@", v5, 0xCu);
}

void sub_10011C7F0()
{
  sub_100005040();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011C8A0()
{
  sub_100005090();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011C8DC()
{
  sub_100005090();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011C918()
{
  sub_100005040();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011CB24(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = @"DASPoliciesBlockingCriteria";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@: %@", &v2, 0x16u);
}

void sub_10011CBB0()
{
  sub_100005090();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011CBEC()
{
  sub_100005090();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011CC28()
{
  sub_100005090();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011CCD8()
{
  sub_100005040();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011CD48()
{
  sub_100005090();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011CDF8()
{
  sub_100005040();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011CE7C(void *a1)
{
  v1 = a1;
  v2 = __error();
  strerror(*v2);
  sub_10002441C(&_mh_execute_header, v3, v4, "mmap failed for budgeting: %s", v5, v6, v7, v8, 2u);
}

void sub_10011CF08(void *a1)
{
  v1 = a1;
  v2 = __error();
  strerror(*v2);
  sub_10002441C(&_mh_execute_header, v3, v4, "Failed to truncate shared memory for budgeting: %s", v5, v6, v7, v8, 2u);
}

void sub_10011CF94(void *a1)
{
  v1 = a1;
  v2 = __error();
  strerror(*v2);
  sub_10002441C(&_mh_execute_header, v3, v4, "Failed to open shared memory for budgeting: %s", v5, v6, v7, v8, 2u);
}

void sub_10011D020(uint64_t a1, id *a2, NSObject *a3)
{
  v5 = [NSNumber numberWithUnsignedChar:**(*a1 + 8)];
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*a2 count]);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Stored budget count %@ != expected count %@", &v7, 0x16u);
}

void sub_10011D154(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 error];
  v5 = [v4 description];
  v6 = 136315138;
  v7 = [v5 UTF8String];
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error while querying BMLibrary.Widgets.Viewed stream: %s\n", &v6, 0xCu);
}

void sub_10011D260()
{
  v1[0] = 138412546;
  sub_100027858();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%@: %@", v1, 0x16u);
}

void sub_10011D324()
{
  v1[0] = 138412546;
  sub_100027858();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%@: %@", v1, 0x16u);
}

void sub_10011D3A4(void *a1, NSObject *a2)
{
  v3 = [a1 objectForKeyedSubscript:@"Temperature"];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BatteryTemperatureReader returning value %@", &v4, 0xCu);
}

void sub_10011D444(os_log_t log, double a2, double a3)
{
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Battery temperature reference Value %lf Current value %lf", &v3, 0x16u);
}

void sub_10011D510(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Loaded bar metric dict from defaults %@", &v3, 0xCu);
}

void sub_10011D58C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Saved bar metric dict to defaults %@", buf, 0xCu);
}

void sub_10011D5E4(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Reset _barMetricDict data successfully %@", &v3, 0xCu);
}

void sub_10011D660(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Wrong argument 'stage': %ld passed to recordBARMetric.", &v2, 0xCu);
}

void sub_10011D6EC(NSObject *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "sysctlbyname: %s", &v4, 0xCu);
}

void sub_10011D83C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "key = %@, value = %@", &v3, 0x16u);
}

void sub_10011D8C4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@", &v2, 0xCu);
}

void sub_10011D93C(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *(a1 + 48);
  v4 = *a2;
  v5 = 134218242;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to decrement budget by: %.2lf for %{public}@ ; budget not found", &v5, 0x16u);
}

void sub_10011D9F4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to register for test PPS donation notification: %u", v2, 8u);
}

void sub_10011DA6C(void *a1)
{
  v1 = a1;
  v2 = __error();
  v3 = strerror(*v2);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to get frozen process list: %s", &v4, 0xCu);
}

void sub_10011DBD8(os_log_t log)
{
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to load model path %@", &v1, 0xCu);
}

void sub_10011DC54(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 error];
  v5 = [v4 description];
  [v5 UTF8String];
  sub_100005040();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error while querying BMLibrary.App.InFoucs: %s", v6, 0xCu);
}

void sub_10011DD18()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011DD88()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011DDF8()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011DE68()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011DF3C(void *a1)
{
  v1 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a1 pid]);
  v2 = __error();
  strerror(*v2);
  sub_1000410FC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10011DFF8(void *a1)
{
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a1 pid]);
  sub_1000410FC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10011E0B4(uint64_t *a1, void *a2, double a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = [NSNumber numberWithDouble:a3];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Activity %@ consumed %@", &v7, 0x16u);
}

void sub_10011E188(id *a1)
{
  v6 = [*a1 name];
  sub_1000410FC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10011E21C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Reporting to CA network usage %@", &v2, 0xCu);
}

void sub_10011E538(uint64_t *a1)
{
  v6 = *a1;
  sub_100005084();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10011E5B0(uint64_t *a1)
{
  v6 = *a1;
  sub_100005084();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

uint64_t sub_10011E650()
{
  dlerror();
  v0 = abort_report_np();
  return sub_10011E674(v0);
}

void sub_10011E6CC(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Found at index=%llu", &v2, 0xCu);
}

void sub_10011E79C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 count]);
  v6 = *(a1 + 48);
  v7 = *(a1 + 16);
  sub_100005040();
  sub_10004A408();
  sub_10004A42C(&_mh_execute_header, v8, v9, "Attempting to acquire %@ assertions (%@) for %@", v10, v11, v12, v13, v14);
}

void sub_10011E92C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 count]);
  v6 = *(a1 + 48);
  v7 = *(a1 + 16);
  sub_100005040();
  sub_10004A408();
  sub_10004A42C(&_mh_execute_header, v8, v9, "Invalidating %@ assertions (%@) for %@", v10, v11, v12, v13, v14);
}

void sub_10011EB24()
{
  sub_10004A3E0();
  sub_10004A3F8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10011EB94()
{
  sub_10004A3E0();
  sub_10004A3F8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10011EC04()
{
  sub_10004A3E0();
  sub_10004A3F8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10011ED50(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a1 pid]);
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%@] Process (pid: %@) is not entitled for background GPU", &v5, 0x16u);
}

void sub_10011EFE4()
{
  sub_100005040();
  sub_10004A3F8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10011F10C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 67109378;
  HIDWORD(v3) = a2;
  LOWORD(v4) = 2112;
  *(&v4 + 2) = a1;
  sub_10004A44C(&_mh_execute_header, a2, a3, "Unable to grab RBS Process Handle for pid %d with error: %@", v3, v4, WORD4(v4));
}

void sub_10011F268(void *a1, NSObject *a2)
{
  v3 = [a1 deviceActivityTimeline];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Device activity timeline: %@", &v4, 0xCu);
}

void sub_10011F36C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to update freezer list: %d", v2, 8u);
}

void sub_10011F50C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Reporting %@ to PPS", &v2, 0xCu);
}

void sub_10011F864(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 objectForKeyedSubscript:@"ProcessName"];
  sub_100005040();
  sub_1000050D4(&_mh_execute_header, v5, v6, "Read %@ as an App Resume", v7, v8, v9, v10, v11);
}

void sub_10011F974(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 objectForKeyedSubscript:@"ProcessName"];
  sub_100005040();
  sub_1000050D4(&_mh_execute_header, v5, v6, "Read %@ as an App Foreground Launch", v7, v8, v9, v10, v11);
}

void sub_10011FE0C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "OS Version: Current %@, Previous %@", &v3, 0x16u);
}

void sub_10011FE94(uint64_t *a1)
{
  v6 = *a1;
  sub_100005084();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10011FF50(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Activity %@ is not in activity plist", buf, 0xCu);
}

void sub_10011FFA8(uint64_t a1)
{
  v6 = *(a1 + 48);
  sub_100005084();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100120034(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[%@] Processing progress update: %@", &v3, 0x16u);
}

void sub_1001200BC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[%@] No progress monitoring tracker found!", &v2, 0xCu);
}

void sub_100120134(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = 134218242;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[%p:%@] Dropping progress update (progress is still indeterminate)", &v4, 0x16u);
}

void sub_1001201C0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v10 = [sub_10005C6C8() numberWithInteger:v3];
  sub_10005C688();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_100120270(uint64_t a1)
{
  sub_10005C698(a1);
  v3 = v2;
  sub_10005C6B0();
  v4 = [sub_10005C6A4() descriptionForState:?];
  sub_10005C668();
  sub_1000050F4(&_mh_execute_header, v5, v6, "[%p:%@] Processing step for %@", v7, v8, v9, v10, v11);
}

void sub_10012030C(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = a3;
  v6 = [v4 startDate];
  [v6 timeIntervalSinceNow];
  v8 = [NSNumber numberWithDouble:fabs(v7)];
  v9 = [NSNumber numberWithDouble:*&qword_10020B298];
  v10 = 134218754;
  v11 = a1;
  v12 = 2112;
  v13 = v4;
  v14 = 2112;
  v15 = v8;
  v16 = 2112;
  v17 = v9;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%p:%@] Activity has been in warmup period for %@s (< %@s)", &v10, 0x2Au);
}

void sub_100120424(uint64_t a1)
{
  sub_10005C698(a1);
  v3 = v2;
  [sub_10005C6C8() computeInstantaneousProgressRate];
  v4 = [NSNumber numberWithDouble:?];
  sub_10005C668();
  sub_10005C688();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_1001204D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [sub_10005C6C8() lastUpdateDate];
  [v5 timeIntervalSinceNow];
  v11 = [NSNumber numberWithDouble:?];
  sub_10005C688();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_100120688(uint64_t a1, id *a2, NSObject *a3)
{
  v5 = [*a2 description];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Logging wrong number of allocations %@ when it should be %@", &v6, 0x16u);
}

void sub_100120874(id *a1)
{
  v1 = [*a1 wifiPredictionTimeline];
  sub_100005040();
  sub_100005114(&_mh_execute_header, v2, v3, "Updating 'WiFiQualityPredictions' to %@", v4, v5, v6, v7, v8);
}

void sub_1001208FC(id *a1)
{
  v1 = [*a1 cellPredictionTimeline];
  sub_100005040();
  sub_100005114(&_mh_execute_header, v2, v3, "Updating 'CellQualityPredictions' to %@", v4, v5, v6, v7, v8);
}

void sub_100120A0C(void *a1, NSObject *a2)
{
  v3 = [a1 pluginTimeline];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Plugin Likelihood: %@", &v4, 0xCu);
}

void sub_100120AFC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Incorrect type %@ received for notChargingReason", &v2, 0xCu);
}

void sub_100120B88(uint64_t a1, NSObject *a2)
{
  v2 = *(*(*a1 + 8) + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Plugin Likelihood: %@", &v3, 0xCu);
}

void sub_100120C64(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a1 health]);
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Sibling tracker %@ health: %@", &v5, 0x16u);
}

void sub_100120D34(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Truncating bundleID for serialization: %@ -> %@", &v4, 0x16u);
}

void sub_100120DC0(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to serialize bundleID: %@", &v3, 0xCu);
}

void sub_100120ED0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Writing app kill event: %@", &v2, 0xCu);
}

void sub_100120F48()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_100120FA8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 name];
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_100121048(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 name];
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1001210E8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 name];
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_100121188(uint64_t *a1)
{
  sub_100072B7C(a1, __stack_chk_guard);
  sub_100072B88();
  sub_100005068(&_mh_execute_header, v1, v2, "%{public}@: Invalid Feature codes submitted", v3, v4, v5, v6, v7);
}

void sub_1001211F0(uint64_t *a1)
{
  sub_100072B7C(a1, __stack_chk_guard);
  sub_100072B88();
  sub_100005068(&_mh_execute_header, v1, v2, "%{public}@: Feature codes, if present, must have entries", v3, v4, v5, v6, v7);
}

void sub_100121258(uint64_t *a1)
{
  sub_100072B7C(a1, __stack_chk_guard);
  sub_100072B88();
  sub_100005068(&_mh_execute_header, v1, v2, "%{public}@: Invalid FastPass submission", v3, v4, v5, v6, v7);
}

void sub_1001212C0(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 name];
  v6 = [NSString stringWithUTF8String:a2];
  v7 = 138543874;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  v11 = 2080;
  v12 = "Maintenance";
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}@: Invalid priority value %@, Defaulting to %s", &v7, 0x20u);
}

void sub_1001213B4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 name];
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_100121454(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 name];
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1001214F4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 name];
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_100121594(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 name];
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_100121634(void *a1, void *a2)
{
  v8 = [a1 name];
  [a2 length];
  sub_1000410FC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_1001216FC(void *a1)
{
  v1 = [a1 name];
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1001217AC(void *a1)
{
  v1 = [a1 name];
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100121844(void *a1)
{
  v1 = [a1 name];
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001218DC(uint64_t *a1)
{
  sub_100072B7C(a1, __stack_chk_guard);
  sub_100072B88();
  sub_100005068(&_mh_execute_header, v1, v2, "%{public}@: Feature codes are mandatory for FastPass", v3, v4, v5, v6, v7);
}

void sub_100121944(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 name];
  sub_100005040();
  v8 = 2114;
  v9 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ is an invalid dependency form, must be a dictionary", v7, 0x16u);
}

void sub_100121A00(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 name];
  sub_100005040();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@: Dependencies require a valid identifier", v5, 0xCu);
}

void sub_100121B74()
{
  sub_100005040();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "FastPass service name mismatch for input service name %{public}@ for task %{public}@", v2, 0x16u);
}

void sub_100121BF8(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6[0] = 67109378;
  v6[1] = [a2 intValue];
  v7 = 2114;
  v8 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "FastPass feature code %d not found for task %{public}@", v6, 0x12u);
}

void sub_100121D68(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 error];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to open sink for App.InFocus with error: %@", &v5, 0xCu);
}

void sub_100121F88(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}@ bypasses predictions", &v2, 0xCu);
}

void sub_100122014()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100122084(void *a1)
{
  v2 = a1;
  sub_100005160();
  objc_opt_class();
  sub_100005040();
  v4 = v3;
  sub_100005134();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10012211C(void **a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = [v4 objectForKeyedSubscript:a3];
  sub_100005040();
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Refreshed %@ from Biome persistence", v7, 0xCu);
}

void sub_1001221D0()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100122240()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001222B0(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 40);
  v5 = 136315650;
  sub_100005144();
  sub_10007C7F0(&_mh_execute_header, v3, v4, "%s: Failed to report result consumption on behalf of %@ with error: %@", v5);
}

void sub_10012232C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_100005160() description];
  sub_100027858();
  sub_100005134();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_1001223D0(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 40);
  v5 = 136315650;
  sub_100005144();
  sub_10007C7F0(&_mh_execute_header, v3, v4, "%s: Failed to report result production on behalf of %@ with error: %@", v5);
}

void sub_10012244C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_100005160() description];
  sub_100027858();
  sub_100005134();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_1001224F0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_100005160() description];
  sub_100027858();
  sub_100005134();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_100122594()
{
  sub_100027858();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100122610()
{
  sub_100027858();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10012268C(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 136315650;
  v5 = "[_DASActivityDependencyManager areDependenciesSatisfiedFor:]_block_invoke";
  v6 = 2112;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s: %@ has unsatisfied activity completion dependencies: %@", &v4, 0x20u);
}

void sub_10012289C(void *a1)
{
  v1 = a1;
  v2 = __error();
  strerror(*v2);
  sub_100005040();
  sub_10002441C(&_mh_execute_header, v3, v4, "Failed to obtain snapshot: %s", v5, v6, v7, v8, v9);
}

void sub_100122924(void *a1)
{
  v1 = a1;
  v2 = __error();
  strerror(*v2);
  sub_100005040();
  sub_10002441C(&_mh_execute_header, v3, v4, "Failed to obtain size for snapshot: %s", v5, v6, v7, v8, v9);
}

void sub_100122E38(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = [*a2 identifier];
  sub_10000516C();
  sub_10008700C(&_mh_execute_header, v4, v5, "Can't start activity with no %@ for activity %@", v6, v7, v8, v9, v10);
}

void sub_100122ECC(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = [*a2 identifier];
  sub_10000516C();
  sub_10008700C(&_mh_execute_header, v4, v5, "Can't end activity with no %@ for activity %@", v6, v7, v8, v9, v10);
}

void sub_100123050()
{
  sub_10008B200();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100123110()
{
  sub_10008B200();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10012318C(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  strerror(a3);
  sub_10008B1E8();
  sub_10008B1D8();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100123228(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  strerror(a3);
  sub_10008B1E8();
  sub_10008B1D8();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10012332C(uint64_t a1, void *a2)
{
  v2 = a2;
  v8 = *__error();
  sub_10008B1D8();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x18u);
}

void sub_100123E24(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10008E724(a1, a2, a3, 5.778e-34);
  _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Failed to expire task: %@ with error: %@", v4, 0x16u);
}

void sub_100123E7C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v11 = [a3 error];
  sub_100005134();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_100123FA8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 processName];
  sub_100005040();
  sub_100005134();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_100124044(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 processName];
  sub_100005040();
  sub_100005134();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1001240E0()
{
  sub_100005040();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error processing signposts: %@, %@", v2, 0x16u);
}

void sub_100124390()
{
  sub_100005040();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100124400()
{
  sub_100005040();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100124470(uint64_t a1, uint64_t *a2)
{
  sub_100005184(a1, a2, __stack_chk_guard);
  sub_100092C68();
  sub_10008B1B8(&_mh_execute_header, v2, v3, "Error reading progress info from PPS: %@ for %@");
}

void sub_1001244D8(uint64_t a1, uint64_t *a2)
{
  sub_100005184(a1, a2, __stack_chk_guard);
  sub_100092C68();
  sub_10008B1B8(&_mh_execute_header, v2, v3, "Error determining latest reporting for progress: %@ for %@");
}

void sub_1001245B4(uint64_t a1, uint64_t *a2)
{
  sub_100005184(a1, a2, __stack_chk_guard);
  sub_100092C68();
  sub_10008B1B8(&_mh_execute_header, v2, v3, "Error reading throughput info from PPS: %@ for %@");
}

void sub_10012461C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to gather application name from bundleIdentifier: %@", &v2, 0xCu);
}

void sub_1001246A8(void *a1)
{
  v2 = a1;
  v3 = [sub_100005160() description];
  sub_100005040();
  sub_1000050D4(&_mh_execute_header, v4, v5, "Loaded device condition timelines: %@", v6, v7, v8, v9, v10);
}

void sub_1001247B0()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001249D0()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100124A40(uint64_t *a1)
{
  v6 = *a1;
  sub_100005084();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100124AB8(uint64_t *a1)
{
  v6 = *a1;
  sub_100005084();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100124B30()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100124BA0()
{
  sub_10004A420();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100124C10()
{
  sub_10004A420();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100124C80()
{
  sub_10004A420();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100124CF0()
{
  sub_10004A420();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100124D60()
{
  sub_10004A420();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100124DD0(void *a1)
{
  v2 = a1;
  v3 = [sub_100005160() identifier];
  sub_100005040();
  sub_1000050D4(&_mh_execute_header, v4, v5, "Not found any profile for activity %@. Consider it indeed non-intensive", v6, v7, v8, v9, v10);
}

void sub_100124E60(void *a1)
{
  v2 = a1;
  v3 = [sub_100005160() identifier];
  sub_100005040();
  sub_1000050D4(&_mh_execute_header, v4, v5, "Not found any profile for activity %@. Consider it not always very short", v6, v7, v8, v9, v10);
}

void sub_100124EF0(void *a1)
{
  v2 = a1;
  v3 = [sub_100005160() identifier];
  sub_100005040();
  sub_1000050D4(&_mh_execute_header, v4, v5, "Not found any profile for activity %@. Consider it may cause thermal pressure levelup", v6, v7, v8, v9, v10);
}

void sub_100125050(int a1, uint64_t a2, os_log_t log)
{
  v3 = *(a2 + 40);
  v4 = 138412546;
  v5 = v3;
  v6 = 2048;
  v7 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "ABC case rejected for activities %@ with reason %lld", &v4, 0x16u);
}

void sub_1001250E0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a2 + 40);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Successfully reported ABC case with session ID %@ for activities %@", &v4, 0x16u);
}

void sub_10012516C(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Failed to expire task:%@ with error:%@", buf, 0x16u);
}

void sub_100125288()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001252C4()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100125300()
{
  sub_100005090();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100125430(void *a1, uint8_t *a2, void *a3, NSObject *a4)
{
  *a2 = 138412290;
  *a3 = a1;
  sub_10009E984(&_mh_execute_header, a4, a3, "experimentsToWrite: Skipping stream %@", a2);
}

void sub_100125484(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100005040();
  sub_1000542B0(&_mh_execute_header, v3, v4, "Adding %@ as stream for %@");
}

void sub_1001254FC()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100125538()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100125574()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100125630(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10009E984(&_mh_execute_header, a3, a3, "defaults updated to %@", a2);
}

void sub_100125680()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001256BC()
{
  sub_100005090();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100125764()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001257A0()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100125810()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100125880(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 firstObject];
  v5 = [v4 startDate];
  sub_100005040();
  sub_10009E984(&_mh_execute_header, v3, v6, "writeExperiment: Data not old enough to be written. Oldest event logged at %@", v7);
}

void sub_100125934()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001259E4()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100125A54()
{
  sub_10009E99C();
  v2 = v1;
  v3 = [v0 name];
  sub_10009E970();
  sub_10000519C();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100125B00()
{
  sub_10009E99C();
  v2 = v1;
  v3 = [v0 name];
  sub_10009E970();
  sub_10000519C();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100125BAC()
{
  sub_10009E99C();
  v2 = v1;
  v3 = [v0 name];
  sub_10009E970();
  sub_10000519C();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100125C58()
{
  sub_10009E99C();
  v2 = v1;
  v3 = [v0 name];
  sub_10009E970();
  sub_10000519C();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100125D04()
{
  sub_10009E99C();
  v2 = v1;
  v3 = [v0 name];
  sub_10009E970();
  sub_10000519C();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100125DB0(void *a1, void *a2, uint64_t a3)
{
  sub_10008E724(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Ultimately wrote %@ events for %@", v5, 0x16u);
}

void sub_100125E10()
{
  sub_100005040();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100125E80(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10008E724(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "writeStream: %@ : Skipping query because JSON write failed with exception: %@", v4, 0x16u);
}

void sub_100125ED8(void *a1, void *a2)
{
  v3 = a1;
  [a2 count];
  sub_100005040();
  sub_10000519C();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10012606C()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001260A8()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001260E4()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100126120()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10012615C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  sub_100005040();
  sub_10009E984(&_mh_execute_header, v3, v5, "Submitting through Diagnostic Pipeline - failed with error %@", v6);
}

void sub_1001261F8()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100126420(uint64_t a1)
{
  v6 = *(a1 + 48);
  v7 = *(*(*(a1 + 56) + 8) + 24);
  sub_100005084();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100126518()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100126554()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001265C4()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100126600()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100126670()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001266AC()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001266E8()
{
  sub_100005040();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100126758()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001267C8()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001268B0()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100126928(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "notify_get_state() failed with error %u", v2, 8u);
}

void sub_1001269E4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Evaluating %@ for mode %@", &v3, 0x16u);
}

void sub_100126B40(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 134218496;
  v5 = a2;
  v6 = 2048;
  v7 = v3;
  v8 = 2048;
  v9 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Current temp %ld, recent temp %ld, change %ld", &v4, 0x20u);
}

void sub_100126CBC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BAR WiFi Only => %u", v2, 8u);
}

void sub_100126F48(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 error];
  sub_100005040();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error obtaining recently launched apps: %@", v5, 0xCu);
}

void sub_100126FEC(os_log_t log)
{
  v1 = 138412290;
  v2 = @"We tried to launch Buddy for Background App Refresh. Please file a bug!";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@", &v1, 0xCu);
}

void sub_10012721C()
{
  sub_1000A8E48();
  v2 = v1;
  v3 = [sub_1000A8E3C() name];
  sub_1000A8E24();
  sub_1000051AC(&_mh_execute_header, v4, v5, "Activity %{public}@: app %{public}@ has invalid state", v6, v7, v8, v9, v10);
}

void sub_1001272B4()
{
  sub_1000A8E48();
  v2 = v1;
  v3 = [sub_1000A8E3C() name];
  sub_1000A8E24();
  sub_1000051AC(&_mh_execute_header, v4, v5, "Activity %{public}@: app %{public}@ is not installed", v6, v7, v8, v9, v10);
}

void sub_10012734C()
{
  sub_1000A8E48();
  v2 = v1;
  v3 = [sub_1000A8E3C() name];
  sub_1000A8E24();
  sub_1000051AC(&_mh_execute_header, v4, v5, "Activity %{public}@ background launch not allowed for app %{public}@", v6, v7, v8, v9, v10);
}

void sub_1001273E4()
{
  sub_1000A8E48();
  v2 = v1;
  v3 = [sub_1000A8E3C() name];
  sub_1000A8E24();
  sub_1000051AC(&_mh_execute_header, v4, v5, "No relevant background execution modes found for activity %{public}@ app %{public}@", v6, v7, v8, v9, v10);
}

void sub_10012747C()
{
  sub_1000A8E48();
  v2 = v1;
  v3 = [sub_1000A8E3C() name];
  sub_1000A8E24();
  sub_1000051AC(&_mh_execute_header, v4, v5, "No permitted identifiers found for activity %{public}@ app %{public}@", v6, v7, v8, v9, v10);
}

void sub_100127514(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Fetched %@", &v2, 0xCu);
}

void sub_10012776C(double a1)
{
  v1 = [NSNumber numberWithDouble:a1 / 3600.0];
  sub_100005114(&_mh_execute_header, v2, v3, "Logging remote widget duration to CA %@", v4, v5, v6, v7, 2u);
}

void sub_100127808(double a1)
{
  v1 = [NSNumber numberWithDouble:a1 / 3600.0];
  sub_100005114(&_mh_execute_header, v2, v3, "Logging remote widget actual duration to CA %@", v4, v5, v6, v7, 2u);
}

void sub_1001278A4(uint64_t *a1)
{
  v6 = *a1;
  sub_10001C0FC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10012791C(uint64_t *a1)
{
  v6 = *a1;
  sub_10001C0FC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001279D4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Missing service name for %@", &v5, 0xCu);
}

void sub_100127A90()
{
  sub_100005090();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100127B3C()
{
  sub_100005040();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100127BAC()
{
  sub_100005040();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100127C1C()
{
  sub_100005040();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100127C8C(uint64_t a1)
{
  v6 = *(a1 + 40);
  sub_10001C0FC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100127D04(void *a1)
{
  v2 = a1;
  v3 = [sub_1000A8E3C() scheduler_activity];
  sub_100005040();
  sub_10005C688();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_100127DC0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_1000A8E3C() name];
  sub_100005040();
  sub_10005C688();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);
}

void sub_100127E70(void *a1)
{
  v2 = a1;
  v3 = [sub_1000A8E3C() name];
  sub_100005040();
  sub_10005C688();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_100127F20(void *a1, void *a2, uint64_t a3)
{
  v6 = a1;
  [sub_1000A8E3C() state];
  [a2 pid];
  v12 = *(*(*a3 + 8) + 40);
  sub_10005C688();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x26u);
}

void sub_100127FF8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [sub_1000A8E3C() scheduler_activity];
  v7 = *(*(*a3 + 8) + 40);
  sub_100005040();
  sub_10005C688();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_1001280B4(void *a1)
{
  v2 = a1;
  sub_1000B2F9C();
  sub_1000B2FB4();
  sub_1000B2F58();
  sub_1000B2F7C(&_mh_execute_header, v3, v4, "Ack for suspension received in invalid state %ld from client (PID %d) for %{public}@", v5, v6, v7, v8, v9);
}

void sub_100128140(void *a1)
{
  v2 = a1;
  sub_1000B2F9C();
  sub_1000B2FB4();
  sub_1000B2F58();
  sub_1000B2F7C(&_mh_execute_header, v3, v4, "Request for client-led expiration received in invalid state %ld from client (PID %d) for %{public}@", v5, v6, v7, v8, v9);
}

void sub_1001281CC()
{
  sub_100005090();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100128278()
{
  sub_100005040();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001282E8()
{
  sub_100005040();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100128358()
{
  sub_100005090();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100128394(void *a1)
{
  v2 = a1;
  sub_1000B2F9C();
  sub_1000B2FB4();
  sub_1000B2F58();
  sub_1000B2F7C(&_mh_execute_header, v3, v4, "updateTaskRequest received in invalid state %ld from client (PID %d) for %{public}@", v5, v6, v7, v8, v9);
}

void sub_100128420()
{
  sub_100005090();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001284CC(void *a1)
{
  v2 = a1;
  sub_1000B2F9C();
  sub_1000B2FB4();
  sub_1000B2F58();
  sub_1000B2F7C(&_mh_execute_header, v3, v4, "Completion received in invalid state %ld from client (PID %d) for %{public}@", v5, v6, v7, v8, v9);
}

void sub_100128558()
{
  sub_100005090();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100128594(void *a1)
{
  v2 = a1;
  sub_1000B2F9C();
  sub_1000B2FB4();
  sub_1000B2F58();
  sub_1000B2F7C(&_mh_execute_header, v3, v4, "Resume scheduling received in invalid state %ld from client (PID %d) for %{public}@", v5, v6, v7, v8, v9);
}

void sub_100128620()
{
  sub_100005090();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10012865C(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "SUTelemetryTask: In SmartPowerNap: %d", v2, 8u);
}

void sub_1001288AC(void *a1, void *a2)
{
  v3 = a1;
  [a2 count];
  sub_1000050D4(&_mh_execute_header, v4, v5, "SUTelemetryTask: Reporting %lu blockers to CoreAnalytics.", v6, v7, v8, v9, 0);
}

void sub_1001289D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  v3 = a2;
  [v2 count];
  sub_1000050D4(&_mh_execute_header, v4, v5, "SUTelemetryTask: Reporting %lu persistentBlockers to CoreAnalytics.", v6, v7, v8, v9, 0);
}

void sub_100128A94(uint64_t *a1)
{
  v6 = *a1;
  sub_10001C0FC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100128B8C()
{
  sub_100005040();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "[%@] Updating progress to %@", v2, 0x16u);
}

void sub_100128CF8()
{
  sub_100005040();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100128D68(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to update scores for error: %d", v2, 8u);
}

void sub_100128DE0(void *a1, void *a2)
{
  v3 = a1;
  v9 = [a2 error];
  sub_100005134();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100128E80(void *a1, void *a2)
{
  v3 = a2;
  [a1 type];
  sub_100005134();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_100128F20(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@ is missing the event body!", &v2, 0xCu);
}

void sub_100128F98(uint64_t a1, uint64_t a2)
{
  sub_1000BAF34(a1, a2, __stack_chk_guard);
  v4 = 136315650;
  sub_1000BAF18();
  sub_10007C7F0(&_mh_execute_header, v2, v3, "%s: Unable to register producing activity for %@ with error: %@", v4);
}

void sub_10012900C(uint64_t a1, uint64_t a2)
{
  sub_1000BAF34(a1, a2, __stack_chk_guard);
  v4 = 136315650;
  sub_1000BAF18();
  sub_10007C7F0(&_mh_execute_header, v2, v3, "%s: Unable to deregister producing activity for %@ with error: %@", v4);
}

void sub_100129080(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 40);
  v5 = 136315650;
  sub_100005144();
  sub_10007C7F0(&_mh_execute_header, v3, v4, "%s: Unable to report %@ result consumption with error: %@", v5);
}

void sub_1001290FC(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 40);
  v5 = 136315650;
  sub_100005144();
  sub_10007C7F0(&_mh_execute_header, v3, v4, "%s: Unable to report %@ result production with error: %@", v5);
}

void sub_100129178(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 8);
  v3 = 136315394;
  v4 = "[_DASActivityResultDependencyGroup resetAccumulation]_block_invoke";
  v5 = 2112;
  v6 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s: Result dependencies have been reset for %@", &v3, 0x16u);
}

void sub_10012920C()
{
  sub_100005040();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Trial: Failed to call sysctl %@ with %d", v2, 0x12u);
}

void sub_100129304()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100129374()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001293E4()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100129454()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100129490()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100129500()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10012953C(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = a1;
  v6 = [NSNumber numberWithUnsignedInt:a2];
  v7 = [NSNumber numberWithUnsignedInt:*a3];
  v8 = [NSNumber numberWithInt:*a3 - a2];
  v11 = 138412802;
  v12 = v6;
  sub_1000BF70C();
  v13 = v7;
  v14 = v9;
  v15 = v10;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Policy footprint: %@, Capacity constraint: %@, Unused capacity: %@", &v11, 0x20u);
}

void sub_100129648()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100129720()
{
  sub_100005040();
  sub_1000BF70C();
  sub_1000542B0(&_mh_execute_header, v0, v1, "Acquired assertion %@ for process %@.");
}

void sub_100129790(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [NSNumber numberWithUnsignedInteger:a2];
  sub_100005040();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Number of active dock assertions: %@", v5, 0xCu);
}

void sub_10012984C()
{
  sub_100005040();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001298BC()
{
  sub_100005040();
  sub_1000BF70C();
  sub_1000542B0(&_mh_execute_header, v0, v1, "Invalidating assertion %@ for process %@.");
}

void sub_10012992C()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100129968(void *a1)
{
  v2 = a1;
  v3 = [sub_1000BF6FC() numberWithInt:?];
  sub_100005040();
  sub_1000BF6DC(&_mh_execute_header, v4, v5, "Could not get processIdentifier for process with pid %@.", v6, v7, v8, v9, v10);
}

void sub_100129A08(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [NSNumber numberWithInt:a2];
  sub_100005040();
  sub_1000BF70C();
  v8 = a3;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Could not get handle for process with pid %@. %@", v7, 0x16u);
}

void sub_100129ACC()
{
  sub_100005090();
  sub_100005084();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100129B08(void *a1)
{
  v2 = a1;
  v3 = [sub_1000BF6FC() numberWithInt:?];
  sub_100005040();
  sub_1000BF6DC(&_mh_execute_header, v4, v5, "Warning: Could not get ledger info for pid %@.", v6, v7, v8, v9, v10);
}

void sub_100129BA8(void *a1)
{
  v2 = a1;
  v3 = [sub_1000BF6FC() numberWithInt:?];
  sub_100005040();
  sub_1000BF6DC(&_mh_execute_header, v4, v5, "Warning: Could not get ledger entry info for pid %@.", v6, v7, v8, v9, v10);
}

void sub_100129C48(void *a1, int a2)
{
  v3 = a1;
  v4 = *__error();
  v5 = __error();
  v6 = strerror(*v5);
  v7[0] = 67109634;
  v7[1] = a2;
  v8 = 1024;
  v9 = v4;
  v10 = 2080;
  v11 = v6;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error: sysctlbyname(hw.memsize) failed (rc: %d, errno: %d, %s)", v7, 0x18u);
}

void sub_100129D10(void *a1, float a2)
{
  v3 = a1;
  *&v4 = a2;
  v5 = [NSNumber numberWithFloat:v4];
  sub_100005040();
  sub_1000050D4(&_mh_execute_header, v6, v7, "Overriding capacity with percentage provided via defaults: %@ percent", v8, v9, v10, v11, v12);
}

void sub_100129DB8(void *a1, float a2)
{
  v3 = a1;
  *&v4 = a2;
  v5 = [NSNumber numberWithFloat:v4];
  sub_100005040();
  sub_1000050D4(&_mh_execute_header, v6, v7, "Using default capacity percentage: %@ percent", v8, v9, v10, v11, v12);
}

void sub_100129E60(void *a1)
{
  v1 = a1;
  v2 = [NSNumber numberWithFloat:0.0];
  sub_100005040();
  sub_1000050D4(&_mh_execute_header, v3, v4, "Purging dock: %@ percent", v5, v6, v7, v8, v9);
}

void sub_100129EFC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Current Timeline Value: %@", &v2, 0xCu);
}

void sub_100129F74(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Next Timeline Value: %@", &v2, 0xCu);
}

void sub_10012A030(void *a1, void *a2)
{
  v3 = a2;
  [a1 type];
  sub_100005134();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_10012A0D0(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 16);
  v3 = 136315394;
  v4 = "[_DASActivityCompletionDependencyGroup resetAccumulation]_block_invoke";
  v5 = 2112;
  v6 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s: Resetting completion dependencies for %@", &v3, 0x16u);
}

void sub_10012A178(void *a1)
{
  v1 = a1;
  v2 = __error();
  strerror(*v2);
  sub_10002441C(&_mh_execute_header, v3, v4, "Failed to obtain snapshot: %s", v5, v6, v7, v8, 2u);
}

void sub_10012A204(void *a1)
{
  v1 = a1;
  v2 = __error();
  strerror(*v2);
  sub_10002441C(&_mh_execute_header, v3, v4, "Failed to obtain size for snapshot: %s", v5, v6, v7, v8, 2u);
}

void sub_10012A2CC(void *a1)
{
  v2 = a1;
  v3 = [sub_100005160() error];
  sub_100005040();
  sub_1000C7724(&_mh_execute_header, v4, v5, "Failed to open sink with error: %@", v6, v7, v8, v9, v10);
}

void sub_10012A3C4()
{
  sub_100005040();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10012A434(void **a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = [v4 assertion];
  sub_100005040();
  sub_1000BF70C();
  v8 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error invalidating assertion %@: %@", v7, 0x16u);
}

void sub_10012A4EC(uint64_t a1)
{
  v1 = *(a1 + 64);
  sub_100072B88();
  sub_10000504C(&_mh_execute_header, v2, v3, "Interested activities %@", v4, v5, v6, v7, v8);
}

void sub_10012A598(uint64_t *a1)
{
  sub_100072B7C(a1, __stack_chk_guard);
  sub_100072B88();
  sub_10000504C(&_mh_execute_header, v1, v2, "%{public}@", v3, v4, v5, v6, v7);
}

void sub_10012A600(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_100072B88();
  sub_1000BF70C();
  v6 = v3;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Running completion for app: %@ for activities: %@", v5, 0x16u);
}

void sub_10012A680(void *a1)
{
  v1 = [a1 extensionName];
  sub_100005040();
  sub_10000519C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012A70C(uint64_t a1)
{
  v1 = [*(a1 + 40) extensionName];
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012A79C(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 assertion];
  v8 = [v7 pid];
  *a1 = 134217984;
  *a3 = v8;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Failed to drop assertion for app with pid: %ld", a1, 0xCu);
}

void sub_10012A81C(void *a1)
{
  v1 = [a1 name];
  sub_100005040();
  sub_10000519C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012A8A8(uint64_t *a1)
{
  sub_100072B7C(a1, __stack_chk_guard);
  sub_100072B88();
  sub_10001C0FC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10012A918(void *a1, uint64_t a2)
{
  sub_1000F2730(a1, a2, 5.7779e-34);
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Clear %@ to Prerunning", v4, 0xCu);
}

void sub_10012A96C(void *a1)
{
  v1 = [a1 name];
  sub_100005040();
  sub_10000519C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012AAC8(void *a1)
{
  v1 = [a1 debugDescription];
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012AB54()
{
  sub_1000F273C();
  v2 = [v1 name];
  v3 = [v0 debugDescription];
  sub_1000BF70C();
  sub_1000410FC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10012AC08(void *a1, uint8_t *a2, void *a3, NSObject *a4)
{
  *a2 = 138412290;
  *a3 = a1;
  sub_1000F2718(&_mh_execute_header, a4, a3, "NO Internal Group Fround for %@", a2);
}

void sub_10012ACC4()
{
  sub_100005040();
  sub_1000BF70C();
  sub_10008B1B8(&_mh_execute_header, v0, v1, "Error invalidating assertion for activity %@: %@");
}

void sub_10012AD34(id *a1)
{
  v1 = [*a1 identifier];
  v2 = [NSNumber numberWithDouble:0.0];
  sub_1000BF70C();
  sub_10000519C();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10012ADF4()
{
  sub_1000F273C();
  v1 = [NSNumber numberWithDouble:?];
  v2 = [*v0 debugDescription];
  sub_1000BF70C();
  sub_1000410FC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10012AEB0()
{
  sub_1000F273C();
  [*v1 cpuTimeConsumed];
  [*v0 cpuCycleConsumed];
  [*v0 diskIOConsumed];
  [*v0 billedEnergy];
  [*v0 dataConsumed];
  [*v0 startedOnBattery];
  [*v0 startedInIdle];
  sub_1000F26D0();
  sub_10000519C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x52u);
}

void sub_10012AFC8()
{
  sub_100005040();
  sub_1000BF70C();
  v3 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Recording %@ transition to %@ state to dastestd task execution registry", v2, 0x16u);
}

void sub_10012B048(id *a1)
{
  v1 = [*a1 name];
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012B0D8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1000F2730(a1, a2, 5.8381e-34);
  sub_1000F2718(&_mh_execute_header, v6, v6, "Not Supported: High-priority silent push. (App=%{public}@)", v7);
}

void sub_10012B12C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1000F2730(a1, a2, 5.7779e-34);
  sub_1000F2718(&_mh_execute_header, v6, v6, "Identical launch request already scheduled for %@", v7);
}

void sub_10012B180(void *a1, uint64_t a2)
{
  sub_1000F2730(a1, a2, 5.7779e-34);
  sub_1000F2718(&_mh_execute_header, v3, v3, "Internal Group is Empty for %@", v4);
}

void sub_10012B234(void *a1)
{
  v1 = [a1 identifier];
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10012B2D8(void *a1)
{
  v1 = [a1 identifier];
  sub_100005040();
  sub_1000BF70C();
  sub_1000410FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10012B378(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Scheduling connection timeout for pid %d...", v2, 8u);
}

void sub_10012B3F0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Checking whether the app with pid %d has connected...", v3, 8u);
}

void sub_10012B46C(int *a1)
{
  v6 = *a1;
  sub_10001C0FC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10012B4E4(void *a1)
{
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10012B590(void *a1)
{
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10012B63C(uint64_t *a1)
{
  sub_100072B7C(a1, __stack_chk_guard);
  sub_100072B88();
  sub_10001C0FC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10012B6AC()
{
  sub_100005040();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10012B71C()
{
  sub_100005040();
  sub_10001C0FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10012B78C(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012B820(void *a1)
{
  v1 = [a1 name];
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012B9C4(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012BA50(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012BAE0(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012BB70(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012BC00(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012BC90(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012BD20(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012BDB0(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012BEB4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Client process is the root process: %@", buf, 0xCu);
}

void sub_10012BF0C(void *a1, uint64_t a2)
{
  v3 = [a1 name];
  [*(a2 + 32) processIdentifier];
  sub_1000FA370();
  sub_1000410FC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_10012BFB0(void *a1)
{
  v1 = [a1 name];
  sub_100005040();
  sub_1000410FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012C040(void *a1, void *a2)
{
  v4 = [a1 identifier];
  v5 = [a2 rootBundleIdentifier];
  v6 = [a1 clientProvidedIdentifier];
  sub_1000FA388();
  sub_1000FA39C(&_mh_execute_header, v7, v8, "[%{public}@] Does not have the correct prefix (expected %{public}@, found %{public}@)", v9, v10, v11, v12, v13);
}

void sub_10012C10C(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 name];
  v6 = [a2 rootBundleIdentifier];
  v7 = [a2 bundleIdentifier];
  v10 = 138543874;
  v11 = v5;
  sub_1000BF70C();
  v12 = v6;
  v13 = v8;
  v14 = v9;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%{public}@: Ensuring main application %@ is foregrounded (submitting bundle: %@)", &v10, 0x20u);
}

void sub_10012C1EC(void *a1, void *a2)
{
  v3 = [a1 bundleIdentifier];
  v4 = [a2 clientProvidedIdentifier];
  sub_1000FA388();
  sub_1000FA39C(&_mh_execute_header, v5, v6, "%{public}@ using %{public}@ prefix for task %{public}@ that is only reserved for Apple apps", v7, v8, v9, v10, v11);
}

void sub_10012C2A8()
{
  sub_100005040();
  sub_1000BF70C();
  sub_10008B1B8(&_mh_execute_header, v0, v1, "Could not validate request %@ due to error %@");
}

void sub_10012C318(uint64_t a1, void *a2)
{
  v2 = [a2 bundleIdentifier];
  sub_1000BF70C();
  sub_10000FC78(&_mh_execute_header, v3, v4, "Submitting task %@: %@", v5, v6, v7, v8, 2u);
}

void sub_10012C3BC()
{
  sub_100005040();
  sub_1000BF70C();
  sub_10008B1B8(&_mh_execute_header, v0, v1, "Failed to submit %@ with error: %@");
}

void sub_10012C42C(void *a1, id *a2)
{
  v3 = [a1 name];
  [*a2 processIdentifier];
  sub_1000FA370();
  sub_1000410FC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_10012C544(void *a1)
{
  v1 = [a1 progress];
  sub_100005040();
  sub_1000BF70C();
  sub_10000FC78(&_mh_execute_header, v2, v3, "Updating progress %@ for task request %@", v4, v5, v6, v7, v8);
}

void sub_10012C650(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "getInfoForKey: %@ %@", &v3, 0x16u);
}

void sub_10012C6D8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Active app: %@", &v2, 0xCu);
}

void sub_10012C750(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error determining whether %{public}@ supports EN: %@", &v4, 0x16u);
}

void sub_10012C7DC(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "No submission date; using recent past.", buf, 2u);
}

void sub_10012C81C(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = @"com.apple.appResume.signpostReader";
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to expire task:%@ with error:%@", &v2, 0x16u);
}

void sub_10012C8BC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Registered for disk space monitoring: %@", &v2, 0xCu);
}

void sub_10012C934(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Unregistered for disk space monitoring: %@", &v2, 0xCu);
}

void sub_10012C9F0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 objectForKeyedSubscript:@"CACHE_DELETE_ERROR"];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to get purgable space: %@", &v5, 0xCu);
}

void sub_10012CAE4(int a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "CACHE_DELETE_PURGEABLE_UPDATED";
  v4 = 1024;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Received %s notification, token: %d", &v2, 0x12u);
}

void sub_10012CBF8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 description];
  sub_100005040();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unable to setup network evaluation for %@", v5, 0xCu);
}

void sub_10012CC9C(id *a1, NSObject *a2)
{
  v3 = [*a1 description];
  sub_100005040();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Network evaluation callback is not currently registered for %@!", v4, 0xCu);
}

void sub_10012CF64(void *a1)
{
  v2 = a1;
  v3 = [sub_100005160() name];
  sub_100005040();
  sub_1000050D4(&_mh_execute_header, v4, v5, "Computing conditions penalty for activity name: %@", v6, v7, v8, v9, v10);
}

void sub_10012CFF4(void *a1)
{
  v2 = a1;
  v3 = [sub_100005160() name];
  sub_100005040();
  sub_1000050D4(&_mh_execute_header, v4, v5, "Computing contention penalty for activity name: %@", v6, v7, v8, v9, v10);
}

void sub_10012D084(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Depleting opportunity window", buf, 2u);
}

void sub_10012D14C(void *a1)
{
  v2 = a1;
  v3 = [sub_100005160() name];
  sub_100005040();
  sub_1000C7724(&_mh_execute_header, v4, v5, "No relevant eligibility events found for task %@.", v6, v7, v8, v9, v10);
}

void sub_10012D1DC(void *a1)
{
  v2 = a1;
  v3 = [sub_100005160() name];
  sub_100005040();
  sub_1000C7724(&_mh_execute_header, v4, v5, "Unable to compute eligible runtime for task %@. No NetworkQuality events found in this timeframe.", v6, v7, v8, v9, v10);
}

void sub_10012D26C(void *a1)
{
  v2 = a1;
  v3 = [sub_100005160() name];
  sub_100005040();
  sub_1000C7724(&_mh_execute_header, v4, v5, "Unable to compute eligible runtime for task %@. No UserActivityStatus events found in this timeframe.", v6, v7, v8, v9, v10);
}

void sub_10012D2FC(void *a1)
{
  v2 = a1;
  v3 = [sub_100005160() name];
  sub_100005040();
  sub_1000C7724(&_mh_execute_header, v4, v5, "Unable to compute eligible runtime for task %@. No IsPluggedIn events found in this timeframe.", v6, v7, v8, v9, v10);
}

void sub_10012D3A0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@ encountered an error while running, adding to errored activities", &v2, 0xCu);
}

void sub_10012D440(NSObject *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Failed to obtain process name: %s", &v4, 0xCu);
}

void sub_10012D738(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 currentActivity];
  sub_100005040();
  v7 = 2112;
  v8 = a2;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Request for plugin to start activity while already running. Current: %@. New: %@", v6, 0x16u);
}

void sub_10012D84C(void *a1, NSObject *a2)
{
  v3 = [a1 sessionID];
  sub_100005040();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to get context for session with ID %@", v4, 0xCu);
}

void sub_10012D908(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error getting remote context %@", &v2, 0xCu);
}

void sub_10012D980(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed at recording trigger %@ to PowerLog", &v2, 0xCu);
}

void sub_10012D9F8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Logging %@", &v2, 0xCu);
}

void sub_10012DA70(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = @"DASActivityLifecycle";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@: %@", &v2, 0x16u);
}

void sub_10012DB6C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "DASContext: Biome couldn't fetch remote devices with error: %@", &v2, 0xCu);
}

void sub_10012DBE4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10008E724(a1, a2, a3, 5.778e-34);
  _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "DASContext: Failed to expire task: %@ with error: %@", v4, 0x16u);
}

void sub_10012DC74(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error loading dayToDurationsList data: %@", &v2, 0xCu);
}

void sub_10012DCEC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error archiving day to durations data: %@", &v2, 0xCu);
}