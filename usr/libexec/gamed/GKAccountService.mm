@interface GKAccountService
- (void)authenticatePlayerWithExistingCredentialsWithHandler:(id)handler;
- (void)didAcceptPrivacyNotice;
- (void)didShowFullscreenSignIn;
- (void)didShowSignInBanner;
- (void)fetchItemsForIdentityVerificationSignature:(id)signature;
- (void)generateIdentityVerificationSignatureWithCompletionHandler:(id)handler;
- (void)getLastContactsIntegrationConsentVersionDisplayedForSignedInPlayerWithHandler:(id)handler;
- (void)getLastFriendSuggestionsVersionDisplayedForSignedInPlayerWithHandler:(id)handler;
- (void)getLastPersonalizationVersionDisplayedForSignedInPlayerWithHandler:(id)handler;
- (void)getLastPrivacyNoticeVersionDisplayedForSignedInPlayerWithHandler:(id)handler;
- (void)getLastProfilePrivacyVersionDisplayedForSignedInPlayerWithHandler:(id)handler;
- (void)getLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayerWithHandler:(id)handler;
- (void)isAppDistributorThirdParty:(id)party;
- (void)notifyWidgetPlayerAuthenticationUpdated;
- (void)resetCredentialsWithHandler:(id)handler;
- (void)setLastContactsIntegrationConsentVersionDisplayedForSignedInPlayer:(id)player;
- (void)setLastFriendSuggestionsVersionDisplayedForSignedInPlayer:(id)player;
- (void)setLastNoticeVersionForSignedInPlayerWithName:(id)name lastVersion:(int64_t)version;
- (void)setLastPersonalizationVersionDisplayedForSignedInPlayer:(id)player;
- (void)setLastPrivacyNoticeVersionDisplayedForSignedInPlayer:(unint64_t)player;
- (void)setLastProfilePrivacyVersionDisplayedForSignedInPlayer:(id)player;
- (void)setLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayer:(unint64_t)player;
- (void)signOutPlayerWithOptOut:(BOOL)out handler:(id)handler;
@end

@implementation GKAccountService

- (void)isAppDistributorThirdParty:(id)party
{
  partyCopy = party;
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100061468;
  v8[3] = &unk_100360EB0;
  v8[4] = self;
  v9 = partyCopy;
  v7 = partyCopy;
  dispatch_async(replyQueue, v8);
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

- (void)authenticatePlayerWithExistingCredentialsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 authenticatePlayerWithUsername:0 password:0 handler:handlerCopy];
}

- (void)generateIdentityVerificationSignatureWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy = [(GKService *)self clientProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100061750;
  v8[3] = &unk_1003615D8;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [v5 issueRequest:&off_1003830A0 bagKey:@"gk-get-auth-token-for-third-party" clientProxy:clientProxy handler:v8];
}

- (void)fetchItemsForIdentityVerificationSignature:(id)signature
{
  signatureCopy = signature;
  v5 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy = [(GKService *)self clientProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100061848;
  v8[3] = &unk_1003615D8;
  v9 = signatureCopy;
  v7 = signatureCopy;
  [v5 issueRequest:&off_1003830C8 bagKey:@"gk-get-auth-token-for-third-party" clientProxy:clientProxy handler:v8];
}

- (void)didShowSignInBanner
{
  v3 = +[GKPlayerCredentialController sharedController];
  signInVisibilityManager = [v3 signInVisibilityManager];
  [signInVisibilityManager didShowBanner];
}

- (void)didShowFullscreenSignIn
{
  v3 = +[GKPlayerCredentialController sharedController];
  signInVisibilityManager = [v3 signInVisibilityManager];
  [signInVisibilityManager didShowFullscreen];
}

- (void)resetCredentialsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
  [v5 signOutPlayerWithOptOut:0 handler:handlerCopy];
}

- (void)signOutPlayerWithOptOut:(BOOL)out handler:(id)handler
{
  outCopy = out;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    localPlayer = [(GKService *)self localPlayer];
    alias = [localPlayer alias];
    *buf = 138412290;
    v35 = alias;
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
    v35 = outCopy;
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
  selfCopy = self;
  v18 = v17;
  v30 = v18;
  v31 = outCopy;
  v19 = v15;
  [v18 perform:v27];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100062718;
  v24[3] = &unk_100360EB0;
  v25 = v18;
  v26 = handlerCopy;
  v22 = v18;
  v23 = handlerCopy;
  [v22 notifyOnQueue:replyQueue block:v24];
}

