@interface CKKSKeychainView
- (BOOL)_onQueueZoneIsReadyForFetching:(id)fetching;
- (BOOL)_onqueueOtherDevicesReportHavingTLKs:(id)ks trustStates:(id)states;
- (BOOL)_onqueueResetAllInflightOQE:(id *)e;
- (BOOL)allowOutOfBandFetch:(id *)fetch;
- (BOOL)anyViewsInState:(id)state;
- (BOOL)ckErrorOrPartialError:(id)error isError:(int64_t)isError zoneID:(id)d;
- (BOOL)haveTLKsLocally:(id)locally error:(id *)error;
- (BOOL)insideSQLTransaction;
- (BOOL)outgoingQueueEmpty:(id *)empty;
- (BOOL)scheduleOperationWithoutDependencies:(id)dependencies;
- (BOOL)setCurrentSyncingPolicy:(id)policy policyIsFresh:(BOOL)fresh;
- (BOOL)shouldRetryAfterFetchError:(id)error zoneID:(id)d;
- (BOOL)unwrapKeysAndSaveToCache:(id)cache syncKeys:(id)keys error:(id *)error;
- (BOOL)unwrapTLKAndSaveToCache:(id)cache tlks:(id)tlks tlkShares:(id)shares error:(id *)error;
- (BOOL)waitForFetchAndIncomingQueueProcessing;
- (BOOL)waitForKeyHierarchyReadiness;
- (BOOL)waitForPolicy:(unint64_t)policy error:(id *)error;
- (BOOL)waitUntilAllOperationsAreFinished;
- (BOOL)waitUntilReadyForRPCForOperation:(id)operation fast:(BOOL)fast errorOnNoCloudKitAccount:(BOOL)account errorOnPolicyMissing:(BOOL)missing error:(id *)error;
- (BOOL)zoneIsReadyForFetching:(id)fetching;
- (CKKSKeychainView)initWithContainer:(id)container contextID:(id)d activeAccount:(id)account accountTracker:(id)tracker lockStateTracker:(id)stateTracker reachabilityTracker:(id)reachabilityTracker savedTLKNotifier:(id)notifier cloudKitClassDependencies:(id)self0 personaAdapter:(id)self1 accountsAdapter:(id)self2 cuttlefishAdapter:(id)self3;
- (NSDate)earliestFetchTime;
- (NSDictionary)stateConditions;
- (NSSet)viewList;
- (NSString)debugDescription;
- (NSString)description;
- (TPSyncingPolicy)syncingPolicy;
- (id)_onqueueNextStateMachineTransition:(id)transition flags:(id)flags pendingFlags:(id)pendingFlags;
- (id)becomeReadyOperation:(id)operation;
- (id)createAccountLoggedInDependency:(id)dependency;
- (id)externalManagedViewForRPC:(id)c error:(id *)error;
- (id)fastStatus:(id)status zoneStateEntry:(id)entry;
- (id)findFirstPendingOperation:(id)operation ofClass:(Class)class;
- (id)findKeySets:(BOOL)sets;
- (id)intransactionSlowStatus:(id)status;
- (id)loseTrustOperation:(id)operation;
- (id)participateInFetch:(id)fetch;
- (id)performInitializedOperation;
- (id)policyDependentViewStateForName:(id)name timeout:(unint64_t)timeout error:(id *)error;
- (id)resultsOfNextProcessIncomingQueueOperation;
- (id)resyncLocal;
- (id)resyncWithCloud;
- (id)rpcFetchAndProcessIncomingQueue:(id)queue because:(id)because errorOnClassAFailure:(BOOL)failure;
- (id)rpcFetchBecause:(id)because;
- (id)rpcProcessIncomingQueue:(id)queue errorOnClassAFailure:(BOOL)failure;
- (id)rpcProcessOutgoingQueue:(id)queue operationGroup:(id)group;
- (id)rpcResetCloudKit:(id)kit reply:(id)reply;
- (id)rpcResetLocal:(id)local reply:(id)reply;
- (id)rpcWaitForPriorityViewProcessing;
- (id)tlkMissingOperation:(id)operation;
- (id)viewStateForName:(id)name;
- (id)viewsForPeerID:(id)d error:(id *)error;
- (id)viewsInState:(id)state;
- (id)viewsRequiringTLKUpload;
- (id)zoneIDForViewHint:(id)hint pcsShortcut:(BOOL)shortcut error:(id *)error;
- (int64_t)accountStatusFromCKAccountInfo:(id)info;
- (void)_onqueuePokeKeyStateMachine;
- (void)_onqueuePrioritizePriorityViews;
- (void)_onqueueProcessOutgoingQueue:(id)queue priorityRush:(BOOL)rush;
- (void)beginCloudKitOperation;
- (void)beginTrustedOperation:(id)operation suggestTLKUpload:(id)upload requestPolicyCheck:(id)check;
- (void)cancelAllOperations;
- (void)cancelPendingOperations;
- (void)changesFetched:(id)fetched deletedRecordIDs:(id)ds zoneID:(id)d newChangeToken:(id)token moreComing:(BOOL)coming resync:(BOOL)resync fetchNewestChangesFirst:(BOOL)first;
- (void)cloudkitAccountStateChange:(id)change to:(id)to;
- (void)decryptCurrentItems:(id)items cache:(id)cache complete:(id)complete;
- (void)decryptPCSIdentities:(id)identities cache:(id)cache complete:(id)complete;
- (void)dispatchSyncWithReadOnlySQLTransaction:(id)transaction;
- (void)dispatchSyncWithSQLTransaction:(id)transaction;
- (void)endTrustedOperation;
- (void)fetchCloudKitExternallyManagedViewKeyHierarchy:(id)hierarchy reply:(id)reply;
- (void)fetchExternallyManagedViewKeyHierarchy:(id)hierarchy forceFetch:(BOOL)fetch reply:(id)reply;
- (void)fetchPCSIdentityOutOfBand:(id)band forceFetch:(BOOL)fetch complete:(id)complete;
- (void)getCurrentItemForAccessGroup:(id)group identifier:(id)identifier viewHint:(id)hint fetchCloudValue:(BOOL)value complete:(id)complete;
- (void)getCurrentItemOutOfBand:(id)band forceFetch:(BOOL)fetch complete:(id)complete;
- (void)halt;
- (void)handleCKLogin;
- (void)handleCKLogout;
- (void)handleKeychainEventDbConnection:(__OpaqueSecDbConnection *)connection source:(unint64_t)source added:(SecDbItem *)added deleted:(SecDbItem *)deleted rateLimiter:(id)limiter;
- (void)initialSyncStatus:(id)status reply:(id)reply;
- (void)keyStateMachineRequestProcess;
- (void)loadKeys:(id)keys reply:(id)reply;
- (void)modifyTLKSharesForExternallyManagedView:(id)view adding:(id)adding deleting:(id)deleting reply:(id)reply;
- (void)notifyForItem:(SecDbItem *)item;
- (void)notifyPasswordsOrPCSChangedForAddedItem:(SecDbItem *)item modified:(SecDbItem *)modified deleted:(SecDbItem *)deleted;
- (void)onqueueCreatePriorityViewsProcessedWatcher;
- (void)pcsMirrorKeysForServices:(id)services reply:(id)reply;
- (void)proposeTLKForExternallyManagedView:(id)view proposedTLK:(id)k wrappedOldTLK:(id)lK tlkShares:(id)shares reply:(id)reply;
- (void)receiveTLKUploadRecords:(id)records;
- (void)resetExternallyManagedCloudKitView:(id)view reply:(id)reply;
- (void)scanLocalItems;
- (void)scheduleOperation:(id)operation;
- (void)selfPeerChanged:(id)changed;
- (void)sendMetricForFirstManateeAccess;
- (void)setCurrentItemForAccessGroup:(id)group hash:(id)hash accessGroup:(id)accessGroup identifier:(id)identifier viewHint:(id)hint replacing:(id)replacing hash:(id)a9 complete:(id)self0;
- (void)testDropPolicy;
- (void)toggleHavoc:(id)havoc;
- (void)trustedPeerSetChanged:(id)changed;
- (void)unsetCurrentItemsForAccessGroup:(id)group identifiers:(id)identifiers viewHint:(id)hint complete:(id)complete;
- (void)updateAccount:(id)account container:(id)container;
- (void)waitForOperationsOfClass:(Class)class;
- (void)xpc24HrNotification;
@end

@implementation CKKSKeychainView

- (id)fastStatus:(id)status zoneStateEntry:(id)entry
{
  statusCopy = status;
  entryCopy = entry;
  v26[0] = @"view";
  zoneName = [statusCopy zoneName];
  v8 = zoneName;
  if (zoneName)
  {
    v9 = zoneName;
  }

  else
  {
    v9 = +[NSNull null];
  }

  v10 = v9;

  v27[0] = v10;
  v26[1] = @"zoneCreated";
  if ([entryCopy ckzonecreated])
  {
    v11 = @"yes";
  }

  else
  {
    v11 = @"no";
  }

  v27[1] = v11;
  v26[2] = @"zoneSubscribed";
  if ([entryCopy ckzonesubscribed])
  {
    v12 = @"yes";
  }

  else
  {
    v12 = @"no";
  }

  v27[2] = v12;
  v26[3] = @"keystate";
  viewKeyHierarchyState = [statusCopy viewKeyHierarchyState];
  v14 = viewKeyHierarchyState;
  if (viewKeyHierarchyState)
  {
    v15 = viewKeyHierarchyState;
  }

  else
  {
    v15 = +[NSNull null];
  }

  v16 = v15;

  v27[3] = v16;
  v26[4] = @"ckksManaged";
  if ([statusCopy ckksManagedView])
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
  launch = [statusCopy launch];
  eventsByTime = [launch eventsByTime];

  if (eventsByTime)
  {
    v21 = eventsByTime;
  }

  else
  {
    v21 = +[NSNull null];
  }

  v22 = v21;

  v27[6] = v22;
  v26[7] = @"initialSyncFinished";
  if ([entryCopy initialSyncFinished])
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

- (id)intransactionSlowStatus:(id)status
{
  statusCopy = status;
  zoneID = [statusCopy zoneID];
  contextID = [statusCopy contextID];
  v6 = [CKKSCurrentKeySet loadForZone:zoneID contextID:contextID];

  error = [v6 error];

  if (error)
  {
    zoneID2 = [statusCopy zoneID];
    zoneName = [zoneID2 zoneName];
    v10 = sub_100019104(@"ckks", zoneName);

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      error2 = [v6 error];
      *buf = 138412290;
      v146 = error2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "error loading keyset: %@", buf, 0xCu);
    }
  }

  v12 = objc_alloc_init(NSMutableArray);
  v124 = objc_alloc_init(NSMutableArray);
  contexta = objc_autoreleasePoolPush();
  zoneID3 = [statusCopy zoneID];
  v140 = 0;
  v14 = [CKKSDeviceStateEntry allInZone:zoneID3 error:&v140];
  v15 = v140;

  v138[0] = _NSConcreteStackBlock;
  v138[1] = 3221225472;
  v138[2] = sub_1001B08D4;
  v138[3] = &unk_100343F90;
  v128 = v12;
  v139 = v128;
  [v14 enumerateObjectsUsingBlock:v138];
  v129 = v6;
  currentTLKPointer = [v6 currentTLKPointer];
  currentKeyUUID = [currentTLKPointer currentKeyUUID];
  contextID2 = [statusCopy contextID];
  zoneID4 = [statusCopy zoneID];
  v137 = v15;
  v20 = [CKKSTLKShareRecord allForUUID:currentKeyUUID contextID:contextID2 zoneID:zoneID4 error:&v137];
  v21 = v137;

  v135[0] = _NSConcreteStackBlock;
  v135[1] = 3221225472;
  v135[2] = sub_1001B092C;
  v135[3] = &unk_100343F90;
  v22 = v124;
  v136 = v22;
  [v20 enumerateObjectsUsingBlock:v135];

  objc_autoreleasePoolPop(contexta);
  if ([statusCopy ckksManagedView])
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
    operationDependencies = [(CKKSKeychainView *)self operationDependencies];
    contextID3 = [operationDependencies contextID];
    zoneID5 = [statusCopy zoneID];
    v134 = v25;
    v35 = [CKKSOutgoingQueueEntry countsByStateWithContextID:contextID3 zoneID:zoneID5 error:&v134];
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
    operationDependencies2 = [(CKKSKeychainView *)self operationDependencies];
    contextID4 = [operationDependencies2 contextID];
    zoneID6 = [statusCopy zoneID];
    v133 = v36;
    v47 = [CKKSIncomingQueueEntry countsByStateWithContextID:contextID4 zoneID:zoneID6 error:&v133];
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
    operationDependencies3 = [(CKKSKeychainView *)self operationDependencies];
    contextID5 = [operationDependencies3 contextID];
    zoneID7 = [statusCopy zoneID];
    v132 = v48;
    v58 = [CKKSMirrorEntry countsByParentKeyWithContextID:contextID5 zoneID:zoneID7 error:&v132];
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
    operationDependencies4 = [(CKKSKeychainView *)self operationDependencies];
    contextID6 = [operationDependencies4 contextID];
    zoneID8 = [statusCopy zoneID];
    v131 = v59;
    v79 = [CKKSKey countsByClassWithContextID:contextID6 zoneID:zoneID8 error:&v131];
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
    uuid = [v83 uuid];

    if (uuid)
    {
      v85 = uuid;
    }

    else
    {
      v85 = +[NSNull null];
    }

    v86 = v85;

    v117 = v86;
    v144[7] = v86;
    v143[8] = @"currentClassA";
    classA = [v129 classA];
    uuid2 = [classA uuid];

    if (uuid2)
    {
      v89 = uuid2;
    }

    else
    {
      v89 = +[NSNull null];
    }

    v90 = v89;

    v116 = v90;
    v144[8] = v90;
    v143[9] = @"currentClassC";
    classC = [v129 classC];
    uuid3 = [classC uuid];

    if (uuid3)
    {
      v93 = uuid3;
    }

    else
    {
      v93 = +[NSNull null];
    }

    v94 = v93;

    v115 = v94;
    v144[9] = v94;
    v143[10] = @"currentTLKPtr";
    currentTLKPointer2 = [v129 currentTLKPointer];
    currentKeyUUID2 = [currentTLKPointer2 currentKeyUUID];

    if (currentKeyUUID2)
    {
      v97 = currentKeyUUID2;
    }

    else
    {
      v97 = +[NSNull null];
    }

    v98 = v97;

    v144[10] = v98;
    v143[11] = @"currentClassAPtr";
    currentClassAPointer = [v129 currentClassAPointer];
    currentKeyUUID3 = [currentClassAPointer currentKeyUUID];

    if (currentKeyUUID3)
    {
      v101 = currentKeyUUID3;
    }

    else
    {
      v101 = +[NSNull null];
    }

    v102 = v101;

    v144[11] = v102;
    v143[12] = @"currentClassCPtr";
    currentClassCPointer = [v129 currentClassCPointer];
    currentKeyUUID4 = [currentClassCPointer currentKeyUUID];

    v123 = v80;
    v105 = v22;
    if (currentKeyUUID4)
    {
      v106 = currentKeyUUID4;
    }

    else
    {
      v106 = +[NSNull null];
    }

    v107 = v106;

    v144[12] = v107;
    v143[13] = @"itemsyncing";
    operationDependencies5 = [(CKKSKeychainView *)self operationDependencies];
    syncingPolicy = [operationDependencies5 syncingPolicy];
    zoneID9 = [statusCopy zoneID];
    zoneName2 = [zoneID9 zoneName];
    v112 = [syncingPolicy isSyncingEnabledForView:zoneName2];
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
    uuid4 = [v51 uuid];

    if (uuid4)
    {
      v53 = uuid4;
    }

    else
    {
      v53 = +[NSNull null];
    }

    v61 = v53;

    v142[2] = v61;
    v141[3] = @"currentTLKPtr";
    currentTLKPointer3 = [v129 currentTLKPointer];
    currentKeyUUID5 = [currentTLKPointer3 currentKeyUUID];

    if (currentKeyUUID5)
    {
      v64 = currentKeyUUID5;
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

- (id)viewsForPeerID:(id)d error:(id *)error
{
  dCopy = d;
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
  v7 = dCopy;
  v11 = v7;
  v13 = &v20;
  [(CKKSKeychainView *)self dispatchSyncWithReadOnlySQLTransaction:v10];
  if (error)
  {
    *error = v15[5];
  }

  v8 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

- (BOOL)waitUntilReadyForRPCForOperation:(id)operation fast:(BOOL)fast errorOnNoCloudKitAccount:(BOOL)account errorOnPolicyMissing:(BOOL)missing error:(id *)error
{
  missingCopy = missing;
  accountCopy = account;
  fastCopy = fast;
  operationCopy = operation;
  v13 = +[CKKSViewManager manager];
  completedSecCKKSInitialize = [v13 completedSecCKKSInitialize];
  v15 = [completedSecCKKSInitialize wait:5000000000];

  if (v15)
  {
    v16 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Haven't yet initialized SecDb; expect failure", &v29, 2u);
    }
  }

  accountStateKnown = [(CKKSKeychainView *)self accountStateKnown];
  v18 = accountStateKnown;
  if (fastCopy)
  {
    v19 = 500000000;
  }

  else
  {
    v19 = 2000000000;
  }

  [accountStateKnown wait:v19];

  accountStatus = [(CKKSKeychainView *)self accountStatus];
  if (accountCopy && accountStatus != 1)
  {
    if (accountStatus)
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
    zoneName = [(CKKSKeychainView *)self zoneName];
    v26 = sub_100019104(@"ckkscurrent", zoneName);

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412546;
      v30 = operationCopy;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Rejecting %@ RPC since we don't have an iCloud account: %@", &v29, 0x16u);
    }

    if (error)
    {
      v27 = v23;
      v24 = 0;
      *error = v23;
LABEL_27:

      goto LABEL_28;
    }

LABEL_23:
    v24 = 0;
    goto LABEL_27;
  }

  if (missingCopy)
  {
    if (![(CKKSKeychainView *)self waitForPolicy:5000000000 error:error])
    {
      v23 = sub_100019104(@"ckks", 0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v29 = 138412290;
        v30 = operationCopy;
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
      v30 = operationCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Haven't yet received a policy; expect failure later doing %@", &v29, 0xCu);
    }

    v24 = 1;
    goto LABEL_27;
  }

  v24 = 1;
LABEL_28:

  return v24;
}

- (id)policyDependentViewStateForName:(id)name timeout:(unint64_t)timeout error:(id *)error
{
  nameCopy = name;
  if (![(CKKSKeychainView *)self waitForPolicy:timeout error:error])
  {
    error = 0;
    goto LABEL_12;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1001B1C08;
  v24 = sub_1001B1C18;
  v25 = 0;
  queue = [(CKKSKeychainView *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B25A0;
  block[3] = &unk_100344920;
  block[4] = self;
  v10 = nameCopy;
  v18 = v10;
  v19 = &v20;
  dispatch_sync(queue, block);

  v11 = v21[5];
  if (!v11)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    v26 = NSLocalizedDescriptionKey;
    v12 = [NSString stringWithFormat:@"No syncing view for '%@'", v10];
    v27 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    *error = [NSError errorWithDomain:@"CKKSErrorDomain" code:11 userInfo:v13];

LABEL_10:
    error = 0;
    goto LABEL_11;
  }

  if (([v11 ckksManagedView] & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    zoneName = [v21[5] zoneName];
    v15 = [NSString stringWithFormat:@"Cannot get view %@ is externally managed", zoneName];;
    *error = [NSError errorWithDomain:@"CKKSErrorDomain" code:63 description:v15];

    goto LABEL_10;
  }

  error = v21[5];
LABEL_11:

  _Block_object_dispose(&v20, 8);
LABEL_12:

  return error;
}

- (BOOL)waitForPolicy:(unint64_t)policy error:(id *)error
{
  policyLoaded = [(CKKSKeychainView *)self policyLoaded];
  v7 = [policyLoaded wait:policy];

  if (v7)
  {
    v8 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Haven't yet received a syncing policy", v12, 2u);
    }

    if (error)
    {
      v13 = NSLocalizedDescriptionKey;
      v9 = [NSString stringWithFormat:@"CKKS syncing policy not yet loaded"];
      v14 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      *error = [NSError errorWithDomain:@"CKKSErrorDomain" code:56 userInfo:v10];
    }
  }

  return v7 == 0;
}

- (void)halt
{
  stateMachine = [(CKKSKeychainView *)self stateMachine];
  [stateMachine haltOperation];

  queue = [(CKKSKeychainView *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B2AF0;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(queue, block);

  [(CKKSKeychainView *)self cancelAllOperations];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  operationQueue = [(CKKSKeychainView *)self operationQueue];
  operations = [operationQueue operations];

  v7 = [operations countByEnumeratingWithState:&v26 objects:v32 count:16];
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
          objc_enumerationMutation(operations);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        if ([v11 isExecuting])
        {
          [v11 waitUntilFinished];
        }
      }

      v8 = [operations countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v8);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  allViews = [operationDependencies allViews];

  v14 = [allViews countByEnumeratingWithState:&v22 objects:v31 count:16];
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
          objc_enumerationMutation(allViews);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        notifyViewChangedScheduler = [v18 notifyViewChangedScheduler];
        [notifyViewChangedScheduler cancel];

        notifyViewReadyScheduler = [v18 notifyViewReadyScheduler];
        [notifyViewReadyScheduler cancel];
      }

      v15 = [allViews countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v15);
  }

  zoneChangeFetcher = [(CKKSKeychainView *)self zoneChangeFetcher];
  [zoneChangeFetcher halt];
}

- (void)cancelAllOperations
{
  [(CKKSKeychainView *)self cancelPendingOperations];
  operationQueue = [(CKKSKeychainView *)self operationQueue];
  [operationQueue cancelAllOperations];
}

- (void)cancelPendingOperations
{
  outgoingQueueOperations = [(CKKSKeychainView *)self outgoingQueueOperations];
  objc_sync_enter(outgoingQueueOperations);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  outgoingQueueOperations2 = [(CKKSKeychainView *)self outgoingQueueOperations];
  v5 = [outgoingQueueOperations2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(outgoingQueueOperations2);
        }

        [*(*(&v9 + 1) + 8 * v7) cancel];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [outgoingQueueOperations2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  outgoingQueueOperations3 = [(CKKSKeychainView *)self outgoingQueueOperations];
  [outgoingQueueOperations3 removeAllObjects];

  objc_sync_exit(outgoingQueueOperations);
}

- (void)waitForOperationsOfClass:(Class)class
{
  operationQueue = [(CKKSKeychainView *)self operationQueue];
  operations = [operationQueue operations];
  v5 = [operations copy];

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
  stateMachine = [(CKKSKeychainView *)self stateMachine];
  paused = [stateMachine paused];
  v4 = [paused wait:189000000000] == 0;

  return v4;
}

- (BOOL)scheduleOperationWithoutDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  halted = [(CKKSKeychainView *)self halted];
  if (halted)
  {
    zoneName = [(CKKSKeychainView *)self zoneName];
    operationQueue = sub_100019104(@"ckkszone", zoneName);

    if (os_log_type_enabled(operationQueue, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, operationQueue, OS_LOG_TYPE_ERROR, "attempted to schedule an non-dependent operation on a halted zone, ignoring", v9, 2u);
    }
  }

  else
  {
    operationQueue = [(CKKSKeychainView *)self operationQueue];
    [operationQueue addOperation:dependenciesCopy];
  }

  return halted ^ 1;
}

- (void)scheduleOperation:(id)operation
{
  operationCopy = operation;
  if ([(CKKSKeychainView *)self halted])
  {
    zoneName = [(CKKSKeychainView *)self zoneName];
    operationQueue = sub_100019104(@"ckkszone", zoneName);

    if (os_log_type_enabled(operationQueue, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, operationQueue, OS_LOG_TYPE_ERROR, "attempted to schedule an operation on a halted zone, ignoring", v8, 2u);
    }
  }

  else
  {
    accountLoggedInDependency = [(CKKSKeychainView *)self accountLoggedInDependency];
    [operationCopy addNullableDependency:accountLoggedInDependency];

    operationQueue = [(CKKSKeychainView *)self operationQueue];
    [operationQueue addOperation:operationCopy];
  }
}

- (BOOL)waitForKeyHierarchyReadiness
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  allCKKSManagedViews = [operationDependencies allCKKSManagedViews];

  v4 = [allCKKSManagedViews countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allCKKSManagedViews);
        }

        keyHierarchyConditions = [*(*(&v13 + 1) + 8 * i) keyHierarchyConditions];
        v10 = [keyHierarchyConditions objectForKeyedSubscript:@"ready"];
        v11 = [v10 wait:300000000000] == 0;

        v7 &= v11;
      }

      v5 = [allCKKSManagedViews countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  zoneChangeFetcher = [(CKKSKeychainView *)self zoneChangeFetcher];
  inflightFetch = [zoneChangeFetcher inflightFetch];

  if (inflightFetch)
  {
    [inflightFetch waitUntilFinished];
  }

  stateMachine = [(CKKSKeychainView *)self stateMachine];
  flags = [stateMachine flags];
  v7 = [flags conditionForFlagIfPresent:@"process_incoming_queue"];

  if (v7)
  {
    v8 = [v7 wait:117000000000] == 0;
  }

  else
  {
    v8 = 1;
  }

  stateMachine2 = [(CKKSKeychainView *)self stateMachine];
  paused = [stateMachine2 paused];
  if ([paused wait:109000000000])
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)outgoingQueueEmpty:(id *)empty
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
  v5[5] = empty;
  [(CKKSKeychainView *)self dispatchSyncWithReadOnlySQLTransaction:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)trustedPeerSetChanged:(id)changed
{
  zoneName = [(CKKSKeychainView *)self zoneName];
  v5 = sub_100019104(@"ckks", zoneName);

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Received update that the trust set has changed", v7, 2u);
  }

  stateMachine = [(CKKSKeychainView *)self stateMachine];
  [stateMachine handleFlag:@"trusted_peers_changed"];
}

