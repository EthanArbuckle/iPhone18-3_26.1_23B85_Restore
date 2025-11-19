void sub_1000F025C(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Unregistering key bag handler after unlock", "[_NFHardwareManager lockStateChanged]_block_invoke", 2849);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v3 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[_NFHardwareManager lockStateChanged]_block_invoke";
    v6 = 1024;
    v7 = 2849;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Unregistering key bag handler after unlock", buf, 0x12u);
  }

  sub_100207470(*(*(a1 + 32) + 96));
}

id sub_1000F0368(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Lock state changed", "[_NFHardwareManager lockStateChanged]_block_invoke", 2857);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v3 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v6 = "[_NFHardwareManager lockStateChanged]_block_invoke";
    v7 = 1024;
    v8 = 2857;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Lock state changed", buf, 0x12u);
  }

  return [*(a1 + 32) maybeStartNextSession];
}

void sub_1000F0470(void *a1, int a2, uint64_t a3)
{
  if (a1)
  {
    if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("processRestrictedModeState:os:");
        v9 = 45;
        if (isMetaClass)
        {
          v9 = 43;
        }

        v6(6, "%c[%{public}s %{public}s]:%i Ignoring restricted mode for %ld", v9, ClassName, Name, 2901, a3);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = object_getClass(a1);
        if (class_isMetaClass(v11))
        {
          v12 = 43;
        }

        else
        {
          v12 = 45;
        }

        *buf = 67110146;
        v41 = v12;
        v42 = 2082;
        v43 = object_getClassName(a1);
        v44 = 2082;
        v45 = sel_getName("processRestrictedModeState:os:");
        v46 = 1024;
        v47 = 2901;
        v48 = 2048;
        v49 = a3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Ignoring restricted mode for %ld", buf, 0x2Cu);
      }
    }

    else
    {
      v14 = a1;
      objc_sync_enter(v14);
      if (*(v14 + 352))
      {
        objc_sync_exit(v14);
      }

      else
      {
        *(v14 + 352) = 1;
        objc_sync_exit(v14);

        if (a2 == 1)
        {
          os_unfair_lock_lock(v14 + 12);
          [*(v14 + 5) _setIsInRestrictedMode:1];
          v15 = [*(v14 + 5) platformIdentifier];
          os_unfair_lock_unlock(v14 + 12);
          if (v15)
          {
            v16 = objc_opt_new();
            v17 = [NSNumber numberWithUnsignedInt:sub_1000E1E20(v14)];
            [v16 setObject:v17 forKeyedSubscript:@"hardwareType"];

            v18 = [v14 lastKnownRoutingConfig];
            v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v18 embeddedMode] == 2);
            [v16 setObject:v19 forKeyedSubscript:@"contactless"];

            [v16 setObject:v15 forKeyedSubscript:@"platformIdentifier"];
            [NFExceptionsCALogger postAnalyticsSERestrictedModeEntered:v16];
          }
        }

        if ((*(v14 + 354) & 1) == 0)
        {
          *(v14 + 354) = 1;
          v20 = +[NSDistributedNotificationCenter defaultCenter];
          [v20 postNotificationName:@"com.apple.nfcd.se.restricted" object:0 userInfo:0 options:3];

          v21 = NFSharedSignpostLog();
          if (os_signpost_enabled(v21))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SE_RESTRICTED_NOTIFICATION", "com.apple.nfcd.se.restricted", buf, 2u);
          }
        }

        v22 = *(v14 + 3);
        if (v22 && v22[181] == 1)
        {
          sub_100007EE0(v22);
          v23 = +[NFPowerAssertion sharedPowerAssertion];
          [v23 releasePowerAssertion:@"ExpressMode"];
        }

        v24 = *(v14 + 30);
        v25 = sub_10004BF2C();
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_1000F096C;
        v38[3] = &unk_100318738;
        v38[4] = v14;
        v26 = [_NFBuiltinSession createSession:@"AC Log" workQueue:v24 routing:v25 sessionQueuer:v14 didStartWork:v38];
      }

      v10 = sub_100003548(v14);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v27 = [v10 allValues];
      v28 = [v27 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v35;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v35 != v30)
            {
              objc_enumerationMutation(v27);
            }

            [*(*(&v34 + 1) + 8 * i) secureElementWithIdentifier:@"embedded" didChangeRestrictedMode:1];
          }

          v29 = [v27 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v29);
      }
    }
  }
}

void sub_1000F0974(void *a1, char *name)
{
  if (a1)
  {
    v4 = notify_post(name);
    if (v4)
    {
      v5 = v4;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        v18 = sel_getName("_postEvent:");
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v7(3, "%c[%{public}s %{public}s]:%i Failed to notify %s: %d", v11, ClassName, v18, 2990, name, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = object_getClass(a1);
        if (class_isMetaClass(v13))
        {
          v14 = 43;
        }

        else
        {
          v14 = 45;
        }

        *buf = 67110402;
        v20 = v14;
        v21 = 2082;
        v22 = object_getClassName(a1);
        v23 = 2082;
        v24 = sel_getName("_postEvent:");
        v25 = 1024;
        v26 = 2990;
        v27 = 2080;
        v28 = name;
        v29 = 1024;
        v30 = v5;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to notify %s: %d", buf, 0x32u);
      }
    }

    v15 = +[NFSecureXPCEventPublisherManager sharedManager];
    v16 = [v15 wallet];
    v17 = [[NSString alloc] initWithUTF8String:name];
    if (v16)
    {
      sub_100235394(v16, v17, 1);
    }
  }
}

void sub_1000F0B88(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_postEvent:identifier:additionalData:");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i posting notification: %s with additional data.", v10, ClassName, Name, 3000, a2);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = object_getClass(a1);
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      *buf = 67110146;
      v35 = v13;
      v36 = 2082;
      v37 = object_getClassName(a1);
      v38 = 2082;
      v39 = sel_getName("_postEvent:identifier:additionalData:");
      v40 = 1024;
      v41 = 3000;
      v42 = 2080;
      v43 = a2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i posting notification: %s with additional data.", buf, 0x2Cu);
    }

    v14 = [[NSString alloc] initWithUTF8String:a2];
    v15 = +[NSDistributedNotificationCenter defaultCenter];
    [v15 postNotificationName:v14 object:v5 userInfo:0 options:3];

    v16 = objc_alloc_init(NSMutableDictionary);
    [v16 setObject:v14 forKeyedSubscript:@"xpcEventName"];
    [v16 setObject:v5 forKeyedSubscript:@"xpcEventSimpleString"];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v18 = v17;
      v19 = object_getClass(a1);
      v20 = class_isMetaClass(v19);
      v31 = object_getClassName(a1);
      v33 = sel_getName("_postEvent:identifier:additionalData:");
      v21 = 45;
      if (v20)
      {
        v21 = 43;
      }

      v18(6, "%c[%{public}s %{public}s]:%i XpcPayload %{public}@", v21, v31, v33, 3017, v16);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = object_getClass(a1);
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      v25 = object_getClassName(a1);
      v26 = sel_getName("_postEvent:identifier:additionalData:");
      *buf = 67110146;
      v35 = v24;
      v36 = 2082;
      v37 = v25;
      v38 = 2082;
      v39 = v26;
      v40 = 1024;
      v41 = 3017;
      v42 = 2114;
      v43 = v16;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i XpcPayload %{public}@", buf, 0x2Cu);
    }

    v27 = +[NFSecureXPCEventPublisherManager sharedManager];
    v28 = [v27 wallet];
    v29 = v28;
    if (v28)
    {
      sub_100235634(v28, v16, 1);
    }
  }
}

uint64_t sub_1000F15E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass())) && ([v4 objectForKeyedSubscript:@"session.prevent.ui.popup.on.radio.disabled"], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass))
    {
      v7 = [v4 objectForKeyedSubscript:@"session.prevent.ui.popup.on.radio.disabled"];
      a1 = [v7 BOOLValue] ^ 1;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

id sub_1000F16A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v13 = objc_opt_new();
    if ([v3 count])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v15;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v14 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 length])
            {
              v18[0] = @"ECPData";
              v18[1] = @"IgnoreRFTechOnIsEqual";
              v19[0] = v9;
              v19[1] = &off_100331458;
              v10 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
              v11 = [NFFieldNotification notificationWithDictionary:v10];

              if (v11)
              {
                [v13 addObject:v11];
              }
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
        }

        while (v6);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_1000F1988(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i Refresh express setting due to domain change=%@", v8, ClassName, Name, 3154, *(a1 + 40));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    v12 = object_getClassName(*(a1 + 32));
    v13 = sel_getName(*(a1 + 48));
    v14 = *(a1 + 40);
    *buf = 67110146;
    v17 = v11;
    v18 = 2082;
    v19 = v12;
    v20 = 2082;
    v21 = v13;
    v22 = 1024;
    v23 = 3154;
    v24 = 2112;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Refresh express setting due to domain change=%@", buf, 0x2Cu);
  }

  sub_100036290(*(*(a1 + 32) + 24));
  v15 = +[_NFHardwareManager sharedHardwareManager];
  [v15 maybeStartNextSession];
}

void sub_1000F1BDC(uint64_t a1)
{
  if (sub_100003384(*(a1 + 32)) == 2 || sub_100003384(*(a1 + 32)) == 5)
  {
    v2 = *(*(a1 + 32) + 392);
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v10 = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v11 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = [v5 initWithDomain:v6 code:58 userInfo:v8];
    (*(v4 + 16))(v4, 0, v9);
  }
}

void sub_1000F1E18(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      v4 = *(v3 + 152);
    }

    else
    {
      v4 = 0;
    }

    v5 = sub_100006030(v3);
    if (v1)
    {
      v6 = sub_10003A754(*(v2 + 24));
      if ((v1 & 2) != 0)
      {
LABEL_6:
        v7 = sub_100006D58(*(v2 + 24));
        v8[2](v8, v4, v5, v6, v7);

        if ((v1 & 1) == 0)
        {
          goto LABEL_11;
        }

LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v6 = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_6;
      }
    }

    v8[2](v8, v4, v5, v6, 0);
    if ((v1 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_11:
}

void sub_1000F250C(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i Requested to set AID to %@", v8, ClassName, Name, 3237, *(a1 + 40));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    v12 = object_getClassName(*(a1 + 32));
    v13 = sel_getName(*(a1 + 56));
    v14 = *(a1 + 40);
    *buf = 67110146;
    v40 = v11;
    v41 = 2082;
    v42 = v12;
    v43 = 2082;
    v44 = v13;
    v45 = 1024;
    v46 = 3237;
    v47 = 2112;
    v48 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Requested to set AID to %@", buf, 0x2Cu);
  }

  v15 = sub_1001E17D0(*(*(a1 + 32) + 376), *(a1 + 40));
  if (v15)
  {
    v16 = *(a1 + 48);
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v19 = [v15 code];
    v35[0] = NSLocalizedDescriptionKey;
    if ([v15 code] > 75)
    {
      v20 = 76;
    }

    else
    {
      v20 = [v15 code];
    }

    v23 = [NSString stringWithUTF8String:off_1003184A0[v20]];
    v36[0] = v23;
    v36[1] = v15;
    v35[1] = NSUnderlyingErrorKey;
    v35[2] = @"Line";
    v36[2] = &off_1003314D0;
    v35[3] = @"Method";
    v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v36[3] = v24;
    v35[4] = NSDebugDescriptionErrorKey;
    v25 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 3247];
    v36[4] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:5];
    v27 = [v17 initWithDomain:v18 code:v19 userInfo:v26];
    (*(v16 + 16))(v16, v27);
  }

  else
  {
    v21 = sub_10021D9F4(*(*(a1 + 32) + 376));
    v22 = *(a1 + 48);
    if (v21)
    {
      (*(v22 + 16))(*(a1 + 48), 0);
    }

    else
    {
      v28 = [NSError alloc];
      v29 = [NSString stringWithUTF8String:"nfcd"];
      v37[0] = NSLocalizedDescriptionKey;
      v30 = [NSString stringWithUTF8String:"Stack Error"];
      v38[0] = v30;
      v38[1] = &off_1003314B8;
      v37[1] = @"Line";
      v37[2] = @"Method";
      v31 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v38[2] = v31;
      v37[3] = NSDebugDescriptionErrorKey;
      v32 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 3242];
      v38[3] = v32;
      v33 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:4];
      v34 = [v28 initWithDomain:v29 code:15 userInfo:v33];
      (*(v22 + 16))(v22, v34);
    }
  }
}

void sub_1000F29E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [NSError alloc];
  v6 = [NSString stringWithUTF8String:"nfcd"];
  v7 = [v3 code];
  v14[0] = NSLocalizedDescriptionKey;
  if ([v3 code] > 75)
  {
    v8 = 76;
  }

  else
  {
    v8 = [v3 code];
  }

  v9 = [NSString stringWithUTF8String:off_1003184A0[v8]];
  v15[0] = v9;
  v15[1] = v3;
  v14[1] = NSUnderlyingErrorKey;
  v14[2] = @"Line";
  v15[2] = &off_1003314E8;
  v14[3] = @"Method";
  v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v15[3] = v10;
  v14[4] = NSDebugDescriptionErrorKey;
  v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 3250];
  v15[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];
  v13 = [v5 initWithDomain:v6 code:v7 userInfo:v12];
  (*(v4 + 16))(v4, v13);
}

void sub_1000F2CBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    v5 = *(v1 + 240);
    v6 = sub_10004C224(NFRoutingConfig, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000F250C;
    v10[3] = &unk_100318850;
    v10[4] = v1;
    v13 = "_sync_setAntiRelay:completion:";
    v11 = v3;
    v12 = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F29E0;
    v7[3] = &unk_100318878;
    v8 = v12;
    v9 = "_sync_setAntiRelay:completion:";
    [_NFBuiltinSession createSession:@"Anti relay" workQueue:v5 routing:v6 sessionQueuer:v1 didStartWork:v10 failedToStart:v7];
  }
}

void sub_1000F2EC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v3 = objc_opt_new();
    if (sub_100003384(v1) == 2)
    {
      if ((sub_1000065FC(v1) & 1) == 0)
      {
        v4 = v1[3];
        if (!v4 || *(v4 + 181) != 1)
        {
          v31 = v1[30];
          v32 = sub_10004C224(NFRoutingConfig, 0);
          *buf = _NSConcreteStackBlock;
          *v40 = 3221225472;
          *&v40[8] = sub_1000F3464;
          *&v40[16] = &unk_100318850;
          *&v40[24] = v1;
          v41 = v3;
          v42 = v2;
          v43 = "_sync_rfSettingsWithCompletion:";
          v33 = _NSConcreteStackBlock;
          v34 = 3221225472;
          v35 = sub_1000F3690;
          v36 = &unk_100318878;
          v37 = v42;
          v38 = "_sync_rfSettingsWithCompletion:";
          [_NFBuiltinSession createSession:@"RF settings" workQueue:v31 routing:v32 sessionQueuer:v1 didStartWork:buf failedToStart:&v33];

          goto LABEL_23;
        }
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(v1);
        if (class_isMetaClass(Class))
        {
          v8 = 43;
        }

        else
        {
          v8 = 45;
        }

        ClassName = object_getClassName(v1);
        Name = sel_getName("_sync_rfSettingsWithCompletion:");
        v11 = sub_1000065FC(v1);
        v12 = v1[3];
        if (v12)
        {
          v12 = *(v12 + 181);
        }

        v6(3, "%c[%{public}s %{public}s]:%i Session in progress (%d) or express in progress (%d) - bailing", v8, ClassName, Name, 3278, v11, v12);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = object_getClass(v1);
        if (class_isMetaClass(v14))
        {
          v15 = 43;
        }

        else
        {
          v15 = 45;
        }

        v16 = object_getClassName(v1);
        v17 = sel_getName("_sync_rfSettingsWithCompletion:");
        v18 = sub_1000065FC(v1);
        v19 = v1[3];
        if (v19)
        {
          LODWORD(v19) = *(v19 + 181);
        }

        *buf = 67110402;
        *&buf[4] = v15;
        *v40 = 2082;
        *&v40[2] = v16;
        *&v40[10] = 2082;
        *&v40[12] = v17;
        *&v40[20] = 1024;
        *&v40[22] = 3278;
        *&v40[26] = 1024;
        *&v40[28] = v18;
        LOWORD(v41) = 1024;
        *(&v41 + 2) = v19;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session in progress (%d) or express in progress (%d) - bailing", buf, 0x2Eu);
      }

      v20 = [NSError alloc];
      v21 = [NSString stringWithUTF8String:"nfcd"];
      v33 = NSLocalizedDescriptionKey;
      v22 = [NSString stringWithUTF8String:"Busy"];
      *buf = v22;
      *v40 = &off_100331518;
      v34 = @"Line";
      v35 = @"Method";
      v23 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_rfSettingsWithCompletion:")];
      *&v40[8] = v23;
      v36 = NSDebugDescriptionErrorKey;
      v24 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_rfSettingsWithCompletion:"), 3279];
      *&v40[16] = v24;
      v25 = [NSDictionary dictionaryWithObjects:buf forKeys:&v33 count:4];
      v26 = v20;
      v27 = v21;
      v28 = 2;
    }

    else
    {
      v29 = [NSError alloc];
      v21 = [NSString stringWithUTF8String:"nfcd"];
      v33 = NSLocalizedDescriptionKey;
      v22 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      *buf = v22;
      *v40 = &off_100331500;
      v34 = @"Line";
      v35 = @"Method";
      v23 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_rfSettingsWithCompletion:")];
      *&v40[8] = v23;
      v36 = NSDebugDescriptionErrorKey;
      v24 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_rfSettingsWithCompletion:"), 3273];
      *&v40[16] = v24;
      v25 = [NSDictionary dictionaryWithObjects:buf forKeys:&v33 count:4];
      v26 = v29;
      v27 = v21;
      v28 = 58;
    }

    v30 = [v26 initWithDomain:v27 code:v28 userInfo:v25];
    (*(v2 + 2))(v2, 0, v30);

LABEL_23:
  }
}

void sub_1000F3464(uint64_t a1)
{
  v2 = sub_1001E0EDC(*(*(a1 + 32) + 376), *(a1 + 40));
  v3 = *(a1 + 48);
  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = *(v3 + 16);
    v6 = *(a1 + 48);

    v5(v6, v4, 0);
  }

  else
  {
    v7 = [NSError alloc];
    v8 = [NSString stringWithUTF8String:"nfcd"];
    v14[0] = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v15[0] = v9;
    v15[1] = &off_100331530;
    v14[1] = @"Line";
    v14[2] = @"Method";
    v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v15[2] = v10;
    v14[3] = NSDebugDescriptionErrorKey;
    v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 3291];
    v15[3] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
    v13 = [v7 initWithDomain:v8 code:14 userInfo:v12];
    (*(v3 + 16))(v3, 0, v13);
  }
}

void sub_1000F3690(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [NSError alloc];
  v6 = [NSString stringWithUTF8String:"nfcd"];
  v7 = [v3 code];
  v14[0] = NSLocalizedDescriptionKey;
  if ([v3 code] > 75)
  {
    v8 = 76;
  }

  else
  {
    v8 = [v3 code];
  }

  v9 = [NSString stringWithUTF8String:off_1003184A0[v8]];
  v15[0] = v9;
  v15[1] = v3;
  v14[1] = NSUnderlyingErrorKey;
  v14[2] = @"Line";
  v15[2] = &off_100331548;
  v14[3] = @"Method";
  v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v15[3] = v10;
  v14[4] = NSDebugDescriptionErrorKey;
  v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 3294];
  v15[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];
  v13 = [v5 initWithDomain:v6 code:v7 userInfo:v12];
  (*(v4 + 16))(v4, 0, v13);
}

void sub_1000F3988(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[29])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v9 = [*(a1 + 40) NF_clientName];
      v28 = [*(a1 + 40) processIdentifier];
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v4(6, "%c[%{public}s %{public}s]:%i Returning cached dieID for %@ (pid %d)", v10, ClassName, Name, 3304, v9, v28);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      v14 = object_getClassName(*(a1 + 32));
      v15 = sel_getName(*(a1 + 56));
      v16 = [*(a1 + 40) NF_clientName];
      v17 = [*(a1 + 40) processIdentifier];
      *buf = 67110402;
      *&buf[4] = v13;
      *v36 = 2082;
      *&v36[2] = v14;
      *&v36[10] = 2082;
      *&v36[12] = v15;
      *&v36[20] = 1024;
      *&v36[22] = 3304;
      *&v36[26] = 2112;
      *&v36[28] = v16;
      *&v36[36] = 1024;
      *&v36[38] = v17;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Returning cached dieID for %@ (pid %d)", buf, 0x32u);
    }

    v18 = *(*(a1 + 32) + 232);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v19 = *(a1 + 48);
    if (sub_100003384(v2) == 2 || sub_100003384(v2) == 5)
    {
      v20 = [v2 lastKnownRoutingConfig];
      if (!v20)
      {
        v20 = [v2 defaultRoutingConfig:3];
      }

      v21 = v2[30];
      *buf = _NSConcreteStackBlock;
      *v36 = 3221225472;
      *&v36[8] = sub_1000F3E20;
      *&v36[16] = &unk_1003188C8;
      *&v36[24] = v2;
      *&v36[32] = v19;
      *&v36[40] = "_sync_getDieIDWithCompletion:";
      v29 = _NSConcreteStackBlock;
      v30 = 3221225472;
      v31 = sub_1000F402C;
      v32 = &unk_100318878;
      v33 = *&v36[32];
      v34 = "_sync_getDieIDWithCompletion:";
      [_NFBuiltinSession createSession:@"DieID" workQueue:v21 routing:v20 sessionQueuer:v2 didStartWork:buf failedToStart:&v29];
    }

    else
    {
      v22 = [NSError alloc];
      v20 = [NSString stringWithUTF8String:"nfcd"];
      v29 = NSLocalizedDescriptionKey;
      v23 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      *buf = v23;
      *v36 = &off_100331560;
      v30 = @"Line";
      v31 = @"Method";
      v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_getDieIDWithCompletion:")];
      *&v36[8] = v24;
      v32 = NSDebugDescriptionErrorKey;
      v25 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_getDieIDWithCompletion:"), 3315];
      *&v36[16] = v25;
      v26 = [NSDictionary dictionaryWithObjects:buf forKeys:&v29 count:4];
      v27 = [v22 initWithDomain:v20 code:58 userInfo:v26];
      (*(v19 + 2))(v19, 0, v27);
    }
  }
}

void sub_1000F3E20(uint64_t a1)
{
  v2 = sub_100221138(*(*(a1 + 32) + 376));
  objc_storeStrong((*(a1 + 32) + 232), v2);
  v3 = *(a1 + 40);
  if (v2)
  {
    (*(v3 + 16))(*(a1 + 40), v2, 0);
  }

  else
  {
    v4 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v11[0] = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"Unknown Error"];
    v12[0] = v6;
    v12[1] = &off_100331578;
    v11[1] = @"Line";
    v11[2] = @"Method";
    v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v12[2] = v7;
    v11[3] = NSDebugDescriptionErrorKey;
    v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 3332];
    v12[3] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
    v10 = [v4 initWithDomain:v5 code:6 userInfo:v9];
    (*(v3 + 16))(v3, 0, v10);
  }
}

void sub_1000F402C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [NSError alloc];
  v6 = [NSString stringWithUTF8String:"nfcd"];
  v7 = [v3 code];
  v14[0] = NSLocalizedDescriptionKey;
  if ([v3 code] > 75)
  {
    v8 = 76;
  }

  else
  {
    v8 = [v3 code];
  }

  v9 = [NSString stringWithUTF8String:off_1003184A0[v8]];
  v15[0] = v9;
  v15[1] = v3;
  v14[1] = NSUnderlyingErrorKey;
  v14[2] = @"Line";
  v15[2] = &off_100331590;
  v14[3] = @"Method";
  v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v15[3] = v10;
  v14[4] = NSDebugDescriptionErrorKey;
  v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 3334];
  v15[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];
  v13 = [v5 initWithDomain:v6 code:v7 userInfo:v12];
  (*(v4 + 16))(v4, 0, v13);
}

