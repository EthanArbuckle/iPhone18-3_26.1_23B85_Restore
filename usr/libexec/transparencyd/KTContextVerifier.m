@interface KTContextVerifier
+ (BOOL)verifyLoggableDataSignatures:(id)a3 accountKey:(id)a4 error:(id *)a5;
+ (BOOL)verifyServerLoggableDatas:(id)a3 againstSyncedLoggableDatas:(id)a4 cloudDevices:(id)a5 error:(id *)a6;
+ (int64_t)verifyDeviceMutation:(id)a3 mapLeaf:(id)a4;
+ (int64_t)verifyOptInOutMutationMerged:(id)a3 mapLeaf:(id)a4 pendingAccountAdds:(id)a5;
+ (int64_t)verifyOptInOutWithExtMerged:(id)a3 accountKeyHash:(id)a4 mapLeaf:(id)a5 pendingAccountAdds:(id)a6;
- (BOOL)areSMTsOverMMD:(id)a3;
- (BOOL)failSMTsIfOverMMD:(id)a3 proof:(id)a4 underlyingError:(id)a5 errorCode:(int64_t)a6 savePendingError:(BOOL)a7 analyticsData:(id)a8;
- (BOOL)failSMTsIfOverMMD:(id)a3 skipOptInOut:(BOOL)a4 proof:(id)a5 underlyingError:(id)a6 errorCode:(int64_t)a7 analyticsData:(id)a8;
- (BOOL)setInclusionVerifiedState:(unint64_t)a3 logEntry:(id)a4 failure:(id)a5 error:(id *)a6;
- (BOOL)setInclusionVerifiedState:(unint64_t)a3 perApplicationTreeLogEntry:(id)a4 failure:(id)a5 error:(id *)a6;
- (BOOL)setInclusionVerifiedState:(unint64_t)a3 topLevelTreeLogEntry:(id)a4 failure:(id)a5 error:(id *)a6;
- (BOOL)verifyKTSMTsMerged:(id)a3 mapLeaf:(id)a4 analyticsData:(id)a5;
- (BOOL)verifyKTSMTsMerged:(id)a3 queryResponse:(id)a4 uri:(id)a5;
- (BOOL)verifyRevisionLogInclusionProofResponse:(id)a3 receivedRevisions:(id)a4 error:(id *)a5;
- (KTContext)context;
- (KTContextVerifier)initWithApplicationKeyStore:(id)a3 dataStore:(id)a4 applicationID:(id)a5 context:(id)a6;
- (id)createChainOfErrorsFromSMTFailures:(id)a3;
- (id)createChainOfErrorsFromSTHFailures:(id)a3 type:(unint64_t)a4;
- (id)createErrorFromSMTFailure:(id)a3 underlyingError:(id)a4;
- (id)createErrorFromSTHFailure:(id)a3 underlyingError:(id)a4;
- (id)createTransparentDataFromQueryInfo:(id)a3 error:(id *)a4;
- (id)failExpiredSTHsForType:(unint64_t)a3 error:(id *)a4;
- (id)verifyKTSMTSignatures:(id)a3 error:(id *)a4;
- (id)verifySTHs:(id)a3 error:(id *)a4;
- (unint64_t)checkBatchQueryResponseFreshness:(id)a3 receiptDate:(id)a4 error:(id *)a5;
- (unint64_t)checkQueryInfoFreshness:(id)a3 receiptDate:(id)a4 error:(id *)a5;
- (unint64_t)checkQueryResponseFreshness:(id)a3 receiptDate:(id)a4 error:(id *)a5;
- (unint64_t)checkResponseFreshness:(id)a3 smh:(id)a4 receiptDate:(id)a5 error:(id *)a6;
- (unint64_t)handleBatchQueryResponse:(id)a3 queryRequest:(id)a4 receiptDate:(id)a5 fetchId:(id)a6 error:(id *)a7 queryInfoHandler:(id)a8;
- (unint64_t)handleBatchQueryResponse:(id)a3 queryRequest:(id)a4 receiptDate:(id)a5 fetchId:(id)a6 error:(id *)a7 transparentDataHandler:(id)a8;
- (unint64_t)handleInsertResponse:(id)a3 uri:(id)a4 fetchId:(id)a5 error:(id *)a6 transparentDataHandler:(id)a7;
- (unint64_t)handleQueryResponse:(id)a3 queryRequest:(id)a4 receiptDate:(id)a5 fetchId:(id)a6 error:(id *)a7 rawDataHandler:(id)a8;
- (unint64_t)handleQueryResponse:(id)a3 queryRequest:(id)a4 receiptDate:(id)a5 fetchId:(id)a6 error:(id *)a7 transparentDataHandler:(id)a8;
- (unint64_t)verifyAccountKeyWitness:(id)a3 accountKey:(id)a4 error:(id *)a5;
- (unint64_t)verifyConsistencyProofResponse:(id)a3 startRevision:(int64_t)a4 receivedRevisions:(id)a5 error:(id *)a6;
- (unint64_t)verifyInclusionProof:(id)a3 mapLeaf:(id *)a4 error:(id *)a5;
- (unint64_t)verifyRevisionLogProofLogEntry:(id)a3 patSTH:(id *)a4 error:(id *)a5;
- (unint64_t)verifyRevisionLogTopLevelProof:(id)a3 patSTH:(id)a4 error:(id *)a5;
- (unint64_t)verifySMTTimestamps:(id)a3 receiptDate:(id)a4 error:(id *)a5;
- (unint64_t)verifySMTs:(id)a3 uri:(id)a4 serverHint:(id)a5 error:(id *)a6;
- (unint64_t)verifyUriWitness:(id)a3 uri:(id)a4 error:(id *)a5;
- (void)checkBatchQueryResponseEpochs:(id)a3;
- (void)checkHeadEpoch:(id)a3;
- (void)checkQueryResponseEpochs:(id)a3;
- (void)deleteSMT:(id)a3 error:(id)a4;
- (void)processSTHsFromGossipPeers:(id)a3 verifier:(id)a4 error:(id *)a5;
- (void)reportVerifySMTFailure:(id)a3 analyticsData:(id)a4 uri:(id)a5 receiptServerHint:(id)a6 error:(id)a7;
@end

@implementation KTContextVerifier

- (unint64_t)checkBatchQueryResponseFreshness:(id)a3 receiptDate:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 smh];
  v10 = [(KTContextVerifier *)self checkResponseFreshness:0 smh:v9 receiptDate:v8 error:a5];

  return v10;
}

- (unint64_t)checkQueryInfoFreshness:(id)a3 receiptDate:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 pendingSmtsArray];
  v10 = [(KTContextVerifier *)self checkResponseFreshness:v9 smh:0 receiptDate:v8 error:a5];

  return v10;
}

