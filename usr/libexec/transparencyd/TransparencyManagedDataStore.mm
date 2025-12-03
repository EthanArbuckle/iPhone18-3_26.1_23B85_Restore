@interface TransparencyManagedDataStore
+ (id)deserializeLoggableDatas:(id)datas error:(id *)error;
+ (id)deserializeNSError:(id)error error:(id *)a4;
+ (id)serializeLoggableDatas:(id)datas;
+ (id)serializeNSError:(id)error;
+ (id)supportedClassTypes;
+ (void)cleanseError:(id *)error;
- (BOOL)clearAllFailureEvents:(id)events error:(id *)error;
- (BOOL)clearSelfFailureRelatedData:(id)data uri:(id)uri error:(id *)error;
- (BOOL)clearSelfValidationFollowups:(id)followups uri:(id)uri error:(id *)error;
- (BOOL)clearState:(id *)state;
- (BOOL)clearStateForApplication:(id)application error:(id *)error;
- (BOOL)createFollowupTicket:(id)ticket uri:(id)uri startTime:(id)time error:(id *)error;
- (BOOL)deleteCompletedSingleQueryForUris:(id)uris application:(id)application error:(id *)error;
- (BOOL)deleteDownloadRecord:(unint64_t)record application:(id)application error:(id *)error;
- (BOOL)deleteDownloadRecordById:(id)id error:(id *)error;
- (BOOL)deleteDownloadRecords:(id)records error:(id *)error;
- (BOOL)deleteSMTsWithSPKINotIn:(id)in application:(id)application error:(id *)error;
- (BOOL)deleteSTHs:(id)hs logBeginMsLessThan:(unint64_t)than error:(id *)error;
- (BOOL)deleteServerRPCs:(id)cs error:(id *)error;
- (BOOL)deleteServerRpcById:(id)id error:(id *)error;
- (BOOL)disableCacheHitsForUris:(id)uris application:(id)application error:(id *)error;
- (BOOL)drainDataStore;
- (BOOL)failRpcId:(id)id failure:(id)failure error:(id *)error;
- (BOOL)fetchBooleanPropertyOnMostRecentMapHead:(id)head logBeginMs:(unint64_t)ms propertyName:(id)name error:(id *)error;
- (BOOL)garbageCollectEntity:(id)entity predicate:(id)predicate error:(id *)error;
- (BOOL)garbageCollectEntityBatchDelete:(id)delete predicate:(id)predicate error:(id *)error;
- (BOOL)hasPendingDownloadForUUID:(id)d error:(id *)error;
- (BOOL)hasPendingSingleQueryForUri:(id)uri application:(id)application error:(id *)error;
- (BOOL)ignoreFailureForResults:(id)results error:(id *)error;
- (BOOL)ignoreFailureForUri:(id)uri application:(id)application status:(unint64_t)status error:(id *)error;
- (BOOL)initSelfState:(id)state uri:(id)uri error:(id *)error;
- (BOOL)logMetricsForApplication:(id)application error:(id *)error;
- (BOOL)logRequestMetricsForApplication:(id)application error:(id *)error;
- (BOOL)logSMTMetricsForApplication:(id)application error:(id *)error;
- (BOOL)logSTHMetricsForApplication:(id)application error:(id *)error;
- (BOOL)onMocLogVerificationMetricsForApplication:(id)application error:(id *)error;
- (BOOL)onQueueRemoveFailures:(id)failures error:(id *)error;
- (BOOL)onQueueSetCachedPeerOptInState:(BOOL)state uris:(id)uris application:(id)application error:(id *)error;
- (BOOL)performAndWaitForDeviceId:(id)id application:(id)application error:(id *)error block:(id)block;
- (BOOL)performAndWaitForDownloadId:(id)id error:(id *)error block:(id)block;
- (BOOL)performAndWaitForFailedEventId:(id)id error:(id *)error block:(id)block;
- (BOOL)performAndWaitForFetchId:(id)id error:(id *)error block:(id)block;
- (BOOL)performAndWaitForPeer:(id)peer application:(id)application error:(id *)error block:(id)block;
- (BOOL)performAndWaitForRequestId:(id)id error:(id *)error block:(id)block;
- (BOOL)performAndWaitForRpcId:(id)id error:(id *)error block:(id)block;
- (BOOL)performAndWaitForVerificationId:(id)id error:(id *)error block:(id)block;
- (BOOL)performBlockWithSelfState:(id)state uri:(id)uri error:(id *)error block:(id)block;
- (BOOL)performCheckWithNewestMap:(id)map logBeginMs:(unint64_t)ms error:(id *)error block:(id)block;
- (BOOL)performForPendingSMTs:(id)ts uri:(id)uri error:(id *)error batchSize:(unint64_t)size block:(id)block;
- (BOOL)performForPendingVerfications:(id)verfications uri:(id)uri responseOlderThan:(id)than error:(id *)error batchSize:(unint64_t)size block:(id)block;
- (BOOL)persistAndRefaultObject:(id)object error:(id *)error;
- (BOOL)persistAndRefaultObjects:(id)objects error:(id *)error;
- (BOOL)persistWithError:(id *)error;
- (BOOL)populateExistingRequestsToLookupTable:(id *)table;
- (BOOL)populateMissingLogHeadHashes:(id *)hashes;
- (BOOL)resetPeersToPending:(id)pending error:(id *)error;
- (BOOL)resetPendingRequests:(id)requests error:(id *)error;
- (BOOL)resetVerificationsToPending:(id)pending error:(id *)error;
- (BOOL)setResponse:(id)response downloadId:(id)id error:(id *)error;
- (BOOL)setResponseForRpcId:(id)id response:(id)response responseStatus:(id)status usedReversePush:(BOOL)push serverHint:(id)hint error:(id *)error;
- (BOOL)setSeenDate:(id)date uris:(id)uris application:(id)application error:(id *)error;
- (BOOL)shouldGarbageCollectSMH:(id)h application:(id)application logBeginMs:(unint64_t)ms olderThanRevision:(unint64_t)revision olderThanDate:(id)date;
- (BOOL)shouldGarbageCollectSTH:(id)h application:(id)application logBeginMs:(unint64_t)ms olderThanDate:(id)date;
- (TransparencyManagedDataStore)initWithController:(id)controller followup:(id)followup logger:(id)logger;
- (TransparencyManagedDataStoreController)controller;
- (TransparencyManagedDataStoreProtocol)updateDelegate;
- (TransparencyPeerOverrides)peerOverridesStore;
- (TransparencyStaticKeyStore)staticKeyStore;
- (id)copyStatistics:(id *)statistics;
- (id)createBatchQuery;
- (id)createBatchQuery:(id)query backgroundOpId:(id)id error:(id *)error;
- (id)createDownloadRecord:(unint64_t)record moc:(id)moc application:(id)application;
- (id)createFailureEvent:(id)event application:(id)application optInServer:(id)server;
- (id)createFetchRecord;
- (id)createFetchRecordForRequestData:(id)data request:(id)request error:(id *)error;
- (id)createIDSKTVerification:(id)verification application:(id)application accountKey:(id)key idsResponseTime:(id)time serverLoggableDatas:(id)datas optedIn:(unint64_t)in type:(unint64_t)type syncedLoggableDatas:(id)self0 verificationId:(id)self1 error:(id *)self2;
- (id)createIDSKTVerification:(id)verification application:(id)application onMoc:(id)moc accountKey:(id)key idsResponseTime:(id)time serverLoggableDatas:(id)datas optedIn:(unint64_t)in type:(unint64_t)self0 syncedLoggableDatas:(id)self1 verificationId:(id)self2 error:(id *)self3;
- (id)createIDSKTVerification:(id)verification application:(id)application verificationInfo:(id)info type:(unint64_t)type syncedLoggableDatas:(id)datas verificationId:(id)id error:(id *)error;
- (id)createMapHead;
- (id)createMapHead:(id)head application:(id)application logBeginTime:(unint64_t)time logHeadHash:(id)hash logType:(int64_t)type revision:(unint64_t)revision populating:(BOOL)populating gossip:(BOOL)self0;
- (id)createMutation:(id)mutation application:(id)application uri:(id)uri mutationMs:(unint64_t)ms spkiHash:(id)hash receiptTime:(id)time;
- (id)createPeerState:(id)state application:(id)application error:(id *)error;
- (id)createRecordFromLoggableData:(id)data application:(id)application;
- (id)createRequest;
- (id)createRequestWithUri:(id)uri application:(id)application accountKey:(id)key serverData:(id)data syncedData:(id)syncedData idsResponseTime:(id)time queryRequest:(id)request queryResponse:(id)self0 responseDate:(id)self1 type:(unint64_t)self2 clientId:(id)self3 error:(id *)self4;
- (id)createRequestWithUri:(id)uri application:(id)application accountKey:(id)key serverData:(id)data syncedData:(id)syncedData queryRequest:(id)request queryResponse:(id)response type:(unint64_t)self0 clientId:(id)self1 error:(id *)self2;
- (id)createSignedMutationTimestampsFailure;
- (id)createSignedTreeHeadFailure;
- (id)createSingleQuery;
- (id)createSingleQuery:(id)query backgroundOpId:(id)id error:(id *)error;
- (id)createTreeHead;
- (id)createVerification:(id)verification application:(id)application onMoc:(id)moc verificationInfo:(id)info error:(id *)error;
- (id)downloadRecords:(id *)records;
- (id)failedHeadSignaturesWithRevisions:(id)revisions application:(id)application;
- (id)fetchCompletedRequests:(id)requests olderThan:(id)than error:(id *)error;
- (id)fetchDownloadRecord:(unint64_t)record application:(id)application error:(id *)error;
- (id)fetchDownloadRecordById:(id)id error:(id *)error;
- (id)fetchFetchRecordById:(id)id error:(id *)error;
- (id)fetchLatestSingleQueryByUri:(id)uri application:(id)application error:(id *)error;
- (id)fetchNumericPropertyOnMostRecentMapHead:(id)head logBeginMs:(unint64_t)ms propertyName:(id)name error:(id *)error;
- (id)fetchOrCreateVerification:(id)verification application:(id)application verificationInfo:(id)info fetchNow:(BOOL)now error:(id *)error;
- (id)fetchPeer:(id)peer application:(id)application error:(id *)error;
- (id)fetchRecentFailureEvents:(id)events fetchLimit:(unint64_t)limit error:(id *)error;
- (id)fetchRequestForUUID:(id)d error:(id *)error;
- (id)fetchRequestWithUri:(id)uri application:(id)application accountKey:(id)key loggableDatas:(id)datas youngerThan:(id)than error:(id *)error;
- (id)fetchRequestsForURI:(id)i error:(id *)error;
- (id)fetchServerRpcById:(id)id error:(id *)error;
- (id)getLatestSuccessfulBatchQueryForUri:(id)uri application:(id)application requestYoungerThan:(id)than error:(id *)error;
- (id)getLatestSuccessfulSingleQueryForUri:(id)uri application:(id)application requestYoungerThan:(id)than error:(id *)error;
- (id)getOptInStatus:(id)status application:(id)application error:(id *)error;
- (id)getPendingSmtUris:(id)uris fetchLimit:(unint64_t)limit error:(id *)error;
- (id)getTapToRadarDate:(id)date;
- (id)insertCompletedSingleQuery:(id)query application:(id)application request:(id)request response:(id)response traceUUID:(id)d responseStatus:(int64_t)status serverHint:(id)hint;
- (id)latestConsistencyVerifiedTreeHeadRevision:(id)revision logBeginMs:(unint64_t)ms error:(id *)error;
- (id)latestConsistencyVerifiedTreeHeadSTH:(id)h logBeginMs:(unint64_t)ms error:(id *)error;
- (id)onMocFetchVerificationForVerificationId:(id)id error:(id *)error;
- (id)onMocSetPendingResultForVerification:(id)verification;
- (id)peerVerificationIdForUri:(id)uri application:(id)application verificationInfo:(id)info newerThan:(id)than error:(id *)error;
- (id)pendingVerificationURIs:(id)is fetchLimit:(unint64_t)limit error:(id *)error;
- (id)requestFailures:(id *)failures;
- (id)requestIds:(id *)ids;
- (id)requests:(id *)requests;
- (id)retainContext;
- (id)signedMutationTimestamps:(id *)timestamps;
- (id)signedMutationTimestampsFailures:(id *)failures;
- (id)signedTreeHeadFailures:(id *)failures;
- (id)treeHeads:(id *)heads;
- (id)treeHeadsForApplication:(id)application error:(id *)error;
- (id)unverifiedRevisions:(id)revisions isMapHead:(BOOL)head inclusion:(BOOL)inclusion logBeginMs:(unint64_t)ms error:(id *)error;
- (id)verifierResultForPeer:(id)peer application:(id)application;
- (unint64_t)checkFollowupTicket:(id)ticket uri:(id)uri checkTime:(id)time error:(id *)error;
- (unint64_t)countOutstandingRequestsForApplication:(id)application error:(id *)error;
- (unint64_t)countOutstandingSMHsForApplication:(id)application error:(id *)error;
- (unint64_t)countOutstandingSMTsForApplication:(id)application error:(id *)error;
- (unint64_t)countOutstandingSTHsForApplication:(id)application error:(id *)error;
- (unint64_t)countOutstandingVerificationsForApplication:(id)application error:(id *)error;
- (unint64_t)countTotalRequestsForApplication:(id)application error:(id *)error;
- (unint64_t)countTotalSMTsForApplication:(id)application error:(id *)error;
- (unint64_t)countTotalSTHsForApplication:(id)application error:(id *)error;
- (unint64_t)countTotalVerificationsForApplication:(id)application error:(id *)error;
- (unint64_t)newestMapRevision:(id)revision logBeginMs:(unint64_t)ms error:(id *)error;
- (unint64_t)onMocCountEntity:(id)entity predicate:(id)predicate error:(id *)error;
- (unint64_t)requestCount:(id *)count;
- (unint64_t)requestFailureCount:(id *)count;
- (unint64_t)signedMutationTimestampCount:(id *)count;
- (unint64_t)signedMutationTimestampsFailureCount:(id *)count;
- (unint64_t)signedTreeHeadFailureCount:(id *)count;
- (unint64_t)treeHeadCount:(id *)count;
- (void)clearFailureEvents:(id)events completionBlock:(id)block;
- (void)clearPeerState:(id)state uris:(id)uris error:(id *)error;
- (void)createIDSVerificationID:(id)d verification:(id)verification;
- (void)createKTRequestID:(id)d request:(id)request;
- (void)createSelfValidationState:(id)state uri:(id)uri error:(id *)error;
- (void)deleteNonRecentVerificationsForApplication:(id)application error:(id *)error;
- (void)deleteObject:(id)object;
- (void)deleteObjectSet:(id)set;
- (void)errorsForFailedEvents:(id)events completionBlock:(id)block;
- (void)failHeadDownload:(id)download failure:(id)failure logClient:(id)client;
- (void)failHeadDownloadRecord:(id)record failure:(id)failure error:(id *)error;
- (void)fetchSelfValidationState:(id)state uri:(id)uri error:(id *)error;
- (void)garbageCollectRequests:(id)requests olderThan:(id)than error:(id *)error;
- (void)garbageCollectSMHs:(id)hs logBeginMs:(unint64_t)ms olderThanRevision:(unint64_t)revision olderThanDate:(id)date error:(id *)error;
- (void)garbageCollectSMTs:(id *)ts;
- (void)garbageCollectSTHs:(id)hs logBeginMs:(unint64_t)ms olderThanDate:(id)date error:(id *)error;
- (void)garbageCollectServerRPCs:(id *)cs;
- (void)garbageCollectVerifications:(id *)verifications;
- (void)onMocSetMapHead:(id)head inclusionResult:(unint64_t)result inclusionError:(id)error;
- (void)onMocSetMapHead:(id)head mmdResult:(unint64_t)result mmdError:(id)error;
- (void)onMocSetMapHead:(id)head signatureResult:(unint64_t)result signatureError:(id)error;
- (void)peers:(id)peers;
- (void)performAndWaitForLatestSelfRequest:(id)request accountKey:(id)key block:(id)block;
- (void)performBlock:(id)block;
- (void)performBlockAndWait:(id)wait;
- (void)performBlockAndWaitWithMoc:(id)moc;
- (void)performForPendingSTHs:(id)hs olderThan:(id)than type:(unint64_t)type error:(id *)error block:(id)block;
- (void)performForRequestsWithPendingResponses:(id)responses error:(id *)error block:(id)block;
- (void)performForSMHsWithUnverifiedMMD:(id)d error:(id *)error block:(id)block;
- (void)performForSMTsWithUnverifiedSignature:(id)signature error:(id *)error block:(id)block;
- (void)performForSTHsWithUnverifiedSignature:(id)signature error:(id *)error block:(id)block;
- (void)performOnBatchesOfEntity:(id)entity predicate:(id)predicate enforceMax:(BOOL)max error:(id *)error block:(id)block;
- (void)recalculateVerifierResultForPeer:(id)peer application:(id)application after:(double)after;
- (void)refaultObject:(id)object;
- (void)refaultObjects:(id)objects;
- (void)releaseContext;
- (void)removeFailuresOnOptIn:(id)in;
- (void)reportCoreDataPersistEventForLocation:(id)location underlyingError:(id)error;
- (void)reportFailedRevisions:(id)revisions failure:(id)failure downloadType:(unint64_t)type application:(id)application;
- (void)saveAndRefaultObject:(id)object;
- (void)setCachedPeerOptInState:(BOOL)state uris:(id)uris application:(id)application;
- (void)storeTTR:(id)r withType:(id)type;
- (void)updateIDSCacheWithResults:(id)results;
@end