void sub_1000F42E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    if (sub_100003384(v1) == 2 || sub_100003384(v1) == 5)
    {
      v3 = [v1 lastKnownRoutingConfig];
      if (!v3)
      {
        v3 = [v1 defaultRoutingConfig:3];
      }

      v4 = v1[30];
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_1000F45DC;
      v20 = &unk_1003188F0;
      v21 = v1;
      v22 = v2;
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_1000F4654;
      v14 = &unk_100318878;
      v15 = v22;
      v16 = "_sync_getUniqueFDRKeyWithCompletion:";
      [_NFBuiltinSession createSession:@"FDRKey" workQueue:v4 routing:v3 sessionQueuer:v1 didStartWork:&v17 failedToStart:&v11];
    }

    else
    {
      v5 = [NSError alloc];
      v3 = [NSString stringWithUTF8String:"nfcd"];
      v11 = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      v17 = v6;
      v18 = &off_1003315A8;
      v12 = @"Line";
      v13 = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_getUniqueFDRKeyWithCompletion:")];
      v19 = v7;
      v14 = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_getUniqueFDRKeyWithCompletion:"), 3348];
      v20 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v11 count:4];
      v10 = [v5 initWithDomain:v3 code:58 userInfo:v9];
      (*(v2 + 2))(v2, 0, v10);
    }
  }
}

void sub_1000F45DC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 376);
  v5 = 0;
  v3 = sub_100221348(v2, &v5);
  v4 = v5;
  (*(*(a1 + 40) + 16))();
}

void sub_1000F4654(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [NSError alloc];
  v6 = [NSString stringWithUTF8String:"nfcd"];
  v7 = [v3 code];
  v14[0] = NSLocalizedDescriptionKey;
  if ([v3 code] > 75)
  {
    v8 = 76;
  }

  else
  {
    v8 = [v3 code];
  }

  v9 = [NSString stringWithUTF8String:off_1003184A0[v8]];
  v15[0] = v9;
  v15[1] = v3;
  v14[1] = NSUnderlyingErrorKey;
  v14[2] = @"Line";
  v15[2] = &off_1003315C0;
  v14[3] = @"Method";
  v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v15[3] = v10;
  v14[4] = NSDebugDescriptionErrorKey;
  v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 3366];
  v15[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];
  v13 = [v5 initWithDomain:v6 code:v7 userInfo:v12];
  (*(v4 + 16))(v4, 0, v13);
}

void sub_1000F4908(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = sub_1000F4A20(*(a1 + 32));
  [v2 addEntriesFromDictionary:v3];

  v7 = @"Recovery";
  v4 = sub_100210FEC();
  v5 = sub_100211480(v4);
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v2 addEntriesFromDictionary:v6];

  (*(*(a1 + 40) + 16))();
}

id sub_1000F4A20(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = [NSNumber numberWithInteger:*(a1 + 296)];
    [v2 setObject:v3 forKeyedSubscript:@"radio"];

    v4 = *(a1 + 392);
    if (v4)
    {
      v5 = [v4 asDictionary];
      [v2 setObject:v5 forKeyedSubscript:@"controller"];
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = [v6 asDictionary];
      [v2 setObject:v7 forKeyedSubscript:@"embeddedSE"];
    }

    if (*(a1 + 340))
    {
      v8 = [NSNumber numberWithShort:?];
      [v2 setObject:v8 forKeyedSubscript:@"ATE Trim Version"];
    }

    objc_opt_self();
    v9 = [NSNumber numberWithBool:byte_10035DB90];
    [v2 setObject:v9 forKeyedSubscript:@"authRandomEntangled"];

    v10 = *(a1 + 384);
    if (v10)
    {
      v11 = [v10 cachedAppletsUnfiltered];

      if (v11)
      {
        v12 = objc_opt_new();
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        v154 = 0u;
        v13 = [*(a1 + 384) cachedAppletsUnfiltered];
        v14 = [v13 countByEnumeratingWithState:&v151 objects:v166 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v152;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v152 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [*(*(&v151 + 1) + 8 * i) description];
              [v12 addObject:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v151 objects:v166 count:16];
          }

          while (v15);
        }

        [v2 setObject:v12 forKeyedSubscript:@"embeddedSEApplets"];
      }
    }

    v19 = [NSNumber numberWithBool:*(a1 + 344)];
    [v2 setObject:v19 forKeyedSubscript:@"isRunning"];

    v20 = [NSNumber numberWithUnsignedInt:sub_100003384(a1)];
    [v2 setObject:v20 forKeyedSubscript:@"hwState"];

    v21 = [NSNumber numberWithBool:*(a1 + 364)];
    [v2 setObject:v21 forKeyedSubscript:@"User shutdown"];

    v22 = [NSNumber numberWithBool:*(a1 + 351)];
    [v2 setObject:v22 forKeyedSubscript:@"Will Sleep"];

    v23 = [NSNumber numberWithBool:*(a1 + 363)];
    [v2 setObject:v23 forKeyedSubscript:@"Recovery"];

    v24 = [NSNumber numberWithBool:*(a1 + 348)];
    [v2 setObject:v24 forKeyedSubscript:@"SE Active"];

    v25 = [NSNumber numberWithBool:*(a1 + 350)];
    [v2 setObject:v25 forKeyedSubscript:@"Updated Pairing"];

    v26 = *(a1 + 24);
    if (v26)
    {
      LOBYTE(v26) = *(v26 + 181);
    }

    v27 = [NSNumber numberWithBool:v26 & 1];
    [v2 setObject:v27 forKeyedSubscript:@"expressModeInProgress"];

    v28 = [NSNumber numberWithBool:*(a1 + 345)];
    [v2 setObject:v28 forKeyedSubscript:@"didPreWarmHardware"];

    v29 = *(a1 + 224);
    if (v29)
    {
      v30 = [v29 description];
      [v2 setObject:v30 forKeyedSubscript:@"Last OS Reset"];
    }

    v31 = *(a1 + 136);
    if (v31)
    {
      v32 = [v31 description];
      [v2 setObject:v32 forKeyedSubscript:@"Post startup timer"];
    }

    v33 = *(a1 + 152);
    if (v33)
    {
      v34 = [v33 description];
      [v2 setObject:v34 forKeyedSubscript:@"DPD Check timer"];
    }

    v35 = *(a1 + 184);
    if (v35)
    {
      v36 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v35 count]);
      [v2 setObject:v36 forKeyedSubscript:@"numQueuedSessions"];
    }

    else
    {
      [v2 setObject:&off_1003313E0 forKeyedSubscript:@"numQueuedSessions"];
    }

    if (*(a1 + 120))
    {
      v37 = @"YES";
    }

    else
    {
      v37 = @"NO";
    }

    [v2 setObject:v37 forKeyedSubscript:@"hasCurrentSession"];
    if (*(a1 + 120))
    {
      v38 = [objc_opt_class() description];
      [v2 setObject:v38 forKeyedSubscript:@"currentSessionType"];

      v39 = [*(a1 + 120) clientName];
      if (v39)
      {
        v40 = [*(a1 + 120) clientName];
        [v2 setObject:v40 forKeyedSubscript:@"currentSessionOwner"];
      }

      else
      {
        [v2 setObject:&stru_10031EA18 forKeyedSubscript:@"currentSessionOwner"];
      }

      v41 = [*(a1 + 120) creation];
      v42 = [v41 description];
      [v2 setObject:v42 forKeyedSubscript:@"currentSessionCreation"];

      v43 = [*(a1 + 120) dequeueDate];
      v44 = [v43 description];
      [v2 setObject:v44 forKeyedSubscript:@"currentSessionDequeue"];

      v45 = [*(a1 + 120) sessionUID];
      [v2 setObject:v45 forKeyedSubscript:@"currentSessionUID"];
    }

    v46 = [a1 lastKnownRoutingConfig];
    v47 = [v46 description];
    [v2 setObject:v47 forKeyedSubscript:@"routingConfig"];

    if (NF_isFeatureSupported())
    {
      v48 = sub_10003AB1C(*(a1 + 24));
      [v2 setObject:v48 forKeyedSubscript:@"expressModeState"];
    }

    v49 = sub_10021E530(*(a1 + 376));
    [v2 setObject:v49 forKeyedSubscript:@"driverwrapperState"];

    v50 = sub_1002261A0();
    v51 = sub_100229A08(v50);
    [v2 setObject:v51 forKeyedSubscript:@"LPEMState"];

    v128 = a1;
    v52 = [NSNumber numberWithInteger:*(a1 + 312)];
    v129 = v2;
    [v2 setObject:v52 forKeyedSubscript:@"Reader Session suspension count"];

    v53 = objc_opt_new();
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v54 = [&off_100339030 countByEnumeratingWithState:&v159 objects:v168 count:16];
    if (v54)
    {
      v55 = v54;
      v136 = *v160;
      do
      {
        for (j = 0; j != v55; j = j + 1)
        {
          if (*v160 != v136)
          {
            objc_enumerationMutation(&off_100339030);
          }

          v57 = [[NSUserDefaults alloc] initWithSuiteName:*(*(&v159 + 1) + 8 * j)];
          v155 = 0u;
          v156 = 0u;
          v157 = 0u;
          v158 = 0u;
          v58 = [&off_100339018 countByEnumeratingWithState:&v155 objects:v167 count:16];
          if (v58)
          {
            v59 = v58;
            v60 = *v156;
            do
            {
              for (k = 0; k != v59; k = k + 1)
              {
                if (*v156 != v60)
                {
                  objc_enumerationMutation(&off_100339018);
                }

                v62 = *(*(&v155 + 1) + 8 * k);
                v63 = [v57 objectForKey:v62];
                if (v63)
                {
                  [v53 setObject:v63 forKeyedSubscript:v62];
                }
              }

              v59 = [&off_100339018 countByEnumeratingWithState:&v155 objects:v167 count:16];
            }

            while (v59);
          }
        }

        v55 = [&off_100339030 countByEnumeratingWithState:&v159 objects:v168 count:16];
      }

      while (v55);
    }

    [v129 setObject:v53 forKeyedSubscript:@"settings"];

    if ([*(v128 + 216) checkResourceIsReachableAndReturnError:0])
    {
      v64 = [[NSDictionary alloc] initWithContentsOfURL:*(v128 + 216)];
      [v129 setObject:v64 forKeyedSubscript:@"LPCDFalseDetects"];
    }

    v65 = *(v128 + 208);
    if (v65)
    {
      [v129 setObject:v65 forKeyedSubscript:@"LPEMLoggingFTA"];
    }

    v66 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
    v67 = [[NSString alloc] initWithUTF8String:"NFCD built from (B&I) Stockholm_Base-361.6"];
    [v129 setObject:v67 forKeyedSubscript:@"buildInfo"];

    if (*(v128 + 32))
    {
      v68 = [NSString alloc];
      v69 = *(v128 + 32);
      v70 = [v68 initWithFormat:@"Persistent=%d, COR=%d, CODS=%d, idx=%d/%d, availablePersistent=%d, eUICC=%d, reservedCODS=%d, maxMappedCODS=%d, tmpOSU=%d, OSU=%d, tmpCommon=%d, reservedCommon=%d", *v69, v69[1], v69[2], v69[3], v69[4], v69[5], v69[6], v69[7], v69[8], v69[9], v69[10], v69[11], v69[12]];
      [v129 setObject:v70 forKeyedSubscript:@"SE Memory"];
    }

    v71 = [*(v128 + 192) copy];
    v134 = objc_opt_new();
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    obj = v71;
    v72 = [obj countByEnumeratingWithState:&v147 objects:v165 count:16];
    if (v72)
    {
      v73 = v72;
      v137 = *v148;
      do
      {
        for (m = 0; m != v73; m = m + 1)
        {
          if (*v148 != v137)
          {
            objc_enumerationMutation(obj);
          }

          v75 = *(*(&v147 + 1) + 8 * m);
          v76 = [NSString alloc];
          v77 = [v75 sessionUID];
          v78 = [v75 clientName];
          v79 = [v75 processIdentifier];
          v80 = +[NSDate now];
          v81 = [v75 dequeueDate];
          [v80 timeIntervalSinceDate:v81];
          v83 = v82;
          v84 = [v75 creation];
          v85 = [v84 description];
          v86 = [v76 initWithFormat:@"%@ for %@ (%d) for %f seconds, created %@", v77, v78, v79, v83, v85];

          v66 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
          [v134 addObject:v86];
        }

        v73 = [obj countByEnumeratingWithState:&v147 objects:v165 count:16];
      }

      while (v73);
    }

    [v129 setObject:v134 forKeyedSubscript:@"SuspendedSessionQueue"];
    v87 = +[NFPowerAssertion sharedPowerAssertion];
    v88 = [v87 dumpState];
    [v129 addEntriesFromDictionary:v88];

    v89 = *(v128 + 416);
    if (v89)
    {
      v90 = [v89 dumpState];
      [v129 setObject:v90 forKeyedSubscript:@"Background Tag Reading"];
    }

    v91 = objc_opt_new();
    v127 = objc_getProperty(v128, v92, 176, 1);
    objc_sync_enter(v127);
    v93 = [*(v128 + 176) copy];
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v131 = v93;
    v135 = [v131 countByEnumeratingWithState:&v143 objects:v164 count:16];
    if (v135)
    {
      v133 = *v144;
      v130 = v91;
      do
      {
        for (n = 0; n != v135; n = n + 1)
        {
          if (*v144 != v133)
          {
            objc_enumerationMutation(v131);
          }

          v95 = *(*(&v143 + 1) + 8 * n);
          v96 = [v95 processIdentifier];
          v97 = [v95 NF_userInfo];
          v98 = [v97 objectsForKeys:&off_100339048 notFoundMarker:&stru_10031EA18];

          v99 = [v95 NF_userInfo];
          v100 = [v99 objectForKeyedSubscript:@"ConnectTime"];

          v101 = objc_alloc(v66[475]);
          v102 = [v100 description];
          v103 = [v101 initWithFormat:@"%d (%@)", v96, v102];

          v138 = v98;
          v104 = [NSMutableDictionary dictionaryWithObjects:v98 forKeys:&off_100339048];
          [v91 setObject:v104 forKeyedSubscript:v103];

          v105 = [v95 NF_clientName];
          v106 = [v91 objectForKeyedSubscript:v103];
          [v106 setObject:v105 forKeyedSubscript:@"ClientName"];

          v107 = [v91 objectForKeyedSubscript:v103];
          v108 = [v107 objectForKeyedSubscript:@"assertions"];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v108 count])
          {
            v109 = objc_opt_new();
            v139 = 0u;
            v140 = 0u;
            v141 = 0u;
            v142 = 0u;
            v110 = v108;
            v111 = [v110 countByEnumeratingWithState:&v139 objects:v163 count:16];
            if (v111)
            {
              v112 = v111;
              v113 = *v140;
              do
              {
                for (ii = 0; ii != v112; ii = ii + 1)
                {
                  if (*v140 != v113)
                  {
                    objc_enumerationMutation(v110);
                  }

                  v115 = [*(*(&v139 + 1) + 8 * ii) description];
                  [v109 addObject:v115];
                }

                v112 = [v110 countByEnumeratingWithState:&v139 objects:v163 count:16];
              }

              while (v112);
            }

            v91 = v130;
            v116 = [v130 objectForKeyedSubscript:v103];
            [v116 setObject:v109 forKeyedSubscript:@"assertions"];

            v66 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
          }

          v117 = [v91 objectForKeyedSubscript:v103];
          v118 = [v117 objectForKeyedSubscript:@"CallbackUUID"];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v119 = [v118 UUIDString];
            v120 = [v91 objectForKeyedSubscript:v103];
            [v120 setObject:v119 forKeyedSubscript:@"CallbackUUID"];
          }
        }

        v135 = [v131 countByEnumeratingWithState:&v143 objects:v164 count:16];
      }

      while (v135);
    }

    v121 = v129;
    v122 = *(v128 + 424);
    if (v122)
    {
      [v129 setObject:v122 forKeyedSubscript:@"CHAssertionForCamera"];
    }

    objc_sync_exit(v127);
    [v129 setObject:v91 forKeyedSubscript:@"XPCs"];
    v123 = [*(v128 + 160) allKeys];
    [v129 setObject:v123 forKeyedSubscript:@"callbackHandlers"];

    v124 = [*(v128 + 128) dumpState];
    [v129 setObject:v124 forKeyedSubscript:@"walletPresentationService"];

    v125 = [*(v128 + 16) getStateDumpInfo];
    [v129 addEntriesFromDictionary:v125];
  }

  else
  {
    v121 = 0;
  }

  return v121;
}

void sub_1000F5B54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    if (sub_100003384(v1) == 2)
    {
      if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v5 = *(v1 + 240);
        v6 = sub_10004C224(NFRoutingConfig, 0);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1000F5E68;
        v19[3] = &unk_100318918;
        v19[4] = v1;
        v20 = v3;
        v21 = v4;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1000F5ECC;
        v16[3] = &unk_100316598;
        v16[4] = v1;
        v18 = "_sync_pushSignedRF:completion:";
        v17 = v21;
        [_NFBuiltinSession createSession:@"RF settings" workQueue:v5 routing:v6 sessionQueuer:v1 didStartWork:v19 failedToStart:v16];

        goto LABEL_9;
      }

      v14 = [NSError alloc];
      v8 = [NSString stringWithUTF8String:"nfcd"];
      v16[0] = NSLocalizedDescriptionKey;
      v9 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v19[0] = v9;
      v10 = [NSDictionary dictionaryWithObjects:v19 forKeys:v16 count:1];
      v11 = v14;
      v12 = v8;
      v13 = 10;
    }

    else
    {
      v7 = [NSError alloc];
      v8 = [NSString stringWithUTF8String:"nfcd"];
      v16[0] = NSLocalizedDescriptionKey;
      v9 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      v19[0] = v9;
      v10 = [NSDictionary dictionaryWithObjects:v19 forKeys:v16 count:1];
      v11 = v7;
      v12 = v8;
      v13 = 58;
    }

    v15 = [v11 initWithDomain:v12 code:v13 userInfo:v10];
    (*(v4 + 2))(v4, v15);
  }

LABEL_9:
}

void sub_1000F5E68(uint64_t a1)
{
  v2 = sub_1001E14A8(*(*(a1 + 32) + 376), *(a1 + 40));
  (*(*(a1 + 48) + 16))();
}

void sub_1000F5ECC(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Failed to push signed rf: %{public}@", v8, ClassName, Name, 3459, v3);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    v12 = object_getClassName(*(a1 + 32));
    v13 = sel_getName(*(a1 + 48));
    *buf = 67110146;
    v29 = v11;
    v30 = 2082;
    v31 = v12;
    v32 = 2082;
    v33 = v13;
    v34 = 1024;
    v35 = 3459;
    v36 = 2114;
    v37 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to push signed rf: %{public}@", buf, 0x2Cu);
  }

  v14 = *(a1 + 40);
  v15 = [NSError alloc];
  v16 = [NSString stringWithUTF8String:"nfcd"];
  v17 = [v3 code];
  v26[0] = NSLocalizedDescriptionKey;
  if ([v3 code] > 75)
  {
    v18 = 76;
  }

  else
  {
    v18 = [v3 code];
  }

  v19 = [NSString stringWithUTF8String:off_1003184A0[v18]];
  v27[0] = v19;
  v27[1] = v3;
  v26[1] = NSUnderlyingErrorKey;
  v26[2] = @"Line";
  v27[2] = &off_1003315D8;
  v26[3] = @"Method";
  v20 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
  v27[3] = v20;
  v26[4] = NSDebugDescriptionErrorKey;
  v21 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 3460];
  v27[4] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:5];
  v23 = [v15 initWithDomain:v16 code:v17 userInfo:v22];
  (*(v14 + 16))(v14, v23);
}

void sub_1000F62EC(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v3;
  if (v2)
  {
    v48 = v3;
    v5 = [v3 NF_clientName];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v7 = "Disabling";
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(v2);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v2);
      Name = sel_getName("_sync_setFieldDetectEnabled:connection:");
      if (v1)
      {
        v7 = "Enabling";
      }

      v12 = v1;
      v13 = *(v2 + 16);
      v47 = [v13 totalPersistentClient];
      v14 = 43;
      if (!isMetaClass)
      {
        v14 = 45;
      }

      v8(6, "%c[%{public}s %{public}s]:%i %s (%lu clients) persistent field detect by %{public}@", v14, ClassName, Name, 3479, v7, v47, v5);

      v1 = v12;
    }

    v50 = v5;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = object_getClass(v2);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      v52 = v17;
      v18 = object_getClassName(v2);
      v19 = sel_getName("_sync_setFieldDetectEnabled:connection:");
      if (v1)
      {
        v20 = "Enabling";
      }

      else
      {
        v20 = "Disabling";
      }

      v21 = *(v2 + 16);
      v22 = v1;
      v23 = [v21 totalPersistentClient];

      *buf = 67110658;
      *&buf[4] = v52;
      v56 = 2082;
      v57 = v18;
      v58 = 2082;
      v59 = v19;
      v60 = 1024;
      v61 = 3479;
      v62 = 2080;
      v63 = v20;
      v64 = 2048;
      v65 = v23;
      v1 = v22;
      v66 = 2114;
      v67 = v50;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %s (%lu clients) persistent field detect by %{public}@", buf, 0x40u);
    }

    if (sub_100003384(v2) == 2)
    {
      v24 = *(v2 + 376);
      if (!v24 || (*(v24 + 173) & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v30 = NFLogGetLogger();
        if (v30)
        {
          v31 = v30;
          v32 = object_getClass(v2);
          v33 = class_isMetaClass(v32);
          v34 = object_getClassName(v2);
          v46 = sel_getName("_sync_setFieldDetectEnabled:connection:");
          v35 = 45;
          if (v33)
          {
            v35 = 43;
          }

          v31(4, "%c[%{public}s %{public}s]:%i Device does not have antenna", v35, v34, v46, 3486);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v36 = NFSharedLogGetLogger();
        v37 = v50;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v38 = object_getClass(v2);
          if (class_isMetaClass(v38))
          {
            v39 = 43;
          }

          else
          {
            v39 = 45;
          }

          v40 = object_getClassName(v2);
          v41 = sel_getName("_sync_setFieldDetectEnabled:connection:");
          *buf = 67109890;
          *&buf[4] = v39;
          v56 = 2082;
          v57 = v40;
          v58 = 2082;
          v59 = v41;
          v60 = 1024;
          v61 = 3486;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Device does not have antenna", buf, 0x22u);
        }

        v42 = [NSError alloc];
        v43 = [NSString stringWithUTF8String:"nfcd"];
        v54 = NSLocalizedDescriptionKey;
        v44 = [NSString stringWithUTF8String:"Feature Not Supported"];
        *buf = v44;
        v45 = [NSDictionary dictionaryWithObjects:buf forKeys:&v54 count:1];
        v53 = [v42 initWithDomain:v43 code:14 userInfo:v45];

        v4 = v48;
        goto LABEL_35;
      }

      v25 = *(v2 + 16);
      v4 = v48;
      if (v1)
      {
        [v25 addPersistentFieldObserver:v48];
      }

      else
      {
        [v25 removePersistentFieldObserver:v48];
      }

      [v2 maybeStartNextSession];
      v53 = 0;
    }

    else
    {
      v26 = [NSError alloc];
      v27 = [NSString stringWithUTF8String:"nfcd"];
      v54 = NSLocalizedDescriptionKey;
      v28 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      *buf = v28;
      v29 = [NSDictionary dictionaryWithObjects:buf forKeys:&v54 count:1];
      v53 = [v26 initWithDomain:v27 code:58 userInfo:v29];

      v4 = v48;
    }

    v37 = v50;
LABEL_35:

    goto LABEL_36;
  }

  v53 = 0;
LABEL_36:

  (*(*(a1 + 48) + 16))();
}

void sub_1000F6D50(uint64_t a1)
{
  v2 = [*(a1 + 32) NF_callbackUUID];
  if (v2 && ([*(a1 + 40) isEqual:v2] & 1) == 0)
  {
    v3 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v6 = [*(a1 + 32) processIdentifier];
      v7[0] = 67109378;
      v7[1] = v6;
      v8 = 2112;
      v9 = v2;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Already had a callback UUID registered for XPC Connection (PID: %d, UUID: %@). Removing the old one", v7, 0x12u);
    }

    v4 = [v2 UUIDString];
    v5 = *(*(a1 + 48) + 160);
    objc_sync_enter(v5);
    [*(*(a1 + 48) + 160) removeObjectForKey:v4];
    objc_sync_exit(v5);
  }

  [*(a1 + 32) NF_setCallbackUUID:*(a1 + 40)];
}

