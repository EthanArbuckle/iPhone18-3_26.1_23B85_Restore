@interface MCDependencyManager
- (id)_init;
- (id)memberQueueOrphanedParentsInSystemDomain:(id)domain;
- (id)memberQueueOrphanedParentsInUserDomain:(id)domain;
- (id)orphanedParentsForDomain:(id)domain;
- (id)orphanedParentsForSystemDomain:(id)domain;
- (id)orphanedParentsForUserDomain:(id)domain;
- (void)addDependent:(id)dependent ofParent:(id)parent inDomain:(id)domain reciprocalDomain:(id)reciprocalDomain toSystem:(BOOL)system user:(BOOL)user;
- (void)addDependent:(id)dependent ofParent:(id)parent inDomain:(id)domain toSystem:(BOOL)system user:(BOOL)user;
- (void)commitChanges;
- (void)commitChangesCompletion:(id)completion;
- (void)memberQueueAddOrphanParent:(id)parent inDomain:(id)domain toSystem:(BOOL)system user:(BOOL)user;
- (void)memberQueueRemoveDependent:(id)dependent fromParent:(id)parent inDomain:(id)domain fromSystem:(BOOL)system user:(BOOL)user;
- (void)memberQueueRemoveOrphanParent:(id)parent inDomain:(id)domain fromSystem:(BOOL)system user:(BOOL)user;
- (void)removeDependent:(id)dependent fromParent:(id)parent inDomain:(id)domain fromSystem:(BOOL)system user:(BOOL)user;
- (void)removeDependent:(id)dependent fromParent:(id)parent inDomain:(id)domain reciprocalDomain:(id)reciprocalDomain fromSystem:(BOOL)system user:(BOOL)user;
@end

@implementation MCDependencyManager

- (id)_init
{
  v8.receiver = self;
  v8.super_class = MCDependencyManager;
  _init = [(MCDependencyManager *)&v8 _init];
  if (_init)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = _init[1];
    _init[1] = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = _init[2];
    _init[2] = v5;
  }

  return _init;
}

- (void)commitChanges
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100068690;
  v4[3] = &unk_10011B688;
  v5 = dispatch_semaphore_create(0);
  v3 = v5;
  [(MCDependencyManager *)self commitChangesCompletion:v4];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)commitChangesCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Committing dependency changes to disk.", buf, 2u);
  }

  memberQueue = [(MCDependencyManager *)self memberQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100068790;
  v8[3] = &unk_10011BB80;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_sync(memberQueue, v8);
}

- (void)memberQueueAddOrphanParent:(id)parent inDomain:(id)domain toSystem:(BOOL)system user:(BOOL)user
{
  userCopy = user;
  systemCopy = system;
  parentCopy = parent;
  domainCopy = domain;
  if (systemCopy)
  {
    v12 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      v20 = 138543618;
      v21 = parentCopy;
      v22 = 2114;
      v23 = domainCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Adding parent %{public}@ to domain %{public}@ orphan list.", &v20, 0x16u);
    }

    memberQueueSystemOrphansDict = [(MCDependencyManager *)self memberQueueSystemOrphansDict];
    v14 = [memberQueueSystemOrphansDict objectForKeyedSubscript:domainCopy];

    if (!v14)
    {
      v14 = +[NSMutableSet set];
      memberQueueSystemOrphansDict2 = [(MCDependencyManager *)self memberQueueSystemOrphansDict];
      [memberQueueSystemOrphansDict2 setObject:v14 forKeyedSubscript:domainCopy];
    }

    [v14 addObject:parentCopy];
  }

  if (userCopy)
  {
    v16 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      v20 = 138543618;
      v21 = parentCopy;
      v22 = 2114;
      v23 = domainCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Adding parent %{public}@ to domain %{public}@ orphan list.", &v20, 0x16u);
    }

    memberQueueUserOrphansDict = [(MCDependencyManager *)self memberQueueUserOrphansDict];
    v18 = [memberQueueUserOrphansDict objectForKeyedSubscript:domainCopy];

    if (!v18)
    {
      v18 = +[NSMutableSet set];
      memberQueueUserOrphansDict2 = [(MCDependencyManager *)self memberQueueUserOrphansDict];
      [memberQueueUserOrphansDict2 setObject:v18 forKeyedSubscript:domainCopy];
    }

    [v18 addObject:parentCopy];
  }
}

