@interface GKAccountService
- (void)authenticatePlayerWithExistingCredentialsWithHandler:(id)a3;
- (void)didAcceptPrivacyNotice;
- (void)didShowFullscreenSignIn;
- (void)didShowSignInBanner;
- (void)fetchItemsForIdentityVerificationSignature:(id)a3;
- (void)generateIdentityVerificationSignatureWithCompletionHandler:(id)a3;
- (void)getLastContactsIntegrationConsentVersionDisplayedForSignedInPlayerWithHandler:(id)a3;
- (void)getLastFriendSuggestionsVersionDisplayedForSignedInPlayerWithHandler:(id)a3;
- (void)getLastPersonalizationVersionDisplayedForSignedInPlayerWithHandler:(id)a3;
- (void)getLastPrivacyNoticeVersionDisplayedForSignedInPlayerWithHandler:(id)a3;
- (void)getLastProfilePrivacyVersionDisplayedForSignedInPlayerWithHandler:(id)a3;
- (void)getLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayerWithHandler:(id)a3;
- (void)isAppDistributorThirdParty:(id)a3;
- (void)notifyWidgetPlayerAuthenticationUpdated;
- (void)resetCredentialsWithHandler:(id)a3;
- (void)setLastContactsIntegrationConsentVersionDisplayedForSignedInPlayer:(id)a3;
- (void)setLastFriendSuggestionsVersionDisplayedForSignedInPlayer:(id)a3;
- (void)setLastNoticeVersionForSignedInPlayerWithName:(id)a3 lastVersion:(int64_t)a4;
- (void)setLastPersonalizationVersionDisplayedForSignedInPlayer:(id)a3;
- (void)setLastPrivacyNoticeVersionDisplayedForSignedInPlayer:(unint64_t)a3;
- (void)setLastProfilePrivacyVersionDisplayedForSignedInPlayer:(id)a3;
- (void)setLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayer:(unint64_t)a3;
- (void)signOutPlayerWithOptOut:(BOOL)a3 handler:(id)a4;
@end

@implementation GKAccountService

- (void)isAppDistributorThirdParty:(id)a3
{
  v4 = a3;
  v5 = [(GKService *)self clientProxy];
  v6 = [v5 replyQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100061468;
  v8[3] = &unk_100360EB0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)notifyWidgetPlayerAuthenticationUpdated
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
  {
    sub_100287868();
  }

  v3 = [[CHSTimelineController alloc] initForAvocadoIdentifier:@"FriendsArePlayingWidget" inBundleIdentifier:@"com.apple.gamecenter.widgets.extension"];
  v4 = [v3 reloadTimelineWithReason:@"GC player authentication updated"];
  v5 = [[CHSTimelineController alloc] initForAvocadoIdentifier:@"ContinuePlayingWidget" inBundleIdentifier:@"com.apple.gamecenter.widgets.extension"];
  v6 = [v5 reloadTimelineWithReason:@"GC player authentication updated"];
  v7 = [[CHSTimelineController alloc] initForAvocadoIdentifier:@"ActivityFeedWidget" inBundleIdentifier:@"com.apple.gamecenter.widgets.extension"];
  v8 = [v7 reloadTimelineWithReason:@"GC player authentication updated"];
}

- (void)authenticatePlayerWithExistingCredentialsWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 authenticatePlayerWithUsername:0 password:0 handler:v4];
}

- (void)generateIdentityVerificationSignatureWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v6 = [(GKService *)self clientProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100061750;
  v8[3] = &unk_1003615D8;
  v9 = v4;
  v7 = v4;
  [v5 issueRequest:&off_1003830A0 bagKey:@"gk-get-auth-token-for-third-party" clientProxy:v6 handler:v8];
}

- (void)fetchItemsForIdentityVerificationSignature:(id)a3
{
  v4 = a3;
  v5 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v6 = [(GKService *)self clientProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100061848;
  v8[3] = &unk_1003615D8;
  v9 = v4;
  v7 = v4;
  [v5 issueRequest:&off_1003830C8 bagKey:@"gk-get-auth-token-for-third-party" clientProxy:v6 handler:v8];
}

- (void)didShowSignInBanner
{
  v3 = +[GKPlayerCredentialController sharedController];
  v2 = [v3 signInVisibilityManager];
  [v2 didShowBanner];
}

- (void)didShowFullscreenSignIn
{
  v3 = +[GKPlayerCredentialController sharedController];
  v2 = [v3 signInVisibilityManager];
  [v2 didShowFullscreen];
}

- (void)resetCredentialsWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 signOutPlayerWithOptOut:0 handler:v4];
}

