@interface GKGameplayBulletin
+ (BOOL)areGameVersionsCompatibleForGame:(id)game shortVersion:(id)version version:(id)a5;
- (BOOL)isCompatibleWithGameDescriptor:(id)descriptor;
- (BOOL)isPushForLocalPlayers;
- (BOOL)isPushFromLocalPlayers;
- (BOOL)setInstalledGameLocationFor:(id)for descriptor:(id)descriptor;
- (GKGameplayBulletin)initWithCoder:(id)coder;
- (void)checkCompatibleGameWithoutCompatibilityMatrix;
- (void)determineGameLocationOnDeviceOrInStoreWithCompletionHandler:(id)handler;
- (void)determineGameLocationViaCompatibilityMatrixWithCompletionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
- (void)loadOriginatorPlayerWithCompletionHandler:(id)handler;
@end

@implementation GKGameplayBulletin

- (GKGameplayBulletin)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKGameplayBulletin initWithCoder:", buf, 2u);
  }

  v36.receiver = self;
  v36.super_class = GKGameplayBulletin;
  v7 = [(GKBulletin *)&v36 initWithCoder:coderCopy];
  if (v7)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receiverPlayerID"];
    receiverPlayerID = v7->_receiverPlayerID;
    v7->_receiverPlayerID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatorPlayerID"];
    originatorPlayerID = v7->_originatorPlayerID;
    v7->_originatorPlayerID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receiverPlayer"];
    receiverPlayer = v7->_receiverPlayer;
    v7->_receiverPlayer = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatorPlayer"];
    originatorPlayer = v7->_originatorPlayer;
    v7->_originatorPlayer = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receiverGuestPlayerID"];
    receiverGuestPlayerID = v7->_receiverGuestPlayerID;
    v7->_receiverGuestPlayerID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatorGuestPlayerID"];
    originatorGuestPlayerID = v7->_originatorGuestPlayerID;
    v7->_originatorGuestPlayerID = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receiverGuestPlayer"];
    receiverGuestPlayer = v7->_receiverGuestPlayer;
    v7->_receiverGuestPlayer = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatorGuestPlayer"];
    originatorGuestPlayer = v7->_originatorGuestPlayer;
    v7->_originatorGuestPlayer = v22;

    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = [NSSet setWithObjects:v24, v25, objc_opt_class(), 0];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"compatibleVersions"];
    compatibleVersions = v7->_compatibleVersions;
    v7->_compatibleVersions = v27;

    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = [NSSet setWithObjects:v29, v30, objc_opt_class(), 0];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"compatibleShortVersions"];
    compatibleShortVersions = v7->_compatibleShortVersions;
    v7->_compatibleShortVersions = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gameLocation"];
    v7->_gameLocation = [v34 integerValue];
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKGameplayBulletin encodeWithCoder:", buf, 2u);
  }

  v18.receiver = self;
  v18.super_class = GKGameplayBulletin;
  [(GKBulletin *)&v18 encodeWithCoder:coderCopy];
  receiverPlayerID = [(GKGameplayBulletin *)self receiverPlayerID];
  [coderCopy encodeObject:receiverPlayerID forKey:@"receiverPlayerID"];

  originatorPlayerID = [(GKGameplayBulletin *)self originatorPlayerID];
  [coderCopy encodeObject:originatorPlayerID forKey:@"originatorPlayerID"];

  receiverPlayer = [(GKGameplayBulletin *)self receiverPlayer];
  [coderCopy encodeObject:receiverPlayer forKey:@"receiverPlayer"];

  originatorPlayer = [(GKGameplayBulletin *)self originatorPlayer];
  [coderCopy encodeObject:originatorPlayer forKey:@"originatorPlayer"];

  receiverGuestPlayerID = [(GKGameplayBulletin *)self receiverGuestPlayerID];
  [coderCopy encodeObject:receiverGuestPlayerID forKey:@"receiverGuestPlayerID"];

  originatorGuestPlayerID = [(GKGameplayBulletin *)self originatorGuestPlayerID];
  [coderCopy encodeObject:originatorGuestPlayerID forKey:@"originatorGuestPlayerID"];

  receiverGuestPlayer = [(GKGameplayBulletin *)self receiverGuestPlayer];
  [coderCopy encodeObject:receiverGuestPlayer forKey:@"receiverGuestPlayer"];

  originatorGuestPlayer = [(GKGameplayBulletin *)self originatorGuestPlayer];
  [coderCopy encodeObject:originatorGuestPlayer forKey:@"originatorGuestPlayer"];

  compatibleVersions = [(GKGameplayBulletin *)self compatibleVersions];
  [coderCopy encodeObject:compatibleVersions forKey:@"compatibleVersions"];

  compatibleShortVersions = [(GKGameplayBulletin *)self compatibleShortVersions];
  [coderCopy encodeObject:compatibleShortVersions forKey:@"compatibleShortVersions"];

  v17 = [NSNumber numberWithInt:[(GKGameplayBulletin *)self gameLocation]];
  [coderCopy encodeObject:v17 forKey:@"gameLocation"];
}

