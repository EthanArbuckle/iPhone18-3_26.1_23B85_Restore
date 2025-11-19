@interface KTContext
+ (BOOL)checkNetworkError:(id)a3;
+ (BOOL)hasAccountMismatch:(id)a3;
+ (BOOL)hasReachedEligibilityThreshold:(id)a3;
+ (BOOL)isCurrentlyEligible:(id)a3;
+ (id)analyticsSelfFlagNames;
+ (id)analyticsSuccessNames;
+ (id)chunkArray:(id)a3 chunkSize:(unint64_t)a4;
+ (id)successMetricsKey:(unint64_t)a3 forApplicationID:(id)a4;
+ (id)validateEventName:(unint64_t)a3 application:(id)a4;
+ (unint64_t)validateStaticKeyForPeer:(id)a3 accountKey:(id)a4 application:(id)a5 staticKeyStore:(id)a6 error:(id *)a7;
+ (void)checkAndLogHardErrorIfNecessary:(unint64_t)a3 type:(unint64_t)a4 logger:(id)a5 error:(id)a6 applicationID:(id)a7;
+ (void)metricsForResult:(unint64_t)a3 type:(unint64_t)a4 logger:(id)a5 applicationID:(id)a6;
+ (void)updateEligibilityThreshold:(id)a3;
- (BOOL)contextShouldGossip;
- (BOOL)drainContext;
- (BOOL)injectVerificationFailure:(id)a3 failing:(id)a4 error:(id *)a5;
- (BOOL)peerStaticKeyFallback:(id)a3 accountKey:(id)a4 transparentData:(id *)a5;
- (BOOL)ready:(id *)a3;
- (BOOL)shouldShowCFU:(id)a3;
- (BOOL)unsupported:(id *)a3;
- (BOOL)validatePendingSMTs:(id)a3 singleQuery:(id)a4 error:(id *)a5;
- (BOOL)verifyInclusionProofDownload:(id)a3 error:(id *)a4;
- (BOOL)verifyInclusionProofDownloadRecord:(id)a3 error:(id *)a4;
- (KTContext)initWithApplicationID:(id)a3 dependencies:(id)a4;
- (KTContext)initWithApplicationKeyStore:(id)a3 dataStore:(id)a4 smDataStore:(id)a5 staticKeyStore:(id)a6 logClient:(id)a7 applicationID:(id)a8 contextStore:(id)a9 accountKeyServer:(id)a10 stateMachine:(id)a11 kvs:(id)a12 cloudRecords:(id)a13 followup:(id)a14 settings:(id)a15 analyticsLogger:(id)a16 tapToRadar:(id)a17 eligibilityStatusReporter:(id)a18;
- (KTContextStore)contextStore;
- (KTSMManager)stateMachine;
- (id)analyticsForType:(unint64_t)a3 uri:(id)a4 accountKey:(id)a5 serverLoggableDatas:(id)a6 syncedLoggableDatas:(id)a7 transparentData:(id)a8 selfVerificationInfo:(id)a9 responseTime:(id)a10 result:(unint64_t)a11 failure:(id)a12 responseMetadata:(id)a13;
- (id)copyState;
- (id)createQueryRequestForKTRequest:(id)a3 error:(id *)a4;
- (id)metadataForInsertResponse:(id)a3;
- (id)parseQueryRequestFromKTRequest:(id)a3 error:(id *)a4;
- (id)parseQueryResponseFromKTRequest:(id)a3 error:(id *)a4;
- (id)retrieveTLTSTH:(id *)a3;
- (id)serverLoggableDatasDiagnostics:(id)a3 selfPushToken:(id)a4 humbled:(BOOL *)a5;
- (id)stringForValidateType:(unint64_t)a3;
- (unint64_t)deserializeServerLoggableDatas:(id)a3 loggableDatas:(id *)a4 error:(id *)a5;
- (unint64_t)deserializeSyncedLoggableDatas:(id)a3 loggableDatas:(id *)a4 error:(id *)a5;
- (unint64_t)fetchAndValidateEnrollKTRequest:(id)a3 transparentData:(id *)a4 loggableDatas:(id *)a5 cloudOptIn:(id)a6 error:(id *)a7;
- (unint64_t)handleBatchQueryResponse:(id)a3 queryRequest:(id)a4 receiptDate:(id)a5 fetchId:(id)a6 error:(id *)a7 transparentDataHandler:(id)a8;
- (unint64_t)handleInsertResponse:(id)a3 uri:(id)a4 fetchId:(id)a5 error:(id *)a6 transparentDataHandler:(id)a7;
- (unint64_t)handleQueryResponse:(id)a3 queryRequest:(id)a4 receiptDate:(id)a5 fetchId:(id)a6 validateType:(unint64_t)a7 ktCapable:(BOOL)a8 error:(id *)a9 transparentDataHandler:(id)a10;
- (unint64_t)validateAndReportPeerOrEnroll:(id)a3 type:(unint64_t)a4 transparentData:(id)a5 accountKey:(id)a6 loggableDatas:(id)a7 initialResult:(unint64_t)a8 idsResponseTime:(id)a9 responseMetadata:(id)a10 error:(id *)a11;
- (unint64_t)validateAndReportSelf:(id)a3 transparentData:(id)a4 accountKey:(id)a5 serverloggableDatas:(id)a6 syncedLoggableDatas:(id)a7 selfVerificationInfo:(id)a8 optInCheck:(BOOL)a9 cloudDevices:(id)a10 pcsAccountKey:(id)a11 kvsOptInHistory:(id)a12 isReplay:(BOOL)a13 initialResult:(unint64_t)a14 idsResponseTime:(id)a15 responseMetadata:(id)a16 error:(id *)a17;
- (unint64_t)validateEnrollKTRequest:(id)a3 insertResponse:(id)a4 transparentData:(id *)a5 loggableDatas:(id *)a6 cloudOptIn:(id)a7 error:(id *)a8;
- (unint64_t)validateEnrollmentRequestId:(id)a3 transparentData:(id *)a4 loggableDatas:(id *)a5 cloudOptIn:(id)a6 error:(id *)a7;
- (unint64_t)validatePeer:(id)a3 transparentData:(id)a4 accountKey:(id)a5 loggableDatas:(id)a6 selfVerificationInfo:(id)a7 enforceStaticKey:(BOOL)a8 idsResponseTime:(id)a9 responseTime:(id)a10 error:(id *)a11;
- (unint64_t)validatePeerOrEnrollKTRequest:(id)a3 queryRequest:(id)a4 queryResponse:(id)a5 transparentData:(id *)a6 loggableDatas:(id *)a7 error:(id *)a8;
- (unint64_t)validateSelf:(id)a3 transparentData:(id)a4 accountKey:(id)a5 serverloggableDatas:(id)a6 syncedLoggableDatas:(id)a7 selfVerificationInfo:(id)a8 idsResponseTime:(id)a9 responseTime:(id)a10 optInCheck:(BOOL)a11 cloudDevices:(id)a12 pcsAccountKey:(id)a13 kvsOptInHistory:(id)a14 isReplay:(BOOL)a15 error:(id *)a16;
- (unint64_t)validateSelfKTRequest:(id)a3 queryRequest:(id)a4 queryResponse:(id)a5 selfVerificationInfo:(id)a6 optInCheck:(BOOL)a7 cloudDevices:(id)a8 pcsAccountKey:(id)a9 kvsOptInHistory:(id)a10 isReplay:(BOOL)a11 transparentData:(id *)a12 loggableDatas:(id *)a13 error:(id *)a14;
- (unint64_t)validateStaticKeyForPeer:(id)a3 accountKey:(id)a4 error:(id *)a5;
- (unint64_t)verifyConsistencyProofDownload:(id)a3 error:(id *)a4;
- (unint64_t)verifyConsistencyProofDownloadRecord:(id)a3 error:(id *)a4;
- (unint64_t)writeResult:(unint64_t)a3 request:(id)a4 proof:(id)a5 replay:(BOOL)a6 error:(id *)a7;
- (void)analyticsForDecodeFailure:(id)a3 error:(id)a4;
- (void)analyticsForParseFailure:(id)a3;
- (void)analyticsForPredateLogBeginningMs:(unint64_t)a3 expectedLogBeginningMS:(unint64_t)a4 sth:(id)a5;
- (void)analyticsForTooNewLogBeginningMs:(unint64_t)a3 expectedLogBeginningMS:(unint64_t)a4 sth:(id)a5;
- (void)clearSelfTicketState:(id)a3 responseTime:(id)a4;
- (void)clearState:(id)a3;
- (void)dealloc;
- (void)fetchAndValidatePeerKTRequest:(id)a3 fetchNow:(BOOL)a4 completionHandler:(id)a5;
- (void)fetchRPCSingleQuery:(id)a3 userInitiated:(BOOL)a4 cachedYoungerThan:(id)a5 backgroundOpId:(id)a6 completionHandler:(id)a7;
- (void)logFinishFailureEvent:(id)a3 error:(id)a4;
- (void)logFinishSuccessEvent:(id)a3;
- (void)logStartEvent:(id)a3;
- (void)optInStateForUri:(id)a3 completionHandler:(id)a4;
- (void)processPeerTTR:(id)a3;
- (void)processSTHsFromPeers:(id)a3 verifier:(id)a4 completionHandler:(id)a5;
- (void)queryForUris:(id)a3 userInitiated:(BOOL)a4 cachedYoungerThan:(id)a5 backgroundOpId:(id)a6 completionHandler:(id)a7;
- (void)recordEnrollOptInRecord:(id)a3 accountKey:(id)a4 transparentData:(id)a5 cloudOptIn:(id)a6;
- (void)replaySelfValidate:(id)a3 pcsAccountKey:(id)a4 queryRequest:(id)a5 queryResponse:(id)a6 responseTime:(id)a7 completionHandler:(id)a8;
- (void)reportValidationTime:(unint64_t)a3 initialResult:(unint64_t)a4 result:(unint64_t)a5 idsResponseTime:(id)a6;
- (void)selfValidationURIStatus:(id)a3 transparentData:(id)a4 selfDeviceID:(id)a5 logger:(id)a6;
- (void)storeEligibilityMetric:(unint64_t)a3 result:(unint64_t)a4 error:(id)a5;
- (void)validateIDSPeerWithUri:(id)a3 application:(id)a4 idsData:(id)a5 ktData:(id)a6 complete:(id)a7;
- (void)validatePeerIDSKTVerification:(id)a3 batchQuery:(id)a4 completionBlock:(id)a5;
- (void)validatePeerIDSKTVerification:(id)a3 serverRPC:(id)a4 completionBlock:(id)a5;
- (void)validatePeerIDSKTVerification:(id)a3 singleQuery:(id)a4 completionBlock:(id)a5;
- (void)validatePeerRequestId:(id)a3 revalidate:(BOOL)a4 fetchNow:(BOOL)a5 completionHandler:(id)a6;
- (void)validatePeers:(id)a3 fetchNow:(BOOL)a4 completionBlock:(id)a5;
- (void)validatePendingPeersForBatchQuery:(id)a3;
- (void)validatePendingPeersForRpcId:(id)a3;
- (void)validatePendingPeersForSingleQuery:(id)a3;
- (void)validatePendingSMTsForBatchQuery:(id)a3;
- (void)validatePendingSMTsForRpcId:(id)a3;
- (void)validatePendingSMTsForSingleQuery:(id)a3;
- (void)writeLoggableDatas:(id)a3 request:(id)a4;
- (void)writeResult:(id)a3 verification:(id)a4;
@end

@implementation KTContext

- (BOOL)validatePendingSMTs:(id)a3 singleQuery:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v58[0] = 0;
  v46 = [v7 getQueryRequest:v58];
  v8 = v58[0];
  v57 = v8;
  v9 = [v7 getQueryResponse:&v57];
  v10 = v57;

  v11 = [v9 metadata];
  v12 = kTransparencyResponseMetadataKeyServerHint;
  v13 = [v11 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

  v14 = [v9 metadata];
  v15 = [v14 objectForKeyedSubscript:@"APS"];

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

  v18 = [v7 backgroundOpId];
  v19 = [v18 UUIDString];
  [v17 setObject:v19 forKeyedSubscript:@"opUUID"];

  if (v46 && v9)
  {
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v20 = [(KTContext *)self verifier];
    v21 = [v7 responseTime];
    v22 = [v7 rpcId];
    v52 = v10;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10000F650;
    v47[3] = &unk_100316DA8;
    v47[4] = self;
    v41 = v6;
    v48 = v41;
    v23 = v9;
    v49 = v23;
    v24 = v17;
    v50 = v24;
    v51 = &v53;
    v40 = [v20 handleQueryResponse:v23 queryRequest:v46 receiptDate:v21 fetchId:v22 error:&v52 rawDataHandler:v47];
    v42 = v6;
    v25 = v52;

    v26 = v44;
    if (v25)
    {
      v27 = [v25 domain];
      if ([v27 isEqual:kTransparencyErrorServer])
      {
        v28 = [v25 code] == 7;
      }

      else
      {
        v28 = 0;
      }

      v34 = [(KTContext *)self verifier];
      v35 = [v23 data];
      v36 = [v34 failSMTsIfOverMMD:v41 skipOptInOut:v28 proof:v35 underlyingError:v25 errorCode:-306 analyticsData:v24];

      if ((v36 & 1) == 0)
      {
        *(v54 + 24) = 1;
      }

      if (!v40)
      {
        v37 = [(KTContext *)self dataStore];
        v38 = [v7 rpcId];
        [v37 failRpcId:v38 failure:v25 error:0];
      }
    }

    v32 = *(v54 + 24);

    _Block_object_dispose(&v53, 8);
    v33 = v42;
  }

  else
  {
    v29 = [v9 status] == 7;
    v30 = [(KTContext *)self verifier];
    v31 = [v9 data];
    v32 = [v30 failSMTsIfOverMMD:v6 skipOptInOut:v29 proof:v31 underlyingError:v10 errorCode:-306 analyticsData:v17] ^ 1;

    v33 = v6;
    v25 = v10;
    v26 = v13;
  }

  return v32 & 1;
}

