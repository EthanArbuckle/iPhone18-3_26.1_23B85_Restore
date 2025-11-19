uint64_t sub_100120448(uint64_t result)
{
  if (*(*(result + 32) + 120))
  {
    v1 = result;
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v2 = *(*(v1 + 32) + 120);
      result = objc_opt_respondsToSelector();
      if (result)
      {
        v3 = *(v1 + 40);
        v4 = *(*(v1 + 32) + 120);

        return [v4 handleHostCardReaderDetected:v3];
      }
    }
  }

  return result;
}

id sub_10012057C(uint64_t a1)
{
  if (*(a1 + 56) == 1)
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
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(5, "%c[%{public}s %{public}s]:%i Drop and restart", v7, ClassName, Name, 8324);
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
      v12 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v34 = v10;
      v35 = 2082;
      v36 = v11;
      v37 = 2082;
      v38 = v12;
      v39 = 1024;
      v40 = 8324;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Drop and restart", buf, 0x22u);
    }

    return sub_10021E364(*(*(a1 + 32) + 376));
  }

  else
  {
    v14 = *(*(a1 + 32) + 120);
    if (objc_opt_respondsToSelector())
    {
      v15 = *(a1 + 40);
      v16 = *(*(a1 + 32) + 120);

      return [v16 handleRemoteTagsDetected:v15];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFLogGetLogger();
      if (v17)
      {
        v18 = v17;
        v19 = object_getClass(*(a1 + 32));
        v20 = class_isMetaClass(v19);
        v21 = object_getClassName(*(a1 + 32));
        v22 = sel_getName(*(a1 + 48));
        v23 = 45;
        if (v20)
        {
          v23 = 43;
        }

        v18(6, "%c[%{public}s %{public}s]:%i Found tags:%{public}@", v23, v21, v22, 8332, *(a1 + 40));
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v25))
        {
          v26 = 43;
        }

        else
        {
          v26 = 45;
        }

        v27 = object_getClassName(*(a1 + 32));
        v28 = sel_getName(*(a1 + 48));
        v29 = *(a1 + 40);
        *buf = 67110146;
        v34 = v26;
        v35 = 2082;
        v36 = v27;
        v37 = 2082;
        v38 = v28;
        v39 = 1024;
        v40 = 8332;
        v41 = 2114;
        v42 = v29;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found tags:%{public}@", buf, 0x2Cu);
      }

      v30 = *(a1 + 32);
      if (v30)
      {
        v31 = *(v30 + 416);
      }

      else
      {
        v31 = 0;
      }

      return [v31 handleDetectedTags:*(a1 + 40)];
    }
  }
}

void sub_100120DA4(uint64_t a1)
{
  v2 = sub_10021A4A0(*(*(a1 + 32) + 376), @"SE Removed", 0);
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

      v4(3, "%c[%{public}s %{public}s]:%i Failed to open session: %@", v7, ClassName, Name, 8403, v2);
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
      *v25 = v10;
      *&v25[4] = 2082;
      *&v25[6] = v11;
      v26 = 2082;
      v27 = v12;
      v28 = 1024;
      v29 = 8403;
      v30 = 2112;
      v31 = v2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session: %@", buf, 0x2Cu);
    }
  }

  else
  {
    sub_100007EE0(*(*(a1 + 32) + 24));
    v13 = +[NFPowerAssertion sharedPowerAssertion];
    [v13 releasePowerAssertion:@"ExpressMode" logFaultOnOverRelease:0];

    [*(a1 + 32) refreshSecureElementInfo];
    v14 = *(a1 + 48);
    if (v14 > 4)
    {
      v15 = @"unknown";
    }

    else
    {
      v15 = *(&off_100318DC8 + v14);
    }

    v16 = +[NSDistributedNotificationCenter defaultCenter];
    [v16 postNotificationName:@"com.apple.nfcd.se.removed" object:v15 userInfo:0 options:3];

    v17 = NFSharedSignpostLog();
    if (os_signpost_enabled(v17))
    {
      *buf = 138412290;
      *v25 = v15;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SE_REMOVED_NOTIFICATION", "com.apple.nfcd.se.removed for %@", buf, 0xCu);
    }

    v18 = *(*(a1 + 32) + 240);
    v19 = sub_10004BF2C();
    v23 = *(a1 + 32);
    v20 = [_NFBuiltinSession createSession:"createSession:workQueue:routing:sessionQueuer:didStartWork:" workQueue:@"SE Removed" routing:v18 sessionQueuer:v19 didStartWork:?];

    sub_10021CC94(*(*(a1 + 32) + 376), @"SE Removed");
  }
}

void sub_100121334(uint64_t a1)
{
  v2 = +[NSDate now];
  v3 = v2;
  if (!*(*(a1 + 32) + 224))
  {
    goto LABEL_23;
  }

  [v2 timeIntervalSinceDate:?];
  if (v4 >= 3600.0)
  {
    if (*(*(a1 + 32) + 224))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v18 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 40));
        [v3 timeIntervalSinceDate:*(*(a1 + 32) + 224)];
        v24 = 45;
        if (isMetaClass)
        {
          v24 = 43;
        }

        v18(6, "%c[%{public}s %{public}s]:%i Last OS reset was %f seconds ago", v24, ClassName, Name, 8455, v23);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v26 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      v28 = object_getClassName(*(a1 + 32));
      v29 = sel_getName(*(a1 + 40));
      [v3 timeIntervalSinceDate:*(*(a1 + 32) + 224)];
      *buf = 67110146;
      *v59 = v27;
      *&v59[4] = 2082;
      *&v59[6] = v28;
      v60 = 2082;
      v61 = v29;
      v62 = 1024;
      v63 = 8455;
      v64 = 2048;
      v65 = v30;
      v31 = "%c[%{public}s %{public}s]:%i Last OS reset was %f seconds ago";
      v32 = v25;
      v33 = 44;
LABEL_32:
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
LABEL_33:

      v44 = *(a1 + 32);
      v45 = v3;
      v16 = 0;
      v11 = *(v44 + 224);
      *(v44 + 224) = v45;
      goto LABEL_34;
    }

LABEL_23:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFLogGetLogger();
    if (v34)
    {
      v35 = v34;
      v36 = object_getClass(*(a1 + 32));
      v37 = class_isMetaClass(v36);
      v38 = object_getClassName(*(a1 + 32));
      v55 = sel_getName(*(a1 + 40));
      v39 = 45;
      if (v37)
      {
        v39 = 43;
      }

      v35(6, "%c[%{public}s %{public}s]:%i Cool ! This is the first SE OS reset since our process started. I mean it's not great but as the internets say : 'First!'", v39, v38, v55, 8457);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v40 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v40))
    {
      v41 = 43;
    }

    else
    {
      v41 = 45;
    }

    v42 = object_getClassName(*(a1 + 32));
    v43 = sel_getName(*(a1 + 40));
    *buf = 67109890;
    *v59 = v41;
    *&v59[4] = 2082;
    *&v59[6] = v42;
    v60 = 2082;
    v61 = v43;
    v62 = 1024;
    v63 = 8457;
    v31 = "%c[%{public}s %{public}s]:%i Cool ! This is the first SE OS reset since our process started. I mean it's not great but as the internets say : 'First!'";
    v32 = v25;
    v33 = 34;
    goto LABEL_32;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v5 = NFLogGetLogger();
  if (v5)
  {
    v6 = v5;
    v7 = object_getClass(*(a1 + 32));
    v8 = class_isMetaClass(v7);
    v9 = object_getClassName(*(a1 + 32));
    v54 = sel_getName(*(a1 + 40));
    v10 = 45;
    if (v8)
    {
      v10 = 43;
    }

    v6(3, "%c[%{public}s %{public}s]:%i Already reset within the last: %f", v10, v9, v54, 8451, 0x40AC200000000000);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
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
    v15 = sel_getName(*(a1 + 40));
    *buf = 67110146;
    *v59 = v13;
    *&v59[4] = 2082;
    *&v59[6] = v14;
    v60 = 2082;
    v61 = v15;
    v62 = 1024;
    v63 = 8451;
    v64 = 2048;
    v65 = 0x40AC200000000000;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Already reset within the last: %f", buf, 0x2Cu);
  }

  v16 = 1;
LABEL_34:

  v46 = *(a1 + 48);
  if ((v46 | 2) == 2)
  {
    sub_100007EE0(*(*(a1 + 32) + 24));
    v47 = +[NFPowerAssertion sharedPowerAssertion];
    [v47 releasePowerAssertion:@"ExpressMode" logFaultOnOverRelease:0];

    v46 = *(a1 + 48);
  }

  if (v46 > 3)
  {
    v48 = @"unknown";
  }

  else
  {
    v48 = *(&off_100318DF0 + v46);
  }

  v49 = +[NSDistributedNotificationCenter defaultCenter];
  [v49 postNotificationName:@"com.apple.nfcd.se.os.reset" object:v48 userInfo:0 options:3];

  v50 = NFSharedSignpostLog();
  if (os_signpost_enabled(v50))
  {
    *buf = 138412290;
    *v59 = v48;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SE_REMOVED_NOTIFICATION", "com.apple.nfcd.se.os.reset for %@", buf, 0xCu);
  }

  if ((v16 & 1) == 0)
  {
    v51 = *(*(a1 + 32) + 240);
    v52 = sub_10004BF2C();
    v56 = *(a1 + 32);
    v57 = *(a1 + 48);
    v53 = [_NFBuiltinSession createSession:"createSession:workQueue:routing:sessionQueuer:didStartWork:" workQueue:@"OS Reset" routing:v51 sessionQueuer:v52 didStartWork:?];
  }
}

uint64_t sub_100121938(uint64_t a1)
{
  [*(a1 + 32) refreshSecureElementInfo];
  sub_1000E2CD4(*(a1 + 32));
  if (*(a1 + 40) == 1)
  {
    v2 = "eUICC OS reset";
    v3 = 12748;
  }

  else
  {
    v2 = "SE OS reset";
    v3 = 21253;
  }

  return _NFSimulateCrash(v3, v2);
}

uint64_t sub_100122850(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v4 = *(*(a1 + 32) + 120);
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v5 = *(*(a1 + 32) + 120);

      return [v5 handleHceTargetLost];
    }
  }

  return result;
}

void sub_100122DD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 344) & 1) == 0)
  {
    v16 = NFSharedSignpostLog();
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      v17 = "powerObserverSystemWillSleep: not running; allowing to sleep";
LABEL_111:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v17, &unk_1002E8B7A, buf, 2u);
    }

LABEL_112:

    [*(*(a1 + 32) + 64) allowSleep];
    return;
  }

  v3 = *(v2 + 24);
  if (v3 && *(v3 + 181) == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i Express mode in progress - delaying sleep", v9, ClassName, Name, 8720);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(*(a1 + 32));
      v14 = sel_getName(*(a1 + 40));
      *buf = 67109890;
      *&buf[4] = v12;
      *&buf[8] = 2082;
      *&buf[10] = v13;
      *&buf[18] = 2082;
      *&buf[20] = v14;
      *&buf[28] = 1024;
      *&buf[30] = 8720;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Express mode in progress - delaying sleep", buf, 0x22u);
    }

    v15 = NFSharedSignpostLog();
    if (os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "powerObserverSystemWillSleep: express in progress; preventing sleep", &unk_1002E8B7A, buf, 2u);
    }

    return;
  }

  if (!*(v2 + 120))
  {
    v18 = [v2 lastKnownRoutingConfig];
    if ([v18 activeRouting])
    {
      goto LABEL_22;
    }

    v19 = *(*(a1 + 32) + 24);
    if (!v19)
    {
LABEL_49:

      goto LABEL_50;
    }

    if (*(v19 + 152) == 1)
    {
LABEL_22:
    }

    else
    {
      v113 = *(v19 + 179);

      if ((v113 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    v20 = *(*(a1 + 32) + 24);
    if (v20)
    {
      if (*(v20 + 152) == 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = *(v20 + 179);
      }
    }

    else
    {
      v21 = 0;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    v23 = v22;
    if (v21)
    {
      if (v22)
      {
        v24 = object_getClass(*(a1 + 32));
        v25 = class_isMetaClass(v24);
        v26 = object_getClassName(*(a1 + 32));
        v27 = sel_getName(*(a1 + 40));
        v28 = [*(a1 + 32) lastKnownRoutingConfig];
        v29 = 45;
        if (v25)
        {
          v29 = 43;
        }

        v23(6, "%c[%{public}s %{public}s]:%i Setting routing to express before poweroff - was  %{public}@", v29, v26, v27, 8730, v28);
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
        v34 = sel_getName(*(a1 + 40));
        v35 = [*(a1 + 32) lastKnownRoutingConfig];
        *buf = 67110146;
        *&buf[4] = v32;
        *&buf[8] = 2082;
        *&buf[10] = v33;
        *&buf[18] = 2082;
        *&buf[20] = v34;
        *&buf[28] = 1024;
        *&buf[30] = 8730;
        *&buf[34] = 2114;
        *&buf[36] = v35;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Setting routing to express before poweroff - was  %{public}@", buf, 0x2Cu);
      }

      v36 = *(a1 + 32);
      v18 = [v36 lastKnownRoutingConfig];
      v37 = [v18 lpcdEcpFrame];
      v38 = sub_10004C3B0(NFRoutingConfig, v37);
    }

    else
    {
      if (v22)
      {
        v39 = object_getClass(*(a1 + 32));
        v40 = class_isMetaClass(v39);
        v41 = object_getClassName(*(a1 + 32));
        v42 = sel_getName(*(a1 + 40));
        v43 = [*(a1 + 32) lastKnownRoutingConfig];
        v44 = 45;
        if (v40)
        {
          v44 = 43;
        }

        v23(6, "%c[%{public}s %{public}s]:%i Forcing SE routing off:was  %{public}@", v44, v41, v42, 8733, v43);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v45 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v46))
        {
          v47 = 43;
        }

        else
        {
          v47 = 45;
        }

        v48 = object_getClassName(*(a1 + 32));
        v49 = sel_getName(*(a1 + 40));
        v50 = [*(a1 + 32) lastKnownRoutingConfig];
        *buf = 67110146;
        *&buf[4] = v47;
        *&buf[8] = 2082;
        *&buf[10] = v48;
        *&buf[18] = 2082;
        *&buf[20] = v49;
        *&buf[28] = 1024;
        *&buf[30] = 8733;
        *&buf[34] = 2114;
        *&buf[36] = v50;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Forcing SE routing off:was  %{public}@", buf, 0x2Cu);
      }

      v36 = *(a1 + 32);
      v18 = [v36 lastKnownRoutingConfig];
      v37 = [v18 lpcdEcpFrame];
      v38 = sub_10004C17C(NFRoutingConfig, 3, v37);
    }

    v51 = v38;
    v52 = [v36 setRoutingConfig:v38];

    goto LABEL_49;
  }

LABEL_50:
  IsPad = NFProductIsPad();
  v54 = *(a1 + 32);
  if (IsPad && *(v54 + 345) == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v55 = NFLogGetLogger();
    if (v55)
    {
      v56 = v55;
      v57 = object_getClass(*(a1 + 32));
      v58 = class_isMetaClass(v57);
      v59 = object_getClassName(*(a1 + 32));
      v115 = sel_getName(*(a1 + 40));
      v60 = 45;
      if (v58)
      {
        v60 = 43;
      }

      v56(6, "%c[%{public}s %{public}s]:%i Closing pre-warmed session due to sleep", v60, v59, v115, 8745);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v61 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
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
      v65 = sel_getName(*(a1 + 40));
      *buf = 67109890;
      *&buf[4] = v63;
      *&buf[8] = 2082;
      *&buf[10] = v64;
      *&buf[18] = 2082;
      *&buf[20] = v65;
      *&buf[28] = 1024;
      *&buf[30] = 8745;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Closing pre-warmed session due to sleep", buf, 0x22u);
    }

    sub_10021CC94(*(*(a1 + 32) + 376), @"Prewarm");
    v54 = *(a1 + 32);
  }

  v66 = *(v54 + 376);
  if (!v66 || (*(v66 + 174) & 1) == 0 || (v67 = *(v54 + 24)) != 0 && (*(v67 + 152) == 1 || (*(v67 + 179) & 1) != 0))
  {
LABEL_109:
    v16 = NFSharedSignpostLog();
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      v17 = "powerObserverSystemWillSleep: allowing to sleep";
      goto LABEL_111;
    }

    goto LABEL_112;
  }

  if (NFProductIsWatch() && sub_100003158(*(a1 + 32)))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v68 = NFLogGetLogger();
    if (v68)
    {
      v69 = v68;
      v70 = object_getClass(*(a1 + 32));
      v71 = class_isMetaClass(v70);
      v72 = object_getClassName(*(a1 + 32));
      v116 = sel_getName(*(a1 + 40));
      v73 = 45;
      if (v71)
      {
        v73 = 43;
      }

      v69(6, "%c[%{public}s %{public}s]:%i Persistent field detect enabled on device which is supposed to sleep. Not disabling FD.", v73, v72, v116, 8756);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v74 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
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
      v78 = sel_getName(*(a1 + 40));
      *buf = 67109890;
      *&buf[4] = v76;
      *&buf[8] = 2082;
      *&buf[10] = v77;
      *&buf[18] = 2082;
      *&buf[20] = v78;
      *&buf[28] = 1024;
      *&buf[30] = 8756;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Persistent field detect enabled on device which is supposed to sleep. Not disabling FD.", buf, 0x22u);
    }
  }

  else
  {
    v79 = *(a1 + 32);
    if (v79 && (*(v79 + 362) & 1) != 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v80 = NFLogGetLogger();
      if (v80)
      {
        v81 = v80;
        v82 = object_getClass(*(a1 + 32));
        v83 = class_isMetaClass(v82);
        v84 = object_getClassName(*(a1 + 32));
        v117 = sel_getName(*(a1 + 40));
        v85 = 45;
        if (v83)
        {
          v85 = 43;
        }

        v81(3, "%c[%{public}s %{public}s]:%i Forcing field detect off", v85, v84, v117, 8762);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v86 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        v87 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v87))
        {
          v88 = 43;
        }

        else
        {
          v88 = 45;
        }

        v89 = object_getClassName(*(a1 + 32));
        v90 = sel_getName(*(a1 + 40));
        *buf = 67109890;
        *&buf[4] = v88;
        *&buf[8] = 2082;
        *&buf[10] = v89;
        *&buf[18] = 2082;
        *&buf[20] = v90;
        *&buf[28] = 1024;
        *&buf[30] = 8762;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Forcing field detect off", buf, 0x22u);
      }

      sub_1000936E0(*(a1 + 32), 0);
      v91 = sub_100093D80(*(a1 + 32), 0);
    }
  }

  v92 = *(*(a1 + 32) + 184);
  objc_sync_enter(v92);
  v93 = *(*(a1 + 32) + 120);
  if (!v93)
  {
    objc_sync_exit(v92);

    goto LABEL_109;
  }

  v142 = 0u;
  memset(v143, 0, sizeof(v143));
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  memset(buf, 0, sizeof(buf));
  proc_name([v93 processIdentifier], buf, 0xFEu);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v94 = NFLogGetLogger();
  if (v94)
  {
    v95 = v94;
    v96 = object_getClass(*(a1 + 32));
    v97 = class_isMetaClass(v96);
    v98 = object_getClassName(*(a1 + 32));
    v99 = sel_getName(*(a1 + 40));
    v100 = *(*(a1 + 32) + 120);
    v101 = objc_opt_class();
    v118 = class_getName(v101);
    v102 = 45;
    if (v97)
    {
      v102 = 43;
    }

    v95(6, "%c[%{public}s %{public}s]:%i Invalidating opened session from %s: %s", v102, v98, v99, 8771, buf, v118);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v103 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
  {
    v104 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v104))
    {
      v105 = 43;
    }

    else
    {
      v105 = 45;
    }

    v106 = object_getClassName(*(a1 + 32));
    v107 = sel_getName(*(a1 + 40));
    v108 = *(*(a1 + 32) + 120);
    v109 = objc_opt_class();
    *v119 = 67110402;
    v120 = v105;
    v121 = 2082;
    v122 = v106;
    v123 = 2082;
    v124 = v107;
    v125 = 1024;
    v126 = 8771;
    v127 = 2080;
    v128 = buf;
    v129 = 2080;
    v130 = class_getName(v109);
    _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalidating opened session from %s: %s", v119, 0x36u);
  }

  v110 = *(*(a1 + 32) + 120);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v111 = [*(*(a1 + 32) + 120) connection];
    [v111 invalidate];
  }

  v112 = NFSharedSignpostLog();
  if (os_signpost_enabled(v112))
  {
    *v119 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v112, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "powerObserverSystemWillSleep: session in progress; preventing sleep", &unk_1002E8B7A, v119, 2u);
  }

  objc_sync_exit(v92);
}

void *sub_100123C44(void *result)
{
  v1 = result[4];
  if (*(v1 + 344) == 1)
  {
    v2 = result;
    v3 = *(v1 + 184);
    objc_sync_enter(v3);
    *(v2[4] + 351) = 0;
    sub_100008AA4(v2[4]);
    objc_sync_exit(v3);

    v4 = v2[4];
    v5 = sub_100003068(v4);
    sub_1000936E0(v4, v5);
    IsPad = NFProductIsPad();
    v7 = v2[4];
    if (IsPad && v7[345] == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(v2[4]);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2[4]);
        Name = sel_getName(v2[5]);
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v9(6, "%c[%{public}s %{public}s]:%i Re-opening pre-warm session", v13, ClassName, Name, 8827);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = object_getClass(v2[4]);
        if (class_isMetaClass(v15))
        {
          v16 = 43;
        }

        else
        {
          v16 = 45;
        }

        v17 = object_getClassName(v2[4]);
        v18 = sel_getName(v2[5]);
        *buf = 67109890;
        v34 = v16;
        v35 = 2082;
        v36 = v17;
        v37 = 2082;
        v38 = v18;
        v39 = 1024;
        v40 = 8827;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Re-opening pre-warm session", buf, 0x22u);
      }

      v19 = sub_10021A4A0(*(v2[4] + 376), @"Prewarm", 0);
      if (v19)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v20 = NFLogGetLogger();
        if (v20)
        {
          v21 = v20;
          v22 = object_getClass(v2[4]);
          v23 = class_isMetaClass(v22);
          v30 = object_getClassName(v2[4]);
          v32 = sel_getName(v2[5]);
          v24 = 45;
          if (v23)
          {
            v24 = 43;
          }

          v21(4, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v24, v30, v32, 8830, v19);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v25 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = object_getClass(v2[4]);
          if (class_isMetaClass(v26))
          {
            v27 = 43;
          }

          else
          {
            v27 = 45;
          }

          v28 = object_getClassName(v2[4]);
          v29 = sel_getName(v2[5]);
          *buf = 67110146;
          v34 = v27;
          v35 = 2082;
          v36 = v28;
          v37 = 2082;
          v38 = v29;
          v39 = 1024;
          v40 = 8830;
          v41 = 2112;
          v42 = v19;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
        }
      }

      v7 = v2[4];
    }

    return [v7 maybeStartNextSession];
  }

  return result;
}

