@interface fskitdExtensionManager
- (BOOL)enumerateInstancesForBundle:(id)bundle uid:(unsigned int)uid block:(id)block;
- (BOOL)enumerateInstancesForBundle:(id)bundle user:(id)user block:(id)block;
- (fskitdExtensionManager)init;
- (id)getInstancesInfo;
- (id)instanceKeyFor:(unsigned int)for bundleID:(id)d instanceID:(id)iD;
- (void)cleanUpInstance:(id)instance;
- (void)existingExtensionForBundle:(id)bundle user:(id)user instance:(id)instance replyHandler:(id)handler;
- (void)existingExtensionForBundle:(id)bundle user:(id)user resource:(id)resource replyHandler:(id)handler;
- (void)existingExtensionForBundle:(id)bundle user:(id)user volume:(id)volume replyHandler:(id)handler;
- (void)extensionForBundle:(id)bundle user:(id)user instance:(id)instance replyHandler:(id)handler;
- (void)isVolumeIDUsed:(id)used bundle:(id)bundle user:(id)user replyHandler:(id)handler;
@end

@implementation fskitdExtensionManager

- (fskitdExtensionManager)init
{
  v6.receiver = self;
  v6.super_class = fskitdExtensionManager;
  v2 = [(fskitdExtensionManager *)&v6 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToWeakObjectsMapTable];
    instances = v2->_instances;
    v2->_instances = v3;
  }

  return v2;
}

- (id)instanceKeyFor:(unsigned int)for bundleID:(id)d instanceID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v8 = [NSNumber numberWithUnsignedInt:getuid()];
  v9 = [FSItemTriple tripleWith:v8 second:dCopy third:iDCopy];

  return v9;
}

- (void)extensionForBundle:(id)bundle user:(id)user instance:(id)instance replyHandler:(id)handler
{
  bundleCopy = bundle;
  userCopy = user;
  instanceCopy = instance;
  handlerCopy = handler;
  v13 = -[fskitdExtensionManager instanceKeyFor:bundleID:instanceID:](self, "instanceKeyFor:bundleID:instanceID:", [userCopy ruid], bundleCopy, instanceCopy);
  v14 = self->_instances;
  objc_sync_enter(v14);
  v15 = [(NSMapTable *)self->_instances objectForKey:v13];
  if (v15)
  {
    handlerCopy[2](handlerCopy, v15, 0);
  }

  else
  {
    uuid = [instanceCopy uuid];
    v15 = [fskitdExtensionInstance newForBundle:bundleCopy user:userCopy instance:uuid];

    if (v15)
    {
      [(NSMapTable *)self->_instances setObject:v15 forKey:v13];
      handlerCopy[2](handlerCopy, v15, 0);
    }

    else
    {
      v17 = fs_errorForPOSIXError();
      (handlerCopy)[2](handlerCopy, 0, v17);

      v15 = 0;
    }
  }

  objc_sync_exit(v14);
}

- (void)existingExtensionForBundle:(id)bundle user:(id)user instance:(id)instance replyHandler:(id)handler
{
  bundleCopy = bundle;
  userCopy = user;
  instanceCopy = instance;
  handlerCopy = handler;
  v14 = -[fskitdExtensionManager instanceKeyFor:bundleID:instanceID:](self, "instanceKeyFor:bundleID:instanceID:", [userCopy ruid], bundleCopy, instanceCopy);
  v15 = self->_instances;
  objc_sync_enter(v15);
  v16 = [(NSMapTable *)self->_instances objectForKey:v14];
  objc_sync_exit(v15);

  if (v16)
  {
    handlerCopy[2](handlerCopy, v16, 0);
  }

  else
  {
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136315906;
      v20 = "[fskitdExtensionManager existingExtensionForBundle:user:instance:replyHandler:]";
      v21 = 2112;
      v22 = bundleCopy;
      v23 = 1024;
      ruid = [userCopy ruid];
      v25 = 2112;
      v26 = instanceCopy;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s: Can't find any instance using bundleID (%@), uid %u, and instanceID (%@)", &v19, 0x26u);
    }

    v18 = fs_errorForPOSIXError();
    (handlerCopy)[2](handlerCopy, 0, v18);
  }
}

