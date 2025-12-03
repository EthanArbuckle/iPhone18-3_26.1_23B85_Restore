@interface GKAccountServicePrivate
+ (id)getAccountMatchingCredential:(id)credential from:(id)from;
+ (id)lastContactsIntegrationConsentVersionDisplayedForPlayerID:(id)d;
+ (id)lastFriendSuggestionsVersionDisplayedForPlayerID:(id)d;
+ (id)lastPersonalizationVersionDisplayedForPlayerID:(id)d;
+ (id)lastProfilePrivacyVersionDisplayedForPlayerID:(id)d;
+ (int)getAccountAgeCategoryForCredential:(id)credential;
+ (int)getAgeCategoryFromIDMS:(id)s appleAccount:(id)account;
+ (int)playerAgeCategoryForAccount:(id)account;
+ (int64_t)lastGamesCrossUseConsentNoticeVersionDisplayedForPlayerID:(id)d;
+ (int64_t)lastGamesPrivacyNoticeVersionDisplayedForPlayerID:(id)d;
+ (int64_t)lastLinkedDSIDForPlayerID:(id)d;
+ (unint64_t)lastPrivacyNoticeVersionDisplayedForPlayerID:(id)d;
+ (unint64_t)lastWelcomeWhatsNewCopyVersionDisplayedForPlayerID:(id)d;
- (BOOL)requiresAuthenticationForSelector:(SEL)selector;
- (BOOL)shouldCadencedActivitySharingRepromptWithLimit:(int64_t)limit minDaysBetween:(int64_t)between;
- (BOOL)shouldSuppressFullscreenSignInSheet;
- (id)_authenticatedLocalPlayerWithCredential:(id)credential inContext:(id)context isValid:(BOOL *)valid;
- (void)_addGameListEntryForGame:(id)game profile:(id)profile moc:(id)moc;
- (void)_appInitWithGroup:(id)group;
- (void)_authenticateUsername:(id)username password:(id)password altDSID:(id)d validateOnly:(BOOL)only handler:(id)handler;
- (void)_constructAuthenticationResponseWithError:(id)error handler:(id)handler;
- (void)_continueAuthenticationWithHandler:(id)handler;
- (void)_continueAuthenticationWithLoginDisabled:(BOOL)disabled handler:(id)handler;
- (void)_fetchCredentialsForUsername:(id)username password:(id)password altDSID:(id)d handler:(id)handler;
- (void)_fetchLoginDisabledWithHandler:(id)handler;
- (void)_initGameForDebugModeAppWithResultDictionary:(id)dictionary completionHandler:(id)handler;
- (void)_initGameForLaunchedApp:(BOOL)app withHandler:(id)handler;
- (void)_loadProfileWithGroup:(id)group;
- (void)_notifyAllClientsPlayerAuthenticatedFromClient:(id)client withCredential:(id)credential replyGroup:(id)group;
- (void)_postLaunchEventsForGame:(id)game moc:(id)moc;
- (void)_preloadDataForGameCenterTabs;
- (void)_primeCacheWithGroup:(id)group;
- (void)_syncPlayerOnboardingParametersInManagedObjectContext:(id)context withServerResult:(id)result;
- (void)accountCreated:(id)created playerID:(id)d authenticationToken:(id)token alias:(id)alias altDSID:(id)iD finished:(BOOL)finished handler:(id)handler;
- (void)accountCreated:(id)created playerID:(id)d authenticationToken:(id)token alias:(id)alias finished:(BOOL)finished handler:(id)handler;
- (void)accountEdited:(id)edited alias:(id)alias firstName:(id)name lastName:(id)lastName handler:(id)handler;
- (void)authenticatePlayerWithUsername:(id)username password:(id)password altDSID:(id)d isGame:(BOOL)game usingFastPath:(BOOL)path handler:(id)handler;
- (void)checkActivitySharingRepromptWithCompletion:(id)completion;
- (void)getAccountAgeCategoryForPlayerID:(id)d withCompletion:(id)completion;
- (void)getAccountAuthTokenWithHandler:(id)handler;
- (void)getDevicePushTokenWithHandler:(id)handler;
- (void)getOnboardingInfoForPlayerID:(id)d withCompletion:(id)completion;
- (void)isICloudAvailableWithHandler:(id)handler;
- (void)localPlayerAgeCategoryWithCompletion:(id)completion;
- (void)notifyClient:(id)client authenticationDidChangeWithError:(id)error handler:(id)handler;
- (void)notifyClient:(id)client playerAuthenticatedFromClient:(id)fromClient;
- (void)notifyClient:(id)client playerAuthenticatedWithCredential:(id)credential authenticatingBundleID:(id)d;
- (void)renewAuthToken;
- (void)renewCredentialsForAccountWithUsername:(id)username ttl:(double)ttl withCompletion:(id)completion;
- (void)setActivitySharingRepromptLastTriggerDate:(id)date;
- (void)setCrossUseLinkedDSIDForSignedInPlayer:(int64_t)player;
- (void)setLastGamesCrossUseConsentNoticeVersionDisplayedForSignedInPlayer:(int64_t)player;
- (void)setLastGamesPrivacyNoticeVersionDisplayedForSignedInPlayer:(int64_t)player;
- (void)setLoginStatus:(unint64_t)status handler:(id)handler;
- (void)setupAccountForParameters:(id)parameters handler:(id)handler;
- (void)updateBadgeCounts;
- (void)updateClientSettings:(id)settings;
- (void)validateAccountWithUsername:(id)username password:(id)password handler:(id)handler;
@end

@implementation GKAccountServicePrivate

- (void)localPlayerAgeCategoryWithCompletion:(id)completion
{
  completionCopy = completion;
  credential = [(GKService *)self credential];
  v6 = [GKAccountServicePrivate getAccountAgeCategoryForCredential:credential];

  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [NSNumber numberWithInt:v6];
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "localPlayerAgeCategoryWithCompletion: %@", &v11, 0xCu);
  }

  completionCopy[2](completionCopy, v6);
}

- (void)getAccountAgeCategoryForPlayerID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "getAccountAgeCategoryForPlayerID: %@", &v13, 0xCu);
  }

  v10 = +[GKPlayerCredentialController sharedController];
  clientProxy = [(GKService *)self clientProxy];
  v12 = [v10 credentialForPlayerID:dCopy environment:{objc_msgSend(clientProxy, "environment")}];

  completionCopy[2](completionCopy, [GKAccountServicePrivate getAccountAgeCategoryForCredential:v12]);
}

+ (int)getAccountAgeCategoryForCredential:(id)credential
{
  credentialCopy = credential;
  v4 = +[ACAccountStore defaultStore];
  v25 = ACAccountTypeIdentifierIDMS;
  v5 = [NSArray arrayWithObjects:&v25 count:1];
  v21 = 0;
  v6 = [v4 accountsWithAccountTypeIdentifiers:v5 error:&v21];
  v7 = v21;

  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
    {
      sub_1002879AC();
    }
  }

  v9 = +[ACAccountStore defaultStore];
  v24 = ACAccountTypeIdentifierAppleAccount;
  v10 = [NSArray arrayWithObjects:&v24 count:1];
  v20 = v7;
  v11 = [v9 accountsWithAccountTypeIdentifiers:v10 error:&v20];
  v12 = v20;

  if (v12)
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
    {
      sub_100287A14();
    }
  }

  v14 = [GKAccountServicePrivate getAccountMatchingCredential:credentialCopy from:v6];
  v15 = [GKAccountServicePrivate getAccountMatchingCredential:credentialCopy from:v11];

  v16 = [GKAccountServicePrivate getAgeCategoryFromIDMS:v14 appleAccount:v15];
  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
  }

  v18 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v23 = v16;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "getAccountAgeCategoryForCredential: Returning GKPlayerAgeCategory(%d)", buf, 8u);
  }

  return v16;
}

+ (id)getAccountMatchingCredential:(id)credential from:(id)from
{
  credentialCopy = credential;
  fromCopy = from;
  v7 = +[AKAccountManager sharedInstance];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = fromCopy;
  v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v7 altDSIDForAccount:v12];
        altDSID = [credentialCopy altDSID];
        v15 = [v13 isEqualToString:altDSID];

        if (v15 & 1) != 0 || ([v12 username], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(credentialCopy, "accountName"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqualToString:", v17), v17, v16, (v18))
        {
          v19 = v12;

          goto LABEL_13;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      v19 = 0;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_13:

  return v19;
}

+ (int)getAgeCategoryFromIDMS:(id)s appleAccount:(id)account
{
  sCopy = s;
  accountCopy = account;
  v7 = +[AKAccountManager sharedInstance];
  v8 = v7;
  if (sCopy)
  {
    if ([v7 userUnderAgeForAccount:sCopy])
    {
      if (!os_log_GKGeneral)
      {
        v9 = GKOSLoggers();
      }

      v10 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "getAccountAgeCategoryForPlayerID: IDMS account has isUnderage = 1, result = GKPlayerAgeCategoryChild", &v29, 2u);
      }

      v11 = 3;
      goto LABEL_33;
    }

    if (!accountCopy || (v12 = [GKAccountServicePrivate playerAgeCategoryForAccount:accountCopy]) == 0)
    {
      v15 = [v8 birthYearForAccount:sCopy];
      if (v15)
      {
        v17 = +[NSCalendar currentCalendar];
        v18 = +[NSDate date];
        v19 = [v17 component:4 fromDate:v18];

        v20 = v19 - [v15 integerValue];
        if (v20 > 21)
        {
          v11 = 1;
        }

        else
        {
          v11 = 2;
        }

        if (!os_log_GKGeneral)
        {
          v21 = GKOSLoggers();
        }

        v22 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          v23 = v20 > 21;
          v24 = v22;
          v25 = [NSNumber numberWithInteger:v20];
          v29 = 138413058;
          v30 = v15;
          v31 = 2112;
          v32 = v25;
          v33 = 1024;
          v34 = v23;
          v35 = 1024;
          v36 = v11;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "getAccountAgeCategoryForPlayerID: IDMS account has yob = %@, approximated age = %@, isAdult = %d, result = GKPlayerAgeCategory(%d)", &v29, 0x22u);
        }
      }

      else
      {
        if (!os_log_GKGeneral)
        {
          v26 = GKOSLoggers();
        }

        v27 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          LOWORD(v29) = 0;
          v11 = 2;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "getAccountAgeCategoryForPlayerID: IDMS account has no yob, treat the player as GKPlayerAgeCategoryAdolescent", &v29, 2u);
        }

        else
        {
          v11 = 2;
        }
      }

      goto LABEL_32;
    }

    v11 = v12;
  }

  else
  {
    if (!accountCopy)
    {
      v11 = 0;
      goto LABEL_33;
    }

    v11 = [GKAccountServicePrivate playerAgeCategoryForAccount:accountCopy];
    if (!v11)
    {
      goto LABEL_33;
    }
  }

  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [accountCopy aa_ageCategory]);
    v29 = 138412290;
    v30 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "getAccountAgeCategoryForPlayerID: AppleAccount account has a populated ageCategory = %@", &v29, 0xCu);

