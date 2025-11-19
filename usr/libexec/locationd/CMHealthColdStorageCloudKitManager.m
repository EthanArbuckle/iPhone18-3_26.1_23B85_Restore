@interface CMHealthColdStorageCloudKitManager
- (BOOL)addPendingRecordChanges:(id)a3 forZoneName:(id)a4;
- (CMHealthColdStorageCloudKitManager)initWithColdStorageManager:(void *)a3;
- (id).cxx_construct;
- (id)getSyncEngineMetadata;
- (id)getUserRecordIDName;
- (id)syncEngine:(id)a3 nextRecordZoneChangeBatchForContext:(id)a4;
- (id)zoneIDForZoneName:(id)a3;
- (void)createZone:(id)a3;
- (void)dealloc;
- (void)deleteSyncEngineMetadata;
- (void)deleteZone:(id)a3;
- (void)handleAccountChange:(id)a3;
- (void)handleDidFetchChanges:(id)a3;
- (void)handleDidFetchRecordZoneChanges:(id)a3;
- (void)handleDidSendChanges:(id)a3;
- (void)handleFetchedDatabaseChanges:(id)a3;
- (void)handleFetchedRecordZoneChanges:(id)a3;
- (void)handleSentDatabaseChanges:(id)a3;
- (void)handleSentRecordZoneChanges:(id)a3;
- (void)handleServerRecordChanged:(id)a3;
- (void)handleStateUpdate:(id)a3;
- (void)handleUnknownItem:(id)a3;
- (void)handleWillFetchChanges:(id)a3;
- (void)handleWillFetchRecordZoneChanges:(id)a3;
- (void)handleWillSendChanges:(id)a3;
- (void)handleZoneDeleted:(id)a3;
- (void)handleZoneNotFound:(id)a3;
- (void)initializeSyncEngine;
- (void)persistSyncEngineMetadata:(id)a3;
- (void)setUserRecordIDName:(id)a3;
- (void)syncEngine:(id)a3 handleEvent:(id)a4;
- (void)updateDeviceUnlockedState:(BOOL)a3;
@end

@implementation CMHealthColdStorageCloudKitManager

- (CMHealthColdStorageCloudKitManager)initWithColdStorageManager:(void *)a3
{
  v6.receiver = self;
  v6.super_class = CMHealthColdStorageCloudKitManager;
  v4 = [(CMHealthColdStorageCloudKitManager *)&v6 init];
  if (v4)
  {
    v4->_coldStorageManager = a3;
    sub_1004F40C8();
  }

  return 0;
}

- (void)dealloc
{
  zoneIDs = self->_zoneIDs;
  if (zoneIDs)
  {

    self->_zoneIDs = 0;
  }

  container = self->_container;
  if (container)
  {

    self->_container = 0;
  }

  syncEngine = self->_syncEngine;
  if (syncEngine)
  {

    self->_syncEngine = 0;
  }

  v6.receiver = self;
  v6.super_class = CMHealthColdStorageCloudKitManager;
  [(CMHealthColdStorageCloudKitManager *)&v6 dealloc];
}

- (BOOL)addPendingRecordChanges:(id)a3 forZoneName:(id)a4
{
  if (qword_1025D4530 != -1)
  {
    sub_1018A5370();
  }

  v7 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v15 = a4;
    v16 = 2112;
    v17 = a3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "[CloudKit] addPendingRecordChanges - zoneName: %@, recordNames: %@", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A5384(a4, a3);
  }

  if (self->_syncEngine)
  {
    v8 = 1;
  }

  else
  {
    [(CMHealthColdStorageCloudKitManager *)self initializeSyncEngine];
    v8 = self->_syncEngine != 0;
  }

  LOBYTE(v9) = 0;
  if (a4)
  {
    if (a3)
    {
      if (v8)
      {
        v9 = [a3 count];
        if (v9)
        {
          v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [a3 count]);
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_1004F0D5C;
          v13[3] = &unk_10245A580;
          v13[4] = self;
          v13[5] = a4;
          v13[6] = v10;
          [a3 enumerateObjectsUsingBlock:v13];
          [(CKSyncEngineState *)[(CKSyncEngine *)self->_syncEngine state] addPendingRecordZoneChanges:v10];
          if (qword_1025D4530 != -1)
          {
            sub_1018A5488();
          }

          v11 = qword_1025D4538;
          if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "[CloudKit] Added pending changes", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018A54B0();
          }

          LOBYTE(v9) = 1;
        }
      }
    }
  }

  return v9;
}

