@interface WatchConnectivityDaemon
+ (id)sharedDaemon;
- (BOOL)cellUsageAllowedForBundleID:(id)d;
- (BOOL)copyFile:(int)file to:(int)to;
- (BOOL)errorIfPreconditionsNotSatisfiedWithClientPairingID:(id)d error:(id *)error;
- (BOOL)fileTransferExistsForPairingID:(id)d identifier:(id)identifier applicationInfo:(id)info;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)listenerShouldAcceptNewConnection:(id)connection;
- (BOOL)notifyIfFileTransferWithCommunicationID:(id)d pairingID:(id)iD sendID:(id)sendID success:(BOOL)success error:(id)error;
- (BOOL)notifyIfUserInfoTransferWithCommunicationID:(id)d pairingID:(id)iD sendID:(id)sendID success:(BOOL)success error:(id)error;
- (BOOL)privateListenerShouldAcceptNewConnection:(id)connection;
- (BOOL)sendComplicationUserInfo:(id)info clientID:(id)d clientPairingID:(id)iD identifier:(id)identifier errorHandler:(id)handler;
- (BOOL)userInfoExistsForPairingID:(id)d identifier:(id)identifier applicationInfo:(id)info;
- (IDSDevice)activeIDSDevice;
- (NSString)state;
- (WatchConnectivityDaemon)init;
- (const)descriptionFromPayloadSendType:(unsigned __int16)type;
- (id)WCErrorForIDSError:(id)error;
- (id)applicationInfoForCommunicationID:(id)d;
- (id)complicationUserInfoPathInDataContainer:(id)container pairingID:(id)d;
- (id)createBackgroundAssertionTimerForIdentifier:(id)identifier;
- (id)createCLInUseTimerForIdentifier:(id)identifier;
- (id)createNewClientObjectWithCommunicationID:(id)d connection:(id)connection;
- (id)dataFromUUIDString:(id)string;
- (id)moveFileToClientInbox:(id)inbox applicationInfo:(id)info pairingID:(id)d fileIdentifier:(id)identifier userInfoData:(id)data error:(id *)error;
- (id)moveUserInfoToClientInbox:(id)inbox applicationInfo:(id)info pairingID:(id)d userInfoIdentifier:(id)identifier;
- (id)pairingIDForIDSUniqueDeviceID:(id)d;
- (void)acquireBackgroundAssertionForIdentifier:(id)identifier;
- (void)addCounterpartClientCommunicationIdentifier:(id)identifier;
- (void)cancelSendWithIdentifier:(id)identifier;
- (void)cleanUpProcessAssertionForIdentifier:(id)identifier;
- (void)clientReachabilityDidChange:(id)change;
- (void)clientXPCConnectionDidDisconnect:(id)disconnect;
- (void)dequeueContentForClient:(id)client;
- (void)dequeuePendingMessagesForCommunicationID:(id)d;
- (void)duetIdentifiersForCompanionAppID:(id)d withCompletionHandler:(id)handler;
- (void)flushReadyBlocks;
- (void)handleAquiredAssertion:(id)assertion identifier:(id)identifier;
- (void)handleCounterpartDaemonDidStart;
- (void)handleDaemonClientsInformation:(id)information;
- (void)handleIncomingFileURL:(id)l communicationID:(id)d pairingID:(id)iD sendID:(id)sendID metadata:(id)metadata;
- (void)handleIncomingUserInfoTransferProto:(id)proto communicationID:(id)d pairingID:(id)iD sendID:(id)sendID;
- (void)handleIncomingUserInfoURL:(id)l communicationID:(id)d pairingID:(id)iD sendID:(id)sendID;
- (void)handlePairedSyncComplicationsStartedAck:(id)ack identifier:(id)identifier;
- (void)launchCompanionAppID:(id)d isInUse:(BOOL)use coreLocationData:(id)data;
- (void)loadPersistedClients;
- (void)performBlockWhenReady:(id)ready;
- (void)persistAppContext:(id)context applicationInfo:(id)info pairingID:(id)d;
- (void)persistFileTransferResult:(id)result pairingID:(id)d applicationInfo:(id)info identifier:(id)identifier;
- (void)persistUserInfoTransferResult:(id)result pairingID:(id)d applicationInfo:(id)info identifier:(id)identifier;
- (void)releaseCLInUseAssertionForIdentifier:(id)identifier;
- (void)sendDaemonClientsInformation;
- (void)sendDaemonDidStart;
- (void)sendFirstUnlockAck:(id)ack;
- (void)sendFirstUnlockRequest:(id)request;
- (void)sendFirstUnlockState:(id)state;
- (void)sendInstalledAppsChangedMessage;
- (void)sendMessage:(id)message withIdentifier:(id)identifier isResponse:(BOOL)response clientID:(id)d clientPairingID:(id)iD errorHandler:(id)handler;
- (void)sendPairedSyncForComplicationsStartedWithIdentifier:(id)identifier;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)service:(id)service context:(id)context performBlockWhenReady:(id)ready;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block;
- (void)setCLTransientAuthorization:(id)authorization withCoreLocationData:(id)data;
- (void)storeComplicationUserInfoTransfer:(id)transfer applicationInfo:(id)info pairingID:(id)d;
- (void)systemObserverActiveDeviceSwitchStarted;
- (void)systemObserverAppDidTerminateForBundleID:(id)d;
- (void)systemObserverInitialSetUpComplete;
- (void)systemObserverInstalledApplicationsChanged;
- (void)systemObserverUpdatingInstalledApps;
- (void)transferFile:(id)file withMetadata:(id)metadata identifier:(id)identifier forClient:(id)client destFilePath:(id)path errorHandler:(id)handler;
- (void)transferUserInfo:(id)info withMetadata:(id)metadata identifier:(id)identifier clientID:(id)d clientPairingID:(id)iD errorHandler:(id)handler;
- (void)updateActiveDeviceConnectedForService:(id)service;
- (void)updateAllClientsWithValues;
- (void)updateApplicationContext:(id)context clientID:(id)d clientPairingID:(id)iD errorHandler:(id)handler;
- (void)updateClientWithValues:(id)values;
@end

@implementation WatchConnectivityDaemon

+ (id)sharedDaemon
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010204;
  block[3] = &unk_100048E08;
  block[4] = self;
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
  state = [(WCDFirstUnlockManager *)self->_firstUnlockManager state];
  NSAppendPrintF();
  v3 = 0;

  state2 = [(WCDPairedSyncManager *)self->_pairedSyncManager state];
  NSAppendPrintF();
  v5 = v3;

  v6 = objc_opt_class();
  v24 = NSStringFromClass(v6);
  NSAppendPrintF();
  v7 = v5;

  NSAppendPrintF();
  v8 = v7;

  idsService = [(WatchConnectivityDaemon *)self idsService];
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

  allValues = [(NSMutableDictionary *)self->_communicationIdentifierToClient allValues];
  v31 = [allValues valueForKeyPath:@"@unionOfObjects.state"];
  NSAppendPrintF();
  v21 = v19;

  return v19;
}

- (void)loadPersistedClients
{
  v3 = +[NSFileManager defaultManager];
  v30 = +[WCDClient clientsStorageURL];
  path = [v30 path];
  v40 = 0;
  v31 = v3;
  v5 = [v3 contentsOfDirectoryAtPath:path error:&v40];
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
          stringByDeletingPathExtension = [v12 stringByDeletingPathExtension];
          sharedSystemMonitor = [p_info + 91 sharedSystemMonitor];
          v15 = [sharedSystemMonitor applicationStateForBundleID:stringByDeletingPathExtension];

          if (v15 > 1)
          {
            v22 = [(NSMutableDictionary *)self->_communicationIdentifierToClient objectForKeyedSubscript:stringByDeletingPathExtension];
            if (v22)
            {
              v23 = v22;
              v24 = wc_log();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v42 = stringByDeletingPathExtension;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "client already exists %{public}@", buf, 0xCu);
              }
            }

            else
            {
              v25 = [(WatchConnectivityDaemon *)self createNewClientObjectWithCommunicationID:stringByDeletingPathExtension connection:0];
              if (v25)
              {
                v23 = v25;
                [(NSMutableDictionary *)self->_communicationIdentifierToClient setObject:v25 forKeyedSubscript:stringByDeletingPathExtension];
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
                  v42 = stringByDeletingPathExtension;
                  _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "failed to restore client for %{public}@", buf, 0xCu);
                }
              }
            }
          }

          else
          {
            v16 = v9;
            selfCopy = self;
            v18 = p_info;
            v19 = [v30 URLByAppendingPathComponent:v12 isDirectory:0];
            v35 = v34;
            v20 = [v31 removeItemAtURL:v19 error:&v35];
            v21 = v35;

            if (v20)
            {
              v34 = v21;
              p_info = v18;
              self = selfCopy;
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
            self = selfCopy;
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  if ([listenerCopy isEqual:self->_xpcListener])
  {
    v8 = [(WatchConnectivityDaemon *)self listenerShouldAcceptNewConnection:connectionCopy];
  }

  else
  {
    if (![listenerCopy isEqual:self->_xpcPrivateListener])
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = [(WatchConnectivityDaemon *)self privateListenerShouldAcceptNewConnection:connectionCopy];
  }

  v9 = v8;
LABEL_7:

  return v9;
}

- (BOOL)listenerShouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  if ([connectionCopy wc_connectionIsiOSExtension])
  {
    v5 = wc_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10002A8CC();
    }

    v6 = +[WCXPCManager clientInterface];
    [connectionCopy setRemoteObjectInterface:v6];

    [connectionCopy resume];
    remoteObjectProxy = [connectionCopy remoteObjectProxy];
    [remoteObjectProxy invalidateConnection];
    goto LABEL_5;
  }

  remoteObjectProxy = [connectionCopy wc_connectionCommunicationID];
  v8 = remoteObjectProxy != 0;
  v9 = wc_log();
  v10 = v9;
  if (!remoteObjectProxy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002A854();
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    wc_connectionBundleID = [connectionCopy wc_connectionBundleID];
    v15 = 138543618;
    v16 = wc_connectionBundleID;
    v17 = 2114;
    v18 = remoteObjectProxy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Accepting new connection from client with bundle ID %{public}@ and communicationID %{public}@", &v15, 0x16u);
  }

  v12 = [(NSMutableDictionary *)self->_communicationIdentifierToClient objectForKeyedSubscript:remoteObjectProxy];
  if (v12)
  {
    v10 = v12;
    [v12 setConnection:connectionCopy];
LABEL_15:

    goto LABEL_16;
  }

  v13 = [(WatchConnectivityDaemon *)self createNewClientObjectWithCommunicationID:remoteObjectProxy connection:connectionCopy];
  if (v13)
  {
    v10 = v13;
    [(NSMutableDictionary *)self->_communicationIdentifierToClient setObject:v13 forKeyedSubscript:remoteObjectProxy];
    goto LABEL_15;
  }

