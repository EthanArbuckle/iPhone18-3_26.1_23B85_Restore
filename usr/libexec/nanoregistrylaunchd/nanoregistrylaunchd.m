uint64_t sub_100000E58(uint64_t a1)
{
  qword_10000CC10 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10000150C(uint64_t a1)
{
  v2 = [*(a1 + 32) _enableAltOnlyDaemons:*(a1 + 48)];
  (*(*(a1 + 40) + 16))();
}

void sub_100001620(uint64_t a1)
{
  v2 = [*(a1 + 32) _enableNanoDaemons:*(a1 + 48)];
  (*(*(a1 + 40) + 16))();
}

void sub_10000242C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 getLocalPairingStorePath];
  [v2 chownWhine:v3];

  v4 = +[NSFileManager defaultManager];
  v5 = [*(a1 + 32) getLocalPairingStorePath];
  v38 = 0;
  v6 = [v4 contentsOfDirectoryAtPath:v5 error:&v38];
  v33 = v38;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v35;
    *&v9 = 138543618;
    v31 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        v14 = [[NSUUID alloc] initWithUUIDString:v13];
        if (v14 && ([*(a1 + 40) containsObject:v14] & 1) == 0)
        {
          v16 = [*(a1 + 32) deletePairedStoreWithUUID:v14];
          v17 = nr_root_daemon_log();
          v18 = v17;
          if (v16)
          {
            v19 = v7;
            v20 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

            if (v20)
            {
              v21 = nr_root_daemon_log();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                v32 = [v16 nr_safeDescription];
                v25 = [v14 UUIDString];
                *buf = v31;
                v40 = v32;
                v41 = 2114;
                v42 = v25;
                v26 = v25;
                _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Error %{public}@ deleting pairing store %{public}@", buf, 0x16u);
              }
            }

            v7 = v19;
            if (!v33)
            {
              v16 = v16;
              v33 = v16;
            }
          }

          else
          {
            v22 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

            if (v22)
            {
              v23 = nr_root_daemon_log();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = [v14 UUIDString];
                *buf = 138543362;
                v40 = v24;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Deleted pairing store %{public}@", buf, 0xCu);
              }
            }
          }
        }

        else
        {
          v15 = [*(a1 + 32) getLocalPairingStorePath];
          v16 = [v15 stringByAppendingPathComponent:v13];

          [*(a1 + 32) chownWhine:v16];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v27 = [v7 countByEnumeratingWithState:&v34 objects:v43 count:16];
      v10 = v27;
    }

    while (v27);
  }

  v28 = nr_root_daemon_log();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

  if (v29)
  {
    v30 = nr_root_daemon_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Completed pairing store cleanup", buf, 2u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000029DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000029FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002A14(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100002C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002C5C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100002E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002E8C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  +[NRLaunchDaemon sharedInstance];

  objc_autoreleasePoolPop(v0);
  v1 = +[NSRunLoop mainRunLoop];
  [v1 run];

  return 0;
}

void sub_100004490(os_log_t log)
{
  v1 = 138412290;
  v2 = @"com.apple.nano.nanoregistry.nanoregistrylaunchd";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "No entitlement %@", &v1, 0xCu);
}

void sub_100004514(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected rooting of %{public}@!!! Unrooting...", &v2, 0xCu);
}