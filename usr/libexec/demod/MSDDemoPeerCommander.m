@interface MSDDemoPeerCommander
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MSDDemoPeerCommander)init;
- (id)createXPCEndpoint;
- (id)didReceiveRequestMessage:(id)a3 fromDevice:(id)a4;
- (void)_handleDiscoveryOfNewPeer:(id)a3;
- (void)_handleLossOfExistingPeer:(id)a3;
- (void)_handleUpdateDeviceEventMessage:(id)a3 fromPeer:(id)a4;
- (void)_handleUpdateOfExistingPeer:(id)a3;
- (void)_sendRequestMessageOfID:(id)a3 andPayload:(id)a4 toPeerOfID:(id)a5 withCompletion:(id)a6;
- (void)adjustVolumeOnPeerOfID:(id)a3 toValue:(float)a4 forCategory:(unint64_t)a5 withCompletion:(id)a6;
- (void)attemptPairingWithPeerOfID:(id)a3 withCompletion:(id)a4;
- (void)changeWiFiSettingsOnPeer:(id)a3 newSettings:(id)a4 withCompletion:(id)a5;
- (void)didReceiveEventMessage:(id)a3 fromDevice:(id)a4;
- (void)enumerateTestScriptsOnPeerOfID:(id)a3 withCompletion:(id)a4;
- (void)explorerDidFindDevice:(id)a3;
- (void)explorerDidLoseDevice:(id)a3;
- (void)explorerDidUpdateDevice:(id)a3;
- (void)fetchDeviceInfoFromPeerOfID:(id)a3 withCompletion:(id)a4;
- (void)getAccessibiltiySettingsOnPeer:(id)a3 withCompletion:(id)a4;
- (void)getIconImagesOfVisibleAppsOnPeerOfID:(id)a3 height:(float)a4 width:(float)a5 scale:(float)a6 withCompletion:(id)a7;
- (void)getMuseBuddyResetValueOnPeer:(id)a3 withCompletion:(id)a4;
- (void)initiateAirPlayAssistedFromPeerOfID:(id)a3 usingParameters:(id)a4 discoveryMode:(unint64_t)a5 withCompletion:(id)a6;
- (void)initiateIPDResetOnPeer:(id)a3 targetIPD:(double)a4 withCompletion:(id)a5;
- (void)invokeInputRecoveryOnPeerOfID:(id)a3 forType:(unint64_t)a4 withCompletion:(id)a5;
- (void)launchAppOnPeerOfID:(id)a3 appIdentifier:(id)a4 withCompletion:(id)a5;
- (void)listAppsOnPeerOfID:(id)a3 appKind:(unint64_t)a4 withCompletion:(id)a5;
- (void)listAvailableEnvironmentsOnPeerOfID:(id)a3 withCompletion:(id)a4;
- (void)loadLSMeasurementsOnPeerOfID:(id)a3 withCompletion:(id)a4;
- (void)monitorDidUpdateRegionOfNearbyObject:(id)a3;
- (void)obtainGKMetricsOnPeerOfID:(id)a3 withCompletion:(id)a4;
- (void)obtainGKResultsOnPeerOfID:(id)a3 withCompletion:(id)a4;
- (void)queryIPDResetStageOnPeer:(id)a3 withCompletion:(id)a4;
- (void)readIPDStatusFromPeer:(id)a3 withCompletion:(id)a4;
- (void)removePairedPeer:(id)a3 withCompletion:(id)a4;
- (void)resetToPassThroughOnPeerOfID:(id)a3 withCompletion:(id)a4;
- (void)retrieveHSCoachingSuggestionFromPeer:(id)a3 withCompletion:(id)a4;
- (void)seImmersionLevelOnPeerOfID:(id)a3 immersionLevel:(float)a4 animationDuration:(float)a5 withCompletion:(id)a6;
- (void)setAccessibiltiySettingsOnPeer:(id)a3 newSettings:(id)a4 withCompletion:(id)a5;
- (void)setActiveEnvironmentOnPeerOfID:(id)a3 environmentID:(id)a4 withCompletion:(id)a5;
- (void)setLanguageAndRegionOnPeer:(id)a3 languageCode:(id)a4 regionCode:(id)a5 withCompletion:(id)a6;
- (void)skipAutoIPDAdjustmentFromPeer:(id)a3 withCompletion:(id)a4;
- (void)startPeerDiscoveryWithCompletion:(id)a3;
- (void)subscribeDeviceInfoFromPeerOfID:(id)a3 withCompletion:(id)a4;
- (void)syncCurrentWiFiSettingsToPeer:(id)a3 withCompletion:(id)a4;
- (void)terminateAppOnPeerOfID:(id)a3 appIdentifier:(id)a4 withCompletion:(id)a5;
- (void)triggerSnapshotRevertOnPeerOfID:(id)a3 withCompletion:(id)a4;
- (void)wipeCustomerAssetsOnPeer:(id)a3 withCompletion:(id)a4;
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

    v11 = [(MSDDemoPeerCommander *)v2 xpcListener];
    [v11 setDelegate:v2];

    v12 = [(MSDDemoPeerCommander *)v2 xpcListener];
    v13 = [(MSDDemoPeerCommander *)v2 queue];
    [v12 _setQueue:v13];

    v14 = [(MSDDemoPeerCommander *)v2 xpcListener];
    [v14 activate];
  }

  return v2;
}

