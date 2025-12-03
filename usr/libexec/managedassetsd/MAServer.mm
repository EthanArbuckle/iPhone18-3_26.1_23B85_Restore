@interface MAServer
+ (id)server;
- (BOOL)CanGetAssetData:(id)data currentProfileType:(id)type bypassMode:(unint64_t)mode profileTypes:(id)types error:(id *)error;
- (BOOL)assetDeDuplication:(id)duplication type:(unint64_t)type lastUpdatedTime:(double)time newAssetHandle:(id)handle newAssetRecordID:(id)d deleteNewAssetLocal:(BOOL *)local deleteNewAssetLocalAndSync:(BOOL *)sync error:(id *)self0;
- (BOOL)canTouchAsset:(id)asset clientBundle:(id)bundle error:(id *)error;
- (BOOL)checkAndFixCloudQuotaWithError:(id *)error;
- (BOOL)checkProfile:(id)profile profileNameOut:(id *)out error:(id *)error;
- (BOOL)checkProfileForQueryKVStore:(id)store profileNameOut:(id *)out error:(id *)error;
- (BOOL)checkProfileTypeForQueryKVStore:(id)store profileTypes:(id)types error:(id *)error;
- (BOOL)cloudSyncEnabledForAssetType:(unint64_t)type;
- (BOOL)convertAssetToClassA:(id)a error:(id *)error;
- (BOOL)didReceiveAssetDelete:(id)delete assetType:(unint64_t)type assetHandle:(id)handle;
- (BOOL)didReceiveKVSData:(id)data assetType:(unint64_t)type storeName:(id)name storeGroup:(id)group profileType:(unint64_t)profileType data:(id)a8;
- (BOOL)didReceiveKVSDataDelete:(id)delete recordHandle:(id)handle assetType:(unint64_t)type storeName:(id)name storeGroup:(id)group profileType:(unint64_t)profileType;
- (BOOL)didReceiveKVSDataZoneDelete:(id)delete reason:(unint64_t)reason;
- (BOOL)didReceiveZoneDelete:(id)delete reason:(unint64_t)reason;
- (BOOL)didSyncUpAsset:(id)asset;
- (BOOL)didSyncUpAssetDelete:(id)delete;
- (BOOL)didSyncUpKVSData:(id)data assetType:(unint64_t)type storeName:(id)name storeGroup:(id)group profileType:(unint64_t)profileType data:(id)a8;
- (BOOL)didSyncUpKVSDataDelete:(id)delete recordHandle:(id)handle assetType:(unint64_t)type storeName:(id)name storeGroup:(id)group profileType:(unint64_t)profileType;
- (BOOL)failedToUploadAsset:(id)asset error:(id)error;
- (BOOL)isAssetClassC:(id)c;
- (BOOL)isAssetReadyToBeConverted:(id)converted expirationDate:(id)date;
- (BOOL)isTimeToCheckInactivePersistedGuest;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)loadBaseStoreFor:(id)for clientConn:(id)conn error:(id *)error;
- (BOOL)queryExistingUserLensRecord:(id)record attributes:(id)attributes clientConn:(id)conn records:(id)records storeOut:(id *)out error:(id *)error;
- (BOOL)resetAssetCloudState:(id *)state;
- (BOOL)resetKVSCloudState:(id *)state;
- (BOOL)saveDataToCloud:(id)cloud records:(id)records updateSyncState:(BOOL)state queryRecord:(BOOL)record error:(id *)error;
- (BOOL)uploadOldAssetsWithOption:(unint64_t)option includeKVStoreData:(BOOL)data error:(id *)error;
- (MAServer)initWithMachServiceName:(id)name;
- (_TtC6server18MACloudSyncManager)cloudSyncManager;
- (id)checKVStoreEntitlement:(id)entitlement attributes:(id)attributes clientConn:(id)conn op:(unint64_t)op profile:(id *)profile error:(id *)error;
- (id)checkFileAccessEntitlement:(id)entitlement mode:(unint64_t)mode attributes:(id)attributes clientConn:(id)conn op:(unint64_t)op topGroup:(id *)group profile:(id *)profile error:(id *)self0;
- (id)createKVStoreInternal:(id)internal fields:(id)fields attributes:(id)attributes clientConn:(id)conn error:(id *)error;
- (id)didReceiveAsset:(id)asset sessionToken:(id)token;
- (id)dumpKVStore:(id)store keys:(id)keys error:(id *)error;
- (id)dumpStoreName:(id)name error:(id *)error;
- (id)findDB:(id)b error:(id *)error;
- (id)findStore:(id)store name:(id)name error:(id *)error;
- (id)getBaseStore:(id)store baseGroup:(id)group baseProfile:(id)profile clientConn:(id)conn error:(id *)error;
- (id)getStore:(id)store attributes:(id)attributes clientConn:(id)conn op:(unint64_t)op storeChain:(id *)chain error:(id *)error;
- (id)modifyUpdatedMetadata:(id)metadata assetMetadata:(id)assetMetadata eventtype:(unint64_t *)eventtype error:(id *)error;
- (id)parseExportOption:(id)option error:(id *)error;
- (id)parseImportOption:(id)option error:(id *)error;
- (void)AddAnchorGroup:(id)group clientIdentifier:(id)identifier completion:(id)completion;
- (void)CheckIfCloudAssetZonesWithCompletion:(id)completion;
- (void)CreateAsset:(id)asset uuid:(id)uuid sessionToken:(id)token completion:(id)completion;
- (void)CreateProfile:(id)profile guest:(BOOL)guest completion:(id)completion;
- (void)DeleteAllAssetsExcept:(id)except withOptions:(id)options completion:(id)completion;
- (void)DeleteAllNonDefaultProfilesWithCompletion:(id)completion;
- (void)DeleteAsset:(id)asset uuid:(id)uuid completion:(id)completion;
- (void)DeleteAsset:(id)asset withOptions:(id)options completion:(id)completion;
- (void)DeleteAssetsWithOptions:(id)options completion:(id)completion;
- (void)DeleteProfile:(id)profile completion:(id)completion;
- (void)DeleteTempAsset:(BOOL)asset tokens:(id)tokens;
- (void)GetAllAnchorGroups:(id)groups completion:(id)completion;
- (void)GetAllProfilesWithCompletion:(id)completion;
- (void)GetAssetData:(id)data uuid:(id)uuid completion:(id)completion;
- (void)GetAssetMeteData:(id)data uuid:(id)uuid completion:(id)completion;
- (void)GetCurrentProfileType:(id)type;
- (void)GetLastSwitchTimeForPersistedGuestWithCompletion:(id)completion;
- (void)GetTempAssetFileHandle:(int64_t)handle assetType:(unint64_t)type assetHandle:(id)assetHandle completion:(id)completion;
- (void)GetTempAssetFilePathWithAssetType:(unint64_t)type completion:(id)completion;
- (void)ImportSerializedV2Assets:(id)assets option:(id)option profileType:(unint64_t)type axData:(id)data completion:(id)completion;
- (void)PersistGuestProfileWithCompletion:(id)completion;
- (void)QueryAssetMetaData:(id)data completion:(id)completion;
- (void)QueryAssets:(id)assets completion:(id)completion;
- (void)RegisterOberverWithGroup:(id)group observerType:(unint64_t)type resourceNames:(id)names profile:(id)profile events:(unint64_t)events completion:(id)completion;
- (void)RegisterRemoteSharingOberverWithCompletion:(id)completion;
- (void)RemoveAllAnchorGroups:(id)groups completion:(id)completion;
- (void)RemoveAnchorGroup:(id)group clientIdentifier:(id)identifier completion:(id)completion;
- (void)SerializeAllAssets:(id)assets option:(id)option completion:(id)completion;
- (void)ShareAssetsWithGroup:(id)group sessionUUID:(id)d capability:(id)capability completion:(id)completion;
- (void)SwitchProfile:(id)profile completion:(id)completion;
- (void)UnpersistGuestProfileWithCompletion:(id)completion;
- (void)UpdateAsset:(id)asset uuid:(id)uuid sessionToken:(id)token algorithmVersion:(id)version completion:(id)completion;
- (void)UpdateAssetV2:(id)v2 sessionToken:(id)token options:(id)options completion:(id)completion;
- (void)checkAndScheduleCallbackForFirstUnlock;
- (void)checkCloudRecordZoneExistWithCompletionHandler:(id)handler;
- (void)checkIfKVStoreGroupExistUsing:(id)using reply:(id)reply;
- (void)commitFile:(id)file attributes:(id)attributes reply:(id)reply;
- (void)convertA06AssetsToClassA:(unint64_t)a;
- (void)convertAssetCaches;
- (void)createKVStore:(id)store fields:(id)fields attributes:(id)attributes reply:(id)reply;
- (void)daemonTest:(id)test completion:(id)completion;
- (void)deleteAllDataInCloudWithCompletion:(id)completion;
- (void)deleteAllInCloudWithCompletionHandler:(id)handler;
- (void)deleteAllProfiles:(unint64_t)profiles exclude:(id)exclude epoch:(int64_t)epoch;
- (void)deleteAssetInCloudWithRecordName:(id)name assetType:(unint64_t)type profileType:(unint64_t)profileType completionHandler:(id)handler;
- (void)deleteDataInCloud:(id)cloud uuids:(id)uuids;
- (void)deleteDataInStore:(id)store keys:(id)keys attributes:(id)attributes reply:(id)reply;
- (void)deleteFile:(id)file attributes:(id)attributes reply:(id)reply;
- (void)deleteInactivePersistentGuests;
- (void)deleteKVSDataInCloudWithRecordHandles:(id)handles assetType:(unint64_t)type storeName:(id)name storeGroup:(id)group profileType:(unint64_t)profileType completionHandler:(id)handler;
- (void)deleteKVStore:(id)store attributes:(id)attributes reply:(id)reply;
- (void)deleteVolatileProfiles:(id)profiles;
- (void)deviceFirstUnlockSinceBoot;
- (void)deviceUnlock;
- (void)failedToDeleteAsset:(id)asset error:(id)error;
- (void)failedToDeleteKVSData:(id)data assetType:(unint64_t)type storeName:(id)name storeGroup:(id)group profileType:(unint64_t)profileType error:(id)error;
- (void)failedToDeleteKVSZone:(id)zone error:(id)error;
- (void)failedToDeleteZone:(id)zone error:(id)error;
- (void)failedToUploadKVSData:(id)data assetType:(unint64_t)type storeName:(id)name storeGroup:(id)group profileType:(unint64_t)profileType data:(id)a8 error:(id)error;
- (void)fetchCoreRxLensData:(id)data recordUUID:(id)d accPayload:(id)payload rxIdL:(int64_t)l rxIdR:(int64_t)r axisL:(int64_t)axisL axisR:(int64_t)axisR calRequiredL:(BOOL)self0 calRequiredR:(BOOL)self1 version:(unint64_t)self2 attributes:(id)self3 reply:(id)self4;
- (void)fetchSigninUserWithCompletionHandler:(id)handler;
- (void)getAVPSetupUserOptionWithCompletionHandler:(id)handler;
- (void)getConnectedClientsWithCompletion:(id)completion;
- (void)getDaemonProcessInfo:(id)info;
- (void)getDeviceStatus;
- (void)getDiskUsage:(id)usage attributes:(id)attributes reply:(id)reply;
- (void)getProfileSwitchTime:(id)time mode:(unint64_t)mode completion:(id)completion;
- (void)handleRepeatingTask:(id)task intervalFactor:(int)factor;
- (void)localAssetCleanupWithRecordName:(id)name completionHandler:(id)handler;
- (void)localKVSCleanupWithRecordName:(id)name completionHandler:(id)handler;
- (void)openFile:(id)file mode:(unint64_t)mode attributes:(id)attributes reply:(id)reply;
- (void)openFiles:(id)files mode:(unint64_t)mode attributes:(id)attributes reply:(id)reply;
- (void)parseSyncOptions:(int64_t)options localOnly:(BOOL *)only cloudOnly:(BOOL *)cloudOnly localAndCloud:(BOOL *)cloud defaultOption:(BOOL *)option;
- (void)processAccountChangedWithSigninUser:(id)user signoutUser:(id)signoutUser accountSwitch:(BOOL)switch;
- (void)processZoneDelete:(id)delete reason:(unint64_t)reason error:(id)error;
- (void)putDataInStore:(id)store records:(id)records attributes:(id)attributes reply:(id)reply;
- (void)queryCloudAssetWithRecordName:(id)name completionHandler:(id)handler;
- (void)queryCloudAssetsSizeWithCompletionHandler:(id)handler;
- (void)queryCloudKVDataSizeWithCompletionHandler:(id)handler;
- (void)queryCloudKVDataWithRecordName:(id)name completionHandler:(id)handler;
- (void)queryDataInStore:(id)store keys:(id)keys attributes:(id)attributes reply:(id)reply;
- (void)queryFile:(id)file attributes:(id)attributes reply:(id)reply;
- (void)queryForA06AssetHandlesInClassC;
- (void)recoverRemoteAsset:(id)asset completion:(id)completion;
- (void)registerSystemBackgoundTasks;
- (void)requestFileWithSandboxExtension:(id)extension mode:(unint64_t)mode attributes:(id)attributes isDirectory:(BOOL)directory reply:(id)reply;
- (void)resetCloudSyncStateWithCompletionHandler:(id)handler;
- (void)saveAVPSetupUserOption:(int64_t)option completion:(id)completion;
- (void)saveAVPSetupUserOption:(int64_t)option completionHandler:(id)handler;
- (void)saveAssetToCloud:(id)cloud options:(unint64_t)options completionHandler:(id)handler;
- (void)saveKVSDataToCloudWithRecordHandle:(id)handle assetType:(unint64_t)type storeName:(id)name storeGroup:(id)group profileType:(unint64_t)profileType data:(id)data options:(unint64_t)options completionHandler:(id)self0;
- (void)start;
- (void)startCloudSyncManager;
- (void)stop;
- (void)updateBGTaskSchedulerDynamically;
- (void)updateDataInStore:(id)store keys:(id)keys values:(id)values attributes:(id)attributes reply:(id)reply;
- (void)uploadOldAssetsOnStartup;
@end

@implementation MAServer

- (void)CreateProfile:(id)profile guest:(BOOL)guest completion:(id)completion
{
  guestCopy = guest;
  profileCopy = profile;
  completionCopy = completion;
  v11 = mach_continuous_time();
  v12 = +[NSXPCConnection currentConnection];
  policyEngine = self->_policyEngine;
  v14 = kManagedAssetShareModeEntitlement;
  v15 = NSStringFromSelector(a2);
  v33 = 0;
  LODWORD(v14) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:v14 client:v12 function:v15 error:&v33];
  v16 = v33;

  if (v14)
  {
    v30 = v11;
    if (profileCopy)
    {
      storage = self->_storage;
      v32 = v16;
      uUIDString = [(MAStorage *)storage getProfile:profileCopy error:&v32];
      v19 = v32;

      if (v19)
      {
        if ([v19 code] != -20501)
        {
          if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
          {
            sub_10003983C();
          }

          goto LABEL_25;
        }
      }

      if (uUIDString)
      {
        if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
        {
          sub_1000398AC();
        }

        v29 = profileCopy;
        v19 = createManagedAssetError();
        goto LABEL_25;
      }

      v20 = profileCopy;
      v16 = 0;
    }

    else
    {
      v20 = +[NSUUID UUID];
    }

    v21 = +[NSDate date];
    [v21 timeIntervalSince1970];
    v23 = v22;

    v24 = self->_storage;
    v31 = v16;
    v25 = [(MAStorage *)v24 createProfile:v20 type:guestCopy timestamp:&v31 error:v23];
    v19 = v31;

    v26 = off_100127DC8;
    if (v25)
    {
      if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_DEFAULT))
      {
        v27 = @"Enrolled";
        if (guestCopy)
        {
          v27 = @"Guest";
        }

        *buf = 138412546;
        *&buf[4] = v27;
        *&buf[12] = 2114;
        *&buf[14] = profileCopy;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Created new %@ profile (UUID: %{public}@)", buf, 0x16u);
      }

      notificationEngine = self->_notificationEngine;
      uUIDString = [v20 UUIDString];
      [(MANotificationEngine *)notificationEngine notifyProfileChangeWith:128 profile:uUIDString type:guestCopy];
LABEL_26:

      v16 = v19;
      v11 = v30;
      if (!completionCopy)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
    {
      sub_100039914();
    }

    uUIDString = v20;
LABEL_25:
    v20 = 0;
    goto LABEL_26;
  }

  v20 = 0;
  if (completionCopy)
  {
LABEL_27:
    completionCopy[2](completionCopy, v20, v16);
  }

LABEL_28:
  if (v12)
  {
    [v12 auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  [CALogger logWithCoreAnalytics:"[MAServer(Profile) CreateProfile:guest:completion:]" client:buf startTS:v11 error:v16, v29];
}

- (void)SwitchProfile:(id)profile completion:(id)completion
{
  profileCopy = profile;
  completionCopy = completion;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100034C5C;
  v30 = sub_100034C6C;
  v31 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_100034C5C;
  v24[4] = sub_100034C6C;
  v25 = 0;
  v9 = mach_continuous_time();
  v10 = +[NSXPCConnection currentConnection];
  policyEngine = self->_policyEngine;
  v12 = NSStringFromSelector(a2);
  v13 = v27;
  obj = v27[5];
  LOBYTE(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:kManagedAssetShareModeEntitlement client:v10 function:v12 error:&obj];
  objc_storeStrong(v13 + 5, obj);

  if (policyEngine)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100034C74;
    block[3] = &unk_1001164A8;
    block[4] = self;
    v17 = profileCopy;
    v20 = v24;
    v21 = &v26;
    v19 = completionCopy;
    v18 = v10;
    v22 = v9;
    dispatch_sync(serialQueue, block);
  }

  else
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v27[5]);
    }

    if (v10)
    {
      [v10 auditToken];
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    [CALogger logWithCoreAnalytics:"[MAServer(Profile) SwitchProfile:completion:]" client:v15 startTS:v9 error:v27[5]];
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v26, 8);
}

- (void)PersistGuestProfileWithCompletion:(id)completion
{
  completionCopy = completion;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100034C5C;
  v22 = sub_100034C6C;
  v23 = 0;
  policyEngine = self->_policyEngine;
  v7 = +[NSXPCConnection currentConnection];
  v8 = NSStringFromSelector(a2);
  v9 = (v19 + 5);
  obj = v19[5];
  v10 = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:kManagedAssetShareModeEntitlement client:v7 function:v8 error:&obj];
  objc_storeStrong(v9, obj);

  if (completionCopy)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    completionCopy[2](completionCopy, v19[5]);
  }

  serialQueue = self->_serialQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003531C;
  v14[3] = &unk_1001164D0;
  v15 = completionCopy;
  v16 = &v18;
  v14[4] = self;
  v13 = completionCopy;
  dispatch_sync(serialQueue, v14);

  _Block_object_dispose(&v18, 8);
}

- (void)UnpersistGuestProfileWithCompletion:(id)completion
{
  completionCopy = completion;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100034C5C;
  v19 = sub_100034C6C;
  v20 = 0;
  policyEngine = self->_policyEngine;
  v7 = +[NSXPCConnection currentConnection];
  v8 = NSStringFromSelector(a2);
  v9 = (v16 + 5);
  obj = v16[5];
  LOBYTE(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:kManagedAssetShareModeEntitlement client:v7 function:v8 error:&obj];
  objc_storeStrong(v9, obj);

  if (policyEngine)
  {
    serialQueue = self->_serialQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100035838;
    v11[3] = &unk_1001164D0;
    v11[4] = self;
    v13 = &v15;
    v12 = completionCopy;
    dispatch_sync(serialQueue, v11);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v16[5]);
  }

  _Block_object_dispose(&v15, 8);
}

- (void)GetLastSwitchTimeForPersistedGuestWithCompletion:(id)completion
{
  completionCopy = completion;
  policyEngine = self->_policyEngine;
  v7 = kManagedAssetShareModeEntitlement;
  v8 = +[NSXPCConnection currentConnection];
  v9 = NSStringFromSelector(a2);
  v17 = 0;
  LODWORD(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:v7 client:v8 function:v9 error:&v17];
  v10 = v17;

  if (!policyEngine)
  {
    v13 = 0;
    if (!completionCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ([(MAServer *)self isTimeToCheckInactivePersistedGuest])
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100035D60;
    block[3] = &unk_100115E70;
    block[4] = self;
    dispatch_sync(serialQueue, block);
  }

  storage = self->_storage;
  v15 = v10;
  v13 = [(MAStorage *)storage getLastSwitchOutTimeForRecentPersistedGuestWithError:&v15];
  v14 = v15;

  if (!v14)
  {
    v10 = 0;
    if (!completionCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
  {
    sub_100039C2C();
  }

  v10 = v14;
  if (completionCopy)
  {
LABEL_10:
    completionCopy[2](completionCopy, v13, v10);
  }

LABEL_11:
}

- (void)DeleteProfile:(id)profile completion:(id)completion
{
  profileCopy = profile;
  completionCopy = completion;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100034C5C;
  v29 = sub_100034C6C;
  v30 = 0;
  v9 = +[NSXPCConnection currentConnection];
  v10 = mach_continuous_time();
  if (profileCopy)
  {
    policyEngine = self->_policyEngine;
    v12 = NSStringFromSelector(a2);
    v13 = (v26 + 5);
    obj = v26[5];
    LODWORD(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:kManagedAssetShareModeEntitlement client:v9 function:v12 error:&obj];
    objc_storeStrong(v13, obj);

    if (policyEngine)
    {
      serialQueue = self->_serialQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100036024;
      block[3] = &unk_1001164F8;
      block[4] = self;
      v19 = profileCopy;
      v22 = &v25;
      v21 = completionCopy;
      v20 = v9;
      v23 = v10;
      dispatch_sync(serialQueue, block);

      goto LABEL_13;
    }
  }

  else
  {
    if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
    {
      sub_100039C94();
    }

    v15 = createManagedAssetError();
    v16 = v26[5];
    v26[5] = v15;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v26[5]);
  }

  if (v9)
  {
    [v9 auditToken];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  [CALogger logWithCoreAnalytics:"[MAServer(Profile) DeleteProfile:completion:]" client:v17 startTS:v10 error:v26[5]];
LABEL_13:

  _Block_object_dispose(&v25, 8);
}

- (void)DeleteAllNonDefaultProfilesWithCompletion:(id)completion
{
  completionCopy = completion;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100034C5C;
  v23 = sub_100034C6C;
  v24 = 0;
  v6 = +[NSXPCConnection currentConnection];
  v7 = mach_continuous_time();
  policyEngine = self->_policyEngine;
  v9 = NSStringFromSelector(a2);
  v10 = (v20 + 5);
  obj = v20[5];
  LOBYTE(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:kManagedAssetShareModeEntitlement client:v6 function:v9 error:&obj];
  objc_storeStrong(v10, obj);

  if (policyEngine)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000364C4;
    block[3] = &unk_100116520;
    block[4] = self;
    v15 = completionCopy;
    v16 = &v19;
    v14 = v6;
    v17 = v7;
    dispatch_sync(serialQueue, block);
  }

  else
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v20[5]);
    }

    if (v6)
    {
      [v6 auditToken];
    }

    else
    {
      memset(v12, 0, sizeof(v12));
    }

    [CALogger logWithCoreAnalytics:"[MAServer(Profile) DeleteAllNonDefaultProfilesWithCompletion:]" client:v12 startTS:v7 error:v20[5]];
  }

  _Block_object_dispose(&v19, 8);
}

- (void)GetAllProfilesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = mach_continuous_time();
  v7 = +[NSXPCConnection currentConnection];
  policyEngine = self->_policyEngine;
  v9 = kManagedAssetShareModeEntitlement;
  v10 = NSStringFromSelector(a2);
  v19 = 0;
  LODWORD(v9) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:v9 client:v7 function:v10 error:&v19];
  v11 = v19;

  if (!v9)
  {
    profileName = 0;
    v13 = 0;
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  storage = self->_storage;
  v18 = v11;
  v13 = [(MAStorage *)storage getAllProfilesWithError:&v18];
  v14 = v18;

  if (!v14)
  {
    profile = [(MAServer *)self profile];
    profileName = [profile profileName];

    v11 = 0;
    if (!completionCopy)
    {
      goto LABEL_9;
    }

LABEL_8:
    completionCopy[2](completionCopy, v13, profileName, v11);
    goto LABEL_9;
  }

  if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
  {
    sub_100039CD0();
  }

  profileName = 0;
  v11 = v14;
  if (completionCopy)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v7)
  {
    [v7 auditToken];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  [CALogger logWithCoreAnalytics:"[MAServer(Profile) GetAllProfilesWithCompletion:]" client:v17 startTS:v6 error:v11];
}

- (void)GetCurrentProfileType:(id)type
{
  typeCopy = type;
  v6 = mach_continuous_time();
  v7 = +[NSXPCConnection currentConnection];
  policyEngine = self->_policyEngine;
  v9 = kManagedAssetShareModeEntitlement;
  v10 = NSStringFromSelector(a2);
  v15 = 0;
  LODWORD(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:v9 client:v7 function:v10 error:&v15];
  v11 = v15;

  if (!policyEngine)
  {
    profileType = -2;
    if (!typeCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  profile = [(MAServer *)self profile];
  profileType = [profile profileType];

  if (typeCopy)
  {
LABEL_5:
    typeCopy[2](typeCopy, profileType, v11);
  }

LABEL_6:
  if (v7)
  {
    [v7 auditToken];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  [CALogger logWithCoreAnalytics:"[MAServer(Profile) GetCurrentProfileType:]" client:v14 startTS:v6 error:v11];
}

- (void)SerializeAllAssets:(id)assets option:(id)option completion:(id)completion
{
  assetsCopy = assets;
  optionCopy = option;
  completionCopy = completion;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = sub_100034C5C;
  v71 = sub_100034C6C;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_100034C5C;
  v65 = sub_100034C6C;
  v66 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = -2;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_100034C5C;
  v51 = sub_100034C6C;
  v52 = 0;
  v12 = mach_continuous_time();
  v13 = +[NSXPCConnection currentConnection];
  profile = [(MAServer *)self profile];
  profileType = [profile profileType];

  if (profileType != 1 && self->_deviceState <= 1)
  {
    v16 = off_100127DC8;
    if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
    {
      sub_100039D38(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    v24 = createManagedAssetError();
    v25 = v68[5];
    v68[5] = v24;

LABEL_10:
    v30 = 0;
    if (!completionCopy)
    {
LABEL_12:
      if (v13)
      {
        [v13 auditToken];
      }

      else
      {
        memset(v32, 0, sizeof(v32));
      }

      [CALogger logWithCoreAnalytics:"[MAServer(Profile) SerializeAllAssets:option:completion:]" client:v32 startTS:v12 error:v68[5]];
      goto LABEL_16;
    }

LABEL_11:
    completionCopy[2](completionCopy, v62[5], v58[3], v54[3], v48[5], v68[5]);
    goto LABEL_12;
  }

  policyEngine = self->_policyEngine;
  v27 = NSStringFromSelector(a2);
  v28 = v68;
  obj = v68[5];
  LODWORD(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:kManagedAssetSerializeEntitlement client:v13 function:v27 error:&obj];
  objc_storeStrong(v28 + 5, obj);

  if (!policyEngine)
  {
    goto LABEL_10;
  }

  v29 = v68;
  v45 = v68[5];
  v30 = [(MAServer *)self parseExportOption:optionCopy error:&v45];
  objc_storeStrong(v29 + 5, v45);
  if (v68[5])
  {
    if (!completionCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100039DB0();
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100036E84;
  block[3] = &unk_100116548;
  v34 = assetsCopy;
  selfCopy = self;
  v39 = &v67;
  v30 = v30;
  v36 = v30;
  v40 = &v53;
  v41 = &v61;
  v37 = v13;
  v42 = &v47;
  v43 = &v57;
  v38 = completionCopy;
  v44 = v12;
  dispatch_async(serialQueue, block);

LABEL_16:
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(&v67, 8);
}

- (void)ImportSerializedV2Assets:(id)assets option:(id)option profileType:(unint64_t)type axData:(id)data completion:(id)completion
{
  assetsCopy = assets;
  optionCopy = option;
  dataCopy = data;
  completionCopy = completion;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = sub_100034C5C;
  v77 = sub_100034C6C;
  v78 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = sub_100034C5C;
  v71 = sub_100034C6C;
  v72 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = -2;
  v16 = mach_continuous_time();
  v17 = +[NSXPCConnection currentConnection];
  v18 = v17;
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x3032000000;
  v61[3] = sub_100034C5C;
  v61[4] = sub_100034C6C;
  if (self->_isXCTest)
  {
    v19 = @"xctest";
  }

  else
  {
    if (v17)
    {
      [v17 auditToken];
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
    }

    v19 = [MAUtilityHelper getClientBundleIdentifier:&v59];
  }

  v62 = v19;
  v42 = optionCopy;
  if (self->_deviceState <= 1)
  {
    v20 = off_100127DC8;
    if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
    {
      sub_10003A200(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    v28 = createManagedAssetError();
    v29 = v74[5];
    v74[5] = v28;

    v30 = 0;
    goto LABEL_12;
  }

  v31 = v74;
  obj = v74[5];
  v30 = [(MAServer *)self parseImportOption:optionCopy error:&obj];
  objc_storeStrong(v31 + 5, obj);
  if (!v74[5])
  {
    if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_DEBUG))
    {
      sub_10003A198();
    }

    v32 = [v30 objectForKeyedSubscript:kManagedAssetsImportOptionProfileUUID];

    policyEngine = self->_policyEngine;
    if (v32)
    {
      v34 = NSStringFromSelector(a2);
      v35 = v74;
      v57 = v74[5];
      v36 = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:kManagedAssetImportProfileEntitlement client:v18 function:v34 error:&v57];
      objc_storeStrong(v35 + 5, v57);

      if ((v36 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v37 = NSStringFromSelector(a2);
      v38 = v74;
      v56 = v74[5];
      v39 = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:kManagedAssetSerializeEntitlement client:v18 function:v37 error:&v56];
      objc_storeStrong(v38 + 5, v56);

      if (!v39)
      {
        goto LABEL_12;
      }
    }

    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000380E0;
    block[3] = &unk_1001165C0;
    typeCopy = type;
    v44 = assetsCopy;
    v50 = &v73;
    v49 = completionCopy;
    v30 = v30;
    v45 = v30;
    selfCopy = self;
    v51 = v61;
    v47 = v18;
    v48 = dataCopy;
    v52 = &v67;
    v53 = &v63;
    v55 = v16;
    dispatch_async(serialQueue, block);

    goto LABEL_18;
  }

LABEL_12:
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v68[5], v64[3], v74[5]);
  }

  if (v18)
  {
    [v18 auditToken];
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
  }

  [CALogger logWithCoreAnalytics:"[MAServer(Profile) ImportSerializedV2Assets:option:profileType:axData:completion:]" client:&v59 startTS:v16 error:v74[5]];
LABEL_18:
  _Block_object_dispose(v61, 8);

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v73, 8);
}

- (id)parseImportOption:(id)option error:(id *)error
{
  if (!option)
  {
    v5 = 0;
    goto LABEL_32;
  }

  optionCopy = option;
  v5 = +[NSMutableDictionary dictionary];
  v6 = kManagedAssetsImportOptionSelectedAssetTypes;
  v7 = [optionCopy objectForKeyedSubscript:kManagedAssetsImportOptionSelectedAssetTypes];
  v8 = kManagedAssetsImportOptionProfileUUID;
  v9 = [optionCopy objectForKeyedSubscript:kManagedAssetsImportOptionProfileUUID];
  v10 = kManagedAssetsImportOptionVolatileProfile;
  v24 = [optionCopy objectForKeyedSubscript:kManagedAssetsImportOptionVolatileProfile];
  v11 = kManagedAssetsBYOEOptionAXIncluded;
  v23 = [optionCopy objectForKeyedSubscript:kManagedAssetsBYOEOptionAXIncluded];
  v12 = kManagedAssetsImportOptionNonActiveAssetStateDefault;
  v22 = [optionCopy objectForKeyedSubscript:kManagedAssetsImportOptionNonActiveAssetStateDefault];
  v13 = kManagedAssetsImportOptionDedupe;
  v21 = [optionCopy objectForKeyedSubscript:kManagedAssetsImportOptionDedupe];

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *error = createManagedAssetError();
      if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
      {
LABEL_28:
        sub_10003A718();
      }

LABEL_29:

      v5 = 0;
      v14 = v24;
      goto LABEL_30;
    }

    [v5 setObject:v9 forKeyedSubscript:v8];
  }

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 isValidAssetTypeArray])
    {
      [v5 setObject:v7 forKeyedSubscript:v6];
      goto LABEL_9;
    }

    *error = createManagedAssetError();
    if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

LABEL_9:
  v14 = v24;
  if (v9)
  {
    v15 = 1;
  }

  else
  {
    v15 = v24 == 0;
  }

  if (v15)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setObject:v24 forKeyedSubscript:v10];
LABEL_15:
    v16 = v23;
    if (v23)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 setObject:v23 forKeyedSubscript:v11];
      }
    }

    v17 = v22;
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 setObject:v22 forKeyedSubscript:v12];
      }
    }

    v18 = v21;
    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 setObject:v21 forKeyedSubscript:v13];
      }
    }

    goto LABEL_31;
  }

  *error = createManagedAssetError();
  if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
  {
    sub_10003A718();
  }

  v5 = 0;
LABEL_30:
  v17 = v22;
  v16 = v23;
  v18 = v21;
LABEL_31:

LABEL_32:

  return v5;
}

