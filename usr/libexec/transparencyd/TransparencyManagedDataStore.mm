@interface TransparencyManagedDataStore
+ (id)deserializeLoggableDatas:(id)a3 error:(id *)a4;
+ (id)deserializeNSError:(id)a3 error:(id *)a4;
+ (id)serializeLoggableDatas:(id)a3;
+ (id)serializeNSError:(id)a3;
+ (id)supportedClassTypes;
+ (void)cleanseError:(id *)a3;
- (BOOL)clearAllFailureEvents:(id)a3 error:(id *)a4;
- (BOOL)clearSelfFailureRelatedData:(id)a3 uri:(id)a4 error:(id *)a5;
- (BOOL)clearSelfValidationFollowups:(id)a3 uri:(id)a4 error:(id *)a5;
- (BOOL)clearState:(id *)a3;
- (BOOL)clearStateForApplication:(id)a3 error:(id *)a4;
- (BOOL)createFollowupTicket:(id)a3 uri:(id)a4 startTime:(id)a5 error:(id *)a6;
- (BOOL)deleteCompletedSingleQueryForUris:(id)a3 application:(id)a4 error:(id *)a5;
- (BOOL)deleteDownloadRecord:(unint64_t)a3 application:(id)a4 error:(id *)a5;
- (BOOL)deleteDownloadRecordById:(id)a3 error:(id *)a4;
- (BOOL)deleteDownloadRecords:(id)a3 error:(id *)a4;
- (BOOL)deleteSMTsWithSPKINotIn:(id)a3 application:(id)a4 error:(id *)a5;
- (BOOL)deleteSTHs:(id)a3 logBeginMsLessThan:(unint64_t)a4 error:(id *)a5;
- (BOOL)deleteServerRPCs:(id)a3 error:(id *)a4;
- (BOOL)deleteServerRpcById:(id)a3 error:(id *)a4;
- (BOOL)disableCacheHitsForUris:(id)a3 application:(id)a4 error:(id *)a5;
- (BOOL)drainDataStore;
- (BOOL)failRpcId:(id)a3 failure:(id)a4 error:(id *)a5;
- (BOOL)fetchBooleanPropertyOnMostRecentMapHead:(id)a3 logBeginMs:(unint64_t)a4 propertyName:(id)a5 error:(id *)a6;
- (BOOL)garbageCollectEntity:(id)a3 predicate:(id)a4 error:(id *)a5;
- (BOOL)garbageCollectEntityBatchDelete:(id)a3 predicate:(id)a4 error:(id *)a5;
- (BOOL)hasPendingDownloadForUUID:(id)a3 error:(id *)a4;
- (BOOL)hasPendingSingleQueryForUri:(id)a3 application:(id)a4 error:(id *)a5;
- (BOOL)ignoreFailureForResults:(id)a3 error:(id *)a4;
- (BOOL)ignoreFailureForUri:(id)a3 application:(id)a4 status:(unint64_t)a5 error:(id *)a6;
- (BOOL)initSelfState:(id)a3 uri:(id)a4 error:(id *)a5;
- (BOOL)logMetricsForApplication:(id)a3 error:(id *)a4;
- (BOOL)logRequestMetricsForApplication:(id)a3 error:(id *)a4;
- (BOOL)logSMTMetricsForApplication:(id)a3 error:(id *)a4;
- (BOOL)logSTHMetricsForApplication:(id)a3 error:(id *)a4;
- (BOOL)onMocLogVerificationMetricsForApplication:(id)a3 error:(id *)a4;
- (BOOL)onQueueRemoveFailures:(id)a3 error:(id *)a4;
- (BOOL)onQueueSetCachedPeerOptInState:(BOOL)a3 uris:(id)a4 application:(id)a5 error:(id *)a6;
- (BOOL)performAndWaitForDeviceId:(id)a3 application:(id)a4 error:(id *)a5 block:(id)a6;
- (BOOL)performAndWaitForDownloadId:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)performAndWaitForFailedEventId:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)performAndWaitForFetchId:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)performAndWaitForPeer:(id)a3 application:(id)a4 error:(id *)a5 block:(id)a6;
- (BOOL)performAndWaitForRequestId:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)performAndWaitForRpcId:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)performAndWaitForVerificationId:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)performBlockWithSelfState:(id)a3 uri:(id)a4 error:(id *)a5 block:(id)a6;
- (BOOL)performCheckWithNewestMap:(id)a3 logBeginMs:(unint64_t)a4 error:(id *)a5 block:(id)a6;
- (BOOL)performForPendingSMTs:(id)a3 uri:(id)a4 error:(id *)a5 batchSize:(unint64_t)a6 block:(id)a7;
- (BOOL)performForPendingVerfications:(id)a3 uri:(id)a4 responseOlderThan:(id)a5 error:(id *)a6 batchSize:(unint64_t)a7 block:(id)a8;
- (BOOL)persistAndRefaultObject:(id)a3 error:(id *)a4;
- (BOOL)persistAndRefaultObjects:(id)a3 error:(id *)a4;
- (BOOL)persistWithError:(id *)a3;
- (BOOL)populateExistingRequestsToLookupTable:(id *)a3;
- (BOOL)populateMissingLogHeadHashes:(id *)a3;
- (BOOL)resetPeersToPending:(id)a3 error:(id *)a4;
- (BOOL)resetPendingRequests:(id)a3 error:(id *)a4;
- (BOOL)resetVerificationsToPending:(id)a3 error:(id *)a4;
- (BOOL)setResponse:(id)a3 downloadId:(id)a4 error:(id *)a5;
- (BOOL)setResponseForRpcId:(id)a3 response:(id)a4 responseStatus:(id)a5 usedReversePush:(BOOL)a6 serverHint:(id)a7 error:(id *)a8;
- (BOOL)setSeenDate:(id)a3 uris:(id)a4 application:(id)a5 error:(id *)a6;
- (BOOL)shouldGarbageCollectSMH:(id)a3 application:(id)a4 logBeginMs:(unint64_t)a5 olderThanRevision:(unint64_t)a6 olderThanDate:(id)a7;
- (BOOL)shouldGarbageCollectSTH:(id)a3 application:(id)a4 logBeginMs:(unint64_t)a5 olderThanDate:(id)a6;
- (TransparencyManagedDataStore)initWithController:(id)a3 followup:(id)a4 logger:(id)a5;
- (TransparencyManagedDataStoreController)controller;
- (TransparencyManagedDataStoreProtocol)updateDelegate;
- (TransparencyPeerOverrides)peerOverridesStore;
- (TransparencyStaticKeyStore)staticKeyStore;
- (id)copyStatistics:(id *)a3;
- (id)createBatchQuery;
- (id)createBatchQuery:(id)a3 backgroundOpId:(id)a4 error:(id *)a5;
- (id)createDownloadRecord:(unint64_t)a3 moc:(id)a4 application:(id)a5;
- (id)createFailureEvent:(id)a3 application:(id)a4 optInServer:(id)a5;
- (id)createFetchRecord;
- (id)createFetchRecordForRequestData:(id)a3 request:(id)a4 error:(id *)a5;
- (id)createIDSKTVerification:(id)a3 application:(id)a4 accountKey:(id)a5 idsResponseTime:(id)a6 serverLoggableDatas:(id)a7 optedIn:(unint64_t)a8 type:(unint64_t)a9 syncedLoggableDatas:(id)a10 verificationId:(id)a11 error:(id *)a12;
- (id)createIDSKTVerification:(id)a3 application:(id)a4 onMoc:(id)a5 accountKey:(id)a6 idsResponseTime:(id)a7 serverLoggableDatas:(id)a8 optedIn:(unint64_t)a9 type:(unint64_t)a10 syncedLoggableDatas:(id)a11 verificationId:(id)a12 error:(id *)a13;
- (id)createIDSKTVerification:(id)a3 application:(id)a4 verificationInfo:(id)a5 type:(unint64_t)a6 syncedLoggableDatas:(id)a7 verificationId:(id)a8 error:(id *)a9;
- (id)createMapHead;
- (id)createMapHead:(id)a3 application:(id)a4 logBeginTime:(unint64_t)a5 logHeadHash:(id)a6 logType:(int64_t)a7 revision:(unint64_t)a8 populating:(BOOL)a9 gossip:(BOOL)a10;
- (id)createMutation:(id)a3 application:(id)a4 uri:(id)a5 mutationMs:(unint64_t)a6 spkiHash:(id)a7 receiptTime:(id)a8;
- (id)createPeerState:(id)a3 application:(id)a4 error:(id *)a5;
- (id)createRecordFromLoggableData:(id)a3 application:(id)a4;
- (id)createRequest;
- (id)createRequestWithUri:(id)a3 application:(id)a4 accountKey:(id)a5 serverData:(id)a6 syncedData:(id)a7 idsResponseTime:(id)a8 queryRequest:(id)a9 queryResponse:(id)a10 responseDate:(id)a11 type:(unint64_t)a12 clientId:(id)a13 error:(id *)a14;
- (id)createRequestWithUri:(id)a3 application:(id)a4 accountKey:(id)a5 serverData:(id)a6 syncedData:(id)a7 queryRequest:(id)a8 queryResponse:(id)a9 type:(unint64_t)a10 clientId:(id)a11 error:(id *)a12;
- (id)createSignedMutationTimestampsFailure;
- (id)createSignedTreeHeadFailure;
- (id)createSingleQuery;
- (id)createSingleQuery:(id)a3 backgroundOpId:(id)a4 error:(id *)a5;
- (id)createTreeHead;
- (id)createVerification:(id)a3 application:(id)a4 onMoc:(id)a5 verificationInfo:(id)a6 error:(id *)a7;
- (id)downloadRecords:(id *)a3;
- (id)failedHeadSignaturesWithRevisions:(id)a3 application:(id)a4;
- (id)fetchCompletedRequests:(id)a3 olderThan:(id)a4 error:(id *)a5;
- (id)fetchDownloadRecord:(unint64_t)a3 application:(id)a4 error:(id *)a5;
- (id)fetchDownloadRecordById:(id)a3 error:(id *)a4;
- (id)fetchFetchRecordById:(id)a3 error:(id *)a4;
- (id)fetchLatestSingleQueryByUri:(id)a3 application:(id)a4 error:(id *)a5;
- (id)fetchNumericPropertyOnMostRecentMapHead:(id)a3 logBeginMs:(unint64_t)a4 propertyName:(id)a5 error:(id *)a6;
- (id)fetchOrCreateVerification:(id)a3 application:(id)a4 verificationInfo:(id)a5 fetchNow:(BOOL)a6 error:(id *)a7;
- (id)fetchPeer:(id)a3 application:(id)a4 error:(id *)a5;
- (id)fetchRecentFailureEvents:(id)a3 fetchLimit:(unint64_t)a4 error:(id *)a5;
- (id)fetchRequestForUUID:(id)a3 error:(id *)a4;
- (id)fetchRequestWithUri:(id)a3 application:(id)a4 accountKey:(id)a5 loggableDatas:(id)a6 youngerThan:(id)a7 error:(id *)a8;
- (id)fetchRequestsForURI:(id)a3 error:(id *)a4;
- (id)fetchServerRpcById:(id)a3 error:(id *)a4;
- (id)getLatestSuccessfulBatchQueryForUri:(id)a3 application:(id)a4 requestYoungerThan:(id)a5 error:(id *)a6;
- (id)getLatestSuccessfulSingleQueryForUri:(id)a3 application:(id)a4 requestYoungerThan:(id)a5 error:(id *)a6;
- (id)getOptInStatus:(id)a3 application:(id)a4 error:(id *)a5;
- (id)getPendingSmtUris:(id)a3 fetchLimit:(unint64_t)a4 error:(id *)a5;
- (id)getTapToRadarDate:(id)a3;
- (id)insertCompletedSingleQuery:(id)a3 application:(id)a4 request:(id)a5 response:(id)a6 traceUUID:(id)a7 responseStatus:(int64_t)a8 serverHint:(id)a9;
- (id)latestConsistencyVerifiedTreeHeadRevision:(id)a3 logBeginMs:(unint64_t)a4 error:(id *)a5;
- (id)latestConsistencyVerifiedTreeHeadSTH:(id)a3 logBeginMs:(unint64_t)a4 error:(id *)a5;
- (id)onMocFetchVerificationForVerificationId:(id)a3 error:(id *)a4;
- (id)onMocSetPendingResultForVerification:(id)a3;
- (id)peerVerificationIdForUri:(id)a3 application:(id)a4 verificationInfo:(id)a5 newerThan:(id)a6 error:(id *)a7;
- (id)pendingVerificationURIs:(id)a3 fetchLimit:(unint64_t)a4 error:(id *)a5;
- (id)requestFailures:(id *)a3;
- (id)requestIds:(id *)a3;
- (id)requests:(id *)a3;
- (id)retainContext;
- (id)signedMutationTimestamps:(id *)a3;
- (id)signedMutationTimestampsFailures:(id *)a3;
- (id)signedTreeHeadFailures:(id *)a3;
- (id)treeHeads:(id *)a3;
- (id)treeHeadsForApplication:(id)a3 error:(id *)a4;
- (id)unverifiedRevisions:(id)a3 isMapHead:(BOOL)a4 inclusion:(BOOL)a5 logBeginMs:(unint64_t)a6 error:(id *)a7;
- (id)verifierResultForPeer:(id)a3 application:(id)a4;
- (unint64_t)checkFollowupTicket:(id)a3 uri:(id)a4 checkTime:(id)a5 error:(id *)a6;
- (unint64_t)countOutstandingRequestsForApplication:(id)a3 error:(id *)a4;
- (unint64_t)countOutstandingSMHsForApplication:(id)a3 error:(id *)a4;
- (unint64_t)countOutstandingSMTsForApplication:(id)a3 error:(id *)a4;
- (unint64_t)countOutstandingSTHsForApplication:(id)a3 error:(id *)a4;
- (unint64_t)countOutstandingVerificationsForApplication:(id)a3 error:(id *)a4;
- (unint64_t)countTotalRequestsForApplication:(id)a3 error:(id *)a4;
- (unint64_t)countTotalSMTsForApplication:(id)a3 error:(id *)a4;
- (unint64_t)countTotalSTHsForApplication:(id)a3 error:(id *)a4;
- (unint64_t)countTotalVerificationsForApplication:(id)a3 error:(id *)a4;
- (unint64_t)newestMapRevision:(id)a3 logBeginMs:(unint64_t)a4 error:(id *)a5;
- (unint64_t)onMocCountEntity:(id)a3 predicate:(id)a4 error:(id *)a5;
- (unint64_t)requestCount:(id *)a3;
- (unint64_t)requestFailureCount:(id *)a3;
- (unint64_t)signedMutationTimestampCount:(id *)a3;
- (unint64_t)signedMutationTimestampsFailureCount:(id *)a3;
- (unint64_t)signedTreeHeadFailureCount:(id *)a3;
- (unint64_t)treeHeadCount:(id *)a3;
- (void)clearFailureEvents:(id)a3 completionBlock:(id)a4;
- (void)clearPeerState:(id)a3 uris:(id)a4 error:(id *)a5;
- (void)createIDSVerificationID:(id)a3 verification:(id)a4;
- (void)createKTRequestID:(id)a3 request:(id)a4;
- (void)createSelfValidationState:(id)a3 uri:(id)a4 error:(id *)a5;
- (void)deleteNonRecentVerificationsForApplication:(id)a3 error:(id *)a4;
- (void)deleteObject:(id)a3;
- (void)deleteObjectSet:(id)a3;
- (void)errorsForFailedEvents:(id)a3 completionBlock:(id)a4;
- (void)failHeadDownload:(id)a3 failure:(id)a4 logClient:(id)a5;
- (void)failHeadDownloadRecord:(id)a3 failure:(id)a4 error:(id *)a5;
- (void)fetchSelfValidationState:(id)a3 uri:(id)a4 error:(id *)a5;
- (void)garbageCollectRequests:(id)a3 olderThan:(id)a4 error:(id *)a5;
- (void)garbageCollectSMHs:(id)a3 logBeginMs:(unint64_t)a4 olderThanRevision:(unint64_t)a5 olderThanDate:(id)a6 error:(id *)a7;
- (void)garbageCollectSMTs:(id *)a3;
- (void)garbageCollectSTHs:(id)a3 logBeginMs:(unint64_t)a4 olderThanDate:(id)a5 error:(id *)a6;
- (void)garbageCollectServerRPCs:(id *)a3;
- (void)garbageCollectVerifications:(id *)a3;
- (void)onMocSetMapHead:(id)a3 inclusionResult:(unint64_t)a4 inclusionError:(id)a5;
- (void)onMocSetMapHead:(id)a3 mmdResult:(unint64_t)a4 mmdError:(id)a5;
- (void)onMocSetMapHead:(id)a3 signatureResult:(unint64_t)a4 signatureError:(id)a5;
- (void)peers:(id)a3;
- (void)performAndWaitForLatestSelfRequest:(id)a3 accountKey:(id)a4 block:(id)a5;
- (void)performBlock:(id)a3;
- (void)performBlockAndWait:(id)a3;
- (void)performBlockAndWaitWithMoc:(id)a3;
- (void)performForPendingSTHs:(id)a3 olderThan:(id)a4 type:(unint64_t)a5 error:(id *)a6 block:(id)a7;
- (void)performForRequestsWithPendingResponses:(id)a3 error:(id *)a4 block:(id)a5;
- (void)performForSMHsWithUnverifiedMMD:(id)a3 error:(id *)a4 block:(id)a5;
- (void)performForSMTsWithUnverifiedSignature:(id)a3 error:(id *)a4 block:(id)a5;
- (void)performForSTHsWithUnverifiedSignature:(id)a3 error:(id *)a4 block:(id)a5;
- (void)performOnBatchesOfEntity:(id)a3 predicate:(id)a4 enforceMax:(BOOL)a5 error:(id *)a6 block:(id)a7;
- (void)recalculateVerifierResultForPeer:(id)a3 application:(id)a4 after:(double)a5;
- (void)refaultObject:(id)a3;
- (void)refaultObjects:(id)a3;
- (void)releaseContext;
- (void)removeFailuresOnOptIn:(id)a3;
- (void)reportCoreDataPersistEventForLocation:(id)a3 underlyingError:(id)a4;
- (void)reportFailedRevisions:(id)a3 failure:(id)a4 downloadType:(unint64_t)a5 application:(id)a6;
- (void)saveAndRefaultObject:(id)a3;
- (void)setCachedPeerOptInState:(BOOL)a3 uris:(id)a4 application:(id)a5;
- (void)storeTTR:(id)a3 withType:(id)a4;
- (void)updateIDSCacheWithResults:(id)a3;
@end

@implementation TransparencyManagedDataStore