- (void)selfPeerChanged:(id)changed
{
  zoneName = [(CKKSKeychainView *)self zoneName];
  v5 = sub_100019104(@"ckks", zoneName);

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Received update that our self identity has changed", v6, 2u);
  }

  [(CKKSKeychainView *)self keyStateMachineRequestProcess];
}

- (BOOL)shouldRetryAfterFetchError:(id)error zoneID:(id)d
{
  errorCopy = error;
  dCopy = d;
  if ([(CKKSKeychainView *)self ckErrorOrPartialError:errorCopy isError:21 zoneID:dCopy])
  {
    zoneName = [dCopy zoneName];
    v9 = sub_100019104(@"ckks", zoneName);

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412290;
      v21 = dCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Received notice that our change token is out of date (for %@). Resetting local data...", &v20, 0xCu);
    }

    stateMachine = [(CKKSKeychainView *)self stateMachine];
    v11 = stateMachine;
    v12 = @"ck_change_token_expired";
  }

  else
  {
    if (![(CKKSKeychainView *)self ckErrorOrPartialError:errorCopy isError:26 zoneID:dCopy])
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:CKErrorDomain])
      {
        code = [errorCopy code];

        if (code == 5)
        {
          zoneName2 = [dCopy zoneName];
          v11 = sub_100019104(@"ckks", zoneName2);

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

    zoneName3 = [dCopy zoneName];
    v14 = sub_100019104(@"ckks", zoneName3);

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412290;
      v21 = dCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Received notice that our zone(%@) does not exist. Resetting local data.", &v20, 0xCu);
    }

    stateMachine = [(CKKSKeychainView *)self stateMachine];
    v11 = stateMachine;
    v12 = @"ck_zone_missing";
  }

  [stateMachine handleFlag:v12];
LABEL_10:

  v15 = 0;
LABEL_11:

  return v15;
}

- (BOOL)ckErrorOrPartialError:(id)error isError:(int64_t)isError zoneID:(id)d
{
  errorCopy = error;
  dCopy = d;
  if ([errorCopy code] == isError)
  {
    domain = [errorCopy domain];
    v10 = [domain isEqualToString:CKErrorDomain];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  if ([errorCopy code] != 2 || (objc_msgSend(errorCopy, "domain"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", CKErrorDomain), v12, !v13))
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  userInfo = [errorCopy userInfo];
  v15 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  v16 = [v15 objectForKeyedSubscript:dCopy];
  if ([v16 code] != isError)
  {

    goto LABEL_10;
  }

  domain2 = [v16 domain];
  v18 = [domain2 isEqualToString:CKErrorDomain];

  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  v11 = 1;
LABEL_11:

  return v11;
}

- (void)changesFetched:(id)fetched deletedRecordIDs:(id)ds zoneID:(id)d newChangeToken:(id)token moreComing:(BOOL)coming resync:(BOOL)resync fetchNewestChangesFirst:(BOOL)first
{
  fetchedCopy = fetched;
  dsCopy = ds;
  dCopy = d;
  tokenCopy = token;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = [dsCopy count];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001B3B08;
  v28[3] = &unk_100343F18;
  v28[4] = self;
  v19 = dCopy;
  v29 = v19;
  v20 = fetchedCopy;
  v30 = v20;
  resyncCopy = resync;
  v21 = dsCopy;
  comingCopy = coming;
  v31 = v21;
  v33 = &v37;
  v22 = tokenCopy;
  v32 = v22;
  firstCopy = first;
  [(CKKSKeychainView *)self dispatchSyncWithSQLTransaction:v28];
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  zoneName = [v19 zoneName];
  v25 = [operationDependencies viewStateForName:zoneName];

  if (v38[3])
  {
    notifyViewChangedScheduler = [v25 notifyViewChangedScheduler];
    [notifyViewChangedScheduler trigger];
  }

  if (([v25 ckksManagedView] & 1) == 0)
  {
    if ([v20 count] || objc_msgSend(v21, "count"))
    {
      notifyViewChangedScheduler2 = [v25 notifyViewChangedScheduler];
      [notifyViewChangedScheduler2 trigger];
    }

    if (!coming)
    {
      [v25 launchComplete];
    }
  }

  _Block_object_dispose(&v37, 8);
}

- (id)participateInFetch:(id)fetch
{
  fetchCopy = fetch;
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
  v5 = fetchCopy;
  v9 = v5;
  v10 = &v11;
  [(CKKSKeychainView *)self dispatchSyncWithReadOnlySQLTransaction:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (BOOL)_onQueueZoneIsReadyForFetching:(id)fetching
{
  fetchingCopy = fetching;
  queue = [(CKKSKeychainView *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CKKSKeychainView *)self accountStatus]== 1)
  {
    operationDependencies = [(CKKSKeychainView *)self operationDependencies];
    contextID = [operationDependencies contextID];
    zoneName = [fetchingCopy zoneName];
    v9 = [CKKSZoneStateEntry contextID:contextID zoneName:zoneName];

    if (([v9 ckzonecreated]& 1) != 0)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      operationDependencies2 = [(CKKSKeychainView *)self operationDependencies];
      views = [operationDependencies2 views];

      v12 = [views countByEnumeratingWithState:&v27 objects:v32 count:16];
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
            objc_enumerationMutation(views);
          }

          v16 = *(*(&v27 + 1) + 8 * v15);
          zoneName2 = [v16 zoneName];
          zoneName3 = [fetchingCopy zoneName];
          v19 = [zoneName2 isEqualToString:zoneName3];

          if (v19)
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [views countByEnumeratingWithState:&v27 objects:v32 count:16];
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
      zoneName4 = [fetchingCopy zoneName];
      v25 = sub_100019104(@"ckksfetch", zoneName4);

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Not participating in fetch: zone is not active", buf, 2u);
      }

      v23 = 0;
    }

    else
    {
      zoneName5 = [fetchingCopy zoneName];
      v23 = sub_100019104(@"ckksfetch", zoneName5);

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

  zoneName6 = [(CKKSKeychainView *)self zoneName];
  v9 = sub_100019104(@"ckksfetch", zoneName6);

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not participating in fetch: not logged in", buf, 2u);
  }

  v21 = 0;
LABEL_24:

  return v21;
}

- (BOOL)zoneIsReadyForFetching:(id)fetching
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
  selfCopy = self;
  fetchingCopy = fetching;
  v8 = fetchingCopy;
  [(CKKSKeychainView *)selfCopy dispatchSyncWithReadOnlySQLTransaction:v6];
  v4 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v4;
}

- (void)_onqueuePrioritizePriorityViews
{
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  allPriorityViews = [operationDependencies allPriorityViews];

  if ([allPriorityViews count])
  {
    operationDependencies2 = [(CKKSKeychainView *)self operationDependencies];
    [operationDependencies2 limitOperationToPriorityViews];

    zoneName = [(CKKSKeychainView *)self zoneName];
    v7 = sub_100019104(@"ckksviews", zoneName);

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      operationDependencies3 = [(CKKSKeychainView *)self operationDependencies];
      views = [operationDependencies3 views];
      *buf = 138412290;
      v29 = views;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Restricting operation to priority views: %@", buf, 0xCu);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    operationDependencies4 = [(CKKSKeychainView *)self operationDependencies];
    allViews = [operationDependencies4 allViews];

    v12 = [allViews countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(allViews);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          priorityView = [v16 priorityView];
          launch = [v16 launch];
          v19 = launch;
          if (priorityView)
          {
            v20 = @"priority-start";
          }

          else
          {
            v20 = @"priority-pause";
          }

          [launch addEvent:v20];
        }

        v13 = [allViews countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    operationDependencies5 = [(CKKSKeychainView *)self operationDependencies];
    overallLaunch = [operationDependencies5 overallLaunch];
    [overallLaunch addEvent:@"priority-start"];
  }
}

- (id)viewStateForName:(id)name
{
  nameCopy = name;
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  v6 = [operationDependencies viewStateForName:nameCopy];

  return v6;
}

- (BOOL)haveTLKsLocally:(id)locally error:(id *)error
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
  locallyCopy = locally;
  v11 = locallyCopy;
  selfCopy = self;
  v13 = &v19;
  v14 = &v15;
  [(CKKSKeychainView *)self dispatchSyncWithReadOnlySQLTransaction:v10];
  if (error)
  {
    v7 = v20[5];
    if (v7)
    {
      *error = v7;
    }
  }

  v8 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v8;
}

- (void)testDropPolicy
{
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  v4 = +[NSSet set];
  [operationDependencies applyNewSyncingPolicy:0 viewStates:v4];

  v5 = objc_alloc_init(CKKSCondition);
  [(CKKSKeychainView *)self setPolicyLoaded:v5];
}

- (void)onqueueCreatePriorityViewsProcessedWatcher
{
  v3 = [OctagonStateMultiStateArrivalWatcher alloc];
  queue = [(CKKSKeychainView *)self queue];
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
  v10 = [(OctagonStateMultiStateArrivalWatcher *)v3 initNamed:@"wait-for-priority-view-processing" serialQueue:queue states:v6 failStates:v9];
  [(CKKSKeychainView *)self setPriorityViewsProcessed:v10];

  stateMachine = [(CKKSKeychainView *)self stateMachine];
  priorityViewsProcessed = [(CKKSKeychainView *)self priorityViewsProcessed];
  [stateMachine _onqueueRegisterMultiStateArrivalWatcher:priorityViewsProcessed startTimeout:-1];
}

- (BOOL)setCurrentSyncingPolicy:(id)policy policyIsFresh:(BOOL)fresh
{
  freshCopy = fresh;
  policyCopy = policy;
  v51 = policyCopy;
  if (policyCopy)
  {
    version = [policyCopy version];
    v48 = [NSString stringWithFormat:@"%llu", [version versionNumber]];
    v6 = [AAFAnalyticsEventSecurity alloc];
    v68[0] = v48;
    v67[0] = kSecurityRTCFieldSyncingPolicy;
    v67[1] = kSecurityRTCFieldPolicyFreshness;
    v7 = [NSNumber numberWithBool:freshCopy];
    v68[1] = v7;
    v67[2] = kSecurityRTCFieldNumViews;
    viewList = [v51 viewList];
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [viewList count]);
    v68[2] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:3];
    operationDependencies = [(CKKSKeychainView *)self operationDependencies];
    activeAccount = [operationDependencies activeAccount];
    altDSID = [activeAccount altDSID];
    operationDependencies2 = [(CKKSKeychainView *)self operationDependencies];
    sendMetric = [operationDependencies2 sendMetric];
    v16 = [v6 initWithCKKSMetrics:v10 altDSID:altDSID eventName:kSecurityRTCEventNameSyncingPolicySet testsAreEnabled:0 category:kSecurityRTCEventCategoryAccountDataAccessRecovery sendMetric:sendMetric];

    viewList2 = [v51 viewList];
    v18 = sub_100019104(@"ckks-policy", 0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"cached";
      *buf = 138412802;
      *&buf[4] = v51;
      *&buf[12] = 2112;
      if (freshCopy)
      {
        v19 = @"fresh";
      }

      *&buf[14] = v19;
      *&buf[22] = 2112;
      v66 = viewList2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "New syncing policy: %@ (%@) views: %@", buf, 0x20u);
    }

    operationDependencies3 = [(CKKSKeychainView *)self operationDependencies];
    overallLaunch = [operationDependencies3 overallLaunch];
    [overallLaunch addEvent:@"syncing-policy-set"];

    v64[0] = CKKSSEViewPTA;
    v64[1] = CKKSSEViewPTC;
    v22 = [NSArray arrayWithObjects:v64 count:2];
    v23 = [NSSet setWithArray:v22];

    viewAllowList = [(CKKSKeychainView *)self viewAllowList];

    if (viewAllowList)
    {
      v25 = sub_100019104(@"ckks-policy", 0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        viewAllowList2 = [(CKKSKeychainView *)self viewAllowList];
        *buf = 138412290;
        *&buf[4] = viewAllowList2;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Intersecting view list with allow list: %@", buf, 0xCu);
      }

      v27 = [viewList2 mutableCopy];
      viewAllowList3 = [(CKKSKeychainView *)self viewAllowList];
      [v27 intersectSet:viewAllowList3];

      v29 = v27;
      v30 = sub_100019104(@"ckks-policy", 0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v29;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Final list: %@", buf, 0xCu);
      }

      v31 = [v23 mutableCopy];
      viewAllowList4 = [(CKKSKeychainView *)self viewAllowList];
      [v31 intersectSet:viewAllowList4];

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
      v29 = viewList2;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v66) = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    operationDependencies4 = [(CKKSKeychainView *)self operationDependencies];
    databaseProvider = [operationDependencies4 databaseProvider];
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
    v59 = freshCopy;
    [databaseProvider dispatchSyncWithReadOnlySQLTransaction:v53];

    if (freshCopy)
    {
      stateMachine = [(CKKSKeychainView *)self stateMachine];
      [stateMachine handleFlag:@"policy_fresh"];

      stateMachine2 = [(CKKSKeychainView *)self stateMachine];
      [stateMachine2 handleFlag:@"process_incoming_queue"];
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
      stateMachine3 = [(CKKSKeychainView *)self stateMachine];
      [stateMachine3 handleFlag:@"dropped_items"];
    }

    v45 = +[CKKSViewManager manager];
    [v45 setupAnalytics];

    policyLoaded = [(CKKSKeychainView *)self policyLoaded];
    [policyLoaded fulfill];

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

    v35 = version;
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
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  syncingPolicy = [operationDependencies syncingPolicy];

  return syncingPolicy;
}

