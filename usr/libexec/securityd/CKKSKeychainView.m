@interface CKKSKeychainView
- (BOOL)_onQueueZoneIsReadyForFetching:(id)a3;
- (BOOL)_onqueueOtherDevicesReportHavingTLKs:(id)a3 trustStates:(id)a4;
- (BOOL)_onqueueResetAllInflightOQE:(id *)a3;
- (BOOL)allowOutOfBandFetch:(id *)a3;
- (BOOL)anyViewsInState:(id)a3;
- (BOOL)ckErrorOrPartialError:(id)a3 isError:(int64_t)a4 zoneID:(id)a5;
- (BOOL)haveTLKsLocally:(id)a3 error:(id *)a4;
- (BOOL)insideSQLTransaction;
- (BOOL)outgoingQueueEmpty:(id *)a3;
- (BOOL)scheduleOperationWithoutDependencies:(id)a3;
- (BOOL)setCurrentSyncingPolicy:(id)a3 policyIsFresh:(BOOL)a4;
- (BOOL)shouldRetryAfterFetchError:(id)a3 zoneID:(id)a4;
- (BOOL)unwrapKeysAndSaveToCache:(id)a3 syncKeys:(id)a4 error:(id *)a5;
- (BOOL)unwrapTLKAndSaveToCache:(id)a3 tlks:(id)a4 tlkShares:(id)a5 error:(id *)a6;
- (BOOL)waitForFetchAndIncomingQueueProcessing;
- (BOOL)waitForKeyHierarchyReadiness;
- (BOOL)waitForPolicy:(unint64_t)a3 error:(id *)a4;
- (BOOL)waitUntilAllOperationsAreFinished;
- (BOOL)waitUntilReadyForRPCForOperation:(id)a3 fast:(BOOL)a4 errorOnNoCloudKitAccount:(BOOL)a5 errorOnPolicyMissing:(BOOL)a6 error:(id *)a7;
- (BOOL)zoneIsReadyForFetching:(id)a3;
- (CKKSKeychainView)initWithContainer:(id)a3 contextID:(id)a4 activeAccount:(id)a5 accountTracker:(id)a6 lockStateTracker:(id)a7 reachabilityTracker:(id)a8 savedTLKNotifier:(id)a9 cloudKitClassDependencies:(id)a10 personaAdapter:(id)a11 accountsAdapter:(id)a12 cuttlefishAdapter:(id)a13;
- (NSDate)earliestFetchTime;
- (NSDictionary)stateConditions;
- (NSSet)viewList;
- (NSString)debugDescription;
- (NSString)description;
- (TPSyncingPolicy)syncingPolicy;
- (id)_onqueueNextStateMachineTransition:(id)a3 flags:(id)a4 pendingFlags:(id)a5;
- (id)becomeReadyOperation:(id)a3;
- (id)createAccountLoggedInDependency:(id)a3;
- (id)externalManagedViewForRPC:(id)a3 error:(id *)a4;
- (id)fastStatus:(id)a3 zoneStateEntry:(id)a4;
- (id)findFirstPendingOperation:(id)a3 ofClass:(Class)a4;
- (id)findKeySets:(BOOL)a3;
- (id)intransactionSlowStatus:(id)a3;
- (id)loseTrustOperation:(id)a3;
- (id)participateInFetch:(id)a3;
- (id)performInitializedOperation;
- (id)policyDependentViewStateForName:(id)a3 timeout:(unint64_t)a4 error:(id *)a5;
- (id)resultsOfNextProcessIncomingQueueOperation;
- (id)resyncLocal;
- (id)resyncWithCloud;
- (id)rpcFetchAndProcessIncomingQueue:(id)a3 because:(id)a4 errorOnClassAFailure:(BOOL)a5;
- (id)rpcFetchBecause:(id)a3;
- (id)rpcProcessIncomingQueue:(id)a3 errorOnClassAFailure:(BOOL)a4;
- (id)rpcProcessOutgoingQueue:(id)a3 operationGroup:(id)a4;
- (id)rpcResetCloudKit:(id)a3 reply:(id)a4;
- (id)rpcResetLocal:(id)a3 reply:(id)a4;
- (id)rpcWaitForPriorityViewProcessing;
- (id)tlkMissingOperation:(id)a3;
- (id)viewStateForName:(id)a3;
- (id)viewsForPeerID:(id)a3 error:(id *)a4;
- (id)viewsInState:(id)a3;
- (id)viewsRequiringTLKUpload;
- (id)zoneIDForViewHint:(id)a3 pcsShortcut:(BOOL)a4 error:(id *)a5;
- (int64_t)accountStatusFromCKAccountInfo:(id)a3;
- (void)_onqueuePokeKeyStateMachine;
- (void)_onqueuePrioritizePriorityViews;
- (void)_onqueueProcessOutgoingQueue:(id)a3 priorityRush:(BOOL)a4;
- (void)beginCloudKitOperation;
- (void)beginTrustedOperation:(id)a3 suggestTLKUpload:(id)a4 requestPolicyCheck:(id)a5;
- (void)cancelAllOperations;
- (void)cancelPendingOperations;
- (void)changesFetched:(id)a3 deletedRecordIDs:(id)a4 zoneID:(id)a5 newChangeToken:(id)a6 moreComing:(BOOL)a7 resync:(BOOL)a8 fetchNewestChangesFirst:(BOOL)a9;
- (void)cloudkitAccountStateChange:(id)a3 to:(id)a4;
- (void)decryptCurrentItems:(id)a3 cache:(id)a4 complete:(id)a5;
- (void)decryptPCSIdentities:(id)a3 cache:(id)a4 complete:(id)a5;
- (void)dispatchSyncWithReadOnlySQLTransaction:(id)a3;
- (void)dispatchSyncWithSQLTransaction:(id)a3;
- (void)endTrustedOperation;
- (void)fetchCloudKitExternallyManagedViewKeyHierarchy:(id)a3 reply:(id)a4;
- (void)fetchExternallyManagedViewKeyHierarchy:(id)a3 forceFetch:(BOOL)a4 reply:(id)a5;
- (void)fetchPCSIdentityOutOfBand:(id)a3 forceFetch:(BOOL)a4 complete:(id)a5;
- (void)getCurrentItemForAccessGroup:(id)a3 identifier:(id)a4 viewHint:(id)a5 fetchCloudValue:(BOOL)a6 complete:(id)a7;
- (void)getCurrentItemOutOfBand:(id)a3 forceFetch:(BOOL)a4 complete:(id)a5;
- (void)halt;
- (void)handleCKLogin;
- (void)handleCKLogout;
- (void)handleKeychainEventDbConnection:(__OpaqueSecDbConnection *)a3 source:(unint64_t)a4 added:(SecDbItem *)a5 deleted:(SecDbItem *)a6 rateLimiter:(id)a7;
- (void)initialSyncStatus:(id)a3 reply:(id)a4;
- (void)keyStateMachineRequestProcess;
- (void)loadKeys:(id)a3 reply:(id)a4;
- (void)modifyTLKSharesForExternallyManagedView:(id)a3 adding:(id)a4 deleting:(id)a5 reply:(id)a6;
- (void)notifyForItem:(SecDbItem *)a3;
- (void)notifyPasswordsOrPCSChangedForAddedItem:(SecDbItem *)a3 modified:(SecDbItem *)a4 deleted:(SecDbItem *)a5;
- (void)onqueueCreatePriorityViewsProcessedWatcher;
- (void)pcsMirrorKeysForServices:(id)a3 reply:(id)a4;
- (void)proposeTLKForExternallyManagedView:(id)a3 proposedTLK:(id)a4 wrappedOldTLK:(id)a5 tlkShares:(id)a6 reply:(id)a7;
- (void)receiveTLKUploadRecords:(id)a3;
- (void)resetExternallyManagedCloudKitView:(id)a3 reply:(id)a4;
- (void)scanLocalItems;
- (void)scheduleOperation:(id)a3;
- (void)selfPeerChanged:(id)a3;
- (void)sendMetricForFirstManateeAccess;
- (void)setCurrentItemForAccessGroup:(id)a3 hash:(id)a4 accessGroup:(id)a5 identifier:(id)a6 viewHint:(id)a7 replacing:(id)a8 hash:(id)a9 complete:(id)a10;
- (void)testDropPolicy;
- (void)toggleHavoc:(id)a3;
- (void)trustedPeerSetChanged:(id)a3;
- (void)unsetCurrentItemsForAccessGroup:(id)a3 identifiers:(id)a4 viewHint:(id)a5 complete:(id)a6;
- (void)updateAccount:(id)a3 container:(id)a4;
- (void)waitForOperationsOfClass:(Class)a3;
- (void)xpc24HrNotification;
@end

@implementation CKKSKeychainView

- (id)fastStatus:(id)a3 zoneStateEntry:(id)a4
{
  v5 = a3;
  v6 = a4;
  v26[0] = @"view";
  v7 = [v5 zoneName];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = +[NSNull null];
  }

  v10 = v9;

  v27[0] = v10;
  v26[1] = @"zoneCreated";
  if ([v6 ckzonecreated])
  {
    v11 = @"yes";
  }

  else
  {
    v11 = @"no";
  }

  v27[1] = v11;
  v26[2] = @"zoneSubscribed";
  if ([v6 ckzonesubscribed])
  {
    v12 = @"yes";
  }

  else
  {
    v12 = @"no";
  }

  v27[2] = v12;
  v26[3] = @"keystate";
  v13 = [v5 viewKeyHierarchyState];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = +[NSNull null];
  }

  v16 = v15;

  v27[3] = v16;
  v26[4] = @"ckksManaged";
  if ([v5 ckksManagedView])
  {
    v17 = @"yes";
  }

  else
  {
    v17 = @"no";
  }

  v27[4] = v17;
  v26[5] = @"statusError";
  v18 = +[NSNull null];
  v27[5] = v18;
  v26[6] = @"launchSequence";
  v19 = [v5 launch];
  v20 = [v19 eventsByTime];

  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = +[NSNull null];
  }

  v22 = v21;

  v27[6] = v22;
  v26[7] = @"initialSyncFinished";
  if ([v6 initialSyncFinished])
  {
    v23 = @"yes";
  }

  else
  {
    v23 = @"no";
  }

  v27[7] = v23;
  v24 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:8];

  return v24;
}

- (id)intransactionSlowStatus:(id)a3
{
  v3 = a3;
  v4 = [v3 zoneID];
  v5 = [v3 contextID];
  v6 = [CKKSCurrentKeySet loadForZone:v4 contextID:v5];

  v7 = [v6 error];

  if (v7)
  {
    v8 = [v3 zoneID];
    v9 = [v8 zoneName];
    v10 = sub_100019104(@"ckks", v9);

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v6 error];
      *buf = 138412290;
      v146 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "error loading keyset: %@", buf, 0xCu);
    }
  }

  v12 = objc_alloc_init(NSMutableArray);
  v124 = objc_alloc_init(NSMutableArray);
  contexta = objc_autoreleasePoolPush();
  v13 = [v3 zoneID];
  v140 = 0;
  v14 = [CKKSDeviceStateEntry allInZone:v13 error:&v140];
  v15 = v140;

  v138[0] = _NSConcreteStackBlock;
  v138[1] = 3221225472;
  v138[2] = sub_1001B08D4;
  v138[3] = &unk_100343F90;
  v128 = v12;
  v139 = v128;
  [v14 enumerateObjectsUsingBlock:v138];
  v129 = v6;
  v16 = [v6 currentTLKPointer];
  v17 = [v16 currentKeyUUID];
  v18 = [v3 contextID];
  v19 = [v3 zoneID];
  v137 = v15;
  v20 = [CKKSTLKShareRecord allForUUID:v17 contextID:v18 zoneID:v19 error:&v137];
  v21 = v137;

  v135[0] = _NSConcreteStackBlock;
  v135[1] = 3221225472;
  v135[2] = sub_1001B092C;
  v135[3] = &unk_100343F90;
  v22 = v124;
  v136 = v22;
  [v20 enumerateObjectsUsingBlock:v135];

  objc_autoreleasePoolPop(contexta);
  if ([v3 ckksManagedView])
  {
    v143[0] = @"statusError";
    v23 = [v21 description];
    v24 = v23;
    v25 = v21;
    if (v23)
    {
      v26 = v23;
    }

    else
    {
      v26 = +[NSNull null];
    }

    v31 = v26;

    context = v31;
    v144[0] = v31;
    v143[1] = @"oqe";
    v32 = [(CKKSKeychainView *)self operationDependencies];
    v33 = [v32 contextID];
    v34 = [v3 zoneID];
    v134 = v25;
    v35 = [CKKSOutgoingQueueEntry countsByStateWithContextID:v33 zoneID:v34 error:&v134];
    v36 = v134;

    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = +[NSNull null];
    }

    v43 = v37;

    v125 = v43;
    v144[1] = v43;
    v143[2] = @"iqe";
    v44 = [(CKKSKeychainView *)self operationDependencies];
    v45 = [v44 contextID];
    v46 = [v3 zoneID];
    v133 = v36;
    v47 = [CKKSIncomingQueueEntry countsByStateWithContextID:v45 zoneID:v46 error:&v133];
    v48 = v133;

    if (v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = +[NSNull null];
    }

    v54 = v49;

    v122 = v54;
    v144[2] = v54;
    v143[3] = @"ckmirror";
    v55 = [(CKKSKeychainView *)self operationDependencies];
    v56 = [v55 contextID];
    v57 = [v3 zoneID];
    v132 = v48;
    v58 = [CKKSMirrorEntry countsByParentKeyWithContextID:v56 zoneID:v57 error:&v132];
    v59 = v132;

    if (v58)
    {
      v60 = v58;
    }

    else
    {
      v60 = +[NSNull null];
    }

    v65 = v60;

    v144[3] = v65;
    v143[4] = @"devicestates";
    v66 = v128;
    v67 = v66;
    if (v66)
    {
      v68 = v66;
    }

    else
    {
      v68 = +[NSNull null];
    }

    v71 = v68;

    v144[4] = v71;
    v143[5] = @"tlkshares";
    v72 = v22;
    v73 = v72;
    v120 = v71;
    v121 = v65;
    if (v72)
    {
      v74 = v72;
    }

    else
    {
      v74 = +[NSNull null];
    }

    v75 = v74;

    v119 = v75;
    v144[5] = v75;
    v143[6] = @"keys";
    v76 = [(CKKSKeychainView *)self operationDependencies];
    v77 = [v76 contextID];
    v78 = [v3 zoneID];
    v131 = v59;
    v79 = [CKKSKey countsByClassWithContextID:v77 zoneID:v78 error:&v131];
    v80 = v131;

    if (v79)
    {
      v81 = v79;
    }

    else
    {
      v81 = +[NSNull null];
    }

    v82 = v81;

    v118 = v82;
    v144[6] = v82;
    v143[7] = @"currentTLK";
    v83 = [v129 tlk];
    v84 = [v83 uuid];

    if (v84)
    {
      v85 = v84;
    }

    else
    {
      v85 = +[NSNull null];
    }

    v86 = v85;

    v117 = v86;
    v144[7] = v86;
    v143[8] = @"currentClassA";
    v87 = [v129 classA];
    v88 = [v87 uuid];

    if (v88)
    {
      v89 = v88;
    }

    else
    {
      v89 = +[NSNull null];
    }

    v90 = v89;

    v116 = v90;
    v144[8] = v90;
    v143[9] = @"currentClassC";
    v91 = [v129 classC];
    v92 = [v91 uuid];

    if (v92)
    {
      v93 = v92;
    }

    else
    {
      v93 = +[NSNull null];
    }

    v94 = v93;

    v115 = v94;
    v144[9] = v94;
    v143[10] = @"currentTLKPtr";
    v95 = [v129 currentTLKPointer];
    v96 = [v95 currentKeyUUID];

    if (v96)
    {
      v97 = v96;
    }

    else
    {
      v97 = +[NSNull null];
    }

    v98 = v97;

    v144[10] = v98;
    v143[11] = @"currentClassAPtr";
    v99 = [v129 currentClassAPointer];
    v100 = [v99 currentKeyUUID];

    if (v100)
    {
      v101 = v100;
    }

    else
    {
      v101 = +[NSNull null];
    }

    v102 = v101;

    v144[11] = v102;
    v143[12] = @"currentClassCPtr";
    v103 = [v129 currentClassCPointer];
    v104 = [v103 currentKeyUUID];

    v123 = v80;
    v105 = v22;
    if (v104)
    {
      v106 = v104;
    }

    else
    {
      v106 = +[NSNull null];
    }

    v107 = v106;

    v144[12] = v107;
    v143[13] = @"itemsyncing";
    v108 = [(CKKSKeychainView *)self operationDependencies];
    v109 = [v108 syncingPolicy];
    v110 = [v3 zoneID];
    v111 = [v110 zoneName];
    v112 = [v109 isSyncingEnabledForView:v111];
    v113 = @"paused";
    if (v112)
    {
      v113 = @"enabled";
    }

    v144[13] = v113;
    v70 = [NSDictionary dictionaryWithObjects:v144 forKeys:v143 count:14];

    v39 = v129;
    v22 = v105;
    v50 = v125;
    v38 = context;
    v61 = v122;
    v29 = v123;
    v69 = v121;
  }

  else
  {
    v141[0] = @"statusError";
    v27 = [v21 description];
    v28 = v27;
    v29 = v21;
    if (v27)
    {
      v30 = v27;
    }

    else
    {
      v30 = +[NSNull null];
    }

    v38 = v30;
    v39 = v129;

    v142[0] = v38;
    v141[1] = @"tlkshares";
    v40 = v22;
    v41 = v40;
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = +[NSNull null];
    }

    v50 = v42;

    v142[1] = v50;
    v141[2] = @"currentTLK";
    v51 = [v129 tlk];
    v52 = [v51 uuid];

    if (v52)
    {
      v53 = v52;
    }

    else
    {
      v53 = +[NSNull null];
    }

    v61 = v53;

    v142[2] = v61;
    v141[3] = @"currentTLKPtr";
    v62 = [v129 currentTLKPointer];
    v63 = [v62 currentKeyUUID];

    if (v63)
    {
      v64 = v63;
    }

    else
    {
      v64 = +[NSNull null];
    }

    v69 = v64;

    v142[3] = v69;
    v70 = [NSDictionary dictionaryWithObjects:v142 forKeys:v141 count:4];
  }

  return v70;
}

- (id)viewsForPeerID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1001B1C08;
  v24 = sub_1001B1C18;
  v25 = +[NSMutableArray array];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1001B1C08;
  v18 = sub_1001B1C18;
  v19 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001B1C20;
  v10[3] = &unk_100345070;
  v10[4] = self;
  v12 = &v14;
  v7 = v6;
  v11 = v7;
  v13 = &v20;
  [(CKKSKeychainView *)self dispatchSyncWithReadOnlySQLTransaction:v10];
  if (a4)
  {
    *a4 = v15[5];
  }

  v8 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

- (BOOL)waitUntilReadyForRPCForOperation:(id)a3 fast:(BOOL)a4 errorOnNoCloudKitAccount:(BOOL)a5 errorOnPolicyMissing:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = a3;
  v13 = +[CKKSViewManager manager];
  v14 = [v13 completedSecCKKSInitialize];
  v15 = [v14 wait:5000000000];

  if (v15)
  {
    v16 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Haven't yet initialized SecDb; expect failure", &v29, 2u);
    }
  }

  v17 = [(CKKSKeychainView *)self accountStateKnown];
  v18 = v17;
  if (v10)
  {
    v19 = 500000000;
  }

  else
  {
    v19 = 2000000000;
  }

  [v17 wait:v19];

  v20 = [(CKKSKeychainView *)self accountStatus];
  if (v9 && v20 != 1)
  {
    if (v20)
    {
      v21 = @"User is not signed into iCloud.";
      v22 = 10;
    }

    else
    {
      v21 = @"iCloud account status unknown.";
      v22 = 64;
    }

    v23 = [NSError errorWithDomain:@"CKKSErrorDomain" code:v22 description:v21];
    v25 = [(CKKSKeychainView *)self zoneName];
    v26 = sub_100019104(@"ckkscurrent", v25);

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412546;
      v30 = v12;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Rejecting %@ RPC since we don't have an iCloud account: %@", &v29, 0x16u);
    }

    if (a7)
    {
      v27 = v23;
      v24 = 0;
      *a7 = v23;
LABEL_27:

      goto LABEL_28;
    }

LABEL_23:
    v24 = 0;
    goto LABEL_27;
  }

  if (v8)
  {
    if (![(CKKSKeychainView *)self waitForPolicy:5000000000 error:a7])
    {
      v23 = sub_100019104(@"ckks", 0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v29 = 138412290;
        v30 = v12;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Haven't yet received a policy; failing %@", &v29, 0xCu);
      }

      goto LABEL_23;
    }
  }

  else if (![(CKKSKeychainView *)self waitForPolicy:500000000 error:0])
  {
    v23 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v29 = 138412290;
      v30 = v12;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Haven't yet received a policy; expect failure later doing %@", &v29, 0xCu);
    }

    v24 = 1;
    goto LABEL_27;
  }

  v24 = 1;
LABEL_28:

  return v24;
}

- (id)policyDependentViewStateForName:(id)a3 timeout:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (![(CKKSKeychainView *)self waitForPolicy:a4 error:a5])
  {
    a5 = 0;
    goto LABEL_12;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1001B1C08;
  v24 = sub_1001B1C18;
  v25 = 0;
  v9 = [(CKKSKeychainView *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B25A0;
  block[3] = &unk_100344920;
  block[4] = self;
  v10 = v8;
  v18 = v10;
  v19 = &v20;
  dispatch_sync(v9, block);

  v11 = v21[5];
  if (!v11)
  {
    if (!a5)
    {
      goto LABEL_11;
    }

    v26 = NSLocalizedDescriptionKey;
    v12 = [NSString stringWithFormat:@"No syncing view for '%@'", v10];
    v27 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    *a5 = [NSError errorWithDomain:@"CKKSErrorDomain" code:11 userInfo:v13];

LABEL_10:
    a5 = 0;
    goto LABEL_11;
  }

  if (([v11 ckksManagedView] & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_11;
    }

    v14 = [v21[5] zoneName];
    v15 = [NSString stringWithFormat:@"Cannot get view %@ is externally managed", v14];;
    *a5 = [NSError errorWithDomain:@"CKKSErrorDomain" code:63 description:v15];

    goto LABEL_10;
  }

  a5 = v21[5];
LABEL_11:

  _Block_object_dispose(&v20, 8);
LABEL_12:

  return a5;
}

- (BOOL)waitForPolicy:(unint64_t)a3 error:(id *)a4
{
  v6 = [(CKKSKeychainView *)self policyLoaded];
  v7 = [v6 wait:a3];

  if (v7)
  {
    v8 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Haven't yet received a syncing policy", v12, 2u);
    }

    if (a4)
    {
      v13 = NSLocalizedDescriptionKey;
      v9 = [NSString stringWithFormat:@"CKKS syncing policy not yet loaded"];
      v14 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      *a4 = [NSError errorWithDomain:@"CKKSErrorDomain" code:56 userInfo:v10];
    }
  }

  return v7 == 0;
}

- (void)halt
{
  v3 = [(CKKSKeychainView *)self stateMachine];
  [v3 haltOperation];

  v4 = [(CKKSKeychainView *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B2AF0;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(v4, block);

  [(CKKSKeychainView *)self cancelAllOperations];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [(CKKSKeychainView *)self operationQueue];
  v6 = [v5 operations];

  v7 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        if ([v11 isExecuting])
        {
          [v11 waitUntilFinished];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v8);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [(CKKSKeychainView *)self operationDependencies];
  v13 = [v12 allViews];

  v14 = [v13 countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        v19 = [v18 notifyViewChangedScheduler];
        [v19 cancel];

        v20 = [v18 notifyViewReadyScheduler];
        [v20 cancel];
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v15);
  }

  v21 = [(CKKSKeychainView *)self zoneChangeFetcher];
  [v21 halt];
}

- (void)cancelAllOperations
{
  [(CKKSKeychainView *)self cancelPendingOperations];
  v3 = [(CKKSKeychainView *)self operationQueue];
  [v3 cancelAllOperations];
}

- (void)cancelPendingOperations
{
  v3 = [(CKKSKeychainView *)self outgoingQueueOperations];
  objc_sync_enter(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(CKKSKeychainView *)self outgoingQueueOperations];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7) cancel];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = [(CKKSKeychainView *)self outgoingQueueOperations];
  [v8 removeAllObjects];

  objc_sync_exit(v3);
}

