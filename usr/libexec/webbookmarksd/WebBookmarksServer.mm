@interface WebBookmarksServer
+ (id)sharedServer;
- (BOOL)_connectionHasRequiredEntitlementForImportOrExport:(id)a3;
- (BOOL)_exportsContentOfBookmarkFolder:(id)a3 collection:(id)a4 writer:(id)a5 error:(id *)a6;
- (BOOL)_isCloudHistoryEnabled;
- (BOOL)clientIsDefaultBrowserEntitledWithConnection:(id)a3 message:(id)a4;
- (WebBookmarksServer)init;
- (id)_newWebsiteDataStore;
- (void)_addToReadingListWithMessage:(id)a3 forConnection:(id)a4;
- (void)_clearAllCloudTabDevicesForConnection:(id)a3;
- (void)_clearAllHistory;
- (void)_clearAllScribbleEdits;
- (void)_clearCloudTabsForCurrentDeviceForConnection:(id)a3;
- (void)_clearHistoryVisitsAddedAfterDate:(id)a3 beforeDate:(id)a4 profiles:(id)a5 options:(int64_t)a6 clearAllSpotlightHistoryForProfile:(BOOL)a7;
- (void)_connection:(id)a3 clearAllSafariHistoryWithMessage:(id)a4;
- (void)_connection:(id)a3 clearHistoryWithMessage:(id)a4;
- (void)_connection:(id)a3 computeNumberOfItemsToBeImportedWithMessage:(id)a4;
- (void)_connection:(id)a3 deleteSafariAllWebSecurityOriginWithMessage:(id)a4;
- (void)_connection:(id)a3 deleteSafariPersistentURLCacheStorage:(id)a4;
- (void)_connection:(id)a3 deleteSafariWebSecurityOriginWithMessage:(id)a4;
- (void)_connection:(id)a3 didToggleCloudTabsWithMessage:(id)a4;
- (void)_connection:(id)a3 exportBookmarksWithMessage:(id)a4;
- (void)_connection:(id)a3 exportHistoryWithMessage:(id)a4;
- (void)_connection:(id)a3 getNumberOfHistorySitesToBeExportedWithMessage:(id)a4;
- (void)_connection:(id)a3 getSafariDataUsageSummaryWithMessage:(id)a4;
- (void)_connection:(id)a3 getSafariWebDataUsageWithMessage:(id)a4;
- (void)_connection:(id)a3 importBookmarksWithMessage:(id)a4;
- (void)_connection:(id)a3 importChromeExtensionsWithMessage:(id)a4;
- (void)_connection:(id)a3 importChromeHistoryWithMessage:(id)a4;
- (void)_connection:(id)a3 importCreditCardsWithMessage:(id)a4;
- (void)_connection:(id)a3 importExtensionsWithMessage:(id)a4;
- (void)_connection:(id)a3 importHistoryWithMessage:(id)a4;
- (void)_connection:(id)a3 openSafariExportSettingsWithMessage:(id)a4;
- (void)_connection:(id)a3 scanImportURLsWithMessage:(id)a4;
- (void)_deleteDataForWebsiteDataRecord:(id)a3 matchingWebKitWebsiteDataRecords:(id)a4 websiteDataStore:(id)a5 completion:(id)a6;
- (void)_deleteDataForWebsiteDataRecord:(id)a3 websiteDataStore:(id)a4 completion:(id)a5;
- (void)_exportHistoryToURL:(id)a3 sandboxExtension:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6;
- (void)_generateWebsiteDataRecordsWithCompletion:(id)a3;
- (void)_getSafariDataUsageSummaryWithWebsiteDataStore:(id)a3 completion:(id)a4;
- (void)_importChromeExtensionsFromFileHandle:(id)a3 connection:(id)a4 completionHandler:(id)a5;
- (void)_importCreditCardsFromFileHandle:(id)a3 connection:(id)a4 completionHandler:(id)a5;
- (void)_importExtensionsFromFileHandle:(id)a3 connection:(id)a4 completionHandler:(id)a5;
- (void)_importHistoryFromFileHandle:(id)a3 ageLimit:(double)a4 profileIdentifier:(id)a5 forChrome:(BOOL)a6 completionHandler:(id)a7;
- (void)_logWarningWithMessage:(id)a3 connection:(id)a4;
- (void)_performBlock:(id)a3 forAllDataStoresNeededForProfileIdentifiers:(id)a4 completion:(id)a5;
- (void)_performBlock:(id)a3 forDataStores:(id)a4 completion:(id)a5;
- (void)_scanImportURLs:(id)a3 sandboxExtensions:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)reportSevereError:(id)a3 completionHandler:(id)a4;
@end

@implementation WebBookmarksServer

