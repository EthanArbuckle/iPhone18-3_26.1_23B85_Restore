@interface fskitdExtensionManager
- (BOOL)enumerateInstancesForBundle:(id)a3 uid:(unsigned int)a4 block:(id)a5;
- (BOOL)enumerateInstancesForBundle:(id)a3 user:(id)a4 block:(id)a5;
- (fskitdExtensionManager)init;
- (id)getInstancesInfo;
- (id)instanceKeyFor:(unsigned int)a3 bundleID:(id)a4 instanceID:(id)a5;
- (void)cleanUpInstance:(id)a3;
- (void)existingExtensionForBundle:(id)a3 user:(id)a4 instance:(id)a5 replyHandler:(id)a6;
- (void)existingExtensionForBundle:(id)a3 user:(id)a4 resource:(id)a5 replyHandler:(id)a6;
- (void)existingExtensionForBundle:(id)a3 user:(id)a4 volume:(id)a5 replyHandler:(id)a6;
- (void)extensionForBundle:(id)a3 user:(id)a4 instance:(id)a5 replyHandler:(id)a6;
- (void)isVolumeIDUsed:(id)a3 bundle:(id)a4 user:(id)a5 replyHandler:(id)a6;
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

- (id)instanceKeyFor:(unsigned int)a3 bundleID:(id)a4 instanceID:(id)a5
{
  v6 = a5;
  v7 = a4;
  v8 = [NSNumber numberWithUnsignedInt:getuid()];
  v9 = [FSItemTriple tripleWith:v8 second:v7 third:v6];

  return v9;
}

- (void)extensionForBundle:(id)a3 user:(id)a4 instance:(id)a5 replyHandler:(id)a6
{
  v18 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = -[fskitdExtensionManager instanceKeyFor:bundleID:instanceID:](self, "instanceKeyFor:bundleID:instanceID:", [v10 ruid], v18, v11);
  v14 = self->_instances;
  objc_sync_enter(v14);
  v15 = [(NSMapTable *)self->_instances objectForKey:v13];
  if (v15)
  {
    v12[2](v12, v15, 0);
  }

  else
  {
    v16 = [v11 uuid];
    v15 = [fskitdExtensionInstance newForBundle:v18 user:v10 instance:v16];

    if (v15)
    {
      [(NSMapTable *)self->_instances setObject:v15 forKey:v13];
      v12[2](v12, v15, 0);
    }

    else
    {
      v17 = fs_errorForPOSIXError();
      (v12)[2](v12, 0, v17);

      v15 = 0;
    }
  }

  objc_sync_exit(v14);
}

- (void)existingExtensionForBundle:(id)a3 user:(id)a4 instance:(id)a5 replyHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = -[fskitdExtensionManager instanceKeyFor:bundleID:instanceID:](self, "instanceKeyFor:bundleID:instanceID:", [v11 ruid], v10, v12);
  v15 = self->_instances;
  objc_sync_enter(v15);
  v16 = [(NSMapTable *)self->_instances objectForKey:v14];
  objc_sync_exit(v15);

  if (v16)
  {
    v13[2](v13, v16, 0);
  }

  else
  {
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136315906;
      v20 = "[fskitdExtensionManager existingExtensionForBundle:user:instance:replyHandler:]";
      v21 = 2112;
      v22 = v10;
      v23 = 1024;
      v24 = [v11 ruid];
      v25 = 2112;
      v26 = v12;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s: Can't find any instance using bundleID (%@), uid %u, and instanceID (%@)", &v19, 0x26u);
    }

    v18 = fs_errorForPOSIXError();
    (v13)[2](v13, 0, v18);
  }
}

