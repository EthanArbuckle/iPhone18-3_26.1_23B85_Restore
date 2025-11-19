@interface MSDDataController
+ (id)sharedInstance;
- (MSDDataController)initWithCloudDataManager:(id)a3 homeManager:(id)a4;
- (void)_findServicesForUser:(id)a3 homeID:(id)a4 completion:(id)a5;
- (void)_servicesForUser:(id)a3 homeID:(id)a4 publicInfo:(id)a5 currentUser:(BOOL)a6 completion:(id)a7;
- (void)addMediaService:(id)a3 usingSetupBundles:(id)a4 transaction:(id)a5 completion:(id)a6;
- (void)getAvailableServices:(id)a3 completion:(id)a4;
- (void)getCachedAvailableServices:(id)a3 homeID:(id)a4 completion:(id)a5;
- (void)getDefaultMediaService:(id)a3 completion:(id)a4;
- (void)getServiceConfigurationInfo:(id)a3 serviceID:(id)a4 completion:(id)a5;
- (void)refreshDataForReason:(unint64_t)a3 completion:(id)a4;
- (void)removeMediaService:(id)a3 withUserInfo:(id)a4 completion:(id)a5;
- (void)removeMediaServices:(id)a3 withUserInfo:(id)a4 completion:(id)a5;
- (void)switchUserAccountInfo:(id)a3 homeID:(id)a4 homeUserID:(id)a5 completion:(id)a6;
- (void)updateDefaultMediaService:(id)a3 withUserInfo:(id)a4 completion:(id)a5;
- (void)updateProperty:(id)a3 propertyInfo:(id)a4 withUserInfo:(id)a5 completion:(id)a6;
@end

@implementation MSDDataController

- (MSDDataController)initWithCloudDataManager:(id)a3 homeManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v14.receiver = self;
    v14.super_class = MSDDataController;
    v11 = [(MSDDataController *)&v14 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_cloudManager, a3);
      objc_storeStrong(&v12->_homeManager, a4);
      v12->_isPerformingRefresh = 0;
      v12->_refreshLock._os_unfair_lock_opaque = 0;
    }

    self = v12;
    v10 = self;
  }

  return v10;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000017D8;
  block[3] = &unk_1000508C0;
  block[4] = a1;
  if (qword_100059A20 != -1)
  {
    dispatch_once(&qword_100059A20, block);
  }

  v2 = qword_100059A18;

  return v2;
}

- (void)refreshDataForReason:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  os_unfair_lock_lock(&self->_refreshLock);
  if (self->_isPerformingRefresh)
  {
    os_unfair_lock_unlock(&self->_refreshLock);
    v7 = sub_100030FE4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MSDDataRefreshReasonToString(a3);
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Skipping request (reason: %@) to perform refresh. One underway", buf, 0xCu);
    }

    (*(v6 + 2))(v6, 0, 0);
  }

  else
  {
    self->_isPerformingRefresh = 1;
    os_unfair_lock_unlock(&self->_refreshLock);
    v9 = [[MSDDataRefresh alloc] initWithReason:a3];
    objc_initWeak(buf, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001A64;
    v10[3] = &unk_1000508E8;
    objc_copyWeak(&v12, buf);
    v11 = v6;
    [(MSDDataRefresh *)v9 performRefreshWithCompletion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

- (void)addMediaService:(id)a3 usingSetupBundles:(id)a4 transaction:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v14 = +[CKContainer MSDCloudKitContainer];
  v13 = [v14 privateCloudDatabase];
  [v13 addMediaService:v12 usingSetupBundles:v11 transaction:v10 completion:v9];
}

- (void)getAvailableServices:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = +[CKContainer MSDCloudKitContainer];
  v7 = [v8 privateCloudDatabase];
  [v7 getAvailableServices:v6 completion:v5];
}

- (void)updateDefaultMediaService:(id)a3 withUserInfo:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v11 = +[CKContainer MSDCloudKitContainer];
  v10 = [v11 privateCloudDatabase];
  [v10 updateDefaultMediaService:v9 withUserInfo:v8 completion:v7];
}

- (void)getDefaultMediaService:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = +[CKContainer MSDCloudKitContainer];
  v7 = [v8 privateCloudDatabase];
  [v7 getDefaultMediaService:v6 completion:v5];
}

- (void)updateProperty:(id)a3 propertyInfo:(id)a4 withUserInfo:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v14 = +[CKContainer MSDCloudKitContainer];
  v13 = [v14 privateCloudDatabase];
  [v13 updateProperty:v12 propertyInfo:v11 withUserInfo:v10 completion:v9];
}

- (void)removeMediaService:(id)a3 withUserInfo:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v11 = +[CKContainer MSDCloudKitContainer];
  v10 = [v11 privateCloudDatabase];
  [v10 removeMediaService:v9 withUserInfo:v8 completion:v7];
}

