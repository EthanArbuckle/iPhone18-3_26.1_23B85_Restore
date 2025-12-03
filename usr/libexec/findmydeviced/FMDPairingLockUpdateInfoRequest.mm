@interface FMDPairingLockUpdateInfoRequest
- (FMDPairingLockUpdateInfoRequest)initWithAccount:(id)account updateRequestInfo:(id)info;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMDPairingLockUpdateInfoRequest

- (FMDPairingLockUpdateInfoRequest)initWithAccount:(id)account updateRequestInfo:(id)info
{
  accountCopy = account;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = FMDPairingLockUpdateInfoRequest;
  v8 = [(FMDRequest *)&v12 initWithAccount:accountCopy];
  if (v8)
  {
    accessoryPairingURL = [accountCopy accessoryPairingURL];
    baseURL = v8->_baseURL;
    v8->_baseURL = accessoryPairingURL;

    objc_storeStrong(&v8->_updateRequestInfo, info);
  }

  return v8;
}

- (id)requestHeaders
{
  v4.receiver = self;
  v4.super_class = FMDPairingLockUpdateInfoRequest;
  requestHeaders = [(FMDRequest *)&v4 requestHeaders];

  return requestHeaders;
}

- (id)requestUrl
{
  baseURL = [(FMDPairingLockUpdateInfoRequest *)self baseURL];
  v3 = [NSString stringWithFormat:@"%@/type5/pairinglock/updatePairingInfo", baseURL];

  v4 = [NSURL URLWithString:v3];

  return v4;
}

- (id)requestBody
{
  v13.receiver = self;
  v13.super_class = FMDPairingLockUpdateInfoRequest;
  requestBody = [(FMDRequest *)&v13 requestBody];
  updateRequestInfo = [(FMDPairingLockUpdateInfoRequest *)self updateRequestInfo];
  pairingCheckToken = [updateRequestInfo pairingCheckToken];
  [requestBody fm_safelyMapKey:@"pairingCheckToken" toObject:pairingCheckToken];

  updateRequestInfo2 = [(FMDPairingLockUpdateInfoRequest *)self updateRequestInfo];
  lostModePubKey = [updateRequestInfo2 lostModePubKey];
  [requestBody fm_safelyMapKey:@"lostModePubKey" toObject:lostModePubKey];

  updateRequestInfo3 = [(FMDPairingLockUpdateInfoRequest *)self updateRequestInfo];
  userPrivateKey = [updateRequestInfo3 userPrivateKey];
  [requestBody fm_safelyMapKey:@"userPrivateKey" toObject:userPrivateKey];

  updateRequestInfo4 = [(FMDPairingLockUpdateInfoRequest *)self updateRequestInfo];
  timeStamp = [updateRequestInfo4 timeStamp];
  [requestBody fm_safelyMapKey:@"timestamp" toObject:timeStamp];

  return requestBody;
}

@end