void sub_100124294(uint64_t a1)
{
  v2 = sub_1000446D0(*(*(a1 + 32) + 80), *(a1 + 40));
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 64) != v2)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v5 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 72));
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v5(6, "%c[%{public}s %{public}s]:%i Refreshed: %{public}@, appState=%lu", v10, ClassName, Name, 8867, *(a1 + 48), v3);
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
        v15 = sel_getName(*(a1 + 72));
        v16 = *(a1 + 48);
        *buf = 67110402;
        *v113 = v13;
        *&v113[4] = 2082;
        *&v113[6] = v14;
        v114 = 2082;
        v115 = v15;
        v116 = 1024;
        v117 = 8867;
        v118 = 2114;
        v119 = v16;
        v120 = 2048;
        v121 = v3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Refreshed: %{public}@, appState=%lu", buf, 0x36u);
      }
    }
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v105 = v3 & 0xFFFFFFFFFFFFFFFELL;
  v17 = NFSharedSignpostLog();
  if (os_signpost_enabled(v17))
  {
    *buf = 134218496;
    *v113 = v3;
    *&v113[8] = 1024;
    *&v113[10] = v3 == 1;
    v114 = 1024;
    LODWORD(v115) = v105 == 2;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientAppStateUpdate_dispatch", "state=%lu,suspended=%d,resume=%d", buf, 0x18u);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = *(a1 + 56);
  v18 = [obj countByEnumeratingWithState:&v107 objects:v111 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v108;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v108 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v107 + 1) + 8 * i);
        v23 = [v22 NF_userInfo];
        v24 = [NSNumber numberWithUnsignedInteger:v3];
        [v23 setObject:v24 forKey:@"appState"];

        if (v3 == 1)
        {
          sub_10017E840(*(a1 + 32), v22);
        }

        else if (v105 == 2)
        {
          sub_10017E310(*(a1 + 32), v22);
        }

        v25 = [v22 NF_whitelistChecker];
        v26 = [v25 ignoreAppStateMonitor];

        if (v26)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v27 = NFLogGetLogger();
          if (v27)
          {
            v28 = v27;
            v29 = object_getClass(*(a1 + 32));
            v30 = class_isMetaClass(v29);
            v31 = object_getClassName(*(a1 + 32));
            v32 = sel_getName(*(a1 + 72));
            v33 = 45;
            if (v30)
            {
              v33 = 43;
            }

            v28(6, "%c[%{public}s %{public}s]:%i Ignoring suspension since process allows for background : %{public}@", v33, v31, v32, 8888, *(a1 + 48));
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v34 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = object_getClass(*(a1 + 32));
            if (class_isMetaClass(v35))
            {
              v36 = 43;
            }

            else
            {
              v36 = 45;
            }

            v37 = object_getClassName(*(a1 + 32));
            v38 = sel_getName(*(a1 + 72));
            v39 = *(a1 + 48);
            *buf = 67110146;
            *v113 = v36;
            *&v113[4] = 2082;
            *&v113[6] = v37;
            v114 = 2082;
            v115 = v38;
            v116 = 1024;
            v117 = 8888;
            v118 = 2114;
            v119 = v39;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Ignoring suspension since process allows for background : %{public}@", buf, 0x2Cu);
          }
        }

        else
        {
          v40 = [v22 NF_serviceType];
          v34 = v40;
          if (v40 && [v40 unsignedIntegerValue]== 2)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v41 = NFLogGetLogger();
            v42 = v41;
            if ((v3 - 1) <= 1)
            {
              if (v41)
              {
                v43 = object_getClass(*(a1 + 32));
                v44 = class_isMetaClass(v43);
                v45 = object_getClassName(*(a1 + 32));
                v46 = sel_getName(*(a1 + 72));
                v47 = 45;
                if (v44)
                {
                  v47 = 43;
                }

                v42(6, "%c[%{public}s %{public}s]:%i Invalidating XPC connection for %{public}@", v47, v45, v46, 8904, *(a1 + 48));
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v48 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                v49 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v49))
                {
                  v50 = 43;
                }

                else
                {
                  v50 = 45;
                }

                v51 = object_getClassName(*(a1 + 32));
                v52 = sel_getName(*(a1 + 72));
                v53 = *(a1 + 48);
                *buf = 67110146;
                *v113 = v50;
                *&v113[4] = 2082;
                *&v113[6] = v51;
                v114 = 2082;
                v115 = v52;
                v116 = 1024;
                v117 = 8904;
                v118 = 2114;
                v119 = v53;
                v54 = v48;
                goto LABEL_77;
              }

              goto LABEL_78;
            }

            if (v41)
            {
              v95 = object_getClass(*(a1 + 32));
              v96 = class_isMetaClass(v95);
              v97 = object_getClassName(*(a1 + 32));
              v104 = sel_getName(*(a1 + 72));
              v98 = 45;
              if (v96)
              {
                v98 = 43;
              }

              v42(6, "%c[%{public}s %{public}s]:%i Client is no longer in background", v98, v97, v104, 8908);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v76 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              v99 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v99))
              {
                v100 = 43;
              }

              else
              {
                v100 = 45;
              }

              v101 = object_getClassName(*(a1 + 32));
              v102 = sel_getName(*(a1 + 72));
              *buf = 67109890;
              *v113 = v100;
              *&v113[4] = 2082;
              *&v113[6] = v101;
              v114 = 2082;
              v115 = v102;
              v116 = 1024;
              v117 = 8908;
              v82 = v76;
              v83 = "%c[%{public}s %{public}s]:%i Client is no longer in background";
              v84 = 34;
              goto LABEL_88;
            }

            goto LABEL_89;
          }

          if (v3 != 1)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v69 = NFLogGetLogger();
            if (v69)
            {
              v70 = v69;
              v71 = object_getClass(*(a1 + 32));
              v72 = class_isMetaClass(v71);
              v73 = object_getClassName(*(a1 + 32));
              v74 = sel_getName(*(a1 + 72));
              v75 = 45;
              if (v72)
              {
                v75 = 43;
              }

              v70(6, "%c[%{public}s %{public}s]:%i Client (%{public}@) is no longer suspended", v75, v73, v74, 8925, *(a1 + 48));
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v76 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              v77 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v77))
              {
                v78 = 43;
              }

              else
              {
                v78 = 45;
              }

              v79 = object_getClassName(*(a1 + 32));
              v80 = sel_getName(*(a1 + 72));
              v81 = *(a1 + 48);
              *buf = 67110146;
              *v113 = v78;
              *&v113[4] = 2082;
              *&v113[6] = v79;
              v114 = 2082;
              v115 = v80;
              v116 = 1024;
              v117 = 8925;
              v118 = 2114;
              v119 = v81;
              v82 = v76;
              v83 = "%c[%{public}s %{public}s]:%i Client (%{public}@) is no longer suspended";
              v84 = 44;
LABEL_88:
              _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, v83, buf, v84);
            }

LABEL_89:

            goto LABEL_90;
          }

          v55 = sub_10017E2C8(*(a1 + 32), v22);
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v56 = NFLogGetLogger();
          v57 = v56;
          if (!v55)
          {
            if (v56)
            {
              v85 = object_getClass(*(a1 + 32));
              v86 = class_isMetaClass(v85);
              v87 = object_getClassName(*(a1 + 32));
              v88 = sel_getName(*(a1 + 72));
              v89 = 45;
              if (v86)
              {
                v89 = 43;
              }

              v57(6, "%c[%{public}s %{public}s]:%i Invalidating XPC connection for %{public}@", v89, v87, v88, 8915, *(a1 + 48));
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v48 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
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
              v93 = sel_getName(*(a1 + 72));
              v94 = *(a1 + 48);
              *buf = 67110146;
              *v113 = v91;
              *&v113[4] = 2082;
              *&v113[6] = v92;
              v114 = 2082;
              v115 = v93;
              v116 = 1024;
              v117 = 8915;
              v118 = 2114;
              v119 = v94;
              v54 = v48;
LABEL_77:
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalidating XPC connection for %{public}@", buf, 0x2Cu);
            }

LABEL_78:

            sub_100043834(*(*(a1 + 32) + 80), v22);
            [v22 invalidate];
            goto LABEL_90;
          }

          if (v56)
          {
            v58 = object_getClass(*(a1 + 32));
            v59 = class_isMetaClass(v58);
            v60 = object_getClassName(*(a1 + 32));
            v61 = sel_getName(*(a1 + 72));
            v62 = 45;
            if (v59)
            {
              v62 = 43;
            }

            v57(5, "%c[%{public}s %{public}s]:%i Assertion in place for %{public}@", v62, v60, v61, 8919, *(a1 + 48));
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v63 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            v64 = object_getClass(*(a1 + 32));
            if (class_isMetaClass(v64))
            {
              v65 = 43;
            }

            else
            {
              v65 = 45;
            }

            v66 = object_getClassName(*(a1 + 32));
            v67 = sel_getName(*(a1 + 72));
            v68 = *(a1 + 48);
            *buf = 67110146;
            *v113 = v65;
            *&v113[4] = 2082;
            *&v113[6] = v66;
            v114 = 2082;
            v115 = v67;
            v116 = 1024;
            v117 = 8919;
            v118 = 2114;
            v119 = v68;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Assertion in place for %{public}@", buf, 0x2Cu);
          }

          sub_1000E8CD8(*(a1 + 32), v22);
        }

LABEL_90:
      }

      v19 = [obj countByEnumeratingWithState:&v107 objects:v111 count:16];
    }

    while (v19);
  }

  if (v3 == 1)
  {
    v103 = +[_NFHardwareManager sharedHardwareManager];
    [v103 maybeStartNextSession];
  }
}

void sub_100124E60(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 344) == 1 && *(v2 + 288) == 1)
  {
    v3 = *(v2 + 376);
    v4 = sub_1000E44B8(v2);
    LODWORD(v3) = sub_10021D78C(v3, v4);

    if (v3)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 40));
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v6(5, "%c[%{public}s %{public}s]:%i driver flag change pending", v10, ClassName, Name, 9256);
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
        v15 = sel_getName(*(a1 + 40));
        *buf = 67109890;
        v18 = v13;
        v19 = 2082;
        v20 = v14;
        v21 = 2082;
        v22 = v15;
        v23 = 1024;
        v24 = 9256;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i driver flag change pending", buf, 0x22u);
      }

      *(*(a1 + 32) + 346) = 1;
      [*(a1 + 32) maybeStartNextSession];
    }
  }
}

id sub_10012535C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = NFSharedSignpostLog();
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SetRoutingConfigInDriver", &unk_1002E8B7A, buf, 2u);
    }

    v5 = sub_100003068(a1);
    sub_10004B810(v3, v5);
    v6 = +[NFPowerAssertion sharedPowerAssertion];
    [v6 releasePowerAssertion:@"ExpressMode" logFaultOnOverRelease:0];

    sub_100007EE0(*(a1 + 24));
    v7 = sub_10021F67C(*(a1 + 376), v3);

    if (v7)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_setRoutingConfigInDriver:");
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v9(3, "%c[%{public}s %{public}s]:%i Failed to change mode", v13, ClassName, Name, 9507);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = object_getClass(a1);
        if (class_isMetaClass(v15))
        {
          v16 = 43;
        }

        else
        {
          v16 = 45;
        }

        v17 = object_getClassName(a1);
        v18 = sel_getName("_setRoutingConfigInDriver:");
        *buf = 67109890;
        v25 = v16;
        v26 = 2082;
        v27 = v17;
        v28 = 2082;
        v29 = v18;
        v30 = 1024;
        v31 = 9507;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to change mode", buf, 0x22u);
      }

      v19 = NFSharedSignpostLog();
      if (os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SetRoutingConfigInDriver", "Failed", buf, 2u);
      }

      v20 = v7;
    }

    else
    {
      v21 = NFSharedSignpostLog();
      if (os_signpost_enabled(v21))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SetRoutingConfigInDriver", "Success", buf, 2u);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100126004(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!sub_1001E1148(*(*(a1 + 32) + 376)))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i Failed to configure Felica entry conditions", v9, ClassName, Name, 9858);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 40));
    *buf = 67109890;
    v29 = v12;
    v30 = 2082;
    v31 = v13;
    v32 = 2082;
    v33 = v14;
    v34 = 1024;
    v35 = 9858;
    v15 = "%c[%{public}s %{public}s]:%i Failed to configure Felica entry conditions";
    goto LABEL_22;
  }

  if (sub_1001E1078(*(*(a1 + 32) + 376)))
  {
    return 1;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v17 = v16;
    v18 = object_getClass(*(a1 + 32));
    v19 = class_isMetaClass(v18);
    v20 = object_getClassName(*(a1 + 32));
    v27 = sel_getName(*(a1 + 40));
    v21 = 45;
    if (v19)
    {
      v21 = 43;
    }

    v17(3, "%c[%{public}s %{public}s]:%i Failed to enable Felica dual entry", v21, v20, v27, 9854);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v22 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v22))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    v24 = object_getClassName(*(a1 + 32));
    v25 = sel_getName(*(a1 + 40));
    *buf = 67109890;
    v29 = v23;
    v30 = 2082;
    v31 = v24;
    v32 = 2082;
    v33 = v25;
    v34 = 1024;
    v35 = 9854;
    v15 = "%c[%{public}s %{public}s]:%i Failed to enable Felica dual entry";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v15, buf, 0x22u);
  }

LABEL_23:

  return 0;
}

id sub_1001262B4(id result)
{
  if (result)
  {
    v1 = [result lastKnownRoutingConfig];
    v2 = [v1 wantsReader];

    return v2;
  }

  return result;
}

uint64_t sub_1001262F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 128);
    v7 = v4;
    if (v5)
    {
      [v5 removeObserver:a1 forKeyPath:@"walletDomain"];
      v4 = v7;
    }

    *(a1 + 128) = v4;
    v3 = [v4 addObserver:a1 forKeyPath:@"walletDomain" options:5 context:off_10035C9B8];
    v4 = v7;
  }

  return _objc_release_x1(v3, v4);
}

void sub_1001263B0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 168), a2);
  }
}

void sub_1001263C0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 120), a2);
  }
}

void sub_1001263D0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 432), a2);
  }
}

void sub_100129CC4(uint64_t a1)
{
  kdebug_trace();
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLIENT_GET_APPLETS", "in dispatch", buf, 2u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v19 = [*(a1 + 32) preloadApplets];
    v23 = *(a1 + 40);
    v20 = [*(a1 + 32) applets];
    v21 = [*(a1 + 32) activeApplet];
    (*(v23 + 16))(v23, v20, v21, v19);
    goto LABEL_17;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = [*(a1 + 32) sessionUID];
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v4(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v10, ClassName, Name, 261, v9);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
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
    v15 = sel_getName(*(a1 + 48));
    v16 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v27 = v13;
    v28 = 2082;
    v29 = v14;
    v30 = 2082;
    v31 = v15;
    v32 = 1024;
    v33 = 261;
    v34 = 2114;
    v35 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    v18 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v24 = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithUTF8String:"Session not active"];
    v25 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v22 = [v18 initWithDomain:v19 code:54 userInfo:v21];
    (*(v17 + 16))(v17, 0, 0, v22);

LABEL_17:
  }
}

void sub_10012A208(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = NFSharedSignpostLog();
  v11 = os_signpost_enabled(v10);
  if (v9)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = *(a1 + 32) != 0;
    v18 = 67109378;
    v19 = v12;
    v20 = 2112;
    v21 = v9;
    v13 = "setActivePaymentApplet, auth=%d, err=%@";
    v14 = v10;
    v15 = 18;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v16 = *(a1 + 32) != 0;
    v18 = 67109120;
    v19 = v16;
    v13 = "setActivePaymentApplet, auth=%d";
    v14 = v10;
    v15 = 8;
  }

  _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CLIENT_AUTH_REQUEST", v13, &v18, v15);
LABEL_7:

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v7, v8, v9);
  }
}

void sub_10012A38C(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CLIENT_AUTH_REQUEST", &unk_1002E8B7A, buf, 2u);
  }

  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 72));
      v9 = [*(a1 + 32) sessionUID];
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v4(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v10, ClassName, Name, 289, v9);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
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
      v15 = sel_getName(*(a1 + 72));
      v16 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v219 = v13;
      v220 = 2082;
      v221 = v14;
      v222 = 2082;
      v223 = v15;
      v224 = 1024;
      v225 = 289;
      v226 = 2114;
      v227 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v17 = *(a1 + 64);
    v18 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v232 = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithUTF8String:"Session not active"];
    v233 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v233 forKeys:&v232 count:1];
    v22 = [v18 initWithDomain:v19 code:54 userInfo:v21];
    (*(v17 + 16))(v17, 0, 0, v22);

    goto LABEL_16;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v23 = NFLogGetLogger();
  if (v23)
  {
    v24 = v23;
    v25 = object_getClass(*(a1 + 32));
    v26 = class_isMetaClass(v25);
    v27 = object_getClassName(*(a1 + 32));
    v28 = sel_getName(*(a1 + 72));
    v29 = [*(a1 + 32) clientName];
    v30 = 43;
    if (!v26)
    {
      v30 = 45;
    }

    v24(6, "%c[%{public}s %{public}s]:%i %{public}@ : requestedApplet: %{public}@ keyIdentifiers: %{public}@", v30, v27, v28, 291, v29, *(a1 + 40), *(a1 + 48));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v31 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v32))
    {
      v33 = 43;
    }

    else
    {
      v33 = 45;
    }

    v34 = object_getClassName(*(a1 + 32));
    v35 = sel_getName(*(a1 + 72));
    v36 = [*(a1 + 32) clientName];
    v37 = *(a1 + 40);
    v38 = *(a1 + 48);
    *buf = 67110658;
    v219 = v33;
    v220 = 2082;
    v221 = v34;
    v222 = 2082;
    v223 = v35;
    v224 = 1024;
    v225 = 291;
    v226 = 2114;
    v227 = v36;
    v228 = 2114;
    v229 = v37;
    v230 = 2114;
    v231 = v38;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ : requestedApplet: %{public}@ keyIdentifiers: %{public}@", buf, 0x40u);
  }

  v19 = *(a1 + 40);
  v39 = [*(a1 + 32) expressModeManager];
  if (v39)
  {
    v40 = v39[181];

    if (v40 == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v41 = NFLogGetLogger();
      if (v41)
      {
        v42 = v41;
        v43 = object_getClass(*(a1 + 32));
        v44 = class_isMetaClass(v43);
        v45 = object_getClassName(*(a1 + 32));
        v206 = sel_getName(*(a1 + 72));
        v46 = 45;
        if (v44)
        {
          v46 = 43;
        }

        v42(4, "%c[%{public}s %{public}s]:%i Express mode in progress, denying..", v46, v45, v206, 296);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v47 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v48))
        {
          v49 = 43;
        }

        else
        {
          v49 = 45;
        }

        v50 = object_getClassName(*(a1 + 32));
        v51 = sel_getName(*(a1 + 72));
        *buf = 67109890;
        v219 = v49;
        v220 = 2082;
        v221 = v50;
        v222 = 2082;
        v223 = v51;
        v224 = 1024;
        v225 = 296;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Express mode in progress, denying..", buf, 0x22u);
      }

      v52 = *(a1 + 64);
      v53 = [NSError alloc];
      v54 = [NSString stringWithUTF8String:"nfcd"];
      v216 = NSLocalizedDescriptionKey;
      v55 = [NSString stringWithUTF8String:"Express Mode in progress"];
      v217 = v55;
      v56 = [NSDictionary dictionaryWithObjects:&v217 forKeys:&v216 count:1];
      v57 = [v53 initWithDomain:v54 code:38 userInfo:v56];
      (*(v52 + 16))(v52, 0, 0, v57);

      goto LABEL_17;
    }
  }

  v58 = [v19 groupHeadID];
  if (v58)
  {
    v59 = v58;
    v60 = [*(a1 + 32) secureElementWrapper];
    v61 = [v60 supportedTechnologies];

    if ((v61 & 4) != 0)
    {
      [*(a1 + 32) switchToSecureElementWrapperForApplet:v19];
      [*(a1 + 32) startWiredMode];
      v62 = [*(a1 + 32) secureElementWrapper];
      v63 = [v19 groupHeadIDAsData];
      v64 = sub_100257F24(v62, v63, 0);

      if ([v64 isTypeF])
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v65 = NFLogGetLogger();
        if (v65)
        {
          v66 = v65;
          v67 = object_getClass(*(a1 + 32));
          v68 = class_isMetaClass(v67);
          v203 = object_getClassName(*(a1 + 32));
          v207 = sel_getName(*(a1 + 72));
          v69 = 45;
          if (v68)
          {
            v69 = 43;
          }

          v66(6, "%c[%{public}s %{public}s]:%i Switching applet to Type-F group head applet - %{public}@", v69, v203, v207, 308, v64);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v70 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v71 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v71))
          {
            v72 = 43;
          }

          else
          {
            v72 = 45;
          }

          v73 = object_getClassName(*(a1 + 32));
          v74 = sel_getName(*(a1 + 72));
          *buf = 67110146;
          v219 = v72;
          v220 = 2082;
          v221 = v73;
          v222 = 2082;
          v223 = v74;
          v224 = 1024;
          v225 = 308;
          v226 = 2114;
          v227 = v64;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Switching applet to Type-F group head applet - %{public}@", buf, 0x2Cu);
        }

        v75 = v64;
        v19 = v75;
      }
    }
  }

  v76 = [*(a1 + 32) expressModeManager];
  if (v76)
  {
    v77 = v76[19] == -1;
  }

  else
  {
    v77 = 0;
  }

  v78 = [*(a1 + 32) setActiveKeys:*(a1 + 48) onApplet:*(a1 + 40) activationConfig:v77];
  if (v78)
  {
    v79 = v78;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v80 = NFLogGetLogger();
    if (v80)
    {
      v81 = v80;
      v82 = object_getClass(*(a1 + 32));
      v83 = class_isMetaClass(v82);
      v84 = object_getClassName(*(a1 + 32));
      v85 = sel_getName(*(a1 + 72));
      v86 = 45;
      if (v83)
      {
        v86 = 43;
      }

      v81(3, "%c[%{public}s %{public}s]:%i Failed to setup active keys %{public}@ - error %{public}@", v86, v84, v85, 322, *(a1 + 48), v79);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v87 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

    v88 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v88))
    {
      v89 = 43;
    }

    else
    {
      v89 = 45;
    }

    v90 = object_getClassName(*(a1 + 32));
    v91 = sel_getName(*(a1 + 72));
    v92 = *(a1 + 48);
    *buf = 67110402;
    v219 = v89;
    v220 = 2082;
    v221 = v90;
    v222 = 2082;
    v223 = v91;
    v224 = 1024;
    v225 = 322;
    v226 = 2114;
    v227 = v92;
    v228 = 2114;
    v229 = v79;
    v93 = "%c[%{public}s %{public}s]:%i Failed to setup active keys %{public}@ - error %{public}@";
    v94 = v87;
    v95 = 54;