@implementation TransparencyManagedDataStore

- (id)createPeerState:(id)state application:(id)application error:(id *)error
{
  applicationCopy = application;
  stateCopy = state;
  context = [(TransparencyManagedDataStore *)self context];
  v11 = [NSEntityDescription insertNewObjectForEntityForName:@"PeerState" inManagedObjectContext:context];

  [v11 setUri:stateCopy];
  [v11 setApplication:applicationCopy];

  if ([(TransparencyManagedDataStore *)self persistWithError:error])
  {
    v12 = v11;
  }

  else
  {
    [objc_opt_class() cleanseError:error];
    v12 = 0;
  }

  return v12;
}

- (id)fetchPeer:(id)peer application:(id)application error:(id *)error
{
  applicationCopy = application;
  peerCopy = peer;
  v10 = [NSFetchRequest fetchRequestWithEntityName:@"PeerState"];
  applicationCopy = [NSPredicate predicateWithFormat:@"uri = %@ && application = %@", peerCopy, applicationCopy];

  [v10 setPredicate:applicationCopy];
  context = [(TransparencyManagedDataStore *)self context];
  v13 = [context executeFetchRequest:v10 error:error];

  [objc_opt_class() cleanseError:error];
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

- (BOOL)performAndWaitForPeer:(id)peer application:(id)application error:(id *)error block:(id)block
{
  peerCopy = peer;
  applicationCopy = application;
  blockCopy = block;
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
  v13 = peerCopy;
  v20 = v13;
  v14 = applicationCopy;
  v21 = v14;
  v23 = &v25;
  v15 = blockCopy;
  v22 = v15;
  v24 = &v31;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v19];
  if (error)
  {
    v16 = v26[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = *(v32 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v17;
}

- (BOOL)resetPeersToPending:(id)pending error:(id *)error
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
  selfCopy = self;
  v15 = &v16;
  pendingCopy = pending;
  v14 = pendingCopy;
  [(TransparencyManagedDataStore *)selfCopy performBlockAndWait:v12];
  v6 = v17;
  if (error)
  {
    v7 = v17[5];
    if (v7)
    {
      *error = v7;
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

- (void)peers:(id)peers
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
  selfCopy = self;
  v7 = v8;
  peersCopy = peers;
  v6 = peersCopy;
  [(TransparencyManagedDataStore *)selfCopy performBlockAndWait:v4];

  _Block_object_dispose(v8, 8);
}

- (BOOL)setSeenDate:(id)date uris:(id)uris application:(id)application error:(id *)error
{
  dateCopy = date;
  urisCopy = uris;
  applicationCopy = application;
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
  v13 = urisCopy;
  v23 = v13;
  v14 = applicationCopy;
  v24 = v14;
  v15 = dateCopy;
  v25 = v15;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v22];
  v16 = v28;
  if (error)
  {
    v17 = v28[5];
    if (v17)
    {
      *error = v17;
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

- (void)updateIDSCacheWithResults:(id)results
{
  resultsCopy = results;
  v37 = +[NSMutableArray array];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = resultsCopy;
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
          application = [v9 application];
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
          [(TransparencyManagedDataStore *)self performAndWaitForPeer:v13 application:application error:&v43 block:v42];
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

  updateDelegate = [(TransparencyManagedDataStore *)self updateDelegate];
  [updateDelegate peerVerificationUpdated:v25];
}

- (BOOL)ignoreFailureForResults:(id)results error:(id *)error
{
  resultsCopy = results;
  v26 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [resultsCopy count]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = resultsCopy;
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
        application = [v13 application];
        v16 = -[TransparencyManagedDataStore ignoreFailureForUri:application:status:error:](self, "ignoreFailureForUri:application:status:error:", v14, application, [v13 uiStatus], error);

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
          application2 = [v13 application];
          v22 = [(TransparencyManagedDataStore *)self verifierResultForPeer:v20 application:application2];
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

- (BOOL)ignoreFailureForUri:(id)uri application:(id)application status:(unint64_t)status error:(id *)error
{
  uriCopy = uri;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10001EC30;
  v28 = sub_10001EC40;
  v29 = 0;
  statusCopy = status;
  obj = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002062C;
  v18[3] = &unk_100317FA0;
  v18[4] = self;
  applicationCopy = application;
  v19 = applicationCopy;
  v12 = uriCopy;
  v20 = v12;
  v21 = &v24;
  v13 = [(TransparencyManagedDataStore *)self performAndWaitForPeer:v12 application:applicationCopy error:&obj block:v18];
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
      v31 = applicationCopy;
      v32 = 2160;
      v33 = 1752392040;
      v34 = 2112;
      v35 = v12;
      v36 = 2112;
      v37 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "unable to ignore error for application=%{public}@ uri=%{mask.hash}@: %@", buf, 0x2Au);
    }

    if (error)
    {
      v16 = v25[5];
      if (v16)
      {
        *error = v16;
      }
    }
  }

  _Block_object_dispose(&v24, 8);
  return v13;
}

- (id)getOptInStatus:(id)status application:(id)application error:(id *)error
{
  statusCopy = status;
  applicationCopy = application;
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
  [(TransparencyManagedDataStore *)self performAndWaitForPeer:statusCopy application:applicationCopy error:error block:v12];
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (id)verifierResultForPeer:(id)peer application:(id)application
{
  peerCopy = peer;
  applicationCopy = application;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10001EC30;
  v25 = sub_10001EC40;
  v26 = [[KTVerifierResult alloc] initWithUri:peerCopy application:applicationCopy];
  v19 = &v21;
  v20 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100020C28;
  v16 = &unk_100318030;
  selfCopy = self;
  v8 = peerCopy;
  v18 = v8;
  v9 = [(TransparencyManagedDataStore *)self performAndWaitForPeer:v8 application:applicationCopy error:&v20 block:&v13];
  v10 = v20;
  if ((v9 & 1) == 0)
  {
    [v22[5] setFailure:{v10, v13, v14, v15, v16, selfCopy}];
  }

  v11 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v11;
}

- (void)recalculateVerifierResultForPeer:(id)peer application:(id)application after:(double)after
{
  peerCopy = peer;
  applicationCopy = application;
  objc_initWeak(&location, self);
  v10 = dispatch_time(0, (after * 1000000000.0));
  peerQueue = [(TransparencyManagedDataStore *)self peerQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100020FC4;
  v14[3] = &unk_1003174D8;
  objc_copyWeak(&v17, &location);
  v15 = peerCopy;
  v16 = applicationCopy;
  v12 = applicationCopy;
  v13 = peerCopy;
  dispatch_after(v10, peerQueue, v14);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (id)onMocSetPendingResultForVerification:(id)verification
{
  verificationCopy = verification;
  v5 = [verificationCopy uri];
  application = [verificationCopy application];
  v7 = [[KTVerifierResult alloc] initPendingForUri:v5 application:application];
  serverLoggableDatas = [verificationCopy serverLoggableDatas];
  loggableDatas = [serverLoggableDatas loggableDatas];
  [v7 setLoggableDatas:loggableDatas];

  accountKey = [verificationCopy accountKey];

  if (accountKey)
  {
    accountKey2 = [verificationCopy accountKey];
    v12 = [KTAccountPublicID ktAccountPublicIDWithPublicKeyInfo:accountKey2 error:0];
    [v7 setPublicID:v12];
  }

  peerState = [verificationCopy peerState];
  staticKeyStore = [(TransparencyManagedDataStore *)self staticKeyStore];
  v15 = +[NSDate now];
  [peerState updateResultWithStaticKey:v7 staticKeyStore:staticKeyStore forDate:v15];

  uiStatus = [v7 uiStatus];
  if (uiStatus != [peerState lastIDSCacheUIStatus])
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
      lastIDSCacheUIStatus = [peerState lastIDSCacheUIStatus];
      v25 = 2048;
      uiStatus2 = [v7 uiStatus];
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

  peerOverridesStore = [(TransparencyManagedDataStore *)self peerOverridesStore];
  [peerOverridesStore applyPeerOverrides:v7 peer:peerState];

  [(TransparencyManagedDataStore *)self persistAndRefaultObject:peerState error:0];

  return v7;
}

- (void)clearPeerState:(id)state uris:(id)uris error:(id *)error
{
  stateCopy = state;
  urisCopy = uris;
  v10 = urisCopy;
  if (urisCopy && [urisCopy count])
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
      v18 = stateCopy;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Clearing peer state for %@ for %@", buf, 0x16u);
    }

    [NSPredicate predicateWithFormat:@"application = %@ && uri IN %@", stateCopy, v10];
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
      v18 = stateCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Clearing peer state for %@", buf, 0xCu);
    }

    [NSPredicate predicateWithFormat:@"application = %@", stateCopy, v16];
  }
  v15 = ;
  if ([(TransparencyManagedDataStore *)self garbageCollectEntity:@"PeerState" predicate:v15 error:error]&& [(TransparencyManagedDataStore *)self garbageCollectEntity:@"IDSKTVerification" predicate:v15 error:error])
  {
    [(TransparencyManagedDataStore *)self garbageCollectEntity:@"RPCSingleQuery" predicate:v15 error:error];
  }
}

- (void)setCachedPeerOptInState:(BOOL)state uris:(id)uris application:(id)application
{
  urisCopy = uris;
  applicationCopy = application;
  peerQueue = [(TransparencyManagedDataStore *)self peerQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000216D0;
  v13[3] = &unk_1003180B8;
  stateCopy = state;
  v13[4] = self;
  v14 = urisCopy;
  v15 = applicationCopy;
  v11 = applicationCopy;
  v12 = urisCopy;
  dispatch_async(peerQueue, v13);
}

- (void)removeFailuresOnOptIn:(id)in
{
  inCopy = in;
  peerQueue = [(TransparencyManagedDataStore *)self peerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002179C;
  v7[3] = &unk_1003180E0;
  v7[4] = self;
  v8 = inCopy;
  v6 = inCopy;
  dispatch_async(peerQueue, v7);
}

- (BOOL)onQueueRemoveFailures:(id)failures error:(id *)error
{
  failuresCopy = failures;
  if (qword_10038BC10 != -1)
  {
    sub_100247AF8();
  }

  v7 = qword_10038BC18;
  if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = failuresCopy;
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
  v8 = failuresCopy;
  v16 = v8;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v15];
  v9 = *(&buf + 1);
  if (error)
  {
    v10 = *(*(&buf + 1) + 40);
    if (v10)
    {
      *error = v10;
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

- (BOOL)onQueueSetCachedPeerOptInState:(BOOL)state uris:(id)uris application:(id)application error:(id *)error
{
  urisCopy = uris;
  applicationCopy = application;
  peerQueue = [(TransparencyManagedDataStore *)self peerQueue];
  dispatch_assert_queue_V2(peerQueue);

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
  v13 = urisCopy;
  v32 = v13;
  v14 = applicationCopy;
  v33 = v14;
  stateCopy = state;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v31];
  v15 = v37;
  if (error)
  {
    v16 = v37[5];
    if (v16)
    {
      *error = v16;
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
  context = [(TransparencyManagedDataStore *)self context];
  v3 = [NSEntityDescription insertNewObjectForEntityForName:@"KTTreeHead" inManagedObjectContext:context];

  return v3;
}

- (id)createMapHead:(id)head application:(id)application logBeginTime:(unint64_t)time logHeadHash:(id)hash logType:(int64_t)type revision:(unint64_t)revision populating:(BOOL)populating gossip:(BOOL)self0
{
  hashCopy = hash;
  applicationCopy = application;
  headCopy = head;
  createTreeHead = [(TransparencyManagedDataStore *)self createTreeHead];
  [createTreeHead setSth:headCopy];

  [createTreeHead setIsMapHead:1];
  [createTreeHead setApplication:applicationCopy];

  [createTreeHead setUnsigned:"logBeginTime" value:time];
  [createTreeHead setLogHeadHash:hashCopy];

  [createTreeHead setLogType:type];
  [createTreeHead setUnsigned:"revision" value:revision];
  [createTreeHead setPopulating:populating];
  [createTreeHead setGossip:gossip];
  [createTreeHead setReceiptTime:CFAbsoluteTimeGetCurrent()];
  [createTreeHead setInclusionVerified:2];
  [createTreeHead setConsistencyVerified:1];

  return createTreeHead;
}

- (BOOL)fetchBooleanPropertyOnMostRecentMapHead:(id)head logBeginMs:(unint64_t)ms propertyName:(id)name error:(id *)error
{
  headCopy = head;
  nameCopy = name;
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
  v12 = headCopy;
  v18 = v12;
  msCopy = ms;
  v13 = nameCopy;
  v19 = v13;
  v21 = &v29;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v17];
  if (error)
  {
    v14 = v24[5];
    if (v14)
    {
      *error = v14;
    }
  }

  v15 = *(v30 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

- (id)fetchNumericPropertyOnMostRecentMapHead:(id)head logBeginMs:(unint64_t)ms propertyName:(id)name error:(id *)error
{
  headCopy = head;
  nameCopy = name;
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
  v12 = headCopy;
  v18 = v12;
  msCopy = ms;
  v13 = nameCopy;
  v19 = v13;
  v21 = &v29;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v17];
  if (error)
  {
    v14 = v24[5];
    if (v14)
    {
      *error = v14;
    }
  }

  v15 = v30[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

- (unint64_t)newestMapRevision:(id)revision logBeginMs:(unint64_t)ms error:(id *)error
{
  v13 = 0;
  v6 = [(TransparencyManagedDataStore *)self fetchNumericPropertyOnMostRecentMapHead:revision logBeginMs:ms propertyName:@"revision" error:&v13];
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
    unsignedLongLongValue = [v6 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
    if (error && v7)
    {
      v11 = v7;
      unsignedLongLongValue = 0;
      *error = v8;
    }
  }

  return unsignedLongLongValue;
}

- (BOOL)performCheckWithNewestMap:(id)map logBeginMs:(unint64_t)ms error:(id *)error block:(id)block
{
  mapCopy = map;
  blockCopy = block;
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
  v12 = mapCopy;
  v21 = &v23;
  msCopy = ms;
  v18 = v12;
  v13 = blockCopy;
  v19 = v13;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v17];
  if (error)
  {
    v14 = v28[5];
    if (v14)
    {
      *error = v14;
    }
  }

  v15 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v15;
}

- (void)garbageCollectSMHs:(id)hs logBeginMs:(unint64_t)ms olderThanRevision:(unint64_t)revision olderThanDate:(id)date error:(id *)error
{
  hsCopy = hs;
  dateCopy = date;
  if (qword_10039C730 != -1)
  {
    sub_10025AFEC();
  }

  v14 = qword_10039C738;
  if (os_log_type_enabled(qword_10039C738, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    revisionCopy = revision;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "garbage collecting map heads earlier than revision %llu", buf, 0xCu);
  }

  revision = [NSPredicate predicateWithFormat:@"isMapHead == YES && application == %@ && (revision != %llu && receiptTime < %@ || logBeginTime < %llu || logBeginTime == %llu && signatureVerified != %d && inclusionVerified != %d && mmdVerified != %d && revision < %llu)", hsCopy, revision, dateCopy, ms, ms, 2, 2, 2, revision];
  v19 = 0;
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTTreeHead" predicate:revision error:&v19];
  v16 = v19;
  v17 = v16;
  if (error && v16)
  {
    v18 = v16;
    *error = v17;
  }
}

- (BOOL)shouldGarbageCollectSMH:(id)h application:(id)application logBeginMs:(unint64_t)ms olderThanRevision:(unint64_t)revision olderThanDate:(id)date
{
  hCopy = h;
  applicationCopy = application;
  dateCopy = date;
  if ([hCopy isMapHead])
  {
    revision = [NSPredicate predicateWithFormat:@"isMapHead == YES && application == %@ && (revision != %llu && receiptTime < %@ || logBeginTime < %llu || logBeginTime == %llu && signatureVerified != %d && inclusionVerified != %d && mmdVerified != %d && revision < %llu)", applicationCopy, revision, dateCopy, ms, ms, 2, 2, 2, revision];
    v15 = [revision evaluateWithObject:hCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)onMocSetMapHead:(id)head signatureResult:(unint64_t)result signatureError:(id)error
{
  headCopy = head;
  errorCopy = error;
  [headCopy setUnsigned:"signatureVerified" value:result];
  if (errorCopy)
  {
    createSignedTreeHeadFailure = [(TransparencyManagedDataStore *)self createSignedTreeHeadFailure];
    [createSignedTreeHeadFailure setErrorCode:{objc_msgSend(errorCopy, "code")}];
    domain = [errorCopy domain];
    [createSignedTreeHeadFailure setErrorDomain:domain];

    [createSignedTreeHeadFailure setSth:headCopy];
    [createSignedTreeHeadFailure setVerificationType:0];
  }

  if (result == 1 && [headCopy inclusionVerified] == 1 && objc_msgSend(headCopy, "mmdVerified") == 1)
  {
    updateDelegate = [(TransparencyManagedDataStore *)self updateDelegate];
    application = [headCopy application];
    [updateDelegate mapHeadUpdated:application populating:{objc_msgSend(headCopy, "populating")}];
  }
}

- (void)onMocSetMapHead:(id)head mmdResult:(unint64_t)result mmdError:(id)error
{
  headCopy = head;
  errorCopy = error;
  [headCopy setUnsigned:"mmdVerified" value:result];
  if (errorCopy)
  {
    createSignedTreeHeadFailure = [(TransparencyManagedDataStore *)self createSignedTreeHeadFailure];
    [createSignedTreeHeadFailure setErrorCode:{objc_msgSend(errorCopy, "code")}];
    domain = [errorCopy domain];
    [createSignedTreeHeadFailure setErrorDomain:domain];

    [createSignedTreeHeadFailure setSth:headCopy];
    [createSignedTreeHeadFailure setVerificationType:3];
  }

  if ([headCopy signatureVerified] == 1)
  {
    inclusionVerified = [headCopy inclusionVerified];
    if (result == 1 && inclusionVerified == 1)
    {
      updateDelegate = [(TransparencyManagedDataStore *)self updateDelegate];
      application = [headCopy application];
      [updateDelegate mapHeadUpdated:application populating:{objc_msgSend(headCopy, "populating")}];
    }
  }
}

- (void)onMocSetMapHead:(id)head inclusionResult:(unint64_t)result inclusionError:(id)error
{
  headCopy = head;
  errorCopy = error;
  [headCopy setUnsigned:"inclusionVerified" value:result];
  if (errorCopy)
  {
    createSignedTreeHeadFailure = [(TransparencyManagedDataStore *)self createSignedTreeHeadFailure];
    [createSignedTreeHeadFailure setErrorCode:{objc_msgSend(errorCopy, "code")}];
    domain = [errorCopy domain];
    [createSignedTreeHeadFailure setErrorDomain:domain];

    [createSignedTreeHeadFailure setSth:headCopy];
    [createSignedTreeHeadFailure setVerificationType:1];
  }

  signatureVerified = [headCopy signatureVerified];
  if (result == 1 && signatureVerified == 1 && [headCopy mmdVerified] == 1)
  {
    updateDelegate = [(TransparencyManagedDataStore *)self updateDelegate];
    application = [headCopy application];
    [updateDelegate mapHeadUpdated:application populating:{objc_msgSend(headCopy, "populating")}];
  }
}

- (void)createSelfValidationState:(id)state uri:(id)uri error:(id *)error
{
  stateCopy = state;
  uriCopy = uri;
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
  v10 = stateCopy;
  v16 = v10;
  v11 = uriCopy;
  v17 = v11;
  v19 = &v20;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v15];
  if (error)
  {
    v12 = v21[5];
    if (v12)
    {
      *error = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-129 errorLevel:1 underlyingError:v12 description:@"couldn't create self state"];
    }
  }

  v13 = v27[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

- (void)fetchSelfValidationState:(id)state uri:(id)uri error:(id *)error
{
  stateCopy = state;
  uriCopy = uri;
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
  v10 = stateCopy;
  v16 = v10;
  v11 = uriCopy;
  v17 = v11;
  v19 = &v26;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v15];
  if (error)
  {
    v12 = v21[5];
    if (v12)
    {
      *error = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-128 errorLevel:1 underlyingError:v12 description:@"couldn't fetch self state"];
    }
  }

  v13 = v27[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

- (BOOL)initSelfState:(id)state uri:(id)uri error:(id *)error
{
  stateCopy = state;
  uriCopy = uri;
  v16 = 0;
  v10 = [(TransparencyManagedDataStore *)self fetchSelfValidationState:stateCopy uri:uriCopy error:&v16];
  v11 = v16;
  if (!v10)
  {
    v15 = 0;
    v10 = [(TransparencyManagedDataStore *)self createSelfValidationState:stateCopy uri:uriCopy error:&v15];
    v12 = v15;

    v11 = v12;
  }

  if (error && v11)
  {
    v13 = v11;
    *error = v11;
  }

  return v10 != 0;
}

- (BOOL)performBlockWithSelfState:(id)state uri:(id)uri error:(id *)error block:(id)block
{
  stateCopy = state;
  uriCopy = uri;
  blockCopy = block;
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
  v13 = stateCopy;
  v20 = v13;
  v14 = uriCopy;
  v21 = v14;
  v23 = &v29;
  v24 = &v25;
  v15 = blockCopy;
  v22 = v15;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v19];
  if (error)
  {
    v16 = v30[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = *(v26 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  return v17;
}

- (BOOL)createFollowupTicket:(id)ticket uri:(id)uri startTime:(id)time error:(id *)error
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001B38A8;
  v15[3] = &unk_100326428;
  timeCopy = time;
  v10 = timeCopy;
  uriCopy = uri;
  ticketCopy = ticket;
  v13 = objc_retainBlock(v15);
  LOBYTE(error) = [(TransparencyManagedDataStore *)self performBlockWithSelfState:ticketCopy uri:uriCopy error:error block:v13];

  return error;
}

- (unint64_t)checkFollowupTicket:(id)ticket uri:(id)uri checkTime:(id)time error:(id *)error
{
  ticketCopy = ticket;
  uriCopy = uri;
  timeCopy = time;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001B3A88;
  v22[3] = &unk_100326450;
  v13 = ticketCopy;
  v23 = v13;
  v14 = uriCopy;
  v24 = v14;
  v15 = timeCopy;
  v25 = v15;
  v16 = objc_retainBlock(v22);
  v21 = 0;
  v17 = [(TransparencyManagedDataStore *)self performBlockWithSelfState:v13 uri:v14 error:&v21 block:v16];
  v18 = v21;
  if (v18)
  {
    if (error)
    {
      v18 = v18;
      v19 = 0;
      *error = v18;
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
  context = [(TransparencyManagedDataStore *)self context];
  v3 = [NSEntityDescription insertNewObjectForEntityForName:@"RPCBatchQuery" inManagedObjectContext:context];

  [v3 setRpcType:1];

  return v3;
}

- (id)createSingleQuery
{
  context = [(TransparencyManagedDataStore *)self context];
  v3 = [NSEntityDescription insertNewObjectForEntityForName:@"RPCSingleQuery" inManagedObjectContext:context];

  [v3 setRpcType:0];

  return v3;
}

- (id)createBatchQuery:(id)query backgroundOpId:(id)id error:(id *)error
{
  idCopy = id;
  queryCopy = query;
  createBatchQuery = [(TransparencyManagedDataStore *)self createBatchQuery];
  application = [queryCopy application];
  data = [queryCopy data];
  v13 = [(TransparencyManagedDataStore *)self initializeServerRPC:createBatchQuery application:application backgroundOpId:idCopy request:data];

  uriArray = [queryCopy uriArray];

  v15 = [NSArray arrayWithArray:uriArray];
  [createBatchQuery setUris:v15];

  if ([(TransparencyManagedDataStore *)self persistWithError:error])
  {
    rpcId = [createBatchQuery rpcId];
  }

  else
  {
    rpcId = 0;
  }

  [TransparencyManagedDataStore cleanseError:error];

  return rpcId;
}

- (id)createSingleQuery:(id)query backgroundOpId:(id)id error:(id *)error
{
  idCopy = id;
  queryCopy = query;
  createSingleQuery = [(TransparencyManagedDataStore *)self createSingleQuery];
  application = [queryCopy application];
  data = [queryCopy data];
  v13 = [(TransparencyManagedDataStore *)self initializeServerRPC:createSingleQuery application:application backgroundOpId:idCopy request:data];

  v14 = [queryCopy uri];

  v15 = [NSString stringWithString:v14];
  [createSingleQuery setUri:v15];

  if ([(TransparencyManagedDataStore *)self persistWithError:error])
  {
    rpcId = [createSingleQuery rpcId];
  }

  else
  {
    rpcId = 0;
  }

  [TransparencyManagedDataStore cleanseError:error];

  return rpcId;
}

- (id)insertCompletedSingleQuery:(id)query application:(id)application request:(id)request response:(id)response traceUUID:(id)d responseStatus:(int64_t)status serverHint:(id)hint
{
  dCopy = d;
  hintCopy = hint;
  responseCopy = response;
  requestCopy = request;
  applicationCopy = application;
  context = [(TransparencyManagedDataStore *)self context];
  v20 = [NSEntityDescription insertNewObjectForEntityForName:@"RPCSingleQuery" inManagedObjectContext:context];

  [v20 setRpcType:0];
  [v20 setRequest:requestCopy];

  [v20 setResponse:responseCopy];
  [v20 setResponseStatus:status];
  v21 = +[NSDate date];
  [v20 setResponseTime:v21];

  v22 = +[NSUUID UUID];
  [v20 setRpcId:v22];

  [v20 setApplication:applicationCopy];
  [v20 setServerHint:hintCopy];

  [v20 setUsedReversePush:1];
  if (status == 7 || status == 1)
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
      rpcId = [v20 rpcId];
      v30 = 138412802;
      v31 = rpcId;
      v32 = 2048;
      rpcType = [v20 rpcType];
      v34 = 2112;
      rpcType2 = dCopy;
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
      responseStatus = [v20 responseStatus];
      rpcId2 = [v20 rpcId];
      v30 = 134218754;
      v31 = responseStatus;
      v32 = 2112;
      rpcType = rpcId2;
      v34 = 2048;
      rpcType2 = [v20 rpcType];
      v36 = 2112;
      v37 = dCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "CompletedRPC failed. responseStatus: %lld, rpcId: %@, rpcType: %lld %@", &v30, 0x2Au);

      goto LABEL_11;
    }
  }

  return v20;
}

- (BOOL)deleteServerRpcById:(id)id error:(id *)error
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
  selfCopy = self;
  idCopy = id;
  v15 = idCopy;
  v16 = &v18;
  v17 = &v24;
  [(TransparencyManagedDataStore *)selfCopy performBlockAndWait:v13];
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
    v11 = idCopy;
    v12 = &v18;
    [(TransparencyManagedDataStore *)self performBlockAndWait:v10];
    if (error)
    {
      v8 = v19[5];
      if (v8)
      {
        *error = v8;
      }
    }

    v7 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v7 & 1;
}

- (id)fetchServerRpcById:(id)id error:(id *)error
{
  idCopy = id;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"ServerRPC"];
  idCopy = [NSPredicate predicateWithFormat:@"rpcId = %@", idCopy];

  [v7 setPredicate:idCopy];
  context = [(TransparencyManagedDataStore *)self context];
  v10 = [context executeFetchRequest:v7 error:error];

  [TransparencyManagedDataStore cleanseError:error];
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

- (id)fetchLatestSingleQueryByUri:(id)uri application:(id)application error:(id *)error
{
  applicationCopy = application;
  uriCopy = uri;
  v10 = [NSFetchRequest fetchRequestWithEntityName:@"RPCSingleQuery"];
  uriCopy = [NSPredicate predicateWithFormat:@"application = %@ && uri = %@", applicationCopy, uriCopy];

  [v10 setPredicate:uriCopy];
  v12 = [NSSortDescriptor sortDescriptorWithKey:@"requestTime" ascending:0];
  v18 = v12;
  v13 = [NSArray arrayWithObjects:&v18 count:1];
  [v10 setSortDescriptors:v13];

  [v10 setFetchLimit:1];
  context = [(TransparencyManagedDataStore *)self context];
  v15 = [context executeFetchRequest:v10 error:error];

  [TransparencyManagedDataStore cleanseError:error];
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

- (BOOL)performAndWaitForRpcId:(id)id error:(id *)error block:(id)block
{
  idCopy = id;
  blockCopy = block;
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
  v10 = idCopy;
  v16 = v10;
  v18 = &v20;
  v11 = blockCopy;
  v17 = v11;
  v19 = &v26;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v15];
  if (error)
  {
    v12 = v21[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

- (BOOL)failRpcId:(id)id failure:(id)failure error:(id *)error
{
  idCopy = id;
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
  failureCopy = failure;
  v17 = failureCopy;
  selfCopy = self;
  v19 = &v21;
  [(TransparencyManagedDataStore *)self performAndWaitForRpcId:idCopy error:&obj block:v16];
  objc_storeStrong(&v26, obj);
  v10 = (v22 + 5);
  v15 = v22[5];
  [TransparencyManagedDataStore cleanseError:&v15];
  objc_storeStrong(v10, v15);
  v11 = v22;
  if (error)
  {
    v12 = v22[5];
    if (v12)
    {
      *error = v12;
      v11 = v22;
    }
  }

  v13 = v11[5] == 0;

  _Block_object_dispose(&v21, 8);
  return v13;
}

- (BOOL)setResponseForRpcId:(id)id response:(id)response responseStatus:(id)status usedReversePush:(BOOL)push serverHint:(id)hint error:(id *)error
{
  idCopy = id;
  responseCopy = response;
  statusCopy = status;
  hintCopy = hint;
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
  v18 = responseCopy;
  v28 = v18;
  v19 = statusCopy;
  v29 = v19;
  pushCopy = push;
  v20 = hintCopy;
  v30 = v20;
  selfCopy = self;
  v32 = &v35;
  [(TransparencyManagedDataStore *)self performAndWaitForRpcId:idCopy error:&obj block:v27];
  objc_storeStrong(&v40, obj);
  v21 = (v36 + 5);
  v26 = v36[5];
  [TransparencyManagedDataStore cleanseError:&v26];
  objc_storeStrong(v21, v26);
  v22 = v36;
  if (error)
  {
    v23 = v36[5];
    if (v23)
    {
      *error = v23;
      v22 = v36;
    }
  }

  v24 = v22[5] == 0;

  _Block_object_dispose(&v35, 8);
  return v24;
}

- (id)getLatestSuccessfulSingleQueryForUri:(id)uri application:(id)application requestYoungerThan:(id)than error:(id *)error
{
  uriCopy = uri;
  applicationCopy = application;
  thanCopy = than;
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
    v41 = uriCopy;
    v42 = 2112;
    v43 = thanCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "getting successful ServerRPC for %{mask.hash}@ younger than %@", buf, 0x20u);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001CC81C;
  v20[3] = &unk_1003275F8;
  v14 = uriCopy;
  v21 = v14;
  v15 = applicationCopy;
  v22 = v15;
  v16 = thanCopy;
  v23 = v16;
  v24 = &v26;
  v25 = &v32;
  [(TransparencyManagedDataStore *)self performBlockAndWaitWithMoc:v20];
  if (error)
  {
    v17 = v27[5];
    if (v17)
    {
      *error = v17;
    }
  }

  v18 = v33[5];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v18;
}

- (id)getLatestSuccessfulBatchQueryForUri:(id)uri application:(id)application requestYoungerThan:(id)than error:(id *)error
{
  uriCopy = uri;
  applicationCopy = application;
  thanCopy = than;
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
  v13 = applicationCopy;
  v20 = v13;
  v14 = thanCopy;
  v21 = v14;
  selfCopy = self;
  v24 = &v26;
  v15 = uriCopy;
  v23 = v15;
  v25 = &v32;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v19];
  if (error)
  {
    v16 = v27[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = v33[5];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v17;
}

- (BOOL)hasPendingSingleQueryForUri:(id)uri application:(id)application error:(id *)error
{
  uriCopy = uri;
  applicationCopy = application;
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
  v10 = uriCopy;
  v18 = v10;
  v11 = applicationCopy;
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

  if (error)
  {
    v14 = v27[5];
    if (v14)
    {
      *error = v14;
    }
  }

  v15 = v23[3] != 0;

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v15;
}

- (void)garbageCollectServerRPCs:(id *)cs
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
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"RPCSingleQuery" predicate:v7 error:cs];
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"RPCBatchQuery" predicate:v7 error:cs];
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

  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"RPCSingleQuery" predicate:v10 error:cs];
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"RPCBatchQuery" predicate:v10 error:cs];
}

- (BOOL)deleteServerRPCs:(id)cs error:(id *)error
{
  csCopy = cs;
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

  csCopy = [NSPredicate predicateWithFormat:@"application == %@", csCopy];
  v9 = [(TransparencyManagedDataStore *)self garbageCollectEntity:@"ServerRPC" predicate:csCopy error:error];

  return v9;
}

- (BOOL)deleteCompletedSingleQueryForUris:(id)uris application:(id)application error:(id *)error
{
  urisCopy = uris;
  applicationCopy = application;
  if (qword_10039C948 != -1)
  {
    sub_10025C348();
  }

  v10 = qword_10039C950;
  if (os_log_type_enabled(qword_10039C950, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [urisCopy componentsJoinedByString:{@", "}];
    *buf = 141558274;
    v17 = 1752392040;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Deleting cached server RPCs for %{mask.hash}@", buf, 0x16u);
  }

  v13 = [NSPredicate predicateWithFormat:@"uri IN %@ && application == %@ && state != %@", urisCopy, applicationCopy, &off_10033CFA8];
  v14 = [(TransparencyManagedDataStore *)self garbageCollectEntity:@"RPCSingleQuery" predicate:v13 error:error];

  return v14;
}

- (id)createIDSKTVerification:(id)verification application:(id)application accountKey:(id)key idsResponseTime:(id)time serverLoggableDatas:(id)datas optedIn:(unint64_t)in type:(unint64_t)type syncedLoggableDatas:(id)self0 verificationId:(id)self1 error:(id *)self2
{
  verificationCopy = verification;
  applicationCopy = application;
  keyCopy = key;
  timeCopy = time;
  datasCopy = datas;
  loggableDatasCopy = loggableDatas;
  idCopy = id;
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
  v24 = verificationCopy;
  v36 = v24;
  v25 = applicationCopy;
  v37 = v25;
  v26 = keyCopy;
  v38 = v26;
  v27 = timeCopy;
  v39 = v27;
  v28 = datasCopy;
  v40 = v28;
  inCopy = in;
  typeCopy = type;
  v29 = loggableDatasCopy;
  v41 = v29;
  v30 = idCopy;
  v42 = v30;
  v43 = &v47;
  v44 = &v53;
  [(TransparencyManagedDataStore *)self performBlockAndWaitWithMoc:v35];
  if (error)
  {
    v31 = v48[5];
    if (v31)
    {
      *error = v31;
    }
  }

  v32 = v54[5];

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);

  return v32;
}

- (id)createIDSKTVerification:(id)verification application:(id)application onMoc:(id)moc accountKey:(id)key idsResponseTime:(id)time serverLoggableDatas:(id)datas optedIn:(unint64_t)in type:(unint64_t)self0 syncedLoggableDatas:(id)self1 verificationId:(id)self2 error:(id *)self3
{
  verificationCopy = verification;
  applicationCopy = application;
  keyCopy = key;
  timeCopy = time;
  v22 = keyCopy;
  v23 = timeCopy;
  loggableDatasCopy = loggableDatas;
  idCopy = id;
  datasCopy = datas;
  v26 = [NSEntityDescription insertNewObjectForEntityForName:@"IDSKTVerification" inManagedObjectContext:moc];
  v27 = +[NSDate now];
  [v26 setCreationTime:v27];

  [v26 setUri:verificationCopy];
  [v26 setApplication:applicationCopy];
  [v26 setAccountKey:v22];
  [v26 setUnsigned:"idsOptedIn" value:in];
  if (v23)
  {
    [v26 setIdsResponseTime:v23];
  }

  else
  {
    creationTime = [v26 creationTime];
    [v26 setIdsResponseTime:creationTime];
  }

  v29 = [[KTLoggableDataArray alloc] initWithLoggableDatas:datasCopy];

  [v26 setServerLoggableDatas:v29];
  [v26 setUnsigned:"type" value:type];
  if (loggableDatasCopy)
  {
    v30 = [[KTLoggableDataArray alloc] initWithLoggableDatas:loggableDatasCopy];
    [v26 setSyncedLoggableDatas:v30];
  }

  v31 = idCopy;
  if (idCopy)
  {
    [v26 setVerificationId:idCopy];
  }

  else
  {
    v32 = +[NSUUID UUID];
    [v26 setVerificationId:v32];
  }

  verificationId = [v26 verificationId];
  [(TransparencyManagedDataStore *)self createIDSVerificationID:verificationId verification:v26];

  v78 = 0;
  v34 = [(TransparencyManagedDataStore *)self fetchPeer:verificationCopy application:applicationCopy error:&v78];
  v35 = v78;
  v36 = v35;
  if (v34 || (v77 = v35, [(TransparencyManagedDataStore *)self createPeerState:verificationCopy application:applicationCopy error:&v77], v34 = objc_claimAutoreleasedReturnValue(), v37 = v77, v38 = v36, v36 = v37, v38, v34))
  {
    v75 = loggableDatasCopy;
    [v26 setPeerState:v34];
    mostRecentVerification = [v34 mostRecentVerification];

    v73 = v36;
    if (!mostRecentVerification)
    {
      goto LABEL_23;
    }

    if (v23)
    {
      mostRecentVerification2 = [v34 mostRecentVerification];
      idsResponseTime = [mostRecentVerification2 idsResponseTime];
      if (idsResponseTime)
      {
        v42 = idsResponseTime;
        mostRecentVerification3 = [v34 mostRecentVerification];
        [mostRecentVerification3 idsResponseTime];
        v44 = v22;
        v45 = applicationCopy;
        v47 = v46 = verificationCopy;
        v70 = [v47 compare:v23];

        verificationCopy = v46;
        applicationCopy = v45;
        v22 = v44;

        v31 = idCopy;
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

    mostRecentVerification4 = [v34 mostRecentVerification];
    idsResponseTime2 = [mostRecentVerification4 idsResponseTime];
    if (idsResponseTime2)
    {

      goto LABEL_29;
    }

    mostRecentVerification5 = [v34 mostRecentVerification];
    creationTime2 = [mostRecentVerification5 creationTime];
    [v26 creationTime];
    v54 = v23;
    v55 = v22;
    v56 = applicationCopy;
    v58 = v57 = verificationCopy;
    v71 = [creationTime2 compare:v58];

    verificationCopy = v57;
    applicationCopy = v56;
    v22 = v55;
    v23 = v54;
    v36 = v73;

    v31 = idCopy;
    if (v71 != -1)
    {
      goto LABEL_29;
    }

LABEL_23:
    [v26 setPeerStateMostRecent:v34];
    mostRecentSuccess = [v34 mostRecentSuccess];

    if (mostRecentSuccess)
    {
      mostRecentSuccess2 = [v34 mostRecentSuccess];
      accountKey = [mostRecentSuccess2 accountKey];
      if ([accountKey isEqual:v22])
      {
        mostRecentSuccess3 = [v34 mostRecentSuccess];
        serverLoggableDatas = [mostRecentSuccess3 serverLoggableDatas];
        [v26 serverLoggableDatas];
        v72 = v23;
        v64 = v22;
        v65 = applicationCopy;
        v67 = v66 = verificationCopy;
        v69 = [serverLoggableDatas isEqual:v67];

        verificationCopy = v66;
        applicationCopy = v65;
        v22 = v64;
        v23 = v72;

        v31 = idCopy;
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

    loggableDatasCopy = v75;
    goto LABEL_30;
  }

  v48 = 0;
  if (error && v36)
  {
    v49 = v36;
    v48 = 0;
    *error = v36;
  }

LABEL_30:

  return v48;
}

- (id)createIDSKTVerification:(id)verification application:(id)application verificationInfo:(id)info type:(unint64_t)type syncedLoggableDatas:(id)datas verificationId:(id)id error:(id *)error
{
  idCopy = id;
  datasCopy = datas;
  infoCopy = info;
  applicationCopy = application;
  verificationCopy = verification;
  accountKey = [infoCopy accountKey];
  idsResponseTime = [infoCopy idsResponseTime];
  serverLoggableDatas = [infoCopy serverLoggableDatas];
  optedIn = [infoCopy optedIn];

  v22 = [(TransparencyManagedDataStore *)self createIDSKTVerification:verificationCopy application:applicationCopy accountKey:accountKey idsResponseTime:idsResponseTime serverLoggableDatas:serverLoggableDatas optedIn:optedIn type:type syncedLoggableDatas:datasCopy verificationId:idCopy error:error];

  return v22;
}

- (id)onMocFetchVerificationForVerificationId:(id)id error:(id *)error
{
  idCopy = id;
  v7 = +[KTRequestID fetchRequest];
  idCopy = [NSPredicate predicateWithFormat:@"requestId == %@", idCopy];

  [v7 setPredicate:idCopy];
  [v7 setRelationshipKeyPathsForPrefetching:&off_10033D820];
  context = [(TransparencyManagedDataStore *)self context];
  v10 = [context executeFetchRequest:v7 error:error];

  [TransparencyManagedDataStore cleanseError:error];
  if ([v10 count])
  {
    v11 = [v10 objectAtIndexedSubscript:0];
    idsKTVerification = [v11 idsKTVerification];
  }

  else
  {
    idsKTVerification = 0;
  }

  return idsKTVerification;
}

- (BOOL)performAndWaitForVerificationId:(id)id error:(id *)error block:(id)block
{
  idCopy = id;
  blockCopy = block;
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
  v10 = idCopy;
  v16 = v10;
  v18 = &v20;
  v11 = blockCopy;
  v17 = v11;
  v19 = &v26;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v15];
  if (error)
  {
    v12 = v21[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

- (BOOL)resetVerificationsToPending:(id)pending error:(id *)error
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
  selfCopy = self;
  v16 = &v17;
  pendingCopy = pending;
  v15 = pendingCopy;
  [(TransparencyManagedDataStore *)selfCopy performBlockAndWait:v13];
  v7 = v18;
  if (error)
  {
    v8 = v18[5];
    if (v8)
    {
      *error = v8;
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
    v11 = [(TransparencyManagedDataStore *)self resetPeersToPending:pendingCopy error:error];
  }

  _Block_object_dispose(&v17, 8);
  return v11;
}

- (BOOL)performForPendingVerfications:(id)verfications uri:(id)uri responseOlderThan:(id)than error:(id *)error batchSize:(unint64_t)size block:(id)block
{
  verficationsCopy = verfications;
  uriCopy = uri;
  thanCopy = than;
  blockCopy = block;
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
  v18 = uriCopy;
  v28 = v18;
  v19 = verficationsCopy;
  v29 = v19;
  v20 = thanCopy;
  v30 = v20;
  sizeCopy = size;
  v21 = blockCopy;
  v31 = v21;
  v33 = &v41;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v27];
  if (error)
  {
    v22 = v36[5];
    if (v22)
    {
      *error = v22;
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

- (id)pendingVerificationURIs:(id)is fetchLimit:(unint64_t)limit error:(id *)error
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
  selfCopy = self;
  v14 = &v17;
  isCopy = is;
  v15 = &v23;
  limitCopy = limit;
  v13 = isCopy;
  [(TransparencyManagedDataStore *)selfCopy performBlockAndWait:v11];
  if (error)
  {
    v8 = v18[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v9;
}

- (id)peerVerificationIdForUri:(id)uri application:(id)application verificationInfo:(id)info newerThan:(id)than error:(id *)error
{
  uriCopy = uri;
  applicationCopy = application;
  infoCopy = info;
  thanCopy = than;
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
  serverLoggableDatas = [infoCopy serverLoggableDatas];
  v18 = [(KTLoggableDataArray *)v16 initWithLoggableDatas:serverLoggableDatas];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001DB964;
  v27[3] = &unk_100327CA8;
  v19 = applicationCopy;
  v28 = v19;
  v20 = uriCopy;
  v29 = v20;
  v21 = thanCopy;
  v30 = v21;
  v22 = infoCopy;
  v31 = v22;
  v34 = &v36;
  v23 = v18;
  v35 = &v42;
  v32 = v23;
  selfCopy = self;
  [(TransparencyManagedDataStore *)self performBlockAndWaitWithMoc:v27];
  if (error)
  {
    v24 = v37[5];
    if (v24)
    {
      *error = v24;
    }
  }

  v25 = v43[5];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v25;
}

- (id)fetchOrCreateVerification:(id)verification application:(id)application verificationInfo:(id)info fetchNow:(BOOL)now error:(id *)error
{
  nowCopy = now;
  verificationCopy = verification;
  applicationCopy = application;
  infoCopy = info;
  if (nowCopy)
  {
    v15 = [(TransparencyManagedDataStore *)self createPeerIDSKTVerification:verificationCopy application:applicationCopy verificationInfo:infoCopy error:error];
    logger = [(TransparencyManagedDataStore *)self logger];
    v17 = [TransparencyAnalytics formatEventName:@"CacheVerifyFetch" application:applicationCopy];
    [logger logSuccessForEventNamed:v17];

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
      v35 = verificationCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "created verificationId %{public}@ for %{mask.hash}@ because fetchNow", &v30, 0x20u);
    }

    v19 = v15;
  }

  else
  {
    +[TransparencySettings defaultQueryCacheTimeout];
    v21 = [NSDate dateWithTimeIntervalSinceNow:-v20];
    v22 = [(TransparencyManagedDataStore *)self peerVerificationIdForUri:verificationCopy application:applicationCopy verificationInfo:infoCopy newerThan:v21 error:error];
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
        v35 = verificationCopy;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "re-using verificationId %{public}@ for %{mask.hash}@", &v30, 0x20u);
      }

      v25 = @"CacheVerifyHit";
    }

    else
    {
      v23 = [(TransparencyManagedDataStore *)self createPeerIDSKTVerification:verificationCopy application:applicationCopy verificationInfo:infoCopy error:error];
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
        v35 = verificationCopy;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "created verificationId %{public}@ for %{mask.hash}@ none cached", &v30, 0x20u);
      }

      v25 = @"CacheVerifyMiss";
    }

    logger2 = [(TransparencyManagedDataStore *)self logger];
    v28 = [TransparencyAnalytics formatEventName:v25 application:applicationCopy];
    [logger2 logSuccessForEventNamed:v28];

    v19 = v23;
  }

  return v19;
}

- (id)createVerification:(id)verification application:(id)application onMoc:(id)moc verificationInfo:(id)info error:(id *)error
{
  verificationCopy = verification;
  infoCopy = info;
  mocCopy = moc;
  applicationCopy = application;
  accountKey = [infoCopy accountKey];
  idsResponseTime = [infoCopy idsResponseTime];
  serverLoggableDatas = [infoCopy serverLoggableDatas];
  optedIn = [infoCopy optedIn];

  v25 = 0;
  v19 = [(TransparencyManagedDataStore *)self createIDSKTVerification:verificationCopy application:applicationCopy onMoc:mocCopy accountKey:accountKey idsResponseTime:idsResponseTime serverLoggableDatas:serverLoggableDatas optedIn:optedIn type:0 syncedLoggableDatas:0 verificationId:0 error:&v25];

  v20 = v25;
  if (qword_10039C9E0 != -1)
  {
    sub_10025C7E4();
  }

  v21 = qword_10039C9E8;
  if (os_log_type_enabled(qword_10039C9E8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    verificationId = [v19 verificationId];
    *buf = 138543874;
    v27 = verificationId;
    v28 = 2160;
    v29 = 1752392040;
    v30 = 2112;
    v31 = verificationCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "created verificationId %{public}@ for %{mask.hash}@ none cached", buf, 0x20u);
  }

  return v19;
}

- (void)garbageCollectVerifications:(id *)verifications
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

  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"IDSKTVerification" predicate:v7 error:verifications];
  v8 = [NSPredicate predicateWithFormat:@"peerStateFailure == nil && peerStateMostRecent == nil && peerStateMostRecentSuccess == nil && peerStateMostRecentCompleted == nil"];

  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"IDSKTVerification" predicate:v8 error:verifications];
}

- (void)deleteNonRecentVerificationsForApplication:(id)application error:(id *)error
{
  application = [NSPredicate predicateWithFormat:@"application == %@ && peerStateFailure == nil && peerStateMostRecent == nil && peerStateMostRecentSuccess == nil && peerStateMostRecentCompleted == nil", application];
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"IDSKTVerification" predicate:application error:error];
}

- (BOOL)disableCacheHitsForUris:(id)uris application:(id)application error:(id *)error
{
  urisCopy = uris;
  applicationCopy = application;
  if (qword_10039C9E0 != -1)
  {
    sub_10025C820();
  }

  v10 = qword_10039C9E8;
  if (os_log_type_enabled(qword_10039C9E8, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [urisCopy componentsJoinedByString:{@", "}];
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
  v13 = urisCopy;
  v22 = v13;
  v14 = applicationCopy;
  v23 = v14;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v21];
  v15 = *&buf[8];
  if (error)
  {
    v16 = *(*&buf[8] + 40);
    if (v16)
    {
      *error = v16;
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

- (unint64_t)countOutstandingVerificationsForApplication:(id)application error:(id *)error
{
  application = [NSPredicate predicateWithFormat:@"verificationResult == %d && application == %@", 2, application];
  v7 = [(TransparencyManagedDataStore *)self onMocCountEntity:@"IDSKTVerification" predicate:application error:error];

  return v7;
}

- (unint64_t)countTotalVerificationsForApplication:(id)application error:(id *)error
{
  application = [NSPredicate predicateWithFormat:@"application == %@", application];
  v7 = [(TransparencyManagedDataStore *)self onMocCountEntity:@"IDSKTVerification" predicate:application error:error];

  return v7;
}

- (BOOL)onMocLogVerificationMetricsForApplication:(id)application error:(id *)error
{
  applicationCopy = application;
  v24 = 0;
  v7 = [(TransparencyManagedDataStore *)self countOutstandingVerificationsForApplication:applicationCopy error:&v24];
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
      v26 = applicationCopy;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to get outstanding IDSKTVerifications for %@: %@", buf, 0x16u);
    }

    v10 = 0;
    if (error && v8)
    {
      v11 = v8;
      v10 = 0;
      *error = v8;
    }

    v12 = v8;
  }

  else
  {
    logger = [(TransparencyManagedDataStore *)self logger];
    v14 = [NSNumber numberWithUnsignedInteger:v7];
    v15 = [TransparencyAnalytics formatEventName:@"PendVer" application:applicationCopy];
    [logger logMetric:v14 withName:v15];

    v23 = v8;
    v16 = [(TransparencyManagedDataStore *)self countTotalVerificationsForApplication:applicationCopy error:&v23];
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
        v26 = applicationCopy;
        v27 = 2112;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "failed to get total IDSKTVerifications for %@: %@", buf, 0x16u);
      }

      v10 = 0;
      if (error && v12)
      {
        v18 = v12;
        v10 = 0;
        *error = v12;
      }
    }

    else
    {
      logger2 = [(TransparencyManagedDataStore *)self logger];
      v20 = [NSNumber numberWithUnsignedInteger:v16];
      v21 = [TransparencyAnalytics formatEventName:@"TotVer" application:applicationCopy];
      [logger2 logMetric:v20 withName:v21];

      v10 = 1;
    }
  }

  return v10;
}

- (id)createRecordFromLoggableData:(id)data application:(id)application
{
  dataCopy = data;
  applicationCopy = application;
  context = [(TransparencyManagedDataStore *)self context];
  v9 = [NSEntityDescription insertNewObjectForEntityForName:@"KTDeviceRecord" inManagedObjectContext:context];

  if (v9)
  {
    deviceID = [dataCopy deviceID];
    [v9 setDeviceId:deviceID];

    v14 = dataCopy;
    v11 = [NSArray arrayWithObjects:&v14 count:1];
    v12 = [TransparencyManagedDataStore serializeLoggableDatas:v11];
    [v9 setLoggableData:v12];

    [v9 setApplication:applicationCopy];
  }

  return v9;
}

- (BOOL)performAndWaitForDeviceId:(id)id application:(id)application error:(id *)error block:(id)block
{
  idCopy = id;
  applicationCopy = application;
  blockCopy = block;
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
  v13 = idCopy;
  v20 = v13;
  v14 = applicationCopy;
  v21 = v14;
  selfCopy = self;
  v24 = &v26;
  v15 = blockCopy;
  v23 = v15;
  v25 = &v32;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v19];
  if (error)
  {
    v16 = v27[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = *(v33 + 24);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v17;
}

- (id)createRequest
{
  context = [(TransparencyManagedDataStore *)self context];
  v3 = [NSEntityDescription insertNewObjectForEntityForName:@"KTRequest" inManagedObjectContext:context];

  return v3;
}

- (id)createRequestWithUri:(id)uri application:(id)application accountKey:(id)key serverData:(id)data syncedData:(id)syncedData queryRequest:(id)request queryResponse:(id)response type:(unint64_t)self0 clientId:(id)self1 error:(id *)self2
{
  idCopy = id;
  responseCopy = response;
  requestCopy = request;
  syncedDataCopy = syncedData;
  dataCopy = data;
  keyCopy = key;
  applicationCopy = application;
  uriCopy = uri;
  v26 = +[NSDate date];
  v27 = +[NSDate date];
  v30 = [(TransparencyManagedDataStore *)self createRequestWithUri:uriCopy application:applicationCopy accountKey:keyCopy serverData:dataCopy syncedData:syncedDataCopy idsResponseTime:v26 queryRequest:requestCopy queryResponse:responseCopy responseDate:v27 type:type clientId:idCopy error:error];

  return v30;
}

- (id)createRequestWithUri:(id)uri application:(id)application accountKey:(id)key serverData:(id)data syncedData:(id)syncedData idsResponseTime:(id)time queryRequest:(id)request queryResponse:(id)self0 responseDate:(id)self1 type:(unint64_t)self2 clientId:(id)self3 error:(id *)self4
{
  uriCopy = uri;
  applicationCopy = application;
  keyCopy = key;
  dataCopy = data;
  syncedDataCopy = syncedData;
  timeCopy = time;
  requestCopy = request;
  responseCopy = response;
  dateCopy = date;
  idCopy = id;
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
  v36 = uriCopy;
  v44 = v36;
  v38 = applicationCopy;
  v45 = v38;
  v25 = keyCopy;
  v46 = v25;
  v26 = idCopy;
  v47 = v26;
  v27 = requestCopy;
  v48 = v27;
  v28 = responseCopy;
  v49 = v28;
  v29 = dateCopy;
  v50 = v29;
  v30 = timeCopy;
  v51 = v30;
  v31 = syncedDataCopy;
  v52 = v31;
  v32 = dataCopy;
  v55 = &v63;
  typeCopy = type;
  v53 = v32;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v43];
  if (error)
  {
    v33 = v58[5];
    if (v33)
    {
      *error = v33;
    }
  }

  v34 = v64[5];

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  return v34;
}

- (id)requests:(id *)requests
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTRequest"];
  context = [(TransparencyManagedDataStore *)self context];
  v7 = [context executeFetchRequest:v5 error:requests];

  if (requests && *requests)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTRequest" write:0 code:-128 underlyingError:?];
    [TransparencyManagedDataStore cleanseError:requests];
  }

  return v7;
}

- (unint64_t)requestCount:(id *)count
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTRequest"];
  context = [(TransparencyManagedDataStore *)self context];
  v7 = [context countForFetchRequest:v5 error:count];

  [TransparencyManagedDataStore cleanseError:count];
  return v7;
}

- (id)fetchRequestForUUID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"KTRequestID"];
  dCopy = [NSPredicate predicateWithFormat:@"requestId == %@", dCopy];
  [v7 setPredicate:dCopy];

  [v7 setRelationshipKeyPathsForPrefetching:&off_10033D850];
  context = [(TransparencyManagedDataStore *)self context];
  v10 = [context executeFetchRequest:v7 error:error];

  [TransparencyManagedDataStore cleanseError:error];
  if ([v10 count] == 1)
  {
    v11 = [v10 objectAtIndexedSubscript:0];
    request = [v11 request];
  }

  else
  {
    v13 = [v10 count];
    if (error && v13 >= 2)
    {
      dCopy2 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-57 underlyingError:*error description:@"Fetch returned too many requests for requestId = %@", dCopy];
      *error = dCopy2;
      [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTRequestID" write:0 code:-57 underlyingError:dCopy2];
      if (qword_10039CA00 != -1)
      {
        sub_10025C938();
      }

      v15 = qword_10039CA08;
      if (os_log_type_enabled(qword_10039CA08, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = dCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Fetch returned too many requests for requestId = %@", buf, 0xCu);
      }
    }

    v16 = [v10 count];
    request = 0;
    if (error && !v16)
    {
      dCopy3 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-58 underlyingError:*error description:@"Fetch returned no requests for requestId = %@", dCopy];
      *error = dCopy3;
      [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTRequestID" hardFailure:0 write:0 code:-58 underlyingError:dCopy3];
      if (qword_10039CA00 != -1)
      {
        sub_10025C94C();
      }

      v18 = qword_10039CA08;
      if (os_log_type_enabled(qword_10039CA08, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = dCopy;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Fetch returned no requests for requestId = %@", buf, 0xCu);
      }

      request = 0;
    }
  }

  return request;
}

- (id)fetchRequestsForURI:(id)i error:(id *)error
{
  iCopy = i;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"KTRequest"];
  iCopy = [NSPredicate predicateWithFormat:@"uri == %@", iCopy];

  [v7 setPredicate:iCopy];
  context = [(TransparencyManagedDataStore *)self context];
  v10 = [context executeFetchRequest:v7 error:error];

  [TransparencyManagedDataStore cleanseError:error];

  return v10;
}

- (id)fetchRequestWithUri:(id)uri application:(id)application accountKey:(id)key loggableDatas:(id)datas youngerThan:(id)than error:(id *)error
{
  thanCopy = than;
  datasCopy = datas;
  keyCopy = key;
  applicationCopy = application;
  uriCopy = uri;
  v19 = [NSFetchRequest fetchRequestWithEntityName:@"KTRequest"];
  thanCopy = [NSPredicate predicateWithFormat:@"uri == %@ && application == %@ && accountKey == %@ && serverLoggableDatas == %@ && requestTime > %@", uriCopy, applicationCopy, keyCopy, datasCopy, thanCopy];

  [v19 setPredicate:thanCopy];
  v21 = [NSSortDescriptor sortDescriptorWithKey:@"requestTime" ascending:0];
  v28 = v21;
  v22 = [NSArray arrayWithObjects:&v28 count:1];
  [v19 setSortDescriptors:v22];

  [v19 setFetchLimit:1];
  [v19 setPropertiesToFetch:&off_10033D868];
  context = [(TransparencyManagedDataStore *)self context];
  v24 = [context executeFetchRequest:v19 error:error];

  [TransparencyManagedDataStore cleanseError:error];
  if (v24 && [v24 count])
  {
    v25 = [v24 objectAtIndexedSubscript:0];
    requestId = [v25 requestId];
  }

  else
  {
    requestId = 0;
  }

  return requestId;
}

- (void)performForRequestsWithPendingResponses:(id)responses error:(id *)error block:(id)block
{
  blockCopy = block;
  responses = [NSPredicate predicateWithFormat:@"verificationResult == %d && application == %@", 2, responses];
  [(TransparencyManagedDataStore *)self performOnRequestsForPredicate:responses enforceMax:1 error:error block:blockCopy];
}

- (id)fetchCompletedRequests:(id)requests olderThan:(id)than error:(id *)error
{
  requestsCopy = requests;
  thanCopy = than;
  if ([(TransparencyManagedDataStore *)self persistWithError:error])
  {
    v10 = [NSFetchRequest fetchRequestWithEntityName:@"KTRequest"];
    [v10 setReturnsDistinctResults:1];
    requestsCopy = [NSPredicate predicateWithFormat:@"requestTime < %@ && (verificationResult == %d || verificationResult == %d) && application == %@", thanCopy, 1, 0, requestsCopy];
    [v10 setPredicate:requestsCopy];

    context = [(TransparencyManagedDataStore *)self context];
    v13 = [context executeFetchRequest:v10 error:error];
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
    if (error)
    {
      v15 = *error;
    }

    else
    {
      v15 = 0;
    }

    *buf = 138412290;
    v18 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "unable to read completed requests: %@", buf, 0xCu);
  }

  [TransparencyManagedDataStore cleanseError:error];

  return v13;
}

- (BOOL)populateExistingRequestsToLookupTable:(id *)table
{
  v5 = [NSPredicate predicateWithFormat:@"requestIDCache.@count == 0"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001DEA0C;
  v12[3] = &unk_100327EF8;
  v12[4] = self;
  [(TransparencyManagedDataStore *)self performOnBatchesOfEntity:@"KTRequest" predicate:v5 enforceMax:0 error:table block:v12];
  if (table && *table)
  {
    v6 = *table;
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

- (void)garbageCollectRequests:(id)requests olderThan:(id)than error:(id *)error
{
  requestsCopy = requests;
  requestsCopy = [NSPredicate predicateWithFormat:@"requestTime < %@ && (verificationResult == %d || verificationResult == %d || verificationResult == %d) && application == %@", than, 1, 0, 3, requestsCopy];
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTRequest" predicate:requestsCopy error:error];
  v10 = [NSDate dateWithTimeIntervalSinceNow:-kKTMaximumPendingRequestLifetime];
  requestsCopy2 = [NSPredicate predicateWithFormat:@"requestTime < %@ && application == %@", v10, requestsCopy];

  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTRequest" predicate:requestsCopy2 error:error];
}

- (BOOL)resetPendingRequests:(id)requests error:(id *)error
{
  requestsCopy = requests;
  if (requestsCopy)
  {
    [NSPredicate predicateWithFormat:@"application == %@ AND verificationResult == %d", requestsCopy, 2];
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
  [(TransparencyManagedDataStore *)self performOnRequestsForPredicate:v7 enforceMax:0 error:error block:v11];
  v8 = !error || !*error;

  return v8;
}

- (unint64_t)countOutstandingRequestsForApplication:(id)application error:(id *)error
{
  application = [NSPredicate predicateWithFormat:@"verificationResult == %d && application == %@", 2, application];
  v7 = [(TransparencyManagedDataStore *)self onMocCountEntity:@"KTRequest" predicate:application error:error];

  return v7;
}

- (unint64_t)countTotalRequestsForApplication:(id)application error:(id *)error
{
  application = [NSPredicate predicateWithFormat:@"application == %@", application];
  v7 = [(TransparencyManagedDataStore *)self onMocCountEntity:@"KTRequest" predicate:application error:error];

  return v7;
}

- (BOOL)logRequestMetricsForApplication:(id)application error:(id *)error
{
  applicationCopy = application;
  v24 = 0;
  v7 = [(TransparencyManagedDataStore *)self countOutstandingRequestsForApplication:applicationCopy error:&v24];
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
      v26 = applicationCopy;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to get outstanding requests for %@: %@", buf, 0x16u);
    }

    v10 = 0;
    if (error && v8)
    {
      v11 = v8;
      v10 = 0;
      *error = v8;
    }

    v12 = v8;
  }

  else
  {
    logger = [(TransparencyManagedDataStore *)self logger];
    v14 = [NSNumber numberWithUnsignedInteger:v7];
    v15 = [TransparencyAnalytics formatEventName:@"OutstandingRequests" application:applicationCopy];
    [logger logMetric:v14 withName:v15];

    v23 = v8;
    v16 = [(TransparencyManagedDataStore *)self countTotalRequestsForApplication:applicationCopy error:&v23];
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
        v26 = applicationCopy;
        v27 = 2112;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "failed to get total requests for %@: %@", buf, 0x16u);
      }

      v10 = 0;
      if (error && v12)
      {
        v18 = v12;
        v10 = 0;
        *error = v12;
      }
    }

    else
    {
      logger2 = [(TransparencyManagedDataStore *)self logger];
      v20 = [NSNumber numberWithUnsignedInteger:v16];
      v21 = [TransparencyAnalytics formatEventName:@"TotalRequests" application:applicationCopy];
      [logger2 logMetric:v20 withName:v21];

      v10 = 1;
    }
  }

  return v10;
}

