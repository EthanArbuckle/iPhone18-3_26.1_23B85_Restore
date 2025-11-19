@interface CKDatabase
- (BOOL)_attemptToRecordServiceRequestLapse:(id)a3 fromRecords:(id)a4;
- (id)_checkIfRecordZonePresentForUser:(id)a3;
- (id)_fetchPlaceholderRecordData:(id)a3 error:(id *)a4;
- (id)_fetchRefreshTokenForRecordZoneID:(id)a3;
- (id)_getOperationConfiguration;
- (id)_handleChangedRecords:(id)a3 andDeletedRecordIDS:(id)a4;
- (id)_handleChangesInChangedRecords:(id)a3 withDataInLocalCopy:(id)a4;
- (id)_handleDeletedRecordIDS:(id)a3 withDataInLocalCopy:(id)a4;
- (id)_handleRecordZonesChanged:(id)a3 deletedRecordZones:(id)a4;
- (id)operationConfiguration;
- (void)_addSubscriptionWithIdentifier:(id)a3 completion:(id)a4;
- (void)_checkShareStatusIfApplicable:(id)a3;
- (void)_deleteRecord:(id)a3 completion:(id)a4;
- (void)_handleCKErrorChangeTokenExpired:(id)a3 userInfo:(id)a4;
- (void)_handleManateeLossOnPrivateDatabase:(id)a3 homeUserID:(id)a4;
- (void)_handleManateeLossOnSharedDatabase:(id)a3 completion:(id)a4;
- (void)_notifyObserversDataChanged:(id)a3 cachedData:(id)a4;
- (void)_populateRecordZoneWithCachedInfo:(id)a3 cachedInfo:(id)a4;
- (void)_purgeDeletedZonesFromDefaults:(id)a3;
- (void)_saveRecordZone:(id)a3 withAttribution:(id)a4 andOptions:(id)a5 completion:(id)a6;
- (void)_serviceConfigInfoFor:(id)a3 homeUserIDS:(id)a4 serviceID:(id)a5 completion:(id)a6;
- (void)_updateDefaultService:(id)a3 serviceID:(id)a4 userInfo:(id)a5 completion:(id)a6;
- (void)_updateServerChangeTokenMap:(id)a3 serverChangeToken:(id)a4;
- (void)_updateUserInfoToRecordZoneIDMap:(id)a3 userID:(id)a4;
- (void)addMediaService:(id)a3 usingSetupBundles:(id)a4 transaction:(id)a5 completion:(id)a6;
- (void)addSubscriptionForDatabaseWithIdentifier:(id)a3 completion:(id)a4;
- (void)deleteRecordZone:(id)a3 withOptions:(id)a4 completion:(id)a5;
- (void)fetchAllRecordsForRecordZoneID:(id)a3 userInfo:(id)a4 withOptions:(id)a5 completion:(id)a6;
- (void)fetchRecordWithID:(id)a3 withOptions:(id)a4 completion:(id)a5;
- (void)fetchRecordWithIDS:(id)a3 withOptions:(id)a4 completion:(id)a5;
- (void)fetchRecordZoneFor:(id)a3 user:(id)a4 withOptions:(id)a5 withAttribution:(id)a6 completion:(id)a7;
- (void)getAvailableServices:(id)a3 completion:(id)a4;
- (void)getDefaultMediaService:(id)a3 completion:(id)a4;
- (void)getServiceConfigurationInfo:(id)a3 serviceID:(id)a4 completion:(id)a5;
- (void)handleCKErrorMissingManateeIdentity:(id)a3 homeUserID:(id)a4;
- (void)handleCKErrorMissingManateeIdentity:(id)a3 homeUserIDS:(id)a4;
- (void)refreshDatabase:(id)a3 completion:(id)a4;
- (void)removeMediaService:(id)a3 withUserInfo:(id)a4 completion:(id)a5;
- (void)removeMediaServices:(id)a3 withUserInfo:(id)a4 completion:(id)a5;
- (void)saveRecord:(id)a3 withAttribution:(id)a4 withOptions:(id)a5 completion:(id)a6;
- (void)switchUserAccountInfo:(id)a3 homeID:(id)a4 homeUserID:(id)a5 completion:(id)a6;
- (void)updateAuthRenewalForMediaService:(id)a3 userInfo:(id)a4 completion:(id)a5;
- (void)updateDefaultMediaService:(id)a3 withUserInfo:(id)a4 completion:(id)a5;
- (void)updateProperty:(id)a3 propertyInfo:(id)a4 withUserInfo:(id)a5 completion:(id)a6;
@end

@implementation CKDatabase

- (void)addSubscriptionForDatabaseWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CKFetchSubscriptionsOperation alloc];
  v18 = v6;
  v9 = [NSArray arrayWithObjects:&v18 count:1];
  v10 = [v8 initWithSubscriptionIDs:v9];

  [v10 setQualityOfService:17];
  v11 = [(CKDatabase *)self _getOperationConfiguration];
  [v10 setConfiguration:v11];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001CE0;
  v14[3] = &unk_100050960;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v12 = v7;
  v13 = v6;
  [v10 setFetchSubscriptionCompletionBlock:v14];
  [(CKDatabase *)self addOperation:v10];
}

- (void)_addSubscriptionWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CKNotificationInfo);
  [v8 setShouldSendContentAvailable:1];
  v9 = [[CKDatabaseSubscription alloc] initWithSubscriptionID:v7];

  [v9 setNotificationInfo:v8];
  if (v9)
  {
    v10 = [CKModifySubscriptionsOperation alloc];
    v17 = v9;
    v11 = [NSArray arrayWithObjects:&v17 count:1];
    v12 = [v10 initWithSubscriptionsToSave:v11 subscriptionIDsToDelete:0];

    [v12 setQualityOfService:17];
    v13 = [(CKDatabase *)self _getOperationConfiguration];
    [v12 setConfiguration:v13];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000210C;
    v15[3] = &unk_100050988;
    v16 = v6;
    [v12 setModifySubscriptionsCompletionBlock:v15];
    [(CKDatabase *)self addOperation:v12];

LABEL_7:
    goto LABEL_8;
  }

  v14 = sub_100030FE4();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10000225C(v14);
  }

  if (v6)
  {
    v12 = [NSError errorWithDomain:MSErrorDomain code:1 userInfo:0];
    (*(v6 + 2))(v6, 0, v12);
    goto LABEL_7;
  }

LABEL_8:
}

- (id)_getOperationConfiguration
{
  v2 = objc_opt_new();

  return v2;
}

- (void)addMediaService:(id)a3 usingSetupBundles:(id)a4 transaction:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MSServiceEvent alloc];
  v15 = [v10 serviceID];
  v16 = [v14 initWithEventType:0 serviceID:v15];

  v17 = [v16 stopwatch];
  [v17 start];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000062B0;
  v33[3] = &unk_100050B38;
  v34 = v16;
  v18 = v16;
  v19 = objc_retainBlock(v33);
  v20 = +[MSDPublicDBManager shared];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100006338;
  v26[3] = &unk_100050C28;
  v31 = v19;
  v32 = v13;
  v27 = v10;
  v28 = v11;
  v29 = self;
  v30 = v12;
  v21 = v12;
  v22 = v11;
  v23 = v13;
  v24 = v19;
  v25 = v10;
  [v20 syncDataWithCloudKit:v26];
}