- (id)createXPCEndpoint
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MSDDemoPeerCommander *)v2 xpcListener];
  v4 = [v3 endpoint];

  objc_sync_exit(v2);

  return v4;
}

- (void)_sendRequestMessageOfID:(id)a3 andPayload:(id)a4 toPeerOfID:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v14);

  v15 = sub_100063A54();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = v10;
    v27 = 2114;
    v28 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Sending request message of ID: %{public}@ to peer of ID: %{public}@", buf, 0x16u);
  }

  if (v13)
  {
    if ([v10 isEqualToString:@"com.apple.MobileStoreDemo.InitiateIPDReset"])
    {
      v16 = &off_10017AF18;
    }

    else
    {
      v16 = &off_10017AF30;
    }

    v17 = [NSDictionary dictionaryWithObject:v16 forKey:@"Timeout"];
    v18 = [(MSDDemoPeerCommander *)self discoveredPeers];
    v19 = [v18 objectForKey:v12];

    v20 = [[MSDRapportMessage alloc] initWithIdentifier:v10 andPayload:v11 usingOptions:v17];
    v21 = [(MSDDemoPeerCommander *)self rpMessageHandler];
    v22 = [v19 device];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100028ADC;
    v23[3] = &unk_10016A5B0;
    v23[4] = self;
    v24 = v13;
    [v21 sendOutgoingRequestMessage:v20 toDevice:v22 withCompletion:v23];
  }
}

- (void)_handleDiscoveryOfNewPeer:(id)a3
{
  v4 = a3;
  v5 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Found new peer: %{public}@", &v17, 0xCu);
  }

  v7 = [v4 identifier];
  v8 = [(MSDDemoPeerCommander *)self discoveredPeers];
  v9 = [v8 objectForKey:v7];

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
    v11 = [(MSDDemoPeerCommander *)self discoveredPeers];
    [v11 setObject:v4 forKey:v7];

    v12 = [(MSDDemoPeerCommander *)self nearbyObjects];
    v10 = [v12 objectForKey:v7];

    if (v10)
    {
      v13 = [v10 isInBubble];
    }

    else
    {
      v13 = 0;
    }

    [v4 setIsInBubble:v13];
    v14 = [(MSDDemoPeerCommander *)self xpcConnection];

    if (v14)
    {
      v15 = [(MSDDemoPeerCommander *)self xpcConnection];
      v16 = [v15 remoteObjectProxy];
      [v16 providerDidDiscoverNewPeer:v4];
    }

    if ([v4 authenticated])
    {
      [(MSDDemoPeerCommander *)self fetchDeviceInfoFromPeerOfID:v7 withCompletion:&stru_10016A5F0];
    }
  }
}

