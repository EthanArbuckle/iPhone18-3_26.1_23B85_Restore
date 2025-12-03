@interface MSDPublicDBManager
+ (id)_getMatchingObjectForBundleID:(id)d bundleID:(id)iD;
+ (id)_getMatchingObjectForServiceID:(id)d serviceID:(id)iD;
+ (id)_getMatchingObjectForServiceName:(id)name serviceName:(id)serviceName;
+ (id)getCachedPublicInfo;
+ (id)getCachedPublicInfoForBundleID:(id)d;
+ (id)getCachedPublicInfoForServiceID:(id)d;
+ (id)getCachedPublicInfoForServiceName:(id)name;
+ (id)shared;
+ (void)_fetchData:(id)data;
+ (void)getPublicInfoForBundleID:(id)d completion:(id)completion;
+ (void)getPublicInfoForServiceID:(id)d completion:(id)completion;
+ (void)getPublicInfoForServiceName:(id)name completion:(id)completion;
- (BOOL)shouldUseCloudKit;
- (MSDPublicDBManager)init;
- (id)_fetchPreviousChangeToken:(id)token;
- (id)_handleChangedRecords:(id)records localCachedCopy:(id)copy error:(id *)error;
- (id)_handleDeletedRecordIDS:(id)s localCachedCopy:(id)copy;
- (id)_handleRecordsChanged:(id)changed deletedRecordIDS:(id)s error:(id *)error;
- (id)createPublicDBInfoObject:(id)object;
- (id)createPublicDBInfoObjectFromDictionary:(id)dictionary;
- (void)_clearAllDefaultsData;
- (void)_syncDataWithCloudKitWithCompletion:(id)completion;
- (void)_updateDefaultsWithChangeToken:(id)token serverChangeToken:(id)changeToken;
- (void)_updateLastRefreshTS;
- (void)_withLock:(id)lock;
- (void)executePendingRequests:(id)requests forPublicDBInfo:(id)info error:(id)error;
- (void)syncDataWithCloudKit:(id)kit;
@end

@implementation MSDPublicDBManager

+ (id)shared
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024624;
  block[3] = &unk_1000508C0;
  block[4] = self;
  if (qword_100059AD0 != -1)
  {
    dispatch_once(&qword_100059AD0, block);
  }

  v2 = qword_100059AC8;

  return v2;
}

- (MSDPublicDBManager)init
{
  v10.receiver = self;
  v10.super_class = MSDPublicDBManager;
  v2 = [(MSDPublicDBManager *)&v10 init];
  if (v2)
  {
    v3 = sub_100030FE4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[MSDPublicDBManager init]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    v2->_retryCount = 0;
    v2->_isCurrentlySyncing = 0;
    v4 = objc_opt_new();
    queuedPendingRequests = v2->_queuedPendingRequests;
    v2->_queuedPendingRequests = v4;

    v2->_syncLock._os_unfair_lock_opaque = 0;
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v7 = dispatch_queue_create("com.apple.mediasetup.publicdb-notify-queue", v6);
    notifyQueue = v2->_notifyQueue;
    v2->_notifyQueue = v7;
  }

  return v2;
}

- (void)syncDataWithCloudKit:(id)kit
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100024820;
  v5[3] = &unk_100051558;
  kitCopy = kit;
  v4 = kitCopy;
  [(MSDPublicDBManager *)self _syncDataWithCloudKitWithCompletion:v5];
}

+ (void)getPublicInfoForServiceName:(id)name completion:(id)completion
{
  nameCopy = name;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000248F4;
  v9[3] = &unk_100051F90;
  completionCopy = completion;
  selfCopy = self;
  v10 = nameCopy;
  v7 = nameCopy;
  v8 = completionCopy;
  [self _fetchData:v9];
}

+ (void)getPublicInfoForServiceID:(id)d completion:(id)completion
{
  dCopy = d;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100024A68;
  v9[3] = &unk_100051F90;
  completionCopy = completion;
  selfCopy = self;
  v10 = dCopy;
  v7 = dCopy;
  v8 = completionCopy;
  [self _fetchData:v9];
}

