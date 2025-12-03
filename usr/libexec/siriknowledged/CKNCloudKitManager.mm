@interface CKNCloudKitManager
+ (id)getApplicationIdentifierFromEntitlements;
+ (id)sharedManager;
- (BOOL)_shouldSync;
- (CKNCloudKitManager)init;
- (id)_createCloudKitContainer;
- (id)_createDictionaryFromRecords:(id)records;
- (id)_createKeysForRecordsIDs:(id)ds;
- (id)_createRecordsIDsForKeys:(id)keys;
- (id)_createRecordsWithDictionary:(id)dictionary;
- (id)_underlyingErrorForError:(id)error zoneID:(id)d;
- (void)_cancelRecordZoneSetupTimer;
- (void)_cancelSubscriptionSetupTimer;
- (void)_cleanUpRecordZoneSubscriptionsTimers;
- (void)_cleanUpRecordZonesAndSubscriptions;
- (void)_cloudKitAccountStatusChanged:(id)changed;
- (void)_cloudSyncPreferenceDidChange;
- (void)_createRecordZoneWithID:(id)d completion:(id)completion;
- (void)_deleteRecordZoneWithID:(id)d qualityOfService:(int64_t)service completion:(id)completion;
- (void)_disablePush;
- (void)_disableSyncAndDeleteCloudDataWithCompletionHandler:(id)handler;
- (void)_enablePush;
- (void)_fetchChanges;
- (void)_fetchChangesFrom:(id)from completion:(id)completion;
- (void)_fetchChangesWithRetryCount:(unint64_t)count;
- (void)_handleAccountStatusChange:(id)change;
- (void)_handleCloudKitNotification:(id)notification;
- (void)_initializeZone;
- (void)_resetZone;
- (void)_saveRecords:(id)records recordIDsToDelete:(id)delete savePolicy:(int64_t)policy completion:(id)completion;
- (void)_setupAccount;
- (void)_setupAccountState;
- (void)_setupRecordZone;
- (void)_setupRecordZoneSubscription;
- (void)_setupRecordZoneSubscriptionWithRetryInterval:(double)interval;
- (void)_setupRecordZoneWithRetryInterval:(double)interval;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)dealloc;
- (void)disablePushNotifications;
- (void)disableSyncAndDeleteCloudDataWithCompletionHandler:(id)handler;
- (void)enablePushNotifications;
- (void)fetchAllChangesWithCompletion:(id)completion;
- (void)fetchChangesWithCompletion:(id)completion;
- (void)removeValuesForKeys:(id)keys completion:(id)completion;
- (void)saveRecords:(id)records deleteRecordIDs:(id)ds completion:(id)completion;
- (void)saveRecordsWithDictionary:(id)dictionary completion:(id)completion;
@end

@implementation CKNCloudKitManager

- (void)_disableSyncAndDeleteCloudDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_cloudSyncEnabled)
  {
    self->_cloudSyncEnabled = 0;
    [(CKNCloudKitManager *)self _cleanUpRecordZonesAndSubscriptions];
  }

  sub_100002D3C(self, 0);
  v5 = [[CKRecordZoneID alloc] initWithZoneName:@"com.apple.siri.knowledge" ownerName:CKCurrentUserDefaultName];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002DE0;
  v7[3] = &unk_100018A28;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(CKNCloudKitManager *)self _deleteRecordZoneWithID:v5 qualityOfService:33 completion:v7];
}

- (void)disableSyncAndDeleteCloudDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002E90;
  v7[3] = &unk_100018898;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(serialQueue, v7);
}

- (void)_cancelSubscriptionSetupTimer
{
  dispatch_assert_queue_V2(self->_serialQueue);
  subscriptionSetupTimer = self->_subscriptionSetupTimer;
  if (subscriptionSetupTimer)
  {
    dispatch_source_cancel(subscriptionSetupTimer);
    v4 = self->_subscriptionSetupTimer;
    self->_subscriptionSetupTimer = 0;
  }
}

