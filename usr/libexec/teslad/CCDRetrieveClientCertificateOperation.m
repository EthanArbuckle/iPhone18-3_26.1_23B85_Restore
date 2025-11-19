@interface CCDRetrieveClientCertificateOperation
- (void)_completeOperationWithReferenceKey:(id)a3 certificates:(id)a4 error:(id)a5;
- (void)_retryCertificateRetrievalIfAllowed:(BOOL)a3 afterDelay:(double)a4 orFailWithError:(id)a5;
- (void)_retryCertificateRetrievalIfAllowedAfterDelayOrFailWithError:(id)a3;
- (void)_startRetryTimerWithInterval:(double)a3;
- (void)retrieveClientCertificate;
- (void)start;
- (void)timeoutTimerDidFire:(id)a3;
@end

@implementation CCDRetrieveClientCertificateOperation

- (void)start
{
  [(CCDOperation *)self setOperationExecuting:1];
  [(CCDOperation *)self setOperationFinished:0];

  [(CCDRetrieveClientCertificateOperation *)self retrieveClientCertificate];
}

- (void)retrieveClientCertificate
{
  v3 = [(CCDRetrieveClientCertificateOperation *)self clientNameSuffix];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000095C0;
  v4[3] = &unk_10001CAE0;
  v4[4] = self;
  [CCDDeviceIdentitySupport retrieveClientCertificateWithNameSuffix:v3 completion:v4];
}

- (void)_completeOperationWithReferenceKey:(id)a3 certificates:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CCDRetrieveClientCertificateOperation *)self certificateRetrievalCompletionBlock];

  if (v11)
  {
    if (v10)
    {
      v12 = *(DEPLogObjects() + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        v17 = self;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Error: %@", &v16, 0x16u);
      }
    }

    v13 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ completed. Calling the completion block.", &v16, 0xCu);
    }

    v14 = [(CCDRetrieveClientCertificateOperation *)self certificateRetrievalCompletionBlock];
    (v14)[2](v14, v8, v9, v10);
  }

  else
  {
    v15 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = self;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No completion block, canceling %{public}@", &v16, 0xCu);
    }

    [(CCDRetrieveClientCertificateOperation *)self cancel];
  }

  [(CCDOperation *)self endOperation];
}

- (void)_retryCertificateRetrievalIfAllowed:(BOOL)a3 afterDelay:(double)a4 orFailWithError:(id)a5
{
  if (a3)
  {
    v7 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Retrying the request", buf, 2u);
    }

    [(CCDRetrieveClientCertificateOperation *)self _startRetryTimerWithInterval:a4];
  }

  else
  {
    v8 = [CCDError maxRetriesExceededErrorWithUnderlyingError:a5, a4];
    [(CCDRetrieveClientCertificateOperation *)self _completeOperationWithReferenceKey:0 certificates:0 error:v8];
  }
}

- (void)_retryCertificateRetrievalIfAllowedAfterDelayOrFailWithError:(id)a3
{
  v4 = a3;
  [(CCDRetrieveClientCertificateOperation *)self setCertificateRetrievalRequestCount:[(CCDRetrieveClientCertificateOperation *)self certificateRetrievalRequestCount]+ 1];
  [(CCDRetrieveClientCertificateOperation *)self _retryCertificateRetrievalIfAllowed:[(CCDRetrieveClientCertificateOperation *)self certificateRetrievalRequestCount]< 5 afterDelay:v4 orFailWithError:4.0];
}

- (void)_startRetryTimerWithInterval:(double)a3
{
  v5 = [NSTimer alloc];
  v6 = [NSDate dateWithTimeIntervalSinceNow:a3];
  v7 = [v5 initWithFireDate:v6 interval:self target:"timeoutTimerDidFire:" selector:0 userInfo:0 repeats:0.0];
  [(CCDRetrieveClientCertificateOperation *)self setTimeoutTimer:v7];

  v9 = +[NSRunLoop mainRunLoop];
  v8 = [(CCDRetrieveClientCertificateOperation *)self timeoutTimer];
  [v9 addTimer:v8 forMode:NSRunLoopCommonModes];
}

- (void)timeoutTimerDidFire:(id)a3
{
  if ([(CCDRetrieveClientCertificateOperation *)self certificateRetrievalFailed])
  {

    [(CCDRetrieveClientCertificateOperation *)self retrieveClientCertificate];
  }
}

@end