LABEL_32:
  }

LABEL_33:

  return v11;
}

+ (int)playerAgeCategoryForAccount:(id)account
{
  aa_ageCategory = [account aa_ageCategory];
  if ((aa_ageCategory - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_1002C29F0[(aa_ageCategory - 1)];
  }
}

- (void)getOnboardingInfoForPlayerID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = [[GKPlayerInternalOnboarding alloc] initWithPlayerID:dCopy];

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006590C;
  v13[3] = &unk_100360EB0;
  v14 = v8;
  v15 = completionCopy;
  v11 = v8;
  v12 = completionCopy;
  dispatch_async(replyQueue, v13);
}

+ (unint64_t)lastWelcomeWhatsNewCopyVersionDisplayedForPlayerID:(id)d
{
  dCopy = d;
  _gkSHA256Hash = [dCopy _gkSHA256Hash];
  v5 = [NSString stringWithFormat:@"GKLastWelcomeWhatsNewCopyVersionDisplayedForHashedPlayerID_%@", _gkSHA256Hash];

  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  v7 = [standardUserDefaults integerForKey:v5];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [NSNumber numberWithUnsignedInteger:v7];
    *buf = 138412546;
    v14 = dCopy;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "lastWelcomeWhatsNewCopyVersionDisplayedForPlayer (%@) -> %@", buf, 0x16u);
  }

  return v7;
}

+ (unint64_t)lastPrivacyNoticeVersionDisplayedForPlayerID:(id)d
{
  dCopy = d;
  _gkSHA256Hash = [dCopy _gkSHA256Hash];
  v5 = [NSString stringWithFormat:@"GKLastPrivacyNoticeVersionDisplayedForHashedPlayerID_%@", _gkSHA256Hash];

  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  v7 = [standardUserDefaults integerForKey:v5];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [NSNumber numberWithUnsignedInteger:v7];
    *buf = 138412546;
    v14 = dCopy;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "lastPrivacyNoticeVersionDisplayedForPlayer (%@) -> %@", buf, 0x16u);
  }

  return v7;
}

+ (int64_t)lastGamesPrivacyNoticeVersionDisplayedForPlayerID:(id)d
{
  dCopy = d;
  _gkSHA256Hash = [dCopy _gkSHA256Hash];
  v5 = [NSString stringWithFormat:@"GKLastGamesPrivacyNoticeVersionDisplayedForHashedPlayerID_%@", _gkSHA256Hash];

  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  v7 = [standardUserDefaults integerForKey:v5];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [NSNumber numberWithUnsignedInteger:v7];
    *buf = 138412546;
    v14 = dCopy;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "lastGamesPrivacyNoticeVersionDisplayedForPlayerID (%@) -> %@", buf, 0x16u);
  }

  return v7;
}

+ (int64_t)lastLinkedDSIDForPlayerID:(id)d
{
  dCopy = d;
  _gkSHA256Hash = [dCopy _gkSHA256Hash];
  v5 = [NSString stringWithFormat:@"GKLastLinkedDSIDForHashedPlayerID_%@", _gkSHA256Hash];

  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  v7 = [standardUserDefaults integerForKey:v5];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [NSNumber numberWithUnsignedInteger:v7];
    *buf = 138412546;
    v14 = dCopy;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "lastLinkedDSIDForPlayerID (%@) -> %@", buf, 0x16u);
  }

  return v7;
}

+ (int64_t)lastGamesCrossUseConsentNoticeVersionDisplayedForPlayerID:(id)d
{
  dCopy = d;
  _gkSHA256Hash = [dCopy _gkSHA256Hash];
  v5 = [NSString stringWithFormat:@"GKLastGamesCrossUseConsentNoticeVersionDisplayedForHashedPlayerID_%@", _gkSHA256Hash];

  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  v7 = [standardUserDefaults integerForKey:v5];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [NSNumber numberWithUnsignedInteger:v7];
    *buf = 138412546;
    v14 = dCopy;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "lastGamesCrossUseConsentNoticeVersionDisplayedForPlayerID (%@) -> %@", buf, 0x16u);
  }

  return v7;
}

+ (id)lastPersonalizationVersionDisplayedForPlayerID:(id)d
{
  dCopy = d;
  _gkSHA256Hash = [dCopy _gkSHA256Hash];
  v5 = [NSString stringWithFormat:@"GKLastPersonalizationVersionDisplayedForHashedPlayerID_%@", _gkSHA256Hash];

  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  v7 = [standardUserDefaults stringForKey:v5];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v12 = dCopy;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "lastPersonalizationVersionDisplayedForPlayer (%@) -> %@", buf, 0x16u);
  }

  return v7;
}

+ (id)lastProfilePrivacyVersionDisplayedForPlayerID:(id)d
{
  dCopy = d;
  _gkSHA256Hash = [dCopy _gkSHA256Hash];
  v5 = [NSString stringWithFormat:@"GKLastProfilePrivacyVersionDisplayedForHashedPlayerID_%@", _gkSHA256Hash];

  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  v7 = [standardUserDefaults stringForKey:v5];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v12 = dCopy;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "lastProfilePrivacyVersionDisplayedForPlayer (%@) -> %@", buf, 0x16u);
  }

  return v7;
}

+ (id)lastFriendSuggestionsVersionDisplayedForPlayerID:(id)d
{
  dCopy = d;
  _gkSHA256Hash = [dCopy _gkSHA256Hash];
  v5 = [NSString stringWithFormat:@"GKLastFriendSuggestionsVersionDisplayedForHashedPlayerID_%@", _gkSHA256Hash];

  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  v7 = [standardUserDefaults stringForKey:v5];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v12 = dCopy;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "lastFriendSuggestionsVersionDisplayedForPlayer (%@) -> %@", buf, 0x16u);
  }

  return v7;
}

+ (id)lastContactsIntegrationConsentVersionDisplayedForPlayerID:(id)d
{
  dCopy = d;
  _gkSHA256Hash = [dCopy _gkSHA256Hash];
  v5 = [NSString stringWithFormat:@"GKLastContactsIntegrationConsentVersionDisplayedForHashedPlayerID_%@", _gkSHA256Hash];

  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  v7 = [standardUserDefaults stringForKey:v5];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v12 = dCopy;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "lastContactsIntegrationConsentVersionDisplayedForPlayer (%@) -> %@", buf, 0x16u);
  }

  return v7;
}

- (void)isICloudAvailableWithHandler:(id)handler
{
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKAccountService isICloudAvailableWithHandler", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000666CC;
  v8[3] = &unk_1003616B8;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [GKCloudKitMultiplayer userRecordIDWithCompletionHandler:v8];
}

- (BOOL)requiresAuthenticationForSelector:(SEL)selector
{
  if (sel_isEqual("getAccountNameWithHandler:", selector) || sel_isEqual("getAuthenticatedPlayerIDWithHandler:", selector) || sel_isEqual("getAuthenticatedLocalPlayersWithStatus:handler:", selector))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = GKAccountServicePrivate;
  return [(GKService *)&v6 requiresAuthenticationForSelector:selector];
}

