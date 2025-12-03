@interface MSDDemoPeerCommander
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MSDDemoPeerCommander)init;
- (id)createXPCEndpoint;
- (id)didReceiveRequestMessage:(id)message fromDevice:(id)device;
- (void)_handleDiscoveryOfNewPeer:(id)peer;
- (void)_handleLossOfExistingPeer:(id)peer;
- (void)_handleUpdateDeviceEventMessage:(id)message fromPeer:(id)peer;
- (void)_handleUpdateOfExistingPeer:(id)peer;
- (void)_sendRequestMessageOfID:(id)d andPayload:(id)payload toPeerOfID:(id)iD withCompletion:(id)completion;
- (void)adjustVolumeOnPeerOfID:(id)d toValue:(float)value forCategory:(unint64_t)category withCompletion:(id)completion;
- (void)attemptPairingWithPeerOfID:(id)d withCompletion:(id)completion;
- (void)changeWiFiSettingsOnPeer:(id)peer newSettings:(id)settings withCompletion:(id)completion;
- (void)didReceiveEventMessage:(id)message fromDevice:(id)device;
- (void)enumerateTestScriptsOnPeerOfID:(id)d withCompletion:(id)completion;
- (void)explorerDidFindDevice:(id)device;
- (void)explorerDidLoseDevice:(id)device;
- (void)explorerDidUpdateDevice:(id)device;
- (void)fetchDeviceInfoFromPeerOfID:(id)d withCompletion:(id)completion;
- (void)getAccessibiltiySettingsOnPeer:(id)peer withCompletion:(id)completion;
- (void)getIconImagesOfVisibleAppsOnPeerOfID:(id)d height:(float)height width:(float)width scale:(float)scale withCompletion:(id)completion;
- (void)getMuseBuddyResetValueOnPeer:(id)peer withCompletion:(id)completion;
- (void)initiateAirPlayAssistedFromPeerOfID:(id)d usingParameters:(id)parameters discoveryMode:(unint64_t)mode withCompletion:(id)completion;
- (void)initiateIPDResetOnPeer:(id)peer targetIPD:(double)d withCompletion:(id)completion;
- (void)invokeInputRecoveryOnPeerOfID:(id)d forType:(unint64_t)type withCompletion:(id)completion;
- (void)launchAppOnPeerOfID:(id)d appIdentifier:(id)identifier withCompletion:(id)completion;
- (void)listAppsOnPeerOfID:(id)d appKind:(unint64_t)kind withCompletion:(id)completion;
- (void)listAvailableEnvironmentsOnPeerOfID:(id)d withCompletion:(id)completion;
- (void)loadLSMeasurementsOnPeerOfID:(id)d withCompletion:(id)completion;
- (void)monitorDidUpdateRegionOfNearbyObject:(id)object;
- (void)obtainGKMetricsOnPeerOfID:(id)d withCompletion:(id)completion;
- (void)obtainGKResultsOnPeerOfID:(id)d withCompletion:(id)completion;
- (void)queryIPDResetStageOnPeer:(id)peer withCompletion:(id)completion;
- (void)readIPDStatusFromPeer:(id)peer withCompletion:(id)completion;
- (void)removePairedPeer:(id)peer withCompletion:(id)completion;
- (void)resetToPassThroughOnPeerOfID:(id)d withCompletion:(id)completion;
- (void)retrieveHSCoachingSuggestionFromPeer:(id)peer withCompletion:(id)completion;
- (void)seImmersionLevelOnPeerOfID:(id)d immersionLevel:(float)level animationDuration:(float)duration withCompletion:(id)completion;
- (void)setAccessibiltiySettingsOnPeer:(id)peer newSettings:(id)settings withCompletion:(id)completion;
- (void)setActiveEnvironmentOnPeerOfID:(id)d environmentID:(id)iD withCompletion:(id)completion;
- (void)setLanguageAndRegionOnPeer:(id)peer languageCode:(id)code regionCode:(id)regionCode withCompletion:(id)completion;
- (void)skipAutoIPDAdjustmentFromPeer:(id)peer withCompletion:(id)completion;
- (void)startPeerDiscoveryWithCompletion:(id)completion;
- (void)subscribeDeviceInfoFromPeerOfID:(id)d withCompletion:(id)completion;
- (void)syncCurrentWiFiSettingsToPeer:(id)peer withCompletion:(id)completion;
- (void)terminateAppOnPeerOfID:(id)d appIdentifier:(id)identifier withCompletion:(id)completion;
- (void)triggerSnapshotRevertOnPeerOfID:(id)d withCompletion:(id)completion;
- (void)wipeCustomerAssetsOnPeer:(id)peer withCompletion:(id)completion;
@end

