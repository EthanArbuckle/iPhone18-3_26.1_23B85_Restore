@interface KTContext
+ (BOOL)checkNetworkError:(id)error;
+ (BOOL)hasAccountMismatch:(id)mismatch;
+ (BOOL)hasReachedEligibilityThreshold:(id)threshold;
+ (BOOL)isCurrentlyEligible:(id)eligible;
+ (id)analyticsSelfFlagNames;
+ (id)analyticsSuccessNames;
+ (id)chunkArray:(id)array chunkSize:(unint64_t)size;
+ (id)successMetricsKey:(unint64_t)key forApplicationID:(id)d;
+ (id)validateEventName:(unint64_t)name application:(id)application;
+ (unint64_t)validateStaticKeyForPeer:(id)peer accountKey:(id)key application:(id)application staticKeyStore:(id)store error:(id *)error;
+ (void)checkAndLogHardErrorIfNecessary:(unint64_t)necessary type:(unint64_t)type logger:(id)logger error:(id)error applicationID:(id)d;
+ (void)metricsForResult:(unint64_t)result type:(unint64_t)type logger:(id)logger applicationID:(id)d;
+ (void)updateEligibilityThreshold:(id)threshold;
- (BOOL)contextShouldGossip;
- (BOOL)drainContext;
- (BOOL)injectVerificationFailure:(id)failure failing:(id)failing error:(id *)error;
- (BOOL)peerStaticKeyFallback:(id)fallback accountKey:(id)key transparentData:(id *)data;
- (BOOL)ready:(id *)ready;
- (BOOL)shouldShowCFU:(id)u;
- (BOOL)unsupported:(id *)unsupported;
- (BOOL)validatePendingSMTs:(id)ts singleQuery:(id)query error:(id *)error;
- (BOOL)verifyInclusionProofDownload:(id)download error:(id *)error;
- (BOOL)verifyInclusionProofDownloadRecord:(id)record error:(id *)error;
- (KTContext)initWithApplicationID:(id)d dependencies:(id)dependencies;
- (KTContext)initWithApplicationKeyStore:(id)store dataStore:(id)dataStore smDataStore:(id)smDataStore staticKeyStore:(id)keyStore logClient:(id)client applicationID:(id)d contextStore:(id)contextStore accountKeyServer:(id)self0 stateMachine:(id)self1 kvs:(id)self2 cloudRecords:(id)self3 followup:(id)self4 settings:(id)self5 analyticsLogger:(id)self6 tapToRadar:(id)self7 eligibilityStatusReporter:(id)self8;
- (KTContextStore)contextStore;
- (KTSMManager)stateMachine;
- (id)analyticsForType:(unint64_t)type uri:(id)uri accountKey:(id)key serverLoggableDatas:(id)datas syncedLoggableDatas:(id)loggableDatas transparentData:(id)data selfVerificationInfo:(id)info responseTime:(id)self0 result:(unint64_t)self1 failure:(id)self2 responseMetadata:(id)self3;
- (id)copyState;
- (id)createQueryRequestForKTRequest:(id)request error:(id *)error;
- (id)metadataForInsertResponse:(id)response;
- (id)parseQueryRequestFromKTRequest:(id)request error:(id *)error;
- (id)parseQueryResponseFromKTRequest:(id)request error:(id *)error;
- (id)retrieveTLTSTH:(id *)h;
- (id)serverLoggableDatasDiagnostics:(id)diagnostics selfPushToken:(id)token humbled:(BOOL *)humbled;
- (id)stringForValidateType:(unint64_t)type;
- (unint64_t)deserializeServerLoggableDatas:(id)datas loggableDatas:(id *)loggableDatas error:(id *)error;
- (unint64_t)deserializeSyncedLoggableDatas:(id)datas loggableDatas:(id *)loggableDatas error:(id *)error;
- (unint64_t)fetchAndValidateEnrollKTRequest:(id)request transparentData:(id *)data loggableDatas:(id *)datas cloudOptIn:(id)in error:(id *)error;
- (unint64_t)handleBatchQueryResponse:(id)response queryRequest:(id)request receiptDate:(id)date fetchId:(id)id error:(id *)error transparentDataHandler:(id)handler;
- (unint64_t)handleInsertResponse:(id)response uri:(id)uri fetchId:(id)id error:(id *)error transparentDataHandler:(id)handler;
- (unint64_t)handleQueryResponse:(id)response queryRequest:(id)request receiptDate:(id)date fetchId:(id)id validateType:(unint64_t)type ktCapable:(BOOL)capable error:(id *)error transparentDataHandler:(id)self0;
- (unint64_t)validateAndReportPeerOrEnroll:(id)enroll type:(unint64_t)type transparentData:(id)data accountKey:(id)key loggableDatas:(id)datas initialResult:(unint64_t)result idsResponseTime:(id)time responseMetadata:(id)self0 error:(id *)self1;
- (unint64_t)validateAndReportSelf:(id)self transparentData:(id)data accountKey:(id)key serverloggableDatas:(id)datas syncedLoggableDatas:(id)loggableDatas selfVerificationInfo:(id)info optInCheck:(BOOL)check cloudDevices:(id)self0 pcsAccountKey:(id)self1 kvsOptInHistory:(id)self2 isReplay:(BOOL)self3 initialResult:(unint64_t)self4 idsResponseTime:(id)self5 responseMetadata:(id)self6 error:(id *)self7;
- (unint64_t)validateEnrollKTRequest:(id)request insertResponse:(id)response transparentData:(id *)data loggableDatas:(id *)datas cloudOptIn:(id)in error:(id *)error;
- (unint64_t)validateEnrollmentRequestId:(id)id transparentData:(id *)data loggableDatas:(id *)datas cloudOptIn:(id)in error:(id *)error;
- (unint64_t)validatePeer:(id)peer transparentData:(id)data accountKey:(id)key loggableDatas:(id)datas selfVerificationInfo:(id)info enforceStaticKey:(BOOL)staticKey idsResponseTime:(id)time responseTime:(id)self0 error:(id *)self1;
- (unint64_t)validatePeerOrEnrollKTRequest:(id)request queryRequest:(id)queryRequest queryResponse:(id)response transparentData:(id *)data loggableDatas:(id *)datas error:(id *)error;
- (unint64_t)validateSelf:(id)self transparentData:(id)data accountKey:(id)key serverloggableDatas:(id)datas syncedLoggableDatas:(id)loggableDatas selfVerificationInfo:(id)info idsResponseTime:(id)time responseTime:(id)self0 optInCheck:(BOOL)self1 cloudDevices:(id)self2 pcsAccountKey:(id)self3 kvsOptInHistory:(id)self4 isReplay:(BOOL)self5 error:(id *)self6;
- (unint64_t)validateSelfKTRequest:(id)request queryRequest:(id)queryRequest queryResponse:(id)response selfVerificationInfo:(id)info optInCheck:(BOOL)check cloudDevices:(id)devices pcsAccountKey:(id)key kvsOptInHistory:(id)self0 isReplay:(BOOL)self1 transparentData:(id *)self2 loggableDatas:(id *)self3 error:(id *)self4;
- (unint64_t)validateStaticKeyForPeer:(id)peer accountKey:(id)key error:(id *)error;
- (unint64_t)verifyConsistencyProofDownload:(id)download error:(id *)error;
- (unint64_t)verifyConsistencyProofDownloadRecord:(id)record error:(id *)error;
- (unint64_t)writeResult:(unint64_t)result request:(id)request proof:(id)proof replay:(BOOL)replay error:(id *)error;
- (void)analyticsForDecodeFailure:(id)failure error:(id)error;
- (void)analyticsForParseFailure:(id)failure;
- (void)analyticsForPredateLogBeginningMs:(unint64_t)ms expectedLogBeginningMS:(unint64_t)s sth:(id)sth;
- (void)analyticsForTooNewLogBeginningMs:(unint64_t)ms expectedLogBeginningMS:(unint64_t)s sth:(id)sth;
- (void)clearSelfTicketState:(id)state responseTime:(id)time;
- (void)clearState:(id)state;
- (void)dealloc;
- (void)fetchAndValidatePeerKTRequest:(id)request fetchNow:(BOOL)now completionHandler:(id)handler;
- (void)fetchRPCSingleQuery:(id)query userInitiated:(BOOL)initiated cachedYoungerThan:(id)than backgroundOpId:(id)id completionHandler:(id)handler;
- (void)logFinishFailureEvent:(id)event error:(id)error;
- (void)logFinishSuccessEvent:(id)event;
- (void)logStartEvent:(id)event;
- (void)optInStateForUri:(id)uri completionHandler:(id)handler;
- (void)processPeerTTR:(id)r;
- (void)processSTHsFromPeers:(id)peers verifier:(id)verifier completionHandler:(id)handler;
- (void)queryForUris:(id)uris userInitiated:(BOOL)initiated cachedYoungerThan:(id)than backgroundOpId:(id)id completionHandler:(id)handler;
- (void)recordEnrollOptInRecord:(id)record accountKey:(id)key transparentData:(id)data cloudOptIn:(id)in;
- (void)replaySelfValidate:(id)validate pcsAccountKey:(id)key queryRequest:(id)request queryResponse:(id)response responseTime:(id)time completionHandler:(id)handler;
- (void)reportValidationTime:(unint64_t)time initialResult:(unint64_t)result result:(unint64_t)a5 idsResponseTime:(id)responseTime;
- (void)selfValidationURIStatus:(id)status transparentData:(id)data selfDeviceID:(id)d logger:(id)logger;
- (void)storeEligibilityMetric:(unint64_t)metric result:(unint64_t)result error:(id)error;
- (void)validateIDSPeerWithUri:(id)uri application:(id)application idsData:(id)data ktData:(id)ktData complete:(id)complete;
- (void)validatePeerIDSKTVerification:(id)verification batchQuery:(id)query completionBlock:(id)block;
- (void)validatePeerIDSKTVerification:(id)verification serverRPC:(id)c completionBlock:(id)block;
- (void)validatePeerIDSKTVerification:(id)verification singleQuery:(id)query completionBlock:(id)block;
- (void)validatePeerRequestId:(id)id revalidate:(BOOL)revalidate fetchNow:(BOOL)now completionHandler:(id)handler;
- (void)validatePeers:(id)peers fetchNow:(BOOL)now completionBlock:(id)block;
- (void)validatePendingPeersForBatchQuery:(id)query;
- (void)validatePendingPeersForRpcId:(id)id;
- (void)validatePendingPeersForSingleQuery:(id)query;
- (void)validatePendingSMTsForBatchQuery:(id)query;
- (void)validatePendingSMTsForRpcId:(id)id;
- (void)validatePendingSMTsForSingleQuery:(id)query;
- (void)writeLoggableDatas:(id)datas request:(id)request;
- (void)writeResult:(id)result verification:(id)verification;
@end

@implementation KTContext

- (BOOL)validatePendingSMTs:(id)ts singleQuery:(id)query error:(id *)error
{
  tsCopy = ts;
  queryCopy = query;
  v58[0] = 0;
  v46 = [queryCopy getQueryRequest:v58];
  v8 = v58[0];
  v57 = v8;
  v9 = [queryCopy getQueryResponse:&v57];
  v10 = v57;

  metadata = [v9 metadata];
  v12 = kTransparencyResponseMetadataKeyServerHint;
  v13 = [metadata objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

  metadata2 = [v9 metadata];
  v15 = [metadata2 objectForKeyedSubscript:@"APS"];

  v16 = +[NSMutableDictionary dictionary];
  v17 = v16;
  v43 = v15;
  v44 = v13;
  if (v13 | v15)
  {
    if (v13)
    {
      [v16 setObject:v13 forKey:v12];
    }

    if (v15)
    {
      [v17 setObject:&__kCFBooleanTrue forKey:@"APS"];
    }
  }

  backgroundOpId = [queryCopy backgroundOpId];
  uUIDString = [backgroundOpId UUIDString];
  [v17 setObject:uUIDString forKeyedSubscript:@"opUUID"];

  if (v46 && v9)
  {
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    verifier = [(KTContext *)self verifier];
    responseTime = [queryCopy responseTime];
    rpcId = [queryCopy rpcId];
    v52 = v10;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10000F650;
    v47[3] = &unk_100316DA8;
    v47[4] = self;
    v41 = tsCopy;
    v48 = v41;
    v23 = v9;
    v49 = v23;
    v24 = v17;
    v50 = v24;
    v51 = &v53;
    v40 = [verifier handleQueryResponse:v23 queryRequest:v46 receiptDate:responseTime fetchId:rpcId error:&v52 rawDataHandler:v47];
    v42 = tsCopy;
    v25 = v52;

    v26 = v44;
    if (v25)
    {
      domain = [v25 domain];
      if ([domain isEqual:kTransparencyErrorServer])
      {
        v28 = [v25 code] == 7;
      }

      else
      {
        v28 = 0;
      }

      verifier2 = [(KTContext *)self verifier];
      data = [v23 data];
      v36 = [verifier2 failSMTsIfOverMMD:v41 skipOptInOut:v28 proof:data underlyingError:v25 errorCode:-306 analyticsData:v24];

      if ((v36 & 1) == 0)
      {
        *(v54 + 24) = 1;
      }

      if (!v40)
      {
        dataStore = [(KTContext *)self dataStore];
        rpcId2 = [queryCopy rpcId];
        [dataStore failRpcId:rpcId2 failure:v25 error:0];
      }
    }

    v32 = *(v54 + 24);

    _Block_object_dispose(&v53, 8);
    v33 = v42;
  }

  else
  {
    v29 = [v9 status] == 7;
    verifier3 = [(KTContext *)self verifier];
    data2 = [v9 data];
    v32 = [verifier3 failSMTsIfOverMMD:tsCopy skipOptInOut:v29 proof:data2 underlyingError:v10 errorCode:-306 analyticsData:v17] ^ 1;

    v33 = tsCopy;
    v25 = v10;
    v26 = v13;
  }

  return v32 & 1;
}

- (void)validatePendingSMTsForSingleQuery:(id)query
{
  queryCopy = query;
  dataStore = [(KTContext *)self dataStore];
  applicationID = [(KTContext *)self applicationID];
  v7 = [queryCopy uri];
  v21 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000FAC0;
  v19[3] = &unk_100316DF0;
  v19[4] = self;
  v8 = queryCopy;
  v20 = v8;
  v9 = [dataStore performForPendingSMTs:applicationID uri:v7 error:&v21 batchSize:20 block:v19];
  v10 = v21;

  if ((v9 & 1) != 0 || !v10)
  {
    if ((v9 & 1) == 0)
    {
      if (qword_10038BB80 != -1)
      {
        sub_100246C20();
      }

      v18 = qword_10038BB88;
      if (os_log_type_enabled(qword_10038BB88, OS_LOG_TYPE_DEBUG))
      {
        v12 = v18;
        rpcId = [v8 rpcId];
        *buf = 138543362;
        v23 = rpcId;
        v14 = "no pending SMTs found for rpcId %{public}@";
        v15 = v12;
        v16 = OS_LOG_TYPE_DEBUG;
        v17 = 12;
        goto LABEL_12;
      }
    }
  }

  else
  {
    if (qword_10038BB80 != -1)
    {
      sub_100246BF8();
    }

    v11 = qword_10038BB88;
    if (os_log_type_enabled(qword_10038BB88, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      rpcId = [v8 rpcId];
      *buf = 138543618;
      v23 = rpcId;
      v24 = 2112;
      v25 = v10;
      v14 = "no pending SMTs found for rpcId %{public}@: %@";
      v15 = v12;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 22;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v15, v16, v14, buf, v17);
    }
  }
}

- (void)validatePendingSMTsForBatchQuery:(id)query
{
  queryCopy = query;
  if (qword_10038BB80 != -1)
  {
    sub_100246C70();
  }

  v4 = qword_10038BB88;
  if (os_log_type_enabled(qword_10038BB88, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "validatePendingSMTsForBatchQuery: batch query is unimplemented", v5, 2u);
  }
}

- (void)validatePendingSMTsForRpcId:(id)id
{
  idCopy = id;
  dataStore = [(KTContext *)self dataStore];
  v9[4] = self;
  v10 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000FED4;
  v9[3] = &unk_100316E98;
  v6 = [dataStore performAndWaitForRpcId:idCopy error:&v10 block:v9];
  v7 = v10;

  if ((v6 & 1) == 0)
  {
    if (qword_10038BB80 != -1)
    {
      sub_100246C84();
    }

    v8 = qword_10038BB88;
    if (os_log_type_enabled(qword_10038BB88, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = idCopy;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "failed to find rpc for rpcId %{public}@: %@", buf, 0x16u);
    }
  }
}

+ (unint64_t)validateStaticKeyForPeer:(id)peer accountKey:(id)key application:(id)application staticKeyStore:(id)store error:(id *)error
{
  peerCopy = peer;
  keyCopy = key;
  storeCopy = store;
  v14 = [TransparencyApplication stripApplicationPrefixForIdentifier:application uri:peerCopy];
  v42 = 0;
  v15 = [storeCopy findStaticKeyByHandle:v14 error:&v42];

  v16 = v42;
  if (v15 || ([0 publicKeyID], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
  {
    if (keyCopy)
    {
      v41 = v16;
      v18 = [KTAccountPublicID ktAccountPublicIDWithPublicKeyInfo:keyCopy error:&v41];
      v19 = v41;

      if (v18)
      {
        publicKeyID = [v15 publicKeyID];
        v21 = [v18 isEqual:publicKeyID];

        if (v21)
        {
          handles = [v15 handles];
          v23 = [handles objectForKeyedSubscript:v14];

          if ([v23 errorCode])
          {
            if (error)
            {
              *error = +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", kTransparencyErrorDecode, [v23 errorCode], @"Synthetic mock error");
            }

            v24 = 2;
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
          errorCopy = error;
          v43[0] = @"peerID";
          publicAccountIdentity = [v18 publicAccountIdentity];
          v43[1] = @"entry";
          v44[0] = publicAccountIdentity;
          publicKeyID2 = [v15 publicKeyID];
          publicAccountIdentity2 = [publicKeyID2 publicAccountIdentity];
          v44[1] = publicAccountIdentity2;
          v33 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];

          v34 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-304 underlyingError:0 userinfo:v33 description:@"Static key mismatch"];

          if (qword_10038BBA0 != -1)
          {
            sub_100246F90();
          }

          v35 = qword_10038BBA8;
          if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v46 = peerCopy;
            v47 = 2112;
            v48 = v34;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Failed to validateStaticKeyForPeer %@: %@", buf, 0x16u);
          }

          if (errorCopy)
          {
            v36 = v34;
            *errorCopy = v34;
          }

          v24 = 2;
          v19 = v34;
        }
      }

      else
      {
        v25 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-305 underlyingError:0 userinfo:0 description:@"failed to decode"];

        if (qword_10038BBA0 != -1)
        {
          sub_100246FB8();
        }

        v26 = qword_10038BBA8;
        if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_ERROR))
        {
          v27 = v26;
          kt_hexString = [keyCopy kt_hexString];
          *buf = 138412802;
          v46 = peerCopy;
          v47 = 2112;
          v48 = kt_hexString;
          v49 = 2112;
          v50 = v25;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to parse account key %@ %@: %@", buf, 0x20u);
        }

        if (error)
        {
          v29 = v25;
          *error = v25;
        }

        v24 = 5;
        v19 = v25;
      }

      v16 = v19;
    }

    else
    {
      if (error)
      {
        *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-305 description:@"Static key missing"];
      }

      v24 = 5;
    }
  }

  else
  {
    publicKeyID3 = [0 publicKeyID];

    if (!publicKeyID3)
    {
      if (qword_10038BBA0 != -1)
      {
        sub_100246FE0();
      }

      v38 = qword_10038BBA8;
      if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_ERROR))
      {
        *buf = 141558274;
        v46 = 1752392040;
        v47 = 2112;
        v48 = peerCopy;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Static key entry for %{mask.hash}@ missing publicKeyID", buf, 0x16u);
      }
    }

    v24 = 1;
  }

  return v24;
}