void sub_1000F70BC(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v2 = *(a1 + 40);
  if (*(*(a1 + 32) + 40))
  {
    v5 = *(*(a1 + 32) + 40);
    v3 = [NSArray arrayWithObjects:&v5 count:1];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;
  (*(v2 + 16))(v2, v3);

  os_unfair_lock_unlock((*(a1 + 32) + 48));
}

void sub_1000F7478(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    if (sub_100003384(v2) == 2)
    {
      v4 = [v2 lastKnownRoutingConfig];
      if (!v4)
      {
        v4 = [v2 defaultRoutingConfig:3];
      }

      v5 = v2[30];
      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_1000F7770;
      v22 = &unk_1003189D8;
      v23 = v2;
      v26 = v1;
      v24 = v3;
      v25 = "_sync_triggerDelayedWake:completion:";
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_1000F7B5C;
      v15 = &unk_100316598;
      v16 = v2;
      v18 = "_sync_triggerDelayedWake:completion:";
      v17 = v24;
      [_NFBuiltinSession createSession:@"Delayed Wake" workQueue:v5 routing:v4 sessionQueuer:v2 didStartWork:&v19 failedToStart:&v12];
    }

    else
    {
      v6 = [NSError alloc];
      v4 = [NSString stringWithUTF8String:"nfcd"];
      v12 = NSLocalizedDescriptionKey;
      v7 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      v19 = v7;
      v20 = &off_100331608;
      v13 = @"Line";
      v14 = @"Method";
      v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_triggerDelayedWake:completion:")];
      v21 = v8;
      v15 = NSDebugDescriptionErrorKey;
      v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_triggerDelayedWake:completion:"), 3649];
      v22 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v12 count:4];
      v11 = [v6 initWithDomain:v4 code:58 userInfo:v10];
      (*(v3 + 2))(v3, v11);
    }
  }
}

void sub_1000F7770(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  if (sub_1001EAB6C(*(*(a1 + 32) + 376)))
  {
    *(*(a1 + 32) + 353) = 1;
    (*(*(a1 + 40) + 16))();
    [v3 dontEndAfterWork];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i Delaying session close for %d seconds", v11, ClassName, Name, 3675, *(a1 + 56) + 1);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(*(a1 + 32));
      v16 = sel_getName(*(a1 + 48));
      v17 = *(a1 + 56) + 1;
      *buf = 67110146;
      v32 = v14;
      v33 = 2082;
      v34 = v15;
      v35 = 2082;
      v36 = v16;
      v37 = 1024;
      v38 = 3675;
      v39 = 1024;
      v40 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Delaying session close for %d seconds", buf, 0x28u);
    }

    v18 = dispatch_time(0, 1000000000 * *(a1 + 56) + 1000000000);
    v19 = *(a1 + 32);
    v20 = *(v19 + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F7B40;
    block[3] = &unk_100315FA8;
    block[4] = v19;
    v30 = v3;
    dispatch_after(v18, v20, block);
  }

  else
  {
    v21 = *(a1 + 40);
    v22 = [NSError alloc];
    v23 = [NSString stringWithUTF8String:"nfcd"];
    v41[0] = NSLocalizedDescriptionKey;
    v24 = [NSString stringWithUTF8String:"Stack Error"];
    v42[0] = v24;
    v42[1] = &off_100331620;
    v41[1] = @"Line";
    v41[2] = @"Method";
    v25 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v42[2] = v25;
    v41[3] = NSDebugDescriptionErrorKey;
    v26 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 3665];
    v42[3] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:4];
    v28 = [v22 initWithDomain:v23 code:15 userInfo:v27];
    (*(v21 + 16))(v21, v28);
  }
}

void sub_1000F7B5C(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v5(3, "%c[%{public}s %{public}s]:%i Failed to push signed rf: %{public}@", v8, ClassName, Name, 3681, v3);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    v12 = object_getClassName(*(a1 + 32));
    v13 = sel_getName(*(a1 + 48));
    *buf = 67110146;
    v29 = v11;
    v30 = 2082;
    v31 = v12;
    v32 = 2082;
    v33 = v13;
    v34 = 1024;
    v35 = 3681;
    v36 = 2114;
    v37 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to push signed rf: %{public}@", buf, 0x2Cu);
  }

  v14 = *(a1 + 40);
  v15 = [NSError alloc];
  v16 = [NSString stringWithUTF8String:"nfcd"];
  v17 = [v3 code];
  v26[0] = NSLocalizedDescriptionKey;
  if ([v3 code] > 75)
  {
    v18 = 76;
  }

  else
  {
    v18 = [v3 code];
  }

  v19 = [NSString stringWithUTF8String:off_1003184A0[v18]];
  v27[0] = v19;
  v27[1] = v3;
  v26[1] = NSUnderlyingErrorKey;
  v26[2] = @"Line";
  v27[2] = &off_100331638;
  v26[3] = @"Method";
  v20 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
  v27[3] = v20;
  v26[4] = NSDebugDescriptionErrorKey;
  v21 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 3682];
  v27[4] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:5];
  v23 = [v15 initWithDomain:v16 code:v17 userInfo:v22];
  (*(v14 + 16))(v14, v23);
}

void sub_1000F7F44(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    if (sub_100003384(v2) == 2)
    {
      if (NFIsInternalBuild())
      {
        v4 = *(v2 + 240);
        v5 = sub_10004BF2C();
        v23 = _NSConcreteStackBlock;
        v24 = 3221225472;
        v25 = sub_1000F8344;
        v26 = &unk_100318A48;
        v27 = v2;
        v30 = v1;
        v28 = v3;
        v29 = "_sync_triggerCrash:completion:";
        v17 = _NSConcreteStackBlock;
        v18 = 3221225472;
        v19 = sub_1000F8710;
        v20 = &unk_100318878;
        v21 = v28;
        v22 = "_sync_triggerCrash:completion:";
        [_NFBuiltinSession createSession:@"Crash" workQueue:v4 routing:v5 sessionQueuer:v2 didStartWork:&v23 failedToStart:&v17];

        goto LABEL_8;
      }

      v15 = [NSError alloc];
      v7 = [NSString stringWithUTF8String:"nfcd"];
      v17 = NSLocalizedDescriptionKey;
      v8 = [NSString stringWithUTF8String:"Feature Not Supported"];
      v23 = v8;
      v24 = &off_100331668;
      v18 = @"Line";
      v19 = @"Method";
      v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_triggerCrash:completion:")];
      v25 = v9;
      v20 = NSDebugDescriptionErrorKey;
      v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_triggerCrash:completion:"), 3700];
      v26 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v17 count:4];
      v12 = v15;
      v13 = v7;
      v14 = 14;
    }

    else
    {
      v6 = [NSError alloc];
      v7 = [NSString stringWithUTF8String:"nfcd"];
      v17 = NSLocalizedDescriptionKey;
      v8 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      v23 = v8;
      v24 = &off_100331650;
      v18 = @"Line";
      v19 = @"Method";
      v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_triggerCrash:completion:")];
      v25 = v9;
      v20 = NSDebugDescriptionErrorKey;
      v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_triggerCrash:completion:"), 3695];
      v26 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v17 count:4];
      v12 = v6;
      v13 = v7;
      v14 = 58;
    }

    v16 = [v12 initWithDomain:v13 code:v14 userInfo:v11];
    (*(v3 + 2))(v3, v16);
  }

LABEL_8:
}

void sub_1000F8344(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  v5 = sub_1001EABD4(*(*(a1 + 32) + 376));
  v6 = *(a1 + 40);
  if (v5)
  {
    (*(v6 + 16))(*(a1 + 40), 0);
    [v3 dontEndAfterWork];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v8(6, "%c[%{public}s %{public}s]:%i Delaying session close for %d seconds", v12, ClassName, Name, 3718, 1);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      v16 = object_getClassName(*(a1 + 32));
      v17 = sel_getName(*(a1 + 48));
      *buf = 67110146;
      v32 = v15;
      v33 = 2082;
      v34 = v16;
      v35 = 2082;
      v36 = v17;
      v37 = 1024;
      v38 = 3718;
      v39 = 1024;
      v40 = 1;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Delaying session close for %d seconds", buf, 0x28u);
    }

    v18 = dispatch_time(0, 1000000000);
    v19 = *(a1 + 32);
    v20 = *(v19 + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F86F4;
    block[3] = &unk_100315FA8;
    block[4] = v19;
    v30 = v3;
    dispatch_after(v18, v20, block);
  }

  else
  {
    v21 = [NSError alloc];
    v22 = [NSString stringWithUTF8String:"nfcd"];
    v41[0] = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithUTF8String:"Stack Error"];
    v42[0] = v23;
    v42[1] = &off_100331680;
    v41[1] = @"Line";
    v41[2] = @"Method";
    v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v42[2] = v24;
    v41[3] = NSDebugDescriptionErrorKey;
    v25 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 3711];
    v42[3] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:4];
    v27 = [v21 initWithDomain:v22 code:15 userInfo:v26];
    (*(v6 + 16))(v6, v27);
  }
}

void sub_1000F8710(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [NSError alloc];
  v6 = [NSString stringWithUTF8String:"nfcd"];
  v7 = [v3 code];
  v14[0] = NSLocalizedDescriptionKey;
  if ([v3 code] > 75)
  {
    v8 = 76;
  }

  else
  {
    v8 = [v3 code];
  }

  v9 = [NSString stringWithUTF8String:off_1003184A0[v8]];
  v15[0] = v9;
  v15[1] = v3;
  v14[1] = NSUnderlyingErrorKey;
  v14[2] = @"Line";
  v15[2] = &off_100331698;
  v14[3] = @"Method";
  v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v15[3] = v10;
  v14[4] = NSDebugDescriptionErrorKey;
  v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 3726];
  v15[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];
  v13 = [v5 initWithDomain:v6 code:v7 userInfo:v12];
  (*(v4 + 16))(v4, v13);
}

void sub_1000F89C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    if (sub_100003384(v1) == 2)
    {
      if (NFIsInternalBuild())
      {
        v3 = [v1 lastKnownRoutingConfig];
        if (!v3)
        {
          v3 = [v1 defaultRoutingConfig:3];
        }

        v4 = v1[30];
        v21 = _NSConcreteStackBlock;
        v22 = 3221225472;
        v23 = sub_1000F8DC8;
        v24 = &unk_1003188C8;
        v25 = v1;
        v26 = v2;
        v27 = "_sync_triggerCoreDumpWithCompletion:";
        v15 = _NSConcreteStackBlock;
        v16 = 3221225472;
        v17 = sub_1000F91EC;
        v18 = &unk_100318878;
        v19 = v26;
        v20 = "_sync_triggerCoreDumpWithCompletion:";
        [_NFBuiltinSession createSession:@"Core Dump" workQueue:v4 routing:v3 sessionQueuer:v1 didStartWork:&v21 failedToStart:&v15];

        goto LABEL_10;
      }

      v13 = [NSError alloc];
      v3 = [NSString stringWithUTF8String:"nfcd"];
      v15 = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Feature Not Supported"];
      v21 = v6;
      v22 = &off_1003316C8;
      v16 = @"Line";
      v17 = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_triggerCoreDumpWithCompletion:")];
      v23 = v7;
      v18 = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_triggerCoreDumpWithCompletion:"), 3745];
      v24 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v15 count:4];
      v10 = v13;
      v11 = v3;
      v12 = 14;
    }

    else
    {
      v5 = [NSError alloc];
      v3 = [NSString stringWithUTF8String:"nfcd"];
      v15 = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      v21 = v6;
      v22 = &off_1003316B0;
      v16 = @"Line";
      v17 = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_triggerCoreDumpWithCompletion:")];
      v23 = v7;
      v18 = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_triggerCoreDumpWithCompletion:"), 3740];
      v24 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v15 count:4];
      v10 = v5;
      v11 = v3;
      v12 = 58;
    }

    v14 = [v10 initWithDomain:v11 code:v12 userInfo:v9];
    (*(v2 + 2))(v2, v14);

LABEL_10:
  }
}

void sub_1000F8DC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1001EC65C(*(*(a1 + 32) + 376));
  v5 = *(a1 + 40);
  if (v4)
  {
    v30 = v3;
    v6 = [NSError alloc];
    v7 = [NSString stringWithUTF8String:"nfcd"];
    v8 = [v4 code];
    v43[0] = NSLocalizedDescriptionKey;
    if ([v4 code] > 75)
    {
      v9 = 76;
    }

    else
    {
      v9 = [v4 code];
    }

    v24 = [NSString stringWithUTF8String:off_1003184A0[v9]];
    v44[0] = v24;
    v44[1] = v4;
    v43[1] = NSUnderlyingErrorKey;
    v43[2] = @"Line";
    v44[2] = &off_1003316E0;
    v43[3] = @"Method";
    v25 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v44[3] = v25;
    v43[4] = NSDebugDescriptionErrorKey;
    v26 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 3761];
    v44[4] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:5];
    v28 = [v6 initWithDomain:v7 code:v8 userInfo:v27];
    (*(v5 + 16))(v5, v28);

    v3 = v30;
  }

  else
  {
    (*(v5 + 16))(*(a1 + 40), 0);
    [v3 dontEndAfterWork];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v11(6, "%c[%{public}s %{public}s]:%i Delaying session close for %d seconds", v15, ClassName, Name, 3768, 1);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v17))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }

      v19 = object_getClassName(*(a1 + 32));
      v20 = sel_getName(*(a1 + 48));
      *buf = 67110146;
      v34 = v18;
      v35 = 2082;
      v36 = v19;
      v37 = 2082;
      v38 = v20;
      v39 = 1024;
      v40 = 3768;
      v41 = 1024;
      v42 = 1;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Delaying session close for %d seconds", buf, 0x28u);
    }

    v21 = dispatch_time(0, 1000000000);
    v22 = *(a1 + 32);
    v23 = *(v22 + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F91D0;
    block[3] = &unk_100315FA8;
    block[4] = v22;
    v32 = v3;
    dispatch_after(v21, v23, block);
  }
}

void sub_1000F91EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [NSError alloc];
  v6 = [NSString stringWithUTF8String:"nfcd"];
  v7 = [v3 code];
  v14[0] = NSLocalizedDescriptionKey;
  if ([v3 code] > 75)
  {
    v8 = 76;
  }

  else
  {
    v8 = [v3 code];
  }

  v9 = [NSString stringWithUTF8String:off_1003184A0[v8]];
  v15[0] = v9;
  v15[1] = v3;
  v14[1] = NSUnderlyingErrorKey;
  v14[2] = @"Line";
  v15[2] = &off_1003316F8;
  v14[3] = @"Method";
  v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v15[3] = v10;
  v14[4] = NSDebugDescriptionErrorKey;
  v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 3776];
  v15[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];
  v13 = [v5 initWithDomain:v6 code:v7 userInfo:v12];
  (*(v4 + 16))(v4, v13);
}

void sub_1000F94AC(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    if (sub_100003384(v2) == 2)
    {
      v4 = [v2 lastKnownRoutingConfig];
      if (!v4)
      {
        v4 = [v2 defaultRoutingConfig:3];
      }

      v5 = v2[30];
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_1000F979C;
      v21 = &unk_100318A48;
      v22 = v2;
      v25 = v1;
      v23 = v3;
      v24 = "_sync_toggleGPIO:completion:";
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_1000F99C4;
      v15 = &unk_100318878;
      v16 = v23;
      v17 = "_sync_toggleGPIO:completion:";
      [_NFBuiltinSession createSession:@"GPIO" workQueue:v5 routing:v4 sessionQueuer:v2 didStartWork:&v18 failedToStart:&v12];
    }

    else
    {
      v6 = [NSError alloc];
      v4 = [NSString stringWithUTF8String:"nfcd"];
      v12 = NSLocalizedDescriptionKey;
      v7 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      v18 = v7;
      v19 = &off_100331710;
      v13 = @"Line";
      v14 = @"Method";
      v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_toggleGPIO:completion:")];
      v20 = v8;
      v15 = NSDebugDescriptionErrorKey;
      v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_toggleGPIO:completion:"), 3790];
      v21 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v12 count:4];
      v11 = [v6 initWithDomain:v4 code:58 userInfo:v10];
      (*(v3 + 2))(v3, v11);
    }
  }
}

void sub_1000F979C(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = sub_1001EAC3C(*(*(a1 + 32) + 376));
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = *(v4 + 16);
    v6 = *(a1 + 40);

    v5(v6, 0);
  }

  else
  {
    v7 = [NSError alloc];
    v8 = [NSString stringWithUTF8String:"nfcd"];
    v14[0] = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithUTF8String:"Stack Error"];
    v15[0] = v9;
    v15[1] = &off_100331728;
    v14[1] = @"Line";
    v14[2] = @"Method";
    v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v15[2] = v10;
    v14[3] = NSDebugDescriptionErrorKey;
    v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 3806];
    v15[3] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
    v13 = [v7 initWithDomain:v8 code:15 userInfo:v12];
    (*(v4 + 16))(v4, v13);
  }
}

void sub_1000F99C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [NSError alloc];
  v6 = [NSString stringWithUTF8String:"nfcd"];
  v7 = [v3 code];
  v14[0] = NSLocalizedDescriptionKey;
  if ([v3 code] > 75)
  {
    v8 = 76;
  }

  else
  {
    v8 = [v3 code];
  }

  v9 = [NSString stringWithUTF8String:off_1003184A0[v8]];
  v15[0] = v9;
  v15[1] = v3;
  v14[1] = NSUnderlyingErrorKey;
  v14[2] = @"Line";
  v15[2] = &off_100331740;
  v14[3] = @"Method";
  v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v15[3] = v10;
  v14[4] = NSDebugDescriptionErrorKey;
  v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 3811];
  v15[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];
  v13 = [v5 initWithDomain:v6 code:v7 userInfo:v12];
  (*(v4 + 16))(v4, v13);
}

void sub_1000F9CAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    if (sub_100003384(v1) == 2 || sub_100003384(v1) == 5)
    {
      v5 = [v3 NF_whitelistChecker];
      if ([v5 hceAccess])
      {
        if (!*(v1 + 120) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v30 = Logger;
            Class = object_getClass(v1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v1);
            Name = sel_getName("_sync_getHostCardEmulationLogForConnection:completion:");
            v35 = 45;
            if (isMetaClass)
            {
              v35 = 43;
            }

            v30(6, "%c[%{public}s %{public}s]:%i %{public}@", v35, ClassName, Name, 3843, *(v1 + 200));
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v36 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = object_getClass(v1);
            if (class_isMetaClass(v37))
            {
              v38 = 43;
            }

            else
            {
              v38 = 45;
            }

            v39 = object_getClassName(v1);
            v40 = sel_getName("_sync_getHostCardEmulationLogForConnection:completion:");
            v41 = *(v1 + 200);
            *buf = 67110146;
            *&buf[4] = v38;
            v49 = 2082;
            v50 = v39;
            v51 = 2082;
            v52 = v40;
            v53 = 1024;
            v54 = 3843;
            v55 = 2114;
            v56 = v41;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
          }

          (*(v4 + 2))(v4, *(v1 + 200), 0);
          goto LABEL_39;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v6 = NFLogGetLogger();
        if (v6)
        {
          v7 = v6;
          v8 = object_getClass(v1);
          v9 = class_isMetaClass(v8);
          v10 = object_getClassName(v1);
          v46 = sel_getName("_sync_getHostCardEmulationLogForConnection:completion:");
          v11 = 45;
          if (v9)
          {
            v11 = 43;
          }

          v7(6, "%c[%{public}s %{public}s]:%i Getting host card emulation log from session", v11, v10, v46, 3838);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v12 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = object_getClass(v1);
          if (class_isMetaClass(v13))
          {
            v14 = 43;
          }

          else
          {
            v14 = 45;
          }

          *buf = 67109890;
          *&buf[4] = v14;
          v49 = 2082;
          v50 = object_getClassName(v1);
          v51 = 2082;
          v52 = sel_getName("_sync_getHostCardEmulationLogForConnection:completion:");
          v53 = 1024;
          v54 = 3838;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Getting host card emulation log from session", buf, 0x22u);
        }

        v15 = [*(v1 + 120) hostCardEmulationLog];
        (*(v4 + 2))(v4, v15, 0);
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v16 = NFLogGetLogger();
        if (v16)
        {
          v17 = v16;
          v18 = object_getClass(v1);
          v19 = class_isMetaClass(v18);
          v20 = object_getClassName(v1);
          v47 = sel_getName("_sync_getHostCardEmulationLogForConnection:completion:");
          v21 = 45;
          if (v19)
          {
            v21 = 43;
          }

          v17(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring HCE access", v21, v20, v47, 3832);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v22 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = object_getClass(v1);
          if (class_isMetaClass(v23))
          {
            v24 = 43;
          }

          else
          {
            v24 = 45;
          }

          *buf = 67109890;
          *&buf[4] = v24;
          v49 = 2082;
          v50 = object_getClassName(v1);
          v51 = 2082;
          v52 = sel_getName("_sync_getHostCardEmulationLogForConnection:completion:");
          v53 = 1024;
          v54 = 3832;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring HCE access", buf, 0x22u);
        }

        v25 = [NSError alloc];
        v15 = [NSString stringWithUTF8String:"nfcd"];
        v57 = NSLocalizedDescriptionKey;
        v26 = [NSString stringWithUTF8String:"Not entitled"];
        *buf = v26;
        v27 = [NSDictionary dictionaryWithObjects:buf forKeys:&v57 count:1];
        v28 = [v25 initWithDomain:v15 code:32 userInfo:v27];
        (*(v4 + 2))(v4, 0, v28);
      }
    }

    else
    {
      v42 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v57 = NSLocalizedDescriptionKey;
      v43 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      *buf = v43;
      v44 = [NSDictionary dictionaryWithObjects:buf forKeys:&v57 count:1];
      v45 = [v42 initWithDomain:v5 code:58 userInfo:v44];
      (*(v4 + 2))(v4, 0, v45);
    }

LABEL_39:
  }
}

