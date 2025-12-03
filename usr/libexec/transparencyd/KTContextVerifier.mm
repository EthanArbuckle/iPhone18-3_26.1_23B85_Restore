@interface KTContextVerifier
+ (BOOL)verifyLoggableDataSignatures:(id)signatures accountKey:(id)key error:(id *)error;
+ (BOOL)verifyServerLoggableDatas:(id)datas againstSyncedLoggableDatas:(id)loggableDatas cloudDevices:(id)devices error:(id *)error;
+ (int64_t)verifyDeviceMutation:(id)mutation mapLeaf:(id)leaf;
+ (int64_t)verifyOptInOutMutationMerged:(id)merged mapLeaf:(id)leaf pendingAccountAdds:(id)adds;
+ (int64_t)verifyOptInOutWithExtMerged:(id)merged accountKeyHash:(id)hash mapLeaf:(id)leaf pendingAccountAdds:(id)adds;
- (BOOL)areSMTsOverMMD:(id)d;
- (BOOL)failSMTsIfOverMMD:(id)d proof:(id)proof underlyingError:(id)error errorCode:(int64_t)code savePendingError:(BOOL)pendingError analyticsData:(id)data;
- (BOOL)failSMTsIfOverMMD:(id)d skipOptInOut:(BOOL)out proof:(id)proof underlyingError:(id)error errorCode:(int64_t)code analyticsData:(id)data;
- (BOOL)setInclusionVerifiedState:(unint64_t)state logEntry:(id)entry failure:(id)failure error:(id *)error;
- (BOOL)setInclusionVerifiedState:(unint64_t)state perApplicationTreeLogEntry:(id)entry failure:(id)failure error:(id *)error;
- (BOOL)setInclusionVerifiedState:(unint64_t)state topLevelTreeLogEntry:(id)entry failure:(id)failure error:(id *)error;
- (BOOL)verifyKTSMTsMerged:(id)merged mapLeaf:(id)leaf analyticsData:(id)data;
- (BOOL)verifyKTSMTsMerged:(id)merged queryResponse:(id)response uri:(id)uri;
- (BOOL)verifyRevisionLogInclusionProofResponse:(id)response receivedRevisions:(id)revisions error:(id *)error;
- (KTContext)context;
- (KTContextVerifier)initWithApplicationKeyStore:(id)store dataStore:(id)dataStore applicationID:(id)d context:(id)context;
- (id)createChainOfErrorsFromSMTFailures:(id)failures;
- (id)createChainOfErrorsFromSTHFailures:(id)failures type:(unint64_t)type;
- (id)createErrorFromSMTFailure:(id)failure underlyingError:(id)error;
- (id)createErrorFromSTHFailure:(id)failure underlyingError:(id)error;
- (id)createTransparentDataFromQueryInfo:(id)info error:(id *)error;
- (id)failExpiredSTHsForType:(unint64_t)type error:(id *)error;
- (id)verifyKTSMTSignatures:(id)signatures error:(id *)error;
- (id)verifySTHs:(id)hs error:(id *)error;
- (unint64_t)checkBatchQueryResponseFreshness:(id)freshness receiptDate:(id)date error:(id *)error;
- (unint64_t)checkQueryInfoFreshness:(id)freshness receiptDate:(id)date error:(id *)error;
- (unint64_t)checkQueryResponseFreshness:(id)freshness receiptDate:(id)date error:(id *)error;
- (unint64_t)checkResponseFreshness:(id)freshness smh:(id)smh receiptDate:(id)date error:(id *)error;
- (unint64_t)handleBatchQueryResponse:(id)response queryRequest:(id)request receiptDate:(id)date fetchId:(id)id error:(id *)error queryInfoHandler:(id)handler;
- (unint64_t)handleBatchQueryResponse:(id)response queryRequest:(id)request receiptDate:(id)date fetchId:(id)id error:(id *)error transparentDataHandler:(id)handler;
- (unint64_t)handleInsertResponse:(id)response uri:(id)uri fetchId:(id)id error:(id *)error transparentDataHandler:(id)handler;
- (unint64_t)handleQueryResponse:(id)response queryRequest:(id)request receiptDate:(id)date fetchId:(id)id error:(id *)error rawDataHandler:(id)handler;
- (unint64_t)handleQueryResponse:(id)response queryRequest:(id)request receiptDate:(id)date fetchId:(id)id error:(id *)error transparentDataHandler:(id)handler;
- (unint64_t)verifyAccountKeyWitness:(id)witness accountKey:(id)key error:(id *)error;
- (unint64_t)verifyConsistencyProofResponse:(id)response startRevision:(int64_t)revision receivedRevisions:(id)revisions error:(id *)error;
- (unint64_t)verifyInclusionProof:(id)proof mapLeaf:(id *)leaf error:(id *)error;
- (unint64_t)verifyRevisionLogProofLogEntry:(id)entry patSTH:(id *)h error:(id *)error;
- (unint64_t)verifyRevisionLogTopLevelProof:(id)proof patSTH:(id)h error:(id *)error;
- (unint64_t)verifySMTTimestamps:(id)timestamps receiptDate:(id)date error:(id *)error;
- (unint64_t)verifySMTs:(id)ts uri:(id)uri serverHint:(id)hint error:(id *)error;
- (unint64_t)verifyUriWitness:(id)witness uri:(id)uri error:(id *)error;
- (void)checkBatchQueryResponseEpochs:(id)epochs;
- (void)checkHeadEpoch:(id)epoch;
- (void)checkQueryResponseEpochs:(id)epochs;
- (void)deleteSMT:(id)t error:(id)error;
- (void)processSTHsFromGossipPeers:(id)peers verifier:(id)verifier error:(id *)error;
- (void)reportVerifySMTFailure:(id)failure analyticsData:(id)data uri:(id)uri receiptServerHint:(id)hint error:(id)error;
@end

@implementation KTContextVerifier

- (unint64_t)checkBatchQueryResponseFreshness:(id)freshness receiptDate:(id)date error:(id *)error
{
  dateCopy = date;
  v9 = [freshness smh];
  v10 = [(KTContextVerifier *)self checkResponseFreshness:0 smh:v9 receiptDate:dateCopy error:error];

  return v10;
}

- (unint64_t)checkQueryInfoFreshness:(id)freshness receiptDate:(id)date error:(id *)error
{
  dateCopy = date;
  pendingSmtsArray = [freshness pendingSmtsArray];
  v10 = [(KTContextVerifier *)self checkResponseFreshness:pendingSmtsArray smh:0 receiptDate:dateCopy error:error];

  return v10;
}

- (void)checkBatchQueryResponseEpochs:(id)epochs
{
  epochsCopy = epochs;
  if ([epochsCopy hasPerApplicationTreeEntry])
  {
    perApplicationTreeEntry = [epochsCopy perApplicationTreeEntry];
    if (perApplicationTreeEntry)
    {
      perApplicationTreeEntry4 = perApplicationTreeEntry;
      perApplicationTreeEntry2 = [epochsCopy perApplicationTreeEntry];
      if (![perApplicationTreeEntry2 hasSlh])
      {
LABEL_6:

        goto LABEL_7;
      }

      perApplicationTreeEntry3 = [epochsCopy perApplicationTreeEntry];
      v8 = [perApplicationTreeEntry3 slh];

      if (v8)
      {
        perApplicationTreeEntry4 = [epochsCopy perApplicationTreeEntry];
        perApplicationTreeEntry2 = [perApplicationTreeEntry4 slh];
        [(KTContextVerifier *)self checkHeadEpoch:perApplicationTreeEntry2];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  if ([epochsCopy hasTopLevelTreeEntry])
  {
    topLevelTreeEntry = [epochsCopy topLevelTreeEntry];
    if (topLevelTreeEntry)
    {
      topLevelTreeEntry4 = topLevelTreeEntry;
      topLevelTreeEntry2 = [epochsCopy topLevelTreeEntry];
      if ([topLevelTreeEntry2 hasSlh])
      {
        topLevelTreeEntry3 = [epochsCopy topLevelTreeEntry];
        v13 = [topLevelTreeEntry3 slh];

        if (!v13)
        {
          goto LABEL_13;
        }

        topLevelTreeEntry4 = [epochsCopy topLevelTreeEntry];
        topLevelTreeEntry2 = [topLevelTreeEntry4 slh];
        [(KTContextVerifier *)self checkHeadEpoch:topLevelTreeEntry2];
      }
    }
  }

LABEL_13:
}

- (unint64_t)handleBatchQueryResponse:(id)response queryRequest:(id)request receiptDate:(id)date fetchId:(id)id error:(id *)error queryInfoHandler:(id)handler
{
  responseCopy = response;
  requestCopy = request;
  dateCopy = date;
  idCopy = id;
  handlerCopy = handler;
  v19 = -[KTContextVerifier checkServerStatus:error:](self, "checkServerStatus:error:", [responseCopy status], error);
  if (v19 != 1)
  {
    v26 = v19;
    if (qword_10039C720 != -1)
    {
      sub_10025AD44();
    }

    v28 = qword_10039C728;
    if (os_log_type_enabled(qword_10039C728, OS_LOG_TYPE_ERROR))
    {
      v29 = v28;
      *buf = 138543618;
      v93 = idCopy;
      v94 = 1024;
      LODWORD(v95) = [responseCopy status];
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "BatchQueryResponse for fetchId %{public}@ server error: %d", buf, 0x12u);
    }

    goto LABEL_16;
  }

  [(KTContextVerifier *)self checkBatchQueryResponseEpochs:responseCopy];
  context = [(KTContextVerifier *)self context];
  v21 = [context ready:error];

  if (v21)
  {
    v22 = [(KTContextVerifier *)self checkBatchQueryResponseFreshness:responseCopy receiptDate:dateCopy error:error];
    if (v22 == 1)
    {
      queryInfoArray_Count = [responseCopy queryInfoArray_Count];
      if (queryInfoArray_Count > [requestCopy uriArray_Count])
      {
        idCopy = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-326 description:@"More query infos in response than in request for fetchId %@, aborting validation and deleting record", idCopy];
        if (qword_10039C720 != -1)
        {
          sub_10025AE48();
        }

        v25 = qword_10039C728;
        if (os_log_type_enabled(qword_10039C728, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v93 = idCopy;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "More query infos in response than in request for fetchId %{public}@, aborting validation and deleting record", buf, 0xCu);
        }

        v26 = 0;
        if (error && idCopy)
        {
          v27 = idCopy;
          v26 = 0;
          *error = idCopy;
        }

        goto LABEL_22;
      }

      v33 = [TransparencyMapInclusionProofVerifier alloc];
      applicationKeyStore = [(KTContextVerifier *)self applicationKeyStore];
      applicationID = [(KTContextVerifier *)self applicationID];
      v36 = [(TransparencyMapInclusionProofVerifier *)v33 initWithKeyStore:applicationKeyStore application:applicationID];

      v79 = v36;
      [responseCopy setVerifier:v36];
      dataStore = [(KTContextVerifier *)self dataStore];
      [responseCopy setDataStore:dataStore];

      context2 = [(KTContextVerifier *)self context];
      optInServer = [context2 optInServer];
      [responseCopy setOptInServer:optInServer];

      v91 = 0;
      v26 = [responseCopy verifyWithError:&v91];
      v81 = v91;
      v82 = idCopy;
      v85 = dateCopy;
      if (v26 == 1)
      {
        if ([responseCopy queryInfoArray_Count])
        {
          v40 = 0;
          v78 = kTransparencyResponseMetadataKeyServerHint;
          v77 = handlerCopy;
          v83 = requestCopy;
          do
          {
            queryInfoArray = [responseCopy queryInfoArray];
            v42 = [queryInfoArray objectAtIndexedSubscript:v40];

            uriArray = [requestCopy uriArray];
            v44 = [uriArray objectAtIndexedSubscript:v40];

            status = [v42 status];
            v90 = 0;
            v46 = [(KTContextVerifier *)self checkServerStatus:status error:&v90];
            v47 = v90;
            v48 = v47;
            if (v46 == 1)
            {
              v89 = v47;
              v49 = [(KTContextVerifier *)self checkQueryInfoFreshness:v42 receiptDate:v85 error:&v89];
              v50 = v89;

              if (v49 == 1)
              {
                uriWitness = [v42 uriWitness];
                v88 = v50;
                v52 = [(KTContextVerifier *)self verifyUriWitness:uriWitness uri:v44 error:&v88];
                v84 = v88;

                if (v52 == 1)
                {
                  metadata = [responseCopy metadata];
                  v54 = [metadata objectForKeyedSubscript:v78];

                  v80 = v54;
                  if ([v42 pendingSmtsArray_Count])
                  {
                    pendingSmtsArray = [v42 pendingSmtsArray];
                    v87 = v84;
                    v56 = [(KTContextVerifier *)self verifySMTs:pendingSmtsArray uri:v44 serverHint:v54 error:&v87];
                    v50 = v87;

                    if (v56 == 1)
                    {
                      v84 = v50;
                      requestCopy = v83;
                      handlerCopy = v77;
                      goto LABEL_49;
                    }

                    requestCopy = v83;
                    handlerCopy = v77;
                    if (qword_10039C720 != -1)
                    {
                      sub_10025ADF8();
                    }

                    v70 = qword_10039C728;
                    if (os_log_type_enabled(qword_10039C728, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 141558530;
                      v93 = 1752392040;
                      v94 = 2112;
                      v95 = v44;
                      v96 = 2114;
                      v97 = v82;
                      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "Pending SMT verification failed for %{mask.hash}@ fetchId %{public}@", buf, 0x20u);
                    }

                    (v77)[2](v77, v44, 0, v50);
LABEL_64:
                    v68 = v80;
                  }

                  else
                  {
                    requestCopy = v83;
LABEL_49:
                    if ([v42 hasMapEntry])
                    {
                      mapEntry = [v42 mapEntry];
                      v75 = [TransparencyMapEntryVerifier alloc];
                      index = [mapEntry index];
                      applicationKeyStore2 = [(KTContextVerifier *)self applicationKeyStore];
                      appSthKeyStore = [applicationKeyStore2 appSthKeyStore];
                      v65 = [(TransparencyMapEntryVerifier *)v75 initWithPositon:index trustedKeyStore:appSthKeyStore];

                      v74 = v65;
                      [mapEntry setVerifier:v65];
                      dataStore2 = [(KTContextVerifier *)self dataStore];
                      [mapEntry setDataStore:dataStore2];

                      verifiableSmh = [responseCopy verifiableSmh];
                      [mapEntry setSmh:verifiableSmh];

                      v68 = v80;
                      [mapEntry setMetadataValue:v80 key:v78];
                      v86 = v84;
                      v76 = mapEntry;
                      v69 = [mapEntry verifyWithError:&v86];
                      v50 = v86;

                      if (v69 != 1)
                      {
                        handlerCopy = v77;
                        if (qword_10039C720 != -1)
                        {
                          sub_10025AE20();
                        }

                        requestCopy = v83;
                        v71 = qword_10039C728;
                        if (os_log_type_enabled(qword_10039C728, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 141558530;
                          v93 = 1752392040;
                          v94 = 2112;
                          v95 = v44;
                          v96 = 2114;
                          v97 = v82;
                          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "MapEntry verification failed for %{mask.hash}@ fetchId %{public}@", buf, 0x20u);
                        }

                        (v77)[2](v77, v44, 0, v50);

                        goto LABEL_64;
                      }

                      requestCopy = v83;
                      handlerCopy = v77;
                    }

                    else
                    {
                      v50 = v84;
                      v68 = v80;
                    }

                    handlerCopy[2](handlerCopy, v44, v42, 0);
                  }

                  goto LABEL_66;
                }

                if (qword_10039C720 != -1)
                {
                  sub_10025ADD0();
                }

                requestCopy = v83;
                v61 = qword_10039C728;
                if (os_log_type_enabled(qword_10039C728, OS_LOG_TYPE_ERROR))
                {
                  *buf = 141558530;
                  v93 = 1752392040;
                  v94 = 2112;
                  v95 = v44;
                  v96 = 2114;
                  v97 = v82;
                  _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "URIWitness verification failed for %{mask.hash}@ fetchId %{public}@", buf, 0x20u);
                }

                v58 = handlerCopy[2];
                v59 = handlerCopy;
                v60 = v44;
                v50 = v84;
              }

              else
              {
                if (qword_10039C720 != -1)
                {
                  sub_10025ADA8();
                }

                requestCopy = v83;
                v57 = qword_10039C728;
                if (os_log_type_enabled(qword_10039C728, OS_LOG_TYPE_ERROR))
                {
                  *buf = 141558274;
                  v93 = 1752392040;
                  v94 = 2112;
                  v95 = v44;
                  _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "QueryInfo for %{mask.hash}@ is outside MMD", buf, 0x16u);
                }

                v58 = handlerCopy[2];
                v59 = handlerCopy;
                v60 = v44;
              }

              v58(v59, v60, 0, v50);
            }

            else
            {
              (handlerCopy)[2](handlerCopy, v44, 0, v47);
              v50 = v48;
            }

LABEL_66:

            ++v40;
          }

          while (v40 < [responseCopy queryInfoArray_Count]);
        }
      }

      else
      {
        if (qword_10039C720 != -1)
        {
          sub_10025AD80();
        }

        v72 = qword_10039C728;
        if (os_log_type_enabled(qword_10039C728, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v93 = idCopy;
          v94 = 2112;
          v95 = v81;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "Proof validation failed for fetchId %{public}@: %@", buf, 0x16u);
        }

        if (error && v81)
        {
          *error = v81;
        }
      }

      idCopy = 0;
      dateCopy = v85;
      idCopy = v82;
      goto LABEL_22;
    }

    v26 = v22;
    if (qword_10039C720 != -1)
    {
      sub_10025AD6C();
    }

    v32 = qword_10039C728;
    if (os_log_type_enabled(qword_10039C728, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v93 = idCopy;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "BatchQueryResponse for fetchId %{public}@ exceeded MMD", buf, 0xCu);
    }

LABEL_16:
    idCopy = 0;
    goto LABEL_22;
  }

  if (qword_10039C720 != -1)
  {
    sub_10025AD58();
  }

  v30 = qword_10039C728;
  if (os_log_type_enabled(qword_10039C728, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v93 = idCopy;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "BatchQueryResponse for fetchId %{public}@ waiting for keystore refresh", buf, 0xCu);
  }

  idCopy = 0;
  v26 = 2;
