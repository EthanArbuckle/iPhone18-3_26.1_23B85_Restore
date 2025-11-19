@interface FindBaseAccount
- (BOOL)hasSameRelevantInfoAs:(id)a3;
- (BOOL)isValid;
- (NSString)apsEnvironmentConstant;
- (void)copyInfoFromAccount:(id)a3;
- (void)setApsEnvironment:(id)a3;
@end

@implementation FindBaseAccount

- (void)setApsEnvironment:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_apsEnvironment, a3);
  v6 = +[FMSystemInfo sharedInstance];
  v7 = [v6 isInternalBuild];

  if (v7)
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
  v2 = [(FindBaseAccount *)self apsEnvironment];
  v3 = [FMAPSHandler constantForEnvironmentString:v2];

  return v3;
}

- (BOOL)isValid
{
  v3 = [(FindBaseAccount *)self authId];
  if (v3)
  {
    v4 = [(FindBaseAccount *)self authToken];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasSameRelevantInfoAs:(id)a3
{
  v8 = a3;
  v44.receiver = self;
  v44.super_class = FindBaseAccount;
  if (![(Account *)&v44 hasSameRelevantInfoAs:v8])
  {
    v11 = 0;
    goto LABEL_56;
  }

  v9 = v8;
  v10 = [v9 authId];
  if (v10 || ([(FindBaseAccount *)self authId], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [v9 authId];
    v5 = [(FindBaseAccount *)self authId];
    v43 = v4;
    if (([v4 isEqualToString:v5] & 1) == 0)
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

  v12 = [v9 authToken];
  if (!v12)
  {
    v40 = [(FindBaseAccount *)self authToken];
    if (!v40)
    {
      v40 = 0;
      v41 = 0;
      goto LABEL_19;
    }
  }

  v13 = v3;
  v14 = [v9 authToken];
  v15 = [(FindBaseAccount *)self authToken];
  if ([v14 isEqualToString:v15])
  {
    v36 = v14;
    v41 = 1;
    v3 = v13;
    v6 = v15;
LABEL_19:
    v16 = [v9 serverHost];
    if (v16 || ([(FindBaseAccount *)self serverHost], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v4 = [v9 serverHost];
      v37 = [(FindBaseAccount *)self serverHost];
      v38 = v4;
      if (![v4 isEqualToString:?])
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

    v39 = [v9 serverProtocolScheme];
    if (v39 || ([(FindBaseAccount *)self serverProtocolScheme], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v17 = [v9 serverProtocolScheme];
      v18 = [(FindBaseAccount *)self serverProtocolScheme];
      v34 = v17;
      v19 = v17;
      v4 = v18;
      if (![v19 isEqualToString:v18])
      {
        v11 = 0;
LABEL_40:

LABEL_41:
        v24 = v39;
        if (!v39)
        {

          v24 = 0;
        }

        if (!v35)
        {
LABEL_45:
          if (!v16)
          {
          }

          if (v41)
          {
          }

          if (!v12)
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

      v31 = v16;
      v32 = v6;
      v30 = 1;
    }

    else
    {
      v31 = v16;
      v32 = v6;
      v28 = 0;
      v30 = 0;
    }

    v20 = [v9 apsEnvironment];
    if (v20 || ([(FindBaseAccount *)self apsEnvironment], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v29 = v3;
      v21 = [v9 apsEnvironment];
      v22 = [(FindBaseAccount *)self apsEnvironment];
      v11 = [v21 isEqualToString:v22];

      if (v20)
      {

        if (!v30)
        {
          v3 = v29;
          v16 = v31;
          v6 = v32;
          goto LABEL_41;
        }

        v3 = v29;
        v16 = v31;
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

    v16 = v31;
    if ((v30 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v12)
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
  if (!v10)
  {
  }

LABEL_56:
  return v11;
}

- (void)copyInfoFromAccount:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FindBaseAccount;
  [(Account *)&v12 copyInfoFromAccount:v4];
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [v5 username];
    [(FindBaseAccount *)self setUsername:v6];

    v7 = [v5 serverHost];
    [(FindBaseAccount *)self setServerHost:v7];

    v8 = [v5 serverProtocolScheme];
    [(FindBaseAccount *)self setServerProtocolScheme:v8];

    v9 = [v5 apsEnvironment];
    [(FindBaseAccount *)self setApsEnvironment:v9];

    v10 = [v5 versionHistory];
    [(FindBaseAccount *)self setVersionHistory:v10];

    v11 = [v5 accountAddTime];

    [(FindBaseAccount *)self setAccountAddTime:v11];
  }
}

@end