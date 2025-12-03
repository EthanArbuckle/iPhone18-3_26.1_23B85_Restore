@interface KTValidatePendingRequestsOperation
- (KTValidatePendingRequestsOperation)initWithApplication:(id)application dependencies:(id)dependencies opId:(id)id;
- (id)createChainOfErrorsFromRequestFailures:(id)failures;
- (id)createErrorFromRequestFailure:(id)failure underlyingError:(id)error;
- (id)onRequestMOCFailExpiredRequest:(id)request error:(id)error;
- (void)groupStart;
- (void)handleKTRequest:(id)request queryRequest:(id)queryRequest queryResponse:(id)response completionHandler:(id)handler;
- (void)handleKTRequestDownload:(id)download context:(id)context;
- (void)saveRequestFailure:(id)failure failure:(id)a4;
@end

@implementation KTValidatePendingRequestsOperation

- (KTValidatePendingRequestsOperation)initWithApplication:(id)application dependencies:(id)dependencies opId:(id)id
{
  applicationCopy = application;
  dependenciesCopy = dependencies;
  idCopy = id;
  v20.receiver = self;
  v20.super_class = KTValidatePendingRequestsOperation;
  v12 = [(KTGroupOperation *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_deps, dependencies);
    objc_storeStrong(&v13->_application, application);
    [(KTValidatePendingRequestsOperation *)v13 setBackgroundOpId:idCopy];
    v14 = +[NSMutableArray array];
    [(KTValidatePendingRequestsOperation *)v13 setErrors:v14];

    v15 = +[NSMutableArray array];
    [(KTValidatePendingRequestsOperation *)v13 setRequestIds:v15];

    v16 = +[NSMutableArray array];
    [(KTValidatePendingRequestsOperation *)v13 setServerHints:v16];

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("VerifyInclusion_FetchWaiter", v17);
    [(KTValidatePendingRequestsOperation *)v13 setFetchQueue:v18];

    [(KTGroupOperation *)v13 setName:@"KTRequest"];
  }

  return v13;
}

