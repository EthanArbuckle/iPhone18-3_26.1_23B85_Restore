void sub_1000018BC(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x10000179CLL);
  }

  JUMPOUT(0x1000018ACLL);
}

id sub_100001974(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = objc_retainBlock(*(a1 + 40));
  [v2 addObject:v3];

  v4 = *(a1 + 32);

  return [v4 _tryLock];
}

void sub_100001A60(id a1)
{
  qword_10002E8B0 = objc_alloc_init(CloudHistoryConfiguration);

  _objc_release_x1();
}

void sub_100001CB8(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v1 = [*(a1 + 32) _cloudConfigurationAssetsSortedByVersionNumber];
  v2 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = *v15;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v15 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v14 + 1) + 8 * i);
        if ([v5 state] == 1)
        {
          v6 = [v5 localURL];
          v7 = [v6 URLByAppendingPathComponent:@"data.plist"];
          v8 = [NSData dataWithContentsOfURL:v7];

          if (v8)
          {
            v9 = [NSPropertyListSerialization propertyListWithData:v8 options:0 format:0 error:0];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_100001F30;
              block[3] = &unk_100028C40;
              block[4] = *(a1 + 32);
              v13 = v9;
              v10 = v9;
              dispatch_async(&_dispatch_main_q, block);

              goto LABEL_14;
            }
          }
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

id sub_100001F30(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = v2[2];

  return [v2 applyRemoteConfiguration:v3];
}

int64_t sub_10000208C(id a1, ASAsset *a2, ASAsset *a3)
{
  v4 = a2;
  v5 = [(ASAsset *)a3 attributes];
  v6 = ASAttributeContentVersion;
  v7 = [v5 objectForKey:ASAttributeContentVersion];
  v8 = [(ASAsset *)v4 attributes];
  v9 = [v8 objectForKey:v6];
  v10 = [v7 compare:v9];

  return v10;
}

void sub_100002294(uint64_t a1)
{
  v1 = [*(a1 + 32) _cloudConfigurationAssetsSortedByVersionNumber];
  v2 = [v1 firstObject];

  v3 = [v2 state];
  if (v3)
  {
    if (v3 == 3)
    {
      [v2 resumeDownloadAndReturnError:0];
    }
  }

  else
  {
    v5 = ASDownloadOptionAllowBatteryPower;
    v6 = &__kCFBooleanTrue;
    v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    [v2 beginDownloadWithOptions:v4];
  }
}

void sub_100002378(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100002470(id a1)
{
  qword_10002E8C0 = objc_alloc_init(CloudTabStore);

  _objc_release_x1();
}

uint64_t sub_100002C8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uuid];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5 && ([v3 lastModified], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "timeIntervalSinceReferenceDate"), v8 = v7, v9 = *(a1 + 40), v6, v8 <= v9))
  {
    v12 = sub_1000144F8();
    v10 = 0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v3 uuid];
      v15 = [v3 lastModified];
      [v15 timeIntervalSinceReferenceDate];
      v17 = 138543618;
      v18 = v14;
      v19 = 2048;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Filtering out device with uuid %{public}@ and last modified time %f", &v17, 0x16u);

      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

void sub_100002EE8(uint64_t a1)
{
  if ([*(a1 + 32) _cloudKitDataNeedsFetching])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002FB8;
    block[3] = &unk_100028BB0;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v2 = sub_1000144F8();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Bypassing fetching data from CloudKit as part of synchronizing because we're already up-to-date", v3, 2u);
    }
  }
}

id sub_100002FB8(uint64_t a1)
{
  v2 = sub_1000144F8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Fetching data from CloudKit as part of synchronizing", v4, 2u);
  }

  return [*(a1 + 32) fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit];
}

uint64_t sub_1000032E8(uint64_t a1)
{
  v2 = sub_1000144F8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100016314();
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100003750(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  LODWORD(v2) = [v2 isEqualToString:v3];

  return v2 ^ 1;
}

uint64_t sub_100003924(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10000393C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = sub_1000144F8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "Saving iCloud Tabs when entering background because no CloudKit data is available";
      v5 = buf;
      goto LABEL_7;
    }

LABEL_8:
    [*(a1 + 32) saveCurrentDeviceCloudTabs:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
    return;
  }

  if (([*(a1 + 32) uniqueDeviceMultiplicity] | 2) == 2)
  {
    v3 = sub_1000144F8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v4 = "Saving iCloud Tabs when entering background because at least one other device is registered or registered devices cannot be determined";
      v5 = &v16;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (([*(a1 + 32) currentDeviceIsRegisteredInCloudKit] & 1) == 0)
  {
    v3 = sub_1000144F8();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v15 = 0;
    v4 = "Saving iCloud Tabs when entering background with no other devices because this device isn't registered";
    v5 = &v15;
    goto LABEL_7;
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 safari_dateForKey:@"CloudTabStoreDateOfLastSaveWhenEnteringBackgroundWithNoOtherDevices"];
  v8 = +[NSDate date];
  v9 = v8;
  if (v7 && ([v8 timeIntervalSinceDate:v7], v10 < 86400.0))
  {
    v11 = sub_1000144F8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not saving iCloud Tabs when entering background with no other devices", v14, 2u);
    }
  }

  else
  {
    v12 = sub_1000144F8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Saving iCloud Tabs when entering background with no other devices", v13, 2u);
    }

    [v6 setObject:v9 forKey:@"CloudTabStoreDateOfLastSaveWhenEnteringBackgroundWithNoOtherDevices"];
    [*(a1 + 32) saveCurrentDeviceCloudTabs:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100003CB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100003CCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _saveCurrentDeviceCloudTabsNow:*(a1 + 32) syncCompletionHandler:*(a1 + 40)];
}

uint64_t sub_100004208(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_1000044C0(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100004548;
  v2[3] = &unk_100028BD8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_100004548(uint64_t a1)
{
  [*(a1 + 32) fetchSyncedCloudTabDevicesAndCloseRequestsFromCloudKit];
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000045E4;
  v3[3] = &unk_100028DC0;
  v3[4] = v2;
  v4 = *(a1 + 40);
  [v2 _waitForInitialCloudKitFetchToComplete:v3];
}

uint64_t sub_1000045E4(uint64_t a1, int a2)
{
  v4 = sub_1000144F8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v8[0] = 67240448;
    v8[1] = a2;
    v9 = 1026;
    v10 = [v5 currentDeviceIsRegisteredInCloudKit];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Force fetch complete with data available: %{public}d, current device is registered in CloudKit: %{public}d", v8, 0xEu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_1000047F4(uint64_t a1, void *a2)
{
  v3 = [a2 sortedArrayUsingComparator:&stru_100028E00];
  v4 = v3;
  if (*(a1 + 32) == 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v3 safari_mapObjectsUsingBlock:&stru_100028E40];
  }

  v6 = v5;

  return v6;
}

int64_t sub_100004870(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = WBTabDateLastViewedKey;
  v5 = a3;
  v6 = [(NSDictionary *)a2 safari_numberForKey:v4];
  v7 = [(NSDictionary *)v5 safari_numberForKey:v4];

  if (v6)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7 != 0;
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v8 = [v6 compare:v7];
  }

  return v8;
}

NSMutableDictionary *__cdecl sub_100004910(id a1, NSDictionary *a2)
{
  v2 = [(NSDictionary *)a2 mutableCopy];
  [v2 setObject:0 forKeyedSubscript:WBTabDateLastViewedKey];

  return v2;
}

void sub_1000050BC(id a1)
{
  qword_10002E8D0 = dispatch_queue_create("com.apple.MobileSafari.CloudTabStore", 0);

  _objc_release_x1();
}

void sub_100005108(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100005124(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t start()
{
  getpid();
  if (!sandbox_container_path_for_pid())
  {
    setenv("HOME", __value, 1);
    setenv("CFFIXED_USER_HOME", __value, 1);
    if (strlcat(__value, "/tmp/", 0x400uLL) >= 0x400)
    {
      exit(1);
    }

    setenv("TMPDIR", __value, 1);
    v0 = sub_100014400();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = __value;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Setting home directory to: %s", &v7, 0xCu);
    }
  }

  v1 = objc_autoreleasePoolPush();
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100028EC0);
  CacheDeleteRegisterInfoCallbacks();
  +[WebBookmarksMaintenanceActivity checkInActivities];
  +[WebBookmarksBackupActivity checkInActivity];
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = [v2 addObserverForName:MCEffectiveSettingsChangedNotification object:0 queue:0 usingBlock:&stru_100028F00];

  v4 = +[WebBookmarksServer sharedServer];
  v5 = +[WebBookmarksApplicationObserver sharedObserver];
  objc_autoreleasePoolPop(v1);
  WBSRunLoopRunUntilTerminationSignal();
  return 0;
}

void sub_100005350(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
  v4 = string;
  if (string)
  {
    if (!strcmp(string, "Device Name Changed"))
    {
      v5 = +[WebBookmarksServer sharedServer];
      v6 = [v5 featureManager];
      v7 = [v6 isCloudTabsAvailable];

      if (v7)
      {
        v8 = objc_alloc_init(CloudTabStore);
        [(CloudTabStore *)v8 synchronizeCloudTabDevices];
        v9 = [(CloudTabStore *)v8 currentDevice];

        if (v9)
        {
          if ([(CloudTabStore *)v8 canSaveCloudTabsForCurrentDevice])
          {
            v10 = [WBTabCollection alloc];
            v11 = +[WBCollectionConfiguration safariTabCollectionConfiguration];
            v12 = [v10 initWithConfiguration:v11 openDatabase:1];

            v13 = [v12 browserState];
            [(CloudTabStore *)v8 saveCurrentDeviceTabsFromBrowserState:v13];
          }

          else
          {
            [(CloudTabStore *)v8 clearTabsForCurrentDevice];
          }
        }
      }
    }

    if (!strcmp(v4, "WebContentFilter Changed"))
    {
      byte_10002E8E0 = 1;
      sub_100005B28(0);
    }

    if (!strcmp(v4, "WebContentFilterType Changed"))
    {
      sub_100005600();
    }

    if (!strcmp(v4, "Bookmarks File Changed"))
    {
      sub_100005B28(0);
    }

    if (!strcmp(v4, "SpringBoard Finished Startup") && +[WBUFeatureManager accessLevel]== 2)
    {
      v14 = sub_1000144F8();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_100016458(v14);
      }

      v15 = objc_alloc_init(CloudTabStore);
      [(CloudTabStore *)v15 synchronizeCloudTabDevices];
    }

    if (!strcmp(v4, "Reset Privacy Warnings"))
    {
      v16 = sub_1000145F0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_10001649C(v16);
      }

      xpc_transaction_begin();
      v17 = +[_SFGeolocationPermissionManager sharedManager];
      [v17 removeAllPermissionsWithCompletionHandler:&stru_1000290E0];
    }
  }
}