LABEL_22:

  return v26;
}

- (id)createTransparentDataFromQueryInfo:(id)info error:(id *)error
{
  infoCopy = info;
  if ([infoCopy hasMapEntry] && (objc_msgSend(infoCopy, "mapEntry"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "mapLeaf"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, v9))
  {
    mapEntry = [infoCopy mapEntry];
    mapLeaf = [mapEntry mapLeaf];
    v12 = [IdsMapLeaf parseFromData:mapLeaf error:error];

    if (!v12)
    {
      v13 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = [KTTransparentData alloc];
  uriWitness = [infoCopy uriWitness];
  output = [uriWitness output];
  pendingSmtsArray = [infoCopy pendingSmtsArray];
  v13 = [(KTTransparentData *)v14 initWithUriVRFOutput:output mapLeaf:v12 pendingSMTs:pendingSmtsArray error:error];

  applicationKeyStore = [(KTContextVerifier *)self applicationKeyStore];
  v19 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [applicationKeyStore patLogBeginningMs] / 1000.0);
  [(KTTransparentData *)v13 setCurrentTreeEpochBeginDate:v19];

LABEL_7:

  return v13;
}

- (unint64_t)handleBatchQueryResponse:(id)response queryRequest:(id)request receiptDate:(id)date fetchId:(id)id error:(id *)error transparentDataHandler:(id)handler
{
  dateCopy = date;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001A3F08;
  v20[3] = &unk_100325DC8;
  v20[4] = self;
  idCopy = id;
  v22 = dateCopy;
  handlerCopy = handler;
  v15 = dateCopy;
  v16 = handlerCopy;
  v17 = idCopy;
  v18 = [(KTContextVerifier *)self handleBatchQueryResponse:response queryRequest:request receiptDate:v15 fetchId:v17 error:error queryInfoHandler:v20];

  return v18;
}

- (unint64_t)verifySMTTimestamps:(id)timestamps receiptDate:(id)date error:(id *)error
{
  timestampsCopy = timestamps;
  dateCopy = date;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = timestampsCopy;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    v13 = kKTMaximumMergeDelayMs;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [SignedMutationTimestamp signedTypeWithObject:*(*(&v23 + 1) + 8 * i), v23];
        v16 = [v15 parsedMutationWithError:error];
        v17 = v16;
        if (!v16)
        {
          goto LABEL_16;
        }

        v18 = ([v16 mutationMs] + v13);
        [dateCopy timeIntervalSince1970];
        if (v19 * 1000.0 > v18)
        {
          v21 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-307 description:@"SMT timestamp more than MMD ago"];
          if (error && v21)
          {
            v21 = v21;
            *error = v21;
          }

LABEL_16:
          v20 = 0;
          goto LABEL_17;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      v20 = 1;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v20 = 1;
  }

LABEL_17:

  return v20;
}

- (unint64_t)verifySMTs:(id)ts uri:(id)uri serverHint:(id)hint error:(id *)error
{
  tsCopy = ts;
  uriCopy = uri;
  hintCopy = hint;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = tsCopy;
  v11 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v11)
  {
    v27 = *v43;
    v25 = 1;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v43 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        applicationKeyStore = [(KTContextVerifier *)self applicationKeyStore];
        appSmtKeyStore = [applicationKeyStore appSmtKeyStore];
        signatureVerifier = [appSmtKeyStore signatureVerifier];
        dataStore = [(KTContextVerifier *)self dataStore];
        v18 = [SignedMutationTimestamp signedTypeWithObject:v13 verifier:signatureVerifier dataStore:dataStore];

        applicationID = [(KTContextVerifier *)self applicationID];
        [v18 setApplication:applicationID];

        v20 = [v18 verifyWithError:error];
        if (v20 != 1)
        {

          v25 = v20;
          goto LABEL_15;
        }

        v36 = 0;
        v37 = &v36;
        v38 = 0x3032000000;
        v39 = sub_1001F2870;
        v40 = sub_1001F2880;
        v41 = 0;
        dataStore2 = [(KTContextVerifier *)self dataStore];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_1001F2888;
        v30[3] = &unk_100328EB8;
        v22 = v18;
        v31 = v22;
        selfCopy = self;
        v33 = uriCopy;
        v34 = hintCopy;
        v35 = &v36;
        [dataStore2 performBlockAndWait:v30];

        if (error)
        {
          v23 = v37[5];
          if (v23)
          {
            *error = v23;
          }
        }

        _Block_object_dispose(&v36, 8);
      }

      v11 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v25 = 1;
  }

LABEL_15:

  return v25;
}

- (void)reportVerifySMTFailure:(id)failure analyticsData:(id)data uri:(id)uri receiptServerHint:(id)hint error:(id)error
{
  failureCopy = failure;
  dataCopy = data;
  uriCopy = uri;
  hintCopy = hint;
  errorCopy = error;
  v16 = +[NSMutableDictionary dictionary];
  v17 = +[TransparencyAnalytics hasInternalDiagnostics];
  v18 = v17;
  if (dataCopy && v17)
  {
    [v16 addEntriesFromDictionary:dataCopy];
  }

  if (v18)
  {
    v19 = [(SignedObjectHolder *)SignedMutationTimestamp parseFromData:failureCopy error:0];
    v20 = v19;
    if (v19)
    {
      selfCopy = self;
      signature = [v19 signature];
      v21Signature = [signature signature];
      v23 = [v21Signature base64EncodedStringWithOptions:0];
      [v16 setObject:v23 forKeyedSubscript:@"sig"];

      v24 = [v20 parsedMutationWithError:0];
      v25 = v24;
      if (v24)
      {
        v26 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 mutationMs]);
        [v16 setObject:v26 forKeyedSubscript:@"ms"];
      }

      self = selfCopy;
    }

    if (uriCopy)
    {
      [v16 setObject:uriCopy forKeyedSubscript:@"uri"];
    }

    if (hintCopy)
    {
      [v16 setObject:hintCopy forKeyedSubscript:@"rSH"];
    }
  }

  v27 = +[TransparencyAnalytics logger];
  applicationID = [(KTContextVerifier *)self applicationID];
  v29 = [TransparencyAnalytics formatEventName:@"VerifySmtInclusionEvent" application:applicationID];
  if ([v16 count])
  {
    v30 = v16;
  }

  else
  {
    v30 = 0;
  }

  [v27 logResultForEvent:v29 hardFailure:1 result:errorCopy withAttributes:v30];
}

- (BOOL)areSMTsOverMMD:(id)d
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  dCopy = d;
  v4 = [dCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    v6 = kKTMaximumMergeDelayMs;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(dCopy);
        }

        v8 = ([*(*(&v11 + 1) + 8 * i) getUnsigned:{"mutationMs", v11}] + v6);
        +[NSDate kt_currentTimeMs];
        if (v9 > v8)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [dCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)createErrorFromSMTFailure:(id)failure underlyingError:(id)error
{
  errorCopy = error;
  failureCopy = failure;
  errorDomain = [failureCopy errorDomain];
  errorCode = [failureCopy errorCode];

  v9 = [TransparencyError errorWithDomain:errorDomain code:errorCode underlyingError:errorCopy description:0];

  return v9;
}

- (id)createChainOfErrorsFromSMTFailures:(id)failures
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allObjects = [failures allObjects];
  v5 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        v7 = [(KTContextVerifier *)self createErrorFromSMTFailure:*(*(&v12 + 1) + 8 * v9) underlyingError:v10];

        v9 = v9 + 1;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)failSMTsIfOverMMD:(id)d proof:(id)proof underlyingError:(id)error errorCode:(int64_t)code savePendingError:(BOOL)pendingError analyticsData:(id)data
{
  pendingErrorCopy = pendingError;
  dCopy = d;
  errorCopy = error;
  dataCopy = data;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = dCopy;
  v14 = [dCopy countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v59;
    v54 = kKTMaximumMergeDelayMs;
    v47 = kTransparencyResponseMetadataKeyServerHint;
    selfCopy4 = self;
    v51 = *v59;
    v52 = dataCopy;
    codeCopy = code;
    while (1)
    {
      v19 = 0;
      v50 = v15;
      do
      {
        if (*v59 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v58 + 1) + 8 * v19);
        if ([v20 mergeResult] == 2)
        {
          v21 = ([v20 getUnsigned:"mutationMs"] + v54);
          +[NSDate kt_currentTimeMs];
          if (v22 <= v21)
          {
            if (!pendingErrorCopy)
            {
              goto LABEL_26;
            }

            receiptServerHint = [v20 receiptServerHint];
            v57 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:code underlyingError:errorCopy description:@"SMT verification failure before MMD for %@", receiptServerHint];

            if (qword_10039CB50 != -1)
            {
              sub_10025D4C8();
            }

            v41 = qword_10039CB58;
            if (os_log_type_enabled(qword_10039CB58, OS_LOG_TYPE_INFO))
            {
              v42 = v41;
              receiptServerHint2 = [v20 receiptServerHint];
              *buf = 138543874;
              v63 = receiptServerHint2;
              v64 = 2112;
              v65 = v57;
              v66 = 2112;
              v67 = errorCopy;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "SMT verification failure before MMD for %{public}@, error: %@, underlyingError: %@", buf, 0x20u);
            }

            selfCopy4 = self;
          }

          else
          {
            failures = [v20 failures];
            v24 = [(KTContextVerifier *)selfCopy4 createChainOfErrorsFromSMTFailures:failures];

            v53 = v24;
            v25 = [TransparencyError errorWithError:errorCopy underlyingError:v24];
            receiptServerHint3 = [v20 receiptServerHint];
            v57 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:code underlyingError:v25 description:@"SMT verification failure after MMD for %@", receiptServerHint3];

            if (qword_10039CB50 != -1)
            {
              sub_10025D4F0();
            }

            dataCopy = v52;
            v27 = qword_10039CB58;
            if (os_log_type_enabled(qword_10039CB58, OS_LOG_TYPE_ERROR))
            {
              v28 = v27;
              receiptServerHint4 = [v20 receiptServerHint];
              *buf = 138543874;
              v63 = receiptServerHint4;
              v64 = 2112;
              v65 = v57;
              v66 = 2112;
              v67 = errorCopy;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "SMT verification failure after MMD for %{public}@, error: %@, underlyingError: %@", buf, 0x20u);
            }

            [v20 setMergeResult:0];
            if ([v20 signatureResult] == 2)
            {
              [v20 setSignatureResult:0];
            }

            v30 = [v20 smt];
            v31 = [v20 uri];
            receiptServerHint5 = [v20 receiptServerHint];
            [(KTContextVerifier *)selfCopy4 reportVerifySMTFailure:v30 analyticsData:v52 uri:v31 receiptServerHint:receiptServerHint5 error:v57];

            v33 = [v52 objectForKeyedSubscript:@"opUUID"];
            if (v33)
            {
              v34 = [[NSUUID alloc] initWithUUIDString:v33];
              v35 = [v52 objectForKeyedSubscript:v47];
              context = [(KTContextVerifier *)selfCopy4 context];
              [context stateMachine];
              v38 = v37 = errorCopy;
              v39 = [v20 smt];
              [v38 notifyBackgroundValidationFailure:v34 data:v39 type:@"SmtInclusion" serverHint:v35 failure:v57];

              errorCopy = v37;
              selfCopy4 = self;
              dataCopy = v52;

              code = codeCopy;
            }

            v16 = 1;
            v15 = v50;
          }

          if (v57)
          {
            dataStore = [(KTContextVerifier *)selfCopy4 dataStore];
            createSignedMutationTimestampsFailure = [dataStore createSignedMutationTimestampsFailure];

            selfCopy4 = self;
            [createSignedMutationTimestampsFailure setErrorCode:code];
            [createSignedMutationTimestampsFailure setErrorDomain:@"TransparencyErrorVerify"];
            [createSignedMutationTimestampsFailure setMutation:v20];
          }

          v17 = v51;
        }

