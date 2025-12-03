@interface _DASPlugin
+ (id)existingPluginForIdentifier:(id)identifier ofType:(id)type;
+ (id)extensionForIdentifier:(id)identifier ofType:(id)type;
+ (id)pluginForIdentifier:(id)identifier ofType:(id)type;
- (NSString)extensionID;
- (_DASPlugin)initWithExtension:(id)extension pluginMapKey:(id)key;
- (_DASPluginDelegate)pluginDelegate;
- (id)_contextForSession;
- (id)container;
- (id)containerID;
- (id)description;
- (void)_setupExtension;
- (void)_setupSessionIfNecessary;
- (void)extensionDidFinishWithStatus:(unsigned __int8)status;
- (void)performActivity:(id)activity;
- (void)suspend;
- (void)unload;
@end

@implementation _DASPlugin

+ (id)extensionForIdentifier:(id)identifier ofType:(id)type
{
  identifierCopy = identifier;
  typeCopy = type;
  if (!identifierCopy)
  {
    name2 = [_DASDaemonLogger logForCategory:@"plugin"];
    if (os_log_type_enabled(name2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = typeCopy;
      _os_log_impl(&_mh_execute_header, name2, OS_LOG_TYPE_DEFAULT, "Missing identifier for extensionPoint %@", buf, 0xCu);
    }

    firstObject = 0;
    goto LABEL_33;
  }

  v48 = 0;
  v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v48];
  v7 = v48;
  if (v6)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    applicationExtensionRecords = [v6 applicationExtensionRecords];
    v9 = [applicationExtensionRecords countByEnumeratingWithState:&v44 objects:v59 count:16];
    if (v9)
    {
      v10 = v9;
      v37 = v7;
      v38 = v6;
      v40 = identifierCopy;
      v11 = *v45;
      p_info = &OBJC_METACLASS____DASDaemonLogger.info;
      v13 = @"plugin";
LABEL_5:
      v14 = 0;
      v39 = v10;
      while (1)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(applicationExtensionRecords);
        }

        v15 = *(*(&v44 + 1) + 8 * v14);
        v16 = [p_info + 1 logForCategory:{v13, v37}];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [v15 bundleIdentifier];
          extensionPointRecord = [v15 extensionPointRecord];
          [extensionPointRecord name];
          v19 = v11;
          v20 = v13;
          v21 = applicationExtensionRecords;
          v23 = v22 = p_info;
          *buf = 138413058;
          v52 = bundleIdentifier;
          v53 = 2112;
          v54 = v23;
          v55 = 2112;
          v56 = typeCopy;
          v57 = 2112;
          v58 = v40;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Checking extension %@ with pointRecord %@ (want %@) for bundle %@", buf, 0x2Au);

          p_info = v22;
          applicationExtensionRecords = v21;
          v13 = v20;
          v11 = v19;
          v10 = v39;
        }

        extensionPointRecord2 = [v15 extensionPointRecord];
        name = [extensionPointRecord2 name];
        v26 = [name isEqualToString:typeCopy];

        if (v26)
        {
          break;
        }

        if (v10 == ++v14)
        {
          v10 = [applicationExtensionRecords countByEnumeratingWithState:&v44 objects:v59 count:16];
          if (v10)
          {
            goto LABEL_5;
          }

          identifierCopy = v40;
          v7 = v37;
          v6 = v38;
          goto LABEL_22;
        }
      }

      extensionPointRecord3 = [v15 extensionPointRecord];
      name2 = [extensionPointRecord3 name];

      if (name2)
      {
        v30 = v37;
        v43 = v37;
        firstObject = [NSExtension extensionWithIdentifier:name2 error:&v43];
        v31 = v43;
        identifierCopy = v40;
        v6 = v38;
        goto LABEL_28;
      }

      identifierCopy = v40;
      v7 = v37;
      v6 = v38;
      goto LABEL_23;
    }
  }

  else
  {
    v32 = [_DASDaemonLogger logForCategory:@"plugin"];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_10012D4D4();
    }

    applicationExtensionRecords = v7;
    v7 = 0;
  }

LABEL_22:

LABEL_23:
  v49[0] = NSExtensionPointName;
  v49[1] = NSExtensionIdentifierName;
  v50[0] = typeCopy;
  v50[1] = identifierCopy;
  v30 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
  v42 = v7;
  v33 = [NSExtension extensionsWithMatchingAttributes:v30 error:&v42];
  v31 = v42;

  if ([v33 count] >= 2)
  {
    v34 = [_DASDaemonLogger logForCategory:@"plugin"];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_10012D548();
    }
  }

  firstObject = [v33 firstObject];

  name2 = 0;
