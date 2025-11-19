@interface GKAccountServicePrivate
+ (id)getAccountMatchingCredential:(id)a3 from:(id)a4;
+ (id)lastContactsIntegrationConsentVersionDisplayedForPlayerID:(id)a3;
+ (id)lastFriendSuggestionsVersionDisplayedForPlayerID:(id)a3;
+ (id)lastPersonalizationVersionDisplayedForPlayerID:(id)a3;
+ (id)lastProfilePrivacyVersionDisplayedForPlayerID:(id)a3;
+ (int)getAccountAgeCategoryForCredential:(id)a3;
+ (int)getAgeCategoryFromIDMS:(id)a3 appleAccount:(id)a4;
+ (int)playerAgeCategoryForAccount:(id)a3;
+ (int64_t)lastGamesCrossUseConsentNoticeVersionDisplayedForPlayerID:(id)a3;
+ (int64_t)lastGamesPrivacyNoticeVersionDisplayedForPlayerID:(id)a3;
+ (int64_t)lastLinkedDSIDForPlayerID:(id)a3;
+ (unint64_t)lastPrivacyNoticeVersionDisplayedForPlayerID:(id)a3;
+ (unint64_t)lastWelcomeWhatsNewCopyVersionDisplayedForPlayerID:(id)a3;
- (BOOL)requiresAuthenticationForSelector:(SEL)a3;
- (BOOL)shouldCadencedActivitySharingRepromptWithLimit:(int64_t)a3 minDaysBetween:(int64_t)a4;
- (BOOL)shouldSuppressFullscreenSignInSheet;
- (id)_authenticatedLocalPlayerWithCredential:(id)a3 inContext:(id)a4 isValid:(BOOL *)a5;
- (void)_addGameListEntryForGame:(id)a3 profile:(id)a4 moc:(id)a5;
- (void)_appInitWithGroup:(id)a3;
- (void)_authenticateUsername:(id)a3 password:(id)a4 altDSID:(id)a5 validateOnly:(BOOL)a6 handler:(id)a7;
- (void)_constructAuthenticationResponseWithError:(id)a3 handler:(id)a4;
- (void)_continueAuthenticationWithHandler:(id)a3;
- (void)_continueAuthenticationWithLoginDisabled:(BOOL)a3 handler:(id)a4;
- (void)_fetchCredentialsForUsername:(id)a3 password:(id)a4 altDSID:(id)a5 handler:(id)a6;
- (void)_fetchLoginDisabledWithHandler:(id)a3;
- (void)_initGameForDebugModeAppWithResultDictionary:(id)a3 completionHandler:(id)a4;
- (void)_initGameForLaunchedApp:(BOOL)a3 withHandler:(id)a4;
- (void)_loadProfileWithGroup:(id)a3;
- (void)_notifyAllClientsPlayerAuthenticatedFromClient:(id)a3 withCredential:(id)a4 replyGroup:(id)a5;
- (void)_postLaunchEventsForGame:(id)a3 moc:(id)a4;
- (void)_preloadDataForGameCenterTabs;
- (void)_primeCacheWithGroup:(id)a3;
- (void)_syncPlayerOnboardingParametersInManagedObjectContext:(id)a3 withServerResult:(id)a4;
- (void)accountCreated:(id)a3 playerID:(id)a4 authenticationToken:(id)a5 alias:(id)a6 altDSID:(id)a7 finished:(BOOL)a8 handler:(id)a9;
- (void)accountCreated:(id)a3 playerID:(id)a4 authenticationToken:(id)a5 alias:(id)a6 finished:(BOOL)a7 handler:(id)a8;
- (void)accountEdited:(id)a3 alias:(id)a4 firstName:(id)a5 lastName:(id)a6 handler:(id)a7;
- (void)authenticatePlayerWithUsername:(id)a3 password:(id)a4 altDSID:(id)a5 isGame:(BOOL)a6 usingFastPath:(BOOL)a7 handler:(id)a8;
- (void)checkActivitySharingRepromptWithCompletion:(id)a3;
- (void)getAccountAgeCategoryForPlayerID:(id)a3 withCompletion:(id)a4;
- (void)getAccountAuthTokenWithHandler:(id)a3;
- (void)getDevicePushTokenWithHandler:(id)a3;
- (void)getOnboardingInfoForPlayerID:(id)a3 withCompletion:(id)a4;
- (void)isICloudAvailableWithHandler:(id)a3;
- (void)localPlayerAgeCategoryWithCompletion:(id)a3;
- (void)notifyClient:(id)a3 authenticationDidChangeWithError:(id)a4 handler:(id)a5;
- (void)notifyClient:(id)a3 playerAuthenticatedFromClient:(id)a4;
- (void)notifyClient:(id)a3 playerAuthenticatedWithCredential:(id)a4 authenticatingBundleID:(id)a5;
- (void)renewAuthToken;
- (void)renewCredentialsForAccountWithUsername:(id)a3 ttl:(double)a4 withCompletion:(id)a5;
- (void)setActivitySharingRepromptLastTriggerDate:(id)a3;
- (void)setCrossUseLinkedDSIDForSignedInPlayer:(int64_t)a3;
- (void)setLastGamesCrossUseConsentNoticeVersionDisplayedForSignedInPlayer:(int64_t)a3;
- (void)setLastGamesPrivacyNoticeVersionDisplayedForSignedInPlayer:(int64_t)a3;
- (void)setLoginStatus:(unint64_t)a3 handler:(id)a4;
- (void)setupAccountForParameters:(id)a3 handler:(id)a4;
- (void)updateBadgeCounts;
- (void)updateClientSettings:(id)a3;
- (void)validateAccountWithUsername:(id)a3 password:(id)a4 handler:(id)a5;
@end

@implementation GKAccountServicePrivate

- (void)localPlayerAgeCategoryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(GKService *)self credential];
  v6 = [GKAccountServicePrivate getAccountAgeCategoryForCredential:v5];

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

  v4[2](v4, v6);
}

- (void)getAccountAgeCategoryForPlayerID:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "getAccountAgeCategoryForPlayerID: %@", &v13, 0xCu);
  }

  v10 = +[GKPlayerCredentialController sharedController];
  v11 = [(GKService *)self clientProxy];
  v12 = [v10 credentialForPlayerID:v6 environment:{objc_msgSend(v11, "environment")}];

  v7[2](v7, [GKAccountServicePrivate getAccountAgeCategoryForCredential:v12]);
}