LABEL_65:
    _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, v93, buf, v95);
LABEL_66:

LABEL_67:
    v96 = *(a1 + 64);
    v97 = [*(a1 + 32) activeApplet];
    v98 = [*(a1 + 32) activeKeyIdentifiers];
    (*(v96 + 16))(v96, v97, v98, v79);

    [*(a1 + 32) startDefaultMode];
    goto LABEL_17;
  }

  [*(a1 + 32) setDeferredActivationApplet:0];
  v99 = [*(a1 + 32) activeApplet];
  v100 = [v19 isEqualToApplet:v99];

  if ((v100 & 1) == 0)
  {
    v101 = *(a1 + 32);
    if (v19)
    {
      if (v101[288] == 1)
      {
        v102 = [*(a1 + 32) activeApplet];

        v101 = *(a1 + 32);
        if (v102)
        {
          v103 = [*(a1 + 32) activeApplet];
          v104 = [v101 seidForApplet:v103];

          v105 = [*(a1 + 32) seidForApplet:v19];
          if (([v104 isEqualToString:v105] & 1) == 0)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v106 = NFLogGetLogger();
            if (v106)
            {
              v107 = v106;
              v108 = object_getClass(*(a1 + 32));
              v109 = class_isMetaClass(v108);
              v110 = object_getClassName(*(a1 + 32));
              v111 = sel_getName(*(a1 + 72));
              v112 = [*(a1 + 32) activeApplet];
              v113 = 45;
              if (v109)
              {
                v113 = 43;
              }

              v107(6, "%c[%{public}s %{public}s]:%i deauthorizing previously authed applet on different seid: %{public}@", v113, v110, v111, 336, v112);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v114 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
            {
              v115 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v115))
              {
                v116 = 43;
              }

              else
              {
                v116 = 45;
              }

              v117 = object_getClassName(*(a1 + 32));
              v118 = sel_getName(*(a1 + 72));
              v119 = [*(a1 + 32) activeApplet];
              *buf = 67110146;
              v219 = v116;
              v220 = 2082;
              v221 = v117;
              v222 = 2082;
              v223 = v118;
              v224 = 1024;
              v225 = 336;
              v226 = 2114;
              v227 = v119;
              _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i deauthorizing previously authed applet on different seid: %{public}@", buf, 0x2Cu);
            }

            [*(a1 + 32) _deauthorize];
          }

          v101 = *(a1 + 32);
        }
      }
    }

    if ([v101 _requiresDeferredActivation:v19])
    {
      [*(a1 + 32) setDeferredActivationApplet:v19];
      v120 = [*(a1 + 32) setActiveApplet:0];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v121 = NFLogGetLogger();
      if (v121)
      {
        v122 = v121;
        v123 = object_getClass(*(a1 + 32));
        v124 = class_isMetaClass(v123);
        v125 = object_getClassName(*(a1 + 32));
        v126 = sel_getName(*(a1 + 72));
        v127 = [*(a1 + 32) deferredActivationApplet];
        v128 = [v127 identifier];
        v129 = 45;
        if (v124)
        {
          v129 = 43;
        }

        v122(6, "%c[%{public}s %{public}s]:%i Applet %{public}@ requires deferred activation", v129, v125, v126, 344, v128);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v130 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
      {
        v131 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v131))
        {
          v132 = 43;
        }

        else
        {
          v132 = 45;
        }

        v133 = object_getClassName(*(a1 + 32));
        v134 = sel_getName(*(a1 + 72));
        v135 = [*(a1 + 32) deferredActivationApplet];
        v136 = [v135 identifier];
        *buf = 67110146;
        v219 = v132;
        v220 = 2082;
        v221 = v133;
        v222 = 2082;
        v223 = v134;
        v224 = 1024;
        v225 = 344;
        v226 = 2114;
        v227 = v136;
        _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Applet %{public}@ requires deferred activation", buf, 0x2Cu);
      }
    }

    else
    {
      kdebug_trace();
      v137 = NFSharedSignpostLog();
      if (os_signpost_enabled(v137))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v137, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ACTIVATE_APPLET", &unk_1002E8B7A, buf, 2u);
      }

      v138 = [*(a1 + 32) setActiveApplet:v19];
      if (v138)
      {
        v79 = v138;
        goto LABEL_67;
      }
    }
  }

  v139 = [*(a1 + 32) deferredActivationApplet];

  if (v139)
  {
    v140 = *(a1 + 56);
    if (v140)
    {
      v141 = *(a1 + 32);
      v212[0] = _NSConcreteStackBlock;
      v212[1] = 3221225472;
      v212[2] = sub_10012BA14;
      v212[3] = &unk_100319318;
      v142 = *(a1 + 64);
      v212[4] = *(a1 + 32);
      v213 = v142;
      [v141 _sync_startDeferredCardEmulationWithAuthorization:v140 completion:v212];

      goto LABEL_17;
    }

    v164 = *(a1 + 64);
    v165 = [*(a1 + 32) deferredActivationApplet];
    goto LABEL_157;
  }

  [*(a1 + 32) switchToSecureElementWrapperForApplet:v19];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v143 = NFLogGetLogger();
  if (v143)
  {
    v144 = v143;
    v145 = object_getClass(*(a1 + 32));
    v146 = class_isMetaClass(v145);
    v204 = object_getClassName(*(a1 + 32));
    v208 = sel_getName(*(a1 + 72));
    v147 = 45;
    if (v146)
    {
      v147 = 43;
    }

    v144(6, "%c[%{public}s %{public}s]:%i active = %{public}@", v147, v204, v208, 374, v19);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v148 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
  {
    v149 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v149))
    {
      v150 = 43;
    }

    else
    {
      v150 = 45;
    }

    v151 = object_getClassName(*(a1 + 32));
    v152 = sel_getName(*(a1 + 72));
    *buf = 67110146;
    v219 = v150;
    v220 = 2082;
    v221 = v151;
    v222 = 2082;
    v223 = v152;
    v224 = 1024;
    v225 = 374;
    v226 = 2114;
    v227 = v19;
    _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i active = %{public}@", buf, 0x2Cu);
  }

  if (!*(a1 + 56))
  {
    v166 = *(a1 + 32);
    if (v166[288] == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v167 = NFLogGetLogger();
      if (v167)
      {
        v168 = v167;
        v169 = object_getClass(*(a1 + 32));
        v170 = class_isMetaClass(v169);
        v171 = object_getClassName(*(a1 + 32));
        v210 = sel_getName(*(a1 + 72));
        v172 = 45;
        if (v170)
        {
          v172 = 43;
        }

        v168(6, "%c[%{public}s %{public}s]:%i Already authorized - staying in wired mode - need to call startCardEmulation or enable express", v172, v171, v210, 402);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v173 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
      {
        v174 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v174))
        {
          v175 = 43;
        }

        else
        {
          v175 = 45;
        }

        v176 = object_getClassName(*(a1 + 32));
        v177 = sel_getName(*(a1 + 72));
        *buf = 67109890;
        v219 = v175;
        v220 = 2082;
        v221 = v176;
        v222 = 2082;
        v223 = v177;
        v224 = 1024;
        v225 = 402;
        _os_log_impl(&_mh_execute_header, v173, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Already authorized - staying in wired mode - need to call startCardEmulation or enable express", buf, 0x22u);
      }
    }

    else
    {
      v199 = [v166 activeKeyIdentifiers];

      v200 = *(a1 + 32);
      if (v199)
      {
        [v200 startDefaultModeAndKeepSEOn:1];
      }

      else
      {
        [v200 startDefaultMode];
      }
    }

LABEL_154:
    kdebug_trace();
    v201 = NFSharedSignpostLog();
    if (os_signpost_enabled(v201))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v201, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLIENT_CALLBACK", &unk_1002E8B7A, buf, 2u);
    }

    v164 = *(a1 + 64);
    v165 = [*(a1 + 32) activeApplet];
LABEL_157:
    v20 = v165;
    v202 = [*(a1 + 32) activeKeyIdentifiers];
    (*(v164 + 16))(v164, v20, v202, 0);

LABEL_16:
    goto LABEL_17;
  }

  kdebug_trace();
  v153 = NFSharedSignpostLog();
  if (os_signpost_enabled(v153))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v153, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AUTHORIZE_APPLET", &unk_1002E8B7A, buf, 2u);
  }

  v154 = [*(a1 + 32) _authorize:*(a1 + 56)];
  if (v154)
  {
    v79 = v154;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v155 = NFLogGetLogger();
    if (v155)
    {
      v156 = v155;
      v157 = object_getClass(*(a1 + 32));
      v158 = class_isMetaClass(v157);
      v205 = object_getClassName(*(a1 + 32));
      v209 = sel_getName(*(a1 + 72));
      v159 = 45;
      if (v158)
      {
        v159 = 43;
      }

      v156(3, "%c[%{public}s %{public}s]:%i Failed to authorize : %@", v159, v205, v209, 382, v79);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v87 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

    v160 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v160))
    {
      v161 = 43;
    }

    else
    {
      v161 = 45;
    }

    v162 = object_getClassName(*(a1 + 32));
    v163 = sel_getName(*(a1 + 72));
    *buf = 67110146;
    v219 = v161;
    v220 = 2082;
    v221 = v162;
    v222 = 2082;
    v223 = v163;
    v224 = 1024;
    v225 = 382;
    v226 = 2112;
    v227 = v79;
    v93 = "%c[%{public}s %{public}s]:%i Failed to authorize : %@";
    v94 = v87;
    v95 = 44;
    goto LABEL_65;
  }

  kdebug_trace();
  v178 = NFSharedSignpostLog();
  if (os_signpost_enabled(v178))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v178, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "START_PAYMENT_EMULATION", &unk_1002E8B7A, buf, 2u);
  }

  if ([*(a1 + 32) startCardEmulationWithType:{objc_msgSend(*(a1 + 32), "defaultEmulationType")}])
  {
    goto LABEL_154;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v179 = NFLogGetLogger();
  if (v179)
  {
    v180 = v179;
    v181 = object_getClass(*(a1 + 32));
    v182 = class_isMetaClass(v181);
    v183 = object_getClassName(*(a1 + 32));
    v211 = sel_getName(*(a1 + 72));
    v184 = 45;
    if (v182)
    {
      v184 = 43;
    }

    v180(3, "%c[%{public}s %{public}s]:%i Failed to start card emulation", v184, v183, v211, 392);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v185 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
  {
    v186 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v186))
    {
      v187 = 43;
    }

    else
    {
      v187 = 45;
    }

    v188 = object_getClassName(*(a1 + 32));
    v189 = sel_getName(*(a1 + 72));
    *buf = 67109890;
    v219 = v187;
    v220 = 2082;
    v221 = v188;
    v222 = 2082;
    v223 = v189;
    v224 = 1024;
    v225 = 392;
    _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to start card emulation", buf, 0x22u);
  }

  v190 = *(a1 + 32);
  if (v190[288] == 1)
  {
    [v190 _deauthorize];
    v190 = *(a1 + 32);
  }

  v191 = *(a1 + 64);
  v192 = [v190 activeApplet];
  v193 = [*(a1 + 32) activeKeyIdentifiers];
  v194 = [NSError alloc];
  v195 = [NSString stringWithUTF8String:"nfcd"];
  v214 = NSLocalizedDescriptionKey;
  v196 = [NSString stringWithUTF8String:"Stack Error"];
  v215 = v196;
  v197 = [NSDictionary dictionaryWithObjects:&v215 forKeys:&v214 count:1];
  v198 = [v194 initWithDomain:v195 code:15 userInfo:v197];
  (*(v191 + 16))(v191, v192, v193, v198);

  [*(a1 + 32) startDefaultMode];
LABEL_17:
}

void sub_10012BA14(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v7 = [v4 deferredActivationApplet];
  v6 = [*(a1 + 32) activeKeyIdentifiers];
  (*(v3 + 16))(v3, v7, v6, v5);
}

void sub_10012BC80(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = NFSharedSignpostLog();
  v11 = os_signpost_enabled(v10);
  if (v9)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = *(a1 + 32) != 0;
    v18 = 67109378;
    v19 = v12;
    v20 = 2112;
    v21 = v9;
    v13 = "setActivePaymentApplets, auth=%d, err=%@";
    v14 = v10;
    v15 = 18;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v16 = *(a1 + 32) != 0;
    v18 = 67109120;
    v19 = v16;
    v13 = "setActivePaymentApplets, auth=%d";
    v14 = v10;
    v15 = 8;
  }

  _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CLIENT_AUTH_REQUEST", v13, &v18, v15);
LABEL_7:

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v7, v8, v9);
  }
}

void sub_10012BE04(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CLIENT_AUTH_REQUEST", &unk_1002E8B7A, buf, 2u);
  }

  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 72));
      v9 = [*(a1 + 32) sessionUID];
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v4(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v10, ClassName, Name, 440, v9);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
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
      v15 = sel_getName(*(a1 + 72));
      v16 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v246 = v13;
      v247 = 2082;
      v248 = v14;
      v249 = 2082;
      v250 = v15;
      v251 = 1024;
      v252 = 440;
      v253 = 2114;
      v254 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v17 = *(a1 + 64);
    v18 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v261[0] = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithUTF8String:"Session not active"];
    v262[0] = v20;
    v262[1] = &off_100331F98;
    v261[1] = @"Line";
    v261[2] = @"Method";
    v21 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 72))];
    v262[2] = v21;
    v261[3] = NSDebugDescriptionErrorKey;
    v22 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 72)), 440];
    v262[3] = v22;
    v23 = [NSDictionary dictionaryWithObjects:v262 forKeys:v261 count:4];
    v24 = v18;
    v25 = v19;
    v26 = 54;
LABEL_16:
    v27 = [v24 initWithDomain:v25 code:v26 userInfo:v23];
    (*(v17 + 16))(v17, 0, 0, v27);

    goto LABEL_17;
  }

  v28 = [*(a1 + 32) expressModeManager];
  if (v28)
  {
    v29 = v28[181];

    if (v29 == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFLogGetLogger();
      if (v30)
      {
        v31 = v30;
        v32 = object_getClass(*(a1 + 32));
        v33 = class_isMetaClass(v32);
        v34 = object_getClassName(*(a1 + 32));
        v223 = sel_getName(*(a1 + 72));
        v35 = 45;
        if (v33)
        {
          v35 = 43;
        }

        v31(4, "%c[%{public}s %{public}s]:%i Express mode in progress, denying..", v35, v34, v223, 443);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v36 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v37))
        {
          v38 = 43;
        }

        else
        {
          v38 = 45;
        }

        v39 = object_getClassName(*(a1 + 32));
        v40 = sel_getName(*(a1 + 72));
        *buf = 67109890;
        v246 = v38;
        v247 = 2082;
        v248 = v39;
        v249 = 2082;
        v250 = v40;
        v251 = 1024;
        v252 = 443;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Express mode in progress, denying..", buf, 0x22u);
      }

      v17 = *(a1 + 64);
      v41 = [NSError alloc];
      v19 = [NSString stringWithUTF8String:"nfcd"];
      v259[0] = NSLocalizedDescriptionKey;
      v20 = [NSString stringWithUTF8String:"Express Mode in progress"];
      v260[0] = v20;
      v260[1] = &off_100331FB0;
      v259[1] = @"Line";
      v259[2] = @"Method";
      v21 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 72))];
      v260[2] = v21;
      v259[3] = NSDebugDescriptionErrorKey;
      v22 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 72)), 444];
      v260[3] = v22;
      v23 = [NSDictionary dictionaryWithObjects:v260 forKeys:v259 count:4];
      v24 = v41;
      v25 = v19;
      v26 = 38;
      goto LABEL_16;
    }
  }

  if ([*(a1 + 40) count] != 2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v61 = NFLogGetLogger();
    if (v61)
    {
      v62 = v61;
      v63 = object_getClass(*(a1 + 32));
      v64 = class_isMetaClass(v63);
      v65 = object_getClassName(*(a1 + 32));
      v66 = sel_getName(*(a1 + 72));
      v67 = 45;
      if (v64)
      {
        v67 = 43;
      }

      v62(3, "%c[%{public}s %{public}s]:%i Invalid number of applets %{public}@", v67, v65, v66, 449, *(a1 + 40));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v68 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v69 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v69))
      {
        v70 = 43;
      }

      else
      {
        v70 = 45;
      }

      v71 = object_getClassName(*(a1 + 32));
      v72 = sel_getName(*(a1 + 72));
      v73 = *(a1 + 40);
      *buf = 67110146;
      v246 = v70;
      v247 = 2082;
      v248 = v71;
      v249 = 2082;
      v250 = v72;
      v251 = 1024;
      v252 = 449;
      v253 = 2114;
      v254 = v73;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid number of applets %{public}@", buf, 0x2Cu);
    }

    v17 = *(a1 + 64);
    v74 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v257[0] = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v258[0] = v20;
    v258[1] = &off_100331FC8;
    v257[1] = @"Line";
    v257[2] = @"Method";
    v21 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 72))];
    v258[2] = v21;
    v257[3] = NSDebugDescriptionErrorKey;
    v22 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 72)), 450];
    v258[3] = v22;
    v23 = [NSDictionary dictionaryWithObjects:v258 forKeys:v257 count:4];
    v24 = v74;
    v25 = v19;
    v26 = 10;
    goto LABEL_16;
  }

  v42 = [*(a1 + 32) expressModeManager];
  if (v42)
  {
    v43 = v42[19] == -1;
  }

  else
  {
    v43 = 0;
  }

  v44 = [*(a1 + 32) setActiveApplets:*(a1 + 40) keyIdentifiers:*(a1 + 48) activationConfig:v43];
  if (!v44)
  {
    [*(a1 + 32) setDeferredActivationApplet:0];
    v75 = objc_opt_new();
    v236 = 0u;
    v237 = 0u;
    v238 = 0u;
    v239 = 0u;
    v76 = *(a1 + 40);
    v77 = [v76 countByEnumeratingWithState:&v236 objects:v244 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v237;
      while (2)
      {
        for (i = 0; i != v78; i = i + 1)
        {
          if (*v237 != v79)
          {
            objc_enumerationMutation(v76);
          }

          v81 = *(*(&v236 + 1) + 8 * i);
          v82 = [*(a1 + 32) applets];
          v83 = [v82 containsObject:v81];

          if ((v83 & 1) == 0)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v121 = NFLogGetLogger();
            if (v121)
            {
              v122 = v121;
              v123 = object_getClass(*(a1 + 32));
              v124 = class_isMetaClass(v123);
              v219 = object_getClassName(*(a1 + 32));
              v224 = sel_getName(*(a1 + 72));
              v125 = 45;
              if (v124)
              {
                v125 = 43;
              }

              v122(3, "%c[%{public}s %{public}s]:%i %@ does not exist", v125, v219, v224, 473, v81);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v126 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
            {
              v127 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v127))
              {
                v128 = 43;
              }

              else
              {
                v128 = 45;
              }

              v129 = object_getClassName(*(a1 + 32));
              v130 = sel_getName(*(a1 + 72));
              *buf = 67110146;
              v246 = v128;
              v247 = 2082;
              v248 = v129;
              v249 = 2082;
              v250 = v130;
              v251 = 1024;
              v252 = 473;
              v253 = 2112;
              v254 = v81;
              _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ does not exist", buf, 0x2Cu);
            }

            v131 = [NSError alloc];
            v132 = [NSString stringWithUTF8String:"nfcd"];
            v242[0] = NSLocalizedDescriptionKey;
            v133 = [NSString stringWithUTF8String:"Invalid Parameter"];
            v243[0] = v133;
            v243[1] = 0;
            v242[1] = NSUnderlyingErrorKey;
            v242[2] = @"Line";
            v243[2] = &off_100331FE0;
            v242[3] = @"Method";
            v134 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 72))];
            v243[3] = v134;
            v242[4] = NSDebugDescriptionErrorKey;
            v135 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 72)), 474];
            v243[4] = v135;
            v136 = [NSDictionary dictionaryWithObjects:v243 forKeys:v242 count:5];
            v19 = [v131 initWithDomain:v132 code:10 userInfo:v136];

            goto LABEL_99;
          }

          [v75 addObject:v81];
        }

        v78 = [v76 countByEnumeratingWithState:&v236 objects:v244 count:16];
        if (v78)
        {
          continue;
        }

        break;
      }
    }

    v76 = [v75 objectAtIndex:0];
    v84 = [*(a1 + 32) activeApplet];
    v85 = [v76 isEqualToApplet:v84];

    if ((v85 & 1) == 0)
    {
      v86 = *(a1 + 32);
      if (v76)
      {
        if (v86[288] == 1)
        {
          v87 = [*(a1 + 32) activeApplet];

          v86 = *(a1 + 32);
          if (v87)
          {
            v88 = [*(a1 + 32) activeApplet];
            v89 = [v86 seidForApplet:v88];

            v90 = [*(a1 + 32) seidForApplet:v76];
            if (([v89 isEqualToString:v90] & 1) == 0)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v91 = NFLogGetLogger();
              if (v91)
              {
                v92 = v91;
                v93 = object_getClass(*(a1 + 32));
                v231 = class_isMetaClass(v93);
                v94 = object_getClassName(*(a1 + 32));
                v95 = sel_getName(*(a1 + 72));
                v96 = [*(a1 + 32) activeApplet];
                v97 = 45;
                if (v231)
                {
                  v97 = 43;
                }

                v92(6, "%c[%{public}s %{public}s]:%i deauthorizing previously authed applet on different seid: %{public}@", v97, v94, v95, 490, v96);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v98 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
              {
                v99 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v99))
                {
                  v100 = 43;
                }

                else
                {
                  v100 = 45;
                }

                v232 = v100;
                v101 = object_getClassName(*(a1 + 32));
                v102 = sel_getName(*(a1 + 72));
                v103 = [*(a1 + 32) activeApplet];
                *buf = 67110146;
                v246 = v232;
                v247 = 2082;
                v248 = v101;
                v249 = 2082;
                v250 = v102;
                v251 = 1024;
                v252 = 490;
                v253 = 2114;
                v254 = v103;
                _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i deauthorizing previously authed applet on different seid: %{public}@", buf, 0x2Cu);
              }

              [*(a1 + 32) _deauthorize];
            }

            v86 = *(a1 + 32);
          }
        }
      }

      if ([v86 _requiresDeferredActivation:v76])
      {
        [*(a1 + 32) setDeferredActivationApplet:v76];
        v104 = [*(a1 + 32) setActiveApplet:0];
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v105 = NFLogGetLogger();
        if (v105)
        {
          v106 = v105;
          v107 = object_getClass(*(a1 + 32));
          v108 = class_isMetaClass(v107);
          v109 = object_getClassName(*(a1 + 32));
          v110 = sel_getName(*(a1 + 72));
          v111 = [*(a1 + 32) deferredActivationApplet];
          v112 = [v111 identifier];
          v113 = 45;
          if (v108)
          {
            v113 = 43;
          }

          v106(6, "%c[%{public}s %{public}s]:%i Applet %{public}@ requires deferred activation", v113, v109, v110, 498, v112);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v114 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
        {
          v115 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v115))
          {
            v116 = 43;
          }

          else
          {
            v116 = 45;
          }

          v117 = object_getClassName(*(a1 + 32));
          v118 = sel_getName(*(a1 + 72));
          v119 = [*(a1 + 32) deferredActivationApplet];
          v120 = [v119 identifier];
          *buf = 67110146;
          v246 = v116;
          v247 = 2082;
          v248 = v117;
          v249 = 2082;
          v250 = v118;
          v251 = 1024;
          v252 = 498;
          v253 = 2114;
          v254 = v120;
          _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Applet %{public}@ requires deferred activation", buf, 0x2Cu);
        }
      }

      else
      {
        kdebug_trace();
        v140 = NFSharedSignpostLog();
        if (os_signpost_enabled(v140))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v140, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ACTIVATE_APPLET", &unk_1002E8B7A, buf, 2u);
        }

        v141 = [*(a1 + 32) setActiveApplets:v75];
        if (v141)
        {
          v19 = v141;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v142 = NFLogGetLogger();
          if (v142)
          {
            v143 = v142;
            v144 = object_getClass(*(a1 + 32));
            v145 = class_isMetaClass(v144);
            v220 = object_getClassName(*(a1 + 32));
            v225 = sel_getName(*(a1 + 72));
            v146 = 45;
            if (v145)
            {
              v146 = 43;
            }

            v143(3, "%c[%{public}s %{public}s]:%i Unable to setActiveApplets : error = %@", v146, v220, v225, 505, v19);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v132 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_99;
          }

          v147 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v147))
          {
            v148 = 43;
          }

          else
          {
            v148 = 45;
          }

          v149 = object_getClassName(*(a1 + 32));
          v150 = sel_getName(*(a1 + 72));
          *buf = 67110146;
          v246 = v148;
          v247 = 2082;
          v248 = v149;
          v249 = 2082;
          v250 = v150;
          v251 = 1024;
          v252 = 505;
          v253 = 2112;
          v254 = v19;
          v151 = "%c[%{public}s %{public}s]:%i Unable to setActiveApplets : error = %@";
          goto LABEL_137;
        }
      }
    }

    v152 = [*(a1 + 32) deferredActivationApplet];

    if (v152)
    {
      v153 = *(a1 + 56);
      if (v153)
      {
        v154 = *(a1 + 32);
        v234[0] = _NSConcreteStackBlock;
        v234[1] = 3221225472;
        v234[2] = sub_10012DA4C;
        v234[3] = &unk_100319318;
        v155 = *(a1 + 64);
        v234[4] = *(a1 + 32);
        v235 = v155;
        [v154 _sync_startDeferredCardEmulationWithAuthorization:v153 completion:v234];

LABEL_172:
        v19 = 0;
        goto LABEL_173;
      }

      v177 = *(a1 + 64);
      v178 = [*(a1 + 32) deferredActivationApplet];
LABEL_171:
      v217 = v178;
      v218 = [*(a1 + 32) activeKeyIdentifiers];
      (*(v177 + 16))(v177, v217, v218, 0);

      goto LABEL_172;
    }

    [*(a1 + 32) switchToSecureElementWrapperForApplet:v76];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v156 = NFLogGetLogger();
    if (v156)
    {
      v157 = v156;
      v158 = object_getClass(*(a1 + 32));
      v159 = class_isMetaClass(v158);
      v221 = object_getClassName(*(a1 + 32));
      v226 = sel_getName(*(a1 + 72));
      v160 = 45;
      if (v159)
      {
        v160 = 43;
      }

      v157(6, "%c[%{public}s %{public}s]:%i active = %{public}@", v160, v221, v226, 529, v76);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v161 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
    {
      v162 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v162))
      {
        v163 = 43;
      }

      else
      {
        v163 = 45;
      }

      v164 = object_getClassName(*(a1 + 32));
      v165 = sel_getName(*(a1 + 72));
      *buf = 67110146;
      v246 = v163;
      v247 = 2082;
      v248 = v164;
      v249 = 2082;
      v250 = v165;
      v251 = 1024;
      v252 = 529;
      v253 = 2114;
      v254 = v76;
      _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i active = %{public}@", buf, 0x2Cu);
    }

    if (*(a1 + 56))
    {
      kdebug_trace();
      v166 = NFSharedSignpostLog();
      if (os_signpost_enabled(v166))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v166, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AUTHORIZE_APPLET", &unk_1002E8B7A, buf, 2u);
      }

      v167 = [*(a1 + 32) _authorize:*(a1 + 56)];
      if (v167)
      {
        v19 = v167;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v168 = NFLogGetLogger();
        if (v168)
        {
          v169 = v168;
          v170 = object_getClass(*(a1 + 32));
          v171 = class_isMetaClass(v170);
          v222 = object_getClassName(*(a1 + 32));
          v227 = sel_getName(*(a1 + 72));
          v172 = 45;
          if (v171)
          {
            v172 = 43;
          }

          v169(3, "%c[%{public}s %{public}s]:%i Failed to authorize : %@", v172, v222, v227, 537, v19);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v132 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_99;
        }

        v173 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v173))
        {
          v174 = 43;
        }

        else
        {
          v174 = 45;
        }

        v175 = object_getClassName(*(a1 + 32));
        v176 = sel_getName(*(a1 + 72));
        *buf = 67110146;
        v246 = v174;
        v247 = 2082;
        v248 = v175;
        v249 = 2082;
        v250 = v176;
        v251 = 1024;
        v252 = 537;
        v253 = 2112;
        v254 = v19;
        v151 = "%c[%{public}s %{public}s]:%i Failed to authorize : %@";
