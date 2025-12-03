@interface KTVerifyRevisionInclusionOperation
- (BOOL)downloadInclusionProofChunk:(id)chunk application:(id)application downloadType:(unint64_t)type error:(id *)error;
- (BOOL)downloadInclusionProofsForRevisions:(id)revisions application:(id)application downloadType:(unint64_t)type error:(id *)error;
- (BOOL)verifyInclusion:(id)inclusion error:(id *)error;
- (BOOL)verifySMHInclusion:(id)inclusion logBeginMs:(unint64_t)ms error:(id *)error;
- (BOOL)verifySTHInclusion:(id)inclusion logBeginMs:(unint64_t)ms error:(id *)error;
- (KTVerifyRevisionInclusionOperation)initWithDependencies:(id)dependencies opId:(id)id;
- (void)groupStart;
@end

@implementation KTVerifyRevisionInclusionOperation

- (KTVerifyRevisionInclusionOperation)initWithDependencies:(id)dependencies opId:(id)id
{
  dependenciesCopy = dependencies;
  idCopy = id;
  v17.receiver = self;
  v17.super_class = KTVerifyRevisionInclusionOperation;
  v9 = [(KTGroupOperation *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deps, dependencies);
    [(KTVerifyRevisionInclusionOperation *)v10 setBackgroundOpId:idCopy];
    v11 = +[NSMutableDictionary dictionary];
    [(KTVerifyRevisionInclusionOperation *)v10 setErrors:v11];

    v12 = +[NSMutableDictionary dictionary];
    [(KTVerifyRevisionInclusionOperation *)v10 setFailedRevs:v12];

    v13 = +[NSMutableDictionary dictionary];
    [(KTVerifyRevisionInclusionOperation *)v10 setServerHints:v13];

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("VerifyInclusion_FetchWaiter", v14);
    [(KTVerifyRevisionInclusionOperation *)v10 setFetchQueue:v15];

    [(KTGroupOperation *)v10 setName:@"RevInclusion"];
  }

  return v10;
}

