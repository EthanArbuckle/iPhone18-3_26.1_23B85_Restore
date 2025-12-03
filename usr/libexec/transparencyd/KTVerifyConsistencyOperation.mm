@interface KTVerifyConsistencyOperation
- (BOOL)downloadConsistencyProofRequest:(id)request lastVerifiedRevision:(id)revision application:(id)application error:(id *)error;
- (BOOL)verifyConsistency:(id)consistency error:(id *)error;
- (KTVerifyConsistencyOperation)initWithDependencies:(id)dependencies opId:(id)id;
- (void)groupStart;
@end

@implementation KTVerifyConsistencyOperation

- (KTVerifyConsistencyOperation)initWithDependencies:(id)dependencies opId:(id)id
{
  dependenciesCopy = dependencies;
  idCopy = id;
  v17.receiver = self;
  v17.super_class = KTVerifyConsistencyOperation;
  v9 = [(KTGroupOperation *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deps, dependencies);
    [(KTVerifyConsistencyOperation *)v10 setBackgroundOpId:idCopy];
    v11 = +[NSMutableDictionary dictionary];
    [(KTVerifyConsistencyOperation *)v10 setErrors:v11];

    v12 = +[NSMutableDictionary dictionary];
    [(KTVerifyConsistencyOperation *)v10 setFailedRevs:v12];

    v13 = +[NSMutableDictionary dictionary];
    [(KTVerifyConsistencyOperation *)v10 setServerHints:v13];

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("VerifyConsistency_FetchWaiter", v14);
    [(KTVerifyConsistencyOperation *)v10 setFetchQueue:v15];

    [(KTGroupOperation *)v10 setName:@"Consistency"];
  }

  return v10;
}