- (BOOL)performAndWaitForRequestId:(id)id error:(id *)error block:(id)block
{
  idCopy = id;
  blockCopy = block;
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
  v10 = idCopy;
  v16 = v10;
  v18 = &v20;
  v11 = blockCopy;
  v17 = v11;
  v19 = &v26;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v15];
  if (error)
  {
    v12 = v21[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

- (void)performAndWaitForLatestSelfRequest:(id)request accountKey:(id)key block:(id)block
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001DF7C4;
  v11[3] = &unk_100327F80;
  requestCopy = request;
  keyCopy = key;
  selfCopy = self;
  blockCopy = block;
  v8 = blockCopy;
  v9 = keyCopy;
  v10 = requestCopy;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v11];
}

- (id)requestFailures:(id *)failures
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTRequestFailure"];
  context = [(TransparencyManagedDataStore *)self context];
  v7 = [context executeFetchRequest:v5 error:failures];

  if (failures && *failures)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTRequestFailure" write:0 code:-128 underlyingError:?];
    [TransparencyManagedDataStore cleanseError:failures];
  }

  return v7;
}

- (unint64_t)requestFailureCount:(id *)count
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTRequestFailure"];
  context = [(TransparencyManagedDataStore *)self context];
  v7 = [context countForFetchRequest:v5 error:count];

  [TransparencyManagedDataStore cleanseError:count];
  return v7;
}