+ (void)getPublicInfoForBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100024BDC;
  v9[3] = &unk_100051F90;
  completionCopy = completion;
  selfCopy = self;
  v10 = dCopy;
  v7 = dCopy;
  v8 = completionCopy;
  [self _fetchData:v9];
}

+ (id)getCachedPublicInfoForServiceName:(id)name
{
  nameCopy = name;
  v5 = +[MSDDefaultsManager sharedManager];
  v6 = [v5 objectForDefaultWithCustomClass:@"publicDBData"];

  v7 = [self _getMatchingObjectForServiceName:v6 serviceName:nameCopy];

  return v7;
}

+ (id)getCachedPublicInfoForServiceID:(id)d
{
  dCopy = d;
  v5 = +[MSDDefaultsManager sharedManager];
  v6 = [v5 objectForDefaultWithCustomClass:@"publicDBData"];

  v7 = [self _getMatchingObjectForServiceID:v6 serviceID:dCopy];

  return v7;
}

+ (id)getCachedPublicInfoForBundleID:(id)d
{
  dCopy = d;
  v5 = +[MSDDefaultsManager sharedManager];
  v6 = [v5 objectForDefaultWithCustomClass:@"publicDBData"];

  v7 = [self _getMatchingObjectForBundleID:v6 bundleID:dCopy];

  return v7;
}

+ (id)getCachedPublicInfo
{
  v2 = +[MSDDefaultsManager sharedManager];
  v3 = [v2 objectForDefaultWithCustomClass:@"publicDBData"];

  return v3;
}

- (id)createPublicDBInfoObject:(id)object
{
  objectCopy = object;
  v4 = [objectCopy objectForKey:MediaServiceName];
  v5 = [objectCopy objectForKey:MediaServiceIdentifier];
  v6 = [[MSPublicDBInfo alloc] initWithServiceName:v4 serviceID:v5];
  if (v6)
  {
    recordID = [objectCopy recordID];
    recordName = [recordID recordName];
    [v6 setRecordName:recordName];

    v9 = [objectCopy objectForKey:MediaServiceType];
    [v6 setServiceType:v9];

    v10 = [objectCopy objectForKey:MediaServiceBundleIdentifier];
    [v6 setBundleIDS:v10];

    v11 = [objectCopy objectForKey:MediaServiceIconPath];
    v12 = [NSURL URLWithString:v11];
    [v6 setServiceIconPath:v12];

    v13 = [objectCopy objectForKey:MediaServiceConfigurationPublicKey];
    [v6 setConfigurationPublicKey:v13];

    v14 = v6;
  }

  else
  {
    v15 = sub_100030FE4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100027AE8();
    }
  }

  return v6;
}

- (id)createPublicDBInfoObjectFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:MediaServiceName];
  v5 = [dictionaryCopy objectForKey:MediaServiceIdentifier];
  v6 = [[MSPublicDBInfo alloc] initWithServiceName:v4 serviceID:v5];
  if (v6)
  {
    v7 = [dictionaryCopy objectForKey:MediaServiceType];
    [v6 setServiceType:v7];

    v8 = [dictionaryCopy objectForKey:MediaServiceBundleIdentifier];
    [v6 setBundleIDS:v8];

    v9 = [dictionaryCopy objectForKey:MediaServiceIconPath];
    v10 = [NSURL URLWithString:v9];
    [v6 setServiceIconPath:v10];

    v11 = [dictionaryCopy objectForKey:MediaServiceConfigurationPublicKey];
    [v6 setConfigurationPublicKey:v11];

    v12 = v6;
  }

  else
  {
    v13 = sub_100030FE4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to create MSPublicDBInfo object with serviceName %@ service ID: %@", &v15, 0x16u);
    }
  }

  return v6;
}