- (void)validatePendingSMTsForSingleQuery:(id)a3
{
  v4 = a3;
  v5 = [(KTContext *)self dataStore];
  v6 = [(KTContext *)self applicationID];
  v7 = [v4 uri];
  v21 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000FAC0;
  v19[3] = &unk_100316DF0;
  v19[4] = self;
  v8 = v4;
  v20 = v8;
  v9 = [v5 performForPendingSMTs:v6 uri:v7 error:&v21 batchSize:20 block:v19];
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
        v13 = [v8 rpcId];
        *buf = 138543362;
        v23 = v13;
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
      v13 = [v8 rpcId];
      *buf = 138543618;
      v23 = v13;
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

- (void)validatePendingSMTsForBatchQuery:(id)a3
{
  v3 = a3;
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

- (void)validatePendingSMTsForRpcId:(id)a3
{
  v4 = a3;
  v5 = [(KTContext *)self dataStore];
  v9[4] = self;
  v10 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000FED4;
  v9[3] = &unk_100316E98;
  v6 = [v5 performAndWaitForRpcId:v4 error:&v10 block:v9];
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
      v12 = v4;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "failed to find rpc for rpcId %{public}@: %@", buf, 0x16u);
    }
  }
}

+ (unint64_t)validateStaticKeyForPeer:(id)a3 accountKey:(id)a4 application:(id)a5 staticKeyStore:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [TransparencyApplication stripApplicationPrefixForIdentifier:a5 uri:v11];
  v42 = 0;
  v15 = [v13 findStaticKeyByHandle:v14 error:&v42];

  v16 = v42;
  if (v15 || ([0 publicKeyID], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
  {
    if (v12)
    {
      v41 = v16;
      v18 = [KTAccountPublicID ktAccountPublicIDWithPublicKeyInfo:v12 error:&v41];
      v19 = v41;

      if (v18)
      {
        v20 = [v15 publicKeyID];
        v21 = [v18 isEqual:v20];

        if (v21)
        {
          v22 = [v15 handles];
          v23 = [v22 objectForKeyedSubscript:v14];

          if ([v23 errorCode])
          {
            if (a7)
            {
              *a7 = +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", kTransparencyErrorDecode, [v23 errorCode], @"Synthetic mock error");
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
          v40 = a7;
          v43[0] = @"peerID";
          v30 = [v18 publicAccountIdentity];
          v43[1] = @"entry";
          v44[0] = v30;
          v31 = [v15 publicKeyID];
          v32 = [v31 publicAccountIdentity];
          v44[1] = v32;
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
            v46 = v11;
            v47 = 2112;
            v48 = v34;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Failed to validateStaticKeyForPeer %@: %@", buf, 0x16u);
          }

          if (v40)
          {
            v36 = v34;
            *v40 = v34;
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
          v28 = [v12 kt_hexString];
          *buf = 138412802;
          v46 = v11;
          v47 = 2112;
          v48 = v28;
          v49 = 2112;
          v50 = v25;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to parse account key %@ %@: %@", buf, 0x20u);
        }

        if (a7)
        {
          v29 = v25;
          *a7 = v25;
        }

        v24 = 5;
        v19 = v25;
      }

      v16 = v19;
    }

    else
    {
      if (a7)
      {
        *a7 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-305 description:@"Static key missing"];
      }

      v24 = 5;
    }
  }

  else
  {
    v37 = [0 publicKeyID];

    if (!v37)
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
        v48 = v11;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Static key entry for %{mask.hash}@ missing publicKeyID", buf, 0x16u);
      }
    }

    v24 = 1;
  }

  return v24;
}

- (unint64_t)validateStaticKeyForPeer:(id)a3 accountKey:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_class();
  v11 = [(KTContext *)self applicationID];
  v12 = [(KTContext *)self staticKeyStore];
  v13 = [v10 validateStaticKeyForPeer:v9 accountKey:v8 application:v11 staticKeyStore:v12 error:a5];

  return v13;
}

- (unint64_t)validatePeer:(id)a3 transparentData:(id)a4 accountKey:(id)a5 loggableDatas:(id)a6 selfVerificationInfo:(id)a7 enforceStaticKey:(BOOL)a8 idsResponseTime:(id)a9 responseTime:(id)a10 error:(id *)a11
{
  v27 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  [a9 timeIntervalSinceReferenceDate];
  v29 = 0;
  v17 = [v14 validateAndUpdateWithServerLoggableDatas:v16 accountKey:v15 idsResponseTime:&v29 error:?];
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
      v33 = v27;
      v34 = 2112;
      v35 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to verify %{mask.hash}@ transparency: %@", buf, 0x20u);
    }

    v19 = 0;
    if (a11 && v18)
    {
      v21 = v18;
      v19 = 0;
      *a11 = v18;
    }
  }

  v28 = v18;
  v22 = [KTContextVerifier verifyLoggableDataSignatures:v16 accountKey:v15 error:&v28];
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
      v33 = v27;
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to verify %{mask.hash}@ signatures: %@", buf, 0x20u);
    }

    if (a11 && v23)
    {
      v25 = v23;
      *a11 = v23;
    }

    [v14 setStaticKeyStatus:4];
    v19 = 0;
  }

  return v19;
}

- (BOOL)injectVerificationFailure:(id)a3 failing:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(KTContext *)self settings];
  LODWORD(self) = [v10 allowsInternalSecurityPolicies];

  if (self)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v8;
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
          v17 = [v16 deviceID];
          v18 = [v9 containsObject:v17];

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
              v21 = [v16 deviceID];
              v22 = [v21 kt_hexString];
              *buf = 138543362;
              v32 = v22;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "inserting forced failure for peer %{public}@", buf, 0xCu);
            }

            v23 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-397 errorLevel:4 underlyingError:0 userinfo:0 description:@"Testing force error for peer"];
            [v16 setResult:0];
            [v16 setFailure:v23];
            if (a5 && v23)
            {
              v24 = v23;
              *a5 = v23;
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

- (unint64_t)validateSelf:(id)a3 transparentData:(id)a4 accountKey:(id)a5 serverloggableDatas:(id)a6 syncedLoggableDatas:(id)a7 selfVerificationInfo:(id)a8 idsResponseTime:(id)a9 responseTime:(id)a10 optInCheck:(BOOL)a11 cloudDevices:(id)a12 pcsAccountKey:(id)a13 kvsOptInHistory:(id)a14 isReplay:(BOOL)a15 error:(id *)a16
{
  v86 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v87 = a7;
  v24 = a10;
  v88 = a12;
  v25 = a13;
  v84 = a14;
  v95 = 0;
  v26 = v86;
  v27 = v21;
  v28 = v22;
  v29 = self;
  v79 = [KTContext validatePeer:"validatePeer:transparentData:accountKey:loggableDatas:selfVerificationInfo:enforceStaticKey:idsResponseTime:responseTime:error:" transparentData:a9 accountKey:v24 loggableDatas:&v95 selfVerificationInfo:? enforceStaticKey:? idsResponseTime:? responseTime:? error:?];
  v30 = v95;
  v31 = [(KTContext *)self settings];
  v32 = [v31 testingSelfValidationFailing];

  v33 = v32;
  v85 = v24;
  if (v32 && [(KTContext *)v29 injectVerificationFailure:v23 failing:v32 error:a16])
  {
    v34 = 0;
    v35 = v84;
    v36 = v87;
    goto LABEL_35;
  }

  v37 = v29;
  v82 = v33;
  v83 = v25;
  v38 = v28;
  v94 = v30;
  v81 = v23;
  v36 = v87;
  v39 = [KTContextVerifier verifyServerLoggableDatas:v23 againstSyncedLoggableDatas:v87 cloudDevices:v88 error:&v94];
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
      v99 = v86;
      v100 = 2112;
      v101 = v40;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Failed to verify %{mask.hash}@ server data against synced data: %@", buf, 0x20u);
    }

    v34 = 0;
    v25 = v83;
    if (a16 && v40)
    {
      v43 = v40;
      v34 = 0;
      *a16 = v40;
    }

    goto LABEL_34;
  }

  if (!a11)
  {
    v93 = v40;
    v41 = [v27 validateAndUpdateWithSyncedLoggableDatas:v87 accountKey:v28 cloudDevices:v88 requestDate:v24 error:&v93];
    v30 = v93;

    if ((v41 & 1) == 0)
    {
      if (qword_10038BBA0 != -1)
      {
        sub_1002470A8();
      }

      v36 = v87;
      v33 = v82;
      v46 = qword_10038BBA8;
      v23 = v81;
      if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_ERROR))
      {
        *buf = 141558530;
        v97 = 1752392040;
        v98 = 2112;
        v99 = v86;
        v100 = 2112;
        v101 = v30;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to verify %{mask.hash}@ transparent data against synced data: %@", buf, 0x20u);
      }

      v25 = v83;
      if (a16 && v30)
      {
        v47 = v30;
        *a16 = v30;
        goto LABEL_28;
      }

      v35 = v84;
LABEL_45:
      v34 = 0;
      goto LABEL_35;
    }

    v40 = v30;
  }

  if (!a15)
  {
    v44 = [(KTContext *)v37 accountKeyServer];
    v92 = v40;
    v45 = [v44 isAccountIdentity:v28 error:&v92];
    v30 = v92;

    if (v45)
    {
      v33 = v82;
      if (a11)
      {
        v35 = v84;
        v26 = v86;
        v36 = v87;
LABEL_55:
        v25 = v83;
        goto LABEL_56;
      }

      v52 = v37;
      v53 = [(KTContext *)v37 cloudRecords];
      v54 = [v53 enforceCKOptInRecords];

      if (!v54)
      {
LABEL_53:
        v60 = [(KTContext *)v52 cloudRecords];
        v61 = [v60 enforceCKOptInRecords];

        v62 = v52;
        v36 = v87;
        if (v61)
        {
          v35 = v84;
          v26 = v86;
          v28 = v38;
          goto LABEL_55;
        }

        v64 = [(KTContext *)v62 optInServer];
        v90 = 0;
        v35 = [v64 getOptInHistory:&v90];
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
            v26 = v86;
            v33 = v82;
            v25 = v83;
            goto LABEL_56;
          }

          v80 = 0;
          v25 = v83;
          if (!a16)
          {
            v30 = v73;
            v26 = v86;
            goto LABEL_85;
          }

          v30 = v73;
          v26 = v86;
          v75 = a16;
          if (!v73)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        }

        v66 = [v65 domain];
        if ([v66 isEqualToString:kTransparencyErrorInterface])
        {
          v67 = [v65 code];

          v68 = v86;
          v28 = v38;
          if (v67 == -308)
          {
            v25 = v83;
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
              v99 = v86;
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

          v68 = v86;
          v28 = v38;
        }

        v25 = v83;
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
        v75 = a16;
        v26 = v68;
        if (!a16)
        {
LABEL_85:

          v23 = v81;
          v33 = v82;
          v27 = v78;
          v34 = v80;
          goto LABEL_35;
        }

LABEL_84:
        v76 = v73;
        *v75 = v73;
        goto LABEL_85;
      }

      v55 = [v27 getLogDataForAccountKey:v28 uri:v86];
      v56 = [(KTContext *)v52 cloudRecords];
      v57 = [(KTContext *)v52 applicationID];
      v91 = 0;
      v58 = [v56 evaluateKTLogData:v55 application:v57 error:&v91];
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

      v36 = v87;
      if (qword_10038BBA0 != -1)
      {
        sub_100247170();
      }

      v26 = v86;
      v23 = v81;
      v70 = qword_10038BBA8;
      v28 = v38;
      if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v97 = v77;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "evaluateKTLogData failure: %@", buf, 0xCu);
      }

      v25 = v83;
      v71 = v77;
      if (a16 && v77)
      {
        v71 = v77;
        *a16 = v71;
      }

LABEL_28:
      v34 = 0;
      v35 = v84;
      goto LABEL_35;
    }

    v33 = v82;
    if (qword_10038BBA0 != -1)
    {
      sub_1002470D0();
    }

    v26 = v86;
    v36 = v87;
    v23 = v81;
    v50 = qword_10038BBA8;
    v25 = v83;
    if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_ERROR))
    {
      *buf = 141558530;
      v97 = 1752392040;
      v98 = 2112;
      v99 = v86;
      v100 = 2112;
      v101 = v30;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Failed to verify %{mask.hash}@ account key: %@", buf, 0x20u);
    }

    if (a16 && v30)
    {
      v51 = v30;
      *a16 = v30;
      v34 = 0;
      v35 = v84;
      goto LABEL_35;
    }

    v35 = v84;
    goto LABEL_45;
  }

  if (([v83 isEqual:v28] & 1) == 0)
  {
    v36 = v87;
    if (qword_10038BBA0 != -1)
    {
      sub_100247198();
    }

    v48 = qword_10038BBA8;
    v25 = v83;
    if (os_log_type_enabled(qword_10038BBA8, OS_LOG_TYPE_ERROR))
    {
      *buf = 141558274;
      v97 = 1752392040;
      v98 = 2112;
      v99 = v86;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Failed to verify %{mask.hash}@ account key", buf, 0x16u);
    }

    v34 = 0;
LABEL_34:
    v30 = v40;
    v35 = v84;
    v23 = v81;
    v33 = v82;
    goto LABEL_35;
  }

  v30 = v40;
  v36 = v87;
  v25 = v83;
  v35 = v84;
  v33 = v82;
LABEL_56:
  v34 = v79;
  v23 = v81;
  if (a16 && v30)
  {
    v63 = v30;
    *a16 = v30;
  }

LABEL_35:

  return v34;
}

- (unint64_t)validateAndReportPeerOrEnroll:(id)a3 type:(unint64_t)a4 transparentData:(id)a5 accountKey:(id)a6 loggableDatas:(id)a7 initialResult:(unint64_t)a8 idsResponseTime:(id)a9 responseMetadata:(id)a10 error:(id *)a11
{
  v31 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v20 = a10;
  v21 = [(KTContext *)self applicationID];
  v22 = [KTContext validateEventName:a4 application:v21];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000142C8;
  v33[3] = &unk_1003173A0;
  v34 = v20;
  v35 = self;
  v36 = v31;
  v37 = v16;
  v38 = v17;
  v39 = v18;
  v40 = v19;
  v41 = a4;
  v42 = a8;
  v23 = v19;
  v24 = v18;
  v25 = v17;
  v26 = v16;
  v27 = v31;
  v28 = v20;
  v29 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v22 error:a11 block:v33];

  return v29;
}

