@interface CLVO2MaxCloudKitManager
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (BOOL)shouldKeepLocalDataOnAccountChange;
- (BOOL)syncEngine:(id)a3 shouldFetchChangesForZoneID:(id)a4;
- (CLVO2MaxCloudKitManager)init;
- (VO2MaxCloudKitSyncEngineMetadata)getCKSyncEngineMetadata;
- (id).cxx_construct;
- (id)createCKRecordForInput:(id)a3;
- (id)createCKRecordForOutput:(id)a3;
- (id)createCKRecordForPrior:(id)a3;
- (id)getSystemFieldsFromCKRecord:(id)a3;
- (id)getUserRecordIDName;
- (id)syncEngine:(id)a3 recordToSaveForRecordID:(id)a4;
- (void)addRecordIDsForSessionId:(id)a3 shouldUploadToOutputZone:(BOOL)a4 shouldUploadToInputZone:(BOOL)a5;
- (void)addRecordIDsForStartTime:(id)a3;
- (void)beginService;
- (void)bulkUploadRecordIDsShouldReupload:(BOOL)a3 shouldUploadToOutputZone:(BOOL)a4 shouldUploadToInputZone:(BOOL)a5 shouldUploadToPriorZone:(BOOL)a6 shouldThrottle:(BOOL)a7;
- (void)checkForDeletionOfVO2MaxData:(int)a3;
- (void)cloudKitAccountDidChange:(id)a3;
- (void)createVO2MaxInputZone;
- (void)createVO2MaxOutputZone;
- (void)createVO2MaxPriorZone;
- (void)deleteCloudKitRecords;
- (void)deleteLocalVO2MaxData;
- (void)deleteRecordIdForPrior:(id)a3;
- (void)deleteZone:(id)a3;
- (void)endService;
- (void)handleDeletedPriorRecordID:(id)a3;
- (void)handleFetchedInputRecord:(id)a3;
- (void)handleFetchedOutputRecord:(id)a3;
- (void)handleFetchedPriorRecord:(id)a3;
- (void)handleServerRecordChanged:(id)a3;
- (void)handleSyncUpload:(id)a3;
- (void)handleUnknownItem:(id)a3;
- (void)handleWatchAppFitnessTrackingUpdate:(int)a3;
- (void)handleZoneDeleted:(id)a3;
- (void)handleZoneNotFound:(id)a3;
- (void)handleZonePurge:(id)a3;
- (void)initializeSyncEngine;
- (void)onDataProtectionNotification:(const int *)a3 data:(const NotificationData *)a4;
- (void)onFitnessTrackingNotification:(const int *)a3 data:(const NotificationData *)a4;
- (void)onSyncActivity:(id)a3;
- (void)receiveVO2MaxCloudKitDailyStatsFromWatch:(id)a3;
- (void)resetDailyStats;
- (void)resetSyncActivity:(id)a3 withDelay:(int64_t)a4;
- (void)saveInputsAndOutputsForSessionId:(id)a3;
- (void)saveRetrocomputedOutputs;
- (void)saveUpdatedPrior:(id)a3;
- (void)setUpSyncActivity;
- (void)setUserRecordIDName:(id)a3;
- (void)stopSyncing:(BOOL)a3;
- (void)syncEngine:(id)a3 didDeleteRecordWithID:(id)a4;
- (void)syncEngine:(id)a3 didDeleteRecordZoneWithID:(id)a4;
- (void)syncEngine:(id)a3 didFetchRecord:(id)a4;
- (void)syncEngine:(id)a3 didSaveRecord:(id)a4;
- (void)syncEngine:(id)a3 didSaveRecordZone:(id)a4;
- (void)syncEngine:(id)a3 didUpdateMetadata:(id)a4;
- (void)syncEngine:(id)a3 failedToDeleteRecordWithID:(id)a4 error:(id)a5;
- (void)syncEngine:(id)a3 failedToDeleteRecordZoneWithID:(id)a4 error:(id)a5;
- (void)syncEngine:(id)a3 failedToSaveRecord:(id)a4 error:(id)a5;
- (void)syncEngine:(id)a3 failedToSaveRecordZone:(id)a4 error:(id)a5;
- (void)syncEngine:(id)a3 recordWithIDWasDeleted:(id)a4 recordType:(id)a5;
- (void)syncEngine:(id)a3 zoneWithIDChanged:(id)a4;
- (void)syncEngine:(id)a3 zoneWithIDWasDeleted:(id)a4;
- (void)syncEngine:(id)a3 zoneWithIDWasPurged:(id)a4;
- (void)updateDeviceUnlocked:(BOOL)a3;
- (void)updateInputSystemFields:(id)a3 inputRecord:(id)a4;
- (void)updateOutputSystemFields:(id)a3 outputRecord:(id)a4;
- (void)updatePriorSystemFields:(id)a3 priorRecord:(id)a4;
- (void)validateAccount;
@end

@implementation CLVO2MaxCloudKitManager

- (void)beginService
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Starting up CLVO2MaxCloudKitManager", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189C198();
  }

  self->_syncEngine = 0;
  self->fDeviceUnlocked = 0;
  sub_1004E1D6C();
}

- (void)setUpSyncActivity
{
  sub_10000FF38(v16, "VO2MaxCloudKitManager.setUpSyncActivity", 0);
  Current = CFAbsoluteTimeGetCurrent();
  v4 = sub_100011660();
  sub_100185AC0(v4, &v14);
  v13 = 0.0;
  sub_1000B9370(v14, "VO2MaxCloudKitManagerNextActivityTime", &v13);
  v5 = v13;
  if (v13 > Current + XPC_ACTIVITY_INTERVAL_1_DAY)
  {
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v6 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v24 = "VO2MaxCloudKitManagerNextActivityTime";
      v25 = 2050;
      v26 = v13;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "%{public}s is too far in the future (%{public}.2f). Resetting!", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189C758(buf);
      v17 = 136446466;
      v18 = "VO2MaxCloudKitManagerNextActivityTime";
      v19 = 2050;
      v20 = v13;
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "[CLVO2MaxCloudKitManager setUpSyncActivity]", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    sub_1004FA8B8(v14, "VO2MaxCloudKitManagerNextActivityTime", 0xFFFFFFFFLL);
    v13 = 0.0;
    v5 = 0.0;
  }

  v7 = v5 - Current;
  if (XPC_ACTIVITY_INTERVAL_30_MIN <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = XPC_ACTIVITY_INTERVAL_30_MIN;
  }

  if (qword_1025D4450 != -1)
  {
    sub_10015DAE4();
  }

  v9 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v24 = "com.apple.vo2max.CloudKitManager";
    v25 = 2050;
    v26 = v13;
    v27 = 2050;
    v28 = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: Registering XPC Activity with nextPreprocessingTime=(%{public}.2f) and delay=(%{public}lld)", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189C758(buf);
    v17 = 136446722;
    v18 = "com.apple.vo2max.CloudKitManager";
    v19 = 2050;
    v20 = v13;
    v21 = 2050;
    v22 = v8;
    v10 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxCloudKitManager setUpSyncActivity]", "%s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  xpc_activity_unregister("com.apple.vo2max.CloudKitManager");
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004D7918;
  handler[3] = &unk_102450188;
  handler[4] = [objc_msgSend(-[CLVO2MaxCloudKitManager universe](self "universe")];
  handler[5] = v8;
  xpc_activity_register("com.apple.vo2max.CloudKitManager", XPC_ACTIVITY_CHECK_IN, handler);
  if (v15)
  {
    sub_100008080(v15);
  }

  sub_10001A420(v16);
}

- (void)endService
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Shutting down CLVO2MaxCloudKitManager", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189C48C();
  }

  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:CKAccountChangedNotification, 0];
  ptr = self->fDataProtectionClient.__ptr_;
  if (ptr)
  {
    [*(ptr + 2) unregister:*(ptr + 1) forNotification:0];
  }

  v5 = self->fFitnessTrackingClient.__ptr_;
  if (v5)
  {
    [*(v5 + 2) unregister:*(v5 + 1) forNotification:6];
  }

  self->_syncEngine = 0;
  self->_container = 0;
}