- (void)getAvailableServices:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = objc_alloc_init(MSDFetchCKDataOptions);
    [(MSDFetchCKDataOptions *)v8 setCreateNewZoneIfMissing:0];
    [(MSDFetchCKDataOptions *)v8 setUserInitiatedRequest:1];
    v9 = [v6 objectForKey:kCKDatabaseAccessUserInfoHomeIDKey];
    v10 = [v6 objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000071BC;
    v15[3] = &unk_100050C78;
    v18 = v7;
    v15[4] = self;
    v16 = v6;
    v17 = v8;
    v11 = v8;
    [(CKDatabase *)self fetchRecordZoneFor:v9 user:v10 withOptions:v11 completion:v15];

    v12 = v18;
LABEL_8:

    goto LABEL_9;
  }

  v13 = sub_100030FE4();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10000CDBC();
  }

  if (v7)
  {
    v14 = MSErrorDomain;
    v19 = MSUserInfoErrorStringKey;
    v20 = @"Failed to fetch available services, NIL HomeID and HomeUserID";
    v11 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v12 = [NSError errorWithDomain:v14 code:1 userInfo:v11];
    (*(v7 + 2))(v7, 0, v12);
    goto LABEL_8;
  }

LABEL_9:
}

- (void)updateDefaultMediaService:(id)a3 withUserInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 && [v9 count])
  {
    objc_initWeak(&location, self);
    v11 = objc_alloc_init(MSDFetchCKDataOptions);
    [(MSDFetchCKDataOptions *)v11 setCreateNewZoneIfMissing:0];
    [(MSDFetchCKDataOptions *)v11 setUserInitiatedRequest:1];
    v12 = [v9 objectForKey:kCKDatabaseAccessUserInfoHomeIDKey];
    v13 = [v9 objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100007AC0;
    v17[3] = &unk_100050CC8;
    v20 = v10;
    objc_copyWeak(&v21, &location);
    v18 = v8;
    v19 = v9;
    [(CKDatabase *)self fetchRecordZoneFor:v12 user:v13 withOptions:v11 completion:v17];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = sub_100030FE4();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE78();
    }

    if (v10)
    {
      v23 = MSUserInfoErrorStringKey;
      v24 = @"Failed to update default service, NIL HomeID and HomeUserID";
      v15 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v16 = [NSError errorWithDomain:MSErrorDomain code:1 userInfo:v15];
      (*(v10 + 2))(v10, 0, v16);
    }
  }
}

- (void)_updateDefaultService:(id)a3 serviceID:(id)a4 userInfo:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100007DAC;
  v18[3] = &unk_100050D18;
  v14 = v10;
  v19 = v14;
  v15 = v13;
  v22 = v15;
  objc_copyWeak(&v23, &location);
  v16 = v12;
  v20 = v16;
  v17 = v11;
  v21 = v17;
  [(CKDatabase *)self fetchRecordWithID:v14 completionHandler:v18];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)getDefaultMediaService:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = [NSUUID alloc];
    v9 = [v6 objectForKey:kCKDatabaseAccessUserInfoHomeIDKey];
    v10 = [v8 initWithUUIDString:v9];

    v11 = [v6 objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
    objc_initWeak(&location, self);
    v12 = objc_alloc_init(MSDFetchCKDataOptions);
    [(MSDFetchCKDataOptions *)v12 setCreateNewZoneIfMissing:0];
    [(MSDFetchCKDataOptions *)v12 setUserInitiatedRequest:1];
    v13 = [v10 UUIDString];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100008458;
    v17[3] = &unk_100050D68;
    v21 = v7;
    objc_copyWeak(&v22, &location);
    v18 = v6;
    v14 = v12;
    v19 = v14;
    v15 = v11;
    v20 = v15;
    [(CKDatabase *)self fetchRecordZoneFor:v13 user:v15 withOptions:v14 completion:v17];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
LABEL_8:

    goto LABEL_9;
  }

  v16 = sub_100030FE4();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10000CF74();
  }

  if (v7)
  {
    v24 = MSUserInfoErrorStringKey;
    v25 = @"Failed to fetch default media service, NIL HomeID and HomeUserID";
    v10 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v15 = [NSError errorWithDomain:MSErrorDomain code:1 userInfo:v10];
    (*(v7 + 2))(v7, 0, v15);
    goto LABEL_8;
  }

LABEL_9:
}

- (void)removeMediaService:(id)a3 withUserInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 && [v9 count])
  {
    v11 = objc_alloc_init(MSDFetchCKDataOptions);
    [(MSDFetchCKDataOptions *)v11 setCreateNewZoneIfMissing:0];
    [(MSDFetchCKDataOptions *)v11 setUserInitiatedRequest:1];
    v12 = [MSServiceEvent alloc];
    v13 = [v8 serviceID];
    v14 = [v12 initWithEventType:1 serviceID:v13];

    v15 = [v14 stopwatch];
    [v15 start];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100008EC8;
    v30[3] = &unk_100050B38;
    v31 = v14;
    v16 = v14;
    v17 = objc_retainBlock(v30);
    v18 = [v9 objectForKey:kCKDatabaseAccessUserInfoHomeIDKey];
    v19 = [v9 objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100008F50;
    v24[3] = &unk_100050E30;
    v28 = v17;
    v29 = v10;
    v24[4] = self;
    v25 = v9;
    v26 = v11;
    v27 = v8;
    v20 = v11;
    v21 = v17;
    [(CKDatabase *)self fetchRecordZoneFor:v18 user:v19 withOptions:v20 completion:v24];

LABEL_8:
    goto LABEL_9;
  }

  v22 = sub_100030FE4();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed to remove service, NIL HomeID and NIL HomeUserID", buf, 2u);
  }

  if (v10)
  {
    v23 = MSErrorDomain;
    v33 = MSUserInfoErrorStringKey;
    v34 = @"Failed to remove service, NIL HomeID and HomeUserID";
    v16 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v20 = [NSError errorWithDomain:v23 code:1 userInfo:v16];
    (*(v10 + 2))(v10, 0, v20);
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_deleteRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100030FE4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315395;
    v14 = "[CKDatabase(MediaService) _deleteRecord:completion:]";
    v15 = 2113;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Attempting to delete record %{private}@", buf, 0x16u);
  }

  v9 = objc_alloc_init(MSDFetchCKDataOptions);
  [(MSDFetchCKDataOptions *)v9 setUserInitiatedRequest:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100009C6C;
  v11[3] = &unk_100050CA0;
  v12 = v7;
  v10 = v7;
  [(CKDatabase *)self deleteRecord:v6 withOptions:v9 completion:v11];
}

- (void)updateProperty:(id)a3 propertyInfo:(id)a4 withUserInfo:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v12 && [v12 count])
  {
    v14 = objc_alloc_init(MSDFetchCKDataOptions);
    [(MSDFetchCKDataOptions *)v14 setCreateNewZoneIfMissing:0];
    [(MSDFetchCKDataOptions *)v14 setUserInitiatedRequest:1];
    v15 = [v12 objectForKey:kCKDatabaseAccessUserInfoHomeIDKey];
    v16 = [v12 objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100009EF0;
    v20[3] = &unk_100050EA8;
    v25 = v13;
    v21 = v10;
    v22 = self;
    v23 = v12;
    v24 = v11;
    [(CKDatabase *)self fetchRecordZoneFor:v15 user:v16 withOptions:v14 completion:v20];

    v17 = v25;
LABEL_8:

    goto LABEL_9;
  }

  v18 = sub_100030FE4();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_10000D064();
  }

  if (v13)
  {
    v19 = MSErrorDomain;
    v26 = MSUserInfoErrorStringKey;
    v27 = @"Failed to updateProperty, NIL HomeID and HomeUserID";
    v14 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v17 = [NSError errorWithDomain:v19 code:1 userInfo:v14];
    (*(v13 + 2))(v13, 0, v17);
    goto LABEL_8;
  }

