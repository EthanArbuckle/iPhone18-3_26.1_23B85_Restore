@interface KTSMManager
- (BOOL)changeOptInState:(unint64_t)a3 application:(id)a4 loggableData:(id *)a5 error:(id *)a6;
- (BOOL)isCloudKitManateeAcountAvailable;
- (BOOL)isKTKeyDifferent:(id)a3;
- (BOOL)maybeUpdateMonitorState:(double)a3;
- (BOOL)optOutWhenNotEligible:(id)a3 error:(id *)a4;
- (BOOL)triggerCKFetchCLI:(id *)a3;
- (BOOL)waitUntilReadyForRPCForOperation:(id)a3 fast:(BOOL)a4 error:(id *)a5;
- (KTSMManager)initWithDependencies:(id)a3;
- (NSNumber)smState;
- (id)_onqueueCreateNewServerOptInFetch;
- (id)_onqueueNextStateMachineTransition:(id)a3 flags:(id)a4 pendingFlags:(id)a5;
- (id)accountFirstSeenDate;
- (id)createSuccesfulCKFetchDependency;
- (id)idsKTData:(id)a3;
- (id)initializingOperation;
- (id)lastSelfValidate;
- (id)metricsRegistration_idsView;
- (id)metricsRegistration_ktView;
- (id)missingValidateSelfFallbackDiagnostics;
- (id)newCKFetch:(id)a3;
- (id)optInStateForKeyStore:(id)a3 error:(id *)a4;
- (id)prettyFormatIDSKTStateArray:(id)a3;
- (id)recheckAccount;
- (id)requestSuccessfulCKFetchForManyReasons:(id)a3;
- (id)triggerCKFetch24h;
- (id)validateSelfDiagnostics:(id)a3;
- (int)checkAccountKeyChanged;
- (void)_onQueueMaybeCreateNewServerOptInFetch;
- (void)_waitForIDSRegistration:(BOOL)a3 complete:(id)a4;
- (void)accountChanged:(id)a3 to:(id)a4;
- (void)addEvent:(id)a3;
- (void)captureEligibilityHealthCheckup;
- (void)checkIDSHealth:(BOOL)a3 complete:(id)a4;
- (void)checkKTAccountKey:(id)a3 complete:(id)a4;
- (void)clearAccountMetrics;
- (void)clearAllFollowups:(id)a3;
- (void)clearEligibilityOverrides:(id)a3;
- (void)clearIDSCacheForUri:(id)a3 application:(id)a4;
- (void)clearOptInStateForURI:(id)a3 application:(id)a4 complete:(id)a5;
- (void)cloudkitAccountStateChange:(id)a3 to:(id)a4;
- (void)dealloc;
- (void)fillUploadedRdata:(id)a3 withRegistrationData:(id)a4;
- (void)getAggregateResult:(int64_t)a3 element:(id)a4 complete:(id)a5;
- (void)getAllOptInStates:(id)a3;
- (void)getOptInForURI:(id)a3 application:(id)a4 complete:(id)a5;
- (void)getOptInStateForAccount:(id)a3 complete:(id)a4;
- (void)getOptInStateForApplication:(id)a3 complete:(id)a4;
- (void)getStatus:(id)a3;
- (void)haltStateMachine;
- (void)idsServerBagUpdate;
- (void)idsServerReportKTKeyWrong:(id)a3;
- (void)insertOSVersion:(id)a3 complete:(id)a4;
- (void)inspectErrorForRetryAfter:(id)a3 trigger:(id)a4;
- (void)ktRepair:(id)a3 complete:(id)a4;
- (void)mapHeadUpdated:(id)a3 populating:(BOOL)a4;
- (void)maybeCreateServerOptInFetch;
- (void)newServerOptInFetch:(id)a3;
- (void)notifyBackgroundValidationFailure:(id)a3 data:(id)a4 type:(id)a5 serverHint:(id)a6 failure:(id)a7;
- (void)notifyIDSRegistrationCorrect;
- (void)notifyPushChange:(id)a3 userInfo:(id)a4;
- (void)performAndWaitForSelfValidate:(id)a3;
- (void)performRegistrationSignatures:(id)a3;
- (void)refreshDeviceList:(id)a3;
- (void)reportEligibility:(id)a3 withCompletion:(id)a4;
- (void)requestServerOptInFetchForManyReasons:(id)a3 delayInSeconds:(double)a4;
- (void)resetCloudStore;
- (void)resetLastAccountOperations;
- (void)resetLocalCloudDataState;
- (void)resetLocalState:(id)a3;
- (void)retryPendingValidations:(id)a3;
- (void)setCloudKitOutgoingFlag;
- (void)setLastSelfValidate:(id)a3;
- (void)setOverrideTimeBetweenReports:(double)a3 completion:(id)a4;
- (void)startMetrics;
- (void)startStateMachine;
- (void)storeEligiblilityFailure:(id)a3 error:(id)a4;
- (void)storeEligiblilitySuccess:(id)a3;
- (void)storeNeedsUpdate:(id)a3;
- (void)successInfoForElement:(id)a3 samples:(int64_t)a4 complete:(id)a5;
- (void)sysdiagnoseInfo:(id)a3;
- (void)timeout:(unint64_t)a3 block:(id)a4;
- (void)transparencyClearKTRegistrationData:(id)a3;
- (void)transparencyCloudDeviceAdd:(id)a3 clientData:(id)a4 complete:(id)a5;
- (void)transparencyCloudDeviceRemove:(id)a3 clientData:(id)a4 complete:(id)a5;
- (void)transparencyCloudDevices:(id)a3;
- (void)transparencyDumpKTRegistrationData:(id)a3;
- (void)transparencyGetKTSignatures:(id)a3 complete:(id)a4;
- (void)transparencyPerformRegistrationSignature:(id)a3;
- (void)triggerBAACertFetcher;
- (void)triggerBackgroundSystemValidate:(id)a3 completionHandler:(id)a4;
- (void)triggerCheckAccountIdentityChanged;
- (void)triggerCheckCKKSOctagonEligibilityWithCompletion:(id)a3;
- (void)triggerCheckExpiredPublicKeyStores;
- (void)triggerCheckIDSRegistration;
- (void)triggerCheckKTAccountKey;
- (void)triggerCloudKitStaticKeyRemoteUpdateNotification;
- (void)triggerConfigBagFetch:(double)a3;
- (void)triggerEnsureIdentity;
- (void)triggerFetchSelf:(double)a3;
- (void)triggerGetPrimaryAccount;
- (void)triggerIDMSFetch:(double)a3;
- (void)triggerIDMSFetchBackstop:(id)a3;
- (void)triggerIDSRepair:(double)a3 selfValidationResult:(id)a4;
- (void)triggerIDSServerBagNotification;
- (void)triggerKTAccountKeySignature:(double)a3;
- (void)triggerMaybeReportEligibilityWithCompletion:(id)a3;
- (void)triggerOptInStateChange;
- (void)triggerPublicKeyFetch;
- (void)triggerRegistrationDataNeedsUpdate:(id)a3;
- (void)triggerReportAndMaybeOptInWithCompletion:(id)a3;
- (void)triggerSelfValidate:(double)a3;
- (void)triggerSelfValidateFromEnrollment;
- (void)triggerStatusUpdate:(id)a3;
- (void)tryOptInByDefaultWithCompletionHandler:(id)a3;
- (void)uriNeedsUpdate:(id)a3 forApplication:(id)a4;
- (void)validatePendingURIsAndRequests;
- (void)xpc24HrNotification:(id)a3;
@end

@implementation KTSMManager

- (KTSMManager)initWithDependencies:(id)a3
{
  v4 = a3;
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

    [(KTSMManager *)v5 setDeps:v4];
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
    v83 = v4;
    v19 = [v4 dew];
    v20 = [(KTManagerWatchdogControl *)v18 initWithDew:v19];
    v21 = [(KTWatchdog *)v17 initWithControl:v20];
    [(KTSMManager *)v5 setWatchdog:v21];

    v22 = [(KTSMManager *)v5 deps];
    v23 = [v22 idsConfigBag];

    if (!v23)
    {
      v24 = +[TransparencyIDSConfigBag sharedInstance];
      v25 = [(KTSMManager *)v5 deps];
      [v25 setIdsConfigBag:v24];
    }

    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v5 selector:"idsServerBagUpdate" name:IDSServerBagFinishedLoadingNotification object:0];

    v27 = [KTStateMachine alloc];
    v86 = +[KTStates KTStateMap];
    v85 = [v86 allKeys];
    v28 = [NSSet setWithArray:v85];
    v29 = +[KTStates AllKTFlags];
    v30 = [(KTSMManager *)v5 stateMachineQueue];
    v84 = [(KTSMManager *)v5 deps];
    v31 = [v84 lockStateTracker];
    v32 = [(KTSMManager *)v5 deps];
    v33 = [v32 reachabilityTracker];
    v34 = [(KTSMManager *)v5 deps];
    v35 = [v34 idsConfigBag];
    v36 = v27;
    v37 = v30;
    v38 = [(KTStateMachine *)v36 initWithName:@"KTStateMachine" states:v28 flags:v29 initialState:@"PublicKeysInitialFetch" queue:v30 stateEngine:v5 lockStateTracker:v31 reachabilityTracker:v33 idsConfigBag:v35];
    [(KTSMManager *)v5 setStateMachine:v38];

    [(KTSMManager *)v5 setManateeViewToken:0xFFFFFFFFLL];
    v39 = [(KTSMManager *)v5 stateMachine];
    v40 = [(KTSMManager *)v5 deps];
    [v40 setFlagHandler:v39];

    v41 = [(KTSMManager *)v5 deps];
    v42 = [v41 cloudKitAccountTracker];
    v43 = [v42 registerForNotificationsOfCloudKitAccountStatusChange:v5];

    objc_initWeak(&location, v5);
    v115[0] = _NSConcreteStackBlock;
    v115[1] = 3221225472;
    v115[2] = sub_100049398;
    v115[3] = &unk_10031A490;
    objc_copyWeak(&v116, &location);
    v44 = [(KTSMManager *)v5 deps];
    v45 = [v44 octagonOperations];
    [v45 setOctagonObserver:v115];

    v113[0] = _NSConcreteStackBlock;
    v113[1] = 3221225472;
    v113[2] = sub_1000494D0;
    v113[3] = &unk_10031A4D8;
    objc_copyWeak(&v114, &location);
    v46 = [(KTSMManager *)v5 deps];
    v47 = [v46 octagonOperations];
    [v47 setCkksViewObserver:v113];

    v111[0] = _NSConcreteStackBlock;
    v111[1] = 3221225472;
    v111[2] = sub_10004966C;
    v111[3] = &unk_10031A520;
    objc_copyWeak(&v112, &location);
    v48 = [(KTSMManager *)v5 deps];
    v49 = [v48 idsAccountTracker];
    [v49 setIdsObserver:v111];

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

    v58 = [(KTSMManager *)v5 deps];
    v59 = [v58 logger];
    v60 = objc_opt_self();
    v61 = [v60 ckFetchScheduler];
    [v59 addNFSReporting:v61];

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

    v69 = [v67 deps];
    v70 = [v69 logger];
    v71 = [v67 manateeViewChangedScheduler];
    [v70 addNFSReporting:v71];

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

    v78 = [v67 queue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100049B34;
    handler[3] = &unk_10031A548;
    objc_copyWeak(&v90, &location);
    notify_register_dispatch("com.apple.security.view-change.Manatee", v67 + 4, v78, handler);

    v79 = [v67 watchdog];
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_100049B8C;
    v87[3] = &unk_10031A590;
    objc_copyWeak(&v88, &location);
    [v79 addWithNamed:@"stateMachineQueue" watcher:v87];

    v80 = [v67 watchdog];
    [v80 resume];

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
    v4 = v83;
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
  v4 = [(KTSMManager *)self stateMachine];
  v5 = [v4 currentState];
  v6 = [v3 objectForKeyedSubscript:v5];

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

  v4 = [(KTSMManager *)self stateMachine];
  [v4 startOperation];

  [(KTSMManager *)self setStateMachineRunning:1];
}