- (void)removeMediaServices:(id)a3 withUserInfo:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7 || ![v7 count])
  {
    if (!v9)
    {
      goto LABEL_13;
    }

    v12 = MSErrorDomain;
    v20 = MSUserInfoErrorStringKey;
    v21 = @"ServiceIDs specified is nil";
    v13 = &v21;
    v14 = &v20;
LABEL_12:
    v16 = [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:1];
    v17 = [NSError errorWithDomain:v12 code:1 userInfo:v16];
    v9[2](v9, 0, v17);

    goto LABEL_13;
  }

  if (v8 && [v8 count])
  {
    v10 = +[CKContainer MSDCloudKitContainer];
    v11 = [v10 privateCloudDatabase];
    [v11 removeMediaServices:v7 withUserInfo:v8 completion:v9];

    goto LABEL_13;
  }

  v15 = sub_100030FE4();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10001A824(v15);
  }

  if (v9)
  {
    v12 = MSErrorDomain;
    v18 = MSUserInfoErrorStringKey;
    v19 = @"Failed to remove services, NIL identifiers passed";
    v13 = &v19;
    v14 = &v18;
    goto LABEL_12;
  }

LABEL_13:
}

- (void)getServiceConfigurationInfo:(id)a3 serviceID:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v11 = +[CKContainer MSDCloudKitContainer];
  v10 = [v11 privateCloudDatabase];
  [v10 getServiceConfigurationInfo:v9 serviceID:v8 completion:v7];
}

- (void)getCachedAvailableServices:(id)a3 homeID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8)
    {
      if (v9)
      {
        [(MSDDataController *)self _findServicesForUser:v8 homeID:v9 completion:v10];
        goto LABEL_8;
      }

      v11 = MSErrorDomain;
      v16 = NSLocalizedDescriptionKey;
      v17 = @"HomeID Passed is Nil";
      v12 = &v17;
      v13 = &v16;
    }

    else
    {
      v11 = MSErrorDomain;
      v18 = NSLocalizedDescriptionKey;
      v19 = @"HomeUserID Passed is Nil";
      v12 = &v19;
      v13 = &v18;
    }

    v14 = [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:1];
    v15 = [NSError errorWithDomain:v11 code:1 userInfo:v14];
    v10[2](v10, 0, v15);
  }

LABEL_8:
}

- (void)switchUserAccountInfo:(id)a3 homeID:(id)a4 homeUserID:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v14 = +[CKContainer MSDCloudKitContainer];
  v13 = [v14 privateCloudDatabase];
  [v13 switchUserAccountInfo:v12 homeID:v11 homeUserID:v10 completion:v9];
}

- (void)_findServicesForUser:(id)a3 homeID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[MSDHomeManager sharedManager];
  v12 = [v11 homeWithIdentifier:v9];

  v13 = [v12 currentUser];
  v14 = [v13 uniqueIdentifier];
  v15 = [v10 isEqual:v14];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001A1B0;
  v17[3] = &unk_100051558;
  v18 = v8;
  v16 = v8;
  [(MSDDataController *)self _servicesForUser:v10 homeID:v9 publicInfo:0 currentUser:v15 completion:v17];
}

- (void)_servicesForUser:(id)a3 homeID:(id)a4 publicInfo:(id)a5 currentUser:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v10 = a3;
  v11 = a5;
  v12 = a7;
  v13 = kPrivateDatabaseKeyData;
  if (!v8)
  {
    v13 = kSharedDatabaseKeyData;
  }

  v14 = *v13;
  v15 = sub_100030FE4();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"is NOT";
    if (v8)
    {
      v16 = @"is";
    }

    v17 = @"Shared";
    if (v8)
    {
      v17 = @"Private";
    }

    *buf = 138412546;
    v38 = v16;
    v39 = 2112;
    v40 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "The user %@ the currentUser, querying %@ database", buf, 0x16u);
  }

  v18 = +[MSDDefaultsManager sharedManager];
  v19 = [v18 objectForDefaultWithCustomClass:v14];

  if ([v19 count])
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10001A728;
    v30[3] = &unk_100050B10;
    v20 = v10;
    v31 = v20;
    v32 = v11;
    v21 = [v19 na_filter:v30];
    v22 = v21;
    if (v21 && [v21 count])
    {
      v12[2](v12, v22, 0);
    }

    else
    {
      v23 = [NSString stringWithFormat:@"Failed to locate services for homeUserID %@", v20];
      v24 = MSErrorDomain;
      v33 = NSLocalizedDescriptionKey;
      v34 = v23;
      v25 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v26 = [NSError errorWithDomain:v24 code:5 userInfo:v25];
      (v12)[2](v12, 0, v26);
    }

    v27 = v31;
  }

  else
  {
    v28 = MSErrorDomain;
    v35 = NSLocalizedDescriptionKey;
    v36 = @"No service configured in home";
    v27 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v29 = [NSError errorWithDomain:v28 code:2 userInfo:v27];
    (v12)[2](v12, 0, v29);
  }
}

@end