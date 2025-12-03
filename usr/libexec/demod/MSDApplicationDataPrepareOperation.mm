@interface MSDApplicationDataPrepareOperation
- (BOOL)_associateContainerPathWithContext;
- (BOOL)_lookupContainerPathsOnDevice;
- (BOOL)_purgeContainerizedDataNotInManifest;
- (MSDApplicationDataPrepareOperation)initWithContext:(id)context;
- (id)methodSelectors;
- (void)_createUninstallOperationForContainer:(id)container ofType:(id)type containerPath:(id)path isContainerized:(BOOL)containerized;
@end

@implementation MSDApplicationDataPrepareOperation

- (MSDApplicationDataPrepareOperation)initWithContext:(id)context
{
  v8.receiver = self;
  v8.super_class = MSDApplicationDataPrepareOperation;
  v3 = [(MSDOperation *)&v8 initWithContext:context];
  if (v3)
  {
    v4 = [NSMutableDictionary dictionaryWithCapacity:0];
    [(MSDApplicationDataPrepareOperation *)v3 setDataContainerPaths:v4];

    v5 = [NSMutableDictionary dictionaryWithCapacity:0];
    [(MSDApplicationDataPrepareOperation *)v3 setPlugInContainerPaths:v5];

    v6 = [NSMutableDictionary dictionaryWithCapacity:0];
    [(MSDApplicationDataPrepareOperation *)v3 setGroupContainerPaths:v6];
  }

  return v3;
}

- (id)methodSelectors
{
  v2 = +[MSDOperationContext downloadOnly];
  v3 = [NSValue valueWithPointer:"_lookupContainerPathsOnDevice"];
  v4 = [NSValue valueWithPointer:"_associateContainerPathWithContext"];
  v5 = v4;
  if (v2)
  {
    v6 = [NSArray arrayWithObjects:v3, v4, 0];
  }

  else
  {
    v7 = [NSValue valueWithPointer:"_purgeContainerizedDataNotInManifest"];
    v6 = [NSArray arrayWithObjects:v3, v5, v7, 0];
  }

  return v6;
}

- (BOOL)_lookupContainerPathsOnDevice
{
  context = [(MSDOperation *)self context];
  identifier = [context identifier];
  v5 = [LSApplicationProxy applicationProxyForIdentifier:identifier];

  dataContainerURL = [v5 dataContainerURL];

  if (dataContainerURL)
  {
    dataContainerPaths = [(MSDApplicationDataPrepareOperation *)self dataContainerPaths];
    dataContainerURL2 = [v5 dataContainerURL];
    path = [dataContainerURL2 path];
    applicationIdentifier = [v5 applicationIdentifier];
    [dataContainerPaths setObject:path forKey:applicationIdentifier];
  }

  groupContainerURLs = [v5 groupContainerURLs];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100026E4C;
  v32[3] = &unk_10016A2E0;
  v32[4] = self;
  [groupContainerURLs enumerateKeysAndObjectsUsingBlock:v32];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v25 = v5;
  obj = [v5 plugInKitPlugins];
  v12 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v29;
    do
    {
      v16 = 0;
      v17 = v14;
      do
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * v16);

        dataContainerURL3 = [v14 dataContainerURL];

        if (dataContainerURL3)
        {
          plugInContainerPaths = [(MSDApplicationDataPrepareOperation *)self plugInContainerPaths];
          dataContainerURL4 = [v14 dataContainerURL];
          path2 = [dataContainerURL4 path];
          pluginIdentifier = [v14 pluginIdentifier];
          [plugInContainerPaths setObject:path2 forKey:pluginIdentifier];
        }

        groupContainerURLs2 = [v14 groupContainerURLs];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_100026EE0;
        v27[3] = &unk_10016A2E0;
        v27[4] = self;
        [groupContainerURLs2 enumerateKeysAndObjectsUsingBlock:v27];

        v16 = v16 + 1;
        v17 = v14;
      }

      while (v13 != v16);
      v13 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  return 1;
}

