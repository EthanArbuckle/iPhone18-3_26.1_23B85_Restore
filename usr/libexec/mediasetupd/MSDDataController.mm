@interface MSDDataController
+ (id)sharedInstance;
- (MSDDataController)initWithCloudDataManager:(id)manager homeManager:(id)homeManager;
- (void)_findServicesForUser:(id)user homeID:(id)d completion:(id)completion;
- (void)_servicesForUser:(id)user homeID:(id)d publicInfo:(id)info currentUser:(BOOL)currentUser completion:(id)completion;
- (void)addMediaService:(id)service usingSetupBundles:(id)bundles transaction:(id)transaction completion:(id)completion;
- (void)getAvailableServices:(id)services completion:(id)completion;
- (void)getCachedAvailableServices:(id)services homeID:(id)d completion:(id)completion;
- (void)getDefaultMediaService:(id)service completion:(id)completion;
- (void)getServiceConfigurationInfo:(id)info serviceID:(id)d completion:(id)completion;
- (void)refreshDataForReason:(unint64_t)reason completion:(id)completion;
- (void)removeMediaService:(id)service withUserInfo:(id)info completion:(id)completion;
- (void)removeMediaServices:(id)services withUserInfo:(id)info completion:(id)completion;
- (void)switchUserAccountInfo:(id)info homeID:(id)d homeUserID:(id)iD completion:(id)completion;
- (void)updateDefaultMediaService:(id)service withUserInfo:(id)info completion:(id)completion;
- (void)updateProperty:(id)property propertyInfo:(id)info withUserInfo:(id)userInfo completion:(id)completion;
@end

@implementation MSDDataController

- (MSDDataController)initWithCloudDataManager:(id)manager homeManager:(id)homeManager
{
  managerCopy = manager;
  homeManagerCopy = homeManager;
  v9 = homeManagerCopy;
  selfCopy = 0;
  if (managerCopy && homeManagerCopy)
  {
    v14.receiver = self;
    v14.super_class = MSDDataController;
    v11 = [(MSDDataController *)&v14 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_cloudManager, manager);
      objc_storeStrong(&v12->_homeManager, homeManager);
      v12->_isPerformingRefresh = 0;
      v12->_refreshLock._os_unfair_lock_opaque = 0;
    }

    self = v12;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000017D8;
  block[3] = &unk_1000508C0;
  block[4] = self;
  if (qword_100059A20 != -1)
  {
    dispatch_once(&qword_100059A20, block);
  }

  v2 = qword_100059A18;

  return v2;
}

