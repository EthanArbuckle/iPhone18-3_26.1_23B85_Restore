@interface KTSMManager
- (BOOL)changeOptInState:(unint64_t)state application:(id)application loggableData:(id *)data error:(id *)error;
- (BOOL)isCloudKitManateeAcountAvailable;
- (BOOL)isKTKeyDifferent:(id)different;
- (BOOL)maybeUpdateMonitorState:(double)state;
- (BOOL)optOutWhenNotEligible:(id)eligible error:(id *)error;
- (BOOL)triggerCKFetchCLI:(id *)i;
- (BOOL)waitUntilReadyForRPCForOperation:(id)operation fast:(BOOL)fast error:(id *)error;
- (KTSMManager)initWithDependencies:(id)dependencies;
- (NSNumber)smState;
- (id)_onqueueCreateNewServerOptInFetch;
- (id)_onqueueNextStateMachineTransition:(id)transition flags:(id)flags pendingFlags:(id)pendingFlags;
- (id)accountFirstSeenDate;
- (id)createSuccesfulCKFetchDependency;
- (id)idsKTData:(id)data;
- (id)initializingOperation;
- (id)lastSelfValidate;
- (id)metricsRegistration_idsView;
- (id)metricsRegistration_ktView;
- (id)missingValidateSelfFallbackDiagnostics;
- (id)newCKFetch:(id)fetch;
- (id)optInStateForKeyStore:(id)store error:(id *)error;
- (id)prettyFormatIDSKTStateArray:(id)array;
- (id)recheckAccount;
- (id)requestSuccessfulCKFetchForManyReasons:(id)reasons;
- (id)triggerCKFetch24h;
- (id)validateSelfDiagnostics:(id)diagnostics;
- (int)checkAccountKeyChanged;
- (void)_onQueueMaybeCreateNewServerOptInFetch;
- (void)_waitForIDSRegistration:(BOOL)registration complete:(id)complete;
- (void)accountChanged:(id)changed to:(id)to;
- (void)addEvent:(id)event;
- (void)captureEligibilityHealthCheckup;
- (void)checkIDSHealth:(BOOL)health complete:(id)complete;
- (void)checkKTAccountKey:(id)key complete:(id)complete;
- (void)clearAccountMetrics;
- (void)clearAllFollowups:(id)followups;
- (void)clearEligibilityOverrides:(id)overrides;
- (void)clearIDSCacheForUri:(id)uri application:(id)application;
- (void)clearOptInStateForURI:(id)i application:(id)application complete:(id)complete;
- (void)cloudkitAccountStateChange:(id)change to:(id)to;
- (void)dealloc;
- (void)fillUploadedRdata:(id)rdata withRegistrationData:(id)data;
- (void)getAggregateResult:(int64_t)result element:(id)element complete:(id)complete;
- (void)getAllOptInStates:(id)states;
- (void)getOptInForURI:(id)i application:(id)application complete:(id)complete;
- (void)getOptInStateForAccount:(id)account complete:(id)complete;
- (void)getOptInStateForApplication:(id)application complete:(id)complete;
- (void)getStatus:(id)status;
- (void)haltStateMachine;
- (void)idsServerBagUpdate;
- (void)idsServerReportKTKeyWrong:(id)wrong;
- (void)insertOSVersion:(id)version complete:(id)complete;
- (void)inspectErrorForRetryAfter:(id)after trigger:(id)trigger;
- (void)ktRepair:(id)repair complete:(id)complete;
- (void)mapHeadUpdated:(id)updated populating:(BOOL)populating;
- (void)maybeCreateServerOptInFetch;
- (void)newServerOptInFetch:(id)fetch;
- (void)notifyBackgroundValidationFailure:(id)failure data:(id)data type:(id)type serverHint:(id)hint failure:(id)a7;
- (void)notifyIDSRegistrationCorrect;
- (void)notifyPushChange:(id)change userInfo:(id)info;
- (void)performAndWaitForSelfValidate:(id)validate;
- (void)performRegistrationSignatures:(id)signatures;
- (void)refreshDeviceList:(id)list;
- (void)reportEligibility:(id)eligibility withCompletion:(id)completion;
- (void)requestServerOptInFetchForManyReasons:(id)reasons delayInSeconds:(double)seconds;
- (void)resetCloudStore;
- (void)resetLastAccountOperations;
- (void)resetLocalCloudDataState;
- (void)resetLocalState:(id)state;
- (void)retryPendingValidations:(id)validations;
- (void)setCloudKitOutgoingFlag;
- (void)setLastSelfValidate:(id)validate;
- (void)setOverrideTimeBetweenReports:(double)reports completion:(id)completion;
- (void)startMetrics;
- (void)startStateMachine;
- (void)storeEligiblilityFailure:(id)failure error:(id)error;
- (void)storeEligiblilitySuccess:(id)success;
- (void)storeNeedsUpdate:(id)update;
- (void)successInfoForElement:(id)element samples:(int64_t)samples complete:(id)complete;
- (void)sysdiagnoseInfo:(id)info;
- (void)timeout:(unint64_t)timeout block:(id)block;
- (void)transparencyClearKTRegistrationData:(id)data;
- (void)transparencyCloudDeviceAdd:(id)add clientData:(id)data complete:(id)complete;
- (void)transparencyCloudDeviceRemove:(id)remove clientData:(id)data complete:(id)complete;
- (void)transparencyCloudDevices:(id)devices;
- (void)transparencyDumpKTRegistrationData:(id)data;
- (void)transparencyGetKTSignatures:(id)signatures complete:(id)complete;
- (void)transparencyPerformRegistrationSignature:(id)signature;
- (void)triggerBAACertFetcher;
- (void)triggerBackgroundSystemValidate:(id)validate completionHandler:(id)handler;
- (void)triggerCheckAccountIdentityChanged;
- (void)triggerCheckCKKSOctagonEligibilityWithCompletion:(id)completion;
- (void)triggerCheckExpiredPublicKeyStores;
- (void)triggerCheckIDSRegistration;
- (void)triggerCheckKTAccountKey;
- (void)triggerCloudKitStaticKeyRemoteUpdateNotification;
- (void)triggerConfigBagFetch:(double)fetch;
- (void)triggerEnsureIdentity;
- (void)triggerFetchSelf:(double)self;
- (void)triggerGetPrimaryAccount;
- (void)triggerIDMSFetch:(double)fetch;
- (void)triggerIDMSFetchBackstop:(id)backstop;
- (void)triggerIDSRepair:(double)repair selfValidationResult:(id)result;
- (void)triggerIDSServerBagNotification;
- (void)triggerKTAccountKeySignature:(double)signature;
- (void)triggerMaybeReportEligibilityWithCompletion:(id)completion;
- (void)triggerOptInStateChange;
- (void)triggerPublicKeyFetch;
- (void)triggerRegistrationDataNeedsUpdate:(id)update;
- (void)triggerReportAndMaybeOptInWithCompletion:(id)completion;
- (void)triggerSelfValidate:(double)validate;
- (void)triggerSelfValidateFromEnrollment;
- (void)triggerStatusUpdate:(id)update;
- (void)tryOptInByDefaultWithCompletionHandler:(id)handler;
- (void)uriNeedsUpdate:(id)update forApplication:(id)application;
- (void)validatePendingURIsAndRequests;
- (void)xpc24HrNotification:(id)notification;
@end

@implementation KTSMManager

- (KTSMManager)initWithDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  v118.receiver = self;
  v118.super_class = KTSMManager;
  v5 = [(KTSMManager *)&v118 init];
  if (v5)
  {
    v6 = dispatch_queue_create("KTSMManager", 0);
    [(KTSMManager *)v5 setQueue:v6];

    v7 = dispatch_queue_create("KT-statemachine", 0);
    [(KTSMManager *)v5 setStateMachineQueue:v7];

    v8 = dispatch_queue_create("KT-metrics", 0);
    [(KTSMManager *)v5 setMetricsQueue:v8];

    v9 = dispatch_queue_create("eligibility", 0);
    [(KTSMManager *)v5 setEligibilityQueue:v9];

    [(KTSMManager *)v5 setDeps:dependenciesCopy];
    v10 = objc_alloc_init(KTOptInStateHolder);
    [(KTSMManager *)v5 setOptInStates:v10];

    v11 = objc_alloc_init(NSOperationQueue);
    [(KTSMManager *)v5 setOperationQueue:v11];

    v12 = objc_alloc_init(KTCondition);
    [(KTSMManager *)v5 setInitializedComplete:v12];

    v13 = objc_alloc_init(KTCondition);
    [(KTSMManager *)v5 setReadyComplete:v13];

    v14 = objc_alloc_init(KTCondition);
    [(KTSMManager *)v5 setSignaturesComplete:v14];

    [(KTSMManager *)v5 setShouldPokeIDSUponSigning:1];
    v15 = dispatch_queue_create("signatures", 0);
    [(KTSMManager *)v5 setSignatureQueue:v15];

    [(KTSMManager *)v5 setMetricsLock:0];
    v16 = [[SecLaunchSequence alloc] initWithRocketName:@"com.apple.sear.KTSMManager"];
    [(KTSMManager *)v5 setLaunch:v16];

    v17 = [_TtC13transparencyd10KTWatchdog alloc];
    v18 = [KTManagerWatchdogControl alloc];
    v83 = dependenciesCopy;
    v19 = [dependenciesCopy dew];
    v20 = [(KTManagerWatchdogControl *)v18 initWithDew:v19];
    v21 = [(KTWatchdog *)v17 initWithControl:v20];
    [(KTSMManager *)v5 setWatchdog:v21];

    deps = [(KTSMManager *)v5 deps];
    idsConfigBag = [deps idsConfigBag];

    if (!idsConfigBag)
    {
      v24 = +[TransparencyIDSConfigBag sharedInstance];
      deps2 = [(KTSMManager *)v5 deps];
      [deps2 setIdsConfigBag:v24];
    }

    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v5 selector:"idsServerBagUpdate" name:IDSServerBagFinishedLoadingNotification object:0];

    v27 = [KTStateMachine alloc];
    v86 = +[KTStates KTStateMap];
    allKeys = [v86 allKeys];
    v28 = [NSSet setWithArray:allKeys];
    v29 = +[KTStates AllKTFlags];
    stateMachineQueue = [(KTSMManager *)v5 stateMachineQueue];
    deps3 = [(KTSMManager *)v5 deps];
    lockStateTracker = [deps3 lockStateTracker];
    deps4 = [(KTSMManager *)v5 deps];
    reachabilityTracker = [deps4 reachabilityTracker];
    deps5 = [(KTSMManager *)v5 deps];
    idsConfigBag2 = [deps5 idsConfigBag];
    v36 = v27;
    v37 = stateMachineQueue;
    v38 = [(KTStateMachine *)v36 initWithName:@"KTStateMachine" states:v28 flags:v29 initialState:@"PublicKeysInitialFetch" queue:stateMachineQueue stateEngine:v5 lockStateTracker:lockStateTracker reachabilityTracker:reachabilityTracker idsConfigBag:idsConfigBag2];
    [(KTSMManager *)v5 setStateMachine:v38];

    [(KTSMManager *)v5 setManateeViewToken:0xFFFFFFFFLL];
    stateMachine = [(KTSMManager *)v5 stateMachine];
    deps6 = [(KTSMManager *)v5 deps];
    [deps6 setFlagHandler:stateMachine];

    deps7 = [(KTSMManager *)v5 deps];
    cloudKitAccountTracker = [deps7 cloudKitAccountTracker];
    v43 = [cloudKitAccountTracker registerForNotificationsOfCloudKitAccountStatusChange:v5];

    objc_initWeak(&location, v5);
    v115[0] = _NSConcreteStackBlock;
    v115[1] = 3221225472;
    v115[2] = sub_100049398;
    v115[3] = &unk_10031A490;
    objc_copyWeak(&v116, &location);
    deps8 = [(KTSMManager *)v5 deps];
    octagonOperations = [deps8 octagonOperations];
    [octagonOperations setOctagonObserver:v115];

    v113[0] = _NSConcreteStackBlock;
    v113[1] = 3221225472;
    v113[2] = sub_1000494D0;
    v113[3] = &unk_10031A4D8;
    objc_copyWeak(&v114, &location);
    deps9 = [(KTSMManager *)v5 deps];
    octagonOperations2 = [deps9 octagonOperations];
    [octagonOperations2 setCkksViewObserver:v113];

    v111[0] = _NSConcreteStackBlock;
    v111[1] = 3221225472;
    v111[2] = sub_10004966C;
    v111[3] = &unk_10031A520;
    objc_copyWeak(&v112, &location);
    deps10 = [(KTSMManager *)v5 deps];
    idsAccountTracker = [deps10 idsAccountTracker];
    [idsAccountTracker setIdsObserver:v111];

    v50 = [KTNearFutureScheduler alloc];
    v109[0] = _NSConcreteStackBlock;
    v109[1] = 3221225472;
    v109[2] = sub_1000497C0;
    v109[3] = &unk_1003175E0;
    objc_copyWeak(&v110, &location);
    v51 = [(KTNearFutureScheduler *)v50 initWithName:@"publicKeyFetch" initialDelay:5000000000 exponentialBackoff:7200000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:v109 block:2.0];
    [(KTSMManager *)v5 setPublicKeyFetcher:v51];

    v52 = [KTNearFutureScheduler alloc];
    v107[0] = _NSConcreteStackBlock;
    v107[1] = 3221225472;
    v107[2] = sub_100049800;
    v107[3] = &unk_1003175E0;
    objc_copyWeak(&v108, &location);
    v53 = [(KTNearFutureScheduler *)v52 initWithName:@"retryEnsureIdentity" initialDelay:5000000000 exponentialBackoff:3600000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:v107 block:1.2];
    [(KTSMManager *)v5 setRetryEnsureIdentity:v53];

    v54 = [KTNearFutureScheduler alloc];
    v105[0] = _NSConcreteStackBlock;
    v105[1] = 3221225472;
    v105[2] = sub_100049840;
    v105[3] = &unk_1003175E0;
    objc_copyWeak(&v106, &location);
    v55 = [(KTNearFutureScheduler *)v54 initWithName:@"retryGetPrimaryAccount" initialDelay:5000000000 exponentialBackoff:7200000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:v105 block:2.0];
    [(KTSMManager *)v5 setRetryGetPrimaryAccount:v55];

    v56 = [KTNearFutureScheduler alloc];
    v103[0] = _NSConcreteStackBlock;
    v103[1] = 3221225472;
    v103[2] = sub_100049880;
    v103[3] = &unk_1003175E0;
    objc_copyWeak(&v104, &location);
    v57 = [(KTNearFutureScheduler *)v56 initWithName:@"ck-zone-fetcher" initialDelay:2000000000 exponentialBackoff:3600000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:v103 block:1.2];
    [(KTSMManager *)v5 setCkFetchScheduler:v57];

    deps11 = [(KTSMManager *)v5 deps];
    logger = [deps11 logger];
    v60 = objc_opt_self();
    ckFetchScheduler = [v60 ckFetchScheduler];
    [logger addNFSReporting:ckFetchScheduler];

    v62 = [KTNearFutureScheduler alloc];
    v101[0] = _NSConcreteStackBlock;
    v101[1] = 3221225472;
    v101[2] = sub_1000498D8;
    v101[3] = &unk_1003175E0;
    objc_copyWeak(&v102, &location);
    v63 = [(KTNearFutureScheduler *)v62 initWithName:@"checkKTAccountKey" initialDelay:1000000000 exponentialBackoff:86400000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:v101 block:2.0];
    [(KTSMManager *)v5 setCheckKTAccountKeyScheduler:v63];

    v64 = [KTNearFutureScheduler alloc];
    v99[0] = _NSConcreteStackBlock;
    v99[1] = 3221225472;
    v99[2] = sub_100049918;
    v99[3] = &unk_1003175E0;
    objc_copyWeak(&v100, &location);
    v65 = [(KTNearFutureScheduler *)v64 initWithName:@"checkKTSignatures" initialDelay:2000000000 exponentialBackoff:43200000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:v99 block:2.0];
    [(KTSMManager *)v5 setCheckKTSignatureScheduler:v65];

    v66 = [KTNearFutureScheduler alloc];
    v97[0] = _NSConcreteStackBlock;
    v97[1] = 3221225472;
    v97[2] = sub_10004995C;
    v97[3] = &unk_100316FE0;
    v67 = v5;
    v98 = v67;
    v68 = [(KTNearFutureScheduler *)v66 initWithName:@"manateeViewChanged" initialDelay:5000000000 continuingDelay:90000000000 keepProcessAlive:0 dependencyDescriptionCode:0 block:v97];
    [v67 setManateeViewChangedScheduler:v68];

    deps12 = [v67 deps];
    logger2 = [deps12 logger];
    manateeViewChangedScheduler = [v67 manateeViewChangedScheduler];
    [logger2 addNFSReporting:manateeViewChangedScheduler];

    v72 = [KTNearFutureScheduler alloc];
    v95[0] = _NSConcreteStackBlock;
    v95[1] = 3221225472;
    v95[2] = sub_100049964;
    v95[3] = &unk_1003175E0;
    objc_copyWeak(&v96, &location);
    v73 = [(KTNearFutureScheduler *)v72 initWithName:@"fillServerOptInStatus" initialDelay:2000000000 exponentialBackoff:3600000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:v95 block:1.5];
    [v67 setServerOptInScheduler:v73];

    v74 = [KTNearFutureScheduler alloc];
    v93[0] = _NSConcreteStackBlock;
    v93[1] = 3221225472;
    v93[2] = sub_1000499A4;
    v93[3] = &unk_1003175E0;
    objc_copyWeak(&v94, &location);
    v75 = [(KTNearFutureScheduler *)v74 initWithName:@"retryPendingValidations" initialDelay:10000000 exponentialBackoff:300000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:v93 block:2.0];
    [v67 setRetryPendingValidations:v75];

    v76 = [KTNearFutureScheduler alloc];
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_1000499E4;
    v91[3] = &unk_1003175E0;
    objc_copyWeak(&v92, &location);
    v77 = [(KTNearFutureScheduler *)v76 initWithName:@"pokeIDS" initialDelay:2000000000 exponentialBackoff:2000000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:v91 block:10.0];
    [v67 setPokeIDS:v77];

    queue = [v67 queue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100049B34;
    handler[3] = &unk_10031A548;
    objc_copyWeak(&v90, &location);
    notify_register_dispatch("com.apple.security.view-change.Manatee", v67 + 4, queue, handler);

    watchdog = [v67 watchdog];
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_100049B8C;
    v87[3] = &unk_10031A590;
    objc_copyWeak(&v88, &location);
    [watchdog addWithNamed:@"stateMachineQueue" watcher:v87];

    watchdog2 = [v67 watchdog];
    [watchdog2 resume];

    [v67 startMetrics];
    v81 = v67;
    objc_destroyWeak(&v88);
    objc_destroyWeak(&v90);
    objc_destroyWeak(&v92);
    objc_destroyWeak(&v94);
    objc_destroyWeak(&v96);

    objc_destroyWeak(&v100);
    objc_destroyWeak(&v102);
    objc_destroyWeak(&v104);
    objc_destroyWeak(&v106);
    objc_destroyWeak(&v108);
    objc_destroyWeak(&v110);
    objc_destroyWeak(&v112);
    objc_destroyWeak(&v114);
    objc_destroyWeak(&v116);
    objc_destroyWeak(&location);
    dependenciesCopy = v83;
  }

  return v5;
}

