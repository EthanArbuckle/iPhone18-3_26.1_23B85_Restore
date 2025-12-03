@interface WCDClient
+ (id)clientsStorageURL;
- (BOOL)complicationEnabled;
- (BOOL)foregroundOrPrivileged;
- (BOOL)isEqual:(id)equal;
- (BOOL)reachable;
- (BOOL)watchAppInstalled;
- (NSString)description;
- (NSString)state;
- (WCDApplicationInfo)applicationInfo;
- (WCDClient)initWithCommunicationID:(id)d connection:(id)connection;
- (WCDClientDelegate)delegate;
- (id)clientStorageFileURL;
- (id)newSessionState;
- (id)remoteObjectProxy;
- (int64_t)outstandingMessagesToSendCount;
- (unint64_t)hash;
- (unint64_t)remainingComplicationUserInfoTransfersWithComplicationEnabled:(BOOL)enabled;
- (void)acknowledgeFileIndexWithIdentifier:(id)identifier clientPairingID:(id)d;
- (void)acknowledgeFileResultIndexWithIdentifier:(id)identifier clientPairingID:(id)d;
- (void)acknowledgeUserInfoIndexWithIdentifier:(id)identifier clientPairingID:(id)d;
- (void)acknowledgeUserInfoResultIndexWithIdentifier:(id)identifier clientPairingID:(id)d;
- (void)addOutstandingMessage:(id)message;
- (void)cancelAllOutstandingMessages;
- (void)cancelSendWithIdentifier:(id)identifier;
- (void)clearPersistedClientState;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)copyProgressUpdatesForFileTransfer:(id)transfer fromClonedFileURL:(id)l;
- (void)dealloc;
- (void)dequeuePendingContent;
- (void)handleActiveDeviceSwitchStarted;
- (void)handleApplicationContextWithPairingID:(id)d;
- (void)handleFileResultWithPairingID:(id)d;
- (void)handleIncomingFileWithPairingID:(id)d;
- (void)handleIncomingUserInfoWithPairingID:(id)d;
- (void)handleRequest:(id)request;
- (void)handleResponse:(id)response;
- (void)handleSentMessageWithIdentifier:(id)identifier error:(id)error;
- (void)handleUserInfoResultWithPairingID:(id)d;
- (void)handleXPCInvalidation;
- (void)loadPersistedClientState;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)persistClientState;
- (void)registerForUpdatesForProgress:(id)progress;
- (void)removeOutstandingMessage:(id)message;
- (void)removeProgressForFileTransfer:(id)transfer;
- (void)sendMessage:(id)message clientPairingID:(id)d acceptanceHandler:(id)handler;
- (void)setClientCurrentPairingID:(id)d;
- (void)setConnection:(id)connection;
- (void)setCounterpartCanEstablishXPCConnection:(BOOL)connection;
- (void)setupBundleIDMonitoring;
- (void)systemObserverActiveDeviceConnectedChanged;
- (void)systemObserverActiveDeviceSwitchStarted;
- (void)systemObserverAppDidSuspendForBundleID:(id)d;
- (void)systemObserverInitialSetUpComplete;
- (void)systemObserverProcessStateChangedForBundleID:(id)d;
- (void)systemObserverRemainingComplicationUserInfoTransfersReset;
- (void)systemObserverRunningIndependentlyWatchApps;
- (void)terminateApplicationDueToSwitchIfEligible;
- (void)transferFile:(id)file sandboxToken:(id)token clientPairingID:(id)d errorHandler:(id)handler;
- (void)transferUserInfo:(id)info withURL:(id)l clientPairingID:(id)d errorHandler:(id)handler;
- (void)updateApplicationContext:(id)context clientPairingID:(id)d errorHandler:(id)handler;
- (void)updateClientWithSessionState;
- (void)updateMessagesClientIfNeeded;
@end

@implementation WCDClient

