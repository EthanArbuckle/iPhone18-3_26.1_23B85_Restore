@interface DMDConfigurationOrganizationController
- (DMDConfigurationOrganizationController)initWithOrganization:(id)a3 delegate:(id)a4;
- (DMDConfigurationOrganizationControllerDelegate)delegate;
- (DMFConfigurationOrganization)organization;
- (NSArray)configurationSourceControllers;
- (NSArray)ephemeralConfigurationSources;
- (NSArray)persistentConfigurationSources;
- (NSString)description;
- (id)configurationSourceWithIdentifier:(id)a3;
- (id)registerConfigurationSource:(id)a3;
- (void)configurationSourceController:(id)a3 fetchEventsWithCompletionHandler:(id)a4;
- (void)configurationSourceController:(id)a3 fetchStatusUpdatesWithCompletionHandler:(id)a4;
- (void)resolveAssetWithContext:(id)a3;
- (void)unregisterConfigurationSource:(id)a3;
- (void)updateWithOrganization:(id)a3;
@end

@implementation DMDConfigurationOrganizationController

- (DMDConfigurationOrganizationController)initWithOrganization:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = DMDConfigurationOrganizationController;
  v8 = [(DMDConfigurationOrganizationController *)&v16 init];
  if (v8)
  {
    v9 = [v6 identifier];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeWeak(&v8->_delegate, v7);
    v11 = objc_opt_new();
    persistentConfigurationSourceControllersByIdentifier = v8->_persistentConfigurationSourceControllersByIdentifier;
    v8->_persistentConfigurationSourceControllersByIdentifier = v11;

    v13 = objc_opt_new();
    ephemeralConfigurationSourceControllersByIdentifier = v8->_ephemeralConfigurationSourceControllersByIdentifier;
    v8->_ephemeralConfigurationSourceControllersByIdentifier = v13;

    [(DMDConfigurationOrganizationController *)v8 updateWithOrganization:v6];
  }

  return v8;
}

- (void)updateWithOrganization:(id)a3
{
  v5 = a3;
  if (!+[NSThread isMainThread])
  {
    sub_1000801D4(a2, self);
  }

  v6 = [(DMDConfigurationOrganizationController *)self identifier];
  v7 = [v5 identifier];
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    sub_10008026C(a2, self);
  }

  v9 = [v5 displayName];
  [(DMDConfigurationOrganizationController *)self setDisplayName:v9];

  v10 = [v5 type];
  [(DMDConfigurationOrganizationController *)self setType:v10];

  v32 = v5;
  v11 = [v5 persistentConfigurationSources];
  v12 = [v11 valueForKey:@"identifier"];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = [(DMDConfigurationOrganizationController *)self persistentConfigurationSourceControllersByIdentifier];
  v14 = [v13 allKeys];

  v15 = [v14 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        if (([v12 containsObject:v19] & 1) == 0)
        {
          v20 = [(DMDConfigurationOrganizationController *)self persistentConfigurationSourceControllersByIdentifier];
          [v20 removeObjectForKey:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v16);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = v11;
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
        v27 = [(DMDConfigurationOrganizationController *)self persistentConfigurationSourceControllersByIdentifier];
        v28 = [v26 identifier];
        v29 = [v27 objectForKeyedSubscript:v28];

        if (v29)
        {
          [(DMDConfigurationSourceController *)v29 updateWithConfigurationSource:v26];
        }

        else
        {
          v29 = [[DMDConfigurationSourceController alloc] initWithConfigurationSource:v26 delegate:self];
        }

        v30 = [(DMDConfigurationOrganizationController *)self persistentConfigurationSourceControllersByIdentifier];
        v31 = [v26 identifier];
        [v30 setObject:v29 forKeyedSubscript:v31];
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
  v4 = [(DMDConfigurationOrganizationController *)self identifier];
  [v3 setIdentifier:v4];

  v5 = [(DMDConfigurationOrganizationController *)self displayName];
  [v3 setDisplayName:v5];

  v6 = [(DMDConfigurationOrganizationController *)self type];
  [v3 setType:v6];

  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(DMDConfigurationOrganizationController *)self configurationSourceControllers];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) configurationSource];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [v3 setRegisteredConfigurationSources:v7];

  return v3;
}

