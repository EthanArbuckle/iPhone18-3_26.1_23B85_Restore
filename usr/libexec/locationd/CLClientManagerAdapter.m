@interface CLClientManagerAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (BOOL)syncgetHasAuthorizedClients;
- (BOOL)syncgetIsMapsANonSystemLocationClient;
- (BOOL)syncgetSetLocationServicesEnabledStatically:(BOOL)a3 withEventSource:(id)a4;
- (CLClientManagerAdapter)init;
- (double)syncgetAndSetOrChangeAppClipAuthorizationTime:(double)a3 forClient:(id)a4;
- (id)syncgetApplyArchivedAuthorizationDecisionsAndDie:(id)a3 unlessTokenMatches:(id)a4;
- (id)syncgetArchivedAuthorizationDecisions;
- (id)syncgetCopyClients;
- (id)syncgetLocationClientKeys;
- (id)syncgetNonSystemLocationClientKey;
- (id)syncgetNonSystemLocationClientKeys;
- (id)syncgetTemporaryAuthorizationStatusForClient:(id)a3;
- (int)syncgetClientEffectiveRegistrationResultWithTransientAwareness:(id)a3;
- (void)adaptee;
- (void)appLaunchedByAppLifecycleManager:(id)a3;
- (void)appsWithClientKeysAreInstalledOnAPairedDevice:(id)a3;
- (void)attemptSpendOneForPushClient:(id)a3 withReply:(id)a4;
- (void)beginService;
- (void)calculateCheeseCoverage:(id)a3 interestInterval:(id)a4 withOptions:(id)a5 lookbackWindowStartDate:(id)a6 withReply:(id)a7;
- (void)checkAppInstallationStatus;
- (void)checkWeakPersistentClientWithIdentifier:(id)a3;
- (void)considerPromptingForIncidentalUseForCkp:(id)a3;
- (void)considerPromptingForTranscriptSession:(id)a3 dictionary:(id)a4 requestType:(int)a5 withReply:(id)a6;
- (void)deleteInterestZoneWithId:(id)a3 registeredForClientKey:(id)a4 withReply:(id)a5;
- (void)dingAllActiveTranscriptSubscriptions;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
- (void)fetchClientDictionaryForCkp:(id)a3 withReply:(id)a4;
- (void)fetchClientStaticRegistrationResult:(id)a3 withReply:(id)a4;
- (void)fetchLocationClientKeysWithReply:(id)a3;
- (void)getClientManagerInternalStateWithReply:(id)a3;
- (void)getIncidentalUseModeForClient:(id)a3 withReply:(id)a4;
- (void)getLearnedRoutesAccessForClient:(id)a3 withReply:(id)a4;
- (void)getVisitHistoryAccessAllowedTimeForClient:(id)a3 withReply:(id)a4;
- (void)getVisitHistoryAccessForClient:(id)a3 withReply:(id)a4;
- (void)handleLiveActivityUpdate:(id)a3;
- (void)handleProvisionalIntermediationForService:(unint64_t)a3 forClientKey:(id)a4 at:(id)a5 withReply:(id)a6;
- (void)inUseAssertionInvalidatedDueToWatchConnectivityForClientKey:(id)a3;
- (void)isAuthorizationUpgradeAvailableForClient:(id)a3 withReply:(id)a4;
- (void)learnedRoutesSupportedForClient:(id)a3 withReply:(id)a4;
- (void)markClientEmergencyEnablementTransition:(BOOL)a3;
- (void)markClientEmergencyEnablementTransition:(BOOL)a3 shouldOverrideDeauthorization:(BOOL)a4 forBeneficiary:(id)a5;
- (void)markClientTemporaryAuthorizationGranted:(BOOL)a3 forClientKey:(id)a4 andAuditToken:(id *)a5 byLocationButton:(BOOL)a6 voiceInteractionEnabled:(BOOL)a7;
- (void)markReceivingLocationInformation:(id)a3;
- (void)markTemporaryPreciseAuthorizationGranted:(BOOL)a3 forClientKey:(id)a4;
- (void)onCapabilityChange;
- (void)performMigrationWithReply:(id)a3;
- (void)reduceAccuracy:(id)a3 withReply:(id)a4;
- (void)registerCircularInterestZoneForClientKey:(id)a3 withId:(id)a4 latitude:(double)a5 longitude:(double)a6 serviceMaskOperator:(int)a7 provenanceType:(int)a8 radius:(double)a9 withReply:(id)a10;
- (void)registerPhenolicInterestZoneForClientKey:(id)a3 withId:(id)a4 phenolicLocation:(int)a5 serviceMaskOperator:(int)a6 provenanceType:(int)a7 withReply:(id)a8;
- (void)reportLocationUtilityEvent:(int)a3 atDate:(id)a4;
- (void)requestPinnedLocationAuthorizationWithPayload:(id)a3;
- (void)resetClient:(id)a3;
- (void)resetClients;
- (void)resetNotificationConsumedForIdentifier:(id)a3;
- (void)sendMetricForFunctionCallsForClientKey:(id)a3 info:(id)a4;
- (void)setAllowableAuthorizationMask:(unint64_t)a3 forClientKey:(id)a4;
- (void)setAuthorizationUpgradeAvailable:(BOOL)a3 forCkp:(id)a4;
- (void)setClient:(id)a3;
- (void)setClientAuthorization:(id)a3 zoneIdentifier:(id)a4 subIdentityIdentifier:(id)a5 status:(int)a6 correctiveCompensation:(int)a7 mayIncreaseAuth:(BOOL)a8 entity:(id)a9;
- (void)setClientBackgroundIndicator:(id)a3 enabled:(BOOL)a4 entity:(id)a5;
- (void)setClients:(id)a3 locationPushTo:(BOOL)a4;
- (void)setClients:(id)a3 regionOfType:(int)a4 to:(BOOL)a5;
- (void)setClients:(id)a3 significantLocationChangeTo:(BOOL)a4;
- (void)setClients:(id)a3 significantLocationVisitTo:(BOOL)a4;
- (void)setClients:(id)a3 transcriptSessionChangeTo:(BOOL)a4;
- (void)setIncidentalUseMode:(int)a3 forClient:(id)a4;
- (void)setLastLocationSettingsEventSource:(id)a3;
- (void)setLearnedRoutesAccess:(int)a3 forClient:(id)a4;
- (void)setLocationButtonUseMode:(int)a3 forClient:(id)a4;
- (void)setProvisionalAuthorization:(id)a3;
- (void)setPurpose:(id)a3 forClient:(id)a4;
- (void)setRelevance:(BOOL)a3 forInterestZoneWithId:(id)a4 registeredForClientKey:(id)a5;
- (void)setRelevance:(BOOL)a3 forInterestZoneWithId:(id)a4 registeredForClientKey:(id)a5 withReply:(id)a6;
- (void)setTemporaryAuthorizationStatusInfoForClient:(id)a3 data:(id)a4;
- (void)setVisitHistoryAccess:(int)a3 forClient:(id)a4;
- (void)takeInUseAssertionForCkp:(id)a3 reason:(id)a4 assertionLevel:(int)a5 withReply:(id)a6;
- (void)tearDownLocationAuthPrompt:(id)a3;
- (void)triggerClearAppClipAuthorizationIfNecessary;
- (void)wakeUpLaunchdManagedClient:(id)a3;
@end

