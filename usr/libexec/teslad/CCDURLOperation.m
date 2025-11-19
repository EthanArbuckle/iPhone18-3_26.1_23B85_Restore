@interface CCDURLOperation
- (int64_t)_statusCodeFromResponse:(id)a3;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)_callCompletionBlockWithResponse:(id)a3 error:(id)a4;
- (void)_invalidateAndCancelURLSession;
- (void)_printStatusCode:(int64_t)a3;
- (void)_retryRequestIfAllowed:(BOOL)a3 afterDelay:(double)a4 orFailWithError:(id)a5;
- (void)_retryRequestIfAllowedAfterDelayOrFailWithError:(id)a3;
- (void)_retryRequestOrFailWithError:(id)a3;
- (void)_sendFailureNoticeToRemote;
- (void)_sendResponseInfoToRemoteWithStatusCode:(int64_t)a3;
- (void)_startRetryTimerWithInterval:(double)a3;
- (void)_startURLRequest;
- (void)dealloc;
- (void)endOperation;
- (void)start;
- (void)timeoutTimerDidFire:(id)a3;
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

  v4 = [(CCDURLOperation *)self urlSession];
  [v4 invalidateAndCancel];

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
  v3 = [(CCDURLOperation *)self urlSession];
  [v3 invalidateAndCancel];

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

  v4 = [(CCDURLOperation *)self teslaRequest];
  v13 = 0;
  v5 = [v4 requestWithError:&v13];
  v6 = v13;

  if (v5)
  {
    v7 = [(CCDURLOperation *)self urlSession];
    v8 = [v7 dataTaskWithRequest:v5];

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

  v4 = [(CCDURLOperation *)self error];
  if (!v4)
  {
    v4 = [CCDError internalErrorWithCode:34000];
  }

  [(CCDURLOperation *)self _callCompletionBlockWithResponse:0 error:v4];
}

- (void)endOperation
{
  [(CCDURLOperation *)self _invalidateAndCancelURLSession];
  v3.receiver = self;
  v3.super_class = CCDURLOperation;
  [(CCDOperation *)&v3 endOperation];
}

- (void)_callCompletionBlockWithResponse:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ completed. Calling the completion block.", &v9, 0xCu);
  }

  [(CCDURLOperation *)self completeOperationWithResponse:v7 error:v6];

  [(CCDURLOperation *)self endOperation];
}

- (int64_t)_statusCodeFromResponse:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 statusCode];
    if (v6 == 503)
    {
      v7 = [v5 allHeaderFields];
      v8 = [v7 objectForKeyedSubscript:@"Retry-After"];

      v9 = [v8 integerValue];
      if (v9 >= 1)
      {
        [(CCDURLOperation *)self setRetryAfterInterval:v9];
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
    v6 = 0;
  }

  return v6;
}

- (void)_sendResponseInfoToRemoteWithStatusCode:(int64_t)a3
{
  v5 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Send response info to remote", buf, 2u);
  }

  v12 = 0;
  v6 = [(CCDURLOperation *)self responseData];
  v7 = [(CCDURLOperation *)self httpResponseContentType];
  v11 = 0;
  v8 = [(CCDURLOperation *)self responseWithResponseData:v6 contentType:v7 statusCode:a3 retryNeeded:&v12 outError:&v11];
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

- (void)_printStatusCode:(int64_t)a3
{
  v4 = [NSString stringWithFormat:@"Response code: %ld, ", a3];
  v5 = v4;
  if (a3 > 400)
  {
    if (a3 != 401)
    {
      if (a3 == 500)
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
    if (a3 != 200)
    {
      if (a3 == 400)
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
  v7 = [v4 stringByAppendingString:v6];

  v8 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 allHeaderFields];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 objectForKeyedSubscript:@"Content-Type"];
      [(CCDURLOperation *)self setHttpResponseContentType:v13];

      v14 = [v10 allHeaderFields];
      v15 = *(DEPLogObjects() + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [v14 description];
        v18 = 138543362;
        v19 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Response Headers: %{public}@", &v18, 0xCu);
      }
    }
  }

  v9[2](v9, 1);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v6 = a5;
  v7 = *(DEPLogObjects() + 8);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received actual data", buf, 2u);
    }

    v9 = [(CCDURLOperation *)self responseData];
    [v9 appendData:v6];
  }

  else if (v8)
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No data received.", v10, 2u);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v7 = a5;
  if (v7)
  {
    v8 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error: %@", &v12, 0xCu);
    }

    v9 = [CCDError internalErrorWithCode:34000 underlyingError:v7];
    [(CCDURLOperation *)self setError:v9];

    [(CCDURLOperation *)self _sendFailureNoticeToRemote];
  }

  else
  {
    v10 = [a4 response];
    v11 = [(CCDURLOperation *)self _statusCodeFromResponse:v10];

    [(CCDURLOperation *)self _printStatusCode:v11];
    [(CCDURLOperation *)self _sendResponseInfoToRemoteWithStatusCode:v11];
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v6 = a6;
  v7 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Default challange handling", v8, 2u);
  }

  v6[2](v6, 1, 0);
}

- (void)_retryRequestOrFailWithError:(id)a3
{
  v4 = a3;
  [(CCDURLOperation *)self retryAfterInterval];
  [(CCDURLOperation *)self _retryRequestIfAllowed:1 afterDelay:v4 orFailWithError:?];
}

- (void)_retryRequestIfAllowed:(BOOL)a3 afterDelay:(double)a4 orFailWithError:(id)a5
{
  if (a3)
  {
    v7 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Retrying the request", buf, 2u);
    }

    [(CCDURLOperation *)self _startRetryTimerWithInterval:a4];
  }

  else
  {
    v8 = [CCDError maxRetriesExceededErrorWithUnderlyingError:a5, a4];
    [(CCDURLOperation *)self _callCompletionBlockWithResponse:0 error:v8];
  }
}

- (void)_retryRequestIfAllowedAfterDelayOrFailWithError:(id)a3
{
  v4 = a3;
  [(CCDURLOperation *)self setRequestCount:[(CCDURLOperation *)self requestCount]+ 1];
  [(CCDURLOperation *)self _retryRequestIfAllowed:[(CCDURLOperation *)self requestCount]< 3 afterDelay:v4 orFailWithError:2.0];
}

- (void)_startRetryTimerWithInterval:(double)a3
{
  v5 = [NSTimer alloc];
  v6 = [NSDate dateWithTimeIntervalSinceNow:a3];
  v7 = [v5 initWithFireDate:v6 interval:self target:"timeoutTimerDidFire:" selector:0 userInfo:0 repeats:0.0];
  [(CCDURLOperation *)self setTimeoutTimer:v7];

  v9 = +[NSRunLoop mainRunLoop];
  v8 = [(CCDURLOperation *)self timeoutTimer];
  [v9 addTimer:v8 forMode:NSRunLoopCommonModes];
}

- (void)timeoutTimerDidFire:(id)a3
{
  if ([(CCDURLOperation *)self requestFailed])
  {

    [(CCDURLOperation *)self _startURLRequest];
  }
}

@end