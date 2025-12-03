@interface GKTestToolClientProxy
- (BOOL)isPosingAsGameCenter;
- (id)adamID;
- (id)bundleIdentifier;
- (id)bundleShortVersion;
- (id)bundleVersion;
- (id)externalVersion;
- (id)protocolVersion;
- (id)transportWithCredential:(id)credential;
- (void)setTestGame:(id)game protocolVersion:(id)version reply:(id)reply;
@end

@implementation GKTestToolClientProxy

- (void)setTestGame:(id)game protocolVersion:(id)version reply:(id)reply
{
  gameCopy = game;
  versionCopy = version;
  replyCopy = reply;
  bundleIdentifier = [gameCopy bundleIdentifier];
  v13 = bundleIdentifier;
  if (!bundleIdentifier || ([bundleIdentifier isEqualToString:GKGameKitTesterIdentifier] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", GKGKTester2Identifier) & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", GKGKTester2OldIdentifier) & 1) != 0 || (objc_msgSend(v13, "containsString:", @"com.apple.sample") & 1) != 0 || (objc_msgSend(v13, "containsString:", @"com.apple.onword") & 1) != 0 || (objc_msgSend(v13, "containsString:", @"com.apple.Chess") & 1) != 0 || (objc_msgSend(v13, "containsString:", @"com.apple.LameGame") & 1) != 0 || (objc_msgSend(v13, "containsString:", @"com.apple.TheCoast") & 1) != 0 || (objc_msgSend(v13, "containsString:", @"com.apple.Boxes") & 1) != 0 || objc_msgSend(v13, "containsString:", @"com.apple.news"))
  {
    if (gameCopy)
    {
      name = [gameCopy name];
      bundleVersion = [gameCopy bundleVersion];
      v16 = [NSString stringWithFormat:@"%@ (%@, %@)", name, v13, bundleVersion];
    }

    else
    {
      v16 = @"Game Center (default)";
    }

    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v27 = v16;
      v28 = 2112;
      v29 = versionCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "setTestGame: %@ protocolVersion: %@", buf, 0x16u);
    }

    [(GKTestToolClientProxy *)self setTestGame:gameCopy];
    [(GKTestToolClientProxy *)self setTestProtocolVersion:versionCopy];
    v19 = 0;
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v21 = GKOSLoggers();
    }

    v22 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100292490(v13, v22);
    }

    v16 = NSStringFromSelector(a2);
    v19 = [NSError userErrorForCode:32 description:v16];
  }

  if (replyCopy)
  {
    replyQueue = [(GKClientProxy *)self replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001537A8;
    block[3] = &unk_100360EB0;
    v25 = replyCopy;
    v24 = v19;
    dispatch_async(replyQueue, block);
  }
}

- (BOOL)isPosingAsGameCenter
{
  testGame = [(GKTestToolClientProxy *)self testGame];
  if (testGame)
  {
    v4 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = GKTestToolClientProxy;
    bundleIdentifier = [(GKClientProxy *)&v7 bundleIdentifier];
    v4 = [bundleIdentifier isEqualToString:GKGameCenterToolIdentifier];
  }

  return v4;
}