+ (int)getAccountAgeCategoryForCredential:(id)a3
{
  v3 = a3;
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

  v14 = [GKAccountServicePrivate getAccountMatchingCredential:v3 from:v6];
  v15 = [GKAccountServicePrivate getAccountMatchingCredential:v3 from:v11];

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

+ (id)getAccountMatchingCredential:(id)a3 from:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[AKAccountManager sharedInstance];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v6;
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
        v14 = [v5 altDSID];
        v15 = [v13 isEqualToString:v14];

        if (v15 & 1) != 0 || ([v12 username], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "accountName"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqualToString:", v17), v17, v16, (v18))
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

+ (int)getAgeCategoryFromIDMS:(id)a3 appleAccount:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[AKAccountManager sharedInstance];
  v8 = v7;
  if (v5)
  {
    if ([v7 userUnderAgeForAccount:v5])
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

    if (!v6 || (v12 = [GKAccountServicePrivate playerAgeCategoryForAccount:v6]) == 0)
    {
      v15 = [v8 birthYearForAccount:v5];
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
    if (!v6)
    {
      v11 = 0;
      goto LABEL_33;
    }

    v11 = [GKAccountServicePrivate playerAgeCategoryForAccount:v6];
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
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 aa_ageCategory]);
    v29 = 138412290;
    v30 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "getAccountAgeCategoryForPlayerID: AppleAccount account has a populated ageCategory = %@", &v29, 0xCu);

LABEL_32:
  }

LABEL_33:

  return v11;
}

+ (int)playerAgeCategoryForAccount:(id)a3
{
  v3 = [a3 aa_ageCategory];
  if ((v3 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_1002C29F0[(v3 - 1)];
  }
}

- (void)getOnboardingInfoForPlayerID:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[GKPlayerInternalOnboarding alloc] initWithPlayerID:v7];

  v9 = [(GKService *)self clientProxy];
  v10 = [v9 replyQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006590C;
  v13[3] = &unk_100360EB0;
  v14 = v8;
  v15 = v6;
  v11 = v8;
  v12 = v6;
  dispatch_async(v10, v13);
}

+ (unint64_t)lastWelcomeWhatsNewCopyVersionDisplayedForPlayerID:(id)a3
{
  v3 = a3;
  v4 = [v3 _gkSHA256Hash];
  v5 = [NSString stringWithFormat:@"GKLastWelcomeWhatsNewCopyVersionDisplayedForHashedPlayerID_%@", v4];

  v6 = [objc_opt_class() standardUserDefaults];
  v7 = [v6 integerForKey:v5];

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
    v14 = v3;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "lastWelcomeWhatsNewCopyVersionDisplayedForPlayer (%@) -> %@", buf, 0x16u);
  }

  return v7;
}

+ (unint64_t)lastPrivacyNoticeVersionDisplayedForPlayerID:(id)a3
{
  v3 = a3;
  v4 = [v3 _gkSHA256Hash];
  v5 = [NSString stringWithFormat:@"GKLastPrivacyNoticeVersionDisplayedForHashedPlayerID_%@", v4];

  v6 = [objc_opt_class() standardUserDefaults];
  v7 = [v6 integerForKey:v5];

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
    v14 = v3;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "lastPrivacyNoticeVersionDisplayedForPlayer (%@) -> %@", buf, 0x16u);
  }

  return v7;
}

+ (int64_t)lastGamesPrivacyNoticeVersionDisplayedForPlayerID:(id)a3
{
  v3 = a3;
  v4 = [v3 _gkSHA256Hash];
  v5 = [NSString stringWithFormat:@"GKLastGamesPrivacyNoticeVersionDisplayedForHashedPlayerID_%@", v4];

  v6 = [objc_opt_class() standardUserDefaults];
  v7 = [v6 integerForKey:v5];

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
    v14 = v3;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "lastGamesPrivacyNoticeVersionDisplayedForPlayerID (%@) -> %@", buf, 0x16u);
  }

  return v7;
}

+ (int64_t)lastLinkedDSIDForPlayerID:(id)a3
{
  v3 = a3;
  v4 = [v3 _gkSHA256Hash];
  v5 = [NSString stringWithFormat:@"GKLastLinkedDSIDForHashedPlayerID_%@", v4];

  v6 = [objc_opt_class() standardUserDefaults];
  v7 = [v6 integerForKey:v5];

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
    v14 = v3;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "lastLinkedDSIDForPlayerID (%@) -> %@", buf, 0x16u);
  }

  return v7;
}

+ (int64_t)lastGamesCrossUseConsentNoticeVersionDisplayedForPlayerID:(id)a3
{
  v3 = a3;
  v4 = [v3 _gkSHA256Hash];
  v5 = [NSString stringWithFormat:@"GKLastGamesCrossUseConsentNoticeVersionDisplayedForHashedPlayerID_%@", v4];

  v6 = [objc_opt_class() standardUserDefaults];
  v7 = [v6 integerForKey:v5];

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
    v14 = v3;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "lastGamesCrossUseConsentNoticeVersionDisplayedForPlayerID (%@) -> %@", buf, 0x16u);
  }

  return v7;
}

+ (id)lastPersonalizationVersionDisplayedForPlayerID:(id)a3
{
  v3 = a3;
  v4 = [v3 _gkSHA256Hash];
  v5 = [NSString stringWithFormat:@"GKLastPersonalizationVersionDisplayedForHashedPlayerID_%@", v4];

  v6 = [objc_opt_class() standardUserDefaults];
  v7 = [v6 stringForKey:v5];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "lastPersonalizationVersionDisplayedForPlayer (%@) -> %@", buf, 0x16u);
  }

  return v7;
}

+ (id)lastProfilePrivacyVersionDisplayedForPlayerID:(id)a3
{
  v3 = a3;
  v4 = [v3 _gkSHA256Hash];
  v5 = [NSString stringWithFormat:@"GKLastProfilePrivacyVersionDisplayedForHashedPlayerID_%@", v4];

  v6 = [objc_opt_class() standardUserDefaults];
  v7 = [v6 stringForKey:v5];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "lastProfilePrivacyVersionDisplayedForPlayer (%@) -> %@", buf, 0x16u);
  }

  return v7;
}

+ (id)lastFriendSuggestionsVersionDisplayedForPlayerID:(id)a3
{
  v3 = a3;
  v4 = [v3 _gkSHA256Hash];
  v5 = [NSString stringWithFormat:@"GKLastFriendSuggestionsVersionDisplayedForHashedPlayerID_%@", v4];

  v6 = [objc_opt_class() standardUserDefaults];
  v7 = [v6 stringForKey:v5];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "lastFriendSuggestionsVersionDisplayedForPlayer (%@) -> %@", buf, 0x16u);
  }

  return v7;
}

+ (id)lastContactsIntegrationConsentVersionDisplayedForPlayerID:(id)a3
{
  v3 = a3;
  v4 = [v3 _gkSHA256Hash];
  v5 = [NSString stringWithFormat:@"GKLastContactsIntegrationConsentVersionDisplayedForHashedPlayerID_%@", v4];

  v6 = [objc_opt_class() standardUserDefaults];
  v7 = [v6 stringForKey:v5];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "lastContactsIntegrationConsentVersionDisplayedForPlayer (%@) -> %@", buf, 0x16u);
  }

  return v7;
}