- (WebBookmarksServer)init
{
  v95.receiver = self;
  v95.super_class = WebBookmarksServer;
  v2 = [(WebBookmarksServer *)&v95 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = sub_100014400();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Initializing WebBookmarksServer", buf, 2u);
    }

    v4 = dispatch_queue_create("com.apple.webbookmarksd.WebsiteDataUsageTaskQueue", 0);
    websiteDataUsageTaskQueue = v2->_websiteDataUsageTaskQueue;
    v2->_websiteDataUsageTaskQueue = v4;

    v6 = dispatch_queue_create("com.apple.webbookmarksd.ProfilesWebsiteDataUsageTaskQueue", 0);
    profilesWebsiteDataUsageTaskQueue = v2->_profilesWebsiteDataUsageTaskQueue;
    v2->_profilesWebsiteDataUsageTaskQueue = v6;

    v8 = objc_alloc_init(WBUFeatureManager);
    featureManager = v2->_featureManager;
    v2->_featureManager = v8;

    v10 = objc_alloc_init(WebBookmarksLockCoordinator);
    bookmarkLockCoordinator = v2->_bookmarkLockCoordinator;
    v2->_bookmarkLockCoordinator = v10;

    if ([(WBUFeatureManager *)v2->_featureManager isReadingListAvailable])
    {
      v12 = objc_alloc_init(WebBookmarksServerReadingListHandler);
      readingListHandler = v2->_readingListHandler;
      v2->_readingListHandler = v12;
    }

    v14 = [WebBookmarksXPCListener alloc];
    v15 = [v14 initListenerForMachService:kWebBookmarksdServiceName];
    listener = v2->_listener;
    v2->_listener = v15;

    [(WebBookmarksXPCListener *)v2->_listener setDelegate:v2];
    v17 = v2->_listener;
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_1000082B0;
    v91[3] = &unk_1000291F0;
    objc_copyWeak(&v92, &location);
    [(WebBookmarksXPCListener *)v17 setHandler:v91 forMessageNamed:kWebBookmarksAddToReadingListMessageName];
    v18 = v2->_listener;
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_100008328;
    v89[3] = &unk_1000291F0;
    objc_copyWeak(&v90, &location);
    [(WebBookmarksXPCListener *)v18 setHandler:v89 forMessageNamed:kWebBookmarksClearAllCloudTabDevicesMessageName];
    v19 = v2->_listener;
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_100008384;
    v87[3] = &unk_1000291F0;
    objc_copyWeak(&v88, &location);
    [(WebBookmarksXPCListener *)v19 setHandler:v87 forMessageNamed:kWebBookmarksClearCloudTabsForCurrentDeviceMessageName];
    v20 = v2->_listener;
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_1000083E0;
    v85[3] = &unk_1000291F0;
    objc_copyWeak(&v86, &location);
    [(WebBookmarksXPCListener *)v20 setHandler:v85 forMessageNamed:kWebBookmarksDidToggleCloudTabsMessageName];
    v21 = v2->_listener;
    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_100008458;
    v83[3] = &unk_1000291F0;
    objc_copyWeak(&v84, &location);
    [(WebBookmarksXPCListener *)v21 setHandler:v83 forMessageNamed:kWebBookmarksGetSafariWebDataUsageMessageName];
    v22 = v2->_listener;
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_1000084D0;
    v81[3] = &unk_1000291F0;
    objc_copyWeak(&v82, &location);
    [(WebBookmarksXPCListener *)v22 setHandler:v81 forMessageNamed:kWebBookmarksDeleteAllSafariWebSecurityOriginsMessageName];
    v23 = v2->_listener;
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_100008548;
    v79[3] = &unk_1000291F0;
    objc_copyWeak(&v80, &location);
    [(WebBookmarksXPCListener *)v23 setHandler:v79 forMessageNamed:kWebBookmarksDeleteSafariWebSecurityOriginMessageName];
    v24 = v2->_listener;
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_1000085C0;
    v77[3] = &unk_1000291F0;
    objc_copyWeak(&v78, &location);
    [(WebBookmarksXPCListener *)v24 setHandler:v77 forMessageNamed:kWebBookmarksDeleteSafariPersistentURLCacheStorageMessageName];
    v25 = v2->_listener;
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_100008638;
    v75[3] = &unk_1000291F0;
    objc_copyWeak(&v76, &location);
    [(WebBookmarksXPCListener *)v25 setHandler:v75 forMessageNamed:kWebBookmarksGetSafariDataUsageSummaryMessageName];
    v26 = v2->_listener;
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_1000086B0;
    v73[3] = &unk_1000291F0;
    objc_copyWeak(&v74, &location);
    [(WebBookmarksXPCListener *)v26 setHandler:v73 forMessageNamed:kWebBookmarksClearHistoryMessageName];
    v27 = v2->_listener;
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_100008728;
    v71[3] = &unk_1000291F0;
    objc_copyWeak(&v72, &location);
    [(WebBookmarksXPCListener *)v27 setHandler:v71 forMessageNamed:kWebBookmarksExportBookmarksMessageName];
    v28 = v2->_listener;
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_1000087A0;
    v69[3] = &unk_1000291F0;
    objc_copyWeak(&v70, &location);
    [(WebBookmarksXPCListener *)v28 setHandler:v69 forMessageNamed:kWebBookmarksImportBookmarksMessageName];
    v29 = v2->_listener;
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100008818;
    v67[3] = &unk_1000291F0;
    objc_copyWeak(&v68, &location);
    [(WebBookmarksXPCListener *)v29 setHandler:v67 forMessageNamed:kWebBookmarksExportHistoryMessageName];
    v30 = v2->_listener;
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_100008890;
    v65[3] = &unk_1000291F0;
    objc_copyWeak(&v66, &location);
    [(WebBookmarksXPCListener *)v30 setHandler:v65 forMessageNamed:kWebBookmarksGetNumberOfHistorySitesToBeExportedMessageName];
    v31 = v2->_listener;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_100008908;
    v63[3] = &unk_1000291F0;
    objc_copyWeak(&v64, &location);
    [(WebBookmarksXPCListener *)v31 setHandler:v63 forMessageNamed:kWebBookmarksScanImportURLsMessageName];
    v32 = v2->_listener;
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_100008980;
    v61[3] = &unk_1000291F0;
    objc_copyWeak(&v62, &location);
    [(WebBookmarksXPCListener *)v32 setHandler:v61 forMessageNamed:kWebBookmarksImportChromeExtensionsMessageName];
    v33 = v2->_listener;
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_1000089F8;
    v59[3] = &unk_1000291F0;
    objc_copyWeak(&v60, &location);
    [(WebBookmarksXPCListener *)v33 setHandler:v59 forMessageNamed:kWebBookmarksImportHistoryMessageName];
    v34 = v2->_listener;
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100008A70;
    v57[3] = &unk_1000291F0;
    objc_copyWeak(&v58, &location);
    [(WebBookmarksXPCListener *)v34 setHandler:v57 forMessageNamed:kWebBookmarksImportChromeHistoryMessageName];
    v35 = v2->_listener;
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_100008AE8;
    v55[3] = &unk_1000291F0;
    objc_copyWeak(&v56, &location);
    [(WebBookmarksXPCListener *)v35 setHandler:v55 forMessageNamed:kWebBookmarksImportCreditCardsMessageName];
    v36 = v2->_listener;
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100008B60;
    v53[3] = &unk_1000291F0;
    objc_copyWeak(&v54, &location);
    [(WebBookmarksXPCListener *)v36 setHandler:v53 forMessageNamed:kWebBookmarksImportExtensionsMessageName];
    v37 = v2->_listener;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100008BD8;
    v51[3] = &unk_1000291F0;
    objc_copyWeak(&v52, &location);
    [(WebBookmarksXPCListener *)v37 setHandler:v51 forMessageNamed:kWebBookmarksComputeNumberOfItemsToBeImportedMessageName];
    v38 = v2->_listener;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100008C50;
    v49[3] = &unk_1000291F0;
    objc_copyWeak(&v50, &location);
    [(WebBookmarksXPCListener *)v38 setHandler:v49 forMessageNamed:kWebBookmarksOpenSafariExportSettings];
    v39 = v2->_listener;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100008CC8;
    v47[3] = &unk_1000291F0;
    objc_copyWeak(&v48, &location);
    [(WebBookmarksXPCListener *)v39 setHandler:v47 forMessageNamed:kWebBookmarksClearHSTSSuperCookiesMessageName];
    [(WebBookmarksXPCListener *)v2->_listener setHandler:&stru_100029230 forMessageNamed:webBookmarksScheduleBookmarksDatabaseMaintenanceTask];
    [(WebBookmarksXPCListener *)v2->_listener setHandler:&stru_100029250 forMessageNamed:webBookmarksScheduleBookmarksDatabaseMigrationTask];
    [(WebBookmarksXPCListener *)v2->_listener setHandler:&stru_100029270 forMessageNamed:webBookmarksPasswordIconsCleanupMessageName];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100008D64;
    v45[3] = &unk_100029298;
    v40 = v2;
    v46 = v40;
    v41 = [WBSDiagnosticStateCollector registeredStateCollectorWithLogLabel:@"Website Data State" payloadProvider:v45];
    stateCollector = v40->_stateCollector;
    v40->_stateCollector = v41;

    v43 = v40;
    objc_destroyWeak(&v48);
    objc_destroyWeak(&v50);
    objc_destroyWeak(&v52);
    objc_destroyWeak(&v54);
    objc_destroyWeak(&v56);
    objc_destroyWeak(&v58);
    objc_destroyWeak(&v60);
    objc_destroyWeak(&v62);
    objc_destroyWeak(&v64);
    objc_destroyWeak(&v66);
    objc_destroyWeak(&v68);
    objc_destroyWeak(&v70);
    objc_destroyWeak(&v72);
    objc_destroyWeak(&v74);
    objc_destroyWeak(&v76);
    objc_destroyWeak(&v78);
    objc_destroyWeak(&v80);
    objc_destroyWeak(&v82);
    objc_destroyWeak(&v84);
    objc_destroyWeak(&v86);
    objc_destroyWeak(&v88);
    objc_destroyWeak(&v90);
    objc_destroyWeak(&v92);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = WebBookmarksServer;
  [(WebBookmarksServer *)&v4 dealloc];
}

