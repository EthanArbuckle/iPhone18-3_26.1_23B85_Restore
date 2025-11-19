@interface XPCServer
- (BOOL)_hasClientAccessEntitlement;
- (id)_errorForCode:(int)a3 message:(id)a4;
- (id)substituteStandardURLPlaceholders:(id)a3 withAccount:(id)a4 withServiceIdentifier:(id)a5;
- (void)didChangeFMFAccountInfo:(id)a3 usingCallback:(id)a4;
- (void)refreshMyLocationWithCallback:(id)a3;
- (void)willDeleteiCloudAccountUsingCallback:(id)a3;
@end

@implementation XPCServer

- (void)didChangeFMFAccountInfo:(id)a3 usingCallback:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100002830();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412546;
    v17 = v10;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FRAMEWORK API: %@ with changeDesc %@", buf, 0x16u);
  }

  if ([(XPCServer *)self _hasClientAccessEntitlement])
  {
    v11 = +[AppleAccountManager sharedInstance];
    [v11 syncFMFAccountInfo];

    v8[2](v8, 0);
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
    (v8)[2](v8, v15);
  }
}

- (void)willDeleteiCloudAccountUsingCallback:(id)a3
{
  v5 = a3;
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
    v5[2](v5, 0);
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
    (v5)[2](v5, v11);
  }
}

- (void)refreshMyLocationWithCallback:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [NSString stringWithFormat:@"%@-%X", v6, self];

  v8 = +[FMXPCTransactionManager sharedInstance];
  [v8 beginTransaction:v7];

  v9 = +[AccountManager sharedInstance];
  v10 = [v9 accounts];

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
  v11 = v4;
  v15 = v11;
  [v10 enumerateObjectsUsingBlock:v14];
  if ((v18[3] & 1) == 0)
  {
    v12 = +[NSError fm_genericError];
    (*(v11 + 2))(v11, v12);
  }

  v13 = +[FMXPCTransactionManager sharedInstance];
  [v13 endTransaction:v7];

  _Block_object_dispose(&v17, 8);
}

- (id)substituteStandardURLPlaceholders:(id)a3 withAccount:(id)a4 withServiceIdentifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[PreferencesMgr sharedInstance];
  v11 = [v10 hostportOverride];

  if ([v11 length])
  {
    v12 = [v7 stringByReplacingOccurrencesOfString:@"${hostname}" withString:v11];
  }

  else
  {
    v13 = [v8 serverHost];

    if (!v13)
    {
      goto LABEL_6;
    }

    v14 = [v8 serverHost];
    v12 = [v7 stringByReplacingOccurrencesOfString:@"${hostname}" withString:v14];

    v7 = v14;
  }

  v7 = v12;
LABEL_6:
  v15 = +[PreferencesMgr sharedInstance];
  v16 = [v15 protocolSchemeOverride];

  if ([v16 length])
  {
    v17 = [v7 stringByReplacingOccurrencesOfString:@"${scheme}" withString:v16];
  }

  else
  {
    v18 = [v8 serverProtocolScheme];

    if (!v18)
    {
      goto LABEL_11;
    }

    v19 = [v8 serverProtocolScheme];
    v17 = [v7 stringByReplacingOccurrencesOfString:@"${scheme}" withString:v19];

    v7 = v19;
  }

  v7 = v17;
LABEL_11:
  if (v9)
  {
    v20 = [v7 stringByReplacingOccurrencesOfString:@"${service}" withString:v9];

    v7 = v20;
  }

  v21 = [v8 authId];

  if (v21)
  {
    v22 = [v8 authId];
    v23 = [v7 stringByReplacingOccurrencesOfString:@"${dsid}" withString:v22];

    v7 = v23;
  }

  v24 = +[SystemConfig sharedInstance];
  v25 = [v24 deviceUDID];

  if (v25)
  {
    v26 = [v7 stringByReplacingOccurrencesOfString:@"${udid}" withString:v25];

    v7 = v26;
  }

  return v7;
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

- (id)_errorForCode:(int)a3 message:(id)a4
{
  v5 = a4;
  v6 = [NSError alloc];
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_10005FAB8;
  }

  v11 = NSLocalizedFailureReasonErrorKey;
  v12 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  v9 = [v6 initWithDomain:@"com.apple.icloud.fmflocatord" code:a3 userInfo:v8];

  return v9;
}

@end