@interface SOSAccountStatus
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)init:(int)a3 error:(id)a4;
@end

@implementation SOSAccountStatus

- (id)description
{
  [(SOSAccountStatus *)self status];
  v3 = SOSCCGetStatusDescription();
  v4 = [(SOSAccountStatus *)self error];
  v5 = [NSString stringWithFormat:@"<SOSStatus: %@ (%@)>", v3, v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = 0;
  if (v5 && (isKindOfClass & 1) != 0)
  {
    v8 = v5;
    v9 = [(SOSAccountStatus *)self status];
    if (v9 != [v8 status])
    {
      v7 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v10 = [(SOSAccountStatus *)self error];
    if (v10 || ([v8 error], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = [(SOSAccountStatus *)self error];
      v12 = [v8 error];
      v7 = [v11 isEqual:v12];

      if (v10)
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

- (id)init:(int)a3 error:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SOSAccountStatus;
  v8 = [(SOSAccountStatus *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_status = a3;
    objc_storeStrong(&v8->_error, a4);
  }

  return v9;
}

@end