void sub_100005600()
{
  v0 = objc_alloc_init(WBUFeatureManager);
  [v0 determineIfPrivateBrowsingIsAvailableWithCompletionHandler:&stru_100028F40];
}

void sub_100005668(id a1, BOOL a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056DC;
  block[3] = &unk_100028F60;
  v3 = a2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000056DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  xpc_transaction_begin();
  v2 = +[WBWebFilterSettings sharedWebFilterSettings];
  [v2 reloadSettings];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000057C4;
  v4[3] = &unk_100028FF0;
  v5 = objc_alloc_init(SBSApplicationShortcutService);
  v6 = v1;
  v3 = v5;
  [v3 fetchApplicationShortcutItemsOfTypes:2 forBundleIdentifier:@"com.apple.mobilesafari" withCompletionHandler:v4];
}

void sub_1000057C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dynamicApplicationShortcutItems];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000058A0;
  block[3] = &unk_100028FC8;
  v5 = *(a1 + 32);
  v10 = *(a1 + 40);
  v8 = v5;
  v9 = v4;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000058A0(uint64_t a1)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005A98;
  v10[3] = &unk_100028C68;
  v11 = *(a1 + 32);
  v2 = objc_retainBlock(v10);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) indexOfObjectPassingTest:&stru_100028FA0];
  if (v3 == (v4 != 0x7FFFFFFFFFFFFFFFLL))
  {
    (v2[2])(v2);
  }

  else
  {
    v5 = [*(a1 + 40) mutableCopy];
    v6 = v5;
    if (v3)
    {
      v7 = objc_alloc_init(SBSApplicationShortcutItem);
      [v7 setType:_SFSafariShortcutItemTypeOpenNewPrivateTab];
      v8 = _SFLocalizedTitleStringForShortcutItemType();
      [v7 setLocalizedTitle:v8];

      v9 = [[SBSApplicationShortcutSystemIcon alloc] initWithSystemImageName:@"plus.square.fill.on.square.fill"];
      [v7 setIcon:v9];

      [v6 insertObject:v7 atIndex:1];
    }

    else
    {
      [v5 removeObjectAtIndex:v4];
    }

    [*(a1 + 32) updateDynamicApplicationShortcutItems:v6 forBundleIdentifier:@"com.apple.mobilesafari"];
    (v2[2])(v2);
  }
}

id sub_100005A98(uint64_t a1)
{
  xpc_transaction_end();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

BOOL sub_100005AD0(id a1, SBSApplicationShortcutItem *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(SBSApplicationShortcutItem *)a2 type:a3];
  v5 = [v4 isEqualToString:_SFSafariShortcutItemTypeOpenNewPrivateTab];

  return v5;
}

void sub_100005B28(uint64_t a1)
{
  if (a1 || !qword_10002E8E8 || !CFRunLoopTimerIsValid(qword_10002E8E8))
  {
    if ((+[WebBookmarkCollection lockSync]& 1) != 0)
    {
      v4 = +[WBWebFilterSettings sharedWebFilterSettings];
      [v4 reloadSettings];

      v5 = +[WebBookmarkCollection safariBookmarkCollection];
      [v5 updateReadingListWebFilterStatusForUnsetItemsOnly:(byte_10002E8E0 & 1) == 0];
      [v5 restoreOrMergeAllowedSitesFolderAndContentsWithChangeNotification:1];
      v1 = +[NSDistributedNotificationCenter defaultCenter];
      [v1 postNotificationName:WebBookmarksDidReloadDistributedNotification object:0];

      +[WebBookmarkCollection unlockSync];
      if (qword_10002E8E8)
      {
        CFRelease(qword_10002E8E8);
      }

      qword_10002E8E8 = 0;
      byte_10002E8E0 = 0;
      if (byte_10002E8F0 == 1)
      {
        xpc_transaction_end();
        byte_10002E8F0 = 0;
      }
    }

    else
    {
      if (qword_10002E8E8)
      {
        CFRelease(qword_10002E8E8);
      }

      Current = CFAbsoluteTimeGetCurrent();
      qword_10002E8E8 = CFRunLoopTimerCreate(0, Current + 5.0, 0.0, 0, 0, sub_100005B28, &stru_10002E8F8);
      v3 = CFRunLoopGetCurrent();
      CFRunLoopAddTimer(v3, qword_10002E8E8, kCFRunLoopCommonModes);
      if ((byte_10002E8F0 & 1) == 0)
      {
        xpc_transaction_begin();
        byte_10002E8F0 = 1;
      }
    }
  }
}

void sub_100005CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

__CFDictionary *__cdecl sub_100005CF4(id a1, int a2, __CFDictionary *a3)
{
  v4 = [(__CFDictionary *)a3 objectForKey:@"CACHE_DELETE_VOLUME"];
  v5 = sub_100014400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received CachedDelete space request at volume: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x2020000000;
  v15 = 0;
  if ([v4 isEqualToString:@"/private/var/mobile"])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005F00;
    block[3] = &unk_100029058;
    block[4] = &buf;
    dispatch_sync(&_dispatch_main_q, block);
  }

  v11[0] = @"CACHE_DELETE_VOLUME";
  v6 = [(__CFDictionary *)a3 objectForKey:@"CACHE_DELETE_VOLUME"];
  v11[1] = @"CACHE_DELETE_AMOUNT";
  v12[0] = v6;
  v7 = [NSNumber numberWithLongLong:*(*(&buf + 1) + 24)];
  v12[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  _Block_object_dispose(&buf, 8);
  return v8;
}

void sub_100005EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005F00(uint64_t a1)
{
  v2 = +[WebBookmarkCollection safariBookmarkCollection];
  *(*(*(a1 + 32) + 8) + 24) = [v2 purgeableSpace];
}