LABEL_26:
        v19 = v19 + 1;
      }

      while (v15 != v19);
      v15 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
      if (!v15)
      {
        goto LABEL_30;
      }
    }
  }

  v16 = 0;
LABEL_30:

  return v16 & 1;
}

- (void)deleteSMT:(id)t error:(id)error
{
  errorCopy = error;
  tCopy = t;
  dataStore = [(KTContextVerifier *)self dataStore];
  [dataStore deleteObject:tCopy];

  v9 = [tCopy smt];

  [(KTContextVerifier *)self reportVerifySMTFailure:v9 analyticsData:0 error:errorCopy];
}

- (id)verifyKTSMTSignatures:(id)signatures error:(id *)error
{
  signaturesCopy = signatures;
  v6 = +[NSMutableArray array];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v7 = signaturesCopy;
  v51 = [v7 countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (!v51)
  {
    goto LABEL_42;
  }

  v50 = *v56;
  v48 = kTransparencyErrorDecode;
  selfCopy = self;
  v45 = v7;
  while (2)
  {
    v8 = 0;
    do
    {
      if (*v56 != v50)
      {
        objc_enumerationMutation(v7);
      }

      v9 = *(*(&v55 + 1) + 8 * v8);
      v10 = objc_autoreleasePoolPush();
      v11 = [v9 smt];

      if (v11)
      {
        v12 = [v9 smt];
        v54 = 0;
        v13 = [(SignedObjectHolder *)SignedMutationTimestamp parseFromData:v12 error:&v54];
        v14 = v54;

        if (v13)
        {
          v49 = v10;
          applicationKeyStore = [(KTContextVerifier *)self applicationKeyStore];
          appSmtKeyStore = [applicationKeyStore appSmtKeyStore];
          signatureVerifier = [appSmtKeyStore signatureVerifier];
          [v13 setVerifier:signatureVerifier];

          v53 = v14;
          v18 = [v13 verifyWithError:&v53];
          v19 = v53;

          if (v18)
          {
            if (v18 != 1)
            {
              if (v18 == 2)
              {
                v59 = v9;
                v20 = [NSArray arrayWithObjects:&v59 count:1];
                v21 = [(KTContextVerifier *)self failSMTsIfOverMMD:v20 proof:0 underlyingError:v19 errorCode:-64 analyticsData:0];

                if (v21)
                {
                  v22 = [v9 smt];
                  [v6 addObject:v22];
                }

                else
                {

                  v19 = v13;
                }

LABEL_27:
                v10 = v49;
                goto LABEL_28;
              }

LABEL_22:
              [v9 setUnsigned:"signatureResult" value:v18];
              dataStore = [(KTContextVerifier *)self dataStore];
              v52 = 0;
              v35 = [dataStore persistAndRefaultObject:v9 error:&v52];
              v36 = v52;

              if ((v35 & 1) == 0)
              {
                if (qword_10039CB50 != -1)
                {
                  sub_10025D518();
                }

                v39 = qword_10039CB58;
                if (os_log_type_enabled(qword_10039CB58, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v61 = v36;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "failed to persist signature verified SMTS: %@", buf, 0xCu);
                }

                if (v36)
                {
                  dataStore2 = [(KTContextVerifier *)selfCopy dataStore];
                  [dataStore2 reportCoreDataPersistEventForLocation:@"handlePendingSigSMTs" underlyingError:v36];

                  v41 = v49;
                  if (!v19)
                  {
                    v19 = v36;
                  }
                }

                else
                {
                  v41 = v49;
                }

                objc_autoreleasePoolPop(v41);
                goto LABEL_42;
              }

              if (error && v19)
              {
                v37 = v19;
                *error = v19;
              }

              self = selfCopy;
              goto LABEL_27;
            }

            receiptTime = [v9 receiptTime];
            [receiptTime timeIntervalSinceNow];
            v28 = -v27;

            v29 = +[TransparencyAnalytics logger];
            v30 = [NSNumber numberWithDouble:v28];
            [(KTContextVerifier *)selfCopy applicationID];
            v32 = v31 = v6;
            v33 = [TransparencyAnalytics formatEventName:@"VerifySMTTime" application:v32];
            [v29 logMetric:v30 withName:v33];

            self = selfCopy;
            v6 = v31;
            v7 = v45;
          }

          else
          {
            v29 = [v9 smt];
            [v6 addObject:v29];
          }

          goto LABEL_22;
        }

        v19 = v14;
      }

      else
      {
        v19 = 0;
      }

      v23 = [v9 smt];
      [v6 addObject:v23];

      v24 = [TransparencyError errorWithDomain:v48 code:-72 underlyingError:v19 description:@"SMT from DB failed to parse"];
      [(KTContextVerifier *)self deleteSMT:v9 error:v24];

      if (qword_10039CB50 != -1)
      {
        sub_10025D540();
      }

      v25 = qword_10039CB58;
      if (os_log_type_enabled(qword_10039CB58, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v61 = v19;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "SMT from DB failed to parse: %@", buf, 0xCu);
      }

LABEL_28:

      objc_autoreleasePoolPop(v10);
      v8 = v8 + 1;
    }

    while (v51 != v8);
    v38 = [v7 countByEnumeratingWithState:&v55 objects:v62 count:16];
    v51 = v38;
    if (v38)
    {
      continue;
    }

    break;
  }

LABEL_42:

  if ([v6 count])
  {
    v42 = v6;
  }

  else
  {
    v42 = 0;
  }

  v43 = v42;

  return v42;
}

+ (int64_t)verifyDeviceMutation:(id)mutation mapLeaf:(id)leaf
{
  mutationCopy = mutation;
  leafCopy = leaf;
  if ([mutationCopy mutationType] != 1 && objc_msgSend(mutationCopy, "mutationType") != 2 && objc_msgSend(mutationCopy, "mutationType") != 4 && objc_msgSend(mutationCopy, "mutationType") != 5)
  {
    v10 = -71;
    goto LABEL_23;
  }

  if (![mutationCopy hasOptInExtension])
  {
    goto LABEL_7;
  }

  getOptInOutWithExt = [mutationCopy getOptInOutWithExt];
  idsDeviceMutation = [mutationCopy idsDeviceMutation];
  accountKeyHash = [idsDeviceMutation accountKeyHash];
  v10 = [KTContextVerifier verifyOptInOutWithExtMerged:getOptInOutWithExt accountKeyHash:accountKeyHash mapLeaf:leafCopy pendingAccountAdds:0];

  if (!v10)
  {
LABEL_7:
    idsDeviceMutation2 = [mutationCopy idsDeviceMutation];
    accountKeyHash2 = [idsDeviceMutation2 accountKeyHash];
    idsDeviceMutation3 = [mutationCopy idsDeviceMutation];
    deviceIdHash = [idsDeviceMutation3 deviceIdHash];
    idsDeviceMutation4 = [mutationCopy idsDeviceMutation];
    appVersion = [idsDeviceMutation4 appVersion];
    idsDeviceMutation5 = [mutationCopy idsDeviceMutation];
    clientDataHash = [idsDeviceMutation5 clientDataHash];
    v19 = [leafCopy recordForAccountKeyHash:accountKeyHash2 deviceIdHash:deviceIdHash appVersion:appVersion clientDataHash:clientDataHash];

    if (v19)
    {
      markedForDeletionMs = [v19 markedForDeletionMs];
      mutationType = [mutationCopy mutationType];
      if (markedForDeletionMs)
      {
        if (mutationType == 4 || mutationType == 1)
        {
          markedForDeletionMs2 = [v19 markedForDeletionMs];
          if (markedForDeletionMs2 <= [mutationCopy mutationMs])
          {
            v10 = -70;
LABEL_22:

            goto LABEL_23;
          }
        }
      }

      else if (mutationType != 1 && [mutationCopy mutationType] != 4)
      {
        addedMs = [v19 addedMs];
        if (addedMs < [mutationCopy mutationMs])
        {
          v10 = -69;
          goto LABEL_22;
        }
      }
    }

    else if ([mutationCopy mutationType] == 1 || objc_msgSend(mutationCopy, "mutationType") == 4)
    {
      idsDeviceMutation6 = [mutationCopy idsDeviceMutation];
      accountKeyHash3 = [idsDeviceMutation6 accountKeyHash];
      v25 = [leafCopy accountForAccountKeyHash:accountKeyHash3];

      LOBYTE(idsDeviceMutation6) = [v25 hasOptInAfter:{objc_msgSend(mutationCopy, "mutationMs")}];
      if ((idsDeviceMutation6 & 1) == 0)
      {
        v10 = -68;
        goto LABEL_22;
      }
    }

    v10 = 0;
    goto LABEL_22;
  }

LABEL_23:

  return v10;
}

+ (int64_t)verifyOptInOutMutationMerged:(id)merged mapLeaf:(id)leaf pendingAccountAdds:(id)adds
{
  addsCopy = adds;
  leafCopy = leaf;
  mergedCopy = merged;
  v10 = [[OptInOutWithExt alloc] initWithMutation:mergedCopy];
  accountKeyHash = [mergedCopy accountKeyHash];

  v12 = [KTContextVerifier verifyOptInOutWithExtMerged:v10 accountKeyHash:accountKeyHash mapLeaf:leafCopy pendingAccountAdds:addsCopy];
  return v12;
}

+ (int64_t)verifyOptInOutWithExtMerged:(id)merged accountKeyHash:(id)hash mapLeaf:(id)leaf pendingAccountAdds:(id)adds
{
  mergedCopy = merged;
  hashCopy = hash;
  addsCopy = adds;
  v12 = [leaf accountForAccountKeyHash:hashCopy];
  if ((v12 || [addsCopy containsObject:hashCopy]) && ((objc_msgSend(v12, "isActive:", objc_msgSend(mergedCopy, "timestampMs")) & 1) != 0 || objc_msgSend(addsCopy, "containsObject:", hashCopy)))
  {
    v34 = 0;
    v13 = [v12 sortedOptInOutHistory:&v34];
    v14 = v34;
    if (v13)
    {
      v15 = -287;
      if ([v13 count] && !v14)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        reverseObjectEnumerator = [v13 reverseObjectEnumerator];
        allObjects = [reverseObjectEnumerator allObjects];

        v18 = [allObjects countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v18)
        {
          v19 = v18;
          v28 = 0;
          v29 = addsCopy;
          v20 = *v31;
          while (2)
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v31 != v20)
              {
                objc_enumerationMutation(allObjects);
              }

              v22 = *(*(&v30 + 1) + 8 * i);
              timestampMs = [v22 timestampMs];
              if (timestampMs == [mergedCopy timestampMs])
              {
                optIn = [v22 optIn];
                if (optIn == [mergedCopy optIn])
                {
                  v15 = 0;
                  goto LABEL_27;
                }
              }

              else
              {
                timestampMs2 = [v22 timestampMs];
                if (timestampMs2 < [mergedCopy timestampMs])
                {
                  optIn2 = [v22 optIn];
                  if (optIn2 != [mergedCopy optIn])
                  {
                    v15 = -288;
                  }

                  else
                  {
                    v15 = 0;
                  }

                  goto LABEL_27;
                }

                [v22 timestampMs];
                [mergedCopy timestampMs];
              }
            }

            v19 = [allObjects countByEnumeratingWithState:&v30 objects:v35 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }

          v15 = -288;
LABEL_27:
          v14 = v28;
          addsCopy = v29;
        }

        else
        {
          v15 = -288;
        }
      }
    }

    else
    {
      v15 = -287;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)failSMTsIfOverMMD:(id)d skipOptInOut:(BOOL)out proof:(id)proof underlyingError:(id)error errorCode:(int64_t)code analyticsData:(id)data
{
  outCopy = out;
  dCopy = d;
  proofCopy = proof;
  errorCopy = error;
  dataCopy = data;
  v17 = [dCopy mutableCopy];
  if (outCopy)
  {
    v33 = dataCopy;
    v34 = errorCopy;
    codeCopy = code;
    v36 = proofCopy;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v37 = dCopy;
    obj = dCopy;
    v18 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v43;
      v21 = kTransparencyErrorDecode;
      do
      {
        v22 = 0;
        do
        {
          if (*v43 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v42 + 1) + 8 * v22);
          v24 = [v23 smt];

          if (v24 && ([v23 smt], v25 = objc_claimAutoreleasedReturnValue(), v41 = 0, +[SignedObjectHolder parseFromData:error:](SignedMutationTimestamp, "parseFromData:error:", v25, &v41), v26 = objc_claimAutoreleasedReturnValue(), v24 = v41, v25, v26))
          {
            v40 = v24;
            v27 = [v26 parsedMutationWithError:&v40];
            v28 = v40;

            if ([v27 mutationType] == 3 || objc_msgSend(v27, "mutationType") == 6)
            {
              [v17 removeObject:v23];
              [v23 setMergeResult:1];
            }

            v24 = v28;
          }

          else
          {
            [v17 removeObject:v23];
            v29 = [TransparencyError errorWithDomain:v21 code:-72 underlyingError:v24 description:@"SMT from DB failed to parse"];
            [(KTContextVerifier *)self deleteSMT:v23 error:v29];

            if (qword_10039CB50 != -1)
            {
              sub_10025D568();
            }

            v30 = qword_10039CB58;
            if (os_log_type_enabled(qword_10039CB58, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v47 = v24;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "SMT from DB failed to parse: %@", buf, 0xCu);
            }
          }

          v22 = v22 + 1;
        }

        while (v19 != v22);
        v19 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v19);
    }

    proofCopy = v36;
    dCopy = v37;
    errorCopy = v34;
    code = codeCopy;
    dataCopy = v33;
  }

  v31 = [(KTContextVerifier *)self failSMTsIfOverMMD:v17 proof:proofCopy underlyingError:errorCopy errorCode:code analyticsData:dataCopy];

  return v31;
}

