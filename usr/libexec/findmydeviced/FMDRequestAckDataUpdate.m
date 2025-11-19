@interface FMDRequestAckDataUpdate
- (BOOL)canReplace:(id)a3;
- (FMDRequestAckDataUpdate)initWithAccount:(id)a3 dataUpdateCommand:(id)a4 ackURL:(id)a5;
- (id)requestBody;
@end

@implementation FMDRequestAckDataUpdate

- (FMDRequestAckDataUpdate)initWithAccount:(id)a3 dataUpdateCommand:(id)a4 ackURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = FMDRequestAckDataUpdate;
  v11 = [(FMDRequest *)&v14 initWithAccount:v8];
  v12 = v11;
  if (v11)
  {
    [(FMDRequestAckDataUpdate *)v11 setAccount:v8];
    [(FMDRequestAckDataUpdate *)v12 setDataUpdateCommand:v9];
    [(FMDRequestAckDataUpdate *)v12 setAckURL:v10];
  }

  return v12;
}

- (id)requestBody
{
  v12.receiver = self;
  v12.super_class = FMDRequestAckDataUpdate;
  v3 = [(FMDRequest *)&v12 requestBody];
  v4 = +[FMDServiceProvider activeServiceProvider];
  if (v4)
  {
    v5 = objc_alloc_init(FMDActingRequestDecorator);
    v6 = [(FMDActingRequestDecorator *)v5 standardDeviceContext];

    [v3 fm_safelyMapKey:@"deviceContext" toObject:v6];
    v7 = +[ServerDeviceInfo sharedInstance];
    v8 = [v4 account];
    v9 = [v7 deviceInfoForAccount:v8];
    [v3 fm_safelyMapKey:@"deviceInfo" toObject:v9];
  }

  [v3 setObject:&off_1002E7CA8 forKeyedSubscript:@"statusCode"];
  v10 = [(FMDRequestAckDataUpdate *)self dataUpdateCommand];
  [v3 setObject:v10 forKeyedSubscript:@"cmdContext"];

  return v3;
}

- (BOOL)canReplace:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(FMDRequestAckDataUpdate *)self dataUpdateCommand];
      v7 = [v6 objectForKeyedSubscript:@"id"];
      v8 = [v5 dataUpdateCommand];
      v9 = [v8 objectForKeyedSubscript:@"id"];
      v10 = [v7 isEqualToString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end