- (void)haltStateMachine
{
  [(KTSMManager *)self setStateMachineRunning:0];
  v3 = [(KTSMManager *)self publicKeyFetcher];
  [v3 cancel];

  v4 = [(KTSMManager *)self retryEnsureIdentity];
  [v4 cancel];

  v5 = [(KTSMManager *)self retryGetPrimaryAccount];
  [v5 cancel];

  v6 = [(KTSMManager *)self checkKTAccountKeyScheduler];
  [v6 cancel];

  v7 = [(KTSMManager *)self checkKTSignatureScheduler];
  [v7 cancel];

  v8 = [(KTSMManager *)self serverOptInScheduler];
  [v8 cancel];

  v9 = [(KTSMManager *)self ckFetchScheduler];
  [v9 cancel];

  v10 = [(KTSMManager *)self manateeViewChangedScheduler];
  [v10 cancel];

  v11 = [(KTSMManager *)self retryPendingValidations];
  [v11 cancel];

  v12 = [(KTSMManager *)self pokeIDS];
  [v12 cancel];

  v13 = [(KTSMManager *)self statusReporting];

  if (v13)
  {
    v14 = dispatch_semaphore_create(0);
    v15 = [(KTSMManager *)self statusReporting];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10004A010;
    v21[3] = &unk_10031A5F8;
    v16 = v14;
    v22 = v16;
    [v15 closeDatabaseWithCompletionHandler:v21];

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

  v19 = [(KTSMManager *)self stateMachine];
  [v19 haltOperation];
}

- (void)captureEligibilityHealthCheckup
{
  v3 = [(KTSMManager *)self statusReporting];

  if (v3)
  {
    v4 = [(KTSMManager *)self statusReporting];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10004A21C;
    v5[3] = &unk_10031A640;
    v5[4] = self;
    [v4 eligibilityCheckupMetricsWithSamples:60 interval:v5 completionHandler:86400.0];
  }
}

- (void)startMetrics
{
  objc_initWeak(&location, self);
  v3 = [(KTSMManager *)self deps];
  v4 = [v3 logger];
  v5 = SFAnalyticsSamplerIntervalOncePerReport;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004A70C;
  v10[3] = &unk_1003188E8;
  objc_copyWeak(&v11, &location);
  [v4 addMultiSamplerForName:@"transparencydEligibilityMultiSampler" withTimeInterval:v10 block:v5];

  v6 = [(KTSMManager *)self deps];
  v7 = [v6 logger];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004ACB0;
  v8[3] = &unk_1003188E8;
  objc_copyWeak(&v9, &location);
  [v7 addMultiSamplerForName:@"transparencydMultiSampler" withTimeInterval:v8 block:v5];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)cloudkitAccountStateChange:(id)a3 to:(id)a4
{
  v5 = a4;
  v6 = [(KTSMManager *)self stateMachineQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004B4C0;
  v8[3] = &unk_1003180E0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)accountChanged:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_10038BD00 != -1)
  {
    sub_100249A98();
  }

  v8 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "account %@ state changed to: %@", &v11, 0x16u);
  }

  v9 = [[KTPendingFlag alloc] initWithFlag:@"AccountChanged" conditions:0 delayInSeconds:0.1];
  v10 = [(KTSMManager *)self stateMachine];
  [v10 handlePendingFlag:v9];
}

- (void)triggerPublicKeyFetch
{
  v4 = [[KTPendingFlag alloc] initWithFlag:@"FetchPublicKeys" conditions:2 delayInSeconds:0.1];
  v3 = [(KTSMManager *)self stateMachine];
  [v3 handlePendingFlag:v4];
}

- (void)triggerEnsureIdentity
{
  v4 = [[KTPendingFlag alloc] initWithFlag:@"EnsureIdentity" conditions:3 delayInSeconds:0.1];
  v3 = [(KTSMManager *)self stateMachine];
  [v3 handlePendingFlag:v4];
}

- (void)triggerGetPrimaryAccount
{
  v4 = [[KTPendingFlag alloc] initWithFlag:@"AccountChanged" delayInSeconds:0.1];
  v3 = [(KTSMManager *)self stateMachine];
  [v3 handlePendingFlag:v4];
}

- (void)storeNeedsUpdate:(id)a3
{
  v4 = a3;
  if (qword_10038BD00 != -1)
  {
    sub_100249AAC();
  }

  v5 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "public key store request update: %@", &v6, 0xCu);
  }

  [(KTSMManager *)self triggerPublicKeyFetch];
}

- (void)triggerCheckIDSRegistration
{
  v4 = [[KTPendingFlag alloc] initWithFlag:@"CheckIDSRegistration" conditions:2 delayInSeconds:0.0];
  v3 = [(KTSMManager *)self stateMachine];
  [v3 handlePendingFlag:v4];
}

- (void)triggerCheckAccountIdentityChanged
{
  v4 = [[KTPendingFlag alloc] initWithFlag:@"CheckKTAccountKeyChanged" conditions:2 delayInSeconds:0.0];
  v3 = [(KTSMManager *)self stateMachine];
  [v3 handlePendingFlag:v4];
}

- (void)triggerOptInStateChange
{
  v4 = [[KTPendingFlag alloc] initWithFlag:@"ChangeOptInState" conditions:2 delayInSeconds:0.0];
  v3 = [(KTSMManager *)self stateMachine];
  [v3 handlePendingFlag:v4];
}

- (void)triggerConfigBagFetch:(double)a3
{
  v5 = [[KTPendingFlag alloc] initWithFlag:@"ConfigBagFetch" conditions:2 delayInSeconds:a3];
  v4 = [(KTSMManager *)self stateMachine];
  [v4 handlePendingFlag:v5];
}

- (void)triggerKTAccountKeySignature:(double)a3
{
  v5 = [(KTSMManager *)self stateMachineQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004BD1C;
  v6[3] = &unk_10031A740;
  *&v6[5] = a3;
  v6[4] = self;
  dispatch_async(v5, v6);
}

- (void)performRegistrationSignatures:(id)a3
{
  v4 = a3;
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

    v13 = [(KTSMManager *)self stateMachine];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004BFD4;
    v15[3] = &unk_10031A768;
    v16 = v4;
    v14 = [v13 doWatchedStateMachineRPC:@"sign-registration-data" sourceStates:v12 path:v10 reply:v15];
  }

  else
  {
    (*(v4 + 2))(v4, v6);
  }
}

- (BOOL)waitUntilReadyForRPCForOperation:(id)a3 fast:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(KTSMManager *)self initializedComplete];
  v10 = [v9 wait:5000000000];

  if (v10)
  {
    v11 = kTransparencyErrorInternal;
    v40[0] = @"state";
    v12 = [(KTSMManager *)self stateMachine];
    v13 = [v12 currentState];
    v14 = v13;
    v15 = @"-";
    if (v13)
    {
      v15 = v13;
    }

    v40[1] = @"opName";
    v41[0] = v15;
    v41[1] = v8;
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

  v20 = [(KTSMManager *)self deps];
  v21 = [v20 lockStateTracker];
  v22 = [v21 hasBeenUnlocked];

  if ((v22 & 1) == 0)
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

  v23 = [(KTSMManager *)self readyComplete];
  v24 = v23;
  if (v6)
  {
    v25 = 500000000;
  }

  else
  {
    v25 = 2000000000;
  }

  v26 = [v23 wait:v25];

  if (!v26)
  {
    v17 = 0;
    v34 = 1;
    goto LABEL_27;
  }

  v27 = kTransparencyErrorInternal;
  v28 = [(KTSMManager *)self stateMachine];
  v29 = [v28 currentState];
  v30 = v29;
  v31 = @"-";
  if (v29)
  {
    v31 = v29;
  }

  v36[1] = @"opName";
  v37[0] = v31;
  v37[1] = v8;
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
  if (a5)
  {
    v33 = v17;
    v34 = 0;
    *a5 = v17;
  }

  else
  {
    v34 = 0;
  }

LABEL_27:

  return v34;
}

- (void)triggerIDSRepair:(double)a3 selfValidationResult:(id)a4
{
  v6 = a4;
  v7 = [(KTSMManager *)self stateMachineQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004C5A8;
  block[3] = &unk_10031A7F0;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)ktRepair:(id)a3 complete:(id)a4
{
  v6 = a3;
  v7 = a4;
  [_TtC13transparencyd11KTRepairCKV rateLimitAppliesWithRepair:v6];
  v8 = [(KTSMManager *)self stateMachineQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004C7B0;
  block[3] = &unk_10031A818;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (BOOL)maybeUpdateMonitorState:(double)a3
{
  v5 = [(KTSMManager *)self deps];
  v6 = [v5 stateMonitor];
  v7 = [v6 ktStatus];
  v8 = [v7 selfStatus];

  if (qword_10038BD00 != -1)
  {
    sub_100249B24();
  }

  v9 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109376;
    v11[1] = v8;
    v12 = 1024;
    v13 = v8 != 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Maybe update monitor selfStatus: %d: %d", v11, 0xEu);
  }

  if (v8)
  {
    [(KTSMManager *)self triggerSelfValidate:a3];
  }

  return v8 != 0;
}

- (id)createSuccesfulCKFetchDependency
{
  v2 = objc_alloc_init(KTZoneFetchDependencyOperation);
  [(KTZoneFetchDependencyOperation *)v2 setName:@"successful-fetch-dependency"];

  return v2;
}

- (id)requestSuccessfulCKFetchForManyReasons:(id)a3
{
  v4 = a3;
  if (qword_10038BD00 != -1)
  {
    sub_100249B38();
  }

  v5 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 allObjects];
    v8 = [v7 componentsJoinedByString:{@", "}];
    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "triggering a new CK fetch because of reason: %@", &v15, 0xCu);
  }

  v9 = [(KTSMManager *)self deps];
  v10 = [v9 cloudRecords];

  if (v10 && [(KTSMManager *)self isCloudKitManateeAcountAvailable]&& ([(KTSMManager *)self specificUser], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [(KTSMManager *)self zoneFetcher];
    v13 = [v12 requestSuccessfulCKFetchForManyReasons:v4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)newCKFetch:(id)a3
{
  v4 = [NSSet setWithObject:a3];
  v5 = [(KTSMManager *)self requestSuccessfulCKFetchForManyReasons:v4];

  return v5;
}

- (void)notifyPushChange:(id)a3 userInfo:(id)a4
{
  v5 = [NSDate date:a3];
  [(KTSMManager *)self setLastPush:v5];

  v6 = [(KTSMManager *)self deps];
  v7 = [v6 networkTimeout];
  [v7 networkWithFeedback:2];

  v8 = [(KTSMManager *)self specificUser];

  if (v8)
  {
    v9 = [NSSet setWithObject:@"apns"];
    [(KTSMManager *)self requestServerOptInFetchForManyReasons:v9 delayInSeconds:10.0];

    if ([(KTSMManager *)self isCloudKitManateeAcountAvailable])
    {
      v10 = [(KTSMManager *)self newCKFetch:off_100381D90];
    }
  }
}

- (BOOL)triggerCKFetchCLI:(id *)a3
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

  if (a3)
  {
    v11 = v7;
    v8 = 0;
    *a3 = v7;
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
    v6 = [(KTSMManager *)self operationQueue];
    [v6 addOperation:v5];
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
  v3 = [(KTSMManager *)self stateMachine];
  [v3 handlePendingFlag:v4];
}

- (void)triggerIDMSFetchBackstop:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v5 = [(KTSMManager *)self deps];
  v6 = [v5 logClient];
  [v6 idmsFetchTime];
  v8 = v7;

  if (v8 < 604800.0)
  {
    v8 = 604800.0;
  }

  v9 = [(KTSMManager *)self deps];
  v10 = [v9 smDataStore];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004D3FC;
  v14[3] = &unk_10031A8A0;
  v17 = v8;
  v11 = v4;
  v15 = v11;
  v16 = &v18;
  [v10 fetchIDMSDeviceList:v14];

  if (*(v19 + 24))
  {
    v12 = [[KTPendingFlag alloc] initWithFlag:@"FetchIDMS" conditions:2 delayInSeconds:0.1];
    v13 = [(KTSMManager *)self stateMachine];
    [v13 handlePendingFlag:v12];
  }

  _Block_object_dispose(&v18, 8);
}

- (void)triggerIDMSFetch:(double)a3
{
  v5 = [[KTPendingFlag alloc] initWithFlag:@"FetchIDMS" conditions:2 delayInSeconds:a3];
  v4 = [(KTSMManager *)self stateMachine];
  [v4 handlePendingFlag:v5];
}

- (void)triggerSelfValidate:(double)a3
{
  v4 = [[KTPendingFlag alloc] initWithFlag:@"ValidateSelf" conditions:2 delayInSeconds:a3];
  v5 = [(KTSMManager *)self stateMachine];
  [v5 handlePendingFlag:v4];

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
  v3 = [(KTSMManager *)self deps];
  v4 = [v3 dew];
  [v4 selfValidationEnrollment];
  v6 = v5;

  v7 = [(KTSMManager *)self deps];
  v8 = [v7 stateMonitor];
  v9 = [v8 ktStatus];

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
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "triggerSelfValidateFromEnrollment: delay: %f current state: %@", &v14, 0x16u);
  }

  if ([v9 selfStatus] == 2)
  {
    v12 = [[KTPendingFlag alloc] initWithFlag:@"ValidateSelf" conditions:2 delayInSeconds:v6];
    v13 = [(KTSMManager *)self stateMachine];
    [v13 handlePendingFlag:v12];
  }
}

- (void)triggerFetchSelf:(double)a3
{
  v5 = [[KTPendingFlag alloc] initWithFlag:@"FetchSelf" conditions:2 delayInSeconds:a3];
  v4 = [(KTSMManager *)self stateMachine];
  [v4 handlePendingFlag:v5];
}

- (void)triggerCheckExpiredPublicKeyStores
{
  v3 = [(KTSMManager *)self deps];
  v4 = [v3 publicKeyStore];
  v5 = [v4 anyStoreExpired];

  if (v5)
  {
    v6 = [(KTSMManager *)self publicKeyFetcher];
    [v6 trigger];
  }
}