- (void)isICloudAvailableWithHandler:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
  [GKCloudKitMultiplayer userRecordIDWithCompletionHandler:v8];
}

- (BOOL)requiresAuthenticationForSelector:(SEL)a3
{
  if (sel_isEqual("getAccountNameWithHandler:", a3) || sel_isEqual("getAuthenticatedPlayerIDWithHandler:", a3) || sel_isEqual("getAuthenticatedLocalPlayersWithStatus:handler:", a3))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = GKAccountServicePrivate;
  return [(GKService *)&v6 requiresAuthenticationForSelector:a3];
}

- (void)updateBadgeCounts
{
  v3 = [(GKService *)self clientProxy];
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
  v7 = [v3 replyQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100066E40;
  v9[3] = &unk_100361770;
  v10 = v3;
  v8 = v3;
  [v6 notifyOnQueue:v7 block:v9];
}

- (void)_authenticateUsername:(id)a3 password:(id)a4 altDSID:(id)a5 validateOnly:(BOOL)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 860, "[GKAccountServicePrivate _authenticateUsername:password:altDSID:validateOnly:handler:]"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10006705C;
  v22[3] = &unk_100361810;
  v23 = v12;
  v24 = v13;
  v28 = a6;
  v25 = v14;
  v26 = self;
  v27 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  [GKActivity named:v16 execute:v22];

  v21 = +[GKReporter reporter];
  [v21 reportEvent:GKReporterDomainLogin type:GKLoginSignIn];
}

- (void)getAccountAuthTokenWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(GKService *)self credential];
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100068044;
    v6[3] = &unk_100360EB0;
    v8 = v4;
    v7 = v5;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)getDevicePushTokenWithHandler:(id)a3
{
  v4 = a3;
  v6 = +[GKDataRequestManager sharedManager];
  v5 = [v6 pushToken];
  (*(a3 + 2))(v4, v5);
}

- (void)_constructAuthenticationResponseWithError:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 1186, "[GKAccountServicePrivate _constructAuthenticationResponseWithError:handler:]"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100068240;
  v11[3] = &unk_100360FC8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [GKActivity named:v8 execute:v11];
}

- (void)_addGameListEntryForGame:(id)a3 profile:(id)a4 moc:(id)a5
{
  v7 = a5;
  v8 = [a4 gameList];
  if (v8)
  {
    v9 = [(GKService *)self clientProxy];
    v10 = [v9 bundleIdentifier];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100068AA0;
    v14[3] = &unk_100361900;
    v11 = v10;
    v15 = v11;
    v12 = [v8 findEntry:v14];
    v13 = [v8 mutableOrderedSetValueForKeyPath:@"entries"];
    if (!v12)
    {
      v12 = [(GKCacheObject *)[GKGameListEntryCacheObject alloc] initWithManagedObjectContext:v7];
      [(GKGameListEntryCacheObject *)v12 setBundleID:v11];
      [v13 addObject:v12];
    }

    [v13 insertObject:v12 atIndex:0];
  }
}

- (void)_postLaunchEventsForGame:(id)a3 moc:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v10 = [(GKService *)self clientProxy];
  v11 = [v10 launchEvent];

  if (v11)
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      v15 = [v11 eventType];
      v16 = [v11 context];
      v17 = [(GKService *)self clientProxy];
      v25 = 67109634;
      *v26 = v15;
      *&v26[4] = 2112;
      *&v26[6] = v16;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Launch event(%d) context %@ for client %@", &v25, 0x1Cu);
    }

    v18 = [v11 context];
    v19 = [v11 eventType];
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        objc_opt_class();
        objc_opt_isKindOfClass();
        v20 = [(GKService *)self clientProxy];
        [v20 friendRequestSelected:v18];
        goto LABEL_27;
      }

      if (v19 == 3)
      {
        if (!os_log_GKGeneral)
        {
          v23 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
        {
          sub_100287C24();
        }

        v20 = [(GKService *)self clientProxy];
        [v20 deliverEncodedGameActivityInstance:v18];
        goto LABEL_27;
      }
    }

    else
    {
      if (!v19)
      {
        objc_opt_class();
        objc_opt_isKindOfClass();
        v20 = [(GKService *)self clientProxy];
        [v20 receivedChallengeSelected:v18];
        goto LABEL_27;
      }

      if (v19 == 1)
      {
        objc_opt_class();
        objc_opt_isKindOfClass();
        v20 = [(GKService *)self clientProxy];
        [v20 completedChallengeSelected:v18];
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
    v18 = v22;
    v20 = [(GKService *)self clientProxy];
    v25 = 138412290;
    *v26 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "No launch event for client %@", &v25, 0xCu);
    goto LABEL_27;
  }

LABEL_29:
  v24 = [(GKService *)self clientProxy];
  [v24 setLaunchEvent:0];
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
  v6 = [(GKService *)self clientProxy];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100068FA0;
  v7[3] = &unk_100361948;
  v7[4] = self;
  [v5 issueRequest:0 bagKey:@"gk-renew-auth-token" clientProxy:v6 handler:v7];
}

- (void)_initGameForLaunchedApp:(BOOL)a3 withHandler:(id)a4
{
  v6 = a4;
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
  v23 = self;
  v13 = v11;
  v24 = v13;
  v26 = buf;
  v27 = a3;
  v14 = v9;
  v25 = v14;
  [v13 perform:v21];
  if (v6)
  {
    v15 = [v12 replyQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100069E28;
    v17[3] = &unk_100361A30;
    v19 = v6;
    v18 = v13;
    v20 = buf;
    [v18 notifyOnQueue:v15 block:v17];
  }

  v16 = +[GKReporter reporter];
  [v16 reportEvent:GKReporterDomainLogin type:GKLoginAppInit];

  _Block_object_dispose(buf, 8);
}

- (void)_initGameForDebugModeAppWithResultDictionary:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKService *)self clientProxy];
  v9 = [v8 isInDebugMode];

  if (v9)
  {
    v10 = [v6 mutableCopy];
    v11 = [(GKService *)self credential];
    [v11 playerInternal];
    v12 = v36 = v7;
    v13 = [v12 playerID];
    v14 = [(GKService *)self clientProxy];
    v15 = [v14 bundleIdentifier];
    v16 = [GKScopedIDs makeNonpersistentWithPlayerID:v13 gameBundleID:v15];

    v35 = v16;
    v17 = [v16 gamePlayerID];
    v34 = v10;
    [v10 setObject:v17 forKeyedSubscript:GKGamePlayerIDKey];

    v18 = [v16 teamPlayerID];
    [v10 setObject:v18 forKeyedSubscript:GKTeamPlayerIDKey];

    v19 = [v6 objectForKey:@"game-metadata"];
    v33 = [(GKService *)GKGameStatService serviceFromService:self];
    v20 = [(GKService *)self clientProxy];
    v21 = [v20 bundleIdentifier];
    v22 = [(GKService *)self clientProxy];
    [v22 bundleVersion];
    v23 = v37 = v6;
    v24 = [(GKService *)self clientProxy];
    v25 = [v24 bundleShortVersion];
    v26 = [v19 objectForKeyedSubscript:@"adam-id"];
    v27 = [GKGameDescriptor gameDescriptorWithBundleID:v21 bundleVersion:v23 shortBundleVersion:v25 adamID:v26];

    v7 = v36;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10006A21C;
    v38[3] = &unk_100361AA8;
    v39 = v19;
    v40 = v33;
    v41 = v27;
    v42 = self;
    v43 = v34;
    v44 = v36;
    v28 = v34;
    v29 = v27;
    v30 = v33;
    v31 = v19;
    [v30 getAchievementDescriptionsForGameDescriptor:v29 handler:v38];

    v6 = v37;
  }

  else
  {
    v32 = [GKResource resourceWithID:@"debug-init" representedItem:v6];
    if (v7)
    {
      (*(v7 + 2))(v7, v32, 0);
    }
  }
}

