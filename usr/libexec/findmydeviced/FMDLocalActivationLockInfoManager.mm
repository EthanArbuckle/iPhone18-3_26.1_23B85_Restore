@interface FMDLocalActivationLockInfoManager
+ (id)sharedInstance;
- (BOOL)_isWithinDaemonStartupThreshold;
- (BOOL)_readIODeviceSupportsFindMy;
- (FMDLocalActivationLockInfoManager)init;
- (id)_fetchOfflineFindingInfoInternal;
- (id)_locKeyForALEnabled;
- (id)_locKeyForOfflineFindingEnabled;
- (id)maskedAppleIDValue;
- (void)_addLocalizedStrings:(id)strings;
- (void)_cacheLocalState;
- (void)_postLocalActivationLockInfoChangedNotification;
- (void)_setupSPStatusListener;
- (void)activationLockInfoWithCompletion:(id)completion;
- (void)clearAllState;
- (void)clearMaskedAppleIDValue;
- (void)clearOfflineFindingInfoWithCompletion:(id)completion;
- (void)fetchOfflineFindingInfoWithCompletion:(id)completion;
- (void)storeOfflineFindingInfo:(id)info completion:(id)completion;
- (void)updateActivationLockStatus:(BOOL)status;
- (void)updateMaskedAppleID:(id)d;
- (void)updateOfflineFindingStatus:(BOOL)status;
@end

@implementation FMDLocalActivationLockInfoManager

+ (id)sharedInstance
{
  if (qword_1003145E8 != -1)
  {
    sub_100227540();
  }

  v3 = qword_1003145E0;

  return v3;
}