- (WCDClient)initWithCommunicationID:(id)d connection:(id)connection
{
  dCopy = d;
  connectionCopy = connection;
  v17.receiver = self;
  v17.super_class = WCDClient;
  v9 = [(WCDClient *)&v17 init];
  if (v9)
  {
    v9->_increasedPriorityTraffic = [connectionCopy wc_connectionHasEntitlement:WCServiceIncreasedPriorityTrafficEntitlement];
    v9->_alwaysReachable = [connectionCopy wc_connectionHasEntitlement:WCServiceAlwaysReachableEntitlement];
    v10 = objc_opt_new();
    outstandingMessagesToSend = v9->_outstandingMessagesToSend;
    v9->_outstandingMessagesToSend = v10;

    objc_storeStrong(&v9->_communicationID, d);
    v12 = objc_alloc_init(NSMutableDictionary);
    outstandingFileTransfers = v9->_outstandingFileTransfers;
    v9->_outstandingFileTransfers = v12;

    objc_storeStrong(&v9->_bundleID, d);
    [(WCDClient *)v9 setConnection:connectionCopy];
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
  bundleID = [(WCDClient *)self bundleID];
  [v3 stopMonitoringBundleID:bundleID];

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
  applicationWorkspace = [v3 applicationWorkspace];

  communicationID = [(WCDClient *)self communicationID];
  v6 = [applicationWorkspace applicationInfoForBundleIdentifier:communicationID type:1 allowPlaceholder:1];

  return v6;
}

- (NSString)state
{
  v3 = objc_opt_class();
  v16 = NSStringFromClass(v3);
  NSAppendPrintF();
  v4 = 0;

  communicationID = [(WCDClient *)self communicationID];
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
  bundleID = [(WCDClient *)self bundleID];
  [v4 startMonitoringBundleID:bundleID];
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
  communicationID = [(WCDClient *)self communicationID];
  v3 = [NSString stringWithFormat:@"%@.plist", communicationID];
  clientsStorageURL = [objc_opt_class() clientsStorageURL];
  v5 = [NSURL fileURLWithPath:v3 isDirectory:0 relativeToURL:clientsStorageURL];

  return v5;
}

- (void)loadPersistedClientState
{
  clientStorageFileURL = [(WCDClient *)self clientStorageFileURL];
  v17 = 0;
  v4 = [NSData dataWithContentsOfURL:clientStorageFileURL options:0 error:&v17];
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
        loggingIdentifier = [(WCDClient *)self loggingIdentifier];
        clientCurrentPairingID = [(WCDClient *)self clientCurrentPairingID];
        clientSupportsActiveDeviceSwitch = [(WCDClient *)self clientSupportsActiveDeviceSwitch];
        v14 = "NO";
        *buf = 138543874;
        v19 = loggingIdentifier;
        if (clientSupportsActiveDeviceSwitch)
        {
          v14 = "YES";
        }

        v20 = 2114;
        v21 = clientCurrentPairingID;
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
  clientCurrentPairingID = [(WCDClient *)self clientCurrentPairingID];
  if (clientCurrentPairingID)
  {
    v4 = clientCurrentPairingID;
    clientSupportsActiveDeviceSwitch = [(WCDClient *)self clientSupportsActiveDeviceSwitch];

    if ((clientSupportsActiveDeviceSwitch & 1) == 0)
    {
      v6 = wc_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        loggingIdentifier = [(WCDClient *)self loggingIdentifier];
        clientCurrentPairingID2 = [(WCDClient *)self clientCurrentPairingID];
        clientSupportsActiveDeviceSwitch2 = [(WCDClient *)self clientSupportsActiveDeviceSwitch];
        v10 = "NO";
        *buf = 138543874;
        v24 = loggingIdentifier;
        if (clientSupportsActiveDeviceSwitch2)
        {
          v10 = "YES";
        }

        v25 = 2114;
        v26 = clientCurrentPairingID2;
        v27 = 2080;
        v28 = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: clientCurrentPairingID: %{public}@, clientSupportsActiveDeviceSwitch: %s", buf, 0x20u);
      }

      v21[0] = @"pairingID";
      clientCurrentPairingID3 = [(WCDClient *)self clientCurrentPairingID];
      v21[1] = @"supportsActiveDeviceSwitch";
      v22[0] = clientCurrentPairingID3;
      v12 = [NSNumber numberWithBool:[(WCDClient *)self clientSupportsActiveDeviceSwitch]];
      v22[1] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

      v20 = 0;
      v14 = [NSPropertyListSerialization dataWithPropertyList:v13 format:200 options:0 error:&v20];
      v15 = v20;
      if (v14)
      {
        clientStorageFileURL = [(WCDClient *)self clientStorageFileURL];
        v19 = v15;
        [v14 writeToURL:clientStorageFileURL options:1073741825 error:&v19];
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
    loggingIdentifier = [(WCDClient *)self loggingIdentifier];
    *buf = 138543362;
    v11 = loggingIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v5 = +[NSFileManager defaultManager];
  clientStorageFileURL = [(WCDClient *)self clientStorageFileURL];
  v9 = 0;
  [v5 removeItemAtURL:clientStorageFileURL error:&v9];
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

- (void)setConnection:(id)connection
{
  connectionCopy = connection;
  p_connection = &self->_connection;
  if (([(NSXPCConnection *)self->_connection isEqual:connectionCopy]& 1) == 0)
  {
    [(NSXPCConnection *)self->_connection invalidate];
    self->_allowMessageSending = 1;
    objc_storeStrong(&self->_connection, connection);
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
    if (connectionCopy)
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

  reachable = [(WCDClient *)self reachable];
  v6 = wc_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier = [(WCDClient *)self loggingIdentifier];
    v8 = loggingIdentifier;
    v9 = "NO";
    if (reachable)
    {
      v9 = "YES";
    }

    v11 = 138543618;
    v12 = loggingIdentifier;
    v13 = 2080;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Reachable changed for connection lost (reachable: %s)", &v11, 0x16u);
  }

  delegate = [(WCDClient *)self delegate];
  [delegate clientXPCConnectionDidDisconnect:self];
}

- (void)setClientCurrentPairingID:(id)d
{
  p_clientCurrentPairingID = &self->_clientCurrentPairingID;
  dCopy = d;
  if (([*p_clientCurrentPairingID isEqual:?] & 1) == 0)
  {
    objc_storeStrong(&self->_clientCurrentPairingID, d);
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
  applicationInfo = [(WCDClient *)self applicationInfo];
  isWatchAppInstalled = [applicationInfo isWatchAppInstalled];

  return isWatchAppInstalled;
}

- (BOOL)complicationEnabled
{
  v3 = +[WCDSystemMonitor sharedSystemMonitor];
  iOSApplicationsContainingActiveComplications = [v3 iOSApplicationsContainingActiveComplications];

  bundleID = [(WCDClient *)self bundleID];
  v6 = [iOSApplicationsContainingActiveComplications containsObject:bundleID];

  LOBYTE(self) = [(WCDClient *)self watchAppInstalled];
  return self & v6;
}

- (unint64_t)remainingComplicationUserInfoTransfersWithComplicationEnabled:(BOOL)enabled
{
  if (!enabled)
  {
    return 0;
  }

  sharedComplication = [(objc_class *)off_1000546C8() sharedComplication];
  bundleID = [(WCDClient *)self bundleID];
  v6 = [sharedComplication remainingPushesOnComplicationForiOSApplicationWithBundleID:bundleID];

  return v6;
}

- (void)setCounterpartCanEstablishXPCConnection:(BOOL)connection
{
  if (self->_counterpartCanEstablishXPCConnection != connection)
  {
    self->_counterpartCanEstablishXPCConnection = connection;
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
  loggingIdentifier = [(WCDClient *)self loggingIdentifier];
  communicationID = [(WCDClient *)self communicationID];
  connection = [(WCDClient *)self connection];
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

  clientCurrentPairingID = [(WCDClient *)self clientCurrentPairingID];
  isInUse = [(WCDClient *)self isInUse];
  v12 = &stru_1000497E8;
  if (isInUse)
  {
    v12 = @", isInUse: YES";
  }

  v13 = [NSString stringWithFormat:@"<%@: %p, communicationID: %@, identifier: %@, connection: <%@>(%s, %s), clientCurrentPairingID: %@%@>", v4, self, loggingIdentifier, communicationID, connection, v9, v8, clientCurrentPairingID, v12];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      communicationID = [(WCDClient *)self communicationID];
      communicationID2 = [(WCDClient *)v5 communicationID];
      if ([communicationID isEqual:communicationID2])
      {
        connection = [(WCDClient *)self connection];
        connection2 = [(WCDClient *)v5 connection];
        v10 = [connection isEqual:connection2];
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
  communicationID = [(WCDClient *)self communicationID];
  v4 = [communicationID hash];
  connection = [(WCDClient *)self connection];
  v6 = [connection hash];

  return v6 ^ v4;
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  invocationCopy = invocation;
  [invocationCopy retainArguments];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005950;
  block[3] = &unk_100048A48;
  v8 = invocationCopy;
  v6 = invocationCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)systemObserverInitialSetUpComplete
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier = [(WCDClient *)self loggingIdentifier];
    v8 = 138543362;
    v9 = loggingIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
  }

  clientCurrentPairingID = [(WCDClient *)self clientCurrentPairingID];

  if (!clientCurrentPairingID)
  {
    v6 = +[WCDSystemMonitor sharedSystemMonitor];
    pairingID = [v6 pairingID];
    [(WCDClient *)self setClientCurrentPairingID:pairingID];
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
    loggingIdentifier = [(WCDClient *)self loggingIdentifier];
    v5 = 138543362;
    v6 = loggingIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
  }

  [(WCDClient *)self updateClientWithSessionState];
}

- (void)systemObserverRemainingComplicationUserInfoTransfersReset
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier = [(WCDClient *)self loggingIdentifier];
    v5 = 138543362;
    v6 = loggingIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
  }

  [(WCDClient *)self updateClientWithSessionState];
}

- (void)systemObserverRunningIndependentlyWatchApps
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier = [(WCDClient *)self loggingIdentifier];
    v5 = 138543362;
    v6 = loggingIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
  }

  [(WCDClient *)self updateClientWithSessionState];
}

- (void)systemObserverAppDidSuspendForBundleID:(id)d
{
  dCopy = d;
  bundleID = [(WCDClient *)self bundleID];
  v6 = [dCopy isEqual:bundleID];

  if (v6)
  {
    v7 = wc_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      loggingIdentifier = [(WCDClient *)self loggingIdentifier];
      v10 = 138543362;
      v11 = loggingIdentifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: suspended; invalidating xpc connection", &v10, 0xCu);
    }

    connection = [(WCDClient *)self connection];
    [connection invalidate];
  }
}