- (BOOL)verifyKTSMTsMerged:(id)merged mapLeaf:(id)leaf analyticsData:(id)data
{
  mergedCopy = merged;
  leafCopy = leaf;
  dataCopy = data;
  v62 = +[NSMutableArray array];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v9 = mergedCopy;
  v10 = [v9 countByEnumeratingWithState:&v74 objects:v87 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 1;
    v70 = *v75;
    v68 = kTransparencyErrorDecode;
    v66 = v9;
    while (1)
    {
      v14 = 0;
      v67 = v11;
      do
      {
        if (*v75 != v70)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v74 + 1) + 8 * v14);
        v16 = [v15 smt];

        if (v16)
        {
          v69 = v13;
          v17 = [v15 smt];
          v73 = v12;
          v18 = [(SignedObjectHolder *)SignedMutationTimestamp parseFromData:v17 error:&v73];
          v19 = v73;

          if (v18)
          {
            v72 = v19;
            v20 = [v18 parsedMutationWithError:&v72];
            v12 = v72;

            if (!v20)
            {
              v24 = [TransparencyError errorWithDomain:v68 code:-73 underlyingError:v12 description:@"Mutation failed to parse"];
              [(KTContextVerifier *)self deleteSMT:v15 error:v24];

              if (qword_10039CB50 != -1)
              {
                sub_10025D608();
              }

              v25 = qword_10039CB58;
              if (os_log_type_enabled(qword_10039CB58, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v79 = v12;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Mutation failed to parse: %@", buf, 0xCu);
              }

              v13 = 0;
              goto LABEL_58;
            }

            mutationType = [v20 mutationType];
            if (mutationType <= 2)
            {
              if (!mutationType)
              {
                v27 = -71;
                goto LABEL_38;
              }

              if (mutationType == 1)
              {
                goto LABEL_34;
              }

              if (mutationType != 2)
              {
                goto LABEL_43;
              }
            }

            else
            {
              if (mutationType <= 4)
              {
                if (mutationType == 3)
                {
                  if (qword_10039CB50 != -1)
                  {
                    sub_10025D590();
                  }

                  v35 = qword_10039CB58;
                  if (os_log_type_enabled(qword_10039CB58, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "WARNING: Skipping deprecated mutation type OPT_IN_OUT_MUTATION", buf, 2u);
                  }
                }

                else
                {
LABEL_34:
                  v28 = [KTContextVerifier verifyDeviceMutation:v20 mapLeaf:leafCopy];
                  if (v28)
                  {
                    v27 = v28;
                    idsDeviceMutation = [v20 idsDeviceMutation];
                    accountKeyHash = [idsDeviceMutation accountKeyHash];

                    if (accountKeyHash)
                    {
                      idsDeviceMutation2 = [v20 idsDeviceMutation];
                      accountKeyHash2 = [idsDeviceMutation2 accountKeyHash];
                      [v62 addObject:accountKeyHash2];
                    }

LABEL_38:
                    v86 = v15;
                    v33 = [NSArray arrayWithObjects:&v86 count:1];
                    v34 = [(KTContextVerifier *)self failSMTsIfOverMMD:v33 proof:0 underlyingError:0 errorCode:v27 analyticsData:dataCopy];

                    v13 = (v34 ^ 1) & v69;
LABEL_48:
                    dataStore = [(KTContextVerifier *)self dataStore];
                    v71 = v12;
                    v57 = [dataStore persistAndRefaultObject:v15 error:&v71];
                    v58 = v71;

                    if (v57)
                    {
                      v12 = v58;
                      v9 = v66;
                    }

                    else
                    {
                      if (qword_10039CB50 != -1)
                      {
                        sub_10025D5E0();
                      }

                      v59 = qword_10039CB58;
                      v9 = v66;
                      if (os_log_type_enabled(qword_10039CB58, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v79 = v58;
                        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "failed to save verified KTSMTs: %@", buf, 0xCu);
                      }

                      if (v58)
                      {
                        dataStore2 = [(KTContextVerifier *)self dataStore];
                        [dataStore2 reportCoreDataPersistEventForLocation:@"verifyKTSMTsMerged" underlyingError:v58];

                        v12 = v58;
                      }

                      else
                      {
                        v12 = 0;
                      }
                    }

                    v11 = v67;
LABEL_58:

                    goto LABEL_59;
                  }
                }

LABEL_43:
                if (qword_10039CB50 != -1)
                {
                  sub_10025D5B8();
                }

                v36 = qword_10039CB58;
                if (os_log_type_enabled(qword_10039CB58, OS_LOG_TYPE_DEFAULT))
                {
                  v37 = v36;
                  application = [v15 application];
                  v39 = [v15 uri];
                  mutationMs = [v15 mutationMs];
                  *buf = 138544130;
                  v79 = application;
                  v80 = 2160;
                  v81 = 1752392040;
                  v82 = 2112;
                  v83 = v39;
                  v84 = 2048;
                  v85 = mutationMs;
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "verified SMT inclusion for %{public}@/%{mask.hash}@ mutationMs %lld", buf, 0x2Au);
                }

                v41 = +[TransparencyAnalytics logger];
                +[NSDate kt_currentTimeMs];
                v43 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v42 - [v20 mutationMs]);
                [(KTContextVerifier *)self applicationID];
                v65 = v20;
                v45 = v44 = self;
                v46 = [TransparencyAnalytics formatEventName:@"SmtMergeDelay" application:v45];
                [v41 logMetric:v43 withName:v46];

                v47 = +[TransparencyAnalytics logger];
                receiptTime = [v15 receiptTime];
                [receiptTime timeIntervalSinceNow];
                v50 = [NSNumber numberWithDouble:v49 * -1000.0];
                applicationID = [(KTContextVerifier *)v44 applicationID];
                v52 = [TransparencyAnalytics formatEventName:@"SmtDeviceMergeDelay" application:applicationID];
                [v47 logMetric:v50 withName:v52];

                self = v44;
                v20 = v65;

                v53 = +[TransparencyAnalytics logger];
                applicationID2 = [(KTContextVerifier *)self applicationID];
                v55 = [TransparencyAnalytics formatEventName:@"VerifySmtInclusionEvent" application:applicationID2];
                [v53 logSuccessForEventNamed:v55];

                [v15 setMergeResult:1];
                v13 = v69;
                goto LABEL_48;
              }

              if (mutationType != 5)
              {
                if (mutationType != 6)
                {
                  goto LABEL_43;
                }

                optInOutMutation = [v20 optInOutMutation];
                v27 = [KTContextVerifier verifyOptInOutMutationMerged:optInOutMutation mapLeaf:leafCopy pendingAccountAdds:v62];

LABEL_32:
                if (v27)
                {
                  goto LABEL_38;
                }

                goto LABEL_43;
              }
            }

            v27 = [KTContextVerifier verifyDeviceMutation:v20 mapLeaf:leafCopy];
            goto LABEL_32;
          }

          v12 = v19;
        }

        v22 = [TransparencyError errorWithDomain:v68 code:-72 underlyingError:v12 description:@"SMT from DB failed to parse"];
        [(KTContextVerifier *)self deleteSMT:v15 error:v22];

        if (qword_10039CB50 != -1)
        {
          sub_10025D630();
        }

        v23 = qword_10039CB58;
        if (os_log_type_enabled(qword_10039CB58, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v79 = v12;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "SMT from DB failed to parse: %@", buf, 0xCu);
        }

        v13 = 0;
LABEL_59:
        v14 = v14 + 1;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v74 objects:v87 count:16];
      if (!v11)
      {
        goto LABEL_63;
      }
    }
  }

  v12 = 0;
  LOBYTE(v13) = 1;
LABEL_63:

  return v13 & 1;
}