- (void)createVO2MaxInputZone
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Creating VO2MaxInputs zone", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189E918();
  }

  syncEngine = self->_syncEngine;
  v6 = [[CKRecordZone alloc] initWithZoneID:self->fInputZoneID];
  [(CKSyncEngine *)syncEngine addRecordZonesToSave:[NSArray recordZoneIDsToDelete:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 0];
}

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v5 = a4 + 1;
  if (a4 + 1 < [a3 count])
  {
    [objc_msgSend(a3 objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", a3, v5}];
  }
}

+ (id)getSilo
{
  if (qword_102656730 != -1)
  {
    sub_10189C15C();
  }

  return qword_102656728;
}

- (CLVO2MaxCloudKitManager)init
{
  v3.receiver = self;
  v3.super_class = CLVO2MaxCloudKitManager;
  return [(CLVO2MaxCloudKitManager *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLVO2MaxCloudKitManagerProtocol outboundProtocol:&OBJC_PROTOCOL___CLVO2MaxCloudKitManagerClientProtocol];
}

+ (BOOL)isSupported
{
  if (qword_102656740 != -1)
  {
    sub_10189C170();
  }

  return byte_102656738;
}

- (void)saveInputsAndOutputsForSessionId:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  [(CLVO2MaxCloudKitManager *)self addRecordIDsForSessionId:a3 shouldUploadToOutputZone:1 shouldUploadToInputZone:1];

  objc_autoreleasePoolPop(v5);
}

- (void)saveRetrocomputedOutputs
{
  if (self->_syncEngine)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_101110AD8(self->fStagingOutputStore.__ptr_, &v8);
    *uu1 = 0;
    v12 = 0;
    v3 = v8;
    v4 = v9;
    if (v8 != v9)
    {
      do
      {
        v5 = objc_autoreleasePoolPush();
        if (uuid_compare(uu1, v3 + 20))
        {
          uuid_copy(uu1, v3 + 20);
          -[CLVO2MaxCloudKitManager addRecordIDsForSessionId:shouldUploadToOutputZone:shouldUploadToInputZone:](self, "addRecordIDsForSessionId:shouldUploadToOutputZone:shouldUploadToInputZone:", [objc_msgSend([NSUUID alloc] initWithUUIDBytes:{v3 + 20), "UUIDString"}], 1, 0);
        }

        objc_autoreleasePoolPop(v5);
        v3 += 192;
      }

      while (v3 != v4);
      v3 = v8;
    }

    if (v3)
    {
      v9 = v3;
      operator delete(v3);
    }
  }

  else
  {
    v6 = sub_10104516C();
    if ((sub_101046DD8(v6) & 1) == 0)
    {
      if (qword_1025D4450 != -1)
      {
        sub_10189C184();
      }

      v7 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v8) = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Attempt to save retrocomputed outputs to CloudKit failed", &v8, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10189C570();
      }
    }
  }
}

- (void)saveUpdatedPrior:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  [(CLVO2MaxCloudKitManager *)self addRecordIDsForStartTime:a3];

  objc_autoreleasePoolPop(v5);
}

- (void)onDataProtectionNotification:(const int *)a3 data:(const NotificationData *)a4
{
  [-[CLVO2MaxCloudKitManager universe](self "universe")];
  if (!*a3)
  {
    v7 = *a4 == 1;

    [(CLVO2MaxCloudKitManager *)self updateDeviceUnlocked:v7];
  }
}

- (void)onFitnessTrackingNotification:(const int *)a3 data:(const NotificationData *)a4
{
  [-[CLVO2MaxCloudKitManager universe](self "universe")];
  if (*a3 == 6)
  {
    v8 = *a4;

    [(CLVO2MaxCloudKitManager *)self handleWatchAppFitnessTrackingUpdate:v8];
  }

  else if (*a3)
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v9 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_FAULT))
    {
      v10 = *a3;
      v11[0] = 67109120;
      v11[1] = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "[CKManager] #Warning: Unhandled FitnessTracking notification type, %d", v11, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189C65C(a3);
    }
  }

  else
  {
    v7 = *a4 & 1;

    [(CLVO2MaxCloudKitManager *)self handleFitnessTrackingEnabled:v7];
  }
}

- (void)resetSyncActivity:(id)a3 withDelay:(int64_t)a4
{
  v6 = CFAbsoluteTimeGetCurrent() + a4;
  v11 = v6;
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v7 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "VO2MaxCloudKitManagerNextActivityTime";
    *&buf[12] = 2050;
    *&buf[14] = v6;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Resetting next activity time to: %{public}.1f", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189CAE4();
  }

  v8 = sub_100011660();
  sub_100185AC0(v8, buf);
  sub_100116D68(*buf, "VO2MaxCloudKitManagerNextActivityTime", &v11);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if (!xpc_activity_set_state(a3, 5))
  {
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v9 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_FAULT))
    {
      state = xpc_activity_get_state(a3);
      *buf = 134349056;
      *&buf[4] = state;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "Failed to mark activity as Done. Current state is %{public}ld", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189CC08(a3);
    }
  }

  [(CLVO2MaxCloudKitManager *)self setUpSyncActivity];
}

- (void)onSyncActivity:(id)a3
{
  if (a3)
  {
    state = xpc_activity_get_state(a3);
    if (state == 4 || (v6 = state, state == 2))
    {

      [(CLVO2MaxCloudKitManager *)self handleSyncUpload:a3];
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_10189C184();
      }

      v8 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        v9 = 134217984;
        v10 = v6;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Unexpected activity state: %ld", &v9, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10189CD18();
      }
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v7 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Invalid xpc activity.", &v9, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189CE08();
    }
  }
}

- (void)handleSyncUpload:(id)a3
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v5 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "com.apple.vo2max.CloudKitManager";
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "[CKManager] Running XPC activity: %{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189CEEC();
  }

  [(CLVO2MaxCloudKitManager *)self checkForDeletionOfVO2MaxData:self->fCloudKitDeletionState];
  [(CLVO2MaxCloudKitManager *)self getCKSyncEngineMetadata];
  if (v25 && [v25 length])
  {
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v6 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Sync engine metadata available, so attempting to upload unsynced local data", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189CFF4();
    }

    v7 = 0;
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v8 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "No sync engine metadata available, so attempting to upload all local data", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189D0E0();
    }

    v7 = 1;
  }

  [(CLVO2MaxCloudKitManager *)self bulkUploadRecordIDsShouldReupload:v7 shouldUploadToOutputZone:1 shouldUploadToInputZone:1 shouldUploadToPriorZone:1 shouldThrottle:1];
  v9 = 0.0;
  if (v24 != 1.79769313e308)
  {
    v9 = CFAbsoluteTimeGetCurrent() - v24;
  }

  v10 = arc4random_uniform(self->fMinTimeBetweenForcedFetches);
  sub_10001A3E8();
  v11 = sub_100328630();
  fMinTimeBetweenForcedFetches = self->fMinTimeBetweenForcedFetches;
  if (fMinTimeBetweenForcedFetches == 0.0)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v13 == 1)
  {
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v14 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "[CKManager] INTERNAL - Forcing CloudKit Fetch. Does not count towards daily stats (VO2MaxCloudKitMinTimeBetweenForcedFetches == 0)", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189D1CC();
    }

    [(CKSyncEngine *)self->_syncEngine setNeedsToFetchChanges];
  }

  else if (v9 > fMinTimeBetweenForcedFetches + v10)
  {
    v23 = 0.0;
    v15 = sub_100011660();
    sub_100185AC0(v15, buf);
    sub_1000B9370(*buf, "VO2MaxCloudKitLastForcedFetch", &v23);
    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }

    v16 = CFAbsoluteTimeGetCurrent() - v23;
    if (v16 > self->fMinTimeBetweenForcedFetches)
    {
      if (qword_1025D4450 != -1)
      {
        sub_10015DAE4();
      }

      v17 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349568;
        *&buf[4] = v9;
        *&buf[12] = 2050;
        *&buf[14] = v16;
        v32 = 1026;
        v33 = v10;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "Forcing fetch from CloudKit. secondsSinceMetadataUpdate: %{public}f, secondsSinceLastForcedFetch: %{public}f, buffer: %{public}d", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4450 != -1)
        {
          sub_10015DAE4();
        }

        *v26 = 134349568;
        *&v26[4] = v9;
        v27 = 2050;
        v28 = v16;
        v29 = 1026;
        v30 = v10;
        v22 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxCloudKitManager handleSyncUpload:]", "%s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      [(CKSyncEngine *)self->_syncEngine setNeedsToFetchChanges];
      v18 = sub_100011660();
      sub_100185AC0(v18, buf);
      v19 = *buf;
      *v26 = CFAbsoluteTimeGetCurrent();
      sub_100116D68(v19, "VO2MaxCloudKitLastForcedFetch", v26);
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }

      ++self->fDailyStats.forcedFetchRequestedCount;
    }
  }

  v20 = _os_feature_enabled_impl();
  v21 = &XPC_ACTIVITY_INTERVAL_4_HOURS;
  if (!v20)
  {
    v21 = &XPC_ACTIVITY_INTERVAL_1_DAY;
  }

  [(CLVO2MaxCloudKitManager *)self resetSyncActivity:a3 withDelay:*v21];
}