+ (id)sharedServer
{
  if (qword_10002E928 != -1)
  {
    sub_1000164E0();
  }

  v3 = qword_10002E920;

  return v3;
}

- (void)_addToReadingListWithMessage:(id)a3 forConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(WBUFeatureManager *)self->_featureManager isReadingListAvailable]& 1) != 0)
  {
    v8 = +[LSApplicationWorkspace defaultWorkspace];
    v9 = [v8 applicationIsInstalled:safariMobileApplicationBundleIdentifier];

    if (v9)
    {
      [(WebBookmarksServerReadingListHandler *)self->_readingListHandler handleAddToReadingListWithMessage:v6 forConnection:v7];
    }

    else
    {
      v11 = sub_1000146E8();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100016530();
      }
    }
  }

  else
  {
    v10 = sub_1000146E8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000164F4();
    }
  }
}

- (void)_clearAllCloudTabDevicesForConnection:(id)a3
{
  featureManager = self->_featureManager;
  v14 = a3;
  if (([(WBUFeatureManager *)featureManager isCloudTabsAvailable]& 1) == 0)
  {
    [(WebBookmarksServer *)self _logWarningWithMessage:@"Ignoring request to clear cloud tab devices connection:because cloud tabs feature is currently disabled.", v14];
    goto LABEL_5;
  }

  v5 = [(CloudTabStore *)v14 hasBoolEntitlement:@"com.apple.private.safari.cloudtabs"];

  if (v5)
  {
    v14 = objc_alloc_init(CloudTabStore);
    [(CloudTabStore *)v14 _clearAllDevices];
LABEL_5:

    return;
  }

  v6 = sub_1000147E0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10001656C(v6, v7, v8, v9, v10, v11, v12, v13);
  }
}

- (void)_clearCloudTabsForCurrentDeviceForConnection:(id)a3
{
  featureManager = self->_featureManager;
  v14 = a3;
  if (([(WBUFeatureManager *)featureManager isCloudTabsAvailable]& 1) == 0)
  {
    [(WebBookmarksServer *)self _logWarningWithMessage:@"Ignoring request to clear cloud tabs on this device connection:because cloud tabs feature is currently disabled", v14];
    goto LABEL_5;
  }

  v5 = [(CloudTabStore *)v14 hasBoolEntitlement:@"com.apple.private.safari.cloudtabs"];

  if (v5)
  {
    v14 = objc_alloc_init(CloudTabStore);
    [(CloudTabStore *)v14 clearTabsForCurrentDevice];
LABEL_5:

    return;
  }

  v6 = sub_1000147E0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10001656C(v6, v7, v8, v9, v10, v11, v12, v13);
  }
}

- (void)_connection:(id)a3 didToggleCloudTabsWithMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(WBUFeatureManager *)self->_featureManager isCloudTabsAvailable]& 1) != 0)
  {
    if ([v6 hasBoolEntitlement:@"com.apple.private.safari.cloudtabs"])
    {
      v8 = xpc_dictionary_get_BOOL(v7, kWebBookmarksEnabledKey);
      v9 = xpc_dictionary_get_BOOL(v7, kWebBookmarksTerminateAfterUpdatingKey);
      v10 = +[NSUserDefaults safari_browserDefaults];
      [v10 setBool:v8 forKey:@"CloudTabsEnabled"];
      [v10 synchronize];
      v11 = objc_alloc_init(CloudTabStore);
      [(CloudTabStore *)v11 synchronizeCloudTabDevices];
      if (v8 && [(CloudTabStore *)v11 canSaveCloudTabsForCurrentDevice])
      {
        v12 = [WBTabCollection alloc];
        v13 = +[WBCollectionConfiguration safariTabCollectionConfiguration];
        v14 = [v12 initWithConfiguration:v13 openDatabase:1];

        v15 = [v14 browserState];
        [(CloudTabStore *)v11 saveCurrentDeviceTabsFromBrowserState:v15];
      }

      else
      {
        [(CloudTabStore *)v11 clearTabsForCurrentDevice];
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CloudTabStorePrefChangedNotification", 0, 0, 0);
      if (v9)
      {
        exit(0);
      }
    }

    else
    {
      v16 = sub_1000147E0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10001656C(v16, v17, v18, v19, v20, v21, v22, v23);
      }
    }
  }

  else
  {
    [(WebBookmarksServer *)self _logWarningWithMessage:@"Ignoring request to toggle cloud tabs connection:because cloud tabs feature is currently disabled", v6];
  }
}

- (id)_newWebsiteDataStore
{
  v2 = objc_alloc_init(_WKWebsiteDataStoreConfiguration);
  v3 = sub_1000114E4();
  v4 = [v3 URLByAppendingPathComponent:@"IndexedDB" isDirectory:1];

  [v2 _setIndexedDBDatabaseDirectory:v4];
  v5 = sub_100013C40();
  v6 = [NSURL fileURLWithPath:v5 isDirectory:1];
  v7 = [v6 URLByAppendingPathComponent:@"Cookies/Cookies.binarycookies" isDirectory:0];

  [v2 _setCookieStorageFile:v7];
  v8 = [WKWebsiteDataStore safari_dataStoreWithConfiguration:v2];
  v9 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
  [v8 _setResourceLoadStatisticsEnabled:{objc_msgSend(v9, "webui_trackerProtectionEnabled")}];

  return v8;
}

- (void)_generateWebsiteDataRecordsWithCompletion:(id)a3
{
  v4 = a3;
  +[NSMutableDictionary dictionary];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100009604;
  v5 = v14[3] = &unk_1000292E0;
  v15 = v5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100009768;
  v12[3] = &unk_100029330;
  v12[4] = self;
  v13 = objc_retainBlock(v14);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009AA8;
  v9[3] = &unk_100028BD8;
  v10 = v5;
  v11 = v4;
  v6 = v4;
  v7 = v5;
  v8 = v13;
  [(WebBookmarksServer *)self _performBlock:v12 forAllDataStoresNeededForProfileIdentifiers:0 completion:v9];
}