@implementation MSDDemoPeerCommander

+ (id)sharedInstance
{
  if (qword_1001A5648 != -1)
  {
    sub_1000CC4AC();
  }

  v3 = qword_1001A5650;

  return v3;
}

- (MSDDemoPeerCommander)init
{
  v16.receiver = self;
  v16.super_class = MSDDemoPeerCommander;
  v2 = [(MSDDemoPeerCommander *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MobileStoreDemo.DemoPeerCommander", 0);
    [(MSDDemoPeerCommander *)v2 setQueue:v3];

    v4 = [NSMutableDictionary dictionaryWithCapacity:0];
    [(MSDDemoPeerCommander *)v2 setNearbyObjects:v4];

    v5 = [NSMutableDictionary dictionaryWithCapacity:0];
    [(MSDDemoPeerCommander *)v2 setDiscoveredPeers:v5];

    v6 = [NSMutableDictionary dictionaryWithCapacity:0];
    [(MSDDemoPeerCommander *)v2 setPairingHandlers:v6];

    v7 = [[MSDNearbyObjectMonitor alloc] initWithObserver:v2];
    [(MSDDemoPeerCommander *)v2 setNearbyObjectMonitor:v7];

    v8 = [[MSDRapportDeviceExplorer alloc] initWithObserver:v2];
    [(MSDDemoPeerCommander *)v2 setRpDeviceExplorer:v8];

    v9 = [[MSDRapportMessageHandler alloc] initWithObserver:v2];
    [(MSDDemoPeerCommander *)v2 setRpMessageHandler:v9];

    v10 = +[NSXPCListener anonymousListener];
    [(MSDDemoPeerCommander *)v2 setXpcListener:v10];

    xpcListener = [(MSDDemoPeerCommander *)v2 xpcListener];
    [xpcListener setDelegate:v2];

    xpcListener2 = [(MSDDemoPeerCommander *)v2 xpcListener];
    queue = [(MSDDemoPeerCommander *)v2 queue];
    [xpcListener2 _setQueue:queue];

    xpcListener3 = [(MSDDemoPeerCommander *)v2 xpcListener];
    [xpcListener3 activate];
  }

  return v2;
}

- (id)createXPCEndpoint
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  xpcListener = [(MSDDemoPeerCommander *)selfCopy xpcListener];
  endpoint = [xpcListener endpoint];

  objc_sync_exit(selfCopy);

  return endpoint;
}

- (void)_sendRequestMessageOfID:(id)d andPayload:(id)payload toPeerOfID:(id)iD withCompletion:(id)completion
{
  dCopy = d;
  payloadCopy = payload;
  iDCopy = iD;
  completionCopy = completion;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v15 = sub_100063A54();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = dCopy;
    v27 = 2114;
    v28 = iDCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Sending request message of ID: %{public}@ to peer of ID: %{public}@", buf, 0x16u);
  }

  if (completionCopy)
  {
    if ([dCopy isEqualToString:@"com.apple.MobileStoreDemo.InitiateIPDReset"])
    {
      v16 = &off_10017AF18;
    }

    else
    {
      v16 = &off_10017AF30;
    }

    v17 = [NSDictionary dictionaryWithObject:v16 forKey:@"Timeout"];
    discoveredPeers = [(MSDDemoPeerCommander *)self discoveredPeers];
    v19 = [discoveredPeers objectForKey:iDCopy];

    v20 = [[MSDRapportMessage alloc] initWithIdentifier:dCopy andPayload:payloadCopy usingOptions:v17];
    rpMessageHandler = [(MSDDemoPeerCommander *)self rpMessageHandler];
    device = [v19 device];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100028ADC;
    v23[3] = &unk_10016A5B0;
    v23[4] = self;
    v24 = completionCopy;
    [rpMessageHandler sendOutgoingRequestMessage:v20 toDevice:device withCompletion:v23];
  }
}