- (void)clearSelfTicketState:(id)a3 responseTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(KTContext *)self dataStore];
  v9 = [(KTContext *)self applicationID];
  v21 = 0;
  v10 = [v8 checkFollowupTicket:v9 uri:v6 checkTime:v7 error:&v21];

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
      v14 = [(KTContext *)self applicationID];
      *buf = 138544130;
      v23 = v14;
      v24 = 2160;
      v25 = 1752392040;
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to check followup ticket for %{public}@:%{mask.hash}@ with error: %@", buf, 0x2Au);
    }
  }

  if ((v10 - 1) <= 1)
  {
    v15 = [(KTContext *)self dataStore];
    v16 = [(KTContext *)self applicationID];
    v20 = 0;
    v17 = [v15 clearFollowupTicket:v16 uri:v6 error:&v20];
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
        v25 = v6;
        v26 = 2112;
        v27 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to clear followup ticket for %{mask.hash}@: %@", buf, 0x20u);
      }
    }
  }
}

- (unint64_t)validateAndReportSelf:(id)a3 transparentData:(id)a4 accountKey:(id)a5 serverloggableDatas:(id)a6 syncedLoggableDatas:(id)a7 selfVerificationInfo:(id)a8 optInCheck:(BOOL)a9 cloudDevices:(id)a10 pcsAccountKey:(id)a11 kvsOptInHistory:(id)a12 isReplay:(BOOL)a13 initialResult:(unint64_t)a14 idsResponseTime:(id)a15 responseMetadata:(id)a16 error:(id *)a17
{
  v52 = a3;
  v22 = a4;
  v23 = a5;
  v51 = a6;
  v50 = a7;
  v54 = a8;
  v53 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a15;
  v27 = a16;
  v28 = [v27 objectForKeyedSubscript:@"ResponseTime"];
  v29 = [NSDate kt_dateFromString:v28];

  v48 = v25;
  if (a13)
  {
    LOBYTE(v45) = 1;
    v43 = v24;
    v44 = v25;
    v30 = v52;
    LOBYTE(v42) = a9;
    v31 = v26;
    v32 = v22;
    v33 = v22;
    v34 = v23;
    v35 = v23;
    v36 = v51;
    v37 = v24;
    v38 = v50;
    v39 = [(KTContext *)self validateSelf:v52 transparentData:v33 accountKey:v35 serverloggableDatas:v51 syncedLoggableDatas:v50 selfVerificationInfo:v54 idsResponseTime:v26 responseTime:v29 optInCheck:v42 cloudDevices:v53 pcsAccountKey:v43 kvsOptInHistory:v44 isReplay:v45 error:a17];
  }

  else
  {
    [(KTContext *)self applicationID];
    v40 = v47 = v24;
    v46 = [KTContext validateEventName:1 application:v40];

    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_100014BA8;
    v55[3] = &unk_100317408;
    v55[4] = self;
    v30 = v52;
    v56 = v52;
    v32 = v22;
    v57 = v22;
    v34 = v23;
    v58 = v23;
    v36 = v51;
    v59 = v51;
    v38 = v50;
    v60 = v50;
    v61 = v54;
    v31 = v26;
    v62 = v26;
    v63 = v29;
    v67 = a9;
    v64 = v53;
    v66 = a14;
    v65 = v27;
    v39 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v46 error:a17 block:v55];

    v37 = v47;
  }

  return v39;
}

- (unint64_t)handleBatchQueryResponse:(id)a3 queryRequest:(id)a4 receiptDate:(id)a5 fetchId:(id)a6 error:(id *)a7 transparentDataHandler:(id)a8
{
  v14 = a8;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [(KTContext *)self verifier];
  v20 = [v19 handleBatchQueryResponse:v18 queryRequest:v17 receiptDate:v16 fetchId:v15 error:a7 transparentDataHandler:v14];

  return v20;
}

- (unint64_t)handleQueryResponse:(id)a3 queryRequest:(id)a4 receiptDate:(id)a5 fetchId:(id)a6 validateType:(unint64_t)a7 ktCapable:(BOOL)a8 error:(id *)a9 transparentDataHandler:(id)a10
{
  v34 = a8;
  v15 = a3;
  v16 = a4;
  v17 = a10;
  v18 = a6;
  v19 = a5;
  v20 = [(KTContext *)self applicationID];
  v21 = [KTContext validateEventName:a7 application:v20];

  v22 = [(KTContext *)self verifier];
  v35 = 0;
  v23 = [v22 handleQueryResponse:v15 queryRequest:v16 receiptDate:v19 fetchId:v18 error:&v35 transparentDataHandler:v17];

  v24 = v35;
  if (v23 != 1)
  {
    v25 = [v15 metadata];
    v26 = [v16 uri];
    v27 = [(KTContext *)self analyticsForResponse:v25 type:a7 uri:v26 result:v23 ktCapable:v34];

    if (v23)
    {
      v28 = 0;
    }

    else
    {
      v29 = [v27 objectForKeyedSubscript:@"ktSoftFailure"];
      v30 = [v29 BOOLValue];

      v28 = v30 ^ 1;
    }

    v31 = +[TransparencyAnalytics logger];
    [v31 logResultForEvent:v21 hardFailure:v28 & 1 result:v24 withAttributes:v27];
  }

  if (a9 && v24)
  {
    v32 = v24;
    *a9 = v24;
  }

  return v23;
}

- (id)metadataForInsertResponse:(id)a3
{
  v3 = a3;
  v4 = [v3 serverEventInfo];

  if (v4)
  {
    v7 = kTransparencyResponseMetadataKeyServerHint;
    v5 = [v3 serverEventInfo];
    v8 = v5;
    v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  return v4;
}

- (unint64_t)handleInsertResponse:(id)a3 uri:(id)a4 fetchId:(id)a5 error:(id *)a6 transparentDataHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(KTContext *)self applicationID];
  v17 = [KTContext validateEventName:2 application:v16];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000152CC;
  v24[3] = &unk_100317430;
  v24[4] = self;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v17 error:a6 block:v24];

  return v22;
}

- (KTContext)initWithApplicationID:(id)a3 dependencies:(id)a4
{
  v5 = a4;
  v22 = a3;
  v24 = [v5 applicationKeyStore];
  v19 = [v5 dataStore];
  v18 = [v5 smDataStore];
  v17 = [v5 staticKeyStore];
  v16 = [v5 logClient];
  v23 = [v5 contextStore];
  v15 = [v5 accountKeyServer];
  v14 = [v5 stateMachine];
  v13 = [v5 kvs];
  v6 = [v5 cloudRecords];
  v12 = [v5 followup];
  v7 = [v5 settings];
  v8 = [v5 analyticsLogger];
  v9 = [v5 tapToRadar];
  v10 = [v5 eligibilityStatusReporter];

  v21 = [(KTContext *)self initWithApplicationKeyStore:v24 dataStore:v19 smDataStore:v18 staticKeyStore:v17 logClient:v16 applicationID:v22 contextStore:v23 accountKeyServer:v15 stateMachine:v14 kvs:v13 cloudRecords:v6 followup:v12 settings:v7 analyticsLogger:v8 tapToRadar:v9 eligibilityStatusReporter:v10];
  return v21;
}

- (KTContext)initWithApplicationKeyStore:(id)a3 dataStore:(id)a4 smDataStore:(id)a5 staticKeyStore:(id)a6 logClient:(id)a7 applicationID:(id)a8 contextStore:(id)a9 accountKeyServer:(id)a10 stateMachine:(id)a11 kvs:(id)a12 cloudRecords:(id)a13 followup:(id)a14 settings:(id)a15 analyticsLogger:(id)a16 tapToRadar:(id)a17 eligibilityStatusReporter:(id)a18
{
  v54 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v57 = a9;
  v28 = a10;
  v55 = a11;
  v29 = a12;
  v64 = a13;
  v63 = a14;
  v30 = a15;
  v62 = a16;
  v61 = a17;
  v60 = a18;
  v66.receiver = self;
  v66.super_class = KTContext;
  v31 = [(KTContext *)&v66 init];
  v32 = v31;
  v58 = v26;
  v59 = v24;
  v56 = v30;
  if (!v31)
  {
    v42 = v54;
    v44 = v55;
    v46 = v57;
    goto LABEL_7;
  }

  v51 = v29;
  [(KTContext *)v31 setApplicationID:v27];
  [(KTContext *)v32 setApplicationKeyStore:v54];
  [(KTContext *)v32 setDataStore:v23];
  [(KTContext *)v32 setSmDataStore:v24];
  v53 = v25;
  [(KTContext *)v32 setStaticKeyStore:v25];
  [(KTContext *)v32 setLogClient:v26];
  [(KTContext *)v32 setSettings:v30];
  v33 = [[KTContextVerifier alloc] initWithApplicationKeyStore:v54 dataStore:v23 applicationID:v27 context:v32];
  [(KTContext *)v32 setVerifier:v33];

  v34 = [TransparencyTranscript alloc];
  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  v37 = [(KTContext *)v32 applicationID];
  v38 = [NSString stringWithFormat:@"%@-%@", v36, v37];
  [(KTContext *)v32 settings];
  v40 = v39 = v27;
  v41 = [(TransparencyTranscript *)v34 initWithContext:v38 settings:v40];
  [(KTContext *)v32 setTranscript:v41];

  v42 = v54;
  if (!v28)
  {
    v28 = [KTAccountKeyServer sharedKeyServiceForApplication:v39];
  }

  [(KTContext *)v32 setAccountKeyServer:v28];
  v43 = v39;
  v44 = v55;
  v29 = v51;
  v45 = [[KTOptInManagerServer alloc] initWithApplication:v39 context:v32 stateMachine:v55 account:objc_opt_class() store:v51];
  [(KTContext *)v32 setOptInServer:v45];

  [(KTContext *)v32 setStateMachine:v55];
  v46 = v57;
  [(KTContext *)v32 setContextStore:v57];
  [(KTContext *)v32 setFollowUp:v63];
  [(KTContext *)v32 setCloudRecords:v64];
  [(KTContext *)v32 setTapToRadar:v61];
  [(KTContext *)v32 setAnalyticsLogger:v62];
  [(KTContext *)v32 setEligibilityStatusReporter:v60];
  v47 = dispatch_queue_create("com.apple.transparencyd.eligibility", &_dispatch_queue_attr_concurrent);
  [(KTContext *)v32 setEligibilityQueue:v47];

  if (v32->_verifier)
  {
    v25 = v53;
    v27 = v43;
LABEL_7:
    v48 = v32;
    goto LABEL_13;
  }

  v25 = v53;
  if (qword_10038BBC0 != -1)
  {
    sub_10024729C();
  }

  v27 = v43;
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
  v2 = [(KTContext *)self dataStore];
  v3 = [v2 drainDataStore];

  return v3;
}

- (void)dealloc
{
  v3 = [(KTContext *)self optInServer];
  [v3 setContext:0];

  v4.receiver = self;
  v4.super_class = KTContext;
  [(KTContext *)&v4 dealloc];
}

- (void)logStartEvent:(id)a3
{
  v4 = a3;
  v7 = [(KTContext *)self transcript];
  v5 = [(KTContext *)self applicationID];
  v6 = [NSString stringWithFormat:@"%@-%@", v5, v4];

  [v7 startEvent:v6];
}

- (void)logFinishSuccessEvent:(id)a3
{
  v4 = a3;
  v7 = [(KTContext *)self transcript];
  v5 = [(KTContext *)self applicationID];
  v6 = [NSString stringWithFormat:@"%@-%@", v5, v4];

  [v7 stopEventWithSuccess:v6];
}

- (void)logFinishFailureEvent:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(KTContext *)self transcript];
  v8 = [(KTContext *)self applicationID];
  v9 = [NSString stringWithFormat:@"%@-%@", v8, v7];

  [v10 stopEventWithFailure:v9 error:v6];
}

- (BOOL)unsupported:(id *)a3
{
  v5 = [(KTContext *)self applicationKeyStore];
  v6 = [v5 unsupported];

  if (v6)
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

    if (a3)
    {
      v8 = kTransparencyErrorInternal;
      v9 = [(KTContext *)self applicationKeyStore];
      v10 = [v9 treeRollInfoURL];
      *a3 = [TransparencyError errorWithDomain:v8 code:-230 description:@"Client version (%d) no longer supported. See %@ for more info.", kTransparencyProtocolVersion, v10];
    }
  }

  return v6;
}