- (void)updateBadgeCounts
{
  clientProxy = [(GKService *)self clientProxy];
  v4 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 813, "[GKAccountServicePrivate updateBadgeCounts]"];
  v5 = [(GKService *)self transactionGroupWithName:v4];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100066A64;
  v13[3] = &unk_100361620;
  v13[4] = self;
  [v5 perform:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100066B28;
  v11[3] = &unk_100361708;
  v11[4] = self;
  v12 = v5;
  v6 = v5;
  [v6 performOnManagedObjectContext:v11];
  replyQueue = [clientProxy replyQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100066E40;
  v9[3] = &unk_100361770;
  v10 = clientProxy;
  v8 = clientProxy;
  [v6 notifyOnQueue:replyQueue block:v9];
}

- (void)_authenticateUsername:(id)username password:(id)password altDSID:(id)d validateOnly:(BOOL)only handler:(id)handler
{
  usernameCopy = username;
  passwordCopy = password;
  dCopy = d;
  handlerCopy = handler;
  v16 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 860, "[GKAccountServicePrivate _authenticateUsername:password:altDSID:validateOnly:handler:]"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10006705C;
  v22[3] = &unk_100361810;
  v23 = usernameCopy;
  v24 = passwordCopy;
  onlyCopy = only;
  v25 = dCopy;
  selfCopy = self;
  v27 = handlerCopy;
  v17 = handlerCopy;
  v18 = dCopy;
  v19 = passwordCopy;
  v20 = usernameCopy;
  [GKActivity named:v16 execute:v22];

  v21 = +[GKReporter reporter];
  [v21 reportEvent:GKReporterDomainLogin type:GKLoginSignIn];
}

- (void)getAccountAuthTokenWithHandler:(id)handler
{
  handlerCopy = handler;
  credential = [(GKService *)self credential];
  if (handlerCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100068044;
    v6[3] = &unk_100360EB0;
    v8 = handlerCopy;
    v7 = credential;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)getDevicePushTokenWithHandler:(id)handler
{
  handlerCopy = handler;
  v6 = +[GKDataRequestManager sharedManager];
  pushToken = [v6 pushToken];
  (*(handler + 2))(handlerCopy, pushToken);
}

- (void)_constructAuthenticationResponseWithError:(id)error handler:(id)handler
{
  errorCopy = error;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 1186, "[GKAccountServicePrivate _constructAuthenticationResponseWithError:handler:]"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100068240;
  v11[3] = &unk_100360FC8;
  v11[4] = self;
  v12 = errorCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = errorCopy;
  [GKActivity named:v8 execute:v11];
}

- (void)_addGameListEntryForGame:(id)game profile:(id)profile moc:(id)moc
{
  mocCopy = moc;
  gameList = [profile gameList];
  if (gameList)
  {
    clientProxy = [(GKService *)self clientProxy];
    bundleIdentifier = [clientProxy bundleIdentifier];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100068AA0;
    v14[3] = &unk_100361900;
    v11 = bundleIdentifier;
    v15 = v11;
    v12 = [gameList findEntry:v14];
    v13 = [gameList mutableOrderedSetValueForKeyPath:@"entries"];
    if (!v12)
    {
      v12 = [(GKCacheObject *)[GKGameListEntryCacheObject alloc] initWithManagedObjectContext:mocCopy];
      [(GKGameListEntryCacheObject *)v12 setBundleID:v11];
      [v13 addObject:v12];
    }

    [v13 insertObject:v12 atIndex:0];
  }
}

- (void)_postLaunchEventsForGame:(id)game moc:(id)moc
{
  gameCopy = game;
  mocCopy = moc;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKAccountService _postLaunchEventsForGame:", &v25, 2u);
  }

  clientProxy = [(GKService *)self clientProxy];
  launchEvent = [clientProxy launchEvent];

  if (launchEvent)
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      eventType = [launchEvent eventType];
      context = [launchEvent context];
      clientProxy2 = [(GKService *)self clientProxy];
      v25 = 67109634;
      *v26 = eventType;
      *&v26[4] = 2112;
      *&v26[6] = context;
      v27 = 2112;
      v28 = clientProxy2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Launch event(%d) context %@ for client %@", &v25, 0x1Cu);
    }

    context2 = [launchEvent context];
    eventType2 = [launchEvent eventType];
    if (eventType2 > 1)
    {
      if (eventType2 == 2)
      {
        objc_opt_class();
        objc_opt_isKindOfClass();
        clientProxy3 = [(GKService *)self clientProxy];
        [clientProxy3 friendRequestSelected:context2];
        goto LABEL_27;
      }

      if (eventType2 == 3)
      {
        if (!os_log_GKGeneral)
        {
          v23 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
        {
          sub_100287C24();
        }

        clientProxy3 = [(GKService *)self clientProxy];
        [clientProxy3 deliverEncodedGameActivityInstance:context2];
        goto LABEL_27;
      }
    }

    else
    {
      if (!eventType2)
      {
        objc_opt_class();
        objc_opt_isKindOfClass();
        clientProxy3 = [(GKService *)self clientProxy];
        [clientProxy3 receivedChallengeSelected:context2];
        goto LABEL_27;
      }

      if (eventType2 == 1)
      {
        objc_opt_class();
        objc_opt_isKindOfClass();
        clientProxy3 = [(GKService *)self clientProxy];
        [clientProxy3 completedChallengeSelected:context2];
LABEL_27:
      }
    }

    goto LABEL_29;
  }

  if (!os_log_GKGeneral)
  {
    v21 = GKOSLoggers();
  }

  v22 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    context2 = v22;
    clientProxy3 = [(GKService *)self clientProxy];
    v25 = 138412290;
    *v26 = clientProxy3;
    _os_log_impl(&_mh_execute_header, context2, OS_LOG_TYPE_INFO, "No launch event for client %@", &v25, 0xCu);
    goto LABEL_27;
  }

LABEL_29:
  clientProxy4 = [(GKService *)self clientProxy];
  [clientProxy4 setLaunchEvent:0];
}

- (void)renewAuthToken
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKAccountService renewAuthToken", buf, 2u);
  }

  v5 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy = [(GKService *)self clientProxy];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100068FA0;
  v7[3] = &unk_100361948;
  v7[4] = self;
  [v5 issueRequest:0 bagKey:@"gk-renew-auth-token" clientProxy:clientProxy handler:v7];
}

- (void)_initGameForLaunchedApp:(BOOL)app withHandler:(id)handler
{
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKAccountService _initGame", buf, 2u);
  }

  *buf = 0;
  v29 = buf;
  v30 = 0x2020000000;
  v31 = 0;
  v9 = +[GKDataRequestManager sharedManager];
  v10 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 1350, "[GKAccountServicePrivate _initGameForLaunchedApp:withHandler:]"];
  v11 = [(GKService *)self transactionGroupWithName:v10];

  [(GKService *)self clientProxy];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100069428;
  v12 = v21[3] = &unk_100361A08;
  v22 = v12;
  selfCopy = self;
  v13 = v11;
  v24 = v13;
  v26 = buf;
  appCopy = app;
  v14 = v9;
  v25 = v14;
  [v13 perform:v21];
  if (handlerCopy)
  {
    replyQueue = [v12 replyQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100069E28;
    v17[3] = &unk_100361A30;
    v19 = handlerCopy;
    v18 = v13;
    v20 = buf;
    [v18 notifyOnQueue:replyQueue block:v17];
  }

  v16 = +[GKReporter reporter];
  [v16 reportEvent:GKReporterDomainLogin type:GKLoginAppInit];

  _Block_object_dispose(buf, 8);
}

- (void)_initGameForDebugModeAppWithResultDictionary:(id)dictionary completionHandler:(id)handler
{
  dictionaryCopy = dictionary;
  handlerCopy = handler;
  clientProxy = [(GKService *)self clientProxy];
  isInDebugMode = [clientProxy isInDebugMode];

  if (isInDebugMode)
  {
    v10 = [dictionaryCopy mutableCopy];
    credential = [(GKService *)self credential];
    [credential playerInternal];
    v12 = v36 = handlerCopy;
    playerID = [v12 playerID];
    clientProxy2 = [(GKService *)self clientProxy];
    bundleIdentifier = [clientProxy2 bundleIdentifier];
    v16 = [GKScopedIDs makeNonpersistentWithPlayerID:playerID gameBundleID:bundleIdentifier];

    v35 = v16;
    gamePlayerID = [v16 gamePlayerID];
    v34 = v10;
    [v10 setObject:gamePlayerID forKeyedSubscript:GKGamePlayerIDKey];

    teamPlayerID = [v16 teamPlayerID];
    [v10 setObject:teamPlayerID forKeyedSubscript:GKTeamPlayerIDKey];

    v19 = [dictionaryCopy objectForKey:@"game-metadata"];
    v33 = [(GKService *)GKGameStatService serviceFromService:self];
    clientProxy3 = [(GKService *)self clientProxy];
    bundleIdentifier2 = [clientProxy3 bundleIdentifier];
    clientProxy4 = [(GKService *)self clientProxy];
    [clientProxy4 bundleVersion];
    v23 = v37 = dictionaryCopy;
    clientProxy5 = [(GKService *)self clientProxy];
    bundleShortVersion = [clientProxy5 bundleShortVersion];
    v26 = [v19 objectForKeyedSubscript:@"adam-id"];
    v27 = [GKGameDescriptor gameDescriptorWithBundleID:bundleIdentifier2 bundleVersion:v23 shortBundleVersion:bundleShortVersion adamID:v26];

    handlerCopy = v36;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10006A21C;
    v38[3] = &unk_100361AA8;
    v39 = v19;
    v40 = v33;
    v41 = v27;
    selfCopy = self;
    v43 = v34;
    v44 = v36;
    v28 = v34;
    v29 = v27;
    v30 = v33;
    v31 = v19;
    [v30 getAchievementDescriptionsForGameDescriptor:v29 handler:v38];

    dictionaryCopy = v37;
  }

  else
  {
    v32 = [GKResource resourceWithID:@"debug-init" representedItem:dictionaryCopy];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v32, 0);
    }
  }
}