LABEL_9:
}

- (void)getServiceConfigurationInfo:(id)a3 serviceID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && [v8 count])
  {
    v11 = +[CKFetchRecordZonesOperation fetchAllRecordZonesOperation];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000A724;
    v14[3] = &unk_100050F38;
    v14[4] = self;
    v15 = v8;
    v17 = v10;
    v16 = v9;
    [v11 setFetchRecordZonesCompletionBlock:v14];
    [v11 setQualityOfService:25];
    [(CKDatabase *)self addOperation:v11];

LABEL_6:
    goto LABEL_7;
  }

  if (v10)
  {
    v12 = MSErrorDomain;
    v18 = MSUserInfoErrorStringKey;
    v19 = @"Failed to fetch service config info, HomeUserIDS cannot be nil";
    v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [NSError errorWithDomain:v12 code:1 userInfo:v11];
    (*(v10 + 2))(v10, 0, v13);

    goto LABEL_6;
  }

LABEL_7:
}

- (void)_serviceConfigInfoFor:(id)a3 homeUserIDS:(id)a4 serviceID:(id)a5 completion:(id)a6
{
  v28 = a3;
  v31 = a4;
  v10 = a5;
  v11 = a6;
  if (v11)
  {
    if (v10)
    {
      v47[0] = 0;
      v47[1] = v47;
      v47[2] = 0x3032000000;
      v47[3] = sub_100006964;
      v47[4] = sub_100006974;
      v48 = 0;
      v12 = objc_opt_new();
      v27 = v11;
      v13 = [v10 UUIDString];
      v30 = [MSDPublicDBManager getCachedPublicInfoForServiceID:v13];

      v14 = dispatch_group_create();
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = v28;
      v15 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v15)
      {
        v16 = *v44;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v44 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v43 + 1) + 8 * i);
            v19 = [CKRecordID alloc];
            v20 = [v10 UUIDString];
            v21 = [v18 zoneID];
            v22 = [v19 initWithRecordName:v20 zoneID:v21];

            v23 = sub_100030FE4();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v50 = v22;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Fetching records for recordID: %@", buf, 0xCu);
            }

            dispatch_group_enter(v14);
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_10000AE1C;
            v36[3] = &unk_100050F60;
            v37 = v31;
            v38 = v14;
            v39 = v10;
            v40 = v30;
            v41 = v12;
            v42 = v47;
            [(CKDatabase *)self fetchRecordWithID:v22 withOptions:0 completion:v36];
          }

          v15 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
        }

        while (v15);
      }

      v24 = dispatch_get_global_queue(33, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000B040;
      block[3] = &unk_100050F88;
      v33 = v12;
      v34 = v27;
      v35 = v47;
      v25 = v12;
      dispatch_group_notify(v14, v24, block);

      _Block_object_dispose(v47, 8);
      v11 = v27;
    }

    else
    {
      v26 = [NSError errorWithDomain:MSErrorDomain code:1 userInfo:0];
      (*(v11 + 2))(v11, 0, v26);
    }
  }
}

- (void)removeMediaServices:(id)a3 withUserInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && [v8 count])
  {
    if (v9 && [v9 count])
    {
      v11 = objc_alloc_init(MSDFetchCKDataOptions);
      [(MSDFetchCKDataOptions *)v11 setCreateNewZoneIfMissing:0];
      [(MSDFetchCKDataOptions *)v11 setUserInitiatedRequest:0];
      v12 = [v9 objectForKey:kCKDatabaseAccessUserInfoHomeIDKey];
      v13 = [v9 objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10000B308;
      v20[3] = &unk_100050C78;
      v24 = v10;
      v21 = v8;
      v22 = self;
      v23 = v11;
      v14 = v11;
      [(CKDatabase *)self fetchRecordZoneFor:v12 user:v13 withOptions:v14 completion:v20];

      v15 = v24;
LABEL_13:

      goto LABEL_14;
    }

    v19 = sub_100030FE4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000D180();
    }

    if (v10)
    {
      v16 = MSErrorDomain;
      v25 = MSUserInfoErrorStringKey;
      v26 = @"Failed to remove services, NIL identifiers passed";
      v17 = &v26;
      v18 = &v25;
      goto LABEL_12;
    }
  }

  else if (v10)
  {
    v16 = MSErrorDomain;
    v27 = MSUserInfoErrorStringKey;
    v28 = @"ServiceIDs specified is nil";
    v17 = &v28;
    v18 = &v27;
LABEL_12:
    v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v18 count:1];
    v15 = [NSError errorWithDomain:v16 code:1 userInfo:v14];
    (*(v10 + 2))(v10, 0, v15);
    goto LABEL_13;
  }

LABEL_14:
}

- (void)updateAuthRenewalForMediaService:(id)a3 userInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 && [v9 count])
  {
    if (v8)
    {
      v11 = sub_100030FE4();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v8 authCredential];
        v13 = [v8 authConfiguration];
        *buf = 138478083;
        v28 = v12;
        v29 = 2113;
        v30 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating CloudKit with AuthCredential %{private}@, AuthConfig %{private}@", buf, 0x16u);
      }

      v14 = objc_alloc_init(MSDFetchCKDataOptions);
      [(MSDFetchCKDataOptions *)v14 setCreateNewZoneIfMissing:0];
      [(MSDFetchCKDataOptions *)v14 setUserInitiatedRequest:1];
      v15 = [v9 objectForKey:kCKDatabaseAccessUserInfoHomeIDKey];
      v16 = [v9 objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10000B9C0;
      v22[3] = &unk_100050C78;
      v26 = v10;
      v23 = v8;
      v24 = self;
      v25 = v14;
      v17 = v14;
      [(CKDatabase *)self fetchRecordZoneFor:v15 user:v16 withOptions:v17 completion:v22];

      v18 = v26;
      goto LABEL_10;
    }

    if (!v10)
    {
      goto LABEL_11;
    }

    v19 = MSErrorDomain;
    v31 = MSUserInfoErrorStringKey;
    v32 = @"Failed to updateAuthRenewalInfo, NIL MediaService";
    v20 = &v32;
    v21 = &v31;
LABEL_9:
    v17 = [NSDictionary dictionaryWithObjects:v20 forKeys:v21 count:1];
    v18 = [NSError errorWithDomain:v19 code:1 userInfo:v17];
    (*(v10 + 2))(v10, 0, v18);
LABEL_10:

    goto LABEL_11;
  }

  if (v10)
  {
    v19 = MSErrorDomain;
    v33 = MSUserInfoErrorStringKey;
    v34 = @"Failed to updateAuthRenewalInfo, NIL UserInfo";
    v20 = &v34;
    v21 = &v33;
    goto LABEL_9;
  }

LABEL_11:
}

