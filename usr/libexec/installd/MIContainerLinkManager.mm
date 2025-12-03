@interface MIContainerLinkManager
+ (id)_privateContainerManager;
+ (id)_sharedContainerManager;
+ (id)sharedInstanceForDomain:(unint64_t)domain;
- (BOOL)_onQueue_isValidLinkForParent:(id)parent toChild:(id)child error:(id *)error;
- (BOOL)_onQueue_removeParent:(id)parent error:(id *)error;
- (BOOL)_onQueue_setLinkedParentBundleIDList:(id)list error:(id *)error;
- (BOOL)_onQueue_updateLinkForParent:(id)parent toChild:(id)child operationType:(unint64_t)type error:(id *)error;
- (BOOL)getLinkedParent:(id *)parent forChild:(id)child error:(id *)error;
- (BOOL)linkChild:(id)child toParent:(id)parent error:(id *)error;
- (BOOL)preflightLinkingChild:(id)child toParent:(id)parent error:(id *)error;
- (BOOL)removeParent:(id)parent error:(id *)error;
- (BOOL)unlinkChild:(id)child fromParent:(id)parent error:(id *)error;
- (MIContainerLinkManager)initWithDomain:(unint64_t)domain;
- (id)_onQueue_childrenForParentBundleID:(id)d error:(id *)error;
- (id)_onQueue_linkedParentBundleIDs:(id *)ds;
- (id)childrenForParentBundleID:(id)d error:(id *)error;
- (void)_onQueue_migratePlaygroundsBundleMetadata;
@end

@implementation MIContainerLinkManager

- (void)_onQueue_migratePlaygroundsBundleMetadata
{
  selfCopy = self;
  internalQueue = [(MIContainerLinkManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v4 = objc_opt_new();
  v54 = 0;
  v5 = +[MITestManager sharedInstance];
  v53 = 0;
  v6 = [v5 isRunningInTestMode:&v54 outError:&v53];
  v7 = v53;

  if (v6)
  {
    if (v54)
    {
      v8 = @"com.apple.mock.Playgrounds";
    }

    else
    {
      v8 = @"com.apple.Playgrounds";
    }
  }

  else
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v35 = v7;
      MOLogWrite();
    }

    v8 = @"com.apple.Playgrounds";
  }

  v9 = v8;
  v41 = objc_opt_new();
  v42 = v9;
  v52 = 0;
  v10 = [MIBundleContainer appBundleContainerWithIdentifier:v9 createIfNeeded:0 created:0 error:&v52];
  v11 = v52;
  v12 = v11;
  if (v10)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      MOLogWrite();
    }

    [v4 addObject:{v9, v35}];
    v51 = v12;
    v13 = [v10 bundleMetadataWithError:&v51];
    v14 = v51;

    if (v13)
    {
      v50 = v14;
      v15 = [MIBundleContainer containersWithClass:1 error:&v50];
      v12 = v50;

      if (v15)
      {
        v39 = v4;
        v40 = v13;
        v37 = v10;
        v38 = selfCopy;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v47;
          v20 = v12;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              v22 = v20;
              if (*v47 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v23 = *(*(&v46 + 1) + 8 * i);
              v24 = objc_autoreleasePoolPush();
              identifier = [v23 identifier];
              v45 = v20;
              v26 = [v23 bundleMetadataWithError:&v45];
              v20 = v45;

              if (v26)
              {
                linkedParentBundleID = [v26 linkedParentBundleID];
                v28 = [linkedParentBundleID isEqualToString:v42];

                if (v28)
                {
                  [v41 addObject:identifier];
                }
              }

              else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
              {
                v35 = identifier;
                v36 = v20;
                MOLogWrite();
              }

              objc_autoreleasePoolPop(v24);
            }

            v18 = [v16 countByEnumeratingWithState:&v46 objects:v55 count:16];
          }

          while (v18);
        }

        else
        {
          v20 = v12;
        }

        v31 = [v41 copy];
        if ([v41 count])
        {
          [v40 setLinkedChildBundleIDs:v31];
          v44 = v20;
          v10 = v37;
          v32 = [v37 saveBundleMetadata:v40 withError:&v44];
          v12 = v44;

          selfCopy = v38;
          v4 = v39;
          if ((v32 & 1) == 0)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
            {
              sub_1000587C8();
            }

            goto LABEL_48;
          }
        }

        else
        {
          v12 = v20;
          selfCopy = v38;
          v4 = v39;
          v10 = v37;
        }

        [(NSMutableDictionary *)selfCopy->_parentToLinkedChildrenMap setObject:v31 forKeyedSubscript:v42, v35, v36];