- (void)_handleLossOfExistingPeer:(id)a3
{
  v4 = a3;
  v5 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Lost existing peer: %{public}@", &v16, 0xCu);
  }

  v7 = [v4 identifier];
  v8 = [(MSDDemoPeerCommander *)self discoveredPeers];
  v9 = [v8 objectForKey:v7];

  if (!v9)
  {
    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Ignore unknown peer device!", &v16, 2u);
    }

    goto LABEL_8;
  }

  v10 = [(MSDDemoPeerCommander *)self discoveredPeers];
  [v10 removeObjectForKey:v7];

  v11 = [(MSDDemoPeerCommander *)self rpMessageHandler];
  v12 = [v4 device];
  [v11 invalidateOutgoingConnectionForDevice:v12];

  v13 = [(MSDDemoPeerCommander *)self xpcConnection];

  if (v13)
  {
    v14 = [(MSDDemoPeerCommander *)self xpcConnection];
    v15 = [v14 remoteObjectProxy];
    [v15 providerDidLoseExistingPeerOfID:v7];

LABEL_8:
  }
}

- (void)_handleUpdateOfExistingPeer:(id)a3
{
  v4 = a3;
  v5 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Received update of existing peer: %{public}@", &v9, 0xCu);
  }

  v7 = [(MSDDemoPeerCommander *)self rpMessageHandler];
  v8 = [v4 device];
  [v7 invalidateOutgoingConnectionForDevice:v8];
}

- (void)_handleUpdateDeviceEventMessage:(id)a3 fromPeer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 payload];

  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Received device info update for peer: %{public}@ properties: %{public}@", &v15, 0x16u);
  }

  [v6 refreshDevicePropertiesUsingProperties:v9];
  v11 = [(MSDDemoPeerCommander *)self xpcConnection];

  if (v11)
  {
    v12 = [(MSDDemoPeerCommander *)self xpcConnection];
    v13 = [v12 remoteObjectProxy];
    v14 = [v6 identifier];
    [v13 providerDidUpdateDeviceInfoOnPeerOfID:v14 withNewProperties:v9];
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 processIdentifier];
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: A new XPC connection received from client: %d", &buf, 8u);
  }

  v10 = [v7 valueForEntitlement:@"com.apple.private.mobilestoredemo.enabledemo"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v10 containsObject:@"PeerDemoDevice"] & 1) != 0)
  {
    objc_initWeak(&buf, self);
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDDemoPeerServiceProviderProtocol];
    [v7 setExportedInterface:v11];

    [v7 setExportedObject:self];
    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDDemoPeerServiceConsumerProtocol];
    [v7 setRemoteObjectInterface:v12];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000297F0;
    v22[3] = &unk_100169C78;
    objc_copyWeak(&v23, &buf);
    [v7 setInterruptionHandler:v22];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100029850;
    v20[3] = &unk_100169C78;
    objc_copyWeak(&v21, &buf);
    [v7 setInvalidationHandler:v20];
    v13 = [(MSDDemoPeerCommander *)self queue];
    [v7 _setQueue:v13];

    [v7 activate];
    [(MSDDemoPeerCommander *)self setXpcConnection:v7];
    v14 = [(MSDDemoPeerCommander *)self queue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000298B0;
    v18[3] = &unk_10016A1C8;
    objc_copyWeak(&v19, &buf);
    v18[4] = self;
    dispatch_async(v14, v18);

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

- (void)startPeerDiscoveryWithCompletion:(id)a3
{
  v8 = a3;
  v4 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(MSDDemoPeerCommander *)self nearbyObjectMonitor];
  [v5 start];

  v6 = [(MSDDemoPeerCommander *)self rpDeviceExplorer];
  [v6 activate];

  v7 = [(MSDDemoPeerCommander *)self rpMessageHandler];
  [v7 listenForIncomingEventMessageOfID:@"com.apple.MobileStoreDemo.UpdateDeviceInfo"];

  v8[2](v8, 0);
}