- (void)checkBatchQueryResponseEpochs:(id)a3
{
  v14 = a3;
  if ([v14 hasPerApplicationTreeEntry])
  {
    v4 = [v14 perApplicationTreeEntry];
    if (v4)
    {
      v5 = v4;
      v6 = [v14 perApplicationTreeEntry];
      if (![v6 hasSlh])
      {
LABEL_6:

        goto LABEL_7;
      }

      v7 = [v14 perApplicationTreeEntry];
      v8 = [v7 slh];

      if (v8)
      {
        v5 = [v14 perApplicationTreeEntry];
        v6 = [v5 slh];
        [(KTContextVerifier *)self checkHeadEpoch:v6];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  if ([v14 hasTopLevelTreeEntry])
  {
    v9 = [v14 topLevelTreeEntry];
    if (v9)
    {
      v10 = v9;
      v11 = [v14 topLevelTreeEntry];
      if ([v11 hasSlh])
      {
        v12 = [v14 topLevelTreeEntry];
        v13 = [v12 slh];

        if (!v13)
        {
          goto LABEL_13;
        }

        v10 = [v14 topLevelTreeEntry];
        v11 = [v10 slh];
        [(KTContextVerifier *)self checkHeadEpoch:v11];
      }
    }
  }

LABEL_13:
}

- (unint64_t)handleBatchQueryResponse:(id)a3 queryRequest:(id)a4 receiptDate:(id)a5 fetchId:(id)a6 error:(id *)a7 queryInfoHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = -[KTContextVerifier checkServerStatus:error:](self, "checkServerStatus:error:", [v14 status], a7);
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
      v93 = v17;
      v94 = 1024;
      LODWORD(v95) = [v14 status];
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "BatchQueryResponse for fetchId %{public}@ server error: %d", buf, 0x12u);
    }

    goto LABEL_16;
  }

  [(KTContextVerifier *)self checkBatchQueryResponseEpochs:v14];
  v20 = [(KTContextVerifier *)self context];
  v21 = [v20 ready:a7];

  if (v21)
  {
    v22 = [(KTContextVerifier *)self checkBatchQueryResponseFreshness:v14 receiptDate:v16 error:a7];
    if (v22 == 1)
    {
      v23 = [v14 queryInfoArray_Count];
      if (v23 > [v15 uriArray_Count])
      {
        v24 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-326 description:@"More query infos in response than in request for fetchId %@, aborting validation and deleting record", v17];
        if (qword_10039C720 != -1)
        {
          sub_10025AE48();
        }

        v25 = qword_10039C728;
        if (os_log_type_enabled(qword_10039C728, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v93 = v17;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "More query infos in response than in request for fetchId %{public}@, aborting validation and deleting record", buf, 0xCu);
        }

        v26 = 0;
        if (a7 && v24)
        {
          v27 = v24;
          v26 = 0;
          *a7 = v24;
        }

        goto LABEL_22;
      }

      v33 = [TransparencyMapInclusionProofVerifier alloc];
      v34 = [(KTContextVerifier *)self applicationKeyStore];
      v35 = [(KTContextVerifier *)self applicationID];
      v36 = [(TransparencyMapInclusionProofVerifier *)v33 initWithKeyStore:v34 application:v35];

      v79 = v36;
      [v14 setVerifier:v36];
      v37 = [(KTContextVerifier *)self dataStore];
      [v14 setDataStore:v37];

      v38 = [(KTContextVerifier *)self context];
      v39 = [v38 optInServer];
      [v14 setOptInServer:v39];

      v91 = 0;
      v26 = [v14 verifyWithError:&v91];
      v81 = v91;
      v82 = v17;
      v85 = v16;
      if (v26 == 1)
      {
        if ([v14 queryInfoArray_Count])
        {
          v40 = 0;
          v78 = kTransparencyResponseMetadataKeyServerHint;
          v77 = v18;
          v83 = v15;
          do
          {
            v41 = [v14 queryInfoArray];
            v42 = [v41 objectAtIndexedSubscript:v40];

            v43 = [v15 uriArray];
            v44 = [v43 objectAtIndexedSubscript:v40];

            v45 = [v42 status];
            v90 = 0;
            v46 = [(KTContextVerifier *)self checkServerStatus:v45 error:&v90];
            v47 = v90;
            v48 = v47;
            if (v46 == 1)
            {
              v89 = v47;
              v49 = [(KTContextVerifier *)self checkQueryInfoFreshness:v42 receiptDate:v85 error:&v89];
              v50 = v89;

              if (v49 == 1)
              {
                v51 = [v42 uriWitness];
                v88 = v50;
                v52 = [(KTContextVerifier *)self verifyUriWitness:v51 uri:v44 error:&v88];
                v84 = v88;

                if (v52 == 1)
                {
                  v53 = [v14 metadata];
                  v54 = [v53 objectForKeyedSubscript:v78];

                  v80 = v54;
                  if ([v42 pendingSmtsArray_Count])
                  {
                    v55 = [v42 pendingSmtsArray];
                    v87 = v84;
                    v56 = [(KTContextVerifier *)self verifySMTs:v55 uri:v44 serverHint:v54 error:&v87];
                    v50 = v87;

                    if (v56 == 1)
                    {
                      v84 = v50;
                      v15 = v83;
                      v18 = v77;
                      goto LABEL_49;
                    }

                    v15 = v83;
                    v18 = v77;
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
                    v15 = v83;
LABEL_49:
                    if ([v42 hasMapEntry])
                    {
                      v62 = [v42 mapEntry];
                      v75 = [TransparencyMapEntryVerifier alloc];
                      v73 = [v62 index];
                      v63 = [(KTContextVerifier *)self applicationKeyStore];
                      v64 = [v63 appSthKeyStore];
                      v65 = [(TransparencyMapEntryVerifier *)v75 initWithPositon:v73 trustedKeyStore:v64];

                      v74 = v65;
                      [v62 setVerifier:v65];
                      v66 = [(KTContextVerifier *)self dataStore];
                      [v62 setDataStore:v66];

                      v67 = [v14 verifiableSmh];
                      [v62 setSmh:v67];

                      v68 = v80;
                      [v62 setMetadataValue:v80 key:v78];
                      v86 = v84;
                      v76 = v62;
                      v69 = [v62 verifyWithError:&v86];
                      v50 = v86;

                      if (v69 != 1)
                      {
                        v18 = v77;
                        if (qword_10039C720 != -1)
                        {
                          sub_10025AE20();
                        }

                        v15 = v83;
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

                      v15 = v83;
                      v18 = v77;
                    }

                    else
                    {
                      v50 = v84;
                      v68 = v80;
                    }

                    v18[2](v18, v44, v42, 0);
                  }

                  goto LABEL_66;
                }

                if (qword_10039C720 != -1)
                {
                  sub_10025ADD0();
                }

                v15 = v83;
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

                v58 = v18[2];
                v59 = v18;
                v60 = v44;
                v50 = v84;
              }

              else
              {
                if (qword_10039C720 != -1)
                {
                  sub_10025ADA8();
                }

                v15 = v83;
                v57 = qword_10039C728;
                if (os_log_type_enabled(qword_10039C728, OS_LOG_TYPE_ERROR))
                {
                  *buf = 141558274;
                  v93 = 1752392040;
                  v94 = 2112;
                  v95 = v44;
                  _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "QueryInfo for %{mask.hash}@ is outside MMD", buf, 0x16u);
                }

                v58 = v18[2];
                v59 = v18;
                v60 = v44;
              }

              v58(v59, v60, 0, v50);
            }

            else
            {
              (v18)[2](v18, v44, 0, v47);
              v50 = v48;
            }

LABEL_66:

            ++v40;
          }

          while (v40 < [v14 queryInfoArray_Count]);
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
          v93 = v17;
          v94 = 2112;
          v95 = v81;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "Proof validation failed for fetchId %{public}@: %@", buf, 0x16u);
        }

        if (a7 && v81)
        {
          *a7 = v81;
        }
      }

      v24 = 0;
      v16 = v85;
      v17 = v82;
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
      v93 = v17;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "BatchQueryResponse for fetchId %{public}@ exceeded MMD", buf, 0xCu);
    }

LABEL_16:
    v24 = 0;
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
    v93 = v17;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "BatchQueryResponse for fetchId %{public}@ waiting for keystore refresh", buf, 0xCu);
  }

  v24 = 0;
  v26 = 2;
LABEL_22:

  return v26;
}

- (id)createTransparentDataFromQueryInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 hasMapEntry] && (objc_msgSend(v6, "mapEntry"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "mapLeaf"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, v9))
  {
    v10 = [v6 mapEntry];
    v11 = [v10 mapLeaf];
    v12 = [IdsMapLeaf parseFromData:v11 error:a4];

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
  v15 = [v6 uriWitness];
  v16 = [v15 output];
  v17 = [v6 pendingSmtsArray];
  v13 = [(KTTransparentData *)v14 initWithUriVRFOutput:v16 mapLeaf:v12 pendingSMTs:v17 error:a4];

  v18 = [(KTContextVerifier *)self applicationKeyStore];
  v19 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v18 patLogBeginningMs] / 1000.0);
  [(KTTransparentData *)v13 setCurrentTreeEpochBeginDate:v19];

LABEL_7:

  return v13;
}

- (unint64_t)handleBatchQueryResponse:(id)a3 queryRequest:(id)a4 receiptDate:(id)a5 fetchId:(id)a6 error:(id *)a7 transparentDataHandler:(id)a8
{
  v14 = a5;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001A3F08;
  v20[3] = &unk_100325DC8;
  v20[4] = self;
  v21 = a6;
  v22 = v14;
  v23 = a8;
  v15 = v14;
  v16 = v23;
  v17 = v21;
  v18 = [(KTContextVerifier *)self handleBatchQueryResponse:a3 queryRequest:a4 receiptDate:v15 fetchId:v17 error:a7 queryInfoHandler:v20];

  return v18;
}

