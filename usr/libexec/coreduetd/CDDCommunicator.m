@interface CDDCommunicator
- (BOOL)appsDifferBetween:(id)a3 and:(id)a4;
- (BOOL)isConversionRequiredForMessage:(id)a3 fromVersion:(unint64_t)a4 toVersion:(unint64_t)a5;
- (BOOL)isPluggedIn;
- (BOOL)itemsDifferIn:(id)a3 and:(id)a4;
- (BOOL)registerScheduledExchange:(id *)a3;
- (CDDCommunicator)initWithCDDinstance:(id)a3;
- (double)currentBatteryLevel;
- (id)convertMessage:(id)a3 fromVersion:(unint64_t)a4 toVersion:(unint64_t)a5;
- (id)currentFocalApplication;
- (id)currentFocalNonApps;
- (id)generateFocalNonAppFocalMutableSet;
- (id)generateNonAppFocalString;
- (id)getAckMessage;
- (id)getCurrrentSupportedVersions;
- (id)getDictionaryFromConfigurationPlist:(id)a3;
- (id)getScheduledForecasts;
- (id)getStringArrayFromConfigurationPlist:(id)a3;
- (id)getVersionsDictFromMaxVersion:(unint64_t)a3 minVersion:(unint64_t)a4;
- (id)handleMessageVersioning:(id)a3;
- (id)makeAckMessage;
- (id)makeForecastMessage:(id *)a3;
- (id)makeRemoteDeviceSyncMessage;
- (id)makeScheduledMessage:(id)a3 withForecasts:(BOOL)a4;
- (id)makeSystemComboMessage;
- (id)obtainForegroundApplication;
- (id)satisfyForecastDataRequest:(id)a3;
- (int)thermalPressureLevel;
- (unint64_t)currentCellQuality;
- (unint64_t)currentWiFiWiredQuality;
- (unint64_t)getOutgoingVersionForIncomingVersions:(id)a3;
- (void)checkDevices:(id)a3;
- (void)dealloc;
- (void)deregisterForSystemConditionChanges;
- (void)handleAppStateChanged;
- (void)handleNetworkChanged;
- (void)informCommunicationError;
- (void)receiveForecast:(id)a3 paramDict:(id)a4 device:(id)a5;
- (void)receiveSystemData:(id)a3 device:(id)a4;
- (void)registerForSystemConditionChanges;
- (void)requestRemoteDeviceSync;
- (void)setupCommControl;
- (void)syncStateWithActiveRemote;
- (void)triggerFocalAppExchange:(id)a3 inState:(int)a4 shouldSendMessage:(BOOL)a5;
- (void)triggerNonAppFocalExchange:(id)a3 byClient:(unint64_t)a4 shouldSendMessage:(BOOL)a5;
- (void)triggerSystemDataExchange:(BOOL)a3 wakeRemote:(BOOL)a4;
@end

@implementation CDDCommunicator

- (CDDCommunicator)initWithCDDinstance:(id)a3
{
  v5 = a3;
  v45.receiver = self;
  v45.super_class = CDDCommunicator;
  v6 = [(CDDCommunicator *)&v45 init];
  v7 = v6;
  if (!v6)
  {
    v32 = 0;
    goto LABEL_18;
  }

  objc_storeStrong(&v6->cdd, a3);
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_UTILITY, 0);

  v10 = dispatch_queue_create("com.apple.coreduetdCommDaemonQueue", v9);
  daemonQueue = v7->daemonQueue;
  v7->daemonQueue = v10;

  v12 = os_log_create("com.apple.coreduet", "communicator");
  log = v7->_log;
  v7->_log = v12;

  v14 = +[NSMutableArray array];
  scheduledForecastRequests = v7->scheduledForecastRequests;
  v7->scheduledForecastRequests = v14;

  v7->localMinSupportedVersionNumber = 1;
  *&v7->remoteVersionNumber = vdupq_n_s64(2uLL);
  localFocalApp = v7->localFocalApp;
  v7->localFocalApp = 0;

  v17 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.CoreDuet"];
  [v17 synchronize];
  v18 = +[_CDLogging instrumentationChannel];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_10002285C(v18);
  }

  v19 = objc_alloc_init(NSMutableDictionary);
  localNonAppsInFocus = v7->localNonAppsInFocus;
  v7->localNonAppsInFocus = v19;

  lastSystemExchange = v7->lastSystemExchange;
  v7->lastSystemExchange = 0;

  v22 = objc_alloc_init(NSMutableSet);
  lastSentFocalNonFocalState = v7->lastSentFocalNonFocalState;
  v7->lastSentFocalNonFocalState = v22;

  v7->shouldTriggerDelayedMessage = 1;
  registeredDevices = v7->registeredDevices;
  v7->registeredDevices = 0;

  v25 = +[NSMutableDictionary dictionary];
  systemData = v7->systemData;
  v7->systemData = v25;

  v27 = [(CDDCommunicator *)v7 getStringArrayFromConfigurationPlist:@"CDDCommFocalAppWhitelist"];
  focalAppWhitelist = v7->focalAppWhitelist;
  v7->focalAppWhitelist = v27;

  v29 = [(CDD *)v7->cdd config];
  if ([v29 commMinClientGranularity] <= 899)
  {

    goto LABEL_9;
  }

  v30 = [(CDD *)v7->cdd config];
  v31 = [v30 commSyncBoundarySeconds];

  if (v31 <= 3599)
  {
LABEL_9:
    v33 = [(CDD *)v7->cdd config];
    [v33 setCommMinClientGranularity:900];

    v34 = [(CDD *)v7->cdd config];
    [v34 setCommSyncBoundarySeconds:86400];

    v35 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "CDDCommunicator: sanitized configuration inputs.", buf, 2u);
    }
  }

  v36 = [[CDDCommControl alloc] initWithCommInstance:v7];
  control = v7->control;
  v7->control = v36;

  if (v7->control)
  {
    v38 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = v7->control;
      *buf = 134217984;
      v47 = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "CDDCommunicator: control setup %p.", buf, 0xCu);
    }

    v40 = [(CDDCommunicator *)v7 getStringArrayFromConfigurationPlist:@"CDDCommExclusiveApps"];
    exclusiveApps = v7->exclusiveApps;
    v7->exclusiveApps = v40;

    v42 = [(CDDCommunicator *)v7 getStringArrayFromConfigurationPlist:@"CDDCommNonTrafficBundleID"];
    nonTrafficBundleID = v7->nonTrafficBundleID;
    v7->nonTrafficBundleID = v42;

    v32 = v7;
  }

  else
  {
    v32 = 0;
  }