- (void)cloudKitAccountDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004D85F8;
  block[3] = &unk_102447418;
  block[4] = self;
  dispatch_async([objc_msgSend(-[CLVO2MaxCloudKitManager universe](self universe], block);
}

- (void)validateAccount
{
  container = self->_container;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1004D867C;
  v3[3] = &unk_102459B88;
  v3[4] = self;
  [(CKContainer *)container accountInfoWithCompletionHandler:v3];
}

- (void)deleteLocalVO2MaxData
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "[CKManager] Deleting all VO2 Max data local to this device", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189DA3C();
  }

  v4 = sub_10104516C();
  sub_10104544C(v4);
  sub_10102F69C(self->fInputStore.__ptr_);
  sub_101110D3C(self->fStagingOutputStore.__ptr_);
  sub_10105499C(self->fRetrocomputeDb.__ptr_ + 9);
  sub_10105499C(self->fPriorDb.__ptr_ + 9);
}

- (void)deleteCloudKitRecords
{
  if (self->_container && self->_syncEngine)
  {
    self->fCloudKitDeletionState = 2;
    v3 = [(CKContainer *)self->_container privateCloudDatabase];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1004D8FB0;
    v5[3] = &unk_102447440;
    v5[4] = self;
    [(CKDatabase *)v3 fetchAllRecordZonesWithCompletionHandler:v5];
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v4 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "[CKManager] Attempted to delete records without a CKContainer or CKSyncEngine", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189DB20();
    }

    self->fCloudKitDeletionState = 3;
  }
}

- (BOOL)shouldKeepLocalDataOnAccountChange
{
  v6 = 0;
  v2 = sub_100011660();
  sub_100185AC0(v2, &v4);
  sub_10001CB4C(v4, "VO2MaxCloudKitKeepLocalDataOnAccountChange", &v6);
  if (v5)
  {
    sub_100008080(v5);
  }

  sub_10001A3E8();
  return sub_100328630() & v6;
}

- (void)setUserRecordIDName:(id)a3
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v4 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138477827;
    v8 = a3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Setting userRecordIDName to %{private}@", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189DEF4();
  }

  v5 = sub_1000206B4();
  sub_1002DC480(v5, @"kCloudKitUserRecordId", [a3 UTF8String]);
  v6 = *sub_1000206B4();
  (*(v6 + 944))();
}

- (id)getUserRecordIDName
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  v2 = sub_1000206B4();
  sub_100005050(v2, @"kCloudKitUserRecordId", &__p);
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

- (void)updateDeviceUnlocked:(BOOL)a3
{
  if (!self->_syncEngine && a3 && !self->fDeviceUnlocked)
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v5 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Device has been unlocked. Will now initialize the sync engine.", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189DFE4();
    }

    [(CLVO2MaxCloudKitManager *)self initializeSyncEngine];
  }

  self->fDeviceUnlocked = a3;
}

- (void)handleWatchAppFitnessTrackingUpdate:(int)a3
{
  if (a3)
  {
    if (a3 == 2)
    {
      self->fCloudKitDeletionState = 1;

      [(CLVO2MaxCloudKitManager *)self checkForDeletionOfVO2MaxData:1];
    }

    else if (a3 == 1)
    {
      self->fCloudKitDeletionState = 0;
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v3 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "[CKManager] Received an unknown Watch.app Fitness Tracking state", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189E0C8();
    }
  }
}

- (void)checkForDeletionOfVO2MaxData:(int)a3
{
  v3 = *&a3;
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v5 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67240192;
    v8[1] = v3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "[CKManager] Checking if CloudKit deletion is necessary. State=%{public}d", v8, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189E1AC(v3);
  }

  if (v3 == 3)
  {
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v7 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "[CKManager] Re-attempting VO2 Max data deletion after previous failure", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189E388();
    }
  }

  else
  {
    if (v3 != 1)
    {
      return;
    }

    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v6 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "[CKManager] VO2Max disabled via Watch FitnessTracking switch. Deleting VO2 Max data", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189E2A4();
    }
  }

  [(CLVO2MaxCloudKitManager *)self deleteLocalVO2MaxData];
  [(CLVO2MaxCloudKitManager *)self deleteCloudKitRecords];
}

- (VO2MaxCloudKitSyncEngineMetadata)getCKSyncEngineMetadata
{
  retstr->var0 = 0;
  *&retstr->var1 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  retstr->var3 = 0;
  p_var3 = &retstr->var3;
  v5 = sub_10104516C();
  sub_101046198(v5, retstr);
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v6 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*p_var3 length];
    v9 = 134349056;
    v10 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Loaded sync engine metadata, length = %{public}lu", &v9, 0xCu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10189E46C();
  }

  return result;
}

- (void)initializeSyncEngine
{
  if (self)
  {
    [(CLVO2MaxCloudKitManager *)self getCKSyncEngineMetadata];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRES_CLASS_B, 1);
  v4 = [[CKSyncEngineConfiguration alloc] initWithDatabase:-[CKContainer privateCloudDatabase](self->_container dataSource:"privateCloudDatabase") metadata:{self, *(&v9 + 1)}];
  [v4 setApsMachServiceName:@"com.apple.aps.locationd.vo2max.cloudkit"];
  [v4 setPriority:2];
  [v4 setXpcActivityCriteriaOverrides:v3];
  self->_syncEngine = [[CKSyncEngine alloc] initWithConfiguration:v4];
  self->fDailyStats.syncEngineEnabled = 1;
  syncEngine = self->_syncEngine;
  fOutputZoneID = self->fOutputZoneID;
  [(CKSyncEngine *)syncEngine fetchChangesForZoneIDs:[NSArray completionHandler:"arrayWithObjects:count:" arrayWithObjects:1 count:?], &stru_102459BA8];
  if (self->fFetchChangesForInputZone)
  {
    v6 = self->_syncEngine;
    fInputZoneID = self->fInputZoneID;
    [(CKSyncEngine *)v6 fetchChangesForZoneIDs:[NSArray completionHandler:"arrayWithObjects:count:" arrayWithObjects:1 count:?], &stru_102459BC8];
  }

  v7 = self->_syncEngine;
  fPriorZoneID = self->fPriorZoneID;
  [(CKSyncEngine *)v7 fetchChangesForZoneIDs:[NSArray completionHandler:"arrayWithObjects:count:" arrayWithObjects:1 count:v8, v9], &stru_102459BE8];
  xpc_release(v3);
  [(CLVO2MaxCloudKitManager *)self setUpSyncActivity];
}

- (void)createVO2MaxOutputZone
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Creating VO2MaxOutputs zone", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189E834();
  }

  syncEngine = self->_syncEngine;
  v6 = [[CKRecordZone alloc] initWithZoneID:self->fOutputZoneID];
  [(CKSyncEngine *)syncEngine addRecordZonesToSave:[NSArray recordZoneIDsToDelete:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 0];
}

- (void)createVO2MaxPriorZone
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Creating VO2MaxPrior zone", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189E9FC();
  }

  syncEngine = self->_syncEngine;
  v6 = [[CKRecordZone alloc] initWithZoneID:self->fPriorZoneID];
  [(CKSyncEngine *)syncEngine addRecordZonesToSave:[NSArray recordZoneIDsToDelete:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 0];
}

- (void)deleteZone:(id)a3
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v5 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = a3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Deleting zone with zoneID = %{public}@", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189EAE0();
  }

  syncEngine = self->_syncEngine;
  v7 = a3;
  [(CKSyncEngine *)syncEngine addRecordZonesToSave:0 recordZoneIDsToDelete:[NSArray arrayWithObjects:&v7 count:1]];
}

- (void)addRecordIDsForSessionId:(id)a3 shouldUploadToOutputZone:(BOOL)a4 shouldUploadToInputZone:(BOOL)a5
{
  if (self->_syncEngine)
  {
    v6 = a5;
    if (a4)
    {
      if (qword_1025D4450 != -1)
      {
        sub_10189C184();
      }

      v8 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = a3;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Adding sessionId %{public}@ to RecordIDs for sync engine to save to VO2MaxOutputZone", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10189EBD0();
      }

      v9 = [[CKRecordID alloc] initWithRecordName:a3 zoneID:self->fOutputZoneID];
      syncEngine = self->_syncEngine;
      v16 = v9;
      [(CKSyncEngine *)syncEngine addRecordIDsToSave:[NSArray recordIDsToDelete:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 0];
      ++self->fDailyStats.outputSaveQueuedCount;
    }

    if (v6)
    {
      if (qword_1025D4450 != -1)
      {
        sub_10015DAE4();
      }

      v11 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = a3;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "Adding sessionId %{public}@ to RecordIDs for sync engine to save to VO2MaxInputZone", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10189ECC0();
      }

      v12 = [[CKRecordID alloc] initWithRecordName:a3 zoneID:self->fInputZoneID];
      v13 = self->_syncEngine;
      v15 = v12;
      [(CKSyncEngine *)v13 addRecordIDsToSave:[NSArray recordIDsToDelete:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 0];
      ++self->fDailyStats.inputSaveQueuedCount;
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v14 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = a3;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "Sync engine uninitialized, so not adding sessionId %{public}@ to RecordIDs for sync engine to save", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189EDB0();
    }
  }
}

