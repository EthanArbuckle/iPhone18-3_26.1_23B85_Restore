@interface UARPAssetPersonalizer
- (BOOL)personalizeAsset:(id)a3 error:(id *)a4;
- (BOOL)prepareAsAppleConnectSSO:(id)a3 error:(id *)a4;
- (BOOL)prepareCommon:(id)a3 error:(id *)a4;
- (UARPAssetPersonalizer)init;
- (id)performTatsuRequest:(id)a3;
- (void)dealloc;
@end

@implementation UARPAssetPersonalizer

- (UARPAssetPersonalizer)init
{
  v8.receiver = self;
  v8.super_class = UARPAssetPersonalizer;
  v2 = [(UARPAssetPersonalizer *)&v8 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.uarp.layer3", "personalizer");
    log = v2->_log;
    v2->_log = v3;

    v5 = [NSURL URLWithString:@"https://gs.apple.com:443"];
    signingServer = v2->_signingServer;
    v2->_signingServer = v5;
  }

  return v2;
}

- (void)dealloc
{
  amai = self->_amai;
  if (amai)
  {
    CFRelease(amai);
  }

  v4.receiver = self;
  v4.super_class = UARPAssetPersonalizer;
  [(UARPAssetPersonalizer *)&v4 dealloc];
}

- (BOOL)prepareCommon:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 copy];
    signingServer = self->_signingServer;
    self->_signingServer = v7;
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v10 = self->_signingServer;
    v16 = 138543362;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "UARP: TSS request to signing server %{public}@", &v16, 0xCu);
  }

  AMAuthInstallLogSetHandler();
  amai = self->_amai;
  if (amai)
  {
    CFRelease(amai);
  }

  v12 = AMAuthInstallCreate();
  self->_amai = v12;
  if (v12)
  {
    v13 = self->_signingServer;
    if (!AMAuthInstallSetSigningServerURL())
    {
      v14 = 1;
      goto LABEL_15;
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10008257C();
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000825B0();
  }

  v14 = 0;
LABEL_15:

  return v14;
}

- (BOOL)prepareAsAppleConnectSSO:(id)a3 error:(id *)a4
{
  v5 = [(UARPAssetPersonalizer *)self prepareCommon:a3 error:a4];
  if (v5)
  {
    if (AMAuthInstallSsoInitialize())
    {
      v5 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        sub_1000825F8();
LABEL_8:
        LOBYTE(v5) = 0;
      }
    }

    else
    {
      amai = self->_amai;
      if (!AMAuthInstallSsoEnable())
      {
        LOBYTE(v5) = 1;
        return v5;
      }

      v5 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        sub_10008262C();
        goto LABEL_8;
      }
    }
  }

  return v5;
}

- (BOOL)personalizeAsset:(id)a3 error:(id *)a4
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [a3 tatsuTickets];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 tatsuRequest];

        if (v11)
        {
          v12 = [v10 tatsuRequest];
          v13 = [(UARPAssetPersonalizer *)self performTatsuRequest:v12];
          [v10 setTatsuResponse:v13];

          v14 = [v10 tatsuResponse];

          if (!v14)
          {
            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
            {
              sub_100082660();
            }

            v15 = 0;
            goto LABEL_14;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_14:

  return v15;
}

- (id)performTatsuRequest:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    signingServer = self->_signingServer;
    if (self->_useSSO)
    {
      v7 = @" <AppleConnect>";
    }

    else
    {
      v7 = &stru_1000BBB30;
    }

    *buf = 138543874;
    v16 = signingServer;
    v17 = 2114;
    v18 = v7;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "UARP: TSS Request to %{public}@%{public}@ is %{public}@", buf, 0x20u);
  }

  amai = self->_amai;
  PersonalizedResponse = AMAuthInstallApCreatePersonalizedResponse();
  v10 = self->_log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = self->_signingServer;
    if (self->_useSSO)
    {
      v12 = @" <AppleConnect>";
    }

    else
    {
      v12 = &stru_1000BBB30;
    }

    *buf = 138543874;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    v19 = 2114;
    v20 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "UARP: TSS Response from %{public}@%{public}@ is %{public}@", buf, 0x20u);
  }

  if (PersonalizedResponse)
  {
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100082694(PersonalizedResponse, v13);
    }
  }

  return 0;
}

@end