@interface CLClientManagerAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)syncgetHasAuthorizedClients;
- (BOOL)syncgetIsMapsANonSystemLocationClient;
- (BOOL)syncgetSetLocationServicesEnabledStatically:(BOOL)statically withEventSource:(id)source;
- (CLClientManagerAdapter)init;
- (double)syncgetAndSetOrChangeAppClipAuthorizationTime:(double)time forClient:(id)client;
- (id)syncgetApplyArchivedAuthorizationDecisionsAndDie:(id)die unlessTokenMatches:(id)matches;
- (id)syncgetArchivedAuthorizationDecisions;
- (id)syncgetCopyClients;
- (id)syncgetLocationClientKeys;
- (id)syncgetNonSystemLocationClientKey;
- (id)syncgetNonSystemLocationClientKeys;
- (id)syncgetTemporaryAuthorizationStatusForClient:(id)client;
- (int)syncgetClientEffectiveRegistrationResultWithTransientAwareness:(id)awareness;
- (void)adaptee;
- (void)appLaunchedByAppLifecycleManager:(id)manager;
- (void)appsWithClientKeysAreInstalledOnAPairedDevice:(id)device;
- (void)attemptSpendOneForPushClient:(id)client withReply:(id)reply;
- (void)beginService;
- (void)calculateCheeseCoverage:(id)coverage interestInterval:(id)interval withOptions:(id)options lookbackWindowStartDate:(id)date withReply:(id)reply;
- (void)checkAppInstallationStatus;
- (void)checkWeakPersistentClientWithIdentifier:(id)identifier;
- (void)considerPromptingForIncidentalUseForCkp:(id)ckp;
- (void)considerPromptingForTranscriptSession:(id)session dictionary:(id)dictionary requestType:(int)type withReply:(id)reply;
- (void)deleteInterestZoneWithId:(id)id registeredForClientKey:(id)key withReply:(id)reply;
- (void)dingAllActiveTranscriptSubscriptions;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)endService;
- (void)fetchClientDictionaryForCkp:(id)ckp withReply:(id)reply;
- (void)fetchClientStaticRegistrationResult:(id)result withReply:(id)reply;
- (void)fetchLocationClientKeysWithReply:(id)reply;
- (void)getClientManagerInternalStateWithReply:(id)reply;
- (void)getIncidentalUseModeForClient:(id)client withReply:(id)reply;
- (void)getLearnedRoutesAccessForClient:(id)client withReply:(id)reply;
- (void)getVisitHistoryAccessAllowedTimeForClient:(id)client withReply:(id)reply;
- (void)getVisitHistoryAccessForClient:(id)client withReply:(id)reply;
- (void)handleLiveActivityUpdate:(id)update;
- (void)handleProvisionalIntermediationForService:(unint64_t)service forClientKey:(id)key at:(id)at withReply:(id)reply;
- (void)inUseAssertionInvalidatedDueToWatchConnectivityForClientKey:(id)key;
- (void)isAuthorizationUpgradeAvailableForClient:(id)client withReply:(id)reply;
- (void)learnedRoutesSupportedForClient:(id)client withReply:(id)reply;
- (void)markClientEmergencyEnablementTransition:(BOOL)transition;
- (void)markClientEmergencyEnablementTransition:(BOOL)transition shouldOverrideDeauthorization:(BOOL)deauthorization forBeneficiary:(id)beneficiary;
- (void)markClientTemporaryAuthorizationGranted:(BOOL)granted forClientKey:(id)key andAuditToken:(id *)token byLocationButton:(BOOL)button voiceInteractionEnabled:(BOOL)enabled;
- (void)markReceivingLocationInformation:(id)information;
- (void)markTemporaryPreciseAuthorizationGranted:(BOOL)granted forClientKey:(id)key;
- (void)onCapabilityChange;
- (void)performMigrationWithReply:(id)reply;
- (void)reduceAccuracy:(id)accuracy withReply:(id)reply;
- (void)registerCircularInterestZoneForClientKey:(id)key withId:(id)id latitude:(double)latitude longitude:(double)longitude serviceMaskOperator:(int)operator provenanceType:(int)type radius:(double)radius withReply:(id)self0;
- (void)registerPhenolicInterestZoneForClientKey:(id)key withId:(id)id phenolicLocation:(int)location serviceMaskOperator:(int)operator provenanceType:(int)type withReply:(id)reply;
- (void)reportLocationUtilityEvent:(int)event atDate:(id)date;
- (void)requestPinnedLocationAuthorizationWithPayload:(id)payload;
- (void)resetClient:(id)client;
- (void)resetClients;
- (void)resetNotificationConsumedForIdentifier:(id)identifier;
- (void)sendMetricForFunctionCallsForClientKey:(id)key info:(id)info;
- (void)setAllowableAuthorizationMask:(unint64_t)mask forClientKey:(id)key;
- (void)setAuthorizationUpgradeAvailable:(BOOL)available forCkp:(id)ckp;
- (void)setClient:(id)client;
- (void)setClientAuthorization:(id)authorization zoneIdentifier:(id)identifier subIdentityIdentifier:(id)identityIdentifier status:(int)status correctiveCompensation:(int)compensation mayIncreaseAuth:(BOOL)auth entity:(id)entity;
- (void)setClientBackgroundIndicator:(id)indicator enabled:(BOOL)enabled entity:(id)entity;
- (void)setClients:(id)clients locationPushTo:(BOOL)to;
- (void)setClients:(id)clients regionOfType:(int)type to:(BOOL)to;
- (void)setClients:(id)clients significantLocationChangeTo:(BOOL)to;
- (void)setClients:(id)clients significantLocationVisitTo:(BOOL)to;
- (void)setClients:(id)clients transcriptSessionChangeTo:(BOOL)to;
- (void)setIncidentalUseMode:(int)mode forClient:(id)client;
- (void)setLastLocationSettingsEventSource:(id)source;
- (void)setLearnedRoutesAccess:(int)access forClient:(id)client;
- (void)setLocationButtonUseMode:(int)mode forClient:(id)client;
- (void)setProvisionalAuthorization:(id)authorization;
- (void)setPurpose:(id)purpose forClient:(id)client;
- (void)setRelevance:(BOOL)relevance forInterestZoneWithId:(id)id registeredForClientKey:(id)key;
- (void)setRelevance:(BOOL)relevance forInterestZoneWithId:(id)id registeredForClientKey:(id)key withReply:(id)reply;
- (void)setTemporaryAuthorizationStatusInfoForClient:(id)client data:(id)data;
- (void)setVisitHistoryAccess:(int)access forClient:(id)client;
- (void)takeInUseAssertionForCkp:(id)ckp reason:(id)reason assertionLevel:(int)level withReply:(id)reply;
- (void)tearDownLocationAuthPrompt:(id)prompt;
- (void)triggerClearAppClipAuthorizationIfNecessary;
- (void)wakeUpLaunchdManagedClient:(id)client;
@end