__CFDictionary *__cdecl sub_100005F74(id a1, int a2, __CFDictionary *a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000060F8;
  block[3] = &unk_1000290A0;
  block[4] = &v9;
  block[5] = a3;
  dispatch_sync(&_dispatch_main_q, block);
  v13[0] = @"CACHE_DELETE_VOLUME";
  v4 = [(__CFDictionary *)a3 objectForKey:?];
  v13[1] = @"CACHE_DELETE_AMOUNT";
  v14[0] = v4;
  v5 = [NSNumber numberWithLongLong:v10[3]];
  v14[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_1000060C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000060F8(uint64_t a1)
{
  result = +[WebBookmarkCollection lockSync];
  if (result)
  {
    v3 = [*(a1 + 40) objectForKey:@"CACHE_DELETE_AMOUNT"];
    v4 = [v3 unsignedLongLongValue];

    v5 = +[WebBookmarkCollection safariBookmarkCollection];
    *(*(*(a1 + 32) + 8) + 24) = [v5 purge:v4];

    return +[WebBookmarkCollection unlockSync];
  }

  return result;
}

void sub_1000061B8(id a1, BOOL a2)
{
  v2 = +[_SFUserMediaPermissionController sharedController];
  [v2 removeAllPermissionsWithCompletionHandler:&stru_100029100];
}

void sub_100006A98(uint64_t a1)
{
  v4 = [*(a1 + 32) _bookmarkFoldersStack];
  v2 = [*(a1 + 32) _bookmarkFoldersStack];
  v3 = [v2 lastObject];
  [v4 addObject:v3];
}

void sub_100006B14(uint64_t a1)
{
  v3 = [*(a1 + 32) _bookmarkFoldersStack];
  v2 = [*(*(a1 + 32) + 8) favoritesFolder];
  [v3 addObject:v2];
}

void sub_100006B84(uint64_t a1)
{
  v9 = [*(a1 + 32) _existingBookmarkWithTitle:*(a1 + 40) folder:1];
  if (v9)
  {
    v2 = [*(a1 + 32) _bookmarkFoldersStack];
    [v2 addObject:v9];
  }

  else
  {
    v3 = [WebBookmark alloc];
    v4 = [*(a1 + 32) _bookmarkFoldersStack];
    v5 = [v4 lastObject];
    v6 = [v5 identifier];
    v7 = [*(*(a1 + 32) + 8) configuration];
    v2 = [v3 initFolderWithParentID:v6 collectionType:{objc_msgSend(v7, "collectionType")}];

    [v2 setTitle:*(a1 + 40)];
    [*(*(a1 + 32) + 8) saveBookmark:v2];
    v8 = [*(a1 + 32) _bookmarkFoldersStack];
    [v8 addObject:v2];
  }
}

void sub_100006DA8(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingBookmarkWithTitle:*(a1 + 40) folder:0];
  v12 = v2;
  if (v2)
  {
    [v2 setAddress:*(a1 + 48)];
    [*(*(a1 + 32) + 8) saveBookmark:v12];
  }

  else
  {
    v3 = [WebBookmark alloc];
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = [*(*(a1 + 32) + 8) configuration];
    v7 = [v3 initWithTitle:v5 address:v4 collectionType:{objc_msgSend(v6, "collectionType")}];

    v8 = *(a1 + 32);
    v9 = v8[1];
    v10 = [v8 _bookmarkFoldersStack];
    v11 = [v10 lastObject];
    [v9 moveBookmark:v7 toFolderWithID:{objc_msgSend(v11, "identifier")}];

    [*(*(a1 + 32) + 8) saveBookmark:v7];
  }
}

void sub_100006F50(uint64_t a1)
{
  v1 = [*(a1 + 32) _bookmarkFoldersStack];
  [v1 removeLastObject];
}

id sub_100007168(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == [v3 isFolder])
  {
    v4 = [v3 localizedTitle];
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1000072C8(void *a1)
{
  v6 = [*(a1[4] + 8) firstReadingListBookmarkWithURLMatchingString:a1[5] prefixMatch:0];
  if (v6)
  {
    v2 = +[NSDate date];
    [v6 setDateAdded:v2];

    [v6 setReadingListDateLastViewed:a1[6]];
    [*(a1[4] + 8) saveBookmark:v6 startReadingListFetcher:0];
    v3 = *(a1[4] + 8);
    v4 = [v3 readingListWithUnreadOnly:0];
    [v3 reorderBookmark:v6 toIndex:{objc_msgSend(v4, "bookmarkCount") - 1}];
  }

  else
  {
    v4 = [[WebBookmark alloc] initReadingListBookmarkWithTitle:a1[7] address:a1[5] previewText:0];
    v5 = +[NSDate date];
    [v4 setDateAdded:v5];

    [v4 setReadingListDateLastViewed:a1[6]];
    [*(a1[4] + 8) moveBookmark:v4 toFolderWithID:{objc_msgSend(*(a1[4] + 8), "readingListFolderBookmarkID")}];
    [*(a1[4] + 8) saveBookmark:v4 startReadingListFetcher:0];
  }
}

void sub_1000080D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id a63)
{
  objc_destroyWeak((v69 + 32));
  objc_destroyWeak((v68 + 32));
  objc_destroyWeak((v74 + 32));
  objc_destroyWeak((v73 + 32));
  objc_destroyWeak((v72 + 32));
  objc_destroyWeak((v71 + 32));
  objc_destroyWeak((v70 + 32));
  objc_destroyWeak(&a53);
  objc_destroyWeak(&a58);
  objc_destroyWeak(&a63);
  objc_destroyWeak(&a68);
  objc_destroyWeak(&STACK[0x200]);
  objc_destroyWeak(&STACK[0x228]);
  objc_destroyWeak(&STACK[0x250]);
  objc_destroyWeak(&STACK[0x278]);
  objc_destroyWeak(&STACK[0x2A0]);
  objc_destroyWeak(&STACK[0x2C8]);
  objc_destroyWeak(&STACK[0x2F0]);
  objc_destroyWeak(&STACK[0x318]);
  objc_destroyWeak(&STACK[0x340]);
  objc_destroyWeak(&STACK[0x368]);
  objc_destroyWeak((v75 - 192));
  objc_destroyWeak((v75 - 152));
  objc_destroyWeak((v75 - 128));
  _Unwind_Resume(a1);
}

void sub_1000082B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addToReadingListWithMessage:v5 forConnection:v6];
}

void sub_100008328(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearAllCloudTabDevicesForConnection:v3];
}

void sub_100008384(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearCloudTabsForCurrentDeviceForConnection:v3];
}

void sub_1000083E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 didToggleCloudTabsWithMessage:v5];
}

void sub_100008458(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 getSafariWebDataUsageWithMessage:v5];
}

void sub_1000084D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 deleteSafariAllWebSecurityOriginWithMessage:v5];
}

void sub_100008548(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 deleteSafariWebSecurityOriginWithMessage:v5];
}

void sub_1000085C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 deleteSafariPersistentURLCacheStorage:v5];
}

void sub_100008638(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 getSafariDataUsageSummaryWithMessage:v5];
}

void sub_1000086B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 clearHistoryWithMessage:v5];
}

void sub_100008728(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 exportBookmarksWithMessage:v5];
}

void sub_1000087A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 importBookmarksWithMessage:v5];
}

void sub_100008818(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 exportHistoryWithMessage:v5];
}

void sub_100008890(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 getNumberOfHistorySitesToBeExportedWithMessage:v5];
}

void sub_100008908(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 scanImportURLsWithMessage:v5];
}

void sub_100008980(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 importChromeExtensionsWithMessage:v5];
}

void sub_1000089F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 importHistoryWithMessage:v5];
}

void sub_100008A70(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 importChromeHistoryWithMessage:v5];
}

void sub_100008AE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 importCreditCardsWithMessage:v5];
}

void sub_100008B60(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 importExtensionsWithMessage:v5];
}

void sub_100008BD8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 computeNumberOfItemsToBeImportedWithMessage:v5];
}

void sub_100008C50(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 openSafariExportSettingsWithMessage:v5];
}

void sub_100008CC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 clearHSTSSuperCookies:v5];
}

id sub_100008D64(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (v1)
  {
    v6 = @"website data types";
    v2 = [v1 allObjects];
    v3 = [v2 componentsJoinedByString:{@", "}];
    v7 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100008EE4(id a1)
{
  qword_10002E920 = objc_alloc_init(WebBookmarksServer);

  _objc_release_x1();
}

id sub_100009604(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 safari_highLevelDomainFromHost];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;

  v11 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v12 = [v11 objectForKeyedSubscript:v10];

  if (!v12)
  {
    v13 = [*(a1 + 32) objectForKeyedSubscript:v6];

    if (!v13)
    {
      v14 = +[NSMutableDictionary dictionary];
      [*(a1 + 32) setObject:v14 forKeyedSubscript:v6];
    }

    v15 = [NSSet setWithObject:v6];
    v12 = [WBWebsiteDataRecord websiteDataRecordWithDomain:v10 profileIdentifiers:v15];

    v16 = [*(a1 + 32) objectForKeyedSubscript:v6];
    [v16 setObject:v12 forKeyedSubscript:v10];
  }

  v17 = v12;

  return v17;
}

void sub_100009768(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[WKWebsiteDataStore safari_allDataTypes];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100009858;
  v11[3] = &unk_100029308;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  [v10 _fetchDataRecordsOfTypes:v7 withOptions:1 completionHandler:v11];
}

void sub_100009858(uint64_t a1, void *a2)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v21 = *v23;
    v5 = WBAllWebsiteDataProfileIdentifier;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v23 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = *(*(a1 + 32) + 40);
        v9 = [v7 dataTypes];
        [v8 unionSet:v9];

        v10 = [*(a1 + 40) safari_profileIdentifier];
        v11 = *(a1 + 48);
        v12 = [v7 displayName];
        v13 = (*(v11 + 16))(v11, v12, v10);
        v14 = [v7 _dataSize];
        [v13 setUsage:{objc_msgSend(v14, "totalSize") + objc_msgSend(v13, "usage")}];

        v15 = *(a1 + 48);
        v16 = [v7 displayName];
        v17 = (*(v15 + 16))(v15, v16, v5);

        v18 = [v7 _dataSize];
        [v17 setUsage:{objc_msgSend(v18, "totalSize") + objc_msgSend(v17, "usage")}];

        v19 = [v17 profileIdentifiers];
        [v19 addObject:v10];
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v4);
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100009AA8(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [*(a1 + 32) allValues];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) allValues];
        [v2 addObjectsFromArray:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100009D28(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100009DFC;
  v5[3] = &unk_1000291C8;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v2;
  v7 = v3;
  v8 = *(a1 + 48);
  v4 = v2;
  dispatch_async(&_dispatch_main_q, v5);
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_100009DFC(uint64_t a1)
{
  v2 = sub_1000147E0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Fetching data usage", buf, 2u);
  }

  v3 = sub_1000147E0();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Fetching data usage", &unk_100022BB7, buf, 2u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009F7C;
  v9[3] = &unk_100029358;
  v10 = v6;
  v14 = v4;
  v7 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v8 = v6;
  [v7 _generateWebsiteDataRecordsWithCompletion:v9];
}

void sub_100009F7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 64);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "Finished fetching data usage", &unk_100022BB7, buf, 2u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v7 = xpc_array_create(0, 0);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) XPCDictionaryRepresentation];
        xpc_array_append_value(v7, v13);

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }

  reply = xpc_dictionary_create_reply(*(a1 + 48));
  xpc_dictionary_set_value(reply, kWebsiteDataAllRecordsKey, v7);
  [*(a1 + 56) sendMessage:reply];
  xpc_transaction_end();
}

void sub_10000A2E4(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) safari_setByApplyingBlock:&stru_100029398];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A3B4;
  v7[3] = &unk_1000293E0;
  v8 = v3;
  v6 = v3;
  [v5 fetchDataRecordsOfTypes:v4 completionHandler:v7];
}

void sub_10000A3B4(uint64_t a1, void *a2)
{
  v3 = [a2 safari_setByApplyingBlock:&stru_1000293B8];
  if ([v3 intersectsSet:*(a1 + 32)])
  {
    v4 = [*(a1 + 32) mutableCopy];
    [v4 intersectSet:v3];
    v5 = sub_1000147E0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1000165E4();
    }
  }
}

