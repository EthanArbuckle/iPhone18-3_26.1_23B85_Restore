@interface MCDependencyManager
- (id)_init;
- (id)memberQueueOrphanedParentsInSystemDomain:(id)a3;
- (id)memberQueueOrphanedParentsInUserDomain:(id)a3;
- (id)orphanedParentsForDomain:(id)a3;
- (id)orphanedParentsForSystemDomain:(id)a3;
- (id)orphanedParentsForUserDomain:(id)a3;
- (void)addDependent:(id)a3 ofParent:(id)a4 inDomain:(id)a5 reciprocalDomain:(id)a6 toSystem:(BOOL)a7 user:(BOOL)a8;
- (void)addDependent:(id)a3 ofParent:(id)a4 inDomain:(id)a5 toSystem:(BOOL)a6 user:(BOOL)a7;
- (void)commitChanges;
- (void)commitChangesCompletion:(id)a3;
- (void)memberQueueAddOrphanParent:(id)a3 inDomain:(id)a4 toSystem:(BOOL)a5 user:(BOOL)a6;
- (void)memberQueueRemoveDependent:(id)a3 fromParent:(id)a4 inDomain:(id)a5 fromSystem:(BOOL)a6 user:(BOOL)a7;
- (void)memberQueueRemoveOrphanParent:(id)a3 inDomain:(id)a4 fromSystem:(BOOL)a5 user:(BOOL)a6;
- (void)removeDependent:(id)a3 fromParent:(id)a4 inDomain:(id)a5 fromSystem:(BOOL)a6 user:(BOOL)a7;
- (void)removeDependent:(id)a3 fromParent:(id)a4 inDomain:(id)a5 reciprocalDomain:(id)a6 fromSystem:(BOOL)a7 user:(BOOL)a8;
@end

@implementation MCDependencyManager

- (id)_init
{
  v8.receiver = self;
  v8.super_class = MCDependencyManager;
  v2 = [(MCDependencyManager *)&v8 _init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = v2[1];
    v2[1] = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = v2[2];
    v2[2] = v5;
  }

  return v2;
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

- (void)commitChangesCompletion:(id)a3
{
  v4 = a3;
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Committing dependency changes to disk.", buf, 2u);
  }

  v6 = [(MCDependencyManager *)self memberQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100068790;
  v8[3] = &unk_10011BB80;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

- (void)memberQueueAddOrphanParent:(id)a3 inDomain:(id)a4 toSystem:(BOOL)a5 user:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  if (v7)
  {
    v12 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      v20 = 138543618;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Adding parent %{public}@ to domain %{public}@ orphan list.", &v20, 0x16u);
    }

    v13 = [(MCDependencyManager *)self memberQueueSystemOrphansDict];
    v14 = [v13 objectForKeyedSubscript:v11];

    if (!v14)
    {
      v14 = +[NSMutableSet set];
      v15 = [(MCDependencyManager *)self memberQueueSystemOrphansDict];
      [v15 setObject:v14 forKeyedSubscript:v11];
    }

    [v14 addObject:v10];
  }

  if (v6)
  {
    v16 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      v20 = 138543618;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Adding parent %{public}@ to domain %{public}@ orphan list.", &v20, 0x16u);
    }

    v17 = [(MCDependencyManager *)self memberQueueUserOrphansDict];
    v18 = [v17 objectForKeyedSubscript:v11];

    if (!v18)
    {
      v18 = +[NSMutableSet set];
      v19 = [(MCDependencyManager *)self memberQueueUserOrphansDict];
      [v19 setObject:v18 forKeyedSubscript:v11];
    }

    [v18 addObject:v10];
  }
}

- (void)memberQueueRemoveOrphanParent:(id)a3 inDomain:(id)a4 fromSystem:(BOOL)a5 user:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  if (v7)
  {
    v12 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      v20 = 138543618;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Removing parent %{public}@ from domain %{public}@ orphan list.", &v20, 0x16u);
    }

    v13 = [(MCDependencyManager *)self memberQueueSystemOrphansDict];
    v14 = [v13 objectForKeyedSubscript:v11];

    if (v14)
    {
      [v14 removeObject:v10];
      if (![v14 count])
      {
        v15 = [(MCDependencyManager *)self memberQueueSystemOrphansDict];
        [v15 removeObjectForKey:v11];
      }
    }
  }

  if (v6)
  {
    v16 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      v20 = 138543618;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Removing parent %{public}@ from domain %{public}@ orphan list.", &v20, 0x16u);
    }

    v17 = [(MCDependencyManager *)self memberQueueUserOrphansDict];
    v18 = [v17 objectForKeyedSubscript:v11];

    if (v18)
    {
      [v18 removeObject:v10];
      if (![v18 count])
      {
        v19 = [(MCDependencyManager *)self memberQueueUserOrphansDict];
        [v19 removeObjectForKey:v11];
      }
    }
  }
}

