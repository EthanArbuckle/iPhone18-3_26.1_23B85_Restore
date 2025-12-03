@interface FMDRepairDeviceRequest
- (FMDRepairDeviceRequest)initWithDeviceIdentifier:(id)identifier ephemeralToken:(id)token dsid:(id)dsid callingClient:(id)client mode:(int64_t)mode;
- (id)repairContextString:(int64_t)string;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMDRepairDeviceRequest

- (id)requestHeaders
{
  v4.receiver = self;
  v4.super_class = FMDRepairDeviceRequest;
  requestHeaders = [(FMDRequest *)&v4 requestHeaders];

  return requestHeaders;
}

- (FMDRepairDeviceRequest)initWithDeviceIdentifier:(id)identifier ephemeralToken:(id)token dsid:(id)dsid callingClient:(id)client mode:(int64_t)mode
{
  identifierCopy = identifier;
  tokenCopy = token;
  dsidCopy = dsid;
  clientCopy = client;
  v20.receiver = self;
  v20.super_class = FMDRepairDeviceRequest;
  v17 = [(FMDRequest *)&v20 initWithAccount:identifierCopy];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_accountForRepair, identifier);
    objc_storeStrong(&v18->_ephemeralToken, token);
    objc_storeStrong(&v18->_dsid, dsid);
    objc_storeStrong(&v18->_callingClient, client);
    v18->_mode = mode;
  }

  return v18;
}

- (id)requestUrl
{
  v3 = +[FMSystemInfo sharedInstance];
  deviceUDID = [v3 deviceUDID];
  dsid = [(FMDRepairDeviceRequest *)self dsid];
  v6 = [NSString stringWithFormat:@"${scheme}://${hostname}/fmipservice/findme/%@/${udid}/repairDeviceV2", dsid];

  v7 = objc_alloc_init(RequestTemplateURL);
  accountForRepair = [(FMDRepairDeviceRequest *)self accountForRepair];
  v9 = [(RequestTemplateURL *)v7 urlFromTemplate:v6 account:accountForRepair udid:deviceUDID];

  return v9;
}

- (id)requestBody
{
  v10.receiver = self;
  v10.super_class = FMDRepairDeviceRequest;
  requestBody = [(FMDRequest *)&v10 requestBody];
  v4 = +[FMSystemInfo sharedInstance];
  ephemeralToken = [(FMDRepairDeviceRequest *)self ephemeralToken];
  [requestBody setObject:ephemeralToken forKeyedSubscript:@"authToken"];

  deviceUDID = [v4 deviceUDID];
  [requestBody setObject:deviceUDID forKeyedSubscript:@"device"];

  authId = [(FMDRequest *)self authId];
  [requestBody setObject:authId forKeyedSubscript:@"requestingUserPrsId"];

  [requestBody setObject:self->_callingClient forKeyedSubscript:@"originClient"];
  v8 = [(FMDRepairDeviceRequest *)self repairContextString:self->_mode];
  [requestBody setObject:v8 forKeyedSubscript:@"reason"];

  return requestBody;
}

- (id)repairContextString:(int64_t)string
{
  v3 = @"repair";
  if (string == 2)
  {
    v3 = @"tradeIn";
  }

  if (string)
  {
    return v3;
  }

  else
  {
    return @"unknown";
  }
}

@end