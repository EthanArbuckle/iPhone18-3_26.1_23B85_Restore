@interface XPCServer
- (BOOL)_hasClientAccessEntitlement;
- (id)_errorForCode:(int)code message:(id)message;
- (id)substituteStandardURLPlaceholders:(id)placeholders withAccount:(id)account withServiceIdentifier:(id)identifier;
- (void)didChangeFMFAccountInfo:(id)info usingCallback:(id)callback;
- (void)refreshMyLocationWithCallback:(id)callback;
- (void)willDeleteiCloudAccountUsingCallback:(id)callback;
@end

@implementation XPCServer

- (void)didChangeFMFAccountInfo:(id)info usingCallback:(id)callback
{
  infoCopy = info;
  callbackCopy = callback;
  v9 = sub_100002830();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412546;
    v17 = v10;
    v18 = 2112;
    v19 = infoCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FRAMEWORK API: %@ with changeDesc %@", buf, 0x16u);
  }

  if ([(XPCServer *)self _hasClientAccessEntitlement])
  {
    v11 = +[AppleAccountManager sharedInstance];
    [v11 syncFMFAccountInfo];

    callbackCopy[2](callbackCopy, 0);
  }

  else
  {
    v12 = NSStringFromSelector(a2);
    v13 = [NSString stringWithFormat:@"Entitlement not found for %@", v12];

    v14 = sub_100002830();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100038DB0(v13, v14);
    }

    v15 = [(XPCServer *)self _errorForCode:103 message:v13];
    (callbackCopy)[2](callbackCopy, v15);
  }
}

- (void)willDeleteiCloudAccountUsingCallback:(id)callback
{
  callbackCopy = callback;
  v6 = sub_100002830();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FRAMEWORK API: %@", buf, 0xCu);
  }

  if ([(XPCServer *)self _hasClientAccessEntitlement])
  {
    callbackCopy[2](callbackCopy, 0);
  }

  else
  {
    v8 = NSStringFromSelector(a2);
    v9 = [NSString stringWithFormat:@"Entitlement not found for %@", v8];

    v10 = sub_100002830();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100038DB0(v9, v10);
    }

    v11 = [(XPCServer *)self _errorForCode:103 message:v9];
    (callbackCopy)[2](callbackCopy, v11);
  }
}

- (void)refreshMyLocationWithCallback:(id)callback
{
  callbackCopy = callback;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [NSString stringWithFormat:@"%@-%X", v6, self];

  v8 = +[FMXPCTransactionManager sharedInstance];
  [v8 beginTransaction:v7];

  v9 = +[AccountManager sharedInstance];
  accounts = [v9 accounts];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100029D54;
  v14[3] = &unk_10005E578;
  v16 = &v17;
  v14[4] = self;
  v11 = callbackCopy;
  v15 = v11;
  [accounts enumerateObjectsUsingBlock:v14];
  if ((v18[3] & 1) == 0)
  {
    v12 = +[NSError fm_genericError];
    (*(v11 + 2))(v11, v12);
  }

  v13 = +[FMXPCTransactionManager sharedInstance];
  [v13 endTransaction:v7];

  _Block_object_dispose(&v17, 8);
}

- (id)substituteStandardURLPlaceholders:(id)placeholders withAccount:(id)account withServiceIdentifier:(id)identifier
{
  placeholdersCopy = placeholders;
  accountCopy = account;
  identifierCopy = identifier;
  v10 = +[PreferencesMgr sharedInstance];
  hostportOverride = [v10 hostportOverride];

  if ([hostportOverride length])
  {
    v12 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${hostname}" withString:hostportOverride];
  }

  else
  {
    serverHost = [accountCopy serverHost];

    if (!serverHost)
    {
      goto LABEL_6;
    }

    serverHost2 = [accountCopy serverHost];
    v12 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${hostname}" withString:serverHost2];

    placeholdersCopy = serverHost2;
  }

  placeholdersCopy = v12;
LABEL_6:
  v15 = +[PreferencesMgr sharedInstance];
  protocolSchemeOverride = [v15 protocolSchemeOverride];

  if ([protocolSchemeOverride length])
  {
    v17 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${scheme}" withString:protocolSchemeOverride];
  }

  else
  {
    serverProtocolScheme = [accountCopy serverProtocolScheme];

    if (!serverProtocolScheme)
    {
      goto LABEL_11;
    }

    serverProtocolScheme2 = [accountCopy serverProtocolScheme];
    v17 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${scheme}" withString:serverProtocolScheme2];

    placeholdersCopy = serverProtocolScheme2;
  }

  placeholdersCopy = v17;
LABEL_11:
  if (identifierCopy)
  {
    v20 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${service}" withString:identifierCopy];

    placeholdersCopy = v20;
  }

  authId = [accountCopy authId];

  if (authId)
  {
    authId2 = [accountCopy authId];
    v23 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${dsid}" withString:authId2];

    placeholdersCopy = v23;
  }

  v24 = +[SystemConfig sharedInstance];
  deviceUDID = [v24 deviceUDID];

  if (deviceUDID)
  {
    v26 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${udid}" withString:deviceUDID];

    placeholdersCopy = v26;
  }

  return placeholdersCopy;
}

- (BOOL)_hasClientAccessEntitlement
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.icloud.fmflocatord-access"];

  v4 = +[NSXPCConnection currentConnection];
  v5 = [v4 valueForEntitlement:@"com.apple.icloud.fmfd.access"];

  if (v3 && ([&__kCFBooleanTrue isEqual:v3] & 1) != 0)
  {
    v6 = 1;
  }

  else if (v5)
  {
    v6 = [&__kCFBooleanTrue isEqual:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_errorForCode:(int)code message:(id)message
{
  messageCopy = message;
  v6 = [NSError alloc];
  if (messageCopy)
  {
    v7 = messageCopy;
  }

  else
  {
    v7 = &stru_10005FAB8;
  }

  v11 = NSLocalizedFailureReasonErrorKey;
  v12 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  v9 = [v6 initWithDomain:@"com.apple.icloud.fmflocatord" code:code userInfo:v8];

  return v9;
}

@end