- (void)_syncPlayerOnboardingParametersInManagedObjectContext:(id)context withServerResult:(id)result
{
  resultCopy = result;
  v7 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:context];
  representedItem = [resultCopy representedItem];

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    log = v10;
    v57 = +[GKPreferences shared];
    forcePrivacyNotice = [v57 forcePrivacyNotice];
    v52 = GKAccountPrivacyNoticeVersionKey;
    v51 = [representedItem objectForKeyedSubscript:?];
    v56 = +[GKPreferences shared];
    forceDefaultNickname = [v56 forceDefaultNickname];
    selfCopy = self;
    v11 = GKAccountIsDefaultNicknameKey;
    v12 = [representedItem objectForKeyedSubscript:GKAccountIsDefaultNicknameKey];
    v54 = +[GKPreferences shared];
    forceDefaultPrivacy = [v54 forceDefaultPrivacy];
    v13 = GKAccountHasPrivacySettingsKey;
    [representedItem objectForKeyedSubscript:GKAccountHasPrivacySettingsKey];
    v14 = v59 = representedItem;
    v15 = +[GKPreferences shared];
    forceDefaultContactsIntegrationConsent = [v15 forceDefaultContactsIntegrationConsent];
    v17 = v7;
    v18 = GKContactsIntegrationConsentKey;
    v19 = [v59 objectForKeyedSubscript:GKContactsIntegrationConsentKey];
    *buf = 67111938;
    v62 = forcePrivacyNotice;
    v63 = 2112;
    v64 = v52;
    v65 = 2112;
    v66 = v51;
    v67 = 1024;
    v68 = forceDefaultNickname;
    v69 = 2112;
    v70 = v11;
    self = selfCopy;
    v71 = 2112;
    v72 = v12;
    v73 = 1024;
    v74 = forceDefaultPrivacy;
    v75 = 2112;
    v76 = v13;
    v77 = 2112;
    v78 = v14;
    v79 = 1024;
    v80 = forceDefaultContactsIntegrationConsent;
    v81 = 2112;
    v82 = v18;
    v7 = v17;
    v83 = 2112;
    v84 = v19;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Updating onboarding parameters for the player:\n GKPreferences.shared.forcePrivacyNotice=%d, server has %@=%@\n GKPreferences.shared.forceDefaultNickname=%d, server has %@=%@\n GKPreferences.shared.forceDefaultPrivacy=%d, server has %@=%@\n GKPreferences.shared.forceDefaultContactsIntegrationConsent=%d, server has %@=%@", buf, 0x6Au);

    representedItem = v59;
  }

  v20 = +[GKPreferences shared];
  forcePrivacyNotice2 = [v20 forcePrivacyNotice];

  if (forcePrivacyNotice2)
  {
    if (!os_log_GKGeneral)
    {
      v22 = GKOSLoggers();
    }

    v23 = os_log_GKOnboarding;
    if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Going to skip syncing the privacy notice version from the server because the test flag is set.", buf, 2u);
    }
  }

  else
  {
    v24 = GKAccountPrivacyNoticeVersionKey;
    v25 = [representedItem objectForKeyedSubscript:GKAccountPrivacyNoticeVersionKey];

    if (v25)
    {
      if (!os_log_GKGeneral)
      {
        v26 = GKOSLoggers();
      }

      v27 = os_log_GKOnboarding;
      if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "The server has a valid privacy notice version.", buf, 2u);
      }

      v28 = [representedItem objectForKeyedSubscript:v24];
      -[GKAccountService setLastPrivacyNoticeVersionDisplayedForSignedInPlayer:](self, "setLastPrivacyNoticeVersionDisplayedForSignedInPlayer:", [v28 unsignedIntegerValue]);
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v29 = GKOSLoggers();
      }

      v30 = os_log_GKOnboarding;
      if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "The server doesn't have this player's privacy notice version.", buf, 2u);
      }

      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_10006AC44;
      v60[3] = &unk_100361AF0;
      v60[4] = self;
      [(GKAccountService *)self getLastPrivacyNoticeVersionDisplayedForSignedInPlayerWithHandler:v60];
    }
  }

  v31 = GKAccountIsDefaultNicknameKey;
  v32 = [representedItem objectForKeyedSubscript:GKAccountIsDefaultNicknameKey];
  if (v32 && (v33 = v32, [representedItem objectForKeyedSubscript:v31], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "BOOLValue"), v34, v33, v35))
  {
    [v7 setDefaultNickname:1];
  }

  else
  {
    v36 = +[GKPreferences shared];
    [v7 setDefaultNickname:{objc_msgSend(v36, "forceDefaultNickname")}];
  }

  v37 = GKAccountHasPrivacySettingsKey;
  v38 = [representedItem objectForKeyedSubscript:GKAccountHasPrivacySettingsKey];
  if (v38 && (v39 = v38, [representedItem objectForKeyedSubscript:v37], v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "BOOLValue"), v40, v39, (v41 & 1) == 0))
  {
    [v7 setDefaultPrivacyVisibility:1];
  }

  else
  {
    v42 = +[GKPreferences shared];
    [v7 setDefaultPrivacyVisibility:{objc_msgSend(v42, "forceDefaultPrivacy")}];
  }

  v43 = GKContactsIntegrationConsentKey;
  v44 = [representedItem objectForKeyedSubscript:GKContactsIntegrationConsentKey];
  if (v44 && (v45 = v44, [representedItem objectForKeyedSubscript:v43], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "isEqualToString:", GKContactsIntegrationConsentUndetermined), v46, v45, v47))
  {
    [v7 setDefaultContactsIntegrationConsent:1];
  }

  else
  {
    v48 = +[GKPreferences shared];
    [v7 setDefaultContactsIntegrationConsent:{objc_msgSend(v48, "forceDefaultContactsIntegrationConsent")}];
  }
}

- (id)_authenticatedLocalPlayerWithCredential:(id)credential inContext:(id)context isValid:(BOOL *)valid
{
  credentialCopy = credential;
  contextCopy = context;
  accountName = [credentialCopy accountName];
  v10 = dispatch_get_current_queue();
  v11 = &_sScA15unownedExecutorScevgTj_ptr;
  v12 = &_sScA15unownedExecutorScevgTj_ptr;
  if (dispatch_queue_get_specific(v10, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v13 = +[NSThread callStackSymbols];
    v14 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKAccountServicePrivate _authenticatedLocalPlayerWithCredential:inContext:isValid:]", v13];
    [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAccountService.m"];
    v15 = contextCopy;
    validCopy = valid;
    v17 = accountName;
    v19 = v18 = credentialCopy;
    lastPathComponent = [v19 lastPathComponent];
    v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v14, "-[GKAccountServicePrivate _authenticatedLocalPlayerWithCredential:inContext:isValid:]", [lastPathComponent UTF8String], 1568);

    credentialCopy = v18;
    accountName = v17;
    valid = validCopy;
    contextCopy = v15;
    v12 = &_sScA15unownedExecutorScevgTj_ptr;

    [NSException raise:@"GameKit Exception" format:@"%@", v21];
    v11 = &_sScA15unownedExecutorScevgTj_ptr;
  }

  if (!accountName)
  {
    v22 = v11[277];
    v23 = [v22 stringWithFormat:@"Assertion failed"];
    v24 = [v11[277] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAccountService.m"];
    lastPathComponent2 = [v24 lastPathComponent];
    1570 = [v22 stringWithFormat:@"%@ (accountName != ((void *)0))\n[%s (%s:%d)]", v23, "-[GKAccountServicePrivate _authenticatedLocalPlayerWithCredential:inContext:isValid:]", objc_msgSend(lastPathComponent2, "UTF8String"), 1570];

    [v12[171] raise:@"GameKit Exception" format:{@"%@", 1570}];
  }

  if (!os_log_GKGeneral)
  {
    v27 = GKOSLoggers();
  }

  v28 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "GKAccountService _authenticatedLocalPlayerWithUsername:", buf, 2u);
  }

  *valid = 0;
  v29 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:contextCopy];

  isValid = [v29 isValid];
  *valid = isValid;
  if (isValid)
  {
    internalRepresentation = [v29 internalRepresentation];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v32 = GKOSLoggers();
    }

    v33 = os_log_GKCache;
    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_100287E44(v33);
    }

    playerInternal = [credentialCopy playerInternal];
    internalRepresentation = +[GKLocalPlayerInternal internalRepresentation];
    [internalRepresentation setAccountName:accountName];
    alias = [playerInternal alias];
    [internalRepresentation setAlias:alias];

    playerID = [playerInternal playerID];
    [internalRepresentation setPlayerID:playerID];

    if (!os_log_GKGeneral)
    {
      v37 = GKOSLoggers();
    }

    v38 = os_log_GKCache;
    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_100287EF4(v38, internalRepresentation);
    }
  }

  return internalRepresentation;
}

- (void)_primeCacheWithGroup:(id)group
{
  groupCopy = group;
  clientProxy = [(GKService *)self clientProxy];
  v6 = [(GKService *)GKFriendServicePrivate serviceFromService:self];
  Current = CFAbsoluteTimeGetCurrent();
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10006B1E8;
  v14 = &unk_100361B40;
  v8 = v6;
  v15 = v8;
  v16 = Current;
  [groupCopy perform:&v11];

  if (([clientProxy isUIService] & 1) == 0 && (objc_msgSend(clientProxy, "isExtension") & 1) == 0)
  {
    v9 = [(GKService *)GKMultiplayerMatchService serviceFromService:self];
    gameDescriptor = [clientProxy gameDescriptor];
    [v9 getCompatibilityMatrix:gameDescriptor handler:0];
  }
}