- (void)endTrustedOperation
{
  v3 = [AAFAnalyticsEventSecurity alloc];
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  activeAccount = [operationDependencies activeAccount];
  altDSID = [activeAccount altDSID];
  v7 = kSecurityRTCEventNameTrustLoss;
  v8 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  operationDependencies2 = [(CKKSKeychainView *)self operationDependencies];
  v10 = [v3 initWithCKKSMetrics:&__NSDictionary0__struct altDSID:altDSID eventName:v7 testsAreEnabled:0 category:v8 sendMetric:{objc_msgSend(operationDependencies2, "sendMetric")}];

  queue = [(CKKSKeychainView *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B790C;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(queue, block);

  [v10 sendMetricWithResult:1 error:0];
}

- (void)beginTrustedOperation:(id)operation suggestTLKUpload:(id)upload requestPolicyCheck:(id)check
{
  operationCopy = operation;
  uploadCopy = upload;
  checkCopy = check;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = [operationCopy countByEnumeratingWithState:&v35 objects:v41 count:16];
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
          objc_enumerationMutation(operationCopy);
        }

        [*(*(&v35 + 1) + 8 * v12) registerForPeerChangeUpdates:self];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [operationCopy countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v10);
  }

  v28 = [AAFAnalyticsEventSecurity alloc];
  v39 = kSecurityRTCFieldTrustStatus;
  trustStatus = [(CKKSKeychainView *)self trustStatus];
  v14 = @"available";
  if (trustStatus == 3)
  {
    v14 = @"no account";
  }

  if (!trustStatus)
  {
    v14 = @"unknown";
  }

  v15 = v14;
  v40 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  activeAccount = [operationDependencies activeAccount];
  altDSID = [activeAccount altDSID];
  v20 = kSecurityRTCEventNameTrustGain;
  v21 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  operationDependencies2 = [(CKKSKeychainView *)self operationDependencies];
  v23 = [v28 initWithCKKSMetrics:v16 altDSID:altDSID eventName:v20 testsAreEnabled:0 category:v21 sendMetric:{objc_msgSend(operationDependencies2, "sendMetric")}];

  queue = [(CKKSKeychainView *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B7D28;
  block[3] = &unk_100344B18;
  block[4] = self;
  v32 = operationCopy;
  v33 = checkCopy;
  v34 = uploadCopy;
  v25 = uploadCopy;
  v26 = checkCopy;
  v27 = operationCopy;
  dispatch_sync(queue, block);

  [v23 sendMetricWithResult:1 error:0];
}

- (void)handleCKLogout
{
  queue = [(CKKSKeychainView *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B815C;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(queue, block);

  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  overallLaunch = [operationDependencies overallLaunch];
  [overallLaunch addEvent:@"ck-account-logout"];

  stateMachine = [(CKKSKeychainView *)self stateMachine];
  [stateMachine handleFlag:@"ck_account_logged_out"];

  accountStateKnown = [(CKKSKeychainView *)self accountStateKnown];
  [accountStateKnown fulfill];
}

- (void)handleCKLogin
{
  zoneName = [(CKKSKeychainView *)self zoneName];
  v4 = sub_100019104(@"ckks", zoneName);

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "received a notification of CK login", buf, 2u);
  }

  if (sub_100019064())
  {
    queue = [(CKKSKeychainView *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B84F4;
    block[3] = &unk_100346018;
    block[4] = self;
    dispatch_sync(queue, block);

    operationDependencies = [(CKKSKeychainView *)self operationDependencies];
    overallLaunch = [operationDependencies overallLaunch];
    [overallLaunch addEvent:@"ck-account-login"];

    v8 = [AAFAnalyticsEventSecurity alloc];
    operationDependencies2 = [(CKKSKeychainView *)self operationDependencies];
    activeAccount = [operationDependencies2 activeAccount];
    altDSID = [activeAccount altDSID];
    v12 = kSecurityRTCEventNameCKAccountLogin;
    v13 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    operationDependencies3 = [(CKKSKeychainView *)self operationDependencies];
    v15 = [v8 initWithCKKSMetrics:&__NSDictionary0__struct altDSID:altDSID eventName:v12 testsAreEnabled:0 category:v13 sendMetric:{objc_msgSend(operationDependencies3, "sendMetric")}];

    [v15 sendMetricWithResult:1 error:0];
    stateMachine = [(CKKSKeychainView *)self stateMachine];
    [stateMachine handleFlag:@"ck_account_logged_in"];

    accountStateKnown = [(CKKSKeychainView *)self accountStateKnown];
    [accountStateKnown fulfill];
  }

  else
  {
    zoneName2 = [(CKKSKeychainView *)self zoneName];
    v19 = sub_100019104(@"ckks", zoneName2);

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Skipping CloudKit initialization due to disabled CKKS", buf, 2u);
    }
  }
}

- (void)updateAccount:(id)account container:(id)container
{
  accountCopy = account;
  containerCopy = container;
  isPrimaryAccount = [accountCopy isPrimaryAccount];
  if (containerCopy && (isPrimaryAccount & 1) == 0)
  {
    v9 = sub_100019104(@"ckks-account", 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      options = [containerCopy options];
      accountOverrideInfo = [options accountOverrideInfo];
      accountID = [accountOverrideInfo accountID];
      v26 = 138412546;
      v27 = accountCopy;
      v28 = 2112;
      v29 = accountID;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Switching CloudKit container for CKKS & CKKSAccountStateTracker for account(%@) associated with (%@) container", &v26, 0x16u);
    }

    [(CKKSKeychainView *)self setContainer:containerCopy];
    zoneChangeFetcher = [(CKKSKeychainView *)self zoneChangeFetcher];
    [zoneChangeFetcher setContainer:containerCopy];

    accountTracker = [(CKKSKeychainView *)self accountTracker];
    [accountTracker setContainer:containerCopy];

    privateCloudDatabase = [containerCopy privateCloudDatabase];
    operationDependencies = [(CKKSKeychainView *)self operationDependencies];
    [operationDependencies setCkdatabase:privateCloudDatabase];
  }

  operationDependencies2 = [(CKKSKeychainView *)self operationDependencies];
  activeAccount = [operationDependencies2 activeAccount];
  if (!activeAccount)
  {
    goto LABEL_11;
  }

  v19 = activeAccount;
  operationDependencies3 = [(CKKSKeychainView *)self operationDependencies];
  activeAccount2 = [operationDependencies3 activeAccount];
  v22 = [activeAccount2 isEqual:accountCopy];

  if ((v22 & 1) == 0)
  {
    v23 = sub_100019104(@"ckks-account", 0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      operationDependencies4 = [(CKKSKeychainView *)self operationDependencies];
      activeAccount3 = [operationDependencies4 activeAccount];
      v26 = 138412546;
      v27 = accountCopy;
      v28 = 2112;
      v29 = activeAccount3;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Updating CKKS's idea of account to %@; old: %@", &v26, 0x16u);
    }

    operationDependencies2 = [(CKKSKeychainView *)self operationDependencies];
    [operationDependencies2 setActiveAccount:accountCopy];
LABEL_11:
  }
}

- (void)cloudkitAccountStateChange:(id)change to:(id)to
{
  changeCopy = change;
  toCopy = to;
  zoneName = [(CKKSKeychainView *)self zoneName];
  v9 = sub_100019104(@"ckkszone", zoneName);

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 138412546;
    *&v27[4] = changeCopy;
    v28 = 2112;
    v29 = toCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received notification of CloudKit account status change, moving from %@ to %@", v27, 0x16u);
  }

  v10 = [(CKKSKeychainView *)self accountStatusFromCKAccountInfo:changeCopy];
  v11 = [(CKKSKeychainView *)self accountStatusFromCKAccountInfo:toCopy];
  if (v10 == v11)
  {
    zoneName2 = [(CKKSKeychainView *)self zoneName];
    v13 = sub_100019104(@"ckkszone", zoneName2);

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
        zoneName3 = [(CKKSKeychainView *)self zoneName];
        v17 = sub_100019104(@"ckkszone", zoneName3);

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Logged into iCloud.", v27, 2u);
        }

        [(CKKSKeychainView *)self handleCKLogin];
        accountLoggedInDependency = [(CKKSKeychainView *)self accountLoggedInDependency];

        if (accountLoggedInDependency)
        {
          operationQueue = [(CKKSKeychainView *)self operationQueue];
          accountLoggedInDependency2 = [(CKKSKeychainView *)self accountLoggedInDependency];
          [operationQueue addOperation:accountLoggedInDependency2];

          [(CKKSKeychainView *)self setAccountLoggedInDependency:0];
        }
      }

      goto LABEL_26;
    }

    zoneName4 = [(CKKSKeychainView *)self zoneName];
    v22 = sub_100019104(@"ckkszone", zoneName4);

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
    zoneName5 = [(CKKSKeychainView *)self zoneName];
    v22 = sub_100019104(@"ckkszone", zoneName5);

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      v23 = "Account status has become undetermined. Pausing!";
      goto LABEL_22;
    }
  }

  accountLoggedInDependency3 = [(CKKSKeychainView *)self accountLoggedInDependency];

  if (!accountLoggedInDependency3)
  {
    v26 = [(CKKSKeychainView *)self createAccountLoggedInDependency:@"CloudKit account logged in again."];
    [(CKKSKeychainView *)self setAccountLoggedInDependency:v26];
  }

  [(CKKSKeychainView *)self handleCKLogout];
LABEL_26:
}