- (void)groupStart
{
  if (qword_10038BD50 != -1)
  {
    sub_10024A68C();
  }

  v3 = qword_10038BD58;
  if (os_log_type_enabled(qword_10038BD58, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "VerifyRevisionInclusion: start", buf, 2u);
  }

  v4 = dispatch_group_create();
  [(KTVerifyRevisionInclusionOperation *)self setFetchGroup:v4];

  v5 = objc_alloc_init(NSOperation);
  [(KTVerifyRevisionInclusionOperation *)self setFinishedOp:v5];

  finishedOp = [(KTVerifyRevisionInclusionOperation *)self finishedOp];
  [(KTGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  v22 = 0;
  v7 = [(KTVerifyRevisionInclusionOperation *)self verifyInclusion:kKTApplicationIdentifierIDS error:&v22];
  v8 = v22;
  if ((v7 & 1) == 0)
  {
    if (qword_10038BD50 != -1)
    {
      sub_10024A6A0();
    }

    v9 = qword_10038BD58;
    if (os_log_type_enabled(qword_10038BD58, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Verify IDS revision inclusion failed: %@", buf, 0xCu);
    }

    v8 = 0;
  }

  v21 = v8;
  v10 = [(KTVerifyRevisionInclusionOperation *)self verifyInclusion:kKTApplicationIdentifierIDSFaceTime error:&v21];
  v11 = v21;

  if ((v10 & 1) == 0)
  {
    if (qword_10038BD50 != -1)
    {
      sub_10024A6C8();
    }

    v12 = qword_10038BD58;
    if (os_log_type_enabled(qword_10038BD58, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Verify FT revision inclusion failed: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  v20 = v11;
  v13 = [(KTVerifyRevisionInclusionOperation *)self verifyInclusion:kKTApplicationIdentifierIDSMultiplex error:&v20];
  v14 = v20;

  if ((v13 & 1) == 0)
  {
    if (qword_10038BD50 != -1)
    {
      sub_10024A6F0();
    }

    v15 = qword_10038BD58;
    if (os_log_type_enabled(qword_10038BD58, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Verify MP revision inclusion failed: %@", buf, 0xCu);
    }

    v14 = 0;
  }

  if (qword_10038BD50 != -1)
  {
    sub_10024A718();
  }

  v16 = qword_10038BD58;
  if (os_log_type_enabled(qword_10038BD58, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "VerifyRevisionInclusion: waiting for fetches to finish validating", buf, 2u);
  }

  fetchGroup = [(KTVerifyRevisionInclusionOperation *)self fetchGroup];
  fetchQueue = [(KTVerifyRevisionInclusionOperation *)self fetchQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100065758;
  v19[3] = &unk_100316FE0;
  v19[4] = self;
  dispatch_group_notify(fetchGroup, fetchQueue, v19);
}

- (BOOL)verifyInclusion:(id)inclusion error:(id *)error
{
  inclusionCopy = inclusion;
  deps = [(KTVerifyRevisionInclusionOperation *)self deps];
  publicKeyStore = [deps publicKeyStore];
  v9 = [publicKeyStore applicationPublicKeyStore:inclusionCopy];

  patLogBeginningMs = [v9 patLogBeginningMs];
  if ([(KTVerifyRevisionInclusionOperation *)self verifySMHInclusion:inclusionCopy logBeginMs:patLogBeginningMs error:error])
  {
    v11 = [(KTVerifyRevisionInclusionOperation *)self verifySTHInclusion:inclusionCopy logBeginMs:patLogBeginningMs error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)verifySMHInclusion:(id)inclusion logBeginMs:(unint64_t)ms error:(id *)error
{
  inclusionCopy = inclusion;
  deps = [(KTVerifyRevisionInclusionOperation *)self deps];
  dataStore = [deps dataStore];
  v17 = 0;
  v11 = [dataStore unverifiedRevisions:inclusionCopy isMapHead:1 inclusion:1 logBeginMs:ms error:&v17];
  v12 = v17;

  if (v11)
  {
    v13 = [(KTVerifyRevisionInclusionOperation *)self downloadInclusionProofsForRevisions:v11 application:inclusionCopy downloadType:1 error:error];
  }

  else if (v12)
  {
    if (qword_10038BD50 != -1)
    {
      sub_10024A768();
    }

    v15 = qword_10038BD58;
    if (os_log_type_enabled(qword_10038BD58, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v19 = inclusionCopy;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "failed to get inclusion unverified SMH revisions for %{public}@: %@", buf, 0x16u);
    }

    if (error)
    {
      v16 = v12;
      v13 = 0;
      *error = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)verifySTHInclusion:(id)inclusion logBeginMs:(unint64_t)ms error:(id *)error
{
  inclusionCopy = inclusion;
  deps = [(KTVerifyRevisionInclusionOperation *)self deps];
  dataStore = [deps dataStore];
  v17 = 0;
  v11 = [dataStore unverifiedRevisions:inclusionCopy isMapHead:0 inclusion:1 logBeginMs:ms error:&v17];
  v12 = v17;

  if (v11)
  {
    v13 = [(KTVerifyRevisionInclusionOperation *)self downloadInclusionProofsForRevisions:v11 application:inclusionCopy downloadType:2 error:error];
  }

  else if (v12)
  {
    if (qword_10038BD50 != -1)
    {
      sub_10024A790();
    }

    v15 = qword_10038BD58;
    if (os_log_type_enabled(qword_10038BD58, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v19 = inclusionCopy;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "failed to get inclusion unverified STH revisions for %{public}@: %@", buf, 0x16u);
    }

    if (error)
    {
      v16 = v12;
      v13 = 0;
      *error = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)downloadInclusionProofsForRevisions:(id)revisions application:(id)application downloadType:(unint64_t)type error:(id *)error
{
  revisionsCopy = revisions;
  applicationCopy = application;
  if ([revisionsCopy count])
  {
    deps = [(KTVerifyRevisionInclusionOperation *)self deps];
    logClient = [deps logClient];
    v13 = +[KTContext chunkArray:chunkSize:](KTContext, "chunkArray:chunkSize:", revisionsCopy, [logClient revisionLogMaxProofs]);

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v13;
    v14 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v26 = revisionsCopy;
      v16 = 0;
      v17 = *v31;
      v18 = 1;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          v20 = v16;
          if (*v31 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v30 + 1) + 8 * i);
          v29 = v16;
          v22 = [(KTVerifyRevisionInclusionOperation *)self downloadInclusionProofChunk:v21 application:applicationCopy downloadType:type error:&v29, v26];
          v16 = v29;

          if ((v22 & 1) == 0)
          {
            v18 = 0;
            if (error)
            {
              if (v16)
              {
                v23 = v16;
                v18 = 0;
                *error = v16;
              }
            }
          }
        }

        v15 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v15);

      revisionsCopy = v26;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    if (qword_10038BD50 != -1)
    {
      sub_10024A7B8();
    }

    v24 = qword_10038BD58;
    v18 = 1;
    if (os_log_type_enabled(qword_10038BD58, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v36 = applicationCopy;
      v37 = 2048;
      typeCopy = type;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Skipping revision inclusion proof request -- no revisions for %@, type %lu", buf, 0x16u);
    }
  }

  return v18 & 1;
}

- (BOOL)downloadInclusionProofChunk:(id)chunk application:(id)application downloadType:(unint64_t)type error:(id *)error
{
  chunkCopy = chunk;
  applicationCopy = application;
  if (type == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  v13 = [TransparencyRPCRequestBuilder buildRevisionLogInclusionProofRequest:applicationCopy logType:v12 revisions:chunkCopy error:error];
  if (v13)
  {
    *buf = 0;
    v37 = buf;
    v38 = 0x3032000000;
    v39 = sub_100066654;
    v40 = sub_100066664;
    v41 = 0;
    deps = [(KTVerifyRevisionInclusionOperation *)self deps];
    dataStore = [deps dataStore];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10006666C;
    v30[3] = &unk_10031C2E0;
    v30[4] = self;
    typeCopy = type;
    v16 = applicationCopy;
    v31 = v16;
    v17 = chunkCopy;
    errorCopy = error;
    v32 = v17;
    v33 = buf;
    [dataStore performBlockAndWaitWithMoc:v30];

    fetchGroup = [(KTVerifyRevisionInclusionOperation *)self fetchGroup];
    dispatch_group_enter(fetchGroup);

    objc_initWeak(&location, self);
    deps2 = [(KTVerifyRevisionInclusionOperation *)self deps];
    logClient = [deps2 logClient];
    v21 = *(v37 + 5);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100066974;
    v24[3] = &unk_10031C388;
    objc_copyWeak(v28, &location);
    v25 = v16;
    v27 = buf;
    v26 = v17;
    v28[1] = type;
    [logClient fetchRevisionLogInclusionProof:v13 uuid:v21 completionHandler:v24];

    objc_destroyWeak(v28);
    objc_destroyWeak(&location);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (qword_10038BD50 != -1)
    {
      sub_10024A7CC();
    }

    v22 = qword_10038BD58;
    if (os_log_type_enabled(qword_10038BD58, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "failed to create revision inclusion proof request", buf, 2u);
    }
  }

  return v13 != 0;
}

@end