- (void)attemptPairingWithPeerOfID:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(MSDDemoPeerCommander *)self discoveredPeers];
  v10 = [v9 objectForKey:v6];

  if (!v10)
  {
    v11 = @"Cannot find specified demo peer.";
    v12 = 3727741104;
LABEL_9:
    v15 = [NSError errorDomainMSDWithCode:v12 message:v11];
    v7[2](v7, v15);

    goto LABEL_10;
  }

  if (![v10 authenticated])
  {
    if ([v10 pairingMode])
    {
      v13 = [(MSDDemoPeerCommander *)self pairingHandlers];
      v14 = [v13 objectForKey:v6];

      if (!v14)
      {
        v16 = [MSDRapportPairingHandler alloc];
        v17 = [v10 device];
        v21 = _NSConcreteStackBlock;
        v22 = 3221225472;
        v23 = sub_100029D48;
        v24 = &unk_10016A618;
        v25 = v10;
        v28 = v7;
        v26 = self;
        v18 = v6;
        v27 = v18;
        v19 = [(MSDRapportPairingHandler *)v16 initWithDevice:v17 andCompletion:&v21];

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

  v7[2](v7, 0);
LABEL_10:
}

- (void)subscribeDeviceInfoFromPeerOfID:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v8);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100029F3C;
  v10[3] = &unk_10016A640;
  v11 = v6;
  v9 = v6;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.SubscribeDeviceInfo" andPayload:0 toPeerOfID:v7 withCompletion:v10];
}

- (void)fetchDeviceInfoFromPeerOfID:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v8);

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002A044;
  v11[3] = &unk_10016A668;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.FetchDeviceInfo" andPayload:0 toPeerOfID:v10 withCompletion:v11];
}

- (void)initiateAirPlayAssistedFromPeerOfID:(id)a3 usingParameters:(id)a4 discoveryMode:(unint64_t)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v13);

  if (v11 && a5 < 3)
  {
    v19[0] = @"APParameters";
    v19[1] = @"APDiscoveryMode";
    v20[0] = v11;
    v14 = [NSNumber numberWithUnsignedInteger:a5];
    v20[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002A46C;
    v17[3] = &unk_10016A640;
    v18 = v12;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.InitiateAirPlayAssisted" andPayload:v15 toPeerOfID:v10 withCompletion:v17];
  }

  else
  {
    v16 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    (*(v12 + 2))(v12, v16);
  }
}

- (void)triggerSnapshotRevertOnPeerOfID:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v8);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002A6E0;
  v10[3] = &unk_10016A640;
  v11 = v6;
  v9 = v6;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.TriggerSnapshotRevert" andPayload:0 toPeerOfID:v7 withCompletion:v10];
}

- (void)invokeInputRecoveryOnPeerOfID:(id)a3 forType:(unint64_t)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v10);

  if (a4 < 4)
  {
    v16 = @"IREnrollmentType";
    v12 = [NSNumber numberWithUnsignedInteger:a4];
    v17 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002A8A4;
    v14[3] = &unk_10016A640;
    v15 = v9;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.InvokeInputRecovery" andPayload:v13 toPeerOfID:v8 withCompletion:v14];
  }

  else
  {
    v11 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    (*(v9 + 2))(v9, v11);
  }
}

- (void)adjustVolumeOnPeerOfID:(id)a3 toValue:(float)a4 forCategory:(unint64_t)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v12);

  if (a4 < 0.0 || (a4 <= 1.0 ? (v14 = a5 >= 4) : (v14 = 1), v14))
  {
    v15 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    v11[2](v11, v15);
  }

  else
  {
    v21[0] = @"VolumeValue";
    *&v13 = a4;
    v16 = [NSNumber numberWithFloat:v13];
    v22[0] = v16;
    v21[1] = @"VolumeCategory";
    v17 = [NSNumber numberWithUnsignedInteger:a5];
    v22[1] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10002AAB0;
    v19[3] = &unk_10016A640;
    v20 = v11;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.AdjustVolume" andPayload:v18 toPeerOfID:v10 withCompletion:v19];
  }
}

