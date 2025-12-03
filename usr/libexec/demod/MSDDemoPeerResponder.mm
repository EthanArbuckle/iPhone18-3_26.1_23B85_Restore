@interface MSDDemoPeerResponder
+ (id)sharedInstance;
- (MSDDemoPeerResponder)init;
- (id)_constructMessageHandlerTable;
- (id)_getDeviceAddresses;
- (id)_handleAdjustVolumeRequestMessage:(id)message;
- (id)_handleChangeWiFiSettingsRequestMessage:(id)message;
- (id)_handleEnableMuseBuddyReset:(id)reset;
- (id)_handleEnumerateScriptsRequestMessage:(id)message;
- (id)_handleFetchDeviceInfoRequestMessage:(id)message;
- (id)_handleGetAXSettingsRequestMessage:(id)message;
- (id)_handleGetEnableMuseBuddyResetValue:(id)value;
- (id)_handleGetIconImagesOfVisibleAppsRequestMessage:(id)message;
- (id)_handleInitiateAirPlayAssistedRequestMessage:(id)message;
- (id)_handleInitiateIPDResetRequestMessage:(id)message;
- (id)_handleInvokeInputRecoveryRequestMessage:(id)message;
- (id)_handleLaunchAppRequestMessage:(id)message;
- (id)_handleLaunchScriptRequestMessage:(id)message;
- (id)_handleListAppsRequestMessage:(id)message;
- (id)_handleListAvailableEnvironmentsRequestMessage:(id)message;
- (id)_handleLoadLSMeasurementsRequestMessage:(id)message;
- (id)_handleObtainGKMetricsRequestMessage:(id)message;
- (id)_handleObtainGKResultsRequestMessage:(id)message;
- (id)_handleQueryIPDResetStageRequestMessage:(id)message;
- (id)_handleReadIPDStatusRequestMessage:(id)message;
- (id)_handleResetToPassThroughRequestMessage:(id)message;
- (id)_handleRetrieveHSCoachingSuggestionRequestMessage:(id)message;
- (id)_handleSetAXSettingsRequestMessage:(id)message;
- (id)_handleSetActiveEnvironmentRequestMessage:(id)message;
- (id)_handleSetImmersionLevelRequestMessage:(id)message;
- (id)_handleSetLanguageAndRegion:(id)region;
- (id)_handleSkipAutoIPDAdjustmentRequestMessage:(id)message;
- (id)_handleSubscribeDeviceInfoRequestMessage:(id)message;
- (id)_handleTerminateAppRequestMessage:(id)message;
- (id)_handleTriggerSnapshotRevertRequestMessage:(id)message;
- (id)_handleWipeCustomerAssetsRequestMessage:(id)message;
- (id)_prepareDeviceInfoDictionaryForRequest:(id)request;
- (id)didReceiveRequestMessage:(id)message fromDevice:(id)device;
- (void)_uploadPairingPassword;
- (void)advertiserDidHidePairingPassword;
- (void)advertiserDidShowPairingPassword:(id)password;
- (void)advertiserDidUpdateLocalDevicePublicIDFrom:(id)from to:(id)to;
- (void)didReceiveEventMessage:(id)message fromDevice:(id)device;
- (void)start;
- (void)stop;
@end

@implementation MSDDemoPeerResponder

+ (id)sharedInstance
{
  if (qword_1001A5A88 != -1)
  {
    sub_1000E9E5C();
  }

  v3 = qword_1001A5A90;

  return v3;
}

- (MSDDemoPeerResponder)init
{
  v7.receiver = self;
  v7.super_class = MSDDemoPeerResponder;
  v2 = [(MSDDemoPeerResponder *)&v7 init];
  v3 = v2;
  if (v2)
  {
    _constructMessageHandlerTable = [(MSDDemoPeerResponder *)v2 _constructMessageHandlerTable];
    [(MSDDemoPeerResponder *)v3 setMessageHandlerTable:_constructMessageHandlerTable];

    v5 = [NSMutableArray arrayWithCapacity:0];
    [(MSDDemoPeerResponder *)v3 setSubscribers:v5];
  }

  return v3;
}