- (BOOL)isPushForLocalPlayers
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKGameplayBulletin isPushForLocalPlayers", v8, 2u);
  }

  receiverPlayerID = [(GKGameplayBulletin *)self receiverPlayerID];
  v6 = [objc_opt_class() playerIsLocal:receiverPlayerID];

  return v6;
}

- (BOOL)isPushFromLocalPlayers
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKGameplayBulletin isPushFromLocalPlayers", v8, 2u);
  }

  originatorPlayerID = [(GKGameplayBulletin *)self originatorPlayerID];
  v6 = [objc_opt_class() playerIsLocal:originatorPlayerID];

  return v6;
}

- (BOOL)isCompatibleWithGameDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKGameplayBulletin isCompatibleWithGameDescriptor:", v22, 2u);
  }

  gameDescriptor = [(GKBulletin *)self gameDescriptor];
  bundleIdentifier = [gameDescriptor bundleIdentifier];

  gameDescriptor2 = [(GKBulletin *)self gameDescriptor];
  bundleVersion = [gameDescriptor2 bundleVersion];

  gameDescriptor3 = [(GKBulletin *)self gameDescriptor];
  shortBundleVersion = [gameDescriptor3 shortBundleVersion];

  bundleIdentifier2 = [descriptorCopy bundleIdentifier];
  v14 = [bundleIdentifier isEqualToString:bundleIdentifier2];

  if (!v14)
  {
    goto LABEL_13;
  }

  shortBundleVersion2 = [descriptorCopy shortBundleVersion];
  bundleVersion2 = [descriptorCopy bundleVersion];
  if (![shortBundleVersion isEqualToString:shortBundleVersion2])
  {
    compatibleShortVersions = [(GKGameplayBulletin *)self compatibleShortVersions];
    if (([compatibleShortVersions containsObject:shortBundleVersion2] & 1) != 0 || objc_msgSend(bundleVersion, "isEqualToString:", bundleVersion2))
    {

      goto LABEL_10;
    }

    compatibleVersions = [(GKGameplayBulletin *)self compatibleVersions];
    v20 = [compatibleVersions containsObject:bundleVersion2];

    if (v20)
    {
      goto LABEL_11;
    }

LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

LABEL_10:

LABEL_11:
  v18 = 1;
LABEL_14:

  return v18;
}