LABEL_18:
  return v32;
}

- (void)setupCommControl
{
  [(CDDCommControl *)self->control setupIDSLink];
  daemonQueue = self->daemonQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100011B80;
  v8[3] = &unk_10003CA78;
  v8[4] = self;
  v4 = v8;
  v5 = daemonQueue;
  v6 = os_transaction_create();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017E3C;
  block[3] = &unk_10003CAA0;
  v10 = v6;
  v11 = v4;
  v7 = v6;
  dispatch_async(v5, block);
}

- (void)registerForSystemConditionChanges
{
  v3 = +[_CDClientContext userContext];
  context = self->_context;
  self->_context = v3;

  v5 = +[_CDContextQueries keyPathForPluginStatus];
  v29 = [_CDContextualPredicate predicateForChangeAtKeyPath:v5];

  v6 = +[_CDContextQueries keyPathForBatteryLevel];
  v28 = [_CDContextualPredicate predicateForChangeAtKeyPath:v6];

  v7 = +[_CDContextQueries keyPathForThermalPressureLevel];
  v27 = [_CDContextualPredicate predicateForChangeAtKeyPath:v7];

  v8 = +[_CDContextQueries keyPathForForegroundApp];
  v36[0] = v8;
  v9 = +[_CDContextQueries keyPathForServicesAppearingForeground];
  v36[1] = v9;
  v10 = [NSArray arrayWithObjects:v36 count:2];
  v26 = [_CDContextualPredicate predicateForChangeAtKeyPaths:v10];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100012024;
  v34[3] = &unk_10003CD18;
  v34[4] = self;
  v11 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.cddcommunicator.pluginChanged" contextualPredicate:v29 clientIdentifier:@"com.apple.coreduetd.CDDCommunicator" callback:v34];
  pluggedInRegistration = self->_pluggedInRegistration;
  self->_pluggedInRegistration = v11;

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100012084;
  v33[3] = &unk_10003CD18;
  v33[4] = self;
  v13 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.cddcommunicator.batteryChanged" contextualPredicate:v28 clientIdentifier:@"com.apple.coreduetd.CDDCommunicator" callback:v33];
  batteryRegistration = self->_batteryRegistration;
  self->_batteryRegistration = v13;

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10001211C;
  v32[3] = &unk_10003CD18;
  v32[4] = self;
  v15 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.cddcommunicator.thermalChanged" contextualPredicate:v27 clientIdentifier:@"com.apple.coreduetd.CDDCommunicator" callback:v32];
  thermalRegistration = self->_thermalRegistration;
  self->_thermalRegistration = v15;

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10001217C;
  v31[3] = &unk_10003CD18;
  v31[4] = self;
  v17 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.cddcommunicator.appChanged" contextualPredicate:v26 clientIdentifier:@"com.apple.coreduetd.CDDCommunicator" callback:v31];
  applicationRegistration = self->_applicationRegistration;
  self->_applicationRegistration = v17;

  v19 = +[_CDContextQueries keyPathForWiredConnectionQuality];
  v35[0] = v19;
  v20 = +[_CDContextQueries keyPathForWiFiConnectionQuality];
  v35[1] = v20;
  v21 = +[_CDContextQueries keyPathForCellConnectionQuality];
  v35[2] = v21;
  v22 = [NSArray arrayWithObjects:v35 count:3];
  v23 = [_CDContextualPredicate predicateForChangeAtKeyPaths:v22];

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100012184;
  v30[3] = &unk_10003CD18;
  v30[4] = self;
  v24 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.cddcommunicator.nwchanged" contextualPredicate:v23 clientIdentifier:@"com.apple.coreduetd.CDDCommunicator" callback:v30];
  networkRegistration = self->_networkRegistration;
  self->_networkRegistration = v24;

  [(_CDLocalContext *)self->_context registerCallback:self->_networkRegistration];
  [(_CDLocalContext *)self->_context registerCallback:self->_pluggedInRegistration];
  [(_CDLocalContext *)self->_context registerCallback:self->_batteryRegistration];
  [(_CDLocalContext *)self->_context registerCallback:self->_thermalRegistration];
  [(_CDLocalContext *)self->_context registerCallback:self->_applicationRegistration];
}

- (void)deregisterForSystemConditionChanges
{
  [(_CDLocalContext *)self->_context deregisterCallback:self->_pluggedInRegistration];
  [(_CDLocalContext *)self->_context deregisterCallback:self->_batteryRegistration];
  [(_CDLocalContext *)self->_context deregisterCallback:self->_thermalRegistration];
  [(_CDLocalContext *)self->_context deregisterCallback:self->_applicationRegistration];
  context = self->_context;
  networkRegistration = self->_networkRegistration;

  [(_CDLocalContext *)context deregisterCallback:networkRegistration];
}

- (id)getDictionaryFromConfigurationPlist:(id)a3
{
  v3 = a3;
  v4 = +[CDDPaths CDDConfigurationBundlePath];
  v5 = [NSBundle bundleWithPath:v4];

  if (!v5)
  {
    v6 = +[CDDPaths CDDConfigurationBundlePathDefault];
    v5 = [NSBundle bundleWithPath:v6];

    v7 = +[_CDLogging communicatorChannel];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (!v5)
    {
      if (v8)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "no bundle found in path default", &v16, 2u);
      }

      v5 = 0;
      goto LABEL_16;
    }

    if (v8)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "loaded bundle in default path", &v16, 2u);
    }
  }

  v9 = [v5 objectForInfoDictionaryKey:v3];
  v7 = +[_CDLogging communicatorChannel];
  v10 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (!v9)
  {
    if (v10)
    {
      v14 = [v3 UTF8String];
      v16 = 136315138;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "no array of strings for key %s found in configuration plist", &v16, 0xCu);
    }

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  if (v10)
  {
    v11 = [v3 UTF8String];
    v16 = 136315138;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "found dict for key %s in configuration plist:", &v16, 0xCu);
  }

  v7 = +[_CDLogging communicatorChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = [v9 description];
    v13 = [v12 UTF8String];
    v16 = 136315138;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "found dict content in plist: %s", &v16, 0xCu);
  }