- (void)createKTRequestID:(id)d request:(id)request
{
  requestCopy = request;
  dCopy = d;
  context = [(TransparencyManagedDataStore *)self context];
  v9 = [NSEntityDescription insertNewObjectForEntityForName:@"KTRequestID" inManagedObjectContext:context];

  [v9 setRequestId:dCopy];
  [v9 setRequest:requestCopy];
}

- (void)createIDSVerificationID:(id)d verification:(id)verification
{
  verificationCopy = verification;
  dCopy = d;
  context = [(TransparencyManagedDataStore *)self context];
  v9 = [NSEntityDescription insertNewObjectForEntityForName:@"KTRequestID" inManagedObjectContext:context];

  [v9 setRequestId:dCopy];
  [v9 setIdsKTVerification:verificationCopy];
}

- (id)requestIds:(id *)ids
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTRequestID"];
  context = [(TransparencyManagedDataStore *)self context];
  v7 = [context executeFetchRequest:v5 error:ids];

  if (ids && *ids)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTRequestID" write:0 code:-128 underlyingError:?];
    [TransparencyManagedDataStore cleanseError:ids];
  }

  return v7;
}

- (id)createMutation:(id)mutation application:(id)application uri:(id)uri mutationMs:(unint64_t)ms spkiHash:(id)hash receiptTime:(id)time
{
  mutationCopy = mutation;
  applicationCopy = application;
  uriCopy = uri;
  hashCopy = hash;
  timeCopy = time;
  context = [(TransparencyManagedDataStore *)self context];
  v20 = [NSEntityDescription insertNewObjectForEntityForName:@"KTMutation" inManagedObjectContext:context];

  if (v20)
  {
    [v20 setSmt:mutationCopy];
    [v20 setUnsigned:"mutationMs" value:ms];
    [v20 setReceiptTime:timeCopy];
    [v20 setApplication:applicationCopy];
    [v20 setUri:uriCopy];
    [v20 setSpkiHash:hashCopy];
  }

  return v20;
}