- (void)updateDeviceUnlockedState:(BOOL)a3
{
  v3 = a3;
  if (qword_1025D4530 != -1)
  {
    sub_1018A5370();
  }

  v5 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "[CloudKit] updateDeviceUnlockedState", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A5594();
  }

  if (!self->_syncEngine && v3 && !self->_deviceUnlocked)
  {
    coldStorageManager = self->_coldStorageManager;
    if (coldStorageManager)
    {
      if (sub_100EA577C(coldStorageManager))
      {
        if (qword_1025D4530 != -1)
        {
          sub_1018A5488();
        }

        v7 = qword_1025D4538;
        if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "[CloudKit] Device has been unlocked. Will now initialize the sync engine.", v8, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018A5678();
        }

        [(CMHealthColdStorageCloudKitManager *)self initializeSyncEngine];
      }
    }
  }

  self->_deviceUnlocked = v3;
}

- (id)zoneIDForZoneName:(id)a3
{
  if (![(NSMutableDictionary *)self->_zoneIDs objectForKey:?])
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_zoneIDs, "setObject:forKeyedSubscript:", [[CKRecordZoneID alloc] initWithZoneName:a3 ownerName:CKCurrentUserDefaultName], a3);
  }

  zoneIDs = self->_zoneIDs;

  return [(NSMutableDictionary *)zoneIDs objectForKeyedSubscript:a3];
}

- (void)initializeSyncEngine
{
  v3 = [(CMHealthColdStorageCloudKitManager *)self getSyncEngineMetadata];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRES_CLASS_B, 1);
  v5 = [[CKSyncEngineConfiguration alloc] initWithDatabase:-[CKContainer privateCloudDatabase](self->_container stateSerialization:"privateCloudDatabase") delegate:{v3, self}];
  [v5 setApsMachServiceName:@"com.apple.aps.locationd.coldstorage.cloudkit"];
  [v5 setPriority:2];
  [v5 setXpcActivityCriteriaOverrides:v4];
  self->_syncEngine = [[CKSyncEngine alloc] initWithConfiguration:v5];

  xpc_release(v4);
}

- (id)getSyncEngineMetadata
{
  v7 = 0;
  v8 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v9 = 0;
  v2 = sub_1004F11DC(self->_metadataDb.__ptr_, &v7);
  result = 0;
  if (v2 && v9 != 0)
  {
    v6 = 0;
    result = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v6];
    if (v6)
    {
      if (qword_1025D4530 != -1)
      {
        sub_1018A5488();
      }

      v5 = qword_1025D4538;
      if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "[CloudKit] CloudKit manager failed to read metadata. Error:%@", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018A575C();
      }

      return 0;
    }
  }

  return result;
}

- (void)persistSyncEngineMetadata:(id)a3
{
  Current = CFAbsoluteTimeGetCurrent();
  v8 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v8];
  if (v8)
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018A5488();
    }

    v7 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[CloudKit] CloudKit manager failed to write metadata. Error:%{public}@", &buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A5858();
    }
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = Current;
    v10 = Current;
    v11 = v6;
    sub_100D7E388(self->_metadataDb.__ptr_, &buf);
  }
}

- (void)deleteSyncEngineMetadata
{
  if (qword_1025D4530 != -1)
  {
    sub_1018A5370();
  }

  v3 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "[CloudKit] Deleting all sync engine metadata", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A5954();
  }

  sub_10105499C(self->_metadataDb.__ptr_ + 9);
}

- (void)deleteZone:(id)a3
{
  if (a3)
  {
    if (self->_syncEngine)
    {
      v4 = [[CKSyncEnginePendingZoneDelete alloc] initWithZoneID:a3];
      v5 = [(CKSyncEngine *)self->_syncEngine state];
      v6 = v4;
      [(CKSyncEngineState *)v5 addPendingDatabaseChanges:[NSArray arrayWithObjects:&v6 count:1]];
    }
  }
}