BOOL sub_1000FA6A0(uint64_t a1)
{
  if ([*(a1 + 32) isEqual:*(*(a1 + 40) + 384)])
  {
    v2 = sub_100015D60(*(*(a1 + 40) + 376));
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  else
  {
    v5 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v13 = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"SE not available"];
    v14 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v9 = [v5 initWithDomain:v6 code:35 userInfo:v8];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  return *(*(*(a1 + 48) + 8) + 40) == 0;
}

void sub_1000FA8A4(uint64_t a1)
{
  if (sub_100003384(*(a1 + 32)) == 2)
  {
    v2 = [NSError alloc];
    v3 = [NSString stringWithUTF8String:"nfcd"];
    v12 = NSLocalizedDescriptionKey;
    v4 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v13 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v6 = [v2 initWithDomain:v3 code:14 userInfo:v5];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v14 = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v15 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v11 = [v8 initWithDomain:v6 code:58 userInfo:v10];
    (*(v7 + 16))(v7, v11);
  }
}

void sub_1000FAB1C(uint64_t a1)
{
  if (sub_100003384(*(a1 + 32)) == 2)
  {
    v2 = [NSError alloc];
    v3 = [NSString stringWithUTF8String:"nfcd"];
    v12 = NSLocalizedDescriptionKey;
    v4 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v13 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v6 = [v2 initWithDomain:v3 code:14 userInfo:v5];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v14 = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v15 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v11 = [v8 initWithDomain:v6 code:58 userInfo:v10];
    (*(v7 + 16))(v7, v11);
  }
}

void sub_1000FAD94(uint64_t a1)
{
  if (sub_100003384(*(a1 + 32)) == 2)
  {
    v2 = *(a1 + 32);
    v9 = 0;
    [v2 nfcRadioEnabled:&v9 showUIPopup:0];
    v3 = v9;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [NSError alloc];
    v3 = [NSString stringWithUTF8String:"nfcd"];
    v10 = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v11 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v8 = [v5 initWithDomain:v3 code:58 userInfo:v7];
    (*(v4 + 16))(v4, 0, v8);
  }
}

void sub_1000FAFE4(uint64_t a1)
{
  if (sub_100003384(*(a1 + 32)) != 2)
  {
    v37 = *(a1 + 48);
    v38 = [NSError alloc];
    v2 = [NSString stringWithUTF8String:"nfcd"];
    v125 = NSLocalizedDescriptionKey;
    v3 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v126 = v3;
    v30 = [NSDictionary dictionaryWithObjects:&v126 forKeys:&v125 count:1];
    v39 = [v38 initWithDomain:v2 code:58 userInfo:v30];
    (*(v37 + 16))(v37, v39);

    goto LABEL_58;
  }

  v2 = [*(a1 + 40) NF_whitelistChecker];
  if (([v2 radioToggle] & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v41 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v45 = 45;
      if (isMetaClass)
      {
        v45 = 43;
      }

      v41(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, missing radio toggle", v45, ClassName, Name, 4337);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v46 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v47))
      {
        v48 = 43;
      }

      else
      {
        v48 = 45;
      }

      v49 = object_getClassName(*(a1 + 32));
      v50 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v112 = v48;
      v113 = 2082;
      v114 = v49;
      v115 = 2082;
      v116 = v50;
      v117 = 1024;
      v118 = 4337;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, missing radio toggle", buf, 0x22u);
    }

    v51 = *(a1 + 48);
    v52 = [NSError alloc];
    v3 = [NSString stringWithUTF8String:"nfcd"];
    v123 = NSLocalizedDescriptionKey;
    v30 = [NSString stringWithUTF8String:"Not entitled"];
    v124 = v30;
    v53 = &v124;
    v54 = &v123;
    goto LABEL_56;
  }

  if (*(*(a1 + 32) + 296) == -1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v55 = NFLogGetLogger();
    if (v55)
    {
      v56 = v55;
      v57 = object_getClass(*(a1 + 32));
      v58 = class_isMetaClass(v57);
      v59 = object_getClassName(*(a1 + 32));
      v100 = sel_getName(*(a1 + 56));
      v60 = 45;
      if (v58)
      {
        v60 = 43;
      }

      v56(3, "%c[%{public}s %{public}s]:%i Radio disabled by mobileconfig", v60, v59, v100, 4343);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v61 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v62))
      {
        v63 = 43;
      }

      else
      {
        v63 = 45;
      }

      v64 = object_getClassName(*(a1 + 32));
      v65 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v112 = v63;
      v113 = 2082;
      v114 = v64;
      v115 = 2082;
      v116 = v65;
      v117 = 1024;
      v118 = 4343;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Radio disabled by mobileconfig", buf, 0x22u);
    }

    v51 = *(a1 + 48);
    v52 = [NSError alloc];
    v3 = [NSString stringWithUTF8String:"nfcd"];
    v121 = NSLocalizedDescriptionKey;
    v30 = [NSString stringWithUTF8String:"Not entitled"];
    v122 = v30;
    v53 = &v122;
    v54 = &v121;
LABEL_56:
    v66 = [NSDictionary dictionaryWithObjects:v53 forKeys:v54 count:1];
    v67 = [v52 initWithDomain:v3 code:32 userInfo:v66];
    (*(v51 + 16))(v51, v67);

LABEL_57:
    goto LABEL_58;
  }

  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
  if ((NFIsChinaSku() & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v68 = NFLogGetLogger();
    if (v68)
    {
      v69 = v68;
      v70 = object_getClass(*(a1 + 32));
      v71 = class_isMetaClass(v70);
      v72 = object_getClassName(*(a1 + 32));
      v101 = sel_getName(*(a1 + 56));
      v73 = 45;
      if (v71)
      {
        v73 = 43;
      }

      v69(3, "%c[%{public}s %{public}s]:%i Feature not supported on this device", v73, v72, v101, 4351);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v74 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      v75 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v75))
      {
        v76 = 43;
      }

      else
      {
        v76 = 45;
      }

      v77 = object_getClassName(*(a1 + 32));
      v78 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v112 = v76;
      v113 = 2082;
      v114 = v77;
      v115 = 2082;
      v116 = v78;
      v117 = 1024;
      v118 = 4351;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Feature not supported on this device", buf, 0x22u);
    }

    if (!NFIsInternalBuild())
    {
      goto LABEL_85;
    }

    v79 = [v3 objectForKey:@"forceChinaSku"];

    if (!v79)
    {
      goto LABEL_85;
    }

    v80 = [v3 BOOLForKey:@"forceChinaSku"];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v81 = NFLogGetLogger();
    if (v81)
    {
      v82 = v81;
      v83 = object_getClass(*(a1 + 32));
      v84 = class_isMetaClass(v83);
      v85 = object_getClassName(*(a1 + 32));
      v86 = sel_getName(*(a1 + 56));
      if (v80)
      {
        v87 = @"on";
      }

      else
      {
        v87 = @"off";
      }

      v88 = 45;
      if (v84)
      {
        v88 = 43;
      }

      v82(5, "%c[%{public}s %{public}s]:%i Force China Sku: %{public}@", v88, v85, v86, 4357, v87);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v89 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      v90 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v90))
      {
        v91 = 43;
      }

      else
      {
        v91 = 45;
      }

      v92 = object_getClassName(*(a1 + 32));
      v93 = sel_getName(*(a1 + 56));
      *buf = 67110146;
      v94 = @"on";
      if (!v80)
      {
        v94 = @"off";
      }

      v112 = v91;
      v113 = 2082;
      v114 = v92;
      v115 = 2082;
      v116 = v93;
      v117 = 1024;
      v118 = 4357;
      v119 = 2114;
      v120 = v94;
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Force China Sku: %{public}@", buf, 0x2Cu);
    }

    if ((v80 & 1) == 0)
    {
LABEL_85:
      v95 = *(a1 + 48);
      v96 = [NSError alloc];
      v30 = [NSString stringWithUTF8String:"nfcd"];
      v109 = NSLocalizedDescriptionKey;
      v66 = [NSString stringWithUTF8String:"Feature Not Supported"];
      v110 = v66;
      v97 = [NSDictionary dictionaryWithObjects:&v110 forKeys:&v109 count:1];
      v98 = [v96 initWithDomain:v30 code:14 userInfo:v97];
      (*(v95 + 16))(v95, v98);

      goto LABEL_57;
    }
  }

  [v3 setBool:*(a1 + 64) forKey:@"nfcRadioEnabled"];
  [v3 synchronize];
  if ((*(a1 + 64) & 1) == 0)
  {
    v4 = sub_100030C60(*(*(a1 + 32) + 24), 0);
    v5 = v4;
    if (v4 && [v4 code] == 75)
    {
      v6 = [*(a1 + 40) NF_userInfo];
      v7 = [NSString alloc];
      v8 = sel_getName(*(a1 + 56));
      v9 = [v6 clientName];
      v10 = [v7 initWithFormat:@"%s, client=%@, ", v8, v9];

      sub_100199548(NFBugCapture, @"Express Mode Failure", @"Express config init before 1st unlock", v10, 0, 0);
    }
  }

  v11 = *(a1 + 32);
  objc_sync_enter(v11);
  v12 = *(a1 + 32);
  v13 = *(v12 + 296);
  v14 = *(a1 + 64);
  *(v12 + 296) = v14;
  objc_sync_exit(v11);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v16 = v15;
    v17 = object_getClass(*(a1 + 32));
    v18 = class_isMetaClass(v17);
    v19 = object_getClassName(*(a1 + 32));
    v20 = sel_getName(*(a1 + 56));
    v21 = 45;
    if (v18)
    {
      v21 = 43;
    }

    v16(6, "%c[%{public}s %{public}s]:%i %d", v21, v19, v20, 4386, *(a1 + 64));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v22 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v23))
    {
      v24 = 43;
    }

    else
    {
      v24 = 45;
    }

    v25 = object_getClassName(*(a1 + 32));
    v26 = sel_getName(*(a1 + 56));
    v27 = *(a1 + 64);
    *buf = 67110146;
    v112 = v24;
    v113 = 2082;
    v114 = v25;
    v115 = 2082;
    v116 = v26;
    v117 = 1024;
    v118 = 4386;
    v119 = 1024;
    LODWORD(v120) = v27;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %d", buf, 0x28u);
  }

  v107 = @"radioIsEnabled";
  if (*(*(a1 + 32) + 296) == 1)
  {
    v28 = &__kCFBooleanTrue;
  }

  else
  {
    v28 = &__kCFBooleanFalse;
  }

  v108 = v28;
  v29 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
  [NFGeneralStatisticsCALogger updateGeneralDeviceStatistic:v29];

  if (v13 != v14)
  {
    [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_1003397D8];
  }

  (*(*(a1 + 48) + 16))();
  v30 = sub_100003548(*(a1 + 32));
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v31 = [v30 allValues];
  v32 = [v31 countByEnumeratingWithState:&v102 objects:v106 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v103;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v103 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [*(*(&v102 + 1) + 8 * i) didChangeRadioState:*(a1 + 64)];
      }

      v33 = [v31 countByEnumeratingWithState:&v102 objects:v106 count:16];
    }

    while (v33);
  }

  if (*(a1 + 64))
  {
    v36 = @"1";
  }

  else
  {
    v36 = @"0";
  }

  sub_1000E7BDC(*(a1 + 32), "com.apple.stockhom.radio.stateChanged", v36);
  [*(a1 + 32) maybeStartNextSession];
LABEL_58:
}

void sub_1000FBC74(uint64_t a1)
{
  if (sub_100003384(*(a1 + 32)) == 2)
  {
    v2 = [*(a1 + 32) lastKnownRoutingConfig];
    if (!v2)
    {
      v2 = [*(a1 + 32) defaultRoutingConfig:3];
    }

    v3 = *(a1 + 32);
    v4 = *(v3 + 240);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000FBF60;
    v19[3] = &unk_1003188C8;
    v19[4] = v3;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v20 = v5;
    v21 = v6;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000FC1AC;
    v16[3] = &unk_100318878;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v17 = v7;
    v18 = v8;
    [_NFBuiltinSession createSession:@"Temperature" workQueue:v4 routing:v2 sessionQueuer:v3 didStartWork:v19 failedToStart:v16];
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = [NSError alloc];
    v2 = [NSString stringWithUTF8String:"nfcd"];
    v22[0] = NSLocalizedDescriptionKey;
    v11 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v23[0] = v11;
    v23[1] = &off_100331758;
    v22[1] = @"Line";
    v22[2] = @"Method";
    v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v23[2] = v12;
    v22[3] = NSDebugDescriptionErrorKey;
    v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 4415];
    v23[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
    v15 = [v10 initWithDomain:v2 code:58 userInfo:v14];
    (*(v9 + 16))(v9, v15, 0.0);
  }
}

void sub_1000FBF60(uint64_t a1)
{
  v2 = sub_1002218F4(*(*(a1 + 32) + 376));
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v6 = [v2 code];
    v13[0] = NSLocalizedDescriptionKey;
    if ([v2 code] > 75)
    {
      v7 = 76;
    }

    else
    {
      v7 = [v2 code];
    }

    v8 = [NSString stringWithUTF8String:off_1003184A0[v7]];
    v14[0] = v8;
    v14[1] = v2;
    v13[1] = NSUnderlyingErrorKey;
    v13[2] = @"Line";
    v14[2] = &off_100331770;
    v13[3] = @"Method";
    v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v14[3] = v9;
    v13[4] = NSDebugDescriptionErrorKey;
    v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 4432];
    v14[4] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:5];
    v12 = [v4 initWithDomain:v5 code:v6 userInfo:v11];
    (*(v3 + 16))(v3, v12, 0.0);
  }

  else
  {
    (*(v3 + 16))(*(a1 + 40), 0, 0.0);
  }
}

void sub_1000FC1AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [NSError alloc];
  v6 = [NSString stringWithUTF8String:"nfcd"];
  v7 = [v3 code];
  v14[0] = NSLocalizedDescriptionKey;
  if ([v3 code] > 75)
  {
    v8 = 76;
  }

  else
  {
    v8 = [v3 code];
  }

  v9 = [NSString stringWithUTF8String:off_1003184A0[v8]];
  v15[0] = v9;
  v15[1] = v3;
  v14[1] = NSUnderlyingErrorKey;
  v14[2] = @"Line";
  v15[2] = &off_100331788;
  v14[3] = @"Method";
  v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v15[3] = v10;
  v14[4] = NSDebugDescriptionErrorKey;
  v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 4437];
  v15[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];
  v13 = [v5 initWithDomain:v6 code:v7 userInfo:v12];
  (*(v4 + 16))(v4, v13, 0.0);
}

void sub_1000FC46C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (sub_100003384(a1) == 2)
    {
      v4 = [a1 lastKnownRoutingConfig];
      if (!v4)
      {
        v4 = [a1 defaultRoutingConfig:3];
      }

      v5 = a1[30];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000FC760;
      v15[3] = &unk_1003188C8;
      v15[4] = a1;
      v16 = v3;
      v17 = "_sync_getReaderProhibitTimer:";
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000FC9BC;
      v12[3] = &unk_100318878;
      v13 = v16;
      v14 = "_sync_getReaderProhibitTimer:";
      [_NFBuiltinSession createSession:@"Prohibit timer" workQueue:v5 routing:v4 sessionQueuer:a1 didStartWork:v15 failedToStart:v12];
    }

    else
    {
      v6 = [NSError alloc];
      v4 = [NSString stringWithUTF8String:"nfcd"];
      v18[0] = NSLocalizedDescriptionKey;
      v7 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      v19[0] = v7;
      v19[1] = &off_1003317A0;
      v18[1] = @"Line";
      v18[2] = @"Method";
      v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_getReaderProhibitTimer:")];
      v19[2] = v8;
      v18[3] = NSDebugDescriptionErrorKey;
      v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_getReaderProhibitTimer:"), 4452];
      v19[3] = v9;
      v10 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];
      v11 = [v6 initWithDomain:v4 code:58 userInfo:v10];
      (*(v3 + 2))(v3, 0, 0, 0, v11);
    }
  }
}

void sub_1000FC760(uint64_t a1)
{
  v2 = sub_1000182AC(*(*(a1 + 32) + 376));
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v6 = [v2 code];
    v13[0] = NSLocalizedDescriptionKey;
    if ([v2 code] > 75)
    {
      v7 = 76;
    }

    else
    {
      v7 = [v2 code];
    }

    v8 = [NSString stringWithUTF8String:off_1003184A0[v7]];
    v14[0] = v8;
    v14[1] = v2;
    v13[1] = NSUnderlyingErrorKey;
    v13[2] = @"Line";
    v14[2] = &off_1003317B8;
    v13[3] = @"Method";
    v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v14[3] = v9;
    v13[4] = NSDebugDescriptionErrorKey;
    v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 4470];
    v14[4] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:5];
    v12 = [v4 initWithDomain:v5 code:v6 userInfo:v11];
    (*(v3 + 16))(v3, 0, 0, 0, v12);
  }

  else
  {
    (*(v3 + 16))(*(a1 + 40), 0, 0, 0, 0);
  }
}

void sub_1000FC9BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [NSError alloc];
  v6 = [NSString stringWithUTF8String:"nfcd"];
  v7 = [v3 code];
  v14[0] = NSLocalizedDescriptionKey;
  if ([v3 code] > 75)
  {
    v8 = 76;
  }

  else
  {
    v8 = [v3 code];
  }

  v9 = [NSString stringWithUTF8String:off_1003184A0[v8]];
  v15[0] = v9;
  v15[1] = v3;
  v14[1] = NSUnderlyingErrorKey;
  v14[2] = @"Line";
  v15[2] = &off_1003317D0;
  v14[3] = @"Method";
  v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v15[3] = v10;
  v14[4] = NSDebugDescriptionErrorKey;
  v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 4475];
  v15[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];
  v13 = [v5 initWithDomain:v6 code:v7 userInfo:v12];
  (*(v4 + 16))(v4, 0, 0, 0, v13);
}

void sub_1000FCC78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    if (sub_100003384(v1) == 2)
    {
      v3 = [v1 lastKnownRoutingConfig];
      if (!v3)
      {
        v3 = [v1 defaultRoutingConfig:3];
      }

      v4 = v1[30];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000FCF0C;
      v13 = &unk_100318738;
      v14 = v1;
      v5 = [_NFBuiltinSession createSession:@"LPM Debug" workQueue:v4 routing:v3 sessionQueuer:v1 didStartWork:v12];
      v2[2](v2, 0);
    }

    else
    {
      v6 = [NSError alloc];
      v3 = [NSString stringWithUTF8String:"nfcd"];
      v15[0] = NSLocalizedDescriptionKey;
      v7 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      v15[1] = @"Line";
      v15[2] = @"Method";
      v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_dumpLPMDebugLogWithCompletion:")];
      v15[3] = NSDebugDescriptionErrorKey;
      v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_dumpLPMDebugLogWithCompletion:"), 4488, v7, &off_1003317E8, v8];
      v13 = v9;
      v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v15 count:4];
      v11 = [v6 initWithDomain:v3 code:58 userInfo:v10];
      (v2)[2](v2, v11);
    }
  }
}

void sub_1000FCFC0(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    if (sub_100003384(v2) != 2)
    {
      v5 = [NSError alloc];
      v4 = [NSString stringWithUTF8String:"nfcd"];
      v40 = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      *buf = v6;
      v7 = [NSDictionary dictionaryWithObjects:buf forKeys:&v40 count:1];
      v8 = v5;
      v9 = v4;
      v10 = 58;
LABEL_27:
      v30 = [v8 initWithDomain:v9 code:v10 userInfo:v7];
      v3[2](v3, v30);

      goto LABEL_28;
    }

    if ([*(v2 + 392) hasAntenna])
    {
      if (NFIsInternalBuild())
      {
        v4 = sub_1001EACA4(*(v2 + 376), v1);
        v3[2](v3, v4);
LABEL_28:

        goto LABEL_29;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v22 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("_sync_setChipscope:completion:");
        v26 = 45;
        if (isMetaClass)
        {
          v26 = 43;
        }

        v22(4, "%c[%{public}s %{public}s]:%i Not an internal build", v26, ClassName, Name, 4531);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v27 = object_getClass(v2);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      *buf = 67109890;
      *&buf[4] = v28;
      v34 = 2082;
      v35 = object_getClassName(v2);
      v36 = 2082;
      v37 = sel_getName("_sync_setChipscope:completion:");
      v38 = 1024;
      v39 = 4531;
      v20 = "%c[%{public}s %{public}s]:%i Not an internal build";
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFLogGetLogger();
      if (v11)
      {
        v12 = v11;
        v13 = object_getClass(v2);
        v14 = class_isMetaClass(v13);
        v15 = object_getClassName(v2);
        v31 = sel_getName("_sync_setChipscope:completion:");
        v16 = 45;
        if (v14)
        {
          v16 = 43;
        }

        v12(4, "%c[%{public}s %{public}s]:%i No antenna", v16, v15, v31, 4525);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v18 = object_getClass(v2);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      *buf = 67109890;
      *&buf[4] = v19;
      v34 = 2082;
      v35 = object_getClassName(v2);
      v36 = 2082;
      v37 = sel_getName("_sync_setChipscope:completion:");
      v38 = 1024;
      v39 = 4525;
      v20 = "%c[%{public}s %{public}s]:%i No antenna";
    }

    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v20, buf, 0x22u);
LABEL_26:

    v29 = [NSError alloc];
    v4 = [NSString stringWithUTF8String:"nfcd"];
    v40 = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"Feature Not Supported"];
    *buf = v6;
    v7 = [NSDictionary dictionaryWithObjects:buf forKeys:&v40 count:1];
    v8 = v29;
    v9 = v4;
    v10 = 14;
    goto LABEL_27;
  }

LABEL_29:
}

void sub_1000FD488(uint64_t a1)
{
  if (sub_100003384(*(a1 + 32)) == 2 || sub_100003384(*(a1 + 32)) == 5)
  {
    v2 = *(*(a1 + 32) + 208);
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v10 = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v11 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = [v5 initWithDomain:v6 code:58 userInfo:v8];
    (*(v4 + 16))(v4, v9, 0);
  }
}

void sub_1000FDA58(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      v14 = +[NSAssertionHandler currentHandler];
      [v14 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"_NFHardwareManager.m" lineNumber:4596 description:@"Invalid state"];

      v3 = *(a1 + 48);
      v15 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v20[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Invalid State"];
      v21[0] = v6;
      v21[1] = &off_100331830;
      v20[1] = @"Line";
      v20[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v21[2] = v7;
      v20[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 4597];
      v21[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];
      v10 = v15;
      v11 = v5;
      v12 = 12;
      goto LABEL_7;
    case 3:
      v3 = *(a1 + 48);
      v13 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v22[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Session ineligible"];
      v23[0] = v6;
      v23[1] = &off_100331818;
      v22[1] = @"Line";
      v22[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v23[2] = v7;
      v22[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 4593];
      v23[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
      v10 = v13;
      v11 = v5;
      v12 = 70;
      goto LABEL_7;
    case 2:
      v3 = *(a1 + 48);
      v4 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v24[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"TCC access denied"];
      v25[0] = v6;
      v25[1] = &off_100331800;
      v24[1] = @"Line";
      v24[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v25[2] = v7;
      v24[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 4590];
      v25[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
      v10 = v4;
      v11 = v5;
      v12 = 69;
LABEL_7:
      v16 = [v10 initWithDomain:v11 code:v12 userInfo:v9];
      (*(v3 + 16))(v3, 0, v16);

      return;
  }

  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);

  sub_10017AEE8(v17, &off_100339800, v18, 0, v19);
}

void sub_1000FF550(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v2 = [*(*(a1 + 32) + 40) restrictedMode];
  os_unfair_lock_unlock((*(a1 + 32) + 48));
  if (!sub_1000E737C(*(a1 + 32)))
  {
    v3 = *(a1 + 40);
    v13 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v35[0] = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"JCOP not available"];
    v36[0] = v6;
    v36[1] = &off_100331878;
    v35[1] = @"Line";
    v35[2] = @"Method";
    v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v36[2] = v7;
    v35[3] = NSDebugDescriptionErrorKey;
    v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4730];
    v36[3] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4];
    v10 = v13;
    v11 = v5;
    v12 = 53;
    goto LABEL_5;
  }

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v33[0] = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"Restricted Mode"];
    v34[0] = v6;
    v34[1] = &off_100331890;
    v33[1] = @"Line";
    v33[2] = @"Method";
    v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v34[2] = v7;
    v33[3] = NSDebugDescriptionErrorKey;
    v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4733];
    v34[3] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:4];
    v10 = v4;
    v11 = v5;
    v12 = 24;
LABEL_5:
    v14 = [v10 initWithDomain:v11 code:v12 userInfo:v9];
    [v3 didStartSession:v14];

    goto LABEL_6;
  }

  if (sub_1000E70DC(*(a1 + 32)))
  {
    v3 = *(a1 + 40);
    v15 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v31[0] = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"Applet Migration"];
    v32[0] = v6;
    v32[1] = &off_1003318A8;
    v31[1] = @"Line";
    v31[2] = @"Method";
    v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v32[2] = v7;
    v31[3] = NSDebugDescriptionErrorKey;
    v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4736];
    v32[3] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];
    v10 = v15;
    v11 = v5;
    v12 = 26;
    goto LABEL_5;
  }

  if (sub_1000E7158(*(a1 + 32)))
  {
    v3 = *(a1 + 40);
    v16 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v29[0] = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"JCOP in OSU"];
    v30[0] = v6;
    v30[1] = &off_1003318C0;
    v29[1] = @"Line";
    v29[2] = @"Method";
    v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v30[2] = v7;
    v29[3] = NSDebugDescriptionErrorKey;
    v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4739];
    v30[3] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];
    v10 = v16;
    v11 = v5;
    v12 = 52;
    goto LABEL_5;
  }

  v5 = sub_1001DC138(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0);
  if (v5)
  {
    v17 = *(a1 + 40);
    v18 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v20 = [v5 code];
    v27[0] = NSLocalizedDescriptionKey;
    if ([v5 code] > 75)
    {
      v21 = 76;
    }

    else
    {
      v21 = [v5 code];
    }

    v22 = [NSString stringWithUTF8String:off_1003184A0[v21]];
    v28[0] = v22;
    v28[1] = v5;
    v27[1] = NSUnderlyingErrorKey;
    v27[2] = @"Line";
    v28[2] = &off_1003318D8;
    v27[3] = @"Method";
    v23 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v28[3] = v23;
    v27[4] = NSDebugDescriptionErrorKey;
    v24 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4746];
    v28[4] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:5];
    v26 = [v18 initWithDomain:v19 code:v20 userInfo:v25];
    [v17 didStartSession:v26];
  }

  else
  {
    [*(a1 + 32) maybeStartNextSession];
  }

LABEL_6:
}