- (void)systemObserverProcessStateChangedForBundleID:(id)d
{
  dCopy = d;
  communicationID = [(WCDClient *)self communicationID];
  v6 = [dCopy isEqual:communicationID];

  if (v6)
  {

    [(WCDClient *)self terminateApplicationDueToSwitchIfEligible];
  }
}

- (void)terminateApplicationDueToSwitchIfEligible
{
  clientCurrentPairingID = [(WCDClient *)self clientCurrentPairingID];
  if (clientCurrentPairingID)
  {
    v4 = clientCurrentPairingID;
    clientSupportsActiveDeviceSwitch = [(WCDClient *)self clientSupportsActiveDeviceSwitch];

    if ((clientSupportsActiveDeviceSwitch & 1) == 0)
    {
      v6 = +[WCDSystemMonitor sharedSystemMonitor];
      communicationID = [(WCDClient *)self communicationID];
      v8 = [v6 applicationStateForBundleID:communicationID];
      clientCurrentPairingID2 = [(WCDClient *)self clientCurrentPairingID];
      pairingID = [v6 pairingID];
      v11 = [clientCurrentPairingID2 isEqual:pairingID];

      if ((v8 == 4 || v8 == 2) && (v11 & 1) == 0)
      {
        v12 = wc_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          loggingIdentifier = [(WCDClient *)self loggingIdentifier];
          v15 = 138543362;
          v16 = loggingIdentifier;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: being terminated as active device switch has occurred", &v15, 0xCu);
        }

        v14 = +[FBSSystemService sharedService];
        [v14 terminateApplication:communicationID forReason:3 andReport:0 withDescription:0];
      }
    }
  }
}