@implementation CLClientManagerAdapter

- (id)syncgetNonSystemLocationClientKeys
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  return sub_10001AE68(adaptee);
}

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

- (BOOL)syncgetHasAuthorizedClients
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  return sub_10003F4E8(adaptee);
}

- (void)dingAllActiveTranscriptSubscriptions
{
  v2 = *([(CLClientManagerAdapter *)self adaptee]+ 130);

  sub_1001D2828(v2, v3);
}

- (id)syncgetLocationClientKeys
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  return sub_1001BDB40(adaptee);
}

- (id)syncgetNonSystemLocationClientKey
{
  memset(&__p, 0, sizeof(__p));
  if (sub_1002D0004([(CLClientManagerAdapter *)self adaptee], &__p))
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v3 = [NSString stringWithUTF8String:p_p];
  }

  else
  {
    v3 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v5 = index + 1;
  if (index + 1 < [blocked count])
  {
    [objc_msgSend(blocked objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blocked, v5}];
  }
}

+ (id)getSilo
{
  if (qword_102659F50 != -1)
  {
    sub_101932570();
  }

  return qword_102659F48;
}

- (CLClientManagerAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLClientManagerAdapter;
  return [(CLClientManagerAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLClientManagerProtocol outboundProtocol:&OBJC_PROTOCOL___CLClientManagerClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_10076DE98([(CLClientManagerAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_101932584();
  }
}

- (void)endService
{
  v2 = *(*[(CLNotifierServiceAdapter *)self notifier]+ 16);

  v2();
}

- (void)doAsync:(id)async
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLClientManagerAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

- (void)setAuthorizationUpgradeAvailable:(BOOL)available forCkp:(id)ckp
{
  availableCopy = available;
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_100791ACC(adaptee, ckp, availableCopy, 1);
}

- (void)setProvisionalAuthorization:(id)authorization
{
  v4 = sub_100043ED8(authorization);
  if (v4)
  {
    sub_1000350D0(__dst, v4);
    v5 = [CLClientKeyPath clientKeyPathFromName:__dst];
    if (v21 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v18);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (v15 < 0)
    {
      operator delete(v14);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }

    if (v11 < 0)
    {
      operator delete(v10);
    }

    if (v9 < 0)
    {
      operator delete(__dst[0]);
    }

    adaptee = [(CLClientManagerAdapter *)self adaptee];
    v7 = sub_100033370(adaptee, v5);
    sub_100791C88(adaptee, v7, 0, 0, 1);
  }
}

- (void)setClients:(id)clients regionOfType:(int)type to:(BOOL)to
{
  toCopy = to;
  v8 = sub_100043ED8(clients);
  if (v8)
  {
    sub_1000350D0(__dst, v8);
    v9 = [CLClientKeyPath clientKeyPathFromName:__dst];
    if (v23 < 0)
    {
      operator delete(__p);
    }

    if (v21 < 0)
    {
      operator delete(v20);
    }

    if (v19 < 0)
    {
      operator delete(v18);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (v15 < 0)
    {
      operator delete(v14);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }

    if (v11 < 0)
    {
      operator delete(__dst[0]);
    }

    sub_100777634([(CLClientManagerAdapter *)self adaptee], v9, type, toCopy);
  }
}

- (void)setClients:(id)clients significantLocationChangeTo:(BOOL)to
{
  toCopy = to;
  v6 = sub_100043ED8(clients);
  if (v6)
  {
    sub_1000350D0(__dst, v6);
    v7 = [CLClientKeyPath clientKeyPathFromName:__dst];
    if (v23 < 0)
    {
      operator delete(__p);
    }

    if (v21 < 0)
    {
      operator delete(v20);
    }

    if (v19 < 0)
    {
      operator delete(v18);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (v15 < 0)
    {
      operator delete(v14);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }

    if (v11 < 0)
    {
      operator delete(__dst[0]);
    }

    adaptee = [(CLClientManagerAdapter *)self adaptee];
    Current = CFAbsoluteTimeGetCurrent();
    sub_10002FE04(adaptee, v7, 3uLL, toCopy, 0, 0, Current);
  }
}

- (void)setClients:(id)clients transcriptSessionChangeTo:(BOOL)to
{
  toCopy = to;
  v6 = sub_100043ED8(clients);
  if (v6)
  {
    sub_1000350D0(__dst, v6);
    v7 = [CLClientKeyPath clientKeyPathFromName:__dst];
    if (v23 < 0)
    {
      operator delete(__p);
    }

    if (v21 < 0)
    {
      operator delete(v20);
    }

    if (v19 < 0)
    {
      operator delete(v18);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (v15 < 0)
    {
      operator delete(v14);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }

    if (v11 < 0)
    {
      operator delete(__dst[0]);
    }

    adaptee = [(CLClientManagerAdapter *)self adaptee];
    Current = CFAbsoluteTimeGetCurrent();
    sub_10002FE04(adaptee, v7, 0x10uLL, toCopy, 0, 0, Current);
  }
}

- (void)setClients:(id)clients significantLocationVisitTo:(BOOL)to
{
  toCopy = to;
  v6 = sub_100043ED8(clients);
  if (v6)
  {
    sub_1000350D0(__dst, v6);
    v7 = [CLClientKeyPath clientKeyPathFromName:__dst];
    if (v23 < 0)
    {
      operator delete(__p);
    }

    if (v21 < 0)
    {
      operator delete(v20);
    }

    if (v19 < 0)
    {
      operator delete(v18);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (v15 < 0)
    {
      operator delete(v14);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }

    if (v11 < 0)
    {
      operator delete(__dst[0]);
    }

    adaptee = [(CLClientManagerAdapter *)self adaptee];
    Current = CFAbsoluteTimeGetCurrent();
    sub_10002FE04(adaptee, v7, 6uLL, toCopy, 0, 0, Current);
  }
}

- (void)setClients:(id)clients locationPushTo:(BOOL)to
{
  toCopy = to;
  v6 = sub_100043ED8(clients);
  if (v6)
  {
    sub_1000350D0(__dst, v6);
    v7 = [CLClientKeyPath clientKeyPathFromName:__dst];
    if (v23 < 0)
    {
      operator delete(__p);
    }

    if (v21 < 0)
    {
      operator delete(v20);
    }

    if (v19 < 0)
    {
      operator delete(v18);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (v15 < 0)
    {
      operator delete(v14);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }

    if (v11 < 0)
    {
      operator delete(__dst[0]);
    }

    adaptee = [(CLClientManagerAdapter *)self adaptee];
    Current = CFAbsoluteTimeGetCurrent();
    sub_10002FE04(adaptee, v7, 0xFuLL, toCopy, 0, 0, Current);
  }
}

- (void)considerPromptingForTranscriptSession:(id)session dictionary:(id)dictionary requestType:(int)type withReply:(id)reply
{
  v10 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:session];
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_100775014(adaptee, v10, dictionary, type, reply);
}

- (void)markClientTemporaryAuthorizationGranted:(BOOL)granted forClientKey:(id)key andAuditToken:(id *)token byLocationButton:(BOOL)button voiceInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  buttonCopy = button;
  grantedCopy = granted;
  v11 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:key];
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_10077B5E8(adaptee, v11, v13, grantedCopy, buttonCopy, enabledCopy);
}

- (void)markTemporaryPreciseAuthorizationGranted:(BOOL)granted forClientKey:(id)key
{
  grantedCopy = granted;
  v6 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:key];
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_10077BA38(adaptee, v6, grantedCopy);
}

- (void)tearDownLocationAuthPrompt:(id)prompt
{
  v4 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:prompt];
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_10079EDEC(adaptee, 2, v4);
}

- (void)markClientEmergencyEnablementTransition:(BOOL)transition
{
  transitionCopy = transition;
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_10077BBC4(adaptee, transitionCopy, 0, 0);
}

- (void)markClientEmergencyEnablementTransition:(BOOL)transition shouldOverrideDeauthorization:(BOOL)deauthorization forBeneficiary:(id)beneficiary
{
  deauthorizationCopy = deauthorization;
  transitionCopy = transition;
  if ([beneficiary isEqualToString:@"*nobody*"])
  {
    v9 = 0;
  }

  else
  {
    v9 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:beneficiary];
  }

  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_10077BBC4(adaptee, transitionCopy, deauthorizationCopy, v9);
}

- (void)takeInUseAssertionForCkp:(id)ckp reason:(id)reason assertionLevel:(int)level withReply:(id)reply
{
  v9 = sub_100033370([(CLClientManagerAdapter *)self adaptee], ckp);
  adaptee = [(CLClientManagerAdapter *)self adaptee];
  sub_10000EC00(&__p, [reason UTF8String]);
  sub_1000E4F54(adaptee, v9, &__p, level, v12);
  sub_1001457B8();
}

- (void)inUseAssertionInvalidatedDueToWatchConnectivityForClientKey:(id)key
{
  v4 = [CLClientKeyPath clientKeyPathWithClientKey:key];
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_100778D10(adaptee, v4);
}

- (void)reduceAccuracy:(id)accuracy withReply:(id)reply
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];
  if (accuracy)
  {
    [accuracy clientLocation];
  }

  else
  {
    memset(v7, 0, 156);
  }

  sub_10077E830(adaptee, v7, reply);
}

- (void)markReceivingLocationInformation:(id)information
{
  (*(information + 2))(v5, information, a2);
  v4 = [CLClientKeyPath clientKeyPathFromName:v5];
  if (v18 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  sub_1000F6390([(CLClientManagerAdapter *)self adaptee], v4, 1, 0);
}

- (void)onCapabilityChange
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];
  v3 = adaptee[17];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007A5AAC;
  v4[3] = &unk_10246FC30;
  v4[4] = adaptee;
  [v3 iterateAllAnchorKeyPathsWithBlock:v4];
}