- (unint64_t)validateStaticKeyForPeer:(id)peer accountKey:(id)key error:(id *)error
{
  keyCopy = key;
  peerCopy = peer;
  v10 = objc_opt_class();
  applicationID = [(KTContext *)self applicationID];
  staticKeyStore = [(KTContext *)self staticKeyStore];
  v13 = [v10 validateStaticKeyForPeer:peerCopy accountKey:keyCopy application:applicationID staticKeyStore:staticKeyStore error:error];

  return v13;
}

- (unint64_t)validatePeer:(id)peer transparentData:(id)data accountKey:(id)key loggableDatas:(id)datas selfVerificationInfo:(id)info enforceStaticKey:(BOOL)staticKey idsResponseTime:(id)time responseTime:(id)self0 error:(id *)self1
{
  peerCopy = peer;
  dataCopy = data;
  keyCopy = key;
  datasCopy = datas;
  [time timeIntervalSinceReferenceDate];
  v29 = 0;
  v17 = [dataCopy validateAndUpdateWithServerLoggableDatas:datasCopy accountKey:keyCopy idsResponseTime:&v29 error:?];
  v18 = v29;
  if (v17)
  {
    v19 = 1;
  }

  else
  {
    if (qword_10038BBA0 != -1)
    {
      sub_100247008();
    }

    v20 = qword_10038BBA8;
    if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_ERROR))
    {
      *buf = 141558530;
      v31 = 1752392040;
      v32 = 2112;
      v33 = peerCopy;
      v34 = 2112;
      v35 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to verify %{mask.hash}@ transparency: %@", buf, 0x20u);
    }

    v19 = 0;
    if (error && v18)
    {
      v21 = v18;
      v19 = 0;
      *error = v18;
    }
  }

  v28 = v18;
  v22 = [KTContextVerifier verifyLoggableDataSignatures:datasCopy accountKey:keyCopy error:&v28];
  v23 = v28;

  if ((v22 & 1) == 0)
  {
    if (qword_10038BBA0 != -1)
    {
      sub_100247030();
    }

    v24 = qword_10038BBA8;
    if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_ERROR))
    {
      *buf = 141558530;
      v31 = 1752392040;
      v32 = 2112;
      v33 = peerCopy;
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to verify %{mask.hash}@ signatures: %@", buf, 0x20u);
    }

    if (error && v23)
    {
      v25 = v23;
      *error = v23;
    }

    [dataCopy setStaticKeyStatus:4];
    v19 = 0;
  }

  return v19;
}

- (BOOL)injectVerificationFailure:(id)failure failing:(id)failing error:(id *)error
{
  failureCopy = failure;
  failingCopy = failing;
  settings = [(KTContext *)self settings];
  LODWORD(self) = [settings allowsInternalSecurityPolicies];

  if (self)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = failureCopy;
    v11 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v28;
      do
      {
        v15 = 0;
        do
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v27 + 1) + 8 * v15);
          deviceID = [v16 deviceID];
          v18 = [failingCopy containsObject:deviceID];

          if (v18)
          {
            if (qword_10038BBA0 != -1)
            {
              sub_100247058();
            }

            v19 = qword_10038BBA8;
            if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_ERROR))
            {
              v20 = v19;
              deviceID2 = [v16 deviceID];
              kt_hexString = [deviceID2 kt_hexString];
              *buf = 138543362;
              v32 = kt_hexString;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "inserting forced failure for peer %{public}@", buf, 0xCu);
            }

            v23 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-397 errorLevel:4 underlyingError:0 userinfo:0 description:@"Testing force error for peer"];
            [v16 setResult:0];
            [v16 setFailure:v23];
            if (error && v23)
            {
              v24 = v23;
              *error = v23;
            }

            v13 = 1;
          }

          v15 = v15 + 1;
        }

        while (v12 != v15);
        v12 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (unint64_t)validateSelf:(id)self transparentData:(id)data accountKey:(id)key serverloggableDatas:(id)datas syncedLoggableDatas:(id)loggableDatas selfVerificationInfo:(id)info idsResponseTime:(id)time responseTime:(id)self0 optInCheck:(BOOL)self1 cloudDevices:(id)self2 pcsAccountKey:(id)self3 kvsOptInHistory:(id)self4 isReplay:(BOOL)self5 error:(id *)self6
{
  selfCopy = self;
  dataCopy = data;
  keyCopy = key;
  datasCopy = datas;
  loggableDatasCopy = loggableDatas;
  responseTimeCopy = responseTime;
  devicesCopy = devices;
  accountKeyCopy = accountKey;
  historyCopy = history;
  v95 = 0;
  v26 = selfCopy;
  v27 = dataCopy;
  v28 = keyCopy;
  selfCopy2 = self;
  v79 = [KTContext validatePeer:"validatePeer:transparentData:accountKey:loggableDatas:selfVerificationInfo:enforceStaticKey:idsResponseTime:responseTime:error:" transparentData:time accountKey:responseTimeCopy loggableDatas:&v95 selfVerificationInfo:? enforceStaticKey:? idsResponseTime:? responseTime:? error:?];
  v30 = v95;
  settings = [(KTContext *)self settings];
  testingSelfValidationFailing = [settings testingSelfValidationFailing];

  v33 = testingSelfValidationFailing;
  v85 = responseTimeCopy;
  if (testingSelfValidationFailing && [(KTContext *)selfCopy2 injectVerificationFailure:datasCopy failing:testingSelfValidationFailing error:error])
  {
    v34 = 0;
    v35 = historyCopy;
    v36 = loggableDatasCopy;
    goto LABEL_35;
  }

  v37 = selfCopy2;
  v82 = v33;
  v83 = accountKeyCopy;
  v38 = v28;
  v94 = v30;
  v81 = datasCopy;
  v36 = loggableDatasCopy;
  v39 = [KTContextVerifier verifyServerLoggableDatas:datasCopy againstSyncedLoggableDatas:loggableDatasCopy cloudDevices:devicesCopy error:&v94];
  v40 = v94;

  if ((v39 & 1) == 0)
  {
    if (qword_10038BBA0 != -1)
    {
      sub_100247080();
    }

    v42 = qword_10038BBA8;
    if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_ERROR))
    {
      *buf = 141558530;
      v97 = 1752392040;
      v98 = 2112;
      v99 = selfCopy;
      v100 = 2112;
      v101 = v40;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Failed to verify %{mask.hash}@ server data against synced data: %@", buf, 0x20u);
    }

    v34 = 0;
    accountKeyCopy = v83;
    if (error && v40)
    {
      v43 = v40;
      v34 = 0;
      *error = v40;
    }

    goto LABEL_34;
  }

  if (!check)
  {
    v93 = v40;
    v41 = [v27 validateAndUpdateWithSyncedLoggableDatas:loggableDatasCopy accountKey:v28 cloudDevices:devicesCopy requestDate:responseTimeCopy error:&v93];
    v30 = v93;

    if ((v41 & 1) == 0)
    {
      if (qword_10038BBA0 != -1)
      {
        sub_1002470A8();
      }

      v36 = loggableDatasCopy;
      v33 = v82;
      v46 = qword_10038BBA8;
      datasCopy = v81;
      if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_ERROR))
      {
        *buf = 141558530;
        v97 = 1752392040;
        v98 = 2112;
        v99 = selfCopy;
        v100 = 2112;
        v101 = v30;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to verify %{mask.hash}@ transparent data against synced data: %@", buf, 0x20u);
      }

      accountKeyCopy = v83;
      if (error && v30)
      {
        v47 = v30;
        *error = v30;
        goto LABEL_28;
      }

      v35 = historyCopy;
LABEL_45:
      v34 = 0;
      goto LABEL_35;
    }

    v40 = v30;
  }

  if (!replay)
  {
    accountKeyServer = [(KTContext *)v37 accountKeyServer];
    v92 = v40;
    v45 = [accountKeyServer isAccountIdentity:v28 error:&v92];
    v30 = v92;

    if (v45)
    {
      v33 = v82;
      if (check)
      {
        v35 = historyCopy;
        v26 = selfCopy;
        v36 = loggableDatasCopy;
LABEL_55:
        accountKeyCopy = v83;
        goto LABEL_56;
      }

      v52 = v37;
      cloudRecords = [(KTContext *)v37 cloudRecords];
      enforceCKOptInRecords = [cloudRecords enforceCKOptInRecords];

      if (!enforceCKOptInRecords)
      {
LABEL_53:
        cloudRecords2 = [(KTContext *)v52 cloudRecords];
        enforceCKOptInRecords2 = [cloudRecords2 enforceCKOptInRecords];

        v62 = v52;
        v36 = loggableDatasCopy;
        if (enforceCKOptInRecords2)
        {
          v35 = historyCopy;
          v26 = selfCopy;
          v28 = v38;
          goto LABEL_55;
        }

        optInServer = [(KTContext *)v62 optInServer];
        v90 = 0;
        v35 = [optInServer getOptInHistory:&v90];
        v65 = v90;

        v78 = v27;
        if (!v65)
        {
          v89 = v30;
          v28 = v38;
          v72 = [v27 validateOptInHistory:v35 accountKey:v38 responseTime:v85 error:&v89];
          v73 = v89;

          if (v72)
          {
            v30 = v73;
            v26 = selfCopy;
            v33 = v82;
            accountKeyCopy = v83;
            goto LABEL_56;
          }

          v80 = 0;
          accountKeyCopy = v83;
          if (!error)
          {
            v30 = v73;
            v26 = selfCopy;
            goto LABEL_85;
          }

          v30 = v73;
          v26 = selfCopy;
          errorCopy2 = error;
          if (!v73)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        }

        domain = [v65 domain];
        if ([domain isEqualToString:kTransparencyErrorInterface])
        {
          code = [v65 code];

          v68 = selfCopy;
          v28 = v38;
          if (code == -308)
          {
            accountKeyCopy = v83;
            if (qword_10038BBA0 != -1)
            {
              sub_100247148();
            }

            v69 = qword_10038BBA8;
            if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_ERROR))
            {
              *buf = 141558530;
              v97 = 1752392040;
              v98 = 2112;
              v99 = selfCopy;
              v100 = 2112;
              v101 = v65;
              _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "Failed to get %{mask.hash}@ opt-in history (waiting for first unlock): %@", buf, 0x20u);
            }

            v80 = 2;
            goto LABEL_83;
          }
        }

        else
        {

          v68 = selfCopy;
          v28 = v38;
        }

        accountKeyCopy = v83;
        if (qword_10038BBA0 != -1)
        {
          sub_100247120();
        }

        v74 = qword_10038BBA8;
        if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_ERROR))
        {
          *buf = 141558530;
          v97 = 1752392040;
          v98 = 2112;
          v99 = v68;
          v100 = 2112;
          v101 = v65;
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "Failed to get %{mask.hash}@ opt-in history: %@", buf, 0x20u);
        }

        v80 = 0;
LABEL_83:
        v73 = v65;
        errorCopy2 = error;
        v26 = v68;
        if (!error)
        {
LABEL_85:

          datasCopy = v81;
          v33 = v82;
          v27 = v78;
          v34 = v80;
          goto LABEL_35;
        }

LABEL_84:
        v76 = v73;
        *errorCopy2 = v73;
        goto LABEL_85;
      }

      v55 = [v27 getLogDataForAccountKey:v28 uri:selfCopy];
      cloudRecords3 = [(KTContext *)v52 cloudRecords];
      applicationID = [(KTContext *)v52 applicationID];
      v91 = 0;
      v58 = [cloudRecords3 evaluateKTLogData:v55 application:applicationID error:&v91];
      v77 = v91;

      if (v58)
      {
        if (qword_10038BBA0 != -1)
        {
          sub_1002470F8();
        }

        v59 = qword_10038BBA8;
        if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v97 = v58;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "evaluateKTLogData eval result: %@", buf, 0xCu);
        }

        v33 = v82;
        goto LABEL_53;
      }

      v36 = loggableDatasCopy;
      if (qword_10038BBA0 != -1)
      {
        sub_100247170();
      }

      v26 = selfCopy;
      datasCopy = v81;
      v70 = qword_10038BBA8;
      v28 = v38;
      if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v97 = v77;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "evaluateKTLogData failure: %@", buf, 0xCu);
      }

      accountKeyCopy = v83;
      v71 = v77;
      if (error && v77)
      {
        v71 = v77;
        *error = v71;
      }

LABEL_28:
      v34 = 0;
      v35 = historyCopy;
      goto LABEL_35;
    }

    v33 = v82;
    if (qword_10038BBA0 != -1)
    {
      sub_1002470D0();
    }

    v26 = selfCopy;
    v36 = loggableDatasCopy;
    datasCopy = v81;
    v50 = qword_10038BBA8;
    accountKeyCopy = v83;
    if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_ERROR))
    {
      *buf = 141558530;
      v97 = 1752392040;
      v98 = 2112;
      v99 = selfCopy;
      v100 = 2112;
      v101 = v30;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Failed to verify %{mask.hash}@ account key: %@", buf, 0x20u);
    }

    if (error && v30)
    {
      v51 = v30;
      *error = v30;
      v34 = 0;
      v35 = historyCopy;
      goto LABEL_35;
    }

    v35 = historyCopy;
    goto LABEL_45;
  }

  if (([v83 isEqual:v28] & 1) == 0)
  {
    v36 = loggableDatasCopy;
    if (qword_10038BBA0 != -1)
    {
      sub_100247198();
    }

    v48 = qword_10038BBA8;
    accountKeyCopy = v83;
    if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_ERROR))
    {
      *buf = 141558274;
      v97 = 1752392040;
      v98 = 2112;
      v99 = selfCopy;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Failed to verify %{mask.hash}@ account key", buf, 0x16u);
    }

    v34 = 0;
LABEL_34:
    v30 = v40;
    v35 = historyCopy;
    datasCopy = v81;
    v33 = v82;
    goto LABEL_35;
  }

  v30 = v40;
  v36 = loggableDatasCopy;
  accountKeyCopy = v83;
  v35 = historyCopy;
  v33 = v82;
LABEL_56:
  v34 = v79;
  datasCopy = v81;
  if (error && v30)
  {
    v63 = v30;
    *error = v30;
  }

LABEL_35:

  return v34;
}

- (unint64_t)validateAndReportPeerOrEnroll:(id)enroll type:(unint64_t)type transparentData:(id)data accountKey:(id)key loggableDatas:(id)datas initialResult:(unint64_t)result idsResponseTime:(id)time responseMetadata:(id)self0 error:(id *)self1
{
  enrollCopy = enroll;
  dataCopy = data;
  keyCopy = key;
  datasCopy = datas;
  timeCopy = time;
  metadataCopy = metadata;
  applicationID = [(KTContext *)self applicationID];
  v22 = [KTContext validateEventName:type application:applicationID];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000142C8;
  v33[3] = &unk_1003173A0;
  v34 = metadataCopy;
  selfCopy = self;
  v36 = enrollCopy;
  v37 = dataCopy;
  v38 = keyCopy;
  v39 = datasCopy;
  v40 = timeCopy;
  typeCopy = type;
  resultCopy = result;
  v23 = timeCopy;
  v24 = datasCopy;
  v25 = keyCopy;
  v26 = dataCopy;
  v27 = enrollCopy;
  v28 = metadataCopy;
  v29 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v22 error:error block:v33];

  return v29;
}

- (void)clearSelfTicketState:(id)state responseTime:(id)time
{
  stateCopy = state;
  timeCopy = time;
  dataStore = [(KTContext *)self dataStore];
  applicationID = [(KTContext *)self applicationID];
  v21 = 0;
  v10 = [dataStore checkFollowupTicket:applicationID uri:stateCopy checkTime:timeCopy error:&v21];

  v11 = v21;
  if (v11 && [v11 code] != -338)
  {
    if (qword_10038BBA0 != -1)
    {
      sub_1002471C0();
    }

    v12 = qword_10038BBA8;
    if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      applicationID2 = [(KTContext *)self applicationID];
      *buf = 138544130;
      v23 = applicationID2;
      v24 = 2160;
      v25 = 1752392040;
      v26 = 2112;
      v27 = stateCopy;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to check followup ticket for %{public}@:%{mask.hash}@ with error: %@", buf, 0x2Au);
    }
  }

  if ((v10 - 1) <= 1)
  {
    dataStore2 = [(KTContext *)self dataStore];
    applicationID3 = [(KTContext *)self applicationID];
    v20 = 0;
    v17 = [dataStore2 clearFollowupTicket:applicationID3 uri:stateCopy error:&v20];
    v18 = v20;

    if ((v17 & 1) == 0)
    {
      if (qword_10038BBA0 != -1)
      {
        sub_1002471E8();
      }

      v19 = qword_10038BBA8;
      if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_ERROR))
      {
        *buf = 141558530;
        v23 = 1752392040;
        v24 = 2112;
        v25 = stateCopy;
        v26 = 2112;
        v27 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to clear followup ticket for %{mask.hash}@: %@", buf, 0x20u);
      }
    }
  }
}

- (unint64_t)validateAndReportSelf:(id)self transparentData:(id)data accountKey:(id)key serverloggableDatas:(id)datas syncedLoggableDatas:(id)loggableDatas selfVerificationInfo:(id)info optInCheck:(BOOL)check cloudDevices:(id)self0 pcsAccountKey:(id)self1 kvsOptInHistory:(id)self2 isReplay:(BOOL)self3 initialResult:(unint64_t)self4 idsResponseTime:(id)self5 responseMetadata:(id)self6 error:(id *)self7
{
  selfCopy = self;
  dataCopy = data;
  keyCopy = key;
  datasCopy = datas;
  loggableDatasCopy = loggableDatas;
  infoCopy = info;
  devicesCopy = devices;
  accountKeyCopy = accountKey;
  historyCopy = history;
  timeCopy = time;
  metadataCopy = metadata;
  v28 = [metadataCopy objectForKeyedSubscript:@"ResponseTime"];
  v29 = [NSDate kt_dateFromString:v28];

  v48 = historyCopy;
  if (replay)
  {
    LOBYTE(v45) = 1;
    v43 = accountKeyCopy;
    v44 = historyCopy;
    v30 = selfCopy;
    LOBYTE(v42) = check;
    v31 = timeCopy;
    v32 = dataCopy;
    v33 = dataCopy;
    v34 = keyCopy;
    v35 = keyCopy;
    v36 = datasCopy;
    v37 = accountKeyCopy;
    v38 = loggableDatasCopy;
    v39 = [(KTContext *)self validateSelf:selfCopy transparentData:v33 accountKey:v35 serverloggableDatas:datasCopy syncedLoggableDatas:loggableDatasCopy selfVerificationInfo:infoCopy idsResponseTime:timeCopy responseTime:v29 optInCheck:v42 cloudDevices:devicesCopy pcsAccountKey:v43 kvsOptInHistory:v44 isReplay:v45 error:error];
  }

  else
  {
    [(KTContext *)self applicationID];
    v40 = v47 = accountKeyCopy;
    v46 = [KTContext validateEventName:1 application:v40];

    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_100014BA8;
    v55[3] = &unk_100317408;
    v55[4] = self;
    v30 = selfCopy;
    v56 = selfCopy;
    v32 = dataCopy;
    v57 = dataCopy;
    v34 = keyCopy;
    v58 = keyCopy;
    v36 = datasCopy;
    v59 = datasCopy;
    v38 = loggableDatasCopy;
    v60 = loggableDatasCopy;
    v61 = infoCopy;
    v31 = timeCopy;
    v62 = timeCopy;
    v63 = v29;
    checkCopy = check;
    v64 = devicesCopy;
    resultCopy = result;
    v65 = metadataCopy;
    v39 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v46 error:error block:v55];

    v37 = v47;
  }

  return v39;
}

- (unint64_t)handleBatchQueryResponse:(id)response queryRequest:(id)request receiptDate:(id)date fetchId:(id)id error:(id *)error transparentDataHandler:(id)handler
{
  handlerCopy = handler;
  idCopy = id;
  dateCopy = date;
  requestCopy = request;
  responseCopy = response;
  verifier = [(KTContext *)self verifier];
  v20 = [verifier handleBatchQueryResponse:responseCopy queryRequest:requestCopy receiptDate:dateCopy fetchId:idCopy error:error transparentDataHandler:handlerCopy];

  return v20;
}