- (void)switchUserAccountInfo:(id)a3 homeID:(id)a4 homeUserID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10 && v11 && v12)
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x3032000000;
    v30[3] = sub_100006964;
    v30[4] = sub_100006974;
    v31 = 0;
    v14 = dispatch_group_create();
    dispatch_group_enter(v14);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000C1F4;
    v26[3] = &unk_100051068;
    v29 = v30;
    v15 = v14;
    v27 = v15;
    v16 = v10;
    v28 = v16;
    [MSAuthTokenProvider fetchAuthTokensForMediaService:v16 networkActivity:0 completion:v26];
    v17 = dispatch_get_global_queue(33, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C384;
    block[3] = &unk_100051150;
    v25 = v30;
    v24 = v13;
    block[4] = self;
    v21 = v11;
    v22 = v12;
    v23 = v16;
    dispatch_group_notify(v15, v17, block);

    _Block_object_dispose(v30, 8);
  }

  else
  {
    v32 = NSLocalizedDescriptionKey;
    v33 = @"Failed to switch User Account Info, NIL attributes provided";
    v18 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v19 = [NSError errorWithDomain:MSErrorDomain code:1 userInfo:v18];
    (*(v13 + 2))(v13, v19);
  }
}

- (void)refreshDatabase:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100030FE4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    [(CKDatabase *)self databaseScope];
    v9 = CKDatabaseScopeString();
    *buf = 136315395;
    v32 = "[CKDatabase(MSDCloudDatabase) refreshDatabase:completion:]";
    v33 = 2113;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s databaseScope %{private}@", buf, 0x16u);
  }

  if ([(CKDatabase *)self databaseScope]== 3)
  {
    v10 = @"sharedDatabaseChangesKey";
  }

  else
  {
    v10 = @"privateDatabaseChangesKey";
  }

  v11 = +[MSDDefaultsManager sharedManager];
  v12 = [v11 objectForDefaultWithCustomClass:v10];

  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v15 = [[CKFetchDatabaseChangesOperation alloc] initWithPreviousServerChangeToken:v12];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000282DC;
  v26[3] = &unk_1000521A8;
  v26[4] = self;
  v30 = v6;
  v16 = v13;
  v27 = v16;
  v17 = v14;
  v28 = v17;
  v29 = v10;
  v18 = v6;
  [v15 setFetchDatabaseChangesCompletionBlock:v26];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100028504;
  v24[3] = &unk_1000521D0;
  v25 = v16;
  v19 = v16;
  [v15 setRecordZoneWithIDChangedBlock:v24];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100028510;
  v22[3] = &unk_1000521D0;
  v23 = v17;
  v20 = v17;
  [v15 setRecordZoneWithIDWasDeletedBlock:v22];
  LODWORD(v14) = [v7 userInitiatedRequest];

  if (v14)
  {
    [v15 setQualityOfService:25];
  }

  else
  {
    [v15 setQualityOfService:17];
    v21 = [(CKDatabase *)self operationConfiguration];
    [v15 setConfiguration:v21];
  }

  [(CKDatabase *)self addOperation:v15];
}

- (void)fetchRecordZoneFor:(id)a3 user:(id)a4 withOptions:(id)a5 withAttribution:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = sub_100030FE4();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v33 = v13;
    v34 = 2113;
    v35 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Fetching Zone for HomeUserID: %{private}@, options: %{private}@", buf, 0x16u);
  }

  v18 = [(CKDatabase *)self _checkIfRecordZonePresentForUser:v13];
  v19 = sub_100030FE4();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      v21 = [v18 zoneID];
      *buf = 138478083;
      v33 = v21;
      v34 = 2113;
      v35 = v13;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "RecordZone %{private}@ for user %{private}@", buf, 0x16u);
    }

    if (v16)
    {
      v16[2](v16, v18, 0);
    }
  }

  else
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Possibly missing cached value on device, checking with CloudKit", buf, 2u);
    }

    objc_initWeak(buf, self);
    v22 = +[CKFetchRecordZonesOperation fetchAllRecordZonesOperation];
    MSDUpdateCKOperationForAttribution(v22, v15);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000288A8;
    v25[3] = &unk_1000522B8;
    v30 = v16;
    v25[4] = self;
    v26 = v13;
    objc_copyWeak(&v31, buf);
    v27 = v12;
    v23 = v14;
    v28 = v23;
    v29 = v15;
    [v22 setFetchRecordZonesCompletionBlock:v25];
    if ([v23 userInitiatedRequest])
    {
      [v22 setQualityOfService:25];
    }

    else
    {
      [v22 setQualityOfService:17];
      v24 = [(CKDatabase *)self operationConfiguration];
      [v22 setConfiguration:v24];
    }

    [(CKDatabase *)self addOperation:v22];

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }
}

- (id)_checkIfRecordZonePresentForUser:(id)a3
{
  v3 = a3;
  v4 = +[MSDDefaultsManager sharedManager];
  v5 = [v4 objectForDefaultWithCustomClass:@"kUserIDToRecordZoneIDMap"];

  if (v5 && ([v5 objectForKey:v3], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [[CKRecordZone alloc] initWithZoneID:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateUserInfoToRecordZoneIDMap:(id)a3 userID:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = +[MSDDefaultsManager sharedManager];
  v7 = [v6 objectForDefaultWithCustomClass:@"kUserIDToRecordZoneIDMap"];
  v8 = [v7 mutableCopy];

  if (![v8 count])
  {
    v9 = objc_opt_new();

    v8 = v9;
  }

  [v8 setObject:v12 forKey:v5];
  v10 = +[MSDDefaultsManager sharedManager];
  v11 = [v8 copy];
  [v10 setObjectWithCustomClass:v11 forDefault:@"kUserIDToRecordZoneIDMap"];
}

- (void)deleteRecordZone:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [CKModifyRecordZonesOperation alloc];
  v18 = v8;
  v12 = [NSArray arrayWithObjects:&v18 count:1];
  v13 = [v11 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v12];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100029D80;
  v16[3] = &unk_100050988;
  v17 = v9;
  v14 = v9;
  [v13 setModifyRecordZonesCompletionBlock:v16];
  LODWORD(v12) = [v10 userInitiatedRequest];

  if (v12)
  {
    [v13 setQualityOfService:25];
  }

  else
  {
    [v13 setQualityOfService:17];
    v15 = [(CKDatabase *)self operationConfiguration];
    [v13 setConfiguration:v15];
  }

  [(CKDatabase *)self addOperation:v13];
}

- (void)fetchRecordWithID:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v17 = v8;
    v11 = [NSArray arrayWithObjects:&v17 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100029FCC;
    v14[3] = &unk_1000522E0;
    v16 = v10;
    v15 = v8;
    [(CKDatabase *)self fetchRecordWithIDS:v11 withOptions:v9 completion:v14];

    v12 = v16;
LABEL_7:

    goto LABEL_8;
  }

  v13 = sub_100030FE4();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1000304CC();
  }

  if (v10)
  {
    v12 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
    (*(v10 + 2))(v10, 0, v12);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)fetchRecordWithIDS:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && [v8 count])
  {
    v11 = [[CKFetchRecordsOperation alloc] initWithRecordIDs:v8];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002A21C;
    v14[3] = &unk_100051660;
    v15 = v10;
    [v11 setFetchRecordsCompletionBlock:v14];
    if ([v9 userInitiatedRequest])
    {
      [v11 setQualityOfService:25];
    }

    else
    {
      [v11 setQualityOfService:17];
      v13 = [(CKDatabase *)self operationConfiguration];
      [v11 setConfiguration:v13];
    }

    [(CKDatabase *)self addOperation:v11];

    goto LABEL_11;
  }

  v12 = sub_100030FE4();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100030508();
  }

  if (v10)
  {
    v11 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
    (*(v10 + 2))(v10, 0, v11);
LABEL_11:
  }
}