- (void)_syncDataWithCloudKitWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100030FE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[MSDPublicDBManager _syncDataWithCloudKitWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100025A9C;
  v38[3] = &unk_100051FB8;
  v38[4] = self;
  v40 = &v41;
  v6 = completionCopy;
  v39 = v6;
  [(MSDPublicDBManager *)self _withLock:v38];
  if (v6 && (v42[3] & 1) == 0)
  {
    v7 = sub_100030FE4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "A sync with the public db is already underway. Suspending request to sync with CloudKit until sync is complete.", &buf, 2u);
    }

    goto LABEL_25;
  }

  v8 = sub_100030FE4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting sync with public db", &buf, 2u);
  }

  v9 = [CKRecordZoneID alloc];
  v10 = [v9 initWithZoneName:MSPublicInfoRecordZoneName ownerName:CKCurrentUserDefaultName];
  v7 = v10;
  if (v10)
  {
    zoneName = [v10 zoneName];
    v12 = [(MSDPublicDBManager *)self _fetchPreviousChangeToken:zoneName];

    v13 = objc_opt_new();
    [v13 setPreviousServerChangeToken:v12];
    if (v13)
    {
      v51 = v7;
      v52 = v13;
      v14 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v15 = sub_100030FE4();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138477827;
        *(&buf + 4) = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Public] Passing Configuration for recordZoneID %{private}@", &buf, 0xCu);
      }

      v16 = [CKFetchRecordZoneChangesOperation alloc];
      v50 = v7;
      v17 = [NSArray arrayWithObjects:&v50 count:1];
      v18 = [v16 initWithRecordZoneIDs:v17 configurationsByRecordZoneID:v14];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v46 = 0x3032000000;
      v47 = sub_100025B38;
      v48 = sub_100025B48;
      v49 = 0;
      v36[0] = 0;
      v36[1] = v36;
      v36[2] = 0x3032000000;
      v36[3] = sub_100025B38;
      v36[4] = sub_100025B48;
      v37 = objc_opt_new();
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x3032000000;
      v34[3] = sub_100025B38;
      v34[4] = sub_100025B48;
      v35 = objc_opt_new();
      v32[0] = 0;
      v32[1] = v32;
      v32[2] = 0x3032000000;
      v32[3] = sub_100025B38;
      v32[4] = sub_100025B48;
      v33 = objc_opt_new();
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100025B50;
      v31[3] = &unk_100051FE0;
      v31[4] = v34;
      [v18 setRecordWithIDWasDeletedBlock:v31];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100025C1C;
      v30[3] = &unk_100052008;
      v30[4] = v36;
      [v18 setRecordWasChangedBlock:v30];
      objc_initWeak(&location, self);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100025D48;
      v24[3] = &unk_100052098;
      objc_copyWeak(&v28, &location);
      v24[4] = self;
      v26 = v32;
      p_buf = &buf;
      v25 = v6;
      [v18 setFetchRecordZoneChangesCompletionBlock:v24];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100026424;
      v23[3] = &unk_1000520C0;
      v23[6] = v36;
      v23[7] = v34;
      v23[4] = self;
      v23[5] = &buf;
      [v18 setRecordZoneFetchCompletionBlock:v23];
      [v18 setQualityOfService:17];
      v19 = +[CKContainer MSDPublicCloudKitContainer];
      publicCloudDatabase = [v19 publicCloudDatabase];
      [publicCloudDatabase addOperation:v18];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
      _Block_object_dispose(v32, 8);

      _Block_object_dispose(v34, 8);
      _Block_object_dispose(v36, 8);

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v22 = sub_100030FE4();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100027B5C(v22);
      }

      if (!v6)
      {
        goto LABEL_23;
      }

      v14 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
      (*(v6 + 2))(v6, 0, v14);
    }

LABEL_23:
    goto LABEL_24;
  }

  v21 = sub_100030FE4();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_100027BA0(v21);
  }

  if (v6)
  {
    v12 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
    (*(v6 + 2))(v6, 0, v12);
LABEL_24:
  }

LABEL_25:

  _Block_object_dispose(&v41, 8);
}

- (id)_handleRecordsChanged:(id)changed deletedRecordIDS:(id)s error:(id *)error
{
  changedCopy = changed;
  sCopy = s;
  v10 = +[MSDDefaultsManager sharedManager];
  v11 = [v10 objectForDefaultWithCustomClass:@"publicDBData"];

  v12 = [(MSDPublicDBManager *)self _handleDeletedRecordIDS:sCopy localCachedCopy:v11];

  if (!v12 || ![v12 count])
  {
    v13 = objc_opt_new();

    v12 = v13;
  }

  v14 = [(MSDPublicDBManager *)self _handleChangedRecords:changedCopy localCachedCopy:v12 error:error];

  return v14;
}