- (void)start
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerResponder: Starting responder...", buf, 2u);
  }

  rpDeviceAdvertiser = [(MSDDemoPeerResponder *)selfCopy rpDeviceAdvertiser];
  v5 = rpDeviceAdvertiser == 0;

  if (v5)
  {
    v6 = [[MSDRapportDeviceAdvertiser alloc] initWithObserver:selfCopy];
    [(MSDDemoPeerResponder *)selfCopy setRpDeviceAdvertiser:v6];

    rpDeviceAdvertiser2 = [(MSDDemoPeerResponder *)selfCopy rpDeviceAdvertiser];
    [rpDeviceAdvertiser2 activate];
  }

  rpMessageHandler = [(MSDDemoPeerResponder *)selfCopy rpMessageHandler];
  v9 = rpMessageHandler == 0;

  if (v9)
  {
    messageHandlerTable = [(MSDDemoPeerResponder *)selfCopy messageHandlerTable];
    allKeys = [messageHandlerTable allKeys];

    v12 = [[MSDRapportMessageHandler alloc] initWithObserver:selfCopy];
    [(MSDDemoPeerResponder *)selfCopy setRpMessageHandler:v12];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = allKeys;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v14)
    {
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v19 + 1) + 8 * v16);
          rpMessageHandler2 = [(MSDDemoPeerResponder *)selfCopy rpMessageHandler];
          [rpMessageHandler2 listenForIncomingRequestMessageOfID:v17];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v14);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)stop
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerResponder: Stopping responder...", v7, 2u);
  }

  rpDeviceAdvertiser = [(MSDDemoPeerResponder *)selfCopy rpDeviceAdvertiser];

  if (rpDeviceAdvertiser)
  {
    rpDeviceAdvertiser2 = [(MSDDemoPeerResponder *)selfCopy rpDeviceAdvertiser];
    [rpDeviceAdvertiser2 deactivate];

    [(MSDDemoPeerResponder *)selfCopy setRpDeviceAdvertiser:0];
  }

  rpMessageHandler = [(MSDDemoPeerResponder *)selfCopy rpMessageHandler];

  if (rpMessageHandler)
  {
    [(MSDDemoPeerResponder *)selfCopy setRpMessageHandler:0];
  }

  objc_sync_exit(selfCopy);
}

- (id)_constructMessageHandlerTable
{
  v35[0] = @"com.apple.MobileStoreDemo.SubscribeDeviceInfo";
  v34 = NSStringFromSelector("_handleSubscribeDeviceInfoRequestMessage:");
  v36[0] = v34;
  v35[1] = @"com.apple.MobileStoreDemo.FetchDeviceInfo";
  v33 = NSStringFromSelector("_handleFetchDeviceInfoRequestMessage:");
  v36[1] = v33;
  v35[2] = @"com.apple.MobileStoreDemo.InitiateAirPlayAssisted";
  v32 = NSStringFromSelector("_handleInitiateAirPlayAssistedRequestMessage:");
  v36[2] = v32;
  v35[3] = @"com.apple.MobileStoreDemo.TriggerSnapshotRevert";
  v31 = NSStringFromSelector("_handleTriggerSnapshotRevertRequestMessage:");
  v36[3] = v31;
  v35[4] = @"com.apple.MobileStoreDemo.InvokeInputRecovery";
  v30 = NSStringFromSelector("_handleInvokeInputRecoveryRequestMessage:");
  v36[4] = v30;
  v35[5] = @"com.apple.MobileStoreDemo.AdjustVolume";
  v29 = NSStringFromSelector("_handleAdjustVolumeRequestMessage:");
  v36[5] = v29;
  v35[6] = @"com.apple.MobileStoreDemo.ListApps";
  v28 = NSStringFromSelector("_handleListAppsRequestMessage:");
  v36[6] = v28;
  v35[7] = @"com.apple.MobileStoreDemo.LaunchApp";
  v27 = NSStringFromSelector("_handleLaunchAppRequestMessage:");
  v36[7] = v27;
  v35[8] = @"com.apple.MobileStoreDemo.TerminateApp";
  v26 = NSStringFromSelector("_handleTerminateAppRequestMessage:");
  v36[8] = v26;
  v35[9] = @"com.apple.MobileStoreDemo.GetIconImagesOfVisibleApps";
  v25 = NSStringFromSelector("_handleGetIconImagesOfVisibleAppsRequestMessage:");
  v36[9] = v25;
  v35[10] = @"com.apple.MobileStoreDemo.ListAvailableEnvironments";
  v24 = NSStringFromSelector("_handleListAvailableEnvironmentsRequestMessage:");
  v36[10] = v24;
  v35[11] = @"com.apple.MobileStoreDemo.SetActiveEnvironment";
  v23 = NSStringFromSelector("_handleSetActiveEnvironmentRequestMessage:");
  v36[11] = v23;
  v35[12] = @"com.apple.MobileStoreDemo.SetImmersionLevel";
  v22 = NSStringFromSelector("_handleSetImmersionLevelRequestMessage:");
  v36[12] = v22;
  v35[13] = @"com.apple.MobileStoreDemo.ResetToPassThrough";
  v21 = NSStringFromSelector("_handleResetToPassThroughRequestMessage:");
  v36[13] = v21;
  v35[14] = @"com.apple.MobileStoreDemo.EnumerateScripts";
  v20 = NSStringFromSelector("_handleEnumerateScriptsRequestMessage:");
  v36[14] = v20;
  v35[15] = @"com.apple.MobileStoreDemo.LaunchScript";
  v19 = NSStringFromSelector("_handleLaunchScriptRequestMessage:");
  v36[15] = v19;
  v35[16] = @"com.apple.MobileStoreDemo.ObtainGKResults";
  v18 = NSStringFromSelector("_handleObtainGKResultsRequestMessage:");
  v36[16] = v18;
  v35[17] = @"com.apple.MobileStoreDemo.ObtainGKMetrics";
  v17 = NSStringFromSelector("_handleObtainGKMetricsRequestMessage:");
  v36[17] = v17;
  v35[18] = @"com.apple.MobileStoreDemo.LoadLSMeasurements";
  v16 = NSStringFromSelector("_handleLoadLSMeasurementsRequestMessage:");
  v36[18] = v16;
  v35[19] = @"com.apple.MobileStoreDemo.RetrieveHSCoachingSuggestion";
  v15 = NSStringFromSelector("_handleRetrieveHSCoachingSuggestionRequestMessage:");
  v36[19] = v15;
  v35[20] = @"com.apple.MobileStoreDemo.ReadIPDStatus";
  v14 = NSStringFromSelector("_handleReadIPDStatusRequestMessage:");
  v36[20] = v14;
  v35[21] = @"com.apple.MobileStoreDemo.SkipAutoIPDAdjustment";
  v2 = NSStringFromSelector("_handleSkipAutoIPDAdjustmentRequestMessage:");
  v36[21] = v2;
  v35[22] = @"com.apple.MobileStoreDemo.InitiateIPDReset";
  v3 = NSStringFromSelector("_handleInitiateIPDResetRequestMessage:");
  v36[22] = v3;
  v35[23] = @"com.apple.MobileStoreDemo.QueryIPDResetStage";
  v4 = NSStringFromSelector("_handleQueryIPDResetStageRequestMessage:");
  v36[23] = v4;
  v35[24] = @"com.apple.MobileStoreDemo.GetAXSettings";
  v5 = NSStringFromSelector("_handleGetAXSettingsRequestMessage:");
  v36[24] = v5;
  v35[25] = @"com.apple.MobileStoreDemo.SetAXSettings";
  v6 = NSStringFromSelector("_handleSetAXSettingsRequestMessage:");
  v36[25] = v6;
  v35[26] = @"com.apple.MobileStoreDemo.WipeCustomerAssets";
  v7 = NSStringFromSelector("_handleWipeCustomerAssetsRequestMessage:");
  v36[26] = v7;
  v35[27] = @"com.apple.MobileStoreDemo.ChangeWiFiSettings";
  v8 = NSStringFromSelector("_handleChangeWiFiSettingsRequestMessage:");
  v36[27] = v8;
  v35[28] = @"com.apple.MobileStoreDemo.SetLanguageAndRegion";
  v9 = NSStringFromSelector("_handleSetLanguageAndRegion:");
  v36[28] = v9;
  v35[29] = @"com.apple.MobileStoreDemo.EnableMuseBuddyReset";
  v10 = NSStringFromSelector("_handleEnableMuseBuddyReset:");
  v36[29] = v10;
  v35[30] = @"com.apple.MobileStoreDemo.GetEnableMuseBuddyResetValue";
  v11 = NSStringFromSelector("_handleGetEnableMuseBuddyResetValue:");
  v36[30] = v11;
  v13 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:31];

  return v13;
}