- (void)dealloc
{
  manateeViewToken = self->_manateeViewToken;
  if (manateeViewToken != -1)
  {
    notify_cancel(manateeViewToken);
  }

  v4.receiver = self;
  v4.super_class = KTSMManager;
  [(KTSMManager *)&v4 dealloc];
}

- (NSNumber)smState
{
  v3 = +[KTStates KTStateMap];
  stateMachine = [(KTSMManager *)self stateMachine];
  currentState = [stateMachine currentState];
  v6 = [v3 objectForKeyedSubscript:currentState];

  return v6;
}

- (void)startStateMachine
{
  if (qword_10038BD00 != -1)
  {
    sub_100249A34();
  }

  v3 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "KTSMManager: start state machine", v5, 2u);
  }

  stateMachine = [(KTSMManager *)self stateMachine];
  [stateMachine startOperation];

  [(KTSMManager *)self setStateMachineRunning:1];
}

- (void)haltStateMachine
{
  [(KTSMManager *)self setStateMachineRunning:0];
  publicKeyFetcher = [(KTSMManager *)self publicKeyFetcher];
  [publicKeyFetcher cancel];

  retryEnsureIdentity = [(KTSMManager *)self retryEnsureIdentity];
  [retryEnsureIdentity cancel];

  retryGetPrimaryAccount = [(KTSMManager *)self retryGetPrimaryAccount];
  [retryGetPrimaryAccount cancel];

  checkKTAccountKeyScheduler = [(KTSMManager *)self checkKTAccountKeyScheduler];
  [checkKTAccountKeyScheduler cancel];

  checkKTSignatureScheduler = [(KTSMManager *)self checkKTSignatureScheduler];
  [checkKTSignatureScheduler cancel];

  serverOptInScheduler = [(KTSMManager *)self serverOptInScheduler];
  [serverOptInScheduler cancel];

  ckFetchScheduler = [(KTSMManager *)self ckFetchScheduler];
  [ckFetchScheduler cancel];

  manateeViewChangedScheduler = [(KTSMManager *)self manateeViewChangedScheduler];
  [manateeViewChangedScheduler cancel];

  retryPendingValidations = [(KTSMManager *)self retryPendingValidations];
  [retryPendingValidations cancel];

  pokeIDS = [(KTSMManager *)self pokeIDS];
  [pokeIDS cancel];

  statusReporting = [(KTSMManager *)self statusReporting];

  if (statusReporting)
  {
    v14 = dispatch_semaphore_create(0);
    statusReporting2 = [(KTSMManager *)self statusReporting];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10004A010;
    v21[3] = &unk_10031A5F8;
    v16 = v14;
    v22 = v16;
    [statusReporting2 closeDatabaseWithCompletionHandler:v21];

    v17 = dispatch_time(0, 2000000000);
    if (dispatch_semaphore_wait(v16, v17))
    {
      if (qword_10038BD00 != -1)
      {
        sub_100249A48();
      }

      v18 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Timeout closing eligibility db", v20, 2u);
      }
    }

    [(KTSMManager *)self setStatusReporting:0];
  }

  stateMachine = [(KTSMManager *)self stateMachine];
  [stateMachine haltOperation];
}

- (void)captureEligibilityHealthCheckup
{
  statusReporting = [(KTSMManager *)self statusReporting];

  if (statusReporting)
  {
    statusReporting2 = [(KTSMManager *)self statusReporting];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10004A21C;
    v5[3] = &unk_10031A640;
    v5[4] = self;
    [statusReporting2 eligibilityCheckupMetricsWithSamples:60 interval:v5 completionHandler:86400.0];
  }
}

- (void)startMetrics
{
  objc_initWeak(&location, self);
  deps = [(KTSMManager *)self deps];
  logger = [deps logger];
  v5 = SFAnalyticsSamplerIntervalOncePerReport;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004A70C;
  v10[3] = &unk_1003188E8;
  objc_copyWeak(&v11, &location);
  [logger addMultiSamplerForName:@"transparencydEligibilityMultiSampler" withTimeInterval:v10 block:v5];

  deps2 = [(KTSMManager *)self deps];
  logger2 = [deps2 logger];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004ACB0;
  v8[3] = &unk_1003188E8;
  objc_copyWeak(&v9, &location);
  [logger2 addMultiSamplerForName:@"transparencydMultiSampler" withTimeInterval:v8 block:v5];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)cloudkitAccountStateChange:(id)change to:(id)to
{
  toCopy = to;
  stateMachineQueue = [(KTSMManager *)self stateMachineQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004B4C0;
  v8[3] = &unk_1003180E0;
  v8[4] = self;
  v9 = toCopy;
  v7 = toCopy;
  dispatch_async(stateMachineQueue, v8);
}

- (void)accountChanged:(id)changed to:(id)to
{
  changedCopy = changed;
  toCopy = to;
  if (qword_10038BD00 != -1)
  {
    sub_100249A98();
  }

  v8 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = changedCopy;
    v13 = 2112;
    v14 = toCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "account %@ state changed to: %@", &v11, 0x16u);
  }

  v9 = [[KTPendingFlag alloc] initWithFlag:@"AccountChanged" conditions:0 delayInSeconds:0.1];
  stateMachine = [(KTSMManager *)self stateMachine];
  [stateMachine handlePendingFlag:v9];
}

- (void)triggerPublicKeyFetch
{
  v4 = [[KTPendingFlag alloc] initWithFlag:@"FetchPublicKeys" conditions:2 delayInSeconds:0.1];
  stateMachine = [(KTSMManager *)self stateMachine];
  [stateMachine handlePendingFlag:v4];
}

- (void)triggerEnsureIdentity
{
  v4 = [[KTPendingFlag alloc] initWithFlag:@"EnsureIdentity" conditions:3 delayInSeconds:0.1];
  stateMachine = [(KTSMManager *)self stateMachine];
  [stateMachine handlePendingFlag:v4];
}

- (void)triggerGetPrimaryAccount
{
  v4 = [[KTPendingFlag alloc] initWithFlag:@"AccountChanged" delayInSeconds:0.1];
  stateMachine = [(KTSMManager *)self stateMachine];
  [stateMachine handlePendingFlag:v4];
}

- (void)storeNeedsUpdate:(id)update
{
  updateCopy = update;
  if (qword_10038BD00 != -1)
  {
    sub_100249AAC();
  }

  v5 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = updateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "public key store request update: %@", &v6, 0xCu);
  }

  [(KTSMManager *)self triggerPublicKeyFetch];
}

- (void)triggerCheckIDSRegistration
{
  v4 = [[KTPendingFlag alloc] initWithFlag:@"CheckIDSRegistration" conditions:2 delayInSeconds:0.0];
  stateMachine = [(KTSMManager *)self stateMachine];
  [stateMachine handlePendingFlag:v4];
}

- (void)triggerCheckAccountIdentityChanged
{
  v4 = [[KTPendingFlag alloc] initWithFlag:@"CheckKTAccountKeyChanged" conditions:2 delayInSeconds:0.0];
  stateMachine = [(KTSMManager *)self stateMachine];
  [stateMachine handlePendingFlag:v4];
}

- (void)triggerOptInStateChange
{
  v4 = [[KTPendingFlag alloc] initWithFlag:@"ChangeOptInState" conditions:2 delayInSeconds:0.0];
  stateMachine = [(KTSMManager *)self stateMachine];
  [stateMachine handlePendingFlag:v4];
}

- (void)triggerConfigBagFetch:(double)fetch
{
  v5 = [[KTPendingFlag alloc] initWithFlag:@"ConfigBagFetch" conditions:2 delayInSeconds:fetch];
  stateMachine = [(KTSMManager *)self stateMachine];
  [stateMachine handlePendingFlag:v5];
}