@implementation CLClientManagerAdapter

- (id)syncgetNonSystemLocationClientKeys
{
  v2 = [(CLClientManagerAdapter *)self adaptee];

  return sub_10001AE68(v2);
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
  v2 = [(CLClientManagerAdapter *)self adaptee];

  return sub_10003F4E8(v2);
}

- (void)dingAllActiveTranscriptSubscriptions
{
  v2 = *([(CLClientManagerAdapter *)self adaptee]+ 130);

  sub_1001D2828(v2, v3);
}

- (id)syncgetLocationClientKeys
{
  v2 = [(CLClientManagerAdapter *)self adaptee];

  return sub_1001BDB40(v2);
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

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v5 = a4 + 1;
  if (a4 + 1 < [a3 count])
  {
    [objc_msgSend(a3 objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", a3, v5}];
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

- (void)doAsync:(id)a3
{
  v4 = [(CLClientManagerAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLClientManagerAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

- (void)setAuthorizationUpgradeAvailable:(BOOL)a3 forCkp:(id)a4
{
  v5 = a3;
  v6 = [(CLClientManagerAdapter *)self adaptee];

  sub_100791ACC(v6, a4, v5, 1);
}

- (void)setProvisionalAuthorization:(id)a3
{
  v4 = sub_100043ED8(a3);
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

    v6 = [(CLClientManagerAdapter *)self adaptee];
    v7 = sub_100033370(v6, v5);
    sub_100791C88(v6, v7, 0, 0, 1);
  }
}

- (void)setClients:(id)a3 regionOfType:(int)a4 to:(BOOL)a5
{
  v5 = a5;
  v8 = sub_100043ED8(a3);
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

    sub_100777634([(CLClientManagerAdapter *)self adaptee], v9, a4, v5);
  }
}

- (void)setClients:(id)a3 significantLocationChangeTo:(BOOL)a4
{
  v4 = a4;
  v6 = sub_100043ED8(a3);
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

    v8 = [(CLClientManagerAdapter *)self adaptee];
    Current = CFAbsoluteTimeGetCurrent();
    sub_10002FE04(v8, v7, 3uLL, v4, 0, 0, Current);
  }
}

- (void)setClients:(id)a3 transcriptSessionChangeTo:(BOOL)a4
{
  v4 = a4;
  v6 = sub_100043ED8(a3);
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

    v8 = [(CLClientManagerAdapter *)self adaptee];
    Current = CFAbsoluteTimeGetCurrent();
    sub_10002FE04(v8, v7, 0x10uLL, v4, 0, 0, Current);
  }
}

- (void)setClients:(id)a3 significantLocationVisitTo:(BOOL)a4
{
  v4 = a4;
  v6 = sub_100043ED8(a3);
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

    v8 = [(CLClientManagerAdapter *)self adaptee];
    Current = CFAbsoluteTimeGetCurrent();
    sub_10002FE04(v8, v7, 6uLL, v4, 0, 0, Current);
  }
}

- (void)setClients:(id)a3 locationPushTo:(BOOL)a4
{
  v4 = a4;
  v6 = sub_100043ED8(a3);
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

    v8 = [(CLClientManagerAdapter *)self adaptee];
    Current = CFAbsoluteTimeGetCurrent();
    sub_10002FE04(v8, v7, 0xFuLL, v4, 0, 0, Current);
  }
}

- (void)considerPromptingForTranscriptSession:(id)a3 dictionary:(id)a4 requestType:(int)a5 withReply:(id)a6
{
  v10 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:a3];
  v11 = [(CLClientManagerAdapter *)self adaptee];

  sub_100775014(v11, v10, a4, a5, a6);
}

