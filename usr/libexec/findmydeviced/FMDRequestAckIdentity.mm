@interface FMDRequestAckIdentity
- (BOOL)canReplace:(id)replace;
- (FMDRequestAckIdentity)initWithProvider:(id)provider identityCommand:(id)command commandFailureReason:(unint64_t)reason ackURL:(id)l;
- (FMDServiceProvider)provider;
- (id)requestBody;
@end

@implementation FMDRequestAckIdentity

- (FMDRequestAckIdentity)initWithProvider:(id)provider identityCommand:(id)command commandFailureReason:(unint64_t)reason ackURL:(id)l
{
  providerCopy = provider;
  commandCopy = command;
  lCopy = l;
  account = [providerCopy account];
  v16.receiver = self;
  v16.super_class = FMDRequestAckIdentity;
  v14 = [(FMDRequest *)&v16 initWithAccount:account];

  if (v14)
  {
    [(FMDRequestAckIdentity *)v14 setProvider:providerCopy];
    [(FMDRequestAckIdentity *)v14 setIdentityCommand:commandCopy];
    [(FMDRequestAckIdentity *)v14 setAckURL:lCopy];
    [(FMDRequestAckIdentity *)v14 setFailureReason:reason];
  }

  return v14;
}

- (id)requestBody
{
  v15.receiver = self;
  v15.super_class = FMDRequestAckIdentity;
  requestBody = [(FMDRequest *)&v15 requestBody];
  provider = [(FMDRequestAckIdentity *)self provider];
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

  [requestBody setObject:&off_1002E7B70 forKeyedSubscript:@"statusCode"];
  identityCommand = [(FMDRequestAckIdentity *)self identityCommand];
  [requestBody setObject:identityCommand forKeyedSubscript:@"cmdContext"];

  if ([(FMDRequestAckIdentity *)self failureReason])
  {
    [requestBody setObject:&off_1002E7B88 forKeyedSubscript:@"statusCode"];
    v11 = [NSNumber numberWithUnsignedInteger:[(FMDRequestAckIdentity *)self failureReason]];
    [requestBody setObject:v11 forKeyedSubscript:@"identityFailureReason"];

    failureDescription = [(FMDRequestAckIdentity *)self failureDescription];

    if (failureDescription)
    {
      failureDescription2 = [(FMDRequestAckIdentity *)self failureDescription];
      [requestBody setObject:failureDescription2 forKeyedSubscript:@"failureDescription"];
    }
  }

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
      identityCommand = [(FMDRequestAckIdentity *)self identityCommand];
      v7 = [identityCommand objectForKeyedSubscript:@"id"];
      identityCommand2 = [v5 identityCommand];
      v9 = [identityCommand2 objectForKeyedSubscript:@"id"];
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