- (void)_setupRecordZoneSubscriptionWithRetryInterval:(double)interval
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(CKNCloudKitManager *)self _shouldSync])
  {
    zoneID = [(CKRecordZone *)self->_recordZone zoneID];

    if (zoneID)
    {
      v6 = [NSString stringWithFormat:@"%@-%@", @"com.apple.siri.knowledge.subscription", self->_supportedRecordType];
      v7 = [CKRecordZoneSubscription alloc];
      zoneID2 = [(CKRecordZone *)self->_recordZone zoneID];
      v9 = [v7 initWithZoneID:zoneID2 subscriptionID:v6];

      [v9 setRecordType:self->_supportedRecordType];
      v10 = objc_alloc_init(CKNotificationInfo);
      [v10 setShouldSendContentAvailable:1];
      [v9 setNotificationInfo:v10];
      v11 = [CKModifySubscriptionsOperation alloc];
      v21 = v9;
      v12 = [NSArray arrayWithObjects:&v21 count:1];
      v13 = [v11 initWithSubscriptionsToSave:v12 subscriptionIDsToDelete:0];

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000031D0;
      v18[3] = &unk_100018A00;
      v18[4] = self;
      v19 = v9;
      intervalCopy = interval;
      v14 = v9;
      [v13 setModifySubscriptionsCompletionBlock:v18];
      [v13 setQualityOfService:17];
      privateCloudDatabase = [(CKContainer *)self->_container privateCloudDatabase];
      [privateCloudDatabase addOperation:v13];

      return;
    }

    v17 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[CKNCloudKitManager _setupRecordZoneSubscriptionWithRetryInterval:]";
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Unable to create zone subscription without a record zone", buf, 0xCu);
    }
  }

  else
  {
    v16 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v23 = "[CKNCloudKitManager _setupRecordZoneSubscriptionWithRetryInterval:]";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s iCloud sync is disabled. Unable to create zone subscription", buf, 0xCu);
    }
  }

  [(CKNCloudKitManager *)self _cancelSubscriptionSetupTimer];
}

- (void)_setupRecordZoneSubscription
{
  dispatch_assert_queue_V2(self->_serialQueue);

  [(CKNCloudKitManager *)self _setupRecordZoneSubscriptionWithRetryInterval:120.0];
}

- (void)removeValuesForKeys:(id)keys completion:(id)completion
{
  keysCopy = keys;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000038F0;
  block[3] = &unk_100018B18;
  block[4] = self;
  v12 = keysCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = keysCopy;
  dispatch_async(serialQueue, block);
}

- (void)saveRecordsWithDictionary:(id)dictionary completion:(id)completion
{
  dictionaryCopy = dictionary;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003B88;
  block[3] = &unk_100018B18;
  block[4] = self;
  v12 = dictionaryCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dictionaryCopy;
  dispatch_async(serialQueue, block);
}

- (void)saveRecords:(id)records deleteRecordIDs:(id)ds completion:(id)completion
{
  recordsCopy = records;
  dsCopy = ds;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003E40;
  v15[3] = &unk_100018B40;
  v15[4] = self;
  v16 = recordsCopy;
  v17 = dsCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = dsCopy;
  v14 = recordsCopy;
  dispatch_async(serialQueue, v15);
}

- (void)_saveRecords:(id)records recordIDsToDelete:(id)delete savePolicy:(int64_t)policy completion:(id)completion
{
  recordsCopy = records;
  deleteCopy = delete;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(CKNCloudKitManager *)self _shouldSync])
  {
    if ([recordsCopy count] || objc_msgSend(deleteCopy, "count"))
    {
      v13 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:recordsCopy recordIDsToDelete:deleteCopy];
      [v13 setAtomic:1];
      [v13 setSavePolicy:policy];
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_1000040D4;
      v23 = &unk_1000189B0;
      selfCopy = self;
      v25 = completionCopy;
      [v13 setModifyRecordsCompletionBlock:&v20];
      [v13 setQualityOfService:{17, v20, v21, v22, v23, selfCopy}];
      privateCloudDatabase = [(CKContainer *)self->_container privateCloudDatabase];
      [privateCloudDatabase addOperation:v13];
    }

    else if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, 0);
    }
  }

  else
  {
    v15 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      v17 = AFIsHorseman();
      v18 = "NO";
      if (v17)
      {
        v18 = "YES";
      }

      *buf = 136315394;
      v27 = "[CKNCloudKitManager _saveRecords:recordIDsToDelete:savePolicy:completion:]";
      v28 = 2080;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s iCloud sync is disabled. Unable to modify records. On HomePod: %s", buf, 0x16u);
    }

    if (completionCopy)
    {
      v19 = [NSError errorWithDomain:CKErrorDomain code:6 userInfo:0];
      (*(completionCopy + 2))(completionCopy, v19, 0, 0);
    }
  }
}

