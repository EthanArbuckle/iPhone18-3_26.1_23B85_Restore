@interface FMDRequestAckDataUpdate
- (BOOL)canReplace:(id)replace;
- (FMDRequestAckDataUpdate)initWithAccount:(id)account dataUpdateCommand:(id)command ackURL:(id)l;
- (id)requestBody;
@end

@implementation FMDRequestAckDataUpdate

- (FMDRequestAckDataUpdate)initWithAccount:(id)account dataUpdateCommand:(id)command ackURL:(id)l
{
  accountCopy = account;
  commandCopy = command;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = FMDRequestAckDataUpdate;
  v11 = [(FMDRequest *)&v14 initWithAccount:accountCopy];
  v12 = v11;
  if (v11)
  {
    [(FMDRequestAckDataUpdate *)v11 setAccount:accountCopy];
    [(FMDRequestAckDataUpdate *)v12 setDataUpdateCommand:commandCopy];
    [(FMDRequestAckDataUpdate *)v12 setAckURL:lCopy];
  }

  return v12;
}

- (id)requestBody
{
  v12.receiver = self;
  v12.super_class = FMDRequestAckDataUpdate;
  requestBody = [(FMDRequest *)&v12 requestBody];
  v4 = +[FMDServiceProvider activeServiceProvider];
  if (v4)
  {
    v5 = objc_alloc_init(FMDActingRequestDecorator);
    standardDeviceContext = [(FMDActingRequestDecorator *)v5 standardDeviceContext];

    [requestBody fm_safelyMapKey:@"deviceContext" toObject:standardDeviceContext];
    v7 = +[ServerDeviceInfo sharedInstance];
    account = [v4 account];
    v9 = [v7 deviceInfoForAccount:account];
    [requestBody fm_safelyMapKey:@"deviceInfo" toObject:v9];
  }

  [requestBody setObject:&off_1002E7CA8 forKeyedSubscript:@"statusCode"];
  dataUpdateCommand = [(FMDRequestAckDataUpdate *)self dataUpdateCommand];
  [requestBody setObject:dataUpdateCommand forKeyedSubscript:@"cmdContext"];

  return requestBody;
}

- (BOOL)canReplace:(id)replace
{
  replaceCopy = replace;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = replaceCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dataUpdateCommand = [(FMDRequestAckDataUpdate *)self dataUpdateCommand];
      v7 = [dataUpdateCommand objectForKeyedSubscript:@"id"];
      dataUpdateCommand2 = [v5 dataUpdateCommand];
      v9 = [dataUpdateCommand2 objectForKeyedSubscript:@"id"];
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