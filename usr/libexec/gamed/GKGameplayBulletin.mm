@interface GKGameplayBulletin
+ (BOOL)areGameVersionsCompatibleForGame:(id)a3 shortVersion:(id)a4 version:(id)a5;
- (BOOL)isCompatibleWithGameDescriptor:(id)a3;
- (BOOL)isPushForLocalPlayers;
- (BOOL)isPushFromLocalPlayers;
- (BOOL)setInstalledGameLocationFor:(id)a3 descriptor:(id)a4;
- (GKGameplayBulletin)initWithCoder:(id)a3;
- (void)checkCompatibleGameWithoutCompatibilityMatrix;
- (void)determineGameLocationOnDeviceOrInStoreWithCompletionHandler:(id)a3;
- (void)determineGameLocationViaCompatibilityMatrixWithCompletionHandler:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)loadOriginatorPlayerWithCompletionHandler:(id)a3;
@end

@implementation GKGameplayBulletin

- (GKGameplayBulletin)initWithCoder:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKGameplayBulletin initWithCoder:", buf, 2u);
  }

  v36.receiver = self;
  v36.super_class = GKGameplayBulletin;
  v7 = [(GKBulletin *)&v36 initWithCoder:v4];
  if (v7)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receiverPlayerID"];
    receiverPlayerID = v7->_receiverPlayerID;
    v7->_receiverPlayerID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originatorPlayerID"];
    originatorPlayerID = v7->_originatorPlayerID;
    v7->_originatorPlayerID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receiverPlayer"];
    receiverPlayer = v7->_receiverPlayer;
    v7->_receiverPlayer = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originatorPlayer"];
    originatorPlayer = v7->_originatorPlayer;
    v7->_originatorPlayer = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receiverGuestPlayerID"];
    receiverGuestPlayerID = v7->_receiverGuestPlayerID;
    v7->_receiverGuestPlayerID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originatorGuestPlayerID"];
    originatorGuestPlayerID = v7->_originatorGuestPlayerID;
    v7->_originatorGuestPlayerID = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receiverGuestPlayer"];
    receiverGuestPlayer = v7->_receiverGuestPlayer;
    v7->_receiverGuestPlayer = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originatorGuestPlayer"];
    originatorGuestPlayer = v7->_originatorGuestPlayer;
    v7->_originatorGuestPlayer = v22;

    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = [NSSet setWithObjects:v24, v25, objc_opt_class(), 0];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"compatibleVersions"];
    compatibleVersions = v7->_compatibleVersions;
    v7->_compatibleVersions = v27;

    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = [NSSet setWithObjects:v29, v30, objc_opt_class(), 0];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"compatibleShortVersions"];
    compatibleShortVersions = v7->_compatibleShortVersions;
    v7->_compatibleShortVersions = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gameLocation"];
    v7->_gameLocation = [v34 integerValue];
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKGameplayBulletin encodeWithCoder:", buf, 2u);
  }

  v18.receiver = self;
  v18.super_class = GKGameplayBulletin;
  [(GKBulletin *)&v18 encodeWithCoder:v4];
  v7 = [(GKGameplayBulletin *)self receiverPlayerID];
  [v4 encodeObject:v7 forKey:@"receiverPlayerID"];

  v8 = [(GKGameplayBulletin *)self originatorPlayerID];
  [v4 encodeObject:v8 forKey:@"originatorPlayerID"];

  v9 = [(GKGameplayBulletin *)self receiverPlayer];
  [v4 encodeObject:v9 forKey:@"receiverPlayer"];

  v10 = [(GKGameplayBulletin *)self originatorPlayer];
  [v4 encodeObject:v10 forKey:@"originatorPlayer"];

  v11 = [(GKGameplayBulletin *)self receiverGuestPlayerID];
  [v4 encodeObject:v11 forKey:@"receiverGuestPlayerID"];

  v12 = [(GKGameplayBulletin *)self originatorGuestPlayerID];
  [v4 encodeObject:v12 forKey:@"originatorGuestPlayerID"];

  v13 = [(GKGameplayBulletin *)self receiverGuestPlayer];
  [v4 encodeObject:v13 forKey:@"receiverGuestPlayer"];

  v14 = [(GKGameplayBulletin *)self originatorGuestPlayer];
  [v4 encodeObject:v14 forKey:@"originatorGuestPlayer"];

  v15 = [(GKGameplayBulletin *)self compatibleVersions];
  [v4 encodeObject:v15 forKey:@"compatibleVersions"];

  v16 = [(GKGameplayBulletin *)self compatibleShortVersions];
  [v4 encodeObject:v16 forKey:@"compatibleShortVersions"];

  v17 = [NSNumber numberWithInt:[(GKGameplayBulletin *)self gameLocation]];
  [v4 encodeObject:v17 forKey:@"gameLocation"];
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

  v5 = [(GKGameplayBulletin *)self receiverPlayerID];
  v6 = [objc_opt_class() playerIsLocal:v5];

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

  v5 = [(GKGameplayBulletin *)self originatorPlayerID];
  v6 = [objc_opt_class() playerIsLocal:v5];

  return v6;
}

