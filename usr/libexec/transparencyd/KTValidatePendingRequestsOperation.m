@interface KTValidatePendingRequestsOperation
- (KTValidatePendingRequestsOperation)initWithApplication:(id)a3 dependencies:(id)a4 opId:(id)a5;
- (id)createChainOfErrorsFromRequestFailures:(id)a3;
- (id)createErrorFromRequestFailure:(id)a3 underlyingError:(id)a4;
- (id)onRequestMOCFailExpiredRequest:(id)a3 error:(id)a4;
- (void)groupStart;
- (void)handleKTRequest:(id)a3 queryRequest:(id)a4 queryResponse:(id)a5 completionHandler:(id)a6;
- (void)handleKTRequestDownload:(id)a3 context:(id)a4;
- (void)saveRequestFailure:(id)a3 failure:(id)a4;
@end

@implementation KTValidatePendingRequestsOperation

- (KTValidatePendingRequestsOperation)initWithApplication:(id)a3 dependencies:(id)a4 opId:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = KTValidatePendingRequestsOperation;
  v12 = [(KTGroupOperation *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_deps, a4);
    objc_storeStrong(&v13->_application, a3);
    [(KTValidatePendingRequestsOperation *)v13 setBackgroundOpId:v11];
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

  v5 = [(KTValidatePendingRequestsOperation *)self finishedOp];
  [(KTGroupOperation *)self dependOnBeforeGroupFinished:v5];

  objc_initWeak(buf, self);
  v6 = [(KTValidatePendingRequestsOperation *)self deps];
  v7 = [v6 contextStore];
  v8 = [(KTValidatePendingRequestsOperation *)self application];
  v9 = [(KTValidatePendingRequestsOperation *)self deps];
  v10 = [v9 logClient];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001A89C;
  v11[3] = &unk_100317A10;
  objc_copyWeak(&v12, buf);
  [v7 contextForApplication:v8 logClient:v10 fetchState:1 completionHandler:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)handleKTRequestDownload:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001B2BC;
  v8[3] = &unk_100317A80;
  objc_copyWeak(&v9, &location);
  [v7 fetchQueryForKTRequest:v6 userInitiated:0 completionHandler:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)handleKTRequest:(id)a3 queryRequest:(id)a4 queryResponse:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v14 = [v10 requestId];
  v15 = [(KTValidatePendingRequestsOperation *)self deps];
  v16 = [v15 contextStore];
  v17 = [(KTValidatePendingRequestsOperation *)self application];
  v18 = [(KTValidatePendingRequestsOperation *)self deps];
  v19 = [v18 logClient];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001B950;
  v24[3] = &unk_100317B10;
  objc_copyWeak(&v29, &location);
  v20 = v14;
  v25 = v20;
  v21 = v13;
  v28 = v21;
  v22 = v11;
  v26 = v22;
  v23 = v12;
  v27 = v23;
  [v16 contextForApplication:v17 logClient:v19 fetchState:1 completionHandler:v24];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (id)onRequestMOCFailExpiredRequest:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isDeleted])
  {
    v8 = [[NSUUID alloc] initWithUUIDBytes:&unk_1002D4650];
  }

  else
  {
    [v6 requestTime];
    v10 = v9 + kKTMaximumMergeDelayMs / 1000.0;
    if (v10 >= CFAbsoluteTimeGetCurrent())
    {
      v8 = 0;
    }

    else
    {
      v11 = [v6 failures];
      v12 = [(KTValidatePendingRequestsOperation *)self createChainOfErrorsFromRequestFailures:v11];

      v13 = [TransparencyError errorWithError:v7 underlyingError:v12];
      v14 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-213 underlyingError:v13 description:@"failed to download query response for request"];

      if (qword_10038BC00 != -1)
      {
        sub_100247710();
      }

      v15 = qword_10038BC08;
      if (os_log_type_enabled(qword_10038BC08, OS_LOG_TYPE_ERROR))
      {
        v16 = v15;
        v17 = [v6 requestId];
        v28 = 138543874;
        v29 = v17;
        v30 = 2112;
        v31 = v14;
        v32 = 2112;
        v33 = v7;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "ValidatePendingRequests: Request validation failed after MMD for requestId %{public}@, error: %@, underlyingError: %@", &v28, 0x20u);
      }

      v18 = [(KTValidatePendingRequestsOperation *)self deps];
      v19 = [v18 dataStore];
      v20 = objc_opt_class();
      v21 = [v6 managedObjectContext];
      v22 = [v20 createRequestFailure:v21];

      [v22 setErrorCode:-213];
      [v22 setErrorDomain:@"TransparencyErrorVerify"];
      [v22 setRequest:v6];
      [v6 setVerificationResult:0];
      v23 = +[TransparencyAnalytics logger];
      v24 = [v6 type];
      v25 = [(KTValidatePendingRequestsOperation *)self application];
      v26 = [KTContext validateEventName:v24 application:v25];
      [v23 logResultForEvent:v26 hardFailure:1 result:v14];

      v8 = [v6 requestId];
    }
  }

  return v8;
}

- (void)saveRequestFailure:(id)a3 failure:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KTValidatePendingRequestsOperation *)self deps];
  v9 = [v8 dataStore];
  v10 = objc_opt_class();
  v11 = [v7 managedObjectContext];
  v13 = [v10 createRequestFailure:v11];

  [v13 setErrorCode:{objc_msgSend(v6, "code")}];
  v12 = [v6 domain];

  [v13 setErrorDomain:v12];
  [v13 setRequest:v7];
}

- (id)createChainOfErrorsFromRequestFailures:(id)a3
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

        v7 = [(KTValidatePendingRequestsOperation *)self createErrorFromRequestFailure:*(*(&v12 + 1) + 8 * v9) underlyingError:v10];

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

- (id)createErrorFromRequestFailure:(id)a3 underlyingError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 errorDomain];
  v8 = [v6 errorCode];

  v9 = [TransparencyError errorWithDomain:v7 code:v8 underlyingError:v5 description:0];

  return v9;
}

@end