- (id)_createKeysForRecordsIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = dsCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          recordName = [*(*(&v12 + 1) + 8 * i) recordName];
          [v4 addObject:recordName];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_createRecordsIDsForKeys:(id)keys
{
  keysCopy = keys;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([keysCopy count])
  {
    zoneID = [(CKRecordZone *)self->_recordZone zoneID];

    if (zoneID)
    {
      zoneID = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(keysCopy, "count")}];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v16 = keysCopy;
      v6 = keysCopy;
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v18;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v17 + 1) + 8 * i);
            v12 = [CKRecordID alloc];
            zoneID2 = [(CKRecordZone *)self->_recordZone zoneID];
            v14 = [v12 initWithRecordName:v11 zoneID:zoneID2];

            [zoneID addObject:v14];
          }

          v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v8);
      }

      keysCopy = v16;
    }
  }

  else
  {
    zoneID = 0;
  }

  return zoneID;
}

- (id)_createDictionaryFromRecords:(id)records
{
  recordsCopy = records;
  if ([recordsCopy count])
  {
    v5 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = recordsCopy;
    v6 = recordsCopy;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          data = [v11 data];
          v13 = data;
          if (!data)
          {
            v3 = +[NSNull null];
            v13 = v3;
          }

          recordID = [v11 recordID];
          recordName = [recordID recordName];
          [v5 setObject:v13 forKey:recordName];

          if (!data)
          {
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    recordsCopy = v17;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_createRecordsWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([dictionaryCopy count] && (-[CKRecordZone zoneID](self->_recordZone, "zoneID"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v24 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = dictionaryCopy;
    v6 = dictionaryCopy;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v23 = *v26;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v26 != v23)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = [CKRecordID alloc];
          zoneID = [(CKRecordZone *)self->_recordZone zoneID];
          v13 = [v11 initWithRecordName:v10 zoneID:zoneID];

          v14 = [[CKRecord alloc] initWithRecordType:self->_supportedRecordType recordID:v13];
          v15 = [v6 objectForKey:v10];
          v16 = +[NSNull null];
          v17 = [v15 isEqual:v16];

          if (v17)
          {

            v15 = 0;
          }

          encryptedValuesByKey = [v14 encryptedValuesByKey];
          v19 = [NSNumber numberWithUnsignedInteger:1];
          [encryptedValuesByKey setObject:v19 forKey:@"version"];

          encryptedValuesByKey2 = [v14 encryptedValuesByKey];
          [encryptedValuesByKey2 setObject:v10 forKey:@"key"];

          [v14 setData:v15];
          [v24 addObject:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v8);
    }

    dictionaryCopy = v22;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)_cleanUpRecordZonesAndSubscriptions
{
  dispatch_assert_queue_V2(self->_serialQueue);
  [(CKNCloudKitManager *)self _cleanUpRecordZoneSubscriptionsTimers];
  recordZone = self->_recordZone;
  self->_recordZone = 0;

  subscription = self->_subscription;
  self->_subscription = 0;
}

- (void)_cleanUpRecordZoneSubscriptionsTimers
{
  dispatch_assert_queue_V2(self->_serialQueue);
  [(CKNCloudKitManager *)self _cancelRecordZoneSetupTimer];

  [(CKNCloudKitManager *)self _cancelSubscriptionSetupTimer];
}

- (void)_deleteRecordZoneWithID:(id)d qualityOfService:(int64_t)service completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_serialQueue);
  v10 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    zoneName = [dCopy zoneName];
    *buf = 136315394;
    v22 = "[CKNCloudKitManager _deleteRecordZoneWithID:qualityOfService:completion:]";
    v23 = 2112;
    v24 = zoneName;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Deleting zone: (%@)", buf, 0x16u);
  }

  if (self->_container)
  {
    v13 = [CKModifyRecordZonesOperation alloc];
    v20 = dCopy;
    v14 = [NSArray arrayWithObjects:&v20 count:1];
    v15 = [v13 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v14];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000506C;
    v17[3] = &unk_1000189B0;
    v18 = dCopy;
    v19 = completionCopy;
    [v15 setModifyRecordZonesCompletionBlock:v17];
    [v15 setQualityOfService:service];
    privateCloudDatabase = [(CKContainer *)self->_container privateCloudDatabase];
    [privateCloudDatabase addOperation:v15];

LABEL_7:
    goto LABEL_8;
  }

  if (completionCopy)
  {
    v15 = [NSError errorWithDomain:CKErrorDomain code:5 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v15);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_createRecordZoneWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_serialQueue);
  _shouldSync = [(CKNCloudKitManager *)self _shouldSync];
  v9 = CKLogContextDaemon;
  if ((_shouldSync & 1) == 0)
  {
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v19 = v9;
      zoneName = [dCopy zoneName];
      *buf = 136315394;
      v26 = "[CKNCloudKitManager _createRecordZoneWithID:completion:]";
      v27 = 2112;
      v28 = zoneName;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s iCloud sync is disabled. Unable to create zone: (%@)", buf, 0x16u);

      if (!completionCopy)
      {
        goto LABEL_13;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_13;
    }

    v17 = CKErrorDomain;
    v18 = 6;
LABEL_11:
    v12 = [NSError errorWithDomain:v17 code:v18 userInfo:0];
    completionCopy[2](completionCopy, v12, 0);
    goto LABEL_12;
  }

  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    zoneName2 = [dCopy zoneName];
    *buf = 136315394;
    v26 = "[CKNCloudKitManager _createRecordZoneWithID:completion:]";
    v27 = 2112;
    v28 = zoneName2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Creating zone: (%@)", buf, 0x16u);
  }

  if (self->_container)
  {
    v12 = [[CKRecordZone alloc] initWithZoneID:dCopy];
    [v12 setCapabilities:3];
    v13 = [CKModifyRecordZonesOperation alloc];
    v24 = v12;
    v14 = [NSArray arrayWithObjects:&v24 count:1];
    v15 = [v13 initWithRecordZonesToSave:v14 recordZoneIDsToDelete:0];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000054BC;
    v21[3] = &unk_1000189B0;
    v22 = dCopy;
    v23 = completionCopy;
    [v15 setModifyRecordZonesCompletionBlock:v21];
    [v15 setQualityOfService:17];
    privateCloudDatabase = [(CKContainer *)self->_container privateCloudDatabase];
    [privateCloudDatabase addOperation:v15];

LABEL_12:
    goto LABEL_13;
  }

  if (completionCopy)
  {
    v17 = CKErrorDomain;
    v18 = 5;
    goto LABEL_11;
  }

