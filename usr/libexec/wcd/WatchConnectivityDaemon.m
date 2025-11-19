@interface WatchConnectivityDaemon
+ (id)sharedDaemon;
- (BOOL)cellUsageAllowedForBundleID:(id)a3;
- (BOOL)copyFile:(int)a3 to:(int)a4;
- (BOOL)errorIfPreconditionsNotSatisfiedWithClientPairingID:(id)a3 error:(id *)a4;
- (BOOL)fileTransferExistsForPairingID:(id)a3 identifier:(id)a4 applicationInfo:(id)a5;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)listenerShouldAcceptNewConnection:(id)a3;
- (BOOL)notifyIfFileTransferWithCommunicationID:(id)a3 pairingID:(id)a4 sendID:(id)a5 success:(BOOL)a6 error:(id)a7;
- (BOOL)notifyIfUserInfoTransferWithCommunicationID:(id)a3 pairingID:(id)a4 sendID:(id)a5 success:(BOOL)a6 error:(id)a7;
- (BOOL)privateListenerShouldAcceptNewConnection:(id)a3;
- (BOOL)sendComplicationUserInfo:(id)a3 clientID:(id)a4 clientPairingID:(id)a5 identifier:(id)a6 errorHandler:(id)a7;
- (BOOL)userInfoExistsForPairingID:(id)a3 identifier:(id)a4 applicationInfo:(id)a5;
- (IDSDevice)activeIDSDevice;
- (NSString)state;
- (WatchConnectivityDaemon)init;
- (const)descriptionFromPayloadSendType:(unsigned __int16)a3;
- (id)WCErrorForIDSError:(id)a3;
- (id)applicationInfoForCommunicationID:(id)a3;
- (id)complicationUserInfoPathInDataContainer:(id)a3 pairingID:(id)a4;
- (id)createBackgroundAssertionTimerForIdentifier:(id)a3;
- (id)createCLInUseTimerForIdentifier:(id)a3;
- (id)createNewClientObjectWithCommunicationID:(id)a3 connection:(id)a4;
- (id)dataFromUUIDString:(id)a3;
- (id)moveFileToClientInbox:(id)a3 applicationInfo:(id)a4 pairingID:(id)a5 fileIdentifier:(id)a6 userInfoData:(id)a7 error:(id *)a8;
- (id)moveUserInfoToClientInbox:(id)a3 applicationInfo:(id)a4 pairingID:(id)a5 userInfoIdentifier:(id)a6;
- (id)pairingIDForIDSUniqueDeviceID:(id)a3;
- (void)acquireBackgroundAssertionForIdentifier:(id)a3;
- (void)addCounterpartClientCommunicationIdentifier:(id)a3;
- (void)cancelSendWithIdentifier:(id)a3;
- (void)cleanUpProcessAssertionForIdentifier:(id)a3;
- (void)clientReachabilityDidChange:(id)a3;
- (void)clientXPCConnectionDidDisconnect:(id)a3;
- (void)dequeueContentForClient:(id)a3;
- (void)dequeuePendingMessagesForCommunicationID:(id)a3;
- (void)duetIdentifiersForCompanionAppID:(id)a3 withCompletionHandler:(id)a4;
- (void)flushReadyBlocks;
- (void)handleAquiredAssertion:(id)a3 identifier:(id)a4;
- (void)handleCounterpartDaemonDidStart;
- (void)handleDaemonClientsInformation:(id)a3;
- (void)handleIncomingFileURL:(id)a3 communicationID:(id)a4 pairingID:(id)a5 sendID:(id)a6 metadata:(id)a7;
- (void)handleIncomingUserInfoTransferProto:(id)a3 communicationID:(id)a4 pairingID:(id)a5 sendID:(id)a6;
- (void)handleIncomingUserInfoURL:(id)a3 communicationID:(id)a4 pairingID:(id)a5 sendID:(id)a6;
- (void)handlePairedSyncComplicationsStartedAck:(id)a3 identifier:(id)a4;
- (void)launchCompanionAppID:(id)a3 isInUse:(BOOL)a4 coreLocationData:(id)a5;
- (void)loadPersistedClients;
- (void)performBlockWhenReady:(id)a3;
- (void)persistAppContext:(id)a3 applicationInfo:(id)a4 pairingID:(id)a5;
- (void)persistFileTransferResult:(id)a3 pairingID:(id)a4 applicationInfo:(id)a5 identifier:(id)a6;
- (void)persistUserInfoTransferResult:(id)a3 pairingID:(id)a4 applicationInfo:(id)a5 identifier:(id)a6;
- (void)releaseCLInUseAssertionForIdentifier:(id)a3;
- (void)sendDaemonClientsInformation;
- (void)sendDaemonDidStart;
- (void)sendFirstUnlockAck:(id)a3;
- (void)sendFirstUnlockRequest:(id)a3;
- (void)sendFirstUnlockState:(id)a3;
- (void)sendInstalledAppsChangedMessage;
- (void)sendMessage:(id)a3 withIdentifier:(id)a4 isResponse:(BOOL)a5 clientID:(id)a6 clientPairingID:(id)a7 errorHandler:(id)a8;
- (void)sendPairedSyncForComplicationsStartedWithIdentifier:(id)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
- (void)service:(id)a3 context:(id)a4 performBlockWhenReady:(id)a5;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5;
- (void)setCLTransientAuthorization:(id)a3 withCoreLocationData:(id)a4;
- (void)storeComplicationUserInfoTransfer:(id)a3 applicationInfo:(id)a4 pairingID:(id)a5;
- (void)systemObserverActiveDeviceSwitchStarted;
- (void)systemObserverAppDidTerminateForBundleID:(id)a3;
- (void)systemObserverInitialSetUpComplete;
- (void)systemObserverInstalledApplicationsChanged;
- (void)systemObserverUpdatingInstalledApps;
- (void)transferFile:(id)a3 withMetadata:(id)a4 identifier:(id)a5 forClient:(id)a6 destFilePath:(id)a7 errorHandler:(id)a8;
- (void)transferUserInfo:(id)a3 withMetadata:(id)a4 identifier:(id)a5 clientID:(id)a6 clientPairingID:(id)a7 errorHandler:(id)a8;
- (void)updateActiveDeviceConnectedForService:(id)a3;
- (void)updateAllClientsWithValues;
- (void)updateApplicationContext:(id)a3 clientID:(id)a4 clientPairingID:(id)a5 errorHandler:(id)a6;
- (void)updateClientWithValues:(id)a3;
@end

@implementation WatchConnectivityDaemon

+ (id)sharedDaemon
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010204;
  block[3] = &unk_100048E08;
  block[4] = a1;
  if (qword_100054CB8 != -1)
  {
    dispatch_once(&qword_100054CB8, block);
  }

  v2 = qword_100054CB0;

  return v2;
}

- (WatchConnectivityDaemon)init
{
  v42.receiver = self;
  v42.super_class = WatchConnectivityDaemon;
  v2 = [(WatchConnectivityDaemon *)&v42 init];
  if (v2)
  {
    [(WatchConnectivityDaemon *)v2 setLocationManager:objc_opt_class()];
    v3 = objc_opt_new();
    companionAppAssertions = v2->_companionAppAssertions;
    v2->_companionAppAssertions = v3;

    v5 = objc_opt_new();
    coreLocationAssertions = v2->_coreLocationAssertions;
    v2->_coreLocationAssertions = v5;

    v7 = objc_opt_new();
    communicationIdentifierToClient = v2->_communicationIdentifierToClient;
    v2->_communicationIdentifierToClient = v7;

    v9 = objc_opt_new();
    sendIdentifierToHandler = v2->_sendIdentifierToHandler;
    v2->_sendIdentifierToHandler = v9;

    v11 = objc_opt_new();
    pendingMessageRequests = v2->_pendingMessageRequests;
    v2->_pendingMessageRequests = v11;

    v13 = objc_alloc_init(NSMutableArray);
    readyBlocks = v2->_readyBlocks;
    v2->_readyBlocks = v13;

    v15 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.wcd"];
    xpcListener = v2->_xpcListener;
    v2->_xpcListener = v15;

    [(NSXPCListener *)v2->_xpcListener _setQueue:&_dispatch_main_q];
    [(NSXPCListener *)v2->_xpcListener setDelegate:v2];
    v17 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.wcd.private"];
    xpcPrivateListener = v2->_xpcPrivateListener;
    v2->_xpcPrivateListener = v17;

    [(NSXPCListener *)v2->_xpcPrivateListener _setQueue:&_dispatch_main_q];
    [(NSXPCListener *)v2->_xpcPrivateListener setDelegate:v2];
    [(NSXPCListener *)v2->_xpcPrivateListener resume];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100010598;
    v40[3] = &unk_100048A48;
    v19 = v2;
    v41 = v19;
    [(WatchConnectivityDaemon *)v19 performBlockWhenReady:v40];
    idsServiceIdentifier = v19->_idsServiceIdentifier;
    v19->_idsServiceIdentifier = @"com.apple.private.alloy.watchconnectivity";

    v21 = [[IDSService alloc] initWithService:v19->_idsServiceIdentifier manuallyAckMessages:1];
    idsService = v19->_idsService;
    v19->_idsService = v21;

    [(IDSService *)v19->_idsService addDelegate:v19 queue:&_dispatch_main_q];
    idsInsecureServiceIdentifier = v19->_idsInsecureServiceIdentifier;
    v19->_idsInsecureServiceIdentifier = @"com.apple.private.alloy.watchconnectivity.classd";

    v24 = [[IDSService alloc] initWithService:v19->_idsInsecureServiceIdentifier manuallyAckMessages:1];
    insecureIDSService = v19->_insecureIDSService;
    v19->_insecureIDSService = v24;

    [v19->_insecureIDSService addDelegate:v19 queue:&_dispatch_main_q];
    v26 = objc_opt_new();
    firstUnlockManager = v19->_firstUnlockManager;
    v19->_firstUnlockManager = v26;

    v28 = objc_opt_new();
    pairedSyncManager = v19->_pairedSyncManager;
    v19->_pairedSyncManager = v28;

    v30 = +[WCDSystemMonitor sharedSystemMonitor];
    [v30 addObserver:v19];

    notify_post([WCServiceListenerResumedNotification UTF8String]);
    [(WatchConnectivityDaemon *)v19 sendDaemonDidStart];
    v35 = _NSConcreteStackBlock;
    v36 = 3221225472;
    v37 = sub_1000105A4;
    v38 = &unk_100048A48;
    v31 = v19;
    v39 = v31;
    [(WatchConnectivityDaemon *)v31 performBlockWhenReady:&v35];
    v32 = v19->_idsService;
    v33 = [(IDSService *)v32 devices:v35];
    [(WatchConnectivityDaemon *)v31 service:v32 connectedDevicesChanged:v33];
  }

  return v2;
}

- (NSString)state
{
  v23 = [(WCDFirstUnlockManager *)self->_firstUnlockManager state];
  NSAppendPrintF();
  v3 = 0;

  v4 = [(WCDPairedSyncManager *)self->_pairedSyncManager state];
  NSAppendPrintF();
  v5 = v3;

  v6 = objc_opt_class();
  v24 = NSStringFromClass(v6);
  NSAppendPrintF();
  v7 = v5;

  NSAppendPrintF();
  v8 = v7;

  v9 = [(WatchConnectivityDaemon *)self idsService];
  NSAppendPrintF();
  v10 = v8;

  xpcListener = self->_xpcListener;
  NSAppendPrintF();
  v11 = v10;

  xpcPrivateListener = self->_xpcPrivateListener;
  NSAppendPrintF();
  v12 = v11;

  privateClient = self->_privateClient;
  NSAppendPrintF();
  v13 = v12;

  pendingMessageRequests = self->_pendingMessageRequests;
  NSAppendPrintF();
  v14 = v13;

  sendIdentifierToHandler = self->_sendIdentifierToHandler;
  NSAppendPrintF();
  v15 = v14;

  counterpartClientCommunicationIdentifiers = self->_counterpartClientCommunicationIdentifiers;
  v17 = WCCompactStringFromCollection();
  NSAppendPrintF();
  v18 = v15;

  coreLocationAssertions = self->_coreLocationAssertions;
  NSAppendPrintF();
  v19 = v18;

  v20 = [(NSMutableDictionary *)self->_communicationIdentifierToClient allValues];
  v31 = [v20 valueForKeyPath:@"@unionOfObjects.state"];
  NSAppendPrintF();
  v21 = v19;

  return v19;
}