- (void)_syncPlayerOnboardingParametersInManagedObjectContext:(id)a3 withServerResult:(id)a4
{
  v6 = a4;
  v7 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:a3];
  v8 = [v6 representedItem];

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    log = v10;
    v57 = +[GKPreferences shared];
    v53 = [v57 forcePrivacyNotice];
    v52 = GKAccountPrivacyNoticeVersionKey;
    v51 = [v8 objectForKeyedSubscript:?];
    v56 = +[GKPreferences shared];
    v50 = [v56 forceDefaultNickname];
    v58 = self;
    v11 = GKAccountIsDefaultNicknameKey;
    v12 = [v8 objectForKeyedSubscript:GKAccountIsDefaultNicknameKey];
    v54 = +[GKPreferences shared];
    v49 = [v54 forceDefaultPrivacy];
    v13 = GKAccountHasPrivacySettingsKey;
    [v8 objectForKeyedSubscript:GKAccountHasPrivacySettingsKey];
    v14 = v59 = v8;
    v15 = +[GKPreferences shared];
    v16 = [v15 forceDefaultContactsIntegrationConsent];
    v17 = v7;
    v18 = GKContactsIntegrationConsentKey;
    v19 = [v59 objectForKeyedSubscript:GKContactsIntegrationConsentKey];
    *buf = 67111938;
    v62 = v53;
    v63 = 2112;
    v64 = v52;
    v65 = 2112;
    v66 = v51;
    v67 = 1024;
    v68 = v50;
    v69 = 2112;
    v70 = v11;
    self = v58;
    v71 = 2112;
    v72 = v12;
    v73 = 1024;
    v74 = v49;
    v75 = 2112;
    v76 = v13;
    v77 = 2112;
    v78 = v14;
    v79 = 1024;
    v80 = v16;
    v81 = 2112;
    v82 = v18;
    v7 = v17;
    v83 = 2112;
    v84 = v19;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Updating onboarding parameters for the player:\n GKPreferences.shared.forcePrivacyNotice=%d, server has %@=%@\n GKPreferences.shared.forceDefaultNickname=%d, server has %@=%@\n GKPreferences.shared.forceDefaultPrivacy=%d, server has %@=%@\n GKPreferences.shared.forceDefaultContactsIntegrationConsent=%d, server has %@=%@", buf, 0x6Au);

    v8 = v59;
  }

  v20 = +[GKPreferences shared];
  v21 = [v20 forcePrivacyNotice];

  if (v21)
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
    v25 = [v8 objectForKeyedSubscript:GKAccountPrivacyNoticeVersionKey];

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

      v28 = [v8 objectForKeyedSubscript:v24];
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
  v32 = [v8 objectForKeyedSubscript:GKAccountIsDefaultNicknameKey];
  if (v32 && (v33 = v32, [v8 objectForKeyedSubscript:v31], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "BOOLValue"), v34, v33, v35))
  {
    [v7 setDefaultNickname:1];
  }

  else
  {
    v36 = +[GKPreferences shared];
    [v7 setDefaultNickname:{objc_msgSend(v36, "forceDefaultNickname")}];
  }

  v37 = GKAccountHasPrivacySettingsKey;
  v38 = [v8 objectForKeyedSubscript:GKAccountHasPrivacySettingsKey];
  if (v38 && (v39 = v38, [v8 objectForKeyedSubscript:v37], v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "BOOLValue"), v40, v39, (v41 & 1) == 0))
  {
    [v7 setDefaultPrivacyVisibility:1];
  }

  else
  {
    v42 = +[GKPreferences shared];
    [v7 setDefaultPrivacyVisibility:{objc_msgSend(v42, "forceDefaultPrivacy")}];
  }

  v43 = GKContactsIntegrationConsentKey;
  v44 = [v8 objectForKeyedSubscript:GKContactsIntegrationConsentKey];
  if (v44 && (v45 = v44, [v8 objectForKeyedSubscript:v43], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "isEqualToString:", GKContactsIntegrationConsentUndetermined), v46, v45, v47))
  {
    [v7 setDefaultContactsIntegrationConsent:1];
  }

  else
  {
    v48 = +[GKPreferences shared];
    [v7 setDefaultContactsIntegrationConsent:{objc_msgSend(v48, "forceDefaultContactsIntegrationConsent")}];
  }
}

- (id)_authenticatedLocalPlayerWithCredential:(id)a3 inContext:(id)a4 isValid:(BOOL *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 accountName];
  v10 = dispatch_get_current_queue();
  v11 = &_sScA15unownedExecutorScevgTj_ptr;
  v12 = &_sScA15unownedExecutorScevgTj_ptr;
  if (dispatch_queue_get_specific(v10, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v13 = +[NSThread callStackSymbols];
    v14 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKAccountServicePrivate _authenticatedLocalPlayerWithCredential:inContext:isValid:]", v13];
    [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAccountService.m"];
    v15 = v8;
    v16 = a5;
    v17 = v9;
    v19 = v18 = v7;
    v20 = [v19 lastPathComponent];
    v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v14, "-[GKAccountServicePrivate _authenticatedLocalPlayerWithCredential:inContext:isValid:]", [v20 UTF8String], 1568);

    v7 = v18;
    v9 = v17;
    a5 = v16;
    v8 = v15;
    v12 = &_sScA15unownedExecutorScevgTj_ptr;

    [NSException raise:@"GameKit Exception" format:@"%@", v21];
    v11 = &_sScA15unownedExecutorScevgTj_ptr;
  }

  if (!v9)
  {
    v22 = v11[277];
    v23 = [v22 stringWithFormat:@"Assertion failed"];
    v24 = [v11[277] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAccountService.m"];
    v25 = [v24 lastPathComponent];
    v26 = [v22 stringWithFormat:@"%@ (accountName != ((void *)0))\n[%s (%s:%d)]", v23, "-[GKAccountServicePrivate _authenticatedLocalPlayerWithCredential:inContext:isValid:]", objc_msgSend(v25, "UTF8String"), 1570];

    [v12[171] raise:@"GameKit Exception" format:{@"%@", v26}];
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

  *a5 = 0;
  v29 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v8];

  v30 = [v29 isValid];
  *a5 = v30;
  if (v30)
  {
    v31 = [v29 internalRepresentation];
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

    v34 = [v7 playerInternal];
    v31 = +[GKLocalPlayerInternal internalRepresentation];
    [v31 setAccountName:v9];
    v35 = [v34 alias];
    [v31 setAlias:v35];

    v36 = [v34 playerID];
    [v31 setPlayerID:v36];

    if (!os_log_GKGeneral)
    {
      v37 = GKOSLoggers();
    }

    v38 = os_log_GKCache;
    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_100287EF4(v38, v31);
    }
  }

  return v31;
}