- (id)orphanedParentsForDomain:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100068E18;
  v16 = sub_100068E28;
  v17 = 0;
  v5 = [(MCDependencyManager *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068E30;
  block[3] = &unk_10011C978;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)orphanedParentsForSystemDomain:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100068E18;
  v16 = sub_100068E28;
  v17 = 0;
  v5 = [(MCDependencyManager *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100069070;
  block[3] = &unk_10011C9A0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)orphanedParentsForUserDomain:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100068E18;
  v16 = sub_100068E28;
  v17 = 0;
  v5 = [(MCDependencyManager *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006921C;
  block[3] = &unk_10011C9A0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)memberQueueOrphanedParentsInSystemDomain:(id)a3
{
  v4 = a3;
  v5 = [(MCDependencyManager *)self memberQueueSystemOrphansDict];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)memberQueueOrphanedParentsInUserDomain:(id)a3
{
  v4 = a3;
  v5 = [(MCDependencyManager *)self memberQueueUserOrphansDict];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)addDependent:(id)a3 ofParent:(id)a4 inDomain:(id)a5 toSystem:(BOOL)a6 user:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = v14;
  if (v12 && v13 && v14)
  {
    v16 = [(MCDependencyManager *)self memberQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006951C;
    block[3] = &unk_10011C9C8;
    block[4] = self;
    v19 = v12;
    v20 = v13;
    v21 = v15;
    v22 = a6;
    v23 = a7;
    dispatch_sync(v16, block);
  }

  else
  {
    v17 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v25 = v12;
      v26 = 2114;
      v27 = v13;
      v28 = 2114;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Attempting to add dependent %{public}@ to parent %{public}@ in domain %{public}@. Ignoring.", buf, 0x20u);
    }
  }
}

- (void)removeDependent:(id)a3 fromParent:(id)a4 inDomain:(id)a5 fromSystem:(BOOL)a6 user:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = v14;
  if (v12 && v13 && v14)
  {
    v16 = [(MCDependencyManager *)self memberQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000699E0;
    block[3] = &unk_10011C9C8;
    block[4] = self;
    v19 = v13;
    v20 = v15;
    v21 = v12;
    v22 = a6;
    v23 = a7;
    dispatch_sync(v16, block);
  }

  else
  {
    v17 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v25 = v12;
      v26 = 2114;
      v27 = v13;
      v28 = 2114;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Attempting to remove dependent %{public}@ from parent %{public}@ in domain %{public}@. Ignoring.", buf, 0x20u);
    }
  }
}

- (void)memberQueueRemoveDependent:(id)a3 fromParent:(id)a4 inDomain:(id)a5 fromSystem:(BOOL)a6 user:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v8)
  {
    v15 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      v29 = 138543874;
      v30 = v12;
      v31 = 2114;
      v32 = v13;
      v33 = 2114;
      v34 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Removing dependent %{public}@ from parent %{public}@ in domain %{public}@ from system", &v29, 0x20u);
    }

    v16 = [(MCDependencyManager *)self memberQueueSystemDomainsDict];
    v17 = [v16 objectForKeyedSubscript:v14];

    if (v17)
    {
      v18 = [v17 objectForKeyedSubscript:v13];
      v19 = v18;
      if (v18)
      {
        v20 = [v18 indexOfObject:v12];
        if (v20 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v19 removeObjectAtIndex:v20];
          if (![v19 count])
          {
            [v17 removeObjectForKey:v13];
            [(MCDependencyManager *)self memberQueueAddOrphanParent:v13 inDomain:v14 toSystem:1 user:0];
            if (![v17 count])
            {
              v21 = [(MCDependencyManager *)self memberQueueSystemDomainsDict];
              [v21 removeObjectForKey:v14];
            }
          }
        }
      }
    }
  }

  if (v7)
  {
    v22 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      v29 = 138543874;
      v30 = v12;
      v31 = 2114;
      v32 = v13;
      v33 = 2114;
      v34 = v14;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Removing dependent %{public}@ from parent %{public}@ in domain %{public}@ from user", &v29, 0x20u);
    }

    v23 = [(MCDependencyManager *)self memberQueueUserDomainsDict];
    v24 = [v23 objectForKeyedSubscript:v14];

    if (v24)
    {
      v25 = [v24 objectForKeyedSubscript:v13];
      v26 = v25;
      if (v25)
      {
        v27 = [v25 indexOfObject:v12];
        if (v27 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v26 removeObjectAtIndex:v27];
          if (![v26 count])
          {
            [v24 removeObjectForKey:v13];
            [(MCDependencyManager *)self memberQueueAddOrphanParent:v13 inDomain:v14 toSystem:0 user:1];
            if (![v24 count])
            {
              v28 = [(MCDependencyManager *)self memberQueueUserDomainsDict];
              [v28 removeObjectForKey:v14];
            }
          }
        }
      }
    }
  }
}

- (void)addDependent:(id)a3 ofParent:(id)a4 inDomain:(id)a5 reciprocalDomain:(id)a6 toSystem:(BOOL)a7 user:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = [(MCDependencyManager *)self memberQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100069F3C;
  v23[3] = &unk_10011C9F0;
  v23[4] = self;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v28 = a7;
  v29 = a8;
  v27 = v17;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  dispatch_sync(v18, v23);
}

- (void)removeDependent:(id)a3 fromParent:(id)a4 inDomain:(id)a5 reciprocalDomain:(id)a6 fromSystem:(BOOL)a7 user:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = [(MCDependencyManager *)self memberQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10006A0E0;
  v23[3] = &unk_10011C9F0;
  v23[4] = self;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v28 = a7;
  v29 = a8;
  v27 = v17;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  dispatch_sync(v18, v23);
}

@end