LABEL_5:
  v8 = 0;
LABEL_16:

  return v8;
}

- (id)createNewClientObjectWithCommunicationID:(id)d connection:(id)connection
{
  connectionCopy = connection;
  dCopy = d;
  v8 = wc_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    wc_connectionBundleID = [connectionCopy wc_connectionBundleID];
    v12 = 138543618;
    v13 = wc_connectionBundleID;
    v14 = 2114;
    v15 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating new client %{public}@ with connection %{public}@", &v12, 0x16u);
  }

  v10 = [[WCDClient alloc] initWithCommunicationID:dCopy connection:connectionCopy];
  if (v10)
  {
    [(WCDClient *)v10 setDelegate:self];
    [(WatchConnectivityDaemon *)self updateClientWithValues:v10];
    [(WCDFirstUnlockManager *)self->_firstUnlockManager requestFirstUnlockStateIfNeccessary];
  }

  return v10;
}

- (BOOL)privateListenerShouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  if (([connectionCopy wc_connectionHasEntitlement:WCPrivateServiceComplicationsManagerEntitlement] & 1) != 0 || objc_msgSend(connectionCopy, "wc_connectionHasEntitlement:", WCPrivateServiceTestToolEntitlement))
  {
    v5 = wc_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      wc_connectionBundleID = [connectionCopy wc_connectionBundleID];
      v13 = 138543362;
      v14 = wc_connectionBundleID;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Accepting new private connection from client with bundle ID %{public}@", &v13, 0xCu);
    }

    v7 = objc_opt_new();
    [(WCDPrivateClient *)v7 setDelegate:self];
    privateClient = self->_privateClient;
    self->_privateClient = v7;
    v9 = v7;

    [(WCDPrivateClient *)v9 setConnection:connectionCopy];
    [(WatchConnectivityDaemon *)self updateAllClientsWithValues];
    [(WatchConnectivityDaemon *)self dequeuePendingComplicationPings];
    v10 = 1;
  }

  else
  {
    v11 = wc_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10002A908(connectionCopy);
    }

    v10 = 0;
  }

  return v10;
}

- (void)dequeueContentForClient:(id)client
{
  clientCopy = client;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[WatchConnectivityDaemon dequeueContentForClient:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", &v7, 0xCu);
  }

  communicationID = [clientCopy communicationID];

  [(WatchConnectivityDaemon *)self dequeuePendingMessagesForCommunicationID:communicationID];
}

- (void)clientXPCConnectionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v10, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = disconnectCopy;
    bundleID = [v6 bundleID];
    [(WatchConnectivityDaemon *)self releaseCLInUseAssertionForIdentifier:bundleID];

    privateClient = +[WCDIndexManager sharedManager];
    applicationInfo = [v6 applicationInfo];

    [privateClient clearCacheForApplication:applicationInfo];
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

- (void)clientReachabilityDidChange:(id)change
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
  applicationWorkspace = [v3 applicationWorkspace];
  iOSApplicationsContainingWatchApp = [applicationWorkspace iOSApplicationsContainingWatchApp];
  v6 = [iOSApplicationsContainingWatchApp bs_map:&stru_100048EF8];

  idsService = [(WatchConnectivityDaemon *)self idsService];
  allObjects = [v6 allObjects];
  [idsService updateSubServices:allObjects];

  v9 = wc_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "updated IDS with list of services: %{public}@", &v10, 0xCu);
  }
}

- (void)systemObserverAppDidTerminateForBundleID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    [(NSMutableDictionary *)self->_communicationIdentifierToClient removeObjectForKey:dCopy];
  }

  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    communicationIdentifierToClient = self->_communicationIdentifierToClient;
    v7 = WCCompactStringFromCollection();
    v8 = 138543618;
    v9 = dCopy;
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
  watchConnectivityServiceAvailable = [v3 watchConnectivityServiceAvailable];

  if (watchConnectivityServiceAvailable)
  {
    v5 = objc_opt_new();
    [v5 setObject:@"WCDPayloadSendTypeDaemonStarted" forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionNonWakingKey];
    v6 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    [v5 setObject:v6 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

    v7 = objc_opt_new();
    [v7 setVersion:1];
    v8 = [IDSProtobuf alloc];
    data = [v7 data];
    v10 = [v8 initWithProtobufData:data type:4 isResponse:0];

    idsService = [(WatchConnectivityDaemon *)self idsService];
    v12 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v17 = 0;
    v18 = 0;
    [idsService sendProtobuf:v10 toDestinations:v12 priority:300 options:v5 identifier:&v18 error:&v17];
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

- (void)handleDaemonClientsInformation:(id)information
{
  informationCopy = information;
  informationData = [informationCopy informationData];

  if (informationData)
  {
    informationData2 = [informationCopy informationData];
    v12 = 0;
    v7 = [NSPropertyListSerialization propertyListWithData:informationData2 options:0 format:0 error:&v12];
    informationData = v12;

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
  watchConnectivityServiceAvailable = [v3 watchConnectivityServiceAvailable];

  if (watchConnectivityServiceAvailable)
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
    data = [v8 data];
    v11 = [v9 initWithProtobufData:data type:17 isResponse:0];

    idsService = [(WatchConnectivityDaemon *)self idsService];
    v13 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v18 = 0;
    v19 = 0;
    [idsService sendProtobuf:v11 toDestinations:v13 priority:300 options:v6 identifier:&v19 error:&v18];
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

- (void)addCounterpartClientCommunicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(NSSet *)self->_counterpartClientCommunicationIdentifiers containsObject:identifierCopy])
  {
    v5 = wc_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
    }

    v6 = [(NSSet *)self->_counterpartClientCommunicationIdentifiers setByAddingObject:identifierCopy];
    counterpartClientCommunicationIdentifiers = self->_counterpartClientCommunicationIdentifiers;
    self->_counterpartClientCommunicationIdentifiers = v6;

    [(WatchConnectivityDaemon *)self updateAllClientsWithValues];
  }
}