- (int64_t)accountStatusFromCKAccountInfo:(id)info
{
  infoCopy = info;
  v4 = infoCopy;
  if (infoCopy)
  {
    if ([infoCopy accountStatus] == 1 && (objc_msgSend(v4, "hasValidCredentials") & 1) != 0)
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

- (id)createAccountLoggedInDependency:(id)dependency
{
  dependencyCopy = dependency;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001B8DD4;
  v8[3] = &unk_100344D38;
  objc_copyWeak(&v10, &location);
  v5 = dependencyCopy;
  v9 = v5;
  v6 = [CKKSResultOperation named:@"account-logged-in-dependency" withBlock:v8];
  [v6 setDescriptionErrorCode:3];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (void)beginCloudKitOperation
{
  accountTracker = [(CKKSKeychainView *)self accountTracker];
  v3 = [accountTracker registerForNotificationsOfCloudKitAccountStatusChange:self];
}

- (BOOL)insideSQLTransaction
{
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  databaseProvider = [operationDependencies databaseProvider];
  insideSQLTransaction = [databaseProvider insideSQLTransaction];

  return insideSQLTransaction;
}

- (void)dispatchSyncWithReadOnlySQLTransaction:(id)transaction
{
  transactionCopy = transaction;
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  databaseProvider = [operationDependencies databaseProvider];
  [databaseProvider dispatchSyncWithReadOnlySQLTransaction:transactionCopy];
}

- (void)dispatchSyncWithSQLTransaction:(id)transaction
{
  transactionCopy = transaction;
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  databaseProvider = [operationDependencies databaseProvider];
  [databaseProvider dispatchSyncWithSQLTransaction:transactionCopy];
}

- (BOOL)_onqueueResetAllInflightOQE:(id *)e
{
  selfCopy = self;
  queue = [(CKKSKeychainView *)self queue];
  dispatch_assert_queue_V2(queue);

  v50 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  operationDependencies = [(CKKSKeychainView *)selfCopy operationDependencies];
  allCKKSManagedViews = [operationDependencies allCKKSManagedViews];

  v8 = [allCKKSManagedViews countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v8)
  {
    eCopy = e;
    v40 = allCKKSManagedViews;
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
          objc_enumerationMutation(allCKKSManagedViews);
        }

        v38 = v12;
        v13 = *(*(&v47 + 1) + 8 * v12);
        while (1)
        {
          v14 = p_info + 276;
          v15 = selfCopy;
          operationDependencies2 = [(CKKSKeychainView *)selfCopy operationDependencies];
          contextID = [operationDependencies2 contextID];
          zoneID = [v13 zoneID];
          v46 = 0;
          v19 = v11;
          v20 = [v14 fetch:100 state:v11 contextID:contextID zoneID:zoneID error:&v46];
          v21 = v46;

          if (v21)
          {
            zoneName = [(CKKSKeychainView *)v15 zoneName];
            v34 = sub_100019104(@"ckks", zoneName);

            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v52 = v21;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Error finding inflight outgoing queue records: %@", buf, 0xCu);
            }

            allCKKSManagedViews = v40;
            if (eCopy)
            {
              v35 = v21;
              *eCopy = v21;
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
                  zoneName2 = [(CKKSKeychainView *)v15 zoneName];
                  v30 = sub_100019104(@"ckks", zoneName2);

                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v52 = v26;
                    v53 = 2112;
                    v54 = v21;
                    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Error fixing up inflight OQE(%@): %@", buf, 0x16u);
                  }

                  allCKKSManagedViews = v40;
                  if (eCopy)
                  {
                    v31 = v21;
                    *eCopy = v21;
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
          selfCopy = v15;
        }

        v12 = v38 + 1;
        allCKKSManagedViews = v40;
        v9 = v36;
        p_info = (&OBJC_METACLASS___CKKSMemoryKeyCache + 32);
        v11 = v19;
        selfCopy = v15;
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
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  v5 = [(CKKSLocalSynchronizeOperation *)v3 initWithCKKSKeychainView:self operationDependencies:operationDependencies];

  [(CKKSKeychainView *)self scheduleOperation:v5];

  return v5;
}

- (id)resyncWithCloud
{
  v3 = [CKKSSynchronizeOperation alloc];
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  v5 = [(CKKSSynchronizeOperation *)v3 initWithCKKSKeychainView:self dependencies:operationDependencies];

  [(CKKSKeychainView *)self scheduleOperation:v5];

  return v5;
}

- (void)xpc24HrNotification
{
  stateMachine = [(CKKSKeychainView *)self stateMachine];
  [stateMachine handleFlag:@"24_hr_notification"];
}

- (void)initialSyncStatus:(id)status reply:(id)reply
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B9644;
  v7[3] = &unk_100343D18;
  selfCopy = self;
  statusCopy = status;
  replyCopy = reply;
  v5 = replyCopy;
  v6 = statusCopy;
  [(CKKSKeychainView *)selfCopy dispatchSyncWithReadOnlySQLTransaction:v7];
}

- (void)pcsMirrorKeysForServices:(id)services reply:(id)reply
{
  servicesCopy = services;
  replyCopy = reply;
  objc_initWeak(&location, self);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1001B985C;
  v14 = &unk_100343EC8;
  objc_copyWeak(&v17, &location);
  v8 = servicesCopy;
  v15 = v8;
  v9 = replyCopy;
  v16 = v9;
  v10 = [CKKSResultOperation named:@"pcs-mirror-keys" withBlock:&v11];
  [(CKKSKeychainView *)self scheduleOperation:v10, v11, v12, v13, v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)toggleHavoc:(id)havoc
{
  havocCopy = havoc;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = [(CKKSKeychainView *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B9C24;
  v6[3] = &unk_100344E90;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  (*(havocCopy + 2))(havocCopy, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)scanLocalItems
{
  stateMachine = [(CKKSKeychainView *)self stateMachine];
  [stateMachine handleFlag:@"dropped_items"];
}

- (id)rpcWaitForPriorityViewProcessing
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1001B1C08;
  v11 = sub_1001B1C18;
  v12 = 0;
  queue = [(CKKSKeychainView *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B9FF4;
  v6[3] = &unk_100344E90;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)rpcProcessIncomingQueue:(id)queue errorOnClassAFailure:(BOOL)failure
{
  if (failure)
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
  stateMachine = [(CKKSKeychainView *)self stateMachine];
  v13 = [(OctagonStateTransitionWatcher *)v11 initNamed:@"process-incoming-queue" stateMachine:stateMachine path:v10 initialRequest:0];

  stateMachine2 = [(CKKSKeychainView *)self stateMachine];
  [stateMachine2 registerStateTransitionWatcher:v13 startTimeout:300000000000];

  stateMachine3 = [(CKKSKeychainView *)self stateMachine];
  [stateMachine3 handleFlag:@"process_incoming_queue"];

  result = [v13 result];

  return result;
}

- (id)rpcFetchAndProcessIncomingQueue:(id)queue because:(id)because errorOnClassAFailure:(BOOL)failure
{
  failureCopy = failure;
  queueCopy = queue;
  becauseCopy = because;
  v48 = 0;
  LOBYTE(because) = [(CKKSKeychainView *)self waitForPolicy:5000000000 error:&v48];
  v8 = v48;
  v36 = v8;
  if (because)
  {
    if (failureCopy)
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
    stateMachine = [(CKKSKeychainView *)self stateMachine];
    v26 = [(OctagonStateTransitionWatcher *)v24 initNamed:@"fetch-and-process" stateMachine:stateMachine path:v23 initialRequest:0];

    stateMachine2 = [(CKKSKeychainView *)self stateMachine];
    [stateMachine2 registerStateTransitionWatcher:v26 startTimeout:300000000000];

    queue = [(CKKSKeychainView *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001BAD1C;
    block[3] = &unk_100343E38;
    block[4] = self;
    v45 = becauseCopy;
    dispatch_sync(queue, block);

    objc_initWeak(&location, self);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1001BADA8;
    v39[3] = &unk_100343E80;
    objc_copyWeak(&v42, &location);
    v29 = v26;
    v40 = v29;
    v41 = queueCopy;
    v10 = [CKKSResultOperation named:@"check-keys" withBlockTakingSelf:v39];
    result = [v29 result];
    [v10 addDependency:result];

    operationQueue = [(CKKSKeychainView *)self operationQueue];
    [operationQueue addOperation:v10];

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
    operationQueue2 = [(CKKSKeychainView *)self operationQueue];
    [operationQueue2 addOperation:v10];

    v12 = v47;
  }

  return v10;
}

- (id)rpcFetchBecause:(id)because
{
  becauseCopy = because;
  v38 = 0;
  v5 = [(CKKSKeychainView *)self waitForPolicy:5000000000 error:&v38];
  v6 = v38;
  v7 = v6;
  if (v5)
  {
    v53 = @"begin_fetch";
    v30 = v6;
    v31 = becauseCopy;
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

    becauseCopy = v31;
    v17 = [OctagonStateTransitionWatcher alloc];
    stateMachine = [(CKKSKeychainView *)self stateMachine];
    v19 = [(OctagonStateTransitionWatcher *)v17 initNamed:@"rpc-fetch" stateMachine:stateMachine path:v16 initialRequest:0];

    stateMachine2 = [(CKKSKeychainView *)self stateMachine];
    [stateMachine2 registerStateTransitionWatcher:v19 startTimeout:300000000000];

    queue = [(CKKSKeychainView *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001BB678;
    block[3] = &unk_100343E38;
    block[4] = self;
    v35 = v31;
    dispatch_sync(queue, block);

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1001BB704;
    v32[3] = &unk_100343BA0;
    v33 = v19;
    v22 = v19;
    v23 = [CKKSResultOperation named:@"check-keys" withBlockTakingSelf:v32];
    result = [v22 result];
    [v23 addDependency:result];

    operationQueue = [(CKKSKeychainView *)self operationQueue];
    [operationQueue addOperation:v23];

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
    operationQueue2 = [(CKKSKeychainView *)self operationQueue];
    [operationQueue2 addOperation:v23];

    v16 = v37;
  }

  return v23;
}

- (id)resultsOfNextProcessIncomingQueueOperation
{
  resultsOfNextIncomingQueueOperationOperation = [(CKKSKeychainView *)self resultsOfNextIncomingQueueOperationOperation];
  if (!resultsOfNextIncomingQueueOperationOperation || (v4 = resultsOfNextIncomingQueueOperationOperation, -[CKKSKeychainView resultsOfNextIncomingQueueOperationOperation](self, "resultsOfNextIncomingQueueOperationOperation"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isPending], v5, v4, (v6 & 1) == 0))
  {
    v7 = [NSString stringWithFormat:@"wait-for-next-incoming-queue-operation"];
    v8 = [CKKSResultOperation named:v7 withBlock:&stru_100343E58];
    [(CKKSKeychainView *)self setResultsOfNextIncomingQueueOperationOperation:v8];
  }

  resultsOfNextIncomingQueueOperationOperation2 = [(CKKSKeychainView *)self resultsOfNextIncomingQueueOperationOperation];

  return resultsOfNextIncomingQueueOperationOperation2;
}

- (void)_onqueueProcessOutgoingQueue:(id)queue priorityRush:(BOOL)rush
{
  rushCopy = rush;
  queueCopy = queue;
  queue = [(CKKSKeychainView *)self queue];
  dispatch_assert_queue_V2(queue);

  if (queueCopy)
  {
    operationDependencies = [(CKKSKeychainView *)self operationDependencies];
    currentOutgoingQueueOperationGroup = [operationDependencies currentOutgoingQueueOperationGroup];

    if (currentOutgoingQueueOperationGroup)
    {
      zoneName = [(CKKSKeychainView *)self zoneName];
      operationDependencies3 = sub_100019104(@"ckks", zoneName);

      if (os_log_type_enabled(operationDependencies3, OS_LOG_TYPE_ERROR))
      {
        name = [queueCopy name];
        operationDependencies2 = [(CKKSKeychainView *)self operationDependencies];
        ckoperationGroup = [operationDependencies2 ckoperationGroup];
        name2 = [ckoperationGroup name];
        v18 = 138412546;
        v19 = name;
        v20 = 2112;
        v21 = name2;
        _os_log_impl(&_mh_execute_header, operationDependencies3, OS_LOG_TYPE_ERROR, "Throwing away CKOperationGroup(%@) in favor of (%@)", &v18, 0x16u);
      }
    }

    else
    {
      operationDependencies3 = [(CKKSKeychainView *)self operationDependencies];
      [operationDependencies3 setCurrentOutgoingQueueOperationGroup:queueCopy];
    }
  }

  stateMachine = [(CKKSKeychainView *)self stateMachine];
  [stateMachine _onqueueHandleFlag:@"process_outgoing_queue"];

  if (rushCopy)
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

- (id)rpcProcessOutgoingQueue:(id)queue operationGroup:(id)group
{
  queueCopy = queue;
  groupCopy = group;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1001B1C08;
  v34 = sub_1001B1C18;
  v35 = 0;
  queue = [(CKKSKeychainView *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BBE38;
  block[3] = &unk_100344920;
  block[4] = self;
  v29 = &v30;
  v9 = queueCopy;
  v28 = v9;
  dispatch_sync(queue, block);

  if (v31[5])
  {
    [(CKKSKeychainView *)self scheduleOperation:?];
    result = v31[5];
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
    stateMachine = [(CKKSKeychainView *)self stateMachine];
    v17 = [(OctagonStateTransitionWatcher *)v15 initNamed:@"push" stateMachine:stateMachine path:v14 initialRequest:0];

    stateMachine2 = [(CKKSKeychainView *)self stateMachine];
    [stateMachine2 registerStateTransitionWatcher:v17 startTimeout:300000000000];

    queue2 = [(CKKSKeychainView *)self queue];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1001BC114;
    v24 = &unk_100343E38;
    selfCopy = self;
    v26 = groupCopy;
    dispatch_sync(queue2, &v21);

    result = [v17 result];
  }

  _Block_object_dispose(&v30, 8);

  return result;
}

- (id)findFirstPendingOperation:(id)operation ofClass:(Class)class
{
  operationCopy = operation;
  objc_sync_enter(operationCopy);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = operationCopy;
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
        if (v10 && [*(*(&v13 + 1) + 8 * i) isPending] && (!class || (objc_opt_isKindOfClass() & 1) != 0))
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
  queue = [(CKKSKeychainView *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001BC5F4;
  v6[3] = &unk_100344E90;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)receiveTLKUploadRecords:(id)records
{
  recordsCopy = records;
  zoneName = [(CKKSKeychainView *)self zoneName];
  v6 = sub_100019104(@"ckkskey", zoneName);

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = [recordsCopy count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received a set of %lu TLK upload records", buf, 0xCu);
  }

  if (recordsCopy && [recordsCopy count])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001BC7B8;
    v7[3] = &unk_100343B50;
    v8 = recordsCopy;
    selfCopy = self;
    [(CKKSKeychainView *)self dispatchSyncWithSQLTransaction:v7];
  }
}

- (id)findKeySets:(BOOL)sets
{
  if (sets)
  {
    queue = [(CKKSKeychainView *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001BCA64;
    block[3] = &unk_100346018;
    block[4] = self;
    dispatch_sync(queue, block);
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
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  sendMetric = [operationDependencies sendMetric];

  if (sendMetric)
  {
    v5 = [AAFAnalyticsEventSecurity alloc];
    operationDependencies2 = [(CKKSKeychainView *)self operationDependencies];
    activeAccount = [operationDependencies2 activeAccount];
    altDSID = [activeAccount altDSID];
    v9 = kSecurityRTCEventNameFirstManateeKeyFetch;
    v10 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    operationDependencies3 = [(CKKSKeychainView *)self operationDependencies];
    v12 = [v5 initWithCKKSMetrics:&__NSDictionary0__struct altDSID:altDSID eventName:v9 testsAreEnabled:0 category:v10 sendMetric:{objc_msgSend(operationDependencies3, "sendMetric")}];

    [v12 sendMetricWithResult:1 error:0];
  }
}

- (void)decryptCurrentItems:(id)items cache:(id)cache complete:(id)complete
{
  itemsCopy = items;
  cacheCopy = cache;
  completeCopy = complete;
  v9 = objc_alloc_init(NSMutableArray);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = itemsCopy;
  v53 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
  v10 = 0;
  if (v53)
  {
    v52 = *v59;
    v46 = kSecAttrViewHintManatee;
    v47 = cacheCopy;
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
      item = [v12 item];
      operationDependencies = [(CKKSKeychainView *)self operationDependencies];
      contextID = [operationDependencies contextID];
      v17 = [(CKKSItem *)v13 initWithCKRecord:item contextID:contextID];

      operationDependencies2 = [(CKKSKeychainView *)self operationDependencies];
      v57 = 0;
      v19 = v17;
      v20 = [CKKSIncomingQueueOperation decryptCKKSItemToAttributes:v17 keyCache:cacheCopy ckksOperationalDependencies:operationDependencies2 error:&v57];
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
        itemPtr = [v12 itemPtr];
        itemPtrName = [itemPtr itemPtrName];
        v24 = [itemPtrName componentsSeparatedByString:@"-"];

        v27 = [v24 count];
        v23 = v27 == 2;
        if (v27 == 2)
        {
          v28 = [v24 objectAtIndexedSubscript:0];
          itemPtrName3 = [v24 objectAtIndexedSubscript:1];
          v30 = [CKKSCurrentItemQueryResult alloc];
          itemPtr2 = [v12 itemPtr];
          zoneID = [itemPtr2 zoneID];
          v48 = v28;
          v33 = [v30 initWithIdentifier:itemPtrName3 accessGroup:v28 zoneID:zoneID decryptedRecord:v51];
          [(CKKSItem *)v9 addObject:v33];

          if (![(CKKSKeychainView *)self firstManateeKeyFetched])
          {
            itemPtr3 = [v12 itemPtr];
            zoneID2 = [itemPtr3 zoneID];
            v36 = [zoneID2 isEqualToString:v46];

            if (v36)
            {
              [(CKKSKeychainView *)self setFirstManateeKeyFetched:1];
              [(CKKSKeychainView *)self sendMetricForFirstManateeAccess];
            }
          }

          cacheCopy = v47;
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
            itemPtr4 = [v12 itemPtr];
            itemPtrName2 = [itemPtr4 itemPtrName];
            *buf = 138412290;
            v63 = itemPtrName2;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "unexpected item pointer name format: %@", buf, 0xCu);

            cacheCopy = v47;
          }

          itemPtr5 = [v12 itemPtr];
          itemPtrName3 = [itemPtr5 itemPtrName];
          v43 = [NSString stringWithFormat:@"Item pointer name %@ does not match expected format", itemPtrName3];
          v10 = [NSError errorWithDomain:@"CKKSErrorDomain" code:20 description:v43];

          v37 = itemPtr5;
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

  completeCopy[2](completeCopy, v9, v10);
}

- (void)decryptPCSIdentities:(id)identities cache:(id)cache complete:(id)complete
{
  identitiesCopy = identities;
  cacheCopy = cache;
  completeCopy = complete;
  v10 = objc_alloc_init(NSMutableArray);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = identitiesCopy;
  v49 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
  v11 = 0;
  if (v49)
  {
    v48 = *v53;
    v38 = kSecAttrViewHintManatee;
    selfCopy = self;
    v40 = cacheCopy;
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
        item = [v13 item];
        operationDependencies = [(CKKSKeychainView *)self operationDependencies];
        contextID = [operationDependencies contextID];
        v18 = [(CKKSItem *)v14 initWithCKRecord:item contextID:contextID];

        v19 = v18;
        operationDependencies2 = [(CKKSKeychainView *)self operationDependencies];
        v51 = 0;
        [CKKSIncomingQueueOperation decryptCKKSItemToAttributes:v18 keyCache:cacheCopy ckksOperationalDependencies:operationDependencies2 error:&v51];
        v22 = v21 = cacheCopy;
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
          service = [v13 service];
          pCSServiceID = [service PCSServiceID];
          service2 = [v13 service];
          pCSPublicKey = [service2 PCSPublicKey];
          v29 = [pCSPublicKey base64EncodedStringWithOptions:0];
          service3 = [v13 service];
          zoneID = [service3 zoneID];
          v44 = v22;
          v32 = [v47 initWithServiceNumber:pCSServiceID publicKey:v29 zoneID:zoneID decryptedRecord:v22];
          [(CKKSItem *)v10 addObject:v32];

          self = selfCopy;
          if ([(CKKSKeychainView *)selfCopy firstManateeKeyFetched])
          {
            v24 = v40;
            v11 = v46;
          }

          else
          {
            service4 = [v13 service];
            zoneID2 = [service4 zoneID];
            v35 = [zoneID2 isEqualToString:v38];

            v11 = v46;
            if (v35)
            {
              [(CKKSKeychainView *)selfCopy setFirstManateeKeyFetched:1];
              [(CKKSKeychainView *)selfCopy sendMetricForFirstManateeAccess];
            }

            v24 = v40;
          }

          v22 = v44;
          v19 = v45;
        }

        objc_autoreleasePoolPop(context);
        if (v23)
        {
          cacheCopy = v24;
          goto LABEL_21;
        }

        cacheCopy = v24;
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

  completeCopy[2](completeCopy, v10, v11);
}

- (BOOL)unwrapKeysAndSaveToCache:(id)cache syncKeys:(id)keys error:(id *)error
{
  cacheCopy = cache;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  keysCopy = keys;
  v9 = [keysCopy countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    errorCopy = error;
    v11 = *v28;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(keysCopy);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v26 = 0;
        v14 = [v13 unwrapViaKeyHierarchy:cacheCopy error:&v26];
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

          if (errorCopy)
          {
            v22 = v20;
            *errorCopy = v20;
          }

          v19 = 0;
          goto LABEL_19;
        }

        uuid = [v13 uuid];
        [cacheCopy addKeyToCache:uuid key:v13];

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

      v10 = [keysCopy countByEnumeratingWithState:&v27 objects:v35 count:16];
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

- (BOOL)unwrapTLKAndSaveToCache:(id)cache tlks:(id)tlks tlkShares:(id)shares error:(id *)error
{
  cacheCopy = cache;
  tlksCopy = tlks;
  sharesCopy = shares;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = tlksCopy;
  v33 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v33)
  {
    errorCopy = error;
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
      operationDependencies = [(CKKSKeychainView *)self operationDependencies];
      peerProviders = [operationDependencies peerProviders];

      v15 = [peerProviders countByEnumeratingWithState:&v39 objects:v51 count:16];
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
            objc_enumerationMutation(peerProviders);
          }

          currentState = [*(*(&v39 + 1) + 8 * v19) currentState];
          v38 = v20;
          v22 = [currentState unwrapKey:v12 fromShares:sharesCopy error:&v38];
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
            v16 = [peerProviders countByEnumeratingWithState:&v39 objects:v51 count:16];
            if (v16)
            {
              goto LABEL_8;
            }

            goto LABEL_28;
          }
        }

        uuid = [v12 uuid];
        [cacheCopy addKeyToCache:uuid key:v12];

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

        if (errorCopy)
        {
          v28 = [NSString stringWithFormat:@"No trusted TLKShares for %@", v12];
          *errorCopy = [NSError errorWithDomain:@"CKKSErrorDomain" code:35 description:v28 underlying:v17];
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

- (void)fetchPCSIdentityOutOfBand:(id)band forceFetch:(BOOL)fetch complete:(id)complete
{
  fetchCopy = fetch;
  bandCopy = band;
  completeCopy = complete;
  accountStateKnown = [(CKKSKeychainView *)self accountStateKnown];
  [accountStateKnown wait:1000000000];

  accountStatus = [(CKKSKeychainView *)self accountStatus];
  if (!accountStatus)
  {
    v50 = [NSError errorWithDomain:@"CKKSErrorDomain" code:64 description:@"iCloud account status unknown."];
    goto LABEL_25;
  }

  if (accountStatus != 1 || ([(CKKSKeychainView *)self cuttlefishAdapter], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v50 = [NSError errorWithDomain:@"CKKSErrorDomain" code:10 description:@"User is not signed into iCloud."];
LABEL_25:
    zoneName = [(CKKSKeychainView *)self zoneName];
    v36 = sub_100019104(@"ckks-oob", zoneName);

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v60 = v50;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Rejecting PCS Identity requests since we don't have an iCloud account: %@", buf, 0xCu);
    }

    completeCopy[2](completeCopy, 0, v50);
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
      if (fetchCopy)
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

  if ((v12 | fetchCopy))
  {
    v47 = objc_alloc_init(NSMutableArray);
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = bandCopy;
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
          accessGroup = [(__CFString *)v18 accessGroup];
          if (!accessGroup || ([(__CFString *)v18 zoneID], v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, accessGroup, v21))
          {
            zoneName2 = [(CKKSKeychainView *)self zoneName];
            v39 = sub_100019104(@"ckks-oob", zoneName2);

            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              accessGroup2 = [(__CFString *)v18 accessGroup];
              zoneID = [(__CFString *)v18 zoneID];
              *buf = 138412802;
              v60 = v18;
              v61 = 2112;
              v62 = accessGroup2;
              v63 = 2112;
              v64 = zoneID;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Rejecting pcs service (%@) get since no access group(%@) or zoneID(%@) given", buf, 0x20u);
            }

            v42 = [NSString stringWithFormat:@"No access group or view given for PCS Service(%@)", v18];
            v43 = [NSError errorWithDomain:@"CKKSErrorDomain" code:-50 description:v42];
            completeCopy[2](completeCopy, 0, v43);

            goto LABEL_37;
          }

          v22 = [CuttlefishPCSServiceIdentifier alloc];
          serviceNumber = [(__CFString *)v18 serviceNumber];
          v24 = [NSData alloc];
          publicKey = [(__CFString *)v18 publicKey];
          v26 = [v24 initWithBase64EncodedString:publicKey options:0];
          zoneID2 = [(__CFString *)v18 zoneID];
          v28 = [(CuttlefishPCSServiceIdentifier *)v22 init:serviceNumber PCSPublicKey:v26 zoneID:zoneID2];
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

    accountsAdapter = [(CKKSKeychainView *)self accountsAdapter];
    personaAdapter = [(CKKSKeychainView *)self personaAdapter];
    operationDependencies = [(CKKSKeychainView *)self operationDependencies];
    contextID = [operationDependencies contextID];
    v53 = 0;
    obj = [accountsAdapter findAccountForCurrentThread:personaAdapter optionalAltDSID:0 cloudkitContainerName:@"com.apple.security.keychain" octagonContextID:contextID error:&v53];
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

      completeCopy[2](completeCopy, 0, v33);
LABEL_37:
    }

    else
    {
      objc_initWeak(buf, self);
      cuttlefishAdapter = [(CKKSKeychainView *)self cuttlefishAdapter];
      objc_copyWeak(&v52, buf);
      v51 = completeCopy;
      obja = obj;
      [cuttlefishAdapter fetchPCSIdentityByKey:? pcsservices:? reply:?];

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
    completeCopy[2](completeCopy, 0, v48);
  }

LABEL_39:
}

- (void)getCurrentItemOutOfBand:(id)band forceFetch:(BOOL)fetch complete:(id)complete
{
  fetchCopy = fetch;
  bandCopy = band;
  completeCopy = complete;
  accountStateKnown = [(CKKSKeychainView *)self accountStateKnown];
  [accountStateKnown wait:1000000000];

  accountStatus = [(CKKSKeychainView *)self accountStatus];
  if (!accountStatus)
  {
    v51 = [NSError errorWithDomain:@"CKKSErrorDomain" code:64 description:@"iCloud account status unknown."];
    goto LABEL_25;
  }

  if (accountStatus != 1 || ([(CKKSKeychainView *)self cuttlefishAdapter], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v51 = [NSError errorWithDomain:@"CKKSErrorDomain" code:10 description:@"User is not signed into iCloud."];
LABEL_25:
    zoneName = [(CKKSKeychainView *)self zoneName];
    v35 = sub_100019104(@"ckks-oob", zoneName);

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v61 = v51;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Rejecting current item requests since we don't have an iCloud account: %@", buf, 0xCu);
    }

    completeCopy[2](completeCopy, 0, v51);
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
      if (fetchCopy)
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

  if ((v12 | fetchCopy))
  {
    v48 = objc_alloc_init(NSMutableArray);
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = bandCopy;
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
          zoneID = [v18 zoneID];
          if (!zoneID || ([v18 accessGroup], v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, zoneID, v21))
          {
            zoneName2 = [(CKKSKeychainView *)self zoneName];
            v38 = sub_100019104(@"ckks-oob", zoneName2);

            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              identifier = [v18 identifier];
              accessGroup = [v18 accessGroup];
              zoneID2 = [v18 zoneID];
              *buf = 138412802;
              v61 = identifier;
              v62 = 2112;
              v63 = accessGroup;
              v64 = 2112;
              v65 = zoneID2;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Rejecting current item pointer for identifier(%@) get since no access group(%@) or zoneID(%@) given", buf, 0x20u);
            }

            identifier2 = [v18 identifier];
            v43 = [NSString stringWithFormat:@"No access group or view given for identifier(%@)", identifier2];
            v44 = [NSError errorWithDomain:@"CKKSErrorDomain" code:-50 description:v43];
            completeCopy[2](completeCopy, 0, v44);

            goto LABEL_37;
          }

          v22 = [CuttlefishCurrentItemSpecifier alloc];
          accessGroup2 = [v18 accessGroup];
          identifier3 = [v18 identifier];
          v25 = [NSString stringWithFormat:@"%@-%@", accessGroup2, identifier3];
          zoneID3 = [v18 zoneID];
          v27 = [(CuttlefishCurrentItemSpecifier *)v22 init:v25 zoneID:zoneID3];
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

    accountsAdapter = [(CKKSKeychainView *)self accountsAdapter];
    personaAdapter = [(CKKSKeychainView *)self personaAdapter];
    operationDependencies = [(CKKSKeychainView *)self operationDependencies];
    contextID = [operationDependencies contextID];
    v54 = 0;
    obj = [accountsAdapter findAccountForCurrentThread:personaAdapter optionalAltDSID:0 cloudkitContainerName:@"com.apple.security.keychain" octagonContextID:contextID error:&v54];
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

      completeCopy[2](completeCopy, 0, v32);
LABEL_37:
    }

    else
    {
      objc_initWeak(buf, self);
      cuttlefishAdapter = [(CKKSKeychainView *)self cuttlefishAdapter];
      objc_copyWeak(&v53, buf);
      v52 = completeCopy;
      obja = obj;
      [cuttlefishAdapter fetchCurrentItem:? items:? reply:?];

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
    completeCopy[2](completeCopy, 0, v49);
  }

LABEL_39:
}

- (void)getCurrentItemForAccessGroup:(id)group identifier:(id)identifier viewHint:(id)hint fetchCloudValue:(BOOL)value complete:(id)complete
{
  valueCopy = value;
  groupCopy = group;
  identifierCopy = identifier;
  hintCopy = hint;
  completeCopy = complete;
  if (valueCopy)
  {
    v16 = 0;
  }

  else
  {
    v16 = [hintCopy isEqualToString:@"ProtectedCloudStorage"];
  }

  v40 = 0;
  v17 = [(CKKSKeychainView *)self zoneIDForViewHint:hintCopy pcsShortcut:v16 error:&v40];
  v18 = v40;
  if (v17)
  {
    if (groupCopy && identifierCopy)
    {
      if ((v16 & 1) != 0 || (-[CKKSKeychainView accountStateKnown](self, "accountStateKnown"), v19 = objc_claimAutoreleasedReturnValue(), [v19 wait:30000000000], v19, v20 = -[CKKSKeychainView accountStatus](self, "accountStatus"), v20 == 1))
      {
        if (valueCopy)
        {
          v24 = [NSSet setWithObject:hintCopy];
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
        selfCopy = self;
        v38 = completeCopy;
        objc_copyWeak(&v39, buf);
        v34 = groupCopy;
        v35 = identifierCopy;
        v36 = hintCopy;
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
        zoneName = [(CKKSKeychainView *)self zoneName];
        v30 = sub_100019104(@"ckkscurrent", zoneName);

        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v42 = v28;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Rejecting current item pointer get since we don't have an iCloud account: %@", buf, 0xCu);
        }

        (*(completeCopy + 2))(completeCopy, 0, v28);
      }
    }

    else
    {
      zoneName2 = [(CKKSKeychainView *)self zoneName];
      v22 = sub_100019104(@"ckkscurrent", zoneName2);

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v42 = groupCopy;
        v43 = 2112;
        v44 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Rejecting current item pointer get since no access group(%@) or identifier(%@) given", buf, 0x16u);
      }

      v23 = [NSError errorWithDomain:@"CKKSErrorDomain" code:-50 description:@"No access group or identifier given"];
      (*(completeCopy + 2))(completeCopy, 0, v23);
    }
  }

  else
  {
    (*(completeCopy + 2))(completeCopy, 0, v18);
  }
}

- (id)zoneIDForViewHint:(id)hint pcsShortcut:(BOOL)shortcut error:(id *)error
{
  shortcutCopy = shortcut;
  hintCopy = hint;
  if (shortcutCopy)
  {
    v9 = 0;
  }

  else
  {
    v9 = 5000000000;
  }

  v18 = 0;
  v10 = [(CKKSKeychainView *)self policyDependentViewStateForName:hintCopy timeout:v9 error:&v18];
  v11 = v18;
  if (v10)
  {
    zoneID = [v10 zoneID];
LABEL_6:
    v13 = zoneID;
    goto LABEL_7;
  }

  if (shortcutCopy && [hintCopy isEqualToString:@"ProtectedCloudStorage"])
  {
    zoneName = [(CKKSKeychainView *)self zoneName];
    v16 = sub_100019104(@"ckkscurrent", zoneName);

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Unable to retrieve view state, using ProtectedCloudStorage: %@", buf, 0xCu);
    }

    zoneID = [[CKRecordZoneID alloc] initWithZoneName:@"ProtectedCloudStorage" ownerName:CKCurrentUserDefaultName];
    goto LABEL_6;
  }

  if (error)
  {
    v17 = v11;
    v13 = 0;
    *error = v11;
  }

  else
  {
    v13 = 0;
  }

LABEL_7:

  return v13;
}

- (void)unsetCurrentItemsForAccessGroup:(id)group identifiers:(id)identifiers viewHint:(id)hint complete:(id)complete
{
  groupCopy = group;
  identifiersCopy = identifiers;
  completeCopy = complete;
  v42 = 0;
  v13 = [(CKKSKeychainView *)self policyDependentViewStateForName:hint error:&v42];
  v14 = v42;
  if (v13)
  {
    if (groupCopy && identifiersCopy && [identifiersCopy count])
    {
      accountStateKnown = [(CKKSKeychainView *)self accountStateKnown];
      [accountStateKnown wait:30000000000];

      accountStatus = [(CKKSKeychainView *)self accountStatus];
      if (accountStatus == 1)
      {
        zoneName = [(CKKSKeychainView *)self zoneName];
        v23 = sub_100019104(@"ckkscurrent", zoneName);

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [identifiersCopy count];
          *buf = 138412546;
          v44 = groupCopy;
          v45 = 2048;
          v46 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Starting delete current item pointer(s) operation for %@ (%lu)", buf, 0x16u);
        }

        v25 = [CKKSDeleteCurrentItemPointersOperation alloc];
        operationDependencies = [(CKKSKeychainView *)self operationDependencies];
        v27 = [CKOperationGroup CKKSGroupWithName:@"currentitem-api"];
        v28 = [(CKKSDeleteCurrentItemPointersOperation *)v25 initWithCKKSOperationDependencies:operationDependencies viewState:v13 accessGroup:groupCopy identifiers:identifiersCopy ckoperationGroup:v27];

        v35 = _NSConcreteStackBlock;
        v36 = 3221225472;
        v37 = sub_1001C14D4;
        v38 = &unk_100343D18;
        v39 = v28;
        v40 = v13;
        v41 = completeCopy;
        v29 = v28;
        v30 = [CKKSResultOperation operationWithBlock:&v35];
        [v30 setName:{@"unsetCurrentItems-return-callback", v35, v36, v37, v38}];
        [v30 addDependency:v29];
        [(CKKSKeychainView *)self scheduleOperation:v30];
        outgoingQueueOperations = [(CKKSKeychainView *)self outgoingQueueOperations];
        [(CKKSDeleteCurrentItemPointersOperation *)v29 linearDependencies:outgoingQueueOperations];

        v32 = [(CKKSResultOperation *)v29 timeout:60000000000];
        [(CKKSKeychainView *)self scheduleOperation:v29];
      }

      else
      {
        if (accountStatus)
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
        zoneName2 = [(CKKSKeychainView *)self zoneName];
        v34 = sub_100019104(@"ckkscurrent", zoneName2);

        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = v29;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Rejecting current item pointer delete since we don't have an iCloud account: %@", buf, 0xCu);
        }

        (*(completeCopy + 2))(completeCopy, v29);
      }
    }

    else
    {
      zoneName3 = [(CKKSKeychainView *)self zoneName];
      v20 = sub_100019104(@"ckkscurrent", zoneName3);

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v44 = groupCopy;
        v45 = 2112;
        v46 = identifiersCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Rejecting current item pointer delete since no access group(%@) or identifiers(%@) given", buf, 0x16u);
      }

      v21 = [NSError errorWithDomain:@"CKKSErrorDomain" code:-50 description:@"No access group or identifier given"];
      (*(completeCopy + 2))(completeCopy, v21);
    }
  }

  else
  {
    (*(completeCopy + 2))(completeCopy, v14);
  }
}

- (void)setCurrentItemForAccessGroup:(id)group hash:(id)hash accessGroup:(id)accessGroup identifier:(id)identifier viewHint:(id)hint replacing:(id)replacing hash:(id)a9 complete:(id)self0
{
  groupCopy = group;
  hashCopy = hash;
  accessGroupCopy = accessGroup;
  identifierCopy = identifier;
  replacingCopy = replacing;
  v20 = a9;
  completeCopy = complete;
  v59 = 0;
  v22 = [(CKKSKeychainView *)self policyDependentViewStateForName:hint error:&v59];
  v23 = v59;
  v24 = v23;
  if (v22)
  {
    if (accessGroupCopy && identifierCopy)
    {
      accountStateKnown = [(CKKSKeychainView *)self accountStateKnown];
      [accountStateKnown wait:30000000000];

      accountStatus = [(CKKSKeychainView *)self accountStatus];
      v53 = replacingCopy;
      if (accountStatus == 1)
      {
        v52 = hashCopy;
        zoneName = [(CKKSKeychainView *)self zoneName];
        v39 = sub_100019104(@"ckkscurrent", zoneName);

        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v61 = accessGroupCopy;
          v62 = 2112;
          v63 = identifierCopy;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Starting change current pointer operation for %@-%@", buf, 0x16u);
        }

        v40 = [CKKSUpdateCurrentItemPointerOperation alloc];
        operationDependencies = [(CKKSKeychainView *)self operationDependencies];
        v42 = [CKOperationGroup CKKSGroupWithName:@"currentitem-api"];
        v43 = [(CKKSUpdateCurrentItemPointerOperation *)v40 initWithCKKSOperationDependencies:operationDependencies viewState:v22 newItem:groupCopy hash:v52 accessGroup:accessGroupCopy identifier:identifierCopy replacing:v53 hash:v20 ckoperationGroup:v42];

        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_1001C1B8C;
        v55[3] = &unk_100343D18;
        v56 = v43;
        v57 = v22;
        v58 = completeCopy;
        v44 = v43;
        v45 = [CKKSResultOperation operationWithBlock:v55];
        [v45 setName:@"setCurrentItem-return-callback"];
        [v45 addDependency:v44];
        [(CKKSKeychainView *)self scheduleOperation:v45];
        outgoingQueueOperations = [(CKKSKeychainView *)self outgoingQueueOperations];
        [(CKKSUpdateCurrentItemPointerOperation *)v44 linearDependencies:outgoingQueueOperations];

        replacingCopy = v53;
        v47 = [(CKKSResultOperation *)v44 timeout:60000000000];
        [(CKKSKeychainView *)self scheduleOperation:v44];

        hashCopy = v52;
      }

      else
      {
        v27 = hashCopy;
        if (accountStatus)
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
        zoneName2 = [(CKKSKeychainView *)self zoneName];
        v50 = sub_100019104(@"ckkscurrent", zoneName2);

        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v61 = v48;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Rejecting current item pointer set since we don't have an iCloud account: %@", buf, 0xCu);
        }

        (*(completeCopy + 2))(completeCopy, v48);
        hashCopy = v27;
        replacingCopy = v53;
      }
    }

    else
    {
      v51 = accessGroupCopy;
      v30 = v23;
      v31 = identifierCopy;
      v32 = v20;
      v33 = replacingCopy;
      v34 = hashCopy;
      v35 = [NSError errorWithDomain:@"CKKSErrorDomain" code:-50 description:@"No access group or identifier given"];
      zoneName3 = [(CKKSKeychainView *)self zoneName];
      v37 = sub_100019104(@"ckkscurrent", zoneName3);

      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v61 = v35;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Cancelling request: %@", buf, 0xCu);
      }

      (*(completeCopy + 2))(completeCopy, v35);
      hashCopy = v34;
      replacingCopy = v33;
      v20 = v32;
      identifierCopy = v31;
      v24 = v30;
      accessGroupCopy = v51;
    }
  }

  else
  {
    (*(completeCopy + 2))(completeCopy, v23);
  }
}

- (void)handleKeychainEventDbConnection:(__OpaqueSecDbConnection *)connection source:(unint64_t)source added:(SecDbItem *)added deleted:(SecDbItem *)deleted rateLimiter:(id)limiter
{
  limiterCopy = limiter;
  if ((sub_100019064() & 1) == 0)
  {
    zoneName = [(CKKSKeychainView *)self zoneName];
    v13 = sub_100019104(@"ckks", zoneName);

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skipping handleKeychainEventDbConnection due to disabled CKKS", buf, 2u);
    }

    goto LABEL_107;
  }

  connectionCopy = connection;
  sourceCopy = source;
  deletedCopy = deleted;
  if (added)
  {
    deletedCopy2 = added;
  }

  else
  {
    deletedCopy2 = deleted;
  }

  v13 = [CKKSKey isItemKeyForKeychainView:deletedCopy2];
  if (v13)
  {
    zoneName2 = [(CKKSKeychainView *)self zoneName];
    v15 = sub_100019104(@"ckks", zoneName2);

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = sourceCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Potential new key material from %@ (source %lu)", buf, 0x16u);
    }

    stateMachine = [(CKKSKeychainView *)self stateMachine];
    [stateMachine handleFlag:@"key_process_requested"];

    goto LABEL_107;
  }

  if (added)
  {
    v18 = sub_100015D00(added);
  }

  else
  {
    v18 = 0;
  }

  v19 = deletedCopy;
  if (deletedCopy)
  {
    v19 = sub_100015D00(deletedCopy);
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
  if (!sub_1001636C4(deletedCopy2))
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
  queue = [(CKKSKeychainView *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C29FC;
  block[3] = &unk_1003472B0;
  block[5] = &v102;
  block[6] = deletedCopy2;
  block[4] = self;
  dispatch_sync(queue, block);

  if ((v103[3] & 1) == 0)
  {
    [(CKKSKeychainView *)self notifyPasswordsOrPCSChangedForAddedItem:added modified:deletedCopy2 deleted:deletedCopy];
    goto LABEL_105;
  }

  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  v80 = [operationDependencies viewNameForItem:deletedCopy2];

  if (!v80)
  {
    v48 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      *&buf[4] = deletedCopy2;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "No intended CKKS view for item; skipping: %{private}@", buf, 0xCu);
    }

    [(CKKSKeychainView *)self notifyPasswordsOrPCSChangedForAddedItem:added modified:deletedCopy2 deleted:deletedCopy];
    goto LABEL_104;
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  operationDependencies2 = [(CKKSKeychainView *)self operationDependencies];
  obj = [operationDependencies2 allCKKSManagedViews];

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
      zoneID = [v26 zoneID];
      zoneName3 = [zoneID zoneName];
      v29 = [zoneName3 isEqualToString:v80];

      if (v29)
      {
        v31 = v26;

        if (!v31)
        {
          goto LABEL_42;
        }

        zoneID2 = [v31 zoneID];
        zoneName4 = [zoneID2 zoneName];
        v34 = sub_100019104(@"ckks", zoneName4);

        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412547;
          *&buf[4] = v80;
          *&buf[12] = 2113;
          *&buf[14] = deletedCopy2;
          _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "Routing item to zone %@: %{private}@", buf, 0x16u);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v110 = sub_1001B1C08;
        v111 = sub_1001B1C18;
        v112 = 0;
        if (added)
        {
          v35 = sub_10001A700(added);
          v36 = deletedCopy;
          if (!deletedCopy)
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
          if (!deletedCopy)
          {
            v50 = 1;
            v36 = 0;
            v38 = 0;
            v49 = 0;
LABEL_52:
            if (added)
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

            if (!deletedCopy)
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
              addedCopy2 = deletedCopy;
              v55 = v35 ^ 1;
              if (deletedCopy)
              {
                v55 = 1;
              }

              if (!v55)
              {
                addedCopy2 = added;
              }

              deletedCopy = addedCopy2;
              if (!v36)
              {
                v53 = 0;
                v39 &= v55;
                v52 |= v55 ^ 1;
                goto LABEL_81;
              }

LABEL_77:
              zoneID3 = [v31 zoneID];
              zoneName5 = [zoneID3 zoneName];
              v58 = sub_100019104(@"ckks", zoneName5);

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
                v64 = deletedCopy;
                if (added)
                {
                  addedCopy3 = added;
                }

                else
                {
                  addedCopy3 = deletedCopy;
                }

                v58 = sub_100015B5C(addedCopy3, kSecAttrAccessible);
                v67 = connectionCopy;
                v66 = sourceCopy;
                if (([v58 isEqualToString:kSecAttrAccessibleWhenUnlocked]& 1) != 0 || ([v58 isEqualToString:kSecAttrAccessibleAfterFirstUnlock]& 1) != 0 || ([v58 isEqualToString:kSecAttrAccessibleAlwaysPrivate]& 1) != 0)
                {
                  if (!sourceCopy)
                  {
                    v68 = sub_100015BFC(added, &off_100343C98, 0);
                    zoneID4 = [v31 zoneID];
                    zoneName6 = [zoneID4 zoneName];
                    v71 = sub_100019104(@"ckks", zoneName6);

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

                    v66 = sourceCopy;
                    v64 = deletedCopy;
                    v67 = connectionCopy;
                  }

                  databaseProvider = [(CKKSKeychainView *)self databaseProvider];
                  v85[0] = _NSConcreteStackBlock;
                  v85[1] = 3221225472;
                  v85[2] = sub_1001C2B00;
                  v85[3] = &unk_100343CF0;
                  v86 = v31;
                  selfCopy = self;
                  v94 = v39;
                  v89 = buf;
                  addedCopy4 = added;
                  v95 = v52 & 1;
                  v96 = obja & 1;
                  v91 = v64;
                  v92 = v66;
                  v88 = limiterCopy;
                  v93 = v67;
                  [databaseProvider dispatchSyncWithConnection:v67 readWriteTxion:1 block:v85];

                  v74 = v86;
                }

                else
                {
                  zoneName7 = [(CKKSKeychainView *)self zoneName];
                  v74 = sub_100019104(@"ckks", zoneName7);

                  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                  {
                    *v106 = 138412290;
                    *v107 = v58;
                    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "skipping sync of device-bound(%@) item", v106, 0xCu);
                  }
                }

                goto LABEL_102;
              }

              zoneID5 = [v31 zoneID];
              zoneName8 = [zoneID5 zoneName];
              v58 = sub_100019104(@"ckks", zoneName8);

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

        v49 = deletedCopy;
        v38 = sub_10001A700(deletedCopy);
        v36 = v35 & v38;
        v50 = added == 0;
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
    *&buf[14] = deletedCopy2;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "No CKKS view for %@, skipping: %{private}@", buf, 0x16u);
  }

  v31 = sub_100015BFC(deletedCopy2, &off_100343C98, 0);
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

- (void)notifyPasswordsOrPCSChangedForAddedItem:(SecDbItem *)item modified:(SecDbItem *)modified deleted:(SecDbItem *)deleted
{
  if (item)
  {
    [(CKKSKeychainView *)self notifyForItem:?];
  }

  if (modified)
  {
    [(CKKSKeychainView *)self notifyForItem:modified];
  }

  if (deleted)
  {

    [(CKKSKeychainView *)self notifyForItem:deleted];
  }
}

- (void)notifyForItem:(SecDbItem *)item
{
  v5 = sub_100015BFC(item, &off_100343C48, 0);
  if (v5)
  {
    v6 = v5;
    if (!CFEqual(v5, kCFNull))
    {
      CFRetain(v6);
      if ([v6 isEqualToString:@"com.apple.cfnetwork"])
      {
        cloudKitClassDependencies = [(CKKSKeychainView *)self cloudKitClassDependencies];
        notifierClass = [cloudKitClassDependencies notifierClass];
        v9 = [NSString stringWithFormat:@"com.apple.security.view-change.Passwords"];
        [notifierClass post:v9];
      }
    }
  }

  v10 = sub_100015BFC(item, &off_100343C70, 0);
  if (v10)
  {
    cf = v10;
    if (!CFEqual(v10, kCFNull))
    {
      CFRetain(cf);
      if ([cf isEqualToString:kSOSViewHintPCSMasterKey])
      {
        cloudKitClassDependencies2 = [(CKKSKeychainView *)self cloudKitClassDependencies];
        notifierClass2 = [cloudKitClassDependencies2 notifierClass];
        v13 = [NSString stringWithFormat:@"com.apple.security.view-change.PCS"];
        [notifierClass2 post:v13];
      }
    }
  }
}

- (BOOL)_onqueueOtherDevicesReportHavingTLKs:(id)ks trustStates:(id)states
{
  ksCopy = ks;
  statesCopy = states;
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
  v12 = statesCopy;
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
        currentTrustedPeers = [v17 currentTrustedPeers];
        v19 = [currentTrustedPeers countByEnumeratingWithState:&v124 objects:v139 count:16];
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
                objc_enumerationMutation(currentTrustedPeers);
              }

              peerID = [*(*(&v124 + 1) + 8 * j) peerID];
              [v11 addObject:peerID];
            }

            v20 = [currentTrustedPeers countByEnumeratingWithState:&v124 objects:v139 count:16];
          }

          while (v20);
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v128 objects:v140 count:16];
    }

    while (v14);
  }

  v24 = ksCopy;
  currentTLKPointer = [ksCopy currentTLKPointer];
  zoneID = [currentTLKPointer zoneID];
  v123 = 0;
  v27 = [CKKSDeviceStateEntry allInZone:zoneID error:&v123];
  v28 = v123;

  v104 = v27;
  if (v28)
  {
    zoneName = [(CKKSKeychainView *)self zoneName];
    v30 = sub_100019104(@"ckkskey", zoneName);

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
      circlePeerID = [v38 circlePeerID];
      if (circlePeerID)
      {
        circlePeerID2 = [v38 circlePeerID];
        v30 = [@"spid-" stringByAppendingString:circlePeerID2];
      }

      else
      {
        v30 = 0;
      }

      circlePeerID3 = [v38 circlePeerID];
      if (([v11 containsObject:circlePeerID3] & 1) != 0 || v30 && objc_msgSend(v11, "containsObject:", v30))
      {
      }

      else
      {
        octagonPeerID = [v38 octagonPeerID];
        v43 = [v11 containsObject:octagonPeerID];

        if (!v43)
        {
          storedCKRecord = [v38 storedCKRecord];
          modificationDate = [storedCKRecord modificationDate];
          v54 = [modificationDate compare:v106];

          zoneName2 = [(CKKSKeychainView *)self zoneName];
          v51 = sub_100019104(@"ckkskey", zoneName2);

          v56 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
          if (v54 != -1)
          {
            if (v56)
            {
              circlePeerID4 = [v38 circlePeerID];
              *buf = v98;
              v135 = circlePeerID4;
              v136 = 2112;
              v137 = v38;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Device (%@) is not trusted, but very recent. Including in heuristic: %@", buf, 0x16u);
            }

            goto LABEL_33;
          }

          if (v56)
          {
            circlePeerID5 = [v38 circlePeerID];
            *buf = v98;
            v135 = circlePeerID5;
            v136 = 2112;
            v137 = v38;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Device (%@) is not trusted and from too long ago; ignoring device state (%@)", buf, 0x16u);
          }

LABEL_38:

          goto LABEL_39;
        }
      }

      storedCKRecord2 = [v38 storedCKRecord];
      modificationDate2 = [storedCKRecord2 modificationDate];
      v46 = [modificationDate2 compare:v109];

      if (v46 == -1)
      {
        zoneName3 = [(CKKSKeychainView *)self zoneName];
        v51 = sub_100019104(@"ckkskey", zoneName3);

        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v135 = v38;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Trusted device state (%@) is too old; ignoring", buf, 0xCu);
        }

        goto LABEL_38;
      }

LABEL_33:
      keyState = [v38 keyState];
      if ([keyState isEqualToString:@"ready"])
      {

LABEL_53:
        zoneName4 = [(CKKSKeychainView *)self zoneName];
        v69 = sub_100019104(@"ckkskey", zoneName4);

        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v135 = v38;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Other device (%@) has keys; it should send them to us", buf, 0xCu);
        }

        v31 = 1;
        goto LABEL_56;
      }

      keyState2 = [v38 keyState];
      v49 = [keyState2 isEqualToString:@"readypendingunlock"];

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

  v24 = ksCopy;
  currentTLKPointer2 = [ksCopy currentTLKPointer];
  currentKeyUUID = [currentTLKPointer2 currentKeyUUID];
  currentTLKPointer3 = [ksCopy currentTLKPointer];
  contextID = [currentTLKPointer3 contextID];
  currentTLKPointer4 = [ksCopy currentTLKPointer];
  zoneID2 = [currentTLKPointer4 zoneID];
  v118 = 0;
  v65 = [CKKSTLKShareRecord allForUUID:currentKeyUUID contextID:contextID zoneID:zoneID2 error:&v118];
  v30 = v118;

  obj = v65;
  if (v30)
  {
    zoneName5 = [(CKKSKeychainView *)self zoneName];
    v67 = sub_100019104(@"ckkskey", zoneName5);

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
        storedCKRecord3 = [v90 storedCKRecord];
        modificationDate3 = [storedCKRecord3 modificationDate];
        v93 = [modificationDate3 compare:v106];

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

      zoneName6 = [(CKKSKeychainView *)self zoneName];
      v67 = sub_100019104(@"ckkskey", zoneName6);

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
    v24 = ksCopy;
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
    senderPeerID = [v78 senderPeerID];
    if ([v11 containsObject:senderPeerID])
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

  storedCKRecord4 = [v78 storedCKRecord];
  modificationDate4 = [storedCKRecord4 modificationDate];
  v82 = v75;
  v83 = v76;
  v84 = [modificationDate4 compare:v109];

  v85 = v84 == 1;
  v76 = v83;
  v75 = v82;
  v30 = v100;
  if (!v85)
  {
    goto LABEL_69;
  }

  zoneName7 = [(CKKSKeychainView *)self zoneName];
  v67 = sub_100019104(@"ckkskey", zoneName7);

  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v135 = v78;
    v96 = "Trusted TLK Share (%@) created recently; other devices have keys and should send them to us";
    goto LABEL_84;
  }

LABEL_85:
  v31 = 1;
  v24 = ksCopy;
LABEL_86:
  v71 = v102;
  v70 = v103;
  v72 = v101;

LABEL_58:
  return v31;
}

- (id)tlkMissingOperation:(id)operation
{
  operationCopy = operation;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C4D60;
  v8[3] = &unk_100343B78;
  objc_copyWeak(&v10, &location);
  v5 = operationCopy;
  v9 = v5;
  v6 = [OctagonStateTransitionOperation named:@"tlk-missing" intending:v5 errorState:@"error" withBlockTakingSelf:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (BOOL)allowOutOfBandFetch:(id *)fetch
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
  v5[6] = fetch;
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
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  views = [operationDependencies views];

  v5 = [views countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v5)
  {

LABEL_17:
    v7 = +[NSDate distantPast];
    goto LABEL_18;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v24;
  obj = views;
  while (2)
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v24 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v23 + 1) + 8 * i);
      operationDependencies2 = [(CKKSKeychainView *)self operationDependencies];
      contextID = [operationDependencies2 contextID];
      zoneName = [v10 zoneName];
      v14 = [CKKSZoneStateEntry contextID:contextID zoneName:zoneName];

      lastFetchTime = [v14 lastFetchTime];

      if (!lastFetchTime)
      {
        v20 = +[NSDate distantPast];

        v7 = v20;
        v19 = obj;
        goto LABEL_14;
      }

      if (!v7 || ([v14 lastFetchTime], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v7, "compare:", v16), v16, v17 == 1))
      {
        lastFetchTime2 = [v14 lastFetchTime];

        v7 = lastFetchTime2;
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
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  activeManagedViews = [operationDependencies activeManagedViews];

  v6 = [activeManagedViews countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(activeManagedViews);
        }

        zoneID = [*(*(&v13 + 1) + 8 * i) zoneID];
        zoneName = [zoneID zoneName];
        [v3 addObject:zoneName];
      }

      v7 = [activeManagedViews countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)viewsInState:(id)state
{
  stateCopy = state;
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  v6 = [operationDependencies viewsInState:stateCopy];

  return v6;
}

- (BOOL)anyViewsInState:(id)state
{
  stateCopy = state;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  views = [operationDependencies views];

  v7 = [views countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(views);
        }

        viewKeyHierarchyState = [*(*(&v13 + 1) + 8 * i) viewKeyHierarchyState];
        v11 = [viewKeyHierarchyState isEqualToString:stateCopy];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [views countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)loseTrustOperation:(id)operation
{
  operationCopy = operation;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C5DA0;
  v8[3] = &unk_100343B78;
  objc_copyWeak(&v10, &location);
  v5 = operationCopy;
  v9 = v5;
  v6 = [OctagonStateTransitionOperation named:@"lose-trust" intending:v5 errorState:@"error" withBlockTakingSelf:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (id)becomeReadyOperation:(id)operation
{
  operationCopy = operation;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C60C0;
  v8[3] = &unk_100343B78;
  objc_copyWeak(&v10, &location);
  v5 = operationCopy;
  v9 = v5;
  v6 = [OctagonStateTransitionOperation named:@"become-ready" intending:v5 errorState:@"error" withBlockTakingSelf:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (id)_onqueueNextStateMachineTransition:(id)transition flags:(id)flags pendingFlags:(id)pendingFlags
{
  transitionCopy = transition;
  flagsCopy = flags;
  pendingFlagsCopy = pendingFlags;
  queue = [(CKKSKeychainView *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([flagsCopy _onqueueContains:@"ck_account_logged_out"])
  {
    [flagsCopy _onqueueRemoveFlag:@"ck_account_logged_out"];
    zoneName = [(CKKSKeychainView *)self zoneName];
    v13 = sub_100019104(@"ckkskey", zoneName);

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "CK account is not present", buf, 2u);
    }

    operationDependencies = [(CKKSKeychainView *)self operationDependencies];
    [operationDependencies setStateForActiveZones:@"loggedout"];

    v15 = [CKKSLocalResetOperation alloc];
    operationDependencies2 = [(CKKSKeychainView *)self operationDependencies];
    v17 = [(CKKSLocalResetOperation *)v15 initWithDependencies:operationDependencies2 intendedState:@"loggedout" errorState:@"error"];

    goto LABEL_35;
  }

  if ([flagsCopy _onqueueContains:@"ck_zone_missing"])
  {
    [flagsCopy _onqueueRemoveFlag:@"ck_zone_missing"];
    operationDependencies3 = [(CKKSKeychainView *)self operationDependencies];
    [operationDependencies3 setStateForActiveZones:@"initializing"];

    performInitializedOperation = [OctagonStateTransitionOperation named:@"ck-zone-missing" entering:@"resetlocal"];
    goto LABEL_34;
  }

  if ([flagsCopy _onqueueContains:@"ck_change_token_expired"])
  {
    [flagsCopy _onqueueRemoveFlag:@"ck_change_token_expired"];
    operationDependencies4 = [(CKKSKeychainView *)self operationDependencies];
    [operationDependencies4 setStateForActiveZones:@"initializing"];

    performInitializedOperation = [OctagonStateTransitionOperation named:@"ck-token-expired" entering:@"resetlocal"];
    goto LABEL_34;
  }

  if ([transitionCopy isEqualToString:@"loggedout"])
  {
    if (([flagsCopy _onqueueContains:@"ck_account_logged_in"] & 1) != 0 || -[CKKSKeychainView accountStatus](self, "accountStatus") == 1)
    {
      [flagsCopy _onqueueRemoveFlag:@"ck_account_logged_in"];
      zoneName2 = [(CKKSKeychainView *)self zoneName];
      v22 = sub_100019104(@"ckkskey", zoneName2);

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "CloudKit account now present", buf, 2u);
      }

LABEL_14:

      performInitializedOperation = [OctagonStateTransitionOperation named:@"ck-sign-in" entering:@"initializing"];
      goto LABEL_34;
    }

    operationDependencies5 = [(CKKSKeychainView *)self operationDependencies];
    [operationDependencies5 setStateForAllViews:@"loggedout"];

    goto LABEL_27;
  }

  if ([transitionCopy isEqualToString:@"wait_for_ck_account_status"])
  {
    if (([flagsCopy _onqueueContains:@"ck_account_logged_in"] & 1) != 0 || -[CKKSKeychainView accountStatus](self, "accountStatus") == 1)
    {
      [flagsCopy _onqueueRemoveFlag:@"ck_account_logged_in"];
      zoneName3 = [(CKKSKeychainView *)self zoneName];
      v22 = sub_100019104(@"ckkskey", zoneName3);

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "CloudKit account now present", buf, 2u);
      }

      goto LABEL_14;
    }

    if ([flagsCopy _onqueueContains:@"ck_account_logged_out"])
    {
      [flagsCopy _onqueueRemoveFlag:@"ck_account_logged_out"];
      zoneName4 = [(CKKSKeychainView *)self zoneName];
      v25 = sub_100019104(@"ckkskey", zoneName4);

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No account available", buf, 2u);
      }

LABEL_25:

      v26 = [CKKSLocalResetOperation alloc];
      operationDependencies6 = [(CKKSKeychainView *)self operationDependencies];
      v17 = [(CKKSLocalResetOperation *)v26 initWithDependencies:operationDependencies6 intendedState:@"loggedout" errorState:@"error"];

      goto LABEL_35;
    }

LABEL_54:
    v17 = 0;
    goto LABEL_35;
  }

  if ([transitionCopy isEqual:@"initializing"])
  {
    if ([(CKKSKeychainView *)self accountStatus]== 3)
    {
      zoneName5 = [(CKKSKeychainView *)self zoneName];
      v25 = sub_100019104(@"ckkskey", zoneName5);

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "CloudKit account is missing. Departing!", buf, 2u);
      }

      goto LABEL_25;
    }

    operationDependencies7 = [(CKKSKeychainView *)self operationDependencies];
    [operationDependencies7 operateOnAllViews];

    operationDependencies8 = [(CKKSKeychainView *)self operationDependencies];
    [operationDependencies8 setStateForAllViews:@"initializing"];

    v33 = [CKKSCreateCKZoneOperation alloc];
    operationDependencies9 = [(CKKSKeychainView *)self operationDependencies];
    v17 = [(CKKSCreateCKZoneOperation *)v33 initWithDependencies:operationDependencies9 intendedState:@"initialized" errorState:@"zonecreationfailed"];

    operationDependencies10 = [(CKKSKeychainView *)self operationDependencies];
    cloudkitRetryAfter = [operationDependencies10 cloudkitRetryAfter];
    operationDependency = [cloudkitRetryAfter operationDependency];
    [(CKKSLocalResetOperation *)v17 addNullableDependency:operationDependency];

    operationDependencies11 = [(CKKSKeychainView *)self operationDependencies];
    cloudkitRetryAfter2 = [operationDependencies11 cloudkitRetryAfter];
    goto LABEL_43;
  }

  if ([transitionCopy isEqualToString:@"initialized"])
  {
    if ([flagsCopy _onqueueContains:@"new_priority_views"] && -[CKKSKeychainView trustStatus](self, "trustStatus") == 1)
    {
      [flagsCopy _onqueueRemoveFlag:@"new_priority_views"];
      [(CKKSKeychainView *)self _onqueuePrioritizePriorityViews];
    }

    performInitializedOperation = [(CKKSKeychainView *)self performInitializedOperation];
    goto LABEL_34;
  }

  if ([transitionCopy isEqualToString:@"error"])
  {
    if (![flagsCopy _onqueueContains:@"ck_account_logged_in"])
    {
      zoneName6 = [(CKKSKeychainView *)self zoneName];
      v48 = sub_100019104(@"ckkskey", zoneName6);

      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v217 = transitionCopy;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Staying in error state %@", buf, 0xCu);
      }

      goto LABEL_54;
    }

    [flagsCopy _onqueueRemoveFlag:@"ck_account_logged_in"];
    v41 = [CKKSLocalResetOperation alloc];
    operationDependencies11 = [(CKKSKeychainView *)self operationDependencies];
    v42 = @"initializing";
    v43 = @"error";
    goto LABEL_48;
  }

  if ([transitionCopy isEqualToString:@"fixup_fetch_cip"])
  {
    v44 = [CKKSFixupRefetchAllCurrentItemPointers alloc];
    operationDependencies12 = [(CKKSKeychainView *)self operationDependencies];
    v46 = [CKOperationGroup CKKSGroupWithName:@"fixup"];
LABEL_57:
    v49 = v46;
    v50 = [(CKKSFixupRefetchAllCurrentItemPointers *)v44 initWithOperationDependencies:operationDependencies12 ckoperationGroup:v46];
LABEL_58:
    v17 = v50;

LABEL_59:
    [(CKKSKeychainView *)self setLastFixupOperation:v17];
    goto LABEL_35;
  }

  if ([transitionCopy isEqualToString:@"fixup_fetch_tlkshares"])
  {
    v44 = [CKKSFixupFetchAllTLKShares alloc];
    operationDependencies12 = [(CKKSKeychainView *)self operationDependencies];
    v46 = [CKOperationGroup CKKSGroupWithName:@"fixup"];
    goto LABEL_57;
  }

  if ([transitionCopy isEqualToString:@"fixup_local_reload"])
  {
    v51 = [CKKSFixupLocalReloadOperation alloc];
    operationDependencies12 = [(CKKSKeychainView *)self operationDependencies];
    v49 = [CKOperationGroup CKKSGroupWithName:@"fixup"];
    v52 = @"fixup_resave_cdse";
    v53 = v51;
    v54 = operationDependencies12;
    v55 = 3;
LABEL_62:
    v50 = [(CKKSFixupLocalReloadOperation *)v53 initWithOperationDependencies:v54 fixupNumber:v55 ckoperationGroup:v49 entering:v52];
    goto LABEL_58;
  }

  if ([transitionCopy isEqualToString:@"fixup_resave_cdse"])
  {
    v56 = [CKKSFixupResaveDeviceStateEntriesOperation alloc];
    operationDependencies12 = [(CKKSKeychainView *)self operationDependencies];
    v17 = [(CKKSFixupResaveDeviceStateEntriesOperation *)v56 initWithOperationDependencies:operationDependencies12];
    goto LABEL_59;
  }

  if ([transitionCopy isEqualToString:@"fixup_delete_tombstones"])
  {
    v57 = [CKKSFixupLocalReloadOperation alloc];
    operationDependencies12 = [(CKKSKeychainView *)self operationDependencies];
    v49 = [CKOperationGroup CKKSGroupWithName:@"fixup"];
    v52 = @"initialized";
    v53 = v57;
    v54 = operationDependencies12;
    v55 = 5;
    goto LABEL_62;
  }

  if ([transitionCopy isEqualToString:@"resetzone"])
  {
    zoneName7 = [(CKKSKeychainView *)self zoneName];
    v59 = sub_100019104(@"ckkskey", zoneName7);

    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      operationDependencies13 = [(CKKSKeychainView *)self operationDependencies];
      views = [operationDependencies13 views];
      *buf = 138412290;
      v217 = views;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Deleting the CloudKit Zones for %@", buf, 0xCu);
    }

    operationDependencies14 = [(CKKSKeychainView *)self operationDependencies];
    [operationDependencies14 setStateForActiveZones:@"resetzone"];

    v63 = [CKKSDeleteCKZoneOperation alloc];
    operationDependencies15 = [(CKKSKeychainView *)self operationDependencies];
    v17 = [(CKKSDeleteCKZoneOperation *)v63 initWithDependencies:operationDependencies15 intendedState:@"resetlocal" errorState:@"resetzone"];

    goto LABEL_35;
  }

  if ([transitionCopy isEqualToString:@"zone_deletion_failed_due_to_network_error"])
  {
    if ([flagsCopy _onqueueContains:@"zone_deletion"])
    {
      [flagsCopy _onqueueRemoveFlag:@"zone_deletion"];
      performInitializedOperation = [OctagonStateTransitionOperation named:@"recover-from-zone-deletion-network-failure" entering:@"resetzone"];
      goto LABEL_34;
    }

    v72 = [[OctagonPendingFlag alloc] initWithFlag:@"zone_deletion" conditions:2 delayInSeconds:0.2];
    stateMachine = [(CKKSKeychainView *)self stateMachine];
    goto LABEL_79;
  }

  if ([transitionCopy isEqualToString:@"resetlocal"])
  {
    zoneName8 = [(CKKSKeychainView *)self zoneName];
    v66 = sub_100019104(@"ckkskey", zoneName8);

    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      operationDependencies16 = [(CKKSKeychainView *)self operationDependencies];
      views2 = [operationDependencies16 views];
      *buf = 138412290;
      v217 = views2;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Resetting local data for %@", buf, 0xCu);
    }

    [(CKKSKeychainView *)self setLastNewTLKOperation:0];
    operationDependencies17 = [(CKKSKeychainView *)self operationDependencies];
    [operationDependencies17 setStateForActiveZones:@"initializing"];

    v70 = [CKKSLocalResetOperation alloc];
    operationDependencies18 = [(CKKSKeychainView *)self operationDependencies];
    v17 = [(CKKSLocalResetOperation *)v70 initWithDependencies:operationDependencies18 intendedState:@"initializing" errorState:@"error"];

    goto LABEL_35;
  }

  if ([transitionCopy isEqualToString:@"zonecreationfailed"])
  {
    v17 = [OctagonStateTransitionOperation named:@"recover-from-cloudkit-failure" entering:@"initializing"];
    operationDependencies19 = [(CKKSKeychainView *)self operationDependencies];
    cloudkitRetryAfter3 = [operationDependencies19 cloudkitRetryAfter];
    operationDependency2 = [cloudkitRetryAfter3 operationDependency];
    [(CKKSLocalResetOperation *)v17 addNullableDependency:operationDependency2];

    operationDependencies11 = [(CKKSKeychainView *)self operationDependencies];
    cloudkitRetryAfter2 = [operationDependencies11 cloudkitRetryAfter];
LABEL_43:
    v40 = cloudkitRetryAfter2;
    [cloudkitRetryAfter2 trigger];

LABEL_44:
    goto LABEL_35;
  }

  if ([transitionCopy isEqualToString:@"zone_creation_failed_due_to_network_error"])
  {
    if ([flagsCopy _onqueueContains:@"zone_creation"])
    {
      [flagsCopy _onqueueRemoveFlag:@"zone_creation"];
      performInitializedOperation = [OctagonStateTransitionOperation named:@"recover-from-zone-creation-network-failure" entering:@"initializing"];
      goto LABEL_34;
    }

    v72 = [[OctagonPendingFlag alloc] initWithFlag:@"zone_creation" conditions:2 delayInSeconds:0.2];
    stateMachine = [(CKKSKeychainView *)self stateMachine];
LABEL_79:
    v74 = stateMachine;
    [stateMachine _onqueueHandlePendingFlagLater:v72];

    goto LABEL_54;
  }

  if ([transitionCopy isEqualToString:@"lose_trust"])
  {
    if ([flagsCopy _onqueueContains:@"trusted_operation_begin"])
    {
      [flagsCopy _onqueueRemoveFlag:@"trusted_operation_begin"];
      [OctagonStateTransitionOperation named:@"begin-trusted-operation" entering:@"initialized"];
    }

    else
    {
      [(CKKSKeychainView *)self loseTrustOperation:@"waitfortrust"];
    }
    performInitializedOperation = ;
    goto LABEL_34;
  }

  if ([transitionCopy isEqualToString:@"waitfortrust"])
  {
    if ([(CKKSKeychainView *)self trustStatus]== 1)
    {
      zoneName9 = [(CKKSKeychainView *)self zoneName];
      v79 = sub_100019104(@"ckkskey", zoneName9);

      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Beginning trusted state machine operation", buf, 2u);
      }

      performInitializedOperation = [OctagonStateTransitionOperation named:@"begin-trusted-operation" entering:@"initialized"];
      goto LABEL_34;
    }

    if ([flagsCopy _onqueueContains:@"fetch_requested"])
    {
      [flagsCopy _onqueueRemoveFlag:@"fetch_requested"];
      performInitializedOperation = [OctagonStateTransitionOperation named:@"fetch-requested" entering:@"begin_fetch"];
      goto LABEL_34;
    }

    if ([flagsCopy _onqueueContains:@"key_process_requested"])
    {
      [flagsCopy _onqueueRemoveFlag:@"key_process_requested"];
      performInitializedOperation = [OctagonStateTransitionOperation named:@"begin-trusted-operation" entering:@"process_key_hierarchy"];
      goto LABEL_34;
    }

    if ([flagsCopy _onqueueContains:@"key_set"])
    {
      [flagsCopy _onqueueRemoveFlag:@"key_set"];
      performInitializedOperation = [OctagonStateTransitionOperation named:@"provide-key-set" entering:@"provide_key_hieararchy_untrusted"];
      goto LABEL_34;
    }

