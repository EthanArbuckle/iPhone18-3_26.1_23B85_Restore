@interface FMDPairingCheckCommandRequest
- (FMDPairingCheckCommandRequest)initWithAccount:(id)a3 pairingCheckRequestInfo:(id)a4;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMDPairingCheckCommandRequest

- (FMDPairingCheckCommandRequest)initWithAccount:(id)a3 pairingCheckRequestInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = FMDPairingCheckCommandRequest;
  v8 = [(FMDRequest *)&v15 initWithAccount:0];
  if (v8)
  {
    if (v6)
    {
      v9 = [v6 accessoryPairingURL];
      baseURL = v8->_baseURL;
      v8->_baseURL = v9;
    }

    else
    {
      v11 = [FMPreferencesUtil stringForKey:@"pairingURL" inDomain:kFMDNotBackedUpPrefDomain];
      v12 = v8->_baseURL;
      v8->_baseURL = v11;

      if (v8->_baseURL)
      {
        goto LABEL_6;
      }

      v14 = @"https://gateway.icloud.com/fmadminws";
      baseURL = v8->_baseURL;
      v8->_baseURL = &v14->isa;
    }

LABEL_6:
    objc_storeStrong(&v8->_pairingCheckRequestInfo, a4);
  }

  return v8;
}

- (id)requestHeaders
{
  v4.receiver = self;
  v4.super_class = FMDPairingCheckCommandRequest;
  v2 = [(FMDRequest *)&v4 requestHeaders];

  return v2;
}

- (id)requestUrl
{
  v2 = [(FMDPairingCheckCommandRequest *)self baseURL];
  v3 = [NSString stringWithFormat:@"%@/type5/pairingCheckCommand", v2];

  v4 = [NSURL URLWithString:v3];

  return v4;
}

- (id)requestBody
{
  v13.receiver = self;
  v13.super_class = FMDPairingCheckCommandRequest;
  v3 = [(FMDRequest *)&v13 requestBody];
  v4 = [(FMDPairingCheckCommandRequest *)self pairingCheckRequestInfo];
  v5 = [v4 pairingCheckToken];
  [v3 fm_safelyMapKey:@"pairingCheckToken" toObject:v5];

  v6 = [(FMDPairingCheckCommandRequest *)self pairingCheckRequestInfo];
  v7 = [v6 authNonce];
  [v3 fm_safelyMapKey:@"authNonce" toObject:v7];

  v8 = [(FMDPairingCheckCommandRequest *)self pairingCheckRequestInfo];
  v9 = [v8 accessoryType];
  [v3 fm_safelyMapKey:@"accessoryType" toObject:v9];

  v10 = [(FMDPairingCheckCommandRequest *)self pairingCheckRequestInfo];
  v11 = [v10 eraseKeyType];
  [v3 fm_safelyMapKey:@"eraseKeyType" toObject:v11];

  return v3;
}

@end