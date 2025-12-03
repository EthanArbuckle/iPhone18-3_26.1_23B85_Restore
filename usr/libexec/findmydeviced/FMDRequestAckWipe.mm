@interface FMDRequestAckWipe
- (BOOL)canReplace:(id)replace;
- (FMDRequestAckWipe)initWithProvider:(id)provider wipeCommand:(id)command cmdStatusCode:(int64_t)code ackURL:(id)l;
- (FMDServiceProvider)provider;
- (id)requestBody;
@end

@implementation FMDRequestAckWipe

- (FMDRequestAckWipe)initWithProvider:(id)provider wipeCommand:(id)command cmdStatusCode:(int64_t)code ackURL:(id)l
{
  providerCopy = provider;
  commandCopy = command;
  lCopy = l;
  account = [providerCopy account];
  v16.receiver = self;
  v16.super_class = FMDRequestAckWipe;
  v14 = [(FMDRequest *)&v16 initWithAccount:account];

  if (v14)
  {
    [(FMDRequestAckWipe *)v14 setProvider:providerCopy];
    [(FMDRequestAckWipe *)v14 setWipeCommand:commandCopy];
    [(FMDRequestAckWipe *)v14 setAckURL:lCopy];
    [(FMDRequestAckWipe *)v14 setCmdStatusCode:code];
  }

  return v14;
}

- (id)requestBody
{
  v13.receiver = self;
  v13.super_class = FMDRequestAckWipe;
  requestBody = [(FMDRequest *)&v13 requestBody];
  provider = [(FMDRequestAckWipe *)self provider];
  if (provider)
  {
    v5 = objc_alloc_init(FMDActingRequestDecorator);
    standardDeviceContext = [(FMDActingRequestDecorator *)v5 standardDeviceContext];

    [requestBody fm_safelyMapKey:@"deviceContext" toObject:standardDeviceContext];
    v7 = +[ServerDeviceInfo sharedInstance];
    account = [provider account];
    v9 = [v7 deviceInfoForAccount:account];
    [requestBody fm_safelyMapKey:@"deviceInfo" toObject:v9];
  }

  v10 = [NSNumber numberWithInteger:[(FMDRequestAckWipe *)self cmdStatusCode]];
  [requestBody setObject:v10 forKeyedSubscript:@"statusCode"];

  wipeCommand = [(FMDRequestAckWipe *)self wipeCommand];
  [requestBody setObject:wipeCommand forKeyedSubscript:@"cmdContext"];

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
      wipeCommand = [(FMDRequestAckWipe *)self wipeCommand];
      v7 = [wipeCommand objectForKeyedSubscript:@"id"];
      wipeCommand2 = [v5 wipeCommand];
      v9 = [wipeCommand2 objectForKeyedSubscript:@"id"];
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

- (FMDServiceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end