LABEL_137:
        _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_ERROR, v151, buf, 0x2Cu);
LABEL_99:

        v137 = *(a1 + 64);
        v138 = [*(a1 + 32) activeApplet];
        v139 = [*(a1 + 32) activeKeyIdentifiers];
        (*(v137 + 16))(v137, v138, v139, v19);

        [*(a1 + 32) startDefaultMode];
LABEL_173:

        goto LABEL_17;
      }

      kdebug_trace();
      v191 = NFSharedSignpostLog();
      if (os_signpost_enabled(v191))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v191, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "START_PAYMENT_EMULATION", &unk_1002E8B7A, buf, 2u);
      }

      if (([*(a1 + 32) startCardEmulationWithType:{objc_msgSend(*(a1 + 32), "defaultEmulationType")}] & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v192 = NFLogGetLogger();
        if (v192)
        {
          v193 = v192;
          v194 = object_getClass(*(a1 + 32));
          v195 = class_isMetaClass(v194);
          v196 = object_getClassName(*(a1 + 32));
          v229 = sel_getName(*(a1 + 72));
          v197 = 45;
          if (v195)
          {
            v197 = 43;
          }

          v193(3, "%c[%{public}s %{public}s]:%i Failed to start card emulation", v197, v196, v229, 547);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v198 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
        {
          v199 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v199))
          {
            v200 = 43;
          }

          else
          {
            v200 = 45;
          }

          v201 = object_getClassName(*(a1 + 32));
          v202 = sel_getName(*(a1 + 72));
          *buf = 67109890;
          v246 = v200;
          v247 = 2082;
          v248 = v201;
          v249 = 2082;
          v250 = v202;
          v251 = 1024;
          v252 = 547;
          _os_log_impl(&_mh_execute_header, v198, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to start card emulation", buf, 0x22u);
        }

        v203 = *(a1 + 32);
        if (v203[288] == 1)
        {
          [v203 _deauthorize];
          v203 = *(a1 + 32);
        }

        v204 = *(a1 + 64);
        v205 = [v203 activeApplet];
        v233 = [*(a1 + 32) activeKeyIdentifiers];
        v206 = [NSError alloc];
        v207 = [NSString stringWithUTF8String:"nfcd"];
        v240[0] = NSLocalizedDescriptionKey;
        v230 = [NSString stringWithUTF8String:"Stack Error"];
        v241[0] = v230;
        v241[1] = &off_100331FF8;
        v240[1] = @"Line";
        v240[2] = @"Method";
        v208 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 72))];
        v241[2] = v208;
        v240[3] = NSDebugDescriptionErrorKey;
        v209 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 72)), 551];
        v241[3] = v209;
        v210 = [NSDictionary dictionaryWithObjects:v241 forKeys:v240 count:4];
        v211 = v206;
        v212 = v207;
        v213 = [v211 initWithDomain:v207 code:15 userInfo:v210];
        (*(v204 + 16))(v204, v205, v233, v213);

        [*(a1 + 32) startDefaultMode];
        goto LABEL_172;
      }
    }

    else
    {
      v179 = *(a1 + 32);
      if (v179[288] == 1)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v180 = NFLogGetLogger();
        if (v180)
        {
          v181 = v180;
          v182 = object_getClass(*(a1 + 32));
          v183 = class_isMetaClass(v182);
          v184 = object_getClassName(*(a1 + 32));
          v228 = sel_getName(*(a1 + 72));
          v185 = 45;
          if (v183)
          {
            v185 = 43;
          }

          v181(6, "%c[%{public}s %{public}s]:%i Already authorized - staying in wired mode - need to call startCardEmulation or enable express", v185, v184, v228, 557);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v186 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
        {
          v187 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v187))
          {
            v188 = 43;
          }

          else
          {
            v188 = 45;
          }

          v189 = object_getClassName(*(a1 + 32));
          v190 = sel_getName(*(a1 + 72));
          *buf = 67109890;
          v246 = v188;
          v247 = 2082;
          v248 = v189;
          v249 = 2082;
          v250 = v190;
          v251 = 1024;
          v252 = 557;
          _os_log_impl(&_mh_execute_header, v186, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Already authorized - staying in wired mode - need to call startCardEmulation or enable express", buf, 0x22u);
        }
      }

      else
      {
        v214 = [v179 activeKeyIdentifiers];

        v215 = *(a1 + 32);
        if (v214)
        {
          [v215 startDefaultModeAndKeepSEOn:1];
        }

        else
        {
          [v215 startDefaultMode];
        }
      }
    }

    kdebug_trace();
    v216 = NFSharedSignpostLog();
    if (os_signpost_enabled(v216))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v216, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLIENT_CALLBACK", &unk_1002E8B7A, buf, 2u);
    }

    v177 = *(a1 + 64);
    v178 = [*(a1 + 32) activeApplet];
    goto LABEL_171;
  }

  v19 = v44;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v45 = NFLogGetLogger();
  if (v45)
  {
    v46 = v45;
    v47 = object_getClass(*(a1 + 32));
    v48 = class_isMetaClass(v47);
    v49 = object_getClassName(*(a1 + 32));
    v50 = sel_getName(*(a1 + 72));
    v51 = 45;
    if (v48)
    {
      v51 = 43;
    }

    v46(3, "%c[%{public}s %{public}s]:%i Failed to setup active keys %{public}@ - error %{public}@", v51, v49, v50, 462, *(a1 + 48), v19);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v52 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    v53 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v53))
    {
      v54 = 43;
    }

    else
    {
      v54 = 45;
    }

    v55 = object_getClassName(*(a1 + 32));
    v56 = sel_getName(*(a1 + 72));
    v57 = *(a1 + 48);
    *buf = 67110402;
    v246 = v54;
    v247 = 2082;
    v248 = v55;
    v249 = 2082;
    v250 = v56;
    v251 = 1024;
    v252 = 462;
    v253 = 2114;
    v254 = v57;
    v255 = 2114;
    v256 = v19;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to setup active keys %{public}@ - error %{public}@", buf, 0x36u);
  }

  v58 = *(a1 + 64);
  v59 = [*(a1 + 32) activeApplet];
  v60 = [*(a1 + 32) activeKeyIdentifiers];
  (*(v58 + 16))(v58, v59, v60, v19);

  [*(a1 + 32) startDefaultMode];
LABEL_17:
}

void sub_10012DA4C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v7 = [v4 deferredActivationApplet];
  v6 = [*(a1 + 32) activeKeyIdentifiers];
  (*(v3 + 16))(v3, v7, v6, v5);
}

void sub_10012DC88(uint64_t a1)
{
  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
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
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 583, v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(*(a1 + 32));
      v14 = sel_getName(*(a1 + 56));
      v15 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v65 = v12;
      v66 = 2082;
      v67 = v13;
      v68 = 2082;
      v69 = v14;
      v70 = 1024;
      v71 = 583;
      v72 = 2114;
      v73 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v62 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v63 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);
    }
  }

  else
  {
    v22 = [*(a1 + 32) expressModeManager];
    if (v22 && (v23 = v22[181], v22, v23 == 1))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v25 = v24;
        v26 = object_getClass(*(a1 + 32));
        v27 = class_isMetaClass(v26);
        v28 = object_getClassName(*(a1 + 32));
        v59 = sel_getName(*(a1 + 56));
        v29 = 45;
        if (v27)
        {
          v29 = 43;
        }

        v25(4, "%c[%{public}s %{public}s]:%i Express mode in progress, denying..", v29, v28, v59, 586);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
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
        v34 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v65 = v32;
        v66 = 2082;
        v67 = v33;
        v68 = 2082;
        v69 = v34;
        v70 = 1024;
        v71 = 586;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Express mode in progress, denying..", buf, 0x22u);
      }

      v35 = *(a1 + 48);
      v36 = [NSError alloc];
      v37 = [NSString stringWithUTF8String:"nfcd"];
      v60 = NSLocalizedDescriptionKey;
      v38 = [NSString stringWithUTF8String:"Express Mode in progress"];
      v61 = v38;
      v39 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v40 = [v36 initWithDomain:v37 code:38 userInfo:v39];
      (*(v35 + 16))(v35, v40);
    }

    else
    {
      v41 = [*(a1 + 32) deferredActivationApplet];

      if (v41)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v42 = NFLogGetLogger();
        if (v42)
        {
          v43 = v42;
          v44 = object_getClass(*(a1 + 32));
          v45 = class_isMetaClass(v44);
          v46 = object_getClassName(*(a1 + 32));
          v47 = sel_getName(*(a1 + 56));
          v48 = [*(a1 + 32) deferredActivationApplet];
          v49 = 45;
          if (v45)
          {
            v49 = 43;
          }

          v43(6, "%c[%{public}s %{public}s]:%i Applet requires deferred activation: %{public}@", v49, v46, v47, 589, v48);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v50 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v51))
          {
            v52 = 43;
          }

          else
          {
            v52 = 45;
          }

          v53 = object_getClassName(*(a1 + 32));
          v54 = sel_getName(*(a1 + 56));
          v55 = [*(a1 + 32) deferredActivationApplet];
          *buf = 67110146;
          v65 = v52;
          v66 = 2082;
          v67 = v53;
          v68 = 2082;
          v69 = v54;
          v70 = 1024;
          v71 = 589;
          v72 = 2114;
          v73 = v55;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Applet requires deferred activation: %{public}@", buf, 0x2Cu);
        }

        [*(a1 + 32) _sync_startDeferredCardEmulationWithAuthorization:*(a1 + 40) completion:*(a1 + 48)];
      }

      else
      {
        v56 = *(a1 + 32);
        v57 = *(a1 + 40);
        v58 = *(a1 + 48);

        [v56 _performAuthAndStartCardEmulation:v57 fromDeferred:0 completion:v58];
      }
    }
  }
}

void sub_10012ECE0(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.txn.deferredAuthTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(v2, &v4);
  os_activity_scope_leave(&v4);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDeferredAuthTimeout];
}

void sub_10012EE50(uint64_t a1)
{
  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
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
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 668, v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(*(a1 + 32));
      v14 = sel_getName(*(a1 + 56));
      v15 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v28 = v12;
      v29 = 2082;
      v30 = v13;
      v31 = 2082;
      v32 = v14;
      v33 = 1024;
      v34 = 668;
      v35 = 2114;
      v36 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v25 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v26 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);
    }
  }

  else
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v24 = *(a1 + 48);

    [v22 _sync_startDeferredCardEmulationWithAuthorization:v23 completion:v24];
  }
}

void sub_10012F220(uint64_t a1)
{
  v2 = +[_NFHardwareManager sharedHardwareManager];
  v3 = [v2 driverWrapper];
  v4 = sub_10000431C(v3);

  v5 = [v4 fdOn];
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v29 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v34 = 45;
      if (isMetaClass)
      {
        v34 = 43;
      }

      v29(6, "%c[%{public}s %{public}s]:%i %d", v34, ClassName, Name, 686, *(a1 + 56));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v35 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v36))
      {
        v37 = 43;
      }

      else
      {
        v37 = 45;
      }

      v38 = object_getClassName(*(a1 + 32));
      v39 = sel_getName(*(a1 + 48));
      v40 = *(a1 + 56);
      *buf = 67110146;
      v162 = v37;
      v163 = 2082;
      v164 = v38;
      v165 = 2082;
      v166 = v39;
      v167 = 1024;
      v168 = 686;
      v169 = 1024;
      LODWORD(v170) = v40;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %d", buf, 0x28u);
    }

    v41 = *(a1 + 32);
    if (v41[304] == 1)
    {
      v42 = [v41 activeApplet];

      if (!v42)
      {
        if (!v5)
        {
          v82 = 0;
LABEL_58:
          v83 = [*(a1 + 32) secureElementWrapper];
          v84 = [v83 handle];
          v85 = [v84 enableGreenCarThreshold:*(a1 + 56) == 0];

          if ((v85 & 1) == 0)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v86 = NFLogGetLogger();
            if (v86)
            {
              v87 = v86;
              v88 = object_getClass(*(a1 + 32));
              v89 = class_isMetaClass(v88);
              v90 = object_getClassName(*(a1 + 32));
              v148 = sel_getName(*(a1 + 48));
              v91 = 45;
              if (v89)
              {
                v91 = 43;
              }

              v87(6, "%c[%{public}s %{public}s]:%i Failed to configure GC logic", v91, v90, v148, 716);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v92 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
            {
              v93 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v93))
              {
                v94 = 43;
              }

              else
              {
                v94 = 45;
              }

              v95 = object_getClassName(*(a1 + 32));
              v96 = sel_getName(*(a1 + 48));
              *buf = 67109890;
              v162 = v94;
              v163 = 2082;
              v164 = v95;
              v165 = 2082;
              v166 = v96;
              v167 = 1024;
              v168 = 716;
              _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Failed to configure GC logic", buf, 0x22u);
            }
          }

          v97 = [*(a1 + 32) activeApplet];

          if (v97)
          {
            v98 = [*(a1 + 32) secureElementWrapper];
            v99 = *(a1 + 56);
            v100 = [*(a1 + 32) activeApplet];
            v20 = sub_1002629A4(v98, v99, v100);

            if (v20)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v101 = NFLogGetLogger();
              if (v101)
              {
                v102 = v101;
                v103 = object_getClass(*(a1 + 32));
                v104 = class_isMetaClass(v103);
                v144 = object_getClassName(*(a1 + 32));
                v149 = sel_getName(*(a1 + 48));
                v105 = 45;
                if (v104)
                {
                  v105 = 43;
                }

                v102(6, "%c[%{public}s %{public}s]:%i Failed to configure plasticCardModeForApplet: %{public}@", v105, v144, v149, 722, v20);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v106 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
              {
                v107 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v107))
                {
                  v108 = 43;
                }

                else
                {
                  v108 = 45;
                }

                v109 = object_getClassName(*(a1 + 32));
                v110 = sel_getName(*(a1 + 48));
                *buf = 67110146;
                v162 = v108;
                v163 = 2082;
                v164 = v109;
                v165 = 2082;
                v166 = v110;
                v167 = 1024;
                v168 = 722;
                v169 = 2114;
                v170 = v20;
LABEL_91:
                _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Failed to configure plasticCardModeForApplet: %{public}@", buf, 0x2Cu);
                goto LABEL_92;
              }

              goto LABEL_92;
            }
          }

          v111 = [*(a1 + 32) deferredActivationApplet];

          if (v111)
          {
            v112 = [*(a1 + 32) secureElementWrapper];
            v113 = *(a1 + 56);
            v114 = [*(a1 + 32) deferredActivationApplet];
            v20 = sub_1002629A4(v112, v113, v114);

            if (v20)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v115 = NFLogGetLogger();
              if (v115)
              {
                v116 = v115;
                v117 = object_getClass(*(a1 + 32));
                v118 = class_isMetaClass(v117);
                v145 = object_getClassName(*(a1 + 32));
                v150 = sel_getName(*(a1 + 48));
                v119 = 45;
                if (v118)
                {
                  v119 = 43;
                }

                v116(6, "%c[%{public}s %{public}s]:%i Failed to configure plasticCardModeForApplet: %{public}@", v119, v145, v150, 730, v20);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v106 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
              {
                v120 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v120))
                {
                  v121 = 43;
                }

                else
                {
                  v121 = 45;
                }

                v122 = object_getClassName(*(a1 + 32));
                v123 = sel_getName(*(a1 + 48));
                *buf = 67110146;
                v162 = v121;
                v163 = 2082;
                v164 = v122;
                v165 = 2082;
                v166 = v123;
                v167 = 1024;
                v168 = 730;
                v169 = 2114;
                v170 = v20;
                goto LABEL_91;
              }

