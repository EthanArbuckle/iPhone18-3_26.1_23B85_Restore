@interface GKChallengeBulletin
+ (void)expireChallengeList;
- (BOOL)isAppRunning;
- (BOOL)supportsChallenges;
- (GKChallengeBulletin)init;
- (GKChallengeBulletin)initWithCoder:(id)coder;
- (id)customChallengeSoundPathForBundleID:(id)d;
- (id)gameDescriptor;
- (id)gameName;
- (id)originatorPlayer;
- (id)originatorPlayerID;
- (id)receiverPlayer;
- (id)receiverPlayerID;
- (unint64_t)launchEventType;
- (void)assembleBulletin;
- (void)determineGameLocationOnDeviceOrInStoreWithCompletionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
- (void)handleAcceptAction;
- (void)notifyApp;
- (void)notifyClient:(id)client;
- (void)refreshData;
- (void)setGameName:(id)name;
- (void)setOriginatorPlayer:(id)player;
- (void)setOriginatorPlayerID:(id)d;
- (void)setReceiverPlayer:(id)player;
- (void)setReceiverPlayerID:(id)d;
@end

@implementation GKChallengeBulletin

- (GKChallengeBulletin)init
{
  v3.receiver = self;
  v3.super_class = GKChallengeBulletin;
  return [(GKChallengeBulletin *)&v3 init];
}

- (GKChallengeBulletin)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = GKChallengeBulletin;
  v5 = [(GKGameplayBulletin *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"challenge"];
    challenge = v5->_challenge;
    v5->_challenge = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = GKChallengeBulletin;
  coderCopy = coder;
  [(GKGameplayBulletin *)&v6 encodeWithCoder:coderCopy];
  v5 = [(GKChallengeBulletin *)self challenge:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"challenge"];
}

+ (void)expireChallengeList
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKChallengeBulletin expireChallengeList", buf, 2u);
  }

  v4 = +[GKClientProxy gameCenterClient];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKChallengeBulletin.m", 91, "+[GKChallengeBulletin expireChallengeList]");
  v6 = +[GKPlayerCredentialController sharedController];
  v7 = [v6 pushCredentialForEnvironment:{objc_msgSend(v4, "environment")}];
  playerInternal = [v7 playerInternal];
  playerID = [playerInternal playerID];
  v10 = [v4 transactionGroupWithName:v5 forPlayerID:playerID];

  [v10 performOnManagedObjectContext:&stru_10036A280];
}

- (void)determineGameLocationOnDeviceOrInStoreWithCompletionHandler:(id)handler
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKChallengeBulletin - determineGameLocationOnDeviceOrInStoreWithCompletionHandler:", buf, 2u);
  }

  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKChallengeBulletin.m", 104, "[GKChallengeBulletin determineGameLocationOnDeviceOrInStoreWithCompletionHandler:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v24 = +[GKClientProxy gameCenterClient];
  v9 = +[GKApplicationWorkspace defaultWorkspace];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  challenge = [(GKChallengeBulletin *)self challenge];
  compatibleBundleIDs = [challenge compatibleBundleIDs];

  v12 = [compatibleBundleIDs countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(compatibleBundleIDs);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        v17 = [v9 applicationProxyForBundleID:v16];
        if ([v17 isInstalled] && (objc_msgSend(v17, "isRestricted") & 1) == 0)
        {
          gameDescriptor = [(GKChallengeBulletin *)self gameDescriptor];
          [gameDescriptor setBundleIdentifier:v16];

          bundleVersion = [v17 bundleVersion];
          gameDescriptor2 = [(GKChallengeBulletin *)self gameDescriptor];
          [gameDescriptor2 setBundleVersion:bundleVersion];

          bundleShortVersion = [v17 bundleShortVersion];
          gameDescriptor3 = [(GKChallengeBulletin *)self gameDescriptor];
          [gameDescriptor3 setShortBundleVersion:bundleShortVersion];

          [(GKGameplayBulletin *)self setGameLocation:1];
          goto LABEL_16;
        }
      }

      v13 = [compatibleBundleIDs countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  if ([(GKGameplayBulletin *)self gameLocation]!= 1)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100196A98;
    v28[3] = &unk_100360FF0;
    v28[4] = self;
    v29 = v8;
    [v29 perform:v28];
  }

  if (handlerCopy)
  {
    replyQueue = [v24 replyQueue];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100196BE4;
    v25[3] = &unk_100360EB0;
    v27 = handlerCopy;
    v26 = v8;
    [v26 notifyOnQueue:replyQueue block:v25];
  }
}