LABEL_48:

        goto LABEL_49;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100058838();
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000588A8();
      }

      v12 = v14;
    }
  }

  else
  {
    domain = [v11 domain];
    if ([domain isEqualToString:MIContainerManagerErrorDomain])
    {
      code = [v12 code];

      if (code == 21)
      {
        goto LABEL_49;
      }
    }

    else
    {
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100058918();
    }
  }

LABEL_49:
  v43 = v12;
  v33 = [(MIContainerLinkManager *)selfCopy _onQueue_setLinkedParentBundleIDList:v4 error:&v43, v35];
  v34 = v43;

  if ((v33 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100058988();
  }
}

- (MIContainerLinkManager)initWithDomain:(unint64_t)domain
{
  v16.receiver = self;
  v16.super_class = MIContainerLinkManager;
  v4 = [(MIContainerLinkManager *)&v16 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.installd.LinkedContainers", 0);
    internalQueue = v4->_internalQueue;
    v4->_internalQueue = v5;

    v7 = objc_opt_new();
    parentToLinkedChildrenMap = v4->_parentToLinkedChildrenMap;
    v4->_parentToLinkedChildrenMap = v7;

    v4->_domain = domain;
    v9 = +[MIFileManager defaultManager];
    v10 = sub_10002E0E4();
    v11 = [v9 itemDoesNotExistAtURL:v10];

    if (domain == 2)
    {
      if (v11)
      {
        internalQueue = [(MIContainerLinkManager *)v4 internalQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10002E15C;
        block[3] = &unk_100090D48;
        v15 = v4;
        dispatch_sync(internalQueue, block);
      }
    }
  }

  return v4;
}

+ (id)_sharedContainerManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E204;
  block[3] = &unk_100090CF8;
  block[4] = self;
  if (qword_1000A9678 != -1)
  {
    dispatch_once(&qword_1000A9678, block);
  }

  v2 = qword_1000A9680;

  return v2;
}

+ (id)_privateContainerManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E2E8;
  block[3] = &unk_100090CF8;
  block[4] = self;
  if (qword_1000A9688 != -1)
  {
    dispatch_once(&qword_1000A9688, block);
  }

  v2 = qword_1000A9690;

  return v2;
}

+ (id)sharedInstanceForDomain:(unint64_t)domain
{
  v4 = objc_opt_class();
  if (domain == 3)
  {
    [v4 _privateContainerManager];
  }

  else
  {
    [v4 _sharedContainerManager];
  }
  v5 = ;

  return v5;
}