- (void)triggerKTAccountKeySignature:(double)signature
{
  stateMachineQueue = [(KTSMManager *)self stateMachineQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004BD1C;
  v6[3] = &unk_10031A740;
  *&v6[5] = signature;
  v6[4] = self;
  dispatch_async(stateMachineQueue, v6);
}

- (void)performRegistrationSignatures:(id)signatures
{
  signaturesCopy = signatures;
  v17 = 0;
  v5 = [(KTSMManager *)self waitUntilReadyForRPCForOperation:@"performRegistrationSignatures" fast:0 error:&v17];
  v6 = v17;
  if (v5)
  {
    v21 = @"SignRegistrationData";
    v19 = @"Ready";
    v7 = +[KTStateTransitionPathStep success];
    v20 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v22 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v10 = [KTStateTransitionPath pathFromDictionary:v9];

    v18 = @"Ready";
    v11 = [NSArray arrayWithObjects:&v18 count:1];
    v12 = [NSSet setWithArray:v11];

    stateMachine = [(KTSMManager *)self stateMachine];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004BFD4;
    v15[3] = &unk_10031A768;
    v16 = signaturesCopy;
    v14 = [stateMachine doWatchedStateMachineRPC:@"sign-registration-data" sourceStates:v12 path:v10 reply:v15];
  }

  else
  {
    (*(signaturesCopy + 2))(signaturesCopy, v6);
  }
}

- (BOOL)waitUntilReadyForRPCForOperation:(id)operation fast:(BOOL)fast error:(id *)error
{
  fastCopy = fast;
  operationCopy = operation;
  initializedComplete = [(KTSMManager *)self initializedComplete];
  v10 = [initializedComplete wait:5000000000];

  if (v10)
  {
    v11 = kTransparencyErrorInternal;
    v40[0] = @"state";
    stateMachine = [(KTSMManager *)self stateMachine];
    currentState = [stateMachine currentState];
    v14 = currentState;
    v15 = @"-";
    if (currentState)
    {
      v15 = currentState;
    }

    v40[1] = @"opName";
    v41[0] = v15;
    v41[1] = operationCopy;
    v16 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
    v17 = [TransparencyError errorWithDomain:v11 code:-367 underlyingError:0 userinfo:v16 description:@"not ready yet"];

    if (qword_10038BD00 != -1)
    {
      sub_100249AC0();
    }

    v18 = qword_10038BD08;
    if (!os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v39 = v17;
    v19 = "Haven't yet initialized State machine; expect failure: %@";
    goto LABEL_23;
  }

  deps = [(KTSMManager *)self deps];
  lockStateTracker = [deps lockStateTracker];
  hasBeenUnlocked = [lockStateTracker hasBeenUnlocked];

  if ((hasBeenUnlocked & 1) == 0)
  {
    v17 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-345 description:@"not unlocked yet"];
    if (qword_10038BD00 != -1)
    {
      sub_100249AE8();
    }

    v18 = qword_10038BD08;
    if (!os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v39 = v17;
    v19 = "Haven't yet unlocked: %@";
    goto LABEL_23;
  }

  readyComplete = [(KTSMManager *)self readyComplete];
  v24 = readyComplete;
  if (fastCopy)
  {
    v25 = 500000000;
  }

  else
  {
    v25 = 2000000000;
  }

  v26 = [readyComplete wait:v25];

  if (!v26)
  {
    v17 = 0;
    v34 = 1;
    goto LABEL_27;
  }

  v27 = kTransparencyErrorInternal;
  stateMachine2 = [(KTSMManager *)self stateMachine];
  currentState2 = [stateMachine2 currentState];
  v30 = currentState2;
  v31 = @"-";
  if (currentState2)
  {
    v31 = currentState2;
  }

  v36[1] = @"opName";
  v37[0] = v31;
  v37[1] = operationCopy;
  v32 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
  v17 = [TransparencyError errorWithDomain:v27 code:-368 underlyingError:0 userinfo:v32 description:@"not ready yet"];

  if (qword_10038BD00 != -1)
  {
    sub_100249AFC();
  }

  v18 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v39 = v17;
    v19 = "Haven't yet reached ready: %@";
LABEL_23:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
  }

LABEL_24:
  if (error)
  {
    v33 = v17;
    v34 = 0;
    *error = v17;
  }

  else
  {
    v34 = 0;
  }

LABEL_27:

  return v34;
}

- (void)triggerIDSRepair:(double)repair selfValidationResult:(id)result
{
  resultCopy = result;
  stateMachineQueue = [(KTSMManager *)self stateMachineQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004C5A8;
  block[3] = &unk_10031A7F0;
  block[4] = self;
  v10 = resultCopy;
  repairCopy = repair;
  v8 = resultCopy;
  dispatch_async(stateMachineQueue, block);
}

- (void)ktRepair:(id)repair complete:(id)complete
{
  repairCopy = repair;
  completeCopy = complete;
  [_TtC13transparencyd11KTRepairCKV rateLimitAppliesWithRepair:repairCopy];
  stateMachineQueue = [(KTSMManager *)self stateMachineQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004C7B0;
  block[3] = &unk_10031A818;
  block[4] = self;
  v12 = repairCopy;
  v13 = completeCopy;
  v9 = completeCopy;
  v10 = repairCopy;
  dispatch_async(stateMachineQueue, block);
}

- (BOOL)maybeUpdateMonitorState:(double)state
{
  deps = [(KTSMManager *)self deps];
  stateMonitor = [deps stateMonitor];
  ktStatus = [stateMonitor ktStatus];
  selfStatus = [ktStatus selfStatus];

  if (qword_10038BD00 != -1)
  {
    sub_100249B24();
  }

  v9 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109376;
    v11[1] = selfStatus;
    v12 = 1024;
    v13 = selfStatus != 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Maybe update monitor selfStatus: %d: %d", v11, 0xEu);
  }

  if (selfStatus)
  {
    [(KTSMManager *)self triggerSelfValidate:state];
  }

  return selfStatus != 0;
}

- (id)createSuccesfulCKFetchDependency
{
  v2 = objc_alloc_init(KTZoneFetchDependencyOperation);
  [(KTZoneFetchDependencyOperation *)v2 setName:@"successful-fetch-dependency"];

  return v2;
}

- (id)requestSuccessfulCKFetchForManyReasons:(id)reasons
{
  reasonsCopy = reasons;
  if (qword_10038BD00 != -1)
  {
    sub_100249B38();
  }

  v5 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    allObjects = [reasonsCopy allObjects];
    v8 = [allObjects componentsJoinedByString:{@", "}];
    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "triggering a new CK fetch because of reason: %@", &v15, 0xCu);
  }

  deps = [(KTSMManager *)self deps];
  cloudRecords = [deps cloudRecords];

  if (cloudRecords && [(KTSMManager *)self isCloudKitManateeAcountAvailable]&& ([(KTSMManager *)self specificUser], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    zoneFetcher = [(KTSMManager *)self zoneFetcher];
    v13 = [zoneFetcher requestSuccessfulCKFetchForManyReasons:reasonsCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)newCKFetch:(id)fetch
{
  v4 = [NSSet setWithObject:fetch];
  v5 = [(KTSMManager *)self requestSuccessfulCKFetchForManyReasons:v4];

  return v5;
}

- (void)notifyPushChange:(id)change userInfo:(id)info
{
  v5 = [NSDate date:change];
  [(KTSMManager *)self setLastPush:v5];

  deps = [(KTSMManager *)self deps];
  networkTimeout = [deps networkTimeout];
  [networkTimeout networkWithFeedback:2];

  specificUser = [(KTSMManager *)self specificUser];

  if (specificUser)
  {
    v9 = [NSSet setWithObject:@"apns"];
    [(KTSMManager *)self requestServerOptInFetchForManyReasons:v9 delayInSeconds:10.0];

    if ([(KTSMManager *)self isCloudKitManateeAcountAvailable])
    {
      v10 = [(KTSMManager *)self newCKFetch:off_100381D90];
    }
  }
}

- (BOOL)triggerCKFetchCLI:(id *)i
{
  v5 = [NSSet setWithObject:@"cli"];
  v6 = [(KTSMManager *)self requestSuccessfulCKFetchForManyReasons:v5];

  if (!v6 || ([v6 waitUntilFinishedOrTimeout:20.0], (objc_msgSend(v6, "isFinished") & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = 1;
    goto LABEL_5;
  }

  v7 = [NSError errorWithDomain:kTransparencyErrorInternal code:-380 userInfo:0];
  if (!v7)
  {
    goto LABEL_4;
  }

  if (qword_10038BD00 != -1)
  {
    sub_100249B4C();
  }

  v10 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "triggerCKFetchCLI failed: %@", &v12, 0xCu);
  }

  if (i)
  {
    v11 = v7;
    v8 = 0;
    *i = v7;
  }

  else
  {
    v8 = 0;
  }

LABEL_5:

  return v8;
}

- (id)triggerCKFetch24h
{
  if ([(KTSMManager *)self isCloudKitManateeAcountAvailable]&& ([(KTSMManager *)self specificUser], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(KTSMManager *)self newCKFetch:@"24h"];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10004D090;
    v8[3] = &unk_100316FE0;
    v8[4] = self;
    v5 = [KTResultOperation named:@"device-record-check" withBlock:v8];
    [v5 addNullableSuccessDependency:v4];
    operationQueue = [(KTSMManager *)self operationQueue];
    [operationQueue addOperation:v5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)triggerCheckKTAccountKey
{
  v4 = [[KTPendingFlag alloc] initWithFlag:@"CheckKTAccountKey" conditions:2 delayInSeconds:0.0];
  stateMachine = [(KTSMManager *)self stateMachine];
  [stateMachine handlePendingFlag:v4];
}

- (void)triggerIDMSFetchBackstop:(id)backstop
{
  backstopCopy = backstop;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  deps = [(KTSMManager *)self deps];
  logClient = [deps logClient];
  [logClient idmsFetchTime];
  v8 = v7;

  if (v8 < 604800.0)
  {
    v8 = 604800.0;
  }

  deps2 = [(KTSMManager *)self deps];
  smDataStore = [deps2 smDataStore];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004D3FC;
  v14[3] = &unk_10031A8A0;
  v17 = v8;
  v11 = backstopCopy;
  v15 = v11;
  v16 = &v18;
  [smDataStore fetchIDMSDeviceList:v14];

  if (*(v19 + 24))
  {
    v12 = [[KTPendingFlag alloc] initWithFlag:@"FetchIDMS" conditions:2 delayInSeconds:0.1];
    stateMachine = [(KTSMManager *)self stateMachine];
    [stateMachine handlePendingFlag:v12];
  }

  _Block_object_dispose(&v18, 8);
}

- (void)triggerIDMSFetch:(double)fetch
{
  v5 = [[KTPendingFlag alloc] initWithFlag:@"FetchIDMS" conditions:2 delayInSeconds:fetch];
  stateMachine = [(KTSMManager *)self stateMachine];
  [stateMachine handlePendingFlag:v5];
}

- (void)triggerSelfValidate:(double)validate
{
  v4 = [[KTPendingFlag alloc] initWithFlag:@"ValidateSelf" conditions:2 delayInSeconds:validate];
  stateMachine = [(KTSMManager *)self stateMachine];
  [stateMachine handlePendingFlag:v4];

  if (qword_10038BD00 != -1)
  {
    sub_100249B60();
  }

  v6 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "scheduling server opt-in check due to self validate xpc activity", v7, 2u);
  }
}

- (void)triggerSelfValidateFromEnrollment
{
  deps = [(KTSMManager *)self deps];
  v4 = [deps dew];
  [v4 selfValidationEnrollment];
  v6 = v5;

  deps2 = [(KTSMManager *)self deps];
  stateMonitor = [deps2 stateMonitor];
  ktStatus = [stateMonitor ktStatus];

  if (qword_10038BD00 != -1)
  {
    sub_100249B74();
  }

  v10 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v6;
    v14 = 134218242;
    v15 = v11;
    v16 = 2112;
    v17 = ktStatus;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "triggerSelfValidateFromEnrollment: delay: %f current state: %@", &v14, 0x16u);
  }

  if ([ktStatus selfStatus] == 2)
  {
    v12 = [[KTPendingFlag alloc] initWithFlag:@"ValidateSelf" conditions:2 delayInSeconds:v6];
    stateMachine = [(KTSMManager *)self stateMachine];
    [stateMachine handlePendingFlag:v12];
  }
}

- (void)triggerFetchSelf:(double)self
{
  v5 = [[KTPendingFlag alloc] initWithFlag:@"FetchSelf" conditions:2 delayInSeconds:self];
  stateMachine = [(KTSMManager *)self stateMachine];
  [stateMachine handlePendingFlag:v5];
}

- (void)triggerCheckExpiredPublicKeyStores
{
  deps = [(KTSMManager *)self deps];
  publicKeyStore = [deps publicKeyStore];
  anyStoreExpired = [publicKeyStore anyStoreExpired];

  if (anyStoreExpired)
  {
    publicKeyFetcher = [(KTSMManager *)self publicKeyFetcher];
    [publicKeyFetcher trigger];
  }
}

- (void)triggerBackgroundSystemValidate:(id)validate completionHandler:(id)handler
{
  validateCopy = validate;
  handlerCopy = handler;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10004DA78;
  v20 = sub_10004DA88;
  v8 = validateCopy;
  v21 = v8;
  if (!v17[5])
  {
    v9 = os_transaction_create();
    v10 = v17[5];
    v17[5] = v9;
  }

  queue = [(KTSMManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004DA90;
  block[3] = &unk_10031A978;
  block[4] = self;
  v14 = handlerCopy;
  v15 = &v16;
  v12 = handlerCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(&v16, 8);
}

- (void)notifyBackgroundValidationFailure:(id)failure data:(id)data type:(id)type serverHint:(id)hint failure:(id)a7
{
  v12 = a7;
  hintCopy = hint;
  typeCopy = type;
  dataCopy = data;
  failureCopy = failure;
  deps = [(KTSMManager *)self deps];
  smDataStore = [deps smDataStore];
  v19 = [dataCopy base64EncodedStringWithOptions:0];

  [KTBackgroundSystemValidationOperation addErrorToBackgroundOp:failureCopy smDataStore:smDataStore failureDataString:v19 type:typeCopy serverHint:hintCopy failure:v12];
  v20 = kKTApplicationIdentifierIDS;

  [(KTSMManager *)self triggerStatusUpdate:v20];
}

- (void)triggerStatusUpdate:(id)update
{
  deps = [(KTSMManager *)self deps];
  stateMonitor = [deps stateMonitor];
  [stateMonitor setPendingChanges:1];

  queue = [(KTSMManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004E138;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)optInStateForKeyStore:(id)store error:(id *)error
{
  storeCopy = store;
  deps = [(KTSMManager *)self deps];
  cloudRecords = [deps cloudRecords];

  if (cloudRecords)
  {
    v9 = [cloudRecords getAggregateOptInStateForApplication:storeCopy];
    if (!v9)
    {
      if (qword_10038BD00 != -1)
      {
        sub_100249B9C();
      }

      v10 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412546;
        v14 = storeCopy;
        v15 = 2112;
        v16 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "getAggregateOptInStateForApplication failed for %@: %@", &v13, 0x16u);
      }

      if (error)
      {
        *error = 0;
      }
    }
  }

  else
  {
    if (qword_10038BD00 != -1)
    {
      sub_100249BB0();
    }

    v11 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "no cloud records", &v13, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)validatePendingURIsAndRequests
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = sub_10004DA78;
  v5[4] = sub_10004DA88;
  v6 = os_transaction_create();
  queue = [(KTSMManager *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004E4E8;
  v4[3] = &unk_10031A9E0;
  v4[4] = self;
  v4[5] = v5;
  dispatch_async(queue, v4);

  _Block_object_dispose(v5, 8);
}

- (void)retryPendingValidations:(id)validations
{
  if ([validations isEqual:kKTApplicationIdentifierIDS])
  {
    v4 = objc_alloc_init(KTCondition);
    [(KTSMManager *)self setPendingValidationsComplete:v4];

    retryPendingValidations = [(KTSMManager *)self retryPendingValidations];
    [retryPendingValidations trigger];
  }
}

- (void)triggerRegistrationDataNeedsUpdate:(id)update
{
  updateCopy = update;
  [(KTSMManager *)self addEvent:@"PokeIDSWithUpdatedRegData"];
  deps = [(KTSMManager *)self deps];
  stateMonitor = [deps stateMonitor];
  [stateMonitor setSystemStatus:2];

  deps2 = [(KTSMManager *)self deps];
  idsOperations = [deps2 idsOperations];
  [idsOperations registrationDataNeedsUpdate:updateCopy];

  deps3 = [(KTSMManager *)self deps];
  logger = [deps3 logger];
  v10 = +[NSDate date];
  [logger setDateProperty:v10 forKey:off_100381CF8];
}

- (void)notifyIDSRegistrationCorrect
{
  objc_initWeak(&location, self);
  queue = [(KTSMManager *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004EAD8;
  v4[3] = &unk_1003175E0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)isKTKeyDifferent:(id)different
{
  differentCopy = different;
  if (![(KTSMManager *)self idsServerReportedWrong])
  {
    goto LABEL_4;
  }

  idsServerReportedWrongPublicKey = [(KTSMManager *)self idsServerReportedWrongPublicKey];
  if (!idsServerReportedWrongPublicKey)
  {
    goto LABEL_5;
  }

  v6 = idsServerReportedWrongPublicKey;
  idsServerReportedWrongPublicKey2 = [(KTSMManager *)self idsServerReportedWrongPublicKey];
  v8 = [idsServerReportedWrongPublicKey2 isEqual:differentCopy];

  if (v8)
  {
LABEL_4:
    v9 = 0;
  }

  else
  {
LABEL_5:
    [(KTSMManager *)self setIdsServerReportedWrong:0];
    [(KTSMManager *)self setIdsServerReportedWrongPublicKey:0];
    v9 = 1;
  }

  return v9;
}

- (void)idsServerReportKTKeyWrong:(id)wrong
{
  wrongCopy = wrong;
  [(KTSMManager *)self setIdsServerReportedWrong:1];
  [(KTSMManager *)self setIdsServerReportedWrongPublicKey:wrongCopy];
}

- (void)resetLastAccountOperations
{
  [(KTSMManager *)self setLastFetchIDMS:0];
  [(KTSMManager *)self setLastSignalIDS:0];
  [(KTSMManager *)self setLastFetchIDSSelf:0];
  [(KTSMManager *)self setLastFetchKTSelf:0];
  [(KTSMManager *)self setLastValidateSelf:0];
  [(KTSMManager *)self setLastValidateSelfOptIn:0];
  [(KTSMManager *)self setLastRegistration:0];
  [(KTSMManager *)self setLastForceSyncKVS:0];
  [(KTSMManager *)self setLastPublicKeyRefresh:0];
  [(KTSMManager *)self setLastCheckIDSRegistration:0];

  [(KTSMManager *)self setLastDutyCycle:0];
}

- (void)clearAllFollowups:(id)followups
{
  followupsCopy = followups;
  deps = [(KTSMManager *)self deps];
  followup = [deps followup];
  v10 = 0;
  v7 = [followup clearAllFollowups:&v10];
  v8 = v10;

  if ((v7 & 1) == 0)
  {
    if (qword_10038BD00 != -1)
    {
      sub_100249BC4();
    }

    v9 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = followupsCopy;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "clearAllFollowups failed: %{public}@ %{public}@", buf, 0x16u);
    }
  }
}

- (void)performAndWaitForSelfValidate:(id)validate
{
  validateCopy = validate;
  v17 = 0;
  v5 = [(KTSMManager *)self waitUntilReadyForRPCForOperation:@"performAndWaitForSelfValidate" fast:0 error:&v17];
  v6 = v17;
  if (v5)
  {
    v21 = @"ValidateSelf";
    v19 = @"Ready";
    v7 = +[KTStateTransitionPathStep success];
    v20 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v22 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v10 = [KTStateTransitionPath pathFromDictionary:v9];

    v18 = @"Ready";
    v11 = [NSArray arrayWithObjects:&v18 count:1];
    v12 = [NSSet setWithArray:v11];

    stateMachine = [(KTSMManager *)self stateMachine];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004F110;
    v15[3] = &unk_10031AA28;
    v15[4] = self;
    v16 = validateCopy;
    v14 = [stateMachine doWatchedStateMachineRPC:@"validate-self" sourceStates:v12 path:v10 reply:v15];
  }

  else
  {
    (*(validateCopy + 2))(validateCopy, 2, 0, 0, v6);
  }
}

- (id)validateSelfDiagnostics:(id)diagnostics
{
  diagnosticsCopy = diagnostics;
  +[NSMutableDictionary dictionary];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004F2D4;
  v4 = v6[3] = &unk_10031AA50;
  v7 = v4;
  [diagnosticsCopy handleOperationResults:v6];

  return v4;
}

- (id)missingValidateSelfFallbackDiagnostics
{
  v3 = +[NSMutableDictionary dictionary];
  deps = [(KTSMManager *)self deps];
  smDataStore = [deps smDataStore];
  v6 = kKTApplicationIdentifierIDS;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004F4A8;
  v9[3] = &unk_10031AAC0;
  v7 = v3;
  v10 = v7;
  [smDataStore fetchSelfVerificationInfoForApplication:v6 complete:v9];

  return v7;
}

- (id)idsKTData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v4 = +[NSMutableDictionary dictionary];
    ktDataForRegistration = [dataCopy ktDataForRegistration];
    kt_hexString = [ktDataForRegistration kt_hexString];
    [v4 setObject:kt_hexString forKeyedSubscript:@"tbs"];

    ktPublicAccountKey = [dataCopy ktPublicAccountKey];
    kt_hexString2 = [ktPublicAccountKey kt_hexString];
    [v4 setObject:kt_hexString2 forKeyedSubscript:@"pub"];

    ktDataSignature = [dataCopy ktDataSignature];
    kt_hexString3 = [ktDataSignature kt_hexString];
    [v4 setObject:kt_hexString3 forKeyedSubscript:@"sig"];

    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [dataCopy uploadedToKVS]);
    [v4 setObject:v11 forKeyedSubscript:@"kvs"];

    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy ktOptInStatus]);
    [v4 setObject:v12 forKeyedSubscript:@"optin"];

    registeredTime = [dataCopy registeredTime];
    v14 = [registeredTime description];
    [v4 setObject:v14 forKeyedSubscript:@"regTS"];

    ktAccountKeyTimestamp = [dataCopy ktAccountKeyTimestamp];
    v16 = [ktAccountKeyTimestamp description];
    [v4 setObject:v16 forKeyedSubscript:@"accTS"];

    ktOptInTimestamp = [dataCopy ktOptInTimestamp];
    v18 = [ktOptInTimestamp description];
    [v4 setObject:v18 forKeyedSubscript:@"optTS"];

    ktAccountKeyErrorCode = [dataCopy ktAccountKeyErrorCode];
    [v4 setObject:ktAccountKeyErrorCode forKeyedSubscript:@"accErr"];

    ktOptInErrorCode = [dataCopy ktOptInErrorCode];

    [v4 setObject:ktOptInErrorCode forKeyedSubscript:@"optErr"];
    if ([v4 count])
    {
      v21 = v4;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)prettyFormatIDSKTStateArray:(id)array
{
  arrayCopy = array;
  v26 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = arrayCopy;
  v27 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v27)
  {
    v25 = *v34;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v33 + 1) + 8 * i);
        v37[0] = @"registrationType";
        v32 = sub_100024C3C([v5 registrationType]);
        v38[0] = v32;
        v37[1] = @"status";
        v31 = sub_100024C18([v5 status]);
        v38[1] = v31;
        v37[2] = @"accountKey";
        ktAccountKey = [v5 ktAccountKey];
        kt_hexString = [ktAccountKey kt_hexString];
        v29 = kt_hexString;
        if (kt_hexString)
        {
          v7 = kt_hexString;
        }

        else
        {
          v7 = &stru_10032E8E8;
        }

        v38[2] = v7;
        v37[3] = @"accountKeyTimestamp";
        ktAccountKeyTimestamp = [v5 ktAccountKeyTimestamp];
        v8 = [ktAccountKeyTimestamp description];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = &stru_10032E8E8;
        }

        v38[3] = v10;
        v37[4] = @"signature";
        deviceSignature = [v5 deviceSignature];
        kt_hexString2 = [deviceSignature kt_hexString];
        v13 = kt_hexString2;
        if (kt_hexString2)
        {
          v14 = kt_hexString2;
        }

        else
        {
          v14 = &stru_10032E8E8;
        }

        v38[4] = v14;
        v37[5] = @"optedIn";
        v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 optedIn]);
        v38[5] = v15;
        v37[6] = @"optInTimestamp";
        ktOptInTimestamp = [v5 ktOptInTimestamp];
        v17 = [ktOptInTimestamp description];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = &stru_10032E8E8;
        }

        v38[6] = v19;
        v20 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:7];
        v21 = [v20 mutableCopy];

        if (+[TransparencyAnalytics hasInternalDiagnostics])
        {
          userID = [v5 userID];
          [v21 setObject:userID forKeyedSubscript:@"URI"];
        }

        [v26 addObject:v21];
      }

      v27 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v27);
  }

  return v26;
}