- (BOOL)ready:(id *)a3
{
  v4 = [(KTApplicationPublicKeyStore *)self->_applicationKeyStore ready];
  if (!v4)
  {
    if (a3)
    {
      *a3 = [TransparencyError errorWithDomain:kTransparencyErrorInterface code:-41 description:@"KT public key store is not ready"];
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

  return v4;
}

- (void)clearState:(id)a3
{
  v4 = a3;
  [(KTContext *)self logStartEvent:@"clearState"];
  v4[2](v4, 0);

  [(KTContext *)self logFinishSuccessEvent:@"clearState"];
}

- (id)copyState
{
  v2 = [(KTContext *)self applicationKeyStore];
  v3 = [v2 copyKeyStoreState];

  return v3;
}

- (BOOL)contextShouldGossip
{
  v3 = [(KTContext *)self applicationKeyStore];
  v4 = [v3 shutDown];

  if (!v4)
  {
    return 1;
  }

  v5 = [(KTContext *)self applicationKeyStore];
  v6 = [v5 shutDown];
  v7 = (v6 + kTransparencyThirtyDaysInMs);

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

- (BOOL)shouldShowCFU:(id)a3
{
  v4 = a3;
  v5 = [(KTContext *)self dataStore];
  v6 = [v4 application];
  v7 = [v4 uri];
  v8 = [v4 responseTime];
  v39 = 0;
  v9 = [v5 checkFollowupTicket:v6 uri:v7 checkTime:v8 error:&v39];
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
      v13 = [v4 application];
      v14 = [v4 uri];
      *buf = 138544130;
      v41 = v13;
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
        v29 = [v4 uri];
        *buf = 141558274;
        v41 = 1752392040;
        v42 = 2112;
        v43 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Have active followup ticket for %{mask.hash}@", buf, 0x16u);
      }
    }

    else if (!v9)
    {
      v15 = [(KTContext *)self dataStore];
      v16 = [v4 application];
      v17 = [v4 uri];
      v18 = [v4 responseTime];
      v38 = v10;
      v19 = [v15 createFollowupTicket:v16 uri:v17 startTime:v18 error:&v38];
      v20 = v38;

      if (v19)
      {
        v21 = [(KTContext *)self dataStore];
        v22 = [v4 application];
        v23 = [v4 uri];
        v24 = [v4 responseTime];
        v25 = [v21 checkFollowupTicket:v22 uri:v23 checkTime:v24 error:0];

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
          v35 = [v4 application];
          v36 = [v4 uri];
          *buf = 138544130;
          v41 = v35;
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
    v32 = [v4 uri];
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

- (unint64_t)writeResult:(unint64_t)a3 request:(id)a4 proof:(id)a5 replay:(BOOL)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  if (v12)
  {
    if (a3 == 2)
    {
      [v12 requestTime];
      v15 = v14 + kKTMaximumMergeDelayMs / 1000.0;
      if (v15 >= CFAbsoluteTimeGetCurrent())
      {
        a3 = 2;
      }

      else
      {
        a3 = 0;
      }
    }

    v16 = [(KTContext *)self dataStore];
    v17 = objc_opt_class();
    v18 = [v12 managedObjectContext];
    v19 = [v17 createRequestFailure:v18];

    if (!v19)
    {
      a3 = 2;
LABEL_46:

      goto LABEL_47;
    }

    [v19 setRequest:v12];
    if (a7)
    {
      if (*a7)
      {
        v20 = [*a7 code];
      }

      else
      {
        v20 = -120;
      }

      [v19 setErrorCode:v20];
      if (*a7)
      {
        v21 = [*a7 domain];
        [v19 setErrorDomain:v21];

LABEL_16:
        [v12 setUnsigned:"verificationResult" value:a3];
        if (a6)
        {
          goto LABEL_46;
        }

        v22 = [v12 type];
        if (!a7 || a3 || v22 != 1)
        {
          goto LABEL_46;
        }

        v23 = [(KTContext *)self dataStore];
        v24 = *a7;
        v25 = [(KTContext *)self applicationID];
        v26 = [(KTContext *)self optInServer];
        v27 = [v23 createFailureEvent:v24 application:v25 optInServer:v26];

        v28 = [v12 failureEvent];

        if (v28)
        {
          v29 = [(KTContext *)self dataStore];
          v30 = [v12 failureEvent];
          [v29 deleteObject:v30];
        }

        [v12 setFailureEvent:v27];
        if (qword_10038BC90 != -1)
        {
          sub_1002482A0();
        }

        v31 = qword_10038BC98;
        if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v31;
          v33 = [v27 eventId];
          v34 = [v12 requestId];
          v35 = [v19 errorDomain];
          *buf = 138544130;
          v59 = v33;
          v60 = 2114;
          v61 = v34;
          v62 = 2112;
          v63 = v35;
          v64 = 1024;
          LODWORD(v65) = [v19 errorCode];
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Created failure eventId %{public}@ for self validation requestId %{public}@ because error: %@:%d", buf, 0x26u);
        }

        if (![(KTContext *)self shouldShowCFU:v12])
        {
          goto LABEL_45;
        }

        v36 = [(KTContext *)self optInServer];
        v57 = 0;
        v37 = [v36 getAggregateOptInState:&v57];
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

        v43 = [v19 errorDomain];
        if ([v43 isEqual:@"com.apple.Transparency"])
        {
          v44 = [v19 errorCode];

          if (v44 == 7)
          {
LABEL_33:
            v40 = [(KTContext *)self followUp];
            v41 = [(KTContext *)self applicationID];
            v42 = [v27 eventId];
            [v40 postFollowup:v41 type:4 eventId:v42 errorCode:-289 optInState:v37 infoLink:0 additionalInfo:0 error:0];
LABEL_39:

            v45 = [(KTContext *)self dataStore];
            v46 = [v12 application];
            v47 = [v12 uri];
            v56 = 0;
            v48 = [v45 clearFollowupTicket:v46 uri:v47 error:&v56];
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
                v52 = [v12 application];
                v53 = [v12 uri];
                *buf = 138544130;
                v59 = v52;
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
            a3 = 0;
            goto LABEL_46;
          }
        }

        else
        {
        }

        v40 = [(KTContext *)self followUp];
        v41 = [(KTContext *)self applicationID];
        v42 = [v27 eventId];
        [v40 postFollowup:v41 type:0 eventId:v42 errorCode:objc_msgSend(v19 optInState:"errorCode") infoLink:v37 additionalInfo:0 error:{0, 0}];
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

  return a3;
}

- (unint64_t)deserializeServerLoggableDatas:(id)a3 loggableDatas:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 serverLoggableDatas];
  v23 = 0;
  v10 = [TransparencyManagedDataStore deserializeLoggableDatas:v9 error:&v23];
  v11 = v23;

  if (v10)
  {
    if (a4)
    {
      v12 = v10;
      *a4 = v10;
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
      v16 = [v8 requestId];
      *buf = 138543362;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "deleting requestId %{public}@ with failed deserialization of serverLoggableDatas", buf, 0xCu);
    }

    v17 = kTransparencyErrorDecode;
    v18 = [v8 requestId];
    v19 = [TransparencyError errorWithDomain:v17 code:-131 underlyingError:v11 description:@"deleting requestId %@ with failed deserialization of serverLoggableDatas", v18];

    v20 = [(KTContext *)self dataStore];
    [v20 deleteObject:v8];

    v13 = 0;
    if (a5 && v19)
    {
      v21 = v19;
      v13 = 0;
      *a5 = v19;
    }

    v11 = v19;
  }

  return v13;
}

- (unint64_t)validatePeerOrEnrollKTRequest:(id)a3 queryRequest:(id)a4 queryResponse:(id)a5 transparentData:(id *)a6 loggableDatas:(id *)a7 error:(id *)a8
{
  v12 = a3;
  v50 = a4;
  v13 = a5;
  v47 = [v12 getUnsigned:"type"];
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
  v14 = [v12 getUnsigned:?];
  v15 = [v13 metadata];
  v16 = [v15 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
  [v12 setServerHint:v16];

  v17 = [v13 metadata];
  v18 = [v17 objectForKeyedSubscript:@"APS"];
  [v12 setUsedReversePush:v18 != 0];

  v19 = [v13 metadata];
  v20 = [v19 objectForKeyedSubscript:@"ResponseTime"];
  v21 = [NSDate kt_dateFromString:v20];
  [v12 setResponseTime:v21];

  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = sub_10002E95C;
  v74 = sub_10002E96C;
  v75 = 0;
  obj = 0;
  v22 = [(KTContext *)self deserializeServerLoggableDatas:v12 loggableDatas:&obj error:a8];
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
    v23 = [v12 responseTime];
    v24 = [v12 requestId];
    v62 = 0;
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_10002E974;
    v53[3] = &unk_100318CC0;
    v56 = &v76;
    v57 = &v82;
    v53[4] = self;
    v60 = v47;
    v25 = v12;
    v54 = v25;
    v58 = &v70;
    v61 = v14;
    v26 = v13;
    v55 = v26;
    v59 = &v63;
    v27 = [(KTContext *)self handleQueryResponse:v26 queryRequest:v50 receiptDate:v23 fetchId:v24 validateType:v47 ktCapable:v46 error:&v62 transparentDataHandler:v53];
    v28 = v62;

    if (a6)
    {
      v29 = v64[5];
      if (v29)
      {
        *a6 = v29;
      }
    }

    if (a7)
    {
      v30 = v71[5];
      if (v30)
      {
        *a7 = v30;
      }
    }

    if (v27 == 2)
    {
      goto LABEL_12;
    }

    v31 = [v50 data];
    [v25 setQueryRequest:v31];

    v32 = [v26 data];
    [v25 setQueryResponse:v32];

    if (v27 != 1)
    {
LABEL_12:
      if (a8 && v28)
      {
        v34 = v28;
        *a8 = v28;
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
    if (a8)
    {
      v37 = v77[5];
      if (v37)
      {
        *a8 = v37;
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

    v39 = [(KTContext *)self dataStore];
    v40 = [v39 persistAndRefaultObject:v25 error:a8];

    if ((v40 & 1) == 0)
    {
      if (a8 && *a8)
      {
        v41 = [(KTContext *)self dataStore];
        [v41 reportCoreDataPersistEventForLocation:@"validatePeerOrEnrollKTRequest" underlyingError:*a8];
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

        if (a8)
        {
          v44 = *a8;
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

- (void)writeLoggableDatas:(id)a3 request:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = [(KTContext *)self dataStore];
        v14 = [v7 application];
        v15 = [v13 createRecordFromLoggableData:v12 application:v14];

        [v15 setRequest:v7];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (unint64_t)deserializeSyncedLoggableDatas:(id)a3 loggableDatas:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 clientLoggableDatas];
  v23 = 0;
  v10 = [TransparencyManagedDataStore deserializeLoggableDatas:v9 error:&v23];
  v11 = v23;

  if (v10)
  {
    if (a4)
    {
      v12 = v10;
      *a4 = v10;
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
      v16 = [v8 requestId];
      *buf = 138543362;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "deleting requestId %{public}@ with failed deserialization of clientLoggableDatas", buf, 0xCu);
    }

    v17 = kTransparencyErrorDecode;
    v18 = [v8 requestId];
    v19 = [TransparencyError errorWithDomain:v17 code:-131 underlyingError:v11 description:@"deleting requestId %@ with failed deserialization of clientLoggableDatas", v18];

    v20 = [(KTContext *)self dataStore];
    [v20 deleteObject:v8];

    v13 = 0;
    if (a5 && v19)
    {
      v21 = v19;
      v13 = 0;
      *a5 = v19;
    }

    v11 = v19;
  }

  return v13;
}

- (unint64_t)validateSelfKTRequest:(id)a3 queryRequest:(id)a4 queryResponse:(id)a5 selfVerificationInfo:(id)a6 optInCheck:(BOOL)a7 cloudDevices:(id)a8 pcsAccountKey:(id)a9 kvsOptInHistory:(id)a10 isReplay:(BOOL)a11 transparentData:(id *)a12 loggableDatas:(id *)a13 error:(id *)a14
{
  v19 = a3;
  v57 = a4;
  v20 = a5;
  v53 = a6;
  v54 = a8;
  v55 = a9;
  v56 = a10;
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
  v21 = [v19 getUnsigned:?];
  v22 = [v20 metadata];
  v23 = [v22 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
  [v19 setServerHint:v23];

  v24 = [v20 metadata];
  v25 = [v24 objectForKeyedSubscript:@"APS"];
  [v19 setUsedReversePush:v25 != 0];

  v26 = [v20 metadata];
  v27 = [v26 objectForKeyedSubscript:@"ResponseTime"];
  v28 = [NSDate kt_dateFromString:v27];
  [v19 setResponseTime:v28];

  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = sub_10002E95C;
  v87 = sub_10002E96C;
  v88 = 0;
  obj = 0;
  v29 = [(KTContext *)self deserializeServerLoggableDatas:v19 loggableDatas:&obj error:?];
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
    v30 = [v19 responseTime];
    v31 = [v19 requestId];
    v75 = 0;
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10002FA1C;
    v61[3] = &unk_100318DC8;
    v68 = &v89;
    v69 = &v95;
    v61[4] = self;
    v32 = v19;
    v62 = v32;
    v63 = v54;
    v70 = &v83;
    v64 = v53;
    v73 = a7;
    v65 = v55;
    v74 = a11;
    v66 = v56;
    v72 = v21;
    v33 = v20;
    v67 = v33;
    v71 = &v76;
    v34 = [(KTContext *)self handleQueryResponse:v33 queryRequest:v57 receiptDate:v30 fetchId:v31 validateType:0 ktCapable:v52 error:&v75 transparentDataHandler:v61];
    v35 = v75;

    if (a12)
    {
      v36 = v77[5];
      if (v36)
      {
        *a12 = v36;
      }
    }

    if (a13)
    {
      v37 = v84[5];
      if (v37)
      {
        *a13 = v37;
      }
    }

    if (v34 == 2)
    {
      goto LABEL_12;
    }

    v38 = [v57 data];
    [v32 setQueryRequest:v38];

    v39 = [v33 data];
    [v32 setQueryResponse:v39];

    if (v34 != 1)
    {
LABEL_12:
      if (a14 && v35)
      {
        v41 = v35;
        *a14 = v35;
      }

      v60 = v35;
      v40 = [(KTContext *)self writeResult:v34 request:v32 proof:0 replay:a11 error:&v60];
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
    if (a14)
    {
      v44 = v90[5];
      if (v44)
      {
        *a14 = v44;
        v40 = v96[3];
        v43 = v90;
      }
    }

    v59 = v43[5];
    v45 = [(KTContext *)self writeResult:v40 request:v32 proof:0 replay:a11 error:&v59];
    objc_storeStrong(v43 + 5, v59);
    v96[3] = v45;
    if (v45 == 1)
    {
LABEL_20:
      [v32 setUnsigned:"verificationResult" value:1];
    }

    v46 = [(KTContext *)self dataStore];
    v47 = [v46 persistAndRefaultObject:v32 error:a14];

    if ((v47 & 1) == 0)
    {
      if (a14 && *a14)
      {
        v48 = [(KTContext *)self dataStore];
        [v48 reportCoreDataPersistEventForLocation:@"validateSelfResponse" underlyingError:*a14];
      }

      if (qword_10038BC90 != -1)
      {
        sub_100248408();
      }

      v49 = qword_10038BC98;
      if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
      {
        v50 = a14;
        if (a14)
        {
          v50 = *a14;
        }

        *buf = 138412290;
        v100 = v50;
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

- (void)recordEnrollOptInRecord:(id)a3 accountKey:(id)a4 transparentData:(id)a5 cloudOptIn:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [a5 accountOptInRecord:a4];
  v13 = v12;
  if (v12)
  {
    v14 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v12 timestampMs] / 1000.0);
    v15 = [(KTContext *)self applicationID];
    v22 = 0;
    v16 = [v11 addOptInStateWithURI:v10 smtTimestamp:v14 application:v15 state:objc_msgSend(v13 error:{"optIn"), &v22}];
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
        v20 = [v14 kt_toISO_8601_UTCString];
        *buf = 141558786;
        v24 = 1752392040;
        v25 = 2112;
        v26 = v10;
        v27 = 2114;
        v28 = v20;
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
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to find optInOut record during enroll for %{mask.hash}@", buf, 0x16u);
    }
  }
}

- (unint64_t)validateEnrollKTRequest:(id)a3 insertResponse:(id)a4 transparentData:(id *)a5 loggableDatas:(id *)a6 cloudOptIn:(id)a7 error:(id *)a8
{
  v14 = a3;
  v41 = a4;
  v42 = a7;
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
  v15 = [(KTContext *)self deserializeServerLoggableDatas:v14 loggableDatas:&v56 error:a8];
  v43 = v56;
  v70[3] = v15;
  if (v15 == 1)
  {
    v40 = a8;
    v16 = a5;
    v17 = a6;
    v18 = [v14 getUnsigned:?];
    v19 = [v14 uri];
    v20 = [v14 requestId];
    v55 = 0;
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100030AAC;
    v46[3] = &unk_100318ED0;
    v51 = &v63;
    v52 = &v69;
    v46[4] = self;
    v21 = v14;
    v47 = v21;
    v22 = v43;
    v48 = v22;
    v54 = v18;
    v49 = v41;
    v50 = v42;
    v53 = &v57;
    v23 = [(KTContext *)self handleInsertResponse:v49 uri:v19 fetchId:v20 error:&v55 transparentDataHandler:v46];
    v24 = v55;

    if (v16)
    {
      v25 = v58[5];
      if (v25)
      {
        *v16 = v25;
      }
    }

    if (v17 && v22)
    {
      v26 = v22;
      *v17 = v22;
    }

    if (v23 == 1)
    {
      v27 = v70[3];
    }

    else
    {
      if (v40 && v24)
      {
        v28 = v24;
        *v40 = v24;
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
    if (v40)
    {
      v31 = v64[5];
      if (v31)
      {
        *v40 = v31;
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

    v33 = [(KTContext *)self dataStore];
    v34 = [v33 persistAndRefaultObject:v21 error:v40];

    v35 = v40;
    if ((v34 & 1) == 0)
    {
      if (v40 && *v40)
      {
        v36 = [(KTContext *)self dataStore];
        [v36 reportCoreDataPersistEventForLocation:@"validateEnrollKTRequest" underlyingError:*v40];

        v35 = v40;
      }

      if (qword_10038BC90 != -1)
      {
        sub_100248520();
        v35 = v40;
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

- (id)createQueryRequestForKTRequest:(id)a3 error:(id *)a4
{
  v6 = [a3 uri];
  v7 = [(KTContext *)self applicationID];
  v13 = 0;
  v8 = [TransparencyRPCRequestBuilder buildQueryRequest:v6 application:v7 error:&v13];
  v9 = v13;

  if (v8)
  {
    v10 = v8;
  }

  else if (a4 && v9)
  {
    v11 = v9;
    *a4 = v9;
  }

  return v8;
}

- (id)parseQueryRequestFromKTRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 queryRequest];

  if (v7)
  {
    v8 = [v6 queryRequest];
    v7 = [(TransparencyGPBMessage *)QueryRequest parseFromData:v8 error:a4];
  }

  v9 = [v6 queryRequest];

  if (!v9 || v7)
  {
    if (v7)
    {
      v14 = v7;
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
      v11 = [v6 requestId];
      v12 = v11;
      if (a4)
      {
        v13 = *a4;
      }

      else
      {
        v13 = 0;
      }

      *buf = 138543618;
      v26 = v11;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "parse saved queryRequest for requestId %{public}@ failed: %@", buf, 0x16u);
    }
  }

  [v6 setQueryRequest:0];
  [v6 setQueryResponse:0];
  [v6 setServerHint:0];
  [v6 setUsedReversePush:0];
  [v6 setResponseTime:0];
  v15 = [(KTContext *)self dataStore];
  v24 = 0;
  v16 = [v15 persistWithError:&v24];
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

    v19 = [(KTContext *)self dataStore];
    [v19 reportCoreDataPersistEventForLocation:@"verifyDeviceWitnesses" underlyingError:v17];
  }

  v20 = [v6 queryRequest];

  if (v20)
  {
    if (a4)
    {
      *a4 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-133 underlyingError:*a4 description:@"saved query request failed to decode"];
    }

    if (qword_10038BC90 != -1)
    {
      sub_100248610();
    }

    v21 = qword_10038BC98;
    if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
    {
      if (a4)
      {
        v22 = *a4;
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

- (id)parseQueryResponseFromKTRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 queryResponse];

  if (v6)
  {
    v7 = [v5 queryResponse];
    v6 = [(TransparencyGPBMessage *)QueryResponse parseFromData:v7 error:a4];
  }

  v8 = [v5 queryResponse];

  if (!v8 || v6)
  {
    if (v6)
    {
      v13 = [v5 serverHint];

      if (v13)
      {
        v14 = [v5 serverHint];
        [v6 setMetadataValue:v14 key:kTransparencyResponseMetadataKeyServerHint];
      }

      if ([v5 usedReversePush])
      {
        [v6 setMetadataValue:@"YES" key:@"APS"];
      }

      v15 = [v5 responseTime];

      if (v15)
      {
        v16 = [v5 responseTime];
        v17 = [v16 kt_dateToString];
        [v6 setMetadataValue:v17 key:@"ResponseTime"];
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
      v10 = [v5 requestId];
      v11 = v10;
      if (a4)
      {
        v12 = *a4;
      }

      else
      {
        v12 = 0;
      }

      v19 = 138543618;
      v20 = v10;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "parse saved queryResponse as query response for requestId %{public}@ failed: %@", &v19, 0x16u);
    }
  }

  return v6;
}

- (BOOL)peerStaticKeyFallback:(id)a3 accountKey:(id)a4 transparentData:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v24 = 0;
  v10 = [(KTContext *)self validateStaticKeyForPeer:v8 accountKey:v9 error:&v24];
  v11 = v24;
  if (qword_10038BC90 != -1)
  {
    sub_100248700();
  }

  v12 = qword_10038BC98;
  if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v26 = v8;
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
    [(KTAccount *)v19 setAccountKey:v9];
    v20 = [(KTAccount *)v19 optInOutHistory];
    [v20 addObject:v13];

    v21 = [(KTTransparentData *)v18 accounts];
    [v21 addObject:v19];

    if (a5 && v18)
    {
      v22 = v18;
      *a5 = v18;
    }
  }

  return v10 == 0;
}

- (void)fetchAndValidatePeerKTRequest:(id)a3 fetchNow:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v37 = 0;
  v10 = [(KTContext *)self unsupported:&v37];
  v11 = v37;
  v12 = v11;
  if (!v10)
  {
    if (v6)
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
      v15 = [(KTContext *)self parseQueryRequestFromKTRequest:v8 error:&v35];
      v21 = v35;

      v34 = v21;
      v16 = [(KTContext *)self parseQueryResponseFromKTRequest:v8 error:&v34];
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
          v24 = [v8 requestId];
          *buf = 138543362;
          v39 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Using existing queryResponse in validatePeer for requestId %{public}@", buf, 0xCu);
        }

        v30 = 0;
        v31 = 0;
        v29 = v12;
        v25 = [(KTContext *)self validatePeerOrEnrollKTRequest:v8 queryRequest:v15 queryResponse:v16 transparentData:&v31 loggableDatas:&v30 error:&v29];
        v26 = v31;
        v27 = v30;
        v28 = v29;

        v9[2](v9, v25, v26, v27, v28);
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
      v19 = [v8 requestId];
      v20 = [v8 uri];
      *buf = 138543618;
      v39 = v19;
      v40 = 2112;
      v41 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "fetching query in validatePeer for requestId %{public}@ uri: %@", buf, 0x16u);
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000327B4;
    v32[3] = &unk_100319128;
    v32[4] = self;
    v33 = v9;
    [(KTContext *)self fetchQueryForKTRequest:v8 completionHandler:v32];

LABEL_21:
    goto LABEL_22;
  }

  v36 = v11;
  [(KTContext *)self writeResult:0 request:v8 proof:0 error:&v36];
  v13 = v36;

  v9[2](v9, 0, 0, 0, v13);
  v12 = v13;
LABEL_22:
}

- (unint64_t)fetchAndValidateEnrollKTRequest:(id)a3 transparentData:(id *)a4 loggableDatas:(id *)a5 cloudOptIn:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a6;
  if ([(KTContext *)self unsupported:a7])
  {
    [(KTContext *)self writeResult:0 request:v12 proof:0 error:a7];
    v14 = 0;
    goto LABEL_26;
  }

  v15 = [v12 queryResponse];
  if (v15)
  {
    v16 = v15;
    v17 = [v12 queryRequest];

    if (!v17)
    {
      v26 = [v12 queryResponse];
      v18 = [(TransparencyGPBMessage *)InsertResponse parseFromData:v26 error:a7];

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
          v29 = [v12 requestId];
          *buf = 138543362;
          v37 = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "using existing insertResponse in validateEnrollment for requestId %{public}@", buf, 0xCu);
        }

        v14 = [(KTContext *)self validateEnrollKTRequest:v12 insertResponse:v18 transparentData:a4 loggableDatas:a5 cloudOptIn:v13 error:a7];
        goto LABEL_25;
      }

      if (qword_10038BC90 != -1)
      {
        sub_100248818();
      }

      v31 = qword_10038BC98;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = [v12 requestId];
        v33 = v32;
        if (a7)
        {
          v34 = *a7;
        }

        else
        {
          v34 = 0;
        }

        *buf = 138543618;
        v37 = v32;
        v38 = 2112;
        v39 = v34;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "parse saved queryResponse as insert response for requestId %{public}@ failed: %@", buf, 0x16u);
      }
    }
  }

  v18 = [(KTContext *)self parseQueryRequestFromKTRequest:v12 error:a7];
  v19 = [(KTContext *)self parseQueryResponseFromKTRequest:v12 error:a7];
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
      v22 = [v12 requestId];
      *buf = 138543362;
      v37 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "using existing queryResponse in validateEnrollment for requestId %{public}@", buf, 0xCu);
    }

    v14 = [(KTContext *)self validatePeerOrEnrollKTRequest:v12 queryRequest:v18 queryResponse:v19 transparentData:a4 loggableDatas:a5 error:a7];

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
    v25 = [v12 requestId];
    *buf = 138543362;
    v37 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "fetching query in validateEnrollment for requestId %{public}@", buf, 0xCu);
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10003351C;
  v35[3] = &unk_100319218;
  v35[4] = self;
  [(KTContext *)self fetchQueryForKTRequest:v12 completionHandler:v35];

  if (a7)
  {
    *a7 = [TransparencyError errorWithDomain:kTransparencyErrorUnknown code:-134 description:@"request to server pending"];
  }

  v14 = 2;
LABEL_26:

  return v14;
}