- (void)fetchAllRecordsForRecordZoneID:(id)a3 userInfo:(id)a4 withOptions:(id)a5 completion:(id)a6
{
  v10 = a3;
  v25 = a4;
  v24 = a5;
  v11 = a6;
  if (v10)
  {
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x3032000000;
    v46[3] = sub_10002926C;
    v46[4] = sub_10002927C;
    v47 = 0;
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3032000000;
    v44[3] = sub_10002926C;
    v44[4] = sub_10002927C;
    v45 = objc_opt_new();
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x3032000000;
    v42[3] = sub_10002926C;
    v42[4] = sub_10002927C;
    v43 = objc_opt_new();
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x3032000000;
    v40[3] = sub_10002926C;
    v40[4] = sub_10002927C;
    v41 = 0;
    v12 = [[MSServiceEvent alloc] initWithEventType:2];
    v13 = [v12 stopwatch];
    [v13 start];

    if ([(CKDatabase *)self databaseScope]== 3)
    {
      v14 = @"sharedDatabaseData";
    }

    else
    {
      v14 = @"privateDatabaseData";
    }

    v15 = [(CKDatabase *)self _fetchRefreshTokenForRecordZoneID:v10, v24];
    v16 = sub_100030FE4();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315395;
      v50 = "[CKDatabase(MSDCloudDatabase) fetchAllRecordsForRecordZoneID:userInfo:withOptions:completion:]";
      v51 = 2113;
      v52 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s Passing Config information %{private}@", buf, 0x16u);
    }

    v17 = [CKFetchRecordZoneChangesOperation alloc];
    v48 = v10;
    v18 = [NSArray arrayWithObjects:&v48 count:1];
    v19 = [v17 initWithRecordZoneIDs:v18 configurationsByRecordZoneID:v15];

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10002A830;
    v29[3] = &unk_1000523A8;
    v20 = v12;
    v36 = v46;
    v30 = v20;
    v31 = self;
    v32 = v10;
    v33 = v25;
    v34 = v14;
    v35 = v11;
    v37 = v44;
    v38 = v42;
    v39 = v40;
    [v19 setFetchRecordZoneChangesCompletionBlock:v29];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10002B1B8;
    v28[3] = &unk_1000523D0;
    v28[4] = self;
    v28[5] = v46;
    v28[6] = v44;
    v28[7] = v42;
    v28[8] = v40;
    [v19 setRecordZoneFetchCompletionBlock:v28];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10002B434;
    v27[3] = &unk_1000523F8;
    v27[4] = self;
    v27[5] = v42;
    [v19 setRecordWithIDWasDeletedBlock:v27];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10002B544;
    v26[3] = &unk_100052420;
    v26[4] = self;
    v26[5] = v44;
    [v19 setRecordWasChangedBlock:v26];
    if ([v24 userInitiatedRequest])
    {
      [v19 setQualityOfService:25];
    }

    else
    {
      [v19 setQualityOfService:17];
      v23 = [(CKDatabase *)self operationConfiguration];
      [v19 setConfiguration:v23];
    }

    [(CKDatabase *)self addOperation:v19];

    _Block_object_dispose(v40, 8);
    _Block_object_dispose(v42, 8);

    _Block_object_dispose(v44, 8);
    _Block_object_dispose(v46, 8);
  }

  else
  {
    v21 = sub_100030FE4();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100030544();
    }

    if (v11)
    {
      v22 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
      (*(v11 + 2))(v11, 0, v22);
    }
  }
}

- (id)_handleRecordZonesChanged:(id)a3 deletedRecordZones:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    [(CKDatabase *)self _purgeDeletedZonesFromDefaults:v7];
  }

  v18 = v7;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10002926C;
  v31 = sub_10002927C;
  v32 = 0;
  v8 = dispatch_group_create();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v9)
  {
    v10 = *v24;
    v11 = 1000000000 * MSMaxWaitInSecondsForFetchDataFromCloudKit;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        dispatch_group_enter(v8);
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_10002B984;
        v20[3] = &unk_100052448;
        v20[4] = v13;
        v20[5] = self;
        v22 = &v27;
        v14 = v8;
        v21 = v14;
        [(CKDatabase *)self fetchAllRecordsForRecordZoneID:v13 userInfo:0 withOptions:0 completion:v20, v18];
        v15 = dispatch_time(0, v11);
        dispatch_group_wait(v14, v15);
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v9);
  }

  v16 = v28[5];
  _Block_object_dispose(&v27, 8);

  return v16;
}

- (void)_purgeDeletedZonesFromDefaults:(id)a3
{
  v4 = a3;
  if ([(CKDatabase *)self databaseScope]== 3)
  {
    v5 = @"sharedDatabaseData";
  }

  else
  {
    v5 = @"privateDatabaseData";
  }

  v6 = [v4 na_map:&stru_100052488];
  v7 = sub_100030FE4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v41 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Purging recordZoneData with recordZoneNames %{private}@", buf, 0xCu);
  }

  v8 = +[MSDDefaultsManager sharedManager];
  v9 = [v8 objectForDefaultWithCustomClass:v5];
  v10 = [v9 mutableCopy];

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10002BF60;
  v38[3] = &unk_100050A98;
  v11 = v6;
  v39 = v11;
  v32 = [v10 na_filter:v38];
  [v10 removeObjectsInArray:?];
  v12 = sub_100030FE4();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    [(CKDatabase *)self databaseScope];
    v13 = CKDatabaseScopeString();
    *buf = 138412547;
    v41 = v13;
    v42 = 2113;
    v43 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Updating Data in defaults after recordZone deleted %{private}@", buf, 0x16u);
  }

  v14 = +[MSDDefaultsManager sharedManager];
  [v14 setObjectWithCustomClass:v10 forDefault:v5];

  if ([(CKDatabase *)self databaseScope]== 3)
  {
    v15 = @"sharedDatabaseKeyRefreshTokens";
  }

  else
  {
    v15 = @"privateDatabaseKeyRefreshTokens";
  }

  v16 = +[MSDDefaultsManager sharedManager];
  v17 = [v16 objectForDefaultWithCustomClass:v15];
  v18 = [v17 mutableCopy];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10002BFA8;
  v36[3] = &unk_1000524B0;
  v19 = v11;
  v37 = v19;
  v20 = [v18 na_map:v36];
  [v18 removeObjectsForKeys:v20];
  v21 = sub_100030FE4();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    [(CKDatabase *)self databaseScope];
    v22 = CKDatabaseScopeString();
    *buf = 138412547;
    v41 = v22;
    v42 = 2113;
    v43 = v18;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@] Updating Server tokens in defaults after recordZone deleted %{private}@", buf, 0x16u);
  }

  v23 = +[MSDDefaultsManager sharedManager];
  [v23 setObjectWithCustomClass:v18 forDefault:v15];

  v24 = +[MSDDefaultsManager sharedManager];
  v25 = [v24 objectForDefaultWithCustomClass:@"kUserIDToRecordZoneIDMap"];
  v26 = [v25 mutableCopy];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10002C008;
  v33[3] = &unk_100052500;
  v34 = v4;
  v27 = objc_opt_new();
  v35 = v27;
  v28 = v4;
  [v26 na_each:v33];
  [v26 removeObjectsForKeys:v27];
  v29 = sub_100030FE4();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    [(CKDatabase *)self databaseScope];
    v30 = CKDatabaseScopeString();
    *buf = 138412547;
    v41 = v30;
    v42 = 2113;
    v43 = v26;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%@] Updating the UserIDToRecordZoneID Map to %{private}@", buf, 0x16u);
  }

  v31 = +[MSDDefaultsManager sharedManager];
  [v31 setObjectWithCustomClass:v26 forDefault:@"kUserIDToRecordZoneIDMap"];
}