void sub_100100568(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v2 = [*(*(a1 + 32) + 40) restrictedMode];
  os_unfair_lock_unlock((*(a1 + 32) + 48));
  if (!sub_1000E737C(*(a1 + 32)))
  {
    v3 = *(a1 + 40);
    v13 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v35[0] = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"JCOP not available"];
    v36[0] = v6;
    v36[1] = &off_100331920;
    v35[1] = @"Line";
    v35[2] = @"Method";
    v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v36[2] = v7;
    v35[3] = NSDebugDescriptionErrorKey;
    v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4797];
    v36[3] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4];
    v10 = v13;
    v11 = v5;
    v12 = 53;
    goto LABEL_5;
  }

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v33[0] = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"Restricted Mode"];
    v34[0] = v6;
    v34[1] = &off_100331938;
    v33[1] = @"Line";
    v33[2] = @"Method";
    v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v34[2] = v7;
    v33[3] = NSDebugDescriptionErrorKey;
    v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4800];
    v34[3] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:4];
    v10 = v4;
    v11 = v5;
    v12 = 24;
LABEL_5:
    v14 = [v10 initWithDomain:v11 code:v12 userInfo:v9];
    [v3 didStartSession:v14];

    goto LABEL_6;
  }

  if (sub_1000E70DC(*(a1 + 32)))
  {
    v3 = *(a1 + 40);
    v15 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v31[0] = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"Applet Migration"];
    v32[0] = v6;
    v32[1] = &off_100331950;
    v31[1] = @"Line";
    v31[2] = @"Method";
    v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v32[2] = v7;
    v31[3] = NSDebugDescriptionErrorKey;
    v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4803];
    v32[3] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];
    v10 = v15;
    v11 = v5;
    v12 = 26;
    goto LABEL_5;
  }

  if (sub_1000E7158(*(a1 + 32)))
  {
    v3 = *(a1 + 40);
    v16 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v29[0] = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"JCOP in OSU"];
    v30[0] = v6;
    v30[1] = &off_100331968;
    v29[1] = @"Line";
    v29[2] = @"Method";
    v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v30[2] = v7;
    v29[3] = NSDebugDescriptionErrorKey;
    v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4806];
    v30[3] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];
    v10 = v16;
    v11 = v5;
    v12 = 52;
    goto LABEL_5;
  }

  v5 = sub_1001DC138(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0);
  if (v5)
  {
    v17 = *(a1 + 40);
    v18 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v20 = [v5 code];
    v27[0] = NSLocalizedDescriptionKey;
    if ([v5 code] > 75)
    {
      v21 = 76;
    }

    else
    {
      v21 = [v5 code];
    }

    v22 = [NSString stringWithUTF8String:off_1003184A0[v21]];
    v28[0] = v22;
    v28[1] = v5;
    v27[1] = NSUnderlyingErrorKey;
    v27[2] = @"Line";
    v28[2] = &off_100331980;
    v27[3] = @"Method";
    v23 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v28[3] = v23;
    v27[4] = NSDebugDescriptionErrorKey;
    v24 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4813];
    v28[4] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:5];
    v26 = [v18 initWithDomain:v19 code:v20 userInfo:v25];
    [v17 didStartSession:v26];
  }

  else
  {
    [*(a1 + 32) maybeStartNextSession];
  }

LABEL_6:
}

void sub_100101884(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v2 = [*(*(a1 + 32) + 40) restrictedMode];
  os_unfair_lock_unlock((*(a1 + 32) + 48));
  v3 = sub_1001AE20C();
  [*(a1 + 40) setPowerConsumptionReporter:v3];

  if (!sub_1000E737C(*(a1 + 32)))
  {
    v4 = *(a1 + 40);
    v14 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v36[0] = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"JCOP not available"];
    v37[0] = v7;
    v37[1] = &off_100331998;
    v36[1] = @"Line";
    v36[2] = @"Method";
    v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v37[2] = v8;
    v36[3] = NSDebugDescriptionErrorKey;
    v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4880];
    v37[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:4];
    v11 = v14;
    v12 = v6;
    v13 = 53;
    goto LABEL_5;
  }

  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v34[0] = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"Restricted Mode"];
    v35[0] = v7;
    v35[1] = &off_1003319B0;
    v34[1] = @"Line";
    v34[2] = @"Method";
    v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v35[2] = v8;
    v34[3] = NSDebugDescriptionErrorKey;
    v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4883];
    v35[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];
    v11 = v5;
    v12 = v6;
    v13 = 24;
LABEL_5:
    v15 = [v11 initWithDomain:v12 code:v13 userInfo:v10];
    [v4 didStartSession:v15];

    goto LABEL_6;
  }

  if (sub_1000E70DC(*(a1 + 32)))
  {
    v4 = *(a1 + 40);
    v16 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v32[0] = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"Applet Migration"];
    v33[0] = v7;
    v33[1] = &off_1003319C8;
    v32[1] = @"Line";
    v32[2] = @"Method";
    v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v33[2] = v8;
    v32[3] = NSDebugDescriptionErrorKey;
    v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4886];
    v33[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];
    v11 = v16;
    v12 = v6;
    v13 = 26;
    goto LABEL_5;
  }

  if (sub_1000E7158(*(a1 + 32)))
  {
    v4 = *(a1 + 40);
    v17 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v30[0] = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"JCOP in OSU"];
    v31[0] = v7;
    v31[1] = &off_1003319E0;
    v30[1] = @"Line";
    v30[2] = @"Method";
    v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v31[2] = v8;
    v30[3] = NSDebugDescriptionErrorKey;
    v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4889];
    v31[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:4];
    v11 = v17;
    v12 = v6;
    v13 = 52;
    goto LABEL_5;
  }

  v6 = sub_1001DC138(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0);
  if (v6)
  {
    v18 = *(a1 + 40);
    v19 = [NSError alloc];
    v20 = [NSString stringWithUTF8String:"nfcd"];
    v21 = [v6 code];
    v28[0] = NSLocalizedDescriptionKey;
    if ([v6 code] > 75)
    {
      v22 = 76;
    }

    else
    {
      v22 = [v6 code];
    }

    v23 = [NSString stringWithUTF8String:off_1003184A0[v22]];
    v29[0] = v23;
    v29[1] = v6;
    v28[1] = NSUnderlyingErrorKey;
    v28[2] = @"Line";
    v29[2] = &off_1003319F8;
    v28[3] = @"Method";
    v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v29[3] = v24;
    v28[4] = NSDebugDescriptionErrorKey;
    v25 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4896];
    v29[4] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:5];
    v27 = [v19 initWithDomain:v20 code:v21 userInfo:v26];
    [v18 didStartSession:v27];
  }

  else
  {
    [*(a1 + 32) maybeStartNextSession];
  }

LABEL_6:
}

void sub_100102B9C(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v2 = [*(*(a1 + 32) + 40) restrictedMode];
  os_unfair_lock_unlock((*(a1 + 32) + 48));
  v3 = sub_1001AE20C();
  [*(a1 + 40) setPowerConsumptionReporter:v3];

  if (!sub_1000E737C(*(a1 + 32)))
  {
    v4 = *(a1 + 40);
    v14 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v36[0] = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"JCOP not available"];
    v37[0] = v7;
    v37[1] = &off_100331A10;
    v36[1] = @"Line";
    v36[2] = @"Method";
    v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v37[2] = v8;
    v36[3] = NSDebugDescriptionErrorKey;
    v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4963];
    v37[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:4];
    v11 = v14;
    v12 = v6;
    v13 = 53;
    goto LABEL_5;
  }

  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v34[0] = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"Restricted Mode"];
    v35[0] = v7;
    v35[1] = &off_100331A28;
    v34[1] = @"Line";
    v34[2] = @"Method";
    v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v35[2] = v8;
    v34[3] = NSDebugDescriptionErrorKey;
    v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4966];
    v35[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];
    v11 = v5;
    v12 = v6;
    v13 = 24;
LABEL_5:
    v15 = [v11 initWithDomain:v12 code:v13 userInfo:v10];
    [v4 didStartSession:v15];

    goto LABEL_6;
  }

  if (sub_1000E70DC(*(a1 + 32)))
  {
    v4 = *(a1 + 40);
    v16 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v32[0] = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"Applet Migration"];
    v33[0] = v7;
    v33[1] = &off_100331A40;
    v32[1] = @"Line";
    v32[2] = @"Method";
    v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v33[2] = v8;
    v32[3] = NSDebugDescriptionErrorKey;
    v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4969];
    v33[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];
    v11 = v16;
    v12 = v6;
    v13 = 26;
    goto LABEL_5;
  }

  if (sub_1000E7158(*(a1 + 32)))
  {
    v4 = *(a1 + 40);
    v17 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v30[0] = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"JCOP in OSU"];
    v31[0] = v7;
    v31[1] = &off_100331A58;
    v30[1] = @"Line";
    v30[2] = @"Method";
    v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v31[2] = v8;
    v30[3] = NSDebugDescriptionErrorKey;
    v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4972];
    v31[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:4];
    v11 = v17;
    v12 = v6;
    v13 = 52;
    goto LABEL_5;
  }

  v6 = sub_1001DC138(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0);
  if (v6)
  {
    v18 = *(a1 + 40);
    v19 = [NSError alloc];
    v20 = [NSString stringWithUTF8String:"nfcd"];
    v21 = [v6 code];
    v28[0] = NSLocalizedDescriptionKey;
    if ([v6 code] > 75)
    {
      v22 = 76;
    }

    else
    {
      v22 = [v6 code];
    }

    v23 = [NSString stringWithUTF8String:off_1003184A0[v22]];
    v29[0] = v23;
    v29[1] = v6;
    v28[1] = NSUnderlyingErrorKey;
    v28[2] = @"Line";
    v29[2] = &off_100331A70;
    v28[3] = @"Method";
    v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v29[3] = v24;
    v28[4] = NSDebugDescriptionErrorKey;
    v25 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 4979];
    v29[4] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:5];
    v27 = [v19 initWithDomain:v20 code:v21 userInfo:v26];
    [v18 didStartSession:v27];
  }

  else
  {
    [*(a1 + 32) maybeStartNextSession];
  }

LABEL_6:
}

void sub_100103BA4(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"session.allowInJBSL"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass & 1) != 0 && ([*(a1 + 32) objectForKeyedSubscript:@"session.allowInJBSL"], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "BOOLValue"), v4, (v5) || sub_1000E737C(*(a1 + 40)))
  {
    v6 = sub_1001DC138(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 32), 0);
    if (v6)
    {
      v7 = *(a1 + 48);
      v8 = [NSError alloc];
      v9 = [NSString stringWithUTF8String:"nfcd"];
      v10 = [v6 code];
      v24[0] = NSLocalizedDescriptionKey;
      if ([v6 code] > 75)
      {
        v11 = 76;
      }

      else
      {
        v11 = [v6 code];
      }

      v19 = [NSString stringWithUTF8String:off_1003184A0[v11]];
      v25[0] = v19;
      v25[1] = v6;
      v24[1] = NSUnderlyingErrorKey;
      v24[2] = @"Line";
      v25[2] = &off_100331AA0;
      v24[3] = @"Method";
      v20 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
      v25[3] = v20;
      v24[4] = NSDebugDescriptionErrorKey;
      v21 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 5052];
      v25[4] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:5];
      v23 = [v8 initWithDomain:v9 code:v10 userInfo:v22];
      [v7 didStartSession:v23];
    }

    else
    {
      [*(a1 + 40) maybeStartNextSession];
    }
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v26[0] = NSLocalizedDescriptionKey;
    v14 = [NSString stringWithUTF8String:"JCOP not available"];
    v27[0] = v14;
    v27[1] = &off_100331A88;
    v26[1] = @"Line";
    v26[2] = @"Method";
    v15 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v27[2] = v15;
    v26[3] = NSDebugDescriptionErrorKey;
    v16 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 5045];
    v27[3] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
    v18 = [v13 initWithDomain:v6 code:53 userInfo:v17];
    [v12 didStartSession:v18];
  }
}

void sub_100104BCC(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v2 = [*(*(a1 + 32) + 40) restrictedMode];
  os_unfair_lock_unlock((*(a1 + 32) + 48));
  v3 = sub_1001AE20C();
  [*(a1 + 40) setPowerConsumptionReporter:v3];

  if (!sub_1000E737C(*(a1 + 32)))
  {
    v4 = *(a1 + 40);
    v14 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v58[0] = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"JCOP not available"];
    v59[0] = v7;
    v59[1] = &off_100331AB8;
    v58[1] = @"Line";
    v58[2] = @"Method";
    v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v59[2] = v8;
    v58[3] = NSDebugDescriptionErrorKey;
    v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 5128];
    v59[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:4];
    v11 = v14;
    v12 = v6;
    v13 = 53;
    goto LABEL_5;
  }

  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v56[0] = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"Restricted Mode"];
    v57[0] = v7;
    v57[1] = &off_100331AD0;
    v56[1] = @"Line";
    v56[2] = @"Method";
    v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v57[2] = v8;
    v56[3] = NSDebugDescriptionErrorKey;
    v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 5131];
    v57[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:4];
    v11 = v5;
    v12 = v6;
    v13 = 24;
LABEL_5:
    v15 = [v11 initWithDomain:v12 code:v13 userInfo:v10];
    [v4 didStartSession:v15];

    goto LABEL_6;
  }

  if (sub_1000E70DC(*(a1 + 32)))
  {
    v4 = *(a1 + 40);
    v16 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v54[0] = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"Applet Migration"];
    v55[0] = v7;
    v55[1] = &off_100331AE8;
    v54[1] = @"Line";
    v54[2] = @"Method";
    v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v55[2] = v8;
    v54[3] = NSDebugDescriptionErrorKey;
    v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 5134];
    v55[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:4];
    v11 = v16;
    v12 = v6;
    v13 = 26;
    goto LABEL_5;
  }

  if (sub_1000E7158(*(a1 + 32)))
  {
    v4 = *(a1 + 40);
    v17 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v52[0] = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"JCOP in OSU"];
    v53[0] = v7;
    v53[1] = &off_100331B00;
    v52[1] = @"Line";
    v52[2] = @"Method";
    v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v53[2] = v8;
    v52[3] = NSDebugDescriptionErrorKey;
    v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 5137];
    v53[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:4];
    v11 = v17;
    v12 = v6;
    v13 = 52;
    goto LABEL_5;
  }

  v41 = 0;
  v6 = sub_1001DC138(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), &v41);
  v18 = *(a1 + 40);
  if (v6)
  {
    v19 = [NSError alloc];
    v20 = [NSString stringWithUTF8String:"nfcd"];
    v21 = [v6 code];
    v50[0] = NSLocalizedDescriptionKey;
    if ([v6 code] > 75)
    {
      v22 = 76;
    }

    else
    {
      v22 = [v6 code];
    }

    v35 = [NSString stringWithUTF8String:off_1003184A0[v22]];
    v51[0] = v35;
    v51[1] = v6;
    v50[1] = NSUnderlyingErrorKey;
    v50[2] = @"Line";
    v51[2] = &off_100331B18;
    v50[3] = @"Method";
    v36 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v51[3] = v36;
    v50[4] = NSDebugDescriptionErrorKey;
    v37 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 5146];
    v51[4] = v37;
    v38 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:5];
    v39 = [v19 initWithDomain:v20 code:v21 userInfo:v38];
    [v18 didStartSession:v39];
  }

  else
  {
    if ([*(a1 + 40) forceExpressExit])
    {
      if ((v41 & 1) == 0)
      {
        v23 = *(*(a1 + 32) + 24);
        if (v23)
        {
          if (*(v23 + 181) == 1)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v25 = Logger;
              Class = object_getClass(*(a1 + 32));
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(*(a1 + 32));
              Name = sel_getName(*(a1 + 64));
              v29 = 45;
              if (isMetaClass)
              {
                v29 = 43;
              }

              v25(6, "%c[%{public}s %{public}s]:%i forceExpressExit is set - re-prioritizing the session.", v29, ClassName, Name, 5150);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v30 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v31))
              {
                v32 = 43;
              }

              else
              {
                v32 = 45;
              }

              v33 = object_getClassName(*(a1 + 32));
              v34 = sel_getName(*(a1 + 64));
              *buf = 67109890;
              v43 = v32;
              v44 = 2082;
              v45 = v33;
              v46 = 2082;
              v47 = v34;
              v48 = 1024;
              v49 = 5150;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i forceExpressExit is set - re-prioritizing the session.", buf, 0x22u);
            }

            [*(a1 + 32) prioritizeSession:*(a1 + 40)];
          }
        }
      }
    }

    [*(a1 + 32) maybeStartNextSession];
  }

LABEL_6:
}

void sub_100105460(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  if (a1)
  {
    v19 = 0;
    v18 = 0;
    v13 = a7;
    v14 = sub_1000ED4AC(a1, a2, a3, a4, a5, a6, &v19, &v18);
    v15 = v18;
    v13[2](v13, v15, v19, v14);

    v16 = *(a1 + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100105580;
    block[3] = &unk_100315F30;
    block[4] = a1;
    dispatch_async(v16, block);
  }
}

void sub_100106F98(uint64_t a1)
{
  v2 = sub_100003384(*(a1 + 32));
  if ((v2 & 0xFFFFFFFD) != 1)
  {
    if (v2 == 4)
    {
      v3 = *(a1 + 48);
      v11 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v42 = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"No NFC on device"];
      v43 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v8 = v11;
      v9 = v5;
      v10 = 57;
      goto LABEL_16;
    }

    if (*(a1 + 56) <= 0xFFuLL)
    {
      v12 = *(a1 + 56) == 0;
      *(a1 + 56);
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v3 = *(a1 + 48);
      v13 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v35 = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v36 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v8 = v13;
      v9 = v5;
      v10 = 10;
      goto LABEL_16;
    }

    v14 = [*(a1 + 40) NF_whitelistChecker];
    if (!v14)
    {
      v3 = *(a1 + 48);
      v18 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v40 = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Not entitled"];
      v41 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v8 = v18;
      v9 = v5;
      v10 = 32;
      goto LABEL_16;
    }

    v5 = v14;
    v15 = [*(*(a1 + 32) + 392) hasReaderModeSupport];
    v16 = v15;
    v17 = *(a1 + 56);
    if (v17 & 6) != 0 && (v15)
    {
      [v5 nfcNDEFReaderAccess];
      v17 = *(a1 + 56);
    }

    if ((v17 & 8) != 0)
    {
      if (v16)
      {
        [v5 nfcISO15693ReaderAccess];
        v17 = *(a1 + 56);
      }

      if ((v17 & 0x10) == 0)
      {
LABEL_20:
        if ((v17 & 0x20) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_29;
      }
    }

    else if ((v17 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    if (v16)
    {
      [v5 nfcTagReaderAccess];
      v17 = *(a1 + 56);
    }

    if ((v17 & 0x20) == 0)
    {
LABEL_21:
      if ((v17 & 0x80) == 0)
      {
LABEL_22:
        v20 = *(*(a1 + 48) + 16);
LABEL_45:
        v20();
        goto LABEL_17;
      }

LABEL_32:
      v21 = *(a1 + 40);
      if (v21)
      {
        [v21 auditToken];
      }

      else
      {
        memset(buf, 0, 32);
      }

      v22 = [_NFReaderSession isCNFCPaymentEligibleWithUserPrompt:0 auditToken:buf ignoreAuditToken:1];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v24 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 64));
        v27 = 45;
        if (isMetaClass)
        {
          v27 = 43;
        }

        v24(6, "%c[%{public}s %{public}s]:%i status=%lu", v27, ClassName, Name, 5348, v22);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v29))
        {
          v30 = 43;
        }

        else
        {
          v30 = 45;
        }

        v31 = object_getClassName(*(a1 + 32));
        v32 = sel_getName(*(a1 + 64));
        *buf = 67110146;
        *&buf[4] = v30;
        *&buf[8] = 2082;
        *&buf[10] = v31;
        *&buf[18] = 2082;
        *&buf[20] = v32;
        *&buf[28] = 1024;
        *&buf[30] = 5348;
        v38 = 2048;
        v39 = v22;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i status=%lu", buf, 0x2Cu);
      }

      v20 = *(*(a1 + 48) + 16);
      goto LABEL_45;
    }

LABEL_29:
    if (v16)
    {
      [v5 nfcVASReaderAccess];
      v17 = *(a1 + 56);
    }

    if ((v17 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  v3 = *(a1 + 48);
  v4 = [NSError alloc];
  v5 = [NSString stringWithUTF8String:"nfcd"];
  v44 = NSLocalizedDescriptionKey;
  v6 = [NSString stringWithUTF8String:"Unresponsive hardware"];
  v45 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v8 = v4;
  v9 = v5;
  v10 = 58;
LABEL_16:
  v19 = [v8 initWithDomain:v9 code:v10 userInfo:v7];
  (*(v3 + 16))(v3, 0, v19);

LABEL_17:
}

void sub_1001075EC(uint64_t a1)
{
  v29 = *(a1 + 60);
  v1 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = v3;
  if (v2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(v2);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v2);
      Name = sel_getName("_sync_configureReaderModeRFForTransitPartner:transitPartner:connection:completion:");
      [v4 NF_clientName];
      v12 = v1;
      v13 = v5;
      v15 = v14 = v4;
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i %{public}@ with configureNewRFConfig = %d", v16, ClassName, Name, 5376, v15, v29);

      v4 = v14;
      v5 = v13;
      v1 = v12;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = object_getClass(v2);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      v20 = object_getClassName(v2);
      v21 = sel_getName("_sync_configureReaderModeRFForTransitPartner:transitPartner:connection:completion:");
      v22 = [v4 NF_clientName];
      *buf = 67110402;
      *&buf[4] = v19;
      *v34 = 2082;
      *&v34[2] = v20;
      *&v34[10] = 2082;
      *&v34[12] = v21;
      *&v34[20] = 1024;
      *&v34[22] = 5376;
      *&v34[26] = 2114;
      *&v34[28] = v22;
      *&v34[36] = 1024;
      *&v34[38] = v29;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ with configureNewRFConfig = %d", buf, 0x32u);
    }

    if (sub_100003384(v2) == 2)
    {
      v23 = [v2 lastKnownRoutingConfig];
      if (!v23)
      {
        v23 = [v2 defaultRoutingConfig:3];
      }

      v24 = v2[30];
      *buf = _NSConcreteStackBlock;
      *v34 = 3221225472;
      *&v34[8] = sub_1001079FC;
      *&v34[16] = &unk_100318B80;
      *&v34[24] = v2;
      v36 = v29;
      v35 = v1;
      *&v34[32] = v5;
      *&v34[40] = "_sync_configureReaderModeRFForTransitPartner:transitPartner:connection:completion:";
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100107C28;
      v30[3] = &unk_100318878;
      v31 = *&v34[32];
      v32 = "_sync_configureReaderModeRFForTransitPartner:transitPartner:connection:completion:";
      [_NFBuiltinSession createSession:@"ConfigureRF" workQueue:v24 routing:v23 sessionQueuer:v2 didStartWork:buf failedToStart:v30];
    }

    else
    {
      v25 = [NSError alloc];
      v23 = [NSString stringWithUTF8String:"nfcd"];
      v30[0] = NSLocalizedDescriptionKey;
      v26 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      *buf = v26;
      v27 = [NSDictionary dictionaryWithObjects:buf forKeys:v30 count:1];
      v28 = [v25 initWithDomain:v23 code:58 userInfo:v27];
      (*(v5 + 2))(v5, v28);
    }
  }
}

void sub_1001079FC(uint64_t a1)
{
  v2 = *(a1 + 60);
  v3 = *(a1 + 56);
  v4 = sub_1001E121C(*(*(a1 + 32) + 376));
  v5 = *(a1 + 40);
  if (v4)
  {
    v6 = [NSError alloc];
    v7 = [NSString stringWithUTF8String:"nfcd"];
    v15[0] = NSLocalizedDescriptionKey;
    v8 = [NSString stringWithUTF8String:"Stack Error"];
    v16[0] = v8;
    v16[1] = &off_100331B78;
    v15[1] = @"Line";
    v15[2] = @"Method";
    v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v16[2] = v9;
    v15[3] = NSDebugDescriptionErrorKey;
    v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 5398];
    v16[3] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
    v12 = [v6 initWithDomain:v7 code:15 userInfo:v11];
    (*(v5 + 16))(v5, v12);
  }

  else
  {
    v13 = *(v5 + 16);
    v14 = *(a1 + 40);

    v13(v14, 0);
  }
}