LABEL_17:

  return v9;
}

- (id)getStringArrayFromConfigurationPlist:(id)a3
{
  v3 = a3;
  v4 = +[CDDPaths CDDConfigurationBundlePath];
  v5 = [NSBundle bundleWithPath:v4];

  if (!v5)
  {
    v6 = +[CDDPaths CDDConfigurationBundlePathDefault];
    v5 = [NSBundle bundleWithPath:v6];

    v7 = +[_CDLogging communicatorChannel];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (!v5)
    {
      if (v8)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "no bundle found in path default", &v18, 2u);
      }

      v5 = 0;
      goto LABEL_16;
    }

    if (v8)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "loaded bundle in default path", &v18, 2u);
    }
  }

  v9 = [NSArray alloc];
  v10 = [v5 objectForInfoDictionaryKey:v3];
  v11 = [v9 initWithArray:v10];

  v7 = +[_CDLogging communicatorChannel];
  v12 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (!v11)
  {
    if (v12)
    {
      v16 = [v3 UTF8String];
      v18 = 136315138;
      v19 = v16;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "no array of strings for key %s found in configuration plist", &v18, 0xCu);
    }

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  if (v12)
  {
    v13 = [v3 UTF8String];
    v18 = 136315138;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "found array of strings for key %s in configuration plist:", &v18, 0xCu);
  }

  v7 = +[_CDLogging communicatorChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v14 = [v11 description];
    v15 = [v14 UTF8String];
    v18 = 136315138;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "found whitelisted array in plist: %s", &v18, 0xCu);
  }

LABEL_17:

  return v11;
}

- (void)dealloc
{
  [(NSMutableArray *)self->scheduledForecastRequests enumerateObjectsUsingBlock:&stru_10003CD58];
  v3.receiver = self;
  v3.super_class = CDDCommunicator;
  [(CDDCommunicator *)&v3 dealloc];
}

- (double)currentBatteryLevel
{
  context = self->_context;
  v3 = +[_CDContextQueries keyPathForBatteryLevel];
  v4 = [(_CDLocalContext *)context objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (BOOL)isPluggedIn
{
  context = self->_context;
  v3 = +[_CDContextQueries keyPathForPluginStatus];
  v4 = [(_CDLocalContext *)context objectForKeyedSubscript:v3];
  v5 = [v4 BOOLValue];

  return v5;
}

- (int)thermalPressureLevel
{
  context = self->_context;
  v3 = +[_CDContextQueries keyPathForThermalPressureLevel];
  v4 = [(_CDLocalContext *)context objectForKeyedSubscript:v3];
  v5 = [v4 intValue];

  return v5;
}

- (id)currentFocalApplication
{
  context = self->_context;
  v3 = +[_CDContextQueries keyPathForForegroundApp];
  v4 = [(_CDLocalContext *)context objectForKeyedSubscript:v3];

  return v4;
}

- (BOOL)itemsDifferIn:(id)a3 and:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    if ([v5 count])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            if (![v6 containsObject:{*(*(&v15 + 1) + 8 * i), v15}])
            {
              v13 = 0;
              goto LABEL_14;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v13 = 1;
LABEL_14:
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)appsDifferBetween:(id)a3 and:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if ((!v5 || v6) && (v5 || !v6))
  {
    v8 = [v5 isEqualToString:v6] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (id)currentFocalNonApps
{
  context = self->_context;
  v3 = +[_CDContextQueries keyPathForServicesAppearingForeground];
  v4 = [(_CDLocalContext *)context objectForKeyedSubscript:v3];

  return v4;
}

- (void)handleAppStateChanged
{
  v3 = [(CDDCommunicator *)self currentFocalApplication];
  v4 = [(CDDCommunicator *)self lastFocalApp];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    *v15 = v3;
    *&v15[8] = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Focal App: %@, Previous: %@", &v14, 0x16u);
  }

  v6 = [(CDDCommunicator *)self currentFocalNonApps];
  v7 = [(CDDCommunicator *)self lastFocalNonApps];
  v8 = [(CDDCommunicator *)self appsDifferBetween:v3 and:v4];
  if (v7)
  {
    v9 = [(CDDCommunicator *)self itemsDifferIn:v6 and:v7];
  }

  else
  {
    v9 = 1;
  }

  v10 = self->_log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109376;
    *v15 = v8;
    *&v15[4] = 1024;
    *&v15[6] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Apps Differ: %u, Non-Apps Differ: %u", &v14, 0xEu);
  }

  if (v9 & 1 | ((v8 & 1) == 0))
  {
    if (v8 & 1 | ((v9 & 1) == 0))
    {
      if (v3 && ([v3 isEqualToString:&stru_10003DC70] & 1) == 0)
      {
        v11 = self;
        v12 = v3;
        v13 = 0;
      }

      else
      {
        v11 = self;
        v12 = v4;
        v13 = 1;
      }

      [(CDDCommunicator *)v11 triggerExchangeForFocalApp:v12 inState:v13 withNonApps:v6 byClient:31];
    }

    else
    {
      [(CDDCommunicator *)self triggerNonAppFocalExchange:v6 byClient:31];
    }
  }

  else
  {
    [(CDDCommunicator *)self triggerFocalAppExchange:v4 inState:1];
    [(CDDCommunicator *)self triggerFocalAppExchange:v3 inState:0];
    [(CDDCommunicator *)self setLastFocalApp:v3];
  }

  [(CDDCommunicator *)self setLastFocalApp:v3];
  [(CDDCommunicator *)self setLastFocalNonApps:v6];
}

- (unint64_t)currentWiFiWiredQuality
{
  context = self->_context;
  v4 = +[_CDContextQueries keyPathForWiredConnectionQuality];
  v5 = [(_CDLocalContext *)context objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

  v7 = self->_context;
  v8 = +[_CDContextQueries keyPathForWiFiConnectionQuality];
  v9 = [(_CDLocalContext *)v7 objectForKeyedSubscript:v8];
  v10 = [v9 unsignedIntegerValue];

  if (v10 <= v6)
  {
    return v6;
  }

  else
  {
    return v10;
  }
}

- (unint64_t)currentCellQuality
{
  context = self->_context;
  v3 = +[_CDContextQueries keyPathForCellConnectionQuality];
  v4 = [(_CDLocalContext *)context objectForKeyedSubscript:v3];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (void)handleNetworkChanged
{
  v3 = [(CDDCommunicator *)self currentWiFiWiredQuality];
  v4 = v3;
  lastWiFiWiredQuality = self->_lastWiFiWiredQuality;
  v7 = lastWiFiWiredQuality < 0x32 || v3 < 0x32;
  v9 = lastWiFiWiredQuality > 0x31 || v3 > 0x31;
  v10 = v7 && v9;
  v11 = [(CDDCommunicator *)self currentCellQuality];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = log;
    v14 = [NSNumber numberWithUnsignedInteger:v4];
    v15 = [NSNumber numberWithUnsignedInteger:v11];
    v17 = 138412546;
    v18 = v14;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Network quality changed: %@ and %@", &v17, 0x16u);
  }

  v16 = self->_lastCellQuality < 0x32;
  self->_lastWiFiWiredQuality = v4;
  self->_lastCellQuality = v11;
  if ((v7 & (v10 | v16 ^ (v11 < 0x32))) == 1)
  {
    [(CDDCommunicator *)self triggerSystemDataExchange:1 wakeRemote:0];
  }
}

- (BOOL)registerScheduledExchange:(id *)a3
{
  v5 = +[_CDLogging communicatorChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CDDCommunicator: registering exchange.", buf, 2u);
  }

  var5 = a3->var2.var5;
  if (var5)
  {
    v7 = [(CDD *)self->cdd config];
    v8 = [v7 commMinClientGranularity];

    if (var5 < v8)
    {
      return 0;
    }
  }

  v9 = malloc_type_calloc(1uLL, 0x88uLL, 0x1FF6CDBFuLL);
  v10 = v9;
  *v9 = *&a3->var0;
  v11 = *&a3->var2.var6;
  v13 = *&a3->var2.var0;
  v12 = *&a3->var2.var2;
  v9[3] = *&a3->var2.var4;
  v9[4] = v11;
  v9[1] = v13;
  v9[2] = v12;
  v15 = *&a3->var2.var10;
  v14 = *&a3->var2.var12;
  v16 = *&a3->var2.var8;
  *(v9 + 16) = *&a3->var2.var14;
  v9[6] = v15;
  v9[7] = v14;
  v9[5] = v16;
  if (a3->var1)
  {
    free(v9);
    return 0;
  }

  v18 = self->scheduledForecastRequests;
  daemonQueue = self->daemonQueue;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100013278;
  v25[3] = &unk_10003CD80;
  v26 = v18;
  v27 = v10;
  v20 = v25;
  v21 = daemonQueue;
  v22 = v18;
  v23 = os_transaction_create();
  *buf = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_100017E3C;
  v31 = &unk_10003CAA0;
  v32 = v23;
  v33 = v20;
  v24 = v23;
  dispatch_async(v21, buf);

  return 1;
}

- (id)obtainForegroundApplication
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000134E0;
  v21 = sub_1000134F0;
  v22 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000134F8;
  v14 = &unk_10003CDA8;
  v2 = dispatch_semaphore_create(0);
  v15 = v2;
  v16 = &v17;
  v3 = objc_retainBlock(&v11);
  v4 = [FBSDisplayLayoutMonitor alloc];
  v5 = [v4 initWithDisplayType:0 handler:{v3, v11, v12, v13, v14}];
  v6 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v2, v6);
  [v5 invalidate];
  v7 = +[_CDLogging communicatorChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v18[5];
    *buf = 138412290;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Returning foreground app as %@ on start", buf, 0xCu);
  }

  v9 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v9;
}