- (void)handleActiveDeviceSwitchStarted
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier = [(WCDClient *)self loggingIdentifier];
    v6 = 138543362;
    v7 = loggingIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v6, 0xCu);
  }

  self->_previousReachable = 0;
  self->_pendingContentDequeued = 0;
  remoteObjectProxy = [(WCDClient *)self remoteObjectProxy];
  [remoteObjectProxy handleActiveDeviceSwitchStarted];

  [(WCDClient *)self terminateApplicationDueToSwitchIfEligible];
}

- (BOOL)reachable
{
  v3 = +[WCDSystemMonitor sharedSystemMonitor];
  if (-[WCDClient counterpartCanEstablishXPCConnection](self, "counterpartCanEstablishXPCConnection") && [v3 isPaired] && objc_msgSend(v3, "activeDeviceConnected"))
  {
    watchAppInstalled = [(WCDClient *)self watchAppInstalled];
  }

  else
  {
    watchAppInstalled = 0;
  }

  v5 = ([(WCDClient *)self isAlwaysReachable]| watchAppInstalled) & 1;
  if ([(WCDClient *)self previousReachable]!= v5)
  {
    [(WCDClient *)self setPreviousReachable:v5];
    delegate = [(WCDClient *)self delegate];
    [delegate clientReachabilityDidChange:self];
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
  complicationEnabled = [(WCDClient *)self complicationEnabled];
  v5 = [(WCDClient *)self remainingComplicationUserInfoTransfersWithComplicationEnabled:complicationEnabled];
  applicationInfo = [(WCDClient *)self applicationInfo];
  uniqueInstallID = [applicationInfo uniqueInstallID];

  v8 = [WCSessionState alloc];
  reachable = [(WCDClient *)self reachable];
  isPaired = [v3 isPaired];
  watchAppInstalled = [(WCDClient *)self watchAppInstalled];
  pairingID = [v3 pairingID];
  pairedDevicesPairingIDs = [v3 pairedDevicesPairingIDs];
  v14 = [v8 initWithReachable:reachable paired:isPaired appInstalled:watchAppInstalled complicationEnabled:complicationEnabled remainingComplicationUserInfoTransfers:v5 activePairingID:pairingID pairedDevicesPairingIDs:pairedDevicesPairingIDs appInstallationID:uniqueInstallID];

  return v14;
}

- (void)updateClientWithSessionState
{
  v5 = +[WCDSystemMonitor sharedSystemMonitor];
  if (-[WCDClient counterpartCanEstablishXPCConnectionCalled](self, "counterpartCanEstablishXPCConnectionCalled") && -[WCDClient privilegedCalled](self, "privilegedCalled") && [v5 initialSetUpComplete])
  {
    remoteObjectProxy = [(WCDClient *)self remoteObjectProxy];
    newSessionState = [(WCDClient *)self newSessionState];
    [remoteObjectProxy handleSessionStateChanged:newSessionState];

    [(WCDClient *)self dequeuePendingContent];
  }
}

- (void)dequeuePendingContent
{
  if (![(WCDClient *)self pendingContentDequeued])
  {
    [(WCDClient *)self setPendingContentDequeued:1];
    v3 = +[WCDSystemMonitor sharedSystemMonitor];
    clientCurrentPairingID = [(WCDClient *)self clientCurrentPairingID];
    pairingID = [v3 pairingID];
    v6 = [clientCurrentPairingID isEqual:pairingID];

    if (v6)
    {
      v7 = wc_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        loggingIdentifier = [(WCDClient *)self loggingIdentifier];
        v21 = 138543362;
        v22 = loggingIdentifier;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ causing client to check to see if there is any pending content awaiting", &v21, 0xCu);
      }

      v9 = +[WatchConnectivityDaemon sharedDaemon];
      [v9 dequeueContentForClient:self];

      clientCurrentPairingID2 = [(WCDClient *)self clientCurrentPairingID];
      [(WCDClient *)self handleApplicationContextWithPairingID:clientCurrentPairingID2];

      clientCurrentPairingID3 = [(WCDClient *)self clientCurrentPairingID];
      [(WCDClient *)self handleUserInfoResultWithPairingID:clientCurrentPairingID3];

      clientCurrentPairingID4 = [(WCDClient *)self clientCurrentPairingID];
      [(WCDClient *)self handleIncomingUserInfoWithPairingID:clientCurrentPairingID4];

      clientCurrentPairingID5 = [(WCDClient *)self clientCurrentPairingID];
      [(WCDClient *)self handleFileResultWithPairingID:clientCurrentPairingID5];

      clientCurrentPairingID6 = [(WCDClient *)self clientCurrentPairingID];
      [(WCDClient *)self handleIncomingFileWithPairingID:clientCurrentPairingID6];
    }

    else
    {
      clientCurrentPairingID7 = [(WCDClient *)self clientCurrentPairingID];

      clientCurrentPairingID6 = wc_log();
      v16 = os_log_type_enabled(clientCurrentPairingID6, OS_LOG_TYPE_DEFAULT);
      if (clientCurrentPairingID7)
      {
        if (v16)
        {
          loggingIdentifier2 = [(WCDClient *)self loggingIdentifier];
          clientCurrentPairingID8 = [(WCDClient *)self clientCurrentPairingID];
          pairingID2 = [v3 pairingID];
          v21 = 138543874;
          v22 = loggingIdentifier2;
          v23 = 2114;
          v24 = clientCurrentPairingID8;
          v25 = 2114;
          v26 = pairingID2;
          _os_log_impl(&_mh_execute_header, clientCurrentPairingID6, OS_LOG_TYPE_DEFAULT, "%{public}@ not dequeueing content for client as pairingIDs don't match (%{public}@ vs %{public}@)", &v21, 0x20u);
        }
      }

      else if (v16)
      {
        loggingIdentifier3 = [(WCDClient *)self loggingIdentifier];
        v21 = 138543362;
        v22 = loggingIdentifier3;
        _os_log_impl(&_mh_execute_header, clientCurrentPairingID6, OS_LOG_TYPE_DEFAULT, "%{public}@ not dequeueing content for client as it has no pairingID", &v21, 0xCu);
      }
    }
  }
}