- (void)listAppsOnPeerOfID:(id)a3 appKind:(unint64_t)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v10);

  if (a4 < 2)
  {
    v16 = @"AppListKind";
    v12 = [NSNumber numberWithUnsignedInteger:a4];
    v17 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002AC78;
    v14[3] = &unk_10016A640;
    v15 = v9;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.ListApps" andPayload:v13 toPeerOfID:v8 withCompletion:v14];
  }

  else
  {
    v11 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    (*(v9 + 2))(v9, 0, v11);
  }
}

- (void)getIconImagesOfVisibleAppsOnPeerOfID:(id)a3 height:(float)a4 width:(float)a5 scale:(float)a6 withCompletion:(id)a7
{
  v12 = a7;
  v13 = a3;
  v14 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v14);

  v25[0] = @"AppIconHeight";
  *&v15 = a4;
  v16 = [NSNumber numberWithFloat:v15];
  v26[0] = v16;
  v25[1] = @"AppIconWidth";
  *&v17 = a5;
  v18 = [NSNumber numberWithFloat:v17];
  v26[1] = v18;
  v25[2] = @"AppIconScale";
  *&v19 = a6;
  v20 = [NSNumber numberWithFloat:v19];
  v26[2] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10002B0F0;
  v23[3] = &unk_10016A640;
  v24 = v12;
  v22 = v12;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.GetIconImagesOfVisibleApps" andPayload:v21 toPeerOfID:v13 withCompletion:v23];
}

- (void)launchAppOnPeerOfID:(id)a3 appIdentifier:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v11);

  if (v9)
  {
    v16 = @"AppIdentifier";
    v17 = v9;
    v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002B434;
    v14[3] = &unk_10016A640;
    v15 = v10;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.LaunchApp" andPayload:v12 toPeerOfID:v8 withCompletion:v14];
  }

  else
  {
    v13 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    (*(v10 + 2))(v10, v13);
  }
}

- (void)terminateAppOnPeerOfID:(id)a3 appIdentifier:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v11);

  if (v9)
  {
    v16 = @"AppIdentifier";
    v17 = v9;
    v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002B5E0;
    v14[3] = &unk_10016A640;
    v15 = v10;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.TerminateApp" andPayload:v12 toPeerOfID:v8 withCompletion:v14];
  }

  else
  {
    v13 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    (*(v10 + 2))(v10, v13);
  }
}

- (void)listAvailableEnvironmentsOnPeerOfID:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v8);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002B6D4;
  v10[3] = &unk_10016A640;
  v11 = v6;
  v9 = v6;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.ListAvailableEnvironments" andPayload:0 toPeerOfID:v7 withCompletion:v10];
}

- (void)setActiveEnvironmentOnPeerOfID:(id)a3 environmentID:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v11);

  v16 = @"EnvIdentifier";
  v17 = v9;
  v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002BAC0;
  v14[3] = &unk_10016A640;
  v15 = v8;
  v13 = v8;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.SetActiveEnvironment" andPayload:v12 toPeerOfID:v10 withCompletion:v14];
}

- (void)seImmersionLevelOnPeerOfID:(id)a3 immersionLevel:(float)a4 animationDuration:(float)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v12);

  if (a4 < 0.0 || a4 > 1.0 || a5 < 0.0)
  {
    v18 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    v11[2](v11, v18);
  }

  else
  {
    v21[0] = @"ImmersionLevel";
    *&v13 = a4;
    v14 = [NSNumber numberWithFloat:v13];
    v22[0] = v14;
    v21[1] = @"AnimationDuration";
    *&v15 = a5;
    v16 = [NSNumber numberWithFloat:v15];
    v22[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10002BCD0;
    v19[3] = &unk_10016A640;
    v20 = v11;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.SetImmersionLevel" andPayload:v17 toPeerOfID:v10 withCompletion:v19];
  }
}