- (void)_uploadPairingPassword
{
  v6 = objc_alloc_init(MSDKVStoreRequest);
  [(MSDKVStoreRequest *)v6 setIsPost:1];
  devicePublicID = [(MSDDemoPeerResponder *)self devicePublicID];
  [(MSDKVStoreRequest *)v6 setKey:devicePublicID];

  pairingPassword = [(MSDDemoPeerResponder *)self pairingPassword];
  [(MSDKVStoreRequest *)v6 setValue:pairingPassword];

  [(MSDServerRequest *)v6 setCompletion:&stru_10016C4F8];
  v5 = +[MSDServerRequestHandler sharedInstance];
  [v5 handleRequestAsync:v6];
}

- (id)_getDeviceAddresses
{
  v2 = +[MSDIpInterface getIpv4Interfaces];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:{@"address", v13}];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E9F04();
    }

    v11 = [NSArray arrayWithArray:v3];
  }

  else
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9F88();
    }

    v11 = 0;
  }

  return v11;
}

- (id)_prepareDeviceInfoDictionaryForRequest:(id)request
{
  requestCopy = request;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = +[MSDTargetDevice sharedInstance];
  v6 = +[MSDAudioController sharedInstance];
  v7 = +[MSDWiFiHelper sharedInstance];
  v8 = +[MSDAccountManager sharedInstance];
  v45 = +[MSDAirPlayAssistedSender sharedInstance];
  extractProtocolVersion = [requestCopy extractProtocolVersion];

  name = [v5 name];
  v41 = name;
  if (name)
  {
    [v4 setObject:name forKeyedSubscript:kMSDKPeerDemoDevicePropertyDeviceName];
  }

  else
  {
    v10 = +[NSNull null];
    [v4 setObject:v10 forKeyedSubscript:kMSDKPeerDemoDevicePropertyDeviceName];
  }

  productType = [v5 productType];
  v40 = productType;
  if (productType)
  {
    [v4 setObject:productType forKeyedSubscript:kMSDKPeerDemoDevicePropertyProductType];
  }

  else
  {
    v12 = +[NSNull null];
    [v4 setObject:v12 forKeyedSubscript:kMSDKPeerDemoDevicePropertyProductType];
  }

  serialNumber = [v5 serialNumber];
  if (serialNumber)
  {
    [v4 setObject:serialNumber forKeyedSubscript:kMSDKPeerDemoDevicePropertySerialNumber];
  }

  else
  {
    v14 = +[NSNull null];
    [v4 setObject:v14 forKeyedSubscript:kMSDKPeerDemoDevicePropertySerialNumber];
  }

  oSVersion = [v5 OSVersion];
  if (oSVersion)
  {
    [v4 setObject:oSVersion forKeyedSubscript:kMSDKPeerDemoDevicePropertyOSVersion];
  }

  else
  {
    v16 = +[NSNull null];
    [v4 setObject:v16 forKeyedSubscript:kMSDKPeerDemoDevicePropertyOSVersion];
  }

  v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 batteryCapacity]);
  [v4 setObject:v17 forKeyedSubscript:kMSDKPeerDemoDevicePropertyBatteryCapacity];

  getCurrentWiFiSsid = [v7 getCurrentWiFiSsid];
  if (getCurrentWiFiSsid)
  {
    [v4 setObject:getCurrentWiFiSsid forKeyedSubscript:kMSDKPeerDemoDevicePropertyWiFiNetworkName];
  }

  else
  {
    v19 = +[NSNull null];
    [v4 setObject:v19 forKeyedSubscript:kMSDKPeerDemoDevicePropertyWiFiNetworkName];
  }

  v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 getCurrentWiFiSignalStrength]);
  [v4 setObject:v20 forKeyedSubscript:kMSDKPeerDemoDevicePropertyWiFiSignalStrength];

  v42 = v8;
  existingAccounts = [v8 existingAccounts];
  v22 = [existingAccounts objectForKeyedSubscript:@"iCloud"];

  if (v22)
  {
    [v4 setObject:v22 forKeyedSubscript:kMSDKPeerDemoDevicePropertyiCloudAccountName];
  }

  else
  {
    v23 = +[NSNull null];
    [v4 setObject:v23 forKeyedSubscript:kMSDKPeerDemoDevicePropertyiCloudAccountName];
  }

  v43 = v7;
  [v6 getVolumeForCategory:0];
  v24 = [NSNumber numberWithFloat:?];
  [v4 setObject:v24 forKeyedSubscript:kMSDKPeerDemoDevicePropertyMainVolume];

  [v6 getVolumeForCategory:1];
  v25 = [NSNumber numberWithFloat:?];
  [v4 setObject:v25 forKeyedSubscript:kMSDKPeerDemoDevicePropertyEnvironmentVolume];

  [v6 getVolumeForCategory:2];
  v26 = [NSNumber numberWithFloat:?];
  [v4 setObject:v26 forKeyedSubscript:kMSDKPeerDemoDevicePropertyPhoneCallVolume];

  [v6 getVolumeForCategory:3];
  v27 = [NSNumber numberWithFloat:?];
  [v4 setObject:v27 forKeyedSubscript:kMSDKPeerDemoDevicePropertyAudioVideoVolume];

  v28 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isContentFrozen]);
  [v4 setObject:v28 forKeyedSubscript:kMSDKPeerDemoDevicePropertyContentFrozen];

  v29 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v45 isSenderReady]);
  [v4 setObject:v29 forKeyedSubscript:kMSDKPeerDemoDevicePropertyAirPlayAssistedReady];

  v30 = [NSNumber numberWithBool:[(MSDDemoPeerResponder *)self _queryThermalMitigationStatus]];
  [v4 setObject:v30 forKeyedSubscript:kMSDKPeerDemoDevicePropertyThermalMitigationNeeded];

  if (extractProtocolVersion >= 2)
  {
    _getDeviceAddresses = [(MSDDemoPeerResponder *)self _getDeviceAddresses];
    if (_getDeviceAddresses)
    {
      [v4 setObject:_getDeviceAddresses forKeyedSubscript:kMSDKPeerDemoDevicePropertyIpAddresses];
    }

    else
    {
      v32 = +[NSNull null];
      [v4 setObject:v32 forKeyedSubscript:kMSDKPeerDemoDevicePropertyIpAddresses];
    }

    v33 = [NSNumber numberWithBool:BYSetupAssistantNeedsToRun()];
    [v4 setObject:v33 forKeyedSubscript:kMSDKPeerDemoDevicePropertyBuddyInProgress];

    if (extractProtocolVersion != 2)
    {
      v34 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 batteryCharging]);
      [v4 setObject:v34 forKeyedSubscript:kMSDKPeerDemoDevicePropertyBatteryCharging];

      v35 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 externalPowerSourceConnected]);
      [v4 setObject:v35 forKeyedSubscript:kMSDKPeerDemoDevicePropertyExternalPowerSourceConnected];
    }
  }

  v36 = sub_100063A54();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    sub_1000EA008();
  }

  v37 = [NSDictionary dictionaryWithDictionary:v4];

  return v37;
}