- (void)signOutPlayerWithOptOut:(BOOL)a3 handler:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [(GKService *)self localPlayer];
    v11 = [v10 alias];
    *buf = 138412290;
    v35 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "signOutPlayerWithOptOut:%@", buf, 0xCu);
  }

  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v35 = v4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "GKAccountService signOutPlayerWithOptOut:%lu", buf, 0xCu);
  }

  v32 = @"timestamp";
  v14 = +[NSDate _gkServerTimestamp];
  v33 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  v16 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 215, "[GKAccountService signOutPlayerWithOptOut:handler:]"];
  v17 = [GKDispatchGroup dispatchGroupWithName:v16];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100061CE4;
  v27[3] = &unk_100361670;
  v28 = v15;
  v29 = self;
  v18 = v17;
  v30 = v18;
  v31 = v4;
  v19 = v15;
  [v18 perform:v27];
  v20 = [(GKService *)self clientProxy];
  v21 = [v20 replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100062718;
  v24[3] = &unk_100360EB0;
  v25 = v18;
  v26 = v6;
  v22 = v18;
  v23 = v6;
  [v22 notifyOnQueue:v21 block:v24];
}

- (void)setLastNoticeVersionForSignedInPlayerWithName:(id)a3 lastVersion:(int64_t)a4
{
  v6 = a3;
  v7 = [(GKService *)self credential];
  v8 = [v7 playerInternal];
  v9 = [v8 playerID];
  v10 = [v9 _gkSHA256Hash];
  v14 = [NSString stringWithFormat:v6, v10];

  v11 = [objc_opt_class() standardUserDefaults];
  v12 = v11;
  if (a4 < 1)
  {
    [v11 removeObjectForKey:v14];
  }

  else
  {
    v13 = [NSNumber numberWithInteger:a4];
    [v12 setObject:v13 forKey:v14];
  }
}

- (void)setLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayer:(unint64_t)a3
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
    v11 = [NSNumber numberWithUnsignedInteger:a3];
    *buf = 138412546;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayer (%@) %@", buf, 0x16u);
  }

  v12 = [(GKService *)self credential];
  v13 = [v12 playerInternal];
  v14 = [v13 playerID];
  v15 = [v14 _gkSHA256Hash];
  v16 = [NSString stringWithFormat:@"GKLastWelcomeWhatsNewCopyVersionDisplayedForHashedPlayerID_%@", v15];

  v17 = [objc_opt_class() standardUserDefaults];
  v18 = v17;
  if (a3)
  {
    v19 = [NSNumber numberWithUnsignedInteger:a3];
    [v18 setObject:v19 forKey:v16];
  }

  else
  {
    [v17 removeObjectForKey:v16];
  }
}

- (void)getLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayerWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 341, "[GKAccountService getLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayerWithHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100062C88;
  v15[3] = &unk_100360FF0;
  v15[4] = self;
  v7 = v6;
  v16 = v7;
  [v7 perform:v15];
  v8 = [(GKService *)self clientProxy];
  v9 = [v8 replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100062E20;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = v4;
  v10 = v7;
  v11 = v4;
  [v10 notifyOnQueue:v9 block:v12];
}