- (id)_onQueue_linkedParentBundleIDs:(id *)ds
{
  internalQueue = [(MIContainerLinkManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v6 = self->_linkedParentBundleIDs;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    goto LABEL_39;
  }

  v9 = sub_10002E0E4();
  v41 = objc_opt_new();
  v50 = 0;
  v10 = [NSDictionary dictionaryWithContentsOfURL:v9 error:&v50];
  v11 = v50;
  if (!v10)
  {
LABEL_10:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_1000589F8(v9, v11);
    }

    if ([(MIContainerLinkManager *)self domain]== 3)
    {
      v49 = v11;
      v18 = &v49;
      v19 = &v49;
      v20 = 14;
    }

    else
    {
      v48 = v11;
      v18 = &v48;
      v19 = &v48;
      v20 = 1;
    }

    v17 = [MIBundleContainer containersWithClass:v20 error:v19];
    v21 = *v18;

    if (v17)
    {
      v38 = v10;
      dsCopy = ds;
      v40 = v9;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v37 = v17;
      v22 = v17;
      v23 = [v22 countByEnumeratingWithState:&v44 objects:v51 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v45;
LABEL_18:
        v26 = 0;
        v27 = v21;
        while (1)
        {
          if (*v45 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v28 = *(*(&v44 + 1) + 8 * v26);
          v29 = objc_autoreleasePoolPush();
          identifier = [v28 identifier];
          v43 = v27;
          v31 = [v28 bundleMetadataWithError:&v43];
          v21 = v43;

          if (!v31)
          {
            break;
          }

          linkedParentBundleID = [v31 linkedParentBundleID];
          if (linkedParentBundleID)
          {
            [v41 addObject:linkedParentBundleID];
          }

          objc_autoreleasePoolPop(v29);
          v26 = v26 + 1;
          v27 = v21;
          if (v24 == v26)
          {
            v24 = [v22 countByEnumeratingWithState:&v44 objects:v51 count:16];
            if (v24)
            {
              goto LABEL_18;
            }

            goto LABEL_26;
          }
        }

        v17 = v37;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          sub_100058A9C();
        }

        objc_autoreleasePoolPop(v29);
        v33 = 0;
        v9 = v40;
        v7 = 0;
        v10 = v38;
        ds = dsCopy;
        if (dsCopy)
        {
          goto LABEL_35;
        }

        goto LABEL_37;
      }

LABEL_26:

      v42 = v21;
      v33 = [(MIContainerLinkManager *)self _onQueue_setLinkedParentBundleIDList:v41 error:&v42];
      v34 = v42;

      v21 = v34;
      v9 = v40;
      v7 = 0;
      v10 = v38;
      ds = dsCopy;
      v17 = v37;
      if (!dsCopy)
      {
LABEL_37:
        v11 = v21;
        goto LABEL_38;
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100058B24();
      }

      v33 = 0;
      if (!ds)
      {
        goto LABEL_37;
      }
    }

LABEL_35:
    if ((v33 & 1) == 0)
    {
      v35 = v21;
      *ds = v21;
    }

    goto LABEL_37;
  }

  v12 = [v10 objectForKeyedSubscript:@"linkedParentBundles"];
  objc_opt_class();
  v13 = v12;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_9:
    goto LABEL_10;
  }

  if (!v13)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  v14 = sub_100010AB8(v13);

  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  v15 = [NSSet setWithArray:v13];
  linkedParentBundleIDs = self->_linkedParentBundleIDs;
  self->_linkedParentBundleIDs = v15;

  v17 = 0;
LABEL_38:
  v8 = self->_linkedParentBundleIDs;

LABEL_39:

  return v8;
}