- (void)wakeUpLaunchdManagedClient:(id)client
{
  sub_10000EC00(__p, [client UTF8String]);
  notifier = [(CLNotifierServiceAdapter *)self notifier];
  if (notifier)
  {
  }

  sub_1000E7E28(notifier, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)appLaunchedByAppLifecycleManager:(id)manager
{
  v4 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:manager];
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_1007948F8(adaptee, v4);
}

- (void)performMigrationWithReply:(id)reply
{
  sub_100794D08([(CLClientManagerAdapter *)self adaptee]);
  if (reply)
  {
    v4 = *(reply + 2);

    v4(reply);
  }
}

- (void)resetNotificationConsumedForIdentifier:(id)identifier
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_100794F34(adaptee, identifier);
}

- (void)setClientBackgroundIndicator:(id)indicator enabled:(BOOL)enabled entity:(id)entity
{
  enabledCopy = enabled;
  (*(indicator + 2))(v10, indicator, a2);
  v8 = [CLClientKeyPath clientKeyPathFromName:v10];
  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  adaptee = [(CLClientManagerAdapter *)self adaptee];
  [entity UTF8String];
  sub_100795358(adaptee, v8, enabledCopy);
}

- (void)setClientAuthorization:(id)authorization zoneIdentifier:(id)identifier subIdentityIdentifier:(id)identityIdentifier status:(int)status correctiveCompensation:(int)compensation mayIncreaseAuth:(BOOL)auth entity:(id)entity
{
  authCopy = auth;
  v10 = *&compensation;
  (*(authorization + 2))(v21, authorization, a2);
  v15 = [CLClientKeyPath clientKeyPathFromName:v21];
  if (v34 < 0)
  {
    operator delete(__p);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (identifier | identityIdentifier)
  {
    if (identifier)
    {
      v16 = 122;
    }

    else
    {
      v16 = 0;
    }

    if (identityIdentifier)
    {
      identifierCopy = identityIdentifier;
    }

    else
    {
      identifierCopy = identifier;
    }

    if (identityIdentifier)
    {
      v18 = 119;
    }

    else
    {
      v18 = v16;
    }

    v15 = [v15 clientKeyPathWithReplacementSubIdentityId:identifierCopy subIdentityType:v18];
  }

  adaptee = [(CLClientManagerAdapter *)self adaptee];
  [entity UTF8String];
  sub_100791600(adaptee, v15, status, v10, v20, authCopy, 1);
}

- (void)setLastLocationSettingsEventSource:(id)source
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];
  sub_10000EC00(&__str, [source UTF8String]);
  std::string::operator=((adaptee + 976), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

- (void)sendMetricForFunctionCallsForClientKey:(id)key info:(id)info
{
  v6 = [CLClientKeyPath clientKeyPathWithClientAnchor:key anchorType:105];
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_1000E3DA0(adaptee, v6, info);
}

- (void)reportLocationUtilityEvent:(int)event atDate:(id)date
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_100779210(adaptee, event, date);
}