- (id)parseExportOption:(id)option error:(id *)error
{
  if (!option)
  {
    v6 = 0;
    goto LABEL_20;
  }

  optionCopy = option;
  v6 = +[NSMutableDictionary dictionary];
  v7 = kManagedAssetsExportOptionAssetTypes;
  v8 = [optionCopy objectForKeyedSubscript:kManagedAssetsExportOptionAssetTypes];
  v9 = kManagedAssetsExportOptionAssetHandles;
  v10 = [optionCopy objectForKeyedSubscript:kManagedAssetsExportOptionAssetHandles];
  v11 = kManagedAssetsBYOEOptionAXIncluded;
  v12 = [optionCopy objectForKeyedSubscript:kManagedAssetsBYOEOptionAXIncluded];

  if (!v8)
  {
LABEL_6:
    if (!v10)
    {
LABEL_10:
      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 setObject:v12 forKeyedSubscript:v11];
        }
      }

      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v10 isValidAssetHandleArray])
    {
      [v6 setObject:v10 forKeyedSubscript:v9];
      goto LABEL_10;
    }

    *error = createManagedAssetError();
    if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 isValidAssetTypeArray])
  {
    [v6 setObject:v8 forKeyedSubscript:v7];
    goto LABEL_6;
  }

  *error = createManagedAssetError();
  if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
  {
LABEL_17:
    sub_10003A718();
  }

LABEL_18:

  v6 = 0;
LABEL_19:

LABEL_20:

  return v6;
}

- (BOOL)queryExistingUserLensRecord:(id)record attributes:(id)attributes clientConn:(id)conn records:(id)records storeOut:(id *)out error:(id *)error
{
  recordCopy = record;
  connCopy = conn;
  recordsCopy = records;
  attributesCopy = attributes;
  v16 = +[NSMutableDictionary dictionary];
  v17 = kMACoreRXUserGroup;
  [v16 setObject:kMACoreRXUserGroup forKeyedSubscript:kMAGroupKey];
  v18 = kMAGroupTypeKey;
  v19 = [attributesCopy objectForKeyedSubscript:kMAGroupTypeKey];

  if (v19)
  {
    [v16 setObject:v19 forKeyedSubscript:v18];
  }

  v20 = kMAUserCalibrationDataStore;
  v41 = 0;
  v21 = [(MAServer *)self getStore:kMAUserCalibrationDataStore attributes:v16 clientConn:connCopy op:3 storeChain:0 error:&v41];
  v22 = v41;
  if (v22)
  {
    v23 = v22;
    v24 = off_100127DD0;
    if (os_log_type_enabled(off_100127DD0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v45 = v20;
      v46 = 2112;
      v47 = v17;
      v48 = 2112;
      v49 = v23;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "error init/load the prescription user data store name=%@ group=%@, error=%@", buf, 0x20u);
    }

    v25 = 0;
    goto LABEL_13;
  }

  if (recordCopy)
  {
    v42 = kMAKVCol_uuid;
    v43 = recordCopy;
    v26 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v39 = 0;
    v40 = 0;
    v27 = [v21 queryFor:v26 attributes:0 records:&v40 error:&v39];
    v28 = v40;
    v23 = v39;
    if (v27)
    {
      v35 = v26;
      v38 = v23;
      v29 = [MAKVStore queryOutputToArrayOfDictionaries:v28 results:recordsCopy error:&v38];
      v30 = v38;

      if (v29)
      {

        goto LABEL_12;
      }

      v23 = v30;
      v26 = v35;
    }

    else
    {
      v34 = off_100127DD0;
      if (os_log_type_enabled(off_100127DD0, OS_LOG_TYPE_ERROR))
      {
        sub_10003B404(v34, v21, v23);
      }
    }

    v25 = 0;
    if (!v23)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v30 = 0;
LABEL_12:
  v31 = v21;
  *out = v21;
  v25 = 1;
  v23 = v30;
  if (v30)
  {
LABEL_13:
    v32 = v23;
    *error = v23;
  }

LABEL_14:

  return v25;
}

- (void)fetchCoreRxLensData:(id)data recordUUID:(id)d accPayload:(id)payload rxIdL:(int64_t)l rxIdR:(int64_t)r axisL:(int64_t)axisL axisR:(int64_t)axisR calRequiredL:(BOOL)self0 calRequiredR:(BOOL)self1 version:(unint64_t)self2 attributes:(id)self3 reply:(id)self4
{
  dataCopy = data;
  dCopy = d;
  payloadCopy = payload;
  attributesCopy = attributes;
  replyCopy = reply;
  v24 = +[NSXPCConnection currentConnection];
  v25 = v24;
  if (attributesCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v33 = off_100127DD0;
      if (os_log_type_enabled(off_100127DD0, OS_LOG_TYPE_ERROR))
      {
        sub_10003B4E0(attributesCopy, v33, v34, v35, v36, v37, v38, v39);
      }

      v32 = createManagedAssetError();
      (*(replyCopy + 2))(replyCopy, 0, 0, v32);
      goto LABEL_28;
    }

    selfCopy2 = self;
    v48 = replyCopy;
    v49 = v25;
    v50 = payloadCopy;
    v26 = dCopy;
    v27 = dataCopy;
    v28 = [attributesCopy objectForKeyedSubscript:kMALensSelectKey];
  }

  else
  {
    selfCopy2 = self;
    v48 = replyCopy;
    v49 = v24;
    v50 = payloadCopy;
    v26 = dCopy;
    v27 = dataCopy;
    v28 = 0;
  }

  v29 = [kMALensSelectLeft isEqual:v28];
  v30 = [kMALensSelectRight isEqual:v28];
  v31 = off_100127DD0;
  if (os_log_type_enabled(off_100127DD0, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v68 = v27;
    v69 = 2112;
    v70 = v26;
    v71 = 1024;
    v72 = v29;
    v73 = 1024;
    v74 = v30;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "lens enroll request for %@ recordUUID %@ leftOnly=%u rightOnly=%u", buf, 0x22u);
  }

  if ((axisL | l) < 0 && (v30 & 1) == 0)
  {
    dCopy = v26;
    dataCopy = v27;
    v32 = createManagedAssetError();
    if (os_log_type_enabled(off_100127DD0, OS_LOG_TYPE_ERROR))
    {
      sub_10003B54C();
    }

LABEL_15:
    replyCopy = v48;
    (v48)[2](v48, 0, 0, v32);

    v25 = v49;
    payloadCopy = v50;
    goto LABEL_28;
  }

  if ((axisR | r) < 0 && (v29 & 1) == 0)
  {
    dCopy = v26;
    dataCopy = v27;
    v32 = createManagedAssetError();
    if (os_log_type_enabled(off_100127DD0, OS_LOG_TYPE_ERROR))
    {
      sub_10003B5B4();
    }

    goto LABEL_15;
  }

  if (v29)
  {
    axisRCopy = -1;
  }

  else
  {
    axisRCopy = axisR;
  }

  if (v29)
  {
    rCopy = -1;
  }

  else
  {
    rCopy = r;
  }

  v43 = rCopy;
  v44 = axisRCopy;
  if (v30)
  {
    axisL = -1;
    l = -1;
  }

  v42 = MASDGetCoreRxDispatchQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003AFFC;
  block[3] = &unk_1001165E8;
  block[4] = selfCopy2;
  v52 = v26;
  v53 = attributesCopy;
  v47 = v28;
  v25 = v49;
  v54 = v49;
  dataCopy = v27;
  v55 = v27;
  payloadCopy = v50;
  v56 = v50;
  lCopy = l;
  v59 = v43;
  requiredLCopy = requiredL;
  requiredRCopy = requiredR;
  axisLCopy = axisL;
  v61 = v44;
  versionCopy = version;
  v65 = v29;
  v66 = v30;
  dCopy = v26;
  replyCopy = v48;
  v57 = v48;
  dispatch_sync(v42, block);

  v32 = v47;
LABEL_28:
}

+ (id)server
{
  v2 = [[MAServer alloc] initWithMachServiceName:@"com.apple.managedassetsd"];

  return v2;
}

- (MAServer)initWithMachServiceName:(id)name
{
  nameCopy = name;
  v5 = +[NSDate now];
  spawnTime = self->_spawnTime;
  self->_spawnTime = v5;

  v7 = kManagedAssetLogSubsystem;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = os_log_create(v7, [v9 UTF8String]);
  v11 = off_100127E38;
  off_100127E38 = v10;

  MASetMAServerKVStoreInit();
  MASetMAServerFileAssetInit();
  MASetMAServerCoreRxInit();
  MASetMAServerNotificationInit();
  MASetMAServerProfileInit();
  MASetMAServerAnchorPersistInit();
  MASetMAServerDebuggingInit();
  MACPRemoteAssetCacheInit();
  MAAssetKeyStateIMStoreInit();
  v12 = [NSSet setWithObjects:kManagedAssetsQueryOptionAssetType, kManagedAssetsQueryOptionLocalOnly, kManagedAssetsQueryOptionEntryOnly, kManagedAssetsSortOptionASCByUpdateTime, kManagedAssetsAssetStateKey, 0];
  v13 = qword_100129470;
  qword_100129470 = v12;

  v14 = [NSSet setWithObject:kManagedAssetsQueryOptionAssetList];
  v15 = qword_100129478;
  qword_100129478 = v14;

  v79.receiver = self;
  v79.super_class = MAServer;
  v16 = [(MAServer *)&v79 init];
  if (v16)
  {
    v17 = +[NSBundle mainBundle];
    bundleIdentifier = [v17 bundleIdentifier];

    v78 = 0;
    v19 = [NSRegularExpression regularExpressionWithPattern:@"^[_a-zA-Z0-9][\\-_a-zA-Z0-9]*(/[_a-zA-Z0-9][\\-_a-zA-Z0-9]*)*$" options:0 error:&v78];
    v20 = v78;
    v21 = *(v16 + 8);
    *(v16 + 8) = v19;

    if (v20)
    {
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
      {
        sub_10004F170();
      }

      goto LABEL_40;
    }

    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEBUG))
    {
      sub_10004F1E0(v16 + 8);
    }

    [bundleIdentifier UTF8String];
    _set_user_dir_suffix();
    v22 = NSTemporaryDirectory();
    if ([bundleIdentifier isEqualToString:@"com.apple.managedassetsd"])
    {
      v23 = *(v16 + 128) ^ 1;
    }

    else
    {
      v23 = 0;
      *(v16 + 128) = 1;
    }

    [CALogger initializeTimeBase:v23 & 1];
    +[_TtC6server14MAPurgeUtility initPurgeMarker];
    v24 = +[MAStorage defaultManager];
    v25 = *(v16 + 9);
    *(v16 + 9) = v24;

    if (*(v16 + 9))
    {
      v26 = [MASDUserProfile alloc];
      v27 = [(MASDUserProfile *)v26 initNewProfileWith:0 name:kMASDDefaultLocalUser type:-1];
      v28 = *(v16 + 10);
      *(v16 + 10) = v27;

      getLastSeenProfile = [*(v16 + 9) getLastSeenProfile];
      [v16 setProfile:getLastSeenProfile];

      v30 = off_100127E38;
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
      {
        v31 = v30;
        profile = [v16 profile];
        v33 = [profile debugDescription];
        *buf = 138412290;
        v81 = v33;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "last seen profile: %@", buf, 0xCu);
      }

      profile2 = [v16 profile];

      if (!profile2)
      {
        [*(v16 + 9) setLastSeenProfile:*(v16 + 10)];
        [v16 setProfile:*(v16 + 10)];
      }

      profile3 = [v16 profile];
      [v16 deleteAllProfiles:1 exclude:profile3 epoch:0];

      v36 = +[MAPolicyEngine sharedInstance];
      v37 = *(v16 + 3);
      *(v16 + 3) = v36;

      v38 = +[MANotificationEngine sharedInstance];
      v39 = *(v16 + 7);
      *(v16 + 7) = v38;

      v40 = +[NSMutableDictionary dictionary];
      v41 = *(v16 + 17);
      *(v16 + 17) = v40;

      v42 = +[NSMutableDictionary dictionary];
      v43 = *(v16 + 25);
      *(v16 + 25) = v42;

      *(v16 + 9) = xmmword_1000E5FC0;
      *(v16 + 129) = 0;
      v44 = +[NSMutableDictionary dictionary];
      v45 = *(v16 + 27);
      *(v16 + 27) = v44;

      *(v16 + 56) = 0;
      *(v16 + 58) = 0;
      *(v16 + 228) = 0;
      v46 = *(v16 + 31);
      *(v16 + 30) = 0;
      *(v16 + 31) = 0;

      v47 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v48 = dispatch_queue_create("com.apple.managedassetsd.xpc.serial", v47);
      v49 = *(v16 + 12);
      *(v16 + 12) = v48;

      if (*(v16 + 12))
      {
        v50 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v51 = dispatch_queue_create("com.apple.managedassetsd.cloudsync.serial", v50);
        v52 = *(v16 + 13);
        *(v16 + 13) = v51;

        if (*(v16 + 13))
        {
          v53 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v54 = dispatch_queue_create("com.apple.managedassetsd.xpc.concurrent", v53);
          v55 = *(v16 + 11);
          *(v16 + 11) = v54;

          if (*(v16 + 11))
          {
            v56 = +[MAKVStoreManager defaultManager];
            v57 = *(v16 + 5);
            *(v16 + 5) = v56;

            [v16 checkAndScheduleCallbackForFirstUnlock];
            v58 = +[MAFileStoreManager defaultManager];
            v59 = *(v16 + 4);
            *(v16 + 4) = v58;

            v60 = +[NSMapTable strongToStrongObjectsMapTable];
            v61 = *(v16 + 15);
            *(v16 + 15) = v60;

            *buf = 0;
            v62 = *(v16 + 12);
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 3221225472;
            handler[2] = sub_10003C1F4;
            handler[3] = &unk_100116610;
            v63 = v16;
            v77 = v63;
            if (notify_register_dispatch("com.apple.mobile.keybagd.lock_status", buf, v62, handler) && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
            {
              sub_10004F250();
            }

            [v63 getDeviceStatus];
            v64 = [MAUtilityHelper readIntValueFromUserDefaultsWithKey:@"RetentionEpoch" defaultValue:1440];
            [v63 registerSystemBackgoundTasks];
            if (v64 != 1440)
            {
              v63[23] = v64;
              [v63 updateBGTaskSchedulerDynamically];
            }

            [*(v16 + 5) setMAServer:v63];
            v65 = *(v16 + 9);
            v74[0] = _NSConcreteStackBlock;
            v74[1] = 3221225472;
            v74[2] = sub_10003C1FC;
            v74[3] = &unk_100116660;
            v66 = v63;
            v75 = v66;
            [_TtC6server14MAPurgeUtility setupWithStorage:v65 syncManager:v74];
            v67 = +[_TtC6server14MAPurgeUtility shared];
            v68 = v66[26];
            v66[26] = v67;

            [v66[26] registerCacheDeleteCallback];
            [v66[26] registerPostInstallBGTask];
            v69 = [[NSXPCListener alloc] initWithMachServiceName:nameCopy];
            v70 = v66[22];
            v66[22] = v69;

            [v66[22] setDelegate:v66];
            v71 = off_100127E38;
            if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
            {
              *v73 = 0;
              _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Finish MA Daemon Server initialization. release build.", v73, 2u);
            }

            [*(v16 + 7) notifyDaemonLaunched];

            v20 = 0;
            v16 = v66;
            goto LABEL_43;
          }

          if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
          {
            sub_10004F28C();
          }
        }

        else if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
        {
          sub_10004F2C8();
        }
      }

      else if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
      {
        sub_10004F304();
      }
    }

    else if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_10004F340();
    }

    v20 = createManagedAssetError();

    if (v20)
    {
LABEL_40:
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
      {
        sub_10004F37C();
      }

      bundleIdentifier = v16;
      v16 = 0;
LABEL_43:
    }
  }

  else
  {
    v20 = 0;
  }

  return v16;
}

- (_TtC6server18MACloudSyncManager)cloudSyncManager
{
  dispatch_assert_queue_V2(self->_cloudSyncSerialQueue);
  cloudSyncManager = self->__cloudSyncManager;
  if (!cloudSyncManager)
  {
    v4 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting cloudSyncManager as it's nil", buf, 2u);
    }

    v5 = [[_TtC6server18MACloudSyncManager alloc] initWithStorage:self->_storage delegate:self];
    v6 = self->__cloudSyncManager;
    self->__cloudSyncManager = v5;

    v7 = dispatch_semaphore_create(0);
    v8 = self->__cloudSyncManager;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003C510;
    v12[3] = &unk_100116118;
    v9 = v7;
    v13 = v9;
    [(MACloudSyncManager *)v8 startWithCompletionHandler:v12];
    if (dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL) && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_10004F3EC();
    }

    v10 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "cloudSyncManager is available", buf, 2u);
    }

    atomic_fetch_add_explicit(&self->_cloudSyncManagerStarted, 1u, memory_order_relaxed);
    [(MAServer *)self uploadOldAssetsOnStartup];

    cloudSyncManager = self->__cloudSyncManager;
  }

  return cloudSyncManager;
}

- (void)start
{
  [(NSXPCListener *)self->_listener resume];
  v3 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "server is listening connections", v4, 2u);
  }

  [(MAServer *)self startCloudSyncManager];
}

- (void)stop
{
  v3 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "stop the MA daemon server", v4, 2u);
  }

  [(MAStorage *)self->_storage wipeIdentityFolderForPresence];
  [(NSXPCListener *)self->_listener invalidate];
  [(MAStorage *)self->_storage close];
  [(MAFileStoreManager *)self->_fileStoreManager close];
  [(MAKVStoreManager *)self->_kvStoreManager close];
}

- (void)deviceFirstUnlockSinceBoot
{
  atomic_fetch_add_explicit(&self->_firstUnlocked, 1u, memory_order_relaxed);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C754;
  block[3] = &unk_100115E70;
  block[4] = self;
  if (qword_100129460 != -1)
  {
    dispatch_once(&qword_100129460, block);
  }
}

- (void)queryForA06AssetHandlesInClassC
{
  storage = self->_storage;
  v10 = 0;
  v4 = [(MAStorage *)storage queryA06AssetsWithError:&v10];
  v5 = v10;
  if (v5)
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_10004F498();
    }
  }

  else
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003C8CC;
    block[3] = &unk_100115E20;
    v8 = v4;
    selfCopy = self;
    dispatch_async(serialQueue, block);
  }
}

- (BOOL)isAssetClassC:(id)c
{
  cCopy = c;
  v5 = [(MAStorage *)self->_storage getAssetPathFromAssetHandle:cCopy];
  v6 = +[NSFileManager defaultManager];
  v12 = 0;
  v7 = [v6 attributesOfItemAtPath:v5 error:&v12];
  v8 = v12;

  if (v8)
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_10004F508();
    }

    v9 = 0;
  }

  else
  {
    v10 = [v7 objectForKeyedSubscript:NSFileProtectionKey];
    v9 = [v10 isEqualToString:NSFileProtectionCompleteUntilFirstUserAuthentication];
  }

  return v9;
}

- (void)checkAndScheduleCallbackForFirstUnlock
{
  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    v3 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "the device has been unlocked at least once, run the FUB actions", buf, 2u);
    }

LABEL_11:
    [(MAServer *)self deviceFirstUnlockSinceBoot];
    return;
  }

  *buf = -1;
  concurrentQueue = self->_concurrentQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10003CCB8;
  handler[3] = &unk_100116610;
  handler[4] = self;
  if (notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", buf, concurrentQueue, handler))
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_10004F574();
    }
  }

  else
  {
    if (MKBDeviceUnlockedSinceBoot() == 1)
    {
      v5 = off_100127E38;
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "device was unlocked during notify_register_dispatch()", v7, 2u);
      }

      notify_cancel(*buf);
      goto LABEL_11;
    }

    self->_deviceState = 0;
    v6 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Before 1st unlock", v7, 2u);
    }
  }
}

- (void)deviceUnlock
{
  self->_deviceState = 2;
  v3 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Device is unlocked", buf, 2u);
  }

  [(MAServer *)self convertAssetCaches];
  [(MARemoteAssetsManager *)self->_remoteAssetsManager deviceDidUnlock];
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003CE20;
  block[3] = &unk_100115E70;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)convertA06AssetsToClassA:(unint64_t)a
{
  v21 = +[NSMutableArray array];
  v4 = +[NSDate now];
  v5 = [v4 dateByAddingTimeInterval:-self->_a06ClassCExpiryPeriodInSeconds];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_a06AssetHandlesInClassC;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v24;
    *&v8 = 138412546;
    v20 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [(NSMutableDictionary *)self->_a06AssetHandlesInClassC objectForKeyedSubscript:v13, v20];
        v15 = [(MAServer *)self isAssetReadyToBeConverted:v14 expirationDate:v5];

        if (v15)
        {
          v22 = v10;
          v16 = [(MAServer *)self convertAssetToClassA:v13 error:&v22];
          v17 = v22;

          if (v16)
          {
            [v21 addObject:v13];
            v18 = off_100127E38;
            if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v28 = v13;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "handle %@ has been added to doneHandles", buf, 0xCu);
            }
          }

          else
          {
            v19 = off_100127E38;
            if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
            {
              *buf = v20;
              v28 = v13;
              v29 = 2112;
              v30 = v17;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "handle %@ has not been converted to Class A, error=%@", buf, 0x16u);
            }
          }

          v10 = v17;
        }
      }

      v9 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  [(NSMutableDictionary *)self->_a06AssetHandlesInClassC removeObjectsForKeys:v21];
}

- (BOOL)isAssetReadyToBeConverted:(id)converted expirationDate:(id)date
{
  convertedCopy = converted;
  dateCopy = date;
  [convertedCopy doubleValue];
  v8 = [NSDate dateWithTimeIntervalSince1970:?];
  v9 = [dateCopy compare:v8];

  v10 = off_100127E38;
  v11 = os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEBUG);
  if (v9 == 1)
  {
    if (v11)
    {
      sub_10004F6E8(self, v10, convertedCopy);
    }
  }

  else if (v11)
  {
    sub_10004F624(self, v10, convertedCopy);
  }

  return v9 == 1;
}

- (BOOL)convertAssetToClassA:(id)a error:(id *)error
{
  aCopy = a;
  v7 = [(MAStorage *)self->_storage getAssetPathFromAssetHandle:aCopy];
  v8 = +[NSFileManager defaultManager];
  v9 = [v8 fileExistsAtPath:v7];

  if (v9)
  {
    v10 = +[NSFileManager defaultManager];
    v18 = NSFileProtectionKey;
    v19 = NSFileProtectionComplete;
    v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v12 = [v10 setAttributes:v11 ofItemAtPath:v7 error:error];

    if (v12)
    {
      v13 = off_100127E38;
      v14 = 1;
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = aCopy;
        v15 = "converted to class A for handle %@";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v15, buf, 0xCu);
      }
    }

    else
    {
      v17 = *error;
      *error = createManagedAssetError();
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
      {
        sub_10004F7AC(aCopy, error);
      }

      v14 = 0;
    }
  }

  else
  {
    v13 = off_100127E38;
    v14 = 1;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = aCopy;
      v15 = "File does not exist for handle %@";
      goto LABEL_7;
    }
  }

  return v14;
}

- (void)convertAssetCaches
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003D47C;
  block[3] = &unk_100115E70;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)getDeviceStatus
{
  if (MKBDeviceUnlockedSinceBoot())
  {
    v3 = MKBGetDeviceLockState();
    if ((v3 - 1) < 2)
    {
      self->_deviceState = 1;
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEBUG))
      {
        sub_10004F814();
      }
    }

    else if (v3 && v3 != 3)
    {
      self->_deviceState = 2;
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
      {
        sub_10004F850();
      }
    }

    else
    {
      [(MAServer *)self deviceUnlock];
    }
  }

  v4 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
  {
    deviceState = self->_deviceState;
    v6 = 134217984;
    v7 = deviceState;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "device state: %lu", &v6, 0xCu);
  }
}

- (void)deleteVolatileProfiles:(id)profiles
{
  profilesCopy = profiles;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = sub_10003C300;
  v12[4] = sub_10003C310;
  v13 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003DA6C;
  v7[3] = &unk_1001166B0;
  v7[4] = self;
  v8 = profilesCopy;
  v9 = v12;
  v10 = v11;
  v6 = profilesCopy;
  dispatch_async(serialQueue, v7);

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v12, 8);
}

- (void)deleteAllProfiles:(unint64_t)profiles exclude:(id)exclude epoch:(int64_t)epoch
{
  excludeCopy = exclude;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_10003C300;
  v25[4] = sub_10003C310;
  v26 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  storage = self->_storage;
  obj = 0;
  v10 = [(MAStorage *)storage getInactiveProfilesWith:epoch profileType:profiles error:&obj];
  objc_storeStrong(&v26, obj);
  v11 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    profilesCopy = profiles;
    v29 = 2048;
    epochCopy = epoch;
    v31 = 2112;
    v32 = v10;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "profile listed to be deleted (for profile type %lu, epoch:%lu mins): %@", buf, 0x20u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003DE94;
  v15[3] = &unk_1001166D8;
  v12 = excludeCopy;
  v16 = v12;
  selfCopy = self;
  v18 = v25;
  v19 = &v21;
  [v10 enumerateObjectsUsingBlock:v15];
  v13 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    v14 = v22[3];
    *buf = 134217984;
    profilesCopy = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Delete %lu profile(s)", buf, 0xCu);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(v25, 8);
}

- (void)registerSystemBackgoundTasks
{
  v3 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "registerSystemBackgoundTasks", buf, 2u);
  }

  v4 = [MAUtilityHelper readIntValueFromUserDefaultsWithKey:@"RemoteAssetCheckupIntervalFactor" defaultValue:24];
  v5 = +[BGSystemTaskScheduler sharedScheduler];
  [v5 deregisterTaskWithIdentifier:@"com.apple.managedassets.repeatingTask"];

  v6 = +[BGSystemTaskScheduler sharedScheduler];
  serialQueue = self->_serialQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003E110;
  v8[3] = &unk_100116700;
  v8[4] = self;
  v9 = v4;
  [v6 registerForTaskWithIdentifier:@"com.apple.managedassets.repeatingTask" usingQueue:serialQueue launchHandler:v8];
}

- (void)updateBGTaskSchedulerDynamically
{
  p_retentionEpoch = &self->_retentionEpoch;
  if (self->_retentionEpoch > 0x12B)
  {
    v3 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.managedassets.repeatingTask"];
    [v3 setRequiresNetworkConnectivity:0];
    [v3 setRequiresExternalPower:0];
    [v3 setInterval:*p_retentionEpoch];
    [v3 setMinDurationBetweenInstances:*p_retentionEpoch * 0.8];
    v4 = +[BGSystemTaskScheduler sharedScheduler];
    v9 = 0;
    v5 = [v4 updateTaskRequest:v3 error:&v9];
    v6 = v9;

    v7 = off_100127E38;
    if (v5)
    {
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
      {
        v8 = *p_retentionEpoch;
        *buf = 134217984;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "updateBGTaskSchedulerDynamically with _retentionEpoch: %lu", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_10004FAA0();
    }
  }

  else if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_10004FB20(p_retentionEpoch);
  }
}

- (void)handleRepeatingTask:(id)task intervalFactor:(int)factor
{
  taskCopy = task;
  v7 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = factor;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "start handling bgTask with intervalFactor: %d", buf, 8u);
  }

  add_explicit = atomic_fetch_add_explicit(dword_100129468, 1u, memory_order_relaxed);
  v9 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "com.apple.managedassets.xpc_activity.maintainer";
    *&buf[12] = 1024;
    *&buf[14] = add_explicit;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Perform %s activity, runningCount=%d", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v16 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003E58C;
  v14[3] = &unk_100116728;
  v14[4] = buf;
  [taskCopy setExpirationHandler:v14];
  if (*(*&buf[8] + 24) == 1)
  {
    v10 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "task expiration, terminate bgTask.", v13, 2u);
    }
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003E5A0;
    v12[3] = &unk_100116750;
    v12[4] = self;
    [(MAServer *)self fetchSigninUserWithCompletionHandler:v12];
    [(MAPurgeUtility *)self->_purgeUtility checkPurgedMark:1 completionHandler:&stru_100116790];
  }

  [taskCopy setTaskCompleted];
  v11 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "bgTask complete", v13, 2u);
  }

  _Block_object_dispose(buf, 8);
}

- (void)deleteInactivePersistentGuests
{
  v3 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
  {
    persistProfileExpiryPeriodInMinutes = self->_persistProfileExpiryPeriodInMinutes;
    v6 = 134217984;
    v7 = persistProfileExpiryPeriodInMinutes;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "going to delete inactive persisted guests with epoch %ld", &v6, 0xCu);
  }

  [(MAServer *)self deleteAllProfiles:2 exclude:self->_profile epoch:self->_persistProfileExpiryPeriodInMinutes];
  v5 = +[NSDate now];
  [(MAServer *)self setLastCheckedInactiveGuestTime:v5];
}

- (BOOL)isTimeToCheckInactivePersistedGuest
{
  v3 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
  {
    inactivePersistedGuestCheckPeriodInMinutes = self->_inactivePersistedGuestCheckPeriodInMinutes;
    v13 = 134217984;
    v14 = inactivePersistedGuestCheckPeriodInMinutes;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "check if it's time to check for inactive persisted guest with check period: %ld (in min)", &v13, 0xCu);
  }

  lastCheckedInactiveGuestTime = [(MAServer *)self lastCheckedInactiveGuestTime];
  [lastCheckedInactiveGuestTime timeIntervalSince1970];
  v7 = v6;

  if (v7 <= 0.0)
  {
    return 1;
  }

  v8 = self->_inactivePersistedGuestCheckPeriodInMinutes * -60.0;
  v9 = +[NSDate date];
  [v9 timeIntervalSince1970];
  v11 = v10;

  return v7 <= v11 + v8;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003EA54;
  v18[3] = &unk_1001167B8;
  v20 = processIdentifier;
  v18[4] = self;
  v7 = connectionCopy;
  v19 = v7;
  [v7 setInvalidationHandler:v18];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10003EB3C;
  v14 = &unk_1001167B8;
  v17 = processIdentifier;
  selfCopy = self;
  v8 = v7;
  v16 = v8;
  [v8 setInterruptionHandler:&v11];
  selfCopy = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ManagedAssetsServerProtocol, v11, v12, v13, v14, selfCopy];
  [v8 setExportedInterface:selfCopy];

  [v8 setExportedObject:self];
  [v8 resume];
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEBUG))
  {
    sub_10004FC00();
  }

  return 1;
}

- (BOOL)checkProfile:(id)profile profileNameOut:(id *)out error:(id *)error
{
  profileCopy = profile;
  profile = [(MAServer *)self profile];
  profileName = [profile profileName];

  if (profileCopy && ([profileName isEqual:profileCopy] & 1) == 0)
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_10004FC70();
    }

    createManagedAssetError();
    *error = v12 = 0;
  }

  else
  {
    if (out)
    {
      v11 = profileName;
      *out = profileName;
    }

    v12 = 1;
  }

  return v12;
}

- (BOOL)checkProfileForQueryKVStore:(id)store profileNameOut:(id *)out error:(id *)error
{
  storeCopy = store;
  profile = [(MAServer *)self profile];
  profileName = [profile profileName];

  if (storeCopy && ([profileName isEqual:storeCopy] & 1) == 0)
  {
    storage = self->_storage;
    v14 = [[NSUUID alloc] initWithUUIDString:storeCopy];
    v15 = [(MAStorage *)storage getProfile:v14 error:error];

    if (*error)
    {
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
      {
        sub_10004FCAC(storeCopy, error);
      }
    }

    else
    {
      v16 = [NSMutableArray arrayWithObject:&off_10011E018];
      v17 = [(MAServer *)self checkProfileTypeForQueryKVStore:v15 profileTypes:v16 error:error];

      if (v17)
      {
        v18 = storeCopy;
        *out = storeCopy;
        v12 = 1;
LABEL_12:

        goto LABEL_13;
      }
    }

    v12 = 0;
    goto LABEL_12;
  }

  if (out)
  {
    v11 = profileName;
    *out = profileName;
  }

  v12 = 1;
LABEL_13:

  return v12;
}

- (BOOL)checkProfileTypeForQueryKVStore:(id)store profileTypes:(id)types error:(id *)error
{
  typesCopy = types;
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [store profileType]);
  v9 = [typesCopy containsObject:v8];

  if ((v9 & 1) == 0)
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_10004FD14();
    }

    *error = createManagedAssetError();
  }

  return v9;
}

- (BOOL)canTouchAsset:(id)asset clientBundle:(id)bundle error:(id *)error
{
  assetCopy = asset;
  bundleCopy = bundle;
  profile = [(MAServer *)self profile];
  profileType = [profile profileType];

  deviceState = self->_deviceState;
  if (profileType == 1)
  {
    if (!deviceState)
    {
      if (([assetCopy isEqualToString:NSFileProtectionComplete] & 1) != 0 || objc_msgSend(assetCopy, "isEqualToString:", NSFileProtectionCompleteUntilFirstUserAuthentication))
      {
        if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
        {
          sub_10004FD84();
        }

        goto LABEL_29;
      }

      deviceState = self->_deviceState;
    }

    if (deviceState == 1 && [assetCopy isEqualToString:NSFileProtectionComplete])
    {
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
      {
        sub_10004FDC0();
      }

LABEL_29:
      createManagedAssetError();
      *error = v16 = 0;
      goto LABEL_30;
    }
  }

  else
  {
    if (!deviceState)
    {
      if (([assetCopy isEqualToString:NSFileProtectionComplete] & 1) == 0)
      {
        if (MKBDeviceUnlockedSinceBoot() != 1)
        {
          if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
          {
            sub_10004FD84();
          }

          goto LABEL_29;
        }

        v13 = mach_continuous_time();
        v14 = createManagedAssetError();
        [(MAServer *)self deviceFirstUnlockSinceBoot];
        [CALogger logWithCoreAnalytics:"KeybagNotificationDelayed" clientBundle:bundleCopy startTS:v13 error:v14];
        [(MAServer *)self getDeviceStatus];
        v15 = off_100127E38;
        if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
        {
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "The device has been unlocked at least once, run FUB actions", v18, 2u);
        }

        goto LABEL_25;
      }

      deviceState = self->_deviceState;
    }

    if (deviceState == 1 && [assetCopy isEqualToString:NSFileProtectionComplete])
    {
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
      {
        sub_10004FDC0();
      }

      goto LABEL_29;
    }
  }