- (void)triggerBackgroundSystemValidate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10004DA78;
  v20 = sub_10004DA88;
  v8 = v6;
  v21 = v8;
  if (!v17[5])
  {
    v9 = os_transaction_create();
    v10 = v17[5];
    v17[5] = v9;
  }

  v11 = [(KTSMManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004DA90;
  block[3] = &unk_10031A978;
  block[4] = self;
  v14 = v7;
  v15 = &v16;
  v12 = v7;
  dispatch_async(v11, block);

  _Block_object_dispose(&v16, 8);
}

- (void)notifyBackgroundValidationFailure:(id)a3 data:(id)a4 type:(id)a5 serverHint:(id)a6 failure:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(KTSMManager *)self deps];
  v18 = [v17 smDataStore];
  v19 = [v15 base64EncodedStringWithOptions:0];

  [KTBackgroundSystemValidationOperation addErrorToBackgroundOp:v16 smDataStore:v18 failureDataString:v19 type:v14 serverHint:v13 failure:v12];
  v20 = kKTApplicationIdentifierIDS;

  [(KTSMManager *)self triggerStatusUpdate:v20];
}

- (void)triggerStatusUpdate:(id)a3
{
  v4 = [(KTSMManager *)self deps];
  v5 = [v4 stateMonitor];
  [v5 setPendingChanges:1];

  v6 = [(KTSMManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004E138;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_async(v6, block);
}

- (id)optInStateForKeyStore:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(KTSMManager *)self deps];
  v8 = [v7 cloudRecords];

  if (v8)
  {
    v9 = [v8 getAggregateOptInStateForApplication:v6];
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
        v14 = v6;
        v15 = 2112;
        v16 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "getAggregateOptInStateForApplication failed for %@: %@", &v13, 0x16u);
      }

      if (a4)
      {
        *a4 = 0;
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
  v3 = [(KTSMManager *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004E4E8;
  v4[3] = &unk_10031A9E0;
  v4[4] = self;
  v4[5] = v5;
  dispatch_async(v3, v4);

  _Block_object_dispose(v5, 8);
}

- (void)retryPendingValidations:(id)a3
{
  if ([a3 isEqual:kKTApplicationIdentifierIDS])
  {
    v4 = objc_alloc_init(KTCondition);
    [(KTSMManager *)self setPendingValidationsComplete:v4];

    v5 = [(KTSMManager *)self retryPendingValidations];
    [v5 trigger];
  }
}

- (void)triggerRegistrationDataNeedsUpdate:(id)a3
{
  v4 = a3;
  [(KTSMManager *)self addEvent:@"PokeIDSWithUpdatedRegData"];
  v5 = [(KTSMManager *)self deps];
  v6 = [v5 stateMonitor];
  [v6 setSystemStatus:2];

  v7 = [(KTSMManager *)self deps];
  v8 = [v7 idsOperations];
  [v8 registrationDataNeedsUpdate:v4];

  v11 = [(KTSMManager *)self deps];
  v9 = [v11 logger];
  v10 = +[NSDate date];
  [v9 setDateProperty:v10 forKey:off_100381CF8];
}

- (void)notifyIDSRegistrationCorrect
{
  objc_initWeak(&location, self);
  v3 = [(KTSMManager *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004EAD8;
  v4[3] = &unk_1003175E0;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)isKTKeyDifferent:(id)a3
{
  v4 = a3;
  if (![(KTSMManager *)self idsServerReportedWrong])
  {
    goto LABEL_4;
  }

  v5 = [(KTSMManager *)self idsServerReportedWrongPublicKey];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  v7 = [(KTSMManager *)self idsServerReportedWrongPublicKey];
  v8 = [v7 isEqual:v4];

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

- (void)idsServerReportKTKeyWrong:(id)a3
{
  v4 = a3;
  [(KTSMManager *)self setIdsServerReportedWrong:1];
  [(KTSMManager *)self setIdsServerReportedWrongPublicKey:v4];
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

- (void)clearAllFollowups:(id)a3
{
  v4 = a3;
  v5 = [(KTSMManager *)self deps];
  v6 = [v5 followup];
  v10 = 0;
  v7 = [v6 clearAllFollowups:&v10];
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
      v12 = v4;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "clearAllFollowups failed: %{public}@ %{public}@", buf, 0x16u);
    }
  }
}

- (void)performAndWaitForSelfValidate:(id)a3
{
  v4 = a3;
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

    v13 = [(KTSMManager *)self stateMachine];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004F110;
    v15[3] = &unk_10031AA28;
    v15[4] = self;
    v16 = v4;
    v14 = [v13 doWatchedStateMachineRPC:@"validate-self" sourceStates:v12 path:v10 reply:v15];
  }

  else
  {
    (*(v4 + 2))(v4, 2, 0, 0, v6);
  }
}

- (id)validateSelfDiagnostics:(id)a3
{
  v3 = a3;
  +[NSMutableDictionary dictionary];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004F2D4;
  v4 = v6[3] = &unk_10031AA50;
  v7 = v4;
  [v3 handleOperationResults:v6];

  return v4;
}

- (id)missingValidateSelfFallbackDiagnostics
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(KTSMManager *)self deps];
  v5 = [v4 smDataStore];
  v6 = kKTApplicationIdentifierIDS;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004F4A8;
  v9[3] = &unk_10031AAC0;
  v7 = v3;
  v10 = v7;
  [v5 fetchSelfVerificationInfoForApplication:v6 complete:v9];

  return v7;
}

- (id)idsKTData:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[NSMutableDictionary dictionary];
    v5 = [v3 ktDataForRegistration];
    v6 = [v5 kt_hexString];
    [v4 setObject:v6 forKeyedSubscript:@"tbs"];

    v7 = [v3 ktPublicAccountKey];
    v8 = [v7 kt_hexString];
    [v4 setObject:v8 forKeyedSubscript:@"pub"];

    v9 = [v3 ktDataSignature];
    v10 = [v9 kt_hexString];
    [v4 setObject:v10 forKeyedSubscript:@"sig"];

    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 uploadedToKVS]);
    [v4 setObject:v11 forKeyedSubscript:@"kvs"];

    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 ktOptInStatus]);
    [v4 setObject:v12 forKeyedSubscript:@"optin"];

    v13 = [v3 registeredTime];
    v14 = [v13 description];
    [v4 setObject:v14 forKeyedSubscript:@"regTS"];

    v15 = [v3 ktAccountKeyTimestamp];
    v16 = [v15 description];
    [v4 setObject:v16 forKeyedSubscript:@"accTS"];

    v17 = [v3 ktOptInTimestamp];
    v18 = [v17 description];
    [v4 setObject:v18 forKeyedSubscript:@"optTS"];

    v19 = [v3 ktAccountKeyErrorCode];
    [v4 setObject:v19 forKeyedSubscript:@"accErr"];

    v20 = [v3 ktOptInErrorCode];

    [v4 setObject:v20 forKeyedSubscript:@"optErr"];
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

- (id)prettyFormatIDSKTStateArray:(id)a3
{
  v3 = a3;
  v26 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v3;
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
        v30 = [v5 ktAccountKey];
        v6 = [v30 kt_hexString];
        v29 = v6;
        if (v6)
        {
          v7 = v6;
        }

        else
        {
          v7 = &stru_10032E8E8;
        }

        v38[2] = v7;
        v37[3] = @"accountKeyTimestamp";
        v28 = [v5 ktAccountKeyTimestamp];
        v8 = [v28 description];
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
        v11 = [v5 deviceSignature];
        v12 = [v11 kt_hexString];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
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
        v16 = [v5 ktOptInTimestamp];
        v17 = [v16 description];
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
          v22 = [v5 userID];
          [v21 setObject:v22 forKeyedSubscript:@"URI"];
        }

        [v26 addObject:v21];
      }

      v27 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v27);
  }

  return v26;
}

- (void)sysdiagnoseInfo:(id)a3
{
  v4 = a3;
  v5 = [(KTSMManager *)self stateMachine];
  v6 = [v5 dumpPendingFlags];

  v7 = [(KTSMManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005005C;
  block[3] = &unk_10031A818;
  block[4] = self;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  dispatch_async(v7, block);
}

- (void)getStatus:(id)a3
{
  v4 = a3;
  v5 = [(KTSMManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100051ACC;
  v7[3] = &unk_10031ABA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)mapHeadUpdated:(id)a3 populating:(BOOL)a4
{
  v6 = a3;
  v7 = [(KTSMManager *)self deps];
  v8 = [v7 stateMonitor];
  v9 = [v8 ktStatus];
  v10 = [v9 systemStatus];

  if (v10 == 3 && !a4)
  {
    if (qword_10038BD00 != -1)
    {
      sub_100249C28();
    }

    v11 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Detected tree reset populating->non-populating edge for %{public}@", buf, 0xCu);
    }

    v12 = [(KTSMManager *)self deps];
    v13 = [v12 followup];
    v16 = 0;
    [v13 clearFollowupsByType:v6 type:3 error:&v16];
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
        v18 = v6;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error clearing tree reset followups for %@: %@", buf, 0x16u);
      }
    }

    [(KTSMManager *)self triggerStatusUpdate:v6];
  }
}

- (id)metricsRegistration_ktView
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(KTSMManager *)self deps];
  v5 = [v4 smDataStore];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005216C;
  v8[3] = &unk_10031A640;
  v6 = v3;
  v9 = v6;
  [v5 fetchDeviceSignature:0 complete:v8];

  return v6;
}