- (void)setLastPrivacyNoticeVersionDisplayedForSignedInPlayer:(unint64_t)a3
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
    v11 = [NSNumber numberWithUnsignedInteger:a3];
    *buf = 138412546;
    v30 = v10;
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setLastPrivacyNoticeVersionDisplayedForSignedInPlayer (%@) %@", buf, 0x16u);
  }

  v12 = [(GKService *)self credential];
  v13 = [v12 playerInternal];
  v14 = [v13 playerID];
  v15 = [v14 _gkSHA256Hash];
  v16 = [NSString stringWithFormat:@"GKLastPrivacyNoticeVersionDisplayedForHashedPlayerID_%@", v15];

  v17 = [objc_opt_class() standardUserDefaults];
  v18 = [v17 objectForKey:v16];
  v19 = [v18 integerValue];

  if (v19 == a3)
  {
    if (!os_log_GKGeneral)
    {
      v20 = GKOSLoggers();
    }

    v21 = os_log_GKOnboarding;
    if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v22 = "setLastPrivacyNoticeVersionDisplayedForSignedInPlayer: Skipped because the values of current and new are the same.";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, v22, buf, 2u);
    }
  }

  else if (a3 && v19 == -1)
  {
    if (!os_log_GKGeneral)
    {
      v23 = GKOSLoggers();
    }

    v21 = os_log_GKOnboarding;
    if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v22 = "setLastPrivacyNoticeVersionDisplayedForSignedInPlayer: Skipped because the current value has been overridden for testing.";
      goto LABEL_16;
    }
  }

  else
  {
    if (a3)
    {
      v24 = [NSNumber numberWithUnsignedInteger:a3];
      [v17 setObject:v24 forKey:v16];

      [(GKAccountService *)self didAcceptPrivacyNotice];
    }

    else
    {
      [v17 removeObjectForKey:v16];
    }

    if (!os_log_GKGeneral)
    {
      v25 = GKOSLoggers();
    }

    v26 = os_log_GKOnboarding;
    if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
    {
      v27 = v26;
      v28 = [NSNumber numberWithUnsignedInteger:a3];
      *buf = 138412290;
      v30 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "setLastPrivacyNoticeVersionDisplayedForSignedInPlayer: The value is set to %@", buf, 0xCu);
    }

    [(GKAccountService *)self notifyWidgetPlayerAuthenticationUpdated];
  }
}

- (void)didAcceptPrivacyNotice
{
  v3 = +[GKPreferences shared];
  [v3 setForcePrivacyNotice:0];

  v4 = [(GKAccountService *)self ampController];
  v5 = [(GKService *)self transport];
  v6 = [v5 storeBag];
  [v4 setupAsyncWithStoreBag:v6 withCompletion:&stru_100361690];

  v7 = [(GKService *)GKProfileServicePrivate serviceFromService:self];
  v8 = [(GKService *)self credential];
  v9 = [v8 playerInternal];
  v10 = [v9 playerID];

  if (v10)
  {
    v13 = v10;
    v11 = [NSArray arrayWithObjects:&v13 count:1];
    [v7 preloadInstalledGamesScopedPlayerIDs:v11 completion:0];
  }

  v12 = [(GKService *)GKUtilityServicePrivate serviceFromService:self];
  [v12 updateNotificationTopicsForcefully:1];
}

- (void)getLastPrivacyNoticeVersionDisplayedForSignedInPlayerWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 408, "[GKAccountService getLastPrivacyNoticeVersionDisplayedForSignedInPlayerWithHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100063584;
  v15[3] = &unk_100360FF0;
  v15[4] = self;
  v7 = v6;
  v16 = v7;
  [v7 perform:v15];
  v8 = [(GKService *)self clientProxy];
  v9 = [v8 replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006371C;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = v4;
  v10 = v7;
  v11 = v4;
  [v10 notifyOnQueue:v9 block:v12];
}

- (void)setLastPersonalizationVersionDisplayedForSignedInPlayer:(id)a3
{
  v4 = a3;
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
    *buf = 138412546;
    v18 = v10;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setLastPersonalizationVersionDisplayedForSignedInPlayer (%@) %@", buf, 0x16u);
  }

  v11 = [(GKService *)self credential];
  v12 = [v11 playerInternal];
  v13 = [v12 playerID];
  v14 = [v13 _gkSHA256Hash];
  v15 = [NSString stringWithFormat:@"GKLastPersonalizationVersionDisplayedForHashedPlayerID_%@", v14];

  v16 = [objc_opt_class() standardUserDefaults];
  if ([v4 length])
  {
    [v16 setObject:v4 forKey:v15];
  }

  else
  {
    [v16 removeObjectForKey:v15];
  }

  [v16 synchronize];
}

- (void)getLastPersonalizationVersionDisplayedForSignedInPlayerWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 439, "[GKAccountService getLastPersonalizationVersionDisplayedForSignedInPlayerWithHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100063B24;
  v15[3] = &unk_100360FF0;
  v15[4] = self;
  v7 = v6;
  v16 = v7;
  [v7 perform:v15];
  v8 = [(GKService *)self clientProxy];
  v9 = [v8 replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100063C80;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = v4;
  v10 = v7;
  v11 = v4;
  [v10 notifyOnQueue:v9 block:v12];
}