LABEL_25:
  v16 = 1;
LABEL_30:

  return v16;
}

- (void)CreateAsset:(id)asset uuid:(id)uuid sessionToken:(id)token completion:(id)completion
{
  assetCopy = asset;
  uuidCopy = uuid;
  tokenCopy = token;
  completionCopy = completion;
  v71 = 0;
  v72[0] = &v71;
  v72[1] = 0x3032000000;
  v72[2] = sub_10003C300;
  v72[3] = sub_10003C310;
  v73 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = sub_10003C300;
  v69 = sub_10003C310;
  v70 = 0;
  v13 = mach_continuous_time();
  v14 = +[NSXPCConnection currentConnection];
  v15 = v14;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_10003C300;
  v63 = sub_10003C310;
  if (self->_isXCTest)
  {
    v16 = @"xctest";
  }

  else
  {
    if (v14)
    {
      [v14 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v16 = [MAUtilityHelper getClientBundleIdentifier:buf];
  }

  v64 = v16;
  v58 = 0;
  v57 = 0;
  -[MAServer parseSyncOptions:localOnly:cloudOnly:localAndCloud:](self, "parseSyncOptions:localOnly:cloudOnly:localAndCloud:", [assetCopy syncOption], &v58, &v57, &v58 + 1);
  type = [assetCopy type];
  profile = [(MAServer *)self profile];
  v19 = +[MAUtilityHelper determinePClassWith:profileType:deviceState:](MAUtilityHelper, "determinePClassWith:profileType:deviceState:", type, [profile profileType], self->_deviceState);

  if (v57 == 1)
  {
    v40 = kManagedAssetsSyncKey;
    v20 = createManagedAssetError();
    v21 = *(v72[0] + 40);
    *(v72[0] + 40) = v20;

    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_10004FECC(v72);
    }
  }

  else
  {
    v22 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
    {
      v23 = "no";
      if (HIBYTE(v58))
      {
        v24 = "yes";
      }

      else
      {
        v24 = "no";
      }

      if (v58)
      {
        v25 = "yes";
      }

      else
      {
        v25 = "no";
      }

      *buf = 136315650;
      *&buf[4] = v24;
      if (v57)
      {
        v23 = "yes";
      }

      *&buf[12] = 2080;
      *&buf[14] = v25;
      *&buf[22] = 2080;
      *&buf[24] = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "sync options are local&sync:%s, localonly:%s, synconly:%s", buf, 0x20u);
    }

    v26 = off_100127E38;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_10004FDFC(v19, buf, [assetCopy type], v26);
    }

    v27 = v60[5];
    v28 = v72[0];
    obj = *(v72[0] + 40);
    v29 = [(MAServer *)self canTouchAsset:v19 clientBundle:v27 error:&obj];
    objc_storeStrong((v28 + 40), obj);
    if (v29)
    {
      if (assetCopy && ([assetCopy isValid] & 1) != 0)
      {
        v30 = v72[0];
        v55 = *(v72[0] + 40);
        v31 = [(MAServer *)self checkProfile:uuidCopy profileNameOut:0 error:&v55];
        objc_storeStrong((v30 + 40), v55);
        if (v31)
        {
          if (tokenCopy)
          {
            policyEngine = self->_policyEngine;
            type2 = [assetCopy type];
            v33 = NSStringFromSelector(a2);
            v34 = v72[0];
            v54 = *(v72[0] + 40);
            LODWORD(policyEngine) = [(MAPolicyEngine *)policyEngine verifyAccessWithSingleAssetType:kManagedAssetCreateEntitlement client:v15 assetType:type2 function:v33 error:&v54];
            objc_storeStrong((v34 + 40), v54);

            if (policyEngine)
            {
              serialQueue = self->_serialQueue;
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_10003F8EC;
              block[3] = &unk_1001167E0;
              block[4] = self;
              v45 = tokenCopy;
              v46 = assetCopy;
              v49 = &v71;
              v50 = &v59;
              v53 = v58;
              v47 = v19;
              v51 = &v65;
              v48 = completionCopy;
              v52 = v13;
              dispatch_sync(serialQueue, block);

              goto LABEL_35;
            }
          }

          else
          {
            if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
            {
              sub_10004FE54();
            }

            v38 = createManagedAssetError();
            v39 = *(v72[0] + 40);
            *(v72[0] + 40) = v38;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
        {
          sub_10004FE90();
        }

        v36 = createManagedAssetError();
        v37 = *(v72[0] + 40);
        *(v72[0] + 40) = v36;
      }
    }
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v66[5], *(v72[0] + 40));
  }

  [CALogger logWithCoreAnalytics:"[MAServer CreateAsset:uuid:sessionToken:completion:]" clientBundle:v60[5] startTS:v13 error:*(v72[0] + 40), v40];
LABEL_35:

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v65, 8);

  _Block_object_dispose(&v71, 8);
}

- (void)recoverRemoteAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  v9 = mach_continuous_time();
  v10 = +[NSXPCConnection currentConnection];
  v21 = 0;
  if (!assetCopy || ([assetCopy isValidAssetHandle:&v21] & 1) == 0)
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100050124();
    }

    goto LABEL_11;
  }

  if ((v21 & 1) == 0)
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_10005007C();
    }

LABEL_11:
    v17 = createManagedAssetError();
    goto LABEL_12;
  }

  policyEngine = self->_policyEngine;
  v12 = kManagedAssetShareEntitlement;
  v13 = NSStringFromSelector(a2);
  v20 = 0;
  LODWORD(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:v12 client:v10 function:v13 error:&v20];
  v14 = v20;

  if (policyEngine)
  {
    remoteAssetsManager = self->_remoteAssetsManager;
    v19 = v14;
    v16 = [(MARemoteAssetsManager *)remoteAssetsManager recoverAsset:assetCopy error:&v19];
    v17 = v19;

    if ((v16 & 1) == 0 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_1000500B8();
      if (!completionCopy)
      {
        goto LABEL_14;
      }

LABEL_13:
      completionCopy[2](completionCopy, v17);
      goto LABEL_14;
    }

LABEL_12:
    if (!completionCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v17 = v14;
  if (completionCopy)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (v10)
  {
    [v10 auditToken];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  [CALogger logWithCoreAnalytics:"[MAServer recoverRemoteAsset:completion:]" client:v18 startTS:v9 error:v17];
}

- (void)DeleteAsset:(id)asset uuid:(id)uuid completion:(id)completion
{
  assetCopy = asset;
  uuidCopy = uuid;
  completionCopy = completion;
  v43 = 0;
  v44[0] = &v43;
  v44[1] = 0x3032000000;
  v44[2] = sub_10003C300;
  v44[3] = sub_10003C310;
  v45 = 0;
  v12 = mach_continuous_time();
  v13 = +[NSXPCConnection currentConnection];
  v14 = v13;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_10003C300;
  v41[4] = sub_10003C310;
  if (self->_isXCTest)
  {
    v15 = @"xctest";
  }

  else
  {
    if (v13)
    {
      [v13 auditToken];
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
    }

    v15 = [MAUtilityHelper getClientBundleIdentifier:&v39];
  }

  v42 = v15;
  v38 = 0;
  if (assetCopy && ([assetCopy isValidAssetHandle:&v38] & 1) != 0)
  {
    if (v38 == 1)
    {
      policyEngine = self->_policyEngine;
      v17 = NSStringFromSelector(a2);
      v18 = v44[0];
      obj = *(v44[0] + 40);
      LODWORD(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:kManagedAssetShareEntitlement client:v14 function:v17 error:&obj];
      objc_storeStrong((v18 + 40), obj);

      if (policyEngine)
      {
        remoteAssetsManager = self->_remoteAssetsManager;
        v20 = v44[0];
        v36 = *(v44[0] + 40);
        v21 = [(MARemoteAssetsManager *)remoteAssetsManager deleteAsset:assetCopy error:&v36];
        objc_storeStrong((v20 + 40), v36);
        if ((v21 & 1) == 0 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
        {
          sub_100050160(assetCopy, v44);
        }
      }
    }

    else
    {
      v24 = v44[0];
      v35 = *(v44[0] + 40);
      v25 = [(MAServer *)self checkProfile:uuidCopy profileNameOut:0 error:&v35];
      objc_storeStrong((v24 + 40), v35);
      if (v25)
      {
        serialQueue = self->_serialQueue;
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_100040688;
        v27[3] = &unk_100116808;
        v27[4] = self;
        v28 = assetCopy;
        v31 = &v43;
        v29 = v14;
        v32 = v41;
        v33 = a2;
        v30 = completionCopy;
        v34 = v12;
        dispatch_async(serialQueue, v27);

        goto LABEL_23;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100050124();
    }

    v22 = createManagedAssetError();
    v23 = *(v44[0] + 40);
    *(v44[0] + 40) = v22;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, *(v44[0] + 40));
  }

  if (v14)
  {
    [v14 auditToken];
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  [CALogger logWithCoreAnalytics:"[MAServer DeleteAsset:uuid:completion:]" client:&v39 startTS:v12 error:*(v44[0] + 40)];
LABEL_23:
  _Block_object_dispose(v41, 8);

  _Block_object_dispose(&v43, 8);
}

- (void)DeleteAsset:(id)asset withOptions:(id)options completion:(id)completion
{
  assetCopy = asset;
  optionsCopy = options;
  completionCopy = completion;
  v62 = 0;
  v63[0] = &v62;
  v63[1] = 0x3032000000;
  v63[2] = sub_10003C300;
  v63[3] = sub_10003C310;
  v64 = 0;
  v11 = mach_continuous_time();
  v12 = +[NSXPCConnection currentConnection];
  v13 = v12;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3032000000;
  v60[3] = sub_10003C300;
  v60[4] = sub_10003C310;
  if (self->_isXCTest)
  {
    v14 = @"xctest";
  }

  else
  {
    if (v12)
    {
      [v12 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v14 = [MAUtilityHelper getClientBundleIdentifier:buf];
  }

  v40 = v11;
  v61 = v14;
  v15 = kManagedAssetsProfileUUIDKey;
  v41 = [optionsCopy objectForKeyedSubscript:{kManagedAssetsProfileUUIDKey, a2}];
  v16 = kManagedAssetsSyncKey;
  v17 = [optionsCopy objectForKeyedSubscript:kManagedAssetsSyncKey];
  intValue = [v17 intValue];
  v19 = v63[0];
  obj = *(v63[0] + 40);
  v20 = sub_100041338(optionsCopy, &obj);
  objc_storeStrong((v19 + 40), obj);
  if (v20)
  {
    v21 = [optionsCopy objectForKeyedSubscript:v15];
    if (v21 || ([optionsCopy objectForKeyedSubscript:v16], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else if ([optionsCopy count])
    {
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
      {
        sub_1000503DC();
      }

      v37 = createManagedAssetError();
      v38 = *(v63[0] + 40);
      *(v63[0] + 40) = v37;

      goto LABEL_31;
    }

    v58 = 0;
    v57 = 0;
    [(MAServer *)self parseSyncOptions:intValue localOnly:&v58 cloudOnly:&v57 localAndCloud:&v58 + 1];
    v22 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
    {
      v23 = "no";
      if (HIBYTE(v58))
      {
        v24 = "yes";
      }

      else
      {
        v24 = "no";
      }

      if (v58)
      {
        v25 = "yes";
      }

      else
      {
        v25 = "no";
      }

      *buf = 136315650;
      *&buf[4] = v24;
      if (v57)
      {
        v23 = "yes";
      }

      *&buf[12] = 2080;
      *&buf[14] = v25;
      *&buf[22] = 2080;
      *&buf[24] = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "sync options are local&sync:%s, localonly:%s, synconly:%s", buf, 0x20u);
    }

    v56 = 0;
    if (assetCopy && ([assetCopy isValidAssetHandle:&v56] & 1) != 0)
    {
      if (v56 == 1)
      {
        policyEngine = self->_policyEngine;
        v27 = NSStringFromSelector(aSelector);
        v28 = v63[0];
        v55 = *(v63[0] + 40);
        LODWORD(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:kManagedAssetShareEntitlement client:v13 function:v27 error:&v55];
        objc_storeStrong((v28 + 40), v55);

        if (policyEngine)
        {
          remoteAssetsManager = self->_remoteAssetsManager;
          v30 = v63[0];
          v54 = *(v63[0] + 40);
          v31 = [(MARemoteAssetsManager *)remoteAssetsManager deleteAsset:assetCopy error:&v54];
          objc_storeStrong((v30 + 40), v54);
          if ((v31 & 1) == 0 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
          {
            sub_100050160(assetCopy, v63);
          }
        }
      }

      else
      {
        v34 = v63[0];
        v53 = *(v63[0] + 40);
        v35 = [(MAServer *)self checkProfile:v41 profileNameOut:0 error:&v53];
        objc_storeStrong((v34 + 40), v53);
        if (v35)
        {
          serialQueue = self->_serialQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100041574;
          block[3] = &unk_100116858;
          block[4] = self;
          v44 = assetCopy;
          v47 = &v62;
          v51 = v57;
          v45 = v13;
          v48 = v60;
          v49 = aSelector;
          v52 = v58;
          v46 = completionCopy;
          v50 = v40;
          dispatch_async(serialQueue, block);

          goto LABEL_37;
        }
      }
    }

    else
    {
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
      {
        sub_100050124();
      }

      v32 = createManagedAssetError();
      v33 = *(v63[0] + 40);
      *(v63[0] + 40) = v32;
    }
  }

LABEL_31:
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, *(v63[0] + 40));
  }

  if (v13)
  {
    [v13 auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  [CALogger logWithCoreAnalytics:"[MAServer DeleteAsset:withOptions:completion:]" client:buf startTS:v40 error:*(v63[0] + 40)];
LABEL_37:

  _Block_object_dispose(v60, 8);
  _Block_object_dispose(&v62, 8);
}

- (void)DeleteAssetsWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_10003C300;
  v58 = sub_10003C310;
  v59 = 0;
  v9 = mach_continuous_time();
  v10 = +[NSXPCConnection currentConnection];
  v11 = kManagedAssetsProfileUUIDKey;
  [optionsCopy objectForKeyedSubscript:kManagedAssetsProfileUUIDKey];
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = sub_10003C300;
  v28 = v52[4] = sub_10003C310;
  if (self->_isXCTest)
  {
    v12 = @"xctest";
  }

  else
  {
    if (v10)
    {
      [v10 auditToken];
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
    }

    v12 = [MAUtilityHelper getClientBundleIdentifier:&v48];
  }

  v53 = v12;
  *&v48 = 0;
  *(&v48 + 1) = &v48;
  *&v49 = 0x3032000000;
  *(&v49 + 1) = sub_10003C300;
  v50 = sub_10003C310;
  v51 = 0;
  v13 = v55;
  obj = v55[5];
  v14 = sub_100041338(optionsCopy, &obj);
  objc_storeStrong(v13 + 5, obj);
  if ((v14 & 1) == 0)
  {
    goto LABEL_22;
  }

  v15 = [optionsCopy objectForKeyedSubscript:v11];
  if (v15 || ([optionsCopy objectForKeyedSubscript:kManagedAssetsSyncKey], (v15 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(optionsCopy, "objectForKeyedSubscript:", kManagedAssetsRXUUIDKey), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else if ([optionsCopy count])
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_1000503DC();
    }

    v26 = createManagedAssetError();
    v27 = v55[5];
    v55[5] = v26;

    goto LABEL_22;
  }

  policyEngine = self->_policyEngine;
  v17 = +[NSXPCConnection currentConnection];
  v18 = NSStringFromSelector(a2);
  v19 = v55;
  v46 = v55[5];
  LODWORD(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:kManagedAssetDeleteAllEntitlement client:v17 function:v18 error:&v46];
  objc_storeStrong(v19 + 5, v46);

  if (!policyEngine || (v20 = v55, v45 = v55[5], v21 = [(MAServer *)self checkProfile:v28 profileNameOut:0 error:&v45], objc_storeStrong(v20 + 5, v45), !v21))
  {
LABEL_22:
    if (completionCopy)
    {
      (completionCopy)[2](completionCopy, v55[5]);
    }

    if (v10)
    {
      [v10 auditToken];
    }

    else
    {
      memset(v29, 0, sizeof(v29));
    }

    [CALogger logWithCoreAnalytics:"[MAServer DeleteAssetsWithOptions:completion:]" client:v29 startTS:v9 error:v55[5]];
    goto LABEL_28;
  }

  v22 = v28;
  if (!v28)
  {
    v24 = [optionsCopy objectForKeyedSubscript:kManagedAssetsRXUUIDKey];

    if (v24)
    {
      serialQueue = self->_serialQueue;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000424A4;
      v30[3] = &unk_100116880;
      v31 = optionsCopy;
      selfCopy = self;
      v35 = &v48;
      v36 = &v54;
      v37 = v52;
      v34 = completionCopy;
      v33 = v10;
      v38 = v9;
      dispatch_async(serialQueue, v30);

LABEL_28:
      v22 = v28;
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  v23 = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004238C;
  block[3] = &unk_1001164F8;
  block[4] = self;
  v40 = v28;
  v43 = &v54;
  v42 = completionCopy;
  v41 = v10;
  v44 = v9;
  dispatch_async(v23, block);

LABEL_29:
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(&v54, 8);
}

- (void)DeleteAllAssetsExcept:(id)except withOptions:(id)options completion:(id)completion
{
  exceptCopy = except;
  optionsCopy = options;
  completionCopy = completion;
  v53 = 0;
  v54[0] = &v53;
  v54[1] = 0x3032000000;
  v54[2] = sub_10003C300;
  v54[3] = sub_10003C310;
  v55 = 0;
  v11 = mach_continuous_time();
  v12 = +[NSXPCConnection currentConnection];
  v35 = v11;
  v13 = kManagedAssetsSyncKey;
  v14 = [optionsCopy objectForKeyedSubscript:kManagedAssetsSyncKey];
  intValue = [v14 intValue];
  v16 = (v54[0] + 40);
  obj = *(v54[0] + 40);
  LOBYTE(v11) = sub_100041338(optionsCopy, &obj);
  objc_storeStrong(v16, obj);
  if ((v11 & 1) == 0)
  {
    goto LABEL_26;
  }

  v17 = [optionsCopy objectForKeyedSubscript:v13];
  if (v17)
  {
  }

  else if ([optionsCopy count])
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_1000503DC();
    }

    v28 = createManagedAssetError();
    v22 = *(v54[0] + 40);
    *(v54[0] + 40) = v28;
LABEL_25:

    goto LABEL_26;
  }

  v51 = 0;
  v50 = 0;
  [(MAServer *)self parseSyncOptions:intValue localOnly:&v51 cloudOnly:&v50 localAndCloud:&v51 + 1 defaultOption:&v51];
  v18 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEBUG))
  {
    v31 = "no";
    if (HIBYTE(v51))
    {
      v32 = "yes";
    }

    else
    {
      v32 = "no";
    }

    if (v51)
    {
      v33 = "yes";
    }

    else
    {
      v33 = "no";
    }

    *buf = 136315650;
    if (v50)
    {
      v31 = "yes";
    }

    *&buf[4] = v32;
    *&buf[12] = 2080;
    *&buf[14] = v33;
    *&buf[22] = 2080;
    *&buf[24] = v31;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "sync options are local&sync:%s, localonly:%s, synconly:%s", buf, 0x20u);
  }

  policyEngine = self->_policyEngine;
  v20 = NSStringFromSelector(a2);
  v21 = (v54[0] + 40);
  v49 = *(v54[0] + 40);
  LODWORD(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:kManagedAssetDeleteAllEntitlement client:v12 function:v20 error:&v49];
  objc_storeStrong(v21, v49);

  if (!policyEngine)
  {
LABEL_26:
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_1000505D8(v54);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, *(v54[0] + 40));
    }

    if (v12)
    {
      [v12 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    [CALogger logWithCoreAnalytics:"[MAServer DeleteAllAssetsExcept:withOptions:completion:]" client:buf startTS:v35 error:*(v54[0] + 40), v34];
    goto LABEL_34;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v22 = exceptCopy;
  v23 = [v22 countByEnumeratingWithState:&v45 objects:v56 count:16];
  if (!v23)
  {
    goto LABEL_15;
  }

  v24 = *v46;
  while (2)
  {
    for (i = 0; i != v23; i = i + 1)
    {
      if (*v46 != v24)
      {
        objc_enumerationMutation(v22);
      }

      v26 = *(*(&v45 + 1) + 8 * i);
      buf[0] = 0;
      if (([v26 isValidAssetHandle:buf] & 1) == 0)
      {
        if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
        {
          sub_1000504F8();
        }

        goto LABEL_24;
      }

      if (buf[0] == 1)
      {
        if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
        {
          sub_100050568();
        }

LABEL_24:
        v34 = v26;
        v29 = createManagedAssetError();
        v30 = *(v54[0] + 40);
        *(v54[0] + 40) = v29;

        goto LABEL_25;
      }
    }

    v23 = [v22 countByEnumeratingWithState:&v45 objects:v56 count:16];
    if (v23)
    {
      continue;
    }

    break;
  }

LABEL_15:

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004352C;
  block[3] = &unk_1001168C8;
  v43 = v50;
  block[4] = self;
  v38 = v22;
  v41 = &v53;
  v44 = v51;
  v40 = completionCopy;
  v39 = v12;
  v42 = v35;
  dispatch_async(serialQueue, block);

LABEL_34:
  _Block_object_dispose(&v53, 8);
}

- (void)deleteAllDataInCloudWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000439F0;
  v4[3] = &unk_100116968;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(MAServer *)selfCopy fetchSigninUserWithCompletionHandler:v4];
}

- (void)GetAssetData:(id)data uuid:(id)uuid completion:(id)completion
{
  dataCopy = data;
  uuidCopy = uuid;
  completionCopy = completion;
  v57 = mach_continuous_time();
  v11 = +[NSXPCConnection currentConnection];
  v69 = 0;
  if (!dataCopy || ([dataCopy isValidAssetHandle:&v69] & 1) == 0)
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100050124();
    }

    v13 = createManagedAssetError();
    goto LABEL_8;
  }

  if (self->_guestModePreflightTesting)
  {
    v12 = 0;
LABEL_17:
    v22 = 1;
    v23 = 1;
    goto LABEL_18;
  }

  policyEngine = self->_policyEngine;
  v20 = kManagedAssetPersistedGuestPreflightGetDataEntitlement;
  v21 = NSStringFromSelector(a2);
  v68 = 0;
  LOBYTE(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:v20 client:v11 function:v21 error:&v68];
  v12 = v68;

  if (policyEngine)
  {
    goto LABEL_17;
  }

  if (!self->_bypassProfileCheckForPrimaryUser)
  {
    v67 = v12;
    v39 = [(MAServer *)self checkProfile:uuidCopy profileNameOut:0 error:&v67];
    v13 = v67;

    if (v39)
    {
      v22 = 0;
      v23 = 0;
      v12 = v13;
      goto LABEL_18;
    }

LABEL_8:
    v14 = 0;
    assetData = 0;
    assetFileHandle = 0;
    v17 = 0;
LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEBUG))
  {
    sub_10005080C();
  }

  v23 = 0;
  v22 = 2;
LABEL_18:
  if (v69 == 1)
  {
    v24 = self->_policyEngine;
    v25 = kManagedAssetShareEntitlement;
    v26 = NSStringFromSelector(a2);
    v66 = v12;
    LODWORD(v24) = [(MAPolicyEngine *)v24 verifyBooleanEntitlementWith:v25 client:v11 function:v26 error:&v66];
    v13 = v66;

    if (v24)
    {
      remoteAssetsManager = self->_remoteAssetsManager;
      v64 = v13;
      v65 = 0;
      v17 = [(MARemoteAssetsManager *)remoteAssetsManager getAssetData:dataCopy assetKey:&v65 error:&v64];
      v18 = v65;
      v28 = v64;

      if (!v17)
      {
        v14 = 0;
        assetData = 0;
        assetFileHandle = 0;
LABEL_43:
        v13 = v28;
        goto LABEL_10;
      }

LABEL_42:
      assetFileHandle = [v17 assetFileHandle];
      v14 = v18;
      assetData = [v17 assetData];
      v18 = v14;
      goto LABEL_43;
    }

    goto LABEL_8;
  }

  storage = self->_storage;
  profile = self->_profile;
  v63 = v12;
  v17 = [(MAStorage *)storage getAsset:dataCopy profile:profile option:1 assetPathOut:0 bypassProfileCheck:v22 error:&v63];
  v13 = v63;

  if (v13)
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100050848();
    }

    goto LABEL_33;
  }

  v53 = v22;
  v54 = self->_policyEngine;
  v31 = kManagedAssetGetDataEntitlement;
  assetMetadata = [v17 assetMetadata];
  type = [assetMetadata type];
  v34 = NSStringFromSelector(a2);
  v62 = 0;
  LODWORD(v31) = [(MAPolicyEngine *)v54 verifyAccessWithSingleAssetType:v31 client:v11 assetType:type function:v34 error:&v62];
  v13 = v62;

  if (!v31)
  {
LABEL_33:
    v14 = 0;
    assetData = 0;
    assetFileHandle = 0;
    goto LABEL_9;
  }

  if (v23 && ([v17 assetOwner], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "profileName"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "isEqualToString:", kMASDDefaultLocalUser), v36, v35, (v37 & 1) == 0))
  {
    v40 = self->_storage;
    v41 = [NSUUID alloc];
    assetOwner = [v17 assetOwner];
    profileName = [assetOwner profileName];
    v44 = [v41 initWithUUIDString:profileName];
    v61 = v13;
    v55 = [(MAStorage *)v40 getProfile:v44 error:&v61];
    v38 = v61;

    if (v38)
    {
      v45 = v55;
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
      {
        sub_1000508B8();
      }
    }

    else
    {
      v46 = [MASDUserProfile alloc];
      v45 = v55;
      profileID = [v55 profileID];
      profileName2 = [v55 profileName];
      v49 = -[MASDUserProfile initNewProfileWith:name:type:](v46, "initNewProfileWith:name:type:", profileID, profileName2, [v55 profileType]);
      [v17 setAssetOwner:v49];
    }
  }

  else
  {
    v38 = v13;
  }

  assetOwner2 = [v17 assetOwner];
  v51 = self->_profile;
  v52 = [NSMutableArray arrayWithObject:&off_10011E018];
  v60 = v38;
  v56 = [(MAServer *)self CanGetAssetData:assetOwner2 currentProfileType:v51 bypassMode:v53 profileTypes:v52 error:&v60];
  v13 = v60;

  v18 = 0;
  v14 = 0;
  assetData = 0;
  assetFileHandle = 0;
  v28 = v13;
  if (v56)
  {
    goto LABEL_42;
  }

LABEL_10:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, assetFileHandle, assetData, v14, v13);
  }

  if (v11)
  {
    [v11 auditToken];
  }

  else
  {
    memset(v59, 0, sizeof(v59));
  }

  [CALogger logWithCoreAnalytics:"[MAServer GetAssetData:uuid:completion:]" client:v59 startTS:v57 error:v13];
}

- (BOOL)CanGetAssetData:(id)data currentProfileType:(id)type bypassMode:(unint64_t)mode profileTypes:(id)types error:(id *)error
{
  dataCopy = data;
  typeCopy = type;
  typesCopy = types;
  profileType = [typeCopy profileType];
  if (mode == 2 && profileType == -1)
  {
    goto LABEL_4;
  }

  profileID = [dataCopy profileID];
  if (profileID == [typeCopy profileID])
  {
    goto LABEL_4;
  }

  if ([typeCopy profileType] != 1 || (+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", objc_msgSend(dataCopy, "profileType")), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(typesCopy, "containsObject:", v17), v17, !v18))
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100018F54();
    }

    goto LABEL_13;
  }

  if (!mode)
  {
    v19 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100050960(v19, dataCopy);
    }

    [dataCopy profileType];
LABEL_13:
    createManagedAssetError();
    *error = v16 = 0;
    goto LABEL_14;
  }

LABEL_4:
  v16 = 1;
LABEL_14:

  return v16;
}

- (void)GetAssetMeteData:(id)data uuid:(id)uuid completion:(id)completion
{
  dataCopy = data;
  uuidCopy = uuid;
  completionCopy = completion;
  v12 = mach_continuous_time();
  v13 = +[NSXPCConnection currentConnection];
  v39 = 0;
  if (!dataCopy || ([dataCopy isValidAssetHandle:&v39] & 1) == 0)
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100050124();
    }

    v16 = createManagedAssetError();
    goto LABEL_9;
  }

  if (self->_bypassProfileCheckForPrimaryUser)
  {
    v14 = 2;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEBUG))
    {
      sub_10005080C();
      v15 = 0;
      v14 = 2;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v38 = 0;
    v19 = [(MAServer *)self checkProfile:uuidCopy profileNameOut:0 error:&v38];
    v20 = v38;
    v16 = v20;
    if (!v19)
    {
      goto LABEL_9;
    }

    v14 = 0;
    v15 = v20;
  }

  if (v39 != 1)
  {
    storage = self->_storage;
    profile = self->_profile;
    v35 = v15;
    v17 = [(MAStorage *)storage getAsset:dataCopy profile:profile option:0 assetPathOut:0 bypassProfileCheck:v14 error:&v35];
    v16 = v35;

    if (v16)
    {
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
      {
        sub_1000509F8();
      }
    }

    else
    {
      policyEngine = self->_policyEngine;
      v28 = kManagedAssetGetMetaDataEntitlement;
      assetMetadata = [v17 assetMetadata];
      type = [assetMetadata type];
      v31 = NSStringFromSelector(a2);
      v34 = 0;
      LODWORD(v28) = [(MAPolicyEngine *)policyEngine verifyAccessWithSingleAssetType:v28 client:v13 assetType:type function:v31 error:&v34];
      v16 = v34;

      if (v28)
      {
        goto LABEL_27;
      }
    }

LABEL_10:
    assetMetadata2 = 0;
    goto LABEL_11;
  }

  v21 = self->_policyEngine;
  v22 = kManagedAssetShareEntitlement;
  v23 = NSStringFromSelector(a2);
  v37 = v15;
  LODWORD(v21) = [(MAPolicyEngine *)v21 verifyBooleanEntitlementWith:v22 client:v13 function:v23 error:&v37];
  v16 = v37;

  if (!v21)
  {
LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  remoteAssetsManager = self->_remoteAssetsManager;
  v36 = v16;
  v17 = [(MARemoteAssetsManager *)remoteAssetsManager getAssetMeteData:dataCopy error:&v36];
  v25 = v36;

  if (v17)
  {
    v16 = v25;
LABEL_27:
    assetMetadata2 = [v17 assetMetadata];
    goto LABEL_11;
  }

  assetMetadata2 = 0;
  v16 = v25;
LABEL_11:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, assetMetadata2, v16);
  }

  if (v13)
  {
    [v13 auditToken];
  }

  else
  {
    memset(v33, 0, sizeof(v33));
  }

  [CALogger logWithCoreAnalytics:"[MAServer GetAssetMeteData:uuid:completion:]" client:v33 startTS:v12 error:v16];
}