- (id)metricsRegistration_idsView
{
  v29 = +[NSMutableDictionary dictionary];
  v3 = +[NSMutableDictionary dictionary];
  v4 = dispatch_semaphore_create(0);
  v5 = [(KTSMManager *)self deps];
  v6 = [v5 idsOperations];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100052678;
  v38[3] = &unk_10031AC08;
  v7 = v3;
  v39 = v7;
  v8 = v4;
  v40 = v8;
  [v6 getCurrentRegistrationState:0 withCompletion:v38];

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
                    v23 = [v22 deviceSignature];
                    if (v23)
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

- (void)resetLocalState:(id)a3
{
  v4 = [(KTSMManager *)self deps];
  v5 = [v4 accountKeyService];
  [v5 clearCachedPCSIdentities];

  v6 = [(KTSMManager *)self deps];
  v7 = [v6 accountStateHolder];
  [v7 clearAccountMetadata];

  v8 = [(KTSMManager *)self deps];
  v9 = [v8 smDataStore];
  v23 = 0;
  v10 = [v9 clearDataStore:&v23];
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

  v13 = [(KTSMManager *)self deps];
  v14 = [v13 dataStore];
  v22 = 0;
  v15 = [v14 clearState:&v22];
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

  v18 = [(KTSMManager *)self deps];
  v19 = [v18 cloudRecords];
  [v19 clearLocalCloudState];

  v20 = [(KTSMManager *)self deps];
  v21 = [v20 cloudRecords];
  [v21 clearDataStore:0];
}

- (int)checkAccountKeyChanged
{
  v3 = [(KTSMManager *)self pcsOperation];
  v4 = [v3 getCurrentKTPCSIdentity:off_10038B2A0 error:0];

  if (v4)
  {
    [v4 identity];
    v5 = PCSIdentityGetPublicKey();
    if (v5)
    {
      v6 = v5;
      v7 = [(KTSMManager *)self deps];
      v8 = [v7 stateMonitor];
      v9 = [v8 ktStatus];
      v10 = [v9 accountKey];

      if (v10 && ([v10 isEqual:v6] & 1) != 0)
      {
        v11 = 1;
      }

      else
      {
        v12 = [(KTSMManager *)self deps];
        v13 = [v12 stateMonitor];
        [v13 setKTAccountKey:v6];

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

- (void)addEvent:(id)a3
{
  v4 = a3;
  v5 = [(KTSMManager *)self launch];
  [v5 addEvent:v4];
}

- (BOOL)isCloudKitManateeAcountAvailable
{
  v3 = [(KTSMManager *)self cloudKitAccountInfo];
  v4 = [v3 hasValidCredentials];

  if (v4)
  {
    v5 = [(KTSMManager *)self cloudKitAccountInfo];
    v6 = ([v5 deviceToDeviceEncryptionAvailability] >> 1) & 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_onqueueNextStateMachineTransition:(id)a3 flags:(id)a4 pendingFlags:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(KTSMManager *)self addEvent:v8];
  if ([v8 isEqual:@"PublicKeysInitialFetch"])
  {
    v11 = [KTPublicKeyStoreRefresh alloc];
    v12 = [(KTSMManager *)self deps];
    v13 = @"Initializing";
    v14 = @"PublicKeysWait";
    v15 = v11;
    v16 = v12;
    v17 = 1;
LABEL_3:
    v18 = [(KTPublicKeyStoreRefresh *)v15 initWithDependencies:v16 initialFetch:v17 intendedState:v13 errorState:v14];

    [(KTSMManager *)self setLastPublicKeyRefresh:v18];
    goto LABEL_22;
  }

  if ([v8 isEqual:@"PublicKeysWait"])
  {
    if ([v9 _onqueueContains:@"FetchPublicKeys"])
    {
      [v9 _onqueueRemoveFlag:@"FetchPublicKeys"];
      v19 = [KTStateTransitionOperation named:@"need-to-fetch-public-keys" entering:@"PublicKeysInitialFetch"];
LABEL_9:
      v18 = v19;
      goto LABEL_22;
    }

    v20 = [(KTSMManager *)self publicKeyFetcher];
    [(KTPendingFlag *)v20 trigger];
    goto LABEL_20;
  }

  if ([v8 isEqual:@"Initializing"])
  {
    [v9 _onqueueRemoveFlag:@"CKAccountChanged"];
    [v9 _onqueueRemoveFlag:@"AccountChanged"];
    [v9 _onqueueRemoveFlag:@"OctagonTrustChanged"];
    [v9 _onqueueRemoveFlag:@"ManateeViewChanged"];
    [v9 _onqueueRemoveFlag:@"EnsureIdentity"];
    [v9 _onqueueRemoveFlag:@"FetchSelf"];
    [v9 _onqueueRemoveFlag:@"CloudKitOutgoing"];
    [v9 _onqueueRemoveFlag:@"CheckAccountSignatures"];
    [v9 _onqueueRemoveFlag:@"CloudKitZoneRecreate"];
    [v9 _onqueueRemoveFlag:@"CheckKTAccountKey"];
    [v9 _onqueueRemoveFlag:@"CheckKTAccountKeyChanged"];
    [v9 _onqueueRemoveFlag:@"IDSStatusChanged"];
    [v9 _onqueueRemoveFlag:@"IDSServerBagChanged"];
    v19 = [(KTSMManager *)self initializingOperation];
    goto LABEL_9;
  }

  if ([v8 isEqual:@"WaitForUnlock"])
  {
    if (![v9 _onqueueContains:@"Unlocked"])
    {
      v20 = [[KTPendingFlag alloc] initWithFlag:@"Unlocked" conditions:1];
      [v10 _onqueueHandlePendingFlagLater:v20];
LABEL_20:

LABEL_21:
      v18 = 0;
      goto LABEL_22;
    }

    [v9 _onqueueRemoveFlag:@"Unlocked"];
    v21 = [NSString stringWithFormat:@"%@", @"initializing-after-unlock"];
    v22 = [KTStateTransitionOperation named:v21 entering:@"Initializing"];
    goto LABEL_14;
  }

  if ([v8 isEqual:@"NoAccount"])
  {
    if ([v9 _onqueueContains:@"AccountChanged"])
    {
      v19 = [KTStateTransitionOperation named:@"account-probably-changed" entering:@"Initializing"];
      goto LABEL_9;
    }

    if ([v9 _onqueueContains:@"CKAccountChanged"])
    {
      v19 = [KTStateTransitionOperation named:@"account-probably-changed-ck" entering:@"Initializing"];
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if ([v8 isEqual:@"KTStateCheckCloudKitAccount"])
  {
    [v9 _onqueueRemoveFlag:@"CKAccountChanged"];
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
        v27 = [(KTSMManager *)self cloudKitAccountInfo];
        *buf = 138412290;
        v153 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "CloudKit not available for device2device encryption, holding start up: %@", buf, 0xCu);
      }

      goto LABEL_21;
    }

    v21 = [NSString stringWithFormat:@"%@", @"initializing-ck-show-up"];
    v22 = [KTStateTransitionOperation named:v21 entering:@"GetStatusInitial"];
    goto LABEL_14;
  }

  v24 = @"WaitForManatee";
  if ([v8 isEqual:@"WaitForManatee"])
  {
    if ([v9 _onqueueContains:@"OctagonTrustChanged"])
    {
      v19 = [KTStateTransitionOperation named:@"octagon-trust-probably-changed" entering:@"Initializing"];
      goto LABEL_9;
    }

    if ([v9 _onqueueContains:@"ManateeViewChanged"])
    {
      v19 = [KTStateTransitionOperation named:@"retry-manatee-check" entering:@"Initializing"];
      goto LABEL_9;
    }

    if (![v9 _onqueueContains:@"CheckAccountSignatures"])
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

  v24 = @"WaitForCKKS";
  if (![v8 isEqual:@"WaitForCKKS"])
  {
    if ([v8 isEqual:@"CheckKTAccountKeyChanged"])
    {
      [v9 _onqueueRemoveFlag:@"CheckKTAccountKeyChanged"];
      v149[0] = _NSConcreteStackBlock;
      v149[1] = 3221225472;
      v149[2] = sub_100055478;
      v149[3] = &unk_10031AD18;
      v149[4] = self;
      v150 = v9;
      v18 = [KTStateTransitionOperation named:@"check-kt-account-key-changed" intending:@"Ready" errorState:@"Ready" withBlockTakingSelf:v149];

      goto LABEL_22;
    }

    if ([v8 isEqual:@"ForceSyncKTAccountKey"])
    {
      [v9 _onqueueRemoveFlag:@"CheckKTAccountKey"];
      objc_initWeak(buf, self);
      v30 = [(KTSMManager *)self deps];
      v31 = [v30 octagonOperations];
      v147[0] = _NSConcreteStackBlock;
      v147[1] = 3221225472;
      v147[2] = sub_1000557B8;
      v147[3] = &unk_10031AD60;
      objc_copyWeak(&v148, buf);
      [v31 ckksRequestViewSync:@"Manatee" complete:v147];

      v18 = [KTStateTransitionOperation named:@"force-sync-kt-account-key-done" entering:@"Ready"];
      objc_destroyWeak(&v148);
      objc_destroyWeak(buf);
      goto LABEL_22;
    }

    if ([v8 isEqual:@"KTStateFixups"])
    {
      v32 = [KTFixupOperation alloc];
      v33 = [(KTSMManager *)self deps];
      v34 = [(KTFixupOperation *)v32 initWithDependenics:v33 intendedState:@"EnsureAccountIdentity" errorState:@"EnsureAccountIdentity"];
LABEL_52:
      v18 = v34;

      goto LABEL_22;
    }

    if ([v8 isEqual:@"RetryEnsureAccountIdentity"])
    {
      if (([v9 _onqueueContains:@"CKAccountChanged"] & 1) != 0 || objc_msgSend(v9, "_onqueueContains:", @"OctagonTrustChanged"))
      {
        v19 = [KTStateTransitionOperation named:@"recheck-accountstate" entering:@"Initializing"];
        goto LABEL_9;
      }

      if (([v9 _onqueueContains:@"EnsureIdentity"] & 1) == 0 && !objc_msgSend(v9, "_onqueueContains:", @"ManateeViewChanged"))
      {
        goto LABEL_21;
      }

      goto LABEL_155;
    }

    if ([v8 isEqual:@"EnsureAccountIdentity"])
    {
      [v9 _onqueueRemoveFlag:@"EnsureIdentity"];
      v41 = [KTEnsureAccountIdentityOperation alloc];
      v42 = [(KTSMManager *)self deps];
      v43 = [(KTSMManager *)self pcsOperation];
      v44 = [(KTEnsureAccountIdentityOperation *)v41 initWithDependencies:v42 pcsOperation:v43];

      v145[0] = _NSConcreteStackBlock;
      v145[1] = 3221225472;
      v145[2] = sub_100055994;
      v145[3] = &unk_10031AD18;
      v145[4] = self;
      v146 = v44;
      v45 = v44;
      v18 = [KTStateTransitionOperation named:@"ensure-identity" intending:@"KTStateCheckCloudKitAccount" errorState:@"Error" withBlockTakingSelf:v145];
      [(KTSignalIDSOperation *)v18 addNullableDependency:v45];
      v46 = [(KTSMManager *)self operationQueue];
      [v46 addOperation:v45];

      goto LABEL_22;
    }

    if ([v8 isEqual:@"SignalIDS"])
    {
      [v9 _onqueueRemoveFlag:@"RepairIDSFlag"];
      v47 = [KTSignalIDSOperation alloc];
      v48 = [(KTSMManager *)self deps];
      v49 = [(KTSMManager *)self selfValidationResult];
      v50 = [(KTSMManager *)self stateMachine];
      v18 = [(KTSignalIDSOperation *)v47 initWithDependencies:v48 intendedState:@"InitialIDMSCheck" errorState:@"Ready" selfValidationResult:v49 stateMachine:v50];

      [(KTSMManager *)self setLastSignalIDS:v18];
      goto LABEL_22;
    }

    if ([v8 isEqual:@"FetchConfigBag"])
    {
      [v9 _onqueueRemoveFlag:@"ConfigBagFetch"];
      v51 = [KTConfigBagFetchOperation alloc];
      v21 = [(KTSMManager *)self deps];
      v22 = [(KTConfigBagFetchOperation *)v51 initWithDependencies:v21 intendedState:@"Ready" errorState:@"Ready" triggerInterface:self];
LABEL_14:
      v18 = v22;
LABEL_15:

      goto LABEL_22;
    }

    if ([v8 isEqual:?])
    {
      [v9 _onqueueRemoveFlag:@"FetchSelf"];
      v52 = [KTFetchIDSSelfOperation alloc];
      v53 = [(KTSMManager *)self deps];
      v54 = kKTApplicationIdentifierIDS;
      v55 = off_10032D088;
LABEL_72:
      v18 = [(KTFetchIDSSelfOperation *)v52 initWithApplication:v54 dependencies:v53 intendedState:*v55 errorState:@"Ready"];

      [(KTSMManager *)self setLastFetchIDSSelf:v18];
      goto LABEL_22;
    }

    if ([v8 isEqual:@"FetchKTSelf"])
    {
LABEL_74:
      v56 = [KTFetchKTSelfOperation alloc];
      v57 = [(KTSMManager *)self deps];
      v18 = [(KTFetchKTSelfOperation *)v56 initWithApplication:kKTApplicationIdentifierIDS dependencies:v57 intendedState:@"Ready" errorState:@"Ready"];

      [(KTSMManager *)self setLastFetchKTSelf:v18];
      goto LABEL_22;
    }

    if ([v8 isEqual:@"ValidateFetchIDSSelf"])
    {
      [v9 _onqueueRemoveFlag:@"ValidateSelf"];
      [v9 _onqueueRemoveFlag:@"FetchSelf"];
      v52 = [KTFetchIDSSelfOperation alloc];
      v53 = [(KTSMManager *)self deps];
      v54 = kKTApplicationIdentifierIDS;
      v55 = off_10032D0A8;
      goto LABEL_72;
    }

    if ([v8 isEqual:?])
    {
      [v9 _onqueueRemoveFlag:@"FetchIDMS"];
      v58 = [KTFetchIDMSOperation alloc];
      v59 = [(KTSMManager *)self deps];
      v60 = [(KTSMManager *)self specificUser];
      v18 = [(KTFetchIDMSOperation *)v58 initWithDependencies:v59 specificUser:v60 intendedState:@"Ready" errorState:@"Ready"];

      [(KTSMManager *)self setLastFetchIDMS:v18];
      goto LABEL_22;
    }

    if ([v8 isEqual:?])
    {
      [v9 _onqueueRemoveFlag:@"CheckIDSRegistration"];
      v144[0] = _NSConcreteStackBlock;
      v144[1] = 3221225472;
      v144[2] = sub_100056064;
      v144[3] = &unk_10031AE48;
      v144[4] = self;
      v19 = [KTStateTransitionGroupOperation named:@"check-ids-registration" intending:@"Ready" errorState:@"Ready" withBlockTakingSelf:v144];
      goto LABEL_9;
    }

    if ([v8 isEqual:?])
    {
      v143[0] = _NSConcreteStackBlock;
      v143[1] = 3221225472;
      v143[2] = sub_100056380;
      v143[3] = &unk_10031AC90;
      v143[4] = self;
      v19 = [KTStateTransitionOperation named:@"idms-fetch" intending:@"ZoneSetup" errorState:@"ZoneSetup" withBlockTakingSelf:v143];
      goto LABEL_9;
    }

    if ([v8 isEqual:?])
    {
      [v9 _onqueueRemoveFlag:@"CloudKitZoneRecreate"];
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

    if ([v8 isEqual:@"CKProcessInitial"])
    {
      v121 = [(KTSMManager *)self deps];
      v118 = [v121 fetchCloudStorage];
      v116 = [(KTSMManager *)self deps];
      v61 = off_100381DA0;
      v62 = [(KTSMManager *)self zoneHandler];
      v63 = [(KTSMManager *)self deps];
      v64 = [v63 dataStore];
      v65 = [v64 controller];
      v66 = [v65 backgroundContext];
      v67 = [v118 cloudFetchOperationWithDeps:v116 initialFetch:0 userInteractive:1 reason:v61 zoneHandler:v62 context:v66];

      v138[0] = _NSConcreteStackBlock;
      v138[1] = 3221225472;
      v138[2] = sub_1000568B8;
      v138[3] = &unk_10031AD18;
      v139 = v67;
      v140 = self;
      v68 = v67;
      v18 = [KTStateTransitionOperation named:@"initial-fetch" intending:@"InitialSignRegistrationData" errorState:@"InitialSignRegistrationData" withBlockTakingSelf:v138];
      [(KTSignalIDSOperation *)v18 addNullableDependency:v68];
      v69 = [(KTSMManager *)self operationQueue];
      [v69 addOperation:v68];

      goto LABEL_22;
    }

    if ([v8 isEqual:?])
    {
      [v9 _onqueueRemoveFlag:@"CloudKitReboot"];
      v137[0] = _NSConcreteStackBlock;
      v137[1] = 3221225472;
      v137[2] = sub_100056974;
      v137[3] = &unk_10031AE48;
      v137[4] = self;
      v19 = [KTStateTransitionGroupOperation named:@"process-reboot" intending:@"Ready" errorState:@"Ready" withBlockTakingSelf:v137];
      goto LABEL_9;
    }

    if ([v8 isEqual:@"InitialSignRegistrationData"])
    {
      [v9 _onqueueRemoveFlag:@"CheckAccountSignatures"];
      v70 = [KTEnrollmentRegistrationSignature alloc];
      v71 = [(KTSMManager *)self deps];
      v72 = v70;
      v73 = v71;
      v74 = 0;
    }

    else
    {
      if (![v8 isEqual:?])
      {
        if (![v8 isEqual:@"ValidateFetchKTSelf"])
        {
          if ([v8 isEqual:@"ForceSyncKVS"])
          {
            v77 = [KTForceSyncKVSOperation alloc];
            v78 = [(KTSMManager *)self deps];
            v18 = [(KTForceSyncKVSOperation *)v77 initWithDependencies:v78 timeout:30000000000 intendedState:@"Ready" errorState:@"Ready"];

            [(KTSMManager *)self setLastForceSyncKVS:v18];
            goto LABEL_22;
          }

          if ([v8 isEqual:?])
          {
            [v9 _onqueueRemoveFlag:@"ValidateSelf"];
            [v9 _onqueueRemoveFlag:@"FetchSelf"];
            [v9 _onqueueRemoveFlag:@"ValidateSelfOptIn"];
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

          if ([v8 isEqual:?])
          {
            [v9 _onqueueRemoveFlag:@"ChangeOptInState"];
            v80 = [(KTSMManager *)self optInStates];
            v81 = [v80 targetOptInStates];
            v82 = [v81 count];

            if (!v82)
            {
              v19 = [KTStateTransitionOperation named:@"Done with all opt-in changes" entering:@"Ready"];
              goto LABEL_9;
            }

            v83 = [KTChangeOptInStateOperation alloc];
            v21 = [(KTSMManager *)self deps];
            v84 = [(KTSMManager *)self optInStates];
            v85 = @"SetOptIO";
            v86 = v83;
            v87 = v21;
          }

          else
          {
            if (![v8 isEqual:?])
            {
              if ([v8 isEqual:@"ValidateSelfOptIn"])
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

              if ([v8 isEqual:?])
              {
                [v9 _onqueueRemoveFlag:@"CloudKitOutgoing"];
                v122 = [(KTSMManager *)self deps];
                v119 = [v122 cloudRecords];
                v89 = [(KTSMManager *)self deps];
                v90 = [(KTSMManager *)self deps];
                v91 = [v90 dataStore];
                v92 = [v91 controller];
                v93 = [v92 backgroundContext];
                v94 = [v119 updateCloudRecordsOperation:v89 context:v93];

                v130[0] = _NSConcreteStackBlock;
                v130[1] = 3221225472;
                v130[2] = sub_100057C34;
                v130[3] = &unk_10031AD18;
                v131 = v94;
                v132 = self;
                v95 = v94;
                v18 = [KTStateTransitionOperation named:@"processOutgoing" intending:@"Ready" errorState:@"Ready" withBlockTakingSelf:v130];
                [(KTGroupOperation *)v18 addDependency:v95];
                v96 = [(KTSMManager *)self operationQueue];
                [v96 addOperation:v95];

                goto LABEL_22;
              }

              if ([v8 isEqual:?])
              {
                [v9 _onqueueRemoveFlag:@"FetchPublicKeys"];
                v97 = [KTPublicKeyStoreRefresh alloc];
                v12 = [(KTSMManager *)self deps];
                v13 = @"Ready";
                v15 = v97;
                v16 = v12;
                v17 = 0;
                v14 = @"Ready";
                goto LABEL_3;
              }

              if ([v8 isEqual:?])
              {
                [v9 _onqueueRemoveFlag:@"AccountChanged"];
                v19 = [(KTSMManager *)self recheckAccount];
                goto LABEL_9;
              }

              if ([v8 isEqual:@"EnvironmentSwitch"])
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

              if ([v8 isEqual:@"ResetLocalState"])
              {
                v127[0] = _NSConcreteStackBlock;
                v127[1] = 3221225472;
                v127[2] = sub_100057FFC;
                v127[3] = &unk_10031AC90;
                v127[4] = self;
                v19 = [KTStateTransitionOperation named:@"transparency-reset-local" intending:@"Initializing" errorState:@"Error" withBlockTakingSelf:v127];
                goto LABEL_9;
              }

              if ([v8 isEqual:?])
              {
                v126[0] = _NSConcreteStackBlock;
                v126[1] = 3221225472;
                v126[2] = sub_100058178;
                v126[3] = &unk_10031AC90;
                v126[4] = self;
                v19 = [KTStateTransitionOperation named:@"transparency-reset-local-cloud-state" intending:@"Initializing" errorState:@"Initializing" withBlockTakingSelf:v126];
                goto LABEL_9;
              }

              if ([v8 isEqual:@"KTStateResetCloudStore"])
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

              if ([v8 isEqual:@"GetStatusInitial"])
              {
                [v9 _onqueueRemoveFlag:@"StatusUpdate"];
                v98 = [KTFillStatusOperation alloc];
                v33 = [(KTSMManager *)self deps];
                v99 = kKTApplicationIdentifierIDS;
                v100 = v98;
                v101 = 1;
                v102 = v33;
                v103 = @"InitialIDMSCheck";
              }

              else
              {
                if (![v8 isEqual:?])
                {
                  if ([v8 isEqual:?])
                  {
                    [v9 _onqueueRemoveFlag:@"PokeIDS"];
                    v123[0] = _NSConcreteStackBlock;
                    v123[1] = 3221225472;
                    v123[2] = sub_100058388;
                    v123[3] = &unk_10031AC90;
                    v123[4] = self;
                    v19 = [KTStateTransitionOperation named:@"poke-ids" intending:@"Ready" errorState:@"Ready" withBlockTakingSelf:v123];
                    goto LABEL_9;
                  }

                  if ([v8 isEqual:?])
                  {
                    [v9 _onqueueRemoveFlag:@"PendingCKVRepair"];
                    v21 = [(KTSMManager *)self repair];
                    [(KTSMManager *)self setRepair:0];
                    if (v21)
                    {
                      v105 = [KTRepairCKVOperation alloc];
                      v106 = [(KTSMManager *)self deps];
                      v18 = [(KTRepairCKVOperation *)v105 initWithDependencies:v106 repair:v21 reset:self intendedState:@"Initializing" errorState:@"Initializing"];

                      goto LABEL_15;
                    }

                    v22 = [KTStateTransitionOperation named:@"no repair entering:starting over", @"Initializing"];
                    goto LABEL_14;
                  }

                  if (![v8 isEqual:@"Ready"])
                  {
                    goto LABEL_21;
                  }

                  v112 = [(KTSMManager *)self stateMachine];
                  [v112 _onqueueCancelPendingFlag:@"CheckServerOptIn"];

                  v113 = [(KTSMManager *)self readyComplete];
                  [v113 fulfill];

                  v114 = [(KTSMManager *)self deps];
                  v111 = [v114 stateMonitor];
                  [v111 setAccountStatus:4];

                  if ([v9 _onqueueContains:@"AccountChanged"])
                  {
                    v19 = [KTStateTransitionOperation named:@"account-probably-changed" entering:@"RecheckAccount"];
                    goto LABEL_9;
                  }

                  if ([v9 _onqueueContains:@"CheckAccountSignatures"])
                  {
                    v19 = [KTStateTransitionOperation named:@"make-signatures" entering:@"SignRegistrationData"];
                    goto LABEL_9;
                  }

                  if ([v9 _onqueueContains:@"OctagonTrustChanged"])
                  {
                    v19 = [KTStateTransitionOperation named:@"recheck-after-octagon-change" entering:@"Initializing"];
                    goto LABEL_9;
                  }

                  if ([v9 _onqueueContains:@"RepairIDSFlag"])
                  {
                    v19 = [KTStateTransitionOperation named:@"repair-ids" entering:@"SignalIDS"];
                    goto LABEL_9;
                  }

                  if ([v9 _onqueueContains:@"ConfigBagFetch"])
                  {
                    v19 = [KTStateTransitionOperation named:@"fetch-config-bag" entering:@"FetchConfigBag"];
                    goto LABEL_9;
                  }

                  if ([v9 _onqueueContains:@"FetchSelf"])
                  {
                    v19 = [KTStateTransitionOperation named:@"fetch-ids-self" entering:@"FetchIDSSelf"];
                    goto LABEL_9;
                  }

                  if ([v9 _onqueueContains:@"FetchIDMS"])
                  {
                    v19 = [KTStateTransitionOperation named:@"fetch-idms" entering:@"FetchIDMS"];
                    goto LABEL_9;
                  }

                  if ([v9 _onqueueContains:@"FetchPublicKeys"])
                  {
                    v19 = [KTStateTransitionOperation named:@"public-keys-fetch" entering:@"PublicKeysFetch"];
                    goto LABEL_9;
                  }

                  if ([v9 _onqueueContains:@"CheckIDSRegistration"])
                  {
                    v19 = [KTStateTransitionOperation named:@"check-ids-registration" entering:@"CheckIDSRegistration"];
                    goto LABEL_9;
                  }

                  if ([v9 _onqueueContains:@"ChangeOptInState"])
                  {
                    v19 = [KTStateTransitionOperation named:@"process-opt-in-out" entering:@"ChangeOptIn"];
                    goto LABEL_9;
                  }

                  if (![v9 _onqueueContains:@"EnsureIdentity"])
                  {
                    if ([v9 _onqueueContains:@"CloudKitZoneRecreate"])
                    {
                      v19 = [KTStateTransitionOperation named:@"zone-needs-resetup" entering:@"ZoneSetup"];
                      goto LABEL_9;
                    }

                    if ([v9 _onqueueContains:@"CloudKitOutgoing"])
                    {
                      v19 = [KTStateTransitionOperation named:@"upload-to-ck" entering:@"ProcessOutgoing"];
                      goto LABEL_9;
                    }

                    if ([v9 _onqueueContains:@"CloudKitReboot"])
                    {
                      v19 = [KTStateTransitionOperation named:@"fetch-because-reboot" entering:@"CKProcessReboot"];
                      goto LABEL_9;
                    }

                    if ([v9 _onqueueContains:@"ValidateSelf"])
                    {
                      v19 = [KTStateTransitionOperation named:@"validate-self" entering:@"ValidateSelf"];
                      goto LABEL_9;
                    }

                    if ([v9 _onqueueContains:@"CheckKTAccountKey"])
                    {
                      v19 = [KTStateTransitionOperation named:@"check-kt-account-key" entering:@"ForceSyncKTAccountKey"];
                      goto LABEL_9;
                    }

                    if ([v9 _onqueueContains:@"StatusUpdate"])
                    {
                      v19 = [KTStateTransitionOperation named:@"fill-status" entering:@"GetStatus"];
                      goto LABEL_9;
                    }

                    if ([v9 _onqueueContains:@"CheckKTAccountKeyChanged"])
                    {
                      v19 = [KTStateTransitionOperation named:@"check-account-key-changed" entering:@"CheckKTAccountKeyChanged"];
                      goto LABEL_9;
                    }

                    if ([v9 _onqueueContains:@"IDSStatusChanged"])
                    {
                      v19 = [KTStateTransitionOperation named:@"check-ids-account" entering:@"Initializing"];
                      goto LABEL_9;
                    }

                    if ([v9 _onqueueContains:@"PokeIDS"])
                    {
                      v19 = [KTStateTransitionOperation named:@"poke-ids" entering:@"PokeIDS"];
                      goto LABEL_9;
                    }

                    if ([v9 _onqueueContains:@"PendingCKVRepair"])
                    {
                      v19 = [KTStateTransitionOperation named:@"pending-ckv-repair" entering:@"RepairCKV"];
                      goto LABEL_9;
                    }

                    if ([v9 _onqueueContains:@"IDSServerBagChanged"])
                    {
                      [(KTSMManager *)self setStatusReporting:0];
                      v19 = [KTStateTransitionOperation named:@"ids-server-bag-update" entering:@"Initializing"];
                      goto LABEL_9;
                    }

                    v107 = [(KTSMManager *)self launch];
                    [v107 launch];

                    v108 = [(KTSMManager *)self deps];
                    v109 = [v108 logger];
                    v110 = [(KTSMManager *)self launch];
                    [v109 noteLaunchSequence:v110];

                    goto LABEL_21;
                  }

LABEL_155:
                  v19 = [KTStateTransitionOperation named:@"retry-ensure-identity" entering:@"EnsureAccountIdentity"];
                  goto LABEL_9;
                }

                [v9 _onqueueRemoveFlag:@"StatusUpdate"];
                v104 = [KTFillStatusOperation alloc];
                v33 = [(KTSMManager *)self deps];
                v99 = kKTApplicationIdentifierIDS;
                v103 = @"Ready";
                v100 = v104;
                v101 = 0;
                v102 = v33;
              }

              v34 = [(KTFillStatusOperation *)v100 initWithApplication:v99 initialFill:v101 dependencies:v102 intendedState:v103 errorState:v103];
              goto LABEL_52;
            }

            v88 = [KTSetOptInStateOperation alloc];
            v21 = [(KTSMManager *)self deps];
            v84 = [(KTSMManager *)self optInStates];
            v85 = @"Ready";
            v86 = v88;
            v87 = v21;
          }

          v18 = [v86 initWithDependenics:v87 intendedState:v85 errorState:@"Ready" optinStates:v84];

          goto LABEL_15;
        }

        goto LABEL_74;
      }

      v75 = [v9 _onqueueContains:@"CheckAccountSignatures"];
      [v9 _onqueueRemoveFlag:@"CheckAccountSignatures"];
      v76 = [KTEnrollmentRegistrationSignature alloc];
      v71 = [(KTSMManager *)self deps];
      v72 = v76;
      v73 = v71;
      v74 = v75;
    }

    v18 = [(KTEnrollmentRegistrationSignature *)v72 initWithDependencies:v73 forceUpdate:v74 intendedState:@"Ready" errorState:@"Ready" idsRegistrationInterface:self signatureTracker:self];

    [(KTSMManager *)self setLastRegistration:v18];
    goto LABEL_22;
  }

  if (([v9 _onqueueContains:@"CKAccountChanged"] & 1) != 0 || (objc_msgSend(v9, "_onqueueContains:", @"OctagonTrustChanged") & 1) != 0 || objc_msgSend(v9, "_onqueueContains:", @"ManateeViewChanged"))
  {
    v19 = [KTStateTransitionOperation named:@"retry-ckks-check" entering:@"Initializing"];
    goto LABEL_9;
  }

  if ([v9 _onqueueContains:@"CheckAccountSignatures"])
  {
LABEL_47:
    [v9 _onqueueRemoveFlag:@"CheckAccountSignatures"];
    v28 = [KTEnrollmentRegistrationSignature alloc];
    v29 = [(KTSMManager *)self deps];
    v18 = [(KTEnrollmentRegistrationSignature *)v28 initWithDependencies:v29 forceUpdate:0 intendedState:v24 errorState:v24 idsRegistrationInterface:self signatureTracker:self];

    goto LABEL_22;
  }

  if (![v9 _onqueueContains:@"CloudKitOutgoing"])
  {
    goto LABEL_21;
  }

  [v9 _onqueueRemoveFlag:@"CloudKitOutgoing"];
  v117 = [(KTSMManager *)self deps];
  v115 = [v117 cloudRecords];
  v35 = [(KTSMManager *)self deps];
  v36 = [(KTSMManager *)self deps];
  v37 = [v36 dataStore];
  v38 = [v37 controller];
  v39 = [v38 backgroundContext];
  v120 = [v115 updateCloudRecordsOperation:v35 context:v39];

  v151[0] = _NSConcreteStackBlock;
  v151[1] = 3221225472;
  v151[2] = sub_1000553B0;
  v151[3] = &unk_10031AC90;
  v151[4] = self;
  v18 = [KTStateTransitionOperation named:@"processOutgoing" intending:@"WaitForCKKS" errorState:@"WaitForCKKS" withBlockTakingSelf:v151];
  [(KTResultOperation *)v18 addSuccessDependency:v120];
  v40 = [(KTSMManager *)self operationQueue];
  [v40 addOperation:v120];

LABEL_22:

  return v18;
}

- (void)maybeCreateServerOptInFetch
{
  v3 = [(KTSMManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005848C;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_onQueueMaybeCreateNewServerOptInFetch
{
  v3 = [(KTSMManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v12 = [(KTSMManager *)self deps];
  v4 = [v12 stateMonitor];
  if ([v4 newServerOptInRequests])
  {
    v5 = [(KTSMManager *)self currentServerOptInFetch];
    if (v5)
    {
      v6 = v5;
      v7 = [(KTSMManager *)self currentServerOptInFetch];
      v8 = [v7 isFinished];

      if (!v8)
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

    v10 = [(KTSMManager *)self _onqueueCreateNewServerOptInFetch];
    v11 = [(KTSMManager *)self stateMachine];
    [v11 cancelPendingFlag:@"CheckServerOptIn"];
  }

  else
  {
  }
}

- (id)_onqueueCreateNewServerOptInFetch
{
  v3 = [(KTSMManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(KTSMManager *)self serverOptInFetchReasons];
  v5 = +[NSMutableSet set];
  [(KTSMManager *)self setServerOptInFetchReasons:v5];

  v6 = [v4 allObjects];
  v7 = [v6 componentsJoinedByString:{@", "}];

  v8 = [KTFetchServerOptInStatus alloc];
  v9 = [(KTSMManager *)self deps];
  v10 = [(KTSMManager *)self serverOptInScheduler];
  v11 = [(KTFetchServerOptInStatus *)v8 initWithDependencies:v9 reason:v7 retryScheduler:v10];

  [(KTSMManager *)self setCurrentServerOptInFetch:v11];
  v12 = [(KTSMManager *)self deps];
  v13 = [v12 stateMonitor];
  [v13 setNewServerOptInRequests:0];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000588DC;
  v24[3] = &unk_100316FE0;
  v24[4] = self;
  v14 = [NSBlockOperation blockOperationWithBlock:v24];
  v15 = [(KTSMManager *)self currentServerOptInFetch];
  [v14 addNullableDependency:v15];

  v16 = [(KTSMManager *)self currentServerOptInFetch];
  v17 = [(KTSMManager *)self deps];
  v18 = [v17 reachabilityTracker];
  v19 = [v18 reachabilityDependency];
  [v16 addNullableDependency:v19];

  v20 = [(KTSMManager *)self operationQueue];
  v21 = [(KTSMManager *)self currentServerOptInFetch];
  [v20 addOperation:v21];

  v22 = [(KTSMManager *)self operationQueue];
  [v22 addOperation:v14];

  return v11;
}

- (void)requestServerOptInFetchForManyReasons:(id)a3 delayInSeconds:(double)a4
{
  v6 = a3;
  if (qword_10038BD00 != -1)
  {
    sub_100249E44();
  }

  v7 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 allObjects];
    v10 = [v9 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "triggering a new server opt-in state fetch because of reason: %@", buf, 0xCu);
  }

  v11 = [(KTSMManager *)self deps];
  v12 = [v11 stateMonitor];
  [v12 setNewServerOptInRequests:1];

  v13 = [KTPendingFlag alloc];
  v14 = [(KTSMManager *)self serverOptInScheduler];
  v15 = [(KTPendingFlag *)v13 initWithFlag:@"CheckServerOptIn" conditions:2 scheduler:v14];

  v16 = [(KTSMManager *)self deps];
  v17 = [v16 flagHandler];
  [v17 handlePendingFlag:v15];

  v18 = [(KTSMManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058BF4;
  block[3] = &unk_10031A7F0;
  block[4] = self;
  v21 = v6;
  v22 = a4;
  v19 = v6;
  dispatch_async(v18, block);
}

- (void)newServerOptInFetch:(id)a3
{
  v4 = [NSSet setWithObject:a3];
  [(KTSMManager *)self requestServerOptInFetchForManyReasons:v4 delayInSeconds:0.0];
}

- (void)triggerBAACertFetcher
{
  v3 = [(KTSMManager *)self deps];
  v2 = [v3 certFetcher];
  [v2 getDeviceCertWithForcedFetch:1 completionHandler:&stru_10031B0F0];
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
  v2 = [(KTSMManager *)self deps];
  v3 = [v2 logger];
  v4 = [v3 datePropertyForKey:off_100381D10];

  return v4;
}

- (void)clearAccountMetrics
{
  v3 = [(KTSMManager *)self deps];
  v4 = [v3 logger];
  [v4 setDateProperty:0 forKey:off_100381D10];

  v5 = [(KTSMManager *)self deps];
  v6 = [v5 logger];
  [v6 setCKManateeState:1];

  [(KTSMManager *)self setLastSelfValidate:0];
}

- (id)lastSelfValidate
{
  v2 = [(KTSMManager *)self deps];
  v3 = [v2 smDataStore];
  v4 = [v3 getSettingsDate:off_100381D18];

  return v4;
}

- (void)setLastSelfValidate:(id)a3
{
  v4 = a3;
  v6 = [(KTSMManager *)self deps];
  v5 = [v6 smDataStore];
  [v5 setSettingsDate:off_100381D18 date:v4];
}

- (BOOL)optOutWhenNotEligible:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(KTIDSOpsOptInOutData);
  [(KTIDSOpsOptInOutData *)v6 setOptInStatus:&__kCFBooleanFalse];
  [(KTIDSOpsOptInOutData *)v6 setOptChangeReason:3];
  v16 = v5;
  v17 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v8 = dispatch_semaphore_create(0);
  v9 = [(KTSMManager *)self deps];
  v10 = [v9 idsOperations];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100059D8C;
  v14[3] = &unk_10031B448;
  v14[4] = self;
  v15 = v8;
  v11 = v8;
  [v10 sendOptInUpdateRequest:v7 withCompletion:v14];

  v12 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v11, v12);

  return 1;
}

- (BOOL)changeOptInState:(unint64_t)a3 application:(id)a4 loggableData:(id *)a5 error:(id *)a6
{
  v62 = a4;
  v8 = [(KTSMManager *)self deps];
  v9 = [v8 accountOperations];
  v69 = 0;
  v10 = [v9 primaryAccount:&v69];
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

  v13 = [(KTSMManager *)self deps];
  v14 = [v13 idsOperations];
  v15 = [v14 accountStateFetched];
  [v15 wait:2000000000];

  v16 = [(KTSMManager *)self deps];
  v17 = [v16 accountOperations];
  v18 = [(KTSMManager *)self deps];
  v19 = [v18 idsAccountTracker];
  v68 = v11;
  v20 = [v17 ktAccountStatus:v10 idsAccountsTracker:v19 error:&v68];
  v21 = v68;

  if ((v20 - 4) >= 2)
  {
    if (v20)
    {
      v29 = 0;
      v30 = 0;
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v31 = [(KTSMManager *)self readyComplete];
      v32 = [(KTSMManager *)self deps];
      v33 = [v32 settings];
      [v33 uiBlockingNetworkTimeout];
      [v31 wait:(v34 * 1000000000.0)];

      v35 = [(KTSMManager *)self deps];
      v36 = [v35 stateMonitor];
      v37 = [v36 ktStatus];
      v29 = [v37 accountStatus];

      v30 = (v29 & 0xFFFFFFFFFFFFFFFELL) != 2;
      if (!a3 || (v29 & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
LABEL_12:
        v73[0] = @"cdp";
        v38 = [NSNumber numberWithUnsignedInteger:v29];
        v73[1] = @"newState";
        v74[0] = v38;
        v39 = [NSNumber numberWithUnsignedInteger:a3];
        v74[1] = v39;
        v40 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:2];

        if (!v30)
        {
          v45 = [TransparencyError errorWithDomain:kTransparencyErrorAccount code:-400 description:@"No CloudKit, can't opt out"];
          v51 = +[TransparencyAnalytics logger];
          [v51 logResultForEvent:kTransparencyAnalyticsEventOptIn hardFailure:1 result:v45 withAttributes:v40];

          v50 = [(KTSMManager *)self optOutWhenNotEligible:v62 error:a6];
LABEL_38:

          goto LABEL_39;
        }

        v41 = +[TransparencyAnalytics logger];
        v42 = kTransparencyAnalyticsEventOptIn;
        [v41 logResultForEvent:kTransparencyAnalyticsEventOptIn hardFailure:0 result:0 withAttributes:v40];

        v43 = [[KTOptInWatcher alloc] initWithTargetState:a3];
        *&buf = 0;
        *(&buf + 1) = &buf;
        v71 = 0x2020000000;
        v72 = 0;
        v44 = [(KTSMManager *)self stateMachineQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10005A67C;
        block[3] = &unk_10031B4B0;
        block[4] = self;
        v65 = v62;
        p_buf = &buf;
        v45 = v43;
        v66 = v45;
        dispatch_sync(v44, block);

        if (*(*(&buf + 1) + 24) == 1)
        {
          v46 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-342 underlyingError:0 description:@"opt-in pending"];
          v47 = +[TransparencyAnalytics logger];
          [v47 logResultForEvent:v42 hardFailure:1 result:v46 withAttributes:v40];
        }

        else
        {
          [(KTSMManager *)self triggerOptInStateChange];
          v52 = [(KTOptInWatcher *)v45 targetResolved];
          v53 = [v52 wait:120000000000] == 0;

          if (v53)
          {
            v55 = [(KTOptInWatcher *)v45 error];

            if (!v55)
            {
              if ([(KTOptInWatcher *)v45 targetState]== 3)
              {
                v60 = [(KTSMManager *)self statusReporting];
                [v60 insertHasOptedInByDefaultWithValue:0 completionHandler:&stru_10031B4D0];
              }

              v56 = 0;
              v46 = 0;
              v50 = 1;
              goto LABEL_32;
            }

            v54 = [(KTOptInWatcher *)v45 error];
          }

          else
          {
            v54 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-343 underlyingError:0 description:@"timeout setting opt-in"];
          }

          v46 = v54;
        }

        v50 = 0;
        v56 = v46 != 0;
        if (a6 && v46)
        {
          v57 = v46;
          v50 = 0;
          *a6 = v46;
          v56 = 1;
        }

LABEL_32:
        if (a5)
        {
          *a5 = [(KTOptInWatcher *)v45 loggableData];
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
    v22 = [(KTSMManager *)self readyComplete];
    v23 = [(KTSMManager *)self deps];
    v24 = [v23 settings];
    [v24 uiBlockingNetworkTimeout];
    [v22 wait:(v25 * 1000000000.0)];

    v26 = [(KTSMManager *)self deps];
    v27 = [v26 stateMonitor];
    v28 = [v27 ktStatus];
    v29 = [v28 accountStatus];

    v30 = (v29 & 0xFFFFFFFFFFFFFFFELL) != 2;
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  v40 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-160 underlyingError:v21 description:@"Opt-in not allowed, account state: %d cdpState: %d", v20, v29];
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

  if (a6)
  {
    v49 = v40;
    v50 = 0;
    *a6 = v40;
  }

  else
  {
    v50 = 0;
  }

LABEL_39:

  return v50;
}

- (void)timeout:(unint64_t)a3 block:(id)a4
{
  v6 = a4;
  if (qword_10038BD00 != -1)
  {
    sub_10024A178();
  }

  v7 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v22 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Setting a timer to watch for IDS registration timeouts - timeout %llu", buf, 0xCu);
  }

  v8 = [(KTSMManager *)self queue];
  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v8);
  [(KTSMManager *)self setTimer:v9];

  v10 = [(KTSMManager *)self timer];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10005A97C;
  v18 = &unk_10031ABA0;
  v19 = self;
  v20 = v6;
  v11 = v6;
  dispatch_source_set_event_handler(v10, &v15);

  v12 = [(KTSMManager *)self timer:v15];
  v13 = dispatch_time(0, a3);
  dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x6FC23AC00uLL);

  v14 = [(KTSMManager *)self timer];
  dispatch_resume(v14);
}

- (void)_waitForIDSRegistration:(BOOL)a3 complete:(id)a4
{
  v6 = a4;
  v7 = [(KTSMManager *)self queue];
  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v7);
  [(KTSMManager *)self setCheckIDSTimer:v8];

  v9 = [(KTSMManager *)self checkIDSTimer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10005ADF4;
  handler[3] = &unk_10031B5A0;
  v18 = a3;
  handler[4] = self;
  v17 = v6;
  v10 = v6;
  dispatch_source_set_event_handler(v9, handler);

  v11 = [(KTSMManager *)self checkIDSTimer];
  v12 = [(KTSMManager *)self deps];
  v13 = [v12 idsOperations];
  [v13 sleepTimeBetweenIDSCheckups];
  dispatch_source_set_timer(v11, 0, (v14 * 1000000000.0), 0x2FAF080uLL);

  v15 = [(KTSMManager *)self checkIDSTimer];
  dispatch_resume(v15);
}

- (void)checkIDSHealth:(BOOL)a3 complete:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(CheckIDSRegistrationMonitor);
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10005B32C;
  v18[3] = &unk_10031B5C8;
  objc_copyWeak(&v20, &location);
  v21 = a3;
  v8 = v7;
  v19 = v8;
  v9 = [KTStateTransitionGroupOperation named:@"check-ids-health" intending:@"Ready" errorState:@"Ready" withBlockTakingSelf:v18];
  v23 = @"Ready";
  v10 = [NSArray arrayWithObjects:&v23 count:1];
  v11 = [NSSet setWithArray:v10];

  v12 = [(KTSMManager *)self stateMachine];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005B414;
  v15[3] = &unk_10031B610;
  v13 = v6;
  v17 = v13;
  v14 = v8;
  v16 = v14;
  [v12 doSimpleStateMachineRPC:@"check-ids" op:v9 sourceStates:v11 reply:v15];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)checkKTAccountKey:(id)a3 complete:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_allows_internal_security_policies())
  {
    v8 = [(KTSMManager *)self deps];
    v9 = [v8 settings];
    v10 = [v9 ktSignaturePolicy];

    if (v10 <= 8 && ((1 << v10) & 0x154) != 0)
    {
      if (qword_10038BD00 != -1)
      {
        sub_10024A1DC();
      }

      v11 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 67109120;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "signaturePolicy: clearing signature policy: %d", &v16, 8u);
      }

      v12 = [(KTSMManager *)self deps];
      v13 = [v12 settings];
      [v13 clearKTSignaturePolicy];
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
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "signaturePolicy: leaving policy in place: %d", &v16, 8u);
      }
    }
  }

  [(KTSMManager *)self idsServerReportKTKeyWrong:v6];
  v14 = [(KTSMManager *)self checkKTAccountKeyScheduler];
  [v14 trigger];

  v7[2](v7, 0);
}

- (void)refreshDeviceList:(id)a3
{
  v10 = a3;
  v4 = [(KTSMManager *)self specificUser];
  v5 = v4;
  if (v4 && ([v4 altDSID], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [(KTSMManager *)self deps];
    v8 = [v7 idmsOperations];
    v9 = [v5 altDSID];
    [v8 refreshDeviceList:v9 complete:v10];
  }

  else
  {
    v7 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-339 description:@"No specific user available yet"];
    v10[2](v10, 0, v7);
  }
}

- (void)clearIDSCacheForUri:(id)a3 application:(id)a4
{
  v6 = a4;
  v7 = [TransparencyApplication stripApplicationPrefixForIdentifier:v6 uri:a3];
  v8 = [[IDSURI alloc] initWithPrefixedURI:v7];
  v9 = objc_alloc_init(IDSCacheClearRequestContext);
  v17 = v8;
  v10 = [NSArray arrayWithObjects:&v17 count:1];
  [v9 setUris:v10];

  v11 = [TransparencyApplication idsServiceForIdentifier:v6];

  [v9 setService:v11];
  v12 = objc_alloc_init(IDSCacheClearRequest);
  v16 = v9;
  v13 = [NSArray arrayWithObjects:&v16 count:1];
  [v12 setRequestContexts:v13];

  v14 = [(KTSMManager *)self deps];
  v15 = [v14 idsOperations];
  [v15 cacheClearRequest:v12];
}

- (void)transparencyGetKTSignatures:(id)a3 complete:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v9 = [v6 requests];
    v10 = [v9 count];
    v11 = [v6 traceUUID];
    *buf = 67109378;
    v24 = v10;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Getting signature request: %d: %{public}@", buf, 0x12u);
  }

  [(KTSMManager *)self addEvent:@"GettingSignatureRequest"];
  v12 = [(KTSMManager *)self signatureQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005BDBC;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_async(v12, block);

  v13 = [(KTSMManager *)self deps];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10005BDC8;
  v16[3] = &unk_10031B768;
  v16[4] = self;
  v19 = v21;
  v14 = v6;
  v17 = v14;
  v15 = v7;
  v18 = v15;
  [KTEnrollmentSignatureSupport updateClientData:v14 deps:v13 complete:v16];

  _Block_object_dispose(v21, 8);
}

- (void)fillUploadedRdata:(id)a3 withRegistrationData:(id)a4
{
  v53 = a3;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = [a4 objectEnumerator];
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
        v12 = [(KTSMManager *)self deps];
        v13 = [v12 cloudRecords];
        v14 = [v11 pushToken];
        v15 = [v11 tbsKTIDSRegistrationData];
        v16 = [v13 fetchCloudDeviceWithPushToken:v14 tbsRegistrationData:v15];

        v17 = [v16 uploadedToCKAt];
        [v11 setUploadedToCKAt:v17];

        if (([v16 stateReady] & 1) != 0 || (-[KTSMManager deps](self, "deps"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "cloudRecords"), v19 = objc_claimAutoreleasedReturnValue(), v19, v18, !v19))
        {
          v21 = [v11 application];
          [v53 setValue:v11 forKey:v21];
          goto LABEL_13;
        }

        if (qword_10038BD00 != -1)
        {
          sub_10024A2A4();
        }

        v20 = qword_10038BD08;
        if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
          v22 = [v11 application];
          *buf = v51;
          v79 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "updateClientData callback: Skipping rdata for application %{public}@ because it has not been uploaded to CloudKit", buf, 0xCu);

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
    v23 = [(KTSMManager *)self deps];
    v24 = [v23 settings];
    v25 = [v24 ktSignaturePolicy];

    if (v25 <= 8)
    {
      if (((1 << v25) & 0x18) != 0)
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
        v27 = [v53 objectEnumerator];
        v45 = [v27 countByEnumeratingWithState:&v62 objects:v76 count:16];
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
                objc_enumerationMutation(v27);
              }

              v49 = *(*(&v62 + 1) + 8 * i);
              v50 = [NSData dataWithBytes:"public" length:6];
              [v49 setPublicKey:v50];
            }

            v46 = [v27 countByEnumeratingWithState:&v62 objects:v76 count:16];
          }

          while (v46);
        }

        goto LABEL_69;
      }

      if (((1 << v25) & 0x60) != 0)
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
        v27 = [v53 objectEnumerator];
        v40 = [v27 countByEnumeratingWithState:&v58 objects:v75 count:16];
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
                objc_enumerationMutation(v27);
              }

              [*(*(&v58 + 1) + 8 * j) setSignature:0];
            }

            v41 = [v27 countByEnumeratingWithState:&v58 objects:v75 count:16];
          }

          while (v41);
        }

        goto LABEL_69;
      }

      if (((1 << v25) & 0x180) != 0)
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
        v27 = [v53 objectEnumerator];
        v28 = [v27 countByEnumeratingWithState:&v54 objects:v74 count:16];
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
                objc_enumerationMutation(v27);
              }

              [*(*(&v54 + 1) + 8 * k) setPublicKey:0];
            }

            v29 = [v27 countByEnumeratingWithState:&v54 objects:v74 count:16];
          }

          while (v29);
        }