- (void)sendMessage:(id)message clientPairingID:(id)d acceptanceHandler:(id)handler
{
  messageCopy = message;
  dCopy = d;
  handlerCopy = handler;
  if ([(WCDClient *)self outstandingMessagesToSendCount]<= 9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = messageCopy;
      v12 = objc_opt_new();
      [v12 setVersion:1];
      data = [v11 data];
      [v12 setClientData:data];

      [v12 setExpectsResponse:{objc_msgSend(v11, "expectsResponse")}];
      [v12 setDictionaryMessage:{objc_msgSend(v11, "isDictionaryMessage")}];
      [v12 setIsInUse:{-[WCDClient isInUse](self, "isInUse")}];
      identifier = [v11 identifier];
      [(WCDClient *)self addOutstandingMessage:identifier];

      +[WatchConnectivityDaemon sharedDaemon];
      v15 = v40 = handlerCopy;
      identifier2 = [v11 identifier];
      communicationID = [(WCDClient *)self communicationID];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100006FD0;
      v44[3] = &unk_100048BC8;
      v44[4] = self;
      v18 = &v45;
      v19 = v11;
      v20 = &v46;
      v21 = v15;
      handlerCopy = v40;
      v45 = v19;
      v46 = v19;
      v22 = v44;
      v23 = v21;
      v24 = v12;
      v25 = identifier2;
      v26 = 0;
      v27 = communicationID;
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
          loggingIdentifier = [(WCDClient *)self loggingIdentifier];
          allowMessageSending = [(WCDClient *)self allowMessageSending];
          v39 = "NO";
          if (allowMessageSending)
          {
            v39 = "YES";
          }

          *buf = 138543618;
          v48 = loggingIdentifier;
          v49 = 2080;
          v50 = v39;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ current YES, next %s", buf, 0x16u);
        }

        handlerCopy[2](handlerCopy, 1, [(WCDClient *)self allowMessageSending]);
        goto LABEL_17;
      }

      v30 = messageCopy;
      v12 = objc_opt_new();
      [v12 setVersion:1];
      data2 = [v30 data];
      [v12 setClientData:data2];

      error = [v30 error];

      if (error)
      {
        error2 = [v30 error];
        [v12 setErrorCode:{objc_msgSend(error2, "code")}];
      }

      [v12 setDictionaryMessage:{objc_msgSend(v30, "isDictionaryMessage")}];
      identifier3 = [v30 identifier];
      [(WCDClient *)self addOutstandingMessage:identifier3];

      v21 = +[WatchConnectivityDaemon sharedDaemon];
      identifier2 = [v30 identifier];
      communicationID = [(WCDClient *)self communicationID];
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
      v25 = identifier2;
      v26 = 1;
      v27 = communicationID;
    }

    [v23 sendMessage:v24 withIdentifier:v25 isResponse:v26 clientID:v27 clientPairingID:dCopy errorHandler:v22];

    goto LABEL_12;
  }

  [(WCDClient *)self setAllowMessageSending:0];
  v28 = wc_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier2 = [(WCDClient *)self loggingIdentifier];
    *buf = 138543362;
    v48 = loggingIdentifier2;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ outstanding messages at maximum", buf, 0xCu);
  }

  handlerCopy[2](handlerCopy, 0, 0);
LABEL_17:
}

- (void)addOutstandingMessage:(id)message
{
  messageCopy = message;
  outstandingMessagesToSend = [(WCDClient *)self outstandingMessagesToSend];
  [outstandingMessagesToSend addObject:messageCopy];
}

- (void)removeOutstandingMessage:(id)message
{
  if (message)
  {
    messageCopy = message;
    outstandingMessagesToSend = [(WCDClient *)self outstandingMessagesToSend];
    [outstandingMessagesToSend removeObject:messageCopy];

    [(WCDClient *)self updateMessagesClientIfNeeded];
  }
}

- (int64_t)outstandingMessagesToSendCount
{
  outstandingMessagesToSend = [(WCDClient *)self outstandingMessagesToSend];
  v3 = [outstandingMessagesToSend count];

  return v3;
}

