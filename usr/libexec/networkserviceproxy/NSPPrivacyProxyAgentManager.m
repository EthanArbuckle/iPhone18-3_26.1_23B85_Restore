@interface NSPPrivacyProxyAgentManager
+ (BOOL)proxiesMatch:(id)a3 proxyPathList:(id)a4 ingressProxy:(id)a5 egressProxy:(id)a6 pathWeight:(unint64_t)a7 supportsFallback:(BOOL)a8;
+ (void)removeProxyInfoFromKeychain;
- (BOOL)configurationFetchDateIsWithinStart:(id)a3 end:(id)a4;
- (BOOL)isMultiHopFallbackProxyAgentRegistered;
- (BOOL)isMultiHopProxyAgentRegistered;
- (BOOL)isSingleHopFallbackProxyAgentRegistered;
- (BOOL)isSingleHopProxyAgentRegistered;
- (BOOL)networkDiscoveredProxyPresentInAgentManager;
- (BOOL)proxiedContentMapIsOverrideEnabled:(id)a3;
- (BOOL)proxyInfo:(id)a3 matchesProxyIndex:(unint64_t)a4;
- (NSPPrivacyProxyAgentManager)initWithCoder:(id)a3;
- (NSPPrivacyProxyAgentManager)initWithDelegate:(id)a3 toggleStats:(id)a4;
- (NSString)description;
- (id)alternatePreferredPathAgentUUIDs:(id)a3;
- (id)copyDomainFiltersDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)ingressFallbackProxyURL;
- (id)ingressProxyURL;
- (id)lastProxyOutageReason;
- (id)lastTokenOutageReason;
- (id)multiHopFallbackProxyConfigHash:(id)a3;
- (id)multiHopQUICProxyConfigHash:(id)a3;
- (id)singleHopFallbackProxyConfigHash:(id)a3;
- (id)singleHopQUICProxyConfigHash:(id)a3;
- (id)tierString;
- (void)copyProxyInfo:(id)a3;
- (void)dealloc;
- (void)didReceiveUpdatedPvDOptions:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)forceFallback:(BOOL)a3;
- (void)handleConfigChange;
- (void)handleLinkQualityChange:(int)a3;
- (void)handlePathChange:(id)a3;
- (void)handleTierChange:(BOOL)a3;
- (void)handleUnlimitedChange:(BOOL)a3;
- (void)mergeTokenStats:(id)a3;
- (void)multiHopAgentRegistered:(id)a3;
- (void)multiHopAgentUnregistered:(id)a3;
- (void)obliviousHopAgentRegistered:(id)a3 hostname:(id)a4 processes:(id)a5 agentUUID:(id)a6;
- (void)obliviousHopAgentUnregistered:(id)a3 hostname:(id)a4 agentUUID:(id)a5;
- (void)overrideIngressProxy:(id)a3 fallbackProxy:(id)a4 key:(id)a5;
- (void)overridePreferredObliviousProxy:(id)a3;
- (void)overridePreferredProxy:(id)a3;
- (void)overrideProxiedContentMap:(id)a3 enabled:(BOOL)a4;
- (void)probeFailed:(id)a3;
- (void)probeRedirected:(id)a3;
- (void)probeServerError:(id)a3 httpStatusCode:(int64_t)a4;
- (void)probeSuccess:(id)a3;
- (void)proxiedContentAgentRegistered:(id)a3;
- (void)proxiedContentAgentUnregistered:(id)a3;
- (void)removeExpiredTokens;
- (void)reportActivityForApp:(id)a3 path:(id)a4;
- (void)reportProxySuccessOnInterface:(id)a3 proxyPath:(id)a4;
- (void)reportTokenFetchFailure:(id)a3 statusCode:(int64_t)a4;
- (void)requestAccessTokenWithCompletionHandler:(id)a3;
- (void)resetProxyErrors;
- (void)sendRTCReportForServiceOutage:(id)a3;
- (void)setProxiedContentMapDoHBootstrapEnabled:(BOOL)a3;
- (void)setUserEventAgentProberParameters;
- (void)setUserEventAgentTokenFetchParameters;
- (void)setupMasqueProxyWith:(id)a3;
- (void)singleHopAgentRegistered:(id)a3;
- (void)singleHopAgentUnregistered:(id)a3;
- (void)switchProxy:(id)a3;
- (void)tearDownNetworkDiscoveredProxy;
- (void)tokenAdded;
- (void)tokenFetched;
- (void)tokenInfoInvalid:(id)a3;
- (void)tokenLowWaterMarkReached:(id)a3;
- (void)tokenRateLimited:(id)a3 untilDate:(double)a4;
- (void)tokensEmpty;
- (void)updateConfigEpoch:(id)a3;
- (void)updateProxyInfo:(id)a3 resolverInfo:(id)a4 proxyPathList:(id)a5 fallbackProxyPathList:(id)a6 obliviousConfigs:(id)a7 proxiedContentMaps:(id)a8;
- (void)updateUserEventAgentData;
- (void)useDefaultNetworkInterface:(BOOL)a3;
@end

@implementation NSPPrivacyProxyAgentManager

+ (BOOL)proxiesMatch:(id)a3 proxyPathList:(id)a4 ingressProxy:(id)a5 egressProxy:(id)a6 pathWeight:(unint64_t)a7 supportsFallback:(BOOL)a8
{
  v28 = a8;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v29 = a6;
  if (!v13)
  {
    obj = nplog_obj();
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_26;
    }

    *buf = 136315138;
    v37 = "+[NSPPrivacyProxyAgentManager proxiesMatch:proxyPathList:ingressProxy:egressProxy:pathWeight:supportsFallback:]";
    v26 = "%s called with null proxyInfoArray";
LABEL_34:
    _os_log_fault_impl(&_mh_execute_header, obj, OS_LOG_TYPE_FAULT, v26, buf, 0xCu);
    goto LABEL_26;
  }

  if (!v15)
  {
    obj = nplog_obj();
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_26;
    }

    *buf = 136315138;
    v37 = "+[NSPPrivacyProxyAgentManager proxiesMatch:proxyPathList:ingressProxy:egressProxy:pathWeight:supportsFallback:]";
    v26 = "%s called with null matchIngressProxy";
    goto LABEL_34;
  }

  if (!v29)
  {
    obj = nplog_obj();
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_26;
    }

    *buf = 136315138;
    v37 = "+[NSPPrivacyProxyAgentManager proxiesMatch:proxyPathList:ingressProxy:egressProxy:pathWeight:supportsFallback:]";
    v26 = "%s called with null matchEgressProxy";
    goto LABEL_34;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v14;
  v16 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v27 = v14;
    v18 = *v32;
LABEL_6:
    v19 = 0;
    while (1)
    {
      if (*v32 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v31 + 1) + 8 * v19);
      if (!a7 || [*(*(&v31 + 1) + 8 * v19) weight] == a7)
      {
        if ([v20 proxiesCount] != 2)
        {
          v24 = nplog_obj();
          v14 = v27;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315138;
            v37 = "+[NSPPrivacyProxyAgentManager proxiesMatch:proxyPathList:ingressProxy:egressProxy:pathWeight:supportsFallback:]";
            _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "%s called with null (proxyPath.proxiesCount == MAX_PROXIES_ON_PATH)", buf, 0xCu);
          }

          break;
        }

        v21 = [v13 objectAtIndex:{*objc_msgSend(v20, "proxies")}];
        v22 = [v13 objectAtIndex:{*(objc_msgSend(v20, "proxies") + 1)}];
        if (sub_10001D314(NSPPrivacyProxyAgentManager, v21, v15) && sub_10001D314(a1, v22, v29) && (!v28 || [v21 supportsFallback] && objc_msgSend(v22, "supportsFallback")))
        {

          v23 = 1;
LABEL_22:
          v14 = v27;
          goto LABEL_27;
        }
      }

      if (v17 == ++v19)
      {
        v17 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v17)
        {
          goto LABEL_6;
        }

        v23 = 0;
        goto LABEL_22;
      }
    }
  }

LABEL_26:
  v23 = 0;
LABEL_27:

  return v23;
}