LABEL_28:

  if (!firstObject)
  {
    v35 = [_DASDaemonLogger logForCategory:@"plugin"];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v52 = name2;
      v53 = 2112;
      v54 = typeCopy;
      v55 = 2112;
      v56 = identifierCopy;
      v57 = 2112;
      v58 = v31;
      _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Unable to find extension %@ (%@) for %@: %@", buf, 0x2Au);
    }
  }

LABEL_33:

  return firstObject;
}

+ (id)existingPluginForIdentifier:(id)identifier ofType:(id)type
{
  v4 = [identifier stringByAppendingString:type];
  os_unfair_lock_lock(&unk_10020B930);
  v5 = qword_10020B938;
  if (!qword_10020B938)
  {
    v6 = objc_opt_new();
    v7 = qword_10020B938;
    qword_10020B938 = v6;

    v5 = qword_10020B938;
  }

  v8 = [v5 objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&unk_10020B930);

  return v8;
}

+ (id)pluginForIdentifier:(id)identifier ofType:(id)type
{
  identifierCopy = identifier;
  typeCopy = type;
  v8 = [identifierCopy stringByAppendingString:typeCopy];
  os_unfair_lock_lock(&unk_10020B930);
  v9 = qword_10020B938;
  if (!qword_10020B938)
  {
    v10 = objc_opt_new();
    v11 = qword_10020B938;
    qword_10020B938 = v10;

    v9 = qword_10020B938;
  }

  v12 = [v9 objectForKeyedSubscript:v8];
  os_unfair_lock_unlock(&unk_10020B930);
  if (v12)
  {
    v13 = v12;
    goto LABEL_14;
  }

  v14 = [self extensionForIdentifier:identifierCopy ofType:typeCopy];
  v15 = v14;
  if (v14)
  {
    if (![v14 optedIn])
    {
      v17 = [_DASDaemonLogger logForCategory:@"plugin"];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10012D5BC();
      }

      v13 = 0;
      goto LABEL_13;
    }

    v16 = [[_DASPlugin alloc] initWithExtension:v15 pluginMapKey:v8];
    os_unfair_lock_lock(&unk_10020B930);
    [qword_10020B938 setObject:v16 forKeyedSubscript:v8];
    os_unfair_lock_unlock(&unk_10020B930);
  }

  else
  {
    v16 = 0;
  }

  v13 = v16;
LABEL_13:

LABEL_14:

  return v13;
}

- (_DASPlugin)initWithExtension:(id)extension pluginMapKey:(id)key
{
  extensionCopy = extension;
  keyCopy = key;
  v23.receiver = self;
  v23.super_class = _DASPlugin;
  v8 = [(_DASPlugin *)&v23 init];
  v9 = v8;
  if (v8)
  {
    [(_DASPlugin *)v8 setExtension:extensionCopy];
    [(_DASPlugin *)v9 setPluginMapKey:keyCopy];
    infoDictionary = [extensionCopy infoDictionary];
    v11 = [infoDictionary objectForKey:@"CFBundleDisplayName"];
    [(_DASPlugin *)v9 setDisplayName:v11];

    identifier = [extensionCopy identifier];
    v13 = [identifier componentsSeparatedByString:@"."];
    lastObject = [v13 lastObject];
    [(_DASPlugin *)v9 setExtensionName:lastObject];

    extensionName = [(_DASPlugin *)v9 extensionName];
    v16 = [NSString stringWithFormat:@"Extension Queue (%@)", extensionName];

    v17 = [v16 cStringUsingEncoding:4];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(v17, v18);
    [(_DASPlugin *)v9 setQueue:v19];

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("Extension Delegate Queue", v20);
    [(_DASPlugin *)v9 setDelegateQueue:v21];

    [(_DASPlugin *)v9 _setupExtension];
  }

  return v9;
}