- (void)checkCompatibleGameWithoutCompatibilityMatrix
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKGameplayBulletin checkCompatibleGameWithoutCompatibilityMatrix", buf, 2u);
  }

  v5 = +[GKApplicationWorkspace defaultWorkspace];
  gameDescriptor = [(GKBulletin *)self gameDescriptor];
  bundleIdentifier = [gameDescriptor bundleIdentifier];

  v8 = [v5 applicationProxyForBundleID:bundleIdentifier];
  if ([v8 isInstalled] && (objc_msgSend(v8, "isRestricted") & 1) == 0)
  {
    bundleShortVersion = [v8 bundleShortVersion];
    bundleVersion = [v8 bundleVersion];
    gameDescriptor2 = [(GKBulletin *)self gameDescriptor];
    shortBundleVersion = [gameDescriptor2 shortBundleVersion];
    if (([shortBundleVersion isEqualToString:bundleShortVersion] & 1) == 0)
    {
      compatibleShortVersions = [(GKGameplayBulletin *)self compatibleShortVersions];
      if (([compatibleShortVersions containsObject:bundleShortVersion] & 1) == 0)
      {
        v29 = bundleShortVersion;
        v30 = compatibleShortVersions;
        gameDescriptor3 = [(GKBulletin *)self gameDescriptor];
        bundleVersion2 = [gameDescriptor3 bundleVersion];
        if (([bundleVersion2 isEqualToString:bundleVersion] & 1) == 0)
        {
          v27 = bundleVersion2;
          v28 = gameDescriptor3;
          compatibleVersions = [(GKGameplayBulletin *)self compatibleVersions];
          v16 = bundleVersion;
          if (([compatibleVersions containsObject:?] & 1) == 0)
          {
            v26 = [bundleVersion isEqualToString:@"-1"];

            bundleShortVersion = v29;
            if ((v26 & 1) == 0)
            {
LABEL_25:

              goto LABEL_26;
            }

LABEL_15:
            v17 = [GKApplicationWorkspace getPlatformForBundleID:bundleIdentifier];
            gameDescriptor4 = [(GKBulletin *)self gameDescriptor];
            platform = [gameDescriptor4 platform];

            if (platform == v17)
            {
              if (!os_log_GKGeneral)
              {
                v20 = GKOSLoggers();
              }

              v21 = os_log_GKDaemon;
              v16 = bundleVersion;
              if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v33 = bundleIdentifier;
                v34 = 2112;
                v35 = bundleShortVersion;
                v36 = 2112;
                v37 = bundleVersion;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Found perfect compatible game: bundleID = %@, short version = %@, version = %@", buf, 0x20u);
              }

              gameDescriptor5 = [(GKBulletin *)self gameDescriptor];
              [gameDescriptor5 setShortBundleVersion:bundleShortVersion];

              gameDescriptor6 = [(GKBulletin *)self gameDescriptor];
              [gameDescriptor6 setBundleVersion:bundleVersion];

              [(GKGameplayBulletin *)self setGameLocation:1];
            }

            else
            {
              if (!os_log_GKGeneral)
              {
                v24 = GKOSLoggers();
              }

              v25 = os_log_GKDaemon;
              v16 = bundleVersion;
              if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v33 = bundleIdentifier;
                v34 = 2112;
                v35 = bundleShortVersion;
                v36 = 2112;
                v37 = bundleVersion;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Didn't find a perfect compatible game: bundleID = %@, short version = %@, version = %@", buf, 0x20u);
              }
            }

            goto LABEL_25;
          }

          bundleVersion2 = v27;
          gameDescriptor3 = v28;
        }

        bundleShortVersion = v29;
        compatibleShortVersions = v30;
      }
    }

    goto LABEL_15;
  }

LABEL_26:
}