- (void)setLastNoticeVersionForSignedInPlayerWithName:(id)name lastVersion:(int64_t)version
{
  nameCopy = name;
  credential = [(GKService *)self credential];
  playerInternal = [credential playerInternal];
  playerID = [playerInternal playerID];
  _gkSHA256Hash = [playerID _gkSHA256Hash];
  v14 = [NSString stringWithFormat:nameCopy, _gkSHA256Hash];

  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  v12 = standardUserDefaults;
  if (version < 1)
  {
    [standardUserDefaults removeObjectForKey:v14];
  }

  else
  {
    v13 = [NSNumber numberWithInteger:version];
    [v12 setObject:v13 forKey:v14];
  }
}

- (void)setLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayer:(unint64_t)player
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
    v11 = [NSNumber numberWithUnsignedInteger:player];
    *buf = 138412546;
    v21 = playerID;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayer (%@) %@", buf, 0x16u);
  }

  credential2 = [(GKService *)self credential];
  playerInternal2 = [credential2 playerInternal];
  playerID2 = [playerInternal2 playerID];
  _gkSHA256Hash = [playerID2 _gkSHA256Hash];
  v16 = [NSString stringWithFormat:@"GKLastWelcomeWhatsNewCopyVersionDisplayedForHashedPlayerID_%@", _gkSHA256Hash];

  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  v18 = standardUserDefaults;
  if (player)
  {
    v19 = [NSNumber numberWithUnsignedInteger:player];
    [v18 setObject:v19 forKey:v16];
  }

  else
  {
    [standardUserDefaults removeObjectForKey:v16];
  }
}

- (void)getLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayerWithHandler:(id)handler
{
  handlerCopy = handler;
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
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100062E20;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = handlerCopy;
  v10 = v7;
  v11 = handlerCopy;
  [v10 notifyOnQueue:replyQueue block:v12];
}

- (void)setLastPrivacyNoticeVersionDisplayedForSignedInPlayer:(unint64_t)player
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
    v11 = [NSNumber numberWithUnsignedInteger:player];
    *buf = 138412546;
    v30 = playerID;
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setLastPrivacyNoticeVersionDisplayedForSignedInPlayer (%@) %@", buf, 0x16u);
  }

  credential2 = [(GKService *)self credential];
  playerInternal2 = [credential2 playerInternal];
  playerID2 = [playerInternal2 playerID];
  _gkSHA256Hash = [playerID2 _gkSHA256Hash];
  v16 = [NSString stringWithFormat:@"GKLastPrivacyNoticeVersionDisplayedForHashedPlayerID_%@", _gkSHA256Hash];

  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  v18 = [standardUserDefaults objectForKey:v16];
  integerValue = [v18 integerValue];

  if (integerValue == player)
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

  else if (player && integerValue == -1)
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
    if (player)
    {
      v24 = [NSNumber numberWithUnsignedInteger:player];
      [standardUserDefaults setObject:v24 forKey:v16];

      [(GKAccountService *)self didAcceptPrivacyNotice];
    }

    else
    {
      [standardUserDefaults removeObjectForKey:v16];
    }

    if (!os_log_GKGeneral)
    {
      v25 = GKOSLoggers();
    }

    v26 = os_log_GKOnboarding;
    if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
    {
      v27 = v26;
      v28 = [NSNumber numberWithUnsignedInteger:player];
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

  ampController = [(GKAccountService *)self ampController];
  transport = [(GKService *)self transport];
  storeBag = [transport storeBag];
  [ampController setupAsyncWithStoreBag:storeBag withCompletion:&stru_100361690];

  v7 = [(GKService *)GKProfileServicePrivate serviceFromService:self];
  credential = [(GKService *)self credential];
  playerInternal = [credential playerInternal];
  playerID = [playerInternal playerID];

  if (playerID)
  {
    v13 = playerID;
    v11 = [NSArray arrayWithObjects:&v13 count:1];
    [v7 preloadInstalledGamesScopedPlayerIDs:v11 completion:0];
  }

  v12 = [(GKService *)GKUtilityServicePrivate serviceFromService:self];
  [v12 updateNotificationTopicsForcefully:1];
}

- (void)getLastPrivacyNoticeVersionDisplayedForSignedInPlayerWithHandler:(id)handler
{
  handlerCopy = handler;
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
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006371C;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = handlerCopy;
  v10 = v7;
  v11 = handlerCopy;
  [v10 notifyOnQueue:replyQueue block:v12];
}

- (void)setLastPersonalizationVersionDisplayedForSignedInPlayer:(id)player
{
  playerCopy = player;
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
    *buf = 138412546;
    v18 = playerID;
    v19 = 2112;
    v20 = playerCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setLastPersonalizationVersionDisplayedForSignedInPlayer (%@) %@", buf, 0x16u);
  }

  credential2 = [(GKService *)self credential];
  playerInternal2 = [credential2 playerInternal];
  playerID2 = [playerInternal2 playerID];
  _gkSHA256Hash = [playerID2 _gkSHA256Hash];
  v15 = [NSString stringWithFormat:@"GKLastPersonalizationVersionDisplayedForHashedPlayerID_%@", _gkSHA256Hash];

  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  if ([playerCopy length])
  {
    [standardUserDefaults setObject:playerCopy forKey:v15];
  }

  else
  {
    [standardUserDefaults removeObjectForKey:v15];
  }

  [standardUserDefaults synchronize];
}

