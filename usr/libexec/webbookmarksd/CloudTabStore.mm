@interface CloudTabStore
+ (id)sharedCloudTabStore;
- (BOOL)closeAllTabsOnDevice:(id)device;
- (BOOL)closeTab:(id)tab onDevice:(id)device;
- (BOOL)cloudTabsAreEnabled;
- (BOOL)tabArrayOfDeviceFromDictionary:(id)dictionary isEqualToOtherDeviceTabsFromDictionary:(id)fromDictionary includingLastViewedTime:(BOOL)time;
- (CloudTabStore)init;
- (CloudTabStoreDelegate)delegate;
- (id)_syncedCloudTabDevicesUsingFilter:(BOOL)filter;
- (id)currentDevice;
- (void)_callFetchCloudKitDataCompletionHandlers;
- (void)_checkCloudTabsEnabledFromAccounts;
- (void)_clearAllDevices;
- (void)_clearTabsForCurrentDeviceWithSyncCompletionHandler:(id)handler;
- (void)_closeRequestedTabIfPossible:(id)possible;
- (void)_cloudKitDataDidUpdateOnServer:(id)server;
- (void)_cloudKitDataWasDeletedAfterAccountChange:(id)change;
- (void)_cloudTabsEnabledDidChange;
- (void)_forceFetchAllCloudTabDevicesWithCompletion:(id)completion;
- (void)_notifyCloudTabStoreDidUpdate;
- (void)_removeConflictingDevice;
- (void)_saveCurrentDeviceCloudTabs:(id)tabs syncCompletionHandler:(id)handler;
- (void)_saveCurrentDeviceCloudTabsNow:(id)now syncCompletionHandler:(id)handler;
- (void)_waitForInitialCloudKitFetchToComplete:(id)complete;
- (void)didGetCachedDevicesFromCloudKitForCloudTabStore:(id)store;
- (void)didUpdateDevicesAndCloseRequestsFromCloudKitForCloudTabStore:(id)store error:(id)error;
- (void)fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit;
- (void)saveCurrentDeviceCloudTabsForEnteringBackground:(id)background completion:(id)completion;
- (void)saveCurrentDeviceTabsFromBrowserState:(id)state syncCompletionHandler:(id)handler;
- (void)startObservingTabStoreStateChanges;
- (void)stopObservingTabStoreStateChanges;
- (void)synchronizeCloudTabDevices;
@end

@implementation CloudTabStore

+ (id)sharedCloudTabStore
{
  if (qword_10002E8C8 != -1)
  {
    sub_1000161A0();
  }

  v3 = qword_10002E8C0;

  return v3;
}

- (CloudTabStore)init
{
  v8.receiver = self;
  v8.super_class = CloudTabStore;
  v2 = [(CloudTabStore *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CloudTabStore *)v2 setWbsDelegate:v2];
    [(CloudTabStore *)v3 _setCloudKitDataNeedsFetching:1];
    [(CloudTabStore *)v3 _checkCloudTabsEnabledFromAccounts];
    v4 = +[NSUserDefaults standardUserDefaults];
    if ([v4 BOOLForKey:WBSDebugForceFetchCloudTabsOnceKey])
    {
      v5 = +[WBSFeatureAvailability isInternalInstall];

      if (v5)
      {
        [(CloudTabStore *)v3 _forceFetchAllCloudTabDevicesWithCompletion:0];
      }
    }

    else
    {
    }

    v6 = v3;
  }

  return v3;
}

- (void)_checkCloudTabsEnabledFromAccounts
{
  v2 = objc_alloc_init(ACAccountStore);
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  v4 = [aa_primaryAppleAccount isEnabledForDataclass:kAccountDataclassBookmarks];
  v5 = sub_1000144F8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"disabled";
    if (v4)
    {
      v6 = @"enabled";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting CloudTabs %@ in user defaults", &v8, 0xCu);
  }

  v7 = +[NSUserDefaults safari_browserDefaults];
  [v7 setBool:v4 forKey:@"CloudTabsEnabled"];
  [v7 synchronize];
}