- (BOOL)verifyKTSMTsMerged:(id)merged queryResponse:(id)response uri:(id)uri
{
  mergedCopy = merged;
  responseCopy = response;
  uriCopy = uri;
  if (mergedCopy && [mergedCopy count])
  {
    metadata = [responseCopy metadata];
    v12 = kTransparencyResponseMetadataKeyServerHint;
    v13 = [metadata objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

    metadata2 = [responseCopy metadata];
    v15 = [metadata2 objectForKeyedSubscript:@"APS"];

    if (v13 | v15)
    {
      v16 = +[NSMutableDictionary dictionary];
      v17 = v16;
      if (v13)
      {
        [v16 setObject:v13 forKey:v12];
      }

      if (v15)
      {
        [v17 setObject:&__kCFBooleanTrue forKey:@"APS"];
      }
    }

    else
    {
      v17 = 0;
    }

    if ([responseCopy status] == 1)
    {
      v44 = v15;
      v18 = [TransparencyMapInclusionProofVerifier alloc];
      applicationKeyStore = [(KTContextVerifier *)self applicationKeyStore];
      applicationID = [(KTContextVerifier *)self applicationID];
      v21 = [(TransparencyMapInclusionProofVerifier *)v18 initWithKeyStore:applicationKeyStore application:applicationID];

      inclusionProof = [responseCopy inclusionProof];
      v43 = v21;
      [inclusionProof setVerifier:v21];

      inclusionProof2 = [responseCopy inclusionProof];
      dataStore = [(KTContextVerifier *)self dataStore];
      [inclusionProof2 setDataStore:dataStore];

      inclusionProof3 = [responseCopy inclusionProof];
      metadata3 = [responseCopy metadata];
      v27 = [metadata3 objectForKeyedSubscript:v12];
      [inclusionProof3 setMetadataValue:v27 key:v12];

      inclusionProof4 = [responseCopy inclusionProof];
      v46 = 0;
      v29 = [inclusionProof4 verifyWithError:&v46];
      v30 = v46;

      inclusionProof5 = [responseCopy inclusionProof];
      v32 = inclusionProof5;
      if (v29 == 1)
      {
        v45 = v30;
        v33 = [inclusionProof5 mapLeafWithError:&v45];
        v34 = v45;

        if (v33)
        {
          LOBYTE(self) = [(KTContextVerifier *)self verifyKTSMTsMerged:mergedCopy mapLeaf:v33 analyticsData:v17];
          v32 = v33;
          v30 = v34;
        }

        else
        {
          [responseCopy inclusionProof];
          v38 = v34;
          v39 = v42 = v34;
          data = [v39 data];
          LODWORD(self) = ![(KTContextVerifier *)self failSMTsIfOverMMD:mergedCopy proof:data underlyingError:v38 errorCode:-79 analyticsData:v17];

          v32 = 0;
          v30 = v42;
        }
      }

      else
      {
        data2 = [inclusionProof5 data];
        LODWORD(self) = ![(KTContextVerifier *)self failSMTsIfOverMMD:mergedCopy proof:data2 underlyingError:v30 errorCode:-67 analyticsData:v17];
      }

      v15 = v44;
    }

    else
    {
      v30 = +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", kTransparencyErrorServer, [responseCopy status], @"Query response indicates server failure: %d", objc_msgSend(responseCopy, "status"));
      v35 = [responseCopy status] == 7;
      data3 = [responseCopy data];
      LODWORD(self) = ![(KTContextVerifier *)self failSMTsIfOverMMD:mergedCopy skipOptInOut:v35 proof:data3 underlyingError:v30 errorCode:-306 analyticsData:v17];
    }
  }

  else
  {
    LOBYTE(self) = 1;
  }

  return self;
}

- (KTContextVerifier)initWithApplicationKeyStore:(id)store dataStore:(id)dataStore applicationID:(id)d context:(id)context
{
  storeCopy = store;
  dataStoreCopy = dataStore;
  dCopy = d;
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = KTContextVerifier;
  v15 = [(KTContextVerifier *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_applicationID, d);
    objc_storeStrong(&v16->_applicationKeyStore, store);
    objc_storeStrong(&v16->_dataStore, dataStore);
    objc_storeWeak(&v16->_context, contextCopy);
  }

  return v16;
}

- (unint64_t)checkResponseFreshness:(id)freshness smh:(id)smh receiptDate:(id)date error:(id *)error
{
  freshnessCopy = freshness;
  smhCopy = smh;
  dateCopy = date;
  if (!dateCopy)
  {
    dateCopy = +[NSDate date];
  }

  if (![freshnessCopy count] || (v13 = -[KTContextVerifier verifySMTTimestamps:receiptDate:error:](self, "verifySMTTimestamps:receiptDate:error:", freshnessCopy, dateCopy, error), v13 == 1))
  {
    object = [smhCopy object];
    if (object && (v15 = object, v16 = [smhCopy hasSignature], v15, v16))
    {
      applicationKeyStore = [(KTContextVerifier *)self applicationKeyStore];
      appSthKeyStore = [applicationKeyStore appSthKeyStore];
      signatureVerifier = [appSthKeyStore signatureVerifier];
      dataStore = [(KTContextVerifier *)self dataStore];
      v21 = [SignedMapHead signedTypeWithObject:smhCopy verifier:signatureVerifier dataStore:dataStore];

      applicationKeyStore2 = [(KTContextVerifier *)self applicationKeyStore];
      [v21 setOverrideBeginTime:{objc_msgSend(applicationKeyStore2, "patLogBeginningMs")}];

      [dateCopy timeIntervalSinceReferenceDate];
      v13 = [v21 verifyMMD:error error:?];
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

+ (BOOL)verifyServerLoggableDatas:(id)datas againstSyncedLoggableDatas:(id)loggableDatas cloudDevices:(id)devices error:(id *)error
{
  datasCopy = datas;
  loggableDatasCopy = loggableDatas;
  devicesCopy = devices;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = datasCopy;
  v10 = [datasCopy countByEnumeratingWithState:&v61 objects:v70 count:16];
  v53 = v10;
  if (!v10)
  {
    v43 = 1;
    goto LABEL_48;
  }

  v50 = 0;
  v52 = *v62;
  v46 = 1;
  *&v11 = 138412546;
  v45 = v11;
  v48 = devicesCopy;
  do
  {
    v12 = 0;
    do
    {
      if (*v62 != v52)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v61 + 1) + 8 * v12);
      deviceID = [v13 deviceID];
      clientData = [v13 clientData];
      v16 = [devicesCopy fetchSyncedLoggableDataByPushToken:deviceID registrationData:clientData];

      if ([devicesCopy disableKTSyncabledKVSStore])
      {
        if (v16)
        {
          goto LABEL_40;
        }

        v17 = -101;
LABEL_30:
        v56 = v16;
        if (error && *error)
        {
          v18 = *error;
        }

        else
        {
          v18 = 0;
        }

        v31 = +[NSMutableDictionary dictionary];
        clientData2 = [v13 clientData];
        kt_hexString = [clientData2 kt_hexString];
        [v31 setObject:kt_hexString forKeyedSubscript:@"clientData"];

        deviceID2 = [v13 deviceID];
        kt_hexString2 = [deviceID2 kt_hexString];
        [v31 setObject:kt_hexString2 forKeyedSubscript:@"deviceID"];

        v36 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:v17 errorLevel:4 underlyingError:v18 userinfo:v31 description:@"IDS server data missing from syncedData"];

        if (qword_10039CB60 != -1)
        {
          sub_10025D66C();
        }

        v37 = qword_10039CB68;
        if (os_log_type_enabled(qword_10039CB68, OS_LOG_TYPE_ERROR))
        {
          v38 = v37;
          deviceID3 = [v13 deviceID];
          kt_hexString3 = [deviceID3 kt_hexString];
          clientData3 = [v13 clientData];
          [clientData3 kt_hexString];
          v42 = v55 = v12;
          *buf = v45;
          v66 = kt_hexString3;
          v67 = 2112;
          v68 = v42;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "IDS server data (deviceId: %@, clientData: %@) missing from syncedData", buf, 0x16u);

          v12 = v55;
        }

        [v13 setNotInSyncedData:1];
        [v13 setResult:0];
        [v13 setFailure:v36];

        v46 = 0;
        v50 = v36;
LABEL_39:

        v16 = v56;
        goto LABEL_40;
      }

      v54 = v12;
      v56 = v16;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v18 = loggableDatasCopy;
      v19 = [v18 countByEnumeratingWithState:&v57 objects:v69 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v58;
        v17 = -101;
        while (2)
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v58 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v57 + 1) + 8 * i);
            deviceID4 = [v13 deviceID];
            deviceID5 = [v23 deviceID];
            v26 = [deviceID4 isEqualToData:deviceID5];

            clientData4 = [v13 clientData];
            clientData5 = [v23 clientData];
            v29 = [clientData4 isEqualToData:clientData5];

            v30 = v26 ^ 1;
            if ((v26 ^ 1) & 1) == 0 && (v29)
            {
              devicesCopy = v48;
              v12 = v54;
              goto LABEL_39;
            }

            if ((v30 & v29) != 1 || v17 == -88)
            {
              if (((v30 | v29) & 1) != 0 || v17 == -87)
              {
                if ((v26 | v29))
                {
                  v17 = -89;
                }
              }

              else
              {
                v17 = -88;
              }
            }

            else
            {
              v17 = -87;
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v57 objects:v69 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v17 = -101;
      }

      devicesCopy = v48;
      v12 = v54;
      v16 = v56;
      if (!v56)
      {
        goto LABEL_30;
      }

LABEL_40:

      v12 = v12 + 1;
    }

    while (v12 != v53);
    v53 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
  }

  while (v53);
  if (error)
  {
    v10 = v50;
    if (v50)
    {
      v10 = v50;
      *error = v10;
    }
  }

  else
  {
    v10 = v50;
  }

  v43 = v46;
LABEL_48:

  return v43 & 1;
}

- (unint64_t)verifyUriWitness:(id)witness uri:(id)uri error:(id *)error
{
  uriCopy = uri;
  witnessCopy = witness;
  type = [witnessCopy type];
  vrfKey = [(KTApplicationPublicKeyStore *)self->_applicationKeyStore vrfKey];
  v12 = [TransparencyVRFVerifier verifierOfType:type key:vrfKey];

  [witnessCopy setVerifier:v12];
  v13 = [uriCopy dataUsingEncoding:4];
  [witnessCopy setMessage:v13];

  v14 = [witnessCopy verifyWithError:error];
  if (v14 != 1)
  {
    if (error)
    {
      *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-104 underlyingError:*error description:@"URI VRF witness failed for %@", uriCopy];
    }

    if (qword_10039CB60 != -1)
    {
      sub_10025D694();
    }

    v15 = qword_10039CB68;
    if (os_log_type_enabled(qword_10039CB68, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = uriCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "URI VRF witness failed for %@", buf, 0xCu);
    }
  }

  return v14;
}

- (unint64_t)verifyAccountKeyWitness:(id)witness accountKey:(id)key error:(id *)error
{
  keyCopy = key;
  witnessCopy = witness;
  type = [witnessCopy type];
  vrfKey = [(KTApplicationPublicKeyStore *)self->_applicationKeyStore vrfKey];
  v12 = [TransparencyVRFVerifier verifierOfType:type key:vrfKey];

  [witnessCopy setVerifier:v12];
  [witnessCopy setMessage:keyCopy];
  v13 = [witnessCopy verifyWithError:error];

  if (v13 != 1)
  {
    if (error)
    {
      *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-77 underlyingError:*error description:@"AccountKey VRF witness failed for %@", keyCopy];
    }

    if (qword_10039CB60 != -1)
    {
      sub_10025D6A8();
    }

    v14 = qword_10039CB68;
    if (os_log_type_enabled(qword_10039CB68, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = keyCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "AccountKey VRF witness failed for %@", buf, 0xCu);
    }
  }

  return v13;
}

+ (BOOL)verifyLoggableDataSignatures:(id)signatures accountKey:(id)key error:(id *)error
{
  signaturesCopy = signatures;
  keyCopy = key;
  v9 = +[NSMutableDictionary dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = signaturesCopy;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v40 count:16];
  v12 = v11 == 0;
  if (!v11)
  {
    v14 = 0;
    v25 = v10;
LABEL_20:

    goto LABEL_21;
  }

  v13 = v11;
  errorCopy = error;
  v31 = v11 == 0;
  v32 = v9;
  v14 = 0;
  v15 = *v35;
  v16 = 1;
  do
  {
    v17 = v10;
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v35 != v15)
      {
        objc_enumerationMutation(v17);
      }

      v19 = *(*(&v34 + 1) + 8 * i);
      v33 = 0;
      v20 = [v19 verifySignatureWithAccountKey:keyCopy error:{&v33, errorCopy}];
      v21 = v33;
      if ((v20 & 1) == 0)
      {
        [v19 setResult:0];
        [v19 setFailure:v21];
        deviceID = [v19 deviceID];
        kt_hexString = [deviceID kt_hexString];
        [v32 setObject:v21 forKeyedSubscript:kt_hexString];

        v24 = v21;
        v16 = 0;
        v14 = v24;
      }
    }

    v10 = v17;
    v13 = [v17 countByEnumeratingWithState:&v34 objects:v40 count:16];
  }

  while (v13);

  if ((v16 & 1) == 0)
  {
    v9 = v32;
    if (v32)
    {
      v38 = @"loggableDataErrors";
      v39 = v32;
      v25 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    }

    else
    {
      v25 = 0;
    }

    domain = [v14 domain];
    v27 = +[TransparencyError errorWithDomain:code:userInfo:](TransparencyError, "errorWithDomain:code:userInfo:", domain, [v14 code], v25);

    v12 = v31;
    if (errorCopy && v27)
    {
      v28 = v27;
      *errorCopy = v27;
    }

    goto LABEL_20;
  }

  v12 = 1;
  v9 = v32;
LABEL_21:

  return v12;
}

