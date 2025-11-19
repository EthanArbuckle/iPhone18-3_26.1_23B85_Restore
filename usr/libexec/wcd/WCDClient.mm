@interface WCDClient
+ (id)clientsStorageURL;
- (BOOL)complicationEnabled;
- (BOOL)foregroundOrPrivileged;
- (BOOL)isEqual:(id)a3;
- (BOOL)reachable;
- (BOOL)watchAppInstalled;
- (NSString)description;
- (NSString)state;
- (WCDApplicationInfo)applicationInfo;
- (WCDClient)initWithCommunicationID:(id)a3 connection:(id)a4;
- (WCDClientDelegate)delegate;
- (id)clientStorageFileURL;
- (id)newSessionState;
- (id)remoteObjectProxy;
- (int64_t)outstandingMessagesToSendCount;
- (unint64_t)hash;
- (unint64_t)remainingComplicationUserInfoTransfersWithComplicationEnabled:(BOOL)a3;
- (void)acknowledgeFileIndexWithIdentifier:(id)a3 clientPairingID:(id)a4;
- (void)acknowledgeFileResultIndexWithIdentifier:(id)a3 clientPairingID:(id)a4;
- (void)acknowledgeUserInfoIndexWithIdentifier:(id)a3 clientPairingID:(id)a4;
- (void)acknowledgeUserInfoResultIndexWithIdentifier:(id)a3 clientPairingID:(id)a4;
- (void)addOutstandingMessage:(id)a3;
- (void)cancelAllOutstandingMessages;
- (void)cancelSendWithIdentifier:(id)a3;
- (void)clearPersistedClientState;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)copyProgressUpdatesForFileTransfer:(id)a3 fromClonedFileURL:(id)a4;
- (void)dealloc;
- (void)dequeuePendingContent;
- (void)handleActiveDeviceSwitchStarted;
- (void)handleApplicationContextWithPairingID:(id)a3;
- (void)handleFileResultWithPairingID:(id)a3;
- (void)handleIncomingFileWithPairingID:(id)a3;
- (void)handleIncomingUserInfoWithPairingID:(id)a3;
- (void)handleRequest:(id)a3;
- (void)handleResponse:(id)a3;
- (void)handleSentMessageWithIdentifier:(id)a3 error:(id)a4;
- (void)handleUserInfoResultWithPairingID:(id)a3;
- (void)handleXPCInvalidation;
- (void)loadPersistedClientState;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)persistClientState;
- (void)registerForUpdatesForProgress:(id)a3;
- (void)removeOutstandingMessage:(id)a3;
- (void)removeProgressForFileTransfer:(id)a3;
- (void)sendMessage:(id)a3 clientPairingID:(id)a4 acceptanceHandler:(id)a5;
- (void)setClientCurrentPairingID:(id)a3;
- (void)setConnection:(id)a3;
- (void)setCounterpartCanEstablishXPCConnection:(BOOL)a3;
- (void)setupBundleIDMonitoring;
- (void)systemObserverActiveDeviceConnectedChanged;
- (void)systemObserverActiveDeviceSwitchStarted;
- (void)systemObserverAppDidSuspendForBundleID:(id)a3;
- (void)systemObserverInitialSetUpComplete;
- (void)systemObserverProcessStateChangedForBundleID:(id)a3;
- (void)systemObserverRemainingComplicationUserInfoTransfersReset;
- (void)systemObserverRunningIndependentlyWatchApps;
- (void)terminateApplicationDueToSwitchIfEligible;
- (void)transferFile:(id)a3 sandboxToken:(id)a4 clientPairingID:(id)a5 errorHandler:(id)a6;
- (void)transferUserInfo:(id)a3 withURL:(id)a4 clientPairingID:(id)a5 errorHandler:(id)a6;
- (void)updateApplicationContext:(id)a3 clientPairingID:(id)a4 errorHandler:(id)a5;
- (void)updateClientWithSessionState;
- (void)updateMessagesClientIfNeeded;
@end

@implementation WCDClient

- (WCDClient)initWithCommunicationID:(id)a3 connection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = WCDClient;
  v9 = [(WCDClient *)&v17 init];
  if (v9)
  {
    v9->_increasedPriorityTraffic = [v8 wc_connectionHasEntitlement:WCServiceIncreasedPriorityTrafficEntitlement];
    v9->_alwaysReachable = [v8 wc_connectionHasEntitlement:WCServiceAlwaysReachableEntitlement];
    v10 = objc_opt_new();
    outstandingMessagesToSend = v9->_outstandingMessagesToSend;
    v9->_outstandingMessagesToSend = v10;

    objc_storeStrong(&v9->_communicationID, a3);
    v12 = objc_alloc_init(NSMutableDictionary);
    outstandingFileTransfers = v9->_outstandingFileTransfers;
    v9->_outstandingFileTransfers = v12;

    objc_storeStrong(&v9->_bundleID, a3);
    [(WCDClient *)v9 setConnection:v8];
    v14 = +[WCDSystemMonitor sharedSystemMonitor];
    [v14 addObserver:v9];

    [(WCDClient *)v9 setupBundleIDMonitoring];
    [(WCDClient *)v9 loadPersistedClientState];
    v15 = wc_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Created new client object %{public}@", buf, 0xCu);
    }
  }

  return v9;
}