- (void)createZone:(id)a3
{
  if (a3 && self->_syncEngine)
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018A5370();
    }

    v5 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v11 = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "[CloudKit] Creating new zone with ZoneID: %@", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A5A38();
    }

    v6 = [[CKRecordZone alloc] initWithZoneID:a3];
    v7 = [[CKSyncEnginePendingZoneSave alloc] initWithZone:v6];
    v8 = [(CKSyncEngine *)self->_syncEngine state];
    v9 = v7;
    [(CKSyncEngineState *)v8 addPendingDatabaseChanges:[NSArray arrayWithObjects:&v9 count:1]];
  }
}

- (void)handleZoneDeleted:(id)a3
{
  [(CMHealthColdStorageCloudKitManager *)self createZone:?];
  coldStorageManager = self->_coldStorageManager;
  if (coldStorageManager)
  {
    v6 = [a3 zoneName];

    sub_100EA5624(coldStorageManager, v6);
  }
}

- (void)handleServerRecordChanged:(id)a3
{
  if (a3)
  {
    if (self->_syncEngine)
    {
      coldStorageManager = self->_coldStorageManager;
      if (coldStorageManager)
      {
        if ((sub_100EA5480(coldStorageManager, [a3 recordID], +[CMHealthColdStorageUtils getSystemFieldsFromCKRecord:](CMHealthColdStorageUtils, "getSystemFieldsFromCKRecord:", a3)) & 1) == 0)
        {
          if (qword_1025D4530 != -1)
          {
            sub_1018A5370();
          }

          v4 = qword_1025D4538;
          if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
          {
            *v6 = 0;
            _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "[CloudKit] ServerRecordChanged: Failed to update local system fields", v6, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018A5B28();
          }
        }
      }
    }
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018A5370();
    }

    v5 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "[CloudKit] Cannot handle server record change, invalid record", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A5C0C();
    }
  }
}

- (void)handleUnknownItem:(id)a3
{
  if (a3 && self->_syncEngine)
  {
    coldStorageManager = self->_coldStorageManager;
    if (coldStorageManager && (sub_100EA5480(coldStorageManager, [a3 recordID], 0) & 1) == 0)
    {
      if (qword_1025D4530 != -1)
      {
        sub_1018A5370();
      }

      v6 = qword_1025D4538;
      if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "[CloudKit] UnknownItem: Failed to update local system fields", v11, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018A5CF0();
      }
    }

    v7 = [CKSyncEnginePendingRecordZoneChange alloc];
    v8 = [a3 recordID];
    v9 = [v7 initWithRecordID:v8 type:CKSyncEnginePendingRecordZoneChangeTypeSave];
    v10 = [(CKSyncEngine *)self->_syncEngine state];
    v12 = v9;
    [(CKSyncEngineState *)v10 addPendingRecordZoneChanges:[NSArray arrayWithObjects:&v12 count:1]];
  }
}

- (void)handleZoneNotFound:(id)a3
{
  if (a3)
  {
    if (self->_syncEngine)
    {
      -[CMHealthColdStorageCloudKitManager createZone:](self, "createZone:", [objc_msgSend(a3 "recordID")]);
      v5 = [CKSyncEnginePendingRecordZoneChange alloc];
      v6 = [a3 recordID];
      v7 = [v5 initWithRecordID:v6 type:CKSyncEnginePendingRecordZoneChangeTypeSave];
      v8 = [(CKSyncEngine *)self->_syncEngine state];
      v9 = v7;
      [(CKSyncEngineState *)v8 addPendingRecordZoneChanges:[NSArray arrayWithObjects:&v9 count:1]];
    }
  }
}

- (void)setUserRecordIDName:(id)a3
{
  if (qword_1025D4530 != -1)
  {
    sub_1018A5370();
  }

  v4 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138477827;
    v8 = a3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "[CloudKit] Setting userRecordIDName to %{private}@", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A5DD4();
  }

  v5 = sub_1000206B4();
  sub_1002DC480(v5, @"kColdStorageCloudKitUserID", [a3 UTF8String]);
  v6 = *sub_1000206B4();
  (*(v6 + 944))();
}

- (id)getUserRecordIDName
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  v2 = sub_1000206B4();
  sub_100005050(v2, @"kColdStorageCloudKitUserID", &__p);
  v3 = HIBYTE(v10);
  if (v10 < 0)
  {
    v3 = v9;
  }

  if (!v3)
  {
    v6 = 0;
    if ((v10 & 0x8000000000000000) == 0)
    {
      return v6;
    }

    goto LABEL_8;
  }

  v4 = [NSString alloc];
  if (v10 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v6 = [v4 initWithUTF8String:p_p];
  if (v10 < 0)
  {
LABEL_8:
    operator delete(__p);
  }

  return v6;
}