- (void)startObservingTabStoreStateChanges
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_cloudKitDataDidUpdateOnServer:" name:WBSSafariBookmarksSyncAgentCloudTabsWereUpdatedOnServerNotificationName object:0];

  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_cloudKitDataWasDeletedAfterAccountChange:" name:WBSSafariBookmarksSyncAgentCloudTabsWereDeletedAfterAccountChangeNotificationName object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_10000276C, @"CloudTabStorePrefChangedNotification", 0, 1024);
}

- (void)stopObservingTabStoreStateChanges
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
}

- (void)_cloudTabsEnabledDidChange
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 synchronize];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cloudTabStore:self cloudTabsEnabledDidChange:{-[CloudTabStore cloudTabsAreEnabled](self, "cloudTabsAreEnabled")}];
}

- (void)_cloudKitDataDidUpdateOnServer:(id)server
{
  [(CloudTabStore *)self _setCloudKitDataNeedsFetching:1];
  v4 = sub_1000144F8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetching data from CloudKit because data was updated on server", v5, 2u);
  }

  [(CloudTabStore *)self fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit];
}

- (void)_cloudKitDataWasDeletedAfterAccountChange:(id)change
{
  v4 = sub_1000144F8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received notification of CloudKit data deletion after account change.", v5, 2u);
  }

  [(CloudTabStore *)self _setCloudKitDataNeedsFetching:1];
}

- (void)_notifyCloudTabStoreDidUpdate
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = [NSNotification notificationWithName:@"CloudTabStoreDidUpdateNotification" object:self userInfo:0];
  [v3 postNotification:v4];

  [(CloudTabStore *)self notifyObserversOfSyncedCloudTabDevicesChanged];
}

- (id)currentDevice
{
  if (([(CloudTabStore *)self syncAgentIsAvailable]& 1) != 0)
  {
    dictionaryRepresentationOfCurrentDeviceInCloudKit = [(CloudTabStore *)self dictionaryRepresentationOfCurrentDeviceInCloudKit];
    if (dictionaryRepresentationOfCurrentDeviceInCloudKit)
    {
      v4 = [WBSCloudTabDevice alloc];
      _currentDeviceUUID = [(CloudTabStore *)self _currentDeviceUUID];
      uUIDString = [_currentDeviceUUID UUIDString];
      v7 = [v4 initWithDictionary:dictionaryRepresentationOfCurrentDeviceInCloudKit uuid:uUIDString];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = sub_1000144F8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000161B4();
    }

    v7 = 0;
  }

  return v7;
}

- (id)_syncedCloudTabDevicesUsingFilter:(BOOL)filter
{
  if ([(CloudTabStore *)self cloudTabsAreEnabled])
  {
    v18.receiver = self;
    v18.super_class = CloudTabStore;
    syncedCloudTabDevices = [(CloudTabStore *)&v18 syncedCloudTabDevices];
    v6 = sub_1000144F8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Synchronizing before returning iCloud Tab devices", buf, 2u);
    }

    [(CloudTabStore *)self synchronizeCloudTabDevices];
    v7 = +[NSUserDefaults safari_browserDefaults];
    v8 = [v7 objectForKey:@"uuidOfCloudTabDeviceUsedForRestoration"];
    [v7 doubleForKey:@"lastModifiedTimeOfCloudTabDeviceUsedForRestoration"];
    if (v8 && filter)
    {
      v10 = v9;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100002C8C;
      v15[3] = &unk_100028CF8;
      v16 = v8;
      v17 = v10;
      v11 = [syncedCloudTabDevices safari_filterObjectsUsingBlock:v15];

      v12 = v11;
    }

    else
    {
      v12 = syncedCloudTabDevices;
    }
  }

  else
  {
    v13 = sub_1000144F8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No iCloud Tab devices returned because iCloud Tabs are disabled", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)synchronizeCloudTabDevices
{
  cloudTabsAreEnabled = [(CloudTabStore *)self cloudTabsAreEnabled];
  v4 = sub_1000144F8();
  v5 = v4;
  if (cloudTabsAreEnabled)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1000161E8();
    }

    if (qword_10002E8D8 != -1)
    {
      sub_10001621C();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002EE8;
    block[3] = &unk_100028BB0;
    block[4] = self;
    dispatch_async(qword_10002E8D0, block);
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bypassing synchronizing with CloudKit because iCloud Tabs are disabled", buf, 2u);
  }
}

