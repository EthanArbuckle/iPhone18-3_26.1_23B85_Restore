@interface KTValidatePendingURIsOperation
- (KTValidatePendingURIsOperation)initWithApplication:(id)application opId:(id)id dependencies:(id)dependencies;
- (void)groupStart;
@end

@implementation KTValidatePendingURIsOperation

- (KTValidatePendingURIsOperation)initWithApplication:(id)application opId:(id)id dependencies:(id)dependencies
{
  applicationCopy = application;
  idCopy = id;
  dependenciesCopy = dependencies;
  v14.receiver = self;
  v14.super_class = KTValidatePendingURIsOperation;
  v11 = [(KTGroupOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(KTValidatePendingURIsOperation *)v11 setDeps:dependenciesCopy];
    [(KTValidatePendingURIsOperation *)v12 setApplication:applicationCopy];
    [(KTValidatePendingURIsOperation *)v12 setOpUUID:idCopy];
  }

  return v12;
}

- (void)groupStart
{
  deps = [(KTValidatePendingURIsOperation *)self deps];
  v4 = [deps dew];
  validatePendingURILimit = [v4 validatePendingURILimit];

  deps2 = [(KTValidatePendingURIsOperation *)self deps];
  v7 = [deps2 dew];
  validatePendingSMTLimit = [v7 validatePendingSMTLimit];

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

  deps3 = [(KTValidatePendingURIsOperation *)self deps];
  dataStore = [deps3 dataStore];
  application = [(KTValidatePendingURIsOperation *)self application];
  v45 = 0;
  v37 = [dataStore pendingVerificationURIs:application fetchLimit:validatePendingURILimit error:&v45];
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
      application2 = [(KTValidatePendingURIsOperation *)self application];
      *buf = 138412546;
      v47 = application2;
      v48 = 2112;
      v49 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "ValidatePendingURIs: failed to get pending peer uris for %@ from data store: %@", buf, 0x16u);
    }
  }

  deps4 = [(KTValidatePendingURIsOperation *)self deps];
  dataStore2 = [deps4 dataStore];
  application3 = [(KTValidatePendingURIsOperation *)self application];
  v44 = 0;
  v21 = [dataStore2 getPendingSmtUris:application3 fetchLimit:validatePendingSMTLimit error:&v44];
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
    application4 = [(KTValidatePendingURIsOperation *)self application];
    *buf = 138412546;
    v47 = application4;
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

      finishedOp = [(KTValidatePendingURIsOperation *)self finishedOp];
      [(KTGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

      deps5 = [(KTValidatePendingURIsOperation *)self deps];
      contextStore = [deps5 contextStore];
      application5 = [(KTValidatePendingURIsOperation *)self application];
      deps6 = [(KTValidatePendingURIsOperation *)self deps];
      logClient = [deps6 logClient];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100017950;
      v39[3] = &unk_100317670;
      objc_copyWeak(&v41, buf);
      v40 = v26;
      [contextStore contextForApplication:application5 logClient:logClient fetchState:1 completionHandler:v39];

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
        application6 = [(KTValidatePendingURIsOperation *)self application];
        *buf = 138412290;
        v47 = application6;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "ValidatePendingURIs: No pending URIs for %@", buf, 0xCu);
      }

      [(KTValidatePendingURIsOperation *)self setTransaction:0];
    }
  }
}

@end