- (id)_handleDeletedRecordIDS:(id)s localCachedCopy:(id)copy
{
  sCopy = s;
  copyCopy = copy;
  if ([copyCopy count] && objc_msgSend(sCopy, "count"))
  {
    v7 = [copyCopy na_dictionaryWithKeyGenerator:&stru_100052100];
    v8 = sub_100030FE4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v34 = sCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Public] RecordIDS deleted on device: %{private}@", buf, 0xCu);
    }

    v26 = copyCopy;
    v9 = [NSMutableArray arrayWithArray:copyCopy];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v27 = sCopy;
    v10 = sCopy;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          allKeys = [v7 allKeys];
          recordName = [v15 recordName];
          v18 = [allKeys containsObject:recordName];

          if (v18)
          {
            v19 = sub_100030FE4();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              recordName2 = [v15 recordName];
              *buf = 138477827;
              v34 = recordName2;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[Public] Found match for %{private}@, removing obj from local copy", buf, 0xCu);
            }

            recordName3 = [v15 recordName];
            v22 = [v7 objectForKey:recordName3];

            [v9 removeObject:v22];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    v23 = [v9 copy];
    copyCopy = v26;
    sCopy = v27;
  }

  else
  {
    v24 = sub_100030FE4();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[Public] Deleted recordIDS or cachedData is nil, skipping update", buf, 2u);
    }

    v23 = copyCopy;
  }

  return v23;
}

- (id)_handleChangedRecords:(id)records localCachedCopy:(id)copy error:(id *)error
{
  recordsCopy = records;
  copyCopy = copy;
  if ([recordsCopy count])
  {
    v10 = [NSMutableArray arrayWithArray:copyCopy];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v28 = recordsCopy;
    obj = recordsCopy;
    v11 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    v12 = copyCopy;
    v29 = v10;
    if (v11)
    {
      v13 = v11;
      v32 = *v38;
      v30 = MSErrorDomain;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v38 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [(MSDPublicDBManager *)self createPublicDBInfoObject:*(*(&v37 + 1) + 8 * i)];
          v16 = v15;
          if (v15)
          {
            v33[0] = _NSConcreteStackBlock;
            v33[1] = 3221225472;
            v33[2] = sub_100026EA8;
            v33[3] = &unk_100050B60;
            v17 = v15;
            v34 = v17;
            v18 = [v12 na_firstObjectPassingTest:v33];
            if (v18)
            {
              v19 = sub_100030FE4();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                [v17 serviceID];
                selfCopy = self;
                errorCopy = error;
                v23 = v22 = v12;
                *buf = 138477827;
                v42 = v23;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "A property on a known service (%{private}@) changed", buf, 0xCu);

                v12 = v22;
                error = errorCopy;
                self = selfCopy;
                v10 = v29;
              }

              [v10 removeObject:v18];
            }

            [v10 na_safeAddObject:v17];
          }

          else
          {
            v24 = sub_100030FE4();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_100027DF8(&v35, v36, v24);
            }

            if (error)
            {
              *error = [NSError errorWithDomain:v30 code:1 userInfo:0];
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v13);
    }

    v25 = v12;
    recordsCopy = v28;
  }

  else
  {
    v25 = copyCopy;
    v26 = sub_100030FE4();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[Public] Changed records is nil, skipping update", buf, 2u);
    }

    v29 = v25;
  }

  return v29;
}

- (void)_clearAllDefaultsData
{
  v2 = +[MSDDefaultsManager sharedManager];
  [v2 clearObjectForDefault:@"publicDBData"];

  v3 = +[MSDDefaultsManager sharedManager];
  [v3 clearObjectForDefault:@"publicDBChangeTokenMap"];
}

