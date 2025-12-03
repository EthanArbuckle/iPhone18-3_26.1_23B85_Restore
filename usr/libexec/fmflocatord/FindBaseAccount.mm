@interface FindBaseAccount
- (BOOL)hasSameRelevantInfoAs:(id)as;
- (BOOL)isValid;
- (NSString)apsEnvironmentConstant;
- (void)copyInfoFromAccount:(id)account;
- (void)setApsEnvironment:(id)environment;
@end

@implementation FindBaseAccount

- (void)setApsEnvironment:(id)environment
{
  environmentCopy = environment;
  objc_storeStrong(&self->_apsEnvironment, environment);
  v6 = +[FMSystemInfo sharedInstance];
  isInternalBuild = [v6 isInternalBuild];

  if (isInternalBuild)
  {
    v8 = [FMPreferencesUtil stringForKey:@"ApsEnvOverride" inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
    if (v8)
    {
      v9 = sub_100002830();
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

- (NSString)apsEnvironmentConstant
{
  apsEnvironment = [(FindBaseAccount *)self apsEnvironment];
  v3 = [FMAPSHandler constantForEnvironmentString:apsEnvironment];

  return v3;
}

- (BOOL)isValid
{
  authId = [(FindBaseAccount *)self authId];
  if (authId)
  {
    authToken = [(FindBaseAccount *)self authToken];
    v5 = authToken != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasSameRelevantInfoAs:(id)as
{
  asCopy = as;
  v44.receiver = self;
  v44.super_class = FindBaseAccount;
  if (![(Account *)&v44 hasSameRelevantInfoAs:asCopy])
  {
    v11 = 0;
    goto LABEL_56;
  }

  v9 = asCopy;
  authId = [v9 authId];
  if (authId || ([(FindBaseAccount *)self authId], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    authId2 = [v9 authId];
    authId3 = [(FindBaseAccount *)self authId];
    v43 = authId2;
    if (([authId2 isEqualToString:authId3] & 1) == 0)
    {

      v11 = 0;
      goto LABEL_53;
    }

    v42 = 1;
  }

  else
  {
    v42 = 0;
  }

  authToken = [v9 authToken];
  if (!authToken)
  {
    authToken2 = [(FindBaseAccount *)self authToken];
    if (!authToken2)
    {
      authToken2 = 0;
      v41 = 0;
      goto LABEL_19;
    }
  }

  v13 = v3;
  authToken3 = [v9 authToken];
  authToken4 = [(FindBaseAccount *)self authToken];
  if ([authToken3 isEqualToString:authToken4])
  {
    v36 = authToken3;
    v41 = 1;
    v3 = v13;
    v6 = authToken4;
LABEL_19:
    serverHost = [v9 serverHost];
    if (serverHost || ([(FindBaseAccount *)self serverHost], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      authId2 = [v9 serverHost];
      serverHost2 = [(FindBaseAccount *)self serverHost];
      v38 = authId2;
      if (![authId2 isEqualToString:?])
      {
        v11 = 0;
        goto LABEL_44;
      }

      v35 = 1;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    serverProtocolScheme = [v9 serverProtocolScheme];
    if (serverProtocolScheme || ([(FindBaseAccount *)self serverProtocolScheme], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      serverProtocolScheme2 = [v9 serverProtocolScheme];
      serverProtocolScheme3 = [(FindBaseAccount *)self serverProtocolScheme];
      v34 = serverProtocolScheme2;
      v19 = serverProtocolScheme2;
      authId2 = serverProtocolScheme3;
      if (![v19 isEqualToString:serverProtocolScheme3])
      {
        v11 = 0;
LABEL_40:

LABEL_41:
        v24 = serverProtocolScheme;
        if (!serverProtocolScheme)
        {

          v24 = 0;
        }

        if (!v35)
        {
LABEL_45:
          if (!serverHost)
          {
          }

          if (v41)
          {
          }

          if (!authToken)
          {
          }

          if (!v42)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        }

LABEL_44:

        goto LABEL_45;
      }

      v31 = serverHost;
      v32 = v6;
      v30 = 1;
    }

    else
    {
      v31 = serverHost;
      v32 = v6;
      v28 = 0;
      v30 = 0;
    }

    apsEnvironment = [v9 apsEnvironment];
    if (apsEnvironment || ([(FindBaseAccount *)self apsEnvironment], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v29 = v3;
      apsEnvironment2 = [v9 apsEnvironment];
      apsEnvironment3 = [(FindBaseAccount *)self apsEnvironment];
      v11 = [apsEnvironment2 isEqualToString:apsEnvironment3];

      if (apsEnvironment)
      {

        if (!v30)
        {
          v3 = v29;
          serverHost = v31;
          v6 = v32;
          goto LABEL_41;
        }

        v3 = v29;
        serverHost = v31;
        v6 = v32;
        goto LABEL_40;
      }

      v3 = v29;
      v6 = v32;
      v23 = v27;
    }

    else
    {
      v23 = 0;
      v11 = 1;
      v6 = v32;
    }

    serverHost = v31;
    if ((v30 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (authToken)
  {
  }

  else
  {
  }

  v11 = 0;
  v3 = v13;
  if (v42)
  {
LABEL_52:
  }

LABEL_53:
  if (!authId)
  {
  }

LABEL_56:
  return v11;
}

- (void)copyInfoFromAccount:(id)account
{
  accountCopy = account;
  v12.receiver = self;
  v12.super_class = FindBaseAccount;
  [(Account *)&v12 copyInfoFromAccount:accountCopy];
  if ([accountCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = accountCopy;
    username = [v5 username];
    [(FindBaseAccount *)self setUsername:username];

    serverHost = [v5 serverHost];
    [(FindBaseAccount *)self setServerHost:serverHost];

    serverProtocolScheme = [v5 serverProtocolScheme];
    [(FindBaseAccount *)self setServerProtocolScheme:serverProtocolScheme];

    apsEnvironment = [v5 apsEnvironment];
    [(FindBaseAccount *)self setApsEnvironment:apsEnvironment];

    versionHistory = [v5 versionHistory];
    [(FindBaseAccount *)self setVersionHistory:versionHistory];

    accountAddTime = [v5 accountAddTime];

    [(FindBaseAccount *)self setAccountAddTime:accountAddTime];
  }
}

@end