- (id)signedMutationTimestamps:(id *)timestamps
{
  v5 = +[KTMutation fetchRequest];
  context = [(TransparencyManagedDataStore *)self context];
  v7 = [context executeFetchRequest:v5 error:timestamps];

  if (timestamps && *timestamps)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTMutation" write:0 code:-128 underlyingError:?];
    [TransparencyManagedDataStore cleanseError:timestamps];
  }

  return v7;
}

- (unint64_t)signedMutationTimestampCount:(id *)count
{
  v5 = +[KTMutation fetchRequest];
  context = [(TransparencyManagedDataStore *)self context];
  v7 = [context countForFetchRequest:v5 error:count];

  [TransparencyManagedDataStore cleanseError:count];
  return v7;
}

- (void)performForSMTsWithUnverifiedSignature:(id)signature error:(id *)error block:(id)block
{
  blockCopy = block;
  signature = [NSPredicate predicateWithFormat:@"signatureResult == %d && mergeResult == %d && application == %@", 2, 2, signature];
  [(TransparencyManagedDataStore *)self performOnBatchesOfEntity:@"KTMutation" predicate:signature enforceMax:0 error:error block:blockCopy];
}

- (unint64_t)countOutstandingSMTsForApplication:(id)application error:(id *)error
{
  application = [NSPredicate predicateWithFormat:@"(signatureResult == %d || mergeResult == %d) && application == %@", 2, 2, application];
  v7 = [(TransparencyManagedDataStore *)self onMocCountEntity:@"KTMutation" predicate:application error:error];

  return v7;
}

