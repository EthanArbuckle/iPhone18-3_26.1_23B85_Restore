@interface FMDPairingCheckCommandRequest
- (FMDPairingCheckCommandRequest)initWithAccount:(id)account pairingCheckRequestInfo:(id)info;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMDPairingCheckCommandRequest

- (FMDPairingCheckCommandRequest)initWithAccount:(id)account pairingCheckRequestInfo:(id)info
{
  accountCopy = account;
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = FMDPairingCheckCommandRequest;
  v8 = [(FMDRequest *)&v15 initWithAccount:0];
  if (v8)
  {
    if (accountCopy)
    {
      accessoryPairingURL = [accountCopy accessoryPairingURL];
      baseURL = v8->_baseURL;
      v8->_baseURL = accessoryPairingURL;
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
    objc_storeStrong(&v8->_pairingCheckRequestInfo, info);
  }

  return v8;
}

- (id)requestHeaders
{
  v4.receiver = self;
  v4.super_class = FMDPairingCheckCommandRequest;
  requestHeaders = [(FMDRequest *)&v4 requestHeaders];

  return requestHeaders;
}

- (id)requestUrl
{
  baseURL = [(FMDPairingCheckCommandRequest *)self baseURL];
  v3 = [NSString stringWithFormat:@"%@/type5/pairingCheckCommand", baseURL];

  v4 = [NSURL URLWithString:v3];

  return v4;
}

- (id)requestBody
{
  v13.receiver = self;
  v13.super_class = FMDPairingCheckCommandRequest;
  requestBody = [(FMDRequest *)&v13 requestBody];
  pairingCheckRequestInfo = [(FMDPairingCheckCommandRequest *)self pairingCheckRequestInfo];
  pairingCheckToken = [pairingCheckRequestInfo pairingCheckToken];
  [requestBody fm_safelyMapKey:@"pairingCheckToken" toObject:pairingCheckToken];

  pairingCheckRequestInfo2 = [(FMDPairingCheckCommandRequest *)self pairingCheckRequestInfo];
  authNonce = [pairingCheckRequestInfo2 authNonce];
  [requestBody fm_safelyMapKey:@"authNonce" toObject:authNonce];

  pairingCheckRequestInfo3 = [(FMDPairingCheckCommandRequest *)self pairingCheckRequestInfo];
  accessoryType = [pairingCheckRequestInfo3 accessoryType];
  [requestBody fm_safelyMapKey:@"accessoryType" toObject:accessoryType];

  pairingCheckRequestInfo4 = [(FMDPairingCheckCommandRequest *)self pairingCheckRequestInfo];
  eraseKeyType = [pairingCheckRequestInfo4 eraseKeyType];
  [requestBody fm_safelyMapKey:@"eraseKeyType" toObject:eraseKeyType];

  return requestBody;
}

@end