void sub_100107C28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [NSError alloc];
  v6 = [NSString stringWithUTF8String:"nfcd"];
  v7 = [v3 code];
  v14[0] = NSLocalizedDescriptionKey;
  if ([v3 code] > 75)
  {
    v8 = 76;
  }

  else
  {
    v8 = [v3 code];
  }

  v9 = [NSString stringWithUTF8String:off_1003184A0[v8]];
  v15[0] = v9;
  v15[1] = v3;
  v14[1] = NSUnderlyingErrorKey;
  v14[2] = @"Line";
  v15[2] = &off_100331B90;
  v14[3] = @"Method";
  v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v15[3] = v10;
  v14[4] = NSDebugDescriptionErrorKey;
  v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 5402];
  v15[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];
  v13 = [v5 initWithDomain:v6 code:v7 userInfo:v12];
  (*(v4 + 16))(v4, v13);
}

void sub_1001096DC(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(5, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 5574);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v9))
    {
      v10 = 43;
    }

    else
    {
      v10 = 45;
    }

    v11 = object_getClassName(*(a1 + 32));
    v12 = sel_getName(*(a1 + 56));
    *buf = 67109890;
    v25 = v10;
    v26 = 2082;
    v27 = v11;
    v28 = 2082;
    v29 = v12;
    v30 = 1024;
    v31 = 5574;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  if (sub_100003384(*(a1 + 32)) == 2 || sub_100003384(*(a1 + 32)) == 5)
  {
    v13 = *(a1 + 32);
    v14 = [*(a1 + 40) NF_clientName];
    sub_1000EA03C(v13, 0, v14);

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v15 = *(a1 + 48);
    v16 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v22 = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v23 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v20 = [v16 initWithDomain:v17 code:58 userInfo:v19];
    (*(v15 + 16))(v15, 0, v20);
  }
}

void sub_10010A12C(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v2 = [*(*(a1 + 32) + 40) restrictedMode];
  os_unfair_lock_unlock((*(a1 + 32) + 48));
  if (!sub_1000E737C(*(a1 + 32)))
  {
    v3 = *(a1 + 40);
    v13 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v35[0] = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"JCOP not available"];
    v36[0] = v6;
    v36[1] = &off_100331BC0;
    v35[1] = @"Line";
    v35[2] = @"Method";
    v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v36[2] = v7;
    v35[3] = NSDebugDescriptionErrorKey;
    v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 5633];
    v36[3] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4];
    v10 = v13;
    v11 = v5;
    v12 = 53;
    goto LABEL_5;
  }

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v33[0] = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"Restricted Mode"];
    v34[0] = v6;
    v34[1] = &off_100331BD8;
    v33[1] = @"Line";
    v33[2] = @"Method";
    v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v34[2] = v7;
    v33[3] = NSDebugDescriptionErrorKey;
    v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 5636];
    v34[3] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:4];
    v10 = v4;
    v11 = v5;
    v12 = 24;
LABEL_5:
    v14 = [v10 initWithDomain:v11 code:v12 userInfo:v9];
    [v3 didStartSession:v14];

    goto LABEL_6;
  }

  if (sub_1000E70DC(*(a1 + 32)))
  {
    v3 = *(a1 + 40);
    v15 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v31[0] = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"Applet Migration"];
    v32[0] = v6;
    v32[1] = &off_100331BF0;
    v31[1] = @"Line";
    v31[2] = @"Method";
    v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v32[2] = v7;
    v31[3] = NSDebugDescriptionErrorKey;
    v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 5639];
    v32[3] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];
    v10 = v15;
    v11 = v5;
    v12 = 26;
    goto LABEL_5;
  }

  if (sub_1000E7158(*(a1 + 32)))
  {
    v3 = *(a1 + 40);
    v16 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v29[0] = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"JCOP in OSU"];
    v30[0] = v6;
    v30[1] = &off_100331C08;
    v29[1] = @"Line";
    v29[2] = @"Method";
    v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v30[2] = v7;
    v29[3] = NSDebugDescriptionErrorKey;
    v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 5642];
    v30[3] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];
    v10 = v16;
    v11 = v5;
    v12 = 52;
    goto LABEL_5;
  }

  v5 = sub_1001DC138(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0);
  if (v5)
  {
    v17 = *(a1 + 40);
    v18 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v20 = [v5 code];
    v27[0] = NSLocalizedDescriptionKey;
    if ([v5 code] > 75)
    {
      v21 = 76;
    }

    else
    {
      v21 = [v5 code];
    }

    v22 = [NSString stringWithUTF8String:off_1003184A0[v21]];
    v28[0] = v22;
    v28[1] = v5;
    v27[1] = NSUnderlyingErrorKey;
    v27[2] = @"Line";
    v28[2] = &off_100331C20;
    v27[3] = @"Method";
    v23 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v28[3] = v23;
    v27[4] = NSDebugDescriptionErrorKey;
    v24 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 5649];
    v28[4] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:5];
    v26 = [v18 initWithDomain:v19 code:v20 userInfo:v25];
    [v17 didStartSession:v26];
  }

  else
  {
    [*(a1 + 32) maybeStartNextSession];
  }

LABEL_6:
}

void sub_10010AF1C(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v2 = [*(*(a1 + 32) + 40) restrictedMode];
  os_unfair_lock_unlock((*(a1 + 32) + 48));
  if (!sub_1000E737C(*(a1 + 32)))
  {
    v3 = *(a1 + 40);
    v13 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v35[0] = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"JCOP not available"];
    v36[0] = v6;
    v36[1] = &off_100331C38;
    v35[1] = @"Line";
    v35[2] = @"Method";
    v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v36[2] = v7;
    v35[3] = NSDebugDescriptionErrorKey;
    v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 5702];
    v36[3] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4];
    v10 = v13;
    v11 = v5;
    v12 = 53;
    goto LABEL_5;
  }

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v33[0] = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"Restricted Mode"];
    v34[0] = v6;
    v34[1] = &off_100331C50;
    v33[1] = @"Line";
    v33[2] = @"Method";
    v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v34[2] = v7;
    v33[3] = NSDebugDescriptionErrorKey;
    v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 5705];
    v34[3] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:4];
    v10 = v4;
    v11 = v5;
    v12 = 24;
LABEL_5:
    v14 = [v10 initWithDomain:v11 code:v12 userInfo:v9];
    [v3 didStartSession:v14];

    goto LABEL_6;
  }

  if (sub_1000E70DC(*(a1 + 32)))
  {
    v3 = *(a1 + 40);
    v15 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v31[0] = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"Applet Migration"];
    v32[0] = v6;
    v32[1] = &off_100331C68;
    v31[1] = @"Line";
    v31[2] = @"Method";
    v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v32[2] = v7;
    v31[3] = NSDebugDescriptionErrorKey;
    v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 5708];
    v32[3] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];
    v10 = v15;
    v11 = v5;
    v12 = 26;
    goto LABEL_5;
  }

  if (sub_1000E7158(*(a1 + 32)))
  {
    v3 = *(a1 + 40);
    v16 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v29[0] = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"JCOP in OSU"];
    v30[0] = v6;
    v30[1] = &off_100331C80;
    v29[1] = @"Line";
    v29[2] = @"Method";
    v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v30[2] = v7;
    v29[3] = NSDebugDescriptionErrorKey;
    v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 5711];
    v30[3] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];
    v10 = v16;
    v11 = v5;
    v12 = 52;
    goto LABEL_5;
  }

  v5 = sub_1001DC138(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0);
  if (v5)
  {
    v17 = *(a1 + 40);
    v18 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v20 = [v5 code];
    v27[0] = NSLocalizedDescriptionKey;
    if ([v5 code] > 75)
    {
      v21 = 76;
    }

    else
    {
      v21 = [v5 code];
    }

    v22 = [NSString stringWithUTF8String:off_1003184A0[v21]];
    v28[0] = v22;
    v28[1] = v5;
    v27[1] = NSUnderlyingErrorKey;
    v27[2] = @"Line";
    v28[2] = &off_100331C98;
    v27[3] = @"Method";
    v23 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v28[3] = v23;
    v27[4] = NSDebugDescriptionErrorKey;
    v24 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 5718];
    v28[4] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:5];
    v26 = [v18 initWithDomain:v19 code:v20 userInfo:v25];
    [v17 didStartSession:v26];
  }

  else
  {
    [*(a1 + 32) maybeStartNextSession];
  }

LABEL_6:
}

void sub_10010D3FC(uint64_t a1)
{
  v2 = sub_10000431C(*(*(a1 + 32) + 376));
  v3 = [v2 fdOn];

  [*(a1 + 32) maybeStartNextSession];
  if ([*(a1 + 40) count])
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && (sub_1000065FC(*(a1 + 32)) & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    if ((!v6 || (*(v6 + 181) & 1) == 0) && ([*(v5 + 416) isActive] & 1) == 0)
    {
      v7 = *(*(a1 + 32) + 376);
      if (v7)
      {
        [*(v7 + 72) lock];
        v8 = *(v7 + 104);
        v9 = v8;
        [*(v7 + 72) unlock];
        v10 = v8;
        if (v10)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v12 = Logger;
            Class = object_getClass(*(a1 + 32));
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(*(a1 + 32));
            Name = sel_getName(*(a1 + 48));
            v16 = 45;
            if (isMetaClass)
            {
              v16 = 43;
            }

            v12(6, "%c[%{public}s %{public}s]:%i Restart FD to refresh field notification", v16, ClassName, Name, 5970);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v17 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = object_getClass(*(a1 + 32));
            if (class_isMetaClass(v18))
            {
              v19 = 43;
            }

            else
            {
              v19 = 45;
            }

            v20 = object_getClassName(*(a1 + 32));
            v21 = sel_getName(*(a1 + 48));
            *buf = 67109890;
            v24 = v19;
            v25 = 2082;
            v26 = v20;
            v27 = 2082;
            v28 = v21;
            v29 = 1024;
            v30 = 5970;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restart FD to refresh field notification", buf, 0x22u);
          }

          sub_10021E364(*(*(a1 + 32) + 376));
        }
      }

      else
      {
        v10 = 0;
      }
    }
  }
}

void sub_100110F40(uint64_t a1)
{
  v2 = sub_1001AE20C();
  [*(a1 + 32) setPowerConsumptionReporter:v2];

  v3 = sub_1001DC138(*(a1 + 40), *(a1 + 32), *(a1 + 48), *(a1 + 56), 0);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v7 = [v3 code];
    v35[0] = NSLocalizedDescriptionKey;
    if ([v3 code] > 75)
    {
      v8 = 76;
    }

    else
    {
      v8 = [v3 code];
    }

    v21 = [NSString stringWithUTF8String:off_1003184A0[v8]];
    v36[0] = v21;
    v36[1] = v3;
    v35[1] = NSUnderlyingErrorKey;
    v35[2] = @"Line";
    v36[2] = &off_100331CB0;
    v35[3] = @"Method";
    v22 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v36[3] = v22;
    v35[4] = NSDebugDescriptionErrorKey;
    v23 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 6333];
    v36[4] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:5];
    v25 = [v5 initWithDomain:v6 code:v7 userInfo:v24];
    [v4 didStartSession:v25];
  }

  else
  {
    if ([*(a1 + 32) forceExpressExit])
    {
      if ((*(a1 + 72) & 1) == 0)
      {
        v9 = *(*(a1 + 40) + 24);
        if (v9)
        {
          if (*(v9 + 181) == 1)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v11 = Logger;
              Class = object_getClass(*(a1 + 40));
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(*(a1 + 40));
              Name = sel_getName(*(a1 + 64));
              v15 = 45;
              if (isMetaClass)
              {
                v15 = 43;
              }

              v11(6, "%c[%{public}s %{public}s]:%i forceExpressExit is set - re-prioritiing the session.", v15, ClassName, Name, 6338);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v16 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = object_getClass(*(a1 + 40));
              if (class_isMetaClass(v17))
              {
                v18 = 43;
              }

              else
              {
                v18 = 45;
              }

              v19 = object_getClassName(*(a1 + 40));
              v20 = sel_getName(*(a1 + 64));
              *buf = 67109890;
              v28 = v18;
              v29 = 2082;
              v30 = v19;
              v31 = 2082;
              v32 = v20;
              v33 = 1024;
              v34 = 6338;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i forceExpressExit is set - re-prioritiing the session.", buf, 0x22u);
            }

            [*(a1 + 40) prioritizeSession:*(a1 + 32)];
          }
        }
      }
    }

    [*(a1 + 40) maybeStartNextSession];
  }
}

void sub_100112FC8(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      v14 = +[NSAssertionHandler currentHandler];
      [v14 handleFailureInMethod:*(a1 + 88) object:*(a1 + 32) file:@"_NFHardwareManager.m" lineNumber:6552 description:@"Invalid state"];

      v3 = *(a1 + 80);
      v15 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v55[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Invalid State"];
      v56[0] = v6;
      v56[1] = &off_100331D28;
      v55[1] = @"Line";
      v55[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 88))];
      v56[2] = v7;
      v55[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 88)), 6553];
      v56[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:4];
      v10 = v15;
      v11 = v5;
      v12 = 12;
      goto LABEL_7;
    case 3:
      v3 = *(a1 + 80);
      v13 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v57[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Session ineligible"];
      v58[0] = v6;
      v58[1] = &off_100331D10;
      v57[1] = @"Line";
      v57[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 88))];
      v58[2] = v7;
      v57[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 88)), 6549];
      v58[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:4];
      v10 = v13;
      v11 = v5;
      v12 = 70;
      goto LABEL_7;
    case 2:
      v3 = *(a1 + 80);
      v4 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v59[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"TCC access denied"];
      v60[0] = v6;
      v60[1] = &off_100331CF8;
      v59[1] = @"Line";
      v59[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 88))];
      v60[2] = v7;
      v59[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 88)), 6546];
      v60[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:4];
      v10 = v4;
      v11 = v5;
      v12 = 69;
LABEL_7:
      v16 = [v10 initWithDomain:v11 code:v12 userInfo:v9];
      (*(v3 + 16))(v3, 0, 0, v16);

      goto LABEL_8;
  }

  v17 = [_NFCardSession alloc];
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 40);
  v21 = sub_100007D90(*(a1 + 32));
  v5 = [(_NFCardSession *)v17 initWithConfig:v20 allowlistChecker:v18 remoteObject:v19 workQueue:v21];

  if (v5)
  {
    [(_NFSession *)v5 setQueue:*(a1 + 32)];
    [(_NFXPCSession *)v5 setConnection:*(a1 + 64)];
    [(_NFSession *)v5 setUid:*(a1 + 96)];
    [(_NFHCESession *)v5 setReadOnConnected:1];
    [(_NFHCESession *)v5 setEmulationOnSessionStart:1];
    -[_NFSession setServiceType:](v5, "setServiceType:", [*(a1 + 72) unsignedIntegerValue]);
    buf[0] = 0;
    v22 = sub_1001DC138(*(a1 + 32), v5, *(a1 + 64), 0, buf);
    if (!v22)
    {
      v42 = sub_100007D90(*(a1 + 32));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001137F0;
      block[3] = &unk_100315F30;
      block[4] = *(a1 + 32);
      dispatch_async(v42, block);
    }

    (*(*(a1 + 80) + 16))();
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v24 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 88));
      v28 = 45;
      if (isMetaClass)
      {
        v28 = 43;
      }

      v24(3, "%c[%{public}s %{public}s]:%i Session creation failed.", v28, ClassName, Name, 6562);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v30))
      {
        v31 = 43;
      }

      else
      {
        v31 = 45;
      }

      v32 = object_getClassName(*(a1 + 32));
      v33 = sel_getName(*(a1 + 88));
      *buf = 67109890;
      v48 = v31;
      v49 = 2082;
      v50 = v32;
      v51 = 2082;
      v52 = v33;
      v53 = 1024;
      v54 = 6562;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session creation failed.", buf, 0x22u);
    }

    v34 = *(a1 + 80);
    v35 = [NSError alloc];
    v36 = [NSString stringWithUTF8String:"nfcd"];
    v45[0] = NSLocalizedDescriptionKey;
    v37 = [NSString stringWithUTF8String:"Unexpected Result"];
    v46[0] = v37;
    v46[1] = &off_100331D40;
    v45[1] = @"Line";
    v45[2] = @"Method";
    v38 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 88))];
    v46[2] = v38;
    v45[3] = NSDebugDescriptionErrorKey;
    v39 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 88)), 6563];
    v46[3] = v39;
    v40 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:4];
    v41 = [v35 initWithDomain:v36 code:13 userInfo:v40];
    (*(v34 + 16))(v34, 0, 0, v41);

    v5 = 0;
  }

LABEL_8:
}

void sub_100114100(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      v14 = +[NSAssertionHandler currentHandler];
      [v14 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"_NFHardwareManager.m" lineNumber:6643 description:@"Invalid state"];

      v3 = *(a1 + 64);
      v15 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v50[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Invalid State"];
      v51[0] = v6;
      v51[1] = &off_100331DA0;
      v50[1] = @"Line";
      v50[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 72))];
      v51[2] = v7;
      v50[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 72)), 6644];
      v51[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:4];
      v10 = v15;
      v11 = v5;
      v12 = 12;
      goto LABEL_7;
    case 3:
      v3 = *(a1 + 64);
      v13 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v52[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Session ineligible"];
      v53[0] = v6;
      v53[1] = &off_100331D88;
      v52[1] = @"Line";
      v52[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 72))];
      v53[2] = v7;
      v52[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 72)), 6640];
      v53[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:4];
      v10 = v13;
      v11 = v5;
      v12 = 70;
      goto LABEL_7;
    case 2:
      v3 = *(a1 + 64);
      v4 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v54[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"TCC access denied"];
      v55[0] = v6;
      v55[1] = &off_100331D70;
      v54[1] = @"Line";
      v54[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 72))];
      v55[2] = v7;
      v54[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 72)), 6637];
      v55[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:4];
      v10 = v4;
      v11 = v5;
      v12 = 69;
LABEL_7:
      v16 = [v10 initWithDomain:v11 code:v12 userInfo:v9];
      (*(v3 + 16))(v3, 0, v16);

      goto LABEL_8;
  }

  v17 = [_NFFieldDetectSession alloc];
  v18 = *(a1 + 40);
  v19 = sub_100007D90(*(a1 + 32));
  v5 = [(_NFFieldDetectSession *)v17 initWithRemoteObject:v18 workQueue:v19];

  if (v5)
  {
    [(_NFSession *)v5 setQueue:*(a1 + 32)];
    [(_NFXPCSession *)v5 setConnection:*(a1 + 48)];
    [(_NFSession *)v5 setUid:*(a1 + 80)];
    -[_NFSession setServiceType:](v5, "setServiceType:", [*(a1 + 56) unsignedIntegerValue]);
    [(_NFFieldDetectSession *)v5 setNotificationConfig:14];
    [(_NFFieldDetectSession *)v5 setNotificationCategories:4];
    sub_100095F8C(*(a1 + 32), v5, 1, *(a1 + 84), *(a1 + 64));
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v21 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 72));
      v25 = 45;
      if (isMetaClass)
      {
        v25 = 43;
      }

      v21(3, "%c[%{public}s %{public}s]:%i Session creation failed.", v25, ClassName, Name, 6652);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      v29 = object_getClassName(*(a1 + 32));
      v30 = sel_getName(*(a1 + 72));
      *buf = 67109890;
      v43 = v28;
      v44 = 2082;
      v45 = v29;
      v46 = 2082;
      v47 = v30;
      v48 = 1024;
      v49 = 6652;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session creation failed.", buf, 0x22u);
    }

    v31 = *(a1 + 64);
    v32 = [NSError alloc];
    v33 = [NSString stringWithUTF8String:"nfcd"];
    v40[0] = NSLocalizedDescriptionKey;
    v34 = [NSString stringWithUTF8String:"Unexpected Result"];
    v41[0] = v34;
    v41[1] = &off_100331DB8;
    v40[1] = @"Line";
    v40[2] = @"Method";
    v35 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 72))];
    v41[2] = v35;
    v40[3] = NSDebugDescriptionErrorKey;
    v36 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 72)), 6653];
    v41[3] = v36;
    v37 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:4];
    v38 = [v32 initWithDomain:v33 code:13 userInfo:v37];
    (*(v31 + 16))(v31, 0, v38);

    v5 = 0;
  }

LABEL_8:
}

uint64_t sub_100114D84(uint64_t a1, uint64_t a2)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i eligible=%lu", v8, ClassName, Name, 6691, a2);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    v12 = object_getClassName(*(a1 + 32));
    v13 = sel_getName(*(a1 + 48));
    *buf = 67110146;
    v18 = v11;
    v19 = 2082;
    v20 = v12;
    v21 = 2082;
    v22 = v13;
    v23 = 1024;
    v24 = 6691;
    v25 = 2048;
    v26 = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i eligible=%lu", buf, 0x2Cu);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100115510(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (!v1)
  {
    goto LABEL_51;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(v1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v1);
    Name = sel_getName("_sync_preWarmForConnection:completion:");
    v11 = [v3 NF_clientName];
    v12 = 45;
    if (isMetaClass)
    {
      v12 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i %{public}@", v12, ClassName, Name, 6804, v11);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v13 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = object_getClass(v1);
    if (class_isMetaClass(v14))
    {
      v15 = 43;
    }

    else
    {
      v15 = 45;
    }

    v16 = object_getClassName(v1);
    v17 = sel_getName("_sync_preWarmForConnection:completion:");
    v18 = [v3 NF_clientName];
    *buf = 67110146;
    *&buf[4] = v15;
    *v74 = 2082;
    *&v74[2] = v16;
    *&v74[10] = 2082;
    *&v74[12] = v17;
    *&v74[20] = 1024;
    *&v74[22] = 6804;
    *&v74[26] = 2114;
    *&v74[28] = v18;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (sub_100003384(v1) != 2 && sub_100003384(v1) != 5)
  {
    v52 = [NSError alloc];
    v31 = [NSString stringWithUTF8String:"nfcd"];
    v72[0] = NSLocalizedDescriptionKey;
    v32 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    *buf = v32;
    v33 = [NSDictionary dictionaryWithObjects:buf forKeys:v72 count:1];
    v34 = v52;
    v35 = v31;
    v36 = 58;
LABEL_39:
    v53 = [v34 initWithDomain:v35 code:v36 userInfo:v33];
    v4[2](v4, v53);

    goto LABEL_51;
  }

  if (*(v1 + 363) == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v20 = v19;
      v21 = object_getClass(v1);
      v22 = class_isMetaClass(v21);
      v23 = object_getClassName(v1);
      v69 = sel_getName("_sync_preWarmForConnection:completion:");
      v24 = 45;
      if (v22)
      {
        v24 = 43;
      }

      v20(6, "%c[%{public}s %{public}s]:%i Unable to prewarm - recovery already started", v24, v23, v69, 6812);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = object_getClass(v1);
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      v28 = object_getClassName(v1);
      v29 = sel_getName("_sync_preWarmForConnection:completion:");
      *buf = 67109890;
      *&buf[4] = v27;
      *v74 = 2082;
      *&v74[2] = v28;
      *&v74[10] = 2082;
      *&v74[12] = v29;
      *&v74[20] = 1024;
      *&v74[22] = 6812;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Unable to prewarm - recovery already started", buf, 0x22u);
    }

    v30 = [NSError alloc];
    v31 = [NSString stringWithUTF8String:"nfcd"];
    v72[0] = NSLocalizedDescriptionKey;
    v32 = [NSString stringWithUTF8String:"Busy"];
    *buf = v32;
    v33 = [NSDictionary dictionaryWithObjects:buf forKeys:v72 count:1];
    v34 = v30;
    v35 = v31;
    v36 = 2;
    goto LABEL_39;
  }

  if (*(v1 + 345) & 1) != 0 || (sub_100003110(*(v1 + 96)))
  {
LABEL_50:
    v4[2](v4, 0);
    goto LABEL_51;
  }

  v37 = sub_10021A4A0(*(v1 + 376), @"Prewarm", 0);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v38 = NFLogGetLogger();
  v39 = v38;
  if (!v37)
  {
    if (v38)
    {
      v54 = object_getClass(v1);
      v55 = class_isMetaClass(v54);
      v56 = object_getClassName(v1);
      v71 = sel_getName("_sync_preWarmForConnection:completion:");
      v57 = 45;
      if (v55)
      {
        v57 = 43;
      }

      v39(6, "%c[%{public}s %{public}s]:%i pre-warming hardware until unlock", v57, v56, v71, 6826);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v58 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = object_getClass(v1);
      if (class_isMetaClass(v59))
      {
        v60 = 43;
      }

      else
      {
        v60 = 45;
      }

      v61 = object_getClassName(v1);
      v62 = sel_getName("_sync_preWarmForConnection:completion:");
      *buf = 67109890;
      *&buf[4] = v60;
      *v74 = 2082;
      *&v74[2] = v61;
      *&v74[10] = 2082;
      *&v74[12] = v62;
      *&v74[20] = 1024;
      *&v74[22] = 6826;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i pre-warming hardware until unlock", buf, 0x22u);
    }

    *(v1 + 345) = 1;
    goto LABEL_50;
  }

  if (v38)
  {
    v40 = object_getClass(v1);
    v41 = class_isMetaClass(v40);
    v68 = object_getClassName(v1);
    v70 = sel_getName("_sync_preWarmForConnection:completion:");
    v42 = 45;
    if (v41)
    {
      v42 = 43;
    }

    v39(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v42, v68, v70, 6822, v37);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v43 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    v44 = object_getClass(v1);
    if (class_isMetaClass(v44))
    {
      v45 = 43;
    }

    else
    {
      v45 = 45;
    }

    v46 = object_getClassName(v1);
    v47 = sel_getName("_sync_preWarmForConnection:completion:");
    *buf = 67110146;
    *&buf[4] = v45;
    *v74 = 2082;
    *&v74[2] = v46;
    *&v74[10] = 2082;
    *&v74[12] = v47;
    *&v74[20] = 1024;
    *&v74[22] = 6822;
    *&v74[26] = 2112;
    *&v74[28] = v37;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
  }

  v48 = [NSError alloc];
  v49 = [NSString stringWithUTF8String:"nfcd"];
  v50 = [v37 code];
  v72[0] = NSLocalizedDescriptionKey;
  if ([v37 code] > 75)
  {
    v51 = 76;
  }

  else
  {
    v51 = [v37 code];
  }

  v63 = [NSString stringWithUTF8String:off_1003184A0[v51]];
  *buf = v63;
  *v74 = v37;
  v72[1] = NSUnderlyingErrorKey;
  v72[2] = @"Line";
  *&v74[8] = &off_100331DD0;
  v72[3] = @"Method";
  v64 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_preWarmForConnection:completion:")];
  *&v74[16] = v64;
  v72[4] = NSDebugDescriptionErrorKey;
  v65 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_preWarmForConnection:completion:"), 6823];
  *&v74[24] = v65;
  v66 = [NSDictionary dictionaryWithObjects:buf forKeys:v72 count:5];
  v67 = [v48 initWithDomain:v49 code:v50 userInfo:v66];
  v4[2](v4, v67);

LABEL_51:
}