- (void)sendFirstUnlockState:(id)state
{
  stateCopy = state;
  v5 = +[WCDSystemMonitor sharedSystemMonitor];
  watchConnectivityServiceAvailable = [v5 watchConnectivityServiceAvailable];

  if (watchConnectivityServiceAvailable)
  {
    v7 = objc_opt_new();
    [v7 setObject:@"WCDProtoCompanionFirstUnlockState" forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
    v8 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    [v7 setObject:v8 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

    v9 = [IDSProtobuf alloc];
    data = [stateCopy data];
    v11 = [v9 initWithProtobufData:data type:10 isResponse:0];

    insecureIDSService = [(WatchConnectivityDaemon *)self insecureIDSService];
    v13 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v19 = 0;
    v20 = 0;
    v14 = [insecureIDSService sendProtobuf:v11 toDestinations:v13 priority:300 options:v7 identifier:&v20 error:&v19];
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

- (void)sendFirstUnlockRequest:(id)request
{
  requestCopy = request;
  v5 = +[WCDSystemMonitor sharedSystemMonitor];
  watchConnectivityServiceAvailable = [v5 watchConnectivityServiceAvailable];

  if (watchConnectivityServiceAvailable)
  {
    v7 = objc_opt_new();
    [v7 setObject:@"WCDProtoCompanionFirstUnlockRequest" forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
    v8 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    [v7 setObject:v8 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

    v9 = [IDSProtobuf alloc];
    data = [requestCopy data];
    v11 = [v9 initWithProtobufData:data type:11 isResponse:0];

    insecureIDSService = [(WatchConnectivityDaemon *)self insecureIDSService];
    v13 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v19 = 0;
    v20 = 0;
    v14 = [insecureIDSService sendProtobuf:v11 toDestinations:v13 priority:200 options:v7 identifier:&v20 error:&v19];
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

- (void)sendFirstUnlockAck:(id)ack
{
  ackCopy = ack;
  v5 = +[WCDSystemMonitor sharedSystemMonitor];
  watchConnectivityServiceAvailable = [v5 watchConnectivityServiceAvailable];

  if (watchConnectivityServiceAvailable)
  {
    v7 = objc_opt_new();
    [v7 setObject:@"WCDProtoCompanionFirstUnlockAck" forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
    v8 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    [v7 setObject:v8 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

    v9 = [IDSProtobuf alloc];
    data = [ackCopy data];
    v11 = [v9 initWithProtobufData:data type:12 isResponse:0];

    insecureIDSService = [(WatchConnectivityDaemon *)self insecureIDSService];
    v13 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v19 = 0;
    v20 = 0;
    v14 = [insecureIDSService sendProtobuf:v11 toDestinations:v13 priority:200 options:v7 identifier:&v20 error:&v19];
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

- (void)sendPairedSyncForComplicationsStartedWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[WCDSystemMonitor sharedSystemMonitor];
  watchConnectivityServiceAvailable = [v5 watchConnectivityServiceAvailable];

  if (watchConnectivityServiceAvailable)
  {
    v7 = objc_opt_new();
    [v7 setObject:@"WCDProtoPairedSyncComplicationsStarted" forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
    v8 = [(WatchConnectivityDaemon *)self dataFromUUIDString:identifierCopy];

    [v7 setObject:v8 forKeyedSubscript:IDSSendMessageOptionUUIDKey];
    v9 = objc_opt_new();
    [v9 setVersion:1];
    v10 = [IDSProtobuf alloc];
    data = [v9 data];
    v12 = [v10 initWithProtobufData:data type:15 isResponse:0];

    insecureIDSService = [(WatchConnectivityDaemon *)self insecureIDSService];
    v14 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v22 = 0;
    v23 = 0;
    v15 = [insecureIDSService sendProtobuf:v12 toDestinations:v14 priority:200 options:v7 identifier:&v23 error:&v22];
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
    [(WCDPairedSyncManager *)pairedSyncManager handlePotentialPairedSyncForComplicationsFailedWithIdentifier:identifierCopy error:?];
  }
}

- (void)handlePairedSyncComplicationsStartedAck:(id)ack identifier:(id)identifier
{
  ackCopy = ack;
  identifierCopy = identifier;
  if ([ackCopy hasSuccess])
  {
    success = [ackCopy success];
  }

  else
  {
    success = 1;
  }

  [(WCDPairedSyncManager *)self->_pairedSyncManager handlePairedSyncForComplicationsAckWithIdentifier:identifierCopy success:success];
}

- (void)sendMessage:(id)message withIdentifier:(id)identifier isResponse:(BOOL)response clientID:(id)d clientPairingID:(id)iD errorHandler:(id)handler
{
  responseCopy = response;
  messageCopy = message;
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v30 = 0;
  v19 = [(WatchConnectivityDaemon *)self errorIfPreconditionsNotSatisfiedWithClientPairingID:iDCopy error:&v30];
  v20 = v30;
  if (v19)
  {
    handlerCopy[2](handlerCopy, v20);
  }

  else
  {
    v21 = wc_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = "NO";
      *buf = 138544130;
      v33 = 2080;
      v32 = identifierCopy;
      if (responseCopy)
      {
        v22 = "YES";
      }

      v34 = v22;
      v35 = 2114;
      v36 = dCopy;
      v37 = 2114;
      v38 = iDCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "identifier: %{public}@, isResponse: %s, clientID: %{public}@, clientPairingID: %{public}@", buf, 0x2Au);
    }

    [(WCDFirstUnlockManager *)self->_firstUnlockManager requestFirstUnlockStateIfNeccessary];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100012CB0;
    v23[3] = &unk_100048F20;
    v24 = dCopy;
    v29 = responseCopy;
    v25 = identifierCopy;
    selfCopy = self;
    v27 = messageCopy;
    v28 = handlerCopy;
    [(WatchConnectivityDaemon *)self duetIdentifiersForCompanionAppID:v24 withCompletionHandler:v23];
  }
}

- (void)dequeuePendingMessagesForCommunicationID:(id)d
{
  dCopy = d;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v26 = "[WatchConnectivityDaemon dequeuePendingMessagesForCommunicationID:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v6 = [(NSMutableDictionary *)self->_communicationIdentifierToClient objectForKeyedSubscript:dCopy];
  v7 = +[WCDSystemMonitor sharedSystemMonitor];
  pairingID = [v7 pairingID];

  if (v6 && pairingID)
  {
    v9 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    selfCopy = self;
    v19 = dCopy;
    v10 = [(NSMutableDictionary *)self->_pendingMessageRequests objectForKeyedSubscript:dCopy];
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
          pairingID2 = [v15 pairingID];
          v17 = [pairingID2 isEqual:pairingID];

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

    dCopy = v19;
    [(NSMutableDictionary *)selfCopy->_pendingMessageRequests setObject:v9 forKeyedSubscript:v19];
  }
}

- (void)updateApplicationContext:(id)context clientID:(id)d clientPairingID:(id)iD errorHandler:(id)handler
{
  contextCopy = context;
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v33 = 0;
  LODWORD(handler) = [(WatchConnectivityDaemon *)self errorIfPreconditionsNotSatisfiedWithClientPairingID:iDCopy error:&v33];
  v14 = v33;
  if (handler)
  {
    handlerCopy[2](handlerCopy, v14);
    v15 = v14;
  }

  else
  {
    v16 = wc_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v35 = dCopy;
      v36 = 2114;
      v37 = iDCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "clientID: %{public}@, clientPairingID: %{public}@", buf, 0x16u);
    }

    v17 = objc_opt_new();
    [v17 setObject:dCopy forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
    v28 = dCopy;
    [v17 setObject:dCopy forKeyedSubscript:IDSSendMessageOptionSubServiceKey];
    v18 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    [v17 setObject:v18 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

    [v17 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionNonWakingKey];
    [v17 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionBypassDuetKey];
    v19 = [IDSProtobuf alloc];
    v30 = contextCopy;
    data = [contextCopy data];
    v21 = [v19 initWithProtobufData:data type:3 isResponse:0];

    idsService = [(WatchConnectivityDaemon *)self idsService];
    v23 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v31 = v14;
    v32 = 0;
    v29 = v21;
    LODWORD(v21) = [idsService sendProtobuf:v21 toDestinations:v23 priority:200 options:v17 identifier:&v32 error:&v31];
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

      handlerCopy[2](handlerCopy, 0);
    }

    else
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10002A9BC();
      }

      v27 = [(WatchConnectivityDaemon *)self WCErrorForIDSError:v15];
      handlerCopy[2](handlerCopy, v27);
    }

    contextCopy = v30;

    dCopy = v28;
  }
}

- (void)transferFile:(id)file withMetadata:(id)metadata identifier:(id)identifier forClient:(id)client destFilePath:(id)path errorHandler:(id)handler
{
  fileCopy = file;
  metadataCopy = metadata;
  identifierCopy = identifier;
  clientCopy = client;
  pathCopy = path;
  handlerCopy = handler;
  communicationID = [clientCopy communicationID];
  clientCurrentPairingID = [clientCopy clientCurrentPairingID];
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_100013D4C;
  v52 = sub_100013D5C;
  v53 = 0;
  obj = 0;
  LODWORD(handler) = [(WatchConnectivityDaemon *)self errorIfPreconditionsNotSatisfiedWithClientPairingID:clientCurrentPairingID error:&obj];
  objc_storeStrong(&v53, obj);
  if (!handler)
  {
    fileDescriptor = [fileCopy fileDescriptor];
    v22 = pathCopy;
    fclonefileat(fileDescriptor, -2, [pathCopy fileSystemRepresentation], 0);
    v23 = wc_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v59 = pathCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "cloning or copying file to: %@", buf, 0xCu);
    }

    if ([pathCopy checkResourceIsReachableAndReturnError:0])
    {
      goto LABEL_10;
    }

    v24 = wc_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Failed to clone file, trying copying", buf, 2u);
    }

    v25 = pathCopy;
    v26 = open([pathCopy fileSystemRepresentation], 1537, 384, metadataCopy);
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

      handlerCopy[2](handlerCopy, v32);
      goto LABEL_17;
    }

    v27 = -[WatchConnectivityDaemon copyFile:to:](self, "copyFile:to:", [fileCopy fileDescriptor], v26);
    close(v26);
    if (v27)
    {
LABEL_10:
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100013D64;
      v37[3] = &unk_100048F48;
      v38 = communicationID;
      selfCopy = self;
      v40 = identifierCopy;
      v41 = clientCopy;
      v42 = pathCopy;
      v43 = metadataCopy;
      v46 = &v48;
      v45 = handlerCopy;
      v44 = fileCopy;
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

      handlerCopy[2](handlerCopy, v35);
    }

LABEL_17:

    goto LABEL_18;
  }

  handlerCopy[2](handlerCopy, v49[5]);
LABEL_18:
  _Block_object_dispose(&v48, 8);
}

- (BOOL)copyFile:(int)file to:(int)to
{
  do
  {
    v6 = read(file, __buf, 0x1000uLL);
    if (v6 < 1)
    {
      return v6 == 0;
    }
  }

  while (write(to, __buf, v6) == v6);
  v7 = wc_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: missing bytes", v9, 2u);
  }

  return 0;
}

- (void)cancelSendWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  idsService = [(WatchConnectivityDaemon *)self idsService];
  v10 = 0;
  v6 = [idsService cancelIdentifier:identifierCopy error:&v10];
  v7 = v10;

  v8 = wc_log();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10002AD58();
  }
}

- (void)handleIncomingFileURL:(id)l communicationID:(id)d pairingID:(id)iD sendID:(id)sendID metadata:(id)metadata
{
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  sendIDCopy = sendID;
  metadataCopy = metadata;
  v17 = wc_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    path = [lCopy path];
    *buf = 138544386;
    v19 = "YES";
    v31 = path;
    if (!metadataCopy)
    {
      v19 = "NO";
    }

    v32 = 2114;
    v33 = dCopy;
    v34 = 2114;
    v35 = iDCopy;
    v36 = 2114;
    v37 = sendIDCopy;
    v38 = 2080;
    v39 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "fileURL: %{public}@, communicationID: %{public}@, pairingID: %{public}@, sendID: %{public}@, hasMetadata: %s", buf, 0x34u);
  }

  v20 = [(WatchConnectivityDaemon *)self applicationInfoForCommunicationID:dCopy];
  v21 = v20;
  if (iDCopy && dCopy && v20)
  {
    v22 = [metadataCopy objectForKeyedSubscript:@"u"];
    v29 = 0;
    v23 = [(WatchConnectivityDaemon *)self moveFileToClientInbox:lCopy applicationInfo:v21 pairingID:iDCopy fileIdentifier:sendIDCopy userInfoData:v22 error:&v29];
    v24 = v29;

    if (v23)
    {
      v28 = sendIDCopy;
      v25 = lCopy;
      v26 = [(NSMutableDictionary *)self->_communicationIdentifierToClient objectForKeyedSubscript:dCopy];
      [v26 handleIncomingFileWithPairingID:iDCopy];
      connection = [v26 connection];

      if (!connection)
      {
        [(WatchConnectivityDaemon *)self notifyDuetOfPendingContentForCompanionAppID:dCopy forComplication:0];
      }

      lCopy = v25;
      sendIDCopy = v28;
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
      v31 = dCopy;
      v32 = 2114;
      v33 = v21;
      v34 = 2114;
      v35 = iDCopy;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "missing required values. communicationID: %{public}@, applicationInfo: %{public}@, pairingID: %{public}@", buf, 0x20u);
    }
  }
}