LABEL_13:
}

- (void)_cancelRecordZoneSetupTimer
{
  dispatch_assert_queue_V2(self->_serialQueue);
  recordZoneSetupTimer = self->_recordZoneSetupTimer;
  p_recordZoneSetupTimer = &self->_recordZoneSetupTimer;
  v3 = recordZoneSetupTimer;
  if (recordZoneSetupTimer)
  {
    dispatch_source_cancel(v3);

    objc_storeStrong(p_recordZoneSetupTimer, 0);
  }
}

- (void)_setupRecordZoneWithRetryInterval:(double)interval
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005740;
  v6[3] = &unk_100018988;
  v6[4] = self;
  v7 = [[CKRecordZoneID alloc] initWithZoneName:@"com.apple.siri.knowledge" ownerName:CKCurrentUserDefaultName];
  intervalCopy = interval;
  v5 = v7;
  [(CKNCloudKitManager *)self _createRecordZoneWithID:v5 completion:v6];
}

- (void)_setupRecordZone
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(CKNCloudKitManager *)self _shouldSync])
  {
    if (self->_recordZone)
    {
      if (self->_subscription && self->_hasSetUpRecordZoneSubscription)
      {

        [(CKNCloudKitManager *)self _fetchChanges];
      }

      else
      {

        [(CKNCloudKitManager *)self _setupRecordZoneSubscription];
      }
    }

    else
    {

      [(CKNCloudKitManager *)self _setupRecordZoneWithRetryInterval:120.0];
    }
  }
}

- (void)_resetZone
{
  recordZone = self->_recordZone;
  self->_recordZone = 0;

  subscription = self->_subscription;
  self->_subscription = 0;

  sub_100002D3C(self, 0);
  sub_100005B9C(self, 0);

  [(CKNCloudKitManager *)self _setupRecordZone];
}