- (void)syncStateWithActiveRemote
{
  v3 = [(CDDCommunicator *)self obtainForegroundApplication];
  if (v3)
  {
    v4 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "App %@ foreground on start", &v5, 0xCu);
    }

    [(CDDCommunicator *)self triggerFocalAppExchange:v3 inState:0];
  }

  [(CDDCommunicator *)self triggerSystemDataExchange:1 wakeRemote:1];
}

- (void)checkDevices:(id)a3
{
  v4 = a3;
  if (self->initialized)
  {
    v5 = +[NSMutableDictionary dictionary];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = [(CDDCommControl *)self->control identifierFromDeviceDescription:v11, v22];
          if (v12)
          {
            v13 = [v11 objectForKeyedSubscript:&off_10003F110];
            [v5 setObject:v13 forKeyedSubscript:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v8);
    }

    v14 = [v5 allKeys];
    v15 = [NSSet setWithArray:v14];

    v16 = [(NSDictionary *)self->registeredDevices allKeys];
    v17 = [NSSet setWithArray:v16];

    hasRemote = self->hasRemote;
    if (([v17 isEqualToSet:v15] & 1) == 0)
    {
      objc_storeStrong(&self->registeredDevices, v5);
      if ([(NSDictionary *)self->registeredDevices count])
      {
        self->hasRemote = 1;
        if (!hasRemote)
        {
          [(CDDCommunicator *)self registerForSystemConditionChanges];
        }

        [(CDDCommunicator *)self informCommunicationError];
        v19 = +[_CDLogging communicatorChannel];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [(CDDCommunicator *)self remoteVersionNumber];
          v21 = [(CDDCommunicator *)self localMaxSupportedVersionNumber];
          *buf = 134218240;
          v27 = v20;
          v28 = 2048;
          v29 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "CDDCommunicator: Resetting outgoing version number from %llu to %llu.", buf, 0x16u);
        }

        [(CDDCommunicator *)self setRemoteVersionNumber:[(CDDCommunicator *)self localMaxSupportedVersionNumber]];
      }

      else
      {
        self->hasRemote = 0;
        if (hasRemote)
        {
          [(CDDCommunicator *)self deregisterForSystemConditionChanges];
        }
      }

      notify_post("com.apple.coreduetd.remoteDeviceChange");
    }
  }

  else
  {
    v5 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not initialized at checkDevices", buf, 2u);
    }
  }
}