- (unint64_t)handleQueryResponse:(id)response queryRequest:(id)request receiptDate:(id)date fetchId:(id)id validateType:(unint64_t)type ktCapable:(BOOL)capable error:(id *)error transparentDataHandler:(id)self0
{
  capableCopy = capable;
  responseCopy = response;
  requestCopy = request;
  handlerCopy = handler;
  idCopy = id;
  dateCopy = date;
  applicationID = [(KTContext *)self applicationID];
  v21 = [KTContext validateEventName:type application:applicationID];

  verifier = [(KTContext *)self verifier];
  v35 = 0;
  v23 = [verifier handleQueryResponse:responseCopy queryRequest:requestCopy receiptDate:dateCopy fetchId:idCopy error:&v35 transparentDataHandler:handlerCopy];

  v24 = v35;
  if (v23 != 1)
  {
    metadata = [responseCopy metadata];
    v26 = [requestCopy uri];
    v27 = [(KTContext *)self analyticsForResponse:metadata type:type uri:v26 result:v23 ktCapable:capableCopy];

    if (v23)
    {
      v28 = 0;
    }

    else
    {
      v29 = [v27 objectForKeyedSubscript:@"ktSoftFailure"];
      bOOLValue = [v29 BOOLValue];

      v28 = bOOLValue ^ 1;
    }

    v31 = +[TransparencyAnalytics logger];
    [v31 logResultForEvent:v21 hardFailure:v28 & 1 result:v24 withAttributes:v27];
  }

  if (error && v24)
  {
    v32 = v24;
    *error = v24;
  }

  return v23;
}

- (id)metadataForInsertResponse:(id)response
{
  responseCopy = response;
  serverEventInfo = [responseCopy serverEventInfo];

  if (serverEventInfo)
  {
    v7 = kTransparencyResponseMetadataKeyServerHint;
    serverEventInfo2 = [responseCopy serverEventInfo];
    v8 = serverEventInfo2;
    serverEventInfo = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  return serverEventInfo;
}

- (unint64_t)handleInsertResponse:(id)response uri:(id)uri fetchId:(id)id error:(id *)error transparentDataHandler:(id)handler
{
  responseCopy = response;
  uriCopy = uri;
  idCopy = id;
  handlerCopy = handler;
  applicationID = [(KTContext *)self applicationID];
  v17 = [KTContext validateEventName:2 application:applicationID];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000152CC;
  v24[3] = &unk_100317430;
  v24[4] = self;
  v25 = responseCopy;
  v26 = uriCopy;
  v27 = idCopy;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = idCopy;
  v20 = uriCopy;
  v21 = responseCopy;
  v22 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v17 error:error block:v24];

  return v22;
}

- (KTContext)initWithApplicationID:(id)d dependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  dCopy = d;
  applicationKeyStore = [dependenciesCopy applicationKeyStore];
  dataStore = [dependenciesCopy dataStore];
  smDataStore = [dependenciesCopy smDataStore];
  staticKeyStore = [dependenciesCopy staticKeyStore];
  logClient = [dependenciesCopy logClient];
  contextStore = [dependenciesCopy contextStore];
  accountKeyServer = [dependenciesCopy accountKeyServer];
  stateMachine = [dependenciesCopy stateMachine];
  v13 = [dependenciesCopy kvs];
  cloudRecords = [dependenciesCopy cloudRecords];
  followup = [dependenciesCopy followup];
  settings = [dependenciesCopy settings];
  analyticsLogger = [dependenciesCopy analyticsLogger];
  tapToRadar = [dependenciesCopy tapToRadar];
  eligibilityStatusReporter = [dependenciesCopy eligibilityStatusReporter];

  v21 = [(KTContext *)self initWithApplicationKeyStore:applicationKeyStore dataStore:dataStore smDataStore:smDataStore staticKeyStore:staticKeyStore logClient:logClient applicationID:dCopy contextStore:contextStore accountKeyServer:accountKeyServer stateMachine:stateMachine kvs:v13 cloudRecords:cloudRecords followup:followup settings:settings analyticsLogger:analyticsLogger tapToRadar:tapToRadar eligibilityStatusReporter:eligibilityStatusReporter];
  return v21;
}

- (KTContext)initWithApplicationKeyStore:(id)store dataStore:(id)dataStore smDataStore:(id)smDataStore staticKeyStore:(id)keyStore logClient:(id)client applicationID:(id)d contextStore:(id)contextStore accountKeyServer:(id)self0 stateMachine:(id)self1 kvs:(id)self2 cloudRecords:(id)self3 followup:(id)self4 settings:(id)self5 analyticsLogger:(id)self6 tapToRadar:(id)self7 eligibilityStatusReporter:(id)self8
{
  storeCopy = store;
  dataStoreCopy = dataStore;
  smDataStoreCopy = smDataStore;
  keyStoreCopy = keyStore;
  clientCopy = client;
  dCopy = d;
  contextStoreCopy = contextStore;
  serverCopy = server;
  machineCopy = machine;
  kvsCopy = kvs;
  recordsCopy = records;
  followupCopy = followup;
  settingsCopy = settings;
  loggerCopy = logger;
  radarCopy = radar;
  reporterCopy = reporter;
  v66.receiver = self;
  v66.super_class = KTContext;
  v31 = [(KTContext *)&v66 init];
  v32 = v31;
  v58 = clientCopy;
  v59 = smDataStoreCopy;
  v56 = settingsCopy;
  if (!v31)
  {
    v42 = storeCopy;
    v44 = machineCopy;
    v46 = contextStoreCopy;
    goto LABEL_7;
  }

  v51 = kvsCopy;
  [(KTContext *)v31 setApplicationID:dCopy];
  [(KTContext *)v32 setApplicationKeyStore:storeCopy];
  [(KTContext *)v32 setDataStore:dataStoreCopy];
  [(KTContext *)v32 setSmDataStore:smDataStoreCopy];
  v53 = keyStoreCopy;
  [(KTContext *)v32 setStaticKeyStore:keyStoreCopy];
  [(KTContext *)v32 setLogClient:clientCopy];
  [(KTContext *)v32 setSettings:settingsCopy];
  v33 = [[KTContextVerifier alloc] initWithApplicationKeyStore:storeCopy dataStore:dataStoreCopy applicationID:dCopy context:v32];
  [(KTContext *)v32 setVerifier:v33];

  v34 = [TransparencyTranscript alloc];
  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  applicationID = [(KTContext *)v32 applicationID];
  v38 = [NSString stringWithFormat:@"%@-%@", v36, applicationID];
  [(KTContext *)v32 settings];
  v40 = v39 = dCopy;
  v41 = [(TransparencyTranscript *)v34 initWithContext:v38 settings:v40];
  [(KTContext *)v32 setTranscript:v41];

  v42 = storeCopy;
  if (!serverCopy)
  {
    serverCopy = [KTAccountKeyServer sharedKeyServiceForApplication:v39];
  }

  [(KTContext *)v32 setAccountKeyServer:serverCopy];
  v43 = v39;
  v44 = machineCopy;
  kvsCopy = v51;
  v45 = [[KTOptInManagerServer alloc] initWithApplication:v39 context:v32 stateMachine:machineCopy account:objc_opt_class() store:v51];
  [(KTContext *)v32 setOptInServer:v45];

  [(KTContext *)v32 setStateMachine:machineCopy];
  v46 = contextStoreCopy;
  [(KTContext *)v32 setContextStore:contextStoreCopy];
  [(KTContext *)v32 setFollowUp:followupCopy];
  [(KTContext *)v32 setCloudRecords:recordsCopy];
  [(KTContext *)v32 setTapToRadar:radarCopy];
  [(KTContext *)v32 setAnalyticsLogger:loggerCopy];
  [(KTContext *)v32 setEligibilityStatusReporter:reporterCopy];
  v47 = dispatch_queue_create("com.apple.transparencyd.eligibility", &_dispatch_queue_attr_concurrent);
  [(KTContext *)v32 setEligibilityQueue:v47];

  if (v32->_verifier)
  {
    keyStoreCopy = v53;
    dCopy = v43;
LABEL_7:
    v48 = v32;
    goto LABEL_13;
  }

  keyStoreCopy = v53;
  if (qword_10038BBC0 != -1)
  {
    sub_10024729C();
  }

  dCopy = v43;
  v49 = qword_10038BBC8;
  if (os_log_type_enabled(qword_10038BBC8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Cannot create a KTContext with an invalid KTPublicKeyStore", buf, 2u);
  }

  v48 = 0;
LABEL_13:

  return v48;
}

- (BOOL)drainContext
{
  dataStore = [(KTContext *)self dataStore];
  drainDataStore = [dataStore drainDataStore];

  return drainDataStore;
}

- (void)dealloc
{
  optInServer = [(KTContext *)self optInServer];
  [optInServer setContext:0];

  v4.receiver = self;
  v4.super_class = KTContext;
  [(KTContext *)&v4 dealloc];
}

- (void)logStartEvent:(id)event
{
  eventCopy = event;
  transcript = [(KTContext *)self transcript];
  applicationID = [(KTContext *)self applicationID];
  eventCopy = [NSString stringWithFormat:@"%@-%@", applicationID, eventCopy];

  [transcript startEvent:eventCopy];
}

- (void)logFinishSuccessEvent:(id)event
{
  eventCopy = event;
  transcript = [(KTContext *)self transcript];
  applicationID = [(KTContext *)self applicationID];
  eventCopy = [NSString stringWithFormat:@"%@-%@", applicationID, eventCopy];

  [transcript stopEventWithSuccess:eventCopy];
}

- (void)logFinishFailureEvent:(id)event error:(id)error
{
  errorCopy = error;
  eventCopy = event;
  transcript = [(KTContext *)self transcript];
  applicationID = [(KTContext *)self applicationID];
  eventCopy = [NSString stringWithFormat:@"%@-%@", applicationID, eventCopy];

  [transcript stopEventWithFailure:eventCopy error:errorCopy];
}

- (BOOL)unsupported:(id *)unsupported
{
  applicationKeyStore = [(KTContext *)self applicationKeyStore];
  unsupported = [applicationKeyStore unsupported];

  if (unsupported)
  {
    if (qword_10038BBC0 != -1)
    {
      sub_1002472C4();
    }

    v7 = qword_10038BBC8;
    if (os_log_type_enabled(qword_10038BBC8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v13 = kTransparencyProtocolVersion;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "This client version (%d) is no longer supported.", buf, 8u);
    }

    if (unsupported)
    {
      v8 = kTransparencyErrorInternal;
      applicationKeyStore2 = [(KTContext *)self applicationKeyStore];
      treeRollInfoURL = [applicationKeyStore2 treeRollInfoURL];
      *unsupported = [TransparencyError errorWithDomain:v8 code:-230 description:@"Client version (%d) no longer supported. See %@ for more info.", kTransparencyProtocolVersion, treeRollInfoURL];
    }
  }

  return unsupported;
}

- (BOOL)ready:(id *)ready
{
  ready = [(KTApplicationPublicKeyStore *)self->_applicationKeyStore ready];
  if (!ready)
  {
    if (ready)
    {
      *ready = [TransparencyError errorWithDomain:kTransparencyErrorInterface code:-41 description:@"KT public key store is not ready"];
    }

    if (qword_10038BBC0 != -1)
    {
      sub_1002472D8();
    }

    v5 = qword_10038BBC8;
    if (os_log_type_enabled(qword_10038BBC8, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "KT public key store is not ready", v7, 2u);
    }
  }

  return ready;
}

- (void)clearState:(id)state
{
  stateCopy = state;
  [(KTContext *)self logStartEvent:@"clearState"];
  stateCopy[2](stateCopy, 0);

  [(KTContext *)self logFinishSuccessEvent:@"clearState"];
}

- (id)copyState
{
  applicationKeyStore = [(KTContext *)self applicationKeyStore];
  copyKeyStoreState = [applicationKeyStore copyKeyStoreState];

  return copyKeyStoreState;
}

- (BOOL)contextShouldGossip
{
  applicationKeyStore = [(KTContext *)self applicationKeyStore];
  shutDown = [applicationKeyStore shutDown];

  if (!shutDown)
  {
    return 1;
  }

  applicationKeyStore2 = [(KTContext *)self applicationKeyStore];
  shutDown2 = [applicationKeyStore2 shutDown];
  v7 = (shutDown2 + kTransparencyThirtyDaysInMs);

  +[NSDate kt_currentTimeMs];
  return v8 < v7;
}

- (KTContextStore)contextStore
{
  WeakRetained = objc_loadWeakRetained(&self->_contextStore);

  return WeakRetained;
}

- (KTSMManager)stateMachine
{
  WeakRetained = objc_loadWeakRetained(&self->_stateMachine);

  return WeakRetained;
}

- (BOOL)shouldShowCFU:(id)u
{
  uCopy = u;
  dataStore = [(KTContext *)self dataStore];
  application = [uCopy application];
  v7 = [uCopy uri];
  responseTime = [uCopy responseTime];
  v39 = 0;
  v9 = [dataStore checkFollowupTicket:application uri:v7 checkTime:responseTime error:&v39];
  v10 = v39;

  if (v10 && [v10 code] != -338)
  {
    if (qword_10038BC90 != -1)
    {
      sub_100248200();
    }

    v11 = qword_10038BC98;
    if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      application2 = [uCopy application];
      v14 = [uCopy uri];
      *buf = 138544130;
      v41 = application2;
      v42 = 2160;
      v43 = 1752392040;
      v44 = 2112;
      v45 = v14;
      v46 = 2112;
      v47 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to check followup ticket for %{public}@:%{mask.hash}@ with error: %@", buf, 0x2Au);
    }
  }

  if (v9 != 2)
  {
    if (v9 == 1)
    {
      if (qword_10038BC90 != -1)
      {
        sub_100248228();
      }

      v27 = qword_10038BC98;
      if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v27;
        v29 = [uCopy uri];
        *buf = 141558274;
        v41 = 1752392040;
        v42 = 2112;
        v43 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Have active followup ticket for %{mask.hash}@", buf, 0x16u);
      }
    }

    else if (!v9)
    {
      dataStore2 = [(KTContext *)self dataStore];
      application3 = [uCopy application];
      v17 = [uCopy uri];
      responseTime2 = [uCopy responseTime];
      v38 = v10;
      v19 = [dataStore2 createFollowupTicket:application3 uri:v17 startTime:responseTime2 error:&v38];
      v20 = v38;

      if (v19)
      {
        dataStore3 = [(KTContext *)self dataStore];
        application4 = [uCopy application];
        v23 = [uCopy uri];
        responseTime3 = [uCopy responseTime];
        v25 = [dataStore3 checkFollowupTicket:application4 uri:v23 checkTime:responseTime3 error:0];

        v26 = v25 == 2;
      }

      else
      {
        if (qword_10038BC90 != -1)
        {
          sub_100248278();
        }

        v33 = qword_10038BC98;
        if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
        {
          v34 = v33;
          application5 = [uCopy application];
          v36 = [uCopy uri];
          *buf = 138544130;
          v41 = application5;
          v42 = 2160;
          v43 = 1752392040;
          v44 = 2112;
          v45 = v36;
          v46 = 2112;
          v47 = v20;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to create followup ticket for %{public}@:%{mask.hash}@ with error: %@", buf, 0x2Au);
        }

        v26 = 1;
      }

      v10 = v20;
      goto LABEL_28;
    }

    v26 = 0;
    goto LABEL_28;
  }

  if (qword_10038BC90 != -1)
  {
    sub_100248250();
  }

  v30 = qword_10038BC98;
  if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_DEFAULT))
  {
    v31 = v30;
    v32 = [uCopy uri];
    *buf = 141558274;
    v41 = 1752392040;
    v42 = 2112;
    v43 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Have expired followup ticket for %{mask.hash}@", buf, 0x16u);
  }

  v26 = 1;
LABEL_28:

  return v26;
}

- (unint64_t)writeResult:(unint64_t)result request:(id)request proof:(id)proof replay:(BOOL)replay error:(id *)error
{
  requestCopy = request;
  proofCopy = proof;
  if (requestCopy)
  {
    if (result == 2)
    {
      [requestCopy requestTime];
      v15 = v14 + kKTMaximumMergeDelayMs / 1000.0;
      if (v15 >= CFAbsoluteTimeGetCurrent())
      {
        result = 2;
      }

      else
      {
        result = 0;
      }
    }

    dataStore = [(KTContext *)self dataStore];
    v17 = objc_opt_class();
    managedObjectContext = [requestCopy managedObjectContext];
    v19 = [v17 createRequestFailure:managedObjectContext];

    if (!v19)
    {
      result = 2;
LABEL_46:

      goto LABEL_47;
    }

    [v19 setRequest:requestCopy];
    if (error)
    {
      if (*error)
      {
        code = [*error code];
      }

      else
      {
        code = -120;
      }

      [v19 setErrorCode:code];
      if (*error)
      {
        domain = [*error domain];
        [v19 setErrorDomain:domain];

LABEL_16:
        [requestCopy setUnsigned:"verificationResult" value:result];
        if (replay)
        {
          goto LABEL_46;
        }

        type = [requestCopy type];
        if (!error || result || type != 1)
        {
          goto LABEL_46;
        }

        dataStore2 = [(KTContext *)self dataStore];
        v24 = *error;
        applicationID = [(KTContext *)self applicationID];
        optInServer = [(KTContext *)self optInServer];
        v27 = [dataStore2 createFailureEvent:v24 application:applicationID optInServer:optInServer];

        failureEvent = [requestCopy failureEvent];

        if (failureEvent)
        {
          dataStore3 = [(KTContext *)self dataStore];
          failureEvent2 = [requestCopy failureEvent];
          [dataStore3 deleteObject:failureEvent2];
        }

        [requestCopy setFailureEvent:v27];
        if (qword_10038BC90 != -1)
        {
          sub_1002482A0();
        }

        v31 = qword_10038BC98;
        if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v31;
          eventId = [v27 eventId];
          requestId = [requestCopy requestId];
          errorDomain = [v19 errorDomain];
          *buf = 138544130;
          v59 = eventId;
          v60 = 2114;
          v61 = requestId;
          v62 = 2112;
          v63 = errorDomain;
          v64 = 1024;
          LODWORD(v65) = [v19 errorCode];
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Created failure eventId %{public}@ for self validation requestId %{public}@ because error: %@:%d", buf, 0x26u);
        }

        if (![(KTContext *)self shouldShowCFU:requestCopy])
        {
          goto LABEL_45;
        }

        optInServer2 = [(KTContext *)self optInServer];
        v57 = 0;
        v37 = [optInServer2 getAggregateOptInState:&v57];
        v38 = v57;

        if (!v37)
        {
          if (qword_10038BC90 != -1)
          {
            sub_1002482B4();
          }

          v39 = qword_10038BC98;
          if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v59 = v38;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "writeResult: failed getting optin state: %@", buf, 0xCu);
          }
        }

        v55 = v38;
        if ([v19 errorCode] == -289)
        {
          goto LABEL_33;
        }

        errorDomain2 = [v19 errorDomain];
        if ([errorDomain2 isEqual:@"com.apple.Transparency"])
        {
          errorCode = [v19 errorCode];

          if (errorCode == 7)
          {
LABEL_33:
            followUp = [(KTContext *)self followUp];
            applicationID2 = [(KTContext *)self applicationID];
            eventId2 = [v27 eventId];
            [followUp postFollowup:applicationID2 type:4 eventId:eventId2 errorCode:-289 optInState:v37 infoLink:0 additionalInfo:0 error:0];
LABEL_39:

            dataStore4 = [(KTContext *)self dataStore];
            application = [requestCopy application];
            v47 = [requestCopy uri];
            v56 = 0;
            v48 = [dataStore4 clearFollowupTicket:application uri:v47 error:&v56];
            v49 = v56;

            if ((v48 & 1) == 0)
            {
              if (qword_10038BC90 != -1)
              {
                sub_1002482DC();
              }

              v50 = qword_10038BC98;
              if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
              {
                v51 = v50;
                application2 = [requestCopy application];
                v53 = [requestCopy uri];
                *buf = 138544130;
                v59 = application2;
                v60 = 2160;
                v61 = 1752392040;
                v62 = 2112;
                v63 = v53;
                v64 = 2112;
                v65 = v49;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to clear followup ticket for %{public}@:%{mask.hash}@ with error: %@", buf, 0x2Au);
              }
            }

LABEL_45:
            result = 0;
            goto LABEL_46;
          }
        }

        else
        {
        }

        followUp = [(KTContext *)self followUp];
        applicationID2 = [(KTContext *)self applicationID];
        eventId2 = [v27 eventId];
        [followUp postFollowup:applicationID2 type:0 eventId:eventId2 errorCode:objc_msgSend(v19 optInState:"errorCode") infoLink:v37 additionalInfo:0 error:{0, 0}];
        goto LABEL_39;
      }
    }

    else
    {
      [v19 setErrorCode:-120];
    }

    [v19 setErrorDomain:kTransparencyErrorUnknown];
    goto LABEL_16;
  }