- (void)waitForOperationsOfClass:(Class)a3
{
  v3 = [(CKKSKeychainView *)self operationQueue];
  v4 = [v3 operations];
  v5 = [v4 copy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_isKindOfClass())
        {
          [v11 waitUntilFinished];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (BOOL)waitUntilAllOperationsAreFinished
{
  v2 = [(CKKSKeychainView *)self stateMachine];
  v3 = [v2 paused];
  v4 = [v3 wait:189000000000] == 0;

  return v4;
}

- (BOOL)scheduleOperationWithoutDependencies:(id)a3
{
  v4 = a3;
  v5 = [(CKKSKeychainView *)self halted];
  if (v5)
  {
    v6 = [(CKKSKeychainView *)self zoneName];
    v7 = sub_100019104(@"ckkszone", v6);

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "attempted to schedule an non-dependent operation on a halted zone, ignoring", v9, 2u);
    }
  }

  else
  {
    v7 = [(CKKSKeychainView *)self operationQueue];
    [v7 addOperation:v4];
  }

  return v5 ^ 1;
}

- (void)scheduleOperation:(id)a3
{
  v4 = a3;
  if ([(CKKSKeychainView *)self halted])
  {
    v5 = [(CKKSKeychainView *)self zoneName];
    v6 = sub_100019104(@"ckkszone", v5);

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "attempted to schedule an operation on a halted zone, ignoring", v8, 2u);
    }
  }

  else
  {
    v7 = [(CKKSKeychainView *)self accountLoggedInDependency];
    [v4 addNullableDependency:v7];

    v6 = [(CKKSKeychainView *)self operationQueue];
    [v6 addOperation:v4];
  }
}

- (BOOL)waitForKeyHierarchyReadiness
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(CKKSKeychainView *)self operationDependencies];
  v3 = [v2 allCKKSManagedViews];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) keyHierarchyConditions];
        v10 = [v9 objectForKeyedSubscript:@"ready"];
        v11 = [v10 wait:300000000000] == 0;

        v7 &= v11;
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)waitForFetchAndIncomingQueueProcessing
{
  v3 = [(CKKSKeychainView *)self zoneChangeFetcher];
  v4 = [v3 inflightFetch];

  if (v4)
  {
    [v4 waitUntilFinished];
  }

  v5 = [(CKKSKeychainView *)self stateMachine];
  v6 = [v5 flags];
  v7 = [v6 conditionForFlagIfPresent:@"process_incoming_queue"];

  if (v7)
  {
    v8 = [v7 wait:117000000000] == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(CKKSKeychainView *)self stateMachine];
  v10 = [v9 paused];
  if ([v10 wait:109000000000])
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)outgoingQueueEmpty:(id *)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001B3320;
  v5[3] = &unk_1003449E0;
  v5[4] = &v6;
  v5[5] = a3;
  [(CKKSKeychainView *)self dispatchSyncWithReadOnlySQLTransaction:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)trustedPeerSetChanged:(id)a3
{
  v4 = [(CKKSKeychainView *)self zoneName];
  v5 = sub_100019104(@"ckks", v4);

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Received update that the trust set has changed", v7, 2u);
  }

  v6 = [(CKKSKeychainView *)self stateMachine];
  [v6 handleFlag:@"trusted_peers_changed"];
}

- (void)selfPeerChanged:(id)a3
{
  v4 = [(CKKSKeychainView *)self zoneName];
  v5 = sub_100019104(@"ckks", v4);

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Received update that our self identity has changed", v6, 2u);
  }

  [(CKKSKeychainView *)self keyStateMachineRequestProcess];
}

- (BOOL)shouldRetryAfterFetchError:(id)a3 zoneID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CKKSKeychainView *)self ckErrorOrPartialError:v6 isError:21 zoneID:v7])
  {
    v8 = [v7 zoneName];
    v9 = sub_100019104(@"ckks", v8);

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412290;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Received notice that our change token is out of date (for %@). Resetting local data...", &v20, 0xCu);
    }

    v10 = [(CKKSKeychainView *)self stateMachine];
    v11 = v10;
    v12 = @"ck_change_token_expired";
  }

  else
  {
    if (![(CKKSKeychainView *)self ckErrorOrPartialError:v6 isError:26 zoneID:v7])
    {
      v17 = [v6 domain];
      if ([v17 isEqualToString:CKErrorDomain])
      {
        v18 = [v6 code];

        if (v18 == 5)
        {
          v19 = [v7 zoneName];
          v11 = sub_100019104(@"ckks", v19);

          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v20) = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Received notice that our container does not exist. Nothing to do.", &v20, 2u);
          }

          goto LABEL_10;
        }
      }

      else
      {
      }

      v15 = 1;
      goto LABEL_11;
    }

    v13 = [v7 zoneName];
    v14 = sub_100019104(@"ckks", v13);

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412290;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Received notice that our zone(%@) does not exist. Resetting local data.", &v20, 0xCu);
    }

    v10 = [(CKKSKeychainView *)self stateMachine];
    v11 = v10;
    v12 = @"ck_zone_missing";
  }

  [v10 handleFlag:v12];
LABEL_10:

  v15 = 0;
LABEL_11:

  return v15;
}

- (BOOL)ckErrorOrPartialError:(id)a3 isError:(int64_t)a4 zoneID:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 code] == a4)
  {
    v9 = [v7 domain];
    v10 = [v9 isEqualToString:CKErrorDomain];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  if ([v7 code] != 2 || (objc_msgSend(v7, "domain"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", CKErrorDomain), v12, !v13))
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v14 = [v7 userInfo];
  v15 = [v14 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  v16 = [v15 objectForKeyedSubscript:v8];
  if ([v16 code] != a4)
  {

    goto LABEL_10;
  }

  v17 = [v16 domain];
  v18 = [v17 isEqualToString:CKErrorDomain];

  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  v11 = 1;
LABEL_11:

  return v11;
}

- (void)changesFetched:(id)a3 deletedRecordIDs:(id)a4 zoneID:(id)a5 newChangeToken:(id)a6 moreComing:(BOOL)a7 resync:(BOOL)a8 fetchNewestChangesFirst:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = [v16 count];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001B3B08;
  v28[3] = &unk_100343F18;
  v28[4] = self;
  v19 = v17;
  v29 = v19;
  v20 = v15;
  v30 = v20;
  v34 = a8;
  v21 = v16;
  v35 = a7;
  v31 = v21;
  v33 = &v37;
  v22 = v18;
  v32 = v22;
  v36 = a9;
  [(CKKSKeychainView *)self dispatchSyncWithSQLTransaction:v28];
  v23 = [(CKKSKeychainView *)self operationDependencies];
  v24 = [v19 zoneName];
  v25 = [v23 viewStateForName:v24];

  if (v38[3])
  {
    v26 = [v25 notifyViewChangedScheduler];
    [v26 trigger];
  }

  if (([v25 ckksManagedView] & 1) == 0)
  {
    if ([v20 count] || objc_msgSend(v21, "count"))
    {
      v27 = [v25 notifyViewChangedScheduler];
      [v27 trigger];
    }

    if (!a7)
    {
      [v25 launchComplete];
    }
  }

  _Block_object_dispose(&v37, 8);
}

- (id)participateInFetch:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1001B1C08;
  v15 = sub_1001B1C18;
  v16 = objc_alloc_init(CKKSCloudKitFetchRequest);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001B4CB8;
  v8[3] = &unk_100344920;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(CKKSKeychainView *)self dispatchSyncWithReadOnlySQLTransaction:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (BOOL)_onQueueZoneIsReadyForFetching:(id)a3
{
  v4 = a3;
  v5 = [(CKKSKeychainView *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([(CKKSKeychainView *)self accountStatus]== 1)
  {
    v6 = [(CKKSKeychainView *)self operationDependencies];
    v7 = [v6 contextID];
    v8 = [v4 zoneName];
    v9 = [CKKSZoneStateEntry contextID:v7 zoneName:v8];

    if (([v9 ckzonecreated]& 1) != 0)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v10 = [(CKKSKeychainView *)self operationDependencies];
      v11 = [v10 views];

      v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
LABEL_5:
        v15 = 0;
        while (1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * v15);
          v17 = [v16 zoneName];
          v18 = [v4 zoneName];
          v19 = [v17 isEqualToString:v18];

          if (v19)
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
            if (v13)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v23 = v16;

        if (!v23)
        {
          goto LABEL_19;
        }

        v21 = 1;
        goto LABEL_23;
      }

LABEL_11:

LABEL_19:
      v24 = [v4 zoneName];
      v25 = sub_100019104(@"ckksfetch", v24);

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Not participating in fetch: zone is not active", buf, 2u);
      }

      v23 = 0;
    }

    else
    {
      v22 = [v4 zoneName];
      v23 = sub_100019104(@"ckksfetch", v22);

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Not participating in fetch: zone not created yet", buf, 2u);
      }
    }

    v21 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v20 = [(CKKSKeychainView *)self zoneName];
  v9 = sub_100019104(@"ckksfetch", v20);

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not participating in fetch: not logged in", buf, 2u);
  }

  v21 = 0;
LABEL_24:

  return v21;
}

- (BOOL)zoneIsReadyForFetching:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B5324;
  v6[3] = &unk_100344920;
  v9 = &v10;
  v7 = self;
  v3 = a3;
  v8 = v3;
  [(CKKSKeychainView *)v7 dispatchSyncWithReadOnlySQLTransaction:v6];
  v4 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v4;
}

- (void)_onqueuePrioritizePriorityViews
{
  v3 = [(CKKSKeychainView *)self operationDependencies];
  v4 = [v3 allPriorityViews];

  if ([v4 count])
  {
    v5 = [(CKKSKeychainView *)self operationDependencies];
    [v5 limitOperationToPriorityViews];

    v6 = [(CKKSKeychainView *)self zoneName];
    v7 = sub_100019104(@"ckksviews", v6);

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CKKSKeychainView *)self operationDependencies];
      v9 = [v8 views];
      *buf = 138412290;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Restricting operation to priority views: %@", buf, 0xCu);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [(CKKSKeychainView *)self operationDependencies];
    v11 = [v10 allViews];

    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = [v16 priorityView];
          v18 = [v16 launch];
          v19 = v18;
          if (v17)
          {
            v20 = @"priority-start";
          }

          else
          {
            v20 = @"priority-pause";
          }

          [v18 addEvent:v20];
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    v21 = [(CKKSKeychainView *)self operationDependencies];
    v22 = [v21 overallLaunch];
    [v22 addEvent:@"priority-start"];
  }
}

- (id)viewStateForName:(id)a3
{
  v4 = a3;
  v5 = [(CKKSKeychainView *)self operationDependencies];
  v6 = [v5 viewStateForName:v4];

  return v6;
}

- (BOOL)haveTLKsLocally:(id)a3 error:(id *)a4
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1001B1C08;
  v23 = sub_1001B1C18;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001B578C;
  v10[3] = &unk_100345070;
  v6 = a3;
  v11 = v6;
  v12 = self;
  v13 = &v19;
  v14 = &v15;
  [(CKKSKeychainView *)self dispatchSyncWithReadOnlySQLTransaction:v10];
  if (a4)
  {
    v7 = v20[5];
    if (v7)
    {
      *a4 = v7;
    }
  }

  v8 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v8;
}

- (void)testDropPolicy
{
  v3 = [(CKKSKeychainView *)self operationDependencies];
  v4 = +[NSSet set];
  [v3 applyNewSyncingPolicy:0 viewStates:v4];

  v5 = objc_alloc_init(CKKSCondition);
  [(CKKSKeychainView *)self setPolicyLoaded:v5];
}

- (void)onqueueCreatePriorityViewsProcessedWatcher
{
  v3 = [OctagonStateMultiStateArrivalWatcher alloc];
  v4 = [(CKKSKeychainView *)self queue];
  v15[0] = @"ready";
  v15[1] = @"handle_all_views";
  v5 = [NSArray arrayWithObjects:v15 count:2];
  v6 = [NSSet setWithArray:v5];
  v13[0] = @"loggedout";
  v7 = [NSError errorWithDomain:@"CKKSErrorDomain" code:10 description:@"CloudKit account not present"];
  v13[1] = @"error";
  v14[0] = v7;
  v8 = [NSError errorWithDomain:@"CKKSErrorDomain" code:65 description:@"CKKS currently in error state"];
  v14[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [(OctagonStateMultiStateArrivalWatcher *)v3 initNamed:@"wait-for-priority-view-processing" serialQueue:v4 states:v6 failStates:v9];
  [(CKKSKeychainView *)self setPriorityViewsProcessed:v10];

  v11 = [(CKKSKeychainView *)self stateMachine];
  v12 = [(CKKSKeychainView *)self priorityViewsProcessed];
  [v11 _onqueueRegisterMultiStateArrivalWatcher:v12 startTimeout:-1];
}

- (BOOL)setCurrentSyncingPolicy:(id)a3 policyIsFresh:(BOOL)a4
{
  v50 = a4;
  v5 = a3;
  v51 = v5;
  if (v5)
  {
    v49 = [v5 version];
    v48 = [NSString stringWithFormat:@"%llu", [v49 versionNumber]];
    v6 = [AAFAnalyticsEventSecurity alloc];
    v68[0] = v48;
    v67[0] = kSecurityRTCFieldSyncingPolicy;
    v67[1] = kSecurityRTCFieldPolicyFreshness;
    v7 = [NSNumber numberWithBool:v50];
    v68[1] = v7;
    v67[2] = kSecurityRTCFieldNumViews;
    v8 = [v51 viewList];
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
    v68[2] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:3];
    v11 = [(CKKSKeychainView *)self operationDependencies];
    v12 = [v11 activeAccount];
    v13 = [v12 altDSID];
    v14 = [(CKKSKeychainView *)self operationDependencies];
    v15 = [v14 sendMetric];
    v16 = [v6 initWithCKKSMetrics:v10 altDSID:v13 eventName:kSecurityRTCEventNameSyncingPolicySet testsAreEnabled:0 category:kSecurityRTCEventCategoryAccountDataAccessRecovery sendMetric:v15];

    v17 = [v51 viewList];
    v18 = sub_100019104(@"ckks-policy", 0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"cached";
      *buf = 138412802;
      *&buf[4] = v51;
      *&buf[12] = 2112;
      if (v50)
      {
        v19 = @"fresh";
      }

      *&buf[14] = v19;
      *&buf[22] = 2112;
      v66 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "New syncing policy: %@ (%@) views: %@", buf, 0x20u);
    }

    v20 = [(CKKSKeychainView *)self operationDependencies];
    v21 = [v20 overallLaunch];
    [v21 addEvent:@"syncing-policy-set"];

    v64[0] = CKKSSEViewPTA;
    v64[1] = CKKSSEViewPTC;
    v22 = [NSArray arrayWithObjects:v64 count:2];
    v23 = [NSSet setWithArray:v22];

    v24 = [(CKKSKeychainView *)self viewAllowList];

    if (v24)
    {
      v25 = sub_100019104(@"ckks-policy", 0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(CKKSKeychainView *)self viewAllowList];
        *buf = 138412290;
        *&buf[4] = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Intersecting view list with allow list: %@", buf, 0xCu);
      }

      v27 = [v17 mutableCopy];
      v28 = [(CKKSKeychainView *)self viewAllowList];
      [v27 intersectSet:v28];

      v29 = v27;
      v30 = sub_100019104(@"ckks-policy", 0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v29;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Final list: %@", buf, 0xCu);
      }

      v31 = [v23 mutableCopy];
      v32 = [(CKKSKeychainView *)self viewAllowList];
      [v31 intersectSet:v32];

      v33 = v31;
      v34 = sub_100019104(@"ckks-policy", 0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v33;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Final list of externally-managed view names: %@", buf, 0xCu);
      }
    }

    else
    {
      v33 = v23;
      v29 = v17;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v66) = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    v37 = [(CKKSKeychainView *)self operationDependencies];
    v38 = [v37 databaseProvider];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_1001B6D58;
    v53[3] = &unk_100343EF0;
    v53[4] = self;
    v39 = v29;
    v54 = v39;
    v55 = v51;
    v40 = v33;
    v56 = v40;
    v57 = &v60;
    v58 = buf;
    v59 = v50;
    [v38 dispatchSyncWithReadOnlySQLTransaction:v53];

    if (v50)
    {
      v41 = [(CKKSKeychainView *)self stateMachine];
      [v41 handleFlag:@"policy_fresh"];

      v42 = [(CKKSKeychainView *)self stateMachine];
      [v42 handleFlag:@"process_incoming_queue"];
    }

    if ([(CKKSKeychainView *)self itemModificationsBeforePolicyLoaded])
    {
      v43 = sub_100019104(@"ckks-policy", 0);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Issuing scan suggestions to handle missed items", v52, 2u);
      }

      [(CKKSKeychainView *)self setItemModificationsBeforePolicyLoaded:0];
      v44 = [(CKKSKeychainView *)self stateMachine];
      [v44 handleFlag:@"dropped_items"];
    }

    v45 = +[CKKSViewManager manager];
    [v45 setupAnalytics];

    v46 = [(CKKSKeychainView *)self policyLoaded];
    [v46 fulfill];

    [v16 sendMetricWithResult:1 error:0];
    if (*(*&buf[8] + 24))
    {
      v36 = 1;
    }

    else
    {
      v36 = *(v61 + 24);
    }

    _Block_object_dispose(&v60, 8);
    _Block_object_dispose(buf, 8);

    v35 = v49;
  }

  else
  {
    v35 = sub_100019104(@"ckks-policy", 0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Nil syncing policy presented; ignoring", buf, 2u);
    }

    v36 = 0;
  }

  return v36 & 1;
}

- (TPSyncingPolicy)syncingPolicy
{
  v2 = [(CKKSKeychainView *)self operationDependencies];
  v3 = [v2 syncingPolicy];

  return v3;
}

- (void)endTrustedOperation
{
  v3 = [AAFAnalyticsEventSecurity alloc];
  v4 = [(CKKSKeychainView *)self operationDependencies];
  v5 = [v4 activeAccount];
  v6 = [v5 altDSID];
  v7 = kSecurityRTCEventNameTrustLoss;
  v8 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  v9 = [(CKKSKeychainView *)self operationDependencies];
  v10 = [v3 initWithCKKSMetrics:&__NSDictionary0__struct altDSID:v6 eventName:v7 testsAreEnabled:0 category:v8 sendMetric:{objc_msgSend(v9, "sendMetric")}];

  v11 = [(CKKSKeychainView *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B790C;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(v11, block);

  [v10 sendMetricWithResult:1 error:0];
}

- (void)beginTrustedOperation:(id)a3 suggestTLKUpload:(id)a4 requestPolicyCheck:(id)a5
{
  v8 = a3;
  v30 = a4;
  v29 = a5;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    do
    {
      v12 = 0;
      do
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v35 + 1) + 8 * v12) registerForPeerChangeUpdates:self];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v10);
  }

  v28 = [AAFAnalyticsEventSecurity alloc];
  v39 = kSecurityRTCFieldTrustStatus;
  v13 = [(CKKSKeychainView *)self trustStatus];
  v14 = @"available";
  if (v13 == 3)
  {
    v14 = @"no account";
  }

  if (!v13)
  {
    v14 = @"unknown";
  }

  v15 = v14;
  v40 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v17 = [(CKKSKeychainView *)self operationDependencies];
  v18 = [v17 activeAccount];
  v19 = [v18 altDSID];
  v20 = kSecurityRTCEventNameTrustGain;
  v21 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  v22 = [(CKKSKeychainView *)self operationDependencies];
  v23 = [v28 initWithCKKSMetrics:v16 altDSID:v19 eventName:v20 testsAreEnabled:0 category:v21 sendMetric:{objc_msgSend(v22, "sendMetric")}];

  v24 = [(CKKSKeychainView *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B7D28;
  block[3] = &unk_100344B18;
  block[4] = self;
  v32 = v8;
  v33 = v29;
  v34 = v30;
  v25 = v30;
  v26 = v29;
  v27 = v8;
  dispatch_sync(v24, block);

  [v23 sendMetricWithResult:1 error:0];
}

- (void)handleCKLogout
{
  v3 = [(CKKSKeychainView *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B815C;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(v3, block);

  v4 = [(CKKSKeychainView *)self operationDependencies];
  v5 = [v4 overallLaunch];
  [v5 addEvent:@"ck-account-logout"];

  v6 = [(CKKSKeychainView *)self stateMachine];
  [v6 handleFlag:@"ck_account_logged_out"];

  v7 = [(CKKSKeychainView *)self accountStateKnown];
  [v7 fulfill];
}

- (void)handleCKLogin
{
  v3 = [(CKKSKeychainView *)self zoneName];
  v4 = sub_100019104(@"ckks", v3);

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "received a notification of CK login", buf, 2u);
  }

  if (sub_100019064())
  {
    v5 = [(CKKSKeychainView *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B84F4;
    block[3] = &unk_100346018;
    block[4] = self;
    dispatch_sync(v5, block);

    v6 = [(CKKSKeychainView *)self operationDependencies];
    v7 = [v6 overallLaunch];
    [v7 addEvent:@"ck-account-login"];

    v8 = [AAFAnalyticsEventSecurity alloc];
    v9 = [(CKKSKeychainView *)self operationDependencies];
    v10 = [v9 activeAccount];
    v11 = [v10 altDSID];
    v12 = kSecurityRTCEventNameCKAccountLogin;
    v13 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    v14 = [(CKKSKeychainView *)self operationDependencies];
    v15 = [v8 initWithCKKSMetrics:&__NSDictionary0__struct altDSID:v11 eventName:v12 testsAreEnabled:0 category:v13 sendMetric:{objc_msgSend(v14, "sendMetric")}];

    [v15 sendMetricWithResult:1 error:0];
    v16 = [(CKKSKeychainView *)self stateMachine];
    [v16 handleFlag:@"ck_account_logged_in"];

    v17 = [(CKKSKeychainView *)self accountStateKnown];
    [v17 fulfill];
  }

  else
  {
    v18 = [(CKKSKeychainView *)self zoneName];
    v19 = sub_100019104(@"ckks", v18);

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Skipping CloudKit initialization due to disabled CKKS", buf, 2u);
    }
  }
}

- (void)updateAccount:(id)a3 container:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 isPrimaryAccount];
  if (v7 && (v8 & 1) == 0)
  {
    v9 = sub_100019104(@"ckks-account", 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 options];
      v11 = [v10 accountOverrideInfo];
      v12 = [v11 accountID];
      v26 = 138412546;
      v27 = v6;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Switching CloudKit container for CKKS & CKKSAccountStateTracker for account(%@) associated with (%@) container", &v26, 0x16u);
    }

    [(CKKSKeychainView *)self setContainer:v7];
    v13 = [(CKKSKeychainView *)self zoneChangeFetcher];
    [v13 setContainer:v7];

    v14 = [(CKKSKeychainView *)self accountTracker];
    [v14 setContainer:v7];

    v15 = [v7 privateCloudDatabase];
    v16 = [(CKKSKeychainView *)self operationDependencies];
    [v16 setCkdatabase:v15];
  }

  v17 = [(CKKSKeychainView *)self operationDependencies];
  v18 = [v17 activeAccount];
  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = v18;
  v20 = [(CKKSKeychainView *)self operationDependencies];
  v21 = [v20 activeAccount];
  v22 = [v21 isEqual:v6];

  if ((v22 & 1) == 0)
  {
    v23 = sub_100019104(@"ckks-account", 0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(CKKSKeychainView *)self operationDependencies];
      v25 = [v24 activeAccount];
      v26 = 138412546;
      v27 = v6;
      v28 = 2112;
      v29 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Updating CKKS's idea of account to %@; old: %@", &v26, 0x16u);
    }

    v17 = [(CKKSKeychainView *)self operationDependencies];
    [v17 setActiveAccount:v6];