- (void)_connection:(id)a3 getSafariWebDataUsageWithMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"];
  v9 = sub_1000147E0();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Scheduling Fetch data usage", buf, 2u);
    }

    xpc_transaction_begin();
    websiteDataUsageTaskQueue = self->_websiteDataUsageTaskQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009D28;
    block[3] = &unk_100029178;
    block[4] = self;
    v20 = v7;
    v21 = v6;
    dispatch_async(websiteDataUsageTaskQueue, block);
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10001656C(v10, v12, v13, v14, v15, v16, v17, v18);
  }
}

- (void)_deleteDataForWebsiteDataRecord:(id)a3 matchingWebKitWebsiteDataRecords:(id)a4 websiteDataStore:(id)a5 completion:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = +[WKWebsiteDataStore safari_allDataTypes];
  v12 = sub_1000147E0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    *buf = 134217984;
    v24 = [v8 count];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deleting %zu records", buf, 0xCu);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000A2E4;
  v18[3] = &unk_100029408;
  v19 = v8;
  v20 = v9;
  v21 = v11;
  v22 = v10;
  v14 = v11;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  [v15 removeDataOfTypes:v14 forDataRecords:v16 completionHandler:v18];
}

- (void)_performBlock:(id)a3 forAllDataStoresNeededForProfileIdentifiers:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSMutableArray array];
  if (v9 && ![v9 containsObject:WBAllWebsiteDataProfileIdentifier])
  {
    v27 = v10;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = [v9 allObjects];
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      v22 = WBSDefaultProfileIdentifier;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v28 + 1) + 8 * i);
          if ([v24 isEqualToString:v22])
          {
            v25 = [(WebBookmarksServer *)self _newWebsiteDataStore];
          }

          else
          {
            v25 = [WKWebsiteDataStore safari_dataStoreWithoutCachingForProfileWithIdentifier:v24];
          }

          v26 = v25;
          [v11 addObject:v25];
        }

        v20 = [v18 countByEnumeratingWithState:&v28 objects:v41 count:16];
      }

      while (v20);
    }

    v10 = v27;
    [(WebBookmarksServer *)self _performBlock:v8 forDataStores:v11 completion:v27];
  }

  else
  {
    v12 = [(WebBookmarksServer *)self _newWebsiteDataStore];
    [v11 addObject:v12];

    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10000A75C;
    v38[3] = &unk_100029430;
    v14 = v11;
    v39 = v14;
    v15 = v13;
    v40 = v15;
    [WKWebsiteDataStore _fetchAllIdentifiers:v38];
    profilesWebsiteDataUsageTaskQueue = self->_profilesWebsiteDataUsageTaskQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A89C;
    block[3] = &unk_100029480;
    v33 = v15;
    v34 = self;
    v36 = v8;
    v35 = v14;
    v37 = v10;
    v17 = v15;
    dispatch_async(profilesWebsiteDataUsageTaskQueue, block);
  }
}

- (void)_performBlock:(id)a3 forDataStores:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v20 = a5;
  v9 = dispatch_group_create();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * v13);
        dispatch_group_enter(v9);
        v15 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
        [v14 _setResourceLoadStatisticsEnabled:{objc_msgSend(v15, "webui_trackerProtectionEnabled")}];

        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_10000AC28;
        v25[3] = &unk_100028BB0;
        v26 = v9;
        v7[2](v7, v14, v25);

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  profilesWebsiteDataUsageTaskQueue = self->_profilesWebsiteDataUsageTaskQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AC30;
  block[3] = &unk_100028BD8;
  v23 = v9;
  v24 = v20;
  v17 = v20;
  v18 = v9;
  dispatch_async(profilesWebsiteDataUsageTaskQueue, block);
}

- (void)_connection:(id)a3 deleteSafariWebSecurityOriginWithMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"])
  {
    xpc_transaction_begin();
    v8 = sub_10000AE2C(v7);
    [v6 sendMessage:v8];

    websiteDataUsageTaskQueue = self->_websiteDataUsageTaskQueue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000AE78;
    v18[3] = &unk_100029150;
    v19 = v7;
    v20 = self;
    dispatch_async(websiteDataUsageTaskQueue, v18);
  }

  else
  {
    v10 = sub_1000147E0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001656C(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }
}

- (void)_deleteDataForWebsiteDataRecord:(id)a3 websiteDataStore:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 domain];
  v12 = +[WKWebsiteDataStore safari_allDataTypes];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000B334;
  v17[3] = &unk_1000294F8;
  v18 = v11;
  v19 = self;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v11;
  [v14 fetchDataRecordsOfTypes:v12 completionHandler:v17];
}

- (void)_connection:(id)a3 deleteSafariAllWebSecurityOriginWithMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"];
  v9 = sub_1000147E0();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Deleting all website data records", buf, 2u);
    }

    v11 = xpc_dictionary_get_value(v7, kWebsiteProfileIdentifiersKey);
    v12 = v11;
    if (v11)
    {
      count = xpc_array_get_count(v11);
      v14 = +[NSMutableSet set];
      if (count)
      {
        for (i = 0; i != count; ++i)
        {
          v16 = [NSString stringWithUTF8String:xpc_array_get_string(v12, i)];
          [v14 addObject:v16];
        }
      }
    }

    else
    {
      v14 = 0;
    }

    if ([v14 count] == 1)
    {
      xpc_transaction_begin();
      v24 = sub_10000AE2C(v7);
      [v6 sendMessage:v24];

      websiteDataUsageTaskQueue = self->_websiteDataUsageTaskQueue;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10000B76C;
      v26[3] = &unk_100029150;
      v26[4] = self;
      v27 = v14;
      dispatch_async(websiteDataUsageTaskQueue, v26);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10001656C(v10, v17, v18, v19, v20, v21, v22, v23);
  }
}

- (void)_connection:(id)a3 deleteSafariPersistentURLCacheStorage:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"])
  {
    v7 = sub_10000AE2C(v6);
    [v5 sendMessage:v7];

    v8 = sub_1000147E0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Deleting persistent url cache storage", v18, 2u);
    }

    v9 = [[NSURLCache alloc] _initWithMemoryCapacity:0 diskCapacity:0x7FFFFFFFFFFFFFFFLL relativePath:@"com.apple.mobilesafari"];
    [v9 removeAllCachedResponses];
    _CFNetworkResetHSTSHosts();
  }

  else
  {
    v10 = sub_1000147E0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001656C(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }
}

- (void)_connection:(id)a3 getSafariDataUsageSummaryWithMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"];
  v9 = sub_1000147E0();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Querying data usage summary", buf, 2u);
    }

    xpc_transaction_begin();
    websiteDataUsageTaskQueue = self->_websiteDataUsageTaskQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000BFB0;
    block[3] = &unk_100029178;
    v20 = v7;
    v21 = self;
    v22 = v6;
    dispatch_async(websiteDataUsageTaskQueue, block);
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10001656C(v10, v12, v13, v14, v15, v16, v17, v18);
  }
}