- (void)_fetchCredentialsForUsername:(id)username password:(id)password altDSID:(id)d handler:(id)handler
{
  usernameCopy = username;
  passwordCopy = password;
  dCopy = d;
  handlerCopy = handler;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 1621, "[GKAccountServicePrivate _fetchCredentialsForUsername:password:altDSID:handler:]"];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10006B48C;
  v19[3] = &unk_100360F28;
  v20 = usernameCopy;
  v21 = passwordCopy;
  selfCopy = self;
  v23 = dCopy;
  v24 = handlerCopy;
  v15 = handlerCopy;
  v16 = dCopy;
  v17 = passwordCopy;
  v18 = usernameCopy;
  [GKActivity named:v14 execute:v19];
}

- (void)_preloadDataForGameCenterTabs
{
  v3 = dispatch_time(0, 100000000);
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006B9C8;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_after(v3, replyQueue, block);
}

- (void)authenticatePlayerWithUsername:(id)username password:(id)password altDSID:(id)d isGame:(BOOL)game usingFastPath:(BOOL)path handler:(id)handler
{
  usernameCopy = username;
  passwordCopy = password;
  dCopy = d;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
  }

  v18 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v31 = usernameCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "GKAccountService auth username:%@", buf, 0xCu);
  }

  v19 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 1749, "[GKAccountServicePrivate authenticatePlayerWithUsername:password:altDSID:isGame:usingFastPath:handler:]"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10006BDCC;
  v24[3] = &unk_100361810;
  gameCopy = game;
  v24[4] = self;
  v25 = usernameCopy;
  v26 = passwordCopy;
  v27 = dCopy;
  v28 = handlerCopy;
  v20 = handlerCopy;
  v21 = dCopy;
  v22 = passwordCopy;
  v23 = usernameCopy;
  [GKActivity named:v19 execute:v24];
}

- (void)notifyClient:(id)client authenticationDidChangeWithError:(id)error handler:(id)handler
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006C728;
  v9[3] = &unk_100360FC8;
  v9[4] = self;
  errorCopy = error;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = errorCopy;
  [client sendAuthenticationDidChangeNotificationWithAuthenticatingBundleID:0 completionHandler:v9];
}

- (void)_loadProfileWithGroup:(id)group
{
  groupCopy = group;
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GKAccountService _loadProfile", buf, 2u);
  }

  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100288228(v8, a2);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006C99C;
  v10[3] = &unk_100361620;
  v10[4] = self;
  [groupCopy perform:v10];
}

- (void)_appInitWithGroup:(id)group
{
  groupCopy = group;
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GKAccountService _appInit", buf, 2u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006CD00;
  v9[3] = &unk_100361D30;
  v10 = groupCopy;
  v11 = a2;
  v9[4] = self;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = groupCopy;
  [v8 perform:v9];
}

- (void)notifyClient:(id)client playerAuthenticatedFromClient:(id)fromClient
{
  clientCopy = client;
  fromClientCopy = fromClient;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "notifyClient:playerAuthenticatedFromClient:", buf, 2u);
  }

  [(GKService *)self credential];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006D4CC;
  v13[3] = &unk_100361D58;
  v14 = clientCopy;
  v16 = v15 = self;
  v17 = fromClientCopy;
  v10 = fromClientCopy;
  v11 = v16;
  v12 = clientCopy;
  [GKClientProxy enumerateClientsUsingBlock:v13];
}

- (void)notifyClient:(id)client playerAuthenticatedWithCredential:(id)credential authenticatingBundleID:(id)d
{
  clientCopy = client;
  credentialCopy = credential;
  dCopy = d;
  bundleIdentifier = [clientCopy bundleIdentifier];
  v11 = GKGetApplicationStateForBundleID(bundleIdentifier);

  if (v11 == 8)
  {
    v12 = [clientCopy transportWithCredential:credentialCopy];
    v13 = [(GKService *)GKAccountServicePrivate serviceWithTransport:v12 forClient:clientCopy credential:credentialCopy];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10006D6A0;
    v14[3] = &unk_100361DE0;
    v15 = clientCopy;
    v16 = dCopy;
    [v13 _initGameForLaunchedApp:0 withHandler:v14];
  }

  else
  {
    [clientCopy sendAuthenticationDidChangeNotificationWithAuthenticatingBundleID:dCopy completionHandler:&stru_100361E00];
  }
}

- (void)_notifyAllClientsPlayerAuthenticatedFromClient:(id)client withCredential:(id)credential replyGroup:(id)group
{
  clientCopy = client;
  credentialCopy = credential;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006D898;
  v13[3] = &unk_100361D58;
  v14 = clientCopy;
  groupCopy = group;
  selfCopy = self;
  v17 = credentialCopy;
  v10 = credentialCopy;
  v11 = groupCopy;
  v12 = clientCopy;
  [GKClientProxy enumerateClientsUsingBlock:v13];
}

- (void)_fetchLoginDisabledWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(GKSignInVisibilityConfig);
  transport = [(GKService *)self transport];
  storeBag = [transport storeBag];

  if (storeBag)
  {
    transport2 = [(GKService *)self transport];
    storeBag2 = [transport2 storeBag];
    v10 = [storeBag2 valueForKey:GKSignInBannerEnabled];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v11) = 1;
    }
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  shouldSuppressFullscreenSignInSheet = [(GKAccountServicePrivate *)self shouldSuppressFullscreenSignInSheet];
  v13 = shouldSuppressFullscreenSignInSheet;
  if (shouldSuppressFullscreenSignInSheet)
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "GKAccountService _fetchLoginDisabledWithHandler: Suppressing full screen sign in sheet", buf, 2u);
    }
  }

  transport3 = [(GKService *)self transport];
  storeBag3 = [transport3 storeBag];
  v18 = (storeBag3 == 0) | v11;

  if (v18)
  {
    sheetConfig = [v5 sheetConfig];
    [sheetConfig setLimit:3];

    bannerConfig = [v5 bannerConfig];
    [bannerConfig setEnabled:0];

    v21 = +[GKPlayerCredentialController sharedController];
    signInVisibilityManager = [v21 signInVisibilityManager];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10006DE60;
    v33[3] = &unk_100361E28;
    v34 = handlerCopy;
    v35 = v13;
    v23 = handlerCopy;
    [signInVisibilityManager promptsDisabledWithConfig:v5 scope:1 handler:v33];

    v24 = v34;
  }

  else
  {
    v37[0] = GKFullscreenSignInSheetLimit;
    v37[1] = GKFullscreenSignInSheetInitialLimit;
    v37[2] = GKFullscreenSignInSheetCooldown;
    v37[3] = GKFullscreenSignInSheetMinTimeBetween;
    v37[4] = GKFullscreenSignInSheetEnabled;
    v37[5] = GKSignInBannerLimit;
    v37[6] = GKSignInBannerInitialLimit;
    v37[7] = GKSignInBannerCooldown;
    v37[8] = GKSignInBannerMinTimeBetween;
    v37[9] = GKSignInBannerEnabled;
    v23 = [NSArray arrayWithObjects:v37 count:10];
    transport4 = [(GKService *)self transport];
    storeBag4 = [transport4 storeBag];
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10006DE7C;
    v29[3] = &unk_100361E50;
    v30 = v5;
    v31 = handlerCopy;
    v32 = v13;
    v24 = handlerCopy;
    [storeBag4 getValuesForKeys:v23 queue:replyQueue completion:v29];
  }
}

- (BOOL)shouldSuppressFullscreenSignInSheet
{
  clientProxy = [(GKService *)self clientProxy];
  bundleIdentifier = [clientProxy bundleIdentifier];

  if (bundleIdentifier)
  {
    v4 = [GKGame isNewsApp:bundleIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_continueAuthenticationWithHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006E2C4;
  v4[3] = &unk_100361E78;
  selfCopy = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  [(GKAccountServicePrivate *)selfCopy _fetchLoginDisabledWithHandler:v4];
}

- (void)_continueAuthenticationWithLoginDisabled:(BOOL)disabled handler:(id)handler
{
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = NSStringFromSelector(a2);
    credential = [(GKService *)self credential];
    *buf = 138412546;
    v69 = v10;
    v70 = 2112;
    v71 = credential;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ cred:%@", buf, 0x16u);
  }

  credential2 = [(GKService *)self credential];
  accountName = [credential2 accountName];

  if (!accountName)
  {
    v14 = [NSString stringWithFormat:@"Assertion failed"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAccountService.m"];
    lastPathComponent = [v15 lastPathComponent];
    v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (credential.accountName)\n[%s (%s:%d)]", v14, "-[GKAccountServicePrivate _continueAuthenticationWithLoginDisabled:handler:]", [lastPathComponent UTF8String], 2291);

    [NSException raise:@"GameKit Exception" format:@"%@", v17];
  }

  v45 = a2;
  v46 = handlerCopy;
  playerInternal = [credential2 playerInternal];
  playerID = [playerInternal playerID];

  if (!playerID)
  {
    v20 = [NSString stringWithFormat:@"Assertion failed"];
    v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAccountService.m"];
    lastPathComponent2 = [v21 lastPathComponent];
    v23 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (credential.playerInternal.playerID)\n[%s (%s:%d)]", v20, "-[GKAccountServicePrivate _continueAuthenticationWithLoginDisabled:handler:]", [lastPathComponent2 UTF8String], 2292);

    [NSException raise:@"GameKit Exception" format:@"%@", v23];
  }

  clientProxy = [(GKService *)self clientProxy];
  v24 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 2295, "[GKAccountServicePrivate _continueAuthenticationWithLoginDisabled:handler:]"];
  v43 = [GKDispatchGroup dispatchGroupWithName:v24];

  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_10006E98C;
  v67[3] = &unk_100361770;
  v67[4] = self;
  [(GKAccountServicePrivate *)self updateClientSettings:v67];
  clientProxy2 = [(GKService *)self clientProxy];
  playerInternal2 = [credential2 playerInternal];
  playerID2 = [playerInternal2 playerID];
  v28 = [clientProxy2 managedObjectContextForPlayerID:playerID2];

  v29 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 2303, "[GKAccountServicePrivate _continueAuthenticationWithLoginDisabled:handler:]"];
  v30 = [GKDispatchGroup dispatchGroupWithName:v29];

  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_10006E9D8;
  v64[3] = &unk_1003610B8;
  v31 = credential2;
  v65 = v31;
  v32 = v28;
  v66 = v32;
  [v32 performBlockAndWait:v64];
  Current = CFAbsoluteTimeGetCurrent();
  if (v31 && !disabled)
  {
    [(GKAccountServicePrivate *)self _loadProfileWithGroup:v30];
    [(GKAccountServicePrivate *)self _appInitWithGroup:v30];
    [(GKAccountServicePrivate *)self _primeCacheWithGroup:v30];
  }

  replyQueue = [clientProxy replyQueue];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_10006EA84;
  v55[3] = &unk_100361EC8;
  v62 = Current;
  v35 = v43;
  v56 = v35;
  v36 = v30;
  v57 = v36;
  v37 = v32;
  v58 = v37;
  selfCopy = self;
  v38 = v31;
  v60 = v38;
  v63 = v45;
  v39 = clientProxy;
  v61 = v39;
  [v35 join:v36 queue:replyQueue block:v55];

  if (v46)
  {
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_10006F220;
    v53[3] = &unk_100360FF0;
    v53[4] = self;
    v40 = v35;
    v54 = v40;
    [v40 perform:v53];
    replyQueue2 = [v39 replyQueue];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10006F360;
    v47[3] = &unk_100361F18;
    v52 = v46;
    v48 = v40;
    v49 = v38;
    v50 = v39;
    selfCopy2 = self;
    [v48 notifyOnQueue:replyQueue2 block:v47];
  }
}

