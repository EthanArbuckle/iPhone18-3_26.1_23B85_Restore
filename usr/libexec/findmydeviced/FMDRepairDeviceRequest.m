@interface FMDRepairDeviceRequest
- (FMDRepairDeviceRequest)initWithDeviceIdentifier:(id)a3 ephemeralToken:(id)a4 dsid:(id)a5 callingClient:(id)a6 mode:(int64_t)a7;
- (id)repairContextString:(int64_t)a3;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMDRepairDeviceRequest

- (id)requestHeaders
{
  v4.receiver = self;
  v4.super_class = FMDRepairDeviceRequest;
  v2 = [(FMDRequest *)&v4 requestHeaders];

  return v2;
}

- (FMDRepairDeviceRequest)initWithDeviceIdentifier:(id)a3 ephemeralToken:(id)a4 dsid:(id)a5 callingClient:(id)a6 mode:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = FMDRepairDeviceRequest;
  v17 = [(FMDRequest *)&v20 initWithAccount:v13];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_accountForRepair, a3);
    objc_storeStrong(&v18->_ephemeralToken, a4);
    objc_storeStrong(&v18->_dsid, a5);
    objc_storeStrong(&v18->_callingClient, a6);
    v18->_mode = a7;
  }

  return v18;
}

- (id)requestUrl
{
  v3 = +[FMSystemInfo sharedInstance];
  v4 = [v3 deviceUDID];
  v5 = [(FMDRepairDeviceRequest *)self dsid];
  v6 = [NSString stringWithFormat:@"${scheme}://${hostname}/fmipservice/findme/%@/${udid}/repairDeviceV2", v5];

  v7 = objc_alloc_init(RequestTemplateURL);
  v8 = [(FMDRepairDeviceRequest *)self accountForRepair];
  v9 = [(RequestTemplateURL *)v7 urlFromTemplate:v6 account:v8 udid:v4];

  return v9;
}

- (id)requestBody
{
  v10.receiver = self;
  v10.super_class = FMDRepairDeviceRequest;
  v3 = [(FMDRequest *)&v10 requestBody];
  v4 = +[FMSystemInfo sharedInstance];
  v5 = [(FMDRepairDeviceRequest *)self ephemeralToken];
  [v3 setObject:v5 forKeyedSubscript:@"authToken"];

  v6 = [v4 deviceUDID];
  [v3 setObject:v6 forKeyedSubscript:@"device"];

  v7 = [(FMDRequest *)self authId];
  [v3 setObject:v7 forKeyedSubscript:@"requestingUserPrsId"];

  [v3 setObject:self->_callingClient forKeyedSubscript:@"originClient"];
  v8 = [(FMDRepairDeviceRequest *)self repairContextString:self->_mode];
  [v3 setObject:v8 forKeyedSubscript:@"reason"];

  return v3;
}

- (id)repairContextString:(int64_t)a3
{
  v3 = @"repair";
  if (a3 == 2)
  {
    v3 = @"tradeIn";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"unknown";
  }
}

@end