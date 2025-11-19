@interface FMDRequestAckLock
- (BOOL)canReplace:(id)a3;
- (FMDRequestAckLock)initWithProvider:(id)a3 lockCommand:(id)a4 cmdStatusCode:(int64_t)a5 ackURL:(id)a6;
- (FMDServiceProvider)provider;
- (id)requestBody;
@end

@implementation FMDRequestAckLock

- (FMDRequestAckLock)initWithProvider:(id)a3 lockCommand:(id)a4 cmdStatusCode:(int64_t)a5 ackURL:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 account];
  v16.receiver = self;
  v16.super_class = FMDRequestAckLock;
  v14 = [(FMDRequest *)&v16 initWithAccount:v13];

  if (v14)
  {
    [(FMDRequestAckLock *)v14 setProvider:v10];
    [(FMDRequestAckLock *)v14 setLockCommand:v11];
    [(FMDRequestAckLock *)v14 setAckURL:v12];
    [(FMDRequestAckLock *)v14 setCmdStatusCode:a5];
  }

  return v14;
}

- (id)requestBody
{
  v18.receiver = self;
  v18.super_class = FMDRequestAckLock;
  v3 = [(FMDRequest *)&v18 requestBody];
  v4 = [(FMDRequestAckLock *)self provider];
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

  v10 = [NSNumber numberWithInteger:[(FMDRequestAckLock *)self cmdStatusCode]];
  [v3 setObject:v10 forKeyedSubscript:@"statusCode"];

  v11 = [(FMDRequestAckLock *)self cmdStatusCode];
  if (v11 == qword_100312AD8)
  {
    v12 = +[MCProfileConnection sharedConnection];
    v13 = [v12 localizedDescriptionOfCurrentPasscodeConstraints];
    [v3 setObject:v13 forKeyedSubscript:@"errorMsg"];

    v14 = +[FMDSystemConfig sharedInstance];
    v15 = [v14 currentPasscodeConstraintStr];
    [v3 setObject:v15 forKeyedSubscript:@"passcodeConstraint"];
  }

  v16 = [(FMDRequestAckLock *)self lockCommand];
  [v3 setObject:v16 forKeyedSubscript:@"cmdContext"];

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
      v6 = [(FMDRequestAckLock *)self lockCommand];
      v7 = [v6 objectForKeyedSubscript:@"id"];
      v8 = [v5 lockCommand];
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