- (void)updateMessagesClientIfNeeded
{
  if (![(WCDClient *)self allowMessageSending]&& [(WCDClient *)self outstandingMessagesToSendCount]<= 6)
  {
    [(WCDClient *)self setAllowMessageSending:1];
    remoteObjectProxy = [(WCDClient *)self remoteObjectProxy];
    [remoteObjectProxy handleMessageSendingAllowed];
  }
}

- (void)handleRequest:(id)request
{
  requestCopy = request;
  remoteObjectProxy = [(WCDClient *)self remoteObjectProxy];
  [remoteObjectProxy handleRequest:requestCopy];
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  remoteObjectProxy = [(WCDClient *)self remoteObjectProxy];
  [remoteObjectProxy handleResponse:responseCopy];
}

- (void)handleSentMessageWithIdentifier:(id)identifier error:(id)error
{
  errorCopy = error;
  identifierCopy = identifier;
  remoteObjectProxy = [(WCDClient *)self remoteObjectProxy];
  [remoteObjectProxy handleSentMessageWithIdentifier:identifierCopy error:errorCopy];
}

- (void)cancelAllOutstandingMessages
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  outstandingMessagesToSend = [(WCDClient *)self outstandingMessagesToSend];
  v4 = [outstandingMessagesToSend countByEnumeratingWithState:&v12 objects:v20 count:16];
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
          objc_enumerationMutation(outstandingMessagesToSend);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = wc_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          loggingIdentifier = [(WCDClient *)self loggingIdentifier];
          *buf = 138543618;
          v17 = loggingIdentifier;
          v18 = 2114;
          v19 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
        }

        [(WCDClient *)self cancelSendWithIdentifier:v8];
      }

      v5 = [outstandingMessagesToSend countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v5);
  }

  outstandingMessagesToSend2 = [(WCDClient *)self outstandingMessagesToSend];
  [outstandingMessagesToSend2 removeAllObjects];
}

- (void)handleApplicationContextWithPairingID:(id)d
{
  dCopy = d;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier = [(WCDClient *)self loggingIdentifier];
    v8 = 138543618;
    v9 = loggingIdentifier;
    v10 = 2114;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", &v8, 0x16u);
  }

  remoteObjectProxy = [(WCDClient *)self remoteObjectProxy];
  [remoteObjectProxy handleApplicationContextWithPairingID:dCopy];
}

- (void)handleIncomingFileWithPairingID:(id)d
{
  dCopy = d;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier = [(WCDClient *)self loggingIdentifier];
    v8 = 138543618;
    v9 = loggingIdentifier;
    v10 = 2114;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", &v8, 0x16u);
  }

  remoteObjectProxy = [(WCDClient *)self remoteObjectProxy];
  [remoteObjectProxy handleIncomingFileWithPairingID:dCopy];
}

- (void)handleFileResultWithPairingID:(id)d
{
  dCopy = d;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier = [(WCDClient *)self loggingIdentifier];
    v8 = 138543618;
    v9 = loggingIdentifier;
    v10 = 2114;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", &v8, 0x16u);
  }

  remoteObjectProxy = [(WCDClient *)self remoteObjectProxy];
  [remoteObjectProxy handleFileResultWithPairingID:dCopy];
}

- (void)handleIncomingUserInfoWithPairingID:(id)d
{
  dCopy = d;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier = [(WCDClient *)self loggingIdentifier];
    v8 = 138543618;
    v9 = loggingIdentifier;
    v10 = 2114;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", &v8, 0x16u);
  }

  remoteObjectProxy = [(WCDClient *)self remoteObjectProxy];
  [remoteObjectProxy handleIncomingUserInfoWithPairingID:dCopy];
}

- (void)handleUserInfoResultWithPairingID:(id)d
{
  dCopy = d;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier = [(WCDClient *)self loggingIdentifier];
    v8 = 138543618;
    v9 = loggingIdentifier;
    v10 = 2114;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", &v8, 0x16u);
  }

  remoteObjectProxy = [(WCDClient *)self remoteObjectProxy];
  [remoteObjectProxy handleUserInfoResultWithPairingID:dCopy];
}

- (void)updateApplicationContext:(id)context clientPairingID:(id)d errorHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  contextCopy = context;
  v13 = objc_opt_new();
  [v13 setVersion:1];
  [v13 setClientData:contextCopy];

  v11 = +[WatchConnectivityDaemon sharedDaemon];
  communicationID = [(WCDClient *)self communicationID];
  [v11 updateApplicationContext:v13 clientID:communicationID clientPairingID:dCopy errorHandler:handlerCopy];
}

