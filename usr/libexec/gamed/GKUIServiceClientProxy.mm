@interface GKUIServiceClientProxy
- (GKClientProxy)hostClient;
- (void)dealloc;
- (void)getPrivateServicesForPID:(int)d localPlayer:(id)player reply:(id)reply;
- (void)getServicesForPID:(int)d localPlayer:(id)player reply:(id)reply;
- (void)setExtensionProxy:(id)proxy forBundleID:(id)d;
- (void)setHostPID:(int)d reply:(id)reply;
- (void)terminateWithCompletionHandler:(id)handler;
@end

@implementation GKUIServiceClientProxy

- (void)dealloc
{
  hostClient = [(GKUIServiceClientProxy *)self hostClient];
  [hostClient setViewService:0];

  [(GKUIServiceClientProxy *)self setHostClient:0];
  v4.receiver = self;
  v4.super_class = GKUIServiceClientProxy;
  [(GKClientProxy *)&v4 dealloc];
}

- (void)setExtensionProxy:(id)proxy forBundleID:(id)d
{
  v4 = [NSString stringWithFormat:@"Invalid attempt to set extension proxy(%@) on viewService(%@)", d, proxy, self];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKUIServiceClientProxy.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v4, "-[GKUIServiceClientProxy setExtensionProxy:forBundleID:]", [lastPathComponent UTF8String], 35);

  [NSException raise:@"GameKit Exception" format:@"%@", v7];
}

- (void)terminateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016930C;
    block[3] = &unk_100360FA0;
    v6 = handlerCopy;
    dispatch_barrier_async(v4, block);
  }
}

- (void)setHostPID:(int)d reply:(id)reply
{
  v4 = *&d;
  replyCopy = reply;
  v7 = [GKClientProxy clientForProcessIdentifier:v4];
  if (!v7)
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100293650(v4, v18);
      if (replyCopy)
      {
        goto LABEL_13;
      }
    }

    else if (replyCopy)
    {
      goto LABEL_13;
    }

    v14 = 0;
    goto LABEL_15;
  }

  [(GKUIServiceClientProxy *)self setHostClient:v7];
  [(GKUIServiceClientProxy *)self handleNewHostClient:v7];
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    selfCopy = self;
    v27 = 2112;
    v28 = v7;
    v29 = 1024;
    v30 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Associating view service %@ with client %@ : pid(%d)", buf, 0x1Cu);
  }

  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  currentGame = [v7 currentGame];
  environment = [v7 environment];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10016966C;
  v23[3] = &unk_100361770;
  v13 = v10;
  v24 = v13;
  [(GKClientProxy *)self setCurrentGame:currentGame serverEnvironment:environment reply:v23];

  dispatch_group_enter(v13);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100169674;
  v21[3] = &unk_100368508;
  v21[4] = self;
  v14 = v13;
  v22 = v14;
  [v7 getAuthenticatedLocalPlayersWithStatus:1 handler:v21];

  if (replyCopy)
  {
    if (v14)
    {
      replyQueue = [(GKClientProxy *)self replyQueue];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100169710;
      v19[3] = &unk_100360FA0;
      v20 = replyCopy;
      dispatch_group_notify(v14, replyQueue, v19);

      replyQueue2 = v20;
LABEL_14:

      goto LABEL_15;
    }

LABEL_13:
    replyQueue2 = [(GKClientProxy *)self replyQueue];
    dispatch_async(replyQueue2, replyCopy);
    v14 = 0;
    goto LABEL_14;
  }

LABEL_15:
}

- (void)getServicesForPID:(int)d localPlayer:(id)player reply:(id)reply
{
  v6 = *&d;
  playerCopy = player;
  replyCopy = reply;
  v9 = [GKClientProxy clientForProcessIdentifier:v6];
  [(GKUIServiceClientProxy *)self setHostClient:v9];
  hostClient = [(GKUIServiceClientProxy *)self hostClient];
  isExtension = [hostClient isExtension];

  if (isExtension)
  {
    hostClient2 = [(GKUIServiceClientProxy *)self hostClient];
    v12HostClient = [hostClient2 hostClient];

    v9 = v12HostClient;
  }

  v14 = [v9 credentialForPlayer:playerCopy];
  v15 = [v9 transportWithCredential:v14];
  hostClient3 = [(GKUIServiceClientProxy *)self hostClient];
  [(GKClientProxy *)self getServicesWithTransport:v15 forClient:hostClient3 reply:replyCopy];
}

- (void)getPrivateServicesForPID:(int)d localPlayer:(id)player reply:(id)reply
{
  playerCopy = player;
  replyCopy = reply;
  hostClient = [(GKUIServiceClientProxy *)self hostClient];
  if (hostClient)
  {
    v11 = hostClient;
    if ([hostClient pid] != d)
    {
      v12 = [NSString stringWithFormat:@"Assertion failed"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKUIServiceClientProxy.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (hostClient.pid == pid)\n[%s (%s:%d)]", v12, "-[GKUIServiceClientProxy getPrivateServicesForPID:localPlayer:reply:]", [lastPathComponent UTF8String], 129);

      [NSException raise:@"GameKit Exception" format:@"%@", v15];
    }

    hostClient2 = [(GKUIServiceClientProxy *)self hostClient];
    isExtension = [hostClient2 isExtension];

    if (isExtension)
    {
      hostClient3 = [(GKUIServiceClientProxy *)self hostClient];
      v18HostClient = [hostClient3 hostClient];

      v11 = v18HostClient;
    }

    v20 = [v11 credentialForPlayer:playerCopy];
    v21 = [v11 transportWithCredential:v20];
    [(GKClientProxy *)self getPrivateServicesWithTransport:v21 forClient:v11 reply:replyCopy];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v22 = GKOSLoggers();
    }

    v23 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002936C8(v23);
    }

    replyQueue = [(GKClientProxy *)self replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100169AC4;
    block[3] = &unk_100360FA0;
    v26 = replyCopy;
    dispatch_async(replyQueue, block);

    v11 = v26;
  }
}

- (GKClientProxy)hostClient
{
  WeakRetained = objc_loadWeakRetained(&self->_hostClient);

  return WeakRetained;
}

@end