- (id)convertMessage:(id)a3 fromVersion:(unint64_t)a4 toVersion:(unint64_t)a5
{
  v7 = [a3 mutableCopy];
  v8 = [v7 objectForKeyedSubscript:&off_10003F110];
  if (a4 == 1 && a5 == 2)
  {
    v9 = +[CDDCommunicatorHelper sharedInstance];
    v10 = [v8 objectForKeyedSubscript:&off_10003F128];
    v11 = [v9 getNewThermalValueForOldValue:v10];
LABEL_7:
    v12 = v11;
    [v8 setObject:v11 forKeyedSubscript:&off_10003F128];

    goto LABEL_8;
  }

  if (a4 == 2 && a5 == 1)
  {
    v9 = +[CDDCommunicatorHelper sharedInstance];
    v10 = [v8 objectForKeyedSubscript:&off_10003F128];
    v11 = [v9 getOldThermalValueForNewValue:v10];
    goto LABEL_7;
  }

LABEL_8:
  [v7 setObject:v8 forKeyedSubscript:&off_10003F110];

  return v7;
}

- (id)getVersionsDictFromMaxVersion:(unint64_t)a3 minVersion:(unint64_t)a4
{
  v9[0] = @"MaxVersion";
  v5 = [NSNumber numberWithUnsignedLongLong:a3];
  v9[1] = @"MinVersion";
  v10[0] = v5;
  v6 = [NSNumber numberWithUnsignedLongLong:a4];
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (id)getCurrrentSupportedVersions
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014414;
  block[3] = &unk_10003CA78;
  block[4] = self;
  if (qword_1000445C8 != -1)
  {
    dispatch_once(&qword_1000445C8, block);
  }

  return qword_1000445C0;
}

- (unint64_t)getOutgoingVersionForIncomingVersions:(id)a3
{
  v4 = a3;
  v5 = [(CDDCommunicator *)self getCurrrentSupportedVersions];
  v6 = +[CDDCommunicatorHelper sharedInstance];
  v7 = [v6 highestCommonVersionFor:v5 and:v4];

  return v7;
}