- (void)_handleDiscoveryOfNewPeer:(id)peer
{
  peerCopy = peer;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = peerCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Found new peer: %{public}@", &v17, 0xCu);
  }

  identifier = [peerCopy identifier];
  discoveredPeers = [(MSDDemoPeerCommander *)self discoveredPeers];
  v9 = [discoveredPeers objectForKey:identifier];

  if (v9)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Ignore already discovered peer device.", &v17, 2u);
    }
  }

  else
  {
    discoveredPeers2 = [(MSDDemoPeerCommander *)self discoveredPeers];
    [discoveredPeers2 setObject:peerCopy forKey:identifier];

    nearbyObjects = [(MSDDemoPeerCommander *)self nearbyObjects];
    v10 = [nearbyObjects objectForKey:identifier];

    if (v10)
    {
      isInBubble = [v10 isInBubble];
    }

    else
    {
      isInBubble = 0;
    }

    [peerCopy setIsInBubble:isInBubble];
    xpcConnection = [(MSDDemoPeerCommander *)self xpcConnection];

    if (xpcConnection)
    {
      xpcConnection2 = [(MSDDemoPeerCommander *)self xpcConnection];
      remoteObjectProxy = [xpcConnection2 remoteObjectProxy];
      [remoteObjectProxy providerDidDiscoverNewPeer:peerCopy];
    }

    if ([peerCopy authenticated])
    {
      [(MSDDemoPeerCommander *)self fetchDeviceInfoFromPeerOfID:identifier withCompletion:&stru_10016A5F0];
    }
  }
}

- (void)_handleLossOfExistingPeer:(id)peer
{
  peerCopy = peer;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = peerCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Lost existing peer: %{public}@", &v16, 0xCu);
  }

  identifier = [peerCopy identifier];
  discoveredPeers = [(MSDDemoPeerCommander *)self discoveredPeers];
  v9 = [discoveredPeers objectForKey:identifier];

  if (!v9)
  {
    xpcConnection2 = sub_100063A54();
    if (os_log_type_enabled(xpcConnection2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, xpcConnection2, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Ignore unknown peer device!", &v16, 2u);
    }

    goto LABEL_8;
  }

  discoveredPeers2 = [(MSDDemoPeerCommander *)self discoveredPeers];
  [discoveredPeers2 removeObjectForKey:identifier];

  rpMessageHandler = [(MSDDemoPeerCommander *)self rpMessageHandler];
  device = [peerCopy device];
  [rpMessageHandler invalidateOutgoingConnectionForDevice:device];

  xpcConnection = [(MSDDemoPeerCommander *)self xpcConnection];

  if (xpcConnection)
  {
    xpcConnection2 = [(MSDDemoPeerCommander *)self xpcConnection];
    remoteObjectProxy = [xpcConnection2 remoteObjectProxy];
    [remoteObjectProxy providerDidLoseExistingPeerOfID:identifier];

LABEL_8:
  }
}

- (void)_handleUpdateOfExistingPeer:(id)peer
{
  peerCopy = peer;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = peerCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Received update of existing peer: %{public}@", &v9, 0xCu);
  }

  rpMessageHandler = [(MSDDemoPeerCommander *)self rpMessageHandler];
  device = [peerCopy device];
  [rpMessageHandler invalidateOutgoingConnectionForDevice:device];
}