- (void)addRecordIDsForStartTime:(id)a3
{
  if (self->_syncEngine)
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v5 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Adding priorId %{public}@ to RecordIDs for sync engine to save to VO2MaxPriorZone", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189EEA0();
    }

    v6 = [[CKRecordID alloc] initWithRecordName:a3 zoneID:self->fPriorZoneID];
    syncEngine = self->_syncEngine;
    v9 = v6;
    [(CKSyncEngine *)syncEngine addRecordIDsToSave:[NSArray recordIDsToDelete:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 0];
    ++self->fDailyStats.priorSaveQueuedCount;
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v8 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = a3;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Sync engine uninitialized, so not adding priorId %{public}@ to RecordIDs for sync engine to save", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189EF90();
    }
  }
}

- (void)deleteRecordIdForPrior:(id)a3
{
  if (self->_syncEngine)
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v5 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Deleting priorId %{public}@ to RecordIDs for sync engine to save to VO2MaxPriorZone", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189F080();
    }

    v6 = [[CKRecordID alloc] initWithRecordName:a3 zoneID:self->fPriorZoneID];
    syncEngine = self->_syncEngine;
    v9 = v6;
    [(CKSyncEngine *)syncEngine addRecordIDsToSave:0 recordIDsToDelete:[NSArray arrayWithObjects:&v9 count:1]];
    ++self->fDailyStats.priorDeleteQueuedCount;
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v8 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = a3;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Sync engine uninitialized, so not deleting priorId %{public}@ to RecordIDs for sync engine to save", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189F170();
    }
  }
}

- (void)bulkUploadRecordIDsShouldReupload:(BOOL)a3 shouldUploadToOutputZone:(BOOL)a4 shouldUploadToInputZone:(BOOL)a5 shouldUploadToPriorZone:(BOOL)a6 shouldThrottle:(BOOL)a7
{
  v7 = a7;
  v37 = a6;
  v39 = a5;
  v40 = a4;
  __p = 0;
  v42 = 0;
  v43 = 0;
  v10 = sub_10104516C();
  sub_101045F44(v10, &__p);
  v11 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v42 - __p) >> 4));
  *buf = sub_1004DAEBC;
  if (v42 == __p)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  sub_100155F78(__p, v42, buf, v12, 1);
  *buf = sub_1004DAEE0;
  v13 = sub_1004E1C10(__p, v42, buf);
  v14 = v42;
  if (v13 != v42)
  {
    v14 = v13;
    v42 = v13;
  }

  v38 = v7 && 0xCCCCCCCCCCCCCCCDLL * ((v14 - __p) >> 4) > self->fMaxSessionsForUploadThrottling;
  if (__p != v14)
  {
    v15 = 0;
    v16 = (__p + 80);
    do
    {
      v47 = *(v16 - 5);
      v17 = *(v16 - 4);
      v18 = *(v16 - 3);
      v19 = *(v16 - 1);
      v48[2] = *(v16 - 2);
      v49 = v19;
      v48[0] = v17;
      v48[1] = v18;
      v20 = objc_autoreleasePoolPush();
      v21 = [[NSUUID alloc] initWithUUIDBytes:v48];
      if (v40)
      {
        v22 = 1;
        if (!a3 && v49)
        {
          v22 = [v49 length] == 0;
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = v39 && (a3 || !*(&v49 + 1) || ![*(&v49 + 1) length]) && sub_10102F6A8(self->fInputStore.__ptr_, v48);
      if ((v22 || v23) && (-[CLVO2MaxCloudKitManager addRecordIDsForSessionId:shouldUploadToOutputZone:shouldUploadToInputZone:](self, "addRecordIDsForSessionId:shouldUploadToOutputZone:shouldUploadToInputZone:", [v21 UUIDString], v22, v23), v38) && (++v15, v15 >= self->fMaxSessionsForUploadThrottling))
      {
        if (qword_1025D4450 != -1)
        {
          sub_10015DAE4();
        }

        v26 = qword_1025D4458;
        if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
        {
          fMaxSessionsForUploadThrottling = self->fMaxSessionsForUploadThrottling;
          *buf = 67240192;
          *&buf[4] = fMaxSessionsForUploadThrottling;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "Hit the max of %{public}d sessions per CloudKit upload. Will check for more data later.", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10189C758(buf);
          v28 = self->fMaxSessionsForUploadThrottling;
          v44 = 67240192;
          v45 = v28;
          LODWORD(v36) = 8;
          v29 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxCloudKitManager bulkUploadRecordIDsShouldReupload:shouldUploadToOutputZone:shouldUploadToInputZone:shouldUploadToPriorZone:shouldThrottle:]", "%s\n", v29);
          if (v29 != buf)
          {
            free(v29);
          }
        }

        v24 = 1;
      }

      else
      {
        v24 = 0;
      }

      objc_autoreleasePoolPop(v20);
      if (v16 == v14)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      v16 += 5;
    }

    while ((v25 & 1) == 0);
  }

  v47 = 0uLL;
  *&v48[0] = 0;
  (*(*self->fPriorDb.__ptr_ + 40))(self->fPriorDb.__ptr_, &v47);
  v31 = *(&v47 + 1);
  for (i = v47; i != v31; i += 48)
  {
    if (v37)
    {
      v32 = *(i + 8);
      if (a3 || (v33 = *(i + 40)) == 0 || ![v33 length])
      {
        [(CLVO2MaxCloudKitManager *)self addRecordIDsForStartTime:[NSString stringWithFormat:@"%f", v32, v36]];
      }
    }
  }

  if (qword_1025D4450 != -1)
  {
    sub_10015DAE4();
  }

  v34 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEFAULT, "Done adding sessions and prior to sync", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189C758(buf);
    LOWORD(v44) = 0;
    v35 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxCloudKitManager bulkUploadRecordIDsShouldReupload:shouldUploadToOutputZone:shouldUploadToInputZone:shouldUploadToPriorZone:shouldThrottle:]", "%s\n", v35);
    if (v35 != buf)
    {
      free(v35);
    }
  }

  if (v47)
  {
    *(&v47 + 1) = v47;
    operator delete(v47);
  }

  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }
}

- (id)getSystemFieldsFromCKRecord:(id)a3
{
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [a3 encodeSystemFieldsWithCoder:v4];
  [v4 finishEncoding];

  return [v4 encodedData];
}

- (id)createCKRecordForOutput:(id)a3
{
  v24[0] = 0;
  v24[1] = 0;
  [objc_msgSend([NSUUID alloc] initWithUUIDString:{objc_msgSend(a3, "recordName")), "getUUIDBytes:", v24}];
  v22 = 0;
  v23 = 0;
  v5 = sub_10104516C();
  if (!sub_101045E70(v5, v24, v21))
  {
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v10 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = *&a3;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "Failed to retrieve VO2MaxSessionAttributes for CKRecordID: %{public}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189F260();
    }

    return 0;
  }

  if ([v22 length])
  {
    v18 = 0.0;
    v6 = [NSKeyedUnarchiver alloc];
    v7 = [v6 initForReadingFromData:objc_msgSend(v22 error:{"copy"), &v18}];
    [v7 setRequiresSecureCoding:1];
    v8 = [[CKRecord alloc] initWithCoder:v7];
    [v7 finishDecoding];
    if (!v8)
    {
      if (qword_1025D4450 != -1)
      {
        sub_10015DAE4();
      }

      v9 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v20 = v18;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "Failed to decode output record from system fields data: %{public}@", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10189F350();
      }

      return 0;
    }
  }

  else
  {
    v8 = [[CKRecord alloc] initWithRecordType:@"VO2MaxOutput" recordID:a3];
  }

  v11 = objc_alloc_init(CLCKVO2MaxSessionOutput);
  Current = CFAbsoluteTimeGetCurrent();
  v13 = sub_10104516C();
  if (sub_10104628C(v13, v24, v11))
  {
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v14 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
    {
      v15 = CFAbsoluteTimeGetCurrent();
      *buf = 134349056;
      v20 = v15 - Current;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Completed fetch of output proto; duration: %{public}f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189F530();
    }

    [objc_msgSend(v8 "encryptedValuesByKey")];
    ++self->fDailyStats.outputSaveAttemptedCount;
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v16 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "Unable to get output due to device being locked, clearing the sync engine and will try again later.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189F44C();
    }

    v8 = 0;
    self->_syncEngine = 0;
    self->fDailyStats.syncEngineEnabled = 0;
    self->fDeviceUnlocked = 0;
  }

  return v8;
}