- (void)refreshDataForReason:(unint64_t)reason completion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&self->_refreshLock);
  if (self->_isPerformingRefresh)
  {
    os_unfair_lock_unlock(&self->_refreshLock);
    v7 = sub_100030FE4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MSDDataRefreshReasonToString(reason);
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Skipping request (reason: %@) to perform refresh. One underway", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  else
  {
    self->_isPerformingRefresh = 1;
    os_unfair_lock_unlock(&self->_refreshLock);
    v9 = [[MSDDataRefresh alloc] initWithReason:reason];
    objc_initWeak(buf, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001A64;
    v10[3] = &unk_1000508E8;
    objc_copyWeak(&v12, buf);
    v11 = completionCopy;
    [(MSDDataRefresh *)v9 performRefreshWithCompletion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

- (void)addMediaService:(id)service usingSetupBundles:(id)bundles transaction:(id)transaction completion:(id)completion
{
  completionCopy = completion;
  transactionCopy = transaction;
  bundlesCopy = bundles;
  serviceCopy = service;
  v14 = +[CKContainer MSDCloudKitContainer];
  privateCloudDatabase = [v14 privateCloudDatabase];
  [privateCloudDatabase addMediaService:serviceCopy usingSetupBundles:bundlesCopy transaction:transactionCopy completion:completionCopy];
}

- (void)getAvailableServices:(id)services completion:(id)completion
{
  completionCopy = completion;
  servicesCopy = services;
  v8 = +[CKContainer MSDCloudKitContainer];
  privateCloudDatabase = [v8 privateCloudDatabase];
  [privateCloudDatabase getAvailableServices:servicesCopy completion:completionCopy];
}

- (void)updateDefaultMediaService:(id)service withUserInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  serviceCopy = service;
  v11 = +[CKContainer MSDCloudKitContainer];
  privateCloudDatabase = [v11 privateCloudDatabase];
  [privateCloudDatabase updateDefaultMediaService:serviceCopy withUserInfo:infoCopy completion:completionCopy];
}

- (void)getDefaultMediaService:(id)service completion:(id)completion
{
  completionCopy = completion;
  serviceCopy = service;
  v8 = +[CKContainer MSDCloudKitContainer];
  privateCloudDatabase = [v8 privateCloudDatabase];
  [privateCloudDatabase getDefaultMediaService:serviceCopy completion:completionCopy];
}

- (void)updateProperty:(id)property propertyInfo:(id)info withUserInfo:(id)userInfo completion:(id)completion
{
  completionCopy = completion;
  userInfoCopy = userInfo;
  infoCopy = info;
  propertyCopy = property;
  v14 = +[CKContainer MSDCloudKitContainer];
  privateCloudDatabase = [v14 privateCloudDatabase];
  [privateCloudDatabase updateProperty:propertyCopy propertyInfo:infoCopy withUserInfo:userInfoCopy completion:completionCopy];
}

- (void)removeMediaService:(id)service withUserInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  serviceCopy = service;
  v11 = +[CKContainer MSDCloudKitContainer];
  privateCloudDatabase = [v11 privateCloudDatabase];
  [privateCloudDatabase removeMediaService:serviceCopy withUserInfo:infoCopy completion:completionCopy];
}

- (void)removeMediaServices:(id)services withUserInfo:(id)info completion:(id)completion
{
  servicesCopy = services;
  infoCopy = info;
  completionCopy = completion;
  if (!servicesCopy || ![servicesCopy count])
  {
    if (!completionCopy)
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
    completionCopy[2](completionCopy, 0, v17);

    goto LABEL_13;
  }

  if (infoCopy && [infoCopy count])
  {
    v10 = +[CKContainer MSDCloudKitContainer];
    privateCloudDatabase = [v10 privateCloudDatabase];
    [privateCloudDatabase removeMediaServices:servicesCopy withUserInfo:infoCopy completion:completionCopy];

    goto LABEL_13;
  }

  v15 = sub_100030FE4();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10001A824(v15);
  }

  if (completionCopy)
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

- (void)getServiceConfigurationInfo:(id)info serviceID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  infoCopy = info;
  v11 = +[CKContainer MSDCloudKitContainer];
  privateCloudDatabase = [v11 privateCloudDatabase];
  [privateCloudDatabase getServiceConfigurationInfo:infoCopy serviceID:dCopy completion:completionCopy];
}

- (void)getCachedAvailableServices:(id)services homeID:(id)d completion:(id)completion
{
  servicesCopy = services;
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if (servicesCopy)
    {
      if (dCopy)
      {
        [(MSDDataController *)self _findServicesForUser:servicesCopy homeID:dCopy completion:completionCopy];
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
    completionCopy[2](completionCopy, 0, v15);
  }

LABEL_8:
}

- (void)switchUserAccountInfo:(id)info homeID:(id)d homeUserID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  dCopy = d;
  infoCopy = info;
  v14 = +[CKContainer MSDCloudKitContainer];
  privateCloudDatabase = [v14 privateCloudDatabase];
  [privateCloudDatabase switchUserAccountInfo:infoCopy homeID:dCopy homeUserID:iDCopy completion:completionCopy];
}

- (void)_findServicesForUser:(id)user homeID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  userCopy = user;
  v11 = +[MSDHomeManager sharedManager];
  v12 = [v11 homeWithIdentifier:dCopy];

  currentUser = [v12 currentUser];
  uniqueIdentifier = [currentUser uniqueIdentifier];
  v15 = [userCopy isEqual:uniqueIdentifier];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001A1B0;
  v17[3] = &unk_100051558;
  v18 = completionCopy;
  v16 = completionCopy;
  [(MSDDataController *)self _servicesForUser:userCopy homeID:dCopy publicInfo:0 currentUser:v15 completion:v17];
}

- (void)_servicesForUser:(id)user homeID:(id)d publicInfo:(id)info currentUser:(BOOL)currentUser completion:(id)completion
{
  currentUserCopy = currentUser;
  userCopy = user;
  infoCopy = info;
  completionCopy = completion;
  v13 = kPrivateDatabaseKeyData;
  if (!currentUserCopy)
  {
    v13 = kSharedDatabaseKeyData;
  }

  v14 = *v13;
  v15 = sub_100030FE4();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"is NOT";
    if (currentUserCopy)
    {
      v16 = @"is";
    }

    v17 = @"Shared";
    if (currentUserCopy)
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
    v20 = userCopy;
    v31 = v20;
    v32 = infoCopy;
    v21 = [v19 na_filter:v30];
    v22 = v21;
    if (v21 && [v21 count])
    {
      completionCopy[2](completionCopy, v22, 0);
    }

    else
    {
      v23 = [NSString stringWithFormat:@"Failed to locate services for homeUserID %@", v20];
      v24 = MSErrorDomain;
      v33 = NSLocalizedDescriptionKey;
      v34 = v23;
      v25 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v26 = [NSError errorWithDomain:v24 code:5 userInfo:v25];
      (completionCopy)[2](completionCopy, 0, v26);
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
    (completionCopy)[2](completionCopy, 0, v29);
  }
}

@end