- (void)fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit
{
  if (![(CloudTabStore *)self _cloudKitDataNeedsFetching])
  {
    v3 = sub_1000144F8();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v4 = "Bypassing fetching data from CloudKit because we're already up-to-date";
    goto LABEL_8;
  }

  [(CloudTabStore *)self _setCloudKitDataNeedsFetching:0];
  if ([(CloudTabStore *)self syncAgentIsAvailable])
  {
    self->_hasInitiatedFetchOfCloudKitDataAtLeastOnce = 1;
    v5.receiver = self;
    v5.super_class = CloudTabStore;
    [(CloudTabStore *)&v5 fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit];
    return;
  }

  v3 = sub_1000144F8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v4 = "Bypassing fetching data from CloudKit because sync agent is not available";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 2u);
  }
}

- (void)_waitForInitialCloudKitFetchToComplete:(id)complete
{
  completeCopy = complete;
  if (self->_hasCompletedFetchOfCloudKitDataAtLeastOnce)
  {
    v5 = sub_1000144F8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000162E0();
    }

    completeCopy[2](completeCopy, 1);
    goto LABEL_16;
  }

  if (!self->_hasInitiatedFetchOfCloudKitDataAtLeastOnce)
  {
    v10 = sub_1000144F8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100016244();
    }

    goto LABEL_15;
  }

  if (([(CloudTabStore *)self syncAgentIsAvailable]& 1) == 0)
  {
    v11 = sub_1000144F8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100016278();
    }

LABEL_15:
    completeCopy[2](completeCopy, 0);
    goto LABEL_16;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000032E8;
  v14[3] = &unk_100028D20;
  v15 = completeCopy;
  v6 = objc_retainBlock(v14);
  v7 = sub_1000144F8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000162AC();
  }

  fetchCloudKitDataCompletionHandlers = self->_fetchCloudKitDataCompletionHandlers;
  v9 = objc_retainBlock(v6);
  if (fetchCloudKitDataCompletionHandlers)
  {
    [(NSMutableArray *)fetchCloudKitDataCompletionHandlers addObject:v9];
  }

  else
  {
    v12 = [NSMutableArray arrayWithObject:v9];
    v13 = self->_fetchCloudKitDataCompletionHandlers;
    self->_fetchCloudKitDataCompletionHandlers = v12;
  }

LABEL_16:
}

- (void)_callFetchCloudKitDataCompletionHandlers
{
  fetchCloudKitDataCompletionHandlers = self->_fetchCloudKitDataCompletionHandlers;
  if (fetchCloudKitDataCompletionHandlers)
  {
    v4 = fetchCloudKitDataCompletionHandlers;
    v5 = self->_fetchCloudKitDataCompletionHandlers;
    self->_fetchCloudKitDataCompletionHandlers = 0;

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v4;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)closeTab:(id)tab onDevice:(id)device
{
  v7.receiver = self;
  v7.super_class = CloudTabStore;
  v5 = [(CloudTabStore *)&v7 closeTab:tab onDevice:device];
  if (v5)
  {
    [(CloudTabStore *)self _notifyCloudTabStoreDidUpdate];
  }

  return v5;
}

- (BOOL)closeAllTabsOnDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = CloudTabStore;
  v4 = [(CloudTabStore *)&v6 closeAllTabsOnDevice:device];
  if (v4)
  {
    [(CloudTabStore *)self _notifyCloudTabStoreDidUpdate];
  }

  return v4;
}