- (void)memberQueueRemoveOrphanParent:(id)parent inDomain:(id)domain fromSystem:(BOOL)system user:(BOOL)user
{
  userCopy = user;
  systemCopy = system;
  parentCopy = parent;
  domainCopy = domain;
  if (systemCopy)
  {
    v12 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      v20 = 138543618;
      v21 = parentCopy;
      v22 = 2114;
      v23 = domainCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Removing parent %{public}@ from domain %{public}@ orphan list.", &v20, 0x16u);
    }

    memberQueueSystemOrphansDict = [(MCDependencyManager *)self memberQueueSystemOrphansDict];
    v14 = [memberQueueSystemOrphansDict objectForKeyedSubscript:domainCopy];

    if (v14)
    {
      [v14 removeObject:parentCopy];
      if (![v14 count])
      {
        memberQueueSystemOrphansDict2 = [(MCDependencyManager *)self memberQueueSystemOrphansDict];
        [memberQueueSystemOrphansDict2 removeObjectForKey:domainCopy];
      }
    }
  }

  if (userCopy)
  {
    v16 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      v20 = 138543618;
      v21 = parentCopy;
      v22 = 2114;
      v23 = domainCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Removing parent %{public}@ from domain %{public}@ orphan list.", &v20, 0x16u);
    }

    memberQueueUserOrphansDict = [(MCDependencyManager *)self memberQueueUserOrphansDict];
    v18 = [memberQueueUserOrphansDict objectForKeyedSubscript:domainCopy];

    if (v18)
    {
      [v18 removeObject:parentCopy];
      if (![v18 count])
      {
        memberQueueUserOrphansDict2 = [(MCDependencyManager *)self memberQueueUserOrphansDict];
        [memberQueueUserOrphansDict2 removeObjectForKey:domainCopy];
      }
    }
  }
}