LABEL_27:
    if ([flagsCopy _onqueueContains:@"24_hr_notification"])
    {
      [flagsCopy _onqueueRemoveFlag:@"24_hr_notification"];
    }

    goto LABEL_54;
  }

  if ([transitionCopy isEqualToString:@"provide_key_hieararchy"])
  {
    v80 = [CKKSNewTLKOperation alloc];
    operationDependencies20 = [(CKKSKeychainView *)self operationDependencies];
    lastNewTLKOperation = [(CKKSKeychainView *)self lastNewTLKOperation];
    keysets = [lastNewTLKOperation keysets];
    v84 = @"become_ready";
LABEL_102:
    v17 = [(CKKSNewTLKOperation *)v80 initWithDependencies:operationDependencies20 rollTLKIfPresent:0 preexistingPendingKeySets:keysets intendedState:v84 errorState:@"error"];

    [(CKKSKeychainView *)self setLastNewTLKOperation:v17];
    goto LABEL_35;
  }

  if ([transitionCopy isEqualToString:@"provide_key_hieararchy_untrusted"])
  {
    v80 = [CKKSNewTLKOperation alloc];
    operationDependencies20 = [(CKKSKeychainView *)self operationDependencies];
    lastNewTLKOperation = [(CKKSKeychainView *)self lastNewTLKOperation];
    keysets = [lastNewTLKOperation keysets];
    v84 = @"waitfortrust";
    goto LABEL_102;
  }

  if ([transitionCopy isEqualToString:@"handle_all_views"])
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

  if ([transitionCopy isEqualToString:@"become_ready"])
  {
    performInitializedOperation = [(CKKSKeychainView *)self becomeReadyOperation:@"ready"];
    goto LABEL_34;
  }

  if ([transitionCopy isEqualToString:@"ready"])
  {
    [flagsCopy _onqueueRemoveFlag:@"trusted_operation_begin"];
    if ([flagsCopy _onqueueContains:@"device_unlocked"])
    {
      [flagsCopy _onqueueRemoveFlag:@"device_unlocked"];
      performInitializedOperation = [OctagonStateTransitionOperation named:@"key-state-after-unlock" entering:@"initialized"];
      goto LABEL_34;
    }

    if ([(CKKSKeychainView *)self keyStateFullRefetchRequested])
    {
      zoneName10 = [(CKKSKeychainView *)self zoneName];
      v103 = sub_100019104(@"ckkskey", zoneName10);

      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v217) = [(CKKSKeychainView *)self keyStateFullRefetchRequested];
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Kicking off a full key refetch based on request:%d", buf, 8u);
      }

      operationDependencies21 = [(CKKSKeychainView *)self operationDependencies];
      [operationDependencies21 setStateForActiveZones:@"fetching"];

      performInitializedOperation = [OctagonStateTransitionOperation named:@"full-refetch" entering:@"needrefetch"];
      goto LABEL_34;
    }

    if (![flagsCopy _onqueueContains:@"fetch_requested"])
    {
      if ([flagsCopy _onqueueContains:@"key_process_requested"])
      {
        [flagsCopy _onqueueRemoveFlag:@"key_process_requested"];
        zoneName11 = [(CKKSKeychainView *)self zoneName];
        v110 = sub_100019104(@"ckkskey", zoneName11);

        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "Kicking off a key reprocess based on request", buf, 2u);
        }

        operationDependencies22 = [(CKKSKeychainView *)self operationDependencies];
        [operationDependencies22 setStateForActiveCKKSManagedViews:@"process_key_hierarchy"];

        performInitializedOperation = [OctagonStateTransitionOperation named:@"key-process" entering:@"process_key_hierarchy"];
        goto LABEL_34;
      }

      if ([flagsCopy _onqueueContains:@"key_set"])
      {
        [flagsCopy _onqueueRemoveFlag:@"key_set"];
        performInitializedOperation = [OctagonStateTransitionOperation named:@"provide-key-set" entering:@"provide_key_hieararchy"];
        goto LABEL_34;
      }

      if ([(CKKSKeychainView *)self trustStatus]!= 1)
      {
        zoneName12 = [(CKKSKeychainView *)self zoneName];
        v123 = sub_100019104(@"ckkskey", zoneName12);

        if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "In ready, but there's no trust; going into waitfortrust", buf, 2u);
        }

        performInitializedOperation = [OctagonStateTransitionOperation named:@"trust-gone" entering:@"lose_trust"];
        goto LABEL_34;
      }

      if ([flagsCopy _onqueueContains:@"trusted_peers_changed"])
      {
        [flagsCopy _onqueueRemoveFlag:@"trusted_peers_changed"];
        zoneName13 = [(CKKSKeychainView *)self zoneName];
        v120 = sub_100019104(@"ckkskey", zoneName13);

        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "Received a nudge that the trusted peers set might have changed! Reprocessing.", buf, 2u);
        }

        operationDependencies23 = [(CKKSKeychainView *)self operationDependencies];
        [operationDependencies23 setStateForActiveCKKSManagedViews:@"process_key_hierarchy"];

        performInitializedOperation = [OctagonStateTransitionOperation named:@"trusted-peers-changed" entering:@"process_key_hierarchy"];
        goto LABEL_34;
      }

      if ([flagsCopy _onqueueContains:@"check_queues"])
      {
        [flagsCopy _onqueueRemoveFlag:@"check_queues"];
        performInitializedOperation = [OctagonStateTransitionOperation named:@"check-queues" entering:@"become_ready"];
        goto LABEL_34;
      }

      if ([flagsCopy _onqueueContains:@"24_hr_notification"])
      {
        [flagsCopy _onqueueRemoveFlag:@"24_hr_notification"];
        performInitializedOperation = [OctagonStateTransitionOperation named:@"24-hr-check" entering:@"initialized"];
        goto LABEL_34;
      }

      if ([flagsCopy _onqueueContains:@"item_reencryption_needed"])
      {
        [flagsCopy _onqueueRemoveFlag:@"item_reencryption_needed"];
        performInitializedOperation = [OctagonStateTransitionOperation named:@"reencrypt" entering:@"reencrypt_outgoing_items"];
        goto LABEL_34;
      }

      if ([flagsCopy _onqueueContains:@"process_incoming_queue"])
      {
        [flagsCopy _onqueueRemoveFlag:@"process_incoming_queue"];
        performInitializedOperation = [OctagonStateTransitionOperation named:@"process-incoming" entering:@"process_incoming_queue"];
        goto LABEL_34;
      }

      if ([flagsCopy _onqueueContains:@"dropped_items"])
      {
        [flagsCopy _onqueueRemoveFlag:@"dropped_items"];
        zoneName14 = [(CKKSKeychainView *)self zoneName];
        v169 = sub_100019104(@"ckkskey", zoneName14);

        if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEFAULT, "Launching a scan operation to find dropped items", buf, 2u);
        }

        performInitializedOperation = [OctagonStateTransitionOperation named:@"scan" entering:@"scan_local_items"];
        goto LABEL_34;
      }

      if ([flagsCopy _onqueueContains:@"process_outgoing_queue"])
      {
        if ([flagsCopy _onqueueContains:@"oqo_token"])
        {
          [flagsCopy _onqueueRemoveFlag:@"process_outgoing_queue"];
          [flagsCopy _onqueueRemoveFlag:@"oqo_token"];
          performInitializedOperation = [OctagonStateTransitionOperation named:@"oqo" entering:@"process_outgoing_queue"];
          goto LABEL_34;
        }

        outgoingQueueOperationScheduler = [(CKKSKeychainView *)self outgoingQueueOperationScheduler];
        [outgoingQueueOperationScheduler trigger];
      }

      if ([flagsCopy _onqueueContains:@"new_priority_views"])
      {
        [flagsCopy _onqueueRemoveFlag:@"new_priority_views"];
      }

      v211 = 0u;
      v212 = 0u;
      v209 = 0u;
      v210 = 0u;
      operationDependencies24 = [(CKKSKeychainView *)self operationDependencies];
      views3 = [operationDependencies24 views];

      v177 = [views3 countByEnumeratingWithState:&v209 objects:v221 count:16];
      if (v177)
      {
        v178 = *v210;
        do
        {
          for (i = 0; i != v177; i = i + 1)
          {
            if (*v210 != v178)
            {
              objc_enumerationMutation(views3);
            }

            [*(*(&v209 + 1) + 8 * i) launchComplete];
          }

          v177 = [views3 countByEnumeratingWithState:&v209 objects:v221 count:16];
        }

        while (v177);
      }

      operationDependencies25 = [(CKKSKeychainView *)self operationDependencies];
      overallLaunch = [operationDependencies25 overallLaunch];
      [overallLaunch launch];

      v182 = +[CKKSAnalytics logger];
      operationDependencies26 = [(CKKSKeychainView *)self operationDependencies];
      overallLaunch2 = [operationDependencies26 overallLaunch];
      [v182 noteLaunchSequence:overallLaunch2];

      goto LABEL_54;
    }

    [flagsCopy _onqueueRemoveFlag:@"fetch_requested"];
    zoneName15 = [(CKKSKeychainView *)self zoneName];
    v106 = sub_100019104(@"ckkskey", zoneName15);

    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "Kicking off a key refetch based on request", buf, 2u);
    }