- (void)updateOutputSystemFields:(id)a3 outputRecord:(id)a4
{
  v31[0] = 0;
  v31[1] = 0;
  [objc_msgSend([NSUUID alloc] initWithUUIDString:{objc_msgSend(objc_msgSend(a4, "recordID"), "recordName")), "getUUIDBytes:", v31}];
  __p = 0;
  v21 = 0;
  v22 = 0;
  v6 = sub_10104516C();
  if (sub_101045F10(v6, v31, &__p))
  {
    v7 = __p;
    v8 = v21;
    if (__p != v21)
    {
      do
      {
        v26 = *v7;
        v9 = v7[1];
        v10 = v7[2];
        v11 = v7[4];
        v27[2] = v7[3];
        v28 = v11;
        v27[0] = v9;
        v27[1] = v10;
        memset(out, 0, 37);
        uuid_unparse(v27, out);
        if (qword_1025D4450 != -1)
        {
          sub_10015DAE4();
        }

        v12 = qword_1025D4458;
        if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v30 = out;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Saving output metadata %s", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10189C758(buf);
          v23 = 136315138;
          v24 = out;
          v14 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxCloudKitManager updateOutputSystemFields:outputRecord:]", "%s\n", v14);
          if (v14 != buf)
          {
            free(v14);
          }
        }

        *&v28 = a3;
        v13 = sub_10104516C();
        sub_101045DCC(v13, &v26);
        v7 += 5;
      }

      while (v7 != v8);
    }

    ++self->fDailyStats.outputSaveSuccessCount;
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v15 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      v16 = [a4 recordID];
      *buf = 138543362;
      v30 = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "Failed to retrieve VO2MaxSessionAttributes for CKRecord with ID: %{public}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189C758(buf);
      v17 = [a4 recordID];
      LODWORD(v26) = 138543362;
      *(&v26 + 4) = v17;
      v18 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "[CLVO2MaxCloudKitManager updateOutputSystemFields:outputRecord:]", "%s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }
}

- (void)handleFetchedOutputRecord:(id)a3
{
  v5 = -[CLCKVO2MaxSessionOutput initWithData:]([CLCKVO2MaxSessionOutput alloc], "initWithData:", [objc_msgSend(a3 "encryptedValuesByKey")]);
  Current = CFAbsoluteTimeGetCurrent();
  v7 = sub_10104516C();
  if (sub_101046700(v7, v5, [(CLVO2MaxCloudKitManager *)self getSystemFieldsFromCKRecord:a3]))
  {
    ++self->fDailyStats.outputFetchSuccessCount;
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v8 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Unable to persist fetched output due to device being locked, clearing the sync engine and will try again later.", &v11, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189F628();
    }

    self->_syncEngine = 0;
    self->fDailyStats.syncEngineEnabled = 0;
    self->fDeviceUnlocked = 0;
    ++self->fDailyStats.outputFetchFailureCount;
  }

  if (qword_1025D4450 != -1)
  {
    sub_10015DAE4();
  }

  v9 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
  {
    v10 = CFAbsoluteTimeGetCurrent();
    v11 = 134349056;
    v12 = v10 - Current;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Completed save of output proto; duration: %{public}f", &v11, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189F70C();
  }
}

- (id)createCKRecordForInput:(id)a3
{
  v23[0] = 0;
  v23[1] = 0;
  [objc_msgSend([NSUUID alloc] initWithUUIDString:{objc_msgSend(a3, "recordName")), "getUUIDBytes:", v23}];
  v21 = 0;
  v22 = 0;
  v5 = sub_10104516C();
  if (!sub_101045E70(v5, v23, v20))
  {
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v10 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = *&a3;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "Failed to retrieve VO2MaxSessionAttributes for CKRecordID: %{public}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189F804();
    }

    return 0;
  }

  if ([v22 length])
  {
    v17 = 0.0;
    v6 = [NSKeyedUnarchiver alloc];
    v7 = [v6 initForReadingFromData:objc_msgSend(v22 error:{"copy"), &v17}];
    [v7 setRequiresSecureCoding:1];
    v8 = [[CKRecord alloc] initWithCoder:v7];
    [v7 finishDecoding];
    if (!v8)
    {
      if (qword_1025D4450 != -1)
      {
        sub_10015DAE4();
      }

      v9 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v17;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "Failed to decode input record from system fields data: %{public}@", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10189F8F4();
      }

      return 0;
    }
  }

  else
  {
    v8 = [[CKRecord alloc] initWithRecordType:@"VO2MaxInput" recordID:a3];
  }

  v11 = objc_alloc_init(CLCKVO2MaxSessionInput);
  Current = CFAbsoluteTimeGetCurrent();
  if (sub_10102F6CC(self->fInputStore.__ptr_, v23, v11))
  {
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v13 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
    {
      v14 = CFAbsoluteTimeGetCurrent();
      *buf = 134349056;
      v19 = v14 - Current;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Completed fetch of input proto; duration: %{public}f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189FAD4();
    }

    if ([(NSMutableArray *)[(CLCKVO2MaxSessionInput *)v11 inputs] count])
    {
      [objc_msgSend(v8 "encryptedValuesByKey")];
      ++self->fDailyStats.inputSaveAttemptedCount;
      return v8;
    }

    return 0;
  }

  if (qword_1025D4450 != -1)
  {
    sub_10015DAE4();
  }

  v15 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "Unable to get input due to device being locked, clearing the sync engine and will try again later.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189F9F0();
  }

  v8 = 0;
  self->_syncEngine = 0;
  self->fDailyStats.syncEngineEnabled = 0;
  self->fDeviceUnlocked = 0;
  return v8;
}

- (id)createCKRecordForPrior:(id)a3
{
  [objc_msgSend(a3 "recordName")];
  v14[2] = 0;
  v15 = 0;
  if ((sub_1008FCEEC(self->fPriorDb.__ptr_) & 1) == 0)
  {
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v8 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = *&a3;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Failed to retrieve prior for CKRecordID: %{public}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189FBCC();
    }

    return 0;
  }

  if ([v15 length])
  {
    v14[0] = 0;
    v5 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v15 error:v14];
    [v5 setRequiresSecureCoding:1];
    v6 = [[CKRecord alloc] initWithCoder:v5];
    [v5 finishDecoding];

    if (!v6)
    {
      if (qword_1025D4450 != -1)
      {
        sub_10015DAE4();
      }

      v7 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v17 = *v14;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Failed to decode prior record from system fields data: %{public}@", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10189FCBC();
      }

      return 0;
    }
  }

  else
  {
    v6 = [[CKRecord alloc] initWithRecordType:@"VO2MaxPrior" recordID:a3];
  }

  v14[0] = 0;
  Current = CFAbsoluteTimeGetCurrent();
  if (sub_1008FD3B0(self->fPriorDb.__ptr_, v14))
  {
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v10 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
    {
      v11 = CFAbsoluteTimeGetCurrent();
      *buf = 134349056;
      v17 = v11 - Current;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Completed fetch of priorData proto; duration: %{public}f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189FE9C();
    }

    [objc_msgSend(v6 "encryptedValuesByKey")];
    ++self->fDailyStats.priorSaveAttemptedCount;
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v12 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Unable to get input due to device being locked, clearing the sync engine and will try again later.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189FDB8();
    }

    v6 = 0;
    self->_syncEngine = 0;
    self->fDailyStats.syncEngineEnabled = 0;
    self->fDeviceUnlocked = 0;
  }

  return v6;
}