LABEL_11:
  }
}

- (void)cloudkitAccountStateChange:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKKSKeychainView *)self zoneName];
  v9 = sub_100019104(@"ckkszone", v8);

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 138412546;
    *&v27[4] = v6;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received notification of CloudKit account status change, moving from %@ to %@", v27, 0x16u);
  }

  v10 = [(CKKSKeychainView *)self accountStatusFromCKAccountInfo:v6];
  v11 = [(CKKSKeychainView *)self accountStatusFromCKAccountInfo:v7];
  if (v10 == v11)
  {
    v12 = [(CKKSKeychainView *)self zoneName];
    v13 = sub_100019104(@"ckkszone", v12);

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"available";
      if (v10 == 3)
      {
        v14 = @"no account";
      }

      if (!v10)
      {
        v14 = @"unknown";
      }

      v15 = v14;
      *v27 = 138412290;
      *&v27[4] = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Computed status of new CK account info is same as old status: %@", v27, 0xCu);
    }

    goto LABEL_26;
  }

  if (v11)
  {
    if (v11 != 3)
    {
      if (v11 == 1)
      {
        v16 = [(CKKSKeychainView *)self zoneName];
        v17 = sub_100019104(@"ckkszone", v16);

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Logged into iCloud.", v27, 2u);
        }

        [(CKKSKeychainView *)self handleCKLogin];
        v18 = [(CKKSKeychainView *)self accountLoggedInDependency];

        if (v18)
        {
          v19 = [(CKKSKeychainView *)self operationQueue];
          v20 = [(CKKSKeychainView *)self accountLoggedInDependency];
          [v19 addOperation:v20];

          [(CKKSKeychainView *)self setAccountLoggedInDependency:0];
        }
      }

      goto LABEL_26;
    }

    v21 = [(CKKSKeychainView *)self zoneName];
    v22 = sub_100019104(@"ckkszone", v21);

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      v23 = "Logging out of iCloud. Shutting down.";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, v27, 2u);
    }
  }

  else
  {
    v24 = [(CKKSKeychainView *)self zoneName];
    v22 = sub_100019104(@"ckkszone", v24);

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      v23 = "Account status has become undetermined. Pausing!";
      goto LABEL_22;
    }
  }

  v25 = [(CKKSKeychainView *)self accountLoggedInDependency];

  if (!v25)
  {
    v26 = [(CKKSKeychainView *)self createAccountLoggedInDependency:@"CloudKit account logged in again."];
    [(CKKSKeychainView *)self setAccountLoggedInDependency:v26];
  }

  [(CKKSKeychainView *)self handleCKLogout];
LABEL_26:
}

- (int64_t)accountStatusFromCKAccountInfo:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 accountStatus] == 1 && (objc_msgSend(v4, "hasValidCredentials") & 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)createAccountLoggedInDependency:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001B8DD4;
  v8[3] = &unk_100344D38;
  objc_copyWeak(&v10, &location);
  v5 = v4;
  v9 = v5;
  v6 = [CKKSResultOperation named:@"account-logged-in-dependency" withBlock:v8];
  [v6 setDescriptionErrorCode:3];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (void)beginCloudKitOperation
{
  v4 = [(CKKSKeychainView *)self accountTracker];
  v3 = [v4 registerForNotificationsOfCloudKitAccountStatusChange:self];
}

- (BOOL)insideSQLTransaction
{
  v2 = [(CKKSKeychainView *)self operationDependencies];
  v3 = [v2 databaseProvider];
  v4 = [v3 insideSQLTransaction];

  return v4;
}

- (void)dispatchSyncWithReadOnlySQLTransaction:(id)a3
{
  v4 = a3;
  v6 = [(CKKSKeychainView *)self operationDependencies];
  v5 = [v6 databaseProvider];
  [v5 dispatchSyncWithReadOnlySQLTransaction:v4];
}

- (void)dispatchSyncWithSQLTransaction:(id)a3
{
  v4 = a3;
  v6 = [(CKKSKeychainView *)self operationDependencies];
  v5 = [v6 databaseProvider];
  [v5 dispatchSyncWithSQLTransaction:v4];
}

- (BOOL)_onqueueResetAllInflightOQE:(id *)a3
{
  v4 = self;
  v5 = [(CKKSKeychainView *)self queue];
  dispatch_assert_queue_V2(v5);

  v50 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v6 = [(CKKSKeychainView *)v4 operationDependencies];
  v7 = [v6 allCKKSManagedViews];

  v8 = [v7 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v8)
  {
    v39 = a3;
    v40 = v7;
    v9 = *v48;
    p_info = &OBJC_METACLASS___CKKSMemoryKeyCache.info;
    v11 = @"inflight";
    v36 = *v48;
    do
    {
      v12 = 0;
      v37 = v8;
      while (2)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v38 = v12;
        v13 = *(*(&v47 + 1) + 8 * v12);
        while (1)
        {
          v14 = p_info + 276;
          v15 = v4;
          v16 = [(CKKSKeychainView *)v4 operationDependencies];
          v17 = [v16 contextID];
          v18 = [v13 zoneID];
          v46 = 0;
          v19 = v11;
          v20 = [v14 fetch:100 state:v11 contextID:v17 zoneID:v18 error:&v46];
          v21 = v46;

          if (v21)
          {
            v33 = [(CKKSKeychainView *)v15 zoneName];
            v34 = sub_100019104(@"ckks", v33);

            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v52 = v21;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Error finding inflight outgoing queue records: %@", buf, 0xCu);
            }

            v7 = v40;
            if (v39)
            {
              v35 = v21;
              *v39 = v21;
            }

LABEL_26:

            v28 = 0;
            goto LABEL_28;
          }

          if (![v20 count])
          {
            break;
          }

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v20 = v20;
          v22 = [v20 countByEnumeratingWithState:&v42 objects:v55 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v43;
            while (2)
            {
              for (i = 0; i != v23; i = i + 1)
              {
                if (*v43 != v24)
                {
                  objc_enumerationMutation(v20);
                }

                v26 = *(*(&v42 + 1) + 8 * i);
                v41 = 0;
                [v26 intransactionMoveToState:@"new" viewState:v13 error:&v41];
                v27 = v41;
                if (v27)
                {
                  v21 = v27;
                  v29 = [(CKKSKeychainView *)v15 zoneName];
                  v30 = sub_100019104(@"ckks", v29);

                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v52 = v26;
                    v53 = 2112;
                    v54 = v21;
                    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Error fixing up inflight OQE(%@): %@", buf, 0x16u);
                  }

                  v7 = v40;
                  if (v39)
                  {
                    v31 = v21;
                    *v39 = v21;
                  }

                  goto LABEL_26;
                }
              }

              v23 = [v20 countByEnumeratingWithState:&v42 objects:v55 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

          p_info = (&OBJC_METACLASS___CKKSMemoryKeyCache + 32);
          v11 = v19;
          v4 = v15;
        }

        v12 = v38 + 1;
        v7 = v40;
        v9 = v36;
        p_info = (&OBJC_METACLASS___CKKSMemoryKeyCache + 32);
        v11 = v19;
        v4 = v15;
        if ((v38 + 1) != v37)
        {
          continue;
        }

        break;
      }

      v8 = [v40 countByEnumeratingWithState:&v47 objects:v56 count:16];
      v28 = 1;
    }

    while (v8);
  }

  else
  {
    v28 = 1;
  }

LABEL_28:

  return v28;
}

- (id)resyncLocal
{
  v3 = [CKKSLocalSynchronizeOperation alloc];
  v4 = [(CKKSKeychainView *)self operationDependencies];
  v5 = [(CKKSLocalSynchronizeOperation *)v3 initWithCKKSKeychainView:self operationDependencies:v4];

  [(CKKSKeychainView *)self scheduleOperation:v5];

  return v5;
}

- (id)resyncWithCloud
{
  v3 = [CKKSSynchronizeOperation alloc];
  v4 = [(CKKSKeychainView *)self operationDependencies];
  v5 = [(CKKSSynchronizeOperation *)v3 initWithCKKSKeychainView:self dependencies:v4];

  [(CKKSKeychainView *)self scheduleOperation:v5];

  return v5;
}

- (void)xpc24HrNotification
{
  v2 = [(CKKSKeychainView *)self stateMachine];
  [v2 handleFlag:@"24_hr_notification"];
}

- (void)initialSyncStatus:(id)a3 reply:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B9644;
  v7[3] = &unk_100343D18;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(CKKSKeychainView *)v8 dispatchSyncWithReadOnlySQLTransaction:v7];
}

- (void)pcsMirrorKeysForServices:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1001B985C;
  v14 = &unk_100343EC8;
  objc_copyWeak(&v17, &location);
  v8 = v6;
  v15 = v8;
  v9 = v7;
  v16 = v9;
  v10 = [CKKSResultOperation named:@"pcs-mirror-keys" withBlock:&v11];
  [(CKKSKeychainView *)self scheduleOperation:v10, v11, v12, v13, v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)toggleHavoc:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = [(CKKSKeychainView *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B9C24;
  v6[3] = &unk_100344E90;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  (*(v4 + 2))(v4, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)scanLocalItems
{
  v2 = [(CKKSKeychainView *)self stateMachine];
  [v2 handleFlag:@"dropped_items"];
}

- (id)rpcWaitForPriorityViewProcessing
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1001B1C08;
  v11 = sub_1001B1C18;
  v12 = 0;
  v3 = [(CKKSKeychainView *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B9FF4;
  v6[3] = &unk_100344E90;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)rpcProcessIncomingQueue:(id)a3 errorOnClassAFailure:(BOOL)a4
{
  if (a4)
  {
    v24 = @"become_ready";
    v5 = +[OctagonStateTransitionPathStep success];
    v25 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  }

  else
  {
    v22[0] = @"become_ready";
    v5 = +[OctagonStateTransitionPathStep success];
    v22[1] = @"class_a_incoming_items_remaining";
    v23[0] = v5;
    v20 = @"become_ready";
    v7 = +[OctagonStateTransitionPathStep success];
    v21 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v23[1] = v8;
    v6 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  }

  v18 = @"process_incoming_queue";
  v19 = v6;
  v9 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v10 = [OctagonStateTransitionPath pathFromDictionary:v9];
  v11 = [OctagonStateTransitionWatcher alloc];
  v12 = [(CKKSKeychainView *)self stateMachine];
  v13 = [(OctagonStateTransitionWatcher *)v11 initNamed:@"process-incoming-queue" stateMachine:v12 path:v10 initialRequest:0];

  v14 = [(CKKSKeychainView *)self stateMachine];
  [v14 registerStateTransitionWatcher:v13 startTimeout:300000000000];

  v15 = [(CKKSKeychainView *)self stateMachine];
  [v15 handleFlag:@"process_incoming_queue"];

  v16 = [v13 result];

  return v16;
}

- (id)rpcFetchAndProcessIncomingQueue:(id)a3 because:(id)a4 errorOnClassAFailure:(BOOL)a5
{
  v5 = a5;
  v37 = a3;
  v38 = a4;
  v48 = 0;
  LOBYTE(a4) = [(CKKSKeychainView *)self waitForPolicy:5000000000 error:&v48];
  v8 = v48;
  v36 = v8;
  if (a4)
  {
    if (v5)
    {
      v73 = @"become_ready";
      v9 = +[OctagonStateTransitionPathStep success];
      v74 = v9;
      v35 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    }

    else
    {
      v71[0] = @"become_ready";
      v9 = +[OctagonStateTransitionPathStep success];
      v71[1] = @"class_a_incoming_items_remaining";
      v72[0] = v9;
      v69 = @"become_ready";
      v13 = +[OctagonStateTransitionPathStep success];
      v70 = v13;
      v14 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v72[1] = v14;
      v35 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:2];
    }

    v67 = @"begin_fetch";
    v65 = @"fetching";
    v63 = @"fetchcomplete";
    v61 = @"process_key_hierarchy";
    v59 = @"check_zone_hierarchies";
    v55 = @"process_incoming_queue";
    v56 = v35;
    v57[0] = @"heal_tlk_shares";
    v34 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v57[1] = @"tlkmissing";
    v58[0] = v34;
    v53 = @"check_zone_hierarchies";
    v49 = @"process_incoming_queue";
    v50 = v35;
    v51 = @"heal_tlk_shares";
    v15 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v52 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v54 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v58[1] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];
    v60 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v62 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v64 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v66 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v68 = v22;
    v33 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];

    v23 = [OctagonStateTransitionPath pathFromDictionary:v33];
    v24 = [OctagonStateTransitionWatcher alloc];
    v25 = [(CKKSKeychainView *)self stateMachine];
    v26 = [(OctagonStateTransitionWatcher *)v24 initNamed:@"fetch-and-process" stateMachine:v25 path:v23 initialRequest:0];

    v27 = [(CKKSKeychainView *)self stateMachine];
    [v27 registerStateTransitionWatcher:v26 startTimeout:300000000000];

    v28 = [(CKKSKeychainView *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001BAD1C;
    block[3] = &unk_100343E38;
    block[4] = self;
    v45 = v38;
    dispatch_sync(v28, block);

    objc_initWeak(&location, self);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1001BADA8;
    v39[3] = &unk_100343E80;
    objc_copyWeak(&v42, &location);
    v29 = v26;
    v40 = v29;
    v41 = v37;
    v10 = [CKKSResultOperation named:@"check-keys" withBlockTakingSelf:v39];
    v30 = [v29 result];
    [v10 addDependency:v30];

    v31 = [(CKKSKeychainView *)self operationQueue];
    [v31 addOperation:v10];

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);

    v12 = v35;
  }

  else
  {
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1001BAD10;
    v46[3] = &unk_100343BA0;
    v47 = v8;
    v10 = [CKKSResultOperation named:@"fail" withBlockTakingSelf:v46];
    v11 = [(CKKSKeychainView *)self operationQueue];
    [v11 addOperation:v10];

    v12 = v47;
  }

  return v10;
}

- (id)rpcFetchBecause:(id)a3
{
  v4 = a3;
  v38 = 0;
  v5 = [(CKKSKeychainView *)self waitForPolicy:5000000000 error:&v38];
  v6 = v38;
  v7 = v6;
  if (v5)
  {
    v53 = @"begin_fetch";
    v30 = v6;
    v31 = v4;
    v51 = @"fetching";
    v49[0] = @"fetchcomplete";
    v29 = +[OctagonStateTransitionPathStep success];
    v49[1] = @"resetlocal";
    v50[0] = v29;
    v47 = @"initializing";
    v45 = @"initialized";
    v43 = @"begin_fetch";
    v41 = @"fetching";
    v39 = @"fetchcomplete";
    v28 = +[OctagonStateTransitionPathStep success];
    v40 = v28;
    v8 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v42 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v44 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v46 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v48 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v50[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
    v52 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v54 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v16 = [OctagonStateTransitionPath pathFromDictionary:v15];

    v4 = v31;
    v17 = [OctagonStateTransitionWatcher alloc];
    v18 = [(CKKSKeychainView *)self stateMachine];
    v19 = [(OctagonStateTransitionWatcher *)v17 initNamed:@"rpc-fetch" stateMachine:v18 path:v16 initialRequest:0];

    v20 = [(CKKSKeychainView *)self stateMachine];
    [v20 registerStateTransitionWatcher:v19 startTimeout:300000000000];

    v21 = [(CKKSKeychainView *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001BB678;
    block[3] = &unk_100343E38;
    block[4] = self;
    v35 = v31;
    dispatch_sync(v21, block);

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1001BB704;
    v32[3] = &unk_100343BA0;
    v33 = v19;
    v22 = v19;
    v23 = [CKKSResultOperation named:@"check-keys" withBlockTakingSelf:v32];
    v24 = [v22 result];
    [v23 addDependency:v24];

    v25 = [(CKKSKeychainView *)self operationQueue];
    [v25 addOperation:v23];

    v7 = v30;
  }

  else
  {
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1001BB66C;
    v36[3] = &unk_100343BA0;
    v37 = v6;
    v23 = [CKKSResultOperation named:@"fail" withBlockTakingSelf:v36];
    v26 = [(CKKSKeychainView *)self operationQueue];
    [v26 addOperation:v23];

    v16 = v37;
  }

  return v23;
}

- (id)resultsOfNextProcessIncomingQueueOperation
{
  v3 = [(CKKSKeychainView *)self resultsOfNextIncomingQueueOperationOperation];
  if (!v3 || (v4 = v3, -[CKKSKeychainView resultsOfNextIncomingQueueOperationOperation](self, "resultsOfNextIncomingQueueOperationOperation"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isPending], v5, v4, (v6 & 1) == 0))
  {
    v7 = [NSString stringWithFormat:@"wait-for-next-incoming-queue-operation"];
    v8 = [CKKSResultOperation named:v7 withBlock:&stru_100343E58];
    [(CKKSKeychainView *)self setResultsOfNextIncomingQueueOperationOperation:v8];
  }

  v9 = [(CKKSKeychainView *)self resultsOfNextIncomingQueueOperationOperation];

  return v9;
}

- (void)_onqueueProcessOutgoingQueue:(id)a3 priorityRush:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CKKSKeychainView *)self queue];
  dispatch_assert_queue_V2(v7);

  if (v6)
  {
    v8 = [(CKKSKeychainView *)self operationDependencies];
    v9 = [v8 currentOutgoingQueueOperationGroup];

    if (v9)
    {
      v10 = [(CKKSKeychainView *)self zoneName];
      v11 = sub_100019104(@"ckks", v10);

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v6 name];
        v13 = [(CKKSKeychainView *)self operationDependencies];
        v14 = [v13 ckoperationGroup];
        v15 = [v14 name];
        v18 = 138412546;
        v19 = v12;
        v20 = 2112;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Throwing away CKOperationGroup(%@) in favor of (%@)", &v18, 0x16u);
      }
    }

    else
    {
      v11 = [(CKKSKeychainView *)self operationDependencies];
      [v11 setCurrentOutgoingQueueOperationGroup:v6];
    }
  }

  v16 = [(CKKSKeychainView *)self stateMachine];
  [v16 _onqueueHandleFlag:@"process_outgoing_queue"];

  if (v4)
  {
    [(CKKSKeychainView *)self outgoingQueuePriorityOperationScheduler];
  }

  else
  {
    [(CKKSKeychainView *)self outgoingQueueOperationScheduler];
  }
  v17 = ;
  [v17 trigger];
}

- (id)rpcProcessOutgoingQueue:(id)a3 operationGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1001B1C08;
  v34 = sub_1001B1C18;
  v35 = 0;
  v8 = [(CKKSKeychainView *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BBE38;
  block[3] = &unk_100344920;
  block[4] = self;
  v29 = &v30;
  v9 = v6;
  v28 = v9;
  dispatch_sync(v8, block);

  if (v31[5])
  {
    [(CKKSKeychainView *)self scheduleOperation:?];
    v10 = v31[5];
  }

  else
  {
    v38 = @"process_outgoing_queue";
    v36 = @"become_ready";
    v11 = +[OctagonStateTransitionPathStep success];
    v37 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v39 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];

    v14 = [OctagonStateTransitionPath pathFromDictionary:v13];
    v15 = [OctagonStateTransitionWatcher alloc];
    v16 = [(CKKSKeychainView *)self stateMachine];
    v17 = [(OctagonStateTransitionWatcher *)v15 initNamed:@"push" stateMachine:v16 path:v14 initialRequest:0];

    v18 = [(CKKSKeychainView *)self stateMachine];
    [v18 registerStateTransitionWatcher:v17 startTimeout:300000000000];

    v19 = [(CKKSKeychainView *)self queue];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1001BC114;
    v24 = &unk_100343E38;
    v25 = self;
    v26 = v7;
    dispatch_sync(v19, &v21);

    v10 = [v17 result];
  }

  _Block_object_dispose(&v30, 8);

  return v10;
}

