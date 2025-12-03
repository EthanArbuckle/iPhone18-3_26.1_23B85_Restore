@interface CCDRetrieveClientCertificateOperation
- (void)_completeOperationWithReferenceKey:(id)key certificates:(id)certificates error:(id)error;
- (void)_retryCertificateRetrievalIfAllowed:(BOOL)allowed afterDelay:(double)delay orFailWithError:(id)error;
- (void)_retryCertificateRetrievalIfAllowedAfterDelayOrFailWithError:(id)error;
- (void)_startRetryTimerWithInterval:(double)interval;
- (void)retrieveClientCertificate;
- (void)start;
- (void)timeoutTimerDidFire:(id)fire;
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
  clientNameSuffix = [(CCDRetrieveClientCertificateOperation *)self clientNameSuffix];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000095C0;
  v4[3] = &unk_10001CAE0;
  v4[4] = self;
  [CCDDeviceIdentitySupport retrieveClientCertificateWithNameSuffix:clientNameSuffix completion:v4];
}

- (void)_completeOperationWithReferenceKey:(id)key certificates:(id)certificates error:(id)error
{
  keyCopy = key;
  certificatesCopy = certificates;
  errorCopy = error;
  certificateRetrievalCompletionBlock = [(CCDRetrieveClientCertificateOperation *)self certificateRetrievalCompletionBlock];

  if (certificateRetrievalCompletionBlock)
  {
    if (errorCopy)
    {
      v12 = *(DEPLogObjects() + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        selfCopy3 = self;
        v18 = 2112;
        v19 = errorCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Error: %@", &v16, 0x16u);
      }
    }

    v13 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ completed. Calling the completion block.", &v16, 0xCu);
    }

    certificateRetrievalCompletionBlock2 = [(CCDRetrieveClientCertificateOperation *)self certificateRetrievalCompletionBlock];
    (certificateRetrievalCompletionBlock2)[2](certificateRetrievalCompletionBlock2, keyCopy, certificatesCopy, errorCopy);
  }

  else
  {
    v15 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No completion block, canceling %{public}@", &v16, 0xCu);
    }

    [(CCDRetrieveClientCertificateOperation *)self cancel];
  }

  [(CCDOperation *)self endOperation];
}

- (void)_retryCertificateRetrievalIfAllowed:(BOOL)allowed afterDelay:(double)delay orFailWithError:(id)error
{
  if (allowed)
  {
    v7 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Retrying the request", buf, 2u);
    }

    [(CCDRetrieveClientCertificateOperation *)self _startRetryTimerWithInterval:delay];
  }

  else
  {
    delay = [CCDError maxRetriesExceededErrorWithUnderlyingError:error, delay];
    [(CCDRetrieveClientCertificateOperation *)self _completeOperationWithReferenceKey:0 certificates:0 error:delay];
  }
}

- (void)_retryCertificateRetrievalIfAllowedAfterDelayOrFailWithError:(id)error
{
  errorCopy = error;
  [(CCDRetrieveClientCertificateOperation *)self setCertificateRetrievalRequestCount:[(CCDRetrieveClientCertificateOperation *)self certificateRetrievalRequestCount]+ 1];
  [(CCDRetrieveClientCertificateOperation *)self _retryCertificateRetrievalIfAllowed:[(CCDRetrieveClientCertificateOperation *)self certificateRetrievalRequestCount]< 5 afterDelay:errorCopy orFailWithError:4.0];
}

- (void)_startRetryTimerWithInterval:(double)interval
{
  v5 = [NSTimer alloc];
  v6 = [NSDate dateWithTimeIntervalSinceNow:interval];
  v7 = [v5 initWithFireDate:v6 interval:self target:"timeoutTimerDidFire:" selector:0 userInfo:0 repeats:0.0];
  [(CCDRetrieveClientCertificateOperation *)self setTimeoutTimer:v7];

  v9 = +[NSRunLoop mainRunLoop];
  timeoutTimer = [(CCDRetrieveClientCertificateOperation *)self timeoutTimer];
  [v9 addTimer:timeoutTimer forMode:NSRunLoopCommonModes];
}

- (void)timeoutTimerDidFire:(id)fire
{
  if ([(CCDRetrieveClientCertificateOperation *)self certificateRetrievalFailed])
  {

    [(CCDRetrieveClientCertificateOperation *)self retrieveClientCertificate];
  }
}

@end