- (void)markClientTemporaryAuthorizationGranted:(BOOL)a3 forClientKey:(id)a4 andAuditToken:(id *)a5 byLocationButton:(BOOL)a6 voiceInteractionEnabled:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a3;
  v11 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:a4];
  v12 = [(CLClientManagerAdapter *)self adaptee];

  sub_10077B5E8(v12, v11, v13, v9, v8, v7);
}

- (void)markTemporaryPreciseAuthorizationGranted:(BOOL)a3 forClientKey:(id)a4
{
  v4 = a3;
  v6 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:a4];
  v7 = [(CLClientManagerAdapter *)self adaptee];

  sub_10077BA38(v7, v6, v4);
}

- (void)tearDownLocationAuthPrompt:(id)a3
{
  v4 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:a3];
  v5 = [(CLClientManagerAdapter *)self adaptee];

  sub_10079EDEC(v5, 2, v4);
}

- (void)markClientEmergencyEnablementTransition:(BOOL)a3
{
  v3 = a3;
  v4 = [(CLClientManagerAdapter *)self adaptee];

  sub_10077BBC4(v4, v3, 0, 0);
}

- (void)markClientEmergencyEnablementTransition:(BOOL)a3 shouldOverrideDeauthorization:(BOOL)a4 forBeneficiary:(id)a5
{
  v6 = a4;
  v7 = a3;
  if ([a5 isEqualToString:@"*nobody*"])
  {
    v9 = 0;
  }

  else
  {
    v9 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:a5];
  }

  v10 = [(CLClientManagerAdapter *)self adaptee];

  sub_10077BBC4(v10, v7, v6, v9);
}