- (id)gameDescriptor
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKChallengeBulletin gameDescriptor", buf, 2u);
  }

  gameDescriptor = self->super.super._gameDescriptor;
  if (!gameDescriptor)
  {
    if (self->_challenge)
    {
      challenge = [(GKChallengeBulletin *)self challenge];
      bundleID = [challenge bundleID];
      challenge2 = [(GKChallengeBulletin *)self challenge];
      game = [challenge2 game];
      bundleVersion = [game bundleVersion];
      challenge3 = [(GKChallengeBulletin *)self challenge];
      game2 = [challenge3 game];
      shortBundleVersion = [game2 shortBundleVersion];
      challenge4 = [(GKChallengeBulletin *)self challenge];
      game3 = [challenge4 game];
      adamID = [game3 adamID];
      v14 = [GKGameDescriptor gameDescriptorWithBundleID:bundleID bundleVersion:bundleVersion shortBundleVersion:shortBundleVersion adamID:adamID];
      v15 = self->super.super._gameDescriptor;
      self->super.super._gameDescriptor = v14;

      gameDescriptor = self->super.super._gameDescriptor;
    }

    else
    {
      gameDescriptor = 0;
    }
  }

  return gameDescriptor;
}

- (id)receiverPlayerID
{
  challenge = [(GKChallengeBulletin *)self challenge];
  receivingPlayer = [challenge receivingPlayer];
  playerID = [receivingPlayer playerID];

  return playerID;
}

- (void)setReceiverPlayerID:(id)d
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [NSException raise:NSObjectInaccessibleException format:@"%@ does not set players manually, they are all derived from the set challenge", v4];
}

- (id)receiverPlayer
{
  challenge = [(GKChallengeBulletin *)self challenge];
  receivingPlayer = [challenge receivingPlayer];

  return receivingPlayer;
}

- (void)setReceiverPlayer:(id)player
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [NSException raise:NSObjectInaccessibleException format:@"%@ does not set players manually, they are all derived from the set challenge", v4];
}

- (id)originatorPlayerID
{
  challenge = [(GKChallengeBulletin *)self challenge];
  issuingPlayer = [challenge issuingPlayer];
  playerID = [issuingPlayer playerID];

  return playerID;
}

- (void)setOriginatorPlayerID:(id)d
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [NSException raise:NSObjectInaccessibleException format:@"%@ does not set players manually, they are all derived from the set challenge", v4];
}

- (id)originatorPlayer
{
  challenge = [(GKChallengeBulletin *)self challenge];
  issuingPlayer = [challenge issuingPlayer];

  return issuingPlayer;
}

- (void)setOriginatorPlayer:(id)player
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [NSException raise:NSObjectInaccessibleException format:@"%@ does not set players manually, they are all derived from the set challenge", v4];
}

- (id)gameName
{
  challenge = [(GKChallengeBulletin *)self challenge];
  game = [challenge game];
  name = [game name];

  return name;
}

- (BOOL)supportsChallenges
{
  challenge = [(GKChallengeBulletin *)self challenge];
  game = [challenge game];
  supportsChallenges = [game supportsChallenges];

  return supportsChallenges;
}

- (void)setGameName:(id)name
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [NSException raise:NSObjectInaccessibleException format:@"%@ does not set gameName manually, they are all derived from the set challenge", v4];
}

- (void)refreshData
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKChallengeBulletin refreshData", v11, 2u);
  }

  v5 = +[GKClientProxy gameCenterClient];
  v12 = @"scroll";
  v6 = [NSNumber numberWithBool:1];
  v13 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v5 refreshContentsForDataType:1 userInfo:v7];

  challenge = [(GKChallengeBulletin *)self challenge];
  bundleID = [challenge bundleID];
  v10 = [GKClientProxy clientForBundleID:bundleID];

  [v10 refreshContentsForDataType:1 userInfo:0];
}

