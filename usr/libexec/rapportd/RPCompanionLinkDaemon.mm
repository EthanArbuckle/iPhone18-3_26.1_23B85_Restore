@interface RPCompanionLinkDaemon
+ (id)sharedCompanionLinkDaemon;
- (BOOL)_allowMessageForRegistrationOptions:(id)options cnx:(id)cnx;
- (BOOL)_allowStreamRequest:(id)request xpcCnx:(id)cnx rpCnx:(id)rpCnx;
- (BOOL)_clientBLEActionDiscoveryShouldRun;
- (BOOL)_clientBLENearbyActionV2AdvertiserShouldRun;
- (BOOL)_clientBLENeedsCLinkAdvertiserShouldRun;
- (BOOL)_clientBonjourAWDLBrowserShouldRun;
- (BOOL)_clientBonjourCheckFoundPairedDevice:(id)device publicID:(id)d;
- (BOOL)_clientBonjourCheckLostPairedDevice:(id)device publicID:(id)d;
- (BOOL)_clientBonjourFoundDevice:(id)device reevaluate:(BOOL)reevaluate;
- (BOOL)_clientConnectionStartOnDemand:(id)demand xpcCnx:(id)cnx error:(id *)error;
- (BOOL)_clientConnectionStartUnauth:(id)unauth client:(id)client publicID:(id)d xpcCnx:(id)cnx error:(id *)error;
- (BOOL)_clientShouldFindNonSameAccountDevices;
- (BOOL)_destinationID:(id)d matchesCnx:(id)cnx;
- (BOOL)_destinationID:(id)d matchesProxyDeviceOnCnx:(id)cnx;
- (BOOL)_haveActiveClientConnectionsOnAWDL;
- (BOOL)_haveActiveServerConnectionsOnAWDL;
- (BOOL)_homeKitAuthMatchForBonjourDevice:(id)device;
- (BOOL)_proxyDevice:(id)device isEqualTo:(id)to;
- (BOOL)_proxyDevice:(id)device receivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler cnx:(id)cnx;
- (BOOL)_receivedEventID:(id)d onXPCCnx:(id)cnx event:(id)event options:(id)options unauth:(BOOL)unauth rpCnx:(id)rpCnx;
- (BOOL)_receivedRequestID:(id)d onXPCCnx:(id)cnx request:(id)request options:(id)options responseHandler:(id)handler unauth:(BOOL)unauth rpCnx:(id)rpCnx;
- (BOOL)_serverBLENeedsCLinkScannerScreenOff;
- (BOOL)_serverBonjourAWDLAdvertiserShouldRun;
- (BOOL)_serverBonjourShouldRun;
- (BOOL)_serverNearbyActionV2DiscoveryShouldRun;
- (BOOL)_serverNearbyInfoV2DiscoveryShouldRun;
- (BOOL)_serverShouldAdvertiseIdentifiableInfoWhenUnpairedForAirPlayWithLinkType:(int)type;
- (BOOL)_serverTCPHasActiveConnections;
- (BOOL)_shouldSendActivityLevelOverWiFi;
- (BOOL)addXPCMatchingToken:(unint64_t)token event:(id)event handler:(id)handler;
- (BOOL)createDeviceToEndpointMappingForDeviceID:(id)d endpointUUID:(id *)iD error:(id *)error;
- (BOOL)diagnosticCommand:(id)command params:(id)params;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)removeXPCMatchingToken:(unint64_t)token;
- (RPCompanionLinkDaemon)init;
- (id)_addProxyIdentifier:(id)identifier toDictionary:(id)dictionary;
- (id)_checkForProxyOrLocalDestinations:(id)destinations eventID:(id)d event:(id)event options:(id)options completion:(id)completion;
- (id)_clientBLENeedsCLinkTargetDevice;
- (id)_clientCreateConnection:(id)connection xpcCnx:(id)cnx error:(id *)error;
- (id)_clientShouldConnectOverBonjour:(id)bonjour device:(id)device identities:(id)identities;
- (id)_contextCollectorDevice;
- (id)_discoveryNonceOrRotate:(BOOL)rotate;
- (id)_eventForHomeHubDevice:(id)device;
- (id)_findDeviceWithDevice:(id)device deviceMap:(id)map matchedIdentifier:(id *)identifier;
- (id)_findExistingActiveDevice:(id)device;
- (id)_findExistingActiveOnDemandDevice:(id)device;
- (id)_findMatchingAWDLBonjourDevice:(id)device;
- (id)_findWiFiConnectionByID:(id)d;
- (id)_getAppleID;
- (id)_homeKitDecryptRotatingIDForBonjourDevice:(id)device;
- (id)_serverBonjourAuthTagString;
- (id)_serverBonjourAuthTagStringWithData:(id)data;
- (id)_serverBonjourTempAuthTagStringWithData:(id)data;
- (id)_serverTCPHandleConnectionStarted:(id)started;
- (id)_xpcConnections:(id)connections withControlFlags:(unint64_t)flags;
- (id)descriptionWithLevel:(int)level;
- (id)findAuthAWDLPairingModeDeviceForIdentifier:(id)identifier;
- (id)findConnectedDeviceForIdentifier:(id)identifier controlFlags:(unint64_t)flags cnx:(id *)cnx;
- (id)findDeviceFromID:(id)d;
- (id)findServerClientFromID:(id)d senderIDS:(id)s statusFlags:(unint64_t)flags;
- (id)findUnauthDeviceForIdentifier:(id)identifier;
- (id)homeHubDeviceForLaunchInstanceID:(id)d;
- (id)logDictionaryOfStringArrays:(id)arrays withPrefix:(id)prefix;
- (int)_airPlayLeaderStateUncached;
- (int)_localMediaAccessControlSetting;
- (int64_t)_sessionsActiveOnConnection:(id)connection xpcConnection:(id)xpcConnection;
- (unsigned)_controlFlagsToNearbyActionType:(unint64_t)type;
- (void)_activate;
- (void)_activeDeviceAdded:(id)added cnx:(id)cnx;
- (void)_activeDeviceChangedForConnection:(id)connection bonjourDevice:(id)device;
- (void)_activeDeviceRemoved:(id)removed cnx:(id)cnx;
- (void)_addApplicationPID:(id)d;
- (void)_bleServerEnsureStarted;
- (void)_bleServerEnsureStopped;
- (void)_bleServerHandleConnectionEnded:(id)ended;
- (void)_bleServerHandleConnectionStarted:(id)started;
- (void)_btPipeConnectionEnded:(id)ended;
- (void)_btPipeConnectionStart;
- (void)_btPipeEnsureStarted;
- (void)_btPipeEnsureStopped;
- (void)_btPipeHandleStateChanged:(id)changed;
- (void)_btPipeSyncKeysIfNeeded;
- (void)_btPipeTearDown:(id)down;
- (void)_clientBLEActionDiscoveryEnsureStarted;
- (void)_clientBLEActionDiscoveryEnsureStopped;
- (void)_clientBLEDiscoveryDeviceLastSeenChange:(id)change;
- (void)_clientBLEDiscoveryDeviceLost:(id)lost force:(BOOL)force deviceFlags:(unsigned __int8)flags;
- (void)_clientBLEDiscoveryEnsureStarted;
- (void)_clientBLEDiscoveryEnsureStopped;
- (void)_clientBLEFamilyDeviceReportChanges;
- (void)_clientBLENearbyActionV2AdvertiserEnsureStarted;
- (void)_clientBLENearbyActionV2AdvertiserEnsureStopped;
- (void)_clientBLENearbyActionV2AdvertiserRestart;
- (void)_clientBLENearbyActionV2AdvertiserUpdate;
- (void)_clientBLENeedsCLinkAdvertiserEnsureStarted;
- (void)_clientBLENeedsCLinkAdvertiserEnsureStopped;
- (void)_clientBLENeedsCLinkAdvertiserRestart;
- (void)_clientBLENeedsCLinkAdvertiserUpdate;
- (void)_clientBonjourAWDLBrowserEnsureStarted;
- (void)_clientBonjourAWDLBrowserEnsureStopped;
- (void)_clientBonjourAWDLBrowserFoundDevice:(id)device;
- (void)_clientBonjourAWDLBrowserLostDevice:(id)device;
- (void)_clientBonjourEnsureStarted;
- (void)_clientBonjourEnsureStopped;
- (void)_clientBonjourFoundUnauthDevice:(id)device isAWDLDevice:(BOOL)lDevice;
- (void)_clientBonjourLostDevice:(id)device;
- (void)_clientBonjourLostUnauthDevice:(id)device;
- (void)_clientBonjourReevaluateAllDevices;
- (void)_clientBonjourReevaluateUnauthDevices;
- (void)_clientBonjourResetReevaluationRateLimit;
- (void)_clientConnectionEnded:(id)ended uniqueID:(id)d;
- (void)_clientConnectionEndedUnauth:(id)unauth publicID:(id)d;
- (void)_clientConnectionStart:(id)start controlFlags:(unint64_t)flags uniqueID:(id)d identity:(id)identity;
- (void)_clientEnsureStarted;
- (void)_clientEnsureStopped;
- (void)_clientOnDemandAWDLDiscoveryStartForXPC:(id)c;
- (void)_clientOnDemandAWDLDiscoveryTimedOutForDevice:(id)device xpcCnx:(id)cnx;
- (void)_clientOnDemandConnectionEnded:(id)ended uniqueID:(id)d;
- (void)_clientOnDemandDiscoveryStart:(id)start xpcCnx:(id)cnx;
- (void)_clientPurgeUnauthAWDLDevices;
- (void)_clientReportFoundDevice:(id)device;
- (void)_clientReportLocalDevice:(id)device xpcCnx:(id)cnx;
- (void)_clientReportLostDevice:(id)device cnx:(id)cnx;
- (void)_clientReportUINoteDevice:(id)device;
- (void)_clientSendActivityLevelOverWiFiIfNecessary;
- (void)_clientUINoteAction:(int)action error:(id)error device:(id)device;
- (void)_clientUINoteProcessPending;
- (void)_clientUINoteStart:(id)start;
- (void)_configureConnectionForPairing:(id)pairing;
- (void)_connectionConfigureCommon:(id)common;
- (void)_connectionStateChanged:(int)changed cnx:(id)cnx;
- (void)_createDestinationIdentifierMaps;
- (void)_createRequestEntryForXid:(id)xid requestID:(id)d options:(id)options responseHandler:(id)handler;
- (void)_deliverEventID:(id)d event:(id)event options:(id)options unauth:(BOOL)unauth cnx:(id)cnx outError:(id *)error;
- (void)_disconnectRemovedSharedHomeDevices;
- (void)_disconnectUnauthConnections;
- (void)_disconnectUnpairedDevices;
- (void)_duetSyncEnsureStarted;
- (void)_duetSyncEnsureStopped;
- (void)_existingProxyDeviceUpdated:(id)updated event:(id)event isLocal:(BOOL)local;
- (void)_forEachConnectionWithHandler:(id)handler;
- (void)_forEachMatchingDestinationID:(id)d handler:(id)handler;
- (void)_forEachUniqueMatchingDestinationID:(id)d handler:(id)handler;
- (void)_handleContextCollectorProxyRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_handleContextCollectorRequest:(id)request responseHandler:(id)handler;
- (void)_hidEnsureStarted;
- (void)_hidEnsureStopped;
- (void)_homeHubDeviceAdded:(id)added;
- (void)_homeHubDeviceRemoved:(id)removed;
- (void)_homeKitEnsureStarted;
- (void)_homeKitEnsureStopped;
- (void)_homeKitGetPairingIdentities;
- (void)_homeKitGetUserInfo:(id)info;
- (void)_homeKitIdentityUpdated:(id)updated error:(id)error;
- (void)_homeKitPairingUpdated:(id)updated;
- (void)_homeKitSelfAccessoryMediaAccessUpdated:(unsigned int)updated password:(id)password;
- (void)_homeKitSelfAccessoryMediaSystemUpdated:(int)updated;
- (void)_homeKitSelfAccessoryUpdated;
- (void)_homeKitUpdateInfo:(BOOL)info;
- (void)_homeKitUpdateUserIdentifiers;
- (void)_interestReceived:(id)received cnx:(id)cnx;
- (void)_interestRemoveForCnx:(id)cnx;
- (void)_interestSendEventID:(id)d event:(id)event;
- (void)_invalidate;
- (void)_invalidated;
- (void)_localDeviceCleanup;
- (void)_localDeviceUpdate;
- (void)_mediaControlEnsureStarted;
- (void)_mediaControlEnsureStopped;
- (void)_mediaRemoteIDGet;
- (void)_mediaRouteIDGet;
- (void)_miscEnsureStarted;
- (void)_miscEnsureStopped;
- (void)_miscHandleLaunchAppRequest:(id)request responseHandler:(id)handler;
- (void)_miscHandleSpeakRequest:(id)request responseHandler:(id)handler;
- (void)_personalDeviceUpdate;
- (void)_processPendingLostBLEDevices;
- (void)_processPendingLostNeedsCLinkDevices;
- (void)_proxyDevice:(id)device loopbackRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler;
- (void)_proxyDeviceAdd:(id)add options:(id)options eventID:(id)d deviceInfo:(id)info cnx:(id)cnx;
- (void)_proxyDeviceListUpdated:(id)updated content:(id)content options:(id)options cnx:(id)cnx;
- (void)_proxyDeviceRemove:(id)remove options:(id)options cnx:(id)cnx;
- (void)_proxyLocalDeviceUpdateOnConnection:(id)connection launchInstanceID:(id)d;
- (void)_pruneStaleBLEDevices;
- (void)_reachabilityEnsureStarted;
- (void)_reachabilityEnsureStopped;
- (void)_registerConnectionRequestID:(id)d options:(id)options handler:(id)handler;
- (void)_removeApplicationPID:(id)d;
- (void)_reportXPCMatchingDiscoveryCLink;
- (void)_reportXPCMatchingDiscoveryCompanionAuthenticationDevice:(id)device;
- (void)_reportXPCMatchingDiscoveryUINoteDevice:(id)device;
- (void)_schedulePendingLostBLEDeviceTimer;
- (void)_schedulePendingLostNeedsCLinkDeviceTimer;
- (void)_sendProxyDeviceUpdateToPeer:(id)peer;
- (void)_serverBLENeedsCLinkScannerDeviceFound:(id)found;
- (void)_serverBLENeedsCLinkScannerDeviceLost:(id)lost;
- (void)_serverBLENeedsCLinkScannerEnsureStarted;
- (void)_serverBLENeedsCLinkScannerEnsureStopped;
- (void)_serverBTAddressChanged;
- (void)_serverBTAddressMonitorEnsureStarted;
- (void)_serverBTAddressMonitorEnsureStopped;
- (void)_serverBonjourAWDLAdvertiserEnsureStarted;
- (void)_serverBonjourAWDLAdvertiserEnsureStopped;
- (void)_serverBonjourAWDLAdvertiserUpdateTXT;
- (void)_serverBonjourEnsureStarted;
- (void)_serverBonjourEnsureStopped;
- (void)_serverBonjourUpdateTXT;
- (void)_serverEnsureStarted;
- (void)_serverEnsureStopped;
- (void)_serverNearbyActionV2DiscoveryEnsureStarted;
- (void)_serverNearbyActionV2DiscoveryEnsureStopped;
- (void)_serverNearbyInfoV2DeviceFound:(id)found deviceFlags:(unsigned __int8)flags;
- (void)_serverNearbyInfoV2DeviceLost:(id)lost idsIdentifier:(id)identifier force:(BOOL)force deviceFlags:(unsigned __int8)flags;
- (void)_serverNearbyInfoV2DiscoveryEnsureStarted;
- (void)_serverNearbyInfoV2DiscoveryEnsureStopped;
- (void)_serverReceivedNeedsAWDLEvent:(id)event event:(id)a4;
- (void)_serverTCPEnsureStarted;
- (void)_serverTCPEnsureStopped;
- (void)_serverTCPHandleConnectionEnded:(id)ended;
- (void)_serverTCPRemoveConnectionsWithIdentifier:(id)identifier exceptConnection:(id)connection;
- (void)_sessionHandlePeerDisconnect:(id)disconnect;
- (void)_sessionHandleStartRequest:(id)request options:(id)options cnx:(id)cnx responseHandler:(id)handler;
- (void)_sessionHandleStopRequest:(id)request options:(id)options cnx:(id)cnx responseHandler:(id)handler;
- (void)_siriEnsureStarted;
- (void)_siriEnsureStopped;
- (void)_startApplicationServiceMonitorIfNecessary;
- (void)_stereoDeviceUpdate:(int)update;
- (void)_update;
- (void)_updateAssertions;
- (void)_updateForXPCClientChange;
- (void)_updateForXPCServerChange;
- (void)_updateHomeHubDevices:(id)devices;
- (void)_updateRBSProcessMonitor;
- (void)_xpcConnectionInvalidated:(id)invalidated;
- (void)activate;
- (void)daemonInfoChanged:(unint64_t)changed;
- (void)deregisterEventID:(id)d;
- (void)deregisterRequestID:(id)d;
- (void)interestDeregisterEventID:(id)d peerIdentifier:(id)identifier owner:(id)owner;
- (void)interestRegisterEventID:(id)d peerIdentifier:(id)identifier owner:(id)owner;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prefsChanged;
- (void)registerEventID:(id)d options:(id)options handler:(id)handler;
- (void)registerRequestID:(id)d options:(id)options handler:(id)handler;
- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion;
- (void)sendRequestID:(id)d request:(id)request destinationID:(id)iD xpcID:(unsigned int)xpcID options:(id)options responseHandler:(id)handler;
- (void)sessionStartSend:(id)send session:(id)session xpcID:(unsigned int)d destinationID:(id)iD completion:(id)completion;
- (void)sessionStopSend:(id)send session:(id)session xpcID:(unsigned int)d completion:(id)completion;
@end

@implementation RPCompanionLinkDaemon

- (void)_updateForXPCClientChange
{
  v43 = +[NSMutableSet set];
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  DeviceClass = GestaltGetDeviceClass();
  v36 = +[NSMutableSet set];
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = self->_xpcConnections;
  v2 = [(NSMutableSet *)obj countByEnumeratingWithState:&v51 objects:v63 count:16];
  v3 = 0;
  v4 = 0;
  if (!v2)
  {
    v35 = 0;
    v37 = 0;
    bleScreenOffScanRate = 0;
    LOBYTE(v46) = 0;
    v42 = 0;
    bleScreenOffRescanInterval = 0x7FFFFFFFFFFFFFFFLL;
    v5 = -60;
    goto LABEL_45;
  }

  v35 = 0;
  v37 = 0;
  bleScreenOffScanRate = 0;
  v46 = 0;
  v42 = 0;
  v41 = *v52;
  bleScreenOffRescanInterval = 0x7FFFFFFFFFFFFFFFLL;
  v5 = -60;
  do
  {
    v6 = 0;
    v44 = v2;
    do
    {
      if (*v52 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v51 + 1) + 8 * v6);
      client = [v7 client];
      controlFlags = [client controlFlags];

      client2 = [v7 client];
      deviceFilter = [client2 deviceFilter];

      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_100003AFC;
      v48[3] = &unk_1001AB0E0;
      v49 = v43;
      v50 = v7;
      [deviceFilter enumerateObjectsUsingBlock:v48];
      if ((controlFlags & 0x10000) != 0)
      {
        v42 |= [deviceFilter count] == 0;
      }

      if ((controlFlags & 0x2104000000) != 0 && !self->_prefCommunal)
      {
        v60[3] |= controlFlags;
        *(v56 + 24) = 1;
      }

      if ((controlFlags & 2) != 0)
      {
        v60[3] |= controlFlags;
      }

      if ((controlFlags & 0x8000) != 0)
      {
        *(v56 + 24) = 1;
      }

      if (DeviceClass != 11 && (controlFlags & 0x10000000000) != 0 && (([v7 needsCLink] & 1) != 0 || objc_msgSend(v7, "needsNearbyActionV2")))
      {
        v35 = 1;
      }

      if ((controlFlags & 0x200000000) != 0)
      {
        v37 = 1;
        *(v56 + 24) = 1;
      }

      if ((controlFlags & 0x20000) != 0 && (([v7 needsCLink] & 1) != 0 || objc_msgSend(v7, "needsNearbyActionV2")))
      {
        client3 = [v7 client];
        destinationDevice = [client3 destinationDevice];
        identifier = [destinationDevice identifier];

        [v36 addObject:identifier];
      }

      if ((controlFlags & 0x10000) != 0)
      {
        client4 = [v7 client];
        v16 = [client4 bleScreenOffRescanInterval] > 0;

        if (v16)
        {
          client5 = [v7 client];
          bleScreenOffRescanInterval = [client5 bleScreenOffRescanInterval];
        }

        client6 = [v7 client];
        if ([client6 bleScreenOffScanRate] <= bleScreenOffScanRate)
        {
          goto LABEL_32;
        }

        client7 = [v7 client];
        v20 = [client7 bleScreenOffScanRate] < 0x15;

        if (v20)
        {
          client6 = [v7 client];
          bleScreenOffScanRate = [client6 bleScreenOffScanRate];
LABEL_32:
        }
      }

      if (DeviceClass == 6 && (controlFlags & 0x10000000000000) != 0)
      {
        _os_feature_enabled_impl();
      }

      client8 = [v7 client];
      rssiThreshold = [client8 rssiThreshold];

      if (rssiThreshold >= v5)
      {
        v23 = v5;
      }

      else
      {
        v23 = rssiThreshold;
      }

      if (rssiThreshold)
      {
        v5 = v23;
      }

      v46 |= (controlFlags >> 16) & 1;
      v3 |= (controlFlags >> 13) & 1;
      v4 |= (controlFlags >> 35) & 1;
      v6 = v6 + 1;
    }

    while (v44 != v6);
    v2 = [(NSMutableSet *)obj countByEnumeratingWithState:&v51 objects:v63 count:16];
  }

  while (v2);
LABEL_45:

  if (!self->_prefCommunal)
  {
    xpcMatchingMap = self->_xpcMatchingMap;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100003C74;
    v47[3] = &unk_1001AB108;
    v47[4] = &v59;
    v47[5] = &v55;
    [(NSMutableDictionary *)xpcMatchingMap enumerateKeysAndObjectsUsingBlock:v47];
  }

  self->_bleDiscoveryControlFlags = v60[3];
  self->_bleDiscoveryForce = *(v56 + 24);
  self->_bleProximityDetection = v37 & 1;
  self->_discoverPairedDevices = v3 & 1;
  self->_bleRSSIThreshold = v5;
  self->_enableAWDLGuestDiscovery = v4 & 1;
  if (bleScreenOffScanRate)
  {
    v25 = bleScreenOffScanRate;
  }

  else
  {
    v25 = 10;
  }

  self->_bleDiscoveryScreenOffScanRate = v25;
  if (bleScreenOffRescanInterval == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = 0;
  }

  else
  {
    v26 = bleScreenOffRescanInterval;
  }

  self->_bleDiscoveryScreenOffRescanInterval = v26;
  needsAWDLTransaction = self->_needsAWDLTransaction;
  if (needsAWDLTransaction != (v35 & 1))
  {
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1)
      {
        goto LABEL_56;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(needsAWDLTransaction) = self->_needsAWDLTransaction;
LABEL_56:
        v28 = "no";
        if (needsAWDLTransaction)
        {
          v29 = "yes";
        }

        else
        {
          v29 = "no";
        }

        if (v35)
        {
          v28 = "yes";
        }

        v32 = v29;
        v33 = v28;
        LogPrintF();
      }
    }

    self->_needsAWDLTransaction = v35 & 1;
  }

  if (v42)
  {
    screenOffDeviceFilter = self->_screenOffDeviceFilter;
    self->_screenOffDeviceFilter = 0;

    v31 = 1;
  }

  else
  {
    objc_storeStrong(&self->_screenOffDeviceFilter, v43);
    v31 = (v46 & 1) != 0 && [v43 count] != 0;
  }

  self->_bleDiscoveryScreenOff = v31;
  if ([v36 count])
  {
    [v36 minusSet:self->_needsAWDLSentToPeers];
    if ([v36 count])
    {
      objc_storeStrong(&self->_needsAWDLNewPeers, v36);
    }
  }

  [(RPCompanionLinkDaemon *)self _update];
  _Block_object_dispose(&v55, 8);

  _Block_object_dispose(&v59, 8);
}

- (void)_pruneStaleBLEDevices
{
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100003DFC();
  }

  v3 = objc_opt_new();
  bleDevices = self->_bleDevices;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100011860;
  v18[3] = &unk_1001AB340;
  v5 = v3;
  v19 = v5;
  [(NSMutableDictionary *)bleDevices enumerateKeysAndObjectsUsingBlock:v18];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_10010FE68();
        }

        v12 = [(NSMutableDictionary *)self->_bleDevices objectForKeyedSubscript:v11, v14];
        [(NSMutableDictionary *)self->_bleDevices setObject:0 forKeyedSubscript:v11];
        [(RPCompanionLinkDaemon *)self _clientReportLostDevice:v12];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v13 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
      v8 = v13;
    }

    while (v13);
  }
}

- (void)_localDeviceUpdate
{
  p_localDeviceInfo = &self->_localDeviceInfo;
  changed = [(RPCompanionLinkDevice *)self->_localDeviceInfo changed];
  v5 = sub_100009D00();
  DeviceClass = GestaltGetDeviceClass();
  if (!self->_localDeviceInfo)
  {
    v13 = objc_alloc_init(RPCompanionLinkDevice);
    v14 = *p_localDeviceInfo;
    *p_localDeviceInfo = v13;

    [*p_localDeviceInfo setDaemon:1];
    [*p_localDeviceInfo setFlags:{objc_msgSend(*p_localDeviceInfo, "flags") | 0x40}];
    [*p_localDeviceInfo setFlags:{objc_msgSend(*p_localDeviceInfo, "flags") | 0x80}];
    if (DeviceClass == 4)
    {
      [*p_localDeviceInfo setStatusFlags:{objc_msgSend(*p_localDeviceInfo, "statusFlags") | 0x10000}];
      v7 = 0;
      goto LABEL_12;
    }

    if (DeviceClass == 7)
    {
      [*p_localDeviceInfo setFlags:{objc_msgSend(*p_localDeviceInfo, "flags") | 2}];
    }
  }

  v7 = DeviceClass == 7;
  if (!self->_soundBoardUserLeaderKVO && DeviceClass == 7)
  {
    soundBoardPrefs = self->_soundBoardPrefs;
    if (!soundBoardPrefs)
    {
      v9 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.soundboard"];
      v10 = self->_soundBoardPrefs;
      self->_soundBoardPrefs = v9;

      soundBoardPrefs = self->_soundBoardPrefs;
    }

    v7 = 1;
    [(NSUserDefaults *)soundBoardPrefs addObserver:self forKeyPath:@"stereo_leader" options:1 context:0];
    [(NSUserDefaults *)self->_soundBoardPrefs addObserver:self forKeyPath:@"stereo_leader_info" options:1 context:0];
    self->_soundBoardUserLeaderKVO = 1;
    Int64 = CFPrefs_GetInt64();
    self->_soundBoardUserLeader = Int64 != 0;
    if (!Int64)
    {
      CFDictionaryGetTypeID();
      v12 = CFPrefs_CopyTypedValue();
      self->_soundBoardUserLeader = CFDictionaryGetInt64() != 0;

      v7 = 1;
    }
  }

LABEL_12:
  deviceColor = [*p_localDeviceInfo deviceColor];

  if (!deviceColor)
  {
    v16 = GestaltCopyAnswer();
    if (v16)
    {
      [*p_localDeviceInfo setDeviceColor:v16];
      changed = 1;
    }
  }

  flags = [(RPCompanionLinkDevice *)self->_localDeviceInfo flags];
  v18 = flags & 0xFFFFF2DF | (32 * ([(CUSystemMonitor *)self->_systemMonitor wifiFlags]& 1));
  if (self->_prefHIDEnabled)
  {
    v19 = 1024;
  }

  else
  {
    v19 = 0;
  }

  if (self->_prefMediaControlEnabled)
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  v21 = v18 | v19 | v20;
  if (self->_prefSiriEnabled)
  {
    v22 = 2048;
  }

  else
  {
    v22 = 0;
  }

  if ((v21 | v22) != flags)
  {
    [*p_localDeviceInfo setFlags:?];
    changed = 1;
  }

  if (!self->_needsPrimaryAppleIDUpdate)
  {
    v29 = 0;
    v25 = 0;
    goto LABEL_44;
  }

  _getAltDSID = [(RPCompanionLinkDaemon *)self _getAltDSID];
  accountAltDSID = [(RPCompanionLinkDevice *)self->_localDeviceInfo accountAltDSID];
  v25 = _getAltDSID;
  v26 = accountAltDSID;
  v27 = v26;
  if (v25 == v26)
  {

    goto LABEL_36;
  }

  if ((v25 != 0) == (v26 == 0))
  {

    goto LABEL_35;
  }

  v28 = [v25 isEqual:v26];

  if ((v28 & 1) == 0)
  {
LABEL_35:
    [*p_localDeviceInfo setAccountAltDSID:v25];
    changed = 1;
  }

LABEL_36:
  _getAppleID = [(RPCompanionLinkDaemon *)self _getAppleID];
  accountID = [(RPCompanionLinkDevice *)self->_localDeviceInfo accountID];
  v29 = _getAppleID;
  v32 = accountID;
  v33 = v32;
  if (v29 == v32)
  {
  }

  else
  {
    if ((v29 != 0) != (v32 == 0))
    {
      v34 = [v29 isEqual:v32];

      if (v34)
      {
        goto LABEL_43;
      }
    }

    else
    {
    }

    [*p_localDeviceInfo setAccountID:v29];
    changed = 1;
  }

LABEL_43:
  self->_needsPrimaryAppleIDUpdate = 0;
LABEL_44:
  v176 = changed;
  if ([(RPCompanionLinkDaemon *)self _shouldSendActivityLevelOverWiFi])
  {
    if ([(CUSystemMonitor *)self->_systemMonitor screenOn])
    {
      v35 = 7;
    }

    else
    {
      v35 = 3;
    }

    [(RPCompanionLinkDevice *)self->_localDeviceInfo setActivityLevel:v35];
  }

  if (self->_prefHomeKitEnabled)
  {
    homeKitIdentifier = [*p_localDeviceInfo homeKitIdentifier];

    if (homeKitIdentifier || ([(HMAccessory *)self->_homeKitSelfAccessory uniqueIdentifier], (v174 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v174 = 0;
    }

    else
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001137DC();
      }

      [*p_localDeviceInfo setHomeKitIdentifier:v174];
      v176 = 1;
    }

    v37 = +[RPIdentityDaemon sharedIdentityDaemon];
    homeKitIdentity = [v37 homeKitIdentity];

    accountID2 = [*p_localDeviceInfo accountID];

    if (accountID2)
    {
      v173 = v29;
    }

    else
    {
      accountID3 = [homeKitIdentity accountID];

      v173 = accountID3;
      if (accountID3)
      {
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_10011381C(v5);
        }

        [*p_localDeviceInfo setAccountID:accountID3];
        v176 = 1;
      }

      else
      {
        v173 = 0;
      }
    }

    homeKitUserIdentifiers = [*p_localDeviceInfo homeKitUserIdentifiers];

    if (homeKitUserIdentifiers || ([(RPHomeKitManager *)self->_rpHomeKitManager homeKitUserIdentifiers], (v172 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v172 = 0;
    }

    else
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100113878(v5);
      }

      [*p_localDeviceInfo setHomeKitUserIdentifiers:v172];
      v176 = 1;
    }
  }

  else
  {
    v172 = 0;
    v173 = v29;
    v174 = 0;
  }

  if (!self->_uniqueIDData)
  {
    p_uniqueIDData = &self->_uniqueIDData;
    memset(v205, 0, sizeof(v205));
    v201.tv_sec = 0;
    v201.tv_nsec = 0;
    if (gethostuuid(v205, &v201))
    {
      v43 = NSRandomData();
    }

    else
    {
      v43 = [[NSData alloc] initWithBytes:v205 length:6];
    }

    v44 = *p_uniqueIDData;
    *p_uniqueIDData = v43;

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001138D4(&self->_uniqueIDData);
    }

    bytes = [(NSData *)self->_uniqueIDData bytes];
    v159 = [(NSData *)self->_uniqueIDData length];
    v161 = [(NSData *)self->_uniqueIDData length];
    v157 = bytes;
    v46 = NSPrintF();
    uniqueIDStr = self->_uniqueIDStr;
    self->_uniqueIDStr = v46;
  }

  v48 = self->_uniqueIDStr;
  if (v48)
  {
    identifier = [*p_localDeviceInfo identifier];
    v50 = v48;
    v51 = identifier;
    v52 = v51;
    if (v50 == v51)
    {

      goto LABEL_90;
    }

    if (v51)
    {
      v53 = [(NSString *)v50 isEqual:v51];

      if (v53)
      {
        goto LABEL_90;
      }
    }

    else
    {
    }

    [(RPCompanionLinkDevice *)self->_localDeviceInfo setIdentifier:self->_uniqueIDStr, v157, v159, v161];
    v176 = 1;
  }

LABEL_90:
  idsDeviceIdentifier = [*p_localDeviceInfo idsDeviceIdentifier];

  if (!idsDeviceIdentifier)
  {
    v55 = +[RPCloudDaemon sharedCloudDaemon];
    idsDeviceIDSelf = [v55 idsDeviceIDSelf];

    if (idsDeviceIDSelf)
    {
      [*p_localDeviceInfo setIdsDeviceIdentifier:idsDeviceIDSelf];
      v176 = 1;
    }
  }

  v57 = +[RPCloudDaemon sharedCloudDaemon];
  idsCorrelationIdentifier = [v57 idsCorrelationIdentifier];

  idsCorrelationIdentifier2 = [*p_localDeviceInfo idsCorrelationIdentifier];
  v60 = idsCorrelationIdentifier;
  v61 = idsCorrelationIdentifier2;
  v62 = v61;
  if (v60 == v61)
  {

    goto LABEL_99;
  }

  if ((v60 != 0) != (v61 == 0))
  {
    v63 = [v60 isEqual:v61];

    if ((v63 & 1) == 0)
    {
      goto LABEL_101;
    }

LABEL_99:
    v175 = 0;
    goto LABEL_102;
  }

LABEL_101:
  v175 = v60;
  [*p_localDeviceInfo setIdsCorrelationIdentifier:?];
  v176 = 1;
LABEL_102:
  v64 = +[RPIdentityDaemon sharedIdentityDaemon];
  sessionPairingIdentifier = [v64 sessionPairingIdentifier];
  uUIDString = [sessionPairingIdentifier UUIDString];

  sessionPairingIdentifier2 = [*p_localDeviceInfo sessionPairingIdentifier];
  v68 = uUIDString;
  v69 = sessionPairingIdentifier2;
  v70 = v69;
  if (v68 == v69)
  {
  }

  else
  {
    if ((v68 != 0) != (v69 == 0))
    {
      v71 = [v68 isEqual:v69];

      if (v71)
      {
        goto LABEL_109;
      }
    }

    else
    {
    }

    [*p_localDeviceInfo setSessionPairingIdentifier:v68];
    v176 = 1;
  }

LABEL_109:
  if ([*p_localDeviceInfo listeningPort] > 0 || (v72 = -[CUTCPServer tcpListeningPort](self->_tcpServer, "tcpListeningPort"), v72 < 1))
  {
    v168 = 0;
  }

  else
  {
    [*p_localDeviceInfo setListeningPort:v72];
    v168 = 1;
    v176 = 1;
  }

  model = [*p_localDeviceInfo model];

  if (!model)
  {
    v74 = GestaltCopyAnswer();
    if (v74)
    {
      [*p_localDeviceInfo setModel:v74];
      v176 = 1;
    }
  }

  if (self->_prefCommunal)
  {
    meDeviceIDSDeviceID = [(CUSystemMonitor *)self->_systemMonitor meDeviceIDSDeviceID];

    v68 = meDeviceIDSDeviceID;
  }

  else
  {
    meDeviceIDSDeviceID = 0;
  }

  idsPersonalDeviceIdentifier = [*p_localDeviceInfo idsPersonalDeviceIdentifier];
  v77 = meDeviceIDSDeviceID;
  v78 = idsPersonalDeviceIdentifier;
  v79 = v78;
  v169 = v25;
  v177 = v77;
  if (v77 == v78)
  {

    goto LABEL_140;
  }

  if ((v77 != 0) != (v78 == 0))
  {
    v80 = v77;
    v81 = [v77 isEqual:v78];

    if (v81)
    {
      goto LABEL_140;
    }
  }

  else
  {
  }

  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || _LogCategory_Initialize())
    {
      sub_100113914();
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113948(v5, p_localDeviceInfo);
    }
  }

  [(RPCompanionLinkDevice *)self->_localDeviceInfo setIdsPersonalDeviceIdentifier:v177];
  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  allValues = [(NSMutableDictionary *)self->_homeHubDevices allValues];
  v83 = [allValues countByEnumeratingWithState:&v197 objects:v207 count:16];
  if (v83)
  {
    v84 = v83;
    v85 = *v198;
    do
    {
      for (i = 0; i != v84; i = i + 1)
      {
        if (*v198 != v85)
        {
          objc_enumerationMutation(allValues);
        }

        v87 = *(*(&v197 + 1) + 8 * i);
        [v87 setIdsPersonalDeviceIdentifier:v177];
        [v87 setChanged:1];
      }

      v84 = [allValues countByEnumeratingWithState:&v197 objects:v207 count:16];
    }

    while (v84);
  }

  [(RPCompanionLinkDaemon *)self _personalDeviceUpdate];
  v176 = 1;
LABEL_140:
  if (v7 & ~self->_mediaAccessControlKVO)
  {
    airplayPrefs = self->_airplayPrefs;
    if (!airplayPrefs)
    {
      v89 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.airplay"];
      v90 = self->_airplayPrefs;
      self->_airplayPrefs = v89;

      airplayPrefs = self->_airplayPrefs;
    }

    [(NSUserDefaults *)airplayPrefs addObserver:self forKeyPath:@"accessControlLevel" options:1 context:0];
    [(NSUserDefaults *)self->_airplayPrefs addObserver:self forKeyPath:@"p2pAllow" options:1 context:0];
    self->_mediaAccessControlKVO = 1;
  }

  mediaRemoteIdentifier = [*p_localDeviceInfo mediaRemoteIdentifier];

  if (!mediaRemoteIdentifier)
  {
    [(RPCompanionLinkDaemon *)self _mediaRemoteIDGet];
  }

  mediaRouteIdentifier = [*p_localDeviceInfo mediaRouteIdentifier];

  if (!mediaRouteIdentifier)
  {
    [(RPCompanionLinkDaemon *)self _mediaRouteIDGet];
  }

  if (*p_localDeviceInfo)
  {
    [*p_localDeviceInfo operatingSystemVersion];
    if (v194)
    {
      goto LABEL_158;
    }
  }

  else
  {
    v194 = 0;
    v195 = 0;
    v196 = 0;
  }

  memset(v205, 0, sizeof(v205));
  v206 = 0;
  v93 = +[RPCloudDaemon sharedCloudDaemon];
  v94 = v93;
  if (v93)
  {
    [v93 operatingSystemVersionForSelf];
  }

  else
  {
    memset(v205, 0, sizeof(v205));
    v206 = 0;
  }

  v192 = *v205;
  v193 = v206;
  [*p_localDeviceInfo setOperatingSystemVersion:&v192];
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001139C4(v205);
  }

LABEL_158:
  personalDeviceState = [(RPCompanionLinkDevice *)self->_localDeviceInfo personalDeviceState];
  if (self->_prefCommunal && [(CUSystemMonitor *)self->_systemMonitor meDeviceValid])
  {
    meDeviceFMFDeviceID = [(CUSystemMonitor *)self->_systemMonitor meDeviceFMFDeviceID];
    if ([meDeviceFMFDeviceID length])
    {
      v97 = 6;
    }

    else
    {
      v97 = 5;
    }
  }

  else
  {
    v97 = 0;
  }

  if (v97 != personalDeviceState)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113A2C(personalDeviceState, v97);
    }

    [(RPCompanionLinkDevice *)self->_localDeviceInfo setPersonalDeviceState:v97];
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    allValues2 = [(NSMutableDictionary *)self->_homeHubDevices allValues];
    v99 = [allValues2 countByEnumeratingWithState:&v188 objects:v204 count:16];
    if (v99)
    {
      v100 = v99;
      v101 = *v189;
      do
      {
        for (j = 0; j != v100; j = j + 1)
        {
          if (*v189 != v101)
          {
            objc_enumerationMutation(allValues2);
          }

          v103 = *(*(&v188 + 1) + 8 * j);
          [v103 setPersonalDeviceState:v97];
          [v103 setChanged:1];
        }

        v100 = [allValues2 countByEnumeratingWithState:&v188 objects:v204 count:16];
      }

      while (v100);
    }

    v176 = 1;
  }

  statusFlags = [(RPCompanionLinkDevice *)self->_localDeviceInfo statusFlags];
  if ([(NSMutableSet *)self->_registeredProfileIDs containsObject:@"DuetSync"])
  {
    [(RPCompanionLinkDaemon *)self _duetSyncEnsureStarted];
    v105 = 256;
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _duetSyncEnsureStopped];
    v105 = 0;
  }

  v106 = v105 | statusFlags & 0xFFFFFEFFFFFFFEFFLL;
  meDeviceIsMe = [(CUSystemMonitor *)self->_systemMonitor meDeviceIsMe];
  prefMeDeviceIsMeOverride = self->_prefMeDeviceIsMeOverride;
  if (prefMeDeviceIsMeOverride)
  {
    meDeviceIsMe = [(NSNumber *)prefMeDeviceIsMeOverride BOOLValue];
  }

  else if (sub_10000329C())
  {
    meDeviceIsMe = GestaltGetDeviceClass() == 1;
  }

  v109 = 0x10000000000;
  if (!meDeviceIsMe)
  {
    v109 = 0;
  }

  v110 = v106 | v109;
  if ((v106 | v109) != statusFlags)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v162 = v110;
      v163 = &unk_1001476B8;
      v158 = statusFlags;
      v160 = &unk_1001476B8;
      LogPrintF();
    }

    [*p_localDeviceInfo setStatusFlags:{v110, v158, v160, v162, v163}];
    v176 = 1;
  }

  v171 = v110;
  btAdvAddrStr = self->_btAdvAddrStr;
  if (btAdvAddrStr)
  {
    publicIdentifier = [*p_localDeviceInfo publicIdentifier];
    v113 = btAdvAddrStr;
    v114 = publicIdentifier;
    v115 = v114;
    if (v113 == v114)
    {
    }

    else
    {
      if (v114)
      {
        v116 = [(NSString *)v113 isEqual:v114];

        if (v116)
        {
          goto LABEL_200;
        }
      }

      else
      {
      }

      [(RPCompanionLinkDevice *)self->_localDeviceInfo setPublicIdentifier:self->_btAdvAddrStr];
      v176 = 1;
    }
  }

LABEL_200:
  serversChangedState = [*p_localDeviceInfo serversChangedState];
  if (serversChangedState != 6 && serversChangedState)
  {
    v166 = 0;
  }

  else
  {
    v118 = objc_alloc_init(NSMutableArray);
    v184 = 0u;
    v185 = 0u;
    v186 = 0u;
    v187 = 0u;
    v119 = self->_activeServers;
    v120 = [(NSMutableSet *)v119 countByEnumeratingWithState:&v184 objects:v203 count:16];
    if (v120)
    {
      v121 = v120;
      v122 = *v185;
      do
      {
        for (k = 0; k != v121; k = k + 1)
        {
          if (*v185 != v122)
          {
            objc_enumerationMutation(v119);
          }

          serviceType = [*(*(&v184 + 1) + 8 * k) serviceType];
          if (serviceType)
          {
            [v118 addObject:serviceType];
          }
        }

        v121 = [(NSMutableSet *)v119 countByEnumeratingWithState:&v184 objects:v203 count:16];
      }

      while (v121);
    }

    xpcMatchingMap = self->_xpcMatchingMap;
    v182[0] = _NSConcreteStackBlock;
    v182[1] = 3221225472;
    v182[2] = sub_100033880;
    v182[3] = &unk_1001AB968;
    v126 = v118;
    v183 = v126;
    [(NSMutableDictionary *)xpcMatchingMap enumerateKeysAndObjectsUsingBlock:v182];
    v166 = v126;
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setServiceTypes:v126];
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setServersChangedState:5];
  }

  v127 = CUIsGreenTeaDevice();
  deviceCapabilityFlags = [*p_localDeviceInfo deviceCapabilityFlags];
  if (v127)
  {
    v129 = deviceCapabilityFlags & 0xFFFFFFFC | 2;
  }

  else
  {
    v129 = deviceCapabilityFlags & 0xFFFFFFFC;
  }

  v165 = deviceCapabilityFlags;
  if (deviceCapabilityFlags != v129)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v162 = v171;
      v163 = &unk_100147B24;
      v158 = statusFlags;
      v160 = &unk_100147B24;
      LogPrintF();
    }

    [*p_localDeviceInfo setDeviceCapabilityFlags:{v129, v158, v160, v162, v163}];
    v176 = 1;
  }

  v164 = v129;
  v167 = statusFlags;
  v170 = p_localDeviceInfo;
  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  v130 = self->_xpcConnections;
  v131 = [(NSMutableSet *)v130 countByEnumeratingWithState:&v178 objects:v202 count:16];
  v132 = v176;
  if (v131)
  {
    v133 = v131;
    v134 = *v179;
    do
    {
      for (m = 0; m != v133; m = m + 1)
      {
        if (*v179 != v134)
        {
          objc_enumerationMutation(v130);
        }

        v136 = *(*(&v178 + 1) + 8 * m);
        client = [v136 client];

        if (client)
        {
          netCnx = [v136 netCnx];
          v139 = netCnx;
          if (netCnx)
          {
            v140 = netCnx;
          }

          else
          {
            session = [v136 session];
            v140 = [session cnx];
          }

          if (([v140 controlFlags] & 0x200) != 0)
          {
            client2 = [v136 client];
            usingOnDemandConnection = [client2 usingOnDemandConnection];

            if ((usingOnDemandConnection & 1) == 0)
            {
              client3 = [v136 client];
              [client3 setUsingOnDemandConnection:1];

              xpcCnx = [v136 xpcCnx];
              remoteObjectProxy = [xpcCnx remoteObjectProxy];
              client4 = [v136 client];
              [remoteObjectProxy companionLinkUpdateClientState:client4];

              v132 = v176;
            }
          }

          if ((v132 & 1) != 0 || ([v136 localDeviceUpdated] & 1) == 0)
          {
            [(RPCompanionLinkDaemon *)self _clientReportLocalDevice:self->_localDeviceInfo xpcCnx:v136];
            [v136 setLocalDeviceUpdated:1];
          }
        }
      }

      v133 = [(NSMutableSet *)v130 countByEnumeratingWithState:&v178 objects:v202 count:16];
    }

    while (v133);
  }

  v148 = objc_alloc_init(NSMutableDictionary);
  v149 = v148;
  if (v169)
  {
    [v148 setObject:v169 forKeyedSubscript:@"_accAltDSID"];
  }

  if (v173)
  {
    [v149 setObject:v173 forKeyedSubscript:@"_accID"];
  }

  if (v174)
  {
    [v149 setObject:v174 forKeyedSubscript:@"_hkID"];
  }

  if (v172)
  {
    [v149 setObject:v172 forKeyedSubscript:@"_hkUID"];
  }

  if (v166)
  {
    [v149 setObject:v166 forKeyedSubscript:@"_stA"];
  }

  if (v168)
  {
    v150 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*v170 listeningPort]);
    [v149 setObject:v150 forKeyedSubscript:@"_lP"];
  }

  if (v171 != v167)
  {
    v151 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*v170 statusFlags] & 0x10000010100);
    [v149 setObject:v151 forKeyedSubscript:@"_sf"];
  }

  if (v175)
  {
    idsCorrelationIdentifier3 = [*v170 idsCorrelationIdentifier];
    [v149 setObject:idsCorrelationIdentifier3 forKeyedSubscript:@"_idsCID"];
  }

  if (v165 != v164)
  {
    v153 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*v170 deviceCapabilityFlags]);
    [v149 setObject:v153 forKeyedSubscript:@"_dCapF"];
  }

  allKeys = [v149 allKeys];
  v155 = [allKeys count];

  if (v155)
  {
    v156 = [NSDictionary dictionaryWithObject:&__kCFBooleanTrue forKey:@"failIfAsleep"];
    [(RPCompanionLinkDaemon *)self sendEventID:@"_systemInfoUpdate" event:v149 destinationID:@"rapport:rdid:SameHome" options:v156 completion:0];
  }

  [*v170 setChanged:0];
}

- (void)_update
{
  [(RPCompanionLinkDaemon *)self _updateAssertions];
  if (!self->_systemMonitor)
  {
    v3 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v3;

    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100020CA0;
    v26[3] = &unk_1001AA970;
    v26[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setFirstUnlockHandler:v26];
    [(CUSystemMonitor *)self->_systemMonitor setMeDeviceUseFindMyLocate:1];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100020CA8;
    v25[3] = &unk_1001AA970;
    v25[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setMeDeviceChangedHandler:v25];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100020D14;
    v24[3] = &unk_1001AA970;
    v24[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setPowerUnlimitedChangedHandler:v24];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100020D1C;
    v23[3] = &unk_1001AA970;
    v23[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setPrimaryAppleIDChangedHandler:v23];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100020D30;
    v22[3] = &unk_1001AA970;
    v22[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setScreenLockedChangedHandler:v22];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100020D38;
    v21[3] = &unk_1001AA970;
    v21[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setScreenOnChangedHandler:v21];
    if (self->_prefIPEnabled)
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100020D40;
      v20[3] = &unk_1001AA970;
      v20[4] = self;
      [(CUSystemMonitor *)self->_systemMonitor setWifiStateChangedHandler:v20];
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100020D48;
    v19[3] = &unk_1001AA970;
    v19[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setBluetoothAddressChangedHandler:v19];
    [(CUSystemMonitor *)self->_systemMonitor activateWithCompletion:0];
  }

  if (!self->_cbAdvertiser)
  {
    v5 = objc_alloc_init(CBAdvertiser);
    cbAdvertiser = self->_cbAdvertiser;
    self->_cbAdvertiser = v5;

    [(CBAdvertiser *)self->_cbAdvertiser setDispatchQueue:self->_dispatchQueue];
    [(CBAdvertiser *)self->_cbAdvertiser activateWithCompletion:&stru_1001AB0B8];
  }

  v7 = self->_prefServerEnabled && !self->_disabled;
  v8 = +[RPIdentityDaemon sharedIdentityDaemon];
  v9 = [v8 identitiesOfType:13 error:0];

  v10 = +[RPIdentityDaemon sharedIdentityDaemon];
  v11 = [v10 identitiesOfType:15 error:0];

  v12 = +[RPIdentityDaemon sharedIdentityDaemon];
  v13 = [v12 identitiesOfType:12 error:0];

  if (!v7)
  {
    goto LABEL_19;
  }

  if (!self->_prefCommunal)
  {
    v14 = +[RPCloudDaemon sharedCloudDaemon];
    if (([v14 idsIsSignedIn] & 1) != 0 || objc_msgSend(v9, "count") || objc_msgSend(v11, "count") || objc_msgSend(v13, "count"))
    {

      goto LABEL_17;
    }

    v16 = sub_10000329C();

    if (v16)
    {
      goto LABEL_17;
    }

LABEL_19:
    hasCurrentTransaction = [(RPNearFieldDaemon *)self->_nearfieldDaemon hasCurrentTransaction];
    goto LABEL_20;
  }

LABEL_17:
  hasCurrentTransaction = 1;
LABEL_20:
  self->_prefServerShouldRun = hasCurrentTransaction;
  if (!self->_prefClientEnabled && !self->_prefServerEnabled)
  {
    [(RPCompanionLinkDaemon *)self _localDeviceCleanup];
    v17 = 0;
LABEL_26:
    [(RPCompanionLinkDaemon *)self _homeKitEnsureStopped];
    if (!v17)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  [(RPCompanionLinkDaemon *)self _localDeviceUpdate];
  if (!self->_prefHomeKitEnabled)
  {
    v17 = 1;
    goto LABEL_26;
  }

  [(RPCompanionLinkDaemon *)self _homeKitEnsureStarted];
  v17 = 1;
LABEL_27:
  if (self->_prefIPEnabled)
  {
    [(RPCompanionLinkDaemon *)self _reachabilityEnsureStarted];
    goto LABEL_30;
  }

LABEL_29:
  [(RPCompanionLinkDaemon *)self _reachabilityEnsureStopped];
LABEL_30:
  if ((v17 & !self->_disabled) == 1)
  {
    [(RPCompanionLinkDaemon *)self _bleServerEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _bleServerEnsureStopped];
  }

  if (self->_prefBTPipeEnabled)
  {
    [(RPCompanionLinkDaemon *)self _btPipeEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _btPipeEnsureStopped];
  }

  if (!self->_prefClientEnabled || self->_disabled || self->_homeKitWaiting && !self->_homeKitLTPK)
  {
    [(RPCompanionLinkDaemon *)self _clientEnsureStopped];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _clientEnsureStarted];
  }

  if (self->_prefServerShouldRun || self->_serverBonjourInfraPairing)
  {
    [(RPCompanionLinkDaemon *)self _serverEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _serverEnsureStopped];
  }

  if ((v17 & self->_prefHIDEnabled) == 1)
  {
    [(RPCompanionLinkDaemon *)self _hidEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _hidEnsureStopped];
  }

  if ((v17 & self->_prefMediaControlEnabled) == 1)
  {
    [(RPCompanionLinkDaemon *)self _mediaControlEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _mediaControlEnsureStopped];
  }

  if (self->_prefClientEnabled || self->_prefServerEnabled)
  {
    [(RPCompanionLinkDaemon *)self _miscEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _miscEnsureStopped];
  }

  if ((v17 & self->_prefSiriEnabled) == 1)
  {
    [(RPCompanionLinkDaemon *)self _siriEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _siriEnsureStopped];
  }

  [(RPCompanionLinkDaemon *)self _clientSendActivityLevelOverWiFiIfNecessary];
  [(RPCompanionLinkDaemon *)self _updateAssertions];
  if ((v17 & self->_prefIPEnabled & 1) == 0)
  {
    [(CUWiFiManager *)self->_wifiManager invalidate];
    wifiManager = self->_wifiManager;
    self->_wifiManager = 0;
  }
}

- (void)_updateAssertions
{
  if (!self->_prefClientEnabled)
  {
    prefServerEnabled = self->_prefServerEnabled;
    if (!prefServerEnabled && !self->_prefBTPipeEnabled && !prefServerEnabled)
    {
      goto LABEL_7;
    }
  }

  v4 = +[RPDaemon sharedDaemon];
  if ([v4 sigTermPending])
  {

    goto LABEL_7;
  }

  v5 = +[RPDaemon sharedDaemon];
  languageChangePending = [v5 languageChangePending];

  if (languageChangePending)
  {
LABEL_7:
    if (self->_osTransaction)
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_10010F97C();
      }

      osTransaction = self->_osTransaction;
      self->_osTransaction = 0;
    }

    goto LABEL_20;
  }

  if (!self->_osTransaction)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F944();
    }

    v8 = os_transaction_create();
    v9 = self->_osTransaction;
    self->_osTransaction = v8;

    if (!self->_osTransaction && dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F960();
    }
  }

LABEL_20:
  if (![(NSMutableDictionary *)self->_tcpClientConnections count]&& ![(NSMutableDictionary *)self->_tcpOnDemandClientConnections count]&& ![(NSMutableSet *)self->_tcpServerConnections count])
  {
    if (![(CUWiFiManager *)self->_wifiManager wakeOnWirelessEnabled])
    {
      return;
    }

    v14 = 0;
    p_wifiManager = &self->_wifiManager;
    goto LABEL_28;
  }

  wifiManager = self->_wifiManager;
  if (!wifiManager)
  {
    v11 = objc_alloc_init(CUWiFiManager);
    v12 = self->_wifiManager;
    self->_wifiManager = v11;

    [(CUWiFiManager *)self->_wifiManager setDispatchQueue:self->_dispatchQueue];
    [(CUWiFiManager *)self->_wifiManager setLabel:@"CLink"];
    [(CUWiFiManager *)self->_wifiManager activateWithCompletion:0];
    wifiManager = self->_wifiManager;
  }

  if (([(CUWiFiManager *)wifiManager wakeOnWirelessEnabled]& 1) == 0)
  {
    p_wifiManager = &self->_wifiManager;
    v14 = 1;
LABEL_28:
    v15 = *p_wifiManager;

    [(CUWiFiManager *)v15 setWakeOnWirelessEnabled:v14];
  }
}

- (BOOL)_shouldSendActivityLevelOverWiFi
{
  v3 = objc_alloc_init(NSMutableString);
  DeviceClass = GestaltGetDeviceClass();
  v5 = DeviceClass == 11;
  if (self->_prefSendActLvlInfra != v5)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112B48();
    }

    self->_prefSendActLvlInfra = v5;
  }

  return DeviceClass == 11;
}

- (BOOL)_serverNearbyActionV2DiscoveryShouldRun
{
  v2 = +[RPCloudDaemon sharedCloudDaemon];
  v4 = [v2 idsIsSignedIn] && ((DeviceClass = GestaltGetDeviceClass(), DeviceClass == 3) || DeviceClass == 100 || DeviceClass == 11) && ((objc_msgSend(v2, "idsHasiPad") & 1) != 0 || (objc_msgSend(v2, "idsHasMac") & 1) != 0 || objc_msgSend(v2, "idsHasRealityDevice"));

  return v4;
}

- (void)_clientSendActivityLevelOverWiFiIfNecessary
{
  if ([(RPCompanionLinkDaemon *)self _shouldSendActivityLevelOverWiFi])
  {
    activityLevel = [(RPCompanionLinkDevice *)self->_localDeviceInfo activityLevel];
    if (activityLevel != self->_lastSentActivityLevelOverWiFi)
    {
      v4 = activityLevel;
      v5 = objc_alloc_init(NSMutableSet);
      v6 = +[RPCloudDaemon sharedCloudDaemon];
      idsDeviceArray = [v6 idsDeviceArray];

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10002CFC8;
      v24[3] = &unk_1001AB658;
      v24[4] = self;
      v8 = v5;
      v25 = v8;
      v18 = idsDeviceArray;
      [idsDeviceArray enumerateObjectsUsingBlock:v24];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            v19 = 0;
            v15 = [(RPCompanionLinkDaemon *)self findConnectedDeviceForIdentifier:v14 controlFlags:0x400000 cnx:&v19];
            if (v15 && ([v19 linkType] == 6 || objc_msgSend(v19, "linkType") == 8 || objc_msgSend(v19, "linkType") == 7))
            {
              v16 = +[NSMutableDictionary dictionary];
              v17 = [NSNumber numberWithInt:v4];
              [v16 setObject:v17 forKeyedSubscript:@"_actLvl"];

              [v19 sendEncryptedEventID:@"_systemInfoUpdate" event:v16 options:0 completion:&stru_1001AB678];
            }

            self->_lastSentActivityLevelOverWiFi = v4;

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
        }

        while (v11);
      }
    }
  }
}

- (BOOL)_serverBonjourAWDLAdvertiserShouldRun
{
  if (self->_bonjourAWDLAdvertiserForce)
  {
    return 1;
  }

  if ([(NSMutableSet *)self->_needsAWDLRequestIdentifiers count])
  {
    return 1;
  }

  if ([(RPCompanionLinkDaemon *)self _haveActiveServerConnectionsOnAWDL])
  {
    return 1;
  }

  actionV2Devices = [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery actionV2Devices];
  v4 = [actionV2Devices count];

  if (v4)
  {
    return 1;
  }

  if (![(NSMutableDictionary *)self->_bleNeedsCLinkDevices count])
  {
    return 0;
  }

  if (!self->_prefUseTargetAuthTag)
  {
    return 1;
  }

  v7 = +[RPIdentityDaemon sharedIdentityDaemon];
  v8 = [v7 identityOfSelfAndReturnError:0];

  v9 = v8;
  v10 = +[RPIdentityDaemon sharedIdentityDaemon];
  v11 = [v10 identityOfTemporarySelfAndReturnError:0];

  deviceIRKData = [v9 deviceIRKData];
  if (deviceIRKData)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [(NSMutableDictionary *)self->_bleNeedsCLinkDevices allValues];
    v40 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v40)
    {
      v13 = &selRef_setDevicesWantingInvitations_;
      v14 = &selRef_addDiscoverySessionID_forAgentClientID_;
      v39 = *v42;
      v36 = v11;
      v37 = v9;
      v34 = deviceIRKData;
      do
      {
        v15 = 0;
        v16 = v14[254];
        v35 = v13[297];
        do
        {
          if (*v42 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v41 + 1) + 8 * v15);
          bleDevice = [v17 bleDevice];
          advertisementFields = [bleDevice advertisementFields];
          CFDataGetTypeID();
          v20 = CFDictionaryGetTypedValue();

          if (!v20)
          {
            if (dword_1001D3228 <= 30)
            {
              deviceIRKData = v34;
              if (dword_1001D3228 != -1 || _LogCategory_Initialize())
              {
                sub_100112920(v17);
              }

              goto LABEL_58;
            }

            v5 = 1;
            goto LABEL_64;
          }

          bluetoothAddressData = [(CUSystemMonitor *)self->_systemMonitor bluetoothAddressData];
          v22 = [v9 authTagForData:bluetoothAddressData type:2 error:0];
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            v23 = v17;
            if (objc_opt_respondsToSelector())
            {
              shortDescription = [v23 shortDescription];
            }

            else
            {
              if (objc_opt_respondsToSelector())
              {
                [v23 descriptionWithLevel:50];
              }

              else
              {
                [v23 description];
              }
              shortDescription = ;
            }

            v25 = shortDescription;

            bytes = [bluetoothAddressData bytes];
            v33 = v22;
            v30 = v20;
            v31 = v25;
            LogPrintF();
          }

          if (!memcmp([v22 bytes], objc_msgSend(v20, "bytes"), objc_msgSend(v20, "length")))
          {
            deviceIRKData = v34;
            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_1001128CC(v17);
            }

LABEL_58:
            v5 = 1;
            goto LABEL_65;
          }

          advertisingAddressDataNonConnectable = [(CBAdvertiser *)self->_cbAdvertiser advertisingAddressDataNonConnectable];
          if (advertisingAddressDataNonConnectable)
          {
            deviceIRKData2 = [v11 deviceIRKData];

            if (deviceIRKData2)
            {
              v28 = [v11 authTagForData:advertisingAddressDataNonConnectable type:2 error:0];
              if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
              {
                sub_100112850(v17, advertisingAddressDataNonConnectable);
              }

              if (!memcmp([v28 bytes], objc_msgSend(v20, "bytes"), objc_msgSend(v20, "length")))
              {
                v9 = v37;
                if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
                {
                  sub_1001128CC(v17);
                }

                v5 = 1;
                v11 = v36;
LABEL_64:
                deviceIRKData = v34;
                goto LABEL_65;
              }

              v9 = v37;
              if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
              {
                v30 = v20;
                v31 = v22;
                LogPrintF();
              }

              v11 = v36;
            }
          }

          v15 = v15 + 1;
        }

        while (v40 != v15);
        v29 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
        v5 = 0;
        deviceIRKData = v34;
        v13 = &selRef_setDevicesWantingInvitations_;
        v14 = &selRef_addDiscoverySessionID_forAgentClientID_;
        v40 = v29;
      }

      while (v29);
    }

    else
    {
      v5 = 0;
    }

LABEL_65:
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112974();
    }

    v5 = 1;
  }

  return v5;
}

- (BOOL)_haveActiveServerConnectionsOnAWDL
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_tcpServerConnections;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) linkType] == 4)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_serverEnsureStarted
{
  _serverBonjourShouldRun = [(RPCompanionLinkDaemon *)self _serverBonjourShouldRun];
  _serverBonjourAWDLShouldRun = [(RPCompanionLinkDaemon *)self _serverBonjourAWDLShouldRun];
  if ((_serverBonjourShouldRun & 1) != 0 || (_serverBonjourAWDLShouldRun & 1) != 0 || [(RPCompanionLinkDaemon *)self _serverTCPHasActiveConnections])
  {
    [(RPCompanionLinkDaemon *)self _serverTCPEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _serverTCPEnsureStopped];
  }

  [(RPCompanionLinkDaemon *)self _serverBTAddressMonitorEnsureStarted];
  [(RPCompanionLinkDaemon *)self _serverBLENeedsCLinkScannerEnsureStarted];
  if ([(RPCompanionLinkDaemon *)self _serverNearbyActionV2DiscoveryShouldRun])
  {
    [(RPCompanionLinkDaemon *)self _serverNearbyActionV2DiscoveryEnsureStarted];
    if (!_serverBonjourShouldRun)
    {
      goto LABEL_13;
    }
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _serverNearbyActionV2DiscoveryEnsureStopped];
    if (!_serverBonjourShouldRun)
    {
      goto LABEL_13;
    }
  }

  if (!self->_homeKitWaiting || self->_homeKitLTPK)
  {
    [(RPCompanionLinkDaemon *)self _serverBonjourEnsureStarted];
    goto LABEL_14;
  }

LABEL_13:
  [(RPCompanionLinkDaemon *)self _serverBonjourEnsureStopped];
LABEL_14:
  if ([(RPCompanionLinkDaemon *)self _serverBonjourAWDLAdvertiserShouldRun])
  {

    [(RPCompanionLinkDaemon *)self _serverBonjourAWDLAdvertiserEnsureStarted];
  }

  else
  {

    [(RPCompanionLinkDaemon *)self _serverBonjourAWDLAdvertiserEnsureStopped];
  }
}

- (void)_serverBLENeedsCLinkScannerEnsureStarted
{
  if (self->_bleNeedsCLinkScanner)
  {
    _serverBLENeedsCLinkScannerScreenOff = [(RPCompanionLinkDaemon *)self _serverBLENeedsCLinkScannerScreenOff];
    if (_serverBLENeedsCLinkScannerScreenOff != [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner overrideScreenOff])
    {
      bleNeedsCLinkScanner = self->_bleNeedsCLinkScanner;

      [(SFDeviceDiscovery *)bleNeedsCLinkScanner setOverrideScreenOff:_serverBLENeedsCLinkScannerScreenOff];
    }
  }

  else
  {
    bleNeedsCLinkScannerID = self->_bleNeedsCLinkScannerID;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112434();
    }

    v6 = objc_alloc_init(off_1001D3298());
    v7 = self->_bleNeedsCLinkScanner;
    self->_bleNeedsCLinkScanner = v6;

    [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner setChangeFlags:1];
    [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner setDiscoveryFlags:64];
    [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner setOverrideScreenOff:[(RPCompanionLinkDaemon *)self _serverBLENeedsCLinkScannerScreenOff]];
    [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner setPurpose:@"CLink"];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002B5C0;
    v14[3] = &unk_1001AB250;
    v15 = bleNeedsCLinkScannerID;
    v14[4] = self;
    [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner setDeviceFoundHandler:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002B5E0;
    v12[3] = &unk_1001AB250;
    v13 = bleNeedsCLinkScannerID;
    v12[4] = self;
    [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner setDeviceLostHandler:v12];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000F89C;
    v10[3] = &unk_1001AB278;
    v11 = bleNeedsCLinkScannerID;
    v10[4] = self;
    [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner setDeviceChangedHandler:v10];
    v8 = self->_bleNeedsCLinkScanner;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002B600;
    v9[3] = &unk_1001AB2C8;
    v9[4] = self;
    [(SFDeviceDiscovery *)v8 activateWithCompletion:v9];
  }
}

- (BOOL)_serverBLENeedsCLinkScannerScreenOff
{
  if (self->_prefCommunal)
  {
    return 1;
  }

  v3 = +[RPCloudDaemon sharedCloudDaemon];
  v2 = ([v3 idsHasAppleTV] & 1) != 0 || (objc_msgSend(v3, "idsHasHomePod") & 1) != 0 || (objc_msgSend(v3, "idsHasMac") & 1) != 0 || objc_msgSend(v3, "idsHandheldCount") > 2;

  return v2;
}

- (BOOL)_serverTCPHasActiveConnections
{
  if (!self->_prefServerBonjourOpportunitistic)
  {
    return [(NSMutableSet *)self->_tcpServerConnections count:v2]!= 0;
  }

  return [(RPCompanionLinkDaemon *)self _haveActiveServerConnectionsOnAWDL];
}

- (void)_clientEnsureStarted
{
  if (self->_prefBLEClient || self->_bleDiscoveryForce)
  {
    [(RPCompanionLinkDaemon *)self _clientBLEDiscoveryEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _clientBLEDiscoveryEnsureStopped];
  }

  if ([(RPCompanionLinkDaemon *)self _clientBLEActionDiscoveryShouldRun])
  {
    [(RPCompanionLinkDaemon *)self _clientBLEActionDiscoveryEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _clientBLEActionDiscoveryEnsureStopped];
  }

  if (self->_prefIPEnabled)
  {
    [(RPCompanionLinkDaemon *)self _clientBonjourEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _clientBonjourEnsureStopped];
  }

  if ([(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkAdvertiserShouldRun])
  {
    [(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkAdvertiserEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkAdvertiserEnsureStopped];
  }

  if ([(RPCompanionLinkDaemon *)self _clientBLENearbyActionV2AdvertiserShouldRun])
  {
    [(RPCompanionLinkDaemon *)self _clientBLENearbyActionV2AdvertiserEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _clientBLENearbyActionV2AdvertiserEnsureStopped];
  }

  if ([(RPCompanionLinkDaemon *)self _serverNearbyInfoV2DiscoveryShouldRun])
  {
    [(RPCompanionLinkDaemon *)self _serverNearbyInfoV2DiscoveryEnsureStarted];
  }

  else
  {
    [(RPCompanionLinkDaemon *)self _serverNearbyInfoV2DiscoveryEnsureStopped];
  }

  if ([(RPCompanionLinkDaemon *)self _clientBonjourAWDLBrowserShouldRun])
  {

    [(RPCompanionLinkDaemon *)self _clientBonjourAWDLBrowserEnsureStarted];
  }

  else
  {

    [(RPCompanionLinkDaemon *)self _clientBonjourAWDLBrowserEnsureStopped];
  }
}

- (BOOL)_haveActiveClientConnectionsOnAWDL
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [(NSMutableDictionary *)self->_tcpOnDemandClientConnections allValues];
  v4 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        if ([v8 state] == 1 && objc_msgSend(v8, "linkType") == 4)
        {
          inUseProcessesToString = [v8 inUseProcessesToString];
          v11 = [RPAssertionInfo assertionWithType:4 processName:inUseProcessesToString];

          [v11 setHandlerQueue:self->_dispatchQueue];
          [v11 setStartHandler:&stru_1001AB920];
          [v11 setExpiredHandler:&stru_1001AB940];
          bonjourBrowserAWDLAssertions = self->_bonjourBrowserAWDLAssertions;
          if (!bonjourBrowserAWDLAssertions)
          {
            v13 = +[NSMutableSet set];
            v14 = self->_bonjourBrowserAWDLAssertions;
            self->_bonjourBrowserAWDLAssertions = v13;

            bonjourBrowserAWDLAssertions = self->_bonjourBrowserAWDLAssertions;
          }

          [(NSMutableSet *)bonjourBrowserAWDLAssertions addObject:v11];

          v9 = 1;
          goto LABEL_14;
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (BOOL)_clientBonjourAWDLBrowserShouldRun
{
  if (self->_bonjourBrowserAWDLForce)
  {
    return 1;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_xpcConnections;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if (([v9 needsCLink] & 1) != 0 || objc_msgSend(v9, "needsNearbyActionV2"))
        {
          client = [v9 client];
          controlFlags = [client controlFlags];

          if ((controlFlags & 0x400000) == 0)
          {
            xpcCnx = [v9 xpcCnx];
            v13 = sub_10001B924([xpcCnx processIdentifier]);
            v14 = [RPAssertionInfo assertionWithType:3 processName:v13];

            [v14 setHandlerQueue:self->_dispatchQueue];
            [v14 setStartHandler:&stru_1001AB4A8];
            [v14 setExpiredHandler:&stru_1001AB4C8];
            bonjourBrowserAWDLAssertions = self->_bonjourBrowserAWDLAssertions;
            if (!bonjourBrowserAWDLAssertions)
            {
              v16 = +[NSMutableSet set];
              v17 = self->_bonjourBrowserAWDLAssertions;
              self->_bonjourBrowserAWDLAssertions = v16;

              bonjourBrowserAWDLAssertions = self->_bonjourBrowserAWDLAssertions;
            }

            [(NSMutableSet *)bonjourBrowserAWDLAssertions addObject:v14];

            v6 = 1;
          }
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);

    if (v6)
    {
      return 1;
    }
  }

  else
  {
  }

  return [(RPCompanionLinkDaemon *)self _haveActiveClientConnectionsOnAWDL];
}

- (BOOL)_serverNearbyInfoV2DiscoveryShouldRun
{
  if (_os_feature_enabled_impl())
  {
    v3 = +[RPIdentityDaemon sharedIdentityDaemon];
    v4 = [v3 identitiesOfType:15 error:0];

    if ([v4 count] && ((DeviceClass = GestaltGetDeviceClass(), DeviceClass == 1) || DeviceClass == 100 || DeviceClass == 3))
    {
      v6 = (BYTE5(self->_bleDiscoveryControlFlags) >> 5) & 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_clientBLENearbyActionV2AdvertiserShouldRun
{
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000241F0;
  v25[3] = &unk_1001AB3C8;
  v25[4] = self;
  v3 = objc_retainBlock(v25);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = self->_xpcConnections;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        if ([v10 needsNearbyActionV2])
        {
          netCnx = [v10 netCnx];
          state = [netCnx state];

          if (state != 1)
          {
            bonjourDevice = [v10 bonjourDevice];

            if (!bonjourDevice)
            {
              xpcCnx = [v10 xpcCnx];
              v15 = sub_10001B924([xpcCnx processIdentifier]);
              v16 = [RPAssertionInfo assertionWithType:2 processName:v15];

              [v16 setHandlerQueue:self->_dispatchQueue];
              [v16 setStartHandler:v3];
              [v16 setExpiredHandler:&stru_1001AB3E8];
              bleNearbyActionV2AdvertiserAssertions = self->_bleNearbyActionV2AdvertiserAssertions;
              if (!bleNearbyActionV2AdvertiserAssertions)
              {
                v18 = +[NSMutableSet set];
                v19 = self->_bleNearbyActionV2AdvertiserAssertions;
                self->_bleNearbyActionV2AdvertiserAssertions = v18;

                bleNearbyActionV2AdvertiserAssertions = self->_bleNearbyActionV2AdvertiserAssertions;
              }

              [(NSMutableSet *)bleNearbyActionV2AdvertiserAssertions addObject:v16];

              v7 = 1;
            }
          }
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)_clientBLENeedsCLinkAdvertiserShouldRun
{
  selfCopy = self;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = self->_xpcConnections;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v28;
    v26 = *v28;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        if ([v10 needsCLink])
        {
          netCnx = [v10 netCnx];
          state = [netCnx state];

          if (state != 1)
          {
            if (GestaltGetDeviceClass() == 1)
            {
              client = [v10 client];
              serviceType = [client serviceType];
              if ([serviceType isEqualToString:@"com.apple.ApplicationService.chrono"])
              {
                v6 = 1;
              }

              else
              {
                client2 = [v10 client];
                v16 = selfCopy;
                v17 = v3;
                v18 = ([client2 controlFlags] >> 51) & 1;

                v6 |= v18;
                v3 = v17;
                selfCopy = v16;
                v8 = v26;
              }
            }

            xpcCnx = [v10 xpcCnx];
            v20 = sub_10001B924([xpcCnx processIdentifier]);
            v21 = [RPAssertionInfo assertionWithType:1 processName:v20];

            [v21 setHandlerQueue:selfCopy->_dispatchQueue];
            [v21 setStartHandler:&stru_1001AB380];
            [v21 setExpiredHandler:&stru_1001AB3A0];
            bleNeedsCLinkAdvertiserAssertions = selfCopy->_bleNeedsCLinkAdvertiserAssertions;
            if (!bleNeedsCLinkAdvertiserAssertions)
            {
              v23 = +[NSMutableSet set];
              v24 = selfCopy->_bleNeedsCLinkAdvertiserAssertions;
              selfCopy->_bleNeedsCLinkAdvertiserAssertions = v23;

              bleNeedsCLinkAdvertiserAssertions = selfCopy->_bleNeedsCLinkAdvertiserAssertions;
            }

            [(NSMutableSet *)bleNeedsCLinkAdvertiserAssertions addObject:v21];

            v7 = 1;
          }
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  selfCopy->_bleNeedsCLinkAdvertiserScreenOff = v6 & 1;
  return v7 & 1;
}

- (void)_clientBLEActionDiscoveryEnsureStarted
{
  bleActionDiscovery = self->_bleActionDiscovery;
  v4 = bleActionDiscovery;
  if (!bleActionDiscovery)
  {
    bleActionDiscoveryID = self->_bleActionDiscoveryID;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010FB80();
    }

    v6 = objc_alloc_init(off_1001D3298());
    v7 = self->_bleActionDiscovery;
    self->_bleActionDiscovery = v6;

    [(SFDeviceDiscovery *)self->_bleActionDiscovery setChangeFlags:1];
    [(SFDeviceDiscovery *)self->_bleActionDiscovery setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)self->_bleActionDiscovery setPurpose:@"CLink"];
    [(SFDeviceDiscovery *)self->_bleActionDiscovery setRssiThreshold:-60];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002183C;
    v17[3] = &unk_1001AB250;
    v17[4] = self;
    v18 = bleActionDiscoveryID;
    [(SFDeviceDiscovery *)self->_bleActionDiscovery setDeviceFoundHandler:v17];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100003AD0;
    v15[3] = &unk_1001AB250;
    v15[4] = self;
    v16 = bleActionDiscoveryID;
    [(SFDeviceDiscovery *)self->_bleActionDiscovery setDeviceLostHandler:v15];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000C094;
    v13[3] = &unk_1001AB278;
    v13[4] = self;
    v14 = bleActionDiscoveryID;
    [(SFDeviceDiscovery *)self->_bleActionDiscovery setDeviceChangedHandler:v13];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100021864;
    v11[3] = &unk_1001AB2A0;
    v11[4] = self;
    v12 = bleActionDiscoveryID;
    [(SFDeviceDiscovery *)self->_bleActionDiscovery setInterruptionHandler:v11];
    v4 = self->_bleActionDiscovery;
  }

  if ((self->_bleDiscoveryControlFlags & 0x382000103C00) != 0)
  {
    v8 = 16;
  }

  else
  {
    v8 = 48;
  }

  if (v8 != [(SFDeviceDiscovery *)v4 discoveryFlags])
  {
    [(SFDeviceDiscovery *)self->_bleActionDiscovery setDiscoveryFlags:v8];
  }

  if (!bleActionDiscovery)
  {
    v9 = self->_bleActionDiscovery;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000218FC;
    v10[3] = &unk_1001AB2C8;
    v10[4] = self;
    [(SFDeviceDiscovery *)v9 activateWithCompletion:v10];
  }
}

- (void)_clientBLEDiscoveryEnsureStarted
{
  if (([(CUSystemMonitor *)self->_systemMonitor screenOn]& 1) == 0 && self->_bleDiscoveryScreenOff && [(NSSet *)self->_screenOffDeviceFilter count])
  {
    screenOffDeviceFilter = self->_screenOffDeviceFilter;
  }

  else
  {
    screenOffDeviceFilter = 0;
  }

  v4 = screenOffDeviceFilter;
  p_bleDiscovery = &self->_bleDiscovery;
  bleDiscovery = self->_bleDiscovery;
  if (!bleDiscovery)
  {
    goto LABEL_44;
  }

  changeFlags = [(SFDeviceDiscovery *)bleDiscovery changeFlags];
  bleProximityDetection = self->_bleProximityDetection;
  if (bleProximityDetection != (changeFlags & 2) >> 1)
  {
    if (dword_1001D3228 <= 30)
    {
      v9 = changeFlags;
      if (dword_1001D3228 != -1 || (v12 = _LogCategory_Initialize(), LOBYTE(bleProximityDetection) = self->_bleProximityDetection, v12))
      {
        if ((v9 & 2) != 0)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        if (bleProximityDetection)
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        v35 = v10;
        v36 = v11;
        LogPrintF();
        LOBYTE(bleProximityDetection) = self->_bleProximityDetection;
      }
    }

    v13 = *p_bleDiscovery;
    if (bleProximityDetection)
    {
      v14 = [*p_bleDiscovery changeFlags] | 2;
    }

    else
    {
      v14 = [*p_bleDiscovery changeFlags] & 0xFFFFFFFD;
    }

    [v13 setChangeFlags:{v14, v35, v36}];
  }

  if ([(SFDeviceDiscovery *)self->_bleDiscovery rssiThreshold]!= self->_bleRSSIThreshold)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010FC60(&self->_bleDiscovery);
    }

    [*p_bleDiscovery setRssiThreshold:self->_bleRSSIThreshold];
  }

  if (![(NSSet *)v4 count])
  {
    deviceFilter = [*p_bleDiscovery deviceFilter];
    v16 = [deviceFilter count];

    if (!v16)
    {
      goto LABEL_42;
    }
  }

  deviceFilter2 = [*p_bleDiscovery deviceFilter];
  v18 = v4;
  v19 = deviceFilter2;
  v20 = v19;
  if (v18 == v19)
  {

    goto LABEL_34;
  }

  if ((v18 != 0) != (v19 == 0))
  {
    v21 = [(NSSet *)v18 isEqual:v19];

    if (!v21)
    {
      goto LABEL_36;
    }

LABEL_34:
    v22 = 10;
    v23 = 1;
    goto LABEL_37;
  }

LABEL_36:
  v23 = 0;
  v22 = 30;
LABEL_37:
  if (v22 < dword_1001D3228 || dword_1001D3228 == -1 && !_LogCategory_Initialize())
  {
    if (v23)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  sub_10010FCB4(v23, &self->_bleDiscovery);
  if ((v23 & 1) == 0)
  {
LABEL_41:
    [*p_bleDiscovery setDeviceFilter:v18];
  }

LABEL_42:
  if (*p_bleDiscovery)
  {
    v24 = 0;
    goto LABEL_54;
  }

LABEL_44:
  bleDiscoveryID = self->_bleDiscoveryID;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10010FD48();
  }

  if (self->_bleProximityDetection)
  {
    v26 = 3;
  }

  else
  {
    v26 = 1;
  }

  v27 = objc_alloc_init(off_1001D3298());
  v28 = self->_bleDiscovery;
  self->_bleDiscovery = v27;

  [(SFDeviceDiscovery *)self->_bleDiscovery setChangeFlags:v26 | 0x20u];
  v24 = 1;
  [(SFDeviceDiscovery *)self->_bleDiscovery setRssiChangeDetection:1];
  [(SFDeviceDiscovery *)self->_bleDiscovery setDispatchQueue:self->_dispatchQueue];
  [(SFDeviceDiscovery *)self->_bleDiscovery setPurpose:@"CLink"];
  if (self->_bleRSSIThreshold)
  {
    bleRSSIThreshold = self->_bleRSSIThreshold;
  }

  else
  {
    bleRSSIThreshold = -60;
  }

  [(SFDeviceDiscovery *)self->_bleDiscovery setRssiThreshold:bleRSSIThreshold];
  [(SFDeviceDiscovery *)self->_bleDiscovery setDeviceFilter:v4];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10000B298;
  v46[3] = &unk_1001AB250;
  v46[4] = self;
  v47 = bleDiscoveryID;
  [(SFDeviceDiscovery *)self->_bleDiscovery setDeviceFoundHandler:v46];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100021B6C;
  v44[3] = &unk_1001AB250;
  v44[4] = self;
  v45 = bleDiscoveryID;
  [(SFDeviceDiscovery *)self->_bleDiscovery setDeviceLostHandler:v44];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000031C4;
  v40[3] = &unk_1001AB2F0;
  v40[4] = self;
  v41 = bleDiscoveryID;
  v42 = v26;
  v43 = 32;
  [(SFDeviceDiscovery *)self->_bleDiscovery setDeviceChangedHandler:v40];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100021B98;
  v38[3] = &unk_1001AB2A0;
  v38[4] = self;
  v39 = bleDiscoveryID;
  [(SFDeviceDiscovery *)self->_bleDiscovery setInterruptionHandler:v38];
LABEL_54:
  if ((self->_bleDiscoveryControlFlags & 0x380000103C00) != 0)
  {
    v30 = 1;
  }

  else
  {
    _clientShouldFindNonSameAccountDevices = [(RPCompanionLinkDaemon *)self _clientShouldFindNonSameAccountDevices];
    if (v4)
    {
      v32 = 1;
    }

    else
    {
      v32 = _clientShouldFindNonSameAccountDevices;
    }

    if (v32)
    {
      v30 = 1;
    }

    else
    {
      v30 = 33;
    }
  }

  if (v30 != [*p_bleDiscovery discoveryFlags])
  {
    [*p_bleDiscovery setDiscoveryFlags:v30];
  }

  if (self->_bleDiscoveryScreenOff != [(SFDeviceDiscovery *)self->_bleDiscovery overrideScreenOff])
  {
    [*p_bleDiscovery setOverrideScreenOff:?];
  }

  if ([(SFDeviceDiscovery *)self->_bleDiscovery overrideScreenOffRescanInterval]!= self->_bleDiscoveryScreenOffRescanInterval)
  {
    [*p_bleDiscovery setOverrideScreenOffRescanInterval:?];
  }

  if (([(CUSystemMonitor *)self->_systemMonitor screenOn]& 1) != 0)
  {
    bleDiscoveryScreenOffScanRate = 0;
  }

  else
  {
    bleDiscoveryScreenOffScanRate = self->_bleDiscoveryScreenOffScanRate;
  }

  [*p_bleDiscovery setScanRate:bleDiscoveryScreenOffScanRate];
  if (v24)
  {
    v34 = self->_bleDiscovery;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100021C30;
    v37[3] = &unk_1001AB2C8;
    v37[4] = self;
    [(SFDeviceDiscovery *)v34 activateWithCompletion:v37];
  }
}

- (void)_btPipeEnsureStarted
{
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    if (!self->_btPipe)
    {
      v3 = objc_alloc_init(CUBluetoothScalablePipe);
      btPipe = self->_btPipe;
      self->_btPipe = v3;

      [(CUBluetoothScalablePipe *)self->_btPipe setIdentifier:@"CLink"];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10002ED54;
      v13[3] = &unk_1001AA970;
      v13[4] = self;
      [(CUBluetoothScalablePipe *)self->_btPipe setPeerHostStateChangedHandler:v13];
      [(RPCompanionLinkDaemon *)self _btPipeSetup:self->_btPipe withPriority:2];
    }

    if (!self->_btPipeHighPriority)
    {
      v5 = objc_alloc_init(CUBluetoothScalablePipe);
      btPipeHighPriority = self->_btPipeHighPriority;
      self->_btPipeHighPriority = v5;

      [(CUBluetoothScalablePipe *)self->_btPipeHighPriority setIdentifier:@"CLinkHP"];
      [(RPCompanionLinkDaemon *)self _btPipeSetup:self->_btPipeHighPriority withPriority:3];
    }

    if (GestaltGetDeviceClass() == 1)
    {
      v7 = +[RPCloudDaemon sharedCloudDaemon];
      if (([v7 idsHasWatch] & 1) == 0)
      {
LABEL_13:

        return;
      }

      v8 = _os_feature_enabled_impl();

      if (v8)
      {
        v14 = @"statusFlags";
        v15 = &off_1001B7D38;
        v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
        v9 = [(NSMutableDictionary *)self->_registeredRequests objectForKeyedSubscript:@"_ctxtColl"];

        if (!v9)
        {
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_10002EE14;
          v12[3] = &unk_1001AB798;
          v12[4] = self;
          [(RPCompanionLinkDaemon *)self registerRequestID:@"_ctxtColl" options:v7 handler:v12];
        }

        v10 = [(NSMutableDictionary *)self->_registeredRequests objectForKeyedSubscript:@"_ctxtCollProxy"];

        if (!v10)
        {
          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_10002EE20;
          v11[3] = &unk_1001AB798;
          v11[4] = self;
          [(RPCompanionLinkDaemon *)self registerRequestID:@"_ctxtCollProxy" options:v7 handler:v11];
        }

        goto LABEL_13;
      }
    }
  }

  else if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100112F98();
  }
}

- (void)_homeKitUpdateUserIdentifiers
{
  [(RPHomeKitManager *)self->_rpHomeKitManager resetHomeKitUserIdentifiers];
  homeKitUserIdentifiers = [(RPHomeKitManager *)self->_rpHomeKitManager homeKitUserIdentifiers];
  homeKitUserIdentifiers2 = [(RPCompanionLinkDevice *)self->_localDeviceInfo homeKitUserIdentifiers];
  v5 = [homeKitUserIdentifiers2 count];
  v6 = [homeKitUserIdentifiers count];

  if (v5 == v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = homeKitUserIdentifiers;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          homeKitUserIdentifiers3 = [(RPCompanionLinkDevice *)self->_localDeviceInfo homeKitUserIdentifiers];
          LODWORD(v12) = [homeKitUserIdentifiers3 containsObject:v12];

          if (!v12)
          {

            goto LABEL_12;
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
LABEL_12:
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setHomeKitUserIdentifiers:0];
    [(RPCompanionLinkDaemon *)self _localDeviceUpdate];
  }
}

- (void)_homeKitEnsureStarted
{
  if (!self->_homeKitManager)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113DF4();
    }

    v3 = objc_alloc_init(CUHomeKitManager);
    homeKitManager = self->_homeKitManager;
    self->_homeKitManager = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.rapportd.CUHomeKitManager", v5);
    [(CUHomeKitManager *)self->_homeKitManager setDispatchQueue:v6];

    if (self->_prefCommunal)
    {
      v7 = 842;
    }

    else
    {
      v7 = 1600;
    }

    [(CUHomeKitManager *)self->_homeKitManager setFlags:v7];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100035E44;
    v19[3] = &unk_1001AA970;
    v19[4] = self;
    [(CUHomeKitManager *)self->_homeKitManager setResolvableAccessoriesChangedHandler:v19];
    if ((v7 & 2) != 0)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100035F40;
      v18[3] = &unk_1001AA970;
      v18[4] = self;
      [(CUHomeKitManager *)self->_homeKitManager setSelfAccessoryMediaAccessUpdatedHandler:v18];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100036014;
      v17[3] = &unk_1001AA970;
      v17[4] = self;
      [(CUHomeKitManager *)self->_homeKitManager setSelfAccessoryMediaSystemUpdatedHandler:v17];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100036134;
      v16[3] = &unk_1001AA970;
      v16[4] = self;
      [(CUHomeKitManager *)self->_homeKitManager setSelfAccessoryUpdatedHandler:v16];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10003623C;
      v15[3] = &unk_1001AA970;
      v15[4] = self;
      [(CUHomeKitManager *)self->_homeKitManager setSelfAccessorySiriAccessUpdatedHandler:v15];
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000362F0;
    v14[3] = &unk_1001AB810;
    v14[4] = self;
    [(CUHomeKitManager *)self->_homeKitManager setStateChangedHandler:v14];
    [(CUHomeKitManager *)self->_homeKitManager activate];
  }

  if (!self->_rpHomeKitManager)
  {
    v8 = [[RPHomeKitManager alloc] initWithQueue:self->_dispatchQueue];
    rpHomeKitManager = self->_rpHomeKitManager;
    self->_rpHomeKitManager = v8;

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10003641C;
    v13[3] = &unk_1001AA970;
    v13[4] = self;
    [(RPHomeKitManager *)self->_rpHomeKitManager setPersonalRequestsStateChangedHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100036424;
    v12[3] = &unk_1001ABB70;
    v12[4] = self;
    [(RPHomeKitManager *)self->_rpHomeKitManager setRoomUpdatedHandler:v12];
  }

  homeKitManagerState = self->_homeKitManagerState;
  if (homeKitManagerState == 1)
  {
    [(RPCompanionLinkDaemon *)self _homeKitGetPairingIdentities];
  }

  if (!self->_receiveHomeKitPairingUpdated)
  {
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:self selector:"_homeKitPairingUpdated:" name:@"HMAccessoryPairingIdentityUpdatedNotification" object:0];
    self->_receiveHomeKitPairingUpdated = 1;
  }

  if (homeKitManagerState == 1)
  {
    [(RPCompanionLinkDaemon *)self _homeKitUpdateUserIdentifiers];
  }
}

- (void)_homeKitGetPairingIdentities
{
  if (!self->_homeKitGettingIdentity && (!self->_homeKitLTPK || self->_homeKitForceGetIdentity))
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113E68();
    }

    *&self->_homeKitForceGetIdentity = 256;
    homeKitManager = self->_homeKitManager;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100036620;
    v4[3] = &unk_1001ABB98;
    v4[4] = self;
    [(CUHomeKitManager *)homeKitManager getPairingIdentityWithOptions:34 completion:v4];
  }
}

- (void)_reachabilityEnsureStarted
{
  if (!self->_netLinkManager)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113D28();
    }

    v4 = objc_alloc_init(CUNetLinkManager);
    netLinkManager = self->_netLinkManager;
    self->_netLinkManager = v4;

    [(CUNetLinkManager *)self->_netLinkManager setDispatchQueue:self->_dispatchQueue];
    [(CUNetLinkManager *)self->_netLinkManager setLabel:@"CLink"];
    v6 = self->_netLinkManager;

    [(CUNetLinkManager *)v6 activate];
  }
}

- (void)_bleServerEnsureStarted
{
  if (!self->_bleServer)
  {
    v11[5] = v5;
    v11[6] = v4;
    v11[9] = v2;
    v11[10] = v3;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112E34();
    }

    v7 = objc_alloc_init(CUBLEServer);
    bleServer = self->_bleServer;
    self->_bleServer = v7;

    [(CUBLEServer *)self->_bleServer setDispatchQueue:self->_dispatchQueue];
    [(CUBLEServer *)self->_bleServer setLabel:@"CLink"];
    [(CUBLEServer *)self->_bleServer setListenPSM:129];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002E2E8;
    v11[3] = &unk_1001AB770;
    v11[4] = self;
    [(CUBLEServer *)self->_bleServer setConnectionStartedHandler:v11];
    v9 = self->_bleServer;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002E2F4;
    v10[3] = &unk_1001AB2C8;
    v10[4] = self;
    [(CUBLEServer *)v9 activateWithCompletion:v10];
  }
}

- (BOOL)_clientBLEActionDiscoveryShouldRun
{
  bleDiscoveryControlFlags = self->_bleDiscoveryControlFlags;
  v3 = (bleDiscoveryControlFlags & &_mh_execute_header) != 0 || (bleDiscoveryControlFlags & 0x2000000000) != 0;
  return bleDiscoveryControlFlags && v3;
}

- (void)_clientBonjourEnsureStarted
{
  if (!self->_bonjourBrowser)
  {
    v11[5] = v5;
    v11[6] = v4;
    v11[9] = v2;
    v11[10] = v3;
    if (self->_btAdvAddrData || !self->_prefServerShouldRun)
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100110A38();
      }

      v7 = objc_alloc_init(CUBonjourBrowser);
      bonjourBrowser = self->_bonjourBrowser;
      self->_bonjourBrowser = v7;

      [(CUBonjourBrowser *)self->_bonjourBrowser setChangeFlags:0xFFFFFFFFLL];
      [(CUBonjourBrowser *)self->_bonjourBrowser setControlFlags:1];
      [(CUBonjourBrowser *)self->_bonjourBrowser setDispatchQueue:self->_dispatchQueue];
      [(CUBonjourBrowser *)self->_bonjourBrowser setDomain:@"local."];
      [(CUBonjourBrowser *)self->_bonjourBrowser setLabel:@"CLink"];
      [(CUBonjourBrowser *)self->_bonjourBrowser setServiceType:@"_companion-link._tcp"];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100024D28;
      v11[3] = &unk_1001AB438;
      v11[4] = self;
      [(CUBonjourBrowser *)self->_bonjourBrowser setDeviceFoundHandler:v11];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100024D44;
      v10[3] = &unk_1001AB438;
      v10[4] = self;
      [(CUBonjourBrowser *)self->_bonjourBrowser setDeviceLostHandler:v10];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100024D5C;
      v9[3] = &unk_1001AB460;
      v9[4] = self;
      [(CUBonjourBrowser *)self->_bonjourBrowser setDeviceChangedHandler:v9];
      [(CUBonjourBrowser *)self->_bonjourBrowser activate];
    }

    else if (dword_1001D3228 <= 20 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100110A54();
    }
  }
}

- (void)_duetSyncEnsureStarted
{
  if (!self->_duetSyncClient)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011366C();
    }

    v4 = objc_alloc_init(off_1001D32A8());
    duetSyncClient = self->_duetSyncClient;
    self->_duetSyncClient = v4;

    [(SFClient *)self->_duetSyncClient setDispatchQueue:self->_dispatchQueue];
    v6 = self->_duetSyncClient;

    [(SFClient *)v6 activateAssertionWithIdentifier:@"com.apple.sharing.DuetSync"];
  }
}

- (void)_clientBLENeedsCLinkAdvertiserEnsureStopped
{
  if (self->_bleNeedsCLinkAdvertiser)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100110958();
    }

    [(RPCompanionLinkDaemon *)self _clientPurgeUnauthAWDLDevices];
    [(SFService *)self->_bleNeedsCLinkAdvertiser invalidate];
    bleNeedsCLinkAdvertiser = self->_bleNeedsCLinkAdvertiser;
    self->_bleNeedsCLinkAdvertiser = 0;

    bleNeedsCLinkAdvertiserAssertions = self->_bleNeedsCLinkAdvertiserAssertions;
    if (bleNeedsCLinkAdvertiserAssertions)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = bleNeedsCLinkAdvertiserAssertions;
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v15;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v14 + 1) + 8 * i);
            v11 = +[RPAssertionTracker sharedTracker];
            [v11 stopTracking:v10];
          }

          v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v7);
      }

      [(NSMutableSet *)self->_bleNeedsCLinkAdvertiserAssertions removeAllObjects];
      v12 = self->_bleNeedsCLinkAdvertiserAssertions;
      self->_bleNeedsCLinkAdvertiserAssertions = 0;
    }

    bleNeedsCLinkDevice = self->_bleNeedsCLinkDevice;
    self->_bleNeedsCLinkDevice = 0;

    [(RPCompanionLinkDaemon *)self _clientSendNeedsAWDLOverWiFi:0];
  }
}

- (void)_clientBLENearbyActionV2AdvertiserEnsureStopped
{
  bleNearbyActionV2Advertiser = self->_bleNearbyActionV2Advertiser;
  if (bleNearbyActionV2Advertiser)
  {
    [(RPNearbyActionV2Advertiser *)bleNearbyActionV2Advertiser invalidate];
    v4 = self->_bleNearbyActionV2Advertiser;
    self->_bleNearbyActionV2Advertiser = 0;

    bleNearbyActionV2AdvertiserAssertions = self->_bleNearbyActionV2AdvertiserAssertions;
    if (bleNearbyActionV2AdvertiserAssertions)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = bleNearbyActionV2AdvertiserAssertions;
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v16;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v15 + 1) + 8 * i);
            v12 = +[RPAssertionTracker sharedTracker];
            [v12 stopTracking:v11];
          }

          v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v8);
      }

      [(NSMutableSet *)self->_bleNearbyActionV2AdvertiserAssertions removeAllObjects];
      v13 = self->_bleNearbyActionV2AdvertiserAssertions;
      self->_bleNearbyActionV2AdvertiserAssertions = 0;
    }

    bleNearbyActionV2Device = self->_bleNearbyActionV2Device;
    self->_bleNearbyActionV2Device = 0;

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001109C4();
    }

    [(RPCompanionLinkDaemon *)self _clientSendNeedsAWDLOverWiFi:0, v15];
  }
}

- (void)_serverNearbyInfoV2DiscoveryEnsureStopped
{
  if (self->_bleNearbyInfoV2Discovery)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112418();
    }

    [(RPNearbyInfoV2Discovery *)self->_bleNearbyInfoV2Discovery invalidate];
    bleNearbyInfoV2Discovery = self->_bleNearbyInfoV2Discovery;
    self->_bleNearbyInfoV2Discovery = 0;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allKeys = [(NSMutableDictionary *)self->_nearbyInfoV2Devices allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          v9 = [(NSMutableDictionary *)self->_nearbyInfoV2Devices objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
          v10 = v9;
          if (v9)
          {
            cbDevice = [v9 cbDevice];
            idsDeviceIdentifier = [v10 idsDeviceIdentifier];
            [(RPCompanionLinkDaemon *)self _serverNearbyInfoV2DeviceLost:cbDevice idsIdentifier:idsDeviceIdentifier force:1 deviceFlags:4];
          }
        }

        v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }
}

- (void)_clientBonjourAWDLBrowserEnsureStopped
{
  if (self->_bonjourBrowserAWDL)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001115D0();
    }

    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL invalidate];
    bonjourBrowserAWDL = self->_bonjourBrowserAWDL;
    self->_bonjourBrowserAWDL = 0;

    bonjourBrowserAWDLAssertions = self->_bonjourBrowserAWDLAssertions;
    if (bonjourBrowserAWDLAssertions)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = bonjourBrowserAWDLAssertions;
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v16 + 1) + 8 * i);
            v11 = +[RPAssertionTracker sharedTracker];
            [v11 stopTracking:v10];
          }

          v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v7);
      }

      [(NSMutableSet *)self->_bonjourBrowserAWDLAssertions removeAllObjects];
      v12 = self->_bonjourBrowserAWDLAssertions;
      self->_bonjourBrowserAWDLAssertions = 0;
    }

    [(NSMutableDictionary *)self->_bonjourAWDLDevices removeAllObjects];
    bonjourAWDLDevices = self->_bonjourAWDLDevices;
    self->_bonjourAWDLDevices = 0;

    [(NSMutableDictionary *)self->_authenticatedAWDLPairingModeDevices removeAllObjects];
    authenticatedAWDLPairingModeDevices = self->_authenticatedAWDLPairingModeDevices;
    self->_authenticatedAWDLPairingModeDevices = 0;

    if (!self->_needsAWDLTransaction && !self->_bonjourAWDLAdvertiser)
    {
      v15 = +[RPWiFiP2PTransaction sharedInstance];
      [v15 invalidateForClient:@"Ensemble"];
    }
  }
}

- (void)_serverTCPEnsureStopped
{
  if (self->_tcpServer)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112D20();
    }

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = self->_tcpServerConnections;
    v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v9 + 1) + 8 * i) invalidate];
        }

        v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    [(NSMutableSet *)self->_tcpServerConnections removeAllObjects];
    [(CUTCPServer *)self->_tcpServer invalidate];
    tcpServer = self->_tcpServer;
    self->_tcpServer = 0;
  }
}

- (void)_serverBTAddressMonitorEnsureStarted
{
  if (!self->_btAdvAddrMonitor)
  {
    v11[5] = v5;
    v11[6] = v4;
    v11[9] = v2;
    v11[10] = v3;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112BE4();
    }

    v7 = objc_alloc_init(CUSystemMonitor);
    btAdvAddrMonitor = self->_btAdvAddrMonitor;
    self->_btAdvAddrMonitor = v7;

    [(CUSystemMonitor *)self->_btAdvAddrMonitor setDispatchQueue:self->_dispatchQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002D0C4;
    v11[3] = &unk_1001AA970;
    v11[4] = self;
    [(CUSystemMonitor *)self->_btAdvAddrMonitor setRotatingIdentifierChangedHandler:v11];
    v9 = self->_btAdvAddrMonitor;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002D0CC;
    v10[3] = &unk_1001AA970;
    v10[4] = self;
    [(CUSystemMonitor *)v9 activateWithCompletion:v10];
  }
}

- (void)_serverNearbyActionV2DiscoveryEnsureStopped
{
  bleNearbyActionV2Discovery = self->_bleNearbyActionV2Discovery;
  if (bleNearbyActionV2Discovery)
  {
    [(RPNearbyActionV2Discovery *)bleNearbyActionV2Discovery invalidate];
    v4 = self->_bleNearbyActionV2Discovery;
    self->_bleNearbyActionV2Discovery = 0;
  }
}

- (void)_serverBonjourEnsureStopped
{
  if (self->_bonjourAdvertiser)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001127F4();
    }

    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser invalidate];
    bonjourAdvertiser = self->_bonjourAdvertiser;
    self->_bonjourAdvertiser = 0;
  }
}

- (void)_serverBonjourAWDLAdvertiserEnsureStopped
{
  bonjourAWDLAdvertiser = self->_bonjourAWDLAdvertiser;
  if (bonjourAWDLAdvertiser)
  {
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (v4 = _LogCategory_Initialize(), bonjourAWDLAdvertiser = self->_bonjourAWDLAdvertiser, v4))
      {
        v8 = CUDescriptionWithLevel();
        LogPrintF();

        bonjourAWDLAdvertiser = self->_bonjourAWDLAdvertiser;
      }
    }

    [(CUBonjourAdvertiser *)bonjourAWDLAdvertiser invalidate];
    if (!self->_bonjourBrowserAWDL)
    {
      v5 = +[RPWiFiP2PTransaction sharedInstance];
      [v5 invalidateForClient:@"Ensemble"];
    }

    v6 = self->_bonjourAWDLAdvertiser;
    self->_bonjourAWDLAdvertiser = 0;

    deviceAWDLRandomID = self->_deviceAWDLRandomID;
    self->_deviceAWDLRandomID = 0;
  }
}

- (void)_hidEnsureStopped
{
  if (self->_hidDaemon)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113740();
    }

    [(RPHIDDaemon *)self->_hidDaemon invalidate];
    hidDaemon = self->_hidDaemon;
    self->_hidDaemon = 0;
  }
}

- (void)_mediaControlEnsureStopped
{
  if (self->_mediaControlDaemon)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113B04();
    }

    [(RPMediaControlDaemon *)self->_mediaControlDaemon invalidate];
    mediaControlDaemon = self->_mediaControlDaemon;
    self->_mediaControlDaemon = 0;
  }
}

- (void)_miscEnsureStarted
{
  if (!self->_miscStarted)
  {
    v11 = @"statusFlags";
    v12 = &off_1001B7D38;
    v3 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113BD8();
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100034100;
    v8[3] = &unk_1001AB798;
    v8[4] = self;
    [(RPCompanionLinkDaemon *)self registerRequestID:@"_launchApp" options:v3 handler:v8];
    if (self->_prefCommunal)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10003410C;
      v7[3] = &unk_1001AB798;
      v7[4] = self;
      [(RPCompanionLinkDaemon *)self registerRequestID:@"_speak" options:v3 handler:v7];
    }

    v9 = @"statusFlags";
    v10 = &off_1001B7D50;
    v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100034118;
    v6[3] = &unk_1001ABA08;
    v6[4] = self;
    [(RPCompanionLinkDaemon *)self _registerConnectionRequestID:@"_sessionStart" options:v4 handler:v6];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100034128;
    v5[3] = &unk_1001ABA08;
    v5[4] = self;
    [(RPCompanionLinkDaemon *)self _registerConnectionRequestID:@"_sessionStop" options:v4 handler:v5];
    self->_miscStarted = 1;
  }
}

- (void)_siriEnsureStopped
{
  if (self->_siriDaemon)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113DBC();
    }

    [(RPSiriDaemon *)self->_siriDaemon invalidate];
    siriDaemon = self->_siriDaemon;
    self->_siriDaemon = 0;
  }
}

- (BOOL)_serverBonjourShouldRun
{
  if (self->_prefServerBonjourAlways)
  {
    return 1;
  }

  return self->_serverBonjourInfraPairing || self->_prefServerBonjourOpportunitistic && (([(CUSystemMonitor *)self->_systemMonitor powerUnlimited]& 1) != 0 || ![(CUSystemMonitor *)self->_systemMonitor screenLocked]);
}

- (BOOL)_clientShouldFindNonSameAccountDevices
{
  DeviceClass = GestaltGetDeviceClass();
  if (DeviceClass == 1)
  {
LABEL_4:
    if (self->_inDiscoverySession)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (DeviceClass != 4)
  {
    if (DeviceClass != 3)
    {
      return 0;
    }

    goto LABEL_4;
  }

LABEL_5:
  v4 = +[RPIdentityDaemon sharedIdentityDaemon];
  v5 = [v4 identitiesOfType:12 error:0];

  if ([v5 count])
  {
    v6 = 1;
  }

  else
  {
    v7 = +[RPIdentityDaemon sharedIdentityDaemon];
    v8 = [v7 identitiesOfType:13 error:0];

    v6 = [v8 count] != 0;
  }

  return v6;
}

- (void)_reportXPCMatchingDiscoveryCLink
{
  v3 = +[NSMutableArray array];
  allValues = [(NSMutableDictionary *)self->_activeDevices allValues];
  [v3 addObjectsFromArray:allValues];

  allValues2 = [(NSMutableDictionary *)self->_bleDevices allValues];
  [v3 addObjectsFromArray:allValues2];

  v6 = +[NSMutableSet set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    selfCopy = self;
    v9 = 0;
    v10 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        statusFlags = [v12 statusFlags];
        model = [v12 model];
        if (model)
        {
          v15 = GestaltProductTypeStringToDeviceClass();
          if (v15)
          {
            v16 = [NSNumber numberWithInt:v15];
            [v6 addObject:v16];
          }
        }

        v9 += (statusFlags >> 19) & 1;
      }

      v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
    LOBYTE(v8) = v9 > 0;
    self = selfCopy;
  }

  xpcMatchingMap = self->_xpcMatchingMap;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000B62C;
  v20[3] = &unk_1001AB050;
  v22 = v8;
  v21 = v6;
  v18 = v6;
  [(NSMutableDictionary *)xpcMatchingMap enumerateKeysAndObjectsUsingBlock:v20];
}

- (void)_serverEnsureStopped
{
  [(RPCompanionLinkDaemon *)self _serverBLENeedsCLinkScannerEnsureStopped];
  [(RPCompanionLinkDaemon *)self _serverNearbyActionV2DiscoveryEnsureStopped];
  [(RPCompanionLinkDaemon *)self _serverBonjourAWDLAdvertiserEnsureStopped];
  [(RPCompanionLinkDaemon *)self _serverBonjourEnsureStopped];
  [(RPCompanionLinkDaemon *)self _serverBTAddressMonitorEnsureStopped];

  [(RPCompanionLinkDaemon *)self _serverTCPEnsureStopped];
}

- (void)_serverBLENeedsCLinkScannerEnsureStopped
{
  if (self->_bleNeedsCLinkScanner)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001124D0(self);
    }

    [(SFDeviceDiscovery *)self->_bleNeedsCLinkScanner invalidate];
    bleNeedsCLinkScanner = self->_bleNeedsCLinkScanner;
    self->_bleNeedsCLinkScanner = 0;

    ++self->_bleNeedsCLinkScannerID;
    [(NSMutableDictionary *)self->_bleNeedsCLinkDevices removeAllObjects];
    pendingLostNeedsCLinkDevicesTimer = self->_pendingLostNeedsCLinkDevicesTimer;
    if (pendingLostNeedsCLinkDevicesTimer)
    {
      dispatch_source_cancel(pendingLostNeedsCLinkDevicesTimer);
      v5 = self->_pendingLostNeedsCLinkDevicesTimer;
      self->_pendingLostNeedsCLinkDevicesTimer = 0;
    }
  }
}

- (void)_serverBTAddressMonitorEnsureStopped
{
  if (self->_btAdvAddrMonitor)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112C00();
    }

    [(CUSystemMonitor *)self->_btAdvAddrMonitor invalidate];
    btAdvAddrMonitor = self->_btAdvAddrMonitor;
    self->_btAdvAddrMonitor = 0;
  }
}

- (void)_clientBonjourReevaluateUnauthDevices
{
  if ([(NSMutableDictionary *)self->_unauthDevices count]&& dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100111558();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_unauthDevices allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        bonjourDevice = [*(*(&v10 + 1) + 8 * v7) bonjourDevice];
        if (bonjourDevice && [(RPCompanionLinkDaemon *)self _clientBonjourFoundDevice:bonjourDevice reevaluate:1])
        {
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_100111574();
          }

          [(RPCompanionLinkDaemon *)self _clientBonjourLostUnauthDevice:bonjourDevice];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v9 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = v9;
    }

    while (v9);
  }
}

+ (id)sharedCompanionLinkDaemon
{
  if (qword_1001D6040 != -1)
  {
    sub_10000F8E0();
  }

  v3 = qword_1001D6038;

  return v3;
}

- (void)_startApplicationServiceMonitorIfNecessary
{
  if (self->_applicationServiceMonitorStarted)
  {
    v8 = v2;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113DD8();
    }

    v7 = [_TtC8rapportd27RPApplicationServiceMonitor shared:v3];
    [v7 invalidate];

    self->_applicationServiceMonitorStarted = 0;
  }
}

- (RPCompanionLinkDaemon)init
{
  v6.receiver = self;
  v6.super_class = RPCompanionLinkDaemon;
  v2 = [(RPCompanionLinkDaemon *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_coreDeviceChangedNotifier = -1;
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v3->_needsPrimaryAppleIDUpdate = 1;
    [(RPCompanionLinkDaemon *)v3 _createDestinationIdentifierMaps];
    RandomBytes();
    RandomBytes();
    v4 = v3;
  }

  return v3;
}

- (void)_createDestinationIdentifierMaps
{
  v9[0] = @"rapport:rdid:ModelAppleTV";
  v9[1] = @"rapport:rdid:ModelAppleTV";
  v10[0] = &stru_1001AACF8;
  v10[1] = &stru_1001AAD18;
  v9[2] = @"rapport:rdid:ModelAppleTV";
  v9[3] = @"rapport:rdid:ModelAppleTV";
  v10[2] = &stru_1001AAD38;
  v10[3] = &stru_1001AAD58;
  v9[4] = @"rapport:rdid:ModelAppleTV";
  v9[5] = @"rapport:rdid:ModelAppleTV";
  v10[4] = &stru_1001AAD78;
  v10[5] = &stru_1001AAD98;
  v9[6] = @"rapport:rdid:ModelAppleTV";
  v10[6] = &stru_1001AADB8;
  v3 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:7];
  destinationIdentifierModelMap = self->_destinationIdentifierModelMap;
  self->_destinationIdentifierModelMap = v3;

  v7[0] = @"rapport:rdid:RelationMyiCloud";
  v7[1] = @"rapport:rdid:RelationFamily";
  v8[0] = &stru_1001AADF8;
  v8[1] = &stru_1001AAE18;
  v7[2] = @"rapport:rdid:RelationFriend";
  v7[3] = @"rapport:rdid:RelationSharedHome";
  v8[2] = &stru_1001AAE38;
  v8[3] = &stru_1001AAE58;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  destinationIdentifierRelMap = self->_destinationIdentifierRelMap;
  self->_destinationIdentifierRelMap = v5;
}

- (id)findServerClientFromID:(id)d senderIDS:(id)s statusFlags:(unint64_t)flags
{
  dCopy = d;
  sCopy = s;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000029CC;
  v21 = sub_10000317C;
  v22 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001C34C;
  v13[3] = &unk_1001AAE80;
  v9 = dCopy;
  v14 = v9;
  v10 = sCopy;
  v15 = v10;
  v16 = &v17;
  [(RPCompanionLinkDaemon *)self _forEachConnectionWithHandler:v13];
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)findDeviceFromID:(id)d
{
  dCopy = d;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000029CC;
  v14 = sub_10000317C;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001C6C8;
  v9[3] = &unk_1001AAEA8;
  v9[4] = &v10;
  [(RPCompanionLinkDaemon *)self _forEachMatchingDestinationID:dCopy handler:v9];
  v5 = v11[5];
  if (v5)
  {
    if (dword_1001D3228 > 30)
    {
      goto LABEL_11;
    }

    if (dword_1001D3228 != -1)
    {
      goto LABEL_4;
    }

    if (_LogCategory_Initialize())
    {
      v5 = v11[5];
LABEL_4:
      name = [v5 name];
      LogPrintF();
    }
  }

  else if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_11:
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)descriptionWithLevel:(int)level
{
  if (level >= 21)
  {
    v4 = NSPrintF();
    goto LABEL_127;
  }

  v277 = 0;
  v278 = &v277;
  v279 = 0x3032000000;
  v280 = sub_1000029CC;
  v281 = sub_10000317C;
  v282 = 0;
  v6 = sub_100009D00();
  v7 = (v278 + 5);
  obj = v278[5];
  NSAppendPrintF();
  objc_storeStrong(v7, obj);
  v8 = (v278 + 5);
  v275 = v278[5];
  mach_continuous_time();
  startTicksFull = self->_startTicksFull;
  UpTicksToSeconds();
  mach_absolute_time();
  startTicks = self->_startTicks;
  v172 = UpTicksToSeconds();
  NSAppendPrintF();
  objc_storeStrong(v8, v275);
  v178 = GestaltCopyAnswer();
  v179 = WiFiCopyCurrentNetworkInfoEx();
  CFStringGetTypeID();
  v177 = CFDictionaryGetTypedValue();
  v11 = (v278 + 5);
  v274 = v278[5];
  sub_10001BB10(", Nm ", v6);
  NSAppendPrintF();
  objc_storeStrong(v11, v274);
  v12 = (v278 + 5);
  v273 = v278[5];
  sub_10001BB10(", WiFi ", v6);
  NSAppendPrintF();
  objc_storeStrong(v12, v273);
  v13 = (v278 + 5);
  v272 = v278[5];
  sub_10001BB10(", AID ", v6);
  v145 = [(RPCompanionLinkDaemon *)self _getAppleID:v177];
  NSAppendPrintF();
  objc_storeStrong(v13, v272);

  v175 = self->_homeKitSelfAccessory;
  home = [(HMAccessory *)v175 home];
  if (home)
  {
    v14 = (v278 + 5);
    v271 = v278[5];
    sub_10001BB10(", Hm ", v6);
    name = [home name];
    NSAppendPrintF();
    objc_storeStrong(v14, v271);
  }

  if (self->_prefHomeKitEnabled)
  {
    v15 = (v278 + 5);
    v270 = v278[5];
    homeKitLTPK = self->_homeKitLTPK;
    NSAppendPrintF();
    objc_storeStrong(v15, v270);
  }

  if (self->_prefCommunal)
  {
    v16 = (v278 + 5);
    v269 = v278[5];
    sub_10001BB10(", MeDev F ", v6);
    meDeviceFMFDeviceID = [(CUSystemMonitor *)self->_systemMonitor meDeviceFMFDeviceID];
    NSAppendPrintF();
    objc_storeStrong(v16, v269);

    v17 = (v278 + 5);
    v268 = v278[5];
    sub_10001BB10(" I ", v6);
    meDeviceIDSDeviceID = [(CUSystemMonitor *)self->_systemMonitor meDeviceIDSDeviceID];
    NSAppendPrintF();
    objc_storeStrong(v17, v268);

    v18 = (v278 + 5);
    v267 = v278[5];
    sub_10001BB10(" Nm ", v6);
    meDeviceName = [(CUSystemMonitor *)self->_systemMonitor meDeviceName];
    NSAppendPrintF();
    objc_storeStrong(v18, v267);
  }

  if (level <= 10 && self->_prefHomeKitEnabled)
  {
    v19 = (v278 + 5);
    v266 = v278[5];
    homeKitIRK = self->_homeKitIRK;
    homeKitRotatingID = self->_homeKitRotatingID;
    homeKitAuthTag = self->_homeKitAuthTag;
    NSAppendPrintF();
    objc_storeStrong(v19, v266);
LABEL_13:
    v20 = (v278 + 5);
    v265 = v278[5];
    discoveryNonceData = self->_discoveryNonceData;
    NSAppendPrintF();
    objc_storeStrong(v20, v265);
    goto LABEL_14;
  }

  if (level <= 10)
  {
    goto LABEL_13;
  }

LABEL_14:
  v21 = (v278 + 5);
  v264 = v278[5];
  NSAppendPrintF();
  objc_storeStrong(v21, v264);
  if (level >= 11)
  {
    v22 = 50;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v278 + 5);
  v263 = v278[5];
  localDeviceInfo = self->_localDeviceInfo;
  v153 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong(v23, v263);

  if (level >= 11)
  {
    v25 = 50;
  }

  else
  {
    v25 = 30;
  }

  v26 = self->_bleDiscovery;
  if (v26)
  {
    v27 = (v278 + 5);
    v262 = v278[5];
    v153 = CUDescriptionWithLevel();
    NSAppendPrintF();
    objc_storeStrong(v27, v262);
  }

  v28 = self->_bleNeedsCLinkAdvertiser;
  if (v28)
  {
    v29 = (v278 + 5);
    v261 = v278[5];
    v153 = CUDescriptionWithLevel();
    NSAppendPrintF();
    objc_storeStrong(v29, v261);
  }

  v30 = self->_bleNeedsCLinkAdvertiserAssertions;
  v31 = v30;
  if (v30)
  {
    v32 = (v278 + 5);
    v260 = v278[5];
    v153 = v30;
    NSAppendPrintF();
    objc_storeStrong(v32, v260);
  }

  v33 = self->_bleNeedsCLinkScanner;
  if (v33)
  {
    v34 = (v278 + 5);
    v259 = v278[5];
    v153 = CUDescriptionWithLevel();
    NSAppendPrintF();
    objc_storeStrong(v34, v259);
  }

  bleNeedsCLinkDevices = self->_bleNeedsCLinkDevices;
  v257[0] = _NSConcreteStackBlock;
  v257[1] = 3221225472;
  v257[2] = sub_10001DF6C;
  v257[3] = &unk_1001AAED0;
  v257[4] = &v277;
  v258 = v25;
  [(NSMutableDictionary *)bleNeedsCLinkDevices enumerateKeysAndObjectsUsingBlock:v257, v153];
  v36 = self->_bleNearbyActionV2Advertiser;
  v37 = v36;
  if (v36)
  {
    v38 = (v278 + 5);
    v256 = v278[5];
    v154 = v36;
    NSAppendPrintF();
    objc_storeStrong(v38, v256);
  }

  v39 = self->_bleNearbyActionV2AdvertiserAssertions;
  v40 = v39;
  if (v39)
  {
    v41 = (v278 + 5);
    v255 = v278[5];
    v154 = v39;
    NSAppendPrintF();
    objc_storeStrong(v41, v255);
  }

  v42 = self->_bleNearbyActionV2Discovery;
  v43 = v42;
  if (v42)
  {
    v44 = (v278 + 5);
    v254 = v278[5];
    v154 = v42;
    NSAppendPrintF();
    objc_storeStrong(v44, v254);
  }

  v45 = self->_bleNearbyInfoV2Discovery;
  v46 = v45;
  if (v45)
  {
    v47 = (v278 + 5);
    v253 = v278[5];
    v154 = v45;
    NSAppendPrintF();
    objc_storeStrong(v47, v253);
  }

  if (self->_bonjourAWDLAdvertiseForPairing)
  {
    v48 = (v278 + 5);
    v252 = v278[5];
    v154 = "yes";
    NSAppendPrintF();
    objc_storeStrong(v48, v252);
  }

  v49 = self->_bonjourAdvertiser;
  if (v49)
  {
    v50 = (v278 + 5);
    v251 = v278[5];
    v154 = CUDescriptionWithLevel();
    NSAppendPrintF();
    objc_storeStrong(v50, v251);
  }

  v51 = self->_bonjourAWDLAdvertiser;
  if (v51)
  {
    v52 = (v278 + 5);
    v250 = v278[5];
    v154 = CUDescriptionWithLevel();
    NSAppendPrintF();
    objc_storeStrong(v52, v250);
  }

  if (self->_bonjourAWDLAdvertiserForce)
  {
    v53 = (v278 + 5);
    v249 = v278[5];
    NSAppendPrintF();
    objc_storeStrong(v53, v249);
  }

  v54 = self->_bonjourBrowser;
  if (v54)
  {
    v55 = (v278 + 5);
    v248 = v278[5];
    v154 = CUDescriptionWithLevel();
    NSAppendPrintF();
    objc_storeStrong(v55, v248);
  }

  v56 = self->_bonjourBrowserAWDL;
  if (v56)
  {
    v57 = (v278 + 5);
    v247 = v278[5];
    v154 = CUDescriptionWithLevel();
    NSAppendPrintF();
    objc_storeStrong(v57, v247);
  }

  if (self->_bonjourBrowserAWDLForce)
  {
    v58 = (v278 + 5);
    v246 = v278[5];
    NSAppendPrintF();
    objc_storeStrong(v58, v246);
  }

  v242 = 0;
  v243 = &v242;
  v244 = 0x2020000000;
  v245 = 0;
  v59 = [(NSMutableSet *)self->_bonjourBrowserAWDLAssertions count:v154];
  v60 = v59;
  if (v59)
  {
    v61 = (v278 + 5);
    v241 = v278[5];
    v155 = v59;
    NSAppendPrintF();
    objc_storeStrong(v61, v241);
  }

  bonjourBrowserAWDLAssertions = self->_bonjourBrowserAWDLAssertions;
  v239[0] = _NSConcreteStackBlock;
  v239[1] = 3221225472;
  v239[2] = sub_10001DFF4;
  v239[3] = &unk_1001AAEF8;
  v240 = v25;
  v239[4] = &v277;
  v239[5] = &v242;
  v239[6] = v60;
  [(NSMutableSet *)bonjourBrowserAWDLAssertions enumerateObjectsUsingBlock:v239, v155];
  v63 = self->_btPipe;
  v64 = v63;
  if (v63)
  {
    v65 = (v278 + 5);
    v238 = v278[5];
    v156 = v63;
    NSAppendPrintF();
    objc_storeStrong(v65, v238);
  }

  v66 = self->_btPipeHighPriority;
  v67 = v66;
  if (v66)
  {
    v68 = (v278 + 5);
    v237 = v278[5];
    v156 = v66;
    NSAppendPrintF();
    objc_storeStrong(v68, v237);
  }

  v69 = self->_netLinkManager;
  if (v69)
  {
    v70 = (v278 + 5);
    v236 = v278[5];
    v156 = CUDescriptionWithLevel();
    NSAppendPrintF();
    objc_storeStrong(v70, v236);
  }

  v71 = self->_tcpServer;
  v72 = v71;
  if (v71)
  {
    v73 = (v278 + 5);
    v235 = v278[5];
    v74 = v71;
    if (objc_opt_respondsToSelector())
    {
      detailedDescription = [(CUTCPServer *)v74 detailedDescription];
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [(CUTCPServer *)v74 descriptionWithLevel:20];
      }

      else
      {
        NSPrintF();
      }
      detailedDescription = ;
    }

    v76 = detailedDescription;

    v156 = v76;
    NSAppendPrintF();
    objc_storeStrong(v73, v235);
  }

  if (self->_hidDaemon)
  {
    v234 = 0;
    NSAppendPrintF();
    v77 = 0;
  }

  else
  {
    v77 = 0;
  }

  if (self->_mediaControlDaemon)
  {
    v78 = v77;
    v233 = v77;
    NSAppendPrintF();
    v77 = v77;
  }

  if (self->_siriDaemon)
  {
    v79 = v77;
    v232 = v77;
    NSAppendPrintF();
    v77 = v77;
  }

  v176 = v77;
  if (v77)
  {
    v80 = (v278 + 5);
    v231 = v278[5];
    v156 = v176;
    NSAppendPrintF();
    objc_storeStrong(v80, v231);
  }

  v81 = self->_btPipeConnection != 0;
  v82 = [(NSMutableDictionary *)self->_bleClientConnections count];
  v83 = [(NSMutableDictionary *)self->_tcpClientConnections count];
  v84 = &v82[v81 + [(NSMutableDictionary *)self->_tcpOnDemandClientConnections count]+ v83];
  if (v84)
  {
    v85 = (v278 + 5);
    v230 = v278[5];
    v157 = v84;
    NSAppendPrintF();
    objc_storeStrong(v85, v230);
  }

  if (self->_btPipeConnection)
  {
    v86 = (v278 + 5);
    v229 = v278[5];
    v157 = CUDescriptionWithLevel();
    NSAppendPrintF();
    objc_storeStrong(v86, v229);
  }

  tcpClientConnections = self->_tcpClientConnections;
  v227[0] = _NSConcreteStackBlock;
  v227[1] = 3221225472;
  v227[2] = sub_10001E0DC;
  v227[3] = &unk_1001AAF20;
  v227[4] = &v277;
  v228 = v22;
  [(NSMutableDictionary *)tcpClientConnections enumerateKeysAndObjectsUsingBlock:v227, v157];
  tcpOnDemandClientConnections = self->_tcpOnDemandClientConnections;
  v225[0] = _NSConcreteStackBlock;
  v225[1] = 3221225472;
  v225[2] = sub_10001E148;
  v225[3] = &unk_1001AAF20;
  v225[4] = &v277;
  v226 = v22;
  [(NSMutableDictionary *)tcpOnDemandClientConnections enumerateKeysAndObjectsUsingBlock:v225];
  bleClientConnections = self->_bleClientConnections;
  v223[0] = _NSConcreteStackBlock;
  v223[1] = 3221225472;
  v223[2] = sub_10001E1B4;
  v223[3] = &unk_1001AAF20;
  v223[4] = &v277;
  v224 = v22;
  [(NSMutableDictionary *)bleClientConnections enumerateKeysAndObjectsUsingBlock:v223];
  v90 = [(NSMutableSet *)self->_bleServerConnections count];
  v91 = &v90[[(NSMutableSet *)self->_tcpServerConnections count]];
  if (v91)
  {
    v92 = (v278 + 5);
    v222 = v278[5];
    v158 = v91;
    NSAppendPrintF();
    objc_storeStrong(v92, v222);
  }

  v220 = 0u;
  v221 = 0u;
  v218 = 0u;
  v219 = 0u;
  v93 = self->_tcpServerConnections;
  v159 = [(NSMutableSet *)v93 countByEnumeratingWithState:&v218 objects:v285 count:16];
  if (v159)
  {
    v95 = *v219;
    do
    {
      for (i = 0; i != v159; i = i + 1)
      {
        if (*v219 != v95)
        {
          objc_enumerationMutation(v93);
        }

        v97 = *(*(&v218 + 1) + 8 * i);
        v98 = (v278 + 5);
        v217 = v278[5];
        v159 = CUDescriptionWithLevel();
        NSAppendPrintF();
        objc_storeStrong(v98, v217);
      }

      v159 = [(NSMutableSet *)v93 countByEnumeratingWithState:&v218 objects:v285 count:16, v159];
    }

    while (v159);
  }

  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  v99 = self->_bleServerConnections;
  v160 = [(NSMutableSet *)v99 countByEnumeratingWithState:&v213 objects:v284 count:16];
  if (v160)
  {
    v101 = *v214;
    do
    {
      for (j = 0; j != v160; j = j + 1)
      {
        if (*v214 != v101)
        {
          objc_enumerationMutation(v99);
        }

        v103 = *(*(&v213 + 1) + 8 * j);
        v104 = (v278 + 5);
        v212 = v278[5];
        v160 = CUDescriptionWithLevel();
        NSAppendPrintF();
        objc_storeStrong(v104, v212);
      }

      v160 = [(NSMutableSet *)v99 countByEnumeratingWithState:&v213 objects:v284 count:16, v160];
    }

    while (v160);
  }

  if (self->_personalCnx)
  {
    v105 = (v278 + 5);
    v211 = v278[5];
    v158 = CUDescriptionWithLevel();
    NSAppendPrintF();
    objc_storeStrong(v105, v211);
  }

  if (self->_stereoCnx)
  {
    v106 = (v278 + 5);
    v210 = v278[5];
    v158 = CUDescriptionWithLevel();
    NSAppendPrintF();
    objc_storeStrong(v106, v210);
  }

  v243[3] = 0;
  v107 = [(NSMutableDictionary *)self->_unauthDevices count];
  v108 = v107;
  if (v107)
  {
    v109 = (v278 + 5);
    v209 = v278[5];
    v161 = v107;
    NSAppendPrintF();
    objc_storeStrong(v109, v209);
  }

  unauthDevices = self->_unauthDevices;
  v207[0] = _NSConcreteStackBlock;
  v207[1] = 3221225472;
  v207[2] = sub_10001E220;
  v207[3] = &unk_1001AAF48;
  v208 = v22;
  v207[4] = &v277;
  v207[5] = &v242;
  v207[6] = v108;
  [(NSMutableDictionary *)unauthDevices enumerateKeysAndObjectsUsingBlock:v207, v161];
  v243[3] = 0;
  v111 = [(NSMutableDictionary *)self->_bleDevices count];
  v112 = v111;
  if (v111)
  {
    v113 = (v278 + 5);
    v206 = v278[5];
    v162 = v111;
    NSAppendPrintF();
    objc_storeStrong(v113, v206);
  }

  bleDevices = self->_bleDevices;
  v204[0] = _NSConcreteStackBlock;
  v204[1] = 3221225472;
  v204[2] = sub_10001E304;
  v204[3] = &unk_1001AAF48;
  v205 = v22;
  v204[4] = &v277;
  v204[5] = &v242;
  v204[6] = v112;
  [(NSMutableDictionary *)bleDevices enumerateKeysAndObjectsUsingBlock:v204, v162];
  v243[3] = 0;
  v115 = [(NSMutableDictionary *)self->_nearbyInfoV2Devices count];
  v116 = v115;
  if (v115)
  {
    v117 = (v278 + 5);
    v203 = v278[5];
    v163 = v115;
    NSAppendPrintF();
    objc_storeStrong(v117, v203);
  }

  nearbyInfoV2Devices = self->_nearbyInfoV2Devices;
  v201[0] = _NSConcreteStackBlock;
  v201[1] = 3221225472;
  v201[2] = sub_10001E3E8;
  v201[3] = &unk_1001AAF48;
  v202 = v22;
  v201[4] = &v277;
  v201[5] = &v242;
  v201[6] = v116;
  [(NSMutableDictionary *)nearbyInfoV2Devices enumerateKeysAndObjectsUsingBlock:v201, v163];
  v243[3] = 0;
  v119 = [(NSMutableDictionary *)self->_pairedDevices count];
  v120 = v119;
  if (v119)
  {
    v121 = (v278 + 5);
    v200 = v278[5];
    v164 = v119;
    NSAppendPrintF();
    objc_storeStrong(v121, v200);
  }

  pairedDevices = self->_pairedDevices;
  v198[0] = _NSConcreteStackBlock;
  v198[1] = 3221225472;
  v198[2] = sub_10001E4CC;
  v198[3] = &unk_1001AAF48;
  v199 = v22;
  v198[4] = &v277;
  v198[5] = &v242;
  v198[6] = v120;
  [(NSMutableDictionary *)pairedDevices enumerateKeysAndObjectsUsingBlock:v198, v164];
  v243[3] = 0;
  v123 = [(NSMutableDictionary *)self->_homeHubDevices count];
  v124 = v123;
  if (v123)
  {
    v125 = (v278 + 5);
    v197 = v278[5];
    v165 = v123;
    NSAppendPrintF();
    objc_storeStrong(v125, v197);
  }

  homeHubDevices = self->_homeHubDevices;
  v195[0] = _NSConcreteStackBlock;
  v195[1] = 3221225472;
  v195[2] = sub_10001E5B0;
  v195[3] = &unk_1001AAF48;
  v196 = v22;
  v195[4] = &v277;
  v195[5] = &v242;
  v195[6] = v124;
  [(NSMutableDictionary *)homeHubDevices enumerateKeysAndObjectsUsingBlock:v195, v165];
  if ([(NSMutableDictionary *)self->_uiNoteDevices count])
  {
    v127 = (v278 + 5);
    v194 = v278[5];
    v167 = [(NSMutableDictionary *)self->_uiNoteDevices count];
    NSAppendPrintF();
    objc_storeStrong(v127, v194);
    uiNoteDevices = self->_uiNoteDevices;
    v192[0] = _NSConcreteStackBlock;
    v192[1] = 3221225472;
    v192[2] = sub_10001E694;
    v192[3] = &unk_1001AAF70;
    v192[4] = &v277;
    v193 = v22;
    [(NSMutableDictionary *)uiNoteDevices enumerateKeysAndObjectsUsingBlock:v192, v167];
  }

  v129 = self->_uiNoteSession;
  v130 = v129;
  if (v129)
  {
    v131 = (v278 + 5);
    v191 = v278[5];
    v166 = v129;
    NSAppendPrintF();
    objc_storeStrong(v131, v191);
  }

  if ([(NSMutableDictionary *)self->_xpcMatchingMap count])
  {
    v132 = (v278 + 5);
    v190 = v278[5];
    v168 = [(NSMutableDictionary *)self->_xpcMatchingMap count];
    NSAppendPrintF();
    objc_storeStrong(v132, v190);
    xpcMatchingMap = self->_xpcMatchingMap;
    v189[0] = _NSConcreteStackBlock;
    v189[1] = 3221225472;
    v189[2] = sub_10001E700;
    v189[3] = &unk_1001AAF98;
    v189[4] = &v277;
    [(NSMutableDictionary *)xpcMatchingMap enumerateKeysAndObjectsUsingBlock:v189, v168];
  }

  v134 = mach_absolute_time();
  if ([(NSMutableDictionary *)self->_activeSessions count])
  {
    v135 = (v278 + 5);
    v188 = v278[5];
    v169 = [(NSMutableDictionary *)self->_activeSessions count];
    NSAppendPrintF();
    objc_storeStrong(v135, v188);
    activeSessions = self->_activeSessions;
    v187[0] = _NSConcreteStackBlock;
    v187[1] = 3221225472;
    v187[2] = sub_10001E7E4;
    v187[3] = &unk_1001AAFC0;
    v187[4] = &v277;
    v187[5] = v134;
    [(NSMutableDictionary *)activeSessions enumerateKeysAndObjectsUsingBlock:v187, v169];
  }

  if ([(NSMutableSet *)self->_xpcConnections count])
  {
    v137 = (v278 + 5);
    v186 = v278[5];
    v170 = [(NSMutableSet *)self->_xpcConnections count];
    NSAppendPrintF();
    objc_storeStrong(v137, v186);
    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v138 = self->_xpcConnections;
    v170 = [(NSMutableSet *)v138 countByEnumeratingWithState:&v182 objects:v283 count:16, v170];
    if (v170)
    {
      v140 = *v183;
      do
      {
        for (k = 0; k != v170; k = k + 1)
        {
          if (*v183 != v140)
          {
            objc_enumerationMutation(v138);
          }

          v142 = *(*(&v182 + 1) + 8 * k);
          v143 = (v278 + 5);
          v181 = v278[5];
          v171 = CUDescriptionWithLevel();
          NSAppendPrintF();
          objc_storeStrong(v143, v181);
        }

        v170 = [(NSMutableSet *)v138 countByEnumeratingWithState:&v182 objects:v283 count:16, v171];
      }

      while (v170);
    }
  }

  v4 = v278[5];

  _Block_object_dispose(&v242, 8);
  _Block_object_dispose(&v277, 8);

LABEL_127:

  return v4;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E920;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10010EC88();
  }

  DeviceClass = GestaltGetDeviceClass();
  self->_prefCommunal = sub_10001BA9C(DeviceClass);
  v4 = GestaltGetDeviceClass() == 3 || GestaltGetDeviceClass() == 11;
  self->_prefServerBonjourOpportunitistic = v4;
  self->_startTicks = mach_absolute_time();
  self->_startTicksFull = mach_continuous_time();
  RandomBytes();
  if (!self->_xpcListener)
  {
    v5 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.CompanionLink"];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v5;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener resume];
  }

  if (self->_coreDeviceChangedNotifier == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10001EC04;
    handler[3] = &unk_1001AAFE8;
    handler[4] = self;
    notify_register_dispatch("com.apple.dt.coredevice.devicePaired", &self->_coreDeviceChangedNotifier, dispatchQueue, handler);
  }

  self->_homeKitWaiting = 1;
  v8 = dispatch_time(0, 2000000000);
  v9 = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EC0C;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_after(v8, v9, block);
  if (!self->_nearfieldDaemon)
  {
    v10 = +[RPNearFieldDaemon sharedNearFieldDaemon];
    nearfieldDaemon = self->_nearfieldDaemon;
    self->_nearfieldDaemon = v10;

    [(RPNearFieldDaemon *)self->_nearfieldDaemon setDispatchQueue:self->_dispatchQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001EC94;
    v15[3] = &unk_1001AA970;
    v15[4] = self;
    [(RPNearFieldDaemon *)self->_nearfieldDaemon setTransactionChangedHandler:v15];
  }

  if (!self->_tvDeviceInfoManager && GestaltGetDeviceClass() == 4)
  {
    v12 = objc_alloc_init(RPAppleTVDeviceInfoManager);
    tvDeviceInfoManager = self->_tvDeviceInfoManager;
    self->_tvDeviceInfoManager = v12;

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001EC9C;
    v14[3] = &unk_1001AA970;
    v14[4] = self;
    [(RPAppleTVDeviceInfoManager *)self->_tvDeviceInfoManager setDeviceInfoChangedHandler:v14];
  }

  [(RPCompanionLinkDaemon *)self _startApplicationServiceMonitorIfNecessary];
  [(RPCompanionLinkDaemon *)self prefsChanged];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EDE0;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010ED04();
    }

    [(NSXPCListener *)self->_xpcListener invalidate];
    xpcListener = self->_xpcListener;
    self->_xpcListener = 0;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v4 = self->_xpcConnections;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v31;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v31 != v7)
          {
            objc_enumerationMutation(v4);
          }

          xpcCnx = [*(*(&v30 + 1) + 8 * i) xpcCnx];
          [xpcCnx invalidate];
        }

        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v6);
    }

    [(NSMutableDictionary *)self->_xpcMatchingMap removeAllObjects];
    xpcMatchingMap = self->_xpcMatchingMap;
    self->_xpcMatchingMap = 0;

    [(RPCompanionLinkDaemon *)self _bleServerEnsureStopped];
    [(RPCompanionLinkDaemon *)self _btPipeEnsureStopped];
    [(RPCompanionLinkDaemon *)self _clientEnsureStopped];
    coreDeviceChangedNotifier = self->_coreDeviceChangedNotifier;
    if (coreDeviceChangedNotifier != -1)
    {
      notify_cancel(coreDeviceChangedNotifier);
      self->_coreDeviceChangedNotifier = -1;
    }

    [(RPCompanionLinkDaemon *)self _duetSyncEnsureStopped];
    [(RPCompanionLinkDaemon *)self _serverEnsureStopped];
    [(RPCompanionLinkDaemon *)self _homeKitEnsureStopped];
    [(RPCompanionLinkDaemon *)self _hidEnsureStopped];
    [(RPCompanionLinkDaemon *)self _mediaControlEnsureStopped];
    [(RPCompanionLinkDaemon *)self _miscEnsureStopped];
    [(RPCompanionLinkDaemon *)self _siriEnsureStopped];
    [(RPCompanionLinkDaemon *)self _reachabilityEnsureStopped];
    [(RPCompanionLinkDaemon *)self _localDeviceCleanup];
    v12 = +[_TtC8rapportd27RPApplicationServiceMonitor shared];
    [v12 invalidate];

    [(NSMutableSet *)self->_needsAWDLNewPeers removeAllObjects];
    needsAWDLNewPeers = self->_needsAWDLNewPeers;
    self->_needsAWDLNewPeers = 0;

    [(NSMutableSet *)self->_needsAWDLSentToPeers removeAllObjects];
    needsAWDLSentToPeers = self->_needsAWDLSentToPeers;
    self->_needsAWDLSentToPeers = 0;

    [(NSMutableSet *)self->_needsAWDLRequestIdentifiers removeAllObjects];
    needsAWDLRequestIdentifiers = self->_needsAWDLRequestIdentifiers;
    self->_needsAWDLRequestIdentifiers = 0;

    needsAWDLRequestTimer = self->_needsAWDLRequestTimer;
    if (needsAWDLRequestTimer)
    {
      v17 = needsAWDLRequestTimer;
      dispatch_source_cancel(v17);
      v18 = self->_needsAWDLRequestTimer;
      self->_needsAWDLRequestTimer = 0;
    }

    [(NSMutableDictionary *)self->_pendingSessionStopsMap removeAllObjects];
    pendingSessionStopsMap = self->_pendingSessionStopsMap;
    self->_pendingSessionStopsMap = 0;

    [(NSMutableDictionary *)self->_registeredEvents removeAllObjects];
    registeredEvents = self->_registeredEvents;
    self->_registeredEvents = 0;

    [(NSMutableSet *)self->_registeredProfileIDs removeAllObjects];
    registeredProfileIDs = self->_registeredProfileIDs;
    self->_registeredProfileIDs = 0;

    [(NSMutableDictionary *)self->_registeredRequests removeAllObjects];
    registeredRequests = self->_registeredRequests;
    self->_registeredRequests = 0;

    [(CUSystemMonitor *)self->_systemMonitor invalidate];
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = 0;

    [(CBAdvertiser *)self->_cbAdvertiser invalidate];
    cbAdvertiser = self->_cbAdvertiser;
    self->_cbAdvertiser = 0;

    [(RPNearFieldDaemon *)self->_nearfieldDaemon setTransactionChangedHandler:0];
    nearfieldDaemon = self->_nearfieldDaemon;
    self->_nearfieldDaemon = 0;

    [(RPAppleTVDeviceInfoManager *)self->_tvDeviceInfoManager invalidate];
    tvDeviceInfoManager = self->_tvDeviceInfoManager;
    self->_tvDeviceInfoManager = 0;

    rbsProcessMonitor = self->_rbsProcessMonitor;
    if (rbsProcessMonitor)
    {
      [(RBSProcessMonitor *)rbsProcessMonitor invalidate];
      v28 = self->_rbsProcessMonitor;
      self->_rbsProcessMonitor = 0;
    }

    [(NSMutableSet *)self->_rbsPIDSet removeAllObjects];
    rbsPIDSet = self->_rbsPIDSet;
    self->_rbsPIDSet = 0;

    [(RPCompanionLinkDaemon *)self _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone && ![(NSMutableDictionary *)self->_bleClientConnections count]&& ![(NSMutableSet *)self->_bleServerConnections count]&& !self->_bonjourAdvertiser && !self->_bonjourBrowser && !self->_btAdvAddrMonitor && !self->_btPipeConnection && ![(NSMutableDictionary *)self->_tcpClientConnections count]&& ![(NSMutableDictionary *)self->_tcpOnDemandClientConnections count]&& ![(NSMutableSet *)self->_tcpServerConnections count]&& !self->_tcpServer && ![(NSMutableSet *)self->_xpcConnections count]&& !self->_xpcListener)
  {
    [(CUWiFiManager *)self->_wifiManager invalidate];
    wifiManager = self->_wifiManager;
    self->_wifiManager = 0;

    self->_invalidateDone = 1;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010ED20();
    }
  }
}

- (void)daemonInfoChanged:(unint64_t)changed
{
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ((changedCopy & 0x10) != 0)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010ED3C();
    }

    [(RPCompanionLinkDaemon *)self _btPipeEnsureStopped];
    [(RPCompanionLinkDaemon *)self _clientEnsureStopped];
    [(RPCompanionLinkDaemon *)self _serverEnsureStopped];
    [(RPCompanionLinkDaemon *)self _update];
    if ((changedCopy & 0x40) == 0)
    {
LABEL_3:
      if ((changedCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((changedCopy & 0x40) == 0)
  {
    goto LABEL_3;
  }

  [(RPCompanionLinkDaemon *)self _update];
  if ((changedCopy & 4) == 0)
  {
LABEL_4:
    if ((changedCopy & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_25:
  if (self->_deviceAuthTagStr)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010ED58();
    }

    deviceAuthTagStr = self->_deviceAuthTagStr;
    self->_deviceAuthTagStr = 0;
  }

  if (self->_deviceAWDLRandomID)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010ED74();
    }

    deviceAWDLRandomID = self->_deviceAWDLRandomID;
    self->_deviceAWDLRandomID = 0;
  }

  [(RPCompanionLinkDaemon *)self _update];
  if ((changedCopy & 1) == 0)
  {
LABEL_5:
    if ((changedCopy & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  [(RPCompanionLinkDaemon *)self _update];
  if ((changedCopy & 0x100) == 0)
  {
LABEL_6:
    if ((changedCopy & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  [(RPCompanionLinkDaemon *)self _clientBonjourResetReevaluationRateLimit];
  [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateUnauthDevices];
  [(RPCompanionLinkDaemon *)self _disconnectUnpairedDevices];
  if ((changedCopy & 0x200) == 0)
  {
LABEL_7:
    if ((changedCopy & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateUnauthDevices];
  [(RPCompanionLinkDaemon *)self _disconnectRemovedSharedHomeDevices];
  [(RPCompanionLinkDaemon *)self _startApplicationServiceMonitorIfNecessary];
  if ((changedCopy & 8) == 0)
  {
LABEL_8:
    if ((changedCopy & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateUnauthDevices];
  [(RPCompanionLinkDaemon *)self _forEachConnectionWithHandler:&stru_1001AB028];
  [(RPCompanionLinkDaemon *)self _startApplicationServiceMonitorIfNecessary];
  if ((changedCopy & 0x20) == 0)
  {
LABEL_9:
    if ((changedCopy & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_40:
  v7 = +[RPDaemon sharedDaemon];
  errorFlags = [v7 errorFlags];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_xpcConnections;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * i) updateErrorFlags:{errorFlags, v14}];
      }

      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  if ((changedCopy & 0x800) == 0)
  {
LABEL_10:
    if ((changedCopy & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_48:
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10010ED90();
  }

  [(RPCompanionLinkDaemon *)self _clientBLEFamilyDeviceReportChanges];
  if ((changedCopy & 0x4000) == 0)
  {
LABEL_11:
    if ((changedCopy & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_52:
  [(RPCompanionLinkDaemon *)self _update];
  if ((changedCopy & 0x40000) != 0)
  {
LABEL_12:
    [(RPCompanionLinkDaemon *)self _update];
  }

LABEL_13:
  if ((*&changedCopy & 0x18000) != 0)
  {
    self->_inDiscoverySession = (changedCopy & 0x8000) != 0;
    [(RPCompanionLinkDaemon *)self _update];
  }

  if ((changedCopy & 0x2000) != 0)
  {
    [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateUnauthDevices];
  }

  if ((changedCopy & 2) != 0)
  {
    [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateUnauthDevices];
    [(RPCompanionLinkDaemon *)self _startApplicationServiceMonitorIfNecessary];
  }
}

- (BOOL)diagnosticCommand:(id)command params:(id)params
{
  commandCopy = command;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([commandCopy rangeOfString:@"clAWDLa" options:9] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([commandCopy rangeOfString:@"clAWDLb" options:9] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([commandCopy rangeOfString:@"clUpdate" options:9] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([commandCopy isEqual:@"eval"])
        {
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_10010EF24();
          }

          [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateAllDevices];
          goto LABEL_18;
        }

        if ([commandCopy isEqual:@"hkbad"])
        {
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_10010EF08();
          }

          v10 = NSRandomData();
          homeKitLTPK = self->_homeKitLTPK;
          self->_homeKitLTPK = v10;

          v8 = 1;
          v12 = [(RPCompanionLinkDaemon *)self _discoveryNonceOrRotate:1];
          [(RPCompanionLinkDaemon *)self _homeKitUpdateInfo:1];
          [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateUnauthDevices];
LABEL_29:
          [(RPCompanionLinkDaemon *)self _update];
          goto LABEL_19;
        }

        if (![commandCopy isEqual:@"hkgood"])
        {
          if (![commandCopy isEqual:@"rotate"])
          {
            v8 = 0;
            goto LABEL_19;
          }

          v14 = NSRandomData();
          btAdvAddrData = self->_btAdvAddrData;
          self->_btAdvAddrData = v14;

          bytes = [(NSData *)self->_btAdvAddrData bytes];
          v16 = NSPrintF();
          btAdvAddrStr = self->_btAdvAddrStr;
          self->_btAdvAddrStr = v16;

          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_10010EEA4(&self->_btAdvAddrData);
          }

          deviceAuthTagStr = self->_deviceAuthTagStr;
          self->_deviceAuthTagStr = 0;

          v8 = 1;
          v19 = [(RPCompanionLinkDaemon *)self _discoveryNonceOrRotate:1, bytes];
          [(RPCompanionLinkDaemon *)self _homeKitUpdateInfo:1];
          goto LABEL_29;
        }

        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_10010EEEC();
        }

        v13 = self->_homeKitLTPK;
        self->_homeKitLTPK = 0;
      }

      else if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_10010EE88();
      }
    }

    else
    {
      bonjourBrowserAWDLForce = self->_bonjourBrowserAWDLForce;
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_10010EE30();
      }

      self->_bonjourBrowserAWDLForce = !bonjourBrowserAWDLForce;
    }
  }

  else
  {
    bonjourAWDLAdvertiserForce = self->_bonjourAWDLAdvertiserForce;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010EDD8();
    }

    self->_bonjourAWDLAdvertiserForce = !bonjourAWDLAdvertiserForce;
  }

  [(RPCompanionLinkDaemon *)self _update];
LABEL_18:
  v8 = 1;
LABEL_19:

  return v8;
}

- (void)prefsChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  DeviceClass = GestaltGetDeviceClass();
  v4 = DeviceClass;
  v5 = 1;
  if (DeviceClass != 3 && (DeviceClass - 1) >= 2)
  {
    v5 = DeviceClass == 100;
  }

  if (self->_prefAppSignIn != v5)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010EF40();
    }

    self->_prefAppSignIn = v5;
  }

  v6 = CFPrefs_GetInt64() != 0;
  if (self->_prefApplyNoiWiFiToUSB != v6)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010EF98();
    }

    self->_prefApplyNoiWiFiToUSB = v6;
  }

  v7 = 1;
  if (v4 != 3 && (v4 - 1) >= 2)
  {
    v7 = v4 == 100;
  }

  if (self->_prefCompanionAuthentication != v7)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010EFF0();
    }

    self->_prefCompanionAuthentication = v7;
  }

  v8 = CFPrefs_GetInt64() != 0;
  if (self->_prefBLEClient != v8)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F048();
    }

    self->_prefBLEClient = v8;
  }

  v9 = [NSNumber numberWithBool:CFPrefs_GetInt64() != 0];
  if (v9 != self->_prefMeDeviceIsMeOverride && ([(NSNumber *)v9 isEqual:?]& 1) == 0)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F0A0(&self->_prefMeDeviceIsMeOverride);
    }

    objc_storeStrong(&self->_prefMeDeviceIsMeOverride, v9);
  }

  v10 = CFPrefs_GetInt64() != 0;
  if (self->_prefBTPipeEnabled != v10)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F120();
    }

    self->_prefBTPipeEnabled = v10;
  }

  v11 = CFPrefs_GetInt64() != 0;
  if (self->_prefClientEnabled != v11)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F178();
    }

    self->_prefClientEnabled = v11;
  }

  v12 = CFPrefs_GetInt64() != 0;
  if (self->_prefCoreDevicePaired != v12)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F1D0();
    }

    self->_prefCoreDevicePaired = v12;
    if (v12)
    {
      [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateUnauthDevices];
    }
  }

  v13 = CFPrefs_GetInt64() != 0;
  if (self->_prefCoreDeviceEnabled != v13)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F228();
    }

    self->_prefCoreDeviceEnabled = v13;
  }

  v14 = CFPrefs_GetInt64() != 0;
  if (self->_prefHIDEnabled != v14)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F280();
    }

    self->_prefHIDEnabled = v14;
  }

  Int64 = CFPrefs_GetInt64();
  v16 = Int64 != 0;
  if (Int64 && !self->_prefHomeKitConfigured)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F2D8();
    }

    self->_prefHomeKitConfigured = v16;
  }

  v17 = CFPrefs_GetInt64() != 0;
  if (self->_prefHomeKitEnabled != v17)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F328();
    }

    self->_prefHomeKitEnabled = v17;
  }

  v18 = CFPrefs_GetInt64() != 0;
  if (self->_prefIgnoreCompanionLinkChecks != v18)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F380();
    }

    self->_prefIgnoreCompanionLinkChecks = v18;
  }

  v19 = CFPrefs_GetInt64() != 0;
  if (self->_prefIPEnabled != v19)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F3D8();
    }

    self->_prefIPEnabled = v19;
  }

  v20 = CFPrefs_GetInt64();
  if (v20 <= 0x3E8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 100;
  }

  prefMaxConnectionCount = self->_prefMaxConnectionCount;
  if (v21 != prefMaxConnectionCount)
  {
    if (dword_1001D3228 <= 40)
    {
      if (dword_1001D3228 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_88;
        }

        prefMaxConnectionCount = self->_prefMaxConnectionCount;
      }

      v30 = prefMaxConnectionCount;
      v31 = v21;
      LogPrintF();
    }

LABEL_88:
    self->_prefMaxConnectionCount = v21;
  }

  v23 = CFPrefs_GetInt64() != 0;
  if (self->_prefMediaControlEnabled != v23)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F430();
    }

    self->_prefMediaControlEnabled = v23;
  }

  v24 = CFPrefs_GetInt64() != 0;
  if (self->_prefServerBonjourAlways != v24)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F488();
    }

    self->_prefServerBonjourAlways = v24;
  }

  v25 = CFPrefs_GetInt64() != 0;
  if (self->_prefServerEnabled != v25)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F4E0();
    }

    self->_prefServerEnabled = v25;
  }

  v26 = CFPrefs_GetInt64() != 0;
  if (self->_prefSiriEnabled != v26)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F538();
    }

    self->_prefSiriEnabled = v26;
  }

  v27 = CFPrefs_GetInt64() != 0;
  if (self->_prefTouchEnabled != v27)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F590();
    }

    self->_prefTouchEnabled = v27;
  }

  v28 = CFPrefs_GetInt64() != 0;
  if (self->_prefUINotesEnabled != v28)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F5E8();
    }

    self->_prefUINotesEnabled = v28;
  }

  v29 = CFPrefs_GetInt64() != 0;
  if (self->_prefUseTargetAuthTag != v29)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F640();
    }

    self->_prefUseTargetAuthTag = v29;
  }

  [(RPCompanionLinkDaemon *)self _update:v30];
}

- (BOOL)addXPCMatchingToken:(unint64_t)token event:(id)event handler:(id)handler
{
  eventCopy = event;
  handlerCopy = handler;
  v10 = objc_alloc_init(RPXPCMatchingEntry);
  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  if (![v11 isEqual:@"discovery"])
  {
    if ([v11 isEqual:@"server"] && (objc_msgSend(v12, "isEqual:", @"_companion-link._tcp") & 1) == 0 && (objc_msgSend(v12, "isEqual:", @"_rdlink._tcp") & 1) == 0 && objc_msgSend(v12, "length"))
    {
      v13 = objc_alloc_init(RPServer);
      [v13 setDispatchQueue:self->_dispatchQueue];
      [v13 setServiceType:v12];
      [(RPCompanionLinkDevice *)self->_localDeviceInfo setServersChangedState:6];
      [(RPXPCMatchingEntry *)v10 setServer:v13];

      goto LABEL_11;
    }

LABEL_18:
    v18 = 0;
    goto LABEL_21;
  }

  if (!self->_prefAppSignIn || ![v12 isEqual:@"RPUserNotificationAppSignIn"])
  {
    if ([v12 isEqual:@"_companion-link._tcp"] & 1) != 0 || self->_prefCompanionAuthentication && (objc_msgSend(v12, "isEqual:", @"com.apple.CompanionAuthentication"))
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  [(RPXPCMatchingEntry *)v10 setAppSignIn:1];
LABEL_11:
  [(RPXPCMatchingEntry *)v10 setEvent:eventCopy];
  [(RPXPCMatchingEntry *)v10 setHandler:handlerCopy];
  [(RPXPCMatchingEntry *)v10 setToken:token];
  xpcMatchingMap = self->_xpcMatchingMap;
  if (!xpcMatchingMap)
  {
    v15 = objc_alloc_init(NSMutableDictionary);
    v16 = self->_xpcMatchingMap;
    self->_xpcMatchingMap = v15;

    xpcMatchingMap = self->_xpcMatchingMap;
  }

  v17 = [NSNumber numberWithUnsignedLongLong:token];
  [(NSMutableDictionary *)xpcMatchingMap setObject:v10 forKeyedSubscript:v17];

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    v20 = eventCopy;
    tokenCopy = token;
    LogPrintF();
  }

  [(RPCompanionLinkDaemon *)self _reportXPCMatchingDiscoveryCLink:v20];
  [(RPCompanionLinkDaemon *)self _updateForXPCClientChange];
  v18 = 1;
LABEL_21:

  return v18;
}

- (BOOL)removeXPCMatchingToken:(unint64_t)token
{
  v4 = [NSNumber numberWithUnsignedLongLong:?];
  v5 = [(NSMutableDictionary *)self->_xpcMatchingMap objectForKeyedSubscript:v4];
  if (v5)
  {
    [(NSMutableDictionary *)self->_xpcMatchingMap setObject:0 forKeyedSubscript:v4];
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F698(v5);
    }

    server = [v5 server];
    if (server)
    {
      [(RPCompanionLinkDevice *)self->_localDeviceInfo setServersChangedState:6];
    }

    [(RPCompanionLinkDaemon *)self _updateForXPCClientChange];
  }

  return v5 != 0;
}

- (void)_reportXPCMatchingDiscoveryUINoteDevice:(id)device
{
  deviceCopy = device;
  effectiveIdentifier = [deviceCopy effectiveIdentifier];
  v6 = effectiveIdentifier;
  v7 = @"?";
  if (effectiveIdentifier)
  {
    v7 = effectiveIdentifier;
  }

  v8 = v7;

  xpcMatchingMap = self->_xpcMatchingMap;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100020848;
  v11[3] = &unk_1001AB078;
  v11[4] = v8;
  v12 = deviceCopy;
  v10 = deviceCopy;
  [(NSMutableDictionary *)xpcMatchingMap enumerateKeysAndObjectsUsingBlock:v11];
}

- (void)_reportXPCMatchingDiscoveryCompanionAuthenticationDevice:(id)device
{
  deviceCopy = device;
  effectiveIdentifier = [deviceCopy effectiveIdentifier];
  v6 = effectiveIdentifier;
  v7 = @"?";
  if (effectiveIdentifier)
  {
    v7 = effectiveIdentifier;
  }

  v8 = v7;

  xpcMatchingMap = self->_xpcMatchingMap;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100020ADC;
  v11[3] = &unk_1001AB078;
  v11[4] = v8;
  v12 = deviceCopy;
  v10 = deviceCopy;
  [(NSMutableDictionary *)xpcMatchingMap enumerateKeysAndObjectsUsingBlock:v11];
}

- (void)_updateForXPCServerChange
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_xpcConnections;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v2);
        }

        server = [*(*(&v14 + 1) + 8 * i) server];
        v10 = server;
        if (server)
        {
          if ((~[server controlFlags] & 0x404) == 0)
          {
            passwordType = [v10 passwordType];
            if (passwordType > 4 || ((1 << passwordType) & 0x19) == 0)
            {
              v6 = 1;
            }
          }

          v5 |= [v10 advertiseDeviceName];
        }
      }

      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
    v6 = 0;
  }

  if (self->_serverBonjourInfraPairing != (v6 & 1))
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F998();
    }

    self->_serverBonjourInfraPairing = v6 & 1;
    [(RPCompanionLinkDaemon *)self _update];
  }

  if (self->_bonjourAWDLAdvertiseForPairing != (v5 & 1))
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010F9F0();
    }

    self->_bonjourAWDLAdvertiseForPairing = v5 & 1;
    [(RPCompanionLinkDaemon *)self _update];
  }
}

- (void)_addApplicationPID:(id)d
{
  dCopy = d;
  if (([(NSMutableSet *)self->_rbsPIDSet containsObject:?]& 1) == 0)
  {
    rbsPIDSet = self->_rbsPIDSet;
    if (!rbsPIDSet)
    {
      v5 = +[NSMutableSet set];
      v6 = self->_rbsPIDSet;
      self->_rbsPIDSet = v5;

      rbsPIDSet = self->_rbsPIDSet;
    }

    [(NSMutableSet *)rbsPIDSet addObject:dCopy];
    [(RPCompanionLinkDaemon *)self _updateRBSProcessMonitor];
  }
}

- (void)_removeApplicationPID:(id)d
{
  dCopy = d;
  v4 = [(NSMutableSet *)self->_rbsPIDSet containsObject:dCopy];
  v5 = dCopy;
  if (v4)
  {
    [(NSMutableSet *)self->_rbsPIDSet removeObject:dCopy];
    if ([(NSMutableSet *)self->_rbsPIDSet count])
    {
      [(RPCompanionLinkDaemon *)self _updateRBSProcessMonitor];
    }

    else
    {
      if (self->_rbsProcessMonitor)
      {
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_10010FA48();
        }

        [(RBSProcessMonitor *)self->_rbsProcessMonitor invalidate];
        rbsProcessMonitor = self->_rbsProcessMonitor;
        self->_rbsProcessMonitor = 0;
      }

      rbsPIDSet = self->_rbsPIDSet;
      self->_rbsPIDSet = 0;
    }

    v5 = dCopy;
  }
}

- (void)_updateRBSProcessMonitor
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002120C;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_clientEnsureStopped
{
  [(RPCompanionLinkDaemon *)self _clientBLEDiscoveryEnsureStopped];
  [(RPCompanionLinkDaemon *)self _clientBLEActionDiscoveryEnsureStopped];
  [(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkAdvertiserEnsureStopped];
  [(RPCompanionLinkDaemon *)self _clientBLENearbyActionV2AdvertiserEnsureStopped];
  [(RPCompanionLinkDaemon *)self _clientBonjourAWDLBrowserEnsureStopped];
  [(RPCompanionLinkDaemon *)self _clientBonjourEnsureStopped];
  [(NSMutableDictionary *)self->_bleClientConnections enumerateKeysAndObjectsUsingBlock:&stru_1001AB1E8];
  [(NSMutableDictionary *)self->_tcpClientConnections enumerateKeysAndObjectsUsingBlock:&stru_1001AB208];
  tcpOnDemandClientConnections = self->_tcpOnDemandClientConnections;

  [(NSMutableDictionary *)tcpOnDemandClientConnections enumerateKeysAndObjectsUsingBlock:&stru_1001AB228];
}

- (void)_clientBLEActionDiscoveryEnsureStopped
{
  if (self->_bleActionDiscovery)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010FC1C(self);
    }

    [(SFDeviceDiscovery *)self->_bleActionDiscovery invalidate];
    bleActionDiscovery = self->_bleActionDiscovery;
    self->_bleActionDiscovery = 0;

    ++self->_bleActionDiscoveryID;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    allKeys = [(NSMutableDictionary *)self->_bleDevices allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          v9 = [(NSMutableDictionary *)self->_bleDevices objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
          v10 = v9;
          if (v9)
          {
            bleDevice = [v9 bleDevice];
            [(RPCompanionLinkDaemon *)self _clientBLEDiscoveryDeviceLost:bleDevice force:1 deviceFlags:2];
          }
        }

        v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (void)_clientBLEDiscoveryEnsureStopped
{
  if (self->_bleDiscovery)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010FDE4(self);
    }

    [(SFDeviceDiscovery *)self->_bleDiscovery invalidate];
    bleDiscovery = self->_bleDiscovery;
    self->_bleDiscovery = 0;

    ++self->_bleDiscoveryID;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    allKeys = [(NSMutableDictionary *)self->_bleDevices allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          v9 = [(NSMutableDictionary *)self->_bleDevices objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];
          v10 = v9;
          if (v9)
          {
            bleDevice = [v9 bleDevice];
            [(RPCompanionLinkDaemon *)self _clientBLEDiscoveryDeviceLost:bleDevice force:1 deviceFlags:1];
          }
        }

        v6 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    pendingLostBLEDevicesTimer = self->_pendingLostBLEDevicesTimer;
    if (pendingLostBLEDevicesTimer)
    {
      dispatch_source_cancel(pendingLostBLEDevicesTimer);
      v13 = self->_pendingLostBLEDevicesTimer;
      self->_pendingLostBLEDevicesTimer = 0;
    }

    [(CUUserNotificationSession *)self->_uiNoteSession invalidate];
    uiNoteSession = self->_uiNoteSession;
    self->_uiNoteSession = 0;

    [(NSMutableDictionary *)self->_uiNoteDevices removeAllObjects];
    uiNoteDevices = self->_uiNoteDevices;
    self->_uiNoteDevices = 0;
  }
}

- (void)_clientBLEDiscoveryDeviceLost:(id)lost force:(BOOL)force deviceFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  lostCopy = lost;
  identifier = [lostCopy identifier];
  uUIDString = [identifier UUIDString];

  idsIdentifier = [lostCopy idsIdentifier];
  v11 = idsIdentifier;
  if (idsIdentifier)
  {
    v12 = idsIdentifier;
  }

  else
  {
    v12 = uUIDString;
  }

  v13 = v12;
  if (v13)
  {
    v14 = [(NSMutableDictionary *)self->_bleDevices objectForKeyedSubscript:v13];
    if (!v14 && uUIDString)
    {
      v14 = [(NSMutableDictionary *)self->_bleDevices objectForKeyedSubscript:uUIDString];
    }

    if (!v14)
    {
      goto LABEL_40;
    }

    if (!force)
    {
      if ([lostCopy isBLEDeviceReplaced])
      {
        [v14 setDeviceFlags:{objc_msgSend(v14, "deviceFlags") & ~flagsCopy}];
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_1001101B8();
        }

        bleDevice = [v14 bleDevice];
        [bleDevice setIsBLEDeviceReplaced:1];

        [(RPCompanionLinkDaemon *)self _schedulePendingLostBLEDeviceTimer];
        goto LABEL_40;
      }

      if (!v11 || ([lostCopy deviceFlags] & 0x8000) != 0)
      {
        bleDevice2 = [v14 bleDevice];
        identifier2 = [bleDevice2 identifier];
        uUIDString2 = [identifier2 UUIDString];

        if (([uUIDString isEqual:uUIDString2] & 1) == 0)
        {
          sub_100110114(uUIDString2);
LABEL_40:

          goto LABEL_41;
        }
      }
    }

    [v14 setDeviceFlags:{objc_msgSend(v14, "deviceFlags") & ~flagsCopy}];
    statusFlags = [v14 statusFlags];
    _nearbyActionDeviceActionTypes = [(RPCompanionLinkDaemon *)self _nearbyActionDeviceActionTypes];
    if (([v14 deviceFlags] & 7) != 0)
    {
      if (([v14 deviceFlags] & 2) != 0 || (_nearbyActionDeviceActionTypes & statusFlags) == 0)
      {
        if (dword_1001D3228 <= 10 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100110258();
        }
      }

      else
      {
        [v14 setStatusFlags:{objc_msgSend(v14, "statusFlags") & ~_nearbyActionDeviceActionTypes}];
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_1001101F8();
        }

        [(RPCompanionLinkDaemon *)self _clientReportLostDevice:v14];
      }
    }

    else
    {
      if (uUIDString)
      {
        [(NSMutableDictionary *)self->_bleDevices setObject:0 forKeyedSubscript:uUIDString];
      }

      if (v11)
      {
        [(NSMutableDictionary *)self->_bleDevices setObject:0 forKeyedSubscript:v11];
      }

      [v14 removeSFDevice:lostCopy];
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001102B8();
      }

      [(RPCompanionLinkDaemon *)self _clientReportLostDevice:v14];
      if ([(RPCompanionLinkDevice *)self->_bleNearbyActionV2Device isEqualToDevice:v14])
      {
        bleNearbyActionV2Device = self->_bleNearbyActionV2Device;
        self->_bleNearbyActionV2Device = 0;

        [(RPCompanionLinkDaemon *)self _clientBLENearbyActionV2AdvertiserRestart];
      }

      if ([(RPCompanionLinkDevice *)self->_bleNeedsCLinkDevice isEqualToDevice:v14])
      {
        bleNeedsCLinkDevice = self->_bleNeedsCLinkDevice;
        self->_bleNeedsCLinkDevice = 0;

        [(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkAdvertiserRestart];
      }
    }

    goto LABEL_40;
  }

  sub_100110330();
LABEL_41:
}

- (void)_clientBLEDiscoveryDeviceLastSeenChange:(id)change
{
  changeCopy = change;
  identifier = [changeCopy identifier];
  uUIDString = [identifier UUIDString];

  idsIdentifier = [changeCopy idsIdentifier];
  v7 = idsIdentifier;
  if (idsIdentifier)
  {
    v8 = idsIdentifier;
  }

  else
  {
    v8 = uUIDString;
  }

  v9 = [(NSMutableDictionary *)self->_bleDevices objectForKeyedSubscript:v8];
  v10 = v9;
  if (v9)
  {
    [v9 updateWithSFDevice:changeCopy];
    if (dword_1001D3228 < 11 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001103A8();
    }
  }
}

- (void)_schedulePendingLostBLEDeviceTimer
{
  if (!self->_pendingLostBLEDevicesTimer)
  {
    handler[7] = v2;
    handler[8] = v3;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001103E8();
    }

    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    pendingLostBLEDevicesTimer = self->_pendingLostBLEDevicesTimer;
    self->_pendingLostBLEDevicesTimer = v5;

    v7 = self->_pendingLostBLEDevicesTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100022D8C;
    handler[3] = &unk_1001AA970;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    v8 = self->_pendingLostBLEDevicesTimer;
    CUDispatchTimerSet();
    dispatch_activate(self->_pendingLostBLEDevicesTimer);
  }
}

- (void)_processPendingLostBLEDevices
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_bleDevices allValues];
  v4 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        bleDevice = [v8 bleDevice];
        isBLEDeviceReplaced = [bleDevice isBLEDeviceReplaced];

        if (isBLEDeviceReplaced)
        {
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_100110404();
          }

          bleDevice2 = [v8 bleDevice];
          [bleDevice2 setIsBLEDeviceReplaced:0];

          bleDevice3 = [v8 bleDevice];
          [(RPCompanionLinkDaemon *)self _clientBLEDiscoveryDeviceLost:bleDevice3 force:0 deviceFlags:0];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v13 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
      v5 = v13;
    }

    while (v13);
  }
}

- (void)_serverNearbyInfoV2DeviceFound:(id)found deviceFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  foundCopy = found;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  btAddressData = [foundCopy btAddressData];
  if (btAddressData)
  {
    nearbyInfoV2TempAuthTagData = [foundCopy nearbyInfoV2TempAuthTagData];
    if (nearbyInfoV2TempAuthTagData)
    {
      v9 = +[RPIdentityDaemon sharedIdentityDaemon];
      v10 = [v9 resolveIdentityForTempAuthTagData:nearbyInfoV2TempAuthTagData bluetoothAddressData:btAddressData];

      if (v10)
      {
        idsDeviceID = [v10 idsDeviceID];
        if (idsDeviceID)
        {
          v12 = [(NSMutableDictionary *)self->_nearbyInfoV2Devices objectForKeyedSubscript:idsDeviceID];
          if (v12)
          {
            v13 = v12;
            v14 = [v12 updateWithCBDevice:foundCopy];
            if (v14)
            {
              [(RPCompanionLinkDaemon *)self _clientReportChangedDevice:v13 changes:v14];
            }
          }

          else
          {
            if (dword_1001D3228 < 31 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_100110444(foundCopy);
            }

            v13 = objc_alloc_init(RPCompanionLinkDevice);
            [v13 setDeviceFlags:{objc_msgSend(v13, "deviceFlags") | flagsCopy}];
            [v13 updateWithIdentity:v10];
            [v13 updateWithCBDevice:foundCopy];
            [v13 setStatusFlags:{objc_msgSend(v13, "statusFlags") | 0x200}];
            nearbyInfoV2Devices = self->_nearbyInfoV2Devices;
            if (!nearbyInfoV2Devices)
            {
              v27 = objc_alloc_init(NSMutableDictionary);
              v28 = self->_nearbyInfoV2Devices;
              self->_nearbyInfoV2Devices = v27;

              nearbyInfoV2Devices = self->_nearbyInfoV2Devices;
            }

            [(NSMutableDictionary *)nearbyInfoV2Devices setObject:v13 forKeyedSubscript:idsDeviceID];
            [(RPCompanionLinkDaemon *)self _clientReportFoundDevice:v13];
            if (dword_1001D3228 <= 10 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_1001104DC();
            }
          }
        }

        else
        {
          sub_10011053C();
        }
      }

      else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001105B4();
      }
    }

    else
    {
      v29 = btAddressData;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      obj = [(NSMutableDictionary *)self->_nearbyInfoV2Devices allKeys];
      v15 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v15)
      {
        v16 = v15;
        v31 = *v33;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v33 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v32 + 1) + 8 * i);
            selfCopy = self;
            v20 = [(NSMutableDictionary *)self->_nearbyInfoV2Devices objectForKeyedSubscript:v18];
            cbDevice = [v20 cbDevice];
            identifier = [cbDevice identifier];
            v23 = foundCopy;
            identifier2 = [foundCopy identifier];
            v25 = [identifier isEqualToString:identifier2];

            if (v25)
            {
              if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
              {
                sub_1001105F4();
              }

              foundCopy = v23;
              [(RPCompanionLinkDaemon *)selfCopy _serverNearbyInfoV2DeviceLost:v23 idsIdentifier:v18 force:1 deviceFlags:4];

              goto LABEL_25;
            }

            foundCopy = v23;
            self = selfCopy;
          }

          v16 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_25:

      nearbyInfoV2TempAuthTagData = 0;
      btAddressData = v29;
    }
  }
}

- (void)_serverNearbyInfoV2DeviceLost:(id)lost idsIdentifier:(id)identifier force:(BOOL)force deviceFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  lostCopy = lost;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [lostCopy identifier];
  idsDeviceID = [lostCopy idsDeviceID];
  v13 = idsDeviceID;
  if (idsDeviceID)
  {
    v14 = idsDeviceID;
  }

  else
  {
    v14 = identifierCopy;
  }

  idsDeviceID2 = v14;

  if (!idsDeviceID2)
  {
    btAddressData = [lostCopy btAddressData];
    nearbyInfoV2TempAuthTagData = [lostCopy nearbyInfoV2TempAuthTagData];
    v18 = nearbyInfoV2TempAuthTagData;
    if (btAddressData && nearbyInfoV2TempAuthTagData)
    {
      v19 = +[RPIdentityDaemon sharedIdentityDaemon];
      v20 = [v19 resolveIdentityForTempAuthTagData:v18 bluetoothAddressData:btAddressData];

      idsDeviceID2 = [v20 idsDeviceID];
    }
  }

  if (idsDeviceID2)
  {
    v21 = idsDeviceID2;
  }

  else
  {
    v21 = identifier;
  }

  v22 = v21;
  if (v22)
  {
    v23 = [(NSMutableDictionary *)self->_nearbyInfoV2Devices objectForKeyedSubscript:v22];
    if (v23)
    {
      v24 = 1;
    }

    else
    {
      v24 = identifier == 0;
    }

    if (!v24)
    {
      v23 = [(NSMutableDictionary *)self->_nearbyInfoV2Devices objectForKeyedSubscript:identifier];
    }

    if (!v23)
    {
      goto LABEL_27;
    }

    [v23 setDeviceFlags:{objc_msgSend(v23, "deviceFlags") & ~flagsCopy}];
    if (!force)
    {
      cbDevice = [v23 cbDevice];
      stableIdentifier = [cbDevice stableIdentifier];

      if (([v22 isEqual:stableIdentifier] & 1) == 0)
      {
        sub_100110628(stableIdentifier);
LABEL_27:

        goto LABEL_28;
      }
    }

    if (([v23 deviceFlags] & 7) == 0)
    {
      [(NSMutableDictionary *)self->_nearbyInfoV2Devices setObject:0 forKeyedSubscript:v22];
      [v23 removeCBDevice:lostCopy];
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001106C4();
      }

      [(RPCompanionLinkDaemon *)self _clientReportLostDevice:v23];
    }

    goto LABEL_27;
  }

  sub_10011073C();
LABEL_28:
}

- (void)_clientBLEFamilyDeviceReportChanges
{
  selfCopy = self;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allKeys = [(NSMutableDictionary *)self->_bleDevices allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    v19 = *v22;
    v20 = allKeys;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = [(NSMutableDictionary *)selfCopy->_bleDevices objectForKeyedSubscript:*(*(&v21 + 1) + 8 * v7), v19, v20];
        v9 = v8;
        if (v8)
        {
          if (([v8 deviceFlags] & 2) != 0)
          {
            idsDeviceIdentifier = [v9 idsDeviceIdentifier];
            if (idsDeviceIdentifier)
            {
              v11 = idsDeviceIdentifier;
              v12 = +[RPCloudDaemon sharedCloudDaemon];
              idsFamilyEndpointMap = [v12 idsFamilyEndpointMap];
              v14 = [idsFamilyEndpointMap objectForKeyedSubscript:v11];
              [v14 familyEndpointData];
              v16 = v15 = selfCopy;
              v17 = [v9 updateWithFamilyEndpoint:v16];

              selfCopy = v15;
              if (v17)
              {
                if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
                {
                  sub_1001107B4();
                }

                [(RPCompanionLinkDaemon *)v15 _clientReportChangedDevice:v9 changes:v17];
              }

              v6 = v19;
              allKeys = v20;
            }
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v18 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
      v5 = v18;
    }

    while (v18);
  }
}

- (void)_clientBLENeedsCLinkAdvertiserEnsureStarted
{
  if (!self->_bleNeedsCLinkAdvertiser)
  {
    v11[9] = v2;
    v11[10] = v3;
    _clientBLENeedsCLinkTargetDevice = [(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkTargetDevice];
    v6 = _clientBLENeedsCLinkTargetDevice;
    if (self->_enableAWDLGuestDiscovery || _clientBLENeedsCLinkTargetDevice)
    {
      objc_storeStrong(&self->_bleNeedsCLinkDevice, _clientBLENeedsCLinkTargetDevice);
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100110848();
      }

      v7 = objc_alloc_init(off_1001D32A0());
      bleNeedsCLinkAdvertiser = self->_bleNeedsCLinkAdvertiser;
      self->_bleNeedsCLinkAdvertiser = v7;

      [(SFService *)self->_bleNeedsCLinkAdvertiser setAdvertiseRate:60];
      [(SFService *)self->_bleNeedsCLinkAdvertiser setDeviceActionType:51];
      [(SFService *)self->_bleNeedsCLinkAdvertiser setDispatchQueue:self->_dispatchQueue];
      [(SFService *)self->_bleNeedsCLinkAdvertiser setIdentifier:@"bb6e0a35-ca03-4151-8feb-f6bcae4d9a41"];
      [(SFService *)self->_bleNeedsCLinkAdvertiser setLabel:@"CLink"];
      [(SFService *)self->_bleNeedsCLinkAdvertiser setNeedsKeyboard:1];
      [(SFService *)self->_bleNeedsCLinkAdvertiser setPairSetupDisabled:1];
      [(SFService *)self->_bleNeedsCLinkAdvertiser setOverrideScreenOff:self->_bleNeedsCLinkAdvertiserScreenOff];
      bleTargetData = [(RPCompanionLinkDevice *)self->_bleNeedsCLinkDevice bleTargetData];
      [(SFService *)self->_bleNeedsCLinkAdvertiser setTargetAuthTag:bleTargetData];

      v10 = self->_bleNeedsCLinkAdvertiser;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000239A8;
      v11[3] = &unk_1001AB2C8;
      v11[4] = self;
      [(SFService *)v10 activateWithCompletion:v11];
      [(RPCompanionLinkDaemon *)self _clientSendNeedsAWDLOverWiFi:1];
    }

    else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011082C();
    }
  }
}

- (void)_clientBLENeedsCLinkAdvertiserUpdate
{
  bleNeedsCLinkAdvertiser = self->_bleNeedsCLinkAdvertiser;
  if (!bleNeedsCLinkAdvertiser || !self->_bleNeedsCLinkDevice)
  {
    return;
  }

  targetAuthTag = [(SFService *)bleNeedsCLinkAdvertiser targetAuthTag];
  bleTargetData = [(RPCompanionLinkDevice *)self->_bleNeedsCLinkDevice bleTargetData];
  v10 = targetAuthTag;
  v6 = bleTargetData;
  if (v10 != v6)
  {
    if ((v10 != 0) != (v6 == 0))
    {
      v7 = [v10 isEqual:v6];

      if (v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
      [(SFService *)self->_bleNeedsCLinkAdvertiser setTargetAuthTag:v6, v10, v6];
    }

    else
    {
      [(SFService *)self->_bleNeedsCLinkAdvertiser setTargetAuthTag:v6, v8, v9];
    }

    goto LABEL_15;
  }

LABEL_15:
}

- (void)_clientBLENeedsCLinkAdvertiserRestart
{
  p_bleNeedsCLinkDevice = &self->_bleNeedsCLinkDevice;
  bleNeedsCLinkDevice = self->_bleNeedsCLinkDevice;
  self->_bleNeedsCLinkDevice = 0;

  if ([(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkAdvertiserShouldRun])
  {
    _clientBLENeedsCLinkTargetDevice = [(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkTargetDevice];
    v6 = self->_bleNeedsCLinkDevice;
    self->_bleNeedsCLinkDevice = _clientBLENeedsCLinkTargetDevice;

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100110918(p_bleNeedsCLinkDevice);
    }

    if (self->_bleNeedsCLinkAdvertiser)
    {
      bleTargetData = [(RPCompanionLinkDevice *)self->_bleNeedsCLinkDevice bleTargetData];
      [(SFService *)self->_bleNeedsCLinkAdvertiser setTargetAuthTag:bleTargetData];

      v8 = self->_bleNeedsCLinkAdvertiserAssertions;
      v9 = v8;
      if (v8)
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v17;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v16 + 1) + 8 * i);
              v15 = +[RPAssertionTracker sharedTracker];
              [v15 startTracking:v14];
            }

            v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
          }

          while (v11);
        }
      }
    }

    else
    {

      [(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkAdvertiserEnsureStarted];
    }
  }

  else
  {

    [(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkAdvertiserEnsureStopped];
  }
}

- (id)_clientBLENeedsCLinkTargetDevice
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_xpcConnections;
  daemonDevice3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (daemonDevice3)
  {
    v4 = *v15;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v15 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v6 = *(*(&v14 + 1) + 8 * v5);
      if ([v6 needsCLink])
      {
        netCnx = [v6 netCnx];
        state = [netCnx state];

        if (state != 1)
        {
          daemonDevice = [v6 daemonDevice];

          if (daemonDevice)
          {
            daemonDevice2 = [v6 daemonDevice];
            statusFlags = [daemonDevice2 statusFlags];

            if ((statusFlags & 2) != 0)
            {
              break;
            }
          }
        }
      }

      if (daemonDevice3 == ++v5)
      {
        daemonDevice3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (daemonDevice3)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }

    v12 = v6;

    if (v12)
    {
      daemonDevice3 = [(NSMutableSet *)v12 daemonDevice];
      v2 = v12;
      goto LABEL_15;
    }

    daemonDevice3 = 0;
  }

  else
  {
LABEL_15:
  }

  return daemonDevice3;
}

- (void)_clientBLENearbyActionV2AdvertiserEnsureStarted
{
  if (self->_bleNearbyActionV2Advertiser)
  {

    [(RPCompanionLinkDaemon *)self _clientSendNeedsAWDLOverWiFi:1];
  }

  else
  {
    if (self->_bleNearbyActionV2Device)
    {
      goto LABEL_18;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = self->_xpcConnections;
    v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          if ([v8 needsNearbyActionV2])
          {
            bonjourDevice = [v8 bonjourDevice];

            if (!bonjourDevice)
            {
              daemonDevice = [v8 daemonDevice];
              bleNearbyActionV2Device = self->_bleNearbyActionV2Device;
              self->_bleNearbyActionV2Device = daemonDevice;

              goto LABEL_17;
            }
          }
        }

        v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    if (self->_bleNearbyActionV2Device)
    {
LABEL_18:
      v12 = objc_alloc_init(RPNearbyActionV2Advertiser);
      bleNearbyActionV2Advertiser = self->_bleNearbyActionV2Advertiser;
      self->_bleNearbyActionV2Advertiser = v12;

      [(RPNearbyActionV2Advertiser *)self->_bleNearbyActionV2Advertiser setDispatchQueue:self->_dispatchQueue];
      bleTargetData = [(RPCompanionLinkDevice *)self->_bleNearbyActionV2Device bleTargetData];
      [(RPNearbyActionV2Advertiser *)self->_bleNearbyActionV2Advertiser setTargetData:bleTargetData];

      [(RPNearbyActionV2Advertiser *)self->_bleNearbyActionV2Advertiser setNearbyActionType:[(RPCompanionLinkDevice *)self->_bleNearbyActionV2Device nearbyActionV2Type]];
      v15 = self->_bleNearbyActionV2Advertiser;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000245DC;
      v16[3] = &unk_1001AB2C8;
      v16[4] = self;
      [(RPNearbyActionV2Advertiser *)v15 activateWithCompletion:v16];
      [(RPCompanionLinkDaemon *)self _clientSendNeedsAWDLOverWiFi:1];
    }

    else if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100110974();
    }
  }
}

- (void)_clientBLENearbyActionV2AdvertiserUpdate
{
  bleNearbyActionV2Advertiser = self->_bleNearbyActionV2Advertiser;
  if (!bleNearbyActionV2Advertiser || !self->_bleNearbyActionV2Device)
  {
    return;
  }

  targetData = [(RPNearbyActionV2Advertiser *)bleNearbyActionV2Advertiser targetData];
  bleTargetData = [(RPCompanionLinkDevice *)self->_bleNearbyActionV2Device bleTargetData];
  v10 = targetData;
  v6 = bleTargetData;
  if (v10 != v6)
  {
    if ((v10 != 0) != (v6 == 0))
    {
      v7 = [v10 isEqual:v6];

      if (v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
      [(RPNearbyActionV2Advertiser *)self->_bleNearbyActionV2Advertiser setTargetData:v6, v10, v6];
    }

    else
    {
      [(RPNearbyActionV2Advertiser *)self->_bleNearbyActionV2Advertiser setTargetData:v6, v8, v9];
    }

    goto LABEL_15;
  }

LABEL_15:
}

- (void)_clientBLENearbyActionV2AdvertiserRestart
{
  [(RPCompanionLinkDaemon *)self _clientBLENearbyActionV2AdvertiserEnsureStopped];
  if ([(RPCompanionLinkDaemon *)self _clientBLENearbyActionV2AdvertiserShouldRun])
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001109A8();
    }

    [(RPCompanionLinkDaemon *)self _clientBLENearbyActionV2AdvertiserEnsureStarted];
  }
}

- (void)_clientBonjourEnsureStopped
{
  if (self->_bonjourBrowser)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100110A70();
    }

    [(CUBonjourBrowser *)self->_bonjourBrowser invalidate];
    bonjourBrowser = self->_bonjourBrowser;
    self->_bonjourBrowser = 0;

    bonjourReevaluateTimer = self->_bonjourReevaluateTimer;
    if (bonjourReevaluateTimer)
    {
      v6 = bonjourReevaluateTimer;
      dispatch_source_cancel(v6);
      v5 = self->_bonjourReevaluateTimer;
      self->_bonjourReevaluateTimer = 0;
    }
  }
}

- (BOOL)_clientBonjourFoundDevice:(id)device reevaluate:(BOOL)reevaluate
{
  deviceCopy = device;
  txtDictionary = [deviceCopy txtDictionary];
  if (!self->_btAdvAddrStr)
  {
LABEL_14:
    CFDictionaryGetInt64();
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (![v9 UTF8String] || TextToSourceVersion() <= 0x10CA0B)
    {
      if (dword_1001D3228 <= 20 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_35;
    }

    Int64 = CFDictionaryGetInt64();
    v11 = Int64;
    if (self->_prefCommunal || (Int64 & 0x20002) != 0x20002)
    {
      if (self->_prefCoreDevicePaired && (*&Int64 & 0x200000) != 0)
      {
        LODWORD(v12) = 130;
      }

      else
      {
        LODWORD(v12) = 2;
      }
    }

    else
    {
      LODWORD(v12) = 394;
    }

    if (_os_feature_enabled_impl())
    {
      v12 = v12 | 0xF;
    }

    else
    {
      v12 = v12;
    }

    v13 = +[RPIdentityDaemon sharedIdentityDaemon];
    v14 = [v13 resolveIdentityForBonjourDevice:deviceCopy typeFlags:v12];

    v15 = [(RPCompanionLinkDaemon *)self _homeKitAuthMatchForBonjourDevice:deviceCopy];
    v16 = v15;
    if ((v15 & 1) == 0 && !v14)
    {
      goto LABEL_30;
    }

    if (v15 && ([(RPCompanionLinkDaemon *)self _homeKitDecryptRotatingIDForBonjourDevice:deviceCopy], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v19 = v18;
      v40 = 1;
      v41 = v18;
    }

    else
    {
      idsDeviceID = [v14 idsDeviceID];
      if (!idsDeviceID)
      {
        if (dword_1001D3228 <= 10 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100110E3C();
        }

LABEL_30:
        [(RPCompanionLinkDaemon *)self _clientBonjourFoundUnauthDevice:deviceCopy isAWDLDevice:0];
        v17 = 0;
LABEL_64:

        goto LABEL_36;
      }

      v19 = idsDeviceID;
      v41 = 0;
      v40 = 0;
    }

    v22 = self->_uniqueIDStr;
    idsDeviceIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo idsDeviceIdentifier];
    if (v22 && -[NSString caseInsensitiveCompare:](v22, "caseInsensitiveCompare:", v19) == NSOrderedSame || idsDeviceIdentifier && ![idsDeviceIdentifier caseInsensitiveCompare:v19])
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100110BFC(deviceCopy);
      }

      goto LABEL_62;
    }

    if (!reevaluate)
    {
      [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateUnauthDevices];
    }

    if ((v11 & 0x100000) != 0)
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100110C58();
      }

      goto LABEL_62;
    }

    if (GestaltGetDeviceClass() == 6)
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100110DFC();
      }

LABEL_62:
      v17 = 0;
LABEL_63:

      goto LABEL_64;
    }

    v23 = [(NSMutableDictionary *)self->_tcpClientConnections objectForKeyedSubscript:v19];
    if (v23)
    {
      v24 = v23;
LABEL_67:
      v25 = 0;
      goto LABEL_68;
    }

    idsDeviceID2 = [v14 idsDeviceID];
    if (idsDeviceID2)
    {
      v38 = idsDeviceID2;
      v27 = [(NSMutableDictionary *)self->_tcpClientConnections objectForKeyedSubscript:idsDeviceID2];
      if (v27)
      {
        v24 = v27;

        goto LABEL_67;
      }

      v24 = [(RPCompanionLinkDaemon *)self _findWiFiConnectionByID:v38];
      if ([v24 linkType] == 6 && (objc_msgSend(v24, "controlFlags") & 0x200) == 0)
      {

        if (v24)
        {
          goto LABEL_67;
        }

LABEL_80:
        txtDictionary2 = [deviceCopy txtDictionary];
        CFStringGetTypeID();
        v39 = CFDictionaryGetTypedValue();

        v24 = [(NSMutableDictionary *)self->_tcpClientConnections objectForKeyedSubscript:v39];
        v37 = [(NSMutableDictionary *)self->_unauthDevices objectForKeyedSubscript:v39];
        bonjourDevice = [v37 bonjourDevice];

        if (v24)
        {
          v25 = bonjourDevice;
LABEL_68:
          [v24 setBonjourPeerDevice:deviceCopy];
          [v24 setPresent:1];
          [(RPCompanionLinkDaemon *)self _activeDeviceChangedForConnection:v24 bonjourDevice:deviceCopy];
          if (v25)
          {
            [(RPCompanionLinkDaemon *)self _clientBonjourLostUnauthDevice:v25];
          }

          goto LABEL_70;
        }

        if (v40)
        {
          v28 = 0x8000000;
        }

        else
        {
          v28 = 0;
        }

        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100110C98(deviceCopy);
        }

        if (self->_prefServerBonjourAlways)
        {
          prefCommunal = self->_prefCommunal;
          v30 = (v11 & 2) == 0 || self->_prefCommunal;
          if (v30 && (v11 & 0x8000) == 0)
          {
            if (self->_prefCommunal && (v11 & 2) == 0)
            {
              if (dword_1001D3228 <= 10 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
              {
                sub_100110DA0(deviceCopy);
              }

              goto LABEL_112;
            }

            if ((v16 & v40) == 1)
            {
              if (([(NSString *)self->_uniqueIDStr compare:v41]& 0x8000000000000000) == 0)
              {
                if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
                {
                  uniqueIDStr = self->_uniqueIDStr;
                  v34 = sub_100025600(deviceCopy);
                  LogPrintF();
                }

                goto LABEL_112;
              }
            }

            else
            {
              idsDeviceID3 = [v14 idsDeviceID];
              v33 = [idsDeviceIdentifier compare:idsDeviceID3];

              if ((v33 & 0x8000000000000000) == 0)
              {
                if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
                {
                  sub_100110D04(v14, deviceCopy);
                }

                goto LABEL_112;
              }
            }
          }
        }

        [(RPCompanionLinkDaemon *)self _clientConnectionStart:deviceCopy controlFlags:v28 uniqueID:v19 identity:v14];
LABEL_112:
        v24 = 0;
        v25 = bonjourDevice;
LABEL_70:

        v17 = 1;
        goto LABEL_63;
      }

      idsDeviceID2 = v38;
    }

    goto LABEL_80;
  }

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  v9 = v8;
  if (!v8)
  {
    if (dword_1001D3228 > 10 || dword_1001D3228 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_35;
    }

    sub_100110B44(deviceCopy, &v43);
    goto LABEL_12;
  }

  if (![v8 isEqual:self->_btAdvAddrStr])
  {

    goto LABEL_14;
  }

  if (dword_1001D3228 > 10 || dword_1001D3228 == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_35;
  }

  sub_100110A8C(deviceCopy, &v43);
LABEL_12:

LABEL_35:
  v17 = 0;
LABEL_36:

  return v17;
}

- (void)_clientBonjourLostDevice:(id)device
{
  deviceCopy = device;
  [(RPCompanionLinkDaemon *)self _clientBonjourLostUnauthDevice:deviceCopy];
  txtDictionary = [deviceCopy txtDictionary];
  v5 = ~CFDictionaryGetInt64();

  if (self->_prefCommunal || (*&v5 & 0x20002) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 394;
  }

  v7 = +[RPIdentityDaemon sharedIdentityDaemon];
  v8 = [v7 resolveIdentityForBonjourDevice:deviceCopy typeFlags:v6];
  v9 = [(RPCompanionLinkDaemon *)self _homeKitAuthMatchForBonjourDevice:deviceCopy];
  if ((v9 & 1) == 0 && !v8)
  {
    goto LABEL_22;
  }

  if (!v9 || ([(RPCompanionLinkDaemon *)self _homeKitDecryptRotatingIDForBonjourDevice:deviceCopy], (idsDeviceID = objc_claimAutoreleasedReturnValue()) == 0))
  {
    idsDeviceID = [v8 idsDeviceID];
    if (!idsDeviceID)
    {
      goto LABEL_22;
    }
  }

  v11 = idsDeviceID;
  v12 = [(NSMutableDictionary *)self->_tcpClientConnections objectForKeyedSubscript:idsDeviceID];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    idsDeviceID2 = [v8 idsDeviceID];
    if (idsDeviceID2)
    {
      v13 = [(NSMutableDictionary *)self->_tcpClientConnections objectForKeyedSubscript:idsDeviceID2];
      if (v13)
      {
        v15 = idsDeviceID2;

        v11 = v15;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100110E7C(deviceCopy);
    if (!v13)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v13)
  {
LABEL_20:
    [v13 setPresent:0];
  }

LABEL_21:

LABEL_22:
}

- (void)_clientBonjourFoundUnauthDevice:(id)device isAWDLDevice:(BOOL)lDevice
{
  lDeviceCopy = lDevice;
  deviceCopy = device;
  txtDictionary = [deviceCopy txtDictionary];
  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_tcpClientConnections objectForKeyedSubscript:v7];
    v9 = v8;
    if (v8)
    {
      [v8 setBonjourPeerDevice:deviceCopy];
      [v9 setPresent:1];
    }

    if (!self->_discoverPairedDevices || ![(RPCompanionLinkDaemon *)self _clientBonjourCheckFoundPairedDevice:deviceCopy publicID:v7])
    {
      v10 = [(NSMutableDictionary *)self->_unauthDevices objectForKeyedSubscript:v7];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 updateWithBonjourDevice:deviceCopy];
        if (v12)
        {
          v13 = v12;
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_100110F3C(deviceCopy);
          }

          [(RPCompanionLinkDaemon *)self _clientReportChangedDevice:v11 changes:v13];
        }
      }

      else
      {
        v14 = objc_alloc_init(RPCompanionLinkDevice);
        [v14 updateWithBonjourDevice:deviceCopy];
        [v14 setFlags:{objc_msgSend(v14, "flags") | 1}];
        if (lDeviceCopy)
        {
          [v14 setStatusFlags:{objc_msgSend(v14, "statusFlags") & 0xFFFFFFFFFFFFFFFBLL}];
          [v14 setStatusFlags:{objc_msgSend(v14, "statusFlags") | 8}];
        }

        unauthDevices = self->_unauthDevices;
        if (!unauthDevices)
        {
          v16 = objc_alloc_init(NSMutableDictionary);
          v17 = self->_unauthDevices;
          self->_unauthDevices = v16;

          unauthDevices = self->_unauthDevices;
        }

        [(NSMutableDictionary *)unauthDevices setObject:v14 forKeyedSubscript:v7];
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100111044(deviceCopy);
        }

        [(RPCompanionLinkDaemon *)self _clientReportFoundDevice:v14];
      }
    }
  }

  else if (dword_1001D3228 <= 10 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10011113C();
  }
}

- (BOOL)_clientBonjourCheckFoundPairedDevice:(id)device publicID:(id)d
{
  deviceCopy = device;
  dCopy = d;
  v8 = +[RPIdentityDaemon sharedIdentityDaemon];
  v9 = [v8 resolveIdentityForBonjourDevice:deviceCopy typeFlags:128];

  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_pairedDevices objectForKeyedSubscript:dCopy];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 updateWithBonjourDevice:deviceCopy];
      if (v12)
      {
        v13 = v12;
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_10011117C(deviceCopy);
        }

        [(RPCompanionLinkDaemon *)self _clientReportChangedDevice:v11 changes:v13];
      }
    }

    else
    {
      v14 = objc_alloc_init(RPCompanionLinkDevice);
      [v14 updateWithBonjourDevice:deviceCopy];
      [v14 setStatusFlags:{objc_msgSend(v14, "statusFlags") | 0x8000}];
      pairedDevices = self->_pairedDevices;
      if (!pairedDevices)
      {
        v16 = objc_alloc_init(NSMutableDictionary);
        v17 = self->_pairedDevices;
        self->_pairedDevices = v16;

        pairedDevices = self->_pairedDevices;
      }

      [(NSMutableDictionary *)pairedDevices setObject:v14 forKeyedSubscript:dCopy];
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_10011125C(deviceCopy);
      }

      [(RPCompanionLinkDaemon *)self _clientReportFoundDevice:v14];
    }
  }

  return v9 != 0;
}

- (void)_clientBonjourLostUnauthDevice:(id)device
{
  deviceCopy = device;
  txtDictionary = [deviceCopy txtDictionary];
  CFStringGetTypeID();
  v5 = CFDictionaryGetTypedValue();

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_tcpClientConnections objectForKeyedSubscript:v5];
    v7 = v6;
    if (v6)
    {
      [v6 setPresent:0];
    }

    if (![(RPCompanionLinkDaemon *)self _clientBonjourCheckLostPairedDevice:deviceCopy publicID:v5])
    {
      v8 = [(NSMutableDictionary *)self->_unauthDevices objectForKeyedSubscript:v5];
      if (v8)
      {
        [(NSMutableDictionary *)self->_unauthDevices setObject:0 forKeyedSubscript:v5];
        [v8 removeBonjourDevice:deviceCopy];
        [v8 setStatusFlags:{objc_msgSend(v8, "statusFlags") & 0xFFFFFFFFFFFFFFF7}];
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_10011131C(deviceCopy);
        }

        [(RPCompanionLinkDaemon *)self _clientReportLostDevice:v8];
      }
    }
  }

  else if (dword_1001D3228 <= 10 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001113DC();
  }
}

- (BOOL)_clientBonjourCheckLostPairedDevice:(id)device publicID:(id)d
{
  deviceCopy = device;
  dCopy = d;
  v8 = [(NSMutableDictionary *)self->_pairedDevices objectForKeyedSubscript:dCopy];
  if (v8)
  {
    [(NSMutableDictionary *)self->_pairedDevices setObject:0 forKeyedSubscript:dCopy];
    [v8 removeBonjourDevice:deviceCopy];
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011141C(deviceCopy);
    }

    [(RPCompanionLinkDaemon *)self _clientReportLostDevice:v8];
  }

  return v8 != 0;
}

- (void)_clientBonjourReevaluateAllDevices
{
  devices = [(CUBonjourBrowser *)self->_bonjourBrowser devices];
  if ([devices count] && !self->_bonjourReevaluateTimer)
  {
    if (mach_absolute_time() >= self->_bonjourReevaluateNextTicks)
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001114DC(devices);
      }

      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = devices;
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [(RPCompanionLinkDaemon *)self _clientBonjourFoundDevice:*(*(&v13 + 1) + 8 * i) reevaluate:1, v13];
          }

          v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
        }

        while (v9);
      }

      v12 = mach_absolute_time();
      self->_bonjourReevaluateNextTicks = SecondsToUpTicks() + v12;
    }

    else
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100111520();
      }

      v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      bonjourReevaluateTimer = self->_bonjourReevaluateTimer;
      self->_bonjourReevaluateTimer = v4;
      v6 = v4;

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100026158;
      handler[3] = &unk_1001AB488;
      handler[4] = v6;
      handler[5] = self;
      dispatch_source_set_event_handler(v6, handler);
      CUDispatchTimerSet();
      dispatch_activate(v6);
    }
  }
}

- (void)_clientBonjourResetReevaluationRateLimit
{
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10011153C();
  }

  self->_bonjourReevaluateNextTicks = 0;
  bonjourReevaluateTimer = self->_bonjourReevaluateTimer;
  if (bonjourReevaluateTimer)
  {
    v5 = bonjourReevaluateTimer;
    dispatch_source_cancel(v5);
    v4 = self->_bonjourReevaluateTimer;
    self->_bonjourReevaluateTimer = 0;
  }
}

- (void)_clientBonjourAWDLBrowserEnsureStarted
{
  if (!self->_bonjourBrowserAWDL)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001115B4();
    }

    if (self->_needsAWDLTransaction)
    {
      v3 = +[RPWiFiP2PTransaction sharedInstance];
      [v3 activateForClient:@"Ensemble"];
    }

    v4 = objc_alloc_init(CUBonjourBrowser);
    bonjourBrowserAWDL = self->_bonjourBrowserAWDL;
    self->_bonjourBrowserAWDL = v4;

    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL setChangeFlags:0xFFFFFFFFLL];
    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL setDispatchQueue:self->_dispatchQueue];
    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL setDomain:@"local."];
    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL setInterfaceName:@"awdl0"];
    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL setLabel:@"CLink"];
    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL setServiceType:@"_companion-link._tcp"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002653C;
    v20[3] = &unk_1001AB438;
    v20[4] = self;
    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL setDeviceFoundHandler:v20];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100026554;
    v19[3] = &unk_1001AB438;
    v19[4] = self;
    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL setDeviceLostHandler:v19];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10002656C;
    v18[3] = &unk_1001AB460;
    v18[4] = self;
    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL setDeviceChangedHandler:v18];
    [(CUBonjourBrowser *)self->_bonjourBrowserAWDL activate];
    v6 = self->_bonjourBrowserAWDLAssertions;
    v7 = v6;
    if (v6)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v14 + 1) + 8 * i);
            v13 = +[RPAssertionTracker sharedTracker];
            [v13 startTracking:v12];
          }

          v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v14 objects:v21 count:16];
        }

        while (v9);
      }
    }
  }
}

- (id)_clientShouldConnectOverBonjour:(id)bonjour device:(id)device identities:(id)identities
{
  bonjourCopy = bonjour;
  deviceCopy = device;
  identitiesCopy = identities;
  netCnx = [bonjourCopy netCnx];
  if ([netCnx present])
  {

LABEL_3:
    v11 = 0;
    goto LABEL_30;
  }

  if ([bonjourCopy needsCLink])
  {
  }

  else
  {
    needsNearbyActionV2 = [bonjourCopy needsNearbyActionV2];

    if ((needsNearbyActionV2 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  identifier = [deviceCopy identifier];
  v14 = identifier;
  if (identifier)
  {
    publicIdentifier = identifier;
  }

  else
  {
    publicIdentifier = [deviceCopy publicIdentifier];
  }

  v16 = publicIdentifier;

  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];

  if (!idsDeviceIdentifier && v16 && dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001115EC(bonjourCopy);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = identitiesCopy;
  v11 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v11)
  {
    v29 = v16;
    v30 = identitiesCopy;
    v19 = *v32;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v18);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        if ([v21 type] == 15)
        {
          identifier2 = [deviceCopy identifier];
          identifier3 = [v21 identifier];
          v24 = [identifier2 isEqual:identifier3];

          if (v24)
          {
            goto LABEL_27;
          }
        }

        else
        {
          idsDeviceIdentifier2 = [deviceCopy idsDeviceIdentifier];
          idsDeviceID = [v21 idsDeviceID];
          v27 = [idsDeviceIdentifier2 isEqual:idsDeviceID];

          if (v27)
          {
LABEL_27:
            v11 = v21;
            goto LABEL_28;
          }
        }
      }

      v11 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

LABEL_28:
    v16 = v29;
    identitiesCopy = v30;
  }

LABEL_30:

  return v11;
}

- (void)_clientBonjourAWDLBrowserFoundDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];

  if (identifier)
  {
    txtDictionary = [deviceCopy txtDictionary];
    if (CFDictionaryGetInt64())
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_10011165C();
      }

      goto LABEL_135;
    }

    if ((CFDictionaryGetInt64() & 0x800) == 0)
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100111980();
      }

      goto LABEL_135;
    }

    CFStringGetTypeID();
    [deviceCopy setName:CFDictionaryGetTypedValue()];
    v6 = +[RPIdentityDaemon sharedIdentityDaemon];
    v7 = [v6 resolveIdentitiesForBonjourDevice:deviceCopy typeFlags:19882];
    if ([v7 count])
    {
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v103 objects:v113 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v104;
LABEL_19:
        v12 = 0;
        while (1)
        {
          if (*v104 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v103 + 1) + 8 * v12);
          idsDeviceID = [v13 idsDeviceID];
          if (idsDeviceID)
          {
            break;
          }

          if ([v13 type] == 15)
          {
            idsDeviceID = [v13 identifier];
            if (idsDeviceID)
            {
              break;
            }
          }

          if (v10 == ++v12)
          {
            v10 = [v8 countByEnumeratingWithState:&v103 objects:v113 count:16];
            if (v10)
            {
              goto LABEL_19;
            }

            goto LABEL_27;
          }
        }

        v16 = idsDeviceID;

        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_1001116D0();
        }

        bonjourAWDLDevices = self->_bonjourAWDLDevices;
        if (!bonjourAWDLDevices)
        {
          v18 = objc_alloc_init(NSMutableDictionary);
          v19 = self->_bonjourAWDLDevices;
          self->_bonjourAWDLDevices = v18;

          bonjourAWDLDevices = self->_bonjourAWDLDevices;
        }

        v20 = [(NSMutableDictionary *)bonjourAWDLDevices objectForKeyedSubscript:v16];
        if (v20 && dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_10011172C();
        }

        v71 = v20;
        v73 = v6;
        v74 = txtDictionary;
        v75 = v16;
        [(NSMutableDictionary *)self->_bonjourAWDLDevices setObject:deviceCopy forKeyedSubscript:v16];
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v21 = self->_xpcConnections;
        v22 = [(NSMutableSet *)v21 countByEnumeratingWithState:&v99 objects:v112 count:16];
        v72 = v7;
        if (v22)
        {
          v23 = v22;
          v24 = *v100;
LABEL_41:
          v25 = 0;
          while (1)
          {
            if (*v100 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v99 + 1) + 8 * v25);
            daemonDevice = [v26 daemonDevice];
            v28 = [(RPCompanionLinkDaemon *)self _clientShouldConnectOverBonjour:v26 device:daemonDevice identities:v8];
            if (v28)
            {
              break;
            }

            if (v23 == ++v25)
            {
              v23 = [(NSMutableSet *)v21 countByEnumeratingWithState:&v99 objects:v112 count:16];
              if (v23)
              {
                goto LABEL_41;
              }

              goto LABEL_47;
            }
          }

          v30 = v28;
          [v26 setBonjourDevice:deviceCopy];
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_1001117A0();
          }

          v98 = 0;
          v29 = [(RPCompanionLinkDaemon *)self _clientCreateConnection:daemonDevice xpcCnx:v26 error:&v98];
          v31 = v98;
          if (v29)
          {
            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_1001117E0();
            }

            v76 = deviceCopy;

            goto LABEL_57;
          }

          if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v29 = v21;
          goto LABEL_132;
        }

LABEL_47:
        v76 = deviceCopy;
        v29 = 0;
LABEL_57:

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v32 = self->_xpcConnections;
        v33 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v94 objects:v111 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v95;
          do
          {
            v36 = 0;
            do
            {
              if (*v95 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v94 + 1) + 8 * v36);
              daemonDevice2 = [v37 daemonDevice];
              v39 = [(RPCompanionLinkDaemon *)self _clientShouldConnectOverBonjour:v37 device:daemonDevice2 identities:v8];
              if (v39)
              {
                if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
                {
                  sub_10011184C(v29, v37);
                }

                netCnx = [v37 netCnx];

                if (netCnx)
                {
                  netCnx2 = [v37 netCnx];
                  [netCnx2 processSendsUsingConnection:v29];
                }

                [v37 setNetCnx:v29];
                [v37 setBonjourDevice:v76];
                session = [v37 session];
                [session setCnx:v29];

                xpcCnx = [v37 xpcCnx];
                [v29 addInUseProcess:{objc_msgSend(xpcCnx, "processIdentifier")}];

                discoveryTimer = [v37 discoveryTimer];
                v45 = discoveryTimer;
                if (discoveryTimer)
                {
                  dispatch_source_cancel(discoveryTimer);
                  [v37 setDiscoveryTimer:0];
                  [v37 setNeedsCLink:0];
                  [v37 setNeedsNearbyActionV2:0];
                }
              }

              v36 = v36 + 1;
            }

            while (v34 != v36);
            v46 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v94 objects:v111 count:16];
            v34 = v46;
          }

          while (v46);
        }

        daemonDevice = [(RPCompanionLinkDaemon *)self _xpcConnections:self->_xpcConnections withControlFlags:0x1000000000000];
        v47 = [(NSMutableDictionary *)self->_authenticatedAWDLPairingModeDevices objectForKeyedSubscript:v75];
        v30 = v47;
        if (!v47)
        {
          v30 = objc_alloc_init(RPCompanionLinkDevice);
        }

        v48 = [v30 updateWithBonjourDevice:v76];
        [v30 setStatusFlags:{objc_msgSend(v30, "statusFlags") & 0xFFFFFFFFFFFFFFFBLL}];
        [v30 setStatusFlags:{objc_msgSend(v30, "statusFlags") | 8}];
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v49 = v8;
        v50 = [v49 countByEnumeratingWithState:&v90 objects:v110 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v91;
          do
          {
            for (i = 0; i != v51; i = i + 1)
            {
              if (*v91 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v48 = ([v30 updateTrustStatusFlagsWithIdentity:*(*(&v90 + 1) + 8 * i)] | v48);
            }

            v51 = [v49 countByEnumeratingWithState:&v90 objects:v110 count:16];
          }

          while (v51);
        }

        if (([v30 statusFlags] & 0x80000000) == 0)
        {
          deviceCopy = v76;
          if (v47)
          {
            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_100111940();
            }

            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v54 = daemonDevice;
            v55 = [v54 countByEnumeratingWithState:&v78 objects:v107 count:16];
            if (v55)
            {
              v56 = v55;
              v57 = *v79;
              do
              {
                for (j = 0; j != v56; j = j + 1)
                {
                  if (*v79 != v57)
                  {
                    objc_enumerationMutation(v54);
                  }

                  [*(*(&v78 + 1) + 8 * j) reportLostDevice:v30];
                }

                v56 = [v54 countByEnumeratingWithState:&v78 objects:v107 count:16];
              }

              while (v56);
            }

            [(NSMutableDictionary *)self->_authenticatedAWDLPairingModeDevices setObject:0 forKeyedSubscript:v75];
          }

          goto LABEL_127;
        }

        deviceCopy = v76;
        authenticatedAWDLPairingModeDevices = self->_authenticatedAWDLPairingModeDevices;
        if (!authenticatedAWDLPairingModeDevices)
        {
          v60 = objc_alloc_init(NSMutableDictionary);
          v61 = self->_authenticatedAWDLPairingModeDevices;
          self->_authenticatedAWDLPairingModeDevices = v60;

          authenticatedAWDLPairingModeDevices = self->_authenticatedAWDLPairingModeDevices;
        }

        [(NSMutableDictionary *)authenticatedAWDLPairingModeDevices setObject:v30 forKeyedSubscript:v75];
        if (v47 && v48)
        {
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_1001118C0();
          }

          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v62 = daemonDevice;
          v63 = [v62 countByEnumeratingWithState:&v86 objects:v109 count:16];
          if (v63)
          {
            v64 = v63;
            v65 = *v87;
            do
            {
              for (k = 0; k != v64; k = k + 1)
              {
                if (*v87 != v65)
                {
                  objc_enumerationMutation(v62);
                }

                [*(*(&v86 + 1) + 8 * k) reportChangedDevice:v30 changes:v48];
              }

              v64 = [v62 countByEnumeratingWithState:&v86 objects:v109 count:16];
            }

            while (v64);
          }
        }

        else
        {
          if (v47)
          {
LABEL_127:
            [(RPCompanionLinkDaemon *)self _updateAssertions];
LABEL_132:

            v6 = v73;
            txtDictionary = v74;
            v7 = v72;
            v15 = v75;
            goto LABEL_133;
          }

          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_100111900();
          }

          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v62 = daemonDevice;
          v67 = [v62 countByEnumeratingWithState:&v82 objects:v108 count:16];
          if (v67)
          {
            v68 = v67;
            v69 = *v83;
            do
            {
              for (m = 0; m != v68; m = m + 1)
              {
                if (*v83 != v69)
                {
                  objc_enumerationMutation(v62);
                }

                [*(*(&v82 + 1) + 8 * m) reportFoundDevice:v30 outReason:0];
              }

              v68 = [v62 countByEnumeratingWithState:&v82 objects:v108 count:16];
            }

            while (v68);
          }
        }

        goto LABEL_127;
      }

LABEL_27:

      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        v15 = CUDescriptionWithLevel();
        LogPrintF();
LABEL_133:
      }
    }

    else
    {
      [(RPCompanionLinkDaemon *)self _clientBonjourFoundUnauthDevice:deviceCopy isAWDLDevice:1];
    }

LABEL_135:
    goto LABEL_136;
  }

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001119E0();
  }

LABEL_136:
}

- (void)_clientBonjourAWDLBrowserLostDevice:(id)device
{
  deviceCopy = device;
  [(RPCompanionLinkDaemon *)self _clientBonjourLostUnauthDevice:deviceCopy];
  v4 = +[RPIdentityDaemon sharedIdentityDaemon];
  v5 = [v4 resolveIdentityForBonjourDevice:deviceCopy typeFlags:19882];
  v6 = v5;
  if (v5)
  {
    idsDeviceID = [v5 idsDeviceID];
    if (!idsDeviceID)
    {
      if (dword_1001D3228 > 90 || dword_1001D3228 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_27;
      }

      v9 = CUDescriptionWithLevel();
      LogPrintF();
      goto LABEL_26;
    }

    v8 = [(NSMutableDictionary *)self->_bonjourAWDLDevices objectForKeyedSubscript:idsDeviceID];
    v9 = v8;
    if (!v8)
    {
      if (sub_100111B68(deviceCopy, 0, &v19, &v20))
      {
        v9 = v20;
        goto LABEL_26;
      }

      v12 = v19;
LABEL_25:

LABEL_26:
      goto LABEL_27;
    }

    identifier = [v8 identifier];
    identifier2 = [deviceCopy identifier];
    v12 = identifier;
    v13 = identifier2;
    v14 = v13;
    if (v12 == v13)
    {
    }

    else
    {
      if ((v12 != 0) == (v13 == 0))
      {

LABEL_40:
        sub_100111A40();
LABEL_24:

        goto LABEL_25;
      }

      v15 = [v12 isEqual:v13];

      if ((v15 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100111ABC();
    }

    [(NSMutableDictionary *)self->_bonjourAWDLDevices setObject:0 forKeyedSubscript:idsDeviceID];
    v16 = [(NSMutableDictionary *)self->_authenticatedAWDLPairingModeDevices objectForKeyedSubscript:idsDeviceID];
    v17 = v16;
    if (v16)
    {
      [v16 setStatusFlags:{objc_msgSend(v16, "statusFlags") & 0xFFFFFFFF7FFFFFFFLL}];
      if (dword_1001D3228 < 31 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100111B28();
      }

      [(RPCompanionLinkDaemon *)self _clientReportLostDevice:v17];
      [(NSMutableDictionary *)self->_authenticatedAWDLPairingModeDevices setObject:0 forKeyedSubscript:idsDeviceID];
    }

    goto LABEL_24;
  }

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    idsDeviceID = CUDescriptionWithLevel();
    LogPrintF();
LABEL_27:
  }
}

- (void)_clientConnectionStart:(id)start controlFlags:(unint64_t)flags uniqueID:(id)d identity:(id)identity
{
  startCopy = start;
  dCopy = d;
  identityCopy = identity;
  v13 = [(NSMutableDictionary *)self->_tcpClientConnections count];
  v14 = &v13[[(NSMutableDictionary *)self->_tcpOnDemandClientConnections count]];
  if (v14 >= self->_prefMaxConnectionCount)
  {
    if (dword_1001D3228 <= 60 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100111C18(v14, startCopy);
    }
  }

  else
  {
    if (identityCopy)
    {
      flagsCopy = flags | 0x80;
    }

    else
    {
      flagsCopy = flags;
    }

    v16 = objc_alloc_init(RPConnection);
    [v16 setBonjourPeerDevice:startCopy];
    v17 = +[RPCloudDaemon sharedCloudDaemon];
    [v16 setCloudDaemon:v17];

    [v16 setControlFlags:flagsCopy];
    [v16 setDispatchQueue:self->_dispatchQueue];
    [v16 setHomeKitManager:self->_homeKitManager];
    [v16 setIdentityResolved:identityCopy];
    v18 = +[RPIdentityDaemon sharedIdentityDaemon];
    [v16 setIdentityDaemon:v18];

    v19 = [NSString alloc];
    v20 = self->_cnxIDLast + 1;
    self->_cnxIDLast = v20;
    v21 = [v19 initWithFormat:@"%@Cnx-%u", @"CLink", v20];
    [v16 setLabel:v21];

    [v16 setLocalDeviceInfo:self->_localDeviceInfo];
    [v16 setNetLinkManager:self->_netLinkManager];
    [v16 setPeerIdentifier:dCopy];
    [v16 setPreferredIdentityType:{objc_msgSend(identityCopy, "type")}];
    [v16 setPresent:1];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100027D0C;
    v32[3] = &unk_1001AB130;
    v32[4] = self;
    v32[5] = v16;
    v22 = dCopy;
    v33 = v22;
    [v16 setInvalidationHandler:v32];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100027D4C;
    v31[3] = &unk_1001AB488;
    v31[4] = self;
    v31[5] = v16;
    [v16 setPeerUpdatedHandler:v31];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100027DC4;
    v30[3] = &unk_1001AB4F0;
    v30[4] = self;
    v30[5] = v16;
    [v16 setReceivedEventHandler:v30];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100027DE0;
    v29[3] = &unk_1001AB518;
    v29[4] = self;
    v29[5] = v16;
    [v16 setReceivedRequestHandler:v29];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100027E00;
    v28[3] = &unk_1001AB540;
    v28[4] = self;
    v28[5] = v16;
    [v16 setStateChangedHandler:v28];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100027E10;
    v27[3] = &unk_1001AB488;
    v27[4] = v16;
    v27[5] = self;
    [v16 setHomeKitUserIdentifierHandler:v27];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100027EA8;
    v26[3] = &unk_1001AB488;
    v26[4] = self;
    v26[5] = v16;
    [v16 setProxyDeviceUpdateHandler:v26];
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100111CE0(startCopy);
    }

    tcpClientConnections = self->_tcpClientConnections;
    if (!tcpClientConnections)
    {
      v24 = objc_alloc_init(NSMutableDictionary);
      v25 = self->_tcpClientConnections;
      self->_tcpClientConnections = v24;

      tcpClientConnections = self->_tcpClientConnections;
    }

    [(NSMutableDictionary *)tcpClientConnections setObject:v16 forKeyedSubscript:v22];
    [v16 activate];
    [(RPCompanionLinkDaemon *)self _updateAssertions];
  }
}

- (BOOL)_clientConnectionStartOnDemand:(id)demand xpcCnx:(id)cnx error:(id *)error
{
  v6 = [(RPCompanionLinkDaemon *)self _clientCreateConnection:demand xpcCnx:cnx error:error];
  if (v6)
  {
    [(RPCompanionLinkDaemon *)self _updateAssertions];
  }

  return v6 != 0;
}

- (id)_clientCreateConnection:(id)connection xpcCnx:(id)cnx error:(id *)error
{
  connectionCopy = connection;
  cnxCopy = cnx;
  identifier = [connectionCopy identifier];
  if (!identifier)
  {
    v22 = RPErrorF();
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100111E9C(connectionCopy);
      if (!error)
      {
        goto LABEL_14;
      }
    }

    else if (!error)
    {
LABEL_14:

      v24 = 0;
      goto LABEL_120;
    }

    v23 = v22;
    *error = v22;
    goto LABEL_14;
  }

  client = [cnxCopy client];
  v12 = client;
  if (client)
  {
    controlFlags = [client controlFlags];
    netCnx = [cnxCopy netCnx];
    if (!netCnx)
    {
      netCnx = objc_alloc_init(RPConnection);
      appID = [v12 appID];
      [netCnx setAppID:appID];

      [netCnx setDispatchQueue:self->_dispatchQueue];
      v16 = +[RPIdentityDaemon sharedIdentityDaemon];
      [netCnx setIdentityDaemon:v16];

      [cnxCopy setNetCnx:netCnx];
    }

    xpcCnx = [cnxCopy xpcCnx];
    [netCnx addInUseProcess:{objc_msgSend(xpcCnx, "processIdentifier")}];

    ipAddress = [connectionCopy ipAddress];

    if (ipAddress)
    {
      ipAddress2 = [connectionCopy ipAddress];
      [netCnx setDestinationString:ipAddress2];

      goto LABEL_7;
    }

    bonjourDevice = [connectionCopy bonjourDevice];
    if (bonjourDevice || ([cnxCopy bonjourDevice], (bonjourDevice = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v65 = controlFlags;
      identifier2 = bonjourDevice;
      v66 = 0;
    }

    else
    {
      if ((controlFlags & 0x400000) != 0 || (controlFlags & 0x20000) == 0 && GestaltGetDeviceClass() == 6 || ([(RPCompanionLinkDaemon *)self _findMatchingAWDLBonjourDevice:connectionCopy], (v44 = objc_claimAutoreleasedReturnValue()) == 0))
      {
LABEL_7:
        ipAddress3 = [connectionCopy ipAddress];

        if (ipAddress3)
        {
          v65 = controlFlags;
          identifier2 = 0;
          v66 = 1;
          goto LABEL_24;
        }

        if ((controlFlags & 0x100) != 0)
        {
          if (!"ForceL2CAP")
          {
            goto LABEL_69;
          }
        }

        else if (([connectionCopy statusFlags] & 0x200) != 0)
        {
          v89 = 0;
          v62 = &v89;
          v63 = 0;
          SocketGetInterfaceInfo();
          if (((v89 << 63 >> 63) & "NoLocalAWDL") == 0)
          {
            goto LABEL_69;
          }
        }

        else if (!"NoWiFiP2P")
        {
          goto LABEL_69;
        }

        if ((controlFlags & 0x20000000000) == 0)
        {
          v65 = controlFlags;
          bleDevice = [connectionCopy bleDevice];
          identifier2 = [bleDevice identifier];

          if (!identifier2)
          {
            v40 = RPErrorF();
            if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_100111E40(connectionCopy);
              if (!error)
              {
                goto LABEL_88;
              }

              goto LABEL_87;
            }

LABEL_86:
            if (!error)
            {
LABEL_88:

              goto LABEL_89;
            }

LABEL_87:
            v45 = v40;
            *error = v40;
            goto LABEL_88;
          }

          if ([(NSMutableDictionary *)self->_bleClientConnections count]< 4)
          {
            if (GestaltGetDeviceClass() == 1)
            {
              model = [connectionCopy model];
              if ([model hasPrefix:@"Watch"])
              {
                +[RPCloudDaemon sharedCloudDaemon];
                v47 = v67 = model;
                idsHasWatch = [v47 idsHasWatch];

                if (idsHasWatch)
                {
                  goto LABEL_50;
                }
              }

              else
              {
              }
            }

            [netCnx setBleClientUseCase:{objc_msgSend(v12, "bleClientUseCase", v62, v63)}];
            [netCnx setBlePeerIdentifier:identifier2];
            if ([netCnx bleClientUseCase] == 327680)
            {
              appID2 = [v12 appID];
              [netCnx setClientBundleID:appID2];
            }

            identifier2 = 0;
            v66 = 1;
LABEL_25:
            discoveryTimer = [cnxCopy discoveryTimer];
            v30 = discoveryTimer;
            if (discoveryTimer)
            {
              dispatch_source_cancel(discoveryTimer);
              [cnxCopy setDiscoveryTimer:0];
            }

            if (v66)
            {
              v31 = 640;
            }

            else
            {
              v31 = 576;
            }

            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_100111DE0();
            }

            if ((v66 & 1) == 0)
            {
              [netCnx setBonjourPeerDevice:identifier2];
            }

            [netCnx setClient:v12];
            [netCnx setControlFlags:v31 | v65 & 0xC08010000400];
            [netCnx setIdentifierOverride:identifier];
            v32 = [NSString alloc];
            v33 = self->_cnxIDLast + 1;
            self->_cnxIDLast = v33;
            v34 = [v32 initWithFormat:@"%@Cnx-%u", @"CLink", v33];
            [netCnx setLabel:v34];

            [netCnx setLocalDeviceInfo:self->_localDeviceInfo];
            password = [v12 password];
            [netCnx setPassword:password];

            [netCnx setPeerIdentifier:identifier];
            [netCnx setPresent:1];
            [cnxCopy setNetCnx:netCnx];
            passwordType = [v12 passwordType];
            if (passwordType)
            {
              v37 = passwordType;
              if (passwordType != 3)
              {
                [netCnx setPasswordType:passwordType];
                if (([v12 internalAuthFlags] & 8) != 0)
                {
                  v87[0] = _NSConcreteStackBlock;
                  v87[1] = 3221225472;
                  v87[2] = sub_100028B34;
                  v87[3] = &unk_1001AB2C8;
                  v88 = cnxCopy;
                  [netCnx setAuthCompletionHandler:v87];
                }

                if (([v12 internalAuthFlags] & 4) != 0)
                {
                  v84[0] = _NSConcreteStackBlock;
                  v84[1] = 3221225472;
                  v84[2] = sub_100028B40;
                  v84[3] = &unk_1001AB568;
                  v85 = cnxCopy;
                  v86 = netCnx;
                  [v86 setPromptForPasswordHandler:v84];
                }
              }
            }

            statusFlags = [connectionCopy statusFlags];
            if ((statusFlags & 0x80000) != 0)
            {
              v39 = 2;
            }

            else if ((statusFlags & 0x8000) != 0)
            {
              v39 = 8;
            }

            else if ((statusFlags & 0x2000) != 0)
            {
              v39 = 9;
            }

            else if ((statusFlags & 0x4000) != 0)
            {
              v39 = 4;
            }

            else if ((statusFlags & 0x20000) != 0)
            {
              v39 = 6;
            }

            else if ((statusFlags & 0x4000000000) != 0)
            {
              v39 = 15;
            }

            else if (statusFlags & 0x2000000000 | v65 & 0x800000000000)
            {
              v39 = 13;
            }

            else
            {
              v39 = 0;
            }

            if ((v65 & 0x8000000000) != 0)
            {
              v49 = 8;
            }

            else
            {
              v49 = v39;
            }

            if (v49)
            {
              [netCnx setPreferredIdentityType:?];
            }

            [(RPCompanionLinkDaemon *)self _configureConnectionForPairing:netCnx];
            v81[0] = _NSConcreteStackBlock;
            v81[1] = 3221225472;
            v81[2] = sub_100028B94;
            v81[3] = &unk_1001AB130;
            v81[4] = self;
            v50 = netCnx;
            v82 = v50;
            v83 = identifier;
            [v50 setInvalidationHandler:v81];
            v79[0] = _NSConcreteStackBlock;
            v79[1] = 3221225472;
            v79[2] = sub_100028D00;
            v79[3] = &unk_1001AB4F0;
            v79[4] = self;
            v51 = v50;
            v80 = v51;
            [v51 setReceivedEventHandler:v79];
            v77[0] = _NSConcreteStackBlock;
            v77[1] = 3221225472;
            v77[2] = sub_100028D1C;
            v77[3] = &unk_1001AB518;
            v77[4] = self;
            v52 = v51;
            v78 = v52;
            [v52 setReceivedRequestHandler:v77];
            v73[0] = _NSConcreteStackBlock;
            v73[1] = 3221225472;
            v73[2] = sub_100028D3C;
            v73[3] = &unk_1001AB590;
            v74 = connectionCopy;
            selfCopy = self;
            v53 = v52;
            v76 = v53;
            [v53 setStateChangedHandler:v73];
            v70[0] = _NSConcreteStackBlock;
            v70[1] = 3221225472;
            v70[2] = sub_100028DB0;
            v70[3] = &unk_1001AB488;
            v54 = v53;
            v71 = v54;
            selfCopy2 = self;
            [v54 setHomeKitUserIdentifierHandler:v70];
            v68[0] = _NSConcreteStackBlock;
            v68[1] = 3221225472;
            v68[2] = sub_100028E48;
            v68[3] = &unk_1001AB488;
            v68[4] = self;
            v55 = v54;
            v69 = v55;
            [v55 setProxyDeviceUpdateHandler:v68];
            if (v66)
            {
              bleClientConnections = self->_bleClientConnections;
              p_bleClientConnections = &self->_bleClientConnections;
              tcpOnDemandClientConnections = bleClientConnections;
              if (!bleClientConnections)
              {
                goto LABEL_116;
              }
            }

            else
            {
              tcpOnDemandClientConnections = self->_tcpOnDemandClientConnections;
              if (!tcpOnDemandClientConnections)
              {
                p_bleClientConnections = &self->_tcpOnDemandClientConnections;
LABEL_116:
                v59 = objc_alloc_init(NSMutableDictionary);
                v60 = *p_bleClientConnections;
                *p_bleClientConnections = v59;

                tcpOnDemandClientConnections = *p_bleClientConnections;
              }
            }

            [(NSMutableDictionary *)tcpOnDemandClientConnections setObject:v55 forKeyedSubscript:identifier];
            [v55 activate];
            v24 = v55;

            goto LABEL_118;
          }

LABEL_50:
          v40 = RPErrorF();
          if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
            if (!error)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          }

          goto LABEL_86;
        }

LABEL_69:
        if ((controlFlags & 0x400000) == 0)
        {
          [(RPCompanionLinkDaemon *)self _clientOnDemandDiscoveryStart:connectionCopy xpcCnx:cnxCopy];
          v24 = netCnx;
LABEL_118:

          goto LABEL_119;
        }

        v42 = RPErrorF();
        if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100111DAC();
          if (!error)
          {
            goto LABEL_76;
          }
        }

        else if (!error)
        {
LABEL_76:

LABEL_89:
          v24 = 0;
          goto LABEL_118;
        }

        v43 = v42;
        *error = v42;
        goto LABEL_76;
      }

      v65 = controlFlags;
      identifier2 = v44;
      [cnxCopy setNeedsCLink:1];
      v66 = 0;
    }

LABEL_24:
    v28 = [(NSMutableDictionary *)self->_tcpClientConnections count];
    if (&v28[[(NSMutableDictionary *)self->_tcpOnDemandClientConnections count]] < self->_prefMaxConnectionCount)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

  v25 = RPErrorF();
  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100111E9C(connectionCopy);
    if (!error)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (error)
  {
LABEL_19:
    v26 = v25;
    *error = v25;
  }

LABEL_20:

  v24 = 0;
LABEL_119:

LABEL_120:

  return v24;
}

- (void)_clientConnectionEnded:(id)ended uniqueID:(id)d
{
  endedCopy = ended;
  dCopy = d;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    v9 = dCopy;
    v10 = endedCopy;
    LogPrintF();
  }

  [(RPCompanionLinkDaemon *)self _connectionStateChanged:0 cnx:endedCopy, v9, v10];
  v7 = [(NSMutableDictionary *)self->_bleClientConnections objectForKeyedSubscript:dCopy];
  if (v7 == endedCopy)
  {
    [(NSMutableDictionary *)self->_bleClientConnections setObject:0 forKeyedSubscript:dCopy];
  }

  v8 = [(NSMutableDictionary *)self->_tcpClientConnections objectForKeyedSubscript:dCopy];

  if (v8 == endedCopy)
  {
    [(NSMutableDictionary *)self->_tcpClientConnections setObject:0 forKeyedSubscript:dCopy];
  }

  [(RPCompanionLinkDaemon *)self _updateAssertions];
  [(RPCompanionLinkDaemon *)self _update];
}

- (void)_clientOnDemandConnectionEnded:(id)ended uniqueID:(id)d
{
  endedCopy = ended;
  dCopy = d;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    v10 = dCopy;
    v11 = endedCopy;
    LogPrintF();
  }

  [(RPCompanionLinkDaemon *)self _connectionStateChanged:0 cnx:endedCopy, v10, v11];
  [(RPCompanionLinkDaemon *)self _sessionHandlePeerDisconnect:endedCopy];
  bonjourPeerDevice = [endedCopy bonjourPeerDevice];

  if (bonjourPeerDevice)
  {
    v8 = [(NSMutableDictionary *)self->_tcpOnDemandClientConnections objectForKeyedSubscript:dCopy];
    if (v8 != endedCopy)
    {
      goto LABEL_10;
    }

    p_tcpOnDemandClientConnections = &self->_tcpOnDemandClientConnections;
  }

  else
  {
    p_tcpOnDemandClientConnections = &self->_bleClientConnections;
    v8 = [(NSMutableDictionary *)self->_bleClientConnections objectForKeyedSubscript:dCopy];
    if (v8 != endedCopy)
    {
      goto LABEL_10;
    }
  }

  [(NSMutableDictionary *)*p_tcpOnDemandClientConnections setObject:0 forKeyedSubscript:dCopy];
LABEL_10:

  [(RPCompanionLinkDaemon *)self _updateAssertions];
  [(RPCompanionLinkDaemon *)self _update];
}

- (BOOL)_clientConnectionStartUnauth:(id)unauth client:(id)client publicID:(id)d xpcCnx:(id)cnx error:(id *)error
{
  unauthCopy = unauth;
  clientCopy = client;
  dCopy = d;
  cnxCopy = cnx;
  bonjourDevice = [unauthCopy bonjourDevice];
  if (!bonjourDevice)
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001120EC(unauthCopy);
      if (error)
      {
        goto LABEL_25;
      }
    }

    else if (error)
    {
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  v17 = [(NSMutableDictionary *)self->_tcpClientConnections count];
  v18 = &v17[[(NSMutableDictionary *)self->_tcpOnDemandClientConnections count]];
  if (v18 >= self->_prefMaxConnectionCount)
  {
    if (dword_1001D3228 <= 60 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100111F60(v18, unauthCopy);
      if (error)
      {
        goto LABEL_24;
      }
    }

    else if (error)
    {
LABEL_24:
      prefMaxConnectionCount = self->_prefMaxConnectionCount;
LABEL_25:
      RPErrorF();
      *error = v34 = 0;
      goto LABEL_31;
    }

LABEL_30:
    v34 = 0;
    goto LABEL_31;
  }

  v19 = objc_alloc_init(RPConnection);
  appID = [clientCopy appID];
  [v19 setAppID:appID];

  [v19 setBonjourPeerDevice:bonjourDevice];
  [v19 setClient:clientCopy];
  [v19 setControlFlags:{objc_msgSend(clientCopy, "controlFlags") | objc_msgSend(v19, "controlFlags") | 0x200}];
  [v19 setDispatchQueue:self->_dispatchQueue];
  [v19 setFlags:1];
  v21 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v19 setIdentityDaemon:v21];

  v22 = [NSString alloc];
  v23 = self->_cnxIDLast + 1;
  self->_cnxIDLast = v23;
  v24 = [v22 initWithFormat:@"%@Cnx-%u", @"CLink", v23];
  [v19 setLabel:v24];

  [v19 setLocalDeviceInfo:self->_localDeviceInfo];
  [v19 setNetLinkManager:self->_netLinkManager];
  password = [clientCopy password];
  [v19 setPassword:password];

  [v19 setPeerIdentifier:dCopy];
  [v19 setPresent:1];
  [cnxCopy setNetCnx:v19];
  [(RPCompanionLinkDaemon *)self _configureConnectionForPairing:v19];
  passwordType = [clientCopy passwordType];
  if (passwordType)
  {
    v27 = passwordType;
    if (passwordType != 3)
    {
      allowedMACAddresses = [clientCopy allowedMACAddresses];
      [v19 setAllowedMACAddresses:allowedMACAddresses];

      pairSetupACL = [clientCopy pairSetupACL];
      [v19 setPairSetupACL:pairSetupACL];

      [v19 setPasswordType:v27];
      if (([clientCopy internalAuthFlags] & 8) != 0)
      {
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_1000297C0;
        v48[3] = &unk_1001AB2C8;
        v49 = cnxCopy;
        [v19 setAuthCompletionHandler:v48];
      }

      if (([clientCopy internalAuthFlags] & 4) != 0)
      {
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_1000297CC;
        v45[3] = &unk_1001AB568;
        v46 = cnxCopy;
        v47 = v19;
        [v19 setPromptForPasswordHandler:v45];
      }
    }
  }

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100029820;
  v42[3] = &unk_1001AB5B8;
  v42[4] = self;
  v42[5] = v19;
  v30 = dCopy;
  v43 = v30;
  v44 = cnxCopy;
  [v19 setInvalidationHandler:v42];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100029860;
  v41[3] = &unk_1001AB4F0;
  v41[4] = self;
  v41[5] = v19;
  [v19 setReceivedEventHandler:v41];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10002987C;
  v40[3] = &unk_1001AB518;
  v40[4] = self;
  v40[5] = v19;
  [v19 setReceivedRequestHandler:v40];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10002989C;
  v39[3] = &unk_1001AB540;
  v39[4] = self;
  v39[5] = v19;
  [v19 setStateChangedHandler:v39];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000298AC;
  v38[3] = &unk_1001AB488;
  v38[4] = v19;
  v38[5] = self;
  [v19 setHomeKitUserIdentifierHandler:v38];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100029944;
  v37[3] = &unk_1001AB488;
  v37[4] = self;
  v37[5] = v19;
  [v19 setProxyDeviceUpdateHandler:v37];
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100112028(unauthCopy);
  }

  tcpClientConnections = self->_tcpClientConnections;
  if (!tcpClientConnections)
  {
    v32 = objc_alloc_init(NSMutableDictionary);
    v33 = self->_tcpClientConnections;
    self->_tcpClientConnections = v32;

    tcpClientConnections = self->_tcpClientConnections;
  }

  [(NSMutableDictionary *)tcpClientConnections setObject:v19 forKeyedSubscript:v30];
  [v19 activate];
  [(RPCompanionLinkDaemon *)self _updateAssertions];

  v34 = 1;
LABEL_31:

  return v34;
}

- (void)_clientConnectionEndedUnauth:(id)unauth publicID:(id)d
{
  unauthCopy = unauth;
  dCopy = d;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    v8 = dCopy;
    v9 = unauthCopy;
    LogPrintF();
  }

  v7 = [(NSMutableDictionary *)self->_tcpClientConnections objectForKeyedSubscript:dCopy, v8, v9];
  if (v7 == unauthCopy)
  {
    [(NSMutableDictionary *)self->_tcpClientConnections setObject:0 forKeyedSubscript:dCopy];
  }

  [(RPCompanionLinkDaemon *)self _updateAssertions];
  [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateAllDevices];
}

- (void)_clientOnDemandDiscoveryStart:(id)start xpcCnx:(id)cnx
{
  startCopy = start;
  cnxCopy = cnx;
  discoveryTimer = [cnxCopy discoveryTimer];

  if (!discoveryTimer)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001121F0();
    }

    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    [cnxCopy setDiscoveryTimer:v10];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100029CBC;
    v21 = &unk_1001AB5B8;
    v22 = v10;
    selfCopy = self;
    v11 = startCopy;
    v24 = v11;
    v12 = cnxCopy;
    v25 = v12;
    dispatch_source_set_event_handler(v10, &v18);
    CUDispatchTimerSet();
    dispatch_activate(v10);
    client = [v12 client];
    [v11 setNearbyActionV2Type:{-[RPCompanionLinkDaemon _controlFlagsToNearbyActionType:](self, "_controlFlagsToNearbyActionType:", objc_msgSend(client, "controlFlags"))}];

    bleTargetData = [v11 bleTargetData];
    if (bleTargetData && [v11 nearbyActionV2Type])
    {
      [v12 setNeedsNearbyActionV2:1];
      bleNearbyActionV2Device = self->_bleNearbyActionV2Device;
      p_bleNearbyActionV2Device = &self->_bleNearbyActionV2Device;
      if (!bleNearbyActionV2Device)
      {
        goto LABEL_14;
      }
    }

    else
    {
      [v12 setNeedsCLink:1];
      bleNeedsCLinkDevice = self->_bleNeedsCLinkDevice;
      p_bleNearbyActionV2Device = &self->_bleNeedsCLinkDevice;
      if (!bleNeedsCLinkDevice)
      {
LABEL_14:
        objc_storeStrong(p_bleNearbyActionV2Device, start);
      }
    }

    goto LABEL_16;
  }

  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001121B0();
  }

LABEL_16:
}

- (void)_clientOnDemandAWDLDiscoveryStartForXPC:(id)c
{
  cCopy = c;
  client = [cCopy client];
  [client awdlGuestDiscoveryTimeout];

  discoveryTimer = [cCopy discoveryTimer];

  if (discoveryTimer)
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112230();
    }

    discoveryTimer2 = [cCopy discoveryTimer];
    dispatch_source_cancel(discoveryTimer2);

    [cCopy setDiscoveryTimer:0];
    [cCopy setNeedsCLink:0];
  }

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10011224C();
  }

  self->_enableAWDLGuestDiscovery = 1;
  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  [cCopy setDiscoveryTimer:v8];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100029EDC;
  handler[3] = &unk_1001AB130;
  handler[4] = v8;
  v11 = cCopy;
  selfCopy = self;
  v9 = cCopy;
  dispatch_source_set_event_handler(v8, handler);
  CUDispatchTimerSet();
  dispatch_activate(v8);
  [v9 setNeedsCLink:1];
  [(RPCompanionLinkDaemon *)self _update];
}

- (void)_clientOnDemandAWDLDiscoveryTimedOutForDevice:(id)device xpcCnx:(id)cnx
{
  deviceCopy = device;
  cnxCopy = cnx;
  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001122A8();
  }

  [cnxCopy setDiscoveryTimer:0];
  [cnxCopy setNeedsCLink:0];
  [cnxCopy setNeedsNearbyActionV2:0];
  daemonDevice = [cnxCopy daemonDevice];
  v8 = [daemonDevice isEqualToDevice:self->_bleNearbyActionV2Device];

  if (v8)
  {
    [(RPCompanionLinkDaemon *)self _clientBLENearbyActionV2AdvertiserRestart];
  }

  else
  {
    daemonDevice2 = [cnxCopy daemonDevice];
    v10 = [daemonDevice2 isEqualToDevice:self->_bleNeedsCLinkDevice];

    if (v10)
    {
      [(RPCompanionLinkDaemon *)self _clientBLENeedsCLinkAdvertiserRestart];
    }
  }

  netCnx = [cnxCopy netCnx];
  v12 = RPErrorF();
  [netCnx invalidateWithError:v12];

  [cnxCopy setNetCnx:0];
  [(RPCompanionLinkDaemon *)self _updateForXPCClientChange];
}

- (void)_clientPurgeUnauthAWDLDevices
{
  v3 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_unauthDevices;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(NSMutableDictionary *)self->_unauthDevices objectForKeyedSubscript:v9, v13];
        v11 = v10;
        if (v10 && ([v10 statusFlags] & 8) != 0)
        {
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_1001122E8();
          }

          [v11 setStatusFlags:{objc_msgSend(v11, "statusFlags") & 0xFFFFFFFFFFFFFFF3}];
          [v3 addObject:v9];
          [(RPCompanionLinkDaemon *)self _clientReportLostDevice:v11];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v12 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v6 = v12;
    }

    while (v12);
  }

  [(NSMutableDictionary *)self->_unauthDevices removeObjectsForKeys:v3];
}

- (id)logDictionaryOfStringArrays:(id)arrays withPrefix:(id)prefix
{
  arraysCopy = arrays;
  prefixCopy = prefix;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = arraysCopy;
  v26 = [arraysCopy countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v26)
  {
    v6 = 0;
    v7 = 0;
    v25 = *v34;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v33 + 1) + 8 * i);
        v9 = [obj objectForKeyedSubscript:{v20, v22, v23}];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v30;
          v14 = v6;
          while (2)
          {
            v15 = 0;
            v16 = v14 + 1;
            v17 = v7;
            do
            {
              v6 = v16;
              if (*v30 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v21 = *(*(&v29 + 1) + 8 * v15);
              NSAppendPrintF();
              v7 = v17;

              if (v16 >= 0x11)
              {
                v20 = ([v10 count] - v16);
                NSAppendPrintF();
                v18 = v7;

                v7 = v18;
                goto LABEL_16;
              }

              v15 = v15 + 1;
              ++v16;
              v17 = v7;
            }

            while (v12 != v15);
            v12 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:{16, v21}];
            v14 = v6;
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        if (dword_1001D3228 <= 10 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          v22 = v27;
          v23 = v7;
          v20 = prefixCopy;
          LogPrintF();
        }
      }

      v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v26);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_clientReportLocalDevice:(id)device xpcCnx:(id)cnx
{
  if (device)
  {
    deviceCopy = device;
    xpcCnx = [cnx xpcCnx];
    remoteObjectProxy = [xpcCnx remoteObjectProxy];
    [remoteObjectProxy companionLinkLocalDeviceUpdated:deviceCopy];
  }
}

- (void)_clientReportFoundDevice:(id)device
{
  deviceCopy = device;
  [(RPCompanionLinkDaemon *)self _reportXPCMatchingDiscoveryCLink];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) reportFoundDevice:deviceCopy outReason:{0, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_clientReportLostDevice:(id)device cnx:(id)cnx
{
  deviceCopy = device;
  [(RPCompanionLinkDaemon *)self _reportXPCMatchingDiscoveryCLink];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_xpcConnections;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) reportLostDevice:{deviceCopy, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_clientUINoteProcessPending
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000029CC;
  v16 = sub_10000317C;
  v17 = 0;
  uiNoteDevices = self->_uiNoteDevices;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002AAFC;
  v11[3] = &unk_1001AB5E0;
  v11[4] = &v12;
  [(NSMutableDictionary *)uiNoteDevices enumerateKeysAndObjectsUsingBlock:v11];
  if (v13[5])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    xpcMatchingMap = self->_xpcMatchingMap;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002AB74;
    v6[3] = &unk_1001AAF98;
    v6[4] = &v7;
    [(NSMutableDictionary *)xpcMatchingMap enumerateKeysAndObjectsUsingBlock:v6];
    if (v8[3])
    {
      [(RPCompanionLinkDaemon *)self _clientUINoteStart:v13[5]];
    }

    else if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v5 = v13[5];
      LogPrintF();
    }

    _Block_object_dispose(&v7, 8);
  }

  _Block_object_dispose(&v12, 8);
}

- (void)_clientUINoteStart:(id)start
{
  startCopy = start;
  _getAppleID = [(RPCompanionLinkDaemon *)self _getAppleID];
  if (_getAppleID)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112328();
    }

    [startCopy setUiTriggered:1];
    v6 = objc_alloc_init(CUUserNotificationSession);
    uiNoteSession = self->_uiNoteSession;
    self->_uiNoteSession = v6;
    v8 = v6;

    [(CUUserNotificationSession *)v8 setBundleID:@"com.apple.RPUserNotificationAppSignIn"];
    [(CUUserNotificationSession *)v8 setCategoryID:@"RPUserNotificationAppSignIn"];
    [(CUUserNotificationSession *)v8 setDispatchQueue:self->_dispatchQueue];
    [(CUUserNotificationSession *)v8 setFlags:1];
    effectiveIdentifier = [startCopy effectiveIdentifier];
    [(CUUserNotificationSession *)v8 setIdentifier:effectiveIdentifier];

    [(CUUserNotificationSession *)v8 setLabel:@"CLink"];
    [(CUUserNotificationSession *)v8 setTitleKey:@"APP_SIGN_IN_TITLE"];
    [(CUUserNotificationSession *)v8 setBodyKey:@"APP_SIGN_IN_BODY_FORMAT"];
    v13 = _getAppleID;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    [(CUUserNotificationSession *)v8 setBodyArguments:v10];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002ADDC;
    v11[3] = &unk_1001AB608;
    v11[4] = v8;
    v11[5] = self;
    v12 = startCopy;
    [(CUUserNotificationSession *)v8 setActionHandler:v11];
    [(CUUserNotificationSession *)v8 activate];
  }

  else
  {
    sub_100112368(dword_1001D3228 < 31, dword_1001D3228);
  }
}

- (void)_clientUINoteAction:(int)action error:(id)error device:(id)device
{
  errorCopy = error;
  deviceCopy = device;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    if (action > 5)
    {
      v9 = "?";
    }

    else
    {
      v9 = off_1001AC058[action];
    }

    uiNoteSession = self->_uiNoteSession;
    v14 = deviceCopy;
    v11 = v9;
    v12 = errorCopy;
    LogPrintF();
  }

  if (action == 1)
  {
    [(RPCompanionLinkDaemon *)self _reportXPCMatchingDiscoveryUINoteDevice:deviceCopy];
  }

  [(CUUserNotificationSession *)self->_uiNoteSession invalidate:v11];
  v10 = self->_uiNoteSession;
  self->_uiNoteSession = 0;

  [(RPCompanionLinkDaemon *)self _clientUINoteProcessPending];
}

- (BOOL)createDeviceToEndpointMappingForDeviceID:(id)d endpointUUID:(id *)iD error:(id *)error
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = [(RPCompanionLinkDaemon *)self findDeviceFromID:dCopy];
  if (!v9)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001123BC();
      if (error)
      {
        goto LABEL_9;
      }
    }

    else if (error)
    {
LABEL_9:
      RPErrorF();
      *error = v11 = 0;
      goto LABEL_14;
    }

    v11 = 0;
    goto LABEL_14;
  }

  v10 = +[NSUUID UUID];
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    v15 = v9;
    v16 = v10;
    LogPrintF();
  }

  if (iD)
  {
    v12 = v10;
    *iD = v10;
  }

  v13 = [RPNWEndpoint dduiEndpointsKey:v15];
  v11 = [RPNWEndpoint addEndpointMapping:v9 endpointID:v10 applicationService:@"NA" discoverySessionID:v13 shouldAutomapListener:0];

LABEL_14:
  return v11;
}

- (void)_serverNearbyActionV2DiscoveryEnsureStarted
{
  if (!self->_bleNearbyActionV2Discovery)
  {
    v11[5] = v5;
    v11[6] = v4;
    v11[9] = v2;
    v11[10] = v3;
    v7 = objc_alloc_init(RPNearbyActionV2Discovery);
    bleNearbyActionV2Discovery = self->_bleNearbyActionV2Discovery;
    self->_bleNearbyActionV2Discovery = v7;

    [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery setDiscoveryFlags:0x402000000];
    [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery setDispatchQueue:self->_dispatchQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002B27C;
    v11[3] = &unk_1001AA970;
    v11[4] = self;
    [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery setUpdateHandler:v11];
    v9 = self->_bleNearbyActionV2Discovery;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002B2BC;
    v10[3] = &unk_1001AB2C8;
    v10[4] = self;
    [(RPNearbyActionV2Discovery *)v9 activateWithCompletion:v10];
  }
}

- (void)_serverNearbyInfoV2DiscoveryEnsureStarted
{
  if (!self->_bleNearbyInfoV2Discovery)
  {
    v12[5] = v5;
    v12[6] = v4;
    v12[9] = v2;
    v12[10] = v3;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001123FC();
    }

    v7 = objc_alloc_init(RPNearbyInfoV2Discovery);
    bleNearbyInfoV2Discovery = self->_bleNearbyInfoV2Discovery;
    self->_bleNearbyInfoV2Discovery = v7;

    [(RPNearbyInfoV2Discovery *)self->_bleNearbyInfoV2Discovery setDiscoveryType:17];
    [(RPNearbyInfoV2Discovery *)self->_bleNearbyInfoV2Discovery setDispatchQueue:self->_dispatchQueue];
    [(RPNearbyInfoV2Discovery *)self->_bleNearbyInfoV2Discovery setUseCase:131094];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002B49C;
    v12[3] = &unk_1001AB630;
    v12[4] = self;
    [(RPNearbyInfoV2Discovery *)self->_bleNearbyInfoV2Discovery setDeviceFoundHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002B500;
    v11[3] = &unk_1001AB630;
    v11[4] = self;
    [(RPNearbyInfoV2Discovery *)self->_bleNearbyInfoV2Discovery setDeviceLostHandler:v11];
    v9 = self->_bleNearbyInfoV2Discovery;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002B56C;
    v10[3] = &unk_1001AB2C8;
    v10[4] = self;
    [(RPNearbyInfoV2Discovery *)v9 activateWithCompletion:v10];
  }
}

- (void)_serverBLENeedsCLinkScannerDeviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  uUIDString = [identifier UUIDString];

  idsIdentifier = [foundCopy idsIdentifier];
  if (!uUIDString)
  {
    sub_1001125D4();
    goto LABEL_42;
  }

  v8 = [(NSMutableDictionary *)self->_bleNeedsCLinkDevices objectForKeyedSubscript:uUIDString];
  if ([foundCopy deviceActionType] != 51)
  {
    if (v8)
    {
      [(NSMutableDictionary *)self->_bleNeedsCLinkDevices setObject:0 forKeyedSubscript:uUIDString];
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100112514();
      }
    }

    goto LABEL_41;
  }

  bleNeedsCLinkDevices = self->_bleNeedsCLinkDevices;
  if (!bleNeedsCLinkDevices)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = self->_bleNeedsCLinkDevices;
    self->_bleNeedsCLinkDevices = v10;

    bleNeedsCLinkDevices = self->_bleNeedsCLinkDevices;
  }

  [(NSMutableDictionary *)bleNeedsCLinkDevices setObject:foundCopy forKeyedSubscript:uUIDString];
  if (!v8)
  {
    v29 = uUIDString;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112594();
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    selfCopy = self;
    allValues = [(NSMutableDictionary *)self->_bleNeedsCLinkDevices allValues];
    v13 = [allValues countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (!v13)
    {
LABEL_34:

      self = selfCopy;
      uUIDString = v29;
LABEL_40:
      v8 = 0;
      goto LABEL_41;
    }

    v14 = v13;
    v15 = *v31;
LABEL_20:
    v16 = 0;
    while (1)
    {
      if (*v31 != v15)
      {
        objc_enumerationMutation(allValues);
      }

      v17 = *(*(&v30 + 1) + 8 * v16);
      idsIdentifier2 = [v17 idsIdentifier];
      v19 = idsIdentifier;
      v20 = v19;
      if (idsIdentifier2 == v19)
      {
        break;
      }

      if ((idsIdentifier == 0) != (idsIdentifier2 != 0))
      {
        v21 = [idsIdentifier2 isEqual:v19];

        if (v21)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }

LABEL_32:
      if (v14 == ++v16)
      {
        v14 = [allValues countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v14)
        {
          goto LABEL_20;
        }

        goto LABEL_34;
      }
    }

LABEL_28:
    isBLEDeviceReplaced = [v17 isBLEDeviceReplaced];

    if (isBLEDeviceReplaced)
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        v26 = v17;
        v27 = foundCopy;
        LogPrintF();
      }

      self = selfCopy;
      v23 = selfCopy->_bleNeedsCLinkDevices;
      identifier2 = [v17 identifier];
      uUIDString2 = [identifier2 UUIDString];
      [(NSMutableDictionary *)v23 setObject:0 forKeyedSubscript:uUIDString2];

      uUIDString = v29;
      goto LABEL_40;
    }

    goto LABEL_32;
  }

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100112554();
  }

LABEL_41:
  [(RPCompanionLinkDaemon *)self _update];

LABEL_42:
}

- (void)_serverBLENeedsCLinkScannerDeviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    v6 = [(NSMutableDictionary *)self->_bleNeedsCLinkDevices objectForKeyedSubscript:uUIDString];
    if (v6)
    {
      if ([lostCopy isBLEDeviceReplaced])
      {
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_10011268C();
        }

        [v6 setIsBLEDeviceReplaced:1];
        [(RPCompanionLinkDaemon *)self _schedulePendingLostNeedsCLinkDeviceTimer];
      }

      else
      {
        [(NSMutableDictionary *)self->_bleNeedsCLinkDevices setObject:0 forKeyedSubscript:uUIDString];
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_10011264C();
        }

        [(RPCompanionLinkDaemon *)self _update];
      }
    }
  }

  else
  {
    sub_1001126CC();
  }
}

- (void)_schedulePendingLostNeedsCLinkDeviceTimer
{
  if (!self->_pendingLostNeedsCLinkDevicesTimer)
  {
    handler[7] = v2;
    handler[8] = v3;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112744();
    }

    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    pendingLostNeedsCLinkDevicesTimer = self->_pendingLostNeedsCLinkDevicesTimer;
    self->_pendingLostNeedsCLinkDevicesTimer = v5;

    v7 = self->_pendingLostNeedsCLinkDevicesTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10002BCBC;
    handler[3] = &unk_1001AA970;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    v8 = self->_pendingLostNeedsCLinkDevicesTimer;
    CUDispatchTimerSet();
    dispatch_activate(self->_pendingLostNeedsCLinkDevicesTimer);
  }
}

- (void)_processPendingLostNeedsCLinkDevices
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_bleNeedsCLinkDevices allValues];
  v4 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if ([v9 isBLEDeviceReplaced])
        {
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_100112760();
          }

          bleNeedsCLinkDevices = self->_bleNeedsCLinkDevices;
          identifier = [v9 identifier];
          uUIDString = [identifier UUIDString];
          [(NSMutableDictionary *)bleNeedsCLinkDevices setObject:0 forKeyedSubscript:uUIDString];

          v6 = 1;
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v13 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
      v5 = v13;
    }

    while (v13);

    if (v6)
    {
      [(RPCompanionLinkDaemon *)self _update];
    }
  }

  else
  {
  }
}

- (void)_serverBonjourEnsureStarted
{
  if (self->_bonjourAdvertiser)
  {

    [(RPCompanionLinkDaemon *)self _serverBonjourUpdateTXT];
  }

  else if (self->_btAdvAddrData)
  {
    if ([(CUTCPServer *)self->_tcpServer tcpListeningPort]<= 0)
    {
      if (dword_1001D3228 <= 20 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001127BC();
      }
    }

    else
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001127A0();
      }

      v3 = objc_alloc_init(CUBonjourAdvertiser);
      bonjourAdvertiser = self->_bonjourAdvertiser;
      self->_bonjourAdvertiser = v3;

      [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setDispatchQueue:self->_dispatchQueue];
      [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setDomain:@"local."];
      [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setLabel:@"CLink"];
      [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setPort:[(CUTCPServer *)self->_tcpServer tcpListeningPort]];
      [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setServiceType:@"_companion-link._tcp"];
      [(RPCompanionLinkDaemon *)self _serverBonjourUpdateTXT];
      v5 = self->_bonjourAdvertiser;

      [(CUBonjourAdvertiser *)v5 activate];
    }
  }

  else if (dword_1001D3228 <= 20 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001127D8();
  }
}

- (id)_serverBonjourAuthTagString
{
  v3 = self->_deviceAuthTagStr;
  if (!v3)
  {
    v4 = [(RPCompanionLinkDaemon *)self _serverBonjourAuthTagStringWithData:self->_btAdvAddrData];
    deviceAuthTagStr = self->_deviceAuthTagStr;
    self->_deviceAuthTagStr = v4;

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112810(&self->_deviceAuthTagStr);
    }

    v3 = self->_deviceAuthTagStr;
  }

  return v3;
}

- (id)_serverBonjourAuthTagStringWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v4 = +[RPIdentityDaemon sharedIdentityDaemon];
    v5 = [v4 identityOfSelfAndReturnError:0];

    if (v5)
    {
      v6 = [v5 authTagForData:dataCopy type:1 error:0];
      v7 = v6;
      if (v6)
      {
        [v6 bytes];
        [v7 length];
        [v7 length];
        v8 = NSPrintF();
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_serverBonjourTempAuthTagStringWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v4 = +[RPIdentityDaemon sharedIdentityDaemon];
    v5 = [v4 identityOfTemporarySelfAndReturnError:0];

    if (v5)
    {
      v6 = [v5 authTagForData:dataCopy type:1 error:0];
      v7 = v6;
      if (v6)
      {
        [v6 bytes];
        [v7 length];
        [v7 length];
        v8 = NSPrintF();
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_serverBonjourUpdateTXT
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [(RPCompanionLinkDaemon *)self _homeKitUpdateInfo:0];
  _serverBonjourAuthTagString = [(RPCompanionLinkDaemon *)self _serverBonjourAuthTagString];
  if (_serverBonjourAuthTagString)
  {
    [v3 setObject:_serverBonjourAuthTagString forKeyedSubscript:@"rpAD"];
  }

  btAdvAddrStr = self->_btAdvAddrStr;
  if (btAdvAddrStr)
  {
    [v3 setObject:btAdvAddrStr forKeyedSubscript:@"rpBA"];
  }

  v6 = [(RPCompanionLinkDaemon *)self _discoveryNonceOrRotate:0];
  v7 = v6;
  if (v6)
  {
    bytes = [v6 bytes];
    v9 = [v7 length];
    v47 = [v7 length];
    v42 = bytes;
    v10 = NSPrintF();
    [v3 setObject:v10 forKeyedSubscript:{@"rpHN", v42, v9, v47}];
  }

  DeviceClass = GestaltGetDeviceClass();
  v50 = 0;
  RPBonjourFlagsUpdateWithRPCompanionLinkFlags(&v50, [(RPCompanionLinkDevice *)self->_localDeviceInfo flags]);
  v12 = v50;
  if (DeviceClass == 7)
  {
    v12 = v50 | 0x40000;
  }

  v13 = v12 & 0xFFFFFFFFFFBFFFFDLL;
  v14 = 2;
  if (!self->_prefCommunal)
  {
    v14 = 0;
  }

  v15 = 0x400000;
  if (!self->_prefCoreDeviceEnabled)
  {
    v15 = 0;
  }

  v16 = v15 | v14 | v13;
  v50 = v16;
  if (DeviceClass == 100)
  {
    v17 = v16 & 0xFFFFFFFFFFDFFFFFLL;
    v18 = 0x200000;
    if (!self->_prefCoreDevicePaired)
    {
      v18 = 0;
    }

    v50 = v18 | v17;
    sub_10001BA9C(100);
    goto LABEL_18;
  }

  if (sub_10001BA9C(DeviceClass))
  {
LABEL_18:
    v19 = v50 | 0x20000;
    goto LABEL_20;
  }

  v19 = v50;
LABEL_20:
  v20 = v19 & 0xFFFFFFFFFFF6DFFFLL;
  v21 = 0x80000;
  if (!self->_serverBonjourInfraPairing)
  {
    v21 = 0;
  }

  v22 = v20 | v21;
  v23 = 0x2000;
  if (!self->_prefMediaControlEnabled)
  {
    v23 = 0;
  }

  v24 = 0x10000;
  if (!self->_prefTouchEnabled)
  {
    v24 = 0;
  }

  v50 = v23 | v24 | v22;
  statusFlags = [(RPCompanionLinkDevice *)self->_localDeviceInfo statusFlags];
  v50 = v50 & 0xFFFFFFFFFFFFBFFFLL | (((statusFlags >> 16) & 1) << 14);
  statusFlags2 = [(RPCompanionLinkDevice *)self->_localDeviceInfo statusFlags];
  v27 = v50 & 0xFFFFFFFFFF7FFFFFLL | (((statusFlags2 >> 34) & 1) << 23);
  v50 = v27;
  if (v27)
  {
    v43 = v27;
    v28 = NSPrintF();
    [v3 setObject:v28 forKeyedSubscript:{@"rpFl", v43}];
  }

  v29 = self->_homeKitAuthTag;

  if (v29)
  {
    bytes2 = [(NSData *)v29 bytes];
    v31 = [(NSData *)v29 length];
    v48 = [(NSData *)v29 length];
    v44 = bytes2;
    v32 = NSPrintF();
    [v3 setObject:v32 forKeyedSubscript:{@"rpHA", v44, v31, v48, v50}];
  }

  v33 = self->_homeKitRotatingID;

  if (v33)
  {
    bytes3 = [(NSData *)v33 bytes];
    v35 = [(NSData *)v33 length];
    v49 = [(NSData *)v33 length];
    v45 = bytes3;
    v36 = NSPrintF();
    [v3 setObject:v36 forKeyedSubscript:{@"rpHI", v45, v35, v49}];
  }

  _localMediaAccessControlSetting = [(RPCompanionLinkDaemon *)self _localMediaAccessControlSetting];
  if (_localMediaAccessControlSetting - 1 >= 2)
  {
    v38 = 0;
  }

  else
  {
    v38 = _localMediaAccessControlSetting;
  }

  v46 = v38;
  v39 = NSPrintF();
  [v3 setObject:v39 forKeyedSubscript:{@"rpMac", v46}];

  if (self->_prefCommunal)
  {
    model = [(RPCompanionLinkDevice *)self->_localDeviceInfo model];
    if (model)
    {
      [v3 setObject:model forKeyedSubscript:@"rpMd"];
    }
  }

  [v3 setObject:@"715.2" forKeyedSubscript:@"rpVr"];
  if ([(RPCompanionLinkDaemon *)self _serverShouldAdvertiseIdentifiableInfoWhenUnpairedForAirPlayWithLinkType:6])
  {
    mediaRouteIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaRouteIdentifier];
    if (mediaRouteIdentifier)
    {
      [v3 setObject:mediaRouteIdentifier forKeyedSubscript:@"rpMRtID"];
    }
  }

  [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setTxtDictionary:v3];
}

- (void)_serverBonjourAWDLAdvertiserEnsureStarted
{
  if (self->_bonjourAWDLAdvertiser)
  {

    [(RPCompanionLinkDaemon *)self _serverBonjourAWDLAdvertiserUpdateTXT];
  }

  else
  {
    v11 = self->_btAdvAddrData;
    if (v11)
    {
      tcpListeningPort = [(CUTCPServer *)self->_tcpServer tcpListeningPort];
      if (tcpListeningPort <= 0)
      {
        if (dword_1001D3228 <= 20 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100112A18();
        }
      }

      else
      {
        v4 = tcpListeningPort;
        if (GestaltGetDeviceClass() != 11)
        {
          if (-[NSMutableSet count](self->_needsAWDLRequestIdentifiers, "count") || (-[RPNearbyActionV2Discovery actionV2Devices](self->_bleNearbyActionV2Discovery, "actionV2Devices"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6))
          {
            v7 = +[RPWiFiP2PTransaction sharedInstance];
            [v7 activateForClient:@"Ensemble"];
          }
        }

        v8 = objc_alloc_init(CUBonjourAdvertiser);
        bonjourAWDLAdvertiser = self->_bonjourAWDLAdvertiser;
        self->_bonjourAWDLAdvertiser = v8;

        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setAdvertiseFlags:2048];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setDispatchQueue:self->_dispatchQueue];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setDomain:@"local."];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setInterfaceName:@"awdl0"];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setLabel:@"CLink"];
        v10 = NSPrintF();
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setName:v10, v11];

        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setPort:v4];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setServiceType:@"_companion-link._tcp"];
        [(RPCompanionLinkDaemon *)self _serverBonjourAWDLAdvertiserUpdateTXT];
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_1001129B4(&self->_bonjourAWDLAdvertiser);
        }

        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser activate];
      }
    }

    else if (dword_1001D3228 <= 20 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112A34();
    }
  }
}

- (void)_serverBonjourAWDLAdvertiserUpdateTXT
{
  if (!self->_deviceAWDLRandomID)
  {
    v3 = NSRandomData();
    deviceAWDLRandomID = self->_deviceAWDLRandomID;
    self->_deviceAWDLRandomID = v3;

    if ([(NSData *)self->_deviceAWDLRandomID length]!= 6)
    {
      return;
    }
  }

  v20 = objc_alloc_init(NSMutableDictionary);
  v5 = self->_deviceAWDLRandomID;
  v6 = v5;
  if (v5)
  {
    bytes = [(NSData *)v5 bytes];
    v7 = NSPrintF();
    if (v7)
    {
      [v20 setObject:v7 forKeyedSubscript:{@"rpBA", bytes}];
    }

    v8 = [(RPCompanionLinkDaemon *)self _serverBonjourAuthTagStringWithData:v6, bytes];
    if (v8)
    {
      [v20 setObject:v8 forKeyedSubscript:@"rpAD"];
    }

    v9 = [(RPCompanionLinkDaemon *)self _serverBonjourTempAuthTagStringWithData:v6];
    if (v9)
    {
      [v20 setObject:v9 forKeyedSubscript:@"rpTAD"];
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v17 = v7;
      v19 = v8;
      LogPrintF();
    }

    v10 = [(RPCompanionLinkDevice *)self->_localDeviceInfo statusFlags:v17];
    v11 = 18432;
    if ((v10 & 0x10000) == 0)
    {
      v11 = 2048;
    }

    if (self->_bonjourAWDLAdvertiseForPairing)
    {
      v12 = v11 | 0x80000;
    }

    else
    {
      v12 = v11;
    }

    v18 = v12;
    v13 = NSPrintF();
    [v20 setObject:v13 forKeyedSubscript:{@"rpFl", v18}];

    [v20 setObject:@"715.2" forKeyedSubscript:@"rpVr"];
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112A50(&self->_bonjourAWDLAdvertiseForPairing);
    }

    if (GestaltGetDeviceClass() != 4 && !self->_bonjourAWDLAdvertiseForPairing)
    {
      goto LABEL_31;
    }

    v14 = GestaltCopyAnswer();
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112AAC();
      if (!v14)
      {
        goto LABEL_30;
      }
    }

    else if (!v14)
    {
LABEL_30:

LABEL_31:
      if ([(RPCompanionLinkDaemon *)self _serverShouldAdvertiseIdentifiableInfoWhenUnpairedForAirPlayWithLinkType:4])
      {
        mediaRouteIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaRouteIdentifier];
        if (mediaRouteIdentifier)
        {
          [v20 setObject:mediaRouteIdentifier forKeyedSubscript:@"rpMRtID"];
        }
      }

      [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setTxtDictionary:v20];

      goto LABEL_36;
    }

    [v20 setObject:v14 forKeyedSubscript:@"rpNm"];
    goto LABEL_30;
  }

LABEL_36:
}

- (void)_serverReceivedNeedsAWDLEvent:(id)event event:(id)a4
{
  eventCopy = event;
  v7 = a4;
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (v8)
  {
    v9 = NSDictionaryGetNSNumber();
    bOOLValue = [v9 BOOLValue];

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v11 = "disable";
      if (bOOLValue)
      {
        v11 = "enable";
      }

      v21 = v11;
      v22 = v8;
      LogPrintF();
    }

    needsAWDLRequestIdentifiers = self->_needsAWDLRequestIdentifiers;
    if (bOOLValue)
    {
      if (needsAWDLRequestIdentifiers)
      {
        goto LABEL_20;
      }

      v13 = +[NSMutableSet set];
      v14 = self->_needsAWDLRequestIdentifiers;
      self->_needsAWDLRequestIdentifiers = v13;

      [(NSMutableSet *)self->_needsAWDLRequestIdentifiers addObject:v8];
      if (self->_needsAWDLRequestTimer)
      {
        goto LABEL_20;
      }

      v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      needsAWDLRequestTimer = self->_needsAWDLRequestTimer;
      self->_needsAWDLRequestTimer = v15;
      v17 = v15;

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10002CF00;
      handler[3] = &unk_1001AA970;
      handler[4] = self;
      dispatch_source_set_event_handler(v17, handler);
      CUDispatchTimerSet();
      dispatch_activate(v17);
    }

    else
    {
      [(NSMutableSet *)needsAWDLRequestIdentifiers removeObject:v8];
      if ([(NSMutableSet *)self->_needsAWDLRequestIdentifiers count])
      {
        goto LABEL_20;
      }

      v18 = self->_needsAWDLRequestIdentifiers;
      self->_needsAWDLRequestIdentifiers = 0;

      v19 = self->_needsAWDLRequestTimer;
      if (!v19)
      {
        goto LABEL_20;
      }

      v17 = v19;
      dispatch_source_cancel(v17);
      v20 = self->_needsAWDLRequestTimer;
      self->_needsAWDLRequestTimer = 0;
    }

LABEL_20:
    [(RPCompanionLinkDaemon *)self _update:v21];
    goto LABEL_21;
  }

  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100112AEC();
  }

LABEL_21:
}

- (void)_serverBTAddressChanged
{
  obj = [(CUSystemMonitor *)self->_btAdvAddrMonitor rotatingIdentifierData];
  if ([obj length] == 6 && (-[NSData isEqual:](self->_btAdvAddrData, "isEqual:", obj) & 1) == 0)
  {
    objc_storeStrong(&self->_btAdvAddrData, obj);
    v3 = obj;
    bytes = [obj bytes];
    v4 = NSPrintF();
    btAdvAddrStr = self->_btAdvAddrStr;
    self->_btAdvAddrStr = v4;

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112C1C(obj);
    }

    deviceAuthTagStr = self->_deviceAuthTagStr;
    self->_deviceAuthTagStr = 0;

    v7 = [(RPCompanionLinkDaemon *)self _discoveryNonceOrRotate:1, bytes];
    [(RPCompanionLinkDaemon *)self _homeKitUpdateInfo:1];
    [(RPCompanionLinkDaemon *)self _update];
  }
}

- (BOOL)_serverShouldAdvertiseIdentifiableInfoWhenUnpairedForAirPlayWithLinkType:(int)type
{
  Int64 = CFPrefs_GetInt64();
  v5 = CFPrefs_GetInt64();
  v6 = CFPrefs_GetInt64();
  DeviceClass = GestaltGetDeviceClass();
  v8 = GestaltGetDeviceClass();
  v9 = Int64 == 1;
  if (v5 != 1)
  {
    if (DeviceClass == 4 || v8 == 100)
    {
      LODWORD(v5) = 0;
    }

    else
    {
      LODWORD(v5) = 0;
    }
  }

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (type == 6)
  {
    return DeviceClass == 4 && v9;
  }

  if (type != 4)
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112C64(type);
    }

    return 0;
  }

  return DeviceClass == 4 && v9 && v6 != 1 && ((v5 ^ 1) & 1) == 0;
}

- (void)_serverTCPEnsureStarted
{
  if (!self->_tcpServer)
  {
    v11[9] = v2;
    v11[10] = v3;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112CC4();
    }

    v5 = objc_alloc_init(CUTCPServer);
    tcpServer = self->_tcpServer;
    self->_tcpServer = v5;

    [(CUTCPServer *)self->_tcpServer setDispatchQueue:self->_dispatchQueue];
    [(CUTCPServer *)self->_tcpServer setFlags:13];
    [(CUTCPServer *)self->_tcpServer setLabel:@"CLink"];
    [(CUTCPServer *)self->_tcpServer setMaxConnectionCount:self->_prefMaxConnectionCount];
    [(CUTCPServer *)self->_tcpServer setNetLinkManager:self->_netLinkManager];
    [(CUTCPServer *)self->_tcpServer setConnectionPrepareHandler:&stru_1001AB6B8];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002D55C;
    v11[3] = &unk_1001AB6E0;
    v11[4] = self;
    [(CUTCPServer *)self->_tcpServer setConnectionStartedHandler:v11];
    v7 = self->_tcpServer;
    v10 = 0;
    [(CUTCPServer *)v7 activateDirectAndReturnError:&v10];
    v8 = v10;
    if (v8)
    {
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100112CE0();
      }

      [(CUTCPServer *)self->_tcpServer invalidate];
      v9 = self->_tcpServer;
      self->_tcpServer = 0;
    }

    else
    {
      [(RPCompanionLinkDaemon *)self _localDeviceUpdate];
    }
  }
}

- (id)_serverTCPHandleConnectionStarted:(id)started
{
  startedCopy = started;
  v5 = objc_alloc_init(RPConnection);
  [v5 setDispatchQueue:self->_dispatchQueue];
  [v5 setHomeKitManager:self->_homeKitManager];
  v6 = +[RPCloudDaemon sharedCloudDaemon];
  [v5 setCloudDaemon:v6];

  v7 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v5 setIdentityDaemon:v7];

  v8 = [NSString alloc];
  v9 = self->_cnxIDLast + 1;
  self->_cnxIDLast = v9;
  v10 = [v8 initWithFormat:@"%@Cnx-%u", @"CLink", v9];
  [v5 setLabel:v10];

  [v5 setLocalDeviceInfo:self->_localDeviceInfo];
  [v5 setTcpConnection:startedCopy];
  label = [v5 label];
  [startedCopy setLabel:label];

  [(RPCompanionLinkDaemon *)self _connectionConfigureCommon:v5];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10002D930;
  v23[3] = &unk_1001AB488;
  v23[4] = v5;
  v23[5] = self;
  [v5 setInvalidationHandler:v23];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002D97C;
  v22[3] = &unk_1001AB488;
  v22[4] = v5;
  v22[5] = self;
  [v5 setPeerUpdatedHandler:v22];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002DA10;
  v21[3] = &unk_1001AB4F0;
  v21[4] = v5;
  v21[5] = self;
  [v5 setReceivedEventHandler:v21];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002DAAC;
  v20[3] = &unk_1001AB518;
  v20[4] = v5;
  v20[5] = self;
  [v5 setReceivedRequestHandler:v20];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002DB5C;
  v19[3] = &unk_1001AB540;
  v19[4] = v5;
  v19[5] = self;
  [v5 setStateChangedHandler:v19];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002DBB0;
  v18[3] = &unk_1001AB488;
  v18[4] = v5;
  v18[5] = self;
  [v5 setHomeKitUserIdentifierHandler:v18];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002DC48;
  v17[3] = &unk_1001AB488;
  v17[4] = self;
  v17[5] = v5;
  [v5 setProxyDeviceUpdateHandler:v17];
  [(RPCompanionLinkDaemon *)self _configureConnectionForPairing:v5];
  tcpServerConnections = self->_tcpServerConnections;
  if (!tcpServerConnections)
  {
    v13 = objc_alloc_init(NSMutableSet);
    v14 = self->_tcpServerConnections;
    self->_tcpServerConnections = v13;

    tcpServerConnections = self->_tcpServerConnections;
  }

  [(NSMutableSet *)tcpServerConnections addObject:v5];
  [v5 activate];
  [(RPCompanionLinkDaemon *)self _updateAssertions];
  v15 = v5;

  return v5;
}

- (void)_configureConnectionForPairing:(id)pairing
{
  pairingCopy = pairing;
  if (_os_feature_enabled_impl())
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10002DD40;
    v4[3] = &unk_1001AB748;
    v5 = pairingCopy;
    [v5 setConfigurePairingHandler:v4];
  }
}

- (void)_serverTCPHandleConnectionEnded:(id)ended
{
  endedCopy = ended;
  if (([endedCopy controlFlags] & 0x200) != 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_xpcConnections;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = v6;
    v8 = *v16;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        netCnx = [v10 netCnx];
        v12 = netCnx;
        if (netCnx == endedCopy)
        {
        }

        else
        {
          session = [v10 session];
          v14 = [session cnx];

          if (v14 != endedCopy)
          {
            continue;
          }
        }

        [v10 updateErrorFlags:512];
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (!v7)
      {
LABEL_14:

        break;
      }
    }
  }

  [(NSMutableSet *)self->_tcpServerConnections removeObject:endedCopy, v15];
  [(RPCompanionLinkDaemon *)self _connectionStateChanged:0 cnx:endedCopy];
  [(RPCompanionLinkDaemon *)self _updateAssertions];
}

- (void)_serverTCPRemoveConnectionsWithIdentifier:(id)identifier exceptConnection:(id)connection
{
  identifierCopy = identifier;
  connectionCopy = connection;
  if (([connectionCopy clientMode] & 1) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(NSMutableSet *)self->_tcpServerConnections copy];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          if (v12 != connectionCopy)
          {
            peerDeviceInfo = [*(*(&v18 + 1) + 8 * v11) peerDeviceInfo];
            peerDeviceInfo2 = [connectionCopy peerDeviceInfo];
            v15 = [peerDeviceInfo isEqualToDeviceBasic:peerDeviceInfo2];

            if (v15)
            {
              if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
              {
                sub_100112DBC();
              }

              [v12 setInvalidationHandled:1];
              [(RPCompanionLinkDaemon *)self _serverTCPHandleConnectionEnded:v12];
              [v12 invalidate];
            }
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v16 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v9 = v16;
      }

      while (v16);
    }
  }
}

- (void)_bleServerEnsureStopped
{
  if (self->_bleServer && dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100112EDC();
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_bleServerConnections;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * i) invalidate];
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_bleServerConnections removeAllObjects];
  [(CUBLEServer *)self->_bleServer invalidate];
  bleServer = self->_bleServer;
  self->_bleServer = 0;
}

- (void)_bleServerHandleConnectionStarted:(id)started
{
  startedCopy = started;
  v5 = objc_alloc_init(RPConnection);
  [v5 setBleConnection:startedCopy];

  [v5 setControlFlags:512];
  [v5 setDispatchQueue:self->_dispatchQueue];
  v6 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v5 setIdentityDaemon:v6];

  v7 = [NSString alloc];
  v8 = self->_cnxIDLast + 1;
  self->_cnxIDLast = v8;
  v9 = [v7 initWithFormat:@"%@Cnx-%u", @"CLink", v8];
  [v5 setLabel:v9];

  [v5 setLocalDeviceInfo:self->_localDeviceInfo];
  [(RPCompanionLinkDaemon *)self _connectionConfigureCommon:v5];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002E810;
  v18[3] = &unk_1001AB488;
  v18[4] = v5;
  v18[5] = self;
  [v5 setInvalidationHandler:v18];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002E85C;
  v17[3] = &unk_1001AB4F0;
  v17[4] = v5;
  v17[5] = self;
  [v5 setReceivedEventHandler:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002E8F8;
  v16[3] = &unk_1001AB518;
  v16[4] = v5;
  v16[5] = self;
  [v5 setReceivedRequestHandler:v16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002E9A8;
  v15[3] = &unk_1001AB540;
  v15[4] = v5;
  v15[5] = self;
  [v5 setStateChangedHandler:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002E9FC;
  v14[3] = &unk_1001AB488;
  v14[4] = v5;
  v14[5] = self;
  [v5 setHomeKitUserIdentifierHandler:v14];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002EA94;
  v13[3] = &unk_1001AB488;
  v13[4] = self;
  v13[5] = v5;
  [v5 setProxyDeviceUpdateHandler:v13];
  bleServerConnections = self->_bleServerConnections;
  if (!bleServerConnections)
  {
    v11 = objc_alloc_init(NSMutableSet);
    v12 = self->_bleServerConnections;
    self->_bleServerConnections = v11;

    bleServerConnections = self->_bleServerConnections;
  }

  [(NSMutableSet *)bleServerConnections addObject:v5];
  [v5 activate];
  [(RPCompanionLinkDaemon *)self _updateAssertions];
}

- (void)_bleServerHandleConnectionEnded:(id)ended
{
  bleServerConnections = self->_bleServerConnections;
  endedCopy = ended;
  [(NSMutableSet *)bleServerConnections removeObject:endedCopy];
  [(RPCompanionLinkDaemon *)self _connectionStateChanged:0 cnx:endedCopy];

  [(RPCompanionLinkDaemon *)self _updateAssertions];
}

- (void)_btPipeTearDown:(id)down
{
  downCopy = down;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100112FB4(downCopy);
  }

  btPipeConnection = self->_btPipeConnection;
  if (btPipeConnection)
  {
    [(RPConnection *)btPipeConnection invalidate];
    v5 = self->_btPipeConnection;
    self->_btPipeConnection = 0;
  }

  [downCopy invalidate];
}

- (void)_btPipeEnsureStopped
{
  if (self->_btPipe)
  {
    [(RPCompanionLinkDaemon *)self _btPipeTearDown:?];
    btPipe = self->_btPipe;
    self->_btPipe = 0;
  }

  if (self->_btPipeHighPriority)
  {
    [(RPCompanionLinkDaemon *)self _btPipeTearDown:?];
    btPipeHighPriority = self->_btPipeHighPriority;
    self->_btPipeHighPriority = 0;
  }
}

- (void)_btPipeHandleStateChanged:(id)changed
{
  changedCopy = changed;
  state = [changedCopy state];
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100113018(changedCopy, state);
  }

  btPipeConnection = self->_btPipeConnection;
  if (state == 1)
  {
    if (!btPipeConnection && [(CUBluetoothScalablePipe *)self->_btPipe state]== 1 && [(CUBluetoothScalablePipe *)self->_btPipeHighPriority state]== 1)
    {
      dispatchQueue = self->_dispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002F080;
      block[3] = &unk_1001AA970;
      block[4] = self;
      dispatch_async(dispatchQueue, block);
    }
  }

  else if (btPipeConnection && [(CUBluetoothScalablePipe *)self->_btPipe state]== 2 && [(CUBluetoothScalablePipe *)self->_btPipeHighPriority state]== 2)
  {
    [(RPConnection *)self->_btPipeConnection invalidate];
    v8 = self->_btPipeConnection;
    self->_btPipeConnection = 0;
  }
}

- (void)_btPipeConnectionStart
{
  v3 = objc_alloc_init(RPConnection);
  [v3 setBtPipe:self->_btPipe];
  [v3 setBtPipeHighPriority:self->_btPipeHighPriority];
  [v3 setControlFlags:64];
  [v3 setDispatchQueue:self->_dispatchQueue];
  v4 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v3 setIdentityDaemon:v4];

  v5 = [NSString alloc];
  v6 = self->_cnxIDLast + 1;
  self->_cnxIDLast = v6;
  v7 = [v5 initWithFormat:@"%@Cnx-%u", @"CLink", v6];
  [v3 setLabel:v7];

  [v3 setLocalDeviceInfo:self->_localDeviceInfo];
  [v3 setPasswordType:3];
  if (GestaltGetDeviceClass() == 6)
  {
    v8 = @"BTPipe-Phone";
  }

  else
  {
    v8 = @"BTPipe-Watch";
  }

  [v3 setPeerIdentifier:v8];
  [v3 setPresent:1];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002F43C;
  v20[3] = &unk_1001AB488;
  v20[4] = self;
  v20[5] = v3;
  [v3 setInvalidationHandler:v20];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002F448;
  v19[3] = &unk_1001AB2C8;
  v19[4] = self;
  [v3 setPairVerifyCompletion:v19];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002F4A8;
  v18[3] = &unk_1001AB488;
  v18[4] = v3;
  v18[5] = self;
  [v3 setPeerUpdatedHandler:v18];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000F760;
  v17[3] = &unk_1001AB4F0;
  v17[4] = self;
  v17[5] = v3;
  [v3 setReceivedEventHandler:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002F50C;
  v16[3] = &unk_1001AB518;
  v16[4] = self;
  v16[5] = v3;
  [v3 setReceivedRequestHandler:v16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002F52C;
  v15[3] = &unk_1001AB540;
  v15[4] = self;
  v15[5] = v3;
  [v3 setStateChangedHandler:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002F53C;
  v14[3] = &unk_1001AB488;
  v14[4] = v3;
  v14[5] = self;
  [v3 setHomeKitUserIdentifierHandler:v14];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002F5D4;
  v13[3] = &unk_1001AB488;
  v13[4] = self;
  v13[5] = v3;
  [v3 setProxyDeviceUpdateHandler:v13];
  btPipeConnection = self->_btPipeConnection;
  if (btPipeConnection)
  {
    [(RPConnection *)btPipeConnection invalidate];
    v10 = self->_btPipeConnection;
    self->_btPipeConnection = 0;
  }

  v11 = self->_btPipeConnection;
  self->_btPipeConnection = v3;
  v12 = v3;

  [v12 activate];
  [(RPCompanionLinkDaemon *)self _updateAssertions];
}

- (void)_btPipeConnectionEnded:(id)ended
{
  [(RPCompanionLinkDaemon *)self _connectionStateChanged:0 cnx:ended];
  btPipeConnection = self->_btPipeConnection;
  self->_btPipeConnection = 0;

  [(RPCompanionLinkDaemon *)self _updateAssertions];
}

- (void)_btPipeSyncKeysIfNeeded
{
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001130A8();
  }

  peerIdentifier = [(CUBluetoothScalablePipe *)self->_btPipe peerIdentifier];
  v4 = peerIdentifier;
  if (peerIdentifier)
  {
    v11 = peerIdentifier;
    v5 = +[RPCloudDaemon sharedCloudDaemon];
    v6 = [v5 idsDeviceForBluetoothUUID:v11];

    if (v6)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      v8 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v8 addSelfIdentityInfoToMessage:v7 flags:0];

      v9 = +[RPCloudDaemon sharedCloudDaemon];
      [v9 sendIDSMessage:v7 cloudServiceID:@"com.apple.private.alloy.nearby" frameType:48 destinationDevice:v6 sendFlags:1 msgCtx:0 error:0];
    }

    else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001130C4();
    }

    goto LABEL_15;
  }

  if (dword_1001D3228 <= 90)
  {
    v11 = 0;
    if (dword_1001D3228 != -1 || (v10 = _LogCategory_Initialize(), v4 = 0, v10))
    {
      sub_100113104();
LABEL_15:
      v4 = v11;
    }
  }
}

- (void)_activeDeviceAdded:(id)added cnx:(id)cnx
{
  addedCopy = added;
  cnxCopy = cnx;
  [addedCopy setLinkType:{-[RPConnection linkType](cnxCopy, "linkType")}];
  btPipe = [(RPConnection *)cnxCopy btPipe];

  statusFlags = [addedCopy statusFlags];
  v9 = 4;
  if (btPipe)
  {
    v9 = 1;
  }

  [addedCopy setStatusFlags:statusFlags | v9];
  if (!self->_prefCommunal)
  {
    goto LABEL_19;
  }

  idsDeviceIdentifier = [addedCopy idsDeviceIdentifier];
  idsPersonalDeviceIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo idsPersonalDeviceIdentifier];
  v12 = idsDeviceIdentifier;
  v13 = idsPersonalDeviceIdentifier;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if ((v12 != 0) == (v13 == 0))
    {

      goto LABEL_11;
    }

    v15 = [v12 isEqual:v13];

    if (!v15)
    {
LABEL_11:
      v16 = ~[addedCopy statusFlags] & 0x10000080000;

      if (v16)
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }
  }

LABEL_12:
  if ([addedCopy isPersonal])
  {
    personalCnx = self->_personalCnx;
    [addedCopy setPersonal:1];
    [addedCopy setStatusFlags:{objc_msgSend(addedCopy, "statusFlags") | 0x80}];
    objc_storeStrong(&self->_personalCnx, cnx);
    if (personalCnx == cnxCopy)
    {
      goto LABEL_19;
    }
  }

  else
  {
    [addedCopy setPersonal:1];
    [addedCopy setStatusFlags:{objc_msgSend(addedCopy, "statusFlags") | 0x80}];
    objc_storeStrong(&self->_personalCnx, cnx);
  }

  if (dword_1001D3228 > 30)
  {
    goto LABEL_22;
  }

  if (dword_1001D3228 != -1 || _LogCategory_Initialize())
  {
    sub_100113120();
  }

LABEL_19:
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100113160();
  }

LABEL_22:
  [(RPCompanionLinkDaemon *)self _stereoDeviceUpdate:0];
  [(RPCompanionLinkDaemon *)self _reportXPCMatchingDiscoveryCLink];
  notify_post("com.apple.rapport.CompanionLinkDeviceAdded");
  [(RPCompanionLinkDaemon *)self _clientReportFoundDevice:addedCopy];
}

- (void)_activeDeviceRemoved:(id)removed cnx:(id)cnx
{
  removedCopy = removed;
  cnxCopy = cnx;
  [(RPCompanionLinkDaemon *)self _sessionHandlePeerDisconnect:cnxCopy];
  [removedCopy setLinkType:0];
  btPipe = [(RPConnection *)cnxCopy btPipe];

  statusFlags = [removedCopy statusFlags];
  v10 = -2;
  if (!btPipe)
  {
    v10 = -5;
  }

  [removedCopy setStatusFlags:statusFlags & v10];
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001131C0();
  }

  personalCnx = self->_personalCnx;
  if (personalCnx == cnxCopy)
  {
    self->_personalCnx = 0;

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113220();
    }

    [(RPCompanionLinkDaemon *)self _personalDeviceUpdate];
  }

  [(RPCompanionLinkDaemon *)self _stereoDeviceUpdate:0];
  [(RPCompanionLinkDaemon *)self _reportXPCMatchingDiscoveryCLink];
  notify_post("com.apple.rapport.CompanionLinkDeviceRemoved");
  [(RPCompanionLinkDaemon *)self _clientReportLostDevice:removedCopy cnx:cnxCopy];
  peerDeviceInfo = [(RPConnection *)cnxCopy peerDeviceInfo];
  idsDeviceIdentifier = [peerDeviceInfo idsDeviceIdentifier];

  tcpClientConnections = self->_tcpClientConnections;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002FC74;
  v16[3] = &unk_1001AB7C0;
  v17 = cnxCopy;
  v18 = idsDeviceIdentifier;
  v15 = cnxCopy;
  [(NSMutableDictionary *)tcpClientConnections enumerateKeysAndObjectsUsingBlock:v16];
}

- (void)_activeDeviceChangedForConnection:(id)connection bonjourDevice:(id)device
{
  connectionCopy = connection;
  deviceCopy = device;
  peerDeviceInfo = [connectionCopy peerDeviceInfo];
  if (peerDeviceInfo)
  {
    deviceInfo = [deviceCopy deviceInfo];
    v9 = [deviceInfo objectForKeyedSubscript:@"removedServices"];

    if (v9)
    {
      [connectionCopy sendReachabilityProbe:"Bonjour partial remove"];
    }

    v10 = [peerDeviceInfo updateWithBonjourDevice:deviceCopy];
    if (v10)
    {
      v11 = v10;
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001132F0(connectionCopy, deviceCopy);
      }

      [(RPCompanionLinkDaemon *)self _activeDeviceChanged:peerDeviceInfo changes:v11];
    }
  }
}

- (int)_airPlayLeaderStateUncached
{
  uniqueIdentifier = [(HMAccessory *)self->_homeKitSelfAccessory uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  components = [(HMMediaSystem *)self->_homeKitSelfMediaSystem components];
  v6 = [components countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(components);
        }

        mediaProfile = [*(*(&v18 + 1) + 8 * i) mediaProfile];
        accessory = [mediaProfile accessory];
        uniqueIdentifier2 = [accessory uniqueIdentifier];
        uUIDString2 = [uniqueIdentifier2 UUIDString];

        if (uUIDString2 && (!v8 || ([uUIDString2 caseInsensitiveCompare:v8] & 0x8000000000000000) != 0))
        {
          v15 = uUIDString2;

          v8 = v15;
        }
      }

      v7 = [components countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if ([v8 isEqual:uUIDString])
  {
    v16 = 6;
  }

  else
  {
    v16 = 5;
  }

  return v16;
}

- (void)_connectionConfigureCommon:(id)common
{
  commonCopy = common;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = self->_activeServers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        passwordType = [v10 passwordType];
        if (passwordType > 4 || ((1 << passwordType) & 0x19) == 0)
        {
          v13 = passwordType;
          allowedMACAddresses = [v10 allowedMACAddresses];
          [commonCopy setAllowedMACAddresses:allowedMACAddresses];

          pairSetupACL = [v10 pairSetupACL];
          [commonCopy setPairSetupACL:pairSetupACL];

          password = [v10 password];
          [commonCopy setPassword:password];

          [commonCopy setPasswordType:v13];
          internalAuthFlags = [v10 internalAuthFlags];
          if (internalAuthFlags)
          {
            v29[0] = _NSConcreteStackBlock;
            v29[1] = 3221225472;
            v29[2] = sub_10003048C;
            v29[3] = &unk_1001AB7E8;
            v29[4] = v10;
            [commonCopy setShowPasswordHandler:v29];
          }

          if ((internalAuthFlags & 2) != 0)
          {
            v28[0] = _NSConcreteStackBlock;
            v28[1] = 3221225472;
            v28[2] = sub_100030504;
            v28[3] = &unk_1001AB810;
            v28[4] = v10;
            [commonCopy setHidePasswordHandler:v28];
          }

          goto LABEL_17;
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = self->_xpcConnections;
  v19 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        client = [*(*(&v24 + 1) + 8 * j) client];
        [commonCopy setFlags:{objc_msgSend(commonCopy, "flags") | objc_msgSend(client, "flags") & 0x4000}];
      }

      v20 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v20);
  }
}

- (unsigned)_controlFlagsToNearbyActionType:(unint64_t)type
{
  if ((type & 0x10000000000) != 0)
  {
    return 38;
  }

  else
  {
    return 0;
  }
}

- (id)_findExistingActiveDevice:(id)device
{
  deviceCopy = device;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_activeDevices allValues];
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isEqualToDeviceBasic:deviceCopy])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_findExistingActiveOnDemandDevice:(id)device
{
  deviceCopy = device;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_activeOnDemandDevices allValues];
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isEqualToDeviceBasic:deviceCopy])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_connectionStateChanged:(int)changed cnx:(id)cnx
{
  cnxCopy = cnx;
  [(RPCompanionLinkDaemon *)self _update];
  if (changed != 1)
  {
    [(RPCompanionLinkDaemon *)self _interestRemoveForCnx:cnxCopy];
  }

  if (([cnxCopy flags] & 1) == 0)
  {
    peerDeviceInfo = [cnxCopy peerDeviceInfo];
    v7 = peerDeviceInfo;
    if (!peerDeviceInfo)
    {
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100113490();
      }

      goto LABEL_67;
    }

    idsDeviceIdentifier = [peerDeviceInfo idsDeviceIdentifier];
    if (!idsDeviceIdentifier)
    {
      idsDeviceIdentifier = [v7 identifier];
      if (!idsDeviceIdentifier)
      {
        if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100113450();
        }

        goto LABEL_67;
      }
    }

    v9 = idsDeviceIdentifier;
    if (([cnxCopy controlFlags] & 0x200) != 0)
    {
      v13 = [(RPCompanionLinkDaemon *)self _findExistingActiveOnDemandDevice:v7];
      v11 = v13;
      if (changed == 1)
      {
        if (v13)
        {
          if ([cnxCopy clientMode])
          {
            v12 = v11;
          }

          else
          {
            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              v20 = v9;
              v21 = cnxCopy;
              LogPrintF();
            }

            [(RPCompanionLinkDaemon *)self _serverTCPRemoveConnectionsWithIdentifier:v9 exceptConnection:cnxCopy, v20, v21];
            v12 = [(NSMutableDictionary *)self->_activeOnDemandDevices objectForKeyedSubscript:v9];

            if (v12 && dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_100113410();
            }
          }
        }

        else
        {
          v12 = 0;
        }

        activeOnDemandDevices = self->_activeOnDemandDevices;
        if (!activeOnDemandDevices)
        {
          v18 = objc_alloc_init(NSMutableDictionary);
          v19 = self->_activeOnDemandDevices;
          self->_activeOnDemandDevices = v18;

          activeOnDemandDevices = self->_activeOnDemandDevices;
        }

        [(NSMutableDictionary *)activeOnDemandDevices setObject:v7 forKeyedSubscript:v9];
        goto LABEL_66;
      }

      if (v13)
      {
        if ([v13 isEqualToDeviceBasic:v7])
        {
          [(NSMutableDictionary *)self->_activeOnDemandDevices setObject:0 forKeyedSubscript:v9];
          goto LABEL_65;
        }

        if (dword_1001D3228 > 90 || dword_1001D3228 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_65;
        }

LABEL_44:
        LogPrintF();
        goto LABEL_65;
      }
    }

    else
    {
      v10 = [(RPCompanionLinkDaemon *)self _findExistingActiveDevice:v7];
      v11 = v10;
      if (changed == 1)
      {
        if (v10)
        {
          if ([cnxCopy clientMode])
          {
            v12 = v11;
          }

          else
          {
            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              v20 = v9;
              v21 = cnxCopy;
              LogPrintF();
            }

            [(RPCompanionLinkDaemon *)self _serverTCPRemoveConnectionsWithIdentifier:v9 exceptConnection:cnxCopy, v20, v21];
            v12 = [(NSMutableDictionary *)self->_activeDevices objectForKeyedSubscript:v9];

            if (v12 && dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_100113410();
            }
          }
        }

        else
        {
          v12 = 0;
        }

        activeDevices = self->_activeDevices;
        if (!activeDevices)
        {
          v15 = objc_alloc_init(NSMutableDictionary);
          v16 = self->_activeDevices;
          self->_activeDevices = v15;

          activeDevices = self->_activeDevices;
        }

        [(NSMutableDictionary *)activeDevices setObject:v7 forKeyedSubscript:v9];
        if (!v12)
        {
          [(RPCompanionLinkDaemon *)self _activeDeviceAdded:v7 cnx:cnxCopy];
        }

        goto LABEL_66;
      }

      if (v10)
      {
        if ([v10 isEqualToDeviceBasic:v7])
        {
          [(NSMutableDictionary *)self->_activeDevices setObject:0 forKeyedSubscript:v9];
          [(RPCompanionLinkDaemon *)self _activeDeviceRemoved:v11 cnx:cnxCopy];
LABEL_65:
          v12 = v11;
          goto LABEL_66;
        }

        if (dword_1001D3228 > 90 || dword_1001D3228 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_65;
        }

        goto LABEL_44;
      }
    }

    v12 = 0;
LABEL_66:

LABEL_67:
  }
}

- (BOOL)_destinationID:(id)d matchesCnx:(id)cnx
{
  dCopy = d;
  cnxCopy = cnx;
  peerIdentifier = [(RPConnection *)cnxCopy peerIdentifier];
  v9 = [peerIdentifier isEqual:dCopy];

  if ((v9 & 1) == 0)
  {
    peerDeviceInfo = [(RPConnection *)cnxCopy peerDeviceInfo];
    identifier = [peerDeviceInfo identifier];
    v13 = [identifier isEqual:dCopy];

    if (v13)
    {
      goto LABEL_6;
    }

    idsDeviceIdentifier = [peerDeviceInfo idsDeviceIdentifier];
    v15 = [idsDeviceIdentifier isEqual:dCopy];

    if (v15 & 1) != 0 || ([peerDeviceInfo publicIdentifier], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqual:", dCopy), v16, (v17))
    {
LABEL_6:
      v10 = 1;
LABEL_7:

      goto LABEL_8;
    }

    if (([(RPConnection *)cnxCopy controlFlags]& 0x200) == 0)
    {
      v19 = [(NSDictionary *)self->_destinationIdentifierModelMap objectForKeyedSubscript:dCopy];
      if (v19)
      {
        roomName = v19;
        peerDeviceInfo2 = [(RPConnection *)cnxCopy peerDeviceInfo];
        model = [peerDeviceInfo2 model];
        v23 = (roomName)[2](roomName, model);
LABEL_12:
        v10 = v23;

LABEL_15:
        goto LABEL_7;
      }

      v24 = [(NSDictionary *)self->_destinationIdentifierRelMap objectForKeyedSubscript:dCopy];
      if (v24)
      {
        roomName = v24;
        peerDeviceInfo2 = [(RPConnection *)cnxCopy peerDeviceInfo];
        v10 = (roomName)[2](roomName, [peerDeviceInfo2 statusFlags]);
        goto LABEL_15;
      }

      if (([dCopy isEqual:@"rapport:rdid:ActivePhone"] & 1) != 0 || (objc_msgSend(dCopy, "isEqual:", @"rapport:rdid:ActiveWatch") & 1) != 0 || objc_msgSend(dCopy, "isEqual:", @"rapport:rdid:PairedCompanion"))
      {
        btPipeConnection = self->_btPipeConnection;
LABEL_20:
        v10 = btPipeConnection == cnxCopy;
        goto LABEL_7;
      }

      if ([(RPCompanionLinkDaemon *)self _destinationID:dCopy matchesProxyDeviceOnCnx:cnxCopy])
      {
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_1001134D0(cnxCopy);
        }

        goto LABEL_31;
      }

      if ([dCopy isEqual:@"rapport:rdid:PersonalCompanion"])
      {
        btPipeConnection = self->_personalCnx;
        goto LABEL_20;
      }

      if ([dCopy isEqual:@"rapport:rdid:StereoCounterpart"])
      {
        btPipeConnection = self->_stereoCnx;
        goto LABEL_20;
      }

      if ([dCopy isEqual:@"rapport:rdid:SameHome"])
      {
LABEL_31:
        v10 = ([(RPConnection *)cnxCopy statusFlags]& 0x50000AE000) != 0;
        goto LABEL_7;
      }

      if ([dCopy isEqual:@"rapport:rdid:SameRoom"] && (-[RPConnection statusFlags](cnxCopy, "statusFlags") & 0x50000AE000) != 0)
      {
        roomName = [(RPCompanionLinkDevice *)self->_localDeviceInfo roomName];
        peerDeviceInfo2 = [(RPConnection *)cnxCopy peerDeviceInfo];
        model = [peerDeviceInfo2 roomName];
        v23 = [roomName isEqual:model];
        goto LABEL_12;
      }
    }

    v10 = 0;
    goto LABEL_7;
  }

  v10 = 1;
LABEL_8:

  return v10;
}

- (void)_disconnectRemovedSharedHomeDevices
{
  v3 = +[RPIdentityDaemon sharedIdentityDaemon];
  v4 = [v3 identitiesOfType:9 error:0];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003109C;
  v5[3] = &unk_1001AB838;
  v5[4] = v4;
  [(RPCompanionLinkDaemon *)self _forEachConnectionWithHandler:v5];
}

- (void)_disconnectUnauthConnections
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NSMutableSet *)self->_tcpServerConnections copy];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if ([v7 flags])
        {
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_100113594();
          }

          [v7 invalidate];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v8 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = v8;
    }

    while (v8);
  }
}

- (void)_disconnectUnpairedDevices
{
  v3 = +[RPIdentityDaemon sharedIdentityDaemon];
  v4 = [v3 identitiesOfType:8 error:0];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100031434;
  v5[3] = &unk_1001AB838;
  v5[4] = v4;
  [(RPCompanionLinkDaemon *)self _forEachConnectionWithHandler:v5];
}

- (id)_discoveryNonceOrRotate:(BOOL)rotate
{
  if (rotate || (v4 = self->_discoveryNonceData) == 0)
  {
    v4 = NSRandomData();
    objc_storeStrong(&self->_discoveryNonceData, v4);
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011362C();
    }
  }

  return v4;
}

- (void)_duetSyncEnsureStopped
{
  if (self->_duetSyncClient)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113688();
    }

    [(SFClient *)self->_duetSyncClient invalidate];
    duetSyncClient = self->_duetSyncClient;
    self->_duetSyncClient = 0;
  }
}

- (id)findAuthAWDLPairingModeDeviceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_authenticatedAWDLPairingModeDevices objectForKeyedSubscript:identifierCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    allKeys = [(NSMutableDictionary *)self->_authenticatedAWDLPairingModeDevices allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [(NSMutableDictionary *)self->_authenticatedAWDLPairingModeDevices objectForKeyedSubscript:v13];
          publicIdentifier = [v14 publicIdentifier];
          v16 = [publicIdentifier isEqual:identifierCopy];

          if (v16)
          {
            v7 = [(NSMutableDictionary *)self->_authenticatedAWDLPairingModeDevices objectForKeyedSubscript:v13];

            goto LABEL_13;
          }
        }

        v10 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_13:
    v6 = 0;
  }

  return v7;
}

- (id)findConnectedDeviceForIdentifier:(id)identifier controlFlags:(unint64_t)flags cnx:(id *)cnx
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000029CC;
  v19 = sub_10000317C;
  v20 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000319D8;
  v9[3] = &unk_1001AB860;
  flagsCopy = flags;
  selfCopy = self;
  identifierCopy = identifier;
  v11 = identifierCopy;
  v12 = &v15;
  cnxCopy = cnx;
  [(RPCompanionLinkDaemon *)selfCopy _forEachConnectionWithHandler:v9];
  v7 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v7;
}

- (id)_findWiFiConnectionByID:(id)d
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000029CC;
  v14 = sub_10000317C;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100031DD0;
  v7[3] = &unk_1001AB888;
  dCopy = d;
  v8 = dCopy;
  v9 = &v10;
  [(RPCompanionLinkDaemon *)self _forEachConnectionWithHandler:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (id)_findMatchingAWDLBonjourDevice:(id)device
{
  deviceCopy = device;
  v5 = self->_bonjourAWDLDevices;
  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
  if (idsDeviceIdentifier)
  {
    v7 = [(NSMutableDictionary *)v5 objectForKeyedSubscript:idsDeviceIdentifier];
    if (v7)
    {
      goto LABEL_7;
    }
  }

  idsDeviceIdentifier = [deviceCopy identifier];
  if (idsDeviceIdentifier)
  {
    v7 = [(NSMutableDictionary *)v5 objectForKeyedSubscript:idsDeviceIdentifier];
    if (v7)
    {
      goto LABEL_7;
    }
  }

  idsDeviceIdentifier = [deviceCopy publicIdentifier];
  if (idsDeviceIdentifier && ([(NSMutableDictionary *)v5 objectForKeyedSubscript:idsDeviceIdentifier], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_7:
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_findDeviceWithDevice:(id)device deviceMap:(id)map matchedIdentifier:(id *)identifier
{
  deviceCopy = device;
  mapCopy = map;
  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
  if (!idsDeviceIdentifier || ([mapCopy objectForKeyedSubscript:idsDeviceIdentifier], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    idsDeviceIdentifier = [deviceCopy identifier];
    if (!idsDeviceIdentifier || ([mapCopy objectForKeyedSubscript:idsDeviceIdentifier], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {

      idsDeviceIdentifier = [deviceCopy publicIdentifier];
      if (!idsDeviceIdentifier)
      {
        v12 = 0;
        goto LABEL_15;
      }

      v13 = [mapCopy objectForKeyedSubscript:idsDeviceIdentifier];
      if (v13)
      {
        v12 = v13;
      }

      else
      {
        v12 = 0;
      }

      if (!v13)
      {
        goto LABEL_15;
      }

      v11 = v13;
      if (!identifier)
      {
        goto LABEL_15;
      }

LABEL_13:
      objc_storeStrong(identifier, idsDeviceIdentifier);
      v12 = v11;
      goto LABEL_15;
    }
  }

  v11 = v10;
  v12 = v10;
  if (identifier)
  {
    goto LABEL_13;
  }

LABEL_15:

  return v12;
}

- (id)findUnauthDeviceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000029CC;
  v15 = sub_10000317C;
  v16 = [(NSMutableDictionary *)self->_unauthDevices objectForKeyedSubscript:identifierCopy];
  v5 = v12[5];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000321E0;
    v8[3] = &unk_1001AB888;
    v9 = identifierCopy;
    v10 = &v11;
    [(RPCompanionLinkDaemon *)self _forEachConnectionWithHandler:v8];
    v6 = v12[5];
  }

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)_forEachConnectionWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41[0] = 0;
  btPipeConnection = self->_btPipeConnection;
  if (!btPipeConnection || ((*(handlerCopy + 2))(handlerCopy, btPipeConnection, v41), (v39[3] & 1) == 0))
  {
    tcpClientConnections = self->_tcpClientConnections;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100032624;
    v35[3] = &unk_1001AB8B0;
    v8 = v5;
    v36 = v8;
    v37 = &v38;
    [(NSMutableDictionary *)tcpClientConnections enumerateKeysAndObjectsUsingBlock:v35];
    if ((v39[3] & 1) == 0)
    {
      tcpOnDemandClientConnections = self->_tcpOnDemandClientConnections;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100032680;
      v32[3] = &unk_1001AB8B0;
      v10 = v8;
      v33 = v10;
      v34 = &v38;
      [(NSMutableDictionary *)tcpOnDemandClientConnections enumerateKeysAndObjectsUsingBlock:v32];
      if ((v39[3] & 1) == 0)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v11 = self->_tcpServerConnections;
        v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v28 objects:v43 count:16];
        if (v12)
        {
          v13 = *v29;
LABEL_7:
          v14 = 0;
          while (1)
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(v11);
            }

            (*(v10 + 2))(v10, *(*(&v28 + 1) + 8 * v14), v39 + 3);
            if (v39[3])
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v28 objects:v43 count:16];
              if (v12)
              {
                goto LABEL_7;
              }

              goto LABEL_13;
            }
          }
        }

        else
        {
LABEL_13:

          bleClientConnections = self->_bleClientConnections;
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_1000326DC;
          v25[3] = &unk_1001AB8B0;
          v16 = v10;
          v26 = v16;
          v27 = &v38;
          [(NSMutableDictionary *)bleClientConnections enumerateKeysAndObjectsUsingBlock:v25];
          if ((v39[3] & 1) == 0)
          {
            v23 = 0u;
            v24 = 0u;
            v21 = 0u;
            v22 = 0u;
            v17 = self->_bleServerConnections;
            v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v21 objects:v42 count:16];
            if (v18)
            {
              v19 = *v22;
LABEL_16:
              v20 = 0;
              while (1)
              {
                if (*v22 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                (v16[2].super.super.isa)(v16, *(*(&v21 + 1) + 8 * v20), v39 + 3);
                if (v39[3])
                {
                  break;
                }

                if (v18 == ++v20)
                {
                  v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v21 objects:v42 count:16];
                  if (v18)
                  {
                    goto LABEL_16;
                  }

                  break;
                }
              }
            }
          }

          v11 = v26;
        }
      }
    }
  }

  _Block_object_dispose(&v38, 8);
}

- (void)_forEachMatchingDestinationID:(id)d handler:(id)handler
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000327F8;
  v7[3] = &unk_1001AB8D8;
  selfCopy = self;
  dCopy = d;
  handlerCopy = handler;
  v5 = handlerCopy;
  v6 = dCopy;
  [(RPCompanionLinkDaemon *)selfCopy _forEachConnectionWithHandler:v7];
}

- (void)_forEachUniqueMatchingDestinationID:(id)d handler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100032944;
  v10[3] = &unk_1001AB900;
  v11 = objc_opt_new();
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = v11;
  [(RPCompanionLinkDaemon *)self _forEachMatchingDestinationID:dCopy handler:v10];
}

- (id)_getAppleID
{
  v2 = objc_alloc_init(CUAppleIDClient);
  v3 = [v2 copyMyAppleIDAndReturnError:0];

  return v3;
}

- (void)_hidEnsureStarted
{
  if (!self->_hidDaemon)
  {
    v10[5] = v2;
    v10[6] = v3;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001136E4();
    }

    v5 = objc_alloc_init(RPHIDDaemon);
    hidDaemon = self->_hidDaemon;
    self->_hidDaemon = v5;

    [(RPHIDDaemon *)self->_hidDaemon setMessenger:self];
    v7 = self->_hidDaemon;
    v10[0] = 0;
    v8 = [(RPHIDDaemon *)v7 activateAndReturnError:v10];
    v9 = v10[0];
    if ((v8 & 1) == 0 && dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113700();
    }
  }
}

- (void)interestRegisterEventID:(id)d peerIdentifier:(id)identifier owner:(id)owner
{
  dCopy = d;
  identifierCopy = identifier;
  ownerCopy = owner;
  v11 = [(NSMutableDictionary *)self->_interestPeers objectForKeyedSubscript:identifierCopy];
  if (!v11)
  {
    if (!self->_interestPeers)
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      interestPeers = self->_interestPeers;
      self->_interestPeers = v12;
    }

    v11 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)self->_interestPeers setObject:v11 forKeyedSubscript:identifierCopy];
  }

  v14 = [v11 objectForKeyedSubscript:dCopy];
  if (v14)
  {
    v15 = v14;
    [v14 addObject:ownerCopy];
  }

  else
  {
    v15 = objc_alloc_init(NSMutableSet);
    [v11 setObject:v15 forKeyedSubscript:dCopy];
    [v15 addObject:ownerCopy];
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v18 = identifierCopy;
      v19 = dCopy;
      LogPrintF();
    }

    v20 = dCopy;
    v21 = @"_regEvents";
    v16 = [NSArray arrayWithObjects:&v20 count:1, v18, v19];
    v22 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];

    [(RPCompanionLinkDaemon *)self sendEventID:@"_interest" event:v17 destinationID:identifierCopy options:0 completion:0];
  }
}

- (void)interestDeregisterEventID:(id)d peerIdentifier:(id)identifier owner:(id)owner
{
  dCopy = d;
  identifierCopy = identifier;
  ownerCopy = owner;
  v11 = [(NSMutableDictionary *)self->_interestPeers objectForKeyedSubscript:identifierCopy];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:dCopy];
    v14 = v13;
    if (v13)
    {
      [v13 removeObject:ownerCopy];
      if (![v14 count])
      {
        [v12 setObject:0 forKeyedSubscript:dCopy];
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          v17 = identifierCopy;
          v18 = dCopy;
          LogPrintF();
        }

        v19 = dCopy;
        v20 = @"_deregEvents";
        v15 = [NSArray arrayWithObjects:&v19 count:1, v17, v18];
        v21 = v15;
        v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];

        [(RPCompanionLinkDaemon *)self sendEventID:@"_interest" event:v16 destinationID:identifierCopy options:0 completion:0];
      }
    }
  }
}

- (void)_interestReceived:(id)received cnx:(id)cnx
{
  receivedCopy = received;
  cnxCopy = cnx;
  peerDeviceInfo = [cnxCopy peerDeviceInfo];
  identifier = [peerDeviceInfo identifier];
  if (identifier)
  {
    publicIdentifier = identifier;

LABEL_4:
    v35 = cnxCopy;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    CFArrayGetTypeID();
    v36 = receivedCopy;
    v12 = CFDictionaryGetTypedValue();
    v13 = [v12 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v42;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v42 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v41 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [(NSMutableDictionary *)self->_interestEvents objectForKeyedSubscript:v17];
            v19 = v18;
            if (!v18)
            {
              v19 = objc_alloc_init(NSMutableSet);
              interestEvents = self->_interestEvents;
              if (!interestEvents)
              {
                v21 = objc_alloc_init(NSMutableDictionary);
                v22 = self->_interestEvents;
                self->_interestEvents = v21;

                interestEvents = self->_interestEvents;
              }

              [(NSMutableDictionary *)interestEvents setObject:v19 forKeyedSubscript:v17];
            }

            [v19 addObject:publicIdentifier];
            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              v33 = v17;
              v34 = [v19 count];
              v32 = publicIdentifier;
              LogPrintF();
            }

            if (!v18)
            {
              [(RPHIDDaemon *)self->_hidDaemon registeredEventID:v17];
            }

            [(RPMediaControlDaemon *)self->_mediaControlDaemon registeredEventID:v17, v32, v33, v34];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v14);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    CFArrayGetTypeID();
    v23 = CFDictionaryGetTypedValue();
    v24 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v38;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v37 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = [(NSMutableDictionary *)self->_interestEvents objectForKeyedSubscript:v28];
            v30 = v29;
            if (v29)
            {
              [v29 removeObject:publicIdentifier];
              v31 = [v30 count];
              if (!v31)
              {
                [(NSMutableDictionary *)self->_interestEvents setObject:0 forKeyedSubscript:v28];
              }

              if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              if (!v31)
              {
                [(RPHIDDaemon *)self->_hidDaemon deregisteredEventID:v28];
                [(RPMediaControlDaemon *)self->_mediaControlDaemon deregisteredEventID:v28];
              }
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v25);
    }

    cnxCopy = v35;
    receivedCopy = v36;
    goto LABEL_42;
  }

  peerDeviceInfo2 = [cnxCopy peerDeviceInfo];
  publicIdentifier = [peerDeviceInfo2 publicIdentifier];

  if (publicIdentifier)
  {
    goto LABEL_4;
  }

  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10011375C();
  }

LABEL_42:
}

- (void)_interestRemoveForCnx:(id)cnx
{
  cnxCopy = cnx;
  peerDeviceInfo = [cnxCopy peerDeviceInfo];
  identifier = [peerDeviceInfo identifier];

  if (identifier)
  {
    v18 = cnxCopy;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    allKeys = [(NSMutableDictionary *)self->_interestEvents allKeys];
    v8 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(allKeys);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [(NSMutableDictionary *)self->_interestEvents objectForKeyedSubscript:v12, v15, v16, v17];
          [v13 removeObject:identifier];
          v14 = [v13 count];
          if (!v14)
          {
            [(NSMutableDictionary *)self->_interestEvents setObject:0 forKeyedSubscript:v12];
          }

          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            v16 = v12;
            v17 = v14;
            v15 = identifier;
            LogPrintF();
          }

          if (!v14)
          {
            [(RPHIDDaemon *)self->_hidDaemon deregisteredEventID:v12];
            [(RPMediaControlDaemon *)self->_mediaControlDaemon deregisteredEventID:v12];
          }
        }

        v9 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    cnxCopy = v18;
  }

  else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10011379C();
  }
}

- (void)_interestSendEventID:(id)d event:(id)event
{
  dCopy = d;
  eventCopy = event;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(NSMutableDictionary *)self->_interestEvents objectForKeyedSubscript:dCopy, 0];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(RPCompanionLinkDaemon *)self sendEventID:dCopy event:eventCopy destinationID:*(*(&v13 + 1) + 8 * v12) options:0 completion:0];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_localDeviceCleanup
{
  if (self->_mediaAccessControlKVO)
  {
    self->_mediaAccessControlKVO = 0;
    [(NSUserDefaults *)self->_airplayPrefs removeObserver:self forKeyPath:@"accessControlLevel" context:0];
    [(NSUserDefaults *)self->_airplayPrefs removeObserver:self forKeyPath:@"p2pAllow" context:0];
  }

  airplayPrefs = self->_airplayPrefs;
  self->_airplayPrefs = 0;

  if (self->_soundBoardUserLeaderKVO)
  {
    self->_soundBoardUserLeaderKVO = 0;
    [(NSUserDefaults *)self->_soundBoardPrefs removeObserver:self forKeyPath:@"stereo_leader" context:0];
    [(NSUserDefaults *)self->_soundBoardPrefs removeObserver:self forKeyPath:@"stereo_leader_info" context:0];
  }

  soundBoardPrefs = self->_soundBoardPrefs;
  self->_soundBoardPrefs = 0;
}

- (int)_localMediaAccessControlSetting
{
  Int64 = CFPrefs_GetInt64();
  v3 = CFPrefs_GetInt64();
  v4 = v3 == 1;
  v5 = Int64 == 1;
  if (Int64 == 1)
  {
    v4 = 3;
  }

  if (v3 == 1)
  {
    v5 = 1;
  }

  if (v5)
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

- (void)_mediaControlEnsureStarted
{
  if (!self->_mediaControlDaemon)
  {
    v11[9] = v2;
    v11[10] = v3;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113AA8();
    }

    v5 = objc_alloc_init(RPMediaControlDaemon);
    mediaControlDaemon = self->_mediaControlDaemon;
    self->_mediaControlDaemon = v5;

    [(RPMediaControlDaemon *)self->_mediaControlDaemon setMessenger:self];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100033B98;
    v11[3] = &unk_1001AB990;
    v11[4] = self;
    [(RPMediaControlDaemon *)self->_mediaControlDaemon setSendInterestEventHandler:v11];
    v7 = self->_mediaControlDaemon;
    v10 = 0;
    v8 = [(RPMediaControlDaemon *)v7 activateAndReturnError:&v10];
    v9 = v10;
    if ((v8 & 1) == 0 && dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113AC4();
    }
  }
}

- (void)_mediaRemoteIDGet
{
  if (!self->_mediaRemoteIDGetting)
  {
    if (MRMediaRemoteGetLocalOrigin())
    {
      self->_mediaRemoteIDGetting = 1;
      dispatchQueue = self->_dispatchQueue;
      MRMediaRemoteGetDeviceInfo();
    }

    else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113B20();
    }
  }
}

- (void)_mediaRouteIDGet
{
  if (!self->_mediaRouteIDGetting)
  {
    self->_mediaRouteIDGetting = 1;
    v3 = objc_alloc_init(CUPairingManager);
    [v3 setDispatchQueue:self->_dispatchQueue];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100033F1C;
    v4[3] = &unk_1001AB9E0;
    v4[4] = v3;
    v4[5] = self;
    [v3 getPairingIdentityWithOptions:5 completion:v4];
  }
}

- (void)_miscEnsureStopped
{
  if (self->_miscStarted)
  {
    v11 = v4;
    v12 = v3;
    v13 = v2;
    if (GestaltGetDeviceClass() == 1)
    {
      v9 = +[RPCloudDaemon sharedCloudDaemon];
      idsHasWatch = [v9 idsHasWatch];

      if (idsHasWatch)
      {
        [(RPCompanionLinkDaemon *)self deregisterRequestID:@"_ctxtColl"];
      }
    }

    [(RPCompanionLinkDaemon *)self deregisterRequestID:@"_launchApp", v5, v11, v12, v13, v6, v7];
    [(RPCompanionLinkDaemon *)self deregisterRequestID:@"_sessionStart"];
    [(RPCompanionLinkDaemon *)self deregisterRequestID:@"_sessionStop"];
    [(RPCompanionLinkDaemon *)self deregisterRequestID:@"_speak"];
    self->_miscStarted = 0;
  }
}

- (void)_miscHandleLaunchAppRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  Int64 = CFDictionaryGetInt64();
  if (v7)
  {
    v9 = Int64 != 0;
    v10 = dispatch_queue_create("RPLaunchApp", 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100034458;
    block[3] = &unk_1001ABA58;
    v20 = v9;
    block[4] = v7;
    v19 = handlerCopy;
    dispatch_async(v10, block);
  }

  else
  {
    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    if (v10 && (v11 = [[NSURL alloc] initWithString:v10]) != 0)
    {
      v12 = v11;
      v13 = dispatch_queue_create("RPOpenURL", 0);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000347D8;
      v15[3] = &unk_1001ABA80;
      v16 = v12;
      v17 = handlerCopy;
      v14 = v12;
      dispatch_async(v13, v15);
    }

    else
    {
      v14 = RPErrorF();
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100113C0C();
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, v14);
    }
  }
}

- (void)_miscHandleSpeakRequest:(id)request responseHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();

  if (v8)
  {
    v9 = objc_alloc_init(CUVoiceSession);
    [v9 setDispatchQueue:self->_dispatchQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100034A90;
    v11[3] = &unk_1001ABAA8;
    v11[4] = v9;
    v12 = handlerCopy;
    [v9 speakText:v8 flags:0 completion:v11];
  }

  else
  {
    v10 = RPErrorF();
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113C90();
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v10);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (([pathCopy isEqualToString:@"stereo_leader"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"stereo_leader_info"))
  {
    if (CFDictionaryGetInt64())
    {
      v10 = 1;
    }

    else
    {
      CFDictionaryGetTypeID();
      v11 = CFPrefs_CopyTypedValue();
      v10 = CFDictionaryGetInt64() != 0;
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113CD0();
    }

    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100034CDC;
    block[3] = &unk_1001ABAD0;
    block[4] = self;
    v16 = v10;
    dispatch_async(dispatchQueue, block);
  }

  if (([pathCopy isEqualToString:@"accessControlLevel"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"p2pAllow"))
  {
    v13 = self->_dispatchQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100034D04;
    v14[3] = &unk_1001AA970;
    v14[4] = self;
    dispatch_async(v13, v14);
  }
}

- (void)_personalDeviceUpdate
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000029CC;
  v13 = sub_10000317C;
  v14 = 0;
  idsPersonalDeviceIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo idsPersonalDeviceIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100034EB4;
  v8[3] = &unk_1001AAE80;
  v8[4] = idsPersonalDeviceIdentifier;
  v8[5] = self;
  v8[6] = &v9;
  [(RPCompanionLinkDaemon *)self _forEachConnectionWithHandler:v8];
  v4 = v10;
  v5 = v10[5];
  if (v5 != self->_personalCnx)
  {
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 == -1)
      {
        v6 = _LogCategory_Initialize();
        v4 = v10;
        if (!v6)
        {
          goto LABEL_6;
        }

        v5 = v10[5];
      }

      peerDeviceInfo = [(RPConnection *)v5 peerDeviceInfo];
      LogPrintF();

      v4 = v10;
    }

LABEL_6:
    objc_storeStrong(&self->_personalCnx, v4[5]);
  }

  _Block_object_dispose(&v9, 8);
}

- (void)_reachabilityEnsureStopped
{
  if (self->_netLinkManager && dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100113D44();
  }

  [(CUNetLinkManager *)self->_netLinkManager invalidate];
  netLinkManager = self->_netLinkManager;
  self->_netLinkManager = 0;
}

- (void)_siriEnsureStarted
{
  if (!self->_siriDaemon)
  {
    v10[5] = v2;
    v10[6] = v3;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113D60();
    }

    v5 = objc_alloc_init(RPSiriDaemon);
    siriDaemon = self->_siriDaemon;
    self->_siriDaemon = v5;

    [(RPSiriDaemon *)self->_siriDaemon setMessenger:self];
    v7 = self->_siriDaemon;
    v10[0] = 0;
    v8 = [(RPSiriDaemon *)v7 activateAndReturnError:v10];
    v9 = v10[0];
    if ((v8 & 1) == 0 && dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113D7C();
    }
  }
}

- (void)_stereoDeviceUpdate:(int)update
{
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_1000029CC;
  v67 = sub_10000317C;
  v68 = 0;
  [(RPCompanionLinkDevice *)self->_localDeviceInfo identifier];
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_1000029CC;
  v5 = v61 = sub_10000317C;
  v62 = v5;
  mediaSystemIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemIdentifier];
  mediaSystemRole = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemRole];
  if (mediaSystemIdentifier && mediaSystemRole - 1 <= 1)
  {
    v8 = mediaSystemRole == 2;
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_100035BC8;
    v55[3] = &unk_1001ABAF8;
    if (mediaSystemRole == 1)
    {
      v8 = 2;
    }

    v56 = v8;
    v55[4] = mediaSystemIdentifier;
    v55[5] = &v63;
    v55[6] = &v57;
    [(RPCompanionLinkDaemon *)self _forEachConnectionWithHandler:v55];
  }

  flags = [(RPCompanionLinkDevice *)self->_localDeviceInfo flags];
  v10 = v58[5];
  v11 = v5;
  v12 = v11;
  if (v10 == v11)
  {
    v13 = 1;
  }

  else if ((v11 == 0) == (v10 != 0))
  {
    v13 = 0;
  }

  else
  {
    v13 = [v10 isEqual:v11];
  }

  v14 = flags & 0x80;
  v15 = v14 >> 7 != v13;
  if (v14 >> 7 != v13)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v16 = "yes";
      if (v14)
      {
        v17 = "yes";
      }

      else
      {
        v17 = "no";
      }

      if (!v13)
      {
        v16 = "no";
      }

      v51 = v17;
      v52 = v16;
      LogPrintF();
    }

    localDeviceInfo = self->_localDeviceInfo;
    if (v13)
    {
      v19 = [(RPCompanionLinkDevice *)self->_localDeviceInfo flags]| 0x80;
    }

    else
    {
      v19 = [(RPCompanionLinkDevice *)self->_localDeviceInfo flags]& 0xFFFFFF7F;
    }

    [(RPCompanionLinkDevice *)localDeviceInfo setFlags:v19, v51, v52];
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
  }

  if (mediaSystemIdentifier)
  {
    if (v64[5])
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }
  }

  else
  {
    v20 = self->_homeKitSelfAccessory != 0;
  }

  mediaSystemState = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemState];
  v22 = v20 != mediaSystemState;
  if (v20 != mediaSystemState)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      if (mediaSystemState > 4)
      {
        v23 = "?";
      }

      else
      {
        v23 = off_1001AC198[mediaSystemState];
      }

      v51 = v23;
      v52 = off_1001AC198[v20];
      LogPrintF();
    }

    [(RPCompanionLinkDevice *)self->_localDeviceInfo setMediaSystemState:v20, v51, v52];
    v15 = 1;
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
  }

  v24 = [(RPCompanionLinkDevice *)self->_localDeviceInfo flags]& 0x200;
  soundBoardUserLeader = self->_soundBoardUserLeader;
  if (soundBoardUserLeader != v24 >> 9)
  {
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (v28 = _LogCategory_Initialize(), LOBYTE(soundBoardUserLeader) = self->_soundBoardUserLeader, v28))
      {
        if (v24)
        {
          v26 = "yes";
        }

        else
        {
          v26 = "no";
        }

        if (soundBoardUserLeader)
        {
          v27 = "yes";
        }

        else
        {
          v27 = "no";
        }

        v51 = v26;
        v52 = v27;
        LogPrintF();
        LOBYTE(soundBoardUserLeader) = self->_soundBoardUserLeader;
      }
    }

    v29 = self->_localDeviceInfo;
    if (soundBoardUserLeader)
    {
      v30 = [(RPCompanionLinkDevice *)self->_localDeviceInfo flags]| 0x200;
    }

    else
    {
      v30 = [(RPCompanionLinkDevice *)self->_localDeviceInfo flags]& 0xFFFFFDFF;
    }

    [(RPCompanionLinkDevice *)v29 setFlags:v30, v51, v52];
    v15 = 1;
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
  }

  v31 = v64[5];
  stereoCnx = self->_stereoCnx;
  if (v31 != stereoCnx)
  {
    if (v31 && !stereoCnx)
    {
      if (dword_1001D3228 <= 30)
      {
        if (dword_1001D3228 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_74;
          }

          v31 = v64[5];
        }

        goto LABEL_68;
      }

LABEL_74:
      objc_storeStrong(&self->_stereoCnx, v64[5]);
      v22 = 1;
      goto LABEL_75;
    }

    if (v31 || !stereoCnx)
    {
      if (dword_1001D3228 > 30)
      {
        goto LABEL_74;
      }

      if (dword_1001D3228 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_74;
        }

        v31 = v64[5];
      }
    }

    else
    {
      if (dword_1001D3228 > 30)
      {
        goto LABEL_74;
      }

      if (dword_1001D3228 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_74;
        }

        v31 = v64[5];
      }

      else
      {
        v31 = 0;
      }
    }

LABEL_68:
    peerDeviceInfo = [(RPConnection *)v31 peerDeviceInfo];
    LogPrintF();

    goto LABEL_74;
  }

LABEL_75:
  if (update <= 3 && v22)
  {
    [(RPCompanionLinkDaemon *)self _homeKitSelfAccessoryMediaSystemUpdated:(update + 1)];
  }

  if (self->_prefCommunal)
  {
    v34 = v20 - 2;
    if ((v20 - 2) > 2)
    {
      v35 = 2;
    }

    else if (self->_stereoCnx)
    {
      v35 = 5;
    }

    else
    {
      v35 = 6;
    }

    airplayBuddyNotReachableState = self->_airplayBuddyNotReachableState;
    if (v35 == airplayBuddyNotReachableState)
    {
      goto LABEL_97;
    }

    if (dword_1001D3228 <= 30)
    {
      v37 = self->_airplayBuddyNotReachableState;
      if (dword_1001D3228 != -1)
      {
LABEL_87:
        if (v37 < 8)
        {
          v38 = off_1001AC208[v37];
        }

        v53 = off_1001AC1C0[v35 - 2];
        LogPrintF();
        goto LABEL_92;
      }

      if (_LogCategory_Initialize())
      {
        v37 = self->_airplayBuddyNotReachableState;
        goto LABEL_87;
      }
    }

LABEL_92:
    self->_airplayBuddyNotReachableState = v35;
    if (v35 == 2)
    {
      CFPrefs_RemoveValue();
    }

    else
    {
      v39 = &kCFBooleanTrue;
      if (v35 != 6)
      {
        v39 = &kCFBooleanFalse;
      }

      v40 = *v39;
      CFPrefs_SetValue();
    }

LABEL_97:
    if (v34 > 2)
    {
      _airPlayLeaderStateUncached = 2;
    }

    else
    {
      _airPlayLeaderStateUncached = [(RPCompanionLinkDaemon *)self _airPlayLeaderStateUncached];
    }

    airplayLeaderState = self->_airplayLeaderState;
    if (_airPlayLeaderStateUncached == airplayLeaderState)
    {
      if (v35 == airplayBuddyNotReachableState)
      {
        goto LABEL_118;
      }

LABEL_117:
      CFPreferencesAppSynchronize(@"com.apple.airplay");
      notify_post("com.apple.airplay.prefsChanged");
      goto LABEL_118;
    }

    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1)
      {
LABEL_105:
        if (airplayLeaderState < 8)
        {
          v43 = off_1001AC208[airplayLeaderState];
        }

        if (_airPlayLeaderStateUncached < 8)
        {
          v44 = off_1001AC208[_airPlayLeaderStateUncached];
        }

        LogPrintF();
        goto LABEL_112;
      }

      if (_LogCategory_Initialize())
      {
        airplayLeaderState = self->_airplayLeaderState;
        goto LABEL_105;
      }
    }

LABEL_112:
    self->_airplayLeaderState = _airPlayLeaderStateUncached;
    if (_airPlayLeaderStateUncached == 2)
    {
      CFPrefs_RemoveValue();
    }

    else
    {
      v45 = &kCFBooleanTrue;
      if (_airPlayLeaderStateUncached != 6)
      {
        v45 = &kCFBooleanFalse;
      }

      v46 = *v45;
      CFPrefs_SetValue();
    }

    goto LABEL_117;
  }

LABEL_118:
  if (v15)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100035CE8;
    block[3] = &unk_1001AA970;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
    v69[0] = @"_clFl";
    0x280 = [NSNumber numberWithUnsignedInt:[(RPCompanionLinkDevice *)self->_localDeviceInfo flags]& 0x280];
    v69[1] = @"_msSt";
    v70[0] = 0x280;
    v49 = [NSNumber numberWithInt:[(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemState]];
    v70[1] = v49;
    v50 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:2];
    [(RPCompanionLinkDaemon *)self sendEventID:@"_systemInfoUpdate" event:v50 destinationID:@"rapport:rdid:SameHome" options:0 completion:0];
  }

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);
}

- (id)_xpcConnections:(id)connections withControlFlags:(unint64_t)flags
{
  connectionsCopy = connections;
  v6 = objc_alloc_init(NSMutableSet);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = connectionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        client = [v12 client];
        v14 = [client controlFlags] & flags;

        if (v14)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)_homeKitEnsureStopped
{
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100113E2C();
  }

  rpHomeKitManager = self->_rpHomeKitManager;
  if (rpHomeKitManager)
  {
    [(RPHomeKitManager *)rpHomeKitManager invalidate];
    v4 = self->_rpHomeKitManager;
    self->_rpHomeKitManager = 0;
  }

  homeKitManager = self->_homeKitManager;
  if (homeKitManager)
  {
    [(CUHomeKitManager *)homeKitManager invalidate];
    v6 = self->_homeKitManager;
    self->_homeKitManager = 0;

    self->_homeKitManagerState = 0;
    homeKitSelfAccessory = self->_homeKitSelfAccessory;
    self->_homeKitSelfAccessory = 0;

    self->_homeKitSelfAccessorySiriEnabled = 0;
    homeKitSelfMediaSystem = self->_homeKitSelfMediaSystem;
    self->_homeKitSelfMediaSystem = 0;

    homeKitSelfMediaSystemRole = self->_homeKitSelfMediaSystemRole;
    self->_homeKitSelfMediaSystemRole = 0;
  }

  if (self->_receiveHomeKitPairingUpdated)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 removeObserver:self name:@"HMAccessoryPairingIdentityUpdatedNotification" object:0];
    self->_receiveHomeKitPairingUpdated = 0;
  }

  homeKitAuthTag = self->_homeKitAuthTag;
  self->_homeKitAuthTag = 0;

  homeKitIRK = self->_homeKitIRK;
  self->_homeKitIRK = 0;

  homeKitLTPK = self->_homeKitLTPK;
  self->_homeKitLTPK = 0;

  homeKitRotatingID = self->_homeKitRotatingID;
  self->_homeKitRotatingID = 0;
}

- (void)_homeKitPairingUpdated:(id)updated
{
  updatedCopy = updated;
  if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100113E48();
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100036618;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)_homeKitAuthMatchForBonjourDevice:(id)device
{
  deviceCopy = device;
  if ([(NSData *)self->_homeKitIRK length]== 16)
  {
    txtDictionary = [deviceCopy txtDictionary];
    CFDictionaryGetData();
  }

  return 0;
}

- (id)_homeKitDecryptRotatingIDForBonjourDevice:(id)device
{
  if (self->_homeKitLTPK)
  {
    txtDictionary = [device txtDictionary];
    CFDictionaryGetHardwareAddress();
    CFDictionaryGetData();
  }

  return 0;
}

- (void)_homeKitGetUserInfo:(id)info
{
  infoCopy = info;
  homeKitSelfAccessory = self->_homeKitSelfAccessory;
  if (homeKitSelfAccessory)
  {
    v12 = infoCopy;
    home = [(HMAccessory *)homeKitSelfAccessory home];
    v7 = home;
    if (home)
    {
      currentUser = [home currentUser];
      if (currentUser)
      {
        accountID = [v12 accountID];

        if (!accountID)
        {
          userID = [currentUser userID];
          [v12 setAccountID:userID];

          uniqueIdentifier = [currentUser uniqueIdentifier];
          [v12 setHomeKitUserIdentifier:uniqueIdentifier];
        }
      }
    }

    infoCopy = v12;
  }
}

- (void)_homeKitIdentityUpdated:(id)updated error:(id)error
{
  updatedCopy = updated;
  errorCopy = error;
  if (!errorCopy)
  {
    publicKey = [updatedCopy publicKey];
    if (![publicKey length])
    {
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100113F24(publicKey);
      }

      goto LABEL_25;
    }

    homeKitLTPK = self->_homeKitLTPK;
    v9 = publicKey;
    v10 = homeKitLTPK;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      if ((v9 != 0) == (v10 == 0))
      {

        goto LABEL_21;
      }

      v12 = [(NSData *)v9 isEqual:v10];

      if (!v12)
      {
LABEL_21:
        objc_storeStrong(&self->_homeKitLTPK, publicKey);
        v13 = objc_alloc_init(RPIdentity);
        [v13 setEdPKData:v9];
        secretKey = [updatedCopy secretKey];
        [v13 setEdSKData:secretKey];

        identifier = [updatedCopy identifier];
        uUIDString = [identifier UUIDString];
        [v13 setIdentifier:uUIDString];

        [(RPCompanionLinkDaemon *)self _homeKitGetUserInfo:v13];
        v17 = +[RPIdentityDaemon sharedIdentityDaemon];
        [v17 setHomeKitIdentity:v13];

        self->_prefHomeKitConfigured = 1;
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100113EC4();
        }

        [(RPCompanionLinkDaemon *)self _forEachConnectionWithHandler:&stru_1001ABBB8];
        v18 = [(RPCompanionLinkDaemon *)self _discoveryNonceOrRotate:1];
        [(RPCompanionLinkDaemon *)self _homeKitUpdateInfo:1];
        [(RPCompanionLinkDaemon *)self _clientBonjourReevaluateAllDevices];
        [(RPCompanionLinkDaemon *)self _update];

LABEL_25:
        goto LABEL_26;
      }
    }

    if (dword_1001D3228 <= 10 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100113F04();
    }

    goto LABEL_25;
  }

  if (dword_1001D3228 <= 60 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100113E84();
  }

LABEL_26:
}

- (void)_homeKitSelfAccessoryMediaAccessUpdated:(unsigned int)updated password:(id)password
{
  updatedCopy = updated;
  passwordCopy = password;
  password = [(RPCompanionLinkDevice *)self->_localDeviceInfo password];
  v17 = passwordCopy;
  v8 = password;
  if (v8 == v17)
  {

    goto LABEL_6;
  }

  if ((v17 != 0) == (v8 == 0))
  {

    goto LABEL_8;
  }

  v9 = [v17 isEqual:v8];

  if (v9)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_12;
  }

LABEL_8:
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100113F68(v8, v17);
  }

  [(RPCompanionLinkDevice *)self->_localDeviceInfo setPassword:v17];
  v10 = 1;
  [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
LABEL_12:
  flags = [(RPCompanionLinkDevice *)self->_localDeviceInfo flags];
  v12 = flags & 0xFFFFFFE3 | (8 * (updatedCopy & 3)) | (4 * ([v17 length] != 0));
  if (v12 == flags)
  {
    if (!v10)
    {
      if ((updatedCopy & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v15 = v12;
      v16 = &unk_100147B44;
      v13 = flags;
      v14 = &unk_100147B44;
      LogPrintF();
    }

    [(RPCompanionLinkDevice *)self->_localDeviceInfo setFlags:v12, v13, v14, v15, v16];
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
  }

  [(RPCompanionLinkDaemon *)self _update];
  if (updatedCopy)
  {
LABEL_15:
    [(RPCompanionLinkDaemon *)self _disconnectUnauthConnections];
  }

LABEL_16:
}

- (void)_homeKitSelfAccessoryMediaSystemUpdated:(int)updated
{
  mediaSystemIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemIdentifier];
  uniqueIdentifier = [(HMMediaSystem *)self->_homeKitSelfMediaSystem uniqueIdentifier];
  v7 = mediaSystemIdentifier;
  v8 = v7;
  v9 = uniqueIdentifier != v7;
  if (uniqueIdentifier == v7)
  {

    uUIDString = uniqueIdentifier;
  }

  else
  {
    if ((v7 == 0) != (uniqueIdentifier != 0))
    {
      v10 = [uniqueIdentifier isEqual:v7];

      if (v10)
      {
        v9 = 0;
        goto LABEL_13;
      }
    }

    else
    {
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v46 = v8;
      v47 = uniqueIdentifier;
      LogPrintF();
    }

    [(RPCompanionLinkDevice *)self->_localDeviceInfo setMediaSystemIdentifier:uniqueIdentifier, v46, v47];
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
    uUIDString = [uniqueIdentifier UUIDString];
    CFPrefs_SetValue();
  }

LABEL_13:
  mediaSystemIdentifierEffective = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemIdentifierEffective];

  if (self->_stereoCnx)
  {
    v13 = uniqueIdentifier;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = v14;
  v16 = mediaSystemIdentifierEffective;
  v17 = v16;
  if (v15 == v16)
  {

    v19 = v9;
    goto LABEL_27;
  }

  if ((v16 == 0) != (v15 != 0))
  {
    v18 = [v15 isEqual:v16];

    v19 = v9;
    if (v18)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    v46 = v17;
    v47 = v15;
    LogPrintF();
  }

  [(RPCompanionLinkDevice *)self->_localDeviceInfo setMediaSystemIdentifierEffective:v15, v46, v47];
  v19 = 1;
  [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
LABEL_27:
  mediaSystemName = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemName];
  name = [(HMMediaSystem *)self->_homeKitSelfMediaSystem name];
  v22 = mediaSystemName;
  v23 = v22;
  if (name == v22)
  {
  }

  else
  {
    if ((v22 == 0) == (name != 0))
    {

      goto LABEL_42;
    }

    v24 = [name isEqual:v22];

    if ((v24 & 1) == 0)
    {
LABEL_42:
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        v46 = v23;
        v47 = name;
        LogPrintF();
      }

      [(RPCompanionLinkDevice *)self->_localDeviceInfo setMediaSystemName:name, v46, v47];
      v19 = 1;
      [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
      goto LABEL_47;
    }
  }

  if (![name length] && !self->_fixedSoundBoardNameIssue && self->_soundBoardPrefs)
  {
    CFStringGetTypeID();
    v25 = CFPrefs_CopyTypedValue();
    if ([v25 length])
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100113FE8();
      }

      CFPrefs_RemoveValue();
      v9 = 1;
      self->_fixedSoundBoardNameIssue = 1;
    }
  }

LABEL_47:
  mediaSystemRole = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemRole];
  homeKitSelfMediaSystemRole = self->_homeKitSelfMediaSystemRole;
  if (homeKitSelfMediaSystemRole)
  {
    type = [(HMMediaSystemRole *)homeKitSelfMediaSystemRole type];
    if (type == 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2 * (type == 2);
    }
  }

  else if (self->_homeKitSelfAccessory)
  {
    v29 = 3;
  }

  else
  {
    v29 = 0;
  }

  v51 = v23;
  v52 = name;
  if (v29 != mediaSystemRole)
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100114028(mediaSystemRole, v29);
    }

    [(RPCompanionLinkDevice *)self->_localDeviceInfo setMediaSystemRole:v29];
    if (v29 == 1)
    {
      v30 = &RPDeviceRoleStereoLeft;
    }

    else
    {
      if (v29 != 2)
      {
        v31 = 0;
        goto LABEL_64;
      }

      v30 = &RPDeviceRoleStereoRight;
    }

    v31 = *v30;
LABEL_64:
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setRole:v31];

    v19 = 1;
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
  }

  mediaSystemRoleEffective = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemRoleEffective];
  if (self->_stereoCnx)
  {
    v33 = v29;
  }

  else
  {
    v33 = 0;
  }

  if (v33 == mediaSystemRoleEffective)
  {
    if (!v19)
    {
      goto LABEL_94;
    }

    goto LABEL_80;
  }

  if (dword_1001D3228 <= 30)
  {
    v34 = mediaSystemRoleEffective;
    if (dword_1001D3228 != -1 || _LogCategory_Initialize())
    {
      sub_10011408C(v34, v33);
    }
  }

  [(RPCompanionLinkDevice *)self->_localDeviceInfo setMediaSystemRoleEffective:v33];
  [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
  if (v33 == 1)
  {
    v35 = &RPDeviceRoleStereoLeft;
    goto LABEL_78;
  }

  if (v33 == 2)
  {
    v35 = &RPDeviceRoleStereoRight;
LABEL_78:
    v36 = *v35;
  }

  CFPrefs_SetValue();
  CFPreferencesAppSynchronize(@"com.apple.soundautoconfig");
LABEL_80:
  v48 = v17;
  v49 = v15;
  v50 = v9;
  [(RPCompanionLinkDaemon *)self _update];
  v53[0] = @"_forcedRole";
  role = [(RPCompanionLinkDevice *)self->_localDeviceInfo role];
  v38 = role;
  if (!role)
  {
    v38 = +[NSNull null];
  }

  v54[0] = v38;
  v53[1] = @"_msId";
  mediaSystemIdentifier2 = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemIdentifier];
  v40 = mediaSystemIdentifier2;
  if (!mediaSystemIdentifier2)
  {
    v40 = +[NSNull null];
  }

  updatedCopy = updated;
  v54[1] = v40;
  v53[2] = @"_msNm";
  mediaSystemName2 = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemName];
  v43 = mediaSystemName2;
  if (!mediaSystemName2)
  {
    v43 = +[NSNull null];
  }

  v54[2] = v43;
  v53[3] = @"_msRo";
  v44 = [NSNumber numberWithInt:[(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemRole]];
  v54[3] = v44;
  v45 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:4];
  [(RPCompanionLinkDaemon *)self sendEventID:@"_systemInfoUpdate" event:v45 destinationID:@"rapport:rdid:SameHome" options:0 completion:0];

  if (!mediaSystemName2)
  {
  }

  if (!mediaSystemIdentifier2)
  {
  }

  if (!role)
  {
  }

  v9 = v50;
  v17 = v48;
  v15 = v49;
  if (updatedCopy <= 3)
  {
    [(RPCompanionLinkDaemon *)self _stereoDeviceUpdate:(updatedCopy + 1)];
  }

LABEL_94:
  if (v9)
  {
    CFPreferencesAppSynchronize(@"com.apple.airplay");
    notify_post("com.apple.airplay.prefsChanged");
  }
}

- (void)_homeKitSelfAccessoryUpdated
{
  v24 = +[NSMutableDictionary dictionary];
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001140F0();
  }

  v3 = self->_homeKitSelfAccessory;
  if (v3)
  {
    roomName = [(RPCompanionLinkDevice *)self->_localDeviceInfo roomName];
    room = [(HMAccessory *)v3 room];
    name = [room name];

    v7 = name;
    v8 = roomName;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      if ((v8 == 0) == (v7 != 0))
      {

        goto LABEL_16;
      }

      v10 = [v7 isEqual:v8];

      if ((v10 & 1) == 0)
      {
LABEL_16:
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          v22 = v9;
          v23 = v7;
          LogPrintF();
        }

        [(RPCompanionLinkDevice *)self->_localDeviceInfo setRoomName:v7, v22, v23];
        [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
        if (v7)
        {
          [v24 setObject:v7 forKeyedSubscript:@"_roomName"];
        }

        else
        {
          v12 = +[NSNull null];
          [v24 setObject:v12 forKeyedSubscript:@"_roomName"];
        }

        v11 = 1;
LABEL_24:
        personalRequestsState = [(RPCompanionLinkDevice *)self->_localDeviceInfo personalRequestsState];
        if (self->_homeKitSelfAccessorySiriEnabled)
        {
          v14 = 6;
        }

        else
        {
          v14 = 5;
        }

        if (v14 == personalRequestsState)
        {
          if (!v11)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (dword_1001D3228 <= 30)
          {
            v15 = personalRequestsState;
            if (dword_1001D3228 != -1 || _LogCategory_Initialize())
            {
              sub_10011410C(v15);
            }
          }

          [(RPCompanionLinkDevice *)self->_localDeviceInfo setPersonalRequestsState:v14];
          [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:1];
        }

        [(RPCompanionLinkDaemon *)self _update];
LABEL_35:
        home = [(HMAccessory *)self->_homeKitSelfAccessory home];
        currentUser = [home currentUser];

        currentUser2 = [(RPHomeKitManager *)self->_rpHomeKitManager currentUser];
        uniqueIdentifier = [currentUser uniqueIdentifier];
        uniqueIdentifier2 = [currentUser2 uniqueIdentifier];
        v21 = [uniqueIdentifier isEqual:uniqueIdentifier2];

        if ((v21 & 1) == 0)
        {
          [(RPHomeKitManager *)self->_rpHomeKitManager setCurrentUser:0];
          [(RPCompanionLinkDaemon *)self _updatePersonalRequestsStateForHomeHubDevices];
        }

        if ([v24 count])
        {
          [(RPCompanionLinkDaemon *)self sendEventID:@"_systemInfoUpdate" event:v24 destinationID:@"rapport:rdid:SameHome" options:0 completion:0];
        }

        goto LABEL_40;
      }
    }

    v11 = 0;
    goto LABEL_24;
  }

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100114194();
  }

LABEL_40:
}

- (void)_homeKitUpdateInfo:(BOOL)info
{
  if (info)
  {
    homeKitAuthTag = self->_homeKitAuthTag;
    self->_homeKitAuthTag = 0;

    homeKitIRK = self->_homeKitIRK;
    self->_homeKitIRK = 0;

    homeKitRotatingID = self->_homeKitRotatingID;
    self->_homeKitRotatingID = 0;
  }

  if (!self->_homeKitIRK)
  {
    homeKitLTPK = self->_homeKitLTPK;
    if (homeKitLTPK)
    {
      [(NSData *)homeKitLTPK bytes];
      [(NSData *)self->_homeKitLTPK length];
      CryptoHKDF();
      v11 = [[NSData alloc] initWithBytes:v22 length:{16, v22}];
      v12 = self->_homeKitIRK;
      self->_homeKitIRK = v11;

      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001141B0(&self->_homeKitIRK);
      }
    }
  }

  if (!self->_homeKitAuthTag && [(NSData *)self->_homeKitIRK length]== 16)
  {
    if (self->_btAdvAddrData)
    {
      [(NSData *)self->_homeKitIRK bytes];
      [(NSData *)self->_btAdvAddrData bytes];
      [(NSData *)self->_btAdvAddrData length];
      v7 = SipHash();
      v22[0] = BYTE5(v7);
      v22[1] = BYTE4(v7);
      v22[2] = BYTE3(v7);
      v22[3] = BYTE2(v7);
      v22[4] = BYTE1(v7);
      v22[5] = v7;
      v8 = [[NSData alloc] initWithBytes:v22 length:6];
      v9 = self->_homeKitAuthTag;
      self->_homeKitAuthTag = v8;

      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001141F0(&self->_homeKitAuthTag);
      }
    }
  }

  if (!self->_homeKitRotatingID)
  {
    if (self->_btAdvAddrData)
    {
      v13 = self->_homeKitLTPK;
      if (v13)
      {
        if (self->_uniqueIDData)
        {
          v14 = kCryptoHashDescriptor_SHA512;
          [(NSData *)v13 bytes];
          [(NSData *)self->_homeKitLTPK length];
          CryptoHKDF();
          v15 = [(NSData *)self->_btAdvAddrData length];
          btAdvAddrData = self->_btAdvAddrData;
          if (v15 == 6)
          {
            [(NSData *)btAdvAddrData bytes];
            [(NSData *)self->_btAdvAddrData length];
            __memcpy_chk();
            v14 = [(RPCompanionLinkDaemon *)self _discoveryNonceOrRotate:0];
            if ([v14 length] == 6)
            {
              [v14 bytes];
              [v14 length];
              __memcpy_chk();
              v17 = [(NSData *)self->_uniqueIDData length];
              uniqueIDData = self->_uniqueIDData;
              if (v17 == 6)
              {
                [uniqueIDData bytes];
                [(NSData *)self->_uniqueIDData length];
                chacha20_all_96x32();
                v19 = [[NSData alloc] initWithBytes:v21 length:6];
                v20 = self->_homeKitRotatingID;
                self->_homeKitRotatingID = v19;

                if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
                {
                  sub_10011429C(&self->_homeKitRotatingID);
                }

                return;
              }

LABEL_31:
              sub_100114278(uniqueIDData);
            }
          }

          else
          {
            sub_100114230(btAdvAddrData);
          }

          uniqueIDData = sub_100114254(v14);
          goto LABEL_31;
        }
      }
    }
  }
}

- (id)_eventForHomeHubDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v5 = +[NSMutableDictionary dictionary];
    identifier2 = [deviceCopy identifier];

    if (identifier2)
    {
      [v5 setObject:identifier forKeyedSubscript:@"_i"];
    }

    homeKitIdentifier = [deviceCopy homeKitIdentifier];

    if (homeKitIdentifier)
    {
      homeKitIdentifier2 = [deviceCopy homeKitIdentifier];
      [v5 setObject:homeKitIdentifier2 forKeyedSubscript:@"_hkID"];
    }

    mediaRouteIdentifier = [deviceCopy mediaRouteIdentifier];

    if (mediaRouteIdentifier)
    {
      mediaRouteIdentifier2 = [deviceCopy mediaRouteIdentifier];
      [v5 setObject:mediaRouteIdentifier2 forKeyedSubscript:@"_mRtID"];
    }

    siriInfo = [deviceCopy siriInfo];

    if (siriInfo)
    {
      siriInfo2 = [deviceCopy siriInfo];
      [v5 setObject:siriInfo2 forKeyedSubscript:@"_siriInfo"];
    }

    roomName = [deviceCopy roomName];

    if (roomName)
    {
      roomName2 = [deviceCopy roomName];
      [v5 setObject:roomName2 forKeyedSubscript:@"_roomName"];
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001142DC();
    }

    v5 = 0;
  }

  return v5;
}

- (void)_homeHubDeviceAdded:(id)added
{
  addedCopy = added;
  homeHubDevices = self->_homeHubDevices;
  v24 = addedCopy;
  if (!homeHubDevices)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = self->_homeHubDevices;
    self->_homeHubDevices = v6;

    addedCopy = v24;
    homeHubDevices = self->_homeHubDevices;
  }

  identifier = [addedCopy identifier];
  v9 = [(NSMutableDictionary *)homeHubDevices objectForKeyedSubscript:identifier];

  if (!v9)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011431C();
    }

    [v24 setPersonalDeviceState:{-[RPCompanionLinkDevice personalDeviceState](self->_localDeviceInfo, "personalDeviceState")}];
    idsPersonalDeviceIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo idsPersonalDeviceIdentifier];
    [v24 setIdsPersonalDeviceIdentifier:idsPersonalDeviceIdentifier];

    rpHomeKitManager = self->_rpHomeKitManager;
    homeKitIdentifier = [v24 homeKitIdentifier];
    v10 = [(RPHomeKitManager *)rpHomeKitManager homeHubDeviceWithIdentifier:homeKitIdentifier];

    v14 = self->_rpHomeKitManager;
    homeKitIdentifier2 = [v24 homeKitIdentifier];
    LODWORD(v14) = [(RPHomeKitManager *)v14 personalRequestsStateForAccessory:homeKitIdentifier2];

    if (v14)
    {
      v16 = 6;
    }

    else
    {
      v16 = 5;
    }

    [v24 setPersonalRequestsState:v16];
    room = [v10 room];
    name = [room name];
    [v24 setRoomName:name];

    v19 = self->_homeHubDevices;
    identifier2 = [v24 identifier];
    [(NSMutableDictionary *)v19 setObject:v24 forKeyedSubscript:identifier2];

    [(RPCompanionLinkDaemon *)self _clientReportFoundDevice:v24];
    v21 = [(RPCompanionLinkDaemon *)self _eventForHomeHubDevice:v24];
    if (v21)
    {
      v22 = +[NSMutableArray array];
      [v22 addObject:v21];
      v23 = [NSDictionary dictionaryWithObjectsAndKeys:v22, @"_proxyDevs", 0];
      [(RPCompanionLinkDaemon *)self sendEventID:@"_proxyAdd" event:v23 destinationID:@"rapport:rdid:SameHome" options:0 completion:&stru_1001ABBD8];
    }

    goto LABEL_16;
  }

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    v10 = CUDescriptionWithLevel();
    LogPrintF();
LABEL_16:
  }
}

- (void)_homeHubDeviceRemoved:(id)removed
{
  removedCopy = removed;
  [removedCopy setStatusFlags:{objc_msgSend(removedCopy, "statusFlags") & 0xFFFFFFFFEFFFFFFFLL}];
  [removedCopy setSiriInfo:0];
  [(RPCompanionLinkDaemon *)self _clientReportLostDevice:removedCopy];
  homeHubDevices = self->_homeHubDevices;
  identifier = [removedCopy identifier];
  [(NSMutableDictionary *)homeHubDevices setObject:0 forKeyedSubscript:identifier];

  if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001143BC();
  }

  v6 = [(RPCompanionLinkDaemon *)self _eventForHomeHubDevice:removedCopy];
  if (v6)
  {
    v7 = +[NSMutableArray array];
    [v7 addObject:v6];
    v8 = [NSDictionary dictionaryWithObjectsAndKeys:v7, @"_proxyDevs", 0];
    [(RPCompanionLinkDaemon *)self sendEventID:@"_proxyRemove" event:v8 destinationID:@"rapport:rdid:SameHome" options:0 completion:&stru_1001ABBF8];
  }
}

- (void)_updateHomeHubDevices:(id)devices
{
  devicesCopy = devices;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = [devicesCopy countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v42;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(devicesCopy);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        homeHubDevices = self->_homeHubDevices;
        identifier = [v9 identifier];
        v12 = [(NSMutableDictionary *)homeHubDevices objectForKeyedSubscript:identifier];

        if (!v12)
        {
          [(RPCompanionLinkDaemon *)self _homeHubDeviceAdded:v9];
        }
      }

      v6 = [devicesCopy countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v6);
  }

  allValues = [(NSMutableDictionary *)self->_homeHubDevices allValues];
  v14 = [allValues copy];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    v29 = *v38;
    selfCopy = self;
    do
    {
      v18 = 0;
      v31 = v16;
      do
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v37 + 1) + 8 * v18);
        if (([v19 statusFlags] & 0x20000000) != 0)
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v20 = devicesCopy;
          v21 = devicesCopy;
          v22 = [v21 countByEnumeratingWithState:&v33 objects:v45 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v34;
            while (2)
            {
              for (j = 0; j != v23; j = j + 1)
              {
                if (*v34 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                identifier2 = [*(*(&v33 + 1) + 8 * j) identifier];
                identifier3 = [v19 identifier];
                v28 = [identifier2 isEqual:identifier3];

                if (v28)
                {

                  devicesCopy = v20;
                  self = selfCopy;
                  goto LABEL_26;
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v33 objects:v45 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

          self = selfCopy;
          [(RPCompanionLinkDaemon *)selfCopy _homeHubDeviceRemoved:v19];
          devicesCopy = v20;
LABEL_26:
          v17 = v29;
          v16 = v31;
        }

        v18 = v18 + 1;
      }

      while (v18 != v16);
      v16 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v16);
  }

  [(RPCompanionLinkDaemon *)self _update];
}

- (void)registerEventID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  v10 = [(NSMutableDictionary *)self->_registeredEvents objectForKeyedSubscript:dCopy];

  if (v10)
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011445C();
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011449C();
    }

    v11 = objc_alloc_init(RPEventRegistration);
    [(RPEventRegistration *)v11 setEventID:dCopy];
    [(RPEventRegistration *)v11 setOptions:optionsCopy];
    [(RPEventRegistration *)v11 setHandler:handlerCopy];
    registeredEvents = self->_registeredEvents;
    if (!registeredEvents)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = self->_registeredEvents;
      self->_registeredEvents = v13;

      registeredEvents = self->_registeredEvents;
    }

    [(NSMutableDictionary *)registeredEvents setObject:v11 forKeyedSubscript:dCopy];
  }
}

- (void)deregisterEventID:(id)d
{
  dCopy = d;
  v6 = dCopy;
  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || (v5 = _LogCategory_Initialize(), dCopy = v6, v5))
    {
      sub_1001144DC();
      dCopy = v6;
    }
  }

  [(NSMutableDictionary *)self->_registeredEvents setObject:0 forKeyedSubscript:dCopy];
}

- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  optionsCopy = options;
  selfCopy = self;
  completionCopy = completion;
  v32 = iDCopy;
  v33 = [(RPCompanionLinkDaemon *)self _checkForProxyOrLocalDestinations:iDCopy eventID:dCopy event:event options:optionsCopy completion:?];
  if (v33)
  {
    xidLast = self->_xidLast;
    if (xidLast + 1 > 1)
    {
      v16 = xidLast + 1;
    }

    else
    {
      v16 = 1;
    }

    self->_xidLast = v16;
    v34 = v16;
    v17 = [NSNumber numberWithUnsignedInt:?];
    v36 = [NSMutableDictionary dictionaryWithObjectsAndKeys:&off_1001B7D68, @"_t", dCopy, @"_i", v33, @"_c", v17, @"_x", 0];

    v18 = [optionsCopy objectForKeyedSubscript:@"chatty"];
    bOOLValue = [v18 BOOLValue];

    if (bOOLValue)
    {
      [v36 setObject:&__kCFBooleanTrue forKeyedSubscript:@"_cht"];
    }

    v20 = [optionsCopy objectForKeyedSubscript:@"inUseProcess"];

    if (v20)
    {
      v21 = [optionsCopy objectForKeyedSubscript:@"inUseProcess"];
      [v36 setObject:v21 forKeyedSubscript:@"_inUseProc"];
    }

    v63[0] = 0;
    v63[1] = v63;
    v63[2] = 0x3032000000;
    v63[3] = sub_1000029CC;
    v63[4] = sub_10000317C;
    v64 = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    group = dispatch_group_create();
    if ([iDCopy isEqual:@"rapport:rdid:InterestedPeers"])
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v22 = [(NSMutableDictionary *)self->_interestEvents objectForKeyedSubscript:dCopy];
      v23 = [v22 countByEnumeratingWithState:&v55 objects:v65 count:16];
      if (v23)
      {
        v24 = *v56;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v56 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v55 + 1) + 8 * i);
            v48[0] = _NSConcreteStackBlock;
            v48[1] = 3221225472;
            v48[2] = sub_10003916C;
            v48[3] = &unk_1001ABC48;
            v48[4] = group;
            v49 = v36;
            v52 = v63;
            v50 = dCopy;
            v54 = v34;
            v51 = optionsCopy;
            v53 = &v59;
            [(RPCompanionLinkDaemon *)selfCopy _forEachMatchingDestinationID:v26 handler:v48];
          }

          v23 = [v22 countByEnumeratingWithState:&v55 objects:v65 count:16];
        }

        while (v23);
      }
    }

    else
    {
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100039308;
      v41[3] = &unk_1001ABC48;
      v41[4] = group;
      v42 = v36;
      v45 = v63;
      v43 = dCopy;
      v47 = v34;
      v44 = optionsCopy;
      v46 = &v59;
      [(RPCompanionLinkDaemon *)self _forEachUniqueMatchingDestinationID:iDCopy handler:v41];
    }

    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000394A4;
    block[3] = &unk_1001ABC70;
    v39 = completionCopy;
    v40 = v63;
    dispatch_group_notify(group, dispatchQueue, block);
    if (*(v60 + 6))
    {
      goto LABEL_30;
    }

    v28 = dCopy;
    if ([v28 isEqual:@"HIDRelay"] & 1) != 0 || (objc_msgSend(v28, "isEqual:", @"synchSetupStateFromStereoCounterpart") & 1) != 0 || (objc_msgSend(v28, "isEqual:", @"_hidT") & 1) != 0 || (objc_msgSend(v28, "isEqual:", @"_laData"))
    {
    }

    else
    {
      v30 = [v28 isEqual:@"_siA"];

      if (!v30)
      {
        v29 = 30;
        goto LABEL_26;
      }
    }

    v29 = 10;
LABEL_26:
    if (v29 >= dword_1001D3228 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

LABEL_30:

    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(v63, 8);
  }
}

- (BOOL)_receivedEventID:(id)d onXPCCnx:(id)cnx event:(id)event options:(id)options unauth:(BOOL)unauth rpCnx:(id)rpCnx
{
  unauthCopy = unauth;
  dCopy = d;
  cnxCopy = cnx;
  eventCopy = event;
  optionsCopy = options;
  rpCnxCopy = rpCnx;
  registeredEvents = [cnxCopy registeredEvents];
  v20 = [registeredEvents objectForKeyedSubscript:dCopy];
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    registeredEvents2 = [cnxCopy registeredEvents];
    v21 = [registeredEvents2 objectForKeyedSubscript:@"*"];

    if (!v21)
    {
LABEL_7:
      v23 = 0;
      goto LABEL_8;
    }
  }

  if (unauthCopy && ![(RPCompanionLinkDaemon *)self _allowMessageForRegistrationOptions:v21 cnx:rpCnxCopy])
  {
    goto LABEL_7;
  }

  [cnxCopy receivedEventID:dCopy event:eventCopy options:optionsCopy];
  v23 = 1;
LABEL_8:

  return v23;
}

- (void)_deliverEventID:(id)d event:(id)event options:(id)options unauth:(BOOL)unauth cnx:(id)cnx outError:(id *)error
{
  unauthCopy = unauth;
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  v37 = dCopy;
  cnxCopy = cnx;
  v14 = [(NSMutableDictionary *)self->_registeredEvents objectForKeyedSubscript:dCopy];
  handler = [v14 handler];
  if (handler)
  {
    if (!unauthCopy || ([v14 options], (v16 = objc_claimAutoreleasedReturnValue()) != 0) && (v17 = v16, v18 = -[RPCompanionLinkDaemon _allowMessageForRegistrationOptions:cnx:](self, "_allowMessageForRegistrationOptions:cnx:", v16, cnxCopy), v17, v18))
    {
      (handler)[2](handler, eventCopy, optionsCopy);
    }
  }

  CFStringGetTypeID();
  v19 = CFDictionaryGetTypedValue();
  v20 = v19;
  if (v19)
  {
    v21 = !unauthCopy;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    sub_10011455C(error);
    goto LABEL_33;
  }

  if (!v19)
  {
    launchInstanceID2 = 0;
LABEL_15:
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v25 = self->_xpcConnections;
    v26 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v26)
    {
      v27 = v26;
      v34 = v20;
      v35 = handler;
      v36 = v14;
      v28 = 0;
      v29 = *v43;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v43 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v42 + 1) + 8 * i);
          launchInstanceID = [v31 launchInstanceID];
          v33 = launchInstanceID;
          if ((launchInstanceID2 != 0) == (launchInstanceID != 0) && (!launchInstanceID2 || [launchInstanceID isEqual:launchInstanceID2]))
          {
            v28 |= [(RPCompanionLinkDaemon *)self _receivedEventID:v37 onXPCCnx:v31 event:eventCopy options:optionsCopy unauth:unauthCopy rpCnx:cnxCopy];
          }
        }

        v27 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v27);

      handler = v35;
      v14 = v36;
      v20 = v34;
      if (v28)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011451C();
    }

LABEL_32:

    goto LABEL_33;
  }

  v22 = [(NSMutableDictionary *)self->_homeHubDevices objectForKeyedSubscript:v19];
  if (v22)
  {
    v23 = v22;
    launchInstanceID2 = [v22 launchInstanceID];

    goto LABEL_15;
  }

  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (error)
  {
    *error = RPErrorF();
  }

LABEL_33:
}

- (void)_registerConnectionRequestID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  v10 = [(NSMutableDictionary *)self->_registeredRequests objectForKeyedSubscript:dCopy];

  if (v10)
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001145AC();
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001145EC();
    }

    v11 = objc_alloc_init(RPRequestRegistration);
    [(RPRequestRegistration *)v11 setRequestID:dCopy];
    [(RPRequestRegistration *)v11 setOptions:optionsCopy];
    [(RPRequestRegistration *)v11 setCnxHandler:handlerCopy];
    registeredRequests = self->_registeredRequests;
    if (!registeredRequests)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = self->_registeredRequests;
      self->_registeredRequests = v13;

      registeredRequests = self->_registeredRequests;
    }

    [(NSMutableDictionary *)registeredRequests setObject:v11 forKeyedSubscript:dCopy];
  }
}

- (void)registerRequestID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  v10 = [(NSMutableDictionary *)self->_registeredRequests objectForKeyedSubscript:dCopy];

  if (v10)
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011462C();
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011466C();
    }

    v11 = objc_alloc_init(RPRequestRegistration);
    [(RPRequestRegistration *)v11 setRequestID:dCopy];
    [(RPRequestRegistration *)v11 setOptions:optionsCopy];
    [(RPRequestRegistration *)v11 setHandler:handlerCopy];
    registeredRequests = self->_registeredRequests;
    if (!registeredRequests)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = self->_registeredRequests;
      self->_registeredRequests = v13;

      registeredRequests = self->_registeredRequests;
    }

    [(NSMutableDictionary *)registeredRequests setObject:v11 forKeyedSubscript:dCopy];
  }
}

- (void)deregisterRequestID:(id)d
{
  dCopy = d;
  v6 = dCopy;
  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || (v5 = _LogCategory_Initialize(), dCopy = v6, v5))
    {
      sub_1001146AC();
      dCopy = v6;
    }
  }

  [(NSMutableDictionary *)self->_registeredRequests setObject:0 forKeyedSubscript:dCopy];
}

- (void)sendRequestID:(id)d request:(id)request destinationID:(id)iD xpcID:(unsigned int)xpcID options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  optionsCopy = options;
  handlerCopy = handler;
  v18 = [(RPCompanionLinkDaemon *)self _addProxyIdentifier:iDCopy toDictionary:request];
  v19 = [(NSMutableDictionary *)self->_homeHubDevices objectForKeyedSubscript:iDCopy];
  v20 = v19;
  if (v19 && ([(RPCompanionLinkDevice *)v19 statusFlags]& 0x20000000) != 0)
  {
    selfCopy2 = self;
    localDeviceInfo = v20;
    goto LABEL_9;
  }

  effectiveIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo effectiveIdentifier];
  v22 = [iDCopy isEqual:effectiveIdentifier];

  if (v22)
  {
    localDeviceInfo = self->_localDeviceInfo;
    selfCopy2 = self;
LABEL_9:
    [(RPCompanionLinkDaemon *)selfCopy2 _proxyDevice:localDeviceInfo loopbackRequestID:dCopy request:v18 options:optionsCopy responseHandler:handlerCopy];
    goto LABEL_10;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10003A170;
  v27[3] = &unk_1001ABC98;
  v32 = &v34;
  v28 = dCopy;
  v29 = v18;
  xpcIDCopy = xpcID;
  v30 = optionsCopy;
  v25 = handlerCopy;
  v31 = v25;
  [(RPCompanionLinkDaemon *)self _forEachMatchingDestinationID:iDCopy handler:v27];

  if ((v35[3] & 1) == 0)
  {
    v26 = RPErrorF();
    (*(v25 + 2))(v25, 0, 0, v26);
  }

  _Block_object_dispose(&v34, 8);
LABEL_10:
}

- (BOOL)_receivedRequestID:(id)d onXPCCnx:(id)cnx request:(id)request options:(id)options responseHandler:(id)handler unauth:(BOOL)unauth rpCnx:(id)rpCnx
{
  unauthCopy = unauth;
  dCopy = d;
  cnxCopy = cnx;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  rpCnxCopy = rpCnx;
  if ((([dCopy isEqualToString:@"_streamStart"] & 1) != 0 || objc_msgSend(dCopy, "isEqualToString:", @"_streamStop")) && !-[RPCompanionLinkDaemon _allowStreamRequest:xpcCnx:rpCnx:](self, "_allowStreamRequest:xpcCnx:rpCnx:", requestCopy, cnxCopy, rpCnxCopy))
  {
    v23 = 0;
  }

  else
  {
    registeredRequests = [cnxCopy registeredRequests];
    v22 = [registeredRequests objectForKeyedSubscript:dCopy];

    if (v22 && (!unauthCopy || [(RPCompanionLinkDaemon *)self _allowMessageForRegistrationOptions:v22 cnx:rpCnxCopy]))
    {
      [cnxCopy receivedRequestID:dCopy request:requestCopy options:optionsCopy responseHandler:handlerCopy];
      v23 = 1;
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (BOOL)_allowMessageForRegistrationOptions:(id)options cnx:(id)cnx
{
  optionsCopy = options;
  cnxCopy = cnx;
  v7 = cnxCopy;
  v9 = cnxCopy && (v8 = [cnxCopy statusFlags] & 0x70000AF000) != 0 && (CFDictionaryGetInt64() & v8) != 0 || CFDictionaryGetInt64() != 0;

  return v9;
}

- (BOOL)_allowStreamRequest:(id)request xpcCnx:(id)cnx rpCnx:(id)rpCnx
{
  requestCopy = request;
  cnxCopy = cnx;
  rpCnxCopy = rpCnx;
  client = [cnxCopy client];
  destinationDevice = [client destinationDevice];

  peerDeviceInfo = [rpCnxCopy peerDeviceInfo];

  identifier = [peerDeviceInfo identifier];
  if (identifier)
  {
    identifier2 = [destinationDevice identifier];
    v15 = identifier;
    v16 = identifier2;
    v17 = v16;
    if (v15 == v16)
    {
LABEL_17:
      v27 = v17;
      v28 = v15;
LABEL_27:

      v17 = v27;
      v15 = v28;
LABEL_28:

      goto LABEL_29;
    }

    if (v16)
    {
      v18 = [v15 isEqual:v16];

      if (v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    idsDeviceIdentifier = [destinationDevice idsDeviceIdentifier];
    v15 = v15;
    v20 = idsDeviceIdentifier;
    v21 = v20;
    if (v15 == v20)
    {
      goto LABEL_26;
    }

    if (v20)
    {
      v22 = [v15 isEqual:v20];

      if (v22)
      {
        goto LABEL_29;
      }
    }

    else
    {
    }
  }

  idsDeviceIdentifier2 = [peerDeviceInfo idsDeviceIdentifier];

  if (!idsDeviceIdentifier2)
  {
    client2 = 0;
    goto LABEL_19;
  }

  identifier3 = [destinationDevice identifier];
  v15 = idsDeviceIdentifier2;
  v25 = identifier3;
  v17 = v25;
  if (v15 == v25)
  {
    goto LABEL_17;
  }

  if (v25)
  {
    v26 = [v15 isEqual:v25];

    if (v26)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  idsDeviceIdentifier3 = [destinationDevice idsDeviceIdentifier];
  client2 = v15;
  v31 = idsDeviceIdentifier3;
  v21 = v31;
  if (client2 == v31)
  {
    v15 = client2;
LABEL_26:
    v27 = v17;
    v17 = v15;

    v15 = v21;
    v28 = v17;
    goto LABEL_27;
  }

  if (!v31)
  {
    v15 = client2;
    goto LABEL_37;
  }

  v32 = [client2 isEqual:v31];

  if (v32)
  {
    v15 = client2;
LABEL_29:
    CFStringGetTypeID();
    v17 = CFDictionaryGetTypedValue();
    if (!v17)
    {
      LOBYTE(v21) = 0;
LABEL_38:

      client2 = v15;
      goto LABEL_39;
    }

    client2 = [cnxCopy client];
    serviceType = [client2 serviceType];
    v17 = v17;
    v34 = serviceType;
    v35 = v34;
    if (v17 == v34)
    {
      LOBYTE(v21) = 1;
    }

    else if (v34)
    {
      LOBYTE(v21) = [v17 isEqual:v34];
    }

    else
    {
      LOBYTE(v21) = 0;
    }

LABEL_37:
    goto LABEL_38;
  }

LABEL_19:
  LOBYTE(v21) = 0;
LABEL_39:

  return v21;
}

- (void)_proxyDeviceListUpdated:(id)updated content:(id)content options:(id)options cnx:(id)cnx
{
  updatedCopy = updated;
  contentCopy = content;
  optionsCopy = options;
  cnxCopy = cnx;
  v37 = 0;
  objc_opt_class();
  v12 = NSDictionaryGetNSArrayOfClass();
  if (v12)
  {
    v25 = contentCopy;
    v26 = updatedCopy;
    v28 = [updatedCopy isEqual:@"_proxyAdd"];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v24 = v12;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      v27 = *v34;
      do
      {
        v16 = 0;
        v31 = v14;
        do
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v33 + 1) + 8 * v16);
          CFStringGetTypeID();
          v18 = CFDictionaryGetTypedValue();
          if (v18)
          {
            v19 = NSDictionaryGetNSUUID();
            if (v19)
            {
              v20 = objc_alloc_init(RPCompanionLinkDevice);
              [v20 setIdentifier:v18];
              [v20 setHomeKitIdentifier:v19];
              [v20 setStatusFlags:{objc_msgSend(v20, "statusFlags") | 0x10000000}];
              [v20 setFlags:{objc_msgSend(v20, "flags") | 0x2000}];
              CFStringGetTypeID();
              v21 = CFDictionaryGetTypedValue();
              if (v21)
              {
                [v20 setMediaRouteIdentifier:v21];
              }

              CFDictionaryGetTypeID();
              v22 = CFDictionaryGetTypedValue();
              if (v22)
              {
                [v20 setSiriInfo:v22];
              }

              CFStringGetTypeID();
              v23 = CFDictionaryGetTypedValue();
              if (v23)
              {
                [v20 setRoomName:v23];
              }

              [v20 setStatusFlags:{objc_msgSend(v20, "statusFlags") | objc_msgSend(cnxCopy, "statusFlags") & 0x50000AE000}];
              if (v28)
              {
                [(RPCompanionLinkDaemon *)self _proxyDeviceAdd:v20 options:optionsCopy eventID:v26 deviceInfo:v17 cnx:cnxCopy];
              }

              else
              {
                [(RPCompanionLinkDaemon *)self _proxyDeviceRemove:v20 options:optionsCopy cnx:cnxCopy];
              }

              v14 = v31;
              v15 = v27;
            }

            else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_100114768();
            }
          }

          else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_1001147A8();
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v14);
    }

    contentCopy = v25;
    updatedCopy = v26;
    v12 = v24;
  }

  else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001147E8(&v37);
  }
}

- (void)_proxyDeviceAdd:(id)add options:(id)options eventID:(id)d deviceInfo:(id)info cnx:(id)cnx
{
  addCopy = add;
  dCopy = d;
  infoCopy = info;
  cnxCopy = cnx;
  proxyDevices = [cnxCopy proxyDevices];

  if (!proxyDevices)
  {
    v15 = +[NSMutableArray array];
    [cnxCopy setProxyDevices:v15];
  }

  proxyDevices2 = [cnxCopy proxyDevices];
  [proxyDevices2 addObject:addCopy];

  homeHubDevices = self->_homeHubDevices;
  if (!homeHubDevices)
  {
    v18 = objc_alloc_init(NSMutableDictionary);
    v19 = self->_homeHubDevices;
    self->_homeHubDevices = v18;

    homeHubDevices = self->_homeHubDevices;
  }

  identifier = [addCopy identifier];
  v21 = [(NSMutableDictionary *)homeHubDevices objectForKeyedSubscript:identifier];

  if (v21)
  {
    [(RPCompanionLinkDaemon *)self _existingProxyDeviceUpdated:dCopy event:infoCopy isLocal:0];
  }

  else
  {
    v22 = self->_homeHubDevices;
    identifier2 = [addCopy identifier];
    [(NSMutableDictionary *)v22 setObject:addCopy forKeyedSubscript:identifier2];

    [addCopy setLinkType:{objc_msgSend(cnxCopy, "linkType")}];
    [addCopy setStatusFlags:{objc_msgSend(addCopy, "statusFlags") | 4}];
    [(RPCompanionLinkDaemon *)self _clientReportFoundDevice:addCopy];
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011482C();
    }
  }
}

- (void)_proxyDeviceRemove:(id)remove options:(id)options cnx:(id)cnx
{
  removeCopy = remove;
  cnxCopy = cnx;
  [cnxCopy proxyDevices];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v22 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v19 + 1) + 8 * v13);
      if ([(RPCompanionLinkDaemon *)self _proxyDevice:v14 isEqualTo:removeCopy, v19])
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v14;

    if (!v15)
    {
      goto LABEL_16;
    }

    if (([v15 statusFlags] & 0x20000000) != 0)
    {
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_10011488C();
      }
    }

    else
    {
      [v15 setStatusFlags:{objc_msgSend(v15, "statusFlags") & 0xFFFFFFFFEFFFFFFFLL}];
      [(RPCompanionLinkDaemon *)self _clientReportLostDevice:v15];
      proxyDevices = [cnxCopy proxyDevices];
      [proxyDevices removeObject:v15];

      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_1001148CC();
      }

      homeHubDevices = self->_homeHubDevices;
      identifier = [removeCopy identifier];
      [(NSMutableDictionary *)homeHubDevices setObject:0 forKeyedSubscript:identifier];
    }
  }

  else
  {
LABEL_9:

LABEL_16:
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100114924();
    }

    v15 = 0;
  }
}

- (BOOL)_proxyDevice:(id)device receivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler cnx:(id)cnx
{
  deviceCopy = device;
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  cnxCopy = cnx;
  v15 = [(NSMutableDictionary *)self->_homeHubDevices objectForKeyedSubscript:deviceCopy];
  if (v15)
  {
    if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v27 = dCopy;
      v28 = deviceCopy;
      LogPrintF();
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v16 = self->_xpcConnections;
    v17 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v29 = deviceCopy;
      v19 = *v36;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          launchInstanceID = [v21 launchInstanceID];
          if (launchInstanceID)
          {
            launchInstanceID2 = [v15 launchInstanceID];
            v24 = [launchInstanceID isEqual:launchInstanceID2];

            if (v24)
            {
              v27 = cnxCopy;
              if ([(RPCompanionLinkDaemon *)self _receivedRequestID:dCopy onXPCCnx:v21 request:requestCopy options:optionsCopy responseHandler:handlerCopy unauth:0 rpCnx:?])
              {

                v25 = 1;
                goto LABEL_21;
              }
            }
          }
        }

        v18 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v25 = 0;
LABEL_21:
      deviceCopy = v29;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v25 = 0;
  }

  return v25;
}

- (BOOL)_proxyDevice:(id)device isEqualTo:(id)to
{
  deviceCopy = device;
  toCopy = to;
  homeKitIdentifier = [deviceCopy homeKitIdentifier];
  homeKitIdentifier2 = [toCopy homeKitIdentifier];
  if ([homeKitIdentifier isEqual:homeKitIdentifier2])
  {
    v9 = 1;
  }

  else
  {
    identifier = [deviceCopy identifier];
    identifier2 = [toCopy identifier];
    v9 = [identifier isEqual:identifier2];
  }

  return v9;
}

- (BOOL)_destinationID:(id)d matchesProxyDeviceOnCnx:(id)cnx
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  proxyDevices = [cnx proxyDevices];
  v7 = [proxyDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(proxyDevices);
        }

        identifier = [*(*(&v13 + 1) + 8 * i) identifier];
        v11 = [identifier isEqual:dCopy];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [proxyDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_addProxyIdentifier:(id)identifier toDictionary:(id)dictionary
{
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  v8 = [(NSMutableDictionary *)self->_homeHubDevices objectForKeyedSubscript:identifierCopy];
  if (v8)
  {
    v9 = [dictionaryCopy mutableCopy];
    [v9 setObject:identifierCopy forKeyedSubscript:@"proxyID"];

    dictionaryCopy = v9;
  }

  return dictionaryCopy;
}

- (void)_sendProxyDeviceUpdateToPeer:(id)peer
{
  peerCopy = peer;
  allKeys = [(NSMutableDictionary *)self->_homeHubDevices allKeys];
  v6 = [allKeys count];

  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allValues = [(NSMutableDictionary *)self->_homeHubDevices allValues];
    v8 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v8)
    {
      v10 = allValues;
      goto LABEL_18;
    }

    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (([v13 statusFlags] & 0x20000000) != 0)
        {
          v14 = [(RPCompanionLinkDaemon *)self _eventForHomeHubDevice:v13];
          if (v14)
          {
            if (!v10)
            {
              v10 = +[NSMutableArray array];
            }

            [v10 addObject:v14];
          }
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);

    if (v10)
    {
      v15 = [NSDictionary dictionaryWithObjectsAndKeys:v10, @"_proxyDevs", 0];
      [(RPCompanionLinkDaemon *)self sendEventID:@"_proxyAdd" event:v15 destinationID:peerCopy options:0 completion:&stru_1001ABCB8];

LABEL_18:
    }
  }
}

- (void)_proxyLocalDeviceUpdateOnConnection:(id)connection launchInstanceID:(id)d
{
  connectionCopy = connection;
  dCopy = d;
  v7 = [(RPCompanionLinkDaemon *)self homeHubDeviceForLaunchInstanceID:dCopy];
  v8 = v7;
  if (v7)
  {
    if (([v7 changed] & 1) != 0 || (objc_msgSend(connectionCopy, "localDeviceUpdated") & 1) == 0)
    {
      [(RPCompanionLinkDaemon *)self _clientReportLocalDevice:v8 xpcCnx:connectionCopy];
      if (([connectionCopy localDeviceUpdated] & 1) == 0)
      {
        [connectionCopy reportFoundDevice:self->_localDeviceInfo outReason:0];
        [connectionCopy setLocalDeviceUpdated:1];
      }

      [v8 setChanged:0];
    }
  }

  else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001149A4();
  }
}

- (id)homeHubDeviceForLaunchInstanceID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [(NSMutableDictionary *)self->_homeHubDevices allValues];
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        launchInstanceID = [v9 launchInstanceID];
        v11 = [launchInstanceID isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_existingProxyDeviceUpdated:(id)updated event:(id)event isLocal:(BOOL)local
{
  localCopy = local;
  updatedCopy = updated;
  eventCopy = event;
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_homeHubDevices objectForKeyedSubscript:v9];
    if (!v10)
    {
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_38;
    }

    CFDictionaryGetTypeID();
    v11 = CFDictionaryGetTypedValue();
    v23 = localCopy;
    if (v11)
    {
      siriInfo = [v10 siriInfo];
      v13 = v11;
      v14 = v13;
      if (siriInfo == v13)
      {
      }

      else
      {
        if (!siriInfo)
        {

          goto LABEL_18;
        }

        v15 = [siriInfo isEqual:v13];

        if ((v15 & 1) == 0)
        {
LABEL_18:
          if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_1001149E4(v10);
          }

          [v10 setSiriInfo:v14];
          v16 = 1;
LABEL_22:
          CFStringGetTypeID();
          v17 = CFDictionaryGetTypedValue();
          if (v17)
          {
            roomName = [v10 roomName];
            v19 = [v17 isEqual:roomName];

            if ((v19 & 1) == 0)
            {
              if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
              {
                sub_100114A40();
              }

              [v10 setRoomName:v17];
              v16 = 1;
            }
          }

          CFStringGetTypeID();
          v20 = CFDictionaryGetTypedValue();
          if (v20 && ([v10 mediaRouteIdentifier], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqual:", v21), v21, (v22 & 1) == 0))
          {
            if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              sub_100114ABC();
            }

            [v10 setMediaRouteIdentifier:v20];
          }

          else if ((v16 | v23) != 1)
          {
            goto LABEL_37;
          }

          [(RPCompanionLinkDaemon *)self _clientReportChangedDevice:v10 changes:2];
LABEL_37:

LABEL_38:
          goto LABEL_39;
        }
      }
    }

    v16 = 0;
    goto LABEL_22;
  }

  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100114B38();
  }

LABEL_39:
}

- (void)_createRequestEntryForXid:(id)xid requestID:(id)d options:(id)options responseHandler:(id)handler
{
  xidCopy = xid;
  optionsCopy = options;
  handlerCopy = handler;
  dCopy = d;
  v14 = objc_alloc_init(RPRequestEntry);
  [(RPRequestEntry *)v14 setOptions:optionsCopy];
  [(RPRequestEntry *)v14 setRequestID:dCopy];

  [(RPRequestEntry *)v14 setResponseHandler:handlerCopy];
  [(RPRequestEntry *)v14 setSendTicks:mach_absolute_time()];
  [(NSMutableDictionary *)self->_loopbackRequests setObject:v14 forKeyedSubscript:xidCopy];
  if (optionsCopy)
  {
    CFDictionaryGetDouble();
    if (v15 > 0.0)
    {
      v16 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10003C1B0;
      handler[3] = &unk_1001AB130;
      handler[4] = v16;
      handler[5] = self;
      v18 = xidCopy;
      dispatch_source_set_event_handler(v16, handler);
      CUDispatchTimerSet();
      dispatch_resume(v16);
      [(RPRequestEntry *)v14 setTimer:v16];
    }
  }
}

- (void)_proxyDevice:(id)device loopbackRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler
{
  deviceCopy = device;
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  identifier = [deviceCopy identifier];
  if (!identifier)
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100114BE8();
    }

    identifier2 = [deviceCopy identifier];
    v19 = RPErrorF();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v19);

    goto LABEL_34;
  }

  if (!self->_loopbackRequests)
  {
    v15 = objc_alloc_init(NSMutableDictionary);
    loopbackRequests = self->_loopbackRequests;
    self->_loopbackRequests = v15;
  }

  loopbackXid = self->_loopbackXid;
  if (loopbackXid + 1 > 1)
  {
    v18 = loopbackXid + 1;
  }

  else
  {
    v18 = 1;
  }

  self->_loopbackXid = v18;
  v42 = v18;
  v46 = [NSNumber numberWithUnsignedInt:?];
  v40 = handlerCopy;
  v41 = optionsCopy;
  [RPCompanionLinkDaemon _createRequestEntryForXid:"_createRequestEntryForXid:requestID:options:responseHandler:" requestID:? options:? responseHandler:?];
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    v38 = v42;
    v39 = identifier;
    v36 = dCopy;
    LogPrintF();
  }

  v57[0] = @"dlt";
  v57[1] = @"senderID";
  v58[0] = &off_1001B7D80;
  v58[1] = identifier;
  v57[2] = @"xid";
  v58[2] = v46;
  v44 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:3, v36, v38, v39];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = self->_xpcConnections;
  v20 = [(NSMutableSet *)obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (!v20)
  {
    goto LABEL_30;
  }

  v21 = v20;
  v22 = *v53;
  do
  {
    for (i = 0; i != v21; i = i + 1)
    {
      if (*v53 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v52 + 1) + 8 * i);
      launchInstanceID = [deviceCopy launchInstanceID];
      launchInstanceID2 = [v24 launchInstanceID];
      v27 = launchInstanceID;
      v28 = launchInstanceID2;
      v29 = v28;
      if (v27 == v28)
      {

LABEL_25:
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_10003C800;
        v49[3] = &unk_1001ABCE0;
        v49[4] = self;
        v49[5] = v46;
        v49[6] = identifier;
        v51 = v42;
        v50 = deviceCopy;
        v31 = [(RPCompanionLinkDaemon *)self _receivedRequestID:dCopy onXPCCnx:v24 request:requestCopy options:v44 responseHandler:v49 unauth:0 rpCnx:0];

        if (v31)
        {
          handlerCopy = v40;
          optionsCopy = v41;
          v35 = obj;
          goto LABEL_33;
        }

        continue;
      }

      if ((v27 != 0) == (v28 == 0))
      {

        continue;
      }

      v30 = [v27 isEqual:v28];

      if (v30)
      {
        goto LABEL_25;
      }
    }

    v21 = [(NSMutableSet *)obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  }

  while (v21);
LABEL_30:

  v35 = [(NSMutableDictionary *)self->_loopbackRequests objectForKeyedSubscript:v46];
  [(NSMutableDictionary *)self->_loopbackRequests setObject:0 forKeyedSubscript:v46];
  timer = [v35 timer];
  [v35 setTimer:0];
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  responseHandler = [v35 responseHandler];
  v34 = RPErrorF();
  (responseHandler)[2](responseHandler, 0, 0, v34);

  handlerCopy = v40;
  optionsCopy = v41;
LABEL_33:

LABEL_34:
}

- (id)_checkForProxyOrLocalDestinations:(id)destinations eventID:(id)d event:(id)event options:(id)options completion:(id)completion
{
  destinationsCopy = destinations;
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  completionCopy = completion;
  v17 = [(NSMutableDictionary *)self->_homeHubDevices objectForKeyedSubscript:destinationsCopy];
  if (v17)
  {
    v18 = [(RPCompanionLinkDaemon *)self _addProxyIdentifier:destinationsCopy toDictionary:eventCopy];

    eventCopy = v18;
    if (([v17 flags] & 0x20000000) != 0)
    {
      goto LABEL_17;
    }
  }

  effectiveIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo effectiveIdentifier];
  v20 = [destinationsCopy isEqual:effectiveIdentifier];

  if (v20)
  {
LABEL_17:
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v24 = dCopy;
      v25 = destinationsCopy;
      LogPrintF();
    }

    v26 = 0;
    [(RPCompanionLinkDaemon *)self _deliverEventID:dCopy event:eventCopy options:optionsCopy unauth:0 cnx:0 outError:&v26, v24, v25];
    v22 = v26;
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v22);
    }

    v21 = 0;
  }

  else
  {
    eventCopy = eventCopy;
    v21 = eventCopy;
  }

  return v21;
}

- (void)sessionStartSend:(id)send session:(id)session xpcID:(unsigned int)d destinationID:(id)iD completion:(id)completion
{
  sendCopy = send;
  sessionCopy = session;
  iDCopy = iD;
  selfCopy = self;
  completionCopy = completion;
  sessionIDLast = self->_sessionIDLast;
  v15 = __CFADD__(sessionIDLast, 1);
  v16 = sessionIDLast + 1;
  v17 = sessionIDLast + 2;
  if (!v15)
  {
    v17 = v16;
  }

  if (v16 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16;
  }

  self->_sessionIDLast = v17;
  localIdentifier = [sessionCopy localIdentifier];
  serviceType = [sessionCopy serviceType];
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    [sendCopy label];
    v36 = v35 = localIdentifier;
    v33 = iDCopy;
    v34 = v18;
    v32 = serviceType;
    LogPrintF();
  }

  btPipeHighPriority = [sendCopy btPipeHighPriority];
  v22 = [btPipeHighPriority state] == 1;

  v54[0] = serviceType;
  v53[0] = @"_srvT";
  v53[1] = @"_sid";
  [NSNumber numberWithUnsignedLongLong:v18];
  v23 = v37 = localIdentifier;
  v54[1] = v23;
  v53[2] = @"_btHP";
  [NSNumber numberWithBool:v22];
  v25 = v24 = v18;
  v54[2] = v25;
  v38 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:3];

  v52[0] = &off_1001B7D98;
  v51[0] = @"timeoutSeconds";
  v51[1] = @"highPriority";
  v26 = [NSNumber numberWithBool:v22];
  v52[1] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10003CF58;
  v42[3] = &unk_1001ABD08;
  v42[4] = serviceType;
  v43 = iDCopy;
  v48 = completionCopy;
  v49 = v24;
  v44 = v37;
  v45 = sessionCopy;
  v46 = sendCopy;
  v47 = selfCopy;
  dCopy = d;
  v28 = sendCopy;
  v29 = sessionCopy;
  v30 = completionCopy;
  v31 = iDCopy;
  [v28 sendEncryptedRequestID:@"_sessionStart" request:v38 xpcID:d options:v27 responseHandler:v42];
}

- (void)sessionStopSend:(id)send session:(id)session xpcID:(unsigned int)d completion:(id)completion
{
  sendCopy = send;
  completionCopy = completion;
  sessionCopy = session;
  localIdentifier = [sessionCopy localIdentifier];
  peerIdentifier = [sendCopy peerIdentifier];
  serviceType = [sessionCopy serviceType];
  sessionID = [sessionCopy sessionID];

  if (sessionID)
  {
    dCopy = d;
    v33 = completionCopy;
    v31 = [NSNumber numberWithUnsignedLongLong:sessionID];
    [(NSMutableDictionary *)self->_activeSessions setObject:0 forKeyedSubscript:?];
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v29 = sessionID;
      v30 = localIdentifier;
      v27 = serviceType;
      v28 = peerIdentifier;
      LogPrintF();
    }

    btPipeHighPriority = [sendCopy btPipeHighPriority];
    v18 = [btPipeHighPriority state] == 1;

    v39[0] = @"_sid";
    v19 = [NSNumber numberWithUnsignedLongLong:sessionID];
    v39[1] = @"_btHP";
    v40[0] = v19;
    v20 = [NSNumber numberWithInt:v18];
    v40[1] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];

    v38[0] = &off_1001B7DB0;
    v37[0] = @"timeoutSeconds";
    v37[1] = @"highPriority";
    v22 = [NSNumber numberWithInt:v18];
    v38[1] = v22;
    v23 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10003D618;
    v34[3] = &unk_1001ABD30;
    v34[4] = serviceType;
    v34[5] = peerIdentifier;
    v36 = sessionID;
    v34[6] = localIdentifier;
    completionCopy = v33;
    v35 = v33;
    [sendCopy sendEncryptedRequestID:@"_sessionStop" request:v21 xpcID:dCopy options:v23 responseHandler:v34];
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!self->_pendingSessionStopsMap)
    {
      v24 = objc_alloc_init(NSMutableDictionary);
      pendingSessionStopsMap = self->_pendingSessionStopsMap;
      self->_pendingSessionStopsMap = v24;
    }

    v26 = objc_retainBlock(completionCopy);
    [(NSMutableDictionary *)self->_pendingSessionStopsMap setObject:v26 forKeyedSubscript:localIdentifier];
  }
}

- (void)_sessionHandleStartRequest:(id)request options:(id)options cnx:(id)cnx responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  cnxCopy = cnx;
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = sub_1000029CC;
  v83 = sub_10000317C;
  v84 = 0;
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_10003DF24;
  v76[3] = &unk_1001ABD58;
  v78 = &v79;
  handlerCopy = handler;
  v77 = handlerCopy;
  v49 = objc_retainBlock(v76);
  CFStringGetTypeID();
  v53 = CFDictionaryGetTypedValue();
  if (v53)
  {
    v75 = 0;
    Int64 = CFDictionaryGetInt64();
    if (Int64)
    {
      CFStringGetTypeID();
      v11 = CFDictionaryGetTypedValue();
      if (v11)
      {
        v69 = 0;
        v70 = &v69;
        v71 = 0x3032000000;
        v72 = sub_1000029CC;
        v73 = sub_10000317C;
        v74 = 0;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v12 = self->_activeServers;
        v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v65 objects:v89 count:16];
        if (v13)
        {
          v14 = *v66;
          while (2)
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v66 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v65 + 1) + 8 * i);
              serviceType = [v16 serviceType];
              v18 = [serviceType isEqual:v11];

              if (v18)
              {
                objc_storeStrong(v70 + 5, v16);
                goto LABEL_14;
              }
            }

            v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v65 objects:v89 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

LABEL_14:

        handler = 0;
        v59 = 0;
        v60 = &v59;
        v61 = 0x3032000000;
        v62 = sub_1000029CC;
        v63 = sub_10000317C;
        v64 = 0;
        if (v70[5])
        {
          goto LABEL_17;
        }

        xpcMatchingMap = self->_xpcMatchingMap;
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_10003DFF4;
        v58[3] = &unk_1001ABD80;
        v58[4] = v11;
        v58[5] = &v59;
        v58[6] = &v69;
        [(NSMutableDictionary *)xpcMatchingMap enumerateKeysAndObjectsUsingBlock:v58];
        if (!v70[5])
        {
          goto LABEL_47;
        }

        handler = [v60[5] handler];
        if (handler)
        {
LABEL_17:
          sessionIDLast = self->_sessionIDLast;
          v22 = __CFADD__(sessionIDLast, 1);
          v23 = sessionIDLast + 1;
          v24 = sessionIDLast + 2;
          if (!v22)
          {
            v24 = v23;
          }

          if (v23 <= 1)
          {
            v25 = 1;
          }

          else
          {
            v25 = v23;
          }

          self->_sessionIDLast = v24;
          v26 = Int64 | (v25 << 32);
          v27 = [NSNumber numberWithUnsignedLongLong:v26];
          v28 = objc_alloc_init(RPSession);
          [v28 setPeerID:v53];
          [v28 setServiceType:v11];
          [v28 setSessionID:v26];
          [v28 setStartTicks:mach_absolute_time()];
          [v28 setCnx:cnxCopy];
          activeSessions = self->_activeSessions;
          if (!activeSessions)
          {
            v30 = objc_alloc_init(NSMutableDictionary);
            v31 = self->_activeSessions;
            self->_activeSessions = v30;

            activeSessions = self->_activeSessions;
          }

          [(NSMutableDictionary *)activeSessions setObject:v28 forKeyedSubscript:v27];
          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            v32 = v60[5];
            if (v32)
            {
              token = [v32 token];
            }

            else
            {
              token = -1;
            }

            [v28 localIdentifier];
            v48 = v47 = 0;
            v45 = v26;
            v46 = token;
            v43 = v11;
            v44 = v53;
            LogPrintF();
          }

          if (v60[5] && handler)
          {
            v87[0] = @"type";
            v87[1] = @"serviceType";
            v88[0] = @"server";
            v88[1] = v11;
            v87[2] = @"sessionID";
            v87[3] = @"replyRequired";
            v88[2] = v27;
            v88[3] = &__kCFBooleanTrue;
            v34 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:4];
            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v55[0] = _NSConcreteStackBlock;
            v55[1] = 3221225472;
            v55[2] = sub_10003E0B0;
            v55[3] = &unk_1001ABDA8;
            v55[4] = self;
            v55[5] = v27;
            v55[6] = v28;
            v56 = handlerCopy;
            v57 = v25;
            (handler)[2](handler, 0, v34, v55);
          }

          else
          {
            v85 = @"_sid";
            v35 = [NSNumber numberWithUnsignedLongLong:v25, v43, v44, v45, v46, v47, v48];
            v86 = v35;
            v34 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];

            (*(handlerCopy + 2))(handlerCopy, v34, 0, 0);
          }
        }

        else
        {
LABEL_47:
          v41 = RPErrorF();
          v42 = v80[5];
          v80[5] = v41;
        }

        _Block_object_dispose(&v59, 8);

        _Block_object_dispose(&v69, 8);
      }

      else
      {
        v39 = RPErrorF();
        v40 = v80[5];
        v80[5] = v39;
      }
    }

    else
    {
      v38 = RPErrorF();
      v11 = v80[5];
      v80[5] = v38;
    }
  }

  else
  {
    v36 = RPErrorF();
    v37 = v80[5];
    v80[5] = v36;
  }

  (v49[2])(v49);
  _Block_object_dispose(&v79, 8);
}

- (void)_sessionHandleStopRequest:(id)request options:(id)options cnx:(id)cnx responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  cnxCopy = cnx;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_1000029CC;
  v43 = sub_10000317C;
  v44 = 0;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10003E678;
  v36[3] = &unk_1001ABD58;
  v38 = &v39;
  handlerCopy = handler;
  v37 = handlerCopy;
  v14 = objc_retainBlock(v36);
  CFStringGetTypeID();
  v15 = CFDictionaryGetTypedValue();
  if (!v15)
  {
    v24 = RPErrorF();
    v25 = v40[5];
    v40[5] = v24;

    goto LABEL_20;
  }

  Int64 = CFDictionaryGetInt64();
  v35 = optionsCopy;
  if (!Int64)
  {
    v26 = RPErrorF();
    v17 = v40[5];
    v40[5] = v26;
    goto LABEL_19;
  }

  v34 = requestCopy;
  v17 = [NSNumber numberWithUnsignedLongLong:Int64];
  v18 = [(NSMutableDictionary *)self->_activeSessions objectForKeyedSubscript:v17];
  v19 = v18;
  if (!v18 || ([v18 peerID], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqual:", v15), v20, (v21 & 1) == 0))
  {
    v27 = RPErrorF();
    v28 = v40[5];
    v40[5] = v27;

    goto LABEL_18;
  }

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    serviceType = [v19 serviceType];
    [v19 localIdentifier];
    v33 = v32 = Int64;
    v29 = serviceType;
    v31 = v15;
    LogPrintF();
  }

  (*(handlerCopy + 2))(handlerCopy, &__NSDictionary0__struct, 0, 0);
  [(NSMutableDictionary *)self->_activeSessions setObject:0 forKeyedSubscript:v17];
  [v19 setCnx:0];
  [cnxCopy sessionStopped:v19];
  if (![cnxCopy clientMode] || (objc_msgSend(cnxCopy, "controlFlags") & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v23 = [(RPCompanionLinkDaemon *)self _sessionsActiveOnConnection:cnxCopy xpcConnection:0];
  if (v23 < 1)
  {
    [cnxCopy invalidate];
LABEL_17:
    [v19 invalidate];
    goto LABEL_18;
  }

  if (dword_1001D3228 > 40 || dword_1001D3228 == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_17;
  }

  label = [cnxCopy label];
  LogPrintF();

  [v19 invalidate];
LABEL_18:

  requestCopy = v34;
LABEL_19:

  optionsCopy = v35;
LABEL_20:

  (v14[2])(v14);
  _Block_object_dispose(&v39, 8);
}

- (void)_sessionHandlePeerDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  peerIdentifier = [disconnectCopy peerIdentifier];
  if (peerIdentifier)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = [(NSMutableDictionary *)self->_activeSessions allKeys];
    v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v17 + 1) + 8 * v9);
          v11 = [(NSMutableDictionary *)self->_activeSessions objectForKeyedSubscript:v10];
          peerID = [v11 peerID];
          v13 = [peerID isEqual:peerIdentifier];

          if (!v13 || ([v11 cnx], v14 = objc_claimAutoreleasedReturnValue(), v14, v14 != disconnectCopy))
          {

            goto LABEL_18;
          }

          if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            sub_100114E14();
          }

          [v11 setCnx:0];
          [(NSMutableDictionary *)self->_activeSessions setObject:0 forKeyedSubscript:v10];
          [v11 invalidate];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v15 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
        v7 = v15;
      }

      while (v15);
    }

LABEL_18:
  }

  else
  {
    sub_100114E98();
  }
}

- (int64_t)_sessionsActiveOnConnection:(id)connection xpcConnection:(id)xpcConnection
{
  connectionCopy = connection;
  xpcConnectionCopy = xpcConnection;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  xpcConnections = self->_xpcConnections;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003EAB4;
  v18[3] = &unk_1001ABDD0;
  v9 = xpcConnectionCopy;
  v19 = v9;
  v10 = connectionCopy;
  v20 = v10;
  v21 = &v22;
  [(NSMutableSet *)xpcConnections enumerateObjectsUsingBlock:v18];
  activeSessions = self->_activeSessions;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003EB88;
  v15[3] = &unk_1001ABDF8;
  v12 = v10;
  v16 = v12;
  v17 = &v22;
  [(NSMutableDictionary *)activeSessions enumerateKeysAndObjectsUsingBlock:v15];
  v13 = v23[3];

  _Block_object_dispose(&v22, 8);
  return v13;
}

- (void)_handleContextCollectorProxyRequest:(id)request options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = [requestCopy objectForKeyedSubscript:@"ctxCollProxyReq"];
  if (v11)
  {
    v12 = [requestCopy mutableCopy];
    [v12 removeObjectForKey:@"ctxCollProxyReq"];
    v13 = [v12 copy];

    _contextCollectorDevice = [(RPCompanionLinkDaemon *)self _contextCollectorDevice];
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100114F10(_contextCollectorDevice);
    }

    identifier = [_contextCollectorDevice identifier];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10003EDE4;
    v17[3] = &unk_1001ABE20;
    v18 = handlerCopy;
    [(RPCompanionLinkDaemon *)self sendRequestID:v11 request:v13 destinationID:identifier options:optionsCopy responseHandler:v17];

    requestCopy = v13;
  }

  else
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100114F7C();
    }

    v16 = RPErrorF();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v16);
  }
}

- (void)_handleContextCollectorRequest:(id)request responseHandler:(id)handler
{
  handlerCopy = handler;
  _contextCollectorDevice = [(RPCompanionLinkDaemon *)self _contextCollectorDevice];
  v7 = _contextCollectorDevice;
  if (_contextCollectorDevice)
  {
    bonjourDevice = [_contextCollectorDevice bonjourDevice];
    deviceInfo = [bonjourDevice deviceInfo];

    ipAddress = [v7 ipAddress];
    bonjourDevice2 = [v7 bonjourDevice];
    deviceInfo2 = [bonjourDevice2 deviceInfo];
    CFStringGetTypeID();
    v13 = CFDictionaryGetTypedValue();

    if (deviceInfo && ipAddress && v13)
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100114F98();
      }

      v16[0] = @"_bi";
      v16[1] = @"_dIP";
      v17[0] = deviceInfo;
      v17[1] = ipAddress;
      v16[2] = @"_i";
      v17[2] = v13;
      v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
      v15 = 0;
    }

    else
    {
      v15 = RPErrorF();
      v14 = 0;
    }
  }

  else
  {
    v15 = RPErrorF();
    v14 = 0;
  }

  handlerCopy[2](handlerCopy, v14, 0, v15);
}

- (id)_contextCollectorDevice
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)self->_activeDevices allValues];
  v3 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = *v15;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(allValues);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        bonjourDevice = [v6 bonjourDevice];

        if (bonjourDevice)
        {
          bonjourDevice2 = [v6 bonjourDevice];
          txtDictionary = [bonjourDevice2 txtDictionary];

          if ((CFDictionaryGetInt64() & 0x800000) != 0)
          {
            bonjourDevice3 = [v6 bonjourDevice];
            deviceInfo = [bonjourDevice3 deviceInfo];
            CFStringGetTypeID();
            v12 = CFDictionaryGetTypedValue();

            if (v12)
            {
              v3 = v6;

              goto LABEL_14;
            }
          }
        }
      }

      v3 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v3;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = [[RPCompanionLinkXPCConnection alloc] initWithDaemon:self xpcCnx:connectionCopy];
  [(RPCompanionLinkXPCConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  ++self->_xpcLastID;
  [(RPCompanionLinkXPCConnection *)v6 setXpcID:?];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_xpcConnections;
    self->_xpcConnections = v8;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v6];
  v10 = self->_xpcClientInterface;
  if (!v10)
  {
    v32 = [NSSet alloc];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v32 initWithObjects:{v11, v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPCompanionLinkXPCClientInterface];
    [(NSXPCInterface *)v10 setClasses:v18 forSelector:"companionLinkReceivedEventID:event:options:" argumentIndex:1 ofReply:0];
    [(NSXPCInterface *)v10 setClasses:v18 forSelector:"companionLinkReceivedRequestID:request:options:responseHandler:" argumentIndex:1 ofReply:0];
    [(NSXPCInterface *)v10 setClasses:v18 forSelector:"companionLinkReceivedRequestID:request:options:responseHandler:" argumentIndex:0 ofReply:1];
    objc_storeStrong(&self->_xpcClientInterface, v10);
  }

  v19 = self->_xpcServerInterface;
  if (!v19)
  {
    v33 = [NSSet alloc];
    v31 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = [v33 initWithObjects:{v31, v20, v21, v22, v23, v24, v25, objc_opt_class(), 0}];
    v19 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPCompanionLinkXPCServerInterface];
    v27 = [NSSet alloc];
    v28 = objc_opt_class();
    v29 = [v27 initWithObjects:{v28, objc_opt_class(), 0}];
    [(NSXPCInterface *)v19 setClasses:v29 forSelector:"companionLinkActivateClient:completion:" argumentIndex:0 ofReply:1];
    [(NSXPCInterface *)v19 setClasses:v26 forSelector:"companionLinkSendEventID:event:destinationID:options:nwActivityToken:completion:" argumentIndex:1 ofReply:0];
    [(NSXPCInterface *)v19 setClasses:v26 forSelector:"companionLinkSendRequestID:request:destinationID:options:nwActivityToken:responseHandler:" argumentIndex:1 ofReply:0];
    [(NSXPCInterface *)v19 setClasses:v26 forSelector:"companionLinkSendRequestID:request:destinationID:options:nwActivityToken:responseHandler:" argumentIndex:0 ofReply:1];
    objc_storeStrong(&self->_xpcServerInterface, v19);
  }

  [connectionCopy setExportedInterface:v19];
  [connectionCopy setExportedObject:v6];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10003F628;
  v34[3] = &unk_1001AB488;
  v34[4] = self;
  v34[5] = v6;
  [connectionCopy setInvalidationHandler:v34];
  [connectionCopy setRemoteObjectInterface:v10];
  [connectionCopy _setQueue:self->_dispatchQueue];
  [connectionCopy resume];
  if (dword_1001D3228 <= 20 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100114FD8(connectionCopy);
  }

  return 1;
}

- (void)_xpcConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [invalidatedCopy connectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:invalidatedCopy];
  [(RPCompanionLinkDaemon *)self _updateForXPCClientChange];
  rbsPID = [invalidatedCopy rbsPID];

  if (rbsPID)
  {
    rbsPID2 = [invalidatedCopy rbsPID];
    [(RPCompanionLinkDaemon *)self _removeApplicationPID:rbsPID2];
  }
}

- (void)_clientReportUINoteDevice:(id)device
{
  deviceCopy = device;
  v5 = deviceCopy;
  if (self->_prefUINotesEnabled)
  {
    idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
    if (idsDeviceIdentifier || ([v5 identifier], (idsDeviceIdentifier = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v5, "publicIdentifier"), (idsDeviceIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = idsDeviceIdentifier;
      v23 = 0;
      v8 = [(RPCompanionLinkDaemon *)self _findDeviceWithDevice:v5 deviceMap:self->_uiNoteDevices matchedIdentifier:&v23];
      if (([v5 statusFlags] & 0x200000) != 0)
      {
        if (!v8)
        {
          sub_1000454B8();
          if (v11 ^ v12 | v10)
          {
            if (v13 != -1 || _LogCategory_Initialize())
            {
              v22 = v5;
              LogPrintF();
            }
          }
        }

        uiNoteDevices = self->_uiNoteDevices;
        if (!uiNoteDevices)
        {
          v17 = objc_alloc_init(NSMutableDictionary);
          v18 = self->_uiNoteDevices;
          self->_uiNoteDevices = v17;

          uiNoteDevices = self->_uiNoteDevices;
        }

        [(NSMutableDictionary *)uiNoteDevices setObject:v5 forKeyedSubscript:v7, v22];
      }

      else if (v8)
      {
        sub_1000454B8();
        if (v11 ^ v12 | v10 && (v9 != -1 || _LogCategory_Initialize()))
        {
          v22 = v8;
          LogPrintF();
        }

        [(NSMutableDictionary *)self->_uiNoteDevices setObject:0 forKeyedSubscript:v23, v22];
        [v8 setUiTriggered:0];
        identifier = [(CUUserNotificationSession *)self->_uiNoteSession identifier];
        if ([identifier isEqual:v23])
        {
          sub_1000454B8();
          if (v11 ^ v12 | v10 && (v15 != -1 || _LogCategory_Initialize()))
          {
            v22 = v8;
            LogPrintF();
          }

          [(CUUserNotificationSession *)self->_uiNoteSession invalidate];
          uiNoteSession = self->_uiNoteSession;
          self->_uiNoteSession = 0;
        }
      }

      if (!self->_uiNoteSession)
      {
        goto LABEL_38;
      }

      if (![(NSMutableDictionary *)self->_uiNoteDevices count])
      {
        sub_1000454B8();
        if (v11 ^ v12 | v10 && (v20 != -1 || _LogCategory_Initialize()))
        {
          v22 = v8;
          LogPrintF();
        }

        [(CUUserNotificationSession *)self->_uiNoteSession invalidate];
        v21 = self->_uiNoteSession;
        self->_uiNoteSession = 0;
      }

      if (!self->_uiNoteSession)
      {
LABEL_38:
        [(RPCompanionLinkDaemon *)self _clientUINoteProcessPending];
      }
    }

    else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

@end