- (NSString)description
{
  if (self)
  {
    v3 = [[NSMutableString alloc] initWithCapacity:0];
    sub_1000417D0(v3, self->_quicProxyPath, @"Quic proxy path", 0, 14);
    sub_1000417D0(v3, self->_fallbackProxyPath, @"Fallback proxy path", 0, 14);
    sub_1000417D0(v3, self->_preferredQUICProxyPaths, @"Preferred proxy paths", 0, 14);
    sub_1000417D0(v3, self->_candidateQuicProxyPath, @"Candidate quic proxy path", 0, 14);
    sub_1000417D0(v3, self->_candidateFallbackProxyPath, @"Candidate fallback proxy path", 0, 14);
    sub_1000417D0(v3, self->_candidatePreferredQUICProxyPaths, @"Candidate preferred proxy paths", 0, 14);
    sub_1000417D0(v3, self->_proxiedContentPaths, @"Proxied content paths", 0, 14);
    sub_1000417D0(v3, self->_networkSpecificQUICProxyPaths, @"Network specific proxied paths", 0, 14);
    sub_1000417D0(v3, self->_networkDiscoveredProxyInfos, @"Network discovered proxy ingree", 0, 14);
    sub_1000417D0(v3, self->_obliviousPaths, @"Oblivious paths", 0, 14);
    sub_1000417D0(v3, self->_proxyPathCustomEnumerator, @"Proxy path enumerator", 0, 14);
    sub_1000417D0(v3, self->_fallbackProxyPathCustomEnumerator, @"Fallback proxy path enumerator", 0, 14);
    sub_1000417D0(v3, self->_obliviousConfigs, @"Oblivious configs", 0, 14);
    sub_1000417D0(v3, self->_penalizedObliviousProxyIndices, @"Penalized oblivious proxy indicies", 0, 14);
    sub_1000417D0(v3, self->_proxiedContentMaps, @"Proxied content maps", 0, 14);
    v4 = [(NSPPrivacyProxyAgentManager *)self tokenIssuanceRestrictedUntilDate];
    v5 = [NSDateFormatter localizedStringFromDate:v4 dateStyle:1 timeStyle:2];
    sub_1000417D0(v3, v5, @"Token issuance restricted", 0, 14);

    v6 = [(NSPPrivacyProxyAgentManager *)self overridePreferredProxy];
    sub_1000417D0(v3, v6, @"Override preferred proxy", 0, 14);

    v7 = [(NSPPrivacyProxyAgentManager *)self overridePreferredObliviousProxy];
    sub_1000417D0(v3, v7, @"Override preferred oblivious proxy", 0, 14);

    v8 = [(NSPPrivacyProxyAgentManager *)self overrideIngressProxy];
    sub_1000417D0(v3, v8, @"Override ingress proxy", 0, 14);

    v9 = [(NSPPrivacyProxyAgentManager *)self overrideFallbackIngressProxy];
    sub_1000417D0(v3, v9, @"Override fallback ingress proxy", 0, 14);

    v10 = [(NSPPrivacyProxyAgentManager *)self overrideIngressProxyKey];
    sub_1000417D0(v3, v10, @"Override ingress proxy key", 0, 14);

    sub_1000417D0(v3, self->_overrideEnabledMaps, @"Override enabled maps", 0, 14);
    sub_100042020(v3, self->_disableProxiedContentDoHBootstrap, @"Disable proxied content maps DoH bootstrap", 0, 14);
    sub_100042020(v3, [(NSPPrivacyProxyAgentManager *)self forceFallback], @"Force fallback", 0, 14);
    sub_10004208C(v3, self->_networkProxiesRotated, @"Network proxies rotated", 0, 14);
    sub_10004208C(v3, self->_networkFallbackProxiesRotated, @"Network fallback proxies rotated", 0, 14);
    sub_10004208C(v3, self->_proxiesRotated, @"Proxies rotated", 0, 14);
    sub_1000417D0(v3, self->_proxyPathProber, @"Proxy path prober", 0, 14);
    sub_1000417D0(v3, self->_directPathProber, @"Direct path prober", 0, 14);
    sub_1000417D0(v3, self->_pvdConfigurationFetcher, @"Fetch PvD Options Configuration", 0, 14);
    sub_10004208C(v3, self->_probingReason, @"Probing reason", 0, 14);
    sub_100042020(v3, self->_reportedTokenOutage, @"Reported token outage", 0, 14);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSPPrivacyProxyAgentManager)initWithCoder:(id)a3
{
  v4 = a3;
  v111.receiver = self;
  v111.super_class = NSPPrivacyProxyAgentManager;
  v5 = [(NSPPrivacyProxyAgentManager *)&v111 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"proxyAgentProxyArray"];
    proxyArray = v5->_proxyArray;
    v5->_proxyArray = v6;

    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"proxyAgentResolverArray"];
    resolverArray = v5->_resolverArray;
    v5->_resolverArray = v8;

    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"proxyAgentProxyPathList"];
    proxyPathList = v5->_proxyPathList;
    v5->_proxyPathList = v10;

    v12 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"proxyAgentFallbackProxyPathList"];
    fallbackProxyPathList = v5->_fallbackProxyPathList;
    v5->_fallbackProxyPathList = v12;

    v14 = objc_opt_class();
    v15 = [NSSet setWithObjects:v14, objc_opt_class(), 0];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"proxyAgentObliviousConfigs"];
    obliviousConfigs = v5->_obliviousConfigs;
    v5->_obliviousConfigs = v16;

    v18 = objc_opt_class();
    v19 = [NSSet setWithObjects:v18, objc_opt_class(), 0];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"proxyAgentProxiedContentMaps"];
    proxiedContentMaps = v5->_proxiedContentMaps;
    v5->_proxiedContentMaps = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentOverridePreferredProxy"];
    overridePreferredProxy = v5->_overridePreferredProxy;
    v5->_overridePreferredProxy = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentOverridePreferredObliviousProxy"];
    overridePreferredObliviousProxy = v5->_overridePreferredObliviousProxy;
    v5->_overridePreferredObliviousProxy = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentOverrideIngressProxy"];
    overrideIngressProxy = v5->_overrideIngressProxy;
    v5->_overrideIngressProxy = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentOverrideFallbackIngressProxy"];
    overrideFallbackIngressProxy = v5->_overrideFallbackIngressProxy;
    v5->_overrideFallbackIngressProxy = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentOverrideIngressProxyKey"];
    overrideIngressProxyKey = v5->_overrideIngressProxyKey;
    v5->_overrideIngressProxyKey = v30;

    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = [NSSet setWithObjects:v32, v33, objc_opt_class(), 0];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"proxyAgentOverrideEnabledMaps"];
    v36 = [v35 mutableCopy];
    overrideEnabledMaps = v5->_overrideEnabledMaps;
    v5->_overrideEnabledMaps = v36;

    v5->_disableProxiedContentDoHBootstrap = [v4 decodeBoolForKey:@"proxyAgentDisableProxiedContentDoHBootstrap"];
    v5->_forceFallback = [v4 decodeBoolForKey:@"proxyAgentForceFallbackKey"];
    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentQuicProxyPath"];
    quicProxyPath = v5->_quicProxyPath;
    v5->_quicProxyPath = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentFallbackProxyPath"];
    fallbackProxyPath = v5->_fallbackProxyPath;
    v5->_fallbackProxyPath = v40;

    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v44 = [NSSet setWithObjects:v42, v43, objc_opt_class(), 0];
    v45 = [v4 decodeObjectOfClasses:v44 forKey:@"proxyAgentPreferredQuicProxyPaths"];
    preferredQUICProxyPaths = v5->_preferredQUICProxyPaths;
    v5->_preferredQUICProxyPaths = v45;

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentCandidateQuicProxyPath"];
    candidateQuicProxyPath = v5->_candidateQuicProxyPath;
    v5->_candidateQuicProxyPath = v47;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentCandidateFallbackProxyPath"];
    candidateFallbackProxyPath = v5->_candidateFallbackProxyPath;
    v5->_candidateFallbackProxyPath = v49;

    v51 = objc_opt_class();
    v52 = objc_opt_class();
    v53 = [NSSet setWithObjects:v51, v52, objc_opt_class(), 0];
    v54 = [v4 decodeObjectOfClasses:v53 forKey:@"proxyAgentCandidatePreferredQuicProxyPaths"];
    candidatePreferredQUICProxyPaths = v5->_candidatePreferredQUICProxyPaths;
    v5->_candidatePreferredQUICProxyPaths = v54;

    v56 = objc_opt_class();
    v57 = [NSSet setWithObjects:v56, objc_opt_class(), 0];
    v58 = [v4 decodeObjectOfClasses:v57 forKey:@"proxyAgentProxiedContentPaths"];
    proxiedContentPaths = v5->_proxiedContentPaths;
    v5->_proxiedContentPaths = v58;

    v60 = objc_opt_class();
    v61 = objc_opt_class();
    v62 = [NSSet setWithObjects:v60, v61, objc_opt_class(), 0];
    v63 = [v4 decodeObjectOfClasses:v62 forKey:@"proxyAgentNetworkQuicProxyPaths"];
    networkSpecificQUICProxyPaths = v5->_networkSpecificQUICProxyPaths;
    v5->_networkSpecificQUICProxyPaths = v63;

    v65 = objc_opt_class();
    v66 = objc_opt_class();
    v67 = [NSSet setWithObjects:v65, v66, objc_opt_class(), 0];
    v68 = [v4 decodeObjectOfClasses:v67 forKey:@"proxyAgentNetworkDiscoveredProxyInfos"];
    networkDiscoveredProxyInfos = v5->_networkDiscoveredProxyInfos;
    v5->_networkDiscoveredProxyInfos = v68;

    v70 = objc_opt_class();
    v71 = [NSSet setWithObjects:v70, objc_opt_class(), 0];
    v72 = [v4 decodeObjectOfClasses:v71 forKey:@"proxyAgentObliviousPaths"];
    obliviousPaths = v5->_obliviousPaths;
    v5->_obliviousPaths = v72;

    v74 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentLastQuicProxySwitchedDate"];
    lastQuicProxySwitchedDate = v5->_lastQuicProxySwitchedDate;
    v5->_lastQuicProxySwitchedDate = v74;

    v76 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentLastFallbackProxySwitchedDate"];
    lastFallbackProxySwitchedDate = v5->_lastFallbackProxySwitchedDate;
    v5->_lastFallbackProxySwitchedDate = v76;

    v78 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentProbeStartTime"];
    probeStartTime = v5->_probeStartTime;
    v5->_probeStartTime = v78;

    v80 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentProbeEndTime"];
    probeEndTime = v5->_probeEndTime;
    v5->_probeEndTime = v80;

    v82 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"proxyAgentProxyTokenInfoArray"];
    if (v82)
    {
      v83 = [NSMutableArray arrayWithArray:v82];
      proxyTokenInfoArray = v5->_proxyTokenInfoArray;
      v5->_proxyTokenInfoArray = v83;
    }

    v85 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentTokenIssuanceRestrictedUntilDate"];
    tokenIssuanceRestrictedUntilDate = v5->_tokenIssuanceRestrictedUntilDate;
    v5->_tokenIssuanceRestrictedUntilDate = v85;

    v87 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentLastPathUnsatisfiedDate"];
    lastPathUnsatisfiedDate = v5->_lastPathUnsatisfiedDate;
    v5->_lastPathUnsatisfiedDate = v87;

    v89 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentLastPrimaryInterfaceChangeDate"];
    lastPrimaryInterfaceChangedDate = v5->_lastPrimaryInterfaceChangedDate;
    v5->_lastPrimaryInterfaceChangedDate = v89;

    v91 = objc_opt_class();
    v92 = objc_opt_class();
    v93 = objc_opt_class();
    v94 = [NSSet setWithObjects:v91, v92, v93, objc_opt_class(), 0];
    v95 = [v4 decodeObjectOfClasses:v94 forKey:@"proxyAgentNetworkCharacteristics"];
    networkCharacteristics = v5->_networkCharacteristics;
    v5->_networkCharacteristics = v95;

    v5->_useDefaultInterface = [v4 decodeBoolForKey:@"proxyAgentUseDefaultInterface"];
    v5->_subscriber = [v4 decodeBoolForKey:@"proxyAgentSubscriber"];
    v5->_unlimited = [v4 decodeBoolForKey:@"proxyAgentUnlimited"];
    v5->_geohashSharingEnabled = [v4 decodeBoolForKey:@"proxyAgentGeohashSharingEnabled"];
    v97 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentGeohashOverride"];
    [(NSPPrivacyProxyAgentManager *)v5 setGeohashOverride:v97];

    -[NSPPrivacyProxyAgentManager setDnsFilteringHintEnabled:](v5, "setDnsFilteringHintEnabled:", [v4 decodeBoolForKey:@"proxyAgentDNSFilteringHintEnabled"]);
    v5->_networkProxiesRotated = [v4 decodeIntegerForKey:@"proxyAgentNetworkProxiesRotated"];
    v5->_networkFallbackProxiesRotated = [v4 decodeIntegerForKey:@"proxyAgentNetworkFallbackProxiesRotated"];
    v5->_proxiesRotated = [v4 decodeIntegerForKey:@"proxyAgentProxiesRotated"];
    v98 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentProxyPathProber"];
    proxyPathProber = v5->_proxyPathProber;
    v5->_proxyPathProber = v98;

    v100 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentDirectPathProber"];
    directPathProber = v5->_directPathProber;
    v5->_directPathProber = v100;

    v102 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentLastProxyOutageReasonStats"];
    lastProxyOutageReasonStats = v5->_lastProxyOutageReasonStats;
    v5->_lastProxyOutageReasonStats = v102;

    v104 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentLastTokenOutageReasonStats"];
    lastTokenOutageReasonStats = v5->_lastTokenOutageReasonStats;
    v5->_lastTokenOutageReasonStats = v104;

    v5->_probingReason = [v4 decodeIntegerForKey:@"proxyAgentProbingReason"];
    v5->_reportedTokenOutage = [v4 decodeBoolForKey:@"proxyAgentReportedTokenOutage"];
    v106 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentConfigEpoch"];
    configEpoch = v5->_configEpoch;
    v5->_configEpoch = v106;

    v108 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAgentReportedEpoch"];
    reportedEpoch = v5->_reportedEpoch;
    v5->_reportedEpoch = v108;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  if (self)
  {
    [v15 encodeObject:self->_proxyArray forKey:@"proxyAgentProxyArray"];
    [v15 encodeObject:self->_resolverArray forKey:@"proxyAgentResolverArray"];
    [v15 encodeObject:self->_proxyPathList forKey:@"proxyAgentProxyPathList"];
    [v15 encodeObject:self->_fallbackProxyPathList forKey:@"proxyAgentFallbackProxyPathList"];
    [v15 encodeObject:self->_obliviousConfigs forKey:@"proxyAgentObliviousConfigs"];
    proxiedContentMaps = self->_proxiedContentMaps;
  }

  else
  {
    [v15 encodeObject:0 forKey:@"proxyAgentProxyArray"];
    [v15 encodeObject:0 forKey:@"proxyAgentResolverArray"];
    [v15 encodeObject:0 forKey:@"proxyAgentProxyPathList"];
    [v15 encodeObject:0 forKey:@"proxyAgentFallbackProxyPathList"];
    [v15 encodeObject:0 forKey:@"proxyAgentObliviousConfigs"];
    proxiedContentMaps = 0;
  }

  [v15 encodeObject:proxiedContentMaps forKey:@"proxyAgentProxiedContentMaps"];
  v5 = [(NSPPrivacyProxyAgentManager *)self overridePreferredProxy];
  [v15 encodeObject:v5 forKey:@"proxyAgentOverridePreferredProxy"];

  v6 = [(NSPPrivacyProxyAgentManager *)self overridePreferredObliviousProxy];
  [v15 encodeObject:v6 forKey:@"proxyAgentOverridePreferredObliviousProxy"];

  v7 = [(NSPPrivacyProxyAgentManager *)self overrideIngressProxy];
  [v15 encodeObject:v7 forKey:@"proxyAgentOverrideIngressProxy"];

  v8 = [(NSPPrivacyProxyAgentManager *)self overrideFallbackIngressProxy];
  [v15 encodeObject:v8 forKey:@"proxyAgentOverrideFallbackIngressProxy"];

  v9 = [(NSPPrivacyProxyAgentManager *)self overrideIngressProxyKey];
  [v15 encodeObject:v9 forKey:@"proxyAgentOverrideIngressProxyKey"];

  if (self)
  {
    [v15 encodeObject:self->_overrideEnabledMaps forKey:@"proxyAgentOverrideEnabledMaps"];
    [v15 encodeBool:self->_disableProxiedContentDoHBootstrap forKey:@"proxyAgentDisableProxiedContentDoHBootstrap"];
    [v15 encodeObject:self->_quicProxyPath forKey:@"proxyAgentQuicProxyPath"];
    [v15 encodeObject:self->_fallbackProxyPath forKey:@"proxyAgentFallbackProxyPath"];
    [v15 encodeObject:self->_preferredQUICProxyPaths forKey:@"proxyAgentPreferredQuicProxyPaths"];
    [v15 encodeObject:self->_candidateQuicProxyPath forKey:@"proxyAgentCandidateQuicProxyPath"];
    [v15 encodeObject:self->_candidateFallbackProxyPath forKey:@"proxyAgentCandidateFallbackProxyPath"];
    [v15 encodeObject:self->_candidatePreferredQUICProxyPaths forKey:@"proxyAgentCandidatePreferredQuicProxyPaths"];
    [v15 encodeObject:self->_proxiedContentPaths forKey:@"proxyAgentProxiedContentPaths"];
    [v15 encodeObject:self->_networkSpecificQUICProxyPaths forKey:@"proxyAgentNetworkQuicProxyPaths"];
    [v15 encodeObject:self->_networkDiscoveredProxyInfos forKey:@"proxyAgentNetworkDiscoveredProxyInfos"];
    [v15 encodeObject:self->_obliviousPaths forKey:@"proxyAgentObliviousPaths"];
    [v15 encodeObject:self->_lastQuicProxySwitchedDate forKey:@"proxyAgentLastQuicProxySwitchedDate"];
    [v15 encodeObject:self->_lastFallbackProxySwitchedDate forKey:@"proxyAgentLastFallbackProxySwitchedDate"];
    [v15 encodeObject:self->_probeStartTime forKey:@"proxyAgentProbeStartTime"];
    [v15 encodeObject:self->_probeEndTime forKey:@"proxyAgentProbeEndTime"];
    proxyTokenInfoArray = self->_proxyTokenInfoArray;
  }

  else
  {
    [v15 encodeObject:0 forKey:@"proxyAgentOverrideEnabledMaps"];
    [v15 encodeBool:0 forKey:@"proxyAgentDisableProxiedContentDoHBootstrap"];
    [v15 encodeObject:0 forKey:@"proxyAgentQuicProxyPath"];
    [v15 encodeObject:0 forKey:@"proxyAgentFallbackProxyPath"];
    [v15 encodeObject:0 forKey:@"proxyAgentPreferredQuicProxyPaths"];
    [v15 encodeObject:0 forKey:@"proxyAgentCandidateQuicProxyPath"];
    [v15 encodeObject:0 forKey:@"proxyAgentCandidateFallbackProxyPath"];
    [v15 encodeObject:0 forKey:@"proxyAgentCandidatePreferredQuicProxyPaths"];
    [v15 encodeObject:0 forKey:@"proxyAgentProxiedContentPaths"];
    [v15 encodeObject:0 forKey:@"proxyAgentNetworkQuicProxyPaths"];
    [v15 encodeObject:0 forKey:@"proxyAgentNetworkDiscoveredProxyInfos"];
    [v15 encodeObject:0 forKey:@"proxyAgentObliviousPaths"];
    [v15 encodeObject:0 forKey:@"proxyAgentLastQuicProxySwitchedDate"];
    [v15 encodeObject:0 forKey:@"proxyAgentLastFallbackProxySwitchedDate"];
    [v15 encodeObject:0 forKey:@"proxyAgentProbeStartTime"];
    [v15 encodeObject:0 forKey:@"proxyAgentProbeEndTime"];
    proxyTokenInfoArray = 0;
  }

  [v15 encodeObject:proxyTokenInfoArray forKey:@"proxyAgentProxyTokenInfoArray"];
  v11 = [(NSPPrivacyProxyAgentManager *)self tokenIssuanceRestrictedUntilDate];
  [v15 encodeObject:v11 forKey:@"proxyAgentTokenIssuanceRestrictedUntilDate"];

  if (self)
  {
    [v15 encodeObject:self->_lastPathUnsatisfiedDate forKey:@"proxyAgentLastPathUnsatisfiedDate"];
    [v15 encodeObject:self->_lastPrimaryInterfaceChangedDate forKey:@"proxyAgentLastPrimaryInterfaceChangeDate"];
    [v15 encodeObject:self->_networkCharacteristics forKey:@"proxyAgentNetworkCharacteristics"];
    [v15 encodeBool:self->_useDefaultInterface forKey:@"proxyAgentUseDefaultInterface"];
    [v15 encodeBool:self->_subscriber forKey:@"proxyAgentSubscriber"];
    [v15 encodeBool:self->_unlimited forKey:@"proxyAgentUnlimited"];
    geohashSharingEnabled = self->_geohashSharingEnabled;
  }

  else
  {
    [v15 encodeObject:0 forKey:@"proxyAgentLastPathUnsatisfiedDate"];
    [v15 encodeObject:0 forKey:@"proxyAgentLastPrimaryInterfaceChangeDate"];
    [v15 encodeObject:0 forKey:@"proxyAgentNetworkCharacteristics"];
    [v15 encodeBool:0 forKey:@"proxyAgentUseDefaultInterface"];
    [v15 encodeBool:0 forKey:@"proxyAgentSubscriber"];
    [v15 encodeBool:0 forKey:@"proxyAgentUnlimited"];
    geohashSharingEnabled = 0;
  }

  [v15 encodeBool:geohashSharingEnabled forKey:@"proxyAgentGeohashSharingEnabled"];
  v13 = [(NSPPrivacyProxyAgentManager *)self geohashOverride];
  [v15 encodeObject:v13 forKey:@"proxyAgentGeohashOverride"];

  [v15 encodeBool:-[NSPPrivacyProxyAgentManager dnsFilteringHintEnabled](self forKey:{"dnsFilteringHintEnabled"), @"proxyAgentDNSFilteringHintEnabled"}];
  if (self)
  {
    [v15 encodeInteger:self->_networkProxiesRotated forKey:@"proxyAgentNetworkProxiesRotated"];
    [v15 encodeInteger:self->_networkFallbackProxiesRotated forKey:@"proxyAgentNetworkFallbackProxiesRotated"];
    [v15 encodeInteger:self->_proxiesRotated forKey:@"proxyAgentProxiesRotated"];
    [v15 encodeObject:self->_proxyPathProber forKey:@"proxyAgentProxyPathProber"];
    [v15 encodeObject:self->_directPathProber forKey:@"proxyAgentDirectPathProber"];
    [v15 encodeObject:self->_lastProxyOutageReasonStats forKey:@"proxyAgentLastProxyOutageReasonStats"];
    [v15 encodeObject:self->_lastTokenOutageReasonStats forKey:@"proxyAgentLastTokenOutageReasonStats"];
    [v15 encodeInteger:self->_probingReason forKey:@"proxyAgentProbingReason"];
    [v15 encodeBool:self->_reportedTokenOutage forKey:@"proxyAgentReportedTokenOutage"];
    [v15 encodeObject:self->_configEpoch forKey:@"proxyAgentConfigEpoch"];
    reportedEpoch = self->_reportedEpoch;
  }

  else
  {
    [v15 encodeInteger:0 forKey:@"proxyAgentNetworkProxiesRotated"];
    [v15 encodeInteger:0 forKey:@"proxyAgentNetworkFallbackProxiesRotated"];
    [v15 encodeInteger:0 forKey:@"proxyAgentProxiesRotated"];
    [v15 encodeObject:0 forKey:@"proxyAgentProxyPathProber"];
    [v15 encodeObject:0 forKey:@"proxyAgentDirectPathProber"];
    [v15 encodeObject:0 forKey:@"proxyAgentLastProxyOutageReasonStats"];
    [v15 encodeObject:0 forKey:@"proxyAgentLastTokenOutageReasonStats"];
    [v15 encodeInteger:0 forKey:@"proxyAgentProbingReason"];
    [v15 encodeBool:0 forKey:@"proxyAgentReportedTokenOutage"];
    [v15 encodeObject:0 forKey:@"proxyAgentConfigEpoch"];
    reportedEpoch = 0;
  }

  [v15 encodeObject:reportedEpoch forKey:@"proxyAgentReportedEpoch"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NSPPrivacyProxyAgentManager allocWithZone:?]];
  v5 = v4;
  if (self)
  {
    v6 = self->_proxyArray;
    sub_10001FCA8(v5, v6);

    resolverArray = self->_resolverArray;
  }

  else
  {
    sub_10001FCA8(v4, 0);
    resolverArray = 0;
  }

  v8 = resolverArray;
  sub_10001FCB8(v5, v8);

  if (self)
  {
    v9 = self->_proxyPathList;
    sub_10001FCC8(v5, v9);

    proxyPathCustomEnumerator = self->_proxyPathCustomEnumerator;
  }

  else
  {
    sub_10001FCC8(v5, 0);
    proxyPathCustomEnumerator = 0;
  }

  v11 = proxyPathCustomEnumerator;
  sub_10001FCD8(v5, v11);

  if (self)
  {
    v12 = self->_fallbackProxyPathList;
    sub_10001FCE8(v5, v12);

    fallbackProxyPathCustomEnumerator = self->_fallbackProxyPathCustomEnumerator;
  }

  else
  {
    sub_10001FCE8(v5, 0);
    fallbackProxyPathCustomEnumerator = 0;
  }

  v14 = fallbackProxyPathCustomEnumerator;
  sub_10001FCF8(v5, v14);

  if (self)
  {
    v15 = self->_obliviousConfigs;
    sub_10001FD08(v5, v15);

    penalizedObliviousProxyIndices = self->_penalizedObliviousProxyIndices;
  }

  else
  {
    sub_10001FD08(v5, 0);
    penalizedObliviousProxyIndices = 0;
  }

  v17 = penalizedObliviousProxyIndices;
  sub_10001FD18(v5, v17);

  if (self)
  {
    v18 = self->_proxiedContentMaps;
    sub_10001FD28(v5, v18);

    networkSpecificQUICProxyPaths = self->_networkSpecificQUICProxyPaths;
  }

  else
  {
    sub_10001FD28(v5, 0);
    networkSpecificQUICProxyPaths = 0;
  }

  v20 = networkSpecificQUICProxyPaths;
  if (v5)
  {
    objc_storeStrong((v5 + 328), networkSpecificQUICProxyPaths);
  }

  if (self)
  {
    networkDiscoveredProxyInfos = self->_networkDiscoveredProxyInfos;
  }

  else
  {
    networkDiscoveredProxyInfos = 0;
  }

  v22 = networkDiscoveredProxyInfos;
  sub_10001FD38(v5, v22);

  v23 = [(NSPPrivacyProxyAgentManager *)self overridePreferredProxy];
  sub_100006664(v5, v23);

  v24 = [(NSPPrivacyProxyAgentManager *)self overridePreferredObliviousProxy];
  sub_10000395C(v5, v24);

  v25 = [(NSPPrivacyProxyAgentManager *)self overrideIngressProxy];
  sub_100006B24(v5, v25);

  v26 = [(NSPPrivacyProxyAgentManager *)self overrideFallbackIngressProxy];
  sub_1000050DC(v5, v26);

  v27 = [(NSPPrivacyProxyAgentManager *)self overrideIngressProxyKey];
  sub_10001FD48(v5, v27);

  if (self)
  {
    v28 = self->_overrideEnabledMaps;
    v29 = [(NSMutableArray *)v28 copy];
    sub_10001FD58(v5, v29);

    disableProxiedContentDoHBootstrap = self->_disableProxiedContentDoHBootstrap;
    if (!v5)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v81 = [0 copy];
  sub_10001FD58(v5, v81);

  disableProxiedContentDoHBootstrap = 0;
  if (v5)
  {
LABEL_17:
    *(v5 + 11) = disableProxiedContentDoHBootstrap;
  }

LABEL_18:
  if (self)
  {
    v31 = self->_quicProxyPath;
    sub_10001FD68(v5, v31);

    fallbackProxyPath = self->_fallbackProxyPath;
  }

  else
  {
    sub_10001FD68(v5, 0);
    fallbackProxyPath = 0;
  }

  v33 = fallbackProxyPath;
  sub_10001FD78(v5, v33);

  if (self)
  {
    v34 = self->_candidateQuicProxyPath;
    sub_10001FD88(v5, v34);

    candidateFallbackProxyPath = self->_candidateFallbackProxyPath;
  }

  else
  {
    sub_10001FD88(v5, 0);
    candidateFallbackProxyPath = 0;
  }

  v36 = candidateFallbackProxyPath;
  sub_10001FD98(v5, v36);

  if (self)
  {
    v37 = self->_lastQuicProxySwitchedDate;
    sub_10001FDA8(v5, v37);

    lastFallbackProxySwitchedDate = self->_lastFallbackProxySwitchedDate;
  }

  else
  {
    sub_10001FDA8(v5, 0);
    lastFallbackProxySwitchedDate = 0;
  }

  v39 = lastFallbackProxySwitchedDate;
  if (v5)
  {
    objc_storeStrong((v5 + 296), lastFallbackProxySwitchedDate);
  }

  if (self)
  {
    v40 = self->_proxyTokenInfoArray;
    sub_10001FDB8(v5, v40);

    v41 = [(NSPPrivacyProxyAgentManager *)self tokenIssuanceRestrictedUntilDate];
    sub_10001B680(v5, v41);

    path = self->_path;
  }

  else
  {
    sub_10001FDB8(v5, 0);
    v82 = [0 tokenIssuanceRestrictedUntilDate];
    sub_10001B680(v5, v82);

    path = 0;
  }

  v43 = path;
  sub_10001FDC8(v5, v43);

  if (self)
  {
    v44 = self->_lastPathUnsatisfiedDate;
    sub_10001FDD8(v5, v44);

    lastPrimaryInterfaceChangedDate = self->_lastPrimaryInterfaceChangedDate;
  }

  else
  {
    sub_10001FDD8(v5, 0);
    lastPrimaryInterfaceChangedDate = 0;
  }

  v46 = lastPrimaryInterfaceChangedDate;
  sub_10001FDE8(v5, v46);

  if (self)
  {
    v47 = self->_probeStartTime;
    sub_10001FDF8(v5, v47);

    probeEndTime = self->_probeEndTime;
  }

  else
  {
    sub_10001FDF8(v5, 0);
    probeEndTime = 0;
  }

  v49 = probeEndTime;
  if (v5)
  {
    objc_storeStrong((v5 + 280), probeEndTime);
  }

  if (self)
  {
    v50 = self->_networkCharacteristics;
    sub_10001FE08(v5, v50);

    useDefaultInterface = self->_useDefaultInterface;
    if (!v5)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  sub_10001FE08(v5, 0);
  useDefaultInterface = 0;
  if (v5)
  {
LABEL_36:
    *(v5 + 12) = useDefaultInterface;
  }

LABEL_37:
  if (self)
  {
    subscriber = self->_subscriber;
    if (!v5)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  subscriber = 0;
  if (v5)
  {
LABEL_39:
    *(v5 + 13) = subscriber;
  }

LABEL_40:
  if (self)
  {
    unlimited = self->_unlimited;
    if (!v5)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  unlimited = 0;
  if (v5)
  {
LABEL_42:
    *(v5 + 14) = unlimited;
  }

LABEL_43:
  if (self)
  {
    geohashSharingEnabled = self->_geohashSharingEnabled;
    if (!v5)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  geohashSharingEnabled = 0;
  if (v5)
  {
LABEL_45:
    *(v5 + 15) = geohashSharingEnabled;
  }

LABEL_46:
  v55 = [(NSPPrivacyProxyAgentManager *)self geohashOverride];
  [v5 setGeohashOverride:v55];

  [v5 setDnsFilteringHintEnabled:{-[NSPPrivacyProxyAgentManager dnsFilteringHintEnabled](self, "dnsFilteringHintEnabled")}];
  if (self)
  {
    proxyConnectivityCheckActive = self->_proxyConnectivityCheckActive;
    if (!v5)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  proxyConnectivityCheckActive = 0;
  if (v5)
  {
LABEL_48:
    *(v5 + 16) = proxyConnectivityCheckActive;
  }

LABEL_49:
  if (self)
  {
    tokenFetchSuccessCount = self->_tokenFetchSuccessCount;
    if (!v5)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  tokenFetchSuccessCount = 0;
  if (v5)
  {
LABEL_51:
    *(v5 + 416) = tokenFetchSuccessCount;
  }

LABEL_52:
  if (self)
  {
    tokenFetchFailedCount = self->_tokenFetchFailedCount;
    if (!v5)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  tokenFetchFailedCount = 0;
  if (v5)
  {
LABEL_54:
    *(v5 + 424) = tokenFetchFailedCount;
  }

LABEL_55:
  if (self)
  {
    tokenConsumedCount = self->_tokenConsumedCount;
    if (!v5)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  tokenConsumedCount = 0;
  if (v5)
  {
LABEL_57:
    *(v5 + 432) = tokenConsumedCount;
  }

LABEL_58:
  if (self)
  {
    tokenExpiredCount = self->_tokenExpiredCount;
    if (!v5)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  tokenExpiredCount = 0;
  if (v5)
  {
LABEL_60:
    *(v5 + 440) = tokenExpiredCount;
  }

LABEL_61:
  if (self)
  {
    agentLowWaterMarkHitCount = self->_agentLowWaterMarkHitCount;
    if (!v5)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  agentLowWaterMarkHitCount = 0;
  if (v5)
  {
LABEL_63:
    *(v5 + 448) = agentLowWaterMarkHitCount;
  }

LABEL_64:
  if (self)
  {
    cacheLowWaterMarkHitCount = self->_cacheLowWaterMarkHitCount;
    if (!v5)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  cacheLowWaterMarkHitCount = 0;
  if (v5)
  {
LABEL_66:
    *(v5 + 456) = cacheLowWaterMarkHitCount;
  }

LABEL_67:
  if (self)
  {
    networkProxiesRotated = self->_networkProxiesRotated;
    if (!v5)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  networkProxiesRotated = 0;
  if (v5)
  {
LABEL_69:
    *(v5 + 480) = networkProxiesRotated;
  }

LABEL_70:
  if (self)
  {
    networkFallbackProxiesRotated = self->_networkFallbackProxiesRotated;
    if (!v5)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  networkFallbackProxiesRotated = 0;
  if (v5)
  {
LABEL_72:
    *(v5 + 488) = networkFallbackProxiesRotated;
  }

LABEL_73:
  if (self)
  {
    proxiesRotated = self->_proxiesRotated;
    if (!v5)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  proxiesRotated = 0;
  if (v5)
  {
LABEL_75:
    *(v5 + 496) = proxiesRotated;
  }

LABEL_76:
  if (self)
  {
    generation = self->_generation;
    if (!v5)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  generation = 0;
  if (v5)
  {
LABEL_78:
    *(v5 + 544) = generation;
  }

LABEL_79:
  if (self)
  {
    v67 = self->_proxyPathProber;
    sub_10001FE18(v5, v67);

    directPathProber = self->_directPathProber;
  }

  else
  {
    sub_10001FE18(v5, 0);
    directPathProber = 0;
  }

  v69 = directPathProber;
  if (v5)
  {
    objc_storeStrong((v5 + 248), directPathProber);
  }

  if (self)
  {
    v70 = self->_pvdConfigurationFetcher;
    sub_10001FE28(v5, v70);

    lastProxyOutageReasonStats = self->_lastProxyOutageReasonStats;
  }

  else
  {
    sub_10001FE28(v5, 0);
    lastProxyOutageReasonStats = 0;
  }

  v72 = lastProxyOutageReasonStats;
  if (v5)
  {
    objc_storeStrong((v5 + 504), lastProxyOutageReasonStats);
  }

  if (self)
  {
    v73 = self->_lastTokenOutageReasonStats;
    sub_10001FE38(v5, v73);

    probingReason = self->_probingReason;
    if (!v5)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

  sub_10001FE38(v5, 0);
  probingReason = 0;
  if (v5)
  {
LABEL_89:
    *(v5 + 520) = probingReason;
  }

LABEL_90:
  if (self)
  {
    reportedTokenOutage = self->_reportedTokenOutage;
    if (!v5)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

  reportedTokenOutage = 0;
  if (v5)
  {
LABEL_92:
    *(v5 + 17) = reportedTokenOutage;
  }

LABEL_93:
  if (self)
  {
    v76 = self->_configEpoch;
    sub_10001FE48(v5, v76);

    reportedEpoch = self->_reportedEpoch;
  }

  else
  {
    sub_10001FE48(v5, 0);
    reportedEpoch = 0;
  }

  v78 = reportedEpoch;
  sub_10001FE58(v5, v78);

  v79 = v5;
  return v79;
}

- (void)dealloc
{
  v3 = nplog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Dealloc: \nProxy Agent Manager: %@", buf, 0xCu);
  }

  if (self)
  {
    tokenIssuanceRestrictedUntilTimer = self->_tokenIssuanceRestrictedUntilTimer;
    if (tokenIssuanceRestrictedUntilTimer)
    {
      dispatch_source_cancel(tokenIssuanceRestrictedUntilTimer);
      sub_1000201C0(self);
    }

    proxyPathRestoreTimer = self->_proxyPathRestoreTimer;
    if (proxyPathRestoreTimer)
    {
      dispatch_source_cancel(proxyPathRestoreTimer);
      objc_storeStrong(&self->_proxyPathRestoreTimer, 0);
    }

    replenishTokenTimer = self->_replenishTokenTimer;
    if (replenishTokenTimer)
    {
      dispatch_source_cancel(replenishTokenTimer);
      objc_storeStrong(&self->_replenishTokenTimer, 0);
    }
  }

  +[NSPPrivacyProxyAgentManager removeProxyInfoFromKeychain];
  objc_opt_self();
  _CFPreferencesSetFileProtectionClass();
  CFPreferencesSetAppValue(@"NSPProxyAgentManagerPreferences", 0, kCFPreferencesCurrentApplication);
  v7 = CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
  v8 = nplog_obj();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Removed proxy agent info from preference file", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to remove proxy agent data from preference file", buf, 2u);
  }

  objc_opt_self();
  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "remove userevent agent data", buf, 2u);
  }

  v11 = +[NEFileHandleMaintainer sharedMaintainer];
  [v11 setAuxiliaryData:@"NIL" forKey:@"NSPProxyAgentManagerAuxilaryData"];

  v12 = +[NEFileHandleMaintainer sharedMaintainer];
  [v12 commit];

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained multiHopProxyAgentRegistered:0];

    v14 = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    [0 multiHopProxyAgentRegistered:0];
    v14 = 0;
  }

  [v14 singleHopProxyAgentRegistered:0];

  if (self)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 multiHopFallbackProxyAgentRegistered:0];

    v16 = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    [0 multiHopFallbackProxyAgentRegistered:0];
    v16 = 0;
  }

  [v16 singleHopFallbackProxyAgentRegistered:0];

  if (self)
  {
    ++self->_generation;
  }

  [NPUtilities postNotification:@"com.apple.networkserviceproxy.privacy-proxy-path-changed" value:?];
  v17.receiver = self;
  v17.super_class = NSPPrivacyProxyAgentManager;
  [(NSPPrivacyProxyAgentManager *)&v17 dealloc];
}

- (id)copyDomainFiltersDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  if (self)
  {
    candidatePreferredQUICProxyPaths = self->_candidatePreferredQUICProxyPaths;
  }

  else
  {
    candidatePreferredQUICProxyPaths = 0;
  }

  v5 = candidatePreferredQUICProxyPaths;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        if (self)
        {
          v11 = self->_candidatePreferredQUICProxyPaths;
        }

        else
        {
          v11 = 0;
        }

        v12 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:*(*(&v17 + 1) + 8 * v9), v17];
        v13 = [v12 domainFilter];

        if (v13)
        {
          v14 = [v12 domainFilter];
          [v3 setObject:v14 forKeyedSubscript:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v15 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v7 = v15;
    }

    while (v15);
  }

  return v3;
}

- (NSPPrivacyProxyAgentManager)initWithDelegate:(id)a3 toggleStats:(id)a4
{
  v6 = a3;
  v7 = a4;
  v124.receiver = self;
  v124.super_class = NSPPrivacyProxyAgentManager;
  v8 = [(NSPPrivacyProxyAgentManager *)&v124 init];
  if (!v8)
  {
    goto LABEL_120;
  }

  objc_opt_self();
  v9 = +[NEFileHandleMaintainer sharedMaintainer];
  v10 = [v9 copyAuxiliaryDataForKey:@"NSPProxyAgentManagerAuxilaryData"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  objc_storeStrong(&v8->_toggleStats, a4);
  if (!v11)
  {
    objc_storeWeak(&v8->_delegate, v6);
    v56 = objc_alloc_init(NSMutableArray);
    proxyTokenInfoArray = v8->_proxyTokenInfoArray;
    v8->_proxyTokenInfoArray = v56;

    v8->_proxyPathRestoreIntervalSec = sub_1000201D4();
    v58 = sub_100020C40();
    v33 = v58;
    if (!v58)
    {
      v69 = sub_1000202EC();
      overridePreferredProxy = v8->_overridePreferredProxy;
      v8->_overridePreferredProxy = v69;

      v71 = sub_1000203E4();
      overridePreferredObliviousProxy = v8->_overridePreferredObliviousProxy;
      v8->_overridePreferredObliviousProxy = v71;

      v73 = sub_1000204DC();
      overrideIngressProxy = v8->_overrideIngressProxy;
      v8->_overrideIngressProxy = v73;

      v75 = sub_1000205D4();
      overrideFallbackIngressProxy = v8->_overrideFallbackIngressProxy;
      v8->_overrideFallbackIngressProxy = v75;

      v77 = sub_1000206CC();
      overrideIngressProxyKey = v8->_overrideIngressProxyKey;
      v8->_overrideIngressProxyKey = v77;

      v79 = sub_1000207C4();
      v80 = [v79 mutableCopy];
      overrideEnabledMaps = v8->_overrideEnabledMaps;
      v8->_overrideEnabledMaps = v80;

      v8->_disableProxiedContentDoHBootstrap = sub_1000208BC();
      v8->_forceFallback = sub_1000209C0();
LABEL_119:

LABEL_120:
      v8 = v8;
      v68 = v8;
      goto LABEL_121;
    }

    v59 = [v58 objectForKeyedSubscript:@"ConfiguredProxies"];
    if (v59)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v60 = [v59 mutableCopy];
        savedConfiguredProxies = v8->_savedConfiguredProxies;
        v8->_savedConfiguredProxies = v60;
      }
    }

    v62 = [v33 objectForKeyedSubscript:@"PreferredPaths"];
    if (v62)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v63 = [v62 mutableCopy];
        savedConfiguredPreferredPaths = v8->_savedConfiguredPreferredPaths;
        v8->_savedConfiguredPreferredPaths = v63;
      }
    }

    v65 = sub_1000202EC();
    v108 = v6;
    if (v65)
    {
      v66 = v65;
    }

    else
    {
      v66 = [v33 objectForKeyedSubscript:@"OverridePreferredProxy"];
      if (!v66)
      {
        goto LABEL_82;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v8->_overridePreferredProxy, v66);
    }

LABEL_82:
    v82 = sub_1000203E4();
    v106 = v7;
    if (v82)
    {
      v83 = v82;
    }

    else
    {
      v83 = [v33 objectForKeyedSubscript:@"OverridePreferredObliviousProxy"];
      if (!v83)
      {
        goto LABEL_87;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v8->_overridePreferredObliviousProxy, v83);
    }

LABEL_87:
    v84 = sub_1000204DC();
    v113 = v62;
    if (v84)
    {
      v85 = v84;
    }

    else
    {
      v85 = [v33 objectForKeyedSubscript:@"OverrideIngressProxy"];
      if (!v85)
      {
        goto LABEL_92;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v8->_overrideIngressProxy, v85);
    }

LABEL_92:
    v86 = sub_1000205D4();
    if (v86)
    {
      v87 = v86;
    }

    else
    {
      v87 = [v33 objectForKeyedSubscript:@"OverrideFallbackIngressProxy"];
      if (!v87)
      {
        goto LABEL_97;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v8->_overrideFallbackIngressProxy, v87);
    }

LABEL_97:
    v88 = sub_1000206CC();
    if (v88)
    {
      v89 = v88;
    }

    else
    {
      v89 = [v33 objectForKeyedSubscript:@"OverrideIngressProxyKey"];
      if (!v89)
      {
        goto LABEL_102;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v8->_overrideIngressProxyKey, v89);
    }

LABEL_102:
    v90 = sub_1000207C4();
    if (v90)
    {
      v91 = v90;
    }

    else
    {
      v91 = [v33 objectForKeyedSubscript:@"OverrideEnabledMaps"];
      if (!v91)
      {
        goto LABEL_107;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v92 = [v91 mutableCopy];
      v93 = v8;
      v94 = v8->_overrideEnabledMaps;
      v8->_overrideEnabledMaps = v92;

LABEL_108:
      v95 = sub_1000208BC();
      v93->_disableProxiedContentDoHBootstrap = v95;
      if ((v95 & 1) == 0)
      {
        v96 = [v33 objectForKeyedSubscript:@"DisableProxiedContentDoHBootstrap"];
        if (v96)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8->_disableProxiedContentDoHBootstrap = [v96 BOOLValue];
          }
        }
      }

      v97 = sub_1000209C0();
      v8->_forceFallback = v97;
      if ((v97 & 1) == 0)
      {
        v98 = [v33 objectForKeyedSubscript:@"ForceFallback"];
        if (v98)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8->_forceFallback = [v98 BOOLValue];
          }
        }
      }

      v7 = v106;
      v6 = v108;
      v11 = 0;
      goto LABEL_119;
    }

LABEL_107:
    v93 = v8;
    goto LABEL_108;
  }

  v123 = 0;
  v12 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v11 error:&v123];
  v13 = v123;
  if (v12)
  {
    v14 = [(NSPPrivacyProxyAgentManager *)v8 initWithCoder:v12];
    if (v14)
    {
      v15 = v14;
      objc_storeWeak(&v14->_delegate, v6);
      [(NSPProxyPath *)v15->_quicProxyPath setDelegate:v15];
      [(NSPProxyPath *)v15->_fallbackProxyPath setDelegate:v15];
      [(NSPQuicProxyPath *)v15->_quicProxyPath setQuicProxyPathDelegate:v15];
      proxyPathProber = v15->_proxyPathProber;
      if (proxyPathProber)
      {
        objc_storeWeak(&proxyPathProber->_delegate, v15);
      }

      v102 = v12;
      v103 = v13;
      v104 = v11;
      directPathProber = v15->_directPathProber;
      if (directPathProber)
      {
        objc_storeWeak(&directPathProber->_delegate, v15);
      }

      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v18 = v15->_preferredQUICProxyPaths;
      v19 = [(NSMutableDictionary *)v18 countByEnumeratingWithState:&v119 objects:v134 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v120;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v120 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [(NSMutableDictionary *)v15->_preferredQUICProxyPaths objectForKeyedSubscript:*(*(&v119 + 1) + 8 * i)];
            [v23 setDelegate:v15];
            [v23 setQuicProxyPathDelegate:v15];
          }

          v20 = [(NSMutableDictionary *)v18 countByEnumeratingWithState:&v119 objects:v134 count:16];
        }

        while (v20);
      }

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v24 = v15;
      v25 = v15->_obliviousPaths;
      v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v115 objects:v133 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v116;
        do
        {
          for (j = 0; j != v27; j = j + 1)
          {
            if (*v116 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v115 + 1) + 8 * j);
            [v30 setDelegate:v24];
            v31 = [v30 fallbackAgentUUID];

            if (v31)
            {
              [v30 resetFallbackProxyAgent];
            }

            v32 = [v30 quicAgentUUID];

            if (v32)
            {
              [v30 resetQUICProxyAgentForceUpdateDelegate:0];
            }
          }

          v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v115 objects:v133 count:16];
        }

        while (v27);
      }

      v8 = v24;
      v24->_proxyPathRestoreIntervalSec = sub_1000201D4();
      v33 = v103;
      v11 = v104;
      v34 = v102;
      if (v24->_candidatePreferredQUICProxyPaths)
      {
        v35 = sub_100020C40();
        v36 = v35;
        if (v35)
        {
          v37 = [v35 objectForKeyedSubscript:@"PreferredPaths"];
          if (v37)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v100 = v37;
              v101 = v36;
              v105 = v7;
              v107 = v6;
              v131 = 0u;
              v132 = 0u;
              v129 = 0u;
              v130 = 0u;
              obj = v37;
              v111 = [obj countByEnumeratingWithState:&v129 objects:v138 count:16];
              if (v111)
              {
                v110 = *v130;
                do
                {
                  v38 = 0;
                  do
                  {
                    if (*v130 != v110)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v112 = v38;
                    v39 = *(*(&v129 + 1) + 8 * v38);
                    v40 = [v39 objectForKey:{@"Vendor", v100, v101}];
                    v41 = [v39 objectForKey:@"PreferredPathConfigURL"];
                    v114 = [v39 objectForKey:@"DomainFilter"];
                    v125 = 0u;
                    v126 = 0u;
                    v127 = 0u;
                    v128 = 0u;
                    v42 = v8->_proxyArray;
                    v43 = [(NSArray *)v42 countByEnumeratingWithState:&v125 objects:v137 count:16];
                    if (v43)
                    {
                      v44 = v43;
                      v45 = *v126;
                      do
                      {
                        for (k = 0; k != v44; k = k + 1)
                        {
                          if (*v126 != v45)
                          {
                            objc_enumerationMutation(v42);
                          }

                          v47 = *(*(&v125 + 1) + 8 * k);
                          if ([v47 hasPreferredPathConfigUri])
                          {
                            v48 = [v47 preferredPathConfigUri];
                            v49 = [v48 isEqualToString:v41];

                            if (v49)
                            {
                              v50 = [v47 vendor];
                              v51 = v50;
                              if (v50 && [v50 isEqualToString:v40])
                              {
                                v52 = [(NSMutableDictionary *)v24->_candidatePreferredQUICProxyPaths objectForKeyedSubscript:v51];
                                v53 = v52;
                                if (v52)
                                {
                                  v54 = [v52 domainFilter];

                                  if (!v54)
                                  {
                                    [v53 setDomainFilter:v114];
                                    v55 = nplog_obj();
                                    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                                    {
                                      *buf = 138412290;
                                      v136 = v51;
                                      _os_log_debug_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "Filled in domain filter for %@", buf, 0xCu);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }

                        v44 = [(NSArray *)v42 countByEnumeratingWithState:&v125 objects:v137 count:16];
                      }

                      while (v44);
                    }

                    v38 = v112 + 1;
                    v8 = v24;
                  }

                  while ((v112 + 1) != v111);
                  v111 = [obj countByEnumeratingWithState:&v129 objects:v138 count:16];
                }

                while (v111);
              }

              v7 = v105;
              v6 = v107;
              v33 = v103;
              v11 = v104;
              v36 = v101;
              v34 = v102;
              v37 = v100;
            }
          }
        }
      }

      goto LABEL_119;
    }

    v67 = nplog_obj();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *v138 = 0;
      _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "Failed to decode the NSP proxy token info from the keychain", v138, 2u);
    }

    v8 = 0;
  }

  else
  {
    v67 = nplog_obj();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *v138 = 138412290;
      v139 = v13;
      _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "Failed to create a decoder for the NSP proxy agent manager: %@", v138, 0xCu);
    }
  }

  v68 = 0;