- (BOOL)_associateContainerPathWithContext
{
  v3 = objc_alloc_init(NSMutableSet);
  allDependentOperations = [(MSDOperation *)self allDependentOperations];
  v5 = +[MSDTargetDevice sharedInstance];
  demoUserHomePath = [v5 demoUserHomePath];

  v37 = demoUserHomePath;
  v39 = [demoUserHomePath stringByAppendingPathComponent:@"PseudoContainers"];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v7 = allDependentOperations;
  v8 = [v7 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v46;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v45 + 1) + 8 * i);
        context = [v12 context];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          context2 = [v12 context];
          [v3 addObject:context2];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v9);
  }

  v36 = v7;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v3;
  v16 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v42;
    v38 = *v42;
    do
    {
      v19 = 0;
      do
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v41 + 1) + 8 * v19);
        identifier = [v20 identifier];
        containerType = [v20 containerType];
        if (![v20 containerized])
        {
          v24 = 0;
          v26 = 0;
          goto LABEL_33;
        }

        uniqueName = [v20 uniqueName];
        v24 = [v39 stringByAppendingPathComponent:uniqueName];

        if ([containerType isEqualToString:@"AppData"])
        {
          dataContainerPaths = [(MSDApplicationDataPrepareOperation *)self dataContainerPaths];
          v26 = [dataContainerPaths objectForKey:identifier];

          dataContainerPaths2 = [(MSDApplicationDataPrepareOperation *)self dataContainerPaths];
          goto LABEL_23;
        }

        if ([containerType isEqualToString:@"ExtensionData"])
        {
          plugInContainerPaths = [(MSDApplicationDataPrepareOperation *)self plugInContainerPaths];
          v26 = [plugInContainerPaths objectForKey:identifier];

          dataContainerPaths2 = [(MSDApplicationDataPrepareOperation *)self plugInContainerPaths];
          goto LABEL_23;
        }

        if ([containerType isEqualToString:@"GroupData"])
        {
          groupContainerPaths = [(MSDApplicationDataPrepareOperation *)self groupContainerPaths];
          v26 = [groupContainerPaths objectForKey:identifier];

          dataContainerPaths2 = [(MSDApplicationDataPrepareOperation *)self groupContainerPaths];
LABEL_23:
          v30 = dataContainerPaths2;
          [dataContainerPaths2 removeObjectForKey:identifier];

          v18 = v38;
          if (v24)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }

        v26 = 0;
        if (v24)
        {
LABEL_24:
          v31 = sub_100063A54();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v50 = v20;
            v51 = 2114;
            v52 = v24;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Container '%{public}@' assigned with pseudo content root path: %{public}@", buf, 0x16u);
          }

          [v20 setPseudoContentRootPath:v24];
        }

LABEL_27:
        if (v26)
        {
          if ([v26 hasPrefix:@"/private"])
          {
            v32 = [v26 substringFromIndex:{objc_msgSend(@"/private", "length")}];

            v26 = v32;
          }

          v33 = sub_100063A54();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v50 = v20;
            v51 = 2114;
            v52 = v26;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Container '%{public}@' assigned with content root path: %{public}@", buf, 0x16u);
          }

          [v20 setContentRootPath:v26];
        }

LABEL_33:

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v34 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
      v17 = v34;
    }

    while (v34);
  }

  return 1;
}

- (BOOL)_purgeContainerizedDataNotInManifest
{
  dataContainerPaths = [(MSDApplicationDataPrepareOperation *)self dataContainerPaths];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000275B0;
  v9[3] = &unk_10016A308;
  v9[4] = self;
  [dataContainerPaths enumerateKeysAndObjectsUsingBlock:v9];

  plugInContainerPaths = [(MSDApplicationDataPrepareOperation *)self plugInContainerPaths];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100027694;
  v8[3] = &unk_10016A308;
  v8[4] = self;
  [plugInContainerPaths enumerateKeysAndObjectsUsingBlock:v8];

  groupContainerPaths = [(MSDApplicationDataPrepareOperation *)self groupContainerPaths];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100027778;
  v7[3] = &unk_10016A308;
  v7[4] = self;
  [groupContainerPaths enumerateKeysAndObjectsUsingBlock:v7];

  return 1;
}

- (void)_createUninstallOperationForContainer:(id)container ofType:(id)type containerPath:(id)path isContainerized:(BOOL)containerized
{
  containerizedCopy = containerized;
  pathCopy = path;
  typeCopy = type;
  containerCopy = container;
  context = [(MSDOperation *)self context];
  identifier = [context identifier];

  if (containerizedCopy)
  {
    v14 = [MSDContentFilesContext defaultContextForContainerizedAppDataItem:containerCopy];

    [v14 setContentRootPath:pathCopy];
  }

  else
  {
    v14 = [MSDContentFilesContext defaultContextForNonContainerizedAppDataItem:containerCopy];
  }

  [v14 setContainerType:typeCopy];

  [v14 setAppIdentifier:identifier];
  [v14 setUninstallOperation:1];
  v15 = [MSDOperationRepository createOperationFromIdentifier:@"MSDContentFilesUninstallOperation" withContext:v14];
  [(MSDOperation *)self produceNewDependentOperation:v15 forRollback:0];
}

@end