- (void)dealloc
{
  [(WCDClient *)self clearPersistedClientState];
  v3 = +[WCDSystemMonitor sharedSystemMonitor];
  v4 = [(WCDClient *)self bundleID];
  [v3 stopMonitoringBundleID:v4];

  v5 = +[WCDSystemMonitor sharedSystemMonitor];
  [v5 removeObserver:self];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = WCDClient;
  [(WCDClient *)&v7 dealloc];
}

- (WCDApplicationInfo)applicationInfo
{
  v3 = +[WCDSystemMonitor sharedSystemMonitor];
  v4 = [v3 applicationWorkspace];

  v5 = [(WCDClient *)self communicationID];
  v6 = [v4 applicationInfoForBundleIdentifier:v5 type:1 allowPlaceholder:1];

  return v6;
}

- (NSString)state
{
  v3 = objc_opt_class();
  v16 = NSStringFromClass(v3);
  NSAppendPrintF();
  v4 = 0;

  v17 = [(WCDClient *)self communicationID];
  NSAppendPrintF();
  v5 = v4;

  v18 = [(WCDClient *)self bundleID:@"    "];
  NSAppendPrintF();
  v6 = v5;

  v19 = [(WCDClient *)self clientCurrentPairingID:@"    "];
  NSAppendPrintF();
  v7 = v6;

  if ([(WCDClient *)self clientSupportsActiveDeviceSwitch:@"    "])
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  v20 = v8;
  NSAppendPrintF();
  v9 = v7;

  if ([(WCDClient *)self watchAppInstalled:@"    "])
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  v21 = v10;
  NSAppendPrintF();
  v11 = v9;

  if ([(WCDClient *)self complicationEnabled:@"    "])
  {
    v12 = "YES";
  }

  else
  {
    v12 = "NO";
  }

  v22 = v12;
  NSAppendPrintF();
  v13 = v11;

  [(WCDClient *)self outstandingMessagesToSendCount:@"    "];
  NSAppendPrintF();
  v14 = v13;

  return v13;
}

- (void)setupBundleIDMonitoring
{
  v4 = +[WCDSystemMonitor sharedSystemMonitor];
  v3 = [(WCDClient *)self bundleID];
  [v4 startMonitoringBundleID:v3];
}

+ (id)clientsStorageURL
{
  if (qword_100054C80 != -1)
  {
    sub_10002A068();
  }

  v3 = qword_100054C78;

  return v3;
}

- (id)clientStorageFileURL
{
  v2 = [(WCDClient *)self communicationID];
  v3 = [NSString stringWithFormat:@"%@.plist", v2];
  v4 = [objc_opt_class() clientsStorageURL];
  v5 = [NSURL fileURLWithPath:v3 isDirectory:0 relativeToURL:v4];

  return v5;
}

- (void)loadPersistedClientState
{
  v3 = [(WCDClient *)self clientStorageFileURL];
  v17 = 0;
  v4 = [NSData dataWithContentsOfURL:v3 options:0 error:&v17];
  v5 = v17;

  if (v4)
  {
    v16 = 0;
    v6 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:&v16];
    v7 = v16;

    if (v6)
    {
      v8 = [v6 objectForKeyedSubscript:@"pairingID"];
      [(WCDClient *)self setClientCurrentPairingID:v8];

      v9 = [v6 objectForKeyedSubscript:@"supportsActiveDeviceSwitch"];
      -[WCDClient setClientSupportsActiveDeviceSwitch:](self, "setClientSupportsActiveDeviceSwitch:", [v9 BOOLValue]);

      v10 = wc_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(WCDClient *)self loggingIdentifier];
        v12 = [(WCDClient *)self clientCurrentPairingID];
        v13 = [(WCDClient *)self clientSupportsActiveDeviceSwitch];
        v14 = "NO";
        *buf = 138543874;
        v19 = v11;
        if (v13)
        {
          v14 = "YES";
        }

        v20 = 2114;
        v21 = v12;
        v22 = 2080;
        v23 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: clientCurrentPairingID: %{public}@, clientSupportsActiveDeviceSwitch: %s", buf, 0x20u);
      }
    }

    v5 = v7;
  }

  if (v5 && [v5 code] != -1100 && objc_msgSend(v5, "code") != 260 && objc_msgSend(v5, "code") != 4)
  {
    v15 = wc_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10002A118();
    }
  }
}

- (void)persistClientState
{
  v3 = [(WCDClient *)self clientCurrentPairingID];
  if (v3)
  {
    v4 = v3;
    v5 = [(WCDClient *)self clientSupportsActiveDeviceSwitch];

    if ((v5 & 1) == 0)
    {
      v6 = wc_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(WCDClient *)self loggingIdentifier];
        v8 = [(WCDClient *)self clientCurrentPairingID];
        v9 = [(WCDClient *)self clientSupportsActiveDeviceSwitch];
        v10 = "NO";
        *buf = 138543874;
        v24 = v7;
        if (v9)
        {
          v10 = "YES";
        }

        v25 = 2114;
        v26 = v8;
        v27 = 2080;
        v28 = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: clientCurrentPairingID: %{public}@, clientSupportsActiveDeviceSwitch: %s", buf, 0x20u);
      }

      v21[0] = @"pairingID";
      v11 = [(WCDClient *)self clientCurrentPairingID];
      v21[1] = @"supportsActiveDeviceSwitch";
      v22[0] = v11;
      v12 = [NSNumber numberWithBool:[(WCDClient *)self clientSupportsActiveDeviceSwitch]];
      v22[1] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

      v20 = 0;
      v14 = [NSPropertyListSerialization dataWithPropertyList:v13 format:200 options:0 error:&v20];
      v15 = v20;
      if (v14)
      {
        v16 = [(WCDClient *)self clientStorageFileURL];
        v19 = v15;
        [v14 writeToURL:v16 options:1073741825 error:&v19];
        v17 = v19;

        v15 = v17;
      }

      if (v15 && [v15 code] != -1100 && objc_msgSend(v15, "code") != 260 && objc_msgSend(v15, "code") != 4)
      {
        v18 = wc_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10002A118();
        }
      }
    }
  }
}