- (id)createPeerState:(id)a3 application:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(TransparencyManagedDataStore *)self context];
  v11 = [NSEntityDescription insertNewObjectForEntityForName:@"PeerState" inManagedObjectContext:v10];

  [v11 setUri:v9];
  [v11 setApplication:v8];

  if ([(TransparencyManagedDataStore *)self persistWithError:a5])
  {
    v12 = v11;
  }

  else
  {
    [objc_opt_class() cleanseError:a5];
    v12 = 0;
  }

  return v12;
}

- (id)fetchPeer:(id)a3 application:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [NSFetchRequest fetchRequestWithEntityName:@"PeerState"];
  v11 = [NSPredicate predicateWithFormat:@"uri = %@ && application = %@", v9, v8];

  [v10 setPredicate:v11];
  v12 = [(TransparencyManagedDataStore *)self context];
  v13 = [v12 executeFetchRequest:v10 error:a5];

  [objc_opt_class() cleanseError:a5];
  if (v13 && [v13 count])
  {
    v14 = [v13 objectAtIndexedSubscript:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)performAndWaitForPeer:(id)a3 application:(id)a4 error:(id *)a5 block:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10001EC30;
  v29 = sub_10001EC40;
  v30 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001EC48;
  v19[3] = &unk_100317DB8;
  v19[4] = self;
  v13 = v10;
  v20 = v13;
  v14 = v11;
  v21 = v14;
  v23 = &v25;
  v15 = v12;
  v22 = v15;
  v24 = &v31;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v19];
  if (a5)
  {
    v16 = v26[5];
    if (v16)
    {
      *a5 = v16;
    }
  }

  v17 = *(v32 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v17;
}

- (BOOL)resetPeersToPending:(id)a3 error:(id *)a4
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10001EC30;
  v20 = sub_10001EC40;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001EF18;
  v12[3] = &unk_100317DE0;
  v13 = self;
  v15 = &v16;
  v5 = a3;
  v14 = v5;
  [(TransparencyManagedDataStore *)v13 performBlockAndWait:v12];
  v6 = v17;
  if (a4)
  {
    v7 = v17[5];
    if (v7)
    {
      *a4 = v7;
      v6 = v17;
    }
  }

  v8 = v6[5];
  if (v8)
  {
    if (qword_10038BC10 != -1)
    {
      sub_100247918();
    }

    v9 = qword_10038BC18;
    if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_ERROR))
    {
      v10 = v17[5];
      *buf = 138412290;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to reset peer states to pending: %@", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v16, 8);
  return v8 == 0;
}

- (void)peers:(id)a3
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_10001EC30;
  v8[4] = sub_10001EC40;
  v9 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001F298;
  v4[3] = &unk_100317E48;
  v5 = self;
  v7 = v8;
  v3 = a3;
  v6 = v3;
  [(TransparencyManagedDataStore *)v5 performBlockAndWait:v4];

  _Block_object_dispose(v8, 8);
}

- (BOOL)setSeenDate:(id)a3 uris:(id)a4 application:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10001EC30;
  v31 = sub_10001EC40;
  v32 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10001F708;
  v22[3] = &unk_100317E90;
  v22[4] = self;
  v26 = &v27;
  v13 = v11;
  v23 = v13;
  v14 = v12;
  v24 = v14;
  v15 = v10;
  v25 = v15;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v22];
  v16 = v28;
  if (a6)
  {
    v17 = v28[5];
    if (v17)
    {
      *a6 = v17;
      v16 = v28;
    }
  }

  v18 = v16[5];
  if (v18)
  {
    if (qword_10038BC10 != -1)
    {
      sub_100247968();
    }

    v19 = qword_10038BC18;
    if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_ERROR))
    {
      v20 = v28[5];
      *buf = 138412290;
      v34 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "failed to update seen date: %@", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v27, 8);
  return v18 == 0;
}

- (void)updateIDSCacheWithResults:(id)a3
{
  v4 = a3;
  v37 = +[NSMutableArray array];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v44 objects:v61 count:16];
  if (v5)
  {
    v7 = *v45;
    *&v6 = 141558786;
    v35 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v44 + 1) + 8 * v8);
        v10 = [v9 uri];
        v11 = v10 == 0;

        if (!v11)
        {
          v12 = [v9 uri];
          [v37 addObject:v12];

          *v57 = 0;
          *&v57[8] = v57;
          *&v57[16] = 0x3032000000;
          v58 = sub_10001EC30;
          v59 = sub_10001EC40;
          v60 = 0;
          v13 = [v9 uri];
          v14 = [v9 application];
          v16 = (*&v57[8] + 40);
          v15 = *(*&v57[8] + 40);
          v42[6] = v57;
          v43 = v15;
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_10001FF70;
          v42[3] = &unk_100317ED8;
          v42[4] = v9;
          v42[5] = self;
          [(TransparencyManagedDataStore *)self performAndWaitForPeer:v13 application:v14 error:&v43 block:v42];
          objc_storeStrong(v16, v43);

          if (*(*&v57[8] + 40))
          {
            if (qword_10038BC10 != -1)
            {
              sub_1002479B8();
            }

            v17 = qword_10038BC18;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = [v9 uri];
              [v9 uiStatus];
              v19 = KTUIStatusGetString();
              v20 = *(*&v57[8] + 40);
              *buf = v35;
              v50 = 1752392040;
              v51 = 2112;
              v52 = v18;
              v53 = 2114;
              v54 = v19;
              v55 = 2112;
              v56 = v20;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "failed to update peer state for %{mask.hash}@ with %{public}@ sent to IDS: %@", buf, 0x2Au);
            }
          }

          _Block_object_dispose(v57, 8);
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v44 objects:v61 count:16];
    }

    while (v5);
  }

  if (qword_10038BC10 != -1)
  {
    sub_1002479E0();
  }

  v21 = qword_10038BC18;
  if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = [v37 count];
    v24 = [v37 componentsJoinedByString:{@", "}];
    *v57 = 134218498;
    *&v57[4] = v23;
    *&v57[12] = 2160;
    *&v57[14] = 1752392040;
    *&v57[22] = 2112;
    v58 = v24;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "calling IDS with %lu results for %{mask.hash}.@", v57, 0x20u);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = obj;
  v26 = [v25 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v26)
  {
    v27 = *v39;
    do
    {
      v28 = 0;
      do
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v38 + 1) + 8 * v28);
        if (qword_10038BC10 != -1)
        {
          sub_100247A08();
        }

        v30 = qword_10038BC18;
        if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v30;
          [v29 uiStatus];
          v32 = KTUIStatusGetString();
          v33 = [v29 uri];
          *v57 = 138543874;
          *&v57[4] = v32;
          *&v57[12] = 2160;
          *&v57[14] = 1752392040;
          *&v57[22] = 2112;
          v58 = v33;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "calling IDS with UIStatus %{public}@ for uri %{mask.hash}@", v57, 0x20u);
        }

        v28 = v28 + 1;
      }

      while (v26 != v28);
      v26 = [v25 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v26);
  }

  v34 = [(TransparencyManagedDataStore *)self updateDelegate];
  [v34 peerVerificationUpdated:v25];
}

- (BOOL)ignoreFailureForResults:(id)a3 error:(id *)a4
{
  v6 = a3;
  v26 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v28;
    v25 = 1;
    *&v9 = 141558274;
    v24 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v27 + 1) + 8 * v12);
        v14 = [v13 uri];
        v15 = [v13 application];
        v16 = -[TransparencyManagedDataStore ignoreFailureForUri:application:status:error:](self, "ignoreFailureForUri:application:status:error:", v14, v15, [v13 uiStatus], a4);

        if (v16)
        {
          if (qword_10038BC10 != -1)
          {
            sub_100247A30();
          }

          v17 = qword_10038BC18;
          if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_INFO))
          {
            v18 = v17;
            v19 = [v13 uri];
            *buf = v24;
            v32 = 1752392040;
            v33 = 2112;
            v34 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "ignoreFailure for %{mask.hash}@, will update IDS cache", buf, 0x16u);
          }

          v20 = [v13 uri];
          v21 = [v13 application];
          v22 = [(TransparencyManagedDataStore *)self verifierResultForPeer:v20 application:v21];
          [v26 addObject:v22];
        }

        else
        {
          v25 = 0;
        }

        [v13 setSentToIDS:1];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v10);
  }

  else
  {
    v25 = 1;
  }

  [(TransparencyManagedDataStore *)self updateIDSCacheWithResults:v26];
  return v25 & 1;
}

- (BOOL)ignoreFailureForUri:(id)a3 application:(id)a4 status:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10001EC30;
  v28 = sub_10001EC40;
  v29 = 0;
  v22 = a5;
  obj = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002062C;
  v18[3] = &unk_100317FA0;
  v18[4] = self;
  v11 = a4;
  v19 = v11;
  v12 = v10;
  v20 = v12;
  v21 = &v24;
  v13 = [(TransparencyManagedDataStore *)self performAndWaitForPeer:v12 application:v11 error:&obj block:v18];
  objc_storeStrong(&v29, obj);
  if (!v13)
  {
    if (qword_10038BC10 != -1)
    {
      sub_100247A58();
    }

    v14 = qword_10038BC18;
    if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_ERROR))
    {
      v15 = v25[5];
      *buf = 138544130;
      v31 = v11;
      v32 = 2160;
      v33 = 1752392040;
      v34 = 2112;
      v35 = v12;
      v36 = 2112;
      v37 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "unable to ignore error for application=%{public}@ uri=%{mask.hash}@: %@", buf, 0x2Au);
    }

    if (a6)
    {
      v16 = v25[5];
      if (v16)
      {
        *a6 = v16;
      }
    }
  }

  _Block_object_dispose(&v24, 8);
  return v13;
}

- (id)getOptInStatus:(id)a3 application:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10001EC30;
  v17 = sub_10001EC40;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000209D8;
  v12[3] = &unk_100317FE8;
  v12[4] = &v13;
  [(TransparencyManagedDataStore *)self performAndWaitForPeer:v8 application:v9 error:a5 block:v12];
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (id)verifierResultForPeer:(id)a3 application:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10001EC30;
  v25 = sub_10001EC40;
  v26 = [[KTVerifierResult alloc] initWithUri:v6 application:v7];
  v19 = &v21;
  v20 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100020C28;
  v16 = &unk_100318030;
  v17 = self;
  v8 = v6;
  v18 = v8;
  v9 = [(TransparencyManagedDataStore *)self performAndWaitForPeer:v8 application:v7 error:&v20 block:&v13];
  v10 = v20;
  if ((v9 & 1) == 0)
  {
    [v22[5] setFailure:{v10, v13, v14, v15, v16, v17}];
  }

  v11 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v11;
}

- (void)recalculateVerifierResultForPeer:(id)a3 application:(id)a4 after:(double)a5
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  v10 = dispatch_time(0, (a5 * 1000000000.0));
  v11 = [(TransparencyManagedDataStore *)self peerQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100020FC4;
  v14[3] = &unk_1003174D8;
  objc_copyWeak(&v17, &location);
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  dispatch_after(v10, v11, v14);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (id)onMocSetPendingResultForVerification:(id)a3
{
  v4 = a3;
  v5 = [v4 uri];
  v6 = [v4 application];
  v7 = [[KTVerifierResult alloc] initPendingForUri:v5 application:v6];
  v8 = [v4 serverLoggableDatas];
  v9 = [v8 loggableDatas];
  [v7 setLoggableDatas:v9];

  v10 = [v4 accountKey];

  if (v10)
  {
    v11 = [v4 accountKey];
    v12 = [KTAccountPublicID ktAccountPublicIDWithPublicKeyInfo:v11 error:0];
    [v7 setPublicID:v12];
  }

  v13 = [v4 peerState];
  v14 = [(TransparencyManagedDataStore *)self staticKeyStore];
  v15 = +[NSDate now];
  [v13 updateResultWithStaticKey:v7 staticKeyStore:v14 forDate:v15];

  v16 = [v7 uiStatus];
  if (v16 != [v13 lastIDSCacheUIStatus])
  {
    if (qword_10038BC10 != -1)
    {
      sub_100247ABC();
    }

    v17 = qword_10038BC18;
    if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      *buf = 134218754;
      v24 = [v13 lastIDSCacheUIStatus];
      v25 = 2048;
      v26 = [v7 uiStatus];
      v27 = 2160;
      v28 = 1752392040;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "verifierResultForPeer cached UI status changed %lld->%llu for %{mask.hash}@, will update IDS cache", buf, 0x2Au);
    }

    v22 = v7;
    v19 = [NSArray arrayWithObjects:&v22 count:1];
    [(TransparencyManagedDataStore *)self updateIDSCacheWithResults:v19];

    [v7 setSentToIDS:1];
  }

  v20 = [(TransparencyManagedDataStore *)self peerOverridesStore];
  [v20 applyPeerOverrides:v7 peer:v13];

  [(TransparencyManagedDataStore *)self persistAndRefaultObject:v13 error:0];

  return v7;
}

- (void)clearPeerState:(id)a3 uris:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9 && [v9 count])
  {
    if (qword_10038BC10 != -1)
    {
      sub_100247AD0();
    }

    v11 = qword_10038BC18;
    if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_DEBUG))
    {
      v12 = v11;
      v13 = [v10 componentsJoinedByString:{@", "}];
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Clearing peer state for %@ for %@", buf, 0x16u);
    }

    [NSPredicate predicateWithFormat:@"application = %@ && uri IN %@", v8, v10];
  }

  else
  {
    if (qword_10038BC10 != -1)
    {
      sub_100247AE4();
    }

    v14 = qword_10038BC18;
    if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Clearing peer state for %@", buf, 0xCu);
    }

    [NSPredicate predicateWithFormat:@"application = %@", v8, v16];
  }
  v15 = ;
  if ([(TransparencyManagedDataStore *)self garbageCollectEntity:@"PeerState" predicate:v15 error:a5]&& [(TransparencyManagedDataStore *)self garbageCollectEntity:@"IDSKTVerification" predicate:v15 error:a5])
  {
    [(TransparencyManagedDataStore *)self garbageCollectEntity:@"RPCSingleQuery" predicate:v15 error:a5];
  }
}

- (void)setCachedPeerOptInState:(BOOL)a3 uris:(id)a4 application:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(TransparencyManagedDataStore *)self peerQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000216D0;
  v13[3] = &unk_1003180B8;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)removeFailuresOnOptIn:(id)a3
{
  v4 = a3;
  v5 = [(TransparencyManagedDataStore *)self peerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002179C;
  v7[3] = &unk_1003180E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (BOOL)onQueueRemoveFailures:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (qword_10038BC10 != -1)
  {
    sub_100247AF8();
  }

  v7 = qword_10038BC18;
  if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "removing all saved failures for %{public}@ following opt-in", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v21 = 0x3032000000;
  v22 = sub_10001EC30;
  v23 = sub_10001EC40;
  v24 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100021A38;
  v15[3] = &unk_100317DE0;
  v15[4] = self;
  p_buf = &buf;
  v8 = v6;
  v16 = v8;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v15];
  v9 = *(&buf + 1);
  if (a4)
  {
    v10 = *(*(&buf + 1) + 40);
    if (v10)
    {
      *a4 = v10;
      v9 = *(&buf + 1);
    }
  }

  v11 = *(v9 + 40);
  if (v11)
  {
    if (qword_10038BC10 != -1)
    {
      sub_100247B0C();
    }

    v12 = qword_10038BC18;
    if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(&buf + 1) + 40);
      *v18 = 138412290;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "failed to remove failures after opt-in: %@", v18, 0xCu);
    }
  }

  _Block_object_dispose(&buf, 8);
  return v11 == 0;
}

- (BOOL)onQueueSetCachedPeerOptInState:(BOOL)a3 uris:(id)a4 application:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [(TransparencyManagedDataStore *)self peerQueue];
  dispatch_assert_queue_V2(v12);

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_10001EC30;
  v40 = sub_10001EC40;
  v41 = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100021FDC;
  v31[3] = &unk_100318168;
  v31[4] = self;
  v34 = &v36;
  v13 = v10;
  v32 = v13;
  v14 = v11;
  v33 = v14;
  v35 = a3;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v31];
  v15 = v37;
  if (a6)
  {
    v16 = v37[5];
    if (v16)
    {
      *a6 = v16;
      v15 = v37;
    }
  }

  v17 = v15[5];
  if (v17)
  {
    if (qword_10038BC10 != -1)
    {
      sub_100247B34();
    }

    v18 = qword_10038BC18;
    if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_ERROR))
    {
      v19 = v37[5];
      *buf = 138412290;
      v44 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "failed to update opt-in state: %@", buf, 0xCu);
    }
  }

  else
  {
    v20 = +[NSMutableArray array];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v21 = v13;
    v22 = [v21 countByEnumeratingWithState:&v27 objects:v42 count:16];
    if (v22)
    {
      v23 = *v28;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = [(TransparencyManagedDataStore *)self verifierResultForPeer:*(*(&v27 + 1) + 8 * i) application:v14, v27];
          if (v25)
          {
            [v20 addObject:v25];
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v27 objects:v42 count:16];
      }

      while (v22);
    }

    [(TransparencyManagedDataStore *)self updateIDSCacheWithResults:v20];
    [(TransparencyManagedDataStore *)self disableCacheHitsForUris:v21 application:v14 error:0];
    [(TransparencyManagedDataStore *)self deleteCompletedSingleQueryForUris:v21 application:v14 error:0];
  }

  _Block_object_dispose(&v36, 8);
  return v17 == 0;
}

- (id)createMapHead
{
  v2 = [(TransparencyManagedDataStore *)self context];
  v3 = [NSEntityDescription insertNewObjectForEntityForName:@"KTTreeHead" inManagedObjectContext:v2];

  return v3;
}

- (id)createMapHead:(id)a3 application:(id)a4 logBeginTime:(unint64_t)a5 logHeadHash:(id)a6 logType:(int64_t)a7 revision:(unint64_t)a8 populating:(BOOL)a9 gossip:(BOOL)a10
{
  v16 = a6;
  v17 = a4;
  v18 = a3;
  v19 = [(TransparencyManagedDataStore *)self createTreeHead];
  [v19 setSth:v18];

  [v19 setIsMapHead:1];
  [v19 setApplication:v17];

  [v19 setUnsigned:"logBeginTime" value:a5];
  [v19 setLogHeadHash:v16];

  [v19 setLogType:a7];
  [v19 setUnsigned:"revision" value:a8];
  [v19 setPopulating:a9];
  [v19 setGossip:a10];
  [v19 setReceiptTime:CFAbsoluteTimeGetCurrent()];
  [v19 setInclusionVerified:2];
  [v19 setConsistencyVerified:1];

  return v19;
}

