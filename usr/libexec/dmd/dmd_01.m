void sub_100046600(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    [*(a1 + 32) endOperationWithError:a3];
  }

  else
  {
    v5 = objc_opt_new();
    [v5 setPayloadDescriptions:v6];
    [*(a1 + 32) endOperationWithResultObject:v5];
  }
}

void sub_100046E90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a3)
  {
    v11 = NSUnderlyingErrorKey;
    v12 = a3;
    v7 = a3;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = DMFErrorWithCodeAndUserInfo();
    [v6 endOperationWithError:v9];
  }

  else
  {
    v10 = 0;
    v8 = [[DMFFetchLocationResultObject alloc] initWithLocation:v5];
    [v6 endOperationWithResultObject:v8];
  }
}

void sub_100047110(uint64_t a1)
{
  v2 = [*(a1 + 32) nonStoreBooks];
  v3 = [*(a1 + 32) storeBooks];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  [*(a1 + 32) moveTransientStatesForward];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = [DMFBook alloc];
        v13 = [v12 initWithBook:{v11, v16}];
        [v5 addObject:v13];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *(a1 + 40);
  v15 = [[DMFFetchManagedBooksResultObject alloc] initWithBooks:v5];
  [v14 endOperationWithResultObject:v15];
}

id sub_100047440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 endOperationWithError:?];
  }

  else
  {
    return [v3 endOperationWithResultObject:a2];
  }
}

void sub_100047E24(uint64_t a1)
{
  v2 = DMFAppLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) bundleIdentifier];
    v4 = [*(a1 + 40) personaIdentifier];
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Associating app %{public}@ with persona %{public}@ in UserManagement", &v5, 0x16u);
  }
}

void sub_100048140(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFAppLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000845A0(a1);
    }
  }
}

void sub_10004828C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFAppLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008460C(a1);
    }
  }
}

void sub_10004830C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_1000492C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 endOperationWithError:?];
  }

  else
  {
    return [v3 endOperationWithResultObject:a2];
  }
}

void sub_10004991C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [*(a1 + 32) endOperationWithError:a3];
  }

  else
  {
    v7 = [v5 bundleIdentifier];

    v8 = *(a1 + 32);
    if (v7)
    {
      v9 = [v6 bundleIdentifier];
      v10 = [*(a1 + 40) personaIdentifier];
      v11 = [v8 appCoordinatorExistsForBundleIdentifier:v9 persona:v10];

      if (!v11)
      {
        [*(a1 + 32) setMetadata:v6];
        [*(a1 + 32) _runWithRequest:*(a1 + 40)];
        goto LABEL_11;
      }

      v12 = DMFAppLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v6 bundleIdentifier];
        v16 = 138543362;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Abandoning install because of existing install coordinator for bundle identifier %{public}@", &v16, 0xCu);
      }

      v14 = *(a1 + 32);
      v15 = 2616;
    }

    else
    {
      v14 = *(a1 + 32);
      v15 = 2606;
    }

    [v14 endOperationWithDMFErrorCode:v15];
  }

LABEL_11:
}

id sub_100049DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 endOperationWithError:a2];
  }

  else
  {
    return [v2 endOperationWithResultObject:0];
  }
}

id sub_10004A060(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 endOperationWithError:a2];
  }

  else
  {
    return [v2 endOperationWithResultObject:0];
  }
}

void sub_10004A29C(id a1)
{
  qword_1000FF0F8 = [NSSet setWithArray:&__NSArray0__struct];

  _objc_release_x1();
}

void sub_10004A620(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v6 = NSUnderlyingErrorKey;
    v7 = v1;
    v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    v4 = DMFErrorWithCodeAndUserInfo();
    [v2 endOperationWithError:v4];
  }

  else
  {
    v5 = DMFErrorWithCodeAndUserInfo();
    [v2 endOperationWithError:?];
  }
}

void sub_10004BB18(id a1)
{
  v3 = @"whitelistedAppBundleIDs";
  v4 = MCFeatureAppLockBundleIDs;
  v1 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  v2 = qword_1000FF108;
  qword_1000FF108 = v1;
}

id sub_10004BEB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 endOperationWithError:a2];
  }

  else
  {
    return [v2 endOperationWithResultObject:0];
  }
}

void sub_10004C3C8(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    [*(a1 + 32) endOperationWithError:a2];
  }

  else
  {
    v6 = [DMFInstallManagedBookResultObject alloc];
    v7 = [[DMFBook alloc] initWithBook:v9];
    v8 = [v6 initWithBook:v7];
    [v5 endOperationWithResultObject:v8];
  }

  [*(a1 + 40) stayAliveThroughHereAtLeast];
}

id sub_10004D56C(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = +[LSApplicationWorkspace defaultWorkspace];
    v4 = *(a1 + 32);
    v11 = 0;
    v5 = [v3 openSensitiveURL:v4 withOptions:0 error:&v11];
    v6 = v11;

    v7 = *(a1 + 40);
    if (v5)
    {
      [*(a1 + 40) endOperationWithResultObject:0];
    }

    else
    {
      if (v6)
      {
        v12 = NSUnderlyingErrorKey;
        v13 = v6;
        v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
        v9 = DMFErrorWithCodeAndUserInfo();
        [v7 endOperationWithError:v9];
      }

      else
      {
        v8 = DMFErrorWithCodeAndUserInfo();
        [v7 endOperationWithError:v8];
      }
    }
  }

  else
  {
    [*(a1 + 40) endOperationWithDMFErrorCode:2607];
  }

  byte_1000FF118 = 0;
  return [*(a1 + 48) stayAliveThroughHereAtLeast];
}

void *sub_10004E31C(void *result)
{
  if (result[4])
  {
    v1 = result;
    result = DMFErrorWithCodeAndUserInfo();
    *v1[4] = result;
  }

  return result;
}

void sub_10004E548(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v6 = NSUnderlyingErrorKey;
    v7 = a2;
    v3 = a2;
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    v5 = DMFErrorWithCodeAndUserInfo();
    [v2 endOperationWithError:v5];
  }

  else
  {
    v4 = 0;
    [v2 endOperationWithResultObject:0];
  }
}

uint64_t sub_10004E76C(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000FF120 = objc_opt_new();

  return _objc_release_x1();
}

void sub_10004E87C(uint64_t a1)
{
  v2 = [*(a1 + 32) completionBlock];

  v3 = *(a1 + 48);
  if (v2)
  {
    v21 = DMFErrorWithCodeAndUserInfo();
    (*(v3 + 16))(v3, 0, v21);
  }

  else
  {
    [*(a1 + 32) setCompletionBlock:*(a1 + 48)];
    [*(a1 + 32) setOriginator:*(a1 + 40)];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [CLEmergencyEnablementAssertion newAssertionForBundle:v4 withReason:@"DMDLostDeviceLocationManager getCurrentLocationForOriginator:completion:"];
    [CLLocationManager setAuthorizationStatusByType:3 forBundle:v4];
    v6 = [CLLocationManager alloc];
    v7 = *(a1 + 32);
    v8 = [v7 queue];
    v9 = [v6 initWithEffectiveBundle:v4 delegate:v7 onQueue:v8];
    [*(a1 + 32) setLocationManager:v9];

    v10 = *(a1 + 32);
    v11 = [v10 locationManager];
    [v11 setDelegate:v10];

    v12 = [*(a1 + 32) locationManager];
    [v12 setDesiredAccuracy:kCLLocationAccuracyBest];

    v13 = [*(a1 + 32) queue];
    v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v13);
    [*(a1 + 32) setTimeoutTimerDispatchSource:v14];

    v15 = [*(a1 + 32) timeoutTimerDispatchSource];
    v16 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 30000000000);
    dispatch_source_set_timer(v15, v16, 0x3B9ACA00uLL, 0x3B9ACA00uLL);

    v17 = [*(a1 + 32) timeoutTimerDispatchSource];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10004EB6C;
    handler[3] = &unk_1000CDC38;
    handler[4] = *(a1 + 32);
    v23 = v5;
    v18 = v5;
    dispatch_source_set_event_handler(v17, handler);

    v19 = [*(a1 + 32) timeoutTimerDispatchSource];
    dispatch_activate(v19);

    v20 = [*(a1 + 32) locationManager];
    [v20 requestLocation];
  }
}

void sub_10004EB6C(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v2);

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100084AF8();
  }

  v3 = [*(a1 + 32) completionBlock];
  [*(a1 + 32) _cleanupAfterResponseFromLocationManagerOrTimeout];
  if (v3)
  {
    v4 = DMFErrorWithCodeAndUserInfo();
    (v3)[2](v3, 0, v4);
  }
}

void sub_10004ED54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004ED6C(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v3 = a2;
  v4 = +[NSFileManager defaultManager];
  v9 = 0;
  v5 = [v4 removeItemAtURL:v3 error:&v9];

  v6 = v9;
  if (v5)
  {
  }

  else
  {
    v7 = [*(a1 + 32) domain];
    if ([v7 isEqualToString:NSCocoaErrorDomain])
    {
      v8 = [*(a1 + 32) code];

      if (v8 == 4)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100084BB4();
    }
  }

LABEL_9:
}

void sub_10004F2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004F30C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10004F324(void *a1, uint64_t a2)
{
  *(*(a1[4] + 8) + 24) = 1;
  v3 = [NSDictionary dictionaryWithContentsOfURL:a2];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(*(a1[5] + 8) + 40) objectForKeyedSubscript:kMCMDMLostModeLastLocationRequestDateKey];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return _objc_release_x1();
}

void sub_10004F838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10004F864(void *a1, void *a2)
{
  v3 = a2;
  *(*(a1[5] + 8) + 24) = 1;
  v4 = objc_opt_new();
  [v4 timeIntervalSinceReferenceDate];
  v5 = [NSNumber numberWithDouble:?];

  v14[0] = kMCMDMLostModeLastLocationRequestDateKey;
  v14[1] = @"originator";
  v6 = a1[4];
  v15[0] = v5;
  v15[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  if ([v7 writeToURL:v3 atomically:1])
  {
    v12[0] = NSFileProtectionKey;
    v12[1] = NSURLIsExcludedFromBackupKey;
    v13[0] = NSFileProtectionNone;
    v13[1] = &__kCFBooleanTrue;
    v8 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
    v11 = 0;
    v9 = [v3 setResourceValues:v8 error:&v11];
    v10 = v11;

    if (v9)
    {
      *(*(a1[6] + 8) + 24) = 1;
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100084D2C();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100084CE8();
  }
}

id sub_10004FCCC(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 stayAliveThroughHereAtLeast];
}

void sub_10004FD14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004FE0C;
    v7[3] = &unk_1000CF478;
    v9 = *(a1 + 48);
    v8 = *(a1 + 40);
    [v5 promptUserForiTunesAccount:0 accountNameEditable:1 canCreateNewAccount:1 assertion:v6 completionBlock:v7];
  }
}

id sub_10004FE0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, a2 == 0);
  }

  v4 = *(a1 + 32);

  return [v4 stayAliveThroughHereAtLeast];
}

void sub_10004FF80(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

uint64_t sub_10005009C(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000FF130 = objc_opt_new();

  return _objc_release_x1();
}

void sub_100050118(id a1)
{
  qword_1000FF140 = objc_opt_new();

  _objc_release_x1();
}

void sub_100050374(uint64_t a1)
{
  [*(a1 + 32) memberQueueCleanUp];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100050424;
    block[3] = &unk_1000CF578;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

id sub_100050ED0()
{
  if (qword_1000FF158 != -1)
  {
    sub_100084E1C();
  }

  v1 = qword_1000FF150;

  return v1;
}

uint64_t sub_100050F14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100050F2C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 persistentIdentifier] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

id sub_100050FB8()
{
  if (qword_1000FF168 != -1)
  {
    sub_100084E30();
  }

  v1 = qword_1000FF160;

  return v1;
}

void sub_10005188C(uint64_t a1)
{
  [*(a1 + 32) memberQueueRereadNonStoreBooksManifest];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    dispatch_async(v3, v2);
  }
}

void sub_1000519B8(uint64_t a1)
{
  [*(a1 + 32) memberQueueRereadStoreBooksManifest];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    dispatch_async(v3, v2);
  }
}

id sub_100051B1C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) memberQueuePersistentIDToNonStoreBook];
  v4 = [*(a1 + 40) persistentID];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = *(a1 + 32);

  return [v5 memberQueueCommitNonStoreBooksManifest];
}

id sub_100051C7C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) memberQueueiTunesStoreIDToStoreBook];
  v4 = [*(a1 + 40) iTunesStoreID];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = *(a1 + 32);

  return [v5 memberQueueCommitStoreBooksManifest];
}

void sub_100051DC8(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueuePersistentIDToNonStoreBook];
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = v4;
  if (v4)
  {
    [v4 setState:*(a1 + 48)];
    [*(a1 + 32) memberQueueCommitNonStoreBooksManifest];
    v3 = v4;
  }
}

void sub_100051F1C(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueiTunesStoreIDToStoreBook];
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = v4;
  if (v4)
  {
    [v4 setState:*(a1 + 48)];
    [*(a1 + 32) memberQueueCommitStoreBooksManifest];
    v3 = v4;
  }
}

void sub_100052220(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100084F78();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

void sub_100052470(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) memberQueuePersistentIDToNonStoreBook];
  v4 = [*(a1 + 40) persistentID];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = *(a1 + 48);
  if ([(__CFString *)v6 length])
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = +[DMDPaths managedNonStoreBooksDirectory];
    v14 = [*(a1 + 40) persistentID];
    v15 = [v14 MCHashedFilenameWithPrefix:0 extension:v6];
    v16 = [v13 stringByAppendingPathComponent:v15];
    [*(a1 + 40) setFullPath:v16];

    [*(a1 + 40) setKind:v6];
    goto LABEL_14;
  }

  v6 = @"pdf";
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  v7 = [v5 kind];
  v8 = [v7 isEqualToString:v6];

  if (v8)
  {
    v9 = [v5 fullPath];
    [*(a1 + 40) setFullPath:v9];

    v10 = [v5 state];
    v11 = [v10 isEqualToString:@"Managed"];

    if (v11)
    {
      [*(a1 + 40) setPreviousVersion:v5];
      v12 = @"Updating";
LABEL_15:
      [*(a1 + 40) setState:v12];
      goto LABEL_16;
    }

    v22 = [v5 downloadIdentifier];

    if (v22)
    {
      v23 = [v5 downloadIdentifier];
      [v2 addObject:v23];
    }

LABEL_14:
    v12 = @"Installing";
    goto LABEL_15;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10008501C(v5);
  }

  v17 = DMFErrorWithCodeAndUserInfo();
  if (v17)
  {
    v18 = v17;
    v19 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100052ADC;
    block[3] = &unk_1000CF5C8;
    v52 = *(a1 + 72);
    v49 = v18;
    v50 = *(a1 + 40);
    v51 = *(a1 + 56);
    v20 = v18;
    dispatch_async(v19, block);

    v21 = v52;
    goto LABEL_19;
  }

LABEL_16:
  v39 = v5;
  v41 = v2;
  v20 = [[NSURLRequest alloc] initWithURL:*(a1 + 64)];
  v24 = [SSDownloadMetadata alloc];
  v21 = [v24 initWithKind:SSDownloadKindDocument];
  v25 = [[SSDownload alloc] initWithDownloadMetadata:v21];
  v26 = [[SSDownloadAsset alloc] initWithURLRequest:v20];
  [v26 setValue:&off_1000D7A48 forProperty:SSDownloadAssetPropertyAllowedRetryCount];
  [v26 setValue:&__kCFBooleanTrue forProperty:SSDownloadAssetPropertyIsExternal];
  v27 = SSDownloadAssetTypeMedia;
  [v26 setValue:SSDownloadAssetTypeMedia forProperty:SSDownloadAssetPropertyType];
  [v26 setValue:NSFileProtectionCompleteUntilFirstUserAuthentication forProperty:SSDownloadAssetPropertyFileProtectionType];
  v28 = [*(a1 + 40) fullPath];
  v29 = [NSURL fileURLWithPath:v28];
  [v26 setValue:v29 forProperty:SSDownloadAssetPropertyDestinationURL];

  v53[0] = @"epub";
  v53[1] = @"ibooks";
  v30 = v6;
  v31 = [NSArray arrayWithObjects:v53 count:2];
  v32 = [v31 containsObject:v30];

  if (v32)
  {
    [v26 setValue:&off_1000D7A60 forProperty:SSDownloadAssetPropertyProcessingTypes];
  }

  [v25 addAsset:v26 forType:{v27, v39}];
  [v25 setValue:&__kCFBooleanTrue forProperty:SSDownloadPropertyIsSharedResource];
  [v25 setValue:&__kCFBooleanTrue forProperty:SSDownloadPropertyShouldSuppressErrorDialogs];
  v33 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v25 persistentIdentifier]);
  [*(a1 + 40) setDownloadIdentifier:v33];

  v34 = *(a1 + 40);
  v35 = [*(a1 + 32) memberQueuePersistentIDToNonStoreBook];
  v36 = [*(a1 + 40) persistentID];
  [v35 setObject:v34 forKeyedSubscript:v36];

  [*(a1 + 32) memberQueueCommitNonStoreBooksManifest];
  v37 = dispatch_get_global_queue(0, 0);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100052B5C;
  v42[3] = &unk_1000CF640;
  v42[4] = *(a1 + 32);
  v2 = v41;
  v43 = v41;
  v44 = *(a1 + 40);
  v45 = v25;
  v47 = *(a1 + 72);
  v46 = *(a1 + 56);
  v38 = v25;
  dispatch_async(v37, v42);

  v5 = v40;
LABEL_19:
}

id sub_100052ADC(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = [v4 state];
    (*(v2 + 16))(v2, v3, v4, v5);
  }

  v6 = a1[6];

  return [v6 stayAliveThroughHereAtLeast];
}

void sub_100052B5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100052C38;
  v6[3] = &unk_1000CF618;
  v7 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v11 = *(a1 + 72);
  v10 = *(a1 + 64);
  [v2 cancelNonStoreDownloadsWithDownloadIdentifiers:v3 completionBlock:v6];
}

void sub_100052C38(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) friendlyName];
    *buf = 138543362;
    v15 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Beginning download of book %{public}@", buf, 0xCu);
  }

  v3 = +[NSFileManager defaultManager];
  v4 = [*(a1 + 32) fullPath];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = [*(a1 + 32) fullPath];
    [v3 removeItemAtPath:v6 error:0];
  }

  v7 = sub_100050ED0();
  v13 = *(a1 + 40);
  v8 = [NSArray arrayWithObjects:&v13 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100052E28;
  v9[3] = &unk_1000CF5F0;
  v9[4] = *(a1 + 48);
  v10 = *(a1 + 32);
  v12 = *(a1 + 64);
  v11 = *(a1 + 56);
  [v7 addDownloads:v8 completionBlock:v9];
}

void sub_100052E28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v14 = NSUnderlyingErrorKey;
    v15 = v3;
    v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v6 = DMFErrorWithCodeAndUserInfo();

    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) persistentID];
    [v7 setState:@"Failed" forNonStoreBookWithPersistentID:v8];

    v9 = *(a1 + 56);
    if (v9)
    {
      (*(v9 + 16))(v9, v6, *(a1 + 40), @"Failed");
    }

    [*(a1 + 48) stayAliveThroughHereAtLeast];
  }

  else
  {
    v10 = *(a1 + 56);
    if (v10)
    {
      v11 = *(a1 + 40);
      v12 = [v11 state];
      (*(v10 + 16))(v10, 0, v11, v12);
    }

    v13 = *(a1 + 48);

    [v13 stayAliveThroughHereAtLeast];
  }
}