- (BOOL)isCompatibleWithGameDescriptor:(id)a3
{
  v4 = a3;
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

  v7 = [(GKBulletin *)self gameDescriptor];
  v8 = [v7 bundleIdentifier];

  v9 = [(GKBulletin *)self gameDescriptor];
  v10 = [v9 bundleVersion];

  v11 = [(GKBulletin *)self gameDescriptor];
  v12 = [v11 shortBundleVersion];

  v13 = [v4 bundleIdentifier];
  v14 = [v8 isEqualToString:v13];

  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = [v4 shortBundleVersion];
  v16 = [v4 bundleVersion];
  if (![v12 isEqualToString:v15])
  {
    v17 = [(GKGameplayBulletin *)self compatibleShortVersions];
    if (([v17 containsObject:v15] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", v16))
    {

      goto LABEL_10;
    }

    v19 = [(GKGameplayBulletin *)self compatibleVersions];
    v20 = [v19 containsObject:v16];

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
  v6 = [(GKBulletin *)self gameDescriptor];
  v7 = [v6 bundleIdentifier];

  v8 = [v5 applicationProxyForBundleID:v7];
  if ([v8 isInstalled] && (objc_msgSend(v8, "isRestricted") & 1) == 0)
  {
    v9 = [v8 bundleShortVersion];
    v31 = [v8 bundleVersion];
    v10 = [(GKBulletin *)self gameDescriptor];
    v11 = [v10 shortBundleVersion];
    if (([v11 isEqualToString:v9] & 1) == 0)
    {
      v12 = [(GKGameplayBulletin *)self compatibleShortVersions];
      if (([v12 containsObject:v9] & 1) == 0)
      {
        v29 = v9;
        v30 = v12;
        v13 = [(GKBulletin *)self gameDescriptor];
        v14 = [v13 bundleVersion];
        if (([v14 isEqualToString:v31] & 1) == 0)
        {
          v27 = v14;
          v28 = v13;
          v15 = [(GKGameplayBulletin *)self compatibleVersions];
          v16 = v31;
          if (([v15 containsObject:?] & 1) == 0)
          {
            v26 = [v31 isEqualToString:@"-1"];

            v9 = v29;
            if ((v26 & 1) == 0)
            {
LABEL_25:

              goto LABEL_26;
            }

LABEL_15:
            v17 = [GKApplicationWorkspace getPlatformForBundleID:v7];
            v18 = [(GKBulletin *)self gameDescriptor];
            v19 = [v18 platform];

            if (v19 == v17)
            {
              if (!os_log_GKGeneral)
              {
                v20 = GKOSLoggers();
              }

              v21 = os_log_GKDaemon;
              v16 = v31;
              if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v33 = v7;
                v34 = 2112;
                v35 = v9;
                v36 = 2112;
                v37 = v31;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Found perfect compatible game: bundleID = %@, short version = %@, version = %@", buf, 0x20u);
              }

              v22 = [(GKBulletin *)self gameDescriptor];
              [v22 setShortBundleVersion:v9];

              v23 = [(GKBulletin *)self gameDescriptor];
              [v23 setBundleVersion:v31];

              [(GKGameplayBulletin *)self setGameLocation:1];
            }

            else
            {
              if (!os_log_GKGeneral)
              {
                v24 = GKOSLoggers();
              }

              v25 = os_log_GKDaemon;
              v16 = v31;
              if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v33 = v7;
                v34 = 2112;
                v35 = v9;
                v36 = 2112;
                v37 = v31;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Didn't find a perfect compatible game: bundleID = %@, short version = %@, version = %@", buf, 0x20u);
              }
            }

            goto LABEL_25;
          }

          v14 = v27;
          v13 = v28;
        }

        v9 = v29;
        v12 = v30;
      }
    }

    goto LABEL_15;
  }

LABEL_26:
}

- (BOOL)setInstalledGameLocationFor:(id)a3 descriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 platform] || (+[GKGameDescriptor supportsPlatform:](GKGameDescriptor, "supportsPlatform:", objc_msgSend(v6, "platform")) & 1) != 0)
  {
    v8 = [v6 bundleID];
    v9 = +[GKApplicationWorkspace defaultWorkspace];
    v10 = [v9 applicationProxyForBundleID:v8];

    if ([v10 isInstalled] && (objc_msgSend(v10, "isRestricted") & 1) == 0)
    {
      v13 = [v10 bundleShortVersion];
      v14 = [v10 bundleVersion];
      v25 = [v6 adamID];
      if ([objc_opt_class() areGameVersionsCompatibleForGame:v6 shortVersion:v13 version:v14])
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
          v40 = v8;
          v41 = 2112;
          v42 = v13;
          v43 = 2112;
          v44 = v14;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "GKGameplayBulletin - found installed compatible app: bundleID = %@, short version = %@, version = %@", &v39, 0x20u);
        }

        [(GKGameplayBulletin *)self setGameLocation:1];
        v30 = [(GKBulletin *)self gameDescriptor];
        [v30 setBundleIdentifier:v8];

        v31 = [(GKBulletin *)self gameDescriptor];
        [v31 setBundleVersion:v14];

        v32 = [(GKBulletin *)self gameDescriptor];
        [v32 setShortBundleVersion:v13];

        v33 = +[GKGameDescriptor currentPlatform];
        v34 = [(GKBulletin *)self gameDescriptor];
        [v34 setPlatform:v33];

        if ([v25 integerValue] < 1)
        {
          if (!os_log_GKGeneral)
          {
            v37 = GKOSLoggers();
          }

          v38 = os_log_GKMatch;
          if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
          {
            v39 = 138412802;
            v40 = v8;
            v41 = 2112;
            v42 = v14;
            v43 = 2112;
            v44 = v13;
            _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "No adamID found from the installed app. bundleID: %@, version: %@, shortVersion: %@", &v39, 0x20u);
          }
        }

        else
        {
          v35 = [(GKBulletin *)self gameDescriptor];
          [v35 setAdamID:v25];
        }

        v24 = 1;
        goto LABEL_34;
      }
    }

    else
    {
      v11 = +[GKPreferences shared];
      v12 = [v11 isAppInstallationRestricted];

      if (v12)
      {
LABEL_33:
        v24 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v13 = [v7 objectForKeyedSubscript:@"short-bundle-version"];
      v14 = [v7 objectForKeyedSubscript:@"bundle-version"];
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
        v40 = v8;
        v41 = 2112;
        v42 = v13;
        v43 = 2112;
        v44 = v14;
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
    v42 = v6;
    v43 = 2112;
    v44 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "GKGameplayBulletin - skipping mismatching platform between current = %ld and game = %@. Supported platforms: %@", &v39, 0x20u);
  }

  v24 = 0;