- (NSArray)configurationSourceControllers
{
  v3 = objc_opt_new();
  v4 = [(DMDConfigurationOrganizationController *)self persistentConfigurationSources];
  [v3 addObjectsFromArray:v4];

  v5 = [(DMDConfigurationOrganizationController *)self ephemeralConfigurationSources];
  [v3 addObjectsFromArray:v5];

  v6 = [v3 copy];

  return v6;
}

- (NSArray)persistentConfigurationSources
{
  v2 = [(DMDConfigurationOrganizationController *)self persistentConfigurationSourceControllersByIdentifier];
  v3 = [v2 allValues];

  return v3;
}

- (NSArray)ephemeralConfigurationSources
{
  v2 = [(DMDConfigurationOrganizationController *)self ephemeralConfigurationSourceControllersByIdentifier];
  v3 = [v2 allValues];

  return v3;
}

- (id)configurationSourceWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DMDConfigurationOrganizationController *)self persistentConfigurationSourceControllersByIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(DMDConfigurationOrganizationController *)self ephemeralConfigurationSourceControllersByIdentifier];
    v8 = [v9 objectForKeyedSubscript:v4];
  }

  return v8;
}

- (id)registerConfigurationSource:(id)a3
{
  v4 = a3;
  v5 = [(DMDConfigurationOrganizationController *)self persistentConfigurationSourceControllersByIdentifier];
  v6 = [v4 identifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    [(DMDConfigurationSourceController *)v7 updateWithConfigurationSource:v4];
  }

  else
  {
    v8 = [(DMDConfigurationOrganizationController *)self ephemeralConfigurationSourceControllersByIdentifier];
    v9 = [v4 identifier];
    v7 = [v8 objectForKeyedSubscript:v9];

    if (v7)
    {
      [(DMDConfigurationSourceController *)v7 updateWithConfigurationSource:v4];
    }

    else
    {
      v7 = [[DMDConfigurationSourceController alloc] initWithConfigurationSource:v4 delegate:self];
    }

    v10 = [(DMDConfigurationOrganizationController *)self ephemeralConfigurationSourceControllersByIdentifier];
    v11 = [v4 identifier];
    [v10 setObject:v7 forKeyedSubscript:v11];
  }

  v12 = v7;

  return v12;
}

- (void)unregisterConfigurationSource:(id)a3
{
  v4 = a3;
  v6 = [(DMDConfigurationOrganizationController *)self ephemeralConfigurationSourceControllersByIdentifier];
  v5 = [v4 organizationIdentifier];

  [v6 removeObjectForKey:v5];
}

- (void)configurationSourceController:(id)a3 fetchStatusUpdatesWithCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMDConfigurationOrganizationController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(DMDConfigurationOrganizationController *)self delegate];
    [v10 configurationSourceController:v6 fetchStatusUpdatesWithCompletionHandler:v7];
  }

  else
  {
    v11 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000802E8(self, "configurationSourceController:fetchStatusUpdatesWithCompletionHandler:");
    }

    (*(v7 + 2))(v7, 0, 0, 0);
  }
}

- (void)configurationSourceController:(id)a3 fetchEventsWithCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMDConfigurationOrganizationController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(DMDConfigurationOrganizationController *)self delegate];
    [v10 configurationSourceController:v6 fetchEventsWithCompletionHandler:v7];
  }

  else
  {
    v11 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000802E8(self, "configurationSourceController:fetchEventsWithCompletionHandler:");
    }

    (*(v7 + 2))(v7, 0, 0, 0);
  }
}

- (void)resolveAssetWithContext:(id)a3
{
  v8 = a3;
  v4 = [(DMDConfigurationOrganizationController *)self persistentConfigurationSources];
  v5 = [v4 firstObject];
  if (v5)
  {
    v6 = v5;

LABEL_4:
    [v6 resolveAssetWithContext:v8];
    goto LABEL_5;
  }

  v7 = [(DMDConfigurationOrganizationController *)self ephemeralConfigurationSources];
  v6 = [v7 firstObject];

  if (v6)
  {
    goto LABEL_4;
  }

  v6 = DMFErrorWithCodeAndUserInfo();
  [v8 assetResolutionFailedWithError:v6];
LABEL_5:
}

- (DMDConfigurationOrganizationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end