- (void)resetClient:(id)client
{
  v4 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:client];
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_10077A174(adaptee, v4);
}

- (void)resetClients
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_10078E990(adaptee);
}

- (void)setClient:(id)client
{
  (*(client + 2))(v7, client, a2);
  v4 = [CLClientKeyPath clientKeyPathFromName:v7];
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  adaptee = [(CLClientManagerAdapter *)self adaptee];
  v6 = sub_100033370(adaptee, v4);
  sub_1000F7D18(adaptee, v6, 1);
}

- (void)setPurpose:(id)purpose forClient:(id)client
{
  (*(client + 2))(v7, client, a2);
  v6 = [CLClientKeyPath clientKeyPathFromName:v7];
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  sub_100795954([(CLClientManagerAdapter *)self adaptee], v6, purpose);
}

- (BOOL)syncgetSetLocationServicesEnabledStatically:(BOOL)statically withEventSource:(id)source
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];
  sub_10000EC00(__p, [source UTF8String]);
  sub_1007739D0(adaptee, statically, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

- (void)checkAppInstallationStatus
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_10077D10C(adaptee);
}

- (void)appsWithClientKeysAreInstalledOnAPairedDevice:(id)device
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_100795ABC(adaptee, device);
}

- (void)setAllowableAuthorizationMask:(unint64_t)mask forClientKey:(id)key
{
  v6 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:key];
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_100056BBC(adaptee, v6, mask, 0);
}