void sub_100053254(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if ([v5 count])
    {
      v10 = [v5 objectAtIndexedSubscript:0];
      if (([v10 isVPPLicensed] & 1) != 0 || +[DMDManagedMediaManager shouldBypassVPPLicenseCheck](DMDManagedMediaManager, "shouldBypassVPPLicenseCheck"))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v10 title];
          *buf = 138543362;
          v28 = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Found book: %{public}@", buf, 0xCu);
        }

        v8 = objc_opt_new();
        [v8 setITunesStoreID:*(a1 + 32)];
        v12 = [v10 title];
        [v8 setTitle:v12];

        v13 = [v10 author];
        [v8 setAuthor:v13];

        v14 = [v10 redownloadParameters];
        [v8 setBuyParams:v14];

        if (v8)
        {
          v15 = *(a1 + 56);
          if (v15)
          {
            (*(v15 + 16))(v15, 0, v8);
          }

          goto LABEL_24;
        }
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100085134();
        }
      }
    }

    if (*(a1 + 64))
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000535DC;
      v23[3] = &unk_1000CF690;
      *v22 = *(a1 + 32);
      v16 = v22[0];
      v17 = *(a1 + 48);
      v26 = *(a1 + 64);
      v18 = *(a1 + 56);
      *&v19 = v17;
      *(&v19 + 1) = v18;
      v24 = vextq_s8(*v22, *v22, 8uLL);
      v25 = v19;
      [v22[1] refreshBookPurchaseHistoryCompletion:v23];
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000851B0();
      }

      v20 = *(a1 + 56);
      if (v20)
      {
        v21 = DMFErrorWithCodeAndUserInfo();
        (*(v20 + 16))(v20, v21, 0);
      }
    }

    v8 = 0;
    goto LABEL_24;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000850BC();
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    v29 = NSUnderlyingErrorKey;
    v30 = v6;
    v8 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v9 = DMFErrorWithCodeAndUserInfo();
    (*(v7 + 16))(v7, v9, 0);

LABEL_24:
  }

  [*(a1 + 48) stayAliveThroughHereAtLeast];
}

id sub_1000538E8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = DMFErrorWithCodeAndUserInfo();
  (*(v2 + 16))(v2, v3, 0, @"Failed");

  v4 = *(a1 + 32);

  return [v4 stayAliveThroughHereAtLeast];
}

void sub_100053960(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 32);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100053ABC;
    v14[3] = &unk_1000CF708;
    v6 = *(a1 + 56);
    v13 = *(a1 + 40);
    v7 = *(a1 + 48);
    *&v8 = *(a1 + 32);
    *(&v8 + 1) = v6;
    *&v9 = v13;
    *(&v9 + 1) = v7;
    v15 = v9;
    v16 = v8;
    [v4 searchBookPurchaseHistoryForiTunesStoreID:v3 assertion:v5 completionBlock:v14];
  }

  else
  {
    v10 = *(a1 + 56);
    if (v10)
    {
      v11 = DMFErrorWithCodeAndUserInfo();
      (*(v10 + 16))(v10, v11, 0, @"Failed");
    }

    v12 = *(a1 + 32);

    [v12 stayAliveThroughHereAtLeast];
  }
}

void sub_100053ABC(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = a1[7];
    if (v8)
    {
      v8[2](v8, v5, 0, @"Failed");
    }
  }

  else
  {
    [v6 setState:@"Installing"];
    [a1[4] setStoreManagedBook:v7];
    v9 = +[BLDownloadQueue sharedInstance];
    v10 = [v7 buyParams];
    v11 = [a1[5] stringValue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100053C30;
    v12[3] = &unk_1000CF6E0;
    v15 = a1[7];
    v13 = v7;
    v14 = a1[6];
    [v9 addDownloadWithPurchaseParameters:v10 storeID:v11 completion:v12];
  }

  [a1[6] stayAliveThroughHereAtLeast];
}

id sub_100053C30(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[6];
  if (v4)
  {
    v5 = a1[4];
    v6 = a3;
    v7 = [v5 state];
    (*(v4 + 16))(v4, v6, v5, v7);
  }

  v8 = a1[5];

  return [v8 stayAliveThroughHereAtLeast];
}

void sub_100053DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100053DD8(uint64_t a1)
{
  v2 = [NSArray alloc];
  v7 = [*(a1 + 32) memberQueueiTunesStoreIDToStoreBook];
  v3 = [v7 allValues];
  v4 = [v2 initWithArray:v3 copyItems:1];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100053F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100053F8C(uint64_t a1)
{
  v2 = [NSArray alloc];
  v7 = [*(a1 + 32) memberQueuePersistentIDToNonStoreBook];
  v3 = [v7 allValues];
  v4 = [v2 initWithArray:v3 copyItems:1];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100054550(uint64_t a1)
{
  [*(a1 + 32) memberQueueCleanUp];
  v2 = [*(a1 + 32) memberQueuePersistentIDToNonStoreBook];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) memberQueuePersistentIDToNonStoreBook];
    [v4 removeObjectForKey:*(a1 + 40)];

    [*(a1 + 32) memberQueueCommitNonStoreBooksManifest];
    v5 = +[NSFileManager defaultManager];
    v6 = [v3 downloadIdentifier];

    if (v6)
    {
      v7 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100054754;
      block[3] = &unk_1000CF618;
      block[4] = *(a1 + 32);
      v14 = v3;
      v15 = v5;
      v17 = *(a1 + 56);
      v16 = *(a1 + 48);
      dispatch_async(v7, block);
    }

    else
    {
      v10 = [v3 fullPath];
      [v5 removeItemAtPath:v10 error:0];

      v11 = *(a1 + 56);
      if (v11)
      {
        v12 = dispatch_get_global_queue(0, 0);
        dispatch_async(v12, v11);
      }

      [*(a1 + 48) stayAliveThroughHereAtLeast];
    }
  }

  else
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = dispatch_get_global_queue(0, 0);
      dispatch_async(v9, v8);
    }

    [*(a1 + 48) stayAliveThroughHereAtLeast];
  }
}

void sub_100054754(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) downloadIdentifier];
  v13 = v3;
  v4 = [NSArray arrayWithObjects:&v13 count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000548AC;
  v10[3] = &unk_1000CE9D8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  *&v8 = *(a1 + 56);
  *(&v8 + 1) = v7;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v11 = v9;
  v12 = v8;
  [v2 cancelNonStoreDownloadsWithDownloadIdentifiers:v4 completionBlock:v10];
}

id sub_1000548AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) fullPath];
  [v2 removeItemAtPath:v3 error:0];

  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = *(a1 + 48);

  return [v5 stayAliveThroughHereAtLeast];
}

id sub_100054A60(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueiTunesStoreIDToStoreBook];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 memberQueueCommitStoreBooksManifest];
}

uint64_t sub_100054AB0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100054C18(uint64_t a1)
{
  [*(a1 + 32) finishDownloads:*(a1 + 40)];
  [SSDownloadManager removePersistenceIdentifier:@"com.apple.mdmd.downloads.media.nonstore"];
  v2 = [*(a1 + 48) memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054CF4;
  block[3] = &unk_1000CF3B0;
  block[4] = *(a1 + 48);
  v5 = *(a1 + 64);
  v4 = *(a1 + 56);
  dispatch_async(v2, block);
}

void sub_100054CF4(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Removing managed books.", v8, 2u);
  }

  v2 = [*(a1 + 32) memberQueuePersistentIDToNonStoreBook];
  [v2 removeAllObjects];

  v3 = +[NSFileManager defaultManager];
  v4 = +[DMDPaths managedNonStoreBooksDirectory];
  [v3 removeItemAtPath:v4 error:0];

  v5 = +[DMDPaths managedStoreBooksManifestPath];
  [v3 removeItemAtPath:v5 error:0];

  MCSendManagedBooksChangedNotification();
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    dispatch_async(v7, v6);
  }

  [*(a1 + 40) stayAliveThroughHereAtLeast];
}

void sub_100054EE8(id a1)
{
  v1 = objc_opt_new();
  v5 = SSDownloadKindDocument;
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  [v1 setDownloadKinds:v2];

  [v1 setPersistenceIdentifier:@"com.apple.mdmd.downloads.media.nonstore"];
  [v1 setShouldFilterExternalOriginatedDownloads:1];
  v3 = [[SSDownloadManager alloc] initWithManagerOptions:v1];
  v4 = qword_1000FF150;
  qword_1000FF150 = v3;
}

void sub_100054FC8(id a1)
{
  v3[0] = @"Failed";
  v3[1] = @"Unknown";
  v1 = [NSArray arrayWithObjects:v3 count:2];
  v2 = qword_1000FF160;
  qword_1000FF160 = v1;
}

void sub_1000555F8(id a1)
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v1 = [v3 localizedStringForKey:@"%@ is about to install and manage the app “%@” from the App Store.\nYour Apple Account will not be charged for this app." value:&stru_1000D0428 table:@"DMFNotifications"];
  v2 = qword_1000FF170;
  qword_1000FF170 = v1;
}

void sub_1000558EC(uint64_t a1)
{
  v2 = DMFAppLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Start redeeming app with bundle identifier: %{public}@", buf, 0xCu);
  }

  [*(a1 + 40) _setState:2];
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100055A30;
  v6[3] = &unk_1000CF7E0;
  v6[4] = *(a1 + 40);
  v7 = v4;
  v8 = *(a1 + 32);
  [v5 startRedeemingAppWithCode:v7 completion:v6];
}

void sub_100055A30(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    [*(a1 + 32) _setUnusedRedemptionCode:*(a1 + 40)];
    [*(a1 + 32) _setState:11];
    [*(a1 + 32) _showInstallationFailurePromptIfNeeded];
    [*(a1 + 32) _resetRemovabilityWithBundleIdentifier:*(a1 + 48)];
    [*(a1 + 32) _resetTapToPayScreenLock];
    [*(a1 + 32) endOperationWithError:v4];
  }

  else
  {
    v3 = +[DMDAppController sharedController];
    [v3 sendManagedAppsChangedNotification];

    [*(a1 + 32) _endOperationWithBundleIdentifier:*(a1 + 48)];
  }
}

void sub_100055D44(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  [v3 _setState:11];
  [*(a1 + 32) _showInstallationFailurePromptIfNeeded];
  v4 = *(a1 + 32);
  v5 = [v4 metadata];
  v6 = [v5 bundleIdentifier];
  [v4 _resetRemovabilityWithBundleIdentifier:v6];

  [*(a1 + 32) _resetTapToPayScreenLock];
  [*(a1 + 32) endOperationWithError:v7];
}

void sub_100055DF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) removable];
  [v2 _setRemovability:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) tapToPayScreenLock];
  [v4 _setTapToPayScreenLock:v5];

  v6 = DMFAppLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 48) host];
    *buf = 138543362;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Start installing enterprise app with manifest URL from: %{public}@", buf, 0xCu);
  }

  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100055F88;
  v11[3] = &unk_1000CF5F0;
  v12 = v8;
  v13 = *(a1 + 40);
  v10 = *(a1 + 64);
  v14 = *(a1 + 32);
  v15 = v10;
  [v12 startInstallingEnterpriseAppWithManifestURL:v9 completion:v11];
}

void sub_100055F88(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) personaIdentifier];
    [v3 updateBundleIDPersonaIDMappingForPersonaID:v4 addingBundleID:0 completionHandler:0];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 48) _setState:6];
    [*(a1 + 48) _applyManagementPiecesForRequest:*(a1 + 40)];
    v5 = +[DMDAppController sharedController];
    [v5 sendManagedAppsChangedNotification];

    v6 = *(a1 + 48);
    v7 = [v6 metadata];
    v8 = [v7 bundleIdentifier];
    [v6 _endOperationWithBundleIdentifier:v8];
  }
}

void sub_10005607C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) personaIdentifier];
  v4 = [*(a1 + 48) metadata];
  v5 = [v4 bundleIdentifier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100056170;
  v7[3] = &unk_1000CF858;
  v6 = *(a1 + 56);
  v7[4] = *(a1 + 48);
  v8 = v6;
  v9 = *(a1 + 64);
  [v2 updateBundleIDPersonaIDMappingForPersonaID:v3 addingBundleID:v5 completionHandler:v7];
}

void sub_100056170(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFAppLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000853D4();
    }

    v5 = *(a1 + 40);
    v8 = NSUnderlyingErrorKey;
    v9 = v3;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v7 = DMFErrorWithCodeAndUserInfo();
    (*(v5 + 16))(v5, v7);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10005637C(int8x16_t *a1)
{
  v2 = DMFAppLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[2].i64[0];
    *buf = 138543362;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Start installing system app with bundle identifier: %{public}@", buf, 0xCu);
  }

  v4 = +[DMDAppController sharedController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000564B4;
  v6[3] = &unk_1000CDBD0;
  v5 = a1[2];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v4 installSystemAppWithBundleIdentifier:v5.i64[0] completion:v6];
}

void sub_1000564B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (v3)
  {
    [v4 _showInstallationFailurePromptIfNeeded];
    [*(a1 + 32) endOperationWithError:v5];
  }

  else
  {
    [v4 _endOperationWithBundleIdentifier:*(a1 + 40)];
  }
}

void sub_100056750(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = DMFAppLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = [objc_opt_class() descriptionForChangeType:a2];
    *buf = 138543874;
    v62 = v8;
    v63 = 2114;
    v64 = v9;
    v65 = 2114;
    v66 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SINF swap attempt complete for %{public}@, change type = %{public}@, error = %{public}@", buf, 0x20u);
  }

  if (a2 == 4)
  {
    v12 = DMFAppLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138543362;
      v62 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Attempting to re-download of device-licensed app: %{public}@", buf, 0xCu);
    }

    [*(a1 + 40) _redownloadDeviceAppForRequest:*(a1 + 48)];
  }

  else
  {
    if (a2)
    {
      v11 = 1;
    }

    else
    {
      v10 = [v5 domain];
      if ([v10 isEqualToString:ASDServerErrorDomain])
      {
        v11 = [v5 code] != 9610;
      }

      else
      {
        v11 = 1;
      }
    }

    v14 = [*(a1 + 40) metadata];
    v15 = [v14 isUserLicensed];

    if (v15 && v11)
    {
      v16 = DMFAppLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        *buf = 138543362;
        v62 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Attempting to re-download a user-licensed app where we know the license exists: %{public}@", buf, 0xCu);
      }

      [*(a1 + 40) _redownloadUserAppForRequest:*(a1 + 48)];
    }

    else
    {
      if ([*(a1 + 48) allowFreePurchases])
      {
        v18 = +[DMDAppController sharedController];
        v19 = [v18 userIsSignedIn];
        v20 = *(a1 + 40);
        if (v19)
        {
          v21 = [v20 metadata];
          v22 = [v21 isFree];

          if (v22)
          {
            v23 = DMFAppLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = *(a1 + 32);
              *buf = 138543362;
              v62 = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Attempting to purchase free app: %{public}@", buf, 0xCu);
            }

            [*(a1 + 40) _purchaseFreeAppForRequest:*(a1 + 48)];
          }

          else
          {
            [*(a1 + 40) _setState:1];
            [*(a1 + 40) _applyManagementPiecesForRequest:*(a1 + 48)];
            v36 = +[DMDAppController sharedController];
            v37 = [*(a1 + 48) removable];
            v38 = [*(a1 + 40) metadata];
            v39 = [v38 bundleIdentifier];
            v55[0] = _NSConcreteStackBlock;
            v55[1] = 3221225472;
            v55[2] = sub_100056D14;
            v55[3] = &unk_1000CEE68;
            v56 = *(a1 + 48);
            [v36 setRemovability:v37 forBundleIdentifier:v39 completion:v55];

            v40 = +[DMDAppController sharedController];
            v41 = [*(a1 + 48) tapToPayScreenLock];
            v42 = [*(a1 + 40) metadata];
            v43 = [v42 bundleIdentifier];
            v50 = _NSConcreteStackBlock;
            v51 = 3221225472;
            v52 = sub_100056D7C;
            v53 = &unk_1000CEE68;
            v54 = *(a1 + 48);
            [v40 setTapToPayScreenLock:v41 forBundleIdentifier:v43 completion:&v50];

            v44 = [DMDAppController sharedController:v50];
            [v44 sendManagedAppsChangedNotification];

            v45 = *(a1 + 40);
            v57 = DMFBundleIdentifierErrorKey;
            v46 = [v45 metadata];
            v47 = [v46 bundleIdentifier];
            v58 = v47;
            v48 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
            v49 = DMFErrorWithCodeAndUserInfo();
            [v45 endOperationWithError:v49];
          }
        }

        else
        {
          [v20 _promptToSignInAndInstallAppForRequest:*(a1 + 48)];
        }
      }

      else
      {
        v25 = DMFAppLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_100085478(a1, v25, v26, v27, v28, v29, v30, v31);
        }

        v32 = *(a1 + 40);
        v59 = DMFBundleIdentifierErrorKey;
        v18 = [v32 metadata];
        v33 = [v18 bundleIdentifier];
        v60 = v33;
        v34 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v35 = DMFErrorWithCodeAndUserInfo();
        [v32 endOperationWithError:v35];
      }
    }
  }
}

void sub_100056D14(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = DMFAppLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000854E8();
    }
  }
}

void sub_100056D7C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = DMFAppLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10008557C();
    }
  }
}

void sub_100056FA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if (v5)
  {
    v6 = DMFAppLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100085610();
    }

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

void sub_100057254(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _setState:11];
  [*(a1 + 32) _showInstallationFailurePromptIfNeeded];
  [*(a1 + 32) endOperationWithError:v4];
}

void sub_1000572BC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = DMFAppLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) metadata];
    v10 = [v9 bundleIdentifier];
    v23 = 138543618;
    v24 = v10;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "appstored response for: %{public}@, metadata=%{public}@", &v23, 0x16u);
  }

  if (v7)
  {
    v11 = DMFAppLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) metadata];
      v13 = [v12 bundleIdentifier];
      v23 = 138543618;
      v24 = v13;
      v25 = 2114;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Error getting app: %{public}@, %{public}@", &v23, 0x16u);
    }

    v14 = *(a1 + 40);
    v15 = [*(a1 + 48) personaIdentifier];
    [v14 updateBundleIDPersonaIDMappingForPersonaID:v15 addingBundleID:0 completionHandler:0];

    v16 = *(a1 + 32);
    v17 = [v16 metadata];
    v18 = [v17 bundleIdentifier];
    [v16 _resetRemovabilityWithBundleIdentifier:v18];

    [*(a1 + 32) _resetTapToPayScreenLock];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 32) _setState:6];
    [*(a1 + 32) _applyManagementPiecesForRequest:*(a1 + 48)];
    v19 = +[DMDAppController sharedController];
    [v19 sendManagedAppsChangedNotification];

    v20 = *(a1 + 32);
    v21 = [v20 metadata];
    v22 = [v21 bundleIdentifier];
    [v20 _endOperationWithBundleIdentifier:v22];
  }
}

void sub_100057524(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) personaIdentifier];
  v4 = [*(a1 + 48) metadata];
  v5 = [v4 bundleIdentifier];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005765C;
  v12[3] = &unk_1000CF8F8;
  v11 = *(a1 + 48);
  v6 = *(&v11 + 1);
  v7 = *(a1 + 40);
  *&v8 = *(a1 + 32);
  *(&v9 + 1) = v7;
  *(&v8 + 1) = *(&v11 + 1);
  *&v9 = v11;
  v13 = v9;
  v14 = v8;
  v10 = *(a1 + 64);
  v16 = *(a1 + 72);
  v15 = v10;
  [v2 updateBundleIDPersonaIDMappingForPersonaID:v3 addingBundleID:v5 completionHandler:v12];
}