- (BOOL)enumerateInstancesForBundle:(id)bundle uid:(unsigned int)uid block:(id)block
{
  bundleCopy = bundle;
  blockCopy = block;
  v7 = [NSNumber numberWithUnsignedInt:getuid()];
  obj = self->_instances;
  objc_sync_enter(obj);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  keyEnumerator = [(NSMapTable *)self->_instances keyEnumerator];
  v9 = [keyEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        first = [v12 first];
        if ([first isEqual:v7])
        {
          second = [v12 second];
          v15 = [second isEqual:bundleCopy];

          if (v15)
          {
            v16 = [(NSMapTable *)self->_instances objectForKey:v12];
            v17 = blockCopy[2](blockCopy, v12, v16);

            if (v17)
            {
              v18 = 1;
              goto LABEL_14;
            }
          }
        }

        else
        {
        }
      }

      v9 = [keyEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v18 = 0;
LABEL_14:

  objc_sync_exit(obj);
  return v18;
}

- (BOOL)enumerateInstancesForBundle:(id)bundle user:(id)user block:(id)block
{
  blockCopy = block;
  bundleCopy = bundle;
  LOBYTE(user) = -[fskitdExtensionManager enumerateInstancesForBundle:uid:block:](self, "enumerateInstancesForBundle:uid:block:", bundleCopy, [user ruid], blockCopy);

  return user;
}

- (void)existingExtensionForBundle:(id)bundle user:(id)user volume:(id)volume replyHandler:(id)handler
{
  bundleCopy = bundle;
  userCopy = user;
  volumeCopy = volume;
  handlerCopy = handler;
  v29 = userCopy;
  [userCopy ruid];
  v11 = [NSNumber numberWithUnsignedInt:getuid()];
  obj = self->_instances;
  objc_sync_enter(obj);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  keyEnumerator = [(NSMapTable *)self->_instances keyEnumerator];
  v13 = [keyEnumerator countByEnumeratingWithState:&v34 objects:v48 count:16];
  if (v13)
  {
    v14 = *v35;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v35 != v14)
      {
        objc_enumerationMutation(keyEnumerator);
      }

      v16 = *(*(&v34 + 1) + 8 * v15);
      first = [v16 first];
      if (![first isEqual:v11])
      {
        goto LABEL_9;
      }

      second = [v16 second];
      v19 = [second isEqual:bundleCopy];

      if (v19)
      {
        break;
      }

LABEL_10:
      if (v13 == ++v15)
      {
        v13 = [keyEnumerator countByEnumeratingWithState:&v34 objects:v48 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    first = [(NSMapTable *)self->_instances objectForKey:v16];
    volumeIDs = [first volumeIDs];
    v21 = [volumeIDs containsObject:volumeCopy];

    if (v21)
    {
      v25 = fskit_std_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        third = [v16 third];
        first2 = [v16 first];
        second2 = [v16 second];
        *buf = 136316162;
        v39 = "[fskitdExtensionManager existingExtensionForBundle:user:volume:replyHandler:]";
        v40 = 2112;
        v41 = third;
        v42 = 2112;
        v43 = first2;
        v44 = 2112;
        v45 = second2;
        v46 = 2112;
        v47 = volumeCopy;
        _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%s: Found an instance (%@) with the right bundleID (%@), uid %@, and volumeID (%@)", buf, 0x34u);
      }

      handlerCopy[2](handlerCopy, first, 0);
      v24 = obj;
      objc_sync_exit(obj);
      goto LABEL_20;
    }

LABEL_9:

    goto LABEL_10;
  }

LABEL_12:

  objc_sync_exit(obj);
  v22 = fskit_std_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_100014198();
  }

  v23 = fskit_std_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_100014214(self);
  }

  v24 = fs_errorForPOSIXError();
  (handlerCopy)[2](handlerCopy, 0, v24);
LABEL_20:
}

- (void)isVolumeIDUsed:(id)used bundle:(id)bundle user:(id)user replyHandler:(id)handler
{
  usedCopy = used;
  bundleCopy = bundle;
  userCopy = user;
  handlerCopy = handler;
  v14 = fskit_std_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_1000142B0();
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001331C;
  v16[3] = &unk_100061270;
  v15 = usedCopy;
  v17 = v15;
  v18 = &v19;
  [(fskitdExtensionManager *)self enumerateInstancesForBundle:bundleCopy user:userCopy block:v16];
  (*(handlerCopy + 2))(handlerCopy, *(v20 + 24), 0);

  _Block_object_dispose(&v19, 8);
}