- (id)syncgetCopyClients
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  return sub_100795C50(adaptee, v3, 0);
}

- (void)fetchClientDictionaryForCkp:(id)ckp withReply:(id)reply
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_1007962C4(adaptee, ckp, reply);
}

- (void)isAuthorizationUpgradeAvailableForClient:(id)client withReply:(id)reply
{
  v5 = sub_100796390([(CLClientManagerAdapter *)self adaptee], client);
  v6 = *(reply + 2);

  v6(reply, v5);
}

- (void)fetchLocationClientKeysWithReply:(id)reply
{
  v4 = sub_1001BDB40([(CLClientManagerAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply, v4);
}

- (void)fetchClientStaticRegistrationResult:(id)result withReply:(id)reply
{
  (*(result + 2))(v8, result, a2);
  v6 = [CLClientKeyPath clientKeyPathFromName:v8];
  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  v7 = sub_100774074([(CLClientManagerAdapter *)self adaptee], v6);
  if (reply)
  {
    (*(reply + 2))(reply, v7);
  }
}

- (int)syncgetClientEffectiveRegistrationResultWithTransientAwareness:(id)awareness
{
  (*(awareness + 2))(v6, awareness, a2);
  v4 = [CLClientKeyPath clientKeyPathFromName:v6];
  if (v19 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  return sub_100061324([(CLClientManagerAdapter *)self adaptee], v4);
}

- (void)getIncidentalUseModeForClient:(id)client withReply:(id)reply
{
  (*(client + 2))(v7, client, a2);
  v6 = [CLClientKeyPath clientKeyPathFromName:v7];
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  sub_100779070([(CLClientManagerAdapter *)self adaptee], v6, reply);
}

- (void)getVisitHistoryAccessAllowedTimeForClient:(id)client withReply:(id)reply
{
  [*(-[CLClientManagerAdapter adaptee](self "adaptee") + 17)];
  v5 = *(reply + 2);

  v5(reply);
}

- (void)getVisitHistoryAccessForClient:(id)client withReply:(id)reply
{
  v5 = sub_1007A8E24([(CLClientManagerAdapter *)self adaptee], [CLClientKeyPath clientKeyPathWithLegacyClientKey:client]);
  v6 = *(reply + 2);

  v6(reply, v5);
}

- (void)getLearnedRoutesAccessForClient:(id)client withReply:(id)reply
{
  v5 = sub_1007A906C([(CLClientManagerAdapter *)self adaptee], [CLClientKeyPath clientKeyPathWithLegacyClientKey:client]);
  v6 = *(reply + 2);

  v6(reply, v5);
}

- (void)registerCircularInterestZoneForClientKey:(id)key withId:(id)id latitude:(double)latitude longitude:(double)longitude serviceMaskOperator:(int)operator provenanceType:(int)type radius:(double)radius withReply:(id)self0
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];
  sub_10000EC00(v21, [key UTF8String]);
  sub_10000EC00(__p, [id UTF8String]);
  sub_100796A40(adaptee, v21, __p, 1, 0, operator, type, 1, latitude, longitude, radius, 0, reply);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }
}