LABEL_47:

  return result;
}

- (unint64_t)deserializeServerLoggableDatas:(id)datas loggableDatas:(id *)loggableDatas error:(id *)error
{
  datasCopy = datas;
  serverLoggableDatas = [datasCopy serverLoggableDatas];
  v23 = 0;
  v10 = [TransparencyManagedDataStore deserializeLoggableDatas:serverLoggableDatas error:&v23];
  v11 = v23;

  if (v10)
  {
    if (loggableDatas)
    {
      v12 = v10;
      *loggableDatas = v10;
    }

    v13 = 1;
  }

  else
  {
    if (qword_10038BC90 != -1)
    {
      sub_100248304();
    }

    v14 = qword_10038BC98;
    if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      requestId = [datasCopy requestId];
      *buf = 138543362;
      v25 = requestId;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "deleting requestId %{public}@ with failed deserialization of serverLoggableDatas", buf, 0xCu);
    }

    v17 = kTransparencyErrorDecode;
    requestId2 = [datasCopy requestId];
    v19 = [TransparencyError errorWithDomain:v17 code:-131 underlyingError:v11 description:@"deleting requestId %@ with failed deserialization of serverLoggableDatas", requestId2];

    dataStore = [(KTContext *)self dataStore];
    [dataStore deleteObject:datasCopy];

    v13 = 0;
    if (error && v19)
    {
      v21 = v19;
      v13 = 0;
      *error = v19;
    }

    v11 = v19;
  }

  return v13;
}

- (unint64_t)validatePeerOrEnrollKTRequest:(id)request queryRequest:(id)queryRequest queryResponse:(id)response transparentData:(id *)data loggableDatas:(id *)datas error:(id *)error
{
  requestCopy = request;
  queryRequestCopy = queryRequest;
  responseCopy = response;
  v47 = [requestCopy getUnsigned:"type"];
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 2;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = sub_10002E95C;
  v80 = sub_10002E96C;
  v81 = 0;
  v14 = [requestCopy getUnsigned:?];
  metadata = [responseCopy metadata];
  v16 = [metadata objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
  [requestCopy setServerHint:v16];

  metadata2 = [responseCopy metadata];
  v18 = [metadata2 objectForKeyedSubscript:@"APS"];
  [requestCopy setUsedReversePush:v18 != 0];

  metadata3 = [responseCopy metadata];
  v20 = [metadata3 objectForKeyedSubscript:@"ResponseTime"];
  v21 = [NSDate kt_dateFromString:v20];
  [requestCopy setResponseTime:v21];

  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = sub_10002E95C;
  v74 = sub_10002E96C;
  v75 = 0;
  obj = 0;
  v22 = [(KTContext *)self deserializeServerLoggableDatas:requestCopy loggableDatas:&obj error:error];
  objc_storeStrong(&v75, obj);
  v83[3] = v22;
  if (v22 == 1)
  {
    v46 = [KTLoggableData isAccountKTCapable:v71[5]];
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = sub_10002E95C;
    v67 = sub_10002E96C;
    v68 = 0;
    responseTime = [requestCopy responseTime];
    requestId = [requestCopy requestId];
    v62 = 0;
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_10002E974;
    v53[3] = &unk_100318CC0;
    v56 = &v76;
    v57 = &v82;
    v53[4] = self;
    v60 = v47;
    v25 = requestCopy;
    v54 = v25;
    v58 = &v70;
    v61 = v14;
    v26 = responseCopy;
    v55 = v26;
    v59 = &v63;
    v27 = [(KTContext *)self handleQueryResponse:v26 queryRequest:queryRequestCopy receiptDate:responseTime fetchId:requestId validateType:v47 ktCapable:v46 error:&v62 transparentDataHandler:v53];
    v28 = v62;

    if (data)
    {
      v29 = v64[5];
      if (v29)
      {
        *data = v29;
      }
    }

    if (datas)
    {
      v30 = v71[5];
      if (v30)
      {
        *datas = v30;
      }
    }

    if (v27 == 2)
    {
      goto LABEL_12;
    }

    data = [queryRequestCopy data];
    [v25 setQueryRequest:data];

    data2 = [v26 data];
    [v25 setQueryResponse:data2];

    if (v27 != 1)
    {
LABEL_12:
      if (error && v28)
      {
        v34 = v28;
        *error = v28;
      }

      v52 = v28;
      v33 = [(KTContext *)self writeResult:v27 request:v25 proof:0 error:&v52];
      v35 = v52;

      v83[3] = v33;
      v28 = v35;
    }

    else
    {
      v33 = v83[3];
    }

    if (v33 == 1)
    {
      goto LABEL_20;
    }

    v36 = v77;
    if (error)
    {
      v37 = v77[5];
      if (v37)
      {
        *error = v37;
        v33 = v83[3];
        v36 = v77;
      }
    }

    v51 = v36[5];
    v38 = [(KTContext *)self writeResult:v33 request:v25 proof:0 error:&v51];
    objc_storeStrong(v36 + 5, v51);
    v83[3] = v38;
    if (v38 == 1)
    {
LABEL_20:
      [v25 setUnsigned:"verificationResult" value:1];
    }

    dataStore = [(KTContext *)self dataStore];
    v40 = [dataStore persistAndRefaultObject:v25 error:error];

    if ((v40 & 1) == 0)
    {
      if (error && *error)
      {
        dataStore2 = [(KTContext *)self dataStore];
        [dataStore2 reportCoreDataPersistEventForLocation:@"validatePeerOrEnrollKTRequest" underlyingError:*error];
      }

      if (qword_10038BC90 != -1)
      {
        sub_10024832C();
      }

      v42 = qword_10038BC98;
      if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
      {
        v43 = @"enroll";
        if (!v47)
        {
          v43 = @"peer";
        }

        if (error)
        {
          v44 = *error;
        }

        else
        {
          v44 = 0;
        }

        *buf = 138412546;
        v87 = v43;
        v88 = 2112;
        v89 = v44;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "failed to save validate %@ with response: %@", buf, 0x16u);
      }
    }

    v22 = v83[3];

    _Block_object_dispose(&v63, 8);
  }

  _Block_object_dispose(&v70, 8);

  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v82, 8);

  return v22;
}

- (void)writeLoggableDatas:(id)datas request:(id)request
{
  datasCopy = datas;
  requestCopy = request;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [datasCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(datasCopy);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        dataStore = [(KTContext *)self dataStore];
        application = [requestCopy application];
        v15 = [dataStore createRecordFromLoggableData:v12 application:application];

        [v15 setRequest:requestCopy];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [datasCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (unint64_t)deserializeSyncedLoggableDatas:(id)datas loggableDatas:(id *)loggableDatas error:(id *)error
{
  datasCopy = datas;
  clientLoggableDatas = [datasCopy clientLoggableDatas];
  v23 = 0;
  v10 = [TransparencyManagedDataStore deserializeLoggableDatas:clientLoggableDatas error:&v23];
  v11 = v23;

  if (v10)
  {
    if (loggableDatas)
    {
      v12 = v10;
      *loggableDatas = v10;
    }

    v13 = 1;
  }

  else
  {
    if (qword_10038BC90 != -1)
    {
      sub_1002483E0();
    }

    v14 = qword_10038BC98;
    if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      requestId = [datasCopy requestId];
      *buf = 138543362;
      v25 = requestId;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "deleting requestId %{public}@ with failed deserialization of clientLoggableDatas", buf, 0xCu);
    }

    v17 = kTransparencyErrorDecode;
    requestId2 = [datasCopy requestId];
    v19 = [TransparencyError errorWithDomain:v17 code:-131 underlyingError:v11 description:@"deleting requestId %@ with failed deserialization of clientLoggableDatas", requestId2];

    dataStore = [(KTContext *)self dataStore];
    [dataStore deleteObject:datasCopy];

    v13 = 0;
    if (error && v19)
    {
      v21 = v19;
      v13 = 0;
      *error = v19;
    }

    v11 = v19;
  }

  return v13;
}

- (unint64_t)validateSelfKTRequest:(id)request queryRequest:(id)queryRequest queryResponse:(id)response selfVerificationInfo:(id)info optInCheck:(BOOL)check cloudDevices:(id)devices pcsAccountKey:(id)key kvsOptInHistory:(id)self0 isReplay:(BOOL)self1 transparentData:(id *)self2 loggableDatas:(id *)self3 error:(id *)self4
{
  requestCopy = request;
  queryRequestCopy = queryRequest;
  responseCopy = response;
  infoCopy = info;
  devicesCopy = devices;
  keyCopy = key;
  historyCopy = history;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 2;
  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = sub_10002E95C;
  v93 = sub_10002E96C;
  v94 = 0;
  v21 = [requestCopy getUnsigned:?];
  metadata = [responseCopy metadata];
  v23 = [metadata objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
  [requestCopy setServerHint:v23];

  metadata2 = [responseCopy metadata];
  v25 = [metadata2 objectForKeyedSubscript:@"APS"];
  [requestCopy setUsedReversePush:v25 != 0];

  metadata3 = [responseCopy metadata];
  v27 = [metadata3 objectForKeyedSubscript:@"ResponseTime"];
  v28 = [NSDate kt_dateFromString:v27];
  [requestCopy setResponseTime:v28];

  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = sub_10002E95C;
  v87 = sub_10002E96C;
  v88 = 0;
  obj = 0;
  v29 = [(KTContext *)self deserializeServerLoggableDatas:requestCopy loggableDatas:&obj error:?];
  objc_storeStrong(&v88, obj);
  v96[3] = v29;
  if (v29 == 1)
  {
    v52 = [KTLoggableData isAccountKTCapable:v84[5]];
    v76 = 0;
    v77 = &v76;
    v78 = 0x3032000000;
    v79 = sub_10002E95C;
    v80 = sub_10002E96C;
    v81 = 0;
    responseTime = [requestCopy responseTime];
    requestId = [requestCopy requestId];
    v75 = 0;
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10002FA1C;
    v61[3] = &unk_100318DC8;
    v68 = &v89;
    v69 = &v95;
    v61[4] = self;
    v32 = requestCopy;
    v62 = v32;
    v63 = devicesCopy;
    v70 = &v83;
    v64 = infoCopy;
    checkCopy = check;
    v65 = keyCopy;
    replayCopy = replay;
    v66 = historyCopy;
    v72 = v21;
    v33 = responseCopy;
    v67 = v33;
    v71 = &v76;
    v34 = [(KTContext *)self handleQueryResponse:v33 queryRequest:queryRequestCopy receiptDate:responseTime fetchId:requestId validateType:0 ktCapable:v52 error:&v75 transparentDataHandler:v61];
    v35 = v75;

    if (data)
    {
      v36 = v77[5];
      if (v36)
      {
        *data = v36;
      }
    }

    if (datas)
    {
      v37 = v84[5];
      if (v37)
      {
        *datas = v37;
      }
    }

    if (v34 == 2)
    {
      goto LABEL_12;
    }

    data = [queryRequestCopy data];
    [v32 setQueryRequest:data];

    data2 = [v33 data];
    [v32 setQueryResponse:data2];

    if (v34 != 1)
    {
LABEL_12:
      if (error && v35)
      {
        v41 = v35;
        *error = v35;
      }

      v60 = v35;
      v40 = [(KTContext *)self writeResult:v34 request:v32 proof:0 replay:replay error:&v60];
      v42 = v60;

      v96[3] = v40;
      v35 = v42;
    }

    else
    {
      v40 = v96[3];
    }

    if (v40 == 1)
    {
      goto LABEL_20;
    }

    v43 = v90;
    if (error)
    {
      v44 = v90[5];
      if (v44)
      {
        *error = v44;
        v40 = v96[3];
        v43 = v90;
      }
    }

    v59 = v43[5];
    v45 = [(KTContext *)self writeResult:v40 request:v32 proof:0 replay:replay error:&v59];
    objc_storeStrong(v43 + 5, v59);
    v96[3] = v45;
    if (v45 == 1)
    {
LABEL_20:
      [v32 setUnsigned:"verificationResult" value:1];
    }

    dataStore = [(KTContext *)self dataStore];
    v47 = [dataStore persistAndRefaultObject:v32 error:error];

    if ((v47 & 1) == 0)
    {
      if (error && *error)
      {
        dataStore2 = [(KTContext *)self dataStore];
        [dataStore2 reportCoreDataPersistEventForLocation:@"validateSelfResponse" underlyingError:*error];
      }

      if (qword_10038BC90 != -1)
      {
        sub_100248408();
      }

      v49 = qword_10038BC98;
      if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
      {
        errorCopy = error;
        if (error)
        {
          errorCopy = *error;
        }

        *buf = 138412290;
        v100 = errorCopy;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "failed to save validate self with response: %@", buf, 0xCu);
      }
    }

    v29 = v96[3];

    _Block_object_dispose(&v76, 8);
  }

  _Block_object_dispose(&v83, 8);

  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(&v95, 8);

  return v29;
}

- (void)recordEnrollOptInRecord:(id)record accountKey:(id)key transparentData:(id)data cloudOptIn:(id)in
{
  recordCopy = record;
  inCopy = in;
  v12 = [data accountOptInRecord:key];
  v13 = v12;
  if (v12)
  {
    v14 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v12 timestampMs] / 1000.0);
    applicationID = [(KTContext *)self applicationID];
    v22 = 0;
    v16 = [inCopy addOptInStateWithURI:recordCopy smtTimestamp:v14 application:applicationID state:objc_msgSend(v13 error:{"optIn"), &v22}];
    v17 = v22;

    if ((v16 & 1) == 0)
    {
      if (qword_10038BC90 != -1)
      {
        sub_1002484E4();
      }

      v18 = qword_10038BC98;
      if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
        kt_toISO_8601_UTCString = [v14 kt_toISO_8601_UTCString];
        *buf = 141558786;
        v24 = 1752392040;
        v25 = 2112;
        v26 = recordCopy;
        v27 = 2114;
        v28 = kt_toISO_8601_UTCString;
        v29 = 2112;
        v30 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to update cloud opt-in records for %{mask.hash}@ at %{public}@: %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    if (qword_10038BC90 != -1)
    {
      sub_10024850C();
    }

    v21 = qword_10038BC98;
    if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
    {
      *buf = 141558274;
      v24 = 1752392040;
      v25 = 2112;
      v26 = recordCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to find optInOut record during enroll for %{mask.hash}@", buf, 0x16u);
    }
  }
}

- (unint64_t)validateEnrollKTRequest:(id)request insertResponse:(id)response transparentData:(id *)data loggableDatas:(id *)datas cloudOptIn:(id)in error:(id *)error
{
  requestCopy = request;
  responseCopy = response;
  inCopy = in;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 2;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_10002E95C;
  v67 = sub_10002E96C;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_10002E95C;
  v61 = sub_10002E96C;
  v62 = 0;
  v56 = 0;
  v15 = [(KTContext *)self deserializeServerLoggableDatas:requestCopy loggableDatas:&v56 error:error];
  v43 = v56;
  v70[3] = v15;
  if (v15 == 1)
  {
    errorCopy = error;
    dataCopy = data;
    datasCopy = datas;
    v18 = [requestCopy getUnsigned:?];
    v19 = [requestCopy uri];
    requestId = [requestCopy requestId];
    v55 = 0;
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100030AAC;
    v46[3] = &unk_100318ED0;
    v51 = &v63;
    v52 = &v69;
    v46[4] = self;
    v21 = requestCopy;
    v47 = v21;
    v22 = v43;
    v48 = v22;
    v54 = v18;
    v49 = responseCopy;
    v50 = inCopy;
    v53 = &v57;
    v23 = [(KTContext *)self handleInsertResponse:v49 uri:v19 fetchId:requestId error:&v55 transparentDataHandler:v46];
    v24 = v55;

    if (dataCopy)
    {
      v25 = v58[5];
      if (v25)
      {
        *dataCopy = v25;
      }
    }

    if (datasCopy && v22)
    {
      v26 = v22;
      *datasCopy = v22;
    }

    if (v23 == 1)
    {
      v27 = v70[3];
    }

    else
    {
      if (errorCopy && v24)
      {
        v28 = v24;
        *errorCopy = v24;
      }

      v45 = v24;
      v27 = [(KTContext *)self writeResult:v23 request:v21 proof:0 error:&v45];
      v29 = v45;

      v70[3] = v27;
      v24 = v29;
    }

    if (v27 == 1)
    {
      goto LABEL_19;
    }

    v30 = v64;
    if (errorCopy)
    {
      v31 = v64[5];
      if (v31)
      {
        *errorCopy = v31;
        v27 = v70[3];
        v30 = v64;
      }
    }

    obj = v30[5];
    v32 = [(KTContext *)self writeResult:v27 request:v21 proof:0 error:&obj];
    objc_storeStrong(v30 + 5, obj);
    v70[3] = v32;
    if (v32 == 1)
    {
LABEL_19:
      [v21 setUnsigned:"verificationResult" value:1];
    }

    dataStore = [(KTContext *)self dataStore];
    v34 = [dataStore persistAndRefaultObject:v21 error:errorCopy];

    v35 = errorCopy;
    if ((v34 & 1) == 0)
    {
      if (errorCopy && *errorCopy)
      {
        dataStore2 = [(KTContext *)self dataStore];
        [dataStore2 reportCoreDataPersistEventForLocation:@"validateEnrollKTRequest" underlyingError:*errorCopy];

        v35 = errorCopy;
      }

      if (qword_10038BC90 != -1)
      {
        sub_100248520();
        v35 = errorCopy;
      }

      v37 = qword_10038BC98;
      if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
      {
        if (v35)
        {
          v38 = *v35;
        }

        else
        {
          v38 = 0;
        }

        *buf = 138412290;
        v74 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "failed to save validate enrollment with response: %@", buf, 0xCu);
      }
    }

    v15 = v70[3];
  }

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  _Block_object_dispose(&v69, 8);
  return v15;
}

- (id)createQueryRequestForKTRequest:(id)request error:(id *)error
{
  v6 = [request uri];
  applicationID = [(KTContext *)self applicationID];
  v13 = 0;
  v8 = [TransparencyRPCRequestBuilder buildQueryRequest:v6 application:applicationID error:&v13];
  v9 = v13;

  if (v8)
  {
    v10 = v8;
  }

  else if (error && v9)
  {
    v11 = v9;
    *error = v9;
  }

  return v8;
}

