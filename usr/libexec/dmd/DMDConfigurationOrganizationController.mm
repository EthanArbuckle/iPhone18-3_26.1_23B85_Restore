@interface DMDConfigurationOrganizationController
- (DMDConfigurationOrganizationController)initWithOrganization:(id)organization delegate:(id)delegate;
- (DMDConfigurationOrganizationControllerDelegate)delegate;
- (DMFConfigurationOrganization)organization;
- (NSArray)configurationSourceControllers;
- (NSArray)ephemeralConfigurationSources;
- (NSArray)persistentConfigurationSources;
- (NSString)description;
- (id)configurationSourceWithIdentifier:(id)identifier;
- (id)registerConfigurationSource:(id)source;
- (void)configurationSourceController:(id)controller fetchEventsWithCompletionHandler:(id)handler;
- (void)configurationSourceController:(id)controller fetchStatusUpdatesWithCompletionHandler:(id)handler;
- (void)resolveAssetWithContext:(id)context;
- (void)unregisterConfigurationSource:(id)source;
- (void)updateWithOrganization:(id)organization;
@end

@implementation DMDConfigurationOrganizationController

- (DMDConfigurationOrganizationController)initWithOrganization:(id)organization delegate:(id)delegate
{
  organizationCopy = organization;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = DMDConfigurationOrganizationController;
  v8 = [(DMDConfigurationOrganizationController *)&v16 init];
  if (v8)
  {
    identifier = [organizationCopy identifier];
    identifier = v8->_identifier;
    v8->_identifier = identifier;

    objc_storeWeak(&v8->_delegate, delegateCopy);
    v11 = objc_opt_new();
    persistentConfigurationSourceControllersByIdentifier = v8->_persistentConfigurationSourceControllersByIdentifier;
    v8->_persistentConfigurationSourceControllersByIdentifier = v11;

    v13 = objc_opt_new();
    ephemeralConfigurationSourceControllersByIdentifier = v8->_ephemeralConfigurationSourceControllersByIdentifier;
    v8->_ephemeralConfigurationSourceControllersByIdentifier = v13;

    [(DMDConfigurationOrganizationController *)v8 updateWithOrganization:organizationCopy];
  }

  return v8;
}

- (void)updateWithOrganization:(id)organization
{
  organizationCopy = organization;
  if (!+[NSThread isMainThread])
  {
    sub_1000801D4(a2, self);
  }

  identifier = [(DMDConfigurationOrganizationController *)self identifier];
  identifier2 = [organizationCopy identifier];
  v8 = [identifier isEqualToString:identifier2];

  if ((v8 & 1) == 0)
  {
    sub_10008026C(a2, self);
  }

  displayName = [organizationCopy displayName];
  [(DMDConfigurationOrganizationController *)self setDisplayName:displayName];

  type = [organizationCopy type];
  [(DMDConfigurationOrganizationController *)self setType:type];

  v32 = organizationCopy;
  persistentConfigurationSources = [organizationCopy persistentConfigurationSources];
  v12 = [persistentConfigurationSources valueForKey:@"identifier"];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  persistentConfigurationSourceControllersByIdentifier = [(DMDConfigurationOrganizationController *)self persistentConfigurationSourceControllersByIdentifier];
  allKeys = [persistentConfigurationSourceControllersByIdentifier allKeys];

  v15 = [allKeys countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(allKeys);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        if (([v12 containsObject:v19] & 1) == 0)
        {
          persistentConfigurationSourceControllersByIdentifier2 = [(DMDConfigurationOrganizationController *)self persistentConfigurationSourceControllersByIdentifier];
          [persistentConfigurationSourceControllersByIdentifier2 removeObjectForKey:v19];
        }
      }

      v16 = [allKeys countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v16);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = persistentConfigurationSources;
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v33 + 1) + 8 * j);
        persistentConfigurationSourceControllersByIdentifier3 = [(DMDConfigurationOrganizationController *)self persistentConfigurationSourceControllersByIdentifier];
        identifier3 = [v26 identifier];
        v29 = [persistentConfigurationSourceControllersByIdentifier3 objectForKeyedSubscript:identifier3];

        if (v29)
        {
          [(DMDConfigurationSourceController *)v29 updateWithConfigurationSource:v26];
        }

        else
        {
          v29 = [[DMDConfigurationSourceController alloc] initWithConfigurationSource:v26 delegate:self];
        }

        persistentConfigurationSourceControllersByIdentifier4 = [(DMDConfigurationOrganizationController *)self persistentConfigurationSourceControllersByIdentifier];
        identifier4 = [v26 identifier];
        [persistentConfigurationSourceControllersByIdentifier4 setObject:v29 forKeyedSubscript:identifier4];
      }

      v23 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v23);
  }
}

- (NSString)description
{
  v5 = @"organization";
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = DMFObjectDescriptionWithProperties();

  return v3;
}

- (DMFConfigurationOrganization)organization
{
  v3 = objc_opt_new();
  identifier = [(DMDConfigurationOrganizationController *)self identifier];
  [v3 setIdentifier:identifier];

  displayName = [(DMDConfigurationOrganizationController *)self displayName];
  [v3 setDisplayName:displayName];

  type = [(DMDConfigurationOrganizationController *)self type];
  [v3 setType:type];

  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  configurationSourceControllers = [(DMDConfigurationOrganizationController *)self configurationSourceControllers];
  v9 = [configurationSourceControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(configurationSourceControllers);
        }

        configurationSource = [*(*(&v15 + 1) + 8 * i) configurationSource];
        [v7 addObject:configurationSource];
      }

      v10 = [configurationSourceControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [v3 setRegisteredConfigurationSources:v7];

  return v3;
}