void sub_10005765C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFAppLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000853D4();
    }

    v5 = *(a1 + 56);
    v19 = NSUnderlyingErrorKey;
    v20 = v3;
    v6 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v7 = DMFErrorWithCodeAndUserInfo();
    (*(v5 + 16))(v5, v7);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) removable];
    [v8 _setRemovability:v9];

    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) tapToPayScreenLock];
    [v10 _setTapToPayScreenLock:v11];

    v12 = DMFAppLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 40) personaIdentifier];
      v17 = 138543362;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "_downloadStoreAppForRequest persona:%{public}@", &v17, 0xCu);
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    v6 = [v14 metadata];
    v7 = [v6 storeItemIdentifier];
    v16 = [*(a1 + 40) personaIdentifier];
    [v15 sendAppRequestWithBundleIdentifier:0 storeItemIdentifier:v7 personaIdentifier:v16 type:*(a1 + 72) skipDownloads:0 completion:*(a1 + 64)];
  }
}

uint64_t sub_100057F1C(uint64_t a1)
{
  [*(a1 + 32) _setState:0];
  v2 = [*(a1 + 32) metadata];
  v3 = [v2 lifeCycle];
  v4 = +[DMDAppController sharedController];
  [v3 addObserver:v4];

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

id sub_100057FB4(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  else
  {
    [*(a1 + 32) _setState:10];
    v6 = *(a1 + 32);

    return [v6 endOperationWithDMFErrorCode:1000];
  }
}

id sub_1000582B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2 == 1)
  {
    v4 = *(a1 + 40);

    return [v3 _showStorePromptToSignInAndInstallAppForRequest:v4];
  }

  else
  {
    [v3 _setState:10];
    v5 = *(a1 + 32);

    return [v5 endOperationWithDMFErrorCode:1000];
  }
}

void sub_100058428(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) _setState:11];
    [*(a1 + 32) endOperationWithError:v6];
  }

  else if (v5)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100058534;
    v9[3] = &unk_1000CF998;
    v9[4] = *(a1 + 32);
    v10 = 0;
    v11 = v8;
    [v7 getMetadataForAppRequest:v8 completion:v9];
  }

  else
  {
    [*(a1 + 32) _setState:11];
    [*(a1 + 32) endOperationWithDMFErrorCode:2608];
  }
}

id sub_100058534(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[4];
  if (a3)
  {
    [v4 _setState:11];
    v5 = a1[4];
    v6 = a1[5];

    return [v5 endOperationWithError:v6];
  }

  else
  {
    [v4 setMetadata:a2];
    v8 = a1[4];
    v9 = a1[6];

    return [v8 _installStoreAppForRequest:v9];
  }
}

void sub_100058E70(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = DMFAppLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100085928();
    }
  }
}

void sub_100058F54(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = DMFAppLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100085990();
    }
  }
}

void sub_100059090(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFAppLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000859F8(a1);
    }
  }
}

void sub_1000591DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFAppLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100085A6C(a1);
    }
  }
}

void sub_100059438(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = v5;
  if (a3)
  {
    [*(a1 + 32) endOperationWithError:a3];
  }

  else
  {
    v6 = [v5 bundleIdentifier];

    v7 = *(a1 + 32);
    if (v6)
    {
      [v7 setMetadata:v8];
      [*(a1 + 32) _runWithRequest:*(a1 + 40)];
    }

    else
    {
      [v7 endOperationWithDMFErrorCode:2606];
    }
  }
}

void sub_100059784(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 40) _setState:18 forBundleIdentifier:*(a1 + 48)];
    v4 = DMFAppLog();
    v5 = v4;
    if (a2 == 2)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100085AE0(a1, v5);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Request to manage app %{public}@ denied.", &v9, 0xCu);
    }
  }

  else
  {
    v6 = DMFAppLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Request to manage app %{public}@ approved by user.", &v9, 0xCu);
    }

    [*(a1 + 40) _manageApp];
  }
}

uint64_t sub_1000599F8(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    [*(a1 + 32) recordNewPrompt];
    [*(a1 + 32) writeTimestampsToFile];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10005A170(uint64_t a1)
{
  v2 = DMFAppLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) bundleIdentifier];
    v4 = [*(a1 + 40) personaIdentifier];
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Associating app %{public}@ with persona %{public}@ in UserManagement", &v5, 0x16u);
  }
}

void sub_10005A3D4(id a1, NSDictionary *a2, int64_t a3, NSError *a4)
{
  v4 = a4;
  if (v4)
  {
    v5 = DMFAppLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100085B5C(v4, v5);
    }
  }
}

void sub_10005A5B0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFAppLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000845A0(a1);
    }
  }
}

void sub_10005A6FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFAppLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008460C(a1);
    }
  }
}

void sub_10005AE30(uint64_t a1)
{
  v1 = [*(a1 + 32) _systemGroupContainerPathWithGroupIdentifier:@"systemgroup.com.apple.configurationprofiles"];
  v2 = qword_1000FF180;
  qword_1000FF180 = v1;

  if (qword_1000FF180)
  {
    if ([qword_1000FF180 isEqualToString:@"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles"])
    {
      return;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100085BD4();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100085C6C();
  }

  v3 = qword_1000FF180;
  qword_1000FF180 = @"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles";
}

void sub_10005AF7C(uint64_t a1)
{
  v3 = [*(a1 + 32) _systemProfileStorageDirectory];
  v1 = [v3 stringByAppendingPathComponent:@"ManagementPromptPolicy.plist"];
  v2 = qword_1000FF190;
  qword_1000FF190 = v1;
}

void sub_10005B07C(uint64_t a1)
{
  v3 = [*(a1 + 32) _systemProfileStorageDirectory];
  v1 = [v3 stringByAppendingPathComponent:@"MDMAppManagement.plist"];
  v2 = qword_1000FF1A0;
  qword_1000FF1A0 = v1;
}

void sub_10005B17C(uint64_t a1)
{
  v3 = [*(a1 + 32) purchasedBooksDirectory];
  v1 = [v3 stringByAppendingPathComponent:@"Purchases.plist"];
  v2 = qword_1000FF1B0;
  qword_1000FF1B0 = v1;
}

void sub_10005B27C(uint64_t a1)
{
  v3 = [*(a1 + 32) _userDirectory];
  v1 = [v3 stringByAppendingPathComponent:@"/Media/Books/Purchases"];
  v2 = qword_1000FF1C0;
  qword_1000FF1C0 = v1;
}

void sub_10005B37C(uint64_t a1)
{
  v3 = [*(a1 + 32) _systemProfileStorageDirectory];
  v1 = [v3 stringByAppendingPathComponent:@"ManagedBooks.plist"];
  v2 = qword_1000FF1D0;
  qword_1000FF1D0 = v1;
}

void sub_10005B47C(uint64_t a1)
{
  v3 = [*(a1 + 32) _managedNonStoreBooksSystemGroupContainer];
  v1 = [v3 stringByAppendingPathComponent:@"Library"];
  v2 = qword_1000FF1E0;
  qword_1000FF1E0 = v1;
}

void sub_10005B57C(uint64_t a1)
{
  v3 = [*(a1 + 32) managedNonStoreBooksDirectory];
  v1 = [v3 stringByAppendingPathComponent:@"Managed.plist"];
  v2 = qword_1000FF1F0;
  qword_1000FF1F0 = v1;
}

void sub_10005B67C(uint64_t a1)
{
  v3 = [*(a1 + 32) _systemProfileStorageDirectory];
  v1 = [v3 stringByAppendingPathComponent:@"LostModeRequest.plist"];
  v2 = qword_1000FF200;
  qword_1000FF200 = v1;
}

void sub_10005B77C(uint64_t a1)
{
  v3 = [*(a1 + 32) _systemProfileStorageDirectory];
  v1 = [v3 stringByAppendingPathComponent:@"MDM.plist"];
  v2 = qword_1000FF210;
  qword_1000FF210 = v1;
}

void sub_10005B888(uint64_t a1)
{
  v3 = [*(a1 + 32) _systemProfileLibraryDirectory];
  v1 = [v3 stringByAppendingPathComponent:@"ConfigurationProfiles"];
  v2 = qword_1000FF220;
  qword_1000FF220 = v1;
}

void sub_10005B988(uint64_t a1)
{
  v3 = [*(a1 + 32) configurationProfilesSystemGroupContainer];
  v1 = [v3 stringByAppendingPathComponent:@"Library"];
  v2 = qword_1000FF230;
  qword_1000FF230 = v1;
}

void sub_10005BC9C(id a1)
{
  qword_1000FF248 = objc_opt_new();

  _objc_release_x1();
}

void sub_10005D9C4(id a1)
{
  v1 = objc_opt_new();
  [DMDSecureUnarchiveFromPayloadMetadataDataTransformer setValueTransformer:v1 forName:@"DMDSecureUnarchiveFromPayloadMetadataDataTransformer"];
}

void sub_10005DA68(id a1)
{
  v3 = objc_opt_class();
  v1 = [NSArray arrayWithObjects:&v3 count:1];
  v2 = qword_1000FF260;
  qword_1000FF260 = v1;
}

void sub_10005DB2C(id a1)
{
  qword_1000FF270 = objc_opt_new();

  _objc_release_x1();
}

void sub_10005DEF0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10005E074(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005E140;
  block[3] = &unk_1000CDC60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

id sub_10005E140(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000860D4(v2);
    }

    [*(a1 + 40) endOperationWithDMFErrorCode:3200];
  }

  else
  {
    [*(a1 + 40) endOperationWithResultObject:0];
  }

  return [*(a1 + 48) stayAliveThroughHereAtLeast];
}

void sub_10005E6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005E6DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005E6F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 domain];
    if (-[NSObject isEqualToString:](v8, "isEqualToString:", NSCocoaErrorDomain) && [v7 code] == 256)
    {
      v9 = [v7 userInfo];
      v10 = [v9 objectForKeyedSubscript:NSSQLiteErrorDomain];
      v11 = [v10 isEqualToNumber:&off_1000D7A78];

      if (!v11)
      {
LABEL_8:
        v12 = DMFPolicyLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100086194();
        }

        v13 = [v7 userInfo];
        v14 = [v13 objectForKeyedSubscript:NSLocalizedDescriptionKey];

        if (v14)
        {
          v27 = NSLocalizedDescriptionKey;
          v15 = [v7 userInfo];
          v16 = [v15 objectForKeyedSubscript:NSLocalizedDescriptionKey];
          v28 = v16;
          v17 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        }

        else
        {
          v17 = 0;
        }

        v22 = [v7 domain];
        v23 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v22, [v7 code], v17);
        v24 = *(*(a1 + 48) + 8);
        v25 = *(v24 + 40);
        *(v24 + 40) = v23;

LABEL_17:
        goto LABEL_18;
      }

      v8 = DMFPolicyLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100086158();
      }
    }

    goto LABEL_8;
  }

  [*(a1 + 32) setIsPersistentContainerLoaded:1];
  v18 = [*(a1 + 40) newBackgroundContext];
  [*(a1 + 32) setInternalContext:v18];

  v19 = [*(a1 + 40) newBackgroundContext];
  [*(a1 + 32) setRegistrationContext:v19];

  v20 = [v5 URL];
  v26 = 0;
  v21 = [v20 setResourceValue:0 forKey:NSURLIsExcludedFromBackupKey error:&v26];
  v17 = v26;

  if ((v21 & 1) == 0)
  {
    v22 = DMFPolicyLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100086204(v5, v17);
    }

    goto LABEL_17;
  }

LABEL_18:
}

void sub_10005EDF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v9 = [*(a1 + 32) identifier];
    v10 = +[DMDPolicyRegistration fetchRequest];
    v11 = [NSPredicate predicateWithFormat:@"%K == %@", @"identifier", v9];
    [v10 setPredicate:v11];

    v29 = 0;
    v12 = [v10 execute:&v29];
    v13 = v29;
    if (!v12)
    {
      v17 = DMFPolicyLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000863C8(v13);
      }

      v18 = *(a1 + 48);
      v14 = DMFErrorWithCodeAndUserInfo();
      (*(v18 + 16))(v18, 0, v14);
      goto LABEL_21;
    }

    v27 = v12;
    if ([v12 count])
    {
      v14 = [v12 firstObject];
      v15 = DMFPolicyLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v31 = v14;
        v32 = 2114;
        v33 = v9;
        v16 = "Updating existing registration %{public}@ with identifier %{public}@";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);
      }
    }

    else
    {
      v14 = [[DMDPolicyRegistration alloc] initWithContext:v5];
      v15 = DMFPolicyLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v31 = v14;
        v32 = 2114;
        v33 = v9;
        v16 = "Adding new registration %{public}@ with identifier %{public}@";
        goto LABEL_14;
      }
    }

    [(DMDPolicyRegistration *)v14 setIdentifier:v9];
    v19 = [*(a1 + 32) policyTypes];
    [(DMDPolicyRegistration *)v14 setPolicyTypes:v19];
    v20 = objc_opt_new();
    [(DMDPolicyRegistration *)v14 setModificationDate:v20];

    v28 = v13;
    v21 = [v5 save:&v28];
    v22 = v28;

    if (v21)
    {
      v23 = *(a1 + 40);
      v24 = [v19 allObjects];
      [v23 requestPoliciesForTypes:v24 replyHandler:*(a1 + 48)];
    }

    else
    {
      v25 = DMFPolicyLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10008632C(v14, v22);
      }

      v26 = *(a1 + 48);
      v24 = DMFErrorWithCodeAndUserInfo();
      (*(v26 + 16))(v26, 0, v24);
    }

    v12 = v27;

    v13 = v22;
LABEL_21:

    goto LABEL_22;
  }

  v7 = DMFPolicyLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000862A0(v6);
  }

  v8 = *(a1 + 48);
  v34 = NSUnderlyingErrorKey;
  v35 = v6;
  v9 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v10 = DMFErrorWithCodeAndUserInfo();
  (*(v8 + 16))(v8, 0, v10);
LABEL_22:
}

void sub_10005F51C(uint64_t a1, void *a2, void *a3)
{
  v63 = a2;
  v65 = a3;
  v4 = DMFPolicyLog();
  v5 = v4;
  if (!v65)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543362;
      v108 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Recalculating effective policies for types %{public}@", buf, 0xCu);
    }

    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    obj = *(a1 + 32);
    v73 = [obj countByEnumeratingWithState:&v98 objects:v106 count:16];
    if (!v73)
    {
LABEL_77:
      v6 = obj;
      goto LABEL_78;
    }

    v72 = *v99;
    v71 = DMFEffectivePolicyTypeApplication;
    v67 = DMFEffectivePolicyTypeWeb;
    v68 = DMFEffectivePolicyTypeApplicationCategory;
    v66 = DMFEffectivePolicyTypeWebCategory;
    v64 = DMFEffectivePolicyTypeiCloudAccountLogout;
    v69 = DMFEffectivePolicyTypeCategory;
LABEL_8:
    v76 = 0;
    while (1)
    {
      if (*v99 != v72)
      {
        objc_enumerationMutation(obj);
      }

      v84 = *(*(&v98 + 1) + 8 * v76);
      v83 = objc_opt_new();
      v78 = +[DMDEffectivePolicy fetchRequest];
      v8 = [NSPredicate predicateWithFormat:@"%K == %@", @"type", v84, v63];
      [v78 setPredicate:v8];

      v9 = [NSSortDescriptor sortDescriptorWithKey:@"priority" ascending:0];
      v105[0] = v9;
      v10 = [NSSortDescriptor sortDescriptorWithKey:@"policy" ascending:1];
      v105[1] = v10;
      v11 = [NSArray arrayWithObjects:v105 count:2];
      [v78 setSortDescriptors:v11];

      v97 = 0;
      v77 = [v78 execute:&v97];
      v75 = v97;
      if (!v77)
      {
        v20 = DMFPolicyLog();
        v21 = v20;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000864E4(buf, v75, &v108);
          v21 = v20;
        }

        goto LABEL_70;
      }

      [v83 addObjectsFromArray:?];
      v74 = [*(a1 + 40) effectiveSettingsStore];
      if ([v84 isEqualToString:v71])
      {
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v12 = [v74 shield];
        v13 = [v12 applications];

        v14 = [v13 countByEnumeratingWithState:&v93 objects:v104 count:16];
        if (v14)
        {
          v15 = *v94;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v94 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(a1 + 40);
              v18 = [*(*(&v93 + 1) + 8 * i) bundleIdentifier];
              v19 = [v17 _effectivePolicyForManagedSettingsIdentifier:v18 type:v84 excludedIdentifiers:0];
              [v83 addObject:v19];
            }

            v14 = [v13 countByEnumeratingWithState:&v93 objects:v104 count:16];
          }

          while (v14);
        }

        goto LABEL_36;
      }

      if ([v84 isEqualToString:v67])
      {
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v22 = [v74 shield];
        v13 = [v22 webDomains];

        v23 = [v13 countByEnumeratingWithState:&v89 objects:v103 count:16];
        if (v23)
        {
          v24 = *v90;
          do
          {
            for (j = 0; j != v23; j = j + 1)
            {
              if (*v90 != v24)
              {
                objc_enumerationMutation(v13);
              }

              v26 = *(a1 + 40);
              v27 = [*(*(&v89 + 1) + 8 * j) domain];
              v28 = [v26 _effectivePolicyForManagedSettingsIdentifier:v27 type:v84 excludedIdentifiers:0];
              [v83 addObject:v28];
            }

            v23 = [v13 countByEnumeratingWithState:&v89 objects:v103 count:16];
          }

          while (v23);
        }

        goto LABEL_36;
      }

      if ([v84 isEqualToString:v68])
      {
        break;
      }

      if ([v84 isEqualToString:v66])
      {
        v32 = *(a1 + 40);
        v13 = [v74 shield];
        v33 = [v13 webDomainCategories];
        v34 = [v32 _effectiveCategoryPoliciesForCategoryShieldPolicy:v33 type:v84 excludedIdentifiersKey:@"domain"];
        [v83 addObjectsFromArray:v34];

        goto LABEL_36;
      }

      if ([v84 isEqualToString:v64])
      {
        v58 = [v74 account];
        v59 = [v58 denyiCloudLogout];
        v60 = [v59 BOOLValue];

        if (v60)
        {
          v13 = [*(a1 + 40) _effectivePolicyForManagedSettingsIdentifier:0 type:v84 excludedIdentifiers:0];
          [v83 addObject:v13];
          goto LABEL_36;
        }
      }

