@interface CCDEnrollmentProvisionallyEnrollRequest
- (id)requestPayload;
@end

@implementation CCDEnrollmentProvisionallyEnrollRequest

- (id)requestPayload
{
  v3 = objc_opt_new();
  nonce = [(CCDEnrollmentProvisionallyEnrollRequest *)self nonce];

  if (nonce)
  {
    nonce2 = [(CCDEnrollmentProvisionallyEnrollRequest *)self nonce];
    [v3 setNonce:nonce2];
  }

  else
  {
    v6 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Nonce is NOT provided in %@. Request will probably fail.", &v8, 0xCu);
    }
  }

  return v3;
}

@end