LABEL_121:

  return v68;
}

- (void)handlePathChange:(id)a3
{
  v4 = a3;
  if (self)
  {
    path = self->_path;
  }

  else
  {
    path = 0;
  }

  v6 = [(NWPath *)path interface];
  v7 = [v6 interfaceName];
  v8 = [v4 interface];
  v9 = [v8 interfaceName];
  v10 = [v7 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    v11 = +[NSDate now];
    sub_10001FDE8(self, v11);
  }

  if ([v4 status] == 2)
  {
    v12 = +[NSDate now];
    sub_10001FDD8(self, v12);
  }

  sub_10001FDC8(self, v4);
  if (self)
  {
    v13 = self->_path;
  }

  else
  {
    v13 = 0;
  }

  v14 = [NPUtilities copyCurrentNetworkCharacteristicsForPath:v13];
  v15 = [v14 objectForKeyedSubscript:@"Signature"];
  if (self)
  {
    networkCharacteristics = self->_networkCharacteristics;
  }

  else
  {
    networkCharacteristics = 0;
  }

  v17 = [(NSDictionary *)networkCharacteristics objectForKeyedSubscript:@"Signature"];
  v18 = v15;
  v19 = v17;
  v20 = v19;
  if (!(v18 | v19) || v18 && v19 && [v18 isEqual:v19])
  {
  }

  else
  {

    v21 = nplog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "proxy agent: network signature changed", buf, 2u);
    }

    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained networkSignatureChanged];

      [(NSPProxyPath *)self->_quicProxyPath handleNetworkCharacteristicsChange:v14];
      [(NSPProxyPath *)self->_fallbackProxyPath handleNetworkCharacteristicsChange:v14];
      [(NSPPrivacyProxyAgentManager *)self resetProxyErrors];
      self->_networkProxiesRotated = 0;
      self->_networkFallbackProxiesRotated = 0;
      objc_storeStrong(&self->_networkCharacteristics, v14);
      if (self->_probingReason == 2)
      {
        sub_100023CAC(self);
      }
    }

    else
    {
      [0 networkSignatureChanged];
      [0 handleNetworkCharacteristicsChange:v14];
      [0 handleNetworkCharacteristicsChange:v14];
      [0 resetProxyErrors];
    }

    sub_100023ED0(self, 0);
    sub_100023EE0(self, v14);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v40 = self;
  v38 = v20;
  v39 = v18;
  if (self)
  {
    proxyTokenInfoArray = self->_proxyTokenInfoArray;
  }

  else
  {
    proxyTokenInfoArray = 0;
  }

  obj = proxyTokenInfoArray;
  v24 = [(NSMutableArray *)obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v24)
  {
    v25 = v24;
    v42 = *v45;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v45 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v44 + 1) + 8 * i);
        v28 = v4;
        v29 = v4;
        if (v27)
        {
          objc_storeStrong((v27 + 56), a3);
          v30 = [NPUtilities copyCurrentNetworkCharacteristicsForPath:*(v27 + 56)];
          v31 = [v30 objectForKeyedSubscript:@"Signature"];
          v32 = *(v27 + 152);
          v33 = v31;
          v34 = v32;
          v35 = v34;
          if (v33 | v34 && (v33 ? (v36 = v34 == 0) : (v36 = 1), v36 || ![v33 isEqual:v34]))
          {

            objc_storeStrong((v27 + 152), v31);
            if ([*(v27 + 56) status] == 1)
            {
              sub_10000849C(v27);
            }
          }

          else
          {
          }
        }

        v4 = v28;
      }

      v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v25);
  }

  if (v40)
  {
    sub_10001D08C(v40[30], v4);
    v37 = v40[31];
  }

  else
  {
    sub_10001D08C(0, v4);
    v37 = 0;
  }

  sub_10001D08C(v37, v4);
  [v40 updateUserEventAgentData];
}

- (void)handleTierChange:(BOOL)a3
{
  v3 = a3;
  if (self)
  {
    if (self->_subscriber == a3)
    {
      return;
    }

    self->_subscriber = a3;
    [(NSPProxyPath *)self->_fallbackProxyPath enableFailOpen:!a3];
    v5 = self->_quicProxyPath;
    v6 = !self->_subscriber;
  }

  else
  {
    if (!a3)
    {
      return;
    }

    v6 = 1;
    [0 enableFailOpen:1];
    v5 = 0;
  }

  [(NSPProxyPath *)v5 enableFailOpen:v6];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (self)
  {
    proxyTokenInfoArray = self->_proxyTokenInfoArray;
  }

  else
  {
    proxyTokenInfoArray = 0;
  }

  v8 = proxyTokenInfoArray;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (v13)
        {
          if (*(v13 + 11) != v3)
          {
            *(v13 + 11) = v3;
          }
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [(NSPPrivacyProxyAgentManager *)self updateUserEventAgentData];
}

- (void)handleUnlimitedChange:(BOOL)a3
{
  if (self)
  {
    if (self->_unlimited != a3)
    {
      self->_unlimited = a3;
    }
  }
}

- (void)handleConfigChange
{
  if (self)
  {
    [(NSPProxyPath *)self->_quicProxyPath resetStats];
    [(NSPProxyPath *)self->_quicProxyPath resetError];
    [(NSPProxyPath *)self->_fallbackProxyPath resetStats];
    fallbackProxyPath = self->_fallbackProxyPath;
  }

  else
  {
    [0 resetStats];
    [0 resetError];
    [0 resetStats];
    fallbackProxyPath = 0;
  }

  [(NSPProxyPath *)fallbackProxyPath resetError];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (self)
  {
    obliviousPaths = self->_obliviousPaths;
  }

  else
  {
    obliviousPaths = 0;
  }

  v5 = obliviousPaths;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v10 resetStats];
        [v10 resetError];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSPPrivacyProxyAgentManager *)self updateUserEventAgentData];
}

- (void)handleLinkQualityChange:(int)a3
{
  if (self)
  {
    if (self->_linkQuality == a3)
    {
      return;
    }

    self->_linkQuality = a3;
    v5 = self->_proxyPathProber;
    v6 = v5;
    if (v5 && v5->_linkQuality != a3)
    {
      v5->_linkQuality = a3;
      sub_10001B690(v5);
    }

    v7 = self->_directPathProber;
    v8 = v7;
    if (v7 && v7->_linkQuality != a3)
    {
      v7->_linkQuality = a3;
      sub_10001B690(v7);
    }
  }

  else
  {
    if (!a3)
    {
      return;
    }

    v8 = 0;
  }

  [(NSPPrivacyProxyAgentManager *)self updateUserEventAgentData];
}

- (void)resetProxyErrors
{
  if (self)
  {
    [(NSPProxyPath *)self->_quicProxyPath resetStats];
    [(NSPProxyPath *)self->_quicProxyPath resetError];
    [(NSPProxyPath *)self->_fallbackProxyPath resetStats];
    fallbackProxyPath = self->_fallbackProxyPath;
  }

  else
  {
    [0 resetStats];
    [0 resetError];
    [0 resetStats];
    fallbackProxyPath = 0;
  }

  [(NSPProxyPath *)fallbackProxyPath resetError];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (self)
  {
    obliviousPaths = self->_obliviousPaths;
  }

  else
  {
    obliviousPaths = 0;
  }

  v5 = obliviousPaths;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v10 resetStats];
        [v10 resetError];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSPPrivacyProxyAgentManager *)self updateUserEventAgentData];
}