- (void)loadPersistedClients
{
  v3 = +[NSFileManager defaultManager];
  v30 = +[WCDClient clientsStorageURL];
  v4 = [v30 path];
  v40 = 0;
  v31 = v3;
  v5 = [v3 contentsOfDirectoryAtPath:v4 error:&v40];
  v6 = v40;

  if (v5)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v34 = v6;
      v29 = v5;
      v9 = *v37;
      p_info = WCDRetrieveActiveComplicationsOperation.info;
      while (1)
      {
        v11 = 0;
        v32 = v8;
        do
        {
          if (*v37 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v36 + 1) + 8 * v11);
          v13 = [v12 stringByDeletingPathExtension];
          v14 = [p_info + 91 sharedSystemMonitor];
          v15 = [v14 applicationStateForBundleID:v13];

          if (v15 > 1)
          {
            v22 = [(NSMutableDictionary *)self->_communicationIdentifierToClient objectForKeyedSubscript:v13];
            if (v22)
            {
              v23 = v22;
              v24 = wc_log();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v42 = v13;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "client already exists %{public}@", buf, 0xCu);
              }
            }

            else
            {
              v25 = [(WatchConnectivityDaemon *)self createNewClientObjectWithCommunicationID:v13 connection:0];
              if (v25)
              {
                v23 = v25;
                [(NSMutableDictionary *)self->_communicationIdentifierToClient setObject:v25 forKeyedSubscript:v13];
                v26 = wc_log();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v42 = v23;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "restoring %{public}@", buf, 0xCu);
                }

                [v23 terminateApplicationDueToSwitchIfEligible];
              }

              else
              {
                v23 = wc_log();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v42 = v13;
                  _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "failed to restore client for %{public}@", buf, 0xCu);
                }
              }
            }
          }

          else
          {
            v16 = v9;
            v17 = self;
            v18 = p_info;
            v19 = [v30 URLByAppendingPathComponent:v12 isDirectory:0];
            v35 = v34;
            v20 = [v31 removeItemAtURL:v19 error:&v35];
            v21 = v35;

            if (v20)
            {
              v34 = v21;
              p_info = v18;
              self = v17;
              v9 = v16;
              v8 = v32;
              goto LABEL_24;
            }

            v23 = wc_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v28 = v21;
              v27 = NSPrintF();
              *buf = 138543618;
              v42 = v12;
              v43 = 2114;
              v44 = v27;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "failed to clean up %{public}@ with error %{public}@", buf, 0x16u);
            }

            v34 = v21;
            p_info = v18;
            self = v17;
            v9 = v16;
            v8 = v32;
          }

LABEL_24:
          v11 = v11 + 1;
        }

        while (v8 != v11);
        v8 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (!v8)
        {
          v5 = v29;
          v6 = v34;
          break;
        }
      }
    }
  }

  else
  {
    obj = wc_log();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      sub_10002A7C0();
    }
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqual:self->_xpcListener])
  {
    v8 = [(WatchConnectivityDaemon *)self listenerShouldAcceptNewConnection:v7];
  }

  else
  {
    if (![v6 isEqual:self->_xpcPrivateListener])
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = [(WatchConnectivityDaemon *)self privateListenerShouldAcceptNewConnection:v7];
  }

  v9 = v8;
LABEL_7:

  return v9;
}

- (BOOL)listenerShouldAcceptNewConnection:(id)a3
{
  v4 = a3;
  if ([v4 wc_connectionIsiOSExtension])
  {
    v5 = wc_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10002A8CC();
    }

    v6 = +[WCXPCManager clientInterface];
    [v4 setRemoteObjectInterface:v6];

    [v4 resume];
    v7 = [v4 remoteObjectProxy];
    [v7 invalidateConnection];
    goto LABEL_5;
  }

  v7 = [v4 wc_connectionCommunicationID];
  v8 = v7 != 0;
  v9 = wc_log();
  v10 = v9;
  if (!v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002A854();
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v4 wc_connectionBundleID];
    v15 = 138543618;
    v16 = v11;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Accepting new connection from client with bundle ID %{public}@ and communicationID %{public}@", &v15, 0x16u);
  }

  v12 = [(NSMutableDictionary *)self->_communicationIdentifierToClient objectForKeyedSubscript:v7];
  if (v12)
  {
    v10 = v12;
    [v12 setConnection:v4];
LABEL_15:

    goto LABEL_16;
  }

  v13 = [(WatchConnectivityDaemon *)self createNewClientObjectWithCommunicationID:v7 connection:v4];
  if (v13)
  {
    v10 = v13;
    [(NSMutableDictionary *)self->_communicationIdentifierToClient setObject:v13 forKeyedSubscript:v7];
    goto LABEL_15;
  }

LABEL_5:
  v8 = 0;
LABEL_16:

  return v8;
}

- (id)createNewClientObjectWithCommunicationID:(id)a3 connection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = wc_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 wc_connectionBundleID];
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating new client %{public}@ with connection %{public}@", &v12, 0x16u);
  }

  v10 = [[WCDClient alloc] initWithCommunicationID:v7 connection:v6];
  if (v10)
  {
    [(WCDClient *)v10 setDelegate:self];
    [(WatchConnectivityDaemon *)self updateClientWithValues:v10];
    [(WCDFirstUnlockManager *)self->_firstUnlockManager requestFirstUnlockStateIfNeccessary];
  }

  return v10;
}

- (BOOL)privateListenerShouldAcceptNewConnection:(id)a3
{
  v4 = a3;
  if (([v4 wc_connectionHasEntitlement:WCPrivateServiceComplicationsManagerEntitlement] & 1) != 0 || objc_msgSend(v4, "wc_connectionHasEntitlement:", WCPrivateServiceTestToolEntitlement))
  {
    v5 = wc_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 wc_connectionBundleID];
      v13 = 138543362;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Accepting new private connection from client with bundle ID %{public}@", &v13, 0xCu);
    }

    v7 = objc_opt_new();
    [(WCDPrivateClient *)v7 setDelegate:self];
    privateClient = self->_privateClient;
    self->_privateClient = v7;
    v9 = v7;

    [(WCDPrivateClient *)v9 setConnection:v4];
    [(WatchConnectivityDaemon *)self updateAllClientsWithValues];
    [(WatchConnectivityDaemon *)self dequeuePendingComplicationPings];
    v10 = 1;
  }

  else
  {
    v11 = wc_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10002A908(v4);
    }

    v10 = 0;
  }

  return v10;
}

- (void)dequeueContentForClient:(id)a3
{
  v4 = a3;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[WatchConnectivityDaemon dequeueContentForClient:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", &v7, 0xCu);
  }

  v6 = [v4 communicationID];

  [(WatchConnectivityDaemon *)self dequeuePendingMessagesForCommunicationID:v6];
}

- (void)clientXPCConnectionDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v10, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = [v6 bundleID];
    [(WatchConnectivityDaemon *)self releaseCLInUseAssertionForIdentifier:v7];

    privateClient = +[WCDIndexManager sharedManager];
    v9 = [v6 applicationInfo];

    [privateClient clearCacheForApplication:v9];
LABEL_7:

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    privateClient = self->_privateClient;
    self->_privateClient = 0;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)clientReachabilityDidChange:(id)a3
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[WatchConnectivityDaemon clientReachabilityDidChange:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v4, 0xCu);
  }
}

- (void)systemObserverInitialSetUpComplete
{
  [(WatchConnectivityDaemon *)self flushReadyBlocks];

  [(WatchConnectivityDaemon *)self updateAllClientsWithValues];
}

- (void)systemObserverActiveDeviceSwitchStarted
{
  counterpartClientCommunicationIdentifiers = self->_counterpartClientCommunicationIdentifiers;
  self->_counterpartClientCommunicationIdentifiers = 0;
  _objc_release_x1();
}

- (void)systemObserverInstalledApplicationsChanged
{
  v3 = +[WCDSystemMonitor sharedSystemMonitor];
  v4 = [v3 applicationWorkspace];
  v5 = [v4 iOSApplicationsContainingWatchApp];
  v6 = [v5 bs_map:&stru_100048EF8];

  v7 = [(WatchConnectivityDaemon *)self idsService];
  v8 = [v6 allObjects];
  [v7 updateSubServices:v8];

  v9 = wc_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "updated IDS with list of services: %{public}@", &v10, 0xCu);
  }
}

- (void)systemObserverAppDidTerminateForBundleID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSMutableDictionary *)self->_communicationIdentifierToClient removeObjectForKey:v4];
  }

  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    communicationIdentifierToClient = self->_communicationIdentifierToClient;
    v7 = WCCompactStringFromCollection();
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "removing client: %{public}@ from list of clients %{public}@", &v8, 0x16u);
  }
}

- (void)systemObserverUpdatingInstalledApps
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating other device that installed apps changed", v4, 2u);
  }

  [(WatchConnectivityDaemon *)self sendInstalledAppsChangedMessage];
}

- (void)sendDaemonDidStart
{
  v3 = +[WCDSystemMonitor sharedSystemMonitor];
  v4 = [v3 watchConnectivityServiceAvailable];

  if (v4)
  {
    v5 = objc_opt_new();
    [v5 setObject:@"WCDPayloadSendTypeDaemonStarted" forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionNonWakingKey];
    v6 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    [v5 setObject:v6 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

    v7 = objc_opt_new();
    [v7 setVersion:1];
    v8 = [IDSProtobuf alloc];
    v9 = [v7 data];
    v10 = [v8 initWithProtobufData:v9 type:4 isResponse:0];

    v11 = [(WatchConnectivityDaemon *)self idsService];
    v12 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v17 = 0;
    v18 = 0;
    [v11 sendProtobuf:v10 toDestinations:v12 priority:300 options:v5 identifier:&v18 error:&v17];
    v13 = v18;
    v14 = v17;

    v15 = wc_log();
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10002A9BC();
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }
}

- (void)handleCounterpartDaemonDidStart
{
  v2 = wc_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10002AA50();
  }
}

- (void)sendDaemonClientsInformation
{
  v2 = wc_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10002AA8C();
  }
}

- (void)handleDaemonClientsInformation:(id)a3
{
  v4 = a3;
  v5 = [v4 informationData];

  if (v5)
  {
    v6 = [v4 informationData];
    v12 = 0;
    v7 = [NSPropertyListSerialization propertyListWithData:v6 options:0 format:0 error:&v12];
    v5 = v12;

    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [NSSet setWithArray:v7];
        counterpartClientCommunicationIdentifiers = self->_counterpartClientCommunicationIdentifiers;
        self->_counterpartClientCommunicationIdentifiers = v8;

        v10 = wc_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v14 = v7;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        goto LABEL_11;
      }
    }
  }

  v11 = wc_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10002AAC8();
  }

  WCDashboardLogJSON();
LABEL_11:
  [(WatchConnectivityDaemon *)self updateAllClientsWithValues];
}