LABEL_35:

  return v24;
}

- (void)determineGameLocationViaCompatibilityMatrixWithCompletionHandler:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKGameplayBulletin - determineGameLocationViaCompatibilityMatrixWithCompletionHandler:", buf, 2u);
  }

  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKGameplayBulletin.m", 200, "[GKGameplayBulletin determineGameLocationViaCompatibilityMatrixWithCompletionHandler:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v9 = +[GKClientProxy gameCenterClient];
  v10 = [(GKBulletin *)self gameDescriptor];
  v11 = [v10 shortBundleVersion];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = [(GKGameplayBulletin *)self compatibleShortVersions];
    v14 = [v13 count];

    if (!v14)
    {
      goto LABEL_10;
    }

    v10 = [(GKGameplayBulletin *)self compatibleShortVersions];
    v12 = [v10 lastObject];
    v15 = [(GKBulletin *)self gameDescriptor];
    [v15 setShortBundleVersion:v12];
  }

LABEL_10:
  v16 = [(GKBulletin *)self gameDescriptor];
  v17 = [v16 bundleVersion];
  if (v17)
  {
    v18 = v17;
LABEL_14:

    goto LABEL_15;
  }

  v19 = [(GKGameplayBulletin *)self compatibleVersions];
  v20 = [v19 count];

  if (v20)
  {
    v16 = [(GKGameplayBulletin *)self compatibleVersions];
    v18 = [v16 lastObject];
    v21 = [(GKBulletin *)self gameDescriptor];
    [v21 setBundleVersion:v18];

    goto LABEL_14;
  }