- (void)useDefaultNetworkInterface:(BOOL)a3
{
  if (self)
  {
    if (self->_useDefaultInterface == a3)
    {
      return;
    }

    self->_useDefaultInterface = a3;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    proxyTokenInfoArray = self->_proxyTokenInfoArray;
  }

  else
  {
    if (!a3)
    {
      return;
    }

    proxyTokenInfoArray = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
  }

  v5 = proxyTokenInfoArray;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (v10)
        {
          *(v10 + 10) = a3;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

+ (void)removeProxyInfoFromKeychain
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removing proxy info keychain", v3, 2u);
  }

  [NPUtilities removeDataFromKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.ProxyToken"];
}

- (void)tearDownNetworkDiscoveredProxy
{
  v2 = self;
  if (self)
  {
    self = self->_networkSpecificQUICProxyPaths;
  }

  if ([(NSPPrivacyProxyAgentManager *)self count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    if (v2)
    {
      networkSpecificQUICProxyPaths = v2->_networkSpecificQUICProxyPaths;
    }

    else
    {
      networkSpecificQUICProxyPaths = 0;
    }

    v4 = networkSpecificQUICProxyPaths;
    v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v22;
      *&v6 = 138412290;
      v20 = v6;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v4);
          }

          if (v2)
          {
            v10 = v2->_networkSpecificQUICProxyPaths;
          }

          else
          {
            v10 = 0;
          }

          v11 = [(NSMutableDictionary *)v10 objectForKey:*(*(&v21 + 1) + 8 * v9), v20, v21];
          v12 = nplog_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = [v11 ingressProxy];
            v14 = v13;
            if (v13)
            {
              v15 = *(v13 + 24);
            }

            else
            {
              v15 = 0;
            }

            v16 = v15;
            v17 = [v16 vendor];
            *buf = v20;
            v26 = v17;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Tearing down existing network discovered proxy: %@", buf, 0xCu);
          }

          [v11 tearDownMultiHopRegistration];
          [(NSPPrivacyProxyAgentManager *)v2 multiHopAgentUnregistered:v11];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v18 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
        v7 = v18;
      }

      while (v18);
    }

    if (v2)
    {
      v19 = v2->_networkSpecificQUICProxyPaths;
    }

    else
    {
      v19 = 0;
    }

    [(NSMutableDictionary *)v19 removeAllObjects];
  }
}

- (void)updateProxyInfo:(id)a3 resolverInfo:(id)a4 proxyPathList:(id)a5 fallbackProxyPathList:(id)a6 obliviousConfigs:(id)a7 proxiedContentMaps:(id)a8
{
  v14 = a3;
  v258 = a4;
  v262 = a5;
  v259 = a6;
  v260 = a7;
  v261 = a8;
  v263 = v14;
  if (!v14)
  {
    v21 = nplog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v330 = "[NSPPrivacyProxyAgentManager updateProxyInfo:resolverInfo:proxyPathList:fallbackProxyPathList:obliviousConfigs:proxiedContentMaps:]";
      _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "%s called with null proxyInfoArray", buf, 0xCu);
    }

    goto LABEL_265;
  }

  if (![v14 count])
  {
    v21 = nplog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v330 = "[NSPPrivacyProxyAgentManager updateProxyInfo:resolverInfo:proxyPathList:fallbackProxyPathList:obliviousConfigs:proxiedContentMaps:]";
      _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "%s called with null (proxyInfoArray.count > 0)", buf, 0xCu);
    }

    goto LABEL_265;
  }

  if (!v262)
  {
    v21 = nplog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v330 = "[NSPPrivacyProxyAgentManager updateProxyInfo:resolverInfo:proxyPathList:fallbackProxyPathList:obliviousConfigs:proxiedContentMaps:]";
      _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "%s called with null proxyPathList", buf, 0xCu);
    }

    goto LABEL_265;
  }

  sub_10001FCA8(self, v14);
  sub_10001FCB8(self, v258);
  sub_10001FCC8(self, v262);
  v15 = [v262 mutableCopy];
  sub_10001FCD8(self, v15);

  sub_10001FCE8(self, v259);
  v16 = [v259 mutableCopy];
  sub_10001FCF8(self, v16);

  sub_10001FD08(self, v260);
  sub_10001FD18(self, 0);
  val = self;
  sub_10001FD28(self, v261);
  v17 = nplog_obj();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    obliviousConfigs = self;
    if (self)
    {
      obliviousConfigs = self->_obliviousConfigs;
    }

    *buf = 138412290;
    v330 = obliviousConfigs;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "updateProxyInfo self.obliviousConfigs %@", buf, 0xCu);
  }

  v19 = [(NSPPrivacyProxyAgentManager *)self tokenIssuanceRestrictedUntilDate];
  v20 = v19 == 0;

  if (!v20)
  {
    v21 = nplog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [(NSPPrivacyProxyAgentManager *)self tokenIssuanceRestrictedUntilDate];
      v23 = [NSDateFormatter localizedStringFromDate:v22 dateStyle:1 timeStyle:2];
      *buf = 138412290;
      v330 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "deferring setting up of proxy agent until %@", buf, 0xCu);
    }

LABEL_265:

    goto LABEL_254;
  }

  v279 = v14;
  if (self)
  {
    v272 = objc_alloc_init(NSMutableArray);
    v326 = 0u;
    v327 = 0u;
    v324 = 0u;
    v325 = 0u;
    obj = self->_proxyTokenInfoArray;
    v282 = [(NSMutableArray *)obj countByEnumeratingWithState:&v324 objects:buf count:16];
    if (!v282)
    {
      goto LABEL_55;
    }

    v276 = *v325;
    while (1)
    {
      v24 = 0;
      do
      {
        if (*v325 != v276)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v324 + 1) + 8 * v24);
        memset(v321, 0, sizeof(v321));
        v322 = 0u;
        v323 = 0u;
        v26 = v279;
        v27 = [v26 countByEnumeratingWithState:v321 objects:v328 count:16];
        if (!v27)
        {
          goto LABEL_30;
        }

        v28 = **&v321[16];
        do
        {
          v29 = 0;
          do
          {
            if (**&v321[16] != v28)
            {
              objc_enumerationMutation(v26);
            }

            if (v25)
            {
              v30 = *(v25 + 24);
            }

            else
            {
              v30 = 0;
            }

            v31 = *(*&v321[8] + 8 * v29);
            v32 = v30;
            v33 = [v32 vendor];
            v34 = [v31 vendor];

            LODWORD(v32) = [v33 isEqualToString:v34];
            if (v32)
            {
              if (v25)
              {
                v36 = *(v25 + 24);
              }

              else
              {
                v36 = 0;
              }

              v37 = v36;
              v38 = [v37 tokenKeyInfo];
              v39 = [v31 tokenKeyInfo];

              v40 = v38;
              v41 = v39;
              v42 = v41;
              if (!(v40 | v41) || (v43 = 1, v40) && v41 && [v40 isEqual:v41])
              {
                v43 = 0;
              }

              if (v25)
              {
                v44 = *(v25 + 24);
              }

              else
              {
                v44 = 0;
              }

              v45 = v44;
              v46 = [v45 tokenChallenge];
              v47 = [v31 tokenChallenge];

              v48 = v46;
              v49 = v47;
              v50 = v49;
              if (!(v48 | v49) || v48 && v49 && [v48 isEqual:v49])
              {

                sub_100006B14(v25, v31);
                if (v43)
                {
                  v51 = NPGetInternalQueue();
                  *&v306 = _NSConcreteStackBlock;
                  *(&v306 + 1) = 3221225472;
                  *&v307 = sub_10001DC34;
                  *(&v307 + 1) = &unk_1001098C0;
                  *&v308 = v31;
                  *(&v308 + 1) = v25;
                  p_block = &v306;
                  goto LABEL_48;
                }
              }

              else
              {

                sub_100006B14(v25, v31);
                v51 = NPGetInternalQueue();
                *&block = _NSConcreteStackBlock;
                *(&block + 1) = 3221225472;
                *&v311 = sub_10001DB54;
                *(&v311 + 1) = &unk_1001098C0;
                *&v312 = v31;
                *(&v312 + 1) = v25;
                p_block = &block;
LABEL_48:
                dispatch_async(v51, p_block);
              }

              goto LABEL_50;
            }

            v29 = v29 + 1;
          }

          while (v27 != v29);
          v35 = [v26 countByEnumeratingWithState:v321 objects:v328 count:16];
          v27 = v35;
        }

        while (v35);
LABEL_30:

        [v272 addObject:v25];
LABEL_50:
        v24 = v24 + 1;
      }

      while (v24 != v282);
      v53 = [(NSMutableArray *)obj countByEnumeratingWithState:&v324 objects:buf count:16];
      v282 = v53;
      if (!v53)
      {
LABEL_55:

        [(NSMutableArray *)val->_proxyTokenInfoArray removeObjectsInArray:v272];
        v54 = val->_fallbackProxyPath;
        v55 = val->_proxyArray;
        fallbackProxyPathList = val->_fallbackProxyPathList;
        goto LABEL_56;
      }
    }
  }

  v55 = 0;
  v54 = 0;
  fallbackProxyPathList = 0;
LABEL_56:
  v57 = [(NSPFallbackProxyPath *)v54 proxyPathIsValid:v55 proxyPathList:fallbackProxyPathList, v258];

  if (v57)
  {
    if (val)
    {
      [(NSPFallbackProxyPath *)val->_fallbackProxyPath resetSingleHopProxyAgent];
      fallbackProxyPath = val->_fallbackProxyPath;
    }

    else
    {
      [0 resetSingleHopProxyAgent];
      fallbackProxyPath = 0;
    }

    [(NSPFallbackProxyPath *)fallbackProxyPath resetMultiHopProxyAgent];
  }

  else
  {
    v59 = nplog_obj();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = val;
      if (val)
      {
        v60 = val->_fallbackProxyPath;
      }

      v61 = v60;
      v62 = [v61 ingressProxy];
      v63 = v62;
      if (v62)
      {
        v64 = *(v62 + 24);
      }

      else
      {
        v64 = 0;
      }

      v65 = v64;
      v66 = [v65 tcpProxyFqdn];
      if (val)
      {
        v67 = val->_fallbackProxyPath;
      }

      else
      {
        v67 = 0;
      }

      v68 = v67;
      v69 = [(NSPProxyPath *)v68 egressProxy];
      v70 = v69;
      if (v69)
      {
        v71 = *(v69 + 24);
      }

      else
      {
        v71 = 0;
      }

      v72 = v71;
      v73 = [v72 tcpProxyFqdn];
      *buf = 138412546;
      v330 = v66;
      v331 = 2112;
      v332 = v73;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Fallback proxy path (%@-%@) is not valid", buf, 0x16u);
    }

    v74 = sub_1000251D8(&val->super.isa);
    v75 = v74 == 0;

    if (v75)
    {
      v76 = val;
      sub_10001FD78(val, 0);
      if (val)
      {
        goto LABEL_73;
      }

      goto LABEL_256;
    }

    sub_100022D8C(&val->super.isa, 0);
  }

  v76 = val;
  if (val)
  {
LABEL_73:
    v77 = v76->_quicProxyPath;
    v78 = v76->_proxyArray;
    proxyPathList = v76->_proxyPathList;
    goto LABEL_74;
  }

LABEL_256:
  v78 = 0;
  v77 = 0;
  proxyPathList = 0;
LABEL_74:
  v80 = [(NSPQuicProxyPath *)v77 proxyPathIsValid:v78 proxyPathList:proxyPathList];

  if (v80)
  {
    if (val)
    {
      [(NSPQuicProxyPath *)val->_quicProxyPath resetSingleHopProxyAgent];
      quicProxyPath = val->_quicProxyPath;
    }

    else
    {
      [0 resetSingleHopProxyAgent];
      quicProxyPath = 0;
    }

    [(NSPQuicProxyPath *)quicProxyPath resetMultiHopProxyAgent];
  }

  else
  {
    v82 = nplog_obj();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      v83 = val;
      if (val)
      {
        v83 = val->_quicProxyPath;
      }

      v84 = v83;
      v85 = [v84 ingressProxy];
      v86 = v85;
      if (v85)
      {
        v87 = *(v85 + 24);
      }

      else
      {
        v87 = 0;
      }

      v88 = v87;
      v89 = [v88 vendor];
      if (val)
      {
        v90 = val->_quicProxyPath;
      }

      else
      {
        v90 = 0;
      }

      v91 = v90;
      v92 = [(NSPProxyPath *)v91 egressProxy];
      v93 = v92;
      if (v92)
      {
        v94 = *(v92 + 24);
      }

      else
      {
        v94 = 0;
      }

      v95 = v94;
      v96 = [v95 vendor];
      *buf = 138412546;
      v330 = v89;
      v331 = 2112;
      v332 = v96;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Quic proxy path (%@-%@) is not valid", buf, 0x16u);
    }

    sub_100022200(&val->super.isa, 0);
  }

  v97 = val;
  if (val)
  {
    candidateQuicProxyPath = val->_candidateQuicProxyPath;
    if (candidateQuicProxyPath)
    {
      v99 = candidateQuicProxyPath;
      v100 = val->_proxyArray;
      v101 = [(NSPCandidateQuicProxyPath *)v99 proxyPathIsValid:v100 proxyPathList:val->_proxyPathList];

      v97 = val;
      if ((v101 & 1) == 0)
      {
        v102 = nplog_obj();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          v103 = val->_candidateQuicProxyPath;
          v104 = [(NSPCandidateProxyPath *)v103 ingressProxy];
          v105 = v104;
          if (v104)
          {
            v106 = *(v104 + 24);
          }

          else
          {
            v106 = 0;
          }

          v107 = v106;
          v108 = [v107 vendor];
          v109 = val->_candidateQuicProxyPath;
          v110 = [(NSPCandidateProxyPath *)v109 egressProxy];
          v111 = v110;
          if (v110)
          {
            v112 = *(v110 + 24);
          }

          else
          {
            v112 = 0;
          }

          v113 = v112;
          v114 = [v113 vendor];
          *buf = 138412546;
          v330 = v108;
          v331 = 2112;
          v332 = v114;
          _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "Candidate Quic proxy path (%@-%@) is not valid", buf, 0x16u);
        }

        sub_10001FD88(val, 0);
        sub_100022200(&val->super.isa, 0);
        v97 = val;
      }
    }

    candidateFallbackProxyPath = v97->_candidateFallbackProxyPath;
    if (candidateFallbackProxyPath)
    {
      v116 = candidateFallbackProxyPath;
      v117 = v97->_proxyArray;
      v118 = [(NSPCandidateFallbackProxyPath *)v116 proxyPathIsValid:v117 proxyPathList:v97->_fallbackProxyPathList];

      v97 = val;
      if ((v118 & 1) == 0)
      {
        v119 = nplog_obj();
        if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
        {
          v120 = val->_candidateFallbackProxyPath;
          v121 = [(NSPCandidateProxyPath *)v120 ingressProxy];
          v122 = v121;
          if (v121)
          {
            v123 = *(v121 + 24);
          }

          else
          {
            v123 = 0;
          }

          v124 = v123;
          v125 = [v124 tcpProxyFqdn];
          v126 = val->_candidateFallbackProxyPath;
          v127 = [(NSPCandidateProxyPath *)v126 egressProxy];
          v128 = v127;
          if (v127)
          {
            v129 = *(v127 + 24);
          }

          else
          {
            v129 = 0;
          }

          v130 = v129;
          v131 = [v130 tcpProxyFqdn];
          *buf = 138412546;
          v330 = v125;
          v331 = 2112;
          v332 = v131;
          _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "Candidate Fallback proxy path (%@-%@) is not valid", buf, 0x16u);
        }

        sub_10001FD98(val, 0);
        sub_100022D8C(&val->super.isa, 0);
        v97 = val;
      }
    }

    v288 = 0u;
    v289 = 0u;
    v286 = 0u;
    v287 = 0u;
    preferredQUICProxyPaths = v97->_preferredQUICProxyPaths;
  }

  else
  {
    preferredQUICProxyPaths = 0;
    v288 = 0u;
    v289 = 0u;
    v286 = 0u;
    v287 = 0u;
  }

  v133 = preferredQUICProxyPaths;
  v134 = [(NSMutableDictionary *)v133 countByEnumeratingWithState:&v286 objects:v314 count:16];
  if (v134)
  {
    v135 = *v287;
    do
    {
      v136 = 0;
      do
      {
        if (*v287 != v135)
        {
          objc_enumerationMutation(v133);
        }

        if (val)
        {
          v137 = val->_preferredQUICProxyPaths;
        }

        else
        {
          v137 = 0;
        }

        v138 = [(NSMutableDictionary *)v137 objectForKeyedSubscript:*(*(&v286 + 1) + 8 * v136)];
        if (val)
        {
          v139 = val->_proxyArray;
          v140 = val->_proxyPathList;
        }

        else
        {
          v139 = 0;
          v140 = 0;
        }

        v141 = [v138 proxyPathIsValid:v139 proxyPathList:v140];

        if (v141)
        {
          [v138 resetMultiHopProxyAgent];
        }

        v136 = v136 + 1;
      }

      while (v134 != v136);
      v142 = [(NSMutableDictionary *)v133 countByEnumeratingWithState:&v286 objects:v314 count:16];
      v134 = v142;
    }

    while (v142);
  }

  if (val && ![(NSPPrivacyProxyAgentManager *)val forceFallback])
  {
    if (!val->_candidatePreferredQUICProxyPaths)
    {
      v143 = objc_alloc_init(NSMutableDictionary);
      candidatePreferredQUICProxyPaths = val->_candidatePreferredQUICProxyPaths;
      val->_candidatePreferredQUICProxyPaths = v143;
    }

    obja = +[NSMutableArray array];
    v312 = 0u;
    v313 = 0u;
    block = 0u;
    v311 = 0u;
    v267 = val->_proxyArray;
    v273 = [(NSArray *)v267 countByEnumeratingWithState:&block objects:buf count:16];
    if (v273)
    {
      v270 = *v311;
      do
      {
        v280 = 0;
        do
        {
          if (*v311 != v270)
          {
            objc_enumerationMutation(v267);
          }

          v145 = *(*(&block + 1) + 8 * v280);
          if (([v145 hasPreferredPathConfigUri] & 1) == 0 && !objc_msgSend(v145, "preferredPathPatternsCount"))
          {
            goto LABEL_208;
          }

          v283 = [v145 vendor];
          v146 = v283;
          if (!v283)
          {
            goto LABEL_207;
          }

          v277 = [(NSMutableDictionary *)val->_candidatePreferredQUICProxyPaths objectForKeyedSubscript:?];
          if (v277)
          {
            v147 = val->_proxyPathList;
            v148 = val->_proxyArray;
            LOBYTE(v147) = [v277 proxyPathIsValid:v148 proxyPathList:v147];

            if (v147)
            {
              v149 = [v277 preferredPathConfigURI];
              v150 = [v145 preferredPathConfigUri];
              WeakRetained = v149;
              v152 = v150;
              v153 = v152;
              if (!(WeakRetained | v152) || (v158 = v152, (v156 = WeakRetained) != 0) && (v158 = v152, v156 = WeakRetained, v152) && (v158 = v152, v156 = WeakRetained, [WeakRetained isEqual:v152]))
              {

                v154 = [v277 preferredPathPatterns];
                v155 = [v145 preferredPathPatterns];
                v156 = v154;
                v157 = v155;
                v158 = v157;
                if (v156 | v157 && (!v156 || !v157 || ![v156 isEqual:v157]))
                {

                  goto LABEL_172;
                }
              }

              else
              {
LABEL_172:

                v181 = nplog_obj();
                if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
                {
                  v182 = [v277 ingressProxy];
                  v183 = v182;
                  if (v182)
                  {
                    v184 = *(v182 + 24);
                  }

                  else
                  {
                    v184 = 0;
                  }

                  v185 = v184;
                  v186 = [v185 vendor];
                  v187 = [v277 egressProxy];
                  v188 = v187;
                  if (v187)
                  {
                    v189 = *(v187 + 24);
                  }

                  else
                  {
                    v189 = 0;
                  }

                  v190 = v189;
                  v191 = [v190 vendor];
                  *v321 = 138412802;
                  *&v321[4] = v283;
                  *&v321[12] = 2112;
                  *&v321[14] = v186;
                  *&v321[22] = 2112;
                  *&v321[24] = v191;
                  _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEFAULT, "Candidate preferred proxy path for vendor %@ (%@-%@) has new matching rules, updating", v321, 0x20u);
                }

                v192 = [v145 preferredPathConfigUri];
                [v277 setPreferredPathConfigURI:v192];

                [v277 setDomainFilter:0];
                v193 = [v145 preferredPathPatterns];
                [v277 setPreferredPathPatterns:v193];

                [(NSMutableDictionary *)val->_preferredQUICProxyPaths setObject:0 forKeyedSubscript:v283];
                WeakRetained = objc_loadWeakRetained(&val->_delegate);
                [WeakRetained preferredProxyAgentUnregistered:v283];
              }

              [obja addObject:v283];
              goto LABEL_206;
            }

            v159 = nplog_obj();
            if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
            {
              v160 = [v277 ingressProxy];
              v161 = v160;
              if (v160)
              {
                v162 = *(v160 + 24);
              }

              else
              {
                v162 = 0;
              }

              v163 = v162;
              v164 = [v163 vendor];
              v165 = [v277 egressProxy];
              v166 = v165;
              if (v165)
              {
                v167 = *(v165 + 24);
              }

              else
              {
                v167 = 0;
              }

              v168 = v167;
              v169 = [v168 vendor];
              *v321 = 138412802;
              *&v321[4] = v283;
              *&v321[12] = 2112;
              *&v321[14] = v164;
              *&v321[22] = 2112;
              *&v321[24] = v169;
              _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "Candidate preferred proxy path for vendor %@ (%@-%@) is not valid", v321, 0x20u);
            }

            [(NSMutableDictionary *)val->_candidatePreferredQUICProxyPaths setObject:0 forKeyedSubscript:v283];
          }

          v308 = 0u;
          v309 = 0u;
          v306 = 0u;
          v307 = 0u;
          v170 = val->_proxyPathList;
          v171 = [(NSArray *)v170 countByEnumeratingWithState:&v306 objects:v328 count:16];
          if (!v171)
          {
            goto LABEL_157;
          }

          v172 = *v307;
          do
          {
            for (i = 0; i != v171; i = i + 1)
            {
              if (*v307 != v172)
              {
                objc_enumerationMutation(v170);
              }

              v174 = *(*(&v306 + 1) + 8 * i);
              v175 = val->_proxyArray;
              v176 = -[NSArray objectAtIndex:](v175, "objectAtIndex:", *([v174 proxies] + 1));

              if ([v176 isEqual:v145])
              {
                v268 = v174;

                if (!v268)
                {
                  goto LABEL_162;
                }

                v177 = val->_proxyArray;
                v178 = [(NSArray *)v177 objectAtIndex:*[v268 proxies]];

                if (v178)
                {
                  v179 = [(NSPPrivacyProxyAgentManager *)val overrideIngressProxy];
                  if (v179)
                  {

                    goto LABEL_181;
                  }

                  v194 = [(NSPPrivacyProxyAgentManager *)val overrideIngressProxyKey];
                  v195 = v194 == 0;

                  if (v195)
                  {
                    v266 = v178;
                  }

                  else
                  {
LABEL_181:
                    v266 = [v178 copy];

                    v196 = [(NSPPrivacyProxyAgentManager *)val overrideIngressProxy];
                    v197 = v196 == 0;

                    if (!v197)
                    {
                      v198 = [(NSPPrivacyProxyAgentManager *)val overrideIngressProxy];
                      [v266 setProxyURL:v198];
                    }

                    v199 = [(NSPPrivacyProxyAgentManager *)val overrideIngressProxyKey];
                    v200 = v199 == 0;

                    if (!v200)
                    {
                      [v266 clearProxyKeyInfos];
                      v201 = [(NSPPrivacyProxyAgentManager *)val overrideIngressProxyKey];
                      [v266 addProxyKeyInfo:v201];
                    }
                  }

                  v265 = sub_100025A90(val, v266);
                  v264 = sub_100025A90(val, v145);
                  if (v265 && v264)
                  {
                    v202 = [NSPCandidateQuicProxyPath alloc];
                    v203 = [v268 weight];
                    v204 = [v145 preferredPathConfigUri];
                    v205 = [v145 preferredPathPatterns];
                    v269 = [(NSPCandidateProxyPath *)v202 initWithIngressProxy:v265 egressProxy:v264 proxyPathWeight:v203 preferredPathConfigURI:v204 preferredPathPatterns:v205];

                    v304 = 0u;
                    v305 = 0u;
                    v302 = 0u;
                    v303 = 0u;
                    v206 = val->_savedConfiguredPreferredPaths;
                    v207 = [(NSMutableArray *)v206 countByEnumeratingWithState:&v302 objects:&v324 count:16];
                    if (v207)
                    {
                      v208 = *v303;
                      do
                      {
                        for (j = 0; j != v207; j = j + 1)
                        {
                          if (*v303 != v208)
                          {
                            objc_enumerationMutation(v206);
                          }

                          v210 = *(*(&v302 + 1) + 8 * j);
                          v211 = [v210 objectForKey:@"Vendor"];
                          v212 = [v210 objectForKey:@"PreferredPathConfigURL"];
                          v213 = [v210 objectForKey:@"DomainFilter"];
                          if (v211)
                          {
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & (v212 != 0)) == 1)
                            {
                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & (v213 != 0)) == 1)
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  if ([v211 isEqualToString:v283])
                                  {
                                    v214 = [v145 preferredPathConfigUri];
                                    v215 = [v214 isEqualToString:v212];

                                    if (v215)
                                    {
                                      [(NSPCandidateProxyPath *)v269 setDomainFilter:v213];
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }

                        v207 = [(NSMutableArray *)v206 countByEnumeratingWithState:&v302 objects:&v324 count:16];
                      }

                      while (v207);
                    }

                    [(NSMutableDictionary *)val->_candidatePreferredQUICProxyPaths setObject:v269 forKeyedSubscript:v283];
                    [obja addObject:v283];
                  }
                }

                v180 = v268;
                goto LABEL_205;
              }
            }

            v171 = [(NSArray *)v170 countByEnumeratingWithState:&v306 objects:v328 count:16];
          }

          while (v171);
LABEL_157:

LABEL_162:
          v180 = nplog_obj();
          if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
          {
            *v321 = 138412290;
            *&v321[4] = v283;
            _os_log_impl(&_mh_execute_header, v180, OS_LOG_TYPE_INFO, "No preferred path found for vendor %@", v321, 0xCu);
          }

LABEL_205:

LABEL_206:
          v146 = v283;
LABEL_207:

LABEL_208:
          v280 = v280 + 1;
        }

        while (v280 != v273);
        v216 = [(NSArray *)v267 countByEnumeratingWithState:&block objects:buf count:16];
        v273 = v216;
      }

      while (v216);
    }

    objc_storeStrong(&val->_savedConfiguredPreferredPaths, 0);
    v217 = [(NSMutableDictionary *)val->_candidatePreferredQUICProxyPaths allKeys];
    v300 = 0u;
    v301 = 0u;
    v298 = 0u;
    v299 = 0u;
    v278 = v217;
    v284 = [v278 countByEnumeratingWithState:&v298 objects:v321 count:16];
    if (!v284)
    {
      goto LABEL_252;
    }

    v281 = *v299;