- (void)_clearAllDevices
{
  if ([(CloudTabStore *)self syncAgentIsAvailable])
  {

    [(CloudTabStore *)self deleteAllDevicesFromCloudKit];
  }
}

- (void)_clearTabsForCurrentDeviceWithSyncCompletionHandler:(id)handler
{
  [(CloudTabStore *)self _saveCurrentDeviceCloudTabs:0 syncCompletionHandler:handler];

  [(CloudTabStore *)self _notifyCloudTabStoreDidUpdate];
}

- (void)_removeConflictingDevice
{
  if ([(CloudTabStore *)self canSaveCloudTabsForCurrentDevice]&& +[WBUFeatureManager accessLevel]!= 2)
  {
    if (([(CloudTabStore *)self syncAgentIsAvailable]& 1) != 0)
    {
      v3 = +[NSUserDefaults safari_browserDefaults];
      _currentDeviceUUID = [(CloudTabStore *)self _currentDeviceUUID];
      uUIDString = [_currentDeviceUUID UUIDString];

      v6 = [v3 objectForKey:_SFCloudTabsDeviceUUIDForRestorationDefaultsKey];
      v7 = [v3 objectForKey:@"uuidOfCloudTabDeviceUsedForRestoration"];
      if ([uUIDString isEqualToString:v6])
      {
        v8 = v7;
      }

      else
      {
        v8 = v6;
      }

      v9 = v8;
      v10 = +[WBSDevice currentDevice];
      userAssignedName = [v10 userAssignedName];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100003750;
      v14[3] = &unk_100028D48;
      v15 = v9;
      v12 = v9;
      [(CloudTabStore *)self clearTabsForFirstDuplicateDeviceInCloudKitWithName:userAssignedName passingTest:v14];
    }

    else
    {
      v13 = sub_1000144F8();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100016348();
      }
    }
  }
}

- (void)saveCurrentDeviceCloudTabsForEnteringBackground:(id)background completion:(id)completion
{
  backgroundCopy = background;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100003924;
  v14[3] = &unk_100028D20;
  completionCopy = completion;
  v15 = completionCopy;
  v8 = objc_retainBlock(v14);
  if (backgroundCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000393C;
    v10[3] = &unk_100028D70;
    v10[4] = self;
    v11 = backgroundCopy;
    v12 = v8;
    [(CloudTabStore *)self _waitForInitialCloudKitFetchToComplete:v10];
  }

  else
  {
    v9 = sub_1000144F8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Saving iCloud Tabs when entering background because tabs are nil", buf, 2u);
    }

    [(CloudTabStore *)self saveCurrentDeviceCloudTabs:0];
    (v8[2])(v8);
  }
}