- (void)sendInstalledAppsChangedMessage
{
  v3 = +[WCDSystemMonitor sharedSystemMonitor];
  v4 = [v3 watchConnectivityServiceAvailable];

  if (v4)
  {
    v5 = wc_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v21 = "[WatchConnectivityDaemon sendInstalledAppsChangedMessage]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    v6 = objc_opt_new();
    [v6 setObject:@"WCDPayloadSendTypeInstalledAppsUpdated" forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
    v7 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    [v6 setObject:v7 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

    v8 = objc_opt_new();
    [v8 setVersion:1];
    v9 = [IDSProtobuf alloc];
    v10 = [v8 data];
    v11 = [v9 initWithProtobufData:v10 type:17 isResponse:0];

    v12 = [(WatchConnectivityDaemon *)self idsService];
    v13 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v18 = 0;
    v19 = 0;
    [v12 sendProtobuf:v11 toDestinations:v13 priority:300 options:v6 identifier:&v19 error:&v18];
    v14 = v19;
    v15 = v18;

    v16 = wc_log();
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10002A9BC();
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }
}

- (void)addCounterpartClientCommunicationIdentifier:(id)a3
{
  v4 = a3;
  if (![(NSSet *)self->_counterpartClientCommunicationIdentifiers containsObject:v4])
  {
    v5 = wc_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
    }

    v6 = [(NSSet *)self->_counterpartClientCommunicationIdentifiers setByAddingObject:v4];
    counterpartClientCommunicationIdentifiers = self->_counterpartClientCommunicationIdentifiers;
    self->_counterpartClientCommunicationIdentifiers = v6;

    [(WatchConnectivityDaemon *)self updateAllClientsWithValues];
  }
}

- (void)sendFirstUnlockState:(id)a3
{
  v4 = a3;
  v5 = +[WCDSystemMonitor sharedSystemMonitor];
  v6 = [v5 watchConnectivityServiceAvailable];

  if (v6)
  {
    v7 = objc_opt_new();
    [v7 setObject:@"WCDProtoCompanionFirstUnlockState" forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
    v8 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    [v7 setObject:v8 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

    v9 = [IDSProtobuf alloc];
    v10 = [v4 data];
    v11 = [v9 initWithProtobufData:v10 type:10 isResponse:0];

    v12 = [(WatchConnectivityDaemon *)self insecureIDSService];
    v13 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v19 = 0;
    v20 = 0;
    v14 = [v12 sendProtobuf:v11 toDestinations:v13 priority:300 options:v7 identifier:&v20 error:&v19];
    v15 = v20;
    v16 = v19;

    v17 = wc_log();
    v18 = v17;
    if (v14)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10002AB5C();
    }
  }
}

- (void)sendFirstUnlockRequest:(id)a3
{
  v4 = a3;
  v5 = +[WCDSystemMonitor sharedSystemMonitor];
  v6 = [v5 watchConnectivityServiceAvailable];

  if (v6)
  {
    v7 = objc_opt_new();
    [v7 setObject:@"WCDProtoCompanionFirstUnlockRequest" forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
    v8 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    [v7 setObject:v8 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

    v9 = [IDSProtobuf alloc];
    v10 = [v4 data];
    v11 = [v9 initWithProtobufData:v10 type:11 isResponse:0];

    v12 = [(WatchConnectivityDaemon *)self insecureIDSService];
    v13 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v19 = 0;
    v20 = 0;
    v14 = [v12 sendProtobuf:v11 toDestinations:v13 priority:200 options:v7 identifier:&v20 error:&v19];
    v15 = v20;
    v16 = v19;

    v17 = wc_log();
    v18 = v17;
    if (v14)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10002AB5C();
    }
  }
}

- (void)sendFirstUnlockAck:(id)a3
{
  v4 = a3;
  v5 = +[WCDSystemMonitor sharedSystemMonitor];
  v6 = [v5 watchConnectivityServiceAvailable];

  if (v6)
  {
    v7 = objc_opt_new();
    [v7 setObject:@"WCDProtoCompanionFirstUnlockAck" forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
    v8 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    [v7 setObject:v8 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

    v9 = [IDSProtobuf alloc];
    v10 = [v4 data];
    v11 = [v9 initWithProtobufData:v10 type:12 isResponse:0];

    v12 = [(WatchConnectivityDaemon *)self insecureIDSService];
    v13 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v19 = 0;
    v20 = 0;
    v14 = [v12 sendProtobuf:v11 toDestinations:v13 priority:200 options:v7 identifier:&v20 error:&v19];
    v15 = v20;
    v16 = v19;

    v17 = wc_log();
    v18 = v17;
    if (v14)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10002AB5C();
    }
  }
}

- (void)sendPairedSyncForComplicationsStartedWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[WCDSystemMonitor sharedSystemMonitor];
  v6 = [v5 watchConnectivityServiceAvailable];

  if (v6)
  {
    v7 = objc_opt_new();
    [v7 setObject:@"WCDProtoPairedSyncComplicationsStarted" forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
    v8 = [(WatchConnectivityDaemon *)self dataFromUUIDString:v4];

    [v7 setObject:v8 forKeyedSubscript:IDSSendMessageOptionUUIDKey];
    v9 = objc_opt_new();
    [v9 setVersion:1];
    v10 = [IDSProtobuf alloc];
    v11 = [v9 data];
    v12 = [v10 initWithProtobufData:v11 type:15 isResponse:0];

    v13 = [(WatchConnectivityDaemon *)self insecureIDSService];
    v14 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v22 = 0;
    v23 = 0;
    v15 = [v13 sendProtobuf:v12 toDestinations:v14 priority:200 options:v7 identifier:&v23 error:&v22];
    v16 = v23;
    v17 = v22;

    v18 = wc_log();
    v19 = v18;
    if (v15)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v25 = v16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10002AB5C();
    }
  }

  else
  {
    pairedSyncManager = self->_pairedSyncManager;
    v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    [(WCDPairedSyncManager *)pairedSyncManager handlePotentialPairedSyncForComplicationsFailedWithIdentifier:v4 error:?];
  }
}

- (void)handlePairedSyncComplicationsStartedAck:(id)a3 identifier:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([v8 hasSuccess])
  {
    v7 = [v8 success];
  }

  else
  {
    v7 = 1;
  }

  [(WCDPairedSyncManager *)self->_pairedSyncManager handlePairedSyncForComplicationsAckWithIdentifier:v6 success:v7];
}

- (void)sendMessage:(id)a3 withIdentifier:(id)a4 isResponse:(BOOL)a5 clientID:(id)a6 clientPairingID:(id)a7 errorHandler:(id)a8
{
  v11 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v30 = 0;
  v19 = [(WatchConnectivityDaemon *)self errorIfPreconditionsNotSatisfiedWithClientPairingID:v17 error:&v30];
  v20 = v30;
  if (v19)
  {
    v18[2](v18, v20);
  }

  else
  {
    v21 = wc_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = "NO";
      *buf = 138544130;
      v33 = 2080;
      v32 = v15;
      if (v11)
      {
        v22 = "YES";
      }

      v34 = v22;
      v35 = 2114;
      v36 = v16;
      v37 = 2114;
      v38 = v17;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "identifier: %{public}@, isResponse: %s, clientID: %{public}@, clientPairingID: %{public}@", buf, 0x2Au);
    }

    [(WCDFirstUnlockManager *)self->_firstUnlockManager requestFirstUnlockStateIfNeccessary];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100012CB0;
    v23[3] = &unk_100048F20;
    v24 = v16;
    v29 = v11;
    v25 = v15;
    v26 = self;
    v27 = v14;
    v28 = v18;
    [(WatchConnectivityDaemon *)self duetIdentifiersForCompanionAppID:v24 withCompletionHandler:v23];
  }
}

- (void)dequeuePendingMessagesForCommunicationID:(id)a3
{
  v4 = a3;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v26 = "[WatchConnectivityDaemon dequeuePendingMessagesForCommunicationID:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v6 = [(NSMutableDictionary *)self->_communicationIdentifierToClient objectForKeyedSubscript:v4];
  v7 = +[WCDSystemMonitor sharedSystemMonitor];
  v8 = [v7 pairingID];

  if (v6 && v8)
  {
    v9 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = self;
    v19 = v4;
    v10 = [(NSMutableDictionary *)self->_pendingMessageRequests objectForKeyedSubscript:v4];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [v15 pairingID];
          v17 = [v16 isEqual:v8];

          if (v17)
          {
            [v6 handleRequest:v15];
          }

          else
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    v4 = v19;
    [(NSMutableDictionary *)v18->_pendingMessageRequests setObject:v9 forKeyedSubscript:v19];
  }
}

- (void)updateApplicationContext:(id)a3 clientID:(id)a4 clientPairingID:(id)a5 errorHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v33 = 0;
  LODWORD(a6) = [(WatchConnectivityDaemon *)self errorIfPreconditionsNotSatisfiedWithClientPairingID:v12 error:&v33];
  v14 = v33;
  if (a6)
  {
    v13[2](v13, v14);
    v15 = v14;
  }

  else
  {
    v16 = wc_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v35 = v11;
      v36 = 2114;
      v37 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "clientID: %{public}@, clientPairingID: %{public}@", buf, 0x16u);
    }

    v17 = objc_opt_new();
    [v17 setObject:v11 forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
    v28 = v11;
    [v17 setObject:v11 forKeyedSubscript:IDSSendMessageOptionSubServiceKey];
    v18 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    [v17 setObject:v18 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

    [v17 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionNonWakingKey];
    [v17 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionBypassDuetKey];
    v19 = [IDSProtobuf alloc];
    v30 = v10;
    v20 = [v10 data];
    v21 = [v19 initWithProtobufData:v20 type:3 isResponse:0];

    v22 = [(WatchConnectivityDaemon *)self idsService];
    v23 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v31 = v14;
    v32 = 0;
    v29 = v21;
    LODWORD(v21) = [v22 sendProtobuf:v21 toDestinations:v23 priority:200 options:v17 identifier:&v32 error:&v31];
    v24 = v32;
    v15 = v31;

    v25 = wc_log();
    v26 = v25;
    if (v21)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v35 = v24;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "sent identifier: %{public}@", buf, 0xCu);
      }

      v13[2](v13, 0);
    }

    else
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10002A9BC();
      }

      v27 = [(WatchConnectivityDaemon *)self WCErrorForIDSError:v15];
      v13[2](v13, v27);
    }

    v10 = v30;

    v11 = v28;
  }
}

- (void)transferFile:(id)a3 withMetadata:(id)a4 identifier:(id)a5 forClient:(id)a6 destFilePath:(id)a7 errorHandler:(id)a8
{
  v14 = a3;
  v36 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v16 communicationID];
  v20 = [v16 clientCurrentPairingID];
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_100013D4C;
  v52 = sub_100013D5C;
  v53 = 0;
  obj = 0;
  LODWORD(a8) = [(WatchConnectivityDaemon *)self errorIfPreconditionsNotSatisfiedWithClientPairingID:v20 error:&obj];
  objc_storeStrong(&v53, obj);
  if (!a8)
  {
    v21 = [v14 fileDescriptor];
    v22 = v17;
    fclonefileat(v21, -2, [v17 fileSystemRepresentation], 0);
    v23 = wc_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v59 = v17;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "cloning or copying file to: %@", buf, 0xCu);
    }

    if ([v17 checkResourceIsReachableAndReturnError:0])
    {
      goto LABEL_10;
    }

    v24 = wc_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Failed to clone file, trying copying", buf, 2u);
    }

    v25 = v17;
    v26 = open([v17 fileSystemRepresentation], 1537, 384, v36);
    if (v26 == -1)
    {
      v29 = wc_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = __error();
        sub_10002AC68(v30, buf, v29);
      }

      v28 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
      v56 = NSUnderlyingErrorKey;
      v57 = v28;
      v31 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v32 = [NSError wcErrorWithCode:7001 userInfo:v31];

      v18[2](v18, v32);
      goto LABEL_17;
    }

    v27 = -[WatchConnectivityDaemon copyFile:to:](self, "copyFile:to:", [v14 fileDescriptor], v26);
    close(v26);
    if (v27)
    {
LABEL_10:
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100013D64;
      v37[3] = &unk_100048F48;
      v38 = v19;
      v39 = self;
      v40 = v15;
      v41 = v16;
      v42 = v17;
      v43 = v36;
      v46 = &v48;
      v45 = v18;
      v44 = v14;
      [(WatchConnectivityDaemon *)self duetIdentifiersForCompanionAppID:v38 withCompletionHandler:v37];

      v28 = v38;
    }

    else
    {
      v33 = wc_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_10002AC2C();
      }

      v28 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
      v54 = NSUnderlyingErrorKey;
      v55 = v28;
      v34 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v35 = [NSError wcErrorWithCode:7001 userInfo:v34];

      v18[2](v18, v35);
    }