void sub_10000A75C(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 32);
        v9 = [*(*(&v11 + 1) + 8 * v7) UUIDString];
        v10 = [WKWebsiteDataStore safari_dataStoreWithoutCachingForProfileWithIdentifier:v9];
        [v8 addObject:v10];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_10000A89C(uint64_t a1)
{
  v2 = sub_1000147E0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Waiting for WK to return data store identifiers.", buf, 2u);
  }

  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A9BC;
  block[3] = &unk_100029458;
  v8 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  *&v6 = v3;
  *(&v6 + 1) = v5;
  *&v7 = v8;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10000AC30(uint64_t a1)
{
  v2 = sub_1000147E0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Waiting to run block on all data stores.", buf, 2u);
  }

  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AD08;
  block[3] = &unk_100028D20;
  v4 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_10000AD08(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_10000AE2C(void *a1)
{
  reply = xpc_dictionary_create_reply(a1);
  xpc_dictionary_set_BOOL(reply, webBookmarksMessageReceivedAcknowledgementKey, 1);

  return reply;
}

void sub_10000AE78(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AF3C;
  block[3] = &unk_100029178;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  v9 = v2;
  v5 = v2;
  dispatch_async(&_dispatch_main_q, block);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_10000AF3C(uint64_t a1)
{
  v2 = xpc_dictionary_get_value(*(a1 + 32), kWebsiteDataRecordKey);
  v3 = [WBWebsiteDataRecord websiteDataRecordFromXPCDictionary:v2];
  v4 = sub_1000147E0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 domain];
    *buf = 138739971;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting website data record for domain %{sensitive}@", buf, 0xCu);
  }

  v7 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000B11C;
  v12[3] = &unk_1000294A8;
  v12[4] = v7;
  v13 = v3;
  v8 = v3;
  v9 = [v8 profileIdentifiers];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000B1D8;
  v10[3] = &unk_100028BB0;
  v11 = *(a1 + 48);
  [v7 _performBlock:v12 forAllDataStoresNeededForProfileIdentifiers:v9 completion:v10];
}

void sub_10000B11C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B1C8;
  v9[3] = &unk_100028D20;
  v10 = v5;
  v8 = v5;
  [v7 _deleteDataForWebsiteDataRecord:v6 websiteDataStore:a2 completion:v9];
}

void sub_10000B1D8(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));

  xpc_transaction_end();
}

void sub_10000B334(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 displayName];
        v12 = [v11 isEqualToString:*(a1 + 32)];

        if (v12)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  if (![v4 count])
  {
    v13 = sub_1000147E0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100016658();
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B550;
  block[3] = &unk_1000294D0;
  v14 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v17 = v14;
  v18 = v4;
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v15 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10000B76C(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B82C;
  block[3] = &unk_100029178;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v3;
  v7 = v2;
  v4 = v2;
  dispatch_async(&_dispatch_main_q, block);
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_10000B82C(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = sub_1000114E4();
  v4 = [v3 URLByAppendingPathComponent:@"ResourceLoadStatistics/full_browsing_session_resourceLog.plist" isDirectory:0];

  v5 = [v4 path];
  [v2 _web_removeFileOnlyAtPath:v5];

  v6 = +[WKWebsiteDataStore safari_allDataTypes];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000B998;
  v12[3] = &unk_100029570;
  v13 = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000BD2C;
  v10[3] = &unk_100028BB0;
  v11 = *(a1 + 48);
  v9 = v6;
  [v7 _performBlock:v12 forAllDataStoresNeededForProfileIdentifiers:v8 completion:v10];
}

void sub_10000B998(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = +[NSDate distantPast];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000BA94;
  v11[3] = &unk_100029548;
  v12 = v5;
  v13 = *(a1 + 32);
  v14 = v6;
  v9 = v6;
  v10 = v5;
  [v10 removeDataOfTypes:v7 modifiedSince:v8 completionHandler:v11];
}

void sub_10000BA94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000BB24;
  v3[3] = &unk_100029520;
  v4 = *(a1 + 48);
  [v1 fetchDataRecordsOfTypes:v2 completionHandler:v3];
}

void sub_10000BB24(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v16 = a1;
    v4 = sub_1000147E0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_100016694();
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        v9 = 0;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * v9);
          v11 = sub_1000147E0();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = v11;
            v13 = [v10 dataTypes];
            v14 = [v10 _dataSize];
            v15 = [v10 displayName];
            *buf = 138543875;
            v23 = v13;
            v24 = 2114;
            v25 = v14;
            v26 = 2117;
            v27 = v15;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "  Data types: %{public}@; Data size: %{public}@; Domain: %{sensitive}@", buf, 0x20u);
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
      }

      while (v7);
    }

    a1 = v16;
    v3 = v17;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000BD2C(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  sub_100013EEC();

  xpc_transaction_end();
}

void sub_10000BFB0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C054;
  block[3] = &unk_100029178;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  dispatch_sync(&_dispatch_main_q, block);
}

void sub_10000C054(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v3 = *(a1 + 40);
  v4 = [v3 _newWebsiteDataStore];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000C124;
  v6[3] = &unk_1000295C0;
  v7 = reply;
  v8 = *(a1 + 48);
  v5 = reply;
  [v3 _getSafariDataUsageSummaryWithWebsiteDataStore:v4 completion:v6];
}

void sub_10000C124(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C1D0;
  block[3] = &unk_100029598;
  v5 = *(a1 + 32);
  v7 = a2;
  v6 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10000C1D0(uint64_t a1)
{
  xpc_dictionary_set_uint64(*(a1 + 32), kWebDataUsageSizeKey, *(a1 + 48));
  v2 = sub_1000147E0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Result of querying website data usage: %llu stored", &v4, 0xCu);
  }

  [*(a1 + 40) sendMessage:*(a1 + 32)];
  xpc_transaction_end();
}

void sub_10000C388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C3A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v19;
    *&v5 = 138543362;
    v17 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = sub_1000147E0();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = v10;
          v12 = [v9 dataTypes];
          v13 = [v12 allObjects];
          v14 = [v13 componentsJoinedByString:{@", "}];
          *buf = v17;
          v23 = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Fetched website data record with data types: %{public}@", buf, 0xCu);
        }

        v15 = [v9 _dataSize];
        *(*(*(a1 + 40) + 8) + 24) += [v15 totalSize];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v6);
  }

  v16 = *(*(*(a1 + 40) + 8) + 24);
  (*(*(a1 + 32) + 16))();
}

void sub_10000C6E4(id a1, BOOL a2)
{
  v2 = a2;
  v3 = sub_100014574();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"failed";
    if (v2)
    {
      v4 = @"succeed";
    }

    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing scribble edits: %{public}@", &v5, 0xCu);
  }
}

void sub_10000C86C(id *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  if (v8)
  {
    v9 = sub_100014574();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000166D4(v9);
    }
  }

  else
  {
    v10 = a1[4];
    os_transaction_needs_more_time();
    v11 = +[NSDate date];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000CA54;
    v19[3] = &unk_100029630;
    v20 = 0;
    v21 = a1[4];
    v22 = a1[5];
    [v7 clearAllHistoryInsertingTombstoneUpToDate:v11 clearAllSpotlightHistoryForProfile:1 completionHandler:v19];

    if ([a1[6] _isCloudHistoryEnabled])
    {
      v12 = a1[5];
      v13 = +[CloudHistoryConfiguration sharedConfiguration];
      v14 = [v13 dictionaryRepresentation];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000CAF4;
      v15[3] = &unk_100029658;
      v16 = 0;
      v17 = a1[4];
      v18 = a1[5];
      [v12 initializeCloudHistoryWithConfiguration:v14 completionHandler:v15];
    }
  }
}

void sub_10000CA54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100014574();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001676C(a1, v5);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "History was cleared", v8, 2u);
    }

    v6 = *(a1 + 40);
    objc_opt_class();
    v7 = *(a1 + 48);
    objc_opt_class();
  }
}

void sub_10000CAF4(id *a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000CBB0;
  v4[3] = &unk_100029630;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  [a2 saveChangesBypassingThrottler:1 completionHandler:v4];
}

void sub_10000CBB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001447C();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001676C(a1, v5);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CloudHistory was saved", v8, 2u);
    }

    v6 = *(a1 + 40);
    objc_opt_class();
    v7 = *(a1 + 48);
    objc_opt_class();
  }
}

void sub_10000D2B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[WKWebsiteDataStore safari_allDataTypes];
  v8 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000D398;
  v11[3] = &unk_100028BD8;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  [v10 removeDataOfTypes:v7 modifiedSince:v8 completionHandler:v11];
}

uint64_t sub_10000D398(uint64_t a1)
{
  v2 = sub_100014574();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100016840(a1, v2);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_10000D3EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v18 = WBSHistoryConnectionOptionDatabaseID;
  v19 = v5;
  v8 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000D558;
  v12[3] = &unk_1000296D0;
  v13 = v5;
  v16 = v6;
  v9 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v17 = *(a1 + 64);
  v10 = v6;
  v11 = v5;
  [v7 connectWithOptions:v8 delegate:v9 completionHandler:v12];
}

void sub_10000D558(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  if (a2)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000D670;
    v12[3] = &unk_1000296A8;
    v13 = *(a1 + 32);
    v14 = *(a1 + 56);
    [a2 clearHistoryVisitsAddedAfterDate:v8 beforeDate:v9 tombstoneMode:1 clearAllSpotlightHistoryForProfile:v10 completionHandler:v12];
  }

  else
  {
    v11 = sub_100014574();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000168E0(a1, v11);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_10000D670(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100014574();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001697C(a1, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100016A18(a1, v5);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10000D6FC(id *a1)
{
  if ([a1[4] _isCloudHistoryEnabled])
  {
    v2 = a1[5];
    v3 = +[CloudHistoryConfiguration sharedConfiguration];
    v4 = [v3 dictionaryRepresentation];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000D7E0;
    v5[3] = &unk_100029748;
    v6 = a1[6];
    v7 = a1[5];
    [v2 initializeCloudHistoryWithConfiguration:v4 completionHandler:v5];
  }
}

void sub_10000D7E0(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000D888;
  v4[3] = &unk_100029720;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 saveChangesBypassingThrottler:1 completionHandler:v4];
}

void sub_10000D888(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10001447C();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100016A94(v5);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CloudHistory was saved", v8, 2u);
    }

    v6 = *(a1 + 32);
    objc_opt_class();
    v7 = *(a1 + 40);
    objc_opt_class();
  }
}