LABEL_217:
    v218 = 0;
    while (1)
    {
      if (*v299 != v281)
      {
        objc_enumerationMutation(v278);
      }

      v219 = *(*(&v298 + 1) + 8 * v218);
      v220 = [(NSMutableDictionary *)val->_candidatePreferredQUICProxyPaths objectForKeyedSubscript:v219];
      if (([obja containsObject:v219] & 1) == 0)
      {
        v234 = nplog_obj();
        if (os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
        {
          v235 = [v220 ingressProxy];
          v236 = v235;
          if (v235)
          {
            v237 = *(v235 + 24);
          }

          else
          {
            v237 = 0;
          }

          v238 = v237;
          v239 = [v238 vendor];
          v240 = [v220 egressProxy];
          v241 = v240;
          if (v240)
          {
            v242 = *(v240 + 24);
          }

          else
          {
            v242 = 0;
          }

          v243 = v242;
          v244 = [v243 vendor];
          *v315 = 138412802;
          v316 = v219;
          v317 = 2112;
          v318 = v239;
          v319 = 2112;
          v320 = v244;
          _os_log_impl(&_mh_execute_header, v234, OS_LOG_TYPE_DEFAULT, "Preferred proxy path for vendor %@ (%@-%@) has been removed", v315, 0x20u);
        }

        [(NSMutableDictionary *)val->_candidatePreferredQUICProxyPaths setObject:0 forKeyedSubscript:v219];
        [(NSMutableDictionary *)val->_preferredQUICProxyPaths setObject:0 forKeyedSubscript:v219];
        v221 = objc_loadWeakRetained(&val->_delegate);
        [v221 preferredProxyAgentUnregistered:v219];
        goto LABEL_244;
      }

      if (![v220 proxyPathReady])
      {
        v245 = [v220 ingressProxy];
        v246 = v245;
        if (v245)
        {
          v247 = *(v245 + 24);
        }

        else
        {
          v247 = 0;
        }

        v248 = v247;

        v249 = [v220 egressProxy];
        v250 = v249;
        if (v249)
        {
          v251 = *(v249 + 24);
        }

        else
        {
          v251 = 0;
        }

        v252 = v251;

        v253 = [v220 ingressProxy];
        v296[0] = _NSConcreteStackBlock;
        v296[1] = 3221225472;
        v296[2] = sub_100027870;
        v296[3] = &unk_100109910;
        v221 = v248;
        v297 = v221;
        sub_1000058A8(v253, v296);

        v254 = [v220 egressProxy];
        v294[0] = _NSConcreteStackBlock;
        v294[1] = 3221225472;
        v294[2] = sub_100027958;
        v294[3] = &unk_100109910;
        v255 = v252;
        v295 = v255;
        sub_1000058A8(v254, v294);

        objc_initWeak(v315, val);
        v290[0] = _NSConcreteStackBlock;
        v290[1] = 3221225472;
        v290[2] = sub_100027A40;
        v290[3] = &unk_100109938;
        v256 = v255;
        v291 = v256;
        objc_copyWeak(&v293, v315);
        v292 = v219;
        [v220 fetchDomainFilter:v290];
        objc_destroyWeak(&v293);

        objc_destroyWeak(v315);
        goto LABEL_244;
      }

      v221 = [(NSMutableDictionary *)val->_preferredQUICProxyPaths objectForKeyedSubscript:v219];
      if (!v221)
      {
        goto LABEL_231;
      }

      v222 = val->_proxyPathList;
      v223 = val->_proxyArray;
      LOBYTE(v222) = [v221 proxyPathIsValid:v223 proxyPathList:v222];

      if ((v222 & 1) == 0)
      {
        break;
      }

LABEL_244:

      if (v284 == ++v218)
      {
        v257 = [v278 countByEnumeratingWithState:&v298 objects:v321 count:16];
        v284 = v257;
        if (!v257)
        {
LABEL_252:

          sub_100025F60(&val->super.isa);
          [(NSPPrivacyProxyAgentManager *)val updateUserEventAgentData];
          sub_100026CD4(val);

          goto LABEL_253;
        }

        goto LABEL_217;
      }
    }

    v224 = nplog_obj();
    if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
    {
      v225 = [v221 ingressProxy];
      v271 = v225;
      v226 = v225;
      if (v225)
      {
        v226 = *(v225 + 24);
      }

      v227 = v226;
      v228 = [v227 vendor];
      v229 = [v221 egressProxy];
      v230 = v229;
      if (v229)
      {
        v231 = *(v229 + 24);
      }

      else
      {
        v231 = 0;
      }

      v232 = v231;
      v233 = [v232 vendor];
      *v315 = 138412802;
      v316 = v219;
      v317 = 2112;
      v318 = v228;
      v319 = 2112;
      v320 = v233;
      _os_log_impl(&_mh_execute_header, v224, OS_LOG_TYPE_DEFAULT, "Preferred proxy path for vendor %@ (%@-%@) is not valid", v315, 0x20u);
    }

LABEL_231:
    sub_100027570(val, v219);
    v221 = 0;
    goto LABEL_244;
  }

LABEL_253:
  sub_100028384(val);
  sub_100029374(&val->super.isa);
  [(NSPPrivacyProxyAgentManager *)val updateUserEventAgentData];
LABEL_254:
}

- (void)overrideProxiedContentMap:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (self)
  {
    overrideEnabledMaps = self->_overrideEnabledMaps;
  }

  else
  {
    overrideEnabledMaps = 0;
  }

  v13 = v6;
  if ([(NSMutableArray *)overrideEnabledMaps containsObject:v6]!= v4)
  {
    v8 = v13;
    if (v4)
    {
      if (self)
      {
        v9 = self->_overrideEnabledMaps;
        if (!v9)
        {
          v10 = objc_alloc_init(NSMutableArray);
          sub_10001FD58(self, v10);

          v9 = self->_overrideEnabledMaps;
          v8 = v13;
        }
      }

      else
      {
        v12 = objc_alloc_init(NSMutableArray);
        sub_10001FD58(0, v12);

        v8 = v13;
        v9 = 0;
      }

      [(NSMutableArray *)v9 addObject:v8];
    }

    else
    {
      if (self)
      {
        v11 = self->_overrideEnabledMaps;
      }

      else
      {
        v11 = 0;
      }

      [(NSMutableArray *)v11 removeObject:v13];
    }

    sub_100028384(self);
    [(NSPPrivacyProxyAgentManager *)self updateUserEventAgentData];
    sub_100026CD4(self);
  }
}

- (BOOL)proxiedContentMapIsOverrideEnabled:(id)a3
{
  if (self)
  {
    self = self->_overrideEnabledMaps;
  }

  return [(NSPPrivacyProxyAgentManager *)self containsObject:a3];
}

- (void)setProxiedContentMapDoHBootstrapEnabled:(BOOL)a3
{
  if (self)
  {
    if (self->_disableProxiedContentDoHBootstrap != a3)
    {
      return;
    }

    self->_disableProxiedContentDoHBootstrap = !a3;
  }

  else if (a3)
  {
    return;
  }

  sub_100028384(self);
  [(NSPPrivacyProxyAgentManager *)self updateUserEventAgentData];

  sub_100026CD4(self);
}

- (void)overridePreferredProxy:(id)a3
{
  v12 = a3;
  v4 = [(NSPPrivacyProxyAgentManager *)self overridePreferredProxy];
  v5 = [v12 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    sub_100006664(self, v12);
    sub_10001FD88(self, 0);
    sub_10001FD98(self, 0);
    sub_10001FD68(self, 0);
    sub_10001FD78(self, 0);
    if (self)
    {
      v6 = self->_proxyArray;
      v7 = self->_resolverArray;
      v8 = self->_proxyPathList;
      v9 = self->_fallbackProxyPathList;
      v10 = self->_obliviousConfigs;
      proxiedContentMaps = self->_proxiedContentMaps;
    }

    else
    {
      v10 = 0;
      v8 = 0;
      v6 = 0;
      v7 = 0;
      v9 = 0;
      proxiedContentMaps = 0;
    }

    [(NSPPrivacyProxyAgentManager *)self updateProxyInfo:v6 resolverInfo:v7 proxyPathList:v8 fallbackProxyPathList:v9 obliviousConfigs:v10 proxiedContentMaps:proxiedContentMaps];

    sub_100026CD4(self);
  }

  _objc_release_x1();
}

- (void)overridePreferredObliviousProxy:(id)a3
{
  v6 = a3;
  v4 = [(NSPPrivacyProxyAgentManager *)self overridePreferredObliviousProxy];
  v5 = [v6 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    sub_10000395C(self, v6);
    sub_100029374(&self->super.isa);
    [(NSPPrivacyProxyAgentManager *)self updateUserEventAgentData];
    sub_100026CD4(self);
  }
}

- (void)overrideIngressProxy:(id)a3 fallbackProxy:(id)a4 key:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NSPPrivacyProxyAgentManager *)self overrideIngressProxy];
  if (![v20 isEqualToString:v10])
  {
    goto LABEL_6;
  }

  v11 = [(NSPPrivacyProxyAgentManager *)self overrideFallbackIngressProxy];
  if (([v8 isEqualToString:v11] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v12 = [(NSPPrivacyProxyAgentManager *)self overrideIngressProxyKey];
  v13 = [v9 isEqualToData:v12];

  if ((v13 & 1) == 0)
  {
LABEL_7:
    sub_100006B24(self, v20);
    sub_1000050DC(self, v8);
    sub_10001FD48(self, v9);
    sub_10001FD88(self, 0);
    sub_10001FD98(self, 0);
    sub_10001FD68(self, 0);
    sub_10001FD78(self, 0);
    if (self)
    {
      v14 = self->_proxyArray;
      v15 = self->_resolverArray;
      v16 = self->_proxyPathList;
      v17 = self->_fallbackProxyPathList;
      v18 = self->_obliviousConfigs;
      proxiedContentMaps = self->_proxiedContentMaps;
    }

    else
    {
      v18 = 0;
      v16 = 0;
      v14 = 0;
      v15 = 0;
      v17 = 0;
      proxiedContentMaps = 0;
    }

    [(NSPPrivacyProxyAgentManager *)self updateProxyInfo:v14 resolverInfo:v15 proxyPathList:v16 fallbackProxyPathList:v17 obliviousConfigs:v18 proxiedContentMaps:proxiedContentMaps];

    sub_100026CD4(self);
  }
}

- (void)forceFallback:(BOOL)a3
{
  if (self)
  {
    self->_forceFallback = a3;
    objc_storeStrong(&self->_candidateQuicProxyPath, 0);
    objc_storeStrong(&self->_candidateFallbackProxyPath, 0);
    objc_storeStrong(&self->_quicProxyPath, 0);
    objc_storeStrong(&self->_fallbackProxyPath, 0);
    v4 = self->_proxyArray;
    v5 = self->_resolverArray;
    v6 = self->_proxyPathList;
    v7 = self->_fallbackProxyPathList;
    v8 = self->_obliviousConfigs;
    proxiedContentMaps = self->_proxiedContentMaps;
  }

  else
  {
    v8 = 0;
    v6 = 0;
    v4 = 0;
    v5 = 0;
    v7 = 0;
    proxiedContentMaps = 0;
  }

  [(NSPPrivacyProxyAgentManager *)self updateProxyInfo:v4 resolverInfo:v5 proxyPathList:v6 fallbackProxyPathList:v7 obliviousConfigs:v8 proxiedContentMaps:proxiedContentMaps];

  sub_100026CD4(self);
}

- (void)removeExpiredTokens
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  if (self)
  {
    proxyTokenInfoArray = self->_proxyTokenInfoArray;
  }

  else
  {
    proxyTokenInfoArray = 0;
  }

  v3 = proxyTokenInfoArray;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        sub_100006B34(*(*(&v8 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)updateConfigEpoch:(id)a3
{
  v4 = a3;
  if (self)
  {
    configEpoch = self->_configEpoch;
  }

  else
  {
    configEpoch = 0;
  }

  if (([(NSNumber *)configEpoch isEqual:v4]& 1) == 0)
  {
    sub_10001FE48(self, v4);
    sub_10001FE58(self, 0);
    if (self)
    {
      [(NSPProxyPath *)self->_fallbackProxyPath updateConfigEpoch:v4];
      quicProxyPath = self->_quicProxyPath;
    }

    else
    {
      [0 updateConfigEpoch:v4];
      quicProxyPath = 0;
    }

    [(NSPProxyPath *)quicProxyPath updateConfigEpoch:v4];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    if (self)
    {
      preferredQUICProxyPaths = self->_preferredQUICProxyPaths;
    }

    else
    {
      preferredQUICProxyPaths = 0;
    }

    v8 = preferredQUICProxyPaths;
    v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (self)
          {
            v13 = self->_preferredQUICProxyPaths;
          }

          else
          {
            v13 = 0;
          }

          v14 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:*(*(&v16 + 1) + 8 * v12), v16];
          [v14 updateConfigEpoch:v4];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v15 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v10 = v15;
      }

      while (v15);
    }

    [(NSPPrivacyProxyAgentManager *)self updateUserEventAgentData];
  }
}

- (id)tierString
{
  if (!self || !self->_subscriber)
  {
    return @"FREE";
  }

  if (self->_unlimited)
  {
    return @"SUBSCRIBER_UNLIMITED";
  }

  return @"SUBSCRIBER";
}

- (void)tokenLowWaterMarkReached:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  v6 = v5;
  if (!v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v50 = "[NSPPrivacyProxyAgentManager tokenLowWaterMarkReached:]";
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s called with null proxyTokenInfo", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v4[3];
    v8 = [v7 vendor];
    *buf = 138412290;
    v50 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: token cache low water mark hit", buf, 0xCu);
  }

  v9 = v4[3];
  if ([v9 proxyHop] == 1)
  {

LABEL_7:
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10002DB60;
    v45[3] = &unk_100109910;
    v46 = v4;
    sub_1000058A8(v46, v45);
    v6 = v46;
    goto LABEL_8;
  }

  v10 = [v4[3] proxyHop];

  if (v10 == 3)
  {
    goto LABEL_7;
  }

  if ([v4[3] proxyHop] != 2)
  {
    goto LABEL_9;
  }

  if (self)
  {
    quicProxyPath = self->_quicProxyPath;
  }

  else
  {
    quicProxyPath = 0;
  }

  if ([(NSPProxyPath *)quicProxyPath matchEgress:v4])
  {
    sub_100022200(&self->super.isa, 0);
  }

  if (self)
  {
    fallbackProxyPath = self->_fallbackProxyPath;
  }

  else
  {
    fallbackProxyPath = 0;
  }

  if ([(NSPProxyPath *)fallbackProxyPath matchEgress:v4])
  {
    sub_100022D8C(&self->super.isa, 0);
  }

  if (self)
  {
    candidateQuicProxyPath = self->_candidateQuicProxyPath;
  }

  else
  {
    candidateQuicProxyPath = 0;
  }

  if ([(NSPCandidateProxyPath *)candidateQuicProxyPath matchEgress:v4])
  {
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10002DC5C;
    v43[3] = &unk_100109910;
    v44 = v4;
    sub_1000058A8(v44, v43);
  }

  if (self)
  {
    candidateFallbackProxyPath = self->_candidateFallbackProxyPath;
  }

  else
  {
    candidateFallbackProxyPath = 0;
  }

  if ([(NSPCandidateProxyPath *)candidateFallbackProxyPath matchEgress:v4])
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10002DD58;
    v41[3] = &unk_100109910;
    v42 = v4;
    sub_1000058A8(v42, v41);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  if (self)
  {
    candidatePreferredQUICProxyPaths = self->_candidatePreferredQUICProxyPaths;
  }

  else
  {
    candidatePreferredQUICProxyPaths = 0;
  }

  v16 = candidatePreferredQUICProxyPaths;
  v17 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    do
    {
      v20 = 0;
      do
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v16);
        }

        if (self)
        {
          v21 = self->_candidatePreferredQUICProxyPaths;
        }

        else
        {
          v21 = 0;
        }

        v22 = [(NSMutableDictionary *)v21 objectForKeyedSubscript:*(*(&v37 + 1) + 8 * v20)];
        if ([v22 matchEgress:v4])
        {
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_10002DE54;
          v35[3] = &unk_100109910;
          v36 = v4;
          sub_1000058A8(v36, v35);
        }

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v23 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v37 objects:v48 count:16];
      v18 = v23;
    }

    while (v23);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  if (self)
  {
    proxiedContentPaths = self->_proxiedContentPaths;
  }

  else
  {
    proxiedContentPaths = 0;
  }

  v6 = proxiedContentPaths;
  v25 = [v6 countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v32;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v31 + 1) + 8 * i) matchEgress:v4])
        {
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_10002DF50;
          v29[3] = &unk_100109910;
          v30 = v4;
          sub_1000058A8(v30, v29);
        }
      }

      v26 = [v6 countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v26);
  }

LABEL_8:

LABEL_9:
}

- (void)tokenFetched
{
  sub_10002E04C(self);
  if (self)
  {

    [(NSPPrivacyProxyAgentManager *)self tokensEmpty];
  }
}

- (void)tokenAdded
{
  sub_10002E04C(self);
  if (self)
  {

    [(NSPPrivacyProxyAgentManager *)self tokensEmpty];
  }
}