- (void)_initializeZone
{
  v3 = [[CKRecordZoneID alloc] initWithZoneName:@"com.apple.siri.knowledge" ownerName:CKCurrentUserDefaultName];
  v10 = v3;
  if (v3)
  {
    v3 = [[CKRecordZone alloc] initWithZoneID:v3];
  }

  recordZone = self->_recordZone;
  self->_recordZone = v3;

  if (self->_recordZone)
  {
    v5 = [NSString stringWithFormat:@"%@-%@", @"com.apple.siri.knowledge.subscription", self->_supportedRecordType];
    v6 = [CKRecordZoneSubscription alloc];
    zoneID = [(CKRecordZone *)self->_recordZone zoneID];
    v8 = [v6 initWithZoneID:zoneID subscriptionID:v5];

    [(CKRecordZoneSubscription *)v8 setRecordType:self->_supportedRecordType];
    subscription = self->_subscription;
    self->_subscription = v8;
  }

  else
  {
    v5 = self->_subscription;
    self->_subscription = 0;
  }
}

- (id)_createCloudKitContainer
{
  v2 = [CKContainer containerWithIdentifier:@"com.apple.siri.knowledge"];
  v3 = objc_opt_new();
  [v3 setUseZoneWidePCS:1];
  v4 = [CKContainer alloc];
  containerID = [v2 containerID];
  v6 = [v4 initWithContainerID:containerID options:v3];

  return v6;
}

- (void)fetchAllChangesWithCompletion:(id)completion
{
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006504;
  v7[3] = &unk_100018898;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(serialQueue, v7);
}

- (void)fetchChangesWithCompletion:(id)completion
{
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006758;
  v7[3] = &unk_100018898;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(serialQueue, v7);
}

- (void)_fetchChangesWithRetryCount:(unint64_t)count
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if (count < 2)
  {
    serverChangeToken = self->_serverChangeToken;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100006B24;
    v7[3] = &unk_100018848;
    v7[4] = self;
    v7[5] = count;
    [(CKNCloudKitManager *)self _fetchChangesFrom:serverChangeToken completion:v7];
  }

  else
  {
    v5 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v9 = "[CKNCloudKitManager _fetchChangesWithRetryCount:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Exceeded fetch retry attempts for zone", buf, 0xCu);
    }
  }
}

- (void)_fetchChanges
{
  dispatch_assert_queue_V2(self->_serialQueue);

  [(CKNCloudKitManager *)self _fetchChangesWithRetryCount:0];
}

- (void)_fetchChangesFrom:(id)from completion:(id)completion
{
  fromCopy = from;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(CKNCloudKitManager *)self _shouldSync])
  {
    privateCloudDatabase = [(CKContainer *)self->_container privateCloudDatabase];
    if (privateCloudDatabase)
    {
      zoneID = [(CKRecordZone *)self->_recordZone zoneID];

      if (zoneID)
      {
        v10 = CKLogContextDaemon;
        if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          recordZone = self->_recordZone;
          v12 = v10;
          zoneID2 = [(CKRecordZone *)recordZone zoneID];
          zoneName = [zoneID2 zoneName];
          [privateCloudDatabase databaseScope];
          v15 = CKDatabaseScopeString();
          *buf = 136315650;
          *&buf[4] = "[CKNCloudKitManager _fetchChangesFrom:completion:]";
          *&buf[12] = 2112;
          *&buf[14] = zoneName;
          *&buf[22] = 2112;
          v47 = v15;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Fetching changes in record zone (%@) in database (%@)", buf, 0x20u);
        }

        zoneID3 = [(CKRecordZone *)self->_recordZone zoneID];
        v52 = zoneID3;
        v31 = [NSArray arrayWithObjects:&v52 count:1];

        v17 = +[NSMutableArray array];
        v18 = +[NSMutableArray array];
        v19 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
        [v19 setPreviousServerChangeToken:fromCopy];
        zoneID4 = [(CKRecordZone *)self->_recordZone zoneID];
        v50 = zoneID4;
        v51 = v19;
        v30 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v47 = sub_1000077F4;
        v48 = sub_100007804;
        v49 = 0;
        v21 = [[CKFetchRecordZoneChangesOperation alloc] initWithRecordZoneIDs:v31 configurationsByRecordZoneID:v30];
        [v21 setFetchAllChanges:1];
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_10000780C;
        v44[3] = &unk_1000186E0;
        v22 = v17;
        v45 = v22;
        [v21 setRecordChangedBlock:v44];
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_100007818;
        v42[3] = &unk_100018708;
        v23 = v18;
        v43 = v23;
        [v21 setRecordWithIDWasDeletedBlock:v42];
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_100007824;
        v41[3] = &unk_100018730;
        v41[4] = buf;
        [v21 setRecordZoneChangeTokensUpdatedBlock:v41];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_100007838;
        v40[3] = &unk_100018758;
        v40[4] = buf;
        [v21 setRecordZoneFetchCompletionBlock:v40];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100007AE4;
        v32[3] = &unk_1000187D0;
        v24 = privateCloudDatabase;
        v33 = v24;
        v25 = v22;
        v34 = v25;
        selfCopy = self;
        v37 = completionCopy;
        v26 = v23;
        v39 = fromCopy == 0;
        v36 = v26;
        v38 = buf;
        [v21 setFetchRecordZoneChangesCompletionBlock:v32];
        [v21 setQualityOfService:17];
        [v24 addOperation:v21];

        _Block_object_dispose(buf, 8);
        goto LABEL_13;
      }

      if (completionCopy)
      {
        v28 = [NSError errorWithDomain:CKErrorDomain code:26 userInfo:0];
        goto LABEL_12;
      }
    }

    else if (completionCopy)
    {
      v28 = [NSError errorWithDomain:CKErrorDomain code:24 userInfo:0];
LABEL_12:
      v29 = v28;
      (*(completionCopy + 2))(completionCopy, v28, 0, 0, 0, 0);
    }