- (void)transferFile:(id)file sandboxToken:(id)token clientPairingID:(id)d errorHandler:(id)handler
{
  fileCopy = file;
  handlerCopy = handler;
  v54 = 0u;
  v55 = 0u;
  tokenCopy = token;
  connection = [(WCDClient *)self connection];
  v13 = connection;
  if (connection)
  {
    [connection auditToken];
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  file = [fileCopy file];
  fileURL = [file fileURL];
  *buf = v54;
  *&buf[16] = v55;
  v16 = WCCheckFileAndConsumeSandboxTokenForAuditToken();

  if (v16 <= 0)
  {
    v21 = [NSError wcErrorWithCode:7013];
    handlerCopy[2](handlerCopy, v21);
  }

  else
  {
    v17 = NSTemporaryDirectory();
    v18 = [NSURL fileURLWithPath:v17 isDirectory:1];

    v19 = +[NSUUID UUID];
    uUIDString = [v19 UUIDString];
    v21 = [v18 URLByAppendingPathComponent:uUIDString isDirectory:1];

    v22 = +[NSFileManager defaultManager];
    v53 = 0;
    LOBYTE(v18) = [v22 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:&v53];
    v23 = v53;

    if (v18)
    {
      v48 = v23;
      file2 = [fileCopy file];
      fileURL2 = [file2 fileURL];
      standardizedURL = [fileURL2 standardizedURL];
      lastPathComponent = [standardizedURL lastPathComponent];

      v47 = lastPathComponent;
      v46 = [v21 URLByAppendingPathComponent:lastPathComponent];
      v28 = objc_opt_new();
      [v28 setObject:&off_10004AAF8 forKeyedSubscript:@"t"];
      file3 = [fileCopy file];
      userInfoData = [file3 userInfoData];

      if (userInfoData)
      {
        file4 = [fileCopy file];
        userInfoData2 = [file4 userInfoData];
        [v28 setObject:userInfoData2 forKeyedSubscript:@"u"];
      }

      v33 = wc_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        loggingIdentifier = [(WCDClient *)self loggingIdentifier];
        file5 = [fileCopy file];
        fileURL3 = [file5 fileURL];
        path = [fileURL3 path];
        *buf = 138543874;
        *&buf[4] = loggingIdentifier;
        *&buf[12] = 2114;
        *&buf[14] = path;
        *&buf[22] = 2114;
        *&buf[24] = v28;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ Client sending file %{public}@ with metadata %{public}@, ", buf, 0x20u);
      }

      v38 = +[WatchConnectivityDaemon sharedDaemon];
      file6 = [fileCopy file];
      fileDescriptor = [file6 fileDescriptor];
      transferIdentifier = [fileCopy transferIdentifier];
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_10000804C;
      v49[3] = &unk_100048BF0;
      v49[4] = self;
      v50 = fileCopy;
      v51 = v46;
      v52 = handlerCopy;
      v42 = v46;
      [v38 transferFile:fileDescriptor withMetadata:v28 identifier:transferIdentifier forClient:self destFilePath:v42 errorHandler:v49];

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

      handlerCopy[2](handlerCopy, v43);
    }
  }
}