- (void)tokensEmpty
{
  if (self)
  {
    quicProxyPath = self->_quicProxyPath;
  }

  else
  {
    quicProxyPath = 0;
  }

  v4 = quicProxyPath;
  v5 = [(NSPProxyPath *)v4 ingressProxy];
  if (!sub_1000071A0(v5))
  {

LABEL_18:
    sub_10002EFC4(self);

    [(NSPPrivacyProxyAgentManager *)self updateUserEventAgentData];
    return;
  }

  if (self)
  {
    fallbackProxyPath = self->_fallbackProxyPath;
  }

  else
  {
    fallbackProxyPath = 0;
  }

  v7 = [(NSPProxyPath *)fallbackProxyPath ingressProxy];
  v8 = sub_1000071A0(v7);

  if (!v8)
  {
    goto LABEL_18;
  }

  if (self)
  {
    v9 = self->_quicProxyPath;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSPProxyPath *)v9 egressProxy];
  v11 = sub_1000071A0(v10);

  if (v11)
  {
    if (self)
    {
LABEL_11:
      v12 = self->_fallbackProxyPath;
      goto LABEL_12;
    }

LABEL_30:
    v12 = 0;
LABEL_12:
    v13 = [(NSPProxyPath *)v12 egressProxy];
    v14 = sub_1000071A0(v13);

    if (v14)
    {
      if (self)
      {
LABEL_14:
        replenishTokenTimer = self->_replenishTokenTimer;
        if (replenishTokenTimer)
        {
          dispatch_source_cancel(replenishTokenTimer);
          v16 = self->_replenishTokenTimer;
          self->_replenishTokenTimer = 0;
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained tokenFetchActive];

        self->_reportedTokenOutage = 0;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    v30 = sub_100025DB0(self, 1);
    if (v30)
    {
      v31 = v30;
      if (self)
      {
        v32 = self->_fallbackProxyPath;
      }

      else
      {
        v32 = 0;
      }

      v33 = v32;
      v34 = [(NSPProxyPath *)v33 ingressProxy];
      v35 = v34;
      if (v34)
      {
        v36 = *(v34 + 24);
      }

      else
      {
        v36 = 0;
      }

      v37 = v36;
      v38 = [v37 proxyURL];
      v39 = [v31[3] proxyURL];
      v40 = sub_1000256F4(&self->super.isa, v38, v39);

      if (!v40)
      {
        sub_10002EFC4(self);
        [(NSPPrivacyProxyAgentManager *)self updateUserEventAgentData];

        return;
      }

      v41 = nplog_obj();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = v31[3];
        v43 = [v42 vendor];
        *buf = 138412290;
        v48 = v43;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Selected %@ egress proxy to switch Fallback proxy path", buf, 0xCu);
      }

      sub_100022D8C(&self->super.isa, v40);
      if (self)
      {
        goto LABEL_14;
      }

LABEL_40:
      [0 tokenFetchActive];
LABEL_47:
      [(NSPPrivacyProxyAgentManager *)self updateUserEventAgentData];
      return;
    }

    v44 = nplog_obj();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v45 = "No egress proxy with available tokens for fallback proxy path";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v46 = sub_100025DB0(self, 0);
  if (!v46)
  {
    v44 = nplog_obj();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v45 = "No egress proxy with availabe tokens for quic proxy path";
LABEL_45:
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, v45, buf, 2u);
    }

LABEL_46:

    sub_10002EFC4(self);
    goto LABEL_47;
  }

  if (self)
  {
    v18 = self->_quicProxyPath;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = [(NSPProxyPath *)v19 ingressProxy];
  v21 = v20;
  if (v20)
  {
    v22 = *(v20 + 24);
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  v24 = [v23 proxyURL];
  v25 = [v46[3] proxyURL];
  v26 = sub_100025424(&self->super.isa, v24, v25);

  if (v26)
  {
    v27 = nplog_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = v46[3];
      v29 = [v28 vendor];
      *buf = 138412290;
      v48 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Selected %@ egress proxy to switch QUIC proxy path", buf, 0xCu);
    }

    sub_100022200(&self->super.isa, v26);
    if (self)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

  sub_10002EFC4(self);
  [(NSPPrivacyProxyAgentManager *)self updateUserEventAgentData];
}

- (id)lastTokenOutageReason
{
  if (self)
  {
    self = self->_lastTokenOutageReasonStats;
  }

  return self;
}

- (void)switchProxy:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4[3] proxyHop];
    v7 = nplog_obj();
    v8 = v7;
    if (v6 == 2)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v5[3];
        v10 = [v9 vendor];
        v16 = 138412290;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: switch proxy", &v16, 0xCu);
      }

      if (self)
      {
        candidateQuicProxyPath = self->_candidateQuicProxyPath;
      }

      else
      {
        candidateQuicProxyPath = 0;
      }

      if ([(NSPCandidateProxyPath *)candidateQuicProxyPath matchEgress:v5])
      {
        sub_10001FD88(self, 0);
        sub_100024BD4(&self->super.isa, v5);
        sub_100022200(&self->super.isa, 0);
      }

      if (self)
      {
        candidateFallbackProxyPath = self->_candidateFallbackProxyPath;
      }

      else
      {
        candidateFallbackProxyPath = 0;
      }

      if ([(NSPCandidateProxyPath *)candidateFallbackProxyPath matchEgress:v5])
      {
        sub_10001FD98(self, 0);
        sub_100024DE8(&self->super.isa, v5);
        sub_100022D8C(&self->super.isa, 0);
      }

      if (self)
      {
        quicProxyPath = self->_quicProxyPath;
      }

      else
      {
        quicProxyPath = 0;
      }

      if ([(NSPProxyPath *)quicProxyPath matchEgress:v5])
      {
        sub_100024BD4(&self->super.isa, v5);
        sub_100022200(&self->super.isa, 0);
        sub_10002FBD0(self, v5, 0);
      }

      if (self)
      {
        fallbackProxyPath = self->_fallbackProxyPath;
      }

      else
      {
        fallbackProxyPath = 0;
      }

      if ([(NSPProxyPath *)fallbackProxyPath matchEgress:v5])
      {
        sub_100024DE8(&self->super.isa, v5);
        sub_100022D8C(&self->super.isa, 0);
        sub_10002FBD0(self, v5, 1);
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v16 = 136315138;
        v17 = "[NSPPrivacyProxyAgentManager switchProxy:]";
        _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%s called with null (proxyTokenInfo.proxyInfo.proxyHop == NSPPrivacyProxyProxyInfo_ProxyHop_EGRESS_ONLY)", &v16, 0xCu);
      }
    }
  }

  else
  {
    v15 = nplog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v16 = 136315138;
      v17 = "[NSPPrivacyProxyAgentManager switchProxy:]";
      _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "%s called with null proxyTokenInfo", &v16, 0xCu);
    }
  }
}

- (void)tokenInfoInvalid:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v4[3];
      v8 = [v7 vendor];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: token info invalid", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x3032000000;
    v17 = sub_100001F14;
    v18 = sub_100005818;
    v19 = os_transaction_create();
    objc_initWeak(&location, self);
    v9 = NPGetInternalQueue();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000301B4;
    v10[3] = &unk_100109960;
    objc_copyWeak(&v13, &location);
    v11 = v4;
    p_buf = &buf;
    dispatch_async(v9, v10);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyProxyAgentManager tokenInfoInvalid:]";
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s called with null proxyTokenInfo", &buf, 0xCu);
    }
  }
}

- (void)tokenRateLimited:(id)a3 untilDate:(double)a4
{
  v6 = a3;
  v7 = nplog_obj();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v6[3];
      v10 = [v9 vendor];
      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 2048;
      *&buf[14] = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: token rate limited for %f", buf, 0x16u);
    }

    sub_10001FD68(self, 0);
    sub_10001FD78(self, 0);
    sub_10001FD88(self, 0);
    sub_10001FD98(self, 0);
    sub_100025F60(&self->super.isa);
    sub_100021FF0(self, a4);
    [(NSPPrivacyProxyAgentManager *)self updateUserEventAgentData];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v16 = sub_100001F14;
    v17 = sub_100005818;
    v18 = os_transaction_create();
    objc_initWeak(&location, self);
    v11 = NPGetInternalQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000304FC;
    block[3] = &unk_100109988;
    objc_copyWeak(&v13, &location);
    block[4] = buf;
    dispatch_async(v11, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NSPPrivacyProxyAgentManager tokenRateLimited:untilDate:]";
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%s called with null proxyTokenInfo", buf, 0xCu);
    }
  }
}

- (void)requestAccessTokenWithCompletionHandler:(id)a3
{
  v5 = a3;
  v4 = +[NSPPrivacyProxyLocationMonitor sharedMonitor];
  [v4 refreshCountryPlusTimezone:&stru_1001099A8];

  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  [(NSPPrivacyProxyAgentManager *)self requestAccessTokenWithCompletionHandler:v5];
}

- (void)mergeTokenStats:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self)
    {
      tokenFetchFailedCount = self->_tokenFetchFailedCount;
      self->_tokenFetchSuccessCount += v4[11];
      self->_tokenFetchFailedCount = tokenFetchFailedCount + v4[14];
      tokenExpiredCount = self->_tokenExpiredCount;
      self->_tokenConsumedCount += v4[12];
      self->_tokenExpiredCount = tokenExpiredCount + v4[13];
      cacheLowWaterMarkHitCount = self->_cacheLowWaterMarkHitCount;
      self->_agentLowWaterMarkHitCount += v4[15];
      self->_cacheLowWaterMarkHitCount = cacheLowWaterMarkHitCount + v4[16];
      missingTokenCount = self->_missingTokenCount;
      self->_badTokenCount += v4[17];
      self->_missingTokenCount = missingTokenCount + v4[18];
    }

    [(NSPPrivacyProxyAgentManager *)self updateUserEventAgentData];
  }

  else
  {
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = 136315138;
      v12 = "[NSPPrivacyProxyAgentManager mergeTokenStats:]";
      _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%s called with null proxyTokenInfo", &v11, 0xCu);
    }
  }
}

- (BOOL)isMultiHopProxyAgentRegistered
{
  if (self)
  {
    self = self->_quicProxyPath;
  }

  return [(NSPPrivacyProxyAgentManager *)self isMultiHopRegistered];
}

- (void)sendRTCReportForServiceOutage:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 outageReasonType];
    *buf = 138412290;
    v59 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received RTC report request with service outage stats: %@", buf, 0xCu);
  }

  v7 = v4;
  v8 = v7;
  if (!self || !v7)
  {

    goto LABEL_86;
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  [v9 setObject:@"Mosaic" forKeyedSubscript:@"eventType"];
  [v9 setObject:@"counter" forKeyedSubscript:@"type"];
  [v9 setObject:&off_100113CF0 forKeyedSubscript:@"value"];
  [v9 setObject:@"privacy_proxy_outage_notification" forKeyedSubscript:@"name"];
  v10 = [v8 outageReasonType];

  if (v10)
  {
    v11 = [v8 outageReasonType];
    if ([v11 isEqual:@"Token"])
    {
      v12 = 4001;
    }

    else if ([v11 isEqual:@"Captive"])
    {
      v12 = 4002;
    }

    else if ([v11 isEqual:@"Proxy"])
    {
      v12 = 4003;
    }

    else if ([v11 isEqual:@"DNS"])
    {
      v12 = 4004;
    }

    else
    {
      v12 = 4000;
    }

    v13 = [NSNumber numberWithInteger:v12];
    [v9 setObject:v13 forKeyedSubscript:@"label_privacy-proxy-report-reason-code"];
  }

  else
  {
    v12 = 4000;
  }

  v14 = [v8 outageReasonSubType];

  if (v14)
  {
    v15 = [v8 outageReasonSubType];
    if ([v15 isEqual:@"TokenFetchFailure"])
    {
      v16 = @"private_relay_proxy_token_fetch_failure";
    }

    else if ([v15 isEqual:@"CaptiveProbeTimeout"])
    {
      v16 = @"private_relay_proxy_captive_probe_time_out";
    }

    else if ([v15 isEqual:@"CaptiveProbeRedirected"])
    {
      v16 = @"private_relay_proxy_captive_probe_redirect";
    }

    else if ([v15 isEqual:@"ProxyConnectionTimeout"])
    {
      v16 = @"private_relay_proxy_connection_time_out";
    }

    else if ([v15 isEqual:@"ProxyConnectionRefused"])
    {
      v16 = @"private_relay_proxy_connection_refused";
    }

    else if ([v15 isEqual:@"ProxyConnectionDNSTimeout"])
    {
      v16 = @"private_relay_proxy_dns_time_out";
    }

    else if ([v15 isEqual:@"ProxyPrimaryEgressError"])
    {
      v16 = @"private_relay_proxy_primary_egress_failure";
    }

    else if ([v15 isEqual:@"ProxyFallbackEgressError"])
    {
      v16 = @"private_relay_proxy_fallback_egress_failure";
    }

    else if ([v15 isEqual:@"ProxyPrimaryOriginError"])
    {
      v16 = @"private_relay_proxy_primary_origin_failure";
    }

    else if ([v15 isEqual:@"ProxyFallbackOriginError"])
    {
      v16 = @"private_relay_proxy_fallback_origin_failure";
    }

    else if ([v15 isEqual:@"ProxyProbeRedirected"])
    {
      v16 = @"private_relay_proxy_probe_redirect";
    }

    else if ([v15 isEqual:@"ProxyProbeTCPConnected"])
    {
      v16 = @"private_relay_proxy_probe_tcp_connected";
    }

    else if ([v15 isEqual:@"ProxyProbeServerError"])
    {
      v16 = @"private_relay_proxy_probe_server_failure";
    }

    else if ([v15 isEqual:@"ProxyProbeForbidden"])
    {
      v16 = @"private_relay_proxy_probe_forbidden";
    }

    else if ([v15 isEqual:@"ProxyCertError"])
    {
      v16 = @"private_relay_proxy_cert_error";
    }

    else if ([v15 isEqual:@"ProxyConnectionDNSError"])
    {
      v16 = @"private_relay_proxy_dns_error";
    }

    else if ([v15 isEqual:@"ProxyError"])
    {
      v16 = @"private_relay_proxy_failure";
    }

    else if ([v15 isEqual:@"ProxyPrimaryEgressUnavailableError"])
    {
      v16 = @"private_relay_proxy_primary_egress_unavailable_failure";
    }

    else if ([v15 isEqual:@"ProxyFallbackEgressUnavailableError"])
    {
      v16 = @"private_relay_proxy_fallback_egress_unavailable_failure";
    }

    else if ([v15 isEqual:@"ODoHAuthFailure"])
    {
      v16 = @"private_relay_proxy_odoh_auth_failure";
    }

    else if ([v15 isEqual:@"ODoHBadMessage"])
    {
      v16 = @"private_relay_proxy_odoh_bad_message";
    }

    else
    {
      v16 = @"unknown";
    }

    v17 = v16;
    [v9 setObject:v17 forKeyedSubscript:@"label_privacy-proxy-report-reason-description"];
  }

  v18 = +[NSDate date];
  [v18 timeIntervalSince1970];
  v20 = v19 * 1000.0;

  v21 = [NSNumber numberWithDouble:v20];
  [v9 setObject:v21 forKeyedSubscript:@"label_privacy-proxy-report-time"];

  switch(v12)
  {
    case 4001:
      v44 = [v8 tokenProxy];

      if (!v44)
      {
        break;
      }

      v45 = [v8 tokenProxy];
      v46 = [NSURL URLWithString:v45];
      v36 = sub_10003074C(v46);

      v43 = @"label_privacy-proxy-token-fetch-server";
      goto LABEL_76;
    case 4004:
      v40 = [v8 odohProxy];

      if (!v40)
      {
        break;
      }

      v41 = [v8 odohProxy];
      v42 = [NSURL URLWithString:v41];
      v36 = sub_10003074C(v42);

      v43 = @"label_privacy-proxy-odoh-resolver";
LABEL_76:
      [v9 setObject:v36 forKeyedSubscript:v43];
      goto LABEL_77;
    case 4003:
      v22 = [v8 primaryIngressProxy];
      if (v22)
      {
        v23 = v22;
        v24 = [v8 primaryEgressProxy];

        if (v24)
        {
          v25 = [v8 primaryIngressProxy];
          v26 = [NSURL URLWithString:v25];
          v27 = sub_10003074C(v26);

          v28 = [v8 primaryEgressProxy];
          v29 = [NSURL URLWithString:v28];
          v30 = sub_10003074C(v29);

          [v9 setObject:v27 forKeyedSubscript:@"label_privacy-proxy-ingress-proxy"];
          [v9 setObject:v30 forKeyedSubscript:@"label_privacy-proxy-egress-proxy"];
        }
      }

      v31 = [v8 fallbackIngressProxy];
      if (v31)
      {
        v32 = v31;
        v33 = [v8 fallbackEgressProxy];

        if (v33)
        {
          v34 = [v8 fallbackIngressProxy];
          v35 = [NSURL URLWithString:v34];
          v36 = sub_10003074C(v35);

          v37 = [v8 fallbackEgressProxy];
          v38 = [NSURL URLWithString:v37];
          v39 = sub_10003074C(v38);

          [v9 setObject:v36 forKeyedSubscript:@"label_privacy-proxy-fallback-ingress-proxy"];
          [v9 setObject:v39 forKeyedSubscript:@"label_privacy-proxy-fallback-egress-proxy"];

LABEL_77:
        }
      }

      break;
  }

  v47 = [(NSPPrivacyProxyAgentManager *)self tierString];
  if (v47)
  {
    [v9 setObject:v47 forKeyedSubscript:@"label_privacy-proxy-tier-type"];
  }

  v48 = +[NSPPrivacyProxyLocationMonitor sharedMonitor];
  v49 = [v48 currentCountryPlusTimezone];

  if (v49)
  {
    [v9 setObject:v49 forKeyedSubscript:@"label_privacy-proxy-report-region"];
  }

  if (v9)
  {
    v64[0] = kRTCReportingSessionInfoClientType;
    v64[1] = kRTCReportingSessionInfoClientVersion;
    v65[0] = &off_100113D08;
    v65[1] = &off_100113CF0;
    v64[2] = kRTCReportingSessionInfoSessionID;
    v64[3] = kRTCReportingSessionInfoBatchEvent;
    v65[2] = &off_100113D20;
    v65[3] = &__kCFBooleanFalse;
    v64[4] = kRTCReportingSessionInfoContainsRealtimeEvents;
    v65[4] = &__kCFBooleanTrue;
    v50 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:5];
    v62[0] = kRTCReportingUserInfoClientName;
    v62[1] = kRTCReportingUserInfoServiceName;
    v63[0] = @"network-service-proxy";
    v63[1] = @"privacy-proxy-outage-notification";
    v51 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:2];
    v57 = 0;
    v52 = [RTCReporting sendOneMessageWithSessionInfo:v50 userInfo:v51 category:1005 type:0 payload:v9 error:&v57];
    v53 = v57;
    v54 = nplog_obj();
    v55 = v54;
    if (v52)
    {
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v59 = v9;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "sent service outage RTC report %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v59 = 1005;
      v60 = 2112;
      v61 = v53;
      _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "failed to send RTC report type: %ld error: %@", buf, 0x16u);
    }

    goto LABEL_92;
  }

LABEL_86:
  v50 = nplog_obj();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    v56 = [v8 outageReasonType];
    *buf = 138412290;
    v59 = v56;
    _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "failed to create RTC report payload for service outage type %@", buf, 0xCu);
  }

  v9 = 0;
LABEL_92:
}

- (BOOL)proxyInfo:(id)a3 matchesProxyIndex:(unint64_t)a4
{
  v6 = a3;
  if (self)
  {
    proxyArray = self->_proxyArray;
  }

  else
  {
    proxyArray = 0;
  }

  if ([(NSArray *)proxyArray count]<= a4)
  {
    v12 = 0;
  }

  else
  {
    if (self)
    {
      v8 = self->_proxyArray;
    }

    else
    {
      v8 = 0;
    }

    v9 = [(NSArray *)v8 objectAtIndex:a4];
    v10 = [v9 proxyURL];
    v11 = [v6 proxyURL];
    v12 = [v10 isEqualToString:v11];
  }

  return v12;
}

- (BOOL)isSingleHopProxyAgentRegistered
{
  if (self)
  {
    self = self->_quicProxyPath;
  }

  return [(NSPPrivacyProxyAgentManager *)self isSingleHopRegistered];
}

- (BOOL)isMultiHopFallbackProxyAgentRegistered
{
  if (self)
  {
    self = self->_fallbackProxyPath;
  }

  return [(NSPPrivacyProxyAgentManager *)self isMultiHopRegistered];
}

- (BOOL)isSingleHopFallbackProxyAgentRegistered
{
  if (self)
  {
    self = self->_fallbackProxyPath;
  }

  return [(NSPPrivacyProxyAgentManager *)self isSingleHopRegistered];
}

- (void)multiHopAgentRegistered:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self)
  {
    if (v4)
    {
      preferredQUICProxyPaths = 0;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      goto LABEL_5;
    }

    goto LABEL_64;
  }

  if (self->_quicProxyPath == v4)
  {
LABEL_64:
    v45 = nplog_obj();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "quic proxy path, multi hop agent registered", buf, 2u);
    }

    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      WeakRetained = 0;
    }

    [(NSMutableDictionary *)WeakRetained multiHopProxyAgentRegistered:1];
    goto LABEL_69;
  }

  if (self->_fallbackProxyPath != v4)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    preferredQUICProxyPaths = self->_preferredQUICProxyPaths;