LABEL_141:

    performInitializedOperation = [OctagonStateTransitionOperation named:@"fetch-requested" entering:@"begin_fetch"];
    goto LABEL_34;
  }

  if ([transitionCopy isEqualToString:@"begin_fetch"])
  {
    [flagsCopy _onqueueRemoveFlag:@"fetch_complete"];
    if ([flagsCopy _onqueueContains:@"new_priority_views"] && -[CKKSKeychainView trustStatus](self, "trustStatus") == 1)
    {
      [flagsCopy _onqueueRemoveFlag:@"new_priority_views"];
      [(CKKSKeychainView *)self _onqueuePrioritizePriorityViews];
    }

    objc_initWeak(&location, self);
    operationDependencies27 = [(CKKSKeychainView *)self operationDependencies];
    currentFetchReasons = [operationDependencies27 currentFetchReasons];
    v190 = [currentFetchReasons copy];

    operationDependencies28 = [(CKKSKeychainView *)self operationDependencies];
    currentFetchReasons2 = [operationDependencies28 currentFetchReasons];
    [currentFetchReasons2 removeAllObjects];

    zoneChangeFetcher = [(CKKSKeychainView *)self zoneChangeFetcher];
    v189 = [zoneChangeFetcher requestSuccessfulFetchForManyReasons:v190];

    v206[0] = _NSConcreteStackBlock;
    v206[1] = 3221225472;
    v206[2] = sub_1001CB228;
    v206[3] = &unk_1003452E8;
    objc_copyWeak(&v207, &location);
    v191 = [CKKSResultOperation named:@"post-fetch" withBlock:v206];
    [v191 addDependency:v189];
    [(CKKSKeychainView *)self scheduleOperation:v191];
    operationDependencies29 = [(CKKSKeychainView *)self operationDependencies];
    currentFetchReasons3 = [operationDependencies29 currentFetchReasons];
    v194 = [currentFetchReasons3 containsObject:@"keyhierarchy"];

    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    operationDependencies30 = [(CKKSKeychainView *)self operationDependencies];
    obj = [operationDependencies30 views];

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
          zoneName16 = [v95 zoneName];
          v97 = sub_100019104(@"fetch", zoneName16);

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
            viewKeyHierarchyState = [v95 viewKeyHierarchyState];
            v99 = [viewKeyHierarchyState isEqualToString:@"ready"];

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

    operationDependencies31 = [(CKKSKeychainView *)self operationDependencies];
    overallLaunch3 = [operationDependencies31 overallLaunch];
    [overallLaunch3 addEvent:@"begin-fetch"];

    v17 = [OctagonStateTransitionOperation named:@"waiting-for-fetch" entering:@"fetching"];

    objc_destroyWeak(&v207);
    objc_destroyWeak(&location);
    goto LABEL_35;
  }

  if ([transitionCopy isEqualToString:@"fetching"])
  {
    if ([flagsCopy _onqueueContains:@"fetch_complete"])
    {
      [flagsCopy _onqueueRemoveFlag:@"fetch_complete"];
      performInitializedOperation = [OctagonStateTransitionOperation named:@"fetch-complete" entering:@"fetchcomplete"];
      goto LABEL_34;
    }

    if ([flagsCopy _onqueueContains:@"new_priority_views"] && -[CKKSKeychainView trustStatus](self, "trustStatus") == 1)
    {
      [flagsCopy _onqueueRemoveFlag:@"new_priority_views"];
      [(CKKSKeychainView *)self _onqueuePrioritizePriorityViews];
    }

    goto LABEL_54;
  }

  if ([transitionCopy isEqualToString:@"fetchcomplete"])
  {
    operationDependencies32 = [(CKKSKeychainView *)self operationDependencies];
    overallLaunch4 = [operationDependencies32 overallLaunch];
    [overallLaunch4 addEvent:@"fetch-complete"];

    performInitializedOperation = [OctagonStateTransitionOperation named:@"post-fetch-process" entering:@"process_key_hierarchy"];
    goto LABEL_34;
  }

  if ([transitionCopy isEqualToString:@"process_key_hierarchy"])
  {
    if ([flagsCopy _onqueueContains:@"fetch_requested"])
    {
      [flagsCopy _onqueueRemoveFlag:@"fetch_requested"];
      v106 = sub_100019104(@"ckkskey", 0);
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "Kicking off a fetch based on request", buf, 2u);
      }

      goto LABEL_141;
    }

    [flagsCopy _onqueueRemoveFlag:@"key_process_requested"];
    operationDependencies33 = [(CKKSKeychainView *)self operationDependencies];
    [operationDependencies33 setStateForActiveCKKSManagedViews:@"process_key_hierarchy"];

    operationDependencies34 = [(CKKSKeychainView *)self operationDependencies];
    [operationDependencies34 setStateForActiveExternallyManagedViews:@"ready"];

    operationDependencies35 = [(CKKSKeychainView *)self operationDependencies];
    overallLaunch5 = [operationDependencies35 overallLaunch];
    [overallLaunch5 addEvent:@"process_key_hierarchy"];

    v116 = [CKKSProcessReceivedKeysOperation alloc];
    operationDependencies36 = [(CKKSKeychainView *)self operationDependencies];
    v118 = [(CKKSProcessReceivedKeysOperation *)v116 initWithDependencies:operationDependencies36 allowFullRefetchResult:[(CKKSKeychainView *)self keyStateMachineRefetched]^ 1 intendedState:@"check_zone_hierarchies" errorState:@"error"];