- (void)clearPersistedClientState
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(WCDClient *)self loggingIdentifier];
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v5 = +[NSFileManager defaultManager];
  v6 = [(WCDClient *)self clientStorageFileURL];
  v9 = 0;
  [v5 removeItemAtURL:v6 error:&v9];
  v7 = v9;

  if (v7 && [v7 code] != -1100 && objc_msgSend(v7, "code") != 260 && objc_msgSend(v7, "code") != 4)
  {
    v8 = wc_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10002A118();
    }
  }
}

- (void)setConnection:(id)a3
{
  v5 = a3;
  p_connection = &self->_connection;
  if (([(NSXPCConnection *)self->_connection isEqual:v5]& 1) == 0)
  {
    [(NSXPCConnection *)self->_connection invalidate];
    self->_allowMessageSending = 1;
    objc_storeStrong(&self->_connection, a3);
    [(NSXPCConnection *)self->_connection setDelegate:self];
    v7 = +[WCXPCManager daemonInterface];
    [(NSXPCConnection *)self->_connection setExportedInterface:v7];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v8 = +[WCXPCManager clientInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v8];

    objc_initWeak(&location, self);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100004F6C;
    v15[3] = &unk_100048B78;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v15];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000505C;
    v13[3] = &unk_100048B78;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)*p_connection setInvalidationHandler:v13];
    [(NSXPCConnection *)*p_connection resume];
    transaction = self->_transaction;
    if (v5)
    {
      if (!transaction)
      {
        transaction = [(WCDClient *)self communicationID];
        v10 = [@"com.apple.wcd.client-" stringByAppendingString:transaction];
        [v10 UTF8String];
        v11 = os_transaction_create();
        v12 = self->_transaction;
        self->_transaction = v11;

LABEL_7:
      }
    }

    else if (transaction)
    {
      self->_transaction = 0;
      goto LABEL_7;
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)handleXPCInvalidation
{
  connection = self->_connection;
  self->_connection = 0;

  transaction = self->_transaction;
  if (transaction)
  {
    self->_transaction = 0;
  }

  v5 = [(WCDClient *)self reachable];
  v6 = wc_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(WCDClient *)self loggingIdentifier];
    v8 = v7;
    v9 = "NO";
    if (v5)
    {
      v9 = "YES";
    }

    v11 = 138543618;
    v12 = v7;
    v13 = 2080;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Reachable changed for connection lost (reachable: %s)", &v11, 0x16u);
  }

  v10 = [(WCDClient *)self delegate];
  [v10 clientXPCConnectionDidDisconnect:self];
}

- (void)setClientCurrentPairingID:(id)a3
{
  p_clientCurrentPairingID = &self->_clientCurrentPairingID;
  v6 = a3;
  if (([*p_clientCurrentPairingID isEqual:?] & 1) == 0)
  {
    objc_storeStrong(&self->_clientCurrentPairingID, a3);
    if (*p_clientCurrentPairingID)
    {
      [(WCDClient *)self persistClientState];
    }

    else
    {
      [(WCDClient *)self clearPersistedClientState];
    }
  }
}

- (BOOL)watchAppInstalled
{
  v2 = [(WCDClient *)self applicationInfo];
  v3 = [v2 isWatchAppInstalled];

  return v3;
}

- (BOOL)complicationEnabled
{
  v3 = +[WCDSystemMonitor sharedSystemMonitor];
  v4 = [v3 iOSApplicationsContainingActiveComplications];

  v5 = [(WCDClient *)self bundleID];
  v6 = [v4 containsObject:v5];

  LOBYTE(self) = [(WCDClient *)self watchAppInstalled];
  return self & v6;
}

- (unint64_t)remainingComplicationUserInfoTransfersWithComplicationEnabled:(BOOL)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [(objc_class *)off_1000546C8() sharedComplication];
  v5 = [(WCDClient *)self bundleID];
  v6 = [v4 remainingPushesOnComplicationForiOSApplicationWithBundleID:v5];

  return v6;
}