- (id)findFirstPendingOperation:(id)a3 ofClass:(Class)a4
{
  v5 = a3;
  objc_sync_enter(v5);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (v10 && [*(*(&v13 + 1) + 8 * i) isPending] && (!a4 || (objc_opt_isKindOfClass() & 1) != 0))
        {
          v11 = v10;
          goto LABEL_14;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_14:

  objc_sync_exit(v6);

  return v11;
}

- (id)viewsRequiringTLKUpload
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1001B1C08;
  v11 = sub_1001B1C18;
  v12 = 0;
  v3 = [(CKKSKeychainView *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001BC5F4;
  v6[3] = &unk_100344E90;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)receiveTLKUploadRecords:(id)a3
{
  v4 = a3;
  v5 = [(CKKSKeychainView *)self zoneName];
  v6 = sub_100019104(@"ckkskey", v5);

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = [v4 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received a set of %lu TLK upload records", buf, 0xCu);
  }

  if (v4 && [v4 count])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001BC7B8;
    v7[3] = &unk_100343B50;
    v8 = v4;
    v9 = self;
    [(CKKSKeychainView *)self dispatchSyncWithSQLTransaction:v7];
  }
}

- (id)findKeySets:(BOOL)a3
{
  if (a3)
  {
    v4 = [(CKKSKeychainView *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001BCA64;
    block[3] = &unk_100346018;
    block[4] = self;
    dispatch_sync(v4, block);
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1001B1C08;
  v12 = sub_1001B1C18;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BCAF4;
  v7[3] = &unk_100344E90;
  v7[4] = self;
  v7[5] = &v8;
  [(CKKSKeychainView *)self dispatchSyncWithReadOnlySQLTransaction:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)sendMetricForFirstManateeAccess
{
  v3 = [(CKKSKeychainView *)self operationDependencies];
  v4 = [v3 sendMetric];

  if (v4)
  {
    v5 = [AAFAnalyticsEventSecurity alloc];
    v6 = [(CKKSKeychainView *)self operationDependencies];
    v7 = [v6 activeAccount];
    v8 = [v7 altDSID];
    v9 = kSecurityRTCEventNameFirstManateeKeyFetch;
    v10 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    v11 = [(CKKSKeychainView *)self operationDependencies];
    v12 = [v5 initWithCKKSMetrics:&__NSDictionary0__struct altDSID:v8 eventName:v9 testsAreEnabled:0 category:v10 sendMetric:{objc_msgSend(v11, "sendMetric")}];

    [v12 sendMetricWithResult:1 error:0];
  }
}

- (void)decryptCurrentItems:(id)a3 cache:(id)a4 complete:(id)a5
{
  v7 = a3;
  v8 = a4;
  v45 = a5;
  v9 = objc_alloc_init(NSMutableArray);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v7;
  v53 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
  v10 = 0;
  if (v53)
  {
    v52 = *v59;
    v46 = kSecAttrViewHintManatee;
    v47 = v8;
LABEL_3:
    v11 = 0;
    while (1)
    {
      v56 = v10;
      if (*v59 != v52)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v58 + 1) + 8 * v11);
      context = objc_autoreleasePoolPush();
      v13 = [CKKSItem alloc];
      v14 = [v12 item];
      v15 = [(CKKSKeychainView *)self operationDependencies];
      v16 = [v15 contextID];
      v17 = [(CKKSItem *)v13 initWithCKRecord:v14 contextID:v16];

      v18 = [(CKKSKeychainView *)self operationDependencies];
      v57 = 0;
      v19 = v17;
      v20 = [CKKSIncomingQueueOperation decryptCKKSItemToAttributes:v17 keyCache:v8 ckksOperationalDependencies:v18 error:&v57];
      v21 = v57;

      if (v21)
      {
        v22 = sub_100019104(@"ckks-oob", 0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v63 = v19;
          v64 = 2112;
          v65 = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "error decrypting item record(%@): %@", buf, 0x16u);
        }

        v23 = 0;
        v9 = 0;
        v10 = v21;
        v24 = v56;
      }

      else
      {
        v50 = v19;
        v51 = v20;
        v25 = [v12 itemPtr];
        v26 = [v25 itemPtrName];
        v24 = [v26 componentsSeparatedByString:@"-"];

        v27 = [v24 count];
        v23 = v27 == 2;
        if (v27 == 2)
        {
          v28 = [v24 objectAtIndexedSubscript:0];
          v29 = [v24 objectAtIndexedSubscript:1];
          v30 = [CKKSCurrentItemQueryResult alloc];
          v31 = [v12 itemPtr];
          v32 = [v31 zoneID];
          v48 = v28;
          v33 = [v30 initWithIdentifier:v29 accessGroup:v28 zoneID:v32 decryptedRecord:v51];
          [(CKKSItem *)v9 addObject:v33];

          if (![(CKKSKeychainView *)self firstManateeKeyFetched])
          {
            v34 = [v12 itemPtr];
            v35 = [v34 zoneID];
            v36 = [v35 isEqualToString:v46];

            if (v36)
            {
              [(CKKSKeychainView *)self setFirstManateeKeyFetched:1];
              [(CKKSKeychainView *)self sendMetricForFirstManateeAccess];
            }
          }

          v8 = v47;
          v10 = v56;
          v20 = v51;
          v23 = 1;
          v37 = v48;
        }

        else
        {
          v38 = sub_100019104(@"ckks-oob", 0);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v40 = [v12 itemPtr];
            v41 = [v40 itemPtrName];
            *buf = 138412290;
            v63 = v41;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "unexpected item pointer name format: %@", buf, 0xCu);

            v8 = v47;
          }

          v42 = [v12 itemPtr];
          v29 = [v42 itemPtrName];
          v43 = [NSString stringWithFormat:@"Item pointer name %@ does not match expected format", v29];
          v10 = [NSError errorWithDomain:@"CKKSErrorDomain" code:20 description:v43];

          v37 = v42;
          v9 = 0;
          v20 = v51;
        }

        v19 = v50;
      }

      objc_autoreleasePoolPop(context);
      if (!v23)
      {
        break;
      }

      if (v53 == ++v11)
      {
        v53 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
        if (v53)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (v9)
  {
    v44 = sub_100019104(@"ckks-oob", 0);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v63 = v9;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Successfully retrieved current items: %@", buf, 0xCu);
    }
  }

  v45[2](v45, v9, v10);
}

- (void)decryptPCSIdentities:(id)a3 cache:(id)a4 complete:(id)a5
{
  v8 = a3;
  v9 = a4;
  v37 = a5;
  v10 = objc_alloc_init(NSMutableArray);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v8;
  v49 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
  v11 = 0;
  if (v49)
  {
    v48 = *v53;
    v38 = kSecAttrViewHintManatee;
    v39 = self;
    v40 = v9;
    while (2)
    {
      for (i = 0; i != v49; i = i + 1)
      {
        if (*v53 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v52 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v14 = [CKKSItem alloc];
        v15 = [v13 item];
        v16 = [(CKKSKeychainView *)self operationDependencies];
        v17 = [v16 contextID];
        v18 = [(CKKSItem *)v14 initWithCKRecord:v15 contextID:v17];

        v19 = v18;
        v20 = [(CKKSKeychainView *)self operationDependencies];
        v51 = 0;
        [CKKSIncomingQueueOperation decryptCKKSItemToAttributes:v18 keyCache:v9 ckksOperationalDependencies:v20 error:&v51];
        v22 = v21 = v9;
        v23 = v51;

        if (v23)
        {
          v24 = v21;
          v25 = sub_100019104(@"ckks-oob", 0);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v57 = v19;
            v58 = 2112;
            v59 = v23;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "error decrypting pcs item record(%@): %@", buf, 0x16u);
          }

          v26 = v23;
          v10 = 0;
          v11 = v26;
        }

        else
        {
          v45 = v19;
          v46 = v11;
          v47 = [CKKSPCSIdentityQueryResult alloc];
          v43 = [v13 service];
          v27 = [v43 PCSServiceID];
          v42 = [v13 service];
          v28 = [v42 PCSPublicKey];
          v29 = [v28 base64EncodedStringWithOptions:0];
          v30 = [v13 service];
          v31 = [v30 zoneID];
          v44 = v22;
          v32 = [v47 initWithServiceNumber:v27 publicKey:v29 zoneID:v31 decryptedRecord:v22];
          [(CKKSItem *)v10 addObject:v32];

          self = v39;
          if ([(CKKSKeychainView *)v39 firstManateeKeyFetched])
          {
            v24 = v40;
            v11 = v46;
          }

          else
          {
            v33 = [v13 service];
            v34 = [v33 zoneID];
            v35 = [v34 isEqualToString:v38];

            v11 = v46;
            if (v35)
            {
              [(CKKSKeychainView *)v39 setFirstManateeKeyFetched:1];
              [(CKKSKeychainView *)v39 sendMetricForFirstManateeAccess];
            }

            v24 = v40;
          }

          v22 = v44;
          v19 = v45;
        }

        objc_autoreleasePoolPop(context);
        if (v23)
        {
          v9 = v24;
          goto LABEL_21;
        }

        v9 = v24;
      }

      v49 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v49)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  if (v10)
  {
    v36 = sub_100019104(@"ckks-oob", 0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = v10;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Successfully retrieved identities: %@", buf, 0xCu);
    }
  }

  v37[2](v37, v10, v11);
}

- (BOOL)unwrapKeysAndSaveToCache:(id)a3 syncKeys:(id)a4 error:(id *)a5
{
  v7 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = a4;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v24 = a5;
    v11 = *v28;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v26 = 0;
        v14 = [v13 unwrapViaKeyHierarchy:v7 error:&v26];
        v15 = v26;
        if (v15)
        {
          v20 = v15;
          v21 = sub_100019104(@"ckks-oob", 0);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v32 = v13;
            v33 = 2112;
            v34 = v20;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unable to decrypt synckey %@: %@", buf, 0x16u);
          }

          if (v24)
          {
            v22 = v20;
            *v24 = v20;
          }

          v19 = 0;
          goto LABEL_19;
        }

        v16 = [v13 uuid];
        [v7 addKeyToCache:v16 key:v13];

        v25 = 0;
        [v13 saveKeyMaterialToKeychain:&v25];
        v17 = v25;
        if (v17)
        {
          v18 = sub_100019104(@"ckks-oob", 0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v32 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Errored saving synckey to keychain: %@", buf, 0xCu);
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_19:

  return v19;
}

- (BOOL)unwrapTLKAndSaveToCache:(id)a3 tlks:(id)a4 tlkShares:(id)a5 error:(id *)a6
{
  v35 = a3;
  v9 = a4;
  v10 = a5;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v9;
  v33 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v33)
  {
    v30 = a6;
    v32 = *v44;
LABEL_3:
    v11 = 0;
    while (2)
    {
      if (*v44 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v43 + 1) + 8 * v11);
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v13 = [(CKKSKeychainView *)self operationDependencies];
      v14 = [v13 peerProviders];

      v15 = [v14 countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (v15)
      {
        v16 = v15;
        v36 = v11;
        v17 = 0;
        v18 = *v40;
LABEL_8:
        v19 = 0;
        v20 = v17;
        while (1)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v21 = [*(*(&v39 + 1) + 8 * v19) currentState];
          v38 = v20;
          v22 = [v21 unwrapKey:v12 fromShares:v10 error:&v38];
          v17 = v38;

          if (v22)
          {
            break;
          }

          if (v17)
          {
            v23 = sub_100019104(@"ckks-oob", 0);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v48 = v12;
              v49 = 2112;
              v50 = v17;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Errored unwrapping TLK %@: %@", buf, 0x16u);
            }
          }

          v19 = v19 + 1;
          v20 = v17;
          if (v16 == v19)
          {
            v16 = [v14 countByEnumeratingWithState:&v39 objects:v51 count:16];
            if (v16)
            {
              goto LABEL_8;
            }

            goto LABEL_28;
          }
        }

        v24 = [v12 uuid];
        [v35 addKeyToCache:v24 key:v12];

        v37 = 0;
        [v12 saveKeyMaterialToKeychain:&v37];
        v25 = v37;
        if (v25)
        {
          v26 = sub_100019104(@"ckks-oob", 0);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v48 = v25;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Errored saving TLK to keychain: %@", buf, 0xCu);
          }
        }

        v11 = v36 + 1;
        if ((v36 + 1) != v33)
        {
          continue;
        }

        v27 = 1;
        v33 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v33)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v17 = 0;
LABEL_28:

        if (v30)
        {
          v28 = [NSString stringWithFormat:@"No trusted TLKShares for %@", v12];
          *v30 = [NSError errorWithDomain:@"CKKSErrorDomain" code:35 description:v28 underlying:v17];
        }

        v27 = 0;
      }

      break;
    }
  }

  else
  {
    v27 = 1;
  }

  return v27;
}

- (void)fetchPCSIdentityOutOfBand:(id)a3 forceFetch:(BOOL)a4 complete:(id)a5
{
  v6 = a4;
  v49 = a3;
  v8 = a5;
  v9 = [(CKKSKeychainView *)self accountStateKnown];
  [v9 wait:1000000000];

  v10 = [(CKKSKeychainView *)self accountStatus];
  if (!v10)
  {
    v50 = [NSError errorWithDomain:@"CKKSErrorDomain" code:64 description:@"iCloud account status unknown."];
    goto LABEL_25;
  }

  if (v10 != 1 || ([(CKKSKeychainView *)self cuttlefishAdapter], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v50 = [NSError errorWithDomain:@"CKKSErrorDomain" code:10 description:@"User is not signed into iCloud."];
LABEL_25:
    v35 = [(CKKSKeychainView *)self zoneName];
    v36 = sub_100019104(@"ckks-oob", v35);

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v60 = v50;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Rejecting PCS Identity requests since we don't have an iCloud account: %@", buf, 0xCu);
    }

    v8[2](v8, 0, v50);
    goto LABEL_39;
  }

  v58 = 0;
  v12 = [(CKKSKeychainView *)self allowOutOfBandFetch:&v58];
  v50 = v58;
  if (v50)
  {
    v13 = sub_100019104(@"ckks-oob", 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"DISABLED";
      if (v6)
      {
        v14 = @"ENABLED";
      }

      *buf = 138412546;
      v60 = v14;
      v61 = 2112;
      v62 = v50;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Error fetching out of band fetch permission, relying on forceFetch enablement (%@) : %@", buf, 0x16u);
    }
  }

  if ((v12 | v6))
  {
    v47 = objc_alloc_init(NSMutableArray);
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v49;
    v15 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
    if (v15)
    {
      v16 = *v55;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v55 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v54 + 1) + 8 * i);
          v19 = [(__CFString *)v18 accessGroup];
          if (!v19 || ([(__CFString *)v18 zoneID], v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, v19, v21))
          {
            v38 = [(CKKSKeychainView *)self zoneName];
            v39 = sub_100019104(@"ckks-oob", v38);

            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v40 = [(__CFString *)v18 accessGroup];
              v41 = [(__CFString *)v18 zoneID];
              *buf = 138412802;
              v60 = v18;
              v61 = 2112;
              v62 = v40;
              v63 = 2112;
              v64 = v41;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Rejecting pcs service (%@) get since no access group(%@) or zoneID(%@) given", buf, 0x20u);
            }

            v42 = [NSString stringWithFormat:@"No access group or view given for PCS Service(%@)", v18];
            v43 = [NSError errorWithDomain:@"CKKSErrorDomain" code:-50 description:v42];
            v8[2](v8, 0, v43);

            goto LABEL_37;
          }

          v22 = [CuttlefishPCSServiceIdentifier alloc];
          v23 = [(__CFString *)v18 serviceNumber];
          v24 = [NSData alloc];
          v25 = [(__CFString *)v18 publicKey];
          v26 = [v24 initWithBase64EncodedString:v25 options:0];
          v27 = [(__CFString *)v18 zoneID];
          v28 = [(CuttlefishPCSServiceIdentifier *)v22 init:v23 PCSPublicKey:v26 zoneID:v27];
          [v47 addObject:v28];
        }

        v15 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v29 = [(CKKSKeychainView *)self accountsAdapter];
    v30 = [(CKKSKeychainView *)self personaAdapter];
    v31 = [(CKKSKeychainView *)self operationDependencies];
    v32 = [v31 contextID];
    v53 = 0;
    obj = [v29 findAccountForCurrentThread:v30 optionalAltDSID:0 cloudkitContainerName:@"com.apple.security.keychain" octagonContextID:v32 error:&v53];
    v33 = v53;

    if (!obj || v33)
    {
      v44 = sub_100019104(@"ckks-cuttlefish", 0);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v60 = @"defaultContext";
        v61 = 2112;
        v62 = v33;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "unable to determine active account for context(%@). Issues ahead: %@", buf, 0x16u);
      }

      v8[2](v8, 0, v33);
LABEL_37:
    }

    else
    {
      objc_initWeak(buf, self);
      v34 = [(CKKSKeychainView *)self cuttlefishAdapter];
      objc_copyWeak(&v52, buf);
      v51 = v8;
      obja = obj;
      [v34 fetchPCSIdentityByKey:? pcsservices:? reply:?];

      objc_destroyWeak(&v52);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v37 = sub_100019104(@"ckks-oob", 0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Out of band fetch disabled due to CKKS readiness", buf, 2u);
    }

    v48 = [NSError errorWithDomain:@"CKKSErrorDomain" code:67 description:@"Out of band fetch disabled due to CKKS readiness"];
    v8[2](v8, 0, v48);
  }

LABEL_39:
}

- (void)getCurrentItemOutOfBand:(id)a3 forceFetch:(BOOL)a4 complete:(id)a5
{
  v6 = a4;
  v50 = a3;
  v8 = a5;
  v9 = [(CKKSKeychainView *)self accountStateKnown];
  [v9 wait:1000000000];

  v10 = [(CKKSKeychainView *)self accountStatus];
  if (!v10)
  {
    v51 = [NSError errorWithDomain:@"CKKSErrorDomain" code:64 description:@"iCloud account status unknown."];
    goto LABEL_25;
  }

  if (v10 != 1 || ([(CKKSKeychainView *)self cuttlefishAdapter], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v51 = [NSError errorWithDomain:@"CKKSErrorDomain" code:10 description:@"User is not signed into iCloud."];
LABEL_25:
    v34 = [(CKKSKeychainView *)self zoneName];
    v35 = sub_100019104(@"ckks-oob", v34);

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v61 = v51;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Rejecting current item requests since we don't have an iCloud account: %@", buf, 0xCu);
    }

    v8[2](v8, 0, v51);
    goto LABEL_39;
  }

  v59 = 0;
  v12 = [(CKKSKeychainView *)self allowOutOfBandFetch:&v59];
  v51 = v59;
  if (v51)
  {
    v13 = sub_100019104(@"ckks-oob", 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"DISABLED";
      if (v6)
      {
        v14 = @"ENABLED";
      }

      *buf = 138412546;
      v61 = v14;
      v62 = 2112;
      v63 = v51;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Error fetching out of band fetch permission, relying on forceFetch enablement (%@) : %@", buf, 0x16u);
    }
  }

  if ((v12 | v6))
  {
    v48 = objc_alloc_init(NSMutableArray);
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v50;
    v15 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
    if (v15)
    {
      v16 = *v56;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v56 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v55 + 1) + 8 * i);
          v19 = [v18 zoneID];
          if (!v19 || ([v18 accessGroup], v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, v19, v21))
          {
            v37 = [(CKKSKeychainView *)self zoneName];
            v38 = sub_100019104(@"ckks-oob", v37);

            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              v39 = [v18 identifier];
              v40 = [v18 accessGroup];
              v41 = [v18 zoneID];
              *buf = 138412802;
              v61 = v39;
              v62 = 2112;
              v63 = v40;
              v64 = 2112;
              v65 = v41;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Rejecting current item pointer for identifier(%@) get since no access group(%@) or zoneID(%@) given", buf, 0x20u);
            }

            v42 = [v18 identifier];
            v43 = [NSString stringWithFormat:@"No access group or view given for identifier(%@)", v42];
            v44 = [NSError errorWithDomain:@"CKKSErrorDomain" code:-50 description:v43];
            v8[2](v8, 0, v44);

            goto LABEL_37;
          }

          v22 = [CuttlefishCurrentItemSpecifier alloc];
          v23 = [v18 accessGroup];
          v24 = [v18 identifier];
          v25 = [NSString stringWithFormat:@"%@-%@", v23, v24];
          v26 = [v18 zoneID];
          v27 = [(CuttlefishCurrentItemSpecifier *)v22 init:v25 zoneID:v26];
          [v48 addObject:v27];
        }

        v15 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v28 = [(CKKSKeychainView *)self accountsAdapter];
    v29 = [(CKKSKeychainView *)self personaAdapter];
    v30 = [(CKKSKeychainView *)self operationDependencies];
    v31 = [v30 contextID];
    v54 = 0;
    obj = [v28 findAccountForCurrentThread:v29 optionalAltDSID:0 cloudkitContainerName:@"com.apple.security.keychain" octagonContextID:v31 error:&v54];
    v32 = v54;

    if (!obj || v32)
    {
      v45 = sub_100019104(@"ckks-cuttlefish", 0);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v61 = @"defaultContext";
        v62 = 2112;
        v63 = v32;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "unable to determine active account for context(%@). Issues ahead: %@", buf, 0x16u);
      }

      v8[2](v8, 0, v32);
LABEL_37:
    }

    else
    {
      objc_initWeak(buf, self);
      v33 = [(CKKSKeychainView *)self cuttlefishAdapter];
      objc_copyWeak(&v53, buf);
      v52 = v8;
      obja = obj;
      [v33 fetchCurrentItem:? items:? reply:?];

      objc_destroyWeak(&v53);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v36 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Out of band fetch disabled due to CKKS readiness", buf, 2u);
    }

    v49 = [NSError errorWithDomain:@"CKKSErrorDomain" code:67 description:@"Out of band fetch disabled due to CKKS readiness"];
    v8[2](v8, 0, v49);
  }

LABEL_39:
}

- (void)getCurrentItemForAccessGroup:(id)a3 identifier:(id)a4 viewHint:(id)a5 fetchCloudValue:(BOOL)a6 complete:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (v8)
  {
    v16 = 0;
  }

  else
  {
    v16 = [v14 isEqualToString:@"ProtectedCloudStorage"];
  }

  v40 = 0;
  v17 = [(CKKSKeychainView *)self zoneIDForViewHint:v14 pcsShortcut:v16 error:&v40];
  v18 = v40;
  if (v17)
  {
    if (v12 && v13)
    {
      if ((v16 & 1) != 0 || (-[CKKSKeychainView accountStateKnown](self, "accountStateKnown"), v19 = objc_claimAutoreleasedReturnValue(), [v19 wait:30000000000], v19, v20 = -[CKKSKeychainView accountStatus](self, "accountStatus"), v20 == 1))
      {
        if (v8)
        {
          v24 = [NSSet setWithObject:v14];
          v25 = [(CKKSKeychainView *)self rpcFetchAndProcessIncomingQueue:v24 because:@"currentitemcheck" errorOnClassAFailure:0];
        }

        else
        {
          v25 = 0;
        }

        objc_initWeak(buf, self);
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1001C067C;
        v31[3] = &unk_100344738;
        v26 = v25;
        v32 = v26;
        v33 = self;
        v38 = v15;
        objc_copyWeak(&v39, buf);
        v34 = v12;
        v35 = v13;
        v36 = v14;
        v37 = v17;
        v27 = [CKKSResultOperation named:@"get-current-item-pointer" withBlock:v31];
        [v27 addNullableDependency:v26];
        if (v16)
        {
          [(CKKSKeychainView *)self scheduleOperationWithoutDependencies:v27];
        }

        else
        {
          [(CKKSKeychainView *)self scheduleOperation:v27];
        }

        objc_destroyWeak(&v39);
        objc_destroyWeak(buf);
      }

      else
      {
        if (v20)
        {
          [NSError errorWithDomain:@"CKKSErrorDomain" code:10 description:@"User is not signed into iCloud."];
        }

        else
        {
          [NSError errorWithDomain:@"CKKSErrorDomain" code:64 description:@"iCloud account status unknown."];
        }
        v28 = ;
        v29 = [(CKKSKeychainView *)self zoneName];
        v30 = sub_100019104(@"ckkscurrent", v29);

        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v42 = v28;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Rejecting current item pointer get since we don't have an iCloud account: %@", buf, 0xCu);
        }

        (*(v15 + 2))(v15, 0, v28);
      }
    }

    else
    {
      v21 = [(CKKSKeychainView *)self zoneName];
      v22 = sub_100019104(@"ckkscurrent", v21);

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v42 = v12;
        v43 = 2112;
        v44 = v13;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Rejecting current item pointer get since no access group(%@) or identifier(%@) given", buf, 0x16u);
      }

      v23 = [NSError errorWithDomain:@"CKKSErrorDomain" code:-50 description:@"No access group or identifier given"];
      (*(v15 + 2))(v15, 0, v23);
    }
  }

  else
  {
    (*(v15 + 2))(v15, 0, v18);
  }
}