- (unint64_t)countTotalSMTsForApplication:(id)application error:(id *)error
{
  application = [NSPredicate predicateWithFormat:@"application == %@", application];
  v7 = [(TransparencyManagedDataStore *)self onMocCountEntity:@"KTMutation" predicate:application error:error];

  return v7;
}

- (BOOL)logSMTMetricsForApplication:(id)application error:(id *)error
{
  applicationCopy = application;
  v24 = 0;
  v7 = [(TransparencyManagedDataStore *)self countOutstandingSMTsForApplication:applicationCopy error:&v24];
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
      v26 = applicationCopy;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to get outstanding SMTs for %@: %@", buf, 0x16u);
    }

    v10 = 0;
    if (error && v8)
    {
      v11 = v8;
      v10 = 0;
      *error = v8;
    }

    v12 = v8;
  }

  else
  {
    logger = [(TransparencyManagedDataStore *)self logger];
    v14 = [NSNumber numberWithUnsignedInteger:v7];
    v15 = [TransparencyAnalytics formatEventName:@"OutstandingSMTs" application:applicationCopy];
    [logger logMetric:v14 withName:v15];

    v23 = v8;
    v16 = [(TransparencyManagedDataStore *)self countTotalSMTsForApplication:applicationCopy error:&v23];
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
        v26 = applicationCopy;
        v27 = 2112;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "failed to get total SMTs for %@: %@", buf, 0x16u);
      }

      v10 = 0;
      if (error && v12)
      {
        v18 = v12;
        v10 = 0;
        *error = v12;
      }
    }

    else
    {
      logger2 = [(TransparencyManagedDataStore *)self logger];
      v20 = [NSNumber numberWithUnsignedInteger:v16];
      v21 = [TransparencyAnalytics formatEventName:@"TotalSMTs" application:applicationCopy];
      [logger2 logMetric:v20 withName:v21];

      v10 = 1;
    }
  }

  return v10;
}

- (void)garbageCollectSMTs:(id *)ts
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

  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTMutation" predicate:v7 error:ts];
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

  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTMutation" predicate:v10 error:ts];
}

- (BOOL)performForPendingSMTs:(id)ts uri:(id)uri error:(id *)error batchSize:(unint64_t)size block:(id)block
{
  tsCopy = ts;
  uriCopy = uri;
  blockCopy = block;
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
  v15 = uriCopy;
  v24 = v15;
  v16 = tsCopy;
  v25 = v16;
  sizeCopy = size;
  v17 = blockCopy;
  v26 = v17;
  v28 = &v36;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v23];
  if (error)
  {
    v18 = v31[5];
    if (v18)
    {
      *error = v18;
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

- (id)getPendingSmtUris:(id)uris fetchLimit:(unint64_t)limit error:(id *)error
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
  selfCopy = self;
  v14 = &v17;
  urisCopy = uris;
  v15 = &v23;
  limitCopy = limit;
  v13 = urisCopy;
  [(TransparencyManagedDataStore *)selfCopy performBlockAndWait:v11];
  if (error)
  {
    v8 = v18[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v9;
}

- (BOOL)deleteSMTsWithSPKINotIn:(id)in application:(id)application error:(id *)error
{
  inCopy = in;
  applicationCopy = application;
  if (qword_10039CA10 != -1)
  {
    sub_10025CAA0();
  }

  v10 = qword_10039CA18;
  if (os_log_type_enabled(qword_10039CA18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = applicationCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Deleting %@ SMTs with old SPKI hashes", buf, 0xCu);
  }

  inCopy = [NSPredicate predicateWithFormat:@"application == %@ && (NOT spkiHash IN %@ || spkiHash == nil)", applicationCopy, inCopy];
  v12 = [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTMutation" predicate:inCopy error:error];

  return v12;
}

- (id)createSignedMutationTimestampsFailure
{
  context = [(TransparencyManagedDataStore *)self context];
  v3 = [NSEntityDescription insertNewObjectForEntityForName:@"KTSMTFailure" inManagedObjectContext:context];

  return v3;
}

- (id)signedMutationTimestampsFailures:(id *)failures
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTSMTFailure"];
  context = [(TransparencyManagedDataStore *)self context];
  v7 = [context executeFetchRequest:v5 error:failures];

  if (failures && *failures)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTSMTFailure" write:0 code:-128 underlyingError:?];
    [TransparencyManagedDataStore cleanseError:failures];
  }

  return v7;
}

- (unint64_t)signedMutationTimestampsFailureCount:(id *)count
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTSMTFailure"];
  context = [(TransparencyManagedDataStore *)self context];
  v7 = [context countForFetchRequest:v5 error:count];

  [TransparencyManagedDataStore cleanseError:count];
  return v7;
}

+ (id)serializeNSError:(id)error
{
  errorCopy = error;
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  v9 = errorCopy;
  v5 = errorCopy;
  [TransparencyManagedDataStore cleanseError:&v9];
  v6 = v9;

  [v4 encodeObject:v6 forKey:@"error"];
  encodedData = [v4 encodedData];

  return encodedData;
}

+ (id)deserializeNSError:(id)error error:(id *)a4
{
  errorCopy = error;
  v6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:errorCopy error:a4];

  v7 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v6 _enableStrictSecureDecodingMode];
  v8 = [v6 decodeObjectOfClasses:v7 forKey:@"error"];

  return v8;
}

- (id)createFailureEvent:(id)event application:(id)application optInServer:(id)server
{
  eventCopy = event;
  applicationCopy = application;
  v19 = 0;
  v10 = [server getAggregateOptInState:&v19];
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

  context = [(TransparencyManagedDataStore *)self context];
  v13 = [NSEntityDescription insertNewObjectForEntityForName:@"KTFailureEvent" inManagedObjectContext:context];

  if (v13)
  {
    [v13 setApplication:applicationCopy];
    v14 = +[NSUUID UUID];
    [v13 setEventId:v14];

    v15 = +[NSDate date];
    [v13 setFailureTime:v15];

    v16 = [TransparencyManagedDataStore serializeNSError:eventCopy];
    [v13 setEncodedError:v16];
  }

LABEL_10:

  return v13;
}

- (id)fetchRecentFailureEvents:(id)events fetchLimit:(unint64_t)limit error:(id *)error
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
  selfCopy = self;
  v14 = &v17;
  eventsCopy = events;
  v15 = &v23;
  limitCopy = limit;
  v13 = eventsCopy;
  [(TransparencyManagedDataStore *)selfCopy performBlockAndWait:v11];
  if (error)
  {
    v8 = v18[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v9;
}

- (void)errorsForFailedEvents:(id)events completionBlock:(id)block
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002150E8;
  v8[3] = &unk_10032A8F0;
  eventsCopy = events;
  blockCopy = block;
  v8[4] = self;
  v6 = eventsCopy;
  v7 = blockCopy;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v8];
}