LABEL_92:

              if ((v82 & 1) == 0)
              {
                goto LABEL_99;
              }

              goto LABEL_98;
            }
          }

          [*(a1 + 32) setPlasticCardMode:*(a1 + 56)];
          v124 = *(a1 + 32);
          if (v124[288] == 1)
          {
            if ([v124 startCardEmulationWithType:2])
            {
              v20 = 0;
LABEL_99:
              (*(*(a1 + 40) + 16))();
              if (*(a1 + 56) != 1)
              {
                goto LABEL_16;
              }

              [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339850];
              v126 = [*(a1 + 32) plasticCardMode];
              v22 = [*(a1 + 32) activeApplet];
              v23 = [v22 identifier];
              [NFGeneralStatisticsCALogger postPlasticCardEnableStatus:v126 aid:v23];
              goto LABEL_15;
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v127 = NFLogGetLogger();
            if (v127)
            {
              v128 = v127;
              v129 = object_getClass(*(a1 + 32));
              v130 = class_isMetaClass(v129);
              v131 = object_getClassName(*(a1 + 32));
              v151 = sel_getName(*(a1 + 48));
              v132 = 45;
              if (v130)
              {
                v132 = 43;
              }

              v128(3, "%c[%{public}s %{public}s]:%i Failed to restore emulation after enabling plastic card mode", v132, v131, v151, 740);
            }

            v152 = v82;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v133 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
            {
              v134 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v134))
              {
                v135 = 43;
              }

              else
              {
                v135 = 45;
              }

              v136 = object_getClassName(*(a1 + 32));
              v137 = sel_getName(*(a1 + 48));
              *buf = 67109890;
              v162 = v135;
              v163 = 2082;
              v164 = v136;
              v165 = 2082;
              v166 = v137;
              v167 = 1024;
              v168 = 740;
              _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to restore emulation after enabling plastic card mode", buf, 0x22u);
            }

            v138 = [NSError alloc];
            v139 = [NSString stringWithUTF8String:"nfcd"];
            v153[0] = NSLocalizedDescriptionKey;
            v140 = [NSString stringWithUTF8String:"Stack Error"];
            v154[0] = v140;
            v154[1] = &off_100332058;
            v153[1] = @"Line";
            v153[2] = @"Method";
            v141 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
            v154[2] = v141;
            v153[3] = NSDebugDescriptionErrorKey;
            v142 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 741];
            v154[3] = v142;
            v143 = [NSDictionary dictionaryWithObjects:v154 forKeys:v153 count:4];
            v20 = [v138 initWithDomain:v139 code:15 userInfo:v143];

            if ((v152 & 1) == 0)
            {
              goto LABEL_99;
            }
          }

          else
          {
            v20 = 0;
            if (!v82)
            {
              goto LABEL_99;
            }
          }

LABEL_98:
          v125 = [v2 setRoutingConfig:v4];
          goto LABEL_99;
        }

        goto LABEL_43;
      }

      v41 = *(a1 + 32);
    }

    if (([v41 startWiredMode] & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v46 = NFLogGetLogger();
      if (v46)
      {
        v47 = v46;
        v48 = object_getClass(*(a1 + 32));
        v49 = class_isMetaClass(v48);
        v50 = object_getClassName(*(a1 + 32));
        v146 = sel_getName(*(a1 + 48));
        v51 = 45;
        if (v49)
        {
          v51 = 43;
        }

        v47(3, "%c[%{public}s %{public}s]:%i Failed to set wired mode", v51, v50, v146, 694);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v52 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v53))
        {
          v54 = 43;
        }

        else
        {
          v54 = 45;
        }

        v55 = object_getClassName(*(a1 + 32));
        v56 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v162 = v54;
        v163 = 2082;
        v164 = v55;
        v165 = 2082;
        v166 = v56;
        v167 = 1024;
        v168 = 694;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set wired mode", buf, 0x22u);
      }

      v57 = [NSError alloc];
      v58 = [NSString stringWithUTF8String:"nfcd"];
      v157[0] = NSLocalizedDescriptionKey;
      v59 = [NSString stringWithUTF8String:"Stack Error"];
      v158[0] = v59;
      v158[1] = &off_100332028;
      v157[1] = @"Line";
      v157[2] = @"Method";
      v60 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v158[2] = v60;
      v157[3] = NSDebugDescriptionErrorKey;
      v61 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 695];
      v158[3] = v61;
      v62 = [NSDictionary dictionaryWithObjects:v158 forKeys:v157 count:4];
      v20 = [v57 initWithDomain:v58 code:15 userInfo:v62];

      goto LABEL_99;
    }

    v43 = [v2 driverWrapper];
    v44 = sub_10000431C(v43);
    v45 = [v44 fdOn];

    if ((v45 & 1) == 0)
    {
LABEL_56:
      v82 = 1;
      goto LABEL_58;
    }

LABEL_43:
    if (v4)
    {
      v63 = [v4 copy];
      v63[7] = 0;
    }

    else
    {
      v63 = 0;
    }

    v64 = [v2 setRoutingConfig:v63];

    if (v64)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v65 = NFLogGetLogger();
      if (v65)
      {
        v66 = v65;
        v67 = object_getClass(*(a1 + 32));
        v68 = class_isMetaClass(v67);
        v69 = object_getClassName(*(a1 + 32));
        v147 = sel_getName(*(a1 + 48));
        v70 = 45;
        if (v68)
        {
          v70 = 43;
        }

        v66(6, "%c[%{public}s %{public}s]:%i Failed to disable FD.", v70, v69, v147, 708);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v71 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        v72 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v72))
        {
          v73 = 43;
        }

        else
        {
          v73 = 45;
        }

        v74 = object_getClassName(*(a1 + 32));
        v75 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v162 = v73;
        v163 = 2082;
        v164 = v74;
        v165 = 2082;
        v166 = v75;
        v167 = 1024;
        v168 = 708;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Failed to disable FD.", buf, 0x22u);
      }

      v76 = [NSError alloc];
      v77 = [NSString stringWithUTF8String:"nfcd"];
      v155[0] = NSLocalizedDescriptionKey;
      v78 = [NSString stringWithUTF8String:"Stack Error"];
      v156[0] = v78;
      v156[1] = &off_100332040;
      v155[1] = @"Line";
      v155[2] = @"Method";
      v79 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v156[2] = v79;
      v155[3] = NSDebugDescriptionErrorKey;
      v80 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 709];
      v156[3] = v80;
      v81 = [NSDictionary dictionaryWithObjects:v156 forKeys:v155 count:4];
      v20 = [v76 initWithDomain:v77 code:15 userInfo:v81];

      goto LABEL_98;
    }

    goto LABEL_56;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v6 = NFLogGetLogger();
  if (v6)
  {
    v7 = v6;
    v8 = object_getClass(*(a1 + 32));
    v9 = class_isMetaClass(v8);
    v10 = object_getClassName(*(a1 + 32));
    v11 = sel_getName(*(a1 + 48));
    v12 = [*(a1 + 32) sessionUID];
    v13 = 45;
    if (v9)
    {
      v13 = 43;
    }

    v7(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v13, v10, v11, 684, v12);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    v17 = object_getClassName(*(a1 + 32));
    v18 = sel_getName(*(a1 + 48));
    v19 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v162 = v16;
    v163 = 2082;
    v164 = v17;
    v165 = 2082;
    v166 = v18;
    v167 = 1024;
    v168 = 684;
    v169 = 2114;
    v170 = v19;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v20 = *(a1 + 40);
  if (v20)
  {
    v21 = [NSError alloc];
    v22 = [NSString stringWithUTF8String:"nfcd"];
    v159[0] = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithUTF8String:"Session not active"];
    v160[0] = v23;
    v160[1] = &off_100332010;
    v159[1] = @"Line";
    v159[2] = @"Method";
    v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v160[2] = v24;
    v159[3] = NSDebugDescriptionErrorKey;
    v25 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 684];
    v160[3] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v160 forKeys:v159 count:4];
    v27 = [v21 initWithDomain:v22 code:54 userInfo:v26];
    v20[2](v20, v27);

    v20 = 0;
LABEL_15:
  }

LABEL_16:
}

void sub_10013044C(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 763, v8);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v66 = v12;
    v67 = 2082;
    v68 = v13;
    v69 = 2082;
    v70 = v14;
    v71 = 1024;
    v72 = 763;
    v73 = 2114;
    v74 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v17 = v16;
      v18 = object_getClass(*(a1 + 32));
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(*(a1 + 32));
      v21 = sel_getName(*(a1 + 48));
      v22 = [*(a1 + 32) sessionUID];
      v23 = 45;
      if (v19)
      {
        v23 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 765, v22);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      v27 = object_getClassName(*(a1 + 32));
      v28 = sel_getName(*(a1 + 48));
      v29 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v66 = v26;
      v67 = 2082;
      v68 = v27;
      v69 = 2082;
      v70 = v28;
      v71 = 1024;
      v72 = 765;
      v73 = 2114;
      v74 = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v30 = *(a1 + 40);
    if (v30)
    {
      v31 = [NSError alloc];
      v32 = [NSString stringWithUTF8String:"nfcd"];
      v63 = NSLocalizedDescriptionKey;
      v33 = [NSString stringWithUTF8String:"Session not active"];
      v64 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
      (*(v30 + 16))(v30, v35);
LABEL_24:
    }
  }

  else
  {
    v36 = [*(a1 + 32) activeApplet];

    if (!v36)
    {
      v54 = [*(a1 + 32) expressModeManager];
      sub_10002E9BC(v54);

      v55 = [*(a1 + 32) startCardEmulationWithType:8];
      v56 = *(a1 + 40);
      if (v55)
      {
        (*(v56 + 16))(v56, 0);
        return;
      }

      v57 = [NSError alloc];
      v32 = [NSString stringWithUTF8String:"nfcd"];
      v59 = NSLocalizedDescriptionKey;
      v33 = [NSString stringWithUTF8String:"Unknown Error"];
      v60 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v35 = [v57 initWithDomain:v32 code:6 userInfo:v34];
      (*(v56 + 16))(v56, v35);
      goto LABEL_24;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFLogGetLogger();
    if (v37)
    {
      v38 = v37;
      v39 = object_getClass(*(a1 + 32));
      v40 = class_isMetaClass(v39);
      v41 = object_getClassName(*(a1 + 32));
      v58 = sel_getName(*(a1 + 48));
      v42 = 45;
      if (v40)
      {
        v42 = 43;
      }

      v38(3, "%c[%{public}s %{public}s]:%i Can not start express mode when an applet is selected", v42, v41, v58, 768);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v43 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v44))
      {
        v45 = 43;
      }

      else
      {
        v45 = 45;
      }

      v46 = object_getClassName(*(a1 + 32));
      v47 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v66 = v45;
      v67 = 2082;
      v68 = v46;
      v69 = 2082;
      v70 = v47;
      v71 = 1024;
      v72 = 768;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Can not start express mode when an applet is selected", buf, 0x22u);
    }

    v48 = *(a1 + 40);
    v49 = [NSError alloc];
    v50 = [NSString stringWithUTF8String:"nfcd"];
    v61 = NSLocalizedDescriptionKey;
    v51 = [NSString stringWithUTF8String:"Invalid State"];
    v62 = v51;
    v52 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v53 = [v49 initWithDomain:v50 code:12 userInfo:v52];
    (*(v48 + 16))(v48, v53);
  }
}

void sub_100130BDC(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 785, v8);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v66 = v12;
    v67 = 2082;
    v68 = v13;
    v69 = 2082;
    v70 = v14;
    v71 = 1024;
    v72 = 785;
    v73 = 2114;
    v74 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v17 = v16;
      v18 = object_getClass(*(a1 + 32));
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(*(a1 + 32));
      v21 = sel_getName(*(a1 + 48));
      v22 = [*(a1 + 32) sessionUID];
      v23 = 45;
      if (v19)
      {
        v23 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 787, v22);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      v27 = object_getClassName(*(a1 + 32));
      v28 = sel_getName(*(a1 + 48));
      v29 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v66 = v26;
      v67 = 2082;
      v68 = v27;
      v69 = 2082;
      v70 = v28;
      v71 = 1024;
      v72 = 787;
      v73 = 2114;
      v74 = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v30 = *(a1 + 40);
    if (v30)
    {
      v31 = [NSError alloc];
      v32 = [NSString stringWithUTF8String:"nfcd"];
      v63 = NSLocalizedDescriptionKey;
      v33 = [NSString stringWithUTF8String:"Session not active"];
      v64 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
      (*(v30 + 16))(v30, v35);
LABEL_24:
    }
  }

  else
  {
    v36 = [*(a1 + 32) expressModeManager];
    if (!v36 || (v37 = v36[181], v36, v37 != 1))
    {
      v55 = [*(a1 + 32) startCardEmulationWithType:4];
      v56 = *(a1 + 40);
      if (v55)
      {
        (*(v56 + 16))(v56, 0);
        return;
      }

      v57 = [NSError alloc];
      v32 = [NSString stringWithUTF8String:"nfcd"];
      v59 = NSLocalizedDescriptionKey;
      v33 = [NSString stringWithUTF8String:"Unknown Error"];
      v60 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v35 = [v57 initWithDomain:v32 code:6 userInfo:v34];
      (*(v56 + 16))(v56, v35);
      goto LABEL_24;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFLogGetLogger();
    if (v38)
    {
      v39 = v38;
      v40 = object_getClass(*(a1 + 32));
      v41 = class_isMetaClass(v40);
      v42 = object_getClassName(*(a1 + 32));
      v58 = sel_getName(*(a1 + 48));
      v43 = 45;
      if (v41)
      {
        v43 = 43;
      }

      v39(4, "%c[%{public}s %{public}s]:%i Express mode in progress, denying..", v43, v42, v58, 790);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v44 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v45))
      {
        v46 = 43;
      }

      else
      {
        v46 = 45;
      }

      v47 = object_getClassName(*(a1 + 32));
      v48 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v66 = v46;
      v67 = 2082;
      v68 = v47;
      v69 = 2082;
      v70 = v48;
      v71 = 1024;
      v72 = 790;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Express mode in progress, denying..", buf, 0x22u);
    }

    v49 = *(a1 + 40);
    v50 = [NSError alloc];
    v51 = [NSString stringWithUTF8String:"nfcd"];
    v61 = NSLocalizedDescriptionKey;
    v52 = [NSString stringWithUTF8String:"Express Mode in progress"];
    v62 = v52;
    v53 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v54 = [v50 initWithDomain:v51 code:38 userInfo:v53];
    (*(v49 + 16))(v49, v54);
  }
}

void sub_10013135C(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 806, v8);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v54 = v12;
    v55 = 2082;
    v56 = v13;
    v57 = 2082;
    v58 = v14;
    v59 = 1024;
    v60 = 806;
    v61 = 2114;
    v62 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v17 = v16;
      v18 = object_getClass(*(a1 + 32));
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(*(a1 + 32));
      v21 = sel_getName(*(a1 + 48));
      v22 = [*(a1 + 32) sessionUID];
      v23 = 45;
      if (v19)
      {
        v23 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 808, v22);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      v27 = object_getClassName(*(a1 + 32));
      v28 = sel_getName(*(a1 + 48));
      v29 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v54 = v26;
      v55 = 2082;
      v56 = v27;
      v57 = 2082;
      v58 = v28;
      v59 = 1024;
      v60 = 808;
      v61 = 2114;
      v62 = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v30 = *(a1 + 40);
    if (v30)
    {
      v31 = [NSError alloc];
      v32 = [NSString stringWithUTF8String:"nfcd"];
      v51 = NSLocalizedDescriptionKey;
      v33 = [NSString stringWithUTF8String:"Session not active"];
      v52 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
      (*(v30 + 16))(v30, v35);
    }
  }

  else
  {
    *(*(a1 + 32) + 344) = 0;
    [*(*(a1 + 32) + 328) stopTimer];
    if ([*(a1 + 32) plasticCardMode])
    {
      v36 = [*(a1 + 32) secureElementWrapper];
      v37 = [v36 handle];
      v38 = [v37 enableGreenCarThreshold:1];

      if ((v38 & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v39 = NFLogGetLogger();
        if (v39)
        {
          v40 = v39;
          v41 = object_getClass(*(a1 + 32));
          v42 = class_isMetaClass(v41);
          v43 = object_getClassName(*(a1 + 32));
          v50 = sel_getName(*(a1 + 48));
          v44 = 45;
          if (v42)
          {
            v44 = 43;
          }

          v40(6, "%c[%{public}s %{public}s]:%i Failed to re-enable GC logic", v44, v43, v50, 815);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v45 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v46))
          {
            v47 = 43;
          }

          else
          {
            v47 = 45;
          }

          v48 = object_getClassName(*(a1 + 32));
          v49 = sel_getName(*(a1 + 48));
          *buf = 67109890;
          v54 = v47;
          v55 = 2082;
          v56 = v48;
          v57 = 2082;
          v58 = v49;
          v59 = 1024;
          v60 = 815;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Failed to re-enable GC logic", buf, 0x22u);
        }
      }
    }

    [*(a1 + 32) startDefaultMode];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100131A30(uint64_t a1)
{
  kdebug_trace();
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) expressModeManager];
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 181);
    }

    else
    {
      v5 = 0;
    }

    *buf = 67109120;
    v66 = v5;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLIENT_FELICA_APPLET_STATE", "InSessionExpress=%d", buf, 8u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    [*(a1 + 32) switchToSecureElementWrapperForApplet:*(a1 + 40)];
    if ([*(a1 + 32) startWiredMode])
    {
      v29 = [*(a1 + 32) secureElementWrapper];
      v30 = [*(a1 + 40) identifierAsData];
      v60 = 0;
      v24 = sub_100257F24(v29, v30, &v60);
      v31 = v60;

      v32 = [*(a1 + 32) secureElementWrapper];
      v59 = v31;
      v22 = sub_1002607E8(v32, v24, &v59);
      v23 = v59;

      (*(*(a1 + 48) + 16))();
      v33 = *(a1 + 32);
      if (v33[37] <= 0.0)
      {
        [v33 startDefaultMode];
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v35 = Logger;
          Class = object_getClass(*(a1 + 32));
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(*(a1 + 32));
          Name = sel_getName(*(a1 + 56));
          v39 = 45;
          if (isMetaClass)
          {
            v39 = 43;
          }

          v35(6, "%c[%{public}s %{public}s]:%i Delaying restart of default mode", v39, ClassName, Name, 855);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v40 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v41))
          {
            v42 = 43;
          }

          else
          {
            v42 = 45;
          }

          v43 = object_getClassName(*(a1 + 32));
          v44 = sel_getName(*(a1 + 56));
          *buf = 67109890;
          v66 = v42;
          v67 = 2082;
          v68 = v43;
          v69 = 2082;
          v70 = v44;
          v71 = 1024;
          v72 = 855;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Delaying restart of default mode", buf, 0x22u);
        }

        [*(a1 + 32) pauseExpressAndStartDefaultModeAfter:*(*(a1 + 32) + 296)];
      }

      goto LABEL_20;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v45 = NFLogGetLogger();
    if (v45)
    {
      v46 = v45;
      v47 = object_getClass(*(a1 + 32));
      v48 = class_isMetaClass(v47);
      v49 = object_getClassName(*(a1 + 32));
      v58 = sel_getName(*(a1 + 56));
      v50 = 45;
      if (v48)
      {
        v50 = 43;
      }

      v46(3, "%c[%{public}s %{public}s]:%i Failed to set mode to wired", v50, v49, v58, 839);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v51 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v52))
      {
        v53 = 43;
      }

      else
      {
        v53 = 45;
      }

      v54 = object_getClassName(*(a1 + 32));
      v55 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v66 = v53;
      v67 = 2082;
      v68 = v54;
      v69 = 2082;
      v70 = v55;
      v71 = 1024;
      v72 = 839;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set mode to wired", buf, 0x22u);
    }

    v20 = *(a1 + 48);
    v56 = [NSError alloc];
    v22 = [NSString stringWithUTF8String:"nfcd"];
    v61 = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithUTF8String:"Unexpected Result"];
    v62 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v25 = v56;
    v26 = v22;
    v27 = 13;
LABEL_19:
    v28 = [v25 initWithDomain:v26 code:v27 userInfo:v24];
    (*(v20 + 16))(v20, 0, v28);

LABEL_20:
    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v6 = NFLogGetLogger();
  if (v6)
  {
    v7 = v6;
    v8 = object_getClass(*(a1 + 32));
    v9 = class_isMetaClass(v8);
    v10 = object_getClassName(*(a1 + 32));
    v11 = sel_getName(*(a1 + 56));
    v12 = [*(a1 + 32) sessionUID];
    v13 = 45;
    if (v9)
    {
      v13 = 43;
    }

    v7(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v13, v10, v11, 832, v12);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    v17 = object_getClassName(*(a1 + 32));
    v18 = sel_getName(*(a1 + 56));
    v19 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v66 = v16;
    v67 = 2082;
    v68 = v17;
    v69 = 2082;
    v70 = v18;
    v71 = 1024;
    v72 = 832;
    v73 = 2114;
    v74 = v19;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v20 = *(a1 + 48);
  if (v20)
  {
    v21 = [NSError alloc];
    v22 = [NSString stringWithUTF8String:"nfcd"];
    v63 = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithUTF8String:"Session not active"];
    v64 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v25 = v21;
    v26 = v22;
    v27 = 54;
    goto LABEL_19;
  }
}

void sub_100132270(uint64_t a1)
{
  kdebug_trace();
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) expressModeManager];
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 181);
    }

    else
    {
      v5 = 0;
    }

    *buf = 67109120;
    v67 = v5;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLIENT_TRANSIT_APPLET_STATE", "InSessionExpress=%d", buf, 8u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    [*(a1 + 32) switchToSecureElementWrapperForApplet:*(a1 + 40)];
    if ([*(a1 + 32) startWiredMode])
    {
      v29 = [*(a1 + 32) secureElementWrapper];
      v30 = [*(a1 + 40) identifierAsData];
      v61 = 0;
      v23 = sub_100257F24(v29, v30, &v61);
      v31 = v61;

      v32 = [*(a1 + 32) secureElementWrapper];
      v60 = v31;
      v24 = sub_1002607E8(v32, v23, &v60);
      v22 = v60;

      kdebug_trace();
      v33 = NFSharedSignpostLog();
      if (os_signpost_enabled(v33))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLIENT_CALLBACK", &unk_1002E8B7A, buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
      v34 = *(a1 + 32);
      if (v34[37] <= 0.0)
      {
        [v34 startDefaultMode];
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v36 = Logger;
          Class = object_getClass(*(a1 + 32));
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(*(a1 + 32));
          Name = sel_getName(*(a1 + 56));
          v40 = 45;
          if (isMetaClass)
          {
            v40 = 43;
          }

          v36(6, "%c[%{public}s %{public}s]:%i Delaying restart of default mode", v40, ClassName, Name, 896);
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
          v45 = sel_getName(*(a1 + 56));
          *buf = 67109890;
          v67 = v43;
          v68 = 2082;
          v69 = v44;
          v70 = 2082;
          v71 = v45;
          v72 = 1024;
          v73 = 896;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Delaying restart of default mode", buf, 0x22u);
        }

        [*(a1 + 32) pauseExpressAndStartDefaultModeAfter:*(*(a1 + 32) + 296)];
      }

      goto LABEL_20;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v46 = NFLogGetLogger();
    if (v46)
    {
      v47 = v46;
      v48 = object_getClass(*(a1 + 32));
      v49 = class_isMetaClass(v48);
      v50 = object_getClassName(*(a1 + 32));
      v59 = sel_getName(*(a1 + 56));
      v51 = 45;
      if (v49)
      {
        v51 = 43;
      }

      v47(3, "%c[%{public}s %{public}s]:%i Failed to set mode to wired", v51, v50, v59, 879);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v52 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v53))
      {
        v54 = 43;
      }

      else
      {
        v54 = 45;
      }

      v55 = object_getClassName(*(a1 + 32));
      v56 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v67 = v54;
      v68 = 2082;
      v69 = v55;
      v70 = 2082;
      v71 = v56;
      v72 = 1024;
      v73 = 879;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set mode to wired", buf, 0x22u);
    }

    v20 = *(a1 + 48);
    v57 = [NSError alloc];
    v22 = [NSString stringWithUTF8String:"nfcd"];
    v62 = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithUTF8String:"Unexpected Result"];
    v63 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v25 = v57;
    v26 = v22;
    v27 = 13;