- (void)_primeCacheWithGroup:(id)a3
{
  v4 = a3;
  v5 = [(GKService *)self clientProxy];
  v6 = [(GKService *)GKFriendServicePrivate serviceFromService:self];
  Current = CFAbsoluteTimeGetCurrent();
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10006B1E8;
  v14 = &unk_100361B40;
  v8 = v6;
  v15 = v8;
  v16 = Current;
  [v4 perform:&v11];

  if (([v5 isUIService] & 1) == 0 && (objc_msgSend(v5, "isExtension") & 1) == 0)
  {
    v9 = [(GKService *)GKMultiplayerMatchService serviceFromService:self];
    v10 = [v5 gameDescriptor];
    [v9 getCompatibilityMatrix:v10 handler:0];
  }
}

- (void)_fetchCredentialsForUsername:(id)a3 password:(id)a4 altDSID:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 1621, "[GKAccountServicePrivate _fetchCredentialsForUsername:password:altDSID:handler:]"];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10006B48C;
  v19[3] = &unk_100360F28;
  v20 = v10;
  v21 = v11;
  v22 = self;
  v23 = v12;
  v24 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [GKActivity named:v14 execute:v19];
}

- (void)_preloadDataForGameCenterTabs
{
  v3 = dispatch_time(0, 100000000);
  v4 = [(GKService *)self clientProxy];
  v5 = [v4 replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006B9C8;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_after(v3, v5, block);
}

- (void)authenticatePlayerWithUsername:(id)a3 password:(id)a4 altDSID:(id)a5 isGame:(BOOL)a6 usingFastPath:(BOOL)a7 handler:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
  }

  v18 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v31 = v13;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "GKAccountService auth username:%@", buf, 0xCu);
  }

  v19 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 1749, "[GKAccountServicePrivate authenticatePlayerWithUsername:password:altDSID:isGame:usingFastPath:handler:]"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10006BDCC;
  v24[3] = &unk_100361810;
  v29 = a6;
  v24[4] = self;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  [GKActivity named:v19 execute:v24];
}

- (void)notifyClient:(id)a3 authenticationDidChangeWithError:(id)a4 handler:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006C728;
  v9[3] = &unk_100360FC8;
  v9[4] = self;
  v10 = a4;
  v11 = a5;
  v7 = v11;
  v8 = v10;
  [a3 sendAuthenticationDidChangeNotificationWithAuthenticatingBundleID:0 completionHandler:v9];
}

- (void)_loadProfileWithGroup:(id)a3
{
  v5 = a3;
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
  [v5 perform:v10];
}

- (void)_appInitWithGroup:(id)a3
{
  v5 = a3;
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
  v10 = v5;
  v11 = a2;
  v9[4] = self;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = v5;
  [v8 perform:v9];
}

- (void)notifyClient:(id)a3 playerAuthenticatedFromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v14 = v6;
  v16 = v15 = self;
  v17 = v7;
  v10 = v7;
  v11 = v16;
  v12 = v6;
  [GKClientProxy enumerateClientsUsingBlock:v13];
}

- (void)notifyClient:(id)a3 playerAuthenticatedWithCredential:(id)a4 authenticatingBundleID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 bundleIdentifier];
  v11 = GKGetApplicationStateForBundleID(v10);

  if (v11 == 8)
  {
    v12 = [v7 transportWithCredential:v8];
    v13 = [(GKService *)GKAccountServicePrivate serviceWithTransport:v12 forClient:v7 credential:v8];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10006D6A0;
    v14[3] = &unk_100361DE0;
    v15 = v7;
    v16 = v9;
    [v13 _initGameForLaunchedApp:0 withHandler:v14];
  }

  else
  {
    [v7 sendAuthenticationDidChangeNotificationWithAuthenticatingBundleID:v9 completionHandler:&stru_100361E00];
  }
}

- (void)_notifyAllClientsPlayerAuthenticatedFromClient:(id)a3 withCredential:(id)a4 replyGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006D898;
  v13[3] = &unk_100361D58;
  v14 = v8;
  v15 = a5;
  v16 = self;
  v17 = v9;
  v10 = v9;
  v11 = v15;
  v12 = v8;
  [GKClientProxy enumerateClientsUsingBlock:v13];
}

- (void)_fetchLoginDisabledWithHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(GKSignInVisibilityConfig);
  v6 = [(GKService *)self transport];
  v7 = [v6 storeBag];

  if (v7)
  {
    v8 = [(GKService *)self transport];
    v9 = [v8 storeBag];
    v10 = [v9 valueForKey:GKSignInBannerEnabled];

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

  v12 = [(GKAccountServicePrivate *)self shouldSuppressFullscreenSignInSheet];
  v13 = v12;
  if (v12)
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

  v16 = [(GKService *)self transport];
  v17 = [v16 storeBag];
  v18 = (v17 == 0) | v11;

  if (v18)
  {
    v19 = [v5 sheetConfig];
    [v19 setLimit:3];

    v20 = [v5 bannerConfig];
    [v20 setEnabled:0];

    v21 = +[GKPlayerCredentialController sharedController];
    v22 = [v21 signInVisibilityManager];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10006DE60;
    v33[3] = &unk_100361E28;
    v34 = v4;
    v35 = v13;
    v23 = v4;
    [v22 promptsDisabledWithConfig:v5 scope:1 handler:v33];

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
    v25 = [(GKService *)self transport];
    v26 = [v25 storeBag];
    v27 = [(GKService *)self clientProxy];
    v28 = [v27 replyQueue];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10006DE7C;
    v29[3] = &unk_100361E50;
    v30 = v5;
    v31 = v4;
    v32 = v13;
    v24 = v4;
    [v26 getValuesForKeys:v23 queue:v28 completion:v29];
  }
}

- (BOOL)shouldSuppressFullscreenSignInSheet
{
  v2 = [(GKService *)self clientProxy];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = [GKGame isNewsApp:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_continueAuthenticationWithHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006E2C4;
  v4[3] = &unk_100361E78;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(GKAccountServicePrivate *)v5 _fetchLoginDisabledWithHandler:v4];
}