- (BOOL)setInstalledGameLocationFor:(id)for descriptor:(id)descriptor
{
  forCopy = for;
  descriptorCopy = descriptor;
  if (![forCopy platform] || (+[GKGameDescriptor supportsPlatform:](GKGameDescriptor, "supportsPlatform:", objc_msgSend(forCopy, "platform")) & 1) != 0)
  {
    bundleID = [forCopy bundleID];
    v9 = +[GKApplicationWorkspace defaultWorkspace];
    v10 = [v9 applicationProxyForBundleID:bundleID];

    if ([v10 isInstalled] && (objc_msgSend(v10, "isRestricted") & 1) == 0)
    {
      bundleShortVersion = [v10 bundleShortVersion];
      bundleVersion = [v10 bundleVersion];
      adamID = [forCopy adamID];
      if ([objc_opt_class() areGameVersionsCompatibleForGame:forCopy shortVersion:bundleShortVersion version:bundleVersion])
      {
        if (!os_log_GKGeneral)
        {
          v26 = GKOSLoggers();
        }

        v27 = os_log_GKTrace;
        if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
        {
          LOWORD(v39) = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "GKGameplayBulletin - determineGameLocationViaCompatibilityMatrixWithCompletionHandler - Installed compatible app found", &v39, 2u);
        }

        if (!os_log_GKGeneral)
        {
          v28 = GKOSLoggers();
        }

        v29 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
        {
          v39 = 138412802;
          v40 = bundleID;
          v41 = 2112;
          v42 = bundleShortVersion;
          v43 = 2112;
          v44 = bundleVersion;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "GKGameplayBulletin - found installed compatible app: bundleID = %@, short version = %@, version = %@", &v39, 0x20u);
        }

        [(GKGameplayBulletin *)self setGameLocation:1];
        gameDescriptor = [(GKBulletin *)self gameDescriptor];
        [gameDescriptor setBundleIdentifier:bundleID];

        gameDescriptor2 = [(GKBulletin *)self gameDescriptor];
        [gameDescriptor2 setBundleVersion:bundleVersion];

        gameDescriptor3 = [(GKBulletin *)self gameDescriptor];
        [gameDescriptor3 setShortBundleVersion:bundleShortVersion];

        v33 = +[GKGameDescriptor currentPlatform];
        gameDescriptor4 = [(GKBulletin *)self gameDescriptor];
        [gameDescriptor4 setPlatform:v33];

        if ([adamID integerValue] < 1)
        {
          if (!os_log_GKGeneral)
          {
            v37 = GKOSLoggers();
          }

          v38 = os_log_GKMatch;
          if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
          {
            v39 = 138412802;
            v40 = bundleID;
            v41 = 2112;
            v42 = bundleVersion;
            v43 = 2112;
            v44 = bundleShortVersion;
            _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "No adamID found from the installed app. bundleID: %@, version: %@, shortVersion: %@", &v39, 0x20u);
          }
        }

        else
        {
          gameDescriptor5 = [(GKBulletin *)self gameDescriptor];
          [gameDescriptor5 setAdamID:adamID];
        }

        v24 = 1;
        goto LABEL_34;
      }
    }

    else
    {
      v11 = +[GKPreferences shared];
      isAppInstallationRestricted = [v11 isAppInstallationRestricted];

      if (isAppInstallationRestricted)
      {
LABEL_33:
        v24 = 0;
LABEL_34:

        goto LABEL_35;
      }

      bundleShortVersion = [descriptorCopy objectForKeyedSubscript:@"short-bundle-version"];
      bundleVersion = [descriptorCopy objectForKeyedSubscript:@"bundle-version"];
      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
      }

      v16 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        LOWORD(v39) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "GKGameplayBulletin - determineGameLocationViaCompatibilityMatrixWithCompletionHandler - Store Compatible app found", &v39, 2u);
      }

      if (!os_log_GKGeneral)
      {
        v17 = GKOSLoggers();
      }

      v18 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v39 = 138412802;
        v40 = bundleID;
        v41 = 2112;
        v42 = bundleShortVersion;
        v43 = 2112;
        v44 = bundleVersion;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "GKGameplayBulletin - found store compatible app: bundleID = %@, short version = %@, version = %@", &v39, 0x20u);
      }

      [(GKGameplayBulletin *)self setGameLocation:2];
    }

    goto LABEL_33;
  }

  if (!os_log_GKGeneral)
  {
    v19 = GKOSLoggers();
  }

  v20 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    v21 = v20;
    v22 = +[GKGameDescriptor currentPlatform];
    v23 = +[GKGameDescriptor supportedPlatforms];
    v39 = 134218498;
    v40 = v22;
    v41 = 2112;
    v42 = forCopy;
    v43 = 2112;
    v44 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "GKGameplayBulletin - skipping mismatching platform between current = %ld and game = %@. Supported platforms: %@", &v39, 0x20u);
  }

  v24 = 0;
LABEL_35:

  return v24;
}