- (id)zoneIDForViewHint:(id)a3 pcsShortcut:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = 5000000000;
  }

  v18 = 0;
  v10 = [(CKKSKeychainView *)self policyDependentViewStateForName:v8 timeout:v9 error:&v18];
  v11 = v18;
  if (v10)
  {
    v12 = [v10 zoneID];
LABEL_6:
    v13 = v12;
    goto LABEL_7;
  }

  if (v6 && [v8 isEqualToString:@"ProtectedCloudStorage"])
  {
    v15 = [(CKKSKeychainView *)self zoneName];
    v16 = sub_100019104(@"ckkscurrent", v15);

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Unable to retrieve view state, using ProtectedCloudStorage: %@", buf, 0xCu);
    }

    v12 = [[CKRecordZoneID alloc] initWithZoneName:@"ProtectedCloudStorage" ownerName:CKCurrentUserDefaultName];
    goto LABEL_6;
  }

  if (a5)
  {
    v17 = v11;
    v13 = 0;
    *a5 = v11;
  }

  else
  {
    v13 = 0;
  }

LABEL_7:

  return v13;
}

- (void)unsetCurrentItemsForAccessGroup:(id)a3 identifiers:(id)a4 viewHint:(id)a5 complete:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v42 = 0;
  v13 = [(CKKSKeychainView *)self policyDependentViewStateForName:a5 error:&v42];
  v14 = v42;
  if (v13)
  {
    if (v10 && v11 && [v11 count])
    {
      v15 = [(CKKSKeychainView *)self accountStateKnown];
      [v15 wait:30000000000];

      v16 = [(CKKSKeychainView *)self accountStatus];
      if (v16 == 1)
      {
        v22 = [(CKKSKeychainView *)self zoneName];
        v23 = sub_100019104(@"ckkscurrent", v22);

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v11 count];
          *buf = 138412546;
          v44 = v10;
          v45 = 2048;
          v46 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Starting delete current item pointer(s) operation for %@ (%lu)", buf, 0x16u);
        }

        v25 = [CKKSDeleteCurrentItemPointersOperation alloc];
        v26 = [(CKKSKeychainView *)self operationDependencies];
        v27 = [CKOperationGroup CKKSGroupWithName:@"currentitem-api"];
        v28 = [(CKKSDeleteCurrentItemPointersOperation *)v25 initWithCKKSOperationDependencies:v26 viewState:v13 accessGroup:v10 identifiers:v11 ckoperationGroup:v27];

        v35 = _NSConcreteStackBlock;
        v36 = 3221225472;
        v37 = sub_1001C14D4;
        v38 = &unk_100343D18;
        v39 = v28;
        v40 = v13;
        v41 = v12;
        v29 = v28;
        v30 = [CKKSResultOperation operationWithBlock:&v35];
        [v30 setName:{@"unsetCurrentItems-return-callback", v35, v36, v37, v38}];
        [v30 addDependency:v29];
        [(CKKSKeychainView *)self scheduleOperation:v30];
        v31 = [(CKKSKeychainView *)self outgoingQueueOperations];
        [(CKKSDeleteCurrentItemPointersOperation *)v29 linearDependencies:v31];

        v32 = [(CKKSResultOperation *)v29 timeout:60000000000];
        [(CKKSKeychainView *)self scheduleOperation:v29];
      }

      else
      {
        if (v16)
        {
          v17 = @"User is not signed into iCloud.";
          v18 = 10;
        }

        else
        {
          v17 = @"iCloud account status unknown.";
          v18 = 64;
        }

        v29 = [NSError errorWithDomain:@"CKKSErrorDomain" code:v18 description:v17];
        v33 = [(CKKSKeychainView *)self zoneName];
        v34 = sub_100019104(@"ckkscurrent", v33);

        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = v29;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Rejecting current item pointer delete since we don't have an iCloud account: %@", buf, 0xCu);
        }

        (*(v12 + 2))(v12, v29);
      }
    }

    else
    {
      v19 = [(CKKSKeychainView *)self zoneName];
      v20 = sub_100019104(@"ckkscurrent", v19);

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v44 = v10;
        v45 = 2112;
        v46 = v11;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Rejecting current item pointer delete since no access group(%@) or identifiers(%@) given", buf, 0x16u);
      }

      v21 = [NSError errorWithDomain:@"CKKSErrorDomain" code:-50 description:@"No access group or identifier given"];
      (*(v12 + 2))(v12, v21);
    }
  }

  else
  {
    (*(v12 + 2))(v12, v14);
  }
}

- (void)setCurrentItemForAccessGroup:(id)a3 hash:(id)a4 accessGroup:(id)a5 identifier:(id)a6 viewHint:(id)a7 replacing:(id)a8 hash:(id)a9 complete:(id)a10
{
  v54 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v59 = 0;
  v22 = [(CKKSKeychainView *)self policyDependentViewStateForName:a7 error:&v59];
  v23 = v59;
  v24 = v23;
  if (v22)
  {
    if (v17 && v18)
    {
      v25 = [(CKKSKeychainView *)self accountStateKnown];
      [v25 wait:30000000000];

      v26 = [(CKKSKeychainView *)self accountStatus];
      v53 = v19;
      if (v26 == 1)
      {
        v52 = v16;
        v38 = [(CKKSKeychainView *)self zoneName];
        v39 = sub_100019104(@"ckkscurrent", v38);

        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v61 = v17;
          v62 = 2112;
          v63 = v18;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Starting change current pointer operation for %@-%@", buf, 0x16u);
        }

        v40 = [CKKSUpdateCurrentItemPointerOperation alloc];
        v41 = [(CKKSKeychainView *)self operationDependencies];
        v42 = [CKOperationGroup CKKSGroupWithName:@"currentitem-api"];
        v43 = [(CKKSUpdateCurrentItemPointerOperation *)v40 initWithCKKSOperationDependencies:v41 viewState:v22 newItem:v54 hash:v52 accessGroup:v17 identifier:v18 replacing:v53 hash:v20 ckoperationGroup:v42];

        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_1001C1B8C;
        v55[3] = &unk_100343D18;
        v56 = v43;
        v57 = v22;
        v58 = v21;
        v44 = v43;
        v45 = [CKKSResultOperation operationWithBlock:v55];
        [v45 setName:@"setCurrentItem-return-callback"];
        [v45 addDependency:v44];
        [(CKKSKeychainView *)self scheduleOperation:v45];
        v46 = [(CKKSKeychainView *)self outgoingQueueOperations];
        [(CKKSUpdateCurrentItemPointerOperation *)v44 linearDependencies:v46];

        v19 = v53;
        v47 = [(CKKSResultOperation *)v44 timeout:60000000000];
        [(CKKSKeychainView *)self scheduleOperation:v44];

        v16 = v52;
      }

      else
      {
        v27 = v16;
        if (v26)
        {
          v28 = @"User is not signed into iCloud.";
          v29 = 10;
        }

        else
        {
          v28 = @"iCloud account status unknown.";
          v29 = 64;
        }

        v48 = [NSError errorWithDomain:@"CKKSErrorDomain" code:v29 description:v28];
        v49 = [(CKKSKeychainView *)self zoneName];
        v50 = sub_100019104(@"ckkscurrent", v49);

        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v61 = v48;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Rejecting current item pointer set since we don't have an iCloud account: %@", buf, 0xCu);
        }

        (*(v21 + 2))(v21, v48);
        v16 = v27;
        v19 = v53;
      }
    }

    else
    {
      v51 = v17;
      v30 = v23;
      v31 = v18;
      v32 = v20;
      v33 = v19;
      v34 = v16;
      v35 = [NSError errorWithDomain:@"CKKSErrorDomain" code:-50 description:@"No access group or identifier given"];
      v36 = [(CKKSKeychainView *)self zoneName];
      v37 = sub_100019104(@"ckkscurrent", v36);

      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v61 = v35;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Cancelling request: %@", buf, 0xCu);
      }

      (*(v21 + 2))(v21, v35);
      v16 = v34;
      v19 = v33;
      v20 = v32;
      v18 = v31;
      v24 = v30;
      v17 = v51;
    }
  }

  else
  {
    (*(v21 + 2))(v21, v23);
  }
}

- (void)handleKeychainEventDbConnection:(__OpaqueSecDbConnection *)a3 source:(unint64_t)a4 added:(SecDbItem *)a5 deleted:(SecDbItem *)a6 rateLimiter:(id)a7
{
  v84 = a7;
  if ((sub_100019064() & 1) == 0)
  {
    v17 = [(CKKSKeychainView *)self zoneName];
    v13 = sub_100019104(@"ckks", v17);

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skipping handleKeychainEventDbConnection due to disabled CKKS", buf, 2u);
    }

    goto LABEL_107;
  }

  v81 = a3;
  v82 = a4;
  v83 = a6;
  if (a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = a6;
  }

  v13 = [CKKSKey isItemKeyForKeychainView:v12];
  if (v13)
  {
    v14 = [(CKKSKeychainView *)self zoneName];
    v15 = sub_100019104(@"ckks", v14);

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = v82;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Potential new key material from %@ (source %lu)", buf, 0x16u);
    }

    v16 = [(CKKSKeychainView *)self stateMachine];
    [v16 handleFlag:@"key_process_requested"];

    goto LABEL_107;
  }

  if (a5)
  {
    v18 = sub_100015D00(a5);
  }

  else
  {
    v18 = 0;
  }

  v19 = v83;
  if (v83)
  {
    v19 = sub_100015D00(v83);
  }

  if (((v18 | v19) & 1) == 0)
  {
    v30 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *&buf[4] = 0;
      *&buf[8] = 1024;
      *&buf[10] = 0;
      _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "skipping sync of non-sync item (%d, %d)", buf, 0xEu);
    }

    goto LABEL_31;
  }

  v77 = v19;
  if (!sub_1001636C4(v12))
  {
    v30 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Ignoring syncable keychain item for non-primary account", buf, 2u);
    }

LABEL_31:

    goto LABEL_106;
  }

  v76 = v18;
  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  v105 = 0;
  v20 = [(CKKSKeychainView *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C29FC;
  block[3] = &unk_1003472B0;
  block[5] = &v102;
  block[6] = v12;
  block[4] = self;
  dispatch_sync(v20, block);

  if ((v103[3] & 1) == 0)
  {
    [(CKKSKeychainView *)self notifyPasswordsOrPCSChangedForAddedItem:a5 modified:v12 deleted:v83];
    goto LABEL_105;
  }

  v21 = [(CKKSKeychainView *)self operationDependencies];
  v80 = [v21 viewNameForItem:v12];

  if (!v80)
  {
    v48 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "No intended CKKS view for item; skipping: %{private}@", buf, 0xCu);
    }

    [(CKKSKeychainView *)self notifyPasswordsOrPCSChangedForAddedItem:a5 modified:v12 deleted:v83];
    goto LABEL_104;
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v22 = [(CKKSKeychainView *)self operationDependencies];
  obj = [v22 allCKKSManagedViews];

  v23 = [obj countByEnumeratingWithState:&v97 objects:v115 count:16];
  if (!v23)
  {
    goto LABEL_28;
  }

  v24 = *v98;
  while (2)
  {
    for (i = 0; i != v23; i = i + 1)
    {
      if (*v98 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v97 + 1) + 8 * i);
      v27 = [v26 zoneID];
      v28 = [v27 zoneName];
      v29 = [v28 isEqualToString:v80];

      if (v29)
      {
        v31 = v26;

        if (!v31)
        {
          goto LABEL_42;
        }

        v32 = [v31 zoneID];
        v33 = [v32 zoneName];
        v34 = sub_100019104(@"ckks", v33);

        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412547;
          *&buf[4] = v80;
          *&buf[12] = 2113;
          *&buf[14] = v12;
          _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "Routing item to zone %@: %{private}@", buf, 0x16u);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v110 = sub_1001B1C08;
        v111 = sub_1001B1C18;
        v112 = 0;
        if (a5)
        {
          v35 = sub_10001A700(a5);
          v36 = v83;
          if (!v83)
          {
            LOBYTE(v37) = 0;
            LOBYTE(v38) = 0;
            v39 = 1;
            v40 = v76;
            v41 = v77;
            goto LABEL_67;
          }
        }

        else
        {
          v35 = 0;
          if (!v83)
          {
            v50 = 1;
            v36 = 0;
            v38 = 0;
            v49 = 0;
LABEL_52:
            if (a5)
            {
              v51 = v49 == 0;
            }

            else
            {
              v51 = 1;
            }

            v37 = !v51;
            v39 = v37 & (v35 ^ 1) & v38;
            v41 = v77;
            if (v39)
            {
              v40 = v76;
            }

            else
            {
              v40 = v76;
              if (v37)
              {
                v39 = v76 & (v77 ^ 1);
              }
            }

            if (!v83)
            {
              v50 = 0;
            }

            if (v50)
            {
              if ((v37 & 1) == 0)
              {
                if ((v36 & 1) == 0)
                {
                  v53 = 0;
                  v52 = 1;
                  goto LABEL_81;
                }

                goto LABEL_77;
              }

              v52 = 1;
              goto LABEL_68;
            }

LABEL_67:
            v52 = v37 & v35 & (v38 ^ 1) | v37 & v41 & (v40 ^ 1);
            if ((v37 & 1) == 0)
            {
              v54 = v83;
              v55 = v35 ^ 1;
              if (v83)
              {
                v55 = 1;
              }

              if (!v55)
              {
                v54 = a5;
              }

              v83 = v54;
              if (!v36)
              {
                v53 = 0;
                v39 &= v55;
                v52 |= v55 ^ 1;
                goto LABEL_81;
              }

LABEL_77:
              v56 = [v31 zoneID];
              v57 = [v56 zoneName];
              v58 = sub_100019104(@"ckks", v57);

              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                *v106 = 67109376;
                *v107 = 1;
                *&v107[4] = 1024;
                *&v107[6] = 1;
                v59 = "skipping syncing update of tombstone item (%d, %d)";
                v60 = v58;
                v61 = 14;
LABEL_85:
                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, v59, v106, v61);
              }

LABEL_102:

              _Block_object_dispose(buf, 8);
              goto LABEL_103;
            }

LABEL_68:
            if ((v36 & 1) == 0)
            {
              v53 = (v39 | v52) ^ 1;
LABEL_81:
              if (v52 & 1) == 0 || (v35)
              {
                obja = v53;
                v64 = v83;
                if (a5)
                {
                  v65 = a5;
                }

                else
                {
                  v65 = v83;
                }

                v58 = sub_100015B5C(v65, kSecAttrAccessible);
                v67 = v81;
                v66 = v82;
                if (([v58 isEqualToString:kSecAttrAccessibleWhenUnlocked]& 1) != 0 || ([v58 isEqualToString:kSecAttrAccessibleAfterFirstUnlock]& 1) != 0 || ([v58 isEqualToString:kSecAttrAccessibleAlwaysPrivate]& 1) != 0)
                {
                  if (!v82)
                  {
                    v68 = sub_100015BFC(a5, &off_100343C98, 0);
                    v69 = [v31 zoneID];
                    v70 = [v69 zoneName];
                    v71 = sub_100019104(@"ckks", v70);

                    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                    {
                      v72 = @"deletion";
                      if (obja)
                      {
                        v72 = @"modification";
                      }

                      if (v39)
                      {
                        v72 = @"addition";
                      }

                      *v106 = 138412546;
                      *v107 = v72;
                      *&v107[8] = 2112;
                      v108 = v68;
                      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Received an incoming %@ from SOS (%@)", v106, 0x16u);
                    }

                    v66 = v82;
                    v64 = v83;
                    v67 = v81;
                  }

                  v73 = [(CKKSKeychainView *)self databaseProvider];
                  v85[0] = _NSConcreteStackBlock;
                  v85[1] = 3221225472;
                  v85[2] = sub_1001C2B00;
                  v85[3] = &unk_100343CF0;
                  v86 = v31;
                  v87 = self;
                  v94 = v39;
                  v89 = buf;
                  v90 = a5;
                  v95 = v52 & 1;
                  v96 = obja & 1;
                  v91 = v64;
                  v92 = v66;
                  v88 = v84;
                  v93 = v67;
                  [v73 dispatchSyncWithConnection:v67 readWriteTxion:1 block:v85];

                  v74 = v86;
                }

                else
                {
                  v75 = [(CKKSKeychainView *)self zoneName];
                  v74 = sub_100019104(@"ckks", v75);

                  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                  {
                    *v106 = 138412290;
                    *v107 = v58;
                    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "skipping sync of device-bound(%@) item", v106, 0xCu);
                  }
                }

                goto LABEL_102;
              }

              v62 = [v31 zoneID];
              v63 = [v62 zoneName];
              v58 = sub_100019104(@"ckks", v63);

              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                *v106 = 0;
                v59 = "Client has asked for an item deletion to not sync. Keychain is now out of sync with account";
                v60 = v58;
                v61 = 2;
                goto LABEL_85;
              }

              goto LABEL_102;
            }

            goto LABEL_77;
          }
        }

        v49 = v83;
        v38 = sub_10001A700(v83);
        v36 = v35 & v38;
        v50 = a5 == 0;
        goto LABEL_52;
      }
    }

    v23 = [obj countByEnumeratingWithState:&v97 objects:v115 count:16];
    if (v23)
    {
      continue;
    }

    break;
  }

LABEL_28:

LABEL_42:
  v42 = sub_100019104(@"ckks", 0);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412547;
    *&buf[4] = v80;
    *&buf[12] = 2113;
    *&buf[14] = v12;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "No CKKS view for %@, skipping: %{private}@", buf, 0x16u);
  }

  v31 = sub_100015BFC(v12, &off_100343C98, 0);
  v43 = +[CKKSViewManager manager];
  v44 = [v43 claimCallbackForUUID:v31];

  if (v44)
  {
    v113 = NSLocalizedDescriptionKey;
    v45 = [NSString stringWithFormat:@"No syncing view for '%@'", v80];
    v114 = v45;
    v46 = [NSDictionary dictionaryWithObjects:&v114 forKeys:&v113 count:1];
    v47 = [NSError errorWithDomain:@"CKKSErrorDomain" code:11 userInfo:v46];
    (v44)[2](v44, 0, v47);
  }

LABEL_103:
LABEL_104:

LABEL_105:
  _Block_object_dispose(&v102, 8);
LABEL_106:
  v13 = 0;
LABEL_107:
}

- (void)notifyPasswordsOrPCSChangedForAddedItem:(SecDbItem *)a3 modified:(SecDbItem *)a4 deleted:(SecDbItem *)a5
{
  if (a3)
  {
    [(CKKSKeychainView *)self notifyForItem:?];
  }

  if (a4)
  {
    [(CKKSKeychainView *)self notifyForItem:a4];
  }

  if (a5)
  {

    [(CKKSKeychainView *)self notifyForItem:a5];
  }
}

- (void)notifyForItem:(SecDbItem *)a3
{
  v5 = sub_100015BFC(a3, &off_100343C48, 0);
  if (v5)
  {
    v6 = v5;
    if (!CFEqual(v5, kCFNull))
    {
      CFRetain(v6);
      if ([v6 isEqualToString:@"com.apple.cfnetwork"])
      {
        v7 = [(CKKSKeychainView *)self cloudKitClassDependencies];
        v8 = [v7 notifierClass];
        v9 = [NSString stringWithFormat:@"com.apple.security.view-change.Passwords"];
        [v8 post:v9];
      }
    }
  }

  v10 = sub_100015BFC(a3, &off_100343C70, 0);
  if (v10)
  {
    cf = v10;
    if (!CFEqual(v10, kCFNull))
    {
      CFRetain(cf);
      if ([cf isEqualToString:kSOSViewHintPCSMasterKey])
      {
        v11 = [(CKKSKeychainView *)self cloudKitClassDependencies];
        v12 = [v11 notifierClass];
        v13 = [NSString stringWithFormat:@"com.apple.security.view-change.PCS"];
        [v12 post:v13];
      }
    }
  }
}

- (BOOL)_onqueueOtherDevicesReportHavingTLKs:(id)a3 trustStates:(id)a4
{
  v105 = a3;
  v5 = a4;
  v6 = +[NSDate date];
  v7 = objc_alloc_init(NSDateComponents);
  [v7 setDay:-45];
  v8 = +[NSCalendar currentCalendar];
  v102 = v7;
  v109 = [v8 dateByAddingComponents:v7 toDate:v6 options:0];

  v9 = objc_alloc_init(NSDateComponents);
  [v9 setDay:-4];
  v10 = +[NSCalendar currentCalendar];
  v101 = v9;
  v103 = v6;
  v106 = [v10 dateByAddingComponents:v9 toDate:v6 options:0];

  v11 = +[NSMutableSet set];
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v128 objects:v140 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v129;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v129 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v128 + 1) + 8 * i);
        v124 = 0u;
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v18 = [v17 currentTrustedPeers];
        v19 = [v18 countByEnumeratingWithState:&v124 objects:v139 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v125;
          do
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v125 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = [*(*(&v124 + 1) + 8 * j) peerID];
              [v11 addObject:v23];
            }

            v20 = [v18 countByEnumeratingWithState:&v124 objects:v139 count:16];
          }

          while (v20);
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v128 objects:v140 count:16];
    }

    while (v14);
  }

  v24 = v105;
  v25 = [v105 currentTLKPointer];
  v26 = [v25 zoneID];
  v123 = 0;
  v27 = [CKKSDeviceStateEntry allInZone:v26 error:&v123];
  v28 = v123;

  v104 = v27;
  if (v28)
  {
    v29 = [(CKKSKeychainView *)self zoneName];
    v30 = sub_100019104(@"ckkskey", v29);

    obj = v28;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v135 = v28;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Error fetching device states: %@", buf, 0xCu);
    }

    v31 = 1;
    goto LABEL_57;
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v32 = v27;
  v33 = [v32 countByEnumeratingWithState:&v119 objects:v138 count:16];
  if (!v33)
  {
    goto LABEL_48;
  }

  v35 = v33;
  v36 = *v120;
  *&v34 = 138412546;
  v98 = v34;
  obj = v32;
  do
  {
    v37 = 0;
    do
    {
      if (*v120 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v38 = *(*(&v119 + 1) + 8 * v37);
      v39 = [v38 circlePeerID];
      if (v39)
      {
        v40 = [v38 circlePeerID];
        v30 = [@"spid-" stringByAppendingString:v40];
      }

      else
      {
        v30 = 0;
      }

      v41 = [v38 circlePeerID];
      if (([v11 containsObject:v41] & 1) != 0 || v30 && objc_msgSend(v11, "containsObject:", v30))
      {
      }

      else
      {
        v42 = [v38 octagonPeerID];
        v43 = [v11 containsObject:v42];

        if (!v43)
        {
          v52 = [v38 storedCKRecord];
          v53 = [v52 modificationDate];
          v54 = [v53 compare:v106];

          v55 = [(CKKSKeychainView *)self zoneName];
          v51 = sub_100019104(@"ckkskey", v55);

          v56 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
          if (v54 != -1)
          {
            if (v56)
            {
              v57 = [v38 circlePeerID];
              *buf = v98;
              v135 = v57;
              v136 = 2112;
              v137 = v38;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Device (%@) is not trusted, but very recent. Including in heuristic: %@", buf, 0x16u);
            }

            goto LABEL_33;
          }

          if (v56)
          {
            v58 = [v38 circlePeerID];
            *buf = v98;
            v135 = v58;
            v136 = 2112;
            v137 = v38;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Device (%@) is not trusted and from too long ago; ignoring device state (%@)", buf, 0x16u);
          }

LABEL_38:

          goto LABEL_39;
        }
      }

      v44 = [v38 storedCKRecord];
      v45 = [v44 modificationDate];
      v46 = [v45 compare:v109];

      if (v46 == -1)
      {
        v50 = [(CKKSKeychainView *)self zoneName];
        v51 = sub_100019104(@"ckkskey", v50);

        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v135 = v38;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Trusted device state (%@) is too old; ignoring", buf, 0xCu);
        }

        goto LABEL_38;
      }

LABEL_33:
      v47 = [v38 keyState];
      if ([v47 isEqualToString:@"ready"])
      {

LABEL_53:
        v68 = [(CKKSKeychainView *)self zoneName];
        v69 = sub_100019104(@"ckkskey", v68);

        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v135 = v38;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Other device (%@) has keys; it should send them to us", buf, 0xCu);
        }

        v31 = 1;
        goto LABEL_56;
      }

      v48 = [v38 keyState];
      v49 = [v48 isEqualToString:@"readypendingunlock"];

      if (v49)
      {
        goto LABEL_53;
      }

LABEL_39:

      v37 = v37 + 1;
    }

    while (v35 != v37);
    v32 = obj;
    v59 = [obj countByEnumeratingWithState:&v119 objects:v138 count:16];
    v35 = v59;
  }

  while (v59);