- (KTContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (unint64_t)checkQueryResponseFreshness:(id)freshness receiptDate:(id)date error:(id *)error
{
  dateCopy = date;
  freshnessCopy = freshness;
  pendingSmtsArray = [freshnessCopy pendingSmtsArray];
  inclusionProof = [freshnessCopy inclusionProof];

  mapEntry = [inclusionProof mapEntry];
  v13 = [mapEntry smh];
  v14 = [(KTContextVerifier *)self checkResponseFreshness:pendingSmtsArray smh:v13 receiptDate:dateCopy error:error];

  return v14;
}

- (void)checkQueryResponseEpochs:(id)epochs
{
  epochsCopy = epochs;
  if ([epochsCopy hasInclusionProof])
  {
    inclusionProof = [epochsCopy inclusionProof];

    if (inclusionProof)
    {
      inclusionProof2 = [epochsCopy inclusionProof];
      if ([inclusionProof2 hasPerApplicationTreeEntry])
      {
        perApplicationTreeEntry = [inclusionProof2 perApplicationTreeEntry];
        if (perApplicationTreeEntry)
        {
          perApplicationTreeEntry4 = perApplicationTreeEntry;
          perApplicationTreeEntry2 = [inclusionProof2 perApplicationTreeEntry];
          if (![perApplicationTreeEntry2 hasSlh])
          {
LABEL_8:

            goto LABEL_9;
          }

          perApplicationTreeEntry3 = [inclusionProof2 perApplicationTreeEntry];
          v10 = [perApplicationTreeEntry3 slh];

          if (v10)
          {
            perApplicationTreeEntry4 = [inclusionProof2 perApplicationTreeEntry];
            perApplicationTreeEntry2 = [perApplicationTreeEntry4 slh];
            [(KTContextVerifier *)self checkHeadEpoch:perApplicationTreeEntry2];
            goto LABEL_8;
          }
        }
      }

LABEL_9:
      if (![inclusionProof2 hasTopLevelTreeEntry])
      {
        goto LABEL_15;
      }

      topLevelTreeEntry = [inclusionProof2 topLevelTreeEntry];
      if (!topLevelTreeEntry)
      {
        goto LABEL_15;
      }

      topLevelTreeEntry4 = topLevelTreeEntry;
      topLevelTreeEntry2 = [inclusionProof2 topLevelTreeEntry];
      if ([topLevelTreeEntry2 hasSlh])
      {
        topLevelTreeEntry3 = [inclusionProof2 topLevelTreeEntry];
        v15 = [topLevelTreeEntry3 slh];

        if (!v15)
        {
LABEL_15:

          goto LABEL_16;
        }

        topLevelTreeEntry4 = [inclusionProof2 topLevelTreeEntry];
        topLevelTreeEntry2 = [topLevelTreeEntry4 slh];
        [(KTContextVerifier *)self checkHeadEpoch:topLevelTreeEntry2];
      }

      goto LABEL_15;
    }
  }

LABEL_16:

  _objc_release_x1();
}

- (unint64_t)verifyInclusionProof:(id)proof mapLeaf:(id *)leaf error:(id *)error
{
  proofCopy = proof;
  v9 = [TransparencyMapInclusionProofVerifier alloc];
  applicationKeyStore = [(KTContextVerifier *)self applicationKeyStore];
  applicationID = [(KTContextVerifier *)self applicationID];
  v12 = [(TransparencyMapInclusionProofVerifier *)v9 initWithKeyStore:applicationKeyStore application:applicationID];

  [proofCopy setVerifier:v12];
  dataStore = [(KTContextVerifier *)self dataStore];
  [proofCopy setDataStore:dataStore];

  context = [(KTContextVerifier *)self context];
  optInServer = [context optInServer];
  [proofCopy setOptInServer:optInServer];

  v16 = [proofCopy verifyWithError:error];
  if (v16 == 1)
  {
    if (leaf)
    {
      v17 = [proofCopy mapLeafWithError:error];
      *leaf = v17;
      v16 = v17 != 0;
    }

    else
    {
      v16 = 1;
    }
  }

  return v16;
}

- (unint64_t)handleQueryResponse:(id)response queryRequest:(id)request receiptDate:(id)date fetchId:(id)id error:(id *)error rawDataHandler:(id)handler
{
  responseCopy = response;
  requestCopy = request;
  dateCopy = date;
  idCopy = id;
  handlerCopy = handler;
  v19 = -[KTContextVerifier checkServerStatus:error:](self, "checkServerStatus:error:", [responseCopy status], error);
  if (v19 == 1)
  {
    [(KTContextVerifier *)self checkQueryResponseEpochs:responseCopy];
    context = [(KTContextVerifier *)self context];
    v21 = [context ready:error];

    if (v21)
    {
      v22 = [(KTContextVerifier *)self checkQueryResponseFreshness:responseCopy receiptDate:dateCopy error:error];
      if (v22 == 1)
      {
        uriWitness = [responseCopy uriWitness];
        v24 = [requestCopy uri];
        v25 = [(KTContextVerifier *)self verifyUriWitness:uriWitness uri:v24 error:error];

        if (v25 == 1)
        {
          metadata = [responseCopy metadata];
          v27 = kTransparencyResponseMetadataKeyServerHint;
          v49 = [metadata objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

          if ([responseCopy hasInclusionProof] && (objc_msgSend(responseCopy, "inclusionProof"), v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
          {
            inclusionProof = [responseCopy inclusionProof];
            [inclusionProof setMetadataValue:v49 key:v27];

            inclusionProof2 = [responseCopy inclusionProof];
            v50 = 0;
            v25 = [(KTContextVerifier *)self verifyInclusionProof:inclusionProof2 mapLeaf:&v50 error:error];
            v48 = v50;

            if (v25 != 1)
            {
              if (qword_10039CC78 != -1)
              {
                sub_10025E6C0();
              }

              v31 = qword_10039CC80;
              if (os_log_type_enabled(qword_10039CC80, OS_LOG_TYPE_ERROR))
              {
                if (error)
                {
                  v32 = *error;
                }

                else
                {
                  v32 = 0;
                }

                *buf = 138543618;
                v52 = idCopy;
                v53 = 2112;
                v54 = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "QueryResponse for fetchId %{public}@ failed inclusion proof verification: %@", buf, 0x16u);
              }

              v46 = v48;
LABEL_43:

              goto LABEL_23;
            }
          }

          else
          {
            v48 = 0;
          }

          if ([responseCopy pendingSmtsArray_Count] && (objc_msgSend(responseCopy, "pendingSmtsArray"), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(requestCopy, "uri"), v41 = objc_claimAutoreleasedReturnValue(), v25 = -[KTContextVerifier verifySMTs:uri:serverHint:error:](self, "verifySMTs:uri:serverHint:error:", v40, v41, v49, error), v41, v40, v25 != 1))
          {
            if (qword_10039CC78 != -1)
            {
              sub_10025E6E8();
            }

            v47 = qword_10039CC80;
            v46 = v48;
            if (os_log_type_enabled(qword_10039CC80, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v52 = idCopy;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Pending SMT verification failed for fetchId %{public}@", buf, 0xCu);
            }
          }

          else
          {
            v42 = [requestCopy uri];
            uriWitness2 = [responseCopy uriWitness];
            output = [uriWitness2 output];
            pendingSmtsArray = [responseCopy pendingSmtsArray];
            v46 = v48;
            handlerCopy[2](handlerCopy, v42, output, v48, pendingSmtsArray, 0);

            v25 = 1;
          }

          goto LABEL_43;
        }

        if (qword_10039CC78 != -1)
        {
          sub_10025E6AC();
        }

        v38 = qword_10039CC80;
        if (os_log_type_enabled(qword_10039CC80, OS_LOG_TYPE_ERROR))
        {
          v34 = v38;
          v39 = [requestCopy uri];
          *buf = 138543874;
          v52 = idCopy;
          v53 = 2160;
          v54 = 1752392040;
          v55 = 2112;
          v56 = v39;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "QueryResponse for fetchId %{public}@ failed uri witness verification: %{mask.hash}@", buf, 0x20u);

          goto LABEL_17;
        }
      }

      else
      {
        v25 = v22;
        if (qword_10039CC78 != -1)
        {
          sub_10025E698();
        }

        v37 = qword_10039CC80;
        if (os_log_type_enabled(qword_10039CC80, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v52 = idCopy;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "QueryResponse for fetchId %{public}@ exceeded MMD", buf, 0xCu);
        }
      }
    }

    else
    {
      if (qword_10039CC78 != -1)
      {
        sub_10025E684();
      }

      v35 = qword_10039CC80;
      if (os_log_type_enabled(qword_10039CC80, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v52 = idCopy;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "QueryResponse for fetchId %{public}@ waiting for keystore refresh", buf, 0xCu);
      }

      v25 = 2;
    }
  }

  else
  {
    v25 = v19;
    if (qword_10039CC78 != -1)
    {
      sub_10025E670();
    }

    v33 = qword_10039CC80;
    if (os_log_type_enabled(qword_10039CC80, OS_LOG_TYPE_ERROR))
    {
      v34 = v33;
      *buf = 138543618;
      v52 = idCopy;
      v53 = 1024;
      LODWORD(v54) = [responseCopy status];
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "QueryResponse for fetchId %{public}@ server error: %d", buf, 0x12u);
LABEL_17:
    }
  }

LABEL_23:

  return v25;
}

- (unint64_t)handleQueryResponse:(id)response queryRequest:(id)request receiptDate:(id)date fetchId:(id)id error:(id *)error transparentDataHandler:(id)handler
{
  dateCopy = date;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100211468;
  v20[3] = &unk_10032A6B8;
  v20[4] = self;
  idCopy = id;
  v22 = dateCopy;
  handlerCopy = handler;
  v15 = dateCopy;
  v16 = handlerCopy;
  v17 = idCopy;
  v18 = [(KTContextVerifier *)self handleQueryResponse:response queryRequest:request receiptDate:v15 fetchId:v17 error:error rawDataHandler:v20];

  return v18;
}

- (unint64_t)handleInsertResponse:(id)response uri:(id)uri fetchId:(id)id error:(id *)error transparentDataHandler:(id)handler
{
  responseCopy = response;
  uriCopy = uri;
  idCopy = id;
  handlerCopy = handler;
  v16 = -[KTContextVerifier checkServerStatus:isInsert:error:](self, "checkServerStatus:isInsert:error:", [responseCopy status], 1, error);
  if (v16 == 1)
  {
    context = [(KTContextVerifier *)self context];
    v18 = [context ready:error];

    if (v18)
    {
      uriWitness = [responseCopy uriWitness];
      v20 = [(KTContextVerifier *)self verifyUriWitness:uriWitness uri:uriCopy error:error];

      if (v20 == 1)
      {
        v21 = [responseCopy smt];
        v46 = v21;
        v22 = [NSArray arrayWithObjects:&v46 count:1];
        serverEventInfo = [responseCopy serverEventInfo];
        v20 = [(KTContextVerifier *)self verifySMTs:v22 uri:uriCopy serverHint:serverEventInfo error:error];

        if (v20 == 1)
        {
          v43 = [KTTransparentData alloc];
          uriWitness2 = [responseCopy uriWitness];
          output = [uriWitness2 output];
          v26 = [responseCopy smt];
          v45 = v26;
          v27 = [NSArray arrayWithObjects:&v45 count:1];
          v44 = [(KTTransparentData *)v43 initWithUriVRFOutput:output mapLeaf:0 pendingSMTs:v27 error:error];

          applicationKeyStore = [(KTContextVerifier *)self applicationKeyStore];
          v29 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [applicationKeyStore patLogBeginningMs] / 1000.0);
          [(KTTransparentData *)v44 setCurrentTreeEpochBeginDate:v29];

          if (v44)
          {
            if ([(KTTransparentData *)v44 verifyServerInvariantsAt:0 error:error])
            {
              handlerCopy[2](handlerCopy, uriCopy, v44, 0);
              v20 = 1;
LABEL_42:

              goto LABEL_43;
            }

            if (qword_10039CC88 != -1)
            {
              sub_10025E7C4();
            }

            v38 = qword_10039CC90;
            if (!os_log_type_enabled(qword_10039CC90, OS_LOG_TYPE_ERROR))
            {
LABEL_41:
              v20 = 0;
              goto LABEL_42;
            }

            if (error)
            {
              v40 = *error;
            }

            else
            {
              v40 = 0;
            }

            *buf = 138543618;
            v48 = idCopy;
            v49 = 2112;
            v50 = v40;
            v41 = "InsertResponse for fetchId %{public}@ failed server invariant verification: %@";
          }

          else
          {
            if (qword_10039CC88 != -1)
            {
              sub_10025E7EC();
            }

            v38 = qword_10039CC90;
            if (!os_log_type_enabled(qword_10039CC90, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_41;
            }

            if (error)
            {
              v39 = *error;
            }

            else
            {
              v39 = 0;
            }

            *buf = 138543618;
            v48 = idCopy;
            v49 = 2112;
            v50 = v39;
            v41 = "InsertResponse for fetchId %{public}@ failed to build transparentData: %@";
          }

          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, v41, buf, 0x16u);
          goto LABEL_41;
        }

        if (qword_10039CC88 != -1)
        {
          sub_10025E79C();
        }

        v37 = qword_10039CC90;
        if (os_log_type_enabled(qword_10039CC90, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v48 = idCopy;
          v34 = "Pending SMT verification failed for fetchId %{public}@";
          v35 = v37;
          v36 = 12;
          goto LABEL_25;
        }
      }

      else
      {
        if (qword_10039CC88 != -1)
        {
          sub_10025E788();
        }

        v33 = qword_10039CC90;
        if (os_log_type_enabled(qword_10039CC90, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v48 = idCopy;
          v49 = 2160;
          v50 = 1752392040;
          v51 = 2112;
          v52 = uriCopy;
          v34 = "InsertResponse for fetchId %{public}@ failed uri witness verification: %{mask.hash}@";
          v35 = v33;
          v36 = 32;
LABEL_25:
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
        }
      }
    }

    else
    {
      if (qword_10039CC88 != -1)
      {
        sub_10025E774();
      }

      v32 = qword_10039CC90;
      if (os_log_type_enabled(qword_10039CC90, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v48 = idCopy;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "InsertResponse for fetchId %{public}@ waiting for keystore refresh", buf, 0xCu);
      }

      v20 = 2;
    }
  }

  else
  {
    v20 = v16;
    if (qword_10039CC88 != -1)
    {
      sub_10025E760();
    }

    v30 = qword_10039CC90;
    if (os_log_type_enabled(qword_10039CC90, OS_LOG_TYPE_ERROR))
    {
      v31 = v30;
      *buf = 138543618;
      v48 = idCopy;
      v49 = 1024;
      LODWORD(v50) = [responseCopy status];
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "InsertResponse for fetchId %{public}@ server error: %d", buf, 0x12u);
    }
  }

LABEL_43:

  return v20;
}

- (id)createErrorFromSTHFailure:(id)failure underlyingError:(id)error
{
  errorCopy = error;
  failureCopy = failure;
  errorDomain = [failureCopy errorDomain];
  errorCode = [failureCopy errorCode];

  v9 = [TransparencyError errorWithDomain:errorDomain code:errorCode underlyingError:errorCopy description:0];

  return v9;
}

- (id)createChainOfErrorsFromSTHFailures:(id)failures type:(unint64_t)type
{
  failuresCopy = failures;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allObjects = [failuresCopy allObjects];
  v8 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 verificationType] == type)
        {
          v14 = [(KTContextVerifier *)self createErrorFromSTHFailure:v13 underlyingError:v10];

          v10 = v14;
        }
      }

      v9 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)failExpiredSTHsForType:(unint64_t)type error:(id *)error
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100220560;
  v25 = sub_100220570;
  v26 = 0;
  v7 = +[NSMutableArray array];
  v8 = [NSDate dateWithTimeIntervalSinceNow:-kKTMaximumSTHProofDelay];
  dataStore = [(KTContextVerifier *)self dataStore];
  applicationID = [(KTContextVerifier *)self applicationID];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100220578;
  v16[3] = &unk_10032B210;
  typeCopy = type;
  errorCopy = error;
  v16[4] = self;
  v18 = &v21;
  v11 = v7;
  v17 = v11;
  [dataStore performForPendingSTHs:applicationID olderThan:v8 type:type error:error block:v16];

  if (error)
  {
    v12 = v22[5];
    if (v12)
    {
      *error = v12;
    }
  }

  if ([v11 count])
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  _Block_object_dispose(&v21, 8);

  return v14;
}

