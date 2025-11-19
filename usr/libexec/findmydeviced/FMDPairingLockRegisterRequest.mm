@interface FMDPairingLockRegisterRequest
- (FMDPairingLockRegisterRequest)initWithAccount:(id)a3 registerRequestInfo:(id)a4;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMDPairingLockRegisterRequest

- (FMDPairingLockRegisterRequest)initWithAccount:(id)a3 registerRequestInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = FMDPairingLockRegisterRequest;
  v8 = [(FMDRequest *)&v12 initWithAccount:v6];
  if (v8)
  {
    v9 = [v6 accessoryPairingURL];
    baseURL = v8->_baseURL;
    v8->_baseURL = v9;

    objc_storeStrong(&v8->_registerRequestInfo, a4);
  }

  return v8;
}

- (id)requestHeaders
{
  v4.receiver = self;
  v4.super_class = FMDPairingLockRegisterRequest;
  v2 = [(FMDRequest *)&v4 requestHeaders];

  return v2;
}

- (id)requestUrl
{
  v2 = [(FMDPairingLockRegisterRequest *)self baseURL];
  v3 = [NSString stringWithFormat:@"%@/type5/pairinglock/register", v2];

  v4 = [NSURL URLWithString:v3];

  return v4;
}

- (id)requestBody
{
  v9.receiver = self;
  v9.super_class = FMDPairingLockRegisterRequest;
  v3 = [(FMDRequest *)&v9 requestBody];
  v4 = [(FMDPairingLockRegisterRequest *)self registerRequestInfo];
  v5 = [v4 serialNumber];
  [v3 fm_safelyMapKey:@"serialNumber" toObject:v5];

  v6 = [(FMDPairingLockRegisterRequest *)self registerRequestInfo];
  v7 = [v6 accessoryType];
  [v3 fm_safelyMapKey:@"accessoryType" toObject:v7];

  [v3 fm_safelyMapKey:@"specVersion" toObject:@"1.0.0"];

  return v3;
}

@end