- (void)_continueAuthenticationWithLoginDisabled:(BOOL)a3 handler:(id)a4
{
  v6 = a4;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = NSStringFromSelector(a2);
    v11 = [(GKService *)self credential];
    *buf = 138412546;
    v69 = v10;
    v70 = 2112;
    v71 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ cred:%@", buf, 0x16u);
  }

  v12 = [(GKService *)self credential];
  v13 = [v12 accountName];

  if (!v13)
  {
    v14 = [NSString stringWithFormat:@"Assertion failed"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAccountService.m"];
    v16 = [v15 lastPathComponent];
    v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (credential.accountName)\n[%s (%s:%d)]", v14, "-[GKAccountServicePrivate _continueAuthenticationWithLoginDisabled:handler:]", [v16 UTF8String], 2291);

    [NSException raise:@"GameKit Exception" format:@"%@", v17];
  }

  v45 = a2;
  v46 = v6;
  v18 = [v12 playerInternal];
  v19 = [v18 playerID];

  if (!v19)
  {
    v20 = [NSString stringWithFormat:@"Assertion failed"];
    v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAccountService.m"];
    v22 = [v21 lastPathComponent];
    v23 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (credential.playerInternal.playerID)\n[%s (%s:%d)]", v20, "-[GKAccountServicePrivate _continueAuthenticationWithLoginDisabled:handler:]", [v22 UTF8String], 2292);

    [NSException raise:@"GameKit Exception" format:@"%@", v23];
  }

  v44 = [(GKService *)self clientProxy];
  v24 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 2295, "[GKAccountServicePrivate _continueAuthenticationWithLoginDisabled:handler:]"];
  v43 = [GKDispatchGroup dispatchGroupWithName:v24];

  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_10006E98C;
  v67[3] = &unk_100361770;
  v67[4] = self;
  [(GKAccountServicePrivate *)self updateClientSettings:v67];
  v25 = [(GKService *)self clientProxy];
  v26 = [v12 playerInternal];
  v27 = [v26 playerID];
  v28 = [v25 managedObjectContextForPlayerID:v27];

  v29 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 2303, "[GKAccountServicePrivate _continueAuthenticationWithLoginDisabled:handler:]"];
  v30 = [GKDispatchGroup dispatchGroupWithName:v29];

  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_10006E9D8;
  v64[3] = &unk_1003610B8;
  v31 = v12;
  v65 = v31;
  v32 = v28;
  v66 = v32;
  [v32 performBlockAndWait:v64];
  Current = CFAbsoluteTimeGetCurrent();
  if (v31 && !a3)
  {
    [(GKAccountServicePrivate *)self _loadProfileWithGroup:v30];
    [(GKAccountServicePrivate *)self _appInitWithGroup:v30];
    [(GKAccountServicePrivate *)self _primeCacheWithGroup:v30];
  }

  v34 = [v44 replyQueue];
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
  v59 = self;
  v38 = v31;
  v60 = v38;
  v63 = v45;
  v39 = v44;
  v61 = v39;
  [v35 join:v36 queue:v34 block:v55];

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
    v41 = [v39 replyQueue];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10006F360;
    v47[3] = &unk_100361F18;
    v52 = v46;
    v48 = v40;
    v49 = v38;
    v50 = v39;
    v51 = self;
    [v48 notifyOnQueue:v41 block:v47];
  }
}

- (void)accountCreated:(id)a3 playerID:(id)a4 authenticationToken:(id)a5 alias:(id)a6 finished:(BOOL)a7 handler:(id)a8
{
  v35 = a7;
  v13 = a4;
  v14 = a6;
  v15 = a8;
  v16 = a5;
  v17 = a3;
  v36 = +[GKDataRequestManager sharedManager];
  v18 = +[GKPlayerCredential internalRepresentation];
  v19 = +[GKLocalPlayerInternal internalRepresentation];
  [v19 setPlayerID:v13];
  [v19 setAlias:v14];
  [v18 setAccountName:v17];

  [v18 setAuthenticationToken:v16];
  [v18 setPlayerInternal:v19];
  v20 = [(GKService *)self clientProxy];
  [v18 setEnvironment:{objc_msgSend(v20, "environment")}];

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
  v25 = [v22 context];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10006FAD0;
  v46[3] = &unk_100361F40;
  v26 = v13;
  v47 = v26;
  v27 = v22;
  v48 = v27;
  v49 = self;
  v28 = v14;
  v50 = v28;
  v29 = v24;
  v51 = v29;
  v30 = v23;
  v52 = v30;
  [v25 performBlockAndWait:v46];

  if (v35)
  {
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10006FC54;
    v44[3] = &unk_100360FF0;
    v44[4] = self;
    v45 = v27;
    [v45 perform:v44];

    v31 = v36;
    if (!v15)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v32 = [v27 context];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10006FD7C;
  v40[3] = &unk_100361F68;
  v41 = v27;
  v42 = self;
  v31 = v36;
  v43 = v36;
  [v32 performBlockAndWait:v40];

  if (v15)
  {
LABEL_5:
    v33 = [(GKService *)self clientProxy];
    v34 = [v33 replyQueue];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100070004;
    v37[3] = &unk_100360EB0;
    v39 = v15;
    v38 = v27;
    [v38 notifyOnQueue:v34 block:v37];
  }

LABEL_6:
}

- (void)accountCreated:(id)a3 playerID:(id)a4 authenticationToken:(id)a5 alias:(id)a6 altDSID:(id)a7 finished:(BOOL)a8 handler:(id)a9
{
  v37 = a8;
  v14 = a4;
  v15 = a6;
  v16 = a9;
  v17 = a7;
  v18 = a5;
  v19 = a3;
  v38 = +[GKDataRequestManager sharedManager];
  v20 = +[GKPlayerCredential internalRepresentation];
  v21 = +[GKLocalPlayerInternal internalRepresentation];
  [v21 setPlayerID:v14];
  [v21 setAlias:v15];
  [v20 setAccountName:v19];

  [v20 setAuthenticationToken:v18];
  [v20 setPlayerInternal:v21];
  v22 = [(GKService *)self clientProxy];
  [v20 setEnvironment:{objc_msgSend(v22, "environment")}];

  [v20 setScope:14];
  [v20 setAltDSID:v17];

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
  v27 = [v24 context];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10007072C;
  v48[3] = &unk_100361F40;
  v28 = v14;
  v49 = v28;
  v29 = v24;
  v50 = v29;
  v51 = self;
  v30 = v15;
  v52 = v30;
  v31 = v26;
  v53 = v31;
  v32 = v25;
  v54 = v32;
  [v27 performBlockAndWait:v48];

  if (v37)
  {
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000708B0;
    v46[3] = &unk_100360FF0;
    v46[4] = self;
    v47 = v29;
    [v47 perform:v46];

    v33 = v38;
    if (!v16)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v34 = [v29 context];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000709D8;
  v42[3] = &unk_100361F68;
  v43 = v29;
  v44 = self;
  v33 = v38;
  v45 = v38;
  [v34 performBlockAndWait:v42];

  if (v16)
  {
LABEL_5:
    v35 = [(GKService *)self clientProxy];
    v36 = [v35 replyQueue];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100070C60;
    v39[3] = &unk_100360EB0;
    v41 = v16;
    v40 = v29;
    [v40 notifyOnQueue:v36 block:v39];
  }

LABEL_6:
}

- (void)validateAccountWithUsername:(id)a3 password:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(GKAuthenticateResponse);
  v12 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 2619, "[GKAccountServicePrivate validateAccountWithUsername:password:handler:]"];
  v13 = [GKDispatchGroup dispatchGroupWithName:v12];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100070EF0;
  v26[3] = &unk_100361F90;
  v26[4] = self;
  v27 = v8;
  v28 = v9;
  v14 = v13;
  v29 = v14;
  v15 = v9;
  v16 = v8;
  [v14 perform:v26];
  v17 = [(GKService *)self clientProxy];
  v18 = [v17 replyQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100071000;
  v22[3] = &unk_100361538;
  v24 = v14;
  v25 = v10;
  v23 = v11;
  v19 = v14;
  v20 = v11;
  v21 = v10;
  [v19 notifyOnQueue:v18 block:v22];
}

- (void)renewCredentialsForAccountWithUsername:(id)a3 ttl:(double)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 2637, "[GKAccountServicePrivate renewCredentialsForAccountWithUsername:ttl:withCompletion:]"];
  v11 = [GKDispatchGroup dispatchGroupWithName:v10];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100071244;
  v21[3] = &unk_100361FB8;
  v22 = v8;
  v24 = a4;
  v12 = v11;
  v23 = v12;
  v13 = v8;
  [v12 perform:v21];
  v14 = [(GKService *)self clientProxy];
  v15 = [v14 replyQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100071368;
  v18[3] = &unk_100360EB0;
  v19 = v12;
  v20 = v9;
  v16 = v12;
  v17 = v9;
  [v16 notifyOnQueue:v15 block:v18];
}