- (BOOL)fetchBooleanPropertyOnMostRecentMapHead:(id)a3 logBeginMs:(unint64_t)a4 propertyName:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1001A4620;
  v27 = sub_1001A4630;
  v28 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001A4638;
  v17[3] = &unk_100325E60;
  v17[4] = self;
  v20 = &v23;
  v12 = v10;
  v18 = v12;
  v22 = a4;
  v13 = v11;
  v19 = v13;
  v21 = &v29;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v17];
  if (a6)
  {
    v14 = v24[5];
    if (v14)
    {
      *a6 = v14;
    }
  }

  v15 = *(v30 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

- (id)fetchNumericPropertyOnMostRecentMapHead:(id)a3 logBeginMs:(unint64_t)a4 propertyName:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_1001A4620;
  v33 = sub_1001A4630;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1001A4620;
  v27 = sub_1001A4630;
  v28 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001A4E50;
  v17[3] = &unk_100325E60;
  v17[4] = self;
  v20 = &v23;
  v12 = v10;
  v18 = v12;
  v22 = a4;
  v13 = v11;
  v19 = v13;
  v21 = &v29;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v17];
  if (a6)
  {
    v14 = v24[5];
    if (v14)
    {
      *a6 = v14;
    }
  }

  v15 = v30[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

- (unint64_t)newestMapRevision:(id)a3 logBeginMs:(unint64_t)a4 error:(id *)a5
{
  v13 = 0;
  v6 = [(TransparencyManagedDataStore *)self fetchNumericPropertyOnMostRecentMapHead:a3 logBeginMs:a4 propertyName:@"revision" error:&v13];
  v7 = v13;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = [v6 unsignedLongLongValue];
  }

  else
  {
    v10 = 0;
    if (a5 && v7)
    {
      v11 = v7;
      v10 = 0;
      *a5 = v8;
    }
  }

  return v10;
}

- (BOOL)performCheckWithNewestMap:(id)a3 logBeginMs:(unint64_t)a4 error:(id *)a5 block:(id)a6
{
  v10 = a3;
  v11 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1001A4620;
  v31 = sub_1001A4630;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001A5684;
  v17[3] = &unk_100325F28;
  v17[4] = self;
  v20 = &v27;
  v12 = v10;
  v21 = &v23;
  v22 = a4;
  v18 = v12;
  v13 = v11;
  v19 = v13;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v17];
  if (a5)
  {
    v14 = v28[5];
    if (v14)
    {
      *a5 = v14;
    }
  }

  v15 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v15;
}

- (void)garbageCollectSMHs:(id)a3 logBeginMs:(unint64_t)a4 olderThanRevision:(unint64_t)a5 olderThanDate:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a6;
  if (qword_10039C730 != -1)
  {
    sub_10025AFEC();
  }

  v14 = qword_10039C738;
  if (os_log_type_enabled(qword_10039C738, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v21 = a5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "garbage collecting map heads earlier than revision %llu", buf, 0xCu);
  }

  v15 = [NSPredicate predicateWithFormat:@"isMapHead == YES && application == %@ && (revision != %llu && receiptTime < %@ || logBeginTime < %llu || logBeginTime == %llu && signatureVerified != %d && inclusionVerified != %d && mmdVerified != %d && revision < %llu)", v12, a5, v13, a4, a4, 2, 2, 2, a5];
  v19 = 0;
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTTreeHead" predicate:v15 error:&v19];
  v16 = v19;
  v17 = v16;
  if (a7 && v16)
  {
    v18 = v16;
    *a7 = v17;
  }
}

- (BOOL)shouldGarbageCollectSMH:(id)a3 application:(id)a4 logBeginMs:(unint64_t)a5 olderThanRevision:(unint64_t)a6 olderThanDate:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  if ([v11 isMapHead])
  {
    v14 = [NSPredicate predicateWithFormat:@"isMapHead == YES && application == %@ && (revision != %llu && receiptTime < %@ || logBeginTime < %llu || logBeginTime == %llu && signatureVerified != %d && inclusionVerified != %d && mmdVerified != %d && revision < %llu)", v12, a6, v13, a5, a5, 2, 2, 2, a6];
    v15 = [v14 evaluateWithObject:v11];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)onMocSetMapHead:(id)a3 signatureResult:(unint64_t)a4 signatureError:(id)a5
{
  v13 = a3;
  v8 = a5;
  [v13 setUnsigned:"signatureVerified" value:a4];
  if (v8)
  {
    v9 = [(TransparencyManagedDataStore *)self createSignedTreeHeadFailure];
    [v9 setErrorCode:{objc_msgSend(v8, "code")}];
    v10 = [v8 domain];
    [v9 setErrorDomain:v10];

    [v9 setSth:v13];
    [v9 setVerificationType:0];
  }

  if (a4 == 1 && [v13 inclusionVerified] == 1 && objc_msgSend(v13, "mmdVerified") == 1)
  {
    v11 = [(TransparencyManagedDataStore *)self updateDelegate];
    v12 = [v13 application];
    [v11 mapHeadUpdated:v12 populating:{objc_msgSend(v13, "populating")}];
  }
}

- (void)onMocSetMapHead:(id)a3 mmdResult:(unint64_t)a4 mmdError:(id)a5
{
  v14 = a3;
  v8 = a5;
  [v14 setUnsigned:"mmdVerified" value:a4];
  if (v8)
  {
    v9 = [(TransparencyManagedDataStore *)self createSignedTreeHeadFailure];
    [v9 setErrorCode:{objc_msgSend(v8, "code")}];
    v10 = [v8 domain];
    [v9 setErrorDomain:v10];

    [v9 setSth:v14];
    [v9 setVerificationType:3];
  }

  if ([v14 signatureVerified] == 1)
  {
    v11 = [v14 inclusionVerified];
    if (a4 == 1 && v11 == 1)
    {
      v12 = [(TransparencyManagedDataStore *)self updateDelegate];
      v13 = [v14 application];
      [v12 mapHeadUpdated:v13 populating:{objc_msgSend(v14, "populating")}];
    }
  }
}

- (void)onMocSetMapHead:(id)a3 inclusionResult:(unint64_t)a4 inclusionError:(id)a5
{
  v14 = a3;
  v8 = a5;
  [v14 setUnsigned:"inclusionVerified" value:a4];
  if (v8)
  {
    v9 = [(TransparencyManagedDataStore *)self createSignedTreeHeadFailure];
    [v9 setErrorCode:{objc_msgSend(v8, "code")}];
    v10 = [v8 domain];
    [v9 setErrorDomain:v10];

    [v9 setSth:v14];
    [v9 setVerificationType:1];
  }

  v11 = [v14 signatureVerified];
  if (a4 == 1 && v11 == 1 && [v14 mmdVerified] == 1)
  {
    v12 = [(TransparencyManagedDataStore *)self updateDelegate];
    v13 = [v14 application];
    [v12 mapHeadUpdated:v13 populating:{objc_msgSend(v14, "populating")}];
  }
}

- (void)createSelfValidationState:(id)a3 uri:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1001B2EF4;
  v30 = sub_1001B2F04;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1001B2EF4;
  v24 = sub_1001B2F04;
  v25 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001B2F0C;
  v15[3] = &unk_10031CDB8;
  v18 = &v26;
  v15[4] = self;
  v10 = v8;
  v16 = v10;
  v11 = v9;
  v17 = v11;
  v19 = &v20;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v15];
  if (a5)
  {
    v12 = v21[5];
    if (v12)
    {
      *a5 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-129 errorLevel:1 underlyingError:v12 description:@"couldn't create self state"];
    }
  }

  v13 = v27[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

- (void)fetchSelfValidationState:(id)a3 uri:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1001B2EF4;
  v30 = sub_1001B2F04;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1001B2EF4;
  v24 = sub_1001B2F04;
  v25 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001B31E8;
  v15[3] = &unk_1003263D8;
  v15[4] = self;
  v18 = &v20;
  v10 = v8;
  v16 = v10;
  v11 = v9;
  v17 = v11;
  v19 = &v26;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v15];
  if (a5)
  {
    v12 = v21[5];
    if (v12)
    {
      *a5 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-128 errorLevel:1 underlyingError:v12 description:@"couldn't fetch self state"];
    }
  }

  v13 = v27[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

- (BOOL)initSelfState:(id)a3 uri:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v16 = 0;
  v10 = [(TransparencyManagedDataStore *)self fetchSelfValidationState:v8 uri:v9 error:&v16];
  v11 = v16;
  if (!v10)
  {
    v15 = 0;
    v10 = [(TransparencyManagedDataStore *)self createSelfValidationState:v8 uri:v9 error:&v15];
    v12 = v15;

    v11 = v12;
  }

  if (a5 && v11)
  {
    v13 = v11;
    *a5 = v11;
  }

  return v10 != 0;
}

- (BOOL)performBlockWithSelfState:(id)a3 uri:(id)a4 error:(id *)a5 block:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_1001B2EF4;
  v33 = sub_1001B2F04;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001B3660;
  v19[3] = &unk_100326400;
  v19[4] = self;
  v13 = v10;
  v20 = v13;
  v14 = v11;
  v21 = v14;
  v23 = &v29;
  v24 = &v25;
  v15 = v12;
  v22 = v15;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v19];
  if (a5)
  {
    v16 = v30[5];
    if (v16)
    {
      *a5 = v16;
    }
  }

  v17 = *(v26 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  return v17;
}

- (BOOL)createFollowupTicket:(id)a3 uri:(id)a4 startTime:(id)a5 error:(id *)a6
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001B38A8;
  v15[3] = &unk_100326428;
  v16 = a5;
  v10 = v16;
  v11 = a4;
  v12 = a3;
  v13 = objc_retainBlock(v15);
  LOBYTE(a6) = [(TransparencyManagedDataStore *)self performBlockWithSelfState:v12 uri:v11 error:a6 block:v13];

  return a6;
}

- (unint64_t)checkFollowupTicket:(id)a3 uri:(id)a4 checkTime:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001B3A88;
  v22[3] = &unk_100326450;
  v13 = v10;
  v23 = v13;
  v14 = v11;
  v24 = v14;
  v15 = v12;
  v25 = v15;
  v16 = objc_retainBlock(v22);
  v21 = 0;
  v17 = [(TransparencyManagedDataStore *)self performBlockWithSelfState:v13 uri:v14 error:&v21 block:v16];
  v18 = v21;
  if (v18)
  {
    if (a6)
    {
      v18 = v18;
      v19 = 0;
      *a6 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else if (v17)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (id)createBatchQuery
{
  v2 = [(TransparencyManagedDataStore *)self context];
  v3 = [NSEntityDescription insertNewObjectForEntityForName:@"RPCBatchQuery" inManagedObjectContext:v2];

  [v3 setRpcType:1];

  return v3;
}

- (id)createSingleQuery
{
  v2 = [(TransparencyManagedDataStore *)self context];
  v3 = [NSEntityDescription insertNewObjectForEntityForName:@"RPCSingleQuery" inManagedObjectContext:v2];

  [v3 setRpcType:0];

  return v3;
}

- (id)createBatchQuery:(id)a3 backgroundOpId:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(TransparencyManagedDataStore *)self createBatchQuery];
  v11 = [v9 application];
  v12 = [v9 data];
  v13 = [(TransparencyManagedDataStore *)self initializeServerRPC:v10 application:v11 backgroundOpId:v8 request:v12];

  v14 = [v9 uriArray];

  v15 = [NSArray arrayWithArray:v14];
  [v10 setUris:v15];

  if ([(TransparencyManagedDataStore *)self persistWithError:a5])
  {
    v16 = [v10 rpcId];
  }

  else
  {
    v16 = 0;
  }

  [TransparencyManagedDataStore cleanseError:a5];

  return v16;
}

- (id)createSingleQuery:(id)a3 backgroundOpId:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(TransparencyManagedDataStore *)self createSingleQuery];
  v11 = [v9 application];
  v12 = [v9 data];
  v13 = [(TransparencyManagedDataStore *)self initializeServerRPC:v10 application:v11 backgroundOpId:v8 request:v12];

  v14 = [v9 uri];

  v15 = [NSString stringWithString:v14];
  [v10 setUri:v15];

  if ([(TransparencyManagedDataStore *)self persistWithError:a5])
  {
    v16 = [v10 rpcId];
  }

  else
  {
    v16 = 0;
  }

  [TransparencyManagedDataStore cleanseError:a5];

  return v16;
}

- (id)insertCompletedSingleQuery:(id)a3 application:(id)a4 request:(id)a5 response:(id)a6 traceUUID:(id)a7 responseStatus:(int64_t)a8 serverHint:(id)a9
{
  v14 = a7;
  v15 = a9;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = [(TransparencyManagedDataStore *)self context];
  v20 = [NSEntityDescription insertNewObjectForEntityForName:@"RPCSingleQuery" inManagedObjectContext:v19];

  [v20 setRpcType:0];
  [v20 setRequest:v17];

  [v20 setResponse:v16];
  [v20 setResponseStatus:a8];
  v21 = +[NSDate date];
  [v20 setResponseTime:v21];

  v22 = +[NSUUID UUID];
  [v20 setRpcId:v22];

  [v20 setApplication:v18];
  [v20 setServerHint:v15];

  [v20 setUsedReversePush:1];
  if (a8 == 7 || a8 == 1)
  {
    [v20 setState:1];
    if (qword_10039C948 != -1)
    {
      sub_10025C208();
    }

    v23 = qword_10039C950;
    if (os_log_type_enabled(qword_10039C950, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [v20 rpcId];
      v30 = 138412802;
      v31 = v25;
      v32 = 2048;
      v33 = [v20 rpcType];
      v34 = 2112;
      v35 = v14;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "CompletedRPC succeeded. rpcId: %@, rpcType: %lld %@", &v30, 0x20u);

LABEL_11:
    }
  }

  else
  {
    [v20 setState:0];
    if (qword_10039C948 != -1)
    {
      sub_10025C21C();
    }

    v26 = qword_10039C950;
    if (os_log_type_enabled(qword_10039C950, OS_LOG_TYPE_ERROR))
    {
      v24 = v26;
      v27 = [v20 responseStatus];
      v28 = [v20 rpcId];
      v30 = 134218754;
      v31 = v27;
      v32 = 2112;
      v33 = v28;
      v34 = 2048;
      v35 = [v20 rpcType];
      v36 = 2112;
      v37 = v14;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "CompletedRPC failed. responseStatus: %lld, rpcId: %@, rpcType: %lld %@", &v30, 0x2Au);

      goto LABEL_11;
    }
  }

  return v20;
}

- (BOOL)deleteServerRpcById:(id)a3 error:(id *)a4
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1001CB4A4;
  v22 = sub_1001CB4B4;
  v23 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001CB4BC;
  v13[3] = &unk_100327140;
  v14 = self;
  v6 = a3;
  v15 = v6;
  v16 = &v18;
  v17 = &v24;
  [(TransparencyManagedDataStore *)v14 performBlockAndWait:v13];
  if (v25[3])
  {
    v7 = 1;
  }

  else
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"ServerRPC" write:1 code:-325 underlyingError:v19[5]];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001CB598;
    v10[3] = &unk_10031A9E0;
    v11 = v6;
    v12 = &v18;
    [(TransparencyManagedDataStore *)self performBlockAndWait:v10];
    if (a4)
    {
      v8 = v19[5];
      if (v8)
      {
        *a4 = v8;
      }
    }

    v7 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v7 & 1;
}

- (id)fetchServerRpcById:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"ServerRPC"];
  v8 = [NSPredicate predicateWithFormat:@"rpcId = %@", v6];

  [v7 setPredicate:v8];
  v9 = [(TransparencyManagedDataStore *)self context];
  v10 = [v9 executeFetchRequest:v7 error:a4];

  [TransparencyManagedDataStore cleanseError:a4];
  if (v10 && [v10 count])
  {
    v11 = [v10 objectAtIndexedSubscript:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)fetchLatestSingleQueryByUri:(id)a3 application:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [NSFetchRequest fetchRequestWithEntityName:@"RPCSingleQuery"];
  v11 = [NSPredicate predicateWithFormat:@"application = %@ && uri = %@", v8, v9];

  [v10 setPredicate:v11];
  v12 = [NSSortDescriptor sortDescriptorWithKey:@"requestTime" ascending:0];
  v18 = v12;
  v13 = [NSArray arrayWithObjects:&v18 count:1];
  [v10 setSortDescriptors:v13];

  [v10 setFetchLimit:1];
  v14 = [(TransparencyManagedDataStore *)self context];
  v15 = [v14 executeFetchRequest:v10 error:a5];

  [TransparencyManagedDataStore cleanseError:a5];
  if (v15 && [v15 count])
  {
    v16 = [v15 objectAtIndexedSubscript:0];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)performAndWaitForRpcId:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1001CB4A4;
  v24 = sub_1001CB4B4;
  v25 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001CBB10;
  v15[3] = &unk_100327500;
  v15[4] = self;
  v10 = v8;
  v16 = v10;
  v18 = &v20;
  v11 = v9;
  v17 = v11;
  v19 = &v26;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v15];
  if (a4)
  {
    v12 = v21[5];
    if (v12)
    {
      *a4 = v12;
    }
  }

  v13 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

- (BOOL)failRpcId:(id)a3 failure:(id)a4 error:(id *)a5
{
  v8 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1001CB4A4;
  v25 = sub_1001CB4B4;
  v26 = 0;
  obj = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001CBEA4;
  v16[3] = &unk_100327548;
  v9 = a4;
  v17 = v9;
  v18 = self;
  v19 = &v21;
  [(TransparencyManagedDataStore *)self performAndWaitForRpcId:v8 error:&obj block:v16];
  objc_storeStrong(&v26, obj);
  v10 = (v22 + 5);
  v15 = v22[5];
  [TransparencyManagedDataStore cleanseError:&v15];
  objc_storeStrong(v10, v15);
  v11 = v22;
  if (a5)
  {
    v12 = v22[5];
    if (v12)
    {
      *a5 = v12;
      v11 = v22;
    }
  }

  v13 = v11[5] == 0;

  _Block_object_dispose(&v21, 8);
  return v13;
}

- (BOOL)setResponseForRpcId:(id)a3 response:(id)a4 responseStatus:(id)a5 usedReversePush:(BOOL)a6 serverHint:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1001CB4A4;
  v39 = sub_1001CB4B4;
  v40 = 0;
  obj = 0;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001CC224;
  v27[3] = &unk_1003275B0;
  v18 = v15;
  v28 = v18;
  v19 = v16;
  v29 = v19;
  v33 = a6;
  v20 = v17;
  v30 = v20;
  v31 = self;
  v32 = &v35;
  [(TransparencyManagedDataStore *)self performAndWaitForRpcId:v14 error:&obj block:v27];
  objc_storeStrong(&v40, obj);
  v21 = (v36 + 5);
  v26 = v36[5];
  [TransparencyManagedDataStore cleanseError:&v26];
  objc_storeStrong(v21, v26);
  v22 = v36;
  if (a8)
  {
    v23 = v36[5];
    if (v23)
    {
      *a8 = v23;
      v22 = v36;
    }
  }

  v24 = v22[5] == 0;

  _Block_object_dispose(&v35, 8);
  return v24;
}

