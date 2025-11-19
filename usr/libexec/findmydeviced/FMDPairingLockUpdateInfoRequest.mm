@interface FMDPairingLockUpdateInfoRequest
- (FMDPairingLockUpdateInfoRequest)initWithAccount:(id)a3 updateRequestInfo:(id)a4;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMDPairingLockUpdateInfoRequest

- (FMDPairingLockUpdateInfoRequest)initWithAccount:(id)a3 updateRequestInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = FMDPairingLockUpdateInfoRequest;
  v8 = [(FMDRequest *)&v12 initWithAccount:v6];
  if (v8)
  {
    v9 = [v6 accessoryPairingURL];
    baseURL = v8->_baseURL;
    v8->_baseURL = v9;

    objc_storeStrong(&v8->_updateRequestInfo, a4);
  }

  return v8;
}

- (id)requestHeaders
{
  v4.receiver = self;
  v4.super_class = FMDPairingLockUpdateInfoRequest;
  v2 = [(FMDRequest *)&v4 requestHeaders];

  return v2;
}

- (id)requestUrl
{
  v2 = [(FMDPairingLockUpdateInfoRequest *)self baseURL];
  v3 = [NSString stringWithFormat:@"%@/type5/pairinglock/updatePairingInfo", v2];

  v4 = [NSURL URLWithString:v3];

  return v4;
}

- (id)requestBody
{
  v13.receiver = self;
  v13.super_class = FMDPairingLockUpdateInfoRequest;
  v3 = [(FMDRequest *)&v13 requestBody];
  v4 = [(FMDPairingLockUpdateInfoRequest *)self updateRequestInfo];
  v5 = [v4 pairingCheckToken];
  [v3 fm_safelyMapKey:@"pairingCheckToken" toObject:v5];

  v6 = [(FMDPairingLockUpdateInfoRequest *)self updateRequestInfo];
  v7 = [v6 lostModePubKey];
  [v3 fm_safelyMapKey:@"lostModePubKey" toObject:v7];

  v8 = [(FMDPairingLockUpdateInfoRequest *)self updateRequestInfo];
  v9 = [v8 userPrivateKey];
  [v3 fm_safelyMapKey:@"userPrivateKey" toObject:v9];

  v10 = [(FMDPairingLockUpdateInfoRequest *)self updateRequestInfo];
  v11 = [v10 timeStamp];
  [v3 fm_safelyMapKey:@"timestamp" toObject:v11];

  return v3;
}

@end