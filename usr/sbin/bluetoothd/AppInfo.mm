@interface AppInfo
+ (id)appInfoWithPID:(int)d isApp:(BOOL)app isExtension:(BOOL)extension bundleID:(id)iD;
- (AppInfo)initWithPID:(int)d isApp:(BOOL)app isExtension:(BOOL)extension bundleID:(id)iD;
- (id)description;
- (unsigned)getAppState;
- (void)setAppState:(unsigned __int8)state;
@end

@implementation AppInfo

- (AppInfo)initWithPID:(int)d isApp:(BOOL)app isExtension:(BOOL)extension bundleID:(id)iD
{
  extensionCopy = extension;
  appCopy = app;
  v8 = *&d;
  iDCopy = iD;
  v25.receiver = self;
  v25.super_class = AppInfo;
  v11 = [(AppInfo *)&v25 init];
  v12 = v11;
  if (v11)
  {
    [(AppInfo *)v11 setPid:v8];
    [(AppInfo *)v12 setIsApp:appCopy];
    [(AppInfo *)v12 setIsAlive:v8 != 0];
    v12->stateInternal = 1;
    [(AppInfo *)v12 setIsDaemon:0];
    [(AppInfo *)v12 setMonitorForDeath:0];
    [(AppInfo *)v12 setIsExtension:0];
    [(AppInfo *)v12 setBundleID:iDCopy];
    [(AppInfo *)v12 setRequiresUrgentAssertion:0];
    v13 = [iDCopy componentsSeparatedByString:@"."];
    if ([v13 count] >= 3)
    {
      v14 = [v13 objectAtIndexedSubscript:0];
      v15 = [v14 length];
      v16 = [v13 objectAtIndexedSubscript:1];
      v17 = [v16 length];

      v18 = [iDCopy substringWithRange:{0, &v17[v15 + 2]}];
      v19 = v18;
      uTF8String = [v18 UTF8String];
      *md = 0u;
      v27 = 0u;
      v21 = strlen(uTF8String);
      if (CC_SHA256(uTF8String, v21, md))
      {
        [NSMutableString stringWithCapacity:64];
        v23 = v22 = 0;
        do
        {
          [v23 appendFormat:@"%02x", md[v22++]];
        }

        while (v22 != 32);
        if ([qword_100BC7D88 containsObject:v23])
        {
          [(AppInfo *)v12 setRequiresUrgentAssertion:1];
        }
      }

      else
      {
        v23 = 0;
      }
    }

    [(AppInfo *)v12 setIsExtension:extensionCopy];
    [(AppInfo *)v12 setHasLiveActivityRunning:0];
  }

  return v12;
}

+ (id)appInfoWithPID:(int)d isApp:(BOOL)app isExtension:(BOOL)extension bundleID:(id)iD
{
  extensionCopy = extension;
  appCopy = app;
  v8 = *&d;
  iDCopy = iD;
  v11 = [[self alloc] initWithPID:v8 isApp:appCopy isExtension:extensionCopy bundleID:iDCopy];

  return v11;
}

- (id)description
{
  v3 = objc_opt_class();
  bundleID = [(AppInfo *)self bundleID];
  v5 = [(AppInfo *)self pid];
  isApp = [(AppInfo *)self isApp];
  isAlive = [(AppInfo *)self isAlive];
  isDaemon = [(AppInfo *)self isDaemon];
  isExtension = [(AppInfo *)self isExtension];
  monitorForDeath = [(AppInfo *)self monitorForDeath];
  stateInternal = self->stateInternal;
  if (stateInternal <= 7)
  {
    if (stateInternal == 2)
    {
      v12 = "terminated";
      goto LABEL_13;
    }

    if (stateInternal == 4)
    {
      v12 = "suspended";
      goto LABEL_13;
    }
  }

  else
  {
    switch(stateInternal)
    {
      case 8u:
        v12 = "background-running";
        goto LABEL_13;
      case 0x10u:
        v12 = "foreground-running";
        goto LABEL_13;
      case 0x20u:
        v12 = "daemon";
        goto LABEL_13;
    }
  }

  v12 = "unknown";
LABEL_13:
  v13 = [NSString stringWithFormat:@"<%@:bundleID:%@ pid:%d isApp:%d isAlive:%d isDaemon:%d isExtension:%d monitorForDeath:%d state:%s hasLiveActivityRunning:%d", v3, bundleID, v5, isApp, isAlive, isDaemon, isExtension, monitorForDeath, v12, [(AppInfo *)self hasLiveActivityRunning]];

  return v13;
}

- (unsigned)getAppState
{
  stateInternal = self->stateInternal;
  if (![(AppInfo *)self isExtension]&& [(AppInfo *)self hasLiveActivityRunning]&& stateInternal == 8)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      bundleID = self->_bundleID;
      v7 = 138412290;
      v8 = bundleID;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getAppState overriding app %@ state with live activity to foreground", &v7, 0xCu);
    }

    LOBYTE(stateInternal) = 16;
  }

  return stateInternal;
}

- (void)setAppState:(unsigned __int8)state
{
  stateCopy = state;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    bundleID = self->_bundleID;
    if (stateCopy <= 7)
    {
      if (stateCopy == 2)
      {
        v7 = "terminated";
        goto LABEL_14;
      }

      if (stateCopy == 4)
      {
        v7 = "suspended";
        goto LABEL_14;
      }
    }

    else
    {
      switch(stateCopy)
      {
        case 8:
          v7 = "background-running";
          goto LABEL_14;
        case 16:
          v7 = "foreground-running";
          goto LABEL_14;
        case 32:
          v7 = "daemon";
LABEL_14:
          v8 = 138412802;
          v9 = bundleID;
          v10 = 2080;
          v11 = v7;
          v12 = 1024;
          v13 = stateCopy;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "setAppState app %@ state to %s(%d)", &v8, 0x1Cu);
          goto LABEL_15;
      }
    }

    v7 = "unknown";
    goto LABEL_14;
  }

LABEL_15:
  self->stateInternal = stateCopy;
}

@end