- (void)groupStart
{
  if (qword_10038BB90 != -1)
  {
    sub_100246CC0();
  }

  v3 = qword_10038BB98;
  if (os_log_type_enabled(qword_10038BB98, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "VerifyConsistency: start", buf, 2u);
  }

  v4 = dispatch_group_create();
  [(KTVerifyConsistencyOperation *)self setFetchGroup:v4];

  v5 = objc_alloc_init(NSOperation);
  [(KTVerifyConsistencyOperation *)self setFinishedOp:v5];

  finishedOp = [(KTVerifyConsistencyOperation *)self finishedOp];
  [(KTGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  v26 = 0;
  LOBYTE(finishedOp) = [(KTVerifyConsistencyOperation *)self verifyConsistency:kKTApplicationIdentifierIDS error:&v26];
  v7 = v26;
  v8 = v7;
  if ((finishedOp & 1) == 0)
  {
    if (v7)
    {
      if (qword_10038BB90 != -1)
      {
        sub_100246CD4();
      }

      v9 = qword_10038BB98;
      if (os_log_type_enabled(qword_10038BB98, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Verify IDS consistency failed: %@", buf, 0xCu);
      }
    }

    v8 = 0;
  }

  v25 = v8;
  v10 = [(KTVerifyConsistencyOperation *)self verifyConsistency:kKTApplicationIdentifierTLT error:&v25];
  v11 = v25;

  if ((v10 & 1) == 0)
  {
    if (v11)
    {
      if (qword_10038BB90 != -1)
      {
        sub_100246CFC();
      }

      v12 = qword_10038BB98;
      if (os_log_type_enabled(qword_10038BB98, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Verify TLT consistency failed: %@", buf, 0xCu);
      }
    }

    v11 = 0;
  }

  v24 = v11;
  v13 = [(KTVerifyConsistencyOperation *)self verifyConsistency:kKTApplicationIdentifierIDSFaceTime error:&v24];
  v14 = v24;

  if ((v13 & 1) == 0)
  {
    if (v14)
    {
      if (qword_10038BB90 != -1)
      {
        sub_100246D24();
      }

      v15 = qword_10038BB98;
      if (os_log_type_enabled(qword_10038BB98, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Verify FT consistency failed: %@", buf, 0xCu);
      }
    }

    v14 = 0;
  }

  v23 = v14;
  v16 = [(KTVerifyConsistencyOperation *)self verifyConsistency:kKTApplicationIdentifierIDSMultiplex error:&v23];
  v17 = v23;

  if ((v16 & 1) == 0)
  {
    if (v17)
    {
      if (qword_10038BB90 != -1)
      {
        sub_100246D4C();
      }

      v18 = qword_10038BB98;
      if (os_log_type_enabled(qword_10038BB98, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Verify MP consistency failed: %@", buf, 0xCu);
      }
    }

    v17 = 0;
  }

  if (qword_10038BB90 != -1)
  {
    sub_100246D74();
  }

  v19 = qword_10038BB98;
  if (os_log_type_enabled(qword_10038BB98, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "VerifyConsistency: waiting for fetches to finish validating", buf, 2u);
  }

  fetchGroup = [(KTVerifyConsistencyOperation *)self fetchGroup];
  fetchQueue = [(KTVerifyConsistencyOperation *)self fetchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000107A8;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_group_notify(fetchGroup, fetchQueue, block);
}

- (BOOL)verifyConsistency:(id)consistency error:(id *)error
{
  consistencyCopy = consistency;
  deps = [(KTVerifyConsistencyOperation *)self deps];
  publicKeyStore = [deps publicKeyStore];
  v9 = [publicKeyStore applicationPublicKeyStore:consistencyCopy];

  patLogBeginningMs = [v9 patLogBeginningMs];
  if ([consistencyCopy isEqual:kKTApplicationIdentifierTLT])
  {
    deps2 = [(KTVerifyConsistencyOperation *)self deps];
    publicKeyStore2 = [deps2 publicKeyStore];
    tltKeyStore = [publicKeyStore2 tltKeyStore];

    patLogBeginningMs = [tltKeyStore tltLogBeginningMs];
    v9 = tltKeyStore;
  }

  deps3 = [(KTVerifyConsistencyOperation *)self deps];
  dataStore = [deps3 dataStore];
  v57 = 0;
  v16 = [dataStore latestConsistencyVerifiedTreeHeadRevision:consistencyCopy logBeginMs:patLogBeginningMs error:&v57];
  v17 = v57;

  v50 = v16;
  if (v16)
  {
    errorCopy = error;
    deps4 = [(KTVerifyConsistencyOperation *)self deps];
    dataStore2 = [deps4 dataStore];
    v56 = v17;
    v20 = [dataStore2 unverifiedRevisions:consistencyCopy isMapHead:0 inclusion:0 logBeginMs:patLogBeginningMs error:&v56];
    v21 = v56;

    if (v20 && [v20 count])
    {
      v22 = [v20 mutableCopy];
      v48 = v9;
      if ([v22 count] && (!objc_msgSend(v22, "containsObject:", v50) || objc_msgSend(v22, "count") > 1))
      {
        [v22 sortUsingSelector:"compare:"];
        deps5 = [(KTVerifyConsistencyOperation *)self deps];
        logClient = [deps5 logClient];
        v47 = v22;
        v31 = +[KTContext chunkArray:chunkSize:](KTContext, "chunkArray:chunkSize:", v22, [logClient consistencyMaxProofs]);

        if (qword_10038BB90 != -1)
        {
          sub_100246DEC();
        }

        v46 = v20;
        v32 = qword_10038BB98;
        if (os_log_type_enabled(qword_10038BB98, OS_LOG_TYPE_DEFAULT))
        {
          v33 = v32;
          v34 = [v31 count];
          *buf = 138543874;
          v60 = consistencyCopy;
          v61 = 2114;
          v62 = v22;
          v63 = 2048;
          v64 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "fetching consistency proof for %{public}@ %{public}@ in %lu chunks", buf, 0x20u);
        }

        v35 = consistencyCopy;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v36 = v31;
        v37 = [v36 countByEnumeratingWithState:&v52 objects:v58 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v53;
          v24 = 1;
          do
          {
            for (i = 0; i != v38; i = i + 1)
            {
              v41 = v21;
              if (*v53 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v42 = *(*(&v52 + 1) + 8 * i);
              v51 = v21;
              v43 = [(KTVerifyConsistencyOperation *)self downloadConsistencyProofRequest:v42 lastVerifiedRevision:v50 application:v35 error:&v51, v46];
              v21 = v51;

              if ((v43 & 1) == 0)
              {
                v24 = 0;
                if (errorCopy)
                {
                  if (v21)
                  {
                    v44 = v21;
                    v24 = 0;
                    *errorCopy = v21;
                  }
                }
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v52 objects:v58 count:16];
          }

          while (v38);
        }

        else
        {
          v24 = 1;
        }

        consistencyCopy = v35;
        v20 = v46;
        v22 = v47;
      }

      else
      {
        if (qword_10038BB90 != -1)
        {
          sub_100246E14();
        }

        v23 = qword_10038BB98;
        v24 = 1;
        if (os_log_type_enabled(qword_10038BB98, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Skipping consistency proof request -- only one revision", buf, 2u);
        }
      }

      v9 = v48;
    }

    else if (v21)
    {
      if (qword_10038BB90 != -1)
      {
        sub_100246E3C();
      }

      v25 = qword_10038BB98;
      if (os_log_type_enabled(qword_10038BB98, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v60 = consistencyCopy;
        v61 = 2112;
        v62 = v21;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "failed to get consistency unverified STH revisions for %{public}@: %@", buf, 0x16u);
      }

      if (errorCopy)
      {
        v26 = v21;
        v24 = 0;
        *errorCopy = v21;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 1;
    }

    v17 = v21;
  }

  else
  {
    if (!v17)
    {
      goto LABEL_27;
    }

    if (qword_10038BB90 != -1)
    {
      sub_100246E64();
    }

    v27 = qword_10038BB98;
    if (os_log_type_enabled(qword_10038BB98, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v60 = consistencyCopy;
      v61 = 2112;
      v62 = v17;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "failed to get latest verified STH revision for %{public}@: %@", buf, 0x16u);
    }

    if (error)
    {
      v28 = v17;
      v24 = 0;
      *error = v17;
    }

    else
    {
LABEL_27:
      v24 = 0;
    }
  }

  return v24 & 1;
}

- (BOOL)downloadConsistencyProofRequest:(id)request lastVerifiedRevision:(id)revision application:(id)application error:(id *)error
{
  requestCopy = request;
  revisionCopy = revision;
  applicationCopy = application;
  v13 = [NSMutableArray arrayWithArray:requestCopy];
  if (([v13 containsObject:revisionCopy] & 1) == 0)
  {
    [v13 addObject:revisionCopy];
    [v13 sortUsingSelector:"compare:"];
  }

  v14 = [TransparencyRPCRequestBuilder buildConsistencyProofRequest:applicationCopy revisions:v13 error:error];
  if (v14)
  {
    *buf = 0;
    v38 = buf;
    v39 = 0x3032000000;
    v40 = sub_1000117C8;
    v41 = sub_1000117D8;
    v42 = 0;
    fetchGroup = [(KTVerifyConsistencyOperation *)self fetchGroup];
    dispatch_group_enter(fetchGroup);

    deps = [(KTVerifyConsistencyOperation *)self deps];
    dataStore = [deps dataStore];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000117E0;
    v31[3] = &unk_1003170C8;
    v31[4] = self;
    v18 = applicationCopy;
    v32 = v18;
    v33 = revisionCopy;
    v34 = requestCopy;
    v19 = v13;
    v35 = v19;
    v36 = buf;
    [dataStore performBlockAndWaitWithMoc:v31];

    objc_initWeak(&location, self);
    deps2 = [(KTVerifyConsistencyOperation *)self deps];
    logClient = [deps2 logClient];
    v22 = *(v38 + 5);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100011A38;
    v25[3] = &unk_1003171B8;
    objc_copyWeak(&v29, &location);
    v26 = v18;
    v28 = buf;
    v27 = v19;
    [logClient fetchConsistencyProof:v14 uuid:v22 completionHandler:v25];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (qword_10038BB90 != -1)
    {
      sub_100246E8C();
    }

    v23 = qword_10038BB98;
    if (os_log_type_enabled(qword_10038BB98, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "failed to create consistency proof request", buf, 2u);
    }
  }

  return v14 != 0;
}

@end