- (void)accountCreated:(id)created playerID:(id)d authenticationToken:(id)token alias:(id)alias finished:(BOOL)finished handler:(id)handler
{
  finishedCopy = finished;
  dCopy = d;
  aliasCopy = alias;
  handlerCopy = handler;
  tokenCopy = token;
  createdCopy = created;
  v36 = +[GKDataRequestManager sharedManager];
  v18 = +[GKPlayerCredential internalRepresentation];
  v19 = +[GKLocalPlayerInternal internalRepresentation];
  [v19 setPlayerID:dCopy];
  [v19 setAlias:aliasCopy];
  [v18 setAccountName:createdCopy];

  [v18 setAuthenticationToken:tokenCopy];
  [v18 setPlayerInternal:v19];
  clientProxy = [(GKService *)self clientProxy];
  [v18 setEnvironment:{objc_msgSend(clientProxy, "environment")}];

  [v18 setScope:14];
  v21 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 2442, "[GKAccountServicePrivate accountCreated:playerID:authenticationToken:alias:finished:handler:]"];
  v22 = [(GKService *)self transactionGroupWithName:v21];

  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_10006F8DC;
  v54[3] = &unk_100361620;
  v23 = v18;
  v55 = v23;
  [v22 perform:v54];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_10006FA28;
  v53[3] = &unk_100361620;
  v53[4] = self;
  [v22 perform:v53];
  v24 = objc_alloc_init(GKAuthenticateResponse);
  context = [v22 context];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10006FAD0;
  v46[3] = &unk_100361F40;
  v26 = dCopy;
  v47 = v26;
  v27 = v22;
  v48 = v27;
  selfCopy = self;
  v28 = aliasCopy;
  v50 = v28;
  v29 = v24;
  v51 = v29;
  v30 = v23;
  v52 = v30;
  [context performBlockAndWait:v46];

  if (finishedCopy)
  {
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10006FC54;
    v44[3] = &unk_100360FF0;
    v44[4] = self;
    v45 = v27;
    [v45 perform:v44];

    v31 = v36;
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  context2 = [v27 context];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10006FD7C;
  v40[3] = &unk_100361F68;
  v41 = v27;
  selfCopy2 = self;
  v31 = v36;
  v43 = v36;
  [context2 performBlockAndWait:v40];

  if (handlerCopy)
  {
LABEL_5:
    clientProxy2 = [(GKService *)self clientProxy];
    replyQueue = [clientProxy2 replyQueue];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100070004;
    v37[3] = &unk_100360EB0;
    v39 = handlerCopy;
    v38 = v27;
    [v38 notifyOnQueue:replyQueue block:v37];
  }

LABEL_6:
}

- (void)accountCreated:(id)created playerID:(id)d authenticationToken:(id)token alias:(id)alias altDSID:(id)iD finished:(BOOL)finished handler:(id)handler
{
  finishedCopy = finished;
  dCopy = d;
  aliasCopy = alias;
  handlerCopy = handler;
  iDCopy = iD;
  tokenCopy = token;
  createdCopy = created;
  v38 = +[GKDataRequestManager sharedManager];
  v20 = +[GKPlayerCredential internalRepresentation];
  v21 = +[GKLocalPlayerInternal internalRepresentation];
  [v21 setPlayerID:dCopy];
  [v21 setAlias:aliasCopy];
  [v20 setAccountName:createdCopy];

  [v20 setAuthenticationToken:tokenCopy];
  [v20 setPlayerInternal:v21];
  clientProxy = [(GKService *)self clientProxy];
  [v20 setEnvironment:{objc_msgSend(clientProxy, "environment")}];

  [v20 setScope:14];
  [v20 setAltDSID:iDCopy];

  v23 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 2540, "[GKAccountServicePrivate accountCreated:playerID:authenticationToken:alias:altDSID:finished:handler:]"];
  v24 = [(GKService *)self transactionGroupWithName:v23];

  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100070538;
  v56[3] = &unk_100361620;
  v25 = v20;
  v57 = v25;
  [v24 perform:v56];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_100070684;
  v55[3] = &unk_100361620;
  v55[4] = self;
  [v24 perform:v55];
  v26 = objc_alloc_init(GKAuthenticateResponse);
  context = [v24 context];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10007072C;
  v48[3] = &unk_100361F40;
  v28 = dCopy;
  v49 = v28;
  v29 = v24;
  v50 = v29;
  selfCopy = self;
  v30 = aliasCopy;
  v52 = v30;
  v31 = v26;
  v53 = v31;
  v32 = v25;
  v54 = v32;
  [context performBlockAndWait:v48];

  if (finishedCopy)
  {
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000708B0;
    v46[3] = &unk_100360FF0;
    v46[4] = self;
    v47 = v29;
    [v47 perform:v46];

    v33 = v38;
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  context2 = [v29 context];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000709D8;
  v42[3] = &unk_100361F68;
  v43 = v29;
  selfCopy2 = self;
  v33 = v38;
  v45 = v38;
  [context2 performBlockAndWait:v42];

  if (handlerCopy)
  {
LABEL_5:
    clientProxy2 = [(GKService *)self clientProxy];
    replyQueue = [clientProxy2 replyQueue];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100070C60;
    v39[3] = &unk_100360EB0;
    v41 = handlerCopy;
    v40 = v29;
    [v40 notifyOnQueue:replyQueue block:v39];
  }

LABEL_6:
}

- (void)validateAccountWithUsername:(id)username password:(id)password handler:(id)handler
{
  usernameCopy = username;
  passwordCopy = password;
  handlerCopy = handler;
  v11 = objc_alloc_init(GKAuthenticateResponse);
  v12 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 2619, "[GKAccountServicePrivate validateAccountWithUsername:password:handler:]"];
  v13 = [GKDispatchGroup dispatchGroupWithName:v12];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100070EF0;
  v26[3] = &unk_100361F90;
  v26[4] = self;
  v27 = usernameCopy;
  v28 = passwordCopy;
  v14 = v13;
  v29 = v14;
  v15 = passwordCopy;
  v16 = usernameCopy;
  [v14 perform:v26];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100071000;
  v22[3] = &unk_100361538;
  v24 = v14;
  v25 = handlerCopy;
  v23 = v11;
  v19 = v14;
  v20 = v11;
  v21 = handlerCopy;
  [v19 notifyOnQueue:replyQueue block:v22];
}

- (void)renewCredentialsForAccountWithUsername:(id)username ttl:(double)ttl withCompletion:(id)completion
{
  usernameCopy = username;
  completionCopy = completion;
  v10 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 2637, "[GKAccountServicePrivate renewCredentialsForAccountWithUsername:ttl:withCompletion:]"];
  v11 = [GKDispatchGroup dispatchGroupWithName:v10];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100071244;
  v21[3] = &unk_100361FB8;
  v22 = usernameCopy;
  ttlCopy = ttl;
  v12 = v11;
  v23 = v12;
  v13 = usernameCopy;
  [v12 perform:v21];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100071368;
  v18[3] = &unk_100360EB0;
  v19 = v12;
  v20 = completionCopy;
  v16 = v12;
  v17 = completionCopy;
  [v16 notifyOnQueue:replyQueue block:v18];
}

