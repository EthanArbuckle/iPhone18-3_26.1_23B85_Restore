@interface FMDRequestAckIdentity
- (BOOL)canReplace:(id)a3;
- (FMDRequestAckIdentity)initWithProvider:(id)a3 identityCommand:(id)a4 commandFailureReason:(unint64_t)a5 ackURL:(id)a6;
- (FMDServiceProvider)provider;
- (id)requestBody;
@end

@implementation FMDRequestAckIdentity

- (FMDRequestAckIdentity)initWithProvider:(id)a3 identityCommand:(id)a4 commandFailureReason:(unint64_t)a5 ackURL:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 account];
  v16.receiver = self;
  v16.super_class = FMDRequestAckIdentity;
  v14 = [(FMDRequest *)&v16 initWithAccount:v13];

  if (v14)
  {
    [(FMDRequestAckIdentity *)v14 setProvider:v10];
    [(FMDRequestAckIdentity *)v14 setIdentityCommand:v11];
    [(FMDRequestAckIdentity *)v14 setAckURL:v12];
    [(FMDRequestAckIdentity *)v14 setFailureReason:a5];
  }

  return v14;
}

- (id)requestBody
{
  v15.receiver = self;
  v15.super_class = FMDRequestAckIdentity;
  v3 = [(FMDRequest *)&v15 requestBody];
  v4 = [(FMDRequestAckIdentity *)self provider];
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

  [v3 setObject:&off_1002E7B70 forKeyedSubscript:@"statusCode"];
  v10 = [(FMDRequestAckIdentity *)self identityCommand];
  [v3 setObject:v10 forKeyedSubscript:@"cmdContext"];

  if ([(FMDRequestAckIdentity *)self failureReason])
  {
    [v3 setObject:&off_1002E7B88 forKeyedSubscript:@"statusCode"];
    v11 = [NSNumber numberWithUnsignedInteger:[(FMDRequestAckIdentity *)self failureReason]];
    [v3 setObject:v11 forKeyedSubscript:@"identityFailureReason"];

    v12 = [(FMDRequestAckIdentity *)self failureDescription];

    if (v12)
    {
      v13 = [(FMDRequestAckIdentity *)self failureDescription];
      [v3 setObject:v13 forKeyedSubscript:@"failureDescription"];
    }
  }

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
      v6 = [(FMDRequestAckIdentity *)self identityCommand];
      v7 = [v6 objectForKeyedSubscript:@"id"];
      v8 = [v5 identityCommand];
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

- (FMDServiceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end