- (void)updateInputSystemFields:(id)a3 inputRecord:(id)a4
{
  v31[0] = 0;
  v31[1] = 0;
  [objc_msgSend([NSUUID alloc] initWithUUIDString:{objc_msgSend(objc_msgSend(a4, "recordID"), "recordName")), "getUUIDBytes:", v31}];
  __p = 0;
  v21 = 0;
  v22 = 0;
  v6 = sub_10104516C();
  if (sub_101045F10(v6, v31, &__p))
  {
    v7 = __p;
    v8 = v21;
    if (__p != v21)
    {
      do
      {
        v26 = *v7;
        v9 = v7[1];
        v10 = v7[2];
        v11 = v7[4];
        v27[2] = v7[3];
        v28 = v11;
        v27[0] = v9;
        v27[1] = v10;
        memset(out, 0, 37);
        uuid_unparse(v27, out);
        if (qword_1025D4450 != -1)
        {
          sub_10015DAE4();
        }

        v12 = qword_1025D4458;
        if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v30 = out;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Saving input metadata %s", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10189C758(buf);
          v23 = 136315138;
          v24 = out;
          v14 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxCloudKitManager updateInputSystemFields:inputRecord:]", "%s\n", v14);
          if (v14 != buf)
          {
            free(v14);
          }
        }

        *(&v28 + 1) = a3;
        v13 = sub_10104516C();
        sub_101045DCC(v13, &v26);
        v7 += 5;
      }

      while (v7 != v8);
    }

    ++self->fDailyStats.inputSaveSuccessCount;
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v15 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      v16 = [a4 recordID];
      *buf = 138543362;
      v30 = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "Failed to retrieve VO2MaxSessionAttributes for CKRecord with ID: %{public}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189C758(buf);
      v17 = [a4 recordID];
      LODWORD(v26) = 138543362;
      *(&v26 + 4) = v17;
      v18 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "[CLVO2MaxCloudKitManager updateInputSystemFields:inputRecord:]", "%s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }
}

- (void)updatePriorSystemFields:(id)a3 priorRecord:(id)a4
{
  [objc_msgSend(objc_msgSend(a4 "recordID")];
  v8 = v7;
  v12[1] = 0;
  v13 = 0;
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v9 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Updating prior system fields for startTime : %f", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189FF94(v8);
  }

  if (sub_1008FCEEC(self->fPriorDb.__ptr_))
  {
    v13 = a3;
    sub_1008FD7E0(self->fPriorDb.__ptr_, v12);
    ++self->fDailyStats.priorSaveSuccessCount;
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v10 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      v11 = [a4 recordID];
      *buf = 138543362;
      v15 = *&v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "Failed to retrieve prior for CKRecordID: %{public}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A009C();
    }
  }
}

- (void)handleFetchedInputRecord:(id)a3
{
  if (self->fFetchChangesForInputZone)
  {
    v5 = -[CLCKVO2MaxSessionInput initWithData:]([CLCKVO2MaxSessionInput alloc], "initWithData:", [objc_msgSend(a3 "encryptedValuesByKey")]);
    Current = CFAbsoluteTimeGetCurrent();
    ptr = self->fInputStore.__ptr_;
    [(CLVO2MaxCloudKitManager *)self getSystemFieldsFromCKRecord:a3];
    if (sub_10102F8A8(ptr, v5))
    {
      ++self->fDailyStats.inputFetchSuccessCount;
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_10189C184();
      }

      v8 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Unable to persist fetched input due to device being locked, clearing the sync engine and will try again later.", &v11, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018A0194();
      }

      self->_syncEngine = 0;
      self->fDailyStats.syncEngineEnabled = 0;
      self->fDeviceUnlocked = 0;
      ++self->fDailyStats.inputFetchFailureCount;
    }

    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v9 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
    {
      v10 = CFAbsoluteTimeGetCurrent();
      v11 = 134349056;
      v12 = v10 - Current;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Completed save of input proto; duration: %{public}f", &v11, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A0278();
    }
  }
}

- (void)handleFetchedPriorRecord:(id)a3
{
  v5 = -[CLCKVO2MaxPrior initWithData:]([CLCKVO2MaxPrior alloc], "initWithData:", [objc_msgSend(a3 "encryptedValuesByKey")]);
  if (sub_1008FD468(self->fPriorDb.__ptr_, v5, [(CLVO2MaxCloudKitManager *)self getSystemFieldsFromCKRecord:a3]))
  {
    ++self->fDailyStats.priorFetchSuccessCount;
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v6 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Unable to persist fetched input due to device being locked, clearing the sync engine and will try again later.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A0370();
    }

    self->_syncEngine = 0;
    self->fDailyStats.syncEngineEnabled = 0;
    self->fDeviceUnlocked = 0;
    ++self->fDailyStats.priorFetchFailureCount;
  }

  if (qword_1025D4450 != -1)
  {
    sub_10015DAE4();
  }

  v7 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Completed save of prior proto", v8, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A0454();
  }
}

- (void)handleDeletedPriorRecordID:(id)a3
{
  [objc_msgSend(a3 "recordName")];
  ptr = self->fPriorDb.__ptr_;

  sub_1008FDE2C(ptr);
}

- (void)handleServerRecordChanged:(id)a3
{
  if (a3)
  {
    if ([objc_msgSend(a3 "recordType")])
    {
      [(CLVO2MaxCloudKitManager *)self updateOutputSystemFields:[(CLVO2MaxCloudKitManager *)self getSystemFieldsFromCKRecord:a3] outputRecord:a3];
    }

    else if ([objc_msgSend(a3 "recordType")])
    {
      [(CLVO2MaxCloudKitManager *)self updateInputSystemFields:[(CLVO2MaxCloudKitManager *)self getSystemFieldsFromCKRecord:a3] inputRecord:a3];
    }

    else if ([objc_msgSend(a3 "recordType")])
    {
      [(CLVO2MaxCloudKitManager *)self updatePriorSystemFields:[(CLVO2MaxCloudKitManager *)self getSystemFieldsFromCKRecord:a3] priorRecord:a3];
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_10189C184();
      }

      v6 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v10 = [a3 recordType];
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "CloudKit provided server record of unexpected type: %{public}@", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018A0538();
      }
    }

    syncEngine = self->_syncEngine;
    v8 = [a3 recordID];
    [(CKSyncEngine *)syncEngine addRecordIDsToSave:[NSArray recordIDsToDelete:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 0];
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v5 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "Expected server record is missing from error after failed record save", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A0630();
    }
  }
}

- (void)handleUnknownItem:(id)a3
{
  if ([objc_msgSend(a3 "recordType")])
  {
    [(CLVO2MaxCloudKitManager *)self updateOutputSystemFields:0 outputRecord:a3];
  }

  else if ([objc_msgSend(a3 "recordType")])
  {
    [(CLVO2MaxCloudKitManager *)self updateInputSystemFields:0 inputRecord:a3];
  }

  else if ([objc_msgSend(a3 "recordType")])
  {
    [(CLVO2MaxCloudKitManager *)self updatePriorSystemFields:0 priorRecord:a3];
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v5 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = [a3 recordType];
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "CloudKit provided record of unexpected type: %{public}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A0714();
    }
  }

  syncEngine = self->_syncEngine;
  v7 = [a3 recordID];
  [(CKSyncEngine *)syncEngine addRecordIDsToSave:[NSArray recordIDsToDelete:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 0];
}