- (void)syncEngine:(id)a3 handleEvent:(id)a4
{
  if (a4)
  {
    if (self->_syncEngine == a3)
    {
      v9 = [a4 type];
      if (v9 > 5)
      {
        if (v9 > 8)
        {
          switch(v9)
          {
            case 9:

              [(CMHealthColdStorageCloudKitManager *)self handleDidFetchChanges:a4];
              break;
            case 10:

              [(CMHealthColdStorageCloudKitManager *)self handleWillSendChanges:a4];
              break;
            case 11:

              [(CMHealthColdStorageCloudKitManager *)self handleDidSendChanges:a4];
              break;
          }
        }

        else if (v9 == 6)
        {

          [(CMHealthColdStorageCloudKitManager *)self handleWillFetchChanges:a4];
        }

        else if (v9 == 7)
        {

          [(CMHealthColdStorageCloudKitManager *)self handleWillFetchRecordZoneChanges:a4];
        }

        else
        {

          [(CMHealthColdStorageCloudKitManager *)self handleDidFetchRecordZoneChanges:a4];
        }
      }

      else if (v9 > 2)
      {
        if (v9 == 3)
        {

          [(CMHealthColdStorageCloudKitManager *)self handleFetchedRecordZoneChanges:a4];
        }

        else if (v9 == 4)
        {

          [(CMHealthColdStorageCloudKitManager *)self handleSentDatabaseChanges:a4];
        }

        else
        {

          [(CMHealthColdStorageCloudKitManager *)self handleSentRecordZoneChanges:a4];
        }
      }

      else if (v9)
      {
        if (v9 == 1)
        {

          [(CMHealthColdStorageCloudKitManager *)self handleAccountChange:a4];
        }

        else if (v9 == 2)
        {

          [(CMHealthColdStorageCloudKitManager *)self handleFetchedDatabaseChanges:a4];
        }
      }

      else
      {

        [(CMHealthColdStorageCloudKitManager *)self handleStateUpdate:a4];
      }
    }

    else
    {
      if (qword_1025D4530 != -1)
      {
        sub_1018A5370();
      }

      v6 = qword_1025D4538;
      if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = a3;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "[CloudKit] Sync engine (%@) doesn't match internal reference.", &v10, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018A5EC4();
      }
    }
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018A5370();
    }

    v7 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[CloudKit] Sync engine (%@) called back for invalid event", &v10, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A5FB4();
    }
  }
}

- (id)syncEngine:(id)a3 nextRecordZoneChangeBatchForContext:(id)a4
{
  if (self->_syncEngine != a3)
  {
    return 0;
  }

  v6 = [objc_msgSend(a4 "options")];
  v7 = [(CKSyncEngineState *)[(CKSyncEngine *)self->_syncEngine state] pendingRecordZoneChanges];
  if (v6)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([v6 containsObject:{objc_msgSend(objc_msgSend(v13, "recordID"), "zoneID")}])
          {
            [v8 addObject:v13];
          }
        }

        v10 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    v7 = [NSArray arrayWithArray:v8];
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1004F2388;
  v14[3] = &unk_10245A5A8;
  v14[4] = self;
  return [[CKSyncEngineRecordZoneChangeBatch alloc] initWithPendingChanges:v7 recordProvider:v14];
}

- (void)handleStateUpdate:(id)a3
{
  v5 = [a3 stateUpdateEvent];
  if (v5)
  {
    v6 = [v5 stateSerialization];

    [(CMHealthColdStorageCloudKitManager *)self persistSyncEngineMetadata:v6];
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018A5370();
    }

    v7 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[CloudKit] Called back for invalid CKSyncEngineStateUpdateEvent (%@)", &v8, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A60A4();
    }
  }
}