- (void)takeInUseAssertionForCkp:(id)a3 reason:(id)a4 assertionLevel:(int)a5 withReply:(id)a6
{
  v9 = sub_100033370([(CLClientManagerAdapter *)self adaptee], a3);
  v10 = [(CLClientManagerAdapter *)self adaptee];
  sub_10000EC00(&__p, [a4 UTF8String]);
  sub_1000E4F54(v10, v9, &__p, a5, v12);
  sub_1001457B8();
}

- (void)inUseAssertionInvalidatedDueToWatchConnectivityForClientKey:(id)a3
{
  v4 = [CLClientKeyPath clientKeyPathWithClientKey:a3];
  v5 = [(CLClientManagerAdapter *)self adaptee];

  sub_100778D10(v5, v4);
}

- (void)reduceAccuracy:(id)a3 withReply:(id)a4
{
  v6 = [(CLClientManagerAdapter *)self adaptee];
  if (a3)
  {
    [a3 clientLocation];
  }

  else
  {
    memset(v7, 0, 156);
  }

  sub_10077E830(v6, v7, a4);
}

- (void)markReceivingLocationInformation:(id)a3
{
  (*(a3 + 2))(v5, a3, a2);
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
  v2 = [(CLClientManagerAdapter *)self adaptee];
  v3 = v2[17];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007A5AAC;
  v4[3] = &unk_10246FC30;
  v4[4] = v2;
  [v3 iterateAllAnchorKeyPathsWithBlock:v4];
}

- (void)wakeUpLaunchdManagedClient:(id)a3
{
  sub_10000EC00(__p, [a3 UTF8String]);
  v4 = [(CLNotifierServiceAdapter *)self notifier];
  if (v4)
  {
  }

  sub_1000E7E28(v4, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)appLaunchedByAppLifecycleManager:(id)a3
{
  v4 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:a3];
  v5 = [(CLClientManagerAdapter *)self adaptee];

  sub_1007948F8(v5, v4);
}

- (void)performMigrationWithReply:(id)a3
{
  sub_100794D08([(CLClientManagerAdapter *)self adaptee]);
  if (a3)
  {
    v4 = *(a3 + 2);

    v4(a3);
  }
}

- (void)resetNotificationConsumedForIdentifier:(id)a3
{
  v4 = [(CLClientManagerAdapter *)self adaptee];

  sub_100794F34(v4, a3);
}

- (void)setClientBackgroundIndicator:(id)a3 enabled:(BOOL)a4 entity:(id)a5
{
  v6 = a4;
  (*(a3 + 2))(v10, a3, a2);
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

  v9 = [(CLClientManagerAdapter *)self adaptee];
  [a5 UTF8String];
  sub_100795358(v9, v8, v6);
}

- (void)setClientAuthorization:(id)a3 zoneIdentifier:(id)a4 subIdentityIdentifier:(id)a5 status:(int)a6 correctiveCompensation:(int)a7 mayIncreaseAuth:(BOOL)a8 entity:(id)a9
{
  v9 = a8;
  v10 = *&a7;
  (*(a3 + 2))(v21, a3, a2);
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

  if (a4 | a5)
  {
    if (a4)
    {
      v16 = 122;
    }

    else
    {
      v16 = 0;
    }

    if (a5)
    {
      v17 = a5;
    }

    else
    {
      v17 = a4;
    }

    if (a5)
    {
      v18 = 119;
    }

    else
    {
      v18 = v16;
    }

    v15 = [v15 clientKeyPathWithReplacementSubIdentityId:v17 subIdentityType:v18];
  }

  v19 = [(CLClientManagerAdapter *)self adaptee];
  [a9 UTF8String];
  sub_100791600(v19, v15, a6, v10, v20, v9, 1);
}

