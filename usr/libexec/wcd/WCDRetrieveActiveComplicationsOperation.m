@interface WCDRetrieveActiveComplicationsOperation
- (void)doWorkWithCompletionHandler:(id)a3;
@end

@implementation WCDRetrieveActiveComplicationsOperation

- (void)doWorkWithCompletionHandler:(id)a3
{
  v26 = a3;
  v4 = wc_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "[WCDRetrieveActiveComplicationsOperation doWorkWithCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
  }

  v5 = objc_initWeak(&location, self);
  v6 = [(WCDRetrieveActiveComplicationsOperation *)self isCancelled];

  if (v6)
  {
    v7 = objc_loadWeakRetained(&location);
    [v7 finish];
  }

  else
  {
    v8 = CLKActiveComplicationsFromActivePairedDevice();
    v9 = wc_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Retrieved app bundle IDs for active complications %{public}@", &buf, 0xCu);
    }

    v27 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v10)
    {
      v11 = *v36;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v35 + 1) + 8 * v12);
          v14 = objc_loadWeakRetained(&location);
          v15 = [v14 isCancelled];

          if (v15)
          {
            v25 = objc_loadWeakRetained(&location);
            [v25 finish];

            goto LABEL_30;
          }

          if ([v13 length])
          {
            *&buf = 0;
            *(&buf + 1) = &buf;
            v43 = 0x3032000000;
            v44 = sub_10000CB80;
            v45 = sub_10000CB90;
            v46 = 0;
            v16 = dispatch_semaphore_create(0);
            v17 = +[ACXDeviceConnection sharedDeviceConnection];
            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = sub_10000CB98;
            v32[3] = &unk_100048DC8;
            p_buf = &buf;
            v32[4] = v13;
            v18 = v16;
            v33 = v18;
            [v17 fetchInfoForApplicationWithBundleID:v13 forPairedDevice:0 completion:v32];

            v19 = dispatch_time(0, 3000000000);
            if (dispatch_semaphore_wait(v18, v19))
            {
              v20 = wc_log();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *v40 = 138543362;
                v41 = v13;
                _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Timeout requesting appInfo for active complication %{public}@", v40, 0xCu);
              }
            }

            if (*(*(&buf + 1) + 40))
            {
              [v27 addObject:?];
            }

            else
            {
              v21 = wc_log();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *v40 = 138543362;
                v41 = v13;
                _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "iOS App bundle ID is nil for active complication %{public}@", v40, 0xCu);
              }
            }

            _Block_object_dispose(&buf, 8);
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v22 = objc_loadWeakRetained(&location);
    v23 = [v22 isCancelled];

    if (v23)
    {
      v24 = objc_loadWeakRetained(&location);
      [v24 finish];
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000CC3C;
      block[3] = &unk_100048D00;
      objc_copyWeak(&v31, &location);
      v30 = v27;
      dispatch_async(&_dispatch_main_q, block);

      objc_destroyWeak(&v31);
    }

LABEL_30:

    v7 = obj;
  }

  objc_destroyWeak(&location);
}

@end