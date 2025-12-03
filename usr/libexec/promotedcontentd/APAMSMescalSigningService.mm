@interface APAMSMescalSigningService
- (APMescalSigningStateChangedDelegate)delegate;
- (id)rawSignatureForData:(id)data error:(id *)error;
- (void)retrySetup;
- (void)setState:(int64_t)state;
@end

@implementation APAMSMescalSigningService

- (void)setState:(int64_t)state
{
  delegate = [(APAMSMescalSigningService *)self delegate];

  if (delegate)
  {
    delegate2 = [(APAMSMescalSigningService *)self delegate];
    [delegate2 mescalStateChanged:state];
  }
}

- (void)retrySetup
{
  v3 = [@"APMescalSigningService AMS provider status check." dataUsingEncoding:4];
  v6 = 0;
  v4 = [(APAMSMescalSigningService *)self rawSignatureForData:v3 error:&v6];
  if (v4)
  {
    v5 = v6 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(APAMSMescalSigningService *)self setState:2];
  }
}

- (id)rawSignatureForData:(id)data error:(id *)error
{
  dataCopy = data;
  if (error)
  {
    *error = 0;
  }

  if (+[APSystemInternal isAppleInternalInstall])
  {
    v7 = [NSUserDefaults alloc];
    v8 = [v7 initWithSuiteName:APDefaultsBundleID];
    if ([v8 BOOLForKey:@"ForceAMSMescalError"])
    {
      v9 = AMSErrorDomain;
      v24[0] = NSLocalizedDescriptionKey;
      v24[1] = NSLocalizedFailureReasonErrorKey;
      v25[0] = @"Bag Value Missing";
      v25[1] = @"The bag does not contain sign-sap-setup-cert nor did anyone register a default value.";
      v10 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
      v11 = [NSError errorWithDomain:v9 code:204 userInfo:v10];

      if (v11)
      {
        v12 = 0;
        v13 = 1;
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v14 = +[APAMSBagManager adprivacydBag];
  v21 = 0;
  v12 = [AMSMescal signatureFromData:dataCopy type:1 bag:v14 error:&v21];
  v15 = v21;

  v13 = v15 != 0;
  if (v12)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v11 = 0;
    goto LABEL_20;
  }

  v11 = v15;
LABEL_13:
  v17 = APLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "rawSignatureForData failed with error %{public}@", buf, 0xCu);
  }

  [(APAMSMescalSigningService *)self setState:3];
  v18 = !v13;
  if (!error)
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    domain = [v11 domain];
    *error = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [v11 code], 0);
  }

LABEL_20:

  return v12;
}

- (APMescalSigningStateChangedDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end