LABEL_69:

        goto LABEL_70;
      }
    }

    if (v25 - 1 < 2)
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
      v27 = [v53 objectEnumerator];
      v33 = [v27 countByEnumeratingWithState:&v66 objects:v77 count:16];
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
              objc_enumerationMutation(v27);
            }

            v37 = *(*(&v66 + 1) + 8 * m);
            v38 = [NSData dataWithBytes:"signature" length:9];
            [v37 setSignature:v38];
          }

          v34 = [v27 countByEnumeratingWithState:&v66 objects:v77 count:16];
        }

        while (v34);
      }

      goto LABEL_69;
    }
  }

LABEL_70:
}

- (void)transparencyDumpKTRegistrationData:(id)a3
{
  v4 = a3;
  v5 = [(KTSMManager *)self deps];
  v6 = [v5 smDataStore];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005CF04;
  v8[3] = &unk_1003176B8;
  v9 = v4;
  v7 = v4;
  [v6 fetchDeviceSignature:0 complete:v8];
}

- (void)transparencyClearKTRegistrationData:(id)a3
{
  v4 = a3;
  v5 = [(KTSMManager *)self deps];
  v6 = [v5 smDataStore];
  v8 = 0;
  [v6 clearDeviceSignatures:&v8];
  v7 = v8;

  v4[2](v4, v7);
}