- (void)setCounterpartCanEstablishXPCConnection:(BOOL)a3
{
  if (self->_counterpartCanEstablishXPCConnection != a3)
  {
    self->_counterpartCanEstablishXPCConnection = a3;
    [(WCDClient *)self updateClientWithSessionState];
  }

  if (![(WCDClient *)self counterpartCanEstablishXPCConnectionCalled])
  {
    [(WCDClient *)self setCounterpartCanEstablishXPCConnectionCalled:1];

    [(WCDClient *)self updateClientWithSessionState];
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(WCDClient *)self loggingIdentifier];
  v6 = [(WCDClient *)self communicationID];
  v7 = [(WCDClient *)self connection];
  v8 = "YES";
  if ([(WCDClient *)self hasIncreasedPriorityTraffic])
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  if (![(WCDClient *)self isAlwaysReachable])
  {
    v8 = "NO";
  }

  v10 = [(WCDClient *)self clientCurrentPairingID];
  v11 = [(WCDClient *)self isInUse];
  v12 = &stru_1000497E8;
  if (v11)
  {
    v12 = @", isInUse: YES";
  }

  v13 = [NSString stringWithFormat:@"<%@: %p, communicationID: %@, identifier: %@, connection: <%@>(%s, %s), clientCurrentPairingID: %@%@>", v4, self, v5, v6, v7, v9, v8, v10, v12];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WCDClient *)self communicationID];
      v7 = [(WCDClient *)v5 communicationID];
      if ([v6 isEqual:v7])
      {
        v8 = [(WCDClient *)self connection];
        v9 = [(WCDClient *)v5 connection];
        v10 = [v8 isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(WCDClient *)self communicationID];
  v4 = [v3 hash];
  v5 = [(WCDClient *)self connection];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v5 = a4;
  [v5 retainArguments];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005950;
  block[3] = &unk_100048A48;
  v8 = v5;
  v6 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)systemObserverInitialSetUpComplete
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(WCDClient *)self loggingIdentifier];
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
  }

  v5 = [(WCDClient *)self clientCurrentPairingID];

  if (!v5)
  {
    v6 = +[WCDSystemMonitor sharedSystemMonitor];
    v7 = [v6 pairingID];
    [(WCDClient *)self setClientCurrentPairingID:v7];
  }

  [(WCDClient *)self updateClientWithSessionState];
}

- (void)systemObserverActiveDeviceSwitchStarted
{
  self->_counterpartCanEstablishXPCConnection = 0;
  self->_counterpartCanEstablishXPCConnectionCalled = 0;
  [(WCDClient *)self handleActiveDeviceSwitchStarted];
}

- (void)systemObserverActiveDeviceConnectedChanged
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(WCDClient *)self loggingIdentifier];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
  }

  [(WCDClient *)self updateClientWithSessionState];
}

- (void)systemObserverRemainingComplicationUserInfoTransfersReset
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(WCDClient *)self loggingIdentifier];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
  }

  [(WCDClient *)self updateClientWithSessionState];
}

- (void)systemObserverRunningIndependentlyWatchApps
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(WCDClient *)self loggingIdentifier];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
  }

  [(WCDClient *)self updateClientWithSessionState];
}

- (void)systemObserverAppDidSuspendForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(WCDClient *)self bundleID];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = wc_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(WCDClient *)self loggingIdentifier];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: suspended; invalidating xpc connection", &v10, 0xCu);
    }

    v9 = [(WCDClient *)self connection];
    [v9 invalidate];
  }
}

- (void)systemObserverProcessStateChangedForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(WCDClient *)self communicationID];
  v6 = [v4 isEqual:v5];

  if (v6)
  {

    [(WCDClient *)self terminateApplicationDueToSwitchIfEligible];
  }
}

- (void)terminateApplicationDueToSwitchIfEligible
{
  v3 = [(WCDClient *)self clientCurrentPairingID];
  if (v3)
  {
    v4 = v3;
    v5 = [(WCDClient *)self clientSupportsActiveDeviceSwitch];

    if ((v5 & 1) == 0)
    {
      v6 = +[WCDSystemMonitor sharedSystemMonitor];
      v7 = [(WCDClient *)self communicationID];
      v8 = [v6 applicationStateForBundleID:v7];
      v9 = [(WCDClient *)self clientCurrentPairingID];
      v10 = [v6 pairingID];
      v11 = [v9 isEqual:v10];

      if ((v8 == 4 || v8 == 2) && (v11 & 1) == 0)
      {
        v12 = wc_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(WCDClient *)self loggingIdentifier];
          v15 = 138543362;
          v16 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: being terminated as active device switch has occurred", &v15, 0xCu);
        }

        v14 = +[FBSSystemService sharedService];
        [v14 terminateApplication:v7 forReason:3 andReport:0 withDescription:0];
      }
    }
  }
}

- (void)handleActiveDeviceSwitchStarted
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(WCDClient *)self loggingIdentifier];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v6, 0xCu);
  }

  self->_previousReachable = 0;
  self->_pendingContentDequeued = 0;
  v5 = [(WCDClient *)self remoteObjectProxy];
  [v5 handleActiveDeviceSwitchStarted];

  [(WCDClient *)self terminateApplicationDueToSwitchIfEligible];
}

- (BOOL)reachable
{
  v3 = +[WCDSystemMonitor sharedSystemMonitor];
  if (-[WCDClient counterpartCanEstablishXPCConnection](self, "counterpartCanEstablishXPCConnection") && [v3 isPaired] && objc_msgSend(v3, "activeDeviceConnected"))
  {
    v4 = [(WCDClient *)self watchAppInstalled];
  }

  else
  {
    v4 = 0;
  }

  v5 = ([(WCDClient *)self isAlwaysReachable]| v4) & 1;
  if ([(WCDClient *)self previousReachable]!= v5)
  {
    [(WCDClient *)self setPreviousReachable:v5];
    v6 = [(WCDClient *)self delegate];
    [v6 clientReachabilityDidChange:self];
  }

  return v5;
}

- (BOOL)foregroundOrPrivileged
{
  if (![(WCDClient *)self background])
  {
    return 1;
  }

  return [(WCDClient *)self privileged];
}