- (void)copyProgressUpdatesForFileTransfer:(id)transfer fromClonedFileURL:(id)l
{
  transferCopy = transfer;
  lCopy = l;
  objc_initWeak(&location, self);
  v8 = wc_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    file = [transferCopy file];
    fileURL = [file fileURL];
    transferIdentifier = [transferCopy transferIdentifier];
    *buf = 138412802;
    v23 = fileURL;
    v24 = 2112;
    v25 = lCopy;
    v26 = 2112;
    v27 = transferIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating progress copy for originalFile: %@, clonedFile: %@, transferID: %@", buf, 0x20u);
  }

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000082D8;
  v17 = &unk_100048C40;
  v12 = transferCopy;
  v18 = v12;
  selfCopy = self;
  objc_copyWeak(&v20, &location);
  v13 = [NSProgress addSubscriberForFileURL:lCopy withPublishingHandler:&v14];
  [v12 setProgressToken:{v13, v14, v15, v16, v17}];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)registerForUpdatesForProgress:(id)progress
{
  progressCopy = progress;
  [progressCopy addObserver:self forKeyPath:@"userInfo.NSProgressByteCompletedCountKey" options:1 context:0];
  [progressCopy addObserver:self forKeyPath:@"totalUnitCount" options:1 context:0];
  [progressCopy addObserver:self forKeyPath:@"completedUnitCount" options:1 context:0];
  [progressCopy addObserver:self forKeyPath:@"finished" options:1 context:0];
  [progressCopy addObserver:self forKeyPath:@"cancelled" options:1 context:0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objectCopy;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  userInfo = [v11 userInfo];
  v13 = [userInfo objectForKeyedSubscript:IDSSendResourceProgressIdentifier];

  v14 = [(NSMutableDictionary *)self->_outstandingFileTransfers objectForKeyedSubscript:v13];
  if ([pathCopy isEqual:@"completedUnitCount"])
  {
    [v14 setCompletedUnitCount:{objc_msgSend(v11, "completedUnitCount")}];
    goto LABEL_11;
  }

  if ([pathCopy isEqual:@"totalUnitCount"])
  {
    [v14 setTotalUnitCount:{objc_msgSend(v11, "totalUnitCount")}];
    goto LABEL_11;
  }

  if ([pathCopy isEqual:@"userInfo.NSProgressByteCompletedCountKey"])
  {
    byteCompletedCount = [v11 byteCompletedCount];
    [v14 setByteCompletedCount:byteCompletedCount];
LABEL_10:

    goto LABEL_11;
  }

  if (![pathCopy isEqual:@"finished"])
  {
    if (![pathCopy isEqual:@"cancelled"])
    {
      goto LABEL_11;
    }

    byteCompletedCount = wc_log();
    if (os_log_type_enabled(byteCompletedCount, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136446466;
      v18 = "[WCDClient observeValueForKeyPath:ofObject:change:context:]";
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, byteCompletedCount, OS_LOG_TYPE_DEFAULT, "%{public}s Progress cancelled for identifier %@", &v17, 0x16u);
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

- (void)removeProgressForFileTransfer:(id)transfer
{
  transferCopy = transfer;
  progress = [transferCopy progress];
  isFinished = [progress isFinished];

  if (isFinished)
  {
    progressToken = [transferCopy progressToken];

    v7 = wc_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (progressToken)
    {
      if (v8)
      {
        v10 = 136446466;
        v11 = "[WCDClient removeProgressForFileTransfer:]";
        v12 = 2114;
        v13 = transferCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s Removing progress for transfer %{public}@", &v10, 0x16u);
      }

      progressToken2 = [transferCopy progressToken];
      [NSProgress _removeSubscriber:progressToken2];

      [transferCopy setProgressToken:0];
    }

    else
    {
      if (v8)
      {
        v10 = 136446466;
        v11 = "[WCDClient removeProgressForFileTransfer:]";
        v12 = 2114;
        v13 = transferCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s Missing item to remove (identifier: %{public}@)", &v10, 0x16u);
      }
    }
  }
}

- (void)transferUserInfo:(id)info withURL:(id)l clientPairingID:(id)d errorHandler:(id)handler
{
  infoCopy = info;
  dCopy = d;
  handlerCopy = handler;
  lCopy = l;
  if ([infoCopy isCurrentComplicationInfo])
  {
    v14 = objc_opt_new();
    [v14 setVersion:1];
    userInfoData = [infoCopy userInfoData];
    [v14 setClientData:userInfoData];

    transferIdentifier = [infoCopy transferIdentifier];
    [v14 setTransferIdentifier:transferIdentifier];

    v17 = +[WatchConnectivityDaemon sharedDaemon];
    communicationID = [(WCDClient *)self communicationID];
    complicationTransferIdentifier = [infoCopy complicationTransferIdentifier];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100008EBC;
    v25[3] = &unk_100048C68;
    v25[4] = self;
    v20 = [v17 sendComplicationUserInfo:v14 clientID:communicationID clientPairingID:dCopy identifier:complicationTransferIdentifier errorHandler:v25];

    if (v20)
    {
      [(WCDClient *)self updateClientWithSessionState];
    }
  }

  v26 = @"t";
  v27 = &off_10004AB10;
  v21 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v22 = +[WatchConnectivityDaemon sharedDaemon];
  transferIdentifier2 = [infoCopy transferIdentifier];
  communicationID2 = [(WCDClient *)self communicationID];
  [v22 transferUserInfo:lCopy withMetadata:v21 identifier:transferIdentifier2 clientID:communicationID2 clientPairingID:dCopy errorHandler:handlerCopy];
}

- (void)cancelSendWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[WatchConnectivityDaemon sharedDaemon];
  [v4 cancelSendWithIdentifier:identifierCopy];
}

- (void)acknowledgeFileIndexWithIdentifier:(id)identifier clientPairingID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v8 = wc_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier = [(WCDClient *)self loggingIdentifier];
    v13 = 138543874;
    v14 = loggingIdentifier;
    v15 = 2114;
    v16 = identifierCopy;
    v17 = 2114;
    v18 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ identifier: %{public}@, clientPairingID: %{public}@", &v13, 0x20u);
  }

  v10 = +[WCDIndexManager sharedManager];
  applicationInfo = [(WCDClient *)self applicationInfo];
  v12 = [v10 fileIndexForApplication:applicationInfo pairingID:dCopy];

  [v12 removeContentIdentifier:identifierCopy];
}

- (void)acknowledgeFileResultIndexWithIdentifier:(id)identifier clientPairingID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v8 = wc_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier = [(WCDClient *)self loggingIdentifier];
    v13 = 138543874;
    v14 = loggingIdentifier;
    v15 = 2114;
    v16 = identifierCopy;
    v17 = 2114;
    v18 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ identifier: %{public}@, clientPairingID: %{public}@", &v13, 0x20u);
  }

  v10 = +[WCDIndexManager sharedManager];
  applicationInfo = [(WCDClient *)self applicationInfo];
  v12 = [v10 fileResultsIndexForApplication:applicationInfo pairingID:dCopy];

  [v12 removeContentIdentifier:identifierCopy];
}

- (void)acknowledgeUserInfoIndexWithIdentifier:(id)identifier clientPairingID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v8 = wc_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier = [(WCDClient *)self loggingIdentifier];
    v13 = 138543874;
    v14 = loggingIdentifier;
    v15 = 2114;
    v16 = identifierCopy;
    v17 = 2114;
    v18 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ identifier: %{public}@, clientPairingID: %{public}@", &v13, 0x20u);
  }

  v10 = +[WCDIndexManager sharedManager];
  applicationInfo = [(WCDClient *)self applicationInfo];
  v12 = [v10 userInfoIndexForApplication:applicationInfo pairingID:dCopy];

  [v12 removeContentIdentifier:identifierCopy];
}

- (void)acknowledgeUserInfoResultIndexWithIdentifier:(id)identifier clientPairingID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v8 = wc_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier = [(WCDClient *)self loggingIdentifier];
    v13 = 138543874;
    v14 = loggingIdentifier;
    v15 = 2114;
    v16 = identifierCopy;
    v17 = 2114;
    v18 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ identifier: %{public}@, clientPairingID: %{public}@", &v13, 0x20u);
  }

  v10 = +[WCDIndexManager sharedManager];
  applicationInfo = [(WCDClient *)self applicationInfo];
  v12 = [v10 userInfoResultsIndexForApplication:applicationInfo pairingID:dCopy];

  [v12 removeContentIdentifier:identifierCopy];
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