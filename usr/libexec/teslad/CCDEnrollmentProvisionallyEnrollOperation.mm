@interface CCDEnrollmentProvisionallyEnrollOperation
- (BOOL)_validateEnrollmentResponse:(id)a3 error:(id *)a4;
- (id)errorForStatusCode:(int64_t)a3 responseData:(id)a4;
- (id)responseWithResponseData:(id)a3 contentType:(id)a4 outError:(id *)a5;
@end

@implementation CCDEnrollmentProvisionallyEnrollOperation

- (id)errorForStatusCode:(int64_t)a3 responseData:(id)a4
{
  v5 = a4;
  if (a3 == 403 || a3 == 401)
  {
    v6 = [CCDError cloudConfigErrorInResponse:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [CCDError internalErrorWithCode:34000];
    }

    v9 = v8;
  }

  else
  {
    if (a3 == 400)
    {
      +[CCDError invalidDeviceError];
    }

    else
    {
      +[CCDError teslaServiceDownError];
    }
    v9 = ;
  }

  return v9;
}

- (id)responseWithResponseData:(id)a3 contentType:(id)a4 outError:(id *)a5
{
  v7 = a3;
  v8 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    v10 = [[NSString alloc] initWithData:v7 encoding:4];
    *buf = 138543362;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Enrollment Response: %{public}@", buf, 0xCu);
  }

  v17 = 0;
  v11 = [NSJSONSerialization JSONObjectWithData:v7 options:1 error:&v17];
  v12 = v17;
  if (v12)
  {
    v13 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Error: %@", buf, 0xCu);
    }

    if (a5)
    {
      +[CCDError badFormatError];
      *a5 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    if ([(CCDEnrollmentProvisionallyEnrollOperation *)self _validateEnrollmentResponse:v11 error:a5])
    {
      v15 = v11;
    }

    else
    {
      v15 = 0;
    }

    v14 = v15;
  }

  return v14;
}

- (BOOL)_validateEnrollmentResponse:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Validating enrollment response", v24, 2u);
  }

  v7 = [v5 objectForKeyedSubscript:@"enrollment_type"];
  v8 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"No enrollment type received";
    if (v7)
    {
      v9 = v7;
    }

    *v24 = 138543362;
    *&v24[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Enrollment type: %{public}@", v24, 0xCu);
  }

  if (!v7)
  {
    v12 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v24 = 138543362;
      *&v24[4] = @"enrollment_type";
      v13 = "No enrollment type information. There needs to be a %{public}@ section in the response.";
      v14 = v12;
      v15 = 12;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v13, v24, v15);
    }

LABEL_20:
    v19 = +[CCDError badFormatError];
    goto LABEL_21;
  }

  if (![(__CFString *)v7 isEqualToString:@"PROVISIONAL_ENROLLMENT"])
  {
    v16 = [(__CFString *)v7 isEqualToString:@"REGULAR_ENROLLMENT"];
    v17 = *(DEPLogObjects() + 8);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (v16)
    {
      if (v18)
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "This device is already enrolled.", v24, 2u);
      }

      v19 = +[CCDError deviceAlreadyEnrolledError];
LABEL_21:
      v11 = v19;
      if (!a4)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    if (v18)
    {
      *v24 = 0;
      v13 = "Enrollment type is not recognized.";
      v14 = v17;
      v15 = 2;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v10 = [v5 objectForKeyedSubscript:@"ce_expiry_ts"];
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v20 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No expiry date received", v24, 2u);
    }

    v11 = +[CCDError badFormatError];
  }

  if (a4)
  {
LABEL_27:
    if (v11)
    {
      v21 = v11;
      *a4 = v11;
    }
  }

LABEL_29:
  v22 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Enrollment response is validated successfully.", v24, 2u);
  }

  return v11 == 0;
}

@end