LABEL_15:
  v22 = [(GKBulletin *)self gameDescriptor];

  if (v22)
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

  v23 = [v9 replyQueue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1001842C8;
  v26[3] = &unk_100360EB0;
  v27 = v8;
  v28 = v4;
  v24 = v8;
  v25 = v4;
  [v24 notifyOnQueue:v23 block:v26];
}

+ (BOOL)areGameVersionsCompatibleForGame:(id)a3 shortVersion:(id)a4 version:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v7 shortVersions];
  v11 = [v10 containsObject:v9];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v13 = [v7 shortVersions];
    if ([v13 containsObject:@"-1"])
    {
      v12 = 1;
    }

    else
    {
      v14 = [v7 versions];
      if ([v14 containsObject:v8])
      {
        v12 = 1;
      }

      else
      {
        v15 = [v7 versions];
        v12 = [v15 containsObject:@"-1"];
      }
    }
  }

  return v12;
}

- (void)determineGameLocationOnDeviceOrInStoreWithCompletionHandler:(id)a3
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
  if (v4)
  {
    v11 = [v9 replyQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10018491C;
    v12[3] = &unk_100360EB0;
    v14 = v4;
    v13 = v10;
    [v13 notifyOnQueue:v11 block:v12];
  }
}

- (void)loadOriginatorPlayerWithCompletionHandler:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKGameplayBulletin loadOriginatorPlayerWithCompletionHandler:", buf, 2u);
  }

  v7 = +[GKClientProxy gameCenterClient];
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameplayBulletin.m", 318, "[GKGameplayBulletin loadOriginatorPlayerWithCompletionHandler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v10 = [(GKGameplayBulletin *)self originatorPlayer];

  if (!v10)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100184B8C;
    v15[3] = &unk_100360FF0;
    v15[4] = self;
    v16 = v9;
    [v16 perform:v15];
  }

  if (v4)
  {
    v11 = [v7 replyQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100184DC0;
    v12[3] = &unk_100360EB0;
    v14 = v4;
    v13 = v9;
    [v13 notifyOnQueue:v11 block:v12];
  }
}

@end