- (void)sysdiagnoseInfo:(id)info
{
  infoCopy = info;
  stateMachine = [(KTSMManager *)self stateMachine];
  dumpPendingFlags = [stateMachine dumpPendingFlags];

  queue = [(KTSMManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005005C;
  block[3] = &unk_10031A818;
  block[4] = self;
  v11 = dumpPendingFlags;
  v12 = infoCopy;
  v8 = infoCopy;
  v9 = dumpPendingFlags;
  dispatch_async(queue, block);
}

- (void)getStatus:(id)status
{
  statusCopy = status;
  queue = [(KTSMManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100051ACC;
  v7[3] = &unk_10031ABA0;
  v7[4] = self;
  v8 = statusCopy;
  v6 = statusCopy;
  dispatch_async(queue, v7);
}

- (void)mapHeadUpdated:(id)updated populating:(BOOL)populating
{
  updatedCopy = updated;
  deps = [(KTSMManager *)self deps];
  stateMonitor = [deps stateMonitor];
  ktStatus = [stateMonitor ktStatus];
  systemStatus = [ktStatus systemStatus];

  if (systemStatus == 3 && !populating)
  {
    if (qword_10038BD00 != -1)
    {
      sub_100249C28();
    }

    v11 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = updatedCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Detected tree reset populating->non-populating edge for %{public}@", buf, 0xCu);
    }

    deps2 = [(KTSMManager *)self deps];
    followup = [deps2 followup];
    v16 = 0;
    [followup clearFollowupsByType:updatedCopy type:3 error:&v16];
    v14 = v16;

    if (v14)
    {
      if (qword_10038BD00 != -1)
      {
        sub_100249C3C();
      }

      v15 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v18 = updatedCopy;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error clearing tree reset followups for %@: %@", buf, 0x16u);
      }
    }

    [(KTSMManager *)self triggerStatusUpdate:updatedCopy];
  }
}

- (id)metricsRegistration_ktView
{
  v3 = +[NSMutableDictionary dictionary];
  deps = [(KTSMManager *)self deps];
  smDataStore = [deps smDataStore];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005216C;
  v8[3] = &unk_10031A640;
  v6 = v3;
  v9 = v6;
  [smDataStore fetchDeviceSignature:0 complete:v8];

  return v6;
}

- (id)metricsRegistration_idsView
{
  v29 = +[NSMutableDictionary dictionary];
  v3 = +[NSMutableDictionary dictionary];
  v4 = dispatch_semaphore_create(0);
  deps = [(KTSMManager *)self deps];
  idsOperations = [deps idsOperations];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100052678;
  v38[3] = &unk_10031AC08;
  v7 = v3;
  v39 = v7;
  v8 = v4;
  v40 = v8;
  [idsOperations getCurrentRegistrationState:0 withCompletion:v38];

  v9 = dispatch_time(0, 1000000000);
  if (!dispatch_semaphore_wait(v8, v9))
  {
    v26 = v8;
    +[TransparencyAnalytics analyticsApplications];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v37 = 0u;
    v10 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v28 = *v35;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v35 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          v14 = [TransparencyApplication idsServiceForIdentifier:v13];
          v15 = [NSString stringWithFormat:@"reg-%@", v13];
          [v29 setObject:&off_10033CEE8 forKeyedSubscript:v15];
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v16 = v7;
          v17 = [v7 objectForKeyedSubscript:v14];
          v18 = [v17 countByEnumeratingWithState:&v30 objects:v41 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v31;
            while (2)
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v31 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v30 + 1) + 8 * j);
                if ([v22 registrationType] == 1)
                {
                  if ([v22 status] == 5)
                  {
                    deviceSignature = [v22 deviceSignature];
                    if (deviceSignature)
                    {
                      v24 = &off_10033CF00;
                    }

                    else
                    {
                      v24 = &off_10033CEB8;
                    }

                    [v29 setObject:v24 forKeyedSubscript:v15];
                  }

                  else
                  {
                    [v29 setObject:&off_10033CEE8 forKeyedSubscript:v15];
                  }

                  goto LABEL_22;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v30 objects:v41 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

LABEL_22:

          v7 = v16;
        }

        v11 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v11);
    }

    v8 = v26;
  }

  return v29;
}

- (void)resetLocalState:(id)state
{
  deps = [(KTSMManager *)self deps];
  accountKeyService = [deps accountKeyService];
  [accountKeyService clearCachedPCSIdentities];

  deps2 = [(KTSMManager *)self deps];
  accountStateHolder = [deps2 accountStateHolder];
  [accountStateHolder clearAccountMetadata];

  deps3 = [(KTSMManager *)self deps];
  smDataStore = [deps3 smDataStore];
  v23 = 0;
  v10 = [smDataStore clearDataStore:&v23];
  v11 = v23;

  if ((v10 & 1) == 0)
  {
    if (qword_10038BD00 != -1)
    {
      sub_100249C64();
    }

    v12 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "dataStore clearDataStore failed: %@", buf, 0xCu);
    }
  }

  deps4 = [(KTSMManager *)self deps];
  dataStore = [deps4 dataStore];
  v22 = 0;
  v15 = [dataStore clearState:&v22];
  v16 = v22;

  if ((v15 & 1) == 0)
  {
    if (qword_10038BD00 != -1)
    {
      sub_100249C8C();
    }

    v17 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "dataStore clearState failed: %@", buf, 0xCu);
    }
  }

  deps5 = [(KTSMManager *)self deps];
  cloudRecords = [deps5 cloudRecords];
  [cloudRecords clearLocalCloudState];

  deps6 = [(KTSMManager *)self deps];
  cloudRecords2 = [deps6 cloudRecords];
  [cloudRecords2 clearDataStore:0];
}