- (BOOL)fileTransferExistsForPairingID:(id)d identifier:(id)identifier applicationInfo:(id)info
{
  dCopy = d;
  identifierCopy = identifier;
  infoCopy = info;
  v10 = +[WCDSystemMonitor sharedSystemMonitor];
  v11 = [v10 dataContainerURLForApplicationInfo:infoCopy];

  if (dCopy && v11)
  {
    v12 = WCFileTransfersURLInContainer();
    v13 = [v12 URLByAppendingPathComponent:identifierCopy isDirectory:1];

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

- (void)persistFileTransferResult:(id)result pairingID:(id)d applicationInfo:(id)info identifier:(id)identifier
{
  resultCopy = result;
  dCopy = d;
  infoCopy = info;
  identifierCopy = identifier;
  v13 = +[WCDSystemMonitor sharedSystemMonitor];
  v14 = [v13 dataContainerURLForApplicationInfo:infoCopy];

  if (dCopy && v14)
  {
    v15 = WCFileTransfersURLInContainer();
    v16 = +[WCDIndexManager sharedManager];
    v17 = [v16 fileResultsIndexForApplication:infoCopy pairingID:dCopy];

    v18 = [v15 URLByAppendingPathComponent:identifierCopy isDirectory:1];

    v19 = +[NSFileManager defaultManager];
    v36 = 0;
    v20 = [v19 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v36];
    v21 = v36;

    if (v20)
    {
      v22 = [v17 addContentIdentifier:identifierCopy];
      v23 = objc_opt_new();
      v24 = v23;
      if (resultCopy | v22)
      {
        if (resultCopy)
        {
          v25 = resultCopy;
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
            if (resultCopy)
            {
              v30 = resultCopy;
            }

            v38 = identifierCopy;
            v39 = 2114;
            v40 = infoCopy;
            v41 = 2114;
            v42 = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "id %{public}@: applicatio: %{public}@ result: %{public}@", buf, 0x20u);
          }

          v17 = v31;
        }

        else
        {
          v17 = v31;
          [v31 removeContentIdentifier:identifierCopy];
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

- (BOOL)notifyIfFileTransferWithCommunicationID:(id)d pairingID:(id)iD sendID:(id)sendID success:(BOOL)success error:(id)error
{
  successCopy = success;
  dCopy = d;
  iDCopy = iD;
  sendIDCopy = sendID;
  errorCopy = error;
  v16 = [(WatchConnectivityDaemon *)self applicationInfoForCommunicationID:dCopy];
  v17 = [(WatchConnectivityDaemon *)self fileTransferExistsForPairingID:iDCopy identifier:sendIDCopy applicationInfo:v16];
  if (v17)
  {
    v18 = wc_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543618;
      v23 = sendIDCopy;
      v24 = 2114;
      v25 = dCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "sendID: %{public}@, communicationID: %{public}@ found valid file transfer", &v22, 0x16u);
    }

    if (successCopy)
    {
      v19 = 0;
    }

    else
    {
      v19 = errorCopy;
    }

    [(WatchConnectivityDaemon *)self persistFileTransferResult:v19 pairingID:iDCopy applicationInfo:v16 identifier:sendIDCopy];
    v20 = [(NSMutableDictionary *)self->_communicationIdentifierToClient objectForKeyedSubscript:dCopy];
    [v20 handleFileResultWithPairingID:iDCopy];
  }

  return v17;
}

- (BOOL)sendComplicationUserInfo:(id)info clientID:(id)d clientPairingID:(id)iD identifier:(id)identifier errorHandler:(id)handler
{
  infoCopy = info;
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  handlerCopy = handler;
  v17 = +[WCDPushKitManager sharedPushKitManager];
  [v17 releaseAssertionForBundleID:dCopy];

  v49 = 0;
  LODWORD(v17) = [(WatchConnectivityDaemon *)self errorIfPreconditionsNotSatisfiedWithClientPairingID:iDCopy error:&v49];
  v18 = v49;
  if (v17)
  {
    handlerCopy[2](handlerCopy, v18);
    v19 = 0;
  }

  else
  {
    v45 = infoCopy;
    v20 = wc_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v51 = dCopy;
      v52 = 2114;
      v53 = identifierCopy;
      v54 = 2114;
      v55 = iDCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "clientID: %{public}@, identifier: %{public}@, clientPairingID: %{public}@", buf, 0x20u);
    }

    v21 = +[WCDSystemMonitor sharedSystemMonitor];
    duetComplications = [v21 duetComplications];
    v48 = v18;
    v23 = [duetComplications admissionCheckOnComplication:dCopy forRemote:1 error:&v48];
    v24 = v48;

    if (v23)
    {
      v25 = [(WatchConnectivityDaemon *)self cellUsageAllowedForBundleID:dCopy];
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
        v53 = dCopy;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Cell %@allowed for complication push for %@", buf, 0x16u);
      }

      v28 = [(__CFString *)dCopy stringByAppendingString:@"-current-complication"];
      v29 = objc_opt_new();
      v43 = v28;
      [v29 setObject:v28 forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
      [v29 setObject:dCopy forKeyedSubscript:IDSSendMessageOptionSubServiceKey];
      v30 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
      [v29 setObject:v30 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

      [v29 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionBypassDuetKey];
      if (v25)
      {
        [v29 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionAllowCloudDeliveryKey];
        [v29 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionNonCloudWakingKey];
      }

      v44 = identifierCopy;
      v31 = [(WatchConnectivityDaemon *)self dataFromUUIDString:identifierCopy];
      [v29 setObject:v31 forKeyedSubscript:IDSSendMessageOptionUUIDKey];

      v32 = [IDSProtobuf alloc];
      data = [v45 data];
      v34 = [v32 initWithProtobufData:data type:9 isResponse:0];

      idsService = [(WatchConnectivityDaemon *)self idsService];
      v36 = [NSSet setWithObject:IDSDefaultPairedDevice];
      v46 = v24;
      v47 = 0;
      v42 = v34;
      [idsService sendProtobuf:v34 toDestinations:v36 priority:200 options:v29 identifier:&v47 error:&v46];
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
        handlerCopy[2](handlerCopy, v39);
      }

      else if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v51 = v37;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      identifierCopy = v44;

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
          v51 = dCopy;
          v52 = 2114;
          v53 = identifierCopy;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "clientID: %{public}@, identifier: %{public}@, rejected by admissions check", buf, 0x16u);
        }

        v19 = 0;
      }
    }

    infoCopy = v45;
  }

  return v19;
}

- (void)handleIncomingUserInfoTransferProto:(id)proto communicationID:(id)d pairingID:(id)iD sendID:(id)sendID
{
  protoCopy = proto;
  dCopy = d;
  iDCopy = iD;
  sendIDCopy = sendID;
  v14 = wc_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    transferIdentifier = [protoCopy transferIdentifier];
    *buf = 138544130;
    v27 = dCopy;
    v28 = 2114;
    v29 = iDCopy;
    v30 = 2114;
    v31 = sendIDCopy;
    v32 = 2114;
    v33 = transferIdentifier;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "communicationID: %{public}@, pairingID: %{public}@, sendID: %{public}@, userInfoID: %{public}@", buf, 0x2Au);
  }

  v16 = [WCSessionUserInfoTransfer alloc];
  transferIdentifier2 = [protoCopy transferIdentifier];
  v18 = [v16 initWithTranferIdentifier:transferIdentifier2 complicationTransferIdentifier:sendIDCopy currentComplication:1];

  clientData = [protoCopy clientData];
  v25 = 0;
  v20 = [v18 updateUserInfoData:clientData error:&v25];
  v21 = v25;

  if ((v20 & 1) == 0)
  {
    v22 = wc_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10002B168();
    }
  }

  v23 = [(WatchConnectivityDaemon *)self applicationInfoForCommunicationID:dCopy];
  [(WatchConnectivityDaemon *)self storeComplicationUserInfoTransfer:v18 applicationInfo:v23 pairingID:iDCopy];
  v24 = [(NSMutableDictionary *)self->_communicationIdentifierToClient objectForKeyedSubscript:dCopy];
  [v24 handleIncomingUserInfoWithPairingID:iDCopy];
  [(WatchConnectivityDaemon *)self handleComplicationPingForCommunicationIdentifier:dCopy];
}

- (BOOL)errorIfPreconditionsNotSatisfiedWithClientPairingID:(id)d error:(id *)error
{
  dCopy = d;
  v6 = +[WCDSystemMonitor sharedSystemMonitor];
  watchConnectivityServiceAvailable = [v6 watchConnectivityServiceAvailable];

  if (watchConnectivityServiceAvailable)
  {
    v8 = 0;
  }

  else
  {
    v8 = [NSError wcErrorWithCode:7001];
  }

  v9 = +[WCDSystemMonitor sharedSystemMonitor];
  pairingID = [v9 pairingID];
  v11 = [dCopy isEqual:pairingID];

  if ((v11 & 1) == 0)
  {
    v12 = [NSError wcErrorWithCode:7014];

    v8 = v12;
  }

  if (error)
  {
    v13 = v8;
    *error = v8;
  }

  return v8 != 0;
}

- (void)transferUserInfo:(id)info withMetadata:(id)metadata identifier:(id)identifier clientID:(id)d clientPairingID:(id)iD errorHandler:(id)handler
{
  infoCopy = info;
  metadataCopy = metadata;
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v30 = 0;
  v20 = [(WatchConnectivityDaemon *)self errorIfPreconditionsNotSatisfiedWithClientPairingID:iDCopy error:&v30];
  v21 = v30;
  if (v20)
  {
    handlerCopy[2](handlerCopy, v21);
  }

  else
  {
    v22 = wc_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v32 = identifierCopy;
      v33 = 2114;
      v34 = dCopy;
      v35 = 2114;
      v36 = iDCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "identifier: %{public}@, clientID: %{public}@, pairingID: %{public}@", buf, 0x20u);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000156D8;
    v23[3] = &unk_100048F70;
    v24 = dCopy;
    selfCopy = self;
    v26 = identifierCopy;
    v27 = infoCopy;
    v28 = metadataCopy;
    v29 = handlerCopy;
    [(WatchConnectivityDaemon *)self duetIdentifiersForCompanionAppID:v24 withCompletionHandler:v23];
  }
}