LABEL_17:

    goto LABEL_18;
  }

  v18[2](v18, v49[5]);
LABEL_18:
  _Block_object_dispose(&v48, 8);
}

- (BOOL)copyFile:(int)a3 to:(int)a4
{
  do
  {
    v6 = read(a3, __buf, 0x1000uLL);
    if (v6 < 1)
    {
      return v6 == 0;
    }
  }

  while (write(a4, __buf, v6) == v6);
  v7 = wc_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: missing bytes", v9, 2u);
  }

  return 0;
}

- (void)cancelSendWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WatchConnectivityDaemon *)self idsService];
  v10 = 0;
  v6 = [v5 cancelIdentifier:v4 error:&v10];
  v7 = v10;

  v8 = wc_log();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10002AD58();
  }
}

- (void)handleIncomingFileURL:(id)a3 communicationID:(id)a4 pairingID:(id)a5 sendID:(id)a6 metadata:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = wc_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v12 path];
    *buf = 138544386;
    v19 = "YES";
    v31 = v18;
    if (!v16)
    {
      v19 = "NO";
    }

    v32 = 2114;
    v33 = v13;
    v34 = 2114;
    v35 = v14;
    v36 = 2114;
    v37 = v15;
    v38 = 2080;
    v39 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "fileURL: %{public}@, communicationID: %{public}@, pairingID: %{public}@, sendID: %{public}@, hasMetadata: %s", buf, 0x34u);
  }

  v20 = [(WatchConnectivityDaemon *)self applicationInfoForCommunicationID:v13];
  v21 = v20;
  if (v14 && v13 && v20)
  {
    v22 = [v16 objectForKeyedSubscript:@"u"];
    v29 = 0;
    v23 = [(WatchConnectivityDaemon *)self moveFileToClientInbox:v12 applicationInfo:v21 pairingID:v14 fileIdentifier:v15 userInfoData:v22 error:&v29];
    v24 = v29;

    if (v23)
    {
      v28 = v15;
      v25 = v12;
      v26 = [(NSMutableDictionary *)self->_communicationIdentifierToClient objectForKeyedSubscript:v13];
      [v26 handleIncomingFileWithPairingID:v14];
      v27 = [v26 connection];

      if (!v27)
      {
        [(WatchConnectivityDaemon *)self notifyDuetOfPendingContentForCompanionAppID:v13 forComplication:0];
      }

      v12 = v25;
      v15 = v28;
    }

    else
    {
      v26 = wc_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10002ADEC();
      }
    }
  }

  else
  {
    v24 = wc_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v31 = v13;
      v32 = 2114;
      v33 = v21;
      v34 = 2114;
      v35 = v14;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "missing required values. communicationID: %{public}@, applicationInfo: %{public}@, pairingID: %{public}@", buf, 0x20u);
    }
  }
}

- (BOOL)fileTransferExistsForPairingID:(id)a3 identifier:(id)a4 applicationInfo:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[WCDSystemMonitor sharedSystemMonitor];
  v11 = [v10 dataContainerURLForApplicationInfo:v9];

  if (v7 && v11)
  {
    v12 = WCFileTransfersURLInContainer();
    v13 = [v12 URLByAppendingPathComponent:v8 isDirectory:1];

    v14 = [v13 URLByAppendingPathComponent:WCFileTransferDataFileName isDirectory:0];

    v15 = [v14 checkResourceIsReachableAndReturnError:0];
  }

  else
  {
    v16 = wc_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10002AE88();
    }

    v15 = 0;
  }

  return v15;
}

- (void)persistFileTransferResult:(id)a3 pairingID:(id)a4 applicationInfo:(id)a5 identifier:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[WCDSystemMonitor sharedSystemMonitor];
  v14 = [v13 dataContainerURLForApplicationInfo:v11];

  if (v10 && v14)
  {
    v15 = WCFileTransfersURLInContainer();
    v16 = +[WCDIndexManager sharedManager];
    v17 = [v16 fileResultsIndexForApplication:v11 pairingID:v10];

    v18 = [v15 URLByAppendingPathComponent:v12 isDirectory:1];

    v19 = +[NSFileManager defaultManager];
    v36 = 0;
    v20 = [v19 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v36];
    v21 = v36;

    if (v20)
    {
      v22 = [v17 addContentIdentifier:v12];
      v23 = objc_opt_new();
      v24 = v23;
      if (v9 | v22)
      {
        if (v9)
        {
          v25 = v9;
        }

        else
        {
          v25 = v22;
        }

        [v23 setObject:v25 forKeyedSubscript:WCFileTransferResultErrorKey];
      }

      v35 = 0;
      v34 = v24;
      v26 = [NSKeyedArchiver archivedDataWithRootObject:v24 requiringSecureCoding:1 error:&v35];
      v27 = v35;
      v33 = v26;
      if (v26)
      {
        v31 = v17;
        v32 = [v18 URLByAppendingPathComponent:WCFileTransferResultsFileName isDirectory:0];
        v28 = [v26 writeToURL:? options:? error:?];
        v21 = v27;

        if (v28)
        {
          v29 = wc_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = @"SUCCESS";
            *buf = 138543874;
            if (v9)
            {
              v30 = v9;
            }

            v38 = v12;
            v39 = 2114;
            v40 = v11;
            v41 = 2114;
            v42 = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "id %{public}@: applicatio: %{public}@ result: %{public}@", buf, 0x20u);
          }

          v17 = v31;
        }

        else
        {
          v17 = v31;
          [v31 removeContentIdentifier:v12];
          v29 = wc_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_10002AF9C();
          }
        }
      }

      else
      {
        v32 = wc_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10002B038();
        }

        v21 = v27;
      }
    }

    else
    {
      v22 = wc_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10002AEF0();
      }
    }
  }

  else
  {
    v21 = wc_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10002AE88();
    }
  }
}

- (BOOL)notifyIfFileTransferWithCommunicationID:(id)a3 pairingID:(id)a4 sendID:(id)a5 success:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(WatchConnectivityDaemon *)self applicationInfoForCommunicationID:v12];
  v17 = [(WatchConnectivityDaemon *)self fileTransferExistsForPairingID:v13 identifier:v14 applicationInfo:v16];
  if (v17)
  {
    v18 = wc_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543618;
      v23 = v14;
      v24 = 2114;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "sendID: %{public}@, communicationID: %{public}@ found valid file transfer", &v22, 0x16u);
    }

    if (v8)
    {
      v19 = 0;
    }

    else
    {
      v19 = v15;
    }

    [(WatchConnectivityDaemon *)self persistFileTransferResult:v19 pairingID:v13 applicationInfo:v16 identifier:v14];
    v20 = [(NSMutableDictionary *)self->_communicationIdentifierToClient objectForKeyedSubscript:v12];
    [v20 handleFileResultWithPairingID:v13];
  }

  return v17;
}

- (BOOL)sendComplicationUserInfo:(id)a3 clientID:(id)a4 clientPairingID:(id)a5 identifier:(id)a6 errorHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[WCDPushKitManager sharedPushKitManager];
  [v17 releaseAssertionForBundleID:v13];

  v49 = 0;
  LODWORD(v17) = [(WatchConnectivityDaemon *)self errorIfPreconditionsNotSatisfiedWithClientPairingID:v14 error:&v49];
  v18 = v49;
  if (v17)
  {
    v16[2](v16, v18);
    v19 = 0;
  }

  else
  {
    v45 = v12;
    v20 = wc_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v51 = v13;
      v52 = 2114;
      v53 = v15;
      v54 = 2114;
      v55 = v14;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "clientID: %{public}@, identifier: %{public}@, clientPairingID: %{public}@", buf, 0x20u);
    }

    v21 = +[WCDSystemMonitor sharedSystemMonitor];
    v22 = [v21 duetComplications];
    v48 = v18;
    v23 = [v22 admissionCheckOnComplication:v13 forRemote:1 error:&v48];
    v24 = v48;

    if (v23)
    {
      v25 = [(WatchConnectivityDaemon *)self cellUsageAllowedForBundleID:v13];
      v26 = wc_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = @"not ";
        if (v25)
        {
          v27 = &stru_1000497E8;
        }

        *buf = 138412546;
        v51 = v27;
        v52 = 2112;
        v53 = v13;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Cell %@allowed for complication push for %@", buf, 0x16u);
      }

      v28 = [(__CFString *)v13 stringByAppendingString:@"-current-complication"];
      v29 = objc_opt_new();
      v43 = v28;
      [v29 setObject:v28 forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
      [v29 setObject:v13 forKeyedSubscript:IDSSendMessageOptionSubServiceKey];
      v30 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
      [v29 setObject:v30 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

      [v29 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionBypassDuetKey];
      if (v25)
      {
        [v29 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionAllowCloudDeliveryKey];
        [v29 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionNonCloudWakingKey];
      }

      v44 = v15;
      v31 = [(WatchConnectivityDaemon *)self dataFromUUIDString:v15];
      [v29 setObject:v31 forKeyedSubscript:IDSSendMessageOptionUUIDKey];

      v32 = [IDSProtobuf alloc];
      v33 = [v45 data];
      v34 = [v32 initWithProtobufData:v33 type:9 isResponse:0];

      v35 = [(WatchConnectivityDaemon *)self idsService];
      v36 = [NSSet setWithObject:IDSDefaultPairedDevice];
      v46 = v24;
      v47 = 0;
      v42 = v34;
      [v35 sendProtobuf:v34 toDestinations:v36 priority:200 options:v29 identifier:&v47 error:&v46];
      v37 = v47;
      v18 = v46;

      v38 = wc_log();
      v39 = v38;
      if (v18)
      {
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_10002A9BC();
        }

        v39 = [(WatchConnectivityDaemon *)self WCErrorForIDSError:v18];
        v16[2](v16, v39);
      }

      else if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v51 = v37;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      v15 = v44;

      v19 = 1;
    }

    else
    {
      v40 = wc_log();
      v18 = v40;
      if (v24)
      {
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_10002B0D4();
        }

        v19 = 0;
        v18 = v24;
      }

      else
      {
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v51 = v13;
          v52 = 2114;
          v53 = v15;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "clientID: %{public}@, identifier: %{public}@, rejected by admissions check", buf, 0x16u);
        }

        v19 = 0;
      }
    }

    v12 = v45;
  }

  return v19;
}

- (void)handleIncomingUserInfoTransferProto:(id)a3 communicationID:(id)a4 pairingID:(id)a5 sendID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = wc_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v10 transferIdentifier];
    *buf = 138544130;
    v27 = v11;
    v28 = 2114;
    v29 = v12;
    v30 = 2114;
    v31 = v13;
    v32 = 2114;
    v33 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "communicationID: %{public}@, pairingID: %{public}@, sendID: %{public}@, userInfoID: %{public}@", buf, 0x2Au);
  }

  v16 = [WCSessionUserInfoTransfer alloc];
  v17 = [v10 transferIdentifier];
  v18 = [v16 initWithTranferIdentifier:v17 complicationTransferIdentifier:v13 currentComplication:1];

  v19 = [v10 clientData];
  v25 = 0;
  v20 = [v18 updateUserInfoData:v19 error:&v25];
  v21 = v25;

  if ((v20 & 1) == 0)
  {
    v22 = wc_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10002B168();
    }
  }

  v23 = [(WatchConnectivityDaemon *)self applicationInfoForCommunicationID:v11];
  [(WatchConnectivityDaemon *)self storeComplicationUserInfoTransfer:v18 applicationInfo:v23 pairingID:v12];
  v24 = [(NSMutableDictionary *)self->_communicationIdentifierToClient objectForKeyedSubscript:v11];
  [v24 handleIncomingUserInfoWithPairingID:v12];
  [(WatchConnectivityDaemon *)self handleComplicationPingForCommunicationIdentifier:v11];
}