- (BOOL)_onQueue_setLinkedParentBundleIDList:(id)list error:(id *)error
{
  listCopy = list;
  internalQueue = [(MIContainerLinkManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v9 = sub_10002E0E4();
  if (listCopy)
  {
    if (([(NSSet *)self->_linkedParentBundleIDs isEqual:listCopy]& 1) != 0)
    {
      v10 = 0;
      v11 = 0;
LABEL_7:
      v16 = 1;
      goto LABEL_14;
    }

    v22 = @"linkedParentBundles";
    allObjects = [listCopy allObjects];
    v23 = allObjects;
    v10 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

    v21 = 0;
    v13 = [v10 MI_writeToURL:v9 format:200 options:1 error:&v21];
    v11 = v21;
    if (v13)
    {
      v14 = [listCopy copy];
      linkedParentBundleIDs = self->_linkedParentBundleIDs;
      self->_linkedParentBundleIDs = v14;

      goto LABEL_7;
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      path = [v9 path];
      MOLogWrite();
    }
  }

  else
  {
    v11 = sub_100010734("[MIContainerLinkManager _onQueue_setLinkedParentBundleIDList:error:]", 290, MIInstallerErrorDomain, 4, 0, 0, @"Updated linked parent list for linked bundles is nil", v8, v19);
    v10 = 0;
  }

  if (error)
  {
    v17 = v11;
    v16 = 0;
    *error = v11;
  }

  else
  {
    v16 = 0;
  }

LABEL_14:

  return v16;
}

- (BOOL)_onQueue_isValidLinkForParent:(id)parent toChild:(id)child error:(id *)error
{
  parentCopy = parent;
  childCopy = child;
  internalQueue = [(MIContainerLinkManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v19 = 0;
  v11 = [(MIContainerLinkManager *)self _onQueue_linkedParentBundleIDs:&v19];
  v12 = v19;
  if (v11)
  {
    if ([v11 containsObject:childCopy])
    {
      sub_100010734("[MIContainerLinkManager _onQueue_isValidLinkForParent:toChild:error:]", 331, MIInstallerErrorDomain, 4, 0, 0, @"Existing parent app bundle ID %@ can't be added as a child of %@.", v13, childCopy);
    }

    else
    {
      if (![childCopy isEqualToString:parentCopy])
      {
        v17 = 1;
        goto LABEL_11;
      }

      sub_100010734("[MIContainerLinkManager _onQueue_isValidLinkForParent:toChild:error:]", 336, MIInstallerErrorDomain, 4, 0, 0, @"Same bundle ID, %@, can't be passed as a parent and child for linkage creation", v14, childCopy);
    }
    v15 = ;

    v12 = v15;
  }

  if (error)
  {
    v16 = v12;
    v17 = 0;
    *error = v12;
  }

  else
  {
    v17 = 0;
  }

LABEL_11:

  return v17;
}

- (BOOL)_onQueue_updateLinkForParent:(id)parent toChild:(id)child operationType:(unint64_t)type error:(id *)error
{
  parentCopy = parent;
  childCopy = child;
  internalQueue = [(MIContainerLinkManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  parentToLinkedChildrenMap = [(MIContainerLinkManager *)self parentToLinkedChildrenMap];
  v42 = [parentToLinkedChildrenMap objectForKeyedSubscript:parentCopy];

  v50 = 0;
  v13 = [(MIContainerLinkManager *)self _onQueue_linkedParentBundleIDs:&v50];
  v14 = v50;
  if (!v13)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    if (error)
    {
LABEL_16:
      v28 = v14;
      v21 = 0;
      *error = v14;
      goto LABEL_17;
    }

LABEL_5:
    v21 = 0;
    goto LABEL_17;
  }

  v41 = [v13 mutableCopy];
  if ([(MIContainerLinkManager *)self domain]== 3)
  {
    v49 = v14;
    v15 = &v49;
    v16 = [MIBundleContainer privateAppBundleContainerWithIdentifier:parentCopy createIfNeeded:0 created:0 error:&v49];
  }

  else
  {
    v48 = v14;
    v15 = &v48;
    v16 = [MIBundleContainer appBundleContainerWithIdentifier:parentCopy createIfNeeded:0 created:0 error:&v48];
  }

  v20 = v16;
  v22 = *v15;

  if (!v20)
  {
    v14 = sub_100010734("[MIContainerLinkManager _onQueue_updateLinkForParent:toChild:operationType:error:]", 376, MIInstallerErrorDomain, 162, v22, 0, @"Failed to locate installed app for requested parent bundle %@", v23, parentCopy);

    v17 = 0;
LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  v47 = v22;
  v17 = [v20 bundleMetadataWithError:&v47];
  v24 = v47;

  if (!v17)
  {
    v14 = sub_100010734("[MIContainerLinkManager _onQueue_updateLinkForParent:toChild:operationType:error:]", 382, MIInstallerErrorDomain, 4, v24, 0, @"Failed to read bundle metadata for requested parent bundle %@", v25, parentCopy);

    goto LABEL_14;
  }

  linkedChildBundleIDs = [v17 linkedChildBundleIDs];
  v18 = [linkedChildBundleIDs mutableCopy];

  if (v42)
  {
    if ([v18 isEqualToSet:?])
    {
      v40 = 0;
      goto LABEL_21;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100058B94();
    }
  }

  v40 = 1;
LABEL_21:
  if (type == 1)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v37 = childCopy;
      v39 = parentCopy;
      MOLogWrite();
    }

    if ([v18 containsObject:{childCopy, v37, v39}])
    {
      [v18 removeObject:childCopy];
      v40 = 1;
    }

    if (![v18 count])
    {
      [v41 removeObject:parentCopy];
    }

    v31 = v24;
  }

  else
  {
    if (type)
    {
      v14 = sub_100010734("[MIContainerLinkManager _onQueue_updateLinkForParent:toChild:operationType:error:]", 443, MIInstallerErrorDomain, 4, 0, 0, @"Container link manager invoked with invalid operation type %lu", v27, type);

      goto LABEL_15;
    }

    v46 = v24;
    v30 = [(MIContainerLinkManager *)self _onQueue_isValidLinkForParent:parentCopy toChild:childCopy error:&v46];
    v31 = v46;

    if (!v30)
    {
      v14 = v31;
      goto LABEL_15;
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v37 = parentCopy;
      v39 = childCopy;
      MOLogWrite();
    }

    if (([v18 containsObject:{childCopy, v37, v39}] & 1) == 0)
    {
      if (!v18)
      {
        v18 = objc_opt_new();
      }

      [v18 addObject:childCopy];
      v40 = 1;
    }

    if (([v41 containsObject:parentCopy] & 1) == 0)
    {
      [v41 addObject:parentCopy];
    }
  }

  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {
    v38 = v18;
    MOLogWrite();
  }

  v32 = [v18 copy];
  [v17 setLinkedChildBundleIDs:v32];

  if (v40)
  {
    v45 = v31;
    v33 = [v20 saveBundleMetadata:v17 withError:&v45];
    v14 = v45;

    if (v33)
    {
      v31 = v14;
      goto LABEL_47;
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

LABEL_15:
    v19 = v41;
    if (error)
    {
      goto LABEL_16;
    }

    goto LABEL_5;
  }

LABEL_47:
  v44 = v31;
  v34 = [(MIContainerLinkManager *)self _onQueue_setLinkedParentBundleIDList:v41 error:&v44];
  v14 = v44;

  if (!v34)
  {
    goto LABEL_15;
  }

  if (v40)
  {
    v35 = [v18 copy];
    parentToLinkedChildrenMap2 = [(MIContainerLinkManager *)self parentToLinkedChildrenMap];
    [parentToLinkedChildrenMap2 setObject:v35 forKeyedSubscript:parentCopy];
  }

  v21 = 1;
  v19 = v41;
LABEL_17:

  return v21;
}

- (BOOL)preflightLinkingChild:(id)child toParent:(id)parent error:(id *)error
{
  childCopy = child;
  parentCopy = parent;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10002F258;
  v24 = sub_10002F268;
  v25 = 0;
  internalQueue = [(MIContainerLinkManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F270;
  block[3] = &unk_100091638;
  v18 = &v26;
  block[4] = self;
  v11 = parentCopy;
  v16 = v11;
  v12 = childCopy;
  v17 = v12;
  v19 = &v20;
  dispatch_sync(internalQueue, block);

  v13 = *(v27 + 24);
  if (error && (v27[3] & 1) == 0)
  {
    *error = v21[5];
    v13 = *(v27 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13 & 1;
}

- (BOOL)linkChild:(id)child toParent:(id)parent error:(id *)error
{
  childCopy = child;
  parentCopy = parent;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10002F258;
  v24 = sub_10002F268;
  v25 = 0;
  internalQueue = [(MIContainerLinkManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F488;
  block[3] = &unk_100091638;
  v18 = &v26;
  block[4] = self;
  v11 = parentCopy;
  v16 = v11;
  v12 = childCopy;
  v17 = v12;
  v19 = &v20;
  dispatch_sync(internalQueue, block);

  v13 = *(v27 + 24);
  if (error && (v27[3] & 1) == 0)
  {
    *error = v21[5];
    v13 = *(v27 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13 & 1;
}

- (BOOL)unlinkChild:(id)child fromParent:(id)parent error:(id *)error
{
  childCopy = child;
  parentCopy = parent;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10002F258;
  v24 = sub_10002F268;
  v25 = 0;
  internalQueue = [(MIContainerLinkManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F6A4;
  block[3] = &unk_100091638;
  v18 = &v26;
  block[4] = self;
  v11 = parentCopy;
  v16 = v11;
  v12 = childCopy;
  v17 = v12;
  v19 = &v20;
  dispatch_sync(internalQueue, block);

  v13 = *(v27 + 24);
  if (error && (v27[3] & 1) == 0)
  {
    *error = v21[5];
    v13 = *(v27 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13 & 1;
}

- (BOOL)getLinkedParent:(id *)parent forChild:(id)child error:(id *)error
{
  childCopy = child;
  if ([(MIContainerLinkManager *)self domain]== 3)
  {
    v24 = 0;
    v9 = &v24;
    v10 = [MIBundleContainer privateAppBundleContainerWithIdentifier:childCopy createIfNeeded:0 created:0 error:&v24];
  }

  else
  {
    v23 = 0;
    v9 = &v23;
    v10 = [MIBundleContainer appBundleContainerWithIdentifier:childCopy createIfNeeded:0 created:0 error:&v23];
  }

  v11 = v10;

  v12 = *v9;
  v13 = v12;
  if (v11)
  {
    v22 = v12;
    v14 = [v11 bundleMetadataWithError:&v22];
    v15 = v22;

    if (v14)
    {
      linkedParentBundleID = [v14 linkedParentBundleID];
      v17 = 1;
      if (!parent)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v17 = 0;
    v13 = v15;
  }

  else
  {
    domain = [v12 domain];
    if ([domain isEqualToString:MIContainerManagerErrorDomain])
    {
      v17 = [v13 code] == 21;
    }

    else
    {
      v17 = 0;
    }
  }

  v14 = 0;
  if (error && !v17)
  {
    v19 = v13;
    v17 = 0;
    v14 = 0;
    linkedParentBundleID = 0;
    *error = v13;
    v15 = v13;
    if (!parent)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v15 = v13;
  linkedParentBundleID = 0;
  if (parent)
  {
LABEL_18:
    v20 = linkedParentBundleID;
    *parent = linkedParentBundleID;
  }

LABEL_19:

  return v17;
}

- (id)_onQueue_childrenForParentBundleID:(id)d error:(id *)error
{
  dCopy = d;
  internalQueue = [(MIContainerLinkManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v23 = 0;
  v8 = [(MIContainerLinkManager *)self _onQueue_linkedParentBundleIDs:&v23];
  v9 = v23;
  if (!v8)
  {
    v14 = 0;
LABEL_8:
    v15 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  if (([v8 containsObject:dCopy] & 1) == 0)
  {
    v14 = objc_opt_new();
    goto LABEL_8;
  }

  parentToLinkedChildrenMap = [(MIContainerLinkManager *)self parentToLinkedChildrenMap];
  linkedChildBundleIDs = [parentToLinkedChildrenMap objectForKeyedSubscript:dCopy];

  if (linkedChildBundleIDs)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v22 = v9;
    v13 = [MIBundleContainer appBundleContainerWithIdentifier:dCopy createIfNeeded:0 created:0 error:&v22];
    v19 = v22;

    if (!v13)
    {
      v14 = 0;
      v15 = 0;
      v12 = 0;
      v9 = v19;
      goto LABEL_9;
    }

    v21 = v19;
    v12 = [v13 bundleMetadataWithError:&v21];
    v9 = v21;

    if (!v12)
    {
      v14 = 0;
      v15 = 0;
      goto LABEL_9;
    }

    linkedChildBundleIDs = [v12 linkedChildBundleIDs];
    if (!linkedChildBundleIDs)
    {
      linkedChildBundleIDs = objc_opt_new();
    }

    parentToLinkedChildrenMap2 = [(MIContainerLinkManager *)self parentToLinkedChildrenMap];
    [parentToLinkedChildrenMap2 setObject:linkedChildBundleIDs forKeyedSubscript:dCopy];
  }

  v14 = linkedChildBundleIDs;
  v15 = v14;
LABEL_9:
  if (error && !v14)
  {
    v16 = v9;
    *error = v9;
  }

  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {
    MOLogWrite();
  }

  v17 = v14;

  return v14;
}

- (id)childrenForParentBundleID:(id)d error:(id *)error
{
  dCopy = d;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10002F258;
  v26 = sub_10002F268;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10002F258;
  v20 = sub_10002F268;
  v21 = 0;
  internalQueue = [(MIContainerLinkManager *)self internalQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002FCD4;
  v12[3] = &unk_100090CD8;
  v14 = &v22;
  v12[4] = self;
  v8 = dCopy;
  v13 = v8;
  v15 = &v16;
  dispatch_sync(internalQueue, v12);

  v9 = v23[5];
  if (error && !v9)
  {
    *error = v17[5];
    v9 = v23[5];
  }

  v10 = v9;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

- (BOOL)_onQueue_removeParent:(id)parent error:(id *)error
{
  parentCopy = parent;
  internalQueue = [(MIContainerLinkManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v18 = 0;
  v8 = [(MIContainerLinkManager *)self _onQueue_linkedParentBundleIDs:&v18];
  v9 = v18;
  if (!v8)
  {
    v10 = 0;
    if (!error)
    {
LABEL_12:
      v14 = 0;
      goto LABEL_13;
    }

LABEL_6:
    v15 = v9;
    v14 = 0;
    *error = v9;
    goto LABEL_13;
  }

  if (![v8 containsObject:parentCopy])
  {
    v10 = 0;
    v14 = 1;
    goto LABEL_13;
  }

  v10 = [v8 mutableCopy];
  [v10 removeObject:parentCopy];
  v17 = v9;
  v11 = [(MIContainerLinkManager *)self _onQueue_setLinkedParentBundleIDList:v10 error:&v17];
  v12 = v17;

  if ((v11 & 1) == 0)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
    {
      MOLogWrite();
    }

    v9 = v12;
    if (!error)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  parentToLinkedChildrenMap = [(MIContainerLinkManager *)self parentToLinkedChildrenMap];
  [parentToLinkedChildrenMap removeObjectForKey:parentCopy];

  v14 = 1;
  v9 = v12;
LABEL_13:

  return v14;
}

- (BOOL)removeParent:(id)parent error:(id *)error
{
  parentCopy = parent;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10002F258;
  v19 = sub_10002F268;
  v20 = 0;
  internalQueue = [(MIContainerLinkManager *)self internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100030068;
  v11[3] = &unk_100090CD8;
  v13 = &v21;
  v11[4] = self;
  v8 = parentCopy;
  v12 = v8;
  v14 = &v15;
  dispatch_sync(internalQueue, v11);

  v9 = *(v22 + 24);
  if (error && (v22[3] & 1) == 0)
  {
    *error = v16[5];
    v9 = *(v22 + 24);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9 & 1;
}

@end