- (void)_getSafariDataUsageSummaryWithWebsiteDataStore:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  v7 = +[WKWebsiteDataStore safari_allDataTypes];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000C3A0;
  v9[3] = &unk_1000295E8;
  v11 = v12;
  v8 = v6;
  v10 = v8;
  [v5 _fetchDataRecordsOfTypes:v7 withOptions:1 completionHandler:v9];

  _Block_object_dispose(v12, 8);
}

- (void)_connection:(id)a3 clearAllSafariHistoryWithMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"])
  {
    v8 = sub_10000AE2C(v7);
    [v6 sendMessage:v8];

    v9 = sub_100014574();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Clearing all history", v18, 2u);
    }

    [(WebBookmarksServer *)self _clearAllHistory];
    [(WebBookmarksServer *)self _clearAllScribbleEdits];
  }

  else
  {
    v10 = sub_1000147E0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001656C(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }
}

- (void)_clearAllScribbleEdits
{
  v2 = [WBSUserDefinedContentBlockerManager alloc];
  v3 = +[WBSUserDefinedContentBlockerSQLiteStore sharedStore];
  v4 = [v2 initWithDataStore:v3];

  [v4 resetDatabaseWithCompletionHandler:&stru_100029608];
}

- (void)_clearAllHistory
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000C86C;
  v5[3] = &unk_100029680;
  v6 = os_transaction_create();
  v7 = objc_alloc_init(WBSHistoryConnectionProxy);
  v8 = self;
  v3 = v7;
  v4 = v6;
  [v3 connectWithOptions:0 delegate:self completionHandler:v5];
}

- (void)_connection:(id)a3 clearHistoryWithMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"])
  {
    v8 = &CacheDeleteRegisterInfoCallbacks_ptr;
    v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:xpc_dictionary_get_double(v7, kWebsiteStartDateKey)];
    v29 = [NSDate dateWithTimeIntervalSinceReferenceDate:xpc_dictionary_get_double(v7, kWebsiteEndDateKey)];
    int64 = xpc_dictionary_get_int64(v7, kWebsiteOptionsKey);
    v28 = xpc_dictionary_get_BOOL(v7, kWebsiteClearAllSpotlightHistoryForProfileKey);
    v11 = xpc_dictionary_get_value(v7, kWebsiteProfileIdentifiersKey);
    v12 = v11;
    if (v11)
    {
      count = xpc_array_get_count(v11);
      v14 = objc_alloc_init(NSMutableSet);
      if (count)
      {
        for (i = 0; i != count; ++i)
        {
          v16 = [NSString stringWithUTF8String:xpc_array_get_string(v12, i)];
          [v14 addObject:v16];
        }

        v8 = &CacheDeleteRegisterInfoCallbacks_ptr;
      }
    }

    else
    {
      v14 = 0;
    }

    v25 = sub_10000AE2C(v7);
    [v6 sendMessage:v25];

    v26 = sub_100014574();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478595;
      v31 = v9;
      v32 = 2113;
      v33 = v29;
      v34 = 2113;
      v35 = v14;
      v36 = 2048;
      v37 = int64;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Clearing history; start date: %{private}@; end date: %{private}@; profiles: %{private}@; options: %zu", buf, 0x2Au);
    }

    [(WebBookmarksServer *)self _clearHistoryVisitsAddedAfterDate:v9 beforeDate:v29 profiles:v14 options:int64 clearAllSpotlightHistoryForProfile:v28];
    v27 = [v8[361] distantPast];

    if (v9 == v27)
    {
      [(WebBookmarksServer *)self _clearAllScribbleEdits];
    }
  }

  else
  {
    v17 = sub_1000147E0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10001656C(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }
}

- (void)_clearHistoryVisitsAddedAfterDate:(id)a3 beforeDate:(id)a4 profiles:(id)a5 options:(int64_t)a6 clearAllSpotlightHistoryForProfile:(BOOL)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = os_transaction_create();
  v16 = objc_alloc_init(WBSHistoryConnectionProxy);
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10000D2B8;
  v45[3] = &unk_100029570;
  v17 = v12;
  v46 = v17;
  v18 = objc_retainBlock(v45);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10000D3EC;
  v39[3] = &unk_1000296F8;
  v19 = v16;
  v40 = v19;
  v41 = self;
  v20 = v17;
  v42 = v20;
  v21 = v13;
  v43 = v21;
  v44 = a7;
  v22 = objc_retainBlock(v39);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10000D6FC;
  v36[3] = &unk_100029178;
  v36[4] = self;
  v23 = v19;
  v37 = v23;
  v24 = v15;
  v38 = v24;
  v25 = objc_retainBlock(v36);
  if (v8)
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10000D930;
    v33[3] = &unk_100029798;
    v34 = v22;
    v35 = v25;
    [v23 listDatabaseURLsWithCompletionHandler:v33];
    [(WebBookmarksServer *)self _performBlock:v18 forAllDataStoresNeededForProfileIdentifiers:0 completion:&stru_1000297B8];

    v27 = v34;
    goto LABEL_5;
  }

  if ([v14 count])
  {
    [(WebBookmarksServer *)self _performBlock:v18 forAllDataStoresNeededForProfileIdentifiers:v14 completion:&stru_1000297D8];
    v26 = [v14 allObjects];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10000DC34;
    v31[3] = &unk_100029770;
    v32 = v22;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000DD00;
    v29[3] = &unk_100028D20;
    v30 = v25;
    [v26 safari_enumerateAsynchronouslyOnQueue:&_dispatch_main_q enumerationBlock:v31 completionBlock:v29];

    v27 = v32;
LABEL_5:

    goto LABEL_6;
  }

  v28 = sub_100014574();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    sub_100016804();
  }

LABEL_6:
}

- (void)_connection:(id)a3 exportBookmarksWithMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WebBookmarksServer *)self _connectionHasRequiredEntitlementForImportOrExport:v6])
  {
    v8 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v7, kWebBookmarksExportBookmarksSandboxExtensionKey)];
    v9 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v7, kWebBookmarksExportBookmarksURLKey)];
    v10 = [NSURL URLWithString:v9];
    [v8 UTF8String];
    v11 = sandbox_extension_consume();
    if (v11 == -1)
    {
      v22 = sub_10001485C();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100016BC4(v22);
      }

      v23 = sub_10000AE2C(v7);
      [v6 sendMessage:v23];
    }

    else
    {
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10000E078;
      v30[3] = &unk_100029598;
      v33 = v11;
      v31 = v6;
      v32 = v7;
      v12 = objc_retainBlock(v30);
      v13 = +[WebBookmarkCollection safariBookmarkCollection];
      v26 = [v13 rootBookmark];
      v29 = 0;
      v14 = [[WBSNetscapeBookmarkFileWriter alloc] initWithURL:v10 error:&v29];
      v15 = v29;
      v16 = v15;
      if (!v14 || v15)
      {
        v24 = sub_100014400();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_100016B2C(v24);
        }
      }

      else
      {
        v28 = 0;
        v17 = [(WebBookmarksServer *)self _exportsContentOfBookmarkFolder:v26 collection:v13 writer:v14 error:&v28];
        v18 = v28;
        v16 = v18;
        if (!v17 || v18)
        {
          v25 = sub_100014400();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_100016B2C(v25);
          }
        }

        else
        {
          v27 = 0;
          v19 = [v14 finishWithError:&v27];
          v20 = v27;
          v16 = v20;
          if (!v19 || v20)
          {
            v21 = sub_100014400();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_100016B2C(v21);
            }
          }
        }
      }

      (v12[2])(v12);

      v23 = v31;
    }
  }
}

