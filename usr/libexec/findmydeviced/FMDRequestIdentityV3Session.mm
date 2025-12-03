@interface FMDRequestIdentityV3Session
- (FMDRequestIdentityV3Session)initWithProvider:(id)provider activationLockRequestUUID:(id)d pscHelloMsg:(id)msg;
- (FMDServiceProvider)provider;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
- (unint64_t)type;
@end

@implementation FMDRequestIdentityV3Session

- (FMDRequestIdentityV3Session)initWithProvider:(id)provider activationLockRequestUUID:(id)d pscHelloMsg:(id)msg
{
  providerCopy = provider;
  dCopy = d;
  msgCopy = msg;
  account = [providerCopy account];
  v14.receiver = self;
  v14.super_class = FMDRequestIdentityV3Session;
  v12 = [(FMDRequest *)&v14 initWithAccount:account];

  if (v12)
  {
    [(FMDRequestIdentityV3Session *)v12 setActivationLockRequestUUID:dCopy];
    [(FMDRequestIdentityV3Session *)v12 setProvider:providerCopy];
    [(FMDRequestIdentityV3Session *)v12 setPscHelloMsg:msgCopy];
    [(FMDRequestIdentityV3Session *)v12 setRequiresAuthentication:1];
  }

  return v12;
}

- (unint64_t)type
{
  if ([(FMDRequestIdentityV3Session *)self requiresAuthentication])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)requestUrl
{
  if ([(FMDRequestIdentityV3Session *)self requiresAuthentication])
  {
    provider = [(FMDRequestIdentityV3Session *)self provider];
    account = [provider account];

    v5 = +[FMDSystemConfig sharedInstance];
    deviceUDID = [v5 deviceUDID];

    v7 = objc_alloc_init(RequestTemplateURL);
    v8 = [(RequestTemplateURL *)v7 urlFromTemplate:@"${scheme}://${hostname}/fmipservice/${service}/${dsid}/${udid}/identityV3Session" account:account udid:deviceUDID];
  }

  else
  {
    account = objc_alloc_init(RequestTemplateURL);
    v8 = [(RequestTemplateURL *)account unauthenticatedURLFromTemplate:@"${scheme}://${hostname}/${service}/provision/init"];
  }

  return v8;
}

- (id)requestHeaders
{
  v7.receiver = self;
  v7.super_class = FMDRequestIdentityV3Session;
  requestHeaders = [(FMDRequest *)&v7 requestHeaders];
  activationLockRequestUUID = [(FMDRequestIdentityV3Session *)self activationLockRequestUUID];
  uUIDString = [activationLockRequestUUID UUIDString];
  [requestHeaders fm_safelyMapKey:@"X-Apple-AL-ID" toObject:uUIDString];

  return requestHeaders;
}

- (id)requestBody
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[FMSystemInfo sharedInstance];
  serialNumber = [v4 serialNumber];
  [v3 fm_safelyMapKey:@"serialNumber" toObject:serialNumber];

  v6 = +[FMSystemInfo sharedInstance];
  deviceUDID = [v6 deviceUDID];
  [v3 fm_safelyMapKey:@"udid" toObject:deviceUDID];

  v8 = +[FMSystemInfo sharedInstance];
  osVersion = [v8 osVersion];
  [v3 fm_safelyMapKey:@"osVersion" toObject:osVersion];

  v10 = +[FMSystemInfo sharedInstance];
  osBuildVersion = [v10 osBuildVersion];
  [v3 fm_safelyMapKey:@"osBuildVersion" toObject:osBuildVersion];

  v12 = +[FMSystemInfo sharedInstance];
  productType = [v12 productType];
  [v3 fm_safelyMapKey:@"productType" toObject:productType];

  v14 = +[FMDAbsintheV3SigningInterface sharedInterface];
  v23 = 0;
  v15 = [v14 inFieldCollectionReceipt:&v23];
  v16 = v23;
  [v3 fm_safelyMapKey:@"ifcReceipt" toObject:v15];

  fm_commaSeparatedString = [v16 fm_commaSeparatedString];
  [v3 fm_safelyMapKey:@"collectionError" toObject:fm_commaSeparatedString];

  v18 = +[FMSystemInfo sharedInstance];
  LODWORD(v15) = [v18 isInternalBuild];

  if (v15)
  {
    v19 = [v16 description];
    [v3 fm_safelyMapKey:@"collectionErrorDetail" toObject:v19];
  }

  pscHelloMsg = [(FMDRequestIdentityV3Session *)self pscHelloMsg];
  [v3 fm_safelyMapKey:@"message" toObject:pscHelloMsg];

  cause = [(FMDRequestIdentityV3Session *)self cause];
  [v3 fm_safelyMapKey:@"cause" toObject:cause];

  return v3;
}

- (FMDServiceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end