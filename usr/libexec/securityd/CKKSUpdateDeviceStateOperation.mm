@interface CKKSUpdateDeviceStateOperation
- (CKKSUpdateDeviceStateOperation)initWithOperationDependencies:(id)dependencies rateLimit:(BOOL)limit ckoperationGroup:(id)group;
- (void)groupStart;
@end

@implementation CKKSUpdateDeviceStateOperation

- (void)groupStart
{
  deps = [(CKKSUpdateDeviceStateOperation *)self deps];
  accountStateTracker = [deps accountStateTracker];

  if (accountStateTracker)
  {
    objc_initWeak(location, self);
    ckdeviceIDInitialized = [accountStateTracker ckdeviceIDInitialized];
    v4 = [ckdeviceIDInitialized wait:200000000000];

    if (v4)
    {
      v5 = sub_100019104(@"ckksdevice", 0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "CK device ID not initialized, likely quitting", buf, 2u);
      }
    }

    ckdeviceID = [accountStateTracker ckdeviceID];
    if (ckdeviceID)
    {
      cdpCapableiCloudAccountInitialized = [accountStateTracker cdpCapableiCloudAccountInitialized];
      v7 = [cdpCapableiCloudAccountInitialized wait:500000000];

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
      deps2 = [(CKKSUpdateDeviceStateOperation *)self deps];
      databaseProvider = [deps2 databaseProvider];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      deps3 = [(CKKSUpdateDeviceStateOperation *)self deps];
      activeManagedViews = [deps3 activeManagedViews];

      v14 = [activeManagedViews countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v14)
      {
        v15 = *v33;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v33 != v15)
            {
              objc_enumerationMutation(activeManagedViews);
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
            [databaseProvider dispatchSyncWithSQLTransaction:v29];

            objc_destroyWeak(&v31);
          }

          v14 = [activeManagedViews countByEnumeratingWithState:&v32 objects:v38 count:16];
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
      ckdeviceIDError = [accountStateTracker ckdeviceIDError];
      v24 = ckdeviceIDError;
      if (ckdeviceIDError)
      {
        v25 = ckdeviceIDError;
      }

      else
      {
        v25 = +[NSNull null];
      }

      v9 = v25;

      v40[1] = v9;
      databaseProvider = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
      activeManagedViews = [NSError errorWithDomain:@"CKKSErrorDomain" code:59 userInfo:databaseProvider];
      [(CKKSResultOperation *)self setError:activeManagedViews];
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

- (CKKSUpdateDeviceStateOperation)initWithOperationDependencies:(id)dependencies rateLimit:(BOOL)limit ckoperationGroup:(id)group
{
  dependenciesCopy = dependencies;
  groupCopy = group;
  v14.receiver = self;
  v14.super_class = CKKSUpdateDeviceStateOperation;
  v11 = [(CKKSGroupOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong((v11 + 134), dependencies);
    objc_storeStrong((v12 + 142), group);
    v12[128] = limit;
  }

  return v12;
}

@end