LABEL_13:

    goto LABEL_14;
  }

  v27 = [NSError errorWithDomain:CKErrorDomain code:6 userInfo:0];
  (*(completionCopy + 2))(completionCopy, v27, 0, 0, 0, 0);

LABEL_14:
}

- (id)_underlyingErrorForError:(id)error zoneID:(id)d
{
  errorCopy = error;
  dCopy = d;
  if ([errorCopy code] == 2)
  {
    if (dCopy)
    {
      userInfo = [errorCopy userInfo];
      v8 = [userInfo objectForKey:CKPartialErrorsByItemIDKey];

      v9 = [v8 objectForKey:dCopy];
      userInfo2 = [v9 userInfo];
      v11 = [userInfo2 objectForKey:NSUnderlyingErrorKey];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    userInfo3 = [errorCopy userInfo];
    v11 = [userInfo3 objectForKey:NSUnderlyingErrorKey];

    if (!v11)
    {
      v11 = errorCopy;
    }
  }

  return v11;
}

- (BOOL)_shouldSync
{
  if (self->_cloudSyncEnabled)
  {
    v4 = [(CKAccountInfo *)self->_accountInfo supportsDeviceToDeviceEncryption:v2];
    if (v4)
    {
      LOBYTE(v4) = AFIsHorseman() ^ 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_setupAccountState
{
  if ([(CKAccountInfo *)self->_accountInfo supportsDeviceToDeviceEncryption]&& [(CKAccountInfo *)self->_accountInfo accountStatus]== 1)
  {
    [(CKNCloudKitManager *)self _cleanUpRecordZoneSubscriptionsTimers];
    if (self->_cloudSyncEnabled)
    {

      [(CKNCloudKitManager *)self _setupRecordZone];
    }
  }

  else
  {

    [(CKNCloudKitManager *)self _cleanUpRecordZonesAndSubscriptions];
  }
}

- (void)_handleAccountStatusChange:(id)change
{
  changeCopy = change;
  dispatch_assert_queue_V2(self->_serialQueue);
  v6 = [(CKAccountInfo *)self->_accountInfo isEqual:changeCopy];
  v7 = CKLogContextDaemon;
  v8 = os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      v13 = 136315138;
      v14 = "[CKNCloudKitManager _handleAccountStatusChange:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s CloudKit account status is unchanged", &v13, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      v9 = v7;
      [changeCopy accountStatus];
      v10 = CKStringFromAccountStatus();
      supportsDeviceToDeviceEncryption = [changeCopy supportsDeviceToDeviceEncryption];
      v12 = @"Disabled";
      v14 = "[CKNCloudKitManager _handleAccountStatusChange:]";
      v13 = 136315650;
      v15 = 2112;
      v16 = v10;
      if (supportsDeviceToDeviceEncryption)
      {
        v12 = @"Enabled";
      }

      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s CloudKit account status: (%@) encryption is: %@", &v13, 0x20u);
    }

    objc_storeStrong(&self->_accountInfo, change);
    [(CKNCloudKitManager *)self _setupAccountState];
  }
}

- (void)_setupAccount
{
  dispatch_assert_queue_V2(self->_serialQueue);
  container = self->_container;
  if (!container)
  {
    _createCloudKitContainer = [(CKNCloudKitManager *)self _createCloudKitContainer];
    v5 = self->_container;
    self->_container = _createCloudKitContainer;

    container = self->_container;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000082A8;
  v6[3] = &unk_1000186B8;
  v6[4] = self;
  [(CKContainer *)container accountInfoWithCompletionHandler:v6];
}

- (void)_cloudSyncPreferenceDidChange
{
  v3 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[CKNCloudKitManager _cloudSyncPreferenceDidChange]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s CloudKit preferences changed", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000863C;
  block[3] = &unk_100018A90;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_cloudKitAccountStatusChanged:(id)changed
{
  v4 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[CKNCloudKitManager _cloudKitAccountStatusChanged:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008874;
  block[3] = &unk_100018A90;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_handleCloudKitNotification:(id)notification
{
  notificationCopy = notification;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(CKNCloudKitManager *)self _shouldSync])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = notificationCopy;
      v6 = CKLogContextDaemon;
      if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v13 = 136315394;
        v14 = "[CKNCloudKitManager _handleCloudKitNotification:]";
        v15 = 2112;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Received record zone notification: (%@)", &v13, 0x16u);
      }

      if ([v5 databaseScope] == 2)
      {
        recordZoneID = [v5 recordZoneID];
        zoneName = [recordZoneID zoneName];
        if (zoneName)
        {
          v9 = zoneName;
          if ([zoneName isEqualToString:@"com.apple.siri.knowledge"])
          {
            [(CKNCloudKitManager *)self _fetchChanges];
          }

          else
          {
            v12 = CKLogContextDaemon;
            if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              v13 = 136315394;
              v14 = "[CKNCloudKitManager _handleCloudKitNotification:]";
              v15 = 2112;
              v16 = recordZoneID;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Unrecognized record zone notification zone name: (%@)", &v13, 0x16u);
            }
          }
        }

        else
        {
          v11 = CKLogContextDaemon;
          if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            v13 = 136315138;
            v14 = "[CKNCloudKitManager _handleCloudKitNotification:]";
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Record zone notification contains no zone name", &v13, 0xCu);
          }
        }
      }
    }
  }

  else
  {
    v10 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "[CKNCloudKitManager _handleCloudKitNotification:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s iCloud sync is disabled. Ignoring notification", &v13, 0xCu);
    }
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v9 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    topic = [messageCopy topic];
    v17 = 136315650;
    v18 = "[CKNCloudKitManager connection:didReceiveIncomingMessage:]";
    v19 = 2112;
    v20 = topic;
    v21 = 2112;
    v22 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s APS message received for topic (%@) on connection (%@)", &v17, 0x20u);
  }

  topic2 = [messageCopy topic];
  if (self)
  {
    applicationIdentifier = self->_applicationIdentifier;
  }

  else
  {
    applicationIdentifier = 0;
  }

  v14 = [@"com.apple.icloud-container." stringByAppendingString:applicationIdentifier];
  v15 = [topic2 isEqualToString:v14];

  if (v15)
  {
    v16 = [CKNotification notificationFromRemoteNotificationDictionary:userInfo];
    [(CKNCloudKitManager *)self _handleCloudKitNotification:v16];
  }
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  connectionCopy = connection;
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  v13 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 136316162;
    v15 = "[CKNCloudKitManager connection:didReceiveToken:forTopic:identifier:]";
    v16 = 2112;
    v17 = tokenCopy;
    v18 = 2112;
    v19 = topicCopy;
    v20 = 2112;
    v21 = identifierCopy;
    v22 = 2112;
    v23 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Received per-topic push token (%@) for topic (%@) identifier (%@) on connection (%@)", &v14, 0x34u);
  }
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  v7 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "[CKNCloudKitManager connection:didReceivePublicToken:]";
    v10 = 2112;
    v11 = tokenCopy;
    v12 = 2112;
    v13 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Received public token (%@) on connection %@", &v8, 0x20u);
  }
}