- (void)_handleUpdateDeviceEventMessage:(id)message fromPeer:(id)peer
{
  peerCopy = peer;
  messageCopy = message;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  payload = [messageCopy payload];

  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = peerCopy;
    v17 = 2114;
    v18 = payload;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Received device info update for peer: %{public}@ properties: %{public}@", &v15, 0x16u);
  }

  [peerCopy refreshDevicePropertiesUsingProperties:payload];
  xpcConnection = [(MSDDemoPeerCommander *)self xpcConnection];

  if (xpcConnection)
  {
    xpcConnection2 = [(MSDDemoPeerCommander *)self xpcConnection];
    remoteObjectProxy = [xpcConnection2 remoteObjectProxy];
    identifier = [peerCopy identifier];
    [remoteObjectProxy providerDidUpdateDeviceInfoOnPeerOfID:identifier withNewProperties:payload];
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = processIdentifier;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: A new XPC connection received from client: %d", &buf, 8u);
  }

  v10 = [connectionCopy valueForEntitlement:@"com.apple.private.mobilestoredemo.enabledemo"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v10 containsObject:@"PeerDemoDevice"] & 1) != 0)
  {
    objc_initWeak(&buf, self);
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDDemoPeerServiceProviderProtocol];
    [connectionCopy setExportedInterface:v11];

    [connectionCopy setExportedObject:self];
    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDDemoPeerServiceConsumerProtocol];
    [connectionCopy setRemoteObjectInterface:v12];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000297F0;
    v22[3] = &unk_100169C78;
    objc_copyWeak(&v23, &buf);
    [connectionCopy setInterruptionHandler:v22];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100029850;
    v20[3] = &unk_100169C78;
    objc_copyWeak(&v21, &buf);
    [connectionCopy setInvalidationHandler:v20];
    queue = [(MSDDemoPeerCommander *)self queue];
    [connectionCopy _setQueue:queue];

    [connectionCopy activate];
    [(MSDDemoPeerCommander *)self setXpcConnection:connectionCopy];
    queue2 = [(MSDDemoPeerCommander *)self queue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000298B0;
    v18[3] = &unk_10016A1C8;
    objc_copyWeak(&v19, &buf);
    v18[4] = self;
    dispatch_async(queue2, v18);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&buf);
    v15 = 1;
  }

  else
  {
    v16 = sub_100063A54();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Client is not entitled to use peer service.", &buf, 2u);
    }

    v15 = 0;
  }

  return v15;
}

- (void)startPeerDiscoveryWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  nearbyObjectMonitor = [(MSDDemoPeerCommander *)self nearbyObjectMonitor];
  [nearbyObjectMonitor start];

  rpDeviceExplorer = [(MSDDemoPeerCommander *)self rpDeviceExplorer];
  [rpDeviceExplorer activate];

  rpMessageHandler = [(MSDDemoPeerCommander *)self rpMessageHandler];
  [rpMessageHandler listenForIncomingEventMessageOfID:@"com.apple.MobileStoreDemo.UpdateDeviceInfo"];

  completionCopy[2](completionCopy, 0);
}

- (void)attemptPairingWithPeerOfID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  discoveredPeers = [(MSDDemoPeerCommander *)self discoveredPeers];
  v10 = [discoveredPeers objectForKey:dCopy];

  if (!v10)
  {
    v11 = @"Cannot find specified demo peer.";
    v12 = 3727741104;
LABEL_9:
    v15 = [NSError errorDomainMSDWithCode:v12 message:v11];
    completionCopy[2](completionCopy, v15);

    goto LABEL_10;
  }

  if (![v10 authenticated])
  {
    if ([v10 pairingMode])
    {
      pairingHandlers = [(MSDDemoPeerCommander *)self pairingHandlers];
      v14 = [pairingHandlers objectForKey:dCopy];

      if (!v14)
      {
        v16 = [MSDRapportPairingHandler alloc];
        device = [v10 device];
        v21 = _NSConcreteStackBlock;
        v22 = 3221225472;
        v23 = sub_100029D48;
        v24 = &unk_10016A618;
        v25 = v10;
        v28 = completionCopy;
        selfCopy = self;
        v18 = dCopy;
        v27 = v18;
        v19 = [(MSDRapportPairingHandler *)v16 initWithDevice:device andCompletion:&v21];

        v20 = [(MSDDemoPeerCommander *)self pairingHandlers:v21];
        [v20 setObject:v19 forKey:v18];

        [(MSDRapportPairingHandler *)v19 activate];
        goto LABEL_10;
      }

      v11 = @"Operation already in progress.";
      v12 = 3727744771;
    }

    else
    {
      v11 = @"Cannot operate on demo peer not in pairing mode.";
      v12 = 3727741105;
    }

    goto LABEL_9;
  }

  completionCopy[2](completionCopy, 0);
LABEL_10:
}

- (void)subscribeDeviceInfoFromPeerOfID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100029F3C;
  v10[3] = &unk_10016A640;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.SubscribeDeviceInfo" andPayload:0 toPeerOfID:dCopy withCompletion:v10];
}

