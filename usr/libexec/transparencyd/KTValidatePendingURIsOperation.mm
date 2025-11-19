@interface KTValidatePendingURIsOperation
- (KTValidatePendingURIsOperation)initWithApplication:(id)a3 opId:(id)a4 dependencies:(id)a5;
- (void)groupStart;
@end

@implementation KTValidatePendingURIsOperation

- (KTValidatePendingURIsOperation)initWithApplication:(id)a3 opId:(id)a4 dependencies:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = KTValidatePendingURIsOperation;
  v11 = [(KTGroupOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(KTValidatePendingURIsOperation *)v11 setDeps:v10];
    [(KTValidatePendingURIsOperation *)v12 setApplication:v8];
    [(KTValidatePendingURIsOperation *)v12 setOpUUID:v9];
  }

  return v12;
}

- (void)groupStart
{
  v3 = [(KTValidatePendingURIsOperation *)self deps];
  v4 = [v3 dew];
  v5 = [v4 validatePendingURILimit];

  v6 = [(KTValidatePendingURIsOperation *)self deps];
  v7 = [v6 dew];
  v8 = [v7 validatePendingSMTLimit];

  if (qword_10038BBD0 != -1)
  {
    sub_1002472EC();
  }

  v9 = qword_10038BBD8;
  if (os_log_type_enabled(qword_10038BBD8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "ValidatePendingURIs: start", buf, 2u);
  }

  v10 = os_transaction_create();
  [(KTValidatePendingURIsOperation *)self setTransaction:v10];

  v11 = [(KTValidatePendingURIsOperation *)self deps];
  v12 = [v11 dataStore];
  v13 = [(KTValidatePendingURIsOperation *)self application];
  v45 = 0;
  v37 = [v12 pendingVerificationURIs:v13 fetchLimit:v5 error:&v45];
  v14 = v45;

  if (v14)
  {
    if (qword_10038BBD0 != -1)
    {
      sub_100247300();
    }

    v15 = qword_10038BBD8;
    if (os_log_type_enabled(qword_10038BBD8, OS_LOG_TYPE_ERROR))
    {
      v16 = v15;
      v17 = [(KTValidatePendingURIsOperation *)self application];
      *buf = 138412546;
      v47 = v17;
      v48 = 2112;
      v49 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "ValidatePendingURIs: failed to get pending peer uris for %@ from data store: %@", buf, 0x16u);
    }
  }

  v18 = [(KTValidatePendingURIsOperation *)self deps];
  v19 = [v18 dataStore];
  v20 = [(KTValidatePendingURIsOperation *)self application];
  v44 = 0;
  v21 = [v19 getPendingSmtUris:v20 fetchLimit:v8 error:&v44];
  v22 = v44;

  if (!v22)
  {
    goto LABEL_17;
  }

  if (qword_10038BBD0 != -1)
  {
    sub_100247328();
  }

  v23 = qword_10038BBD8;
  if (os_log_type_enabled(qword_10038BBD8, OS_LOG_TYPE_ERROR))
  {
    v24 = v23;
    v25 = [(KTValidatePendingURIsOperation *)self application];
    *buf = 138412546;
    v47 = v25;
    v48 = 2112;
    v49 = v22;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "ValidatePendingURIs: failed to get pending SMT uris for %@ from data store: %@", buf, 0x16u);
  }

  if (v14)
  {
    [(KTResultOperation *)self setError:v14];
    [(KTValidatePendingURIsOperation *)self setTransaction:0];
  }

  else
  {
LABEL_17:
    v26 = +[NSMutableSet set];
    [v26 addObjectsFromArray:v38];
    [v26 addObjectsFromArray:v21];
    if (v26 && [v26 count])
    {
      objc_initWeak(buf, self);
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10001790C;
      v42[3] = &unk_1003175E0;
      objc_copyWeak(&v43, buf);
      v27 = [NSBlockOperation blockOperationWithBlock:v42];
      [(KTValidatePendingURIsOperation *)self setFinishedOp:v27];

      v28 = [(KTValidatePendingURIsOperation *)self finishedOp];
      [(KTGroupOperation *)self dependOnBeforeGroupFinished:v28];

      v29 = [(KTValidatePendingURIsOperation *)self deps];
      v30 = [v29 contextStore];
      v31 = [(KTValidatePendingURIsOperation *)self application];
      v32 = [(KTValidatePendingURIsOperation *)self deps];
      v33 = [v32 logClient];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100017950;
      v39[3] = &unk_100317670;
      objc_copyWeak(&v41, buf);
      v40 = v26;
      [v30 contextForApplication:v31 logClient:v33 fetchState:1 completionHandler:v39];

      objc_destroyWeak(&v41);
      objc_destroyWeak(&v43);
      objc_destroyWeak(buf);
    }

    else
    {
      if (qword_10038BBD0 != -1)
      {
        sub_100247350();
      }

      v34 = qword_10038BBD8;
      if (os_log_type_enabled(qword_10038BBD8, OS_LOG_TYPE_INFO))
      {
        v35 = v34;
        v36 = [(KTValidatePendingURIsOperation *)self application];
        *buf = 138412290;
        v47 = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "ValidatePendingURIs: No pending URIs for %@", buf, 0xCu);
      }

      [(KTValidatePendingURIsOperation *)self setTransaction:0];
    }
  }
}

@end