LABEL_37:
      if ([v83 count])
      {
        v81 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v77, "count")}];
        v80 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v77, "count")}];
        v35 = DMFLowestPolicyPriority;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v79 = v83;
        v36 = 0;
        v37 = 0;
        v38 = [v79 countByEnumeratingWithState:&v85 objects:v102 count:16];
        if (v38)
        {
          v39 = *v86;
          do
          {
            for (k = 0; k != v38; k = k + 1)
            {
              if (*v86 != v39)
              {
                objc_enumerationMutation(v79);
              }

              v41 = *(*(&v85 + 1) + 8 * k);
              v42 = [v41 identifier];
              v43 = [v41 policy];
              v44 = [v41 priority];
              v45 = v44;
              if (v42)
              {
                v46 = [NSNumber numberWithLongLong:v43];
                [v81 setObject:v46 forKeyedSubscript:v42];

                v47 = [NSNumber numberWithLongLong:v45];
                [v80 setObject:v47 forKeyedSubscript:v42];
              }

              else
              {
                if (v43 > v36)
                {
                  v36 = v43;
                }

                if (v44 < v35)
                {
                  v35 = v44;
                }
              }

              v48 = [v41 excludedIdentifiers];
              v49 = v48;
              if (v48)
              {
                if (v37)
                {
                  [v37 unionSet:v48];
                }

                else
                {
                  v37 = [v48 mutableCopy];
                }
              }
            }

            v38 = [v79 countByEnumeratingWithState:&v85 objects:v102 count:16];
          }

          while (v38);
        }

        if ([v84 isEqualToString:v69])
        {
          v50 = [*(a1 + 40) isInLegacyDowntimeWithPolicies:v81 priorities:v80];
          goto LABEL_61;
        }

        if (([v84 isEqualToString:v68] & 1) != 0 || objc_msgSend(v84, "isEqualToString:", v66))
        {
          v50 = [*(a1 + 40) isInManagedSettingsDowntime];
LABEL_61:
          v52 = v50;
        }

        else
        {
          v52 = 0;
        }

        v53 = [DMFEffectivePolicy alloc];
        if ([v81 count])
        {
          v54 = v81;
        }

        else
        {
          v54 = 0;
        }

        if ([v80 count])
        {
          v55 = v80;
        }

        else
        {
          v55 = 0;
        }

        LOBYTE(v62) = v52;
        v51 = [v53 initWithType:v84 defaultPolicy:v36 currentPoliciesByIdentifier:v54 defaultPriority:v35 prioritiesByIdentifier:v55 excludedIdentifiers:v37 downtimeEnforced:v62];

        goto LABEL_69;
      }

      v51 = 0;
LABEL_69:
      v56 = [*(a1 + 40) effectivePolicyCache];
      objc_sync_enter(v56);
      v57 = [*(a1 + 40) effectivePolicyCache];
      [v57 setObject:v51 forKeyedSubscript:v84];

      objc_sync_exit(v56);
      v21 = v74;
LABEL_70:

      if (++v76 == v73)
      {
        v61 = [obj countByEnumeratingWithState:&v98 objects:v106 count:16];
        v73 = v61;
        if (!v61)
        {
          goto LABEL_77;
        }

        goto LABEL_8;
      }
    }

    v29 = *(a1 + 40);
    v13 = [v74 shield];
    v30 = [v13 applicationCategories];
    v31 = [v29 _effectiveCategoryPoliciesForCategoryShieldPolicy:v30 type:v84 excludedIdentifiersKey:@"bundleIdentifier"];
    [v83 addObjectsFromArray:v31];

LABEL_36:
    goto LABEL_37;
  }

  v6 = v4;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100086454(v65);
    v6 = v5;
  }

LABEL_78:
}

void sub_10006172C(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = [*(a1 + 32) _effectivePolicyForType:DMFEffectivePolicyTypeCategory];
    v6 = [*(a1 + 32) _effectivePolicyForType:DMFEffectivePolicyTypeApplicationCategory];
    if (v5)
    {
      v7 = [v5 downtimeEnforced];
    }

    else
    {
      v7 = 0;
    }

    v19 = v6;
    if (v6)
    {
      v8 = [v6 downtimeEnforced];
    }

    else
    {
      v8 = 0;
    }

    v9 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v21, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = *(a1 + 40);
    v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = v7 | v8;
      v13 = *v23;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v21 objectForKeyedSubscript:v15];
          v17 = [DMFCommunicationPolicyMonitor communicationPolicyForApplicationPolicy:v16 downtimeEnforced:v12 & 1];

          v18 = [NSNumber numberWithUnsignedInteger:v17];
          [v9 setObject:v18 forKeyedSubscript:v15];
        }

        v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_100062F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100062F30(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 48;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  [*(a1 + 32) lock];
  [*(a1 + 32) unlockWithCondition:*(a1 + 56)];
}

void sub_100063238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100063260(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 48;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  [*(a1 + 32) lock];
  [*(a1 + 32) unlockWithCondition:*(a1 + 56)];
}

void sub_10006344C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = DMFPolicyLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000862A0(v6);
    }

    v8 = *(a1 + 72);
    v63 = NSUnderlyingErrorKey;
    v64 = v6;
    v9 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v10 = DMFErrorWithCodeAndUserInfo();
    (*(v8 + 16))(v8, v10);
  }

  else
  {
    v9 = +[DMDEffectivePolicy fetchRequest];
    if ([*(a1 + 32) count])
    {
      [NSPredicate predicateWithFormat:@"(%K IN %@) AND (%K == %@) AND (%K == %@)", @"identifier", *(a1 + 32), @"organizationIdentifier", *(a1 + 40), @"declarationIdentifier", *(a1 + 48)];
    }

    else
    {
      [NSPredicate predicateWithFormat:@"(%K == nil) AND (%K == %@) AND (%K == %@)", @"identifier", @"organizationIdentifier", *(a1 + 40), @"declarationIdentifier", *(a1 + 48), v37];
    }
    v11 = ;
    [v9 setPredicate:v11];

    v59 = 0;
    v12 = [v9 execute:&v59];
    v10 = v59;
    if (v12)
    {
      v43 = v12;
      if ([*(a1 + 32) count])
      {
        v38 = v10;
        v39 = v9;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        obj = *(a1 + 32);
        v45 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
        v13 = 0;
        if (v45)
        {
          v44 = *v56;
          v41 = a1;
          v42 = v5;
          do
          {
            for (i = 0; i != v45; i = i + 1)
            {
              if (*v56 != v44)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v55 + 1) + 8 * i);
              v51 = 0u;
              v52 = 0u;
              v53 = 0u;
              v54 = 0u;
              v16 = v12;
              v17 = [v16 countByEnumeratingWithState:&v51 objects:v61 count:16];
              if (v17)
              {
                v18 = *v52;
                while (2)
                {
                  for (j = 0; j != v17; j = j + 1)
                  {
                    if (*v52 != v18)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v20 = *(*(&v51 + 1) + 8 * j);
                    v21 = [v20 identifier];
                    v22 = [v21 isEqual:v15];

                    if (v22)
                    {
                      v17 = v20;
                      goto LABEL_25;
                    }
                  }

                  v17 = [v16 countByEnumeratingWithState:&v51 objects:v61 count:16];
                  if (v17)
                  {
                    continue;
                  }

                  break;
                }

LABEL_25:
                a1 = v41;
                v5 = v42;
                v12 = v43;
              }

              v13 |= [*(a1 + 56) _upsertPolicy:*(a1 + 80) forType:*(a1 + 64) identifier:v15 priority:*(a1 + 88) organizationIdentifier:*(a1 + 40) declarationIdentifier:*(a1 + 48) policyToUpdate:v17 managedObjectContext:v5];
            }

            v45 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
          }

          while (v45);
        }

        v9 = v39;
        v6 = 0;
        v10 = v38;
      }

      else if ([v12 count])
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v26 = v12;
        v27 = [v26 countByEnumeratingWithState:&v47 objects:v60 count:16];
        if (v27)
        {
          v28 = v27;
          v13 = 0;
          v29 = *v48;
          do
          {
            for (k = 0; k != v28; k = k + 1)
            {
              if (*v48 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v13 |= [*(a1 + 56) _upsertPolicy:*(a1 + 80) forType:*(a1 + 64) identifier:0 priority:*(a1 + 88) organizationIdentifier:*(a1 + 40) declarationIdentifier:*(a1 + 48) policyToUpdate:*(*(&v47 + 1) + 8 * k) managedObjectContext:v5];
            }

            v28 = [v26 countByEnumeratingWithState:&v47 objects:v60 count:16];
          }

          while (v28);
        }

        else
        {
          LOBYTE(v13) = 0;
        }
      }

      else
      {
        LOBYTE(v13) = [*(a1 + 56) _upsertPolicy:*(a1 + 80) forType:*(a1 + 64) identifier:0 priority:*(a1 + 88) organizationIdentifier:*(a1 + 40) declarationIdentifier:*(a1 + 48) policyToUpdate:0 managedObjectContext:v5];
      }

      v46 = v10;
      v31 = [v5 save:&v46];
      v32 = v46;

      if (v31)
      {
        if (v13)
        {
          v33 = [NSSet setWithObject:*(a1 + 64)];
          [*(a1 + 56) _handleChangesToPolicyTypes:v33];
        }

        (*(*(a1 + 72) + 16))();
      }

      else
      {
        v34 = DMFPolicyLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_1000866D0(v32);
        }

        v35 = *(a1 + 72);
        v36 = DMFErrorWithCodeAndUserInfo();
        (*(v35 + 16))(v35, v36);
      }

      v10 = v32;
      v12 = v43;
    }

    else
    {
      v23 = DMFPolicyLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10008675C(v10);
      }

      v24 = *(a1 + 72);
      v25 = DMFErrorWithCodeAndUserInfo();
      (*(v24 + 16))(v24, v25);
    }
  }
}

void sub_100063CD4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = DMFPolicyLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000862A0(v6);
    }

    v8 = a1[7];
    v49 = NSUnderlyingErrorKey;
    v50 = v6;
    v9 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v10 = DMFErrorWithCodeAndUserInfo();
    (*(v8 + 16))(v8, v10);
  }

  else
  {
    v9 = +[DMDEffectivePolicy fetchRequest];
    v35 = a1;
    v11 = [NSPredicate predicateWithFormat:@"(%K == %@) AND (%K == %@)", @"organizationIdentifier", a1[4], @"declarationIdentifier", a1[5]];
    [v9 setPredicate:v11];

    v41 = 0;
    v12 = [v9 execute:&v41];
    v33 = v41;
    v13 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v37 + 1) + 8 * i);
          v20 = [v19 type];
          [v13 addObject:v20];

          [v5 deleteObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v37 objects:v48 count:16];
      }

      while (v16);
    }

    v36 = v33;
    v21 = [v5 save:&v36];
    v10 = v36;

    if (v21)
    {
      if ([v14 count])
      {
        [v35[6] _handleChangesToPolicyTypes:v13];
      }

      v22 = DMFPolicyLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v13 allObjects];
        v24 = [v23 componentsJoinedByString:{@", "}];
        v25 = v35[5];
        *buf = 138543618;
        v43 = v24;
        v44 = 2114;
        v45 = v25;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Successfully removed policy types %{public}@ for declaration %{public}@", buf, 0x16u);
      }

      (*(v35[7] + 16))();
    }

    else
    {
      v26 = DMFPolicyLog();
      v27 = v35;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v34 = [v13 allObjects];
        v30 = [v34 componentsJoinedByString:{@", "}];
        v31 = v35[5];
        v32 = [v10 verboseDescription];
        *buf = 138543874;
        v43 = v30;
        v44 = 2114;
        v45 = v31;
        v27 = v35;
        v46 = 2114;
        v47 = v32;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Error removing policies types %{public}@ for declaration %{public}@: %{public}@", buf, 0x20u);
      }

      v28 = v27[7];
      v29 = DMFErrorWithCodeAndUserInfo();
      (*(v28 + 16))(v28, v29);
    }
  }
}

void sub_1000641FC(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = +[DMDEffectivePolicy fetchRequest];
    v6 = *(a1 + 32);
    if (!v6)
    {
      v6 = &__NSArray0__struct;
    }

    v7 = [NSPredicate predicateWithFormat:@"NOT (%K IN %@)", @"organizationIdentifier", v6];
    [v5 setPredicate:v7];

    [*(a1 + 40) _removeOrphanedPoliciesFromFetchRequest:v5 managedObjectContext:v8 completionHandler:*(a1 + 48)];
  }
}

void sub_1000643A0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = +[DMDEffectivePolicy fetchRequest];
    v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v8 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100064514;
    v11[3] = &unk_1000CFCB0;
    v12 = @"organizationIdentifier";
    v13 = @"declarationIdentifier";
    v9 = v7;
    v14 = v9;
    [v8 enumerateKeysAndObjectsUsingBlock:v11];
    if ([v9 count])
    {
      v10 = [NSCompoundPredicate orPredicateWithSubpredicates:v9];
      [v6 setPredicate:v10];
    }

    [*(a1 + 40) _removeOrphanedPoliciesFromFetchRequest:v6 managedObjectContext:v5 completionHandler:*(a1 + 48)];
  }
}

void sub_100064514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [NSPredicate predicateWithFormat:@"(%K == %@) AND NOT (%K IN %@)", *(a1 + 32), a2, *(a1 + 40), a3];
  [*(a1 + 48) addObject:v4];
}

void sub_100064D98(uint64_t a1)
{
  v2 = +[DMDPolicyRegistration fetchRequest];
  v33 = 0;
  v3 = [v2 execute:&v33];
  v4 = v33;
  v5 = v4;
  if (v3)
  {
    v23 = v4;
    v24 = v2;
    v6 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v13 = [v12 policyTypes];
          v14 = [v13 intersectsSet:*(a1 + 32)];

          if (v14)
          {
            v15 = [v12 identifier];
            [v6 addObject:v15];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v9);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = v6;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v36 count:16];
    v2 = v24;
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v25 + 1) + 8 * j);
          v22 = DMFPolicyLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v35 = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Posting notification for registration %{public}@", buf, 0xCu);
          }

          notify_post([v21 UTF8String]);
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v36 count:16];
      }

      while (v18);
    }

    v5 = v23;
  }

  else
  {
    v16 = DMFPolicyLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100086874(v5);
    }
  }
}

void sub_10006510C(uint64_t a1)
{
  v4 = +[NSDate now];
  v2 = +[NSCalendar currentCalendar];
  v3 = [v2 dateByAddingUnit:16 value:1 toDate:v4 options:0];

  [*(a1 + 32) _enableEmergencyModeUntilDate:v3 referenceDate:v4 withCompletionHandler:*(a1 + 40)];
}

void sub_100065270(uint64_t a1)
{
  v3 = +[NSDate now];
  v2 = [v3 dateByAddingTimeInterval:*(a1 + 48)];
  [*(a1 + 32) _enableEmergencyModeUntilDate:v2 referenceDate:v3 withCompletionHandler:*(a1 + 40)];
}

uint64_t sub_1000655E0(uint64_t a1)
{
  [@"com.apple.alarm" UTF8String];
  [@"com.apple.dmd.emergency-mode.alarm" UTF8String];
  xpc_set_event();
  notify_post([DMFEmergencyModeChangedNotification UTF8String]);
  v2 = DMFEmergencyModeLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Disabling Emergency Mode", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100065750(uint64_t a1)
{
  [@"com.apple.alarm" UTF8String];
  [@"com.apple.dmd.emergency-mode.alarm" UTF8String];
  v2 = xpc_copy_event();
  if (v2)
  {
    date = xpc_dictionary_get_date(v2, [@"Date" UTF8String]);
    if (date <= 0x3B9AC9FF)
    {
      v4 = DMFEmergencyModeLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        sub_1000869E0();
      }

      v5 = *(a1 + 32);
      v6 = DMFErrorWithCodeAndUserInfo();
      (*(v5 + 16))(v5, 0, v6);
      goto LABEL_16;
    }

    v6 = [NSDate dateWithTimeIntervalSince1970:(date / 0x3B9ACA00)];
    [v6 timeIntervalSinceNow];
    v9 = v8;
    v10 = DMFEmergencyModeLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9 <= 0.0)
    {
      if (v11)
      {
        v15 = 138543618;
        v16 = v6;
        v17 = 2048;
        v18 = v9;
        v12 = "Emergency Mode ended on %{public}@, %f seconds ago";
        goto LABEL_14;
      }
    }

    else if (v11)
    {
      v15 = 138543618;
      v16 = v6;
      v17 = 2048;
      v18 = v9;
      v12 = "Emergency Mode will end on %{public}@, %f seconds from now";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, &v15, 0x16u);
    }

    v13 = *(a1 + 32);
    v14 = [NSNumber numberWithDouble:v9];
    (*(v13 + 16))(v13, v14, 0);

LABEL_16:
    goto LABEL_17;
  }

  v7 = DMFEmergencyModeLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Emergency Mode is not set", &v15, 2u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_17:
}

void sub_100065B04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v8 objectForKeyedSubscript:{v13, v20}];
          v15 = v14;
          if (v14)
          {
            [v14 doubleValue];
            if (v16 <= 0.0)
            {
              [v7 addObject:v13];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v17 = *(a1 + 32);
    v18 = [v7 copy];
    (*(v17 + 16))(v17, v18, 0);
  }

  else
  {
    v19 = DMFPolicyLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100086A20(v6);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100066494(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void sub_1000666D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = qword_1000FF280;
  qword_1000FF280 = v2;

  v4 = +[UMUserManager sharedManager];
  [v4 registerUserSwitchStakeHolder:qword_1000FF280];
}

void sub_100066778(id a1)
{
  v2 = +[UMUserManager sharedManager];
  if ([v2 isMultiUser])
  {
    v1 = [v2 currentUser];
    byte_1000FF290 = [v1 userType] == 1;
  }

  else
  {
    byte_1000FF290 = 0;
  }
}

id _assertionQueue()
{
  if (qword_1000FF2A8 != -1)
  {
    sub_100086B38();
  }

  v1 = qword_1000FF2A0;

  return v1;
}

void sub_100066844(id a1)
{
  qword_1000FF2A0 = dispatch_queue_create("DMDPowerAssertion Queue", 0);

  _objc_release_x1();
}

id sub_100066B50(uint64_t a1)
{
  if ([*(a1 + 32) isParked])
  {
    v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Trying to park a power assertion that's already parked." userInfo:0];
    objc_exception_throw(v3);
  }

  [*(a1 + 32) setIsParked:1];
  v2 = *(a1 + 32);

  return [v2 _release];
}

id sub_100066C54(uint64_t a1)
{
  if (([*(a1 + 32) isParked] & 1) == 0)
  {
    v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Trying to unpark a power assertion that's not parked." userInfo:0];
    objc_exception_throw(v3);
  }

  [*(a1 + 32) setIsParked:0];
  v2 = *(a1 + 32);

  return [v2 _retain];
}

id sub_100067188(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 endOperationWithError:a2];
  }

  else
  {
    return [v2 endOperationWithResultObject:0];
  }
}

id sub_100067334(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 endOperationWithError:a2];
  }

  else
  {
    return [v2 endOperationWithResultObject:0];
  }
}

void sub_1000677AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100086B4C(v6);
    }

    [*(a1 + 32) endOperationWithError:v6];
    goto LABEL_26;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100086BCC(v5);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_21;
  }

  v7 = [v5 objectForKeyedSubscript:@"kCTCellularPlanSlotVinylSlotInfoListKey"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_21;
  }

  if (!v7)
  {
LABEL_21:
    v16 = [*(a1 + 32) invalidResponseError:v5];
    v8 = 0;
    goto LABEL_22;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v9)
  {
LABEL_19:
    v16 = 0;
LABEL_28:

LABEL_22:
    v17 = *(a1 + 32);
    if (v16)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v10 = v9;
  v11 = *v25;
  obj = v8;
LABEL_12:
  v12 = 0;
  while (1)
  {
    if (*v25 != v11)
    {
      objc_enumerationMutation(obj);
    }

    v13 = *(*(&v24 + 1) + 8 * v12);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = [*(a1 + 32) invalidResponseError:v5];
      v8 = obj;
      goto LABEL_28;
    }

    v14 = [v13 objectForKeyedSubscript:@"kCTCellularPlanSlotCardType"];
    v15 = [v14 isEqual:&off_1000D7AC0];

    if (v15)
    {
      break;
    }

    if (v10 == ++v12)
    {
      v8 = obj;
      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100086C4C(v13);
  }

  v16 = [v13 objectForKeyedSubscript:@"kCTCellularPlanSlotCsnKey"];
  v8 = obj;

  if (v16)
  {
    v18 = *(a1 + 40);
    v19 = [*(a1 + 48) eSIMServerURL];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100067B10;
    v22[3] = &unk_1000CDBD0;
    v20 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    v23 = v20;
    [v18 refreshCellularPlansWithCSN:v16 serverURL:v19 completion:v22];

    goto LABEL_25;
  }

  v17 = *(a1 + 32);
LABEL_23:
  v16 = DMFErrorWithCodeAndUserInfo();
LABEL_24:
  [v17 endOperationWithError:v16];
LABEL_25:

LABEL_26:
}