- (void)fetchDeviceInfoFromPeerOfID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002A044;
  v11[3] = &unk_10016A668;
  v11[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.FetchDeviceInfo" andPayload:0 toPeerOfID:v10 withCompletion:v11];
}

- (void)initiateAirPlayAssistedFromPeerOfID:(id)d usingParameters:(id)parameters discoveryMode:(unint64_t)mode withCompletion:(id)completion
{
  dCopy = d;
  parametersCopy = parameters;
  completionCopy = completion;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  if (parametersCopy && mode < 3)
  {
    v19[0] = @"APParameters";
    v19[1] = @"APDiscoveryMode";
    v20[0] = parametersCopy;
    v14 = [NSNumber numberWithUnsignedInteger:mode];
    v20[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002A46C;
    v17[3] = &unk_10016A640;
    v18 = completionCopy;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.InitiateAirPlayAssisted" andPayload:v15 toPeerOfID:dCopy withCompletion:v17];
  }

  else
  {
    v16 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    (*(completionCopy + 2))(completionCopy, v16);
  }
}

- (void)triggerSnapshotRevertOnPeerOfID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002A6E0;
  v10[3] = &unk_10016A640;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.TriggerSnapshotRevert" andPayload:0 toPeerOfID:dCopy withCompletion:v10];
}

- (void)invokeInputRecoveryOnPeerOfID:(id)d forType:(unint64_t)type withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  if (type < 4)
  {
    v16 = @"IREnrollmentType";
    v12 = [NSNumber numberWithUnsignedInteger:type];
    v17 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002A8A4;
    v14[3] = &unk_10016A640;
    v15 = completionCopy;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.InvokeInputRecovery" andPayload:v13 toPeerOfID:dCopy withCompletion:v14];
  }

  else
  {
    v11 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    (*(completionCopy + 2))(completionCopy, v11);
  }
}

- (void)adjustVolumeOnPeerOfID:(id)d toValue:(float)value forCategory:(unint64_t)category withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  if (value < 0.0 || (value <= 1.0 ? (v14 = category >= 4) : (v14 = 1), v14))
  {
    v15 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    completionCopy[2](completionCopy, v15);
  }

  else
  {
    v21[0] = @"VolumeValue";
    *&v13 = value;
    v16 = [NSNumber numberWithFloat:v13];
    v22[0] = v16;
    v21[1] = @"VolumeCategory";
    v17 = [NSNumber numberWithUnsignedInteger:category];
    v22[1] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10002AAB0;
    v19[3] = &unk_10016A640;
    v20 = completionCopy;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.AdjustVolume" andPayload:v18 toPeerOfID:dCopy withCompletion:v19];
  }
}

- (void)listAppsOnPeerOfID:(id)d appKind:(unint64_t)kind withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  if (kind < 2)
  {
    v16 = @"AppListKind";
    v12 = [NSNumber numberWithUnsignedInteger:kind];
    v17 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002AC78;
    v14[3] = &unk_10016A640;
    v15 = completionCopy;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.ListApps" andPayload:v13 toPeerOfID:dCopy withCompletion:v14];
  }

  else
  {
    v11 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

- (void)getIconImagesOfVisibleAppsOnPeerOfID:(id)d height:(float)height width:(float)width scale:(float)scale withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v25[0] = @"AppIconHeight";
  *&v15 = height;
  v16 = [NSNumber numberWithFloat:v15];
  v26[0] = v16;
  v25[1] = @"AppIconWidth";
  *&v17 = width;
  v18 = [NSNumber numberWithFloat:v17];
  v26[1] = v18;
  v25[2] = @"AppIconScale";
  *&v19 = scale;
  v20 = [NSNumber numberWithFloat:v19];
  v26[2] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10002B0F0;
  v23[3] = &unk_10016A640;
  v24 = completionCopy;
  v22 = completionCopy;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.GetIconImagesOfVisibleApps" andPayload:v21 toPeerOfID:dCopy withCompletion:v23];
}