LABEL_19:
    v28 = [v25 initWithDomain:v26 code:v27 userInfo:v24];
    (*(v20 + 16))(v20, 0, v28);

LABEL_20:
    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v6 = NFLogGetLogger();
  if (v6)
  {
    v7 = v6;
    v8 = object_getClass(*(a1 + 32));
    v9 = class_isMetaClass(v8);
    v10 = object_getClassName(*(a1 + 32));
    v11 = sel_getName(*(a1 + 56));
    v12 = [*(a1 + 32) sessionUID];
    v13 = 45;
    if (v9)
    {
      v13 = 43;
    }

    v7(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v13, v10, v11, 872, v12);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    v17 = object_getClassName(*(a1 + 32));
    v18 = sel_getName(*(a1 + 56));
    v19 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v67 = v16;
    v68 = 2082;
    v69 = v17;
    v70 = 2082;
    v71 = v18;
    v72 = 1024;
    v73 = 872;
    v74 = 2114;
    v75 = v19;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v20 = *(a1 + 48);
  if (v20)
  {
    v21 = [NSError alloc];
    v22 = [NSString stringWithUTF8String:"nfcd"];
    v64 = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithUTF8String:"Session not active"];
    v65 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    v25 = v21;
    v26 = v22;
    v27 = 54;
    goto LABEL_19;
  }
}

void sub_1001354A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [*(a1 + 32) remoteObject];
    [v2 didFailDeferredAuthorization];
  }
}

void sub_100138EA8(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.express.restartTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v2, state);
  os_activity_scope_leave(state);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(WeakRetained);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(WeakRetained);
      Name = sel_getName(*(a1 + 40));
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 1611);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = object_getClass(WeakRetained);
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(WeakRetained);
      v14 = sel_getName(*(a1 + 40));
      *state = 67109890;
      *&state[4] = v12;
      *&state[8] = 2082;
      *&state[10] = v13;
      v20 = 2082;
      v21 = v14;
      v22 = 1024;
      v23 = 1611;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", state, 0x22u);
    }

    v15 = [WeakRetained expressModeManager];
    v16 = v15;
    if (v15)
    {
      sub_100031A1C(v15, 0, 1);
    }

    [WeakRetained startDefaultMode];
    v17 = WeakRetained[42];
    WeakRetained[42] = 0;
  }
}

void sub_10013A570(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 1777);
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
    v12 = sel_getName(*(a1 + 40));
    *buf = 67109890;
    v16 = v10;
    v17 = 2082;
    v18 = v11;
    v19 = 2082;
    v20 = v12;
    v21 = 1024;
    v22 = 1777;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v13 = [*(a1 + 32) remoteObject];
  [v13 didReceivePendingServerRequest];
}

void sub_10013B288(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v5 objectForKeyedSubscript:@"NFHistoryRecords"];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = v40 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v37 objects:v53 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    v34 = v5;
    v35 = v4;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"NFServiceProviderID"];
        if ([v12 intValue] == 1 || objc_msgSend(v12, "intValue") == 4)
        {
          goto LABEL_16;
        }

        v13 = [v11 objectForKeyedSubscript:@"NFBalance"];
        if (v13 || ([v11 objectForKeyedSubscript:@"NFTransactionDate"], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
        {

LABEL_16:
          v15 = 61441;
          v5 = v34;
          v4 = v35;
          goto LABEL_17;
        }

        v14 = [v11 objectForKeyedSubscript:@"NFAmount"];

        if (v14)
        {
          goto LABEL_16;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v37 objects:v53 count:16];
      v15 = 61442;
      v5 = v34;
      v4 = v35;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 61442;
  }

LABEL_17:

  v16 = [NSMutableDictionary alloc];
  v51[0] = @"appletIdentifier";
  v51[1] = @"type";
  v52[0] = v4;
  v52[1] = &off_100332160;
  v51[2] = @"result";
  v17 = [NSNumber numberWithUnsignedShort:v15];
  v51[3] = @"felicaInfo";
  v52[2] = v17;
  v52[3] = v5;
  v18 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
  v19 = [v16 initWithDictionary:v18];

  v20 = [[NFContactlessPaymentEndEvent alloc] initWithDictionary:v19];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v22 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v25 = 45;
    if (isMetaClass)
    {
      v25 = 43;
    }

    v22(6, "%c[%{public}s %{public}s]:%i %{public}@", v25, ClassName, Name, 1883, v20);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v26 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
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
    v30 = sel_getName(*(a1 + 40));
    *buf = 67110146;
    v42 = v28;
    v43 = 2082;
    v44 = v29;
    v45 = 2082;
    v46 = v30;
    v47 = 1024;
    v48 = 1883;
    v49 = 2114;
    v50 = v20;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v31 = [*(a1 + 32) remoteObject];
  [v31 didEndTransaction:v20];
}

void sub_10013BA90(uint64_t a1)
{
  if (*(*(a1 + 32) + 386) == 1)
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
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i This API is not allowed in demo mode", v7, ClassName, Name, 1937);
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
      v12 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v27 = v10;
      v28 = 2082;
      v29 = v11;
      v30 = 2082;
      v31 = v12;
      v32 = 1024;
      v33 = 1937;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i This API is not allowed in demo mode", buf, 0x22u);
    }

    v13 = *(a1 + 40);
    v14 = [NSError alloc];
    v15 = [NSString stringWithUTF8String:"nfcd"];
    v24[0] = NSLocalizedDescriptionKey;
    v16 = [NSString stringWithUTF8String:"Invalid State"];
    v25[0] = v16;
    v25[1] = &off_100332178;
    v24[1] = @"Line";
    v24[2] = @"Method";
    v17 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v25[2] = v17;
    v24[3] = NSDebugDescriptionErrorKey;
    v18 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 1938];
    v25[3] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
    v20 = [v14 initWithDomain:v15 code:12 userInfo:v19];
    (*(v13 + 16))(v13, 0, v20);
  }

  else
  {
    v21 = *(a1 + 40);
    v23.receiver = *(a1 + 32);
    v23.super_class = _NFContactlessPaymentSession;
    objc_msgSendSuper2(&v23, "createHandoffTokenWithCompletion:", v21);
  }
}

void sub_10013BF70(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 64));
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 28, v8);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 64));
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v128 = v12;
    v129 = 2082;
    v130 = v13;
    v131 = 2082;
    v132 = v14;
    v133 = 1024;
    v134 = 28;
    v135 = 2114;
    v136 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v40 = [*(a1 + 32) secureElementWrapper];
    v117 = 0;
    v41 = sub_10020630C(v40, &v117);
    v32 = v117;

    v112 = v41;
    if (v32 || !v41)
    {
      v80 = *(a1 + 56);
      v81 = [NSError alloc];
      v36 = [NSString stringWithUTF8String:"nfcd"];
      v121[0] = NSLocalizedDescriptionKey;
      v82 = [NSString stringWithUTF8String:"Unknown Error"];
      v122[0] = v82;
      v122[1] = &off_1003321A8;
      v121[1] = @"Line";
      v121[2] = @"Method";
      v38 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
      v122[2] = v38;
      v121[3] = NSDebugDescriptionErrorKey;
      v39 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 35];
      v122[3] = v39;
      v121[4] = NSLocalizedFailureReasonErrorKey;
      v83 = [[NSString alloc] initWithFormat:@"Failed to get Global ACL"];
      v122[4] = v83;
      v84 = [NSDictionary dictionaryWithObjects:v122 forKeys:v121 count:5];
      v85 = [v81 initWithDomain:v36 code:6 userInfo:v84];
      (*(v80 + 16))(v80, 0, v85);

      v33 = v41;
      v37 = v82;
    }

    else
    {
      v108 = objc_alloc_init(NFCardMigrationPaymentResponse);
      v37 = objc_opt_new();
      v38 = [[NFECommercePaymentRequest alloc] initWithCardMigrationRequest:*(a1 + 40)];
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      v42 = [*(a1 + 40) passInfos];
      v43 = [v42 countByEnumeratingWithState:&v113 objects:v120 count:16];
      if (v43)
      {
        v44 = v43;
        obj = v42;
        v110 = *v114;
        while (2)
        {
          for (i = 0; i != v44; i = i + 1)
          {
            if (*v114 != v110)
            {
              objc_enumerationMutation(obj);
            }

            v46 = *(*(&v113 + 1) + 8 * i);
            v47 = [v46 appletIdentifier];
            [(NFECommercePaymentRequest *)v38 setAppletIdentifier:v47];

            -[NFECommercePaymentRequest setMerchantCapabilities:](v38, "setMerchantCapabilities:", [v46 merchantCapabilities]);
            v48 = [v46 currencyCode];

            if (v48)
            {
              v49 = [v46 currencyCode];
              [(NFECommercePaymentRequest *)v38 setCurrencyCode:v49];
            }

            v50 = v37;
            v51 = [v46 countryCode];

            if (v51)
            {
              v52 = [v46 countryCode];
              [(NFECommercePaymentRequest *)v38 setCountryCode:v52];
            }

            v53 = objc_opt_new();
            v54 = [*(a1 + 32) secureElementWrapper];
            v55 = *(a1 + 48);
            v56 = [*(a1 + 32) uid];
            v57 = [*(a1 + 40) token];
            v58 = sub_1001F8604(v54, v55, v56, v38, v57, v112, v53);

            if (v58)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v86 = NFLogGetLogger();
              if (v86)
              {
                v87 = v86;
                v88 = object_getClass(*(a1 + 32));
                v89 = class_isMetaClass(v88);
                v90 = object_getClassName(*(a1 + 32));
                v105 = sel_getName(*(a1 + 64));
                v91 = 45;
                if (v89)
                {
                  v91 = 43;
                }

                v87(3, "%c[%{public}s %{public}s]:%i Failed to authorizeCardMigrationTransaction: aborting process.", v91, v90, v105, 67);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v92 = NFSharedLogGetLogger();
              v39 = obj;
              if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
              {
                v93 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v93))
                {
                  v94 = 43;
                }

                else
                {
                  v94 = 45;
                }

                v95 = object_getClassName(*(a1 + 32));
                v96 = sel_getName(*(a1 + 64));
                *buf = 67109890;
                v128 = v94;
                v129 = 2082;
                v130 = v95;
                v131 = 2082;
                v132 = v96;
                v133 = 1024;
                v134 = 67;
                _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to authorizeCardMigrationTransaction: aborting process.", buf, 0x22u);
              }

              v111 = *(a1 + 56);
              v97 = [NSError alloc];
              v106 = [NSString stringWithUTF8String:"nfcd"];
              v107 = v58;
              v118[0] = NSLocalizedDescriptionKey;
              if (v58 >= 0x4C)
              {
                v98 = 76;
              }

              else
              {
                v98 = v58;
              }

              v99 = [NSString stringWithUTF8String:(&off_1003193B0)[v98]];
              v119[0] = v99;
              v119[1] = &off_1003321C0;
              v118[1] = @"Line";
              v118[2] = @"Method";
              v100 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
              v119[2] = v100;
              v118[3] = NSDebugDescriptionErrorKey;
              v101 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 68];
              v119[3] = v101;
              v102 = [NSDictionary dictionaryWithObjects:v119 forKeys:v118 count:4];
              v103 = [v97 initWithDomain:v106 code:v107 userInfo:v102];
              (*(v111 + 16))(v111, 0, v103);

              v32 = 0;
              v33 = v112;
              v37 = v50;
              v36 = v108;
              goto LABEL_24;
            }

            v37 = v50;
            [v50 addObject:v53];
          }

          v42 = obj;
          v44 = [obj countByEnumeratingWithState:&v113 objects:v120 count:16];
          if (v44)
          {
            continue;
          }

          break;
        }
      }

      v36 = v108;
      [(NFCardMigrationPaymentResponse *)v108 setTransactions:v37];
      v59 = [*(a1 + 40) token];
      [(NFCardMigrationPaymentResponse *)v108 setToken:v59];

      v39 = objc_opt_new();
      v60 = [*(a1 + 32) secureElementWrapper];
      v61 = [v60 rsaCertificate];

      if (v61)
      {
        v62 = [*(a1 + 32) secureElementWrapper];
        v63 = [v62 rsaCertificate];
        v64 = [NSData NF_dataWithHexString:v63];
        [v39 setObject:v64 forKeyedSubscript:@"RSA"];
      }

      v65 = [*(a1 + 32) secureElementWrapper];
      v66 = [v65 eccCertificate];

      v33 = v112;
      if (v66)
      {
        v67 = [*(a1 + 32) secureElementWrapper];
        v68 = [v67 eccCertificate];
        v69 = [NSData NF_dataWithHexString:v68];
        [v39 setObject:v69 forKeyedSubscript:@"ECDSA"];
      }

      v70 = [*(a1 + 32) secureElementWrapper];
      v71 = [v70 eckaCertificate];

      if (v71)
      {
        v72 = [*(a1 + 32) secureElementWrapper];
        v73 = [v72 eckaCertificate];
        v74 = [NSData NF_dataWithHexString:v73];
        [v39 setObject:v74 forKeyedSubscript:@"ECKA"];
      }

      v75 = [*(a1 + 32) secureElementWrapper];
      v76 = [v75 eccCertificate];

      if (v76)
      {
        v77 = [*(a1 + 32) secureElementWrapper];
        v78 = [v77 eccCertificate];
        v79 = [NSData NF_dataWithHexString:v78];
        [v39 setObject:v79 forKeyedSubscript:@"ECC"];
      }

      [(NFCardMigrationPaymentResponse *)v108 setCerts:v39];
      (*(*(a1 + 56) + 16))();
      v32 = 0;
    }

    goto LABEL_24;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v17 = v16;
    v18 = object_getClass(*(a1 + 32));
    v19 = class_isMetaClass(v18);
    v20 = object_getClassName(*(a1 + 32));
    v21 = sel_getName(*(a1 + 64));
    v22 = [*(a1 + 32) sessionUID];
    v23 = 45;
    if (v19)
    {
      v23 = 43;
    }

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 29, v22);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v24 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v25))
    {
      v26 = 43;
    }

    else
    {
      v26 = 45;
    }

    v27 = object_getClassName(*(a1 + 32));
    v28 = sel_getName(*(a1 + 64));
    v29 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v128 = v26;
    v129 = 2082;
    v130 = v27;
    v131 = 2082;
    v132 = v28;
    v133 = 1024;
    v134 = 29;
    v135 = 2114;
    v136 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 56);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v123[0] = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v124[0] = v33;
    v124[1] = &off_100332190;
    v123[1] = @"Line";
    v123[2] = @"Method";
    v125 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v123[3] = NSDebugDescriptionErrorKey;
    v34 = [NSString alloc];
    v104 = sel_getName(*(a1 + 64));
    v35 = v34;
    v36 = v125;
    v37 = [v35 initWithFormat:@"%s:%d", v104, 29];
    v126 = v37;
    v38 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:4];
    v39 = [v31 initWithDomain:v32 code:54 userInfo:v38];
    (*(v30 + 16))(v30, 0, v39);
LABEL_24:
  }
}

void sub_10013CD90(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 100, v8);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v89 = v12;
    v90 = 2082;
    v91 = v13;
    v92 = 2082;
    v93 = v14;
    v94 = 1024;
    v95 = 100;
    v96 = 2114;
    v97 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v32 = [NSMutableData dataWithLength:32];
    v38 = SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, [v32 mutableBytes]);
    if (!v38)
    {
      v57 = [*(a1 + 32) secureElementWrapper];
      v85 = 0;
      v58 = sub_1001FEB84(v57, v32, 3, &v85);
      v33 = v85;

      if (v58)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v59 = NFLogGetLogger();
        if (v59)
        {
          v60 = v59;
          v61 = object_getClass(*(a1 + 32));
          v62 = class_isMetaClass(v61);
          v63 = object_getClassName(*(a1 + 32));
          v64 = sel_getName(*(a1 + 48));
          if (v58 >= 0x4C)
          {
            v65 = 76;
          }

          else
          {
            v65 = v58;
          }

          v83 = (&off_1003193B0)[v65];
          v66 = 43;
          if (!v62)
          {
            v66 = 45;
          }

          v60(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v66, v63, v64, 113, @"Returned", v58, v83);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v67 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
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
          if (v58 >= 0x4C)
          {
            v72 = 76;
          }

          else
          {
            v72 = v58;
          }

          v73 = (&off_1003193B0)[v72];
          *buf = 67110658;
          v89 = v69;
          v90 = 2082;
          v91 = v70;
          v92 = 2082;
          v93 = v71;
          v94 = 1024;
          v95 = 113;
          v96 = 2112;
          v97 = @"Returned";
          v98 = 1024;
          v99 = v58;
          v100 = 2080;
          v101 = v73;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ err=%d %s", buf, 0x3Cu);
        }

        else if (v58 >= 0x4C)
        {
          v72 = 76;
        }

        else
        {
          v72 = v58;
        }

        v76 = *(a1 + 40);
        v84 = [NSError alloc];
        v34 = [NSString stringWithUTF8String:"nfcd"];
        v77 = v58;
        v86[0] = NSLocalizedDescriptionKey;
        v35 = [NSString stringWithUTF8String:(&off_1003193B0)[v72]];
        v87[0] = v35;
        v87[1] = &off_100332208;
        v86[1] = @"Line";
        v86[2] = @"Method";
        v78 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
        v87[2] = v78;
        v86[3] = NSDebugDescriptionErrorKey;
        v79 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 114];
        v87[3] = v79;
        v80 = [NSDictionary dictionaryWithObjects:v87 forKeys:v86 count:4];
        v81 = [v84 initWithDomain:v34 code:v77 userInfo:v80];
        (*(v76 + 16))(v76, 0, v81);
      }

      else
      {
        v74 = [*(a1 + 32) secureElementWrapper];
        v75 = [v74 eccCertificate];
        v34 = [NSData NF_dataWithHexString:v75];

        v35 = objc_opt_new();
        [v35 setToken:v32];
        [v35 setSignature:v33];
        [v35 setCertificate:v34];
        (*(*(a1 + 40) + 16))();
      }

      goto LABEL_25;
    }

    v39 = v38;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v40 = NFLogGetLogger();
    if (v40)
    {
      v41 = v40;
      v42 = object_getClass(*(a1 + 32));
      v43 = class_isMetaClass(v42);
      v44 = object_getClassName(*(a1 + 32));
      v82 = sel_getName(*(a1 + 48));
      v45 = 45;
      if (v43)
      {
        v45 = 43;
      }

      v41(3, "%c[%{public}s %{public}s]:%i Failed to generate Migration Token?!", v45, v44, v82, 105);
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
      v50 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v89 = v48;
      v90 = 2082;
      v91 = v49;
      v92 = 2082;
      v93 = v50;
      v94 = 1024;
      v95 = 105;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to generate Migration Token?!", buf, 0x22u);
    }

    v51 = *(a1 + 40);
    v52 = [NSError alloc];
    v33 = [NSString stringWithUTF8String:"nfcd"];
    v53 = v39;
    v102[0] = NSLocalizedDescriptionKey;
    if (v39 >= 0x4C)
    {
      v54 = 76;
    }

    else
    {
      v54 = v39;
    }

    v34 = [NSString stringWithUTF8String:(&off_1003193B0)[v54]];
    v103[0] = v34;
    v103[1] = &off_1003321F0;
    v102[1] = @"Line";
    v102[2] = @"Method";
    v35 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v103[2] = v35;
    v102[3] = NSDebugDescriptionErrorKey;
    v36 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 106];
    v103[3] = v36;
    v55 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:4];
    v56 = [v52 initWithDomain:v33 code:v53 userInfo:v55];
    (*(v51 + 16))(v51, 0, v56);

LABEL_24:
LABEL_25:

    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v17 = v16;
    v18 = object_getClass(*(a1 + 32));
    v19 = class_isMetaClass(v18);
    v20 = object_getClassName(*(a1 + 32));
    v21 = sel_getName(*(a1 + 48));
    v22 = [*(a1 + 32) sessionUID];
    v23 = 45;
    if (v19)
    {
      v23 = 43;
    }

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 101, v22);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v24 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v25))
    {
      v26 = 43;
    }

    else
    {
      v26 = 45;
    }

    v27 = object_getClassName(*(a1 + 32));
    v28 = sel_getName(*(a1 + 48));
    v29 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v89 = v26;
    v90 = 2082;
    v91 = v27;
    v92 = 2082;
    v93 = v28;
    v94 = 1024;
    v95 = 101;
    v96 = 2114;
    v97 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 40);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v104[0] = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v105[0] = v33;
    v105[1] = &off_1003321D8;
    v104[1] = @"Line";
    v104[2] = @"Method";
    v34 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v105[2] = v34;
    v104[3] = NSDebugDescriptionErrorKey;
    v35 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 101];
    v105[3] = v35;
    v36 = [NSDictionary dictionaryWithObjects:v105 forKeys:v104 count:4];
    v37 = [v31 initWithDomain:v32 code:54 userInfo:v36];
    (*(v30 + 16))(v30, 0, v37);

    goto LABEL_24;
  }
}

id sub_10013DC5C(void *a1)
{
  v1 = a1;
  v2 = [NSError alloc];
  v3 = [[NSString alloc] initWithFormat:@"NFTrust Internal Error : '%@'", v1, NSLocalizedDescriptionKey];

  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [v2 initWithDomain:@"Trust" code:0 userInfo:v4];

  return v5;
}

id sub_10013DD60()
{
  v0 = [NSError alloc];
  v5 = NSLocalizedDescriptionKey;
  v1 = [[NSString alloc] initWithFormat:@"NFTrust Need Refresh"];
  v6 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = [v0 initWithDomain:@"Trust" code:1 userInfo:v2];

  return v3;
}

