@interface KTGarbageCollectDBOperation
- (KTGarbageCollectDBOperation)initWithDependencies:(id)a3;
- (void)garbageCollectHeads:(id)a3 error:(id *)a4;
- (void)groupStart;
@end

@implementation KTGarbageCollectDBOperation

- (KTGarbageCollectDBOperation)initWithDependencies:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KTGarbageCollectDBOperation;
  v6 = [(KTGroupOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deps, a3);
  }

  return v7;
}

- (void)garbageCollectHeads:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(KTGarbageCollectDBOperation *)self deps];
  v8 = [v7 publicKeyStore];
  v9 = [v8 applicationPublicKeyStore:v6];

  v10 = [v9 patLogBeginningMs];
  v11 = kKTApplicationIdentifierTLT;
  if ([v6 isEqual:kKTApplicationIdentifierTLT])
  {
    v12 = [(KTGarbageCollectDBOperation *)self deps];
    v13 = [v12 publicKeyStore];
    v14 = [v13 tltKeyStore];

    v10 = [v14 tltLogBeginningMs];
    v9 = v14;
  }

  v15 = [NSDate dateWithTimeIntervalSinceNow:-kKTMaximumSTHLifetime];
  v16 = [(KTGarbageCollectDBOperation *)self deps];
  v17 = [v16 dataStore];
  [v17 garbageCollectSTHs:v6 logBeginMs:v10 olderThanDate:v15 error:a4];

  if (([v6 isEqual:v11] & 1) == 0)
  {
    v18 = [(KTGarbageCollectDBOperation *)self deps];
    v19 = [v18 dataStore];
    v20 = [v19 newestMapRevision:v6 logBeginMs:objc_msgSend(v9 error:{"patLogBeginningMs"), a4}];

    if (a4 && *a4)
    {
      if (qword_10038BC20 != -1)
      {
        sub_100247B84();
      }

      v21 = qword_10038BC28;
      if (os_log_type_enabled(qword_10038BC28, OS_LOG_TYPE_ERROR))
      {
        v22 = *a4;
        v26 = 138412546;
        v27 = v6;
        v28 = 2112;
        v29 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "garbageCollectHeads failed to get newest map revision for %@: %@", &v26, 0x16u);
      }
    }

    v23 = [NSDate dateWithTimeIntervalSinceNow:-kKTMaximumSMHLifetime];
    v24 = [(KTGarbageCollectDBOperation *)self deps];
    v25 = [v24 dataStore];
    [v25 garbageCollectSMHs:v6 logBeginMs:objc_msgSend(v9 olderThanRevision:"patLogBeginningMs") olderThanDate:v20 error:{v23, a4}];
  }
}