- (id)parseQueryRequestFromKTRequest:(id)request error:(id *)error
{
  requestCopy = request;
  queryRequest = [requestCopy queryRequest];

  if (queryRequest)
  {
    queryRequest2 = [requestCopy queryRequest];
    queryRequest = [(TransparencyGPBMessage *)QueryRequest parseFromData:queryRequest2 error:error];
  }

  queryRequest3 = [requestCopy queryRequest];

  if (!queryRequest3 || queryRequest)
  {
    if (queryRequest)
    {
      v14 = queryRequest;
      goto LABEL_32;
    }
  }

  else
  {
    if (qword_10038BC90 != -1)
    {
      sub_1002485D4();
    }

    v10 = qword_10038BC98;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      requestId = [requestCopy requestId];
      v12 = requestId;
      if (error)
      {
        v13 = *error;
      }

      else
      {
        v13 = 0;
      }

      *buf = 138543618;
      v26 = requestId;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "parse saved queryRequest for requestId %{public}@ failed: %@", buf, 0x16u);
    }
  }

  [requestCopy setQueryRequest:0];
  [requestCopy setQueryResponse:0];
  [requestCopy setServerHint:0];
  [requestCopy setUsedReversePush:0];
  [requestCopy setResponseTime:0];
  dataStore = [(KTContext *)self dataStore];
  v24 = 0;
  v16 = [dataStore persistWithError:&v24];
  v17 = v24;

  if ((v16 & 1) == 0)
  {
    if (qword_10038BC90 != -1)
    {
      sub_1002485E8();
    }

    v18 = qword_10038BC98;
    if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "failed to remove query request and response for unparseable request: %@", buf, 0xCu);
    }

    dataStore2 = [(KTContext *)self dataStore];
    [dataStore2 reportCoreDataPersistEventForLocation:@"verifyDeviceWitnesses" underlyingError:v17];
  }

  queryRequest4 = [requestCopy queryRequest];

  if (queryRequest4)
  {
    if (error)
    {
      *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-133 underlyingError:*error description:@"saved query request failed to decode"];
    }

    if (qword_10038BC90 != -1)
    {
      sub_100248610();
    }

    v21 = qword_10038BC98;
    if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v22 = *error;
      }

      else
      {
        v22 = 0;
      }

      *buf = 138412290;
      v26 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "saved query request failed to decode: %@", buf, 0xCu);
    }
  }

  v14 = 0;
LABEL_32:

  return v14;
}

- (id)parseQueryResponseFromKTRequest:(id)request error:(id *)error
{
  requestCopy = request;
  queryResponse = [requestCopy queryResponse];

  if (queryResponse)
  {
    queryResponse2 = [requestCopy queryResponse];
    queryResponse = [(TransparencyGPBMessage *)QueryResponse parseFromData:queryResponse2 error:error];
  }

  queryResponse3 = [requestCopy queryResponse];

  if (!queryResponse3 || queryResponse)
  {
    if (queryResponse)
    {
      serverHint = [requestCopy serverHint];

      if (serverHint)
      {
        serverHint2 = [requestCopy serverHint];
        [queryResponse setMetadataValue:serverHint2 key:kTransparencyResponseMetadataKeyServerHint];
      }

      if ([requestCopy usedReversePush])
      {
        [queryResponse setMetadataValue:@"YES" key:@"APS"];
      }

      responseTime = [requestCopy responseTime];

      if (responseTime)
      {
        responseTime2 = [requestCopy responseTime];
        kt_dateToString = [responseTime2 kt_dateToString];
        [queryResponse setMetadataValue:kt_dateToString key:@"ResponseTime"];
      }
    }
  }

  else
  {
    if (qword_10038BC90 != -1)
    {
      sub_100248638();
    }

    v9 = qword_10038BC98;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      requestId = [requestCopy requestId];
      v11 = requestId;
      if (error)
      {
        v12 = *error;
      }

      else
      {
        v12 = 0;
      }

      v19 = 138543618;
      v20 = requestId;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "parse saved queryResponse as query response for requestId %{public}@ failed: %@", &v19, 0x16u);
    }
  }

  return queryResponse;
}

- (BOOL)peerStaticKeyFallback:(id)fallback accountKey:(id)key transparentData:(id *)data
{
  fallbackCopy = fallback;
  keyCopy = key;
  v24 = 0;
  v10 = [(KTContext *)self validateStaticKeyForPeer:fallbackCopy accountKey:keyCopy error:&v24];
  v11 = v24;
  if (qword_10038BC90 != -1)
  {
    sub_100248700();
  }

  v12 = qword_10038BC98;
  if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v26 = fallbackCopy;
    v27 = 1024;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "validatePeer static key: %@ result: %d", buf, 0x12u);
  }

  if (!v10)
  {
    v13 = objc_alloc_init(OptInOutWithExt);
    [(OptInOut *)v13 setOptIn:1];
    v14 = [NSDate dateWithTimeIntervalSinceNow:-3600.0];
    [v14 timeIntervalSince1970];
    [(OptInOut *)v13 setTimestampMs:(v15 * 1000.0)];

    v16 = [KTTransparentData alloc];
    v17 = +[NSData data];
    v18 = [(KTTransparentData *)v16 initWithUriVRFOutput:v17];

    [(KTTransparentData *)v18 setStaticKeyEnforced:1];
    v19 = objc_alloc_init(KTAccount);
    [(KTAccount *)v19 setAccountKey:keyCopy];
    optInOutHistory = [(KTAccount *)v19 optInOutHistory];
    [optInOutHistory addObject:v13];

    accounts = [(KTTransparentData *)v18 accounts];
    [accounts addObject:v19];

    if (data && v18)
    {
      v22 = v18;
      *data = v18;
    }
  }

  return v10 == 0;
}

- (void)fetchAndValidatePeerKTRequest:(id)request fetchNow:(BOOL)now completionHandler:(id)handler
{
  nowCopy = now;
  requestCopy = request;
  handlerCopy = handler;
  v37 = 0;
  v10 = [(KTContext *)self unsupported:&v37];
  v11 = v37;
  v12 = v11;
  if (!v10)
  {
    if (nowCopy)
    {
      if (qword_10038BC90 != -1)
      {
        sub_100248750();
      }

      v14 = qword_10038BC98;
      if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "client requested fresh KT data", buf, 2u);
      }

      v15 = 0;
      v16 = 0;
    }

    else
    {
      v35 = v11;
      v15 = [(KTContext *)self parseQueryRequestFromKTRequest:requestCopy error:&v35];
      v21 = v35;

      v34 = v21;
      v16 = [(KTContext *)self parseQueryResponseFromKTRequest:requestCopy error:&v34];
      v12 = v34;

      if (v16 && v15)
      {
        if (qword_10038BC90 != -1)
        {
          sub_100248728();
        }

        v22 = qword_10038BC98;
        if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          requestId = [requestCopy requestId];
          *buf = 138543362;
          v39 = requestId;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Using existing queryResponse in validatePeer for requestId %{public}@", buf, 0xCu);
        }

        v30 = 0;
        v31 = 0;
        v29 = v12;
        v25 = [(KTContext *)self validatePeerOrEnrollKTRequest:requestCopy queryRequest:v15 queryResponse:v16 transparentData:&v31 loggableDatas:&v30 error:&v29];
        v26 = v31;
        v27 = v30;
        v28 = v29;

        handlerCopy[2](handlerCopy, v25, v26, v27, v28);
        v12 = v28;
        goto LABEL_21;
      }
    }

    if (qword_10038BC90 != -1)
    {
      sub_100248778();
    }

    v17 = qword_10038BC98;
    if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_DEBUG))
    {
      v18 = v17;
      requestId2 = [requestCopy requestId];
      v20 = [requestCopy uri];
      *buf = 138543618;
      v39 = requestId2;
      v40 = 2112;
      v41 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "fetching query in validatePeer for requestId %{public}@ uri: %@", buf, 0x16u);
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000327B4;
    v32[3] = &unk_100319128;
    v32[4] = self;
    v33 = handlerCopy;
    [(KTContext *)self fetchQueryForKTRequest:requestCopy completionHandler:v32];

LABEL_21:
    goto LABEL_22;
  }

  v36 = v11;
  [(KTContext *)self writeResult:0 request:requestCopy proof:0 error:&v36];
  v13 = v36;

  handlerCopy[2](handlerCopy, 0, 0, 0, v13);
  v12 = v13;
LABEL_22:
}

- (unint64_t)fetchAndValidateEnrollKTRequest:(id)request transparentData:(id *)data loggableDatas:(id *)datas cloudOptIn:(id)in error:(id *)error
{
  requestCopy = request;
  inCopy = in;
  if ([(KTContext *)self unsupported:error])
  {
    [(KTContext *)self writeResult:0 request:requestCopy proof:0 error:error];
    v14 = 0;
    goto LABEL_26;
  }

  queryResponse = [requestCopy queryResponse];
  if (queryResponse)
  {
    v16 = queryResponse;
    queryRequest = [requestCopy queryRequest];

    if (!queryRequest)
    {
      queryResponse2 = [requestCopy queryResponse];
      v18 = [(TransparencyGPBMessage *)InsertResponse parseFromData:queryResponse2 error:error];

      if (v18)
      {
        if (qword_10038BC90 != -1)
        {
          sub_100248804();
        }

        v27 = qword_10038BC98;
        if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v27;
          requestId = [requestCopy requestId];
          *buf = 138543362;
          v37 = requestId;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "using existing insertResponse in validateEnrollment for requestId %{public}@", buf, 0xCu);
        }

        v14 = [(KTContext *)self validateEnrollKTRequest:requestCopy insertResponse:v18 transparentData:data loggableDatas:datas cloudOptIn:inCopy error:error];
        goto LABEL_25;
      }

      if (qword_10038BC90 != -1)
      {
        sub_100248818();
      }

      v31 = qword_10038BC98;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        requestId2 = [requestCopy requestId];
        v33 = requestId2;
        if (error)
        {
          v34 = *error;
        }

        else
        {
          v34 = 0;
        }

        *buf = 138543618;
        v37 = requestId2;
        v38 = 2112;
        v39 = v34;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "parse saved queryResponse as insert response for requestId %{public}@ failed: %@", buf, 0x16u);
      }
    }
  }

  v18 = [(KTContext *)self parseQueryRequestFromKTRequest:requestCopy error:error];
  v19 = [(KTContext *)self parseQueryResponseFromKTRequest:requestCopy error:error];
  if (v19 && v18)
  {
    if (qword_10038BC90 != -1)
    {
      sub_10024882C();
    }

    v20 = qword_10038BC98;
    if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      requestId3 = [requestCopy requestId];
      *buf = 138543362;
      v37 = requestId3;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "using existing queryResponse in validateEnrollment for requestId %{public}@", buf, 0xCu);
    }

    v14 = [(KTContext *)self validatePeerOrEnrollKTRequest:requestCopy queryRequest:v18 queryResponse:v19 transparentData:data loggableDatas:datas error:error];

LABEL_25:
    goto LABEL_26;
  }

  if (qword_10038BC90 != -1)
  {
    sub_100248854();
  }

  v23 = qword_10038BC98;
  if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_DEBUG))
  {
    v24 = v23;
    requestId4 = [requestCopy requestId];
    *buf = 138543362;
    v37 = requestId4;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "fetching query in validateEnrollment for requestId %{public}@", buf, 0xCu);
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10003351C;
  v35[3] = &unk_100319218;
  v35[4] = self;
  [(KTContext *)self fetchQueryForKTRequest:requestCopy completionHandler:v35];

  if (error)
  {
    *error = [TransparencyError errorWithDomain:kTransparencyErrorUnknown code:-134 description:@"request to server pending"];
  }

  v14 = 2;
LABEL_26:

  return v14;
}

- (void)validatePeerRequestId:(id)id revalidate:(BOOL)revalidate fetchNow:(BOOL)now completionHandler:(id)handler
{
  handlerCopy = handler;
  idCopy = id;
  applicationID = [(KTContext *)self applicationID];
  v13 = [KTContext validateEventName:0 application:applicationID];

  dataStore = [(KTContext *)self dataStore];
  v26 = 0;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100033910;
  v21 = &unk_1003192A8;
  revalidateCopy = revalidate;
  selfCopy = self;
  nowCopy = now;
  v15 = handlerCopy;
  v23 = v15;
  LOBYTE(handlerCopy) = [dataStore performAndWaitForRequestId:idCopy error:&v26 block:&v18];

  v16 = v26;
  if ((handlerCopy & 1) == 0)
  {
    v17 = [TransparencyAnalytics logger:v18];
    [v17 logResultForEvent:v13 hardFailure:1 result:v16];

    (*(v15 + 2))(v15, 0, v16);
  }
}

- (unint64_t)validateEnrollmentRequestId:(id)id transparentData:(id *)data loggableDatas:(id *)datas cloudOptIn:(id)in error:(id *)error
{
  idCopy = id;
  inCopy = in;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 2;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_10002E95C;
  v43 = sub_10002E96C;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_10002E95C;
  v37 = sub_10002E96C;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10002E95C;
  v31 = sub_10002E96C;
  v32 = 0;
  dataStore = [(KTContext *)self dataStore];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100033E24;
  v21[3] = &unk_1003192D0;
  v23 = &v45;
  v24 = &v39;
  v21[4] = self;
  v25 = &v33;
  v14 = inCopy;
  v22 = v14;
  v26 = &v27;
  LOBYTE(inCopy) = [dataStore performAndWaitForRequestId:idCopy error:error block:v21];

  if (inCopy)
  {
    if (data)
    {
      v15 = v40[5];
      if (v15)
      {
        *data = v15;
      }
    }

    if (datas)
    {
      v16 = v34[5];
      if (v16)
      {
        *datas = v16;
      }
    }

    if (error)
    {
      v17 = v28[5];
      if (v17)
      {
        *error = v17;
      }
    }

    v18 = v46[3];
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  return v18;
}

- (void)replaySelfValidate:(id)validate pcsAccountKey:(id)key queryRequest:(id)request queryResponse:(id)response responseTime:(id)time completionHandler:(id)handler
{
  validateCopy = validate;
  keyCopy = key;
  requestCopy = request;
  responseCopy = response;
  timeCopy = time;
  handlerCopy = handler;
  v45 = validateCopy;
  syncedLoggableDatas = [validateCopy syncedLoggableDatas];
  v39 = [TransparencyManagedDataStore serializeLoggableDatas:syncedLoggableDatas];

  v40 = +[NSMutableDictionary dictionary];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = [validateCopy uriToServerLoggableDatas];
  v41 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
  if (v41)
  {
    v37 = *v61;
    do
    {
      v15 = 0;
      do
      {
        if (*v61 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v60 + 1) + 8 * v15);
        uriToServerLoggableDatas = [v45 uriToServerLoggableDatas];
        v18 = [uriToServerLoggableDatas objectForKeyedSubscript:v16];

        serverLoggableDatas = [v18 serverLoggableDatas];
        v20 = [TransparencyManagedDataStore serializeLoggableDatas:serverLoggableDatas];

        dataStore = [(KTContext *)self dataStore];
        applicationID = [(KTContext *)self applicationID];
        accountKey = [v18 accountKey];
        idsResponseTime = [v18 idsResponseTime];
        v59 = 0;
        v25 = [dataStore createRequestWithUri:v16 application:applicationID accountKey:accountKey serverData:v20 syncedData:v39 idsResponseTime:idsResponseTime queryRequest:requestCopy queryResponse:responseCopy responseDate:timeCopy type:1 clientId:0 error:&v59];
        v26 = v59;

        if (qword_10038BC90 != -1)
        {
          sub_100248890();
        }

        v27 = qword_10038BC98;
        if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543618;
          *&buf[4] = v25;
          *&buf[12] = 2112;
          *&buf[14] = v16;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "ReplaySelfValidate: created requestId %{public}@ for %@", buf, 0x16u);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v69 = sub_10002E95C;
        v70 = sub_10002E96C;
        v71 = objc_alloc_init(KTSelfValidationURIDiagnostics);
        dataStore2 = [(KTContext *)self dataStore];
        v58 = 0;
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_100034570;
        v47[3] = &unk_100319358;
        v48 = requestCopy;
        v29 = v25;
        v57 = buf;
        v49 = v29;
        selfCopy = self;
        v51 = responseCopy;
        v52 = timeCopy;
        v53 = v45;
        v54 = keyCopy;
        v55 = v40;
        v56 = v16;
        v30 = [dataStore2 performAndWaitForRequestId:v29 error:&v58 block:v47];
        v31 = v58;

        if ((v30 & 1) == 0)
        {
          if (qword_10038BC90 != -1)
          {
            sub_1002488B8();
          }

          v32 = qword_10038BC98;
          if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
          {
            *v64 = 138543618;
            v65 = v29;
            v66 = 2112;
            v67 = v31;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "ReplayValidateSelf: failed to find requestId %{public}@: %@", v64, 0x16u);
          }

          [*(*&buf[8] + 40) setResult:@"Failed"];
          [*(*&buf[8] + 40) setError:v31];
        }

        _Block_object_dispose(buf, 8);
        v15 = v15 + 1;
      }

      while (v41 != v15);
      v41 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
    }

    while (v41);
  }

  v33 = objc_alloc_init(KTSelfValidationDiagnostics);
  diagnosticsJsonDictionary = [v45 diagnosticsJsonDictionary];
  [v33 setKtSelfVerificationInfoDiagnosticsJson:diagnosticsJsonDictionary];

  [v33 setUriToDiagnostics:v40];
  handlerCopy[2](handlerCopy, 1, v33, 0);
}

+ (id)validateEventName:(unint64_t)name application:(id)application
{
  applicationCopy = application;
  if (name > 5)
  {
    v6 = @"ValidateUnknownCompleteEvent";
  }

  else
  {
    v6 = *(&off_10031C028 + name);
  }

  v7 = [TransparencyAnalytics formatEventName:v6 application:applicationCopy];

  return v7;
}

+ (id)analyticsSuccessNames
{
  if (qword_10038BD10 != -1)
  {
    sub_10024A5EC();
  }

  v3 = qword_10038BD18;

  return v3;
}

+ (id)successMetricsKey:(unint64_t)key forApplicationID:(id)d
{
  dCopy = d;
  if (key <= 6 && ((0x77u >> key) & 1) != 0)
  {
    v6 = [KTContext successMetricsKey:dCopy validationName:*(&off_10031C058 + key)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)metricsForResult:(unint64_t)result type:(unint64_t)type logger:(id)logger applicationID:(id)d
{
  loggerCopy = logger;
  v9 = [KTContext successMetricsKey:type forApplicationID:d];
  if (v9)
  {
    if (result)
    {
      v10 = loggerCopy;
      if (result != 1)
      {
LABEL_7:
        [KTContext updateEligibilityThreshold:v10];
        goto LABEL_8;
      }

      [loggerCopy setSuccessNowForPropertyKey:v9];
    }

    else
    {
      [loggerCopy setFailureNowForPropertyKey:v9];
    }

    v10 = loggerCopy;
    goto LABEL_7;
  }

LABEL_8:
}

+ (id)analyticsSelfFlagNames
{
  if (qword_10038BD20 != -1)
  {
    sub_10024A600();
  }

  v3 = qword_10038BD28;

  return v3;
}

- (void)selfValidationURIStatus:(id)status transparentData:(id)data selfDeviceID:(id)d logger:(id)logger
{
  statusCopy = status;
  dataCopy = data;
  dCopy = d;
  loggerCopy = logger;
  v14 = [KTLoggableData isAccountKTCapable:statusCopy];
  v15 = objc_opt_class();
  applicationID = [(KTContext *)self applicationID];
  v17 = [v15 selfStatusFlagMetricsKey:applicationID name:@"ktCapable"];

  v18 = [NSNumber numberWithBool:v14];
  v50 = v17;
  [loggerCopy setNumberProperty:v18 forKey:v17];

  v19 = objc_opt_class();
  applicationID2 = [(KTContext *)self applicationID];
  v21 = [v19 selfStatusFlagMetricsKey:applicationID2 name:@"optIn"];

  v52 = dataCopy;
  v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy verifiedAccountOptInState]);
  v51 = loggerCopy;
  v49 = v21;
  [loggerCopy setNumberProperty:v22 forKey:v21];

  v23 = objc_opt_class();
  selfCopy = self;
  applicationID3 = [(KTContext *)self applicationID];
  v48 = [v23 selfStatusFlagMetricsKey:applicationID3 name:@"humbled"];

  v53 = dCopy != 0;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = statusCopy;
  v25 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v28 = 0;
    v29 = *v56;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v56 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v55 + 1) + 8 * i);
        version = [v31 version];
        if (version && (v33 = version, [v31 version], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isEqual:", &off_10033CF18), v34, v33, (v35 & 1) == 0))
        {
          if (!v28 || ([v31 version], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v28, "compare:", v36), v36, v37 == 1))
          {
            version2 = [v31 version];

            v28 = version2;
          }
        }

        else
        {
          v27 = 1;
        }

        deviceID = [v31 deviceID];
        v40 = [dCopy isEqual:deviceID];

        if (v40)
        {
          if ([v31 result])
          {
            v41 = 3;
          }

          else
          {
            v41 = 2;
          }

          v53 = v41;
        }
      }

      v26 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v26);
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v42 = [NSNumber numberWithUnsignedInt:v53];
  [v51 setNumberProperty:v42 forKey:v48];

  if (v28)
  {
    if (v27)
    {
      v43 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", -[v28 intValue]);

      v28 = v43;
    }

    v44 = objc_opt_class();
    applicationID4 = [(KTContext *)selfCopy applicationID];
    v46 = [v44 selfStatusFlagMetricsKey:applicationID4 name:@"OV"];

    [v51 setNumberProperty:v28 forKey:v46];
  }
}