- (void)handleAccountChange:(id)a3
{
  v5 = [a3 accountChangeEvent];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 changeType];
    if (v7 == 2)
    {
      if (qword_1025D4530 != -1)
      {
        sub_1018A5370();
      }

      v14 = qword_1025D4538;
      if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "[CloudKit] iCloud switched accounts. Deleting all records and sync engine metadata.", &v18, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018A6194();
      }

      coldStorageManager = self->_coldStorageManager;
      if (coldStorageManager)
      {
        sub_100EA555C(coldStorageManager);
      }

      [(CMHealthColdStorageCloudKitManager *)self deleteSyncEngineMetadata];
    }

    else
    {
      if (v7 != 1)
      {
        if (v7)
        {
          return;
        }

        v8 = [(CMHealthColdStorageCloudKitManager *)self getUserRecordIDName];
        if (v8)
        {
          v9 = [v8 isEqualToString:{objc_msgSend(objc_msgSend(v6, "currentUser"), "recordName")}];
          [(CMHealthColdStorageCloudKitManager *)self deleteSyncEngineMetadata];
          p_coldStorageManager = &self->_coldStorageManager;
          if (self->_coldStorageManager)
          {
            if (!v9)
            {
              if (qword_1025D4530 != -1)
              {
                sub_1018A5370();
              }

              v11 = qword_1025D4538;
              if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v18) = 0;
                _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[CloudKit] iCloud account change. User switched account", &v18, 2u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1018A635C();
              }

              sub_100EA555C(*p_coldStorageManager);
              goto LABEL_44;
            }

LABEL_37:
            if (qword_1025D4530 != -1)
            {
              sub_1018A5370();
            }

            v16 = qword_1025D4538;
            if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v18) = 0;
              _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "[CloudKit] iCloud account change. User signed in with same account", &v18, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018A6440();
            }

            sub_100EA55F0(*p_coldStorageManager);
          }
        }

        else
        {
          [(CMHealthColdStorageCloudKitManager *)self deleteSyncEngineMetadata];
          p_coldStorageManager = &self->_coldStorageManager;
          if (self->_coldStorageManager)
          {
            goto LABEL_37;
          }
        }

LABEL_44:
        -[CMHealthColdStorageCloudKitManager setUserRecordIDName:](self, "setUserRecordIDName:", [objc_msgSend(v6 "currentUser")]);
        if (qword_1025D4530 != -1)
        {
          sub_1018A5488();
        }

        v17 = qword_1025D4538;
        if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "[CloudKit] iCloud account change. User signed in.", &v18, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018A6524();
        }

        return;
      }

      if (qword_1025D4530 != -1)
      {
        sub_1018A5370();
      }

      v13 = qword_1025D4538;
      if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "[CloudKit] iCloud account change. User signed out.", &v18, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018A6278();
      }
    }
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018A5370();
    }

    v12 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = a3;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "[CloudKit] Called back for invalid CKSyncEngineAccountChangeEvent (%@)", &v18, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A6608();
    }
  }
}

- (void)handleFetchedDatabaseChanges:(id)a3
{
  if (qword_1025D4530 != -1)
  {
    sub_1018A5370();
  }

  v3 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "[CloudKit] Fetched database changes event", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A66F8();
  }
}

- (void)handleFetchedRecordZoneChanges:(id)a3
{
  v5 = [a3 fetchedRecordZoneChangesEvent];
  if (v5)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1004F2AC4;
    v8[3] = &unk_10245A5D0;
    v8[4] = self;
    [objc_msgSend(v5 "modifications")];
    if (qword_1025D4530 != -1)
    {
      sub_1018A5488();
    }

    v6 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "[CloudKit] Fetched record zone event", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A67DC();
    }
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018A5370();
    }

    v7 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[CloudKit] Called back for invalid CKSyncEngineFetchedRecordZoneChangesEvent (%@)", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A68C0();
    }
  }
}

- (void)handleSentDatabaseChanges:(id)a3
{
  v5 = [a3 sentDatabaseChangesEvent];
  if (v5)
  {
    v6 = v5;
    [objc_msgSend(v5 "savedZones")];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1004F2D80;
    v9[3] = &unk_10245A638;
    v9[4] = self;
    [objc_msgSend(v6 "deletedZoneIDs")];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1004F2E74;
    v8[3] = &unk_10245A660;
    v8[4] = self;
    [objc_msgSend(v6 "failedZoneSaves")];
    [objc_msgSend(v6 "failedZoneDeletes")];
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018A5370();
    }

    v7 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[CloudKit] Called back for invalid CKSyncEngineSentDatabaseChangesEvent (%@)", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A69B0();
    }
  }
}