- (void)QueryAssets:(id)assets completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  v9 = mach_continuous_time();
  v10 = +[NSXPCConnection currentConnection];
  v11 = kManagedAssetsQueryOptionProfileUUID;
  v33 = [assetsCopy objectForKeyedSubscript:kManagedAssetsQueryOptionProfileUUID];
  v12 = kManagedAssetsQueryOptionParticipantIdentifier;
  v13 = [assetsCopy objectForKeyedSubscript:kManagedAssetsQueryOptionParticipantIdentifier];
  if (assetsCopy && [assetsCopy count])
  {
    v32 = v9;
    v37 = 0;
    v14 = sub_100044EB8(assetsCopy, &v37);
    v15 = v37;
    if (!v14)
    {
      v22 = 0;
LABEL_23:
      v9 = v32;
      goto LABEL_24;
    }

    v16 = [assetsCopy objectForKeyedSubscript:kManagedAssetsQueryOptionAssetType];
    if (v16)
    {
      goto LABEL_10;
    }

    v16 = [assetsCopy objectForKeyedSubscript:kManagedAssetsQueryOptionAssetLabel];
    if (v16)
    {
      goto LABEL_10;
    }

    v16 = [assetsCopy objectForKeyedSubscript:v12];
    if (v16 || ([assetsCopy objectForKeyedSubscript:kManagedAssetsQueryOptionAlgorithmVer], (v16 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(assetsCopy, "objectForKeyedSubscript:", v11), (v16 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(assetsCopy, "objectForKeyedSubscript:", kManagedAssetsAssetStateKey), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
    {
LABEL_10:

      goto LABEL_11;
    }

    v30 = [assetsCopy objectForKeyedSubscript:kManagedAssetsEnrollmentIDKey];

    if (v30)
    {
LABEL_11:
      policyEngine = self->_policyEngine;
      v18 = kManagedAssetQueryEntitlement;
      v19 = NSStringFromSelector(a2);
      v36 = v15;
      LODWORD(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:v18 client:v10 function:v19 error:&v36];
      v20 = v36;

      if (policyEngine)
      {
        v9 = v32;
        if (v13)
        {
          remoteAssetsManager = self->_remoteAssetsManager;
          if (remoteAssetsManager)
          {
            v35 = v20;
            v22 = [(MARemoteAssetsManager *)remoteAssetsManager queryAssets:v13 options:assetsCopy profile:v33 error:&v35];
            v15 = v35;

            goto LABEL_24;
          }
        }

        v23 = off_100127E38;
        if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
        {
          v24 = v23;
          processIdentifier = [v10 processIdentifier];
          *buf = 67109378;
          *&buf[4] = processIdentifier;
          *&buf[8] = 2112;
          *&buf[10] = assetsCopy;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Call QueryAssets by process (pid:%u) with options %@", buf, 0x12u);
        }

        storage = self->_storage;
        profile = [(MAServer *)self profile];
        profileName = [profile profileName];
        v34 = v20;
        v22 = [(MAStorage *)storage queryAssets:assetsCopy profile:profileName error:&v34];
        v15 = v34;
      }

      else
      {
        v22 = 0;
        v15 = v20;
      }

      goto LABEL_23;
    }

    v9 = v32;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100050A64();
    }

    v31 = createManagedAssetError();

    v22 = 0;
    v15 = v31;
  }

  else
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100050AA0();
    }

    v15 = createManagedAssetError();
    v22 = 0;
  }

LABEL_24:
  v29 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v22;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "QueryAssets results: {%@}, error: %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v22, v15);
  }

  if (v10)
  {
    [v10 auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  [CALogger logWithCoreAnalytics:"[MAServer QueryAssets:completion:]" client:buf startTS:v9 error:v15, v32];
}

- (void)QueryAssetMetaData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v9 = mach_continuous_time();
  v10 = +[NSXPCConnection currentConnection];
  v11 = &selRef_queryInUseStatusWithAuditToken_completion_;
  if (!dataCopy || ![dataCopy count])
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100050AA0();
    }

    v13 = createManagedAssetError();
    goto LABEL_9;
  }

  v31 = 0;
  v12 = sub_100044EB8(dataCopy, &v31);
  v13 = v31;
  if (!v12)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v14 = [dataCopy objectForKeyedSubscript:kManagedAssetsQueryOptionAssetList];
  if (v14)
  {

    goto LABEL_19;
  }

  v17 = [dataCopy objectForKeyedSubscript:kManagedAssetsQueryOptionProfileUUID];

  if (v17)
  {
LABEL_19:
    policyEngine = self->_policyEngine;
    v19 = kManagedAssetQueryEntitlement;
    v20 = NSStringFromSelector(a2);
    v30 = v13;
    LODWORD(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:v19 client:v10 function:v20 error:&v30];
    v21 = v30;

    if (policyEngine)
    {
      v11 = &selRef_queryInUseStatusWithAuditToken_completion_;
      v22 = off_100127E38;
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
      {
        v23 = v22;
        processIdentifier = [v10 processIdentifier];
        *buf = 67109378;
        *&buf[4] = processIdentifier;
        *&buf[8] = 2112;
        *&buf[10] = dataCopy;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Call QueryAssetMetaData by process (pid:%u) with options %@", buf, 0x12u);
      }

      storage = self->_storage;
      profile = [(MAServer *)self profile];
      profileName = [profile profileName];
      v29 = v21;
      v15 = [(MAStorage *)storage queryAssetsMetaData:dataCopy profile:profileName error:&v29];
      v13 = v29;
    }

    else
    {
      v15 = 0;
      v13 = v21;
      v11 = &selRef_queryInUseStatusWithAuditToken_completion_;
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_100050A64();
  }

  v28 = createManagedAssetError();

  v15 = 0;
  v13 = v28;
LABEL_10:
  v16 = v11[455];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "QueryAssetMetaData results: {%@}, error: %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v15, v13);
  }

  if (v10)
  {
    [v10 auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  [CALogger logWithCoreAnalytics:"[MAServer QueryAssetMetaData:completion:]" client:buf startTS:v9 error:v13];
}

- (void)UpdateAsset:(id)asset uuid:(id)uuid sessionToken:(id)token algorithmVersion:(id)version completion:(id)completion
{
  assetCopy = asset;
  uuidCopy = uuid;
  tokenCopy = token;
  versionCopy = version;
  completionCopy = completion;
  v17 = mach_continuous_time();
  v18 = +[NSMutableDictionary dictionary];
  v19 = v18;
  if (tokenCopy)
  {
    if (uuidCopy)
    {
      [v18 setObject:uuidCopy forKeyedSubscript:kManagedAssetsProfileUUIDKey];
    }

    if (versionCopy)
    {
      [v19 setObject:versionCopy forKeyedSubscript:kManagedAssetsAlgorithmVerKey];
    }

    [(MAServer *)self UpdateAssetV2:assetCopy sessionToken:tokenCopy options:v19 completion:completionCopy];
  }

  else
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100050ADC();
    }

    v20 = createManagedAssetError();
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v20);
    }

    v21 = +[NSXPCConnection currentConnection];
    v22 = v21;
    if (v21)
    {
      [v21 auditToken];
    }

    else
    {
      memset(v23, 0, sizeof(v23));
    }

    [CALogger logWithCoreAnalytics:"[MAServer UpdateAsset:uuid:sessionToken:algorithmVersion:completion:]" client:v23 startTS:v17 error:v20];
  }
}

- (void)UpdateAssetV2:(id)v2 sessionToken:(id)token options:(id)options completion:(id)completion
{
  v2Copy = v2;
  tokenCopy = token;
  optionsCopy = options;
  completionCopy = completion;
  v86 = 0;
  v83 = 0;
  v84[0] = &v83;
  v84[1] = 0x3032000000;
  v84[2] = sub_10003C300;
  v84[3] = sub_10003C310;
  v85 = 0;
  v11 = mach_continuous_time();
  v12 = +[NSXPCConnection currentConnection];
  v13 = v12;
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x3032000000;
  v81[3] = sub_10003C300;
  v81[4] = sub_10003C310;
  if (self->_isXCTest)
  {
    v14 = @"xctest";
  }

  else
  {
    if (v12)
    {
      [v12 auditToken];
    }

    else
    {
      *buf = 0u;
      v92 = 0u;
    }

    v14 = [MAUtilityHelper getClientBundleIdentifier:buf];
  }

  v82 = v14;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = sub_10003C300;
  v79 = sub_10003C310;
  v80 = [optionsCopy mutableCopy];
  v74 = 0;
  v73 = 0;
  v15 = kManagedAssetsProfileUUIDKey;
  v53 = [optionsCopy objectForKeyedSubscript:kManagedAssetsProfileUUIDKey];
  v48 = v15;
  v50 = v11;
  v57 = v13;
  v16 = kManagedAssetsSyncKey;
  v49 = [optionsCopy objectForKeyedSubscript:kManagedAssetsSyncKey];
  intValue = [v49 intValue];
  obj = *(v84[0] + 40);
  location = (v84[0] + 40);
  v17 = optionsCopy;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v87 objects:buf count:16];
  if (v19)
  {
    v20 = *v88;
    v21 = kManagedAssetsAssetStateKey;
    v22 = kManagedAssetsRecordNameKey;
    v58 = kManagedAssetsRecordAccountKey;
    v56 = kManagedAssetsLastUpdatedTimeKey;
    v55 = kManagedAssetsLastUpdatedOSKey;
    while (2)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v88 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v87 + 1) + 8 * i);
        v25 = [v18 objectForKeyedSubscript:v24];
        if (([v24 isEqualToString:v21] & 1) != 0 || objc_msgSend(v24, "isEqualToString:", v16))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v44 = v24;
            v34 = createManagedAssetError();
            v35 = v34;
            if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
            {
LABEL_43:
              sub_100050B18();
            }

LABEL_44:

            objc_storeStrong(location, v34);
            goto LABEL_45;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v44 = v24;
            v34 = createManagedAssetError();
            v37 = v34;
            if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_43;
            }

            goto LABEL_44;
          }

          if (([v24 isEqualToString:v22] & 1) != 0 || (objc_msgSend(v24, "isEqualToString:", v58) & 1) != 0 || (objc_msgSend(v24, "isEqualToString:", v56) & 1) != 0 || objc_msgSend(v24, "isEqualToString:", v55))
          {
            v44 = v24;
            v34 = createManagedAssetError();
            v31 = v34;
            if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_43;
            }

            goto LABEL_44;
          }
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v87 objects:buf count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  objc_storeStrong(location, obj);
  v26 = [v18 objectForKeyedSubscript:v48];
  if (v26)
  {
    goto LABEL_28;
  }

  v26 = [v18 objectForKeyedSubscript:kManagedAssetsAlgorithmVerKey];
  if (v26 || ([v18 objectForKeyedSubscript:kManagedAssetsEnrollmentIDKey], (v26 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v18, "objectForKeyedSubscript:", kManagedAssetsAssetStateKey), (v26 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v18, "objectForKeyedSubscript:", v16), (v26 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_28:
  }

  else if ([v18 count])
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100050B88();
    }

    goto LABEL_39;
  }

  if (!v2Copy || ([v2Copy isValidAssetHandle:&v86] & 1) == 0)
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100050124();
    }

LABEL_39:
    v32 = createManagedAssetError();
    v33 = *(v84[0] + 40);
    *(v84[0] + 40) = v32;

    goto LABEL_45;
  }

  v27 = (v84[0] + 40);
  v72 = *(v84[0] + 40);
  v28 = [(MAServer *)self checkProfile:v53 profileNameOut:0 error:&v72];
  objc_storeStrong(v27, v72);
  if (!v28)
  {
LABEL_45:
    if (completionCopy)
    {
      completionCopy[2](completionCopy, *(v84[0] + 40));
    }

    if (v57)
    {
      [v57 auditToken];
    }

    else
    {
      *buf = 0u;
      v92 = 0u;
    }

    [CALogger logWithCoreAnalytics:"[MAServer UpdateAssetV2:sessionToken:options:completion:]" client:buf startTS:v50 error:*(v84[0] + 40), v44];
    goto LABEL_51;
  }

  [(MAServer *)self parseSyncOptions:intValue localOnly:&v74 + 1 cloudOnly:&v74 localAndCloud:&v73];
  if (v74 == 1)
  {
    v44 = v16;
    v29 = createManagedAssetError();
    v30 = *(v84[0] + 40);
    *(v84[0] + 40) = v29;

    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_10004FECC(v84);
    }

    goto LABEL_45;
  }

  v38 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    if (v73)
    {
      v39 = "yes";
    }

    else
    {
      v39 = "no";
    }

    *buf = 136315138;
    *&buf[4] = v39;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "sync options are local&sync:%s", buf, 0xCu);
  }

  if (tokenCopy)
  {
    v40 = +[NSProcessInfo processInfo];
    operatingSystemVersionString = [v40 operatingSystemVersionString];

    [v76[5] setObject:operatingSystemVersionString forKeyedSubscript:kManagedAssetsLastUpdatedOSKey];
    v42 = +[NSDate now];
    [v76[5] setObject:v42 forKeyedSubscript:kManagedAssetsLastUpdatedTimeKey];
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100046138;
  block[3] = &unk_100116990;
  v65 = v81;
  v66 = &v75;
  v70 = v86;
  block[4] = self;
  v61 = v2Copy;
  v67 = &v83;
  v71 = v73;
  v62 = v57;
  v68 = a2;
  v63 = tokenCopy;
  v64 = completionCopy;
  v69 = v50;
  dispatch_sync(serialQueue, block);

LABEL_51:
  _Block_object_dispose(&v75, 8);

  _Block_object_dispose(v81, 8);
  _Block_object_dispose(&v83, 8);
}

- (id)modifyUpdatedMetadata:(id)metadata assetMetadata:(id)assetMetadata eventtype:(unint64_t *)eventtype error:(id *)error
{
  metadataCopy = metadata;
  assetMetadataCopy = assetMetadata;
  v11 = [metadataCopy objectForKeyedSubscript:kManagedAssetsAlgorithmVerKey];
  v12 = [metadataCopy objectForKeyedSubscript:kManagedAssetsEnrollmentIDKey];
  v13 = [metadataCopy objectForKeyedSubscript:kManagedAssetsAssetStateKey];
  v14 = [metadataCopy objectForKeyedSubscript:kManagedAssetsLastUpdatedOSKey];
  if (v11)
  {
    if (([v11 isValidMetaDataString] & 1) == 0)
    {
      [v11 length];
      createManagedAssetError();
      *error = v23 = 0;
      goto LABEL_28;
    }

    lastUpdatedAlgorithmVersion = [assetMetadataCopy lastUpdatedAlgorithmVersion];
    v16 = [lastUpdatedAlgorithmVersion isEqualToString:v11];

    if ((v16 & 1) == 0)
    {
      [assetMetadataCopy setLastUpdatedAlgorithmVersion:v11];
      *eventtype |= 4uLL;
    }
  }

  if (v12)
  {
    enrollmentIdentifier = [assetMetadataCopy enrollmentIdentifier];
    v18 = [enrollmentIdentifier isEqualToString:v12];

    if ((v18 & 1) == 0)
    {
      [assetMetadataCopy setEnrollmentIdentifier:v12];
    }
  }

  if (!v13)
  {
    goto LABEL_23;
  }

  eventtypeCopy = eventtype;
  intValue = [v13 intValue];
  v20 = intValue & 0x200;
  v29 = intValue & 0x10;
  v30 = intValue & 0x4000;
  v21 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    *buf = 67109888;
    v32 = v29 >> 4;
    v33 = 1024;
    v34 = v20 >> 9;
    v35 = 1024;
    v36 = intValue & 1;
    v37 = 1024;
    v38 = v30 >> 14;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "modifying asset state metadata setCreatedLocal:%u, setUploadedToCloud:%u, setActive:%u, setQuotaExceeded:%u", buf, 0x1Au);
  }

  if ((intValue & 0x4211) == 0)
  {
    createManagedAssetError();
    *error = v23 = 0;
    goto LABEL_28;
  }

  if (intValue)
  {
    [assetMetadataCopy setAssetState:{objc_msgSend(assetMetadataCopy, "assetState") | 1}];
    *eventtypeCopy |= 1uLL;
  }

  if (v20)
  {
    v22 = [assetMetadataCopy assetState] | 0x200;
  }

  else
  {
    if (!v29)
    {
      goto LABEL_21;
    }

    v22 = [assetMetadataCopy assetState] & 1 | 0x10;
  }

  [assetMetadataCopy setAssetState:v22];
LABEL_21:
  if (v30)
  {
    [assetMetadataCopy setAssetState:{objc_msgSend(assetMetadataCopy, "assetState") | 0x4000}];
  }

LABEL_23:
  if (v14)
  {
    [assetMetadataCopy setLastUpdatedOSVersion:v14];
  }

  v24 = kManagedAssetsLastUpdatedTimeKey;
  v25 = [metadataCopy objectForKeyedSubscript:kManagedAssetsLastUpdatedTimeKey];

  if (v25)
  {
    v26 = [metadataCopy objectForKeyedSubscript:v24];
    [assetMetadataCopy setLastUpdatedTime:v26];
  }

  v23 = assetMetadataCopy;
LABEL_28:

  return v23;
}

- (void)ShareAssetsWithGroup:(id)group sessionUUID:(id)d capability:(id)capability completion:(id)completion
{
  groupCopy = group;
  dCopy = d;
  capabilityCopy = capability;
  completionCopy = completion;
  v15 = +[NSXPCConnection currentConnection];
  v16 = mach_continuous_time();
  if (self->_deviceState <= 1)
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100050D90();
    }

    goto LABEL_22;
  }

  if (!groupCopy || ![groupCopy count])
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100050D54();
    }

LABEL_22:
    v26 = createManagedAssetError();
    if (!completionCopy)
    {
LABEL_24:
      if (v15)
      {
        [v15 auditToken];
      }

      else
      {
        v31 = 0u;
        v32 = 0u;
      }

      [CALogger logWithCoreAnalytics:"[MAServer ShareAssetsWithGroup:sessionUUID:capability:completion:]" client:&v31 startTS:v16 error:v26, v28];
      goto LABEL_28;
    }

LABEL_23:
    completionCopy[2](completionCopy, v26);
    goto LABEL_24;
  }

  v29 = v16;
  v30 = capabilityCopy;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = groupCopy;
  v18 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    v28 = a2;
    while (2)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v34 + 1) + 8 * i);
        if (v22)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v22 isValidAssetHandle])
          {
            continue;
          }
        }

        if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
        {
          sub_100050124();
        }

        v26 = createManagedAssetError();

        goto LABEL_32;
      }

      v19 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
      a2 = v28;
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  policyEngine = self->_policyEngine;
  v24 = kManagedAssetShareEntitlement;
  v25 = NSStringFromSelector(a2);
  v33 = 0;
  LODWORD(v24) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:v24 client:v15 function:v25 error:&v33];
  v26 = v33;

  if (!v24)
  {
LABEL_32:
    capabilityCopy = v30;
    v16 = v29;
    if (!completionCopy)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  remoteAssetsManager = self->_remoteAssetsManager;
  if (v15)
  {
    [v15 auditToken];
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  capabilityCopy = v30;
  [(MARemoteAssetsManager *)remoteAssetsManager shareAssetsWithGroup:v17 process:&v31 startTS:v29 sessionUUID:dCopy capability:v30 completion:completionCopy, v28];
LABEL_28:
}

- (void)GetTempAssetFileHandle:(int64_t)handle assetType:(unint64_t)type assetHandle:(id)assetHandle completion:(id)completion
{
  assetHandleCopy = assetHandle;
  completionCopy = completion;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = sub_10003C300;
  v37[4] = sub_10003C310;
  v38 = 0;
  v13 = +[NSXPCConnection currentConnection];
  v14 = mach_continuous_time();
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_10003C300;
  v35[4] = sub_10003C310;
  v36 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_10003C300;
  v33[4] = sub_10003C310;
  v34 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_10003C300;
  v31[4] = sub_10003C310;
  v32 = 0;
  serialQueue = self->_serialQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100047588;
  v19[3] = &unk_1001169B8;
  v19[4] = self;
  v20 = v13;
  handleCopy = handle;
  v28 = a2;
  v23 = v37;
  v24 = v31;
  v25 = v33;
  v26 = v35;
  v21 = assetHandleCopy;
  v22 = completionCopy;
  typeCopy = type;
  v30 = v14;
  v16 = completionCopy;
  v17 = assetHandleCopy;
  v18 = v13;
  dispatch_sync(serialQueue, v19);

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v33, 8);

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v37, 8);
}

- (void)GetTempAssetFilePathWithAssetType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10003C300;
  v25 = sub_10003C310;
  v26 = 0;
  v8 = +[NSXPCConnection currentConnection];
  policyEngine = self->_policyEngine;
  v10 = NSStringFromSelector(a2);
  v11 = (v22 + 5);
  obj = v22[5];
  LOBYTE(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:kManagedAssetSerializeEntitlement client:v8 function:v10 error:&obj];
  objc_storeStrong(v11, obj);

  if ((policyEngine & 1) == 0)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, v22[5]);
  }

  serialQueue = self->_serialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100047D38;
  v15[3] = &unk_1001169E0;
  v18 = &v21;
  typeCopy = type;
  v16 = v8;
  v17 = completionCopy;
  v15[4] = self;
  v13 = v8;
  v14 = completionCopy;
  dispatch_sync(serialQueue, v15);

  _Block_object_dispose(&v21, 8);
}

- (void)DeleteTempAsset:(BOOL)asset tokens:(id)tokens
{
  assetCopy = asset;
  tokensCopy = tokens;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10003C300;
  v24 = sub_10003C310;
  v25 = 0;
  v8 = +[NSXPCConnection currentConnection];
  v9 = &kManagedAssetCreateEntitlement;
  if (!assetCopy)
  {
    v9 = &kManagedAssetUpdateEntitlement;
  }

  v10 = *v9;
  policyEngine = self->_policyEngine;
  v12 = NSStringFromSelector(a2);
  v13 = (v21 + 5);
  obj = v21[5];
  LOBYTE(policyEngine) = [(MAPolicyEngine *)policyEngine verifyAccessWithAnyAssetTypes:v10 client:v8 function:v12 error:&obj];
  objc_storeStrong(v13, obj);

  if (policyEngine)
  {
    serialQueue = self->_serialQueue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004814C;
    v15[3] = &unk_100116358;
    v16 = tokensCopy;
    selfCopy = self;
    v18 = &v20;
    dispatch_async(serialQueue, v15);
  }

  _Block_object_dispose(&v20, 8);
}

- (BOOL)assetDeDuplication:(id)duplication type:(unint64_t)type lastUpdatedTime:(double)time newAssetHandle:(id)handle newAssetRecordID:(id)d deleteNewAssetLocal:(BOOL *)local deleteNewAssetLocalAndSync:(BOOL *)sync error:(id *)self0
{
  duplicationCopy = duplication;
  handleCopy = handle;
  dCopy = d;
  v16 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *v77 = handleCopy;
    *&v77[8] = 2112;
    v78 = dCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "asset dedupe for new asset handle: %@, record ID: %@", buf, 0x16u);
  }

  v17 = +[NSMutableArray array];
  v18 = +[NSMutableDictionary dictionary];
  *local = 0;
  *sync = 0;
  [v18 setObject:duplicationCopy forKeyedSubscript:kManagedAssetsAssetLabelKey];
  v19 = [NSNumber numberWithUnsignedInteger:type];
  v75 = v19;
  v20 = [NSArray arrayWithObjects:&v75 count:1];
  [v18 setObject:v20 forKeyedSubscript:kManagedAssetsQueryOptionAssetList];

  [v18 setObject:&off_10011E000 forKeyedSubscript:kManagedAssetsAssetStateKey];
  storage = self->_storage;
  profile = [(MAServer *)self profile];
  profileName = [profile profileName];
  v24 = [(MAStorage *)storage queryAssetsMetaData:v18 profile:profileName error:error];

  v25 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *v77 = v18;
    *&v77[8] = 2112;
    v78 = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "query existing assets with options %@: %@", buf, 0x16u);
  }

  if (*error)
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100050F40(duplicationCopy, error);
    }

LABEL_8:
    v26 = 0;
    goto LABEL_43;
  }

  v61 = v18;
  v62 = duplicationCopy;
  v63 = v17;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v60 = v24;
  v27 = v24;
  v28 = [v27 countByEnumeratingWithState:&v70 objects:v74 count:16];
  v30 = handleCopy;
  if (v28)
  {
    v31 = v28;
    v67 = *v71;
    *&v29 = 138412546;
    v59 = v29;
    while (2)
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v71 != v67)
        {
          objc_enumerationMutation(v27);
        }

        v33 = *(*(&v70 + 1) + 8 * i);
        if (!v30 || ([*(*(&v70 + 1) + 8 * i) isEqualToString:v30] & 1) == 0)
        {
          v34 = self->_storage;
          profile2 = [(MAServer *)self profile];
          v36 = [(MAStorage *)v34 getAsset:v33 profile:profile2 option:0 assetPathOut:0 bypassProfileCheck:0 error:error];

          if (*error)
          {
            if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
            {
              sub_100050FA8(v33, error);
            }

            v26 = 0;
            v18 = v61;
            duplicationCopy = v62;
            v17 = v63;
            goto LABEL_42;
          }

          v37 = [v27 objectForKeyedSubscript:v33];
          lastUpdatedTime = [v37 lastUpdatedTime];
          [lastUpdatedTime timeIntervalSince1970];
          v40 = v39;

          if (v40 >= time)
          {
            *local = 1;
            ckrecordIdentifier = [v37 ckrecordIdentifier];

            if (dCopy)
            {
              if (ckrecordIdentifier)
              {
                ckrecordIdentifier2 = [v37 ckrecordIdentifier];
                v54 = [ckrecordIdentifier2 isEqualToString:dCopy];

                if ((v54 & 1) == 0)
                {
                  *sync = 1;
                }
              }
            }

            v55 = off_100127E38;
            v30 = handleCopy;
            if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
            {
              v56 = *local;
              v57 = *sync;
              *buf = 67109632;
              *v77 = v56;
              *&v77[4] = 1024;
              *&v77[6] = v57;
              LOWORD(v78) = 1024;
              *(&v78 + 2) = 0;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Delete New Asset Local Only: %u LocalAndSync: %u Existing Record In Cloud: %u", buf, 0x14u);
            }
          }

          else
          {
            v41 = off_100127E38;
            if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v77 = v33;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "going to delete asset handle %@ as it's older than the new asset", buf, 0xCu);
            }

            [v63 addObject:v33];
            ckrecordIdentifier3 = [v37 ckrecordIdentifier];

            if (dCopy)
            {
              if (ckrecordIdentifier3)
              {
                ckrecordIdentifier4 = [v37 ckrecordIdentifier];
                v44 = [ckrecordIdentifier4 isEqualToString:dCopy];

                if ((v44 & 1) == 0)
                {
                  v45 = off_100127E38;
                  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
                  {
                    v46 = v45;
                    ckrecordIdentifier5 = [v37 ckrecordIdentifier];
                    *buf = v59;
                    *v77 = v33;
                    *&v77[8] = 2112;
                    v78 = ckrecordIdentifier5;
                    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "going to delete asset handle %@ with record ID %@ in the cloud", buf, 0x16u);
                  }

                  ckrecordIdentifier6 = [v37 ckrecordIdentifier];
                  type = [v37 type];
                  assetOwner = [v36 assetOwner];
                  profileType = [assetOwner profileType];
                  v69[0] = _NSConcreteStackBlock;
                  v69[1] = 3221225472;
                  v69[2] = sub_100048A50;
                  v69[3] = &unk_100116118;
                  v69[4] = v33;
                  [(MAServer *)self deleteAssetInCloudWithRecordName:ckrecordIdentifier6 assetType:type profileType:profileType completionHandler:v69];

                  v30 = handleCopy;
                }
              }
            }
          }
        }
      }

      v31 = [v27 countByEnumeratingWithState:&v70 objects:v74 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  v17 = v63;
  *sync = 0;
  v18 = v61;
  duplicationCopy = v62;
  if ([v63 count])
  {
    v24 = v60;
    if ([(MAStorage *)self->_storage deleteAssets:v63 error:error])
    {
      v26 = 1;
      goto LABEL_43;
    }

    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100051010(v63, error);
    }

    goto LABEL_8;
  }

  v26 = 1;
LABEL_42:
  v24 = v60;
LABEL_43:

  return v26;
}

- (void)CheckIfCloudAssetZonesWithCompletion:(id)completion
{
  policyEngine = self->_policyEngine;
  v6 = kManagedAssetQueryEntitlement;
  completionCopy = completion;
  v8 = +[NSXPCConnection currentConnection];
  v9 = NSStringFromSelector(a2);
  v11 = 0;
  LOBYTE(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:v6 client:v8 function:v9 error:&v11];
  v10 = v11;

  if (policyEngine)
  {
    [(MAServer *)self checkCloudRecordZoneExistWithCompletionHandler:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0, v10);
  }
}

- (void)saveAVPSetupUserOption:(int64_t)option completion:(id)completion
{
  policyEngine = self->_policyEngine;
  v8 = kManagedAssetShareModeEntitlement;
  completionCopy = completion;
  v10 = +[NSXPCConnection currentConnection];
  v11 = NSStringFromSelector(a2);
  v13 = 0;
  LOBYTE(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:v8 client:v10 function:v11 error:&v13];
  v12 = v13;

  if (policyEngine)
  {
    [(MAServer *)self saveAVPSetupUserOption:option completionHandler:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, v12);
  }
}

- (void)parseSyncOptions:(int64_t)options localOnly:(BOOL *)only cloudOnly:(BOOL *)cloudOnly localAndCloud:(BOOL *)cloud defaultOption:(BOOL *)option
{
  *only = 0;
  *cloudOnly = 0;
  *cloud = 0;
  if ((options & 0x10) != 0)
  {
    option = cloud;
  }

  if ((options & 8) != 0)
  {
    option = cloudOnly;
  }

  if (self->_isXCTest)
  {
    onlyCopy2 = only;
  }

  else
  {
    onlyCopy2 = option;
  }

  if ((options & 4) != 0)
  {
    onlyCopy2 = only;
  }

  *onlyCopy2 = 1;
}

- (id)didReceiveAsset:(id)asset sessionToken:(id)token
{
  assetCopy = asset;
  tokenCopy = token;
  v8 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v98 = assetCopy;
    v99 = 2112;
    v100 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asset: %@ synced down, sessionToken: %@", buf, 0x16u);
  }

  assetMetadata = [assetCopy assetMetadata];
  ckrecordIdentifier = [assetMetadata ckrecordIdentifier];
  storage = self->_storage;
  v95[0] = kManagedAssetsRecordNameKey;
  v95[1] = kManagedAssetsAssetStateKey;
  v77 = kManagedAssetsAssetStateKey;
  v96[0] = ckrecordIdentifier;
  v96[1] = &off_10011E018;
  v12 = [NSDictionary dictionaryWithObjects:v96 forKeys:v95 count:2];
  profile = [(MAServer *)self profile];
  profileName = [profile profileName];
  v88 = 0;
  v79 = [(MAStorage *)storage queryAssets:v12 profile:profileName error:&v88];
  v78 = v88;

  assetOwner = [assetCopy assetOwner];

  if (!assetOwner)
  {
    [assetCopy setAssetOwner:self->_profile];
  }

  v16 = +[NSUUID UUID];
  uUIDString = [v16 UUIDString];

  [assetCopy setAssetHandle:uUIDString];
  type = [assetMetadata type];
  profile2 = [(MAServer *)self profile];
  v20 = +[MAUtilityHelper determinePClassWith:profileType:deviceState:](MAUtilityHelper, "determinePClassWith:profileType:deviceState:", type, [profile2 profileType], self->_deviceState);

  v21 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    v22 = v21;
    type2 = [assetMetadata type];
    *buf = 134218242;
    v98 = type2;
    v99 = 2112;
    v100 = v20;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "asset type %lu adopts pt %@", buf, 0x16u);
  }

  v24 = self->_storage;
  v87 = 0;
  v25 = [(MAStorage *)v24 createAsset:assetCopy token:tokenCopy protectionClass:v20 assetPathOut:0 error:&v87];
  v26 = v87;
  v27 = v79;
  if (v25)
  {
    v76 = v20;
    v28 = [v79 count];
    v29 = off_100127E38;
    v30 = os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO);
    if (v28)
    {
      if (v30)
      {
        *buf = 138412546;
        v98 = v79;
        v99 = 2112;
        v100 = ckrecordIdentifier;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Cloud sync down asset matches asset handle. Deleting asset handle: %@, recordName: %@", buf, 0x16u);
      }

      v31 = self->_storage;
      v86 = v26;
      v32 = [(MAStorage *)v31 deleteAssets:v79 error:&v86];
      v33 = v86;

      if ((v32 & 1) == 0)
      {
        if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
        {
          sub_100051150();
        }

        v34 = 0;
        v26 = v33;
        goto LABEL_40;
      }

      v71 = uUIDString;
      v72 = ckrecordIdentifier;
      v73 = assetMetadata;
      v74 = tokenCopy;
      v26 = v33;
    }

    else
    {
      v73 = assetMetadata;
      v74 = tokenCopy;
      v71 = uUIDString;
      v72 = ckrecordIdentifier;
      if (v30)
      {
        *buf = 138412290;
        v98 = ckrecordIdentifier;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "There are no other assets in staging with the same recordName: %@", buf, 0xCu);
      }
    }

    v85 = 0;
    assetMetadata2 = [assetCopy assetMetadata];
    lastUpdatedTime = [assetMetadata2 lastUpdatedTime];
    [lastUpdatedTime timeIntervalSince1970];
    v38 = v37;

    assetMetadata3 = [assetCopy assetMetadata];
    label = [assetMetadata3 label];
    assetMetadata4 = [assetCopy assetMetadata];
    type3 = [assetMetadata4 type];
    assetHandle = [assetCopy assetHandle];
    assetMetadata5 = [assetCopy assetMetadata];
    ckrecordIdentifier2 = [assetMetadata5 ckrecordIdentifier];
    v84 = v26;
    LOBYTE(type3) = [(MAServer *)self assetDeDuplication:label type:type3 lastUpdatedTime:assetHandle newAssetHandle:ckrecordIdentifier2 newAssetRecordID:&v85 + 1 deleteNewAssetLocal:&v85 deleteNewAssetLocalAndSync:v38 error:&v84];
    v75 = v84;

    if ((type3 & 1) == 0 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_1000511BC();
    }

    assetMetadata = v73;
    if ((v85 & 0x100) == 0 && v85 != 1)
    {
      assetMetadata6 = [assetCopy assetMetadata];
      assetState = [assetMetadata6 assetState];
      assetMetadata7 = [assetCopy assetMetadata];
      [assetMetadata7 setAssetState:assetState | 1];

      v60 = self->_storage;
      v92 = v77;
      v93 = &off_10011E030;
      v56 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
      assetProcess = [assetCopy assetProcess];
      profile3 = [(MAServer *)self profile];
      v80 = v75;
      [(MAStorage *)v60 updateAsset:assetCopy event:0 options:v56 process:assetProcess profile:profile3 error:&v80];
      v26 = v80;

      ckrecordIdentifier = v72;
      goto LABEL_38;
    }

    v46 = off_100127E38;
    ckrecordIdentifier = v72;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v98 = assetCopy;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Deleting new asset handle %@ locally", buf, 0xCu);
    }

    v47 = self->_storage;
    assetHandle2 = [assetCopy assetHandle];
    v94 = assetHandle2;
    v49 = [NSArray arrayWithObjects:&v94 count:1];
    v83 = v75;
    LOBYTE(v47) = [(MAStorage *)v47 deleteAssets:v49 error:&v83];
    v26 = v83;

    if (v47)
    {
      if (v85 != 1)
      {
        goto LABEL_39;
      }

      ckrecordIdentifier3 = [v73 ckrecordIdentifier];

      if (!ckrecordIdentifier3)
      {
        goto LABEL_39;
      }

      v51 = off_100127E38;
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v98 = v72;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Deleting new record name %@ in the cloud", buf, 0xCu);
      }

      assetMetadata8 = [assetCopy assetMetadata];
      type4 = [assetMetadata8 type];
      assetOwner2 = [assetCopy assetOwner];
      profileType = [assetOwner2 profileType];
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_100049688;
      v81[3] = &unk_100116118;
      v82 = assetCopy;
      [(MAServer *)self deleteAssetInCloudWithRecordName:v72 assetType:type4 profileType:profileType completionHandler:v81];

      v56 = v82;