- (id)newSessionState
{
  v3 = +[WCDSystemMonitor sharedSystemMonitor];
  v4 = [(WCDClient *)self complicationEnabled];
  v5 = [(WCDClient *)self remainingComplicationUserInfoTransfersWithComplicationEnabled:v4];
  v6 = [(WCDClient *)self applicationInfo];
  v7 = [v6 uniqueInstallID];

  v8 = [WCSessionState alloc];
  v9 = [(WCDClient *)self reachable];
  v10 = [v3 isPaired];
  v11 = [(WCDClient *)self watchAppInstalled];
  v12 = [v3 pairingID];
  v13 = [v3 pairedDevicesPairingIDs];
  v14 = [v8 initWithReachable:v9 paired:v10 appInstalled:v11 complicationEnabled:v4 remainingComplicationUserInfoTransfers:v5 activePairingID:v12 pairedDevicesPairingIDs:v13 appInstallationID:v7];

  return v14;
}

- (void)updateClientWithSessionState
{
  v5 = +[WCDSystemMonitor sharedSystemMonitor];
  if (-[WCDClient counterpartCanEstablishXPCConnectionCalled](self, "counterpartCanEstablishXPCConnectionCalled") && -[WCDClient privilegedCalled](self, "privilegedCalled") && [v5 initialSetUpComplete])
  {
    v3 = [(WCDClient *)self remoteObjectProxy];
    v4 = [(WCDClient *)self newSessionState];
    [v3 handleSessionStateChanged:v4];

    [(WCDClient *)self dequeuePendingContent];
  }
}

- (void)dequeuePendingContent
{
  if (![(WCDClient *)self pendingContentDequeued])
  {
    [(WCDClient *)self setPendingContentDequeued:1];
    v3 = +[WCDSystemMonitor sharedSystemMonitor];
    v4 = [(WCDClient *)self clientCurrentPairingID];
    v5 = [v3 pairingID];
    v6 = [v4 isEqual:v5];

    if (v6)
    {
      v7 = wc_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(WCDClient *)self loggingIdentifier];
        v21 = 138543362;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ causing client to check to see if there is any pending content awaiting", &v21, 0xCu);
      }

      v9 = +[WatchConnectivityDaemon sharedDaemon];
      [v9 dequeueContentForClient:self];

      v10 = [(WCDClient *)self clientCurrentPairingID];
      [(WCDClient *)self handleApplicationContextWithPairingID:v10];

      v11 = [(WCDClient *)self clientCurrentPairingID];
      [(WCDClient *)self handleUserInfoResultWithPairingID:v11];

      v12 = [(WCDClient *)self clientCurrentPairingID];
      [(WCDClient *)self handleIncomingUserInfoWithPairingID:v12];

      v13 = [(WCDClient *)self clientCurrentPairingID];
      [(WCDClient *)self handleFileResultWithPairingID:v13];

      v14 = [(WCDClient *)self clientCurrentPairingID];
      [(WCDClient *)self handleIncomingFileWithPairingID:v14];
    }

    else
    {
      v15 = [(WCDClient *)self clientCurrentPairingID];

      v14 = wc_log();
      v16 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v16)
        {
          v17 = [(WCDClient *)self loggingIdentifier];
          v18 = [(WCDClient *)self clientCurrentPairingID];
          v19 = [v3 pairingID];
          v21 = 138543874;
          v22 = v17;
          v23 = 2114;
          v24 = v18;
          v25 = 2114;
          v26 = v19;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ not dequeueing content for client as pairingIDs don't match (%{public}@ vs %{public}@)", &v21, 0x20u);
        }
      }

      else if (v16)
      {
        v20 = [(WCDClient *)self loggingIdentifier];
        v21 = 138543362;
        v22 = v20;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ not dequeueing content for client as it has no pairingID", &v21, 0xCu);
      }
    }
  }
}

- (void)sendMessage:(id)a3 clientPairingID:(id)a4 acceptanceHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(WCDClient *)self outstandingMessagesToSendCount]<= 9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v8;
      v12 = objc_opt_new();
      [v12 setVersion:1];
      v13 = [v11 data];
      [v12 setClientData:v13];

      [v12 setExpectsResponse:{objc_msgSend(v11, "expectsResponse")}];
      [v12 setDictionaryMessage:{objc_msgSend(v11, "isDictionaryMessage")}];
      [v12 setIsInUse:{-[WCDClient isInUse](self, "isInUse")}];
      v14 = [v11 identifier];
      [(WCDClient *)self addOutstandingMessage:v14];

      +[WatchConnectivityDaemon sharedDaemon];
      v15 = v40 = v10;
      v16 = [v11 identifier];
      v17 = [(WCDClient *)self communicationID];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100006FD0;
      v44[3] = &unk_100048BC8;
      v44[4] = self;
      v18 = &v45;
      v19 = v11;
      v20 = &v46;
      v21 = v15;
      v10 = v40;
      v45 = v19;
      v46 = v19;
      v22 = v44;
      v23 = v21;
      v24 = v12;
      v25 = v16;
      v26 = 0;
      v27 = v17;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_12:
        [(WCDClient *)self setAllowMessageSending:[(WCDClient *)self outstandingMessagesToSendCount]< 10];
        v36 = wc_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [(WCDClient *)self loggingIdentifier];
          v38 = [(WCDClient *)self allowMessageSending];
          v39 = "NO";
          if (v38)
          {
            v39 = "YES";
          }

          *buf = 138543618;
          v48 = v37;
          v49 = 2080;
          v50 = v39;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ current YES, next %s", buf, 0x16u);
        }

        v10[2](v10, 1, [(WCDClient *)self allowMessageSending]);
        goto LABEL_17;
      }

      v30 = v8;
      v12 = objc_opt_new();
      [v12 setVersion:1];
      v31 = [v30 data];
      [v12 setClientData:v31];

      v32 = [v30 error];

      if (v32)
      {
        v33 = [v30 error];
        [v12 setErrorCode:{objc_msgSend(v33, "code")}];
      }

      [v12 setDictionaryMessage:{objc_msgSend(v30, "isDictionaryMessage")}];
      v34 = [v30 identifier];
      [(WCDClient *)self addOutstandingMessage:v34];

      v21 = +[WatchConnectivityDaemon sharedDaemon];
      v16 = [v30 identifier];
      v17 = [(WCDClient *)self communicationID];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100007068;
      v41[3] = &unk_100048BC8;
      v41[4] = self;
      v18 = &v42;
      v35 = v30;
      v20 = &v43;
      v42 = v35;
      v43 = v35;
      v22 = v41;
      v23 = v21;
      v24 = v12;
      v25 = v16;
      v26 = 1;
      v27 = v17;
    }

    [v23 sendMessage:v24 withIdentifier:v25 isResponse:v26 clientID:v27 clientPairingID:v9 errorHandler:v22];

    goto LABEL_12;
  }

  [(WCDClient *)self setAllowMessageSending:0];
  v28 = wc_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [(WCDClient *)self loggingIdentifier];
    *buf = 138543362;
    v48 = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ outstanding messages at maximum", buf, 0xCu);
  }

  v10[2](v10, 0, 0);