- (void)_setupExtension
{
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100111784;
  v7[3] = &unk_1001B8E58;
  objc_copyWeak(&v8, &location);
  extension = [(_DASPlugin *)self extension];
  [extension setRequestInterruptionBlock:v7];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100111A08;
  v5[3] = &unk_1001B8E80;
  objc_copyWeak(&v6, &location);
  extension2 = [(_DASPlugin *)self extension];
  [extension2 setRequestCancellationBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)_contextForSession
{
  extension = [(_DASPlugin *)self extension];
  sessionID = [(_DASPlugin *)self sessionID];
  v5 = [extension _extensionContextForUUID:sessionID];

  return v5;
}

- (void)_setupSessionIfNecessary
{
  sessionID = [(_DASPlugin *)self sessionID];

  if (!sessionID)
  {
    extension = [(_DASPlugin *)self extension];
    v11 = 0;
    v5 = [extension beginExtensionRequestWithOptions:0 inputItems:0 error:&v11];
    v6 = v11;

    if (v6 || !v5)
    {
      _contextForSession2 = [_DASDaemonLogger logForCategory:@"plugin"];
      if (os_log_type_enabled(_contextForSession2, OS_LOG_TYPE_ERROR))
      {
        sub_10012D6D0();
      }
    }

    else
    {
      [(_DASPlugin *)self setSessionID:v5];
      _contextForSession = [(_DASPlugin *)self _contextForSession];
      [_contextForSession setContextPlugin:self];

      _contextForSession2 = [(_DASPlugin *)self _contextForSession];
      v9 = [_contextForSession2 pid];
      currentActivity = [(_DASPlugin *)self currentActivity];
      [currentActivity setPid:v9];
    }
  }
}

- (void)performActivity:(id)activity
{
  activityCopy = activity;
  currentActivity = [(_DASPlugin *)self currentActivity];

  v6 = [_DASDaemonLogger logForCategory:@"plugin"];
  _contextForSession = v6;
  if (currentActivity)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10012D738(self, activityCopy, _contextForSession);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = activityCopy;
      _os_log_impl(&_mh_execute_header, _contextForSession, OS_LOG_TYPE_DEFAULT, "Plugin performing activity: %@", buf, 0xCu);
    }

    [(_DASPlugin *)self setCurrentActivity:activityCopy];
    [(_DASPlugin *)self _setupSessionIfNecessary];
    _contextForSession = [(_DASPlugin *)self _contextForSession];
    v8 = [_DASDaemonLogger logForCategory:@"plugin"];
    v9 = v8;
    if (_contextForSession)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        *buf = 138412546;
        v17 = _contextForSession;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Host context %@ (%@)", buf, 0x16u);
      }

      v15 = 0;
      v11 = [_contextForSession remoteContextWithError:&v15];
      v9 = v15;
      v12 = [_DASDaemonLogger logForCategory:@"plugin"];
      v13 = v12;
      if (v9 || !v11)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10012D7E4();
        }
      }

      else
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          sessionID = [(_DASPlugin *)self sessionID];
          *buf = 138412290;
          v17 = sessionID;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Reaching out to plugin to perform action with request ID %@.", buf, 0xCu);
        }

        [v11 performActivity:activityCopy];
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10012D84C(self, v9);
    }
  }
}

- (void)suspend
{
  v3 = [_DASDaemonLogger logForCategory:@"plugin"];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping task", buf, 2u);
  }

  [(_DASPlugin *)self _setupSessionIfNecessary];
  _contextForSession = [(_DASPlugin *)self _contextForSession];
  v8 = 0;
  v5 = [_contextForSession remoteContextWithError:&v8];
  v6 = v8;
  if (v6 || !v5)
  {
    v7 = [_DASDaemonLogger logForCategory:@"plugin"];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10012D7E4();
    }
  }

  else
  {
    [v5 suspend];
  }
}

- (void)extensionDidFinishWithStatus:(unsigned __int8)status
{
  pluginDelegate = [(_DASPlugin *)self pluginDelegate];
  v6 = [_DASDaemonLogger logForCategory:@"plugin"];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = pluginDelegate;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notifying delegate %@ that plugin has finished", buf, 0xCu);
  }

  currentActivity = [(_DASPlugin *)self currentActivity];
  delegateQueue = [(_DASPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011219C;
  block[3] = &unk_1001B6A30;
  v12 = pluginDelegate;
  v13 = currentActivity;
  statusCopy = status;
  v9 = currentActivity;
  v10 = pluginDelegate;
  dispatch_async(delegateQueue, block);
}

- (void)unload
{
  queue = [(_DASPlugin *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011227C;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)container
{
  extension = [(_DASPlugin *)self extension];
  _plugIn = [extension _plugIn];
  containingUrl = [_plugIn containingUrl];
  path = [containingUrl path];

  return path;
}

- (id)containerID
{
  container = [(_DASPlugin *)self container];
  v3 = [NSBundle bundleWithPath:container];
  bundleIdentifier = [v3 bundleIdentifier];

  return bundleIdentifier;
}

- (NSString)extensionID
{
  extension = [(_DASPlugin *)self extension];
  identifier = [extension identifier];

  return identifier;
}

- (id)description
{
  v3 = objc_opt_class();
  extensionName = [(_DASPlugin *)self extensionName];
  isInternal = [(_DASPlugin *)self isInternal];
  v6 = &stru_1001BA3C0;
  if (isInternal)
  {
    v6 = @" (internal)";
  }

  v7 = [NSString stringWithFormat:@"<%@ %@%@>", v3, extensionName, v6];

  return v7;
}

- (_DASPluginDelegate)pluginDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pluginDelegate);

  return WeakRetained;
}

@end