- (void)setupAccountForParameters:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() standardUserDefaults];
  v9 = [v8 objectForKey:GKOptedOutOfGameCenter];
  v10 = [v9 BOOLValue];

  if (v10)
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
    v7[2](v7, v13);
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
    if (v7)
    {
      v7[2](v7, v13);
    }

    v19 = [(GKService *)GKUtilityServicePrivate serviceFromService:self];
    [v19 terminate];

    goto LABEL_55;
  }

  v15 = +[GKPreferences shared];
  v16 = [v15 isGameCenterDisabled];

  if (v16)
  {
    goto LABEL_10;
  }

  v20 = +[ACAccountStore defaultStore];
  v21 = [(GKService *)self credential];
  v22 = [v21 accountName];

  v23 = [v20 _gkAccountForAppleID:v22];
  v24 = v23;
  if (v22)
  {
    v25 = v23 == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v25;
  v78 = v26;
  v81 = [(GKService *)self clientProxy];
  if (!os_log_GKGeneral)
  {
    v27 = GKOSLoggers();
  }

  v28 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v101 = v6;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Account setup parameters: %@", buf, 0xCu);
  }

  v29 = [v6 objectForKeyedSubscript:@"player-id"];
  v80 = [v6 objectForKeyedSubscript:@"alias"];
  v88 = [v6 objectForKeyedSubscript:@"apple-id"];
  v87 = [v6 objectForKeyedSubscript:@"auth-token"];
  v85 = [v6 objectForKeyedSubscript:@"firstName"];
  v84 = [v6 objectForKeyedSubscript:@"lastName"];
  v83 = [v6 objectForKeyedSubscript:@"altDSID"];
  v30 = [v6 objectForKeyedSubscript:@"dsid"];
  objc_opt_class();
  v86 = v30;
  if (objc_opt_isKindOfClass())
  {
    v31 = [v30 stringValue];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v82 = 0;
      goto LABEL_33;
    }

    v31 = v30;
  }

  v82 = v31;
LABEL_33:
  v79 = v22;
  v32 = [v22 isEqualToString:v88];
  v33 = v20;
  if ([v29 length] && objc_msgSend(v87, "length") && objc_msgSend(v88, "length"))
  {
    v76 = v29;
    v71 = v24;
    v72 = v20;
    v34 = [v6 objectForKeyedSubscript:GKEnvironmentKey];
    v73 = [GKPreferences environmentForString:v34];

    v35 = [(GKService *)self credential];
    v69 = [v35 environment];

    v36 = +[GKPlayerCredential internalRepresentation];
    v37 = +[GKLocalPlayerInternal internalRepresentation];
    v38 = [(GKService *)self credential];
    v39 = [v38 authenticationToken];
    v40 = [v39 isEqual:v87];

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
      v47 = [GKDataTransport transportWithBag:v46 clientProxy:v81 credential:v77];
      [(GKService *)self setTransport:v47];

      v68 = +[GKClientProxy gameCenterClient];
      [v68 setEnvironment:v73];
      +[GKClientProxy removeAllCaches];
      v48 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 2781, "[GKAccountServicePrivate setupAccountForParameters:handler:]"];
      v49 = [(GKService *)self transactionGroupWithName:v48];

      v50 = [v49 context];
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
      [v50 performBlockAndWait:v94];

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
      if ((v69 == v73) & v40) != 0 || ((v32 ^ 1))
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

        v64 = [v63 context];
        v89[0] = _NSConcreteStackBlock;
        v89[1] = 3221225472;
        v89[2] = sub_1000721F8;
        v89[3] = &unk_100362008;
        v90 = v63;
        v91 = v80;
        v92 = v85;
        v93 = v84;
        v65 = v63;
        [v64 performBlockAndWait:v89];

        v29 = v76;
      }
    }

    v13 = 0;
    v54 = v78;
    if (!v7)
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
    if (!v7)
    {
      goto LABEL_52;
    }
  }

  v55 = v54;
  v7[2](v7, v13);
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

- (void)accountEdited:(id)a3 alias:(id)a4 firstName:(id)a5 lastName:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 2866, "[GKAccountServicePrivate accountEdited:alias:firstName:lastName:handler:]"];
  v18 = [(GKService *)self transactionGroupWithName:v17];

  v19 = [v18 context];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100072538;
  v26[3] = &unk_100362030;
  v27 = v18;
  v28 = self;
  v29 = v12;
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v33 = v16;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  v24 = v12;
  v25 = v18;
  [v19 performBlock:v26];
}