- (void)setLastLocationSettingsEventSource:(id)a3
{
  v4 = [(CLClientManagerAdapter *)self adaptee];
  sub_10000EC00(&__str, [a3 UTF8String]);
  std::string::operator=((v4 + 976), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

- (void)sendMetricForFunctionCallsForClientKey:(id)a3 info:(id)a4
{
  v6 = [CLClientKeyPath clientKeyPathWithClientAnchor:a3 anchorType:105];
  v7 = [(CLClientManagerAdapter *)self adaptee];

  sub_1000E3DA0(v7, v6, a4);
}

- (void)reportLocationUtilityEvent:(int)a3 atDate:(id)a4
{
  v6 = [(CLClientManagerAdapter *)self adaptee];

  sub_100779210(v6, a3, a4);
}

- (void)resetClient:(id)a3
{
  v4 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:a3];
  v5 = [(CLClientManagerAdapter *)self adaptee];

  sub_10077A174(v5, v4);
}

- (void)resetClients
{
  v2 = [(CLClientManagerAdapter *)self adaptee];

  sub_10078E990(v2);
}

- (void)setClient:(id)a3
{
  (*(a3 + 2))(v7, a3, a2);
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

  v5 = [(CLClientManagerAdapter *)self adaptee];
  v6 = sub_100033370(v5, v4);
  sub_1000F7D18(v5, v6, 1);
}

- (void)setPurpose:(id)a3 forClient:(id)a4
{
  (*(a4 + 2))(v7, a4, a2);
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

  sub_100795954([(CLClientManagerAdapter *)self adaptee], v6, a3);
}

- (BOOL)syncgetSetLocationServicesEnabledStatically:(BOOL)a3 withEventSource:(id)a4
{
  v6 = [(CLClientManagerAdapter *)self adaptee];
  sub_10000EC00(__p, [a4 UTF8String]);
  sub_1007739D0(v6, a3, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

- (void)checkAppInstallationStatus
{
  v2 = [(CLClientManagerAdapter *)self adaptee];

  sub_10077D10C(v2);
}

- (void)appsWithClientKeysAreInstalledOnAPairedDevice:(id)a3
{
  v4 = [(CLClientManagerAdapter *)self adaptee];

  sub_100795ABC(v4, a3);
}

- (void)setAllowableAuthorizationMask:(unint64_t)a3 forClientKey:(id)a4
{
  v6 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:a4];
  v7 = [(CLClientManagerAdapter *)self adaptee];

  sub_100056BBC(v7, v6, a3, 0);
}

- (id)syncgetCopyClients
{
  v2 = [(CLClientManagerAdapter *)self adaptee];

  return sub_100795C50(v2, v3, 0);
}

- (void)fetchClientDictionaryForCkp:(id)a3 withReply:(id)a4
{
  v6 = [(CLClientManagerAdapter *)self adaptee];

  sub_1007962C4(v6, a3, a4);
}

- (void)isAuthorizationUpgradeAvailableForClient:(id)a3 withReply:(id)a4
{
  v5 = sub_100796390([(CLClientManagerAdapter *)self adaptee], a3);
  v6 = *(a4 + 2);

  v6(a4, v5);
}

- (void)fetchLocationClientKeysWithReply:(id)a3
{
  v4 = sub_1001BDB40([(CLClientManagerAdapter *)self adaptee]);
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)fetchClientStaticRegistrationResult:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(v8, a3, a2);
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
  if (a4)
  {
    (*(a4 + 2))(a4, v7);
  }
}

- (int)syncgetClientEffectiveRegistrationResultWithTransientAwareness:(id)a3
{
  (*(a3 + 2))(v6, a3, a2);
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

- (void)getIncidentalUseModeForClient:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(v7, a3, a2);
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

  sub_100779070([(CLClientManagerAdapter *)self adaptee], v6, a4);
}

- (void)getVisitHistoryAccessAllowedTimeForClient:(id)a3 withReply:(id)a4
{
  [*(-[CLClientManagerAdapter adaptee](self "adaptee") + 17)];
  v5 = *(a4 + 2);

  v5(a4);
}

- (void)getVisitHistoryAccessForClient:(id)a3 withReply:(id)a4
{
  v5 = sub_1007A8E24([(CLClientManagerAdapter *)self adaptee], [CLClientKeyPath clientKeyPathWithLegacyClientKey:a3]);
  v6 = *(a4 + 2);

  v6(a4, v5);
}

- (void)getLearnedRoutesAccessForClient:(id)a3 withReply:(id)a4
{
  v5 = sub_1007A906C([(CLClientManagerAdapter *)self adaptee], [CLClientKeyPath clientKeyPathWithLegacyClientKey:a3]);
  v6 = *(a4 + 2);

  v6(a4, v5);
}

- (void)registerCircularInterestZoneForClientKey:(id)a3 withId:(id)a4 latitude:(double)a5 longitude:(double)a6 serviceMaskOperator:(int)a7 provenanceType:(int)a8 radius:(double)a9 withReply:(id)a10
{
  v18 = [(CLClientManagerAdapter *)self adaptee];
  sub_10000EC00(v21, [a3 UTF8String]);
  sub_10000EC00(__p, [a4 UTF8String]);
  sub_100796A40(v18, v21, __p, 1, 0, a7, a8, 1, a5, a6, a9, 0, a10);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }
}