- (id)_handleSubscribeDeviceInfoRequestMessage:(id)message
{
  messageCopy = message;
  v5 = [NSMutableDictionary dictionaryWithCapacity:0];
  v6 = [MSDRapportDevice alloc];
  options = [messageCopy options];
  v8 = [(MSDRapportDevice *)v6 initWithIncomingOptions:options];

  subscribers = [(MSDDemoPeerResponder *)self subscribers];
  v10 = [subscribers containsObject:v8];

  if ((v10 & 1) == 0)
  {
    subscribers2 = [(MSDDemoPeerResponder *)self subscribers];
    [subscribers2 addObject:v8];
  }

  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Result"];
  v12 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];
  v14 = [(MSDRapportMessage *)v12 initWithIdentifier:identifier andPayload:v5 usingOptions:0];

  return v14;
}

- (id)_handleFetchDeviceInfoRequestMessage:(id)message
{
  messageCopy = message;
  v5 = [NSMutableDictionary dictionaryWithCapacity:0];
  v6 = [(MSDDemoPeerResponder *)self _prepareDeviceInfoDictionaryForRequest:messageCopy];
  [v5 setObject:v6 forKeyedSubscript:@"DeviceInfo"];

  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Result"];
  v7 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v9 = [(MSDRapportMessage *)v7 initWithIdentifier:identifier andPayload:v5 usingOptions:0];

  return v9;
}

