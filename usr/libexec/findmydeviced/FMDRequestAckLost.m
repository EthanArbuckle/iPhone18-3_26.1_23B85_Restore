@interface FMDRequestAckLost
- (BOOL)canReplace:(id)a3;
- (FMDServiceProvider)provider;
- (id)requestBody;
@end

@implementation FMDRequestAckLost

- (id)requestBody
{
  v19.receiver = self;
  v19.super_class = FMDRequestAckLost;
  v3 = [(FMDRequest *)&v19 requestBody];
  v4 = [(FMDRequestAckLost *)self provider];
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

  v10 = [NSNumber numberWithInteger:[(FMDRequestAckLost *)self cmdStatusCode]];
  [v3 setObject:v10 forKeyedSubscript:@"statusCode"];

  if ([(FMDRequestAckLost *)self locationServicesStateChanged])
  {
    v11 = [NSNumber numberWithBool:[(FMDRequestAckLost *)self locationServicesStateChanged]];
    [v3 setObject:v11 forKeyedSubscript:@"locationsServicesChanged"];
  }

  v12 = [(FMDRequestAckLost *)self cmdStatusCode];
  if (v12 == qword_100312AD8)
  {
    v13 = +[MCProfileConnection sharedConnection];
    v14 = [v13 localizedDescriptionOfCurrentPasscodeConstraints];
    [v3 setObject:v14 forKeyedSubscript:@"errorMsg"];

    v15 = +[FMDSystemConfig sharedInstance];
    v16 = [v15 currentPasscodeConstraintStr];
    [v3 setObject:v16 forKeyedSubscript:@"passcodeConstraint"];
  }

  v17 = [(FMDRequestAckLost *)self lostCommand];
  [v3 setObject:v17 forKeyedSubscript:@"cmdContext"];

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
      v6 = [(FMDRequestAckLost *)self lostCommand];
      v7 = [v6 objectForKeyedSubscript:@"id"];
      v8 = [v5 lostCommand];
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