LABEL_38:

LABEL_39:
      malocalAssetPath = [(MAStorage *)self->_storage malocalAssetPath];
      [_TtC6server14MAPurgeUtility markPurgeable:malocalAssetPath];

      malocalTmpAssetPath = [(MAStorage *)self->_storage malocalTmpAssetPath];
      [_TtC6server14MAPurgeUtility markPurgeable:malocalTmpAssetPath];

      [(MANotificationEngine *)self->_notificationEngine postNotificationWheniCloudSyncedDown];
      notificationEngine = self->_notificationEngine;
      assetMetadata9 = [assetCopy assetMetadata];
      v67 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [assetMetadata9 type]);
      v89 = v71;
      v90 = v67;
      v68 = [NSArray arrayWithObjects:&v89 count:1];
      v91 = v68;
      v69 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      [(MANotificationEngine *)notificationEngine notifyAssetChangeWith:0x100000 handles:v69];

      uUIDString = v71;
      v34 = v71;
      tokenCopy = v74;
      v27 = v79;
LABEL_40:
      v20 = v76;
      goto LABEL_41;
    }

    tokenCopy = v74;
    v20 = v76;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100051254();
    }

    v34 = 0;
    v27 = v79;
    uUIDString = v71;
  }

  else
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_1000510E4();
    }

    v34 = 0;
  }

LABEL_41:

  return v34;
}

- (BOOL)didReceiveAssetDelete:(id)delete assetType:(unint64_t)type assetHandle:(id)handle
{
  deleteCopy = delete;
  handleCopy = handle;
  v10 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = deleteCopy;
    *&buf[12] = 2048;
    *&buf[14] = type;
    *&buf[22] = 2112;
    v24 = handleCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Asset cloud deletion sync down, recordName: %@ type: %lu, handle: %@", buf, 0x20u);
  }

  v11 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *&buf[4] = deleteCopy;
    *&buf[12] = 2048;
    *&buf[14] = type;
    *&buf[22] = 2112;
    v24 = handleCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Deleting asset deleted from cloud, recordName: %@ type: %lu, handle: %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v24 = sub_10003C300;
  v25 = sub_10003C310;
  v26 = 0;
  storage = self->_storage;
  obj = 0;
  v13 = [(MAStorage *)storage queryAssetHandleAndTypeBy:deleteCopy type:0 error:&obj];
  objc_storeStrong(&v26, obj);
  v14 = off_100127E38;
  v15 = os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO);
  if (v13)
  {
    if (v15)
    {
      *v19 = 138412546;
      v20 = v13;
      v21 = 2112;
      v22 = deleteCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Asset to be deleted exists handle: %@, recordName: %@", v19, 0x16u);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000499D0;
    v17[3] = &unk_100116A08;
    v17[4] = buf;
    [(MAServer *)self DeleteAsset:v13 withOptions:0 completion:v17];
  }

  else if (v15)
  {
    *v19 = 138412290;
    v20 = deleteCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Asset to be deleted does not exist, recordName: %@", v19, 0xCu);
  }

  _Block_object_dispose(buf, 8);
  return 1;
}

- (BOOL)checkAndFixCloudQuotaWithError:(id *)error
{
  v86 = +[NSMutableArray array];
  storage = self->_storage;
  v91 = kManagedAssetsAssetStateKey;
  v121 = kManagedAssetsAssetStateKey;
  v122 = &off_10011E048;
  v6 = [NSDictionary dictionaryWithObjects:&v122 forKeys:&v121 count:1];
  profileName = [(MASDUserProfile *)self->_defaultProfile profileName];
  v8 = [(MAStorage *)storage queryAssets:v6 profile:profileName error:error];

  v9 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v116 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "query active assets with quota exceeded: %@", buf, 0xCu);
  }

  if (!*error)
  {
    v119[0] = v91;
    v119[1] = kManagedAssetsSerializedFeatureKey;
    v120[0] = &off_10011E000;
    v120[1] = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:v120 forKeys:v119 count:2];
    v12 = self->_storage;
    profileName2 = [(MASDUserProfile *)self->_defaultProfile profileName];
    v14 = [(MAStorage *)v12 queryAssets:v11 profile:profileName2 error:error];

    v15 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v116 = v11;
      v117 = 2112;
      v118 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "query serialized feature assets (active & inactive) with options %@: %@", buf, 0x16u);
    }

    v10 = *error == 0;
    if (*error)
    {
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
      {
        sub_10005135C(v11, error);
      }

LABEL_70:

      goto LABEL_71;
    }

    if (![v8 count] && objc_msgSend(v14, "count") <= 3)
    {
      v16 = off_100127E38;
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "no handles with quota exceeded and there are 3 or less serialized feature assets", buf, 2u);
      }

      goto LABEL_70;
    }

    v82 = v10;
    v84 = v11;
    v85 = v8;
    errorCopy = error;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v83 = v14;
    obj = v14;
    v17 = [obj countByEnumeratingWithState:&v103 objects:v114 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v104;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v104 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v103 + 1) + 8 * i);
          v22 = self->_storage;
          profile = [(MAServer *)self profile];
          v24 = [(MAStorage *)v22 getAsset:v21 profile:profile option:0 assetPathOut:0 bypassProfileCheck:0 error:error];

          if (*error)
          {
            v25 = off_100127E38;
            if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
            {
              v26 = *error;
              *buf = 138412546;
              v116 = v21;
              v117 = 2112;
              v118 = v26;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to get asset with handle: %@, error %@", buf, 0x16u);
            }
          }

          else
          {
            assetMetadata = [v24 assetMetadata];
            lastUpdatedTime = [assetMetadata lastUpdatedTime];

            v113[0] = v24;
            v113[1] = lastUpdatedTime;
            v29 = [NSArray arrayWithObjects:v113 count:2];
            [v86 addObject:v29];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v103 objects:v114 count:16];
      }

      while (v18);
    }

    if ([obj count] < 4)
    {
      v30 = [v86 copy];
    }

    else
    {
      v30 = [v86 sortedArrayUsingComparator:&stru_100116A48];
    }

    v31 = v30;
    v32 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v116 = v31;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "sorted serialized features: %@", buf, 0xCu);
    }

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v88 = v31;
    v33 = [v88 countByEnumeratingWithState:&v99 objects:v112 count:16];
    if (!v33)
    {
LABEL_56:
      v62 = v88;

      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v90 = v85;
      v63 = [v90 countByEnumeratingWithState:&v93 objects:v109 count:16];
      v64 = errorCopy;
      if (v63)
      {
        v65 = v63;
        v66 = *v94;
        do
        {
          for (j = 0; j != v65; j = j + 1)
          {
            if (*v94 != v66)
            {
              objc_enumerationMutation(v90);
            }

            v68 = *(*(&v93 + 1) + 8 * j);
            if (([v62 containsObject:v68] & 1) == 0)
            {
              v69 = self->_storage;
              profile2 = [(MAServer *)self profile];
              v71 = [(MAStorage *)v69 getAsset:v68 profile:profile2 option:0 assetPathOut:0 bypassProfileCheck:0 error:v64];

              if (*v64)
              {
                v72 = off_100127E38;
                if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
                {
                  v73 = *v64;
                  *buf = 138412546;
                  v116 = v68;
                  v117 = 2112;
                  v118 = v73;
                  _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "Failed to get asset with handle: %@, error %@", buf, 0x16u);
                }
              }

              else
              {
                assetMetadata2 = [v71 assetMetadata];
                assetState = [assetMetadata2 assetState];

                v76 = self->_storage;
                v107 = v91;
                0xFFFFFFFFFFFFA1DFLL = [NSNumber numberWithUnsignedInteger:assetState & 0xFFFFFFFFFFFFA1DFLL];
                v108 = 0xFFFFFFFFFFFFA1DFLL;
                v78 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
                assetProcess = [v71 assetProcess];
                profile3 = [(MAServer *)self profile];
                [(MAStorage *)v76 updateAsset:v71 event:0 options:v78 process:assetProcess profile:profile3 error:errorCopy];

                v62 = v88;
                v64 = errorCopy;
              }
            }
          }

          v65 = [v90 countByEnumeratingWithState:&v93 objects:v109 count:16];
        }

        while (v65);
      }

      v11 = v84;
      v8 = v85;
      v14 = v83;
      v10 = v82;
      goto LABEL_70;
    }

    v34 = v33;
    v35 = 0;
    v89 = *v100;
LABEL_34:
    v36 = 0;
    while (1)
    {
      if (*v100 != v89)
      {
        objc_enumerationMutation(v88);
      }

      v37 = [*(*(&v99 + 1) + 8 * v36) objectAtIndexedSubscript:0];
      v38 = off_100127E38;
      v39 = os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO);
      if (v35 < 3)
      {
        if (v39)
        {
          *buf = 138412290;
          v116 = v37;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "processing serialized feature asset %@", buf, 0xCu);
        }

        assetMetadata3 = [v37 assetMetadata];
        assetState2 = [assetMetadata3 assetState];

        assetMetadata4 = [v37 assetMetadata];
        assetState3 = [assetMetadata4 assetState];
        if (assetState2)
        {
          v50 = assetState3 & 0xFFFFFFFFFFFFA1DFLL;

          goto LABEL_53;
        }

        if ((assetState3 & 0x220) != 0)
        {

LABEL_52:
          assetMetadata5 = [v37 assetMetadata];
          v50 = [assetMetadata5 assetState] & 0xFFFFFFFFFFFFA1DFLL;

LABEL_53:
          ++v35;
          goto LABEL_54;
        }

        v55 = [obj count];

        if (v55 < 4)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v39)
        {
          *buf = 138412290;
          v116 = v37;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "max serialized features processed. asset %@ will be marked as quota exceeded", buf, 0xCu);
        }

        assetMetadata6 = [v37 assetMetadata];
        v41 = [assetMetadata6 assetState] & 0x220;

        if (v41)
        {
          assetMetadata7 = [v37 assetMetadata];
          ckrecordIdentifier = [assetMetadata7 ckrecordIdentifier];

          v44 = off_100127E38;
          if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v116 = v37;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "old SerializedFeature asset %@ was synced to cloud, will remove it from Cloud only", buf, 0xCu);
          }

          assetMetadata8 = [v37 assetMetadata];
          type = [assetMetadata8 type];
          assetOwner = [v37 assetOwner];
          profileType = [assetOwner profileType];
          v97[0] = _NSConcreteStackBlock;
          v97[1] = 3221225472;
          v97[2] = sub_10004A59C;
          v97[3] = &unk_100116118;
          v98 = v37;
          [(MAServer *)self deleteAssetInCloudWithRecordName:ckrecordIdentifier assetType:type profileType:profileType completionHandler:v97];
        }
      }

      assetMetadata9 = [v37 assetMetadata];
      v50 = [assetMetadata9 assetState] & 0xFFFFFFFFFFFFA1DFLL | 0x4000;

LABEL_54:
      v57 = self->_storage;
      v110 = v91;
      v58 = [NSNumber numberWithUnsignedInteger:v50];
      v111 = v58;
      v59 = [NSDictionary dictionaryWithObjects:&v111 forKeys:&v110 count:1];
      assetProcess2 = [v37 assetProcess];
      profile4 = [(MAServer *)self profile];
      [(MAStorage *)v57 updateAsset:v37 event:0 options:v59 process:assetProcess2 profile:profile4 error:errorCopy];

      if (v34 == ++v36)
      {
        v34 = [v88 countByEnumeratingWithState:&v99 objects:v112 count:16];
        if (!v34)
        {
          goto LABEL_56;
        }

        goto LABEL_34;
      }
    }
  }

  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_1000512EC(error);
  }

  v10 = 0;
LABEL_71:

  return v10;
}

- (BOOL)resetAssetCloudState:(id *)state
{
  v5 = &selRef_queryInUseStatusWithAuditToken_completion_;
  v6 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Resetting Asset Cloud State and cleaning up local asset store", buf, 2u);
  }

  v40 = kManagedAssetsAssetStateKey;
  v55 = kManagedAssetsAssetStateKey;
  v56 = &off_10011E030;
  v7 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  storage = self->_storage;
  profileName = [(MASDUserProfile *)self->_defaultProfile profileName];
  v10 = [(MAStorage *)storage queryAssets:v7 profile:profileName error:state];

  v11 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v52 = v7;
    v53 = 2112;
    v54 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "query active assets that have been uploaded to cloud with options %@: %@", buf, 0x16u);
  }

  v12 = *state;
  if (!*state)
  {
    v38 = v10;
    v39 = v7;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v10;
    v13 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (!v13)
    {
      goto LABEL_23;
    }

    v14 = v13;
    v15 = *v45;
    while (1)
    {
      v16 = 0;
      v41 = v14;
      do
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v44 + 1) + 8 * v16);
        v18 = self->_storage;
        profile = [(MAServer *)self profile];
        v20 = [(MAStorage *)v18 getAsset:v17 profile:profile option:0 assetPathOut:0 bypassProfileCheck:0 error:state];

        if (*state)
        {
          v21 = v5[455];
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          v22 = *state;
          *buf = 138412546;
          v52 = v17;
          v53 = 2112;
          v54 = v22;
          v23 = v21;
          v24 = "Failed to get asset with handle: %@, error %@";
          goto LABEL_21;
        }

        assetMetadata = [v20 assetMetadata];
        assetState = [assetMetadata assetState];

        assetMetadata2 = [v20 assetMetadata];
        [assetMetadata2 setAssetState:assetState & 0xFFFFFFFFFFFFE1DFLL];

        v43 = self->_storage;
        v48 = v40;
        0xFFFFFFFFFFFFE1DFLL = [NSNumber numberWithUnsignedInteger:assetState & 0xFFFFFFFFFFFFE1DFLL];
        v49 = 0xFFFFFFFFFFFFE1DFLL;
        v29 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        assetProcess = [v20 assetProcess];
        [(MAServer *)self profile];
        v31 = v15;
        v33 = v32 = v5;
        [(MAStorage *)v43 updateAsset:v20 event:0 options:v29 process:assetProcess profile:v33 error:state];

        v5 = v32;
        v15 = v31;

        v14 = v41;
        if (*state)
        {
          v34 = v5[455];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = *state;
            *buf = 138412546;
            v52 = v20;
            v53 = 2112;
            v54 = v35;
            v23 = v34;
            v24 = "Failed to update asset: %@, error %@";
LABEL_21:
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x16u);
          }
        }

LABEL_18:

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v36 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
      v14 = v36;
      if (!v36)
      {
LABEL_23:

        v10 = v38;
        v7 = v39;
        v12 = 0;
        goto LABEL_24;
      }
    }
  }

  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_10005135C(v7, state);
  }

LABEL_24:

  return v12 == 0;
}

- (BOOL)resetKVSCloudState:(id *)state
{
  v5 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Resetting KVS Cloud State and cleaning up local kv store", v8, 2u);
  }

  v6 = [(MAKVStoreManager *)self->_kvStoreManager resetKVCloudStateWithError:state];
  if (!v6 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_1000513C4(state);
  }

  return v6;
}

- (void)processZoneDelete:(id)delete reason:(unint64_t)reason error:(id)error
{
  deleteCopy = delete;
  errorCopy = error;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004ABD0;
  block[3] = &unk_100116A70;
  block[4] = self;
  v13 = deleteCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = deleteCopy;
  dispatch_async(serialQueue, block);
}

- (BOOL)didReceiveZoneDelete:(id)delete reason:(unint64_t)reason
{
  deleteCopy = delete;
  v7 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = deleteCopy;
    v15 = 2048;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Zone %@ was deleted, reason: %lu", buf, 0x16u);
  }

  self->_lastCloudSyncCheckTimeInterval = 0;
  v12 = 0;
  v8 = [(MAServer *)self resetAssetCloudState:&v12];
  v9 = v12;
  if ((v8 & 1) == 0 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_100051434();
  }

  if (reason == 5 || reason == 2)
  {
    v10 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "upload assets for ManateeIdentityRecovery", buf, 2u);
    }

    [(MAServer *)self uploadOldAssetsWithOption:2 includeKVStoreData:0 error:0];
  }

  else
  {
    [(MAServer *)self processZoneDelete:deleteCopy reason:reason error:0];
  }

  return 1;
}

- (BOOL)didSyncUpAsset:(id)asset
{
  assetCopy = asset;
  v5 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    assetHandle = [assetCopy assetHandle];
    assetMetadata = [assetCopy assetMetadata];
    label = [assetMetadata label];
    assetData = [assetCopy assetData];
    v11 = [assetData length];
    assetMetadata2 = [assetCopy assetMetadata];
    ckrecordIdentifier = [assetMetadata2 ckrecordIdentifier];
    *buf = 138413058;
    *&buf[4] = assetHandle;
    v45 = 2112;
    v46 = label;
    v47 = 2048;
    v48 = v11;
    v49 = 2112;
    v50 = ckrecordIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asset with handle: %@ label: %@ size:%lu recordName %@ uploaded to cloud", buf, 0x2Au);
  }

  notificationEngine = self->_notificationEngine;
  assetMetadata3 = [assetCopy assetMetadata];
  v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [assetMetadata3 type]);
  v42 = v16;
  assetHandle2 = [assetCopy assetHandle];
  v41 = assetHandle2;
  v18 = [NSArray arrayWithObjects:&v41 count:1];
  v43 = v18;
  v19 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  [(MANotificationEngine *)notificationEngine notifyAssetChangeWith:0x800000 handles:v19];

  [(MANotificationEngine *)self->_notificationEngine postNotificationWheniCloudSyncedUp];
  storage = self->_storage;
  assetHandle3 = [assetCopy assetHandle];
  profile = self->_profile;
  v40 = 0;
  v23 = [(MAStorage *)storage getAsset:assetHandle3 profile:profile option:0 assetPathOut:0 bypassProfileCheck:0 error:&v40];
  v24 = v40;

  if (v23)
  {
    assetMetadata4 = [assetCopy assetMetadata];
    ckrecordIdentifier2 = [assetMetadata4 ckrecordIdentifier];

    recordAccount = [assetCopy recordAccount];
    v28 = +[NSMutableDictionary dictionary];
    v29 = v28;
    if (ckrecordIdentifier2)
    {
      [v28 setObject:ckrecordIdentifier2 forKeyedSubscript:kManagedAssetsRecordNameKey];
    }

    if (recordAccount)
    {
      [v29 setObject:recordAccount forKeyedSubscript:kManagedAssetsRecordAccountKey];
    }

    *buf = 0;
    [v29 setObject:&off_10011E060 forKeyedSubscript:kManagedAssetsAssetStateKey];
    assetMetadata5 = [v23 assetMetadata];
    v39 = v24;
    v31 = [(MAServer *)self modifyUpdatedMetadata:v29 assetMetadata:assetMetadata5 eventtype:buf error:&v39];
    v32 = v39;

    [v23 setAssetMetadata:v31];
    if ([v29 count])
    {
      v33 = self->_storage;
      assetProcess = [assetCopy assetProcess];
      profile = [(MAServer *)self profile];
      v38 = v32;
      [(MAStorage *)v33 updateAsset:v23 event:0 options:v29 process:assetProcess profile:profile error:&v38];
      v36 = v38;

      v32 = v36;
    }

    v24 = v32;
  }

  else if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_1000514A4();
  }

  return v23 != 0;
}

- (BOOL)didSyncUpAssetDelete:(id)delete
{
  deleteCopy = delete;
  v4 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = deleteCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Asset with recordName %@ deleted in Cloud (sync up)", &v6, 0xCu);
  }

  return 1;
}

- (BOOL)failedToUploadAsset:(id)asset error:(id)error
{
  assetCopy = asset;
  errorCopy = error;
  v8 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_10005153C(v8, assetCopy, errorCopy);
  }

  if ([errorCopy code] == -20602)
  {
    v9 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      assetMetadata = [assetCopy assetMetadata];
      label = [assetMetadata label];
      assetMetadata2 = [assetCopy assetMetadata];
      ckrecordIdentifier = [assetMetadata2 ckrecordIdentifier];
      assetData = [assetCopy assetData];
      *buf = 138412802;
      *&buf[4] = label;
      v37 = 2112;
      v38 = ckrecordIdentifier;
      v39 = 2048;
      v40 = [assetData length];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "asset label %@ record: %@ is too big of a size to be re-uploaded. Size: %lu", buf, 0x20u);
    }

    storage = self->_storage;
    assetHandle = [assetCopy assetHandle];
    profile = self->_profile;
    v33 = 0;
    v19 = [(MAStorage *)storage getAsset:assetHandle profile:profile option:0 assetPathOut:0 bypassProfileCheck:0 error:&v33];
    v20 = v33;

    v21 = v19 != 0;
    if (v19)
    {
      v34 = kManagedAssetsAssetStateKey;
      v35 = &off_10011E048;
      v22 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *buf = 0;
      assetMetadata3 = [v19 assetMetadata];
      v32 = v20;
      v24 = [(MAServer *)self modifyUpdatedMetadata:v22 assetMetadata:assetMetadata3 eventtype:buf error:&v32];
      v25 = v32;

      [v19 setAssetMetadata:v24];
      if ([v22 count])
      {
        v26 = self->_storage;
        assetProcess = [assetCopy assetProcess];
        profile = [(MAServer *)self profile];
        v31 = v25;
        [(MAStorage *)v26 updateAsset:v19 event:0 options:v22 process:assetProcess profile:profile error:&v31];
        v29 = v31;

        v25 = v29;
      }

      v20 = v25;
    }

    else if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_1000514A4();
    }
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

- (void)failedToDeleteAsset:(id)asset error:(id)error
{
  assetCopy = asset;
  errorCopy = error;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_100051688();
  }
}

- (void)failedToDeleteZone:(id)zone error:(id)error
{
  zoneCopy = zone;
  errorCopy = error;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_1000516F4();
  }

  [(MAServer *)self processZoneDelete:zoneCopy reason:0 error:errorCopy];
}

- (void)processAccountChangedWithSigninUser:(id)user signoutUser:(id)signoutUser accountSwitch:(BOOL)switch
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004BB08;
  block[3] = &unk_100116A98;
  if (signoutUser)
  {
    v9 = user != 0;
  }

  else
  {
    v9 = 0;
  }

  if (signoutUser)
  {
    v10 = 0;
  }

  else
  {
    v10 = user != 0;
  }

  v20 = v9;
  v21 = v10;
  if (signoutUser)
  {
    v11 = user == 0;
  }

  else
  {
    v11 = 0;
  }

  v22 = v11;
  block[4] = self;
  signoutUserCopy = signoutUser;
  userCopy = user;
  dispatch_async(serialQueue, block);
  cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004BDB4;
  v15[3] = &unk_100116A98;
  v15[4] = self;
  switchCopy = switch;
  v17 = v9;
  v18 = v10;
  dispatch_async(cloudSyncSerialQueue, v15);
}

- (void)uploadOldAssetsOnStartup
{
  cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004C3A8;
  block[3] = &unk_100115E70;
  block[4] = self;
  dispatch_async(cloudSyncSerialQueue, block);
}

- (BOOL)uploadOldAssetsWithOption:(unint64_t)option includeKVStoreData:(BOOL)data error:(id *)error
{
  dataCopy = data;
  v9 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    optionCopy = option;
    v56 = 1024;
    v57 = dataCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "uploadOldAssetsWithOption %lu includeKVStoreData:%u", buf, 0x12u);
  }

  v10 = +[NSDate now];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

  if (option != 3)
  {
    v13 = 0;
LABEL_7:
    v50 = 0;
    v14 = [(MAServer *)self checkAndFixCloudQuotaWithError:&v50];
    v15 = v50;
    if (v14)
    {
      v41 = v12;
      v52[0] = kManagedAssetsAssetStateKey;
      v52[1] = kManagedAssetsAssetStateNegativeFilterKey;
      v53[0] = &off_10011E030;
      v53[1] = &off_10011E078;
      v16 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:2];
      storage = self->_storage;
      profileName = [(MASDUserProfile *)self->_defaultProfile profileName];
      v49 = 0;
      v42 = v16;
      v43 = [(MAStorage *)storage queryAssets:v16 profile:profileName error:&v49];
      v19 = v49;

      v20 = v19 == 0;
      v21 = off_100127E38;
      if (!v19)
      {
        v39 = v15;
        v40 = dataCopy;
        if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          optionCopy = v43;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "query unsynced active assets returns %@", buf, 0xCu);
        }

        v38 = v19 == 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v25 = v43;
        v26 = [v25 countByEnumeratingWithState:&v45 objects:v51 count:16];
        if (v26)
        {
          v27 = v26;
          v19 = 0;
          v28 = *v46;
          do
          {
            for (i = 0; i != v27; i = i + 1)
            {
              if (*v46 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v45 + 1) + 8 * i);

              v31 = self->_storage;
              defaultProfile = self->_defaultProfile;
              v44 = 0;
              v33 = [(MAStorage *)v31 getAsset:v30 profile:defaultProfile option:1 assetPathOut:0 bypassProfileCheck:0 error:&v44];
              v34 = v44;
              v19 = v34;
              if (v33)
              {
                v35 = v34 == 0;
              }

              else
              {
                v35 = 0;
              }

              if (v35)
              {
                [(MAServer *)self saveAssetToCloud:v33 options:v13 completionHandler:&stru_100116AE0];
              }

              else
              {
                v36 = off_100127E38;
                if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  optionCopy = v19;
                  _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "fail to retrieve MAAsset, error: %@", buf, 0xCu);
                }
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v45 objects:v51 count:16];
          }

          while (v27);
        }

        else
        {
          v19 = 0;
        }

        self->_lastCloudSyncCheckTimeInterval = v41;
        v20 = v38;
        if (v40)
        {
          [(MAKVStoreManager *)self->_kvStoreManager checkStoreForUploadWithOption:option completionHandler:&stru_100116B00];
        }

        v15 = v39;
        goto LABEL_38;
      }

      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
      {
        sub_100051840();
        if (!error)
        {
          goto LABEL_38;
        }
      }

      else if (!error)
      {
LABEL_38:

        goto LABEL_41;
      }

      v22 = v19;
      *error = v19;
      goto LABEL_38;
    }

    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_1000517D0();
      if (error)
      {
        goto LABEL_14;
      }
    }

    else if (error)
    {
LABEL_14:
      v23 = v15;
      v20 = 0;
      *error = v15;
LABEL_41:

      return v20;
    }

    v20 = 0;
    goto LABEL_41;
  }

  if (v12 - self->_lastCloudSyncCheckTimeInterval > 1799)
  {
    v13 = 1;
    goto LABEL_7;
  }

  v24 = off_100127E38;
  v20 = 0;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Skip forced cloud sync checkup as the last checkup was done in less than 30 min.", buf, 2u);
    return 0;
  }

  return v20;
}

- (BOOL)didReceiveKVSData:(id)data assetType:(unint64_t)type storeName:(id)name storeGroup:(id)group profileType:(unint64_t)profileType data:(id)a8
{
  dataCopy = data;
  nameCopy = name;
  groupCopy = group;
  v17 = a8;
  v18 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    v21 = 138413314;
    v22 = dataCopy;
    v23 = 2048;
    typeCopy = type;
    v25 = 2112;
    v26 = nameCopy;
    v27 = 2112;
    v28 = groupCopy;
    v29 = 2048;
    profileTypeCopy = profileType;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "KVData synced down, recordName: %@ assetType: %lu store: %@ group: %@ profileType: %lu", &v21, 0x34u);
  }

  v19 = [(MAKVStoreManager *)self->_kvStoreManager didReceiveKVSData:dataCopy assetType:type storeName:nameCopy storeGroup:groupCopy profileType:profileType data:v17];

  return v19;
}

- (BOOL)didReceiveKVSDataDelete:(id)delete recordHandle:(id)handle assetType:(unint64_t)type storeName:(id)name storeGroup:(id)group profileType:(unint64_t)profileType
{
  deleteCopy = delete;
  handleCopy = handle;
  nameCopy = name;
  groupCopy = group;
  v18 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    v21 = 138413058;
    v22 = deleteCopy;
    v23 = 2112;
    v24 = nameCopy;
    v25 = 2112;
    v26 = groupCopy;
    v27 = 2048;
    profileTypeCopy = profileType;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "KVSData delete sync down, recordName:%@ store:%@ group:%@ profileType:%lu", &v21, 0x2Au);
  }

  v19 = [(MAKVStoreManager *)self->_kvStoreManager didReceiveKVSDataDelete:deleteCopy recordHandle:handleCopy assetType:type storeName:nameCopy storeGroup:groupCopy profileType:profileType];

  return v19;
}

- (BOOL)didReceiveKVSDataZoneDelete:(id)delete reason:(unint64_t)reason
{
  deleteCopy = delete;
  v7 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = deleteCopy;
    v16 = 2048;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Zone %@ was deleted, reason: %lu", buf, 0x16u);
  }

  self->_lastCloudSyncCheckTimeInterval = 0;
  v13 = 0;
  v8 = [(MAServer *)self resetKVSCloudState:&v13];
  v9 = v13;
  if ((v8 & 1) == 0 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_100051990();
  }

  if (reason == 5 || reason == 2)
  {
    v10 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "upload KVStore records for ManateeIdentityRecovery", buf, 2u);
    }

    [(MAKVStoreManager *)self->_kvStoreManager checkStoreForUploadWithOption:2 completionHandler:&stru_100116B20];
    v11 = 1;
  }

  else
  {
    [(MAServer *)self processZoneDelete:deleteCopy reason:reason error:0];
    v11 = [(MAKVStoreManager *)self->_kvStoreManager didReceiveKVSDataZoneDelete:deleteCopy reason:reason];
  }

  return v11;
}

- (BOOL)didSyncUpKVSDataDelete:(id)delete recordHandle:(id)handle assetType:(unint64_t)type storeName:(id)name storeGroup:(id)group profileType:(unint64_t)profileType
{
  deleteCopy = delete;
  handleCopy = handle;
  nameCopy = name;
  groupCopy = group;
  v18 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    v21 = 138413314;
    v22 = deleteCopy;
    v23 = 2112;
    v24 = handleCopy;
    v25 = 2112;
    v26 = nameCopy;
    v27 = 2112;
    v28 = groupCopy;
    v29 = 2048;
    profileTypeCopy = profileType;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "KVSData delete synced up to cloud, recordName:%@ recordHandle:%@ store:%@ group:%@ profileType:%lu", &v21, 0x34u);
  }

  v19 = [(MAKVStoreManager *)self->_kvStoreManager didSyncUpKVSDataDelete:deleteCopy recordHandle:handleCopy assetType:type storeName:nameCopy storeGroup:groupCopy profileType:profileType];

  return v19;
}

- (BOOL)didSyncUpKVSData:(id)data assetType:(unint64_t)type storeName:(id)name storeGroup:(id)group profileType:(unint64_t)profileType data:(id)a8
{
  dataCopy = data;
  nameCopy = name;
  groupCopy = group;
  v17 = a8;
  v18 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    v21 = 138413058;
    v22 = dataCopy;
    v23 = 2112;
    v24 = nameCopy;
    v25 = 2112;
    v26 = groupCopy;
    v27 = 2048;
    profileTypeCopy = profileType;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "KVSData uploaded to cloud, recordHandle:%@ store:%@ group:%@ profileType:%lu", &v21, 0x2Au);
  }

  v19 = [(MAKVStoreManager *)self->_kvStoreManager didSyncUpKVSData:dataCopy assetType:type storeName:nameCopy storeGroup:groupCopy profileType:profileType data:v17];

  return v19;
}

- (void)failedToUploadKVSData:(id)data assetType:(unint64_t)type storeName:(id)name storeGroup:(id)group profileType:(unint64_t)profileType data:(id)a8 error:(id)error
{
  dataCopy = data;
  nameCopy = name;
  groupCopy = group;
  v18 = a8;
  errorCopy = error;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_100051A00();
  }

  if ([errorCopy code] == -20602 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_100051A6C();
  }

  [(MAKVStoreManager *)self->_kvStoreManager failedToUploadKVSData:dataCopy assetType:type storeName:nameCopy storeGroup:groupCopy profileType:profileType data:v18 error:errorCopy];
}

- (void)failedToDeleteKVSData:(id)data assetType:(unint64_t)type storeName:(id)name storeGroup:(id)group profileType:(unint64_t)profileType error:(id)error
{
  dataCopy = data;
  nameCopy = name;
  groupCopy = group;
  errorCopy = error;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_100051ADC();
  }

  [(MAKVStoreManager *)self->_kvStoreManager failedToDeleteKVSData:dataCopy assetType:type storeName:nameCopy storeGroup:groupCopy profileType:profileType error:errorCopy];
}

- (void)failedToDeleteKVSZone:(id)zone error:(id)error
{
  zoneCopy = zone;
  errorCopy = error;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_100051B48();
  }

  [(MAServer *)self processZoneDelete:zoneCopy reason:0 error:errorCopy];
  [(MAKVStoreManager *)self->_kvStoreManager failedToDeleteKVSZone:zoneCopy error:errorCopy];
}

- (void)startCloudSyncManager
{
  cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004D778;
  block[3] = &unk_100115E70;
  block[4] = self;
  dispatch_async(cloudSyncSerialQueue, block);
}

- (void)deleteAllInCloudWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004D8F0;
  v7[3] = &unk_100116B48;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(cloudSyncSerialQueue, v7);
}

