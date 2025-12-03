@interface CCDURLOperation
- (int64_t)_statusCodeFromResponse:(id)response;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)_callCompletionBlockWithResponse:(id)response error:(id)error;
- (void)_invalidateAndCancelURLSession;
- (void)_printStatusCode:(int64_t)code;
- (void)_retryRequestIfAllowed:(BOOL)allowed afterDelay:(double)delay orFailWithError:(id)error;
- (void)_retryRequestIfAllowedAfterDelayOrFailWithError:(id)error;
- (void)_retryRequestOrFailWithError:(id)error;
- (void)_sendFailureNoticeToRemote;
- (void)_sendResponseInfoToRemoteWithStatusCode:(int64_t)code;
- (void)_startRetryTimerWithInterval:(double)interval;
- (void)_startURLRequest;
- (void)dealloc;
- (void)endOperation;
- (void)start;
- (void)timeoutTimerDidFire:(id)fire;
@end

@implementation CCDURLOperation

- (void)dealloc
{
  [(CCDURLOperation *)self _invalidateAndCancelURLSession];
  v3.receiver = self;
  v3.super_class = CCDURLOperation;
  [(CCDURLOperation *)&v3 dealloc];
}

- (void)start
{
  v3 = objc_opt_new();
  [(CCDURLOperation *)self setResponseData:v3];

  urlSession = [(CCDURLOperation *)self urlSession];
  [urlSession invalidateAndCancel];

  v5 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  v6 = +[NSOperationQueue mainQueue];
  v7 = [NSURLSession sessionWithConfiguration:v5 delegate:self delegateQueue:v6];
  [(CCDURLOperation *)self setUrlSession:v7];

  [(CCDOperation *)self setOperationExecuting:1];
  [(CCDOperation *)self setOperationFinished:0];
  [(CCDURLOperation *)self setRequestCount:0];
  [(CCDURLOperation *)self setRequestFailed:0];

  [(CCDURLOperation *)self _startURLRequest];
}

- (void)_invalidateAndCancelURLSession
{
  urlSession = [(CCDURLOperation *)self urlSession];
  [urlSession invalidateAndCancel];

  [(CCDURLOperation *)self setUrlSession:0];
}

- (void)_startURLRequest
{
  v3 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting URL Request", buf, 2u);
  }

  teslaRequest = [(CCDURLOperation *)self teslaRequest];
  v13 = 0;
  v5 = [teslaRequest requestWithError:&v13];
  v6 = v13;

  if (v5)
  {
    urlSession = [(CCDURLOperation *)self urlSession];
    v8 = [urlSession dataTaskWithRequest:v5];

    if (v8)
    {
      v9 = *(DEPLogObjects() + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Resume data task", v11, 2u);
      }

      [v8 resume];
    }

    else
    {
      [(CCDURLOperation *)self setError:v6];
      [(CCDURLOperation *)self _sendFailureNoticeToRemote];
    }
  }

  else
  {
    v10 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unable to build URL request", v12, 2u);
    }

    [(CCDURLOperation *)self setError:v6];
    [(CCDURLOperation *)self _sendFailureNoticeToRemote];
  }
}

- (void)_sendFailureNoticeToRemote
{
  v3 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sending failure response back to client", v5, 2u);
  }

  error = [(CCDURLOperation *)self error];
  if (!error)
  {
    error = [CCDError internalErrorWithCode:34000];
  }

  [(CCDURLOperation *)self _callCompletionBlockWithResponse:0 error:error];
}

- (void)endOperation
{
  [(CCDURLOperation *)self _invalidateAndCancelURLSession];
  v3.receiver = self;
  v3.super_class = CCDURLOperation;
  [(CCDOperation *)&v3 endOperation];
}

- (void)_callCompletionBlockWithResponse:(id)response error:(id)error
{
  errorCopy = error;
  responseCopy = response;
  v8 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ completed. Calling the completion block.", &v9, 0xCu);
  }

  [(CCDURLOperation *)self completeOperationWithResponse:responseCopy error:errorCopy];

  [(CCDURLOperation *)self endOperation];
}

- (int64_t)_statusCodeFromResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = responseCopy;
    statusCode = [v5 statusCode];
    if (statusCode == 503)
    {
      allHeaderFields = [v5 allHeaderFields];
      v8 = [allHeaderFields objectForKeyedSubscript:@"Retry-After"];

      integerValue = [v8 integerValue];
      if (integerValue >= 1)
      {
        [(CCDURLOperation *)self setRetryAfterInterval:integerValue];
      }

      [(CCDURLOperation *)self retryAfterInterval];
      if (v10 < 2.0)
      {
        [(CCDURLOperation *)self setRetryAfterInterval:2.0];
      }
    }
  }

  else
  {
    statusCode = 0;
  }

  return statusCode;
}