- (void)launchAppOnPeerOfID:(id)d appIdentifier:(id)identifier withCompletion:(id)completion
{
  dCopy = d;
  identifierCopy = identifier;
  completionCopy = completion;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  if (identifierCopy)
  {
    v16 = @"AppIdentifier";
    v17 = identifierCopy;
    v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002B434;
    v14[3] = &unk_10016A640;
    v15 = completionCopy;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.LaunchApp" andPayload:v12 toPeerOfID:dCopy withCompletion:v14];
  }

  else
  {
    v13 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    (*(completionCopy + 2))(completionCopy, v13);
  }
}

- (void)terminateAppOnPeerOfID:(id)d appIdentifier:(id)identifier withCompletion:(id)completion
{
  dCopy = d;
  identifierCopy = identifier;
  completionCopy = completion;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  if (identifierCopy)
  {
    v16 = @"AppIdentifier";
    v17 = identifierCopy;
    v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002B5E0;
    v14[3] = &unk_10016A640;
    v15 = completionCopy;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.TerminateApp" andPayload:v12 toPeerOfID:dCopy withCompletion:v14];
  }

  else
  {
    v13 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    (*(completionCopy + 2))(completionCopy, v13);
  }
}

- (void)listAvailableEnvironmentsOnPeerOfID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002B6D4;
  v10[3] = &unk_10016A640;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.ListAvailableEnvironments" andPayload:0 toPeerOfID:dCopy withCompletion:v10];
}

- (void)setActiveEnvironmentOnPeerOfID:(id)d environmentID:(id)iD withCompletion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  dCopy = d;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v16 = @"EnvIdentifier";
  v17 = iDCopy;
  v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002BAC0;
  v14[3] = &unk_10016A640;
  v15 = completionCopy;
  v13 = completionCopy;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.SetActiveEnvironment" andPayload:v12 toPeerOfID:dCopy withCompletion:v14];
}

- (void)seImmersionLevelOnPeerOfID:(id)d immersionLevel:(float)level animationDuration:(float)duration withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  if (level < 0.0 || level > 1.0 || duration < 0.0)
  {
    v18 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    completionCopy[2](completionCopy, v18);
  }

  else
  {
    v21[0] = @"ImmersionLevel";
    *&v13 = level;
    v14 = [NSNumber numberWithFloat:v13];
    v22[0] = v14;
    v21[1] = @"AnimationDuration";
    *&v15 = duration;
    v16 = [NSNumber numberWithFloat:v15];
    v22[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10002BCD0;
    v19[3] = &unk_10016A640;
    v20 = completionCopy;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.SetImmersionLevel" andPayload:v17 toPeerOfID:dCopy withCompletion:v19];
  }
}

- (void)resetToPassThroughOnPeerOfID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002BDC4;
  v10[3] = &unk_10016A640;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.ResetToPassThrough" andPayload:0 toPeerOfID:dCopy withCompletion:v10];
}

- (void)enumerateTestScriptsOnPeerOfID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002BEB8;
  v10[3] = &unk_10016A640;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.EnumerateScripts" andPayload:0 toPeerOfID:dCopy withCompletion:v10];
}

- (void)obtainGKResultsOnPeerOfID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002C40C;
  v10[3] = &unk_10016A640;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.ObtainGKResults" andPayload:0 toPeerOfID:dCopy withCompletion:v10];
}

- (void)obtainGKMetricsOnPeerOfID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002C64C;
  v10[3] = &unk_10016A640;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.ObtainGKMetrics" andPayload:0 toPeerOfID:dCopy withCompletion:v10];
}

- (void)loadLSMeasurementsOnPeerOfID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002C88C;
  v10[3] = &unk_10016A640;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.LoadLSMeasurements" andPayload:0 toPeerOfID:dCopy withCompletion:v10];
}

- (void)retrieveHSCoachingSuggestionFromPeer:(id)peer withCompletion:(id)completion
{
  completionCopy = completion;
  peerCopy = peer;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002CA48;
  v10[3] = &unk_10016A640;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.RetrieveHSCoachingSuggestion" andPayload:0 toPeerOfID:peerCopy withCompletion:v10];
}

- (void)readIPDStatusFromPeer:(id)peer withCompletion:(id)completion
{
  completionCopy = completion;
  peerCopy = peer;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002CBB4;
  v10[3] = &unk_10016A640;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.ReadIPDStatus" andPayload:0 toPeerOfID:peerCopy withCompletion:v10];
}