void sub_100115E94(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v61 = *(a1 + 40);
  v62 = v3;
  v5 = v4;
  if (v2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(v2);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v2);
      Name = sel_getName("_sync_updateBackgroundTagReading:params:connection:completion:");
      v12 = [v62 NF_clientName];
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i %{public}@", v13, ClassName, Name, 6851, v12);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = object_getClass(v2);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      v17 = object_getClassName(v2);
      v18 = sel_getName("_sync_updateBackgroundTagReading:params:connection:completion:");
      v19 = [v62 NF_clientName];
      *buf = 67110146;
      *&buf[4] = v16;
      *v68 = 2082;
      *&v68[2] = v17;
      *&v68[10] = 2082;
      *&v68[12] = v18;
      *&v68[20] = 1024;
      *&v68[22] = 6851;
      v69 = 2114;
      v70 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    if (sub_100003384(v2) == 2)
    {
      v20 = [v62 NF_whitelistChecker];
      if (([v20 readerInternalAccess] & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v26 = NFLogGetLogger();
        if (v26)
        {
          v27 = v26;
          v28 = object_getClass(v2);
          v29 = class_isMetaClass(v28);
          v30 = object_getClassName(v2);
          v60 = sel_getName("_sync_updateBackgroundTagReading:params:connection:completion:");
          v31 = 45;
          if (v29)
          {
            v31 = 43;
          }

          v27(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring internal reader access", v31, v30, v60, 6861);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v32 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = object_getClass(v2);
          if (class_isMetaClass(v33))
          {
            v34 = 43;
          }

          else
          {
            v34 = 45;
          }

          v35 = object_getClassName(v2);
          v36 = sel_getName("_sync_updateBackgroundTagReading:params:connection:completion:");
          *buf = 67109890;
          *&buf[4] = v34;
          *v68 = 2082;
          *&v68[2] = v35;
          *&v68[10] = 2082;
          *&v68[12] = v36;
          *&v68[20] = 1024;
          *&v68[22] = 6861;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring internal reader access", buf, 0x22u);
        }

        v37 = [NSError alloc];
        v38 = [NSString stringWithUTF8String:"nfcd"];
        v63 = NSLocalizedDescriptionKey;
        v39 = [NSString stringWithUTF8String:"Not entitled"];
        *buf = v39;
        v40 = [NSDictionary dictionaryWithObjects:buf forKeys:&v63 count:1];
        v41 = [v37 initWithDomain:v38 code:32 userInfo:v40];
        v5[2](v5, v41, 0);

        goto LABEL_49;
      }

      if (v1 != 4)
      {
        if (byte_10035D9F0)
        {
          v42 = 3;
        }

        else
        {
          v42 = 2;
        }

        if (v1 && v42 != v1)
        {
          if (v1 == 2)
          {
            byte_10035D9F0 = 0;
            [v2[52] resume];
          }

          else if (v1 == 3)
          {
            byte_10035D9F0 = 1;
            [v2[52] suspend];
          }
        }

        if (byte_10035D9F0)
        {
          v59 = 3;
        }

        else
        {
          v59 = 2;
        }

        v5[2](v5, 0, v59);
        goto LABEL_49;
      }

      if (NFIsInternalBuild())
      {
        if (v61)
        {
          v21 = [v61 objectForKeyedSubscript:@"ndef"];
          if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            [v2[52] handleMessage:v21];
            v5[2](v5, 0, 4);
          }

          else
          {
            v50 = [NSError alloc];
            v51 = [NSString stringWithUTF8String:"nfcd"];
            v63 = NSLocalizedDescriptionKey;
            v52 = [NSString stringWithUTF8String:"Invalid Parameter"];
            *buf = v52;
            *v68 = &off_100331E18;
            v64 = @"Line";
            v65 = @"Method";
            v53 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_updateBackgroundTagReading:params:connection:completion:")];
            *&v68[8] = v53;
            v66 = NSDebugDescriptionErrorKey;
            v54 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_updateBackgroundTagReading:params:connection:completion:"), 6878];
            *&v68[16] = v54;
            v55 = [NSDictionary dictionaryWithObjects:buf forKeys:&v63 count:4];
            v56 = [v50 initWithDomain:v51 code:10 userInfo:v55];
            v5[2](v5, v56, 4);
          }

          goto LABEL_49;
        }

        v57 = [NSError alloc];
        v23 = [NSString stringWithUTF8String:"nfcd"];
        v63 = NSLocalizedDescriptionKey;
        v24 = [NSString stringWithUTF8String:"Invalid Parameter"];
        *buf = v24;
        *v68 = &off_100331E00;
        v64 = @"Line";
        v65 = @"Method";
        v44 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_updateBackgroundTagReading:params:connection:completion:")];
        *&v68[8] = v44;
        v66 = NSDebugDescriptionErrorKey;
        v45 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_updateBackgroundTagReading:params:connection:completion:"), 6872];
        *&v68[16] = v45;
        v46 = [NSDictionary dictionaryWithObjects:buf forKeys:&v63 count:4];
        v47 = v57;
        v48 = v23;
        v49 = 10;
      }

      else
      {
        v43 = [NSError alloc];
        v23 = [NSString stringWithUTF8String:"nfcd"];
        v63 = NSLocalizedDescriptionKey;
        v24 = [NSString stringWithUTF8String:"Feature Not Supported"];
        *buf = v24;
        *v68 = &off_100331DE8;
        v64 = @"Line";
        v65 = @"Method";
        v44 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_updateBackgroundTagReading:params:connection:completion:")];
        *&v68[8] = v44;
        v66 = NSDebugDescriptionErrorKey;
        v45 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_updateBackgroundTagReading:params:connection:completion:"), 6868];
        *&v68[16] = v45;
        v46 = [NSDictionary dictionaryWithObjects:buf forKeys:&v63 count:4];
        v47 = v43;
        v48 = v23;
        v49 = 14;
      }

      v58 = [v47 initWithDomain:v48 code:v49 userInfo:v46];
      v5[2](v5, v58, 4);
    }

    else
    {
      v22 = [NSError alloc];
      v20 = [NSString stringWithUTF8String:"nfcd"];
      v63 = NSLocalizedDescriptionKey;
      v23 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      *buf = v23;
      v24 = [NSDictionary dictionaryWithObjects:buf forKeys:&v63 count:1];
      v25 = [v22 initWithDomain:v20 code:58 userInfo:v24];
      v5[2](v5, v25, 1);
    }

LABEL_49:
  }
}

void sub_100116898(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    if (!v1)
    {
LABEL_38:
      v3[2](v3);
      goto LABEL_39;
    }

    v4 = sub_100003384(v2);
    v5 = sub_1001A9F5C(*(v2 + 376));
    if ((v4 - 3) <= 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("_sync_actOnUserInitiatedSystemShutDown:completion:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v7(6, "%c[%{public}s %{public}s]:%i User shutdown (0x%x) - unsupported hardware", v10, ClassName, Name, 7007, v1);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v12 = object_getClass(v2);
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      *buf = 67110146;
      v97 = v13;
      v98 = 2082;
      v99 = object_getClassName(v2);
      v100 = 2082;
      v101 = sel_getName("_sync_actOnUserInitiatedSystemShutDown:completion:");
      v102 = 1024;
      v103 = 7007;
      v104 = 1024;
      v105 = v1;
      v14 = "%c[%{public}s %{public}s]:%i User shutdown (0x%x) - unsupported hardware";
LABEL_34:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v14, buf, 0x28u);
LABEL_35:

LABEL_36:
      v31 = 0;
LABEL_37:
      *(v2 + 364) = v31;
      goto LABEL_38;
    }

    if (*(v2 + 356) == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v16 = v15;
        v17 = object_getClass(v2);
        v18 = class_isMetaClass(v17);
        v84 = object_getClassName(v2);
        v90 = sel_getName("_sync_actOnUserInitiatedSystemShutDown:completion:");
        v19 = 45;
        if (v18)
        {
          v19 = 43;
        }

        v16(6, "%c[%{public}s %{public}s]:%i User shutdown (0x%x) - testing headless", v19, v84, v90, 7011, v1);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v20 = object_getClass(v2);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      *buf = 67110146;
      v97 = v21;
      v98 = 2082;
      v99 = object_getClassName(v2);
      v100 = 2082;
      v101 = sel_getName("_sync_actOnUserInitiatedSystemShutDown:completion:");
      v102 = 1024;
      v103 = 7011;
      v104 = 1024;
      v105 = v1;
      v14 = "%c[%{public}s %{public}s]:%i User shutdown (0x%x) - testing headless";
      goto LABEL_34;
    }

    v22 = v5;
    v23 = *(v2 + 24);
    if (v23 && *(v23 + 179) == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v25 = v24;
        v26 = object_getClass(v2);
        v27 = class_isMetaClass(v26);
        v85 = object_getClassName(v2);
        v91 = sel_getName("_sync_actOnUserInitiatedSystemShutDown:completion:");
        v28 = 45;
        if (v27)
        {
          v28 = 43;
        }

        v25(6, "%c[%{public}s %{public}s]:%i User shutdown (0x%x) - factory test mode", v28, v85, v91, 7016, v1);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v29 = object_getClass(v2);
      if (class_isMetaClass(v29))
      {
        v30 = 43;
      }

      else
      {
        v30 = 45;
      }

      *buf = 67110146;
      v97 = v30;
      v98 = 2082;
      v99 = object_getClassName(v2);
      v100 = 2082;
      v101 = sel_getName("_sync_actOnUserInitiatedSystemShutDown:completion:");
      v102 = 1024;
      v103 = 7016;
      v104 = 1024;
      v105 = v1;
      v14 = "%c[%{public}s %{public}s]:%i User shutdown (0x%x) - factory test mode";
      goto LABEL_34;
    }

    v32 = v5 & 0x1C;
    if ([*(v2 + 392) hasLPEMSupport])
    {
      v33 = v32 == 0;
    }

    else
    {
      v33 = 1;
    }

    if (!v33 && (v22 & 0xFFFFFFFFFFFFFFE3) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v44 = NFLogGetLogger();
      if (v44)
      {
        v45 = v44;
        v46 = object_getClass(v2);
        v47 = class_isMetaClass(v46);
        v87 = object_getClassName(v2);
        v93 = sel_getName("_sync_actOnUserInitiatedSystemShutDown:completion:");
        v48 = 45;
        if (v47)
        {
          v48 = 43;
        }

        v45(6, "%c[%{public}s %{public}s]:%i User shutdown (0x%x) - find my is enabled", v48, v87, v93, 7023, v1);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v49 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = object_getClass(v2);
        if (class_isMetaClass(v50))
        {
          v51 = 43;
        }

        else
        {
          v51 = 45;
        }

        *buf = 67110146;
        v97 = v51;
        v98 = 2082;
        v99 = object_getClassName(v2);
        v100 = 2082;
        v101 = sel_getName("_sync_actOnUserInitiatedSystemShutDown:completion:");
        v102 = 1024;
        v103 = 7023;
        v104 = 1024;
        v105 = v1;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i User shutdown (0x%x) - find my is enabled", buf, 0x28u);
      }

      v52 = sub_1002261A0();
      sub_100228858(v52);

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v53 = NFLogGetLogger();
      if (v53)
      {
        v54 = v53;
        v55 = object_getClass(v2);
        v56 = class_isMetaClass(v55);
        v57 = object_getClassName(v2);
        v94 = sel_getName("_sync_actOnUserInitiatedSystemShutDown:completion:");
        v58 = 45;
        if (v56)
        {
          v58 = 43;
        }

        v54(6, "%c[%{public}s %{public}s]:%i Clear SE express config", v58, v57, v94, 7029);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v59 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = object_getClass(v2);
        if (class_isMetaClass(v60))
        {
          v61 = 43;
        }

        else
        {
          v61 = 45;
        }

        v62 = object_getClassName(v2);
        v63 = sel_getName("_sync_actOnUserInitiatedSystemShutDown:completion:");
        *buf = 67109890;
        v97 = v61;
        v98 = 2082;
        v99 = v62;
        v100 = 2082;
        v101 = v63;
        v102 = 1024;
        v103 = 7029;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Clear SE express config", buf, 0x22u);
      }

      goto LABEL_80;
    }

    if ([*(v2 + 392) hasLPEMSupport] && v32 && (v22 & 3) != 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v35 = NFLogGetLogger();
      if (v35)
      {
        v36 = v35;
        v37 = object_getClass(v2);
        v38 = class_isMetaClass(v37);
        v86 = object_getClassName(v2);
        v92 = sel_getName("_sync_actOnUserInitiatedSystemShutDown:completion:");
        v39 = 45;
        if (v38)
        {
          v39 = 43;
        }

        v36(6, "%c[%{public}s %{public}s]:%i User shutdown (0x%x) - find my is enabled but so is NFC / Alisha", v39, v86, v92, 7044, v1);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v40 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = object_getClass(v2);
        if (class_isMetaClass(v41))
        {
          v42 = 43;
        }

        else
        {
          v42 = 45;
        }

        *buf = 67110146;
        v97 = v42;
        v98 = 2082;
        v99 = object_getClassName(v2);
        v100 = 2082;
        v101 = sel_getName("_sync_actOnUserInitiatedSystemShutDown:completion:");
        v102 = 1024;
        v103 = 7044;
        v104 = 1024;
        v105 = v1;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i User shutdown (0x%x) - find my is enabled but so is NFC / Alisha", buf, 0x28u);
      }

      v43 = sub_1002261A0();
      sub_100228858(v43);

      if ((v22 & 2) != 0)
      {
        sub_1001AA6BC(*(v2 + 376), 2);
      }

LABEL_80:
      v64 = sub_10004BF2C();
      v65 = [v2 setRoutingConfig:v64];

      v66 = sub_100256130(*(v2 + 384));
      v67 = *(v2 + 24);
      v68 = objc_opt_new();
      v69 = sub_100031E18(v67, v68, 0, 0);

      sub_10002E9BC(*(v2 + 24));
      goto LABEL_36;
    }

    if (![*(v2 + 392) hasLPEMSupport])
    {
      goto LABEL_87;
    }

    v70 = *(v2 + 24);
    if (v70)
    {
      if (*(v70 + 152) == 1)
      {
        goto LABEL_88;
      }

      LOBYTE(v70) = *(v70 + 179);
    }

    if ((v70 & 1) == 0 && !v22)
    {
LABEL_87:
      v71 = sub_10004C144();
      v72 = [v2 setRoutingConfig:v71];

LABEL_98:
      v31 = 1;
      goto LABEL_37;
    }

LABEL_88:
    v73 = sub_10004C144();
    v74 = [v2 setRoutingConfig:v73];

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v75 = NFLogGetLogger();
    if (v75)
    {
      v76 = v75;
      v77 = object_getClass(v2);
      v78 = class_isMetaClass(v77);
      v88 = object_getClassName(v2);
      v95 = sel_getName("_sync_actOnUserInitiatedSystemShutDown:completion:");
      v79 = 45;
      if (v78)
      {
        v79 = 43;
      }

      v76(6, "%c[%{public}s %{public}s]:%i User shutdown (0x%x) - tearing down headless", v79, v88, v95, 7061, v1);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v80 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      v81 = object_getClass(v2);
      if (class_isMetaClass(v81))
      {
        v82 = 43;
      }

      else
      {
        v82 = 45;
      }

      *buf = 67110146;
      v97 = v82;
      v98 = 2082;
      v99 = object_getClassName(v2);
      v100 = 2082;
      v101 = sel_getName("_sync_actOnUserInitiatedSystemShutDown:completion:");
      v102 = 1024;
      v103 = 7061;
      v104 = 1024;
      v105 = v1;
      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i User shutdown (0x%x) - tearing down headless", buf, 0x28u);
    }

    sub_1001AA8E4(*(v2 + 376));
    goto LABEL_98;
  }

LABEL_39:
}

void sub_1001174B4(uint64_t a1)
{
  v2 = sub_10021E364(*(*(a1 + 32) + 376));
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v4 = Logger;
  if (v2)
  {
    if (Logger)
    {
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v4(6, "%c[%{public}s %{public}s]:%i Succesfully restarted Discovery", v8, ClassName, Name, 7121);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(*(a1 + 32));
      v13 = sel_getName(*(a1 + 40));
      *buf = 67109890;
      v28 = v11;
      v29 = 2082;
      v30 = v12;
      v31 = 2082;
      v32 = v13;
      v33 = 1024;
      v34 = 7121;
      v14 = "%c[%{public}s %{public}s]:%i Succesfully restarted Discovery";
      v15 = v9;
      v16 = OS_LOG_TYPE_DEFAULT;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v15, v16, v14, buf, 0x22u);
    }
  }

  else
  {
    if (Logger)
    {
      v17 = object_getClass(*(a1 + 32));
      v18 = class_isMetaClass(v17);
      v19 = object_getClassName(*(a1 + 32));
      v26 = sel_getName(*(a1 + 40));
      v20 = 45;
      if (v18)
      {
        v20 = 43;
      }

      v4(3, "%c[%{public}s %{public}s]:%i Error restarting Discovery", v20, v19, v26, 7118);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v21 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      v23 = object_getClassName(*(a1 + 32));
      v24 = sel_getName(*(a1 + 40));
      *buf = 67109890;
      v28 = v22;
      v29 = 2082;
      v30 = v23;
      v31 = 2082;
      v32 = v24;
      v33 = 1024;
      v34 = 7118;
      v14 = "%c[%{public}s %{public}s]:%i Error restarting Discovery";
      v15 = v9;
      v16 = OS_LOG_TYPE_ERROR;
      goto LABEL_20;
    }
  }
}

id sub_1001177B0(uint64_t a1)
{
  result = sub_1002217FC(*(*(a1 + 32) + 376));
  v3 = *(*(a1 + 32) + 376);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(v3 + 8);

    return NFDriverSimulateCrash();
  }

  return result;
}

BOOL sub_10011A804(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 376);
  v3 = [*(a1 + 40) handle];
  [v3 identifier];
  v4 = sub_1000163DC(v2);
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 48) + 8) + 40) == 0;
}

void sub_10011AD30(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 connection];
    if ([v7 NF_presentmentIntentSuppressionHolder])
    {
      v8 = 1;
    }

    else
    {
      v9 = [v6 connection];
      v8 = [v9 NF_fdPresentmentIntentSuppressionHolder];
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *(a1 + 48) == 1 && v8 == 0;
  if (v10 || !(v8 & 1 | (([v3 requireSuppressDefaultAppPresentmentAssertion] & 1) == 0)))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v17 = [v6 clientName];
      v18 = 43;
      if (!isMetaClass)
      {
        v18 = 45;
      }

      v12(5, "%c[%{public}s %{public}s]:%i Suppress notification to %{public}@ (defaultAppPresentmentSuppression=%d, assertionHolder=%d)", v18, ClassName, Name, 7548, v17, *(a1 + 48), v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      v22 = object_getClassName(*(a1 + 32));
      v23 = sel_getName(*(a1 + 40));
      v24 = [v6 clientName];
      v25 = *(a1 + 48);
      *buf = 67110658;
      v27 = v21;
      v28 = 2082;
      v29 = v22;
      v30 = 2082;
      v31 = v23;
      v32 = 1024;
      v33 = 7548;
      v34 = 2114;
      v35 = v24;
      v36 = 1024;
      v37 = v25;
      v38 = 1024;
      v39 = v8;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Suppress notification to %{public}@ (defaultAppPresentmentSuppression=%d, assertionHolder=%d)", buf, 0x38u);
    }
  }

  else
  {
    [v3 handleFieldChanged:*(a1 + 49)];
  }
}

void sub_10011B074(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v8, ClassName, Name, 7562, *(a1 + 40));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    v12 = object_getClassName(*(a1 + 32));
    v13 = sel_getName(*(a1 + 48));
    v14 = *(a1 + 40);
    *buf = 67110146;
    *&buf[4] = v11;
    *v53 = 2082;
    *&v53[2] = v12;
    v54 = 2082;
    v55 = v13;
    v56 = 1024;
    v57 = 7562;
    v58 = 2114;
    v59 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  sub_1000943F0(*(a1 + 32), *(a1 + 40));
  if (sub_10017DDC4(*(a1 + 32)) && [*(a1 + 40) chFieldType] != 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFLogGetLogger();
    if (v34)
    {
      v35 = v34;
      v36 = object_getClass(*(a1 + 32));
      v37 = class_isMetaClass(v36);
      v38 = object_getClassName(*(a1 + 32));
      v39 = sel_getName(*(a1 + 48));
      v40 = 45;
      if (v37)
      {
        v40 = 43;
      }

      v35(5, "%c[%{public}s %{public}s]:%i Dropping field due to connection handover assertion: %@", v40, v38, v39, 7567, *(a1 + 40));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v41 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v42))
      {
        v43 = 43;
      }

      else
      {
        v43 = 45;
      }

      v44 = object_getClassName(*(a1 + 32));
      v45 = sel_getName(*(a1 + 48));
      v46 = *(a1 + 40);
      *buf = 67110146;
      *&buf[4] = v43;
      *v53 = 2082;
      *&v53[2] = v44;
      v54 = 2082;
      v55 = v45;
      v56 = 1024;
      v57 = 7567;
      v58 = 2112;
      v59 = v46;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Dropping field due to connection handover assertion: %@", buf, 0x2Cu);
    }
  }

  else
  {
    v15 = sub_100003CE4(*(a1 + 32));
    v16 = *(*(a1 + 32) + 120);
    v17 = objc_opt_respondsToSelector();
    if (v17)
    {
      [*(*(a1 + 32) + 120) handleFilteredFieldNotification:*(a1 + 40)];
    }

    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = *(v18 + 16);
    }

    else
    {
      v19 = 0;
    }

    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10011B588;
    v49[3] = &unk_100318CC0;
    v51 = v15;
    v49[4] = v18;
    v48 = *(a1 + 40);
    v20 = v48;
    v50 = v48;
    [v19 enumerateFieldDetectSessionsUsingBlock:v49];
    if (v15)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v21 = NFLogGetLogger();
      if (v21)
      {
        v22 = v21;
        v23 = object_getClass(*(a1 + 32));
        v24 = class_isMetaClass(v23);
        v25 = object_getClassName(*(a1 + 32));
        v47 = sel_getName(*(a1 + 48));
        v26 = 45;
        if (v24)
        {
          v26 = 43;
        }

        v22(5, "%c[%{public}s %{public}s]:%i Default app presentment suppression in place", v26, v25, v47, 7605);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v28))
        {
          v29 = 43;
        }

        else
        {
          v29 = 45;
        }

        v30 = object_getClassName(*(a1 + 32));
        v31 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        *&buf[4] = v29;
        *v53 = 2082;
        *&v53[2] = v30;
        v54 = 2082;
        v55 = v31;
        v56 = 1024;
        v57 = 7605;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Default app presentment suppression in place", buf, 0x22u);
      }
    }

    else
    {
      v32 = sub_100095170(*(a1 + 32), *(a1 + 40));
      if ((v17 & 1) == 0 || v32)
      {
        v33 = _os_activity_create(&_mh_execute_header, "resumeSessionWaitingOnField:forceStartSession:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
        *buf = 0;
        *v53 = 0;
        os_activity_scope_enter(v33, buf);
        os_activity_scope_leave(buf);

        sub_1001DD9C8(*(a1 + 32), *(a1 + 40), 0);
      }
    }
  }
}