- (void)validatePeerRequestId:(id)a3 revalidate:(BOOL)a4 fetchNow:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [(KTContext *)self applicationID];
  v13 = [KTContext validateEventName:0 application:v12];

  v14 = [(KTContext *)self dataStore];
  v26 = 0;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100033910;
  v21 = &unk_1003192A8;
  v24 = a4;
  v22 = self;
  v25 = a5;
  v15 = v10;
  v23 = v15;
  LOBYTE(v10) = [v14 performAndWaitForRequestId:v11 error:&v26 block:&v18];

  v16 = v26;
  if ((v10 & 1) == 0)
  {
    v17 = [TransparencyAnalytics logger:v18];
    [v17 logResultForEvent:v13 hardFailure:1 result:v16];

    (*(v15 + 2))(v15, 0, v16);
  }
}

- (unint64_t)validateEnrollmentRequestId:(id)a3 transparentData:(id *)a4 loggableDatas:(id *)a5 cloudOptIn:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a6;
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
  v13 = [(KTContext *)self dataStore];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100033E24;
  v21[3] = &unk_1003192D0;
  v23 = &v45;
  v24 = &v39;
  v21[4] = self;
  v25 = &v33;
  v14 = v12;
  v22 = v14;
  v26 = &v27;
  LOBYTE(v12) = [v13 performAndWaitForRequestId:v11 error:a7 block:v21];

  if (v12)
  {
    if (a4)
    {
      v15 = v40[5];
      if (v15)
      {
        *a4 = v15;
      }
    }

    if (a5)
    {
      v16 = v34[5];
      if (v16)
      {
        *a5 = v16;
      }
    }

    if (a7)
    {
      v17 = v28[5];
      if (v17)
      {
        *a7 = v17;
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

- (void)replaySelfValidate:(id)a3 pcsAccountKey:(id)a4 queryRequest:(id)a5 queryResponse:(id)a6 responseTime:(id)a7 completionHandler:(id)a8
{
  v13 = a3;
  v38 = a4;
  v44 = a5;
  v43 = a6;
  v42 = a7;
  v35 = a8;
  v45 = v13;
  v14 = [v13 syncedLoggableDatas];
  v39 = [TransparencyManagedDataStore serializeLoggableDatas:v14];

  v40 = +[NSMutableDictionary dictionary];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = [v13 uriToServerLoggableDatas];
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
        v17 = [v45 uriToServerLoggableDatas];
        v18 = [v17 objectForKeyedSubscript:v16];

        v19 = [v18 serverLoggableDatas];
        v20 = [TransparencyManagedDataStore serializeLoggableDatas:v19];

        v21 = [(KTContext *)self dataStore];
        v22 = [(KTContext *)self applicationID];
        v23 = [v18 accountKey];
        v24 = [v18 idsResponseTime];
        v59 = 0;
        v25 = [v21 createRequestWithUri:v16 application:v22 accountKey:v23 serverData:v20 syncedData:v39 idsResponseTime:v24 queryRequest:v44 queryResponse:v43 responseDate:v42 type:1 clientId:0 error:&v59];
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
        v28 = [(KTContext *)self dataStore];
        v58 = 0;
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_100034570;
        v47[3] = &unk_100319358;
        v48 = v44;
        v29 = v25;
        v57 = buf;
        v49 = v29;
        v50 = self;
        v51 = v43;
        v52 = v42;
        v53 = v45;
        v54 = v38;
        v55 = v40;
        v56 = v16;
        v30 = [v28 performAndWaitForRequestId:v29 error:&v58 block:v47];
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
  v34 = [v45 diagnosticsJsonDictionary];
  [v33 setKtSelfVerificationInfoDiagnosticsJson:v34];

  [v33 setUriToDiagnostics:v40];
  v35[2](v35, 1, v33, 0);
}

+ (id)validateEventName:(unint64_t)a3 application:(id)a4
{
  v5 = a4;
  if (a3 > 5)
  {
    v6 = @"ValidateUnknownCompleteEvent";
  }

  else
  {
    v6 = *(&off_10031C028 + a3);
  }

  v7 = [TransparencyAnalytics formatEventName:v6 application:v5];

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

+ (id)successMetricsKey:(unint64_t)a3 forApplicationID:(id)a4
{
  v5 = a4;
  if (a3 <= 6 && ((0x77u >> a3) & 1) != 0)
  {
    v6 = [KTContext successMetricsKey:v5 validationName:*(&off_10031C058 + a3)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)metricsForResult:(unint64_t)a3 type:(unint64_t)a4 logger:(id)a5 applicationID:(id)a6
{
  v11 = a5;
  v9 = [KTContext successMetricsKey:a4 forApplicationID:a6];
  if (v9)
  {
    if (a3)
    {
      v10 = v11;
      if (a3 != 1)
      {
LABEL_7:
        [KTContext updateEligibilityThreshold:v10];
        goto LABEL_8;
      }

      [v11 setSuccessNowForPropertyKey:v9];
    }

    else
    {
      [v11 setFailureNowForPropertyKey:v9];
    }

    v10 = v11;
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

- (void)selfValidationURIStatus:(id)a3 transparentData:(id)a4 selfDeviceID:(id)a5 logger:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [KTLoggableData isAccountKTCapable:v10];
  v15 = objc_opt_class();
  v16 = [(KTContext *)self applicationID];
  v17 = [v15 selfStatusFlagMetricsKey:v16 name:@"ktCapable"];

  v18 = [NSNumber numberWithBool:v14];
  v50 = v17;
  [v13 setNumberProperty:v18 forKey:v17];

  v19 = objc_opt_class();
  v20 = [(KTContext *)self applicationID];
  v21 = [v19 selfStatusFlagMetricsKey:v20 name:@"optIn"];

  v52 = v11;
  v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 verifiedAccountOptInState]);
  v51 = v13;
  v49 = v21;
  [v13 setNumberProperty:v22 forKey:v21];

  v23 = objc_opt_class();
  v47 = self;
  v24 = [(KTContext *)self applicationID];
  v48 = [v23 selfStatusFlagMetricsKey:v24 name:@"humbled"];

  v53 = v12 != 0;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v10;
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
        v32 = [v31 version];
        if (v32 && (v33 = v32, [v31 version], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isEqual:", &off_10033CF18), v34, v33, (v35 & 1) == 0))
        {
          if (!v28 || ([v31 version], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v28, "compare:", v36), v36, v37 == 1))
          {
            v38 = [v31 version];

            v28 = v38;
          }
        }

        else
        {
          v27 = 1;
        }

        v39 = [v31 deviceID];
        v40 = [v12 isEqual:v39];

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
    v45 = [(KTContext *)v47 applicationID];
    v46 = [v44 selfStatusFlagMetricsKey:v45 name:@"OV"];

    [v51 setNumberProperty:v28 forKey:v46];
  }
}

- (void)reportValidationTime:(unint64_t)a3 initialResult:(unint64_t)a4 result:(unint64_t)a5 idsResponseTime:(id)a6
{
  if (a4 == 2 && a5 != 2)
  {
    v9 = a6;
    Current = CFAbsoluteTimeGetCurrent();
    [v9 timeIntervalSinceReferenceDate];
    v12 = v11;

    v13 = Current - v12;
    v14 = [(KTContext *)self applicationID];
    if (a3 > 5)
    {
      v15 = @"UnknownTypeTime";
    }

    else
    {
      v15 = *(&off_10031C090 + a3);
    }

    v18 = [TransparencyAnalytics formatEventName:v15 application:v14];

    v16 = +[TransparencyAnalytics logger];
    v17 = [NSNumber numberWithDouble:v13];
    [v16 logMetric:v17 withName:v18];
  }
}

+ (BOOL)hasAccountMismatch:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v8 + 1) + 8 * i) successfulSync])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (id)serverLoggableDatasDiagnostics:(id)a3 selfPushToken:(id)a4 humbled:(BOOL *)a5
{
  v25 = a5;
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v6;
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

        v16 = [v14 build];
        [v15 setObject:v16 forKeyedSubscript:@"b"];

        v17 = [v14 product];
        [v15 setObject:v17 forKeyedSubscript:@"p"];

        v18 = [v14 version];
        [v15 setObject:v18 forKeyedSubscript:@"v"];

        v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v14 result]);
        [v15 setObject:v19 forKeyedSubscript:@"r"];

        if (v7 && ([v14 deviceID], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToData:", v7), v20, v21))
        {
          *v25 = [v14 result] == 0;
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

- (id)stringForValidateType:(unint64_t)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_10031C0C0 + a3);
  }
}