- (id)getScheduledForecasts
{
  v3 = +[NSDate date];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000134E0;
  v15 = sub_1000134F0;
  v16 = +[NSMutableArray array];
  daemonQueue = self->daemonQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014620;
  block[3] = &unk_10003CE98;
  block[4] = self;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(daemonQueue, block);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (BOOL)isConversionRequiredForMessage:(id)a3 fromVersion:(unint64_t)a4 toVersion:(unint64_t)a5
{
  v7 = a3;
  v8 = v7;
  if (a4 != a5 && (a4 == 1 || a5 == 1))
  {
    v10 = [v7 objectForKeyedSubscript:&off_10003F140];
    v11 = [v10 intValue];

    if (v11 <= 7)
    {
      v9 = 0x83u >> v11;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (id)handleMessageVersioning:(id)a3
{
  v4 = a3;
  if (self->localMaxSupportedVersionNumber == self->remoteVersionNumber || ![CDDCommunicator isConversionRequiredForMessage:"isConversionRequiredForMessage:fromVersion:toVersion:" fromVersion:v4 toVersion:?])
  {
    v5 = v4;
  }

  else
  {
    v5 = [(CDDCommunicator *)self convertMessage:v4 fromVersion:self->localMaxSupportedVersionNumber toVersion:self->remoteVersionNumber];
  }

  v6 = v5;

  return v6;
}

- (id)makeSystemComboMessage
{
  v36 = +[NSDate date];
  [v36 timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = +[NSTimeZone systemTimeZone];
  v6 = [v5 secondsFromGMT];

  dispatch_assert_queue_V2(self->daemonQueue);
  [(CDDCommunicator *)self currentBatteryLevel];
  v8 = v7;
  v9 = [(CDDCommunicator *)self isPluggedIn];
  LOBYTE(v5) = v9;
  v10 = v9;
  v11 = [(CDDCommunicator *)self thermalPressureLevel];
  v12 = v11;
  v13 = [(CDD *)self->cdd privacyMonitor];
  v14 = [v13 updateAllowed];

  self->_lastBatteryPercentageSent = v8;
  self->_lastPluginStateSent = v5;
  self->_lastThermalLevelSent = v11;
  v15 = objc_alloc_init(NSMutableDictionary);
  v16 = [NSNumber numberWithLongLong:v4];
  [v15 setObject:v16 forKey:&off_10003F140];

  v17 = [NSNumber numberWithLongLong:v6];
  [v15 setObject:v17 forKey:&off_10003F158];

  v18 = [NSNumber numberWithDouble:v8];
  [v15 setObject:v18 forKey:&off_10003F110];

  v19 = [NSNumber numberWithDouble:100.0];
  [v15 setObject:v19 forKey:&off_10003F170];

  v20 = [NSNumber numberWithLongLong:v10];
  [v15 setObject:v20 forKey:&off_10003F188];

  v21 = [NSNumber numberWithLongLong:v12];
  [v15 setObject:v21 forKey:&off_10003F128];

  v22 = [NSNumber numberWithBool:v14];
  [v15 setObject:v22 forKey:&off_10003F1A0];

  self->_lastWiFiWiredQuality = [(CDDCommunicator *)self currentWiFiWiredQuality];
  self->_lastCellQuality = [(CDDCommunicator *)self currentCellQuality];
  v23 = [NSNumber numberWithUnsignedInteger:self->_lastWiFiWiredQuality];
  [v15 setObject:v23 forKey:&off_10003F1B8];

  v24 = [NSNumber numberWithUnsignedInteger:self->_lastCellQuality];
  [v15 setObject:v24 forKey:&off_10003F1D0];

  localFocalApp = self->localFocalApp;
  if (localFocalApp && sub_100014D48(self->focalAppWhitelist, localFocalApp))
  {
    [v15 setObject:self->localFocalApp forKey:&off_10003F1E8];
  }

  v26 = [(CDDCommunicator *)self generateNonAppFocalString];
  if (v26)
  {
    [v15 setObject:v26 forKey:&off_10003F200];
  }

  v27 = [(CDD *)self->cdd watchUpdate];
  [v27 addWatchfaceInfo:v15];

  v28 = +[_CDLogging communicatorChannel];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    sub_1000228CC(v15, v28);
  }

  systemData = self->systemData;
  v30 = [NSString stringWithFormat:@"%@", &off_10003F218];
  [(NSMutableDictionary *)systemData setObject:v15 forKey:v30];

  v38[0] = &off_10003F158;
  v37[0] = &off_10003F140;
  v37[1] = &off_10003F158;
  v31 = [NSNumber numberWithUnsignedLongLong:self->remoteVersionNumber];
  v38[1] = v31;
  v37[2] = &off_10003F188;
  v32 = [(CDDCommunicator *)self getCurrrentSupportedVersions];
  v37[3] = &off_10003F110;
  v38[2] = v32;
  v38[3] = v15;
  v33 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:4];

  v34 = [(CDDCommunicator *)self handleMessageVersioning:v33];

  return v34;
}

- (id)makeScheduledMessage:(id)a3 withForecasts:(BOOL)a4
{
  v4 = a4;
  v6 = +[NSMutableArray array];
  if (!v4)
  {
    goto LABEL_4;
  }

  v7 = [(CDDCommunicator *)self getScheduledForecasts];
  if (v7)
  {
    v8 = v7;
    [v6 addObjectsFromArray:v7];

LABEL_4:
    v9 = v6;
    goto LABEL_5;
  }

  v11 = +[_CDLogging communicatorChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "CDDCommunicator: null forecast data.", v12, 2u);
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (id)makeForecastMessage:(id *)a3
{
  var8 = a3->var8;
  v4 = 1;
  if ((var8 & 0x800) == 0)
  {
    v4 = 2;
  }

  if ((var8 & 0x400) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if (a3->var13)
  {
    v6 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "CDDCommunicator: invalid attribute format.", buf, 2u);
    }

    goto LABEL_10;
  }

  v11 = [(CDD *)self->cdd pmfOverHourOfDayWithParams:?];
  if (!v11)
  {
LABEL_10:
    v7 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CDDCommunicator: failed to generate forecast.", buf, 2u);
    }

    v8 = 0;
    goto LABEL_40;
  }

  v7 = v11;
  if (a3->var14)
  {
    p_var2 = a3;
    if (v5)
    {
      if (v5 == 2)
      {
        p_var2 = &a3->var2;
      }

      else
      {
        p_var2 = &a3->var1;
      }
    }
  }

  else
  {
    p_var2 = 0;
  }

  v13 = sub_100013AA4(v11, v5, 0, p_var2);
  v14 = v13;
  if (v13)
  {
    v39 = v13;
    v43[0] = &off_10003F140;
    v38 = [NSNumber numberWithUnsignedLongLong:a3->var8];
    *buf = v38;
    v43[1] = &off_10003F158;
    v37 = [NSNumber numberWithUnsignedLongLong:a3->var9];
    v45 = v37;
    v43[2] = &off_10003F110;
    v15 = [NSNumber numberWithUnsignedLongLong:a3->var13];
    v46 = v15;
    v43[3] = &off_10003F170;
    v16 = [NSNumber numberWithUnsignedLongLong:a3->var3];
    v47 = v16;
    v43[4] = &off_10003F188;
    v17 = [NSNumber numberWithUnsignedLongLong:a3->var4];
    v48 = v17;
    v43[5] = &off_10003F128;
    v18 = [NSNumber numberWithUnsignedLongLong:a3->var5];
    v49 = v18;
    v43[6] = &off_10003F1A0;
    v19 = [NSNumber numberWithUnsignedLongLong:a3->var6];
    v50 = v19;
    v20 = [NSDictionary dictionaryWithObjects:buf forKeys:v43 count:7];
    v21 = [v20 mutableCopy];

    if (a3->var14)
    {
      v22 = a3->var8;
      v23 = 1;
      if ((v22 & 0x800) == 0)
      {
        v23 = 2;
      }

      if ((v22 & 0x400) != 0)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23;
      }

      if (v24 == 2)
      {
        v25 = [NSString stringWithUTF8String:a3->var2];
      }

      else
      {
        if (v24 == 1)
        {
          [NSNumber numberWithDouble:a3->var1];
        }

        else
        {
          [NSNumber numberWithUnsignedLongLong:a3->var0];
        }
        v25 = ;
      }

      v26 = v25;
      [v21 setObject:v25 forKey:&off_10003F1E8];
    }

    v14 = v39;
    if (!v21)
    {
      sub_100022964();
    }

    v27 = [(CDD *)self->cdd knowledgeStore];
    v28 = [_DKPredictor predictorWithKnowledgeStore:v27];

    v29 = [v28 localInBedPeriod];
    v30 = [v29 startDate];
    v42[0] = v30;
    v31 = [v29 endDate];
    v42[1] = v31;
    v32 = [NSArray arrayWithObjects:v42 count:2];

    v41[0] = &off_10003F170;
    v40[0] = &off_10003F140;
    v40[1] = &off_10003F158;
    v33 = [NSNumber numberWithUnsignedLongLong:self->remoteVersionNumber];
    v41[1] = v33;
    v40[2] = &off_10003F188;
    v34 = [(CDDCommunicator *)self getCurrrentSupportedVersions];
    v41[2] = v34;
    v41[3] = v39;
    v40[3] = &off_10003F110;
    v40[4] = &off_10003F128;
    v40[5] = &off_10003F170;
    v41[4] = v32;
    v41[5] = v21;
    v35 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:6];

    v8 = [(CDDCommunicator *)self handleMessageVersioning:v35];
  }

  else
  {
    v21 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "CDDCommunicator: failed to pack forecast.", buf, 2u);
    }

    v8 = 0;
  }

LABEL_40:

  return v8;
}