- (void)_disablePush
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = sub_100008EDC(self);
  [v3 _setEnabledTopics:0];
}

- (void)_enablePush
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = self->_applicationIdentifier;
  v4 = [@"com.apple.icloud-container." stringByAppendingString:v3];

  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = sub_100008EDC(self);
  [v6 _setEnabledTopics:v5];
}

- (void)disablePushNotifications
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009140;
  block[3] = &unk_100018A90;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)enablePushNotifications
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000091BC;
  block[3] = &unk_100018A90;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)dealloc
{
  [(APSConnection *)self->_pushConnection setDelegate:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:CKAccountChangedNotification object:0];
  [v3 removeObserver:self name:CKIdentityUpdateNotification object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kAFCloudSyncPreferenceDidChangeDarwinNotification, 0);

  v5.receiver = self;
  v5.super_class = CKNCloudKitManager;
  [(CKNCloudKitManager *)&v5 dealloc];
}

- (CKNCloudKitManager)init
{
  v34.receiver = self;
  v34.super_class = CKNCloudKitManager;
  v2 = [(CKNCloudKitManager *)&v34 init];
  if (v2)
  {
    v3 = +[CKKnowledgeStore userDefaultsKnowledgeStore];
    v4 = [v3 valueForKey:@"ServerChangeToken"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v33 = 0;
      v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v6 error:&v33];
      v8 = v33;
      if (v8)
      {
        v9 = CKLogContextDaemon;
        if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v36 = "[CKNCloudKitManager init]";
          v37 = 2112;
          v38 = v6;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s error unarchiving server change token %@", buf, 0x16u);
        }

        v10 = 0;
      }

      else
      {
        v11 = objc_opt_self();
        v10 = [v7 decodeObjectOfClass:v11 forKey:NSKeyedArchiveRootObjectKey];

        [v7 finishDecoding];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v2->_serverChangeToken, v10);
        }
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = [v3 valueForKey:@"HasSetUpRecordZoneSubscription"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v2->_hasSetUpRecordZoneSubscription = [v13 BOOLValue];
    [(CKAccountInfo *)v2->_accountInfo setAccountStatus:0];
    [(CKAccountInfo *)v2->_accountInfo setSupportsDeviceToDeviceEncryption:0];
    [(CKAccountInfo *)v2->_accountInfo setAccountPartition:1];
    getApplicationIdentifierFromEntitlements = [objc_opt_class() getApplicationIdentifierFromEntitlements];
    applicationIdentifier = v2->_applicationIdentifier;
    v2->_applicationIdentifier = getApplicationIdentifierFromEntitlements;

    objc_storeStrong(&v2->_supportedRecordType, @"SiriKnowledgeKeyValueRecord");
    v16 = +[AFPreferences sharedPreferences];
    v2->_cloudSyncEnabled = [v16 cloudSyncEnabled];

    v17 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v18 = @"disabled";
      if (v2->_cloudSyncEnabled)
      {
        v18 = @"enabled";
      }

      *buf = 136315394;
      v36 = "[CKNCloudKitManager init]";
      v37 = 2112;
      v38 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Cloud sync is %@", buf, 0x16u);
    }

    v19 = dispatch_queue_create("CKNCloudKitManager.Serial", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v19;

    _createCloudKitContainer = [(CKNCloudKitManager *)v2 _createCloudKitContainer];
    container = v2->_container;
    v2->_container = _createCloudKitContainer;

    v23 = v2->_serialQueue;
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_1000096E0;
    v31 = &unk_100018A90;
    v24 = v2;
    v32 = v24;
    dispatch_async(v23, &v28);
    v25 = [NSNotificationCenter defaultCenter:v28];
    [v25 addObserver:v24 selector:"_cloudKitAccountStatusChanged:" name:CKAccountChangedNotification object:0];
    [v25 addObserver:v24 selector:"_cloudKitAccountStatusChanged:" name:CKIdentityUpdateNotification object:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v24, sub_100009738, kAFCloudSyncPreferenceDidChangeDarwinNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

+ (id)getApplicationIdentifierFromEntitlements
{
  [@"application-identifier" UTF8String];
  v2 = xpc_copy_entitlement_for_self();
  v3 = v2;
  if (v2 && xpc_get_type(v2) == &_xpc_type_string)
  {
    v4 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v3)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000991C;
  block[3] = &unk_100018668;
  block[4] = self;
  if (qword_10001D950 != -1)
  {
    dispatch_once(&qword_10001D950, block);
  }

  v2 = qword_10001D958;

  return v2;
}

@end