- (void)transparencyPerformRegistrationSignature:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005D0C4;
  v4[3] = &unk_10031B610;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(KTSMManager *)v5 performRegistrationSignatures:v4];
}

- (void)transparencyCloudDevices:(id)a3
{
  v9 = a3;
  v4 = [(KTSMManager *)self deps];
  v5 = [v4 cloudRecords];

  if (v5)
  {
    v6 = [(KTSMManager *)self deps];
    v7 = [v6 cloudRecords];
    v8 = [v7 cloudDevices];

    v9[2](v9, v8, 0);
  }

  else
  {
    v9[2](v9, 0, 0);
  }
}

- (void)setCloudKitOutgoingFlag
{
  v3 = [KTPendingFlag alloc];
  v4 = [(KTSMManager *)self deps];
  v5 = [v4 cloudKitOutgoingNFS];
  v10 = [(KTPendingFlag *)v3 initWithFlag:@"CloudKitOutgoing" conditions:2 scheduler:v5];

  v6 = [(KTSMManager *)self deps];
  v7 = [v6 flagHandler];
  [v7 handlePendingFlag:v10];

  v8 = [(KTSMManager *)self deps];
  v9 = [v8 cloudKitOutgoingNFS];
  [v9 trigger];
}

- (void)transparencyCloudDeviceAdd:(id)a3 clientData:(id)a4 complete:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(KTSMManager *)self deps];
  v12 = [v11 cloudRecords];

  if (v12)
  {
    v13 = [(KTSMManager *)self deps];
    v14 = [v13 cloudRecords];
    v16 = 0;
    [v14 addDevice:v8 clientData:v9 error:&v16];
    v15 = v16;

    [(KTSMManager *)self setCloudKitOutgoingFlag];
    v10[2](v10, v15);
  }

  else
  {
    v10[2](v10, 0);
  }
}