- (unint64_t)verifyConsistencyProofResponse:(id)response startRevision:(int64_t)revision receivedRevisions:(id)revisions error:(id *)error
{
  responseCopy = response;
  revisionsCopy = revisions;
  metadata = [responseCopy metadata];
  v12 = [metadata objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

  LODWORD(metadata) = [responseCopy application];
  logType = [responseCopy logType];
  if (metadata)
  {
    if (logType != 2)
    {
      goto LABEL_4;
    }

    applicationID = [(KTContextVerifier *)self applicationID];
    v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [responseCopy application]);
    v16 = [TransparencyApplication applicationIdentifierForValue:v15];
    v17 = [applicationID isEqualToString:v16];

    if ((v17 & 1) == 0)
    {
LABEL_4:
      if (error)
      {
        *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-187 description:@"LogConsistencyResponse for wrong application or tree"];
      }

      if (qword_10039CD08 != -1)
      {
        sub_10025F05C();
      }

      v18 = revisionsCopy;
      v19 = qword_10039CD10;
      if (!os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      v54 = 0;
      v20 = "LogConsistencyResponse for wrong application or tree";
      v21 = &v54;
LABEL_38:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v20, v21, 2u);
LABEL_39:
      v39 = 0;
      goto LABEL_40;
    }
  }

  else if (logType != 3 || (-[KTContextVerifier applicationID](self, "applicationID"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isEqualToString:kKTApplicationIdentifierTLT], v22, (v23 & 1) == 0))
  {
    if (error)
    {
      *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-186 description:@"LogConsistencyResponse omits application, but log type or verifier is not TLT"];
    }

    if (qword_10039CD08 != -1)
    {
      sub_10025F070();
    }

    v18 = revisionsCopy;
    v19 = qword_10039CD10;
    if (!os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 0;
    v20 = "LogConsistencyResponse omits application, but log type or verifier is not TLT";
    v21 = buf;
    goto LABEL_38;
  }

  if (![responseCopy responsesArray_Count])
  {
    v39 = 1;
    goto LABEL_42;
  }

  v24 = 0;
  v52 = 0x7FFFFFFFFFFFFFFFLL;
  v18 = revisionsCopy;
  do
  {
    responsesArray = [responseCopy responsesArray];
    v26 = [responsesArray objectAtIndexedSubscript:v24];

    if ([v26 hasStartSlh])
    {
      startSlh = [v26 startSlh];
      if (startSlh && ([v26 hasEndSlh] & 1) != 0)
      {
        endSlh = [v26 endSlh];

        if (endSlh)
        {
          startSlh2 = [v26 startSlh];
          v30 = [SignedLogHead signedTypeWithObject:startSlh2];

          v50 = v30;
          parsedLogHead = [v30 parsedLogHead];
          endSlh2 = [v26 endSlh];
          v33 = [SignedLogHead signedTypeWithObject:endSlh2];

          parsedLogHead2 = [v33 parsedLogHead];
          v49 = parsedLogHead;
          if ([parsedLogHead revision] == revision)
          {
            v35 = 1;
            v52 = v24;
          }

          else if (v52 == 0x7FFFFFFFFFFFFFFFLL)
          {
            revision = [parsedLogHead2 revision];
            v35 = 0;
            v38 = 0x7FFFFFFFFFFFFFFFLL;
            if (revision == revision)
            {
              v38 = v24 + 1;
            }

            v52 = v38;
          }

          else
          {
            v35 = 1;
          }

          v18 = revisionsCopy;
          if (!v35)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v18 = revisionsCopy;
        }
      }

      else
      {
      }
    }

    v36 = [(KTContextVerifier *)self verifyLogConsistencyResponse:v26 startRevision:revision receivedRevisions:v18 forwards:1 serverHint:v12 error:error];
    if (v36 != 1)
    {
      v39 = v36;

      goto LABEL_40;
    }

LABEL_22:

    ++v24;
  }

  while (v24 < [responseCopy responsesArray_Count]);
  v39 = 1;
  if (v52)
  {
    revisionCopy = revision;
    if (v52 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v41 = v52 - 1;
      v39 = 1;
      v42 = 1;
      while (1)
      {
        responsesArray2 = [responseCopy responsesArray];
        [responsesArray2 objectAtIndexedSubscript:v41];
        v44 = v12;
        v46 = v45 = v18;

        v47 = v45;
        v12 = v44;
        v48 = [(KTContextVerifier *)self verifyLogConsistencyResponse:v46 startRevision:revisionCopy receivedRevisions:v47 forwards:0 serverHint:v44 error:error];

        if (v48 != 1)
        {
          break;
        }

        ++v42;
        --v41;
        v18 = revisionsCopy;
        if (v42 > v52)
        {
          goto LABEL_40;
        }
      }

      v39 = v48;
LABEL_42:
      v18 = revisionsCopy;
    }
  }

LABEL_40:

  return v39;
}

- (id)verifySTHs:(id)hs error:(id *)error
{
  hsCopy = hs;
  v48 = +[NSMutableArray array];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v7 = hsCopy;
  v8 = [v7 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (!v8)
  {

    v10 = 0;
    goto LABEL_38;
  }

  v9 = v8;
  errorCopy = error;
  v10 = 0;
  v49 = *v56;
  obj = v7;
  do
  {
    v11 = 0;
    do
    {
      if (*v56 != v49)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v55 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      v14 = [v12 sth];
      if (v14 && (v15 = v14, v16 = [v12 isMapHead], v15, (v16 & 1) == 0))
      {
        v50 = v13;
        v18 = SignedLogHead;
        v19 = [v12 sth];
        v54 = v10;
        v20 = &v54;
        v21 = &v54;
      }

      else
      {
        v17 = [v12 sth];

        if (!v17)
        {
          goto LABEL_18;
        }

        v50 = v13;
        v18 = SignedMapHead;
        v19 = [v12 sth];
        v53 = v10;
        v20 = &v53;
        v21 = &v53;
      }

      dataStore = [(__objc2_class *)v18 parseFromData:v19 error:v21];
      v23 = *v20;

      if (!dataStore)
      {
        v10 = v23;
        v13 = v50;
LABEL_18:
        v36 = [v12 sth];
        [v48 addObject:v36];

        dataStore = [(KTContextVerifier *)self dataStore];
        [dataStore deleteObject:v12];
        goto LABEL_32;
      }

      applicationKeyStore = [(KTContextVerifier *)self applicationKeyStore];
      appSthKeyStore = [applicationKeyStore appSthKeyStore];
      signatureVerifier = [appSthKeyStore signatureVerifier];
      [dataStore setVerifier:signatureVerifier];

      v52 = v23;
      v27 = [dataStore verifyWithError:&v52];
      v10 = v52;

      [v12 setUnsigned:"signatureVerified" value:v27];
      if ([v12 signatureVerified] == 1)
      {
        Current = CFAbsoluteTimeGetCurrent();
        [v12 receiptTime];
        v30 = Current - v29;
        if ([v12 isMapHead])
        {
          v31 = @"VerifySMHTime";
        }

        else
        {
          v31 = @"VerifySTHTime";
        }

        applicationID = [(KTContextVerifier *)self applicationID];
        v33 = [TransparencyAnalytics formatEventName:v31 application:applicationID];

        v34 = +[TransparencyAnalytics logger];
        v35 = [NSNumber numberWithDouble:v30];
        [v34 logMetric:v35 withName:v33];
      }

      else
      {
        if ([v12 signatureVerified])
        {
          goto LABEL_22;
        }

        v33 = [v12 sth];
        [v48 addObject:v33];
      }

LABEL_22:
      dataStore2 = [(KTContextVerifier *)self dataStore];
      v51 = 0;
      v38 = [dataStore2 persistAndRefaultObject:v12 error:&v51];
      v39 = v51;

      if (v38)
      {
        goto LABEL_30;
      }

      if (qword_10039CD08 != -1)
      {
        sub_10025F084();
      }

      v40 = qword_10039CD10;
      if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v60 = v39;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "failed to save signature verified STHs: %@", buf, 0xCu);
      }

      if (!v39)
      {
LABEL_30:
        v13 = v50;
      }

      else
      {
        dataStore3 = [(KTContextVerifier *)self dataStore];
        [dataStore3 reportCoreDataPersistEventForLocation:@"verifySTHs" underlyingError:v39];

        v13 = v50;
        if (!v10)
        {
          v10 = v39;
        }
      }

LABEL_32:
      objc_autoreleasePoolPop(v13);
      v11 = v11 + 1;
    }

    while (v9 != v11);
    v7 = obj;
    v9 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  }

  while (v9);

  if (errorCopy && v10)
  {
    v42 = v10;
    *errorCopy = v10;
  }

LABEL_38:
  if ([v48 count])
  {
    v43 = v48;
  }

  else
  {
    v43 = 0;
  }

  v44 = v43;

  return v43;
}

- (BOOL)setInclusionVerifiedState:(unint64_t)state perApplicationTreeLogEntry:(id)entry failure:(id)failure error:(id *)error
{
  entryCopy = entry;
  failureCopy = failure;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 1;
  nodeBytes = [entryCopy nodeBytes];
  v13 = [(TransparencyGPBMessage *)PerApplicationTreeNode parseFromData:nodeBytes error:error];

  if (!v13)
  {
    if (qword_10039CD08 != -1)
    {
      sub_10025F0AC();
    }

    v14 = qword_10039CD10;
    if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v15 = *error;
      }

      else
      {
        v15 = 0;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "failed to parse PAT node from revision log inclusion proof: %@", &buf, 0xCu);
    }

    *(v51 + 24) = 0;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v57 = 0x3032000000;
  v58 = sub_100220560;
  v59 = sub_100220570;
  v60 = 0;
  if (([v13 hasObjectMapHead] & 1) == 0)
  {
    if (qword_10039CD08 != -1)
    {
      sub_10025F0D4();
    }

    v16 = qword_10039CD10;
    if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
    {
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Per application tree node is missing map head", v46, 2u);
    }

    if (error)
    {
      *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-203 description:@"Per application tree node is missing map head"];
    }

    *(v51 + 24) = 0;
  }

  *v46 = 0;
  v47 = v46;
  v48 = 0x2020000000;
  v49 = 0;
  if ([v13 hasObjectMapHead])
  {
    dataStore = [(KTContextVerifier *)self dataStore];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100222050;
    v36[3] = &unk_10032B338;
    v37 = v13;
    selfCopy = self;
    v39 = entryCopy;
    p_buf = &buf;
    stateCopy = state;
    v40 = failureCopy;
    v42 = v46;
    errorCopy = error;
    v43 = &v50;
    [dataStore performBlockAndWait:v36];
  }

  applicationID = [(KTContextVerifier *)self applicationID];
  v19 = [TransparencyAnalytics formatEventName:@"VerifyPATInclusionProofEvent" application:applicationID];

  if (!+[TransparencyAnalytics hasInternalDiagnostics])
  {
    goto LABEL_23;
  }

  metadata = [entryCopy metadata];
  v21 = kTransparencyResponseMetadataKeyServerHint;
  v22 = [metadata objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
  v23 = v22 == 0;

  if (v23)
  {
LABEL_23:
    v26 = 0;
  }

  else
  {
    v54 = v21;
    metadata2 = [entryCopy metadata];
    v25 = [metadata2 objectForKeyedSubscript:v21];
    v55 = v25;
    v26 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  }

  v27 = +[TransparencyAnalytics logger];
  [v27 logResultForEvent:v19 hardFailure:state == 0 result:failureCopy withAttributes:v26];

  if (state == 1 && *(v47 + 3) != 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v29 = *(v47 + 3);
    v30 = +[TransparencyAnalytics logger];
    v31 = [NSNumber numberWithDouble:Current - v29];
    applicationID2 = [(KTContextVerifier *)self applicationID];
    v33 = [TransparencyAnalytics formatEventName:@"PatInclusionProofTime" application:applicationID2];
    [v30 logMetric:v31 withName:v33];
  }

  v34 = *(v51 + 24);

  _Block_object_dispose(v46, 8);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v50, 8);
  return v34 & 1;
}

- (BOOL)setInclusionVerifiedState:(unint64_t)state topLevelTreeLogEntry:(id)entry failure:(id)failure error:(id *)error
{
  entryCopy = entry;
  failureCopy = failure;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 1;
  nodeBytes = [entryCopy nodeBytes];
  v13 = [(TransparencyGPBMessage *)TopLevelTreeNode parseFromData:nodeBytes error:error];

  if (!v13)
  {
    if (qword_10039CD08 != -1)
    {
      sub_10025F174();
    }

    v14 = qword_10039CD10;
    if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v15 = *error;
      }

      else
      {
        v15 = 0;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "failed to parse TLT node from revision log inclusion proof: %@", &buf, 0xCu);
    }

    *(v45 + 24) = 0;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v51 = 0x3032000000;
  v52 = sub_100220560;
  v53 = sub_100220570;
  v54 = 0;
  if (([v13 hasPatHead] & 1) == 0)
  {
    if (qword_10039CD08 != -1)
    {
      sub_10025F19C();
    }

    v16 = qword_10039CD10;
    if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
    {
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Top level tree node is missing PAT head", v40, 2u);
    }

    if (error)
    {
      *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-204 description:@"Top level tree node is missing PAT head"];
    }

    *(v45 + 24) = 0;
  }

  *v40 = 0;
  v41 = v40;
  v42 = 0x2020000000;
  v43 = 0;
  if ([v13 hasPatHead])
  {
    dataStore = [(KTContextVerifier *)self dataStore];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100222B48;
    v32[3] = &unk_10032B420;
    v33 = v13;
    selfCopy = self;
    stateCopy = state;
    errorCopy = error;
    p_buf = &buf;
    v36 = v40;
    v37 = &v44;
    [dataStore performBlockAndWait:v32];
  }

  if (!+[TransparencyAnalytics hasInternalDiagnostics])
  {
    goto LABEL_23;
  }

  metadata = [entryCopy metadata];
  v19 = kTransparencyResponseMetadataKeyServerHint;
  v20 = [metadata objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
  v21 = v20 == 0;

  if (v21)
  {
LABEL_23:
    v24 = 0;
  }

  else
  {
    v48 = v19;
    metadata2 = [entryCopy metadata];
    v23 = [metadata2 objectForKeyedSubscript:v19];
    v49 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  }

  v25 = +[TransparencyAnalytics logger];
  [v25 logResultForEvent:@"ktTLTVerifyInclusionProofEvent" hardFailure:state == 0 result:failureCopy withAttributes:v24];

  if (state == 1 && *(v41 + 3) != 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v27 = *(v41 + 3);
    v28 = +[TransparencyAnalytics logger];
    v29 = [NSNumber numberWithDouble:Current - v27];
    [v28 logMetric:v29 withName:@"ktTLTInclusionProofTime"];
  }

  v30 = *(v45 + 24);

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v44, 8);
  return v30 & 1;
}

- (BOOL)setInclusionVerifiedState:(unint64_t)state logEntry:(id)entry failure:(id)failure error:(id *)error
{
  entryCopy = entry;
  failureCopy = failure;
  if ([entryCopy logType] == 2)
  {
    v12 = [(KTContextVerifier *)self setInclusionVerifiedState:state perApplicationTreeLogEntry:entryCopy failure:failureCopy error:error];
  }

  else
  {
    if ([entryCopy logType] != 3)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v12 = [(KTContextVerifier *)self setInclusionVerifiedState:state topLevelTreeLogEntry:entryCopy failure:failureCopy error:error];
  }

  v13 = v12;
LABEL_7:

  return v13;
}