- (BOOL)errorIfPreconditionsNotSatisfiedWithClientPairingID:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[WCDSystemMonitor sharedSystemMonitor];
  v7 = [v6 watchConnectivityServiceAvailable];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [NSError wcErrorWithCode:7001];
  }

  v9 = +[WCDSystemMonitor sharedSystemMonitor];
  v10 = [v9 pairingID];
  v11 = [v5 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    v12 = [NSError wcErrorWithCode:7014];

    v8 = v12;
  }

  if (a4)
  {
    v13 = v8;
    *a4 = v8;
  }

  return v8 != 0;
}

- (void)transferUserInfo:(id)a3 withMetadata:(id)a4 identifier:(id)a5 clientID:(id)a6 clientPairingID:(id)a7 errorHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v30 = 0;
  v20 = [(WatchConnectivityDaemon *)self errorIfPreconditionsNotSatisfiedWithClientPairingID:v18 error:&v30];
  v21 = v30;
  if (v20)
  {
    v19[2](v19, v21);
  }

  else
  {
    v22 = wc_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v32 = v16;
      v33 = 2114;
      v34 = v17;
      v35 = 2114;
      v36 = v18;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "identifier: %{public}@, clientID: %{public}@, pairingID: %{public}@", buf, 0x20u);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000156D8;
    v23[3] = &unk_100048F70;
    v24 = v17;
    v25 = self;
    v26 = v16;
    v27 = v14;
    v28 = v15;
    v29 = v19;
    [(WatchConnectivityDaemon *)self duetIdentifiersForCompanionAppID:v24 withCompletionHandler:v23];
  }
}

- (void)handleIncomingUserInfoURL:(id)a3 communicationID:(id)a4 pairingID:(id)a5 sendID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = wc_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v10 path];
    v21 = 138544130;
    v22 = v15;
    v23 = 2114;
    v24 = v11;
    v25 = 2114;
    v26 = v12;
    v27 = 2114;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "userInfoURL: %{public}@, communicationID: %{public}@, pairingID: %{public}@, sendID: %{public}@", &v21, 0x2Au);
  }

  v16 = [(WatchConnectivityDaemon *)self applicationInfoForCommunicationID:v11];
  v17 = v16;
  if (v11 && v16)
  {
    v18 = [(WatchConnectivityDaemon *)self moveUserInfoToClientInbox:v10 applicationInfo:v16 pairingID:v12 userInfoIdentifier:v13];
    if (v18)
    {
      v19 = [(NSMutableDictionary *)self->_communicationIdentifierToClient objectForKeyedSubscript:v11];
      [v19 handleIncomingUserInfoWithPairingID:v12];
      v20 = [v19 connection];

      if (!v20)
      {
        [(WatchConnectivityDaemon *)self notifyDuetOfPendingContentForCompanionAppID:v11 forComplication:0];
      }
    }
  }

  else
  {
    v18 = wc_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v17;
      v25 = 2114;
      v26 = v12;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "missing required values. communicationID: %{public}@, application: %{public}@, pairingID: %{public}@", &v21, 0x20u);
    }
  }
}

- (id)complicationUserInfoPathInDataContainer:(id)a3 pairingID:(id)a4
{
  v4 = WCTransferredUserInfoInboxURLInContainer();
  v5 = [v4 URLByAppendingPathComponent:WCComplicationUserInfoIDFileName isDirectory:0];
  v14 = 0;
  v6 = [NSData dataWithContentsOfURL:v5 options:0 error:&v14];
  v7 = v14;
  if (v6)
  {
    v8 = [[NSString alloc] initWithData:v6 encoding:4];
    v9 = [v4 URLByAppendingPathComponent:v8 isDirectory:1];
    v10 = [v9 URLByAppendingPathComponent:WCUserInfoTransferObjectFileName isDirectory:0];
    v11 = [v10 path];

    v12 = wc_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "loaded complication user info path %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)notifyIfUserInfoTransferWithCommunicationID:(id)a3 pairingID:(id)a4 sendID:(id)a5 success:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(WatchConnectivityDaemon *)self applicationInfoForCommunicationID:v12];
  if (v8)
  {
    v17 = WCTransferIdentifierFromComplicationIdentifier();
    if ([(WatchConnectivityDaemon *)self userInfoExistsForPairingID:v13 identifier:v17 applicationInfo:v16])
    {
      v18 = wc_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138543618;
        v25 = v14;
        v26 = 2114;
        v27 = v12;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "sendID: %{public}@, communicationID: %{public}@ found valid complication user info", &v24, 0x16u);
      }

      [(WatchConnectivityDaemon *)self cancelSendWithIdentifier:v17];
      goto LABEL_9;
    }
  }

  if (![(WatchConnectivityDaemon *)self userInfoExistsForPairingID:v13 identifier:v14 applicationInfo:v16])
  {
    v22 = 0;
    v17 = v14;
    goto LABEL_16;
  }

  v17 = v14;
LABEL_9:
  v19 = wc_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138543618;
    v25 = v17;
    v26 = 2114;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "sendID: %{public}@, communicationID: %{public}@ found valid user info", &v24, 0x16u);
  }

  if (v8)
  {
    v20 = 0;
  }

  else
  {
    v20 = v15;
  }

  [(WatchConnectivityDaemon *)self persistUserInfoTransferResult:v20 pairingID:v13 applicationInfo:v16 identifier:v17];
  v21 = [(NSMutableDictionary *)self->_communicationIdentifierToClient objectForKeyedSubscript:v12];
  [v21 handleUserInfoResultWithPairingID:v13];

  v22 = 1;
LABEL_16:

  return v22;
}

- (BOOL)userInfoExistsForPairingID:(id)a3 identifier:(id)a4 applicationInfo:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[WCDSystemMonitor sharedSystemMonitor];
  v11 = [v10 dataContainerURLForApplicationInfo:v9];

  if (v7 && v11)
  {
    v12 = WCUserInfoTransfersInContainer();
    v13 = [v12 URLByAppendingPathComponent:v8 isDirectory:1];

    v14 = [v13 URLByAppendingPathComponent:WCUserInfoTransferObjectFileName isDirectory:0];

    v15 = [v14 checkResourceIsReachableAndReturnError:0];
  }

  else
  {
    v16 = wc_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10002AE88();
    }

    v15 = 0;
  }

  return v15;
}

- (void)persistUserInfoTransferResult:(id)a3 pairingID:(id)a4 applicationInfo:(id)a5 identifier:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[WCDSystemMonitor sharedSystemMonitor];
  v14 = [v13 dataContainerURLForApplicationInfo:v11];

  if (v10 && v14)
  {
    v15 = WCUserInfoTransfersInContainer();
    v16 = +[WCDIndexManager sharedManager];
    v17 = [v16 userInfoResultsIndexForApplication:v11 pairingID:v10];

    v18 = [v15 URLByAppendingPathComponent:v12 isDirectory:1];

    v19 = +[NSFileManager defaultManager];
    v36 = 0;
    v20 = [v19 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v36];
    v21 = v36;

    if (v20)
    {
      v22 = [v17 addContentIdentifier:v12];
      v23 = objc_opt_new();
      v24 = v23;
      if (v9 | v22)
      {
        if (v9)
        {
          v25 = v9;
        }

        else
        {
          v25 = v22;
        }

        [v23 setObject:v25 forKeyedSubscript:WCUserInfoTransferResultErrorKey];
      }

      v35 = 0;
      v34 = v24;
      v26 = [NSKeyedArchiver archivedDataWithRootObject:v24 requiringSecureCoding:1 error:&v35];
      v27 = v35;
      v33 = v26;
      if (v26)
      {
        v31 = v17;
        v32 = [v18 URLByAppendingPathComponent:WCUserInfoTransferResultsFileName isDirectory:0];
        v28 = [v26 writeToURL:? options:? error:?];
        v21 = v27;

        if (v28)
        {
          v29 = wc_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = @"SUCCESS";
            *buf = 138543874;
            if (v9)
            {
              v30 = v9;
            }

            v38 = v12;
            v39 = 2114;
            v40 = v11;
            v41 = 2114;
            v42 = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "id %{public}@: application: %{public}@ result: %{public}@", buf, 0x20u);
          }

          v17 = v31;
        }

        else
        {
          v17 = v31;
          [v31 removeContentIdentifier:v12];
          v29 = wc_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_10002B318();
          }
        }
      }

      else
      {
        v32 = wc_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10002B3B4();
        }

        v21 = v27;
      }
    }

    else
    {
      v22 = wc_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10002B26C();
      }
    }
  }

  else
  {
    v21 = wc_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10002AE88();
    }
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  v10 = a6;
  v12 = a5;
  v13 = a7;
  v14 = a8;
  v15 = [v14 serviceIdentifier];
  v16 = wc_log();
  v17 = v16;
  if (v10)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v36 = v12;
      v37 = 2114;
      v38 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "identifier: %{public}@, communicationID: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v28 = v13;
      v27 = NSPrintF();
      *buf = 138543874;
      v36 = v12;
      v37 = 2114;
      v38 = v15;
      v39 = 2114;
      v40 = v27;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "failed. identifier: %{public}@, communicationID: %{public}@ due to %{public}@", buf, 0x20u);
    }

    v18 = [(WatchConnectivityDaemon *)self idsInsecureServiceIdentifier];
    v19 = [v15 isEqual:v18];

    if (v19)
    {
      [(WCDPairedSyncManager *)self->_pairedSyncManager handlePotentialPairedSyncForComplicationsFailedWithIdentifier:v12 error:v13];
    }
  }

  v20 = [(WatchConnectivityDaemon *)self idsServiceIdentifier];
  if ([v15 isEqual:v20])
  {
    goto LABEL_18;
  }

  v21 = [(WatchConnectivityDaemon *)self idsInsecureServiceIdentifier];
  v22 = [v15 isEqual:v21];

  if ((v22 & 1) == 0)
  {
    v23 = [v14 originalDestinationDevice];
    v20 = [(WatchConnectivityDaemon *)self pairingIDForIDSUniqueDeviceID:v23];

    v24 = [(WatchConnectivityDaemon *)self WCErrorForIDSError:v13];
    v25 = [(NSMutableDictionary *)self->_sendIdentifierToHandler objectForKeyedSubscript:v12];
    if (v25)
    {
      v26 = wc_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v36 = v12;
        v37 = 2114;
        v38 = v15;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "identifier: %{public}@, communicationID: %{public}@ has a completion handler, invoking it", buf, 0x16u);
      }

      (v25)[2](v25, v24);
      [(NSMutableDictionary *)self->_sendIdentifierToHandler removeObjectForKey:v12];
    }

    else if (v15)
    {
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10001685C;
      v29[3] = &unk_100048F98;
      v29[4] = self;
      v30 = v15;
      v31 = v20;
      v32 = v12;
      v34 = v10;
      v33 = v24;
      [(WatchConnectivityDaemon *)self performBlockWhenReady:v29];
    }