- (id)makeRemoteDeviceSyncMessage
{
  v9[0] = &off_10003F200;
  v8[0] = &off_10003F140;
  v8[1] = &off_10003F158;
  v3 = [NSNumber numberWithUnsignedLongLong:self->remoteVersionNumber];
  v9[1] = v3;
  v8[2] = &off_10003F188;
  v4 = [(CDDCommunicator *)self getCurrrentSupportedVersions];
  v9[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = [(CDDCommunicator *)self handleMessageVersioning:v5];

  return v6;
}

- (id)makeAckMessage
{
  v10[0] = &off_10003F1A0;
  v9[0] = &off_10003F140;
  v9[1] = &off_10003F158;
  v3 = [NSNumber numberWithUnsignedLongLong:self->remoteVersionNumber];
  v10[1] = v3;
  v9[2] = &off_10003F188;
  v4 = [(CDDCommunicator *)self getCurrrentSupportedVersions];
  v10[2] = v4;
  v9[3] = &off_10003F110;
  v5 = +[NSDate date];
  v10[3] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = [(CDDCommunicator *)self handleMessageVersioning:v6];

  return v7;
}

- (void)receiveForecast:(id)a3 paramDict:(id)a4 device:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->initialized && ![(CDD *)self->cdd classCLocked])
  {
    if (v8)
    {
      if (v9)
      {
        v11 = [(CDDCommControl *)self->control identifierFromDeviceDescription:v10];
        v12 = sub_1000158A4(v9);
        cdd = self->cdd;
        v23 = 0;
        v14 = [(CDD *)cdd saveForecast:v8 queryParameters:v12 deviceIdentifier:v11 error:&v23];
        v15 = v23;
        free(v12);
        v16 = +[_CDLogging communicatorChannel];
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
        if (v14)
        {
          if (v17)
          {
            v18 = [v8 description];
            v19 = [v18 UTF8String];
            v20 = [v9 description];
            v21 = [v20 UTF8String];
            *buf = 136315394;
            v25 = v19;
            v26 = 2080;
            v27 = v21;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "CDDCommunicator: forecasts saved. %s paramdict = %s ", buf, 0x16u);
          }
        }

        else if (v17)
        {
          *buf = 138412290;
          v25 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "CDDCommunicator: failed to save forecast with %@", buf, 0xCu);
        }

        goto LABEL_16;
      }

      v15 = +[_CDLogging communicatorChannel];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v22 = "CDDCommunicator: saveForecast: no param dictionary.";
        goto LABEL_12;
      }
    }

    else
    {
      v15 = +[_CDLogging communicatorChannel];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v22 = "CDDCommunicator: saveForecast: no forecast data.";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v22, buf, 2u);
      }
    }

LABEL_16:
  }
}

- (void)receiveSystemData:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->initialized)
  {
    v8 = [(CDDCommControl *)self->control identifierFromDeviceDescription:v7];
    v9 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 objectForKey:&off_10003F140];
      v11 = [v10 UTF8String];
      v12 = [v7 objectForKey:&off_10003F110];
      v13 = [v12 UTF8String];
      v14 = [v7 objectForKey:&off_10003F158];
      *buf = 136315650;
      v80 = v11;
      v81 = 2080;
      v82 = v13;
      v83 = 2080;
      v84 = [v14 UTF8String];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CDDCommunicator: received system data from %s (%s:%s):", buf, 0x20u);
    }

    v15 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_1000229BC(v6, v15);
    }

    if (v6)
    {
      v16 = [v6 objectForKey:&off_10003F140];
      v17 = [v6 objectForKey:&off_10003F158];
      v18 = v17;
      if (v16 && v17)
      {
        v60 = v7;
        v70 = v8;
        v19 = [v6 objectForKey:&off_10003F110];
        v20 = [v6 objectForKey:&off_10003F170];
        v21 = [v6 objectForKey:&off_10003F188];
        v69 = [v6 objectForKey:&off_10003F128];
        v67 = [v6 objectForKey:&off_10003F1A0];
        v22 = [v6 objectForKey:&off_10003F1E8];
        v23 = [v6 objectForKey:&off_10003F200];
        v66 = v16;
        v24 = [NSMutableString stringWithFormat:@"\nTimestamp         : %d", [v16 intValue]];
        v65 = v18;
        [v24 appendFormat:@"\nTimestampOffset   : %d sec", objc_msgSend(v18, "intValue")];
        v64 = v19;
        [v24 appendFormat:@"\nBatteryLevel      : %d%%", objc_msgSend(v19, "intValue")];
        v63 = v20;
        [v24 appendFormat:@"\nBatteryCapacity   : %d", objc_msgSend(v20, "intValue")];
        v62 = v21;
        v25 = [v21 BOOLValue];
        v26 = "NO";
        if (v25)
        {
          v26 = "YES";
        }

        [v24 appendFormat:@"\nCharging          : %s", v26];
        [v24 appendFormat:@"\nThermalLevel      : %d", objc_msgSend(v69, "intValue")];
        [v24 appendFormat:@"\nBgAppRefresh      : %d", objc_msgSend(v67, "intValue")];
        v61 = v22;
        [v24 appendFormat:@"\nFocalApp          : %s", objc_msgSend(v22, "UTF8String")];
        v27 = v23;
        v68 = v23;
        v28 = v24;
        [v24 appendFormat:@"\nFocalNonApp       : %s", objc_msgSend(v27, "UTF8String")];
        v29 = +[_CDLogging communicatorChannel];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v80 = v24;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        daemonQueue = self->daemonQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000162B0;
        block[3] = &unk_10003CEC0;
        block[4] = self;
        v76 = v6;
        v31 = v70;
        v77 = v31;
        dispatch_sync(daemonQueue, block);
        v32 = [(NSMutableDictionary *)self->systemData objectForKeyedSubscript:v31];
        v33 = [v32 objectForKeyedSubscript:&off_10003F110];
        context = self->_context;
        v35 = +[_CDContextQueries keyPathForDefaultPairedDeviceBatteryLevel];
        [(_CDLocalContext *)context setObject:v33 forKeyedSubscript:v35];

        v36 = [(NSMutableDictionary *)self->systemData objectForKeyedSubscript:v31];
        v37 = [v36 objectForKeyedSubscript:&off_10003F188];
        v38 = self->_context;
        v39 = +[_CDContextQueries keyPathForDefaultPairedDevicePluginStatus];
        [(_CDLocalContext *)v38 setObject:v37 forKeyedSubscript:v39];

        v40 = [(NSMutableDictionary *)self->systemData objectForKeyedSubscript:v31];
        v41 = [v40 objectForKeyedSubscript:&off_10003F128];
        v42 = self->_context;
        v43 = +[_CDContextQueries keyPathForDefaultPairedDeviceThermalPressureLevel];
        [(_CDLocalContext *)v42 setObject:v41 forKeyedSubscript:v43];

        v44 = [(NSMutableDictionary *)self->systemData objectForKeyedSubscript:v31];
        v45 = [v44 objectForKeyedSubscript:&off_10003F1E8];
        v46 = self->_context;
        v47 = +[_CDContextQueries keyPathForDefaultPairedDeviceForegroundApp];
        [(_CDLocalContext *)v46 setObject:v45 forKeyedSubscript:v47];

        v48 = [v68 componentsSeparatedByString:{@", "}];
        v49 = +[NSMutableArray array];
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v50 = v48;
        v51 = [v50 countByEnumeratingWithState:&v71 objects:v78 count:16];
        v7 = v60;
        if (v51)
        {
          v52 = v51;
          v53 = *v72;
          do
          {
            for (i = 0; i != v52; i = i + 1)
            {
              if (*v72 != v53)
              {
                objc_enumerationMutation(v50);
              }

              v55 = *(*(&v71 + 1) + 8 * i);
              if ([v55 length])
              {
                [v49 addObject:v55];
              }
            }

            v52 = [v50 countByEnumeratingWithState:&v71 objects:v78 count:16];
          }

          while (v52);
        }

        v56 = [v49 copy];
        v57 = self->_context;
        v58 = +[_CDContextQueries keyPathForDefaultPairedServicesAppearingForeground];
        [(_CDLocalContext *)v57 setObject:v56 forKeyedSubscript:v58];

        v8 = v70;
        v16 = v66;
      }

      else
      {
        v59 = +[_CDLogging communicatorChannel];
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "CDDCommunicator: missing timestamps for persisting system data.", buf, 2u);
        }
      }
    }

    else
    {
      v16 = +[_CDLogging communicatorChannel];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "CDDCommunicator: missing system data, cannot proceed.", buf, 2u);
      }
    }
  }
}