- (BOOL)performAndWaitForFailedEventId:(id)id error:(id *)error block:(id)block
{
  idCopy = id;
  blockCopy = block;
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
  v10 = idCopy;
  v16 = v10;
  selfCopy = self;
  v19 = &v21;
  v11 = blockCopy;
  v18 = v11;
  v20 = &v27;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v15];
  if (error)
  {
    v12 = v22[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

- (BOOL)clearAllFailureEvents:(id)events error:(id *)error
{
  events = [NSPredicate predicateWithFormat:@"application == %@", events];
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTFailureEvent" predicate:events error:error];
  if (error && *error)
  {
    v7 = *error;
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

- (void)clearFailureEvents:(id)events completionBlock:(id)block
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100215D94;
  v8[3] = &unk_10032A8F0;
  eventsCopy = events;
  blockCopy = block;
  v8[4] = self;
  v6 = eventsCopy;
  v7 = blockCopy;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v8];
}

- (BOOL)clearSelfFailureRelatedData:(id)data uri:(id)uri error:(id *)error
{
  uriCopy = uri;
  v9 = [NSPredicate predicateWithFormat:@"request.uri == %@ AND application == %@ AND request.type == %lld", uriCopy, data, 1];
  if (![(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTFailureEvent" predicate:v9 error:error])
  {
    if (!error)
    {
      goto LABEL_19;
    }

    if (*error)
    {
      v10 = *error;
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
      v15 = uriCopy;
      v16 = 2112;
      v17 = v10;
      v12 = "failed to clear self-validation failure events for uri %@: %@";
      goto LABEL_16;
    }

LABEL_18:
    LOBYTE(error) = 0;
    goto LABEL_19;
  }

  if (![(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTDeviceRecord" predicate:v9 error:error])
  {
    if (!error)
    {
      goto LABEL_19;
    }

    if (*error)
    {
      v10 = *error;
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
      v15 = uriCopy;
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

  LOBYTE(error) = 1;
LABEL_19:

  return error;
}

- (BOOL)clearSelfValidationFollowups:(id)followups uri:(id)uri error:(id *)error
{
  followupsCopy = followups;
  uriCopy = uri;
  followup = [(TransparencyManagedDataStore *)self followup];
  getPendingFollowups = [followup getPendingFollowups];

  if ([getPendingFollowups count])
  {
    uriCopy = [NSPredicate predicateWithFormat:@"eventId in %@ AND application == %@ AND request.type == %lld AND request.uri == %@", getPendingFollowups, followupsCopy, 1, uriCopy];
    v10 = +[KTFailureEvent fetchRequest];
    [v10 setPredicate:uriCopy];
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
        v51 = getPendingFollowups;
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
      reverseObjectEnumerator = [v44[5] reverseObjectEnumerator];
      v18 = [reverseObjectEnumerator countByEnumeratingWithState:&v28 objects:v49 count:16];
      if (v18)
      {
        v19 = *v29;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v29 != v19)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v21 = [*(*(&v28 + 1) + 8 * i) objectForKeyedSubscript:@"eventId"];
            [v16 addObject:v21];
          }

          v18 = [reverseObjectEnumerator countByEnumeratingWithState:&v28 objects:v49 count:16];
        }

        while (v18);
      }
    }

    else
    {
      v16 = 0;
    }

    v22 = +[TransparencyFollowup instance];
    v23 = [v22 clearFollowups:v16 error:error];

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
  context = [(TransparencyManagedDataStore *)self context];
  v3 = [NSEntityDescription insertNewObjectForEntityForName:@"KTTreeHead" inManagedObjectContext:context];

  return v3;
}

- (id)treeHeads:(id *)heads
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTTreeHead"];
  context = [(TransparencyManagedDataStore *)self context];
  v11 = 0;
  v7 = [context executeFetchRequest:v5 error:&v11];
  v8 = v11;

  if (v8)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTTreeHead" write:0 code:-128 underlyingError:v8];
    if (heads)
    {
      v9 = v8;
      *heads = v8;
    }

    [TransparencyManagedDataStore cleanseError:heads];
  }

  return v7;
}

- (id)treeHeadsForApplication:(id)application error:(id *)error
{
  applicationCopy = application;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"KTTreeHead"];
  applicationCopy = [NSPredicate predicateWithFormat:@"application == %@", applicationCopy];

  [v7 setPredicate:applicationCopy];
  context = [(TransparencyManagedDataStore *)self context];
  v14 = 0;
  v10 = [context executeFetchRequest:v7 error:&v14];
  v11 = v14;

  if (error && v11)
  {
    v12 = v11;
    *error = v11;
  }

  [TransparencyManagedDataStore cleanseError:error];

  return v10;
}

- (unint64_t)treeHeadCount:(id *)count
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTTreeHead"];
  context = [(TransparencyManagedDataStore *)self context];
  v7 = [context countForFetchRequest:v5 error:count];

  [TransparencyManagedDataStore cleanseError:count];
  return v7;
}

- (id)latestConsistencyVerifiedTreeHeadRevision:(id)revision logBeginMs:(unint64_t)ms error:(id *)error
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
  revisionCopy = revision;
  v16 = &v24;
  msCopy = ms;
  v13 = revisionCopy;
  selfCopy = self;
  v15 = &v18;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v12];
  if (error)
  {
    v9 = v19[5];
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v10;
}

- (id)latestConsistencyVerifiedTreeHeadSTH:(id)h logBeginMs:(unint64_t)ms error:(id *)error
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
  selfCopy = self;
  v14 = &v18;
  hCopy = h;
  v13 = hCopy;
  v15 = &v24;
  msCopy = ms;
  errorCopy = error;
  [(TransparencyManagedDataStore *)selfCopy performBlockAndWait:v11];
  if (error)
  {
    v8 = v19[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v9;
}

- (id)unverifiedRevisions:(id)revisions isMapHead:(BOOL)head inclusion:(BOOL)inclusion logBeginMs:(unint64_t)ms error:(id *)error
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
  inclusionCopy = inclusion;
  headCopy = head;
  revisionsCopy = revisions;
  v18 = &v28;
  msCopy = ms;
  v15 = revisionsCopy;
  selfCopy = self;
  v17 = &v22;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v14];
  if (error)
  {
    v11 = v23[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = v29[5];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v12;
}

- (BOOL)populateMissingLogHeadHashes:(id *)hashes
{
  v5 = [NSPredicate predicateWithFormat:@"isMapHead == NO && logHeadHash == nil"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10021BCB4;
  v12[3] = &unk_100327EF8;
  v12[4] = self;
  [(TransparencyManagedDataStore *)self performOnBatchesOfEntity:@"KTTreeHead" predicate:v5 enforceMax:0 error:hashes block:v12];
  if (hashes && *hashes)
  {
    v6 = *hashes;
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

- (void)performForPendingSTHs:(id)hs olderThan:(id)than type:(unint64_t)type error:(id *)error block:(id)block
{
  hsCopy = hs;
  thanCopy = than;
  blockCopy = block;
  if (type > 3)
  {
    v14 = 0;
  }

  else
  {
    v14 = [NSPredicate predicateWithFormat:*(&off_10032B0F0 + type), hsCopy, thanCopy, 2];
  }

  [(TransparencyManagedDataStore *)self performOnBatchesOfEntity:@"KTTreeHead" predicate:v14 enforceMax:0 error:error block:blockCopy];
}

- (void)performForSTHsWithUnverifiedSignature:(id)signature error:(id *)error block:(id)block
{
  blockCopy = block;
  v9 = [NSPredicate predicateWithFormat:@"application == %@ && signatureVerified == %d", signature, 2];
  [(TransparencyManagedDataStore *)self performOnBatchesOfEntity:@"KTTreeHead" predicate:v9 enforceMax:0 error:error block:blockCopy];
}

- (void)performForSMHsWithUnverifiedMMD:(id)d error:(id *)error block:(id)block
{
  blockCopy = block;
  v9 = [NSPredicate predicateWithFormat:@"isMapHead = %@ && application == %@ && mmdVerified == %d", &__kCFBooleanTrue, d, 2];
  [(TransparencyManagedDataStore *)self performOnBatchesOfEntity:@"KTTreeHead" predicate:v9 enforceMax:0 error:error block:blockCopy];
}

- (void)garbageCollectSTHs:(id)hs logBeginMs:(unint64_t)ms olderThanDate:(id)date error:(id *)error
{
  dateCopy = date;
  hsCopy = hs;
  v13 = [(TransparencyManagedDataStore *)self latestConsistencyVerifiedTreeHeadRevision:hsCopy logBeginMs:ms error:error];
  v12 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"isMapHead == NO && receiptTime < %@ && (consistencyVerified == %d || consistencyVerified == %d || consistencyVerified == %d) && application == %@ && revision != %llu", dateCopy, 1, 0, 3, hsCopy, [v13 unsignedLongLongValue]);

  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTTreeHead" predicate:v12 error:error];
}

- (BOOL)shouldGarbageCollectSTH:(id)h application:(id)application logBeginMs:(unint64_t)ms olderThanDate:(id)date
{
  hCopy = h;
  applicationCopy = application;
  dateCopy = date;
  if ([hCopy isMapHead])
  {
    v13 = 0;
  }

  else
  {
    v14 = [(TransparencyManagedDataStore *)self latestConsistencyVerifiedTreeHeadRevision:applicationCopy logBeginMs:ms error:0];
    v15 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"isMapHead == NO && receiptTime < %@ && (consistencyVerified == %d || consistencyVerified == %d || consistencyVerified == %d) && application == %@ && revision != %llu", dateCopy, 1, 0, 3, applicationCopy, [v14 unsignedLongLongValue]);
    v13 = [v15 evaluateWithObject:hCopy];
  }

  return v13;
}

- (unint64_t)countOutstandingSTHsForApplication:(id)application error:(id *)error
{
  v6 = [NSPredicate predicateWithFormat:@"application == %@ && isMapHead == NO && (signatureVerified == %d || consistencyVerified == %d || inclusionVerified == %d)", application, 2, 2, 2];
  v7 = [(TransparencyManagedDataStore *)self onMocCountEntity:@"KTTreeHead" predicate:v6 error:error];

  return v7;
}

- (unint64_t)countTotalSTHsForApplication:(id)application error:(id *)error
{
  application = [NSPredicate predicateWithFormat:@"application == %@", application];
  v7 = [(TransparencyManagedDataStore *)self onMocCountEntity:@"KTTreeHead" predicate:application error:error];

  return v7;
}

- (unint64_t)countOutstandingSMHsForApplication:(id)application error:(id *)error
{
  v6 = [NSPredicate predicateWithFormat:@"application == %@ && isMapHead == YES && (signatureVerified == %d || mmdVerified == %d || inclusionVerified == %d)", application, 2, 2, 2];
  v7 = [(TransparencyManagedDataStore *)self onMocCountEntity:@"KTTreeHead" predicate:v6 error:error];

  return v7;
}

- (BOOL)logSTHMetricsForApplication:(id)application error:(id *)error
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10021C764;
  v7[3] = &unk_100326DB0;
  selfCopy = self;
  applicationCopy = application;
  v10 = &v12;
  errorCopy = error;
  v9 = applicationCopy;
  [(TransparencyManagedDataStore *)selfCopy performBlockAndWait:v7];
  LOBYTE(error) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return error;
}

- (BOOL)deleteSTHs:(id)hs logBeginMsLessThan:(unint64_t)than error:(id *)error
{
  than = [NSPredicate predicateWithFormat:@"application == %@ && logBeginTime < %llu", hs, than];
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTTreeHead" predicate:than error:error];
  if (error && *error)
  {
    v8 = *error;
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

- (void)reportFailedRevisions:(id)revisions failure:(id)failure downloadType:(unint64_t)type application:(id)application
{
  revisionsCopy = revisions;
  failureCopy = failure;
  applicationCopy = application;
  if (type - 1 <= 2)
  {
    v12 = [TransparencyAnalytics formatEventName:*(&off_10032B110 + type - 1) application:applicationCopy];
    v18[0] = revisionsCopy;
    v17[0] = @"requestedRevisions";
    v17[1] = @"errorCode";
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [failureCopy code]);
    v18[1] = v13;
    v17[2] = @"errorDomain";
    domain = [failureCopy domain];
    v18[2] = domain;
    v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];

    v16 = +[TransparencyAnalytics logger];
    [v16 logHardFailureForEventNamed:v12 withAttributes:v15];
  }
}

- (void)failHeadDownloadRecord:(id)record failure:(id)failure error:(id *)error
{
  recordCopy = record;
  failureCopy = failure;
  revisions = [recordCopy revisions];
  if (revisions)
  {
    v10 = [NSJSONSerialization JSONObjectWithData:revisions options:0 error:error];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (os_variant_allows_internal_security_policies())
      {
        downloadType = [recordCopy downloadType];
        application = [recordCopy application];
        [(TransparencyManagedDataStore *)self reportFailedRevisions:v10 failure:failureCopy downloadType:downloadType application:application];
      }

      downloadType2 = [recordCopy downloadType];
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
        v31 = revisions;
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
              application2 = [recordCopy application];
              v34[0] = _NSConcreteStackBlock;
              v34[1] = 3221225472;
              v34[2] = sub_10021D4EC;
              v34[3] = &unk_10032B068;
              v38 = downloadType2;
              v35 = recordCopy;
              selfCopy = self;
              v37 = failureCopy;
              [(TransparencyManagedDataStore *)self performForSTHs:application2 isMapHead:downloadType2 == 1 revision:v18 error:error block:v34];
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
                downloadId = [recordCopy downloadId];
                *buf = 138543618;
                v45 = downloadId;
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
        revisions = v31;
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
        downloadId2 = [recordCopy downloadId];
        v25 = downloadId2;
        if (error)
        {
          v26 = *error;
        }

        else
        {
          v26 = 0;
        }

        *buf = 138543618;
        v45 = downloadId2;
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
      downloadId3 = [recordCopy downloadId];
      *buf = 138543362;
      v45 = downloadId3;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "STH download record type missing revisions for downloadId %{public}@", buf, 0xCu);
    }
  }
}

- (void)failHeadDownload:(id)download failure:(id)failure logClient:(id)client
{
  downloadCopy = download;
  failureCopy = failure;
  clientCopy = client;
  if (qword_10039CCD8 != -1)
  {
    sub_10025EF44();
  }

  v11 = qword_10039CCE0;
  if (os_log_type_enabled(qword_10039CCE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = downloadCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "failing STH downloadId %{public}@", buf, 0xCu);
  }

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10021DA0C;
  v16 = &unk_10032B0D0;
  selfCopy = self;
  v18 = failureCopy;
  v12 = failureCopy;
  [(TransparencyManagedDataStore *)self performAndWaitForDownloadId:downloadCopy error:0 block:&v13];
  [clientCopy deleteDownloadId:{downloadCopy, v13, v14, v15, v16, selfCopy}];
}

- (id)failedHeadSignaturesWithRevisions:(id)revisions application:(id)application
{
  revisionsCopy = revisions;
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
  applicationCopy = application;
  v12 = applicationCopy;
  v8 = revisionsCopy;
  v13 = v8;
  selfCopy = self;
  v15 = &v16;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v11];
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

- (id)createSignedTreeHeadFailure
{
  context = [(TransparencyManagedDataStore *)self context];
  v3 = [NSEntityDescription insertNewObjectForEntityForName:@"KTSTHFailure" inManagedObjectContext:context];

  return v3;
}

- (id)signedTreeHeadFailures:(id *)failures
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTSTHFailure"];
  context = [(TransparencyManagedDataStore *)self context];
  v7 = [context executeFetchRequest:v5 error:failures];

  if (failures && *failures)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"KTSTHFailure" write:0 code:-128 underlyingError:?];
    [TransparencyManagedDataStore cleanseError:failures];
  }

  return v7;
}

- (unint64_t)signedTreeHeadFailureCount:(id *)count
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTSTHFailure"];
  context = [(TransparencyManagedDataStore *)self context];
  v7 = [context countForFetchRequest:v5 error:count];

  [TransparencyManagedDataStore cleanseError:count];
  return v7;
}

- (id)createDownloadRecord:(unint64_t)record moc:(id)moc application:(id)application
{
  applicationCopy = application;
  v8 = [NSEntityDescription insertNewObjectForEntityForName:@"DownloadRecord" inManagedObjectContext:moc];
  [v8 setUnsigned:"downloadType" value:record];
  [v8 setApplication:applicationCopy];

  v9 = +[NSUUID UUID];
  [v8 setDownloadId:v9];

  [v8 setRequestTime:CFAbsoluteTimeGetCurrent()];

  return v8;
}

- (id)downloadRecords:(id *)records
{
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"DownloadRecord"];
  context = [(TransparencyManagedDataStore *)self context];
  v7 = [context executeFetchRequest:v5 error:records];

  if (records && *records)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"DownloadRecord" write:0 code:-128 underlyingError:?];
    [TransparencyManagedDataStore cleanseError:records];
  }

  return v7;
}