LABEL_18:
  }
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a7;
  v14 = a6;
  v15 = [v13 serviceIdentifier];
  v16 = [v11 deviceForFromID:v14];

  v17 = [v16 uniqueIDOverride];

  v18 = [(WatchConnectivityDaemon *)self pairingIDForIDSUniqueDeviceID:v17];
  v19 = wc_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = &stru_1000497E8;
    if (v15)
    {
      v20 = v15;
    }

    v59 = v20;
    v62 = v17;
    v21 = -[WatchConnectivityDaemon descriptionFromPayloadSendType:](self, "descriptionFromPayloadSendType:", [v12 type]);
    v22 = self;
    v23 = [v12 type];
    v24 = [v12 data];
    *buf = 138544130;
    v85 = v59;
    v86 = 2080;
    v87 = v21;
    v88 = 1024;
    v89 = v23;
    self = v22;
    v90 = 2048;
    v91 = [v24 length];
    v17 = v62;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "communicationID: %{public}@, WCDPayloadSendType: %s (%d), protobufSize: %ld", buf, 0x26u);
  }

  v25 = [v12 type];
  if (v25 > 9)
  {
    if (v25 <= 14)
    {
      switch(v25)
      {
        case 10:
          firstUnlockManager = self->_firstUnlockManager;
          [v12 data];
          v29 = v28 = v18;
          [(WCDFirstUnlockManager *)firstUnlockManager handleFirstUnlockState:v29];
          goto LABEL_38;
        case 11:
          v48 = self->_firstUnlockManager;
          [v12 data];
          v29 = v28 = v18;
          [(WCDFirstUnlockManager *)v48 handleFirstUnlockRequest:v29];
          goto LABEL_38;
        case 12:
          v27 = self->_firstUnlockManager;
          [v12 data];
          v29 = v28 = v18;
          [(WCDFirstUnlockManager *)v27 handleFirstUnlockAck:v29];
LABEL_38:

          v18 = v28;
          goto LABEL_39;
      }

LABEL_36:
      v28 = v18;
      v29 = wc_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10002B4D0(v12);
      }

      goto LABEL_38;
    }

    switch(v25)
    {
      case 15:
        v38 = [v13 outgoingResponseIdentifier];
        [(WatchConnectivityDaemon *)self handlePairedSyncComplicationsStartedWithIdentifier:v38];
        break;
      case 16:
        v51 = [WCDProtoPairedSyncComplicationsStartedAck alloc];
        v52 = [v12 data];
        v38 = [(WCDProtoPairedSyncComplicationsStartedAck *)v51 initWithData:v52];

        v53 = [v13 incomingResponseIdentifier];
        [(WatchConnectivityDaemon *)self handlePairedSyncComplicationsStartedAck:v38 identifier:v53];

        break;
      case 17:
        [(WatchConnectivityDaemon *)self handleInstalledAppsChangedMessage];
        goto LABEL_39;
      default:
        goto LABEL_36;
    }

LABEL_35:

    goto LABEL_39;
  }

  if (v25 > 3)
  {
    if (v25 != 4)
    {
      if (v25 != 5)
      {
        if (v25 == 9)
        {
          v65[0] = _NSConcreteStackBlock;
          v65[1] = 3221225472;
          v65[2] = sub_10001735C;
          v65[3] = &unk_100049038;
          v66 = v12;
          v67 = self;
          v68 = v15;
          v69 = v18;
          v70 = v13;
          [(WatchConnectivityDaemon *)self service:v11 context:v70 performBlockWhenReady:v65];

          v26 = v66;
          goto LABEL_45;
        }

        goto LABEL_36;
      }

      v49 = [WCDProtoDaemonClientsInformation alloc];
      v50 = [v12 data];
      v38 = [(WCDProtoDaemonClientsInformation *)v49 initWithData:v50];

      [(WatchConnectivityDaemon *)self handleDaemonClientsInformation:v38];
      goto LABEL_35;
    }

    [(WatchConnectivityDaemon *)self handleCounterpartDaemonDidStart];
LABEL_39:
    [v11 sendAckForMessageWithContext:v13];
    goto LABEL_46;
  }

  if (v25 == 1)
  {
    v63 = self;
    v30 = [WCDProtoMessageRequest alloc];
    v60 = v12;
    v31 = [v12 data];
    v32 = [(WCDProtoMessageRequest *)v30 initWithData:v31];

    v33 = [WCMessageRequest alloc];
    v34 = [v13 outgoingResponseIdentifier];
    v35 = [(WCDProtoMessageRequest *)v32 clientData];
    v36 = [v33 initWithPairingID:v18 identifier:v34 data:v35 dictionaryMessage:-[WCDProtoMessageRequest dictionaryMessage](v32 expectsResponse:{"dictionaryMessage"), -[WCDProtoMessageRequest expectsResponse](v32, "expectsResponse")}];

    if ([(WCDProtoMessageRequest *)v32 hasIsInUse])
    {
      v57 = [(WCDProtoMessageRequest *)v32 isInUse];
    }

    else
    {
      v57 = 1;
    }

    v12 = v60;
    v58 = v32;
    if ([(WCDProtoMessageRequest *)v32 hasCoreLocationData])
    {
      v54 = [(WCDProtoMessageRequest *)v32 coreLocationData];
    }

    else
    {
      v54 = 0;
    }

    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_1000171F4;
    v79[3] = &unk_100048FC0;
    v79[4] = v63;
    v80 = v36;
    v83 = v57;
    v81 = v15;
    v82 = v54;
    v55 = v54;
    v56 = v36;
    [(WatchConnectivityDaemon *)v63 service:v11 context:v13 performBlockWhenReady:v79];

    v26 = v58;
    goto LABEL_45;
  }

  if (v25 != 2)
  {
    if (v25 == 3)
    {
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_100017260;
      v71[3] = &unk_100049010;
      v72 = v12;
      v73 = self;
      v74 = v15;
      v75 = v18;
      [(WatchConnectivityDaemon *)self service:v11 context:v13 performBlockWhenReady:v71];

      v26 = v72;
LABEL_45:

      goto LABEL_46;
    }

    goto LABEL_36;
  }

  v64 = self;
  v39 = [WCDProtoMessageResponse alloc];
  v61 = v12;
  v40 = [v12 data];
  v41 = [(WCDProtoMessageResponse *)v39 initWithData:v40];

  v42 = [WCMessageResponse alloc];
  v43 = [v13 incomingResponseIdentifier];
  v44 = [(WCDProtoMessageResponse *)v41 clientData];
  v45 = [v42 initWithPairingID:v18 identifier:v43 data:v44 dictionaryMessage:{-[WCDProtoMessageResponse dictionaryMessage](v41, "dictionaryMessage")}];

  if ([(WCDProtoMessageResponse *)v41 errorCode])
  {
    v46 = [NSError wcErrorFromReceivedCode:[(WCDProtoMessageResponse *)v41 errorCode]];
    [v45 setError:v46];
  }

  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_100017208;
  v76[3] = &unk_100048FE8;
  v76[4] = v64;
  v77 = v15;
  v78 = v45;
  v47 = v45;
  [(WatchConnectivityDaemon *)v64 service:v11 context:v13 performBlockWhenReady:v76];

  v12 = v61;
LABEL_46:
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v13 = a3;
  v31 = a5;
  v14 = a6;
  v15 = a8;
  v16 = a7;
  v17 = wc_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v33 = "[WatchConnectivityDaemon service:account:incomingResourceAtURL:metadata:fromID:context:]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v18 = [v15 serviceIdentifier];
  v19 = [v15 outgoingResponseIdentifier];
  v20 = [v13 deviceForFromID:v16];

  v21 = [v20 uniqueIDOverride];

  v22 = [(WatchConnectivityDaemon *)self pairingIDForIDSUniqueDeviceID:v21];
  if (v14 && ([v14 objectForKeyedSubscript:@"t"], v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
  {
    v30 = self;
    v24 = v18;
    v25 = [v14 objectForKeyedSubscript:@"t"];
    v26 = [v25 integerValue];

    if (v26 == 2)
    {
      v27 = v31;
      v18 = v24;
      [(WatchConnectivityDaemon *)v30 handleIncomingUserInfoURL:v31 communicationID:v24 pairingID:v22 sendID:v19];
    }

    else
    {
      v18 = v24;
      if (v26 == 1)
      {
        v27 = v31;
        [(WatchConnectivityDaemon *)v30 handleIncomingFileURL:v31 communicationID:v24 pairingID:v22 sendID:v19 metadata:v14];
      }

      else
      {
        v29 = wc_log();
        v27 = v31;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10002B558(v14, @"t");
        }
      }
    }
  }

  else
  {
    v28 = wc_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10002B5EC();
    }

    v27 = v31;
  }

  [v13 sendAckForMessageWithContext:v15];
}

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
{
  v5 = a3;
  v6 = wc_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[WatchConnectivityDaemon service:connectedDevicesChanged:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", &v7, 0xCu);
  }

  [(WatchConnectivityDaemon *)self updateActiveDeviceConnectedForService:v5];
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v5 = a3;
  v6 = wc_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[WatchConnectivityDaemon service:devicesChanged:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", &v7, 0xCu);
  }

  [(WatchConnectivityDaemon *)self updateActiveDeviceConnectedForService:v5];
}

- (void)updateActiveDeviceConnectedForService:(id)a3
{
  v3 = a3;
  v5 = +[WCDSystemMonitor sharedSystemMonitor];
  v4 = [v3 isActiveDeviceConnected];

  [v5 setActiveDeviceConnected:v4];
}

- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(WatchConnectivityDaemon *)self idsService];
  v12 = [v10 isEqual:v11];

  if (v12)
  {
    v13 = [(WatchConnectivityDaemon *)self idsServiceIdentifier];
    v14 = +[WCDSystemMonitor sharedSystemMonitor];
    [v14 handleSwitchStartedByIDS];
  }

  else
  {
    v13 = [(WatchConnectivityDaemon *)self idsInsecureServiceIdentifier];
  }

  v15 = wc_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v8 name];
    v17 = 138543618;
    v18 = v13;
    v19 = 2114;
    v20 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@. Acknowledging switch with IDS", &v17, 0x16u);
  }

  v9[2](v9);
}

- (IDSDevice)activeIDSDevice
{
  v2 = [(WatchConnectivityDaemon *)self idsService];
  v3 = [v2 activeIDSDevice];

  return v3;
}

- (void)launchCompanionAppID:(id)a3 isInUse:(BOOL)a4 coreLocationData:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = wc_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "NO";
    if (v6)
    {
      v11 = "YES";
    }

    *buf = 138543618;
    v22 = v8;
    v23 = 2080;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "companionAppIdentifier: %{public}@, isInUse: %s", buf, 0x16u);
  }

  v12 = +[AVSystemController sharedAVSystemController];
  [v12 setAttribute:v8 forKey:AVSystemController_AllowAppToInitiatePlaybackTemporarilyAttribute error:0];

  if (v6)
  {
    [(WatchConnectivityDaemon *)self setCLTransientAuthorization:v8 withCoreLocationData:v9];
  }

  v13 = +[FBSSystemService sharedService];
  v19 = FBSOpenApplicationOptionKeyActivateSuspended;
  v20 = &__kCFBooleanTrue;
  v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100017C70;
  v16[3] = &unk_1000490B0;
  v17 = v8;
  v18 = self;
  v15 = v8;
  [v13 openApplication:v15 options:v14 withResult:v16];
}

- (void)acquireBackgroundAssertionForIdentifier:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = [(NSMutableDictionary *)self->_companionAppAssertions objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [BKSProcessAssertion alloc];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000180AC;
    v16 = &unk_1000490D8;
    v18 = &v19;
    v8 = v5;
    v17 = v8;
    v9 = [v7 initWithBundleIdentifier:v4 flags:1 reason:16 name:@"WatchConnectivity Background Launch" withHandler:&v13];
    v10 = dispatch_time(0, 3000000000);
    if (dispatch_semaphore_wait(v8, v10))
    {
      v11 = wc_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10002B6A0();
      }
    }

    if (*(v20 + 24) == 1)
    {
      [(WatchConnectivityDaemon *)self handleAquiredAssertion:v9 identifier:v4, v13, v14, v15, v16];
    }

    else
    {
      v12 = wc_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10002B6DC();
      }
    }
  }

  _Block_object_dispose(&v19, 8);
}

- (void)cleanUpProcessAssertionForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_companionAppAssertions objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"process-assertion"];
    if (v7)
    {
      v8 = v7;
      v9 = wc_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "companionAppIdentifier: %{public}@ removing old process assertion", &v13, 0xCu);
      }

      [v8 invalidate];
    }

    v10 = [v6 objectForKeyedSubscript:@"process-assertion-timer"];
    if (v10)
    {
      v11 = v10;
      v12 = wc_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "companionAppIdentifier: %{public}@ canceling old timer", &v13, 0xCu);
      }

      dispatch_source_cancel(v11);
    }

    [(NSMutableDictionary *)self->_companionAppAssertions removeObjectForKey:v4];
  }
}

- (void)handleAquiredAssertion:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = wc_log();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "companionAppIdentifier: %{public}@, acquired process assertion", buf, 0xCu);
    }

    v10 = [(WatchConnectivityDaemon *)self createBackgroundAssertionTimerForIdentifier:v7];
    v9 = v10;
    if (v10)
    {
      v16[0] = @"process-assertion";
      v16[1] = @"process-assertion-timer";
      v17[0] = v6;
      v17[1] = v10;
      v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
      [(NSMutableDictionary *)self->_companionAppAssertions setObject:v11 forKeyedSubscript:v7];

      dispatch_resume(v9);
      objc_initWeak(buf, self->_companionAppAssertions);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100018488;
      v13[3] = &unk_100048D00;
      objc_copyWeak(&v15, buf);
      v14 = v7;
      [v6 setInvalidationHandler:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }

    else
    {
      v12 = wc_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10002B74C();
      }
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    sub_10002B7BC();
  }
}

- (id)createBackgroundAssertionTimerForIdentifier:(id)a3
{
  v4 = a3;
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  v6 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000185D4;
  v9[3] = &unk_100048AE8;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_source_set_event_handler(v5, v9);

  return v5;
}

- (void)updateAllClientsWithValues
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->_communicationIdentifierToClient allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(WatchConnectivityDaemon *)self updateClientWithValues:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)updateClientWithValues:(id)a3
{
  v8 = a3;
  v4 = +[WCDSystemMonitor sharedSystemMonitor];
  v5 = [v4 initialSetUpComplete];

  if (v5)
  {
    counterpartClientCommunicationIdentifiers = self->_counterpartClientCommunicationIdentifiers;
    v7 = [v8 communicationID];
    [v8 setCounterpartCanEstablishXPCConnection:{-[NSSet containsObject:](counterpartClientCommunicationIdentifiers, "containsObject:", v7)}];

    [v8 setPrivileged:0];
  }
}

- (const)descriptionFromPayloadSendType:(unsigned __int16)a3
{
  if ((a3 - 1) > 0x10)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_100049120[(a3 - 1)];
  }
}

- (id)dataFromUUIDString:(id)a3
{
  v7[0] = 0;
  v7[1] = 0;
  v3 = a3;
  v4 = [[NSUUID alloc] initWithUUIDString:v3];

  [v4 getUUIDBytes:v7];
  v5 = [NSData dataWithBytes:v7 length:16];

  return v5;
}

- (id)pairingIDForIDSUniqueDeviceID:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(WatchConnectivityDaemon *)self idsService];
  v6 = [v5 devices];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 uniqueIDOverride];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v13 = +[WCDSystemMonitor sharedSystemMonitor];
          v14 = [v10 nsuuid];
          v7 = [v13 pairingIDForBTUUID:v14];

          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)WCErrorForIDSError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqual:IDSErrorDomain];

  v6 = v3;
  v7 = v6;
  v8 = v6;
  if (!v5)
  {
    goto LABEL_26;
  }

  if (!v6)
  {
    v9 = 0;
    goto LABEL_24;
  }

  v9 = v6;
  do
  {
    v10 = [v9 code];
    if (v10 <= 26)
    {
      if (v10 == 18)
      {
        v26 = NSUnderlyingErrorKey;
        v27 = v7;
        v11 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v12 = 7009;
        goto LABEL_14;
      }

      if (v10 != 23)
      {
        goto LABEL_12;
      }

LABEL_11:
      v24 = NSUnderlyingErrorKey;
      v25 = v7;
      v11 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v12 = 7017;
      goto LABEL_14;
    }

    if (v10 == 38)
    {
      goto LABEL_11;
    }

    if (v10 != 27)
    {
LABEL_12:
      v11 = [v9 userInfo];
      v13 = [v11 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v8 = 0;
      v9 = v13;
      goto LABEL_15;
    }

    v28 = NSUnderlyingErrorKey;
    v29 = v7;
    v11 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v12 = 7015;
LABEL_14:
    v8 = [NSError wcErrorWithCode:v12 userInfo:v11];
LABEL_15:

    if (v8)
    {
      v14 = 1;
    }

    else
    {
      v14 = v9 == 0;
    }
  }

  while (!v14);
  if (!v8)
  {
LABEL_24:
    v18 = NSUnderlyingErrorKey;
    v19 = v7;
    v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v8 = [NSError wcErrorWithCode:7001 userInfo:v15];
    goto LABEL_25;
  }

  v15 = wc_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v7 description];
    *buf = 138543618;
    v21 = v16;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "error: (%{public}@) converted to (%{public}@)", buf, 0x16u);
  }

LABEL_25:

LABEL_26:

  return v8;
}

- (id)applicationInfoForCommunicationID:(id)a3
{
  v3 = a3;
  v4 = +[WCDSystemMonitor sharedSystemMonitor];
  v5 = [v4 applicationWorkspace];
  v6 = [v5 applicationInfoForBundleIdentifier:v3 type:1 allowPlaceholder:1];

  return v6;
}

- (void)duetIdentifiersForCompanionAppID:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[WCDSystemMonitor sharedSystemMonitor];
  v8 = [v7 applicationWorkspace];
  v9 = [v8 applicationInfoForBundleIdentifier:v5 type:1];

  if (v9)
  {
    v10 = objc_opt_new();
    [v10 addObject:v5];
    v11 = [v9 watchAppBundleIdentifier];
    [v10 addObject:v11];

    v12 = [v9 watchExtensionBundleIdentifier];
    if (v12)
    {
      [v10 addObject:v12];
    }

    v13 = wc_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "gathered duet identifiers %{public}@", &v16, 0xCu);
    }

    v14 = [v10 copy];
    v6[2](v6, v14);
  }

  else
  {
    v15 = wc_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10002B830();
    }

    v6[2](v6, 0);
    v10 = v6;
  }
}

- (BOOL)cellUsageAllowedForBundleID:(id)a3
{
  v3 = a3;
  v4 = _CTServerConnectionCreateOnTargetQueue();
  if (v4)
  {
    _CTServerConnectionCopyCellularUsagePolicy();
    CFRelease(v4);
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)moveFileToClientInbox:(id)a3 applicationInfo:(id)a4 pairingID:(id)a5 fileIdentifier:(id)a6 userInfoData:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = wc_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v13 path];
    v20 = "YES";
    *buf = 138544130;
    v73 = v19;
    if (!v17)
    {
      v20 = "NO";
    }

    v74 = 2114;
    v75 = v14;
    v76 = 2114;
    v77 = v16;
    v78 = 2080;
    v79 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "incomingFileURL: %{public}@, application: %{public}@, fileIdentifier: %{public}@, hasUserInfoData: %s", buf, 0x2Au);
  }

  v65 = v17;

  v21 = +[WCDSystemMonitor sharedSystemMonitor];
  v22 = [v21 dataContainerURLForApplicationInfo:v14];

  if (v15 && v22)
  {
    v23 = WCTransferredFilesURLInContainer();
    v24 = [v23 URLByAppendingPathComponent:v16 isDirectory:1];

    v25 = [v13 lastPathComponent];
    v63 = [v24 URLByAppendingPathComponent:v25 isDirectory:0];

    v62 = WCSessionFilesURLInContainer();
    v64 = [v62 URLByAppendingPathComponent:v16 isDirectory:1];
    if ([v63 checkResourceIsReachableAndReturnError:0])
    {
      v26 = wc_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10002BC00();
      }

      v27 = 0;
      v28 = 0;
      goto LABEL_34;
    }

    v29 = +[NSFileManager defaultManager];
    v71 = 0;
    v30 = [v29 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:&v71];
    v28 = v71;

    if (v30)
    {
      v61 = a8;
      v31 = +[NSFileManager defaultManager];
      v70 = v28;
      v32 = [v31 createDirectoryAtURL:v64 withIntermediateDirectories:1 attributes:0 error:&v70];
      v33 = v70;

      if (v32)
      {
        v34 = +[NSFileManager defaultManager];
        v69 = v33;
        v35 = [v34 moveItemAtURL:v13 toURL:v63 error:&v69];
        v28 = v69;

        if (v35)
        {
          v36 = [WCSessionFile alloc];
          v37 = [v63 relativePath];
          v27 = [v36 initWithIdentifier:v16 relativePath:v37];

          if (v65)
          {
            v68 = v28;
            [v27 updateUserInfoData:v65 error:&v68];
            v38 = v68;

            v28 = v38;
          }

          a8 = v61;
          if (!v28)
          {
            v45 = +[WCDIndexManager sharedManager];
            v46 = [v45 fileIndexForApplication:v14 pairingID:v15];

            v47 = [v27 fileIdentifier];
            v28 = [v46 addContentIdentifier:v47];

            if (v28)
            {
              v59 = v46;
              v48 = wc_log();
              a8 = v61;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
              {
                sub_10002BB74();
              }

              WCDeleteItemAtURL();
              v49 = v27;
              v27 = 0;
              v46 = v59;
            }

            else
            {
              v50 = [v64 URLByAppendingPathComponent:WCSessionFilePersistentFileName isDirectory:0];
              v67 = 0;
              v28 = [NSKeyedArchiver archivedDataWithRootObject:v27 requiringSecureCoding:1 error:&v67];
              v57 = v67;
              v58 = v50;
              v56 = v28;
              if (!v28 || (v66 = 0, v51 = [v28 writeToURL:v50 options:1073741825 error:&v66], v28 = v66, (v51 & 1) == 0))
              {
                v60 = v46;
                v52 = wc_log();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
                {
                  v54 = [v58 path];
                  v55 = NSPrintF();
                  *buf = 138543874;
                  v73 = v27;
                  v74 = 2114;
                  v75 = v54;
                  v76 = 2114;
                  v77 = v55;
                  _os_log_fault_impl(&_mh_execute_header, v52, OS_LOG_TYPE_FAULT, "error archiving session file to path %{public}@ %{public}@ due to %{public}@", buf, 0x20u);
                }

                WCDeleteItemAtURL();
                WCDeleteItemAtURL();
                v53 = [v27 fileIdentifier];
                v46 = v60;
                [v60 removeContentIdentifier:v53];

                v27 = 0;
              }

              a8 = v61;
              v49 = v58;
            }

            goto LABEL_34;
          }

          v39 = wc_log();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
          {
            sub_10002BAE8();
          }

          WCDeleteItemAtURL();
          goto LABEL_26;
        }

        v42 = wc_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          sub_10002BA5C();
        }

        WCDeleteItemAtURL();
        v27 = 0;
      }

      else
      {
        v41 = wc_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
        {
          sub_10002B9D0();
        }

        WCDeleteItemAtURL();
        v27 = 0;
        v28 = v33;
      }

      a8 = v61;
      goto LABEL_34;
    }

    v40 = wc_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      sub_10002B944();
    }

LABEL_26:
    v27 = 0;
LABEL_34:

    goto LABEL_35;
  }

  v24 = wc_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_10002B8A0();
  }

  v27 = 0;
  v28 = 0;
LABEL_35:

  if (a8)
  {
    v43 = v28;
    *a8 = v28;
  }

  return v27;
}