LABEL_17:
}

- (void)addOutstandingMessage:(id)a3
{
  v4 = a3;
  v5 = [(WCDClient *)self outstandingMessagesToSend];
  [v5 addObject:v4];
}

- (void)removeOutstandingMessage:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(WCDClient *)self outstandingMessagesToSend];
    [v5 removeObject:v4];

    [(WCDClient *)self updateMessagesClientIfNeeded];
  }
}

- (int64_t)outstandingMessagesToSendCount
{
  v2 = [(WCDClient *)self outstandingMessagesToSend];
  v3 = [v2 count];

  return v3;
}

- (void)updateMessagesClientIfNeeded
{
  if (![(WCDClient *)self allowMessageSending]&& [(WCDClient *)self outstandingMessagesToSendCount]<= 6)
  {
    [(WCDClient *)self setAllowMessageSending:1];
    v3 = [(WCDClient *)self remoteObjectProxy];
    [v3 handleMessageSendingAllowed];
  }
}

- (void)handleRequest:(id)a3
{
  v4 = a3;
  v5 = [(WCDClient *)self remoteObjectProxy];
  [v5 handleRequest:v4];
}

- (void)handleResponse:(id)a3
{
  v4 = a3;
  v5 = [(WCDClient *)self remoteObjectProxy];
  [v5 handleResponse:v4];
}

- (void)handleSentMessageWithIdentifier:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WCDClient *)self remoteObjectProxy];
  [v8 handleSentMessageWithIdentifier:v7 error:v6];
}

- (void)cancelAllOutstandingMessages
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(WCDClient *)self outstandingMessagesToSend];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = wc_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [(WCDClient *)self loggingIdentifier];
          *buf = 138543618;
          v17 = v10;
          v18 = 2114;
          v19 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
        }

        [(WCDClient *)self cancelSendWithIdentifier:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v5);
  }

  v11 = [(WCDClient *)self outstandingMessagesToSend];
  [v11 removeAllObjects];
}

- (void)handleApplicationContextWithPairingID:(id)a3
{
  v4 = a3;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(WCDClient *)self loggingIdentifier];
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", &v8, 0x16u);
  }

  v7 = [(WCDClient *)self remoteObjectProxy];
  [v7 handleApplicationContextWithPairingID:v4];
}

- (void)handleIncomingFileWithPairingID:(id)a3
{
  v4 = a3;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(WCDClient *)self loggingIdentifier];
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", &v8, 0x16u);
  }

  v7 = [(WCDClient *)self remoteObjectProxy];
  [v7 handleIncomingFileWithPairingID:v4];
}

- (void)handleFileResultWithPairingID:(id)a3
{
  v4 = a3;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(WCDClient *)self loggingIdentifier];
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", &v8, 0x16u);
  }

  v7 = [(WCDClient *)self remoteObjectProxy];
  [v7 handleFileResultWithPairingID:v4];
}

- (void)handleIncomingUserInfoWithPairingID:(id)a3
{
  v4 = a3;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(WCDClient *)self loggingIdentifier];
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", &v8, 0x16u);
  }

  v7 = [(WCDClient *)self remoteObjectProxy];
  [v7 handleIncomingUserInfoWithPairingID:v4];
}

- (void)handleUserInfoResultWithPairingID:(id)a3
{
  v4 = a3;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(WCDClient *)self loggingIdentifier];
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", &v8, 0x16u);
  }

  v7 = [(WCDClient *)self remoteObjectProxy];
  [v7 handleUserInfoResultWithPairingID:v4];
}

- (void)updateApplicationContext:(id)a3 clientPairingID:(id)a4 errorHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = objc_opt_new();
  [v13 setVersion:1];
  [v13 setClientData:v10];

  v11 = +[WatchConnectivityDaemon sharedDaemon];
  v12 = [(WCDClient *)self communicationID];
  [v11 updateApplicationContext:v13 clientID:v12 clientPairingID:v9 errorHandler:v8];
}