- (int)checkAccountKeyChanged
{
  pcsOperation = [(KTSMManager *)self pcsOperation];
  v4 = [pcsOperation getCurrentKTPCSIdentity:off_10038B2A0 error:0];

  if (v4)
  {
    [v4 identity];
    v5 = PCSIdentityGetPublicKey();
    if (v5)
    {
      v6 = v5;
      deps = [(KTSMManager *)self deps];
      stateMonitor = [deps stateMonitor];
      ktStatus = [stateMonitor ktStatus];
      accountKey = [ktStatus accountKey];

      if (accountKey && ([accountKey isEqual:v6] & 1) != 0)
      {
        v11 = 1;
      }

      else
      {
        deps2 = [(KTSMManager *)self deps];
        stateMonitor2 = [deps2 stateMonitor];
        [stateMonitor2 setKTAccountKey:v6];

        v11 = 3;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 2;
  }

  return v11;
}

- (void)addEvent:(id)event
{
  eventCopy = event;
  launch = [(KTSMManager *)self launch];
  [launch addEvent:eventCopy];
}

- (BOOL)isCloudKitManateeAcountAvailable
{
  cloudKitAccountInfo = [(KTSMManager *)self cloudKitAccountInfo];
  hasValidCredentials = [cloudKitAccountInfo hasValidCredentials];

  if (hasValidCredentials)
  {
    cloudKitAccountInfo2 = [(KTSMManager *)self cloudKitAccountInfo];
    v6 = ([cloudKitAccountInfo2 deviceToDeviceEncryptionAvailability] >> 1) & 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_onqueueNextStateMachineTransition:(id)transition flags:(id)flags pendingFlags:(id)pendingFlags
{
  transitionCopy = transition;
  flagsCopy = flags;
  pendingFlagsCopy = pendingFlags;
  [(KTSMManager *)self addEvent:transitionCopy];
  if ([transitionCopy isEqual:@"PublicKeysInitialFetch"])
  {
    v11 = [KTPublicKeyStoreRefresh alloc];
    deps = [(KTSMManager *)self deps];
    v13 = @"Initializing";
    v14 = @"PublicKeysWait";
    v15 = v11;
    v16 = deps;
    v17 = 1;
LABEL_3:
    v18 = [(KTPublicKeyStoreRefresh *)v15 initWithDependencies:v16 initialFetch:v17 intendedState:v13 errorState:v14];

    [(KTSMManager *)self setLastPublicKeyRefresh:v18];
    goto LABEL_22;
  }

  if ([transitionCopy isEqual:@"PublicKeysWait"])
  {
    if ([flagsCopy _onqueueContains:@"FetchPublicKeys"])
    {
      [flagsCopy _onqueueRemoveFlag:@"FetchPublicKeys"];
      initializingOperation = [KTStateTransitionOperation named:@"need-to-fetch-public-keys" entering:@"PublicKeysInitialFetch"];
LABEL_9:
      v18 = initializingOperation;
      goto LABEL_22;
    }

    publicKeyFetcher = [(KTSMManager *)self publicKeyFetcher];
    [(KTPendingFlag *)publicKeyFetcher trigger];
    goto LABEL_20;
  }

  if ([transitionCopy isEqual:@"Initializing"])
  {
    [flagsCopy _onqueueRemoveFlag:@"CKAccountChanged"];
    [flagsCopy _onqueueRemoveFlag:@"AccountChanged"];
    [flagsCopy _onqueueRemoveFlag:@"OctagonTrustChanged"];
    [flagsCopy _onqueueRemoveFlag:@"ManateeViewChanged"];
    [flagsCopy _onqueueRemoveFlag:@"EnsureIdentity"];
    [flagsCopy _onqueueRemoveFlag:@"FetchSelf"];
    [flagsCopy _onqueueRemoveFlag:@"CloudKitOutgoing"];
    [flagsCopy _onqueueRemoveFlag:@"CheckAccountSignatures"];
    [flagsCopy _onqueueRemoveFlag:@"CloudKitZoneRecreate"];
    [flagsCopy _onqueueRemoveFlag:@"CheckKTAccountKey"];
    [flagsCopy _onqueueRemoveFlag:@"CheckKTAccountKeyChanged"];
    [flagsCopy _onqueueRemoveFlag:@"IDSStatusChanged"];
    [flagsCopy _onqueueRemoveFlag:@"IDSServerBagChanged"];
    initializingOperation = [(KTSMManager *)self initializingOperation];
    goto LABEL_9;
  }

  if ([transitionCopy isEqual:@"WaitForUnlock"])
  {
    if (![flagsCopy _onqueueContains:@"Unlocked"])
    {
      publicKeyFetcher = [[KTPendingFlag alloc] initWithFlag:@"Unlocked" conditions:1];
      [pendingFlagsCopy _onqueueHandlePendingFlagLater:publicKeyFetcher];
LABEL_20:

LABEL_21:
      v18 = 0;
      goto LABEL_22;
    }

    [flagsCopy _onqueueRemoveFlag:@"Unlocked"];
    deps6 = [NSString stringWithFormat:@"%@", @"initializing-after-unlock"];
    v22 = [KTStateTransitionOperation named:deps6 entering:@"Initializing"];
    goto LABEL_14;
  }

  if ([transitionCopy isEqual:@"NoAccount"])
  {
    if ([flagsCopy _onqueueContains:@"AccountChanged"])
    {
      initializingOperation = [KTStateTransitionOperation named:@"account-probably-changed" entering:@"Initializing"];
      goto LABEL_9;
    }

    if ([flagsCopy _onqueueContains:@"CKAccountChanged"])
    {
      initializingOperation = [KTStateTransitionOperation named:@"account-probably-changed-ck" entering:@"Initializing"];
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if ([transitionCopy isEqual:@"KTStateCheckCloudKitAccount"])
  {
    [flagsCopy _onqueueRemoveFlag:@"CKAccountChanged"];
    if (![(KTSMManager *)self isCloudKitManateeAcountAvailable])
    {
      if (qword_10038BD00 != -1)
      {
        sub_100249CB4();
      }

      v25 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        cloudKitAccountInfo = [(KTSMManager *)self cloudKitAccountInfo];
        *buf = 138412290;
        v153 = cloudKitAccountInfo;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "CloudKit not available for device2device encryption, holding start up: %@", buf, 0xCu);
      }

      goto LABEL_21;
    }

    deps6 = [NSString stringWithFormat:@"%@", @"initializing-ck-show-up"];
    v22 = [KTStateTransitionOperation named:deps6 entering:@"GetStatusInitial"];
    goto LABEL_14;
  }

  v24 = @"WaitForManatee";
  if ([transitionCopy isEqual:@"WaitForManatee"])
  {
    if ([flagsCopy _onqueueContains:@"OctagonTrustChanged"])
    {
      initializingOperation = [KTStateTransitionOperation named:@"octagon-trust-probably-changed" entering:@"Initializing"];
      goto LABEL_9;
    }

    if ([flagsCopy _onqueueContains:@"ManateeViewChanged"])
    {
      initializingOperation = [KTStateTransitionOperation named:@"retry-manatee-check" entering:@"Initializing"];
      goto LABEL_9;
    }

    if (![flagsCopy _onqueueContains:@"CheckAccountSignatures"])
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

  v24 = @"WaitForCKKS";
  if (![transitionCopy isEqual:@"WaitForCKKS"])
  {
    if ([transitionCopy isEqual:@"CheckKTAccountKeyChanged"])
    {
      [flagsCopy _onqueueRemoveFlag:@"CheckKTAccountKeyChanged"];
      v149[0] = _NSConcreteStackBlock;
      v149[1] = 3221225472;
      v149[2] = sub_100055478;
      v149[3] = &unk_10031AD18;
      v149[4] = self;
      v150 = flagsCopy;
      v18 = [KTStateTransitionOperation named:@"check-kt-account-key-changed" intending:@"Ready" errorState:@"Ready" withBlockTakingSelf:v149];

      goto LABEL_22;
    }

    if ([transitionCopy isEqual:@"ForceSyncKTAccountKey"])
    {
      [flagsCopy _onqueueRemoveFlag:@"CheckKTAccountKey"];
      objc_initWeak(buf, self);
      deps2 = [(KTSMManager *)self deps];
      octagonOperations = [deps2 octagonOperations];
      v147[0] = _NSConcreteStackBlock;
      v147[1] = 3221225472;
      v147[2] = sub_1000557B8;
      v147[3] = &unk_10031AD60;
      objc_copyWeak(&v148, buf);
      [octagonOperations ckksRequestViewSync:@"Manatee" complete:v147];

      v18 = [KTStateTransitionOperation named:@"force-sync-kt-account-key-done" entering:@"Ready"];
      objc_destroyWeak(&v148);
      objc_destroyWeak(buf);
      goto LABEL_22;
    }

    if ([transitionCopy isEqual:@"KTStateFixups"])
    {
      v32 = [KTFixupOperation alloc];
      deps3 = [(KTSMManager *)self deps];
      v34 = [(KTFixupOperation *)v32 initWithDependenics:deps3 intendedState:@"EnsureAccountIdentity" errorState:@"EnsureAccountIdentity"];
LABEL_52:
      v18 = v34;

      goto LABEL_22;
    }

    if ([transitionCopy isEqual:@"RetryEnsureAccountIdentity"])
    {
      if (([flagsCopy _onqueueContains:@"CKAccountChanged"] & 1) != 0 || objc_msgSend(flagsCopy, "_onqueueContains:", @"OctagonTrustChanged"))
      {
        initializingOperation = [KTStateTransitionOperation named:@"recheck-accountstate" entering:@"Initializing"];
        goto LABEL_9;
      }

      if (([flagsCopy _onqueueContains:@"EnsureIdentity"] & 1) == 0 && !objc_msgSend(flagsCopy, "_onqueueContains:", @"ManateeViewChanged"))
      {
        goto LABEL_21;
      }

      goto LABEL_155;
    }

    if ([transitionCopy isEqual:@"EnsureAccountIdentity"])
    {
      [flagsCopy _onqueueRemoveFlag:@"EnsureIdentity"];
      v41 = [KTEnsureAccountIdentityOperation alloc];
      deps4 = [(KTSMManager *)self deps];
      pcsOperation = [(KTSMManager *)self pcsOperation];
      v44 = [(KTEnsureAccountIdentityOperation *)v41 initWithDependencies:deps4 pcsOperation:pcsOperation];

      v145[0] = _NSConcreteStackBlock;
      v145[1] = 3221225472;
      v145[2] = sub_100055994;
      v145[3] = &unk_10031AD18;
      v145[4] = self;
      v146 = v44;
      v45 = v44;
      v18 = [KTStateTransitionOperation named:@"ensure-identity" intending:@"KTStateCheckCloudKitAccount" errorState:@"Error" withBlockTakingSelf:v145];
      [(KTSignalIDSOperation *)v18 addNullableDependency:v45];
      operationQueue = [(KTSMManager *)self operationQueue];
      [operationQueue addOperation:v45];

      goto LABEL_22;
    }

    if ([transitionCopy isEqual:@"SignalIDS"])
    {
      [flagsCopy _onqueueRemoveFlag:@"RepairIDSFlag"];
      v47 = [KTSignalIDSOperation alloc];
      deps5 = [(KTSMManager *)self deps];
      selfValidationResult = [(KTSMManager *)self selfValidationResult];
      stateMachine = [(KTSMManager *)self stateMachine];
      v18 = [(KTSignalIDSOperation *)v47 initWithDependencies:deps5 intendedState:@"InitialIDMSCheck" errorState:@"Ready" selfValidationResult:selfValidationResult stateMachine:stateMachine];

      [(KTSMManager *)self setLastSignalIDS:v18];
      goto LABEL_22;
    }

    if ([transitionCopy isEqual:@"FetchConfigBag"])
    {
      [flagsCopy _onqueueRemoveFlag:@"ConfigBagFetch"];
      v51 = [KTConfigBagFetchOperation alloc];
      deps6 = [(KTSMManager *)self deps];
      v22 = [(KTConfigBagFetchOperation *)v51 initWithDependencies:deps6 intendedState:@"Ready" errorState:@"Ready" triggerInterface:self];
LABEL_14:
      v18 = v22;
LABEL_15:

      goto LABEL_22;
    }

    if ([transitionCopy isEqual:?])
    {
      [flagsCopy _onqueueRemoveFlag:@"FetchSelf"];
      v52 = [KTFetchIDSSelfOperation alloc];
      deps7 = [(KTSMManager *)self deps];
      v54 = kKTApplicationIdentifierIDS;
      v55 = off_10032D088;
LABEL_72:
      v18 = [(KTFetchIDSSelfOperation *)v52 initWithApplication:v54 dependencies:deps7 intendedState:*v55 errorState:@"Ready"];

      [(KTSMManager *)self setLastFetchIDSSelf:v18];
      goto LABEL_22;
    }

    if ([transitionCopy isEqual:@"FetchKTSelf"])
    {
LABEL_74:
      v56 = [KTFetchKTSelfOperation alloc];
      deps8 = [(KTSMManager *)self deps];
      v18 = [(KTFetchKTSelfOperation *)v56 initWithApplication:kKTApplicationIdentifierIDS dependencies:deps8 intendedState:@"Ready" errorState:@"Ready"];

      [(KTSMManager *)self setLastFetchKTSelf:v18];
      goto LABEL_22;
    }

    if ([transitionCopy isEqual:@"ValidateFetchIDSSelf"])
    {
      [flagsCopy _onqueueRemoveFlag:@"ValidateSelf"];
      [flagsCopy _onqueueRemoveFlag:@"FetchSelf"];
      v52 = [KTFetchIDSSelfOperation alloc];
      deps7 = [(KTSMManager *)self deps];
      v54 = kKTApplicationIdentifierIDS;
      v55 = off_10032D0A8;
      goto LABEL_72;
    }

    if ([transitionCopy isEqual:?])
    {
      [flagsCopy _onqueueRemoveFlag:@"FetchIDMS"];
      v58 = [KTFetchIDMSOperation alloc];
      deps9 = [(KTSMManager *)self deps];
      specificUser = [(KTSMManager *)self specificUser];
      v18 = [(KTFetchIDMSOperation *)v58 initWithDependencies:deps9 specificUser:specificUser intendedState:@"Ready" errorState:@"Ready"];

      [(KTSMManager *)self setLastFetchIDMS:v18];
      goto LABEL_22;
    }

    if ([transitionCopy isEqual:?])
    {
      [flagsCopy _onqueueRemoveFlag:@"CheckIDSRegistration"];
      v144[0] = _NSConcreteStackBlock;
      v144[1] = 3221225472;
      v144[2] = sub_100056064;
      v144[3] = &unk_10031AE48;
      v144[4] = self;
      initializingOperation = [KTStateTransitionGroupOperation named:@"check-ids-registration" intending:@"Ready" errorState:@"Ready" withBlockTakingSelf:v144];
      goto LABEL_9;
    }

    if ([transitionCopy isEqual:?])
    {
      v143[0] = _NSConcreteStackBlock;
      v143[1] = 3221225472;
      v143[2] = sub_100056380;
      v143[3] = &unk_10031AC90;
      v143[4] = self;
      initializingOperation = [KTStateTransitionOperation named:@"idms-fetch" intending:@"ZoneSetup" errorState:@"ZoneSetup" withBlockTakingSelf:v143];
      goto LABEL_9;
    }

    if ([transitionCopy isEqual:?])
    {
      [flagsCopy _onqueueRemoveFlag:@"CloudKitZoneRecreate"];
      objc_initWeak(buf, self);
      v141[0] = _NSConcreteStackBlock;
      v141[1] = 3221225472;
      v141[2] = sub_1000563DC;
      v141[3] = &unk_10031AEB8;
      objc_copyWeak(&v142, buf);
      v18 = [KTStateTransitionGroupOperation named:@"zone-setup" intending:@"CKProcessInitial" errorState:@"InitialSignRegistrationData" withBlockTakingSelf:v141];
      objc_destroyWeak(&v142);
      objc_destroyWeak(buf);
      goto LABEL_22;
    }

    if ([transitionCopy isEqual:@"CKProcessInitial"])
    {
      deps10 = [(KTSMManager *)self deps];
      fetchCloudStorage = [deps10 fetchCloudStorage];
      deps11 = [(KTSMManager *)self deps];
      v61 = off_100381DA0;
      zoneHandler = [(KTSMManager *)self zoneHandler];
      deps12 = [(KTSMManager *)self deps];
      dataStore = [deps12 dataStore];
      controller = [dataStore controller];
      backgroundContext = [controller backgroundContext];
      v67 = [fetchCloudStorage cloudFetchOperationWithDeps:deps11 initialFetch:0 userInteractive:1 reason:v61 zoneHandler:zoneHandler context:backgroundContext];

      v138[0] = _NSConcreteStackBlock;
      v138[1] = 3221225472;
      v138[2] = sub_1000568B8;
      v138[3] = &unk_10031AD18;
      v139 = v67;
      selfCopy = self;
      v68 = v67;
      v18 = [KTStateTransitionOperation named:@"initial-fetch" intending:@"InitialSignRegistrationData" errorState:@"InitialSignRegistrationData" withBlockTakingSelf:v138];
      [(KTSignalIDSOperation *)v18 addNullableDependency:v68];
      operationQueue2 = [(KTSMManager *)self operationQueue];
      [operationQueue2 addOperation:v68];

      goto LABEL_22;
    }

    if ([transitionCopy isEqual:?])
    {
      [flagsCopy _onqueueRemoveFlag:@"CloudKitReboot"];
      v137[0] = _NSConcreteStackBlock;
      v137[1] = 3221225472;
      v137[2] = sub_100056974;
      v137[3] = &unk_10031AE48;
      v137[4] = self;
      initializingOperation = [KTStateTransitionGroupOperation named:@"process-reboot" intending:@"Ready" errorState:@"Ready" withBlockTakingSelf:v137];
      goto LABEL_9;
    }

    if ([transitionCopy isEqual:@"InitialSignRegistrationData"])
    {
      [flagsCopy _onqueueRemoveFlag:@"CheckAccountSignatures"];
      v70 = [KTEnrollmentRegistrationSignature alloc];
      deps13 = [(KTSMManager *)self deps];
      v72 = v70;
      v73 = deps13;
      v74 = 0;
    }

    else
    {
      if (![transitionCopy isEqual:?])
      {
        if (![transitionCopy isEqual:@"ValidateFetchKTSelf"])
        {
          if ([transitionCopy isEqual:@"ForceSyncKVS"])
          {
            v77 = [KTForceSyncKVSOperation alloc];
            deps14 = [(KTSMManager *)self deps];
            v18 = [(KTForceSyncKVSOperation *)v77 initWithDependencies:deps14 timeout:30000000000 intendedState:@"Ready" errorState:@"Ready"];

            [(KTSMManager *)self setLastForceSyncKVS:v18];
            goto LABEL_22;
          }

          if ([transitionCopy isEqual:?])
          {
            [flagsCopy _onqueueRemoveFlag:@"ValidateSelf"];
            [flagsCopy _onqueueRemoveFlag:@"FetchSelf"];
            [flagsCopy _onqueueRemoveFlag:@"ValidateSelfOptIn"];
            v79 = +[NSDate date];
            [(KTSMManager *)self setLastSelfValidate:v79];

            objc_initWeak(buf, self);
            v135[0] = _NSConcreteStackBlock;
            v135[1] = 3221225472;
            v135[2] = sub_1000569A8;
            v135[3] = &unk_10031AEB8;
            objc_copyWeak(&v136, buf);
            v18 = [KTStateTransitionGroupOperation named:@"validate-self" intending:@"Ready" errorState:@"Ready" withBlockTakingSelf:v135];
            objc_destroyWeak(&v136);
            objc_destroyWeak(buf);
            goto LABEL_22;
          }

          if ([transitionCopy isEqual:?])
          {
            [flagsCopy _onqueueRemoveFlag:@"ChangeOptInState"];
            optInStates = [(KTSMManager *)self optInStates];
            targetOptInStates = [optInStates targetOptInStates];
            v82 = [targetOptInStates count];

            if (!v82)
            {
              initializingOperation = [KTStateTransitionOperation named:@"Done with all opt-in changes" entering:@"Ready"];
              goto LABEL_9;
            }

            v83 = [KTChangeOptInStateOperation alloc];
            deps6 = [(KTSMManager *)self deps];
            optInStates2 = [(KTSMManager *)self optInStates];
            v85 = @"SetOptIO";
            v86 = v83;
            v87 = deps6;
          }

          else
          {
            if (![transitionCopy isEqual:?])
            {
              if ([transitionCopy isEqual:@"ValidateSelfOptIn"])
              {
                objc_initWeak(buf, self);
                v133[0] = _NSConcreteStackBlock;
                v133[1] = 3221225472;
                v133[2] = sub_10005735C;
                v133[3] = &unk_10031AEB8;
                objc_copyWeak(&v134, buf);
                v18 = [KTStateTransitionGroupOperation named:@"validate-self-opt-in" intending:@"SetOptIO" errorState:@"Ready" withBlockTakingSelf:v133];
                objc_destroyWeak(&v134);
                objc_destroyWeak(buf);
                goto LABEL_22;
              }

              if ([transitionCopy isEqual:?])
              {
                [flagsCopy _onqueueRemoveFlag:@"CloudKitOutgoing"];
                deps15 = [(KTSMManager *)self deps];
                cloudRecords = [deps15 cloudRecords];
                deps16 = [(KTSMManager *)self deps];
                deps17 = [(KTSMManager *)self deps];
                dataStore2 = [deps17 dataStore];
                controller2 = [dataStore2 controller];
                backgroundContext2 = [controller2 backgroundContext];
                v94 = [cloudRecords updateCloudRecordsOperation:deps16 context:backgroundContext2];

                v130[0] = _NSConcreteStackBlock;
                v130[1] = 3221225472;
                v130[2] = sub_100057C34;
                v130[3] = &unk_10031AD18;
                v131 = v94;
                selfCopy2 = self;
                v95 = v94;
                v18 = [KTStateTransitionOperation named:@"processOutgoing" intending:@"Ready" errorState:@"Ready" withBlockTakingSelf:v130];
                [(KTGroupOperation *)v18 addDependency:v95];
                operationQueue3 = [(KTSMManager *)self operationQueue];
                [operationQueue3 addOperation:v95];

                goto LABEL_22;
              }

              if ([transitionCopy isEqual:?])
              {
                [flagsCopy _onqueueRemoveFlag:@"FetchPublicKeys"];
                v97 = [KTPublicKeyStoreRefresh alloc];
                deps = [(KTSMManager *)self deps];
                v13 = @"Ready";
                v15 = v97;
                v16 = deps;
                v17 = 0;
                v14 = @"Ready";
                goto LABEL_3;
              }

              if ([transitionCopy isEqual:?])
              {
                [flagsCopy _onqueueRemoveFlag:@"AccountChanged"];
                initializingOperation = [(KTSMManager *)self recheckAccount];
                goto LABEL_9;
              }

              if ([transitionCopy isEqual:@"EnvironmentSwitch"])
              {
                objc_initWeak(buf, self);
                v128[0] = _NSConcreteStackBlock;
                v128[1] = 3221225472;
                v128[2] = sub_100057D04;
                v128[3] = &unk_10031AEB8;
                objc_copyWeak(&v129, buf);
                v18 = [KTStateTransitionGroupOperation named:@"transparency-environment-switch" intending:@"ResetLocalState" errorState:@"ResetLocalState" withBlockTakingSelf:v128];
                objc_destroyWeak(&v129);
                objc_destroyWeak(buf);
                goto LABEL_22;
              }

              if ([transitionCopy isEqual:@"ResetLocalState"])
              {
                v127[0] = _NSConcreteStackBlock;
                v127[1] = 3221225472;
                v127[2] = sub_100057FFC;
                v127[3] = &unk_10031AC90;
                v127[4] = self;
                initializingOperation = [KTStateTransitionOperation named:@"transparency-reset-local" intending:@"Initializing" errorState:@"Error" withBlockTakingSelf:v127];
                goto LABEL_9;
              }

              if ([transitionCopy isEqual:?])
              {
                v126[0] = _NSConcreteStackBlock;
                v126[1] = 3221225472;
                v126[2] = sub_100058178;
                v126[3] = &unk_10031AC90;
                v126[4] = self;
                initializingOperation = [KTStateTransitionOperation named:@"transparency-reset-local-cloud-state" intending:@"Initializing" errorState:@"Initializing" withBlockTakingSelf:v126];
                goto LABEL_9;
              }

              if ([transitionCopy isEqual:@"KTStateResetCloudStore"])
              {
                objc_initWeak(buf, self);
                v124[0] = _NSConcreteStackBlock;
                v124[1] = 3221225472;
                v124[2] = sub_10005823C;
                v124[3] = &unk_10031AEB8;
                objc_copyWeak(&v125, buf);
                v18 = [KTStateTransitionGroupOperation named:@"transparency-reset-cloud-store" intending:@"ResetLocalCloudState" errorState:@"Initializing" withBlockTakingSelf:v124];
                objc_destroyWeak(&v125);
                objc_destroyWeak(buf);
                goto LABEL_22;
              }

              if ([transitionCopy isEqual:@"GetStatusInitial"])
              {
                [flagsCopy _onqueueRemoveFlag:@"StatusUpdate"];
                v98 = [KTFillStatusOperation alloc];
                deps3 = [(KTSMManager *)self deps];
                v99 = kKTApplicationIdentifierIDS;
                v100 = v98;
                v101 = 1;
                v102 = deps3;
                v103 = @"InitialIDMSCheck";
              }

              else
              {
                if (![transitionCopy isEqual:?])
                {
                  if ([transitionCopy isEqual:?])
                  {
                    [flagsCopy _onqueueRemoveFlag:@"PokeIDS"];
                    v123[0] = _NSConcreteStackBlock;
                    v123[1] = 3221225472;
                    v123[2] = sub_100058388;
                    v123[3] = &unk_10031AC90;
                    v123[4] = self;
                    initializingOperation = [KTStateTransitionOperation named:@"poke-ids" intending:@"Ready" errorState:@"Ready" withBlockTakingSelf:v123];
                    goto LABEL_9;
                  }

                  if ([transitionCopy isEqual:?])
                  {
                    [flagsCopy _onqueueRemoveFlag:@"PendingCKVRepair"];
                    deps6 = [(KTSMManager *)self repair];
                    [(KTSMManager *)self setRepair:0];
                    if (deps6)
                    {
                      v105 = [KTRepairCKVOperation alloc];
                      deps18 = [(KTSMManager *)self deps];
                      v18 = [(KTRepairCKVOperation *)v105 initWithDependencies:deps18 repair:deps6 reset:self intendedState:@"Initializing" errorState:@"Initializing"];

                      goto LABEL_15;
                    }

                    v22 = [KTStateTransitionOperation named:@"no repair entering:starting over", @"Initializing"];
                    goto LABEL_14;
                  }

                  if (![transitionCopy isEqual:@"Ready"])
                  {
                    goto LABEL_21;
                  }

                  stateMachine2 = [(KTSMManager *)self stateMachine];
                  [stateMachine2 _onqueueCancelPendingFlag:@"CheckServerOptIn"];

                  readyComplete = [(KTSMManager *)self readyComplete];
                  [readyComplete fulfill];

                  deps19 = [(KTSMManager *)self deps];
                  stateMonitor = [deps19 stateMonitor];
                  [stateMonitor setAccountStatus:4];

                  if ([flagsCopy _onqueueContains:@"AccountChanged"])
                  {
                    initializingOperation = [KTStateTransitionOperation named:@"account-probably-changed" entering:@"RecheckAccount"];
                    goto LABEL_9;
                  }

                  if ([flagsCopy _onqueueContains:@"CheckAccountSignatures"])
                  {
                    initializingOperation = [KTStateTransitionOperation named:@"make-signatures" entering:@"SignRegistrationData"];
                    goto LABEL_9;
                  }

                  if ([flagsCopy _onqueueContains:@"OctagonTrustChanged"])
                  {
                    initializingOperation = [KTStateTransitionOperation named:@"recheck-after-octagon-change" entering:@"Initializing"];
                    goto LABEL_9;
                  }

                  if ([flagsCopy _onqueueContains:@"RepairIDSFlag"])
                  {
                    initializingOperation = [KTStateTransitionOperation named:@"repair-ids" entering:@"SignalIDS"];
                    goto LABEL_9;
                  }

                  if ([flagsCopy _onqueueContains:@"ConfigBagFetch"])
                  {
                    initializingOperation = [KTStateTransitionOperation named:@"fetch-config-bag" entering:@"FetchConfigBag"];
                    goto LABEL_9;
                  }

                  if ([flagsCopy _onqueueContains:@"FetchSelf"])
                  {
                    initializingOperation = [KTStateTransitionOperation named:@"fetch-ids-self" entering:@"FetchIDSSelf"];
                    goto LABEL_9;
                  }

                  if ([flagsCopy _onqueueContains:@"FetchIDMS"])
                  {
                    initializingOperation = [KTStateTransitionOperation named:@"fetch-idms" entering:@"FetchIDMS"];
                    goto LABEL_9;
                  }

                  if ([flagsCopy _onqueueContains:@"FetchPublicKeys"])
                  {
                    initializingOperation = [KTStateTransitionOperation named:@"public-keys-fetch" entering:@"PublicKeysFetch"];
                    goto LABEL_9;
                  }

                  if ([flagsCopy _onqueueContains:@"CheckIDSRegistration"])
                  {
                    initializingOperation = [KTStateTransitionOperation named:@"check-ids-registration" entering:@"CheckIDSRegistration"];
                    goto LABEL_9;
                  }

                  if ([flagsCopy _onqueueContains:@"ChangeOptInState"])
                  {
                    initializingOperation = [KTStateTransitionOperation named:@"process-opt-in-out" entering:@"ChangeOptIn"];
                    goto LABEL_9;
                  }

                  if (![flagsCopy _onqueueContains:@"EnsureIdentity"])
                  {
                    if ([flagsCopy _onqueueContains:@"CloudKitZoneRecreate"])
                    {
                      initializingOperation = [KTStateTransitionOperation named:@"zone-needs-resetup" entering:@"ZoneSetup"];
                      goto LABEL_9;
                    }

                    if ([flagsCopy _onqueueContains:@"CloudKitOutgoing"])
                    {
                      initializingOperation = [KTStateTransitionOperation named:@"upload-to-ck" entering:@"ProcessOutgoing"];
                      goto LABEL_9;
                    }

                    if ([flagsCopy _onqueueContains:@"CloudKitReboot"])
                    {
                      initializingOperation = [KTStateTransitionOperation named:@"fetch-because-reboot" entering:@"CKProcessReboot"];
                      goto LABEL_9;
                    }

                    if ([flagsCopy _onqueueContains:@"ValidateSelf"])
                    {
                      initializingOperation = [KTStateTransitionOperation named:@"validate-self" entering:@"ValidateSelf"];
                      goto LABEL_9;
                    }

                    if ([flagsCopy _onqueueContains:@"CheckKTAccountKey"])
                    {
                      initializingOperation = [KTStateTransitionOperation named:@"check-kt-account-key" entering:@"ForceSyncKTAccountKey"];
                      goto LABEL_9;
                    }

                    if ([flagsCopy _onqueueContains:@"StatusUpdate"])
                    {
                      initializingOperation = [KTStateTransitionOperation named:@"fill-status" entering:@"GetStatus"];
                      goto LABEL_9;
                    }

                    if ([flagsCopy _onqueueContains:@"CheckKTAccountKeyChanged"])
                    {
                      initializingOperation = [KTStateTransitionOperation named:@"check-account-key-changed" entering:@"CheckKTAccountKeyChanged"];
                      goto LABEL_9;
                    }

                    if ([flagsCopy _onqueueContains:@"IDSStatusChanged"])
                    {
                      initializingOperation = [KTStateTransitionOperation named:@"check-ids-account" entering:@"Initializing"];
                      goto LABEL_9;
                    }

                    if ([flagsCopy _onqueueContains:@"PokeIDS"])
                    {
                      initializingOperation = [KTStateTransitionOperation named:@"poke-ids" entering:@"PokeIDS"];
                      goto LABEL_9;
                    }

                    if ([flagsCopy _onqueueContains:@"PendingCKVRepair"])
                    {
                      initializingOperation = [KTStateTransitionOperation named:@"pending-ckv-repair" entering:@"RepairCKV"];
                      goto LABEL_9;
                    }

                    if ([flagsCopy _onqueueContains:@"IDSServerBagChanged"])
                    {
                      [(KTSMManager *)self setStatusReporting:0];
                      initializingOperation = [KTStateTransitionOperation named:@"ids-server-bag-update" entering:@"Initializing"];
                      goto LABEL_9;
                    }

                    launch = [(KTSMManager *)self launch];
                    [launch launch];

                    deps20 = [(KTSMManager *)self deps];
                    logger = [deps20 logger];
                    launch2 = [(KTSMManager *)self launch];
                    [logger noteLaunchSequence:launch2];

                    goto LABEL_21;
                  }

LABEL_155:
                  initializingOperation = [KTStateTransitionOperation named:@"retry-ensure-identity" entering:@"EnsureAccountIdentity"];
                  goto LABEL_9;
                }

                [flagsCopy _onqueueRemoveFlag:@"StatusUpdate"];
                v104 = [KTFillStatusOperation alloc];
                deps3 = [(KTSMManager *)self deps];
                v99 = kKTApplicationIdentifierIDS;
                v103 = @"Ready";
                v100 = v104;
                v101 = 0;
                v102 = deps3;
              }

              v34 = [(KTFillStatusOperation *)v100 initWithApplication:v99 initialFill:v101 dependencies:v102 intendedState:v103 errorState:v103];
              goto LABEL_52;
            }

            v88 = [KTSetOptInStateOperation alloc];
            deps6 = [(KTSMManager *)self deps];
            optInStates2 = [(KTSMManager *)self optInStates];
            v85 = @"Ready";
            v86 = v88;
            v87 = deps6;
          }

          v18 = [v86 initWithDependenics:v87 intendedState:v85 errorState:@"Ready" optinStates:optInStates2];

          goto LABEL_15;
        }

        goto LABEL_74;
      }

      v75 = [flagsCopy _onqueueContains:@"CheckAccountSignatures"];
      [flagsCopy _onqueueRemoveFlag:@"CheckAccountSignatures"];
      v76 = [KTEnrollmentRegistrationSignature alloc];
      deps13 = [(KTSMManager *)self deps];
      v72 = v76;
      v73 = deps13;
      v74 = v75;
    }

    v18 = [(KTEnrollmentRegistrationSignature *)v72 initWithDependencies:v73 forceUpdate:v74 intendedState:@"Ready" errorState:@"Ready" idsRegistrationInterface:self signatureTracker:self];

    [(KTSMManager *)self setLastRegistration:v18];
    goto LABEL_22;
  }

  if (([flagsCopy _onqueueContains:@"CKAccountChanged"] & 1) != 0 || (objc_msgSend(flagsCopy, "_onqueueContains:", @"OctagonTrustChanged") & 1) != 0 || objc_msgSend(flagsCopy, "_onqueueContains:", @"ManateeViewChanged"))
  {
    initializingOperation = [KTStateTransitionOperation named:@"retry-ckks-check" entering:@"Initializing"];
    goto LABEL_9;
  }

  if ([flagsCopy _onqueueContains:@"CheckAccountSignatures"])
  {
LABEL_47:
    [flagsCopy _onqueueRemoveFlag:@"CheckAccountSignatures"];
    v28 = [KTEnrollmentRegistrationSignature alloc];
    deps21 = [(KTSMManager *)self deps];
    v18 = [(KTEnrollmentRegistrationSignature *)v28 initWithDependencies:deps21 forceUpdate:0 intendedState:v24 errorState:v24 idsRegistrationInterface:self signatureTracker:self];

    goto LABEL_22;
  }

  if (![flagsCopy _onqueueContains:@"CloudKitOutgoing"])
  {
    goto LABEL_21;
  }

  [flagsCopy _onqueueRemoveFlag:@"CloudKitOutgoing"];
  deps22 = [(KTSMManager *)self deps];
  cloudRecords2 = [deps22 cloudRecords];
  deps23 = [(KTSMManager *)self deps];
  deps24 = [(KTSMManager *)self deps];
  dataStore3 = [deps24 dataStore];
  controller3 = [dataStore3 controller];
  backgroundContext3 = [controller3 backgroundContext];
  v120 = [cloudRecords2 updateCloudRecordsOperation:deps23 context:backgroundContext3];

  v151[0] = _NSConcreteStackBlock;
  v151[1] = 3221225472;
  v151[2] = sub_1000553B0;
  v151[3] = &unk_10031AC90;
  v151[4] = self;
  v18 = [KTStateTransitionOperation named:@"processOutgoing" intending:@"WaitForCKKS" errorState:@"WaitForCKKS" withBlockTakingSelf:v151];
  [(KTResultOperation *)v18 addSuccessDependency:v120];
  operationQueue4 = [(KTSMManager *)self operationQueue];
  [operationQueue4 addOperation:v120];

LABEL_22:

  return v18;
}

- (void)maybeCreateServerOptInFetch
{
  queue = [(KTSMManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005848C;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_onQueueMaybeCreateNewServerOptInFetch
{
  queue = [(KTSMManager *)self queue];
  dispatch_assert_queue_V2(queue);

  deps = [(KTSMManager *)self deps];
  stateMonitor = [deps stateMonitor];
  if ([stateMonitor newServerOptInRequests])
  {
    currentServerOptInFetch = [(KTSMManager *)self currentServerOptInFetch];
    if (currentServerOptInFetch)
    {
      v6 = currentServerOptInFetch;
      currentServerOptInFetch2 = [(KTSMManager *)self currentServerOptInFetch];
      isFinished = [currentServerOptInFetch2 isFinished];

      if (!isFinished)
      {
        return;
      }
    }

    else
    {
    }

    if (qword_10038BD00 != -1)
    {
      sub_100249E30();
    }

    v9 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating new ServerOptIn fetch", buf, 2u);
    }

    _onqueueCreateNewServerOptInFetch = [(KTSMManager *)self _onqueueCreateNewServerOptInFetch];
    stateMachine = [(KTSMManager *)self stateMachine];
    [stateMachine cancelPendingFlag:@"CheckServerOptIn"];
  }

  else
  {
  }
}

- (id)_onqueueCreateNewServerOptInFetch
{
  queue = [(KTSMManager *)self queue];
  dispatch_assert_queue_V2(queue);

  serverOptInFetchReasons = [(KTSMManager *)self serverOptInFetchReasons];
  v5 = +[NSMutableSet set];
  [(KTSMManager *)self setServerOptInFetchReasons:v5];

  allObjects = [serverOptInFetchReasons allObjects];
  v7 = [allObjects componentsJoinedByString:{@", "}];

  v8 = [KTFetchServerOptInStatus alloc];
  deps = [(KTSMManager *)self deps];
  serverOptInScheduler = [(KTSMManager *)self serverOptInScheduler];
  v11 = [(KTFetchServerOptInStatus *)v8 initWithDependencies:deps reason:v7 retryScheduler:serverOptInScheduler];

  [(KTSMManager *)self setCurrentServerOptInFetch:v11];
  deps2 = [(KTSMManager *)self deps];
  stateMonitor = [deps2 stateMonitor];
  [stateMonitor setNewServerOptInRequests:0];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000588DC;
  v24[3] = &unk_100316FE0;
  v24[4] = self;
  v14 = [NSBlockOperation blockOperationWithBlock:v24];
  currentServerOptInFetch = [(KTSMManager *)self currentServerOptInFetch];
  [v14 addNullableDependency:currentServerOptInFetch];

  currentServerOptInFetch2 = [(KTSMManager *)self currentServerOptInFetch];
  deps3 = [(KTSMManager *)self deps];
  reachabilityTracker = [deps3 reachabilityTracker];
  reachabilityDependency = [reachabilityTracker reachabilityDependency];
  [currentServerOptInFetch2 addNullableDependency:reachabilityDependency];

  operationQueue = [(KTSMManager *)self operationQueue];
  currentServerOptInFetch3 = [(KTSMManager *)self currentServerOptInFetch];
  [operationQueue addOperation:currentServerOptInFetch3];

  operationQueue2 = [(KTSMManager *)self operationQueue];
  [operationQueue2 addOperation:v14];

  return v11;
}

- (void)requestServerOptInFetchForManyReasons:(id)reasons delayInSeconds:(double)seconds
{
  reasonsCopy = reasons;
  if (qword_10038BD00 != -1)
  {
    sub_100249E44();
  }

  v7 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    allObjects = [reasonsCopy allObjects];
    v10 = [allObjects componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "triggering a new server opt-in state fetch because of reason: %@", buf, 0xCu);
  }

  deps = [(KTSMManager *)self deps];
  stateMonitor = [deps stateMonitor];
  [stateMonitor setNewServerOptInRequests:1];

  v13 = [KTPendingFlag alloc];
  serverOptInScheduler = [(KTSMManager *)self serverOptInScheduler];
  v15 = [(KTPendingFlag *)v13 initWithFlag:@"CheckServerOptIn" conditions:2 scheduler:serverOptInScheduler];

  deps2 = [(KTSMManager *)self deps];
  flagHandler = [deps2 flagHandler];
  [flagHandler handlePendingFlag:v15];

  queue = [(KTSMManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058BF4;
  block[3] = &unk_10031A7F0;
  block[4] = self;
  v21 = reasonsCopy;
  secondsCopy = seconds;
  v19 = reasonsCopy;
  dispatch_async(queue, block);
}

- (void)newServerOptInFetch:(id)fetch
{
  v4 = [NSSet setWithObject:fetch];
  [(KTSMManager *)self requestServerOptInFetchForManyReasons:v4 delayInSeconds:0.0];
}

- (void)triggerBAACertFetcher
{
  deps = [(KTSMManager *)self deps];
  certFetcher = [deps certFetcher];
  [certFetcher getDeviceCertWithForcedFetch:1 completionHandler:&stru_10031B0F0];
}

- (id)initializingOperation
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000064D8;
  v4[3] = &unk_10031B400;
  objc_copyWeak(&v5, &location);
  v2 = [KTStateTransitionOperation named:@"transparency-initializing" intending:@"NoAccount" errorState:@"Error" withBlockTakingSelf:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)recheckAccount
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005976C;
  v4[3] = &unk_10031B400;
  objc_copyWeak(&v5, &location);
  v2 = [KTStateTransitionOperation named:@"transparency-recheck-account" intending:@"Ready" errorState:@"Initializing" withBlockTakingSelf:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)accountFirstSeenDate
{
  deps = [(KTSMManager *)self deps];
  logger = [deps logger];
  v4 = [logger datePropertyForKey:off_100381D10];

  return v4;
}

- (void)clearAccountMetrics
{
  deps = [(KTSMManager *)self deps];
  logger = [deps logger];
  [logger setDateProperty:0 forKey:off_100381D10];

  deps2 = [(KTSMManager *)self deps];
  logger2 = [deps2 logger];
  [logger2 setCKManateeState:1];

  [(KTSMManager *)self setLastSelfValidate:0];
}

- (id)lastSelfValidate
{
  deps = [(KTSMManager *)self deps];
  smDataStore = [deps smDataStore];
  v4 = [smDataStore getSettingsDate:off_100381D18];

  return v4;
}

- (void)setLastSelfValidate:(id)validate
{
  validateCopy = validate;
  deps = [(KTSMManager *)self deps];
  smDataStore = [deps smDataStore];
  [smDataStore setSettingsDate:off_100381D18 date:validateCopy];
}

- (BOOL)optOutWhenNotEligible:(id)eligible error:(id *)error
{
  eligibleCopy = eligible;
  v6 = objc_alloc_init(KTIDSOpsOptInOutData);
  [(KTIDSOpsOptInOutData *)v6 setOptInStatus:&__kCFBooleanFalse];
  [(KTIDSOpsOptInOutData *)v6 setOptChangeReason:3];
  v16 = eligibleCopy;
  v17 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v8 = dispatch_semaphore_create(0);
  deps = [(KTSMManager *)self deps];
  idsOperations = [deps idsOperations];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100059D8C;
  v14[3] = &unk_10031B448;
  v14[4] = self;
  v15 = v8;
  v11 = v8;
  [idsOperations sendOptInUpdateRequest:v7 withCompletion:v14];

  v12 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v11, v12);

  return 1;
}

- (BOOL)changeOptInState:(unint64_t)state application:(id)application loggableData:(id *)data error:(id *)error
{
  applicationCopy = application;
  deps = [(KTSMManager *)self deps];
  accountOperations = [deps accountOperations];
  v69 = 0;
  v10 = [accountOperations primaryAccount:&v69];
  v11 = v69;

  if (!v10)
  {
    if (qword_10038BD00 != -1)
    {
      sub_10024A128();
    }

    v12 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "no primary account: %{public}@", &buf, 0xCu);
    }
  }

  deps2 = [(KTSMManager *)self deps];
  idsOperations = [deps2 idsOperations];
  accountStateFetched = [idsOperations accountStateFetched];
  [accountStateFetched wait:2000000000];

  deps3 = [(KTSMManager *)self deps];
  accountOperations2 = [deps3 accountOperations];
  deps4 = [(KTSMManager *)self deps];
  idsAccountTracker = [deps4 idsAccountTracker];
  v68 = v11;
  v20 = [accountOperations2 ktAccountStatus:v10 idsAccountsTracker:idsAccountTracker error:&v68];
  v21 = v68;

  if ((v20 - 4) >= 2)
  {
    if (v20)
    {
      accountStatus = 0;
      v30 = 0;
      if (!state)
      {
        goto LABEL_12;
      }
    }

    else
    {
      readyComplete = [(KTSMManager *)self readyComplete];
      deps5 = [(KTSMManager *)self deps];
      settings = [deps5 settings];
      [settings uiBlockingNetworkTimeout];
      [readyComplete wait:(v34 * 1000000000.0)];

      deps6 = [(KTSMManager *)self deps];
      stateMonitor = [deps6 stateMonitor];
      ktStatus = [stateMonitor ktStatus];
      accountStatus = [ktStatus accountStatus];

      v30 = (accountStatus & 0xFFFFFFFFFFFFFFFELL) != 2;
      if (!state || (accountStatus & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
LABEL_12:
        v73[0] = @"cdp";
        v38 = [NSNumber numberWithUnsignedInteger:accountStatus];
        v73[1] = @"newState";
        v74[0] = v38;
        v39 = [NSNumber numberWithUnsignedInteger:state];
        v74[1] = v39;
        v40 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:2];

        if (!v30)
        {
          v45 = [TransparencyError errorWithDomain:kTransparencyErrorAccount code:-400 description:@"No CloudKit, can't opt out"];
          v51 = +[TransparencyAnalytics logger];
          [v51 logResultForEvent:kTransparencyAnalyticsEventOptIn hardFailure:1 result:v45 withAttributes:v40];

          v50 = [(KTSMManager *)self optOutWhenNotEligible:applicationCopy error:error];
LABEL_38:

          goto LABEL_39;
        }

        v41 = +[TransparencyAnalytics logger];
        v42 = kTransparencyAnalyticsEventOptIn;
        [v41 logResultForEvent:kTransparencyAnalyticsEventOptIn hardFailure:0 result:0 withAttributes:v40];

        v43 = [[KTOptInWatcher alloc] initWithTargetState:state];
        *&buf = 0;
        *(&buf + 1) = &buf;
        v71 = 0x2020000000;
        v72 = 0;
        stateMachineQueue = [(KTSMManager *)self stateMachineQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10005A67C;
        block[3] = &unk_10031B4B0;
        block[4] = self;
        v65 = applicationCopy;
        p_buf = &buf;
        v45 = v43;
        v66 = v45;
        dispatch_sync(stateMachineQueue, block);

        if (*(*(&buf + 1) + 24) == 1)
        {
          v46 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-342 underlyingError:0 description:@"opt-in pending"];
          v47 = +[TransparencyAnalytics logger];
          [v47 logResultForEvent:v42 hardFailure:1 result:v46 withAttributes:v40];
        }

        else
        {
          [(KTSMManager *)self triggerOptInStateChange];
          targetResolved = [(KTOptInWatcher *)v45 targetResolved];
          v53 = [targetResolved wait:120000000000] == 0;

          if (v53)
          {
            error = [(KTOptInWatcher *)v45 error];

            if (!error)
            {
              if ([(KTOptInWatcher *)v45 targetState]== 3)
              {
                statusReporting = [(KTSMManager *)self statusReporting];
                [statusReporting insertHasOptedInByDefaultWithValue:0 completionHandler:&stru_10031B4D0];
              }

              v56 = 0;
              v46 = 0;
              v50 = 1;
              goto LABEL_32;
            }

            error2 = [(KTOptInWatcher *)v45 error];
          }

          else
          {
            error2 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-343 underlyingError:0 description:@"timeout setting opt-in"];
          }

          v46 = error2;
        }

        v50 = 0;
        v56 = v46 != 0;
        if (error && v46)
        {
          v57 = v46;
          v50 = 0;
          *error = v46;
          v56 = 1;
        }

LABEL_32:
        if (data)
        {
          *data = [(KTOptInWatcher *)v45 loggableData];
        }

        +[TransparencyAnalytics logger];
        if (v56)
          v58 = {;
          [v58 logResultForEvent:v42 hardFailure:1 result:v46 withAttributes:v40];
        }

        else
          v58 = {;
          [v58 logResultForEvent:v42 hardFailure:0 result:0 withAttributes:v40];
        }

        _Block_object_dispose(&buf, 8);
        goto LABEL_38;
      }
    }
  }

  else
  {
    readyComplete2 = [(KTSMManager *)self readyComplete];
    deps7 = [(KTSMManager *)self deps];
    settings2 = [deps7 settings];
    [settings2 uiBlockingNetworkTimeout];
    [readyComplete2 wait:(v25 * 1000000000.0)];

    deps8 = [(KTSMManager *)self deps];
    stateMonitor2 = [deps8 stateMonitor];
    ktStatus2 = [stateMonitor2 ktStatus];
    accountStatus = [ktStatus2 accountStatus];

    v30 = (accountStatus & 0xFFFFFFFFFFFFFFFELL) != 2;
    if (!state)
    {
      goto LABEL_12;
    }
  }

  v40 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-160 underlyingError:v21 description:@"Opt-in not allowed, account state: %d cdpState: %d", v20, accountStatus];
  if (qword_10038BD00 != -1)
  {
    sub_10024A150();
  }

  v48 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v40;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Opt-in not allowed: %{public}@", &buf, 0xCu);
  }

  if (error)
  {
    v49 = v40;
    v50 = 0;
    *error = v40;
  }

  else
  {
    v50 = 0;
  }

LABEL_39:

  return v50;
}

- (void)timeout:(unint64_t)timeout block:(id)block
{
  blockCopy = block;
  if (qword_10038BD00 != -1)
  {
    sub_10024A178();
  }

  v7 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    timeoutCopy = timeout;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Setting a timer to watch for IDS registration timeouts - timeout %llu", buf, 0xCu);
  }

  queue = [(KTSMManager *)self queue];
  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
  [(KTSMManager *)self setTimer:v9];

  timer = [(KTSMManager *)self timer];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10005A97C;
  v18 = &unk_10031ABA0;
  selfCopy = self;
  v20 = blockCopy;
  v11 = blockCopy;
  dispatch_source_set_event_handler(timer, &v15);

  v12 = [(KTSMManager *)self timer:v15];
  v13 = dispatch_time(0, timeout);
  dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x6FC23AC00uLL);

  timer2 = [(KTSMManager *)self timer];
  dispatch_resume(timer2);
}