- (void)handleZoneNotFound:(id)a3
{
  if ([objc_msgSend(objc_msgSend(objc_msgSend(a3 "recordID")])
  {
    [(CLVO2MaxCloudKitManager *)self createVO2MaxOutputZone];
    syncEngine = self->_syncEngine;
    v12 = [a3 recordID];
    v6 = &v12;
LABEL_7:
    [(CKSyncEngine *)syncEngine addRecordIDsToSave:[NSArray recordIDsToDelete:"arrayWithObjects:count:" arrayWithObjects:v6 count:1], 0];
    return;
  }

  if ([objc_msgSend(objc_msgSend(objc_msgSend(a3 "recordID")])
  {
    [(CLVO2MaxCloudKitManager *)self createVO2MaxInputZone];
    syncEngine = self->_syncEngine;
    v11 = [a3 recordID];
    v6 = &v11;
    goto LABEL_7;
  }

  if ([objc_msgSend(objc_msgSend(objc_msgSend(a3 "recordID")])
  {
    [(CLVO2MaxCloudKitManager *)self createVO2MaxPriorZone];
    syncEngine = self->_syncEngine;
    v10 = [a3 recordID];
    v6 = &v10;
    goto LABEL_7;
  }

  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v7 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    v9 = [objc_msgSend(objc_msgSend(a3 "recordID")];
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Will not attempt to save unexpected zone: %{public}@", &v8, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018A080C();
  }
}

- (void)handleZoneDeleted:(id)a3
{
  if ([objc_msgSend(a3 "zoneName")])
  {
    [(CLVO2MaxCloudKitManager *)self createVO2MaxOutputZone];
    v5 = self;
    v6 = 1;
    v7 = 0;
LABEL_5:
    v8 = 0;
LABEL_6:

    [(CLVO2MaxCloudKitManager *)v5 bulkUploadRecordIDsShouldReupload:1 shouldUploadToOutputZone:v6 shouldUploadToInputZone:v7 shouldUploadToPriorZone:v8 shouldThrottle:0];
    return;
  }

  if ([objc_msgSend(a3 "zoneName")])
  {
    [(CLVO2MaxCloudKitManager *)self createVO2MaxInputZone];
    v5 = self;
    v6 = 0;
    v7 = 1;
    goto LABEL_5;
  }

  if ([objc_msgSend(a3 "zoneName")])
  {
    [(CLVO2MaxCloudKitManager *)self createVO2MaxPriorZone];
    v5 = self;
    v6 = 0;
    v7 = 0;
    v8 = 1;
    goto LABEL_6;
  }

  if ([objc_msgSend(a3 "zoneName")])
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v9 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = [a3 zoneName];
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "[CKManager] Delete reported for zone (%@)", &v11, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A0A04();
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v10 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = [a3 zoneName];
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "Delete reported for unexpected zone: %{public}@", &v11, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A090C();
    }
  }
}

- (void)handleZonePurge:(id)a3
{
  if ([objc_msgSend(a3 "zoneName")])
  {
    v5 = sub_10104516C();
    sub_10104544C(v5);

    [(CLVO2MaxCloudKitManager *)self createVO2MaxOutputZone];
  }

  else if ([objc_msgSend(a3 "zoneName")])
  {
    sub_10102F69C(self->fInputStore.__ptr_);

    [(CLVO2MaxCloudKitManager *)self createVO2MaxInputZone];
  }

  else if ([objc_msgSend(a3 "zoneName")])
  {
    sub_10102F69C(self->fInputStore.__ptr_);

    [(CLVO2MaxCloudKitManager *)self createVO2MaxPriorZone];
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v6 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = [a3 zoneName];
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "Will not attempt to purge unexpected zone: %{public}@", &v7, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A0AFC();
    }
  }
}

- (void)stopSyncing:(BOOL)a3
{
  v3 = a3;
  self->_syncEngine = 0;
  self->fDailyStats.syncEngineEnabled = 0;
  ptr = self->fDataProtectionClient.__ptr_;
  if (ptr)
  {
    [*(ptr + 2) unregister:*(ptr + 1) forNotification:0];
    if (!v3)
    {
      return;
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v5 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "Attempting unregistration when fDataProtectionClient is not initialized", v7, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A0BF4();
      if (!v3)
      {
        return;
      }
    }

    else if (!v3)
    {
      return;
    }
  }

  v6 = sub_10104516C();
  sub_101046284(v6);
}

- (void)resetDailyStats
{
  self->fDailyStatsStartTime = CFAbsoluteTimeGetCurrent();
  self->fDailyStats.secondsOfDataCollection = 0.0;
  *&self->fDailyStats.outputSaveQueuedCount = 0u;
  *&self->fDailyStats.outputFetchSuccessCount = 0u;
  *&self->fDailyStats.inputSaveSuccessCount = 0u;
  self->fDailyStats.priorSaveQueuedCount = 0;
  *&self->fDailyStats.priorSaveAttemptedCount = 0;
  *&self->fDailyStats.priorFetchFailureCount = 0;
  *&self->fDailyStats.priorSaveFailureCount = 0;
}

- (void)receiveVO2MaxCloudKitDailyStatsFromWatch:(id)a3
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v5 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Received daily stats message from paired watch", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A0CD8();
  }

  if (objc_opt_class() && ([+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")] & 1) != 0)
  {
    buf[0] = 0;
    *&v6 = -1;
    *(&v6 + 1) = -1;
    *&buf[4] = v6;
    *&buf[20] = v6;
    *&buf[36] = v6;
    *&buf[52] = v6;
    *&buf[68] = v6;
    *&buf[88] = 0xBFF0000000000000;
    [a3 getBytes:buf length:96];
    self->fDailyStats.secondsOfDataCollection = CFAbsoluteTimeGetCurrent() - self->fDailyStatsStartTime;
    if (objc_opt_class() && +[PDRRegistry sharedInstance])
    {
      if ([+[PDRRegistry isPaired] sharedInstance]
      {
        v7 = [-[PDRRegistry getPairedDevices](+[PDRRegistry sharedInstance](PDRRegistry "sharedInstance")];
LABEL_32:
        v11 = _NSConcreteStackBlock;
        v12 = 3221225472;
        v18 = *&buf[32];
        v19 = *&buf[48];
        v20 = *&buf[64];
        v21 = *&buf[80];
        v16 = *buf;
        v13 = sub_1004DD988;
        v14 = &unk_102459C10;
        v15 = self;
        LODWORD(v22) = v7;
        v17 = *&buf[16];
        AnalyticsSendEventLazy();
        goto LABEL_33;
      }

      if (qword_1025D4450 != -1)
      {
        sub_10015DAE4();
      }

      v10 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "Unable to retrieve number of paired watches: not paired according to device registry", v23, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018A0DBC();
      }
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_10015DAE4();
      }

      v9 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "Unable to retrieve number of paired watches: device registry unavailable", v23, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018A0EA0();
      }
    }

    v7 = -1;
    goto LABEL_32;
  }

  if (qword_1025D4450 != -1)
  {
    sub_10015DAE4();
  }

  v8 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "VO2MaxCloudKitDailyCounts,Not sending analytics, no IHA permission", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A0F84();
  }

LABEL_33:
  [(CLVO2MaxCloudKitManager *)self resetDailyStats:v11];
}

- (void)syncEngine:(id)a3 didSaveRecordZone:(id)a4
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v5 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = a4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Successfully saved CKRecordZone %{public}@", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A1068();
  }
}

- (void)syncEngine:(id)a3 didDeleteRecordZoneWithID:(id)a4
{
  if (self->_syncEngine == a3)
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v6 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = a4;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Sync engine reports successful deletion of CKRecordZone with zoneID: %{public}@. Will recreate zone and reupload local data.", &v7, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A1158();
    }

    [(CLVO2MaxCloudKitManager *)self handleZoneDeleted:a4];
  }
}

- (void)syncEngine:(id)a3 failedToSaveRecordZone:(id)a4 error:(id)a5
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v8 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543618;
    v10 = a4;
    v11 = 2114;
    v12 = a5;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Failed to save CKRecordZone: %{public}@, error = %{public}@", &v9, 0x16u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018A1248();
  }

  if ([objc_msgSend(a5 "domain")])
  {
    if ([a5 code] == 112)
    {
      -[CLVO2MaxCloudKitManager deleteZone:](self, "deleteZone:", [a4 zoneID]);
    }
  }
}

- (void)syncEngine:(id)a3 failedToDeleteRecordZoneWithID:(id)a4 error:(id)a5
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v7 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_FAULT))
  {
    v8 = 138543618;
    v9 = a5;
    v10 = 2114;
    v11 = a4;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Sync engine reports failure to delete CKRecordZone: %{public}@, zoneID = %{public}@. This is unexpected, as we should not be deleting any zones", &v8, 0x16u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018A1344();
  }
}

- (void)syncEngine:(id)a3 zoneWithIDChanged:(id)a4
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v5 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = a4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Sync engine reports that CKRecordZone with identifier %{public}@ changed", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A1440();
  }
}

- (void)syncEngine:(id)a3 zoneWithIDWasDeleted:(id)a4
{
  if (self->_syncEngine == a3)
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v6 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = a4;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Sync engine reports that CKRecordZone with identifier %{public}@ was deleted", &v7, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A1530();
    }

    [(CLVO2MaxCloudKitManager *)self handleZoneDeleted:a4];
  }
}

- (void)syncEngine:(id)a3 zoneWithIDWasPurged:(id)a4
{
  if (self->_syncEngine == a3)
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v6 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = a4;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Sync engine reports that CKRecordZone with identifier %{public}@ was purged", &v7, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A1620();
    }

    [(CLVO2MaxCloudKitManager *)self handleZonePurge:a4];
  }
}

- (id)syncEngine:(id)a3 recordToSaveForRecordID:(id)a4
{
  if (self->_syncEngine != a3)
  {
    return 0;
  }

  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v7 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = a4;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Sync engine is asking for CKRecord with ID %{public}@", &v14, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A1710();
  }

  if ([objc_msgSend(objc_msgSend(a4 "zoneID")])
  {
    v4 = [(CLVO2MaxCloudKitManager *)self createCKRecordForOutput:a4];
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v8 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Returning output CKRecord: %@", &v14, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A1ADC();
    }
  }

  else if ([objc_msgSend(objc_msgSend(a4 "zoneID")])
  {
    v4 = [(CLVO2MaxCloudKitManager *)self createCKRecordForInput:a4];
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v9 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Returning input CKRecord: %@", &v14, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A19EC();
    }
  }

  else
  {
    if (![objc_msgSend(objc_msgSend(a4 "zoneID")])
    {
      if (qword_1025D4450 != -1)
      {
        sub_10015DAE4();
      }

      v12 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        v13 = [objc_msgSend(a4 "zoneID")];
        v14 = 138543362;
        v15 = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "RecordID associated with unexpected zone: %{public}@", &v14, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018A1800();
      }

      return 0;
    }

    v4 = [(CLVO2MaxCloudKitManager *)self createCKRecordForPrior:a4];
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v10 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "Returning prior CKRecord: %@", &v14, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A18FC();
    }
  }

  return v4;
}

