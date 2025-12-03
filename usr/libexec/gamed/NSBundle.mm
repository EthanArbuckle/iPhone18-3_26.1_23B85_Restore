@interface NSBundle
+ (id)_gkBundleIdentifierFromAuditToken:(id *)token;
+ (id)_gkBundleIdentifierFromConnection:(id)connection;
+ (id)_gkBundleIdentifierFromPID:(int)d;
+ (id)_gkBundleIdentifierOrProcessNameForPID:(int)d;
+ (id)_gkBundleInfoWithPID:(int)d;
+ (id)_gkBundleWithIdentifier:(id)identifier;
+ (id)_gkBundleWithPID:(int)d;
+ (id)_gkLocalizedMessageFromDictionary:(id)dictionary forBundleID:(id)d;
+ (id)_gkLocalizedMessageFromPushDictionary:(id)dictionary forBundleID:(id)d;
+ (id)executablePathForPid:(int)pid;
+ (id)executableURLForPid:(int)pid;
- (BOOL)_gkIsBadgingEnabled;
- (BOOL)_gkIsGameCenterEnabled;
@end

@implementation NSBundle

+ (id)_gkBundleIdentifierOrProcessNameForPID:(int)d
{
  v4 = [objc_opt_class() executablePathForPid:*&d];
  if (!v4)
  {
    lastPathComponent = 0;
    goto LABEL_29;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = CFURLCreateWithFileSystemPath(0, v4, kCFURLPOSIXPathStyle, 0);
  v7 = _CFBundleCopyBundleURLForExecutableURL();
  if (v7)
  {
    v8 = v7;
    v9 = CFBundleCreate(0, v7);
    if (v9)
    {
      v10 = v9;
      lastPathComponent = CFBundleGetIdentifier(v9);
      if (!os_log_GKGeneral)
      {
        v12 = GKOSLoggers();
      }

      v13 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = lastPathComponent;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Getting bundleId from bundleURL %@", buf, 0xCu);
      }

      CFRelease(v10);
      CFRelease(v8);
      if (lastPathComponent)
      {
        goto LABEL_28;
      }
    }

    else
    {
      CFRelease(v8);
    }
  }

  v14 = CFBundleCopyInfoDictionaryForURL(v6);
  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = v14;
  lastPathComponent = [(__CFDictionary *)v14 objectForKey:@"CFBundleIdentifier"];
  if (!os_log_GKGeneral)
  {
    v16 = GKOSLoggers();
  }

  v17 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v15;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Getting bundleId from plist in binary %@", buf, 0xCu);
  }

  if (!lastPathComponent)
  {
LABEL_23:
    if (!proc_name(d, buf, 0x400u))
    {
      goto LABEL_24;
    }

    lastPathComponent = [NSString stringWithUTF8String:buf];
    if (!os_log_GKGeneral)
    {
      v18 = GKOSLoggers();
    }

    v19 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      v24 = lastPathComponent;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Getting bundleID in debug from pid/procname %@", &v23, 0xCu);
    }

    if (!lastPathComponent)
    {
LABEL_24:
      lastPathComponent = [(__CFString *)v4 lastPathComponent];
      if (!os_log_GKGeneral)
      {
        v20 = GKOSLoggers();
      }

      v21 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = lastPathComponent;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Getting bundleId from process name %@", buf, 0xCu);
      }
    }
  }

LABEL_28:
  CFRelease(v6);
  objc_autoreleasePoolPop(v5);
LABEL_29:

  return lastPathComponent;
}

+ (id)executablePathForPid:(int)pid
{
  v3 = proc_pidpath(pid, buffer, 0x1000u);
  if (v3 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [[NSString alloc] initWithBytes:buffer length:v3 encoding:4];
  }

  return v4;
}

+ (id)executableURLForPid:(int)pid
{
  v3 = [objc_opt_class() executablePathForPid:*&pid];
  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_gkBundleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[GKApplicationWorkspace defaultWorkspace];
  v5 = [v4 applicationProxyForBundleID:identifierCopy];

  bundle = [v5 bundle];

  return bundle;
}