- (void)_waitForIDSRegistration:(BOOL)registration complete:(id)complete
{
  completeCopy = complete;
  queue = [(KTSMManager *)self queue];
  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
  [(KTSMManager *)self setCheckIDSTimer:v8];

  checkIDSTimer = [(KTSMManager *)self checkIDSTimer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10005ADF4;
  handler[3] = &unk_10031B5A0;
  registrationCopy = registration;
  handler[4] = self;
  v17 = completeCopy;
  v10 = completeCopy;
  dispatch_source_set_event_handler(checkIDSTimer, handler);

  checkIDSTimer2 = [(KTSMManager *)self checkIDSTimer];
  deps = [(KTSMManager *)self deps];
  idsOperations = [deps idsOperations];
  [idsOperations sleepTimeBetweenIDSCheckups];
  dispatch_source_set_timer(checkIDSTimer2, 0, (v14 * 1000000000.0), 0x2FAF080uLL);

  checkIDSTimer3 = [(KTSMManager *)self checkIDSTimer];
  dispatch_resume(checkIDSTimer3);
}

- (void)checkIDSHealth:(BOOL)health complete:(id)complete
{
  completeCopy = complete;
  v7 = objc_alloc_init(CheckIDSRegistrationMonitor);
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10005B32C;
  v18[3] = &unk_10031B5C8;
  objc_copyWeak(&v20, &location);
  healthCopy = health;
  v8 = v7;
  v19 = v8;
  v9 = [KTStateTransitionGroupOperation named:@"check-ids-health" intending:@"Ready" errorState:@"Ready" withBlockTakingSelf:v18];
  v23 = @"Ready";
  v10 = [NSArray arrayWithObjects:&v23 count:1];
  v11 = [NSSet setWithArray:v10];

  stateMachine = [(KTSMManager *)self stateMachine];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005B414;
  v15[3] = &unk_10031B610;
  v13 = completeCopy;
  v17 = v13;
  v14 = v8;
  v16 = v14;
  [stateMachine doSimpleStateMachineRPC:@"check-ids" op:v9 sourceStates:v11 reply:v15];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)checkKTAccountKey:(id)key complete:(id)complete
{
  keyCopy = key;
  completeCopy = complete;
  if (os_variant_allows_internal_security_policies())
  {
    deps = [(KTSMManager *)self deps];
    settings = [deps settings];
    ktSignaturePolicy = [settings ktSignaturePolicy];

    if (ktSignaturePolicy <= 8 && ((1 << ktSignaturePolicy) & 0x154) != 0)
    {
      if (qword_10038BD00 != -1)
      {
        sub_10024A1DC();
      }

      v11 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 67109120;
        v17 = ktSignaturePolicy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "signaturePolicy: clearing signature policy: %d", &v16, 8u);
      }

      deps2 = [(KTSMManager *)self deps];
      settings2 = [deps2 settings];
      [settings2 clearKTSignaturePolicy];
    }

    else
    {
      if (qword_10038BD00 != -1)
      {
        sub_10024A1F0();
      }

      v15 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 67109120;
        v17 = ktSignaturePolicy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "signaturePolicy: leaving policy in place: %d", &v16, 8u);
      }
    }
  }

  [(KTSMManager *)self idsServerReportKTKeyWrong:keyCopy];
  checkKTAccountKeyScheduler = [(KTSMManager *)self checkKTAccountKeyScheduler];
  [checkKTAccountKeyScheduler trigger];

  completeCopy[2](completeCopy, 0);
}