- (id)fetchDownloadRecord:(unint64_t)record application:(id)application error:(id *)error
{
  applicationCopy = application;
  v9 = [NSFetchRequest fetchRequestWithEntityName:@"DownloadRecord"];
  applicationCopy = [NSPredicate predicateWithFormat:@"downloadType == %d && application = %@", record, applicationCopy];

  [v9 setPredicate:applicationCopy];
  context = [(TransparencyManagedDataStore *)self context];
  v12 = [context executeFetchRequest:v9 error:error];

  [TransparencyManagedDataStore cleanseError:error];
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

- (id)fetchDownloadRecordById:(id)id error:(id *)error
{
  idCopy = id;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"DownloadRecord"];
  idCopy = [NSPredicate predicateWithFormat:@"downloadId = %@", idCopy];

  [v7 setPredicate:idCopy];
  context = [(TransparencyManagedDataStore *)self context];
  v10 = [context executeFetchRequest:v7 error:error];

  [TransparencyManagedDataStore cleanseError:error];
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

- (BOOL)hasPendingDownloadForUUID:(id)d error:(id *)error
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
  selfCopy = self;
  dCopy = d;
  v11 = dCopy;
  v12 = &v14;
  v13 = &v20;
  [(TransparencyManagedDataStore *)selfCopy performBlockAndWait:v9];
  if (error)
  {
    v6 = v15[5];
    if (v6)
    {
      *error = v6;
    }
  }

  v7 = *(v21 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

- (BOOL)setResponse:(id)response downloadId:(id)id error:(id *)error
{
  responseCopy = response;
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
  idCopy = id;
  v15 = idCopy;
  selfCopy = self;
  v18 = &v20;
  v10 = responseCopy;
  v17 = v10;
  v19 = &v26;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v14];
  if (error)
  {
    v11 = v21[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v12;
}

- (BOOL)deleteDownloadRecordById:(id)id error:(id *)error
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
  selfCopy = self;
  idCopy = id;
  v15 = idCopy;
  v16 = &v18;
  v17 = &v24;
  [(TransparencyManagedDataStore *)selfCopy performBlockAndWait:v13];
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
    v11 = idCopy;
    v12 = &v18;
    [(TransparencyManagedDataStore *)self performBlockAndWait:v10];
    if (error)
    {
      v8 = v19[5];
      if (v8)
      {
        *error = v8;
      }
    }

    v7 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v7 & 1;
}

- (BOOL)deleteDownloadRecords:(id)records error:(id *)error
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
  recordsCopy = records;
  v14 = recordsCopy;
  selfCopy = self;
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
    v11 = recordsCopy;
    v12 = &v18;
    [(TransparencyManagedDataStore *)self performBlockAndWait:v10];
  }

  if (error)
  {
    v7 = v19[5];
    if (v7)
    {
      *error = v7;
    }
  }

  v8 = *(v25 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v8;
}

- (BOOL)deleteDownloadRecord:(unint64_t)record application:(id)application error:(id *)error
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
  selfCopy = self;
  recordCopy = record;
  applicationCopy = application;
  v16 = applicationCopy;
  v17 = &v20;
  v18 = &v26;
  [(TransparencyManagedDataStore *)selfCopy performBlockAndWait:v14];
  if ((v27[3] & 1) == 0)
  {
    [(TransparencyManagedDataStore *)self reportCoreDataEventForEntity:@"DownloadRecord" write:1 code:-190 underlyingError:v21[5]];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10021F61C;
    v11[3] = &unk_10031A9E0;
    v12 = applicationCopy;
    v13 = &v20;
    [(TransparencyManagedDataStore *)self performBlockAndWait:v11];
  }

  if (error)
  {
    v8 = v21[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v9;
}

- (BOOL)performAndWaitForDownloadId:(id)id error:(id *)error block:(id)block
{
  idCopy = id;
  blockCopy = block;
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
  v10 = idCopy;
  v16 = v10;
  v18 = &v20;
  v11 = blockCopy;
  v17 = v11;
  v19 = &v26;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v15];
  if (error)
  {
    v12 = v21[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

- (id)createFetchRecord
{
  context = [(TransparencyManagedDataStore *)self context];
  v3 = [NSEntityDescription insertNewObjectForEntityForName:@"FetchRecord" inManagedObjectContext:context];

  return v3;
}

- (id)createFetchRecordForRequestData:(id)data request:(id)request error:(id *)error
{
  requestCopy = request;
  dataCopy = data;
  createFetchRecord = [(TransparencyManagedDataStore *)self createFetchRecord];
  v11 = +[NSUUID UUID];
  [createFetchRecord setFetchId:v11];

  [createFetchRecord setRequestData:dataCopy];
  [createFetchRecord setRequest:requestCopy];

  if ([(TransparencyManagedDataStore *)self persistWithError:error])
  {
    fetchId = [createFetchRecord fetchId];
  }

  else
  {
    fetchId = 0;
  }

  [TransparencyManagedDataStore cleanseError:error];

  return fetchId;
}

- (id)fetchFetchRecordById:(id)id error:(id *)error
{
  idCopy = id;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"FetchRecord"];
  idCopy = [NSPredicate predicateWithFormat:@"fetchId = %@", idCopy];

  [v7 setPredicate:idCopy];
  context = [(TransparencyManagedDataStore *)self context];
  v10 = [context executeFetchRequest:v7 error:error];

  [TransparencyManagedDataStore cleanseError:error];
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

- (BOOL)performAndWaitForFetchId:(id)id error:(id *)error block:(id)block
{
  idCopy = id;
  blockCopy = block;
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
  v10 = idCopy;
  v16 = v10;
  v18 = &v20;
  v11 = blockCopy;
  v17 = v11;
  v19 = &v26;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v15];
  if (error)
  {
    v12 = v21[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

- (TransparencyManagedDataStore)initWithController:(id)controller followup:(id)followup logger:(id)logger
{
  controllerCopy = controller;
  followupCopy = followup;
  loggerCopy = logger;
  v15.receiver = self;
  v15.super_class = TransparencyManagedDataStore;
  v11 = [(TransparencyManagedDataStore *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(TransparencyManagedDataStore *)v11 setController:controllerCopy];
    [(TransparencyManagedDataStore *)v12 setLogger:loggerCopy];
    v13 = dispatch_queue_create("TransparencyManagedDataStore peerQueue", 0);
    [(TransparencyManagedDataStore *)v12 setPeerQueue:v13];

    [(TransparencyManagedDataStore *)v12 setContextRefCount:0];
    [(TransparencyManagedDataStore *)v12 setFollowup:followupCopy];
    [(TransparencyManagedDataStore *)v12 setServerRPCTimeoutSeconds:kTransparencyMaxmimumServerRPCWaitTime];
  }

  return v12;
}

+ (void)cleanseError:(id *)error
{
  if (error)
  {
    *error = [SecXPCHelper cleanseErrorForXPC:*error];
  }
}

- (void)reportCoreDataPersistEventForLocation:(id)location underlyingError:(id)error
{
  errorCopy = error;
  locationCopy = location;
  logger = [(TransparencyManagedDataStore *)self logger];
  v9 = [SecXPCHelper cleanseErrorForXPC:errorCopy];

  v11[0] = @"entityType";
  v11[1] = @"write";
  v12[0] = @"Persistence";
  v12[1] = &__kCFBooleanTrue;
  v11[2] = @"location";
  v12[2] = locationCopy;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  [logger logResultForEvent:@"ktCoreDataEvent" hardFailure:1 result:v9 withAttributes:v10];
}

+ (id)serializeLoggableDatas:(id)datas
{
  datasCopy = datas;
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v4 encodeObject:datasCopy forKey:@"loggableDatas"];

  encodedData = [v4 encodedData];

  return encodedData;
}

+ (id)deserializeLoggableDatas:(id)datas error:(id *)error
{
  datasCopy = datas;
  v18 = 0;
  v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:datasCopy error:&v18];

  v8 = v18;
  supportedClassTypes = [self supportedClassTypes];
  v17 = v8;
  v10 = [v7 decodeTopLevelObjectOfClasses:supportedClassTypes forKey:@"loggableDatas" error:&v17];
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

  if (error && v11)
  {
    v15 = v11;
    *error = v11;
  }

  return v10;
}

+ (id)supportedClassTypes
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  return [NSSet setWithObjects:v2, v3, objc_opt_class(), 0];
}

- (void)deleteObject:(id)object
{
  objectCopy = object;
  context = [(TransparencyManagedDataStore *)self context];
  [context deleteObject:objectCopy];
}

- (void)deleteObjectSet:(id)set
{
  setCopy = set;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [setCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(setCopy);
        }

        [(TransparencyManagedDataStore *)self deleteObject:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [setCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)clearState:(id *)state
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
  controller = [(TransparencyManagedDataStore *)self controller];
  persistentContainer = [controller persistentContainer];
  managedObjectModel = [persistentContainer managedObjectModel];

  [managedObjectModel entities];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10023E0C8;
  v8 = v12[3] = &unk_100327620;
  v13 = v8;
  v14 = &off_10033D958;
  selfCopy = self;
  v16 = &v22;
  v17 = &v18;
  [(TransparencyManagedDataStore *)self performBlockAndWait:v12];
  if (state)
  {
    v9 = v23[5];
    if (v9)
    {
      *state = v9;
    }
  }

  v10 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

- (BOOL)garbageCollectEntityBatchDelete:(id)delete predicate:(id)predicate error:(id *)error
{
  deleteCopy = delete;
  predicateCopy = predicate;
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
  v10 = deleteCopy;
  v22 = v10;
  v11 = predicateCopy;
  v23 = v11;
  selfCopy = self;
  v25 = &v26;
  [(TransparencyManagedDataStore *)self performBlockAndWaitWithMoc:&v18];
  v12 = v27;
  if (error)
  {
    v13 = v27[5];
    if (v13)
    {
      *error = v13;
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

- (BOOL)garbageCollectEntity:(id)entity predicate:(id)predicate error:(id *)error
{
  entityCopy = entity;
  predicateCopy = predicate;
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
  v10 = entityCopy;
  v23 = v10;
  v11 = predicateCopy;
  selfCopy = self;
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

    if (error)
    {
      v17 = v28[5];
      if (v17)
      {
        *error = v17;
      }
    }
  }

  _Block_object_dispose(&v27, 8);
  return v12 == 0;
}

- (void)storeTTR:(id)r withType:(id)type
{
  rCopy = r;
  typeCopy = type;
  if (qword_10039CEC8 != -1)
  {
    sub_1002604C0();
  }

  v8 = qword_10039CED0;
  if (os_log_type_enabled(qword_10039CED0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v15 = typeCopy;
    v16 = 2112;
    v17 = rCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "storeTTR %@, %@", buf, 0x16u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10023EF34;
  v11[3] = &unk_10032CC70;
  v12 = typeCopy;
  v13 = rCopy;
  v9 = rCopy;
  v10 = typeCopy;
  [(TransparencyManagedDataStore *)self performBlockAndWaitWithMoc:v11];
}

- (id)getTapToRadarDate:(id)date
{
  dateCopy = date;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10023E0B0;
  v17 = sub_10023E0C0;
  v18 = 0;
  v5 = +[CachedData fetchRequest];
  dateCopy = [NSPredicate predicateWithFormat:@"key = %@ AND application = %@", @"TapToRadarDate", dateCopy];
  [v5 setPredicate:dateCopy];

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

- (unint64_t)onMocCountEntity:(id)entity predicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v9 = [NSFetchRequest fetchRequestWithEntityName:entity];
  [v9 setPredicate:predicateCopy];

  context = [(TransparencyManagedDataStore *)self context];
  v11 = [context countForFetchRequest:v9 error:error];

  [TransparencyManagedDataStore cleanseError:error];
  return v11;
}

- (BOOL)logMetricsForApplication:(id)application error:(id *)error
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
  selfCopy = self;
  applicationCopy = application;
  v11 = applicationCopy;
  v12 = &v14;
  v13 = &v20;
  [(TransparencyManagedDataStore *)selfCopy performBlockAndWait:v9];
  if (error)
  {
    v6 = v15[5];
    if (v6)
    {
      *error = v6;
    }
  }

  v7 = *(v21 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

- (void)refaultObject:(id)object
{
  objectCopy = object;
  context = [(TransparencyManagedDataStore *)self context];
  [context refreshObject:objectCopy mergeChanges:0];
}

- (void)saveAndRefaultObject:(id)object
{
  objectCopy = object;
  context = [(TransparencyManagedDataStore *)self context];
  [context refreshObject:objectCopy mergeChanges:1];
}

- (void)refaultObjects:(id)objects
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allObjects = [objects allObjects];
  v5 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        context = [(TransparencyManagedDataStore *)self context];
        [context refreshObject:v9 mergeChanges:0];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (BOOL)persistWithError:(id *)error
{
  controller = [(TransparencyManagedDataStore *)self controller];
  context = [(TransparencyManagedDataStore *)self context];
  LOBYTE(error) = [controller saveContext:context error:error];

  return error;
}

- (BOOL)persistAndRefaultObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(TransparencyManagedDataStore *)self persistWithError:error];
  if (v7)
  {
    [(TransparencyManagedDataStore *)self refaultObject:objectCopy];
  }

  return v7;
}

- (BOOL)persistAndRefaultObjects:(id)objects error:(id *)error
{
  v5 = [(TransparencyManagedDataStore *)self persistWithError:error];
  if (v5)
  {
    context = [(TransparencyManagedDataStore *)self context];
    [context refreshAllObjects];
  }

  return v5;
}

- (BOOL)clearStateForApplication:(id)application error:(id *)error
{
  application = [NSPredicate predicateWithFormat:@"application = %@", application];
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTRequest" predicate:application error:error];
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTTreeHead" predicate:application error:error];
  [(TransparencyManagedDataStore *)self garbageCollectEntity:@"KTMutation" predicate:application error:error];

  return 1;
}

- (id)copyStatistics:(id *)statistics
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
  if (statistics)
  {
    v5 = v10[5];
    if (v5)
    {
      *statistics = v5;
    }
  }

  v6 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6;
}

- (void)performOnBatchesOfEntity:(id)entity predicate:(id)predicate enforceMax:(BOOL)max error:(id *)error block:(id)block
{
  entityCopy = entity;
  predicateCopy = predicate;
  blockCopy = block;
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
  v15 = entityCopy;
  v25 = v15;
  v16 = predicateCopy;
  v26 = v16;
  maxCopy = max;
  v17 = blockCopy;
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
    if (error)
    {
      v18 = v32[5];
      if (v18)
      {
        *error = v18;
      }
    }
  }

  else if (error)
  {
    v19 = v38[5];
    if (v19)
    {
      *error = v19;
    }
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);
}

- (id)retainContext
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  context = [(TransparencyManagedDataStore *)selfCopy context];

  if (!context)
  {
    controller = [(TransparencyManagedDataStore *)selfCopy controller];
    backgroundContext = [controller backgroundContext];
    [(TransparencyManagedDataStore *)selfCopy setContext:backgroundContext];
  }

  [(TransparencyManagedDataStore *)selfCopy setContextRefCount:[(TransparencyManagedDataStore *)selfCopy contextRefCount]+ 1];
  context2 = [(TransparencyManagedDataStore *)selfCopy context];
  objc_sync_exit(selfCopy);

  return context2;
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
    selfCopy = self;
    objc_sync_enter(selfCopy);
    contextRefCount = [(TransparencyManagedDataStore *)selfCopy contextRefCount];
    objc_sync_exit(selfCopy);

    sleep(1u);
    if (v3 < 2)
    {
      break;
    }

    --v3;
  }

  while (contextRefCount >= 1);
  return contextRefCount < 1;
}

- (void)performBlockAndWaitWithMoc:(id)moc
{
  mocCopy = moc;
  [(TransparencyManagedDataStore *)self retainContext];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100240B58;
  v11 = v10 = &unk_10031DB50;
  v12 = mocCopy;
  v5 = v11;
  v6 = mocCopy;
  [v5 performBlockAndWait:&v7];
  [(TransparencyManagedDataStore *)self releaseContext:v7];
}

- (void)performBlockAndWait:(id)wait
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100240C00;
  v5[3] = &unk_10032CDA0;
  waitCopy = wait;
  v4 = waitCopy;
  [(TransparencyManagedDataStore *)self performBlockAndWaitWithMoc:v5];
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_10023E0B0;
  v10[4] = sub_10023E0C0;
  v11 = os_transaction_create();
  retainContext = [(TransparencyManagedDataStore *)self retainContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100240D40;
  v7[3] = &unk_10032CDC8;
  v6 = blockCopy;
  v7[4] = self;
  v8 = v6;
  v9 = v10;
  [retainContext performBlock:v7];

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