- (void)_saveRecordZone:(id)a3 withAttribution:(id)a4 andOptions:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v14 = [CKModifyRecordZonesOperation alloc];
    v22 = v10;
    v15 = [NSArray arrayWithObjects:&v22 count:1];
    v16 = [v14 initWithRecordZonesToSave:v15 recordZoneIDsToDelete:0];

    MSDUpdateCKOperationForAttribution(v16, v11);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10002C3C0;
    v19[3] = &unk_100050988;
    v20 = v13;
    [v16 setModifyRecordZonesCompletionBlock:v19];
    if ([v12 userInitiatedRequest])
    {
      [v16 setQualityOfService:25];
    }

    else
    {
      [v16 setQualityOfService:17];
      v18 = [(CKDatabase *)self operationConfiguration];
      [v16 setConfiguration:v18];
    }

    [(CKDatabase *)self addOperation:v16];

    goto LABEL_10;
  }

  v17 = sub_100030FE4();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Failed to save recordZone - NIL CKRecordZone", buf, 2u);
  }

  if (v13)
  {
    v16 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
    (*(v13 + 2))(v13, 0, v16);
LABEL_10:
  }
}

- (id)_handleChangedRecords:(id)a3 andDeletedRecordIDS:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CKDatabase *)self databaseScope]== 3)
  {
    v8 = @"sharedDatabaseData";
  }

  else
  {
    v8 = @"privateDatabaseData";
  }

  v9 = +[MSDDefaultsManager sharedManager];
  v10 = [v9 objectForDefaultWithCustomClass:v8];

  if (v10 && [v10 count])
  {
    v11 = v10;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;
  v13 = [v7 count];
  if (v10)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = [(CKDatabase *)self _handleDeletedRecordIDS:v7 withDataInLocalCopy:v10];

    v12 = v15;
  }

  if ([v6 count])
  {
    v16 = [(CKDatabase *)self _handleChangesInChangedRecords:v6 withDataInLocalCopy:v12];

    v12 = v16;
  }

  return v12;
}

- (id)_handleDeletedRecordIDS:(id)a3 withDataInLocalCopy:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v24 = [NSMutableArray arrayWithArray:v6];
    v22 = v6;
    v7 = [v6 na_dictionaryWithKeyGenerator:&stru_100052540];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v23 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = [v13 recordName];
          v15 = [v13 zoneID];
          v16 = [v15 zoneName];
          v17 = [NSString stringWithFormat:@"%@ %@", v14, v16];

          v18 = [v7 allKeys];
          LODWORD(v14) = [v18 containsObject:v17];

          if (v14)
          {
            v19 = sub_100030FE4();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138477827;
              v30 = v17;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found match for %{private}@, removing obj from default", buf, 0xCu);
            }

            v20 = [v7 objectForKey:v17];
            [v24 removeObject:v20];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v10);
    }

    v6 = v22;
    v5 = v23;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)_handleChangesInChangedRecords:(id)a3 withDataInLocalCopy:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [NSMutableArray arrayWithArray:v6];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v5;
    v44 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v44)
    {
      v42 = MSHomeParticipantHomeIdentifier;
      v43 = *v53;
      v41 = MSHomeParticipantHomeUserIdentifier;
      v39 = MSDefaultServiceRecordType;
      v35 = v5;
      v36 = v7;
      v37 = v6;
      while (2)
      {
        for (i = 0; i != v44; i = i + 1)
        {
          if (*v53 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v52 + 1) + 8 * i);
          v10 = [NSUUID alloc];
          v11 = [v9 recordFieldForKey:v42];
          v12 = [v10 initWithUUIDString:v11];

          v13 = [NSUUID alloc];
          v14 = [v9 recordFieldForKey:v41];
          v15 = [v13 initWithUUIDString:v14];

          v16 = [v9 createMediaServiceObjectFromRecord];
          if (!v16)
          {
            v33 = sub_100030FE4();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              sub_10003094C(v9);
            }

LABEL_27:
            v32 = 0;
            v5 = v35;
            goto LABEL_28;
          }

          v17 = v16;
          v18 = [[MSDDefaultsInfo alloc] initWithService:v16 homeID:v12 homeUserID:v15];
          if (v18)
          {
            v19 = [v9 recordID];
            v20 = [v19 recordName];
            [v18 setRecordName:v20];

            v21 = [v9 recordType];
            [v18 setRecordType:v21];

            v22 = [v9 recordID];
            v23 = [v22 zoneID];
            v24 = [v23 zoneName];
            [v18 setRecordZoneName:v24];

            v25 = [v18 recordType];
            LODWORD(v23) = [v25 isEqualToString:v39];

            if (v23)
            {
              v47[0] = _NSConcreteStackBlock;
              v47[1] = 3221225472;
              v47[2] = sub_10002CE38;
              v47[3] = &unk_100050B10;
              v48 = v15;
              v49 = v18;
              v26 = [v6 na_firstObjectPassingTest:v47];

              v27 = &v48;
            }

            else
            {
              v45[0] = _NSConcreteStackBlock;
              v45[1] = 3221225472;
              v45[2] = sub_10002CF04;
              v45[3] = &unk_100050A98;
              v46 = v18;
              v26 = [v6 na_firstObjectPassingTest:v45];
              v27 = &v46;
            }

            if (v26)
            {
              v28 = sub_100030FE4();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = [v26 recordType];
                v38 = [v26 service];
                v30 = [v38 serviceID];
                v31 = [v26 homeUserID];
                *buf = 138478595;
                v57 = v29;
                v58 = 2113;
                v59 = v30;
                v60 = 2113;
                v61 = v31;
                v62 = 2113;
                v63 = v18;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "A property on a known service changed (RecordType: %{private}@, ServiceID: %{private}@, homeUserID: %{private}@) | Updating cachedInfo with %{private}@", buf, 0x2Au);

                v6 = v37;
                v7 = v36;
              }

              [v7 removeObject:v26];
            }

            [v7 na_safeAddObject:v18];
          }

          else
          {
            v26 = sub_100030FE4();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              sub_10003090C(&v50, v51, v26);
            }
          }

          if (!v18)
          {
            goto LABEL_27;
          }
        }

        v5 = v35;
        v44 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
        if (v44)
        {
          continue;
        }

        break;
      }
    }

    v32 = [v7 copy];
LABEL_28:
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (void)saveRecord:(id)a3 withAttribution:(id)a4 withOptions:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v19 = v10;
    v14 = [NSArray arrayWithObjects:&v19 count:1];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002D270;
    v17[3] = &unk_100050988;
    v18 = v13;
    [(CKDatabase *)self modifyCKRecordWithRecordsToSave:v14 recordIDSToDelete:0 missingManateeIdentity:0 withAttribution:v11 withOptions:v12 completion:v17];

    v15 = v18;
LABEL_7:

    goto LABEL_8;
  }

  v16 = sub_100030FE4();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1000309F0();
  }

  if (v13)
  {
    v15 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
    (*(v13 + 2))(v13, 0, v15);
    goto LABEL_7;
  }

LABEL_8:
}