- (void)determineGameLocationViaCompatibilityMatrixWithCompletionHandler:(id)handler
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKGameplayBulletin - determineGameLocationViaCompatibilityMatrixWithCompletionHandler:", buf, 2u);
  }

  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKGameplayBulletin.m", 200, "[GKGameplayBulletin determineGameLocationViaCompatibilityMatrixWithCompletionHandler:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v9 = +[GKClientProxy gameCenterClient];
  gameDescriptor = [(GKBulletin *)self gameDescriptor];
  shortBundleVersion = [gameDescriptor shortBundleVersion];
  if (shortBundleVersion)
  {
    lastObject = shortBundleVersion;
  }

  else
  {
    compatibleShortVersions = [(GKGameplayBulletin *)self compatibleShortVersions];
    v14 = [compatibleShortVersions count];

    if (!v14)
    {
      goto LABEL_10;
    }

    gameDescriptor = [(GKGameplayBulletin *)self compatibleShortVersions];
    lastObject = [gameDescriptor lastObject];
    gameDescriptor2 = [(GKBulletin *)self gameDescriptor];
    [gameDescriptor2 setShortBundleVersion:lastObject];
  }

LABEL_10:
  gameDescriptor3 = [(GKBulletin *)self gameDescriptor];
  bundleVersion = [gameDescriptor3 bundleVersion];
  if (bundleVersion)
  {
    lastObject2 = bundleVersion;
LABEL_14:

    goto LABEL_15;
  }

  compatibleVersions = [(GKGameplayBulletin *)self compatibleVersions];
  v20 = [compatibleVersions count];

  if (v20)
  {
    gameDescriptor3 = [(GKGameplayBulletin *)self compatibleVersions];
    lastObject2 = [gameDescriptor3 lastObject];
    gameDescriptor4 = [(GKBulletin *)self gameDescriptor];
    [gameDescriptor4 setBundleVersion:lastObject2];

    goto LABEL_14;
  }

LABEL_15:
  gameDescriptor5 = [(GKBulletin *)self gameDescriptor];

  if (gameDescriptor5)
  {
    [(GKGameplayBulletin *)self checkCompatibleGameWithoutCompatibilityMatrix];
    if ([(GKGameplayBulletin *)self gameLocation]!= 1)
    {
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100183DC8;
      v29[3] = &unk_100360F00;
      v29[4] = self;
      v30 = v9;
      v31 = v8;
      [v31 perform:v29];
    }
  }

  replyQueue = [v9 replyQueue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1001842C8;
  v26[3] = &unk_100360EB0;
  v27 = v8;
  v28 = handlerCopy;
  v24 = v8;
  v25 = handlerCopy;
  [v24 notifyOnQueue:replyQueue block:v26];
}

+ (BOOL)areGameVersionsCompatibleForGame:(id)game shortVersion:(id)version version:(id)a5
{
  gameCopy = game;
  v8 = a5;
  versionCopy = version;
  shortVersions = [gameCopy shortVersions];
  v11 = [shortVersions containsObject:versionCopy];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    shortVersions2 = [gameCopy shortVersions];
    if ([shortVersions2 containsObject:@"-1"])
    {
      v12 = 1;
    }

    else
    {
      versions = [gameCopy versions];
      if ([versions containsObject:v8])
      {
        v12 = 1;
      }

      else
      {
        versions2 = [gameCopy versions];
        v12 = [versions2 containsObject:@"-1"];
      }
    }
  }

  return v12;
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKGamePlayerBulletin determineGameLocationOnDeviceOrInStoreWithCompletionHandler:", buf, 2u);
  }

  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKGameplayBulletin.m", 281, "[GKGameplayBulletin determineGameLocationOnDeviceOrInStoreWithCompletionHandler:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v9 = +[GKClientProxy gameCenterClient];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100184648;
  v15[3] = &unk_100360FF0;
  v15[4] = self;
  v10 = v8;
  v16 = v10;
  [v10 perform:v15];
  if (handlerCopy)
  {
    replyQueue = [v9 replyQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10018491C;
    v12[3] = &unk_100360EB0;
    v14 = handlerCopy;
    v13 = v10;
    [v13 notifyOnQueue:replyQueue block:v12];
  }
}

- (void)loadOriginatorPlayerWithCompletionHandler:(id)handler
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKGameplayBulletin loadOriginatorPlayerWithCompletionHandler:", buf, 2u);
  }

  v7 = +[GKClientProxy gameCenterClient];
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameplayBulletin.m", 318, "[GKGameplayBulletin loadOriginatorPlayerWithCompletionHandler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  originatorPlayer = [(GKGameplayBulletin *)self originatorPlayer];

  if (!originatorPlayer)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100184B8C;
    v15[3] = &unk_100360FF0;
    v15[4] = self;
    v16 = v9;
    [v16 perform:v15];
  }

  if (handlerCopy)
  {
    replyQueue = [v7 replyQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100184DC0;
    v12[3] = &unk_100360EB0;
    v14 = handlerCopy;
    v13 = v9;
    [v13 notifyOnQueue:replyQueue block:v12];
  }
}

@end