- (unint64_t)verifyRevisionLogProofLogEntry:(id)entry patSTH:(id *)h error:(id *)error
{
  entryCopy = entry;
  dataStore = [(KTContextVerifier *)self dataStore];
  [entryCopy setDataStore:dataStore];

  context = [(KTContextVerifier *)self context];
  optInServer = [context optInServer];
  [entryCopy setOptInServer:optInServer];

  if ([entryCopy logType] == 2)
  {
    v12 = [TransparencyLogEntryVerifier alloc];
    applicationKeyStore = [(KTContextVerifier *)self applicationKeyStore];
    appSthKeyStore = [applicationKeyStore appSthKeyStore];
LABEL_5:
    v15 = appSthKeyStore;
    v16 = [(TransparencyLogEntryVerifier *)v12 initWithTrustedKeyStore:appSthKeyStore];
    [entryCopy setVerifier:v16];

    v30 = 0;
    v17 = [entryCopy verifyWithError:&v30];
    v18 = v30;
    if (v17 == 1)
    {
      logType = [entryCopy logType];
      if (h && logType == 2)
      {
        v20 = [entryCopy slh];
        *h = [SignedLogHead signedTypeWithObject:v20];
      }
    }

    else
    {
      if (qword_10039CD08 != -1)
      {
        sub_10025F278();
      }

      v21 = qword_10039CD10;
      if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "failed to verify revision proof log entry: %@", buf, 0xCu);
      }

      if (error && v18)
      {
        v22 = v18;
        *error = v18;
      }
    }

    v29 = 0;
    v23 = [(KTContextVerifier *)self setInclusionVerifiedState:v17 logEntry:entryCopy failure:v18 error:&v29];
    v24 = v29;
    if ((v23 & 1) == 0)
    {
      if (qword_10039CD08 != -1)
      {
        sub_10025F2A0();
      }

      v25 = qword_10039CD10;
      if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "failed to set inclusion verification state for log entry: %@", buf, 0xCu);
      }
    }

    goto LABEL_22;
  }

  if ([entryCopy logType] == 3)
  {
    v12 = [TransparencyLogEntryVerifier alloc];
    applicationKeyStore = [(KTContextVerifier *)self applicationKeyStore];
    appSthKeyStore = [applicationKeyStore tltKeyStore];
    goto LABEL_5;
  }

  if (qword_10039CD08 != -1)
  {
    sub_10025F264();
  }

  v27 = qword_10039CD10;
  if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
  {
    v28 = v27;
    *buf = 67109120;
    LODWORD(v32) = [entryCopy logType];
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Unknown log type in log entry: %d", buf, 8u);
  }

  if (error)
  {
    +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", kTransparencyErrorDecode, -205, @"Unknown log type in log entry: %d", [entryCopy logType]);
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_22:

  return v17;
}

- (unint64_t)verifyRevisionLogTopLevelProof:(id)proof patSTH:(id)h error:(id *)error
{
  proofCopy = proof;
  hCopy = h;
  dataStore = [(KTContextVerifier *)self dataStore];
  [proofCopy setDataStore:dataStore];

  context = [(KTContextVerifier *)self context];
  optInServer = [context optInServer];
  [proofCopy setOptInServer:optInServer];

  v13 = [TransparencyLogEntryVerifier alloc];
  applicationKeyStore = [(KTContextVerifier *)self applicationKeyStore];
  tltKeyStore = [applicationKeyStore tltKeyStore];
  v16 = [(TransparencyLogEntryVerifier *)v13 initWithTrustedKeyStore:tltKeyStore];
  [proofCopy setVerifier:v16];

  if (hCopy)
  {
    v27 = 0;
    v17 = [proofCopy verifyTLTEntryForPerApplicationLogHead:hCopy error:&v27];
    v18 = v27;
  }

  else
  {
    v26 = 0;
    v17 = [proofCopy verifyWithError:&v26];
    v18 = v26;
    v25 = 0;
    v19 = [(KTContextVerifier *)self setInclusionVerifiedState:v17 logEntry:proofCopy failure:v18 error:&v25];
    v20 = v25;
    if ((v19 & 1) == 0)
    {
      if (qword_10039CD08 != -1)
      {
        sub_10025F2C8();
      }

      v21 = qword_10039CD10;
      if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "failed to set inclusion verified state: %@", buf, 0xCu);
      }
    }
  }

  if (v17 != 1)
  {
    if (qword_10039CD08 != -1)
    {
      sub_10025F2F0();
    }

    v22 = qword_10039CD10;
    if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "failed to verify revision proof tlt entry: %@", buf, 0xCu);
    }

    if (error && v18)
    {
      v23 = v18;
      *error = v18;
    }
  }

  return v17;
}

- (BOOL)verifyRevisionLogInclusionProofResponse:(id)response receivedRevisions:(id)revisions error:(id *)error
{
  responseCopy = response;
  revisionsCopy = revisions;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = [responseCopy logEntryArray];
  v6 = 0;
  v7 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = *v63;
  v9 = kTransparencyResponseMetadataKeyServerHint;
  while (2)
  {
    v10 = 0;
    v11 = v6;
    do
    {
      if (*v63 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v62 + 1) + 8 * v10);
      if ([v12 hasSlh])
      {
        v13 = [v12 slh];
        v14 = v13 == 0;

        if (!v14)
        {
          v15 = [v12 slh];
          [(KTContextVerifier *)self checkHeadEpoch:v15];
        }
      }

      metadata = [responseCopy metadata];
      v17 = [metadata objectForKeyedSubscript:v9];
      [v12 setMetadataValue:v17 key:v9];

      if (revisionsCopy)
      {
        nodeBytes = [v12 nodeBytes];
        v19 = [nodeBytes length] == 0;

        if (!v19)
        {
          if ([v12 logType] == 3)
          {
            nodeBytes2 = [v12 nodeBytes];
            v21 = [(TransparencyGPBMessage *)TopLevelTreeNode parseFromData:nodeBytes2 error:0];

            patHead = [v21 patHead];
            object = [patHead object];
            v24 = [(TransparencyGPBMessage *)LogHead parseFromData:object error:0];
          }

          else
          {
            if ([v12 logType] != 2)
            {
              goto LABEL_18;
            }

            nodeBytes3 = [v12 nodeBytes];
            v21 = [(TransparencyGPBMessage *)PerApplicationTreeNode parseFromData:nodeBytes3 error:0];

            objectMapHead = [v21 objectMapHead];
            object2 = [objectMapHead object];
            v24 = [(TransparencyGPBMessage *)MapHead parseFromData:object2 error:0];
          }

          if (v24)
          {
            v28 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 revision]);
            [revisionsCopy addObject:v28];
          }
        }
      }

LABEL_18:
      v61 = v11;
      v29 = [(KTContextVerifier *)self verifyRevisionLogProofLogEntry:v12 patSTH:&v61 error:error];
      v6 = v61;

      if (!v29)
      {

        v42 = 0;
        goto LABEL_34;
      }

      v10 = v10 + 1;
      v11 = v6;
    }

    while (v7 != v10);
    v7 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_21:

  if (![responseCopy hasTopLevelTreeEntry] || (objc_msgSend(responseCopy, "topLevelTreeEntry"), v30 = objc_claimAutoreleasedReturnValue(), v31 = v30 == 0, v30, v31))
  {
    if (v6)
    {
      v55 = 0;
      v56 = &v55;
      v57 = 0x3032000000;
      v58 = sub_100220560;
      v59 = sub_100220570;
      v60 = 0;
      dataStore = [(KTContextVerifier *)self dataStore];
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_10022400C;
      v51[3] = &unk_100327288;
      v6 = v6;
      v52 = v6;
      selfCopy = self;
      v54 = &v55;
      [dataStore performBlockAndWait:v51];

      if (error)
      {
        v44 = v56[5];
        if (v44)
        {
          *error = v44;
        }
      }

      _Block_object_dispose(&v55, 8);
      v42 = 1;
      goto LABEL_34;
    }

    v42 = 1;
  }

  else
  {
    topLevelTreeEntry = [responseCopy topLevelTreeEntry];
    if (![topLevelTreeEntry hasSlh])
    {
      goto LABEL_26;
    }

    topLevelTreeEntry2 = [responseCopy topLevelTreeEntry];
    v34 = [topLevelTreeEntry2 slh];
    v35 = v34 == 0;

    if (!v35)
    {
      topLevelTreeEntry = [responseCopy topLevelTreeEntry];
      v36 = [topLevelTreeEntry slh];
      [(KTContextVerifier *)self checkHeadEpoch:v36];

LABEL_26:
    }

    topLevelTreeEntry3 = [responseCopy topLevelTreeEntry];
    metadata2 = [responseCopy metadata];
    v39 = kTransparencyResponseMetadataKeyServerHint;
    v40 = [metadata2 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
    [topLevelTreeEntry3 setMetadataValue:v40 key:v39];

    topLevelTreeEntry4 = [responseCopy topLevelTreeEntry];
    v42 = [(KTContextVerifier *)self verifyRevisionLogTopLevelProof:topLevelTreeEntry4 patSTH:v6 error:error]!= 0;

LABEL_34:
  }

  return v42;
}

- (void)checkHeadEpoch:(id)epoch
{
  v4 = [SignedLogHead signedTypeWithObject:epoch];
  parsedLogHead = [v4 parsedLogHead];
  v6 = parsedLogHead;
  if (parsedLogHead)
  {
    logType = [parsedLogHead logType];
    logBeginningMs = [v6 logBeginningMs];
    applicationKeyStore = [(KTContextVerifier *)self applicationKeyStore];
    v10 = applicationKeyStore;
    if (logType == 3)
    {
      tltLogBeginningMs = [applicationKeyStore tltLogBeginningMs];

      if (logBeginningMs > tltLogBeginningMs)
      {
        if (qword_10039CD08 != -1)
        {
          sub_10025F354();
        }

        v12 = qword_10039CD10;
        if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "TLT head has logBeginningMs after key store epoch", buf, 2u);
        }

        applicationKeyStore2 = [(KTContextVerifier *)self applicationKeyStore];
        vrfKey = [applicationKeyStore2 vrfKey];
        [vrfKey setNeedsRefresh:1];

        applicationKeyStore3 = [(KTContextVerifier *)self applicationKeyStore];
        appSmtKeyStore = [applicationKeyStore3 appSmtKeyStore];
        signatureVerifier = [appSmtKeyStore signatureVerifier];
        [signatureVerifier setNeedsRefresh:1];

        applicationKeyStore4 = [(KTContextVerifier *)self applicationKeyStore];
        appSthKeyStore = [applicationKeyStore4 appSthKeyStore];
        signatureVerifier2 = [appSthKeyStore signatureVerifier];
        [signatureVerifier2 setNeedsRefresh:1];

        applicationKeyStore5 = [(KTContextVerifier *)self applicationKeyStore];
        tltKeyStore = [applicationKeyStore5 tltKeyStore];
LABEL_15:
        v30 = tltKeyStore;
        signatureVerifier3 = [tltKeyStore signatureVerifier];
        [signatureVerifier3 setNeedsRefresh:1];
      }
    }

    else
    {
      patLogBeginningMs = [applicationKeyStore patLogBeginningMs];

      if (logBeginningMs > patLogBeginningMs)
      {
        if (qword_10039CD08 != -1)
        {
          sub_10025F340();
        }

        v24 = qword_10039CD10;
        if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Application head has logBeginningMs after key store epoch", v32, 2u);
        }

        applicationKeyStore6 = [(KTContextVerifier *)self applicationKeyStore];
        vrfKey2 = [applicationKeyStore6 vrfKey];
        [vrfKey2 setNeedsRefresh:1];

        applicationKeyStore7 = [(KTContextVerifier *)self applicationKeyStore];
        appSmtKeyStore2 = [applicationKeyStore7 appSmtKeyStore];
        signatureVerifier4 = [appSmtKeyStore2 signatureVerifier];
        [signatureVerifier4 setNeedsRefresh:1];

        applicationKeyStore5 = [(KTContextVerifier *)self applicationKeyStore];
        tltKeyStore = [applicationKeyStore5 appSthKeyStore];
        goto LABEL_15;
      }
    }
  }
}

- (void)processSTHsFromGossipPeers:(id)peers verifier:(id)verifier error:(id *)error
{
  obj = peers;
  verifierCopy = verifier;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v39 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v39)
  {
    errorCopy = error;
    v7 = 0;
    v8 = *v43;
    p_vtable = &OBJC_METACLASS___KTPCSOperations.vtable;
    do
    {
      v10 = 0;
      do
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v42 + 1) + 8 * v10);
        v41 = 0;
        v12 = [p_vtable + 412 parseFromData:v11 error:&v41];
        v13 = v41;
        v14 = v13;
        if (v12)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 0;
        }

        if (v15)
        {
          applicationKeyStore = [(KTContextVerifier *)self applicationKeyStore];
          appSthKeyStore = [applicationKeyStore appSthKeyStore];
          signatureVerifier = [appSthKeyStore signatureVerifier];
          [v12 setVerifier:signatureVerifier];

          dataStore = [(KTContextVerifier *)self dataStore];
          [v12 setDataStore:dataStore];

          [v12 setGossip:1];
          [v12 setGossip:1];
          if (verifierCopy)
          {
            [v12 setVerifier:verifierCopy];
          }

          v40 = 0;
          [v12 verifyWithError:&v40];
          v25 = v40;
          if (v25)
          {
            if (qword_10039CD08 != -1)
            {
              sub_10025F368();
            }

            v26 = qword_10039CD10;
            if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v47 = v25;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "failed to verify gossiped sth: %@", buf, 0xCu);
            }

            if (v7)
            {
              domain = [v25 domain];
              v28 = p_vtable;
              v29 = v8;
              code = [v25 code];
              v31 = [0 description];
              v32 = code;
              v8 = v29;
              p_vtable = v28;
              v33 = [TransparencyError errorWithDomain:domain code:v32 underlyingError:v7 description:@"%@", v31];

              v7 = v33;
            }

            else
            {
              v7 = v25;
            }
          }
        }

        else
        {
          if (qword_10039CD08 != -1)
          {
            sub_10025F390();
          }

          v16 = qword_10039CD10;
          if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v47 = v14;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "failed to parse gossiped slh: %@", buf, 0xCu);
          }

          if (v7)
          {
            domain2 = [v14 domain];
            code2 = [v14 code];
            v19 = [v14 description];
            v20 = [TransparencyError errorWithDomain:domain2 code:code2 underlyingError:v7 description:@"%@", v19];

            v7 = v20;
          }

          else
          {
            v7 = v14;
          }
        }

        v10 = v10 + 1;
      }

      while (v39 != v10);
      v39 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v39);
    if (errorCopy && v7)
    {
      v34 = v7;
      *errorCopy = v7;
    }
  }

  else
  {
    v7 = 0;
  }
}

@end