- (void)transferFile:(id)a3 sandboxToken:(id)a4 clientPairingID:(id)a5 errorHandler:(id)a6
{
  v9 = a3;
  v10 = a6;
  v54 = 0u;
  v55 = 0u;
  v11 = a4;
  v12 = [(WCDClient *)self connection];
  v13 = v12;
  if (v12)
  {
    [v12 auditToken];
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v14 = [v9 file];
  v15 = [v14 fileURL];
  *buf = v54;
  *&buf[16] = v55;
  v16 = WCCheckFileAndConsumeSandboxTokenForAuditToken();

  if (v16 <= 0)
  {
    v21 = [NSError wcErrorWithCode:7013];
    v10[2](v10, v21);
  }

  else
  {
    v17 = NSTemporaryDirectory();
    v18 = [NSURL fileURLWithPath:v17 isDirectory:1];

    v19 = +[NSUUID UUID];
    v20 = [v19 UUIDString];
    v21 = [v18 URLByAppendingPathComponent:v20 isDirectory:1];

    v22 = +[NSFileManager defaultManager];
    v53 = 0;
    LOBYTE(v18) = [v22 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:&v53];
    v23 = v53;

    if (v18)
    {
      v48 = v23;
      v24 = [v9 file];
      v25 = [v24 fileURL];
      v26 = [v25 standardizedURL];
      v27 = [v26 lastPathComponent];

      v47 = v27;
      v46 = [v21 URLByAppendingPathComponent:v27];
      v28 = objc_opt_new();
      [v28 setObject:&off_10004AAF8 forKeyedSubscript:@"t"];
      v29 = [v9 file];
      v30 = [v29 userInfoData];

      if (v30)
      {
        v31 = [v9 file];
        v32 = [v31 userInfoData];
        [v28 setObject:v32 forKeyedSubscript:@"u"];
      }

      v33 = wc_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [(WCDClient *)self loggingIdentifier];
        v35 = [v9 file];
        v36 = [v35 fileURL];
        v37 = [v36 path];
        *buf = 138543874;
        *&buf[4] = v34;
        *&buf[12] = 2114;
        *&buf[14] = v37;
        *&buf[22] = 2114;
        *&buf[24] = v28;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ Client sending file %{public}@ with metadata %{public}@, ", buf, 0x20u);
      }

      v38 = +[WatchConnectivityDaemon sharedDaemon];
      v39 = [v9 file];
      v40 = [v39 fileDescriptor];
      v41 = [v9 transferIdentifier];
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_10000804C;
      v49[3] = &unk_100048BF0;
      v49[4] = self;
      v50 = v9;
      v51 = v46;
      v52 = v10;
      v42 = v46;
      [v38 transferFile:v40 withMetadata:v28 identifier:v41 forClient:self destFilePath:v42 errorHandler:v49];

      v43 = v47;
      v23 = v48;
    }

    else
    {
      v44 = wc_log();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_10002A1C4(v23, v44);
      }

      v56 = NSUnderlyingErrorKey;
      v57 = v23;
      v45 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v43 = [NSError wcErrorWithCode:7001 userInfo:v45];

      v10[2](v10, v43);
    }
  }
}

- (void)copyProgressUpdatesForFileTransfer:(id)a3 fromClonedFileURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = wc_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 file];
    v10 = [v9 fileURL];
    v11 = [v6 transferIdentifier];
    *buf = 138412802;
    v23 = v10;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating progress copy for originalFile: %@, clonedFile: %@, transferID: %@", buf, 0x20u);
  }

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000082D8;
  v17 = &unk_100048C40;
  v12 = v6;
  v18 = v12;
  v19 = self;
  objc_copyWeak(&v20, &location);
  v13 = [NSProgress addSubscriberForFileURL:v7 withPublishingHandler:&v14];
  [v12 setProgressToken:{v13, v14, v15, v16, v17}];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)registerForUpdatesForProgress:(id)a3
{
  v4 = a3;
  [v4 addObserver:self forKeyPath:@"userInfo.NSProgressByteCompletedCountKey" options:1 context:0];
  [v4 addObserver:self forKeyPath:@"totalUnitCount" options:1 context:0];
  [v4 addObserver:self forKeyPath:@"completedUnitCount" options:1 context:0];
  [v4 addObserver:self forKeyPath:@"finished" options:1 context:0];
  [v4 addObserver:self forKeyPath:@"cancelled" options:1 context:0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [v11 userInfo];
  v13 = [v12 objectForKeyedSubscript:IDSSendResourceProgressIdentifier];

  v14 = [(NSMutableDictionary *)self->_outstandingFileTransfers objectForKeyedSubscript:v13];
  if ([v8 isEqual:@"completedUnitCount"])
  {
    [v14 setCompletedUnitCount:{objc_msgSend(v11, "completedUnitCount")}];
    goto LABEL_11;
  }

  if ([v8 isEqual:@"totalUnitCount"])
  {
    [v14 setTotalUnitCount:{objc_msgSend(v11, "totalUnitCount")}];
    goto LABEL_11;
  }

  if ([v8 isEqual:@"userInfo.NSProgressByteCompletedCountKey"])
  {
    v15 = [v11 byteCompletedCount];
    [v14 setByteCompletedCount:v15];
LABEL_10:

    goto LABEL_11;
  }

  if (![v8 isEqual:@"finished"])
  {
    if (![v8 isEqual:@"cancelled"])
    {
      goto LABEL_11;
    }

    v15 = wc_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136446466;
      v18 = "[WCDClient observeValueForKeyPath:ofObject:change:context:]";
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s Progress cancelled for identifier %@", &v17, 0x16u);
    }

    goto LABEL_10;
  }

  if (v11 && ([v11 isFinished] & 1) == 0 && (objc_msgSend(v11, "isCancelled") & 1) == 0)
  {
    v16 = wc_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136446466;
      v18 = "[WCDClient observeValueForKeyPath:ofObject:change:context:]";
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s Forcing progress to finished for %{public}@", &v17, 0x16u);
    }

    [v14 setCompletedUnitCount:{objc_msgSend(v14, "totalUnitCount")}];
    [v14 unpublish];
    [(NSMutableDictionary *)self->_outstandingFileTransfers setObject:0 forKeyedSubscript:v13];
  }