- (void)registerPhenolicInterestZoneForClientKey:(id)a3 withId:(id)a4 phenolicLocation:(int)a5 serviceMaskOperator:(int)a6 provenanceType:(int)a7 withReply:(id)a8
{
  v11 = *&a5;
  v14 = [(CLClientManagerAdapter *)self adaptee];
  sub_10000EC00(v17, [a3 UTF8String]);
  sub_10000EC00(__p, [a4 UTF8String]);
  sub_100796A40(v14, v17, __p, 2, v11, a6, a7, 1, -1.0, -1.0, -1.0, 0, a8);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }
}

- (void)setRelevance:(BOOL)a3 forInterestZoneWithId:(id)a4 registeredForClientKey:(id)a5 withReply:(id)a6
{
  v9 = a3;
  v10 = [(CLClientManagerAdapter *)self adaptee];
  sub_10000EC00(v13, [a5 UTF8String]);
  sub_10000EC00(__p, [a4 UTF8String]);
  sub_1007976E8(v10, v13, __p, v9, a6);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }
}

- (void)setRelevance:(BOOL)a3 forInterestZoneWithId:(id)a4 registeredForClientKey:(id)a5
{
  v7 = a3;
  v8 = [(CLClientManagerAdapter *)self adaptee];
  sub_10000EC00(v11, [a5 UTF8String]);
  sub_10000EC00(__p, [a4 UTF8String]);
  sub_1007976E8(v8, v11, __p, v7, 0);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }
}

- (void)deleteInterestZoneWithId:(id)a3 registeredForClientKey:(id)a4 withReply:(id)a5
{
  v8 = [(CLClientManagerAdapter *)self adaptee];
  sub_10000EC00(v11, [a4 UTF8String]);
  sub_10000EC00(__p, [a3 UTF8String]);
  sub_100797CA0(v8, v11, __p, a5);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }
}

- (void)setIncidentalUseMode:(int)a3 forClient:(id)a4
{
  v4 = *&a3;
  (*(a4 + 2))(v7, a4, a2);
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

- (void)setVisitHistoryAccess:(int)a3 forClient:(id)a4
{
  v4 = *&a3;
  v6 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:a4];
  v7 = [(CLClientManagerAdapter *)self adaptee];

  sub_100798220(v7, v6, v4);
}

- (void)setLearnedRoutesAccess:(int)a3 forClient:(id)a4
{
  v4 = *&a3;
  v6 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:a4];
  v7 = [(CLClientManagerAdapter *)self adaptee];

  sub_10079856C(v7, v6, v4);
}