LABEL_48:

  v24 = v105;
  v99 = [v105 currentTLKPointer];
  v60 = [v99 currentKeyUUID];
  v61 = [v105 currentTLKPointer];
  v62 = [v61 contextID];
  v63 = [v105 currentTLKPointer];
  v64 = [v63 zoneID];
  v118 = 0;
  v65 = [CKKSTLKShareRecord allForUUID:v60 contextID:v62 zoneID:v64 error:&v118];
  v30 = v118;

  obj = v65;
  if (v30)
  {
    v66 = [(CKKSKeychainView *)self zoneName];
    v67 = sub_100019104(@"ckkskey", v66);

    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v135 = v30;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "Error fetching device states: %@", buf, 0xCu);
    }

    v31 = 0;
    goto LABEL_86;
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v30 = v65;
  v74 = [v30 countByEnumeratingWithState:&v114 objects:v133 count:16];
  if (!v74)
  {
LABEL_71:

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v30 = v30;
    v86 = [v30 countByEnumeratingWithState:&v110 objects:v132 count:16];
    if (v86)
    {
      v87 = v86;
      v88 = *v111;
LABEL_73:
      v89 = 0;
      while (1)
      {
        if (*v111 != v88)
        {
          objc_enumerationMutation(v30);
        }

        v90 = *(*(&v110 + 1) + 8 * v89);
        v91 = [v90 storedCKRecord];
        v92 = [v91 modificationDate];
        v93 = [v92 compare:v106];

        if (v93 == 1)
        {
          break;
        }

        if (v87 == ++v89)
        {
          v87 = [v30 countByEnumeratingWithState:&v110 objects:v132 count:16];
          if (v87)
          {
            goto LABEL_73;
          }

          goto LABEL_79;
        }
      }

      v97 = [(CKKSKeychainView *)self zoneName];
      v67 = sub_100019104(@"ckkskey", v97);

      if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_85;
      }

      *buf = 138412290;
      v135 = v90;
      v96 = "Untrusted TLK Share (%@) created very recently; other devices might have keys and should rejoin the circle (and send them to us)";
LABEL_84:
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, v96, buf, 0xCu);
      goto LABEL_85;
    }

LABEL_79:
    v31 = 0;
LABEL_56:
    v24 = v105;
LABEL_57:
    v71 = v102;
    v70 = v103;
    v72 = v101;
    goto LABEL_58;
  }

  v75 = v74;
  v76 = *v115;
  v100 = v30;
LABEL_61:
  v77 = 0;
  while (1)
  {
    if (*v115 != v76)
    {
      objc_enumerationMutation(v30);
    }

    v78 = *(*(&v114 + 1) + 8 * v77);
    v79 = [v78 senderPeerID];
    if ([v11 containsObject:v79])
    {
      break;
    }

LABEL_69:
    if (v75 == ++v77)
    {
      v75 = [v30 countByEnumeratingWithState:&v114 objects:v133 count:16];
      if (v75)
      {
        goto LABEL_61;
      }

      goto LABEL_71;
    }
  }

  v80 = [v78 storedCKRecord];
  v81 = [v80 modificationDate];
  v82 = v75;
  v83 = v76;
  v84 = [v81 compare:v109];

  v85 = v84 == 1;
  v76 = v83;
  v75 = v82;
  v30 = v100;
  if (!v85)
  {
    goto LABEL_69;
  }

  v94 = [(CKKSKeychainView *)self zoneName];
  v67 = sub_100019104(@"ckkskey", v94);

  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v135 = v78;
    v96 = "Trusted TLK Share (%@) created recently; other devices have keys and should send them to us";
    goto LABEL_84;
  }

LABEL_85:
  v31 = 1;
  v24 = v105;
LABEL_86:
  v71 = v102;
  v70 = v103;
  v72 = v101;

LABEL_58:
  return v31;
}

- (id)tlkMissingOperation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C4D60;
  v8[3] = &unk_100343B78;
  objc_copyWeak(&v10, &location);
  v5 = v4;
  v9 = v5;
  v6 = [OctagonStateTransitionOperation named:@"tlk-missing" intending:v5 errorState:@"error" withBlockTakingSelf:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (BOOL)allowOutOfBandFetch:(id *)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001C53F0;
  v5[3] = &unk_1003472B0;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = a3;
  [(CKKSKeychainView *)self dispatchSyncWithReadOnlySQLTransaction:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSDate)earliestFetchTime
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [(CKKSKeychainView *)self operationDependencies];
  v4 = [v3 views];

  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v5)
  {

LABEL_17:
    v7 = +[NSDate distantPast];
    goto LABEL_18;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v24;
  obj = v4;
  while (2)
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v24 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v23 + 1) + 8 * i);
      v11 = [(CKKSKeychainView *)self operationDependencies];
      v12 = [v11 contextID];
      v13 = [v10 zoneName];
      v14 = [CKKSZoneStateEntry contextID:v12 zoneName:v13];

      v15 = [v14 lastFetchTime];

      if (!v15)
      {
        v20 = +[NSDate distantPast];

        v7 = v20;
        v19 = obj;
        goto LABEL_14;
      }

      if (!v7 || ([v14 lastFetchTime], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v7, "compare:", v16), v16, v17 == 1))
      {
        v18 = [v14 lastFetchTime];

        v7 = v18;
      }
    }

    v19 = obj;
    v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_14:

  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_18:

  return v7;
}

- (NSSet)viewList
{
  v3 = +[NSMutableSet set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CKKSKeychainView *)self operationDependencies];
  v5 = [v4 activeManagedViews];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) zoneID];
        v11 = [v10 zoneName];
        [v3 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)viewsInState:(id)a3
{
  v4 = a3;
  v5 = [(CKKSKeychainView *)self operationDependencies];
  v6 = [v5 viewsInState:v4];

  return v6;
}

- (BOOL)anyViewsInState:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(CKKSKeychainView *)self operationDependencies];
  v6 = [v5 views];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) viewKeyHierarchyState];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)loseTrustOperation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C5DA0;
  v8[3] = &unk_100343B78;
  objc_copyWeak(&v10, &location);
  v5 = v4;
  v9 = v5;
  v6 = [OctagonStateTransitionOperation named:@"lose-trust" intending:v5 errorState:@"error" withBlockTakingSelf:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (id)becomeReadyOperation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C60C0;
  v8[3] = &unk_100343B78;
  objc_copyWeak(&v10, &location);
  v5 = v4;
  v9 = v5;
  v6 = [OctagonStateTransitionOperation named:@"become-ready" intending:v5 errorState:@"error" withBlockTakingSelf:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (id)_onqueueNextStateMachineTransition:(id)a3 flags:(id)a4 pendingFlags:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CKKSKeychainView *)self queue];
  dispatch_assert_queue_V2(v11);

  if ([v9 _onqueueContains:@"ck_account_logged_out"])
  {
    [v9 _onqueueRemoveFlag:@"ck_account_logged_out"];
    v12 = [(CKKSKeychainView *)self zoneName];
    v13 = sub_100019104(@"ckkskey", v12);

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "CK account is not present", buf, 2u);
    }

    v14 = [(CKKSKeychainView *)self operationDependencies];
    [v14 setStateForActiveZones:@"loggedout"];

    v15 = [CKKSLocalResetOperation alloc];
    v16 = [(CKKSKeychainView *)self operationDependencies];
    v17 = [(CKKSLocalResetOperation *)v15 initWithDependencies:v16 intendedState:@"loggedout" errorState:@"error"];

    goto LABEL_35;
  }

  if ([v9 _onqueueContains:@"ck_zone_missing"])
  {
    [v9 _onqueueRemoveFlag:@"ck_zone_missing"];
    v18 = [(CKKSKeychainView *)self operationDependencies];
    [v18 setStateForActiveZones:@"initializing"];

    v19 = [OctagonStateTransitionOperation named:@"ck-zone-missing" entering:@"resetlocal"];
    goto LABEL_34;
  }

  if ([v9 _onqueueContains:@"ck_change_token_expired"])
  {
    [v9 _onqueueRemoveFlag:@"ck_change_token_expired"];
    v20 = [(CKKSKeychainView *)self operationDependencies];
    [v20 setStateForActiveZones:@"initializing"];

    v19 = [OctagonStateTransitionOperation named:@"ck-token-expired" entering:@"resetlocal"];
    goto LABEL_34;
  }

  if ([v8 isEqualToString:@"loggedout"])
  {
    if (([v9 _onqueueContains:@"ck_account_logged_in"] & 1) != 0 || -[CKKSKeychainView accountStatus](self, "accountStatus") == 1)
    {
      [v9 _onqueueRemoveFlag:@"ck_account_logged_in"];
      v21 = [(CKKSKeychainView *)self zoneName];
      v22 = sub_100019104(@"ckkskey", v21);

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "CloudKit account now present", buf, 2u);
      }

LABEL_14:

      v19 = [OctagonStateTransitionOperation named:@"ck-sign-in" entering:@"initializing"];
      goto LABEL_34;
    }

    v28 = [(CKKSKeychainView *)self operationDependencies];
    [v28 setStateForAllViews:@"loggedout"];

    goto LABEL_27;
  }

  if ([v8 isEqualToString:@"wait_for_ck_account_status"])
  {
    if (([v9 _onqueueContains:@"ck_account_logged_in"] & 1) != 0 || -[CKKSKeychainView accountStatus](self, "accountStatus") == 1)
    {
      [v9 _onqueueRemoveFlag:@"ck_account_logged_in"];
      v23 = [(CKKSKeychainView *)self zoneName];
      v22 = sub_100019104(@"ckkskey", v23);

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "CloudKit account now present", buf, 2u);
      }

      goto LABEL_14;
    }

    if ([v9 _onqueueContains:@"ck_account_logged_out"])
    {
      [v9 _onqueueRemoveFlag:@"ck_account_logged_out"];
      v30 = [(CKKSKeychainView *)self zoneName];
      v25 = sub_100019104(@"ckkskey", v30);

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No account available", buf, 2u);
      }

LABEL_25:

      v26 = [CKKSLocalResetOperation alloc];
      v27 = [(CKKSKeychainView *)self operationDependencies];
      v17 = [(CKKSLocalResetOperation *)v26 initWithDependencies:v27 intendedState:@"loggedout" errorState:@"error"];

      goto LABEL_35;
    }

LABEL_54:
    v17 = 0;
    goto LABEL_35;
  }

  if ([v8 isEqual:@"initializing"])
  {
    if ([(CKKSKeychainView *)self accountStatus]== 3)
    {
      v24 = [(CKKSKeychainView *)self zoneName];
      v25 = sub_100019104(@"ckkskey", v24);

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "CloudKit account is missing. Departing!", buf, 2u);
      }

      goto LABEL_25;
    }

    v31 = [(CKKSKeychainView *)self operationDependencies];
    [v31 operateOnAllViews];

    v32 = [(CKKSKeychainView *)self operationDependencies];
    [v32 setStateForAllViews:@"initializing"];

    v33 = [CKKSCreateCKZoneOperation alloc];
    v34 = [(CKKSKeychainView *)self operationDependencies];
    v17 = [(CKKSCreateCKZoneOperation *)v33 initWithDependencies:v34 intendedState:@"initialized" errorState:@"zonecreationfailed"];

    v35 = [(CKKSKeychainView *)self operationDependencies];
    v36 = [v35 cloudkitRetryAfter];
    v37 = [v36 operationDependency];
    [(CKKSLocalResetOperation *)v17 addNullableDependency:v37];

    v38 = [(CKKSKeychainView *)self operationDependencies];
    v39 = [v38 cloudkitRetryAfter];
    goto LABEL_43;
  }

  if ([v8 isEqualToString:@"initialized"])
  {
    if ([v9 _onqueueContains:@"new_priority_views"] && -[CKKSKeychainView trustStatus](self, "trustStatus") == 1)
    {
      [v9 _onqueueRemoveFlag:@"new_priority_views"];
      [(CKKSKeychainView *)self _onqueuePrioritizePriorityViews];
    }

    v19 = [(CKKSKeychainView *)self performInitializedOperation];
    goto LABEL_34;
  }

  if ([v8 isEqualToString:@"error"])
  {
    if (![v9 _onqueueContains:@"ck_account_logged_in"])
    {
      v47 = [(CKKSKeychainView *)self zoneName];
      v48 = sub_100019104(@"ckkskey", v47);

      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v217 = v8;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Staying in error state %@", buf, 0xCu);
      }

      goto LABEL_54;
    }

    [v9 _onqueueRemoveFlag:@"ck_account_logged_in"];
    v41 = [CKKSLocalResetOperation alloc];
    v38 = [(CKKSKeychainView *)self operationDependencies];
    v42 = @"initializing";
    v43 = @"error";
    goto LABEL_48;
  }

  if ([v8 isEqualToString:@"fixup_fetch_cip"])
  {
    v44 = [CKKSFixupRefetchAllCurrentItemPointers alloc];
    v45 = [(CKKSKeychainView *)self operationDependencies];
    v46 = [CKOperationGroup CKKSGroupWithName:@"fixup"];
LABEL_57:
    v49 = v46;
    v50 = [(CKKSFixupRefetchAllCurrentItemPointers *)v44 initWithOperationDependencies:v45 ckoperationGroup:v46];
LABEL_58:
    v17 = v50;

LABEL_59:
    [(CKKSKeychainView *)self setLastFixupOperation:v17];
    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"fixup_fetch_tlkshares"])
  {
    v44 = [CKKSFixupFetchAllTLKShares alloc];
    v45 = [(CKKSKeychainView *)self operationDependencies];
    v46 = [CKOperationGroup CKKSGroupWithName:@"fixup"];
    goto LABEL_57;
  }

  if ([v8 isEqualToString:@"fixup_local_reload"])
  {
    v51 = [CKKSFixupLocalReloadOperation alloc];
    v45 = [(CKKSKeychainView *)self operationDependencies];
    v49 = [CKOperationGroup CKKSGroupWithName:@"fixup"];
    v52 = @"fixup_resave_cdse";
    v53 = v51;
    v54 = v45;
    v55 = 3;
LABEL_62:
    v50 = [(CKKSFixupLocalReloadOperation *)v53 initWithOperationDependencies:v54 fixupNumber:v55 ckoperationGroup:v49 entering:v52];
    goto LABEL_58;
  }

  if ([v8 isEqualToString:@"fixup_resave_cdse"])
  {
    v56 = [CKKSFixupResaveDeviceStateEntriesOperation alloc];
    v45 = [(CKKSKeychainView *)self operationDependencies];
    v17 = [(CKKSFixupResaveDeviceStateEntriesOperation *)v56 initWithOperationDependencies:v45];
    goto LABEL_59;
  }

  if ([v8 isEqualToString:@"fixup_delete_tombstones"])
  {
    v57 = [CKKSFixupLocalReloadOperation alloc];
    v45 = [(CKKSKeychainView *)self operationDependencies];
    v49 = [CKOperationGroup CKKSGroupWithName:@"fixup"];
    v52 = @"initialized";
    v53 = v57;
    v54 = v45;
    v55 = 5;
    goto LABEL_62;
  }

  if ([v8 isEqualToString:@"resetzone"])
  {
    v58 = [(CKKSKeychainView *)self zoneName];
    v59 = sub_100019104(@"ckkskey", v58);

    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = [(CKKSKeychainView *)self operationDependencies];
      v61 = [v60 views];
      *buf = 138412290;
      v217 = v61;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Deleting the CloudKit Zones for %@", buf, 0xCu);
    }

    v62 = [(CKKSKeychainView *)self operationDependencies];
    [v62 setStateForActiveZones:@"resetzone"];

    v63 = [CKKSDeleteCKZoneOperation alloc];
    v64 = [(CKKSKeychainView *)self operationDependencies];
    v17 = [(CKKSDeleteCKZoneOperation *)v63 initWithDependencies:v64 intendedState:@"resetlocal" errorState:@"resetzone"];

    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"zone_deletion_failed_due_to_network_error"])
  {
    if ([v9 _onqueueContains:@"zone_deletion"])
    {
      [v9 _onqueueRemoveFlag:@"zone_deletion"];
      v19 = [OctagonStateTransitionOperation named:@"recover-from-zone-deletion-network-failure" entering:@"resetzone"];
      goto LABEL_34;
    }

    v72 = [[OctagonPendingFlag alloc] initWithFlag:@"zone_deletion" conditions:2 delayInSeconds:0.2];
    v73 = [(CKKSKeychainView *)self stateMachine];
    goto LABEL_79;
  }

  if ([v8 isEqualToString:@"resetlocal"])
  {
    v65 = [(CKKSKeychainView *)self zoneName];
    v66 = sub_100019104(@"ckkskey", v65);

    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v67 = [(CKKSKeychainView *)self operationDependencies];
      v68 = [v67 views];
      *buf = 138412290;
      v217 = v68;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Resetting local data for %@", buf, 0xCu);
    }

    [(CKKSKeychainView *)self setLastNewTLKOperation:0];
    v69 = [(CKKSKeychainView *)self operationDependencies];
    [v69 setStateForActiveZones:@"initializing"];

    v70 = [CKKSLocalResetOperation alloc];
    v71 = [(CKKSKeychainView *)self operationDependencies];
    v17 = [(CKKSLocalResetOperation *)v70 initWithDependencies:v71 intendedState:@"initializing" errorState:@"error"];

    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"zonecreationfailed"])
  {
    v17 = [OctagonStateTransitionOperation named:@"recover-from-cloudkit-failure" entering:@"initializing"];
    v75 = [(CKKSKeychainView *)self operationDependencies];
    v76 = [v75 cloudkitRetryAfter];
    v77 = [v76 operationDependency];
    [(CKKSLocalResetOperation *)v17 addNullableDependency:v77];

    v38 = [(CKKSKeychainView *)self operationDependencies];
    v39 = [v38 cloudkitRetryAfter];
LABEL_43:
    v40 = v39;
    [v39 trigger];

LABEL_44:
    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"zone_creation_failed_due_to_network_error"])
  {
    if ([v9 _onqueueContains:@"zone_creation"])
    {
      [v9 _onqueueRemoveFlag:@"zone_creation"];
      v19 = [OctagonStateTransitionOperation named:@"recover-from-zone-creation-network-failure" entering:@"initializing"];
      goto LABEL_34;
    }

    v72 = [[OctagonPendingFlag alloc] initWithFlag:@"zone_creation" conditions:2 delayInSeconds:0.2];
    v73 = [(CKKSKeychainView *)self stateMachine];
LABEL_79:
    v74 = v73;
    [v73 _onqueueHandlePendingFlagLater:v72];

    goto LABEL_54;
  }

  if ([v8 isEqualToString:@"lose_trust"])
  {
    if ([v9 _onqueueContains:@"trusted_operation_begin"])
    {
      [v9 _onqueueRemoveFlag:@"trusted_operation_begin"];
      [OctagonStateTransitionOperation named:@"begin-trusted-operation" entering:@"initialized"];
    }

    else
    {
      [(CKKSKeychainView *)self loseTrustOperation:@"waitfortrust"];
    }
    v19 = ;
    goto LABEL_34;
  }

  if ([v8 isEqualToString:@"waitfortrust"])
  {
    if ([(CKKSKeychainView *)self trustStatus]== 1)
    {
      v78 = [(CKKSKeychainView *)self zoneName];
      v79 = sub_100019104(@"ckkskey", v78);

      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Beginning trusted state machine operation", buf, 2u);
      }

      v19 = [OctagonStateTransitionOperation named:@"begin-trusted-operation" entering:@"initialized"];
      goto LABEL_34;
    }

    if ([v9 _onqueueContains:@"fetch_requested"])
    {
      [v9 _onqueueRemoveFlag:@"fetch_requested"];
      v19 = [OctagonStateTransitionOperation named:@"fetch-requested" entering:@"begin_fetch"];
      goto LABEL_34;
    }

    if ([v9 _onqueueContains:@"key_process_requested"])
    {
      [v9 _onqueueRemoveFlag:@"key_process_requested"];
      v19 = [OctagonStateTransitionOperation named:@"begin-trusted-operation" entering:@"process_key_hierarchy"];
      goto LABEL_34;
    }

    if ([v9 _onqueueContains:@"key_set"])
    {
      [v9 _onqueueRemoveFlag:@"key_set"];
      v19 = [OctagonStateTransitionOperation named:@"provide-key-set" entering:@"provide_key_hieararchy_untrusted"];
      goto LABEL_34;
    }

