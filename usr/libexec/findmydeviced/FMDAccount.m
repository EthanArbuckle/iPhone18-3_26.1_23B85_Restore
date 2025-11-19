@interface FMDAccount
- (NSString)apsEnvironmentConstant;
- (void)copyInfoFromAccount:(id)a3;
- (void)setApsEnvironment:(id)a3;
@end

@implementation FMDAccount

- (NSString)apsEnvironmentConstant
{
  v2 = [(FMDAccount *)self apsEnvironment];
  v3 = [FMAPSHandler constantForEnvironmentString:v2];

  return v3;
}

- (void)setApsEnvironment:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_apsEnvironment, a3);
  v6 = +[FMSystemInfo sharedInstance];
  v7 = [v6 isInternalBuild];

  if (v7)
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

- (void)copyInfoFromAccount:(id)a3
{
  v10 = a3;
  if ([v10 isMemberOfClass:objc_opt_class()])
  {
    v4 = [v10 username];
    [(FMDAccount *)self setUsername:v4];

    v5 = [v10 serverHost];
    [(FMDAccount *)self setServerHost:v5];

    v6 = [v10 serverProtocolScheme];
    [(FMDAccount *)self setServerProtocolScheme:v6];

    v7 = [v10 apsEnvironment];
    [(FMDAccount *)self setApsEnvironment:v7];

    v8 = [v10 versionHistory];
    [(FMDAccount *)self setVersionHistory:v8];

    v9 = [v10 accountAddTime];
    [(FMDAccount *)self setAccountAddTime:v9];
  }
}

@end