LABEL_162:
    v17 = v118;

    goto LABEL_35;
  }

  if ([transitionCopy isEqualToString:@"check_zone_hierarchies"])
  {
    if ([(CKKSKeychainView *)self anyViewsInState:@"unhealthy"])
    {
      performInitializedOperation = [OctagonStateTransitionOperation named:@"unhealthy" entering:@"unhealthy"];
      goto LABEL_34;
    }

    if ([(CKKSKeychainView *)self anyViewsInState:@"tlkmissing"])
    {
      performInitializedOperation = [OctagonStateTransitionOperation named:@"tlk-missing" entering:@"tlkmissing"];
      goto LABEL_34;
    }

    if ([(CKKSKeychainView *)self anyViewsInState:@"newtlksfailed"])
    {
      operationDependencies37 = [(CKKSKeychainView *)self operationDependencies];
      currentFetchReasons4 = [operationDependencies37 currentFetchReasons];
      [currentFetchReasons4 addObject:@"conflict"];

      performInitializedOperation = [OctagonStateTransitionOperation named:@"newtlks-failed" entering:@"begin_fetch"];
      goto LABEL_34;
    }

    if ([(CKKSKeychainView *)self anyViewsInState:@"waitfortrust"])
    {
      operationDependencies38 = [(CKKSKeychainView *)self operationDependencies];
      allViews = [operationDependencies38 allViews];
      operationDependencies39 = [(CKKSKeychainView *)self operationDependencies];
      views4 = [operationDependencies39 views];
      v132 = [allViews isEqualToSet:views4];

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

      performInitializedOperation = [OctagonStateTransitionOperation named:@"no-trust" entering:@"lose_trust"];
LABEL_34:
      v17 = performInitializedOperation;
      goto LABEL_35;
    }

    if ([(CKKSKeychainView *)self anyViewsInState:@"needrefetch"])
    {
      operationDependencies36 = [(CKKSKeychainView *)self viewsInState:@"needrefetch"];
      operationDependencies40 = [(CKKSKeychainView *)self operationDependencies];
      [operationDependencies40 operateOnSelectViews:operationDependencies36];

      v118 = [OctagonStateTransitionOperation named:@"reset-views" entering:@"needrefetch"];
      goto LABEL_162;
    }

    if ([(CKKSKeychainView *)self anyViewsInState:@"waitforunlock"])
    {
      v144 = [[OctagonPendingFlag alloc] initWithFlag:@"device_unlocked" conditions:1];
      [pendingFlagsCopy _onqueueHandlePendingFlagLater:v144];
    }

    if ([(CKKSKeychainView *)self anyViewsInState:@"waitfortlkcreation"])
    {
      v145 = sub_100019104(@"ckkskey", 0);
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "Requesting TLK upload", buf, 2u);
      }

      suggestTLKUpload = [(CKKSKeychainView *)self suggestTLKUpload];
      [suggestTLKUpload trigger];
    }

    v195 = +[NSMutableSet set];
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    operationDependencies41 = [(CKKSKeychainView *)self operationDependencies];
    views5 = [operationDependencies41 views];

    v149 = [views5 countByEnumeratingWithState:&v196 objects:v215 count:16];
    if (v149)
    {
      v150 = *v197;
      do
      {
        for (k = 0; k != v149; k = k + 1)
        {
          if (*v197 != v150)
          {
            objc_enumerationMutation(views5);
          }

          viewKeyHierarchyState2 = [*(*(&v196 + 1) + 8 * k) viewKeyHierarchyState];
          [v195 addObject:viewKeyHierarchyState2];
        }

        v149 = [views5 countByEnumeratingWithState:&v196 objects:v215 count:16];
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

    if ([flagsCopy _onqueueContains:@"key_set"])
    {
      [flagsCopy _onqueueRemoveFlag:@"key_set"];
      v156 = [CKKSNewTLKOperation alloc];
      operationDependencies42 = [(CKKSKeychainView *)self operationDependencies];
      lastNewTLKOperation2 = [(CKKSKeychainView *)self lastNewTLKOperation];
      keysets2 = [lastNewTLKOperation2 keysets];
      v17 = [(CKKSNewTLKOperation *)v156 initWithDependencies:operationDependencies42 rollTLKIfPresent:0 preexistingPendingKeySets:keysets2 intendedState:@"check_zone_hierarchies" errorState:@"error"];

      [(CKKSKeychainView *)self setLastNewTLKOperation:v17];
    }

    else
    {
      v17 = [OctagonStateTransitionOperation named:@"heal-tlk-shares" entering:@"heal_tlk_shares"];
    }
  }

  else
  {
    if ([transitionCopy isEqualToString:@"tlkmissing"])
    {
      performInitializedOperation = [(CKKSKeychainView *)self tlkMissingOperation:@"check_zone_hierarchies"];
      goto LABEL_34;
    }

    if ([transitionCopy isEqualToString:@"heal_tlk_shares"])
    {
      v41 = [CKKSHealTLKSharesOperation alloc];
      operationDependencies11 = [(CKKSKeychainView *)self operationDependencies];
      v42 = @"process_incoming_queue";
      v43 = @"healtlksharesfailed";
LABEL_48:
      v17 = [(CKKSLocalResetOperation *)v41 initWithDependencies:operationDependencies11 intendedState:v42 errorState:v43];
      goto LABEL_44;
    }

    if ([transitionCopy isEqualToString:@"needrefetch"])
    {
      zoneName17 = [(CKKSKeychainView *)self zoneName];
      v127 = sub_100019104(@"ckkskey", zoneName17);

      if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "Starting a key hierarchy full refetch", buf, 2u);
      }

      [(CKKSKeychainView *)self setKeyStateMachineRefetched:1];
      [(CKKSKeychainView *)self setKeyStateFullRefetchRequested:0];
      performInitializedOperation = [OctagonStateTransitionOperation named:@"fetch-complete" entering:@"resetlocal"];
      goto LABEL_34;
    }

    if ([transitionCopy isEqualToString:@"healtlksharesfailed"])
    {
      zoneName18 = [(CKKSKeychainView *)self zoneName];
      v134 = sub_100019104(@"ckkskey", zoneName18);

      if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "Creating new TLK shares didn't work. Attempting to refetch!", buf, 2u);
      }

      operationDependencies43 = [(CKKSKeychainView *)self operationDependencies];
      currentFetchReasons5 = [operationDependencies43 currentFetchReasons];
      [currentFetchReasons5 addObject:@"conflict"];

      performInitializedOperation = [OctagonStateTransitionOperation named:@"heal-tlks-failed" entering:@"begin_fetch"];
      goto LABEL_34;
    }

    if ([transitionCopy isEqualToString:@"unhealthy"])
    {
      v138 = [(CKKSKeychainView *)self trustStatus]== 1;
      zoneName19 = [(CKKSKeychainView *)self zoneName];
      v140 = sub_100019104(@"ckkskey", zoneName19);

      v141 = os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT);
      if (!v138)
      {
        if (v141)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "Looks like the key hierarchy is unhealthy, but we're untrusted.", buf, 2u);
        }

        performInitializedOperation = [OctagonStateTransitionOperation named:@"unhealthy-lacking-trust" entering:@"lose_trust"];
        goto LABEL_34;
      }

      if (v141)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "Looks like the key hierarchy is unhealthy. Launching fix.", buf, 2u);
      }

      v142 = [CKKSHealKeyHierarchyOperation alloc];
      operationDependencies44 = [(CKKSKeychainView *)self operationDependencies];
      v17 = [(CKKSHealKeyHierarchyOperation *)v142 initWithDependencies:operationDependencies44 allowFullRefetchResult:[(CKKSKeychainView *)self keyStateMachineRefetched]^ 1 intending:@"check_zone_hierarchies" errorState:@"error"];
    }

    else
    {
      if (![transitionCopy isEqualToString:@"process_incoming_queue"])
      {
        if ([transitionCopy isEqualToString:@"class_a_incoming_items_remaining"])
        {
          performInitializedOperation = [OctagonStateTransitionOperation named:@"iqo-errored" entering:@"become_ready"];
          goto LABEL_34;
        }

        if ([transitionCopy isEqualToString:@"scan_local_items"])
        {
          [flagsCopy _onqueueRemoveFlag:@"dropped_items"];
          v170 = [CKKSScanLocalItemsOperation alloc];
          operationDependencies45 = [(CKKSKeychainView *)self operationDependencies];
          v17 = [(CKKSScanLocalItemsOperation *)v170 initWithDependencies:operationDependencies45 intending:@"become_ready" errorState:@"error" ckoperationGroup:0];

          [(CKKSKeychainView *)self setInitiatedLocalScan:1];
          goto LABEL_35;
        }

        if ([transitionCopy isEqualToString:@"reencrypt_outgoing_items"])
        {
          v172 = [CKKSReencryptOutgoingItemsOperation alloc];
          operationDependencies46 = [(CKKSKeychainView *)self operationDependencies];
          v17 = [(CKKSReencryptOutgoingItemsOperation *)v172 initWithDependencies:operationDependencies46 intendedState:@"become_ready" errorState:@"error" holdOperation:0];

          [(CKKSKeychainView *)self setLastReencryptOutgoingItemsOperation:v17];
          goto LABEL_35;
        }

        if ([transitionCopy isEqualToString:@"process_outgoing_queue"])
        {
          [flagsCopy _onqueueRemoveFlag:@"process_outgoing_queue"];
          v185 = [CKKSOutgoingQueueOperation alloc];
          operationDependencies47 = [(CKKSKeychainView *)self operationDependencies];
          v17 = [(CKKSOutgoingQueueOperation *)v185 initWithDependencies:operationDependencies47 intending:@"become_ready" ckErrorState:@"process_outgoing_queue_failed" errorState:@"initialized"];

          holdOutgoingQueueOperation = [(CKKSKeychainView *)self holdOutgoingQueueOperation];
          [(CKKSLocalResetOperation *)v17 addNullableDependency:holdOutgoingQueueOperation];

          outgoingQueueOperations = [(CKKSKeychainView *)self outgoingQueueOperations];
          [(CKKSLocalResetOperation *)v17 linearDependencies:outgoingQueueOperations];

          [(CKKSKeychainView *)self setLastOutgoingQueueOperation:v17];
          goto LABEL_35;
        }

        if ([transitionCopy isEqualToString:@"process_outgoing_queue_failed"])
        {
          performInitializedOperation = [OctagonStateTransitionOperation named:@"oqo-failure" entering:@"become_ready"];
          goto LABEL_34;
        }

        goto LABEL_54;
      }

      [flagsCopy _onqueueRemoveFlag:@"process_incoming_queue"];
      v160 = [flagsCopy _onqueueContains:@"policy_fresh"];
      [flagsCopy _onqueueRemoveFlag:@"policy_fresh"];
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
      operationDependencies48 = [(CKKSKeychainView *)self operationDependencies];
      v17 = [(CKKSIncomingQueueOperation *)v162 initWithDependencies:operationDependencies48 intending:@"become_ready" pendingClassAItemsRemainingState:@"class_a_incoming_items_remaining" errorState:@"become_ready" handleMismatchedViewItems:v160];

      resultsOfNextIncomingQueueOperationOperation = [(CKKSKeychainView *)self resultsOfNextIncomingQueueOperationOperation];

      if (resultsOfNextIncomingQueueOperationOperation)
      {
        resultsOfNextIncomingQueueOperationOperation2 = [(CKKSKeychainView *)self resultsOfNextIncomingQueueOperationOperation];
        [resultsOfNextIncomingQueueOperationOperation2 addSuccessDependency:v17];

        resultsOfNextIncomingQueueOperationOperation3 = [(CKKSKeychainView *)self resultsOfNextIncomingQueueOperationOperation];
        [(CKKSKeychainView *)self scheduleOperation:resultsOfNextIncomingQueueOperationOperation3];

        [(CKKSKeychainView *)self setResultsOfNextIncomingQueueOperationOperation:0];
      }

      [(CKKSKeychainView *)self setLastIncomingQueueOperation:v17];
      holdIncomingQueueOperation = [(CKKSKeychainView *)self holdIncomingQueueOperation];
      [(CKKSLocalResetOperation *)v17 addNullableDependency:holdIncomingQueueOperation];
    }
  }