- (void)getLastProfilePrivacyVersionDisplayedForSignedInPlayerWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 456, "[GKAccountService getLastProfilePrivacyVersionDisplayedForSignedInPlayerWithHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100063E90;
  v15[3] = &unk_100360FF0;
  v15[4] = self;
  v7 = v6;
  v16 = v7;
  [v7 perform:v15];
  v8 = [(GKService *)self clientProxy];
  v9 = [v8 replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100063FEC;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = v4;
  v10 = v7;
  v11 = v4;
  [v10 notifyOnQueue:v9 block:v12];
}

- (void)setLastProfilePrivacyVersionDisplayedForSignedInPlayer:(id)a3
{
  v4 = a3;
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
    *buf = 138412546;
    v18 = v10;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setLastProfilePrivacyVersionDisplayedForSignedInPlayer (%@) %@", buf, 0x16u);
  }

  v11 = [(GKService *)self credential];
  v12 = [v11 playerInternal];
  v13 = [v12 playerID];
  v14 = [v13 _gkSHA256Hash];
  v15 = [NSString stringWithFormat:@"GKLastProfilePrivacyVersionDisplayedForHashedPlayerID_%@", v14];

  v16 = [objc_opt_class() standardUserDefaults];
  if ([v4 length])
  {
    [v16 setObject:v4 forKey:v15];
  }

  else
  {
    [v16 removeObjectForKey:v15];
  }

  [v16 synchronize];
}

- (void)getLastFriendSuggestionsVersionDisplayedForSignedInPlayerWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 487, "[GKAccountService getLastFriendSuggestionsVersionDisplayedForSignedInPlayerWithHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000643E4;
  v15[3] = &unk_100360FF0;
  v15[4] = self;
  v7 = v6;
  v16 = v7;
  [v7 perform:v15];
  v8 = [(GKService *)self clientProxy];
  v9 = [v8 replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100064540;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = v4;
  v10 = v7;
  v11 = v4;
  [v10 notifyOnQueue:v9 block:v12];
}

- (void)setLastFriendSuggestionsVersionDisplayedForSignedInPlayer:(id)a3
{
  v4 = a3;
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
    *buf = 138412546;
    v18 = v10;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setLastFriendSuggestionsVersionDisplayedForSignedInPlayer (%@) %@", buf, 0x16u);
  }

  v11 = [(GKService *)self credential];
  v12 = [v11 playerInternal];
  v13 = [v12 playerID];
  v14 = [v13 _gkSHA256Hash];
  v15 = [NSString stringWithFormat:@"GKLastFriendSuggestionsVersionDisplayedForHashedPlayerID_%@", v14];

  v16 = [objc_opt_class() standardUserDefaults];
  if ([v4 length])
  {
    [v16 setObject:v4 forKey:v15];
  }

  else
  {
    [v16 removeObjectForKey:v15];
  }

  [v16 synchronize];
}

- (void)getLastContactsIntegrationConsentVersionDisplayedForSignedInPlayerWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKAccountService.m", 518, "[GKAccountService getLastContactsIntegrationConsentVersionDisplayedForSignedInPlayerWithHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100064938;
  v15[3] = &unk_100360FF0;
  v15[4] = self;
  v7 = v6;
  v16 = v7;
  [v7 perform:v15];
  v8 = [(GKService *)self clientProxy];
  v9 = [v8 replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100064A94;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = v4;
  v10 = v7;
  v11 = v4;
  [v10 notifyOnQueue:v9 block:v12];
}

- (void)setLastContactsIntegrationConsentVersionDisplayedForSignedInPlayer:(id)a3
{
  v4 = a3;
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
    *buf = 138412546;
    v18 = v10;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setLastContactsIntegrationConsentVersionDisplayedForSignedInPlayer (%@) %@", buf, 0x16u);
  }

  v11 = [(GKService *)self credential];
  v12 = [v11 playerInternal];
  v13 = [v12 playerID];
  v14 = [v13 _gkSHA256Hash];
  v15 = [NSString stringWithFormat:@"GKLastContactsIntegrationConsentVersionDisplayedForHashedPlayerID_%@", v14];

  v16 = [objc_opt_class() standardUserDefaults];
  if ([v4 length])
  {
    [v16 setObject:v4 forKey:v15];
  }

  else
  {
    [v16 removeObjectForKey:v15];
  }

  [v16 synchronize];
}

@end