id sub_100067B10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 endOperationWithError:a2];
  }

  else
  {
    return [v2 endOperationWithResultObject:0];
  }
}

void sub_100067CBC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    [*(a1 + 32) endOperationWithError:a3];
  }

  else
  {
    v5 = objc_opt_new();
    [v5 setNumberOfUpdates:v6];
    [*(a1 + 32) endOperationWithResultObject:v5];
  }
}

id sub_100068048(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 endOperationWithError:a2];
  }

  else
  {
    return [v2 endOperationWithResultObject:0];
  }
}

void sub_100068318(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100086D10(a1);
    }

    [*(a1 + 40) endOperationWithError:v3];
  }

  else
  {
    v4 = +[DMDAppController sharedController];
    v5 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100068414;
    v8[3] = &unk_1000CDBD0;
    v6 = v5;
    v7 = *(a1 + 40);
    v9 = v6;
    v10 = v7;
    [v4 setTapToPayScreenLock:0 forBundleIdentifier:v6 completion:v8];
  }
}

void sub_100068414(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100086D84(a1);
    }

    [*(a1 + 40) endOperationWithError:v3];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = objc_opt_class();
    v6 = *(a1 + 32);
    v12 = 0;
    v7 = [v5 removeAppMetadataForBundleIdentifier:v6 error:&v12];
    v8 = v12;
    if (v7)
    {
      v9 = objc_opt_class();
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100068520;
      v11[3] = &unk_1000CEE68;
      v10 = *(a1 + 32);
      v11[4] = *(a1 + 40);
      [v9 removeAppWithBundleIdentifier:v10 completion:v11];
    }

    else
    {
      [*(a1 + 40) endOperationWithError:v8];
    }
  }
}

void sub_100068520(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v6 = NSUnderlyingErrorKey;
    v7 = a2;
    v3 = a2;
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    v5 = DMFErrorWithCodeAndUserInfo();
    [v2 endOperationWithError:v5];
  }

  else
  {
    v4 = 0;
    [v2 endOperationWithResultObject:0];
  }
}

id sub_100068D70(uint64_t a1)
{
  v2 = DMFAppLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Start uninstalling app with bundle identifier: %{public}@", &v5, 0xCu);
  }

  return [*(a1 + 40) startUninstallingAppWithBundleIdentifier:*(a1 + 32) completion:*(a1 + 48)];
}

id sub_100068E24(uint64_t a1)
{
  v2 = DMFAppLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Start uninstalling app with bundle identifier: %{public}@", &v5, 0xCu);
  }

  return [*(a1 + 40) startUninstallingAppWithBundleIdentifier:*(a1 + 32) completion:*(a1 + 48)];
}

void sub_100068EF0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100069314(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    if (*(a1 + 48) == 1)
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v14 = 0;
      v10 = [v8 _removeRestrictionsWithRequest:v9 error:&v14];
      v11 = v14;
      v6 = v11;
      if ((v10 & 1) == 0)
      {
        v12 = *(a1 + 32);
        if (!v11)
        {
          v6 = DMFErrorWithCodeAndUserInfo();
          [v12 endOperationWithError:v6];
          goto LABEL_10;
        }

        v15 = NSUnderlyingErrorKey;
        v16 = v11;
        v7 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v13 = DMFErrorWithCodeAndUserInfo();
        [v12 endOperationWithError:v13];

        goto LABEL_3;
      }
    }

    else
    {
      v6 = 0;
    }

    [*(a1 + 32) endOperationWithResultObject:0];
    goto LABEL_10;
  }

  v5 = *(a1 + 32);
  v17 = NSUnderlyingErrorKey;
  v18 = v3;
  v6 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v7 = DMFErrorWithCodeAndUserInfo();
  [v5 endOperationWithError:v7];
LABEL_3:

LABEL_10:
}

id sub_100069B54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 endOperationWithError:a2];
  }

  else
  {
    return [v2 endOperationWithResultObject:0];
  }
}

id sub_10006A1C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 endOperationWithError:a2];
  }

  else
  {
    return [v2 endOperationWithResultObject:0];
  }
}

id sub_10006A524(uint64_t a1)
{
  [*(a1 + 32) endOperationWithResultObject:0];
  v2 = *(a1 + 40);

  return [v2 stayAliveThroughHereAtLeast];
}

void sub_10006AABC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v6 = NSUnderlyingErrorKey;
    v7 = a2;
    v3 = a2;
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    v5 = DMFErrorWithCodeAndUserInfo();
    [v2 endOperationWithError:v5];
  }

  else
  {
    v4 = 0;
    [v2 endOperationWithResultObject:0];
  }
}

id sub_10006BCD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 endOperationWithError:a2];
  }

  else
  {
    return [v2 endOperationWithResultObject:0];
  }
}

void sub_10006C130(id a1)
{
  qword_1000FF2C0 = objc_opt_new();

  _objc_release_x1();
}

id sub_10006CAA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    return [v3 endOperationWithError:a2];
  }

  else
  {
    v5 = +[DMDAppController sharedController];
    [v5 sendManagedAppsChangedNotification];

    v6 = *(a1 + 32);

    return [v6 endOperationWithResultObject:0];
  }
}

void sub_10006D148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006D16C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (v5)
  {
    [WeakRetained endOperationWithError:v5];
  }

  else
  {
    [WeakRetained endOperationWithResultObject:0];
  }
}

id sub_10006DA9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 endOperationWithError:a2];
  }

  else
  {
    return [v2 endOperationWithResultObject:0];
  }
}

id sub_10006DF44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    return [v3 endOperationWithError:a2];
  }

  else
  {
    v5 = +[DMDAppController sharedController];
    [v5 sendManagedAppsChangedNotification];

    v6 = *(a1 + 32);

    return [v6 endOperationWithResultObject:0];
  }
}

void sub_10006EBD8(id a1)
{
  qword_1000FF2D0 = DMFErrorWithCodeAndUserInfo();

  _objc_release_x1();
}

uint64_t sub_10006EE54(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10006EE6C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) authenticatedAccount];
  [*(a1 + 32) setAuthenticatedAccount:0];
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(a1 + 40);
    if (v3)
    {
      (*(v4 + 16))(*(a1 + 40), 0, v3);
    }

    else
    {
      v5 = [*(a1 + 32) _storeLoginFailedError];
      (*(v4 + 16))(v4, v5, 0);
    }
  }
}

void _performBlockOnMainThread(void *a1)
{
  v1 = a1;
  v2 = +[NSThread currentThread];
  v3 = +[NSThread mainThread];

  if (v2 == v3)
  {
    v1[2](v1);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006F12C;
    block[3] = &unk_1000CF578;
    v5 = v1;
    dispatch_sync(&_dispatch_main_q, block);
  }
}

void sub_10006F304(uint64_t a1)
{
  [*(a1 + 32) completionBlock];
  if (objc_claimAutoreleasedReturnValue())
  {
    sub_1000876F0();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006F408;
  v6[3] = &unk_1000CE2E8;
  v7 = *(a1 + 40);
  [*(a1 + 32) setCompletionBlock:v6];
  v2 = *(a1 + 32);
  [objc_opt_class() timeout];
  v3 = [NSDate dateWithTimeIntervalSinceNow:?];
  v4 = [*(a1 + 32) timeoutTimer];
  [v4 setFireDate:v3];

  v5 = [*(a1 + 32) request];
  [v5 start];
}

uint64_t sub_10006F408(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10006F48C(uint64_t a1)
{
  v2 = [*(a1 + 32) completionBlock];
  if (!v2)
  {
    sub_10008771C();
  }

  v3 = +[NSDate distantFuture];
  v4 = [*(a1 + 32) timeoutTimer];
  [v4 setFireDate:v3];

  v5 = [*(a1 + 32) request];
  [v5 cancel];
}

void sub_10006F83C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = DMFErrorWithCodeAndUserInfo();
  (*(v1 + 16))(v1, v2);
}

void sub_10006FC88(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFAppLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100087748(a1);
    }

    [a1[5] endOperationWithError:v3];
  }

  else
  {
    v5 = +[DMDAppController sharedController];
    v6 = DMFBundleIdentifierErrorKey;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006FDE0;
    v12[3] = &unk_1000CFE70;
    *&v7 = a1[4];
    *(&v7 + 1) = a1[5];
    v11 = v7;
    v8 = a1[6];
    v9 = a1[7];
    *&v10 = v8;
    *(&v10 + 1) = v9;
    v13 = v11;
    v14 = v10;
    [v5 setTapToPayScreenLock:0 forBundleIdentifier:v6 completion:v12];
  }
}

void sub_10006FDE0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFAppLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000877B4(a1);
    }

    [*(a1 + 40) endOperationWithError:v3];
  }

  else
  {
    v5 = *(a1 + 32);
    v18 = 0;
    v6 = [DMDRemoveAppOperation removeAppMetadataForBundleIdentifier:v5 error:&v18];
    v7 = v18;
    if (v6)
    {
      v8 = +[DMDAppController sharedController];
      v9 = *(a1 + 32);
      v17 = 0;
      v10 = [v8 removePersonaMappingForBundleID:v9 error:&v17];
      v11 = v17;

      if ((v10 & 1) == 0)
      {
        v12 = DMFAppLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100087820((a1 + 32));
        }
      }

      v13 = +[DMDAppController sharedController];
      [v13 sendManagedAppsChangedNotification];

      v14 = [*(a1 + 48) options];
      if (([*(a1 + 56) shouldPreserveAppBinary] & 1) != 0 || (v14 & 1) == 0)
      {
        [*(a1 + 40) endOperationWithResultObject:0];
      }

      else
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10006FFC8;
        v16[3] = &unk_1000CEE68;
        v15 = *(a1 + 32);
        v16[4] = *(a1 + 40);
        [DMDRemoveAppOperation removeAppWithBundleIdentifier:v15 completion:v16];
      }
    }

    else
    {
      [*(a1 + 40) endOperationWithError:v7];
    }
  }
}

void sub_10006FFC8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v6 = NSUnderlyingErrorKey;
    v7 = a2;
    v3 = a2;
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    v5 = DMFErrorWithCodeAndUserInfo();
    [v2 endOperationWithError:v5];
  }

  else
  {
    v4 = 0;
    [v2 endOperationWithResultObject:0];
  }
}

void sub_100070444(id a1)
{
  qword_1000FF2E0 = objc_opt_new();

  _objc_release_x1();
}

void sub_10007126C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007129C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000712B4(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000717E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100071814(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100071B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100071BAC(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100071E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100071EAC(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100072194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000721D0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = *(*(a1[4] + 8) + 40);
  v11 = a4;
  v12 = a3;
  [v10 setDownload:a2];
  [*(*(a1[4] + 8) + 40) setInstallPolicy:v12];

  [*(*(a1[4] + 8) + 40) setAutoInstallOperation:v11];
  v13 = *(a1[5] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v9;
  v15 = v9;

  dispatch_semaphore_signal(*(*(a1[6] + 8) + 40));
}

void sub_100072D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100072D3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

void sub_100072FCC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v9 = [v5 _nameForOperationGroup:{objc_msgSend(a2, "unsignedIntegerValue")}];
  v7 = *(a1 + 40);
  v8 = [v6 operations];

  [v7 appendFormat:@"\nGroup: %@\n%@", v9, v8];
}

void sub_1000735C0(uint64_t a1)
{
  v5 = 0;
  v2 = [NSRegularExpression regularExpressionWithPattern:@"^DM[DF](\\w+)Request$" options:0 error:&v5];
  v3 = v5;
  v4 = qword_1000FF2F0;
  qword_1000FF2F0 = v2;

  if (!qword_1000FF2F0)
  {
    sub_100087AC0(a1, v3);
  }
}

void sub_1000740B8(id a1)
{
  v1 = qword_1000FF300;
  qword_1000FF300 = &off_1000D7B00;
}

void sub_10007478C(uint64_t a1)
{
  v8 = 0;
  v2 = [Libsysdiagnose sysdiagnoseWithMetadata:0 withError:&v8];
  v3 = v8;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v9 = NSUnderlyingErrorKey;
    v10 = v3;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = DMFErrorWithCodeAndUserInfo();
    [v5 endOperationWithError:v7];
  }

  else
  {
    MCSendDiagnosticsCollectedNotification();
    [*(a1 + 32) endOperationWithResultObject:0];
  }

  [*(a1 + 40) stayAliveThroughHereAtLeast];
}

void sub_100074B1C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = v5;
  if (a3)
  {
    [*(a1 + 32) endOperationWithError:a3];
  }

  else
  {
    v6 = [v5 bundleIdentifier];

    v7 = *(a1 + 32);
    if (v6)
    {
      [v7 _runWithRequest:*(a1 + 40) metadata:v8];
    }

    else
    {
      [v7 endOperationWithDMFErrorCode:2606];
    }
  }
}

id sub_100074EB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 endOperationWithError:a2];
  }

  else
  {
    return [v3 _endOperationWithBundleIdentifier:*(a1 + 40)];
  }
}

void sub_1000752CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2 == 1)
  {
    [*(a1 + 32) _setState:7 forBundleIdentifier:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    [v4 _startUpdateAppForRequest:v5 metadata:v6];
  }

  else
  {
    v7 = [*(a1 + 56) bundleIdentifier];
    [v3 _setState:15 forBundleIdentifier:v7];
  }
}

void sub_100075534(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _showUpdateFailurePromptIfNeededForRequest:*(a1 + 40) metadata:*(a1 + 48)];
    [*(a1 + 32) endOperationWithError:v3];
  }

  else
  {
    v4 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = *(a1 + 40);
      v27 = +[DMDAppController sharedController];
      v26 = [v5 VPNUUIDString];
      v25 = [v5 cellularSliceUUIDString];
      v24 = [v5 contentFilterUUIDString];
      v23 = [v5 DNSProxyUUIDString];
      v22 = [v5 relayUUIDString];
      v6 = [v5 associatedDomains];
      v21 = [v5 associatedDomainsEnableDirectDownloads];
      v20 = [v5 allowUserToHide];
      v7 = [v5 allowUserToLock];
      v8 = [v5 configuration];
      v9 = [v5 managementOptions];
      v10 = [v5 sourceIdentifier];
      [v27 setVPNUUIDString:v26 cellularSliceUUIDString:v25 contentFilterUUIDString:v24 DNSProxyUUIDString:v23 relayUUIDString:v22 associatedDomains:v6 enableDirectDownloads:v21 allowUserToHide:v20 allowUserToLock:v7 configuration:v8 options:v9 sourceIdentifier:v10 forBundleIdentifier:*(a1 + 56)];

      v11 = +[DMDAppController sharedController];
      v12 = [v5 removable];
      v13 = *(a1 + 56);
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100075878;
      v30[3] = &unk_1000CEE68;
      v14 = v5;
      v31 = v14;
      [v11 setRemovability:v12 forBundleIdentifier:v13 completion:v30];

      v15 = +[DMDAppController sharedController];
      v16 = [v14 tapToPayScreenLock];
      v17 = *(a1 + 56);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000758E0;
      v28[3] = &unk_1000CEE68;
      v29 = v14;
      v18 = v14;
      [v15 setTapToPayScreenLock:v16 forBundleIdentifier:v17 completion:v28];

      v19 = +[DMDAppController sharedController];
      [v19 sendManagedAppsChangedNotification];
    }

    [*(a1 + 32) _endOperationWithBundleIdentifier:*(a1 + 56)];
  }
}

void sub_100075878(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFAppLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100087BB4(a1);
    }
  }
}

void sub_1000758E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DMFAppLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100087C4C(a1);
    }
  }
}

id sub_100075EE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 endOperationWithError:a2];
  }

  else
  {
    return [v2 endOperationWithResultObject:0];
  }
}

id sub_1000761D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 endOperationWithError:a2];
  }

  else
  {
    return [v2 endOperationWithResultObject:0];
  }
}

uint64_t sub_1000765A0(uint64_t a1)
{
  qword_1000FF310 = [objc_alloc(*(a1 + 32)) initPrivate];

  return _objc_release_x1();
}

void sub_1000768A4(id *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [a1[4] identifier];
    v9 = 138543362;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Adding user notification: %{public}@", &v9, 0xCu);
  }

  v3 = [a1[5] notifications];
  [v3 addObject:a1[4]];

  v4 = [a1[6] copy];
  v5 = [a1[5] completionsByIdentifier];
  v6 = [a1[4] identifier];
  [v5 setObject:v4 forKeyedSubscript:v6];

  v7 = [a1[5] notifications];
  v8 = [v7 count];

  if (v8 == 1)
  {
    [a1[5] _showNextNotification];
  }
}

void sub_100076C3C(uint64_t a1)
{
  v2 = [*(a1 + 32) notifications];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [v3 defaultButtonTitle];
    if (v4)
    {
      v5 = v4;
      v6 = [v3 alternateButtonTitle];
      if (v6)
      {
        v7 = [v3 otherButtonTitle];
        v8 = v7 != 0;

        v6 = (32 * v8);
      }

      else
      {
      }
    }

    else
    {
      v6 = 0;
    }

    error = 0;
    v9 = [*(a1 + 32) _dictFromNotification:v3];
    [v3 timeout];
    v11 = CFUserNotificationCreate(kCFAllocatorDefault, v10, v6, &error, v9);
    if (v11)
    {
      v12 = v11;
      [v3 setNotificationRef:v11];
      CFRelease(v12);
      v13 = [v3 identifier];
      RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v12, sub_100076E90, 0);
      if (RunLoopSource)
      {
        v15 = RunLoopSource;
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, v15, kCFRunLoopCommonModes);
        CFRelease(v15);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v19 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "User notification started: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100087E4C(v13);
        }

        [*(a1 + 32) _completeNotification:v3 response:4];
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100087ECC();
      }

      [*(a1 + 32) _completeNotification:v3 response:4];
    }
  }
}

void sub_100076E90(uint64_t a1, uint64_t a2)
{
  v4 = +[DMDUserNotificationController sharedController];
  [v4 _notificationRef:a1 wasDismissedWithFlags:a2];
}

void sub_100077100(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) notifications];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v12 + 1) + 8 * v6);
      if ([v7 notificationRef] == *(a1 + 40))
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v8 = v7;

    if (!v8)
    {
      return;
    }

    v9 = *(a1 + 48);
    if (v9 < 4)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 0;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 identifier];
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "User notification ended: %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) _completeNotification:v8 response:v10];
  }

  else
  {
LABEL_9:
    v8 = v2;
  }
}

uint64_t sub_100077504(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000FF320 = objc_opt_new();

  return _objc_release_x1();
}

void sub_10007763C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000776C0;
  block[3] = &unk_1000CE5A0;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100077780()
{
  if (qword_1000FF340 != -1)
  {
    sub_100087F14();
  }

  v1 = qword_1000FF338;

  return v1;
}