LABEL_35:

  return v17;
}

- (void)_onqueuePokeKeyStateMachine
{
  queue = [(CKKSKeychainView *)self queue];
  dispatch_assert_queue_V2(queue);

  stateMachine = [(CKKSKeychainView *)self stateMachine];
  [stateMachine _onqueuePokeStateMachine];
}

- (void)keyStateMachineRequestProcess
{
  stateMachine = [(CKKSKeychainView *)self stateMachine];
  [stateMachine handleFlag:@"key_process_requested"];
}

- (id)rpcResetCloudKit:(id)kit reply:(id)reply
{
  kitCopy = kit;
  replyCopy = reply;
  v35 = 0;
  LOBYTE(reply) = [(CKKSKeychainView *)self waitUntilReadyForRPCForOperation:@"reset-cloudkit" fast:0 errorOnNoCloudKitAccount:1 errorOnPolicyMissing:1 error:&v35];
  v6 = v35;
  v26 = v6;
  if (reply)
  {
    objc_initWeak(&location, self);
    zoneName = [(CKKSKeychainView *)self zoneName];
    v8 = sub_100019104(@"ckksreset", zoneName);

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
    v29 = kitCopy;
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

    stateMachine = [(CKKSKeychainView *)self stateMachine];
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
    v21 = [stateMachine doWatchedStateMachineRPC:@"ckks-cloud-reset" sourceStates:v15 path:v20 transitionOp:v24 reply:replyCopy];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else
  {
    replyCopy[2](replyCopy, v6);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001CB98C;
    v33[3] = &unk_100343BA0;
    v34 = v26;
    v21 = [CKKSResultOperation named:@"fail" withBlockTakingSelf:v33];
    operationQueue = [(CKKSKeychainView *)self operationQueue];
    [operationQueue addOperation:v21];
  }

  return v21;
}

- (id)rpcResetLocal:(id)local reply:(id)reply
{
  localCopy = local;
  replyCopy = reply;
  objc_initWeak(&location, self);
  zoneName = [(CKKSKeychainView *)self zoneName];
  v8 = sub_100019104(@"ckksreset", zoneName);

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
  v20 = localCopy;
  v24 = v20;
  v21 = [OctagonStateTransitionOperation named:@"set-zones" intending:@"resetlocal" errorState:@"error" withBlockTakingSelf:v23];
  stateMachine = [(CKKSKeychainView *)self stateMachine];
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
  v18 = [stateMachine doWatchedStateMachineRPC:@"local-reset" sourceStates:v11 path:v17 transitionOp:v21 reply:replyCopy];

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
  stateMachine = [(CKKSKeychainView *)self stateMachine];
  stateConditions = [stateMachine stateConditions];

  return stateConditions;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  contextID = [operationDependencies contextID];
  stateMachine = [(CKKSKeychainView *)self stateMachine];
  currentState = [stateMachine currentState];
  operationDependencies2 = [(CKKSKeychainView *)self operationDependencies];
  views = [operationDependencies2 views];
  v11 = [NSString stringWithFormat:@"<%@: cid:%@ state:%@ views:%@ %p>", v4, contextID, currentState, views, self];

  return v11;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  contextID = [operationDependencies contextID];
  stateMachine = [(CKKSKeychainView *)self stateMachine];
  currentState = [stateMachine currentState];
  operationDependencies2 = [(CKKSKeychainView *)self operationDependencies];
  views = [operationDependencies2 views];
  v11 = [NSString stringWithFormat:@"<%@: cid:%@ state:%@ views:%@>", v4, contextID, currentState, views];

  return v11;
}

- (CKKSKeychainView)initWithContainer:(id)container contextID:(id)d activeAccount:(id)account accountTracker:(id)tracker lockStateTracker:(id)stateTracker reachabilityTracker:(id)reachabilityTracker savedTLKNotifier:(id)notifier cloudKitClassDependencies:(id)self0 personaAdapter:(id)self1 accountsAdapter:(id)self2 cuttlefishAdapter:(id)self3
{
  containerCopy = container;
  dCopy = d;
  accountCopy = account;
  trackerCopy = tracker;
  stateTrackerCopy = stateTracker;
  stateTrackerCopy2 = stateTracker;
  reachabilityTrackerCopy = reachabilityTracker;
  v96 = stateTrackerCopy2;
  reachabilityTrackerCopy2 = reachabilityTracker;
  notifierCopy = notifier;
  dependenciesCopy = dependencies;
  adapterCopy = adapter;
  accountsAdapterCopy = accountsAdapter;
  cuttlefishAdapterCopy = cuttlefishAdapter;
  v105.receiver = self;
  v105.super_class = CKKSKeychainView;
  v23 = [(CKKSKeychainView *)&v105 init];
  v24 = v23;
  if (v23)
  {
    v92 = notifierCopy;
    objc_storeStrong(&v23->_container, container);
    objc_storeStrong(&v24->_accountTracker, tracker);
    objc_storeStrong(&v24->_reachabilityTracker, reachabilityTrackerCopy);
    objc_storeStrong(&v24->_lockStateTracker, stateTrackerCopy);
    objc_storeStrong(&v24->_cloudKitClassDependencies, dependencies);
    objc_storeStrong(&v24->_personaAdapter, adapter);
    objc_storeStrong(&v24->_accountsAdapter, accountsAdapter);
    zoneName = v24->_zoneName;
    v24->_zoneName = @"all";

    *&v24->_halted = 0;
    v24->_accountStatus = 0;
    v26 = [(CKKSKeychainView *)v24 createAccountLoggedInDependency:@"CloudKit account logged in."];
    accountLoggedInDependency = v24->_accountLoggedInDependency;
    v24->_accountLoggedInDependency = v26;

    containerIdentifier = [containerCopy containerIdentifier];
    dCopy = [NSString stringWithFormat:@"CKKSQueue.%@.%@", containerIdentifier, dCopy];
    uTF8String = [dCopy UTF8String];
    v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v32 = dispatch_queue_create(uTF8String, v31);
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
    if ([dCopy isEqualToString:&stru_100348050])
    {
      dCopy2 = @"ckks";
    }

    else
    {
      dCopy2 = [NSString stringWithFormat:@"ckks-%@", dCopy];
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
    v54 = [(OctagonStateMachine *)v51 initWithName:dCopy2 states:v52 flags:v53 initialState:@"wait_for_ck_account_status" queue:v24->_queue stateEngine:v24 unexpectedStateErrorDomain:@"com.apple.ckks.state" lockStateTracker:v96 reachabilityTracker:reachabilityTrackerCopy2];
    stateMachine = v24->_stateMachine;
    v24->_stateMachine = v54;

    objc_initWeak(&location, v24);
    v87 = cuttlefishAdapterCopy;
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
    privateCloudDatabase = [(CKContainer *)v24->_container privateCloudDatabase];
    LOBYTE(v86) = 0;
    v72 = [(CKKSOperationDependencies *)v69 initWithViewStates:v70 contextID:dCopy activeAccount:accountCopy ckdatabase:privateCloudDatabase cloudKitClassDependencies:v24->_cloudKitClassDependencies ckoperationGroup:0 flagHandler:v24->_stateMachine overallLaunch:v66 accountStateTracker:trackerCopy lockStateTracker:v24->_lockStateTracker reachabilityTracker:reachabilityTrackerCopy2 peerProviders:&__NSArray0__struct databaseProvider:v24->_databaseProvider savedTLKNotifier:v92 personaAdapter:adapterCopy sendMetric:v86];
    operationDependencies = v24->_operationDependencies;
    v24->_operationDependencies = v72;

    v74 = [CKKSZoneChangeFetcher alloc];
    fetchRecordZoneChangesOperationClass = [dependenciesCopy fetchRecordZoneChangesOperationClass];
    reachabilityTracker = v24->_reachabilityTracker;
    altDSID = [accountCopy altDSID];
    v78 = [(CKKSZoneChangeFetcher *)v74 initWithContainer:containerCopy fetchClass:fetchRecordZoneChangesOperationClass reachabilityTracker:reachabilityTracker altDSID:altDSID sendMetric:0];
    zoneChangeFetcher = v24->_zoneChangeFetcher;
    v24->_zoneChangeFetcher = v78;

    v80 = +[OctagonAPSReceiver receiverForNamedDelegatePort:apsConnectionClass:](OctagonAPSReceiver, "receiverForNamedDelegatePort:apsConnectionClass:", @"com.apple.securityd.aps", [dependenciesCopy apsConnectionClass]);
    v81 = [v80 registerCKKSReceiver:v24->_zoneChangeFetcher contextID:dCopy];
    v82 = [AAFAnalyticsEventSecurity alloc];
    altDSID2 = [accountCopy altDSID];
    v84 = [v82 initWithCKKSMetrics:&__NSDictionary0__struct altDSID:altDSID2 eventName:kSecurityRTCEventNameLaunchStart testsAreEnabled:0 category:kSecurityRTCEventCategoryAccountDataAccessRecovery sendMetric:1];

    [v84 sendMetricWithResult:1 error:0];
    objc_storeStrong(&v24->_cuttlefishAdapter, cuttlefishAdapter);
    [(OctagonStateMachine *)v24->_stateMachine startOperation];

    objc_destroyWeak(&v101);
    objc_destroyWeak(&v103);
    objc_destroyWeak(&location);

    notifierCopy = v92;
    cuttlefishAdapterCopy = v87;
  }

  return v24;
}

- (void)modifyTLKSharesForExternallyManagedView:(id)view adding:(id)adding deleting:(id)deleting reply:(id)reply
{
  viewCopy = view;
  addingCopy = adding;
  deletingCopy = deleting;
  replyCopy = reply;
  v25 = 0;
  v14 = [(CKKSKeychainView *)self externalManagedViewForRPC:viewCopy error:&v25];
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
    v22 = addingCopy;
    v23 = deletingCopy;
    v16 = [OctagonStateTransitionGroupOperation named:@"external-tlk-rpc" intending:@"ready" errorState:@"ready" withBlockTakingSelf:v20];
    stateMachine = [(CKKSKeychainView *)self stateMachine];
    v18 = [NSSet setWithObject:@"ready"];
    [stateMachine doSimpleStateMachineRPC:@"external-tlkshare-modification-rpc" op:v16 sourceStates:v18 reply:replyCopy];

    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }

  else
  {
    v19 = sub_100019104(@"ckkszone", 0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *location = 138412546;
      *&location[4] = viewCopy;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Can't modify CloudKit zone for view %@: %@", location, 0x16u);
    }

    replyCopy[2](replyCopy, v15);
  }
}

- (void)loadKeys:(id)keys reply:(id)reply
{
  keysCopy = keys;
  replyCopy = reply;
  databaseProvider = [(CKKSKeychainView *)self databaseProvider];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001E76D4;
  v11[3] = &unk_100344DC8;
  v12 = keysCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = keysCopy;
  [databaseProvider dispatchSyncWithReadOnlySQLTransaction:v11];
}

- (void)fetchCloudKitExternallyManagedViewKeyHierarchy:(id)hierarchy reply:(id)reply
{
  hierarchyCopy = hierarchy;
  replyCopy = reply;
  v8 = [(CKKSKeychainView *)self rpcFetchBecause:@"se-api"];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001E7FA0;
  v13[3] = &unk_100344788;
  objc_copyWeak(&v17, &location);
  v9 = v8;
  v14 = v9;
  v10 = hierarchyCopy;
  v15 = v10;
  v11 = replyCopy;
  v16 = v11;
  v12 = [CKKSResultOperation named:@"rpc-response" withBlockTakingSelf:v13];
  [v12 addDependency:v9];
  [(CKKSKeychainView *)self scheduleOperation:v12];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)fetchExternallyManagedViewKeyHierarchy:(id)hierarchy forceFetch:(BOOL)fetch reply:(id)reply
{
  fetchCopy = fetch;
  hierarchyCopy = hierarchy;
  replyCopy = reply;
  v13 = 0;
  v10 = [(CKKSKeychainView *)self externalManagedViewForRPC:hierarchyCopy error:&v13];
  v11 = v13;
  if (v10)
  {
    if (fetchCopy)
    {
      [(CKKSKeychainView *)self fetchCloudKitExternallyManagedViewKeyHierarchy:v10 reply:replyCopy];
    }

    else
    {
      [(CKKSKeychainView *)self loadKeys:v10 reply:replyCopy];
    }
  }

  else
  {
    v12 = sub_100019104(@"ckkszone", 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = hierarchyCopy;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Can't fetch CloudKit zone for view %@: %@", buf, 0x16u);
    }

    (*(replyCopy + 2))(replyCopy, 0, 0, 0, v11);
  }
}

- (void)proposeTLKForExternallyManagedView:(id)view proposedTLK:(id)k wrappedOldTLK:(id)lK tlkShares:(id)shares reply:(id)reply
{
  viewCopy = view;
  kCopy = k;
  lKCopy = lK;
  sharesCopy = shares;
  replyCopy = reply;
  v31 = 0;
  v16 = [(CKKSKeychainView *)self externalManagedViewForRPC:viewCopy error:&v31];
  v17 = v31;
  if (v16)
  {
    objc_initWeak(location, self);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001E8560;
    v24[3] = &unk_100344760;
    objc_copyWeak(&v30, location);
    v25 = kCopy;
    v26 = v16;
    v27 = lKCopy;
    v18 = replyCopy;
    v29 = v18;
    v28 = sharesCopy;
    v19 = [OctagonStateTransitionGroupOperation named:@"external-tlk-rpc" intending:@"ready" errorState:@"ready" withBlockTakingSelf:v24];
    stateMachine = [(CKKSKeychainView *)self stateMachine];
    v21 = [NSSet setWithObject:@"ready"];
    [stateMachine doSimpleStateMachineRPC:@"external-tlk-rpc" op:v19 sourceStates:v21 reply:v18];

    objc_destroyWeak(&v30);
    objc_destroyWeak(location);
  }

  else
  {
    v22 = sub_100019104(@"ckkszone", 0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *location = 138412546;
      *&location[4] = viewCopy;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Can't propose TLKs for view %@: %@", location, 0x16u);
    }

    (*(replyCopy + 2))(replyCopy, v17);
  }
}

- (void)resetExternallyManagedCloudKitView:(id)view reply:(id)reply
{
  viewCopy = view;
  replyCopy = reply;
  v13 = 0;
  v8 = [(CKKSKeychainView *)self externalManagedViewForRPC:viewCopy error:&v13];
  v9 = v13;
  if (v8)
  {
    v10 = [NSSet setWithObject:viewCopy];
    v11 = [(CKKSKeychainView *)self rpcResetCloudKit:v10 reply:replyCopy];
  }

  else
  {
    v12 = sub_100019104(@"ckkszone", 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = viewCopy;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Can't reset CloudKit zone for view %@: %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v9);
  }
}

- (id)externalManagedViewForRPC:(id)c error:(id *)error
{
  cCopy = c;
  if (![(CKKSKeychainView *)self waitUntilReadyForRPCForOperation:@"external operation" fast:0 errorOnNoCloudKitAccount:1 errorOnPolicyMissing:1 error:error])
  {
    error = 0;
    goto LABEL_22;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  operationDependencies = [(CKKSKeychainView *)self operationDependencies];
  allExternalManagedViews = [operationDependencies allExternalManagedViews];

  v9 = [allExternalManagedViews countByEnumeratingWithState:&v20 objects:v24 count:16];
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
        objc_enumerationMutation(allExternalManagedViews);
      }

      v13 = *(*(&v20 + 1) + 8 * v12);
      zoneName = [v13 zoneName];
      v15 = [zoneName isEqualToString:cCopy];

      if (v15)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [allExternalManagedViews countByEnumeratingWithState:&v20 objects:v24 count:16];
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
      error = v16;
      goto LABEL_21;
    }

    if (!error)
    {
      goto LABEL_21;
    }

    cCopy = [NSString stringWithFormat:@"View is not externally managed: '%@'", cCopy];
    *error = [NSError errorWithDomain:@"CKKSErrorDomain" code:62 description:cCopy];
  }

  else
  {
LABEL_10:

LABEL_16:
    if (!error)
    {
      v16 = 0;
      goto LABEL_21;
    }

    cCopy2 = [NSString stringWithFormat:@"Unknown external view: '%@'", cCopy];
    *error = [NSError errorWithDomain:@"CKKSErrorDomain" code:11 description:cCopy2];

    v16 = 0;
  }

  error = 0;
LABEL_21:

LABEL_22:

  return error;
}

@end