+ (id)_gkBundleWithPID:(int)d
{
  v4 = [objc_opt_class() executableURLForPid:*&d];
  if (v4)
  {
    v5 = _CFBundleCopyBundleURLForExecutableURL();
    if (v5)
    {
      v6 = [self bundleWithURL:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_gkBundleInfoWithPID:(int)d
{
  v3 = [objc_opt_class() executableURLForPid:*&d];
  v4 = v3;
  if (v3)
  {
    v5 = CFBundleCopyInfoDictionaryForURL(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_gkBundleIdentifierFromPID:(int)d
{
  v3 = *&d;
  v4 = [NSBundle _gkBundleWithPID:?];
  if (v4)
  {
    v5 = v4;
    bundleIdentifier = [v4 bundleIdentifier];
    v7 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
      v7 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10028DE48(bundleIdentifier, v7, v9, v10, v11, v12, v13, v14);
    }

LABEL_6:

    goto LABEL_14;
  }

  v15 = [NSBundle _gkBundleInfoWithPID:v3];
  v5 = v15;
  if (v15)
  {
    v16 = [v15 objectForKey:@"CFBundleIdentifier"];
    if (v16)
    {
      bundleIdentifier = v16;
      v17 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v18 = GKOSLoggers();
        v17 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_10028DEB4(bundleIdentifier, v17, v19, v20, v21, v22, v23, v24);
      }

      goto LABEL_6;
    }
  }

  bundleIdentifier = 0;
LABEL_14:

  return bundleIdentifier;
}

+ (id)_gkBundleIdentifierFromAuditToken:(id *)token
{
  error = 0;
  v4 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v4;
  if (CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v5 = error;
    v6 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
      v6 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10028DF20(error, v6, v8, v9, v10, v11, v12, v13);
    }

    goto LABEL_15;
  }

  v14 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v14;
  v15 = SecTaskCreateWithAuditToken(0, &token);
  if (!v15)
  {
LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  v16 = v15;
  error = 0;
  v5 = SecTaskCopySigningIdentifier(v15, &error);
  CFRelease(v16);
  if (error)
  {
    v17 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v18 = GKOSLoggers();
      v17 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      token.val[0] = 138412290;
      *&token.val[1] = error;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "bundleIdentifierFromAuditToken: SecTaskCopySigningIdentifier() failed %@", &token, 0xCu);
    }

    CFRelease(error);
    goto LABEL_13;
  }

  if (!v5)
  {
LABEL_13:

    goto LABEL_14;
  }

  v20 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v21 = GKOSLoggers();
    v20 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    token.val[0] = 138412290;
    *&token.val[1] = v5;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "bundleIdentifierFromAuditToken: SecTaskCopySigningIdentifier(): %@", &token, 0xCu);
  }

LABEL_15:

  return v5;
}

+ (id)_gkBundleIdentifierFromConnection:(id)connection
{
  connectionCopy = connection;
  v5 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v6 = [self _gkBundleIdentifierFromAuditToken:v9];
  if (!v6)
  {
    processIdentifier = [v5 processIdentifier];
    if (processIdentifier)
    {
      v6 = [self _gkBundleIdentifierFromPID:processIdentifier];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)_gkLocalizedMessageFromDictionary:(id)dictionary forBundleID:(id)d
{
  dCopy = d;
  if (!dictionary)
  {
    v12 = 0;
    goto LABEL_11;
  }

  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKey:@"loc-key"];
  v8 = [dictionaryCopy objectForKey:@"loc-args"];
  v9 = [dictionaryCopy objectForKey:@"loc-default"];

  if (!v9)
  {
    v9 = v7;
  }

  v10 = +[NSBundle mainBundle];
  bundleIdentifier = [v10 bundleIdentifier];
  if ([bundleIdentifier isEqualToString:dCopy])
  {

LABEL_9:
    v15 = +[NSBundle mainBundle];
    goto LABEL_10;
  }

  v13 = +[GKApplicationWorkspace defaultWorkspace];
  v14 = [v13 applicationIsInstalled:dCopy];

  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = [NSBundle _gkBundleWithIdentifier:dCopy];
LABEL_10:
  v16 = v15;
  v12 = [v15 _gkLocalizedStringForKey:v7 defaultValue:v9 arguments:v8];

LABEL_11:

  return v12;
}

+ (id)_gkLocalizedMessageFromPushDictionary:(id)dictionary forBundleID:(id)d
{
  dCopy = d;
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"k"];
    v8 = [dictionaryCopy objectForKeyedSubscript:@"a"];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"d"];

    if (!v9)
    {
      v9 = v7;
    }

    v10 = +[GKApplicationWorkspace defaultWorkspace];
    v11 = [v10 applicationIsInstalled:dCopy];

    if (v11 && ([NSBundle _gkBundleWithIdentifier:dCopy], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = v12;
      v14 = [v12 _gkLocalizedStringForKey:v7 defaultValue:v9 arguments:v8];
    }

    else
    {
      v14 = v9;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_gkIsGameCenterEnabled
{
  bundleIdentifier = [(NSBundle *)self bundleIdentifier];
  v3 = +[GKApplicationWorkspace defaultWorkspace];
  v4 = [v3 applicationProxyForBundleID:bundleIdentifier];

  LOBYTE(v3) = [v4 isGameCenterEnabled];
  return v3;
}

- (BOOL)_gkIsBadgingEnabled
{
  infoDictionary = [(NSBundle *)self infoDictionary];
  v3 = [infoDictionary objectForKey:@"GKGameCenterBadgingDisabled"];

  if (v3)
  {
    v4 = [v3 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

@end