- (id)transportWithCredential:(id)credential
{
  credentialCopy = credential;
  if ([(GKTestToolClientProxy *)self isPosingAsGameCenter])
  {
    v5 = +[GKClientProxy gameCenterClient];
    v6 = [v5 transportWithCredential:credentialCopy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GKTestToolClientProxy;
    v6 = [(GKClientProxy *)&v8 transportWithCredential:credentialCopy];
  }

  return v6;
}

- (id)bundleIdentifier
{
  if ([(GKTestToolClientProxy *)self isPosingAsGameCenter])
  {
    testGame = +[GKClientProxy gameCenterClient];
    bundleIdentifier = [testGame bundleIdentifier];
  }

  else
  {
    testGame = [(GKTestToolClientProxy *)self testGame];
    if (testGame)
    {
      testGame2 = [(GKTestToolClientProxy *)self testGame];
      bundleIdentifier2 = [testGame2 bundleIdentifier];

      goto LABEL_7;
    }

    v8.receiver = self;
    v8.super_class = GKTestToolClientProxy;
    bundleIdentifier = [(GKClientProxy *)&v8 bundleIdentifier];
  }

  bundleIdentifier2 = bundleIdentifier;
LABEL_7:

  return bundleIdentifier2;
}

- (id)bundleVersion
{
  if ([(GKTestToolClientProxy *)self isPosingAsGameCenter])
  {
    testGame = +[GKClientProxy gameCenterClient];
    bundleVersion = [testGame bundleVersion];
  }

  else
  {
    testGame = [(GKTestToolClientProxy *)self testGame];
    if (testGame)
    {
      testGame2 = [(GKTestToolClientProxy *)self testGame];
      bundleVersion2 = [testGame2 bundleVersion];

      goto LABEL_7;
    }

    v8.receiver = self;
    v8.super_class = GKTestToolClientProxy;
    bundleVersion = [(GKClientProxy *)&v8 bundleVersion];
  }

  bundleVersion2 = bundleVersion;
LABEL_7:

  return bundleVersion2;
}

- (id)bundleShortVersion
{
  if ([(GKTestToolClientProxy *)self isPosingAsGameCenter])
  {
    testGame = +[GKClientProxy gameCenterClient];
    bundleShortVersion = [testGame bundleShortVersion];
  }

  else
  {
    testGame = [(GKTestToolClientProxy *)self testGame];
    if (testGame)
    {
      testGame2 = [(GKTestToolClientProxy *)self testGame];
      shortBundleVersion = [testGame2 shortBundleVersion];

      goto LABEL_7;
    }

    v8.receiver = self;
    v8.super_class = GKTestToolClientProxy;
    bundleShortVersion = [(GKClientProxy *)&v8 bundleShortVersion];
  }

  shortBundleVersion = bundleShortVersion;
LABEL_7:

  return shortBundleVersion;
}

- (id)adamID
{
  if ([(GKTestToolClientProxy *)self isPosingAsGameCenter])
  {
    testGame = +[GKClientProxy gameCenterClient];
    adamID = [testGame adamID];
  }

  else
  {
    testGame = [(GKTestToolClientProxy *)self testGame];
    if (testGame)
    {
      testGame2 = [(GKTestToolClientProxy *)self testGame];
      adamID2 = [testGame2 adamID];

      goto LABEL_7;
    }

    v8.receiver = self;
    v8.super_class = GKTestToolClientProxy;
    adamID = [(GKClientProxy *)&v8 adamID];
  }

  adamID2 = adamID;
LABEL_7:

  return adamID2;
}

- (id)externalVersion
{
  if ([(GKTestToolClientProxy *)self isPosingAsGameCenter])
  {
    testGame = +[GKClientProxy gameCenterClient];
    externalVersion = [testGame externalVersion];
  }

  else
  {
    testGame = [(GKTestToolClientProxy *)self testGame];
    if (testGame)
    {
      testGame2 = [(GKTestToolClientProxy *)self testGame];
      externalVersion2 = [testGame2 externalVersion];

      goto LABEL_7;
    }

    v8.receiver = self;
    v8.super_class = GKTestToolClientProxy;
    externalVersion = [(GKClientProxy *)&v8 externalVersion];
  }

  externalVersion2 = externalVersion;
LABEL_7:

  return externalVersion2;
}

- (id)protocolVersion
{
  testProtocolVersion = [(GKTestToolClientProxy *)self testProtocolVersion];
  v4 = testProtocolVersion;
  if (testProtocolVersion)
  {
    protocolVersion = testProtocolVersion;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GKTestToolClientProxy;
    protocolVersion = [(GKClientProxy *)&v8 protocolVersion];
  }

  v6 = protocolVersion;

  return v6;
}

@end