- (void)setupAccountForParameters:(id)parameters handler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  v9 = [standardUserDefaults objectForKey:GKOptedOutOfGameCenter];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v11 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
      v11 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "GKAppleIDAuthenticationDelegate ignoring authentication response since user has opted out of game center.", buf, 2u);
    }

    v13 = [NSError errorWithDomain:GKInternalErrorDomain code:100 userInfo:0];
    handlerCopy[2](handlerCopy, v13);
    goto LABEL_55;
  }

  v14 = +[GKPreferences shared];
  if ([v14 isAccountModificationRestricted])
  {

LABEL_10:
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Game Center account will not be saved as accounts are restricted", buf, 2u);
    }

    v13 = [NSError userErrorForServerCode:5000 reason:@"Game Center accounts are disabled"];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v13);
    }

    v19 = [(GKService *)GKUtilityServicePrivate serviceFromService:self];
    [v19 terminate];

    goto LABEL_55;
  }

  v15 = +[GKPreferences shared];
  isGameCenterDisabled = [v15 isGameCenterDisabled];

  if (isGameCenterDisabled)
  {
    goto LABEL_10;
  }

  v20 = +[ACAccountStore defaultStore];
  credential = [(GKService *)self credential];
  accountName = [credential accountName];

  v23 = [v20 _gkAccountForAppleID:accountName];
  v24 = v23;
  if (accountName)
  {
    v25 = v23 == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v25;
  v78 = v26;
  clientProxy = [(GKService *)self clientProxy];
  if (!os_log_GKGeneral)
  {
    v27 = GKOSLoggers();
  }

  v28 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v101 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Account setup parameters: %@", buf, 0xCu);
  }

  v29 = [parametersCopy objectForKeyedSubscript:@"player-id"];
  v80 = [parametersCopy objectForKeyedSubscript:@"alias"];
  v88 = [parametersCopy objectForKeyedSubscript:@"apple-id"];
  v87 = [parametersCopy objectForKeyedSubscript:@"auth-token"];
  v85 = [parametersCopy objectForKeyedSubscript:@"firstName"];
  v84 = [parametersCopy objectForKeyedSubscript:@"lastName"];
  v83 = [parametersCopy objectForKeyedSubscript:@"altDSID"];
  v30 = [parametersCopy objectForKeyedSubscript:@"dsid"];
  objc_opt_class();
  v86 = v30;
  if (objc_opt_isKindOfClass())
  {
    stringValue = [v30 stringValue];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v82 = 0;
      goto LABEL_33;
    }

    stringValue = v30;
  }

  v82 = stringValue;
LABEL_33:
  v79 = accountName;
  v32 = [accountName isEqualToString:v88];
  v33 = v20;
  if ([v29 length] && objc_msgSend(v87, "length") && objc_msgSend(v88, "length"))
  {
    v76 = v29;
    v71 = v24;
    v72 = v20;
    v34 = [parametersCopy objectForKeyedSubscript:GKEnvironmentKey];
    v73 = [GKPreferences environmentForString:v34];

    credential2 = [(GKService *)self credential];
    environment = [credential2 environment];

    v36 = +[GKPlayerCredential internalRepresentation];
    v37 = +[GKLocalPlayerInternal internalRepresentation];
    credential3 = [(GKService *)self credential];
    authenticationToken = [credential3 authenticationToken];
    v40 = [authenticationToken isEqual:v87];

    v75 = v37;
    v77 = v36;
    if (v78)
    {
      [v37 setPlayerID:v76];
      [v37 setAlias:v80];
      [v37 setFirstName:v85];
      [v37 setLastName:v84];
      v41 = [objc_opt_class() compositeNameForFirstName:v85 lastName:v84];
      [v37 setCompositeName:v41];

      [v36 setAccountName:v88];
      [v36 setPlayerInternal:v37];
      [v36 setAuthenticationToken:v87];
      [v36 setEnvironment:?];
      if (v82)
      {
        [v36 setDSID:?];
      }

      v33 = v72;
      v42 = v86;
      if (v83)
      {
        [v36 setAltDSID:?];
      }

      [v36 setScope:14];
      v70 = +[GKPlayerCredentialController sharedController];
      [v70 setPrimaryCredential:v36 completionHandler:0];
      v43 = v80;
      if (!os_log_GKGeneral)
      {
        v44 = GKOSLoggers();
      }

      v45 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v101 = v73;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Account setup (No existing player): Switching environment(%ld) and recording player credentials, will terminate", buf, 0xCu);
      }

      v46 = [GKStoreBag storeBagForEnvironment:v73];
      v47 = [GKDataTransport transportWithBag:v46 clientProxy:clientProxy credential:v77];
      [(GKService *)self setTransport:v47];

      v68 = +[GKClientProxy gameCenterClient];
      [v68 setEnvironment:v73];
      +[GKClientProxy removeAllCaches];
      v48 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 2781, "[GKAccountServicePrivate setupAccountForParameters:handler:]"];
      v49 = [(GKService *)self transactionGroupWithName:v48];

      context = [v49 context];
      v94[0] = _NSConcreteStackBlock;
      v94[1] = 3221225472;
      v94[2] = sub_100072138;
      v94[3] = &unk_100361FE0;
      v29 = v76;
      v95 = v76;
      v96 = v49;
      v97 = v80;
      v98 = v85;
      v99 = v84;
      v51 = v49;
      [context performBlockAndWait:v94];

      [(GKAccountServicePrivate *)self _loadProfileWithGroup:v51];
      [(GKAccountServicePrivate *)self _appInitWithGroup:v51];
      [(GKAccountServicePrivate *)self _primeCacheWithGroup:v51];
      [(GKAccountServicePrivate *)self updateBadgeCounts];

      v24 = v71;
    }

    else
    {
      v29 = v76;
      v42 = v86;
      if ((environment == v73) & v40) != 0 || ((v32 ^ 1))
      {
        v24 = v71;
        v33 = v72;
        v43 = v80;
        if (!os_log_GKGeneral)
        {
          v66 = GKOSLoggers();
        }

        v67 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "Account setup not new and no change:", buf, 2u);
        }
      }

      else
      {
        v24 = v71;
        v43 = v80;
        if (!os_log_GKGeneral)
        {
          v57 = GKOSLoggers();
        }

        v58 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v101 = v75;
          v102 = 2112;
          v103 = v77;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "Account setup (Player did not change): Recording new credentials and updating profile. Previous player:%@ credential:%@", buf, 0x16u);
        }

        [v75 setPlayerID:v76];
        [v75 setAlias:v80];
        [v75 setFirstName:v85];
        [v75 setLastName:v84];
        v59 = [objc_opt_class() compositeNameForFirstName:v85 lastName:v84];
        [v75 setCompositeName:v59];

        [v77 setAccountName:v88];
        [v77 setPlayerInternal:v75];
        [v77 setAuthenticationToken:v87];
        [v77 setEnvironment:v73];
        if (v82)
        {
          [v77 setDSID:?];
        }

        if (v83)
        {
          [v77 setAltDSID:?];
        }

        [v77 setScope:14];
        v74 = +[GKPlayerCredentialController sharedController];
        [v74 setPrimaryCredential:v77 completionHandler:0];
        v33 = v72;
        if (!os_log_GKGeneral)
        {
          v60 = GKOSLoggers();
        }

        v61 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v101 = v77;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "Account setup (Player did not change): saving the received credentials:%@", buf, 0xCu);
        }

        v62 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 2831, "[GKAccountServicePrivate setupAccountForParameters:handler:]"];
        v63 = [(GKService *)self transactionGroupWithName:v62];

        context2 = [v63 context];
        v89[0] = _NSConcreteStackBlock;
        v89[1] = 3221225472;
        v89[2] = sub_1000721F8;
        v89[3] = &unk_100362008;
        v90 = v63;
        v91 = v80;
        v92 = v85;
        v93 = v84;
        v65 = v63;
        [context2 performBlockAndWait:v89];

        v29 = v76;
      }
    }

    v13 = 0;
    v54 = v78;
    if (!handlerCopy)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v52 = GKOSLoggers();
    }

    v53 = os_log_GKError;
    v43 = v80;
    v42 = v86;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v101 = v29;
      v102 = 2112;
      v103 = v87;
      v104 = 2112;
      v105 = v88;
      _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "SetupAccountForParameters: Missing expected account setup parameters playerID:%@ token:%@ accountName:%@", buf, 0x20u);
    }

    v13 = [NSError userErrorForServerCode:5000 reason:@"Missing expected account setup parameters"];
    v54 = 0;
    if (!handlerCopy)
    {
      goto LABEL_52;
    }
  }

  v55 = v54;
  handlerCopy[2](handlerCopy, v13);
  v54 = v55;
  v42 = v86;
LABEL_52:
  if (v54)
  {
    v56 = [(GKService *)GKUtilityServicePrivate serviceFromService:self];
    [v56 terminate];
  }

LABEL_55:
}

- (void)accountEdited:(id)edited alias:(id)alias firstName:(id)name lastName:(id)lastName handler:(id)handler
{
  editedCopy = edited;
  aliasCopy = alias;
  nameCopy = name;
  lastNameCopy = lastName;
  handlerCopy = handler;
  v17 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 2866, "[GKAccountServicePrivate accountEdited:alias:firstName:lastName:handler:]"];
  v18 = [(GKService *)self transactionGroupWithName:v17];

  context = [v18 context];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100072538;
  v26[3] = &unk_100362030;
  v27 = v18;
  selfCopy = self;
  v29 = editedCopy;
  v30 = aliasCopy;
  v31 = nameCopy;
  v32 = lastNameCopy;
  v33 = handlerCopy;
  v20 = handlerCopy;
  v21 = lastNameCopy;
  v22 = nameCopy;
  v23 = aliasCopy;
  v24 = editedCopy;
  v25 = v18;
  [context performBlock:v26];
}