LABEL_27:
    if ([v9 _onqueueContains:@"24_hr_notification"])
    {
      [v9 _onqueueRemoveFlag:@"24_hr_notification"];
    }

    goto LABEL_54;
  }

  if ([v8 isEqualToString:@"provide_key_hieararchy"])
  {
    v80 = [CKKSNewTLKOperation alloc];
    v81 = [(CKKSKeychainView *)self operationDependencies];
    v82 = [(CKKSKeychainView *)self lastNewTLKOperation];
    v83 = [v82 keysets];
    v84 = @"become_ready";
LABEL_102:
    v17 = [(CKKSNewTLKOperation *)v80 initWithDependencies:v81 rollTLKIfPresent:0 preexistingPendingKeySets:v83 intendedState:v84 errorState:@"error"];

    [(CKKSKeychainView *)self setLastNewTLKOperation:v17];
    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"provide_key_hieararchy_untrusted"])
  {
    v80 = [CKKSNewTLKOperation alloc];
    v81 = [(CKKSKeychainView *)self operationDependencies];
    v82 = [(CKKSKeychainView *)self lastNewTLKOperation];
    v83 = [v82 keysets];
    v84 = @"waitfortrust";
    goto LABEL_102;
  }

  if ([v8 isEqualToString:@"handle_all_views"])
  {
    objc_initWeak(buf, self);
    v213[0] = _NSConcreteStackBlock;
    v213[1] = 3221225472;
    v213[2] = sub_1001CB02C;
    v213[3] = &unk_100345338;
    objc_copyWeak(&v214, buf);
    v17 = [OctagonStateTransitionOperation named:@"handle-all-views" intending:@"initializing" errorState:@"initializing" withBlockTakingSelf:v213];
    objc_destroyWeak(&v214);
    objc_destroyWeak(buf);
    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"become_ready"])
  {
    v19 = [(CKKSKeychainView *)self becomeReadyOperation:@"ready"];
    goto LABEL_34;
  }

  if ([v8 isEqualToString:@"ready"])
  {
    [v9 _onqueueRemoveFlag:@"trusted_operation_begin"];
    if ([v9 _onqueueContains:@"device_unlocked"])
    {
      [v9 _onqueueRemoveFlag:@"device_unlocked"];
      v19 = [OctagonStateTransitionOperation named:@"key-state-after-unlock" entering:@"initialized"];
      goto LABEL_34;
    }

    if ([(CKKSKeychainView *)self keyStateFullRefetchRequested])
    {
      v102 = [(CKKSKeychainView *)self zoneName];
      v103 = sub_100019104(@"ckkskey", v102);

      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v217) = [(CKKSKeychainView *)self keyStateFullRefetchRequested];
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Kicking off a full key refetch based on request:%d", buf, 8u);
      }

      v104 = [(CKKSKeychainView *)self operationDependencies];
      [v104 setStateForActiveZones:@"fetching"];

      v19 = [OctagonStateTransitionOperation named:@"full-refetch" entering:@"needrefetch"];
      goto LABEL_34;
    }

    if (![v9 _onqueueContains:@"fetch_requested"])
    {
      if ([v9 _onqueueContains:@"key_process_requested"])
      {
        [v9 _onqueueRemoveFlag:@"key_process_requested"];
        v109 = [(CKKSKeychainView *)self zoneName];
        v110 = sub_100019104(@"ckkskey", v109);

        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "Kicking off a key reprocess based on request", buf, 2u);
        }

        v111 = [(CKKSKeychainView *)self operationDependencies];
        [v111 setStateForActiveCKKSManagedViews:@"process_key_hierarchy"];

        v19 = [OctagonStateTransitionOperation named:@"key-process" entering:@"process_key_hierarchy"];
        goto LABEL_34;
      }

      if ([v9 _onqueueContains:@"key_set"])
      {
        [v9 _onqueueRemoveFlag:@"key_set"];
        v19 = [OctagonStateTransitionOperation named:@"provide-key-set" entering:@"provide_key_hieararchy"];
        goto LABEL_34;
      }

      if ([(CKKSKeychainView *)self trustStatus]!= 1)
      {
        v122 = [(CKKSKeychainView *)self zoneName];
        v123 = sub_100019104(@"ckkskey", v122);

        if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "In ready, but there's no trust; going into waitfortrust", buf, 2u);
        }

        v19 = [OctagonStateTransitionOperation named:@"trust-gone" entering:@"lose_trust"];
        goto LABEL_34;
      }

      if ([v9 _onqueueContains:@"trusted_peers_changed"])
      {
        [v9 _onqueueRemoveFlag:@"trusted_peers_changed"];
        v119 = [(CKKSKeychainView *)self zoneName];
        v120 = sub_100019104(@"ckkskey", v119);

        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "Received a nudge that the trusted peers set might have changed! Reprocessing.", buf, 2u);
        }

        v121 = [(CKKSKeychainView *)self operationDependencies];
        [v121 setStateForActiveCKKSManagedViews:@"process_key_hierarchy"];

        v19 = [OctagonStateTransitionOperation named:@"trusted-peers-changed" entering:@"process_key_hierarchy"];
        goto LABEL_34;
      }

      if ([v9 _onqueueContains:@"check_queues"])
      {
        [v9 _onqueueRemoveFlag:@"check_queues"];
        v19 = [OctagonStateTransitionOperation named:@"check-queues" entering:@"become_ready"];
        goto LABEL_34;
      }

      if ([v9 _onqueueContains:@"24_hr_notification"])
      {
        [v9 _onqueueRemoveFlag:@"24_hr_notification"];
        v19 = [OctagonStateTransitionOperation named:@"24-hr-check" entering:@"initialized"];
        goto LABEL_34;
      }

      if ([v9 _onqueueContains:@"item_reencryption_needed"])
      {
        [v9 _onqueueRemoveFlag:@"item_reencryption_needed"];
        v19 = [OctagonStateTransitionOperation named:@"reencrypt" entering:@"reencrypt_outgoing_items"];
        goto LABEL_34;
      }

      if ([v9 _onqueueContains:@"process_incoming_queue"])
      {
        [v9 _onqueueRemoveFlag:@"process_incoming_queue"];
        v19 = [OctagonStateTransitionOperation named:@"process-incoming" entering:@"process_incoming_queue"];
        goto LABEL_34;
      }

      if ([v9 _onqueueContains:@"dropped_items"])
      {
        [v9 _onqueueRemoveFlag:@"dropped_items"];
        v168 = [(CKKSKeychainView *)self zoneName];
        v169 = sub_100019104(@"ckkskey", v168);

        if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEFAULT, "Launching a scan operation to find dropped items", buf, 2u);
        }

        v19 = [OctagonStateTransitionOperation named:@"scan" entering:@"scan_local_items"];
        goto LABEL_34;
      }

      if ([v9 _onqueueContains:@"process_outgoing_queue"])
      {
        if ([v9 _onqueueContains:@"oqo_token"])
        {
          [v9 _onqueueRemoveFlag:@"process_outgoing_queue"];
          [v9 _onqueueRemoveFlag:@"oqo_token"];
          v19 = [OctagonStateTransitionOperation named:@"oqo" entering:@"process_outgoing_queue"];
          goto LABEL_34;
        }

        v174 = [(CKKSKeychainView *)self outgoingQueueOperationScheduler];
        [v174 trigger];
      }

      if ([v9 _onqueueContains:@"new_priority_views"])
      {
        [v9 _onqueueRemoveFlag:@"new_priority_views"];
      }

      v211 = 0u;
      v212 = 0u;
      v209 = 0u;
      v210 = 0u;
      v175 = [(CKKSKeychainView *)self operationDependencies];
      v176 = [v175 views];

      v177 = [v176 countByEnumeratingWithState:&v209 objects:v221 count:16];
      if (v177)
      {
        v178 = *v210;
        do
        {
          for (i = 0; i != v177; i = i + 1)
          {
            if (*v210 != v178)
            {
              objc_enumerationMutation(v176);
            }

            [*(*(&v209 + 1) + 8 * i) launchComplete];
          }

          v177 = [v176 countByEnumeratingWithState:&v209 objects:v221 count:16];
        }

        while (v177);
      }

      v180 = [(CKKSKeychainView *)self operationDependencies];
      v181 = [v180 overallLaunch];
      [v181 launch];

      v182 = +[CKKSAnalytics logger];
      v183 = [(CKKSKeychainView *)self operationDependencies];
      v184 = [v183 overallLaunch];
      [v182 noteLaunchSequence:v184];

      goto LABEL_54;
    }

    [v9 _onqueueRemoveFlag:@"fetch_requested"];
    v105 = [(CKKSKeychainView *)self zoneName];
    v106 = sub_100019104(@"ckkskey", v105);

    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "Kicking off a key refetch based on request", buf, 2u);
    }

LABEL_141:

    v19 = [OctagonStateTransitionOperation named:@"fetch-requested" entering:@"begin_fetch"];
    goto LABEL_34;
  }

  if ([v8 isEqualToString:@"begin_fetch"])
  {
    [v9 _onqueueRemoveFlag:@"fetch_complete"];
    if ([v9 _onqueueContains:@"new_priority_views"] && -[CKKSKeychainView trustStatus](self, "trustStatus") == 1)
    {
      [v9 _onqueueRemoveFlag:@"new_priority_views"];
      [(CKKSKeychainView *)self _onqueuePrioritizePriorityViews];
    }

    objc_initWeak(&location, self);
    v85 = [(CKKSKeychainView *)self operationDependencies];
    v86 = [v85 currentFetchReasons];
    v190 = [v86 copy];

    v87 = [(CKKSKeychainView *)self operationDependencies];
    v88 = [v87 currentFetchReasons];
    [v88 removeAllObjects];

    v89 = [(CKKSKeychainView *)self zoneChangeFetcher];
    v189 = [v89 requestSuccessfulFetchForManyReasons:v190];

    v206[0] = _NSConcreteStackBlock;
    v206[1] = 3221225472;
    v206[2] = sub_1001CB228;
    v206[3] = &unk_1003452E8;
    objc_copyWeak(&v207, &location);
    v191 = [CKKSResultOperation named:@"post-fetch" withBlock:v206];
    [v191 addDependency:v189];
    [(CKKSKeychainView *)self scheduleOperation:v191];
    v90 = [(CKKSKeychainView *)self operationDependencies];
    v91 = [v90 currentFetchReasons];
    v194 = [v91 containsObject:@"keyhierarchy"];

    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    v92 = [(CKKSKeychainView *)self operationDependencies];
    obj = [v92 views];

    v93 = [obj countByEnumeratingWithState:&v202 objects:v220 count:16];
    if (v93)
    {
      v193 = *v203;
      do
      {
        for (j = 0; j != v93; j = j + 1)
        {
          if (*v203 != v193)
          {
            objc_enumerationMutation(obj);
          }

          v95 = *(*(&v202 + 1) + 8 * j);
          v96 = [v95 zoneName];
          v97 = sub_100019104(@"fetch", v96);

          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v217 = v95;
            v218 = 1024;
            v219 = v194;
            _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "Current state is %@, khf: %d", buf, 0x12u);
          }

          if ((v194 & 1) == 0)
          {
            v98 = [v95 viewKeyHierarchyState];
            v99 = [v98 isEqualToString:@"ready"];

            if (v99)
            {
              continue;
            }
          }

          [v95 setViewKeyHierarchyState:@"fetching"];
        }

        v93 = [obj countByEnumeratingWithState:&v202 objects:v220 count:16];
      }

      while (v93);
    }

    v100 = [(CKKSKeychainView *)self operationDependencies];
    v101 = [v100 overallLaunch];
    [v101 addEvent:@"begin-fetch"];

    v17 = [OctagonStateTransitionOperation named:@"waiting-for-fetch" entering:@"fetching"];

    objc_destroyWeak(&v207);
    objc_destroyWeak(&location);
    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"fetching"])
  {
    if ([v9 _onqueueContains:@"fetch_complete"])
    {
      [v9 _onqueueRemoveFlag:@"fetch_complete"];
      v19 = [OctagonStateTransitionOperation named:@"fetch-complete" entering:@"fetchcomplete"];
      goto LABEL_34;
    }

    if ([v9 _onqueueContains:@"new_priority_views"] && -[CKKSKeychainView trustStatus](self, "trustStatus") == 1)
    {
      [v9 _onqueueRemoveFlag:@"new_priority_views"];
      [(CKKSKeychainView *)self _onqueuePrioritizePriorityViews];
    }

    goto LABEL_54;
  }

  if ([v8 isEqualToString:@"fetchcomplete"])
  {
    v107 = [(CKKSKeychainView *)self operationDependencies];
    v108 = [v107 overallLaunch];
    [v108 addEvent:@"fetch-complete"];

    v19 = [OctagonStateTransitionOperation named:@"post-fetch-process" entering:@"process_key_hierarchy"];
    goto LABEL_34;
  }

  if ([v8 isEqualToString:@"process_key_hierarchy"])
  {
    if ([v9 _onqueueContains:@"fetch_requested"])
    {
      [v9 _onqueueRemoveFlag:@"fetch_requested"];
      v106 = sub_100019104(@"ckkskey", 0);
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "Kicking off a fetch based on request", buf, 2u);
      }

      goto LABEL_141;
    }

    [v9 _onqueueRemoveFlag:@"key_process_requested"];
    v112 = [(CKKSKeychainView *)self operationDependencies];
    [v112 setStateForActiveCKKSManagedViews:@"process_key_hierarchy"];

    v113 = [(CKKSKeychainView *)self operationDependencies];
    [v113 setStateForActiveExternallyManagedViews:@"ready"];

    v114 = [(CKKSKeychainView *)self operationDependencies];
    v115 = [v114 overallLaunch];
    [v115 addEvent:@"process_key_hierarchy"];

    v116 = [CKKSProcessReceivedKeysOperation alloc];
    v117 = [(CKKSKeychainView *)self operationDependencies];
    v118 = [(CKKSProcessReceivedKeysOperation *)v116 initWithDependencies:v117 allowFullRefetchResult:[(CKKSKeychainView *)self keyStateMachineRefetched]^ 1 intendedState:@"check_zone_hierarchies" errorState:@"error"];
LABEL_162:
    v17 = v118;

    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"check_zone_hierarchies"])
  {
    if ([(CKKSKeychainView *)self anyViewsInState:@"unhealthy"])
    {
      v19 = [OctagonStateTransitionOperation named:@"unhealthy" entering:@"unhealthy"];
      goto LABEL_34;
    }

    if ([(CKKSKeychainView *)self anyViewsInState:@"tlkmissing"])
    {
      v19 = [OctagonStateTransitionOperation named:@"tlk-missing" entering:@"tlkmissing"];
      goto LABEL_34;
    }

    if ([(CKKSKeychainView *)self anyViewsInState:@"newtlksfailed"])
    {
      v124 = [(CKKSKeychainView *)self operationDependencies];
      v125 = [v124 currentFetchReasons];
      [v125 addObject:@"conflict"];

      v19 = [OctagonStateTransitionOperation named:@"newtlks-failed" entering:@"begin_fetch"];
      goto LABEL_34;
    }

    if ([(CKKSKeychainView *)self anyViewsInState:@"waitfortrust"])
    {
      v128 = [(CKKSKeychainView *)self operationDependencies];
      v129 = [v128 allViews];
      v130 = [(CKKSKeychainView *)self operationDependencies];
      v131 = [v130 views];
      v132 = [v129 isEqualToSet:v131];

      if ((v132 & 1) == 0)
      {
        objc_initWeak(buf, self);
        v200[0] = _NSConcreteStackBlock;
        v200[1] = 3221225472;
        v200[2] = sub_1001CB288;
        v200[3] = &unk_100345338;
        objc_copyWeak(&v201, buf);
        v17 = [OctagonStateTransitionOperation named:@"handle-all-views-trust-loss" intending:@"initializing" errorState:@"initializing" withBlockTakingSelf:v200];
        objc_destroyWeak(&v201);
        objc_destroyWeak(buf);
        goto LABEL_35;
      }

      v19 = [OctagonStateTransitionOperation named:@"no-trust" entering:@"lose_trust"];
LABEL_34:
      v17 = v19;
      goto LABEL_35;
    }

    if ([(CKKSKeychainView *)self anyViewsInState:@"needrefetch"])
    {
      v117 = [(CKKSKeychainView *)self viewsInState:@"needrefetch"];
      v137 = [(CKKSKeychainView *)self operationDependencies];
      [v137 operateOnSelectViews:v117];

      v118 = [OctagonStateTransitionOperation named:@"reset-views" entering:@"needrefetch"];
      goto LABEL_162;
    }

    if ([(CKKSKeychainView *)self anyViewsInState:@"waitforunlock"])
    {
      v144 = [[OctagonPendingFlag alloc] initWithFlag:@"device_unlocked" conditions:1];
      [v10 _onqueueHandlePendingFlagLater:v144];
    }

    if ([(CKKSKeychainView *)self anyViewsInState:@"waitfortlkcreation"])
    {
      v145 = sub_100019104(@"ckkskey", 0);
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "Requesting TLK upload", buf, 2u);
      }

      v146 = [(CKKSKeychainView *)self suggestTLKUpload];
      [v146 trigger];
    }

    v195 = +[NSMutableSet set];
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v147 = [(CKKSKeychainView *)self operationDependencies];
    v148 = [v147 views];

    v149 = [v148 countByEnumeratingWithState:&v196 objects:v215 count:16];
    if (v149)
    {
      v150 = *v197;
      do
      {
        for (k = 0; k != v149; k = k + 1)
        {
          if (*v197 != v150)
          {
            objc_enumerationMutation(v148);
          }

          v152 = [*(*(&v196 + 1) + 8 * k) viewKeyHierarchyState];
          [v195 addObject:v152];
        }

        v149 = [v148 countByEnumeratingWithState:&v196 objects:v215 count:16];
      }

      while (v149);
    }

    v153 = sub_10011028C();
    v154 = [v195 isSubsetOfSet:v153];

    if ((v154 & 1) == 0)
    {
      v155 = sub_100019104(@"ckks", 0);
      if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v217 = v195;
        _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "Misbehaving key states: %@", buf, 0xCu);
      }
    }

    if ([v9 _onqueueContains:@"key_set"])
    {
      [v9 _onqueueRemoveFlag:@"key_set"];
      v156 = [CKKSNewTLKOperation alloc];
      v157 = [(CKKSKeychainView *)self operationDependencies];
      v158 = [(CKKSKeychainView *)self lastNewTLKOperation];
      v159 = [v158 keysets];
      v17 = [(CKKSNewTLKOperation *)v156 initWithDependencies:v157 rollTLKIfPresent:0 preexistingPendingKeySets:v159 intendedState:@"check_zone_hierarchies" errorState:@"error"];

      [(CKKSKeychainView *)self setLastNewTLKOperation:v17];
    }

    else
    {
      v17 = [OctagonStateTransitionOperation named:@"heal-tlk-shares" entering:@"heal_tlk_shares"];
    }
  }

  else
  {
    if ([v8 isEqualToString:@"tlkmissing"])
    {
      v19 = [(CKKSKeychainView *)self tlkMissingOperation:@"check_zone_hierarchies"];
      goto LABEL_34;
    }

    if ([v8 isEqualToString:@"heal_tlk_shares"])
    {
      v41 = [CKKSHealTLKSharesOperation alloc];
      v38 = [(CKKSKeychainView *)self operationDependencies];
      v42 = @"process_incoming_queue";
      v43 = @"healtlksharesfailed";
LABEL_48:
      v17 = [(CKKSLocalResetOperation *)v41 initWithDependencies:v38 intendedState:v42 errorState:v43];
      goto LABEL_44;
    }

    if ([v8 isEqualToString:@"needrefetch"])
    {
      v126 = [(CKKSKeychainView *)self zoneName];
      v127 = sub_100019104(@"ckkskey", v126);

      if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "Starting a key hierarchy full refetch", buf, 2u);
      }

      [(CKKSKeychainView *)self setKeyStateMachineRefetched:1];
      [(CKKSKeychainView *)self setKeyStateFullRefetchRequested:0];
      v19 = [OctagonStateTransitionOperation named:@"fetch-complete" entering:@"resetlocal"];
      goto LABEL_34;
    }

    if ([v8 isEqualToString:@"healtlksharesfailed"])
    {
      v133 = [(CKKSKeychainView *)self zoneName];
      v134 = sub_100019104(@"ckkskey", v133);

      if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "Creating new TLK shares didn't work. Attempting to refetch!", buf, 2u);
      }

      v135 = [(CKKSKeychainView *)self operationDependencies];
      v136 = [v135 currentFetchReasons];
      [v136 addObject:@"conflict"];

      v19 = [OctagonStateTransitionOperation named:@"heal-tlks-failed" entering:@"begin_fetch"];
      goto LABEL_34;
    }

    if ([v8 isEqualToString:@"unhealthy"])
    {
      v138 = [(CKKSKeychainView *)self trustStatus]== 1;
      v139 = [(CKKSKeychainView *)self zoneName];
      v140 = sub_100019104(@"ckkskey", v139);

      v141 = os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT);
      if (!v138)
      {
        if (v141)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "Looks like the key hierarchy is unhealthy, but we're untrusted.", buf, 2u);
        }

        v19 = [OctagonStateTransitionOperation named:@"unhealthy-lacking-trust" entering:@"lose_trust"];
        goto LABEL_34;
      }

      if (v141)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "Looks like the key hierarchy is unhealthy. Launching fix.", buf, 2u);
      }

      v142 = [CKKSHealKeyHierarchyOperation alloc];
      v143 = [(CKKSKeychainView *)self operationDependencies];
      v17 = [(CKKSHealKeyHierarchyOperation *)v142 initWithDependencies:v143 allowFullRefetchResult:[(CKKSKeychainView *)self keyStateMachineRefetched]^ 1 intending:@"check_zone_hierarchies" errorState:@"error"];
    }

    else
    {
      if (![v8 isEqualToString:@"process_incoming_queue"])
      {
        if ([v8 isEqualToString:@"class_a_incoming_items_remaining"])
        {
          v19 = [OctagonStateTransitionOperation named:@"iqo-errored" entering:@"become_ready"];
          goto LABEL_34;
        }

        if ([v8 isEqualToString:@"scan_local_items"])
        {
          [v9 _onqueueRemoveFlag:@"dropped_items"];
          v170 = [CKKSScanLocalItemsOperation alloc];
          v171 = [(CKKSKeychainView *)self operationDependencies];
          v17 = [(CKKSScanLocalItemsOperation *)v170 initWithDependencies:v171 intending:@"become_ready" errorState:@"error" ckoperationGroup:0];

          [(CKKSKeychainView *)self setInitiatedLocalScan:1];
          goto LABEL_35;
        }

        if ([v8 isEqualToString:@"reencrypt_outgoing_items"])
        {
          v172 = [CKKSReencryptOutgoingItemsOperation alloc];
          v173 = [(CKKSKeychainView *)self operationDependencies];
          v17 = [(CKKSReencryptOutgoingItemsOperation *)v172 initWithDependencies:v173 intendedState:@"become_ready" errorState:@"error" holdOperation:0];

          [(CKKSKeychainView *)self setLastReencryptOutgoingItemsOperation:v17];
          goto LABEL_35;
        }

        if ([v8 isEqualToString:@"process_outgoing_queue"])
        {
          [v9 _onqueueRemoveFlag:@"process_outgoing_queue"];
          v185 = [CKKSOutgoingQueueOperation alloc];
          v186 = [(CKKSKeychainView *)self operationDependencies];
          v17 = [(CKKSOutgoingQueueOperation *)v185 initWithDependencies:v186 intending:@"become_ready" ckErrorState:@"process_outgoing_queue_failed" errorState:@"initialized"];

          v187 = [(CKKSKeychainView *)self holdOutgoingQueueOperation];
          [(CKKSLocalResetOperation *)v17 addNullableDependency:v187];

          v188 = [(CKKSKeychainView *)self outgoingQueueOperations];
          [(CKKSLocalResetOperation *)v17 linearDependencies:v188];

          [(CKKSKeychainView *)self setLastOutgoingQueueOperation:v17];
          goto LABEL_35;
        }

        if ([v8 isEqualToString:@"process_outgoing_queue_failed"])
        {
          v19 = [OctagonStateTransitionOperation named:@"oqo-failure" entering:@"become_ready"];
          goto LABEL_34;
        }

        goto LABEL_54;
      }

      [v9 _onqueueRemoveFlag:@"process_incoming_queue"];
      v160 = [v9 _onqueueContains:@"policy_fresh"];
      [v9 _onqueueRemoveFlag:@"policy_fresh"];
      if (v160)
      {
        v161 = sub_100019104(@"ckksincoming", 0);
        if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEFAULT, "Going to process the incoming queue with a fresh policy", buf, 2u);
        }
      }

      v162 = [CKKSIncomingQueueOperation alloc];
      v163 = [(CKKSKeychainView *)self operationDependencies];
      v17 = [(CKKSIncomingQueueOperation *)v162 initWithDependencies:v163 intending:@"become_ready" pendingClassAItemsRemainingState:@"class_a_incoming_items_remaining" errorState:@"become_ready" handleMismatchedViewItems:v160];

      v164 = [(CKKSKeychainView *)self resultsOfNextIncomingQueueOperationOperation];

      if (v164)
      {
        v165 = [(CKKSKeychainView *)self resultsOfNextIncomingQueueOperationOperation];
        [v165 addSuccessDependency:v17];

        v166 = [(CKKSKeychainView *)self resultsOfNextIncomingQueueOperationOperation];
        [(CKKSKeychainView *)self scheduleOperation:v166];

        [(CKKSKeychainView *)self setResultsOfNextIncomingQueueOperationOperation:0];
      }

      [(CKKSKeychainView *)self setLastIncomingQueueOperation:v17];
      v167 = [(CKKSKeychainView *)self holdIncomingQueueOperation];
      [(CKKSLocalResetOperation *)v17 addNullableDependency:v167];
    }
  }