- (void)reportValidationTime:(unint64_t)time initialResult:(unint64_t)result result:(unint64_t)a5 idsResponseTime:(id)responseTime
{
  if (result == 2 && a5 != 2)
  {
    responseTimeCopy = responseTime;
    Current = CFAbsoluteTimeGetCurrent();
    [responseTimeCopy timeIntervalSinceReferenceDate];
    v12 = v11;

    v13 = Current - v12;
    applicationID = [(KTContext *)self applicationID];
    if (time > 5)
    {
      v15 = @"UnknownTypeTime";
    }

    else
    {
      v15 = *(&off_10031C090 + time);
    }

    v18 = [TransparencyAnalytics formatEventName:v15 application:applicationID];

    v16 = +[TransparencyAnalytics logger];
    v17 = [NSNumber numberWithDouble:v13];
    [v16 logMetric:v17 withName:v18];
  }
}

+ (BOOL)hasAccountMismatch:(id)mismatch
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  mismatchCopy = mismatch;
  v4 = [mismatchCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(mismatchCopy);
        }

        if (![*(*(&v8 + 1) + 8 * i) successfulSync])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [mismatchCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)serverLoggableDatasDiagnostics:(id)diagnostics selfPushToken:(id)token humbled:(BOOL *)humbled
{
  humbledCopy = humbled;
  diagnosticsCopy = diagnostics;
  tokenCopy = token;
  v8 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = diagnosticsCopy;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    obj = v9;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v15 = +[NSMutableDictionary dictionary];
        if (!v15)
        {
          v9 = obj;

          goto LABEL_15;
        }

        build = [v14 build];
        [v15 setObject:build forKeyedSubscript:@"b"];

        product = [v14 product];
        [v15 setObject:product forKeyedSubscript:@"p"];

        version = [v14 version];
        [v15 setObject:version forKeyedSubscript:@"v"];

        v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v14 result]);
        [v15 setObject:v19 forKeyedSubscript:@"r"];

        if (tokenCopy && ([v14 deviceID], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToData:", tokenCopy), v20, v21))
        {
          *humbledCopy = [v14 result] == 0;
          v22 = 1;
        }

        else
        {
          v22 = 0;
        }

        v23 = [NSNumber numberWithBool:v22];
        [v15 setObject:v23 forKeyedSubscript:@"c"];

        [v8 addObject:v15];
      }

      v9 = obj;
      v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = v8;
LABEL_15:

  return v15;
}

- (id)stringForValidateType:(unint64_t)type
{
  if (type > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_10031C0C0 + type);
  }
}

- (id)analyticsForType:(unint64_t)type uri:(id)uri accountKey:(id)key serverLoggableDatas:(id)datas syncedLoggableDatas:(id)loggableDatas transparentData:(id)data selfVerificationInfo:(id)info responseTime:(id)self0 result:(unint64_t)self1 failure:(id)self2 responseMetadata:(id)self3
{
  uriCopy = uri;
  keyCopy = key;
  datasCopy = datas;
  loggableDatasCopy = loggableDatas;
  dataCopy = data;
  infoCopy = info;
  timeCopy = time;
  failureCopy = failure;
  metadataCopy = metadata;
  dsema = dispatch_semaphore_create(0);
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 0;
  eligibilityStatusReporter = [(KTContext *)self eligibilityStatusReporter];

  if (eligibilityStatusReporter)
  {
    eligibilityStatusReporter2 = [(KTContext *)self eligibilityStatusReporter];
    v23 = [(KTContext *)self stringForValidateType:type];
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_100063FCC;
    v85[3] = &unk_10031BF70;
    v87 = &v88;
    v86 = dsema;
    [eligibilityStatusReporter2 dateFirstSeenWithError:failureCopy element:v23 completionHandler:v85];
  }

  v24 = +[NSMutableDictionary dictionary];
  applicationKeyStore = [(KTContext *)self applicationKeyStore];
  v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [applicationKeyStore inResetWindow]);
  [v24 setObject:v26 forKeyedSubscript:@"inResetWindow"];

  optInServer = [(KTContext *)self optInServer];
  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = sub_100064064;
  v83[3] = &unk_10031BF98;
  v28 = v24;
  v84 = v28;
  [optInServer getOptInState:1 completionBlock:v83];

  if (dataCopy)
  {
    [dataCopy accountOptInState:keyCopy];
    v29 = KTOptInGetString();
    [v28 setObject:v29 forKeyedSubscript:@"peerOptIn"];

    [dataCopy accountEverOptedIn:keyCopy];
    v30 = KTOptInGetString();
    [v28 setObject:v30 forKeyedSubscript:@"peerEverOptedIn"];

    [dataCopy accountRecentlyOptedIn:keyCopy];
    v31 = KTOptInGetString();
    [v28 setObject:v31 forKeyedSubscript:@"peerRecentlyOptedIn"];

    v32 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [dataCopy staticKeyEnforced]);
    [v28 setObject:v32 forKeyedSubscript:@"staticKeyEnforced"];

    v33 = [dataCopy expectedSelfResolutionDate:keyCopy requestDate:timeCopy];
    v34 = v33;
    if (v33)
    {
      kt_dateToString = [v33 kt_dateToString];
      [v28 setObject:kt_dateToString forKeyedSubscript:@"expectedResolutionDate"];

      kt_toISO_8601_UTCString = [v34 kt_toISO_8601_UTCString];
      [v28 setObject:kt_toISO_8601_UTCString forKeyedSubscript:@"expectedResolutionDateReadable"];

      [v34 timeIntervalSinceNow];
      v38 = [NSNumber numberWithLong:llround(v37 / 86400.0)];
      [v28 setObject:v38 forKeyedSubscript:@"daysUntilExpectedResolutionDate"];
    }

    if (keyCopy)
    {
      v39 = [dataCopy getLogDataForAccountKey:keyCopy uri:v74];
      v40 = [v39 objectForKeyedSubscript:v74];
      lastObject = [v40 lastObject];
      v42 = lastObject;
      if (lastObject)
      {
        v43 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [lastObject optIn]);
        [v28 setObject:v43 forKeyedSubscript:@"serverOptIn"];
      }
    }
  }

  v44 = [dataCopy earliestAddedDate:keyCopy];
  v45 = v44;
  if (v44)
  {
    [v44 timeIntervalSince1970];
    v47 = v46;
    +[NSDate kt_currentTimeMs];
    v49 = [NSNumber numberWithBool:v48 < (kKTMaximumResetFailureWindowMs + (v47 * 1000.0))];
    [v28 setObject:v49 forKeyedSubscript:@"inHeartbeatWindow"];
  }

  if (loggableDatasCopy && !result)
  {
    v50 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [objc_opt_class() hasAccountMismatch:loggableDatasCopy]);
    [v28 setObject:v50 forKeyedSubscript:@"mismatchedAccounts"];
  }

  v51 = [KTLoggableData isAccountKTCapable:datasCopy];
  if (v51)
  {
    v52 = 0;
    if (!datasCopy)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v52 = (type & 0xFFFFFFFFFFFFFFFBLL) == 0 || type == 5;
    if (!datasCopy)
    {
      goto LABEL_29;
    }
  }

  if (!result)
  {
    v54 = [NSNumber numberWithBool:v51];
    [v28 setObject:v54 forKeyedSubscript:@"ktCapable"];

    if (v52)
    {
      [v28 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ktSoftFailure"];
    }
  }

LABEL_29:
  v55 = [TransparencyAnalytics analyticsErrorData:failureCopy];
  [v28 setObject:v55 forKeyedSubscript:@"failure"];

  v82 = 0;
  selfDeviceID = [infoCopy selfDeviceID];
  v57 = [(KTContext *)self serverLoggableDatasDiagnostics:datasCopy selfPushToken:selfDeviceID humbled:&v82];
  [v28 setObject:v57 forKeyedSubscript:@"sldd"];

  v58 = [NSNumber numberWithBool:v82];
  [v28 setObject:v58 forKeyedSubscript:@"humbled"];

  if (type == 1 && [failureCopy code] == -286)
  {
    v59 = +[TransparencyAnalytics logger];
    v60 = [v59 numberPropertyForKey:@"stateAtSigFetchStart"];
    [v28 setObject:v60 forKeyedSubscript:@"stateAtSigFetchStart"];

    v61 = +[TransparencyAnalytics logger];
    v62 = [v61 numberPropertyForKey:@"stateAtSigFetchEnd"];
    [v28 setObject:v62 forKeyedSubscript:@"stateAtSigFetchEnd"];
  }

  if (+[TransparencyAnalytics hasInternalDiagnostics])
  {
    if (!result)
    {
      [v28 setObject:v74 forKeyedSubscript:@"failedUri"];
      v63 = [keyCopy base64EncodedStringWithOptions:0];
      [v28 setObject:v63 forKeyedSubscript:@"failedAccountKey"];
    }

    v64 = kTransparencyResponseMetadataKeyServerHint;
    v65 = [metadataCopy objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
    if (v65)
    {
      [v28 setObject:v65 forKeyedSubscript:v64];
    }

    v66 = [metadataCopy objectForKeyedSubscript:@"APS"];

    if (v66)
    {
      v67 = [NSNumber numberWithBool:1];
      [v28 setObject:v67 forKeyedSubscript:@"APS"];
    }
  }

  eligibilityStatusReporter3 = [(KTContext *)self eligibilityStatusReporter];

  if (eligibilityStatusReporter3)
  {
    v69 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(dsema, v69))
    {
      if (v52)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v70 = [NSNumber numberWithInteger:v89[3]];
      [v28 setObject:v70 forKeyedSubscript:@"daysSeen"];

      if (v52)
      {
        goto LABEL_47;
      }
    }

    if (![KTContext checkNetworkError:failureCopy])
    {
      [(KTContext *)self storeEligibilityMetric:type result:result error:failureCopy];
    }
  }

LABEL_47:
  v71 = v28;

  _Block_object_dispose(&v88, 8);

  return v71;
}

- (void)storeEligibilityMetric:(unint64_t)metric result:(unint64_t)result error:(id)error
{
  errorCopy = error;
  if (_os_feature_enabled_impl())
  {
    eligibilityQueue = [(KTContext *)self eligibilityQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000641AC;
    v10[3] = &unk_10031C008;
    v10[4] = self;
    metricCopy = metric;
    resultCopy = result;
    v11 = errorCopy;
    dispatch_async(eligibilityQueue, v10);
  }
}

+ (void)checkAndLogHardErrorIfNecessary:(unint64_t)necessary type:(unint64_t)type logger:(id)logger error:(id)error applicationID:(id)d
{
  loggerCopy = logger;
  errorCopy = error;
  dCopy = d;
  if (type == 1)
  {
    if (necessary)
    {
      necessaryCopy = necessary;
    }

    else
    {
      v14 = [KTContext checkNetworkError:errorCopy];
      necessaryCopy = 0;
      if (v14)
      {
        v15 = 6;
LABEL_7:
        [KTContext metricsForResult:necessaryCopy type:v15 logger:loggerCopy applicationID:dCopy];
        goto LABEL_8;
      }
    }

    v15 = 1;
    goto LABEL_7;
  }

LABEL_8:
}

+ (BOOL)checkNetworkError:(id)error
{
  errorCopy = error;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_18;
  }

  domain = [errorCopy domain];
  if ([domain isEqual:kTransparencyErrorNetwork])
  {
    goto LABEL_15;
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqual:NSURLErrorDomain])
  {
LABEL_14:

LABEL_15:
LABEL_16:
    v11 = 1;
    goto LABEL_18;
  }

  domain3 = [errorCopy domain];
  if ([domain3 isEqual:kCFErrorDomainCFNetwork])
  {
LABEL_13:

    goto LABEL_14;
  }

  domain4 = [errorCopy domain];
  if ([domain4 isEqual:kTransparencyErrorInternal] && objc_msgSend(errorCopy, "code") == -343)
  {
LABEL_12:

    goto LABEL_13;
  }

  domain5 = [errorCopy domain];
  if ([domain5 isEqual:kTransparencyErrorInterface] && objc_msgSend(errorCopy, "code") == -41)
  {
LABEL_11:

    goto LABEL_12;
  }

  domain6 = [errorCopy domain];
  if ([domain6 isEqual:kTransparencyErrorIDSRegistrationTimeout])
  {

    goto LABEL_11;
  }

  domain7 = [errorCopy domain];
  v14 = [domain7 isEqual:kTransparencyErrorBAACertFetch];

  if (v14)
  {
    goto LABEL_16;
  }

  userInfo = [errorCopy userInfo];
  v16 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  if ([self checkNetworkError:v16])
  {
    v11 = 1;
  }

  else
  {
    userInfo2 = [errorCopy userInfo];
    v18 = [userInfo2 objectForKeyedSubscript:NSMultipleUnderlyingErrorsKey];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v26;
        while (2)
        {
          v23 = 0;
          v24 = v16;
          do
          {
            if (*v26 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v16 = *(*(&v25 + 1) + 8 * v23);

            if ([self checkNetworkError:{v16, v25}])
            {
              v11 = 1;
              goto LABEL_34;
            }

            v23 = v23 + 1;
            v24 = v16;
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v16 = 0;
      v11 = 0;
LABEL_34:
    }

    else
    {
      v11 = 0;
    }
  }

LABEL_18:
  return v11;
}

+ (BOOL)hasReachedEligibilityThreshold:(id)threshold
{
  v3 = kTransparencyEligibilityKey;
  thresholdCopy = threshold;
  v5 = [thresholdCopy numberPropertyForKey:v3];
  bOOLValue = [v5 BOOLValue];

  v7 = [thresholdCopy numberPropertyForKey:kTransparencyEligibilityVersionKey];

  longValue = [v7 longValue];
  v9 = ktEligibilityAnalyticsVersion;

  if (longValue >= v9)
  {
    return bOOLValue;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)isCurrentlyEligible:(id)eligible
{
  v3 = kKTApplicationIdentifierIDS;
  eligibleCopy = eligible;
  v5 = [KTContext successMetricsKey:1 forApplicationID:v3];
  v6 = [KTContext successMetricsKey:4 forApplicationID:v3];
  v7 = [eligibleCopy fuzzyTimeSinceLastSuccess:v5];
  longValue = [v7 longValue];
  v9 = ktSelfValidateSuccessDays;

  v10 = [eligibleCopy fuzzyTimeSinceLastSuccess:v6];
  longValue2 = [v10 longValue];
  v12 = ktPeerValidateSuccessDays;

  LODWORD(v10) = [eligibleCopy manateeStatusForReporting];
  v13 = (v10 < 0x18) & (0x804001u >> v10);
  if (longValue2 < v12)
  {
    LOBYTE(v13) = 0;
  }

  if (longValue >= v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)updateEligibilityThreshold:(id)threshold
{
  thresholdCopy = threshold;
  if (![KTContext hasReachedEligibilityThreshold:?]&& [KTContext isCurrentlyEligible:thresholdCopy])
  {
    [thresholdCopy setNumberProperty:&__kCFBooleanTrue forKey:kTransparencyEligibilityKey];
    v3 = [NSNumber numberWithLongLong:ktEligibilityAnalyticsVersion];
    [thresholdCopy setNumberProperty:v3 forKey:kTransparencyEligibilityVersionKey];
  }
}

- (void)fetchRPCSingleQuery:(id)query userInitiated:(BOOL)initiated cachedYoungerThan:(id)than backgroundOpId:(id)id completionHandler:(id)handler
{
  initiatedCopy = initiated;
  queryCopy = query;
  thanCopy = than;
  idCopy = id;
  handlerCopy = handler;
  if (thanCopy)
  {
    dataStore = [(KTContext *)self dataStore];
    v15 = [queryCopy uri];
    v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [queryCopy application]);
    v17 = [TransparencyApplication applicationIdentifierForValue:v16];
    v47 = 0;
    v18 = [dataStore getLatestSuccessfulSingleQueryForUri:v15 application:v17 requestYoungerThan:thanCopy error:&v47];
    v19 = v47;

    if (v18)
    {
      handlerCopy[2](handlerCopy, v18, v19);

      goto LABEL_14;
    }
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_100070AD4;
  v45 = sub_100070AE4;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100070AD4;
  v39 = sub_100070AE4;
  v40 = 0;
  dataStore2 = [(KTContext *)self dataStore];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100070AEC;
  v30[3] = &unk_10031CDB8;
  v33 = &v35;
  v30[4] = self;
  v21 = queryCopy;
  v31 = v21;
  v32 = idCopy;
  v34 = &v41;
  [dataStore2 performBlockAndWait:v30];

  if (v36[5] && !v42[5])
  {
    logClient = [(KTContext *)self logClient];
    v26 = v36[5];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100070BB8;
    v29[3] = &unk_10031CE20;
    v29[5] = &v41;
    v29[6] = &v35;
    v29[4] = self;
    [logClient fetchQuery:v21 uuid:v26 userInitiated:initiatedCopy completionHandler:v29];

    handlerCopy[2](handlerCopy, v36[5], v42[5]);
  }

  else
  {
    if (qword_10038BDB0 != -1)
    {
      sub_10024AE34();
    }

    v22 = qword_10038BDB8;
    if (os_log_type_enabled(qword_10038BDB8, OS_LOG_TYPE_ERROR))
    {
      v23 = v42[5];
      *buf = 138412290;
      v49 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "failed to save single query rpc before fetch: %@", buf, 0xCu);
    }

    dataStore3 = [(KTContext *)self dataStore];
    [dataStore3 reportCoreDataPersistEventForLocation:@"fetchRPCSingleQuery" underlyingError:v42[5]];

    handlerCopy[2](handlerCopy, 0, v42[5]);
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

LABEL_14:
}

- (void)queryForUris:(id)uris userInitiated:(BOOL)initiated cachedYoungerThan:(id)than backgroundOpId:(id)id completionHandler:(id)handler
{
  initiatedCopy = initiated;
  urisCopy = uris;
  thanCopy = than;
  idCopy = id;
  handlerCopy = handler;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100070AD4;
  v41 = sub_100070AE4;
  v42 = 0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = urisCopy;
  v12 = [obj countByEnumeratingWithState:&v33 objects:v47 count:16];
  if (v12)
  {
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        dataStore = [(KTContext *)self dataStore];
        applicationID = [(KTContext *)self applicationID];
        v18 = (v38 + 5);
        v32 = v38[5];
        v19 = [dataStore hasPendingSingleQueryForUri:v15 application:applicationID error:&v32];
        objc_storeStrong(v18, v32);

        if (v19)
        {
          if (qword_10038BDB0 != -1)
          {
            sub_10024AE98();
          }

          v20 = qword_10038BDB8;
          if (os_log_type_enabled(qword_10038BDB8, OS_LOG_TYPE_INFO))
          {
            *buf = 141558274;
            v44 = 1752392040;
            v45 = 2112;
            v46 = v15;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "queryForUris: skipping fetch for %{mask.hash}@ due to existing pending query", buf, 0x16u);
          }
        }

        else
        {
          if (qword_10038BDB0 != -1)
          {
            sub_10024AE70();
          }

          v21 = qword_10038BDB8;
          if (os_log_type_enabled(qword_10038BDB8, OS_LOG_TYPE_INFO))
          {
            *buf = 141558274;
            v44 = 1752392040;
            v45 = 2112;
            v46 = v15;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "queryForUris: fetching rpc for uri %{mask.hash}@", buf, 0x16u);
          }

          applicationID2 = [(KTContext *)self applicationID];
          v23 = (v38 + 5);
          v31 = v38[5];
          v24 = [TransparencyRPCRequestBuilder buildQueryRequest:v15 application:applicationID2 error:&v31];
          objc_storeStrong(v23, v31);

          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_100071368;
          v30[3] = &unk_10031CEC8;
          v30[4] = v15;
          v30[5] = &v37;
          [(KTContext *)self fetchRPCSingleQuery:v24 userInitiated:initiatedCopy cachedYoungerThan:thanCopy backgroundOpId:idCopy completionHandler:v30];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v33 objects:v47 count:16];
    }

    while (v12);
  }

  handlerCopy[2](handlerCopy, v38[5]);
  _Block_object_dispose(&v37, 8);
}