- (void)deleteAssetInCloudWithRecordName:(id)name assetType:(unint64_t)type profileType:(unint64_t)profileType completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004DA1C;
  block[3] = &unk_100116B70;
  block[4] = self;
  v16 = nameCopy;
  typeCopy = type;
  profileTypeCopy = profileType;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = nameCopy;
  dispatch_async(cloudSyncSerialQueue, block);
}

- (void)deleteKVSDataInCloudWithRecordHandles:(id)handles assetType:(unint64_t)type storeName:(id)name storeGroup:(id)group profileType:(unint64_t)profileType completionHandler:(id)handler
{
  handlesCopy = handles;
  nameCopy = name;
  groupCopy = group;
  handlerCopy = handler;
  cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004DB98;
  block[3] = &unk_100116B98;
  block[4] = self;
  v24 = handlesCopy;
  v25 = nameCopy;
  v26 = groupCopy;
  typeCopy = type;
  profileTypeCopy = profileType;
  v27 = handlerCopy;
  v19 = handlerCopy;
  v20 = groupCopy;
  v21 = nameCopy;
  v22 = handlesCopy;
  dispatch_async(cloudSyncSerialQueue, block);
}

- (void)saveAssetToCloud:(id)cloud options:(unint64_t)options completionHandler:(id)handler
{
  cloudCopy = cloud;
  handlerCopy = handler;
  assetMetadata = [cloudCopy assetMetadata];
  if (([assetMetadata assetState] & 0x2000) != 0)
  {
  }

  else
  {
    assetMetadata2 = [cloudCopy assetMetadata];
    assetState = [assetMetadata2 assetState];

    if ((assetState & 0x4000) == 0)
    {
      cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10004DDD0;
      v17[3] = &unk_100116BC0;
      v17[4] = self;
      v18 = cloudCopy;
      optionsCopy = options;
      v19 = handlerCopy;
      dispatch_async(cloudSyncSerialQueue, v17);

      goto LABEL_8;
    }
  }

  v14 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    assetMetadata3 = [cloudCopy assetMetadata];
    *buf = 138412546;
    v22 = cloudCopy;
    v23 = 2048;
    assetState2 = [assetMetadata3 assetState];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "asset %@ has asset state of %lu so will not sync up", buf, 0x16u);
  }

  (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_8:
}

- (void)saveKVSDataToCloudWithRecordHandle:(id)handle assetType:(unint64_t)type storeName:(id)name storeGroup:(id)group profileType:(unint64_t)profileType data:(id)data options:(unint64_t)options completionHandler:(id)self0
{
  handleCopy = handle;
  nameCopy = name;
  groupCopy = group;
  dataCopy = data;
  handlerCopy = handler;
  cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004DF78;
  block[3] = &unk_100116BE8;
  block[4] = self;
  v28 = handleCopy;
  v29 = nameCopy;
  v30 = groupCopy;
  typeCopy = type;
  profileTypeCopy = profileType;
  optionsCopy = options;
  v31 = dataCopy;
  v32 = handlerCopy;
  v22 = handlerCopy;
  v23 = dataCopy;
  v24 = groupCopy;
  v25 = nameCopy;
  v26 = handleCopy;
  dispatch_async(cloudSyncSerialQueue, block);
}

- (BOOL)cloudSyncEnabledForAssetType:(unint64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004E08C;
  block[3] = &unk_100116C10;
  block[4] = self;
  block[5] = &v7;
  block[6] = type;
  dispatch_sync(cloudSyncSerialQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)fetchSigninUserWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004E184;
  v7[3] = &unk_100116B48;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(cloudSyncSerialQueue, v7);
}

- (void)resetCloudSyncStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004E270;
  v7[3] = &unk_100116B48;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(cloudSyncSerialQueue, v7);
}

- (void)localAssetCleanupWithRecordName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004E388;
  block[3] = &unk_100116C38;
  block[4] = self;
  v12 = nameCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = nameCopy;
  dispatch_async(cloudSyncSerialQueue, block);
}

- (void)localKVSCleanupWithRecordName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004E4A0;
  block[3] = &unk_100116C38;
  block[4] = self;
  v12 = nameCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = nameCopy;
  dispatch_async(cloudSyncSerialQueue, block);
}

- (void)queryCloudAssetsSizeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004E58C;
  v7[3] = &unk_100116B48;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(cloudSyncSerialQueue, v7);
}

- (void)queryCloudAssetWithRecordName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004E6A4;
  block[3] = &unk_100116C38;
  block[4] = self;
  v12 = nameCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = nameCopy;
  dispatch_async(cloudSyncSerialQueue, block);
}

- (void)queryCloudKVDataSizeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004E790;
  v7[3] = &unk_100116B48;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(cloudSyncSerialQueue, v7);
}

- (void)queryCloudKVDataWithRecordName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004E8A8;
  block[3] = &unk_100116C38;
  block[4] = self;
  v12 = nameCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = nameCopy;
  dispatch_async(cloudSyncSerialQueue, block);
}

- (void)checkCloudRecordZoneExistWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004E994;
  v7[3] = &unk_100116B48;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(cloudSyncSerialQueue, v7);
}

- (void)saveAVPSetupUserOption:(int64_t)option completionHandler:(id)handler
{
  handlerCopy = handler;
  cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004EBD0;
  block[3] = &unk_100116CB0;
  v10 = handlerCopy;
  optionCopy = option;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(cloudSyncSerialQueue, block);
}

- (void)getAVPSetupUserOptionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cloudSyncSerialQueue = self->_cloudSyncSerialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004EDDC;
  v7[3] = &unk_100116B48;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(cloudSyncSerialQueue, v7);
}

- (void)AddAnchorGroup:(id)group clientIdentifier:(id)identifier completion:(id)completion
{
  groupCopy = group;
  identifierCopy = identifier;
  completionCopy = completion;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100051F1C;
  v32 = sub_100051F2C;
  v33 = 0;
  v12 = mach_continuous_time();
  v13 = +[NSXPCConnection currentConnection];
  policyEngine = self->_policyEngine;
  v15 = kManagedAssetAnchorGroupWriteEntitlement;
  v16 = NSStringFromSelector(a2);
  v17 = (v29 + 5);
  obj = v29[5];
  LOBYTE(policyEngine) = [(MAPolicyEngine *)policyEngine verifyAccessWithAnchorGroup:v15 client:v13 anchorClient:identifierCopy function:v16 error:&obj];
  objc_storeStrong(v17, obj);

  if (policyEngine)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100051F34;
    block[3] = &unk_100116D18;
    block[4] = self;
    v21 = groupCopy;
    v22 = identifierCopy;
    v25 = &v28;
    v24 = completionCopy;
    v23 = v13;
    v26 = v12;
    dispatch_async(serialQueue, block);
  }

  else
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v29[5]);
    }

    if (v13)
    {
      [v13 auditToken];
    }

    else
    {
      memset(v19, 0, sizeof(v19));
    }

    [CALogger logWithCoreAnalytics:"[MAServer(AnchorPersist) AddAnchorGroup:clientIdentifier:completion:]" client:v19 startTS:v12 error:v29[5]];
  }

  _Block_object_dispose(&v28, 8);
}

- (void)GetAllAnchorGroups:(id)groups completion:(id)completion
{
  groupsCopy = groups;
  completionCopy = completion;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100051F1C;
  v34 = sub_100051F2C;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100051F1C;
  v28 = sub_100051F2C;
  v29 = 0;
  v9 = mach_continuous_time();
  v10 = +[NSXPCConnection currentConnection];
  policyEngine = self->_policyEngine;
  v12 = kManagedAssetAnchorGroupReadEntitlement;
  v13 = NSStringFromSelector(a2);
  v14 = (v25 + 5);
  obj = v25[5];
  LOBYTE(policyEngine) = [(MAPolicyEngine *)policyEngine verifyAccessWithAnchorGroup:v12 client:v10 anchorClient:groupsCopy function:v13 error:&obj];
  objc_storeStrong(v14, obj);

  if (policyEngine)
  {
    serialQueue = self->_serialQueue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000522BC;
    v16[3] = &unk_100116D40;
    v20 = &v30;
    v16[4] = self;
    v17 = groupsCopy;
    v21 = &v24;
    v19 = completionCopy;
    v18 = v10;
    v22 = v9;
    dispatch_async(serialQueue, v16);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v31[5], v25[5]);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
}

- (void)RemoveAllAnchorGroups:(id)groups completion:(id)completion
{
  groupsCopy = groups;
  completionCopy = completion;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100051F1C;
  v28 = sub_100051F2C;
  v29 = 0;
  v9 = mach_continuous_time();
  v10 = +[NSXPCConnection currentConnection];
  policyEngine = self->_policyEngine;
  v12 = kManagedAssetAnchorGroupWriteEntitlement;
  v13 = NSStringFromSelector(a2);
  v14 = (v25 + 5);
  obj = v25[5];
  LOBYTE(policyEngine) = [(MAPolicyEngine *)policyEngine verifyAccessWithAnchorGroup:v12 client:v10 anchorClient:groupsCopy function:v13 error:&obj];
  objc_storeStrong(v14, obj);

  if (policyEngine)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100052660;
    block[3] = &unk_1001164F8;
    block[4] = self;
    v18 = groupsCopy;
    v21 = &v24;
    v20 = completionCopy;
    v19 = v10;
    v22 = v9;
    dispatch_async(serialQueue, block);
  }

  else
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v25[5]);
    }

    if (v10)
    {
      [v10 auditToken];
    }

    else
    {
      memset(v16, 0, sizeof(v16));
    }

    [CALogger logWithCoreAnalytics:"[MAServer(AnchorPersist) RemoveAllAnchorGroups:completion:]" client:v16 startTS:v9 error:v25[5]];
  }

  _Block_object_dispose(&v24, 8);
}

- (void)RemoveAnchorGroup:(id)group clientIdentifier:(id)identifier completion:(id)completion
{
  groupCopy = group;
  identifierCopy = identifier;
  completionCopy = completion;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100051F1C;
  v32 = sub_100051F2C;
  v33 = 0;
  v12 = mach_continuous_time();
  v13 = +[NSXPCConnection currentConnection];
  policyEngine = self->_policyEngine;
  v15 = kManagedAssetAnchorGroupWriteEntitlement;
  v16 = NSStringFromSelector(a2);
  v17 = (v29 + 5);
  obj = v29[5];
  LOBYTE(policyEngine) = [(MAPolicyEngine *)policyEngine verifyAccessWithAnchorGroup:v15 client:v13 anchorClient:identifierCopy function:v16 error:&obj];
  objc_storeStrong(v17, obj);

  if (policyEngine)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000529F8;
    block[3] = &unk_100116D18;
    block[4] = self;
    v21 = groupCopy;
    v22 = identifierCopy;
    v25 = &v28;
    v24 = completionCopy;
    v23 = v13;
    v26 = v12;
    dispatch_async(serialQueue, block);
  }

  else
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v29[5]);
    }

    if (v13)
    {
      [v13 auditToken];
    }

    else
    {
      memset(v19, 0, sizeof(v19));
    }

    [CALogger logWithCoreAnalytics:"[MAServer(AnchorPersist) RemoveAnchorGroup:clientIdentifier:completion:]" client:v19 startTS:v12 error:v29[5]];
  }

  _Block_object_dispose(&v28, 8);
}

- (void)RegisterRemoteSharingOberverWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[NSXPCConnection currentConnection];
  policyEngine = self->_policyEngine;
  v8 = kManagedAssetShareEntitlement;
  v9 = NSStringFromSelector(a2);
  v11 = 0;
  LODWORD(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:v8 client:v6 function:v9 error:&v11];
  v10 = v11;

  if (policyEngine)
  {
    [(MANotificationEngine *)self->_notificationEngine registerRemoteObserver:v6];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v10);
  }
}