- (id)_handleInitiateAirPlayAssistedRequestMessage:(id)message
{
  messageCopy = message;
  v4 = +[MSDAirPlayAssistedSender sharedInstance];
  payload = [messageCopy payload];
  v6 = [payload objectForKeyedSubscript:@"APParameters"];

  payload2 = [messageCopy payload];
  v8 = [payload2 objectForKeyedSubscript:@"APDiscoveryMode"];

  v9 = [NSMutableDictionary dictionaryWithCapacity:0];
  v10 = [v4 activateSenderUsingParametersData:v6 discoveryMode:{objc_msgSend(v8, "unsignedIntegerValue")}];
  v11 = @"Result";
  if (v10)
  {
    v12 = &__kCFBooleanTrue;
  }

  else
  {
    [v9 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
    v11 = @"Reason";
    v12 = @"An error has occurred.";
  }

  [v9 setObject:v12 forKeyedSubscript:v11];
  v13 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];
  v15 = [(MSDRapportMessage *)v13 initWithIdentifier:identifier andPayload:v9 usingOptions:0];

  return v15;
}

- (id)_handleTriggerSnapshotRevertRequestMessage:(id)message
{
  messageCopy = message;
  v4 = +[MSDTargetDevice sharedInstance];
  payload = [messageCopy payload];
  v6 = [payload objectForKeyedSubscript:@"RebootAfterRevert"];

  v7 = [NSMutableDictionary dictionaryWithCapacity:0];
  if ([v4 canRevertSnapshot])
  {
    v8 = dispatch_get_global_queue(0, 0);
    v9 = dispatch_time(0, 3000000000);
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1000B7FDC;
    v17 = &unk_10016A258;
    v18 = v4;
    v19 = v6;
    dispatch_after(v9, v8, &v14);
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:{@"Result", v14, v15, v16, v17}];
  }

  else
  {
    [v7 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
    [v7 setObject:@"An error has occurred." forKeyedSubscript:@"Reason"];
  }

  v10 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];
  v12 = [(MSDRapportMessage *)v10 initWithIdentifier:identifier andPayload:v7 usingOptions:0];

  return v12;
}

- (id)_handleInvokeInputRecoveryRequestMessage:(id)message
{
  messageCopy = message;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA07C();
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v4 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v6 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v8 = [(MSDRapportMessage *)v6 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v8;
}

- (id)_handleAdjustVolumeRequestMessage:(id)message
{
  messageCopy = message;
  v4 = +[MSDAudioController sharedInstance];
  payload = [messageCopy payload];
  v6 = [payload objectForKeyedSubscript:@"VolumeValue"];

  payload2 = [messageCopy payload];
  v8 = [payload2 objectForKeyedSubscript:@"VolumeCategory"];

  v9 = [NSMutableDictionary dictionaryWithCapacity:0];
  [v6 floatValue];
  v11 = v10;
  unsignedIntegerValue = [v8 unsignedIntegerValue];
  LODWORD(v13) = v11;
  v14 = [v4 setVolumeTo:unsignedIntegerValue forCategory:v13];
  v15 = @"Result";
  if (v14)
  {
    v16 = &__kCFBooleanTrue;
  }

  else
  {
    [v9 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
    v15 = @"Reason";
    v16 = @"An error has occurred.";
  }

  [v9 setObject:v16 forKeyedSubscript:v15];
  v17 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];
  v19 = [(MSDRapportMessage *)v17 initWithIdentifier:identifier andPayload:v9 usingOptions:0];

  return v19;
}

- (id)_handleListAppsRequestMessage:(id)message
{
  messageCopy = message;
  v37 = +[MSDAppHelper sharedInstance];
  v35 = messageCopy;
  payload = [messageCopy payload];
  v5 = [payload objectForKeyedSubscript:@"AppListKind"];

  v6 = [NSMutableDictionary dictionaryWithCapacity:0];
  v7 = [NSMutableArray arrayWithCapacity:0];
  unsignedIntegerValue = [v5 unsignedIntegerValue];
  v34 = v5;
  if (unsignedIntegerValue == 1)
  {
    visibleApps = [v37 runningApps:1];
  }

  else if (unsignedIntegerValue)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000EA0B0();
    }

    visibleApps = +[NSArray array];
  }

  else
  {
    visibleApps = [v37 visibleApps];
  }

  v11 = v7;
  v33 = v6;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = visibleApps;
  v13 = [v12 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v40;
    obj = v12;
    while (2)
    {
      v17 = 0;
      v18 = v15;
      do
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v39 + 1) + 8 * v17);
        v20 = [v37 bundleLocalizedNameForInstalledApp:{v19, v33, v34}];
        v21 = [[MSDKPeerDemoApp alloc] initWithIdentifier:v19 andLocalizedName:v20];
        v38 = v18;
        v22 = [NSKeyedArchiver archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v38];
        v15 = v38;

        if (!v22)
        {
          v23 = sub_100063A54();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_1000EA120(v19, v15, v23);
          }

          v12 = obj;
          v24 = v33;
          [v33 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
          localizedDescription = [v15 localizedDescription];
          v26 = localizedDescription;
          if (localizedDescription)
          {
            v27 = localizedDescription;
          }

          else
          {
            v27 = @"An error has occurred.";
          }

          [v33 setObject:v27 forKeyedSubscript:@"Reason"];
          v28 = v11;
          goto LABEL_25;
        }

        [v11 addObject:v22];

        v17 = v17 + 1;
        v18 = v15;
      }

      while (v14 != v17);
      v12 = obj;
      v14 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

  v24 = v33;
  [v33 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Result"];
  v28 = v11;
  v26 = [NSArray arrayWithArray:v11];
  [v33 setObject:v26 forKeyedSubscript:@"AppArchiveList"];
LABEL_25:

  v29 = [MSDRapportMessage alloc];
  identifier = [v35 identifier];
  v31 = [(MSDRapportMessage *)v29 initWithIdentifier:identifier andPayload:v24 usingOptions:0];

  return v31;
}