- (void)_saveCurrentDeviceCloudTabs:(id)tabs syncCompletionHandler:(id)handler
{
  tabsCopy = tabs;
  handlerCopy = handler;
  if (([(CloudTabStore *)self syncAgentIsAvailable]& 1) == 0)
  {
    v8 = sub_1000144F8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001637C();
      if (!handlerCopy)
      {
        goto LABEL_8;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_8;
    }

    handlerCopy[2](handlerCopy, 0);
    goto LABEL_8;
  }

  if (![(CloudTabStore *)self canSaveCloudTabsForCurrentDevice])
  {

    tabsCopy = 0;
  }

  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003CCC;
  v9[3] = &unk_100028D98;
  objc_copyWeak(&v12, &location);
  tabsCopy = tabsCopy;
  v10 = tabsCopy;
  v11 = handlerCopy;
  [(CloudTabStore *)self _waitForInitialCloudKitFetchToComplete:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
LABEL_8:
}

- (void)_saveCurrentDeviceCloudTabsNow:(id)now syncCompletionHandler:(id)handler
{
  nowCopy = now;
  handlerCopy = handler;
  dictionaryRepresentationOfCurrentDeviceInCloudKit = [(CloudTabStore *)self dictionaryRepresentationOfCurrentDeviceInCloudKit];
  if (dictionaryRepresentationOfCurrentDeviceInCloudKit)
  {
LABEL_2:
    v9 = +[WBUFeatureManager accessLevel]== 2;
    v10 = objc_alloc_init(WBSCloudTabDeviceParameters);
    v11 = +[WBSDevice currentDevice];
    userAssignedName = [v11 userAssignedName];
    [v10 setDeviceName:userAssignedName];

    v13 = +[NSDate date];
    [v10 setLastModified:v13];

    [v10 setTabs:nowCopy];
    [v10 setEphemeralDevice:v9];
    v14 = +[WBSDevice currentDevice];
    deviceTypeIdentifier = [v14 deviceTypeIdentifier];
    [v10 setDeviceTypeIdentifier:deviceTypeIdentifier];

    dictionaryRepresentation = [v10 dictionaryRepresentation];
    v17 = [dictionaryRepresentation objectForKey:@"DeviceName"];
    v18 = [dictionaryRepresentationOfCurrentDeviceInCloudKit objectForKey:@"DeviceName"];
    if (-[CloudTabStore tabArrayOfDeviceFromDictionary:isEqualToOtherDeviceTabsFromDictionary:includingLastViewedTime:](self, "tabArrayOfDeviceFromDictionary:isEqualToOtherDeviceTabsFromDictionary:includingLastViewedTime:", dictionaryRepresentation, dictionaryRepresentationOfCurrentDeviceInCloudKit, 0) && [v17 isEqual:v18])
    {
      if ([(CloudTabStore *)self tabArrayOfDeviceFromDictionary:dictionaryRepresentation isEqualToOtherDeviceTabsFromDictionary:dictionaryRepresentationOfCurrentDeviceInCloudKit includingLastViewedTime:1])
      {
        v19 = 86400.0;
      }

      else
      {
        v35.receiver = self;
        v35.super_class = CloudTabStore;
        syncedCloudTabDevices = [(CloudTabStore *)&v35 syncedCloudTabDevices];
        v26 = [syncedCloudTabDevices count] > 1;

        v19 = dbl_10001CB40[v26];
      }

      v27 = [dictionaryRepresentation objectForKey:@"LastModified"];
      v28 = [dictionaryRepresentationOfCurrentDeviceInCloudKit objectForKey:@"LastModified"];
      if (v28)
      {
        [v27 timeIntervalSinceDate:v28];
        if (v29 < v19)
        {
          if (handlerCopy)
          {
            handlerCopy[2](handlerCopy, 0);
          }

          goto LABEL_23;
        }
      }
    }

    v30 = +[NSUserDefaults safari_browserDefaults];
    v31 = [nowCopy count];
    [v30 setInteger:v31 forKey:_SFCloudTabsPreviousSyncUpTabCountKey];

    v32 = +[NSUserDefaults safari_browserDefaults];
    v33 = +[NSDate date];
    [v32 safari_setDate:v33 forKey:_SFCloudTabsPreviousSyncUpDateKey];

    [(CloudTabStore *)self saveCurrentCloudTabDeviceDictionaryToCloudKit:dictionaryRepresentation completionHandler:handlerCopy];
LABEL_23:

    goto LABEL_24;
  }

  currentDeviceIsRegisteredInCloudKit = [(CloudTabStore *)self currentDeviceIsRegisteredInCloudKit];
  if (nowCopy)
  {
    allSyncedCloudTabDevices = [(CloudTabStore *)self allSyncedCloudTabDevices];
    v22 = [allSyncedCloudTabDevices count];

    v23 = sub_1000144F8();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v39 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Synced cloud tab devices count when saving: %{public}lu", buf, 0xCu);
    }

    if (v22)
    {
      [(CloudTabStore *)self _removeConflictingDevice];
      goto LABEL_2;
    }

    v34 = sub_1000144F8();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349312;
      v39 = 0;
      v40 = 1026;
      v41 = currentDeviceIsRegisteredInCloudKit;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "No devices saved, %{public}lu tabs to sync up, CK device registration state: %{public}d", buf, 0x12u);
    }

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100004208;
    v36[3] = &unk_100028D20;
    v37 = handlerCopy;
    [(CloudTabStore *)self _forceFetchAllCloudTabDevicesWithCompletion:v36];
  }

  else
  {
    v24 = sub_1000144F8();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      LODWORD(v39) = currentDeviceIsRegisteredInCloudKit;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "No previous device or cloud tabs to sync up, CK device registration state: %{public}d", buf, 8u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

LABEL_24:
}

- (void)_forceFetchAllCloudTabDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(CloudTabStore *)self cloudTabsAreEnabled])
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = WBSDateOfLastForcedFetchOfCloudTabsKey;
    v7 = [v5 safari_dateForKey:WBSDateOfLastForcedFetchOfCloudTabsKey];
    v8 = v7;
    if (v7)
    {
      [v7 timeIntervalSinceNow];
      v10 = v9 > -604800.0;
    }

    else
    {
      v10 = 1;
    }

    v12 = WBSDebugForceFetchCloudTabsOnceKey;
    v13 = [v5 BOOLForKey:WBSDebugForceFetchCloudTabsOnceKey];
    if (v13)
    {
      v13 = +[WBSFeatureAvailability isInternalInstall];
    }

    if ((v10 | v13))
    {
      v14 = +[NSDate date];
      [v5 safari_setDate:v14 forKey:v6];

      [v5 removeObjectForKey:v12];
      v15 = sub_1000144F8();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Force fetching all cloud tabs", buf, 2u);
      }

      self->_hasInitiatedFetchOfCloudKitDataAtLeastOnce = 0;
      self->_hasCompletedFetchOfCloudKitDataAtLeastOnce = 0;
      [(CloudTabStore *)self _setCloudKitDataNeedsFetching:1];
      v16 = +[WBSSafariBookmarksSyncAgentProxy sharedProxy];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000044C0;
      v18[3] = &unk_100028BD8;
      v18[4] = self;
      v19 = completionCopy;
      [v16 clearServerChangeTokenWithCompletionHandler:v18];
    }

    else
    {
      v17 = sub_1000144F8();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Skipping force fetch since attempted recently", buf, 2u);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }
  }

  else
  {
    v11 = sub_1000144F8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Skipping force fetch since cloud tabs disabled", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (BOOL)tabArrayOfDeviceFromDictionary:(id)dictionary isEqualToOtherDeviceTabsFromDictionary:(id)fromDictionary includingLastViewedTime:(BOOL)time
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000047F4;
  v15[3] = &unk_100028E60;
  timeCopy = time;
  fromDictionaryCopy = fromDictionary;
  dictionaryCopy = dictionary;
  v8 = objc_retainBlock(v15);
  v9 = [dictionaryCopy objectForKeyedSubscript:@"Tabs"];

  v10 = (v8[2])(v8, v9);
  v11 = [fromDictionaryCopy objectForKeyedSubscript:@"Tabs"];

  v12 = (v8[2])(v8, v11);
  v13 = [v10 isEqual:v12];

  return v13;
}