- (void)setLoginStatus:(unint64_t)status handler:(id)handler
{
  statusCopy = status;
  handlerCopy = handler;
  v7 = +[GKPlayerCredentialController sharedController];
  credential = [(GKService *)self credential];
  if (!credential)
  {
    transport = [(GKService *)self transport];
    credential = [transport credential];
  }

  scope = [credential scope];
  if ((statusCopy & 4) != 0)
  {
    v11 = scope | 0xC;
  }

  else
  {
    v11 = scope & 0xFFFFFFF3 | statusCopy & 8;
  }

  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v23 = credential;
    v24 = 2048;
    v25 = v11;
    v26 = 2048;
    v27 = scope;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "setLoginStatus cred:(%@) new:%lX old:%lX", buf, 0x20u);
  }

  [credential setScope:v11];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1000728C8;
  v19 = &unk_100361198;
  selfCopy = self;
  v21 = handlerCopy;
  v14 = handlerCopy;
  v15 = objc_retainBlock(&v16);
  if ((statusCopy & 4) != 0)
  {
    [v7 setPrimaryCredential:credential completionHandler:{v15, v16, v17, v18, v19, selfCopy, v21}];
  }

  else
  {
    [v7 setCredential:credential completionHandler:{v15, v16, v17, v18, v19, selfCopy, v21}];
  }
}

- (void)updateClientSettings:(id)settings
{
  settingsCopy = settings;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 2958, "[GKAccountServicePrivate updateClientSettings:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  transport = [(GKService *)self transport];
  storeBag = [transport storeBag];

  v9 = +[GKPreferences shared];
  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isStoreDemoModeEnabled]);
  [v6 setObject:v10 forKeyedSubscript:@"storeDemoModeEnabled"];

  [v9 debugRequestTimeout];
  v11 = [NSNumber numberWithDouble:?];
  [v6 setObject:v11 forKeyedSubscript:@"GKDebugRequestTimeout"];

  credential = [(GKService *)self credential];
  playerInternal = [credential playerInternal];
  playerID = [playerInternal playerID];
  v15 = [NSString stringWithFormat:@"%@-%@", @"GKAllowNearbyMultiplayer", playerID];

  v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 shouldAllowNearbyMultiplayer]);
  [v6 setObject:v16 forKeyedSubscript:v15];

  if (storeBag)
  {
    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [storeBag shouldUseHTTPPipelining]);
    [v6 setObject:v17 forKeyedSubscript:@"GKHTTPPipelining"];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100072CC0;
    v25[3] = &unk_100360F00;
    v26 = storeBag;
    selfCopy = self;
    v28 = v6;
    [v28 perform:v25];
  }

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100072FD0;
  v22[3] = &unk_100360FC8;
  v22[4] = self;
  v23 = v6;
  v24 = settingsCopy;
  v20 = settingsCopy;
  v21 = v6;
  [v21 notifyOnQueue:replyQueue block:v22];
}

- (void)checkActivitySharingRepromptWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "checkActivitySharingRepromptWithCompletion", buf, 2u);
  }

  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 2995, "[GKAccountServicePrivate checkActivitySharingRepromptWithCompletion:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100073254;
  v17[3] = &unk_100360FF0;
  v17[4] = self;
  v9 = v8;
  v18 = v9;
  [v9 perform:v17];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000737C8;
  v14[3] = &unk_100360EB0;
  v15 = v9;
  v16 = completionCopy;
  v12 = v9;
  v13 = completionCopy;
  [v12 notifyOnQueue:replyQueue block:v14];
}

- (BOOL)shouldCadencedActivitySharingRepromptWithLimit:(int64_t)limit minDaysBetween:(int64_t)between
{
  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  v7 = [standardUserDefaults objectForKey:@"GKActivitySharingReprompt"];
  v8 = [v7 objectForKeyedSubscript:@"totalTriggerCount"];
  integerValue = [v8 integerValue];

  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    limitCopy = integerValue;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "shouldCadencedActivitySharingReprompt: totalTriggerCount=%ld", buf, 0xCu);
  }

  if (integerValue < limit)
  {
    v12 = [v7 objectForKeyedSubscript:@"lastTriggerDate"];
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      limitCopy = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "shouldCadencedActivitySharingReprompt: lastTriggerDate=%@", buf, 0xCu);
    }

    if (!v12)
    {
      if (!os_log_GKGeneral)
      {
        v31 = GKOSLoggers();
      }

      v32 = os_log_GKTrace;
      v23 = 1;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "shouldCadencedActivitySharingReprompt: Yes, the reprompt has never been triggered before.", buf, 2u);
      }

      goto LABEL_35;
    }

    betweenCopy = between;
    v16 = +[NSDate date];
    v17 = +[NSCalendar currentCalendar];
    v36 = v16;
    v18 = [v17 components:16 fromDate:v12 toDate:v16 options:0];
    v19 = [v18 day];
    if (!os_log_GKGeneral)
    {
      v20 = GKOSLoggers();
    }

    v21 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      limitCopy = v19;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "shouldCadencedActivitySharingReprompt: days diff=%ld", buf, 0xCu);
    }

    v22 = v19 <= betweenCopy;
    v23 = v19 > betweenCopy;
    if (v22)
    {
      if (!os_log_GKGeneral)
      {
        v33 = GKOSLoggers();
      }

      v34 = os_log_GKTrace;
      if (!os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }

      *buf = 134217984;
      limitCopy = betweenCopy;
      v26 = "shouldCadencedActivitySharingReprompt: No, last trigger was under %ld days ago.";
      v27 = v34;
      v28 = 12;
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v24 = GKOSLoggers();
      }

      v25 = os_log_GKTrace;
      if (!os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }

      *buf = 0;
      v26 = "shouldCadencedActivitySharingReprompt: Yes, last trigger was a long time ago and it hasn't reached the limit.";
      v27 = v25;
      v28 = 2;
    }

    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, v26, buf, v28);
LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

  if (!os_log_GKGeneral)
  {
    v29 = GKOSLoggers();
  }

  v30 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    limitCopy = limit;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "shouldCadencedActivitySharingReprompt: No, the reprompt has reached the limit of %ld.", buf, 0xCu);
  }

  v23 = 0;
LABEL_36:

  return v23;
}

- (void)setActivitySharingRepromptLastTriggerDate:(id)date
{
  dateCopy = date;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = dateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "setActivitySharingRepromptLastTriggerDate: %@", buf, 0xCu);
  }

  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  v7 = [standardUserDefaults objectForKey:@"GKActivitySharingReprompt"];
  v8 = [v7 objectForKeyedSubscript:@"totalTriggerCount"];
  intValue = [v8 intValue];

  v10 = intValue + 1;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v18) = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "setActivitySharingRepromptLastTriggerDate: new count is %d", buf, 8u);
  }

  dateCopy = [NSNumber numberWithInt:v10, @"lastTriggerDate", @"totalTriggerCount", dateCopy];
  v16[1] = dateCopy;
  v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:&v15 count:2];
  [standardUserDefaults setObject:v14 forKey:@"GKActivitySharingReprompt"];
}

- (void)setLastGamesPrivacyNoticeVersionDisplayedForSignedInPlayer:(int64_t)player
{
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    credential = [(GKService *)self credential];
    playerInternal = [credential playerInternal];
    playerID = [playerInternal playerID];
    v11 = [NSNumber numberWithInteger:player];
    v12 = 138412546;
    v13 = playerID;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setLastGamesPrivacyNoticeVersionDisplayedForSignedInPlayer (%@) %@", &v12, 0x16u);
  }

  [(GKAccountService *)self setLastNoticeVersionForSignedInPlayerWithName:@"GKLastGamesPrivacyNoticeVersionDisplayedForHashedPlayerID_%@" lastVersion:player];
}

- (void)setLastGamesCrossUseConsentNoticeVersionDisplayedForSignedInPlayer:(int64_t)player
{
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    credential = [(GKService *)self credential];
    playerInternal = [credential playerInternal];
    playerID = [playerInternal playerID];
    v11 = [NSNumber numberWithInteger:player];
    v12 = 138412546;
    v13 = playerID;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setLastGamesCrossUseConsentNoticeVersionDisplayedForSignedInPlayer (%@) %@", &v12, 0x16u);
  }

  [(GKAccountService *)self setLastNoticeVersionForSignedInPlayerWithName:@"GKLastGamesCrossUseConsentNoticeVersionDisplayedForHashedPlayerID_%@" lastVersion:player];
}

- (void)setCrossUseLinkedDSIDForSignedInPlayer:(int64_t)player
{
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    credential = [(GKService *)self credential];
    playerInternal = [credential playerInternal];
    playerID = [playerInternal playerID];
    v11 = [NSNumber numberWithInteger:player];
    *buf = 138412546;
    v20 = playerID;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setCrossUseLinkedDSIDForSignedInPlayer (%@) %@", buf, 0x16u);
  }

  credential2 = [(GKService *)self credential];
  playerInternal2 = [credential2 playerInternal];
  playerID2 = [playerInternal2 playerID];
  _gkSHA256Hash = [playerID2 _gkSHA256Hash];
  v16 = [NSString stringWithFormat:@"GKLastLinkedDSIDForHashedPlayerID_%@", _gkSHA256Hash];

  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  v18 = [NSNumber numberWithInteger:player];
  [standardUserDefaults setObject:v18 forKey:v16];
}

@end