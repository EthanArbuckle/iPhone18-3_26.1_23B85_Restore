@interface GKCloudKitMultiplayerUtils
+ (BOOL)isCloudDriveEnabledForBundleID:(id)d;
+ (BOOL)shouldRetryForError:(id)error andRetryCount:(int)count;
+ (id)cloudKitOperationConfigurationForContainer:(id)container;
+ (id)cloudKitOperationConfigurationForSocialGamingSessionsContainer;
+ (id)privateDatabase;
+ (id)sharedDatabase;
+ (void)createZoneWithName:(id)name handler:(id)handler;
+ (void)fetchShareRecordsWithRecordIDs:(id)ds inDatabase:(id)database handler:(id)handler;
+ (void)fetchUserRecordIDWithCompletionHandler:(id)handler;
+ (void)saveInviteRecord:(id)record database:(id)database retryCount:(int)count completionHandler:(id)handler;
@end

@implementation GKCloudKitMultiplayerUtils

+ (BOOL)isCloudDriveEnabledForBundleID:(id)d
{
  dCopy = d;
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
          if ([v14 isEqualToString:dCopy])
          {
            v15 = [v11 objectForKeyedSubscript:kTCCInfoGranted];
            bOOLValue = [v15 BOOLValue];

            if (!bOOLValue)
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

+ (void)createZoneWithName:(id)name handler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  v8 = [[CKRecordZoneID alloc] initWithZoneName:nameCopy ownerName:CKCurrentUserDefaultName];
  v9 = [[CKRecordZone alloc] initWithZoneName:nameCopy];

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
  v17 = handlerCopy;
  v14 = handlerCopy;
  [v12 setModifyRecordZonesCompletionBlock:v16];
  privateDatabase = [self privateDatabase];
  [privateDatabase addOperation:v12];
}

+ (id)cloudKitOperationConfigurationForContainer:(id)container
{
  containerCopy = container;
  v4 = objc_alloc_init(CKOperationConfiguration);
  [v4 setContainer:containerCopy];

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
  block[4] = self;
  if (qword_1003B9378 != -1)
  {
    dispatch_once(&qword_1003B9378, block);
  }

  v2 = qword_1003B9370;

  return v2;
}

+ (void)fetchShareRecordsWithRecordIDs:(id)ds inDatabase:(id)database handler:(id)handler
{
  dsCopy = ds;
  databaseCopy = database;
  handlerCopy = handler;
  if ([dsCopy count])
  {
    v10 = [[CKFetchRecordsOperation alloc] initWithRecordIDs:dsCopy];
    cloudKitOperationConfigurationForSocialGamingSessionsContainer = [self cloudKitOperationConfigurationForSocialGamingSessionsContainer];
    [v10 setConfiguration:cloudKitOperationConfigurationForSocialGamingSessionsContainer];

    [v10 setFetchRecordsCompletionBlock:handlerCopy];
    [databaseCopy addOperation:v10];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

+ (void)fetchUserRecordIDWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[GKPreferences shared];
  forceDeadlockFetchingUserRecordID = [v4 forceDeadlockFetchingUserRecordID];

  if (forceDeadlockFetchingUserRecordID)
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
    [v8 fetchUserRecordIDWithCompletionHandler:handlerCopy];
  }
}

+ (id)privateDatabase
{
  v2 = [CKContainer containerWithIdentifier:@"com.apple.socialgaming.sessions"];
  privateCloudDatabase = [v2 privateCloudDatabase];

  return privateCloudDatabase;
}

+ (id)sharedDatabase
{
  v2 = [CKContainer containerWithIdentifier:@"com.apple.socialgaming.sessions"];
  sharedCloudDatabase = [v2 sharedCloudDatabase];

  return sharedCloudDatabase;
}

+ (void)saveInviteRecord:(id)record database:(id)database retryCount:(int)count completionHandler:(id)handler
{
  recordCopy = record;
  databaseCopy = database;
  handlerCopy = handler;
  v13 = [CKModifyRecordsOperation alloc];
  v35 = recordCopy;
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
  v21 = recordCopy;
  v30 = v21;
  v22 = databaseCopy;
  v31 = v22;
  selfCopy = self;
  countCopy = count;
  v23 = handlerCopy;
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

+ (BOOL)shouldRetryForError:(id)error andRetryCount:(int)count
{
  errorCopy = error;
  domain = [errorCopy domain];
  v7 = [domain isEqualToString:CKErrorDomain];

  v8 = 0;
  if (count < 1 || !v7)
  {
    goto LABEL_26;
  }

  code = [errorCopy code];
  if (code == 2)
  {
    userInfo = [errorCopy userInfo];
    v13 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    allValues = [v13 allValues];
    v15 = [allValues countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(allValues);
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
              countCopy2 = count;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "should retry for partialError: %@. retryCount: %d", buf, 0x12u);
            }

            v8 = 1;
            goto LABEL_26;
          }
        }

        v16 = [allValues countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_20;
  }

  if (code != 23 && code != 7)
  {
LABEL_20:
    userInfo2 = [errorCopy userInfo];
    v21 = [userInfo2 objectForKeyedSubscript:CKErrorRetryAfterKey];
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
    v31 = errorCopy;
    v32 = 1024;
    countCopy2 = count;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "should retry for error: %@. retryCount: %d", buf, 0x12u);
  }

LABEL_26:

  return v8;
}

@end