- (void)existingExtensionForBundle:(id)bundle user:(id)user resource:(id)resource replyHandler:(id)handler
{
  bundleCopy = bundle;
  userCopy = user;
  resourceCopy = resource;
  handlerCopy = handler;
  v27 = userCopy;
  [userCopy ruid];
  v11 = [NSNumber numberWithUnsignedInt:getuid()];
  obj = self->_instances;
  objc_sync_enter(obj);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  keyEnumerator = [(NSMapTable *)self->_instances keyEnumerator];
  v13 = [keyEnumerator countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v13)
  {
    v14 = *v33;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v33 != v14)
      {
        objc_enumerationMutation(keyEnumerator);
      }

      v16 = *(*(&v32 + 1) + 8 * v15);
      first = [v16 first];
      if (![first isEqual:v11])
      {
        goto LABEL_9;
      }

      second = [v16 second];
      v19 = [second isEqual:bundleCopy];

      if (v19)
      {
        break;
      }

LABEL_10:
      if (v13 == ++v15)
      {
        v13 = [keyEnumerator countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    first = [(NSMapTable *)self->_instances objectForKey:v16];
    resourceIDs = [first resourceIDs];
    getResourceID = [resourceCopy getResourceID];
    v22 = [resourceIDs containsObject:getResourceID];

    if (v22)
    {
      v26 = fskit_std_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_10001432C();
      }

      handlerCopy[2](handlerCopy, first, 0);
      v25 = obj;
      objc_sync_exit(obj);
      goto LABEL_20;
    }

LABEL_9:

    goto LABEL_10;
  }

LABEL_12:

  objc_sync_exit(obj);
  v23 = fskit_std_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_1000143A8(bundleCopy, resourceCopy);
  }

  v24 = fskit_std_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    sub_100014468(self);
  }

  v25 = fs_errorForPOSIXError();
  (handlerCopy)[2](handlerCopy, 0, v25);
LABEL_20:
}

- (id)getInstancesInfo
{
  v24 = objc_opt_new();
  v20 = self->_instances;
  objc_sync_enter(v20);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
  keyEnumerator = [(NSMapTable *)self->_instances keyEnumerator];
  v4 = [keyEnumerator countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v4)
  {
    obj = keyEnumerator;
    v22 = *v30;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [(NSMapTable *)selfCopy->_instances objectForKey:*(*(&v29 + 1) + 8 * i)];
        v7 = objc_opt_new();
        bundleID = [v6 bundleID];
        [v7 setObject:bundleID forKeyedSubscript:@"bundleID"];

        v9 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 uid]);
        [v7 setObject:v9 forKeyedSubscript:@"user"];

        instanceID = [v6 instanceID];
        [v7 setObject:instanceID forKeyedSubscript:@"instanceID"];

        containerID = [v6 containerID];
        [v7 setObject:containerID forKeyedSubscript:@"containerID"];

        resourceIDs = [v6 resourceIDs];
        [v7 setObject:resourceIDs forKeyedSubscript:@"resourceIDs"];

        v13 = objc_opt_new();
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        volumeIDs = [v6 volumeIDs];
        v15 = [volumeIDs countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v15)
        {
          v16 = *v26;
          do
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(volumeIDs);
              }

              uuid = [*(*(&v25 + 1) + 8 * j) uuid];
              [v13 addObject:uuid];
            }

            v15 = [volumeIDs countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v15);
        }

        [v7 setObject:v13 forKeyedSubscript:@"volumeIDs"];
        [v24 addObject:v7];
      }

      keyEnumerator = obj;
      v4 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v20);

  return v24;
}

- (void)cleanUpInstance:(id)instance
{
  instanceCopy = instance;
  v4 = [instanceCopy uid];
  bundleID = [instanceCopy bundleID];
  containerID = [instanceCopy containerID];
  v7 = [(fskitdExtensionManager *)self instanceKeyFor:v4 bundleID:bundleID instanceID:containerID];

  v8 = self->_instances;
  objc_sync_enter(v8);
  [(NSMapTable *)self->_instances removeObjectForKey:v7];
  objc_sync_exit(v8);
}

@end