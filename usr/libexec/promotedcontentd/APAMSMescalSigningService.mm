@interface APAMSMescalSigningService
- (APMescalSigningStateChangedDelegate)delegate;
- (id)rawSignatureForData:(id)a3 error:(id *)a4;
- (void)retrySetup;
- (void)setState:(int64_t)a3;
@end

@implementation APAMSMescalSigningService

- (void)setState:(int64_t)a3
{
  v5 = [(APAMSMescalSigningService *)self delegate];

  if (v5)
  {
    v6 = [(APAMSMescalSigningService *)self delegate];
    [v6 mescalStateChanged:a3];
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

- (id)rawSignatureForData:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
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
  v12 = [AMSMescal signatureFromData:v6 type:1 bag:v14 error:&v21];
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
  if (!a4)
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    v19 = [v11 domain];
    *a4 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v19, [v11 code], 0);
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