- (void)transparencyCloudDeviceRemove:(id)a3 clientData:(id)a4 complete:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(KTSMManager *)self deps];
  v12 = [v11 cloudRecords];

  if (v12)
  {
    v13 = [(KTSMManager *)self deps];
    v14 = [v13 cloudRecords];
    v16 = 0;
    [v14 removeDevice:v8 clientData:v9 error:&v16];
    v15 = v16;

    [(KTSMManager *)self setCloudKitOutgoingFlag];
    v10[2](v10, v15);
  }

  else
  {
    v10[2](v10, 0);
  }
}

- (void)getOptInStateForAccount:(id)a3 complete:(id)a4
{
  v5 = a4;
  v6 = [(KTSMManager *)self deps];
  v7 = [v6 cloudRecords];

  if (v7)
  {
    v8 = [v7 getAllOptInStates];
    if (v8)
    {
      v9 = [[_TtC13transparencyd16KTOptIOValidator alloc] initWithOptInRecords:v8 uriToSMT:&__NSDictionary0__struct];
      v12 = 0;
      v10 = [(KTOptIOValidator *)v9 evaluateCloudDataWithApplication:@"IDS" error:&v12];
      v11 = v12;
      v5[2](v5, v10, v11);
    }

    else
    {
      v5[2](v5, 0, 0);
    }
  }

  else
  {
    v5[2](v5, 0, 0);
  }
}

