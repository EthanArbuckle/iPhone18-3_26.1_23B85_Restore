@interface MCDNSProxyPayloadHandler
+ (id)internalErrorWithUnderlyingError:(id)a3;
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (MCDNSProxyPayloadHandler)initWithPayload:(id)a3 profileHandler:(id)a4;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCDNSProxyPayloadHandler

- (MCDNSProxyPayloadHandler)initWithPayload:(id)a3 profileHandler:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = MCDNSProxyPayloadHandler;
  v7 = [(MCNewPayloadHandler *)&v11 initWithPayload:a3 profileHandler:v6];
  if (v7)
  {
    v8 = [v6 profile];
    profile = v7->_profile;
    v7->_profile = v8;
  }

  return v7;
}

+ (id)internalErrorWithUnderlyingError:(id)a3
{
  v3 = MCDNSProxyErrorDomain;
  v4 = a3;
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:51000 descriptionArray:v5 underlyingError:v4 errorType:MCErrorTypeFatal, 0];

  return v6;
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v9 = a4;
  v10 = [(MCNewPayloadHandler *)self payload];
  v11 = [v10 type];
  v12 = [v10 dnsProxyUUID];
  if (v12)
  {

    goto LABEL_7;
  }

  v13 = +[MDMConfiguration sharedConfiguration];
  v14 = [v13 isUserEnrollment];

  if (!v14)
  {
LABEL_7:
    v18 = MCNEProfileIngestionHandlerClassForPayload();
    if (!v18)
    {
      sub_1000C1F94(a2, self);
    }

    if (([v18 lockConfigurations] & 1) == 0)
    {
      if (a6)
      {
        [objc_opt_class() internalError];
        *a6 = v17 = 0;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_37;
    }

    v41 = v9;
    [v18 loadConfigurationsForceReloadFromDisk];
    v19 = [v10 configurationDictionary];
    v20 = [MCVPNPayloadBase NEVPNPayloadBaseDelegateWithConfigurationDict:v19];

    if (!v20)
    {
      sub_1000C2010(a2, self);
    }

    [v18 createConfigurationFromPayload:v20 payloadType:v11];
    v21 = [v18 ingestedConfiguration];
    if (v21)
    {
      v22 = [v10 UUID];
      v23 = [v10 organization];
      [v21 setPayloadInfoCommon:v22 payloadOrganization:v23];

      v24 = [v10 dnsProxyUUID];
      if (!v24 || (v25 = v24, [v10 dnsProxyUUID], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v21, "setPerAppUUID:andSafariDomains:", v26, 0), v26, v25, (v27 & 1) != 0))
      {
        v28 = objc_alloc_init(NSMutableDictionary);
        v29 = [(MCProfile *)self->_profile UUID];

        if (v29)
        {
          v30 = [(MCProfile *)self->_profile UUID];
          [v28 setObject:v30 forKeyedSubscript:kMCPayloadUUIDKey];
        }

        v31 = [(MCProfile *)self->_profile identifier];

        if (v31)
        {
          v32 = [(MCProfile *)self->_profile identifier];
          [v28 setObject:v32 forKeyedSubscript:kMCPayloadIdentifierKey];
        }

        if (v41)
        {
          [v28 addEntriesFromDictionary:?];
        }

        [v21 setProfileInfo:v28];
        [v18 updateDefaultAfterAddingConfiguration];
        v33 = [v21 getConfigurationIdentifier];
        [v10 setPersistentResourceID:v33];

        v42 = 0;
        v17 = [v18 saveIngestedConfiguration:&v42];
        v34 = v42;
        if (a6 && (v17 & 1) == 0)
        {
          *a6 = [objc_opt_class() internalErrorWithUnderlyingError:v34];
        }

        [v18 unlockConfigurations];

        goto LABEL_36;
      }

      v35 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Could not configure DNS proxy UUID", buf, 2u);
      }

      if (a6)
      {
        v36 = MCDNSProxyErrorDomain;
        v37 = [(MCNewPayloadHandler *)self payload];
        v38 = [v37 displayName];
        v39 = MCErrorArray();
        *a6 = [NSError MCErrorWithDomain:v36 code:51001 descriptionArray:v39 errorType:MCErrorTypeFatal, v38, 0];
      }
    }

    else
    {
      if (a6)
      {
        *a6 = [objc_opt_class() internalError];
      }

      [v18 unlockConfigurations];
    }

    v17 = 0;
LABEL_36:
    v9 = v41;

LABEL_37:
    goto LABEL_38;
  }

  if (a6)
  {
    v15 = MCDNSProxyErrorDomain;
    v16 = MCErrorArray();
    *a6 = [NSError MCErrorWithDomain:v15 code:51002 descriptionArray:v16 errorType:MCErrorTypeFatal, 0];
  }

  v17 = 0;
LABEL_38:

  return v17;
}

- (void)setAside
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 type];
  v5 = MCNEProfileIngestionHandlerClassForPayload();

  if ([v5 lockConfigurations])
  {
    [v5 loadConfigurationsForceReloadFromDisk];
    v6 = [(MCNewPayloadHandler *)self payload];
    v7 = [v6 persistentResourceID];
    v8 = [v5 setAsideConfigurationName:v7 unsetAside:0];

    [v5 unlockConfigurations];
  }

  else
  {
    v9 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not get NetworkExtension store lock.", v10, 2u);
    }
  }
}

- (void)unsetAside
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 type];
  v5 = MCNEProfileIngestionHandlerClassForPayload();

  if ([v5 lockConfigurations])
  {
    [v5 loadConfigurationsForceReloadFromDisk];
    v6 = [(MCNewPayloadHandler *)self payload];
    v7 = [v6 persistentResourceID];
    v8 = [v5 setAsideConfigurationName:v7 unsetAside:0];

    [v5 unlockConfigurations];
  }

  else
  {
    v9 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not get NetworkExtension store lock.", v10, 2u);
    }
  }
}

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 persistentResourceID];

  v5 = [(MCNewPayloadHandler *)self payload];
  v6 = [v5 type];
  v7 = MCNEProfileIngestionHandlerClassForPayload();

  if ([v7 lockConfigurations])
  {
    [v7 loadConfigurationsForceReloadFromDisk];
    if (v4)
    {
      [v7 removeConfigurationWithIdentifier:v4];
    }

    else
    {
      v9 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "NetworkUsageRules remove failed: empty configuration id", buf, 2u);
      }
    }

    [v7 updateDefaultAfterDeletingConfiguration];
    [v7 unlockConfigurations];
  }

  else
  {
    v8 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not get NetworkExtension store lock. Skipping removal.", v10, 2u);
    }
  }
}

@end