id sub_10013DE50()
{
  v0 = [NSError alloc];
  v5 = NSLocalizedDescriptionKey;
  v1 = [[NSString alloc] initWithFormat:@"NFTrust database error"];
  v6 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = [v0 initWithDomain:@"Trust" code:7 userInfo:v2];

  return v3;
}

id sub_10013DF40()
{
  v0 = [NSError alloc];
  v5 = NSLocalizedDescriptionKey;
  v1 = [[NSString alloc] initWithFormat:@"Operation requires LocalValidation"];
  v6 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = [v0 initWithDomain:@"Trust" code:4 userInfo:v2];

  return v3;
}

id sub_10013E030(void *a1)
{
  v1 = a1;
  v2 = [NSError alloc];
  v3 = [[NSString alloc] initWithFormat:@"No space left in the instance to %@", v1, NSLocalizedDescriptionKey];

  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [v2 initWithDomain:@"Trust" code:6 userInfo:v4];

  return v5;
}

id sub_10013E134(void *a1)
{
  v1 = a1;
  v2 = [NSError alloc];
  v3 = [[NSString alloc] initWithFormat:@"Key with Identifier '%@' not found", v1, NSLocalizedDescriptionKey];

  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [v2 initWithDomain:@"Trust" code:2 userInfo:v4];

  return v5;
}

id sub_10013E238(void *a1)
{
  v1 = a1;
  v2 = [NSError alloc];
  v3 = [[NSString alloc] initWithFormat:@"Key with Identifier '%@' already exists", v1, NSLocalizedDescriptionKey];

  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [v2 initWithDomain:@"Trust" code:3 userInfo:v4];

  return v5;
}

id sub_10013E33C(void *a1)
{
  v1 = a1;
  v2 = [NSError alloc];
  v3 = [[NSString alloc] initWithFormat:@"Invalid Parameters : '%@'", v1, NSLocalizedDescriptionKey];

  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [v2 initWithDomain:@"Trust" code:5 userInfo:v4];

  return v5;
}

void sub_10013E494(id a1)
{
  v19 = [NSSet alloc];
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v19 initWithObjects:{v18, v17, v16, v15, v14, v13, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = qword_10035DA10;
  qword_10035DA10 = v11;

  _objc_release_x1(v11, v12);
}

void sub_100144CF4(uint64_t a1)
{
  v2 = +[_NFHardwareManager sharedHardwareManager];
  if (sub_100003384(v2) != 2)
  {
    v5 = *(a1 + 40);
    v6 = [NSError alloc];
    v7 = [NSString stringWithUTF8String:"nfcd"];
    v176[0] = NSLocalizedDescriptionKey;
    v8 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v177[0] = v8;
    v177[1] = &off_100332298;
    v176[1] = @"Line";
    v176[2] = @"Method";
    v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v177[2] = v9;
    v176[3] = NSDebugDescriptionErrorKey;
    v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 94];
    v177[3] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v177 forKeys:v176 count:4];
    v12 = v6;
    v13 = v7;
    v14 = 58;
LABEL_7:
    v16 = [v12 initWithDomain:v13 code:v14 userInfo:v11];
    (*(v5 + 16))(v5, v16, 0);

    goto LABEL_8;
  }

  v3 = [v2 controllerInfo];
  v4 = [v3 hasLPEMSupport];

  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 40);
    v15 = [NSError alloc];
    v7 = [NSString stringWithUTF8String:"nfcd"];
    v174[0] = NSLocalizedDescriptionKey;
    v8 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v175[0] = v8;
    v175[1] = &off_1003322B0;
    v174[1] = @"Line";
    v174[2] = @"Method";
    v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v175[2] = v9;
    v174[3] = NSDebugDescriptionErrorKey;
    v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 99];
    v175[3] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v175 forKeys:v174 count:4];
    v12 = v15;
    v13 = v7;
    v14 = 14;
    goto LABEL_7;
  }

  if (byte_10035DA18 == 1)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_8;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v18 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v22 = 45;
    if (isMetaClass)
    {
      v22 = 43;
    }

    v18(6, "%c[%{public}s %{public}s]:%i Querying bluetooth log", v22, ClassName, Name, 109);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v24))
    {
      v25 = 43;
    }

    else
    {
      v25 = 45;
    }

    v26 = object_getClassName(*(a1 + 32));
    v27 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v163 = v25;
    v164 = 2082;
    v165 = v26;
    v166 = 2082;
    v167 = v27;
    v168 = 1024;
    v169 = 109;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Querying bluetooth log", buf, 0x22u);
  }

  if (([*(a1 + 32) _dumpLPEMAppletLogs] & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v55 = NFLogGetLogger();
    if (v55)
    {
      v56 = v55;
      v57 = object_getClass(*(a1 + 32));
      v58 = class_isMetaClass(v57);
      v59 = object_getClassName(*(a1 + 32));
      v145 = sel_getName(*(a1 + 48));
      v60 = 45;
      if (v58)
      {
        v60 = 43;
      }

      v56(3, "%c[%{public}s %{public}s]:%i Failed to query log", v60, v59, v145, 111);
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
      v65 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v163 = v63;
      v164 = 2082;
      v165 = v64;
      v166 = 2082;
      v167 = v65;
      v168 = 1024;
      v169 = 111;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query log", buf, 0x22u);
    }

    v5 = *(a1 + 40);
    v66 = [NSError alloc];
    v7 = [NSString stringWithUTF8String:"nfcd"];
    v172[0] = NSLocalizedDescriptionKey;
    v8 = [NSString stringWithUTF8String:"Unknown Error"];
    v173[0] = v8;
    v173[1] = &off_1003322C8;
    v172[1] = @"Line";
    v172[2] = @"Method";
    v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v173[2] = v9;
    v172[3] = NSDebugDescriptionErrorKey;
    v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 112];
    v173[3] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v173 forKeys:v172 count:4];
    v12 = v66;
    v13 = v7;
    v14 = 6;
    goto LABEL_7;
  }

  v153 = NSHomeDirectory();
  v28 = [v153 stringByAppendingFormat:@"/Library/Logs/nfcd_lpem.bin"];
  v29 = [NSURL fileURLWithPath:v28];

  if (!v29)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v67 = NFLogGetLogger();
    if (v67)
    {
      v68 = v67;
      v69 = object_getClass(*(a1 + 32));
      v70 = class_isMetaClass(v69);
      v71 = object_getClassName(*(a1 + 32));
      v146 = sel_getName(*(a1 + 48));
      v72 = 45;
      if (v70)
      {
        v72 = 43;
      }

      v68(3, "%c[%{public}s %{public}s]:%i bluetoothLog not found", v72, v71, v146, 156);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v73 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v74 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v74))
      {
        v75 = 43;
      }

      else
      {
        v75 = 45;
      }

      v76 = object_getClassName(*(a1 + 32));
      v77 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v163 = v75;
      v164 = 2082;
      v165 = v76;
      v166 = 2082;
      v167 = v77;
      v168 = 1024;
      v169 = 156;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i bluetoothLog not found", buf, 0x22u);
    }

    v78 = [NSError alloc];
    v31 = [NSString stringWithUTF8String:"nfcd"];
    v160 = NSLocalizedDescriptionKey;
    v50 = [NSString stringWithUTF8String:"Not found"];
    v161 = v50;
    v79 = [NSDictionary dictionaryWithObjects:&v161 forKeys:&v160 count:1];
    v44 = [v78 initWithDomain:v31 code:65 userInfo:v79];

    v42 = 0;
    goto LABEL_107;
  }

  v159 = 0;
  v30 = [v29 checkResourceIsReachableAndReturnError:&v159];
  v31 = v159;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v32 = NFLogGetLogger();
  if (v32)
  {
    v33 = v32;
    v34 = object_getClass(*(a1 + 32));
    v35 = class_isMetaClass(v34);
    v139 = object_getClassName(*(a1 + 32));
    v143 = sel_getName(*(a1 + 48));
    v36 = 45;
    if (v35)
    {
      v36 = 43;
    }

    v33(6, "%c[%{public}s %{public}s]:%i bluetoothLogURL present = %d", v36, v139, v143, 125, v30);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v37 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
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
    v41 = sel_getName(*(a1 + 48));
    *buf = 67110146;
    v163 = v39;
    v164 = 2082;
    v165 = v40;
    v166 = 2082;
    v167 = v41;
    v168 = 1024;
    v169 = 125;
    v170 = 1024;
    LODWORD(v171) = v30;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i bluetoothLogURL present = %d", buf, 0x28u);
  }

  if (v30)
  {
    v158 = 0;
    v42 = [[NSDictionary alloc] initWithContentsOfURL:v29 error:&v158];
    v43 = v158;
    if (v43)
    {
      v44 = v43;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v45 = NFLogGetLogger();
      if (v45)
      {
        v46 = v45;
        v47 = object_getClass(*(a1 + 32));
        v48 = class_isMetaClass(v47);
        v140 = object_getClassName(*(a1 + 32));
        v144 = sel_getName(*(a1 + 48));
        v49 = 45;
        if (v48)
        {
          v49 = 43;
        }

        v46(6, "%c[%{public}s %{public}s]:%i FileError: %@", v49, v140, v144, 129, v44);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v51))
        {
          v52 = 43;
        }

        else
        {
          v52 = 45;
        }

        v53 = object_getClassName(*(a1 + 32));
        v54 = sel_getName(*(a1 + 48));
        *buf = 67110146;
        v163 = v52;
        v164 = 2082;
        v165 = v53;
        v166 = 2082;
        v167 = v54;
        v168 = 1024;
        v169 = 129;
        v170 = 2112;
        v171 = v44;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i FileError: %@", buf, 0x2Cu);
      }

      goto LABEL_107;
    }

    byte_10035DA18 = 1;
    v89 = [v42 NF_numberForKey:@"retrieved"];
    v50 = v89;
    if (v89 && [v89 BOOLValue])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v90 = NFLogGetLogger();
      if (v90)
      {
        v91 = v90;
        v92 = object_getClass(*(a1 + 32));
        v93 = class_isMetaClass(v92);
        v94 = object_getClassName(*(a1 + 32));
        v148 = sel_getName(*(a1 + 48));
        v95 = 45;
        if (v93)
        {
          v95 = 43;
        }

        v91(6, "%c[%{public}s %{public}s]:%i Log file already retrieved", v95, v94, v148, 136);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v96 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        v97 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v97))
        {
          v98 = 43;
        }

        else
        {
          v98 = 45;
        }

        v99 = object_getClassName(*(a1 + 32));
        v100 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v163 = v98;
        v164 = 2082;
        v165 = v99;
        v166 = 2082;
        v167 = v100;
        v168 = 1024;
        v169 = 136;
        _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Log file already retrieved", buf, 0x22u);
      }

      v101 = v42;
      v42 = 0;
    }

    else
    {
      if (*(a1 + 56) != 1)
      {
LABEL_106:
        v44 = 0;
LABEL_107:

        goto LABEL_108;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v102 = NFLogGetLogger();
      if (v102)
      {
        v103 = v102;
        v104 = object_getClass(*(a1 + 32));
        v105 = class_isMetaClass(v104);
        v106 = object_getClassName(*(a1 + 32));
        v149 = sel_getName(*(a1 + 48));
        v107 = 45;
        if (v105)
        {
          v107 = 43;
        }

        v103(6, "%c[%{public}s %{public}s]:%i Updating log file as retrieved", v107, v106, v149, 141);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v108 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        v109 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v109))
        {
          v110 = 43;
        }

        else
        {
          v110 = 45;
        }

        v111 = object_getClassName(*(a1 + 32));
        v112 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v163 = v110;
        v164 = 2082;
        v165 = v111;
        v166 = 2082;
        v167 = v112;
        v168 = 1024;
        v169 = 141;
        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Updating log file as retrieved", buf, 0x22u);
      }

      v113 = [NSString alloc];
      v114 = NSHomeDirectory();
      v101 = [v113 initWithFormat:@"%@%@", v114, @"/Library/Logs/nfcd_lpem.bin"];

      v96 = [v42 mutableCopy];
      [v96 setObject:&__kCFBooleanTrue forKeyedSubscript:@"retrieved"];
      if (([v96 writeToFile:v101 atomically:0]& 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v115 = NFLogGetLogger();
        if (v115)
        {
          v116 = v115;
          v117 = object_getClass(*(a1 + 32));
          v118 = class_isMetaClass(v117);
          v151 = object_getClassName(*(a1 + 32));
          v119 = sel_getName(*(a1 + 48));
          v120 = 45;
          if (v118)
          {
            v120 = 43;
          }

          v116(3, "%c[%{public}s %{public}s]:%i Failed to update LPEM log as read: %{public}@", v120, v151, v119, 146, v101);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v121 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
        {
          v122 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v122))
          {
            v123 = 43;
          }

          else
          {
            v123 = 45;
          }

          v152 = object_getClassName(*(a1 + 32));
          v124 = sel_getName(*(a1 + 48));
          *buf = 67110146;
          v163 = v123;
          v164 = 2082;
          v165 = v152;
          v166 = 2082;
          v167 = v124;
          v168 = 1024;
          v169 = 146;
          v170 = 2114;
          v171 = v101;
          _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to update LPEM log as read: %{public}@", buf, 0x2Cu);
        }
      }
    }

    goto LABEL_106;
  }

  if (v31)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v80 = NFLogGetLogger();
    if (v80)
    {
      v81 = v80;
      v82 = object_getClass(*(a1 + 32));
      v83 = class_isMetaClass(v82);
      v141 = object_getClassName(*(a1 + 32));
      v147 = sel_getName(*(a1 + 48));
      v84 = 45;
      if (v83)
      {
        v84 = 43;
      }

      v81(3, "%c[%{public}s %{public}s]:%i Failed file check: %@", v84, v141, v147, 152, v31);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v50 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v85 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v85))
      {
        v86 = 43;
      }

      else
      {
        v86 = 45;
      }

      v87 = object_getClassName(*(a1 + 32));
      v88 = sel_getName(*(a1 + 48));
      *buf = 67110146;
      v163 = v86;
      v164 = 2082;
      v165 = v87;
      v166 = 2082;
      v167 = v88;
      v168 = 1024;
      v169 = 152;
      v170 = 2112;
      v171 = v31;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed file check: %@", buf, 0x2Cu);
    }

    v42 = 0;
    goto LABEL_106;
  }

  v42 = 0;
  v44 = 0;
LABEL_108:

  if (*(a1 + 56) == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v125 = NFLogGetLogger();
    if (v125)
    {
      v126 = v125;
      v127 = object_getClass(*(a1 + 32));
      v128 = class_isMetaClass(v127);
      v129 = object_getClassName(*(a1 + 32));
      v150 = sel_getName(*(a1 + 48));
      v130 = 45;
      if (v128)
      {
        v130 = 43;
      }

      v126(6, "%c[%{public}s %{public}s]:%i Clearing log data", v130, v129, v150, 161);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v131 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
    {
      v132 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v132))
      {
        v133 = 43;
      }

      else
      {
        v133 = 45;
      }

      v134 = object_getClassName(*(a1 + 32));
      v135 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v163 = v133;
      v164 = 2082;
      v165 = v134;
      v166 = 2082;
      v167 = v135;
      v168 = 1024;
      v169 = 161;
      _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Clearing log data", buf, 0x22u);
    }

    v154[0] = _NSConcreteStackBlock;
    v154[1] = 3221225472;
    v154[2] = sub_100145F84;
    v154[3] = &unk_100319640;
    v136 = v2;
    v137 = *(a1 + 32);
    v155 = v136;
    v156 = v137;
    v157 = *(a1 + 48);
    v138 = sub_10004BF60(NFRoutingConfig, 2);
    sub_1000E6BE4(v136, v154, @"erase bt log", v138);
  }

  (*(*(a1 + 40) + 16))();

LABEL_8:
}

uint64_t sub_100145F84(uint64_t a1)
{
  v2 = [*(a1 + 32) secureElementWrapper];
  v3 = sub_10009B324(v2, 4);

  if (!v3)
  {
    v4 = [*(a1 + 32) secureElementWrapper];
    v3 = sub_10009B324(v4, 5);

    if (!v3)
    {
      return 1;
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(*(a1 + 40));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 40));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v6(3, "%c[%{public}s %{public}s]:%i Failed to erase BT logs %@", v9, ClassName, Name, 172, v3);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 40));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 40));
    v14 = sel_getName(*(a1 + 48));
    *buf = 67110146;
    v19 = v12;
    v20 = 2082;
    v21 = v13;
    v22 = 2082;
    v23 = v14;
    v24 = 1024;
    v25 = 172;
    v26 = 2112;
    v27 = v3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to erase BT logs %@", buf, 0x2Cu);
  }

  return 0;
}

void sub_100147014(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    if (a2[1])
    {
      v5 = [[NSData alloc] initWithBytes:*a2 length:a2[1]];
    }

    else
    {
      v5 = 0;
    }

    NFDataRelease();
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_100147314(void *a1, unint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  if (a1)
  {
    if (a2 >= 4)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("assert:requestor:updatedVal:");
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v9(3, "%c[%{public}s %{public}s]:%i Invalid type: %lu", v12, ClassName, Name, 37, a2);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
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

        *buf = 67110146;
        v26 = v15;
        v27 = 2082;
        v28 = object_getClassName(a1);
        v29 = 2082;
        v30 = sel_getName("assert:requestor:updatedVal:");
        v31 = 1024;
        v32 = 37;
        v33 = 2048;
        v34 = a2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid type: %lu", buf, 0x2Cu);
      }

      goto LABEL_13;
    }

    v17 = a1[1];
    v18 = [NSNumber numberWithUnsignedInteger:a2];
    v19 = [v17 objectForKeyedSubscript:v18];

    if (v19)
    {
      [v19 addObject:v7];
      if (!a4)
      {
LABEL_17:

        v16 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      v19 = [[NSMutableSet alloc] initWithObjects:{v7, 0}];
      v21 = a1[1];
      v22 = [NSNumber numberWithUnsignedInteger:a2];
      [v21 setObject:v19 forKeyedSubscript:v22];

      if (!a4)
      {
        goto LABEL_17;
      }
    }

    *a4 = [v19 count];
    goto LABEL_17;
  }

LABEL_13:
  v16 = 0;
LABEL_18:

  return v16;
}

