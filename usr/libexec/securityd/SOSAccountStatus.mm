@interface SOSAccountStatus
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)init:(int)init error:(id)error;
@end

@implementation SOSAccountStatus

- (id)description
{
  [(SOSAccountStatus *)self status];
  v3 = SOSCCGetStatusDescription();
  error = [(SOSAccountStatus *)self error];
  v5 = [NSString stringWithFormat:@"<SOSStatus: %@ (%@)>", v3, error];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = 0;
  if (equalCopy && (isKindOfClass & 1) != 0)
  {
    v8 = equalCopy;
    status = [(SOSAccountStatus *)self status];
    if (status != [v8 status])
    {
      v7 = 0;
LABEL_12:

      goto LABEL_13;
    }

    error = [(SOSAccountStatus *)self error];
    if (error || ([v8 error], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      error2 = [(SOSAccountStatus *)self error];
      error3 = [v8 error];
      v7 = [error2 isEqual:error3];

      if (error)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_11;
  }

LABEL_13:

  return v7;
}

- (id)init:(int)init error:(id)error
{
  errorCopy = error;
  v11.receiver = self;
  v11.super_class = SOSAccountStatus;
  v8 = [(SOSAccountStatus *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_status = init;
    objc_storeStrong(&v8->_error, error);
  }

  return v9;
}

@end