- (void)handleSentRecordZoneChanges:(id)a3
{
  v5 = [a3 sentRecordZoneChangesEvent];
  if (v5)
  {
    v6 = v5;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1004F32A8;
    v10[3] = &unk_10245A5D0;
    v10[4] = self;
    [objc_msgSend(v5 "savedRecords")];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1004F343C;
    v9[3] = &unk_10245A6C8;
    v9[4] = self;
    [objc_msgSend(v6 "deletedRecordIDs")];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1004F35A8;
    v8[3] = &unk_10245A6F0;
    v8[4] = self;
    [objc_msgSend(v6 "failedRecordSaves")];
    [objc_msgSend(v6 "failedRecordDeletes")];
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018A5370();
    }

    v7 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[CloudKit] Called back for invalid CKSyncEngineSentRecordZoneChangesEvent (%@)", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A6EEC();
    }
  }
}

- (void)handleWillFetchChanges:(id)a3
{
  if (qword_1025D4530 != -1)
  {
    sub_1018A5370();
  }

  v3 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "[CloudKit] Sync engine is about to fetch changes", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A7694();
  }
}

- (void)handleWillFetchRecordZoneChanges:(id)a3
{
  v4 = [a3 willFetchRecordZoneChangesEvent];
  if (v4)
  {
    v5 = v4;
    if (qword_1025D4530 != -1)
    {
      sub_1018A5370();
    }

    v6 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138543362;
      v9 = [v5 zoneID];
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "[CloudKit] Sync engine is about to fetch zone changes for zoneID %{public}@", &v8, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A7778();
    }
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018A5370();
    }

    v7 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[CloudKit] Called back for invalid CKSyncEngineWillFetchRecordZoneChangesEvent (%@)", &v8, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A7878();
    }
  }
}

- (void)handleDidFetchRecordZoneChanges:(id)a3
{
  v4 = [a3 didFetchRecordZoneChangesEvent];
  if (v4)
  {
    v5 = v4;
    if ([v4 error])
    {
      if (qword_1025D4530 != -1)
      {
        sub_1018A5370();
      }

      v6 = qword_1025D4538;
      if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
      {
        v16 = 138543618;
        v17 = [v5 zoneID];
        v18 = 2114;
        v19 = [v5 error];
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "[CloudKit] Error fetching record zone changes for %{public}@. Error: %{public}@", &v16, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018A7968(v5, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    else
    {
      if (qword_1025D4530 != -1)
      {
        sub_1018A5370();
      }

      v15 = qword_1025D4538;
      if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
      {
        v16 = 138543362;
        v17 = [v5 zoneID];
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "[CloudKit] Sync engine successfully fetched zone changes for zoneID %{public}@", &v16, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018A7A7C();
      }
    }
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018A5370();
    }

    v14 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = a3;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "[CloudKit] Called back for invalid CKSyncEngineDidFetchRecordZoneChangesEvent (%@)", &v16, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A7B7C();
    }
  }
}

- (void)handleDidFetchChanges:(id)a3
{
  if (qword_1025D4530 != -1)
  {
    sub_1018A5370();
  }

  v3 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "[CloudKit] Sync engine did fetch changes", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A7C6C();
  }
}

- (void)handleWillSendChanges:(id)a3
{
  v4 = [a3 willSendChangesEvent];
  if (v4)
  {
    v5 = v4;
    if (qword_1025D4530 != -1)
    {
      sub_1018A5370();
    }

    v6 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
    {
      v8 = 67109120;
      LODWORD(v9) = [objc_msgSend(v5 "context")];
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "[CloudKit] Sync engine will send changes. Reason: %d", &v8, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A7D50(v5);
    }
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018A5370();
    }

    v7 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[CloudKit] Called back for invalid CKSyncEngineWillSendChangesEvent (%@)", &v8, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A7E4C();
    }
  }
}

- (void)handleDidSendChanges:(id)a3
{
  v4 = [a3 didSendChangesEvent];
  if (v4)
  {
    v5 = v4;
    if (qword_1025D4530 != -1)
    {
      sub_1018A5370();
    }

    v6 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
    {
      v8 = 67109120;
      LODWORD(v9) = [objc_msgSend(v5 "context")];
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "[CloudKit] Sync engine did send changes. Reason: %d", &v8, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A7F3C(v5);
    }
  }

  else
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018A5370();
    }

    v7 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[CloudKit] Called back for invalid CKSyncEngineDidSendChangesEvent (%@)", &v8, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A8038();
    }
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end