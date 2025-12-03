@interface FMDPairingLockRegisterRequest
- (FMDPairingLockRegisterRequest)initWithAccount:(id)account registerRequestInfo:(id)info;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMDPairingLockRegisterRequest

- (FMDPairingLockRegisterRequest)initWithAccount:(id)account registerRequestInfo:(id)info
{
  accountCopy = account;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = FMDPairingLockRegisterRequest;
  v8 = [(FMDRequest *)&v12 initWithAccount:accountCopy];
  if (v8)
  {
    accessoryPairingURL = [accountCopy accessoryPairingURL];
    baseURL = v8->_baseURL;
    v8->_baseURL = accessoryPairingURL;

    objc_storeStrong(&v8->_registerRequestInfo, info);
  }

  return v8;
}

- (id)requestHeaders
{
  v4.receiver = self;
  v4.super_class = FMDPairingLockRegisterRequest;
  requestHeaders = [(FMDRequest *)&v4 requestHeaders];

  return requestHeaders;
}

- (id)requestUrl
{
  baseURL = [(FMDPairingLockRegisterRequest *)self baseURL];
  v3 = [NSString stringWithFormat:@"%@/type5/pairinglock/register", baseURL];

  v4 = [NSURL URLWithString:v3];

  return v4;
}

- (id)requestBody
{
  v9.receiver = self;
  v9.super_class = FMDPairingLockRegisterRequest;
  requestBody = [(FMDRequest *)&v9 requestBody];
  registerRequestInfo = [(FMDPairingLockRegisterRequest *)self registerRequestInfo];
  serialNumber = [registerRequestInfo serialNumber];
  [requestBody fm_safelyMapKey:@"serialNumber" toObject:serialNumber];

  registerRequestInfo2 = [(FMDPairingLockRegisterRequest *)self registerRequestInfo];
  accessoryType = [registerRequestInfo2 accessoryType];
  [requestBody fm_safelyMapKey:@"accessoryType" toObject:accessoryType];

  [requestBody fm_safelyMapKey:@"specVersion" toObject:@"1.0.0"];

  return requestBody;
}

@end