- (NSArray)configurationSourceControllers
{
  v3 = objc_opt_new();
  persistentConfigurationSources = [(DMDConfigurationOrganizationController *)self persistentConfigurationSources];
  [v3 addObjectsFromArray:persistentConfigurationSources];

  ephemeralConfigurationSources = [(DMDConfigurationOrganizationController *)self ephemeralConfigurationSources];
  [v3 addObjectsFromArray:ephemeralConfigurationSources];

  v6 = [v3 copy];

  return v6;
}

- (NSArray)persistentConfigurationSources
{
  persistentConfigurationSourceControllersByIdentifier = [(DMDConfigurationOrganizationController *)self persistentConfigurationSourceControllersByIdentifier];
  allValues = [persistentConfigurationSourceControllersByIdentifier allValues];

  return allValues;
}

- (NSArray)ephemeralConfigurationSources
{
  ephemeralConfigurationSourceControllersByIdentifier = [(DMDConfigurationOrganizationController *)self ephemeralConfigurationSourceControllersByIdentifier];
  allValues = [ephemeralConfigurationSourceControllersByIdentifier allValues];

  return allValues;
}

- (id)configurationSourceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  persistentConfigurationSourceControllersByIdentifier = [(DMDConfigurationOrganizationController *)self persistentConfigurationSourceControllersByIdentifier];
  v6 = [persistentConfigurationSourceControllersByIdentifier objectForKeyedSubscript:identifierCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    ephemeralConfigurationSourceControllersByIdentifier = [(DMDConfigurationOrganizationController *)self ephemeralConfigurationSourceControllersByIdentifier];
    v8 = [ephemeralConfigurationSourceControllersByIdentifier objectForKeyedSubscript:identifierCopy];
  }

  return v8;
}

- (id)registerConfigurationSource:(id)source
{
  sourceCopy = source;
  persistentConfigurationSourceControllersByIdentifier = [(DMDConfigurationOrganizationController *)self persistentConfigurationSourceControllersByIdentifier];
  identifier = [sourceCopy identifier];
  v7 = [persistentConfigurationSourceControllersByIdentifier objectForKeyedSubscript:identifier];

  if (v7)
  {
    [(DMDConfigurationSourceController *)v7 updateWithConfigurationSource:sourceCopy];
  }

  else
  {
    ephemeralConfigurationSourceControllersByIdentifier = [(DMDConfigurationOrganizationController *)self ephemeralConfigurationSourceControllersByIdentifier];
    identifier2 = [sourceCopy identifier];
    v7 = [ephemeralConfigurationSourceControllersByIdentifier objectForKeyedSubscript:identifier2];

    if (v7)
    {
      [(DMDConfigurationSourceController *)v7 updateWithConfigurationSource:sourceCopy];
    }

    else
    {
      v7 = [[DMDConfigurationSourceController alloc] initWithConfigurationSource:sourceCopy delegate:self];
    }

    ephemeralConfigurationSourceControllersByIdentifier2 = [(DMDConfigurationOrganizationController *)self ephemeralConfigurationSourceControllersByIdentifier];
    identifier3 = [sourceCopy identifier];
    [ephemeralConfigurationSourceControllersByIdentifier2 setObject:v7 forKeyedSubscript:identifier3];
  }

  v12 = v7;

  return v12;
}

- (void)unregisterConfigurationSource:(id)source
{
  sourceCopy = source;
  ephemeralConfigurationSourceControllersByIdentifier = [(DMDConfigurationOrganizationController *)self ephemeralConfigurationSourceControllersByIdentifier];
  organizationIdentifier = [sourceCopy organizationIdentifier];

  [ephemeralConfigurationSourceControllersByIdentifier removeObjectForKey:organizationIdentifier];
}

- (void)configurationSourceController:(id)controller fetchStatusUpdatesWithCompletionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  delegate = [(DMDConfigurationOrganizationController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(DMDConfigurationOrganizationController *)self delegate];
    [delegate2 configurationSourceController:controllerCopy fetchStatusUpdatesWithCompletionHandler:handlerCopy];
  }

  else
  {
    v11 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000802E8(self, "configurationSourceController:fetchStatusUpdatesWithCompletionHandler:");
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
  }
}

- (void)configurationSourceController:(id)controller fetchEventsWithCompletionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  delegate = [(DMDConfigurationOrganizationController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(DMDConfigurationOrganizationController *)self delegate];
    [delegate2 configurationSourceController:controllerCopy fetchEventsWithCompletionHandler:handlerCopy];
  }

  else
  {
    v11 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000802E8(self, "configurationSourceController:fetchEventsWithCompletionHandler:");
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
  }
}

- (void)resolveAssetWithContext:(id)context
{
  contextCopy = context;
  persistentConfigurationSources = [(DMDConfigurationOrganizationController *)self persistentConfigurationSources];
  firstObject = [persistentConfigurationSources firstObject];
  if (firstObject)
  {
    firstObject2 = firstObject;

LABEL_4:
    [firstObject2 resolveAssetWithContext:contextCopy];
    goto LABEL_5;
  }

  ephemeralConfigurationSources = [(DMDConfigurationOrganizationController *)self ephemeralConfigurationSources];
  firstObject2 = [ephemeralConfigurationSources firstObject];

  if (firstObject2)
  {
    goto LABEL_4;
  }

  firstObject2 = DMFErrorWithCodeAndUserInfo();
  [contextCopy assetResolutionFailedWithError:firstObject2];
LABEL_5:
}

- (DMDConfigurationOrganizationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end