- (void)optInStateForUri:(id)uri completionHandler:(id)handler
{
  uriCopy = uri;
  handlerCopy = handler;
  applicationID = [(KTContext *)self applicationID];
  v9 = [TransparencyApplication addApplicationPrefixForIdentifier:applicationID uri:uriCopy];

  applicationID2 = [(KTContext *)self applicationID];
  v23 = 0;
  v11 = [TransparencyRPCRequestBuilder buildQueryRequest:v9 application:applicationID2 error:&v23];
  v12 = v23;

  if (v11)
  {
    if (qword_10038BDB0 != -1)
    {
      sub_10024AEE8();
    }

    v13 = qword_10038BDB8;
    if (os_log_type_enabled(qword_10038BDB8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 141558274;
      v25 = 1752392040;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "optInStateForUri: querying KT server opt-in state for %{mask.hash}@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v14 = +[NSUUID UUID];
    logClient = [(KTContext *)self logClient];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10007193C;
    v18[3] = &unk_10031CFB8;
    objc_copyWeak(&v22, buf);
    v21 = handlerCopy;
    v19 = v11;
    v16 = v14;
    v20 = v16;
    [logClient fetchQuery:v19 uuid:v16 userInitiated:0 completionHandler:v18];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  else
  {
    if (qword_10038BDB0 != -1)
    {
      sub_10024AF10();
    }

    v17 = qword_10038BDB8;
    if (os_log_type_enabled(qword_10038BDB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "optInStateForUri: failed to check opt-in, no query request: %@", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, 2, v12);
  }
}

+ (id)chunkArray:(id)array chunkSize:(unint64_t)size
{
  arrayCopy = array;
  v6 = arrayCopy;
  if (size)
  {
    v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [arrayCopy count] / size + 1);
    if ([v6 count])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = [v6 count];
        if (v10 + v8 >= size)
        {
          sizeCopy = size;
        }

        else
        {
          sizeCopy = v10 + v8;
        }

        v12 = [v6 subarrayWithRange:{v9, sizeCopy}];
        [v7 addObject:v12];

        v9 += size;
        v8 -= size;
      }

      while (v9 < [v6 count]);
    }
  }

  else
  {
    v13 = [NSArray arrayWithArray:arrayCopy];
    v7 = [NSArray arrayWithObject:v13];
  }

  return v7;
}

- (BOOL)verifyInclusionProofDownload:(id)download error:(id *)error
{
  downloadCopy = download;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100085E24;
  v25 = sub_100085E34;
  v26 = 0;
  dataStore = [(KTContext *)self dataStore];
  v19 = &v21;
  v20 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100085E3C;
  v16[3] = &unk_10031E100;
  v18 = &v27;
  v16[4] = self;
  v8 = downloadCopy;
  v17 = v8;
  v9 = [dataStore performAndWaitForDownloadId:v8 error:&v20 block:v16];
  v10 = v20;

  if (v9)
  {
    if (error)
    {
      v11 = v22[5];
      if (v11)
      {
        *error = v11;
      }
    }

    v12 = *(v28 + 24);
  }

  else
  {
    if (qword_10038BDE0 != -1)
    {
      sub_10024B654();
    }

    v13 = qword_10038BDE8;
    if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v32 = v8;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "failed to fetch download record for downloadId %{public}@: %@", buf, 0x16u);
    }

    v12 = 0;
    if (error && v10)
    {
      v14 = v10;
      v12 = 0;
      *error = v10;
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v12 & 1;
}

- (BOOL)verifyInclusionProofDownloadRecord:(id)record error:(id *)error
{
  recordCopy = record;
  v7 = [RevisionLogInclusionProofResponse alloc];
  response = [recordCopy response];
  v9 = [(TransparencyGPBMessage *)v7 initWithData:response error:error];

  serverHint = [recordCopy serverHint];

  [(RevisionLogInclusionProofResponse *)v9 setMetadataValue:serverHint key:kTransparencyResponseMetadataKeyServerHint];
  if (!v9)
  {
    if (qword_10038BDE0 != -1)
    {
      sub_10024B708();
    }

    v14 = qword_10038BDE8;
    if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_ERROR))
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
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "response failed to parse: %@", buf, 0xCu);
    }

    goto LABEL_24;
  }

  if ([(RevisionLogInclusionProofResponse *)v9 status]!= 1)
  {
    v16 = [TransparencyError errorWithDomain:kTransparencyErrorServer code:[(RevisionLogInclusionProofResponse *)v9 status] description:@"server failed to produce inclusion proof: %d", [(RevisionLogInclusionProofResponse *)v9 status]];
    if (error && v16)
    {
      v16 = v16;
      *error = v16;
    }

    goto LABEL_24;
  }

  verifier = [(KTContext *)self verifier];
  v12 = [verifier verifyRevisionLogInclusionProofResponse:v9 receivedRevisions:0 error:error];

  if ((v12 & 1) == 0)
  {
    if (qword_10038BDE0 != -1)
    {
      sub_10024B6F4();
    }

    v17 = qword_10038BDE8;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      applicationID = [(KTContext *)self applicationID];
      v19 = applicationID;
      if (error)
      {
        v20 = *error;
      }

      else
      {
        v20 = 0;
      }

      *buf = 138543618;
      v23 = applicationID;
      v24 = 2112;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Inclusion proof response verification failed for %{public}@: %@", buf, 0x16u);
    }

LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  v13 = 1;
LABEL_25:

  return v13;
}

- (unint64_t)verifyConsistencyProofDownload:(id)download error:(id *)error
{
  downloadCopy = download;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100085E24;
  v25 = sub_100085E34;
  v26 = 0;
  dataStore = [(KTContext *)self dataStore];
  v19 = &v21;
  v20 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000867E0;
  v16[3] = &unk_10031E100;
  v18 = &v27;
  v16[4] = self;
  v8 = downloadCopy;
  v17 = v8;
  v9 = [dataStore performAndWaitForDownloadId:v8 error:&v20 block:v16];
  v10 = v20;

  if (v9)
  {
    if (error)
    {
      v11 = v22[5];
      if (v11)
      {
        *error = v11;
      }
    }

    v12 = v28[3];
  }

  else
  {
    if (qword_10038BDE0 != -1)
    {
      sub_10024B71C();
    }

    v13 = qword_10038BDE8;
    if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v32 = v8;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "failed to fetch download record for downloadId %{public}@: %@", buf, 0x16u);
    }

    v12 = 0;
    if (error && v10)
    {
      v14 = v10;
      v12 = 0;
      *error = v10;
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v12;
}

- (unint64_t)verifyConsistencyProofDownloadRecord:(id)record error:(id *)error
{
  recordCopy = record;
  v7 = [ConsistencyProofResponse alloc];
  response = [recordCopy response];
  v9 = [(TransparencyGPBMessage *)v7 initWithData:response error:error];

  serverHint = [recordCopy serverHint];
  [(ConsistencyProofResponse *)v9 setMetadataValue:serverHint key:kTransparencyResponseMetadataKeyServerHint];

  if (v9)
  {
    if ([(ConsistencyProofResponse *)v9 status]== 1)
    {
      verifier = [(KTContext *)self verifier];
      v12 = [verifier verifyConsistencyProofResponse:v9 startRevision:objc_msgSend(recordCopy receivedRevisions:"startSLHRevision") error:{0, error}];

      if (v12)
      {
        goto LABEL_27;
      }

      if (qword_10038BDE0 != -1)
      {
        sub_10024B7D0();
      }

      v13 = qword_10038BDE8;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        applicationID = [(KTContext *)self applicationID];
        v15 = applicationID;
        if (error)
        {
          v16 = *error;
        }

        else
        {
          v16 = 0;
        }

        *buf = 138543618;
        v30 = applicationID;
        v31 = 2112;
        v32 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Consistency proof response verification failed for %{public}@: %@", buf, 0x16u);
      }
    }

    else
    {
      v19 = [TransparencyError errorWithDomain:kTransparencyErrorServer code:[(ConsistencyProofResponse *)v9 status] description:@"server failed to produce consistency proof: %d", [(ConsistencyProofResponse *)v9 status]];
      v13 = v19;
      if (error && v19)
      {
        v20 = v19;
        *error = v13;
      }

      if (qword_10038BDE0 != -1)
      {
        sub_10024B7BC();
      }

      v21 = qword_10038BDE8;
      if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_ERROR))
      {
        v22 = v21;
        *buf = 67109120;
        LODWORD(v30) = [(ConsistencyProofResponse *)v9 status];
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "server failed to produce consistency proof: %d", buf, 8u);
      }
    }
  }

  else
  {
    if (qword_10038BDE0 != -1)
    {
      sub_10024B7E4();
    }

    v17 = qword_10038BDE8;
    if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v18 = *error;
      }

      else
      {
        v18 = 0;
      }

      *buf = 138412290;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "response failed to parse: %@", buf, 0xCu);
    }
  }

  v12 = 0;
LABEL_27:
  if (qword_10038BDE0 != -1)
  {
    sub_10024B7F8();
  }

  v23 = qword_10038BDE8;
  if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v23;
    downloadId = [recordCopy downloadId];
    *buf = 138543362;
    v30 = downloadId;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "deleting download record %{public}@", buf, 0xCu);
  }

  logClient = [(KTContext *)self logClient];
  downloadId2 = [recordCopy downloadId];
  [logClient deleteDownloadId:downloadId2];

  return v12;
}

- (id)retrieveTLTSTH:(id *)h
{
  dataStore = [(KTContext *)self dataStore];
  v6 = kKTApplicationIdentifierTLT;
  applicationKeyStore = [(KTContext *)self applicationKeyStore];
  v8 = [dataStore latestConsistencyVerifiedTreeHeadSTH:v6 logBeginMs:objc_msgSend(applicationKeyStore error:{"tltLogBeginningMs"), h}];

  if (v8)
  {
    v9 = objc_alloc_init(Gossip);
    applicationKeyStore2 = [(KTContext *)self applicationKeyStore];
    -[Gossip setVersion:](v9, "setVersion:", [applicationKeyStore2 tltEarliestVersion]);

    [(Gossip *)v9 setSth:v8];
    data = [(TransparencyGPBMessage *)v9 data];
  }

  else
  {
    data = 0;
  }

  return data;
}

- (void)analyticsForDecodeFailure:(id)failure error:(id)error
{
  v4 = kKTApplicationIdentifierTLT;
  errorCopy = error;
  v7 = [TransparencyAnalytics formatEventName:@"GossipDecodeMessageFailure" application:v4];
  v6 = +[TransparencyAnalytics logger];
  [v6 logResultForEvent:v7 hardFailure:1 result:errorCopy];
}

- (void)analyticsForParseFailure:(id)failure
{
  v3 = kKTApplicationIdentifierTLT;
  failureCopy = failure;
  v6 = [TransparencyAnalytics formatEventName:@"GossipParseFailure" application:v3];
  v5 = +[TransparencyAnalytics logger];
  [v5 logResultForEvent:v6 hardFailure:1 result:failureCopy];
}

- (void)analyticsForPredateLogBeginningMs:(unint64_t)ms expectedLogBeginningMS:(unint64_t)s sth:(id)sth
{
  v5 = kTransparencyErrorGossip;
  v6 = [NSString stringWithFormat:@"STH predates our TLT's LogBeginningMs, gossiped loghead logBeginningMs %llu, expected logBeginningMs: %llu, sth: %@", ms, s, sth];
  v9 = [TransparencyError errorWithDomain:v5 code:-277 description:@"%@", v6];

  v7 = [TransparencyAnalytics formatEventName:@"GossipOldLogBeginningMS" application:kKTApplicationIdentifierTLT];
  v8 = +[TransparencyAnalytics logger];
  [v8 logResultForEvent:v7 hardFailure:1 result:v9];
}

- (void)analyticsForTooNewLogBeginningMs:(unint64_t)ms expectedLogBeginningMS:(unint64_t)s sth:(id)sth
{
  v5 = kTransparencyErrorGossip;
  v6 = [NSString stringWithFormat:@"Received gossip from a newer client.  Gossiped logBeginningsMs: %llu, client logBeginningsMs: %llu", s, sth, ms, s];
  v9 = [TransparencyError errorWithDomain:v5 code:-279 description:@"%@", v6];

  v7 = [TransparencyAnalytics formatEventName:@"GossipLogBeginningMSTooNew" application:kKTApplicationIdentifierTLT];
  v8 = +[TransparencyAnalytics logger];
  [v8 logResultForEvent:v7 hardFailure:1 result:v9];
}

- (void)processSTHsFromPeers:(id)peers verifier:(id)verifier completionHandler:(id)handler
{
  peersCopy = peers;
  verifierCopy = verifier;
  handlerCopy = handler;
  v82 = +[NSMutableArray array];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v9 = peersCopy;
  v10 = [v9 countByEnumeratingWithState:&v93 objects:v103 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    p_info = &OBJC_METACLASS___OptInOutResponse.info;
    v14 = *v94;
    v89 = kTransparencyProtocolVersion;
    v84 = kTransparencyErrorGossip;
    v87 = v9;
    v88 = *v94;
    while (1)
    {
      v15 = 0;
      do
      {
        v16 = v12;
        if (*v94 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v93 + 1) + 8 * v15);
        v18 = objc_alloc((p_info + 151));
        v92 = v12;
        v19 = [v18 initWithData:v17 error:&v92];
        v12 = v92;

        if (v19)
        {
          v20 = v12 == 0;
        }

        else
        {
          v20 = 0;
        }

        if (v20)
        {
          if ([v19 version] <= v89)
          {
            version = [v19 version];
            applicationKeyStore = [(KTContext *)self applicationKeyStore];
            tltEarliestVersion = [applicationKeyStore tltEarliestVersion];

            if (version >= tltEarliestVersion)
            {
              v41 = [v19 sth];
              v91 = 0;
              v42 = [(KTContext *)self parseSTHData:v41 error:&v91];
              v43 = v91;

              if (v42 && !v43)
              {
                parsedLogHead = [v42 parsedLogHead];
                v45 = parsedLogHead;
                if (parsedLogHead)
                {
                  logBeginningMs = [parsedLogHead logBeginningMs];
                  applicationKeyStore2 = [(KTContext *)self applicationKeyStore];
                  tltLogBeginningMs = [applicationKeyStore2 tltLogBeginningMs];

                  if (logBeginningMs < tltLogBeginningMs)
                  {
                    if (qword_10038BDE0 != -1)
                    {
                      sub_10024B848();
                    }

                    v85 = v42;
                    v49 = qword_10038BDE8;
                    if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_ERROR))
                    {
                      v50 = v49;
                      logBeginningMs2 = [v45 logBeginningMs];
                      applicationKeyStore3 = [(KTContext *)self applicationKeyStore];
                      tltLogBeginningMs2 = [applicationKeyStore3 tltLogBeginningMs];
                      v53 = [v19 sth];
                      *buf = 134218498;
                      *v98 = logBeginningMs2;
                      *&v98[8] = 2048;
                      *v99 = tltLogBeginningMs2;
                      *&v99[8] = 2112;
                      v100 = v53;
                      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "STH predates our TLT's LogBeginningMs, gossiped loghead logBeginningMs %llu, expected logBeginningMs: %llu, sth: %@", buf, 0x20u);
                    }

                    logBeginningMs3 = [v45 logBeginningMs];
                    applicationKeyStore4 = [(KTContext *)self applicationKeyStore];
                    tltLogBeginningMs3 = [applicationKeyStore4 tltLogBeginningMs];
                    [v19 sth];
                    v58 = v57 = v45;
                    [(KTContext *)self analyticsForPredateLogBeginningMs:logBeginningMs3 expectedLogBeginningMS:tltLogBeginningMs3 sth:v58];

                    v45 = v57;
                    v43 = 0;
                    v9 = v87;
                    p_info = (&OBJC_METACLASS___OptInOutResponse + 32);
                    v42 = v85;
LABEL_54:

LABEL_55:
                    v14 = v88;
                    goto LABEL_56;
                  }

                  v86 = v45;
                  logBeginningMs4 = [v45 logBeginningMs];
                  applicationKeyStore5 = [(KTContext *)self applicationKeyStore];
                  tltLogBeginningMs4 = [applicationKeyStore5 tltLogBeginningMs];

                  if (logBeginningMs4 <= tltLogBeginningMs4)
                  {
                    v76 = [v19 sth];
                    [v82 addObject:v76];

                    v43 = 0;
                    v9 = v87;
                    p_info = (&OBJC_METACLASS___OptInOutResponse + 32);
                    v45 = v86;
                    goto LABEL_54;
                  }

                  if (qword_10038BDE0 != -1)
                  {
                    sub_10024B820();
                  }

                  v65 = qword_10038BDE8;
                  if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_INFO))
                  {
                    v66 = v65;
                    logBeginningMs5 = [v86 logBeginningMs];
                    applicationKeyStore6 = [(KTContext *)self applicationKeyStore];
                    tltLogBeginningMs5 = [applicationKeyStore6 tltLogBeginningMs];
                    *buf = 134218240;
                    *v98 = logBeginningMs5;
                    *&v98[8] = 2048;
                    *v99 = tltLogBeginningMs5;
                    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "Received gossip from a newer client.  Gossiped logBeginningsMs: %llu, client logBeginningsMs: %llu", buf, 0x16u);
                  }

                  logBeginningMs6 = [v86 logBeginningMs];
                  applicationKeyStore7 = [(KTContext *)self applicationKeyStore];
                  tltLogBeginningMs6 = [applicationKeyStore7 tltLogBeginningMs];
                  v73 = [v19 sth];
                  [(KTContext *)self analyticsForTooNewLogBeginningMs:logBeginningMs6 expectedLogBeginningMS:tltLogBeginningMs6 sth:v73];

                  verifier = [(KTContext *)self verifier];
                  signedObject = [v42 signedObject];
                  [verifier checkHeadEpoch:signedObject];

                  v45 = v86;
                  v43 = 0;
                }

                else
                {
                  if (qword_10038BDE0 != -1)
                  {
                    sub_10024B870();
                  }

                  v60 = qword_10038BDE8;
                  if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *v98 = 0;
                    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Failed to parse gossiped sth loghead: %@", buf, 0xCu);
                  }

                  v101 = NSLocalizedDescriptionKey;
                  v102 = @"Failed to parse gossiped sth loghead";
                  v61 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
                  v43 = [NSError errorWithDomain:v84 code:-278 userInfo:v61];

                  [(KTContext *)self analyticsForParseFailure:v43];
                }

                v9 = v87;
                p_info = (&OBJC_METACLASS___OptInOutResponse + 32);
                goto LABEL_54;
              }

              if (qword_10038BDE0 != -1)
              {
                sub_10024B898();
              }

              v59 = qword_10038BDE8;
              if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *v98 = v43;
                _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Failed to parse gossiped sth signedLogHead: %@", buf, 0xCu);
              }

              [(KTContext *)self analyticsForParseFailure:v43];
              goto LABEL_55;
            }

            if (qword_10038BDE0 != -1)
            {
              sub_10024B8C0();
            }

            v14 = v88;
            v31 = qword_10038BDE8;
            if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_ERROR))
            {
              v32 = v31;
              version2 = [v19 version];
              applicationKeyStore8 = [(KTContext *)self applicationKeyStore];
              tltEarliestVersion2 = [applicationKeyStore8 tltEarliestVersion];
              v36 = [v19 sth];
              *buf = 67109634;
              *v98 = version2;
              *&v98[4] = 1024;
              *&v98[6] = tltEarliestVersion2;
              *v99 = 2112;
              *&v99[2] = v36;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Unsupported protocol version, message version %d, expected version: %d, sth: %@", buf, 0x18u);

              v14 = v88;
            }

            version3 = [v19 version];
            applicationKeyStore9 = [(KTContext *)self applicationKeyStore];
            tltEarliestVersion3 = [applicationKeyStore9 tltEarliestVersion];
            v40 = [v19 sth];
            [(KTContext *)self analyticsForUnsupportedProtocol:version3 expected:tltEarliestVersion3 sth:v40];

            v9 = v87;
            p_info = (&OBJC_METACLASS___OptInOutResponse + 32);
          }

          else
          {
            if (qword_10038BDE0 != -1)
            {
              sub_10024B8E8();
            }

            v22 = qword_10038BDE8;
            if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_ERROR))
            {
              v23 = v22;
              version4 = [v19 version];
              v25 = [v19 sth];
              *buf = 67109634;
              *v98 = version4;
              *&v98[4] = 1024;
              *&v98[6] = v89;
              *v99 = 2112;
              *&v99[2] = v25;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Unsupported protocol version, message version %d, expected version: %d, sth: %@", buf, 0x18u);

              v14 = v88;
            }

            version5 = [v19 version];
            v27 = [v19 sth];
            [(KTContext *)self analyticsForUnsupportedProtocol:version5 expected:v89 sth:v27];
          }
        }

        else
        {
          if (qword_10038BDE0 != -1)
          {
            sub_10024B910();
          }

          v21 = qword_10038BDE8;
          if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v98 = v12;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to inflate Gossip message %@", buf, 0xCu);
          }

          [(KTContext *)self analyticsForDecodeFailure:v19 error:v12];
        }