- (void)refreshDeviceList:(id)list
{
  listCopy = list;
  specificUser = [(KTSMManager *)self specificUser];
  v5 = specificUser;
  if (specificUser && ([specificUser altDSID], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    deps = [(KTSMManager *)self deps];
    idmsOperations = [deps idmsOperations];
    altDSID = [v5 altDSID];
    [idmsOperations refreshDeviceList:altDSID complete:listCopy];
  }

  else
  {
    deps = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-339 description:@"No specific user available yet"];
    listCopy[2](listCopy, 0, deps);
  }
}

- (void)clearIDSCacheForUri:(id)uri application:(id)application
{
  applicationCopy = application;
  v7 = [TransparencyApplication stripApplicationPrefixForIdentifier:applicationCopy uri:uri];
  v8 = [[IDSURI alloc] initWithPrefixedURI:v7];
  v9 = objc_alloc_init(IDSCacheClearRequestContext);
  v17 = v8;
  v10 = [NSArray arrayWithObjects:&v17 count:1];
  [v9 setUris:v10];

  v11 = [TransparencyApplication idsServiceForIdentifier:applicationCopy];

  [v9 setService:v11];
  v12 = objc_alloc_init(IDSCacheClearRequest);
  v16 = v9;
  v13 = [NSArray arrayWithObjects:&v16 count:1];
  [v12 setRequestContexts:v13];

  deps = [(KTSMManager *)self deps];
  idsOperations = [deps idsOperations];
  [idsOperations cacheClearRequest:v12];
}

- (void)transparencyGetKTSignatures:(id)signatures complete:(id)complete
{
  signaturesCopy = signatures;
  completeCopy = complete;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_10004DA78;
  v21[4] = sub_10004DA88;
  v22 = 0;
  if (qword_10038BD00 != -1)
  {
    sub_10024A204();
  }

  v8 = qword_10038BD08;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    requests = [signaturesCopy requests];
    v10 = [requests count];
    traceUUID = [signaturesCopy traceUUID];
    *buf = 67109378;
    v24 = v10;
    v25 = 2114;
    v26 = traceUUID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Getting signature request: %d: %{public}@", buf, 0x12u);
  }

  [(KTSMManager *)self addEvent:@"GettingSignatureRequest"];
  signatureQueue = [(KTSMManager *)self signatureQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005BDBC;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_async(signatureQueue, block);

  deps = [(KTSMManager *)self deps];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10005BDC8;
  v16[3] = &unk_10031B768;
  v16[4] = self;
  v19 = v21;
  v14 = signaturesCopy;
  v17 = v14;
  v15 = completeCopy;
  v18 = v15;
  [KTEnrollmentSignatureSupport updateClientData:v14 deps:deps complete:v16];

  _Block_object_dispose(v21, 8);
}

- (void)fillUploadedRdata:(id)rdata withRegistrationData:(id)data
{
  rdataCopy = rdata;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = [data objectEnumerator];
  v6 = [obj countByEnumeratingWithState:&v70 objects:v80 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v71;
    *&v7 = 138543362;
    v51 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v71 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v70 + 1) + 8 * v10);
        deps = [(KTSMManager *)self deps];
        cloudRecords = [deps cloudRecords];
        pushToken = [v11 pushToken];
        tbsKTIDSRegistrationData = [v11 tbsKTIDSRegistrationData];
        v16 = [cloudRecords fetchCloudDeviceWithPushToken:pushToken tbsRegistrationData:tbsKTIDSRegistrationData];

        uploadedToCKAt = [v16 uploadedToCKAt];
        [v11 setUploadedToCKAt:uploadedToCKAt];

        if (([v16 stateReady] & 1) != 0 || (-[KTSMManager deps](self, "deps"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "cloudRecords"), v19 = objc_claimAutoreleasedReturnValue(), v19, v18, !v19))
        {
          application = [v11 application];
          [rdataCopy setValue:v11 forKey:application];
          goto LABEL_13;
        }

        if (qword_10038BD00 != -1)
        {
          sub_10024A2A4();
        }

        v20 = qword_10038BD08;
        if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
        {
          application = v20;
          application2 = [v11 application];
          *buf = v51;
          v79 = application2;
          _os_log_impl(&_mh_execute_header, application, OS_LOG_TYPE_DEFAULT, "updateClientData callback: Skipping rdata for application %{public}@ because it has not been uploaded to CloudKit", buf, 0xCu);

LABEL_13:
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v70 objects:v80 count:16];
    }

    while (v8);
  }

  if (os_variant_allows_internal_security_policies())
  {
    deps2 = [(KTSMManager *)self deps];
    settings = [deps2 settings];
    ktSignaturePolicy = [settings ktSignaturePolicy];

    if (ktSignaturePolicy <= 8)
    {
      if (((1 << ktSignaturePolicy) & 0x18) != 0)
      {
        if (qword_10038BD00 != -1)
        {
          sub_10024A31C();
        }

        v44 = qword_10038BD08;
        if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "signaturePolicy: corrupt public key", buf, 2u);
        }

        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        objectEnumerator = [rdataCopy objectEnumerator];
        v45 = [objectEnumerator countByEnumeratingWithState:&v62 objects:v76 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v63;
          do
          {
            for (i = 0; i != v46; i = i + 1)
            {
              if (*v63 != v47)
              {
                objc_enumerationMutation(objectEnumerator);
              }

              v49 = *(*(&v62 + 1) + 8 * i);
              v50 = [NSData dataWithBytes:"public" length:6];
              [v49 setPublicKey:v50];
            }

            v46 = [objectEnumerator countByEnumeratingWithState:&v62 objects:v76 count:16];
          }

          while (v46);
        }

        goto LABEL_69;
      }

      if (((1 << ktSignaturePolicy) & 0x60) != 0)
      {
        if (qword_10038BD00 != -1)
        {
          sub_10024A2F4();
        }

        v39 = qword_10038BD08;
        if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "signaturePolicy: empty signature", buf, 2u);
        }

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        objectEnumerator = [rdataCopy objectEnumerator];
        v40 = [objectEnumerator countByEnumeratingWithState:&v58 objects:v75 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v59;
          do
          {
            for (j = 0; j != v41; j = j + 1)
            {
              if (*v59 != v42)
              {
                objc_enumerationMutation(objectEnumerator);
              }

              [*(*(&v58 + 1) + 8 * j) setSignature:0];
            }

            v41 = [objectEnumerator countByEnumeratingWithState:&v58 objects:v75 count:16];
          }

          while (v41);
        }

        goto LABEL_69;
      }

      if (((1 << ktSignaturePolicy) & 0x180) != 0)
      {
        if (qword_10038BD00 != -1)
        {
          sub_10024A2CC();
        }

        v26 = qword_10038BD08;
        if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "signaturePolicy: empty public key", buf, 2u);
        }

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        objectEnumerator = [rdataCopy objectEnumerator];
        v28 = [objectEnumerator countByEnumeratingWithState:&v54 objects:v74 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v55;
          do
          {
            for (k = 0; k != v29; k = k + 1)
            {
              if (*v55 != v30)
              {
                objc_enumerationMutation(objectEnumerator);
              }

              [*(*(&v54 + 1) + 8 * k) setPublicKey:0];
            }

            v29 = [objectEnumerator countByEnumeratingWithState:&v54 objects:v74 count:16];
          }

          while (v29);
        }

LABEL_69:

        goto LABEL_70;
      }
    }

    if (ktSignaturePolicy - 1 < 2)
    {
      if (qword_10038BD00 != -1)
      {
        sub_10024A344();
      }

      v32 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "signaturePolicy: corrupt signature", buf, 2u);
      }

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      objectEnumerator = [rdataCopy objectEnumerator];
      v33 = [objectEnumerator countByEnumeratingWithState:&v66 objects:v77 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v67;
        do
        {
          for (m = 0; m != v34; m = m + 1)
          {
            if (*v67 != v35)
            {
              objc_enumerationMutation(objectEnumerator);
            }

            v37 = *(*(&v66 + 1) + 8 * m);
            v38 = [NSData dataWithBytes:"signature" length:9];
            [v37 setSignature:v38];
          }

          v34 = [objectEnumerator countByEnumeratingWithState:&v66 objects:v77 count:16];
        }

        while (v34);
      }

      goto LABEL_69;
    }
  }

LABEL_70:
}

- (void)transparencyDumpKTRegistrationData:(id)data
{
  dataCopy = data;
  deps = [(KTSMManager *)self deps];
  smDataStore = [deps smDataStore];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005CF04;
  v8[3] = &unk_1003176B8;
  v9 = dataCopy;
  v7 = dataCopy;
  [smDataStore fetchDeviceSignature:0 complete:v8];
}

- (void)transparencyClearKTRegistrationData:(id)data
{
  dataCopy = data;
  deps = [(KTSMManager *)self deps];
  smDataStore = [deps smDataStore];
  v8 = 0;
  [smDataStore clearDeviceSignatures:&v8];
  v7 = v8;

  dataCopy[2](dataCopy, v7);
}

- (void)transparencyPerformRegistrationSignature:(id)signature
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005D0C4;
  v4[3] = &unk_10031B610;
  selfCopy = self;
  signatureCopy = signature;
  v3 = signatureCopy;
  [(KTSMManager *)selfCopy performRegistrationSignatures:v4];
}

- (void)transparencyCloudDevices:(id)devices
{
  devicesCopy = devices;
  deps = [(KTSMManager *)self deps];
  cloudRecords = [deps cloudRecords];

  if (cloudRecords)
  {
    deps2 = [(KTSMManager *)self deps];
    cloudRecords2 = [deps2 cloudRecords];
    cloudDevices = [cloudRecords2 cloudDevices];

    devicesCopy[2](devicesCopy, cloudDevices, 0);
  }

  else
  {
    devicesCopy[2](devicesCopy, 0, 0);
  }
}

- (void)setCloudKitOutgoingFlag
{
  v3 = [KTPendingFlag alloc];
  deps = [(KTSMManager *)self deps];
  cloudKitOutgoingNFS = [deps cloudKitOutgoingNFS];
  v10 = [(KTPendingFlag *)v3 initWithFlag:@"CloudKitOutgoing" conditions:2 scheduler:cloudKitOutgoingNFS];

  deps2 = [(KTSMManager *)self deps];
  flagHandler = [deps2 flagHandler];
  [flagHandler handlePendingFlag:v10];

  deps3 = [(KTSMManager *)self deps];
  cloudKitOutgoingNFS2 = [deps3 cloudKitOutgoingNFS];
  [cloudKitOutgoingNFS2 trigger];
}

- (void)transparencyCloudDeviceAdd:(id)add clientData:(id)data complete:(id)complete
{
  addCopy = add;
  dataCopy = data;
  completeCopy = complete;
  deps = [(KTSMManager *)self deps];
  cloudRecords = [deps cloudRecords];

  if (cloudRecords)
  {
    deps2 = [(KTSMManager *)self deps];
    cloudRecords2 = [deps2 cloudRecords];
    v16 = 0;
    [cloudRecords2 addDevice:addCopy clientData:dataCopy error:&v16];
    v15 = v16;

    [(KTSMManager *)self setCloudKitOutgoingFlag];
    completeCopy[2](completeCopy, v15);
  }

  else
  {
    completeCopy[2](completeCopy, 0);
  }
}

- (void)transparencyCloudDeviceRemove:(id)remove clientData:(id)data complete:(id)complete
{
  removeCopy = remove;
  dataCopy = data;
  completeCopy = complete;
  deps = [(KTSMManager *)self deps];
  cloudRecords = [deps cloudRecords];

  if (cloudRecords)
  {
    deps2 = [(KTSMManager *)self deps];
    cloudRecords2 = [deps2 cloudRecords];
    v16 = 0;
    [cloudRecords2 removeDevice:removeCopy clientData:dataCopy error:&v16];
    v15 = v16;

    [(KTSMManager *)self setCloudKitOutgoingFlag];
    completeCopy[2](completeCopy, v15);
  }

  else
  {
    completeCopy[2](completeCopy, 0);
  }
}

- (void)getOptInStateForAccount:(id)account complete:(id)complete
{
  completeCopy = complete;
  deps = [(KTSMManager *)self deps];
  cloudRecords = [deps cloudRecords];

  if (cloudRecords)
  {
    getAllOptInStates = [cloudRecords getAllOptInStates];
    if (getAllOptInStates)
    {
      v9 = [[_TtC13transparencyd16KTOptIOValidator alloc] initWithOptInRecords:getAllOptInStates uriToSMT:&__NSDictionary0__struct];
      v12 = 0;
      v10 = [(KTOptIOValidator *)v9 evaluateCloudDataWithApplication:@"IDS" error:&v12];
      v11 = v12;
      completeCopy[2](completeCopy, v10, v11);
    }

    else
    {
      completeCopy[2](completeCopy, 0, 0);
    }
  }

  else
  {
    completeCopy[2](completeCopy, 0, 0);
  }
}