- (void)handleIncomingUserInfoURL:(id)l communicationID:(id)d pairingID:(id)iD sendID:(id)sendID
{
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  sendIDCopy = sendID;
  v14 = wc_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    path = [lCopy path];
    v21 = 138544130;
    v22 = path;
    v23 = 2114;
    v24 = dCopy;
    v25 = 2114;
    v26 = iDCopy;
    v27 = 2114;
    v28 = sendIDCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "userInfoURL: %{public}@, communicationID: %{public}@, pairingID: %{public}@, sendID: %{public}@", &v21, 0x2Au);
  }

  v16 = [(WatchConnectivityDaemon *)self applicationInfoForCommunicationID:dCopy];
  v17 = v16;
  if (dCopy && v16)
  {
    v18 = [(WatchConnectivityDaemon *)self moveUserInfoToClientInbox:lCopy applicationInfo:v16 pairingID:iDCopy userInfoIdentifier:sendIDCopy];
    if (v18)
    {
      v19 = [(NSMutableDictionary *)self->_communicationIdentifierToClient objectForKeyedSubscript:dCopy];
      [v19 handleIncomingUserInfoWithPairingID:iDCopy];
      connection = [v19 connection];

      if (!connection)
      {
        [(WatchConnectivityDaemon *)self notifyDuetOfPendingContentForCompanionAppID:dCopy forComplication:0];
      }
    }
  }

  else
  {
    v18 = wc_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 138543874;
      v22 = dCopy;
      v23 = 2114;
      v24 = v17;
      v25 = 2114;
      v26 = iDCopy;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "missing required values. communicationID: %{public}@, application: %{public}@, pairingID: %{public}@", &v21, 0x20u);
    }
  }
}

- (id)complicationUserInfoPathInDataContainer:(id)container pairingID:(id)d
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
    path = [v10 path];

    v12 = wc_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = path;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "loaded complication user info path %{public}@", buf, 0xCu);
    }
  }

  else
  {
    path = 0;
  }

  return path;
}

- (BOOL)notifyIfUserInfoTransferWithCommunicationID:(id)d pairingID:(id)iD sendID:(id)sendID success:(BOOL)success error:(id)error
{
  successCopy = success;
  dCopy = d;
  iDCopy = iD;
  sendIDCopy = sendID;
  errorCopy = error;
  v16 = [(WatchConnectivityDaemon *)self applicationInfoForCommunicationID:dCopy];
  if (successCopy)
  {
    v17 = WCTransferIdentifierFromComplicationIdentifier();
    if ([(WatchConnectivityDaemon *)self userInfoExistsForPairingID:iDCopy identifier:v17 applicationInfo:v16])
    {
      v18 = wc_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138543618;
        v25 = sendIDCopy;
        v26 = 2114;
        v27 = dCopy;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "sendID: %{public}@, communicationID: %{public}@ found valid complication user info", &v24, 0x16u);
      }

      [(WatchConnectivityDaemon *)self cancelSendWithIdentifier:v17];
      goto LABEL_9;
    }
  }

  if (![(WatchConnectivityDaemon *)self userInfoExistsForPairingID:iDCopy identifier:sendIDCopy applicationInfo:v16])
  {
    v22 = 0;
    v17 = sendIDCopy;
    goto LABEL_16;
  }

  v17 = sendIDCopy;
LABEL_9:
  v19 = wc_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138543618;
    v25 = v17;
    v26 = 2114;
    v27 = dCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "sendID: %{public}@, communicationID: %{public}@ found valid user info", &v24, 0x16u);
  }

  if (successCopy)
  {
    v20 = 0;
  }

  else
  {
    v20 = errorCopy;
  }

  [(WatchConnectivityDaemon *)self persistUserInfoTransferResult:v20 pairingID:iDCopy applicationInfo:v16 identifier:v17];
  v21 = [(NSMutableDictionary *)self->_communicationIdentifierToClient objectForKeyedSubscript:dCopy];
  [v21 handleUserInfoResultWithPairingID:iDCopy];

  v22 = 1;
LABEL_16:

  return v22;
}