- (void)registerPhenolicInterestZoneForClientKey:(id)key withId:(id)id phenolicLocation:(int)location serviceMaskOperator:(int)operator provenanceType:(int)type withReply:(id)reply
{
  v11 = *&location;
  adaptee = [(CLClientManagerAdapter *)self adaptee];
  sub_10000EC00(v17, [key UTF8String]);
  sub_10000EC00(__p, [id UTF8String]);
  sub_100796A40(adaptee, v17, __p, 2, v11, operator, type, 1, -1.0, -1.0, -1.0, 0, reply);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }
}

- (void)setRelevance:(BOOL)relevance forInterestZoneWithId:(id)id registeredForClientKey:(id)key withReply:(id)reply
{
  relevanceCopy = relevance;
  adaptee = [(CLClientManagerAdapter *)self adaptee];
  sub_10000EC00(v13, [key UTF8String]);
  sub_10000EC00(__p, [id UTF8String]);
  sub_1007976E8(adaptee, v13, __p, relevanceCopy, reply);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }
}

- (void)setRelevance:(BOOL)relevance forInterestZoneWithId:(id)id registeredForClientKey:(id)key
{
  relevanceCopy = relevance;
  adaptee = [(CLClientManagerAdapter *)self adaptee];
  sub_10000EC00(v11, [key UTF8String]);
  sub_10000EC00(__p, [id UTF8String]);
  sub_1007976E8(adaptee, v11, __p, relevanceCopy, 0);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }
}