void sub_10000D930(uint64_t a1, void *a2)
{
  v3 = [a2 allKeys];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000DA34;
  v6[3] = &unk_100029770;
  v7 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000DB00;
  v4[3] = &unk_100028D20;
  v5 = *(a1 + 40);
  [v3 safari_enumerateAsynchronouslyOnQueue:&_dispatch_main_q enumerationBlock:v6 completionBlock:v4];
}

void sub_10000DA34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000DAEC;
  v10[3] = &unk_100028D20;
  v11 = v6;
  v8 = *(v7 + 16);
  v9 = v6;
  v8(v7, a2, v10);
}

uint64_t sub_10000DB00(uint64_t a1)
{
  v2 = sub_100014574();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "History was cleared", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10000DB74(id a1)
{
  v1 = sub_1000147E0();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Website Data was cleared for all profiles", v2, 2u);
  }
}

void sub_10000DBD4(id a1)
{
  v1 = sub_1000147E0();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Website Data was cleared for selected profiles", v2, 2u);
  }
}

void sub_10000DC34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000DCEC;
  v10[3] = &unk_100028D20;
  v11 = v6;
  v8 = *(v7 + 16);
  v9 = v6;
  v8(v7, a2, v10);
}

uint64_t sub_10000DD00(uint64_t a1)
{
  v2 = sub_100014574();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "History was cleared", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10000E078(uint64_t a1)
{
  v2 = *(a1 + 48);
  sandbox_extension_release();
  v3 = *(a1 + 32);
  v4 = sub_10000AE2C(*(a1 + 40));
  [v3 sendMessage:v4];
}

void sub_10000E5C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10000AE2C(*(a1 + 40));
  [v1 sendMessage:v2];
}

uint64_t sub_10000E8C0(uint64_t a1)
{
  v2 = *(a1 + 40);
  sandbox_extension_release();
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_10000E904(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = v7;
  if (!a2 || v7)
  {
    v10 = sub_1000148D8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100016CE4(a1, v10);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v9 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000EA1C;
    v11[3] = &unk_100029828;
    v14 = *(a1 + 64);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    [a2 exportHistory:v9 completionHandler:v11];
  }
}

void sub_10000EA1C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1000148D8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100016C4C(v4);
    }
  }

  (*(*(a1 + 48) + 16))();
}

uint64_t sub_10000EEC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000EED8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = v8;
  if (!v7 || v8)
  {
    v13 = sub_1000148D8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100016CE4(a1, v13);
    }

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v10 = +[NSDate distantPast];
    v11 = +[NSDate distantFuture];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000F018;
    v15[3] = &unk_100029878;
    v15[4] = *(a1 + 32);
    v14 = *(a1 + 40);
    v12 = v14;
    v16 = v14;
    [v7 getHighLevelHTTPFamilyDomainsVisitedAfterDate:v10 beforeDate:v11 onlyFromThisDevice:0 completionHandler:v15];
  }
}

void sub_10000F018(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v7 = sub_1000148D8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100016DD8(a1, v7);
    }
  }

  else
  {
    [*(*(*(a1 + 48) + 8) + 40) unionSet:a2];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_10000F0A0(uint64_t a1)
{
  xdict = sub_10000AE2C(*(a1 + 32));
  xpc_dictionary_set_uint64(xdict, kWebBookmarksNumberOfHistorySitesToBeExportedKey, [*(*(*(a1 + 64) + 8) + 40) count]);
  [*(a1 + 40) sendMessage:xdict];
}

void sub_10000F368(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_10001485C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100016FA4(v7);
    }
  }

  v12 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:0 error:&v12];
  v9 = v12;
  if (v9)
  {
    v10 = sub_10001485C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001703C(v10);
    }
  }

  v11 = sub_10000AE2C(*(a1 + 32));
  if (v8)
  {
    xpc_dictionary_set_data(v11, kWebBookmarksImportURLsResultKey, [v8 bytes], objc_msgSend(v8, "length"));
  }

  [*(a1 + 40) sendMessage:v11];
}

void sub_10000F6A0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_10001485C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000170D4(v4);
    }
  }

  if (!--*(*(a1 + 32) + 64))
  {
    v5 = +[WebBookmarkCollection safariBookmarkCollection];
    [v5 postBookmarksDidReloadNotification];
  }

  v6 = sub_10000AE2C(*(a1 + 40));
  xpc_dictionary_set_uint64(v6, kWebBookmarksImportBookmarksItemsCountKey, [*(a1 + 48) numberOfBookmarksImported]);
  [*(a1 + 56) sendMessage:v6];
}

void sub_10000F960(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AE2C(*(a1 + 32));
  xpc_dictionary_set_uint64(v4, kWebBookmarksImportHistoryItemsCountKey, a2);
  [*(a1 + 40) sendMessage:v4];
}

void sub_10000FB5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = v7;
  if (!a2 || v7)
  {
    v14 = sub_10001485C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100016CE4(a1, v14);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000FCD0;
    v15[3] = &unk_100029968;
    v16 = *(a1 + 32);
    v17 = 0;
    v9 = *(a1 + 64);
    v21 = *(a1 + 80);
    v10 = *(a1 + 40);
    v20 = *(a1 + 72);
    v11 = *(a1 + 48);
    *&v12 = *(a1 + 56);
    *(&v12 + 1) = v9;
    *&v13 = v10;
    *(&v13 + 1) = v11;
    v18 = v13;
    v19 = v12;
    [a2 startImportHistorySessionWithVisitTimePrecision:1000000 completionHandler:v15];
  }
}

void sub_10000FCD0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5 || a3)
  {
    v16 = sub_10001485C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10001716C(a1, v16);
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v6 = objc_alloc_init(WBSBrowsingDataImportServiceProxy);
    if (*(a1 + 88) == 1)
    {
      v7 = [[WBSChromeHistoryImporterDelegateProxy alloc] initWithDelegate:v5];
      v8 = *(a1 + 80);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10000FF24;
      v26[3] = &unk_100029940;
      v9 = &v27;
      v10 = *(a1 + 48);
      v27 = *(a1 + 56);
      v11 = &v28;
      v28 = *(a1 + 64);
      v12 = &v30;
      v13 = *(a1 + 72);
      v14 = &v29;
      v29 = v7;
      v30 = v13;
      v15 = v7;
      [v6 parseChromeHistoryJSONFromFileHandle:v10 ageLimit:v15 delegate:v26 completionHandler:v8];
    }

    else
    {
      v17 = [[WBSHistoryImporterDelegateProxy alloc] initWithDelegate:v5];
      v18 = *(a1 + 80);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10000FF9C;
      v21[3] = &unk_100029940;
      v9 = &v22;
      v19 = *(a1 + 48);
      v22 = *(a1 + 56);
      v11 = &v23;
      v23 = *(a1 + 64);
      v12 = &v25;
      v20 = *(a1 + 72);
      v14 = &v24;
      v24 = v17;
      v25 = v20;
      v15 = v17;
      [v6 parseHistoryJSONFromFileHandle:v19 ageLimit:v15 delegate:v21 completionHandler:v18];
    }
  }
}

void sub_10000FF24(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_10001485C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001720C(v4);
    }
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), [*(a1 + 48) numberOfVisitImported]);
}

void sub_10000FF9C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_10001485C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000172A4(v4);
    }
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), [*(a1 + 48) numberOfVisitImported]);
}

void sub_100010170(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10000AE2C(*(a1 + 40));
  [v1 sendMessage:v2];
}

void sub_1000102C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_10001485C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001733C(v4);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100010540(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AE2C(*(a1 + 32));
  xpc_dictionary_set_uint64(v4, kWebBookmarksImportChromeHistoryItemsCountKey, a2);
  [*(a1 + 40) sendMessage:v4];
}

void sub_1000106F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10000AE2C(*(a1 + 40));
  [v1 sendMessage:v2];
}

void sub_100010848(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_10001485C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000173D4(v4);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000109D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10000AE2C(*(a1 + 40));
  [v1 sendMessage:v2];
}

void sub_100010B24(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_10001485C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001733C(v4);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100010EB0(void **a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_10001485C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001746C(v4);
    }
  }

  v5 = sub_10000AE2C(a1[4]);
  xpc_dictionary_set_uint64(v5, kWebBookmarksComputeNumberOfItemsToBeImportedResultKey, [a1[5] numberOfItemsToBeImported]);
  [a1[6] sendMessage:v5];
}

id sub_1000114E4()
{
  v0 = _SFSafariContainerPath();
  v1 = [NSURL fileURLWithPath:v0 isDirectory:1];
  v2 = [WKProcessPool _websiteDataURLForContainerWithURL:v1 bundleIdentifierIfNotInContainer:@"com.apple.mobilesafari"];

  return v2;
}

void sub_1000115B4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_1000115DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  return a2;
}

void sub_1000115F4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_100011AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100011AE4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = sub_100014764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "System app migration completed, checking Safari status", buf, 2u);
  }

  if (v3)
  {
    v6 = sub_100014764();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100017694(v6, v3);
    }
  }

  else
  {
    v7 = +[LSApplicationWorkspace defaultWorkspace];
    [v7 addObserver:WeakRetained];

    if ((+[NSBundle safari_isMobileSafariInstalled]& 1) == 0)
    {
      v8 = sub_100014764();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Safari was uninstalled on daemon initialization", v17, 2u);
      }

      [WeakRetained _safariWasUninstalled];
    }

    v9 = [NSString stringWithUTF8String:getenv("HOME")];
    if (!v9 || (v10 = v9, ![v9 length]))
    {
      v13 = sub_100014400();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10001773C(v13);
      }

      exit(1);
    }

    v16 = 0;
    v11 = +[NSFileManager defaultManager];
    v12 = [v11 fileExistsAtPath:v10 isDirectory:&v16];

    if (!v12 || (v16 & 1) == 0)
    {
      v14 = sub_100014400();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Safari home directory path is not a valid path. Exiting to try again.", v15, 2u);
      }

      exit(0);
    }
  }
}