- (BOOL)userInfoExistsForPairingID:(id)d identifier:(id)identifier applicationInfo:(id)info
{
  dCopy = d;
  identifierCopy = identifier;
  infoCopy = info;
  v10 = +[WCDSystemMonitor sharedSystemMonitor];
  v11 = [v10 dataContainerURLForApplicationInfo:infoCopy];

  if (dCopy && v11)
  {
    v12 = WCUserInfoTransfersInContainer();
    v13 = [v12 URLByAppendingPathComponent:identifierCopy isDirectory:1];

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

- (void)persistUserInfoTransferResult:(id)result pairingID:(id)d applicationInfo:(id)info identifier:(id)identifier
{
  resultCopy = result;
  dCopy = d;
  infoCopy = info;
  identifierCopy = identifier;
  v13 = +[WCDSystemMonitor sharedSystemMonitor];
  v14 = [v13 dataContainerURLForApplicationInfo:infoCopy];

  if (dCopy && v14)
  {
    v15 = WCUserInfoTransfersInContainer();
    v16 = +[WCDIndexManager sharedManager];
    v17 = [v16 userInfoResultsIndexForApplication:infoCopy pairingID:dCopy];

    v18 = [v15 URLByAppendingPathComponent:identifierCopy isDirectory:1];

    v19 = +[NSFileManager defaultManager];
    v36 = 0;
    v20 = [v19 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v36];
    v21 = v36;

    if (v20)
    {
      v22 = [v17 addContentIdentifier:identifierCopy];
      v23 = objc_opt_new();
      v24 = v23;
      if (resultCopy | v22)
      {
        if (resultCopy)
        {
          v25 = resultCopy;
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
            if (resultCopy)
            {
              v30 = resultCopy;
            }

            v38 = identifierCopy;
            v39 = 2114;
            v40 = infoCopy;
            v41 = 2114;
            v42 = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "id %{public}@: application: %{public}@ result: %{public}@", buf, 0x20u);
          }

          v17 = v31;
        }

        else
        {
          v17 = v31;
          [v31 removeContentIdentifier:identifierCopy];
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

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  identifierCopy = identifier;
  errorCopy = error;
  contextCopy = context;
  serviceIdentifier = [contextCopy serviceIdentifier];
  v16 = wc_log();
  v17 = v16;
  if (successCopy)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v36 = identifierCopy;
      v37 = 2114;
      v38 = serviceIdentifier;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "identifier: %{public}@, communicationID: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v28 = errorCopy;
      v27 = NSPrintF();
      *buf = 138543874;
      v36 = identifierCopy;
      v37 = 2114;
      v38 = serviceIdentifier;
      v39 = 2114;
      v40 = v27;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "failed. identifier: %{public}@, communicationID: %{public}@ due to %{public}@", buf, 0x20u);
    }

    idsInsecureServiceIdentifier = [(WatchConnectivityDaemon *)self idsInsecureServiceIdentifier];
    v19 = [serviceIdentifier isEqual:idsInsecureServiceIdentifier];

    if (v19)
    {
      [(WCDPairedSyncManager *)self->_pairedSyncManager handlePotentialPairedSyncForComplicationsFailedWithIdentifier:identifierCopy error:errorCopy];
    }
  }

  idsServiceIdentifier = [(WatchConnectivityDaemon *)self idsServiceIdentifier];
  if ([serviceIdentifier isEqual:idsServiceIdentifier])
  {
    goto LABEL_18;
  }

  idsInsecureServiceIdentifier2 = [(WatchConnectivityDaemon *)self idsInsecureServiceIdentifier];
  v22 = [serviceIdentifier isEqual:idsInsecureServiceIdentifier2];

  if ((v22 & 1) == 0)
  {
    originalDestinationDevice = [contextCopy originalDestinationDevice];
    idsServiceIdentifier = [(WatchConnectivityDaemon *)self pairingIDForIDSUniqueDeviceID:originalDestinationDevice];

    v24 = [(WatchConnectivityDaemon *)self WCErrorForIDSError:errorCopy];
    v25 = [(NSMutableDictionary *)self->_sendIdentifierToHandler objectForKeyedSubscript:identifierCopy];
    if (v25)
    {
      v26 = wc_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v36 = identifierCopy;
        v37 = 2114;
        v38 = serviceIdentifier;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "identifier: %{public}@, communicationID: %{public}@ has a completion handler, invoking it", buf, 0x16u);
      }

      (v25)[2](v25, v24);
      [(NSMutableDictionary *)self->_sendIdentifierToHandler removeObjectForKey:identifierCopy];
    }

    else if (serviceIdentifier)
    {
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10001685C;
      v29[3] = &unk_100048F98;
      v29[4] = self;
      v30 = serviceIdentifier;
      v31 = idsServiceIdentifier;
      v32 = identifierCopy;
      v34 = successCopy;
      v33 = v24;
      [(WatchConnectivityDaemon *)self performBlockWhenReady:v29];
    }

LABEL_18:
  }
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  serviceCopy = service;
  protobufCopy = protobuf;
  contextCopy = context;
  dCopy = d;
  serviceIdentifier = [contextCopy serviceIdentifier];
  v16 = [serviceCopy deviceForFromID:dCopy];

  uniqueIDOverride = [v16 uniqueIDOverride];

  v18 = [(WatchConnectivityDaemon *)self pairingIDForIDSUniqueDeviceID:uniqueIDOverride];
  v19 = wc_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = &stru_1000497E8;
    if (serviceIdentifier)
    {
      v20 = serviceIdentifier;
    }

    v59 = v20;
    v62 = uniqueIDOverride;
    v21 = -[WatchConnectivityDaemon descriptionFromPayloadSendType:](self, "descriptionFromPayloadSendType:", [protobufCopy type]);
    selfCopy = self;
    type = [protobufCopy type];
    data = [protobufCopy data];
    *buf = 138544130;
    v85 = v59;
    v86 = 2080;
    v87 = v21;
    v88 = 1024;
    v89 = type;
    self = selfCopy;
    v90 = 2048;
    v91 = [data length];
    uniqueIDOverride = v62;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "communicationID: %{public}@, WCDPayloadSendType: %s (%d), protobufSize: %ld", buf, 0x26u);
  }

  type2 = [protobufCopy type];
  if (type2 > 9)
  {
    if (type2 <= 14)
    {
      switch(type2)
      {
        case 10:
          firstUnlockManager = self->_firstUnlockManager;
          [protobufCopy data];
          v29 = v28 = v18;
          [(WCDFirstUnlockManager *)firstUnlockManager handleFirstUnlockState:v29];
          goto LABEL_38;
        case 11:
          v48 = self->_firstUnlockManager;
          [protobufCopy data];
          v29 = v28 = v18;
          [(WCDFirstUnlockManager *)v48 handleFirstUnlockRequest:v29];
          goto LABEL_38;
        case 12:
          v27 = self->_firstUnlockManager;
          [protobufCopy data];
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
        sub_10002B4D0(protobufCopy);
      }

      goto LABEL_38;
    }

    switch(type2)
    {
      case 15:
        outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
        [(WatchConnectivityDaemon *)self handlePairedSyncComplicationsStartedWithIdentifier:outgoingResponseIdentifier];
        break;
      case 16:
        v51 = [WCDProtoPairedSyncComplicationsStartedAck alloc];
        data2 = [protobufCopy data];
        outgoingResponseIdentifier = [(WCDProtoPairedSyncComplicationsStartedAck *)v51 initWithData:data2];

        incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
        [(WatchConnectivityDaemon *)self handlePairedSyncComplicationsStartedAck:outgoingResponseIdentifier identifier:incomingResponseIdentifier];

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

  if (type2 > 3)
  {
    if (type2 != 4)
    {
      if (type2 != 5)
      {
        if (type2 == 9)
        {
          v65[0] = _NSConcreteStackBlock;
          v65[1] = 3221225472;
          v65[2] = sub_10001735C;
          v65[3] = &unk_100049038;
          v66 = protobufCopy;
          selfCopy2 = self;
          v68 = serviceIdentifier;
          v69 = v18;
          v70 = contextCopy;
          [(WatchConnectivityDaemon *)self service:serviceCopy context:v70 performBlockWhenReady:v65];

          v26 = v66;
          goto LABEL_45;
        }

        goto LABEL_36;
      }

      v49 = [WCDProtoDaemonClientsInformation alloc];
      data3 = [protobufCopy data];
      outgoingResponseIdentifier = [(WCDProtoDaemonClientsInformation *)v49 initWithData:data3];

      [(WatchConnectivityDaemon *)self handleDaemonClientsInformation:outgoingResponseIdentifier];
      goto LABEL_35;
    }

    [(WatchConnectivityDaemon *)self handleCounterpartDaemonDidStart];
LABEL_39:
    [serviceCopy sendAckForMessageWithContext:contextCopy];
    goto LABEL_46;
  }

  if (type2 == 1)
  {
    selfCopy3 = self;
    v30 = [WCDProtoMessageRequest alloc];
    v60 = protobufCopy;
    data4 = [protobufCopy data];
    v32 = [(WCDProtoMessageRequest *)v30 initWithData:data4];

    v33 = [WCMessageRequest alloc];
    outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];
    clientData = [(WCDProtoMessageRequest *)v32 clientData];
    v36 = [v33 initWithPairingID:v18 identifier:outgoingResponseIdentifier2 data:clientData dictionaryMessage:-[WCDProtoMessageRequest dictionaryMessage](v32 expectsResponse:{"dictionaryMessage"), -[WCDProtoMessageRequest expectsResponse](v32, "expectsResponse")}];

    if ([(WCDProtoMessageRequest *)v32 hasIsInUse])
    {
      isInUse = [(WCDProtoMessageRequest *)v32 isInUse];
    }

    else
    {
      isInUse = 1;
    }

    protobufCopy = v60;
    v58 = v32;
    if ([(WCDProtoMessageRequest *)v32 hasCoreLocationData])
    {
      coreLocationData = [(WCDProtoMessageRequest *)v32 coreLocationData];
    }

    else
    {
      coreLocationData = 0;
    }

    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_1000171F4;
    v79[3] = &unk_100048FC0;
    v79[4] = selfCopy3;
    v80 = v36;
    v83 = isInUse;
    v81 = serviceIdentifier;
    v82 = coreLocationData;
    v55 = coreLocationData;
    v56 = v36;
    [(WatchConnectivityDaemon *)selfCopy3 service:serviceCopy context:contextCopy performBlockWhenReady:v79];

    v26 = v58;
    goto LABEL_45;
  }

  if (type2 != 2)
  {
    if (type2 == 3)
    {
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_100017260;
      v71[3] = &unk_100049010;
      v72 = protobufCopy;
      selfCopy4 = self;
      v74 = serviceIdentifier;
      v75 = v18;
      [(WatchConnectivityDaemon *)self service:serviceCopy context:contextCopy performBlockWhenReady:v71];

      v26 = v72;
LABEL_45:

      goto LABEL_46;
    }

    goto LABEL_36;
  }

  selfCopy5 = self;
  v39 = [WCDProtoMessageResponse alloc];
  v61 = protobufCopy;
  data5 = [protobufCopy data];
  v41 = [(WCDProtoMessageResponse *)v39 initWithData:data5];

  v42 = [WCMessageResponse alloc];
  incomingResponseIdentifier2 = [contextCopy incomingResponseIdentifier];
  clientData2 = [(WCDProtoMessageResponse *)v41 clientData];
  v45 = [v42 initWithPairingID:v18 identifier:incomingResponseIdentifier2 data:clientData2 dictionaryMessage:{-[WCDProtoMessageResponse dictionaryMessage](v41, "dictionaryMessage")}];

  if ([(WCDProtoMessageResponse *)v41 errorCode])
  {
    v46 = [NSError wcErrorFromReceivedCode:[(WCDProtoMessageResponse *)v41 errorCode]];
    [v45 setError:v46];
  }

  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_100017208;
  v76[3] = &unk_100048FE8;
  v76[4] = selfCopy5;
  v77 = serviceIdentifier;
  v78 = v45;
  v47 = v45;
  [(WatchConnectivityDaemon *)selfCopy5 service:serviceCopy context:contextCopy performBlockWhenReady:v76];

  protobufCopy = v61;
LABEL_46:
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  serviceCopy = service;
  lCopy = l;
  metadataCopy = metadata;
  contextCopy = context;
  dCopy = d;
  v17 = wc_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v33 = "[WatchConnectivityDaemon service:account:incomingResourceAtURL:metadata:fromID:context:]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  serviceIdentifier = [contextCopy serviceIdentifier];
  outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
  v20 = [serviceCopy deviceForFromID:dCopy];

  uniqueIDOverride = [v20 uniqueIDOverride];

  v22 = [(WatchConnectivityDaemon *)self pairingIDForIDSUniqueDeviceID:uniqueIDOverride];
  if (metadataCopy && ([metadataCopy objectForKeyedSubscript:@"t"], v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
  {
    selfCopy = self;
    v24 = serviceIdentifier;
    v25 = [metadataCopy objectForKeyedSubscript:@"t"];
    integerValue = [v25 integerValue];

    if (integerValue == 2)
    {
      v27 = lCopy;
      serviceIdentifier = v24;
      [(WatchConnectivityDaemon *)selfCopy handleIncomingUserInfoURL:lCopy communicationID:v24 pairingID:v22 sendID:outgoingResponseIdentifier];
    }

    else
    {
      serviceIdentifier = v24;
      if (integerValue == 1)
      {
        v27 = lCopy;
        [(WatchConnectivityDaemon *)selfCopy handleIncomingFileURL:lCopy communicationID:v24 pairingID:v22 sendID:outgoingResponseIdentifier metadata:metadataCopy];
      }

      else
      {
        v29 = wc_log();
        v27 = lCopy;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10002B558(metadataCopy, @"t");
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

    v27 = lCopy;
  }

  [serviceCopy sendAckForMessageWithContext:contextCopy];
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  serviceCopy = service;
  v6 = wc_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[WatchConnectivityDaemon service:connectedDevicesChanged:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", &v7, 0xCu);
  }

  [(WatchConnectivityDaemon *)self updateActiveDeviceConnectedForService:serviceCopy];
}

- (void)service:(id)service devicesChanged:(id)changed
{
  serviceCopy = service;
  v6 = wc_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[WatchConnectivityDaemon service:devicesChanged:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", &v7, 0xCu);
  }

  [(WatchConnectivityDaemon *)self updateActiveDeviceConnectedForService:serviceCopy];
}

- (void)updateActiveDeviceConnectedForService:(id)service
{
  serviceCopy = service;
  v5 = +[WCDSystemMonitor sharedSystemMonitor];
  isActiveDeviceConnected = [serviceCopy isActiveDeviceConnected];

  [v5 setActiveDeviceConnected:isActiveDeviceConnected];
}

- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block
{
  deviceCopy = device;
  blockCopy = block;
  serviceCopy = service;
  idsService = [(WatchConnectivityDaemon *)self idsService];
  v12 = [serviceCopy isEqual:idsService];

  if (v12)
  {
    idsServiceIdentifier = [(WatchConnectivityDaemon *)self idsServiceIdentifier];
    v14 = +[WCDSystemMonitor sharedSystemMonitor];
    [v14 handleSwitchStartedByIDS];
  }

  else
  {
    idsServiceIdentifier = [(WatchConnectivityDaemon *)self idsInsecureServiceIdentifier];
  }

  v15 = wc_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    name = [deviceCopy name];
    v17 = 138543618;
    v18 = idsServiceIdentifier;
    v19 = 2114;
    v20 = name;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@. Acknowledging switch with IDS", &v17, 0x16u);
  }

  blockCopy[2](blockCopy);
}

- (IDSDevice)activeIDSDevice
{
  idsService = [(WatchConnectivityDaemon *)self idsService];
  activeIDSDevice = [idsService activeIDSDevice];

  return activeIDSDevice;
}

- (void)launchCompanionAppID:(id)d isInUse:(BOOL)use coreLocationData:(id)data
{
  useCopy = use;
  dCopy = d;
  dataCopy = data;
  v10 = wc_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "NO";
    if (useCopy)
    {
      v11 = "YES";
    }

    *buf = 138543618;
    v22 = dCopy;
    v23 = 2080;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "companionAppIdentifier: %{public}@, isInUse: %s", buf, 0x16u);
  }

  v12 = +[AVSystemController sharedAVSystemController];
  [v12 setAttribute:dCopy forKey:AVSystemController_AllowAppToInitiatePlaybackTemporarilyAttribute error:0];

  if (useCopy)
  {
    [(WatchConnectivityDaemon *)self setCLTransientAuthorization:dCopy withCoreLocationData:dataCopy];
  }

  v13 = +[FBSSystemService sharedService];
  v19 = FBSOpenApplicationOptionKeyActivateSuspended;
  v20 = &__kCFBooleanTrue;
  v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100017C70;
  v16[3] = &unk_1000490B0;
  v17 = dCopy;
  selfCopy = self;
  v15 = dCopy;
  [v13 openApplication:v15 options:v14 withResult:v16];
}

- (void)acquireBackgroundAssertionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = [(NSMutableDictionary *)self->_companionAppAssertions objectForKeyedSubscript:identifierCopy];

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
    v9 = [v7 initWithBundleIdentifier:identifierCopy flags:1 reason:16 name:@"WatchConnectivity Background Launch" withHandler:&v13];
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
      [(WatchConnectivityDaemon *)self handleAquiredAssertion:v9 identifier:identifierCopy, v13, v14, v15, v16];
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

- (void)cleanUpProcessAssertionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_companionAppAssertions objectForKeyedSubscript:identifierCopy];
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
        v14 = identifierCopy;
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
        v14 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "companionAppIdentifier: %{public}@ canceling old timer", &v13, 0xCu);
      }

      dispatch_source_cancel(v11);
    }

    [(NSMutableDictionary *)self->_companionAppAssertions removeObjectForKey:identifierCopy];
  }
}