- (id)getLatestSuccessfulSingleQueryForUri:(id)a3 application:(id)a4 requestYoungerThan:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1001CB4A4;
  v36 = sub_1001CB4B4;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1001CB4A4;
  v30 = sub_1001CB4B4;
  v31 = 0;
  if (qword_10039C948 != -1)
  {
    sub_10025C2A8();
  }

  v13 = qword_10039C950;
  if (os_log_type_enabled(qword_10039C950, OS_LOG_TYPE_INFO))
  {
    *buf = 141558530;
    v39 = 1752392040;
    v40 = 2112;
    v41 = v10;
    v42 = 2112;
    v43 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "getting successful ServerRPC for %{mask.hash}@ younger than %@", buf, 0x20u);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001CC81C;
  v20[3] = &unk_1003275F8;
  v14 = v10;
  v21 = v14;
  v15 = v11;
  v22 = v15;
  v16 = v12;
  v23 = v16;
  v24 = &v26;
  v25 = &v32;
  [(TransparencyManagedDataStore *)self performBlockAndWaitWithMoc:v20];
  if (a6)
  {
    v17 = v27[5];
    if (v17)
    {
      *a6 = v17;
    }
  }

  v18 = v33[5];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v18;
}

- (id)getLatestSuccessfulBatchQueryForUri:(id)a3 application:(id)a4 requestYoungerThan:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1001CB4A4;
  v36 = sub_1001CB4B4;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1001CB4A4;
  v30 = sub_1001CB4B4;
  v31 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001CCC1C;
  v19[3] = &unk_100327000;
  v13 = v11;
  v20 = v13;
  v14 = v12;
  v21 = v14;
  v22 = self;
  v24 = &v26;
  v15 = v10;
  v23 = v15;
  v25 = &v32;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v19];
  if (a6)
  {
    v16 = v27[5];
    if (v16)
    {
      *a6 = v16;
    }
  }

  v17 = v33[5];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v17;
}

- (BOOL)hasPendingSingleQueryForUri:(id)a3 application:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1001CB4A4;
  v30 = sub_1001CB4B4;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001CD134;
  v17[3] = &unk_100327620;
  v17[4] = self;
  v10 = v8;
  v18 = v10;
  v11 = v9;
  v19 = v11;
  v20 = &v22;
  v21 = &v26;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v17];
  if (v27[5])
  {
    if (qword_10039C948 != -1)
    {
      sub_10025C2D0();
    }

    v12 = qword_10039C950;
    if (os_log_type_enabled(qword_10039C950, OS_LOG_TYPE_ERROR))
    {
      v13 = v27[5];
      *buf = 141558530;
      v33 = 1752392040;
      v34 = 2112;
      v35 = v10;
      v36 = 2112;
      v37 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to count number of pending single queries for %{mask.hash}@: %@", buf, 0x20u);
    }
  }

  if (a5)
  {
    v14 = v27[5];
    if (v14)
    {
      *a5 = v14;
    }
  }

  v15 = v23[3] != 0;

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v15;
}

- (void)garbageCollectServerRPCs:(id *)a3
{
  if (qword_10039C948 != -1)
  {
    sub_10025C2F8();
  }

  v5 = qword_10039C950;
  if (os_log_type_enabled(qword_10039C950, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Garbage collecting pending server RPCs", buf, 2u);
  }

  v6 = [NSDate dateWithTimeIntervalSinceNow:-kTransparencyMaxmimumDownloadRecordLifetime];
  v7 = [NSPredicate predicateWithFormat:@"state == %@ && requestTime < %@", &off_10033CFA8, v6];
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"RPCSingleQuery" predicate:v7 error:a3];
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"RPCBatchQuery" predicate:v7 error:a3];
  if (qword_10039C948 != -1)
  {
    sub_10025C30C();
  }

  v8 = qword_10039C950;
  if (os_log_type_enabled(qword_10039C950, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Garbage collecting completed server RPCs", v11, 2u);
  }

  v9 = [NSDate dateWithTimeIntervalSinceNow:-kKTMaximumCompletedRequestLifetime];

  v10 = [NSPredicate predicateWithFormat:@"state != %@ && responseTime < %@", &off_10033CFA8, v9];

  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"RPCSingleQuery" predicate:v10 error:a3];
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"RPCBatchQuery" predicate:v10 error:a3];
}

- (BOOL)deleteServerRPCs:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (qword_10039C948 != -1)
  {
    sub_10025C334();
  }

  v7 = qword_10039C950;
  if (os_log_type_enabled(qword_10039C950, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Deleting cached server RPCs", buf, 2u);
  }

  v8 = [NSPredicate predicateWithFormat:@"application == %@", v6];
  v9 = [(TransparencyManagedDataStore *)self garbageCollectEntity:@"ServerRPC" predicate:v8 error:a4];

  return v9;
}

- (BOOL)deleteCompletedSingleQueryForUris:(id)a3 application:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (qword_10039C948 != -1)
  {
    sub_10025C348();
  }

  v10 = qword_10039C950;
  if (os_log_type_enabled(qword_10039C950, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [v8 componentsJoinedByString:{@", "}];
    *buf = 141558274;
    v17 = 1752392040;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Deleting cached server RPCs for %{mask.hash}@", buf, 0x16u);
  }

  v13 = [NSPredicate predicateWithFormat:@"uri IN %@ && application == %@ && state != %@", v8, v9, &off_10033CFA8];
  v14 = [(TransparencyManagedDataStore *)self garbageCollectEntity:@"RPCSingleQuery" predicate:v13 error:a5];

  return v14;
}

- (id)createIDSKTVerification:(id)a3 application:(id)a4 accountKey:(id)a5 idsResponseTime:(id)a6 serverLoggableDatas:(id)a7 optedIn:(unint64_t)a8 type:(unint64_t)a9 syncedLoggableDatas:(id)a10 verificationId:(id)a11 error:(id *)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a10;
  v23 = a11;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_1001D9DB4;
  v57 = sub_1001D9DC4;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_1001D9DB4;
  v51 = sub_1001D9DC4;
  v52 = 0;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1001D9DCC;
  v35[3] = &unk_100327BD0;
  v35[4] = self;
  v24 = v17;
  v36 = v24;
  v25 = v18;
  v37 = v25;
  v26 = v19;
  v38 = v26;
  v27 = v20;
  v39 = v27;
  v28 = v21;
  v40 = v28;
  v45 = a8;
  v46 = a9;
  v29 = v22;
  v41 = v29;
  v30 = v23;
  v42 = v30;
  v43 = &v47;
  v44 = &v53;
  [(TransparencyManagedDataStore *)self performBlockAndWaitWithMoc:v35];
  if (a12)
  {
    v31 = v48[5];
    if (v31)
    {
      *a12 = v31;
    }
  }

  v32 = v54[5];

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);

  return v32;
}

- (id)createIDSKTVerification:(id)a3 application:(id)a4 onMoc:(id)a5 accountKey:(id)a6 idsResponseTime:(id)a7 serverLoggableDatas:(id)a8 optedIn:(unint64_t)a9 type:(unint64_t)a10 syncedLoggableDatas:(id)a11 verificationId:(id)a12 error:(id *)a13
{
  v18 = a3;
  v19 = a4;
  v20 = a6;
  v21 = a7;
  v22 = v20;
  v23 = v21;
  v24 = a11;
  v76 = a12;
  v25 = a8;
  v26 = [NSEntityDescription insertNewObjectForEntityForName:@"IDSKTVerification" inManagedObjectContext:a5];
  v27 = +[NSDate now];
  [v26 setCreationTime:v27];

  [v26 setUri:v18];
  [v26 setApplication:v19];
  [v26 setAccountKey:v22];
  [v26 setUnsigned:"idsOptedIn" value:a9];
  if (v23)
  {
    [v26 setIdsResponseTime:v23];
  }

  else
  {
    v28 = [v26 creationTime];
    [v26 setIdsResponseTime:v28];
  }

  v29 = [[KTLoggableDataArray alloc] initWithLoggableDatas:v25];

  [v26 setServerLoggableDatas:v29];
  [v26 setUnsigned:"type" value:a10];
  if (v24)
  {
    v30 = [[KTLoggableDataArray alloc] initWithLoggableDatas:v24];
    [v26 setSyncedLoggableDatas:v30];
  }

  v31 = v76;
  if (v76)
  {
    [v26 setVerificationId:v76];
  }

  else
  {
    v32 = +[NSUUID UUID];
    [v26 setVerificationId:v32];
  }

  v33 = [v26 verificationId];
  [(TransparencyManagedDataStore *)self createIDSVerificationID:v33 verification:v26];

  v78 = 0;
  v34 = [(TransparencyManagedDataStore *)self fetchPeer:v18 application:v19 error:&v78];
  v35 = v78;
  v36 = v35;
  if (v34 || (v77 = v35, [(TransparencyManagedDataStore *)self createPeerState:v18 application:v19 error:&v77], v34 = objc_claimAutoreleasedReturnValue(), v37 = v77, v38 = v36, v36 = v37, v38, v34))
  {
    v75 = v24;
    [v26 setPeerState:v34];
    v39 = [v34 mostRecentVerification];

    v73 = v36;
    if (!v39)
    {
      goto LABEL_23;
    }

    if (v23)
    {
      v40 = [v34 mostRecentVerification];
      v41 = [v40 idsResponseTime];
      if (v41)
      {
        v42 = v41;
        v43 = [v34 mostRecentVerification];
        [v43 idsResponseTime];
        v44 = v22;
        v45 = v19;
        v47 = v46 = v18;
        v70 = [v47 compare:v23];

        v18 = v46;
        v19 = v45;
        v22 = v44;

        v31 = v76;
        v36 = v73;
        if (v70 == -1)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    v50 = [v34 mostRecentVerification];
    v51 = [v50 idsResponseTime];
    if (v51)
    {

      goto LABEL_29;
    }

    v52 = [v34 mostRecentVerification];
    v53 = [v52 creationTime];
    [v26 creationTime];
    v54 = v23;
    v55 = v22;
    v56 = v19;
    v58 = v57 = v18;
    v71 = [v53 compare:v58];

    v18 = v57;
    v19 = v56;
    v22 = v55;
    v23 = v54;
    v36 = v73;

    v31 = v76;
    if (v71 != -1)
    {
      goto LABEL_29;
    }

LABEL_23:
    [v26 setPeerStateMostRecent:v34];
    v59 = [v34 mostRecentSuccess];

    if (v59)
    {
      v60 = [v34 mostRecentSuccess];
      v61 = [v60 accountKey];
      if ([v61 isEqual:v22])
      {
        v62 = [v34 mostRecentSuccess];
        v63 = [v62 serverLoggableDatas];
        [v26 serverLoggableDatas];
        v72 = v23;
        v64 = v22;
        v65 = v19;
        v67 = v66 = v18;
        v69 = [v63 isEqual:v67];

        v18 = v66;
        v19 = v65;
        v22 = v64;
        v23 = v72;

        v31 = v76;
        v36 = v73;
        if (v69)
        {
          goto LABEL_29;
        }
      }

      else
      {

        v36 = v73;
      }

      [v34 setMostRecentSuccess:0];
    }

LABEL_29:
    v48 = v26;

    v24 = v75;
    goto LABEL_30;
  }

  v48 = 0;
  if (a13 && v36)
  {
    v49 = v36;
    v48 = 0;
    *a13 = v36;
  }

LABEL_30:

  return v48;
}

- (id)createIDSKTVerification:(id)a3 application:(id)a4 verificationInfo:(id)a5 type:(unint64_t)a6 syncedLoggableDatas:(id)a7 verificationId:(id)a8 error:(id *)a9
{
  v13 = a8;
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v15 accountKey];
  v19 = [v15 idsResponseTime];
  v20 = [v15 serverLoggableDatas];
  v21 = [v15 optedIn];

  v22 = [(TransparencyManagedDataStore *)self createIDSKTVerification:v17 application:v16 accountKey:v18 idsResponseTime:v19 serverLoggableDatas:v20 optedIn:v21 type:a6 syncedLoggableDatas:v14 verificationId:v13 error:a9];

  return v22;
}

- (id)onMocFetchVerificationForVerificationId:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[KTRequestID fetchRequest];
  v8 = [NSPredicate predicateWithFormat:@"requestId == %@", v6];

  [v7 setPredicate:v8];
  [v7 setRelationshipKeyPathsForPrefetching:&off_10033D820];
  v9 = [(TransparencyManagedDataStore *)self context];
  v10 = [v9 executeFetchRequest:v7 error:a4];

  [TransparencyManagedDataStore cleanseError:a4];
  if ([v10 count])
  {
    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = [v11 idsKTVerification];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)performAndWaitForVerificationId:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1001D9DB4;
  v24 = sub_1001D9DC4;
  v25 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001DA834;
  v15[3] = &unk_100327500;
  v15[4] = self;
  v10 = v8;
  v16 = v10;
  v18 = &v20;
  v11 = v9;
  v17 = v11;
  v19 = &v26;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v15];
  if (a4)
  {
    v12 = v21[5];
    if (v12)
    {
      *a4 = v12;
    }
  }

  v13 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

- (BOOL)resetVerificationsToPending:(id)a3 error:(id *)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1001D9DB4;
  v21 = sub_1001D9DC4;
  v22 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001DAAE4;
  v13[3] = &unk_100317DE0;
  v14 = self;
  v16 = &v17;
  v6 = a3;
  v15 = v6;
  [(TransparencyManagedDataStore *)v14 performBlockAndWait:v13];
  v7 = v18;
  if (a4)
  {
    v8 = v18[5];
    if (v8)
    {
      *a4 = v8;
      v7 = v18;
    }
  }

  if (v7[5])
  {
    if (qword_10039C9E0 != -1)
    {
      sub_10025C730();
    }

    v9 = qword_10039C9E8;
    if (os_log_type_enabled(qword_10039C9E8, OS_LOG_TYPE_ERROR))
    {
      v10 = v18[5];
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to reset peer verifications to pending: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = [(TransparencyManagedDataStore *)self resetPeersToPending:v6 error:a4];
  }

  _Block_object_dispose(&v17, 8);
  return v11;
}

- (BOOL)performForPendingVerfications:(id)a3 uri:(id)a4 responseOlderThan:(id)a5 error:(id *)a6 batchSize:(unint64_t)a7 block:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1001D9DB4;
  v39 = sub_1001D9DC4;
  v40 = 0;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001DB0D0;
  v27[3] = &unk_100327C38;
  v27[4] = self;
  v32 = &v35;
  v18 = v15;
  v28 = v18;
  v19 = v14;
  v29 = v19;
  v20 = v16;
  v30 = v20;
  v34 = a7;
  v21 = v17;
  v31 = v21;
  v33 = &v41;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v27];
  if (a6)
  {
    v22 = v36[5];
    if (v22)
    {
      *a6 = v22;
    }
  }

  if (v42[3])
  {
    v23 = 1;
  }

  else
  {
    if (qword_10039C9E0 != -1)
    {
      sub_10025C780();
    }

    v24 = qword_10039C9E8;
    if (os_log_type_enabled(qword_10039C9E8, OS_LOG_TYPE_ERROR))
    {
      v25 = v36[5];
      *buf = 138412290;
      v46 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "failed to perform block for pending verifications: %@", buf, 0xCu);
    }

    v23 = *(v42 + 24);
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  return v23 & 1;
}

- (id)pendingVerificationURIs:(id)a3 fetchLimit:(unint64_t)a4 error:(id *)a5
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1001D9DB4;
  v27 = sub_1001D9DC4;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1001D9DB4;
  v21 = sub_1001D9DC4;
  v22 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001DB438;
  v11[3] = &unk_100327C80;
  v12 = self;
  v14 = &v17;
  v7 = a3;
  v15 = &v23;
  v16 = a4;
  v13 = v7;
  [(TransparencyManagedDataStore *)v12 performBlockAndWait:v11];
  if (a5)
  {
    v8 = v18[5];
    if (v8)
    {
      *a5 = v8;
    }
  }

  v9 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v9;
}

- (id)peerVerificationIdForUri:(id)a3 application:(id)a4 verificationInfo:(id)a5 newerThan:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_1001D9DB4;
  v46 = sub_1001D9DC4;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1001D9DB4;
  v40 = sub_1001D9DC4;
  v41 = 0;
  v16 = [KTLoggableDataArray alloc];
  v17 = [v14 serverLoggableDatas];
  v18 = [(KTLoggableDataArray *)v16 initWithLoggableDatas:v17];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001DB964;
  v27[3] = &unk_100327CA8;
  v19 = v13;
  v28 = v19;
  v20 = v12;
  v29 = v20;
  v21 = v15;
  v30 = v21;
  v22 = v14;
  v31 = v22;
  v34 = &v36;
  v23 = v18;
  v35 = &v42;
  v32 = v23;
  v33 = self;
  [(TransparencyManagedDataStore *)self performBlockAndWaitWithMoc:v27];
  if (a7)
  {
    v24 = v37[5];
    if (v24)
    {
      *a7 = v24;
    }
  }

  v25 = v43[5];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v25;
}

- (id)fetchOrCreateVerification:(id)a3 application:(id)a4 verificationInfo:(id)a5 fetchNow:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v8)
  {
    v15 = [(TransparencyManagedDataStore *)self createPeerIDSKTVerification:v12 application:v13 verificationInfo:v14 error:a7];
    v16 = [(TransparencyManagedDataStore *)self logger];
    v17 = [TransparencyAnalytics formatEventName:@"CacheVerifyFetch" application:v13];
    [v16 logSuccessForEventNamed:v17];

    if (qword_10039C9E0 != -1)
    {
      sub_10025C7D0();
    }

    v18 = qword_10039C9E8;
    if (os_log_type_enabled(qword_10039C9E8, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138543874;
      v31 = v15;
      v32 = 2160;
      v33 = 1752392040;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "created verificationId %{public}@ for %{mask.hash}@ because fetchNow", &v30, 0x20u);
    }

    v19 = v15;
  }

  else
  {
    +[TransparencySettings defaultQueryCacheTimeout];
    v21 = [NSDate dateWithTimeIntervalSinceNow:-v20];
    v22 = [(TransparencyManagedDataStore *)self peerVerificationIdForUri:v12 application:v13 verificationInfo:v14 newerThan:v21 error:a7];
    if (v22)
    {
      v23 = v22;
      if (qword_10039C9E0 != -1)
      {
        sub_10025C7A8();
      }

      v24 = qword_10039C9E8;
      if (os_log_type_enabled(qword_10039C9E8, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138543874;
        v31 = v23;
        v32 = 2160;
        v33 = 1752392040;
        v34 = 2112;
        v35 = v12;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "re-using verificationId %{public}@ for %{mask.hash}@", &v30, 0x20u);
      }

      v25 = @"CacheVerifyHit";
    }

    else
    {
      v23 = [(TransparencyManagedDataStore *)self createPeerIDSKTVerification:v12 application:v13 verificationInfo:v14 error:a7];
      if (qword_10039C9E0 != -1)
      {
        sub_10025C7BC();
      }

      v26 = qword_10039C9E8;
      if (os_log_type_enabled(qword_10039C9E8, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138543874;
        v31 = v23;
        v32 = 2160;
        v33 = 1752392040;
        v34 = 2112;
        v35 = v12;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "created verificationId %{public}@ for %{mask.hash}@ none cached", &v30, 0x20u);
      }

      v25 = @"CacheVerifyMiss";
    }

    v27 = [(TransparencyManagedDataStore *)self logger];
    v28 = [TransparencyAnalytics formatEventName:v25 application:v13];
    [v27 logSuccessForEventNamed:v28];

    v19 = v23;
  }

  return v19;
}

