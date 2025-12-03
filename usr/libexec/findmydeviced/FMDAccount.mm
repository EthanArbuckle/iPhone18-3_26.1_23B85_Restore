@interface FMDAccount
- (NSString)apsEnvironmentConstant;
- (void)copyInfoFromAccount:(id)account;
- (void)setApsEnvironment:(id)environment;
@end

@implementation FMDAccount

- (NSString)apsEnvironmentConstant
{
  apsEnvironment = [(FMDAccount *)self apsEnvironment];
  v3 = [FMAPSHandler constantForEnvironmentString:apsEnvironment];

  return v3;
}

- (void)setApsEnvironment:(id)environment
{
  environmentCopy = environment;
  objc_storeStrong(&self->_apsEnvironment, environment);
  v6 = +[FMSystemInfo sharedInstance];
  isInternalBuild = [v6 isInternalBuild];

  if (isInternalBuild)
  {
    v8 = [FMPreferencesUtil stringForKey:@"ApsEnvOverride" inDomain:kFMDNotBackedUpPrefDomain];
    if (v8)
    {
      v9 = sub_100002880();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Overriding aps environment to %@", &v10, 0xCu);
      }

      objc_storeStrong(&self->_apsEnvironment, v8);
    }
  }
}

- (void)copyInfoFromAccount:(id)account
{
  accountCopy = account;
  if ([accountCopy isMemberOfClass:objc_opt_class()])
  {
    username = [accountCopy username];
    [(FMDAccount *)self setUsername:username];

    serverHost = [accountCopy serverHost];
    [(FMDAccount *)self setServerHost:serverHost];

    serverProtocolScheme = [accountCopy serverProtocolScheme];
    [(FMDAccount *)self setServerProtocolScheme:serverProtocolScheme];

    apsEnvironment = [accountCopy apsEnvironment];
    [(FMDAccount *)self setApsEnvironment:apsEnvironment];

    versionHistory = [accountCopy versionHistory];
    [(FMDAccount *)self setVersionHistory:versionHistory];

    accountAddTime = [accountCopy accountAddTime];
    [(FMDAccount *)self setAccountAddTime:accountAddTime];
  }
}

@end