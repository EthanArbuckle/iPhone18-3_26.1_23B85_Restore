@interface CCDEnrollmentProvisionallyEnrollRequest
- (id)requestPayload;
@end

@implementation CCDEnrollmentProvisionallyEnrollRequest

- (id)requestPayload
{
  v3 = objc_opt_new();
  v4 = [(CCDEnrollmentProvisionallyEnrollRequest *)self nonce];

  if (v4)
  {
    v5 = [(CCDEnrollmentProvisionallyEnrollRequest *)self nonce];
    [v3 setNonce:v5];
  }

  else
  {
    v6 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Nonce is NOT provided in %@. Request will probably fail.", &v8, 0xCu);
    }
  }

  return v3;
}

@end