- (void)deleteInterestZoneWithId:(id)id registeredForClientKey:(id)key withReply:(id)reply
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];
  sub_10000EC00(v11, [key UTF8String]);
  sub_10000EC00(__p, [id UTF8String]);
  sub_100797CA0(adaptee, v11, __p, reply);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }
}

- (void)setIncidentalUseMode:(int)mode forClient:(id)client
{
  v4 = *&mode;
  (*(client + 2))(v7, client, a2);
  v6 = [CLClientKeyPath clientKeyPathFromName:v7];
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  sub_10077A3D0([(CLClientManagerAdapter *)self adaptee], v4, v6, 1);
}

- (void)setVisitHistoryAccess:(int)access forClient:(id)client
{
  v4 = *&access;
  v6 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:client];
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_100798220(adaptee, v6, v4);
}

- (void)setLearnedRoutesAccess:(int)access forClient:(id)client
{
  v4 = *&access;
  v6 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:client];
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_10079856C(adaptee, v6, v4);
}

- (void)setLocationButtonUseMode:(int)mode forClient:(id)client
{
  v4 = *&mode;
  (*(client + 2))(v7, client, a2);
  v6 = [CLClientKeyPath clientKeyPathFromName:v7];
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  sub_10077AB64([(CLClientManagerAdapter *)self adaptee], v4, v6);
}

- (BOOL)syncgetIsMapsANonSystemLocationClient
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];
  v3 = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.Maps" anchorType:105];

  return sub_100798960(adaptee, v3);
}

- (id)syncgetApplyArchivedAuthorizationDecisionsAndDie:(id)die unlessTokenMatches:(id)matches
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  return sub_100780350(adaptee, die, matches);
}

- (id)syncgetArchivedAuthorizationDecisions
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  return sub_10077FF70(adaptee);
}