- (void)syncEngine:(id)a3 didSaveRecord:(id)a4
{
  if (self->_syncEngine == a3)
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v6 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543619;
      v10 = [a4 recordID];
      v11 = 2113;
      v12 = a4;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Sync engine saved CKRecord with CKRecordID %{public}@, record = %{private}@", &v9, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A1BCC();
    }

    if ([objc_msgSend(a4 "recordType")])
    {
      [(CLVO2MaxCloudKitManager *)self updateOutputSystemFields:[(CLVO2MaxCloudKitManager *)self getSystemFieldsFromCKRecord:a4] outputRecord:a4];
    }

    else if ([objc_msgSend(a4 "recordType")])
    {
      [(CLVO2MaxCloudKitManager *)self updateInputSystemFields:[(CLVO2MaxCloudKitManager *)self getSystemFieldsFromCKRecord:a4] inputRecord:a4];
    }

    else if ([objc_msgSend(a4 "recordType")])
    {
      [(CLVO2MaxCloudKitManager *)self updatePriorSystemFields:[(CLVO2MaxCloudKitManager *)self getSystemFieldsFromCKRecord:a4] priorRecord:a4];
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_10015DAE4();
      }

      v7 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        v8 = [a4 recordType];
        v9 = 138543362;
        v10 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "CloudKit reporting saved record of unexpected type: %{public}@", &v9, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018A1CD0();
      }
    }
  }
}

- (void)syncEngine:(id)a3 failedToSaveRecord:(id)a4 error:(id)a5
{
  if (self->_syncEngine == a3)
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v8 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      v10 = 138544131;
      v11 = [a5 domain];
      v12 = 2050;
      v13 = [a5 code];
      v14 = 2114;
      v15 = a5;
      v16 = 2113;
      v17 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Sync engine failed to save CKRecord: error domain = %{public}@, code = %{public}ld, error = %{public}@, record = %{private}@", &v10, 0x2Au);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A1DC8(a5, a4);
    }

    if ([objc_msgSend(a4 "recordType")])
    {
      v9 = 16;
    }

    else
    {
      if (![objc_msgSend(a4 "recordType")])
      {
        goto LABEL_13;
      }

      v9 = 40;
    }

    ++*(&self->fDailyStats.syncEngineEnabled + v9);
LABEL_13:
    if (CKErrorIsCode())
    {
      -[CLVO2MaxCloudKitManager handleServerRecordChanged:](self, "handleServerRecordChanged:", [objc_msgSend(a5 "userInfo")]);
    }

    else if (CKErrorIsCode())
    {
      [(CLVO2MaxCloudKitManager *)self handleUnknownItem:a4];
    }

    else if (CKErrorIsCode())
    {
      [(CLVO2MaxCloudKitManager *)self handleZoneNotFound:a4];
    }

    else if (CKErrorIsCode())
    {
      [(CLVO2MaxCloudKitManager *)self stopSyncing:0];
    }

    else if (CKErrorIsCode())
    {
      -[CLVO2MaxCloudKitManager deleteZone:](self, "deleteZone:", [objc_msgSend(a4 "recordID")]);
    }
  }
}

- (void)syncEngine:(id)a3 didDeleteRecordWithID:(id)a4
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v5 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = a4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Sync engine deleted CKRecord with CKRecordID %{public}@", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A1EE8();
  }
}

- (void)syncEngine:(id)a3 failedToDeleteRecordWithID:(id)a4 error:(id)a5
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v7 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
  {
    v8 = 138544130;
    v9 = [a5 domain];
    v10 = 2050;
    v11 = [a5 code];
    v12 = 2114;
    v13 = a5;
    v14 = 2114;
    v15 = a4;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Sync engine failed to delete CKRecord: error domain = %{public}@, code = %{public}ld, error = %{public}@, recordID = %{public}@", &v8, 0x2Au);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018A1FD8(a5, a4);
  }
}

- (BOOL)syncEngine:(id)a3 shouldFetchChangesForZoneID:(id)a4
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v7 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138543362;
    v15[0] = [a4 zoneName];
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Sync engine asking if it should fetch changes for %{public}@", &v14, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A20F4();
  }

  if (self->_syncEngine != a3)
  {
    goto LABEL_15;
  }

  if (self->fCloudKitDeletionState)
  {
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v8 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
    {
      fCloudKitDeletionState = self->fCloudKitDeletionState;
      v14 = 67240450;
      LODWORD(v15[0]) = fCloudKitDeletionState;
      WORD2(v15[0]) = 2114;
      *(v15 + 6) = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[CKManager] CloudKit deletion was requested (state=%{public}d). Not fetching changes for zone: %{public}@", &v14, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A21EC();
    }

LABEL_15:
    fFetchChangesForInputZone = 0;
    return fFetchChangesForInputZone & 1;
  }

  if ([objc_msgSend(a4 "zoneName")])
  {
    fFetchChangesForInputZone = 1;
  }

  else if ([objc_msgSend(a4 "zoneName")])
  {
    fFetchChangesForInputZone = self->fFetchChangesForInputZone;
  }

  else
  {
    fFetchChangesForInputZone = [objc_msgSend(a4 "zoneName")];
  }

  if (qword_1025D4450 != -1)
  {
    sub_10015DAE4();
  }

  v12 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [a4 zoneName];
    v14 = 67240450;
    LODWORD(v15[0]) = fFetchChangesForInputZone & 1;
    WORD2(v15[0]) = 2114;
    *(v15 + 6) = v13;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Answering sync engine shouldFetchChangesForZone = %{public}d for zone: %{public}@", &v14, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A22FC(fFetchChangesForInputZone & 1, a4);
  }

  return fFetchChangesForInputZone & 1;
}

- (void)syncEngine:(id)a3 didFetchRecord:(id)a4
{
  if (self->_syncEngine == a3)
  {
    v6 = objc_autoreleasePoolPush();
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v7 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543619;
      v11 = [a4 recordID];
      v12 = 2113;
      v13 = a4;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Sync engine fetched CKRecord with CKRecordID %{public}@, record = %{private}@", &v10, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A2424();
    }

    if ([objc_msgSend(a4 "recordType")])
    {
      [(CLVO2MaxCloudKitManager *)self handleFetchedOutputRecord:a4];
    }

    else if ([objc_msgSend(a4 "recordType")])
    {
      [(CLVO2MaxCloudKitManager *)self handleFetchedInputRecord:a4];
    }

    else if ([objc_msgSend(a4 "recordType")])
    {
      [(CLVO2MaxCloudKitManager *)self handleFetchedPriorRecord:a4];
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_10015DAE4();
      }

      v8 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        v9 = [a4 recordType];
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Fetched record of unexpected type: %{public}@", &v10, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018A2528();
      }
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)syncEngine:(id)a3 recordWithIDWasDeleted:(id)a4 recordType:(id)a5
{
  if (self->_syncEngine == a3)
  {
    v8 = objc_autoreleasePoolPush();
    if ([a5 isEqualToString:@"VO2MaxPrior"])
    {
      if (qword_1025D4450 != -1)
      {
        sub_10189C184();
      }

      v9 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543618;
        v12 = a4;
        v13 = 2114;
        v14 = a5;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Sync engine deleted CKRecord with CKRecordID %{public}@ of type %{public}@", &v11, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018A271C();
      }

      [(CLVO2MaxCloudKitManager *)self handleDeletedPriorRecordID:a4];
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_10189C184();
      }

      v10 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        v11 = 138543618;
        v12 = a4;
        v13 = 2114;
        v14 = a5;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "Sync engine unexpectedly fetched deletion of CKRecord with CKRecordID %{public}@ of type %{public}@", &v11, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018A2620();
      }
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)syncEngine:(id)a3 didUpdateMetadata:(id)a4
{
  if (self->_syncEngine == a3)
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v5 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v8) = 134349056;
      *(&v8 + 4) = [a4 length];
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Received updated metadata from sync engine, length = %{public}lu", &v8, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A2818();
    }

    Current = CFAbsoluteTimeGetCurrent();
    *&v8 = 0;
    *(&v8 + 1) = Current;
    v9 = Current;
    v10 = a4;
    v7 = sub_10104516C();
    sub_1010460A8(v7, &v8);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 136) = 0;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(self + 204) = v2;
  *(self + 188) = v2;
  *(self + 172) = v2;
  *(self + 156) = v2;
  *(self + 140) = v2;
  *(self + 28) = 0xBFF0000000000000;
  return self;
}

@end