- (id)_handleLaunchAppRequestMessage:(id)message
{
  messageCopy = message;
  payload = [messageCopy payload];
  v5 = [payload objectForKeyedSubscript:@"AppIdentifier"];

  v6 = [NSMutableDictionary dictionaryWithCapacity:0];
  v16 = 0;
  v7 = [MSDAppLauncherTerminator launchApp:v5 withOptions:0 outError:&v16];
  v8 = v16;
  if (v7)
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Result"];
  }

  else
  {
    [v6 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
    localizedDescription = [v8 localizedDescription];
    v10 = localizedDescription;
    if (localizedDescription)
    {
      v11 = localizedDescription;
    }

    else
    {
      v11 = @"An error has occurred.";
    }

    [v6 setObject:v11 forKeyedSubscript:@"Reason"];
  }

  v12 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v14 = [(MSDRapportMessage *)v12 initWithIdentifier:identifier andPayload:v6 usingOptions:0];

  return v14;
}

- (id)_handleTerminateAppRequestMessage:(id)message
{
  messageCopy = message;
  payload = [messageCopy payload];
  v5 = [payload objectForKeyedSubscript:@"AppIdentifier"];

  v6 = [NSMutableDictionary dictionaryWithCapacity:0];
  v16 = 0;
  v7 = [MSDAppLauncherTerminator terminateApp:v5 outError:&v16];
  v8 = v16;
  if (v7)
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Result"];
  }

  else
  {
    [v6 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
    localizedDescription = [v8 localizedDescription];
    v10 = localizedDescription;
    if (localizedDescription)
    {
      v11 = localizedDescription;
    }

    else
    {
      v11 = @"An error has occurred.";
    }

    [v6 setObject:v11 forKeyedSubscript:@"Reason"];
  }

  v12 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v14 = [(MSDRapportMessage *)v12 initWithIdentifier:identifier andPayload:v6 usingOptions:0];

  return v14;
}

- (id)_handleGetIconImagesOfVisibleAppsRequestMessage:(id)message
{
  messageCopy = message;
  payload = [messageCopy payload];
  v5 = [payload objectForKeyedSubscript:@"AppIconWidth"];

  payload2 = [messageCopy payload];
  v7 = [payload2 objectForKeyedSubscript:@"AppIconHeight"];

  payload3 = [messageCopy payload];
  v9 = [payload3 objectForKeyedSubscript:@"AppIconScale"];

  [v5 floatValue];
  v11 = v10;
  [v7 floatValue];
  v13 = v12;
  v14 = sub_100063A54();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [v9 floatValue];
    *buf = 136315906;
    v34 = "[MSDDemoPeerResponder _handleGetIconImagesOfVisibleAppsRequestMessage:]";
    v35 = 2048;
    v36 = v11;
    v37 = 2048;
    v38 = v13;
    v39 = 2048;
    v40 = v31;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s - CGSize:  width: %f - height: %f - scale: %f", buf, 0x2Au);
  }

  [v9 floatValue];
  LODWORD(v16) = v15;
  v17 = [MSDAppIcon getIconImagesOfVisibleAppsWithSize:v11 andScale:v13, v16];
  v18 = sub_100063A54();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v17 count];
    *buf = 136315394;
    v34 = "[MSDDemoPeerResponder _handleGetIconImagesOfVisibleAppsRequestMessage:]";
    v35 = 2048;
    v36 = *&v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s - Found %lu icon images.", buf, 0x16u);
  }

  v20 = [NSMutableDictionary dictionaryWithCapacity:0];
  v32 = 0;
  v21 = [NSKeyedArchiver archivedDataWithRootObject:v17 requiringSecureCoding:1 error:&v32];
  v22 = v32;
  if (v22 || !v21)
  {
    [v20 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
    localizedDescription = [v22 localizedDescription];
    v25 = localizedDescription;
    if (localizedDescription)
    {
      v26 = localizedDescription;
    }

    else
    {
      v26 = @"An error has occurred.";
    }

    [v20 setObject:v26 forKeyedSubscript:@"Reason"];

    v23 = sub_100063A54();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000EA1CC();
    }
  }

  else
  {
    [v20 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Result"];
    [v20 setObject:v21 forKeyedSubscript:@"AppIconArchiveDict"];
    v23 = sub_100063A54();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v34 = "[MSDDemoPeerResponder _handleGetIconImagesOfVisibleAppsRequestMessage:]";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s - Successfully archive iconImageDict.", buf, 0xCu);
    }
  }

  v27 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];
  v29 = [(MSDRapportMessage *)v27 initWithIdentifier:identifier andPayload:v20 usingOptions:0];

  return v29;
}