- (void)resetToPassThroughOnPeerOfID:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v8);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002BDC4;
  v10[3] = &unk_10016A640;
  v11 = v6;
  v9 = v6;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.ResetToPassThrough" andPayload:0 toPeerOfID:v7 withCompletion:v10];
}

- (void)enumerateTestScriptsOnPeerOfID:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v8);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002BEB8;
  v10[3] = &unk_10016A640;
  v11 = v6;
  v9 = v6;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.EnumerateScripts" andPayload:0 toPeerOfID:v7 withCompletion:v10];
}

- (void)obtainGKResultsOnPeerOfID:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v8);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002C40C;
  v10[3] = &unk_10016A640;
  v11 = v6;
  v9 = v6;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.ObtainGKResults" andPayload:0 toPeerOfID:v7 withCompletion:v10];
}

- (void)obtainGKMetricsOnPeerOfID:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v8);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002C64C;
  v10[3] = &unk_10016A640;
  v11 = v6;
  v9 = v6;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.ObtainGKMetrics" andPayload:0 toPeerOfID:v7 withCompletion:v10];
}

- (void)loadLSMeasurementsOnPeerOfID:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v8);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002C88C;
  v10[3] = &unk_10016A640;
  v11 = v6;
  v9 = v6;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.LoadLSMeasurements" andPayload:0 toPeerOfID:v7 withCompletion:v10];
}

- (void)retrieveHSCoachingSuggestionFromPeer:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v8);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002CA48;
  v10[3] = &unk_10016A640;
  v11 = v6;
  v9 = v6;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.RetrieveHSCoachingSuggestion" andPayload:0 toPeerOfID:v7 withCompletion:v10];
}

- (void)readIPDStatusFromPeer:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v8);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002CBB4;
  v10[3] = &unk_10016A640;
  v11 = v6;
  v9 = v6;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.ReadIPDStatus" andPayload:0 toPeerOfID:v7 withCompletion:v10];
}

- (void)skipAutoIPDAdjustmentFromPeer:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v8);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002CDF4;
  v10[3] = &unk_10016A640;
  v11 = v6;
  v9 = v6;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.SkipAutoIPDAdjustment" andPayload:0 toPeerOfID:v7 withCompletion:v10];
}

- (void)initiateIPDResetOnPeer:(id)a3 targetIPD:(double)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v10);

  if (a4 < 45.0 || a4 > 85.0)
  {
    v13 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    v9[2](v9, v13, 0.0);
  }

  else
  {
    v16 = @"TargetIPD";
    v11 = [NSNumber numberWithDouble:a4];
    v17 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002CFDC;
    v14[3] = &unk_10016A640;
    v15 = v9;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.InitiateIPDReset" andPayload:v12 toPeerOfID:v8 withCompletion:v14];
  }
}

- (void)queryIPDResetStageOnPeer:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v8);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002D1E0;
  v10[3] = &unk_10016A640;
  v11 = v6;
  v9 = v6;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.QueryIPDResetStage" andPayload:0 toPeerOfID:v7 withCompletion:v10];
}

- (void)getAccessibiltiySettingsOnPeer:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v8);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002D3E8;
  v10[3] = &unk_10016A640;
  v11 = v6;
  v9 = v6;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.GetAXSettings" andPayload:0 toPeerOfID:v7 withCompletion:v10];
}

- (void)setAccessibiltiySettingsOnPeer:(id)a3 newSettings:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v11);

  v18 = 0;
  v12 = [NSKeyedArchiver archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v18];

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
    v17 = v9;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.SetAXSettings" andPayload:v14 toPeerOfID:v8 withCompletion:v16];
  }

  else
  {
    v15 = sub_100063A54();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000CC9D4(v13);
    }

    v14 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    (*(v9 + 2))(v9, v14);
  }
}