- (id)createVerification:(id)a3 application:(id)a4 onMoc:(id)a5 verificationInfo:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [v12 accountKey];
  v16 = [v12 idsResponseTime];
  v17 = [v12 serverLoggableDatas];
  v18 = [v12 optedIn];

  v25 = 0;
  v19 = [(TransparencyManagedDataStore *)self createIDSKTVerification:v11 application:v14 onMoc:v13 accountKey:v15 idsResponseTime:v16 serverLoggableDatas:v17 optedIn:v18 type:0 syncedLoggableDatas:0 verificationId:0 error:&v25];

  v20 = v25;
  if (qword_10039C9E0 != -1)
  {
    sub_10025C7E4();
  }

  v21 = qword_10039C9E8;
  if (os_log_type_enabled(qword_10039C9E8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = [v19 verificationId];
    *buf = 138543874;
    v27 = v23;
    v28 = 2160;
    v29 = 1752392040;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "created verificationId %{public}@ for %{mask.hash}@ none cached", buf, 0x20u);
  }

  return v19;
}

- (void)garbageCollectVerifications:(id *)a3
{
  if (qword_10039C9E0 != -1)
  {
    sub_10025C80C();
  }

  v5 = qword_10039C9E8;
  if (os_log_type_enabled(qword_10039C9E8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Garbage collecting IDSKTVerifications", buf, 2u);
  }

  v6 = [NSDate dateWithTimeIntervalSinceNow:-kKTMaximumPendingRequestLifetime];
  v7 = [NSPredicate predicateWithFormat:@"creationTime < %@", v6];

  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"IDSKTVerification" predicate:v7 error:a3];
  v8 = [NSPredicate predicateWithFormat:@"peerStateFailure == nil && peerStateMostRecent == nil && peerStateMostRecentSuccess == nil && peerStateMostRecentCompleted == nil"];

  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"IDSKTVerification" predicate:v8 error:a3];
}

- (void)deleteNonRecentVerificationsForApplication:(id)a3 error:(id *)a4
{
  v6 = [NSPredicate predicateWithFormat:@"application == %@ && peerStateFailure == nil && peerStateMostRecent == nil && peerStateMostRecentSuccess == nil && peerStateMostRecentCompleted == nil", a3];
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"IDSKTVerification" predicate:v6 error:a4];
}

- (BOOL)disableCacheHitsForUris:(id)a3 application:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (qword_10039C9E0 != -1)
  {
    sub_10025C820();
  }

  v10 = qword_10039C9E8;
  if (os_log_type_enabled(qword_10039C9E8, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [v8 componentsJoinedByString:{@", "}];
    *buf = 141558274;
    *&buf[4] = 1752392040;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Disabling future cache hits for %{mask.hash}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v32 = sub_1001D9DB4;
  v33 = sub_1001D9DC4;
  v34 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001DC76C;
  v21[3] = &unk_10031D0C8;
  v21[4] = self;
  v24 = buf;
  v13 = v8;
  v22 = v13;
  v14 = v9;
  v23 = v14;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v21];
  v15 = *&buf[8];
  if (a5)
  {
    v16 = *(*&buf[8] + 40);
    if (v16)
    {
      *a5 = v16;
      v15 = *&buf[8];
    }
  }

  v17 = *(v15 + 40);
  if (v17)
  {
    if (qword_10039C9E0 != -1)
    {
      sub_10025C834();
    }

    v18 = qword_10039C9E8;
    if (os_log_type_enabled(qword_10039C9E8, OS_LOG_TYPE_ERROR))
    {
      v19 = *(*&buf[8] + 40);
      *v25 = 141558530;
      v26 = 1752392040;
      v27 = 2112;
      v28 = v13;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "failed to disable cache hits for %{mask.hash}@: %@", v25, 0x20u);
    }
  }

  _Block_object_dispose(buf, 8);
  return v17 == 0;
}

- (unint64_t)countOutstandingVerificationsForApplication:(id)a3 error:(id *)a4
{
  v6 = [NSPredicate predicateWithFormat:@"verificationResult == %d && application == %@", 2, a3];
  v7 = [(TransparencyManagedDataStore *)self onMocCountEntity:@"IDSKTVerification" predicate:v6 error:a4];

  return v7;
}

- (unint64_t)countTotalVerificationsForApplication:(id)a3 error:(id *)a4
{
  v6 = [NSPredicate predicateWithFormat:@"application == %@", a3];
  v7 = [(TransparencyManagedDataStore *)self onMocCountEntity:@"IDSKTVerification" predicate:v6 error:a4];

  return v7;
}

- (BOOL)onMocLogVerificationMetricsForApplication:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v7 = [(TransparencyManagedDataStore *)self countOutstandingVerificationsForApplication:v6 error:&v24];
  v8 = v24;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (qword_10039C9E0 != -1)
    {
      sub_10025C8AC();
    }

    v9 = qword_10039C9E8;
    if (os_log_type_enabled(qword_10039C9E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = v6;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to get outstanding IDSKTVerifications for %@: %@", buf, 0x16u);
    }

    v10 = 0;
    if (a4 && v8)
    {
      v11 = v8;
      v10 = 0;
      *a4 = v8;
    }

    v12 = v8;
  }

  else
  {
    v13 = [(TransparencyManagedDataStore *)self logger];
    v14 = [NSNumber numberWithUnsignedInteger:v7];
    v15 = [TransparencyAnalytics formatEventName:@"PendVer" application:v6];
    [v13 logMetric:v14 withName:v15];

    v23 = v8;
    v16 = [(TransparencyManagedDataStore *)self countTotalVerificationsForApplication:v6 error:&v23];
    v12 = v23;

    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (qword_10039C9E0 != -1)
      {
        sub_10025C884();
      }

      v17 = qword_10039C9E8;
      if (os_log_type_enabled(qword_10039C9E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v26 = v6;
        v27 = 2112;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "failed to get total IDSKTVerifications for %@: %@", buf, 0x16u);
      }

      v10 = 0;
      if (a4 && v12)
      {
        v18 = v12;
        v10 = 0;
        *a4 = v12;
      }
    }

    else
    {
      v19 = [(TransparencyManagedDataStore *)self logger];
      v20 = [NSNumber numberWithUnsignedInteger:v16];
      v21 = [TransparencyAnalytics formatEventName:@"TotVer" application:v6];
      [v19 logMetric:v20 withName:v21];

      v10 = 1;
    }
  }

  return v10;
}

- (id)createRecordFromLoggableData:(id)a3 application:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TransparencyManagedDataStore *)self context];
  v9 = [NSEntityDescription insertNewObjectForEntityForName:@"KTDeviceRecord" inManagedObjectContext:v8];

  if (v9)
  {
    v10 = [v6 deviceID];
    [v9 setDeviceId:v10];

    v14 = v6;
    v11 = [NSArray arrayWithObjects:&v14 count:1];
    v12 = [TransparencyManagedDataStore serializeLoggableDatas:v11];
    [v9 setLoggableData:v12];

    [v9 setApplication:v7];
  }

  return v9;
}

- (BOOL)performAndWaitForDeviceId:(id)a3 application:(id)a4 error:(id *)a5 block:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1001DD164;
  v30 = sub_1001DD174;
  v31 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001DD17C;
  v19[3] = &unk_100317DB8;
  v13 = v10;
  v20 = v13;
  v14 = v11;
  v21 = v14;
  v22 = self;
  v24 = &v26;
  v15 = v12;
  v23 = v15;
  v25 = &v32;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v19];
  if (a5)
  {
    v16 = v27[5];
    if (v16)
    {
      *a5 = v16;
    }
  }

  v17 = *(v33 + 24);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v17;
}

- (id)createRequest
{
  v2 = [(TransparencyManagedDataStore *)self context];
  v3 = [NSEntityDescription insertNewObjectForEntityForName:@"KTRequest" inManagedObjectContext:v2];

  return v3;
}

- (id)createRequestWithUri:(id)a3 application:(id)a4 accountKey:(id)a5 serverData:(id)a6 syncedData:(id)a7 queryRequest:(id)a8 queryResponse:(id)a9 type:(unint64_t)a10 clientId:(id)a11 error:(id *)a12
{
  v18 = a11;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = +[NSDate date];
  v27 = +[NSDate date];
  v30 = [(TransparencyManagedDataStore *)self createRequestWithUri:v25 application:v24 accountKey:v23 serverData:v22 syncedData:v21 idsResponseTime:v26 queryRequest:v20 queryResponse:v19 responseDate:v27 type:a10 clientId:v18 error:a12];

  return v30;
}

- (id)createRequestWithUri:(id)a3 application:(id)a4 accountKey:(id)a5 serverData:(id)a6 syncedData:(id)a7 idsResponseTime:(id)a8 queryRequest:(id)a9 queryResponse:(id)a10 responseDate:(id)a11 type:(unint64_t)a12 clientId:(id)a13 error:(id *)a14
{
  v19 = a3;
  v37 = a4;
  v20 = a5;
  v42 = a6;
  v41 = a7;
  v40 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a13;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_1001DDB0C;
  v67 = sub_1001DDB1C;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_1001DDB0C;
  v61 = sub_1001DDB1C;
  v62 = 0;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1001DDB24;
  v43[3] = &unk_100327E70;
  v43[4] = self;
  v54 = &v57;
  v36 = v19;
  v44 = v36;
  v38 = v37;
  v45 = v38;
  v25 = v20;
  v46 = v25;
  v26 = v24;
  v47 = v26;
  v27 = v21;
  v48 = v27;
  v28 = v22;
  v49 = v28;
  v29 = v23;
  v50 = v29;
  v30 = v40;
  v51 = v30;
  v31 = v41;
  v52 = v31;
  v32 = v42;
  v55 = &v63;
  v56 = a12;
  v53 = v32;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v43];
  if (a14)
  {
    v33 = v58[5];
    if (v33)
    {
      *a14 = v33;
    }
  }

  v34 = v64[5];

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  return v34;
}

- (id)requests:(id *)a3
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTRequest"];
  v6 = [(TransparencyManagedDataStore *)self context];
  v7 = [v6 executeFetchRequest:v5 error:a3];

  if (a3 && *a3)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTRequest" write:0 code:-128 underlyingError:?];
    [TransparencyManagedDataStore cleanseError:a3];
  }

  return v7;
}

- (unint64_t)requestCount:(id *)a3
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTRequest"];
  v6 = [(TransparencyManagedDataStore *)self context];
  v7 = [v6 countForFetchRequest:v5 error:a3];

  [TransparencyManagedDataStore cleanseError:a3];
  return v7;
}

- (id)fetchRequestForUUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"KTRequestID"];
  v8 = [NSPredicate predicateWithFormat:@"requestId == %@", v6];
  [v7 setPredicate:v8];

  [v7 setRelationshipKeyPathsForPrefetching:&off_10033D850];
  v9 = [(TransparencyManagedDataStore *)self context];
  v10 = [v9 executeFetchRequest:v7 error:a4];

  [TransparencyManagedDataStore cleanseError:a4];
  if ([v10 count] == 1)
  {
    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = [v11 request];
  }

  else
  {
    v13 = [v10 count];
    if (a4 && v13 >= 2)
    {
      v14 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-57 underlyingError:*a4 description:@"Fetch returned too many requests for requestId = %@", v6];
      *a4 = v14;
      [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTRequestID" write:0 code:-57 underlyingError:v14];
      if (qword_10039CA00 != -1)
      {
        sub_10025C938();
      }

      v15 = qword_10039CA08;
      if (os_log_type_enabled(qword_10039CA08, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Fetch returned too many requests for requestId = %@", buf, 0xCu);
      }
    }

    v16 = [v10 count];
    v12 = 0;
    if (a4 && !v16)
    {
      v17 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-58 underlyingError:*a4 description:@"Fetch returned no requests for requestId = %@", v6];
      *a4 = v17;
      [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTRequestID" hardFailure:0 write:0 code:-58 underlyingError:v17];
      if (qword_10039CA00 != -1)
      {
        sub_10025C94C();
      }

      v18 = qword_10039CA08;
      if (os_log_type_enabled(qword_10039CA08, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v6;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Fetch returned no requests for requestId = %@", buf, 0xCu);
      }

      v12 = 0;
    }
  }

  return v12;
}

- (id)fetchRequestsForURI:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"KTRequest"];
  v8 = [NSPredicate predicateWithFormat:@"uri == %@", v6];

  [v7 setPredicate:v8];
  v9 = [(TransparencyManagedDataStore *)self context];
  v10 = [v9 executeFetchRequest:v7 error:a4];

  [TransparencyManagedDataStore cleanseError:a4];

  return v10;
}

- (id)fetchRequestWithUri:(id)a3 application:(id)a4 accountKey:(id)a5 loggableDatas:(id)a6 youngerThan:(id)a7 error:(id *)a8
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [NSFetchRequest fetchRequestWithEntityName:@"KTRequest"];
  v20 = [NSPredicate predicateWithFormat:@"uri == %@ && application == %@ && accountKey == %@ && serverLoggableDatas == %@ && requestTime > %@", v18, v17, v16, v15, v14];

  [v19 setPredicate:v20];
  v21 = [NSSortDescriptor sortDescriptorWithKey:@"requestTime" ascending:0];
  v28 = v21;
  v22 = [NSArray arrayWithObjects:&v28 count:1];
  [v19 setSortDescriptors:v22];

  [v19 setFetchLimit:1];
  [v19 setPropertiesToFetch:&off_10033D868];
  v23 = [(TransparencyManagedDataStore *)self context];
  v24 = [v23 executeFetchRequest:v19 error:a8];

  [TransparencyManagedDataStore cleanseError:a8];
  if (v24 && [v24 count])
  {
    v25 = [v24 objectAtIndexedSubscript:0];
    v26 = [v25 requestId];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)performForRequestsWithPendingResponses:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a5;
  v9 = [NSPredicate predicateWithFormat:@"verificationResult == %d && application == %@", 2, a3];
  [(TransparencyManagedDataStore *)self performOnRequestsForPredicate:v9 enforceMax:1 error:a4 block:v8];
}

- (id)fetchCompletedRequests:(id)a3 olderThan:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(TransparencyManagedDataStore *)self persistWithError:a5])
  {
    v10 = [NSFetchRequest fetchRequestWithEntityName:@"KTRequest"];
    [v10 setReturnsDistinctResults:1];
    v11 = [NSPredicate predicateWithFormat:@"requestTime < %@ && (verificationResult == %d || verificationResult == %d) && application == %@", v9, 1, 0, v8];
    [v10 setPredicate:v11];

    v12 = [(TransparencyManagedDataStore *)self context];
    v13 = [v12 executeFetchRequest:v10 error:a5];
  }

  else
  {
    v13 = 0;
  }

  if (qword_10039CA00 != -1)
  {
    sub_10025C974();
  }

  v14 = qword_10039CA08;
  if (os_log_type_enabled(qword_10039CA08, OS_LOG_TYPE_ERROR))
  {
    if (a5)
    {
      v15 = *a5;
    }

    else
    {
      v15 = 0;
    }

    *buf = 138412290;
    v18 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "unable to read completed requests: %@", buf, 0xCu);
  }

  [TransparencyManagedDataStore cleanseError:a5];

  return v13;
}

- (BOOL)populateExistingRequestsToLookupTable:(id *)a3
{
  v5 = [NSPredicate predicateWithFormat:@"requestIDCache.@count == 0"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001DEA0C;
  v12[3] = &unk_100327EF8;
  v12[4] = self;
  [(TransparencyManagedDataStore *)self performOnBatchesOfEntity:@"KTRequest" predicate:v5 enforceMax:0 error:a3 block:v12];
  if (a3 && *a3)
  {
    v6 = *a3;
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTRequest" write:1 code:-200 underlyingError:v6];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001DEB40;
    v10[3] = &unk_100316FE0;
    v11 = v6;
    v7 = v6;
    [(TransparencyManagedDataStore *)self performBlockAndWait:v10];

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)garbageCollectRequests:(id)a3 olderThan:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [NSPredicate predicateWithFormat:@"requestTime < %@ && (verificationResult == %d || verificationResult == %d || verificationResult == %d) && application == %@", a4, 1, 0, 3, v8];
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTRequest" predicate:v9 error:a5];
  v10 = [NSDate dateWithTimeIntervalSinceNow:-kKTMaximumPendingRequestLifetime];
  v11 = [NSPredicate predicateWithFormat:@"requestTime < %@ && application == %@", v10, v8];

  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTRequest" predicate:v11 error:a5];
}

- (BOOL)resetPendingRequests:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    [NSPredicate predicateWithFormat:@"application == %@ AND verificationResult == %d", v6, 2];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"verificationResult == %d", 2, v10];
  }
  v7 = ;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001DEE58;
  v11[3] = &unk_100327EF8;
  v11[4] = self;
  [(TransparencyManagedDataStore *)self performOnRequestsForPredicate:v7 enforceMax:0 error:a4 block:v11];
  v8 = !a4 || !*a4;

  return v8;
}

- (unint64_t)countOutstandingRequestsForApplication:(id)a3 error:(id *)a4
{
  v6 = [NSPredicate predicateWithFormat:@"verificationResult == %d && application == %@", 2, a3];
  v7 = [(TransparencyManagedDataStore *)self onMocCountEntity:@"KTRequest" predicate:v6 error:a4];

  return v7;
}

- (unint64_t)countTotalRequestsForApplication:(id)a3 error:(id *)a4
{
  v6 = [NSPredicate predicateWithFormat:@"application == %@", a3];
  v7 = [(TransparencyManagedDataStore *)self onMocCountEntity:@"KTRequest" predicate:v6 error:a4];

  return v7;
}