- (id)_fetchPlaceholderRecordData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10002926C;
  v24 = sub_10002927C;
  v25 = objc_opt_new();
  v7 = [CKRecordID alloc];
  v8 = [v7 initWithRecordName:MSPlaceholderRecordName zoneID:v6];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10002DA6C;
  v17 = &unk_100052568;
  v19 = &v20;
  v9 = dispatch_semaphore_create(0);
  v18 = v9;
  [(CKDatabase *)self fetchRecordWithID:v8 withOptions:0 completion:&v14];
  v10 = dispatch_time(0, 1000000000 * MSMaxWaitInSecondsForFetchDataFromCloudKit);
  if (dispatch_semaphore_wait(v9, v10))
  {
    v11 = sub_100030FE4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100030A68();
    }

    if (a4)
    {
      *a4 = [NSError errorWithDomain:MSCloudKitErrorDomain code:10 userInfo:0, v14, v15, v16, v17];
    }
  }

  v12 = [v21[5] copy];

  _Block_object_dispose(&v20, 8);

  return v12;
}

- (id)_fetchRefreshTokenForRecordZoneID:(id)a3
{
  v4 = a3;
  if ([(CKDatabase *)self databaseScope]== 3)
  {
    v5 = @"sharedDatabaseKeyRefreshTokens";
  }

  else
  {
    v5 = @"privateDatabaseKeyRefreshTokens";
  }

  v6 = +[MSDDefaultsManager sharedManager];
  v7 = [v6 objectForDefaultWithCustomClass:v5];

  if (v7)
  {
    v8 = sub_100030FE4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [(CKDatabase *)self databaseScope];
      v9 = CKDatabaseScopeString();
      *buf = 138412290;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] There exists an entry for Change token", buf, 0xCu);
    }

    v10 = +[MSDDefaultsManager sharedManager];
    v11 = [v10 objectForDefaultWithCustomClass:v5];

    v12 = objc_opt_new();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002DDD4;
    v17[3] = &unk_100052590;
    v18 = v4;
    v13 = v12;
    v19 = v13;
    [v11 na_each:v17];
    v14 = v19;
    v15 = v13;
  }

  else
  {
    v11 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
    [v11 setPreviousServerChangeToken:0];
    v15 = objc_opt_new();
    [v15 na_safeSetObject:v11 forKey:v4];
  }

  return v15;
}

- (void)_updateServerChangeTokenMap:(id)a3 serverChangeToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CKDatabase *)self databaseScope]== 3)
  {
    v8 = @"sharedDatabaseKeyRefreshTokens";
  }

  else
  {
    v8 = @"privateDatabaseKeyRefreshTokens";
  }

  v9 = +[MSDDefaultsManager sharedManager];
  v10 = [v9 objectForDefaultWithCustomClass:v8];
  v11 = [v10 mutableCopy];

  if (!v11)
  {
    v11 = objc_opt_new();
  }

  v12 = [v6 zoneName];
  [v11 na_safeSetObject:v7 forKey:v12];

  v13 = sub_100030FE4();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    [(CKDatabase *)self databaseScope];
    v14 = CKDatabaseScopeString();
    v17 = 138412546;
    v18 = v14;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Updating Server Change Token Map %@", &v17, 0x16u);
  }

  v15 = +[MSDDefaultsManager sharedManager];
  v16 = [v11 copy];
  [v15 setObjectWithCustomClass:v16 forDefault:v8];
}

- (void)_handleCKErrorChangeTokenExpired:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v14 = v6;
    v8 = [NSArray arrayWithObjects:&v14 count:1];
    [(CKDatabase *)self _purgeDeletedZonesFromDefaults:v8];

    v9 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002E1A8;
    block[3] = &unk_100052128;
    block[4] = self;
    v12 = v6;
    v13 = v7;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = sub_100030FE4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100030B14();
    }
  }
}

- (void)handleCKErrorMissingManateeIdentity:(id)a3 homeUserIDS:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = sub_100030FE4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100030C20();
    }

    goto LABEL_12;
  }

  if ([(CKDatabase *)self databaseScope]!= 3)
  {
    if ([(CKDatabase *)self databaseScope]!= 2)
    {
      goto LABEL_13;
    }

    v9 = +[MSDDefaultsManager sharedManager];
    v8 = [v9 objectForDefaultWithCustomClass:@"privateDatabaseData"];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002E404;
    v15[3] = &unk_100050A98;
    v10 = v6;
    v16 = v10;
    v11 = [v8 na_firstObjectPassingTest:v15];
    v12 = [v11 homeUserID];

    if (v12)
    {
      v13 = [v12 UUIDString];
      [(CKDatabase *)self _handleManateeLossOnPrivateDatabase:v10 homeUserID:v13];

      v14 = [[MSDDataRefresh alloc] initWithReason:7 withDelay:90.0];
      [(MSDDataRefresh *)v14 performRefreshWithCompletion:0];
    }

    else
    {
      v14 = sub_100030FE4();
      if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_ERROR))
      {
        sub_100030B94(v10);
      }
    }

LABEL_12:
    goto LABEL_13;
  }

  [(CKDatabase *)self _handleManateeLossOnSharedDatabase:v6 completion:&stru_1000525B0];
LABEL_13:
}

- (void)handleCKErrorMissingManateeIdentity:(id)a3 homeUserID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100030FE4();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [(CKDatabase *)self databaseScope];
      v10 = CKDatabaseScopeString();
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Manatee loss detected on Database scope: %@", &v15, 0xCu);
    }

    v11 = sub_100030FE4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 zoneName];
      v15 = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempting to recover from Manatee loss for %@ and homeUserID %@", &v15, 0x16u);
    }

    if ([(CKDatabase *)self databaseScope]== 3)
    {
      [(CKDatabase *)self _handleManateeLossOnSharedDatabase:v6 completion:&stru_1000525D0];
    }

    else if ([(CKDatabase *)self databaseScope]== 2)
    {
      [(CKDatabase *)self _handleManateeLossOnPrivateDatabase:v6 homeUserID:v7];
      v13 = sub_100030FE4();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134217984;
        v16 = 90;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Scheduling PrivateDatabase refresh after %lu sec", &v15, 0xCu);
      }

      v14 = [[MSDDataRefresh alloc] initWithReason:7 withDelay:90.0];
      [(MSDDataRefresh *)v14 performRefreshWithCompletion:0];
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100030C20();
    }
  }
}

- (void)_handleManateeLossOnSharedDatabase:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CKShare alloc] initWithRecordZoneID:v7];

  v9 = sub_100030FE4();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting to delete shareID %@", buf, 0xCu);
  }

  v10 = [v8 recordID];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002E8CC;
  v12[3] = &unk_100051A88;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [(CKDatabase *)self deleteRecordWithID:v10 missingManateeIdentity:1 withOptions:0 completion:v12];
}

- (void)_handleManateeLossOnPrivateDatabase:(id)a3 homeUserID:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002EB04;
    v8[3] = &unk_100052620;
    v8[4] = self;
    v9 = v5;
    [(CKDatabase *)self deleteRecordZone:v9 withOptions:0 completion:v8];
  }

  else
  {
    v7 = sub_100030FE4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[CKDatabase(MSDCloudDatabase) _handleManateeLossOnPrivateDatabase:homeUserID:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Failed to recover from Manatee Loss - NIL recordZoneID", buf, 0xCu);
    }
  }
}

