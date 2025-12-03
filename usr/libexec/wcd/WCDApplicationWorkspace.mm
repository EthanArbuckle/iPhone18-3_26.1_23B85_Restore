@interface WCDApplicationWorkspace
- (NSSet)allApplications;
- (NSSet)iOSApplicationsContainingComplications;
- (NSSet)iOSApplicationsContainingWatchApp;
- (NSSet)iOSApplicationsWithWatchAppInstalled;
- (NSSet)runningIndependentlyWatchApps;
- (NSSet)standaloneWatchApps;
- (NSSet)validApplications;
- (WCDApplicationWorkspace)init;
- (WCDApplicationWorkspaceDelegate)delegate;
- (id)_lock_applicationInfoForBundleIdentifier:(id)identifier type:(unint64_t)type;
- (id)applicationInfoForBundleIdentifier:(id)identifier type:(unint64_t)type allowPlaceholder:(BOOL)placeholder;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)setValidApplications:(id)applications;
@end

@implementation WCDApplicationWorkspace

- (WCDApplicationWorkspace)init
{
  v9.receiver = self;
  v9.super_class = WCDApplicationWorkspace;
  v2 = [(WCDApplicationWorkspace *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = +[NSSet set];
    validApplications = v3->_validApplications;
    v3->_validApplications = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    placeholderApplications = v3->_placeholderApplications;
    v3->_placeholderApplications = v6;
  }

  return v3;
}

- (id)applicationInfoForBundleIdentifier:(id)identifier type:(unint64_t)type allowPlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(WCDApplicationWorkspace *)self _lock_applicationInfoForBundleIdentifier:identifierCopy type:type];
  if (!v9 && placeholderCopy)
  {
    if (type)
    {
      v9 = [(NSMutableDictionary *)self->_placeholderApplications objectForKeyedSubscript:identifierCopy];
      if (!v9)
      {
        v9 = [[WCDApplicationInfo alloc] initWithCompanionBundleIdentifier:identifierCopy];
        [(NSMutableDictionary *)self->_placeholderApplications setObject:v9 forKeyedSubscript:identifierCopy];
        v10 = wc_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412290;
          v13 = identifierCopy;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding placeholder for %@", &v12, 0xCu);
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)_lock_applicationInfoForBundleIdentifier:(id)identifier type:(unint64_t)type
{
  typeCopy = type;
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&self->_lock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_validApplications;
  v9 = [(NSSet *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v9)
  {
    v16 = 0;
    goto LABEL_27;
  }

  v10 = v9;
  v11 = *v20;
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v19 + 1) + 8 * i);
      if ((typeCopy & 2) != 0)
      {
        watchAppBundleIdentifier = [*(*(&v19 + 1) + 8 * i) watchAppBundleIdentifier];
        if ([watchAppBundleIdentifier isEqualToString:identifierCopy])
        {
          goto LABEL_25;
        }
      }

      if ((typeCopy & 4) == 0)
      {
        if ((typeCopy & 1) == 0)
        {
          v14 = 0;
          goto LABEL_16;
        }

LABEL_14:
        companionAppBundleIdentifier = [v13 companionAppBundleIdentifier];
        v14 = [companionAppBundleIdentifier isEqualToString:identifierCopy];

        if ((typeCopy & 4) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      watchExtensionBundleIdentifier = [v13 watchExtensionBundleIdentifier];
      if ([watchExtensionBundleIdentifier isEqualToString:identifierCopy])
      {

        if ((typeCopy & 2) != 0)
        {
LABEL_25:
        }

LABEL_26:
        v16 = v13;
        goto LABEL_27;
      }

      if (typeCopy)
      {
        goto LABEL_14;
      }

      v14 = 0;
LABEL_15:

LABEL_16:
      if ((typeCopy & 2) != 0)
      {

        if (v14)
        {
          goto LABEL_26;
        }
      }

      else if (v14)
      {
        goto LABEL_26;
      }
    }

    v10 = [(NSSet *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    v16 = 0;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_27:

  return v16;
}

- (void)setValidApplications:(id)applications
{
  applicationsCopy = applications;
  os_unfair_lock_lock(&self->_lock);
  v4 = +[NSMutableSet set];
  v5 = +[NSMutableSet set];
  v6 = +[NSMutableSet set];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  selfCopy = self;
  v7 = self->_validApplications;
  v8 = [(NSSet *)v7 countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v62;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v62 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v61 + 1) + 8 * i);
        if ([v12 isStandaloneWatchApp])
        {
          watchAppBundleIdentifier = [v12 watchAppBundleIdentifier];
          [v4 addObject:watchAppBundleIdentifier];
        }

        if ([v12 isRunningIndependently])
        {
          watchAppBundleIdentifier2 = [v12 watchAppBundleIdentifier];
          [v5 addObject:watchAppBundleIdentifier2];
        }

        if ([v12 isCompanionAppInstalled])
        {
          watchAppBundleIdentifier3 = [v12 watchAppBundleIdentifier];
          [v6 addObject:watchAppBundleIdentifier3];
        }
      }

      v9 = [(NSSet *)v7 countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v9);
  }

  v54 = v6;
  v55 = v5;
  v56 = v4;

  [(NSMutableDictionary *)selfCopy->_placeholderApplications removeAllObjects];
  v16 = [applicationsCopy copy];
  validApplications = selfCopy->_validApplications;
  selfCopy->_validApplications = v16;

  v52 = selfCopy->_iOSApplicationsWithWatchAppInstalled;
  v51 = selfCopy->_iOSApplicationsContainingComplications;
  v18 = +[NSMutableSet set];
  v19 = +[NSMutableSet set];
  v20 = +[NSMutableSet set];
  v21 = +[NSMutableSet set];
  v22 = +[NSMutableSet set];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v23 = applicationsCopy;
  v24 = [v23 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v58;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v58 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v57 + 1) + 8 * j);
        if ([v28 isStandaloneWatchApp])
        {
          [v18 addObject:v28];
        }

        if ([v28 isRunningIndependently])
        {
          [v19 addObject:v28];
        }

        if ([v28 isCompanionAppInstalled])
        {
          [v20 addObject:v28];
        }

        if ([v28 isWatchAppInstalled])
        {
          [v21 addObject:v28];
        }

        if ([v28 hasComplications])
        {
          [v22 addObject:v28];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v25);
  }

  v29 = [v21 copy];
  iOSApplicationsWithWatchAppInstalled = selfCopy->_iOSApplicationsWithWatchAppInstalled;
  selfCopy->_iOSApplicationsWithWatchAppInstalled = v29;

  v31 = [v22 copy];
  iOSApplicationsContainingComplications = selfCopy->_iOSApplicationsContainingComplications;
  selfCopy->_iOSApplicationsContainingComplications = v31;

  os_unfair_lock_unlock(&selfCopy->_lock);
  v33 = [v18 valueForKey:@"watchAppBundleIdentifier"];
  v50 = [v33 isEqual:v56];

  v34 = [v19 valueForKey:@"watchAppBundleIdentifier"];
  v48 = [v34 isEqual:v55];

  v35 = [v20 valueForKey:@"watchAppBundleIdentifier"];
  v47 = [v35 isEqual:v54];

  v36 = [v21 valueForKey:@"watchAppBundleIdentifier"];
  v37 = [(NSSet *)v52 valueForKey:@"watchAppBundleIdentifier"];
  v46 = [v36 isEqual:v37];

  v38 = [v22 valueForKey:@"watchAppBundleIdentifier"];
  v39 = [(NSSet *)v51 valueForKey:@"watchAppBundleIdentifier"];
  v40 = [v38 isEqual:v39];

  if ((v47 & 1) == 0)
  {
    delegate = [(WCDApplicationWorkspace *)selfCopy delegate];
    [delegate applicationWorkspace:selfCopy didUpdateiOSApplicationsContainingWatchApp:v20];
  }

  if ((v46 & 1) == 0)
  {
    delegate2 = [(WCDApplicationWorkspace *)selfCopy delegate];
    [delegate2 applicationWorkspace:selfCopy didUpdateiOSApplicationsWithWatchAppInstalled:v21];
  }

  if ((v40 & 1) == 0)
  {
    delegate3 = [(WCDApplicationWorkspace *)selfCopy delegate];
    [delegate3 applicationWorkspace:selfCopy didUpdateiOSApplicationsContainingComplications:v22];
  }

  if ((v48 & 1) == 0)
  {
    delegate4 = [(WCDApplicationWorkspace *)selfCopy delegate];
    [delegate4 applicationWorkspace:selfCopy didUpdateRunningIndependentlyWatchApps:v19];
  }

  if ((v50 & 1) == 0)
  {
    delegate5 = [(WCDApplicationWorkspace *)selfCopy delegate];
    [delegate5 applicationWorkspace:selfCopy didUpdateStandaloneWatchApps:v18];
  }
}