- (BOOL)_exportsContentOfBookmarkFolder:(id)a3 collection:(id)a4 writer:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  LOBYTE(v12) = 1;
  v29 = v10;
  v13 = [v10 listWithID:objc_msgSend(v9 skipOffset:"identifier") includeHidden:{0, 1}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [v13 bookmarkArray];
  v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    v27 = v13;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        if (![v18 isHidden] || (objc_msgSend(v18, "isReadingListFolder") & 1) != 0 || (objc_msgSend(v18, "isBookmarksBarFolder") & 1) != 0 || objc_msgSend(v18, "isBookmarksMenuFolder"))
        {
          if ([v18 isFolder])
          {
            v19 = [v18 localizedTitle];
            if ([v18 specialID])
            {
              v20 = [v18 title];
              v21 = [v11 openFolder:v19 identifier:v20 error:a6];

              if (!v21)
              {
                goto LABEL_25;
              }
            }

            else
            {
              v25 = [v11 openFolder:v19 identifier:0 error:a6];

              if ((v25 & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            if (!-[WebBookmarksServer _exportsContentOfBookmarkFolder:collection:writer:error:](self, "_exportsContentOfBookmarkFolder:collection:writer:error:", v18, v29, v11, a6) || ([v11 closeFolderWithError:a6] & 1) == 0)
            {
LABEL_25:
              LOBYTE(v12) = 0;
LABEL_26:
              v13 = v27;
              goto LABEL_27;
            }
          }

          else
          {
            if ([v9 isReadingListItem])
            {
              v22 = [v9 readingListDateLastViewed];
            }

            else
            {
              v22 = 0;
            }

            v23 = [v18 address];
            v24 = [v18 localizedTitle];
            v12 = [v11 appendURLString:v23 title:v24 dateOfLastVisitIfReadingListItem:v22 error:a6];

            if (!v12)
            {
              goto LABEL_26;
            }
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      LOBYTE(v12) = 1;
      v13 = v27;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:

  return v12;
}

- (void)_connection:(id)a3 exportHistoryWithMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WebBookmarksServer *)self _connectionHasRequiredEntitlementForImportOrExport:v6])
  {
    v8 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v7, kWebBookmarksHistoryExportSandboxExtensionKey)];
    v9 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v7, kWebBookmarksHistoryExportURLKey)];
    v10 = [NSURL URLWithString:v9];
    v11 = [NSString stringWithCString:xpc_dictionary_get_string(v7 encoding:kWebsiteProfileIdentifiersKey), 1];
    v12 = sub_1000148D8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      v17 = v10;
      v18 = 2113;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Exporting history; export URL: %{private}@; profile: %{private}@", buf, 0x16u);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000E5C0;
    v13[3] = &unk_100029150;
    v14 = v6;
    v15 = v7;
    [(WebBookmarksServer *)self _exportHistoryToURL:v10 sandboxExtension:v8 profileIdentifier:v11 completionHandler:v13];
  }
}

- (void)_exportHistoryToURL:(id)a3 sandboxExtension:(id)a4 profileIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = os_transaction_create();
  v15 = objc_alloc_init(WBSHistoryConnectionProxy);
  [v13 UTF8String];

  v16 = sandbox_extension_consume();
  if (v16 == -1)
  {
    v22 = sub_10001485C();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100016BC4(v22);
    }

    v12[2](v12);
  }

  else
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10000E8C0;
    v31[3] = &unk_100029800;
    v33 = v16;
    v32 = v12;
    v17 = objc_retainBlock(v31);
    v30 = 0;
    v18 = [[WBSHistoryExporter alloc] initWithURL:v10 error:&v30];
    v19 = v30;
    v20 = v19;
    if (!v18 || v19)
    {
      v23 = sub_1000148D8();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100016C4C(v23);
      }

      (v17[2])(v17);
    }

    else
    {
      v21 = +[NSMutableDictionary dictionary];
      [v21 setObject:v11 forKeyedSubscript:WBSHistoryConnectionOptionDatabaseID];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10000E904;
      v24[3] = &unk_100029850;
      v25 = v11;
      v29 = v17;
      v26 = v18;
      v27 = v14;
      v28 = v15;
      [v28 connectWithOptions:v21 delegate:self completionHandler:v24];
    }
  }
}

- (void)_connection:(id)a3 getNumberOfHistorySitesToBeExportedWithMessage:(id)a4
{
  v17 = a3;
  xdict = a4;
  v18 = os_transaction_create();
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = sub_10000EEC0;
  v40[4] = sub_10000EED0;
  v41 = +[NSMutableSet set];
  v24 = objc_alloc_init(WBSHistoryConnectionProxy);
  v5 = dispatch_group_create();
  length = 0;
  data = xpc_dictionary_get_data(xdict, kWebBookmarksNumberOfHistorySitesToBeExportedProfileIdentifiersKey, &length);
  v7 = objc_opt_class();
  v8 = [NSData dataWithBytes:data length:length];
  v38 = 0;
  v19 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:v7 fromData:v8 error:&v38];
  v20 = v38;

  if (v20)
  {
    v9 = sub_1000148D8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v20 safari_privacyPreservingDescription];
      sub_100016D80(v10, buf, v9);
    }
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v19;
    v11 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v11)
    {
      v12 = *v35;
      v13 = WBSHistoryConnectionOptionDatabaseID;
      do
      {
        v14 = 0;
        do
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * v14);
          v42 = v13;
          v43 = v15;
          v16 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1, v17];
          dispatch_group_enter(v5);
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_10000EED8;
          v31[3] = &unk_1000298A0;
          v31[4] = v15;
          v32 = v5;
          v33 = v40;
          [v24 connectWithOptions:v16 delegate:self completionHandler:v31];

          v14 = v14 + 1;
        }

        while (v11 != v14);
        v11 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v11);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F0A0;
    block[3] = &unk_1000298C8;
    v26 = xdict;
    v30 = v40;
    v27 = v17;
    v28 = v18;
    v29 = v24;
    dispatch_group_notify(v5, &_dispatch_main_q, block);

    v9 = v26;
  }

  _Block_object_dispose(v40, 8);
}