- (id)getAckMessage
{
  v2 = [(CDDCommunicator *)self makeAckMessage];
  if (!v2)
  {
    sub_100022A60();
  }

  v3 = v2;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:0];
  if (!v4)
  {
    sub_100022A34();
  }

  v5 = v4;

  return v5;
}

- (void)triggerFocalAppExchange:(id)a3 inState:(int)a4 shouldSendMessage:(BOOL)a5
{
  v8 = a3;
  v9 = [(CDD *)self->cdd config];
  if ([v9 commEnabled])
  {
    initialized = self->initialized;

    if (v8 && initialized)
    {
      daemonQueue = self->daemonQueue;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100016700;
      v16[3] = &unk_10003CF10;
      v18 = a4;
      v16[4] = self;
      v17 = v8;
      v19 = a5;
      v12 = v16;
      v13 = daemonQueue;
      v14 = os_transaction_create();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100017E3C;
      block[3] = &unk_10003CAA0;
      v21 = v14;
      v22 = v12;
      v15 = v14;
      dispatch_async(v13, block);
    }
  }

  else
  {
  }
}

- (id)generateNonAppFocalString
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000134E0;
  v10 = sub_1000134F0;
  v11 = 0;
  localNonAppsInFocus = self->localNonAppsInFocus;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000169D0;
  v5[3] = &unk_10003CF38;
  v5[4] = &v6;
  [(NSMutableDictionary *)localNonAppsInFocus enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)generateFocalNonAppFocalMutableSet
{
  v3 = objc_alloc_init(NSMutableSet);
  localNonAppsInFocus = self->localNonAppsInFocus;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100016B3C;
  v7[3] = &unk_10003CC88;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)localNonAppsInFocus enumerateKeysAndObjectsUsingBlock:v7];
  if (self->localFocalApp)
  {
    [v5 addObject:?];
  }

  return v5;
}

- (void)informCommunicationError
{
  daemonQueue = self->daemonQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100016C44;
  v7[3] = &unk_10003CA78;
  v7[4] = self;
  v3 = v7;
  v4 = daemonQueue;
  v5 = os_transaction_create();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017E3C;
  block[3] = &unk_10003CAA0;
  v9 = v5;
  v10 = v3;
  v6 = v5;
  dispatch_async(v4, block);
}

- (void)triggerNonAppFocalExchange:(id)a3 byClient:(unint64_t)a4 shouldSendMessage:(BOOL)a5
{
  v8 = a3;
  daemonQueue = self->daemonQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100017254;
  v15[3] = &unk_10003CF88;
  v16 = v8;
  v17 = a4;
  v15[4] = self;
  v18 = a5;
  v10 = v15;
  v11 = daemonQueue;
  v12 = v8;
  v13 = os_transaction_create();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017E3C;
  block[3] = &unk_10003CAA0;
  v20 = v13;
  v21 = v10;
  v14 = v13;
  dispatch_async(v11, block);
}

- (void)triggerSystemDataExchange:(BOOL)a3 wakeRemote:(BOOL)a4
{
  v13 = [(CDD *)self->cdd config];
  if ([v13 commEnabled])
  {
    initialized = self->initialized;

    if (initialized)
    {
      daemonQueue = self->daemonQueue;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000177A4;
      v14[3] = &unk_10003CFB0;
      v14[4] = self;
      v15 = a3;
      v16 = a4;
      v9 = v14;
      v10 = daemonQueue;
      v11 = os_transaction_create();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100017E3C;
      block[3] = &unk_10003CAA0;
      v18 = v11;
      v19 = v9;
      v12 = v11;
      dispatch_async(v10, block);
    }
  }

  else
  {
  }
}

- (void)requestRemoteDeviceSync
{
  daemonQueue = self->daemonQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017A4C;
  v7[3] = &unk_10003CA78;
  v7[4] = self;
  v3 = v7;
  v4 = daemonQueue;
  v5 = os_transaction_create();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017E3C;
  block[3] = &unk_10003CAA0;
  v9 = v5;
  v10 = v3;
  v6 = v5;
  dispatch_async(v4, block);
}

- (id)satisfyForecastDataRequest:(id)a3
{
  v4 = sub_1000158A4(a3);
  v5 = [(CDDCommunicator *)self makeForecastMessage:v4];
  if (v5)
  {
    v6 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    if (v6)
    {
      free(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end