- (id)analyticsForType:(unint64_t)a3 uri:(id)a4 accountKey:(id)a5 serverLoggableDatas:(id)a6 syncedLoggableDatas:(id)a7 transparentData:(id)a8 selfVerificationInfo:(id)a9 responseTime:(id)a10 result:(unint64_t)a11 failure:(id)a12 responseMetadata:(id)a13
{
  v73 = a4;
  v18 = a5;
  v19 = a6;
  v80 = a7;
  v20 = a8;
  v77 = a9;
  v75 = a10;
  v81 = a12;
  v76 = a13;
  dsema = dispatch_semaphore_create(0);
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 0;
  v21 = [(KTContext *)self eligibilityStatusReporter];

  if (v21)
  {
    v22 = [(KTContext *)self eligibilityStatusReporter];
    v23 = [(KTContext *)self stringForValidateType:a3];
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_100063FCC;
    v85[3] = &unk_10031BF70;
    v87 = &v88;
    v86 = dsema;
    [v22 dateFirstSeenWithError:v81 element:v23 completionHandler:v85];
  }

  v24 = +[NSMutableDictionary dictionary];
  v25 = [(KTContext *)self applicationKeyStore];
  v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v25 inResetWindow]);
  [v24 setObject:v26 forKeyedSubscript:@"inResetWindow"];

  v27 = [(KTContext *)self optInServer];
  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = sub_100064064;
  v83[3] = &unk_10031BF98;
  v28 = v24;
  v84 = v28;
  [v27 getOptInState:1 completionBlock:v83];

  if (v20)
  {
    [v20 accountOptInState:v18];
    v29 = KTOptInGetString();
    [v28 setObject:v29 forKeyedSubscript:@"peerOptIn"];

    [v20 accountEverOptedIn:v18];
    v30 = KTOptInGetString();
    [v28 setObject:v30 forKeyedSubscript:@"peerEverOptedIn"];

    [v20 accountRecentlyOptedIn:v18];
    v31 = KTOptInGetString();
    [v28 setObject:v31 forKeyedSubscript:@"peerRecentlyOptedIn"];

    v32 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 staticKeyEnforced]);
    [v28 setObject:v32 forKeyedSubscript:@"staticKeyEnforced"];

    v33 = [v20 expectedSelfResolutionDate:v18 requestDate:v75];
    v34 = v33;
    if (v33)
    {
      v35 = [v33 kt_dateToString];
      [v28 setObject:v35 forKeyedSubscript:@"expectedResolutionDate"];

      v36 = [v34 kt_toISO_8601_UTCString];
      [v28 setObject:v36 forKeyedSubscript:@"expectedResolutionDateReadable"];

      [v34 timeIntervalSinceNow];
      v38 = [NSNumber numberWithLong:llround(v37 / 86400.0)];
      [v28 setObject:v38 forKeyedSubscript:@"daysUntilExpectedResolutionDate"];
    }

    if (v18)
    {
      v39 = [v20 getLogDataForAccountKey:v18 uri:v74];
      v40 = [v39 objectForKeyedSubscript:v74];
      v41 = [v40 lastObject];
      v42 = v41;
      if (v41)
      {
        v43 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v41 optIn]);
        [v28 setObject:v43 forKeyedSubscript:@"serverOptIn"];
      }
    }
  }

  v44 = [v20 earliestAddedDate:v18];
  v45 = v44;
  if (v44)
  {
    [v44 timeIntervalSince1970];
    v47 = v46;
    +[NSDate kt_currentTimeMs];
    v49 = [NSNumber numberWithBool:v48 < (kKTMaximumResetFailureWindowMs + (v47 * 1000.0))];
    [v28 setObject:v49 forKeyedSubscript:@"inHeartbeatWindow"];
  }

  if (v80 && !a11)
  {
    v50 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [objc_opt_class() hasAccountMismatch:v80]);
    [v28 setObject:v50 forKeyedSubscript:@"mismatchedAccounts"];
  }

  v51 = [KTLoggableData isAccountKTCapable:v19];
  if (v51)
  {
    v52 = 0;
    if (!v19)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v52 = (a3 & 0xFFFFFFFFFFFFFFFBLL) == 0 || a3 == 5;
    if (!v19)
    {
      goto LABEL_29;
    }
  }

  if (!a11)
  {
    v54 = [NSNumber numberWithBool:v51];
    [v28 setObject:v54 forKeyedSubscript:@"ktCapable"];

    if (v52)
    {
      [v28 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ktSoftFailure"];
    }
  }

LABEL_29:
  v55 = [TransparencyAnalytics analyticsErrorData:v81];
  [v28 setObject:v55 forKeyedSubscript:@"failure"];

  v82 = 0;
  v56 = [v77 selfDeviceID];
  v57 = [(KTContext *)self serverLoggableDatasDiagnostics:v19 selfPushToken:v56 humbled:&v82];
  [v28 setObject:v57 forKeyedSubscript:@"sldd"];

  v58 = [NSNumber numberWithBool:v82];
  [v28 setObject:v58 forKeyedSubscript:@"humbled"];

  if (a3 == 1 && [v81 code] == -286)
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
    if (!a11)
    {
      [v28 setObject:v74 forKeyedSubscript:@"failedUri"];
      v63 = [v18 base64EncodedStringWithOptions:0];
      [v28 setObject:v63 forKeyedSubscript:@"failedAccountKey"];
    }

    v64 = kTransparencyResponseMetadataKeyServerHint;
    v65 = [v76 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
    if (v65)
    {
      [v28 setObject:v65 forKeyedSubscript:v64];
    }

    v66 = [v76 objectForKeyedSubscript:@"APS"];

    if (v66)
    {
      v67 = [NSNumber numberWithBool:1];
      [v28 setObject:v67 forKeyedSubscript:@"APS"];
    }
  }

  v68 = [(KTContext *)self eligibilityStatusReporter];

  if (v68)
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

    if (![KTContext checkNetworkError:v81])
    {
      [(KTContext *)self storeEligibilityMetric:a3 result:a11 error:v81];
    }
  }

LABEL_47:
  v71 = v28;

  _Block_object_dispose(&v88, 8);

  return v71;
}

- (void)storeEligibilityMetric:(unint64_t)a3 result:(unint64_t)a4 error:(id)a5
{
  v8 = a5;
  if (_os_feature_enabled_impl())
  {
    v9 = [(KTContext *)self eligibilityQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000641AC;
    v10[3] = &unk_10031C008;
    v10[4] = self;
    v12 = a3;
    v13 = a4;
    v11 = v8;
    dispatch_async(v9, v10);
  }
}

+ (void)checkAndLogHardErrorIfNecessary:(unint64_t)a3 type:(unint64_t)a4 logger:(id)a5 error:(id)a6 applicationID:(id)a7
{
  v16 = a5;
  v11 = a6;
  v12 = a7;
  if (a4 == 1)
  {
    if (a3)
    {
      v13 = a3;
    }

    else
    {
      v14 = [KTContext checkNetworkError:v11];
      v13 = 0;
      if (v14)
      {
        v15 = 6;
LABEL_7:
        [KTContext metricsForResult:v13 type:v15 logger:v16 applicationID:v12];
        goto LABEL_8;
      }
    }

    v15 = 1;
    goto LABEL_7;
  }

LABEL_8:
}

+ (BOOL)checkNetworkError:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_18;
  }

  v5 = [v4 domain];
  if ([v5 isEqual:kTransparencyErrorNetwork])
  {
    goto LABEL_15;
  }

  v6 = [v4 domain];
  if ([v6 isEqual:NSURLErrorDomain])
  {
LABEL_14:

LABEL_15:
LABEL_16:
    v11 = 1;
    goto LABEL_18;
  }

  v7 = [v4 domain];
  if ([v7 isEqual:kCFErrorDomainCFNetwork])
  {
LABEL_13:

    goto LABEL_14;
  }

  v8 = [v4 domain];
  if ([v8 isEqual:kTransparencyErrorInternal] && objc_msgSend(v4, "code") == -343)
  {
LABEL_12:

    goto LABEL_13;
  }

  v9 = [v4 domain];
  if ([v9 isEqual:kTransparencyErrorInterface] && objc_msgSend(v4, "code") == -41)
  {
LABEL_11:

    goto LABEL_12;
  }

  v10 = [v4 domain];
  if ([v10 isEqual:kTransparencyErrorIDSRegistrationTimeout])
  {

    goto LABEL_11;
  }

  v13 = [v4 domain];
  v14 = [v13 isEqual:kTransparencyErrorBAACertFetch];

  if (v14)
  {
    goto LABEL_16;
  }

  v15 = [v4 userInfo];
  v16 = [v15 objectForKeyedSubscript:NSUnderlyingErrorKey];

  if ([a1 checkNetworkError:v16])
  {
    v11 = 1;
  }

  else
  {
    v17 = [v4 userInfo];
    v18 = [v17 objectForKeyedSubscript:NSMultipleUnderlyingErrorsKey];

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

            if ([a1 checkNetworkError:{v16, v25}])
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

+ (BOOL)hasReachedEligibilityThreshold:(id)a3
{
  v3 = kTransparencyEligibilityKey;
  v4 = a3;
  v5 = [v4 numberPropertyForKey:v3];
  v6 = [v5 BOOLValue];

  v7 = [v4 numberPropertyForKey:kTransparencyEligibilityVersionKey];

  v8 = [v7 longValue];
  v9 = ktEligibilityAnalyticsVersion;

  if (v8 >= v9)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)isCurrentlyEligible:(id)a3
{
  v3 = kKTApplicationIdentifierIDS;
  v4 = a3;
  v5 = [KTContext successMetricsKey:1 forApplicationID:v3];
  v6 = [KTContext successMetricsKey:4 forApplicationID:v3];
  v7 = [v4 fuzzyTimeSinceLastSuccess:v5];
  v8 = [v7 longValue];
  v9 = ktSelfValidateSuccessDays;

  v10 = [v4 fuzzyTimeSinceLastSuccess:v6];
  v11 = [v10 longValue];
  v12 = ktPeerValidateSuccessDays;

  LODWORD(v10) = [v4 manateeStatusForReporting];
  v13 = (v10 < 0x18) & (0x804001u >> v10);
  if (v11 < v12)
  {
    LOBYTE(v13) = 0;
  }

  if (v8 >= v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)updateEligibilityThreshold:(id)a3
{
  v4 = a3;
  if (![KTContext hasReachedEligibilityThreshold:?]&& [KTContext isCurrentlyEligible:v4])
  {
    [v4 setNumberProperty:&__kCFBooleanTrue forKey:kTransparencyEligibilityKey];
    v3 = [NSNumber numberWithLongLong:ktEligibilityAnalyticsVersion];
    [v4 setNumberProperty:v3 forKey:kTransparencyEligibilityVersionKey];
  }
}

- (void)fetchRPCSingleQuery:(id)a3 userInitiated:(BOOL)a4 cachedYoungerThan:(id)a5 backgroundOpId:(id)a6 completionHandler:(id)a7
{
  v27 = a4;
  v11 = a3;
  v12 = a5;
  v28 = a6;
  v13 = a7;
  if (v12)
  {
    v14 = [(KTContext *)self dataStore];
    v15 = [v11 uri];
    v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v11 application]);
    v17 = [TransparencyApplication applicationIdentifierForValue:v16];
    v47 = 0;
    v18 = [v14 getLatestSuccessfulSingleQueryForUri:v15 application:v17 requestYoungerThan:v12 error:&v47];
    v19 = v47;

    if (v18)
    {
      v13[2](v13, v18, v19);

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
  v20 = [(KTContext *)self dataStore];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100070AEC;
  v30[3] = &unk_10031CDB8;
  v33 = &v35;
  v30[4] = self;
  v21 = v11;
  v31 = v21;
  v32 = v28;
  v34 = &v41;
  [v20 performBlockAndWait:v30];

  if (v36[5] && !v42[5])
  {
    v25 = [(KTContext *)self logClient];
    v26 = v36[5];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100070BB8;
    v29[3] = &unk_10031CE20;
    v29[5] = &v41;
    v29[6] = &v35;
    v29[4] = self;
    [v25 fetchQuery:v21 uuid:v26 userInitiated:v27 completionHandler:v29];

    v13[2](v13, v36[5], v42[5]);
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

    v24 = [(KTContext *)self dataStore];
    [v24 reportCoreDataPersistEventForLocation:@"fetchRPCSingleQuery" underlyingError:v42[5]];

    v13[2](v13, 0, v42[5]);
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

LABEL_14:
}

- (void)queryForUris:(id)a3 userInitiated:(BOOL)a4 cachedYoungerThan:(id)a5 backgroundOpId:(id)a6 completionHandler:(id)a7
{
  v26 = a4;
  v11 = a3;
  v28 = a5;
  v27 = a6;
  v25 = a7;
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
  obj = v11;
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
        v16 = [(KTContext *)self dataStore];
        v17 = [(KTContext *)self applicationID];
        v18 = (v38 + 5);
        v32 = v38[5];
        v19 = [v16 hasPendingSingleQueryForUri:v15 application:v17 error:&v32];
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

          v22 = [(KTContext *)self applicationID];
          v23 = (v38 + 5);
          v31 = v38[5];
          v24 = [TransparencyRPCRequestBuilder buildQueryRequest:v15 application:v22 error:&v31];
          objc_storeStrong(v23, v31);

          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_100071368;
          v30[3] = &unk_10031CEC8;
          v30[4] = v15;
          v30[5] = &v37;
          [(KTContext *)self fetchRPCSingleQuery:v24 userInitiated:v26 cachedYoungerThan:v28 backgroundOpId:v27 completionHandler:v30];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v33 objects:v47 count:16];
    }

    while (v12);
  }

  v25[2](v25, v38[5]);
  _Block_object_dispose(&v37, 8);
}