- (void)_connection:(id)a3 scanImportURLsWithMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WebBookmarksServer *)self _connectionHasRequiredEntitlementForImportOrExport:v6])
  {
    length = 0;
    data = xpc_dictionary_get_data(v7, kWebBookmarksImportURLsKey, &length);
    v9 = objc_opt_class();
    v10 = [NSData dataWithBytes:data length:length];
    v23 = 0;
    v11 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:v9 fromData:v10 error:&v23];
    v12 = v23;

    if (v12)
    {
      v13 = sub_10001485C();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100016E74(v13);
      }
    }

    else
    {
      v14 = xpc_dictionary_get_data(v7, kWebBookmarksImportSandboxExtensionsKey, &length);
      v15 = objc_opt_class();
      v16 = [NSData dataWithBytes:v14 length:length];
      v22 = 0;
      v17 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:v15 fromData:v16 error:&v22];
      v12 = v22;

      if (v12)
      {
        v18 = sub_10001485C();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100016F0C(v18);
        }
      }

      else
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10000F368;
        v19[3] = &unk_1000298F0;
        v20 = v7;
        v21 = v6;
        [(WebBookmarksServer *)self _scanImportURLs:v11 sandboxExtensions:v17 completionHandler:v19];
      }
    }
  }
}

- (void)_scanImportURLs:(id)a3 sandboxExtensions:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(WBSBrowsingDataImportServiceProxy);
  [v10 scanImportURLs:v9 sandboxExtensions:v8 completionHandler:v7];
}

- (void)_connection:(id)a3 importBookmarksWithMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WebBookmarksServer *)self _connectionHasRequiredEntitlementForImportOrExport:v6])
  {
    v8 = [NSFileHandle alloc];
    v9 = [v8 initWithFileDescriptor:xpc_dictionary_dup_fd(v7 closeOnDealloc:{kWebBookmarksImportBookmarksFileDescriptorKey), 1}];
    v10 = objc_alloc_init(WBSBrowsingDataImportServiceProxy);
    v11 = [[WebBookmarkImportDelegate alloc] initWithCoordinator:self->_bookmarkLockCoordinator];
    ++self->_bookmarksFilesBeingImported;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000F6A0;
    v13[3] = &unk_100029918;
    v13[4] = self;
    v14 = v7;
    v15 = v11;
    v16 = v6;
    v12 = v11;
    [v10 parseNetscapeBookmarkFromFileHandle:v9 delegate:v12 completionHandler:v13];
  }
}

- (void)_connection:(id)a3 importHistoryWithMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WebBookmarksServer *)self _connectionHasRequiredEntitlementForImportOrExport:v6])
  {
    v8 = [NSFileHandle alloc];
    v9 = [v8 initWithFileDescriptor:xpc_dictionary_dup_fd(v7 closeOnDealloc:{kWebBookmarksImportHistoryFileDescriptorKey), 1}];
    v10 = xpc_dictionary_get_double(v7, kWebBookmarksImportHistoryAgeLimitKey);
    v11 = [NSString stringWithCString:xpc_dictionary_get_string(v7 encoding:kWebsiteProfileIdentifiersKey), 1];
    v12 = sub_10001485C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Importing history; profile: %{public}@", buf, 0xCu);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000F960;
    v13[3] = &unk_1000295C0;
    v14 = v7;
    v15 = v6;
    [(WebBookmarksServer *)self _importHistoryFromFileHandle:v9 ageLimit:v11 profileIdentifier:v13 completionHandler:v10];
  }
}

- (void)_importHistoryFromFileHandle:(id)a3 ageLimit:(double)a4 profileIdentifier:(id)a5 forChrome:(BOOL)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = os_transaction_create();
  v16 = objc_alloc_init(WBSHistoryConnectionProxy);
  v17 = +[NSMutableDictionary dictionary];
  [v17 setObject:v13 forKeyedSubscript:WBSHistoryConnectionOptionDatabaseID];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000FB5C;
  v23[3] = &unk_100029990;
  v27 = v16;
  v28 = v14;
  v30 = a6;
  v24 = v13;
  v25 = v12;
  v29 = a4;
  v26 = v15;
  v18 = v16;
  v19 = v15;
  v20 = v12;
  v21 = v14;
  v22 = v13;
  [v18 connectWithOptions:v17 delegate:self completionHandler:v23];
}

- (void)_connection:(id)a3 importChromeExtensionsWithMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"])
  {
    v8 = [NSFileHandle alloc];
    v9 = [v8 initWithFileDescriptor:xpc_dictionary_dup_fd(v7 closeOnDealloc:{kWebBookmarksImportChromeExtensionsFileDescriptorKey), 1}];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100010170;
    v18[3] = &unk_100029150;
    v19 = v6;
    v20 = v7;
    [(WebBookmarksServer *)self _importChromeExtensionsFromFileHandle:v9 connection:v19 completionHandler:v18];
  }

  else
  {
    v10 = sub_10001485C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001656C(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }
}

- (void)_importChromeExtensionsFromFileHandle:(id)a3 connection:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(WBSBrowsingDataImportServiceProxy);
  v11 = [[WebBookmarksExtensionsImporterDelgate alloc] initWithConnection:v8];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000102C4;
  v13[3] = &unk_1000299B8;
  v14 = v7;
  v12 = v7;
  [v10 parseChromeExtensionsFromFileHandle:v9 delegate:v11 completionHandler:v13];
}

- (void)_connection:(id)a3 importChromeHistoryWithMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"])
  {
    v8 = [NSFileHandle alloc];
    v9 = [v8 initWithFileDescriptor:xpc_dictionary_dup_fd(v7 closeOnDealloc:{kWebBookmarksImportChromeHistoryFileDescriptorKey), 1}];
    v10 = xpc_dictionary_get_double(v7, kWebBookmarksImportChromeHistoryAgeLimitKey);
    v11 = [NSString stringWithCString:xpc_dictionary_get_string(v7 encoding:kWebsiteProfileIdentifiersKey), 1];
    v12 = sub_10001485C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Importing history; profile: %{public}@", buf, 0xCu);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100010540;
    v21[3] = &unk_1000295C0;
    v22 = v7;
    v23 = v6;
    [(WebBookmarksServer *)self _importChromeHistoryFromFileHandle:v9 ageLimit:v11 profileIdentifier:v21 completionHandler:v10];
  }

  else
  {
    v13 = sub_10001485C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10001656C(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

- (void)_connection:(id)a3 importCreditCardsWithMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"])
  {
    v8 = [NSFileHandle alloc];
    v9 = [v8 initWithFileDescriptor:xpc_dictionary_dup_fd(v7 closeOnDealloc:{kWebBookmarksImportCreditCardsFileDescriptorKey), 1}];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000106F4;
    v18[3] = &unk_100029150;
    v19 = v6;
    v20 = v7;
    [(WebBookmarksServer *)self _importCreditCardsFromFileHandle:v9 connection:v19 completionHandler:v18];
  }

  else
  {
    v10 = sub_10001485C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001656C(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }
}

- (void)_importCreditCardsFromFileHandle:(id)a3 connection:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(WBSBrowsingDataImportServiceProxy);
  v11 = [[WebBookmarksCreditCardImporterDelgate alloc] initWithConnection:v8];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100010848;
  v13[3] = &unk_1000299B8;
  v14 = v7;
  v12 = v7;
  [v10 parseCreditCardJSONFromFileHandle:v9 delegate:v11 completionHandler:v13];
}

- (void)_connection:(id)a3 importExtensionsWithMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WebBookmarksServer *)self _connectionHasRequiredEntitlementForImportOrExport:v6])
  {
    v8 = [NSFileHandle alloc];
    v9 = [v8 initWithFileDescriptor:xpc_dictionary_dup_fd(v7 closeOnDealloc:{kWebBookmarksImportExtensionsFileDescriptorKey), 1}];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000109D0;
    v10[3] = &unk_100029150;
    v11 = v6;
    v12 = v7;
    [(WebBookmarksServer *)self _importExtensionsFromFileHandle:v9 connection:v11 completionHandler:v10];
  }
}