- (id)orphanedParentsForDomain:(id)domain
{
  domainCopy = domain;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100068E18;
  v16 = sub_100068E28;
  v17 = 0;
  memberQueue = [(MCDependencyManager *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068E30;
  block[3] = &unk_10011C978;
  block[4] = self;
  v10 = domainCopy;
  v11 = &v12;
  v6 = domainCopy;
  dispatch_sync(memberQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)orphanedParentsForSystemDomain:(id)domain
{
  domainCopy = domain;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100068E18;
  v16 = sub_100068E28;
  v17 = 0;
  memberQueue = [(MCDependencyManager *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100069070;
  block[3] = &unk_10011C9A0;
  v10 = domainCopy;
  v11 = &v12;
  block[4] = self;
  v6 = domainCopy;
  dispatch_sync(memberQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)orphanedParentsForUserDomain:(id)domain
{
  domainCopy = domain;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100068E18;
  v16 = sub_100068E28;
  v17 = 0;
  memberQueue = [(MCDependencyManager *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006921C;
  block[3] = &unk_10011C9A0;
  v10 = domainCopy;
  v11 = &v12;
  block[4] = self;
  v6 = domainCopy;
  dispatch_sync(memberQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)memberQueueOrphanedParentsInSystemDomain:(id)domain
{
  domainCopy = domain;
  memberQueueSystemOrphansDict = [(MCDependencyManager *)self memberQueueSystemOrphansDict];
  v6 = [memberQueueSystemOrphansDict objectForKeyedSubscript:domainCopy];

  return v6;
}

- (id)memberQueueOrphanedParentsInUserDomain:(id)domain
{
  domainCopy = domain;
  memberQueueUserOrphansDict = [(MCDependencyManager *)self memberQueueUserOrphansDict];
  v6 = [memberQueueUserOrphansDict objectForKeyedSubscript:domainCopy];

  return v6;
}

- (void)addDependent:(id)dependent ofParent:(id)parent inDomain:(id)domain toSystem:(BOOL)system user:(BOOL)user
{
  dependentCopy = dependent;
  parentCopy = parent;
  domainCopy = domain;
  v15 = domainCopy;
  if (dependentCopy && parentCopy && domainCopy)
  {
    memberQueue = [(MCDependencyManager *)self memberQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006951C;
    block[3] = &unk_10011C9C8;
    block[4] = self;
    v19 = dependentCopy;
    v20 = parentCopy;
    v21 = v15;
    systemCopy = system;
    userCopy = user;
    dispatch_sync(memberQueue, block);
  }

  else
  {
    v17 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v25 = dependentCopy;
      v26 = 2114;
      v27 = parentCopy;
      v28 = 2114;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Attempting to add dependent %{public}@ to parent %{public}@ in domain %{public}@. Ignoring.", buf, 0x20u);
    }
  }
}

- (void)removeDependent:(id)dependent fromParent:(id)parent inDomain:(id)domain fromSystem:(BOOL)system user:(BOOL)user
{
  dependentCopy = dependent;
  parentCopy = parent;
  domainCopy = domain;
  v15 = domainCopy;
  if (dependentCopy && parentCopy && domainCopy)
  {
    memberQueue = [(MCDependencyManager *)self memberQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000699E0;
    block[3] = &unk_10011C9C8;
    block[4] = self;
    v19 = parentCopy;
    v20 = v15;
    v21 = dependentCopy;
    systemCopy = system;
    userCopy = user;
    dispatch_sync(memberQueue, block);
  }

  else
  {
    v17 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v25 = dependentCopy;
      v26 = 2114;
      v27 = parentCopy;
      v28 = 2114;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Attempting to remove dependent %{public}@ from parent %{public}@ in domain %{public}@. Ignoring.", buf, 0x20u);
    }
  }
}

- (void)memberQueueRemoveDependent:(id)dependent fromParent:(id)parent inDomain:(id)domain fromSystem:(BOOL)system user:(BOOL)user
{
  userCopy = user;
  systemCopy = system;
  dependentCopy = dependent;
  parentCopy = parent;
  domainCopy = domain;
  if (systemCopy)
  {
    v15 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      v29 = 138543874;
      v30 = dependentCopy;
      v31 = 2114;
      v32 = parentCopy;
      v33 = 2114;
      v34 = domainCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Removing dependent %{public}@ from parent %{public}@ in domain %{public}@ from system", &v29, 0x20u);
    }

    memberQueueSystemDomainsDict = [(MCDependencyManager *)self memberQueueSystemDomainsDict];
    v17 = [memberQueueSystemDomainsDict objectForKeyedSubscript:domainCopy];

    if (v17)
    {
      v18 = [v17 objectForKeyedSubscript:parentCopy];
      v19 = v18;
      if (v18)
      {
        v20 = [v18 indexOfObject:dependentCopy];
        if (v20 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v19 removeObjectAtIndex:v20];
          if (![v19 count])
          {
            [v17 removeObjectForKey:parentCopy];
            [(MCDependencyManager *)self memberQueueAddOrphanParent:parentCopy inDomain:domainCopy toSystem:1 user:0];
            if (![v17 count])
            {
              memberQueueSystemDomainsDict2 = [(MCDependencyManager *)self memberQueueSystemDomainsDict];
              [memberQueueSystemDomainsDict2 removeObjectForKey:domainCopy];
            }
          }
        }
      }
    }
  }

  if (userCopy)
  {
    v22 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      v29 = 138543874;
      v30 = dependentCopy;
      v31 = 2114;
      v32 = parentCopy;
      v33 = 2114;
      v34 = domainCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Removing dependent %{public}@ from parent %{public}@ in domain %{public}@ from user", &v29, 0x20u);
    }

    memberQueueUserDomainsDict = [(MCDependencyManager *)self memberQueueUserDomainsDict];
    v24 = [memberQueueUserDomainsDict objectForKeyedSubscript:domainCopy];

    if (v24)
    {
      v25 = [v24 objectForKeyedSubscript:parentCopy];
      v26 = v25;
      if (v25)
      {
        v27 = [v25 indexOfObject:dependentCopy];
        if (v27 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v26 removeObjectAtIndex:v27];
          if (![v26 count])
          {
            [v24 removeObjectForKey:parentCopy];
            [(MCDependencyManager *)self memberQueueAddOrphanParent:parentCopy inDomain:domainCopy toSystem:0 user:1];
            if (![v24 count])
            {
              memberQueueUserDomainsDict2 = [(MCDependencyManager *)self memberQueueUserDomainsDict];
              [memberQueueUserDomainsDict2 removeObjectForKey:domainCopy];
            }
          }
        }
      }
    }
  }
}

- (void)addDependent:(id)dependent ofParent:(id)parent inDomain:(id)domain reciprocalDomain:(id)reciprocalDomain toSystem:(BOOL)system user:(BOOL)user
{
  dependentCopy = dependent;
  parentCopy = parent;
  domainCopy = domain;
  reciprocalDomainCopy = reciprocalDomain;
  memberQueue = [(MCDependencyManager *)self memberQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100069F3C;
  v23[3] = &unk_10011C9F0;
  v23[4] = self;
  v24 = dependentCopy;
  v25 = parentCopy;
  v26 = domainCopy;
  systemCopy = system;
  userCopy = user;
  v27 = reciprocalDomainCopy;
  v19 = reciprocalDomainCopy;
  v20 = domainCopy;
  v21 = parentCopy;
  v22 = dependentCopy;
  dispatch_sync(memberQueue, v23);
}

- (void)removeDependent:(id)dependent fromParent:(id)parent inDomain:(id)domain reciprocalDomain:(id)reciprocalDomain fromSystem:(BOOL)system user:(BOOL)user
{
  dependentCopy = dependent;
  parentCopy = parent;
  domainCopy = domain;
  reciprocalDomainCopy = reciprocalDomain;
  memberQueue = [(MCDependencyManager *)self memberQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10006A0E0;
  v23[3] = &unk_10011C9F0;
  v23[4] = self;
  v24 = dependentCopy;
  v25 = parentCopy;
  v26 = domainCopy;
  systemCopy = system;
  userCopy = user;
  v27 = reciprocalDomainCopy;
  v19 = reciprocalDomainCopy;
  v20 = domainCopy;
  v21 = parentCopy;
  v22 = dependentCopy;
  dispatch_sync(memberQueue, v23);
}

@end