- (void)handleAquiredAssertion:(id)assertion identifier:(id)identifier
{
  assertionCopy = assertion;
  identifierCopy = identifier;
  v8 = wc_log();
  v9 = v8;
  if (assertionCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "companionAppIdentifier: %{public}@, acquired process assertion", buf, 0xCu);
    }

    v10 = [(WatchConnectivityDaemon *)self createBackgroundAssertionTimerForIdentifier:identifierCopy];
    v9 = v10;
    if (v10)
    {
      v16[0] = @"process-assertion";
      v16[1] = @"process-assertion-timer";
      v17[0] = assertionCopy;
      v17[1] = v10;
      v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
      [(NSMutableDictionary *)self->_companionAppAssertions setObject:v11 forKeyedSubscript:identifierCopy];

      dispatch_resume(v9);
      objc_initWeak(buf, self->_companionAppAssertions);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100018488;
      v13[3] = &unk_100048D00;
      objc_copyWeak(&v15, buf);
      v14 = identifierCopy;
      [assertionCopy setInvalidationHandler:v13];

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

- (id)createBackgroundAssertionTimerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  v6 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000185D4;
  v9[3] = &unk_100048AE8;
  v9[4] = self;
  v10 = identifierCopy;
  v7 = identifierCopy;
  dispatch_source_set_event_handler(v5, v9);

  return v5;
}

- (void)updateAllClientsWithValues
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_communicationIdentifierToClient allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [(WatchConnectivityDaemon *)self updateClientWithValues:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)updateClientWithValues:(id)values
{
  valuesCopy = values;
  v4 = +[WCDSystemMonitor sharedSystemMonitor];
  initialSetUpComplete = [v4 initialSetUpComplete];

  if (initialSetUpComplete)
  {
    counterpartClientCommunicationIdentifiers = self->_counterpartClientCommunicationIdentifiers;
    communicationID = [valuesCopy communicationID];
    [valuesCopy setCounterpartCanEstablishXPCConnection:{-[NSSet containsObject:](counterpartClientCommunicationIdentifiers, "containsObject:", communicationID)}];

    [valuesCopy setPrivileged:0];
  }
}

- (const)descriptionFromPayloadSendType:(unsigned __int16)type
{
  if ((type - 1) > 0x10)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_100049120[(type - 1)];
  }
}

- (id)dataFromUUIDString:(id)string
{
  v7[0] = 0;
  v7[1] = 0;
  stringCopy = string;
  v4 = [[NSUUID alloc] initWithUUIDString:stringCopy];

  [v4 getUUIDBytes:v7];
  v5 = [NSData dataWithBytes:v7 length:16];

  return v5;
}

- (id)pairingIDForIDSUniqueDeviceID:(id)d
{
  dCopy = d;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  idsService = [(WatchConnectivityDaemon *)self idsService];
  devices = [idsService devices];

  v7 = [devices countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(devices);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        uniqueIDOverride = [v10 uniqueIDOverride];
        v12 = [uniqueIDOverride isEqual:dCopy];

        if (v12)
        {
          v13 = +[WCDSystemMonitor sharedSystemMonitor];
          nsuuid = [v10 nsuuid];
          v7 = [v13 pairingIDForBTUUID:nsuuid];

          goto LABEL_11;
        }
      }

      v7 = [devices countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)WCErrorForIDSError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqual:IDSErrorDomain];

  v6 = errorCopy;
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
    code = [v9 code];
    if (code <= 26)
    {
      if (code == 18)
      {
        v26 = NSUnderlyingErrorKey;
        v27 = v7;
        userInfo = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v12 = 7009;
        goto LABEL_14;
      }

      if (code != 23)
      {
        goto LABEL_12;
      }

LABEL_11:
      v24 = NSUnderlyingErrorKey;
      v25 = v7;
      userInfo = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v12 = 7017;
      goto LABEL_14;
    }

    if (code == 38)
    {
      goto LABEL_11;
    }

    if (code != 27)
    {
LABEL_12:
      userInfo = [v9 userInfo];
      v13 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

      v8 = 0;
      v9 = v13;
      goto LABEL_15;
    }

    v28 = NSUnderlyingErrorKey;
    v29 = v7;
    userInfo = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v12 = 7015;
LABEL_14:
    v8 = [NSError wcErrorWithCode:v12 userInfo:userInfo];
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

- (id)applicationInfoForCommunicationID:(id)d
{
  dCopy = d;
  v4 = +[WCDSystemMonitor sharedSystemMonitor];
  applicationWorkspace = [v4 applicationWorkspace];
  v6 = [applicationWorkspace applicationInfoForBundleIdentifier:dCopy type:1 allowPlaceholder:1];

  return v6;
}

- (void)duetIdentifiersForCompanionAppID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v7 = +[WCDSystemMonitor sharedSystemMonitor];
  applicationWorkspace = [v7 applicationWorkspace];
  v9 = [applicationWorkspace applicationInfoForBundleIdentifier:dCopy type:1];

  if (v9)
  {
    v10 = objc_opt_new();
    [v10 addObject:dCopy];
    watchAppBundleIdentifier = [v9 watchAppBundleIdentifier];
    [v10 addObject:watchAppBundleIdentifier];

    watchExtensionBundleIdentifier = [v9 watchExtensionBundleIdentifier];
    if (watchExtensionBundleIdentifier)
    {
      [v10 addObject:watchExtensionBundleIdentifier];
    }

    v13 = wc_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "gathered duet identifiers %{public}@", &v16, 0xCu);
    }

    v14 = [v10 copy];
    handlerCopy[2](handlerCopy, v14);
  }

  else
  {
    v15 = wc_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10002B830();
    }

    handlerCopy[2](handlerCopy, 0);
    v10 = handlerCopy;
  }
}