- (void)_importExtensionsFromFileHandle:(id)a3 connection:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(WBSBrowsingDataImportServiceProxy);
  v11 = [[WebBookmarksExtensionsImporterDelgate alloc] initWithConnection:v8];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100010B24;
  v13[3] = &unk_1000299B8;
  v14 = v7;
  v12 = v7;
  [v10 parseExtensionsFromFileHandle:v9 delegate:v11 completionHandler:v13];
}

- (void)_connection:(id)a3 computeNumberOfItemsToBeImportedWithMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WebBookmarksServer *)self _connectionHasRequiredEntitlementForImportOrExport:v6])
  {
    v8 = [NSFileHandle alloc];
    v9 = [v8 initWithFileDescriptor:xpc_dictionary_dup_fd(v7 closeOnDealloc:{kWebBookmarksComputeNumberOfItemsToBeImportedFileDescriptorKey), 1}];
    v10 = [NSString stringWithCString:xpc_dictionary_get_string(v7 encoding:kWebBookmarksComputeNumberOfItemsToBeImportedMetadataDataTypeKey), 1];
    v11 = objc_alloc_init(WBSBrowsingDataImportServiceProxy);
    v12 = [[WebBookmarksImportCount alloc] initWithExportMetadataDataType:v10];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100010EB0;
    v16[3] = &unk_100029630;
    v17 = v7;
    v13 = v12;
    v18 = v13;
    v19 = v6;
    v14 = objc_retainBlock(v16);
    if ([v10 isEqualToString:WBSHistoryExportDataType])
    {
      [v11 parseHistoryJSONFromFileHandle:v9 ageLimit:v13 delegate:v14 completionHandler:CFAbsoluteTimeGetCurrent() - WBUHistoryDefaultItemAgeLimit];
    }

    else if ([v10 isEqualToString:WBSChromeHistoryExportDataType])
    {
      [v11 parseChromeHistoryJSONFromFileHandle:v9 ageLimit:v13 delegate:v14 completionHandler:CFAbsoluteTimeGetCurrent() - WBUHistoryDefaultItemAgeLimit];
    }

    else if ([v10 isEqualToString:WBSExtensionsExportDataType])
    {
      [v11 parseExtensionsFromFileHandle:v9 delegate:v13 completionHandler:v14];
    }

    else if ([v10 isEqualToString:WBSBookmarksExportDataType])
    {
      [v11 parseNetscapeBookmarkFromFileHandle:v9 delegate:v13 completionHandler:v14];
    }

    else if ([v10 isEqualToString:WBSCreditCardExportDataType])
    {
      [v11 parseCreditCardJSONFromFileHandle:v9 delegate:v13 completionHandler:v14];
    }

    else if ([v10 isEqualToString:WBSChromeExtensionsExportDataType])
    {
      [v11 parseChromeExtensionsFromFileHandle:v9 delegate:v13 completionHandler:v14];
    }

    else
    {
      v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      (v14[2])(v14, v15);
    }
  }
}

- (void)_connection:(id)a3 openSafariExportSettingsWithMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 connection];
  pid = xpc_connection_get_pid(v8);

  v10 = [RBSProcessIdentifier identifierWithPid:pid];
  v24 = 0;
  v11 = [RBSProcessHandle handleForIdentifier:v10 error:&v24];
  v12 = v24;

  if (v12)
  {
    v13 = sub_10000AE2C(v7);
    v14 = v13;
    v15 = &kWebBookmarksOpenSafariExportSettingsFailedKey;
LABEL_8:
    v22 = *v15;
    v23 = 1;
    goto LABEL_9;
  }

  if (![v11 isApplication] || (objc_msgSend(v11, "currentState"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "endowmentNamespaces"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "containsObject:", FBSSceneVisibilityEndowmentNamespace), v17, v16, (v18 & 1) == 0))
  {
    v13 = sub_10000AE2C(v7);
    v14 = v13;
    v15 = &kWebBookmarksOpenSafariExportSettingsNotRunningForegroundKey;
    goto LABEL_8;
  }

  if (![(WebBookmarksServer *)self clientIsDefaultBrowserEntitledWithConnection:v6 message:v7])
  {
    v13 = sub_10000AE2C(v7);
    v14 = v13;
    v15 = &kWebBookmarksOpenSafariExportSettingsMissingEntitlementKey;
    goto LABEL_8;
  }

  v19 = +[LSApplicationWorkspace defaultWorkspace];
  v20 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilesafari?action=showExportSheet"];
  v21 = [v19 openSensitiveURL:v20 withOptions:0];

  v13 = sub_10000AE2C(v7);
  v14 = v13;
  v22 = kWebBookmarksOpenSafariExportSettingsFailedKey;
  v23 = v21 ^ 1;
LABEL_9:
  xpc_dictionary_set_BOOL(v13, v22, v23);
  [v6 sendMessage:v14];
}

- (BOOL)clientIsDefaultBrowserEntitledWithConnection:(id)a3 message:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 connection];
  xpc_connection_get_audit_token();

  if (+[WBSFeatureAvailability isInternalInstall](WBSFeatureAvailability, "isInternalInstall") && xpc_dictionary_get_BOOL(v6, kWebBookmarksOpenSafariExportSettingsTestingModeKey) || ([v5 hasBoolEntitlement:@"com.apple.developer.web-browser"] & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = _BECheckEntitlmentForAuditToken();
  }

  return v8;
}

- (BOOL)_isCloudHistoryEnabled
{
  v2 = [(WBUFeatureManager *)self->_featureManager isCloudHistorySyncAvailable];
  if (v2)
  {
    v3 = objc_alloc_init(ACAccountStore);
    v4 = [v3 aa_primaryAppleAccount];
    v5 = [v4 isEnabledForDataclass:kAccountDataclassBookmarks];

    LOBYTE(v2) = v5;
  }

  return v2;
}

- (BOOL)_connectionHasRequiredEntitlementForImportOrExport:(id)a3
{
  v3 = [a3 hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"];
  if ((v3 & 1) == 0)
  {
    v4 = sub_100014400();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001656C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return v3;
}

- (void)_logWarningWithMessage:(id)a3 connection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6 && ([v6 connection], v8 = objc_claimAutoreleasedReturnValue(), pid = xpc_connection_get_pid(v8), v8, pid))
  {
    v10 = sub_100014400();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100017504(v5, pid, v10);
    }
  }

  else
  {
    v11 = sub_100014400();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001758C();
    }
  }
}

- (void)reportSevereError:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100014574();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    sub_1000175F4(v7);
  }

  v6[2](v6);
}

@end