- (BOOL)isAppRunning
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKChallengeBulletin isAppRunning", v16, 2u);
  }

  challenge = [(GKChallengeBulletin *)self challenge];
  bundleID = [challenge bundleID];

  if (!bundleID)
  {
    return 0;
  }

  challenge2 = [(GKChallengeBulletin *)self challenge];
  bundleID2 = [challenge2 bundleID];
  v9 = GKGetApplicationStateForBundleID(bundleID2);

  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    challenge3 = [(GKChallengeBulletin *)self challenge];
    bundleID3 = [challenge3 bundleID];
    v16[0] = 67109378;
    v16[1] = v9;
    v17 = 2112;
    v18 = bundleID3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "presentChallengeReceived: got appState of %d for %@", v16, 0x12u);
  }

  return v9 == 8;
}

- (void)notifyApp
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKChallengeBulletin notifyApp", &v12, 2u);
  }

  challenge = [(GKChallengeBulletin *)self challenge];
  bundleID = [challenge bundleID];
  v7 = [GKClientProxy clientForBundleID:bundleID];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    challenge2 = [(GKChallengeBulletin *)self challenge];
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = challenge2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "telling the client %@ about challenge %@", &v12, 0x16u);
  }

  [(GKChallengeBulletin *)self notifyClient:v7];
  [v7 refreshContentsForDataType:1 userInfo:0];
}

- (void)notifyClient:(id)client
{
  clientCopy = client;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKChallengeBulletin notifyClient:", buf, 2u);
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [NSException raise:NSObjectInaccessibleException format:@"%@ Only to be used by derived classes", v7];
}

- (void)assembleBulletin
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKChallengeBulletin assembleBulletin", buf, 2u);
  }

  v5 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_GAME_INVITE_NOTIFICATION_TITLE];
  gameName = [(GKChallengeBulletin *)self gameName];
  v7 = [NSString localizedStringWithFormat:v5, gameName];
  [(GKBulletin *)self setTitle:v7];

  [(GKBulletin *)self setHasSound:1];
  gameDescriptor = [(GKChallengeBulletin *)self gameDescriptor];
  bundleIdentifier = [gameDescriptor bundleIdentifier];
  v10 = [(GKChallengeBulletin *)self customChallengeSoundPathForBundleID:bundleIdentifier];
  [(GKBulletin *)self setSoundPath:v10];

  v11 = +[NSDate date];
  [(GKBulletin *)self setDate:v11];
}

- (id)customChallengeSoundPathForBundleID:(id)d
{
  dCopy = d;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKChallengeBulletin customChallengeSoundPathForBundleID:", v13, 2u);
  }

  v6 = GKGetBundlePathForIdentifier();
  v7 = [NSBundle bundleWithPath:v6];
  _gkPathForChallengeSound = [v7 _gkPathForChallengeSound];
  v9 = _gkPathForChallengeSound;
  if (_gkPathForChallengeSound)
  {
    v10 = _gkPathForChallengeSound;
  }

  else
  {
    v10 = &stru_100374F10;
  }

  v11 = v10;

  return v10;
}

- (unint64_t)launchEventType
{
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKError;
  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_100295DEC(v5, self, a2);
  }

  return -1;
}

- (void)handleAcceptAction
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKChallengeBulletin handleAcceptAction", &v17, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKChallenge Notification: challenge received handling accept action %@", &v17, 0xCu);
  }

  if ([(GKGameplayBulletin *)self gameLocation]== 1)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      gameDescriptor = [(GKChallengeBulletin *)self gameDescriptor];
      bundleIdentifier = [gameDescriptor bundleIdentifier];
      v17 = 138412290;
      selfCopy = bundleIdentifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKChallenge Notification: set launch event for client %@", &v17, 0xCu);
    }

    gameDescriptor2 = [(GKChallengeBulletin *)self gameDescriptor];
    bundleIdentifier2 = [gameDescriptor2 bundleIdentifier];
    v14 = [GKClientProxy clientForBundleID:bundleIdentifier2];

    launchEventType = [(GKChallengeBulletin *)self launchEventType];
    challenge = [(GKChallengeBulletin *)self challenge];
    [v14 setLaunchEvent:launchEventType withContext:challenge];
  }
}

@end