- (BOOL)cellUsageAllowedForBundleID:(id)d
{
  dCopy = d;
  v4 = _CTServerConnectionCreateOnTargetQueue();
  if (v4)
  {
    _CTServerConnectionCopyCellularUsagePolicy();
    CFRelease(v4);
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)moveFileToClientInbox:(id)inbox applicationInfo:(id)info pairingID:(id)d fileIdentifier:(id)identifier userInfoData:(id)data error:(id *)error
{
  inboxCopy = inbox;
  infoCopy = info;
  dCopy = d;
  identifierCopy = identifier;
  dataCopy = data;
  v18 = wc_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    path = [inboxCopy path];
    v20 = "YES";
    *buf = 138544130;
    v73 = path;
    if (!dataCopy)
    {
      v20 = "NO";
    }

    v74 = 2114;
    v75 = infoCopy;
    v76 = 2114;
    v77 = identifierCopy;
    v78 = 2080;
    v79 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "incomingFileURL: %{public}@, application: %{public}@, fileIdentifier: %{public}@, hasUserInfoData: %s", buf, 0x2Au);
  }

  v65 = dataCopy;

  v21 = +[WCDSystemMonitor sharedSystemMonitor];
  v22 = [v21 dataContainerURLForApplicationInfo:infoCopy];

  if (dCopy && v22)
  {
    v23 = WCTransferredFilesURLInContainer();
    v24 = [v23 URLByAppendingPathComponent:identifierCopy isDirectory:1];

    lastPathComponent = [inboxCopy lastPathComponent];
    v63 = [v24 URLByAppendingPathComponent:lastPathComponent isDirectory:0];

    v62 = WCSessionFilesURLInContainer();
    v64 = [v62 URLByAppendingPathComponent:identifierCopy isDirectory:1];
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
      errorCopy = error;
      v31 = +[NSFileManager defaultManager];
      v70 = v28;
      v32 = [v31 createDirectoryAtURL:v64 withIntermediateDirectories:1 attributes:0 error:&v70];
      v33 = v70;

      if (v32)
      {
        v34 = +[NSFileManager defaultManager];
        v69 = v33;
        v35 = [v34 moveItemAtURL:inboxCopy toURL:v63 error:&v69];
        v28 = v69;

        if (v35)
        {
          v36 = [WCSessionFile alloc];
          relativePath = [v63 relativePath];
          v27 = [v36 initWithIdentifier:identifierCopy relativePath:relativePath];

          if (v65)
          {
            v68 = v28;
            [v27 updateUserInfoData:v65 error:&v68];
            v38 = v68;

            v28 = v38;
          }

          error = errorCopy;
          if (!v28)
          {
            v45 = +[WCDIndexManager sharedManager];
            v46 = [v45 fileIndexForApplication:infoCopy pairingID:dCopy];

            fileIdentifier = [v27 fileIdentifier];
            v28 = [v46 addContentIdentifier:fileIdentifier];

            if (v28)
            {
              v59 = v46;
              v48 = wc_log();
              error = errorCopy;
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
                  path2 = [v58 path];
                  v55 = NSPrintF();
                  *buf = 138543874;
                  v73 = v27;
                  v74 = 2114;
                  v75 = path2;
                  v76 = 2114;
                  v77 = v55;
                  _os_log_fault_impl(&_mh_execute_header, v52, OS_LOG_TYPE_FAULT, "error archiving session file to path %{public}@ %{public}@ due to %{public}@", buf, 0x20u);
                }

                WCDeleteItemAtURL();
                WCDeleteItemAtURL();
                fileIdentifier2 = [v27 fileIdentifier];
                v46 = v60;
                [v60 removeContentIdentifier:fileIdentifier2];

                v27 = 0;
              }

              error = errorCopy;
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

      error = errorCopy;
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

  if (error)
  {
    v43 = v28;
    *error = v28;
  }

  return v27;
}

- (id)moveUserInfoToClientInbox:(id)inbox applicationInfo:(id)info pairingID:(id)d userInfoIdentifier:(id)identifier
{
  inboxCopy = inbox;
  infoCopy = info;
  dCopy = d;
  identifierCopy = identifier;
  v14 = wc_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    path = [inboxCopy path];
    *buf = 138544130;
    v50 = path;
    v51 = 2114;
    v52 = infoCopy;
    v53 = 2114;
    v54 = dCopy;
    v55 = 2114;
    v56 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "incomingUserInfoURL: %{public}@, application: %{public}@, pairingID: %{public}@, userInfoIdentifier: %{public}@", buf, 0x2Au);
  }

  v16 = +[WCDSystemMonitor sharedSystemMonitor];
  v17 = [v16 dataContainerURLForApplicationInfo:infoCopy];

  if (dCopy && v17)
  {
    v18 = WCTransferredUserInfoInboxURLInContainer();
    v19 = +[WCDIndexManager sharedManager];
    v45 = [v19 userInfoIndexForApplication:infoCopy pairingID:dCopy];

    v20 = [v18 URLByAppendingPathComponent:identifierCopy isDirectory:1];

    v21 = [v20 URLByAppendingPathComponent:WCUserInfoTransferObjectFileName isDirectory:0];
    v22 = [(WatchConnectivityDaemon *)self complicationUserInfoPathInDataContainer:v17 pairingID:dCopy];
    if (v22)
    {
      path2 = [v21 path];
      v24 = [path2 isEqual:v22];

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

    v44 = inboxCopy;
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
      inboxCopy = v44;
      goto LABEL_28;
    }

    inboxCopy = v44;
    v27 = [[WCSessionUserInfoTransfer alloc] initWithProtoBufFileURL:v44];
    if (v27)
    {
      v39 = [v45 addContentIdentifier:identifierCopy];

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
            inboxCopy = v44;
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

        [v45 removeContentIdentifier:identifierCopy];
        v21 = 0;
        inboxCopy = v44;
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

- (void)storeComplicationUserInfoTransfer:(id)transfer applicationInfo:(id)info pairingID:(id)d
{
  transferCopy = transfer;
  infoCopy = info;
  dCopy = d;
  v10 = wc_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v49 = transferCopy;
    v50 = 2114;
    v51 = infoCopy;
    v52 = 2114;
    v53 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "userInfoTransfer: %{public}@, application: %{public}@, pairingID: %{public}@", buf, 0x20u);
  }

  v11 = +[WCDSystemMonitor sharedSystemMonitor];
  v12 = [v11 dataContainerURLForApplicationInfo:infoCopy];

  if (!MGGetBoolAnswer() || ([transferCopy transferIdentifier], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
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
  if (dCopy && v12)
  {
    v15 = WCTransferredUserInfoInboxURLInContainer();
    v43 = [v15 URLByAppendingPathComponent:WCComplicationUserInfoIDFileName isDirectory:0];
    v16 = +[WCDIndexManager sharedManager];
    v17 = [v16 userInfoIndexForApplication:infoCopy pairingID:dCopy];

    transferIdentifier = [transferCopy transferIdentifier];
    v19 = [v15 URLByAppendingPathComponent:transferIdentifier isDirectory:1];

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

    transferIdentifier2 = [transferCopy transferIdentifier];
    v14 = [v17 addContentIdentifier:transferIdentifier2];

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
    v26 = [NSKeyedArchiver archivedDataWithRootObject:transferCopy requiringSecureCoding:1 error:&v46];
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
        transferIdentifier3 = [transferCopy transferIdentifier];
        v30 = [transferIdentifier3 dataUsingEncoding:4];

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
            transferIdentifier4 = [transferCopy transferIdentifier];
            complicationTransferIdentifier = [transferCopy complicationTransferIdentifier];
            *buf = 138543618;
            v49 = transferIdentifier4;
            v50 = 2114;
            v51 = complicationTransferIdentifier;
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

    transferIdentifier5 = [transferCopy transferIdentifier];
    [v17 removeContentIdentifier:transferIdentifier5];

    v34 = wc_log();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
LABEL_32:

LABEL_33:
      goto LABEL_7;
    }

    path = [v20 path];
    v40 = NSPrintF();
    log = v34;
    *buf = 138543618;
    v49 = path;
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

- (void)persistAppContext:(id)context applicationInfo:(id)info pairingID:(id)d
{
  contextCopy = context;
  infoCopy = info;
  dCopy = d;
  v10 = wc_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v24 = [contextCopy length];
    v25 = 2114;
    v26 = infoCopy;
    v27 = 2114;
    v28 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "appContextDataSize: %ld, application: %{public}@, pairingID: %{public}@", buf, 0x20u);
  }

  v11 = +[WCDSystemMonitor sharedSystemMonitor];
  v12 = [v11 dataContainerURLForApplicationInfo:infoCopy];

  if (dCopy && v12)
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
      v18 = [contextCopy writeToURL:v14 options:1073741825 error:&v21];
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

- (void)performBlockWhenReady:(id)ready
{
  readyCopy = ready;
  v4 = +[WCDSystemMonitor sharedSystemMonitor];
  initialSetUpComplete = [v4 initialSetUpComplete];

  if (initialSetUpComplete)
  {
    readyCopy[2]();
  }

  else
  {
    readyBlocks = self->_readyBlocks;
    v7 = [readyCopy copy];

    v8 = objc_retainBlock(v7);
    [(NSMutableArray *)readyBlocks addObject:v8];

    readyCopy = v7;
  }
}

- (void)service:(id)service context:(id)context performBlockWhenReady:(id)ready
{
  serviceCopy = service;
  contextCopy = context;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001A744;
  v13[3] = &unk_100049100;
  v15 = serviceCopy;
  readyCopy = ready;
  v14 = contextCopy;
  v10 = serviceCopy;
  v11 = contextCopy;
  v12 = readyCopy;
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

- (void)setCLTransientAuthorization:(id)authorization withCoreLocationData:(id)data
{
  authorizationCopy = authorization;
  dataCopy = data;
  v8 = dataCopy;
  if (authorizationCopy && dataCopy)
  {
    locationManager = [(WatchConnectivityDaemon *)self locationManager];
    v10 = [locationManager _setClientTransientAuthorizationInfoForBundleId:authorizationCopy data:v8];

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

  if (authorizationCopy)
  {
    v12 = [(NSMutableDictionary *)self->_coreLocationAssertions objectForKeyedSubscript:authorizationCopy];

    if (!v12)
    {
      v10 = [CLInUseAssertion newAssertionForBundleIdentifier:authorizationCopy withReason:@"Location in use on paired watch by 3rd party app"];
      if (v10)
      {
        v13 = [(WatchConnectivityDaemon *)self createCLInUseTimerForIdentifier:authorizationCopy];
        v11 = v13;
        if (v13)
        {
          v19[0] = @"inuse-assertion";
          v19[1] = @"inuse-assertion-timer";
          v20[0] = v10;
          v20[1] = v13;
          v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
          [(NSMutableDictionary *)self->_coreLocationAssertions setObject:v14 forKeyedSubscript:authorizationCopy];

          dispatch_resume(v11);
          v15 = wc_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v17 = 138543362;
            v18 = authorizationCopy;
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

- (void)releaseCLInUseAssertionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_coreLocationAssertions objectForKeyedSubscript:identifierCopy];
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
        v13 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", &v12, 0xCu);
      }
    }

    v10 = [v6 objectForKeyedSubscript:@"inuse-assertion-timer"];
    if (v10)
    {
      v11 = v10;
      dispatch_source_cancel(v10);
    }

    [(NSMutableDictionary *)self->_coreLocationAssertions removeObjectForKey:identifierCopy];
  }
}

- (id)createCLInUseTimerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  v6 = dispatch_time(0, 40000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001AD0C;
  v9[3] = &unk_100048AE8;
  v9[4] = self;
  v10 = identifierCopy;
  v7 = identifierCopy;
  dispatch_source_set_event_handler(v5, v9);

  return v5;
}

@end