- (id)maskedAppleIDValue
{
  if ([(FMDLocalActivationLockInfoManager *)self _isFeatureEnabled])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_10000A9E4;
    v11 = sub_100002ABC;
    v12 = 0;
    storeAccessQueue = [(FMDLocalActivationLockInfoManager *)self storeAccessQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000983C;
    v6[3] = &unk_1002CD260;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(storeAccessQueue, v6);

    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (FMDLocalActivationLockInfoManager)init
{
  v8.receiver = self;
  v8.super_class = FMDLocalActivationLockInfoManager;
  v2 = [(FMDLocalActivationLockInfoManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(FMDLocalActivationLockInfoNVRAMStore);
    store = v2->_store;
    v2->_store = v3;

    v5 = dispatch_queue_create("com.apple.icloud.findmydeviced.storeAccessQ", 0);
    storeAccessQueue = v2->_storeAccessQueue;
    v2->_storeAccessQueue = v5;

    [(FMDLocalActivationLockInfoManager *)v2 _cacheLocalState];
    [(FMDLocalActivationLockInfoManager *)v2 _setupSPStatusListener];
  }

  return v2;
}

- (void)_cacheLocalState
{
  if ([(FMDLocalActivationLockInfoManager *)self _isFeatureEnabled])
  {
    storeAccessQueue = [(FMDLocalActivationLockInfoManager *)self storeAccessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100148CB8;
    block[3] = &unk_1002CD4C8;
    block[4] = self;
    dispatch_async(storeAccessQueue, block);
  }
}

- (void)_setupSPStatusListener
{
  if ([(FMDLocalActivationLockInfoManager *)self _isFeatureEnabled])
  {
    v3 = objc_opt_new();
    settingsConfiguration = [v3 settingsConfiguration];
    settingsConfig = self->_settingsConfig;
    self->_settingsConfig = settingsConfiguration;

    settingsConfig = [(FMDLocalActivationLockInfoManager *)self settingsConfig];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100148FB4;
    v7[3] = &unk_1002CE1D8;
    v7[4] = self;
    [settingsConfig beginRefreshingServiceStateWithBlock:v7];
  }
}

- (void)updateActivationLockStatus:(BOOL)status
{
  if ([(FMDLocalActivationLockInfoManager *)self _isFeatureEnabled])
  {
    storeAccessQueue = [(FMDLocalActivationLockInfoManager *)self storeAccessQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100149190;
    v6[3] = &unk_1002CE200;
    v6[4] = self;
    statusCopy = status;
    dispatch_async(storeAccessQueue, v6);
  }
}

- (void)updateOfflineFindingStatus:(BOOL)status
{
  if ([(FMDLocalActivationLockInfoManager *)self _isFeatureEnabled])
  {
    storeAccessQueue = [(FMDLocalActivationLockInfoManager *)self storeAccessQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001493B0;
    v6[3] = &unk_1002CE200;
    statusCopy = status;
    v6[4] = self;
    dispatch_async(storeAccessQueue, v6);
  }
}

- (void)updateMaskedAppleID:(id)d
{
  dCopy = d;
  if ([(FMDLocalActivationLockInfoManager *)self _isFeatureEnabled])
  {
    if (!dCopy)
    {
      v5 = sub_100002880();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID = [(FMDLocalActivationLockInfoManager *)self fm_logID];
        v16 = 138412290;
        v17 = fm_logID;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ cannot update maskedAppleID. Nil value provided", &v16, 0xCu);
      }
    }

    maskedAppleID = [(FMDLocalActivationLockInfoManager *)self maskedAppleID];
    if (!maskedAppleID)
    {
      goto LABEL_8;
    }

    v8 = maskedAppleID;
    maskedAppleID2 = [(FMDLocalActivationLockInfoManager *)self maskedAppleID];
    lowercaseString = [maskedAppleID2 lowercaseString];
    lowercaseString2 = [dCopy lowercaseString];
    v12 = [lowercaseString isEqualToString:lowercaseString2];

    if ((v12 & 1) == 0)
    {
LABEL_8:
      store = [(FMDLocalActivationLockInfoManager *)self store];
      [store updateMaskedAppleID:dCopy];

      [(FMDLocalActivationLockInfoManager *)self setMaskedAppleID:dCopy];
      [(FMDLocalActivationLockInfoManager *)self _postLocalActivationLockInfoChangedNotification];
      v14 = sub_100002880();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID2 = [(FMDLocalActivationLockInfoManager *)self fm_logID];
        v16 = 138412546;
        v17 = fm_logID2;
        v18 = 2112;
        v19 = dCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ Updating stored maskedAppleID with %@", &v16, 0x16u);
      }
    }
  }
}

- (void)clearMaskedAppleIDValue
{
  if ([(FMDLocalActivationLockInfoManager *)self _isFeatureEnabled])
  {
    storeAccessQueue = [(FMDLocalActivationLockInfoManager *)self storeAccessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100149850;
    block[3] = &unk_1002CD4C8;
    block[4] = self;
    dispatch_async(storeAccessQueue, block);
  }
}

- (void)activationLockInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (![(FMDLocalActivationLockInfoManager *)self _isFeatureEnabled])
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10014998C;
  v11 = &unk_1002CE228;
  selfCopy = self;
  v13 = completionCopy;
  v5 = completionCopy;
  v6 = objc_retainBlock(&v8);
  v7 = [(FMDLocalActivationLockInfoManager *)self storeAccessQueue:v8];
  dispatch_async(v7, v6);
}

- (void)storeOfflineFindingInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if ([(FMDLocalActivationLockInfoManager *)self _isFeatureEnabled])
  {
    storeAccessQueue = [(FMDLocalActivationLockInfoManager *)self storeAccessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100149C04;
    block[3] = &unk_1002CE278;
    block[4] = self;
    v10 = infoCopy;
    v11 = completionCopy;
    dispatch_async(storeAccessQueue, block);
  }
}

- (void)fetchOfflineFindingInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (![(FMDLocalActivationLockInfoManager *)self _isFeatureEnabled])
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  storeAccessQueue = [(FMDLocalActivationLockInfoManager *)self storeAccessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100149DC0;
  v7[3] = &unk_1002CE228;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(storeAccessQueue, v7);
}

- (id)_fetchOfflineFindingInfoInternal
{
  offlineFindingInfo = [(FMDLocalActivationLockInfoManager *)self offlineFindingInfo];
  v4 = offlineFindingInfo;
  if (!offlineFindingInfo || ![offlineFindingInfo length])
  {
    store = [(FMDLocalActivationLockInfoManager *)self store];
    retrieveOfflineFindingInfo = [store retrieveOfflineFindingInfo];

    [(FMDLocalActivationLockInfoManager *)self setOfflineFindingInfo:retrieveOfflineFindingInfo];
    v4 = retrieveOfflineFindingInfo;
  }

  return v4;
}

- (void)clearOfflineFindingInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(FMDLocalActivationLockInfoManager *)self _isFeatureEnabled])
  {
    storeAccessQueue = [(FMDLocalActivationLockInfoManager *)self storeAccessQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10014A228;
    v6[3] = &unk_1002CE228;
    v6[4] = self;
    v7 = completionCopy;
    dispatch_async(storeAccessQueue, v6);
  }
}

- (void)clearAllState
{
  if ([(FMDLocalActivationLockInfoManager *)self _isFeatureEnabled])
  {
    storeAccessQueue = [(FMDLocalActivationLockInfoManager *)self storeAccessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014A3A0;
    block[3] = &unk_1002CD4C8;
    block[4] = self;
    dispatch_async(storeAccessQueue, block);
  }
}

- (void)_addLocalizedStrings:(id)strings
{
  stringsCopy = strings;
  v33 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
  localizations = [v33 localizations];
  v5 = localizations;
  if (localizations && [localizations count])
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID = [(FMDLocalActivationLockInfoManager *)self fm_logID];
      v8 = [v5 count];
      maskedAppleID = [(FMDLocalActivationLockInfoManager *)self maskedAppleID];
      *buf = 138412802;
      v42 = fm_logID;
      v43 = 2048;
      v44 = v8;
      v45 = 2112;
      v46 = maskedAppleID;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ - fetching strings for %lu localizations for id - %@", buf, 0x20u);
    }

    v10 = NSDate_ptr;
    v11 = +[NSMutableDictionary dictionary];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v28 = v5;
    v12 = v5;
    v35 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v35)
    {
      v13 = *v37;
      v31 = kFMDActivationLockInfoTitleKey;
      v32 = kFMDActivationLockInfoDescriptionKey;
      v29 = v11;
      v30 = *v37;
      do
      {
        v14 = 0;
        do
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v12);
          }

          v15 = *(*(&v36 + 1) + 8 * v14);
          dictionary = [v10[6] dictionary];
          if ([stringsCopy isActivationLocked])
          {
            _locKeyForALEnabled = [(FMDLocalActivationLockInfoManager *)self _locKeyForALEnabled];
            v18 = [v33 localizedStringForKey:_locKeyForALEnabled value:&stru_1002DCE08 table:0 localization:v15];
            if (v18)
            {
              [dictionary setValue:v18 forKey:v31];
            }
          }

          if ([stringsCopy isOfflineFindingEnabled] && (objc_msgSend(stringsCopy, "isRestrictedSKU") & 1) == 0)
          {
            v21 = v12;
            v22 = v10;
            _locKeyForOfflineFindingEnabled = [(FMDLocalActivationLockInfoManager *)self _locKeyForOfflineFindingEnabled];
            v23 = [v33 localizedStringForKey:_locKeyForOfflineFindingEnabled value:&stru_1002DCE08 table:0 localization:v15];
            if (v23)
            {
              maskedAppleID2 = [(FMDLocalActivationLockInfoManager *)self maskedAppleID];

              if (maskedAppleID2)
              {
                maskedAppleID3 = [(FMDLocalActivationLockInfoManager *)self maskedAppleID];
                v26 = [NSString stringWithFormat:v23, maskedAppleID3];

                v11 = v29;
                [dictionary setValue:v26 forKey:v32];
              }
            }

            v10 = v22;
            v12 = v21;
            v13 = v30;
          }

          else
          {
            maskedAppleID4 = [stringsCopy maskedAppleID];

            if (!maskedAppleID4)
            {
              goto LABEL_23;
            }

            _locKeyForOfflineFindingEnabled = [stringsCopy maskedAppleID];
            [dictionary setValue:_locKeyForOfflineFindingEnabled forKey:v32];
          }

LABEL_23:
          if ([dictionary count])
          {
            [v11 setValue:dictionary forKey:v15];
          }

          v14 = v14 + 1;
        }

        while (v35 != v14);
        v35 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v35);
    }

    [stringsCopy setLocaleStrings:v11];
    v5 = v28;
  }

  else
  {
    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID2 = [(FMDLocalActivationLockInfoManager *)self fm_logID];
      *buf = 138412290;
      v42 = fm_logID2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ - not adding localized strings since list of localizations is nil or empty", buf, 0xCu);
    }
  }
}