void sub_100011D90(id a1)
{
  qword_10002E930 = objc_alloc_init(WebBookmarksApplicationObserver);

  _objc_release_x1();
}

void sub_100012334(char a1, void *a2, const char *a3)
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100013020;
  handler[3] = &unk_100029B18;
  v8 = a1;
  v6 = a2;
  v7 = a3;
  v4 = v6;
  xpc_activity_register(a3, XPC_ACTIVITY_CHECK_IN, handler);
}

void sub_1000125B4(char a1, void *a2, const char *a3, void *a4)
{
  v7 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100012868;
  v10[3] = &unk_100029AA8;
  v14 = a1;
  v12 = a4;
  v13 = a3;
  v11 = v7;
  v8 = v12;
  v9 = v7;
  xpc_activity_register(a3, XPC_ACTIVITY_CHECK_IN, v10);
}

void sub_10001268C(id a1, id a2)
{
  v2 = a2;
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012738;
  block[3] = &unk_100028D20;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void sub_100012738(uint64_t a1)
{
  v2 = +[WBCollectionConfiguration safariBookmarkCollectionConfiguration];
  [v2 setSkipsExternalNotifications:1];
  v3 = [[WebBookmarkCollection alloc] initWithConfiguration:v2 checkIntegrity:1];
  v4 = sub_100014400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Performing 'vaccum' on WebBookmarkCollection during database maintenance", buf, 2u);
  }

  v5 = [v3 vacuum];
  v6 = sub_100014400();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully finished 'vacuum' on WebBookmarkCollection during database maintenance", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100017794();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100012868(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state != 2)
  {
    if (!state)
    {
      v5 = sub_100014400();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        *buf = 138543362;
        v34 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checked In %{public}@ activity", buf, 0xCu);
      }

      v7 = xpc_activity_copy_criteria(v3);
      if (!v7)
      {
        v8 = *(a1 + 56);
        v9 = sub_100014400();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        if (v8 == 1)
        {
          if (v10)
          {
            v11 = *(a1 + 32);
            *buf = 138543362;
            v34 = v11;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No prior %{public}@ activity was found. Registering a new one", buf, 0xCu);
          }

          v12 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_BOOL(v12, XPC_ACTIVITY_REPEATING, 1);
          xpc_dictionary_set_string(v12, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
          xpc_dictionary_set_BOOL(v12, XPC_ACTIVITY_ALLOW_BATTERY, 0);
          xpc_dictionary_set_BOOL(v12, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
          xpc_dictionary_set_BOOL(v12, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 0);
          xpc_dictionary_set_int64(v12, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_30_MIN);
          xpc_dictionary_set_int64(v12, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_30_MIN);
          xpc_dictionary_set_int64(v12, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_HOUR);
          xpc_activity_set_criteria(v3, v12);
        }

        else
        {
          if (v10)
          {
            v25 = *(a1 + 32);
            *buf = 138543362;
            v34 = v25;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No prior %{public}@ activity was found and registration is not requested", buf, 0xCu);
          }

          xpc_activity_unregister(*(a1 + 48));
        }
      }
    }

    goto LABEL_26;
  }

  v13 = sub_100014400();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    *buf = 138543362;
    v34 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Running %{public}@ activity", buf, 0xCu);
  }

  if (!xpc_activity_set_state(v3, 4))
  {
    v22 = sub_100014400();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000177C8(a1, v22);
    }

    v23 = v3;
    v24 = 3;
    goto LABEL_21;
  }

  [WebBookmarkCollection holdLockSync:off_10002E8A8];
  v15 = +[WebBookmarkCollection isLockedSync];
  if ((v15 & 1) == 0 && (+[WebBookmarkCollection lockSync]& 1) == 0)
  {
    v26 = sub_100014400();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 32);
      *buf = 138543362;
      v34 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Failed to acquire the sync lock. Deferring %{public}@ activity", buf, 0xCu);
    }

    [WebBookmarkCollection unholdLockSync:off_10002E8A8];
    v23 = v3;
    v24 = 5;
LABEL_21:
    xpc_activity_set_state(v23, v24);
    goto LABEL_26;
  }

  v16 = v15 ^ 1;
  v17 = sub_100014400();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 32);
    *buf = 138543362;
    v34 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Performing %{public}@ activity", buf, 0xCu);
  }

  xpc_transaction_begin();
  v19 = *(a1 + 40);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100012CEC;
  v28[3] = &unk_100029A80;
  v32 = v16;
  v20 = v3;
  v21 = *(a1 + 48);
  v29 = v20;
  v31 = v21;
  v30 = *(a1 + 32);
  (*(v19 + 16))(v19, v28);

LABEL_26:
}

void sub_100012CEC(uint64_t a1, int a2)
{
  if (*(a1 + 56) == 1)
  {
    +[WebBookmarkCollection unlockSync];
  }

  [WebBookmarkCollection unholdLockSync:off_10002E8A8];
  xpc_activity_set_state(*(a1 + 32), 5);
  if (a2)
  {
    xpc_activity_unregister(*(a1 + 48));
    v4 = sub_100014400();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v8 = 138543362;
      v9 = v5;
      v6 = "Finished %{public}@ activity";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, &v8, 0xCu);
    }
  }

  else
  {
    v4 = sub_100014400();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = 138543362;
      v9 = v7;
      v6 = "Deferring %{public}@ activity because it did not complete";
      goto LABEL_8;
    }
  }

  xpc_transaction_end();
}

void sub_100012E18(id a1, id a2)
{
  v2 = a2;
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012EC4;
  block[3] = &unk_100028D20;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void sub_100012EC4(uint64_t a1)
{
  v2 = +[WBCollectionConfiguration safariBookmarkCollectionConfiguration];
  [v2 setSkipsExternalNotifications:1];
  v3 = [[WebBookmarkCollection alloc] initWithConfiguration:v2 checkIntegrity:0];
  v4 = [v3 migrateReadingListIconsFromDatabaseToBookmarkImagesDirectory];
  v5 = sub_1000146E8();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully migrated Reading List icons", buf, 2u);
    }

    v7 = [v3 cleanUpReadingListArchives];
    v8 = sub_1000146E8();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully cleaned up Reading List archives", v10, 2u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100017878();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100017844();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100013020(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state != 2)
  {
    if (!state)
    {
      v5 = sub_10001466C();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checked In password icons cleanup activity", buf, 2u);
      }

      v6 = xpc_activity_copy_criteria(v3);
      if (!v6)
      {
        v7 = *(a1 + 48);
        v8 = sub_10001466C();
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        if (v7 == 1)
        {
          if (v9)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No prior password icons cleanup activity was found. Registering a new one", buf, 2u);
          }

          xpc_activity_set_criteria(v3, *(a1 + 32));
        }

        else
        {
          if (v9)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No prior password icons cleanup activity was found and registration is not requested", buf, 2u);
          }

          xpc_activity_unregister(*(a1 + 40));
        }
      }
    }

    goto LABEL_31;
  }

  v10 = sub_10001466C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Running password icons cleanup activity", buf, 2u);
  }

  v11 = xpc_activity_set_state(v3, 4);
  v12 = sub_10001466C();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Performing password icons cleanup activity", buf, 2u);
    }

    xpc_transaction_begin();
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100013688;
    v44[3] = &unk_100029AF0;
    v45 = v3;
    v14 = v44;
    v15 = sub_10001466C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Starting Password Icon Cleanup", buf, 2u);
    }

    v16 = _SFSafariIconImageCacheDirectoryPath();
    v17 = [NSURL fileURLWithPath:v16 isDirectory:1];

    v43 = v17;
    v18 = [[_SFSiteMetadataManager alloc] initWithInjectedBundleURL:0 imageCacheDirectoryURL:v17 cacheIsReadOnly:1 metadataType:4];
    v19 = [v18 savedAccountTouchIconCache];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10001372C;
    v61[3] = &unk_100028DC0;
    v42 = v18;
    v62 = v42;
    v20 = v14;
    v63 = v20;
    v21 = objc_retainBlock(v61);
    v22 = +[NSFileManager defaultManager];
    v23 = [v19 imageDirectoryURL];
    v60 = 0;
    v24 = [v22 contentsOfDirectoryAtURL:v23 includingPropertiesForKeys:0 options:0 error:&v60];
    v25 = v60;

    if (v25)
    {
      v26 = sub_10001466C();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000178E0(v26, v25);
      }
    }

    else
    {
      if ([v24 count])
      {
        v40 = [v19 uuidStringToHost];
        v38 = [[WBSSavedAccountStore alloc] initAndPrewarmSavedAccounts:1 forTesting:0];
        v27 = [v38 highLevelDomainsOfAllSavedAccountsExcludingNeverSaveMarkerPasswords];
        v28 = [v38 highLevelDomainsOfRecentlyDeletedAccounts];
        v29 = [v27 setByAddingObjectsFromSet:v28];

        v30 = +[NSMutableArray array];
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_100013820;
        v55[3] = &unk_100029B68;
        v56 = v24;
        v57 = v40;
        v58 = v22;
        v31 = v30;
        v59 = v31;
        v39 = v40;
        v41 = v20;
        v32 = objc_retainBlock(v55);
        v33 = dispatch_get_global_queue(21, 0);
        *buf = _NSConcreteStackBlock;
        v47 = 3221225472;
        v48 = sub_100013B00;
        v49 = &unk_100029B90;
        v53 = v21;
        v54 = v32;
        v50 = v29;
        v51 = v19;
        v52 = v31;
        v34 = v32;
        v35 = v29;
        v37 = v31;
        [v38 performTaskEnsuringAllAccountSourcesAreLoadedOnQueue:v33 task:buf];

        v20 = v41;
        goto LABEL_30;
      }

      v36 = sub_10001466C();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Finished cleaning up password icons successfully since there are no password icons", buf, 2u);
      }
    }

    (v21[2])(v21, 0);
