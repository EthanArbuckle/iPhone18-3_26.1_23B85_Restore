@interface CCDEnrollmentOperation
- (id)responseWithResponseData:(id)a3 contentType:(id)a4 statusCode:(int64_t)a5 retryNeeded:(BOOL *)a6 outError:(id *)a7;
- (void)completeOperationWithResponse:(id)a3 error:(id)a4;
@end

@implementation CCDEnrollmentOperation

- (id)responseWithResponseData:(id)a3 contentType:(id)a4 statusCode:(int64_t)a5 retryNeeded:(BOOL *)a6 outError:(id *)a7
{
  v12 = a3;
  v13 = a4;
  if (a5 <= 499)
  {
    if (a5 == 200 || a5 == 204)
    {
      v14 = [(CCDEnrollmentOperation *)self responseWithResponseData:v12 contentType:v13 outError:a7];
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (a5 != 500)
  {
    if (a5 == 503)
    {
      v14 = 0;
      *a6 = 1;
      goto LABEL_14;
    }

LABEL_8:
    if (a7)
    {
      v15 = [(CCDEnrollmentOperation *)self errorForStatusCode:a5 responseData:v12];
LABEL_12:
      v14 = 0;
      *a7 = v15;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (a7)
  {
    v15 = +[CCDError teslaServiceDownError];
    goto LABEL_12;
  }

LABEL_13:
  v14 = 0;
LABEL_14:

  return v14;
}

- (void)completeOperationWithResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CCDEnrollmentOperation *)self enrollmentCompletionBlock];

  if (v8)
  {
    if (v7)
    {
      v9 = *(DEPLogObjects() + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error: %@", &v12, 0xCu);
      }
    }

    v10 = [(CCDEnrollmentOperation *)self enrollmentCompletionBlock];
    (v10)[2](v10, v7 == 0, v6, v7);
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