- (void)groupStart
{
  if (qword_10038BC00 != -1)
  {
    sub_100247634();
  }

  v3 = qword_10038BC08;
  if (os_log_type_enabled(qword_10038BC08, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "ValidatePendingRequests: start", buf, 2u);
  }

  v4 = objc_alloc_init(NSOperation);
  [(KTValidatePendingRequestsOperation *)self setFinishedOp:v4];

  finishedOp = [(KTValidatePendingRequestsOperation *)self finishedOp];
  [(KTGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  objc_initWeak(buf, self);
  deps = [(KTValidatePendingRequestsOperation *)self deps];
  contextStore = [deps contextStore];
  application = [(KTValidatePendingRequestsOperation *)self application];
  deps2 = [(KTValidatePendingRequestsOperation *)self deps];
  logClient = [deps2 logClient];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001A89C;
  v11[3] = &unk_100317A10;
  objc_copyWeak(&v12, buf);
  [contextStore contextForApplication:application logClient:logClient fetchState:1 completionHandler:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)handleKTRequestDownload:(id)download context:(id)context
{
  downloadCopy = download;
  contextCopy = context;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001B2BC;
  v8[3] = &unk_100317A80;
  objc_copyWeak(&v9, &location);
  [contextCopy fetchQueryForKTRequest:downloadCopy userInitiated:0 completionHandler:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)handleKTRequest:(id)request queryRequest:(id)queryRequest queryResponse:(id)response completionHandler:(id)handler
{
  requestCopy = request;
  queryRequestCopy = queryRequest;
  responseCopy = response;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  requestId = [requestCopy requestId];
  deps = [(KTValidatePendingRequestsOperation *)self deps];
  contextStore = [deps contextStore];
  application = [(KTValidatePendingRequestsOperation *)self application];
  deps2 = [(KTValidatePendingRequestsOperation *)self deps];
  logClient = [deps2 logClient];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001B950;
  v24[3] = &unk_100317B10;
  objc_copyWeak(&v29, &location);
  v20 = requestId;
  v25 = v20;
  v21 = handlerCopy;
  v28 = v21;
  v22 = queryRequestCopy;
  v26 = v22;
  v23 = responseCopy;
  v27 = v23;
  [contextStore contextForApplication:application logClient:logClient fetchState:1 completionHandler:v24];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (id)onRequestMOCFailExpiredRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  if ([requestCopy isDeleted])
  {
    requestId2 = [[NSUUID alloc] initWithUUIDBytes:&unk_1002D4650];
  }

  else
  {
    [requestCopy requestTime];
    v10 = v9 + kKTMaximumMergeDelayMs / 1000.0;
    if (v10 >= CFAbsoluteTimeGetCurrent())
    {
      requestId2 = 0;
    }

    else
    {
      failures = [requestCopy failures];
      v12 = [(KTValidatePendingRequestsOperation *)self createChainOfErrorsFromRequestFailures:failures];

      v13 = [TransparencyError errorWithError:errorCopy underlyingError:v12];
      v14 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-213 underlyingError:v13 description:@"failed to download query response for request"];

      if (qword_10038BC00 != -1)
      {
        sub_100247710();
      }

      v15 = qword_10038BC08;
      if (os_log_type_enabled(qword_10038BC08, OS_LOG_TYPE_ERROR))
      {
        v16 = v15;
        requestId = [requestCopy requestId];
        v28 = 138543874;
        v29 = requestId;
        v30 = 2112;
        v31 = v14;
        v32 = 2112;
        v33 = errorCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "ValidatePendingRequests: Request validation failed after MMD for requestId %{public}@, error: %@, underlyingError: %@", &v28, 0x20u);
      }

      deps = [(KTValidatePendingRequestsOperation *)self deps];
      dataStore = [deps dataStore];
      v20 = objc_opt_class();
      managedObjectContext = [requestCopy managedObjectContext];
      v22 = [v20 createRequestFailure:managedObjectContext];

      [v22 setErrorCode:-213];
      [v22 setErrorDomain:@"TransparencyErrorVerify"];
      [v22 setRequest:requestCopy];
      [requestCopy setVerificationResult:0];
      v23 = +[TransparencyAnalytics logger];
      type = [requestCopy type];
      application = [(KTValidatePendingRequestsOperation *)self application];
      v26 = [KTContext validateEventName:type application:application];
      [v23 logResultForEvent:v26 hardFailure:1 result:v14];

      requestId2 = [requestCopy requestId];
    }
  }

  return requestId2;
}

- (void)saveRequestFailure:(id)failure failure:(id)a4
{
  v6 = a4;
  failureCopy = failure;
  deps = [(KTValidatePendingRequestsOperation *)self deps];
  dataStore = [deps dataStore];
  v10 = objc_opt_class();
  managedObjectContext = [failureCopy managedObjectContext];
  v13 = [v10 createRequestFailure:managedObjectContext];

  [v13 setErrorCode:{objc_msgSend(v6, "code")}];
  domain = [v6 domain];

  [v13 setErrorDomain:domain];
  [v13 setRequest:failureCopy];
}

- (id)createChainOfErrorsFromRequestFailures:(id)failures
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

        v7 = [(KTValidatePendingRequestsOperation *)self createErrorFromRequestFailure:*(*(&v12 + 1) + 8 * v9) underlyingError:v10];

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

- (id)createErrorFromRequestFailure:(id)failure underlyingError:(id)error
{
  errorCopy = error;
  failureCopy = failure;
  errorDomain = [failureCopy errorDomain];
  errorCode = [failureCopy errorCode];

  v9 = [TransparencyError errorWithDomain:errorDomain code:errorCode underlyingError:errorCopy description:0];

  return v9;
}

@end