- (void)_sendResponseInfoToRemoteWithStatusCode:(int64_t)code
{
  v5 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Send response info to remote", buf, 2u);
  }

  v12 = 0;
  responseData = [(CCDURLOperation *)self responseData];
  httpResponseContentType = [(CCDURLOperation *)self httpResponseContentType];
  v11 = 0;
  v8 = [(CCDURLOperation *)self responseWithResponseData:responseData contentType:httpResponseContentType statusCode:code retryNeeded:&v12 outError:&v11];
  v9 = v11;

  if (v9)
  {
    [(CCDURLOperation *)self setError:v9];
    [(CCDURLOperation *)self _sendFailureNoticeToRemote];
  }

  else if (v12 == 1)
  {
    v10 = +[CCDError serviceBusyError];
    [(CCDURLOperation *)self _retryRequestOrFailWithError:v10];
  }

  else
  {
    [(CCDURLOperation *)self _callCompletionBlockWithResponse:v8 error:0];
  }
}

- (void)_printStatusCode:(int64_t)code
{
  code = [NSString stringWithFormat:@"Response code: %ld, ", code];
  v5 = code;
  if (code > 400)
  {
    if (code != 401)
    {
      if (code == 500)
      {
        v6 = @"Server Exception";
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v6 = @"Auth Failure";
  }

  else
  {
    if (code != 200)
    {
      if (code == 400)
      {
        v6 = @"Invalid Request";
        goto LABEL_11;
      }

LABEL_8:
      v6 = @"Unknown Response";
      goto LABEL_11;
    }

    v6 = @"Success";
  }

LABEL_11:
  v7 = [code stringByAppendingString:v6];

  v8 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v10 = responseCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allHeaderFields = [v10 allHeaderFields];
    v12 = allHeaderFields;
    if (allHeaderFields)
    {
      v13 = [allHeaderFields objectForKeyedSubscript:@"Content-Type"];
      [(CCDURLOperation *)self setHttpResponseContentType:v13];

      allHeaderFields2 = [v10 allHeaderFields];
      v15 = *(DEPLogObjects() + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [allHeaderFields2 description];
        v18 = 138543362;
        v19 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Response Headers: %{public}@", &v18, 0xCu);
      }
    }
  }

  handlerCopy[2](handlerCopy, 1);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  dataCopy = data;
  v7 = *(DEPLogObjects() + 8);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (dataCopy)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received actual data", buf, 2u);
    }

    responseData = [(CCDURLOperation *)self responseData];
    [responseData appendData:dataCopy];
  }

  else if (v8)
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No data received.", v10, 2u);
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v8 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = errorCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error: %@", &v12, 0xCu);
    }

    v9 = [CCDError internalErrorWithCode:34000 underlyingError:errorCopy];
    [(CCDURLOperation *)self setError:v9];

    [(CCDURLOperation *)self _sendFailureNoticeToRemote];
  }

  else
  {
    response = [task response];
    v11 = [(CCDURLOperation *)self _statusCodeFromResponse:response];

    [(CCDURLOperation *)self _printStatusCode:v11];
    [(CCDURLOperation *)self _sendResponseInfoToRemoteWithStatusCode:v11];
  }
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Default challange handling", v8, 2u);
  }

  handlerCopy[2](handlerCopy, 1, 0);
}

- (void)_retryRequestOrFailWithError:(id)error
{
  errorCopy = error;
  [(CCDURLOperation *)self retryAfterInterval];
  [(CCDURLOperation *)self _retryRequestIfAllowed:1 afterDelay:errorCopy orFailWithError:?];
}

- (void)_retryRequestIfAllowed:(BOOL)allowed afterDelay:(double)delay orFailWithError:(id)error
{
  if (allowed)
  {
    v7 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Retrying the request", buf, 2u);
    }

    [(CCDURLOperation *)self _startRetryTimerWithInterval:delay];
  }

  else
  {
    delay = [CCDError maxRetriesExceededErrorWithUnderlyingError:error, delay];
    [(CCDURLOperation *)self _callCompletionBlockWithResponse:0 error:delay];
  }
}

- (void)_retryRequestIfAllowedAfterDelayOrFailWithError:(id)error
{
  errorCopy = error;
  [(CCDURLOperation *)self setRequestCount:[(CCDURLOperation *)self requestCount]+ 1];
  [(CCDURLOperation *)self _retryRequestIfAllowed:[(CCDURLOperation *)self requestCount]< 3 afterDelay:errorCopy orFailWithError:2.0];
}

- (void)_startRetryTimerWithInterval:(double)interval
{
  v5 = [NSTimer alloc];
  v6 = [NSDate dateWithTimeIntervalSinceNow:interval];
  v7 = [v5 initWithFireDate:v6 interval:self target:"timeoutTimerDidFire:" selector:0 userInfo:0 repeats:0.0];
  [(CCDURLOperation *)self setTimeoutTimer:v7];

  v9 = +[NSRunLoop mainRunLoop];
  timeoutTimer = [(CCDURLOperation *)self timeoutTimer];
  [v9 addTimer:timeoutTimer forMode:NSRunLoopCommonModes];
}

- (void)timeoutTimerDidFire:(id)fire
{
  if ([(CCDURLOperation *)self requestFailed])
  {

    [(CCDURLOperation *)self _startURLRequest];
  }
}

@end