LABEL_56:

        v15 = v15 + 1;
      }

      while (v11 != v15);
      v11 = [v9 countByEnumeratingWithState:&v93 objects:v103 count:16];
      if (!v11)
      {
        goto LABEL_60;
      }
    }
  }

  v12 = 0;
LABEL_60:

  if ([v82 count] && (-[KTContext verifier](self, "verifier"), v77 = objc_claimAutoreleasedReturnValue(), v90 = 0, objc_msgSend(v77, "processSTHsFromGossipPeers:verifier:error:", v82, verifierCopy, &v90), v78 = v90, v77, v78))
  {
    v79 = handlerCopy;
    (*(handlerCopy + 2))(handlerCopy, v78);
  }

  else
  {
    v79 = handlerCopy;
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)writeResult:(id)result verification:(id)verification
{
  resultCopy = result;
  verificationCopy = verification;
  if ([resultCopy succeed] == 2)
  {
    idsResponseTime = [verificationCopy idsResponseTime];
    [idsResponseTime timeIntervalSinceNow];
    v10 = v9;
    v11 = kKTMaximumMergeDelayMs / -1000.0;

    if (v10 < v11)
    {
      [resultCopy setSucceed:0];
    }
  }

  [verificationCopy setUnsigned:"verificationResult" value:{objc_msgSend(resultCopy, "succeed")}];
  if ([resultCopy succeed] != 2)
  {
    loggableDatas = [resultCopy loggableDatas];

    if (loggableDatas)
    {
      if (qword_10038BDF0 != -1)
      {
        sub_10024B938();
      }

      v13 = qword_10038BDF8;
      if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        loggableDatas2 = [resultCopy loggableDatas];
        *buf = 138412290;
        v38 = loggableDatas2;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Updated cached loggable datas: %@", buf, 0xCu);
      }

      v16 = [KTLoggableDataArray alloc];
      loggableDatas3 = [resultCopy loggableDatas];
      v18 = [(KTLoggableDataArray *)v16 initWithLoggableDatas:loggableDatas3];
      [verificationCopy setServerLoggableDatas:v18];
    }

    [verificationCopy setOptedIn:{objc_msgSend(resultCopy, "optedIn")}];
    failure = [resultCopy failure];
    [verificationCopy setFailure:failure];

    [verificationCopy setUnsigned:"staticKeyStatus" value:{objc_msgSend(resultCopy, "staticAccountKeyStatus")}];
    peerState = [verificationCopy peerState];
    [peerState setEverCompletedVerification:1];
    if ([resultCopy optInTernaryState] != 2)
    {
      [peerState setOptedIn:{objc_msgSend(resultCopy, "optedIn")}];
    }

    if ([resultCopy optInTernaryState] == 1)
    {
      if ([peerState everOptedIn] && objc_msgSend(peerState, "turnedOffIgnored"))
      {
        [peerState setTurnedOffIgnored:0];
      }

      [peerState setEverOptedIn:1];
    }

    if ([peerState setCompletedVerification:verificationCopy])
    {
      if (qword_10038BDF0 != -1)
      {
        sub_10024B94C();
      }

      v21 = qword_10038BDF8;
      if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_INFO))
      {
        v22 = v21;
        v23 = [resultCopy uri];
        application = [resultCopy application];
        *buf = 138412546;
        v38 = v23;
        v39 = 2112;
        v40 = application;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Updated cached verifications for uri: %@ application: %@", buf, 0x16u);
      }

      contextStore = [(KTContext *)self contextStore];
      v26 = [resultCopy uri];
      v36 = v26;
      v27 = [NSArray arrayWithObjects:&v36 count:1];
      application2 = [resultCopy application];
      [contextStore handlePeerStateChange:v27 application:application2];
    }

    dataStore = [(KTContext *)self dataStore];
    v35 = 0;
    v30 = [dataStore persistWithError:&v35];
    v31 = v35;

    if ((v30 & 1) == 0)
    {
      if (qword_10038BDF0 != -1)
      {
        sub_10024B974();
      }

      v32 = qword_10038BDF8;
      if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_ERROR))
      {
        v33 = v32;
        verificationId = [verificationCopy verificationId];
        *buf = 138543618;
        v38 = verificationId;
        v39 = 2112;
        v40 = v31;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "failed to persist IDSKTVerification results for id %{public}@: %@", buf, 0x16u);
      }
    }
  }
}

- (void)validatePeerIDSKTVerification:(id)verification singleQuery:(id)query completionBlock:(id)block
{
  verificationCopy = verification;
  queryCopy = query;
  blockCopy = block;
  serverLoggableDatas = [verificationCopy serverLoggableDatas];
  updatableLoggableData = [serverLoggableDatas updatableLoggableData];

  v11 = [KTLoggableData isAccountKTCapable:updatableLoggableData];
  v53 = 0;
  v40 = [queryCopy getQueryRequest:&v53];
  v12 = v53;
  v52 = v12;
  v39 = [queryCopy getQueryResponse:&v52];
  v13 = v52;

  if (v40 && v39)
  {
    optInServer = [(KTContext *)self optInServer];
    v51 = 0;
    v37 = [optInServer getAggregateOptInState:&v51];
    v38 = v51;

    if (v37)
    {
      if ([v37 state] == 1)
      {
        v15 = 5;
      }

      else
      {
        v15 = 4;
      }
    }

    else
    {
      if (qword_10038BDF0 != -1)
      {
        sub_10024B99C();
      }

      v21 = qword_10038BDF8;
      if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v38;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "getAggregateOptInState: %@", &buf, 0xCu);
      }

      v15 = 4;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v55 = 0x3032000000;
    v56 = sub_100088CF0;
    v57 = sub_100088D00;
    v58 = 0;
    responseTime = [queryCopy responseTime];
    verificationId = [verificationCopy verificationId];
    v50 = v13;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100088D08;
    v43[3] = &unk_10031E468;
    p_buf = &buf;
    v24 = verificationCopy;
    v44 = v24;
    selfCopy = self;
    v49 = v15;
    v46 = updatableLoggableData;
    v47 = v39;
    v25 = [(KTContext *)self handleQueryResponse:v47 queryRequest:v40 receiptDate:responseTime fetchId:verificationId validateType:v15 ktCapable:v11 error:&v50 transparentDataHandler:v43];
    v26 = v50;

    v27 = *(*(&buf + 1) + 40);
    if (v27)
    {
      goto LABEL_22;
    }

    if (!v25)
    {
      dataStore = [(KTContext *)self dataStore];
      rpcId = [queryCopy rpcId];
      [dataStore failRpcId:rpcId failure:v26 error:0];
    }

    domain = [v26 domain];
    if ([domain isEqual:kTransparencyErrorServer])
    {
      v31 = [v26 code] == 7;

      if (v31)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    v25 = 2;
LABEL_21:
    v32 = [KTVerifierResult alloc];
    v33 = [v24 uri];
    application = [v24 application];
    v35 = [v32 initWithUri:v33 application:application ktResult:v25 failure:v26];
    v36 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v35;

    v27 = *(*(&buf + 1) + 40);
LABEL_22:
    [(KTContext *)self writeResult:v27 verification:v24];
    blockCopy[2](blockCopy, *(*(&buf + 1) + 40));

    _Block_object_dispose(&buf, 8);
    v13 = v26;
    goto LABEL_23;
  }

  v16 = [KTVerifierResult alloc];
  v17 = [verificationCopy uri];
  application2 = [verificationCopy application];
  v38 = [v16 initWithUri:v17 application:application2 ktResult:2 failure:v13];

  [(KTContext *)self writeResult:v38 verification:verificationCopy];
  dataStore2 = [(KTContext *)self dataStore];
  rpcId2 = [queryCopy rpcId];
  [dataStore2 failRpcId:rpcId2 failure:v13 error:0];

  (blockCopy)[2](blockCopy, v38);
LABEL_23:
}

- (void)validatePeerIDSKTVerification:(id)verification batchQuery:(id)query completionBlock:(id)block
{
  blockCopy = block;
  verificationCopy = verification;
  v9 = NSStringFromSelector(a2);
  v14 = [TransparencyError unimplementedError:v9];

  v10 = [KTVerifierResult alloc];
  v11 = [verificationCopy uri];
  application = [verificationCopy application];

  v13 = [v10 initWithUri:v11 application:application failure:v14];
  blockCopy[2](blockCopy, v13);
}

- (void)validatePeerIDSKTVerification:(id)verification serverRPC:(id)c completionBlock:(id)block
{
  verificationCopy = verification;
  cCopy = c;
  blockCopy = block;
  if ([cCopy rpcType])
  {
    if ([cCopy rpcType] == 1)
    {
      [(KTContext *)self validatePeerIDSKTVerification:verificationCopy batchQuery:cCopy completionBlock:blockCopy];
    }

    else
    {
      v10 = +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", kTransparencyErrorInternal, -340, @"unknown server rpc type: %lld", [cCopy rpcType]);
      v11 = [KTVerifierResult alloc];
      v12 = [verificationCopy uri];
      application = [verificationCopy application];
      v14 = [v11 initWithUri:v12 application:application failure:v10];
      blockCopy[2](blockCopy, v14);
    }
  }

  else
  {
    [(KTContext *)self validatePeerIDSKTVerification:verificationCopy singleQuery:cCopy completionBlock:blockCopy];
  }
}

- (void)validatePeers:(id)peers fetchNow:(BOOL)now completionBlock:(id)block
{
  nowCopy = now;
  peersCopy = peers;
  blockCopy = block;
  v19 = +[NSMutableArray array];
  v21 = +[NSMutableArray array];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_100088CF0;
  v43 = sub_100088D00;
  v44 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [peersCopy count]);
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100088CF0;
  v37 = sub_100088D00;
  v38 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [peersCopy count]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  keyEnumerator = [peersCopy keyEnumerator];
  v7 = [keyEnumerator countByEnumeratingWithState:&v29 objects:v53 count:16];
  if (v7)
  {
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [peersCopy objectForKeyedSubscript:v10];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10008A4A8;
        v23[3] = &unk_10031E5A8;
        v27 = &v39;
        v24 = v19;
        v25 = v10;
        v28 = &v33;
        v26 = v21;
        [(KTContext *)self validatePeer:v10 verificationInfo:v11 fetchNow:nowCopy completionBlock:v23];
      }

      v7 = [keyEnumerator countByEnumeratingWithState:&v29 objects:v53 count:16];
    }

    while (v7);
  }

  if (qword_10038BDF0 != -1)
  {
    sub_10024BAC8();
  }

  v12 = qword_10038BDF8;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v19 count];
    v14 = [v19 componentsJoinedByString:{@", "}];
    v15 = v40[5];
    *buf = 134218754;
    v46 = v13;
    v47 = 2160;
    v48 = 1752392040;
    v49 = 2112;
    v50 = v14;
    v51 = 2112;
    v52 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "validatePeers: returning %lu results for %{mask.hash}@: %@", buf, 0x2Au);
  }

  blockCopy[2](blockCopy, v40[5]);
  if ([v34[5] count])
  {
    dataStore = [(KTContext *)self dataStore];
    [dataStore updateIDSCacheWithResults:v34[5]];
  }

  [(KTContext *)self processPeerTTR:v40[5]];
  if ([v21 count])
  {
    [(KTContext *)self queryForUris:v21 userInitiated:1 cachedYoungerThan:0 completionHandler:&stru_10031E5E8];
  }

  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
}

- (void)processPeerTTR:(id)r
{
  rCopy = r;
  if (+[TransparencyAnalytics hasInternalDiagnostics])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v29 = rCopy;
    obj = rCopy;
    v4 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (!v4)
    {
      goto LABEL_28;
    }

    v5 = v4;
    v6 = @"im://";
    v7 = *v41;
    v30 = *v41;
    while (1)
    {
      v8 = 0;
      v31 = v5;
      do
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v40 + 1) + 8 * v8);
        if ([v9 optedIn])
        {
          failure = [v9 failure];

          if (failure)
          {
            v33 = v8;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            loggableDatas = [v9 loggableDatas];
            v11 = [loggableDatas countByEnumeratingWithState:&v36 objects:v46 count:16];
            if (!v11)
            {
              goto LABEL_25;
            }

            v12 = v11;
            v13 = *v37;
            while (1)
            {
              v14 = 0;
              do
              {
                if (*v37 != v13)
                {
                  objc_enumerationMutation(loggableDatas);
                }

                v15 = *(*(&v36 + 1) + 8 * v14);
                failure2 = [v15 failure];
                if (failure2)
                {
                }

                else if ([v15 result])
                {
                  goto LABEL_23;
                }

                v17 = [v9 uri];
                v18 = [v17 hasPrefix:v6];

                if (v18)
                {
                  v19 = [v9 uri];
                  v20 = v6;
                  v21 = [v19 substringFromIndex:{-[__CFString length](v6, "length")}];

                  v22 = [v9 uri];
                  failure3 = [v15 failure];
                  v24 = [NSString stringWithFormat:@"Failure to validate peer %@: %@", v22, failure3];

                  if (qword_10038BDF0 != -1)
                  {
                    sub_10024BB18();
                  }

                  v25 = qword_10038BDF8;
                  if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v45 = v24;
                    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "sasTTR: triggering TTR for: %@", buf, 0xCu);
                  }

                  tapToRadar = [(KTContext *)self tapToRadar];
                  deviceID = [v15 deviceID];
                  kt_hexString = [deviceID kt_hexString];
                  [tapToRadar sasTTRWithTitle:@"Failure to verify Contact Key" description:v24 relatedRadar:&off_10033CF48 unique:@"peerTTR" handle:v21 pushToken:kt_hexString];

                  v6 = v20;
                }

LABEL_23:
                v14 = v14 + 1;
              }

              while (v12 != v14);
              v12 = [loggableDatas countByEnumeratingWithState:&v36 objects:v46 count:16];
              if (!v12)
              {
LABEL_25:

                v7 = v30;
                v5 = v31;
                v8 = v33;
                break;
              }
            }
          }
        }

        v8 = v8 + 1;
      }

      while (v8 != v5);
      v5 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
      if (!v5)
      {
LABEL_28:

        rCopy = v29;
        break;
      }
    }
  }
}

- (void)validatePendingPeersForSingleQuery:(id)query
{
  queryCopy = query;
  v5 = [queryCopy uri];
  if (v5)
  {
    v6 = v5;
    responseTime = [queryCopy responseTime];

    if (responseTime)
    {
      dataStore = [(KTContext *)self dataStore];
      applicationID = [(KTContext *)self applicationID];
      v10 = [queryCopy uri];
      responseTime2 = [queryCopy responseTime];
      v28 = 0;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10008AEF0;
      v25[3] = &unk_100316DF0;
      v12 = queryCopy;
      v26 = v12;
      selfCopy = self;
      v13 = [dataStore performForPendingVerfications:applicationID uri:v10 responseOlderThan:responseTime2 error:&v28 batchSize:20 block:v25];
      v14 = v28;

      if ((v13 & 1) != 0 || !v14)
      {
        if (v13)
        {
          goto LABEL_19;
        }

        if (qword_10038BDF0 != -1)
        {
          sub_10024BB68();
        }

        v24 = qword_10038BDF8;
        if (!os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_19;
        }

        v16 = v24;
        rpcId = [v12 rpcId];
        *buf = 138543362;
        v30 = rpcId;
        v18 = "no pending IDSKTVerifications found for rpcId %{public}@";
        v19 = v16;
        v20 = OS_LOG_TYPE_DEBUG;
        v21 = 12;
      }

      else
      {
        if (qword_10038BDF0 != -1)
        {
          sub_10024BB40();
        }

        v15 = qword_10038BDF8;
        if (!os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        v16 = v15;
        rpcId = [v12 rpcId];
        *buf = 138543618;
        v30 = rpcId;
        v31 = 2112;
        v32 = v14;
        v18 = "no pending IDSKTVerifications found for rpcId %{public}@: %@";
        v19 = v16;
        v20 = OS_LOG_TYPE_ERROR;
        v21 = 22;
      }

      _os_log_impl(&_mh_execute_header, v19, v20, v18, buf, v21);

LABEL_19:
      goto LABEL_20;
    }
  }

  if (qword_10038BDF0 != -1)
  {
    sub_10024BB90();
  }

  v22 = qword_10038BDF8;
  if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_ERROR))
  {
    v14 = v22;
    rpcId2 = [queryCopy rpcId];
    *buf = 138543362;
    v30 = rpcId2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "rpcId %{public}@ missing uri or response time", buf, 0xCu);

LABEL_20:
  }
}

- (void)validatePendingPeersForBatchQuery:(id)query
{
  queryCopy = query;
  if (qword_10038BDF0 != -1)
  {
    sub_10024BBE0();
  }

  v4 = qword_10038BDF8;
  if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "validatePendingPeersForBatchQuery: batch query is unimplemented", v5, 2u);
  }
}

- (void)validatePendingPeersForRpcId:(id)id
{
  idCopy = id;
  dataStore = [(KTContext *)self dataStore];
  v9[4] = self;
  v10 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008B614;
  v9[3] = &unk_100316E98;
  v6 = [dataStore performAndWaitForRpcId:idCopy error:&v10 block:v9];
  v7 = v10;

  if ((v6 & 1) == 0)
  {
    if (qword_10038BDF0 != -1)
    {
      sub_10024BBF4();
    }

    v8 = qword_10038BDF8;
    if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = idCopy;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "failed to find rpc for rpcId %{public}@: %@", buf, 0x16u);
    }
  }
}

- (void)validateIDSPeerWithUri:(id)uri application:(id)application idsData:(id)data ktData:(id)ktData complete:(id)complete
{
  uriCopy = uri;
  applicationCopy = application;
  dataCopy = data;
  ktDataCopy = ktData;
  completeCopy = complete;
  response = [ktDataCopy response];
  v29 = 0;
  v18 = [(TransparencyGPBMessage *)QueryResponse parseFromData:response error:&v29];
  v19 = v29;

  if (v18)
  {
    dataStore = [(KTContext *)self dataStore];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10008B970;
    v21[3] = &unk_10031E798;
    v22 = dataCopy;
    selfCopy = self;
    v24 = uriCopy;
    v25 = applicationCopy;
    v28 = completeCopy;
    v26 = ktDataCopy;
    v27 = v18;
    [dataStore performBlockAndWaitWithMoc:v21];
  }

  else
  {
    (*(completeCopy + 2))(completeCopy, 0, v19);
  }
}

@end