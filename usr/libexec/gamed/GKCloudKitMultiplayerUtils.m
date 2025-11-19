@interface GKCloudKitMultiplayerUtils
+ (BOOL)isCloudDriveEnabledForBundleID:(id)a3;
+ (BOOL)shouldRetryForError:(id)a3 andRetryCount:(int)a4;
+ (id)cloudKitOperationConfigurationForContainer:(id)a3;
+ (id)cloudKitOperationConfigurationForSocialGamingSessionsContainer;
+ (id)privateDatabase;
+ (id)sharedDatabase;
+ (void)createZoneWithName:(id)a3 handler:(id)a4;
+ (void)fetchShareRecordsWithRecordIDs:(id)a3 inDatabase:(id)a4 handler:(id)a5;
+ (void)fetchUserRecordIDWithCompletionHandler:(id)a3;
+ (void)saveInviteRecord:(id)a3 database:(id)a4 retryCount:(int)a5 completionHandler:(id)a6;
@end

@implementation GKCloudKitMultiplayerUtils

+ (BOOL)isCloudDriveEnabledForBundleID:(id)a3
{
  v3 = a3;
  v4 = TCCAccessCopyInformation();
  if (![v4 count])
  {

    v4 = &__NSArray0__struct;
  }

  v5 = TCCAccessCopyInformation();
  if (![v5 count])
  {

    v5 = &__NSArray0__struct;
  }

  [v4 arrayByAddingObjectsFromArray:v5];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v24 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v19 = v5;
    v20 = v4;
    v9 = *v22;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:{kTCCInfoBundle, v19, v20, v21}];
        v13 = v12;
        if (v12)
        {
          v14 = CFBundleGetIdentifier(v12);
          if ([v14 isEqualToString:v3])
          {
            v15 = [v11 objectForKeyedSubscript:kTCCInfoGranted];
            v16 = [v15 BOOLValue];

            if (!v16)
            {

              v17 = 0;
              goto LABEL_18;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v17 = 1;
LABEL_18:
    v5 = v19;
    v4 = v20;
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

+ (void)createZoneWithName:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CKRecordZoneID alloc] initWithZoneName:v7 ownerName:CKCurrentUserDefaultName];
  v9 = [[CKRecordZone alloc] initWithZoneName:v7];

  [v9 setZoneID:v8];
  v10 = [CKModifyRecordZonesOperation alloc];
  v11 = [NSArray arrayWithObject:v9];
  v12 = [v10 initWithRecordZonesToSave:v11 recordZoneIDsToDelete:0];

  v13 = +[GKCloudKitMultiplayerUtils cloudKitOperationConfigurationForSocialGamingSessionsContainer];
  [v12 setConfiguration:v13];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10015F494;
  v16[3] = &unk_100369128;
  v17 = v6;
  v14 = v6;
  [v12 setModifyRecordZonesCompletionBlock:v16];
  v15 = [a1 privateDatabase];
  [v15 addOperation:v12];
}

+ (id)cloudKitOperationConfigurationForContainer:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CKOperationConfiguration);
  [v4 setContainer:v3];

  [v4 setDiscretionaryNetworkBehavior:0];
  [v4 setAutomaticallyRetryNetworkFailures:0];
  [v4 setQualityOfService:17];

  return v4;
}

+ (id)cloudKitOperationConfigurationForSocialGamingSessionsContainer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015F5CC;
  block[3] = &unk_100368998;
  block[4] = a1;
  if (qword_1003B9378 != -1)
  {
    dispatch_once(&qword_1003B9378, block);
  }

  v2 = qword_1003B9370;

  return v2;
}

+ (void)fetchShareRecordsWithRecordIDs:(id)a3 inDatabase:(id)a4 handler:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if ([v12 count])
  {
    v10 = [[CKFetchRecordsOperation alloc] initWithRecordIDs:v12];
    v11 = [a1 cloudKitOperationConfigurationForSocialGamingSessionsContainer];
    [v10 setConfiguration:v11];

    [v10 setFetchRecordsCompletionBlock:v9];
    [v8 addOperation:v10];
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0, 0);
  }
}

+ (void)fetchUserRecordIDWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[GKPreferences shared];
  v5 = [v4 forceDeadlockFetchingUserRecordID];

  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002930D0(v7);
    }
  }

  else
  {
    v8 = [CKContainer containerWithIdentifier:@"com.apple.socialgaming.sessions"];
    [v8 fetchUserRecordIDWithCompletionHandler:v3];
  }
}

+ (id)privateDatabase
{
  v2 = [CKContainer containerWithIdentifier:@"com.apple.socialgaming.sessions"];
  v3 = [v2 privateCloudDatabase];

  return v3;
}

+ (id)sharedDatabase
{
  v2 = [CKContainer containerWithIdentifier:@"com.apple.socialgaming.sessions"];
  v3 = [v2 sharedCloudDatabase];

  return v3;
}

+ (void)saveInviteRecord:(id)a3 database:(id)a4 retryCount:(int)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [CKModifyRecordsOperation alloc];
  v35 = v10;
  v14 = [NSArray arrayWithObjects:&v35 count:1];
  v15 = [v13 initWithRecordsToSave:v14 recordIDsToDelete:0];

  v16 = +[GKCloudKitMultiplayerUtils cloudKitOperationConfigurationForSocialGamingSessionsContainer];
  [v15 setConfiguration:v16];

  [v15 setSavePolicy:0];
  v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKCloudKitMultiplayerUtils.m", 138, "+[GKCloudKitMultiplayerUtils saveInviteRecord:database:retryCount:completionHandler:]");
  v18 = [GKDispatchGroup dispatchGroupWithName:v17];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10015FB50;
  v27[3] = &unk_1003691F0;
  v19 = v15;
  v28 = v19;
  v20 = v18;
  v29 = v20;
  v21 = v10;
  v30 = v21;
  v22 = v11;
  v31 = v22;
  v33 = a1;
  v34 = a5;
  v23 = v12;
  v32 = v23;
  [v20 perform:v27];
  if (v23)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001602B8;
    v24[3] = &unk_100360EB0;
    v26 = v23;
    v25 = v20;
    [v25 notifyOnMainQueueWithBlock:v24];
  }
}

+ (BOOL)shouldRetryForError:(id)a3 andRetryCount:(int)a4
{
  v5 = a3;
  v6 = [v5 domain];
  v7 = [v6 isEqualToString:CKErrorDomain];

  v8 = 0;
  if (a4 < 1 || !v7)
  {
    goto LABEL_26;
  }

  v9 = [v5 code];
  if (v9 == 2)
  {
    v12 = [v5 userInfo];
    v13 = [v12 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = [v13 allValues];
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          if ([v19 code] == 23 || objc_msgSend(v19, "code") == 7)
          {
            if (!os_log_GKGeneral)
            {
              v22 = GKOSLoggers();
            }

            v23 = os_log_GKMatch;
            if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v31 = v19;
              v32 = 1024;
              v33 = a4;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "should retry for partialError: %@. retryCount: %d", buf, 0x12u);
            }

            v8 = 1;
            goto LABEL_26;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_20;
  }

  if (v9 != 23 && v9 != 7)
  {
LABEL_20:
    v20 = [v5 userInfo];
    v21 = [v20 objectForKeyedSubscript:CKErrorRetryAfterKey];
    v8 = v21 != 0;

    goto LABEL_26;
  }

  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKMatch;
  v8 = 1;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v31 = v5;
    v32 = 1024;
    v33 = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "should retry for error: %@. retryCount: %d", buf, 0x12u);
  }

LABEL_26:

  return v8;
}

@end