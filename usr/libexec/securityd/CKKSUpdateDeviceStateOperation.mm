@interface CKKSUpdateDeviceStateOperation
- (CKKSUpdateDeviceStateOperation)initWithOperationDependencies:(id)a3 rateLimit:(BOOL)a4 ckoperationGroup:(id)a5;
- (void)groupStart;
@end

@implementation CKKSUpdateDeviceStateOperation

- (void)groupStart
{
  v2 = [(CKKSUpdateDeviceStateOperation *)self deps];
  v27 = [v2 accountStateTracker];

  if (v27)
  {
    objc_initWeak(location, self);
    v3 = [v27 ckdeviceIDInitialized];
    v4 = [v3 wait:200000000000];

    if (v4)
    {
      v5 = sub_100019104(@"ckksdevice", 0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "CK device ID not initialized, likely quitting", buf, 2u);
      }
    }

    v26 = [v27 ckdeviceID];
    if (v26)
    {
      v6 = [v27 cdpCapableiCloudAccountInitialized];
      v7 = [v6 wait:500000000];

      if (v7)
      {
        v8 = sub_100019104(@"ckksdevice", 0);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Not quite sure if the account is HSA2/Managed or not. Probably will quit?", buf, 2u);
        }
      }

      v9 = +[NSHashTable weakObjectsHashTable];
      v10 = [(CKKSUpdateDeviceStateOperation *)self deps];
      v11 = [v10 databaseProvider];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v12 = [(CKKSUpdateDeviceStateOperation *)self deps];
      v13 = [v12 activeManagedViews];

      v14 = [v13 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v14)
      {
        v15 = *v33;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v33 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v32 + 1) + 8 * i);
            v29[0] = _NSConcreteStackBlock;
            v29[1] = 3221225472;
            v29[2] = sub_100104AB8;
            v29[3] = &unk_1003370C0;
            v29[4] = v17;
            v29[5] = self;
            objc_copyWeak(&v31, location);
            v18 = v9;
            v30 = v18;
            [v11 dispatchSyncWithSQLTransaction:v29];

            objc_destroyWeak(&v31);
          }

          v14 = [v13 countByEnumeratingWithState:&v32 objects:v38 count:16];
        }

        while (v14);
        v9 = v18;
      }
    }

    else
    {
      v22 = sub_100019104(@"ckksdevice", 0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "CK device ID not initialized, quitting", buf, 2u);
      }

      v40[0] = @"CK device ID missing";
      v39[0] = NSLocalizedDescriptionKey;
      v39[1] = NSUnderlyingErrorKey;
      v23 = [v27 ckdeviceIDError];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = +[NSNull null];
      }

      v9 = v25;

      v40[1] = v9;
      v11 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
      v13 = [NSError errorWithDomain:@"CKKSErrorDomain" code:59 userInfo:v11];
      [(CKKSResultOperation *)self setError:v13];
    }

    objc_destroyWeak(location);
  }

  else
  {
    v19 = sub_100019104(@"ckksdevice", 0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "no AccountTracker object", location, 2u);
    }

    v41 = NSLocalizedDescriptionKey;
    v42 = @"no AccountTracker object";
    v20 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v21 = [NSError errorWithDomain:@"CKKSErrorDomain" code:57 userInfo:v20];
    [(CKKSResultOperation *)self setError:v21];
  }
}

- (CKKSUpdateDeviceStateOperation)initWithOperationDependencies:(id)a3 rateLimit:(BOOL)a4 ckoperationGroup:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CKKSUpdateDeviceStateOperation;
  v11 = [(CKKSGroupOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong((v11 + 134), a3);
    objc_storeStrong((v12 + 142), a5);
    v12[128] = a4;
  }

  return v12;
}

@end