- (void)optInStateForUri:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(KTContext *)self applicationID];
  v9 = [TransparencyApplication addApplicationPrefixForIdentifier:v8 uri:v6];

  v10 = [(KTContext *)self applicationID];
  v23 = 0;
  v11 = [TransparencyRPCRequestBuilder buildQueryRequest:v9 application:v10 error:&v23];
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
    v15 = [(KTContext *)self logClient];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10007193C;
    v18[3] = &unk_10031CFB8;
    objc_copyWeak(&v22, buf);
    v21 = v7;
    v19 = v11;
    v16 = v14;
    v20 = v16;
    [v15 fetchQuery:v19 uuid:v16 userInitiated:0 completionHandler:v18];

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

    (*(v7 + 2))(v7, 2, v12);
  }
}

+ (id)chunkArray:(id)a3 chunkSize:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count] / a4 + 1);
    if ([v6 count])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = [v6 count];
        if (v10 + v8 >= a4)
        {
          v11 = a4;
        }

        else
        {
          v11 = v10 + v8;
        }

        v12 = [v6 subarrayWithRange:{v9, v11}];
        [v7 addObject:v12];

        v9 += a4;
        v8 -= a4;
      }

      while (v9 < [v6 count]);
    }
  }

  else
  {
    v13 = [NSArray arrayWithArray:v5];
    v7 = [NSArray arrayWithObject:v13];
  }

  return v7;
}

- (BOOL)verifyInclusionProofDownload:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v7 = [(KTContext *)self dataStore];
  v19 = &v21;
  v20 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100085E3C;
  v16[3] = &unk_10031E100;
  v18 = &v27;
  v16[4] = self;
  v8 = v6;
  v17 = v8;
  v9 = [v7 performAndWaitForDownloadId:v8 error:&v20 block:v16];
  v10 = v20;

  if (v9)
  {
    if (a4)
    {
      v11 = v22[5];
      if (v11)
      {
        *a4 = v11;
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
    if (a4 && v10)
    {
      v14 = v10;
      v12 = 0;
      *a4 = v10;
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v12 & 1;
}

- (BOOL)verifyInclusionProofDownloadRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [RevisionLogInclusionProofResponse alloc];
  v8 = [v6 response];
  v9 = [(TransparencyGPBMessage *)v7 initWithData:v8 error:a4];

  v10 = [v6 serverHint];

  [(RevisionLogInclusionProofResponse *)v9 setMetadataValue:v10 key:kTransparencyResponseMetadataKeyServerHint];
  if (!v9)
  {
    if (qword_10038BDE0 != -1)
    {
      sub_10024B708();
    }

    v14 = qword_10038BDE8;
    if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_ERROR))
    {
      if (a4)
      {
        v15 = *a4;
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
    if (a4 && v16)
    {
      v16 = v16;
      *a4 = v16;
    }

    goto LABEL_24;
  }

  v11 = [(KTContext *)self verifier];
  v12 = [v11 verifyRevisionLogInclusionProofResponse:v9 receivedRevisions:0 error:a4];

  if ((v12 & 1) == 0)
  {
    if (qword_10038BDE0 != -1)
    {
      sub_10024B6F4();
    }

    v17 = qword_10038BDE8;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [(KTContext *)self applicationID];
      v19 = v18;
      if (a4)
      {
        v20 = *a4;
      }

      else
      {
        v20 = 0;
      }

      *buf = 138543618;
      v23 = v18;
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

- (unint64_t)verifyConsistencyProofDownload:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v7 = [(KTContext *)self dataStore];
  v19 = &v21;
  v20 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000867E0;
  v16[3] = &unk_10031E100;
  v18 = &v27;
  v16[4] = self;
  v8 = v6;
  v17 = v8;
  v9 = [v7 performAndWaitForDownloadId:v8 error:&v20 block:v16];
  v10 = v20;

  if (v9)
  {
    if (a4)
    {
      v11 = v22[5];
      if (v11)
      {
        *a4 = v11;
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
    if (a4 && v10)
    {
      v14 = v10;
      v12 = 0;
      *a4 = v10;
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v12;
}

- (unint64_t)verifyConsistencyProofDownloadRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [ConsistencyProofResponse alloc];
  v8 = [v6 response];
  v9 = [(TransparencyGPBMessage *)v7 initWithData:v8 error:a4];

  v10 = [v6 serverHint];
  [(ConsistencyProofResponse *)v9 setMetadataValue:v10 key:kTransparencyResponseMetadataKeyServerHint];

  if (v9)
  {
    if ([(ConsistencyProofResponse *)v9 status]== 1)
    {
      v11 = [(KTContext *)self verifier];
      v12 = [v11 verifyConsistencyProofResponse:v9 startRevision:objc_msgSend(v6 receivedRevisions:"startSLHRevision") error:{0, a4}];

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
        v14 = [(KTContext *)self applicationID];
        v15 = v14;
        if (a4)
        {
          v16 = *a4;
        }

        else
        {
          v16 = 0;
        }

        *buf = 138543618;
        v30 = v14;
        v31 = 2112;
        v32 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Consistency proof response verification failed for %{public}@: %@", buf, 0x16u);
      }
    }

    else
    {
      v19 = [TransparencyError errorWithDomain:kTransparencyErrorServer code:[(ConsistencyProofResponse *)v9 status] description:@"server failed to produce consistency proof: %d", [(ConsistencyProofResponse *)v9 status]];
      v13 = v19;
      if (a4 && v19)
      {
        v20 = v19;
        *a4 = v13;
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
      if (a4)
      {
        v18 = *a4;
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
    v25 = [v6 downloadId];
    *buf = 138543362;
    v30 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "deleting download record %{public}@", buf, 0xCu);
  }

  v26 = [(KTContext *)self logClient];
  v27 = [v6 downloadId];
  [v26 deleteDownloadId:v27];

  return v12;
}

- (id)retrieveTLTSTH:(id *)a3
{
  v5 = [(KTContext *)self dataStore];
  v6 = kKTApplicationIdentifierTLT;
  v7 = [(KTContext *)self applicationKeyStore];
  v8 = [v5 latestConsistencyVerifiedTreeHeadSTH:v6 logBeginMs:objc_msgSend(v7 error:{"tltLogBeginningMs"), a3}];

  if (v8)
  {
    v9 = objc_alloc_init(Gossip);
    v10 = [(KTContext *)self applicationKeyStore];
    -[Gossip setVersion:](v9, "setVersion:", [v10 tltEarliestVersion]);

    [(Gossip *)v9 setSth:v8];
    v11 = [(TransparencyGPBMessage *)v9 data];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)analyticsForDecodeFailure:(id)a3 error:(id)a4
{
  v4 = kKTApplicationIdentifierTLT;
  v5 = a4;
  v7 = [TransparencyAnalytics formatEventName:@"GossipDecodeMessageFailure" application:v4];
  v6 = +[TransparencyAnalytics logger];
  [v6 logResultForEvent:v7 hardFailure:1 result:v5];
}

- (void)analyticsForParseFailure:(id)a3
{
  v3 = kKTApplicationIdentifierTLT;
  v4 = a3;
  v6 = [TransparencyAnalytics formatEventName:@"GossipParseFailure" application:v3];
  v5 = +[TransparencyAnalytics logger];
  [v5 logResultForEvent:v6 hardFailure:1 result:v4];
}

- (void)analyticsForPredateLogBeginningMs:(unint64_t)a3 expectedLogBeginningMS:(unint64_t)a4 sth:(id)a5
{
  v5 = kTransparencyErrorGossip;
  v6 = [NSString stringWithFormat:@"STH predates our TLT's LogBeginningMs, gossiped loghead logBeginningMs %llu, expected logBeginningMs: %llu, sth: %@", a3, a4, a5];
  v9 = [TransparencyError errorWithDomain:v5 code:-277 description:@"%@", v6];

  v7 = [TransparencyAnalytics formatEventName:@"GossipOldLogBeginningMS" application:kKTApplicationIdentifierTLT];
  v8 = +[TransparencyAnalytics logger];
  [v8 logResultForEvent:v7 hardFailure:1 result:v9];
}

- (void)analyticsForTooNewLogBeginningMs:(unint64_t)a3 expectedLogBeginningMS:(unint64_t)a4 sth:(id)a5
{
  v5 = kTransparencyErrorGossip;
  v6 = [NSString stringWithFormat:@"Received gossip from a newer client.  Gossiped logBeginningsMs: %llu, client logBeginningsMs: %llu", a4, a5, a3, a4];
  v9 = [TransparencyError errorWithDomain:v5 code:-279 description:@"%@", v6];

  v7 = [TransparencyAnalytics formatEventName:@"GossipLogBeginningMSTooNew" application:kKTApplicationIdentifierTLT];
  v8 = +[TransparencyAnalytics logger];
  [v8 logResultForEvent:v7 hardFailure:1 result:v9];
}

- (void)processSTHsFromPeers:(id)a3 verifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v81 = a4;
  v80 = a5;
  v82 = +[NSMutableArray array];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v9 = v8;
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
            v28 = [v19 version];
            v29 = [(KTContext *)self applicationKeyStore];
            v30 = [v29 tltEarliestVersion];

            if (v28 >= v30)
            {
              v41 = [v19 sth];
              v91 = 0;
              v42 = [(KTContext *)self parseSTHData:v41 error:&v91];
              v43 = v91;

              if (v42 && !v43)
              {
                v44 = [v42 parsedLogHead];
                v45 = v44;
                if (v44)
                {
                  v46 = [v44 logBeginningMs];
                  v47 = [(KTContext *)self applicationKeyStore];
                  v48 = [v47 tltLogBeginningMs];

                  if (v46 < v48)
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
                      v51 = [v45 logBeginningMs];
                      v83 = [(KTContext *)self applicationKeyStore];
                      v52 = [v83 tltLogBeginningMs];
                      v53 = [v19 sth];
                      *buf = 134218498;
                      *v98 = v51;
                      *&v98[8] = 2048;
                      *v99 = v52;
                      *&v99[8] = 2112;
                      v100 = v53;
                      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "STH predates our TLT's LogBeginningMs, gossiped loghead logBeginningMs %llu, expected logBeginningMs: %llu, sth: %@", buf, 0x20u);
                    }

                    v54 = [v45 logBeginningMs];
                    v55 = [(KTContext *)self applicationKeyStore];
                    v56 = [v55 tltLogBeginningMs];
                    [v19 sth];
                    v58 = v57 = v45;
                    [(KTContext *)self analyticsForPredateLogBeginningMs:v54 expectedLogBeginningMS:v56 sth:v58];

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
                  v62 = [v45 logBeginningMs];
                  v63 = [(KTContext *)self applicationKeyStore];
                  v64 = [v63 tltLogBeginningMs];

                  if (v62 <= v64)
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
                    v67 = [v86 logBeginningMs];
                    v68 = [(KTContext *)self applicationKeyStore];
                    v69 = [v68 tltLogBeginningMs];
                    *buf = 134218240;
                    *v98 = v67;
                    *&v98[8] = 2048;
                    *v99 = v69;
                    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "Received gossip from a newer client.  Gossiped logBeginningsMs: %llu, client logBeginningsMs: %llu", buf, 0x16u);
                  }

                  v70 = [v86 logBeginningMs];
                  v71 = [(KTContext *)self applicationKeyStore];
                  v72 = [v71 tltLogBeginningMs];
                  v73 = [v19 sth];
                  [(KTContext *)self analyticsForTooNewLogBeginningMs:v70 expectedLogBeginningMS:v72 sth:v73];

                  v74 = [(KTContext *)self verifier];
                  v75 = [v42 signedObject];
                  [v74 checkHeadEpoch:v75];

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
              v33 = [v19 version];
              v34 = [(KTContext *)self applicationKeyStore];
              v35 = [v34 tltEarliestVersion];
              v36 = [v19 sth];
              *buf = 67109634;
              *v98 = v33;
              *&v98[4] = 1024;
              *&v98[6] = v35;
              *v99 = 2112;
              *&v99[2] = v36;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Unsupported protocol version, message version %d, expected version: %d, sth: %@", buf, 0x18u);

              v14 = v88;
            }

            v37 = [v19 version];
            v38 = [(KTContext *)self applicationKeyStore];
            v39 = [v38 tltEarliestVersion];
            v40 = [v19 sth];
            [(KTContext *)self analyticsForUnsupportedProtocol:v37 expected:v39 sth:v40];

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
              v24 = [v19 version];
              v25 = [v19 sth];
              *buf = 67109634;
              *v98 = v24;
              *&v98[4] = 1024;
              *&v98[6] = v89;
              *v99 = 2112;
              *&v99[2] = v25;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Unsupported protocol version, message version %d, expected version: %d, sth: %@", buf, 0x18u);

              v14 = v88;
            }

            v26 = [v19 version];
            v27 = [v19 sth];
            [(KTContext *)self analyticsForUnsupportedProtocol:v26 expected:v89 sth:v27];
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

  if ([v82 count] && (-[KTContext verifier](self, "verifier"), v77 = objc_claimAutoreleasedReturnValue(), v90 = 0, objc_msgSend(v77, "processSTHsFromGossipPeers:verifier:error:", v82, v81, &v90), v78 = v90, v77, v78))
  {
    v79 = v80;
    (*(v80 + 2))(v80, v78);
  }

  else
  {
    v79 = v80;
    (*(v80 + 2))(v80, 0);
  }
}

- (void)writeResult:(id)a3 verification:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 succeed] == 2)
  {
    v8 = [v7 idsResponseTime];
    [v8 timeIntervalSinceNow];
    v10 = v9;
    v11 = kKTMaximumMergeDelayMs / -1000.0;

    if (v10 < v11)
    {
      [v6 setSucceed:0];
    }
  }

  [v7 setUnsigned:"verificationResult" value:{objc_msgSend(v6, "succeed")}];
  if ([v6 succeed] != 2)
  {
    v12 = [v6 loggableDatas];

    if (v12)
    {
      if (qword_10038BDF0 != -1)
      {
        sub_10024B938();
      }

      v13 = qword_10038BDF8;
      if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        v15 = [v6 loggableDatas];
        *buf = 138412290;
        v38 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Updated cached loggable datas: %@", buf, 0xCu);
      }

      v16 = [KTLoggableDataArray alloc];
      v17 = [v6 loggableDatas];
      v18 = [(KTLoggableDataArray *)v16 initWithLoggableDatas:v17];
      [v7 setServerLoggableDatas:v18];
    }

    [v7 setOptedIn:{objc_msgSend(v6, "optedIn")}];
    v19 = [v6 failure];
    [v7 setFailure:v19];

    [v7 setUnsigned:"staticKeyStatus" value:{objc_msgSend(v6, "staticAccountKeyStatus")}];
    v20 = [v7 peerState];
    [v20 setEverCompletedVerification:1];
    if ([v6 optInTernaryState] != 2)
    {
      [v20 setOptedIn:{objc_msgSend(v6, "optedIn")}];
    }

    if ([v6 optInTernaryState] == 1)
    {
      if ([v20 everOptedIn] && objc_msgSend(v20, "turnedOffIgnored"))
      {
        [v20 setTurnedOffIgnored:0];
      }

      [v20 setEverOptedIn:1];
    }

    if ([v20 setCompletedVerification:v7])
    {
      if (qword_10038BDF0 != -1)
      {
        sub_10024B94C();
      }

      v21 = qword_10038BDF8;
      if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_INFO))
      {
        v22 = v21;
        v23 = [v6 uri];
        v24 = [v6 application];
        *buf = 138412546;
        v38 = v23;
        v39 = 2112;
        v40 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Updated cached verifications for uri: %@ application: %@", buf, 0x16u);
      }

      v25 = [(KTContext *)self contextStore];
      v26 = [v6 uri];
      v36 = v26;
      v27 = [NSArray arrayWithObjects:&v36 count:1];
      v28 = [v6 application];
      [v25 handlePeerStateChange:v27 application:v28];
    }

    v29 = [(KTContext *)self dataStore];
    v35 = 0;
    v30 = [v29 persistWithError:&v35];
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
        v34 = [v7 verificationId];
        *buf = 138543618;
        v38 = v34;
        v39 = 2112;
        v40 = v31;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "failed to persist IDSKTVerification results for id %{public}@: %@", buf, 0x16u);
      }
    }
  }
}

