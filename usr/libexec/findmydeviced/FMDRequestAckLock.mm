@interface FMDRequestAckLock
- (BOOL)canReplace:(id)replace;
- (FMDRequestAckLock)initWithProvider:(id)provider lockCommand:(id)command cmdStatusCode:(int64_t)code ackURL:(id)l;
- (FMDServiceProvider)provider;
- (id)requestBody;
@end

@implementation FMDRequestAckLock

- (FMDRequestAckLock)initWithProvider:(id)provider lockCommand:(id)command cmdStatusCode:(int64_t)code ackURL:(id)l
{
  providerCopy = provider;
  commandCopy = command;
  lCopy = l;
  account = [providerCopy account];
  v16.receiver = self;
  v16.super_class = FMDRequestAckLock;
  v14 = [(FMDRequest *)&v16 initWithAccount:account];

  if (v14)
  {
    [(FMDRequestAckLock *)v14 setProvider:providerCopy];
    [(FMDRequestAckLock *)v14 setLockCommand:commandCopy];
    [(FMDRequestAckLock *)v14 setAckURL:lCopy];
    [(FMDRequestAckLock *)v14 setCmdStatusCode:code];
  }

  return v14;
}

- (id)requestBody
{
  v18.receiver = self;
  v18.super_class = FMDRequestAckLock;
  requestBody = [(FMDRequest *)&v18 requestBody];
  provider = [(FMDRequestAckLock *)self provider];
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

  v10 = [NSNumber numberWithInteger:[(FMDRequestAckLock *)self cmdStatusCode]];
  [requestBody setObject:v10 forKeyedSubscript:@"statusCode"];

  cmdStatusCode = [(FMDRequestAckLock *)self cmdStatusCode];
  if (cmdStatusCode == qword_100312AD8)
  {
    v12 = +[MCProfileConnection sharedConnection];
    localizedDescriptionOfCurrentPasscodeConstraints = [v12 localizedDescriptionOfCurrentPasscodeConstraints];
    [requestBody setObject:localizedDescriptionOfCurrentPasscodeConstraints forKeyedSubscript:@"errorMsg"];

    v14 = +[FMDSystemConfig sharedInstance];
    currentPasscodeConstraintStr = [v14 currentPasscodeConstraintStr];
    [requestBody setObject:currentPasscodeConstraintStr forKeyedSubscript:@"passcodeConstraint"];
  }

  lockCommand = [(FMDRequestAckLock *)self lockCommand];
  [requestBody setObject:lockCommand forKeyedSubscript:@"cmdContext"];

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
      lockCommand = [(FMDRequestAckLock *)self lockCommand];
      v7 = [lockCommand objectForKeyedSubscript:@"id"];
      lockCommand2 = [v5 lockCommand];
      v9 = [lockCommand2 objectForKeyedSubscript:@"id"];
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