- (void)getOptInForURI:(id)a3 application:(id)a4 complete:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(KTSMManager *)self deps];
  v11 = [v10 cloudRecords];

  if (v11)
  {
    v12 = [v11 getOptInStateWithUri:v13 application:v8];
    v9[2](v9, v12, 0);
  }

  else
  {
    v9[2](v9, 0, 0);
  }
}

- (void)getAllOptInStates:(id)a3
{
  v7 = a3;
  v4 = [(KTSMManager *)self deps];
  v5 = [v4 cloudRecords];

  if (v5)
  {
    v6 = [v5 getAllOptInStates];
    v7[2](v7, v6, 0);
  }

  else
  {
    v7[2](v7, 0, 0);
  }
}

- (void)getOptInStateForApplication:(id)a3 complete:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(KTSMManager *)self deps];
  v8 = [v7 cloudRecords];

  if (v8)
  {
    v9 = [v8 getAggregateOptInStateForApplication:v10];
    v6[2](v6, v9, 0);
  }

  else
  {
    v6[2](v6, 0, 0);
  }
}

- (void)clearOptInStateForURI:(id)a3 application:(id)a4 complete:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(KTSMManager *)self deps];
  v12 = [v11 cloudRecords];

  if (v12)
  {
    v15 = 0;
    v13 = [v12 clearOptInStateForURI:v8 application:v9 error:&v15];
    v14 = v15;
    v10[2](v10, v13, v14);
  }

  else
  {
    v10[2](v10, 0, 0);
  }
}

- (void)resetLocalCloudDataState
{
  v7 = [KTStateTransitionOperation named:@"cloud-data-reset" entering:@"ResetLocalCloudState"];
  v3 = [(KTSMManager *)self stateMachine];
  v4 = +[KTStates KTStateMap];
  v5 = [v4 allKeys];
  v6 = [NSSet setWithArray:v5];
  [v3 doSimpleStateMachineRPC:@"cloud-data-reset" op:v7 sourceStates:v6 reply:&stru_10031B848];
}

- (void)resetCloudStore
{
  v7 = [KTStateTransitionOperation named:@"cloud-data-reset" entering:@"KTStateResetCloudStore"];
  v3 = [(KTSMManager *)self stateMachine];
  v4 = +[KTStates KTStateMap];
  v5 = [v4 allKeys];
  v6 = [NSSet setWithArray:v5];
  [v3 doSimpleStateMachineRPC:@"cloud-store-reset" op:v7 sourceStates:v6 reply:&stru_10031B888];
}

- (void)uriNeedsUpdate:(id)a3 forApplication:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_10038BD00 != -1)
  {
    sub_10024A3A8();
  }

  v7 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "uriNeedsUpdate: %@[%@]", &v8, 0x16u);
  }
}

- (void)inspectErrorForRetryAfter:(id)a3 trigger:(id)a4
{
  v5 = a3;
  v6 = a4;
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
      v12 = [v6 name];
      v13 = 138412802;
      v14 = v12;
      v15 = 2048;
      v16 = v8;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CK operation failed, scheduling %@ delay for %.1f seconds: %@", &v13, 0x20u);
    }

    [v6 waitUntil:v9];
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
    v5 = [(KTSMManager *)self stateMachine];
    [v5 handlePendingFlag:v4];
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

- (void)triggerCheckCKKSOctagonEligibilityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(KTSMManager *)self eligibilityQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005E558;
  v7[3] = &unk_10031ABA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)storeEligiblilitySuccess:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [(KTSMManager *)self statusReporting];

    if (v5)
    {
      v6 = [_TtC13transparencyd25KTEligibilityStatusResult statusResultWithSuccessWithElement:v4];
      v7 = [(KTSMManager *)self statusReporting];
      [v7 storeWithStatus:v6 completionHandler:&stru_10031B988];
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

- (void)storeEligiblilityFailure:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    v8 = [(KTSMManager *)self statusReporting];

    if (v8)
    {
      v9 = [_TtC13transparencyd25KTEligibilityStatusResult statusResultWithFailureWithElement:v6 error:v7];
      v10 = [(KTSMManager *)self statusReporting];
      [v10 storeWithStatus:v9 completionHandler:&stru_10031B9E8];
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

- (void)triggerMaybeReportEligibilityWithCompletion:(id)a3
{
  v4 = a3;
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

  v5 = [(KTSMManager *)self statusReporting];

  if (!v5)
  {
    v8 = kTransparencyErrorInternal;
    v9 = @"State Machine not initialized yet, can't run eligibility commands";
    v10 = -367;
LABEL_10:
    v11 = [TransparencyError errorWithDomain:v8 code:v10 description:v9];
    v4[2](v4, 0, v11);

    goto LABEL_11;
  }

  v6 = [(KTSMManager *)self statusReporting];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005ED60;
  v12[3] = &unk_10031BB20;
  v12[4] = self;
  v13 = v4;
  [v6 timeOfLastReportWithCompletionHandler:v12];

LABEL_11:
}

- (void)tryOptInByDefaultWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(KTSMManager *)self deps];
  v6 = [v5 eligibilitySupport];
  v7 = [v6 allowKTEnableByDefault];

  if ((v7 & 1) == 0)
  {
    v19 = kTransparencyErrorEligibility;
    v20 = @"KTEnableByDefault feature flag is not enabled";
    v21 = 9;
LABEL_10:
    v22 = [TransparencyError errorWithDomain:v19 code:v21 description:v20];
    v4[2](v4, 0, v22);

    goto LABEL_11;
  }

  v8 = [(KTSMManager *)self statusReporting];

  if (!v8)
  {
    v19 = kTransparencyErrorInternal;
    v20 = @"State Machine not initialized yet, can't run eligibility commands";
    v21 = -367;
    goto LABEL_10;
  }

  v9 = [(KTSMManager *)self deps];
  v10 = [v9 accountOperations];
  v26 = 0;
  v11 = [v10 primaryAccount:&v26];
  v12 = v26;

  if (v11 && (-[KTSMManager deps](self, "deps"), v13 = objc_claimAutoreleasedReturnValue(), [v13 accountOperations], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "accountLevel:", v11), v14, v13, v15 == 4))
  {
    v16 = +[TransparencySettings deviceUserAgent];
    v17 = [(KTSMManager *)self statusReporting];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10005F5F4;
    v23[3] = &unk_10031BBC8;
    v23[4] = self;
    v24 = v16;
    v25 = v4;
    v18 = v16;
    [v17 osVersionWithCompletionHandler:v23];
  }

  else
  {
    v18 = [TransparencyError errorWithDomain:kTransparencyErrorEligibility code:12 description:@"Account nil or not HSA2, can't opt in"];
    v4[2](v4, 0, v18);
  }

LABEL_11:
}

- (void)triggerReportAndMaybeOptInWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005FD44;
  v4[3] = &unk_10031BAF8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(KTSMManager *)v5 triggerMaybeReportEligibilityWithCompletion:v4];
}

- (void)insertOSVersion:(id)a3 complete:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(KTSMManager *)self statusReporting];

  if (v7)
  {
    v8 = [(KTSMManager *)self statusReporting];
    [v8 insertOSVersion:v9 completionHandler:v6];
  }

  else
  {
    v8 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-367 description:@"State Machine not initialized yet, can't run eligibility commands"];
    v6[2](v6, v8);
  }
}

- (void)clearEligibilityOverrides:(id)a3
{
  v4 = a3;
  v5 = [(KTSMManager *)self statusReporting];

  if (v5)
  {
    v6 = [(KTSMManager *)self statusReporting];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000606CC;
    v8[3] = &unk_10031BCC0;
    v9 = v4;
    [v6 clearEligibilityOverridesWithCompletionHandler:v8];
  }

  else
  {
    v7 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-367 description:@"State Machine not initialized yet, can't run eligibility commands"];
    (*(v4 + 2))(v4, v7);
  }
}

- (void)setOverrideTimeBetweenReports:(double)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(KTSMManager *)self statusReporting];

  if (v7)
  {
    v8 = [(KTSMManager *)self statusReporting];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100060800;
    v10[3] = &unk_10031BCC0;
    v11 = v6;
    [v8 setOverrideTimeBetweenReportsWithValue:v10 completionHandler:a3];
  }

  else
  {
    v9 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-367 description:@"State Machine not initialized yet, can't run eligibility commands"];
    (*(v6 + 2))(v6, v9);
  }
}

- (void)reportEligibility:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v8 = [(KTSMManager *)self statusReporting];

  if (!v8)
  {
    v11 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-367 description:@"State Machine not initialized yet, can't run eligibility commands"];
LABEL_10:
    v7[2](v7, 0, v11);

    goto LABEL_11;
  }

  if (v6)
  {
    objc_initWeak(&location, self);
    v9 = [(KTSMManager *)self statusReporting];
    v10 = [v6 BOOLValue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100060B14;
    v14[3] = &unk_10031BD50;
    objc_copyWeak(&v16, &location);
    v15 = v7;
    [v9 setOverrideReportValueWithReportValue:v10 completionHandler:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = [(KTSMManager *)self statusReporting];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100060AFC;
    v18[3] = &unk_10031BA90;
    v19 = v7;
    [v13 reportWithCompletionHandler:v18];
  }

LABEL_11:
}

- (void)getAggregateResult:(int64_t)a3 element:(id)a4 complete:(id)a5
{
  v8 = a4;
  v9 = a5;
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

  v10 = [(KTSMManager *)self statusReporting];

  if (!v10)
  {
    v12 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-367 description:@"State Machine not initialized yet, can't run eligibility commands"];
LABEL_9:
    v9[2](v9, 0, v12);

    goto LABEL_10;
  }

  v11 = [(KTSMManager *)self statusReporting];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100060E58;
  v14[3] = &unk_10031BD98;
  v15 = v9;
  [v11 aggregateResultWithSamples:a3 element:v8 completionHandler:v14];

LABEL_10:
}

- (void)successInfoForElement:(id)a3 samples:(int64_t)a4 complete:(id)a5
{
  v20 = a3;
  v19 = a5;
  v7 = [(KTSMManager *)self statusReporting];

  if (v7)
  {
    if (v20)
    {
      v8 = [(KTSMManager *)self statusReporting];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100061A94;
      v41[3] = &unk_10031BE30;
      v43 = v19;
      v42 = v20;
      [v8 successInfoWithElement:v42 samples:a4 completionHandler:v41];
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
            v18 = [(KTSMManager *)self statusReporting];
            v27[0] = _NSConcreteStackBlock;
            v27[1] = 3221225472;
            v27[2] = sub_100061B74;
            v27[3] = &unk_10031BE80;
            v28 = queue;
            v29 = v17;
            v31 = v37;
            v32 = v39;
            v30 = v13;
            [v18 successInfoWithElement:v17 samples:a4 completionHandler:v27];

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
      v24 = v19;
      v26 = v37;
      dispatch_group_notify(v13, queue, block);

      _Block_object_dispose(v37, 8);
      _Block_object_dispose(v39, 8);
    }

    v11 = v19;
  }

  else
  {
    v9 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-367 description:@"State Machine not initialized yet, can't run eligibility commands"];
    v10 = [SecXPCHelper cleanseErrorForXPC:v9];
    v11 = v19;
    (*(v19 + 2))(v19, 0, v10);
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
  v3 = [(KTSMManager *)self deps];
  v4 = [v3 staticKeyStore];
  [v4 remoteUpdate:v5];
}

- (void)xpc24HrNotification:(id)a3
{
  v4 = +[NSDate date];
  [(KTSMManager *)self triggerIDMSFetchBackstop:v4];

  [(KTSMManager *)self triggerKTAccountKeySignature:10.0];
  [(KTSMManager *)self triggerCheckIDSRegistration];
  [(KTSMManager *)self triggerCheckExpiredPublicKeyStores];
  v5 = [(KTSMManager *)self triggerCKFetch24h];
  [(KTSMManager *)self triggerReportAndMaybeOptInWithCompletion:&stru_10031BEE8];

  [(KTSMManager *)self captureEligibilityHealthCheckup];
}

@end