- (void)wipeCustomerAssetsOnPeer:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v8);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002D83C;
  v10[3] = &unk_10016A640;
  v11 = v6;
  v9 = v6;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.WipeCustomerAssets" andPayload:0 toPeerOfID:v7 withCompletion:v10];
}

- (void)syncCurrentWiFiSettingsToPeer:(id)a3 withCompletion:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v7);

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
      v6[2](v6, v17);
    }

    else
    {
      v15 = v14;
      v16 = [[MSDKPeerDemoWiFiSettings alloc] initWithSSID:v10 password:v14];
      [(MSDDemoPeerCommander *)self changeWiFiSettingsOnPeer:v18 newSettings:v16 withCompletion:v6];

      v10 = v16;
    }
  }

  else
  {
    v10 = [NSError errorDomainMSDWithCode:3727741073 message:@"Failed to read current WiFi settings."];
    v6[2](v6, v10);
  }
}

- (void)changeWiFiSettingsOnPeer:(id)a3 newSettings:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v11);

  v18 = 0;
  v12 = [NSKeyedArchiver archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v18];

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
    v17 = v9;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.ChangeWiFiSettings" andPayload:v14 toPeerOfID:v8 withCompletion:v16];
  }

  else
  {
    v15 = sub_100063A54();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000CCA58(v13);
    }

    v14 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
    (*(v9 + 2))(v9, v14);
  }
}

- (void)removePairedPeer:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MSDDemoPeerPairingManager sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002DD04;
  v9[3] = &unk_100169F80;
  v10 = v5;
  v8 = v5;
  [v7 removePairedPeer:v6 withCompletion:v9];
}

- (void)setLanguageAndRegionOnPeer:(id)a3 languageCode:(id)a4 regionCode:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v14);

  if (v13 && v12)
  {
    v19[0] = @"LanguageCode";
    v19[1] = @"RegionCode";
    v20[0] = v13;
    v20[1] = v12;
    v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002DF04;
    v17[3] = &unk_10016A640;
    v18 = v11;
    [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.SetLanguageAndRegion" andPayload:v15 toPeerOfID:v10 withCompletion:v17];
  }

  else
  {
    v16 = sub_100063A54();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000CCADC(v16);
    }

    v15 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];

    (*(v11 + 2))(v11, v15);
  }
}

- (void)getMuseBuddyResetValueOnPeer:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[MSDDemoPeerCommander getMuseBuddyResetValueOnPeer:withCompletion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s - Entered.", buf, 0xCu);
  }

  v9 = [(MSDDemoPeerCommander *)self queue];
  dispatch_assert_queue_V2(v9);

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002E1FC;
  v11[3] = &unk_10016A640;
  v12 = v6;
  v10 = v6;
  [(MSDDemoPeerCommander *)self _sendRequestMessageOfID:@"com.apple.MobileStoreDemo.GetEnableMuseBuddyResetValue" andPayload:0 toPeerOfID:v7 withCompletion:v11];
}

- (void)monitorDidUpdateRegionOfNearbyObject:(id)a3
{
  v4 = a3;
  v5 = [(MSDDemoPeerCommander *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002E3CC;
  v7[3] = &unk_10016A258;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)explorerDidFindDevice:(id)a3
{
  v4 = a3;
  v5 = [(MSDDemoPeerCommander *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002E680;
  v7[3] = &unk_10016A258;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)explorerDidLoseDevice:(id)a3
{
  v4 = a3;
  v5 = [(MSDDemoPeerCommander *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002E794;
  v7[3] = &unk_10016A258;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)explorerDidUpdateDevice:(id)a3
{
  v4 = a3;
  v5 = [(MSDDemoPeerCommander *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002E8DC;
  v7[3] = &unk_10016A258;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)didReceiveRequestMessage:(id)a3 fromDevice:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Received request message: %{public}@ from device: %{public}@", &v9, 0x16u);
  }

  return 0;
}

- (void)didReceiveEventMessage:(id)a3 fromDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSDDemoPeerCommander *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002EB1C;
  block[3] = &unk_10016A690;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

@end