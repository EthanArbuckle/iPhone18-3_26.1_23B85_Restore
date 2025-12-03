@interface CCDEnrollmentOperation
- (id)responseWithResponseData:(id)data contentType:(id)type statusCode:(int64_t)code retryNeeded:(BOOL *)needed outError:(id *)error;
- (void)completeOperationWithResponse:(id)response error:(id)error;
@end

@implementation CCDEnrollmentOperation

- (id)responseWithResponseData:(id)data contentType:(id)type statusCode:(int64_t)code retryNeeded:(BOOL *)needed outError:(id *)error
{
  dataCopy = data;
  typeCopy = type;
  if (code <= 499)
  {
    if (code == 200 || code == 204)
    {
      v14 = [(CCDEnrollmentOperation *)self responseWithResponseData:dataCopy contentType:typeCopy outError:error];
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (code != 500)
  {
    if (code == 503)
    {
      v14 = 0;
      *needed = 1;
      goto LABEL_14;
    }

LABEL_8:
    if (error)
    {
      v15 = [(CCDEnrollmentOperation *)self errorForStatusCode:code responseData:dataCopy];
LABEL_12:
      v14 = 0;
      *error = v15;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (error)
  {
    v15 = +[CCDError teslaServiceDownError];
    goto LABEL_12;
  }

LABEL_13:
  v14 = 0;
LABEL_14:

  return v14;
}

- (void)completeOperationWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  enrollmentCompletionBlock = [(CCDEnrollmentOperation *)self enrollmentCompletionBlock];

  if (enrollmentCompletionBlock)
  {
    if (errorCopy)
    {
      v9 = *(DEPLogObjects() + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = errorCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error: %@", &v12, 0xCu);
      }
    }

    enrollmentCompletionBlock2 = [(CCDEnrollmentOperation *)self enrollmentCompletionBlock];
    (enrollmentCompletionBlock2)[2](enrollmentCompletionBlock2, errorCopy == 0, responseCopy, errorCopy);
  }

  else
  {
    v11 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No completion block, canceling operation", &v12, 2u);
    }

    [(CCDEnrollmentOperation *)self cancel];
  }
}

@end