LABEL_30:

    goto LABEL_31;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1000178AC();
  }

  xpc_activity_set_state(v3, 3);
LABEL_31:
}

void sub_100013688(uint64_t a1, int a2)
{
  v4 = sub_10001466C();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished password icons cleanup activity", v7, 2u);
    }

    v6 = 5;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100017988();
    }

    v6 = 3;
  }

  xpc_activity_set_state(*(a1 + 32), v6);
  xpc_transaction_end();
}

void sub_10001372C(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000137D8;
  block[3] = &unk_100029B40;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_1000137D8(uint64_t a1)
{
  [*(a1 + 32) savePendingProviderChangesBeforeTermination];
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100013820(uint64_t a1, void *a2)
{
  v3 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v27;
    *&v5 = 141558275;
    v22 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [v9 URLByDeletingPathExtension];
        v11 = [v10 lastPathComponent];

        v12 = [*(a1 + 40) objectForKeyedSubscript:v11];
        if (v12)
        {
          if ([v3 containsObject:v12])
          {
            goto LABEL_20;
          }

          v13 = *(a1 + 48);
          v24 = 0;
          v14 = [v13 removeItemAtURL:v9 error:&v24];
          v15 = v24;
          if ((v14 & 1) == 0)
          {
            v16 = sub_10001466C();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              sub_1000179BC(&v30, v16, v15, &v31);
            }
          }

          v17 = sub_10001466C();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v22;
            v33 = 1752392040;
            v34 = 2117;
            v35 = v9;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removed Icon because no saved password for this domain, URL=%{sensitive, mask.hash}@", buf, 0x16u);
          }

          [*(a1 + 56) addObject:v12];
        }

        else
        {
          v18 = *(a1 + 48);
          v25 = 0;
          v19 = [v18 removeItemAtURL:v9 error:&v25];
          v15 = v25;
          if ((v19 & 1) == 0)
          {
            v20 = sub_10001466C();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_100017A30(&v36, v20, v15, &v37);
            }
          }

          v21 = sub_10001466C();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v22;
            v33 = 1752392040;
            v34 = 2117;
            v35 = v9;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Removed Icon because no entry in our cache settings for this UUID, URL=%{sensitive, mask.hash}@", buf, 0x16u);
          }
        }

LABEL_20:
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v6);
  }
}

void sub_100013B00(uint64_t a1)
{
  v2 = +[WBSKeyBagLockStatusManager sharedManager];
  v3 = [v2 keyBagLockStatus];

  if (v3)
  {
    v4 = sub_10001466C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100017AA4();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(a1 + 32);
    (*(*(a1 + 64) + 16))();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100013C0C;
    v8[3] = &unk_100028D20;
    v9 = *(a1 + 56);
    [v6 removeTouchIconMetadataForHosts:v7 completionHandler:v8];
  }
}

void sub_100013C20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, v4, 0xCu);
}

id sub_100013C40()
{
  if (qword_10002E948 != -1)
  {
    sub_100017AD8();
  }

  v1 = qword_10002E940;

  return v1;
}

void sub_100013C84(id a1)
{
  v1 = _SFSafariContainerPath();
  v4 = v1;
  if (v1)
  {
    [v1 stringByAppendingPathComponent:@"Library"];
  }

  else
  {
    sub_100013CF0();
  }
  v2 = ;
  v3 = qword_10002E940;
  qword_10002E940 = v2;
}

id sub_100013CF0()
{
  if (qword_10002E958 != -1)
  {
    sub_100017AEC();
  }

  v1 = qword_10002E950;

  return v1;
}

void sub_100013D34(id a1)
{
  qword_10002E950 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library"];

  _objc_release_x1();
}

uint64_t sub_100013D78(void *a1)
{
  v1 = a1;
  if (![v1 length])
  {
    goto LABEL_12;
  }

  v2 = [v1 UTF8String];
  *v10 = xmmword_10001CBA8;
  v11 = 0;
  size = 0;
  v3 = sysctl(v10, 3u, 0, &size, 0, 0);
  if (!v3)
  {
    v4 = malloc_type_malloc(size, 0x10B2040B74D5165uLL);
    v5 = sysctl(v10, 3u, v4, &size, 0, 0);
    if (v5)
    {
      v3 = v5;
LABEL_5:
      free(v4);
      goto LABEL_13;
    }

    if (size >= 0x288)
    {
      v6 = size / 0x288;
      v7 = v4 + 243;
      do
      {
        v3 = *(v7 - 203);
        if (v3 >= 1 && !strncmp(v2, v7, 0x10uLL))
        {
          goto LABEL_5;
        }

        v7 += 648;
      }

      while (--v6);
    }

    free(v4);
LABEL_12:
    v3 = 0xFFFFFFFFLL;
  }

LABEL_13:

  return v3;
}

void sub_100013FFC(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  state = xpc_activity_get_state(v2);
  v4 = sub_100014384();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (state == 2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Running backup activity", buf, 2u);
    }

    v9 = objc_alloc_init(CloudTabStore);
    [(CloudTabStore *)v9 synchronizeCloudTabDevices];
    if ([(CloudTabStore *)v9 canSaveCloudTabsForCurrentDevice])
    {
      if (xpc_activity_set_state(v2, 4))
      {
        xpc_transaction_begin();
        v10 = [WBTabCollection alloc];
        v11 = +[WBCollectionConfiguration safariTabCollectionConfiguration];
        v12 = [v10 initWithConfiguration:v11 openDatabase:1];

        v13 = [v12 browserState];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10001429C;
        v16[3] = &unk_100029720;
        v17 = v9;
        v18 = v2;
        [(CloudTabStore *)v17 saveCurrentDeviceTabsFromBrowserState:v13 syncCompletionHandler:v16];

LABEL_19:
        goto LABEL_20;
      }

      v15 = sub_100014384();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100017B00(v15);
      }
    }

    else
    {
      v14 = sub_100014384();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Backup activity finished. No need to sync CloudTabs from this device during backup", buf, 2u);
      }
    }

    xpc_activity_set_completion_status();
    goto LABEL_19;
  }

  if (state)
  {
    if (v5)
    {
      *buf = 134217984;
      v20 = state;
      v6 = "Current activity state is %ld. Not taking any action until the activity state is Run";
      v7 = v4;
      v8 = 12;
      goto LABEL_12;
    }
  }

  else if (v5)
  {
    *buf = 0;
    v6 = "Checked In backup activity";
    v7 = v4;
    v8 = 2;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
  }

LABEL_20:
}

void sub_10001429C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100014384();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 safari_privacyPreservingDescription];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished syncing CloudTabs during device backup (error: %{public}@)", &v8, 0xCu);
  }

  v7 = *(a1 + 40);
  xpc_activity_set_completion_status();
  xpc_transaction_end();
}

uint64_t sub_100014384()
{
  if (qword_10002E968 != -1)
  {
    sub_100017B44();
  }

  return qword_10002E960;
}

void sub_1000143BC(id a1)
{
  qword_10002E960 = os_log_create("com.apple.mobilesafari", "Backup");

  _objc_release_x1();
}

uint64_t sub_100014400()
{
  if (qword_10002E978 != -1)
  {
    sub_100017B58();
  }

  return qword_10002E970;
}

void sub_100014438(id a1)
{
  qword_10002E970 = os_log_create("com.apple.mobilesafari", "Bookmarks");

  _objc_release_x1();
}

uint64_t sub_10001447C()
{
  if (qword_10002E988 != -1)
  {
    sub_100017B6C();
  }

  return qword_10002E980;
}

void sub_1000144B4(id a1)
{
  qword_10002E980 = os_log_create("com.apple.mobilesafari", "CloudHistory");

  _objc_release_x1();
}

uint64_t sub_1000144F8()
{
  if (qword_10002E998 != -1)
  {
    sub_100017B80();
  }

  return qword_10002E990;
}

void sub_100014530(id a1)
{
  qword_10002E990 = os_log_create("com.apple.mobilesafari", "CloudTabs");

  _objc_release_x1();
}

uint64_t sub_100014574()
{
  if (qword_10002E9A8 != -1)
  {
    sub_100017B94();
  }

  return qword_10002E9A0;
}

void sub_1000145AC(id a1)
{
  qword_10002E9A0 = os_log_create("com.apple.mobilesafari", "History");

  _objc_release_x1();
}

uint64_t sub_1000145F0()
{
  if (qword_10002E9B8 != -1)
  {
    sub_100017BA8();
  }

  return qword_10002E9B0;
}

void sub_100014628(id a1)
{
  qword_10002E9B0 = os_log_create("com.apple.mobilesafari", "Other");

  _objc_release_x1();
}

uint64_t sub_10001466C()
{
  if (qword_10002E9C8 != -1)
  {
    sub_100017BBC();
  }

  return qword_10002E9C0;
}

void sub_1000146A4(id a1)
{
  qword_10002E9C0 = os_log_create("com.apple.mobilesafari", "PasswordsIcons");

  _objc_release_x1();
}

uint64_t sub_1000146E8()
{
  if (qword_10002E9D8 != -1)
  {
    sub_100017BD0();
  }

  return qword_10002E9D0;
}

void sub_100014720(id a1)
{
  qword_10002E9D0 = os_log_create("com.apple.mobilesafari", "ReadingList");

  _objc_release_x1();
}