- (NSSet)validApplications
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSSet *)self->_validApplications copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSSet)allApplications
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSSet *)self->_validApplications mutableCopy];
  allValues = [(NSMutableDictionary *)self->_placeholderApplications allValues];
  [v3 addObjectsFromArray:allValues];

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSSet)standaloneWatchApps
{
  os_unfair_lock_lock(&self->_lock);
  v3 = +[NSMutableSet set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_validApplications;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isStandaloneWatchApp])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSSet)runningIndependentlyWatchApps
{
  os_unfair_lock_lock(&self->_lock);
  v3 = +[NSMutableSet set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_validApplications;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isRunningIndependently])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSSet)iOSApplicationsContainingWatchApp
{
  os_unfair_lock_lock(&self->_lock);
  v3 = +[NSMutableSet set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_validApplications;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isCompanionAppInstalled])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSSet)iOSApplicationsWithWatchAppInstalled
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSSet *)self->_iOSApplicationsWithWatchAppInstalled copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSSet)iOSApplicationsContainingComplications
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSSet *)self->_iOSApplicationsContainingComplications copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  allApplications = [(WCDApplicationWorkspace *)self allApplications];
  v5 = [v3 appendUnsignedInteger:objc_msgSend(allApplications withName:{"count"), @"allApplications.count"}];

  return v3;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(WCDApplicationWorkspace *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [BSDescriptionBuilder builderWithObject:self];
  validApplications = [(WCDApplicationWorkspace *)self validApplications];
  allObjects = [validApplications allObjects];
  [v5 appendArraySection:allObjects withName:@"validApplications" multilinePrefix:prefixCopy skipIfEmpty:0];

  allValues = [(NSMutableDictionary *)self->_placeholderApplications allValues];
  [v5 appendArraySection:allValues withName:@"placeholderApplications" skipIfEmpty:1];

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(WCDApplicationWorkspace *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(WCDApplicationWorkspace *)self descriptionBuilderWithMultilinePrefix:prefix];
  [v3 setUseDebugDescription:1];
  build = [v3 build];

  return build;
}

- (WCDApplicationWorkspaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end