- (id)_locKeyForALEnabled
{
  v2 = +[FMDSystemConfig sharedInstance];
  deviceClass = [v2 deviceClass];

  v4 = @"FM_ACTIVATION_LOCK_ENABLED_IPHONE_TEXT";
  if (deviceClass == 2)
  {
    v4 = @"FM_ACTIVATION_LOCK_ENABLED_IPAD_TEXT";
  }

  if (deviceClass == 3)
  {
    return @"FM_ACTIVATION_LOCK_ENABLED_IPOD_TEXT";
  }

  else
  {
    return v4;
  }
}

- (id)_locKeyForOfflineFindingEnabled
{
  v2 = +[FMDSystemConfig sharedInstance];
  deviceClass = [v2 deviceClass];

  v4 = @"FM_OFFLINE_FINDING_ENABLED_IPHONE_TEXT";
  if (deviceClass == 2)
  {
    v4 = @"FM_OFFLINE_FINDING_ENABLED_IPAD_TEXT";
  }

  if (deviceClass == 3)
  {
    return @"FM_OFFLINE_FINDING_ENABLED_IPOD_TEXT";
  }

  else
  {
    return v4;
  }
}

- (BOOL)_readIODeviceSupportsFindMy
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10014ACD4;
  v20[3] = &unk_1002CE2A0;
  v20[4] = &v21;
  v3 = objc_retainBlock(v20);
  v4 = IOServiceNameMatching("AppleDialogSPMIPMU");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v4);
  *(v22 + 6) = MatchingService;
  if (!MatchingService)
  {
    v14 = sub_100002880();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID = [(FMDLocalActivationLockInfoManager *)self fm_logID];
      *buf = 138412546;
      v26 = fm_logID;
      v27 = 2080;
      v28 = "AppleDialogSPMIPMU";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ _readIODeviceSupportsFindMy: Could not find service: %s", buf, 0x16u);
    }

    goto LABEL_12;
  }

  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IOPMUBootLPMCtrl", 0, 0);
  v7 = CFProperty;
  if (!CFProperty || (v8 = CFGetTypeID(CFProperty), v8 != CFDictionaryGetTypeID()))
  {
    v14 = sub_100002880();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      fm_logID2 = [(FMDLocalActivationLockInfoManager *)self fm_logID];
      sub_1002275BC(fm_logID2, v7, buf, v14);
    }