- (id)_handleListAvailableEnvironmentsRequestMessage:(id)message
{
  messageCopy = message;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA24C();
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v4 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v6 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v8 = [(MSDRapportMessage *)v6 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v8;
}

- (id)_handleSetActiveEnvironmentRequestMessage:(id)message
{
  messageCopy = message;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA24C();
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v4 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v6 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v8 = [(MSDRapportMessage *)v6 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v8;
}

- (id)_handleSetImmersionLevelRequestMessage:(id)message
{
  messageCopy = message;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA24C();
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v4 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v6 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v8 = [(MSDRapportMessage *)v6 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v8;
}

- (id)_handleResetToPassThroughRequestMessage:(id)message
{
  messageCopy = message;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA24C();
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v4 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v6 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v8 = [(MSDRapportMessage *)v6 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v8;
}

- (id)_handleEnumerateScriptsRequestMessage:(id)message
{
  messageCopy = message;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA280();
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v4 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v6 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v8 = [(MSDRapportMessage *)v6 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v8;
}

- (id)_handleLaunchScriptRequestMessage:(id)message
{
  messageCopy = message;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA2B4();
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v4 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v6 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v8 = [(MSDRapportMessage *)v6 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v8;
}

- (id)_handleObtainGKResultsRequestMessage:(id)message
{
  messageCopy = message;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA2E8();
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v4 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v6 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v8 = [(MSDRapportMessage *)v6 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v8;
}

- (id)_handleObtainGKMetricsRequestMessage:(id)message
{
  messageCopy = message;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA31C();
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v4 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v6 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v8 = [(MSDRapportMessage *)v6 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v8;
}

- (id)_handleLoadLSMeasurementsRequestMessage:(id)message
{
  messageCopy = message;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA350();
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v4 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v6 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v8 = [(MSDRapportMessage *)v6 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v8;
}

- (id)_handleRetrieveHSCoachingSuggestionRequestMessage:(id)message
{
  messageCopy = message;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA384();
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v4 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v6 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v8 = [(MSDRapportMessage *)v6 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v8;
}

- (id)_handleReadIPDStatusRequestMessage:(id)message
{
  messageCopy = message;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA3B8();
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v4 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v6 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v8 = [(MSDRapportMessage *)v6 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v8;
}

- (id)_handleSkipAutoIPDAdjustmentRequestMessage:(id)message
{
  messageCopy = message;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA3EC();
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v4 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v6 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v8 = [(MSDRapportMessage *)v6 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v8;
}

- (id)_handleInitiateIPDResetRequestMessage:(id)message
{
  messageCopy = message;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA420();
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v4 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v6 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v8 = [(MSDRapportMessage *)v6 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v8;
}

- (id)_handleQueryIPDResetStageRequestMessage:(id)message
{
  messageCopy = message;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA454();
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v4 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v6 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v8 = [(MSDRapportMessage *)v6 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v8;
}

- (id)_handleGetAXSettingsRequestMessage:(id)message
{
  messageCopy = message;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA488();
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v4 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v6 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v8 = [(MSDRapportMessage *)v6 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v8;
}

- (id)_handleSetAXSettingsRequestMessage:(id)message
{
  messageCopy = message;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA4BC();
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v4 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v6 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v8 = [(MSDRapportMessage *)v6 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v8;
}

- (id)_handleWipeCustomerAssetsRequestMessage:(id)message
{
  messageCopy = message;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA4F0();
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v4 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v6 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];

  v8 = [(MSDRapportMessage *)v6 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v8;
}

- (id)_handleChangeWiFiSettingsRequestMessage:(id)message
{
  messageCopy = message;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = objc_opt_class();
  payload = [messageCopy payload];
  v7 = [payload objectForKeyedSubscript:@"WiFiSettingsArchive"];
  v22 = 0;
  v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:v5 fromData:v7 error:&v22];
  v9 = v22;

  if (!v8)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000EA524();
    }

    goto LABEL_10;
  }

  v10 = +[MSDWiFiHelper sharedInstance];
  ssid = [v8 ssid];
  password = [v8 password];
  if ([password length])
  {
    password2 = [v8 password];
  }

  else
  {
    password2 = 0;
  }

  if (([v10 configureWiFi:ssid password:password2]& 1) == 0)
  {
    v14 = [NSError errorDomainMSDWithCode:3727741072 message:@"Failed to configure WiFi."];

    v9 = v14;
LABEL_10:

    [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
    localizedDescription = [v9 localizedDescription];
    v16 = localizedDescription;
    if (localizedDescription)
    {
      v17 = localizedDescription;
    }

    else
    {
      v17 = @"An error has occurred.";
    }

    [v4 setObject:v17 forKeyedSubscript:@"Reason"];

    goto LABEL_14;
  }

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Result"];
LABEL_14:
  v18 = [MSDRapportMessage alloc];
  identifier = [messageCopy identifier];
  v20 = [(MSDRapportMessage *)v18 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v20;
}

- (id)_handleSetLanguageAndRegion:(id)region
{
  regionCopy = region;
  payload = [regionCopy payload];
  v5 = [payload objectForKeyedSubscript:@"LanguageCode"];

  payload2 = [regionCopy payload];
  v7 = [payload2 objectForKeyedSubscript:@"RegionCode"];

  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315650;
    *&v17[4] = "[MSDDemoPeerResponder _handleSetLanguageAndRegion:]";
    v18 = 2114;
    v19 = v5;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s - languageCode:  %{public}@ - regionCode:  %{public}@", v17, 0x20u);
  }

  v9 = [NSMutableDictionary dictionaryWithCapacity:0];
  v10 = +[MSDLanguageAndRegionHelper sharedInstance];
  v11 = [v10 setDeviceLanguage:v5 andRegion:v7 matchToSystemLanguage:1];

  if (v11 != 1 || (sub_1000EA594(v9, v17) & 1) != 0)
  {
    [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Result"];
    v12 = 0;
  }

  else
  {
    v12 = *v17;
  }

  v13 = [MSDRapportMessage alloc];
  identifier = [regionCopy identifier];
  v15 = [(MSDRapportMessage *)v13 initWithIdentifier:identifier andPayload:v9 usingOptions:0];

  return v15;
}

- (id)_handleEnableMuseBuddyReset:(id)reset
{
  resetCopy = reset;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA6EC();
  }

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v4 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v6 = [MSDRapportMessage alloc];
  identifier = [resetCopy identifier];

  v8 = [(MSDRapportMessage *)v6 initWithIdentifier:identifier andPayload:v4 usingOptions:0];

  return v8;
}

- (id)_handleGetEnableMuseBuddyResetValue:(id)value
{
  valueCopy = value;
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[MSDDemoPeerResponder _handleGetEnableMuseBuddyResetValue:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s - Entered.", &v11, 0xCu);
  }

  v5 = [NSMutableDictionary dictionaryWithCapacity:0];
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA720();
  }

  [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Result"];
  [v5 setObject:@"Operation not supported" forKeyedSubscript:@"Reason"];
  v7 = [MSDRapportMessage alloc];
  identifier = [valueCopy identifier];

  v9 = [(MSDRapportMessage *)v7 initWithIdentifier:identifier andPayload:v5 usingOptions:0];

  return v9;
}

- (void)advertiserDidUpdateLocalDevicePublicIDFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MSDDemoPeerResponder *)selfCopy setDevicePublicID:toCopy];
  pairingPassword = [(MSDDemoPeerResponder *)selfCopy pairingPassword];

  if (pairingPassword)
  {
    [(MSDDemoPeerResponder *)selfCopy _uploadPairingPassword];
  }

  objc_sync_exit(selfCopy);
}

- (void)advertiserDidShowPairingPassword:(id)password
{
  passwordCopy = password;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MSDDemoPeerResponder *)selfCopy setPairingPassword:passwordCopy];
  devicePublicID = [(MSDDemoPeerResponder *)selfCopy devicePublicID];

  if (devicePublicID)
  {
    [(MSDDemoPeerResponder *)selfCopy _uploadPairingPassword];
  }

  objc_sync_exit(selfCopy);
}

- (void)advertiserDidHidePairingPassword
{
  obj = self;
  objc_sync_enter(obj);
  [(MSDDemoPeerResponder *)obj setPairingPassword:0];
  objc_sync_exit(obj);
}

- (id)didReceiveRequestMessage:(id)message fromDevice:(id)device
{
  messageCopy = message;
  deviceCopy = device;
  identifier = [messageCopy identifier];
  messageHandlerTable = [(MSDDemoPeerResponder *)self messageHandlerTable];
  v10 = [messageHandlerTable objectForKey:identifier];
  v11 = NSSelectorFromString(v10);

  if (!v11)
  {
    v16 = sub_100063A54();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000EA7C4();
    }

    goto LABEL_12;
  }

  v12 = [(MSDDemoPeerResponder *)self methodForSelector:v11];
  v13 = sub_100063A54();
  v14 = v13;
  if (!v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000EA754();
    }

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543618;
    v19 = messageCopy;
    v20 = 2114;
    v21 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerResponder: Received request message: %{public}@ from device: %{public}@", &v18, 0x16u);
  }

  v15 = v12(self, v11, messageCopy);
LABEL_13:

  return v15;
}

- (void)didReceiveEventMessage:(id)message fromDevice:(id)device
{
  messageCopy = message;
  deviceCopy = device;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000EA834();
  }
}

@end