- (void)setLocationButtonUseMode:(int)a3 forClient:(id)a4
{
  v4 = *&a3;
  (*(a4 + 2))(v7, a4, a2);
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
  v2 = [(CLClientManagerAdapter *)self adaptee];
  v3 = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.Maps" anchorType:105];

  return sub_100798960(v2, v3);
}

- (id)syncgetApplyArchivedAuthorizationDecisionsAndDie:(id)a3 unlessTokenMatches:(id)a4
{
  v6 = [(CLClientManagerAdapter *)self adaptee];

  return sub_100780350(v6, a3, a4);
}

- (id)syncgetArchivedAuthorizationDecisions
{
  v2 = [(CLClientManagerAdapter *)self adaptee];

  return sub_10077FF70(v2);
}

- (void)checkWeakPersistentClientWithIdentifier:(id)a3
{
  v4 = [(CLClientManagerAdapter *)self adaptee];
  (*(a3 + 2))(v5, a3);
  sub_1007774D0(v4, v5);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

- (void)handleProvisionalIntermediationForService:(unint64_t)a3 forClientKey:(id)a4 at:(id)a5 withReply:(id)a6
{
  v7 = a5;
  if (!a5)
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
    v7 = [v11 initWithClientLocation:v19];
  }

  v17 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:a4];
  v18 = [(CLClientManagerAdapter *)self adaptee];
  if (v7)
  {
    [v7 clientLocation];
  }

  else
  {
    v21 = 0u;
    memset(v22, 0, 28);
    v20 = 0u;
    memset(v19, 0, sizeof(v19));
  }

  sub_100045AEC(v18, a3, v17, v19, a6);
}

- (void)considerPromptingForIncidentalUseForCkp:(id)a3
{
  v4 = [(CLClientManagerAdapter *)self adaptee];

  sub_10077834C(v4, a3);
}

- (void)learnedRoutesSupportedForClient:(id)a3 withReply:(id)a4
{
  v6 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:a3];
  v7 = [(CLClientManagerAdapter *)self adaptee];

  sub_100798CB4(v7, v6, a4);
}

- (void)attemptSpendOneForPushClient:(id)a3 withReply:(id)a4
{
  v6 = [(CLClientManagerAdapter *)self adaptee];

  sub_100798E08(v6, a3, a4);
}

- (void)setTemporaryAuthorizationStatusInfoForClient:(id)a3 data:(id)a4
{
  (*(a3 + 2))(v7, a3, a2);
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

  sub_100798F74([(CLClientManagerAdapter *)self adaptee], v6, a4);
}

- (id)syncgetTemporaryAuthorizationStatusForClient:(id)a3
{
  (*(a3 + 2))(v6, a3, a2);
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

- (double)syncgetAndSetOrChangeAppClipAuthorizationTime:(double)a3 forClient:(id)a4
{
  (*(a4 + 2))(v8, a4, a2);
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

  sub_10079A3A4([(CLClientManagerAdapter *)self adaptee], v6, a3);
  return -1.0;
}

- (void)triggerClearAppClipAuthorizationIfNecessary
{
  v2 = [(CLClientManagerAdapter *)self adaptee];

  sub_10079A6C8(v2, 14400.0);
}

- (void)handleLiveActivityUpdate:(id)a3
{
  v4 = [(CLClientManagerAdapter *)self adaptee];

  sub_1002FA8A4(v4, a3);
}

- (void)calculateCheeseCoverage:(id)a3 interestInterval:(id)a4 withOptions:(id)a5 lookbackWindowStartDate:(id)a6 withReply:(id)a7
{
  v12 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:a3];
  v13 = [(CLClientManagerAdapter *)self adaptee];

  sub_100786AA8(v13, v12, a4, a5, a6, a7);
}

- (void)getClientManagerInternalStateWithReply:(id)a3
{
  v4 = sub_100786074([(CLClientManagerAdapter *)self adaptee]);
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)requestPinnedLocationAuthorizationWithPayload:(id)a3
{
  if (!sub_100783014([(CLClientManagerAdapter *)self adaptee], a3))
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