- (unint64_t)verifySMTTimestamps:(id)a3 receiptDate:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
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
        v16 = [v15 parsedMutationWithError:a5];
        v17 = v16;
        if (!v16)
        {
          goto LABEL_16;
        }

        v18 = ([v16 mutationMs] + v13);
        [v8 timeIntervalSince1970];
        if (v19 * 1000.0 > v18)
        {
          v21 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-307 description:@"SMT timestamp more than MMD ago"];
          if (a5 && v21)
          {
            v21 = v21;
            *a5 = v21;
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

- (unint64_t)verifySMTs:(id)a3 uri:(id)a4 serverHint:(id)a5 error:(id *)a6
{
  v10 = a3;
  v28 = a4;
  v29 = a5;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v10;
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
        v14 = [(KTContextVerifier *)self applicationKeyStore];
        v15 = [v14 appSmtKeyStore];
        v16 = [v15 signatureVerifier];
        v17 = [(KTContextVerifier *)self dataStore];
        v18 = [SignedMutationTimestamp signedTypeWithObject:v13 verifier:v16 dataStore:v17];

        v19 = [(KTContextVerifier *)self applicationID];
        [v18 setApplication:v19];

        v20 = [v18 verifyWithError:a6];
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
        v21 = [(KTContextVerifier *)self dataStore];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_1001F2888;
        v30[3] = &unk_100328EB8;
        v22 = v18;
        v31 = v22;
        v32 = self;
        v33 = v28;
        v34 = v29;
        v35 = &v36;
        [v21 performBlockAndWait:v30];

        if (a6)
        {
          v23 = v37[5];
          if (v23)
          {
            *a6 = v23;
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

- (void)reportVerifySMTFailure:(id)a3 analyticsData:(id)a4 uri:(id)a5 receiptServerHint:(id)a6 error:(id)a7
{
  v32 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = +[NSMutableDictionary dictionary];
  v17 = +[TransparencyAnalytics hasInternalDiagnostics];
  v18 = v17;
  if (v12 && v17)
  {
    [v16 addEntriesFromDictionary:v12];
  }

  if (v18)
  {
    v19 = [(SignedObjectHolder *)SignedMutationTimestamp parseFromData:v32 error:0];
    v20 = v19;
    if (v19)
    {
      v31 = self;
      v21 = [v19 signature];
      v22 = [v21 signature];
      v23 = [v22 base64EncodedStringWithOptions:0];
      [v16 setObject:v23 forKeyedSubscript:@"sig"];

      v24 = [v20 parsedMutationWithError:0];
      v25 = v24;
      if (v24)
      {
        v26 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 mutationMs]);
        [v16 setObject:v26 forKeyedSubscript:@"ms"];
      }

      self = v31;
    }

    if (v13)
    {
      [v16 setObject:v13 forKeyedSubscript:@"uri"];
    }

    if (v14)
    {
      [v16 setObject:v14 forKeyedSubscript:@"rSH"];
    }
  }

  v27 = +[TransparencyAnalytics logger];
  v28 = [(KTContextVerifier *)self applicationID];
  v29 = [TransparencyAnalytics formatEventName:@"VerifySmtInclusionEvent" application:v28];
  if ([v16 count])
  {
    v30 = v16;
  }

  else
  {
    v30 = 0;
  }

  [v27 logResultForEvent:v29 hardFailure:1 result:v15 withAttributes:v30];
}

- (BOOL)areSMTsOverMMD:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = ([*(*(&v11 + 1) + 8 * i) getUnsigned:{"mutationMs", v11}] + v6);
        +[NSDate kt_currentTimeMs];
        if (v9 > v8)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)createErrorFromSMTFailure:(id)a3 underlyingError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 errorDomain];
  v8 = [v6 errorCode];

  v9 = [TransparencyError errorWithDomain:v7 code:v8 underlyingError:v5 description:0];

  return v9;
}

- (id)createChainOfErrorsFromSMTFailures:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 allObjects];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v7 = [(KTContextVerifier *)self createErrorFromSMTFailure:*(*(&v12 + 1) + 8 * v9) underlyingError:v10];

        v9 = v9 + 1;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)failSMTsIfOverMMD:(id)a3 proof:(id)a4 underlyingError:(id)a5 errorCode:(int64_t)a6 savePendingError:(BOOL)a7 analyticsData:(id)a8
{
  v49 = a7;
  v11 = a3;
  v12 = a5;
  v13 = a8;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v11;
  v14 = [v11 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v59;
    v54 = kKTMaximumMergeDelayMs;
    v47 = kTransparencyResponseMetadataKeyServerHint;
    v18 = self;
    v51 = *v59;
    v52 = v13;
    v48 = a6;
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
            if (!v49)
            {
              goto LABEL_26;
            }

            v40 = [v20 receiptServerHint];
            v57 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:a6 underlyingError:v12 description:@"SMT verification failure before MMD for %@", v40];

            if (qword_10039CB50 != -1)
            {
              sub_10025D4C8();
            }

            v41 = qword_10039CB58;
            if (os_log_type_enabled(qword_10039CB58, OS_LOG_TYPE_INFO))
            {
              v42 = v41;
              v43 = [v20 receiptServerHint];
              *buf = 138543874;
              v63 = v43;
              v64 = 2112;
              v65 = v57;
              v66 = 2112;
              v67 = v12;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "SMT verification failure before MMD for %{public}@, error: %@, underlyingError: %@", buf, 0x20u);
            }

            v18 = self;
          }

          else
          {
            v23 = [v20 failures];
            v24 = [(KTContextVerifier *)v18 createChainOfErrorsFromSMTFailures:v23];

            v53 = v24;
            v25 = [TransparencyError errorWithError:v12 underlyingError:v24];
            v26 = [v20 receiptServerHint];
            v57 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:a6 underlyingError:v25 description:@"SMT verification failure after MMD for %@", v26];

            if (qword_10039CB50 != -1)
            {
              sub_10025D4F0();
            }

            v13 = v52;
            v27 = qword_10039CB58;
            if (os_log_type_enabled(qword_10039CB58, OS_LOG_TYPE_ERROR))
            {
              v28 = v27;
              v29 = [v20 receiptServerHint];
              *buf = 138543874;
              v63 = v29;
              v64 = 2112;
              v65 = v57;
              v66 = 2112;
              v67 = v12;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "SMT verification failure after MMD for %{public}@, error: %@, underlyingError: %@", buf, 0x20u);
            }

            [v20 setMergeResult:0];
            if ([v20 signatureResult] == 2)
            {
              [v20 setSignatureResult:0];
            }

            v30 = [v20 smt];
            v31 = [v20 uri];
            v32 = [v20 receiptServerHint];
            [(KTContextVerifier *)v18 reportVerifySMTFailure:v30 analyticsData:v52 uri:v31 receiptServerHint:v32 error:v57];

            v33 = [v52 objectForKeyedSubscript:@"opUUID"];
            if (v33)
            {
              v34 = [[NSUUID alloc] initWithUUIDString:v33];
              v35 = [v52 objectForKeyedSubscript:v47];
              v36 = [(KTContextVerifier *)v18 context];
              [v36 stateMachine];
              v38 = v37 = v12;
              v39 = [v20 smt];
              [v38 notifyBackgroundValidationFailure:v34 data:v39 type:@"SmtInclusion" serverHint:v35 failure:v57];

              v12 = v37;
              v18 = self;
              v13 = v52;

              a6 = v48;
            }

            v16 = 1;
            v15 = v50;
          }

          if (v57)
          {
            v44 = [(KTContextVerifier *)v18 dataStore];
            v45 = [v44 createSignedMutationTimestampsFailure];

            v18 = self;
            [v45 setErrorCode:a6];
            [v45 setErrorDomain:@"TransparencyErrorVerify"];
            [v45 setMutation:v20];
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

- (void)deleteSMT:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KTContextVerifier *)self dataStore];
  [v8 deleteObject:v7];

  v9 = [v7 smt];

  [(KTContextVerifier *)self reportVerifySMTFailure:v9 analyticsData:0 error:v6];
}

- (id)verifyKTSMTSignatures:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSMutableArray array];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v7 = v5;
  v51 = [v7 countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (!v51)
  {
    goto LABEL_42;
  }

  v50 = *v56;
  v48 = kTransparencyErrorDecode;
  v47 = self;
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
          v15 = [(KTContextVerifier *)self applicationKeyStore];
          v16 = [v15 appSmtKeyStore];
          v17 = [v16 signatureVerifier];
          [v13 setVerifier:v17];

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
              v34 = [(KTContextVerifier *)self dataStore];
              v52 = 0;
              v35 = [v34 persistAndRefaultObject:v9 error:&v52];
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
                  v40 = [(KTContextVerifier *)v47 dataStore];
                  [v40 reportCoreDataPersistEventForLocation:@"handlePendingSigSMTs" underlyingError:v36];

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

              if (a4 && v19)
              {
                v37 = v19;
                *a4 = v19;
              }

              self = v47;
              goto LABEL_27;
            }

            v26 = [v9 receiptTime];
            [v26 timeIntervalSinceNow];
            v28 = -v27;

            v29 = +[TransparencyAnalytics logger];
            v30 = [NSNumber numberWithDouble:v28];
            [(KTContextVerifier *)v47 applicationID];
            v32 = v31 = v6;
            v33 = [TransparencyAnalytics formatEventName:@"VerifySMTTime" application:v32];
            [v29 logMetric:v30 withName:v33];

            self = v47;
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

+ (int64_t)verifyDeviceMutation:(id)a3 mapLeaf:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 mutationType] != 1 && objc_msgSend(v5, "mutationType") != 2 && objc_msgSend(v5, "mutationType") != 4 && objc_msgSend(v5, "mutationType") != 5)
  {
    v10 = -71;
    goto LABEL_23;
  }

  if (![v5 hasOptInExtension])
  {
    goto LABEL_7;
  }

  v7 = [v5 getOptInOutWithExt];
  v8 = [v5 idsDeviceMutation];
  v9 = [v8 accountKeyHash];
  v10 = [KTContextVerifier verifyOptInOutWithExtMerged:v7 accountKeyHash:v9 mapLeaf:v6 pendingAccountAdds:0];

  if (!v10)
  {
LABEL_7:
    v11 = [v5 idsDeviceMutation];
    v12 = [v11 accountKeyHash];
    v13 = [v5 idsDeviceMutation];
    v14 = [v13 deviceIdHash];
    v15 = [v5 idsDeviceMutation];
    v16 = [v15 appVersion];
    v17 = [v5 idsDeviceMutation];
    v18 = [v17 clientDataHash];
    v19 = [v6 recordForAccountKeyHash:v12 deviceIdHash:v14 appVersion:v16 clientDataHash:v18];

    if (v19)
    {
      v20 = [v19 markedForDeletionMs];
      v21 = [v5 mutationType];
      if (v20)
      {
        if (v21 == 4 || v21 == 1)
        {
          v22 = [v19 markedForDeletionMs];
          if (v22 <= [v5 mutationMs])
          {
            v10 = -70;
LABEL_22:

            goto LABEL_23;
          }
        }
      }

      else if (v21 != 1 && [v5 mutationType] != 4)
      {
        v26 = [v19 addedMs];
        if (v26 < [v5 mutationMs])
        {
          v10 = -69;
          goto LABEL_22;
        }
      }
    }

    else if ([v5 mutationType] == 1 || objc_msgSend(v5, "mutationType") == 4)
    {
      v23 = [v5 idsDeviceMutation];
      v24 = [v23 accountKeyHash];
      v25 = [v6 accountForAccountKeyHash:v24];

      LOBYTE(v23) = [v25 hasOptInAfter:{objc_msgSend(v5, "mutationMs")}];
      if ((v23 & 1) == 0)
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

+ (int64_t)verifyOptInOutMutationMerged:(id)a3 mapLeaf:(id)a4 pendingAccountAdds:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[OptInOutWithExt alloc] initWithMutation:v9];
  v11 = [v9 accountKeyHash];

  v12 = [KTContextVerifier verifyOptInOutWithExtMerged:v10 accountKeyHash:v11 mapLeaf:v8 pendingAccountAdds:v7];
  return v12;
}