- (void)checkWeakPersistentClientWithIdentifier:(id)identifier
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];
  (*(identifier + 2))(v5, identifier);
  sub_1007774D0(adaptee, v5);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

- (void)handleProvisionalIntermediationForService:(unint64_t)service forClientKey:(id)key at:(id)at withReply:(id)reply
{
  atCopy = at;
  if (!at)
  {
    v11 = [CLLocation alloc];
    LODWORD(v19[0]) = 0xFFFF;
    *(v19 + 4) = 0uLL;
    *(&v19[1] + 4) = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(&v19[2] + 4) = _Q0;
    *(&v19[3] + 4) = _Q0;
    *(&v19[4] + 4) = _Q0;
    DWORD1(v19[5]) = 0;
    v20 = 0uLL;
    *(&v19[5] + 1) = 0xBFF0000000000000;
    LODWORD(v21) = 0;
    *(&v21 + 4) = 0xBFF0000000000000;
    HIDWORD(v21) = 0x7FFFFFFF;
    memset(v22, 0, 25);
    atCopy = [v11 initWithClientLocation:v19];
  }

  v17 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:key];
  adaptee = [(CLClientManagerAdapter *)self adaptee];
  if (atCopy)
  {
    [atCopy clientLocation];
  }

  else
  {
    v21 = 0u;
    memset(v22, 0, 28);
    v20 = 0u;
    memset(v19, 0, sizeof(v19));
  }

  sub_100045AEC(adaptee, service, v17, v19, reply);
}

- (void)considerPromptingForIncidentalUseForCkp:(id)ckp
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_10077834C(adaptee, ckp);
}

- (void)learnedRoutesSupportedForClient:(id)client withReply:(id)reply
{
  v6 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:client];
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_100798CB4(adaptee, v6, reply);
}

- (void)attemptSpendOneForPushClient:(id)client withReply:(id)reply
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_100798E08(adaptee, client, reply);
}

- (void)setTemporaryAuthorizationStatusInfoForClient:(id)client data:(id)data
{
  (*(client + 2))(v7, client, a2);
  v6 = [CLClientKeyPath clientKeyPathFromName:v7];
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  sub_100798F74([(CLClientManagerAdapter *)self adaptee], v6, data);
}

- (id)syncgetTemporaryAuthorizationStatusForClient:(id)client
{
  (*(client + 2))(v6, client, a2);
  v4 = [CLClientKeyPath clientKeyPathFromName:v6];
  if (v19 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  return sub_100799DF4([(CLClientManagerAdapter *)self adaptee], v4);
}

- (double)syncgetAndSetOrChangeAppClipAuthorizationTime:(double)time forClient:(id)client
{
  (*(client + 2))(v8, client, a2);
  v6 = [CLClientKeyPath clientKeyPathFromName:v8];
  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  sub_10079A3A4([(CLClientManagerAdapter *)self adaptee], v6, time);
  return -1.0;
}

- (void)triggerClearAppClipAuthorizationIfNecessary
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_10079A6C8(adaptee, 14400.0);
}

- (void)handleLiveActivityUpdate:(id)update
{
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_1002FA8A4(adaptee, update);
}

- (void)calculateCheeseCoverage:(id)coverage interestInterval:(id)interval withOptions:(id)options lookbackWindowStartDate:(id)date withReply:(id)reply
{
  v12 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:coverage];
  adaptee = [(CLClientManagerAdapter *)self adaptee];

  sub_100786AA8(adaptee, v12, interval, options, date, reply);
}

- (void)getClientManagerInternalStateWithReply:(id)reply
{
  v4 = sub_100786074([(CLClientManagerAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply, v4);
}

- (void)requestPinnedLocationAuthorizationWithPayload:(id)payload
{
  if (!sub_100783014([(CLClientManagerAdapter *)self adaptee], payload))
  {
    v4 = [-[CLClientManagerAdapter vendor](self "vendor")];
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "createAndPostPinnedLocationAuthorization() failed!", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101932FA4();
    }

    [v4 handleAuthorizationResponse:0];
  }
}

@end