void sub_10011B588(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 connection];
    if ([v7 NF_presentmentIntentSuppressionHolder])
    {
      v8 = 1;
    }

    else
    {
      v9 = [v6 connection];
      v8 = [v9 NF_fdPresentmentIntentSuppressionHolder];
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *(a1 + 56) == 1 && v8 == 0;
  if (v10 || !(v8 & 1 | (([v3 requireSuppressDefaultAppPresentmentAssertion] & 1) == 0)))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v17 = [v6 clientName];
      v18 = 43;
      if (!isMetaClass)
      {
        v18 = 45;
      }

      v12(5, "%c[%{public}s %{public}s]:%i Suppress notification to %{public}@ (defaultAppPresentmentSuppression=%d, assertionHolder=%d)", v18, ClassName, Name, 7597, v17, *(a1 + 56), v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      v22 = object_getClassName(*(a1 + 32));
      v23 = sel_getName(*(a1 + 48));
      v24 = [v6 clientName];
      v25 = *(a1 + 56);
      *buf = 67110658;
      v27 = v21;
      v28 = 2082;
      v29 = v22;
      v30 = 2082;
      v31 = v23;
      v32 = 1024;
      v33 = 7597;
      v34 = 2114;
      v35 = v24;
      v36 = 1024;
      v37 = v25;
      v38 = 1024;
      v39 = v8;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Suppress notification to %{public}@ (defaultAppPresentmentSuppression=%d, assertionHolder=%d)", buf, 0x38u);
    }
  }

  else
  {
    [v3 handleFilteredFieldNotification:*(a1 + 40)];
  }
}

void sub_10011B8CC(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v8, ClassName, Name, 7623, *(a1 + 40));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    v12 = object_getClassName(*(a1 + 32));
    v13 = sel_getName(*(a1 + 48));
    v14 = *(a1 + 40);
    *buf = 67110146;
    *&buf[4] = v11;
    *&buf[8] = 2082;
    *&buf[10] = v12;
    *&buf[18] = 2082;
    *&buf[20] = v13;
    *&buf[28] = 1024;
    *&buf[30] = 7623;
    *&buf[34] = 2114;
    *&buf[36] = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  kdebug_trace();
  v15 = NFSharedSignpostLog();
  if (os_signpost_enabled(v15))
  {
    v16 = [*(a1 + 40) notificationType];
    *buf = 134217984;
    *&buf[4] = v16;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FIELD_NOTIFICATION", "type %lu", buf, 0xCu);
  }

  v17 = *(a1 + 32);
  v18 = *(v17 + 376);
  if (v18 && (*(v18 + 248) & 0x400) != 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v22 = v21;
      v23 = object_getClass(*(a1 + 32));
      v24 = class_isMetaClass(v23);
      v25 = object_getClassName(*(a1 + 32));
      v73 = sel_getName(*(a1 + 48));
      v26 = 45;
      if (v24)
      {
        v26 = 43;
      }

      v22(4, "%c[%{public}s %{public}s]:%i Ignoring technology event due to ExpressModeDebug setting!", v26, v25, v73, 7629);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v28))
      {
        v29 = 43;
      }

      else
      {
        v29 = 45;
      }

      v30 = object_getClassName(*(a1 + 32));
      v31 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      *&buf[4] = v29;
      *&buf[8] = 2082;
      *&buf[10] = v30;
      *&buf[18] = 2082;
      *&buf[20] = v31;
      *&buf[28] = 1024;
      *&buf[30] = 7629;
      v32 = "%c[%{public}s %{public}s]:%i Ignoring technology event due to ExpressModeDebug setting!";
      v33 = v27;
      v34 = OS_LOG_TYPE_ERROR;
      v35 = 34;
      goto LABEL_62;
    }
  }

  else
  {
    sub_1000943F0(v17, *(a1 + 40));
    sub_100094D00(*(a1 + 32), *(a1 + 40));
    if (!sub_10017DDC4(*(a1 + 32)) || [*(a1 + 40) chFieldType] == 1)
    {
      v19 = *(a1 + 32);
      if (v19)
      {
        v20 = [*(v19 + 128) walletDomain];
        if (v20 > 4)
        {
          LOBYTE(v19) = 0;
        }

        else
        {
          LODWORD(v19) = 0x19u >> v20;
        }
      }

      v36 = v19 & 1;
      v37 = sub_100003CE4(*(a1 + 32));
      if ((v37 & 1) == 0)
      {
        sub_100094E64(*(a1 + 32), *(a1 + 40));
        sub_100094F20(*(a1 + 32), *(a1 + 40));
        if (v36)
        {
          sub_100095548(*(a1 + 32), *(a1 + 40));
        }
      }

      v38 = *(*(a1 + 32) + 120);
      v39 = objc_opt_respondsToSelector();
      if (v39)
      {
        [*(*(a1 + 32) + 120) handleFieldNotification:*(a1 + 40)];
      }

      v40 = objc_opt_new();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = sub_100006A8C;
      *&buf[32] = sub_1000E6B84;
      *&buf[40] = 0;
      v41 = *(a1 + 32);
      if (v41)
      {
        v41 = v41[16];
      }

      v42 = v41;
      v43 = [v42 walletBundleIdentifier];

      v44 = *(a1 + 32);
      if (v44)
      {
        v45 = *(v44 + 16);
      }

      else
      {
        v45 = 0;
      }

      v75[0] = _NSConcreteStackBlock;
      v75[1] = 3221225472;
      v75[2] = sub_10011C0B8;
      v75[3] = &unk_100318CE8;
      v81 = v37;
      v46 = *(a1 + 48);
      v75[4] = v44;
      v80 = v46;
      v47 = v43;
      v76 = v47;
      v79 = buf;
      v27 = v40;
      v77 = v27;
      v82 = v36;
      v78 = *(a1 + 40);
      [v45 enumerateFieldDetectSessionsUsingBlock:v75];
      if (v37)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v48 = NFLogGetLogger();
        if (v48)
        {
          v49 = v48;
          v50 = object_getClass(*(a1 + 32));
          v51 = class_isMetaClass(v50);
          v52 = object_getClassName(*(a1 + 32));
          v74 = sel_getName(*(a1 + 48));
          v53 = 45;
          if (v51)
          {
            v53 = 43;
          }

          v49(5, "%c[%{public}s %{public}s]:%i Field detect default app presentment suppression in place", v53, v52, v74, 7721);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v54 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v55))
          {
            v56 = 43;
          }

          else
          {
            v56 = 45;
          }

          v57 = object_getClassName(*(a1 + 32));
          v58 = sel_getName(*(a1 + 48));
          *v83 = 67109890;
          *&v83[4] = v56;
          *v84 = 2082;
          *&v84[2] = v57;
          v85 = 2082;
          v86 = v58;
          v87 = 1024;
          v88 = 7721;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Field detect default app presentment suppression in place", v83, 0x22u);
        }
      }

      else
      {
        v59 = sub_100095170(*(a1 + 32), *(a1 + 40));
        if ((v39 & 1) == 0 || v59)
        {
          v60 = _os_activity_create(&_mh_execute_header, "resumeSessionWaitingOnField:forceStartSession:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
          *v83 = 0;
          *v84 = 0;
          os_activity_scope_enter(v60, v83);
          os_activity_scope_leave(v83);

          sub_1001DD9C8(*(a1 + 32), *(a1 + 40), 0);
        }
      }

      sub_100095720(*(a1 + 32), *(a1 + 40), *(*&buf[8] + 40), v27);

      _Block_object_dispose(buf, 8);
      goto LABEL_63;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v61 = NFLogGetLogger();
    if (v61)
    {
      v62 = v61;
      v63 = object_getClass(*(a1 + 32));
      v64 = class_isMetaClass(v63);
      v65 = object_getClassName(*(a1 + 32));
      v66 = sel_getName(*(a1 + 48));
      v67 = 45;
      if (v64)
      {
        v67 = 43;
      }

      v62(5, "%c[%{public}s %{public}s]:%i Dropping field due to connection handover assertion: %@", v67, v65, v66, 7637, *(a1 + 40));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v68 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v68))
      {
        v69 = 43;
      }

      else
      {
        v69 = 45;
      }

      v70 = object_getClassName(*(a1 + 32));
      v71 = sel_getName(*(a1 + 48));
      v72 = *(a1 + 40);
      *buf = 67110146;
      *&buf[4] = v69;
      *&buf[8] = 2082;
      *&buf[10] = v70;
      *&buf[18] = 2082;
      *&buf[20] = v71;
      *&buf[28] = 1024;
      *&buf[30] = 7637;
      *&buf[34] = 2112;
      *&buf[36] = v72;
      v32 = "%c[%{public}s %{public}s]:%i Dropping field due to connection handover assertion: %@";
      v33 = v27;
      v34 = OS_LOG_TYPE_DEFAULT;
      v35 = 44;
LABEL_62:
      _os_log_impl(&_mh_execute_header, v33, v34, v32, buf, v35);
    }
  }

LABEL_63:
}

void sub_10011C0B8(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 notificationCategories];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 connection];
    if ([v9 NF_presentmentIntentSuppressionHolder])
    {
      v10 = 1;
    }

    else
    {
      v11 = [v8 connection];
      v10 = [v11 NF_fdPresentmentIntentSuppressionHolder];
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*(a1 + 80) != 1 || v10) && v10 & 1 | (([v4 requireSuppressDefaultAppPresentmentAssertion] & 1) == 0))
  {
    if (v5 == -1 || (v5 & 4) == 0)
    {
      if ((*(a1 + 81) & 1) != 0 || ([v8 clientName], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqual:", @"passd"), v29, !v30))
      {
        [v4 handleFieldNotification:*(a1 + 56)];
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v32 = Logger;
          Class = object_getClass(*(a1 + 32));
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(*(a1 + 32));
          Name = sel_getName(*(a1 + 72));
          v36 = 45;
          if (isMetaClass)
          {
            v36 = 43;
          }

          v32(4, "%c[%{public}s %{public}s]:%i Suppress field notification to passd", v36, ClassName, Name, 7712);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v37 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v38))
          {
            v39 = 43;
          }

          else
          {
            v39 = 45;
          }

          v40 = object_getClassName(*(a1 + 32));
          v41 = sel_getName(*(a1 + 72));
          *buf = 67109890;
          v44 = v39;
          v45 = 2082;
          v46 = v40;
          v47 = 2082;
          v48 = v41;
          v49 = 1024;
          v50 = 7712;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Suppress field notification to passd", buf, 0x22u);
        }
      }
    }

    else
    {
      v12 = *(a1 + 40);
      v13 = [v8 bundleIdentifier];
      LODWORD(v12) = [v12 isEqual:v13];

      if (v12)
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      }

      else
      {
        [*(a1 + 48) addObject:v4];
      }
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v15 = v14;
      v16 = object_getClass(*(a1 + 32));
      v17 = class_isMetaClass(v16);
      v18 = object_getClassName(*(a1 + 32));
      v19 = sel_getName(*(a1 + 72));
      v20 = [v8 clientName];
      v21 = 43;
      if (!v17)
      {
        v21 = 45;
      }

      v15(5, "%c[%{public}s %{public}s]:%i Suppress notification to %{public}@ (defaultAppPresentmentSuppression=%d, assertionHolder=%d)", v21, v18, v19, 7692, v20, *(a1 + 80), v10);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      v25 = object_getClassName(*(a1 + 32));
      v26 = sel_getName(*(a1 + 72));
      v27 = [v8 clientName];
      v28 = *(a1 + 80);
      *buf = 67110658;
      v44 = v24;
      v45 = 2082;
      v46 = v25;
      v47 = 2082;
      v48 = v26;
      v49 = 1024;
      v50 = 7692;
      v51 = 2114;
      v52 = v27;
      v53 = 1024;
      v54 = v28;
      v55 = 1024;
      v56 = v10;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Suppress notification to %{public}@ (defaultAppPresentmentSuppression=%d, assertionHolder=%d)", buf, 0x38u);
    }
  }
}

uint64_t sub_10011C580(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(*(a1 + 32) + 120);

    return [v4 handleSecureElementEndOfOperation];
  }

  return result;
}

void sub_10011C99C(uint64_t a1)
{
  v2 = sub_10021A4A0(*(*(a1 + 32) + 376), @"Entered restrictedMode Exit", 0);
  if (v2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v4(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v7, ClassName, Name, 7787, v2);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      v11 = object_getClassName(*(a1 + 32));
      v12 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v22 = v10;
      v23 = 2082;
      v24 = v11;
      v25 = 2082;
      v26 = v12;
      v27 = 1024;
      v28 = 7787;
      v29 = 2112;
      v30 = v2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
    }
  }

  else
  {
    v13 = *(*(a1 + 32) + 384);
    v8 = v13;
    if (v13)
    {
      v14 = [v13 handle];
      v15 = [v14 info];
      v16 = [v15 restrictedMode];

      if (v16)
      {
        v17 = [*(a1 + 32) secureElementDidExitRestrictedMode:v8 os:*(a1 + 48) reason:2];
        v18 = +[NSDistributedNotificationCenter defaultCenter];
        [v18 postNotificationName:@"com.apple.nfcd.se.restricted.exit" object:0 userInfo:0 options:3];
      }
    }

    sub_10021CC94(*(*(a1 + 32) + 376), @"Entered restrictedMode Exit");
  }
}

void sub_10011CCA0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 120);

    [v4 handleSelectEvent:v3];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v6(4, "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@", v11, ClassName, Name, 7808, *(*(a1 + 32) + 120));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(*(a1 + 32));
      v16 = sel_getName(*(a1 + 48));
      v17 = *(*(a1 + 32) + 120);
      *buf = 67110146;
      v19 = v14;
      v20 = 2082;
      v21 = v15;
      v22 = 2082;
      v23 = v16;
      v24 = 1024;
      v25 = 7808;
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@", buf, 0x2Cu);
    }
  }
}

void sub_10011CF14(uint64_t a1)
{
  sub_100221B00(*(*(a1 + 32) + 376), *(a1 + 40));
  v2 = sub_100003548(*(a1 + 32));
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) temperatureChanged:*(a1 + 40)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_10011D0F8(uint64_t a1)
{
  v1 = sub_1000E1D7C(*(a1 + 32));
  if (!v1)
  {
    v1 = objc_opt_new();
  }

  v3 = @"Erase counter";
  v4 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  sub_100199A24(NFBugCapture, @"Flash wear issue : erase counter exceeded", @"Flash wear issue : erase counter exceeded", v2);
}

void sub_10011D270(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 120);

    [v4 handlMFWNotification:v3];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v6(4, "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@", v11, ClassName, Name, 7857, *(*(a1 + 32) + 120));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(*(a1 + 32));
      v16 = sel_getName(*(a1 + 48));
      v17 = *(*(a1 + 32) + 120);
      *buf = 67110146;
      v19 = v14;
      v20 = 2082;
      v21 = v15;
      v22 = 2082;
      v23 = v16;
      v24 = 1024;
      v25 = 7857;
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@", buf, 0x2Cu);
    }
  }
}

void sub_10011D514(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 120);

    [v4 secureElementReaderStarted:v3];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v6(4, "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@", v11, ClassName, Name, 7870, *(*(a1 + 32) + 120));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(*(a1 + 32));
      v16 = sel_getName(*(a1 + 48));
      v17 = *(*(a1 + 32) + 120);
      *buf = 67110146;
      v19 = v14;
      v20 = 2082;
      v21 = v15;
      v22 = 2082;
      v23 = v16;
      v24 = 1024;
      v25 = 7870;
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@", buf, 0x2Cu);
    }
  }
}

void sub_10011D7B8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 120);

    [v4 secureElementReaderStopped:v3];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v6(4, "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@", v11, ClassName, Name, 7881, *(*(a1 + 32) + 120));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(*(a1 + 32));
      v16 = sel_getName(*(a1 + 48));
      v17 = *(*(a1 + 32) + 120);
      *buf = 67110146;
      v19 = v14;
      v20 = 2082;
      v21 = v15;
      v22 = 2082;
      v23 = v16;
      v24 = 1024;
      v25 = 7881;
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@", buf, 0x2Cu);
    }
  }
}

void sub_10011DA38(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Refresh on RM timer ends", "[_NFHardwareManager handleReaderModeProhibitTimerEvent:]_block_invoke", 7892);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v3 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[_NFHardwareManager handleReaderModeProhibitTimerEvent:]_block_invoke";
    v6 = 1024;
    v7 = 7892;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Refresh on RM timer ends", buf, 0x12u);
  }

  sub_10000453C(*(a1 + 32));
}

void sub_10011DC08(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 120);
    v5 = *(a1 + 48);

    [v4 handleSecureElementTransactionData:v3 appletIdentifier:v5];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v7(4, "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@", v12, ClassName, Name, 7904, *(*(a1 + 32) + 120));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      v16 = object_getClassName(*(a1 + 32));
      v17 = sel_getName(*(a1 + 56));
      v18 = *(*(a1 + 32) + 120);
      *buf = 67110146;
      v20 = v15;
      v21 = 2082;
      v22 = v16;
      v23 = 2082;
      v24 = v17;
      v25 = 1024;
      v26 = 7904;
      v27 = 2114;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@", buf, 0x2Cu);
    }
  }
}

void sub_10011DFD8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if ([v5 background])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_postExpressTransactionStartEvent:keyIdentifier:");
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v8(6, "%c[%{public}s %{public}s]:%i Ignoring background transaction event while in express mode", v12, ClassName, Name, 7924);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = object_getClass(a1);
        if (class_isMetaClass(v14))
        {
          v15 = 43;
        }

        else
        {
          v15 = 45;
        }

        *buf = 67109890;
        *v30 = v15;
        *&v30[4] = 2082;
        *&v30[6] = object_getClassName(a1);
        *&v30[14] = 2082;
        *&v30[16] = sel_getName("_postExpressTransactionStartEvent:keyIdentifier:");
        v31 = 1024;
        v32 = 7924;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Ignoring background transaction event while in express mode", buf, 0x22u);
      }

LABEL_12:

      goto LABEL_16;
    }

    v16 = a1[3];
    if (v16 && *(v16 + 181) == 1 && (*(v16 + 182) & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFLogGetLogger();
      if (v17)
      {
        v18 = v17;
        v19 = object_getClass(a1);
        v20 = class_isMetaClass(v19);
        v21 = object_getClassName(a1);
        v28 = sel_getName("_postExpressTransactionStartEvent:keyIdentifier:");
        v22 = 45;
        if (v20)
        {
          v22 = 43;
        }

        v18(6, "%c[%{public}s %{public}s]:%i Firing express txn started notification", v22, v21, v28, 7927);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = object_getClass(a1);
        if (class_isMetaClass(v24))
        {
          v25 = 43;
        }

        else
        {
          v25 = 45;
        }

        *buf = 67109890;
        *v30 = v25;
        *&v30[4] = 2082;
        *&v30[6] = object_getClassName(a1);
        *&v30[14] = 2082;
        *&v30[16] = sel_getName("_postExpressTransactionStartEvent:keyIdentifier:");
        v31 = 1024;
        v32 = 7927;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Firing express txn started notification", buf, 0x22u);
      }

      sub_1000E7BDC(a1, "com.apple.stockholm.express.transaction.start", v6);
      v13 = NFSharedSignpostLog();
      if (os_signpost_enabled(v13))
      {
        v26 = [v5 appletIdentifier];
        *buf = 136315394;
        *v30 = "com.apple.stockholm.express.transaction.start";
        *&v30[8] = 2112;
        *&v30[10] = v26;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_MODE_TX_START_NOTIFICATION", "%s, aid: %@", buf, 0x16u);
      }

      goto LABEL_12;
    }
  }

LABEL_16:
}

void sub_10011EAE0(void *a1, void *a2, void *a3, void *a4, void *a5, int a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  if (a1)
  {
    if ([v11 background])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v15 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_postExpressTransactionEndEvent:atlData:keyIdentifier:additionalData:notificationName:isUnifiedAccess:");
        v19 = 45;
        if (isMetaClass)
        {
          v19 = 43;
        }

        v15(6, "%c[%{public}s %{public}s]:%i Ignoring transaction event while in express mode", v19, ClassName, Name, 8024);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v20 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v21 = object_getClass(a1);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      *buf = 67109890;
      *v44 = v22;
      *&v44[4] = 2082;
      *&v44[6] = object_getClassName(a1);
      *&v44[14] = 2082;
      *&v44[16] = sel_getName("_postExpressTransactionEndEvent:atlData:keyIdentifier:additionalData:notificationName:isUnifiedAccess:");
      v45 = 1024;
      v46 = 8024;
      v23 = "%c[%{public}s %{public}s]:%i Ignoring transaction event while in express mode";
      goto LABEL_12;
    }

    v24 = a1[3];
    if (v24 && *(v24 + 181) == 1)
    {
      if ((*(v24 + 182) & 1) == 0)
      {
        sub_1000F0B88(a1, a5, v13);
        if (a6)
        {
          if (v12)
          {
            v33 = a1[3];
            v34 = [v11 appletIdentifier];
            v35 = sub_100032938(v33, v34);

            v36 = [NSMutableDictionary dictionaryWithDictionary:v12];
            v37 = [NSNumber numberWithUnsignedInt:sub_1000A5614(NFUnifiedAccessTransactionCALogger, v35, v12)];
            [v36 setObject:v37 forKeyedSubscript:@"keyType"];

            v38 = [v12 objectForKeyedSubscript:@"EventType"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v38 isEqualToString:@"EndEvent"])
            {
              sub_1000A3C44(NFUnifiedAccessTransactionCALogger, v36, 1, 0);
            }
          }

          v39 = NFSharedSignpostLog();
          if (os_signpost_enabled(v39))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AtlEvent", "AtlEndEventComplete", buf, 2u);
          }
        }

        v20 = NFSharedSignpostLog();
        if (os_signpost_enabled(v20))
        {
          v40 = [v11 appletIdentifier];
          *buf = 136315394;
          *v44 = a5;
          *&v44[8] = 2112;
          *&v44[10] = v40;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_MODE_TX_END_NOTIFICATION", "%s, aid: %@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFLogGetLogger();
      if (v25)
      {
        v26 = v25;
        v27 = object_getClass(a1);
        v28 = class_isMetaClass(v27);
        v29 = object_getClassName(a1);
        v42 = sel_getName("_postExpressTransactionEndEvent:atlData:keyIdentifier:additionalData:notificationName:isUnifiedAccess:");
        v30 = 45;
        if (v28)
        {
          v30 = 43;
        }

        v26(5, "%c[%{public}s %{public}s]:%i Express end notification already fired, ignoring", v30, v29, v42, 8059);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v20 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:

        goto LABEL_26;
      }

      v31 = object_getClass(a1);
      if (class_isMetaClass(v31))
      {
        v32 = 43;
      }

      else
      {
        v32 = 45;
      }

      *buf = 67109890;
      *v44 = v32;
      *&v44[4] = 2082;
      *&v44[6] = object_getClassName(a1);
      *&v44[14] = 2082;
      *&v44[16] = sel_getName("_postExpressTransactionEndEvent:atlData:keyIdentifier:additionalData:notificationName:isUnifiedAccess:");
      v45 = 1024;
      v46 = 8059;
      v23 = "%c[%{public}s %{public}s]:%i Express end notification already fired, ignoring";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v23, buf, 0x22u);
      goto LABEL_13;
    }
  }

LABEL_26:
}