- (void)saveCurrentDeviceTabsFromBrowserState:(id)state syncCompletionHandler:(id)handler
{
  handlerCopy = handler;
  windowStates = [state windowStates];
  if ([windowStates count])
  {
    v31 = +[NSMutableArray array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = windowStates;
    v28 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v28)
    {
      v26 = handlerCopy;
      v27 = *v38;
      selfCopy = self;
      v25 = windowStates;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v37 + 1) + 8 * i);
          localTabGroup = [v32 localTabGroup];
          if (localTabGroup)
          {
            v29 = localTabGroup;
            v30 = i;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            allTabs = [localTabGroup allTabs];
            v11 = [allTabs countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v34;
              do
              {
                for (j = 0; j != v12; j = j + 1)
                {
                  if (*v34 != v13)
                  {
                    objc_enumerationMutation(allTabs);
                  }

                  v15 = *(*(&v33 + 1) + 8 * j);
                  v16 = [v15 url];
                  if (v16)
                  {
                    uuid = [v15 uuid];
                    if ([uuid length])
                    {
                      v18 = [[NSUUID alloc] initWithUUIDString:uuid];
                      if (v18)
                      {
                        v19 = [[WBSCloudTabParameters alloc] initWithURL:v16];
                        [v19 setUuid:v18];
                        title = [v15 title];
                        [v19 setTitle:title];

                        [v19 setShowingReader:{objc_msgSend(v15, "isShowingReader")}];
                        sceneID = [v32 sceneID];
                        [v19 setSceneID:sceneID];

                        [v15 lastViewedTime];
                        [v19 setLastViewedTime:?];
                        v22 = [[WBSCloudTab alloc] initWithParameters:v19];
                        if (v22)
                        {
                          [v31 addObject:v22];
                        }
                      }
                    }
                  }
                }

                v12 = [allTabs countByEnumeratingWithState:&v33 objects:v41 count:16];
              }

              while (v12);
            }

            windowStates = v25;
            handlerCopy = v26;
            self = selfCopy;
            localTabGroup = v29;
            i = v30;
          }
        }

        v28 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v28);
    }

    if ([v31 count])
    {
      [(CloudTabStore *)self _saveCurrentDeviceCloudTabs:v31 syncCompletionHandler:handlerCopy];
    }

    else
    {
      [(CloudTabStore *)self _clearTabsForCurrentDeviceWithSyncCompletionHandler:handlerCopy];
    }
  }

  else
  {
    [(CloudTabStore *)self _clearTabsForCurrentDeviceWithSyncCompletionHandler:handlerCopy];
  }
}

- (BOOL)cloudTabsAreEnabled
{
  if (+[WBUFeatureManager accessLevel]== 2)
  {
    return 1;
  }

  v3 = +[NSUserDefaults safari_browserDefaults];
  v4 = [v3 BOOLForKey:@"CloudTabsEnabled"];

  return v4;
}

- (void)didGetCachedDevicesFromCloudKitForCloudTabStore:(id)store
{
  v4 = objc_alloc_init(WBSScopeExitHandler);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004DD8;
  v6[3] = &unk_100028BB0;
  v6[4] = self;
  [v4 setHandler:v6];
  if ([(CloudTabStore *)self syncAgentIsAvailable])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained cloudTabStoreDidGetCachedDevicesFromCloudKit:self];
  }
}

- (void)didUpdateDevicesAndCloseRequestsFromCloudKitForCloudTabStore:(id)store error:(id)error
{
  errorCopy = error;
  self->_hasCompletedFetchOfCloudKitDataAtLeastOnce = 1;
  if (([(CloudTabStore *)self syncAgentIsAvailable]& 1) != 0)
  {
    self->_didAttemptToCloseAtLeastOneTab = 0;
    [(CloudTabStore *)self handleCloseTabRequestsFromCloudKit];
    [(CloudTabStore *)self _notifyCloudTabStoreDidUpdate];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained cloudTabStore:self didUpdateDevicesFromCloudKitWithError:errorCopy];
    if (self->_didAttemptToCloseAtLeastOneTab)
    {
      [WeakRetained saveCloudTabsUsingCloudTabStore:self];
    }

    [(CloudTabStore *)self _callFetchCloudKitDataCompletionHandlers];
  }

  else
  {
    [(CloudTabStore *)self _callFetchCloudKitDataCompletionHandlers];
  }
}

- (void)_closeRequestedTabIfPossible:(id)possible
{
  possibleCopy = possible;
  v5 = sub_1000144F8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    tabUUID = [possibleCopy tabUUID];
    uUIDString = [tabUUID UUIDString];
    v11 = 138543362;
    v12 = uUIDString;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting to close tab with UUID %{public}@", &v11, 0xCu);
  }

  v9 = sub_1000144F8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000163B0(v9, possibleCopy);
  }

  self->_didAttemptToCloseAtLeastOneTab = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cloudTabStore:self didReceiveTabCloseRequest:possibleCopy];
}

- (CloudTabStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end