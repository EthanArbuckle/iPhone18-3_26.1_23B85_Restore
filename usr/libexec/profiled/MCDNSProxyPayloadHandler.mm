@interface MCDNSProxyPayloadHandler
+ (id)internalErrorWithUnderlyingError:(id)error;
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (MCDNSProxyPayloadHandler)initWithPayload:(id)payload profileHandler:(id)handler;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCDNSProxyPayloadHandler

- (MCDNSProxyPayloadHandler)initWithPayload:(id)payload profileHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = MCDNSProxyPayloadHandler;
  v7 = [(MCNewPayloadHandler *)&v11 initWithPayload:payload profileHandler:handlerCopy];
  if (v7)
  {
    profile = [handlerCopy profile];
    profile = v7->_profile;
    v7->_profile = profile;
  }

  return v7;
}

+ (id)internalErrorWithUnderlyingError:(id)error
{
  v3 = MCDNSProxyErrorDomain;
  errorCopy = error;
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:51000 descriptionArray:v5 underlyingError:errorCopy errorType:MCErrorTypeFatal, 0];

  return v6;
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  optionsCopy = options;
  payload = [(MCNewPayloadHandler *)self payload];
  type = [payload type];
  dnsProxyUUID = [payload dnsProxyUUID];
  if (dnsProxyUUID)
  {

    goto LABEL_7;
  }

  v13 = +[MDMConfiguration sharedConfiguration];
  isUserEnrollment = [v13 isUserEnrollment];

  if (!isUserEnrollment)
  {
LABEL_7:
    v18 = MCNEProfileIngestionHandlerClassForPayload();
    if (!v18)
    {
      sub_1000C1F94(a2, self);
    }

    if (([v18 lockConfigurations] & 1) == 0)
    {
      if (error)
      {
        [objc_opt_class() internalError];
        *error = v17 = 0;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_37;
    }

    v41 = optionsCopy;
    [v18 loadConfigurationsForceReloadFromDisk];
    configurationDictionary = [payload configurationDictionary];
    v20 = [MCVPNPayloadBase NEVPNPayloadBaseDelegateWithConfigurationDict:configurationDictionary];

    if (!v20)
    {
      sub_1000C2010(a2, self);
    }

    [v18 createConfigurationFromPayload:v20 payloadType:type];
    ingestedConfiguration = [v18 ingestedConfiguration];
    if (ingestedConfiguration)
    {
      uUID = [payload UUID];
      organization = [payload organization];
      [ingestedConfiguration setPayloadInfoCommon:uUID payloadOrganization:organization];

      dnsProxyUUID2 = [payload dnsProxyUUID];
      if (!dnsProxyUUID2 || (v25 = dnsProxyUUID2, [payload dnsProxyUUID], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(ingestedConfiguration, "setPerAppUUID:andSafariDomains:", v26, 0), v26, v25, (v27 & 1) != 0))
      {
        v28 = objc_alloc_init(NSMutableDictionary);
        uUID2 = [(MCProfile *)self->_profile UUID];

        if (uUID2)
        {
          uUID3 = [(MCProfile *)self->_profile UUID];
          [v28 setObject:uUID3 forKeyedSubscript:kMCPayloadUUIDKey];
        }

        identifier = [(MCProfile *)self->_profile identifier];

        if (identifier)
        {
          identifier2 = [(MCProfile *)self->_profile identifier];
          [v28 setObject:identifier2 forKeyedSubscript:kMCPayloadIdentifierKey];
        }

        if (v41)
        {
          [v28 addEntriesFromDictionary:?];
        }

        [ingestedConfiguration setProfileInfo:v28];
        [v18 updateDefaultAfterAddingConfiguration];
        getConfigurationIdentifier = [ingestedConfiguration getConfigurationIdentifier];
        [payload setPersistentResourceID:getConfigurationIdentifier];

        v42 = 0;
        v17 = [v18 saveIngestedConfiguration:&v42];
        v34 = v42;
        if (error && (v17 & 1) == 0)
        {
          *error = [objc_opt_class() internalErrorWithUnderlyingError:v34];
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

      if (error)
      {
        v36 = MCDNSProxyErrorDomain;
        payload2 = [(MCNewPayloadHandler *)self payload];
        displayName = [payload2 displayName];
        v39 = MCErrorArray();
        *error = [NSError MCErrorWithDomain:v36 code:51001 descriptionArray:v39 errorType:MCErrorTypeFatal, displayName, 0];
      }
    }

    else
    {
      if (error)
      {
        *error = [objc_opt_class() internalError];
      }

      [v18 unlockConfigurations];
    }

    v17 = 0;
LABEL_36:
    optionsCopy = v41;

LABEL_37:
    goto LABEL_38;
  }

  if (error)
  {
    v15 = MCDNSProxyErrorDomain;
    v16 = MCErrorArray();
    *error = [NSError MCErrorWithDomain:v15 code:51002 descriptionArray:v16 errorType:MCErrorTypeFatal, 0];
  }

  v17 = 0;
LABEL_38:

  return v17;
}

- (void)setAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  type = [payload type];
  v5 = MCNEProfileIngestionHandlerClassForPayload();

  if ([v5 lockConfigurations])
  {
    [v5 loadConfigurationsForceReloadFromDisk];
    payload2 = [(MCNewPayloadHandler *)self payload];
    persistentResourceID = [payload2 persistentResourceID];
    v8 = [v5 setAsideConfigurationName:persistentResourceID unsetAside:0];

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
  payload = [(MCNewPayloadHandler *)self payload];
  type = [payload type];
  v5 = MCNEProfileIngestionHandlerClassForPayload();

  if ([v5 lockConfigurations])
  {
    [v5 loadConfigurationsForceReloadFromDisk];
    payload2 = [(MCNewPayloadHandler *)self payload];
    persistentResourceID = [payload2 persistentResourceID];
    v8 = [v5 setAsideConfigurationName:persistentResourceID unsetAside:0];

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
  payload = [(MCNewPayloadHandler *)self payload];
  persistentResourceID = [payload persistentResourceID];

  payload2 = [(MCNewPayloadHandler *)self payload];
  type = [payload2 type];
  v7 = MCNEProfileIngestionHandlerClassForPayload();

  if ([v7 lockConfigurations])
  {
    [v7 loadConfigurationsForceReloadFromDisk];
    if (persistentResourceID)
    {
      [v7 removeConfigurationWithIdentifier:persistentResourceID];
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