- (void)skipAutoIPDAdjustmentFromPeer:(id)peer withCompletion:(id)completion
{
  completionCopy = completion;
  peerCopy = peer;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002CDF4;
  v10[3] = &unk_10016A640;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.SkipAutoIPDAdjustment" andPayload:0 toPeerOfID:peerCopy withCompletion:v10];
}

- (void)initiateIPDResetOnPeer:(id)peer targetIPD:(double)d withCompletion:(id)completion
{
  peerCopy = peer;
  completionCopy = completion;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  if (d < 45.0 || d > 85.0)
  {
    v13 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    completionCopy[2](completionCopy, v13, 0.0);
  }

  else
  {
    v16 = @"TargetIPD";
    v11 = [NSNumber numberWithDouble:d];
    v17 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002CFDC;
    v14[3] = &unk_10016A640;
    v15 = completionCopy;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.InitiateIPDReset" andPayload:v12 toPeerOfID:peerCopy withCompletion:v14];
  }
}

- (void)queryIPDResetStageOnPeer:(id)peer withCompletion:(id)completion
{
  completionCopy = completion;
  peerCopy = peer;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002D1E0;
  v10[3] = &unk_10016A640;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.QueryIPDResetStage" andPayload:0 toPeerOfID:peerCopy withCompletion:v10];
}

- (void)getAccessibiltiySettingsOnPeer:(id)peer withCompletion:(id)completion
{
  completionCopy = completion;
  peerCopy = peer;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002D3E8;
  v10[3] = &unk_10016A640;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.GetAXSettings" andPayload:0 toPeerOfID:peerCopy withCompletion:v10];
}

- (void)setAccessibiltiySettingsOnPeer:(id)peer newSettings:(id)settings withCompletion:(id)completion
{
  peerCopy = peer;
  completionCopy = completion;
  settingsCopy = settings;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v18 = 0;
  v12 = [NSKeyedArchiver archivedDataWithRootObject:settingsCopy requiringSecureCoding:1 error:&v18];

  v13 = v18;
  if (v12)
  {
    v19 = @"AXSettingsArchive";
    v20 = v12;
    v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10002D748;
    v16[3] = &unk_10016A640;
    v17 = completionCopy;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.SetAXSettings" andPayload:v14 toPeerOfID:peerCopy withCompletion:v16];
  }

  else
  {
    v15 = sub_100063A54();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000CC9D4(v13);
    }

    v14 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

- (void)wipeCustomerAssetsOnPeer:(id)peer withCompletion:(id)completion
{
  completionCopy = completion;
  peerCopy = peer;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002D83C;
  v10[3] = &unk_10016A640;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.WipeCustomerAssets" andPayload:0 toPeerOfID:peerCopy withCompletion:v10];
}

- (void)syncCurrentWiFiSettingsToPeer:(id)peer withCompletion:(id)completion
{
  peerCopy = peer;
  completionCopy = completion;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = +[MSDWiFiHelper sharedInstance];
  v9 = [v8 getCurrentWiFiSettings:1];

  if (v9)
  {
    v10 = [v9 objectForKey:@"SSID"];
    v11 = [v9 objectForKey:@"Password"];
    v12 = v11;
    if (v10)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || (v14 = [[NSString alloc] initWithData:v11 encoding:4]) == 0)
    {
      v17 = [NSError errorDomainMSDWithCode:3727741073 message:@"Failed to read current WiFi settings."];
      completionCopy[2](completionCopy, v17);
    }

    else
    {
      v15 = v14;
      v16 = [[MSDKPeerDemoWiFiSettings alloc] initWithSSID:v10 password:v14];
      [(MSDDemoPeerCommander *)self changeWiFiSettingsOnPeer:peerCopy newSettings:v16 withCompletion:completionCopy];

      v10 = v16;
    }
  }

  else
  {
    v10 = [NSError errorDomainMSDWithCode:3727741073 message:@"Failed to read current WiFi settings."];
    completionCopy[2](completionCopy, v10);
  }
}