- (BOOL)logRequestMetricsForApplication:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v7 = [(TransparencyManagedDataStore *)self countOutstandingRequestsForApplication:v6 error:&v24];
  v8 = v24;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (qword_10039CA00 != -1)
    {
      sub_10025C9C4();
    }

    v9 = qword_10039CA08;
    if (os_log_type_enabled(qword_10039CA08, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = v6;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to get outstanding requests for %@: %@", buf, 0x16u);
    }

    v10 = 0;
    if (a4 && v8)
    {
      v11 = v8;
      v10 = 0;
      *a4 = v8;
    }

    v12 = v8;
  }

  else
  {
    v13 = [(TransparencyManagedDataStore *)self logger];
    v14 = [NSNumber numberWithUnsignedInteger:v7];
    v15 = [TransparencyAnalytics formatEventName:@"OutstandingRequests" application:v6];
    [v13 logMetric:v14 withName:v15];

    v23 = v8;
    v16 = [(TransparencyManagedDataStore *)self countTotalRequestsForApplication:v6 error:&v23];
    v12 = v23;

    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (qword_10039CA00 != -1)
      {
        sub_10025C99C();
      }

      v17 = qword_10039CA08;
      if (os_log_type_enabled(qword_10039CA08, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v26 = v6;
        v27 = 2112;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "failed to get total requests for %@: %@", buf, 0x16u);
      }

      v10 = 0;
      if (a4 && v12)
      {
        v18 = v12;
        v10 = 0;
        *a4 = v12;
      }
    }

    else
    {
      v19 = [(TransparencyManagedDataStore *)self logger];
      v20 = [NSNumber numberWithUnsignedInteger:v16];
      v21 = [TransparencyAnalytics formatEventName:@"TotalRequests" application:v6];
      [v19 logMetric:v20 withName:v21];

      v10 = 1;
    }
  }

  return v10;
}

- (BOOL)performAndWaitForRequestId:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1001DDB0C;
  v24 = sub_1001DDB1C;
  v25 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001DF624;
  v15[3] = &unk_100327500;
  v15[4] = self;
  v10 = v8;
  v16 = v10;
  v18 = &v20;
  v11 = v9;
  v17 = v11;
  v19 = &v26;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v15];
  if (a4)
  {
    v12 = v21[5];
    if (v12)
    {
      *a4 = v12;
    }
  }

  v13 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

- (void)performAndWaitForLatestSelfRequest:(id)a3 accountKey:(id)a4 block:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001DF7C4;
  v11[3] = &unk_100327F80;
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = a5;
  v8 = v15;
  v9 = v13;
  v10 = v12;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v11];
}

- (id)requestFailures:(id *)a3
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTRequestFailure"];
  v6 = [(TransparencyManagedDataStore *)self context];
  v7 = [v6 executeFetchRequest:v5 error:a3];

  if (a3 && *a3)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTRequestFailure" write:0 code:-128 underlyingError:?];
    [TransparencyManagedDataStore cleanseError:a3];
  }

  return v7;
}

- (unint64_t)requestFailureCount:(id *)a3
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTRequestFailure"];
  v6 = [(TransparencyManagedDataStore *)self context];
  v7 = [v6 countForFetchRequest:v5 error:a3];

  [TransparencyManagedDataStore cleanseError:a3];
  return v7;
}

- (void)createKTRequestID:(id)a3 request:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TransparencyManagedDataStore *)self context];
  v9 = [NSEntityDescription insertNewObjectForEntityForName:@"KTRequestID" inManagedObjectContext:v8];

  [v9 setRequestId:v7];
  [v9 setRequest:v6];
}

- (void)createIDSVerificationID:(id)a3 verification:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TransparencyManagedDataStore *)self context];
  v9 = [NSEntityDescription insertNewObjectForEntityForName:@"KTRequestID" inManagedObjectContext:v8];

  [v9 setRequestId:v7];
  [v9 setIdsKTVerification:v6];
}

- (id)requestIds:(id *)a3
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTRequestID"];
  v6 = [(TransparencyManagedDataStore *)self context];
  v7 = [v6 executeFetchRequest:v5 error:a3];

  if (a3 && *a3)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTRequestID" write:0 code:-128 underlyingError:?];
    [TransparencyManagedDataStore cleanseError:a3];
  }

  return v7;
}

- (id)createMutation:(id)a3 application:(id)a4 uri:(id)a5 mutationMs:(unint64_t)a6 spkiHash:(id)a7 receiptTime:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = [(TransparencyManagedDataStore *)self context];
  v20 = [NSEntityDescription insertNewObjectForEntityForName:@"KTMutation" inManagedObjectContext:v19];

  if (v20)
  {
    [v20 setSmt:v14];
    [v20 setUnsigned:"mutationMs" value:a6];
    [v20 setReceiptTime:v18];
    [v20 setApplication:v15];
    [v20 setUri:v16];
    [v20 setSpkiHash:v17];
  }

  return v20;
}

- (id)signedMutationTimestamps:(id *)a3
{
  v5 = +[KTMutation fetchRequest];
  v6 = [(TransparencyManagedDataStore *)self context];
  v7 = [v6 executeFetchRequest:v5 error:a3];

  if (a3 && *a3)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTMutation" write:0 code:-128 underlyingError:?];
    [TransparencyManagedDataStore cleanseError:a3];
  }

  return v7;
}

- (unint64_t)signedMutationTimestampCount:(id *)a3
{
  v5 = +[KTMutation fetchRequest];
  v6 = [(TransparencyManagedDataStore *)self context];
  v7 = [v6 countForFetchRequest:v5 error:a3];

  [TransparencyManagedDataStore cleanseError:a3];
  return v7;
}

- (void)performForSMTsWithUnverifiedSignature:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a5;
  v9 = [NSPredicate predicateWithFormat:@"signatureResult == %d && mergeResult == %d && application == %@", 2, 2, a3];
  [(TransparencyManagedDataStore *)self performOnBatchesOfEntity:@"KTMutation" predicate:v9 enforceMax:0 error:a4 block:v8];
}

- (unint64_t)countOutstandingSMTsForApplication:(id)a3 error:(id *)a4
{
  v6 = [NSPredicate predicateWithFormat:@"(signatureResult == %d || mergeResult == %d) && application == %@", 2, 2, a3];
  v7 = [(TransparencyManagedDataStore *)self onMocCountEntity:@"KTMutation" predicate:v6 error:a4];

  return v7;
}

- (unint64_t)countTotalSMTsForApplication:(id)a3 error:(id *)a4
{
  v6 = [NSPredicate predicateWithFormat:@"application == %@", a3];
  v7 = [(TransparencyManagedDataStore *)self onMocCountEntity:@"KTMutation" predicate:v6 error:a4];

  return v7;
}

- (BOOL)logSMTMetricsForApplication:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v7 = [(TransparencyManagedDataStore *)self countOutstandingSMTsForApplication:v6 error:&v24];
  v8 = v24;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (qword_10039CA10 != -1)
    {
      sub_10025CA14();
    }

    v9 = qword_10039CA18;
    if (os_log_type_enabled(qword_10039CA18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = v6;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to get outstanding SMTs for %@: %@", buf, 0x16u);
    }

    v10 = 0;
    if (a4 && v8)
    {
      v11 = v8;
      v10 = 0;
      *a4 = v8;
    }

    v12 = v8;
  }

  else
  {
    v13 = [(TransparencyManagedDataStore *)self logger];
    v14 = [NSNumber numberWithUnsignedInteger:v7];
    v15 = [TransparencyAnalytics formatEventName:@"OutstandingSMTs" application:v6];
    [v13 logMetric:v14 withName:v15];

    v23 = v8;
    v16 = [(TransparencyManagedDataStore *)self countTotalSMTsForApplication:v6 error:&v23];
    v12 = v23;

    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (qword_10039CA10 != -1)
      {
        sub_10025C9EC();
      }

      v17 = qword_10039CA18;
      if (os_log_type_enabled(qword_10039CA18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v26 = v6;
        v27 = 2112;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "failed to get total SMTs for %@: %@", buf, 0x16u);
      }

      v10 = 0;
      if (a4 && v12)
      {
        v18 = v12;
        v10 = 0;
        *a4 = v12;
      }
    }

    else
    {
      v19 = [(TransparencyManagedDataStore *)self logger];
      v20 = [NSNumber numberWithUnsignedInteger:v16];
      v21 = [TransparencyAnalytics formatEventName:@"TotalSMTs" application:v6];
      [v19 logMetric:v20 withName:v21];

      v10 = 1;
    }
  }

  return v10;
}

- (void)garbageCollectSMTs:(id *)a3
{
  if (qword_10039CA10 != -1)
  {
    sub_10025CA3C();
  }

  v5 = qword_10039CA18;
  if (os_log_type_enabled(qword_10039CA18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Garbage collecting SMTs", buf, 2u);
  }

  v6 = [NSDate dateWithTimeIntervalSinceNow:-kKTMaximumPendingRequestLifetime];
  v7 = [NSPredicate predicateWithFormat:@"receiptTime < %@", v6];

  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTMutation" predicate:v7 error:a3];
  if (qword_10039CA10 != -1)
  {
    sub_10025CA50();
  }

  v8 = qword_10039CA18;
  if (os_log_type_enabled(qword_10039CA18, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Garbage collecting successfully verified SMTs", v11, 2u);
  }

  v9 = [NSDate dateWithTimeIntervalSinceNow:-kKTMaximumCompletedRequestLifetime];
  v10 = [NSPredicate predicateWithFormat:@"receiptTime < %@ && signatureResult == %d && mergeResult == %d", v9, 1, 1];

  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTMutation" predicate:v10 error:a3];
}

- (BOOL)performForPendingSMTs:(id)a3 uri:(id)a4 error:(id *)a5 batchSize:(unint64_t)a6 block:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1001E0980;
  v34 = sub_1001E0990;
  v35 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001E0998;
  v23[3] = &unk_100328028;
  v23[4] = self;
  v27 = &v30;
  v15 = v13;
  v24 = v15;
  v16 = v12;
  v25 = v16;
  v29 = a6;
  v17 = v14;
  v26 = v17;
  v28 = &v36;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v23];
  if (a5)
  {
    v18 = v31[5];
    if (v18)
    {
      *a5 = v18;
    }
  }

  if (v37[3])
  {
    v19 = 1;
  }

  else
  {
    if (qword_10039CA10 != -1)
    {
      sub_10025CA78();
    }

    v20 = qword_10039CA18;
    if (os_log_type_enabled(qword_10039CA18, OS_LOG_TYPE_ERROR))
    {
      v21 = v31[5];
      *buf = 138412290;
      v41 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "failed to perform block for pending SMTs: %@", buf, 0xCu);
    }

    v19 = *(v37 + 24);
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  return v19 & 1;
}

- (id)getPendingSmtUris:(id)a3 fetchLimit:(unint64_t)a4 error:(id *)a5
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1001E0980;
  v27 = sub_1001E0990;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1001E0980;
  v21 = sub_1001E0990;
  v22 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001E0D7C;
  v11[3] = &unk_100327C80;
  v12 = self;
  v14 = &v17;
  v7 = a3;
  v15 = &v23;
  v16 = a4;
  v13 = v7;
  [(TransparencyManagedDataStore *)v12 performBlockAndWait:v11];
  if (a5)
  {
    v8 = v18[5];
    if (v8)
    {
      *a5 = v8;
    }
  }

  v9 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v9;
}

- (BOOL)deleteSMTsWithSPKINotIn:(id)a3 application:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (qword_10039CA10 != -1)
  {
    sub_10025CAA0();
  }

  v10 = qword_10039CA18;
  if (os_log_type_enabled(qword_10039CA18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Deleting %@ SMTs with old SPKI hashes", buf, 0xCu);
  }

  v11 = [NSPredicate predicateWithFormat:@"application == %@ && (NOT spkiHash IN %@ || spkiHash == nil)", v9, v8];
  v12 = [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTMutation" predicate:v11 error:a5];

  return v12;
}

- (id)createSignedMutationTimestampsFailure
{
  v2 = [(TransparencyManagedDataStore *)self context];
  v3 = [NSEntityDescription insertNewObjectForEntityForName:@"KTSMTFailure" inManagedObjectContext:v2];

  return v3;
}

- (id)signedMutationTimestampsFailures:(id *)a3
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTSMTFailure"];
  v6 = [(TransparencyManagedDataStore *)self context];
  v7 = [v6 executeFetchRequest:v5 error:a3];

  if (a3 && *a3)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTSMTFailure" write:0 code:-128 underlyingError:?];
    [TransparencyManagedDataStore cleanseError:a3];
  }

  return v7;
}

- (unint64_t)signedMutationTimestampsFailureCount:(id *)a3
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTSMTFailure"];
  v6 = [(TransparencyManagedDataStore *)self context];
  v7 = [v6 countForFetchRequest:v5 error:a3];

  [TransparencyManagedDataStore cleanseError:a3];
  return v7;
}

+ (id)serializeNSError:(id)a3
{
  v3 = a3;
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  v9 = v3;
  v5 = v3;
  [TransparencyManagedDataStore cleanseError:&v9];
  v6 = v9;

  [v4 encodeObject:v6 forKey:@"error"];
  v7 = [v4 encodedData];

  return v7;
}

+ (id)deserializeNSError:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v5 error:a4];

  v7 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v6 _enableStrictSecureDecodingMode];
  v8 = [v6 decodeObjectOfClasses:v7 forKey:@"error"];

  return v8;
}

- (id)createFailureEvent:(id)a3 application:(id)a4 optInServer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v10 = [a5 getAggregateOptInState:&v19];
  v11 = v19;
  if (!v10)
  {
    if (qword_10039CCB8 != -1)
    {
      sub_10025E878();
    }

    v17 = qword_10039CCC0;
    if (os_log_type_enabled(qword_10039CCC0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "createFailureEvent: failed getting optin state: %@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if ([v10 state] != 1)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v12 = [(TransparencyManagedDataStore *)self context];
  v13 = [NSEntityDescription insertNewObjectForEntityForName:@"KTFailureEvent" inManagedObjectContext:v12];

  if (v13)
  {
    [v13 setApplication:v9];
    v14 = +[NSUUID UUID];
    [v13 setEventId:v14];

    v15 = +[NSDate date];
    [v13 setFailureTime:v15];

    v16 = [TransparencyManagedDataStore serializeNSError:v8];
    [v13 setEncodedError:v16];
  }

LABEL_10:

  return v13;
}

- (id)fetchRecentFailureEvents:(id)a3 fetchLimit:(unint64_t)a4 error:(id *)a5
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100214C34;
  v27 = sub_100214C44;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100214C34;
  v21 = sub_100214C44;
  v22 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100214C4C;
  v11[3] = &unk_100327C80;
  v12 = self;
  v14 = &v17;
  v7 = a3;
  v15 = &v23;
  v16 = a4;
  v13 = v7;
  [(TransparencyManagedDataStore *)v12 performBlockAndWait:v11];
  if (a5)
  {
    v8 = v18[5];
    if (v8)
    {
      *a5 = v8;
    }
  }

  v9 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v9;
}

- (void)errorsForFailedEvents:(id)a3 completionBlock:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002150E8;
  v8[3] = &unk_10032A8F0;
  v9 = a3;
  v10 = a4;
  v8[4] = self;
  v6 = v9;
  v7 = v10;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v8];
}

- (BOOL)performAndWaitForFailedEventId:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100214C34;
  v25 = sub_100214C44;
  v26 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100215838;
  v15[3] = &unk_100327500;
  v10 = v8;
  v16 = v10;
  v17 = self;
  v19 = &v21;
  v11 = v9;
  v18 = v11;
  v20 = &v27;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v15];
  if (a4)
  {
    v12 = v22[5];
    if (v12)
    {
      *a4 = v12;
    }
  }

  v13 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

- (BOOL)clearAllFailureEvents:(id)a3 error:(id *)a4
{
  v6 = [NSPredicate predicateWithFormat:@"application == %@", a3];
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTFailureEvent" predicate:v6 error:a4];
  if (a4 && *a4)
  {
    v7 = *a4;
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTFailureEvent" write:1 code:-171 underlyingError:v7];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100215BD0;
    v11[3] = &unk_100316FE0;
    v12 = v7;
    v8 = v7;
    [(TransparencyManagedDataStore *)self performBlockAndWait:v11];

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)clearFailureEvents:(id)a3 completionBlock:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100215D94;
  v8[3] = &unk_10032A8F0;
  v9 = a3;
  v10 = a4;
  v8[4] = self;
  v6 = v9;
  v7 = v10;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v8];
}