+ (int64_t)verifyOptInOutWithExtMerged:(id)a3 accountKeyHash:(id)a4 mapLeaf:(id)a5 pendingAccountAdds:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [a5 accountForAccountKeyHash:v10];
  if ((v12 || [v11 containsObject:v10]) && ((objc_msgSend(v12, "isActive:", objc_msgSend(v9, "timestampMs")) & 1) != 0 || objc_msgSend(v11, "containsObject:", v10)))
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
        v16 = [v13 reverseObjectEnumerator];
        v17 = [v16 allObjects];

        v18 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v18)
        {
          v19 = v18;
          v28 = 0;
          v29 = v11;
          v20 = *v31;
          while (2)
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v31 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v30 + 1) + 8 * i);
              v23 = [v22 timestampMs];
              if (v23 == [v9 timestampMs])
              {
                v24 = [v22 optIn];
                if (v24 == [v9 optIn])
                {
                  v15 = 0;
                  goto LABEL_27;
                }
              }

              else
              {
                v25 = [v22 timestampMs];
                if (v25 < [v9 timestampMs])
                {
                  v26 = [v22 optIn];
                  if (v26 != [v9 optIn])
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
                [v9 timestampMs];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }

          v15 = -288;
LABEL_27:
          v14 = v28;
          v11 = v29;
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

- (BOOL)failSMTsIfOverMMD:(id)a3 skipOptInOut:(BOOL)a4 proof:(id)a5 underlyingError:(id)a6 errorCode:(int64_t)a7 analyticsData:(id)a8
{
  v12 = a4;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = [v13 mutableCopy];
  if (v12)
  {
    v33 = v16;
    v34 = v15;
    v35 = a7;
    v36 = v14;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v37 = v13;
    obj = v13;
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

    v14 = v36;
    v13 = v37;
    v15 = v34;
    a7 = v35;
    v16 = v33;
  }

  v31 = [(KTContextVerifier *)self failSMTsIfOverMMD:v17 proof:v14 underlyingError:v15 errorCode:a7 analyticsData:v16];

  return v31;
}

- (BOOL)verifyKTSMTsMerged:(id)a3 mapLeaf:(id)a4 analyticsData:(id)a5
{
  v8 = a3;
  v64 = a4;
  v63 = a5;
  v62 = +[NSMutableArray array];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v9 = v8;
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

            v21 = [v20 mutationType];
            if (v21 <= 2)
            {
              if (!v21)
              {
                v27 = -71;
                goto LABEL_38;
              }

              if (v21 == 1)
              {
                goto LABEL_34;
              }

              if (v21 != 2)
              {
                goto LABEL_43;
              }
            }

            else
            {
              if (v21 <= 4)
              {
                if (v21 == 3)
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
                  v28 = [KTContextVerifier verifyDeviceMutation:v20 mapLeaf:v64];
                  if (v28)
                  {
                    v27 = v28;
                    v29 = [v20 idsDeviceMutation];
                    v30 = [v29 accountKeyHash];

                    if (v30)
                    {
                      v31 = [v20 idsDeviceMutation];
                      v32 = [v31 accountKeyHash];
                      [v62 addObject:v32];
                    }

LABEL_38:
                    v86 = v15;
                    v33 = [NSArray arrayWithObjects:&v86 count:1];
                    v34 = [(KTContextVerifier *)self failSMTsIfOverMMD:v33 proof:0 underlyingError:0 errorCode:v27 analyticsData:v63];

                    v13 = (v34 ^ 1) & v69;
LABEL_48:
                    v56 = [(KTContextVerifier *)self dataStore];
                    v71 = v12;
                    v57 = [v56 persistAndRefaultObject:v15 error:&v71];
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
                        v60 = [(KTContextVerifier *)self dataStore];
                        [v60 reportCoreDataPersistEventForLocation:@"verifyKTSMTsMerged" underlyingError:v58];

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
                  v38 = [v15 application];
                  v39 = [v15 uri];
                  v40 = [v15 mutationMs];
                  *buf = 138544130;
                  v79 = v38;
                  v80 = 2160;
                  v81 = 1752392040;
                  v82 = 2112;
                  v83 = v39;
                  v84 = 2048;
                  v85 = v40;
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
                v48 = [v15 receiptTime];
                [v48 timeIntervalSinceNow];
                v50 = [NSNumber numberWithDouble:v49 * -1000.0];
                v51 = [(KTContextVerifier *)v44 applicationID];
                v52 = [TransparencyAnalytics formatEventName:@"SmtDeviceMergeDelay" application:v51];
                [v47 logMetric:v50 withName:v52];

                self = v44;
                v20 = v65;

                v53 = +[TransparencyAnalytics logger];
                v54 = [(KTContextVerifier *)self applicationID];
                v55 = [TransparencyAnalytics formatEventName:@"VerifySmtInclusionEvent" application:v54];
                [v53 logSuccessForEventNamed:v55];

                [v15 setMergeResult:1];
                v13 = v69;
                goto LABEL_48;
              }

              if (v21 != 5)
              {
                if (v21 != 6)
                {
                  goto LABEL_43;
                }

                v26 = [v20 optInOutMutation];
                v27 = [KTContextVerifier verifyOptInOutMutationMerged:v26 mapLeaf:v64 pendingAccountAdds:v62];

LABEL_32:
                if (v27)
                {
                  goto LABEL_38;
                }

                goto LABEL_43;
              }
            }

            v27 = [KTContextVerifier verifyDeviceMutation:v20 mapLeaf:v64];
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

- (BOOL)verifyKTSMTsMerged:(id)a3 queryResponse:(id)a4 uri:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && [v8 count])
  {
    v11 = [v9 metadata];
    v12 = kTransparencyResponseMetadataKeyServerHint;
    v13 = [v11 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

    v14 = [v9 metadata];
    v15 = [v14 objectForKeyedSubscript:@"APS"];

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

    if ([v9 status] == 1)
    {
      v44 = v15;
      v18 = [TransparencyMapInclusionProofVerifier alloc];
      v19 = [(KTContextVerifier *)self applicationKeyStore];
      v20 = [(KTContextVerifier *)self applicationID];
      v21 = [(TransparencyMapInclusionProofVerifier *)v18 initWithKeyStore:v19 application:v20];

      v22 = [v9 inclusionProof];
      v43 = v21;
      [v22 setVerifier:v21];

      v23 = [v9 inclusionProof];
      v24 = [(KTContextVerifier *)self dataStore];
      [v23 setDataStore:v24];

      v25 = [v9 inclusionProof];
      v26 = [v9 metadata];
      v27 = [v26 objectForKeyedSubscript:v12];
      [v25 setMetadataValue:v27 key:v12];

      v28 = [v9 inclusionProof];
      v46 = 0;
      v29 = [v28 verifyWithError:&v46];
      v30 = v46;

      v31 = [v9 inclusionProof];
      v32 = v31;
      if (v29 == 1)
      {
        v45 = v30;
        v33 = [v31 mapLeafWithError:&v45];
        v34 = v45;

        if (v33)
        {
          LOBYTE(self) = [(KTContextVerifier *)self verifyKTSMTsMerged:v8 mapLeaf:v33 analyticsData:v17];
          v32 = v33;
          v30 = v34;
        }

        else
        {
          [v9 inclusionProof];
          v38 = v34;
          v39 = v42 = v34;
          v40 = [v39 data];
          LODWORD(self) = ![(KTContextVerifier *)self failSMTsIfOverMMD:v8 proof:v40 underlyingError:v38 errorCode:-79 analyticsData:v17];

          v32 = 0;
          v30 = v42;
        }
      }

      else
      {
        v37 = [v31 data];
        LODWORD(self) = ![(KTContextVerifier *)self failSMTsIfOverMMD:v8 proof:v37 underlyingError:v30 errorCode:-67 analyticsData:v17];
      }

      v15 = v44;
    }

    else
    {
      v30 = +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", kTransparencyErrorServer, [v9 status], @"Query response indicates server failure: %d", objc_msgSend(v9, "status"));
      v35 = [v9 status] == 7;
      v36 = [v9 data];
      LODWORD(self) = ![(KTContextVerifier *)self failSMTsIfOverMMD:v8 skipOptInOut:v35 proof:v36 underlyingError:v30 errorCode:-306 analyticsData:v17];
    }
  }

  else
  {
    LOBYTE(self) = 1;
  }

  return self;
}

- (KTContextVerifier)initWithApplicationKeyStore:(id)a3 dataStore:(id)a4 applicationID:(id)a5 context:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = KTContextVerifier;
  v15 = [(KTContextVerifier *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_applicationID, a5);
    objc_storeStrong(&v16->_applicationKeyStore, a3);
    objc_storeStrong(&v16->_dataStore, a4);
    objc_storeWeak(&v16->_context, v14);
  }

  return v16;
}

- (unint64_t)checkResponseFreshness:(id)a3 smh:(id)a4 receiptDate:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v12)
  {
    v12 = +[NSDate date];
  }

  if (![v10 count] || (v13 = -[KTContextVerifier verifySMTTimestamps:receiptDate:error:](self, "verifySMTTimestamps:receiptDate:error:", v10, v12, a6), v13 == 1))
  {
    v14 = [v11 object];
    if (v14 && (v15 = v14, v16 = [v11 hasSignature], v15, v16))
    {
      v17 = [(KTContextVerifier *)self applicationKeyStore];
      v18 = [v17 appSthKeyStore];
      v19 = [v18 signatureVerifier];
      v20 = [(KTContextVerifier *)self dataStore];
      v21 = [SignedMapHead signedTypeWithObject:v11 verifier:v19 dataStore:v20];

      v22 = [(KTContextVerifier *)self applicationKeyStore];
      [v21 setOverrideBeginTime:{objc_msgSend(v22, "patLogBeginningMs")}];

      [v12 timeIntervalSinceReferenceDate];
      v13 = [v21 verifyMMD:a6 error:?];
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

+ (BOOL)verifyServerLoggableDatas:(id)a3 againstSyncedLoggableDatas:(id)a4 cloudDevices:(id)a5 error:(id *)a6
{
  v8 = a3;
  v49 = a4;
  v9 = a5;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v8;
  v10 = [v8 countByEnumeratingWithState:&v61 objects:v70 count:16];
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
  v48 = v9;
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
      v14 = [v13 deviceID];
      v15 = [v13 clientData];
      v16 = [v9 fetchSyncedLoggableDataByPushToken:v14 registrationData:v15];

      if ([v9 disableKTSyncabledKVSStore])
      {
        if (v16)
        {
          goto LABEL_40;
        }

        v17 = -101;
LABEL_30:
        v56 = v16;
        if (a6 && *a6)
        {
          v18 = *a6;
        }

        else
        {
          v18 = 0;
        }

        v31 = +[NSMutableDictionary dictionary];
        v32 = [v13 clientData];
        v33 = [v32 kt_hexString];
        [v31 setObject:v33 forKeyedSubscript:@"clientData"];

        v34 = [v13 deviceID];
        v35 = [v34 kt_hexString];
        [v31 setObject:v35 forKeyedSubscript:@"deviceID"];

        v36 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:v17 errorLevel:4 underlyingError:v18 userinfo:v31 description:@"IDS server data missing from syncedData"];

        if (qword_10039CB60 != -1)
        {
          sub_10025D66C();
        }

        v37 = qword_10039CB68;
        if (os_log_type_enabled(qword_10039CB68, OS_LOG_TYPE_ERROR))
        {
          v38 = v37;
          v39 = [v13 deviceID];
          v40 = [v39 kt_hexString];
          v41 = [v13 clientData];
          [v41 kt_hexString];
          v42 = v55 = v12;
          *buf = v45;
          v66 = v40;
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
      v18 = v49;
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
            v24 = [v13 deviceID];
            v25 = [v23 deviceID];
            v26 = [v24 isEqualToData:v25];

            v27 = [v13 clientData];
            v28 = [v23 clientData];
            v29 = [v27 isEqualToData:v28];

            v30 = v26 ^ 1;
            if ((v26 ^ 1) & 1) == 0 && (v29)
            {
              v9 = v48;
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

      v9 = v48;
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
  if (a6)
  {
    v10 = v50;
    if (v50)
    {
      v10 = v50;
      *a6 = v10;
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

- (unint64_t)verifyUriWitness:(id)a3 uri:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v9 type];
  v11 = [(KTApplicationPublicKeyStore *)self->_applicationKeyStore vrfKey];
  v12 = [TransparencyVRFVerifier verifierOfType:v10 key:v11];

  [v9 setVerifier:v12];
  v13 = [v8 dataUsingEncoding:4];
  [v9 setMessage:v13];

  v14 = [v9 verifyWithError:a5];
  if (v14 != 1)
  {
    if (a5)
    {
      *a5 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-104 underlyingError:*a5 description:@"URI VRF witness failed for %@", v8];
    }

    if (qword_10039CB60 != -1)
    {
      sub_10025D694();
    }

    v15 = qword_10039CB68;
    if (os_log_type_enabled(qword_10039CB68, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "URI VRF witness failed for %@", buf, 0xCu);
    }
  }

  return v14;
}

- (unint64_t)verifyAccountKeyWitness:(id)a3 accountKey:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v9 type];
  v11 = [(KTApplicationPublicKeyStore *)self->_applicationKeyStore vrfKey];
  v12 = [TransparencyVRFVerifier verifierOfType:v10 key:v11];

  [v9 setVerifier:v12];
  [v9 setMessage:v8];
  v13 = [v9 verifyWithError:a5];

  if (v13 != 1)
  {
    if (a5)
    {
      *a5 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-77 underlyingError:*a5 description:@"AccountKey VRF witness failed for %@", v8];
    }

    if (qword_10039CB60 != -1)
    {
      sub_10025D6A8();
    }

    v14 = qword_10039CB68;
    if (os_log_type_enabled(qword_10039CB68, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "AccountKey VRF witness failed for %@", buf, 0xCu);
    }
  }

  return v13;
}

+ (BOOL)verifyLoggableDataSignatures:(id)a3 accountKey:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[NSMutableDictionary dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = v7;
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
  v30 = a5;
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
      v20 = [v19 verifySignatureWithAccountKey:v8 error:{&v33, v30}];
      v21 = v33;
      if ((v20 & 1) == 0)
      {
        [v19 setResult:0];
        [v19 setFailure:v21];
        v22 = [v19 deviceID];
        v23 = [v22 kt_hexString];
        [v32 setObject:v21 forKeyedSubscript:v23];

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

    v26 = [v14 domain];
    v27 = +[TransparencyError errorWithDomain:code:userInfo:](TransparencyError, "errorWithDomain:code:userInfo:", v26, [v14 code], v25);

    v12 = v31;
    if (v30 && v27)
    {
      v28 = v27;
      *v30 = v27;
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

- (unint64_t)checkQueryResponseFreshness:(id)a3 receiptDate:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v9 pendingSmtsArray];
  v11 = [v9 inclusionProof];

  v12 = [v11 mapEntry];
  v13 = [v12 smh];
  v14 = [(KTContextVerifier *)self checkResponseFreshness:v10 smh:v13 receiptDate:v8 error:a5];

  return v14;
}

- (void)checkQueryResponseEpochs:(id)a3
{
  v16 = a3;
  if ([v16 hasInclusionProof])
  {
    v4 = [v16 inclusionProof];

    if (v4)
    {
      v5 = [v16 inclusionProof];
      if ([v5 hasPerApplicationTreeEntry])
      {
        v6 = [v5 perApplicationTreeEntry];
        if (v6)
        {
          v7 = v6;
          v8 = [v5 perApplicationTreeEntry];
          if (![v8 hasSlh])
          {
LABEL_8:

            goto LABEL_9;
          }

          v9 = [v5 perApplicationTreeEntry];
          v10 = [v9 slh];

          if (v10)
          {
            v7 = [v5 perApplicationTreeEntry];
            v8 = [v7 slh];
            [(KTContextVerifier *)self checkHeadEpoch:v8];
            goto LABEL_8;
          }
        }
      }

LABEL_9:
      if (![v5 hasTopLevelTreeEntry])
      {
        goto LABEL_15;
      }

      v11 = [v5 topLevelTreeEntry];
      if (!v11)
      {
        goto LABEL_15;
      }

      v12 = v11;
      v13 = [v5 topLevelTreeEntry];
      if ([v13 hasSlh])
      {
        v14 = [v5 topLevelTreeEntry];
        v15 = [v14 slh];

        if (!v15)
        {
LABEL_15:

          goto LABEL_16;
        }

        v12 = [v5 topLevelTreeEntry];
        v13 = [v12 slh];
        [(KTContextVerifier *)self checkHeadEpoch:v13];
      }

      goto LABEL_15;
    }
  }

LABEL_16:

  _objc_release_x1();
}

- (unint64_t)verifyInclusionProof:(id)a3 mapLeaf:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [TransparencyMapInclusionProofVerifier alloc];
  v10 = [(KTContextVerifier *)self applicationKeyStore];
  v11 = [(KTContextVerifier *)self applicationID];
  v12 = [(TransparencyMapInclusionProofVerifier *)v9 initWithKeyStore:v10 application:v11];

  [v8 setVerifier:v12];
  v13 = [(KTContextVerifier *)self dataStore];
  [v8 setDataStore:v13];

  v14 = [(KTContextVerifier *)self context];
  v15 = [v14 optInServer];
  [v8 setOptInServer:v15];

  v16 = [v8 verifyWithError:a5];
  if (v16 == 1)
  {
    if (a4)
    {
      v17 = [v8 mapLeafWithError:a5];
      *a4 = v17;
      v16 = v17 != 0;
    }

    else
    {
      v16 = 1;
    }
  }

  return v16;
}

- (unint64_t)handleQueryResponse:(id)a3 queryRequest:(id)a4 receiptDate:(id)a5 fetchId:(id)a6 error:(id *)a7 rawDataHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = -[KTContextVerifier checkServerStatus:error:](self, "checkServerStatus:error:", [v14 status], a7);
  if (v19 == 1)
  {
    [(KTContextVerifier *)self checkQueryResponseEpochs:v14];
    v20 = [(KTContextVerifier *)self context];
    v21 = [v20 ready:a7];

    if (v21)
    {
      v22 = [(KTContextVerifier *)self checkQueryResponseFreshness:v14 receiptDate:v16 error:a7];
      if (v22 == 1)
      {
        v23 = [v14 uriWitness];
        v24 = [v15 uri];
        v25 = [(KTContextVerifier *)self verifyUriWitness:v23 uri:v24 error:a7];

        if (v25 == 1)
        {
          v26 = [v14 metadata];
          v27 = kTransparencyResponseMetadataKeyServerHint;
          v49 = [v26 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

          if ([v14 hasInclusionProof] && (objc_msgSend(v14, "inclusionProof"), v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
          {
            v29 = [v14 inclusionProof];
            [v29 setMetadataValue:v49 key:v27];

            v30 = [v14 inclusionProof];
            v50 = 0;
            v25 = [(KTContextVerifier *)self verifyInclusionProof:v30 mapLeaf:&v50 error:a7];
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
                if (a7)
                {
                  v32 = *a7;
                }

                else
                {
                  v32 = 0;
                }

                *buf = 138543618;
                v52 = v17;
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

          if ([v14 pendingSmtsArray_Count] && (objc_msgSend(v14, "pendingSmtsArray"), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "uri"), v41 = objc_claimAutoreleasedReturnValue(), v25 = -[KTContextVerifier verifySMTs:uri:serverHint:error:](self, "verifySMTs:uri:serverHint:error:", v40, v41, v49, a7), v41, v40, v25 != 1))
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
              v52 = v17;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Pending SMT verification failed for fetchId %{public}@", buf, 0xCu);
            }
          }

          else
          {
            v42 = [v15 uri];
            v43 = [v14 uriWitness];
            v44 = [v43 output];
            v45 = [v14 pendingSmtsArray];
            v46 = v48;
            v18[2](v18, v42, v44, v48, v45, 0);

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
          v39 = [v15 uri];
          *buf = 138543874;
          v52 = v17;
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
          v52 = v17;
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
        v52 = v17;
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
      v52 = v17;
      v53 = 1024;
      LODWORD(v54) = [v14 status];
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "QueryResponse for fetchId %{public}@ server error: %d", buf, 0x12u);
LABEL_17:
    }
  }

LABEL_23:

  return v25;
}

- (unint64_t)handleQueryResponse:(id)a3 queryRequest:(id)a4 receiptDate:(id)a5 fetchId:(id)a6 error:(id *)a7 transparentDataHandler:(id)a8
{
  v14 = a5;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100211468;
  v20[3] = &unk_10032A6B8;
  v20[4] = self;
  v21 = a6;
  v22 = v14;
  v23 = a8;
  v15 = v14;
  v16 = v23;
  v17 = v21;
  v18 = [(KTContextVerifier *)self handleQueryResponse:a3 queryRequest:a4 receiptDate:v15 fetchId:v17 error:a7 rawDataHandler:v20];

  return v18;
}

- (unint64_t)handleInsertResponse:(id)a3 uri:(id)a4 fetchId:(id)a5 error:(id *)a6 transparentDataHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = -[KTContextVerifier checkServerStatus:isInsert:error:](self, "checkServerStatus:isInsert:error:", [v12 status], 1, a6);
  if (v16 == 1)
  {
    v17 = [(KTContextVerifier *)self context];
    v18 = [v17 ready:a6];

    if (v18)
    {
      v19 = [v12 uriWitness];
      v20 = [(KTContextVerifier *)self verifyUriWitness:v19 uri:v13 error:a6];

      if (v20 == 1)
      {
        v21 = [v12 smt];
        v46 = v21;
        v22 = [NSArray arrayWithObjects:&v46 count:1];
        v23 = [v12 serverEventInfo];
        v20 = [(KTContextVerifier *)self verifySMTs:v22 uri:v13 serverHint:v23 error:a6];

        if (v20 == 1)
        {
          v43 = [KTTransparentData alloc];
          v24 = [v12 uriWitness];
          v25 = [v24 output];
          v26 = [v12 smt];
          v45 = v26;
          v27 = [NSArray arrayWithObjects:&v45 count:1];
          v44 = [(KTTransparentData *)v43 initWithUriVRFOutput:v25 mapLeaf:0 pendingSMTs:v27 error:a6];

          v28 = [(KTContextVerifier *)self applicationKeyStore];
          v29 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v28 patLogBeginningMs] / 1000.0);
          [(KTTransparentData *)v44 setCurrentTreeEpochBeginDate:v29];

          if (v44)
          {
            if ([(KTTransparentData *)v44 verifyServerInvariantsAt:0 error:a6])
            {
              v15[2](v15, v13, v44, 0);
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

            if (a6)
            {
              v40 = *a6;
            }

            else
            {
              v40 = 0;
            }

            *buf = 138543618;
            v48 = v14;
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

            if (a6)
            {
              v39 = *a6;
            }

            else
            {
              v39 = 0;
            }

            *buf = 138543618;
            v48 = v14;
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
          v48 = v14;
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
          v48 = v14;
          v49 = 2160;
          v50 = 1752392040;
          v51 = 2112;
          v52 = v13;
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
        v48 = v14;
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
      v48 = v14;
      v49 = 1024;
      LODWORD(v50) = [v12 status];
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "InsertResponse for fetchId %{public}@ server error: %d", buf, 0x12u);
    }
  }

LABEL_43:

  return v20;
}

- (id)createErrorFromSTHFailure:(id)a3 underlyingError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 errorDomain];
  v8 = [v6 errorCode];

  v9 = [TransparencyError errorWithDomain:v7 code:v8 underlyingError:v5 description:0];

  return v9;
}

- (id)createChainOfErrorsFromSTHFailures:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 allObjects];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 verificationType] == a4)
        {
          v14 = [(KTContextVerifier *)self createErrorFromSTHFailure:v13 underlyingError:v10];

          v10 = v14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)failExpiredSTHsForType:(unint64_t)a3 error:(id *)a4
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100220560;
  v25 = sub_100220570;
  v26 = 0;
  v7 = +[NSMutableArray array];
  v8 = [NSDate dateWithTimeIntervalSinceNow:-kKTMaximumSTHProofDelay];
  v9 = [(KTContextVerifier *)self dataStore];
  v10 = [(KTContextVerifier *)self applicationID];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100220578;
  v16[3] = &unk_10032B210;
  v19 = a3;
  v20 = a4;
  v16[4] = self;
  v18 = &v21;
  v11 = v7;
  v17 = v11;
  [v9 performForPendingSTHs:v10 olderThan:v8 type:a3 error:a4 block:v16];

  if (a4)
  {
    v12 = v22[5];
    if (v12)
    {
      *a4 = v12;
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

- (unint64_t)verifyConsistencyProofResponse:(id)a3 startRevision:(int64_t)a4 receivedRevisions:(id)a5 error:(id *)a6
{
  v10 = a3;
  v53 = a5;
  v11 = [v10 metadata];
  v12 = [v11 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

  LODWORD(v11) = [v10 application];
  v13 = [v10 logType];
  if (v11)
  {
    if (v13 != 2)
    {
      goto LABEL_4;
    }

    v14 = [(KTContextVerifier *)self applicationID];
    v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 application]);
    v16 = [TransparencyApplication applicationIdentifierForValue:v15];
    v17 = [v14 isEqualToString:v16];

    if ((v17 & 1) == 0)
    {
LABEL_4:
      if (a6)
      {
        *a6 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-187 description:@"LogConsistencyResponse for wrong application or tree"];
      }

      if (qword_10039CD08 != -1)
      {
        sub_10025F05C();
      }

      v18 = v53;
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

  else if (v13 != 3 || (-[KTContextVerifier applicationID](self, "applicationID"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isEqualToString:kKTApplicationIdentifierTLT], v22, (v23 & 1) == 0))
  {
    if (a6)
    {
      *a6 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-186 description:@"LogConsistencyResponse omits application, but log type or verifier is not TLT"];
    }

    if (qword_10039CD08 != -1)
    {
      sub_10025F070();
    }

    v18 = v53;
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

  if (![v10 responsesArray_Count])
  {
    v39 = 1;
    goto LABEL_42;
  }

  v24 = 0;
  v52 = 0x7FFFFFFFFFFFFFFFLL;
  v18 = v53;
  do
  {
    v25 = [v10 responsesArray];
    v26 = [v25 objectAtIndexedSubscript:v24];

    if ([v26 hasStartSlh])
    {
      v27 = [v26 startSlh];
      if (v27 && ([v26 hasEndSlh] & 1) != 0)
      {
        v28 = [v26 endSlh];

        if (v28)
        {
          v29 = [v26 startSlh];
          v30 = [SignedLogHead signedTypeWithObject:v29];

          v50 = v30;
          v31 = [v30 parsedLogHead];
          v32 = [v26 endSlh];
          v33 = [SignedLogHead signedTypeWithObject:v32];

          v34 = [v33 parsedLogHead];
          v49 = v31;
          if ([v31 revision] == a4)
          {
            v35 = 1;
            v52 = v24;
          }

          else if (v52 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v37 = [v34 revision];
            v35 = 0;
            v38 = 0x7FFFFFFFFFFFFFFFLL;
            if (v37 == a4)
            {
              v38 = v24 + 1;
            }

            v52 = v38;
          }

          else
          {
            v35 = 1;
          }

          v18 = v53;
          if (!v35)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v18 = v53;
        }
      }

      else
      {
      }
    }

    v36 = [(KTContextVerifier *)self verifyLogConsistencyResponse:v26 startRevision:a4 receivedRevisions:v18 forwards:1 serverHint:v12 error:a6];
    if (v36 != 1)
    {
      v39 = v36;

      goto LABEL_40;
    }

LABEL_22:

    ++v24;
  }

  while (v24 < [v10 responsesArray_Count]);
  v39 = 1;
  if (v52)
  {
    v51 = a4;
    if (v52 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v41 = v52 - 1;
      v39 = 1;
      v42 = 1;
      while (1)
      {
        v43 = [v10 responsesArray];
        [v43 objectAtIndexedSubscript:v41];
        v44 = v12;
        v46 = v45 = v18;

        v47 = v45;
        v12 = v44;
        v48 = [(KTContextVerifier *)self verifyLogConsistencyResponse:v46 startRevision:v51 receivedRevisions:v47 forwards:0 serverHint:v44 error:a6];

        if (v48 != 1)
        {
          break;
        }

        ++v42;
        --v41;
        v18 = v53;
        if (v42 > v52)
        {
          goto LABEL_40;
        }
      }

      v39 = v48;
LABEL_42:
      v18 = v53;
    }
  }

LABEL_40:

  return v39;
}

- (id)verifySTHs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v48 = +[NSMutableArray array];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (!v8)
  {

    v10 = 0;
    goto LABEL_38;
  }

  v9 = v8;
  v46 = a4;
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

      v22 = [(__objc2_class *)v18 parseFromData:v19 error:v21];
      v23 = *v20;

      if (!v22)
      {
        v10 = v23;
        v13 = v50;
LABEL_18:
        v36 = [v12 sth];
        [v48 addObject:v36];

        v22 = [(KTContextVerifier *)self dataStore];
        [v22 deleteObject:v12];
        goto LABEL_32;
      }

      v24 = [(KTContextVerifier *)self applicationKeyStore];
      v25 = [v24 appSthKeyStore];
      v26 = [v25 signatureVerifier];
      [v22 setVerifier:v26];

      v52 = v23;
      v27 = [v22 verifyWithError:&v52];
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

        v32 = [(KTContextVerifier *)self applicationID];
        v33 = [TransparencyAnalytics formatEventName:v31 application:v32];

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
      v37 = [(KTContextVerifier *)self dataStore];
      v51 = 0;
      v38 = [v37 persistAndRefaultObject:v12 error:&v51];
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
        v41 = [(KTContextVerifier *)self dataStore];
        [v41 reportCoreDataPersistEventForLocation:@"verifySTHs" underlyingError:v39];

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

  if (v46 && v10)
  {
    v42 = v10;
    *v46 = v10;
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

- (BOOL)setInclusionVerifiedState:(unint64_t)a3 perApplicationTreeLogEntry:(id)a4 failure:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 1;
  v12 = [v10 nodeBytes];
  v13 = [(TransparencyGPBMessage *)PerApplicationTreeNode parseFromData:v12 error:a6];

  if (!v13)
  {
    if (qword_10039CD08 != -1)
    {
      sub_10025F0AC();
    }

    v14 = qword_10039CD10;
    if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
    {
      if (a6)
      {
        v15 = *a6;
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

    if (a6)
    {
      *a6 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-203 description:@"Per application tree node is missing map head"];
    }

    *(v51 + 24) = 0;
  }

  *v46 = 0;
  v47 = v46;
  v48 = 0x2020000000;
  v49 = 0;
  if ([v13 hasObjectMapHead])
  {
    v17 = [(KTContextVerifier *)self dataStore];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100222050;
    v36[3] = &unk_10032B338;
    v37 = v13;
    v38 = self;
    v39 = v10;
    p_buf = &buf;
    v44 = a3;
    v40 = v11;
    v42 = v46;
    v45 = a6;
    v43 = &v50;
    [v17 performBlockAndWait:v36];
  }

  v18 = [(KTContextVerifier *)self applicationID];
  v19 = [TransparencyAnalytics formatEventName:@"VerifyPATInclusionProofEvent" application:v18];

  if (!+[TransparencyAnalytics hasInternalDiagnostics])
  {
    goto LABEL_23;
  }

  v20 = [v10 metadata];
  v21 = kTransparencyResponseMetadataKeyServerHint;
  v22 = [v20 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
  v23 = v22 == 0;

  if (v23)
  {
LABEL_23:
    v26 = 0;
  }

  else
  {
    v54 = v21;
    v24 = [v10 metadata];
    v25 = [v24 objectForKeyedSubscript:v21];
    v55 = v25;
    v26 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  }

  v27 = +[TransparencyAnalytics logger];
  [v27 logResultForEvent:v19 hardFailure:a3 == 0 result:v11 withAttributes:v26];

  if (a3 == 1 && *(v47 + 3) != 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v29 = *(v47 + 3);
    v30 = +[TransparencyAnalytics logger];
    v31 = [NSNumber numberWithDouble:Current - v29];
    v32 = [(KTContextVerifier *)self applicationID];
    v33 = [TransparencyAnalytics formatEventName:@"PatInclusionProofTime" application:v32];
    [v30 logMetric:v31 withName:v33];
  }

  v34 = *(v51 + 24);

  _Block_object_dispose(v46, 8);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v50, 8);
  return v34 & 1;
}

- (BOOL)setInclusionVerifiedState:(unint64_t)a3 topLevelTreeLogEntry:(id)a4 failure:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 1;
  v12 = [v10 nodeBytes];
  v13 = [(TransparencyGPBMessage *)TopLevelTreeNode parseFromData:v12 error:a6];

  if (!v13)
  {
    if (qword_10039CD08 != -1)
    {
      sub_10025F174();
    }

    v14 = qword_10039CD10;
    if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
    {
      if (a6)
      {
        v15 = *a6;
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

    if (a6)
    {
      *a6 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-204 description:@"Top level tree node is missing PAT head"];
    }

    *(v45 + 24) = 0;
  }

  *v40 = 0;
  v41 = v40;
  v42 = 0x2020000000;
  v43 = 0;
  if ([v13 hasPatHead])
  {
    v17 = [(KTContextVerifier *)self dataStore];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100222B48;
    v32[3] = &unk_10032B420;
    v33 = v13;
    v34 = self;
    v38 = a3;
    v39 = a6;
    p_buf = &buf;
    v36 = v40;
    v37 = &v44;
    [v17 performBlockAndWait:v32];
  }

  if (!+[TransparencyAnalytics hasInternalDiagnostics])
  {
    goto LABEL_23;
  }

  v18 = [v10 metadata];
  v19 = kTransparencyResponseMetadataKeyServerHint;
  v20 = [v18 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
  v21 = v20 == 0;

  if (v21)
  {
LABEL_23:
    v24 = 0;
  }

  else
  {
    v48 = v19;
    v22 = [v10 metadata];
    v23 = [v22 objectForKeyedSubscript:v19];
    v49 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  }

  v25 = +[TransparencyAnalytics logger];
  [v25 logResultForEvent:@"ktTLTVerifyInclusionProofEvent" hardFailure:a3 == 0 result:v11 withAttributes:v24];

  if (a3 == 1 && *(v41 + 3) != 0.0)
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

- (BOOL)setInclusionVerifiedState:(unint64_t)a3 logEntry:(id)a4 failure:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  if ([v10 logType] == 2)
  {
    v12 = [(KTContextVerifier *)self setInclusionVerifiedState:a3 perApplicationTreeLogEntry:v10 failure:v11 error:a6];
  }

  else
  {
    if ([v10 logType] != 3)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v12 = [(KTContextVerifier *)self setInclusionVerifiedState:a3 topLevelTreeLogEntry:v10 failure:v11 error:a6];
  }

  v13 = v12;
LABEL_7:

  return v13;
}

- (unint64_t)verifyRevisionLogProofLogEntry:(id)a3 patSTH:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(KTContextVerifier *)self dataStore];
  [v8 setDataStore:v9];

  v10 = [(KTContextVerifier *)self context];
  v11 = [v10 optInServer];
  [v8 setOptInServer:v11];

  if ([v8 logType] == 2)
  {
    v12 = [TransparencyLogEntryVerifier alloc];
    v13 = [(KTContextVerifier *)self applicationKeyStore];
    v14 = [v13 appSthKeyStore];
LABEL_5:
    v15 = v14;
    v16 = [(TransparencyLogEntryVerifier *)v12 initWithTrustedKeyStore:v14];
    [v8 setVerifier:v16];

    v30 = 0;
    v17 = [v8 verifyWithError:&v30];
    v18 = v30;
    if (v17 == 1)
    {
      v19 = [v8 logType];
      if (a4 && v19 == 2)
      {
        v20 = [v8 slh];
        *a4 = [SignedLogHead signedTypeWithObject:v20];
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

      if (a5 && v18)
      {
        v22 = v18;
        *a5 = v18;
      }
    }

    v29 = 0;
    v23 = [(KTContextVerifier *)self setInclusionVerifiedState:v17 logEntry:v8 failure:v18 error:&v29];
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

  if ([v8 logType] == 3)
  {
    v12 = [TransparencyLogEntryVerifier alloc];
    v13 = [(KTContextVerifier *)self applicationKeyStore];
    v14 = [v13 tltKeyStore];
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
    LODWORD(v32) = [v8 logType];
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Unknown log type in log entry: %d", buf, 8u);
  }

  if (a5)
  {
    +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", kTransparencyErrorDecode, -205, @"Unknown log type in log entry: %d", [v8 logType]);
    *a5 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_22:

  return v17;
}

- (unint64_t)verifyRevisionLogTopLevelProof:(id)a3 patSTH:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(KTContextVerifier *)self dataStore];
  [v8 setDataStore:v10];

  v11 = [(KTContextVerifier *)self context];
  v12 = [v11 optInServer];
  [v8 setOptInServer:v12];

  v13 = [TransparencyLogEntryVerifier alloc];
  v14 = [(KTContextVerifier *)self applicationKeyStore];
  v15 = [v14 tltKeyStore];
  v16 = [(TransparencyLogEntryVerifier *)v13 initWithTrustedKeyStore:v15];
  [v8 setVerifier:v16];

  if (v9)
  {
    v27 = 0;
    v17 = [v8 verifyTLTEntryForPerApplicationLogHead:v9 error:&v27];
    v18 = v27;
  }

  else
  {
    v26 = 0;
    v17 = [v8 verifyWithError:&v26];
    v18 = v26;
    v25 = 0;
    v19 = [(KTContextVerifier *)self setInclusionVerifiedState:v17 logEntry:v8 failure:v18 error:&v25];
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

    if (a5 && v18)
    {
      v23 = v18;
      *a5 = v18;
    }
  }

  return v17;
}

- (BOOL)verifyRevisionLogInclusionProofResponse:(id)a3 receivedRevisions:(id)a4 error:(id *)a5
{
  v48 = a3;
  v49 = a4;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = [v48 logEntryArray];
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

      v16 = [v48 metadata];
      v17 = [v16 objectForKeyedSubscript:v9];
      [v12 setMetadataValue:v17 key:v9];

      if (v49)
      {
        v18 = [v12 nodeBytes];
        v19 = [v18 length] == 0;

        if (!v19)
        {
          if ([v12 logType] == 3)
          {
            v20 = [v12 nodeBytes];
            v21 = [(TransparencyGPBMessage *)TopLevelTreeNode parseFromData:v20 error:0];

            v22 = [v21 patHead];
            v23 = [v22 object];
            v24 = [(TransparencyGPBMessage *)LogHead parseFromData:v23 error:0];
          }

          else
          {
            if ([v12 logType] != 2)
            {
              goto LABEL_18;
            }

            v25 = [v12 nodeBytes];
            v21 = [(TransparencyGPBMessage *)PerApplicationTreeNode parseFromData:v25 error:0];

            v26 = [v21 objectMapHead];
            v27 = [v26 object];
            v24 = [(TransparencyGPBMessage *)MapHead parseFromData:v27 error:0];
          }

          if (v24)
          {
            v28 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 revision]);
            [v49 addObject:v28];
          }
        }
      }

LABEL_18:
      v61 = v11;
      v29 = [(KTContextVerifier *)self verifyRevisionLogProofLogEntry:v12 patSTH:&v61 error:a5];
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

  if (![v48 hasTopLevelTreeEntry] || (objc_msgSend(v48, "topLevelTreeEntry"), v30 = objc_claimAutoreleasedReturnValue(), v31 = v30 == 0, v30, v31))
  {
    if (v6)
    {
      v55 = 0;
      v56 = &v55;
      v57 = 0x3032000000;
      v58 = sub_100220560;
      v59 = sub_100220570;
      v60 = 0;
      v43 = [(KTContextVerifier *)self dataStore];
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_10022400C;
      v51[3] = &unk_100327288;
      v6 = v6;
      v52 = v6;
      v53 = self;
      v54 = &v55;
      [v43 performBlockAndWait:v51];

      if (a5)
      {
        v44 = v56[5];
        if (v44)
        {
          *a5 = v44;
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
    v32 = [v48 topLevelTreeEntry];
    if (![v32 hasSlh])
    {
      goto LABEL_26;
    }

    v33 = [v48 topLevelTreeEntry];
    v34 = [v33 slh];
    v35 = v34 == 0;

    if (!v35)
    {
      v32 = [v48 topLevelTreeEntry];
      v36 = [v32 slh];
      [(KTContextVerifier *)self checkHeadEpoch:v36];

LABEL_26:
    }

    v37 = [v48 topLevelTreeEntry];
    v38 = [v48 metadata];
    v39 = kTransparencyResponseMetadataKeyServerHint;
    v40 = [v38 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
    [v37 setMetadataValue:v40 key:v39];

    v41 = [v48 topLevelTreeEntry];
    v42 = [(KTContextVerifier *)self verifyRevisionLogTopLevelProof:v41 patSTH:v6 error:a5]!= 0;

LABEL_34:
  }

  return v42;
}

- (void)checkHeadEpoch:(id)a3
{
  v4 = [SignedLogHead signedTypeWithObject:a3];
  v5 = [v4 parsedLogHead];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 logType];
    v8 = [v6 logBeginningMs];
    v9 = [(KTContextVerifier *)self applicationKeyStore];
    v10 = v9;
    if (v7 == 3)
    {
      v11 = [v9 tltLogBeginningMs];

      if (v8 > v11)
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

        v13 = [(KTContextVerifier *)self applicationKeyStore];
        v14 = [v13 vrfKey];
        [v14 setNeedsRefresh:1];

        v15 = [(KTContextVerifier *)self applicationKeyStore];
        v16 = [v15 appSmtKeyStore];
        v17 = [v16 signatureVerifier];
        [v17 setNeedsRefresh:1];

        v18 = [(KTContextVerifier *)self applicationKeyStore];
        v19 = [v18 appSthKeyStore];
        v20 = [v19 signatureVerifier];
        [v20 setNeedsRefresh:1];

        v21 = [(KTContextVerifier *)self applicationKeyStore];
        v22 = [v21 tltKeyStore];
LABEL_15:
        v30 = v22;
        v31 = [v22 signatureVerifier];
        [v31 setNeedsRefresh:1];
      }
    }

    else
    {
      v23 = [v9 patLogBeginningMs];

      if (v8 > v23)
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

        v25 = [(KTContextVerifier *)self applicationKeyStore];
        v26 = [v25 vrfKey];
        [v26 setNeedsRefresh:1];

        v27 = [(KTContextVerifier *)self applicationKeyStore];
        v28 = [v27 appSmtKeyStore];
        v29 = [v28 signatureVerifier];
        [v29 setNeedsRefresh:1];

        v21 = [(KTContextVerifier *)self applicationKeyStore];
        v22 = [v21 appSthKeyStore];
        goto LABEL_15;
      }
    }
  }
}

- (void)processSTHsFromGossipPeers:(id)a3 verifier:(id)a4 error:(id *)a5
{
  obj = a3;
  v38 = a4;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v39 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v39)
  {
    v35 = a5;
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
          v21 = [(KTContextVerifier *)self applicationKeyStore];
          v22 = [v21 appSthKeyStore];
          v23 = [v22 signatureVerifier];
          [v12 setVerifier:v23];

          v24 = [(KTContextVerifier *)self dataStore];
          [v12 setDataStore:v24];

          [v12 setGossip:1];
          [v12 setGossip:1];
          if (v38)
          {
            [v12 setVerifier:v38];
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
              v27 = [v25 domain];
              v28 = p_vtable;
              v29 = v8;
              v30 = [v25 code];
              v31 = [0 description];
              v32 = v30;
              v8 = v29;
              p_vtable = v28;
              v33 = [TransparencyError errorWithDomain:v27 code:v32 underlyingError:v7 description:@"%@", v31];

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
            v17 = [v14 domain];
            v18 = [v14 code];
            v19 = [v14 description];
            v20 = [TransparencyError errorWithDomain:v17 code:v18 underlyingError:v7 description:@"%@", v19];

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
    if (v35 && v7)
    {
      v34 = v7;
      *v35 = v7;
    }
  }

  else
  {
    v7 = 0;
  }
}

@end