- (void)_updateLastRefreshTS
{
  v4 = +[MSDDefaultsManager sharedManager];
  v2 = +[NSDate date];
  [v2 timeIntervalSinceReferenceDate];
  v3 = [NSNumber numberWithDouble:?];
  [v4 setObject:v3 forDefault:@"publicDBLastRefreshTS"];
}

- (BOOL)shouldUseCloudKit
{
  v2 = +[MSDDefaultsManager sharedManager];
  v3 = [v2 objectForDefault:@"publicDBLastRefreshTS"];
  [v3 doubleValue];
  v5 = v4;

  v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:v5];
  v7 = +[NSDate date];
  v8 = [v6 dateByAddingTimeInterval:MSPublicDatabaseRefreshIntervalInSecs];
  v9 = [v7 compare:v8] != -1;

  return v9;
}

- (id)_fetchPreviousChangeToken:(id)token
{
  tokenCopy = token;
  v4 = +[MSDDefaultsManager sharedManager];
  v5 = [v4 objectForDefaultWithCustomClass:@"publicDBChangeTokenMap"];

  if (v5)
  {
    v6 = [v5 objectForKey:tokenCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateDefaultsWithChangeToken:(id)token serverChangeToken:(id)changeToken
{
  tokenCopy = token;
  changeTokenCopy = changeToken;
  v7 = +[MSDDefaultsManager sharedManager];
  v8 = [v7 objectForDefaultWithCustomClass:@"publicDBChangeTokenMap"];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = objc_opt_new();
  }

  [v9 na_safeSetObject:changeTokenCopy forKey:tokenCopy];
  v10 = sub_100030FE4();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138477827;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Public] Updating value of serverChangeToken %{private}@", &v13, 0xCu);
  }

  v11 = +[MSDDefaultsManager sharedManager];
  v12 = [v9 copy];
  [v11 setObjectWithCustomClass:v12 forDefault:@"publicDBChangeTokenMap"];
}

+ (void)_fetchData:(id)data
{
  dataCopy = data;
  v4 = +[MSDPublicDBManager shared];
  shouldUseCloudKit = [v4 shouldUseCloudKit];

  if (shouldUseCloudKit)
  {
    v6 = +[MSDPublicDBManager shared];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100027440;
    v10[3] = &unk_100051558;
    v11 = dataCopy;
    [v6 syncDataWithCloudKit:v10];

    v7 = v11;
LABEL_7:

    goto LABEL_8;
  }

  v8 = sub_100030FE4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Public] Returning data from cached copy, last refresh was less than 24 hours back", buf, 2u);
  }

  if (dataCopy)
  {
    v7 = +[MSDDefaultsManager sharedManager];
    v9 = [v7 objectForDefaultWithCustomClass:@"publicDBData"];
    (*(dataCopy + 2))(dataCopy, v9, 0);

    goto LABEL_7;
  }

LABEL_8:
}

+ (id)_getMatchingObjectForServiceID:(id)d serviceID:(id)iD
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100027584;
  v8[3] = &unk_100050B60;
  iDCopy = iD;
  v5 = iDCopy;
  v6 = [d na_firstObjectPassingTest:v8];

  return v6;
}

+ (id)_getMatchingObjectForBundleID:(id)d bundleID:(id)iD
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100027678;
  v8[3] = &unk_100050B60;
  iDCopy = iD;
  v5 = iDCopy;
  v6 = [d na_firstObjectPassingTest:v8];

  return v6;
}

+ (id)_getMatchingObjectForServiceName:(id)name serviceName:(id)serviceName
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002776C;
  v8[3] = &unk_100050B60;
  serviceNameCopy = serviceName;
  v5 = serviceNameCopy;
  v6 = [name na_firstObjectPassingTest:v8];

  return v6;
}

- (void)executePendingRequests:(id)requests forPublicDBInfo:(id)info error:(id)error
{
  requestsCopy = requests;
  infoCopy = info;
  errorCopy = error;
  notifyQueue = self->_notifyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027894;
  block[3] = &unk_100052128;
  v16 = requestsCopy;
  v17 = infoCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = infoCopy;
  v14 = requestsCopy;
  dispatch_async(notifyQueue, block);
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_syncLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_syncLock);
}

@end