LABEL_35:

  return v17;
}

- (void)_onqueuePokeKeyStateMachine
{
  v3 = [(CKKSKeychainView *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CKKSKeychainView *)self stateMachine];
  [v4 _onqueuePokeStateMachine];
}

- (void)keyStateMachineRequestProcess
{
  v2 = [(CKKSKeychainView *)self stateMachine];
  [v2 handleFlag:@"key_process_requested"];
}

- (id)rpcResetCloudKit:(id)a3 reply:(id)a4
{
  v25 = a3;
  v27 = a4;
  v35 = 0;
  LOBYTE(a4) = [(CKKSKeychainView *)self waitUntilReadyForRPCForOperation:@"reset-cloudkit" fast:0 errorOnNoCloudKitAccount:1 errorOnPolicyMissing:1 error:&v35];
  v6 = v35;
  v26 = v6;
  if (a4)
  {
    objc_initWeak(&location, self);
    v7 = [(CKKSKeychainView *)self zoneName];
    v8 = sub_100019104(@"ckksreset", v7);

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requesting reset of CK zone (logged in)", buf, 2u);
    }

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001CB998;
    v28[3] = &unk_100343B78;
    objc_copyWeak(&v30, &location);
    v29 = v25;
    v24 = [OctagonStateTransitionOperation named:@"set-zones" intending:@"resetzone" errorState:@"error" withBlockTakingSelf:v28];
    v47 = @"initializing";
    v45[0] = @"initialized";
    v9 = +[OctagonStateTransitionPathStep success];
    v45[1] = @"loggedout";
    v46[0] = v9;
    v10 = +[OctagonStateTransitionPathStep success];
    v46[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
    v48 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];

    v13 = [(CKKSKeychainView *)self stateMachine];
    v44[0] = @"ready";
    v44[1] = @"initialized";
    v44[2] = @"fetchcomplete";
    v44[3] = @"process_key_hierarchy";
    v44[4] = @"waitfortrust";
    v44[5] = @"loggedout";
    v44[6] = @"error";
    v14 = [NSArray arrayWithObjects:v44 count:7];
    v15 = [NSSet setWithArray:v14];
    v42 = @"resetzone";
    v40[1] = @"resetzone";
    v41[0] = v12;
    v40[0] = @"resetlocal";
    v38[1] = @"resetzone";
    v39[0] = v12;
    v37 = v12;
    v38[0] = @"resetlocal";
    v36 = @"resetlocal";
    v16 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v39[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
    v41[1] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
    v43 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v20 = [OctagonStateTransitionPath pathFromDictionary:v19];
    v21 = [v13 doWatchedStateMachineRPC:@"ckks-cloud-reset" sourceStates:v15 path:v20 transitionOp:v24 reply:v27];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else
  {
    v27[2](v27, v6);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001CB98C;
    v33[3] = &unk_100343BA0;
    v34 = v26;
    v21 = [CKKSResultOperation named:@"fail" withBlockTakingSelf:v33];
    v22 = [(CKKSKeychainView *)self operationQueue];
    [v22 addOperation:v21];
  }

  return v21;
}

- (id)rpcResetLocal:(id)a3 reply:(id)a4
{
  v6 = a3;
  v22 = a4;
  objc_initWeak(&location, self);
  v7 = [(CKKSKeychainView *)self zoneName];
  v8 = sub_100019104(@"ckksreset", v7);

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requesting local data reset", buf, 2u);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001CBFD4;
  v23[3] = &unk_100343B78;
  objc_copyWeak(&v25, &location);
  v20 = v6;
  v24 = v20;
  v21 = [OctagonStateTransitionOperation named:@"set-zones" intending:@"resetlocal" errorState:@"error" withBlockTakingSelf:v23];
  v9 = [(CKKSKeychainView *)self stateMachine];
  v34[2] = @"fetchcomplete";
  v34[3] = @"process_key_hierarchy";
  v34[0] = @"ready";
  v34[1] = @"initialized";
  v34[4] = @"waitfortrust";
  v34[5] = @"loggedout";
  v34[6] = @"error";
  v10 = [NSArray arrayWithObjects:v34 count:7];
  v11 = [NSSet setWithArray:v10];
  v32 = @"resetlocal";
  v30 = @"initializing";
  v28[0] = @"initialized";
  v12 = +[OctagonStateTransitionPathStep success];
  v28[1] = @"loggedout";
  v29[0] = v12;
  v13 = +[OctagonStateTransitionPathStep success];
  v29[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
  v31 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v33 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v17 = [OctagonStateTransitionPath pathFromDictionary:v16];
  v18 = [v9 doWatchedStateMachineRPC:@"local-reset" sourceStates:v11 path:v17 transitionOp:v21 reply:v22];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v18;
}

- (id)performInitializedOperation
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001CC2C4;
  v4[3] = &unk_100345338;
  objc_copyWeak(&v5, &location);
  v2 = [OctagonStateTransitionOperation named:@"ckks-initialized-operation" intending:@"become_ready" errorState:@"error" withBlockTakingSelf:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (NSDictionary)stateConditions
{
  v2 = [(CKKSKeychainView *)self stateMachine];
  v3 = [v2 stateConditions];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CKKSKeychainView *)self operationDependencies];
  v6 = [v5 contextID];
  v7 = [(CKKSKeychainView *)self stateMachine];
  v8 = [v7 currentState];
  v9 = [(CKKSKeychainView *)self operationDependencies];
  v10 = [v9 views];
  v11 = [NSString stringWithFormat:@"<%@: cid:%@ state:%@ views:%@ %p>", v4, v6, v8, v10, self];

  return v11;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CKKSKeychainView *)self operationDependencies];
  v6 = [v5 contextID];
  v7 = [(CKKSKeychainView *)self stateMachine];
  v8 = [v7 currentState];
  v9 = [(CKKSKeychainView *)self operationDependencies];
  v10 = [v9 views];
  v11 = [NSString stringWithFormat:@"<%@: cid:%@ state:%@ views:%@>", v4, v6, v8, v10];

  return v11;
}

- (CKKSKeychainView)initWithContainer:(id)a3 contextID:(id)a4 activeAccount:(id)a5 accountTracker:(id)a6 lockStateTracker:(id)a7 reachabilityTracker:(id)a8 savedTLKNotifier:(id)a9 cloudKitClassDependencies:(id)a10 personaAdapter:(id)a11 accountsAdapter:(id)a12 cuttlefishAdapter:(id)a13
{
  v98 = a3;
  v18 = a4;
  v95 = a5;
  v94 = a6;
  v89 = a7;
  v19 = a7;
  v20 = a8;
  v96 = v19;
  v99 = a8;
  v21 = a9;
  v97 = a10;
  v93 = a11;
  v90 = a12;
  v22 = a13;
  v105.receiver = self;
  v105.super_class = CKKSKeychainView;
  v23 = [(CKKSKeychainView *)&v105 init];
  v24 = v23;
  if (v23)
  {
    v92 = v21;
    objc_storeStrong(&v23->_container, a3);
    objc_storeStrong(&v24->_accountTracker, a6);
    objc_storeStrong(&v24->_reachabilityTracker, v20);
    objc_storeStrong(&v24->_lockStateTracker, v89);
    objc_storeStrong(&v24->_cloudKitClassDependencies, a10);
    objc_storeStrong(&v24->_personaAdapter, a11);
    objc_storeStrong(&v24->_accountsAdapter, a12);
    zoneName = v24->_zoneName;
    v24->_zoneName = @"all";

    *&v24->_halted = 0;
    v24->_accountStatus = 0;
    v26 = [(CKKSKeychainView *)v24 createAccountLoggedInDependency:@"CloudKit account logged in."];
    accountLoggedInDependency = v24->_accountLoggedInDependency;
    v24->_accountLoggedInDependency = v26;

    v28 = [v98 containerIdentifier];
    v29 = [NSString stringWithFormat:@"CKKSQueue.%@.%@", v28, v18];
    v30 = [v29 UTF8String];
    v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v32 = dispatch_queue_create(v30, v31);
    queue = v24->_queue;
    v24->_queue = v32;

    v34 = objc_alloc_init(NSOperationQueue);
    operationQueue = v24->_operationQueue;
    v24->_operationQueue = v34;

    v36 = [[CKKSSecDbAdapter alloc] initWithQueue:v24->_queue];
    databaseProvider = v24->_databaseProvider;
    v24->_databaseProvider = v36;

    v38 = objc_alloc_init(CKKSCondition);
    loggedIn = v24->_loggedIn;
    v24->_loggedIn = v38;

    v40 = objc_alloc_init(CKKSCondition);
    loggedOut = v24->_loggedOut;
    v24->_loggedOut = v40;

    v42 = objc_alloc_init(CKKSCondition);
    accountStateKnown = v24->_accountStateKnown;
    v24->_accountStateKnown = v42;

    v24->_initiatedLocalScan = 0;
    v24->_trustStatus = 0;
    v44 = objc_alloc_init(CKKSCondition);
    trustStatusKnown = v24->_trustStatusKnown;
    v24->_trustStatusKnown = v44;

    v46 = +[NSHashTable weakObjectsHashTable];
    outgoingQueueOperations = v24->_outgoingQueueOperations;
    v24->_outgoingQueueOperations = v46;

    currentTrustStates = v24->_currentTrustStates;
    v24->_currentTrustStates = &__NSArray0__struct;

    resyncRecordsSeen = v24->_resyncRecordsSeen;
    v24->_resyncRecordsSeen = 0;

    v24->_firstManateeKeyFetched = 0;
    if ([v18 isEqualToString:&stru_100348050])
    {
      v50 = @"ckks";
    }

    else
    {
      v50 = [NSString stringWithFormat:@"ckks-%@", v18];
    }

    v51 = [OctagonStateMachine alloc];
    if (qword_10039DDB0 != -1)
    {
      dispatch_once(&qword_10039DDB0, &stru_1003360B8);
    }

    v52 = qword_10039DDA8;
    if (qword_10039DDC0 != -1)
    {
      dispatch_once(&qword_10039DDC0, &stru_1003360D8);
    }

    v53 = qword_10039DDB8;
    v54 = [(OctagonStateMachine *)v51 initWithName:v50 states:v52 flags:v53 initialState:@"wait_for_ck_account_status" queue:v24->_queue stateEngine:v24 unexpectedStateErrorDomain:@"com.apple.ckks.state" lockStateTracker:v96 reachabilityTracker:v99];
    stateMachine = v24->_stateMachine;
    v24->_stateMachine = v54;

    objc_initWeak(&location, v24);
    v87 = v22;
    if (qword_10039DEC8 != -1)
    {
      dispatch_once(&qword_10039DEC8, &stru_100337248);
    }

    if (byte_10039DED0)
    {
      v56 = 200000000;
    }

    else
    {
      v56 = 1000000000;
    }

    if (byte_10039DED0)
    {
      v57 = 200000000;
    }

    else
    {
      v57 = 30000000000;
    }

    v58 = [CKKSNearFutureScheduler alloc];
    v59 = [NSString stringWithFormat:@"outgoing-queue-scheduler"];
    v102[0] = _NSConcreteStackBlock;
    v102[1] = 3221225472;
    v102[2] = sub_1001CD9FC;
    v102[3] = &unk_1003452E8;
    objc_copyWeak(&v103, &location);
    v60 = [(CKKSNearFutureScheduler *)v58 initWithName:v59 initialDelay:v56 continuingDelay:v57 keepProcessAlive:0 dependencyDescriptionCode:1003 block:v102];
    outgoingQueueOperationScheduler = v24->_outgoingQueueOperationScheduler;
    v24->_outgoingQueueOperationScheduler = v60;

    v62 = [CKKSNearFutureScheduler alloc];
    v63 = [NSString stringWithFormat:@"outgoing-queue-priority-scheduler"];
    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = sub_1001CDA5C;
    v100[3] = &unk_1003452E8;
    objc_copyWeak(&v101, &location);
    v64 = [(CKKSNearFutureScheduler *)v62 initWithName:v63 initialDelay:500000000 continuingDelay:500000000 keepProcessAlive:0 dependencyDescriptionCode:1003 block:v100];
    outgoingQueuePriorityOperationScheduler = v24->_outgoingQueuePriorityOperationScheduler;
    v24->_outgoingQueuePriorityOperationScheduler = v64;

    v66 = [[SecLaunchSequence alloc] initWithRocketName:@"com.apple.security.ckks.launch"];
    [v66 addAttribute:@"view" value:@"global"];
    v67 = objc_alloc_init(CKKSCondition);
    policyLoaded = v24->_policyLoaded;
    v24->_policyLoaded = v67;

    v69 = [CKKSOperationDependencies alloc];
    v70 = +[NSSet set];
    v71 = [(CKContainer *)v24->_container privateCloudDatabase];
    LOBYTE(v86) = 0;
    v72 = [(CKKSOperationDependencies *)v69 initWithViewStates:v70 contextID:v18 activeAccount:v95 ckdatabase:v71 cloudKitClassDependencies:v24->_cloudKitClassDependencies ckoperationGroup:0 flagHandler:v24->_stateMachine overallLaunch:v66 accountStateTracker:v94 lockStateTracker:v24->_lockStateTracker reachabilityTracker:v99 peerProviders:&__NSArray0__struct databaseProvider:v24->_databaseProvider savedTLKNotifier:v92 personaAdapter:v93 sendMetric:v86];
    operationDependencies = v24->_operationDependencies;
    v24->_operationDependencies = v72;

    v74 = [CKKSZoneChangeFetcher alloc];
    v75 = [v97 fetchRecordZoneChangesOperationClass];
    reachabilityTracker = v24->_reachabilityTracker;
    v77 = [v95 altDSID];
    v78 = [(CKKSZoneChangeFetcher *)v74 initWithContainer:v98 fetchClass:v75 reachabilityTracker:reachabilityTracker altDSID:v77 sendMetric:0];
    zoneChangeFetcher = v24->_zoneChangeFetcher;
    v24->_zoneChangeFetcher = v78;

    v80 = +[OctagonAPSReceiver receiverForNamedDelegatePort:apsConnectionClass:](OctagonAPSReceiver, "receiverForNamedDelegatePort:apsConnectionClass:", @"com.apple.securityd.aps", [v97 apsConnectionClass]);
    v81 = [v80 registerCKKSReceiver:v24->_zoneChangeFetcher contextID:v18];
    v82 = [AAFAnalyticsEventSecurity alloc];
    v83 = [v95 altDSID];
    v84 = [v82 initWithCKKSMetrics:&__NSDictionary0__struct altDSID:v83 eventName:kSecurityRTCEventNameLaunchStart testsAreEnabled:0 category:kSecurityRTCEventCategoryAccountDataAccessRecovery sendMetric:1];

    [v84 sendMetricWithResult:1 error:0];
    objc_storeStrong(&v24->_cuttlefishAdapter, a13);
    [(OctagonStateMachine *)v24->_stateMachine startOperation];

    objc_destroyWeak(&v101);
    objc_destroyWeak(&v103);
    objc_destroyWeak(&location);

    v21 = v92;
    v22 = v87;
  }

  return v24;
}

- (void)modifyTLKSharesForExternallyManagedView:(id)a3 adding:(id)a4 deleting:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25 = 0;
  v14 = [(CKKSKeychainView *)self externalManagedViewForRPC:v10 error:&v25];
  v15 = v25;
  if (v14)
  {
    objc_initWeak(location, self);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001E620C;
    v20[3] = &unk_100344840;
    objc_copyWeak(&v24, location);
    v21 = v14;
    v22 = v11;
    v23 = v12;
    v16 = [OctagonStateTransitionGroupOperation named:@"external-tlk-rpc" intending:@"ready" errorState:@"ready" withBlockTakingSelf:v20];
    v17 = [(CKKSKeychainView *)self stateMachine];
    v18 = [NSSet setWithObject:@"ready"];
    [v17 doSimpleStateMachineRPC:@"external-tlkshare-modification-rpc" op:v16 sourceStates:v18 reply:v13];

    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }

  else
  {
    v19 = sub_100019104(@"ckkszone", 0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *location = 138412546;
      *&location[4] = v10;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Can't modify CloudKit zone for view %@: %@", location, 0x16u);
    }

    v13[2](v13, v15);
  }
}

- (void)loadKeys:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKKSKeychainView *)self databaseProvider];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001E76D4;
  v11[3] = &unk_100344DC8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 dispatchSyncWithReadOnlySQLTransaction:v11];
}

- (void)fetchCloudKitExternallyManagedViewKeyHierarchy:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKKSKeychainView *)self rpcFetchBecause:@"se-api"];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001E7FA0;
  v13[3] = &unk_100344788;
  objc_copyWeak(&v17, &location);
  v9 = v8;
  v14 = v9;
  v10 = v6;
  v15 = v10;
  v11 = v7;
  v16 = v11;
  v12 = [CKKSResultOperation named:@"rpc-response" withBlockTakingSelf:v13];
  [v12 addDependency:v9];
  [(CKKSKeychainView *)self scheduleOperation:v12];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)fetchExternallyManagedViewKeyHierarchy:(id)a3 forceFetch:(BOOL)a4 reply:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v13 = 0;
  v10 = [(CKKSKeychainView *)self externalManagedViewForRPC:v8 error:&v13];
  v11 = v13;
  if (v10)
  {
    if (v6)
    {
      [(CKKSKeychainView *)self fetchCloudKitExternallyManagedViewKeyHierarchy:v10 reply:v9];
    }

    else
    {
      [(CKKSKeychainView *)self loadKeys:v10 reply:v9];
    }
  }

  else
  {
    v12 = sub_100019104(@"ckkszone", 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Can't fetch CloudKit zone for view %@: %@", buf, 0x16u);
    }

    (*(v9 + 2))(v9, 0, 0, 0, v11);
  }
}

- (void)proposeTLKForExternallyManagedView:(id)a3 proposedTLK:(id)a4 wrappedOldTLK:(id)a5 tlkShares:(id)a6 reply:(id)a7
{
  v12 = a3;
  v23 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v31 = 0;
  v16 = [(CKKSKeychainView *)self externalManagedViewForRPC:v12 error:&v31];
  v17 = v31;
  if (v16)
  {
    objc_initWeak(location, self);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001E8560;
    v24[3] = &unk_100344760;
    objc_copyWeak(&v30, location);
    v25 = v23;
    v26 = v16;
    v27 = v13;
    v18 = v15;
    v29 = v18;
    v28 = v14;
    v19 = [OctagonStateTransitionGroupOperation named:@"external-tlk-rpc" intending:@"ready" errorState:@"ready" withBlockTakingSelf:v24];
    v20 = [(CKKSKeychainView *)self stateMachine];
    v21 = [NSSet setWithObject:@"ready"];
    [v20 doSimpleStateMachineRPC:@"external-tlk-rpc" op:v19 sourceStates:v21 reply:v18];

    objc_destroyWeak(&v30);
    objc_destroyWeak(location);
  }

  else
  {
    v22 = sub_100019104(@"ckkszone", 0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *location = 138412546;
      *&location[4] = v12;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Can't propose TLKs for view %@: %@", location, 0x16u);
    }

    (*(v15 + 2))(v15, v17);
  }
}

- (void)resetExternallyManagedCloudKitView:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v8 = [(CKKSKeychainView *)self externalManagedViewForRPC:v6 error:&v13];
  v9 = v13;
  if (v8)
  {
    v10 = [NSSet setWithObject:v6];
    v11 = [(CKKSKeychainView *)self rpcResetCloudKit:v10 reply:v7];
  }

  else
  {
    v12 = sub_100019104(@"ckkszone", 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Can't reset CloudKit zone for view %@: %@", buf, 0x16u);
    }

    v7[2](v7, v9);
  }
}

- (id)externalManagedViewForRPC:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![(CKKSKeychainView *)self waitUntilReadyForRPCForOperation:@"external operation" fast:0 errorOnNoCloudKitAccount:1 errorOnPolicyMissing:1 error:a4])
  {
    a4 = 0;
    goto LABEL_22;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(CKKSKeychainView *)self operationDependencies];
  v8 = [v7 allExternalManagedViews];

  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
LABEL_4:
    v12 = 0;
    while (1)
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v20 + 1) + 8 * v12);
      v14 = [v13 zoneName];
      v15 = [v14 isEqualToString:v6];

      if (v15)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    v16 = v13;

    if (!v16)
    {
      goto LABEL_16;
    }

    if (![v16 ckksManagedView])
    {
      v16 = v16;
      a4 = v16;
      goto LABEL_21;
    }

    if (!a4)
    {
      goto LABEL_21;
    }

    v17 = [NSString stringWithFormat:@"View is not externally managed: '%@'", v6];
    *a4 = [NSError errorWithDomain:@"CKKSErrorDomain" code:62 description:v17];
  }

  else
  {
LABEL_10:

LABEL_16:
    if (!a4)
    {
      v16 = 0;
      goto LABEL_21;
    }

    v18 = [NSString stringWithFormat:@"Unknown external view: '%@'", v6];
    *a4 = [NSError errorWithDomain:@"CKKSErrorDomain" code:11 description:v18];

    v16 = 0;
  }

  a4 = 0;
LABEL_21:

LABEL_22:

  return a4;
}

@end