- (BOOL)enumerateInstancesForBundle:(id)a3 uid:(unsigned int)a4 block:(id)a5
{
  v22 = a3;
  v6 = a5;
  v7 = [NSNumber numberWithUnsignedInt:getuid()];
  obj = self->_instances;
  objc_sync_enter(obj);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [(NSMapTable *)self->_instances keyEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v12 first];
        if ([v13 isEqual:v7])
        {
          v14 = [v12 second];
          v15 = [v14 isEqual:v22];

          if (v15)
          {
            v16 = [(NSMapTable *)self->_instances objectForKey:v12];
            v17 = v6[2](v6, v12, v16);

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

      v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v18 = 0;
LABEL_14:

  objc_sync_exit(obj);
  return v18;
}

- (BOOL)enumerateInstancesForBundle:(id)a3 user:(id)a4 block:(id)a5
{
  v8 = a5;
  v9 = a3;
  LOBYTE(a4) = -[fskitdExtensionManager enumerateInstancesForBundle:uid:block:](self, "enumerateInstancesForBundle:uid:block:", v9, [a4 ruid], v8);

  return a4;
}

- (void)existingExtensionForBundle:(id)a3 user:(id)a4 volume:(id)a5 replyHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v33 = a5;
  v31 = a6;
  v29 = v10;
  [v10 ruid];
  v11 = [NSNumber numberWithUnsignedInt:getuid()];
  obj = self->_instances;
  objc_sync_enter(obj);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = [(NSMapTable *)self->_instances keyEnumerator];
  v13 = [v12 countByEnumeratingWithState:&v34 objects:v48 count:16];
  if (v13)
  {
    v14 = *v35;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v35 != v14)
      {
        objc_enumerationMutation(v12);
      }

      v16 = *(*(&v34 + 1) + 8 * v15);
      v17 = [v16 first];
      if (![v17 isEqual:v11])
      {
        goto LABEL_9;
      }

      v18 = [v16 second];
      v19 = [v18 isEqual:v9];

      if (v19)
      {
        break;
      }

LABEL_10:
      if (v13 == ++v15)
      {
        v13 = [v12 countByEnumeratingWithState:&v34 objects:v48 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v17 = [(NSMapTable *)self->_instances objectForKey:v16];
    v20 = [v17 volumeIDs];
    v21 = [v20 containsObject:v33];

    if (v21)
    {
      v25 = fskit_std_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = [v16 third];
        v27 = [v16 first];
        v28 = [v16 second];
        *buf = 136316162;
        v39 = "[fskitdExtensionManager existingExtensionForBundle:user:volume:replyHandler:]";
        v40 = 2112;
        v41 = v26;
        v42 = 2112;
        v43 = v27;
        v44 = 2112;
        v45 = v28;
        v46 = 2112;
        v47 = v33;
        _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%s: Found an instance (%@) with the right bundleID (%@), uid %@, and volumeID (%@)", buf, 0x34u);
      }

      v31[2](v31, v17, 0);
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
  (v31)[2](v31, 0, v24);
LABEL_20:
}

- (void)isVolumeIDUsed:(id)a3 bundle:(id)a4 user:(id)a5 replyHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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
  v15 = v10;
  v17 = v15;
  v18 = &v19;
  [(fskitdExtensionManager *)self enumerateInstancesForBundle:v11 user:v12 block:v16];
  (*(v13 + 2))(v13, *(v20 + 24), 0);

  _Block_object_dispose(&v19, 8);
}

- (void)existingExtensionForBundle:(id)a3 user:(id)a4 resource:(id)a5 replyHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v31 = a5;
  v29 = a6;
  v27 = v10;
  [v10 ruid];
  v11 = [NSNumber numberWithUnsignedInt:getuid()];
  obj = self->_instances;
  objc_sync_enter(obj);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [(NSMapTable *)self->_instances keyEnumerator];
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v13)
  {
    v14 = *v33;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v33 != v14)
      {
        objc_enumerationMutation(v12);
      }

      v16 = *(*(&v32 + 1) + 8 * v15);
      v17 = [v16 first];
      if (![v17 isEqual:v11])
      {
        goto LABEL_9;
      }

      v18 = [v16 second];
      v19 = [v18 isEqual:v9];

      if (v19)
      {
        break;
      }

LABEL_10:
      if (v13 == ++v15)
      {
        v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v17 = [(NSMapTable *)self->_instances objectForKey:v16];
    v20 = [v17 resourceIDs];
    v21 = [v31 getResourceID];
    v22 = [v20 containsObject:v21];

    if (v22)
    {
      v26 = fskit_std_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_10001432C();
      }

      v29[2](v29, v17, 0);
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
    sub_1000143A8(v9, v31);
  }

  v24 = fskit_std_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    sub_100014468(self);
  }

  v25 = fs_errorForPOSIXError();
  (v29)[2](v29, 0, v25);
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
  v23 = self;
  v3 = [(NSMapTable *)self->_instances keyEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v4)
  {
    obj = v3;
    v22 = *v30;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [(NSMapTable *)v23->_instances objectForKey:*(*(&v29 + 1) + 8 * i)];
        v7 = objc_opt_new();
        v8 = [v6 bundleID];
        [v7 setObject:v8 forKeyedSubscript:@"bundleID"];

        v9 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 uid]);
        [v7 setObject:v9 forKeyedSubscript:@"user"];

        v10 = [v6 instanceID];
        [v7 setObject:v10 forKeyedSubscript:@"instanceID"];

        v11 = [v6 containerID];
        [v7 setObject:v11 forKeyedSubscript:@"containerID"];

        v12 = [v6 resourceIDs];
        [v7 setObject:v12 forKeyedSubscript:@"resourceIDs"];

        v13 = objc_opt_new();
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v14 = [v6 volumeIDs];
        v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v15)
        {
          v16 = *v26;
          do
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = [*(*(&v25 + 1) + 8 * j) uuid];
              [v13 addObject:v18];
            }

            v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v15);
        }

        [v7 setObject:v13 forKeyedSubscript:@"volumeIDs"];
        [v24 addObject:v7];
      }

      v3 = obj;
      v4 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v20);

  return v24;
}

- (void)cleanUpInstance:(id)a3
{
  v9 = a3;
  v4 = [v9 uid];
  v5 = [v9 bundleID];
  v6 = [v9 containerID];
  v7 = [(fskitdExtensionManager *)self instanceKeyFor:v4 bundleID:v5 instanceID:v6];

  v8 = self->_instances;
  objc_sync_enter(v8);
  [(NSMapTable *)self->_instances removeObjectForKey:v7];
  objc_sync_exit(v8);
}

@end