uint64_t sub_100014764()
{
  if (qword_10002E9E8 != -1)
  {
    sub_100017BE4();
  }

  return qword_10002E9E0;
}

void sub_10001479C(id a1)
{
  qword_10002E9E0 = os_log_create("com.apple.mobilesafari", "SafariDeletion");

  _objc_release_x1();
}

uint64_t sub_1000147E0()
{
  if (qword_10002E9F8 != -1)
  {
    sub_100017BF8();
  }

  return qword_10002E9F0;
}

void sub_100014818(id a1)
{
  qword_10002E9F0 = os_log_create("com.apple.mobilesafari", "WebsiteData");

  _objc_release_x1();
}

uint64_t sub_10001485C()
{
  if (qword_10002EA08 != -1)
  {
    sub_100017C0C();
  }

  return qword_10002EA00;
}

void sub_100014894(id a1)
{
  qword_10002EA00 = os_log_create("com.apple.mobilesafari", "Import");

  _objc_release_x1();
}

uint64_t sub_1000148D8()
{
  if (qword_10002EA18 != -1)
  {
    sub_100017C20();
  }

  return qword_10002EA10;
}

void sub_100014910(id a1)
{
  qword_10002EA10 = os_log_create("com.apple.mobilesafari", "Export");

  _objc_release_x1();
}

id sub_100014B48()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 0);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_MIN / 4);

  return v0;
}

void sub_100014C38(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    if (qword_10002E9D8 != -1)
    {
      sub_100017BD0();
    }

    v9 = qword_10002E9D0;
    if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Running restore reading list queue activity", buf, 2u);
    }

    if (xpc_activity_set_state(v3, 4))
    {
      if (qword_10002E9D8 != -1)
      {
        sub_100017C34();
      }

      v10 = qword_10002E9D0;
      if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Performing restore reading list queue activity", buf, 2u);
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100014EC8;
      v11[3] = &unk_100029150;
      v11[4] = *(a1 + 32);
      v12 = v3;
      dispatch_async(&_dispatch_main_q, v11);
    }

    else
    {
      if (qword_10002E9D8 != -1)
      {
        sub_100017C34();
      }

      if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_ERROR))
      {
        sub_100017C5C();
      }

      xpc_activity_set_state(v3, 3);
    }
  }

  else if (!state)
  {
    if (qword_10002E9D8 != -1)
    {
      sub_100017BD0();
    }

    v5 = qword_10002E9D0;
    if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checked in restore reading list queue activity", buf, 2u);
    }

    v6 = xpc_activity_copy_criteria(v3);
    if (!v6)
    {
      if (qword_10002E9D8 != -1)
      {
        sub_100017C34();
      }

      v7 = qword_10002E9D0;
      if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Registering restore reading list queue activity", buf, 2u);
      }

      v8 = sub_100014B48();
      xpc_activity_set_criteria(v3, v8);
    }
  }
}

id sub_100014EC8(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _restoreReadingListQueueIfNeeded];
}

uint64_t sub_1000153D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = kWebBookmarksAddressKey;
  v5 = a3;
  string = xpc_dictionary_get_string(v5, v4);
  v7 = xpc_dictionary_get_string(v5, kWebBookmarksTitleKey);
  v8 = xpc_dictionary_get_string(v5, kWebBookmarksPreviewTextKey);
  v9 = xpc_dictionary_get_string(v5, kWebBookmarksClientBundleIDKey);

  if (string)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && v8 != 0)
  {
    if (!*v7)
    {
      v7 = string;
    }

    v12 = *(a1 + 32);
    v13 = [NSString stringWithUTF8String:string];
    v14 = [NSString stringWithUTF8String:v7];
    v15 = [NSString stringWithUTF8String:v8];
    if (v9)
    {
      v16 = [NSString stringWithUTF8String:v9];
    }

    else
    {
      v16 = 0;
    }

    v17 = [*(a1 + 32) _collection];
    [v12 _addReadingListItemWithAddress:v13 title:v14 previewText:v15 clientBundle:v16 bookmarksCollection:v17];

    if (v9)
    {
    }
  }

  return 1;
}

void sub_100015F40(uint64_t a1)
{
  v4 = xpc_array_create(0, 0);
  xpc_array_append_value(v4, *(a1 + 32));
  v2 = +[WebBookmarkCollection lockSync];
  v3 = *(a1 + 40);
  if (v2)
  {
    [v3 _commitReadingListQueue];
    [*(a1 + 40) _addItemsToReadingList:v4];
    +[WebBookmarkCollection unlockSync];
  }

  else
  {
    [v3 _queueReadingListItems:v4];
  }
}

void sub_100015FD0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = 0;

  if (a2 == 2)
  {
    if (qword_10002E9D8 != -1)
    {
      sub_100017BD0();
    }

    v6 = qword_10002E9D0;
    if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "User declined to add an item to the Reading List", buf, 2u);
    }
  }

  else
  {
    if (qword_10002E9D8 != -1)
    {
      sub_100017BD0();
    }

    v7 = qword_10002E9D0;
    if (os_log_type_enabled(qword_10002E9D0, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "User opted to add an item to the Reading List", v8, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000163B0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 url];
  v5 = 138477827;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Tab URL: %{private}@", &v5, 0xCu);
}

void sub_1000164F4()
{
  sub_1000050FC();
  sub_1000115D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100016530()
{
  sub_1000050FC();
  sub_1000115D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100016658()
{
  sub_1000050FC();
  sub_1000115D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000166D4(void *a1)
{
  v2 = a1;
  v3 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_1000115A8();
  sub_10001158C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001676C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_1000115A8();
  sub_10001158C();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

void sub_100016804()
{
  sub_1000050FC();
  sub_1000115D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100016840(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [sub_10001159C() identifier];
  sub_1000115A8();
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Clear website data for profile %{public}@", v6, 0xCu);
}

void sub_1000168E0(uint64_t a1, void *a2)
{
  sub_1000115DC(a1, a2);
  v3 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_100011574();
  sub_10001158C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10001697C(uint64_t a1, void *a2)
{
  sub_1000115DC(a1, a2);
  v3 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_100011574();
  sub_10001158C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100016A18(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138477827;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Cleared history for profile %{private}@", &v3, 0xCu);
}

void sub_100016A94(void *a1)
{
  v2 = a1;
  v3 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_1000115A8();
  sub_10001158C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100016B2C(void *a1)
{
  v2 = a1;
  v3 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_1000115A8();
  sub_10001158C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100016BC4(void *a1)
{
  v1 = a1;
  v2 = *__error();
  sub_1000115F4(&_mh_execute_header, v3, v4, "Failed to consume extension: %{errno}i", v5, v6, v7, v8, 0);
}

void sub_100016C4C(void *a1)
{
  v2 = a1;
  v3 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_1000115A8();
  sub_10001158C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100016CE4(uint64_t a1, void *a2)
{
  sub_1000115DC(a1, a2);
  v3 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_100011574();
  sub_10001158C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100016D80(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to read the profile identifiers: %{public}@", buf, 0xCu);
}

void sub_100016DD8(uint64_t a1, void *a2)
{
  sub_1000115DC(a1, a2);
  v3 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_100011574();
  sub_10001158C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100016E74(void *a1)
{
  v2 = a1;
  v3 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_1000115A8();
  sub_10001158C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100016F0C(void *a1)
{
  v2 = a1;
  v3 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_1000115A8();
  sub_10001158C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100016FA4(void *a1)
{
  v2 = a1;
  v3 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_1000115A8();
  sub_10001158C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001703C(void *a1)
{
  v2 = a1;
  v3 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_1000115A8();
  sub_10001158C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000170D4(void *a1)
{
  v2 = a1;
  v3 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_1000115A8();
  sub_10001158C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001716C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v6 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_100011574();
  sub_10001158C();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
}

void sub_10001720C(void *a1)
{
  v2 = a1;
  v3 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_1000115A8();
  sub_10001158C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000172A4(void *a1)
{
  v2 = a1;
  v3 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_1000115A8();
  sub_10001158C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001733C(void *a1)
{
  v2 = a1;
  v3 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_1000115A8();
  sub_10001158C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000173D4(void *a1)
{
  v2 = a1;
  v3 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_1000115A8();
  sub_10001158C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001746C(void *a1)
{
  v2 = a1;
  v3 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_1000115A8();
  sub_10001158C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100017504(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "In context of XPC call with remote peer <PID = %d>: %{public}@", v3, 0x12u);
}

void sub_1000175F4(void *a1)
{
  v2 = a1;
  v3 = [sub_10001159C() safari_privacyPreservingDescription];
  sub_1000115A8();
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "Severe database error detected: %{public}@", v4, 0xCu);
}

void sub_100017694(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "System app migration is failed, should not perform deletion %{public}@", &v5, 0xCu);
}

void sub_1000177C8(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to set the activity state to 'Continue'. Deferring %{public}@ activity", &v3, 0xCu);
}

void sub_1000178E0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to read contents of password icons directory: %{public}@", &v5, 0xCu);
}

void sub_1000179BC(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 safari_privacyPreservingDescription];
  *a1 = 138543362;
  *a4 = v8;
  sub_100013C20(&_mh_execute_header, v9, v10, "Failed to remove icon for which we have no saved password: %{public}@");
}

void sub_100017A30(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 safari_privacyPreservingDescription];
  *a1 = 138543362;
  *a4 = v8;
  sub_100013C20(&_mh_execute_header, v9, v10, "Failed to remove icon for which we have no cache settings: %{public}@");
}

void sub_100017C90(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138478083;
  v4 = a1;
  v5 = 2113;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#Server Title: '%{private}@', URL: '%{private}@'", &v3, 0x16u);
}

void sub_100017D4C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 UUID];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to save Reading List item '%{public}@' to database", &v5, 0xCu);
}

void sub_100017DF4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to write Add to Reading List queue to file %{public}@", &v2, 0xCu);
}