- (void)getLastPersonalizationVersionDisplayedForSignedInPlayerWithHandler:(id)handler
{
  handlerCopy = handler;
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
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100063C80;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = handlerCopy;
  v10 = v7;
  v11 = handlerCopy;
  [v10 notifyOnQueue:replyQueue block:v12];
}

- (void)getLastProfilePrivacyVersionDisplayedForSignedInPlayerWithHandler:(id)handler
{
  handlerCopy = handler;
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
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100063FEC;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = handlerCopy;
  v10 = v7;
  v11 = handlerCopy;
  [v10 notifyOnQueue:replyQueue block:v12];
}

- (void)setLastProfilePrivacyVersionDisplayedForSignedInPlayer:(id)player
{
  playerCopy = player;
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
    *buf = 138412546;
    v18 = playerID;
    v19 = 2112;
    v20 = playerCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setLastProfilePrivacyVersionDisplayedForSignedInPlayer (%@) %@", buf, 0x16u);
  }

  credential2 = [(GKService *)self credential];
  playerInternal2 = [credential2 playerInternal];
  playerID2 = [playerInternal2 playerID];
  _gkSHA256Hash = [playerID2 _gkSHA256Hash];
  v15 = [NSString stringWithFormat:@"GKLastProfilePrivacyVersionDisplayedForHashedPlayerID_%@", _gkSHA256Hash];

  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  if ([playerCopy length])
  {
    [standardUserDefaults setObject:playerCopy forKey:v15];
  }

  else
  {
    [standardUserDefaults removeObjectForKey:v15];
  }

  [standardUserDefaults synchronize];
}

- (void)getLastFriendSuggestionsVersionDisplayedForSignedInPlayerWithHandler:(id)handler
{
  handlerCopy = handler;
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
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100064540;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = handlerCopy;
  v10 = v7;
  v11 = handlerCopy;
  [v10 notifyOnQueue:replyQueue block:v12];
}

- (void)setLastFriendSuggestionsVersionDisplayedForSignedInPlayer:(id)player
{
  playerCopy = player;
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
    *buf = 138412546;
    v18 = playerID;
    v19 = 2112;
    v20 = playerCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setLastFriendSuggestionsVersionDisplayedForSignedInPlayer (%@) %@", buf, 0x16u);
  }

  credential2 = [(GKService *)self credential];
  playerInternal2 = [credential2 playerInternal];
  playerID2 = [playerInternal2 playerID];
  _gkSHA256Hash = [playerID2 _gkSHA256Hash];
  v15 = [NSString stringWithFormat:@"GKLastFriendSuggestionsVersionDisplayedForHashedPlayerID_%@", _gkSHA256Hash];

  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  if ([playerCopy length])
  {
    [standardUserDefaults setObject:playerCopy forKey:v15];
  }

  else
  {
    [standardUserDefaults removeObjectForKey:v15];
  }

  [standardUserDefaults synchronize];
}

- (void)getLastContactsIntegrationConsentVersionDisplayedForSignedInPlayerWithHandler:(id)handler
{
  handlerCopy = handler;
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
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100064A94;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = handlerCopy;
  v10 = v7;
  v11 = handlerCopy;
  [v10 notifyOnQueue:replyQueue block:v12];
}

- (void)setLastContactsIntegrationConsentVersionDisplayedForSignedInPlayer:(id)player
{
  playerCopy = player;
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
    *buf = 138412546;
    v18 = playerID;
    v19 = 2112;
    v20 = playerCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setLastContactsIntegrationConsentVersionDisplayedForSignedInPlayer (%@) %@", buf, 0x16u);
  }

  credential2 = [(GKService *)self credential];
  playerInternal2 = [credential2 playerInternal];
  playerID2 = [playerInternal2 playerID];
  _gkSHA256Hash = [playerID2 _gkSHA256Hash];
  v15 = [NSString stringWithFormat:@"GKLastContactsIntegrationConsentVersionDisplayedForHashedPlayerID_%@", _gkSHA256Hash];

  standardUserDefaults = [objc_opt_class() standardUserDefaults];
  if ([playerCopy length])
  {
    [standardUserDefaults setObject:playerCopy forKey:v15];
  }

  else
  {
    [standardUserDefaults removeObjectForKey:v15];
  }

  [standardUserDefaults synchronize];
}

@end