uint64_t sub_100147588(void *a1, unint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  if (!a1)
  {
    v18 = 0;
    goto LABEL_39;
  }

  if (a2 < 4)
  {
    v16 = a1[1];
    v17 = [NSNumber numberWithUnsignedInteger:a2];
    v13 = [v16 objectForKeyedSubscript:v17];

    if (v13)
    {
      if (([v13 containsObject:v7]& 1) != 0)
      {
        [v13 removeObject:v7];
        if (a4)
        {
          *a4 = [v13 count];
        }

        v18 = 1;
        goto LABEL_38;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v28 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("deassert:requestor:updatedVal:");
        v33 = [v7 debugDescription];
        v34 = 45;
        if (isMetaClass)
        {
          v34 = 43;
        }

        v28(3, "%c[%{public}s %{public}s]:%i Assertion type %lu with requestor %{public}@ does not exist", v34, ClassName, Name, 70, a2, v33);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v35 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = object_getClass(a1);
        if (class_isMetaClass(v36))
        {
          v37 = 43;
        }

        else
        {
          v37 = 45;
        }

        v38 = object_getClassName(a1);
        v39 = sel_getName("deassert:requestor:updatedVal:");
        v40 = [v7 debugDescription];
        *buf = 67110402;
        v47 = v37;
        v48 = 2082;
        v49 = v38;
        v50 = 2082;
        v51 = v39;
        v52 = 1024;
        v53 = 70;
        v54 = 2048;
        v55 = a2;
        v56 = 2114;
        v57 = v40;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Assertion type %lu with requestor %{public}@ does not exist", buf, 0x36u);
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v19 = NFLogGetLogger();
      if (v19)
      {
        v20 = v19;
        v21 = object_getClass(a1);
        v22 = class_isMetaClass(v21);
        v43 = object_getClassName(a1);
        v45 = sel_getName("deassert:requestor:updatedVal:");
        v23 = 45;
        if (v22)
        {
          v23 = 43;
        }

        v20(3, "%c[%{public}s %{public}s]:%i Assertion type %lu does not exist", v23, v43, v45, 65, a2);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = object_getClass(a1);
        if (class_isMetaClass(v25))
        {
          v26 = 43;
        }

        else
        {
          v26 = 45;
        }

        *buf = 67110146;
        v47 = v26;
        v48 = 2082;
        v49 = object_getClassName(a1);
        v50 = 2082;
        v51 = sel_getName("deassert:requestor:updatedVal:");
        v52 = 1024;
        v53 = 65;
        v54 = 2048;
        v55 = a2;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Assertion type %lu does not exist", buf, 0x2Cu);
      }

      v13 = 0;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFLogGetLogger();
    if (v8)
    {
      v9 = v8;
      v10 = object_getClass(a1);
      v11 = class_isMetaClass(v10);
      v42 = object_getClassName(a1);
      v44 = sel_getName("deassert:requestor:updatedVal:");
      v12 = 45;
      if (v11)
      {
        v12 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i Invalid type: %lu", v12, v42, v44, 59, a2);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
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

      *buf = 67110146;
      v47 = v15;
      v48 = 2082;
      v49 = object_getClassName(a1);
      v50 = 2082;
      v51 = sel_getName("deassert:requestor:updatedVal:");
      v52 = 1024;
      v53 = 59;
      v54 = 2048;
      v55 = a2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid type: %lu", buf, 0x2Cu);
    }
  }

  v18 = 0;
LABEL_38:

LABEL_39:
  return v18;
}

void *sub_100147A68(void *result, unint64_t a2, void *a3)
{
  if (result)
  {
    v4 = result;
    if (a2 < 4)
    {
      v14 = result[1];
      v15 = [NSNumber numberWithUnsignedInteger:a2];
      v16 = [v14 objectForKeyedSubscript:v15];
      v17 = [v16 count];

      if (a3)
      {
        *a3 = v17;
      }

      return (v17 != 0);
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(v4);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v4);
        Name = sel_getName("isAsserted:currentCount:");
        v9 = 45;
        if (isMetaClass)
        {
          v9 = 43;
        }

        v6(3, "%c[%{public}s %{public}s]:%i Invalid type: %lu", v9, ClassName, Name, 84, a2);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = object_getClass(v4);
        if (class_isMetaClass(v11))
        {
          v12 = 43;
        }

        else
        {
          v12 = 45;
        }

        *buf = 67110146;
        v21 = v12;
        v22 = 2082;
        v23 = object_getClassName(v4);
        v24 = 2082;
        v25 = sel_getName("isAsserted:currentCount:");
        v26 = 1024;
        v27 = 84;
        v28 = 2048;
        v29 = a2;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid type: %lu", buf, 0x2Cu);
      }

      return 0;
    }
  }

  return result;
}

id sub_100147C78(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = [*(a1 + 8) objectForKeyedSubscript:&off_1003322E0];
    if ([v3 count])
    {
      v4 = [v3 description];
      if (v4)
      {
        [v2 setObject:v4 forKeyedSubscript:@"PKForegroundPresentment"];
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = [*(a1 + 8) objectForKeyedSubscript:&off_1003322F8];

    if ([v5 count])
    {
      v6 = [v5 description];

      if (v6)
      {
        [v2 setObject:v6 forKeyedSubscript:@"DefaultAppPresentmentSuppress"];
      }
    }

    else
    {

      v6 = 0;
    }

    v7 = [*(a1 + 8) objectForKeyedSubscript:&off_100332310];

    if ([v7 count])
    {
      v8 = [v7 description];

      if (v8)
      {
        [v2 setObject:v8 forKeyedSubscript:@"FDDefaultAppPresentmentSuppress"];
      }
    }

    else
    {

      v8 = 0;
    }

    v9 = [*(a1 + 8) objectForKeyedSubscript:&off_100332328];

    if ([v9 count])
    {
      v10 = [v9 description];

      if (!v10)
      {
LABEL_18:

        goto LABEL_19;
      }

      [v2 setObject:v10 forKeyedSubscript:@"DropDoubleButtonPressed"];
      v8 = v10;
    }

    goto LABEL_18;
  }

  v2 = 0;
LABEL_19:

  return v2;
}

void sub_1001480B8(id a1)
{
  v3[0] = &off_100332340;
  v3[1] = &off_100332358;
  v4[0] = @"Suica";
  v4[1] = @"ECP1.Access";
  v3[2] = &off_100332370;
  v3[3] = &off_100332388;
  v4[2] = @"GenericA";
  v4[3] = @"ECP2";
  v3[4] = &off_1003323A0;
  v3[5] = &off_1003323B8;
  v4[4] = @"Cathay";
  v4[5] = @"QuickMode";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  v2 = qword_10035DA20;
  qword_10035DA20 = v1;
}

void sub_100148234(id a1)
{
  v3[0] = @"Suica";
  v3[1] = @"ECP1.Access";
  v4[0] = &off_100332340;
  v4[1] = &off_100332358;
  v3[2] = @"GenericA";
  v3[3] = @"ECP2";
  v4[2] = &off_100332370;
  v4[3] = &off_100332388;
  v3[4] = @"Cathay";
  v3[5] = @"QuickMode";
  v4[4] = &off_1003323A0;
  v4[5] = &off_1003323B8;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  v2 = qword_10035DA30;
  qword_10035DA30 = v1;
}

id sub_100148E24(id *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v1[2];
    v3 = [obj countByEnumeratingWithState:&v44 objects:v60 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v45;
      v6 = @"expressEnabled";
      v39 = v1;
      v40 = v2;
      v41 = *v45;
      do
      {
        v7 = 0;
        v42 = v4;
        do
        {
          if (*v45 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v44 + 1) + 8 * v7);
          v9 = [v8 objectForKeyedSubscript:v6];
          v10 = [v9 BOOLValue];

          if (v10)
          {
            v11 = [v8 objectForKeyedSubscript:@"appletIdentifier"];
            v12 = [v8 objectForKeyedSubscript:@"ExpressType"];
            v13 = [NFExpressConfig expressTypeForATLConfigKey:v12];

            v14 = [v2 objectForKeyedSubscript:v11];
            if (v14)
            {
              v15 = v14;
              v16 = [v2 objectForKeyedSubscript:v11];
              v17 = v6;
              v18 = [v16 integerValue];

              v5 = v41;
              v19 = v18 == v13;
              v6 = v17;
              if (!v19)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                Logger = NFLogGetLogger();
                if (Logger)
                {
                  v21 = Logger;
                  Class = object_getClass(v1);
                  isMetaClass = class_isMetaClass(Class);
                  ClassName = object_getClassName(v1);
                  Name = sel_getName("_autoSelectionExpressMap");
                  v26 = [v40 objectForKeyedSubscript:v11];
                  v38 = [v26 integerValue];
                  v19 = !isMetaClass;
                  v5 = v41;
                  v27 = 45;
                  if (!v19)
                  {
                    v27 = 43;
                  }

                  v37 = ClassName;
                  v6 = v17;
                  v21(4, "%c[%{public}s %{public}s]:%i same aid has different express types?! (%ld vs %d)", v27, v37, Name, 302, v38, v13);

                  v1 = v39;
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v28 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  v29 = object_getClass(v1);
                  if (class_isMetaClass(v29))
                  {
                    v30 = 43;
                  }

                  else
                  {
                    v30 = 45;
                  }

                  v31 = object_getClassName(v1);
                  v32 = sel_getName("_autoSelectionExpressMap");
                  v33 = [v40 objectForKeyedSubscript:v11];
                  v34 = [v33 integerValue];
                  *buf = 67110402;
                  v49 = v30;
                  v6 = v17;
                  v50 = 2082;
                  v51 = v31;
                  v52 = 2082;
                  v53 = v32;
                  v1 = v39;
                  v54 = 1024;
                  v55 = 302;
                  v56 = 2048;
                  v57 = v34;
                  v58 = 1024;
                  v59 = v13;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i same aid has different express types?! (%ld vs %d)", buf, 0x32u);

                  v5 = v41;
                }

                v2 = v40;
              }
            }

            v35 = [NSNumber numberWithUnsignedChar:v13];
            [v2 setObject:v35 forKeyedSubscript:v11];

            v4 = v42;
          }

          v7 = v7 + 1;
        }

        while (v4 != v7);
        v4 = [obj countByEnumeratingWithState:&v44 objects:v60 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10014A39C(void *a1, void *a2, void *a3, void *a4, unsigned int a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v84 = a6;
  if (a1)
  {
    v13 = [a1 getSecureElementWrapperAndSetRouting];
    v14 = [NSData NF_dataWithHexString:v11];
    v15 = sub_100257F24(v13, v14, 0);

    v87 = a1;
    if (v15)
    {
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v16 = v10;
      v85 = [v16 countByEnumeratingWithState:&v92 objects:v108 count:16];
      if (!v85)
      {
        goto LABEL_59;
      }

      v79 = *v93;
      v81 = v15;
      v82 = v12;
      v80 = v16;
      while (1)
      {
        v17 = 0;
        do
        {
          if (*v93 != v79)
          {
            objc_enumerationMutation(v16);
          }

          v86 = v17;
          v18 = *(*(&v92 + 1) + 8 * v17);
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v19 = v84;
          v20 = [v19 countByEnumeratingWithState:&v88 objects:v107 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v89;
            do
            {
              v23 = 0;
              do
              {
                if (*v89 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v88 + 1) + 8 * v23);
                v25 = [v24 objectForKeyedSubscript:@"appletIdentifier"];
                if ([v11 caseInsensitiveCompare:v25])
                {
                  goto LABEL_14;
                }

                v26 = [v24 objectForKeyedSubscript:@"keyIdentifier"];
                v27 = [v18 caseInsensitiveCompare:v26];

                if (!v27)
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  Logger = NFLogGetLogger();
                  if (Logger)
                  {
                    v29 = Logger;
                    Class = object_getClass(v87);
                    isMetaClass = class_isMetaClass(Class);
                    ClassName = object_getClassName(v87);
                    Name = sel_getName("_addKeysFromArray:forAid:expressInfo:supportsUWB:intoPassArray:");
                    v33 = 45;
                    if (isMetaClass)
                    {
                      v33 = 43;
                    }

                    v29(6, "%c[%{public}s %{public}s]:%i aid:%{public}@ key:%{public}@ is already in the config", v33, ClassName, Name, 385, v11, v18);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v25 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                  {
                    v34 = object_getClass(v87);
                    if (class_isMetaClass(v34))
                    {
                      v35 = 43;
                    }

                    else
                    {
                      v35 = 45;
                    }

                    v36 = object_getClassName(v87);
                    v37 = sel_getName("_addKeysFromArray:forAid:expressInfo:supportsUWB:intoPassArray:");
                    *buf = 67110402;
                    *&buf[4] = v35;
                    v97 = 2082;
                    v98 = v36;
                    v99 = 2082;
                    v100 = v37;
                    v101 = 1024;
                    v102 = 385;
                    v103 = 2114;
                    v104 = v11;
                    v105 = 2114;
                    v106 = v18;
                    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i aid:%{public}@ key:%{public}@ is already in the config", buf, 0x36u);
                  }

LABEL_14:
                }

                v23 = v23 + 1;
              }

              while (v21 != v23);
              v38 = [v19 countByEnumeratingWithState:&v88 objects:v107 count:16];
              v21 = v38;
            }

            while (v38);
          }

          v39 = objc_opt_new();
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v40 = NFLogGetLogger();
          if (v40)
          {
            v41 = v40;
            v42 = object_getClass(v87);
            v43 = class_isMetaClass(v42);
            v44 = object_getClassName(v87);
            v77 = sel_getName("_addKeysFromArray:forAid:expressInfo:supportsUWB:intoPassArray:");
            v45 = 45;
            if (v43)
            {
              v45 = 43;
            }

            v41(6, "%c[%{public}s %{public}s]:%i new pass for aid:%{public}@ key:%{public}@", v45, v44, v77, 391, v11, v18);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v46 = NFSharedLogGetLogger();
          v12 = v82;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = object_getClass(v87);
            if (class_isMetaClass(v47))
            {
              v48 = 43;
            }

            else
            {
              v48 = 45;
            }

            v49 = object_getClassName(v87);
            v50 = sel_getName("_addKeysFromArray:forAid:expressInfo:supportsUWB:intoPassArray:");
            *buf = 67110402;
            *&buf[4] = v48;
            v97 = 2082;
            v98 = v49;
            v99 = 2082;
            v100 = v50;
            v101 = 1024;
            v102 = 391;
            v103 = 2114;
            v104 = v11;
            v105 = 2114;
            v106 = v18;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i new pass for aid:%{public}@ key:%{public}@", buf, 0x36u);
          }

          v51 = [v82 objectForKeyedSubscript:@"ExpressType"];
          [v39 setObject:v51 forKeyedSubscript:@"ExpressType"];

          [v39 setObject:v11 forKeyedSubscript:@"appletIdentifier"];
          [v39 setObject:v18 forKeyedSubscript:@"keyIdentifier"];
          [v39 setObject:&__kCFBooleanTrue forKeyedSubscript:@"expressEnabled"];
          v52 = [NSNumber numberWithBool:a5];
          [v39 setObject:v52 forKeyedSubscript:@"UWBExpressEnabled"];

          *buf = arc4random();
          *buf = arc4random() | (*buf << 32);
          v53 = [[NSData alloc] initWithBytes:buf length:8];
          v54 = [v53 NF_asHexString];
          [v39 setObject:v54 forKeyedSubscript:@"passUniqueID"];

          v55 = [v82 objectForKeyedSubscript:@"ECP2Info"];

          if (v55)
          {
            v56 = [v82 objectForKeyedSubscript:@"ECP2Info"];
            [v39 setObject:v56 forKeyedSubscript:@"ECP2Info"];
          }

          v15 = v81;
          v57 = [v81 moduleIdentifier];
          [v39 setObject:v57 forKeyedSubscript:@"moduleIdentifier"];

          v58 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v81 groupActivationStyle]);
          [v39 setObject:v58 forKeyedSubscript:@"groupActivationStyle"];

          v59 = [v81 groupHeadID];

          if (v59)
          {
            v60 = [v81 groupHeadID];
            [v39 setObject:v60 forKeyedSubscript:@"groupHead"];
          }

          v61 = [v81 groupMemberIDs];
          v62 = [v61 count];

          if (v62)
          {
            v63 = [v81 groupMemberIDs];
            [v39 setObject:v63 forKeyedSubscript:@"groupMembers"];
          }

          v64 = [v82 objectForKeyedSubscript:@"aliroGroupResolvingKeys"];

          if (v64)
          {
            v65 = [v82 objectForKeyedSubscript:@"aliroGroupResolvingKeys"];
            [v39 setObject:v65 forKeyedSubscript:@"aliroGroupResolvingKeys"];
          }

          v66 = [v82 objectForKeyedSubscript:@"associatedReaderIdentifiers"];

          if (v66)
          {
            v67 = [v82 objectForKeyedSubscript:@"associatedReaderIdentifiers"];
            [v39 setObject:v67 forKeyedSubscript:@"associatedReaderIdentifiers"];
          }

          [v19 addObject:v39];

          v17 = v86 + 1;
          v16 = v80;
        }

        while ((v86 + 1) != v85);
        v85 = [v80 countByEnumeratingWithState:&v92 objects:v108 count:16];
        if (!v85)
        {
          goto LABEL_59;
        }
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v68 = NFLogGetLogger();
    if (v68)
    {
      v69 = v68;
      v70 = object_getClass(a1);
      v71 = class_isMetaClass(v70);
      v75 = object_getClassName(a1);
      v78 = sel_getName("_addKeysFromArray:forAid:expressInfo:supportsUWB:intoPassArray:");
      v72 = 45;
      if (v71)
      {
        v72 = 43;
      }

      v69(3, "%c[%{public}s %{public}s]:%i no applet for AID: %{public}@ - skip", v72, v75, v78, 376, v11);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v73 = object_getClass(v87);
      if (class_isMetaClass(v73))
      {
        v74 = 43;
      }

      else
      {
        v74 = 45;
      }

      *buf = 67110146;
      *&buf[4] = v74;
      v97 = 2082;
      v98 = object_getClassName(v87);
      v99 = 2082;
      v100 = sel_getName("_addKeysFromArray:forAid:expressInfo:supportsUWB:intoPassArray:");
      v101 = 1024;
      v102 = 376;
      v103 = 2114;
      v104 = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i no applet for AID: %{public}@ - skip", buf, 0x2Cu);
    }

LABEL_59:
  }
}

void sub_10014ADD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"keyIdentifiersUWB"];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v6 objectForKeyedSubscript:@"keyIdentifiersUWB"];
    sub_10014A39C(v8, v9, v5, v6, 1u, *(a1 + 40));
  }

  v10 = [v6 objectForKeyedSubscript:@"keyIdentifiers"];

  if (v10)
  {
    v11 = [v6 objectForKeyedSubscript:@"keyIdentifiers"];
    v12 = [v11 mutableCopy];

    v13 = [v6 objectForKeyedSubscript:@"keyIdentifiersUWB"];

    if (v13)
    {
      v14 = [v6 objectForKeyedSubscript:@"keyIdentifiersUWB"];
      [v12 removeObjectsInArray:v14];
    }

    sub_10014A39C(*(a1 + 32), v12, v5, v6, 0, *(a1 + 40));
  }

  v15 = [v6 objectForKeyedSubscript:@"keyIdentifiersUWB"];
  if (v15)
  {
  }

  else
  {
    v16 = [v6 objectForKeyedSubscript:@"keyIdentifiers"];

    if (!v16)
    {
      v17 = objc_opt_new();
      v18 = [v6 objectForKeyedSubscript:@"ExpressType"];
      [v17 setObject:v18 forKeyedSubscript:@"ExpressType"];

      [v17 setObject:v5 forKeyedSubscript:@"appletIdentifier"];
      [v17 setObject:&__kCFBooleanTrue forKeyedSubscript:@"expressEnabled"];
      v19 = arc4random();
      v48 = arc4random() | (v19 << 32);
      v20 = [[NSData alloc] initWithBytes:&v48 length:8];
      v21 = [v20 NF_asHexString];
      [v17 setObject:v21 forKeyedSubscript:@"passUniqueID"];

      v22 = [v6 objectForKeyedSubscript:@"inSessionOnly"];

      if (v22)
      {
        v23 = [v6 objectForKeyedSubscript:@"inSessionOnly"];
        [v17 setObject:v23 forKeyedSubscript:@"inSessionOnly"];
      }

      v24 = [v6 objectForKeyedSubscript:@"ECP2Info"];

      if (v24)
      {
        v25 = [v6 objectForKeyedSubscript:@"ECP2Info"];
        [v17 setObject:v25 forKeyedSubscript:@"ECP2Info"];
      }

      v26 = [*(a1 + 32) getSecureElementWrapperAndSetRouting];
      v27 = [NSData NF_dataWithHexString:v5];
      v28 = sub_100257F24(v26, v27, 0);

      if (v28)
      {
        v29 = [v28 moduleIdentifier];
        [v17 setObject:v29 forKeyedSubscript:@"moduleIdentifier"];

        v30 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v28 groupActivationStyle]);
        [v17 setObject:v30 forKeyedSubscript:@"groupActivationStyle"];

        v31 = [v28 groupHeadID];

        if (v31)
        {
          v32 = [v28 groupHeadID];
          [v17 setObject:v32 forKeyedSubscript:@"groupHead"];
        }

        v33 = [v28 groupMemberIDs];
        v34 = [v33 count];

        if (v34)
        {
          v35 = [v28 groupMemberIDs];
          [v17 setObject:v35 forKeyedSubscript:@"groupMembers"];
        }

        [*(a1 + 40) addObject:v17];
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v37 = Logger;
          Class = object_getClass(*(a1 + 32));
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(*(a1 + 32));
          Name = sel_getName(*(a1 + 48));
          v40 = 45;
          if (isMetaClass)
          {
            v40 = 43;
          }

          v37(3, "%c[%{public}s %{public}s]:%i no applet for AID: %{public}@ - skip", v40, ClassName, Name, 464, v5, v48);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v41 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
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
          *buf = 67110146;
          v50 = v43;
          v51 = 2082;
          v52 = v44;
          v53 = 2082;
          v54 = v45;
          v55 = 1024;
          v56 = 464;
          v57 = 2114;
          v58 = v5;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i no applet for AID: %{public}@ - skip", buf, 0x2Cu);
        }
      }
    }
  }
}

void sub_10014BF8C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v5 count])
  {
    v6 = sub_100257F24(*(a1 + 32), v8, 0);
    v7 = [*(a1 + 40) disableExpressForKeys:v5 onApplet:v6];
    if (v7)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
    }
  }
}

void sub_10014E33C(uint64_t a1)
{
  *(*(a1 + 32) + 184) = 1;
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_NFSecureElementReaderSession+handleReaderBurnoutTimer", &unk_1002E8B7A, buf, 2u);
  }

  v3 = +[_NFHardwareManager sharedHardwareManager];
  v4 = sub_10004BF2C();
  v5 = [v3 setRoutingConfig:v4];

  if (v5)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v23 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v27 = 45;
      if (isMetaClass)
      {
        v27 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Failed to reset routing. Critical - exiting", v27, ClassName, Name, 127);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
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
      v32 = sel_getName(*(a1 + 40));
      *buf = 67109890;
      v35 = v30;
      v36 = 2082;
      v37 = v31;
      v38 = 2082;
      v39 = v32;
      v40 = 1024;
      v41 = 127;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to reset routing. Critical - exiting", buf, 0x22u);
    }

    sub_10021D334(*(*(a1 + 32) + 208));
    exit(1);
  }

  v6 = [*(a1 + 32) remoteObject];
  [v6 didReceiveThermalIndication:1];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
  sub_1001AF894(WeakRetained, *(a1 + 32));

  v8 = NFLogGetLogger();
  if (v8)
  {
    v9 = v8;
    v10 = object_getClass(*(a1 + 32));
    v11 = class_isMetaClass(v10);
    v12 = object_getClassName(*(a1 + 32));
    v13 = sel_getName(*(a1 + 40));
    v14 = [*(a1 + 32) clientName];
    v15 = 45;
    if (v11)
    {
      v15 = 43;
    }

    v9(6, "%c[%{public}s %{public}s]:%i NFC Reader mode terminated: %@", v15, v12, v13, 134, v14);
  }

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
    v20 = sel_getName(*(a1 + 40));
    v21 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v35 = v18;
    v36 = 2082;
    v37 = v19;
    v38 = 2082;
    v39 = v20;
    v40 = 1024;
    v41 = 134;
    v42 = 2112;
    v43 = v21;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC Reader mode terminated: %@", buf, 0x2Cu);
  }

  *(*(a1 + 32) + 185) = 0;
}

void sub_10014F198(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 192);
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
    v53 = v10;
    v54 = 2082;
    v55 = v11;
    v56 = 2082;
    v57 = v12;
    v58 = 1024;
    v59 = 192;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v33 = [*(a1 + 32) embeddedSecureElementWrapper];
    v34 = sub_100256130(v33);

    v29 = [*(a1 + 32) selectApplets:*(a1 + 40)];
    if (v29)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v35 = NFLogGetLogger();
      if (v35)
      {
        v36 = v35;
        v37 = object_getClass(*(a1 + 32));
        v38 = class_isMetaClass(v37);
        v39 = object_getClassName(*(a1 + 32));
        v49 = sel_getName(*(a1 + 56));
        v40 = 45;
        if (v38)
        {
          v40 = 43;
        }

        v36(3, "%c[%{public}s %{public}s]:%i Failed to select applets", v40, v39, v49, 199);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v41 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
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
        v45 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v53 = v43;
        v54 = 2082;
        v55 = v44;
        v56 = 2082;
        v57 = v45;
        v58 = 1024;
        v59 = 199;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applets", buf, 0x22u);
      }
    }

    else
    {
      v46 = *(a1 + 32);
      v47 = *(a1 + 40);
      v41 = *(v46 + 176);
      *(v46 + 176) = v47;
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_24;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v13 = NFLogGetLogger();
  if (v13)
  {
    v14 = v13;
    v15 = object_getClass(*(a1 + 32));
    v16 = class_isMetaClass(v15);
    v17 = object_getClassName(*(a1 + 32));
    v18 = sel_getName(*(a1 + 56));
    v19 = [*(a1 + 32) sessionUID];
    v20 = 45;
    if (v16)
    {
      v20 = 43;
    }

    v14(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v20, v17, v18, 193, v19);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v21 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v22))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    v24 = object_getClassName(*(a1 + 32));
    v25 = sel_getName(*(a1 + 56));
    v26 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v53 = v23;
    v54 = 2082;
    v55 = v24;
    v56 = 2082;
    v57 = v25;
    v58 = 1024;
    v59 = 193;
    v60 = 2114;
    v61 = v26;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    v28 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v50 = NSLocalizedDescriptionKey;
    v30 = [NSString stringWithUTF8String:"Session not active"];
    v51 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v32 = [v28 initWithDomain:v29 code:54 userInfo:v31];
    (*(v27 + 16))(v27, v32);

LABEL_24:
  }
}