LABEL_5:
    v7 = preferredQUICProxyPaths;
    v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v54;
      *&v9 = 138412290;
      v46 = v9;
      v47 = v7;
      do
      {
        v12 = 0;
        do
        {
          if (*v54 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v53 + 1) + 8 * v12);
          if (self)
          {
            v14 = self->_preferredQUICProxyPaths;
          }

          else
          {
            v14 = 0;
          }

          v15 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:*(*(&v53 + 1) + 8 * v12), v46];

          if (v15 == v5)
          {
            if (self)
            {
              candidatePreferredQUICProxyPaths = self->_candidatePreferredQUICProxyPaths;
            }

            else
            {
              candidatePreferredQUICProxyPaths = 0;
            }

            v17 = [(NSMutableDictionary *)candidatePreferredQUICProxyPaths objectForKeyedSubscript:v13];
            v18 = [v17 preferredPathPatterns];
            v19 = [v18 count];

            if (v19)
            {
              if (self)
              {
                quicProxyPath = self->_quicProxyPath;
              }

              else
              {
                quicProxyPath = 0;
              }

              [(NSPQuicProxyPath *)quicProxyPath resetMultiHopProxyAgent];
            }

            v21 = [v17 domainFilter];
            if (v21)
            {
              v22 = nplog_obj();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v46;
                v59 = v13;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Preferred QUIC proxy path for %@, multi hop agent registered", buf, 0xCu);
              }

              if (self)
              {
                v23 = objc_loadWeakRetained(&self->_delegate);
              }

              else
              {
                v23 = 0;
              }

              v24 = [(NSPProxyPath *)v5 nonDefaultAgentUUID];
              [v23 preferredProxyAgentRegistered:v13 agentUUID:v24 domainFilter:v21];

              v7 = v47;
            }
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v25 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v53 objects:v60 count:16];
        v10 = v25;
      }

      while (v25);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    if (self)
    {
      networkSpecificQUICProxyPaths = self->_networkSpecificQUICProxyPaths;
    }

    else
    {
      networkSpecificQUICProxyPaths = 0;
    }

    WeakRetained = networkSpecificQUICProxyPaths;
    v28 = [(NSMutableDictionary *)WeakRetained countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v50;
      v31 = NSPPrivacyProxyLocationMonitor;
      v48 = *v50;
      do
      {
        v32 = 0;
        do
        {
          if (*v50 != v30)
          {
            objc_enumerationMutation(WeakRetained);
          }

          v33 = *(*(&v49 + 1) + 8 * v32);
          if (self)
          {
            v34 = self->_networkSpecificQUICProxyPaths;
          }

          else
          {
            v34 = 0;
          }

          v35 = [(NSMutableDictionary *)v34 objectForKey:*(*(&v49 + 1) + 8 * v32)];
          v36 = v35;
          if (v35)
          {
            v37 = v35 == v5;
          }

          else
          {
            v37 = 0;
          }

          if (v37)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = WeakRetained;
              v39 = v31;
              v40 = nplog_obj();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Network discovered QUIC proxy path registered", buf, 2u);
              }

              if (self)
              {
                v41 = objc_loadWeakRetained(&self->_delegate);
              }

              else
              {
                v41 = 0;
              }

              v42 = [(NSPProxyPath *)v5 nonDefaultAgentUUID];
              [v41 networkDiscoveredProxyPaths:v33 registeredForAgentUUID:v42];

              v31 = v39;
              WeakRetained = v38;
              v30 = v48;
            }
          }

          v32 = v32 + 1;
        }

        while (v29 != v32);
        v43 = [(NSMutableDictionary *)WeakRetained countByEnumeratingWithState:&v49 objects:v57 count:16];
        v29 = v43;
      }

      while (v43);
    }

    goto LABEL_69;
  }

  v44 = nplog_obj();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "fallback proxy path, multi hop agent registered", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(NSMutableDictionary *)WeakRetained multiHopFallbackProxyAgentRegistered:1];
LABEL_69:
}

- (void)singleHopAgentRegistered:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    if (self->_quicProxyPath != v4)
    {
      fallbackProxyPath = self->_fallbackProxyPath;
      goto LABEL_4;
    }

LABEL_12:
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "quic proxy path, single hop agent registered", buf, 2u);
    }

    if (self)
    {
      self = objc_loadWeakRetained(&self->_delegate);
    }

    [(NSPPrivacyProxyAgentManager *)self singleHopProxyAgentRegistered:1];
    goto LABEL_17;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  fallbackProxyPath = 0;
LABEL_4:
  if (fallbackProxyPath == v4)
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "fallback proxy path, single hop agent registered", v9, 2u);
    }

    if (self)
    {
      self = objc_loadWeakRetained(&self->_delegate);
    }

    [(NSPPrivacyProxyAgentManager *)self singleHopFallbackProxyAgentRegistered:1];
LABEL_17:
  }
}

- (void)obliviousHopAgentRegistered:(id)a3 hostname:(id)a4 processes:(id)a5 agentUUID:(id)a6
{
  v11 = a4;
  v9 = a5;
  v10 = a6;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  [(NSPPrivacyProxyAgentManager *)self obliviousHopAgentRegisteredForHostname:v11 processes:v9 agentUUID:v10];
}

- (BOOL)configurationFetchDateIsWithinStart:(id)a3 end:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  v8 = [(NSPPrivacyProxyAgentManager *)self configurationFetchDateIsWithinStart:v6 end:v7];

  return v8;
}

- (void)proxiedContentAgentRegistered:(id)a3
{
  v7 = a3;
  v4 = [v7 resolverAgentUUID];
  if (v4)
  {
    [v7 resolverAgentUUID];
  }

  else
  {
    [v7 quicAgentUUID];
  }
  v5 = ;

  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  v6 = [v7 aggregateMaps];
  [(NSPPrivacyProxyAgentManager *)self proxiedContentMaps:v6 registeredForAgentUUID:v5];
}

- (void)multiHopAgentUnregistered:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self)
  {
    if (v4)
    {
      preferredQUICProxyPaths = 0;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      goto LABEL_5;
    }

    goto LABEL_57;
  }

  if (self->_quicProxyPath == v4)
  {
LABEL_57:
    v39 = nplog_obj();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "quic proxy path, multihop agent unregistered", buf, 2u);
    }

    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      WeakRetained = 0;
    }

    [(NSMutableDictionary *)WeakRetained multiHopProxyAgentRegistered:0];
    goto LABEL_62;
  }

  if (self->_fallbackProxyPath != v4)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    preferredQUICProxyPaths = self->_preferredQUICProxyPaths;
LABEL_5:
    v7 = preferredQUICProxyPaths;
    v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v46 objects:v53 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v47;
      do
      {
        v11 = 0;
        do
        {
          if (*v47 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v46 + 1) + 8 * v11);
          if (self)
          {
            v13 = self->_preferredQUICProxyPaths;
          }

          else
          {
            v13 = 0;
          }

          v14 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:*(*(&v46 + 1) + 8 * v11)];

          if (v14 == v5)
          {
            v15 = nplog_obj();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v52 = v12;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Preferred QUIC proxy path for %@, multi hop agent unregistered", buf, 0xCu);
            }

            if (self)
            {
              v16 = objc_loadWeakRetained(&self->_delegate);
            }

            else
            {
              v16 = 0;
            }

            [v16 preferredProxyAgentUnregistered:v12];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v17 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v46 objects:v53 count:16];
        v9 = v17;
      }

      while (v17);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    if (self)
    {
      networkSpecificQUICProxyPaths = self->_networkSpecificQUICProxyPaths;
    }

    else
    {
      networkSpecificQUICProxyPaths = 0;
    }

    WeakRetained = networkSpecificQUICProxyPaths;
    v20 = [(NSMutableDictionary *)WeakRetained countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v43;
      v40 = *v43;
      v41 = WeakRetained;
      do
      {
        v23 = 0;
        do
        {
          if (*v43 != v22)
          {
            objc_enumerationMutation(WeakRetained);
          }

          v24 = *(*(&v42 + 1) + 8 * v23);
          if (self)
          {
            v25 = self->_networkSpecificQUICProxyPaths;
          }

          else
          {
            v25 = 0;
          }

          v26 = [(NSMutableDictionary *)v25 objectForKey:*(*(&v42 + 1) + 8 * v23)];
          v27 = v26;
          if (v26)
          {
            v28 = v26 == v5;
          }

          else
          {
            v28 = 0;
          }

          if (v28)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = [(NSPProxyPath *)v5 ingressProxy];
              v30 = v29;
              if (v29)
              {
                v31 = *(v29 + 24);
              }

              else
              {
                v31 = 0;
              }

              v32 = v31;
              v33 = [v32 vendor];
              v34 = [NSString stringWithFormat:@"Agent_%@_%@", v24, v33];

              v35 = nplog_obj();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v52 = v34;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Network Discovered QUIC proxy path for %@, multi hop agent unregistered", buf, 0xCu);
              }

              WeakRetained = v41;
              if (self)
              {
                v36 = objc_loadWeakRetained(&self->_delegate);
              }

              else
              {
                v36 = 0;
              }

              [v36 preferredProxyAgentUnregistered:v34];

              v22 = v40;
            }
          }

          v23 = v23 + 1;
        }

        while (v21 != v23);
        v37 = [(NSMutableDictionary *)WeakRetained countByEnumeratingWithState:&v42 objects:v50 count:16];
        v21 = v37;
      }

      while (v37);
    }

    goto LABEL_62;
  }

  v38 = nplog_obj();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "fallback proxy path, multihop agent unregistered", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(NSMutableDictionary *)WeakRetained multiHopFallbackProxyAgentRegistered:0];
LABEL_62:
}

- (void)singleHopAgentUnregistered:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    if (self->_quicProxyPath != v4)
    {
      fallbackProxyPath = self->_fallbackProxyPath;
      goto LABEL_4;
    }

LABEL_12:
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "quic proxy path, single hop agent unregistered", buf, 2u);
    }

    if (self)
    {
      self = objc_loadWeakRetained(&self->_delegate);
    }

    [(NSPPrivacyProxyAgentManager *)self singleHopProxyAgentRegistered:0];
    goto LABEL_17;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  fallbackProxyPath = 0;
LABEL_4:
  if (fallbackProxyPath == v4)
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "fallback proxy path, single hop agent unregistered", v9, 2u);
    }

    if (self)
    {
      self = objc_loadWeakRetained(&self->_delegate);
    }

    [(NSPPrivacyProxyAgentManager *)self singleHopFallbackProxyAgentRegistered:0];
LABEL_17:
  }
}

- (void)obliviousHopAgentUnregistered:(id)a3 hostname:(id)a4 agentUUID:(id)a5
{
  v8 = a4;
  v7 = a5;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  [(NSPPrivacyProxyAgentManager *)self obliviousHopAgentUnregisteredForHostname:v8 agentUUID:v7];
}

- (void)proxiedContentAgentUnregistered:(id)a3
{
  v4 = a3;
  v5 = [v4 resolverAgentUUID];
  if (v5)
  {
    [v4 resolverAgentUUID];
  }

  else
  {
    [v4 quicAgentUUID];
  }
  v6 = ;

  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  [(NSPPrivacyProxyAgentManager *)self proxiedContentMapsUnregisteredForAgentUUID:v6];
}

- (void)reportProxySuccessOnInterface:(id)a3 proxyPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v6;
  if (self)
  {
    if (self->_probingReason == 2)
    {
      sub_100023CAC(self);
      [(NSPProxyPath *)self->_quicProxyPath resetError];
      [(NSPProxyPath *)self->_fallbackProxyPath resetError];
    }

    if (self->_quicProxyPath != v7)
    {
      if (self->_fallbackProxyPath != v7)
      {
LABEL_12:
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        goto LABEL_13;
      }

      v8 = self->_toggleStats;
      v9 = [(NSPToggleStats *)v8 fallbackPathStatistics];
      if (!v9)
      {

        goto LABEL_12;
      }

      goto LABEL_10;
    }

    toggleStats = self->_toggleStats;
  }

  else
  {
    toggleStats = 0;
    WeakRetained = 0;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  v8 = toggleStats;
  v9 = [(NSPToggleStats *)v8 primaryPathStatistics];
  if (v9)
  {
LABEL_10:
    ++v9[2];
  }

  if (self)
  {
    goto LABEL_12;
  }

  WeakRetained = 0;
LABEL_13:
  [WeakRetained reportPrivacyProxySuccessOnInterface:v12];

  [(NSPPrivacyProxyAgentManager *)self updateUserEventAgentData];
}

- (id)lastProxyOutageReason
{
  if (self)
  {
    self = self->_lastProxyOutageReasonStats;
  }

  return self;
}

- (void)reportActivityForApp:(id)a3 path:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  [(NSPPrivacyProxyAgentManager *)self reportActivityForApp:v7 path:v6];
}

- (void)probeSuccess:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self)
  {
    goto LABEL_18;
  }

  probingReason = self->_probingReason;
  if (probingReason != 2)
  {
    if (probingReason == 1)
    {
      if (self->_proxyPathProber == v4)
      {
        v36 = nplog_obj();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = self->_probingReason;
          v38 = @"Unknown";
          if (v37 == 2)
          {
            v38 = @"DNS";
          }

          if (v37 == 1)
          {
            v39 = @"Proxy";
          }

          else
          {
            v39 = v38;
          }

          v40 = v39;
          *buf = 138412290;
          *&buf[4] = v40;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Probing(%@): Proxy path probe successful", buf, 0xCu);
        }

        [(NSPProxyPath *)self->_quicProxyPath resetStats];
        [(NSPProxyPath *)self->_quicProxyPath resetError];
        [(NSPProxyPath *)self->_fallbackProxyPath resetStats];
        [(NSPProxyPath *)self->_fallbackProxyPath resetError];
        v41 = +[NSDate now];
        objc_storeStrong(&self->_probeEndTime, v41);

        sub_100023CAC(self);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v52 = sub_100001F14;
        v53 = sub_100005818;
        v54 = os_transaction_create();
        v42 = NPGetInternalQueue();
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_100037C38;
        v50[3] = &unk_100109450;
        v50[4] = self;
        v50[5] = buf;
        dispatch_async(v42, v50);

        _Block_object_dispose(buf, 8);
      }

      else
      {
        directPathProber = self->_directPathProber;
        if (directPathProber == v4)
        {
          v8 = directPathProber;
          if (v5)
          {
            probeSuccessCount = v8->_probeSuccessCount;

            if (probeSuccessCount >= 2)
            {
              v10 = nplog_obj();
              if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
              {
                v11 = self->_probingReason;
                v12 = @"Unknown";
                if (v11 == 2)
                {
                  v12 = @"DNS";
                }

                if (v11 == 1)
                {
                  v13 = @"Proxy";
                }

                else
                {
                  v13 = v12;
                }

                v14 = v13;
                v15 = v14;
                v16 = self->_directPathProber;
                if (v16)
                {
                  v16 = v16->_probeSuccessCount;
                }

                *buf = 138412546;
                *&buf[4] = v14;
                *&buf[12] = 2048;
                *&buf[14] = v16;
                _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Probing(%@): Direct path probe successful %lu times", buf, 0x16u);
              }

              objc_storeStrong(&self->_directPathProber, 0);
            }
          }
        }
      }

      goto LABEL_52;
    }

LABEL_18:
    v17 = nplog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      if (self)
      {
        v18 = self->_probingReason;
        v19 = @"Unknown";
        if (v18 == 2)
        {
          v19 = @"DNS";
        }

        if (v18 == 1)
        {
          v20 = @"Proxy";
        }

        else
        {
          v20 = v19;
        }
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      *buf = 138412290;
      *&buf[4] = v21;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Invalid probing reason: %@", buf, 0xCu);
    }

    goto LABEL_52;
  }

  v22 = self->_directPathProber == v4;
  v23 = nplog_obj();
  v24 = v23;
  if (v22)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v25 = self->_probingReason;
      v26 = @"Unknown";
      if (v25 == 2)
      {
        v26 = @"DNS";
      }

      if (v25 == 1)
      {
        v27 = @"Proxy";
      }

      else
      {
        v27 = v26;
      }

      v28 = v27;
      v29 = v28;
      v30 = self->_directPathProber;
      if (v30)
      {
        v30 = v30->_probeSuccessCount;
      }

      *buf = 138412546;
      *&buf[4] = v28;
      *&buf[12] = 2048;
      *&buf[14] = v30;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Probing(%@): Direct path probe successful %lu times", buf, 0x16u);
    }

    v31 = self->_directPathProber;
    v32 = v31;
    if (!v31 || !v31->_probeFailedCount)
    {
      v33 = self->_directPathProber;
      v34 = v33;
      if (!v33 || !v33->_probeRedirectedCount)
      {
        v43 = self->_directPathProber;
        if (v43)
        {
          v44 = v43->_probeServerErrorCount == 0;

          if (!v44)
          {
            goto LABEL_43;
          }
        }

        else
        {
        }

        v45 = self->_directPathProber;
        if (v45)
        {
          v46 = v45->_probeSuccessCount > 1;

          if (v46)
          {
            v47 = self->_path;
            v48 = [(NWPath *)v47 interface];
            sub_10003326C(self, v48, 1);

            v49 = +[NSDate now];
            objc_storeStrong(&self->_probeEndTime, v49);

            sub_100023CAC(self);
          }
        }

        goto LABEL_52;
      }
    }

LABEL_43:
    [(NSPProxyPath *)self->_quicProxyPath resetStats];
    [(NSPProxyPath *)self->_quicProxyPath resetError];
    [(NSPProxyPath *)self->_fallbackProxyPath resetStats];
    [(NSPProxyPath *)self->_fallbackProxyPath resetError];
    v35 = +[NSDate now];
    objc_storeStrong(&self->_probeEndTime, v35);

    sub_100023CAC(self);
LABEL_52:
    [(NSPPrivacyProxyAgentManager *)self updateUserEventAgentData];
    goto LABEL_53;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[NSPPrivacyProxyAgentManager probeSuccess:]";
    _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "%s called with null (prober == self.directPathProber)", buf, 0xCu);
  }

LABEL_53:
}

- (void)probeFailed:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self)
  {
    goto LABEL_9;
  }

  probingReason = self->_probingReason;
  if (probingReason == 2)
  {
    goto LABEL_11;
  }

  if (probingReason == 1)
  {
    proxyPathProber = self->_proxyPathProber;
    if (proxyPathProber == v4)
    {
      v8 = proxyPathProber;
      if (v5 && v8->_probeFailedCount > 1)
      {
        directPathProber = self->_directPathProber;

        if (!directPathProber)
        {
          v10 = self->_path;
          v11 = [(NWPath *)v10 interface];
          objc_storeStrong(&self->_proberInterface, v11);

          sub_10003326C(self, self->_proberInterface, 2);
        }
      }

      else
      {
      }
    }
  }

  else
  {
LABEL_9:
    v12 = nplog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v13 = self->_probingReason;
        v14 = @"Unknown";
        if (v13 == 2)
        {
          v14 = @"DNS";
        }

        if (v13 == 1)
        {
          v15 = @"Proxy";
        }

        else
        {
          v15 = v14;
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      v17 = 138412290;
      v18 = v16;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid probing reason: %@", &v17, 0xCu);
    }
  }

LABEL_11:
  [(NSPPrivacyProxyAgentManager *)self updateUserEventAgentData];
}

- (void)probeRedirected:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self)
  {
    goto LABEL_13;
  }

  probingReason = self->_probingReason;
  if (probingReason != 2)
  {
    if (probingReason == 1)
    {
      if (self->_directPathProber != v4)
      {
LABEL_24:
        [(NSPPrivacyProxyAgentManager *)self updateUserEventAgentData];
        goto LABEL_25;
      }

      v7 = nplog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = self->_probingReason;
        v9 = @"Unknown";
        if (v8 == 2)
        {
          v9 = @"DNS";
        }

        if (v8 == 1)
        {
          v10 = @"Proxy";
        }

        else
        {
          v10 = v9;
        }

        v11 = v10;
        v24 = 138412290;
        v25 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Probing(%@): Direct path probe redirected", &v24, 0xCu);
      }

      [(NSPOutageReasonStats *)self->_lastProxyOutageReasonStats setOutageReasonSubType:@"CaptiveProbeRedirected"];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained proxyConnectivityNetworkOutage];
LABEL_14:

      goto LABEL_24;
    }

LABEL_13:
    WeakRetained = nplog_obj();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v20 = self->_probingReason;
        v21 = @"Unknown";
        if (v20 == 2)
        {
          v21 = @"DNS";
        }

        if (v20 == 1)
        {
          v22 = @"Proxy";
        }

        else
        {
          v22 = v21;
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;
      v24 = 138412290;
      v25 = v23;
      _os_log_error_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "Invalid probing reason: %@", &v24, 0xCu);
    }

    goto LABEL_14;
  }

  directPathProber = self->_directPathProber;
  v14 = nplog_obj();
  v15 = v14;
  if (directPathProber == v5)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = self->_probingReason;
      v17 = @"Unknown";
      if (v16 == 2)
      {
        v17 = @"DNS";
      }

      if (v16 == 1)
      {
        v18 = @"Proxy";
      }

      else
      {
        v18 = v17;
      }

      v19 = v18;
      v24 = 138412290;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Probing(%@): Direct path probe redirected", &v24, 0xCu);
    }

    sub_100023CAC(self);
    goto LABEL_24;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    v24 = 136315138;
    v25 = "[NSPPrivacyProxyAgentManager probeRedirected:]";
    _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "%s called with null (prober == self.directPathProber)", &v24, 0xCu);
  }

LABEL_25:
}

- (void)probeServerError:(id)a3 httpStatusCode:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (!self)
  {
    goto LABEL_14;
  }

  probingReason = self->_probingReason;
  if (probingReason != 2)
  {
    if (probingReason == 1)
    {
      if (self->_directPathProber != v6)
      {
LABEL_25:
        [(NSPPrivacyProxyAgentManager *)self updateUserEventAgentData];
        goto LABEL_26;
      }

      v9 = nplog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = self->_probingReason;
        v11 = @"Unknown";
        if (v10 == 2)
        {
          v11 = @"DNS";
        }

        if (v10 == 1)
        {
          v12 = @"Proxy";
        }

        else
        {
          v12 = v11;
        }

        v13 = v12;
        v27 = 138412290;
        v28 = v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Probing(%@): Direct path probe received server error", &v27, 0xCu);
      }

      lastProxyOutageReasonStats = self->_lastProxyOutageReasonStats;
      if (a4 == 403)
      {
        [(NSPOutageReasonStats *)lastProxyOutageReasonStats setOutageReasonSubType:@"ProxyProbeForbidden"];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained proxyConnectivityNetworkOutage];
      }

      else
      {
        [(NSPOutageReasonStats *)lastProxyOutageReasonStats setOutageReasonSubType:@"ProxyProbeServerError"];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained proxyConnectivityOutage];
      }

LABEL_15:

      goto LABEL_25;
    }

LABEL_14:
    WeakRetained = nplog_obj();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v23 = self->_probingReason;
        v24 = @"Unknown";
        if (v23 == 2)
        {
          v24 = @"DNS";
        }

        if (v23 == 1)
        {
          v25 = @"Proxy";
        }

        else
        {
          v25 = v24;
        }
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;
      v27 = 138412290;
      v28 = v26;
      _os_log_error_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "Invalid probing reason: %@", &v27, 0xCu);
    }

    goto LABEL_15;
  }

  directPathProber = self->_directPathProber;
  v17 = nplog_obj();
  v18 = v17;
  if (directPathProber == v7)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = self->_probingReason;
      v20 = @"Unknown";
      if (v19 == 2)
      {
        v20 = @"DNS";
      }

      if (v19 == 1)
      {
        v21 = @"Proxy";
      }

      else
      {
        v21 = v20;
      }

      v22 = v21;
      v27 = 138412290;
      v28 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Probing(%@): Direct path probe received server error", &v27, 0xCu);
    }

    sub_100023CAC(self);
    goto LABEL_25;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    v27 = 136315138;
    v28 = "[NSPPrivacyProxyAgentManager probeServerError:httpStatusCode:]";
    _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "%s called with null (prober == self.directPathProber)", &v27, 0xCu);
  }