- (void)RegisterOberverWithGroup:(id)group observerType:(unint64_t)type resourceNames:(id)names profile:(id)profile events:(unint64_t)events completion:(id)completion
{
  groupCopy = group;
  namesCopy = names;
  profileCopy = profile;
  completionCopy = completion;
  v18 = +[NSXPCConnection currentConnection];
  if (type)
  {
    if (type != 1)
    {
      if (completionCopy)
      {
        v21 = createManagedAssetError();
        completionCopy[2](completionCopy, v21);
      }

      v48 = 0;
      goto LABEL_21;
    }

    v19 = &kManagedAssetMonitorKVStoreEntitlement;
    v20 = 21094400;
  }

  else
  {
    v19 = &kManagedAssetMonitorFileEntitlement;
    v20 = 7680;
  }

  v48 = *v19;
  if ((v20 & events) == 0)
  {
    if (completionCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (!groupCopy)
  {
    if (completionCopy)
    {
LABEL_20:
      v22 = createManagedAssetError();
      completionCopy[2](completionCopy, v22);
    }

LABEL_21:
    v23 = 0;
    goto LABEL_22;
  }

  if (!namesCopy || ![namesCopy count])
  {
    if (completionCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if ([namesCopy containsObject:@"/"])
  {
    if (completionCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  typeCopy = type;
  [NSSet setWithArray:namesCopy];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v24 = v57 = 0u;
  v47 = [v24 countByEnumeratingWithState:&v54 objects:v64 count:16];
  obj = v24;
  if (!v47)
  {

    goto LABEL_35;
  }

  eventsCopy = events;
  v40 = completionCopy;
  v41 = profileCopy;
  v42 = namesCopy;
  v23 = 0;
  v45 = *v55;
  v46 = groupCopy;
  while (2)
  {
    for (i = 0; i != v47; i = i + 1)
    {
      if (*v55 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v54 + 1) + 8 * i);
      groupNamesRegex = self->groupNamesRegex;
      v52 = 0;
      v53 = 0;
      v50 = v23;
      v51 = 0;
      v28 = [MAUtilityHelper getPathsForName:v26 group:groupCopy groupPattern:groupNamesRegex clientConn:v18 entitlementGroup:&v53 entitlementPath:&v52 groupPath:&v51 error:&v50];
      v29 = v53;
      v30 = v52;
      v31 = v51;
      v32 = v50;

      if ((v28 & 1) == 0)
      {
        v35 = v18;
        v37 = off_1001282C8;
        if (os_log_type_enabled(off_1001282C8, OS_LOG_TYPE_ERROR))
        {
          sub_100053364(v32, v37);
        }

        goto LABEL_41;
      }

      selfCopy = self;
      policyEngine = self->_policyEngine;
      v49 = v32;
      v35 = v18;
      v36 = [(MAPolicyEngine *)policyEngine verifyFileAccess:v48 path:v30 group:v29 client:v18 error:&v49];
      v23 = v49;

      if ((v36 & 1) == 0)
      {
        v38 = off_1001282C8;
        if (os_log_type_enabled(off_1001282C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v59 = v30;
          v60 = 2112;
          v61 = v29;
          v62 = 2112;
          v63 = v23;
          _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "entitlement check failed, path: %@ group: %@ error:%@", buf, 0x20u);
        }

        v32 = v23;
LABEL_41:
        groupCopy = v46;
        completionCopy = v40;

        v23 = v32;
        profileCopy = v41;
        namesCopy = v42;
        v18 = v35;
        goto LABEL_42;
      }

      groupCopy = v46;
      self = selfCopy;
    }

    v47 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v47)
    {
      continue;
    }

    break;
  }

  profileCopy = v41;
  namesCopy = v42;
  events = eventsCopy;
  completionCopy = v40;
  if (!v23)
  {
LABEL_35:
    [(MANotificationEngine *)self->_notificationEngine registerObserverEventWith:v18 observerType:typeCopy resourceNames:obj sharingGroup:groupCopy profile:profileCopy events:events];
    v23 = 0;
  }

LABEL_42:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v23);
  }

LABEL_22:
}

- (id)checkFileAccessEntitlement:(id)entitlement mode:(unint64_t)mode attributes:(id)attributes clientConn:(id)conn op:(unint64_t)op topGroup:(id *)group profile:(id *)profile error:(id *)self0
{
  entitlementCopy = entitlement;
  attributesCopy = attributes;
  connCopy = conn;
  if (attributesCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (os_log_type_enabled(off_1001282D0, OS_LOG_TYPE_ERROR))
    {
      sub_100054FA8();
    }

    createManagedAssetError();
    *error = v26 = 0;
  }

  else
  {
    groupCopy = group;
    v60 = kMAGroupKey;
    v19 = [attributesCopy objectForKeyedSubscript:?];
    groupNamesRegex = self->groupNamesRegex;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v21 = [MAUtilityHelper getPathsForName:entitlementCopy group:v19 groupPattern:groupNamesRegex clientConn:connCopy entitlementGroup:&v67 entitlementPath:&v66 groupPath:&v65 error:&v64];
    v22 = v67;
    v63 = v66;
    v62 = v65;
    v23 = v64;

    if (v21)
    {
      v58 = v23;
      if (op > 3)
      {
        if (op == 4)
        {
          v24 = &kManagedAssetQueryFileEntitlement;
          goto LABEL_31;
        }

        if (op == 5)
        {
          v24 = &kManagedAssetPrefetchFileEntitlement;
          goto LABEL_31;
        }

        if (op != 6)
        {
LABEL_25:
          modeCopy2 = op;
          createManagedAssetError();
          v29 = 0;
          *error = v32 = 0;
LABEL_38:
          v37 = v29;
          v59 = v32;
          v38 = v63;
          if ([(MAPolicyEngine *)self->_policyEngine verifyFileAccess:v32 path:v63 group:v22 client:connCopy error:error]|| v37 && [(MAPolicyEngine *)self->_policyEngine verifyFileAccess:v37 path:entitlementCopy group:v22 client:connCopy error:error])
          {
            v57 = v37;
            v39 = off_1001282D0;
            if (os_log_type_enabled(off_1001282D0, OS_LOG_TYPE_INFO))
            {
              v40 = v39;
              [attributesCopy objectForKeyedSubscript:v60];
              v42 = v41 = v22;
              v43 = kMAGroupTypeKey;
              v44 = [attributesCopy objectForKeyedSubscript:kMAGroupTypeKey];
              *buf = 134218754;
              opCopy2 = op;
              v70 = 2112;
              v71 = v42;
              v72 = 2112;
              v73 = v41;
              v74 = 2112;
              v75 = v44;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "op=%lu group=%@ entGroup=%@ groupType=%@", buf, 0x2Au);

              v22 = v41;
              v38 = v63;
            }

            else
            {
              v43 = kMAGroupTypeKey;
            }

            v48 = v22;
            *groupCopy = v22;
            v49 = kMAUserGroupType;
            v50 = [attributesCopy objectForKeyedSubscript:v43];
            LODWORD(v49) = [v49 isEqual:v50];

            if (v49 && ([attributesCopy objectForKeyedSubscript:kMAUUIDKey], v51 = objc_claimAutoreleasedReturnValue(), v52 = -[MAServer checkProfile:profileNameOut:error:](self, "checkProfile:profileNameOut:error:", v51, profile, error), v51, !v52))
            {
              v26 = 0;
              v23 = v58;
              v47 = v62;
            }

            else
            {
              v47 = v62;
              if ([@"/" isEqualToString:{entitlementCopy, modeCopy2}])
              {
                entitlementCopy = v62;
              }

              else
              {
                entitlementCopy = [NSString stringWithFormat:@"%@/%@", v62, entitlementCopy];
              }

              v26 = entitlementCopy;
              v23 = v58;
            }

            v37 = v57;
            goto LABEL_57;
          }

          v45 = off_1001282D0;
          if (os_log_type_enabled(off_1001282D0, OS_LOG_TYPE_ERROR))
          {
            v55 = *error;
            *buf = 138412802;
            opCopy2 = v63;
            v70 = 2112;
            v71 = v22;
            v72 = 2112;
            v73 = v55;
            _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "entitlement check failed, path: %@ group: %@ error:%@", buf, 0x20u);
            if (v37)
            {
LABEL_45:
              v46 = off_1001282D0;
              if (os_log_type_enabled(off_1001282D0, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                opCopy2 = v59;
                v70 = 2112;
                v71 = v63;
                v72 = 2112;
                v73 = v22;
                _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "AND entitlement check failed for %@, path: %@ group: %@, one of them is needed", buf, 0x20u);
              }
            }
          }

          else if (v37)
          {
            goto LABEL_45;
          }

          v26 = 0;
          v47 = v62;
LABEL_57:

          goto LABEL_58;
        }

        v27 = [attributesCopy objectForKeyedSubscript:kMAFileApiTypeKey];
        v28 = [kMAFileApiTypeOpenFile isEqual:v27];

        if ((v28 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (op != 1)
        {
          if (op != 2)
          {
            if (op == 3)
            {
              v24 = &kManagedAssetDeleteFileEntitlement;
LABEL_31:
              v32 = *v24;
              v29 = 0;
              goto LABEL_38;
            }

            goto LABEL_25;
          }

          if (mode == 3)
          {
            v32 = kManagedAssetRequestFileForUpdateEntitlement;
            v29 = 0;
            goto LABEL_37;
          }

          if (mode != 2)
          {
            if (mode != 1)
            {
              modeCopy2 = mode;
              createManagedAssetError();
              v29 = 0;
              *error = v32 = 0;
              goto LABEL_37;
            }

            v29 = kManagedAssetUpdateFileEntitlement;
            v33 = kManagedAssetUpdateFileEntitlement;
            v34 = &kManagedAssetRequestFileForReadEntitlement;
            goto LABEL_36;
          }

LABEL_35:
          v29 = kManagedAssetUpdateFileEntitlement;
          v36 = kManagedAssetUpdateFileEntitlement;
          v34 = &kManagedAssetRequestFileForWriteEntitlement;
LABEL_36:
          v32 = *v34;
LABEL_37:
          op = 2;
          goto LABEL_38;
        }

        if (mode == 3)
        {
          v32 = kManagedAssetUpdateFileEntitlement;
          v29 = 0;
          goto LABEL_34;
        }

        if (mode != 2)
        {
          if (mode != 1)
          {
            modeCopy2 = mode;
            createManagedAssetError();
            v29 = 0;
            *error = v32 = 0;
            goto LABEL_34;
          }

          v29 = kManagedAssetUpdateFileEntitlement;
          v30 = kManagedAssetUpdateFileEntitlement;
          v31 = &kManagedAssetReadFileEntitlement;
          goto LABEL_33;
        }
      }

      v29 = kManagedAssetUpdateFileEntitlement;
      v35 = kManagedAssetUpdateFileEntitlement;
      v31 = &kManagedAssetWriteFileEntitlement;
LABEL_33:
      v32 = *v31;
LABEL_34:
      op = 1;
      goto LABEL_38;
    }

    if (os_log_type_enabled(off_1001282D0, OS_LOG_TYPE_ERROR))
    {
      sub_100055010();
    }

    v25 = v23;
    *error = v23;

    v26 = 0;
  }

LABEL_58:

  return v26;
}

- (void)requestFileWithSandboxExtension:(id)extension mode:(unint64_t)mode attributes:(id)attributes isDirectory:(BOOL)directory reply:(id)reply
{
  attributesCopy = attributes;
  replyCopy = reply;
  extensionCopy = extension;
  v14 = attributesCopy;
  v15 = [NSMutableDictionary dictionaryWithCapacity:16];
  v16 = +[NSXPCConnection currentConnection];
  v27 = mach_continuous_time();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v17 = [(MAServer *)self checkFileAccessEntitlement:extensionCopy mode:mode attributes:v14 clientConn:v16 op:2 topGroup:&v34 profile:&v33 error:&v32];

  v18 = v34;
  v19 = v33;
  v20 = v32;
  v28 = v14;
  if (!v17)
  {
    v22 = 0;
    v23 = 0;
    if (!replyCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  fileStoreManager = self->_fileStoreManager;
  v30 = v20;
  v31 = 0;
  LOBYTE(v25) = directory;
  v22 = [(MAFileStoreManager *)fileStoreManager getFilePathWithSbExtension:v17 topGroup:v18 profile:v19 mode:mode attributes:v14 clientConn:v16 realpath:&v31 isDirectory:v25 attributesOut:v15 error:&v30];
  v23 = v31;
  v24 = v30;

  if (os_log_type_enabled(off_1001282D0, OS_LOG_TYPE_DEBUG))
  {
    sub_100055078();
  }

  v20 = v24;
  if (replyCopy)
  {
LABEL_7:
    if (![v15 count])
    {

      v15 = 0;
    }

    replyCopy[2](replyCopy, v23, v15, v22, v20);
  }

LABEL_10:
  if (v16)
  {
    [v16 auditToken];
  }

  else
  {
    memset(v29, 0, sizeof(v29));
  }

  [CALogger logWithCoreAnalytics:"[MAServer(FileAsset) requestFileWithSandboxExtension:mode:attributes:isDirectory:reply:]" client:v29 startTS:v27 error:v20];
}

- (void)openFile:(id)file mode:(unint64_t)mode attributes:(id)attributes reply:(id)reply
{
  fileCopy = file;
  attributesCopy = attributes;
  replyCopy = reply;
  v12 = [NSMutableDictionary dictionaryWithCapacity:16];
  v13 = +[NSXPCConnection currentConnection];
  v24 = mach_continuous_time();
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v14 = [(MAServer *)self checkFileAccessEntitlement:fileCopy mode:mode attributes:attributesCopy clientConn:v13 op:1 topGroup:&v31 profile:&v30 error:&v29];
  v15 = v31;
  v16 = v30;
  v17 = v29;
  v26 = v15;
  if (v14)
  {
    fileStoreManager = self->_fileStoreManager;
    v28 = v17;
    v23 = attributesCopy;
    v19 = [(MAFileStoreManager *)fileStoreManager openFile:v14 topGroup:v15 profile:v16 mode:mode attributes:attributesCopy attributesOut:v12 error:&v28];
    v20 = v28;

    if (mode != 1 && v19)
    {
      notificationEngine = self->_notificationEngine;
      v32 = fileCopy;
      v22 = [NSArray arrayWithObjects:&v32 count:1];
      [(MANotificationEngine *)notificationEngine notifyFileEventWith:512 fileNames:v22 profile:v16 sharingGroup:v26];
    }

    v17 = v20;
    attributesCopy = v23;
  }

  else
  {
    v19 = 0;
  }

  if (replyCopy)
  {
    if (![v12 count])
    {

      v12 = 0;
    }

    replyCopy[2](replyCopy, v19, v12, v17);
  }

  if (v13)
  {
    [v13 auditToken];
  }

  else
  {
    memset(v27, 0, sizeof(v27));
  }

  [CALogger logWithCoreAnalytics:"[MAServer(FileAsset) openFile:mode:attributes:reply:]" client:v27 startTS:v24 error:v17];
}

- (void)openFiles:(id)files mode:(unint64_t)mode attributes:(id)attributes reply:(id)reply
{
  filesCopy = files;
  attributesCopy = attributes;
  replyCopy = reply;
  v12 = +[NSMutableArray array];
  v13 = +[NSMutableDictionary dictionary];
  v14 = +[NSXPCConnection currentConnection];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_10005449C;
  v47 = sub_1000544AC;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_10005449C;
  v41 = sub_1000544AC;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_10005449C;
  v35 = sub_1000544AC;
  v36 = 0;
  v19 = mach_continuous_time();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000544B4;
  v22[3] = &unk_100116D68;
  v22[4] = self;
  modeCopy = mode;
  v15 = attributesCopy;
  v23 = v15;
  v16 = v14;
  v24 = v16;
  v27 = &v43;
  v17 = v12;
  v25 = v17;
  v18 = v13;
  v26 = v18;
  v28 = &v37;
  v29 = &v31;
  [filesCopy enumerateObjectsUsingBlock:v22];
  if (replyCopy)
  {
    if (v44[5])
    {

      v18 = 0;
      v17 = 0;
    }

    else if (mode != 1)
    {
      [(MANotificationEngine *)self->_notificationEngine notifyFileEventWith:512 fileNames:filesCopy profile:v32[5] sharingGroup:v38[5]];
    }

    replyCopy[2](replyCopy, v17, v18, v44[5]);
  }

  if (v16)
  {
    [v16 auditToken];
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  [CALogger logWithCoreAnalytics:"[MAServer(FileAsset) openFiles:mode:attributes:reply:]" client:v21 startTS:v19 error:v44[5], v19];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
}

- (void)commitFile:(id)file attributes:(id)attributes reply:(id)reply
{
  fileCopy = file;
  attributesCopy = attributes;
  replyCopy = reply;
  v11 = +[NSXPCConnection currentConnection];
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v23 = mach_continuous_time();
  v12 = fileCopy;
  v13 = [(MAServer *)self checkFileAccessEntitlement:fileCopy mode:0 attributes:attributesCopy clientConn:v11 op:6 topGroup:&v29 profile:&v28 error:&v27];
  v14 = v29;
  v15 = v28;
  v16 = v27;
  v17 = v16;
  v24 = attributesCopy;
  if (v13)
  {
    fileStoreManager = self->_fileStoreManager;
    v26 = v17;
    v19 = [(MAFileStoreManager *)fileStoreManager commitFile:v13 topGroup:v14 profile:v15 attributes:attributesCopy committed:&v30 error:&v26];
    v20 = v26;

    if (v19)
    {
      notificationEngine = self->_notificationEngine;
      v31 = v12;
      v22 = [NSArray arrayWithObjects:&v31 count:1];
      [(MANotificationEngine *)notificationEngine notifyFileEventWith:2048 fileNames:v22 profile:v15 sharingGroup:v14];
    }

    if (replyCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v20 = v16;
    if (replyCopy)
    {
LABEL_5:
      replyCopy[2](replyCopy, v20);
    }
  }

  if (v11)
  {
    [v11 auditToken];
  }

  else
  {
    memset(v25, 0, sizeof(v25));
  }

  [CALogger logWithCoreAnalytics:"[MAServer(FileAsset) commitFile:attributes:reply:]" client:v25 startTS:v23 error:v20];
}

- (void)deleteFile:(id)file attributes:(id)attributes reply:(id)reply
{
  fileCopy = file;
  attributesCopy = attributes;
  replyCopy = reply;
  v11 = +[NSXPCConnection currentConnection];
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v23 = mach_continuous_time();
  v12 = fileCopy;
  v13 = [(MAServer *)self checkFileAccessEntitlement:fileCopy mode:0 attributes:attributesCopy clientConn:v11 op:3 topGroup:&v29 profile:&v28 error:&v27];
  v14 = v29;
  v15 = v28;
  v16 = v27;
  v17 = v16;
  v24 = attributesCopy;
  if (v13)
  {
    fileStoreManager = self->_fileStoreManager;
    v26 = v17;
    v19 = [(MAFileStoreManager *)fileStoreManager deleteFile:v13 topGroup:v14 profile:v15 attributes:attributesCopy error:&v26];
    v20 = v26;

    if (v19)
    {
      notificationEngine = self->_notificationEngine;
      v30 = v12;
      v22 = [NSArray arrayWithObjects:&v30 count:1];
      [(MANotificationEngine *)notificationEngine notifyFileEventWith:1024 fileNames:v22 profile:v15 sharingGroup:v14];
    }

    if (replyCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v20 = v16;
    if (replyCopy)
    {
LABEL_5:
      replyCopy[2](replyCopy, v20);
    }
  }

  if (v11)
  {
    [v11 auditToken];
  }

  else
  {
    memset(v25, 0, sizeof(v25));
  }

  [CALogger logWithCoreAnalytics:"[MAServer(FileAsset) deleteFile:attributes:reply:]" client:v25 startTS:v23 error:v20];
}

- (void)queryFile:(id)file attributes:(id)attributes reply:(id)reply
{
  fileCopy = file;
  attributesCopy = attributes;
  replyCopy = reply;
  v11 = +[NSXPCConnection currentConnection];
  v19 = mach_continuous_time();
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v12 = [(MAServer *)self checkFileAccessEntitlement:fileCopy mode:0 attributes:attributesCopy clientConn:v11 op:4 topGroup:&v24 profile:&v23 error:&v22];
  v13 = v24;
  v14 = v23;
  v15 = v22;
  if (v12)
  {
    fileStoreManager = self->_fileStoreManager;
    v21 = v15;
    v17 = [(MAFileStoreManager *)fileStoreManager queryFile:v12 topGroup:v13 profile:v14 attributes:attributesCopy pathPrefix:fileCopy error:&v21];
    v18 = v21;

    v15 = v18;
    if (!replyCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = 0;
  if (replyCopy)
  {
LABEL_3:
    replyCopy[2](replyCopy, v17, v15);
  }

LABEL_4:
  if (v11)
  {
    [v11 auditToken];
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  [CALogger logWithCoreAnalytics:"[MAServer(FileAsset) queryFile:attributes:reply:]" client:v20 startTS:v19 error:v15];
}

- (void)getDiskUsage:(id)usage attributes:(id)attributes reply:(id)reply
{
  usageCopy = usage;
  replyCopy = reply;
  attributesCopy = attributes;
  v11 = +[NSXPCConnection currentConnection];
  v12 = mach_continuous_time();
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v13 = [(MAServer *)self checkFileAccessEntitlement:usageCopy mode:0 attributes:attributesCopy clientConn:v11 op:4 topGroup:&v27 profile:&v26 error:&v25];

  v14 = v27;
  v15 = v26;
  v16 = v25;
  if (!v13)
  {
    v17 = 0;
    v20 = 0;
    goto LABEL_9;
  }

  v23 = v12;
  v17 = [(MAFileStoreManager *)self->_fileStoreManager getPathByTopGroup:v13 topGroup:v14 profile:v15];
  v18 = +[NSFileManager defaultManager];
  v19 = [v18 fileExistsAtPath:v17 isDirectory:&v28];

  if ((v19 & 1) == 0)
  {
    v22 = usageCopy;
LABEL_17:
    v21 = createManagedAssetError();

    v20 = 0;
    v16 = v21;
    goto LABEL_18;
  }

  if ((v28 & 1) == 0)
  {
    v22 = usageCopy;
    goto LABEL_17;
  }

  v20 = did_fast_size_directory();
  if (HIBYTE(v28) == 1)
  {
    v12 = v23;
    if (os_log_type_enabled(off_1001282D0, OS_LOG_TYPE_DEBUG))
    {
      sub_100055164();
      if (!replyCopy)
      {
        goto LABEL_11;
      }

LABEL_10:
      replyCopy[2](replyCopy, v20, v16);
      goto LABEL_11;
    }

LABEL_9:
    if (!replyCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_18:
  v12 = v23;
  if (replyCopy)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (v11)
  {
    [v11 auditToken];
  }

  else
  {
    memset(v24, 0, sizeof(v24));
  }

  [CALogger logWithCoreAnalytics:"[MAServer(FileAsset) getDiskUsage:attributes:reply:]" client:v24 startTS:v12 error:v16, v22];
}

- (void)daemonTest:(id)test completion:(id)completion
{
  testCopy = test;
  completionCopy = completion;
  if (!sub_100056B3C())
  {
    goto LABEL_169;
  }

  v9 = +[NSMutableDictionary dictionary];
  p_cb = &OBJC_PROTOCOL___MAKVStoreServices.cb;
  if (os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_DEBUG))
  {
    sub_100058214();
  }

  policyEngine = self->_policyEngine;
  v12 = +[NSXPCConnection currentConnection];
  v13 = NSStringFromSelector(a2);
  v144 = 0;
  LODWORD(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:@"com.apple.managedassets.debug" client:v12 function:v13 error:&v144];
  v14 = v144;

  if (!policyEngine)
  {
    goto LABEL_164;
  }

  if (!testCopy)
  {
    goto LABEL_136;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_136;
  }

  v15 = testCopy;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v145 objects:v151 count:16];
  if (!v17)
  {
    v24 = 1;
    v25 = v14;
    goto LABEL_33;
  }

  v18 = v17;
  v90 = v14;
  v91 = v9;
  v19 = *v146;
  while (2)
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v146 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v145 + 1) + 8 * i);
      v22 = [v16 objectForKeyedSubscript:v21];
      if (![qword_100129480 containsObject:v21])
      {
        if ([qword_100129488 containsObject:v21])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_22;
          }

          v88 = v21;
          v25 = createManagedAssetError();
          v28 = v25;
          p_cb = &OBJC_PROTOCOL___MAKVStoreServices.cb;
          if (!os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_32;
          }
        }

        else
        {
          if ([qword_100129490 containsObject:v21])
          {
            v23 = off_1001282D8;
            if (os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v150 = v21;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%@ will be validated later", buf, 0xCu);
            }

            goto LABEL_22;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_22;
          }

          v88 = v21;
          v25 = createManagedAssetError();
          v30 = v25;
          p_cb = &OBJC_PROTOCOL___MAKVStoreServices.cb;
          if (!os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_ERROR))
          {
LABEL_32:
            v9 = v91;
            v14 = v90;

            v24 = 0;
            goto LABEL_33;
          }
        }

LABEL_31:
        sub_100050B18();
        goto LABEL_32;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v88 = v21;
        v25 = createManagedAssetError();
        v26 = v25;
        p_cb = &OBJC_PROTOCOL___MAKVStoreServices.cb;
        if (!os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

LABEL_22:
    }

    v18 = [v16 countByEnumeratingWithState:&v145 objects:v151 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

  v24 = 1;
  v14 = v90;
  v25 = v90;
  v9 = v91;
  p_cb = (&OBJC_PROTOCOL___MAKVStoreServices + 64);
LABEL_33:

  v31 = v25;
  if (!v24)
  {
    goto LABEL_165;
  }

  v32 = [v16 objectForKeyedSubscript:@"op"];
  if (![@"a06TestMode" isEqual:v32])
  {
    if ([@"enableXCTestMode" isEqual:v32])
    {
      v38 = &OBJC_IVAR___MAServer__isXCTest;
LABEL_41:
      *(&self->super.isa + *v38) = 1;
LABEL_45:
      v34 = [NSNumber numberWithBool:1, v88];
      [v9 setObject:v34 forKeyedSubscript:v32];
      goto LABEL_46;
    }

    if ([@"disableXCTestMode" isEqual:v32])
    {
      v39 = &OBJC_IVAR___MAServer__isXCTest;
LABEL_44:
      *(&self->super.isa + *v39) = 0;
      goto LABEL_45;
    }

    if ([@"persistExpiryTestMode" isEqual:v32])
    {
      v40 = [v16 objectForKeyedSubscript:@"persistProfileExpiryPeriodInMin"];
      v34 = v40;
      if (!v40)
      {
        goto LABEL_38;
      }

      integerValue = [v40 integerValue];
      v36 = &OBJC_IVAR___MAServer__persistProfileExpiryPeriodInMinutes;
      goto LABEL_37;
    }

    if ([@"enableGuestModePreFlight" isEqual:v32])
    {
      v38 = &OBJC_IVAR___MAServer__guestModePreflightTesting;
      goto LABEL_41;
    }

    if ([@"disableGuestModePreFlight" isEqual:v32])
    {
      v39 = &OBJC_IVAR___MAServer__guestModePreflightTesting;
      goto LABEL_44;
    }

    if ([@"bypassProfileCheck" isEqual:v32])
    {
      self->_bypassProfileCheckForPrimaryUser = 1;
      remoteAssetsManager = self->_remoteAssetsManager;
      v42 = 1;
LABEL_58:
      [(MARemoteAssetsManager *)remoteAssetsManager setBypassProfileCheckForPrimaryUser:v42, v88];
      goto LABEL_45;
    }

    if ([@"reenableProfileCheck" isEqual:v32])
    {
      self->_bypassProfileCheckForPrimaryUser = 0;
      remoteAssetsManager = self->_remoteAssetsManager;
      v42 = 0;
      goto LABEL_58;
    }

    if ([@"inactivePersistedGuestTestMode" isEqual:v32])
    {
      v43 = [v16 objectForKeyedSubscript:@"inactivePGCheckPeriodInMin"];
      v34 = v43;
      if (!v43)
      {
        goto LABEL_38;
      }

      integerValue = [v43 integerValue];
      v36 = &OBJC_IVAR___MAServer__inactivePersistedGuestCheckPeriodInMinutes;
LABEL_37:
      *(&self->super.isa + *v36) = integerValue;
      goto LABEL_38;
    }

    v44 = v9;
    if ([@"deleteInCloud" isEqual:v32])
    {
      v45 = v16;
      v46 = [v16 objectForKeyedSubscript:@"assetType"];
      v47 = [v45 objectForKeyedSubscript:@"recordName"];
      v48 = v47;
      if (!v46 || !v47)
      {
        v89 = v47;
        v14 = createManagedAssetError();

        if (os_log_type_enabled(*(p_cb + 91), OS_LOG_TYPE_ERROR))
        {
          sub_100050B18();
        }

        [v44 setObject:&__kCFBooleanFalse forKeyedSubscript:{v32, v46, v89}];

        v9 = v44;
        goto LABEL_163;
      }

      longLongValue = [v46 longLongValue];
      profileType = [(MASDUserProfile *)self->_profile profileType];
      v140[0] = _NSConcreteStackBlock;
      v140[1] = 3221225472;
      v140[2] = sub_100056BF8;
      v140[3] = &unk_100116918;
      v141 = v44;
      v142 = v32;
      v143 = completionCopy;
      v51 = v32;
      [(MAServer *)self deleteAssetInCloudWithRecordName:v48 assetType:longLongValue profileType:profileType completionHandler:v140];

      v9 = v44;
      goto LABEL_168;
    }

    if ([@"deleteAllInCloud" isEqual:v32])
    {
      v136[0] = _NSConcreteStackBlock;
      v136[1] = 3221225472;
      v136[2] = sub_100056C88;
      v136[3] = &unk_100116918;
      v137 = v9;
      v138 = v32;
      v139 = completionCopy;
      [(MAServer *)self deleteAllInCloudWithCompletionHandler:v136];

      v52 = v137;
LABEL_75:

      v9 = v44;
      goto LABEL_168;
    }

    if ([@"queryCloudAssetsSize" isEqual:v32])
    {
      v130[0] = _NSConcreteStackBlock;
      v130[1] = 3221225472;
      v130[2] = sub_100056D18;
      v130[3] = &unk_100116DB8;
      v131 = v9;
      v132 = v32;
      v133 = v16;
      selfCopy = self;
      v135 = completionCopy;
      [(MAServer *)self queryCloudAssetsSizeWithCompletionHandler:v130];

      v52 = v131;
      goto LABEL_75;
    }

    if ([@"queryCloudKVDataSize" isEqual:v32])
    {
      v124[0] = _NSConcreteStackBlock;
      v124[1] = 3221225472;
      v124[2] = sub_1000571A8;
      v124[3] = &unk_100116DB8;
      v125 = v9;
      v126 = v32;
      v127 = v16;
      selfCopy2 = self;
      v129 = completionCopy;
      [(MAServer *)self queryCloudKVDataSizeWithCompletionHandler:v124];

      v52 = v125;
      goto LABEL_75;
    }

    if ([@"dumpStore" isEqual:v32])
    {
      v123 = v31;
      v34 = [(MAServer *)self findDB:v16 error:&v123];
      v97 = v123;

      if (v34)
      {
        v96 = [v16 objectForKeyedSubscript:@"name"];
        if (!v96)
        {
          v122 = v97;
          v55 = [(MAServer *)self dumpStoreName:v34 error:&v122];
          v31 = v122;

LABEL_105:
          if (v31)
          {
            [v44 setObject:&__kCFBooleanFalse forKeyedSubscript:v32];
          }

          else
          {
            if (v55)
            {
              [v44 setObject:v55 forKeyedSubscript:v32];
            }

            else
            {
              [v44 setObject:&__NSArray0__struct forKeyedSubscript:v32];
            }

            v31 = 0;
          }

          goto LABEL_125;
        }

        v121 = v97;
        v53 = [(MAServer *)self findStore:v34 name:v96 error:&v121];
        v31 = v121;

        if (v53)
        {
          v54 = [v16 objectForKeyedSubscript:@"kvKeys"];
          v120 = v31;
          v55 = [(MAServer *)self dumpKVStore:v53 keys:v54 error:&v120];
          v93 = v120;

          v31 = v93;
          goto LABEL_105;
        }

        goto LABEL_124;
      }

LABEL_103:
      [v9 setObject:&__kCFBooleanFalse forKeyedSubscript:{v32, v88}];
      v31 = v97;
      goto LABEL_46;
    }

    if ([@"findStoreAddData" isEqual:v32])
    {
      v119 = v31;
      v34 = [(MAServer *)self findDB:v16 error:&v119];
      v97 = v119;

      if (!v34)
      {
        goto LABEL_103;
      }

      v96 = [v16 objectForKeyedSubscript:@"name"];
      if (v96)
      {
        v118 = v97;
        v56 = [(MAServer *)self findStore:v34 name:v96 error:&v118];
        v31 = v118;

        v98 = v56;
        if (v56)
        {
          v57 = [v16 objectForKeyedSubscript:@"kvValuesArr"];
          v58 = [v16 objectForKeyedSubscript:@"attributes"];
          v117 = v31;
          v59 = [v56 put:v57 attributes:v58 error:&v117];
          v60 = v117;
LABEL_86:
          v94 = v60;

          if (v59)
          {
            v61 = &__kCFBooleanTrue;
          }

          else
          {
            v61 = &__kCFBooleanFalse;
          }

          [v44 setObject:v61 forKeyedSubscript:{v32, v88}];

          v31 = v94;
          goto LABEL_110;
        }

        goto LABEL_109;
      }

      goto LABEL_123;
    }

    if ([@"findStoreUpdateData" isEqual:v32])
    {
      v116 = v31;
      v34 = [(MAServer *)self findDB:v16 error:&v116];
      v97 = v116;

      if (!v34)
      {
        goto LABEL_103;
      }

      v96 = [v16 objectForKeyedSubscript:@"name"];
      if (v96)
      {
        v115 = v97;
        v62 = [(MAServer *)self findStore:v34 name:v96 error:&v115];
        v31 = v115;

        v98 = v62;
        if (v62)
        {
          v95 = [v16 objectForKeyedSubscript:@"kvKeys"];
          v63 = [v16 objectForKeyedSubscript:@"kvValues"];
          [v16 objectForKeyedSubscript:@"attributes"];
          v64 = v114[1] = v31;
          v65 = [v98 updateFor:v95 value:v63 attributes:? error:?];
          v92 = v31;

          if (v65)
          {
            v66 = &__kCFBooleanTrue;
          }

          else
          {
            v66 = &__kCFBooleanFalse;
          }

          [v44 setObject:v66 forKeyedSubscript:{v32, v88}];

          v31 = v92;
          goto LABEL_110;
        }

        goto LABEL_109;
      }

      goto LABEL_123;
    }

    if ([@"findStoreDeleteData" isEqual:v32])
    {
      v114[0] = v31;
      v34 = [(MAServer *)self findDB:v16 error:v114];
      v97 = v114[0];

      if (!v34)
      {
        goto LABEL_103;
      }

      v96 = [v16 objectForKeyedSubscript:@"name"];
      if (v96)
      {
        v113 = v97;
        v67 = [(MAServer *)self findStore:v34 name:v96 error:&v113];
        v31 = v113;

        v98 = v67;
        if (v67)
        {
          v57 = [v16 objectForKeyedSubscript:@"kvKeys"];
          v58 = [v16 objectForKeyedSubscript:@"attributes"];
          v112 = v31;
          v59 = [v67 deleteFor:v57 attributes:v58 error:&v112];
          v60 = v112;
          goto LABEL_86;
        }

LABEL_109:
        [v9 setObject:&__kCFBooleanFalse forKeyedSubscript:{v32, v88}];
LABEL_110:

LABEL_125:
        v9 = v44;
        goto LABEL_46;
      }

LABEL_123:
      v31 = createManagedAssetError();

LABEL_124:
      [v44 setObject:&__kCFBooleanFalse forKeyedSubscript:{v32, v88}];
      goto LABEL_125;
    }

    if ([@"toggleOffOption" isEqual:v32])
    {
      v52 = [v16 objectForKeyedSubscript:@"mode"];
      if ([v52 unsignedIntValue])
      {
        if ([v52 unsignedIntValue] == 1)
        {
          v68 = [v16 objectForKeyedSubscript:@"userOption"];
          unsignedIntegerValue = [v68 unsignedIntegerValue];
          v102[0] = _NSConcreteStackBlock;
          v102[1] = 3221225472;
          v102[2] = sub_100057768;
          v102[3] = &unk_100116E30;
          v103 = v44;
          v104 = v32;
          v106 = completionCopy;
          v31 = v31;
          v105 = v31;
          [(MAServer *)self saveAVPSetupUserOption:unsignedIntegerValue completionHandler:v102];
        }

        else
        {
          [v9 setObject:&__kCFBooleanFalse forKeyedSubscript:v32];
          v70 = createManagedAssetError();

          (*(completionCopy + 2))(completionCopy, v9, v70);
          v31 = v70;
        }
      }

      else
      {
        v107[0] = _NSConcreteStackBlock;
        v107[1] = 3221225472;
        v107[2] = sub_1000576B8;
        v107[3] = &unk_100116E08;
        v108 = v9;
        v109 = v32;
        v111 = completionCopy;
        v31 = v31;
        v110 = v31;
        [(MAServer *)self getAVPSetupUserOptionWithCompletionHandler:v107];
      }

      goto LABEL_75;
    }

    if ([@"enableCloudSyncAssetTesting" isEqual:v32])
    {
      self->_cloudSyncAssetTesting = 1;
      goto LABEL_45;
    }

    if ([@"disableCloudSyncAssetTesting" isEqual:v32])
    {
      self->_cloudSyncAssetTesting = 0;
      goto LABEL_45;
    }

    if ([@"resetAssetCloudState" isEqual:v32])
    {
      v101 = v31;
      v71 = [(MAServer *)self resetAssetCloudState:&v101];
      v72 = v101;
LABEL_134:
      v73 = v72;

      v34 = [NSNumber numberWithBool:v71];
      [v9 setObject:v34 forKeyedSubscript:v32];
      v31 = v73;
      goto LABEL_46;
    }

    if ([@"resetKVSCloudState" isEqual:v32])
    {
      v100 = v31;
      v71 = [(MAServer *)self resetKVSCloudState:&v100];
      v72 = v100;
      goto LABEL_134;
    }

    if ([@"reuploadOldAssetsCheckUpRoutine" isEqual:v32])
    {
      v99 = v31;
      v71 = [(MAServer *)self uploadOldAssetsWithOption:3 includeKVStoreData:1 error:&v99];
      v72 = v99;
      goto LABEL_134;
    }

    v14 = v31;
LABEL_136:
    v74 = [MAUtilityHelper readBoolValueFromUserDefaultsWithKey:@"nonExistKey" defaultValue:0, v88];
    v75 = *(p_cb + 91);
    if (v74)
    {
      if (os_log_type_enabled(*(p_cb + 91), OS_LOG_TYPE_ERROR))
      {
        sub_1000583A8();
      }

LABEL_155:
      v85 = 0;
LABEL_162:
      v32 = [NSNumber numberWithBool:v85];
      [v9 setObject:v32 forKeyedSubscript:@"testDefaults"];
      goto LABEL_163;
    }

    if (os_log_type_enabled(*(p_cb + 91), OS_LOG_TYPE_INFO))
    {
      *v151 = 0;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "non-exist defaults with default value NO success", v151, 2u);
    }

    v76 = [MAUtilityHelper readBoolValueFromUserDefaultsWithKey:@"nonExistKey" defaultValue:1];
    v77 = *(p_cb + 91);
    if ((v76 & 1) == 0)
    {
      if (os_log_type_enabled(*(p_cb + 91), OS_LOG_TYPE_ERROR))
      {
        sub_10005827C();
      }

      goto LABEL_155;
    }

    if (os_log_type_enabled(*(p_cb + 91), OS_LOG_TYPE_INFO))
    {
      *v151 = 0;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, "non-exist defaults with default value YES success", v151, 2u);
    }

    v78 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.managedAssets.private"];
    [v78 setBool:1 forKey:@"testTrueKey"];
    [v78 setBool:0 forKey:@"testFalseKey"];
    v79 = [MAUtilityHelper readBoolValueFromUserDefaultsWithKey:@"testTrueKey" defaultValue:0];
    v80 = *(p_cb + 91);
    if (v79)
    {
      if (os_log_type_enabled(*(p_cb + 91), OS_LOG_TYPE_INFO))
      {
        *v151 = 0;
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "testTrueKey defaults with default value NO success", v151, 2u);
      }

      v81 = [MAUtilityHelper readBoolValueFromUserDefaultsWithKey:@"testTrueKey" defaultValue:1];
      v82 = *(p_cb + 91);
      if (v81)
      {
        if (os_log_type_enabled(*(p_cb + 91), OS_LOG_TYPE_INFO))
        {
          *v151 = 0;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "testTrueKey defaults with default value YES success", v151, 2u);
        }

        v83 = [MAUtilityHelper readBoolValueFromUserDefaultsWithKey:@"testFalseKey" defaultValue:0];
        v84 = *(p_cb + 91);
        if (v83)
        {
          if (os_log_type_enabled(*(p_cb + 91), OS_LOG_TYPE_ERROR))
          {
            sub_10005836C();
          }
        }

        else
        {
          if (os_log_type_enabled(*(p_cb + 91), OS_LOG_TYPE_INFO))
          {
            *v151 = 0;
            _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "testFlaseKey defaults with default value NO success", v151, 2u);
          }

          v86 = [MAUtilityHelper readBoolValueFromUserDefaultsWithKey:@"testFalseKey" defaultValue:1];
          v87 = *(p_cb + 91);
          if ((v86 & 1) == 0)
          {
            v85 = 1;
            if (os_log_type_enabled(*(p_cb + 91), OS_LOG_TYPE_INFO))
            {
              *v151 = 0;
              _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "testFlaseKey defaults with default value YES success", v151, 2u);
            }

            goto LABEL_161;
          }

          if (os_log_type_enabled(*(p_cb + 91), OS_LOG_TYPE_ERROR))
          {
            sub_100058330();
          }
        }
      }

      else if (os_log_type_enabled(*(p_cb + 91), OS_LOG_TYPE_ERROR))
      {
        sub_1000582F4();
      }
    }

    else if (os_log_type_enabled(*(p_cb + 91), OS_LOG_TYPE_ERROR))
    {
      sub_1000582B8();
    }

    v85 = 0;
LABEL_161:

    goto LABEL_162;
  }

  v33 = [v16 objectForKeyedSubscript:@"a06ExpiryPeriodInSeconds"];
  v34 = v33;
  if (v33)
  {
    integerValue = [v33 integerValue];
    v36 = &OBJC_IVAR___MAServer__a06ClassCExpiryPeriodInSeconds;
    goto LABEL_37;
  }

LABEL_38:
  v37 = [NSNumber numberWithBool:v34 != 0, v88];
  [v9 setObject:v37 forKeyedSubscript:v32];

LABEL_46:
  v14 = v31;
LABEL_163:

LABEL_164:
  v31 = v14;
LABEL_165:
  if (os_log_type_enabled(*(p_cb + 91), OS_LOG_TYPE_DEBUG))
  {
    sub_1000583E4();
    if (completionCopy)
    {
LABEL_167:
      (*(completionCopy + 2))(completionCopy, v9, v31);
    }
  }

  else if (completionCopy)
  {
    goto LABEL_167;
  }

LABEL_168:

LABEL_169:
}

- (id)findDB:(id)b error:(id *)error
{
  v6 = [b objectForKeyedSubscript:@"group"];
  if (!v6)
  {
    createManagedAssetError();
    *error = v10 = 0;
    goto LABEL_10;
  }

  v7 = v6;
  lowercaseString = [v6 lowercaseString];

  if ([@"managedassetsc" isEqual:lowercaseString])
  {
    dbInClassC = [(MAStorage *)self->_storage dbInClassC];
  }

  else
  {
    if (![@"managedassetsd" isEqual:lowercaseString])
    {
LABEL_8:
      createManagedAssetError();
      *error = v10 = 0;
      goto LABEL_9;
    }

    dbInClassC = [(MAStorage *)self->_storage dbInClassD];
  }

  v10 = dbInClassC;
  if (!dbInClassC)
  {
    goto LABEL_8;
  }

LABEL_9:

LABEL_10:

  return v10;
}

- (id)findStore:(id)store name:(id)name error:(id *)error
{
  storeCopy = store;
  nameCopy = name;
  v9 = [[MAKVStore alloc] initWithName:nameCopy identifier:nameCopy profile:0 db:storeCopy attributes:0 error:error];
  if ([(MAKVStore *)v9 existsWithError:error])
  {
    v10 = v9;
  }

  else
  {
    identifier = [storeCopy identifier];
    *error = createManagedAssetError();

    v10 = 0;
  }

  return v10;
}

- (id)dumpStoreName:(id)name error:(id *)error
{
  if (name)
  {
    v5 = [name queryTablesWithError:error];
    allObjects = [v5 allObjects];
  }

  else
  {
    createManagedAssetError();
    *error = allObjects = 0;
  }

  return allObjects;
}

- (id)dumpKVStore:(id)store keys:(id)keys error:(id *)error
{
  storeCopy = store;
  keysCopy = keys;
  v9 = keysCopy;
  if (storeCopy)
  {
    if (!keysCopy)
    {
      v9 = &__NSDictionary0__struct;
    }

    v14 = 0;
    v10 = [storeCopy queryFor:v9 attributes:0 records:&v14 error:error];
    v11 = v14;
    if (v10)
    {
      v12 = [MAKVStore queryOutputToArrayOfDictionaries:v11 error:error];
    }

    else
    {
      if (os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_ERROR))
      {
        sub_100058618(storeCopy, error);
      }

      v12 = 0;
    }
  }

  else
  {
    createManagedAssetError();
    *error = v12 = 0;
  }

  return v12;
}

- (void)getConnectedClientsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (sub_100056B3C())
  {
    policyEngine = self->_policyEngine;
    v7 = +[NSXPCConnection currentConnection];
    v8 = NSStringFromSelector(a2);
    v13 = 0;
    v9 = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:@"com.apple.managedassets.debug" client:v7 function:v8 error:&v13];
    v10 = v13;

    v11 = 0;
    v12 = 0;
    if (v9 && (-[MANotificationEngine getAllObserversPIDs](self->_notificationEngine, "getAllObserversPIDs"), v11 = objc_claimAutoreleasedReturnValue(), +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", v11), v12 = objc_claimAutoreleasedReturnValue(), [v12 setObject:0 forKeyedSubscript:&off_10011E090], os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_DEBUG)))
    {
      sub_100058690();
      if (!completionCopy)
      {
        goto LABEL_6;
      }
    }

    else if (!completionCopy)
    {
LABEL_6:

      goto LABEL_7;
    }

    completionCopy[2](completionCopy, v12, v10);
    goto LABEL_6;
  }

LABEL_7:
}

- (void)getDaemonProcessInfo:(id)info
{
  infoCopy = info;
  if (sub_100056B3C())
  {
    policyEngine = self->_policyEngine;
    v7 = +[NSXPCConnection currentConnection];
    v8 = NSStringFromSelector(a2);
    v18 = 0;
    v9 = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:@"com.apple.managedassets.debug" client:v7 function:v8 error:&v18];
    v10 = v18;

    v11 = 0;
    v12 = 0;
    if (!v9)
    {
      goto LABEL_4;
    }

    v11 = +[NSProcessInfo processInfo];
    v19[0] = @"masdProcessName";
    processName = [v11 processName];
    v20[0] = processName;
    v19[1] = @"masdProcessPID";
    v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v11 processIdentifier]);
    v20[1] = v14;
    v19[2] = @"systemUptime";
    [v11 systemUptime];
    v15 = [NSNumber numberWithDouble:?];
    v20[2] = v15;
    v19[3] = @"masdProcessUptime";
    [(NSDate *)self->_spawnTime timeIntervalSinceNow];
    v17 = [NSNumber numberWithDouble:-v16];
    v20[3] = v17;
    v12 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];

    if (os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000586F8();
      if (!infoCopy)
      {
        goto LABEL_6;
      }
    }

    else
    {
LABEL_4:
      if (!infoCopy)
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    infoCopy[2](infoCopy, v12, v10);
    goto LABEL_6;
  }

LABEL_7:
}

- (void)getProfileSwitchTime:(id)time mode:(unint64_t)mode completion:(id)completion
{
  timeCopy = time;
  completionCopy = completion;
  policyEngine = self->_policyEngine;
  v12 = +[NSXPCConnection currentConnection];
  v13 = NSStringFromSelector(a2);
  v28 = 0;
  LODWORD(policyEngine) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:@"com.apple.managedassets.debug" client:v12 function:v13 error:&v28];
  v14 = v28;

  if (!policyEngine)
  {
    v22 = 0;
    if (!completionCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (timeCopy)
  {
    storage = self->_storage;
    uUIDString = [timeCopy UUIDString];
    if (mode == 1)
    {
      v27 = v14;
      v17 = &v27;
      v18 = &v27;
      v19 = storage;
      v20 = uUIDString;
      v21 = 1;
    }

    else
    {
      v26 = v14;
      v17 = &v26;
      v18 = &v26;
      v19 = storage;
      v20 = uUIDString;
      v21 = 0;
    }

    v22 = [(MAStorage *)v19 getLastSwitchTS:v20 mode:v21 error:v18];
    v24 = *v17;

    if (!v24)
    {
      v14 = 0;
      if (!completionCopy)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v25 = off_1001282D8;
    if (os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_ERROR))
    {
      sub_100058760(v25, timeCopy, v24);
    }

    v14 = v24;
    if (completionCopy)
    {
LABEL_16:
      completionCopy[2](completionCopy, v22, v14);
    }
  }

  else
  {
    if (os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_ERROR))
    {
      sub_10005881C();
    }

    v23 = createManagedAssetError();

    v22 = 0;
    v14 = v23;
    if (completionCopy)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (id)checKVStoreEntitlement:(id)entitlement attributes:(id)attributes clientConn:(id)conn op:(unint64_t)op profile:(id *)profile error:(id *)error
{
  entitlementCopy = entitlement;
  attributesCopy = attributes;
  connCopy = conn;
  if (!attributesCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    aSelector = a2;
    profileCopy = profile;
    errorCopy = error;
    v18 = [attributesCopy objectForKeyedSubscript:kMAGroupKey];
    groupNamesRegex = self->groupNamesRegex;
    v58 = 0;
    v59 = 0;
    v56 = 0;
    v57 = 0;
    v54 = entitlementCopy;
    v20 = [MAUtilityHelper getPathsForName:entitlementCopy group:v18 groupPattern:groupNamesRegex clientConn:connCopy entitlementGroup:&v59 entitlementPath:&v58 groupPath:&v57 error:&v56];
    v21 = v59;
    v22 = v58;
    v23 = v57;
    v24 = v56;

    if ((v20 & 1) == 0)
    {
      v26 = v24;
      *errorCopy = v24;

      v27 = 0;
LABEL_30:
      entitlementCopy = v54;
      goto LABEL_31;
    }

    v53 = v21;
    if (op - 1 > 4)
    {
      v25 = 0;
    }

    else
    {
      v25 = **(&off_100116E78 + op - 1);
    }

    v29 = v22;
    v50 = v25;
    v30 = [(MAPolicyEngine *)self->_policyEngine verifyFileAccess:v25 path:v22 group:v21 client:connCopy error:errorCopy];
    v31 = off_1001282E0;
    if (v30)
    {
      if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        opCopy = op;
        v62 = 2112;
        v63 = v23;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "passed entilement check op=%lu db groupPath=%@", buf, 0x16u);
      }

      v32 = kMAUserGroupType;
      v33 = [attributesCopy objectForKeyedSubscript:kMAGroupTypeKey];
      LODWORD(v32) = [v32 isEqual:v33];

      v29 = v22;
      if (!v32)
      {
        goto LABEL_25;
      }

      v34 = [NSMutableArray arrayWithObject:&off_10011E0C0];
      opCopy2 = op;
      v36 = v34;
      v37 = [NSNumber numberWithUnsignedInteger:opCopy2];
      if ([v36 containsObject:v37])
      {
        if (self->_guestModePreflightTesting)
        {

          goto LABEL_24;
        }

        policyEngine = self->_policyEngine;
        v41 = v36;
        v42 = kManagedAssetPersistedGuestPreflightGetDataEntitlement;
        v43 = NSStringFromSelector(aSelector);
        LODWORD(v42) = [(MAPolicyEngine *)policyEngine verifyBooleanEntitlementWith:v42 client:connCopy function:v43 error:errorCopy];

        v29 = v22;
        if (v42)
        {
LABEL_24:
          v44 = [attributesCopy objectForKeyedSubscript:kMAUUIDKey];
          v45 = [(MAServer *)self checkProfileForQueryKVStore:v44 profileNameOut:profileCopy error:errorCopy];

          if (v45)
          {
LABEL_25:
            v38 = v53;
            if ([kMAPrivateGroup isEqualToString:v53])
            {
              v46 = [@"private/" stringByAppendingString:v23];
            }

            else
            {
              v46 = v23;
            }

            v27 = v46;
            goto LABEL_29;
          }

          goto LABEL_19;
        }
      }

      else
      {
      }

      v39 = [attributesCopy objectForKeyedSubscript:kMAUUIDKey];
      v40 = [(MAServer *)self checkProfile:v39 profileNameOut:profileCopy error:errorCopy];

      if (v40)
      {
        goto LABEL_25;
      }
    }

    else if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_ERROR))
    {
      v48 = *errorCopy;
      *buf = 138412802;
      opCopy = v22;
      v62 = 2112;
      v38 = v21;
      v63 = v21;
      v64 = 2112;
      v65 = v48;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "entitlement check failed, path: %@ group: %@ error:%@", buf, 0x20u);
      v27 = 0;
      goto LABEL_29;
    }

LABEL_19:
    v27 = 0;
    v38 = v53;
LABEL_29:

    goto LABEL_30;
  }

  v28 = off_1001282E0;
  if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_ERROR))
  {
    sub_10005C85C(attributesCopy, v28);
  }

  createManagedAssetError();
  *error = v27 = 0;
LABEL_31:

  return v27;
}

- (id)getBaseStore:(id)store baseGroup:(id)group baseProfile:(id)profile clientConn:(id)conn error:(id *)error
{
  storeCopy = store;
  groupCopy = group;
  profileCopy = profile;
  connCopy = conn;
  v33 = kMAGroupKey;
  v34 = groupCopy;
  v16 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v26 = 0;
  v17 = [(MAServer *)self checKVStoreEntitlement:storeCopy attributes:v16 clientConn:connCopy op:2 profile:&v26 error:error];
  v18 = v26;
  if (v17)
  {
    v19 = profileCopy;

    buf[0] = 0;
    v20 = [(MAKVStoreManager *)self->_kvStoreManager getStore:storeCopy groupPath:v17 profile:v19 attributes:v16 isCreateOp:0 isBaseStore:1 isNew:buf storeChain:0 error:error];
    if (*error)
    {
LABEL_3:
      v21 = 0;
LABEL_11:

      v18 = v19;
      goto LABEL_12;
    }

    if (buf[0] == 1)
    {
      [(MAServer *)self loadBaseStoreFor:v20 clientConn:connCopy error:error];
      if (*error)
      {
        goto LABEL_3;
      }

      v23 = [(MAKVStoreManager *)self->_kvStoreManager registerStore:v20 isCreateOp:0 storeChain:0 error:error];

      v20 = v23;
    }

    v20 = v20;
    v21 = v20;
    goto LABEL_11;
  }

  v22 = off_1001282E0;
  if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_ERROR))
  {
    v25 = *error;
    *buf = 138412802;
    v28 = storeCopy;
    v29 = 2112;
    v30 = groupCopy;
    v31 = 2112;
    v32 = v25;
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "entitlement check failed for base store, name:%@ group:%@  error:%@", buf, 0x20u);
  }

  v21 = 0;