void sub_1000777C4(id a1)
{
  v1 = +[MCProfileConnection sharedConnection];
  v2 = [v1 appWhitelistState];

  if (v2)
  {
    v3 = v2 == 6;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (qword_1000FF330 && ([qword_1000FF330 displayInAppWhitelistModes] & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Dismissing notification because we entered limited apps mode.", buf, 2u);
      }

      v4 = [qword_1000FF330 notification];
      CFUserNotificationCancel(v4);

      v5 = qword_1000FF330;
      qword_1000FF330 = 0;
    }

    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = sub_100077A98();
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          if ([v13 displayInAppWhitelistModes])
          {
            v14 = v7;
          }

          else
          {
            v14 = v6;
          }

          [v14 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v10);
    }

    v15 = sub_100077A98();
    [v15 removeAllObjects];

    v16 = sub_100077A98();
    [v16 addObjectsFromArray:v7];

    if ([v6 count])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v17 = [v6 count];
        *buf = 67109120;
        v26 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Canceling %d pending notifications because we entered limited apps mode.", buf, 8u);
      }

      v18 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100077ADC;
      block[3] = &unk_1000CE5A0;
      v20 = v6;
      dispatch_async(v18, block);
    }
  }
}

id sub_100077A98()
{
  if (qword_1000FF350 != -1)
  {
    sub_100087F28();
  }

  v1 = qword_1000FF348;

  return v1;
}

void sub_100077ADC(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = [v6 completionBlock];

        if (v7)
        {
          v8 = [v6 completionBlock];
          v8[2](v8, 3);
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }
}

void sub_100077CD8(uint64_t a1)
{
  v2 = sub_100077780();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100077D88;
  v3[3] = &unk_1000D0098;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_barrier_sync(v2, v3);
}

void sub_100077D88(uint64_t a1)
{
  if (qword_1000FF330)
  {
    v2 = *(a1 + 32);
    if ((*(*(a1 + 32) + 16))())
    {
      v3 = [qword_1000FF330 notification];
      CFUserNotificationCancel(v3);
    }
  }

  v4 = sub_100077A98();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100077F38;
  v13[3] = &unk_1000D0070;
  v14 = *(a1 + 32);
  v5 = [NSPredicate predicateWithBlock:v13];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  v7 = sub_100077A98();
  [v7 removeObjectsInArray:v6];

  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100077F48;
  block[3] = &unk_1000CE8C0;
  v11 = v6;
  v12 = *(a1 + 40);
  v9 = v6;
  dispatch_async(v8, block);
}

uint64_t sub_100077F48(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 completionBlock];

        if (v8)
        {
          v9 = [v7 completionBlock];
          v9[2](v9, 3);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000783D0(uint64_t a1)
{
  [*(a1 + 32) unpark];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10007842C(uint64_t a1)
{
  v2 = sub_100077A98();
  [v2 addObject:*(a1 + 32)];

  sub_100078474();
}

void sub_100078474()
{
  if (qword_1000FF330)
  {
    return;
  }

  v0 = sub_100077A98();
  if (![v0 count])
  {
    goto LABEL_26;
  }

  v1 = kCFUserNotificationAlertHeaderKey;
  v2 = kCFUserNotificationAlertMessageKey;
  v3 = kCFUserNotificationDefaultButtonTitleKey;
  v4 = kCFUserNotificationAlternateButtonTitleKey;
  v5 = kCFUserNotificationOtherButtonTitleKey;
  v43 = SBUserNotificationDontDismissOnUnlock;
  v41 = v47;
  while (1)
  {
    v6 = [v0 objectAtIndexedSubscript:{0, v41}];
    v7 = objc_opt_new();
    v8 = [v6 title];
    [v7 setObject:v8 forKeyedSubscript:v1];

    v9 = [v6 message];
    [v7 setObject:v9 forKeyedSubscript:v2];

    v10 = [v6 defaultButtonText];
    [v7 setObject:v10 forKeyedSubscript:v3];

    v11 = [v6 alternateButtonText];
    [v7 setObject:v11 forKeyedSubscript:v4];

    v12 = [v6 otherButtonText];
    [v7 setObject:v12 forKeyedSubscript:v5];

    v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 displayOnLockScreen]);
    [v7 setObject:v13 forKeyedSubscript:kCFUserNotificationAlertTopMostKey];

    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:v43];
    v14 = [v6 defaultButtonText];
    if (v14)
    {
      v15 = v14;
      v16 = [v6 alternateButtonText];
      if (v16)
      {
        v17 = v16;
        v18 = [v6 otherButtonText];
        v42 = v0;
        v19 = v5;
        v20 = v4;
        v21 = v3;
        v22 = v2;
        v23 = v1;
        v24 = v18 != 0;

        v25 = 32 * v24;
        v1 = v23;
        v2 = v22;
        v3 = v21;
        v4 = v20;
        v5 = v19;
        v0 = v42;
        goto LABEL_9;
      }
    }

    v25 = 0;
LABEL_9:
    error = 0;
    v26 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, v25, &error, v7);
    if (!v26)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100087F80(v49, &error, v50);
      }

      goto LABEL_16;
    }

    v27 = v26;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v26, sub_100079188, 0);
    if (RunLoopSource)
    {
      break;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100087F3C(&v44, v45);
    }

    CFRelease(v27);
LABEL_16:

    v0 = sub_100077A98();
    if (![v0 count])
    {
      goto LABEL_26;
    }
  }

  v29 = RunLoopSource;
  v30 = sub_100077A98();
  [v30 removeObjectAtIndex:0];

  objc_storeStrong(&qword_1000FF330, v6);
  [v6 setNotification:v27];
  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, v29, kCFRunLoopCommonModes);
  CFRelease(v29);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [v6 title];
    v33 = [v6 message];
    v34 = [v6 defaultButtonText];
    v35 = [v6 alternateButtonText];
    v36 = [v6 otherButtonText];
    *buf = 138544386;
    v52 = v32;
    v53 = 2114;
    v54 = v33;
    v55 = 2114;
    v56 = v34;
    v57 = 2114;
    v58 = v35;
    v59 = 2114;
    v60 = v36;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Displaying alert: %{public}@ - %{public}@ [%{public}@] [%{public}@] [%{public}@]", buf, 0x34u);
  }

  [v6 dismissAfterTimeInterval];
  if (v37 <= 0.0)
  {
    CFRelease(v27);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      [v6 dismissAfterTimeInterval];
      *buf = 134217984;
      v52 = v38;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Scheduling automatic alert dismissal after %0.0f seconds.", buf, 0xCu);
    }

    CFRetain(v27);
    [v6 dismissAfterTimeInterval];
    v40 = dispatch_time(0, (v39 * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v47[0] = sub_1000792AC;
    v47[1] = &unk_1000CE018;
    v47[2] = v27;
    dispatch_after(v40, &_dispatch_main_q, block);
  }

LABEL_26:
}

void sub_100078B30(uint64_t a1)
{
  v2 = sub_100078DA8();
  if (![v2 count])
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = objc_retainBlock(v5);
      [v2 addObject:v6];
    }

    v4 = objc_opt_new();
    [v4 setTitle:*(a1 + 32)];
    [v4 setMessage:*(a1 + 40)];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"Sign In" value:&stru_1000D0428 table:@"DMFNotifications"];
    [v4 setDefaultButtonText:v8];

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"Cancel" value:&stru_1000D0428 table:@"DMFNotifications"];
    [v4 setAlternateButtonText:v10];

    [v4 setDisplayOnLockScreen:0];
    [v4 setDisplayInAppWhitelistModes:0];
    [v4 setDismissAfterTimeInterval:900.0];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100078DEC;
    v12[3] = &unk_1000D00E8;
    v13 = *(a1 + 48);
    [v4 setCompletionBlock:v12];
    [*(a1 + 48) park];
    v11 = sub_100077A98();
    [v11 addObject:v4];

    sub_100078474();
    goto LABEL_9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "An iTunes login prompt is already shown. Not showing another prompt.", buf, 2u);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = objc_retainBlock(v3);
    [v2 addObject:v4];
LABEL_9:
  }

  [*(a1 + 48) stayAliveThroughHereAtLeast];
}

id sub_100078DA8()
{
  if (qword_1000FF360 != -1)
  {
    sub_100087FD0();
  }

  v1 = qword_1000FF358;

  return v1;
}

void sub_100078DEC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) unpark];
  v4 = sub_100077780();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100078EA0;
  v5[3] = &unk_1000CE578;
  v7 = a2;
  v6 = *(a1 + 32);
  dispatch_async(v4, v5);
}

void sub_100078EA0(uint64_t a1)
{
  v2 = sub_100078DA8();
  if ([v2 count])
  {
    v3 = [v2 copy];
    [v2 removeAllObjects];
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100078F94;
    block[3] = &unk_1000D00C0;
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9 = v3;
    v11 = v5;
    v10 = v6;
    v7 = v3;
    dispatch_async(v4, block);
  }
}

id sub_100078F94(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) count];
    *buf = 134217984;
    v17 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Calling completions for %lu iTunes login events.", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        (*(v8 + 16))(v8, *(a1 + 48));
        objc_autoreleasePoolPop(v9);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return [*(a1 + 40) stayAliveThroughHereAtLeast];
}

void sub_100079108(id a1)
{
  qword_1000FF338 = dispatch_queue_create("DMDUserNotificationManager Queue", &_dispatch_queue_attr_concurrent);

  _objc_release_x1();
}

void sub_10007914C(id a1)
{
  qword_1000FF348 = objc_opt_new();

  _objc_release_x1();
}

void sub_100079188(uint64_t a1, unint64_t a2)
{
  if (a2 > 3)
  {
    v3 = @"Unknown";
    v2 = 4;
  }

  else
  {
    v2 = a2;
    v3 = *(&off_1000D0168 + a2);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Alert dismissed with response: %{public}@", buf, 0xCu);
  }

  v4 = sub_100077780();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079324;
  block[3] = &unk_1000CE018;
  block[4] = v2;
  dispatch_barrier_sync(v4, block);
}

void sub_1000792AC(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Automatically dismissing alert.", v2, 2u);
  }

  CFUserNotificationCancel(*(a1 + 32));
  CFRelease(*(a1 + 32));
}

void sub_100079324(uint64_t a1)
{
  v2 = qword_1000FF330;
  v3 = qword_1000FF330;
  qword_1000FF330 = 0;

  v4 = [v2 completionBlock];

  if (v4)
  {
    v9 = dispatch_get_global_queue(0, 0);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007940C;
    v12[3] = &unk_1000CE578;
    v10 = v2;
    v11 = *(a1 + 32);
    v13 = v10;
    v14 = v11;
    dispatch_async(v9, v12);
  }

  sub_100078474(v5, v6, v7, v8);
}

void sub_10007940C(uint64_t a1)
{
  v2 = [*(a1 + 32) completionBlock];
  v2[2](v2, *(a1 + 40));
}

void sub_100079468(id a1)
{
  qword_1000FF358 = objc_opt_new();

  _objc_release_x1();
}

void sub_1000795F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v6 = NSUnderlyingErrorKey;
    v7 = a2;
    v3 = a2;
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    v5 = DMFErrorWithCodeAndUserInfo();
    [v2 endOperationWithError:v5];
  }

  else
  {
    v4 = 0;
    [v2 endOperationWithResultObject:0];
  }
}

uint64_t MCProfileFilterFlagsFromDMFProfileFilterFlags(uint64_t a1)
{
  if (a1)
  {
    return a1 & 0x3F;
  }

  else
  {
    return 3;
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  [NSFileManager dmd_setUserDirSuffix:"com.apple.dmd"];
  v4 = +[NSFileManager dmd_userDarwinUserTempDirectoryURL];
  [v4 getFileSystemRepresentation:v10 maxLength:1024];

  signal(15, 1);
  v5 = dispatch_get_global_queue(21, 0);
  v6 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v5);
  dispatch_source_set_event_handler(v6, &stru_1000D0188);
  dispatch_activate(v6);
  v7 = +[DMDServer sharedServer];
  [v7 run];

  objc_autoreleasePoolPop(v3);
  v8 = +[NSRunLoop currentRunLoop];
  [v8 run];

  return 0;
}

void sub_10007ADC4(id a1)
{
  v1 = DMFServerLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGTERM received, cleaning all outstanding XPC transactions", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

id DMDErrorChainFromError(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v15 = v1;
  if (v15)
  {
    v3 = DMFDeclarationStateErrorChainLocalizedDescriptionKey;
    v4 = DMFDeclarationStateErrorChainErrorDomainKey;
    v5 = DMFDeclarationStateErrorChainErrorCodeKey;
    v6 = v15;
    do
    {
      v7 = [NSMutableDictionary dictionaryWithCapacity:4];
      v8 = [v6 userInfo];
      v9 = [v6 localizedDescription];
      [v7 setObject:v9 forKeyedSubscript:v3];

      v10 = [v6 domain];
      [v7 setObject:v10 forKeyedSubscript:v4];

      v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
      [v7 setObject:v11 forKeyedSubscript:v5];

      [v2 addObject:v7];
      v12 = [v8 objectForKey:NSUnderlyingErrorKey];

      v6 = v12;
    }

    while (v12);
  }

  v13 = [v2 copy];

  return v13;
}

void sub_10007B208(id a1)
{
  v4 = +[DMDPaths systemGroupContainerPath];
  v1 = [NSURL fileURLWithPath:v4 isDirectory:1];
  v2 = [v1 URLByAppendingPathComponent:@"Library" isDirectory:1];
  v3 = qword_1000FF368;
  qword_1000FF368 = v2;
}

void sub_10007B3E8(id a1)
{
  pw_dir = getenv("HOME");
  if (!pw_dir)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10008809C();
    }

    v2 = getuid();
    v3 = getpwuid(v2);
    if (!v3)
    {
      sub_1000880E4();
    }

    pw_dir = v3->pw_dir;
  }

  if (!realpath_DARWIN_EXTSN(pw_dir, v6))
  {
    sub_1000881A8();
  }

  v4 = [NSURL fileURLWithFileSystemRepresentation:v6 isDirectory:1 relativeToURL:0];
  v5 = qword_1000FF378;
  qword_1000FF378 = v4;
}

void sub_10007B560(uint64_t a1)
{
  v3 = [*(a1 + 32) dmd_userHomeURL];
  v1 = [v3 URLByAppendingPathComponent:@"Library" isDirectory:1];
  v2 = qword_1000FF388;
  qword_1000FF388 = v1;
}

void sub_10007B608(id a1)
{
  if (!confstr(65537, v4, 0x400uLL))
  {
    sub_100088258();
  }

  if (!realpath_DARWIN_EXTSN(v4, v3))
  {
    sub_1000882F4();
  }

  v1 = [NSURL fileURLWithFileSystemRepresentation:v3 isDirectory:1 relativeToURL:0];
  v2 = qword_1000FF398;
  qword_1000FF398 = v1;
}

int *sub_10007BA4C()
{
  v2 = *(v0 + 1264);

  return __error();
}

void sub_10007BAD8(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100002E7C(&_mh_execute_header, v2, v3, "Request validation failed for installing profile: %{public}@", v4, v5, v6, v7, v8);
}

void sub_10007BB5C(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100002E7C(&_mh_execute_header, v2, v3, "Request validation failed for removing profile: %{public}@", v4, v5, v6, v7, v8);
}

void sub_10007BCE0(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E7C(&_mh_execute_header, v2, v3, "Request validation failed for setting policy: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_10007BD68(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E7C(&_mh_execute_header, v2, v3, "Request validation failed for removing policy: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_10007BDF0()
{
  sub_100009F40();
  v3 = [*(v2 + 32) predicateType];
  v4 = [*(v1 + 32) uniqueIdentifier];
  v5 = *(v1 + 40);
  v6 = [v0 debugDescription];
  sub_100009F2C();
  sub_100009F1C();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x2Au);
}

void sub_10007BED0()
{
  sub_100009F50();
  [v1 predicateType];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100009F5C() uniqueIdentifier];
  sub_100009F04();
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10007BF74()
{
  sub_100009F50();
  [v1 predicateType];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100009F5C() uniqueIdentifier];
  sub_100009F04();
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10007C018()
{
  sub_100009F50();
  [v1 predicateType];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100009F5C() uniqueIdentifier];
  sub_100009F04();
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10007C0BC()
{
  sub_100009F40();
  v2 = [v1 predicateType];
  v3 = [v0 uniqueIdentifier];
  sub_100009F2C();
  sub_100009F1C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_10007C170()
{
  sub_100009F40();
  v2 = [v1 predicateType];
  v3 = [v0 uniqueIdentifier];
  v4 = [v0 calendarIdentifier];
  sub_100009F2C();
  sub_100009F1C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void sub_10007C248(void *a1, void *a2, NSObject *a3)
{
  v6 = [a1 predicateType];
  v7 = [a1 uniqueIdentifier];
  v8 = [a2 payloadCalendarIdentifier];
  v9 = [a2 payloadNotificationTimes];
  v10 = [a2 payloadStartDay];
  v11 = [a2 payloadStartTime];
  v12 = [a2 payloadEndDay];
  v13 = [a2 payloadEndTime];
  v14 = 138545154;
  v15 = v6;
  v16 = 2114;
  v17 = v7;
  v18 = 2114;
  v19 = v8;
  v20 = 2114;
  v21 = v9;
  v22 = 2114;
  v23 = v10;
  v24 = 2114;
  v25 = v11;
  v26 = 2114;
  v27 = v12;
  v28 = 2114;
  v29 = v13;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Predicate type: %{public}@ with unique identifier: %{public}@ failed to extract predicate with payload calendar identifier: %{public}@, payload notifications times: %{public}@, payload start day: %{public}@, payload start time: %{public}@, payload end day: %{public}@, payload end time: %{public}@", &v14, 0x52u);
}

void sub_10007C3D0(void *a1)
{
  v2 = [a1 predicateType];
  v3 = [a1 uniqueIdentifier];
  sub_100009F2C();
  sub_100009F1C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_10007C48C(void *a1)
{
  v2 = [a1 predicateType];
  v8 = [a1 uniqueIdentifier];
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10007C548(void *a1)
{
  v2 = [a1 predicateType];
  v3 = [a1 uniqueIdentifier];
  v4 = [a1 endDate];
  sub_100009F2C();
  sub_100009F1C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void sub_10007C63C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDAirPlayManager.m" lineNumber:72 description:@"must provide a destination name or deviceID"];
}

void sub_10007C6C4()
{
  sub_100016B30();
  sub_100016B48();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007C734()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"manifestURL" object:? file:? lineNumber:? description:?];
}

void sub_10007C7A8()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_10007C81C()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

void sub_10007C890()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_10007C904()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

void sub_10007C978()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_10007C9EC()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"bundleIdentifier" object:? file:? lineNumber:? description:?];
}

void sub_10007CA60()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"bundleIdentifier" object:? file:? lineNumber:? description:?];
}

void sub_10007CAD4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not write app management plist, error: %{public}@", &v2, 0xCu);
}