LABEL_11:
}

- (void)removeProgressForFileTransfer:(id)a3
{
  v3 = a3;
  v4 = [v3 progress];
  v5 = [v4 isFinished];

  if (v5)
  {
    v6 = [v3 progressToken];

    v7 = wc_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v10 = 136446466;
        v11 = "[WCDClient removeProgressForFileTransfer:]";
        v12 = 2114;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s Removing progress for transfer %{public}@", &v10, 0x16u);
      }

      v9 = [v3 progressToken];
      [NSProgress _removeSubscriber:v9];

      [v3 setProgressToken:0];
    }

    else
    {
      if (v8)
      {
        v10 = 136446466;
        v11 = "[WCDClient removeProgressForFileTransfer:]";
        v12 = 2114;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s Missing item to remove (identifier: %{public}@)", &v10, 0x16u);
      }
    }
  }
}

- (void)transferUserInfo:(id)a3 withURL:(id)a4 clientPairingID:(id)a5 errorHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  if ([v10 isCurrentComplicationInfo])
  {
    v14 = objc_opt_new();
    [v14 setVersion:1];
    v15 = [v10 userInfoData];
    [v14 setClientData:v15];

    v16 = [v10 transferIdentifier];
    [v14 setTransferIdentifier:v16];

    v17 = +[WatchConnectivityDaemon sharedDaemon];
    v18 = [(WCDClient *)self communicationID];
    v19 = [v10 complicationTransferIdentifier];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100008EBC;
    v25[3] = &unk_100048C68;
    v25[4] = self;
    v20 = [v17 sendComplicationUserInfo:v14 clientID:v18 clientPairingID:v11 identifier:v19 errorHandler:v25];

    if (v20)
    {
      [(WCDClient *)self updateClientWithSessionState];
    }
  }

  v26 = @"t";
  v27 = &off_10004AB10;
  v21 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v22 = +[WatchConnectivityDaemon sharedDaemon];
  v23 = [v10 transferIdentifier];
  v24 = [(WCDClient *)self communicationID];
  [v22 transferUserInfo:v13 withMetadata:v21 identifier:v23 clientID:v24 clientPairingID:v11 errorHandler:v12];
}

- (void)cancelSendWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[WatchConnectivityDaemon sharedDaemon];
  [v4 cancelSendWithIdentifier:v3];
}

- (void)acknowledgeFileIndexWithIdentifier:(id)a3 clientPairingID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = wc_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(WCDClient *)self loggingIdentifier];
    v13 = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ identifier: %{public}@, clientPairingID: %{public}@", &v13, 0x20u);
  }

  v10 = +[WCDIndexManager sharedManager];
  v11 = [(WCDClient *)self applicationInfo];
  v12 = [v10 fileIndexForApplication:v11 pairingID:v7];

  [v12 removeContentIdentifier:v6];
}

- (void)acknowledgeFileResultIndexWithIdentifier:(id)a3 clientPairingID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = wc_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(WCDClient *)self loggingIdentifier];
    v13 = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ identifier: %{public}@, clientPairingID: %{public}@", &v13, 0x20u);
  }

  v10 = +[WCDIndexManager sharedManager];
  v11 = [(WCDClient *)self applicationInfo];
  v12 = [v10 fileResultsIndexForApplication:v11 pairingID:v7];

  [v12 removeContentIdentifier:v6];
}

- (void)acknowledgeUserInfoIndexWithIdentifier:(id)a3 clientPairingID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = wc_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(WCDClient *)self loggingIdentifier];
    v13 = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ identifier: %{public}@, clientPairingID: %{public}@", &v13, 0x20u);
  }

  v10 = +[WCDIndexManager sharedManager];
  v11 = [(WCDClient *)self applicationInfo];
  v12 = [v10 userInfoIndexForApplication:v11 pairingID:v7];

  [v12 removeContentIdentifier:v6];
}

- (void)acknowledgeUserInfoResultIndexWithIdentifier:(id)a3 clientPairingID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = wc_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(WCDClient *)self loggingIdentifier];
    v13 = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ identifier: %{public}@, clientPairingID: %{public}@", &v13, 0x20u);
  }

  v10 = +[WCDIndexManager sharedManager];
  v11 = [(WCDClient *)self applicationInfo];
  v12 = [v10 userInfoResultsIndexForApplication:v11 pairingID:v7];

  [v12 removeContentIdentifier:v6];
}

- (id)remoteObjectProxy
{
  connection = self->_connection;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000953C;
  v5[3] = &unk_100048C68;
  v5[4] = self;
  v3 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v5];

  return v3;
}

- (WCDClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end