LABEL_12:

    (v3[2])(v3);
    bOOLValue = 0;
    goto LABEL_13;
  }

  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID3 = [(FMDLocalActivationLockInfoManager *)self fm_logID];
    *buf = 138412546;
    v26 = fm_logID3;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ _readIODeviceSupportsFindMy: PMU data == %@\n", buf, 0x16u);
  }

  v11 = [v7 objectForKeyedSubscript:@"lpm2"];
  v12 = v11;
  if (v11)
  {
    bOOLValue = [v11 BOOLValue];
    (v3[2])(v3);
  }

  else
  {
    v18 = sub_100002880();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      fm_logID4 = [(FMDLocalActivationLockInfoManager *)self fm_logID];
      sub_100227554(fm_logID4, v7, buf, v18);
    }

    (v3[2])(v3);
    bOOLValue = 0;
  }

LABEL_13:
  _Block_object_dispose(&v21, 8);
  return bOOLValue;
}

- (void)_postLocalActivationLockInfoChangedNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = kFMDLocalActivationLockInfoChangedNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 1u);
}

- (BOOL)_isWithinDaemonStartupThreshold
{
  v3 = +[FMDDaemon sharedInstance];
  startTime = [v3 startTime];

  [startTime timeIntervalSinceNow];
  v6 = v5;
  if (v5 >= -3.0)
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID = [(FMDLocalActivationLockInfoManager *)self fm_logID];
      v10 = 138412802;
      v11 = fm_logID;
      v12 = 2048;
      v13 = -v6;
      v14 = 2112;
      v15 = startTime;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ - call is within startup threshold - will need to be delayed. startTimeDelta %f, daemonStartTime %@", &v10, 0x20u);
    }
  }

  return v6 >= -3.0;
}

@end