- (void)validatePeerIDSKTVerification:(id)a3 singleQuery:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v42 = a4;
  v9 = a5;
  v10 = [v8 serverLoggableDatas];
  v41 = [v10 updatableLoggableData];

  v11 = [KTLoggableData isAccountKTCapable:v41];
  v53 = 0;
  v40 = [v42 getQueryRequest:&v53];
  v12 = v53;
  v52 = v12;
  v39 = [v42 getQueryResponse:&v52];
  v13 = v52;

  if (v40 && v39)
  {
    v14 = [(KTContext *)self optInServer];
    v51 = 0;
    v37 = [v14 getAggregateOptInState:&v51];
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
    v22 = [v42 responseTime];
    v23 = [v8 verificationId];
    v50 = v13;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100088D08;
    v43[3] = &unk_10031E468;
    p_buf = &buf;
    v24 = v8;
    v44 = v24;
    v45 = self;
    v49 = v15;
    v46 = v41;
    v47 = v39;
    v25 = [(KTContext *)self handleQueryResponse:v47 queryRequest:v40 receiptDate:v22 fetchId:v23 validateType:v15 ktCapable:v11 error:&v50 transparentDataHandler:v43];
    v26 = v50;

    v27 = *(*(&buf + 1) + 40);
    if (v27)
    {
      goto LABEL_22;
    }

    if (!v25)
    {
      v28 = [(KTContext *)self dataStore];
      v29 = [v42 rpcId];
      [v28 failRpcId:v29 failure:v26 error:0];
    }

    v30 = [v26 domain];
    if ([v30 isEqual:kTransparencyErrorServer])
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
    v34 = [v24 application];
    v35 = [v32 initWithUri:v33 application:v34 ktResult:v25 failure:v26];
    v36 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v35;

    v27 = *(*(&buf + 1) + 40);
LABEL_22:
    [(KTContext *)self writeResult:v27 verification:v24];
    v9[2](v9, *(*(&buf + 1) + 40));

    _Block_object_dispose(&buf, 8);
    v13 = v26;
    goto LABEL_23;
  }

  v16 = [KTVerifierResult alloc];
  v17 = [v8 uri];
  v18 = [v8 application];
  v38 = [v16 initWithUri:v17 application:v18 ktResult:2 failure:v13];

  [(KTContext *)self writeResult:v38 verification:v8];
  v19 = [(KTContext *)self dataStore];
  v20 = [v42 rpcId];
  [v19 failRpcId:v20 failure:v13 error:0];

  (v9)[2](v9, v38);
LABEL_23:
}

- (void)validatePeerIDSKTVerification:(id)a3 batchQuery:(id)a4 completionBlock:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = NSStringFromSelector(a2);
  v14 = [TransparencyError unimplementedError:v9];

  v10 = [KTVerifierResult alloc];
  v11 = [v8 uri];
  v12 = [v8 application];

  v13 = [v10 initWithUri:v11 application:v12 failure:v14];
  v7[2](v7, v13);
}

- (void)validatePeerIDSKTVerification:(id)a3 serverRPC:(id)a4 completionBlock:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 rpcType])
  {
    if ([v8 rpcType] == 1)
    {
      [(KTContext *)self validatePeerIDSKTVerification:v15 batchQuery:v8 completionBlock:v9];
    }

    else
    {
      v10 = +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", kTransparencyErrorInternal, -340, @"unknown server rpc type: %lld", [v8 rpcType]);
      v11 = [KTVerifierResult alloc];
      v12 = [v15 uri];
      v13 = [v15 application];
      v14 = [v11 initWithUri:v12 application:v13 failure:v10];
      v9[2](v9, v14);
    }
  }

  else
  {
    [(KTContext *)self validatePeerIDSKTVerification:v15 singleQuery:v8 completionBlock:v9];
  }
}

- (void)validatePeers:(id)a3 fetchNow:(BOOL)a4 completionBlock:(id)a5
{
  v18 = a4;
  v22 = a3;
  v17 = a5;
  v19 = +[NSMutableArray array];
  v21 = +[NSMutableArray array];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_100088CF0;
  v43 = sub_100088D00;
  v44 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v22 count]);
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100088CF0;
  v37 = sub_100088D00;
  v38 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v22 count]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [v22 keyEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v53 count:16];
  if (v7)
  {
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v22 objectForKeyedSubscript:v10];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10008A4A8;
        v23[3] = &unk_10031E5A8;
        v27 = &v39;
        v24 = v19;
        v25 = v10;
        v28 = &v33;
        v26 = v21;
        [(KTContext *)self validatePeer:v10 verificationInfo:v11 fetchNow:v18 completionBlock:v23];
      }

      v7 = [v6 countByEnumeratingWithState:&v29 objects:v53 count:16];
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

  v17[2](v17, v40[5]);
  if ([v34[5] count])
  {
    v16 = [(KTContext *)self dataStore];
    [v16 updateIDSCacheWithResults:v34[5]];
  }

  [(KTContext *)self processPeerTTR:v40[5]];
  if ([v21 count])
  {
    [(KTContext *)self queryForUris:v21 userInitiated:1 cachedYoungerThan:0 completionHandler:&stru_10031E5E8];
  }

  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
}

- (void)processPeerTTR:(id)a3
{
  v3 = a3;
  if (+[TransparencyAnalytics hasInternalDiagnostics])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v29 = v3;
    obj = v3;
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
          v10 = [v9 failure];

          if (v10)
          {
            v33 = v8;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v35 = [v9 loggableDatas];
            v11 = [v35 countByEnumeratingWithState:&v36 objects:v46 count:16];
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
                  objc_enumerationMutation(v35);
                }

                v15 = *(*(&v36 + 1) + 8 * v14);
                v16 = [v15 failure];
                if (v16)
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
                  v23 = [v15 failure];
                  v24 = [NSString stringWithFormat:@"Failure to validate peer %@: %@", v22, v23];

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

                  v26 = [(KTContext *)self tapToRadar];
                  v27 = [v15 deviceID];
                  v28 = [v27 kt_hexString];
                  [v26 sasTTRWithTitle:@"Failure to verify Contact Key" description:v24 relatedRadar:&off_10033CF48 unique:@"peerTTR" handle:v21 pushToken:v28];

                  v6 = v20;
                }

LABEL_23:
                v14 = v14 + 1;
              }

              while (v12 != v14);
              v12 = [v35 countByEnumeratingWithState:&v36 objects:v46 count:16];
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

        v3 = v29;
        break;
      }
    }
  }
}

- (void)validatePendingPeersForSingleQuery:(id)a3
{
  v4 = a3;
  v5 = [v4 uri];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 responseTime];

    if (v7)
    {
      v8 = [(KTContext *)self dataStore];
      v9 = [(KTContext *)self applicationID];
      v10 = [v4 uri];
      v11 = [v4 responseTime];
      v28 = 0;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10008AEF0;
      v25[3] = &unk_100316DF0;
      v12 = v4;
      v26 = v12;
      v27 = self;
      v13 = [v8 performForPendingVerfications:v9 uri:v10 responseOlderThan:v11 error:&v28 batchSize:20 block:v25];
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
        v17 = [v12 rpcId];
        *buf = 138543362;
        v30 = v17;
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
        v17 = [v12 rpcId];
        *buf = 138543618;
        v30 = v17;
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
    v23 = [v4 rpcId];
    *buf = 138543362;
    v30 = v23;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "rpcId %{public}@ missing uri or response time", buf, 0xCu);

LABEL_20:
  }
}

- (void)validatePendingPeersForBatchQuery:(id)a3
{
  v3 = a3;
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

- (void)validatePendingPeersForRpcId:(id)a3
{
  v4 = a3;
  v5 = [(KTContext *)self dataStore];
  v9[4] = self;
  v10 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008B614;
  v9[3] = &unk_100316E98;
  v6 = [v5 performAndWaitForRpcId:v4 error:&v10 block:v9];
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
      v12 = v4;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "failed to find rpc for rpcId %{public}@: %@", buf, 0x16u);
    }
  }
}

- (void)validateIDSPeerWithUri:(id)a3 application:(id)a4 idsData:(id)a5 ktData:(id)a6 complete:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v15 response];
  v29 = 0;
  v18 = [(TransparencyGPBMessage *)QueryResponse parseFromData:v17 error:&v29];
  v19 = v29;

  if (v18)
  {
    v20 = [(KTContext *)self dataStore];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10008B970;
    v21[3] = &unk_10031E798;
    v22 = v14;
    v23 = self;
    v24 = v12;
    v25 = v13;
    v28 = v16;
    v26 = v15;
    v27 = v18;
    [v20 performBlockAndWaitWithMoc:v21];
  }

  else
  {
    (*(v16 + 2))(v16, 0, v19);
  }
}

@end