- (void)getOptInForURI:(id)i application:(id)application complete:(id)complete
{
  iCopy = i;
  applicationCopy = application;
  completeCopy = complete;
  deps = [(KTSMManager *)self deps];
  cloudRecords = [deps cloudRecords];

  if (cloudRecords)
  {
    v12 = [cloudRecords getOptInStateWithUri:iCopy application:applicationCopy];
    completeCopy[2](completeCopy, v12, 0);
  }

  else
  {
    completeCopy[2](completeCopy, 0, 0);
  }
}

- (void)getAllOptInStates:(id)states
{
  statesCopy = states;
  deps = [(KTSMManager *)self deps];
  cloudRecords = [deps cloudRecords];

  if (cloudRecords)
  {
    getAllOptInStates = [cloudRecords getAllOptInStates];
    statesCopy[2](statesCopy, getAllOptInStates, 0);
  }

  else
  {
    statesCopy[2](statesCopy, 0, 0);
  }
}

- (void)getOptInStateForApplication:(id)application complete:(id)complete
{
  applicationCopy = application;
  completeCopy = complete;
  deps = [(KTSMManager *)self deps];
  cloudRecords = [deps cloudRecords];

  if (cloudRecords)
  {
    v9 = [cloudRecords getAggregateOptInStateForApplication:applicationCopy];
    completeCopy[2](completeCopy, v9, 0);
  }

  else
  {
    completeCopy[2](completeCopy, 0, 0);
  }
}

- (void)clearOptInStateForURI:(id)i application:(id)application complete:(id)complete
{
  iCopy = i;
  applicationCopy = application;
  completeCopy = complete;
  deps = [(KTSMManager *)self deps];
  cloudRecords = [deps cloudRecords];

  if (cloudRecords)
  {
    v15 = 0;
    v13 = [cloudRecords clearOptInStateForURI:iCopy application:applicationCopy error:&v15];
    v14 = v15;
    completeCopy[2](completeCopy, v13, v14);
  }

  else
  {
    completeCopy[2](completeCopy, 0, 0);
  }
}

- (void)resetLocalCloudDataState
{
  v7 = [KTStateTransitionOperation named:@"cloud-data-reset" entering:@"ResetLocalCloudState"];
  stateMachine = [(KTSMManager *)self stateMachine];
  v4 = +[KTStates KTStateMap];
  allKeys = [v4 allKeys];
  v6 = [NSSet setWithArray:allKeys];
  [stateMachine doSimpleStateMachineRPC:@"cloud-data-reset" op:v7 sourceStates:v6 reply:&stru_10031B848];
}

- (void)resetCloudStore
{
  v7 = [KTStateTransitionOperation named:@"cloud-data-reset" entering:@"KTStateResetCloudStore"];
  stateMachine = [(KTSMManager *)self stateMachine];
  v4 = +[KTStates KTStateMap];
  allKeys = [v4 allKeys];
  v6 = [NSSet setWithArray:allKeys];
  [stateMachine doSimpleStateMachineRPC:@"cloud-store-reset" op:v7 sourceStates:v6 reply:&stru_10031B888];
}

- (void)uriNeedsUpdate:(id)update forApplication:(id)application
{
  updateCopy = update;
  applicationCopy = application;
  if (qword_10038BD00 != -1)
  {
    sub_10024A3A8();
  }

  v7 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = updateCopy;
    v10 = 2112;
    v11 = applicationCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "uriNeedsUpdate: %@[%@]", &v8, 0x16u);
  }
}

- (void)inspectErrorForRetryAfter:(id)after trigger:(id)trigger
{
  afterCopy = after;
  triggerCopy = trigger;
  CKRetryAfterSecondsForError();
  if (v7 != 0.0)
  {
    v8 = v7;
    v9 = 1000000000 * v7;
    if (qword_10038BD00 != -1)
    {
      sub_10024A3BC();
    }

    v10 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      name = [triggerCopy name];
      v13 = 138412802;
      v14 = name;
      v15 = 2048;
      v16 = v8;
      v17 = 2112;
      v18 = afterCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CK operation failed, scheduling %@ delay for %.1f seconds: %@", &v13, 0x20u);
    }

    [triggerCopy waitUntil:v9];
  }
}

- (void)idsServerBagUpdate
{
  if (qword_10038BD00 != -1)
  {
    sub_10024A3D0();
  }

  v3 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "IDS server bag update", buf, 2u);
  }

  if (_os_feature_enabled_impl())
  {
    v4 = [[KTPendingFlag alloc] initWithFlag:@"IDSServerBagChanged" conditions:0 delayInSeconds:0.0];
    stateMachine = [(KTSMManager *)self stateMachine];
    [stateMachine handlePendingFlag:v4];
  }

  else
  {
    if (qword_10038BD00 != -1)
    {
      sub_10024A3E4();
    }

    v6 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "An IDS server bag update happened but 'KTEligibilityServerReporting' feature flag is not enabled", v7, 2u);
    }
  }
}

- (void)triggerCheckCKKSOctagonEligibilityWithCompletion:(id)completion
{
  completionCopy = completion;
  eligibilityQueue = [(KTSMManager *)self eligibilityQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005E558;
  v7[3] = &unk_10031ABA0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(eligibilityQueue, v7);
}

- (void)storeEligiblilitySuccess:(id)success
{
  successCopy = success;
  if (_os_feature_enabled_impl())
  {
    statusReporting = [(KTSMManager *)self statusReporting];

    if (statusReporting)
    {
      v6 = [_TtC13transparencyd25KTEligibilityStatusResult statusResultWithSuccessWithElement:successCopy];
      statusReporting2 = [(KTSMManager *)self statusReporting];
      [statusReporting2 storeWithStatus:v6 completionHandler:&stru_10031B988];
    }

    else
    {
      if (qword_10038BD00 != -1)
      {
        sub_10024A40C();
      }

      v8 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Did not store eligiblity result, status reporting object is nil", v9, 2u);
      }
    }
  }
}

- (void)storeEligiblilityFailure:(id)failure error:(id)error
{
  failureCopy = failure;
  errorCopy = error;
  if (_os_feature_enabled_impl())
  {
    statusReporting = [(KTSMManager *)self statusReporting];

    if (statusReporting)
    {
      v9 = [_TtC13transparencyd25KTEligibilityStatusResult statusResultWithFailureWithElement:failureCopy error:errorCopy];
      statusReporting2 = [(KTSMManager *)self statusReporting];
      [statusReporting2 storeWithStatus:v9 completionHandler:&stru_10031B9E8];
    }

    else
    {
      if (qword_10038BD00 != -1)
      {
        sub_10024A434();
      }

      v11 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Did not store eligiblity result, status reporting object is nil", v12, 2u);
      }
    }
  }
}

- (void)triggerMaybeReportEligibilityWithCompletion:(id)completion
{
  completionCopy = completion;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (qword_10038BD00 != -1)
    {
      sub_10024A45C();
    }

    v7 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "KTEligibilityServerReporting feature not enabled", buf, 2u);
    }

    v8 = kTransparencyErrorEligibility;
    v9 = @"Feature flag not enabled";
    v10 = 9;
    goto LABEL_10;
  }

  statusReporting = [(KTSMManager *)self statusReporting];

  if (!statusReporting)
  {
    v8 = kTransparencyErrorInternal;
    v9 = @"State Machine not initialized yet, can't run eligibility commands";
    v10 = -367;
LABEL_10:
    v11 = [TransparencyError errorWithDomain:v8 code:v10 description:v9];
    completionCopy[2](completionCopy, 0, v11);

    goto LABEL_11;
  }

  statusReporting2 = [(KTSMManager *)self statusReporting];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005ED60;
  v12[3] = &unk_10031BB20;
  v12[4] = self;
  v13 = completionCopy;
  [statusReporting2 timeOfLastReportWithCompletionHandler:v12];

LABEL_11:
}

- (void)tryOptInByDefaultWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  deps = [(KTSMManager *)self deps];
  eligibilitySupport = [deps eligibilitySupport];
  allowKTEnableByDefault = [eligibilitySupport allowKTEnableByDefault];

  if ((allowKTEnableByDefault & 1) == 0)
  {
    v19 = kTransparencyErrorEligibility;
    v20 = @"KTEnableByDefault feature flag is not enabled";
    v21 = 9;
LABEL_10:
    v22 = [TransparencyError errorWithDomain:v19 code:v21 description:v20];
    handlerCopy[2](handlerCopy, 0, v22);

    goto LABEL_11;
  }

  statusReporting = [(KTSMManager *)self statusReporting];

  if (!statusReporting)
  {
    v19 = kTransparencyErrorInternal;
    v20 = @"State Machine not initialized yet, can't run eligibility commands";
    v21 = -367;
    goto LABEL_10;
  }

  deps2 = [(KTSMManager *)self deps];
  accountOperations = [deps2 accountOperations];
  v26 = 0;
  v11 = [accountOperations primaryAccount:&v26];
  v12 = v26;

  if (v11 && (-[KTSMManager deps](self, "deps"), v13 = objc_claimAutoreleasedReturnValue(), [v13 accountOperations], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "accountLevel:", v11), v14, v13, v15 == 4))
  {
    v16 = +[TransparencySettings deviceUserAgent];
    statusReporting2 = [(KTSMManager *)self statusReporting];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10005F5F4;
    v23[3] = &unk_10031BBC8;
    v23[4] = self;
    v24 = v16;
    v25 = handlerCopy;
    v18 = v16;
    [statusReporting2 osVersionWithCompletionHandler:v23];
  }

  else
  {
    v18 = [TransparencyError errorWithDomain:kTransparencyErrorEligibility code:12 description:@"Account nil or not HSA2, can't opt in"];
    handlerCopy[2](handlerCopy, 0, v18);
  }

LABEL_11:
}

- (void)triggerReportAndMaybeOptInWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005FD44;
  v4[3] = &unk_10031BAF8;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(KTSMManager *)selfCopy triggerMaybeReportEligibilityWithCompletion:v4];
}

- (void)insertOSVersion:(id)version complete:(id)complete
{
  versionCopy = version;
  completeCopy = complete;
  statusReporting = [(KTSMManager *)self statusReporting];

  if (statusReporting)
  {
    statusReporting2 = [(KTSMManager *)self statusReporting];
    [statusReporting2 insertOSVersion:versionCopy completionHandler:completeCopy];
  }

  else
  {
    statusReporting2 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-367 description:@"State Machine not initialized yet, can't run eligibility commands"];
    completeCopy[2](completeCopy, statusReporting2);
  }
}

- (void)clearEligibilityOverrides:(id)overrides
{
  overridesCopy = overrides;
  statusReporting = [(KTSMManager *)self statusReporting];

  if (statusReporting)
  {
    statusReporting2 = [(KTSMManager *)self statusReporting];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000606CC;
    v8[3] = &unk_10031BCC0;
    v9 = overridesCopy;
    [statusReporting2 clearEligibilityOverridesWithCompletionHandler:v8];
  }

  else
  {
    v7 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-367 description:@"State Machine not initialized yet, can't run eligibility commands"];
    (*(overridesCopy + 2))(overridesCopy, v7);
  }
}

- (void)setOverrideTimeBetweenReports:(double)reports completion:(id)completion
{
  completionCopy = completion;
  statusReporting = [(KTSMManager *)self statusReporting];

  if (statusReporting)
  {
    statusReporting2 = [(KTSMManager *)self statusReporting];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100060800;
    v10[3] = &unk_10031BCC0;
    v11 = completionCopy;
    [statusReporting2 setOverrideTimeBetweenReportsWithValue:v10 completionHandler:reports];
  }

  else
  {
    v9 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-367 description:@"State Machine not initialized yet, can't run eligibility commands"];
    (*(completionCopy + 2))(completionCopy, v9);
  }
}

- (void)reportEligibility:(id)eligibility withCompletion:(id)completion
{
  eligibilityCopy = eligibility;
  completionCopy = completion;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v11 = [TransparencyError errorWithDomain:kTransparencyErrorEligibility code:9 description:@"KTEligibilityServerReporting feature not enabled"];
    if (qword_10038BD00 != -1)
    {
      sub_10024A59C();
    }

    v12 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(location) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "KTEligibilityServerReporting feature not enabled", &location, 2u);
    }

    goto LABEL_10;
  }

  statusReporting = [(KTSMManager *)self statusReporting];

  if (!statusReporting)
  {
    v11 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-367 description:@"State Machine not initialized yet, can't run eligibility commands"];
LABEL_10:
    completionCopy[2](completionCopy, 0, v11);

    goto LABEL_11;
  }

  if (eligibilityCopy)
  {
    objc_initWeak(&location, self);
    statusReporting2 = [(KTSMManager *)self statusReporting];
    bOOLValue = [eligibilityCopy BOOLValue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100060B14;
    v14[3] = &unk_10031BD50;
    objc_copyWeak(&v16, &location);
    v15 = completionCopy;
    [statusReporting2 setOverrideReportValueWithReportValue:bOOLValue completionHandler:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    statusReporting3 = [(KTSMManager *)self statusReporting];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100060AFC;
    v18[3] = &unk_10031BA90;
    v19 = completionCopy;
    [statusReporting3 reportWithCompletionHandler:v18];
  }

LABEL_11:
}

- (void)getAggregateResult:(int64_t)result element:(id)element complete:(id)complete
{
  elementCopy = element;
  completeCopy = complete;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v12 = [TransparencyError errorWithDomain:kTransparencyErrorEligibility code:9 description:@"KTEligibilityMetrics feature not enabled"];
    if (qword_10038BD00 != -1)
    {
      sub_10024A5B0();
    }

    v13 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "KTEligibilityMetrics feature not enabled", buf, 2u);
    }

    goto LABEL_9;
  }

  statusReporting = [(KTSMManager *)self statusReporting];

  if (!statusReporting)
  {
    v12 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-367 description:@"State Machine not initialized yet, can't run eligibility commands"];
LABEL_9:
    completeCopy[2](completeCopy, 0, v12);

    goto LABEL_10;
  }

  statusReporting2 = [(KTSMManager *)self statusReporting];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100060E58;
  v14[3] = &unk_10031BD98;
  v15 = completeCopy;
  [statusReporting2 aggregateResultWithSamples:result element:elementCopy completionHandler:v14];

LABEL_10:
}

- (void)successInfoForElement:(id)element samples:(int64_t)samples complete:(id)complete
{
  elementCopy = element;
  completeCopy = complete;
  statusReporting = [(KTSMManager *)self statusReporting];

  if (statusReporting)
  {
    if (elementCopy)
    {
      statusReporting2 = [(KTSMManager *)self statusReporting];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100061A94;
      v41[3] = &unk_10031BE30;
      v43 = completeCopy;
      v42 = elementCopy;
      [statusReporting2 successInfoWithElement:v42 samples:samples completionHandler:v41];
    }

    else
    {
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      queue = dispatch_queue_create("com.apple.transparency.eligibilityCLIQueue", v12);

      v39[0] = 0;
      v39[1] = v39;
      v39[2] = 0x3032000000;
      v39[3] = sub_10004DA78;
      v39[4] = sub_10004DA88;
      v40 = +[NSMutableArray array];
      v37[0] = 0;
      v37[1] = v37;
      v37[2] = 0x3032000000;
      v37[3] = sub_10004DA78;
      v37[4] = sub_10004DA88;
      v38 = +[NSMutableDictionary dictionary];
      v13 = dispatch_group_create();
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v14 = [&off_10033D790 countByEnumeratingWithState:&v33 objects:v44 count:16];
      if (v14)
      {
        v15 = *v34;
        do
        {
          v16 = 0;
          do
          {
            if (*v34 != v15)
            {
              objc_enumerationMutation(&off_10033D790);
            }

            v17 = *(*(&v33 + 1) + 8 * v16);
            dispatch_group_enter(v13);
            statusReporting3 = [(KTSMManager *)self statusReporting];
            v27[0] = _NSConcreteStackBlock;
            v27[1] = 3221225472;
            v27[2] = sub_100061B74;
            v27[3] = &unk_10031BE80;
            v28 = queue;
            v29 = v17;
            v31 = v37;
            v32 = v39;
            v30 = v13;
            [statusReporting3 successInfoWithElement:v17 samples:samples completionHandler:v27];

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [&off_10033D790 countByEnumeratingWithState:&v33 objects:v44 count:16];
        }

        while (v14);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100061CC4;
      block[3] = &unk_10031BEA8;
      v25 = v39;
      v24 = completeCopy;
      v26 = v37;
      dispatch_group_notify(v13, queue, block);

      _Block_object_dispose(v37, 8);
      _Block_object_dispose(v39, 8);
    }

    v11 = completeCopy;
  }

  else
  {
    v9 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-367 description:@"State Machine not initialized yet, can't run eligibility commands"];
    v10 = [SecXPCHelper cleanseErrorForXPC:v9];
    v11 = completeCopy;
    (*(completeCopy + 2))(completeCopy, 0, v10);
  }
}

- (void)triggerIDSServerBagNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:IDSServerBagFinishedLoadingNotification object:self];
}

- (void)triggerCloudKitStaticKeyRemoteUpdateNotification
{
  v5 = [NSNotification notificationWithName:NSPersistentStoreRemoteChangeNotification object:0];
  deps = [(KTSMManager *)self deps];
  staticKeyStore = [deps staticKeyStore];
  [staticKeyStore remoteUpdate:v5];
}

- (void)xpc24HrNotification:(id)notification
{
  v4 = +[NSDate date];
  [(KTSMManager *)self triggerIDMSFetchBackstop:v4];

  [(KTSMManager *)self triggerKTAccountKeySignature:10.0];
  [(KTSMManager *)self triggerCheckIDSRegistration];
  [(KTSMManager *)self triggerCheckExpiredPublicKeyStores];
  triggerCKFetch24h = [(KTSMManager *)self triggerCKFetch24h];
  [(KTSMManager *)self triggerReportAndMaybeOptInWithCompletion:&stru_10031BEE8];

  [(KTSMManager *)self captureEligibilityHealthCheckup];
}

@end