- (void)groupStart
{
  if (qword_10038BC20 != -1)
  {
    sub_100247B98();
  }

  v3 = qword_10038BC28;
  if (os_log_type_enabled(qword_10038BC28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "GarbageCollectDB: start", buf, 2u);
  }

  v4 = [(KTGarbageCollectDBOperation *)self deps];
  v5 = [v4 dataStore];
  v54 = 0;
  [v5 garbageCollectVerifications:&v54];
  v6 = v54;

  if (v6)
  {
    if (qword_10038BC20 != -1)
    {
      sub_100247BAC();
    }

    v7 = qword_10038BC28;
    if (os_log_type_enabled(qword_10038BC28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "garbageCollectVerifications: %@", buf, 0xCu);
    }
  }

  v8 = [(KTGarbageCollectDBOperation *)self deps];
  v9 = [v8 dataStore];
  v53 = 0;
  [v9 garbageCollectServerRPCs:&v53];
  v10 = v53;

  if (v10)
  {
    if (qword_10038BC20 != -1)
    {
      sub_100247BD4();
    }

    v11 = qword_10038BC28;
    if (os_log_type_enabled(qword_10038BC28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "garbageCollectServerRPCs: %@", buf, 0xCu);
    }
  }

  v12 = [(KTGarbageCollectDBOperation *)self deps];
  v13 = [v12 dataStore];
  v52 = 0;
  [v13 garbageCollectSMTs:&v52];
  v14 = v52;

  if (v14)
  {
    if (qword_10038BC20 != -1)
    {
      sub_100247BFC();
    }

    v15 = qword_10038BC28;
    if (os_log_type_enabled(qword_10038BC28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "garbageCollectSMTs: %@", buf, 0xCu);
    }
  }

  v16 = kKTApplicationIdentifierIDS;
  v51 = 0;
  [(KTGarbageCollectDBOperation *)self garbageCollectHeads:kKTApplicationIdentifierIDS error:&v51];
  v17 = v51;
  if (v17)
  {
    v18 = v17;
    if (qword_10038BC20 != -1)
    {
      sub_100247C24();
    }

    v19 = qword_10038BC28;
    if (os_log_type_enabled(qword_10038BC28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "garbageCollectIDSHeads: %@", buf, 0xCu);
    }
  }

  v50 = 0;
  [(KTGarbageCollectDBOperation *)self garbageCollectHeads:kKTApplicationIdentifierTLT error:&v50];
  v20 = v50;
  if (v20)
  {
    v21 = v20;
    if (qword_10038BC20 != -1)
    {
      sub_100247C4C();
    }

    v22 = qword_10038BC28;
    if (os_log_type_enabled(qword_10038BC28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "garbageCollectTLTHeads: %@", buf, 0xCu);
    }
  }

  v23 = [NSDate dateWithTimeIntervalSinceNow:(-2 * kKTMaximumCompletedRequestLifetime)];
  v24 = [(KTGarbageCollectDBOperation *)self deps];
  v25 = [v24 dataStore];
  v49 = 0;
  [v25 garbageCollectRequests:v16 olderThan:v23 error:&v49];
  v26 = v49;

  if (v26)
  {
    if (qword_10038BC20 != -1)
    {
      sub_100247C74();
    }

    v27 = qword_10038BC28;
    if (os_log_type_enabled(qword_10038BC28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "garbageCollectIDSRequests: %@", buf, 0xCu);
    }
  }

  v28 = kKTApplicationIdentifierIDSMultiplex;
  v48 = 0;
  [(KTGarbageCollectDBOperation *)self garbageCollectHeads:kKTApplicationIdentifierIDSMultiplex error:&v48];
  v29 = v48;
  if (v29)
  {
    v30 = v29;
    if (qword_10038BC20 != -1)
    {
      sub_100247C9C();
    }

    v31 = qword_10038BC28;
    if (os_log_type_enabled(qword_10038BC28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v30;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "garbageCollectMPHeads: %@", buf, 0xCu);
    }
  }

  v32 = [(KTGarbageCollectDBOperation *)self deps];
  v33 = [v32 dataStore];
  v47 = 0;
  [v33 garbageCollectRequests:v28 olderThan:v23 error:&v47];
  v34 = v47;

  if (v34)
  {
    if (qword_10038BC20 != -1)
    {
      sub_100247CC4();
    }

    v35 = qword_10038BC28;
    if (os_log_type_enabled(qword_10038BC28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v34;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "garbageCollectMPRequests: %@", buf, 0xCu);
    }
  }

  v36 = kKTApplicationIdentifierIDSFaceTime;
  v46 = 0;
  [(KTGarbageCollectDBOperation *)self garbageCollectHeads:kKTApplicationIdentifierIDSFaceTime error:&v46];
  v37 = v46;
  if (v37)
  {
    v38 = v37;
    if (qword_10038BC20 != -1)
    {
      sub_100247CEC();
    }

    v39 = qword_10038BC28;
    if (os_log_type_enabled(qword_10038BC28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v38;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "garbageCollectFTHeads: %@", buf, 0xCu);
    }
  }

  v40 = [(KTGarbageCollectDBOperation *)self deps];
  v41 = [v40 dataStore];
  v45 = 0;
  [v41 garbageCollectRequests:v36 olderThan:v23 error:&v45];
  v42 = v45;

  if (v42)
  {
    if (qword_10038BC20 != -1)
    {
      sub_100247D14();
    }

    v43 = qword_10038BC28;
    if (os_log_type_enabled(qword_10038BC28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v42;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "garbageCollectFTRequests: %@", buf, 0xCu);
    }
  }

  if (qword_10038BC20 != -1)
  {
    sub_100247D3C();
  }

  v44 = qword_10038BC28;
  if (os_log_type_enabled(qword_10038BC28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "GarbageCollectDB: end", buf, 2u);
  }
}

@end