LABEL_26:
}

- (id)ingressProxyURL
{
  if (self)
  {
    quicProxyPath = self->_quicProxyPath;
  }

  else
  {
    quicProxyPath = 0;
  }

  v3 = quicProxyPath;
  v4 = [(NSPProxyPath *)v3 ingressProxy];
  v5 = v4;
  if (v4)
  {
    v4 = v4[3];
  }

  v6 = [v4 proxyURL];

  return v6;
}

- (id)ingressFallbackProxyURL
{
  if (self)
  {
    fallbackProxyPath = self->_fallbackProxyPath;
  }

  else
  {
    fallbackProxyPath = 0;
  }

  v3 = fallbackProxyPath;
  v4 = [(NSPProxyPath *)v3 ingressProxy];
  v5 = v4;
  if (v4)
  {
    v4 = v4[3];
  }

  v6 = [v4 tcpProxyFqdn];

  return v6;
}

- (void)copyProxyInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (self)
    {
      quicProxyPath = self->_quicProxyPath;
    }

    else
    {
      quicProxyPath = 0;
    }

    v6 = quicProxyPath;

    if (v6)
    {
      if (self)
      {
        v7 = self->_quicProxyPath;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
      v9 = [(NSPProxyPath *)v8 ingressProxy];
      v10 = v9;
      if (v9)
      {
        v11 = *(v9 + 24);
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      v13 = [v12 proxyURL];
      [v4 setIngressProxyURL:v13];

      if (self)
      {
        v14 = self->_quicProxyPath;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      v16 = [(NSPProxyPath *)v15 egressProxy];
      v17 = v16;
      if (v16)
      {
        v18 = *(v16 + 24);
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      v20 = [v19 proxyURL];
      [v4 setEgressProxyURL:v20];
    }

    if (self)
    {
      fallbackProxyPath = self->_fallbackProxyPath;
    }

    else
    {
      fallbackProxyPath = 0;
    }

    v22 = fallbackProxyPath;

    if (v22)
    {
      if (self)
      {
        v23 = self->_fallbackProxyPath;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      v25 = [(NSPProxyPath *)v24 ingressProxy];
      v26 = v25;
      if (v25)
      {
        v27 = *(v25 + 24);
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;
      v29 = [v28 tcpProxyFqdn];
      [v4 setIngressFallbackProxyURL:v29];

      if (self)
      {
        v30 = self->_fallbackProxyPath;
      }

      else
      {
        v30 = 0;
      }

      v31 = v30;
      v32 = [(NSPProxyPath *)v31 egressProxy];
      v33 = v32;
      if (v32)
      {
        v34 = *(v32 + 24);
      }

      else
      {
        v34 = 0;
      }

      v35 = v34;
      v36 = [v35 tcpProxyFqdn];
      [v4 setEgressFallbackProxyURL:v36];
    }

    if (self)
    {
      [v4 setProxyTokenFetchSuccessCount:{objc_msgSend(v4, "proxyTokenFetchSuccessCount") + self->_tokenFetchSuccessCount}];
      tokenFetchFailedCount = self->_tokenFetchFailedCount;
    }

    else
    {
      [v4 setProxyTokenFetchSuccessCount:{objc_msgSend(v4, "proxyTokenFetchSuccessCount")}];
      tokenFetchFailedCount = 0;
    }

    [v4 setProxyTokenFetchFailedCount:{objc_msgSend(v4, "proxyTokenFetchFailedCount") + tokenFetchFailedCount}];
    if (self)
    {
      [v4 setProxyTokenConsumedCount:{objc_msgSend(v4, "proxyTokenConsumedCount") + self->_tokenConsumedCount}];
      tokenExpiredCount = self->_tokenExpiredCount;
    }

    else
    {
      [v4 setProxyTokenConsumedCount:{objc_msgSend(v4, "proxyTokenConsumedCount")}];
      tokenExpiredCount = 0;
    }

    [v4 setProxyTokenExpiredCount:{objc_msgSend(v4, "proxyTokenExpiredCount") + tokenExpiredCount}];
    if (self)
    {
      [v4 setProxyAgentLowWaterMarkHitCount:{objc_msgSend(v4, "proxyAgentLowWaterMarkHitCount") + self->_agentLowWaterMarkHitCount}];
      cacheLowWaterMarkHitCount = self->_cacheLowWaterMarkHitCount;
    }

    else
    {
      [v4 setProxyAgentLowWaterMarkHitCount:{objc_msgSend(v4, "proxyAgentLowWaterMarkHitCount")}];
      cacheLowWaterMarkHitCount = 0;
    }

    [v4 setProxyCacheLowWaterMarkHitCount:{objc_msgSend(v4, "proxyCacheLowWaterMarkHitCount") + cacheLowWaterMarkHitCount}];
    if (self)
    {
      [v4 setBadTokenCount:{objc_msgSend(v4, "badTokenCount") + self->_badTokenCount}];
      missingTokenCount = self->_missingTokenCount;
    }

    else
    {
      [v4 setBadTokenCount:{objc_msgSend(v4, "badTokenCount")}];
      missingTokenCount = 0;
    }

    [v4 setMissingTokenCount:{objc_msgSend(v4, "missingTokenCount") + missingTokenCount}];
    if (self)
    {
      [v4 setNetworkProxiesRotated:{objc_msgSend(v4, "networkProxiesRotated") + self->_networkProxiesRotated}];
      networkFallbackProxiesRotated = self->_networkFallbackProxiesRotated;
    }

    else
    {
      [v4 setNetworkProxiesRotated:{objc_msgSend(v4, "networkProxiesRotated")}];
      networkFallbackProxiesRotated = 0;
    }

    [v4 setNetworkFallbackProxiesRotated:{objc_msgSend(v4, "networkFallbackProxiesRotated") + networkFallbackProxiesRotated}];
    if (self)
    {
      proxiesRotated = self->_proxiesRotated;
    }

    else
    {
      proxiesRotated = 0;
    }

    [v4 setProxiesRotated:{objc_msgSend(v4, "proxiesRotated") + proxiesRotated}];
    log = objc_alloc_init(NSMutableDictionary);
    v86 = self;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    if (self)
    {
      proxyTokenInfoArray = self->_proxyTokenInfoArray;
    }

    else
    {
      proxyTokenInfoArray = 0;
    }

    v44 = proxyTokenInfoArray;
    v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v96 objects:v102 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v97;
      do
      {
        v48 = 0;
        do
        {
          if (*v97 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v96 + 1) + 8 * v48);
          if (v49)
          {
            v50 = *(v49 + 24);
          }

          else
          {
            v50 = 0;
          }

          v51 = v50;
          v52 = [v51 vendor];

          if (v52)
          {
            v53 = objc_alloc_init(PrivacyProxyTokenInfo);
            v54 = v53;
            if (v49)
            {
              [v53 setCachedTokens:*(v49 + 32)];
              v55 = *(v49 + 40);
              if (v55)
              {
                v56 = [*(v55 + 24) tokenCount];
              }

              else
              {
                v56 = 0;
              }

              [v54 setAgentTokens:v56];
              if (*(v49 + 11))
              {
                v57 = 30;
              }

              else
              {
                v57 = 10;
              }
            }

            else
            {
              [v53 setCachedTokens:0];
              [v54 setAgentTokens:0];
              v57 = 0;
            }

            [v54 setCacheLowWaterMark:v57];
            [v54 setAgentLowWaterMark:sub_100006674(v49)];
            [log setObject:v54 forKeyedSubscript:v52];
          }

          if (v49)
          {
            [v4 setProxyTokenFetchSuccessCount:{objc_msgSend(v4, "proxyTokenFetchSuccessCount") + *(v49 + 88)}];
            v58 = *(v49 + 112);
          }

          else
          {
            [v4 setProxyTokenFetchSuccessCount:{objc_msgSend(v4, "proxyTokenFetchSuccessCount")}];
            v58 = 0;
          }

          [v4 setProxyTokenFetchFailedCount:{objc_msgSend(v4, "proxyTokenFetchFailedCount") + v58}];
          if (v49)
          {
            [v4 setProxyTokenConsumedCount:{objc_msgSend(v4, "proxyTokenConsumedCount") + *(v49 + 96)}];
            v59 = *(v49 + 104);
          }

          else
          {
            [v4 setProxyTokenConsumedCount:{objc_msgSend(v4, "proxyTokenConsumedCount")}];
            v59 = 0;
          }

          [v4 setProxyTokenExpiredCount:{objc_msgSend(v4, "proxyTokenExpiredCount") + v59}];
          if (v49)
          {
            [v4 setProxyAgentLowWaterMarkHitCount:{objc_msgSend(v4, "proxyAgentLowWaterMarkHitCount") + *(v49 + 120)}];
            v60 = *(v49 + 128);
          }

          else
          {
            [v4 setProxyAgentLowWaterMarkHitCount:{objc_msgSend(v4, "proxyAgentLowWaterMarkHitCount")}];
            v60 = 0;
          }

          [v4 setProxyCacheLowWaterMarkHitCount:{objc_msgSend(v4, "proxyCacheLowWaterMarkHitCount") + v60}];
          if (v49)
          {
            [v4 setBadTokenCount:{objc_msgSend(v4, "badTokenCount") + *(v49 + 136)}];
            v49 = *(v49 + 144);
          }

          else
          {
            [v4 setBadTokenCount:{objc_msgSend(v4, "badTokenCount")}];
          }

          [v4 setMissingTokenCount:{objc_msgSend(v4, "missingTokenCount") + v49}];

          v48 = v48 + 1;
        }

        while (v46 != v48);
        v61 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v96 objects:v102 count:16];
        v46 = v61;
      }

      while (v61);
    }

    [v4 setTokenCounts:log];
    v62 = objc_alloc_init(NSMutableArray);
    v84 = objc_alloc_init(NSMutableDictionary);
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    proxiedContentPaths = v86;
    if (v86)
    {
      proxiedContentPaths = v86->_proxiedContentPaths;
    }

    obj = proxiedContentPaths;
    v64 = [obj countByEnumeratingWithState:&v92 objects:v101 count:16];
    if (v64)
    {
      v65 = v64;
      v87 = *v93;
      do
      {
        v66 = 0;
        do
        {
          if (*v93 != v87)
          {
            objc_enumerationMutation(obj);
          }

          v67 = *(*(&v92 + 1) + 8 * v66);
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v68 = [v67 associatedMaps];
          v69 = [v68 countByEnumeratingWithState:&v88 objects:v100 count:16];
          if (v69)
          {
            v70 = v69;
            v71 = *v89;
            do
            {
              for (i = 0; i != v70; i = i + 1)
              {
                if (*v89 != v71)
                {
                  objc_enumerationMutation(v68);
                }

                v73 = [*(*(&v88 + 1) + 8 * i) identifier];
                [v62 addObject:v73];
              }

              v70 = [v68 countByEnumeratingWithState:&v88 objects:v100 count:16];
            }

            while (v70);
          }

          v74 = [v67 ingressProxy];
          if (v74)
          {
            [v67 ingressProxy];
          }

          else
          {
            [v67 egressProxy];
          }
          v75 = ;
          v76 = v75;
          if (v75)
          {
            v75 = v75[3];
          }

          v77 = [v75 vendor];

          if (v77)
          {
            v78 = [v67 quicRegistration];
            v79 = v78;
            if (v78)
            {
              v80 = [*(v78 + 24) tokenCount];
            }

            else
            {
              v80 = 0;
            }

            v81 = [NSNumber numberWithUnsignedInteger:v80];
            [v84 setObject:v81 forKeyedSubscript:v77];
          }

          v66 = v66 + 1;
        }

        while (v66 != v65);
        v82 = [obj countByEnumeratingWithState:&v92 objects:v101 count:16];
        v65 = v82;
      }

      while (v82);
    }

    [v4 setResumableSessionCounts:v84];
    [v4 setEnabledProxiedContentMaps:v62];
  }

  else
  {
    log = nplog_obj();
    if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v104 = "[NSPPrivacyProxyAgentManager copyProxyInfo:]";
      _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s called with null proxyInfo", buf, 0xCu);
    }
  }
}

- (void)updateUserEventAgentData
{
  v3 = nplog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Updating userevent agent data", v8, 2u);
  }

  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [(NSPPrivacyProxyAgentManager *)self encodeWithCoder:v4];
  v5 = +[NEFileHandleMaintainer sharedMaintainer];
  v6 = [v4 encodedData];
  [v5 setAuxiliaryData:v6 forKey:@"NSPProxyAgentManagerAuxilaryData"];

  v7 = +[NEFileHandleMaintainer sharedMaintainer];
  [v7 commit];
}

- (void)setUserEventAgentTokenFetchParameters
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  if (self)
  {
    proxyTokenInfoArray = self->_proxyTokenInfoArray;
  }

  else
  {
    proxyTokenInfoArray = 0;
  }

  v3 = proxyTokenInfoArray;
  v4 = 0;
  v5 = 0;
  v6 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        if (v5)
        {
          if (!v9)
          {
            goto LABEL_16;
          }

          v10 = *(v9 + 80);
          if (v10)
          {
            v11 = v10;
            [*(v9 + 80) timeIntervalSinceDate:v5];
            v13 = v12 < 0.0;

            if (v13)
            {
              v14 = *(v9 + 80);

              v5 = v14;
            }
          }

          goto LABEL_15;
        }

        if (v9)
        {
          v5 = *(v9 + 80);
LABEL_15:
          v4 |= *(v9 + 9);
          goto LABEL_16;
        }

        v5 = 0;
LABEL_16:
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v15 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v6 = v15;
    }

    while (v15);
  }

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_100001F14;
  v22[4] = sub_100005818;
  v23 = os_transaction_create();
  v16 = NPGetInternalQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039214;
  block[3] = &unk_1001099F8;
  v21 = v4 & 1;
  v19 = v5;
  v20 = v22;
  v17 = v5;
  dispatch_async(v16, block);

  _Block_object_dispose(v22, 8);
}

- (void)setUserEventAgentProberParameters
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = sub_100001F14;
  v5[4] = sub_100005818;
  v6 = os_transaction_create();
  v3 = NPGetInternalQueue();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000393E0;
  v4[3] = &unk_100109450;
  v4[4] = self;
  v4[5] = v5;
  dispatch_async(v3, v4);

  _Block_object_dispose(v5, 8);
}

- (void)reportTokenFetchFailure:(id)a3 statusCode:(int64_t)a4
{
  v6 = a3;
  v7 = +[NSPPrivacyTokenManager sharedTokenManager];
  v8 = [v7 tokenFetchURL];
  [(NSPPrivacyProxyAgentManager *)self sendRTCReportWithFailureType:1003 errorCode:a4 url:v6 ingressProxy:0 egressProxy:0 tokenServer:v8];

  v9 = objc_alloc_init(NSPTokenServerStats);
  v10 = [(NSPPrivacyProxyAgentManager *)self tierString];
  [(NSPTokenServerStats *)v9 setTierType:v10];

  if (self && self->_tokenServerMaskedAddress)
  {
    [(NSPTokenServerStats *)v9 setTokenServerAddress:?];
    [(NSPProxyAnalytics *)v9 sendAnalytics];
  }

  else
  {
    v11 = +[NSPPrivacyTokenManager sharedTokenManager];
    if (self)
    {
      path = self->_path;
    }

    else
    {
      path = 0;
    }

    v13 = path;
    v14 = [(NWPath *)v13 interface];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100039760;
    v16[3] = &unk_100109A20;
    v16[4] = self;
    v15 = v9;

    v17 = v15;
    [v11 getTokenServerIPWithInterface:v14 completionHandler:v16];
  }
}

- (id)singleHopQUICProxyConfigHash:(id)a3
{
  if (self)
  {
    self = self->_quicProxyPath;
  }

  return [(NSPPrivacyProxyAgentManager *)self multiHopConfigurationHash];
}

- (id)multiHopQUICProxyConfigHash:(id)a3
{
  if (self)
  {
    self = self->_quicProxyPath;
  }

  return [(NSPPrivacyProxyAgentManager *)self singleHopConfigurationHash];
}

- (id)multiHopFallbackProxyConfigHash:(id)a3
{
  if (self)
  {
    self = self->_fallbackProxyPath;
  }

  return [(NSPPrivacyProxyAgentManager *)self multiHopConfigurationHash];
}

- (id)singleHopFallbackProxyConfigHash:(id)a3
{
  if (self)
  {
    self = self->_fallbackProxyPath;
  }

  return [(NSPPrivacyProxyAgentManager *)self singleHopConfigurationHash];
}

- (id)alternatePreferredPathAgentUUIDs:(id)a3
{
  v29 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  if (self)
  {
    preferredQUICProxyPaths = self->_preferredQUICProxyPaths;
  }

  else
  {
    preferredQUICProxyPaths = 0;
  }

  obj = preferredQUICProxyPaths;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v5)
  {
    v26 = 0;
    goto LABEL_31;
  }

  v6 = v5;
  v26 = 0;
  v28 = *v31;
  do
  {
    v7 = 0;
    do
    {
      if (*v31 != v28)
      {
        objc_enumerationMutation(obj);
      }

      if (self)
      {
        v8 = self->_preferredQUICProxyPaths;
      }

      else
      {
        v8 = 0;
      }

      v9 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:*(*(&v30 + 1) + 8 * v7), v26];
      v10 = [v9 egressProxy];
      v11 = v10;
      if (v10)
      {
        v12 = *(v10 + 24);
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v14 = [v13 vendor];
      v15 = [v29 egressProxy];
      v16 = v15;
      if (v15)
      {
        v15 = v15[3];
      }

      v17 = [v15 vendor];
      v18 = [v14 isEqualToString:v17];

      if ((v18 & 1) == 0)
      {
        v19 = [v9 egressProxy];
        v20 = v19;
        if (v19)
        {
          v19 = v19[3];
        }

        v21 = [v19 preferredPathPatterns];
        if ([v21 count])
        {
          v22 = [v9 nonDefaultAgentUUID];

          if (!v22)
          {
            goto LABEL_24;
          }

          v23 = v26;
          if (!v26)
          {
            v23 = objc_alloc_init(NSMutableArray);
          }

          v20 = [v9 nonDefaultAgentUUID];
          v26 = v23;
          [v23 addObject:v20];
        }

        else
        {
        }
      }

LABEL_24:

      v7 = v7 + 1;
    }

    while (v6 != v7);
    v24 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    v6 = v24;
  }

  while (v24);
LABEL_31:

  return v26;
}

- (void)didReceiveUpdatedPvDOptions:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = kSCPropNetPvDHTTPSupported;
    v7 = [v4 objectForKey:kSCPropNetPvDHTTPSupported];
    if (v7)
    {
      v8 = v7;
      v9 = kSCPropNetPvDIdentifier;
      v10 = [v5 objectForKey:kSCPropNetPvDIdentifier];
      if (!v10)
      {
LABEL_21:

        goto LABEL_22;
      }

      v11 = v10;
      v12 = kSCPropNetPvDAdditionalInformation;
      v13 = [v5 objectForKey:kSCPropNetPvDAdditionalInformation];

      if (v13)
      {
        v8 = [v5 objectForKey:v12];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v17 = nplog_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "PvD additional info not in the correct format", buf, 2u);
          }

          goto LABEL_20;
        }

        v14 = [v5 objectForKey:v6];
        v15 = [v14 intValue];

        v16 = [v5 objectForKey:v9];
        v17 = v16;
        if (v15 == 1)
        {
          if ([v16 length])
          {
            v18 = objc_alloc_init(NSURLComponents);
            [v18 setPath:@"/.well-known/pvd"];
            [v18 setScheme:@"https"];
            [v18 setHost:v17];
            v19 = [v18 URL];
            if (self)
            {
              pvdConfigurationFetcher = self->_pvdConfigurationFetcher;
              if (pvdConfigurationFetcher)
              {
LABEL_13:
                sub_10004939C(pvdConfigurationFetcher, v8, v19);

LABEL_20:
                goto LABEL_21;
              }

              v21 = [NSPPvDConfigurationFetcher alloc];
              WeakRetained = objc_loadWeakRetained(&self->_delegate);
            }

            else
            {
              v21 = [NSPPvDConfigurationFetcher alloc];
              WeakRetained = 0;
            }

            v23 = sub_100048314(&v21->super.isa, self, WeakRetained);
            sub_10001FE28(self, v23);

            if (self)
            {
              pvdConfigurationFetcher = self->_pvdConfigurationFetcher;
            }

            else
            {
              pvdConfigurationFetcher = 0;
            }

            goto LABEL_13;
          }

          v24 = nplog_obj();
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
LABEL_19:

            goto LABEL_20;
          }

          v27 = 0;
          v25 = "Identifier was not found in PvD options";
          v26 = &v27;
        }

        else
        {
          v24 = nplog_obj();
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          v28 = 0;
          v25 = "HTTP over TLS is not supported";
          v26 = &v28;
        }

        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v25, v26, 2u);
        goto LABEL_19;
      }
    }
  }

LABEL_22:
}

- (BOOL)networkDiscoveredProxyPresentInAgentManager
{
  if (self)
  {
    self = self->_networkSpecificQUICProxyPaths;
  }

  v2 = [(NSPPrivacyProxyAgentManager *)self count];
  if (v2)
  {
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Network discovered proxy was found to be present", v5, 2u);
    }
  }

  return v2 != 0;
}

- (void)setupMasqueProxyWith:(id)a3
{
  v14 = a3;
  if (v14)
  {
    v4 = self ? self->_path : 0;
    v5 = [(NWPath *)v4 interface];

    if (v5)
    {
      if (self)
      {
        networkDiscoveredProxyInfos = self->_networkDiscoveredProxyInfos;
        if (!networkDiscoveredProxyInfos)
        {
          v7 = objc_alloc_init(NSMutableDictionary);
          sub_10001FD38(self, v7);

          networkDiscoveredProxyInfos = self->_networkDiscoveredProxyInfos;
        }

        v8 = networkDiscoveredProxyInfos;
        path = self->_path;
      }

      else
      {
        v13 = objc_alloc_init(NSMutableDictionary);
        sub_10001FD38(0, v13);

        v8 = 0;
        path = 0;
      }

      v10 = path;
      v11 = [(NWPath *)v10 interface];
      v12 = [v11 interfaceName];
      [(NSMutableDictionary *)v8 setObject:v14 forKey:v12];

      sub_10002E04C(self);
    }
  }
}

@end