- (id)moveUserInfoToClientInbox:(id)a3 applicationInfo:(id)a4 pairingID:(id)a5 userInfoIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = wc_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v10 path];
    *buf = 138544130;
    v50 = v15;
    v51 = 2114;
    v52 = v11;
    v53 = 2114;
    v54 = v12;
    v55 = 2114;
    v56 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "incomingUserInfoURL: %{public}@, application: %{public}@, pairingID: %{public}@, userInfoIdentifier: %{public}@", buf, 0x2Au);
  }

  v16 = +[WCDSystemMonitor sharedSystemMonitor];
  v17 = [v16 dataContainerURLForApplicationInfo:v11];

  if (v12 && v17)
  {
    v18 = WCTransferredUserInfoInboxURLInContainer();
    v19 = +[WCDIndexManager sharedManager];
    v45 = [v19 userInfoIndexForApplication:v11 pairingID:v12];

    v20 = [v18 URLByAppendingPathComponent:v13 isDirectory:1];

    v21 = [v20 URLByAppendingPathComponent:WCUserInfoTransferObjectFileName isDirectory:0];
    v22 = [(WatchConnectivityDaemon *)self complicationUserInfoPathInDataContainer:v17 pairingID:v12];
    if (v22)
    {
      v23 = [v21 path];
      v24 = [v23 isEqual:v22];

      if (v24)
      {
        v25 = wc_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "user info is duplicate of complication user info", buf, 2u);
        }

        v26 = 0;
        v27 = v21;
        v21 = 0;
        goto LABEL_28;
      }
    }

    if (([v21 checkResourceIsReachableAndReturnError:0]& 1) != 0)
    {
      v27 = wc_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10002BC00();
      }

      v26 = 0;
      goto LABEL_28;
    }

    v44 = v10;
    v28 = +[NSFileManager defaultManager];
    v48 = 0;
    v29 = [v28 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:&v48];
    v26 = v48;

    if (!v29)
    {
      v31 = wc_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10002BC70();
      }

      v27 = v21;
      v21 = 0;
      v10 = v44;
      goto LABEL_28;
    }

    v10 = v44;
    v27 = [[WCSessionUserInfoTransfer alloc] initWithProtoBufFileURL:v44];
    if (v27)
    {
      v39 = [v45 addContentIdentifier:v13];

      v26 = v39;
      if (!v39)
      {
        v47 = 0;
        v33 = [NSKeyedArchiver archivedDataWithRootObject:v27 requiringSecureCoding:1 error:&v47];
        v34 = v47;
        v30 = v33;
        v43 = v34;
        if (v33)
        {
          v46 = 0;
          v35 = v33;
          v36 = [v33 writeToURL:v21 options:1073741825 error:&v46];
          v37 = v46;
          v30 = v35;
          v40 = v37;
          if (v36)
          {
            v10 = v44;
            v26 = v37;
            goto LABEL_27;
          }
        }

        else
        {
          v40 = 0;
        }

        v42 = v30;
        v38 = wc_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_10002BD40();
        }

        [v45 removeContentIdentifier:v13];
        v21 = 0;
        v10 = v44;
        v26 = v40;
        v30 = v42;
        goto LABEL_27;
      }

      v41 = wc_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10002BD04();
        v30 = v41;
        v43 = v21;
LABEL_40:
        v21 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      v41 = wc_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10002BDE0();
        v43 = v21;
        v30 = v41;
        goto LABEL_40;
      }
    }

    v43 = v21;
    v21 = 0;
    v30 = v41;
LABEL_27:

LABEL_28:
    goto LABEL_29;
  }

  v20 = wc_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_10002AE88();
  }

  v21 = 0;
  v26 = 0;
LABEL_29:

  return v21;
}

- (void)storeComplicationUserInfoTransfer:(id)a3 applicationInfo:(id)a4 pairingID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = wc_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v49 = v7;
    v50 = 2114;
    v51 = v8;
    v52 = 2114;
    v53 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "userInfoTransfer: %{public}@, application: %{public}@, pairingID: %{public}@", buf, 0x20u);
  }

  v11 = +[WCDSystemMonitor sharedSystemMonitor];
  v12 = [v11 dataContainerURLForApplicationInfo:v8];

  if (!MGGetBoolAnswer() || ([v7 transferIdentifier], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = wc_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_10002BE1C();
    }

    goto LABEL_7;
  }

  WCDashboardLogJSON();
  [WCDRadarUserNotification showTapToRadarAlertWithMessage:@"You have hit <rdar://problem/33601638>. Please file a new WatchConnectivity bug with a co-sysdiagnose and relate the radar." forRadarIdentifier:@"33601638" oncePerBuild:1];
  if (v9 && v12)
  {
    v15 = WCTransferredUserInfoInboxURLInContainer();
    v43 = [v15 URLByAppendingPathComponent:WCComplicationUserInfoIDFileName isDirectory:0];
    v16 = +[WCDIndexManager sharedManager];
    v17 = [v16 userInfoIndexForApplication:v8 pairingID:v9];

    v18 = [v7 transferIdentifier];
    v19 = [v15 URLByAppendingPathComponent:v18 isDirectory:1];

    v20 = [v19 URLByAppendingPathComponent:WCUserInfoTransferObjectFileName isDirectory:0];
    v21 = +[NSFileManager defaultManager];
    v47 = 0;
    v22 = [v21 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:&v47];
    v23 = v47;

    if (!v22)
    {
      v25 = wc_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10002BE50();
      }

      v14 = v23;
      goto LABEL_33;
    }

    v24 = [v7 transferIdentifier];
    v14 = [v17 addContentIdentifier:v24];

    if (v14)
    {
      v25 = wc_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10002BEFC();
      }

      goto LABEL_33;
    }

    v46 = 0;
    v26 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v46];
    v25 = v46;
    v42 = v26;
    if (v26)
    {
      v45 = 0;
      v27 = [v26 writeToURL:v20 options:1073741825 error:&v45];
      v28 = v45;
      if (v27)
      {
        v38 = v28;
        WCDeleteItemAtURL();
        v29 = [v7 transferIdentifier];
        v30 = [v29 dataUsingEncoding:4];

        v44 = v38;
        log = v30;
        v35 = [v30 writeToURL:v43 options:1073741825 error:&v44];
        v14 = v44;

        v31 = wc_log();
        if (v35)
        {
          v32 = v31;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [v7 transferIdentifier];
            v36 = [v7 complicationTransferIdentifier];
            *buf = 138543618;
            v49 = v39;
            v50 = 2114;
            v51 = v36;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "persisted complication user info transfer id %{public}@ with complication/send ID %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v32 = v31;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_10002BFA8();
          }
        }

        goto LABEL_31;
      }

      v14 = v28;
    }

    else
    {
      v14 = 0;
    }

    v33 = [v7 transferIdentifier];
    [v17 removeContentIdentifier:v33];

    v34 = wc_log();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
LABEL_32:

LABEL_33:
      goto LABEL_7;
    }

    v37 = [v20 path];
    v40 = NSPrintF();
    log = v34;
    *buf = 138543618;
    v49 = v37;
    v50 = 2114;
    v51 = v40;
    _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "error moving user info file to inbox %{public}@ due to %{public}@", buf, 0x16u);

LABEL_31:
    v34 = log;
    goto LABEL_32;
  }

  v14 = wc_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10002AE88();
  }

LABEL_7:
}

- (void)persistAppContext:(id)a3 applicationInfo:(id)a4 pairingID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = wc_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v24 = [v7 length];
    v25 = 2114;
    v26 = v8;
    v27 = 2114;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "appContextDataSize: %ld, application: %{public}@, pairingID: %{public}@", buf, 0x20u);
  }

  v11 = +[WCDSystemMonitor sharedSystemMonitor];
  v12 = [v11 dataContainerURLForApplicationInfo:v8];

  if (v9 && v12)
  {
    v13 = WCInboxAppContextFolderURLInContainer();
    v14 = [v13 URLByAppendingPathComponent:WCApplicationContextFileName isDirectory:0];
    v15 = +[NSFileManager defaultManager];
    v22 = 0;
    v16 = [v15 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:&v22];
    v17 = v22;

    if (v16)
    {
      v21 = v17;
      v18 = [v7 writeToURL:v14 options:1073741825 error:&v21];
      v19 = v21;

      if (v18)
      {
LABEL_15:

        goto LABEL_16;
      }

      v20 = wc_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_10002C0E0();
      }
    }

    else
    {
      v20 = wc_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_10002C054();
      }

      v19 = v17;
    }

    goto LABEL_15;
  }

  v19 = wc_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_10002AE88();
  }

LABEL_16:
}

- (void)performBlockWhenReady:(id)a3
{
  v9 = a3;
  v4 = +[WCDSystemMonitor sharedSystemMonitor];
  v5 = [v4 initialSetUpComplete];

  if (v5)
  {
    v9[2]();
  }

  else
  {
    readyBlocks = self->_readyBlocks;
    v7 = [v9 copy];

    v8 = objc_retainBlock(v7);
    [(NSMutableArray *)readyBlocks addObject:v8];

    v9 = v7;
  }
}

- (void)service:(id)a3 context:(id)a4 performBlockWhenReady:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001A744;
  v13[3] = &unk_100049100;
  v15 = v8;
  v16 = a5;
  v14 = v9;
  v10 = v8;
  v11 = v9;
  v12 = v16;
  [(WatchConnectivityDaemon *)self performBlockWhenReady:v13];
}

- (void)flushReadyBlocks
{
  v3 = [(NSMutableArray *)self->_readyBlocks copy];
  [(NSMutableArray *)self->_readyBlocks removeAllObjects];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setCLTransientAuthorization:(id)a3 withCoreLocationData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(WatchConnectivityDaemon *)self locationManager];
    v10 = [v9 _setClientTransientAuthorizationInfoForBundleId:v6 data:v8];

    if (!v10)
    {
LABEL_7:

      goto LABEL_10;
    }

    v11 = wc_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10002C1D4();
    }

LABEL_6:

    goto LABEL_7;
  }

  if (v6)
  {
    v12 = [(NSMutableDictionary *)self->_coreLocationAssertions objectForKeyedSubscript:v6];

    if (!v12)
    {
      v10 = [CLInUseAssertion newAssertionForBundleIdentifier:v6 withReason:@"Location in use on paired watch by 3rd party app"];
      if (v10)
      {
        v13 = [(WatchConnectivityDaemon *)self createCLInUseTimerForIdentifier:v6];
        v11 = v13;
        if (v13)
        {
          v19[0] = @"inuse-assertion";
          v19[1] = @"inuse-assertion-timer";
          v20[0] = v10;
          v20[1] = v13;
          v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
          [(NSMutableDictionary *)self->_coreLocationAssertions setObject:v14 forKeyedSubscript:v6];

          dispatch_resume(v11);
          v15 = wc_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v17 = 138543362;
            v18 = v6;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@", &v17, 0xCu);
          }
        }

        else
        {
          v16 = wc_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            sub_10002C16C();
          }

          [v10 invalidate];
        }
      }

      else
      {
        v11 = wc_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_10002C1A0();
        }
      }

      goto LABEL_6;
    }
  }

LABEL_10:
}

- (void)releaseCLInUseAssertionForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_coreLocationAssertions objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"inuse-assertion"];
    if (v7)
    {
      v8 = v7;
      [v7 invalidate];

      v9 = wc_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", &v12, 0xCu);
      }
    }

    v10 = [v6 objectForKeyedSubscript:@"inuse-assertion-timer"];
    if (v10)
    {
      v11 = v10;
      dispatch_source_cancel(v10);
    }

    [(NSMutableDictionary *)self->_coreLocationAssertions removeObjectForKey:v4];
  }
}

- (id)createCLInUseTimerForIdentifier:(id)a3
{
  v4 = a3;
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  v6 = dispatch_time(0, 40000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001AD0C;
  v9[3] = &unk_100048AE8;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_source_set_event_handler(v5, v9);

  return v5;
}

@end