- (void)changeWiFiSettingsOnPeer:(id)peer newSettings:(id)settings withCompletion:(id)completion
{
  peerCopy = peer;
  completionCopy = completion;
  settingsCopy = settings;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v18 = 0;
  v12 = [NSKeyedArchiver archivedDataWithRootObject:settingsCopy requiringSecureCoding:1 error:&v18];

  v13 = v18;
  if (v12)
  {
    v19 = @"WiFiSettingsArchive";
    v20 = v12;
    v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10002DC24;
    v16[3] = &unk_10016A640;
    v17 = completionCopy;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.ChangeWiFiSettings" andPayload:v14 toPeerOfID:peerCopy withCompletion:v16];
  }

  else
  {
    v15 = sub_100063A54();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000CCA58(v13);
    }

    v14 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

- (void)removePairedPeer:(id)peer withCompletion:(id)completion
{
  completionCopy = completion;
  peerCopy = peer;
  v7 = +[MSDDemoPeerPairingManager sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002DD04;
  v9[3] = &unk_100169F80;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 removePairedPeer:peerCopy withCompletion:v9];
}

- (void)setLanguageAndRegionOnPeer:(id)peer languageCode:(id)code regionCode:(id)regionCode withCompletion:(id)completion
{
  peerCopy = peer;
  completionCopy = completion;
  regionCodeCopy = regionCode;
  codeCopy = code;
  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  if (codeCopy && regionCodeCopy)
  {
    v19[0] = @"LanguageCode";
    v19[1] = @"RegionCode";
    v20[0] = codeCopy;
    v20[1] = regionCodeCopy;
    v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002DF04;
    v17[3] = &unk_10016A640;
    v18 = completionCopy;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.SetLanguageAndRegion" andPayload:v15 toPeerOfID:peerCopy withCompletion:v17];
  }

  else
  {
    v16 = sub_100063A54();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000CCADC(v16);
    }

    v15 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];

    (*(completionCopy + 2))(completionCopy, v15);
  }
}

- (void)getMuseBuddyResetValueOnPeer:(id)peer withCompletion:(id)completion
{
  completionCopy = completion;
  peerCopy = peer;
  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[MSDDemoPeerCommander getMuseBuddyResetValueOnPeer:withCompletion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s - Entered.", buf, 0xCu);
  }

  queue = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(queue);

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002E1FC;
  v11[3] = &unk_10016A640;
  v12 = completionCopy;
  v10 = completionCopy;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.GetEnableMuseBuddyResetValue" andPayload:0 toPeerOfID:peerCopy withCompletion:v11];
}

- (void)monitorDidUpdateRegionOfNearbyObject:(id)object
{
  objectCopy = object;
  queue = [(MSDDemoPeerCommander *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002E3CC;
  v7[3] = &unk_10016A258;
  v8 = objectCopy;
  selfCopy = self;
  v6 = objectCopy;
  dispatch_async(queue, v7);
}

- (void)explorerDidFindDevice:(id)device
{
  deviceCopy = device;
  queue = [(MSDDemoPeerCommander *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002E680;
  v7[3] = &unk_10016A258;
  v8 = deviceCopy;
  selfCopy = self;
  v6 = deviceCopy;
  dispatch_async(queue, v7);
}

- (void)explorerDidLoseDevice:(id)device
{
  deviceCopy = device;
  queue = [(MSDDemoPeerCommander *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002E794;
  v7[3] = &unk_10016A258;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(queue, v7);
}

- (void)explorerDidUpdateDevice:(id)device
{
  deviceCopy = device;
  queue = [(MSDDemoPeerCommander *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002E8DC;
  v7[3] = &unk_10016A258;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(queue, v7);
}

- (id)didReceiveRequestMessage:(id)message fromDevice:(id)device
{
  messageCopy = message;
  deviceCopy = device;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = messageCopy;
    v11 = 2114;
    v12 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Received request message: %{public}@ from device: %{public}@", &v9, 0x16u);
  }

  return 0;
}

- (void)didReceiveEventMessage:(id)message fromDevice:(id)device
{
  messageCopy = message;
  deviceCopy = device;
  queue = [(MSDDemoPeerCommander *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002EB1C;
  block[3] = &unk_10016A690;
  v12 = messageCopy;
  v13 = deviceCopy;
  selfCopy = self;
  v9 = deviceCopy;
  v10 = messageCopy;
  dispatch_async(queue, block);
}

@end