LABEL_12:

  return v21;
}

- (BOOL)loadBaseStoreFor:(id)for clientConn:(id)conn error:(id *)error
{
  forCopy = for;
  connCopy = conn;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  [forCopy getBaseStoreName:&v20 baseGroup:&v19 baseProfile:&v18 error:error];
  v10 = v20;
  v11 = v19;
  v12 = v18;
  if (*error)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1;
    if (v10 && v11)
    {
      v14 = [(MAServer *)self getBaseStore:v10 baseGroup:v11 baseProfile:v12 clientConn:connCopy error:error];
      v15 = v14;
      if (*error)
      {
        v16 = 1;
      }

      else
      {
        v16 = v14 == 0;
      }

      v13 = !v16;
      if (!v16)
      {
        [forCopy setBaseStore:v14];
      }
    }
  }

  return v13;
}

- (id)getStore:(id)store attributes:(id)attributes clientConn:(id)conn op:(unint64_t)op storeChain:(id *)chain error:(id *)error
{
  storeCopy = store;
  attributesCopy = attributes;
  v23 = 0;
  v16 = [(MAServer *)self checKVStoreEntitlement:storeCopy attributes:attributesCopy clientConn:conn op:op profile:&v23 error:error];
  v17 = v23;
  if (v16)
  {
    v22 = 0;
    v18 = [(MAKVStoreManager *)self->_kvStoreManager getStore:storeCopy groupPath:v16 profile:v17 attributes:attributesCopy isCreateOp:op == 1 isBaseStore:0 isNew:&v22 storeChain:chain error:error];
    if (*error)
    {
      v19 = 0;
    }

    else
    {
      if (op != 1 && v22 == 1)
      {
        v20 = [(MAKVStoreManager *)self->_kvStoreManager registerStore:v18 isCreateOp:0 storeChain:chain error:error];

        v18 = v20;
      }

      v18 = v18;
      v19 = v18;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)createKVStoreInternal:(id)internal fields:(id)fields attributes:(id)attributes clientConn:(id)conn error:(id *)error
{
  fieldsCopy = fields;
  attributesCopy = attributes;
  *error = 0;
  v14 = [(MAServer *)self getStore:internal attributes:attributesCopy clientConn:conn op:1 storeChain:0 error:error];
  v15 = v14;
  if (*error)
  {
    v16 = 0;
  }

  else
  {
    v17 = [v14 createWith:fieldsCopy attributes:attributesCopy error:error];

    if (*error)
    {
      v16 = 0;
      v15 = v17;
    }

    else
    {
      v16 = v17;
      v15 = v16;
    }
  }

  return v16;
}

- (void)createKVStore:(id)store fields:(id)fields attributes:(id)attributes reply:(id)reply
{
  storeCopy = store;
  fieldsCopy = fields;
  attributesCopy = attributes;
  replyCopy = reply;
  v14 = +[NSXPCConnection currentConnection];
  v15 = mach_continuous_time();
  if (attributesCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v24 = off_1001282E0;
      if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_ERROR))
      {
        sub_10005C85C(attributesCopy, v24);
      }

      v17 = createManagedAssetError();
      goto LABEL_12;
    }
  }

  v29 = 0;
  v16 = sub_100059720(attributesCopy, &v29);
  v17 = v29;
  if (v17)
  {
LABEL_12:
    v20 = v17;
    v19 = 0;
    goto LABEL_13;
  }

  v18 = off_1001282E0;
  if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = storeCopy;
    *&buf[12] = 2112;
    *&buf[14] = attributesCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "createKVStore store name=%@ attributes=%@", buf, 0x16u);
  }

  v28 = 0;
  v19 = [(MAServer *)self createKVStoreInternal:storeCopy fields:fieldsCopy attributes:attributesCopy clientConn:v14 error:&v28];
  v20 = v28;
  if (v19 && v16)
  {
    notificationEngine = self->_notificationEngine;
    name = [v19 name];
    v31 = name;
    v21 = [NSArray arrayWithObjects:&v31 count:1];
    profile = [v19 profile];
    [v19 group];
    v23 = v27 = fieldsCopy;
    [(MANotificationEngine *)notificationEngine notifyKVStoreEventWith:0x2000 kvStores:v21 profile:profile sharingGroup:v23];

    fieldsCopy = v27;
  }

LABEL_13:
  if (replyCopy)
  {
    replyCopy[2](replyCopy, v20);
  }

  if (v14)
  {
    [v14 auditToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  [CALogger logWithCoreAnalytics:"[MAServer(KVStore) createKVStore:fields:attributes:reply:]" client:buf startTS:v15 error:v20];
}

- (BOOL)saveDataToCloud:(id)cloud records:(id)records updateSyncState:(BOOL)state queryRecord:(BOOL)record error:(id *)error
{
  recordCopy = record;
  stateCopy = state;
  cloudCopy = cloud;
  recordsCopy = records;
  if (![cloudCopy cloudSync] || objc_msgSend(recordsCopy, "count") < 2)
  {
    v13 = 1;
    goto LABEL_46;
  }

  v14 = off_1001282E0;
  if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C93C(v14, cloudCopy);
  }

  profile = [cloudCopy profile];
  recordHandleField = profile;
  if (profile)
  {
    if (([profile isEqualToString:kMASDDefaultLocalUser] & 1) == 0)
    {
      v40 = off_1001282E0;
      v13 = 1;
      if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v68 = recordHandleField;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Ignore cloud sync for profile: %@, only DefaultLocalUser and system groups are supported.", buf, 0xCu);
      }

      v39 = recordHandleField;
      goto LABEL_45;
    }

    v17 = -1;
  }

  else
  {
    v17 = 3;
  }

  v44 = v17;

  v43 = recordsCopy;
  v18 = [MAKVStore queryOutputToArrayOfDictionaries:recordsCopy error:error];
  v47 = cloudCopy;
  recordHandleField = [cloudCopy recordHandleField];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v18;
  v52 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
  if (!v52)
  {
LABEL_36:
    v39 = obj;

    v13 = 1;
LABEL_43:
    cloudCopy = v47;
    goto LABEL_44;
  }

  v50 = kMAKVCol_stagingFrom;
  v51 = *v58;
  v46 = kMAKVCol_ckSyncState;
LABEL_12:
  v19 = 0;
  while (1)
  {
    if (*v58 != v51)
    {
      objc_enumerationMutation(obj);
    }

    v20 = *(*(&v57 + 1) + 8 * v19);
    v21 = [v20 objectForKeyedSubscript:recordHandleField];
    if (!v21)
    {
      v33 = off_1001282E0;
      if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_ERROR))
      {
        v34 = v33;
        name = [v47 name];
        group = [v47 group];
        *buf = 138412802;
        v68 = name;
        v69 = 2112;
        v70 = group;
        v71 = 2112;
        v72 = v20;
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Skip record syncUp with no recordHandle, store name=%@ group=%@: %@", buf, 0x20u);
      }

      goto LABEL_34;
    }

    v22 = [v20 objectForKeyedSubscript:v50];
    if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      intValue = [v22 intValue];

      if (intValue)
      {
        v24 = off_1001282E0;
        if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v68 = v21;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Skip syncUp staging record: %@", buf, 0xCu);
        }

        goto LABEL_34;
      }
    }

    else
    {
    }

    if (stateCopy)
    {
      v65[0] = recordHandleField;
      v65[1] = v50;
      v66[0] = v21;
      v66[1] = &off_10011E0A8;
      v25 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:2];
      v63 = v46;
      v64 = &off_10011E0A8;
      v26 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      v27 = [v47 updateFor:v25 value:v26 attributes:&off_10011E4B8 error:error];

      if ((v27 & 1) == 0)
      {
        v28 = off_1001282E0;
        if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v68 = v21;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "failed to reset syncState for: %@", buf, 0xCu);
        }
      }
    }

    if ([(MASDUserProfile *)self->_profile profileType]!= -1)
    {
      goto LABEL_34;
    }

    if (!recordCopy)
    {
      assetType = [v47 assetType];
      name2 = [v47 name];
      group2 = [v47 group];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_100059EF4;
      v53[3] = &unk_100116E58;
      v54 = v47;
      v55 = v20;
      [(MAServer *)self saveKVSDataToCloudWithRecordHandle:v21 assetType:assetType storeName:name2 storeGroup:group2 profileType:v44 data:v20 options:0 completionHandler:v53];

      goto LABEL_34;
    }

    v61[0] = recordHandleField;
    v61[1] = v50;
    v62[0] = v21;
    v62[1] = &off_10011E0A8;
    v29 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:2];
    v56 = 0;
    v30 = [v47 queryFor:v29 attributes:0 records:&v56 error:error];
    v31 = v56;

    if ((v30 & 1) == 0)
    {
      break;
    }

    v32 = [(MAServer *)self saveDataToCloud:v47 records:v31 updateSyncState:0 queryRecord:0 error:error];

    if ((v32 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_34:

    if (v52 == ++v19)
    {
      v52 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
      if (v52)
      {
        goto LABEL_12;
      }

      goto LABEL_36;
    }
  }

LABEL_41:
  v39 = obj;

  v41 = off_1001282E0;
  if (!os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_ERROR))
  {
    v13 = 0;
    goto LABEL_43;
  }

  cloudCopy = v47;
  sub_10005C9E4(v41, v47, error);
  v13 = 0;
LABEL_44:
  recordsCopy = v43;
LABEL_45:

LABEL_46:
  return v13;
}

- (void)deleteDataInCloud:(id)cloud uuids:(id)uuids
{
  cloudCopy = cloud;
  uuidsCopy = uuids;
  v8 = uuidsCopy;
  if (uuidsCopy && [uuidsCopy count])
  {
    profile = [cloudCopy profile];
    v10 = profile;
    if (profile)
    {
      if (([profile isEqualToString:kMASDDefaultLocalUser] & 1) == 0)
      {
        v15 = off_1001282E0;
        if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v19 = v10;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Ignore cloud sync for profile: %@, only DefaultLocalUser and system groups are supported.", buf, 0xCu);
        }

        goto LABEL_11;
      }

      v11 = -1;
    }

    else
    {
      v11 = 3;
    }

    assetType = [cloudCopy assetType];
    name = [cloudCopy name];
    group = [cloudCopy group];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10005A260;
    v16[3] = &unk_100116118;
    v17 = cloudCopy;
    [(MAServer *)self deleteKVSDataInCloudWithRecordHandles:v8 assetType:assetType storeName:name storeGroup:group profileType:v11 completionHandler:v16];

    v10 = v17;
LABEL_11:
  }
}

- (void)putDataInStore:(id)store records:(id)records attributes:(id)attributes reply:(id)reply
{
  storeCopy = store;
  recordsCopy = records;
  attributesCopy = attributes;
  replyCopy = reply;
  v14 = +[NSXPCConnection currentConnection];
  v15 = mach_continuous_time();
  v70 = 0;
  v16 = [(MAServer *)self getStore:storeCopy attributes:attributesCopy clientConn:v14 op:3 storeChain:0 error:&v70];
  v17 = v70;
  if (v17)
  {
    v18 = v17;
    if (!replyCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v59 = recordsCopy;
  v69 = 0;
  v19 = sub_100059720(attributesCopy, &v69);
  v20 = v69;
  if (v20)
  {
    v18 = v20;
    goto LABEL_23;
  }

  v68 = 0;
  v21 = sub_10005B9B4(attributesCopy, v16, 0, &v68);
  v22 = v68;
  if (v22)
  {
    v18 = v22;
    goto LABEL_23;
  }

  v58 = v16;
  v23 = attributesCopy;
  v53 = kMAKVStoreOptionsKey;
  v56 = v23;
  v24 = [v23 objectForKeyedSubscript:?];
  v51 = v15;
  if (v24)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = 0;
      v26 = ([v24 unsignedIntValue] >> 7) & 1;
      goto LABEL_19;
    }

    v50 = v24;
    v25 = createManagedAssetError();
    v27 = v25;
  }

  else
  {
    v25 = 0;
  }

  v26 = 0;
LABEL_19:

  v28 = v25;
  if (v28)
  {
    v29 = v28;
    v30 = off_1001282E0;
    v16 = v58;
    if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_ERROR))
    {
      v48 = v30;
      v49 = [v56 objectForKeyedSubscript:v53];
      buf[0] = 138412546;
      *&buf[1] = v49;
      LOWORD(buf[3]) = 2112;
      *(&buf[3] + 2) = v28;
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "invalid kvstore options in attributes: %@ error: %@", buf, 0x16u);

      v16 = v58;
    }

    v18 = v28;
    v15 = v51;
    goto LABEL_23;
  }

  v31 = 0;
  v16 = v58;
  if (v26)
  {
    v67 = 0;
    recordsCopy = v59;
    v32 = [MAKVStore queryOutputToArrayOfDictionaries:v59 error:&v67];
    v33 = v67;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v18 = v32;
    v54 = [v18 countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v54)
    {
      v52 = *v64;
      while (2)
      {
        v34 = 0;
        v35 = v33;
        do
        {
          if (*v64 != v52)
          {
            objc_enumerationMutation(v18);
          }

          v36 = *(*(&v63 + 1) + 8 * v34);
          kvStoreManager = self->_kvStoreManager;
          v62 = v35;
          v38 = [(MAKVStoreManager *)kvStoreManager dedupeCoreRX:v36 store:v58 attributes:v56 error:&v62, v50];
          v33 = v62;

          if ((v38 & 1) == 0)
          {
            if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_ERROR))
            {
              v16 = v58;
              sub_10005CC34();
              recordsCopy = v59;
            }

            else
            {
              v16 = v58;
              recordsCopy = v59;
            }

            goto LABEL_45;
          }

          v34 = v34 + 1;
          v35 = v33;
        }

        while (v54 != v34);
        v16 = v58;
        recordsCopy = v59;
        v54 = [v18 countByEnumeratingWithState:&v63 objects:v73 count:16];
        if (v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_45:

    v15 = v51;
  }

  else
  {
    config = [v58 config];
    isCoreRXDataSharingStore = [config isCoreRXDataSharingStore];

    if (isCoreRXDataSharingStore)
    {
      v41 = off_1001282E0;
      if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_INFO))
      {
        v42 = v41;
        v43 = MACoreRxDataSharingRecordsInputDescription(v59);
        buf[0] = 138412290;
        *&buf[1] = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "putData: %@", buf, 0xCu);
      }
    }

    v61 = 0;
    v16 = v58;
    v44 = [v58 put:v59 attributes:v56 error:{&v61, v50}];
    v18 = v61;
    if (!v44)
    {
      v15 = v51;
      goto LABEL_23;
    }

    if (v19)
    {
      notificationEngine = self->_notificationEngine;
      name = [v58 name];
      v72 = name;
      v45 = [NSArray arrayWithObjects:&v72 count:1];
      profile = [v58 profile];
      group = [v58 group];
      [(MANotificationEngine *)notificationEngine notifyKVStoreEventWith:0x8000 kvStores:v45 profile:profile sharingGroup:group];

      v16 = v58;
    }

    v15 = v51;
    if (!v21)
    {
LABEL_23:
      recordsCopy = v59;
      if (!replyCopy)
      {
        goto LABEL_4;
      }

LABEL_3:
      replyCopy[2](replyCopy, v18);
      goto LABEL_4;
    }

    v60 = v18;
    recordsCopy = v59;
    [(MAServer *)self saveDataToCloud:v16 records:v59 updateSyncState:0 queryRecord:1 error:&v60];
    v33 = v60;
  }

  v18 = v33;
  if (replyCopy)
  {
    goto LABEL_3;
  }

LABEL_4:
  if (v14)
  {
    [v14 auditToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  [CALogger logWithCoreAnalytics:"[MAServer(KVStore) putDataInStore:records:attributes:reply:]" client:buf startTS:v15 error:v18, v50];
}

- (void)updateDataInStore:(id)store keys:(id)keys values:(id)values attributes:(id)attributes reply:(id)reply
{
  keysCopy = keys;
  valuesCopy = values;
  attributesCopy = attributes;
  replyCopy = reply;
  storeCopy = store;
  v17 = +[NSXPCConnection currentConnection];
  v18 = mach_continuous_time();
  v55 = 0;
  v19 = [(MAServer *)self getStore:storeCopy attributes:attributesCopy clientConn:v17 op:3 storeChain:0 error:&v55];

  v20 = v55;
  if (v20 || (v54 = 0, v21 = sub_100059720(attributesCopy, &v54), (v20 = v54) != 0) || (v46 = v21, v53 = 0, v22 = sub_10005B9B4(attributesCopy, v19, 0, &v53), (v20 = v53) != 0))
  {
    v23 = v20;
  }

  else
  {
    v45 = v22;
    config = [v19 config];
    isCoreRXDataSharingStore = [config isCoreRXDataSharingStore];

    if (isCoreRXDataSharingStore)
    {
      v26 = off_1001282E0;
      if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_INFO))
      {
        log = v26;
        v37 = MACoreRxDataSharingRecordDescription(keysCopy);
        v27 = MACoreRxDataSharingRecordDescription(valuesCopy);
        *buf = 138412546;
        *&buf[4] = v37;
        *&buf[12] = 2112;
        *&buf[14] = v27;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "updateData, key: %@ values: %@", buf, 0x16u);
      }
    }

    v52 = 0;
    v28 = [v19 updateFor:keysCopy value:valuesCopy attributes:attributesCopy error:&v52];
    v23 = v52;
    if (v28)
    {
      loga = kMAKVCol_stagingFrom;
      v29 = [valuesCopy objectForKeyedSubscript:?];
      intValue = [v29 intValue];

      v30 = [valuesCopy objectForKeyedSubscript:loga];

      if (v30 && !intValue)
      {
        notificationEngine = self->_notificationEngine;
        name = [v19 name];
        v58 = name;
        logb = [NSArray arrayWithObjects:&v58 count:1];
        profile = [v19 profile];
        group = [v19 group];
        [(MANotificationEngine *)notificationEngine notifyKVStoreEventWith:0x2000 kvStores:logb profile:profile sharingGroup:group];
      }

      if (v46)
      {
        v40 = self->_notificationEngine;
        logc = [v19 name];
        v57 = logc;
        v47 = [NSArray arrayWithObjects:&v57 count:1];
        profile2 = [v19 profile];
        group2 = [v19 group];
        [(MANotificationEngine *)v40 notifyKVStoreEventWith:0x8000 kvStores:v47 profile:profile2 sharingGroup:group2];
      }

      if (v45)
      {
        v50 = v23;
        v51 = 0;
        [v19 queryFor:keysCopy attributes:attributesCopy records:&v51 error:&v50];
        v48 = v51;
        v33 = v50;

        if (!v33)
        {
          v49 = 0;
          [(MAServer *)self saveDataToCloud:v19 records:v48 updateSyncState:1 queryRecord:0 error:&v49];
          v33 = v49;
        }

        v23 = v33;
      }
    }
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v23);
  }

  if (v17)
  {
    [v17 auditToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  [CALogger logWithCoreAnalytics:"[MAServer(KVStore) updateDataInStore:keys:values:attributes:reply:]" client:buf startTS:v18 error:v23];
}

- (void)queryDataInStore:(id)store keys:(id)keys attributes:(id)attributes reply:(id)reply
{
  storeCopy = store;
  keysCopy = keys;
  attributesCopy = attributes;
  replyCopy = reply;
  v14 = +[NSXPCConnection currentConnection];
  v47 = mach_continuous_time();
  v62 = 0;
  v63 = 0;
  v53 = [(MAServer *)self getStore:storeCopy attributes:attributesCopy clientConn:v14 op:2 storeChain:&v63 error:&v62];
  v15 = v63;
  v16 = v62;
  if (v16)
  {
LABEL_2:
    v17 = v16;
    v18 = 0;
    goto LABEL_3;
  }

  if (![v15 count])
  {
    if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_ERROR))
    {
      sub_10005CC9C();
    }

    v41 = storeCopy;
    v16 = createManagedAssetError();
    goto LABEL_2;
  }

  selfCopy = self;
  v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v15 count]);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v15;
  v50 = v18;
  v52 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v52)
  {
    v51 = *v59;
    v44 = kMAGroupKey;
    v42 = replyCopy;
    v43 = storeCopy;
    v49 = v14;
    v45 = attributesCopy;
    while (2)
    {
      v19 = 0;
      do
      {
        if (*v59 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v58 + 1) + 8 * v19);
        v21 = off_1001282E0;
        if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_DEBUG))
        {
          v31 = v21;
          identifier = [v20 identifier];
          name = [v20 name];
          group = [v20 group];
          *buf = 138412802;
          *&buf[4] = identifier;
          *&buf[12] = 2112;
          *&buf[14] = name;
          *&buf[22] = 2112;
          *&buf[24] = group;
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "perform query on %@ name=%@ group=%@", buf, 0x20u);

          v18 = v50;
        }

        if (v20 == v53)
        {
          v17 = 0;
        }

        else
        {
          name2 = [v20 name];
          v64 = v44;
          group2 = [v20 group];
          v65 = group2;
          [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
          v25 = v24 = keysCopy;
          v56 = 0;
          v57 = 0;
          v26 = [(MAServer *)selfCopy checKVStoreEntitlement:name2 attributes:v25 clientConn:v49 op:2 profile:&v57 error:&v56];
          v27 = v15;
          v28 = v57;
          v17 = v56;

          keysCopy = v24;
          attributesCopy = v45;

          v18 = v50;
          v15 = v27;

          if (!v26)
          {
            goto LABEL_35;
          }
        }

        v54 = v17;
        v55 = 0;
        [v20 queryFor:keysCopy attributes:attributesCopy records:&v55 error:&v54];
        v29 = v55;
        v30 = v54;

        if (v30)
        {

          v17 = v30;
LABEL_35:

          replyCopy = v42;
          storeCopy = v43;
          v14 = v49;
          goto LABEL_3;
        }

        if ([v29 count])
        {
          [v18 addObject:v29];
        }

        v19 = v19 + 1;
      }

      while (v52 != v19);
      replyCopy = v42;
      storeCopy = v43;
      v14 = v49;
      v52 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
      if (v52)
      {
        continue;
      }

      break;
    }
  }

  config = [v53 config];
  isCoreRXDataSharingStore = [config isCoreRXDataSharingStore];

  if (isCoreRXDataSharingStore && (v37 = off_1001282E0, os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_INFO)))
  {
    v38 = v37;
    v39 = MACoreRxDataSharingRecordDescription(keysCopy);
    v40 = MACoreRxDataSharingQueryOutputDescription(v50);
    *buf = 138412546;
    *&buf[4] = v39;
    *&buf[12] = 2112;
    *&buf[14] = v40;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "queryData, key: %@ returns: %@", buf, 0x16u);

    v18 = v50;
    v17 = 0;
  }

  else
  {
    v17 = 0;
    v18 = v50;
  }

LABEL_3:
  if (replyCopy)
  {
    if (v17)
    {

      v18 = 0;
    }

    replyCopy[2](replyCopy, v18, v17);
  }

  if (v14)
  {
    [v14 auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  [CALogger logWithCoreAnalytics:"[MAServer(KVStore) queryDataInStore:keys:attributes:reply:]" client:buf startTS:v47 error:v17, v41];
}

- (void)deleteDataInStore:(id)store keys:(id)keys attributes:(id)attributes reply:(id)reply
{
  keysCopy = keys;
  attributesCopy = attributes;
  replyCopy = reply;
  storeCopy = store;
  v14 = +[NSXPCConnection currentConnection];
  v52 = mach_continuous_time();
  v15 = kMAKVCol_uuid;
  v63 = 0;
  v62 = 0;
  v16 = [(MAServer *)self getStore:storeCopy attributes:attributesCopy clientConn:v14 op:4 storeChain:0 error:&v62];

  v17 = v62;
  v53 = v16;
  if (v17 || (v61 = 0, v18 = sub_100059720(attributesCopy, &v61), (v17 = v61) != 0) || (v60 = 0, v19 = sub_10005B9B4(attributesCopy, v16, &v63, &v60), (v17 = v60) != 0))
  {
    v20 = v17;
    v21 = keysCopy;
    v22 = 0;
    v23 = 0;
    recordHandleField = v15;
    goto LABEL_5;
  }

  v49 = v18;
  config = [v16 config];
  isCoreRXDataSharingStore = [config isCoreRXDataSharingStore];

  if (isCoreRXDataSharingStore)
  {
    v27 = off_1001282E0;
    if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_INFO))
    {
      v28 = v27;
      v29 = MACoreRxDataSharingRecordDescription(keysCopy);
      *buf = 138412290;
      *&buf[4] = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "deleteData, key: %@", buf, 0xCu);
    }
  }

  recordHandleField = [v16 recordHandleField];

  if (v63 == 1)
  {
    v30 = [keysCopy objectForKeyedSubscript:recordHandleField];
    if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v21 = keysCopy;
      v67 = v30;
      v31 = [NSArray arrayWithObjects:&v67 count:1];
      [(MAServer *)self deleteDataInCloud:v53 uuids:v31];

      v20 = 0;
    }

    else
    {
      v21 = keysCopy;
      v40 = v30;
      v20 = createManagedAssetError();
    }

    v22 = 0;
    goto LABEL_23;
  }

  if (!v19)
  {
    v21 = keysCopy;
    v22 = 0;
    v23 = 0;
    v20 = 0;
LABEL_25:
    v56 = v20;
    v46 = [v53 deleteFor:v21 attributes:attributesCopy error:&v56];
    v33 = v56;

    if (v46)
    {
      v47 = v33;
      if (v49)
      {
        notificationEngine = self->_notificationEngine;
        name = [v53 name];
        v66 = name;
        v50 = [NSArray arrayWithObjects:&v66 count:1];
        profile = [v53 profile];
        group = [v53 group];
        [(MANotificationEngine *)notificationEngine notifyKVStoreEventWith:0x4000 kvStores:v50 profile:profile sharingGroup:group];
      }

      if ([v23 count])
      {
        v54 = v47;
        v55 = 0;
        v44 = [v53 queryForColumn:v21 column:recordHandleField attributes:v22 values:&v55 error:&v54];
        v51 = v55;
        v20 = v54;

        if (v44)
        {
          v48 = [NSMutableSet setWithArray:v23];
          v45 = [NSSet setWithArray:v51];
          [v48 minusSet:v45];
          allObjects = [v48 allObjects];
          v36 = sub_10005BE3C(allObjects);
          [(MAServer *)self deleteDataInCloud:v53 uuids:v36];
        }

        else if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_ERROR))
        {
          sub_10005CD04();
        }
      }

      else
      {
        v20 = v47;
      }
    }

    else
    {
      v20 = v33;
    }

    goto LABEL_5;
  }

  v59 = 0;
  v22 = sub_10005BC9C(attributesCopy, &v59);
  v32 = v59;
  if (v32)
  {
    v20 = v32;
    v21 = keysCopy;
LABEL_23:
    v23 = 0;
    goto LABEL_5;
  }

  v57 = 0;
  v58 = 0;
  v37 = v16;
  v21 = keysCopy;
  v38 = [v37 queryForColumn:keysCopy column:recordHandleField attributes:v22 values:&v58 error:&v57];
  v23 = v58;
  v20 = v57;
  if (v38)
  {
    v39 = off_1001282E0;
    if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005CDBC(v39, v23, v53);
    }

    goto LABEL_25;
  }

  if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_ERROR))
  {
    sub_10005CD04();
  }

LABEL_5:
  if (replyCopy)
  {
    replyCopy[2](replyCopy, v20);
  }

  if (v14)
  {
    [v14 auditToken];
  }

  else
  {
    *buf = 0u;
    v65 = 0u;
  }

  [CALogger logWithCoreAnalytics:"[MAServer(KVStore) deleteDataInStore:keys:attributes:reply:]" client:buf startTS:v52 error:v20, v40];
}

- (void)deleteKVStore:(id)store attributes:(id)attributes reply:(id)reply
{
  attributesCopy = attributes;
  replyCopy = reply;
  storeCopy = store;
  v11 = +[NSXPCConnection currentConnection];
  v12 = mach_continuous_time();
  v43 = 0;
  v13 = [(MAServer *)self getStore:storeCopy attributes:attributesCopy clientConn:v11 op:5 storeChain:0 error:&v43];

  v14 = v43;
  if (v14)
  {
    goto LABEL_6;
  }

  v15 = off_1001282E0;
  if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    name = [v13 name];
    group = [v13 group];
    cloudSync = [v13 cloudSync];
    *buf = 138413058;
    *&buf[4] = name;
    *&buf[12] = 2112;
    *&buf[14] = group;
    *&buf[22] = 1024;
    *&buf[24] = cloudSync;
    *&buf[28] = 2112;
    *&buf[30] = attributesCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "deleteKVStore store name=%@ group=%@ cloudSync=%u attributes=%@", buf, 0x26u);
  }

  v42 = 0;
  v20 = sub_100059720(attributesCopy, &v42);
  v14 = v42;
  if (v14 || (v41 = 0, v21 = sub_10005B9B4(attributesCopy, v13, 0, &v41), (v14 = v41) != 0))
  {
LABEL_6:
    v22 = v14;
    v23 = 0;
    v24 = 0;
    goto LABEL_7;
  }

  if (v21)
  {
    recordHandleField = [v13 recordHandleField];
    v40 = 0;
    v23 = sub_10005BC9C(attributesCopy, &v40);
    v26 = v40;
    v34 = recordHandleField;
    if (v26)
    {
      v22 = v26;
      v24 = 0;
LABEL_28:

      goto LABEL_7;
    }

    v38 = 0;
    v39 = 0;
    v32 = [v13 queryForColumn:&__NSDictionary0__struct column:recordHandleField attributes:v23 values:&v39 error:&v38];
    v24 = v39;
    v22 = v38;
    if ((v32 & 1) == 0)
    {
      if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_ERROR))
      {
        sub_10005CD04();
      }

      goto LABEL_28;
    }

    v33 = off_1001282E0;
    if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005CE84(v33, v24, v13);
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v22 = 0;
  }

  v35 = v22;
  v37 = v22;
  v30 = [v13 deleteStore:attributesCopy error:&v37];
  v22 = v37;

  if (v30)
  {
    if (v20)
    {
      notificationEngine = self->_notificationEngine;
      name2 = [v13 name];
      v44 = name2;
      v36 = [NSArray arrayWithObjects:&v44 count:1];
      profile = [v13 profile];
      group2 = [v13 group];
      [(MANotificationEngine *)notificationEngine notifyKVStoreEventWith:0x4000 kvStores:v36 profile:profile sharingGroup:group2];
    }

    if ([v24 count])
    {
      v34 = sub_10005BE3C(v24);
      [(MAServer *)self deleteDataInCloud:v13 uuids:?];
      goto LABEL_28;
    }
  }

LABEL_7:
  if (replyCopy)
  {
    replyCopy[2](replyCopy, v22);
  }

  if (v11)
  {
    [v11 auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  [CALogger logWithCoreAnalytics:"[MAServer(KVStore) deleteKVStore:attributes:reply:]" client:buf startTS:v12 error:v22];
}

- (void)checkIfKVStoreGroupExistUsing:(id)using reply:(id)reply
{
  usingCopy = using;
  replyCopy = reply;
  v8 = off_1001282E0;
  if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = usingCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "checkIfKVStoreGroupExistUsing %@", buf, 0xCu);
  }

  v9 = mach_continuous_time();
  v10 = +[NSXPCConnection currentConnection];
  v26 = 0;
  v27 = 0;
  v11 = [(MAServer *)self checKVStoreEntitlement:@"don'tcare" attributes:usingCopy clientConn:v10 op:2 profile:&v27 error:&v26];
  profileName = v27;
  v13 = v26;
  if (v13)
  {
LABEL_4:
    v14 = v13;
    v15 = 0;
    v16 = 0;
    if (!replyCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (!v11)
  {
    v13 = createManagedAssetError();
    goto LABEL_4;
  }

  v17 = kMASystemGroupType;
  v18 = [usingCopy objectForKeyedSubscript:kMAGroupTypeKey];
  LODWORD(v17) = [v17 isEqual:v18];

  if (v17)
  {
    marootPath = [(MAStorage *)self->_storage marootPath];
    v30[0] = marootPath;
    v30[1] = @"kvStores/";
    v20 = [NSString stringWithFormat:@"%@.sqlite", v11];
    v30[2] = v20;
    v21 = v30;
    v22 = 3;
  }

  else
  {
    if (!profileName)
    {
      profileName = [(MASDUserProfile *)self->_profile profileName];
    }

    marootPath = [(MAStorage *)self->_storage maUsersPath];
    v29[0] = marootPath;
    v29[1] = profileName;
    v29[2] = @"kvStore";
    v20 = [NSString stringWithFormat:@"%@.sqlite", v11];
    v29[3] = v20;
    v21 = v29;
    v22 = 4;
  }

  v23 = [NSArray arrayWithObjects:v21 count:v22];
  v15 = [NSString pathWithComponents:v23];

  v24 = +[NSFileManager defaultManager];
  v16 = [v24 fileExistsAtPath:v15];

  v25 = off_1001282E0;
  if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v15;
    *&buf[12] = 1024;
    *&buf[14] = v16;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "dbFile %@ exist: %d", buf, 0x12u);
  }

  v14 = 0;
  if (replyCopy)
  {
LABEL_5:
    replyCopy[2](replyCopy, v16, v14);
  }

LABEL_6:
  if (v10)
  {
    [v10 auditToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  [CALogger logWithCoreAnalytics:"[MAServer(KVStore) checkIfKVStoreGroupExistUsing:reply:]" client:buf startTS:v9 error:v14];
}

@end