- (void)_populateRecordZoneWithCachedInfo:(id)a3 cachedInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v7 na_firstObjectPassingTest:&stru_100052660];
  v10 = v9;
  v58 = v6;
  if (v9)
  {
    v53 = self;
    v75[0] = kCKDatabaseAccessUserInfoHomeUserIDKey;
    v11 = [v9 homeUserID];
    v12 = [v11 UUIDString];
    v76[0] = v12;
    v75[1] = kCKDatabaseAccessUserInfoHomeIDKey;
    v13 = [v10 homeID];
    v14 = [v13 UUIDString];
    v76[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:2];

    v16 = MSPlaceholderRecordName;
    v17 = MSPlaceholderRecordType;
    v18 = [v6 zoneID];
    v56 = [CKRecord createRecordWithName:v16 recordType:v17 recordZone:v18];

    v19 = sub_100030FE4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v10 homeID];
      v21 = [v10 homeUserID];
      *buf = 138412546;
      v72 = v20;
      v73 = 2112;
      v74 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Placeholder recordInfo HomeID: %@, HomeUserID: %@", buf, 0x16u);
    }

    v22 = MSHomeParticipantHomeIdentifier;
    v23 = [v10 homeID];
    v24 = [v23 UUIDString];
    [v56 setRecordFieldForKey:v22 value:v24];

    v25 = MSHomeParticipantHomeUserIdentifier;
    v54 = v10;
    v26 = [v10 homeUserID];
    v27 = [v26 UUIDString];
    [v56 setRecordFieldForKey:v25 value:v27];

    [v8 na_safeAddObject:v56];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v55 = v7;
    obj = v7;
    v28 = v6;
    v29 = &HMHomeManagerStatusToString_ptr;
    v63 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
    if (v63)
    {
      v62 = *v67;
      v30 = MSDefaultServiceRecordType;
      v61 = MSServiceAccountRecordType;
      v59 = MSDefaultServiceRecordName;
      v57 = v15;
      do
      {
        for (i = 0; i != v63; i = i + 1)
        {
          v32 = v30;
          if (*v67 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v66 + 1) + 8 * i);
          v34 = sub_100030FE4();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [v33 service];
            v36 = [v35 serviceID];
            *buf = 138412290;
            v72 = v36;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Repopulating info for %@", buf, 0xCu);
          }

          v37 = [v33 recordType];
          v30 = v32;
          v38 = [v37 isEqualToString:v32];

          if (v38)
          {
            v39 = v29[244];
            v40 = [v28 zoneID];
            [v39 createRecordWithName:v59 recordType:v32 recordZone:v40];
            v42 = v41 = v32;
          }

          else
          {
            v43 = [v33 recordType];
            v44 = [v43 isEqualToString:v61];

            if (!v44)
            {
              continue;
            }

            v45 = v29[244];
            v40 = [v33 service];
            [v40 serviceID];
            v47 = v46 = v8;
            v48 = [v47 UUIDString];
            v49 = [v28 zoneID];
            v50 = v45;
            v41 = v61;
            v42 = [v50 createRecordWithName:v48 recordType:v61 recordZone:v49];

            v28 = v58;
            v29 = &HMHomeManagerStatusToString_ptr;

            v8 = v46;
            v15 = v57;
          }

          v51 = [v33 service];
          [v42 populateCKRecordInfo:v51 userInfo:v15 recordType:v41];

          [v8 na_safeAddObject:v42];
          v30 = v32;
        }

        v63 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
      }

      while (v63);
    }

    if ([v8 count])
    {
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_10002F648;
      v64[3] = &unk_100052688;
      v65 = v8;
      [(CKDatabase *)v53 modifyCKRecordWithRecordsToSave:v65 recordIDSToDelete:0 missingManateeIdentity:0 withAttribution:0 withOptions:0 completion:v64];
      v52 = v65;
      v7 = v55;
    }

    else
    {
      v52 = sub_100030FE4();
      v7 = v55;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        sub_100030E58();
      }
    }

    v10 = v54;
  }

  else
  {
    v15 = sub_100030FE4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "There are no cached services configured on account", buf, 2u);
    }
  }
}

- (void)_checkShareStatusIfApplicable:(id)a3
{
  v4 = a3;
  if ([(CKDatabase *)self databaseScope]== 2)
  {
    v5 = +[MSDHomeManager sharedManager];
    v6 = [v5 currentHome];

    if (v6 && ([v6 isCurrentUserHomeOwner] & 1) == 0 && (objc_msgSend(v6, "isCurrentUserRestrictedGuest") & 1) == 0)
    {
      objc_opt_class();
      v7 = v4;
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      v10 = [v9 participants];
      v11 = [v10 na_firstObjectPassingTest:&stru_1000526A8];

      v12 = sub_100030FE4();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          [v11 invitationTokenStatus];
          v14 = CKStringFromParticipantInvitationTokenStatus();
          *buf = 138412290;
          v18 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "There exists a participant whose invitation token status : %@", buf, 0xCu);
        }

        [v11 setWantsNewInvitationToken:1];
        [v9 addParticipant:v11];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10002F9D8;
        v15[3] = &unk_100052710;
        v16 = v7;
        [(CKDatabase *)self saveRecord:v9 withOptions:0 completion:v15];
        v12 = v16;
      }

      else if (v13)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No eligible participant on the share (NeedsNewToken - NO)", buf, 2u);
      }
    }
  }
}

- (id)operationConfiguration
{
  v2 = objc_opt_new();

  return v2;
}

- (void)_notifyObserversDataChanged:(id)a3 cachedData:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = sub_100030FE4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Posting notification a property changed on service object", v9, 2u);
  }

  notify_post([kMediaSetupServicesChanged UTF8String]);
  v8 = [MSDServicesUpdated servicesUpdated:v6 cachedData:v5];

  [v8 processChangesInServices];
}

- (BOOL)_attemptToRecordServiceRequestLapse:(id)a3 fromRecords:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MSDDefaultsManager sharedManager];
  v8 = kMissedServiceRequestKey;
  v9 = [v7 objectForDefault:kMissedServiceRequestKey];

  v10 = [v9 objectForKeyedSubscript:kMissedServiceRequestServiceKey];
  v11 = v10;
  if (v10)
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10002FF94;
    v30[3] = &unk_100050A98;
    v12 = v10;
    v31 = v12;
    v13 = [v5 na_firstObjectPassingTest:v30];
    if (v13)
    {
      v14 = sub_100030FE4();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Noticed a request for a missing service while adding it.", buf, 2u);
      }

      v15 = +[MSDDefaultsManager sharedManager];
      [v15 removeObjectForDefault:v8];

      v28 = v6;
      v16 = [v6 na_firstObjectPassingTest:&stru_100052730];
      v17 = [v9 objectForKeyedSubscript:kMissedServiceRequestDateLastRequestedKey];
      v18 = +[NSCalendar currentCalendar];
      v19 = [v16 creationDate];
      v20 = [v18 components:16 fromDate:v17 toDate:v19 options:0];

      v21 = [v20 day];
      v22 = v21 < 2;
      if (v21 < 2)
      {
        v25 = [[MSServiceRequestLapseEvent alloc] initWithServiceID:v12];
        v23 = [v16 creationDate];
        [v25 setRecordCreationDate:v23];

        v24 = [v9 objectForKeyedSubscript:kMissedServiceRequestTimeLastRequestedKey];
        -[NSObject setTimeOfRequest:](v25, "setTimeOfRequest:", [v24 unsignedLongLongValue]);

        [v25 setDateOfRequest:v17];
        [v25 setEndTime:mach_absolute_time()];
        [MSAnalytics sendServiceRequestLapseEvent:v25];
      }

      else
      {
        v25 = sub_100030FE4();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Request for service over a day old. Skipping noting it as a lapse event.", buf, 2u);
        }
      }

      v6 = v28;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end