- (BOOL)clearSelfFailureRelatedData:(id)a3 uri:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [NSPredicate predicateWithFormat:@"request.uri == %@ AND application == %@ AND request.type == %lld", v8, a3, 1];
  if (![(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTFailureEvent" predicate:v9 error:a5])
  {
    if (!a5)
    {
      goto LABEL_19;
    }

    if (*a5)
    {
      v10 = *a5;
      [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTFailureEvent" write:1 code:-310 underlyingError:v10];
      if (qword_10039CCB8 != -1)
      {
        sub_10025E9CC();
      }

      v11 = qword_10039CCC0;
      if (!os_log_type_enabled(qword_10039CCC0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v10;
      v12 = "failed to clear self-validation failure events for uri %@: %@";
      goto LABEL_16;
    }

LABEL_18:
    LOBYTE(a5) = 0;
    goto LABEL_19;
  }

  if (![(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTDeviceRecord" predicate:v9 error:a5])
  {
    if (!a5)
    {
      goto LABEL_19;
    }

    if (*a5)
    {
      v10 = *a5;
      [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTDeviceRecord" write:1 code:-310 underlyingError:v10];
      if (qword_10039CCB8 != -1)
      {
        sub_10025E9E0();
      }

      v11 = qword_10039CCC0;
      if (!os_log_type_enabled(qword_10039CCC0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v10;
      v12 = "failed to clear outdated device records for uri %@: %@";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);
LABEL_17:

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  LOBYTE(a5) = 1;
LABEL_19:

  return a5;
}

- (BOOL)clearSelfValidationFollowups:(id)a3 uri:(id)a4 error:(id *)a5
{
  v27 = a3;
  v7 = a4;
  v8 = [(TransparencyManagedDataStore *)self followup];
  v9 = [v8 getPendingFollowups];

  if ([v9 count])
  {
    v26 = [NSPredicate predicateWithFormat:@"eventId in %@ AND application == %@ AND request.type == %lld AND request.uri == %@", v9, v27, 1, v7];
    v10 = +[KTFailureEvent fetchRequest];
    [v10 setPredicate:v26];
    [v10 setPropertiesToFetch:&off_10033D8E0];
    [v10 setReturnsDistinctResults:1];
    [v10 setResultType:2];
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = sub_100214C34;
    v47 = sub_100214C44;
    v48 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_100214C34;
    v41 = sub_100214C44;
    v42 = 0;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100216874;
    v33[3] = &unk_10032A9D8;
    v35 = &v43;
    v33[4] = self;
    v11 = v10;
    v34 = v11;
    v36 = &v37;
    [(TransparencyManagedDataStore *)self performBlockAndWait:v33];
    if (v38[5])
    {
      if (qword_10039CCB8 != -1)
      {
        sub_10025E9F4();
      }

      v12 = qword_10039CCC0;
      if (os_log_type_enabled(qword_10039CCC0, OS_LOG_TYPE_ERROR))
      {
        v13 = v38[5];
        *buf = 138543618;
        v51 = v9;
        v52 = 2112;
        v53 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "failed to fetch self-request eventIds: %{public}@ : %@", buf, 0x16u);
      }

      v14 = (v38 + 5);
      obj = v38[5];
      [TransparencyManagedDataStore cleanseError:&obj];
      objc_storeStrong(v14, obj);
    }

    v15 = v44[5];
    if (v15 && [v15 count])
    {
      v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v44[5] count]);
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v17 = [v44[5] reverseObjectEnumerator];
      v18 = [v17 countByEnumeratingWithState:&v28 objects:v49 count:16];
      if (v18)
      {
        v19 = *v29;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v29 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = [*(*(&v28 + 1) + 8 * i) objectForKeyedSubscript:@"eventId"];
            [v16 addObject:v21];
          }

          v18 = [v17 countByEnumeratingWithState:&v28 objects:v49 count:16];
        }

        while (v18);
      }
    }

    else
    {
      v16 = 0;
    }

    v22 = +[TransparencyFollowup instance];
    v23 = [v22 clearFollowups:v16 error:a5];

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v43, 8);
  }

  else
  {
    v23 = 1;
  }

  return v23;
}

- (id)createTreeHead
{
  v2 = [(TransparencyManagedDataStore *)self context];
  v3 = [NSEntityDescription insertNewObjectForEntityForName:@"KTTreeHead" inManagedObjectContext:v2];

  return v3;
}

- (id)treeHeads:(id *)a3
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTTreeHead"];
  v6 = [(TransparencyManagedDataStore *)self context];
  v11 = 0;
  v7 = [v6 executeFetchRequest:v5 error:&v11];
  v8 = v11;

  if (v8)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTTreeHead" write:0 code:-128 underlyingError:v8];
    if (a3)
    {
      v9 = v8;
      *a3 = v8;
    }

    [TransparencyManagedDataStore cleanseError:a3];
  }

  return v7;
}

- (id)treeHeadsForApplication:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"KTTreeHead"];
  v8 = [NSPredicate predicateWithFormat:@"application == %@", v6];

  [v7 setPredicate:v8];
  v9 = [(TransparencyManagedDataStore *)self context];
  v14 = 0;
  v10 = [v9 executeFetchRequest:v7 error:&v14];
  v11 = v14;

  if (a4 && v11)
  {
    v12 = v11;
    *a4 = v11;
  }

  [TransparencyManagedDataStore cleanseError:a4];

  return v10;
}

- (unint64_t)treeHeadCount:(id *)a3
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTTreeHead"];
  v6 = [(TransparencyManagedDataStore *)self context];
  v7 = [v6 countForFetchRequest:v5 error:a3];

  [TransparencyManagedDataStore cleanseError:a3];
  return v7;
}

- (id)latestConsistencyVerifiedTreeHeadRevision:(id)a3 logBeginMs:(unint64_t)a4 error:(id *)a5
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10021A9E0;
  v28 = sub_10021A9F0;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10021A9E0;
  v22 = sub_10021A9F0;
  v23 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10021A9F8;
  v12[3] = &unk_10032AE50;
  v8 = a3;
  v16 = &v24;
  v17 = a4;
  v13 = v8;
  v14 = self;
  v15 = &v18;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v12];
  if (a5)
  {
    v9 = v19[5];
    if (v9)
    {
      *a5 = v9;
    }
  }

  v10 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v10;
}

- (id)latestConsistencyVerifiedTreeHeadSTH:(id)a3 logBeginMs:(unint64_t)a4 error:(id *)a5
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10021A9E0;
  v28 = sub_10021A9F0;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10021A9E0;
  v22 = sub_10021A9F0;
  v23 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10021B0A0;
  v11[3] = &unk_10032AED8;
  v12 = self;
  v14 = &v18;
  v7 = a3;
  v13 = v7;
  v15 = &v24;
  v16 = a4;
  v17 = a5;
  [(TransparencyManagedDataStore *)v12 performBlockAndWait:v11];
  if (a5)
  {
    v8 = v19[5];
    if (v8)
    {
      *a5 = v8;
    }
  }

  v9 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v9;
}

- (id)unverifiedRevisions:(id)a3 isMapHead:(BOOL)a4 inclusion:(BOOL)a5 logBeginMs:(unint64_t)a6 error:(id *)a7
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10021A9E0;
  v32 = sub_10021A9F0;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10021A9E0;
  v26 = sub_10021A9F0;
  v27 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10021B81C;
  v14[3] = &unk_10032AF00;
  v20 = a5;
  v21 = a4;
  v10 = a3;
  v18 = &v28;
  v19 = a6;
  v15 = v10;
  v16 = self;
  v17 = &v22;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v14];
  if (a7)
  {
    v11 = v23[5];
    if (v11)
    {
      *a7 = v11;
    }
  }

  v12 = v29[5];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v12;
}

- (BOOL)populateMissingLogHeadHashes:(id *)a3
{
  v5 = [NSPredicate predicateWithFormat:@"isMapHead == NO && logHeadHash == nil"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10021BCB4;
  v12[3] = &unk_100327EF8;
  v12[4] = self;
  [(TransparencyManagedDataStore *)self performOnBatchesOfEntity:@"KTTreeHead" predicate:v5 enforceMax:0 error:a3 block:v12];
  if (a3 && *a3)
  {
    v6 = *a3;
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTTreeHead" write:1 code:-194 underlyingError:v6];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10021BF04;
    v10[3] = &unk_100316FE0;
    v11 = v6;
    v7 = v6;
    [(TransparencyManagedDataStore *)self performBlockAndWait:v10];

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)performForPendingSTHs:(id)a3 olderThan:(id)a4 type:(unint64_t)a5 error:(id *)a6 block:(id)a7
{
  v15 = a3;
  v12 = a4;
  v13 = a7;
  if (a5 > 3)
  {
    v14 = 0;
  }

  else
  {
    v14 = [NSPredicate predicateWithFormat:*(&off_10032B0F0 + a5), v15, v12, 2];
  }

  [(TransparencyManagedDataStore *)self performOnBatchesOfEntity:@"KTTreeHead" predicate:v14 enforceMax:0 error:a6 block:v13];
}

- (void)performForSTHsWithUnverifiedSignature:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a5;
  v9 = [NSPredicate predicateWithFormat:@"application == %@ && signatureVerified == %d", a3, 2];
  [(TransparencyManagedDataStore *)self performOnBatchesOfEntity:@"KTTreeHead" predicate:v9 enforceMax:0 error:a4 block:v8];
}

- (void)performForSMHsWithUnverifiedMMD:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a5;
  v9 = [NSPredicate predicateWithFormat:@"isMapHead = %@ && application == %@ && mmdVerified == %d", &__kCFBooleanTrue, a3, 2];
  [(TransparencyManagedDataStore *)self performOnBatchesOfEntity:@"KTTreeHead" predicate:v9 enforceMax:0 error:a4 block:v8];
}

- (void)garbageCollectSTHs:(id)a3 logBeginMs:(unint64_t)a4 olderThanDate:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v13 = [(TransparencyManagedDataStore *)self latestConsistencyVerifiedTreeHeadRevision:v11 logBeginMs:a4 error:a6];
  v12 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"isMapHead == NO && receiptTime < %@ && (consistencyVerified == %d || consistencyVerified == %d || consistencyVerified == %d) && application == %@ && revision != %llu", v10, 1, 0, 3, v11, [v13 unsignedLongLongValue]);

  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTTreeHead" predicate:v12 error:a6];
}

- (BOOL)shouldGarbageCollectSTH:(id)a3 application:(id)a4 logBeginMs:(unint64_t)a5 olderThanDate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([v10 isMapHead])
  {
    v13 = 0;
  }

  else
  {
    v14 = [(TransparencyManagedDataStore *)self latestConsistencyVerifiedTreeHeadRevision:v11 logBeginMs:a5 error:0];
    v15 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"isMapHead == NO && receiptTime < %@ && (consistencyVerified == %d || consistencyVerified == %d || consistencyVerified == %d) && application == %@ && revision != %llu", v12, 1, 0, 3, v11, [v14 unsignedLongLongValue]);
    v13 = [v15 evaluateWithObject:v10];
  }

  return v13;
}

- (unint64_t)countOutstandingSTHsForApplication:(id)a3 error:(id *)a4
{
  v6 = [NSPredicate predicateWithFormat:@"application == %@ && isMapHead == NO && (signatureVerified == %d || consistencyVerified == %d || inclusionVerified == %d)", a3, 2, 2, 2];
  v7 = [(TransparencyManagedDataStore *)self onMocCountEntity:@"KTTreeHead" predicate:v6 error:a4];

  return v7;
}

- (unint64_t)countTotalSTHsForApplication:(id)a3 error:(id *)a4
{
  v6 = [NSPredicate predicateWithFormat:@"application == %@", a3];
  v7 = [(TransparencyManagedDataStore *)self onMocCountEntity:@"KTTreeHead" predicate:v6 error:a4];

  return v7;
}

- (unint64_t)countOutstandingSMHsForApplication:(id)a3 error:(id *)a4
{
  v6 = [NSPredicate predicateWithFormat:@"application == %@ && isMapHead == YES && (signatureVerified == %d || mmdVerified == %d || inclusionVerified == %d)", a3, 2, 2, 2];
  v7 = [(TransparencyManagedDataStore *)self onMocCountEntity:@"KTTreeHead" predicate:v6 error:a4];

  return v7;
}

- (BOOL)logSTHMetricsForApplication:(id)a3 error:(id *)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10021C764;
  v7[3] = &unk_100326DB0;
  v8 = self;
  v5 = a3;
  v10 = &v12;
  v11 = a4;
  v9 = v5;
  [(TransparencyManagedDataStore *)v8 performBlockAndWait:v7];
  LOBYTE(a4) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return a4;
}

- (BOOL)deleteSTHs:(id)a3 logBeginMsLessThan:(unint64_t)a4 error:(id *)a5
{
  v7 = [NSPredicate predicateWithFormat:@"application == %@ && logBeginTime < %llu", a3, a4];
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTTreeHead" predicate:v7 error:a5];
  if (a5 && *a5)
  {
    v8 = *a5;
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTTreeHead" write:1 code:-171 underlyingError:v8];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10021CD2C;
    v12[3] = &unk_100316FE0;
    v13 = v8;
    v9 = v8;
    [(TransparencyManagedDataStore *)self performBlockAndWait:v12];

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)reportFailedRevisions:(id)a3 failure:(id)a4 downloadType:(unint64_t)a5 application:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (a5 - 1 <= 2)
  {
    v12 = [TransparencyAnalytics formatEventName:*(&off_10032B110 + a5 - 1) application:v11];
    v18[0] = v9;
    v17[0] = @"requestedRevisions";
    v17[1] = @"errorCode";
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 code]);
    v18[1] = v13;
    v17[2] = @"errorDomain";
    v14 = [v10 domain];
    v18[2] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];

    v16 = +[TransparencyAnalytics logger];
    [v16 logHardFailureForEventNamed:v12 withAttributes:v15];
  }
}

- (void)failHeadDownloadRecord:(id)a3 failure:(id)a4 error:(id *)a5
{
  v8 = a3;
  v32 = a4;
  v9 = [v8 revisions];
  if (v9)
  {
    v10 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:a5];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (os_variant_allows_internal_security_policies())
      {
        v11 = [v8 downloadType];
        v12 = [v8 application];
        [(TransparencyManagedDataStore *)self reportFailedRevisions:v10 failure:v32 downloadType:v11 application:v12];
      }

      v13 = [v8 downloadType];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      obj = v10;
      v14 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v14)
      {
        v15 = v14;
        v30 = v10;
        v31 = v9;
        v16 = *v40;
        do
        {
          v17 = 0;
          do
          {
            if (*v40 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v39 + 1) + 8 * v17);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [v8 application];
              v34[0] = _NSConcreteStackBlock;
              v34[1] = 3221225472;
              v34[2] = sub_10021D4EC;
              v34[3] = &unk_10032B068;
              v38 = v13;
              v35 = v8;
              v36 = self;
              v37 = v32;
              [(TransparencyManagedDataStore *)self performForSTHs:v19 isMapHead:v13 == 1 revision:v18 error:a5 block:v34];
            }

            else
            {
              if (qword_10039CCD8 != -1)
              {
                sub_10025EEA4();
              }

              v20 = qword_10039CCE0;
              if (os_log_type_enabled(qword_10039CCE0, OS_LOG_TYPE_ERROR))
              {
                v21 = v20;
                v22 = [v8 downloadId];
                *buf = 138543618;
                v45 = v22;
                v46 = 2112;
                v47 = v18;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "invalid revision type serialized from downloadId %{public}@: %@", buf, 0x16u);
              }
            }

            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v15);
        v10 = v30;
        v9 = v31;
      }

      v23 = obj;
    }

    else
    {
      if (qword_10039CCD8 != -1)
      {
        sub_10025EECC();
      }

      v23 = qword_10039CCE0;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [v8 downloadId];
        v25 = v24;
        if (a5)
        {
          v26 = *a5;
        }

        else
        {
          v26 = 0;
        }

        *buf = 138543618;
        v45 = v24;
        v46 = 2112;
        v47 = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "failed to deserialize revisions for downloadId %{public}@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (qword_10039CCD8 != -1)
    {
      sub_10025EEE0();
    }

    v27 = qword_10039CCE0;
    if (os_log_type_enabled(qword_10039CCE0, OS_LOG_TYPE_ERROR))
    {
      v28 = v27;
      v29 = [v8 downloadId];
      *buf = 138543362;
      v45 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "STH download record type missing revisions for downloadId %{public}@", buf, 0xCu);
    }
  }
}

- (void)failHeadDownload:(id)a3 failure:(id)a4 logClient:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (qword_10039CCD8 != -1)
  {
    sub_10025EF44();
  }

  v11 = qword_10039CCE0;
  if (os_log_type_enabled(qword_10039CCE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "failing STH downloadId %{public}@", buf, 0xCu);
  }

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10021DA0C;
  v16 = &unk_10032B0D0;
  v17 = self;
  v18 = v9;
  v12 = v9;
  [(TransparencyManagedDataStore *)self performAndWaitForDownloadId:v8 error:0 block:&v13];
  [v10 deleteDownloadId:{v8, v13, v14, v15, v16, v17}];
}

- (id)failedHeadSignaturesWithRevisions:(id)a3 application:(id)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10021A9E0;
  v20 = sub_10021A9F0;
  v21 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10021DCC4;
  v11[3] = &unk_100327098;
  v7 = a4;
  v12 = v7;
  v8 = v6;
  v13 = v8;
  v14 = self;
  v15 = &v16;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v11];
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

- (id)createSignedTreeHeadFailure
{
  v2 = [(TransparencyManagedDataStore *)self context];
  v3 = [NSEntityDescription insertNewObjectForEntityForName:@"KTSTHFailure" inManagedObjectContext:v2];

  return v3;
}

- (id)signedTreeHeadFailures:(id *)a3
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTSTHFailure"];
  v6 = [(TransparencyManagedDataStore *)self context];
  v7 = [v6 executeFetchRequest:v5 error:a3];

  if (a3 && *a3)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTSTHFailure" write:0 code:-128 underlyingError:?];
    [TransparencyManagedDataStore cleanseError:a3];
  }

  return v7;
}

- (unint64_t)signedTreeHeadFailureCount:(id *)a3
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTSTHFailure"];
  v6 = [(TransparencyManagedDataStore *)self context];
  v7 = [v6 countForFetchRequest:v5 error:a3];

  [TransparencyManagedDataStore cleanseError:a3];
  return v7;
}

- (id)createDownloadRecord:(unint64_t)a3 moc:(id)a4 application:(id)a5
{
  v7 = a5;
  v8 = [NSEntityDescription insertNewObjectForEntityForName:@"DownloadRecord" inManagedObjectContext:a4];
  [v8 setUnsigned:"downloadType" value:a3];
  [v8 setApplication:v7];

  v9 = +[NSUUID UUID];
  [v8 setDownloadId:v9];

  [v8 setRequestTime:CFAbsoluteTimeGetCurrent()];

  return v8;
}

- (id)downloadRecords:(id *)a3
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"DownloadRecord"];
  v6 = [(TransparencyManagedDataStore *)self context];
  v7 = [v6 executeFetchRequest:v5 error:a3];

  if (a3 && *a3)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"DownloadRecord" write:0 code:-128 underlyingError:?];
    [TransparencyManagedDataStore cleanseError:a3];
  }

  return v7;
}

- (id)fetchDownloadRecord:(unint64_t)a3 application:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [NSFetchRequest fetchRequestWithEntityName:@"DownloadRecord"];
  v10 = [NSPredicate predicateWithFormat:@"downloadType == %d && application = %@", a3, v8];

  [v9 setPredicate:v10];
  v11 = [(TransparencyManagedDataStore *)self context];
  v12 = [v11 executeFetchRequest:v9 error:a5];

  [TransparencyManagedDataStore cleanseError:a5];
  if (v12 && [v12 count])
  {
    v13 = [v12 objectAtIndexedSubscript:0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)fetchDownloadRecordById:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"DownloadRecord"];
  v8 = [NSPredicate predicateWithFormat:@"downloadId = %@", v6];

  [v7 setPredicate:v8];
  v9 = [(TransparencyManagedDataStore *)self context];
  v10 = [v9 executeFetchRequest:v7 error:a4];

  [TransparencyManagedDataStore cleanseError:a4];
  if (v10 && [v10 count])
  {
    v11 = [v10 objectAtIndexedSubscript:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)hasPendingDownloadForUUID:(id)a3 error:(id *)a4
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10021E5D8;
  v18 = sub_10021E5E8;
  v19 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10021E5F0;
  v9[3] = &unk_100327140;
  v10 = self;
  v5 = a3;
  v11 = v5;
  v12 = &v14;
  v13 = &v20;
  [(TransparencyManagedDataStore *)v10 performBlockAndWait:v9];
  if (a4)
  {
    v6 = v15[5];
    if (v6)
    {
      *a4 = v6;
    }
  }

  v7 = *(v21 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

- (BOOL)setResponse:(id)a3 downloadId:(id)a4 error:(id *)a5
{
  v8 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10021E5D8;
  v24 = sub_10021E5E8;
  v25 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10021E844;
  v14[3] = &unk_10031A230;
  v9 = a4;
  v15 = v9;
  v16 = self;
  v18 = &v20;
  v10 = v8;
  v17 = v10;
  v19 = &v26;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v14];
  if (a5)
  {
    v11 = v21[5];
    if (v11)
    {
      *a5 = v11;
    }
  }

  v12 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v12;
}

- (BOOL)deleteDownloadRecordById:(id)a3 error:(id *)a4
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10021E5D8;
  v22 = sub_10021E5E8;
  v23 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10021ED00;
  v13[3] = &unk_100327140;
  v14 = self;
  v6 = a3;
  v15 = v6;
  v16 = &v18;
  v17 = &v24;
  [(TransparencyManagedDataStore *)v14 performBlockAndWait:v13];
  if (v25[3])
  {
    v7 = 1;
  }

  else
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"DownloadRecord" write:1 code:-190 underlyingError:v19[5]];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10021EDDC;
    v10[3] = &unk_10031A9E0;
    v11 = v6;
    v12 = &v18;
    [(TransparencyManagedDataStore *)self performBlockAndWait:v10];
    if (a4)
    {
      v8 = v19[5];
      if (v8)
      {
        *a4 = v8;
      }
    }

    v7 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v7 & 1;
}