- (void)setLoginStatus:(unint64_t)a3 handler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = +[GKPlayerCredentialController sharedController];
  v8 = [(GKService *)self credential];
  if (!v8)
  {
    v9 = [(GKService *)self transport];
    v8 = [v9 credential];
  }

  v10 = [v8 scope];
  if ((v4 & 4) != 0)
  {
    v11 = v10 | 0xC;
  }

  else
  {
    v11 = v10 & 0xFFFFFFF3 | v4 & 8;
  }

  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v23 = v8;
    v24 = 2048;
    v25 = v11;
    v26 = 2048;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "setLoginStatus cred:(%@) new:%lX old:%lX", buf, 0x20u);
  }

  [v8 setScope:v11];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1000728C8;
  v19 = &unk_100361198;
  v20 = self;
  v21 = v6;
  v14 = v6;
  v15 = objc_retainBlock(&v16);
  if ((v4 & 4) != 0)
  {
    [v7 setPrimaryCredential:v8 completionHandler:{v15, v16, v17, v18, v19, v20, v21}];
  }

  else
  {
    [v7 setCredential:v8 completionHandler:{v15, v16, v17, v18, v19, v20, v21}];
  }
}

- (void)updateClientSettings:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 2958, "[GKAccountServicePrivate updateClientSettings:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v7 = [(GKService *)self transport];
  v8 = [v7 storeBag];

  v9 = +[GKPreferences shared];
  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isStoreDemoModeEnabled]);
  [v6 setObject:v10 forKeyedSubscript:@"storeDemoModeEnabled"];

  [v9 debugRequestTimeout];
  v11 = [NSNumber numberWithDouble:?];
  [v6 setObject:v11 forKeyedSubscript:@"GKDebugRequestTimeout"];

  v12 = [(GKService *)self credential];
  v13 = [v12 playerInternal];
  v14 = [v13 playerID];
  v15 = [NSString stringWithFormat:@"%@-%@", @"GKAllowNearbyMultiplayer", v14];

  v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 shouldAllowNearbyMultiplayer]);
  [v6 setObject:v16 forKeyedSubscript:v15];

  if (v8)
  {
    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 shouldUseHTTPPipelining]);
    [v6 setObject:v17 forKeyedSubscript:@"GKHTTPPipelining"];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100072CC0;
    v25[3] = &unk_100360F00;
    v26 = v8;
    v27 = self;
    v28 = v6;
    [v28 perform:v25];
  }

  v18 = [(GKService *)self clientProxy];
  v19 = [v18 replyQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100072FD0;
  v22[3] = &unk_100360FC8;
  v22[4] = self;
  v23 = v6;
  v24 = v4;
  v20 = v4;
  v21 = v6;
  [v21 notifyOnQueue:v19 block:v22];
}

- (void)checkActivitySharingRepromptWithCompletion:(id)a3
{
  v4 = a3;
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
  v10 = [(GKService *)self clientProxy];
  v11 = [v10 replyQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000737C8;
  v14[3] = &unk_100360EB0;
  v15 = v9;
  v16 = v4;
  v12 = v9;
  v13 = v4;
  [v12 notifyOnQueue:v11 block:v14];
}

- (BOOL)shouldCadencedActivitySharingRepromptWithLimit:(int64_t)a3 minDaysBetween:(int64_t)a4
{
  v6 = [objc_opt_class() standardUserDefaults];
  v7 = [v6 objectForKey:@"GKActivitySharingReprompt"];
  v8 = [v7 objectForKeyedSubscript:@"totalTriggerCount"];
  v9 = [v8 integerValue];

  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v38 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "shouldCadencedActivitySharingReprompt: totalTriggerCount=%ld", buf, 0xCu);
  }

  if (v9 < a3)
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
      v38 = v12;
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

    v15 = a4;
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
      v38 = v19;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "shouldCadencedActivitySharingReprompt: days diff=%ld", buf, 0xCu);
    }

    v22 = v19 <= v15;
    v23 = v19 > v15;
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
      v38 = v15;
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
    v38 = a3;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "shouldCadencedActivitySharingReprompt: No, the reprompt has reached the limit of %ld.", buf, 0xCu);
  }

  v23 = 0;
LABEL_36:

  return v23;
}

- (void)setActivitySharingRepromptLastTriggerDate:(id)a3
{
  v3 = a3;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "setActivitySharingRepromptLastTriggerDate: %@", buf, 0xCu);
  }

  v6 = [objc_opt_class() standardUserDefaults];
  v7 = [v6 objectForKey:@"GKActivitySharingReprompt"];
  v8 = [v7 objectForKeyedSubscript:@"totalTriggerCount"];
  v9 = [v8 intValue];

  v10 = v9 + 1;
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

  v13 = [NSNumber numberWithInt:v10, @"lastTriggerDate", @"totalTriggerCount", v3];
  v16[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:&v15 count:2];
  [v6 setObject:v14 forKey:@"GKActivitySharingReprompt"];
}

- (void)setLastGamesPrivacyNoticeVersionDisplayedForSignedInPlayer:(int64_t)a3
{
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [(GKService *)self credential];
    v9 = [v8 playerInternal];
    v10 = [v9 playerID];
    v11 = [NSNumber numberWithInteger:a3];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setLastGamesPrivacyNoticeVersionDisplayedForSignedInPlayer (%@) %@", &v12, 0x16u);
  }

  [(GKAccountService *)self setLastNoticeVersionForSignedInPlayerWithName:@"GKLastGamesPrivacyNoticeVersionDisplayedForHashedPlayerID_%@" lastVersion:a3];
}

- (void)setLastGamesCrossUseConsentNoticeVersionDisplayedForSignedInPlayer:(int64_t)a3
{
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [(GKService *)self credential];
    v9 = [v8 playerInternal];
    v10 = [v9 playerID];
    v11 = [NSNumber numberWithInteger:a3];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setLastGamesCrossUseConsentNoticeVersionDisplayedForSignedInPlayer (%@) %@", &v12, 0x16u);
  }

  [(GKAccountService *)self setLastNoticeVersionForSignedInPlayerWithName:@"GKLastGamesCrossUseConsentNoticeVersionDisplayedForHashedPlayerID_%@" lastVersion:a3];
}

- (void)setCrossUseLinkedDSIDForSignedInPlayer:(int64_t)a3
{
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [(GKService *)self credential];
    v9 = [v8 playerInternal];
    v10 = [v9 playerID];
    v11 = [NSNumber numberWithInteger:a3];
    *buf = 138412546;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setCrossUseLinkedDSIDForSignedInPlayer (%@) %@", buf, 0x16u);
  }

  v12 = [(GKService *)self credential];
  v13 = [v12 playerInternal];
  v14 = [v13 playerID];
  v15 = [v14 _gkSHA256Hash];
  v16 = [NSString stringWithFormat:@"GKLastLinkedDSIDForHashedPlayerID_%@", v15];

  v17 = [objc_opt_class() standardUserDefaults];
  v18 = [NSNumber numberWithInteger:a3];
  [v17 setObject:v18 forKey:v16];
}

@end