void sub_10007CB90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_100016B74();
  sub_100016B48();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10007CC18(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100016B74();
  sub_100016B58();
  sub_100016B48();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10007CC90(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100016B74();
  sub_100016B58();
  sub_100016B48();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10007CD08(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Called [PRSettingsProvider setMDMAppAttribute] enabled=%@", &v2, 0xCu);
}

void sub_10007CDC4()
{
  sub_100016B30();
  sub_100016B48();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007CE34()
{
  sub_100016B30();
  sub_100016B48();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007CEA4()
{
  sub_100016B30();
  sub_100016B48();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007CF14()
{
  sub_100016B30();
  sub_100016B48();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007CF84()
{
  sub_100016B30();
  sub_100016B48();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007CFF4()
{
  sub_100016B30();
  sub_100016B48();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007D064()
{
  sub_100016B30();
  sub_100016B48();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007D0D4()
{
  sub_100016B30();
  sub_100016B48();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007D144()
{
  sub_100016B30();
  sub_100016B48();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007D1B4()
{
  sub_100016B30();
  sub_100016B48();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007D224()
{
  sub_100016B30();
  sub_100016B48();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007D294()
{
  sub_100016B30();
  sub_100016B48();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007D354(uint64_t *a1)
{
  v1 = *a1;
  sub_100016B74();
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Could not write management info to disk for bundle identifier: %{public}@", v3, 0xCu);
}

void sub_10007D3CC()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"manifestURL" object:? file:? lineNumber:? description:?];
}

void sub_10007D440()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_10007D4B4()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getPRSettingsProviderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DMDAppController.m" lineNumber:22 description:{@"Unable to find class %s", "PRSettingsProvider"}];

  __break(1u);
}

void sub_10007D530(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *ProximityReaderLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DMDAppController.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void sub_10007D5EC()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10007D658()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

void sub_10007D6CC()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_10007D740(uint64_t a1)
{
  sub_10001AF3C(a1, __stack_chk_guard);
  sub_100016B74();
  v4 = 2048;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Could not acquire sandbox extension for app %{public}@ to read feedback. Attempting to read anyway. Error: %llu", v3, 0x16u);
}

void sub_10007D7C4(uint64_t *a1)
{
  v1 = *a1;
  sub_100016B74();
  sub_10001AF20(&_mh_execute_header, v2, v3, "Feedback is not a dictionary for bundle identifier: %{public}@", v4, v5, v6, v7, v8);
}

void sub_10007D830(uint64_t a1)
{
  sub_10001AF3C(a1, __stack_chk_guard);
  sub_100016B74();
  sub_10001AF20(&_mh_execute_header, v1, v2, "Could not acquire app container path for app %{public}@ to read feedback.", v3, v4, v5, v6, v7);
}

void sub_10007D898(uint64_t a1)
{
  v1 = *(sub_10001AF3C(a1, __stack_chk_guard) + 56);
  sub_100016B74();
  v5 = 2048;
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Could not acquire sandbox extension for app %{public}@ to write feedback. Attempting to write anyway. Error: %llu", v4, 0x16u);
}

void sub_10007D91C(uint64_t a1)
{
  sub_10001AF3C(a1, __stack_chk_guard);
  sub_100016B74();
  sub_10001AF20(&_mh_execute_header, v1, v2, "Could not acquire app container path for app %{public}@ to write feedback.", v3, v4, v5, v6, v7);
}

void sub_10007D9F0()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10007DA5C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Update foreground bundle identifiers: %{public}@", &v2, 0xCu);
}

void sub_10007DAD4(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:*(a2 + 56) object:*(a2 + 32) file:@"DMDAppController+Remove+iphoneOS.m" lineNumber:60 description:{@"Assertion couldn't be acquired: %@", v3}];
}

void sub_10007DB5C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "DMF could not restart app: %{public}@ with error: %{public}@", &v4, 0x16u);
}

void sub_10007DC10(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not initialize app lifecycle because no LSApplicationRecord for bundle identifier %{public}@, error: %{public}@", &v3, 0x16u);
}

void sub_10007DC98(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDAppLifeCycle+iphoneOS.m" lineNumber:460 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

void sub_10007DD58()
{
  sub_10002364C();
  v1 = [v0 identifier];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = NSStringFromProtocol(&OBJC_PROTOCOL___DMDOperationProvidingAsset);
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_10007DE28()
{
  sub_10002364C();
  v2 = [v1 identifier];
  v3 = [v0 verboseDescription];
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10007DED4()
{
  sub_10002364C();
  v2 = [v1 identifier];
  v3 = [v0 verboseDescription];
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10007DF80()
{
  sub_10002364C();
  v2 = [v1 identifier];
  v3 = [*v0 verboseDescription];
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10007E02C()
{
  sub_10002364C();
  v2 = [v1 identifier];
  v3 = [v0 verboseDescription];
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10007E0D8()
{
  sub_10002364C();
  v2 = [v1 identifier];
  v3 = [*v0 verboseDescription];
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10007E1F4()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getSTManagementStateClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DMDClearRestrictionsPasswordOperation+iOS.m" lineNumber:20 description:{@"Unable to find class %s", "STManagementState"}];

  __break(1u);
}

void sub_10007E270(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *ScreenTimeCoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DMDClearRestrictionsPasswordOperation+iOS.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void sub_10007E2F0()
{
  sub_10002364C();
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  sub_100009F5C();
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = NSStringFromProtocol(&OBJC_PROTOCOL___DMDRequestProvidingCommand);
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_10007E3BC()
{
  sub_10002364C();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100009F5C() identifier];
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10007E468()
{
  sub_10002364C();
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100009F5C() verboseDescription];
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10007E510()
{
  sub_10002364C();
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100009F5C() verboseDescription];
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10007E5B8()
{
  sub_10002364C();
  v2 = [v1 identifier];
  v3 = [*v0 verboseDescription];
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10007E664(void *a1, NSObject *a2)
{
  v3 = [a1 identifier];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Command did remove successfully %{public}@", &v4, 0xCu);
}

void sub_10007E6FC(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 identifier];
  v6 = [a2 verboseDescription];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to initialize command payload for command removal %{public}@: %{public}@", &v7, 0x16u);
}

void sub_10007E860(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDConfigurationDatabase.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

void sub_10007E8DC()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"database" object:? file:? lineNumber:? description:?];
}

void sub_10007E9C0()
{
  sub_100009F50();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_10002C3A4();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  sub_10002C398();
  [sub_10002C37C(v2 v3];
}

void sub_10007EA44()
{
  sub_100009F50();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_10002C3A4();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  sub_10002C398();
  [sub_10002C37C(v2 v3];
}

void sub_10007EAC8(uint64_t a1)
{
  v1 = [sub_10002C368(a1) verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007EB54(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007EBE0(uint64_t a1)
{
  v1 = [sub_10002C38C(a1) subscriptionDeclaration];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007EC6C(uint64_t a1)
{
  v1 = [sub_10002C38C(a1) subscriptionDeclaration];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007ECF8(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007ED84(uint64_t a1)
{
  v1 = [sub_10002C38C(a1) subscriptionDeclaration];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007EE10()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"organizationIdentifier" object:? file:? lineNumber:? description:?];
}

void sub_10007EE84(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007EF80(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007F00C(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007F098()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10007F104(uint64_t a1)
{
  v1 = [sub_10002C38C(a1) error];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007F190()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10007F1FC()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"operation" object:? file:? lineNumber:? description:?];
}

void sub_10007F270()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10007F2DC()
{
  sub_100009F50();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_10002C3A4();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  sub_10002C398();
  [sub_10002C37C(v2 v3];
}

void sub_10007F360(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007F3F0()
{
  sub_100009F50();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_10002C3A4();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  sub_10002C398();
  [sub_10002C37C(v2 v3];
}

void sub_10007F474(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007F500(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007F58C(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007F618(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 identifier];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_fault_impl(&_mh_execute_header, a4, OS_LOG_TYPE_FAULT, "Declaration %{public}@ does not belong to an organization", a1, 0xCu);
}

void sub_10007F690(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007F71C(void *a1)
{
  v1 = [a1 componentsJoinedByString:{@", "}];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007F7B0(void *a1)
{
  v1 = [a1 componentsJoinedByString:{@", "}];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007F844()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"completionHandler" object:? file:? lineNumber:? description:?];
}

void sub_10007F8B8(uint64_t a1)
{
  v1 = [sub_10002C368(a1) verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007F9AC(uint64_t a1)
{
  v1 = [sub_10002C368(a1) verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007FA38(uint64_t a1)
{
  v1 = [sub_10002C368(a1) verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007FAC4(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007FB50(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007FBDC()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"completionHandler" object:? file:? lineNumber:? description:?];
}

void sub_10007FC50(uint64_t a1, void *a2)
{
  v3 = [sub_10002C38C(a1) organizationIdentifier];
  v9 = [a2 verboseDescription];
  sub_100009F1C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10007FDDC()
{
  sub_100009F50();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_10002C3A4();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  sub_10002C398();
  [sub_10002C37C(v2 v3];
}

void sub_10007FE60()
{
  sub_10002364C();
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  sub_100009F5C();
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = NSStringFromProtocol(&OBJC_PROTOCOL___DMDRequestProvidingConfiguration);
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_10007FF2C()
{
  sub_10002364C();
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  sub_100009F5C();
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10007FFD8()
{
  sub_10002364C();
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100009F5C() verboseDescription];
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100080080()
{
  sub_10002364C();
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100009F5C() verboseDescription];
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100080128()
{
  sub_10002364C();
  v2 = [v1 identifier];
  v3 = [*v0 verboseDescription];
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1000801D4(const char *a1, uint64_t a2)
{
  v5 = +[NSAssertionHandler currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"DMDConfigurationOrganizationController.m" lineNumber:44 description:{@"%@ must be called from the main thread", v4}];
}

void sub_10008026C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDConfigurationOrganizationController.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"[self.identifier isEqualToString:organization.identifier]"}];
}

void sub_1000802E8(void *a1, const char *a2)
{
  v3 = [a1 delegate];
  v4 = NSStringFromSelector(a2);
  sub_100009F04();
  sub_10002DD84(&_mh_execute_header, v5, v6, "%{public}@ does not respond to %{public}@", v7, v8, v9, v10, v11);
}

void sub_10008038C()
{
  sub_10002364C();
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  sub_100009F5C();
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100080438()
{
  sub_10002364C();
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100009F5C() verboseDescription];
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000804E0()
{
  sub_10002364C();
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100009F5C() verboseDescription];
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100080588()
{
  sub_10002364C();
  v2 = [v1 identifier];
  v3 = [*v0 verboseDescription];
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100080634()
{
  sub_10002364C();
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  sub_100009F5C();
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1000806E0()
{
  sub_10002364C();
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100009F5C() verboseDescription];
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100080788()
{
  sub_10002364C();
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100009F5C() verboseDescription];
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100080830()
{
  sub_10002364C();
  v2 = [v1 identifier];
  v3 = [*v0 verboseDescription];
  sub_100023638();
  sub_100009F1C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100080904(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) controller];
  v5 = [*(a1 + 40) assetIdentifier];
  v6 = [a2 verboseDescription];
  sub_10002FFE4();
  sub_100030004(&_mh_execute_header, v7, v8, "%{public}@ failed to initate connection to resolve asset %{public}@: %{public}@", v9, v10, v11, v12, v13);
}

void sub_1000809C4(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 40) controller];
  v5 = [*(a1 + 48) assetIdentifier];
  v6 = [a2 verboseDescription];
  sub_10002FFE4();
  sub_100030004(&_mh_execute_header, v7, v8, "%{public}@ failed to resolve asset %{public}@: %{public}@", v9, v10, v11, v12, v13);
}

void sub_100080A84(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDConfigurationSourceController.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"source"}];
}

void sub_100080B00(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDConfigurationSourceController.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"source.identifier"}];
}

void sub_100080B7C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDConfigurationSourceController.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"[self.identifier isEqualToString:source.identifier]"}];
}

void sub_100080BF8(void *a1)
{
  v1 = [a1 identifier];
  sub_100030B68(&_mh_execute_header, v2, v3, "Reporting status to %{public}@", v4, v5, v6, v7, 2u);
}

void sub_100080C80(void *a1)
{
  v1 = [a1 identifier];
  sub_100030B68(&_mh_execute_header, v2, v3, "Reporting events to %{public}@", v4, v5, v6, v7, 2u);
}

void sub_100080D08()
{
  v5 = NSStringFromProtocol(&OBJC_PROTOCOL___DMDConfigurationSourceControllerDelegate);
  sub_100009F1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100080DA0(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) controller];
  v4 = [a2 verboseDescription];
  sub_100009F04();
  sub_100009F1C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100080E50(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 40) controller];
  v4 = [a2 verboseDescription];
  sub_100009F04();
  sub_100009F1C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100080F00(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) controller];
  v4 = [a2 verboseDescription];
  sub_100009F04();
  sub_100009F1C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100080FB0(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) controller];
  v4 = [a2 verboseDescription];
  sub_100009F04();
  sub_100009F1C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100081060(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) controller];
  v4 = [a2 verboseDescription];
  sub_100009F04();
  sub_100009F1C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100081110(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) controller];
  v4 = [a2 verboseDescription];
  sub_100009F04();
  sub_100009F1C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000811C0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failing establishing anonymous connection with error: %{public}@", &v2, 0xCu);
}

void sub_100081238(uint64_t a1, NSObject *a2)
{
  v4 = [*(a1 + 32) machServiceName];
  v5 = *(a1 + 40);
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failing establishing connection to named service %{public}@ with error: %{public}@", &v6, 0x16u);
}

void sub_100081884(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDCoreTelephonyUtilities+iphoneOS-tvOS.m" lineNumber:451 description:@"block parameter to withCurrentDataServiceDescriptionDo: was nil"];
}

void sub_100081B54(char a1, uint64_t a2)
{
  v2[0] = 67109378;
  v2[1] = a1 & 1;
  v3 = 2112;
  v4 = a2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "_CTServerConnectionStandaloneGetCachedVinylInfo => result = %d, dict = %@", v2, 0x12u);
}

void sub_100081C54(char a1)
{
  v1[0] = 67109120;
  v1[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "_CTServerConnectionStandaloneDownloadProfile => result = %d", v1, 8u);
}

void sub_100081CEC(uint64_t a1)
{
  v1 = [*(a1 + 32) removable];
  sub_100036080();
  sub_10002DD84(&_mh_execute_header, v2, v3, "Error attempting to set removability to %{public}@ Error: %{public}@", v4, v5, v6, v7, v8);
}

void sub_100081D80(uint64_t a1)
{
  v1 = [*(a1 + 32) tapToPayScreenLock];
  sub_100036080();
  sub_10002DD84(&_mh_execute_header, v2, v3, "Error attempting to set tapToPayScreenLock to %{public}@ Error:%{public}@", v4, v5, v6, v7, v8);
}

void sub_100081E90()
{
  sub_100002E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100081F8C()
{
  sub_100037E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100082118()
{
  sub_100037E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10008219C()
{
  sub_100037E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100082220()
{
  sub_100037E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000822A4()
{
  sub_100037E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100082328()
{
  sub_100037E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000823AC()
{
  sub_100037E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

BOOL sub_100082430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"DMDDeviceController+iOS.m" lineNumber:229 description:{@"Invalid parameter not satisfying: %@", @"equipmentInfo != nil"}];

  return a3 == 0;
}

void sub_1000824B4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDDeviceController+iOS.m" lineNumber:230 description:{@"Invalid parameter not satisfying: %@", @"client != nil"}];
}

void sub_100082530(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDDeviceController+iOS.m" lineNumber:382 description:@"could not create CoreTelephonyClient"];
}

void sub_1000825A4(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "equipmentInfo with duplicate slotId, discarding first instance", buf, 2u);
}

void sub_10008262C(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "subscription with duplicate slotId, discarding first instance", buf, 2u);
}

void sub_1000826B4(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_100002E9C();
  sub_100033EB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100082798()
{
  sub_100002E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100082810()
{
  sub_100002E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100082888()
{
  sub_100002E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100082900(uint64_t *a1)
{
  v1 = *a1;
  v2 = 138543362;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not disable lost mode: %{public}@", &v2, 0xCu);
}

void sub_1000829C8(uint64_t a1, NSObject *a2)
{
  v2 = 138543618;
  v3 = a1;
  v4 = 2114;
  v5 = @"com.apple.private.dmd.emergency-mode";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Client %{public}@ does not have required %{public}@ entitlement", &v2, 0x16u);
}

void sub_100082A9C(uint64_t a1, void *a2)
{
  v8 = [a2 verboseDescription];
  sub_10002DD84(&_mh_execute_header, v2, v3, "failed to fetch organizations of type “%{public}@”: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_100082B40(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "organization of type %{public}@ already exists", &v2, 0xCu);
}

void sub_100082BB8(void *a1, void *a2)
{
  v3 = [a1 organizationIdentifier];
  v10 = [a2 verboseDescription];
  sub_10002DD84(&_mh_execute_header, v4, v5, "failed to fetch existing organizations with identifier “%{public}@”: %{public}@", v6, v7, v8, v9, 2u);
}

void sub_100082C6C(void *a1)
{
  v6 = [a1 verboseDescription];
  sub_100009F1C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100082CFC(uint64_t a1)
{
  v6 = [*(a1 + 32) verboseDescription];
  sub_100009F1C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100082D90(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 verboseDescription];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "failed to remove legacy database: %{public}@", a1, 0xCu);
}

void sub_100082E08(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDEngineDatabaseInitializationOperation.m" lineNumber:112 description:@"Configuration database does not have registered persistent stores"];
}

void sub_100082E7C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "successfully loaded persistent store: %{public}@", &v2, 0xCu);
}

void sub_100082EF4(uint64_t a1, void *a2)
{
  v7 = [a2 verboseDescription];
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100082FE4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDEngineDatabaseOperation.m" lineNumber:42 description:{@"A database must be provided to %@", a2}];
}

void sub_100083058()
{
  sub_10003F708();
  v2 = [sub_10003F6FC(v0 v1)];
  sub_10003F6BC();
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000830EC(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100083178()
{
  sub_10003F708();
  v2 = [sub_10003F6FC(v0 v1)];
  sub_10003F6BC();
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10008320C(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100083298()
{
  sub_10003F708();
  v2 = [sub_10003F6FC(v0 v1)];
  sub_10003F6BC();
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000833A0()
{
  sub_10003F708();
  v3 = [sub_10003F6FC(v1 v2)];
  sub_10003F6BC();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "%{public}@ failed to fetch configurations: %{public}@", v4, 0x16u);
}

void sub_10008343C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDEngineDatabaseProcessingOperation.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"error"}];
}

void sub_1000835BC(uint64_t a1)
{
  v1 = [sub_10002C38C(a1) verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100083648(uint64_t a1)
{
  v1 = [sub_10002C38C(a1) verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000836D4(uint64_t a1)
{
  v1 = [sub_10002C38C(a1) verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100083760(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDEngineDatabaseProcessingOperation.m" lineNumber:326 description:{@"Invalid parameter not satisfying: %@", @"error"}];
}

void sub_1000838AC(uint64_t a1)
{
  v1 = [sub_10002C38C(a1) verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100083938(uint64_t a1)
{
  v1 = [sub_10002C38C(a1) verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000839C4(uint64_t a1)
{
  v1 = [sub_10002C38C(a1) verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100083A50(uint64_t a1)
{
  v1 = [sub_10002C38C(a1) verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100083ADC(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 count];
  v6 = [a2 organizationIdentifier];
  v7 = 134218242;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Refreshed %lu status items for organization %{public}@", &v7, 0x16u);
}

void sub_100083B98(void *a1, NSObject *a2)
{
  v3 = [a1 organizationIdentifier];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch payload metadata for organization %{public}@", &v4, 0xCu);
}

void sub_100083C30(const char *a1, uint64_t a2)
{
  v5 = +[NSAssertionHandler currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"DMDEngineRegisterConfigurationSourceOperation.m" lineNumber:97 description:{@"%@ must be called from the main thread", v4}];
}

void sub_100083CC8(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E7C(&_mh_execute_header, v2, v3, "Failed to save changes: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_100083D50(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E7C(&_mh_execute_header, v2, v3, "Failed to initialize declarations: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_100083DD8(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E7C(&_mh_execute_header, v2, v3, "Failed to fetch existing declarations: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_100083E60(void *a1, NSObject *a2)
{
  v3 = [a1 verboseDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to save changes: %{public}@", &v4, 0xCu);
}

void sub_100083EF8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to instantiate payload metadata from payload dictionary: %{public}@", &v2, 0xCu);
}

void sub_100083F70(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100002E7C(&_mh_execute_header, v2, v3, "Failed to fetch existing declarations for removal: %{public}@", v4, v5, v6, v7, v8);
}

void sub_100083FF4(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100002E7C(&_mh_execute_header, v2, v3, "Failed to initialize declarations for update: %{public}@", v4, v5, v6, v7, v8);
}

void sub_100084078(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100002E7C(&_mh_execute_header, v2, v3, "Failed to fetch existing declarations for update: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000840FC(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100002E7C(&_mh_execute_header, v2, v3, "Failed to save changes: %{public}@", v4, v5, v6, v7, v8);
}

void sub_100084180(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown event stream frequency %{public}@, defaulting to Daily", &v2, 0xCu);
}

void sub_100084220(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDEventSubscriptionRegistrationController.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"subscriptionRegistration"}];
}

void sub_10008429C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDEventSubscriptionRegistrationController.m" lineNumber:51 description:@"Cannot update subscription controller with a subscription registration with a different identifier"];
}

void sub_100084310(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDFetchAppsOperation.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"request"}];
}

void sub_10008438C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDFetchAppsOperation.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

void sub_100084408(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDFetchAvailableOSUpdatesOperation.m" lineNumber:50 description:@"DMDFetchAvailableOSUpdatesOperation: no update returned"];
}

void sub_10008446C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "fetch-os-update-status end with error: %@", &v2, 0xCu);
}

void sub_1000844E4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [DMFAppManagementInformation stringForState:a1];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Could not mark app state as %{public}@ for bundle identifier: %{public}@", &v6, 0x16u);
}

void sub_1000845A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000482F4();
  sub_10004830C(&_mh_execute_header, v2, v3, "Error attempting to set removability to %{public}@ Error: %{public}@");
}

void sub_10008460C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000482F4();
  sub_10004830C(&_mh_execute_header, v2, v3, "Error attempting to set tapToPayControlLock to %{public}@ Error: %{public}@");
}

void sub_10008468C(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100002E7C(&_mh_execute_header, v2, v3, "Could not serialize profile: %{public}@", v4, v5, v6, v7, v8);
}

void sub_100084710(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100002E7C(&_mh_execute_header, v2, v3, "Could not apply restrictions: %{public}@", v4, v5, v6, v7, v8);
}

void sub_100084794(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100002E7C(&_mh_execute_header, v2, v3, "Could not process restriction heuristics for payload: %{public}@", v4, v5, v6, v7, v8);
}

void sub_100084818(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100002E7C(&_mh_execute_header, v2, v3, "Could not retrieve restrictions dictionary from payload: %{public}@", v4, v5, v6, v7, v8);
}

void sub_100084940(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error writing manage app prompt policy data to file: %{public}@", &v2, 0xCu);
}

void sub_1000849B8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error generating manage app prompt policy data from dictionary: %{public}@", &v2, 0xCu);
}

void sub_100084A78(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to set device name with error %d", v1, 8u);
}

void sub_100084B3C()
{
  sub_100002E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100084BB4()
{
  sub_100002E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100084C70()
{
  sub_100002E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100084D2C()
{
  sub_100002E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100084DB8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDManagedMediaManager+iOS.m" lineNumber:130 description:@"Media operations cannot proceed when MDM migration is not complete."];
}

void sub_100084E88()
{
  sub_100002E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100084F00()
{
  sub_100002E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100084F78()
{
  sub_100002E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10008501C(void *a1)
{
  v1 = [a1 kind];
  sub_100002E9C();
  sub_100033EB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000850BC()
{
  sub_100002E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000851F4(void *a1, uint64_t a2)
{
  v3 = [a1 path];
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error excluding %{public}@ from backup %{public}@", &v4, 0x16u);
}

void sub_10008529C(uint64_t a1)
{
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error excluding %{public}@ from backup. Path does not exist.", &v1, 0xCu);
}

void sub_10008531C(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 bundleIdentifier];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000853D4()
{
  sub_10002364C();
  v1 = [sub_100059244(v0) metadata];
  v2 = [v1 bundleIdentifier];
  sub_100036080();
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000854E8()
{
  sub_10002364C();
  v1 = [sub_100059244(v0) removable];
  sub_100036080();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10008557C()
{
  sub_10002364C();
  v1 = [sub_100059244(v0) tapToPayScreenLock];
  sub_100036080();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100085678(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDMDMv1InstallAppOperation+iphoneOS.m" lineNumber:451 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

void sub_1000857A0()
{
  sub_10002364C();
  v1 = [DMFAppManagementInformation stringForState:v0];
  sub_100036080();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100085840(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDMDMv1InstallAppOperation+iphoneOS.m" lineNumber:614 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

void sub_1000858BC()
{
  sub_100002E9C();
  sub_100016B58();
  sub_10004830C(&_mh_execute_header, v0, v1, "Could not update management info for bundle identifier: %{public}@, error: %{public}@");
}

void sub_1000859F8(uint64_t a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = *(a1 + 32);
  sub_100016B58();
  sub_10004830C(&_mh_execute_header, v1, v2, "Error attempting to set removability to %{public}@ Error: %{public}@", v3, DWORD2(v3));
}

void sub_100085A6C(uint64_t a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = *(a1 + 32);
  sub_100016B58();
  sub_10004830C(&_mh_execute_header, v1, v2, "Error attempting to set tapToPayControlLock to %{public}@ Error: %{public}@", v3, DWORD2(v3));
}

void sub_100085AE0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Prompt to manage app %{public}@ blocked by policy. Too many requests.", &v3, 0xCu);
}

void sub_100085B5C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error attempting SINF swap: %{public}@", &v2, 0xCu);
}

void sub_100085CF4(uint64_t a1, uint64_t a2)
{
  v2 = 138543618;
  v3 = a1;
  v4 = 2082;
  v5 = a2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "System group container for %{public}@ path is %{public}s", &v2, 0x16u);
}

void sub_100085D80(uint64_t a1, uint64_t *a2)
{
  v7 = *a2;
  sub_100033EB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100085E20(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDPayloadActionOperation.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

void sub_100085E9C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Payload has invalid type prefix (%{public}@) defaulting to generic payload metadata", &v2, 0xCu);
}

void sub_100085F14(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 verboseDescription];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to fetch organization matching identifier (%{public}@): %{public}@", &v6, 0x16u);
}

void sub_1000860D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = 138543362;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not play sound in MDM Lost Mode: %{public}@", &v2, 0xCu);
}

void sub_100086158()
{
  sub_10003F6F0();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100086194()
{
  sub_100002E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100086204(uint64_t a1, void *a2)
{
  v2 = [a2 verboseDescription];
  sub_10003F6BC();
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000862A0(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10008632C(uint64_t a1, void *a2)
{
  v2 = [a2 verboseDescription];
  sub_10003F6BC();
  sub_100009F1C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000863C8(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100086454(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000864E4(_DWORD *a1, void *a2, void *a3)
{
  v5 = [a2 verboseDescription];
  *a1 = 138543362;
  *a3 = v5;
  sub_100066494(&_mh_execute_header, v6, v7, "Error fetching existing policy by type: %{public}@");
}

void sub_10008654C()
{
  sub_100002E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000865BC()
{
  sub_100002E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10008662C(_DWORD *a1, void *a2)
{
  v4 = DMFPolicyUnlocalizedDisplayName();
  *a1 = 138543362;
  *a2 = v4;
  sub_100066494(&_mh_execute_header, v5, v6, "Requested website URL does not have a host, marking policy %{public}@");
}

void sub_100086694()
{
  sub_10003F6F0();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000866D0(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10008675C(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000867E8(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100086874(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100086900()
{
  sub_100002E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100086970()
{
  sub_100002E9C();
  sub_100033EB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100086A20(void *a1)
{
  v1 = [a1 verboseDescription];
  sub_100002E9C();
  sub_100009F1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100086AAC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Client %@ does not have required com.apple.private.dmd.policy entitlement", &v2, 0xCu);
}

void sub_100086B4C(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to retrieve vinylInfo response = %@", &v1, 0xCu);
}

void sub_100086BCC(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Fetched vinylInfo response = %@", &v1, 0xCu);
}

void sub_100086C4C(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Found supported vinyl record: %@", &v1, 0xCu);
}

void sub_100086D10(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000482F4();
  sub_100068EF0(&_mh_execute_header, &_os_log_default, v2, "Could not remove app removability for bundle identifier: %{bundleIdentifier}@, error: %{public}@", v3, v4, v5, v6, v7);
}

void sub_100086D84(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000482F4();
  sub_100068EF0(&_mh_execute_header, &_os_log_default, v2, "Could not remove app tap to pay lock screen flag for bundle identifier: %{bundleIdentifier}@, error: %{public}@", v3, v4, v5, v6, v7);
}

void sub_100086DF8()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"bundleIdentifier" object:? file:? lineNumber:? description:?];
}

void sub_100086E6C()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"error" object:? file:? lineNumber:? description:?];
}

void sub_100086EE0(uint64_t a1, uint64_t *a2)
{
  sub_100068F0C(a2, __stack_chk_guard);
  sub_100068ED8();
  sub_100068EF0(&_mh_execute_header, &_os_log_default, v2, "Could not remove VPN UUID for bundle identifier: %{bundleIdentifier}@, error: %{public}@", v3, v4, v5, v6, v7);
}

void sub_100086F50(uint64_t a1, uint64_t *a2)
{
  sub_100068F0C(a2, __stack_chk_guard);
  sub_100068ED8();
  sub_100068EF0(&_mh_execute_header, &_os_log_default, v2, "Could not remove CellularSlice UUID for bundle identifier: %{bundleIdentifier}@, error: %{public}@", v3, v4, v5, v6, v7);
}

void sub_100086FC0(uint64_t a1, uint64_t *a2)
{
  sub_100068F0C(a2, __stack_chk_guard);
  sub_100068ED8();
  sub_100068EF0(&_mh_execute_header, &_os_log_default, v2, "Could not remove content filter UUID for bundle identifier: %{bundleIdentifier}@, error: %{public}@", v3, v4, v5, v6, v7);
}

void sub_100087030(uint64_t a1, uint64_t *a2)
{
  sub_100068F0C(a2, __stack_chk_guard);
  sub_100068ED8();
  sub_100068EF0(&_mh_execute_header, &_os_log_default, v2, "Could not remove DNS proxy UUID for bundle identifier: %{bundleIdentifier}@, error: %{public}@", v3, v4, v5, v6, v7);
}

void sub_1000870A0(uint64_t a1, uint64_t *a2)
{
  sub_100068F0C(a2, __stack_chk_guard);
  sub_100068ED8();
  sub_100068EF0(&_mh_execute_header, &_os_log_default, v2, "Could not remove relay UUID for bundle identifier: %{bundleIdentifier}@, error: %{public}@", v3, v4, v5, v6, v7);
}

void sub_100087110(uint64_t a1, uint64_t *a2)
{
  sub_100068F0C(a2, __stack_chk_guard);
  sub_100068ED8();
  sub_100068EF0(&_mh_execute_header, &_os_log_default, v2, "Could not remove associated domains for bundle identifier: %{bundleIdentifier}@, error: %{public}@", v3, v4, v5, v6, v7);
}

void sub_100087180(uint64_t a1, uint64_t *a2)
{
  sub_100068F0C(a2, __stack_chk_guard);
  sub_100068ED8();
  sub_100068EF0(&_mh_execute_header, &_os_log_default, v2, "Could not remove associated domains enable direct downloads for bundle identifier: %{bundleIdentifier}@, error: %{public}@", v3, v4, v5, v6, v7);
}

void sub_1000871F0(uint64_t a1, uint64_t *a2)
{
  sub_100068F0C(a2, __stack_chk_guard);
  sub_100068ED8();
  sub_100068EF0(&_mh_execute_header, &_os_log_default, v2, "Could not remove allow user to hide flag for bundle identifier: %{bundleIdentifier}@, error: %{public}@", v3, v4, v5, v6, v7);
}

void sub_100087260(uint64_t a1, uint64_t *a2)
{
  sub_100068F0C(a2, __stack_chk_guard);
  sub_100068ED8();
  sub_100068EF0(&_mh_execute_header, &_os_log_default, v2, "Could not remove allow user to lock flag for bundle identifier: %{bundleIdentifier}@, error: %{public}@", v3, v4, v5, v6, v7);
}

void sub_1000872D0(uint64_t a1, uint64_t *a2)
{
  sub_100068F0C(a2, __stack_chk_guard);
  sub_100068ED8();
  sub_100068EF0(&_mh_execute_header, &_os_log_default, v2, "Could not remove configuration for bundle identifier: %{bundleIdentifier}@, error: %{public}@", v3, v4, v5, v6, v7);
}

void sub_100087340(uint64_t a1, uint64_t *a2)
{
  sub_100068F0C(a2, __stack_chk_guard);
  sub_100068ED8();
  sub_100068EF0(&_mh_execute_header, &_os_log_default, v2, "Could not remove management information for bundle identifier: %{bundleIdentifier}@, error: %{public}@", v3, v4, v5, v6, v7);
}

void sub_1000873B0(uint64_t a1, uint64_t *a2)
{
  sub_100068F0C(a2, __stack_chk_guard);
  sub_100068ED8();
  sub_100068EF0(&_mh_execute_header, &_os_log_default, v2, "Could not remove mapping to persona for for bundle identifier: %{bundleIdentifier}@, error: %{public}@", v3, v4, v5, v6, v7);
}

void sub_100087420()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"bundleIdentifier" object:? file:? lineNumber:? description:?];
}

void sub_100087494()
{
  sub_100009F50();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100016B68();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_100087508(void *a1, NSObject *a2)
{
  v3 = [a1 verboseDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not remove restrictions: %{public}@", &v4, 0xCu);
}

void sub_1000875A0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "remove-os-update end with error: %@", &v2, 0xCu);
}

void sub_100087640(void *a1)
{
  v1 = 134217984;
  v2 = [a1 authenticateResponseType];
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "User failed to log into iTunes account. Reason code: %ld", &v1, 0xCu);
}

void sub_100087748(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000482F4();
  sub_10004830C(&_mh_execute_header, v2, v3, "Could not remove app removability for bundle identifier: %{bundleIdentifier}@, error: %{public}@");
}

void sub_1000877B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000482F4();
  sub_10004830C(&_mh_execute_header, v2, v3, "Could not remove app tap to pay screen lock setting for bundle identifier: %{bundleIdentifier}@, error: %{public}@");
}

void sub_100087820(uint64_t *a1)
{
  v1 = *a1;
  sub_1000482F4();
  sub_10004830C(&_mh_execute_header, v2, v3, "Could not remove UserManagement persona mapping for app %{public}@, error: %{public}@");
}

void sub_1000878A0(uint64_t a1)
{
  v1 = *(*a1 + 40);
  v2 = 138543362;
  v3 = v1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "remove software update failed: %{public}@", &v2, 0xCu);
}

void sub_1000879B8(uint64_t a1)
{
  v1 = *(*a1 + 40);
  v2 = 138543362;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "could not get current software update status: %{public}@", &v2, 0xCu);
}

void sub_100087A40(uint64_t a1)
{
  v1 = 138543362;
  v2 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Operation did finish: %{public}@", &v1, 0xCu);
}

void sub_100087AC0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"DMDTaskServerDelegate.m" lineNumber:181 description:{@"%@", a2}];
}

void sub_100087B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"DMDTaskServerDelegate.m" lineNumber:298 description:{@"Queue must not be nil for operation: %@", a3}];
}

void sub_100087BB4(uint64_t a1)
{
  v1 = [*(a1 + 32) removable];
  sub_100075D58();
  sub_10002DD84(&_mh_execute_header, v2, v3, "Error attempting to set removability to %{public}@ Error: %{public}@", v4, v5, v6, v7, v8);
}

void sub_100087C4C(uint64_t a1)
{
  v1 = [*(a1 + 32) tapToPayScreenLock];
  sub_100075D58();
  sub_10002DD84(&_mh_execute_header, v2, v3, "Error attempting to set tapToPayScreenLock to %{public}@ Error:%{public}@", v4, v5, v6, v7, v8);
}

void sub_100087D28(uint64_t a1, uint64_t a2)
{
  v3 = [DMFAppManagementInformation stringForState:a1];
  sub_100075D58();
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not mark app state as %{public}@ for bundle identifier: %{public}@", v4, 0x16u);
}

void sub_100087DD0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMDUserNotificationController.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"notification"}];
}

void sub_100087E4C(uint64_t a1)
{
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not get run loop source for user notification: %{public}@", &v1, 0xCu);
}

void sub_100087F3C(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Cannot display alert: can't create run loop source.", buf, 2u);
}

void sub_100087F80(uint8_t *buf, int *a2, _DWORD *a3)
{
  v3 = *a2;
  *buf = 67109120;
  *a3 = v3;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Cannot create alert. Error: %d", buf, 8u);
}

void sub_1000880E4()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSFileManager(DMDAdditions) dmd_userHomeURL]_block_invoke");
  v2 = getuid();
  v3 = __error();
  v4 = [NSString stringWithUTF8String:strerror(*v3)];
  [v0 handleFailureInFunction:v1 file:@"NSFileManager+DMDAdditions.m" lineNumber:64 description:{@"Failed to get passwd entry for uid %u: %@ (%d)", v2, v4, *__error()}];
}

void sub_1000881A8()
{
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  [sub_10007BA30() stringWithUTF8String:"+[NSFileManager(DMDAdditions) dmd_userHomeURL]_block_invoke"];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_10007BA4C();
  strerror(*v2);
  v3 = [sub_10007BA40() stringWithUTF8String:?];
  v4 = *__error();
  [sub_10007BA20() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_100088258()
{
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  [sub_10007BA30() stringWithUTF8String:"+[NSFileManager(DMDAdditions) dmd_userDarwinUserTempDirectoryURL]_block_invoke"];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_10007BA4C();
  strerror(*v2);
  v3 = [sub_10007BA40() stringWithUTF8String:?];
  v4 = *__error();
  [sub_10007BA20() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_1000882F4()
{
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  [sub_10007BA30() stringWithUTF8String:"+[NSFileManager(DMDAdditions) dmd_userDarwinUserTempDirectoryURL]_block_invoke"];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_10007BA4C();
  strerror(*v2);
  v3 = [sub_10007BA40() stringWithUTF8String:?];
  v4 = *__error();
  [sub_10007BA20() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_100088390(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSFileManager(DMDAdditions) dmd_createUserDMDDirectoryDataVault]");
  [v2 handleFailureInFunction:v3 file:@"NSFileManager+DMDAdditions.m" lineNumber:190 description:{@"Failed to create data vault directory: %@", a1}];
}

void sub_10008841C()
{
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  [sub_10007BA30() stringWithUTF8String:"+[NSFileManager(DMDAdditions) dmd_createUserDMDDirectoryDataVault]"];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_10007BA4C();
  strerror(*v2);
  v3 = [sub_10007BA40() stringWithUTF8String:?];
  v4 = *__error();
  [sub_10007BA20() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_1000884B8()
{
  v3 = +[NSAssertionHandler currentHandler];
  v0 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSFileManager(DMDAdditions) dmd_setUserDirSuffix:]");
  v1 = __error();
  v2 = [NSString stringWithUTF8String:strerror(*v1)];
  [v3 handleFailureInFunction:v0 file:@"NSFileManager+DMDAdditions.m" lineNumber:197 description:{@"Failed to set the user directory suffix: %@ (%d)", v2, *__error()}];
}