- (BOOL)deleteDownloadRecords:(id)a3 error:(id *)a4
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10021E5D8;
  v22 = sub_10021E5E8;
  v23 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10021F0E8;
  v13[3] = &unk_100327140;
  v6 = a3;
  v14 = v6;
  v15 = self;
  v16 = &v18;
  v17 = &v24;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v13];
  if ((v25[3] & 1) == 0)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"DownloadRecord" write:1 code:-190 underlyingError:v19[5]];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10021F228;
    v10[3] = &unk_10031A9E0;
    v11 = v6;
    v12 = &v18;
    [(TransparencyManagedDataStore *)self performBlockAndWait:v10];
  }

  if (a4)
  {
    v7 = v19[5];
    if (v7)
    {
      *a4 = v7;
    }
  }

  v8 = *(v25 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v8;
}

- (BOOL)deleteDownloadRecord:(unint64_t)a3 application:(id)a4 error:(id *)a5
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10021E5D8;
  v24 = sub_10021E5E8;
  v25 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10021F540;
  v14[3] = &unk_10032AE50;
  v15 = self;
  v19 = a3;
  v7 = a4;
  v16 = v7;
  v17 = &v20;
  v18 = &v26;
  [(TransparencyManagedDataStore *)v15 performBlockAndWait:v14];
  if ((v27[3] & 1) == 0)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"DownloadRecord" write:1 code:-190 underlyingError:v21[5]];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10021F61C;
    v11[3] = &unk_10031A9E0;
    v12 = v7;
    v13 = &v20;
    [(TransparencyManagedDataStore *)self performBlockAndWait:v11];
  }

  if (a5)
  {
    v8 = v21[5];
    if (v8)
    {
      *a5 = v8;
    }
  }

  v9 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v9;
}

- (BOOL)performAndWaitForDownloadId:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10021E5D8;
  v24 = sub_10021E5E8;
  v25 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10021F8C8;
  v15[3] = &unk_100327500;
  v15[4] = self;
  v10 = v8;
  v16 = v10;
  v18 = &v20;
  v11 = v9;
  v17 = v11;
  v19 = &v26;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v15];
  if (a4)
  {
    v12 = v21[5];
    if (v12)
    {
      *a4 = v12;
    }
  }

  v13 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

- (id)createFetchRecord
{
  v2 = [(TransparencyManagedDataStore *)self context];
  v3 = [NSEntityDescription insertNewObjectForEntityForName:@"FetchRecord" inManagedObjectContext:v2];

  return v3;
}

- (id)createFetchRecordForRequestData:(id)a3 request:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(TransparencyManagedDataStore *)self createFetchRecord];
  v11 = +[NSUUID UUID];
  [v10 setFetchId:v11];

  [v10 setRequestData:v9];
  [v10 setRequest:v8];

  if ([(TransparencyManagedDataStore *)self persistWithError:a5])
  {
    v12 = [v10 fetchId];
  }

  else
  {
    v12 = 0;
  }

  [TransparencyManagedDataStore cleanseError:a5];

  return v12;
}

- (id)fetchFetchRecordById:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"FetchRecord"];
  v8 = [NSPredicate predicateWithFormat:@"fetchId = %@", v6];

  [v7 setPredicate:v8];
  v9 = [(TransparencyManagedDataStore *)self context];
  v10 = [v9 executeFetchRequest:v7 error:a4];

  [TransparencyManagedDataStore cleanseError:a4];
  if (v10 && [v10 count])
  {
    v11 = [v10 objectAtIndexedSubscript:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)performAndWaitForFetchId:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10021FDAC;
  v24 = sub_10021FDBC;
  v25 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10021FDC4;
  v15[3] = &unk_100327500;
  v15[4] = self;
  v10 = v8;
  v16 = v10;
  v18 = &v20;
  v11 = v9;
  v17 = v11;
  v19 = &v26;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v15];
  if (a4)
  {
    v12 = v21[5];
    if (v12)
    {
      *a4 = v12;
    }
  }

  v13 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

- (TransparencyManagedDataStore)initWithController:(id)a3 followup:(id)a4 logger:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = TransparencyManagedDataStore;
  v11 = [(TransparencyManagedDataStore *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(TransparencyManagedDataStore *)v11 setController:v8];
    [(TransparencyManagedDataStore *)v12 setLogger:v10];
    v13 = dispatch_queue_create("TransparencyManagedDataStore peerQueue", 0);
    [(TransparencyManagedDataStore *)v12 setPeerQueue:v13];

    [(TransparencyManagedDataStore *)v12 setContextRefCount:0];
    [(TransparencyManagedDataStore *)v12 setFollowup:v9];
    [(TransparencyManagedDataStore *)v12 setServerRPCTimeoutSeconds:kTransparencyMaxmimumServerRPCWaitTime];
  }

  return v12;
}

+ (void)cleanseError:(id *)a3
{
  if (a3)
  {
    *a3 = [SecXPCHelper cleanseErrorForXPC:*a3];
  }
}

- (void)reportCoreDataPersistEventForLocation:(id)a3 underlyingError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TransparencyManagedDataStore *)self logger];
  v9 = [SecXPCHelper cleanseErrorForXPC:v6];

  v11[0] = @"entityType";
  v11[1] = @"write";
  v12[0] = @"Persistence";
  v12[1] = &__kCFBooleanTrue;
  v11[2] = @"location";
  v12[2] = v7;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  [v8 logResultForEvent:@"ktCoreDataEvent" hardFailure:1 result:v9 withAttributes:v10];
}

+ (id)serializeLoggableDatas:(id)a3
{
  v3 = a3;
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v4 encodeObject:v3 forKey:@"loggableDatas"];

  v5 = [v4 encodedData];

  return v5;
}

+ (id)deserializeLoggableDatas:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v6 error:&v18];

  v8 = v18;
  v9 = [a1 supportedClassTypes];
  v17 = v8;
  v10 = [v7 decodeTopLevelObjectOfClasses:v9 forKey:@"loggableDatas" error:&v17];
  v11 = v17;

  if (!v10 && [v11 code] == 4864)
  {
    if (qword_10039CEC8 != -1)
    {
      sub_1002603D0();
    }

    v12 = qword_10039CED0;
    if (os_log_type_enabled(qword_10039CED0, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v14 = [v11 description];
      *buf = 138412290;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to decode loggable data. Error: %@", buf, 0xCu);
    }
  }

  if (a4 && v11)
  {
    v15 = v11;
    *a4 = v11;
  }

  return v10;
}

+ (id)supportedClassTypes
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  return [NSSet setWithObjects:v2, v3, objc_opt_class(), 0];
}

- (void)deleteObject:(id)a3
{
  v4 = a3;
  v5 = [(TransparencyManagedDataStore *)self context];
  [v5 deleteObject:v4];
}

- (void)deleteObjectSet:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(TransparencyManagedDataStore *)self deleteObject:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)clearState:(id *)a3
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10023E0B0;
  v26 = sub_10023E0C0;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v5 = [(TransparencyManagedDataStore *)self controller];
  v6 = [v5 persistentContainer];
  v7 = [v6 managedObjectModel];

  [v7 entities];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10023E0C8;
  v8 = v12[3] = &unk_100327620;
  v13 = v8;
  v14 = &off_10033D958;
  v15 = self;
  v16 = &v22;
  v17 = &v18;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v12];
  if (a3)
  {
    v9 = v23[5];
    if (v9)
    {
      *a3 = v9;
    }
  }

  v10 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

- (BOOL)garbageCollectEntityBatchDelete:(id)a3 predicate:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10023E0B0;
  v30 = sub_10023E0C0;
  v31 = 0;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10023E5A8;
  v21 = &unk_10032CB80;
  v10 = v8;
  v22 = v10;
  v11 = v9;
  v23 = v11;
  v24 = self;
  v25 = &v26;
  [(TransparencyManagedDataStore *)self performBlockAndWaitWithMoc:&v18];
  v12 = v27;
  if (a5)
  {
    v13 = v27[5];
    if (v13)
    {
      *a5 = v13;
      v12 = v27;
    }
  }

  v14 = v12[5];
  if (v14)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:v10 write:1 code:-122 underlyingError:v12[5], v18, v19, v20, v21, v22];
    if (qword_10039CEC8 != -1)
    {
      sub_100260420();
    }

    v15 = qword_10039CED0;
    if (os_log_type_enabled(qword_10039CED0, OS_LOG_TYPE_ERROR))
    {
      v16 = v27[5];
      *buf = 138412546;
      v33 = v10;
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "failed to garbage collect %@: %@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v26, 8);
  return v14 == 0;
}

- (BOOL)garbageCollectEntity:(id)a3 predicate:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10023E0B0;
  v31 = sub_10023E0C0;
  v32 = 0;
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_10023EB04;
  v22 = &unk_10032CBC8;
  v10 = v8;
  v23 = v10;
  v11 = v9;
  v25 = self;
  v26 = &v27;
  v24 = v11;
  [(TransparencyManagedDataStore *)self performBlockAndWaitWithMoc:&v19];
  v12 = v28[5];
  if (v12)
  {
    v13 = [SecXPCHelper cleanseErrorForXPC:v28[5], v19, v20, v21, v22, v23];
    v14 = v28[5];
    v28[5] = v13;

    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:v10 write:1 code:-122 underlyingError:v28[5]];
    if (qword_10039CEC8 != -1)
    {
      sub_100260498();
    }

    v15 = qword_10039CED0;
    if (os_log_type_enabled(qword_10039CED0, OS_LOG_TYPE_ERROR))
    {
      v16 = v28[5];
      *buf = 138412546;
      v34 = v10;
      v35 = 2112;
      v36 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "failed to garbage collect %@: %@", buf, 0x16u);
    }

    if (a5)
    {
      v17 = v28[5];
      if (v17)
      {
        *a5 = v17;
      }
    }
  }

  _Block_object_dispose(&v27, 8);
  return v12 == 0;
}

- (void)storeTTR:(id)a3 withType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_10039CEC8 != -1)
  {
    sub_1002604C0();
  }

  v8 = qword_10039CED0;
  if (os_log_type_enabled(qword_10039CED0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "storeTTR %@, %@", buf, 0x16u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10023EF34;
  v11[3] = &unk_10032CC70;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(TransparencyManagedDataStore *)self performBlockAndWaitWithMoc:v11];
}

- (id)getTapToRadarDate:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10023E0B0;
  v17 = sub_10023E0C0;
  v18 = 0;
  v5 = +[CachedData fetchRequest];
  v6 = [NSPredicate predicateWithFormat:@"key = %@ AND application = %@", @"TapToRadarDate", v4];
  [v5 setPredicate:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10023F4DC;
  v10[3] = &unk_10032CCB8;
  v7 = v5;
  v11 = v7;
  v12 = &v13;
  [(TransparencyManagedDataStore *)self performBlockAndWaitWithMoc:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (unint64_t)onMocCountEntity:(id)a3 predicate:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [NSFetchRequest fetchRequestWithEntityName:a3];
  [v9 setPredicate:v8];

  v10 = [(TransparencyManagedDataStore *)self context];
  v11 = [v10 countForFetchRequest:v9 error:a5];

  [TransparencyManagedDataStore cleanseError:a5];
  return v11;
}

- (BOOL)logMetricsForApplication:(id)a3 error:(id *)a4
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10023E0B0;
  v18 = sub_10023E0C0;
  v19 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10023F888;
  v9[3] = &unk_100327140;
  v10 = self;
  v5 = a3;
  v11 = v5;
  v12 = &v14;
  v13 = &v20;
  [(TransparencyManagedDataStore *)v10 performBlockAndWait:v9];
  if (a4)
  {
    v6 = v15[5];
    if (v6)
    {
      *a4 = v6;
    }
  }

  v7 = *(v21 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

- (void)refaultObject:(id)a3
{
  v4 = a3;
  v5 = [(TransparencyManagedDataStore *)self context];
  [v5 refreshObject:v4 mergeChanges:0];
}

- (void)saveAndRefaultObject:(id)a3
{
  v4 = a3;
  v5 = [(TransparencyManagedDataStore *)self context];
  [v5 refreshObject:v4 mergeChanges:1];
}

- (void)refaultObjects:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a3 allObjects];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = [(TransparencyManagedDataStore *)self context];
        [v10 refreshObject:v9 mergeChanges:0];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (BOOL)persistWithError:(id *)a3
{
  v5 = [(TransparencyManagedDataStore *)self controller];
  v6 = [(TransparencyManagedDataStore *)self context];
  LOBYTE(a3) = [v5 saveContext:v6 error:a3];

  return a3;
}

- (BOOL)persistAndRefaultObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TransparencyManagedDataStore *)self persistWithError:a4];
  if (v7)
  {
    [(TransparencyManagedDataStore *)self refaultObject:v6];
  }

  return v7;
}

- (BOOL)persistAndRefaultObjects:(id)a3 error:(id *)a4
{
  v5 = [(TransparencyManagedDataStore *)self persistWithError:a4];
  if (v5)
  {
    v6 = [(TransparencyManagedDataStore *)self context];
    [v6 refreshAllObjects];
  }

  return v5;
}

- (BOOL)clearStateForApplication:(id)a3 error:(id *)a4
{
  v6 = [NSPredicate predicateWithFormat:@"application = %@", a3];
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTRequest" predicate:v6 error:a4];
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTTreeHead" predicate:v6 error:a4];
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTMutation" predicate:v6 error:a4];

  return 1;
}

- (id)copyStatistics:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10023E0B0;
  v19 = sub_10023E0C0;
  v20 = objc_alloc_init(NSMutableDictionary);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10023E0B0;
  v13 = sub_10023E0C0;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10023FED4;
  v8[3] = &unk_10032CD10;
  v8[4] = self;
  v8[5] = &v15;
  v8[6] = &v9;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v8];
  if (a3)
  {
    v5 = v10[5];
    if (v5)
    {
      *a3 = v5;
    }
  }

  v6 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6;
}

- (void)performOnBatchesOfEntity:(id)a3 predicate:(id)a4 enforceMax:(BOOL)a5 error:(id *)a6 block:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_10023E0B0;
  v41 = sub_10023E0C0;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_10023E0B0;
  v35 = sub_10023E0C0;
  v36 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10024042C;
  v24[3] = &unk_10032CD58;
  v24[4] = self;
  v28 = &v31;
  v15 = v12;
  v25 = v15;
  v16 = v13;
  v26 = v16;
  v30 = a5;
  v17 = v14;
  v27 = v17;
  v29 = &v37;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v24];
  if (v32[5])
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:v15 write:0 code:-211 underlyingError:?];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10024077C;
    v20[3] = &unk_100327288;
    v21 = v15;
    v22 = v16;
    v23 = &v31;
    [(TransparencyManagedDataStore *)self performBlockAndWait:v20];
    if (a6)
    {
      v18 = v32[5];
      if (v18)
      {
        *a6 = v18;
      }
    }
  }

  else if (a6)
  {
    v19 = v38[5];
    if (v19)
    {
      *a6 = v19;
    }
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);
}

- (id)retainContext
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(TransparencyManagedDataStore *)v2 context];

  if (!v3)
  {
    v4 = [(TransparencyManagedDataStore *)v2 controller];
    v5 = [v4 backgroundContext];
    [(TransparencyManagedDataStore *)v2 setContext:v5];
  }

  [(TransparencyManagedDataStore *)v2 setContextRefCount:[(TransparencyManagedDataStore *)v2 contextRefCount]+ 1];
  v6 = [(TransparencyManagedDataStore *)v2 context];
  objc_sync_exit(v2);

  return v6;
}

- (void)releaseContext
{
  obj = self;
  objc_sync_enter(obj);
  [(TransparencyManagedDataStore *)obj setContextRefCount:[(TransparencyManagedDataStore *)obj contextRefCount]- 1];
  if ([(TransparencyManagedDataStore *)obj contextRefCount]<= 0)
  {
    [(TransparencyManagedDataStore *)obj setContext:0];
    [(TransparencyManagedDataStore *)obj setContextRefCount:0];
  }

  objc_sync_exit(obj);
}

- (BOOL)drainDataStore
{
  v3 = 120;
  do
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = [(TransparencyManagedDataStore *)v4 contextRefCount];
    objc_sync_exit(v4);

    sleep(1u);
    if (v3 < 2)
    {
      break;
    }

    --v3;
  }

  while (v5 >= 1);
  return v5 < 1;
}

- (void)performBlockAndWaitWithMoc:(id)a3
{
  v4 = a3;
  [(TransparencyManagedDataStore *)self retainContext];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100240B58;
  v11 = v10 = &unk_10031DB50;
  v12 = v4;
  v5 = v11;
  v6 = v4;
  [v5 performBlockAndWait:&v7];
  [(TransparencyManagedDataStore *)self releaseContext:v7];
}

- (void)performBlockAndWait:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100240C00;
  v5[3] = &unk_10032CDA0;
  v6 = a3;
  v4 = v6;
  [(TransparencyManagedDataStore *)self performBlockAndWaitWithMoc:v5];
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_10023E0B0;
  v10[4] = sub_10023E0C0;
  v11 = os_transaction_create();
  v5 = [(TransparencyManagedDataStore *)self retainContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100240D40;
  v7[3] = &unk_10032CDC8;
  v6 = v4;
  v7[4] = self;
  v8 = v6;
  v9 = v10;
  [v5 performBlock:v7];

  _Block_object_dispose(v10, 8);
}

- (TransparencyManagedDataStoreController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (TransparencyManagedDataStoreProtocol)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

- (TransparencyStaticKeyStore)staticKeyStore
{
  WeakRetained = objc_loadWeakRetained(&self->_staticKeyStore);

  return WeakRetained;
}

- (TransparencyPeerOverrides)peerOverridesStore
{
  WeakRetained = objc_loadWeakRetained(&self->_peerOverridesStore);

  return WeakRetained;
}

@end