void sub_10014F794(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 211);
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
    v61 = v10;
    v62 = 2082;
    v63 = v11;
    v64 = 2082;
    v65 = v12;
    v66 = 1024;
    v67 = 211;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v36 = *(*(a1 + 32) + 176);
    if (v36 && [v36 count])
    {
      if (*(*(a1 + 32) + 185))
      {
        v29 = 0;
      }

      else
      {
        v49 = +[_NFHardwareManager sharedHardwareManager];
        v50 = sub_10004BD00();
        v29 = [v49 setRoutingConfig:v50];

        WeakRetained = NFSharedSignpostLog();
        v52 = os_signpost_enabled(WeakRetained);
        if (v29)
        {
          if (v52)
          {
            v53 = [v29 code];
            *buf = 67109120;
            v61 = v53;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, WeakRetained, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_NFSecureElementReaderSession+se_polling", "begin, error.code: %d", buf, 8u);
          }
        }

        else
        {
          if (v52)
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, WeakRetained, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_NFSecureElementReaderSession+se_polling", "begin", buf, 2u);
          }

          *(*(a1 + 32) + 185) = 1;
          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
          sub_1001B0320(WeakRetained, *(a1 + 32));
        }
      }

      (*(*(a1 + 40) + 16))();
      goto LABEL_25;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFLogGetLogger();
    if (v37)
    {
      v38 = v37;
      v39 = object_getClass(*(a1 + 32));
      v40 = class_isMetaClass(v39);
      v41 = object_getClassName(*(a1 + 32));
      v55 = sel_getName(*(a1 + 48));
      v42 = 45;
      if (v40)
      {
        v42 = 43;
      }

      v38(3, "%c[%{public}s %{public}s]:%i Invalid applets", v42, v41, v55, 217);
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
      v61 = v45;
      v62 = 2082;
      v63 = v46;
      v64 = 2082;
      v65 = v47;
      v66 = 1024;
      v67 = 217;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid applets", buf, 0x22u);
    }

    v27 = *(a1 + 40);
    v48 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v56 = NSLocalizedDescriptionKey;
    v30 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v57 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v32 = v48;
    v33 = v29;
    v34 = 10;
LABEL_24:
    v35 = [v32 initWithDomain:v33 code:v34 userInfo:v31];
    (*(v27 + 16))(v27, v35);

LABEL_25:
    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v13 = NFLogGetLogger();
  if (v13)
  {
    v14 = v13;
    v15 = object_getClass(*(a1 + 32));
    v16 = class_isMetaClass(v15);
    v17 = object_getClassName(*(a1 + 32));
    v18 = sel_getName(*(a1 + 48));
    v19 = [*(a1 + 32) sessionUID];
    v20 = 45;
    if (v16)
    {
      v20 = 43;
    }

    v14(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v20, v17, v18, 212, v19);
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
    v25 = sel_getName(*(a1 + 48));
    v26 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v61 = v23;
    v62 = 2082;
    v63 = v24;
    v64 = 2082;
    v65 = v25;
    v66 = 1024;
    v67 = 212;
    v68 = 2114;
    v69 = v26;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v27 = *(a1 + 40);
  if (v27)
  {
    v28 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v58 = NSLocalizedDescriptionKey;
    v30 = [NSString stringWithUTF8String:"Session not active"];
    v59 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v32 = v28;
    v33 = v29;
    v34 = 54;
    goto LABEL_24;
  }
}

void sub_10014FF28(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 243);
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
    v60 = v10;
    v61 = 2082;
    v62 = v11;
    v63 = 2082;
    v64 = v12;
    v65 = 1024;
    v66 = 243;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    if (*(*(a1 + 32) + 185) != 1)
    {
      v29 = 0;
LABEL_44:
      (*(*(a1 + 40) + 16))();
      goto LABEL_24;
    }

    v33 = +[_NFHardwareManager sharedHardwareManager];
    v34 = sub_10004BF2C();
    v29 = [v33 setRoutingConfig:v34];

    if (v29)
    {
      v35 = NFSharedSignpostLog();
      if (!os_signpost_enabled(v35))
      {
LABEL_43:

        goto LABEL_44;
      }

      v36 = [v29 code];
      *buf = 67109120;
      v60 = v36;
      v37 = "end, error.code: %d";
      v38 = v35;
      v39 = 8;
    }

    else
    {
      *(*(a1 + 32) + 185) = 0;
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
      sub_1001AF894(WeakRetained, *(a1 + 32));

      v41 = sub_10015A1E8(*(*(a1 + 32) + 224));
      v42 = NFLogGetLogger();
      if (v42)
      {
        v43 = v42;
        v44 = object_getClass(*(a1 + 32));
        v45 = class_isMetaClass(v44);
        v46 = object_getClassName(*(a1 + 32));
        v47 = sel_getName(*(a1 + 48));
        v48 = [*(a1 + 32) clientName];
        v49 = 45;
        if (v45)
        {
          v49 = 43;
        }

        v43(6, "%c[%{public}s %{public}s]:%i NFC Reader mode terminated: %@", v49, v46, v47, 253, v48);
      }

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
        v55 = [*(a1 + 32) clientName];
        *buf = 67110146;
        v60 = v52;
        v61 = 2082;
        v62 = v53;
        v63 = 2082;
        v64 = v54;
        v65 = 1024;
        v66 = 253;
        v67 = 2112;
        v68 = v55;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC Reader mode terminated: %@", buf, 0x2Cu);
      }

      v35 = NFSharedSignpostLog();
      if (!os_signpost_enabled(v35))
      {
        goto LABEL_43;
      }

      *buf = 0;
      v37 = "end";
      v38 = v35;
      v39 = 2;
    }

    _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_NFSecureElementReaderSession+se_polling", v37, buf, v39);
    goto LABEL_43;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v13 = NFLogGetLogger();
  if (v13)
  {
    v14 = v13;
    v15 = object_getClass(*(a1 + 32));
    v16 = class_isMetaClass(v15);
    v17 = object_getClassName(*(a1 + 32));
    v18 = sel_getName(*(a1 + 48));
    v19 = [*(a1 + 32) sessionUID];
    v20 = 45;
    if (v16)
    {
      v20 = 43;
    }

    v14(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v20, v17, v18, 244, v19);
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
    v25 = sel_getName(*(a1 + 48));
    v26 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v60 = v23;
    v61 = 2082;
    v62 = v24;
    v63 = 2082;
    v64 = v25;
    v65 = 1024;
    v66 = 244;
    v67 = 2114;
    v68 = v26;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v27 = *(a1 + 40);
  if (v27)
  {
    v28 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v57 = NSLocalizedDescriptionKey;
    v30 = [NSString stringWithUTF8String:"Session not active"];
    v58 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v32 = [v28 initWithDomain:v29 code:54 userInfo:v31];
    (*(v27 + 16))(v27, v32);

LABEL_24:
  }
}

void sub_10015069C(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 268);
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
    v43 = v10;
    v44 = 2082;
    v45 = v11;
    v46 = 2082;
    v47 = v12;
    v48 = 1024;
    v49 = 268;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v33 = [*(a1 + 32) embeddedSecureElementWrapper];
    v34 = *(a1 + 40);
    v39 = 0;
    v30 = sub_1001579EC(v33, v34, 0, &v39);
    v29 = v39;

    v31 = [NFResponseAPDU responseWithData:v30];
    if ([v31 status] == 25392)
    {
      v35 = +[_NFHardwareManager sharedHardwareManager];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100150B44;
      v38[3] = &unk_100319C58;
      v36 = *(a1 + 56);
      v38[4] = *(a1 + 32);
      v38[5] = v36;
      sub_1000FC46C(v35, v38);
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

    v14(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v20, v17, v18, 269, v19);
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
    v43 = v23;
    v44 = 2082;
    v45 = v24;
    v46 = 2082;
    v47 = v25;
    v48 = 1024;
    v49 = 269;
    v50 = 2114;
    v51 = v26;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    v28 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v40 = NSLocalizedDescriptionKey;
    v30 = [NSString stringWithUTF8String:"Session not active"];
    v41 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v32 = [v28 initWithDomain:v29 code:54 userInfo:v31];
    (*(v27 + 16))(v27, 0, v32);

LABEL_24:
  }
}

void sub_100150B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v10 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v13 = 43;
      if (!isMetaClass)
      {
        v13 = 45;
      }

      v10(6, "%c[%{public}s %{public}s]:%i SERmRunning=%d, HostRMRunning=%d, remainingTime=%d", v13, ClassName, Name, 279, a2, a3, a4);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
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
      v18 = sel_getName(*(a1 + 40));
      *buf = 67110658;
      v22 = v16;
      v23 = 2082;
      v24 = v17;
      v25 = 2082;
      v26 = v18;
      v27 = 1024;
      v28 = 279;
      v29 = 1024;
      v30 = a2;
      v31 = 1024;
      v32 = a3;
      v33 = 1024;
      v34 = a4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i SERmRunning=%d, HostRMRunning=%d, remainingTime=%d", buf, 0x34u);
    }
  }
}

void sub_100150DF0(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 291);
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
    v109 = v10;
    v110 = 2082;
    v111 = v11;
    v112 = 2082;
    v113 = v12;
    v114 = 1024;
    v115 = 291;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v33 = +[NSUserDefaults standardUserDefaults];
    v34 = [v33 integerForKey:@"SEReaderPollingDuration"];

    if (v34)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v35 = NFLogGetLogger();
      if (v35)
      {
        v36 = v35;
        v37 = object_getClass(*(a1 + 32));
        v38 = class_isMetaClass(v37);
        v39 = object_getClassName(*(a1 + 32));
        v102 = sel_getName(*(a1 + 56));
        v40 = 45;
        if (v38)
        {
          v40 = 43;
        }

        v36(6, "%c[%{public}s %{public}s]:%i Using Polling override: %u", v40, v39, v102, 311, v34);
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
        *buf = 67110146;
        v109 = v43;
        v110 = 2082;
        v111 = v44;
        v112 = 2082;
        v113 = v45;
        v114 = 1024;
        v115 = 311;
        v116 = 1024;
        LODWORD(v117) = v34;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Using Polling override: %u", buf, 0x28u);
      }
    }

    else
    {
      LODWORD(v34) = 20;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v46 = NFLogGetLogger();
    if (v46)
    {
      v47 = v46;
      v48 = object_getClass(*(a1 + 32));
      v49 = class_isMetaClass(v48);
      v50 = object_getClassName(*(a1 + 32));
      v103 = sel_getName(*(a1 + 56));
      v51 = 45;
      if (v49)
      {
        v51 = 43;
      }

      v47(6, "%c[%{public}s %{public}s]:%i Setting routing for polling and wired with no FD", v51, v50, v103, 318);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v52 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
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
      v109 = v54;
      v110 = 2082;
      v111 = v55;
      v112 = 2082;
      v113 = v56;
      v114 = 1024;
      v115 = 318;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Setting routing for polling and wired with no FD", buf, 0x22u);
    }

    v57 = [NFRoutingConfig alloc];
    if (v57)
    {
      v29 = sub_10004B388(&v57->super.isa, 1, 0, 0, 0, 0, 0, 1, 0, v34, *(a1 + 40), 0);
    }

    else
    {
      v29 = 0;
    }

    sub_10004C450(v29, 19, 112);
    *(*(a1 + 32) + 186) = [*(a1 + 40) length] != 0;
    v58 = +[_NFHardwareManager sharedHardwareManager];
    v30 = [v58 setRoutingConfig:v29];

    v59 = NFSharedSignpostLog();
    v60 = os_signpost_enabled(v59);
    if (v30)
    {
      if (v60)
      {
        v61 = [v30 code];
        *buf = 67109120;
        v109 = v61;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_NFSecureElementReaderSession+vas_polling", "begin, error.code=%d", buf, 8u);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v62 = NFLogGetLogger();
      if (v62)
      {
        v63 = v62;
        v64 = object_getClass(*(a1 + 32));
        v65 = class_isMetaClass(v64);
        v66 = object_getClassName(*(a1 + 32));
        v104 = sel_getName(*(a1 + 56));
        v67 = 45;
        if (v65)
        {
          v67 = 43;
        }

        v63(3, "%c[%{public}s %{public}s]:%i Failed to start polling", v67, v66, v104, 346);
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
        v72 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v109 = v70;
        v110 = 2082;
        v111 = v71;
        v112 = 2082;
        v113 = v72;
        v114 = 1024;
        v115 = 346;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to start polling", buf, 0x22u);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (v60)
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_NFSecureElementReaderSession+vas_polling", "begin", buf, 2u);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v73 = NFLogGetLogger();
      if (v73)
      {
        v74 = v73;
        v75 = object_getClass(*(a1 + 32));
        v76 = class_isMetaClass(v75);
        v77 = object_getClassName(*(a1 + 32));
        v105 = sel_getName(*(a1 + 56));
        v78 = 45;
        if (v76)
        {
          v78 = 43;
        }

        v74(6, "%c[%{public}s %{public}s]:%i VAS Reader started", v78, v77, v105, 337);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v79 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v80 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v80))
        {
          v81 = 43;
        }

        else
        {
          v81 = 45;
        }

        v82 = object_getClassName(*(a1 + 32));
        v83 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v109 = v81;
        v110 = 2082;
        v111 = v82;
        v112 = 2082;
        v113 = v83;
        v114 = 1024;
        v115 = 337;
        _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i VAS Reader started", buf, 0x22u);
      }

      v84 = NFLogGetLogger();
      if (v84)
      {
        v85 = v84;
        v86 = object_getClass(*(a1 + 32));
        v87 = class_isMetaClass(v86);
        v88 = object_getClassName(*(a1 + 32));
        v89 = sel_getName(*(a1 + 56));
        v90 = [*(a1 + 32) clientName];
        v91 = 45;
        if (v87)
        {
          v91 = 43;
        }

        v85(6, "%c[%{public}s %{public}s]:%i NFC Reader mode activated: %@", v91, v88, v89, 338, v90);
      }

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
        v96 = sel_getName(*(a1 + 56));
        v97 = [*(a1 + 32) clientName];
        *buf = 67110146;
        v109 = v94;
        v110 = 2082;
        v111 = v95;
        v112 = 2082;
        v113 = v96;
        v114 = 1024;
        v115 = 338;
        v116 = 2112;
        v117 = v97;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC Reader mode activated: %@", buf, 0x2Cu);
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
      sub_1001B0320(WeakRetained, *(a1 + 32));

      v99 = *(a1 + 32);
      v100 = *(v99 + 200);
      *(v99 + 200) = 0;

      (*(*(a1 + 48) + 16))();
      v30 = 0;
    }

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

    v14(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v20, v17, v18, 292, v19);
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
    v109 = v23;
    v110 = 2082;
    v111 = v24;
    v112 = 2082;
    v113 = v25;
    v114 = 1024;
    v115 = 292;
    v116 = 2114;
    v117 = v26;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    v28 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v106 = NSLocalizedDescriptionKey;
    v30 = [NSString stringWithUTF8String:"Session not active"];
    v107 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
    v32 = [v28 initWithDomain:v29 code:54 userInfo:v31];
    (*(v27 + 16))(v27, v32);

LABEL_24:
  }
}

void sub_100151A04(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 358);
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
    v69 = v10;
    v70 = 2082;
    v71 = v11;
    v72 = 2082;
    v73 = v12;
    v74 = 1024;
    v75 = 358;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v33 = *(a1 + 32);
    v34 = *(v33 + 200);
    *(v33 + 200) = 0;

    v29 = sub_10004BF2C();
    v35 = +[_NFHardwareManager sharedHardwareManager];
    v30 = [v35 setRoutingConfig:v29];

    v36 = NFSharedSignpostLog();
    v37 = os_signpost_enabled(v36);
    if (v30)
    {
      if (v37)
      {
        v38 = [v30 code];
        *buf = 67109120;
        v69 = v38;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_NFSecureElementReaderSession+vas_polling", "end, error.code: %d", buf, 8u);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v39 = NFLogGetLogger();
      if (v39)
      {
        v40 = v39;
        v41 = object_getClass(*(a1 + 32));
        v42 = class_isMetaClass(v41);
        v43 = object_getClassName(*(a1 + 32));
        v64 = sel_getName(*(a1 + 48));
        v44 = 45;
        if (v42)
        {
          v44 = 43;
        }

        v40(3, "%c[%{public}s %{public}s]:%i Failed to stop polling", v44, v43, v64, 374);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v45 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
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
        v69 = v47;
        v70 = 2082;
        v71 = v48;
        v72 = 2082;
        v73 = v49;
        v74 = 1024;
        v75 = 374;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to stop polling", buf, 0x22u);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      if (v37)
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_NFSecureElementReaderSession+vas_polling", "end", buf, 2u);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFLogGetLogger();
      if (v50)
      {
        v51 = v50;
        v52 = object_getClass(*(a1 + 32));
        v53 = class_isMetaClass(v52);
        v54 = object_getClassName(*(a1 + 32));
        v65 = sel_getName(*(a1 + 48));
        v55 = 45;
        if (v53)
        {
          v55 = 43;
        }

        v51(6, "%c[%{public}s %{public}s]:%i VAS Reader stopped", v55, v54, v65, 367);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v56 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v57))
        {
          v58 = 43;
        }

        else
        {
          v58 = 45;
        }

        v59 = object_getClassName(*(a1 + 32));
        v60 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v69 = v58;
        v70 = 2082;
        v71 = v59;
        v72 = 2082;
        v73 = v60;
        v74 = 1024;
        v75 = 367;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i VAS Reader stopped", buf, 0x22u);
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
      sub_1001AF894(WeakRetained, *(a1 + 32));

      v62 = +[_NFHardwareManager sharedHardwareManager];
      [v62 notifyReaderModeActivityEnd];

      (*(*(a1 + 40) + 16))();
      v30 = 0;
    }

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
    v18 = sel_getName(*(a1 + 48));
    v19 = [*(a1 + 32) sessionUID];
    v20 = 45;
    if (v16)
    {
      v20 = 43;
    }

    v14(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v20, v17, v18, 359, v19);
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
    v25 = sel_getName(*(a1 + 48));
    v26 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v69 = v23;
    v70 = 2082;
    v71 = v24;
    v72 = 2082;
    v73 = v25;
    v74 = 1024;
    v75 = 359;
    v76 = 2114;
    v77 = v26;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v27 = *(a1 + 40);
  if (v27)
  {
    v28 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v66 = NSLocalizedDescriptionKey;
    v30 = [NSString stringWithUTF8String:"Session not active"];
    v67 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v32 = [v28 initWithDomain:v29 code:54 userInfo:v31];
    (*(v27 + 16))(v27, v32);

LABEL_24:
  }
}

void sub_10015221C(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 386);
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
    v90 = v10;
    v91 = 2082;
    v92 = v11;
    v93 = 2082;
    v94 = v12;
    v95 = 1024;
    v96 = 386;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v13 = *(a1 + 32);
  if (!v13[24])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v36 = NFLogGetLogger();
    if (v36)
    {
      v37 = v36;
      v38 = object_getClass(*(a1 + 32));
      v39 = class_isMetaClass(v38);
      v40 = object_getClassName(*(a1 + 32));
      v83 = sel_getName(*(a1 + 48));
      v41 = 45;
      if (v39)
      {
        v41 = 43;
      }

      v37(3, "%c[%{public}s %{public}s]:%i Tag not connected", v41, v40, v83, 388);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v42 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v43))
      {
        v44 = 43;
      }

      else
      {
        v44 = 45;
      }

      v45 = object_getClassName(*(a1 + 32));
      v46 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v90 = v44;
      v91 = 2082;
      v92 = v45;
      v93 = 2082;
      v94 = v46;
      v95 = 1024;
      v96 = 388;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag not connected", buf, 0x22u);
    }

    v28 = *(a1 + 40);
    v47 = [NSError alloc];
    v30 = [NSString stringWithUTF8String:"nfcd"];
    v99 = NSLocalizedDescriptionKey;
    v31 = [NSString stringWithUTF8String:"Tag Not Found"];
    v100 = v31;
    v32 = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
    v33 = v47;
    v34 = v30;
    v35 = 28;
    goto LABEL_35;
  }

  if ([v13 didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    if (!*(*(a1 + 32) + 200))
    {
      v49 = objc_opt_new();
      v50 = *(a1 + 32);
      v51 = *(v50 + 200);
      *(v50 + 200) = v49;

      v52 = [*(a1 + 32) driverWrapper];
      sub_10007FEC0(*(*(a1 + 32) + 200), v52);

      sub_10007FEB0(*(*(a1 + 32) + 200), *(*(a1 + 32) + 192));
      v53 = *(*(a1 + 32) + 200);
      if (v53)
      {
        *(v53 + 24) = 0x404E000000000000;
      }
    }

    v54 = NFSharedSignpostLog();
    if (os_signpost_enabled(v54))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_NFSecureElementReaderSession+select_OSE", &unk_1002E8B7A, buf, 2u);
    }

    v55 = *(*(a1 + 32) + 200);
    v84 = 0;
    v31 = sub_10007D5CC(v55, &v84);
    v56 = v84;
    if (v56)
    {
      v57 = v56;
      v58 = [NSError alloc];
      v59 = [NSString stringWithUTF8String:"nfcd"];
      v60 = [v57 code];
      v85[0] = NSLocalizedDescriptionKey;
      if ([v57 code] > 75)
      {
        v61 = 76;
      }

      else
      {
        v61 = [v57 code];
      }

      v62 = [NSString stringWithUTF8String:off_1003199E8[v61]];
      v86[0] = v62;
      v86[1] = v57;
      v85[1] = NSUnderlyingErrorKey;
      v85[2] = @"Line";
      v86[2] = &off_1003324A8;
      v85[3] = @"Method";
      v63 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v86[3] = v63;
      v85[4] = NSDebugDescriptionErrorKey;
      v64 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 406];
      v86[4] = v64;
      v65 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:5];
      v30 = [v58 initWithDomain:v59 code:v60 userInfo:v65];

      v66 = NFSharedSignpostLog();
      if (os_signpost_enabled(v66))
      {
        v67 = [v30 code];
        *buf = 67109120;
        v90 = v67;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v66, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_NFSecureElementReaderSession+select_OSE", "error.code: %d", buf, 8u);
      }

      if (v31)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v30 = 0;
      if (v31)
      {
LABEL_52:
        v32 = objc_opt_new();
        v68 = *(v31 + 16);
        v69 = [v68 length];

        if (v69)
        {
          v70 = *(v31 + 16);
          [v32 setObject:v70 forKeyedSubscript:@"AppLabel"];
        }

        v71 = *(v31 + 24);
        v72 = [v71 length];

        if (v72)
        {
          v73 = *(v31 + 24);
          [v32 setObject:v73 forKeyedSubscript:@"AppVersion"];
        }

        v74 = *(v31 + 32);
        v75 = [v74 length];

        if (v75)
        {
          v76 = *(v31 + 32);
          [v32 setObject:v76 forKeyedSubscript:@"Unpredictable"];
        }

        v77 = [[NSMutableData alloc] initWithLength:1];
        v78 = *(v31 + 8);
        *[v77 mutableBytes] = v78;
        [v32 setObject:v77 forKeyedSubscript:@"MobileCapabilities"];
        v79 = [[NSMutableData alloc] initWithLength:2];
        v80 = *(v31 + 11);
        *[v79 mutableBytes] = v80;
        v81 = *(v31 + 10);
        *([v79 mutableBytes] + 1) = v81;
        [v32 setObject:v79 forKeyedSubscript:@"Status"];

        goto LABEL_59;
      }
    }

    v32 = 0;
LABEL_59:
    (*(*(a1 + 40) + 16))();
    goto LABEL_36;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFLogGetLogger();
  if (v14)
  {
    v15 = v14;
    v16 = object_getClass(*(a1 + 32));
    v17 = class_isMetaClass(v16);
    v18 = object_getClassName(*(a1 + 32));
    v19 = sel_getName(*(a1 + 48));
    v20 = [*(a1 + 32) sessionUID];
    v21 = 45;
    if (v17)
    {
      v21 = 43;
    }

    v15(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v21, v18, v19, 393, v20);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v22 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
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
    v26 = sel_getName(*(a1 + 48));
    v27 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v90 = v24;
    v91 = 2082;
    v92 = v25;
    v93 = 2082;
    v94 = v26;
    v95 = 1024;
    v96 = 393;
    v97 = 2114;
    v98 = v27;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v28 = *(a1 + 40);
  if (v28)
  {
    v29 = [NSError alloc];
    v30 = [NSString stringWithUTF8String:"nfcd"];
    v87 = NSLocalizedDescriptionKey;
    v31 = [NSString stringWithUTF8String:"Session not active"];
    v88 = v31;
    v32 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    v33 = v29;
    v34 = v30;
    v35 = 54;
LABEL_35:
    v48 = [v33 initWithDomain:v34 code:v35 userInfo:v32];
    (*(v28 + 16))(v28, 0, v48);

LABEL_36:
  }
}

void sub_100152CFC(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 443);
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
    v133 = v10;
    v134 = 2082;
    v135 = v11;
    v136 = 2082;
    v137 = v12;
    v138 = 1024;
    v139 = 443;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    if (!*(*(a1 + 32) + 192))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v80 = NFLogGetLogger();
      if (v80)
      {
        v81 = v80;
        v82 = object_getClass(*(a1 + 32));
        v83 = class_isMetaClass(v82);
        v84 = object_getClassName(*(a1 + 32));
        v114 = sel_getName(*(a1 + 56));
        v85 = 45;
        if (v83)
        {
          v85 = 43;
        }

        v81(3, "%c[%{public}s %{public}s]:%i Tag not connected", v85, v84, v114, 448);
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
        v90 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v133 = v88;
        v134 = 2082;
        v135 = v89;
        v136 = 2082;
        v137 = v90;
        v138 = 1024;
        v139 = 448;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag not connected", buf, 0x22u);
      }

      v27 = *(a1 + 48);
      v91 = [NSError alloc];
      v29 = [NSString stringWithUTF8String:"nfcd"];
      v128 = NSLocalizedDescriptionKey;
      v30 = [NSString stringWithUTF8String:"Tag Not Found"];
      v129 = v30;
      v31 = [NSDictionary dictionaryWithObjects:&v129 forKeys:&v128 count:1];
      v32 = v91;
      v33 = v29;
      v34 = 28;
LABEL_24:
      v35 = [v32 initWithDomain:v33 code:v34 userInfo:v31];
      (*(v27 + 16))(v27, v35, 0);

LABEL_25:
      goto LABEL_26;
    }

    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v29 = *(a1 + 40);
    v36 = [v29 countByEnumeratingWithState:&v119 objects:v127 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v120;
      while (2)
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v120 != v38)
          {
            objc_enumerationMutation(v29);
          }

          if (![NFVASRequest validateDictionary:*(*(&v119 + 1) + 8 * i)])
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v65 = NFLogGetLogger();
            if (v65)
            {
              v66 = v65;
              v67 = object_getClass(*(a1 + 32));
              v68 = class_isMetaClass(v67);
              v69 = object_getClassName(*(a1 + 32));
              v113 = sel_getName(*(a1 + 56));
              v70 = 45;
              if (v68)
              {
                v70 = 43;
              }

              v66(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v70, v69, v113, 455);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v71 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
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
              v75 = sel_getName(*(a1 + 56));
              *buf = 67109890;
              v133 = v73;
              v134 = 2082;
              v135 = v74;
              v136 = 2082;
              v137 = v75;
              v138 = 1024;
              v139 = 455;
              _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
            }

            v76 = *(a1 + 48);
            v77 = [NSError alloc];
            v30 = [NSString stringWithUTF8String:"nfcd"];
            v125 = NSLocalizedDescriptionKey;
            v31 = [NSString stringWithUTF8String:"Invalid Parameter"];
            v126 = v31;
            v78 = [NSDictionary dictionaryWithObjects:&v126 forKeys:&v125 count:1];
            v79 = [v77 initWithDomain:v30 code:10 userInfo:v78];
            (*(v76 + 16))(v76, v79, 0);

            goto LABEL_25;
          }
        }

        v37 = [v29 countByEnumeratingWithState:&v119 objects:v127 count:16];
        if (v37)
        {
          continue;
        }

        break;
      }
    }

    if (!*(*(a1 + 32) + 200))
    {
      v40 = objc_opt_new();
      v41 = *(a1 + 32);
      v42 = *(v41 + 200);
      *(v41 + 200) = v40;

      v43 = [*(a1 + 32) driverWrapper];
      sub_10007FEC0(*(*(a1 + 32) + 200), v43);

      sub_10007FEB0(*(*(a1 + 32) + 200), *(*(a1 + 32) + 192));
      v44 = *(*(a1 + 32) + 200);
      if (v44)
      {
        *(v44 + 24) = 0x404E000000000000;
      }
    }

    if (*(a1 + 64) == 1)
    {
      v45 = NFSharedSignpostLog();
      if (os_signpost_enabled(v45))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_NFSecureElementReaderSession+select_OSE", &unk_1002E8B7A, buf, 2u);
      }

      v46 = *(*(a1 + 32) + 200);
      v118 = 0;
      v30 = sub_10007D5CC(v46, &v118);
      v47 = v118;
      if (v47)
      {
        v29 = v47;
        v48 = NFSharedSignpostLog();
        if (os_signpost_enabled(v48))
        {
          v49 = [v29 code];
          *buf = 67109120;
          v133 = v49;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_NFSecureElementReaderSession+select_OSE", "error.code: %d", buf, 8u);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v50 = NFLogGetLogger();
        if (v50)
        {
          v51 = v50;
          v52 = object_getClass(*(a1 + 32));
          v53 = class_isMetaClass(v52);
          v109 = object_getClassName(*(a1 + 32));
          v112 = sel_getName(*(a1 + 56));
          v54 = 45;
          if (v53)
          {
            v54 = 43;
          }

          v51(3, "%c[%{public}s %{public}s]:%i error: %{public}@", v54, v109, v112, 474, v29);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v55 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v56 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v56))
          {
            v57 = 43;
          }

          else
          {
            v57 = 45;
          }

          v58 = object_getClassName(*(a1 + 32));
          v59 = sel_getName(*(a1 + 56));
          *buf = 67110146;
          v133 = v57;
          v134 = 2082;
          v135 = v58;
          v136 = 2082;
          v137 = v59;
          v138 = 1024;
          v139 = 474;
          v140 = 2114;
          v141 = v29;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i error: %{public}@", buf, 0x2Cu);
        }

        v60 = *(a1 + 48);
        v61 = [NSError alloc];
        v62 = [NSString stringWithUTF8String:"nfcd"];
        v63 = [v29 code];
        v123[0] = NSLocalizedDescriptionKey;
        v116 = v63;
        if ([v29 code] > 75)
        {
          v64 = 76;
        }

        else
        {
          v64 = [v29 code];
        }

        v104 = [NSString stringWithUTF8String:off_1003199E8[v64]];
        v124[0] = v104;
        v124[1] = v29;
        v123[1] = NSUnderlyingErrorKey;
        v123[2] = @"Line";
        v124[2] = &off_1003324C0;
        v123[3] = @"Method";
        v105 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
        v124[3] = v105;
        v123[4] = NSDebugDescriptionErrorKey;
        v106 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 475];
        v124[4] = v106;
        v107 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:5];
        v108 = [v61 initWithDomain:v62 code:v116 userInfo:v107];
        (*(v60 + 16))(v60, v108, 0);

LABEL_26:
        return;
      }
    }

    v92 = *(a1 + 40);
    v93 = *(*(a1 + 32) + 200);
    v117 = 0;
    v29 = sub_10007E604(v93, v92, &v117);
    v30 = v117;
    if (v29)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v94 = NFLogGetLogger();
      if (v94)
      {
        v95 = v94;
        v96 = object_getClass(*(a1 + 32));
        v97 = class_isMetaClass(v96);
        v110 = object_getClassName(*(a1 + 32));
        v115 = sel_getName(*(a1 + 56));
        v98 = 45;
        if (v97)
        {
          v98 = 43;
        }

        v95(3, "%c[%{public}s %{public}s]:%i error: %{public}@", v98, v110, v115, 483, v29);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v99 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        v100 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v100))
        {
          v101 = 43;
        }

        else
        {
          v101 = 45;
        }

        v102 = object_getClassName(*(a1 + 32));
        v103 = sel_getName(*(a1 + 56));
        *buf = 67110146;
        v133 = v101;
        v134 = 2082;
        v135 = v102;
        v136 = 2082;
        v137 = v103;
        v138 = 1024;
        v139 = 483;
        v140 = 2114;
        v141 = v29;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i error: %{public}@", buf, 0x2Cu);
      }
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_26;
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

    v14(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v20, v17, v18, 445, v19);
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
    v133 = v23;
    v134 = 2082;
    v135 = v24;
    v136 = 2082;
    v137 = v25;
    v138 = 1024;
    v139 = 445;
    v140 = 2114;
    v141 = v26;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    v28 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v130 = NSLocalizedDescriptionKey;
    v30 = [NSString stringWithUTF8String:"Session not active"];
    v131 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v131 forKeys:&v130 count:1];
    v32 = v28;
    v33 = v29;
    v34 = 54;
    goto LABEL_24;
  }
}

void sub_100153D04(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v8, ClassName, Name, 499, *(a1 + 40));
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
    v55 = v11;
    v56 = 2082;
    v57 = v12;
    v58 = 2082;
    v59 = v13;
    v60 = 1024;
    v61 = 499;
    v62 = 2114;
    v63 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v35 = +[_NFHardwareManager sharedHardwareManager];
    [v35 notifyReaderModeActivityStart];

    v36 = *(*(a1 + 32) + 208);
    if (v36 && (v37 = sub_100190BD0(v36, *(a1 + 40), 0)) != 0)
    {
      LODWORD(v38) = v37;
      v39 = v37 & 0x6F;
      v40 = [NSError alloc];
      v41 = [NSString stringWithUTF8String:"nfcd"];
      if (v39 == 35 || v38 == 64)
      {
        v38 = v38;
      }

      else
      {
        v38 = 15;
      }

      v50 = NSLocalizedDescriptionKey;
      v43 = [NSString stringWithUTF8String:off_1003199E8[v38]];
      v51 = v43;
      v44 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v31 = [v40 initWithDomain:v41 code:v38 userInfo:v44];

      v45 = NFSharedSignpostLog();
      if (os_signpost_enabled(v45))
      {
        v46 = [v31 code];
        *buf = 67109120;
        v55 = v46;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_NFSecureElementReaderSession+tag_connect", "begin, error.code: %d", buf, 8u);
      }
    }

    else
    {
      v47 = NFSharedSignpostLog();
      if (os_signpost_enabled(v47))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_NFSecureElementReaderSession+tag_connect", "begin", buf, 2u);
      }

      v48 = [[NFTagInternal alloc] initWithNFTag:*(a1 + 40)];
      v31 = 0;
      v49 = *(a1 + 32);
      v45 = *(v49 + 192);
      *(v49 + 192) = v48;
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_24;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v16 = v15;
    v17 = object_getClass(*(a1 + 32));
    v18 = class_isMetaClass(v17);
    v19 = object_getClassName(*(a1 + 32));
    v20 = sel_getName(*(a1 + 56));
    v21 = [*(a1 + 32) sessionUID];
    v22 = 45;
    if (v18)
    {
      v22 = 43;
    }

    v16(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v22, v19, v20, 500, v21);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
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
    v27 = sel_getName(*(a1 + 56));
    v28 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v55 = v25;
    v56 = 2082;
    v57 = v26;
    v58 = 2082;
    v59 = v27;
    v60 = 1024;
    v61 = 500;
    v62 = 2114;
    v63 = v28;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v29 = *(a1 + 48);
  if (v29)
  {
    v30 = [NSError alloc];
    v31 = [NSString stringWithUTF8String:"nfcd"];
    v52 = NSLocalizedDescriptionKey;
    v32 = [NSString stringWithUTF8String:"Session not active"];
    v53 = v32;
    v33 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v34 = [v30 initWithDomain:v31 code:54 userInfo:v33];
    (*(v29 + 16))(v29, v34);

LABEL_24:
  }
}

void sub_1001543B8(uint64_t a1)
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
    v9 = [*(a1 + 32) connection];
    v10 = [v9 processIdentifier];
    v11 = [*(a1 + 32) sessionUID];
    v12 = 43;
    if (!isMetaClass)
    {
      v12 = 45;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", v12, ClassName, Name, 526, v8, v10, v11);
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
    v18 = [*(a1 + 32) clientName];
    v19 = [*(a1 + 32) connection];
    v20 = [v19 processIdentifier];
    v21 = [*(a1 + 32) sessionUID];
    *buf = 67110658;
    v52 = v15;
    v53 = 2082;
    v54 = v16;
    v55 = 2082;
    v56 = v17;
    v57 = 1024;
    v58 = 526;
    v59 = 2114;
    v60 = v18;
    v61 = 1024;
    v62 = v20;
    v63 = 2114;
    v64 = v21;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", buf, 0x3Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v42 = +[_NFHardwareManager sharedHardwareManager];
    [v42 notifyReaderModeActivityEnd];

    v38 = [*(a1 + 32) _disconnectWithCardRemoval:*(a1 + 56)];
    v43 = NFSharedSignpostLog();
    v44 = os_signpost_enabled(v43);
    if (v38)
    {
      if (v44)
      {
        v45 = [v38 code];
        *buf = 67109120;
        v52 = v45;
        v46 = "end, error.code: %d";
        v47 = v43;
        v48 = 8;
LABEL_31:
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_NFSecureElementReaderSession+tag_connect", v46, buf, v48);
      }
    }

    else if (v44)
    {
      *buf = 0;
      v46 = "end";
      v47 = v43;
      v48 = 2;
      goto LABEL_31;
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_24;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v22 = NFLogGetLogger();
  if (v22)
  {
    v23 = v22;
    v24 = object_getClass(*(a1 + 32));
    v25 = class_isMetaClass(v24);
    v26 = object_getClassName(*(a1 + 32));
    v27 = sel_getName(*(a1 + 48));
    v28 = [*(a1 + 32) sessionUID];
    v29 = 45;
    if (v25)
    {
      v29 = 43;
    }

    v23(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v29, v26, v27, 528, v28);
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
    v34 = sel_getName(*(a1 + 48));
    v35 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v52 = v32;
    v53 = 2082;
    v54 = v33;
    v55 = 2082;
    v56 = v34;
    v57 = 1024;
    v58 = 528;
    v59 = 2114;
    v60 = v35;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v36 = *(a1 + 40);
  if (v36)
  {
    v37 = [NSError alloc];
    v38 = [NSString stringWithUTF8String:"nfcd"];
    v49 = NSLocalizedDescriptionKey;
    v39 = [NSString stringWithUTF8String:"Session not active"];
    v50 = v39;
    v40 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v41 = [v37 initWithDomain:v38 code:54 userInfo:v40];
    (*(v36 + 16))(v36, v41);

LABEL_24:
  }
}

void sub_100155050(uint64_t a1)
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
    v9 = [*(a1 + 32) connection];
    v10 = [v9 processIdentifier];
    v11 = [*(a1 + 32) sessionUID];
    v12 = 43;
    if (!isMetaClass)
    {
      v12 = 45;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", v12, ClassName, Name, 590, v8, v10, v11);
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
    v18 = [*(a1 + 32) clientName];
    v19 = [*(a1 + 32) connection];
    v20 = [v19 processIdentifier];
    v21 = [*(a1 + 32) sessionUID];
    *buf = 67110658;
    v27 = v15;
    v28 = 2082;
    v29 = v16;
    v30 = 2082;
    v31 = v17;
    v32 = 1024;
    v33 = 590;
    v34 = 2114;
    v35 = v18;
    v36 = 1024;
    v37 = v20;
    v38 = 2114;
    v39 = v21;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", buf, 0x3Cu);
  }

  v22 = *(*(a1 + 32) + 208);
  v25 = 0;
  v23 = sub_100225100(v22, &v25);
  v24 = v25;
  (*(*(a1 + 40) + 16))();
}

void sub_10015584C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 identifierAsData];
  v7 = [v6 isEqualToData:*(a1 + 32)];

  if (v7)
  {
    v8 = [v11 identifier];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

id sub_100157348(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 189);
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
    v16 = v10;
    v17 = 2082;
    v18 = v11;
    v19 = 2082;
    v20 = v12;
    v21 = 1024;
    v22 = 189;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  return [*(a1 + 32) internalEndSession:*(a1 + 40)];
}

id *sub_1001579EC(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    a1 = [a1[3] transceive:a2 toOS:a3 redact:0 error:a4];
    v4 = vars8;
  }

  return a1;
}

id *sub_100157A30(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    a1 = [a1[3] transceive:a2 toOS:a3 redact:a4 error:a5];
    v5 = vars8;
  }

  return a1;
}

id sub_100157AB0(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10)
{
  v16 = a6;
  v61 = v16;
  if (a1)
  {
    v17 = v16;
    v18 = +[NFCommandAPDU buildAPDUHeaderWithClass:instruction:p1:p2:len:useExtendedLength:](NFCommandAPDU, "buildAPDUHeaderWithClass:instruction:p1:p2:len:useExtendedLength:", a2, a3, a4, a5, [v16 length], a9);
    if (v18)
    {
      if ([v17 length])
      {
        [v18 appendData:v17];
      }

      v19 = [NFCommandAPDU appendExpectedLength:a7 usingExtendedLength:a9 toAPDU:v18];
      if (v19)
      {
        v20 = v19;
        if (a10)
        {
          v21 = [NSError alloc];
          v22 = [NSString stringWithUTF8String:"nfcd"];
          v23 = [v20 code];
          v74[0] = NSLocalizedDescriptionKey;
          if ([v20 code] > 75)
          {
            v24 = 76;
          }

          else
          {
            v24 = [v20 code];
          }

          v26 = [NSString stringWithUTF8String:off_100319CA0[v24]];
          v75[0] = v26;
          v75[1] = v20;
          v74[1] = NSUnderlyingErrorKey;
          v74[2] = @"Line";
          v75[2] = &off_100332520;
          v74[3] = @"Method";
          v46 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendCommandWithClass:instruction:p1:p2:data:expectedLength:toOS:useExtendedLength:error:")];
          v75[3] = v46;
          v74[4] = NSDebugDescriptionErrorKey;
          v47 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendCommandWithClass:instruction:p1:p2:data:expectedLength:toOS:useExtendedLength:error:"), 174];
          v75[4] = v47;
          v48 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:5];
          *a10 = [v21 initWithDomain:v22 code:v23 userInfo:v48];

          goto LABEL_29;
        }

LABEL_26:
        v45 = 0;
LABEL_32:

        goto LABEL_33;
      }

      v30 = sub_1001579EC(a1, v18, a8, a10);
      v22 = v30;
      if (!v30)
      {
        goto LABEL_36;
      }

      if ([v30 length] > 1)
      {
        v50 = [NFResponseAPDU responseWithData:v22];
        if (v50)
        {
          v51 = v50;
          if ([v50 status] == 26277)
          {
            v52 = [a1 delegate];
            [v52 secureElementReturnedRestrictedMode:a1 os:a8];
          }

          v26 = v51;
          v20 = 0;
          v45 = v26;
          goto LABEL_30;
        }

        if (a10)
        {
          v53 = [NSError alloc];
          v54 = [NSString stringWithUTF8String:"nfcd"];
          v62[0] = NSLocalizedDescriptionKey;
          v55 = [NSString stringWithUTF8String:"No resources"];
          v63[0] = v55;
          v63[1] = &off_100332550;
          v62[1] = @"Line";
          v62[2] = @"Method";
          v56 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendCommandWithClass:instruction:p1:p2:data:expectedLength:toOS:useExtendedLength:error:")];
          v63[2] = v56;
          v62[3] = NSDebugDescriptionErrorKey;
          v57 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendCommandWithClass:instruction:p1:p2:data:expectedLength:toOS:useExtendedLength:error:"), 191];
          v63[3] = v57;
          v58 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:4];
          *a10 = [v53 initWithDomain:v54 code:34 userInfo:v58];
        }

        v26 = 0;
        goto LABEL_11;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v32 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("sendCommandWithClass:instruction:p1:p2:data:expectedLength:toOS:useExtendedLength:error:");
        v36 = 45;
        if (isMetaClass)
        {
          v36 = 43;
        }

        v32(3, "%c[%{public}s %{public}s]:%i Not enought byte to create response", v36, ClassName, Name, 184);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v37 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = object_getClass(a1);
        if (class_isMetaClass(v38))
        {
          v39 = 43;
        }

        else
        {
          v39 = 45;
        }

        *buf = 67109890;
        v67 = v39;
        v68 = 2082;
        v69 = object_getClassName(a1);
        v70 = 2082;
        v71 = sel_getName("sendCommandWithClass:instruction:p1:p2:data:expectedLength:toOS:useExtendedLength:error:");
        v72 = 1024;
        v73 = 184;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Not enought byte to create response", buf, 0x22u);
      }

      if (!a10)
      {
LABEL_36:
        v20 = 0;
        v45 = 0;
        goto LABEL_31;
      }

      v40 = [NSError alloc];
      v26 = [NSString stringWithUTF8String:"nfcd"];
      v64[0] = NSLocalizedDescriptionKey;
      v41 = [NSString stringWithUTF8String:"Unexpected Result"];
      v65[0] = v41;
      v65[1] = &off_100332538;
      v64[1] = @"Line";
      v64[2] = @"Method";
      v42 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendCommandWithClass:instruction:p1:p2:data:expectedLength:toOS:useExtendedLength:error:")];
      v65[2] = v42;
      v64[3] = NSDebugDescriptionErrorKey;
      v43 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendCommandWithClass:instruction:p1:p2:data:expectedLength:toOS:useExtendedLength:error:"), 185];
      v65[3] = v43;
      v44 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:4];
      *a10 = [v40 initWithDomain:v26 code:13 userInfo:v44];
    }

    else
    {
      if (!a10)
      {
        v20 = 0;
        goto LABEL_26;
      }

      v25 = [NSError alloc];
      v22 = [NSString stringWithUTF8String:"nfcd"];
      v76[0] = NSLocalizedDescriptionKey;
      v26 = [NSString stringWithUTF8String:"No resources"];
      v77[0] = v26;
      v77[1] = &off_100332508;
      v76[1] = @"Line";
      v76[2] = @"Method";
      v27 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendCommandWithClass:instruction:p1:p2:data:expectedLength:toOS:useExtendedLength:error:")];
      v77[2] = v27;
      v76[3] = NSDebugDescriptionErrorKey;
      v28 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendCommandWithClass:instruction:p1:p2:data:expectedLength:toOS:useExtendedLength:error:"), 164];
      v77[3] = v28;
      v29 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:4];
      *a10 = [v25 initWithDomain:v22 code:34 userInfo:v29];
    }

LABEL_11:
    v20 = 0;
LABEL_29:
    v45 = 0;
LABEL_30:

LABEL_31:
    goto LABEL_32;
  }

  v45 = 0;
LABEL_33:

  return v45;
}

id *sub_100158334(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  if (a1)
  {
    a1 = sub_100157AB0(a1, a2, a3, a4, a5, a6, 0, 0, 0, a7);
    v7 = vars8;
  }

  return a1;
}

id *sub_10015837C(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a1)
  {
    a1 = sub_100157AB0(a1, a2, a3, a4, a5, a6, a7, a8, 0, a9);
    v9 = vars8;
  }

  return a1;
}

id sub_1001583C0(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, void *a9)
{
  v56 = a6;
  if (a1)
  {
    v17 = objc_opt_new();
    v18 = [NFCommandAPDU buildAPDUHeaderWithClass:a2 instruction:a3 p1:a4 p2:a5 len:0 useExtendedLength:1];
    if (v18)
    {
      v19 = a6 != a5;
      v20 = [NFCommandAPDU appendExpectedLength:a7 usingExtendedLength:1 toAPDU:v18];
      while (1)
      {
        v55 = 0;
        v21 = sub_1001579EC(a1, v18, a8, &v55);
        v22 = v55;
        v23 = [NFResponseAPDU responseWithData:v21];
        v24 = v23;
        if (v22)
        {
          if (a9)
          {
            v32 = v22;
            *a9 = v22;
          }

          v33 = v17;
          goto LABEL_19;
        }

        if (!v23)
        {
          break;
        }

        if ([v23 status] == 36864)
        {
          goto LABEL_32;
        }

        if ([v24 status] != 25360 && objc_msgSend(v24, "status") != 37008)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v38 = Logger;
            Class = object_getClass(a1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(a1);
            Name = sel_getName("sendRepeatingExtendedCommandWithClass:instruction:p1:firstP2:nextP2:expectedLength:toOS:error:");
            v51 = [v24 status];
            v42 = 45;
            if (isMetaClass)
            {
              v42 = 43;
            }

            v38(3, "%c[%{public}s %{public}s]:%i Failed to query, status word is 0x%x", v42, ClassName, Name, 283, v51);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v43 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = object_getClass(a1);
            if (class_isMetaClass(v44))
            {
              v45 = 43;
            }

            else
            {
              v45 = 45;
            }

            v46 = object_getClassName(a1);
            v47 = sel_getName("sendRepeatingExtendedCommandWithClass:instruction:p1:firstP2:nextP2:expectedLength:toOS:error:");
            v48 = [v24 status];
            *buf = 67110146;
            v58 = v45;
            v59 = 2082;
            v60 = v46;
            v61 = 2082;
            v62 = v47;
            v63 = 1024;
            v64 = 283;
            v65 = 1024;
            v66 = v48;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query, status word is 0x%x", buf, 0x28u);
          }

          if (a9)
          {
            *a9 = 0;
          }

LABEL_32:
          v33 = [v24 data];
          [v17 appendData:v33];
LABEL_33:
          v49 = v17;

          v17 = v24;
          goto LABEL_34;
        }

        v25 = [v24 response];
        [v17 appendData:v25];

        if (v19)
        {
          [v18 replaceBytesInRange:3 withBytes:1 length:{&v56, 1}];
        }

        v19 = 0;
      }

      if (a9)
      {
        v53 = [NSError alloc];
        v33 = [NSString stringWithUTF8String:"nfcd"];
        v67[0] = NSLocalizedDescriptionKey;
        v52 = [NSString stringWithUTF8String:"Unexpected Result"];
        v68[0] = v52;
        v68[1] = &off_100332580;
        v67[1] = @"Line";
        v67[2] = @"Method";
        v34 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendRepeatingExtendedCommandWithClass:instruction:p1:firstP2:nextP2:expectedLength:toOS:error:")];
        v68[2] = v34;
        v67[3] = NSDebugDescriptionErrorKey;
        v35 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendRepeatingExtendedCommandWithClass:instruction:p1:firstP2:nextP2:expectedLength:toOS:error:"), 270];
        v68[3] = v35;
        v36 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:4];
        *a9 = [v53 initWithDomain:v33 code:13 userInfo:v36];

        v24 = v17;
LABEL_19:
        v17 = 0;
        goto LABEL_33;
      }

      v22 = 0;
      v49 = 0;
LABEL_34:

      v31 = [NFResponseAPDU responseWithData:v49];
      v17 = v49;
    }

    else
    {
      if (!a9)
      {
        v31 = 0;
LABEL_36:

        goto LABEL_37;
      }

      v26 = [NSError alloc];
      v22 = [NSString stringWithUTF8String:"nfcd"];
      v69[0] = NSLocalizedDescriptionKey;
      v27 = [NSString stringWithUTF8String:"No resources"];
      v70[0] = v27;
      v70[1] = &off_100332568;
      v69[1] = @"Line";
      v69[2] = @"Method";
      v28 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendRepeatingExtendedCommandWithClass:instruction:p1:firstP2:nextP2:expectedLength:toOS:error:")];
      v70[2] = v28;
      v69[3] = NSDebugDescriptionErrorKey;
      v29 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendRepeatingExtendedCommandWithClass:instruction:p1:firstP2:nextP2:expectedLength:toOS:error:"), 256];
      v70[3] = v29;
      v30 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:4];
      *a9 = [v26 initWithDomain:v22 code:34 userInfo:v30];

      v31 = 0;
    }

    goto LABEL_36;
  }

  v31 = 0;
LABEL_37:

  return v31;
}

id *sub_100158A28(id *a1, uint64_t a2, __int16 a3, void *a4, void *a5)
{
  if (a1)
  {
    a1 = sub_100158334(a1, a2, 202, HIBYTE(a3), a3, a4, a5);
    v5 = vars8;
  }

  return a1;
}

id *sub_100158A6C(id *a1, void *a2, void *a3)
{
  if (a1)
  {
    a1 = sub_100158334(a1, 0, 164, 4, 0, a2, a3);
    v3 = vars8;
  }

  return a1;
}

id sub_100158AB4(id *a1, int a2)
{
  if (a1)
  {
    v4 = sub_100158A28(a1, 128, a2, 0, 0);
    v5 = v4;
    if (v4)
    {
      if ([v4 status] == 36864)
      {
        v6 = [v5 response];
        v7 = [NFTLV TLVWithData:v6];

        if ([v7 tag]== a2)
        {
          v8 = [v7 value];
LABEL_36:

          goto LABEL_37;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v30 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("getData:");
          v42 = [v7 tag];
          v35 = 45;
          if (isMetaClass)
          {
            v35 = 43;
          }

          v30(3, "%c[%{public}s %{public}s]:%i Unexpected tag: 0x%x", v35, ClassName, Name, 354, v42);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v36 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = object_getClass(a1);
          if (class_isMetaClass(v37))
          {
            v38 = 43;
          }

          else
          {
            v38 = 45;
          }

          *buf = 67110146;
          v44 = v38;
          v45 = 2082;
          v46 = object_getClassName(a1);
          v47 = 2082;
          v48 = sel_getName("getData:");
          v49 = 1024;
          v50 = 354;
          v51 = 1024;
          v52 = [v7 tag];
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected tag: 0x%x", buf, 0x28u);
        }

LABEL_35:
        v8 = 0;
        goto LABEL_36;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v20 = NFLogGetLogger();
      if (v20)
      {
        v21 = v20;
        v22 = object_getClass(a1);
        v23 = class_isMetaClass(v22);
        v24 = object_getClassName(a1);
        v25 = sel_getName("getData:");
        v41 = [v5 status];
        v26 = 45;
        if (v23)
        {
          v26 = 43;
        }

        v21(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v26, v24, v25, 348, v41);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v7 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      v27 = object_getClass(a1);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      *buf = 67110146;
      v44 = v28;
      v45 = 2082;
      v46 = object_getClassName(a1);
      v47 = 2082;
      v48 = sel_getName("getData:");
      v49 = 1024;
      v50 = 348;
      v51 = 1024;
      v52 = [v5 status];
      v17 = "%c[%{public}s %{public}s]:%i Returned error: 0x%04x";
      v18 = v7;
      v19 = 40;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v9 = NFLogGetLogger();
      if (v9)
      {
        v10 = v9;
        v11 = object_getClass(a1);
        v12 = class_isMetaClass(v11);
        v13 = object_getClassName(a1);
        v40 = sel_getName("getData:");
        v14 = 45;
        if (v12)
        {
          v14 = 43;
        }

        v10(3, "%c[%{public}s %{public}s]:%i Command failed", v14, v13, v40, 344);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v7 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      v15 = object_getClass(a1);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      *buf = 67109890;
      v44 = v16;
      v45 = 2082;
      v46 = object_getClassName(a1);
      v47 = 2082;
      v48 = sel_getName("getData:");
      v49 = 1024;
      v50 = 344;
      v17 = "%c[%{public}s %{public}s]:%i Command failed";
      v18 = v7;
      v19 = 34;
    }

    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
    goto LABEL_35;
  }

  v8 = 0;
LABEL_37:

  return v8;
}

id sub_100158F70(id *a1, int a2, unsigned int a3)
{
  if (a1)
  {
    v67 = bswap32(a3) >> 16;
    v5 = [[NSData alloc] initWithBytes:&v67 length:2];
    v6 = sub_100158A28(a1, 128, a2, v5, 0);

    if (v6)
    {
      if ([v6 status] == 36864)
      {
        v7 = [v6 response];
        v8 = [NFTLV TLVWithData:v7];

        if ([v8 tag]== a2)
        {
          v9 = [v8 children];
          if ([v9 count]== 1)
          {
            v10 = [v9 objectAtIndexedSubscript:0];

            v11 = [v10 value];
            v8 = v10;
LABEL_47:

            goto LABEL_48;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v50 = Logger;
            Class = object_getClass(a1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(a1);
            Name = sel_getName("getData:subtag:");
            v66 = [v9 count];
            v55 = 45;
            if (isMetaClass)
            {
              v55 = 43;
            }

            v50(3, "%c[%{public}s %{public}s]:%i Unexpected child count: %ld", v55, ClassName, Name, 388, v66);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v56 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v57 = object_getClass(a1);
            if (class_isMetaClass(v57))
            {
              v58 = 43;
            }

            else
            {
              v58 = 45;
            }

            v59 = object_getClassName(a1);
            v60 = sel_getName("getData:subtag:");
            v61 = [v9 count];
            *buf = 67110146;
            v69 = v58;
            v70 = 2082;
            v71 = v59;
            v72 = 2082;
            v73 = v60;
            v74 = 1024;
            v75 = 388;
            v76 = 2048;
            v77 = v61;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected child count: %ld", buf, 0x2Cu);
          }
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v37 = NFLogGetLogger();
          if (v37)
          {
            v38 = v37;
            v39 = object_getClass(a1);
            v40 = class_isMetaClass(v39);
            v41 = object_getClassName(a1);
            v42 = sel_getName("getData:subtag:");
            v65 = [v8 tag];
            v43 = 45;
            if (v40)
            {
              v43 = 43;
            }

            v38(3, "%c[%{public}s %{public}s]:%i Unexpected tag: 0x%x", v43, v41, v42, 382, v65);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v9 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v44 = object_getClass(a1);
            if (class_isMetaClass(v44))
            {
              v45 = 43;
            }

            else
            {
              v45 = 45;
            }

            v46 = object_getClassName(a1);
            v47 = sel_getName("getData:subtag:");
            v48 = [v8 tag];
            *buf = 67110146;
            v69 = v45;
            v70 = 2082;
            v71 = v46;
            v72 = 2082;
            v73 = v47;
            v74 = 1024;
            v75 = 382;
            v76 = 1024;
            LODWORD(v77) = v48;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected tag: 0x%x", buf, 0x28u);
          }
        }

        v11 = 0;
        goto LABEL_47;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFLogGetLogger();
      if (v25)
      {
        v26 = v25;
        v27 = object_getClass(a1);
        v28 = class_isMetaClass(v27);
        v29 = object_getClassName(a1);
        v30 = sel_getName("getData:subtag:");
        v64 = [v6 status];
        v31 = 45;
        if (v28)
        {
          v31 = 43;
        }

        v26(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v31, v29, v30, 376, v64);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v8 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_26:
        v11 = 0;
LABEL_48:

        goto LABEL_49;
      }

      v32 = object_getClass(a1);
      if (class_isMetaClass(v32))
      {
        v33 = 43;
      }

      else
      {
        v33 = 45;
      }

      v34 = object_getClassName(a1);
      v35 = sel_getName("getData:subtag:");
      v36 = [v6 status];
      *buf = 67110146;
      v69 = v33;
      v70 = 2082;
      v71 = v34;
      v72 = 2082;
      v73 = v35;
      v74 = 1024;
      v75 = 376;
      v76 = 1024;
      LODWORD(v77) = v36;
      v22 = "%c[%{public}s %{public}s]:%i Returned error: 0x%04x";
      v23 = v8;
      v24 = 40;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFLogGetLogger();
      if (v12)
      {
        v13 = v12;
        v14 = object_getClass(a1);
        v15 = class_isMetaClass(v14);
        v16 = object_getClassName(a1);
        v63 = sel_getName("getData:subtag:");
        v17 = 45;
        if (v15)
        {
          v17 = 43;
        }

        v13(3, "%c[%{public}s %{public}s]:%i Command failed", v17, v16, v63, 372);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v8 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v18 = object_getClass(a1);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      v20 = object_getClassName(a1);
      v21 = sel_getName("getData:subtag:");
      *buf = 67109890;
      v69 = v19;
      v70 = 2082;
      v71 = v20;
      v72 = 2082;
      v73 = v21;
      v74 = 1024;
      v75 = 372;
      v22 = "%c[%{public}s %{public}s]:%i Command failed";
      v23 = v8;
      v24 = 34;
    }

    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
    goto LABEL_26;
  }

  v11 = 0;
LABEL_49:

  return v11;
}

uint64_t sub_1001595DC(id *a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a3;
  v5 = sub_100158A6C(a1, a2, a3);
  v6 = v5;
  if (!v5)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("select:error:");
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i Command failed", v12, ClassName, Name, 401);
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

      *buf = 67109890;
      v35 = v15;
      v36 = 2082;
      v37 = object_getClassName(a1);
      v38 = 2082;
      v39 = sel_getName("select:error:");
      v40 = 1024;
      v41 = 401;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command failed", buf, 0x22u);
    }

LABEL_25:

    v3 = 0;
    goto LABEL_26;
  }

  if ([v5 status] != 36864)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v17 = v16;
      v18 = object_getClass(a1);
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(a1);
      v21 = sel_getName("select:error:");
      v31 = [v6 status];
      v22 = 45;
      if (v19)
      {
        v22 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v22, v20, v21, 406, v31);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
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

      *buf = 67110146;
      v35 = v25;
      v36 = 2082;
      v37 = object_getClassName(a1);
      v38 = 2082;
      v39 = sel_getName("select:error:");
      v40 = 1024;
      v41 = 406;
      v42 = 1024;
      v43 = [v6 status];
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", buf, 0x28u);
    }

    if (!v3)
    {
      goto LABEL_26;
    }

    v26 = [NSError alloc];
    v13 = [NSString stringWithUTF8String:"nfcd"];
    v32 = NSLocalizedDescriptionKey;
    v27 = [NSString stringWithUTF8String:"Command Error"];
    v33 = v27;
    v28 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    *v3 = [v26 initWithDomain:v13 code:16 userInfo:v28];

    goto LABEL_25;
  }

  v3 = 1;
LABEL_26:

  return v3;
}

id *sub_100159994(id *result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = [a2 identifierAsData];
    v6 = sub_1001595DC(v4, v5, a3);

    return v6;
  }

  return result;
}

id sub_1001599F4(id *a1, void *a2)
{
  if (a1)
  {
    v4 = NFSharedSignpostLog();
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SELECT_CRS", "begin", buf, 2u);
    }

    v5 = [[NSData alloc] initWithBytes:&unk_1002977D0 length:9];
    v59 = 0;
    v6 = sub_100158A6C(a1, v5, &v59);
    v7 = v59;

    if (v6)
    {
      if ([v6 status] == 36864)
      {
        v8 = NFSharedSignpostLog();
        if (os_signpost_enabled(v8))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SELECT_CRS", "end", buf, 2u);
        }

        v9 = v6;
      }

      else
      {
        v58 = a2;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v27 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("selectCRSWithError:");
          v57 = [v6 status];
          v32 = 45;
          if (isMetaClass)
          {
            v32 = 43;
          }

          v27(3, "%c[%{public}s %{public}s]:%i Failed to select CRS: 0x%04x", v32, ClassName, Name, 439, v57);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v33 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = object_getClass(a1);
          if (class_isMetaClass(v34))
          {
            v35 = 43;
          }

          else
          {
            v35 = 45;
          }

          v36 = object_getClassName(a1);
          v37 = sel_getName("selectCRSWithError:");
          v38 = [v6 status];
          *buf = 67110146;
          *v69 = v35;
          *&v69[4] = 2082;
          *&v69[6] = v36;
          v70 = 2082;
          v71 = v37;
          v72 = 1024;
          v73 = 439;
          v74 = 1024;
          LODWORD(v75) = v38;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CRS: 0x%04x", buf, 0x28u);
        }

        v39 = [[NSString alloc] initWithFormat:@"Received non-9000 response from SE. Response: 0x%04X", objc_msgSend(v6, "status")];
        v64[0] = @"Applet Identifier";
        v40 = [[NSData alloc] initWithBytes:&unk_1002977D0 length:9];
        v41 = [v40 NF_asHexString];
        v65[0] = v41;
        v65[1] = @"Other Bug";
        v64[1] = @"Classification";
        v64[2] = @"FailureKey";
        v65[2] = @"ttrTransaction";
        v42 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:3];
        sub_100199974(NFBugCapture, @"Failed to select CRS", v39, v42);

        LODWORD(v41) = [v6 status];
        v43 = [NSError alloc];
        v44 = [NSString stringWithUTF8String:"nfcd"];
        if (v41 == 26277)
        {
          v62 = NSLocalizedDescriptionKey;
          v45 = [NSString stringWithUTF8String:"Restricted Mode"];
          v63 = v45;
          v46 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
          v47 = v43;
          v48 = v44;
          v49 = 24;
        }

        else
        {
          v60 = NSLocalizedDescriptionKey;
          v45 = [NSString stringWithUTF8String:"Command Error"];
          v61 = v45;
          v46 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
          v47 = v43;
          v48 = v44;
          v49 = 16;
        }

        v50 = [v47 initWithDomain:v48 code:v49 userInfo:v46];

        [NFExceptionsCALogger postAnalyticsSEFailureEvent:7 context:v39 error:v50];
        if (v58)
        {
          v51 = v50;
          *v58 = v50;
        }

        v52 = NFSharedSignpostLog();
        if (os_signpost_enabled(v52))
        {
          v53 = [v6 status];
          *buf = 67109120;
          *v69 = v53;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SELECT_CRS", "failed; RPDU status: 0x%04x", buf, 8u);
        }

        v9 = 0;
        v7 = v50;
      }
    }

    else
    {
      v10 = a2;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFLogGetLogger();
      if (v11)
      {
        v12 = v11;
        v13 = object_getClass(a1);
        v14 = class_isMetaClass(v13);
        v55 = object_getClassName(a1);
        v56 = sel_getName("selectCRSWithError:");
        v15 = 45;
        if (v14)
        {
          v15 = 43;
        }

        v12(3, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", v15, v55, v56, 426, v7);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = object_getClass(a1);
        if (class_isMetaClass(v17))
        {
          v18 = 43;
        }

        else
        {
          v18 = 45;
        }

        v19 = object_getClassName(a1);
        v20 = sel_getName("selectCRSWithError:");
        *buf = 67110146;
        *v69 = v18;
        *&v69[4] = 2082;
        *&v69[6] = v19;
        v70 = 2082;
        v71 = v20;
        v72 = 1024;
        v73 = 426;
        v74 = 2114;
        v75 = v7;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", buf, 0x2Cu);
      }

      v66[0] = @"Applet Identifier";
      v21 = [[NSData alloc] initWithBytes:&unk_1002977D0 length:9];
      v22 = [v21 NF_asHexString];
      v67[0] = v22;
      v67[1] = @"Other Bug";
      v66[1] = @"Classification";
      v66[2] = @"FailureKey";
      v67[2] = @"ttrTransaction";
      v23 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:3];
      sub_100199974(NFBugCapture, @"Failed to select CRS", @"No response from SE", v23);

      [NFExceptionsCALogger postAnalyticsSEFailureEvent:7 context:@"No response from SE" error:v7];
      if (v10)
      {
        v24 = v7;
        *v10 = v7;
      }

      v25 = NFSharedSignpostLog();
      if (os_signpost_enabled(v25))
      {
        *buf = 138412290;
        *v69 = v7;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SELECT_CRS", "failed: %@", buf, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_10015A1E8(id *a1)
{
  if (a1)
  {
    v2 = [[NSData alloc] initWithBytes:&unk_1002977D9 length:8];
    v33 = 0;
    v3 = sub_1001595DC(a1, v2, &v33);
    v4 = v33;

    v5 = 0;
    if ((v3 & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("selectISD");
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v7(3, "%c[%{public}s %{public}s]:%i Failed to select ISD", v11, ClassName, Name, 484);
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

        v15 = object_getClassName(a1);
        v16 = sel_getName("selectISD");
        *buf = 67109890;
        v41 = v14;
        v42 = 2082;
        v43 = v15;
        v44 = 2082;
        v45 = v16;
        v46 = 1024;
        v47 = 484;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select ISD", buf, 0x22u);
      }

      v38[0] = @"Applet Identifier";
      v17 = [[NSData alloc] initWithBytes:&unk_1002977D9 length:8];
      v18 = [v17 NF_asHexString];
      v39[0] = v18;
      v39[1] = @"Other Bug";
      v38[1] = @"Classification";
      v38[2] = @"FailureKey";
      v39[2] = @"ttrTransaction";
      v19 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:3];
      sub_100199974(NFBugCapture, @"Failed to select ISD", @"No response from SE", v19);

      [NFExceptionsCALogger postAnalyticsSEFailureEvent:8 context:@"No response from SE" error:v4];
      v20 = [NSError alloc];
      v21 = [NSString stringWithUTF8String:"nfcd"];
      if (v4)
      {
        v22 = [v4 code];
        v36[0] = NSLocalizedDescriptionKey;
        if ([v4 code] > 75)
        {
          v23 = 76;
        }

        else
        {
          v23 = [v4 code];
        }

        v24 = [NSString stringWithUTF8String:off_100319CA0[v23]];
        v37[0] = v24;
        v37[1] = v4;
        v36[1] = NSUnderlyingErrorKey;
        v36[2] = @"Line";
        v37[2] = &off_100332598;
        v36[3] = @"Method";
        v25 = [[NSString alloc] initWithFormat:@"%s", sel_getName("selectISD")];
        v37[3] = v25;
        v36[4] = NSDebugDescriptionErrorKey;
        v26 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("selectISD"), 492];
        v37[4] = v26;
        v27 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:5];
        v28 = v20;
        v29 = v21;
        v30 = v22;
      }

      else
      {
        v34[0] = NSLocalizedDescriptionKey;
        v24 = [NSString stringWithUTF8String:"Unknown Error"];
        v35[0] = v24;
        v35[1] = &off_100332598;
        v34[1] = @"Line";
        v34[2] = @"Method";
        v25 = [[NSString alloc] initWithFormat:@"%s", sel_getName("selectISD")];
        v35[2] = v25;
        v34[3] = NSDebugDescriptionErrorKey;
        v26 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("selectISD"), 492];
        v35[3] = v26;
        v27 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];
        v28 = v20;
        v29 = v21;
        v30 = 6;
      }

      v5 = [v28 initWithDomain:v29 code:v30 userInfo:v27];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id *sub_10015A724(id *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = sub_10015A1E8(a1);
    v5 = v4;
    if (v4)
    {
      if (a2)
      {
        v6 = v4;
        v2 = 0;
        *a2 = v5;
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v7 = sub_100158AB4(v2, 193);
      v2 = v7;
      if (!a2 || v7)
      {
        goto LABEL_9;
      }

      v8 = [NSError alloc];
      v9 = [NSString stringWithUTF8String:"nfcd"];
      v15[0] = NSLocalizedDescriptionKey;
      v10 = [NSString stringWithUTF8String:"Decoding Error"];
      v16[0] = v10;
      v16[1] = &off_1003325B0;
      v15[1] = @"Line";
      v15[2] = @"Method";
      v11 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryISDCounter:")];
      v16[2] = v11;
      v15[3] = NSDebugDescriptionErrorKey;
      v12 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryISDCounter:"), 512];
      v16[3] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
      *a2 = [v8 initWithDomain:v9 code:23 userInfo:v13];
    }

    v2 = 0;
    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

id sub_10015A93C(id *a1, unint64_t *a2)
{
  if (a1)
  {
    if (!a2)
    {
      v14 = [NSError alloc];
      v15 = [NSString stringWithUTF8String:"nfcd"];
      v245 = NSLocalizedDescriptionKey;
      v16 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v246 = v16;
      v17 = [NSDictionary dictionaryWithObjects:&v246 forKeys:&v245 count:1];
      v13 = [v14 initWithDomain:v15 code:10 userInfo:v17];

      goto LABEL_164;
    }

    v3 = a1;
    v4 = [a1 handle];
    v5 = [v4 info];
    v6 = [v5 seType];

    v240 = v3;
    if (v6 == 6)
    {
      v18 = [[NSData alloc] initWithBytes:&unk_1002977D9 length:8];
      v244 = 0;
      v19 = sub_1001595DC(v3, v18, &v244);
      v9 = v244;

      if (v19)
      {
        v243 = 24543;
        v20 = [NSData dataWithBytes:&v243 length:2];
        v242 = v9;
        v21 = sub_100158334(v3, 0, 202, 0, 254, v20, &v242);
        v22 = v242;

        if ([v21 status] == 26277)
        {
          v13 = 0;
          *a2 = 87000;
        }

        else
        {
          v236 = v22;
          if ([v21 status] == 36864)
          {
            v232 = v21;
            v234 = a2;
            v267 = 0u;
            memset(v266, 0, sizeof(v266));
            v77 = [v21 data];
            v78 = [NFTLV TLVsWithData:v77];

            sel = v78;
            v79 = [v78 countByEnumeratingWithState:v266 objects:buf count:16];
            if (v79)
            {
              v80 = v79;
              v81 = 0;
              v82 = **&v266[16];
              do
              {
                for (i = 0; i != v80; i = i + 1)
                {
                  if (**&v266[16] != v82)
                  {
                    objc_enumerationMutation(sel);
                  }

                  v84 = *(*&v266[8] + 8 * i);
                  if ([v84 tag] == 241 && objc_msgSend(v84, "valueAsUnsignedLong"))
                  {
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    Logger = NFLogGetLogger();
                    if (Logger)
                    {
                      v86 = Logger;
                      Class = object_getClass(v3);
                      isMetaClass = class_isMetaClass(Class);
                      ClassName = object_getClassName(v3);
                      Name = sel_getName("_checkDeepSleepTimerRunningEOS:");
                      v221 = [v84 tag];
                      v227 = [v84 valueAsUnsignedLong];
                      v91 = 45;
                      if (isMetaClass)
                      {
                        v91 = 43;
                      }

                      v215 = ClassName;
                      v3 = v240;
                      v86(5, "%c[%{public}s %{public}s]:%i DPD timer running (%u = %u)", v91, v215, Name, 704, v221, v227);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v92 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                    {
                      v93 = object_getClass(v3);
                      if (class_isMetaClass(v93))
                      {
                        v94 = 43;
                      }

                      else
                      {
                        v94 = 45;
                      }

                      v95 = object_getClassName(v3);
                      v96 = sel_getName("_checkDeepSleepTimerRunningEOS:");
                      v97 = [v84 tag];
                      v98 = [v84 valueAsUnsignedLong];
                      *v258 = 67110402;
                      *&v258[4] = v94;
                      *&v258[8] = 2082;
                      *&v258[10] = v95;
                      *&v258[18] = 2082;
                      *&v258[20] = v96;
                      *&v258[28] = 1024;
                      *&v258[30] = 704;
                      *&v258[34] = 1024;
                      *&v258[36] = v97;
                      v3 = v240;
                      *&v258[40] = 1024;
                      *&v258[42] = v98;
                      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i DPD timer running (%u = %u)", v258, 0x2Eu);
                    }

                    v99 = [v84 valueAsUnsignedLong];
                    if (v81 <= v99)
                    {
                      v81 = v99;
                    }
                  }
                }

                v80 = [sel countByEnumeratingWithState:v266 objects:buf count:16];
              }

              while (v80);
            }

            else
            {
              v81 = 0;
            }

            v243 = 24287;
            v154 = [NSData dataWithBytes:&v243 length:2];
            v241 = v236;
            v155 = sub_10015837C(v3, 0, 202, 0, 254, v154, 0, 2, &v241);
            v229 = v241;

            v230 = v155;
            if ([v155 status] == 36864)
            {
              v262 = 0u;
              v263 = 0u;
              v260 = 0u;
              v261 = 0u;
              v156 = [v155 data];
              v157 = [NFTLV TLVsWithData:v156];

              sela = v157;
              v158 = [v157 countByEnumeratingWithState:&v260 objects:v258 count:16];
              if (v158)
              {
                v159 = v158;
                v160 = *v261;
                do
                {
                  for (j = 0; j != v159; j = j + 1)
                  {
                    if (*v261 != v160)
                    {
                      objc_enumerationMutation(sela);
                    }

                    v162 = *(*(&v260 + 1) + 8 * j);
                    v163 = [v162 tag];
                    v164 = v163 - 128 > 0x20 || ((1 << (v163 + 0x80)) & 0x100010001) == 0;
                    if (!v164 && [v162 valueAsUnsignedLong])
                    {
                      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                      v165 = NFLogGetLogger();
                      if (v165)
                      {
                        v166 = v165;
                        v167 = object_getClass(v3);
                        v168 = class_isMetaClass(v167);
                        v169 = object_getClassName(v3);
                        v170 = sel_getName("_checkDeepSleepTimerRunningEOS:");
                        v224 = [v162 tag];
                        v228 = [v162 valueAsUnsignedLong];
                        v219 = v170;
                        v3 = v240;
                        v171 = 45;
                        if (v168)
                        {
                          v171 = 43;
                        }

                        v166(5, "%c[%{public}s %{public}s]:%i DPD timer running (%u = %u)", v171, v169, v219, 742, v224, v228);
                      }

                      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                      v172 = NFSharedLogGetLogger();
                      if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
                      {
                        v173 = object_getClass(v3);
                        if (class_isMetaClass(v173))
                        {
                          v174 = 43;
                        }

                        else
                        {
                          v174 = 45;
                        }

                        v175 = object_getClassName(v3);
                        v176 = sel_getName("_checkDeepSleepTimerRunningEOS:");
                        v177 = [v162 tag];
                        v178 = [v162 valueAsUnsignedLong];
                        *v247 = 67110402;
                        *&v247[4] = v174;
                        v248 = 2082;
                        v249 = v175;
                        v250 = 2082;
                        v251 = v176;
                        v252 = 1024;
                        v253 = 742;
                        v254 = 1024;
                        v255 = v177;
                        v3 = v240;
                        v256 = 1024;
                        v257 = v178;
                        _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i DPD timer running (%u = %u)", v247, 0x2Eu);
                      }

                      v179 = [v162 valueAsUnsignedLong];
                      if (v81 <= v179)
                      {
                        v81 = v179;
                      }
                    }
                  }

                  v159 = [sela countByEnumeratingWithState:&v260 objects:v258 count:16];
                }

                while (v159);
              }

              v13 = 0;
              *v234 = v81;
              v22 = v229;
              v21 = v230;
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v180 = NFLogGetLogger();
              if (v180)
              {
                v181 = v180;
                v182 = object_getClass(v3);
                v183 = class_isMetaClass(v182);
                v184 = object_getClassName(v3);
                v185 = sel_getName("_checkDeepSleepTimerRunningEOS:");
                v225 = [v155 status];
                v186 = 45;
                if (v183)
                {
                  v186 = 43;
                }

                v181(3, "%c[%{public}s %{public}s]:%i Failed to request AC decrement timer : 0x%X", v186, v184, v185, 723, v225);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v187 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
              {
                v188 = object_getClass(v3);
                if (class_isMetaClass(v188))
                {
                  v189 = 43;
                }

                else
                {
                  v189 = 45;
                }

                v190 = object_getClassName(v3);
                v191 = sel_getName("_checkDeepSleepTimerRunningEOS:");
                v192 = [v155 status];
                *v258 = 67110146;
                *&v258[4] = v189;
                *&v258[8] = 2082;
                *&v258[10] = v190;
                *&v258[18] = 2082;
                *&v258[20] = v191;
                *&v258[28] = 1024;
                *&v258[30] = 723;
                *&v258[34] = 1024;
                *&v258[36] = v192;
                _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to request AC decrement timer : 0x%X", v258, 0x28u);
              }

              sub_100199974(NFBugCapture, @"Failed to request AC decrement timer", @"Failed to request AC decrement timer", &off_100339A30);
              v193 = [[NSString alloc] initWithFormat:@"Failed to request AC decrement timer: 0x%X", objc_msgSend(v155, "status")];
              [NFExceptionsCALogger postAnalyticsSEFailureEvent:9 context:v193 error:v229];
              v194 = [NSError alloc];
              v195 = [NSString stringWithUTF8String:"nfcd"];
              if (v229)
              {
                v196 = [v229 code];
                *&v260 = NSLocalizedDescriptionKey;
                if ([v229 code] > 75)
                {
                  v197 = 76;
                }

                else
                {
                  v197 = [v229 code];
                }

                v206 = [NSString stringWithUTF8String:off_100319CA0[v197]];
                *v258 = v206;
                *&v258[8] = v229;
                *(&v260 + 1) = NSUnderlyingErrorKey;
                *&v261 = @"Line";
                *&v258[16] = &off_100332628;
                *(&v261 + 1) = @"Method";
                v207 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_checkDeepSleepTimerRunningEOS:")];
                *&v258[24] = v207;
                *&v262 = NSDebugDescriptionErrorKey;
                v208 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_checkDeepSleepTimerRunningEOS:"), 730];
                *&v258[32] = v208;
                v209 = [NSDictionary dictionaryWithObjects:v258 forKeys:&v260 count:5];
                v210 = v194;
                v211 = v195;
                v212 = v196;
              }

              else
              {
                *&v260 = NSLocalizedDescriptionKey;
                v206 = [NSString stringWithUTF8String:"Unknown Error"];
                *v258 = v206;
                *&v258[8] = &off_100332628;
                *(&v260 + 1) = @"Line";
                *&v261 = @"Method";
                v207 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_checkDeepSleepTimerRunningEOS:")];
                *&v258[16] = v207;
                *(&v261 + 1) = NSDebugDescriptionErrorKey;
                v208 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_checkDeepSleepTimerRunningEOS:"), 730];
                *&v258[24] = v208;
                v209 = [NSDictionary dictionaryWithObjects:v258 forKeys:&v260 count:4];
                v210 = v194;
                v211 = v195;
                v212 = 6;
              }

              v13 = [v210 initWithDomain:v211 code:v212 userInfo:v209];

              v21 = v230;
              v22 = v229;
            }
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v130 = NFLogGetLogger();
            if (v130)
            {
              v131 = v130;
              v132 = object_getClass(v3);
              v133 = class_isMetaClass(v132);
              v134 = object_getClassName(v3);
              v135 = sel_getName("_checkDeepSleepTimerRunningEOS:");
              v223 = [v21 status];
              v136 = 45;
              if (v133)
              {
                v136 = 43;
              }

              v131(3, "%c[%{public}s %{public}s]:%i Failed to request timer running Status: 0x%X", v136, v134, v135, 688, v223);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v137 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
            {
              v138 = object_getClass(v3);
              if (class_isMetaClass(v138))
              {
                v139 = 43;
              }

              else
              {
                v139 = 45;
              }

              v140 = object_getClassName(v3);
              v141 = sel_getName("_checkDeepSleepTimerRunningEOS:");
              v142 = [v21 status];
              *buf = 67110146;
              *&buf[4] = v139;
              *v265 = 2082;
              *&v265[2] = v140;
              *&v265[10] = 2082;
              *&v265[12] = v141;
              *&v265[20] = 1024;
              *&v265[22] = 688;
              *&v265[26] = 1024;
              *&v265[28] = v142;
              _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to request timer running Status: 0x%X", buf, 0x28u);
            }

            sub_100199974(NFBugCapture, @"Failed to request timer running status", @"Failed to request timer running status", &off_100339A08);
            v143 = [[NSString alloc] initWithFormat:@"Failed to request timer running Status: 0x%X", objc_msgSend(v21, "status")];
            [NFExceptionsCALogger postAnalyticsSEFailureEvent:9 context:v143 error:v22];
            v144 = [NSError alloc];
            v145 = [NSString stringWithUTF8String:"nfcd"];
            if (v22)
            {
              v146 = [v22 code];
              *v258 = NSLocalizedDescriptionKey;
              if ([v22 code] > 75)
              {
                v147 = 76;
              }

              else
              {
                v147 = [v22 code];
              }

              v205 = v22;
              v198 = [NSString stringWithUTF8String:off_100319CA0[v147]];
              *buf = v198;
              *v265 = v205;
              *&v258[8] = NSUnderlyingErrorKey;
              *&v258[16] = @"Line";
              *&v265[8] = &off_100332610;
              *&v258[24] = @"Method";
              v199 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_checkDeepSleepTimerRunningEOS:")];
              *&v265[16] = v199;
              *&v258[32] = NSDebugDescriptionErrorKey;
              v200 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_checkDeepSleepTimerRunningEOS:"), 695];
              *&v265[24] = v200;
              v201 = [NSDictionary dictionaryWithObjects:buf forKeys:v258 count:5];
              v202 = v144;
              v203 = v145;
              v204 = v146;
            }

            else
            {
              *v258 = NSLocalizedDescriptionKey;
              v198 = [NSString stringWithUTF8String:"Unknown Error"];
              *buf = v198;
              *v265 = &off_100332610;
              *&v258[8] = @"Line";
              *&v258[16] = @"Method";
              v199 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_checkDeepSleepTimerRunningEOS:")];
              *&v265[8] = v199;
              *&v258[24] = NSDebugDescriptionErrorKey;
              v200 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_checkDeepSleepTimerRunningEOS:"), 695];
              *&v265[16] = v200;
              v201 = [NSDictionary dictionaryWithObjects:buf forKeys:v258 count:4];
              v202 = v144;
              v203 = v145;
              v204 = 6;
            }

            v13 = [v202 initWithDomain:v203 code:v204 userInfo:v201];

            v22 = v236;
          }
        }

        v9 = v22;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v38 = NFLogGetLogger();
        if (v38)
        {
          v39 = v38;
          v40 = object_getClass(v3);
          v41 = class_isMetaClass(v40);
          v42 = object_getClassName(v3);
          v218 = sel_getName("_checkDeepSleepTimerRunningEOS:");
          v43 = 45;
          if (v41)
          {
            v43 = 43;
          }

          v39(3, "%c[%{public}s %{public}s]:%i Failed to select ISD", v43, v42, v218, 670);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v44 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = object_getClass(v3);
          if (class_isMetaClass(v45))
          {
            v46 = 43;
          }

          else
          {
            v46 = 45;
          }

          v47 = object_getClassName(v3);
          v48 = sel_getName("_checkDeepSleepTimerRunningEOS:");
          *buf = 67109890;
          *&buf[4] = v46;
          *v265 = 2082;
          *&v265[2] = v47;
          *&v265[10] = 2082;
          *&v265[12] = v48;
          *&v265[20] = 1024;
          *&v265[22] = 670;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select ISD", buf, 0x22u);
        }

        v49 = [NSError alloc];
        v50 = [NSString stringWithUTF8String:"nfcd"];
        if (v9)
        {
          v51 = [v9 code];
          *v258 = NSLocalizedDescriptionKey;
          if ([v9 code] > 75)
          {
            v52 = 76;
          }

          else
          {
            v52 = [v9 code];
          }

          v111 = [NSString stringWithUTF8String:off_100319CA0[v52]];
          *buf = v111;
          *v265 = v9;
          *&v258[8] = NSUnderlyingErrorKey;
          *&v258[16] = @"Line";
          *&v265[8] = &off_1003325F8;
          *&v258[24] = @"Method";
          v112 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_checkDeepSleepTimerRunningEOS:")];
          *&v265[16] = v112;
          *&v258[32] = NSDebugDescriptionErrorKey;
          v113 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_checkDeepSleepTimerRunningEOS:"), 671];
          *&v265[24] = v113;
          v114 = [NSDictionary dictionaryWithObjects:buf forKeys:v258 count:5];
          v13 = [v49 initWithDomain:v50 code:v51 userInfo:v114];
        }

        else
        {
          *v258 = NSLocalizedDescriptionKey;
          v103 = [NSString stringWithUTF8String:"Unknown Error"];
          *buf = v103;
          *v265 = &off_1003325F8;
          *&v258[8] = @"Line";
          *&v258[16] = @"Method";
          v104 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_checkDeepSleepTimerRunningEOS:")];
          *&v265[8] = v104;
          *&v258[24] = NSDebugDescriptionErrorKey;
          v105 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_checkDeepSleepTimerRunningEOS:"), 671];
          *&v265[16] = v105;
          v106 = [NSDictionary dictionaryWithObjects:buf forKeys:v258 count:4];
          v13 = [v49 initWithDomain:v50 code:6 userInfo:v106];

          v9 = v50;
        }
      }

      goto LABEL_163;
    }

    if (v6 != 2)
    {
      v13 = 0;
      *a2 = 0;
      goto LABEL_164;
    }

    LOWORD(v242) = 20703;
    v7 = [[NSData alloc] initWithBytes:&unk_1002977D9 length:8];
    *v247 = 0;
    v8 = sub_1001595DC(v3, v7, v247);
    v9 = *v247;

    if ((v8 & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v24 = v23;
        v25 = object_getClass(v3);
        v26 = class_isMetaClass(v25);
        v27 = object_getClassName(v3);
        v217 = sel_getName("_checkDeepSleepTimerRunningP73:");
        v28 = 45;
        if (v26)
        {
          v28 = 43;
        }

        v24(3, "%c[%{public}s %{public}s]:%i Failed to select ISD", v28, v27, v217, 610);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = object_getClass(v3);
        if (class_isMetaClass(v30))
        {
          v31 = 43;
        }

        else
        {
          v31 = 45;
        }

        v32 = object_getClassName(v3);
        v33 = sel_getName("_checkDeepSleepTimerRunningP73:");
        *buf = 67109890;
        *&buf[4] = v31;
        *v265 = 2082;
        *&v265[2] = v32;
        *&v265[10] = 2082;
        *&v265[12] = v33;
        *&v265[20] = 1024;
        *&v265[22] = 610;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select ISD", buf, 0x22u);
      }

      v34 = [NSError alloc];
      v35 = [NSString stringWithUTF8String:"nfcd"];
      if (v9)
      {
        v36 = [v9 code];
        *v258 = NSLocalizedDescriptionKey;
        if ([v9 code] > 75)
        {
          v37 = 76;
        }

        else
        {
          v37 = [v9 code];
        }

        v107 = [NSString stringWithUTF8String:off_100319CA0[v37]];
        *buf = v107;
        *v265 = v9;
        *&v258[8] = NSUnderlyingErrorKey;
        *&v258[16] = @"Line";
        *&v265[8] = &off_1003325C8;
        *&v258[24] = @"Method";
        v108 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_checkDeepSleepTimerRunningP73:")];
        *&v265[16] = v108;
        *&v258[32] = NSDebugDescriptionErrorKey;
        v109 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_checkDeepSleepTimerRunningP73:"), 611];
        *&v265[24] = v109;
        v110 = [NSDictionary dictionaryWithObjects:buf forKeys:v258 count:5];
        v13 = [v34 initWithDomain:v35 code:v36 userInfo:v110];

        v11 = v35;
      }

      else
      {
        *v258 = NSLocalizedDescriptionKey;
        v11 = [NSString stringWithUTF8String:"Unknown Error"];
        *buf = v11;
        *v265 = &off_1003325C8;
        *&v258[8] = @"Line";
        *&v258[16] = @"Method";
        v100 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_checkDeepSleepTimerRunningP73:")];
        *&v265[8] = v100;
        *&v258[24] = NSDebugDescriptionErrorKey;
        v101 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_checkDeepSleepTimerRunningP73:"), 611];
        *&v265[16] = v101;
        v102 = [NSDictionary dictionaryWithObjects:buf forKeys:v258 count:4];
        v13 = [v34 initWithDomain:v35 code:6 userInfo:v102];

        v9 = v35;
      }

      goto LABEL_115;
    }

    v10 = [NSData dataWithBytes:&v242 length:2];
    v244 = v9;
    v11 = sub_100158334(v3, 0, 202, 0, 254, v10, &v244);
    v12 = v244;

    if ([v11 status] == 26277)
    {
      v13 = 0;
      *a2 = 87000;
      v9 = v12;
LABEL_115:

LABEL_163:
      goto LABEL_164;
    }

    if ([v11 status] != 36864)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v115 = NFLogGetLogger();
      if (v115)
      {
        v116 = v115;
        v117 = object_getClass(v3);
        v118 = class_isMetaClass(v117);
        v119 = v12;
        v120 = object_getClassName(v3);
        v121 = sel_getName("_checkDeepSleepTimerRunningP73:");
        v222 = [v11 status];
        v216 = v120;
        v122 = 45;
        if (v118)
        {
          v122 = 43;
        }

        v12 = v119;
        v116(3, "%c[%{public}s %{public}s]:%i Failed to request timer running Status: 0x%X", v122, v216, v121, 627, v222);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v123 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        v124 = object_getClass(v3);
        if (class_isMetaClass(v124))
        {
          v125 = 43;
        }

        else
        {
          v125 = 45;
        }

        v126 = object_getClassName(v3);
        v127 = sel_getName("_checkDeepSleepTimerRunningP73:");
        v128 = [v11 status];
        *buf = 67110146;
        *&buf[4] = v125;
        *v265 = 2082;
        *&v265[2] = v126;
        *&v265[10] = 2082;
        *&v265[12] = v127;
        *&v265[20] = 1024;
        *&v265[22] = 627;
        *&v265[26] = 1024;
        *&v265[28] = v128;
        _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to request timer running Status: 0x%X", buf, 0x28u);
      }

      sub_100199974(NFBugCapture, @"Failed to request timer running status", @"Failed to request timer running status", &off_1003399E0);
      v129 = [[NSString alloc] initWithFormat:@"Failed to request timer running Status: 0x%X", objc_msgSend(v11, "status")];
      [NFExceptionsCALogger postAnalyticsSEFailureEvent:9 context:v129 error:v12];
      v9 = v12;

      v13 = v9;
      goto LABEL_115;
    }

    v231 = v12;
    *a2 = 0;
    memset(v258, 0, sizeof(v258));
    v259 = 0u;
    v235 = v11;
    v53 = [v11 data];
    v54 = [NFTLV TLVsWithData:v53];

    v55 = [v54 countByEnumeratingWithState:v258 objects:buf count:16];
    if (v55)
    {
      v56 = v55;
      v233 = a2;
      v57 = 0;
      v239 = 0;
      v58 = **&v258[16];
      do
      {
        for (k = 0; k != v56; k = k + 1)
        {
          if (**&v258[16] != v58)
          {
            objc_enumerationMutation(v54);
          }

          v60 = *(*&v258[8] + 8 * k);
          if ([v60 tag] - 241 <= 1)
          {
            if ([v60 valueAsUnsignedLong])
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v61 = NFLogGetLogger();
              if (v61)
              {
                v62 = v61;
                v63 = object_getClass(v3);
                v64 = class_isMetaClass(v63);
                v65 = object_getClassName(v3);
                v66 = sel_getName("_checkDeepSleepTimerRunningP73:");
                v220 = [v60 tag];
                v226 = [v60 valueAsUnsignedLong];
                v67 = 45;
                if (v64)
                {
                  v67 = 43;
                }

                v214 = v65;
                v3 = v240;
                v62(5, "%c[%{public}s %{public}s]:%i DPD timer running (%u = %u)", v67, v214, v66, 651, v220, v226);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v68 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
              {
                v69 = object_getClass(v3);
                if (class_isMetaClass(v69))
                {
                  v70 = 43;
                }

                else
                {
                  v70 = 45;
                }

                v71 = object_getClassName(v3);
                v72 = sel_getName("_checkDeepSleepTimerRunningP73:");
                v73 = [v60 tag];
                v74 = [v60 valueAsUnsignedLong];
                *v266 = 67110402;
                *&v266[4] = v70;
                *&v266[8] = 2082;
                *&v266[10] = v71;
                *&v266[18] = 2082;
                *&v266[20] = v72;
                v3 = v240;
                *&v266[28] = 1024;
                *&v266[30] = 651;
                *&v266[34] = 1024;
                *&v266[36] = v73;
                *&v266[40] = 1024;
                *&v266[42] = v74;
                _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i DPD timer running (%u = %u)", v266, 0x2Eu);
              }

              v75 = [v60 valueAsUnsignedLong];
              v76 = v239;
              if (v239 <= v75)
              {
                v76 = v75;
              }

              v239 = v76;
            }

            v57 = 1;
          }
        }

        v56 = [v54 countByEnumeratingWithState:v258 objects:buf count:16];
      }

      while (v56);

      if (v57)
      {
        *v233 = v239;
        v9 = v231;
        v13 = v9;
LABEL_114:
        v11 = v235;
        goto LABEL_115;
      }
    }

    else
    {
    }

    v148 = [NSError alloc];
    v149 = [NSString stringWithUTF8String:"nfcd"];
    *&v260 = NSLocalizedDescriptionKey;
    v150 = [NSString stringWithUTF8String:"Unexpected Result"];
    *v266 = v150;
    *&v266[8] = &off_1003325E0;
    *(&v260 + 1) = @"Line";
    *&v261 = @"Method";
    v151 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_checkDeepSleepTimerRunningP73:")];
    *&v266[16] = v151;
    *(&v261 + 1) = NSDebugDescriptionErrorKey;
    v152 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_checkDeepSleepTimerRunningP73:"), 660];
    *&v266[24] = v152;
    v153 = [NSDictionary dictionaryWithObjects:v266 forKeys:&v260 count:4];
    v13 = [v148 initWithDomain:v149 code:13 userInfo:v153];

    v9 = v231;
    goto LABEL_114;
  }

  v13 = 0;
LABEL_164:

  return v13;
}

uint64_t sub_10015C7BC(uint64_t result)
{
  if (result)
  {
    v1 = [*(result + 24) info];
    v2 = [v1 deviceType];

    result = 1;
    if (v2 != 100 && v2 != 200)
    {
      return v2 == 210;
    }
  }

  return result;
}

id sub_10015C818(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_10015C7BC(a1);
    v3 = [v1 delegate];
    v4 = v3;
    if (v2)
    {
      [v3 softResetSE:v1];
    }

    else
    {
      [v3 powerCycleSE:v1];
    }
    v1 = ;
  }

  return v1;
}

BOOL sub_10015C898(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [*(a1 + 24) info];
    v3 = [v2 deviceType];

    if (v3 == 100 || v3 == 210 || v3 == 200)
    {
      v4 = [v1 handle];
      v5 = [v4 info];
      v6 = [v5 sequenceCounter];
      v1 = [v6 unsignedIntValue] > 0x835;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void sub_10015C944()
{
  v0 = objc_opt_self();
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v2 = Logger;
    Class = object_getClass(v0);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v0);
    Name = sel_getName("setAuthRandomEntangled");
    v6 = 45;
    if (isMetaClass)
    {
      v6 = 43;
    }

    v2(6, "%c[%{public}s %{public}s]:%i ", v6, ClassName, Name, 810);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v7 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = object_getClass(v0);
    if (class_isMetaClass(v8))
    {
      v9 = 43;
    }

    else
    {
      v9 = 45;
    }

    *buf = 67109890;
    v12 = v9;
    v13 = 2082;
    v14 = object_getClassName(v0);
    v15 = 2082;
    v16 = sel_getName("setAuthRandomEntangled");
    v17 = 1024;
    v18 = 810;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  byte_10035DB90 = 1;
}

BOOL sub_10015CAD8(_BOOL8 result)
{
  if (result)
  {
    v1 = [*(result + 24) info];
    v2 = [v1 deviceType];

    if (v2 == 100)
    {
      return 0;
    }

    else
    {
      result = 0;
      if (v2 != 200)
      {
        return v2 != 210;
      }
    }
  }

  return result;
}

id sub_10015CB40(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [[NSData alloc] initWithBytes:&unk_1002977D9 length:8];
    v70 = 0;
    v5 = sub_100158A6C(a1, v4, &v70);
    v6 = v70;

    if (v5)
    {
      if ([v5 status] == 36864)
      {
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        obj = v3;
        v63 = [obj countByEnumeratingWithState:&v66 objects:v83 count:16];
        if (v63)
        {
          v56 = v3;
          v62 = *v67;
          v7 = obj;
          do
          {
            for (i = 0; i != v63; i = i + 1)
            {
              if (*v67 != v62)
              {
                objc_enumerationMutation(v7);
              }

              v9 = *(*(&v66 + 1) + 8 * i);
              v10 = [v9 identifierAsData];
              if ([v10 length] >= 5 && objc_msgSend(v10, "length") < 0x11)
              {
                v65[0] = 79;
                v65[1] = [v10 length];
                v22 = [NSMutableData dataWithBytes:v65 length:2];
                [v22 appendData:v10];
                v64 = v6;
                v23 = sub_10015837C(a1, 128, 240, 16, 1, v22, 0, 0, &v64);
                v24 = v64;

                if ([v23 status] != 36864)
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  Logger = NFLogGetLogger();
                  if (Logger)
                  {
                    v26 = Logger;
                    Class = object_getClass(a1);
                    isMetaClass = class_isMetaClass(Class);
                    ClassName = object_getClassName(a1);
                    Name = sel_getName("mountCOXForApplets:");
                    [v9 identifier];
                    v30 = v29 = v24;
                    v55 = [v23 status];
                    v31 = 45;
                    if (isMetaClass)
                    {
                      v31 = 43;
                    }

                    v26(3, "%c[%{public}s %{public}s]:%i COX mount %@ error:0x%02X", v31, ClassName, Name, 873, v30, v55);

                    v24 = v29;
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v32 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                  {
                    v33 = object_getClass(a1);
                    if (class_isMetaClass(v33))
                    {
                      v34 = 43;
                    }

                    else
                    {
                      v34 = 45;
                    }

                    v60 = v34;
                    v58 = object_getClassName(a1);
                    v35 = v24;
                    v36 = sel_getName("mountCOXForApplets:");
                    v37 = [v9 identifier];
                    v38 = [v23 status];
                    *buf = 67110402;
                    v72 = v60;
                    v73 = 2082;
                    v74 = v58;
                    v75 = 2082;
                    v76 = v36;
                    v24 = v35;
                    v77 = 1024;
                    v78 = 873;
                    v79 = 2112;
                    v80 = v37;
                    v81 = 1024;
                    v82 = v38;
                    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i COX mount %@ error:0x%02X", buf, 0x32u);
                  }
                }

                v5 = v23;
                v6 = v24;
                v7 = obj;
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v11 = NFLogGetLogger();
                if (v11)
                {
                  v12 = v11;
                  v13 = object_getClass(a1);
                  v14 = class_isMetaClass(v13);
                  v15 = object_getClassName(a1);
                  v54 = sel_getName("mountCOXForApplets:");
                  v16 = 45;
                  if (v14)
                  {
                    v16 = 43;
                  }

                  v12(4, "%c[%{public}s %{public}s]:%i Skipping invalid AID due to length", v16, v15, v54, 856);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v17 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  v18 = object_getClass(a1);
                  if (class_isMetaClass(v18))
                  {
                    v19 = 43;
                  }

                  else
                  {
                    v19 = 45;
                  }

                  v20 = object_getClassName(a1);
                  v21 = sel_getName("mountCOXForApplets:");
                  *buf = 67109890;
                  v72 = v19;
                  v73 = 2082;
                  v74 = v20;
                  v75 = 2082;
                  v76 = v21;
                  v77 = 1024;
                  v78 = 856;
                  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Skipping invalid AID due to length", buf, 0x22u);
                }
              }
            }

            v63 = [v7 countByEnumeratingWithState:&v66 objects:v83 count:16];
          }

          while (v63);
          v39 = 0;
          v40 = v7;
          v3 = v56;
        }

        else
        {
          v39 = 0;
          v40 = obj;
        }
      }

      else
      {
        v45 = [NSError alloc];
        v40 = [NSString stringWithUTF8String:"nfcd"];
        v84[0] = NSLocalizedDescriptionKey;
        v46 = [NSString stringWithUTF8String:"Command Error"];
        v85[0] = v46;
        v85[1] = &off_100332658;
        v84[1] = @"Line";
        v84[2] = @"Method";
        v47 = [[NSString alloc] initWithFormat:@"%s", sel_getName("mountCOXForApplets:")];
        v85[2] = v47;
        v84[3] = NSDebugDescriptionErrorKey;
        v48 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("mountCOXForApplets:"), 845];
        v85[3] = v48;
        v49 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:4];
        v39 = [v45 initWithDomain:v40 code:16 userInfo:v49];
      }
    }

    else
    {
      v41 = [NSError alloc];
      v42 = [NSString stringWithUTF8String:"nfcd"];
      if (v6)
      {
        v43 = [v6 code];
        v88[0] = NSLocalizedDescriptionKey;
        if ([v6 code] > 75)
        {
          v44 = 76;
        }

        else
        {
          v44 = [v6 code];
        }

        v40 = [NSString stringWithUTF8String:off_100319CA0[v44]];
        v89[0] = v40;
        v89[1] = v6;
        v88[1] = NSUnderlyingErrorKey;
        v88[2] = @"Line";
        v89[2] = &off_100332640;
        v88[3] = @"Method";
        v50 = [[NSString alloc] initWithFormat:@"%s", sel_getName("mountCOXForApplets:")];
        v89[3] = v50;
        v88[4] = NSDebugDescriptionErrorKey;
        v51 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("mountCOXForApplets:"), 843];
        v89[4] = v51;
        v52 = [NSDictionary dictionaryWithObjects:v89 forKeys:v88 count:5];
        v39 = [v41 initWithDomain:v42 code:v43 userInfo:v52];

        v5 = v42;
      }

      else
      {
        v86 = NSLocalizedDescriptionKey;
        v5 = [NSString stringWithUTF8String:"Command Error"];
        v87 = v5;
        v40 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        v39 = [v41 initWithDomain:v42 code:16 userInfo:v40];
        v6 = v42;
      }
    }
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

id sub_10015D3EC(id *a1)
{
  if (a1)
  {
    v2 = [[NSData alloc] initWithBytes:&unk_1002977D9 length:8];
    v38 = 0;
    v3 = sub_100158A6C(a1, v2, &v38);
    v4 = v38;

    if (v3)
    {
      if ([v3 status] == 36864)
      {
        v37 = v4;
        v5 = sub_10015837C(a1, 128, 240, 16, 0, 0, 0, 0, &v37);
        v6 = v37;

        if ([v5 status] == 36864)
        {
          v7 = 0;
LABEL_24:

          goto LABEL_25;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v18 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("globalUnmountCOX");
          v36 = [v5 status];
          v23 = 45;
          if (isMetaClass)
          {
            v23 = 43;
          }

          v18(3, "%c[%{public}s %{public}s]:%i COX unmount error:0x%02X", v23, ClassName, Name, 901, v36);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v9 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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

          v26 = object_getClassName(a1);
          v27 = sel_getName("globalUnmountCOX");
          v28 = [v5 status];
          *buf = 67110146;
          v40 = v25;
          v41 = 2082;
          v42 = v26;
          v43 = 2082;
          v44 = v27;
          v45 = 1024;
          v46 = 901;
          v47 = 1024;
          v48 = v28;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i COX unmount error:0x%02X", buf, 0x28u);
        }

        v7 = 0;
        v3 = v5;
        v4 = v6;
      }

      else
      {
        v12 = [NSError alloc];
        v9 = [NSString stringWithUTF8String:"nfcd"];
        v49[0] = NSLocalizedDescriptionKey;
        v13 = [NSString stringWithUTF8String:"Command Error"];
        v50[0] = v13;
        v50[1] = &off_100332688;
        v49[1] = @"Line";
        v49[2] = @"Method";
        v14 = [[NSString alloc] initWithFormat:@"%s", sel_getName("globalUnmountCOX")];
        v50[2] = v14;
        v49[3] = NSDebugDescriptionErrorKey;
        v15 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("globalUnmountCOX"), 889];
        v50[3] = v15;
        v16 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:4];
        v7 = [v12 initWithDomain:v9 code:16 userInfo:v16];
      }
    }

    else
    {
      v8 = [NSError alloc];
      v9 = [NSString stringWithUTF8String:"nfcd"];
      if (v4)
      {
        v10 = [v4 code];
        v53[0] = NSLocalizedDescriptionKey;
        if ([v4 code] > 75)
        {
          v11 = 76;
        }

        else
        {
          v11 = [v4 code];
        }

        v31 = [NSString stringWithUTF8String:off_100319CA0[v11]];
        v54[0] = v31;
        v54[1] = v4;
        v53[1] = NSUnderlyingErrorKey;
        v53[2] = @"Line";
        v54[2] = &off_100332670;
        v53[3] = @"Method";
        v32 = [[NSString alloc] initWithFormat:@"%s", sel_getName("globalUnmountCOX")];
        v54[3] = v32;
        v53[4] = NSDebugDescriptionErrorKey;
        v33 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("globalUnmountCOX"), 887];
        v54[4] = v33;
        v34 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:5];
        v7 = [v8 initWithDomain:v9 code:v10 userInfo:v34];

        v3 = 0;
      }

      else
      {
        v51 = NSLocalizedDescriptionKey;
        v29 = [NSString stringWithUTF8String:"Command Error"];
        v52 = v29;
        v30 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        v7 = [v8 initWithDomain:v9 code:16 userInfo:v30];

        v3 = 0;
        v4 = 0;
      }
    }

    v5 = v3;
    v6 = v4;
    goto LABEL_24;
  }

  v7 = 0;
LABEL_25:

  return v7;
}

void sub_100160CD0(uint64_t a1, void *a2)
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
    Name = sel_getName(*(a1 + 40));
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i TSM update notification for AID %{public}@", v8, ClassName, Name, 473, v3);
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
    *buf = 67110146;
    *v19 = v11;
    *&v19[4] = 2082;
    *&v19[6] = v12;
    *&v19[14] = 2082;
    *&v19[16] = v13;
    v20 = 1024;
    v21 = 473;
    v22 = 2114;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i TSM update notification for AID %{public}@", buf, 0x2Cu);
  }

  v14 = +[_NFHardwareManager sharedHardwareManager];
  sub_1000E7BDC(v14, "com.apple.stockholm.se.update.by.tsm", v3);

  v15 = NFSharedSignpostLog();
  if (os_signpost_enabled(v15))
  {
    *buf = 136315394;
    *v19 = "com.apple.stockholm.se.update.by.tsm";
    *&v19[8] = 2112;
    *&v19[10] = v3;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UPDATE_BY_TSM_NOTIFICATION", "%s, key: %@", buf, 0x16u);
  }
}

void sub_100161328(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 524, v8);
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
    v14 = sel_getName(*(a1 + 56));
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v84 = v12;
    v85 = 2082;
    v86 = v13;
    v87 = 2082;
    v88 = v14;
    v89 = 1024;
    v90 = 524;
    v91 = 2114;
    v92 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v32 = objc_opt_new();
    v36 = *(a1 + 32);
    v37 = [v36 embeddedSecureElementWrapper];
    LOBYTE(v36) = [v36 _activateSecureElementWrapper:v37];

    if (v36)
    {
      v38 = [*(a1 + 32) embeddedSecureElementWrapper];
      v39 = *(a1 + 40);
      v40 = *(a1 + 64);
      v80 = 0;
      v41 = sub_100186A84(v38, v39, v40, &v80);
      v33 = v80;

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
          if (v41 >= 0x4C)
          {
            v48 = 76;
          }

          else
          {
            v48 = v41;
          }

          v79 = off_100319F08[v48];
          v49 = 43;
          if (!v45)
          {
            v49 = 45;
          }

          v43(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v49, v46, v47, 539, @"Returned", v41, v79);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v50 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
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
          if (v41 >= 0x4C)
          {
            v55 = 76;
          }

          else
          {
            v55 = v41;
          }

          v56 = off_100319F08[v55];
          *buf = 67110658;
          v84 = v52;
          v85 = 2082;
          v86 = v53;
          v87 = 2082;
          v88 = v54;
          v89 = 1024;
          v90 = 539;
          v91 = 2112;
          v92 = @"Returned";
          v93 = 1024;
          v94 = v41;
          v95 = 2080;
          v96 = v56;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ err=%d %s", buf, 0x3Cu);
        }

        else if (v41 >= 0x4C)
        {
          v55 = 76;
        }

        else
        {
          v55 = v41;
        }

        v72 = *(a1 + 48);
        v73 = [NSError alloc];
        v74 = [NSString stringWithUTF8String:"nfcd"];
        v81 = NSLocalizedDescriptionKey;
        v75 = [NSString stringWithUTF8String:off_100319F08[v55]];
        v82 = v75;
        v76 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v77 = [v73 initWithDomain:v74 code:v41 userInfo:v76];
        (*(v72 + 16))(v72, 0, v77);
      }

      else
      {
        [v32 addObject:v33];
        (*(*(a1 + 48) + 16))();
      }

      goto LABEL_25;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v57 = NFLogGetLogger();
    if (v57)
    {
      v58 = v57;
      v59 = object_getClass(*(a1 + 32));
      v60 = class_isMetaClass(v59);
      v61 = object_getClassName(*(a1 + 32));
      v78 = sel_getName(*(a1 + 56));
      v62 = 45;
      if (v60)
      {
        v62 = 43;
      }

      v58(3, "%c[%{public}s %{public}s]:%i Failed to activate embedded secure element", v62, v61, v78, 531);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v63 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
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
      v67 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v84 = v65;
      v85 = 2082;
      v86 = v66;
      v87 = 2082;
      v88 = v67;
      v89 = 1024;
      v90 = 531;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to activate embedded secure element", buf, 0x22u);
    }

    v68 = *(a1 + 48);
    v69 = [NSError alloc];
    v33 = [NSString stringWithUTF8String:"nfcd"];
    v97 = NSLocalizedDescriptionKey;
    v34 = [NSString stringWithUTF8String:"Stack Error"];
    v98 = v34;
    v70 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];
    v71 = [v69 initWithDomain:v33 code:15 userInfo:v70];
    (*(v68 + 16))(v68, 0, v71);

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
    v21 = sel_getName(*(a1 + 56));
    v22 = [*(a1 + 32) sessionUID];
    v23 = 45;
    if (v19)
    {
      v23 = 43;
    }

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 526, v22);
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
    v28 = sel_getName(*(a1 + 56));
    v29 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v84 = v26;
    v85 = 2082;
    v86 = v27;
    v87 = 2082;
    v88 = v28;
    v89 = 1024;
    v90 = 526;
    v91 = 2114;
    v92 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 48);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v99 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v100 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
    v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
    (*(v30 + 16))(v30, 0, v35);

    goto LABEL_24;
  }
}

void sub_100161CC0(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 554, v8);
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
    v14 = sel_getName(*(a1 + 56));
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v99 = v12;
    v100 = 2082;
    v101 = v13;
    v102 = 2082;
    v103 = v14;
    v104 = 1024;
    v105 = 554;
    v106 = 2114;
    v107 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v39 = *(a1 + 32);
    v40 = [v39 embeddedSecureElementWrapper];
    LOBYTE(v39) = [v39 _activateSecureElementWrapper:v40];

    if (v39)
    {
      v41 = [*(a1 + 32) embeddedSecureElementWrapper];
      v42 = [v41 handle];
      v43 = [v42 info];
      v44 = [v43 restrictedMode];

      if (!v44)
      {
        v58 = [*(a1 + 32) embeddedSecureElementWrapper];
        v59 = *(a1 + 40);
        v95 = 0;
        v60 = sub_1001FEB84(v58, v59, 3, &v95);
        v32 = v95;

        if (v60)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v61 = NFLogGetLogger();
          if (v61)
          {
            v62 = v61;
            v63 = object_getClass(*(a1 + 32));
            v64 = class_isMetaClass(v63);
            v65 = object_getClassName(*(a1 + 32));
            v66 = sel_getName(*(a1 + 56));
            if (v60 >= 0x4C)
            {
              v67 = 76;
            }

            else
            {
              v67 = v60;
            }

            v94 = off_100319F08[v67];
            v68 = 43;
            if (!v64)
            {
              v68 = 45;
            }

            v62(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v68, v65, v66, 571, @"Returned", v60, v94);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v69 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            v70 = object_getClass(*(a1 + 32));
            if (class_isMetaClass(v70))
            {
              v71 = 43;
            }

            else
            {
              v71 = 45;
            }

            v72 = object_getClassName(*(a1 + 32));
            v73 = sel_getName(*(a1 + 56));
            if (v60 >= 0x4C)
            {
              v74 = 76;
            }

            else
            {
              v74 = v60;
            }

            v75 = off_100319F08[v74];
            *buf = 67110658;
            v99 = v71;
            v100 = 2082;
            v101 = v72;
            v102 = 2082;
            v103 = v73;
            v104 = 1024;
            v105 = 571;
            v106 = 2112;
            v107 = @"Returned";
            v108 = 1024;
            v109 = v60;
            v110 = 2080;
            v111 = v75;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ err=%d %s", buf, 0x3Cu);
          }

          else if (v60 >= 0x4C)
          {
            v74 = 76;
          }

          else
          {
            v74 = v60;
          }

          v88 = *(a1 + 48);
          v89 = [NSError alloc];
          v33 = [NSString stringWithUTF8String:"nfcd"];
          v96 = NSLocalizedDescriptionKey;
          v90 = [NSString stringWithUTF8String:off_100319F08[v74]];
          v97 = v90;
          v91 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
          v92 = [v89 initWithDomain:v33 code:v60 userInfo:v91];
          (*(v88 + 16))(v88, 0, 0, v92);
        }

        else
        {
          v33 = objc_opt_new();
          v76 = [*(a1 + 32) embeddedSecureElementWrapper];
          v77 = [v76 rsaCertificate];

          if (v77)
          {
            v78 = [*(a1 + 32) embeddedSecureElementWrapper];
            v79 = [v78 rsaCertificate];
            [v33 setObject:v79 forKeyedSubscript:@"RSA"];
          }

          v80 = [*(a1 + 32) embeddedSecureElementWrapper];
          v81 = [v80 eccCertificate];

          if (v81)
          {
            v82 = [*(a1 + 32) embeddedSecureElementWrapper];
            v83 = [v82 eccCertificate];
            [v33 setObject:v83 forKeyedSubscript:@"ECDSA"];
          }

          v84 = [*(a1 + 32) embeddedSecureElementWrapper];
          v85 = [v84 eckaCertificate];

          if (v85)
          {
            v86 = [*(a1 + 32) embeddedSecureElementWrapper];
            v87 = [v86 eckaCertificate];
            [v33 setObject:v87 forKeyedSubscript:@"ECKA"];
          }

          (*(*(a1 + 48) + 16))();
        }

        goto LABEL_25;
      }

      v30 = *(a1 + 48);
      v45 = [NSError alloc];
      v32 = [NSString stringWithUTF8String:"nfcd"];
      v112 = NSLocalizedDescriptionKey;
      v33 = [NSString stringWithUTF8String:"Restricted Mode"];
      v113 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v113 forKeys:&v112 count:1];
      v35 = v45;
      v36 = v32;
      v37 = 24;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v46 = NFLogGetLogger();
      if (v46)
      {
        v47 = v46;
        v48 = object_getClass(*(a1 + 32));
        v49 = class_isMetaClass(v48);
        v50 = object_getClassName(*(a1 + 32));
        v93 = sel_getName(*(a1 + 56));
        v51 = 45;
        if (v49)
        {
          v51 = 43;
        }

        v47(3, "%c[%{public}s %{public}s]:%i Failed to activate embedded secure element", v51, v50, v93, 559);
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
        v99 = v54;
        v100 = 2082;
        v101 = v55;
        v102 = 2082;
        v103 = v56;
        v104 = 1024;
        v105 = 559;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to activate embedded secure element", buf, 0x22u);
      }

      v30 = *(a1 + 48);
      v57 = [NSError alloc];
      v32 = [NSString stringWithUTF8String:"nfcd"];
      v114 = NSLocalizedDescriptionKey;
      v33 = [NSString stringWithUTF8String:"Stack Error"];
      v115 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v115 forKeys:&v114 count:1];
      v35 = v57;
      v36 = v32;
      v37 = 15;
    }

LABEL_24:
    v38 = [v35 initWithDomain:v36 code:v37 userInfo:v34];
    (*(v30 + 16))(v30, 0, 0, v38);

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
    v21 = sel_getName(*(a1 + 56));
    v22 = [*(a1 + 32) sessionUID];
    v23 = 45;
    if (v19)
    {
      v23 = 43;
    }

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 556, v22);
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
    v28 = sel_getName(*(a1 + 56));
    v29 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v99 = v26;
    v100 = 2082;
    v101 = v27;
    v102 = 2082;
    v103 = v28;
    v104 = 1024;
    v105 = 556;
    v106 = 2114;
    v107 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 48);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v116 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v117 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v117 forKeys:&v116 count:1];
    v35 = v31;
    v36 = v32;
    v37 = 54;
    goto LABEL_24;
  }
}

void sub_10016281C(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 589, v8);
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
    v14 = sel_getName(*(a1 + 56));
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v121 = v12;
    v122 = 2082;
    v123 = v13;
    v124 = 2082;
    v125 = v14;
    v126 = 1024;
    v127 = 589;
    v128 = 2114;
    v129 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v39 = *(a1 + 32);
    v40 = [v39 embeddedSecureElementWrapper];
    LOBYTE(v39) = [v39 _activateSecureElementWrapper:v40];

    if ((v39 & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v46 = NFLogGetLogger();
      if (v46)
      {
        v47 = v46;
        v48 = object_getClass(*(a1 + 32));
        v49 = class_isMetaClass(v48);
        v50 = object_getClassName(*(a1 + 32));
        v112 = sel_getName(*(a1 + 56));
        v51 = 45;
        if (v49)
        {
          v51 = 43;
        }

        v47(3, "%c[%{public}s %{public}s]:%i Failed to activate embedded secure element", v51, v50, v112, 594);
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
        v121 = v54;
        v122 = 2082;
        v123 = v55;
        v124 = 2082;
        v125 = v56;
        v126 = 1024;
        v127 = 594;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to activate embedded secure element", buf, 0x22u);
      }

      v30 = *(a1 + 48);
      v57 = [NSError alloc];
      v32 = [NSString stringWithUTF8String:"nfcd"];
      v138 = NSLocalizedDescriptionKey;
      v33 = [NSString stringWithUTF8String:"Stack Error"];
      v139 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v139 forKeys:&v138 count:1];
      v35 = v57;
      v36 = v32;
      v37 = 15;
      goto LABEL_24;
    }

    v41 = [*(a1 + 32) embeddedSecureElementWrapper];
    v42 = [v41 handle];
    v43 = [v42 info];
    v44 = [v43 restrictedMode];

    if (v44)
    {
      v30 = *(a1 + 48);
      v45 = [NSError alloc];
      v32 = [NSString stringWithUTF8String:"nfcd"];
      v136 = NSLocalizedDescriptionKey;
      v33 = [NSString stringWithUTF8String:"Restricted Mode"];
      v137 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v137 forKeys:&v136 count:1];
      v35 = v45;
      v36 = v32;
      v37 = 24;
      goto LABEL_24;
    }

    v32 = objc_opt_new();
    v58 = [*(a1 + 32) embeddedSecureElementWrapper];
    v59 = [v58 rsaCertificate];
    [v32 setObject:v59 forKeyedSubscript:@"rsa"];

    v60 = [*(a1 + 32) embeddedSecureElementWrapper];
    v61 = [v60 eccCertificate];
    [v32 setObject:v61 forKeyedSubscript:@"ecc"];

    v62 = [*(a1 + 32) embeddedSecureElementWrapper];
    v63 = [v62 eckaCertificate];
    [v32 setObject:v63 forKeyedSubscript:@"ecka"];

    v64 = [*(a1 + 32) embeddedSecureElementWrapper];
    v65 = [v64 serialNumber];
    [v32 setObject:v65 forKeyedSubscript:@"seid"];

    [v32 setObject:&off_1003326D0 forKeyedSubscript:@"certVersion"];
    LODWORD(v64) = *(a1 + 64);
    v66 = [*(a1 + 32) embeddedSecureElementWrapper];
    v67 = v66;
    v68 = *(a1 + 40);
    if (v64 != 1)
    {
      v116 = 0;
      v77 = sub_1001FEB84(v66, v68, 3, &v116);
      v33 = v116;

      if (v77)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v78 = NFLogGetLogger();
        if (v78)
        {
          v79 = v78;
          v80 = object_getClass(*(a1 + 32));
          v81 = class_isMetaClass(v80);
          v82 = object_getClassName(*(a1 + 32));
          v83 = sel_getName(*(a1 + 56));
          if (v77 >= 0x4C)
          {
            v84 = 76;
          }

          else
          {
            v84 = v77;
          }

          v113 = off_100319F08[v84];
          v85 = 43;
          if (!v81)
          {
            v85 = 45;
          }

          v79(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v85, v82, v83, 642, @"Returned", v77, v113);
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
          v90 = sel_getName(*(a1 + 56));
          if (v77 >= 0x4C)
          {
            v91 = 76;
          }

          else
          {
            v91 = v77;
          }

          v92 = off_100319F08[v91];
          *buf = 67110658;
          v121 = v88;
          v122 = 2082;
          v123 = v89;
          v124 = 2082;
          v125 = v90;
          v126 = 1024;
          v127 = 642;
          v128 = 2112;
          v129 = @"Returned";
          v130 = 1024;
          v131 = v77;
          v132 = 2080;
          v133 = v92;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ err=%d %s", buf, 0x3Cu);
        }

        else if (v77 >= 0x4C)
        {
          v91 = 76;
        }

        else
        {
          v91 = v77;
        }

        v95 = *(a1 + 48);
        v96 = [NSError alloc];
        v34 = [NSString stringWithUTF8String:"nfcd"];
        v118 = NSLocalizedDescriptionKey;
        v97 = [NSString stringWithUTF8String:off_100319F08[v91]];
        v119 = v97;
        v98 = [NSDictionary dictionaryWithObjects:&v119 forKeys:&v118 count:1];
        v99 = [v96 initWithDomain:v34 code:v77 userInfo:v98];
        (*(v95 + 16))(v95, 0, 0, v99);
      }

      else
      {
        v34 = [[NFSignatureInfo alloc] initWithDictionary:v32];
        (*(*(a1 + 48) + 16))();
      }

      goto LABEL_25;
    }

    v117 = 0;
    v69 = sub_100203358(v66, v68, &v117);
    v33 = v117;

    if (v69)
    {
      v70 = *(a1 + 48);
      v71 = [NSError alloc];
      v34 = [NSString stringWithUTF8String:"nfcd"];
      v72 = v69;
      v134 = NSLocalizedDescriptionKey;
      if (v69 >= 0x4C)
      {
        v73 = 76;
      }

      else
      {
        v73 = v69;
      }

      v74 = [NSString stringWithUTF8String:off_100319F08[v73]];
      v135 = v74;
      v75 = [NSDictionary dictionaryWithObjects:&v135 forKeys:&v134 count:1];
      v76 = [v71 initWithDomain:v34 code:v72 userInfo:v75];
      (*(v70 + 16))(v70, 0, 0, v76);

LABEL_78:
      goto LABEL_25;
    }

    v93 = [v33 objectForKeyedSubscript:@"kPlatformId"];

    if (v93)
    {
      v94 = [v33 objectForKeyedSubscript:@"kPlatformId"];
      [v32 setObject:v94 forKeyedSubscript:@"platformid"];
    }

    else
    {
      v94 = [*(a1 + 32) embeddedSecureElementWrapper];
      v100 = [v94 handle];
      if (v100)
      {
        v101 = v100;
        v102 = [*(a1 + 32) embeddedSecureElementWrapper];
        v103 = [v102 handle];
        v104 = [v103 info];
        if (v104)
        {
          v105 = v104;
          v114 = [*(a1 + 32) embeddedSecureElementWrapper];
          v106 = [v114 handle];
          [v106 info];
          v107 = v115 = v102;
          v108 = [v107 platformIdentifier];

          if (!v108)
          {
LABEL_75:
            v109 = [v33 objectForKeyedSubscript:@"jsblSequenceCounter"];

            if (v109)
            {
              v110 = [v33 objectForKeyedSubscript:@"jsblSequenceCounter"];
              [v32 setObject:v110 forKeyedSubscript:@"jsblCounter"];
            }

            v34 = [[NFSignatureInfo alloc] initWithDictionary:v32];
            v111 = *(a1 + 48);
            v74 = [v33 objectForKeyedSubscript:@"SignedResponse"];
            (*(v111 + 16))(v111, v74, v34, 0);
            goto LABEL_78;
          }

          v94 = [*(a1 + 32) embeddedSecureElementWrapper];
          v101 = [v94 handle];
          v102 = [v101 info];
          v103 = [v102 platformIdentifier];
          [v32 setObject:v103 forKeyedSubscript:@"platformid"];
        }
      }
    }

    goto LABEL_75;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v17 = v16;
    v18 = object_getClass(*(a1 + 32));
    v19 = class_isMetaClass(v18);
    v20 = object_getClassName(*(a1 + 32));
    v21 = sel_getName(*(a1 + 56));
    v22 = [*(a1 + 32) sessionUID];
    v23 = 45;
    if (v19)
    {
      v23 = 43;
    }

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 591, v22);
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
    v28 = sel_getName(*(a1 + 56));
    v29 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v121 = v26;
    v122 = 2082;
    v123 = v27;
    v124 = 2082;
    v125 = v28;
    v126 = 1024;
    v127 = 591;
    v128 = 2114;
    v129 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 48);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v140 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v141 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v141 forKeys:&v140 count:1];
    v35 = v31;
    v36 = v32;
    v37 = 54;
LABEL_24:
    v38 = [v35 initWithDomain:v36 code:v37 userInfo:v34];
    (*(v30 + 16))(v30, 0, 0, v38);

LABEL_25:
  }
}

void sub_100163690(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 658, v8);
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
    v134 = 658;
    v135 = 2114;
    v136 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v32 = [*(a1 + 32) _getSecureElementForAID:*(a1 + 40)];
    if (([*(a1 + 32) _activateSecureElementWrapper:v32] & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v45 = NFLogGetLogger();
      if (v45)
      {
        v46 = v45;
        v47 = object_getClass(*(a1 + 32));
        v48 = class_isMetaClass(v47);
        v49 = object_getClassName(*(a1 + 32));
        v122 = sel_getName(*(a1 + 64));
        v50 = 45;
        if (v48)
        {
          v50 = 43;
        }

        v46(3, "%c[%{public}s %{public}s]:%i Failed to activate secure element", v50, v49, v122, 665);
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
        v55 = sel_getName(*(a1 + 64));
        *buf = 67109890;
        v128 = v53;
        v129 = 2082;
        v130 = v54;
        v131 = 2082;
        v132 = v55;
        v133 = 1024;
        v134 = 665;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to activate secure element", buf, 0x22u);
      }

      v40 = *(a1 + 56);
      v56 = [NSError alloc];
      v33 = [NSString stringWithUTF8String:"nfcd"];
      v143 = NSLocalizedDescriptionKey;
      v34 = [NSString stringWithUTF8String:"Stack Error"];
      v144 = v34;
      v35 = [NSDictionary dictionaryWithObjects:&v144 forKeys:&v143 count:1];
      v42 = v56;
      v43 = v33;
      v44 = 15;
      goto LABEL_39;
    }

    v36 = [*(a1 + 32) embeddedSecureElementWrapper];
    v37 = [v36 handle];
    v38 = [v37 info];
    v39 = [v38 restrictedMode];

    if (v39)
    {
      v40 = *(a1 + 56);
      v41 = [NSError alloc];
      v33 = [NSString stringWithUTF8String:"nfcd"];
      v141 = NSLocalizedDescriptionKey;
      v34 = [NSString stringWithUTF8String:"Restricted Mode"];
      v142 = v34;
      v35 = [NSDictionary dictionaryWithObjects:&v142 forKeys:&v141 count:1];
      v42 = v41;
      v43 = v33;
      v44 = 24;
LABEL_39:
      v57 = [v42 initWithDomain:v43 code:v44 userInfo:v35];
      (*(v40 + 16))(v40, 0, 0, v57);

      goto LABEL_24;
    }

    v58 = [*(a1 + 32) embeddedSecureElementWrapper];
    v59 = *(a1 + 48);
    v124 = 0;
    v60 = sub_1001FEB84(v58, v59, 3, &v124);
    v33 = v124;

    if (v60)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v61 = NFLogGetLogger();
      if (v61)
      {
        v62 = v61;
        v63 = object_getClass(*(a1 + 32));
        v64 = class_isMetaClass(v63);
        v65 = object_getClassName(*(a1 + 32));
        v66 = sel_getName(*(a1 + 64));
        if (v60 >= 0x4C)
        {
          v67 = 76;
        }

        else
        {
          v67 = v60;
        }

        v123 = off_100319F08[v67];
        v68 = 43;
        if (!v64)
        {
          v68 = 45;
        }

        v62(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v68, v65, v66, 677, @"Returned", v60, v123);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v69 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        v70 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v70))
        {
          v71 = 43;
        }

        else
        {
          v71 = 45;
        }

        v72 = object_getClassName(*(a1 + 32));
        v73 = sel_getName(*(a1 + 64));
        if (v60 >= 0x4C)
        {
          v74 = 76;
        }

        else
        {
          v74 = v60;
        }

        v75 = off_100319F08[v74];
        *buf = 67110658;
        v128 = v71;
        v129 = 2082;
        v130 = v72;
        v131 = 2082;
        v132 = v73;
        v133 = 1024;
        v134 = 677;
        v135 = 2112;
        v136 = @"Returned";
        v137 = 1024;
        v138 = v60;
        v139 = 2080;
        v140 = v75;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ err=%d %s", buf, 0x3Cu);
      }

      else if (v60 >= 0x4C)
      {
        v74 = 76;
      }

      else
      {
        v74 = v60;
      }

      v117 = *(a1 + 56);
      v118 = [NSError alloc];
      v34 = [NSString stringWithUTF8String:"nfcd"];
      v119 = v60;
      v125 = NSLocalizedDescriptionKey;
      v35 = [NSString stringWithUTF8String:off_100319F08[v74]];
      v126 = v35;
      v120 = [NSDictionary dictionaryWithObjects:&v126 forKeys:&v125 count:1];
      v121 = [v118 initWithDomain:v34 code:v119 userInfo:v120];
      (*(v117 + 16))(v117, 0, 0, v121);

      goto LABEL_24;
    }

    v34 = objc_opt_new();
    v76 = [*(a1 + 32) embeddedSecureElementWrapper];
    v77 = [v76 rsaCertificate];

    if (v77)
    {
      v78 = [*(a1 + 32) embeddedSecureElementWrapper];
      v79 = [v78 rsaCertificate];
      [v34 setObject:v79 forKeyedSubscript:@"rsa"];
    }

    v80 = [*(a1 + 32) embeddedSecureElementWrapper];
    v81 = [v80 eccCertificate];

    if (v81)
    {
      v82 = [*(a1 + 32) embeddedSecureElementWrapper];
      v83 = [v82 eccCertificate];
      [v34 setObject:v83 forKeyedSubscript:@"ecc"];
    }

    v84 = [*(a1 + 32) embeddedSecureElementWrapper];
    v85 = [v84 eckaCertificate];

    if (v85)
    {
      v86 = [*(a1 + 32) embeddedSecureElementWrapper];
      v87 = [v86 eckaCertificate];
      [v34 setObject:v87 forKeyedSubscript:@"ecka"];
    }

    [v34 setObject:&off_1003326D0 forKeyedSubscript:@"certVersion"];
    v88 = [*(a1 + 32) embeddedSecureElementWrapper];
    v89 = [v88 handle];
    if (v89)
    {
      v90 = v89;
      v91 = [*(a1 + 32) embeddedSecureElementWrapper];
      v92 = [v91 handle];
      v93 = [v92 info];

      if (!v93)
      {
        goto LABEL_71;
      }

      v94 = [*(a1 + 32) embeddedSecureElementWrapper];
      v95 = [v94 handle];
      v96 = [v95 info];
      v97 = [v96 serialNumber];

      if (v97)
      {
        v98 = [*(a1 + 32) embeddedSecureElementWrapper];
        v99 = [v98 serialNumber];
        [v34 setObject:v99 forKeyedSubscript:@"seid"];
      }

      v100 = [*(a1 + 32) embeddedSecureElementWrapper];
      v101 = [v100 handle];
      v102 = [v101 info];
      v103 = [v102 platformIdentifier];

      if (v103)
      {
        v104 = [*(a1 + 32) embeddedSecureElementWrapper];
        v105 = [v104 handle];
        v106 = [v105 info];
        v107 = [v106 platformIdentifier];
        [v34 setObject:v107 forKeyedSubscript:@"platformid"];
      }

      v108 = [*(a1 + 32) embeddedSecureElementWrapper];
      v109 = [v108 handle];
      v110 = [v109 info];
      v111 = [v110 sequenceCounter];

      if (!v111)
      {
        goto LABEL_71;
      }

      v112 = [NSString alloc];
      v88 = [*(a1 + 32) embeddedSecureElementWrapper];
      v113 = [v88 handle];
      v114 = [v113 info];
      v115 = [v114 sequenceCounter];
      v116 = [v112 initWithFormat:@"%X", objc_msgSend(v115, "intValue")];
      [v34 setObject:v116 forKeyedSubscript:@"jsblCounter"];
    }

LABEL_71:
    v35 = [[NFSignatureInfo alloc] initWithDictionary:v34];
    (*(*(a1 + 56) + 16))(*(a1 + 56), v33, v35, 0);
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

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 660, v22);
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
    v134 = 660;
    v135 = 2114;
    v136 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 56);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v145 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v146 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v146 forKeys:&v145 count:1];
    v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
    (*(v30 + 16))(v30, 0, 0, v35);
LABEL_24:
  }
}

void sub_10016447C(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 713, v8);
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
    v14 = sel_getName(*(a1 + 56));
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v60 = v12;
    v61 = 2082;
    v62 = v13;
    v63 = 2082;
    v64 = v14;
    v65 = 1024;
    v66 = 713;
    v67 = 2114;
    v68 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v32 = [*(a1 + 32) _getSecureElementWrapperForSEID:*(a1 + 40)];
    if ([*(a1 + 32) _activateSecureElementWrapper:v32])
    {
      v39 = [*(a1 + 32) embeddedSecureElementWrapper];
      v40 = [v39 handle];
      v41 = [v40 info];
      v42 = [v41 restrictedMode];

      if (!v42)
      {
        v50 = [*(a1 + 32) embeddedSecureElementWrapper];
        v51 = 0;
        v52 = 0;
        v33 = sub_1001FF2B8(v50, &v52, &v51);
        v34 = v52;
        v35 = v51;

        v37 = *(a1 + 48);
        v36 = *(v37 + 16);
        if (!v33 && v34 && v35)
        {
          v36();
          v33 = 0;
          goto LABEL_25;
        }

        v38 = v33;
        goto LABEL_24;
      }

      v43 = *(a1 + 48);
      v44 = [NSError alloc];
      v33 = [NSString stringWithUTF8String:"nfcd"];
      v53 = NSLocalizedDescriptionKey;
      v34 = [NSString stringWithUTF8String:"Restricted Mode"];
      v54 = v34;
      v35 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v45 = v44;
      v46 = v33;
      v47 = 24;
    }

    else
    {
      v43 = *(a1 + 48);
      v48 = [NSError alloc];
      v33 = [NSString stringWithUTF8String:"nfcd"];
      v55 = NSLocalizedDescriptionKey;
      v34 = [NSString stringWithUTF8String:"Stack Error"];
      v56 = v34;
      v35 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      v45 = v48;
      v46 = v33;
      v47 = 15;
    }

    v49 = [v45 initWithDomain:v46 code:v47 userInfo:v35];
    (*(v43 + 16))(v43, 0, 0, v49);

    goto LABEL_25;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v17 = v16;
    v18 = object_getClass(*(a1 + 32));
    v19 = class_isMetaClass(v18);
    v20 = object_getClassName(*(a1 + 32));
    v21 = sel_getName(*(a1 + 56));
    v22 = [*(a1 + 32) sessionUID];
    v23 = 45;
    if (v19)
    {
      v23 = 43;
    }

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 715, v22);
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
    v28 = sel_getName(*(a1 + 56));
    v29 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v60 = v26;
    v61 = 2082;
    v62 = v27;
    v63 = 2082;
    v64 = v28;
    v65 = 1024;
    v66 = 715;
    v67 = 2114;
    v68 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 48);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v57 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v58 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
    v36 = *(v30 + 16);
    v37 = v30;
    v38 = v35;
LABEL_24:
    (v36)(v37, 0, 0, v38);
LABEL_25:
  }
}

void sub_100164B70(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v25 = [*(a1 + 32) embeddedSecureElementWrapper];
    v26 = [v25 handle];
    v27 = [v26 info];
    v28 = [v27 restrictedMode];

    if (!v28)
    {
      v30 = *(a1 + 32);
      v31 = 0;
      v19 = [v30 _getAllApplets:&v31];
      v18 = v31;
      (*(*(a1 + 40) + 16))();
      goto LABEL_16;
    }

    v16 = *(a1 + 40);
    v29 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v32 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Restricted Mode"];
    v33 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v21 = v29;
    v22 = v18;
    v23 = 24;
LABEL_15:
    v24 = [v21 initWithDomain:v22 code:v23 userInfo:v20];
    (*(v16 + 16))(v16, 0, v24);

LABEL_16:
    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 750, v8);
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
    v14 = sel_getName(*(a1 + 48));
    v15 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v37 = v12;
    v38 = 2082;
    v39 = v13;
    v40 = 2082;
    v41 = v14;
    v42 = 1024;
    v43 = 750;
    v44 = 2114;
    v45 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v34 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v35 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v21 = v17;
    v22 = v18;
    v23 = 54;
    goto LABEL_15;
  }
}

void sub_10016502C(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 776, v8);
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
    v14 = sel_getName(*(a1 + 56));
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v96 = v12;
    v97 = 2082;
    v98 = v13;
    v99 = 2082;
    v100 = v14;
    v101 = 1024;
    v102 = 776;
    v103 = 2114;
    v104 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v39 = [*(a1 + 32) embeddedSecureElementWrapper];
    v40 = [v39 handle];
    v41 = [v40 info];
    v42 = [v41 restrictedMode];

    if (!v42)
    {
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v32 = *(a1 + 40);
      v44 = [v32 countByEnumeratingWithState:&v84 objects:v90 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v85;
        while (2)
        {
          for (i = 0; i != v45; i = i + 1)
          {
            if (*v85 != v46)
            {
              objc_enumerationMutation(v32);
            }

            v48 = *(*(&v84 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v63 = NFLogGetLogger();
              if (v63)
              {
                v64 = v63;
                v65 = object_getClass(*(a1 + 32));
                v66 = class_isMetaClass(v65);
                v67 = object_getClassName(*(a1 + 32));
                v82 = sel_getName(*(a1 + 56));
                v68 = 45;
                if (v66)
                {
                  v68 = 43;
                }

                v64(3, "%c[%{public}s %{public}s]:%i Invalid type for applet.", v68, v67, v82, 788);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v69 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                v70 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v70))
                {
                  v71 = 43;
                }

                else
                {
                  v71 = 45;
                }

                v72 = object_getClassName(*(a1 + 32));
                v73 = sel_getName(*(a1 + 56));
                *buf = 67109890;
                v96 = v71;
                v97 = 2082;
                v98 = v72;
                v99 = 2082;
                v100 = v73;
                v101 = 1024;
                v102 = 788;
                _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid type for applet.", buf, 0x22u);
              }

              v74 = *(a1 + 48);
              v75 = [NSError alloc];
              v76 = [NSString stringWithUTF8String:"nfcd"];
              v88 = NSLocalizedDescriptionKey;
              v77 = [NSString stringWithUTF8String:"Invalid Parameter"];
              v89 = v77;
              v78 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
              v79 = [v75 initWithDomain:v76 code:10 userInfo:v78];
              (*(v74 + 16))(v74, 0, v79);

              goto LABEL_25;
            }
          }

          v45 = [v32 countByEnumeratingWithState:&v84 objects:v90 count:16];
          if (v45)
          {
            continue;
          }

          break;
        }
      }

      v49 = [*(a1 + 32) embeddedSecureElementWrapper];
      v32 = sub_100256530(v49, *(a1 + 40));

      if (v32)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v50 = NFLogGetLogger();
        if (v50)
        {
          v51 = v50;
          v52 = object_getClass(*(a1 + 32));
          v53 = class_isMetaClass(v52);
          v54 = object_getClassName(*(a1 + 32));
          v55 = sel_getName(*(a1 + 56));
          v56 = 45;
          if (v53)
          {
            v56 = 43;
          }

          v51(3, "%c[%{public}s %{public}s]:%i Failed to delete applets from embedded SE %{public}@", v56, v54, v55, 796, *(a1 + 40));
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v57 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v58 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v58))
          {
            v59 = 43;
          }

          else
          {
            v59 = 45;
          }

          v60 = object_getClassName(*(a1 + 32));
          v61 = sel_getName(*(a1 + 56));
          v62 = *(a1 + 40);
          *buf = 67110146;
          v96 = v59;
          v97 = 2082;
          v98 = v60;
          v99 = 2082;
          v100 = v61;
          v101 = 1024;
          v102 = 796;
          v103 = 2114;
          v104 = v62;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to delete applets from embedded SE %{public}@", buf, 0x2Cu);
        }

        (*(*(a1 + 48) + 16))();
      }

      else
      {
        v80 = *(a1 + 32);
        v83 = 0;
        v81 = [v80 _getAllApplets:&v83];
        v32 = v83;
        (*(*(a1 + 48) + 16))();
      }

      goto LABEL_25;
    }

    v30 = *(a1 + 48);
    v43 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v91 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Restricted Mode"];
    v92 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
    v35 = v43;
    v36 = v32;
    v37 = 24;
LABEL_24:
    v38 = [v35 initWithDomain:v36 code:v37 userInfo:v34];
    (*(v30 + 16))(v30, 0, v38);

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
    v21 = sel_getName(*(a1 + 56));
    v22 = [*(a1 + 32) sessionUID];
    v23 = 45;
    if (v19)
    {
      v23 = 43;
    }

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 778, v22);
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
    v28 = sel_getName(*(a1 + 56));
    v29 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v96 = v26;
    v97 = 2082;
    v98 = v27;
    v99 = 2082;
    v100 = v28;
    v101 = 1024;
    v102 = 778;
    v103 = 2114;
    v104 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 48);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v93 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v94 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];
    v35 = v31;
    v36 = v32;
    v37 = 54;
    goto LABEL_24;
  }
}

void sub_1001659F0(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 816, v8);
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
    v129 = v12;
    v130 = 2082;
    v131 = v13;
    v132 = 2082;
    v133 = v14;
    v134 = 1024;
    v135 = 816;
    v136 = 2114;
    v137 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v39 = [*(a1 + 32) embeddedSecureElementWrapper];
    v40 = [v39 handle];
    v41 = [v40 info];
    v42 = [v41 restrictedMode];

    if (!v42)
    {
      objc_opt_self();
      if ((byte_10035DB90 & 1) == 0)
      {
        v44 = [*(a1 + 32) embeddedSecureElementWrapper];
        v45 = sub_10015C898(v44);

        if (v45)
        {
          v121 = 0;
          v46 = sub_100229BB0(NFSSEWrapper, &v121);
          v47 = v121;
          if (v46)
          {
            sub_10015C944();
            sub_10022A230(NFSSEWrapper, 1);
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v58 = NFLogGetLogger();
            if (v58)
            {
              v59 = v58;
              v60 = object_getClass(*(a1 + 32));
              v61 = class_isMetaClass(v60);
              v112 = object_getClassName(*(a1 + 32));
              v116 = sel_getName(*(a1 + 48));
              v62 = 45;
              if (v61)
              {
                v62 = 43;
              }

              v59(6, "%c[%{public}s %{public}s]:%i SSE does not support entanglement : %{public}@", v62, v112, v116, 837, v47);
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
              v67 = sel_getName(*(a1 + 48));
              *buf = 67110146;
              v129 = v65;
              v130 = 2082;
              v131 = v66;
              v132 = 2082;
              v133 = v67;
              v134 = 1024;
              v135 = 837;
              v136 = 2114;
              v137 = v47;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i SSE does not support entanglement : %{public}@", buf, 0x2Cu);
            }
          }
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v48 = NFLogGetLogger();
          if (v48)
          {
            v49 = v48;
            v50 = object_getClass(*(a1 + 32));
            v51 = class_isMetaClass(v50);
            v52 = object_getClassName(*(a1 + 32));
            v115 = sel_getName(*(a1 + 48));
            v53 = 45;
            if (v51)
            {
              v53 = 43;
            }

            v49(6, "%c[%{public}s %{public}s]:%i JCOP does not support entanglement", v53, v52, v115, 840);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v47 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v54 = object_getClass(*(a1 + 32));
            if (class_isMetaClass(v54))
            {
              v55 = 43;
            }

            else
            {
              v55 = 45;
            }

            v56 = object_getClassName(*(a1 + 32));
            v57 = sel_getName(*(a1 + 48));
            *buf = 67109890;
            v129 = v55;
            v130 = 2082;
            v131 = v56;
            v132 = 2082;
            v133 = v57;
            v134 = 1024;
            v135 = 840;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i JCOP does not support entanglement", buf, 0x22u);
          }
        }
      }

      objc_opt_self();
      v68 = byte_10035DB90;
      kdebug_trace();
      v69 = NFSharedSignpostLog();
      if (os_signpost_enabled(v69))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v69, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseEffaceAuthorization in", buf, 2u);
      }

      v70 = sub_10022A53C(NFSSEWrapper, v68);
      kdebug_trace();
      v71 = NFSharedSignpostLog();
      if (os_signpost_enabled(v71))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v71, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseEffaceAuthorization out", buf, 2u);
      }

      if (v70)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v72 = NFLogGetLogger();
        if (v72)
        {
          v73 = v72;
          v74 = object_getClass(*(a1 + 32));
          v75 = class_isMetaClass(v74);
          v76 = object_getClassName(*(a1 + 32));
          v117 = sel_getName(*(a1 + 48));
          v77 = 45;
          if (v75)
          {
            v77 = 43;
          }

          v73(3, "%c[%{public}s %{public}s]:%i Failed to efface SEP", v77, v76, v117, 851);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v78 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          v79 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v79))
          {
            v80 = 43;
          }

          else
          {
            v80 = 45;
          }

          v81 = object_getClassName(*(a1 + 32));
          v82 = sel_getName(*(a1 + 48));
          *buf = 67109890;
          v129 = v80;
          v130 = 2082;
          v131 = v81;
          v132 = 2082;
          v133 = v82;
          v134 = 1024;
          v135 = 851;
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to efface SEP", buf, 0x22u);
        }

        v83 = [NSError alloc];
        v84 = [NSString stringWithUTF8String:"nfcd"];
        v122 = NSLocalizedDescriptionKey;
        if (v70 >= 0x4C)
        {
          v85 = 76;
        }

        else
        {
          v85 = v70;
        }

        v86 = [NSString stringWithUTF8String:off_100319F08[v85]];
        v123 = v86;
        v87 = [NSDictionary dictionaryWithObjects:&v123 forKeys:&v122 count:1];
        v32 = [v83 initWithDomain:v84 code:v70 userInfo:v87];
      }

      else
      {
        v32 = 0;
      }

      if ([*(a1 + 32) uid])
      {
        v88 = [*(a1 + 32) uid];
      }

      else
      {
        v88 = 0xFFFFFFFFLL;
      }

      sub_1000167B0(*(*(a1 + 32) + 216));
      v89 = [*(a1 + 32) embeddedSecureElementWrapper];
      v90 = sub_100253E50(v89, v88);

      sub_1000167B0(*(*(a1 + 32) + 216));
      if (v90)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v91 = NFLogGetLogger();
        if (v91)
        {
          v92 = v91;
          v93 = object_getClass(*(a1 + 32));
          v94 = class_isMetaClass(v93);
          v113 = object_getClassName(*(a1 + 32));
          v118 = sel_getName(*(a1 + 48));
          v95 = 45;
          if (v94)
          {
            v95 = 43;
          }

          v92(3, "%c[%{public}s %{public}s]:%i Failed to delete applets from ese: %{public}@", v95, v113, v118, 864, v90);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v96 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
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
          *buf = 67110146;
          v129 = v98;
          v130 = 2082;
          v131 = v99;
          v132 = 2082;
          v133 = v100;
          v134 = 1024;
          v135 = 864;
          v136 = 2114;
          v137 = v90;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to delete applets from ese: %{public}@", buf, 0x2Cu);
        }

        if (!v32)
        {
          v32 = v90;
        }
      }

      v101 = *(a1 + 32);
      v120 = 0;
      v34 = [v101 _getAllApplets:&v120];
      v33 = v120;

      if (v34)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v102 = NFLogGetLogger();
        if (v102)
        {
          v103 = v102;
          v104 = object_getClass(*(a1 + 32));
          v105 = class_isMetaClass(v104);
          v114 = object_getClassName(*(a1 + 32));
          v119 = sel_getName(*(a1 + 48));
          v106 = 45;
          if (v105)
          {
            v106 = 43;
          }

          v103(3, "%c[%{public}s %{public}s]:%i Failed to get applets: %{public}@", v106, v114, v119, 872, v34);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v107 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          v108 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v108))
          {
            v109 = 43;
          }

          else
          {
            v109 = 45;
          }

          v110 = object_getClassName(*(a1 + 32));
          v111 = sel_getName(*(a1 + 48));
          *buf = 67110146;
          v129 = v109;
          v130 = 2082;
          v131 = v110;
          v132 = 2082;
          v133 = v111;
          v134 = 1024;
          v135 = 872;
          v136 = 2114;
          v137 = v34;
          _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get applets: %{public}@", buf, 0x2Cu);
        }

        if (!v32)
        {
          v32 = v34;
        }
      }

      (*(*(a1 + 40) + 16))();
      goto LABEL_25;
    }

    v30 = *(a1 + 40);
    v43 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v124 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Restricted Mode"];
    v125 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v125 forKeys:&v124 count:1];
    v35 = v43;
    v36 = v32;
    v37 = 24;
LABEL_24:
    v38 = [v35 initWithDomain:v36 code:v37 userInfo:v34];
    (*(v30 + 16))(v30, 0, v38);

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

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 820, v22);
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
    v129 = v26;
    v130 = 2082;
    v131 = v27;
    v132 = 2082;
    v133 = v28;
    v134 = 1024;
    v135 = 820;
    v136 = 2114;
    v137 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 40);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v126 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v127 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v127 forKeys:&v126 count:1];
    v35 = v31;
    v36 = v32;
    v37 = 54;
    goto LABEL_24;
  }
}

void sub_10016686C(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    [*(a1 + 32) markAsDirty:1];
    v18 = [*(a1 + 32) _getSecureElementWrapperForSEID:*(a1 + 40)];
    if ([*(a1 + 32) _activateSecureElementWrapper:v18])
    {
      v22 = [*(a1 + 32) embeddedSecureElementWrapper];
      v23 = *(a1 + 48);
      v24 = *(a1 + 72);
      v25 = *(a1 + 80);
      v30 = 0;
      v19 = sub_100157A30(v22, v23, v24, v25, &v30);
      v20 = v30;

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v26 = *(a1 + 56);
      v27 = [NSError alloc];
      v19 = [NSString stringWithUTF8String:"nfcd"];
      v31 = NSLocalizedDescriptionKey;
      v20 = [NSString stringWithUTF8String:"Stack Error"];
      v32 = v20;
      v28 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v29 = [v27 initWithDomain:v19 code:15 userInfo:v28];
      (*(v26 + 16))(v26, 0, v29);
    }

    goto LABEL_15;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 64));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 895, v8);
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
    v14 = sel_getName(*(a1 + 64));
    v15 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v36 = v12;
    v37 = 2082;
    v38 = v13;
    v39 = 2082;
    v40 = v14;
    v41 = 1024;
    v42 = 895;
    v43 = 2114;
    v44 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v33 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v34 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
    (*(v16 + 16))(v16, 0, v21);

LABEL_15:
  }
}

void sub_100166D84(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    [*(a1 + 32) markAsDirty:1];
    v18 = [*(a1 + 32) _getSecureElementWrapperForSEID:*(a1 + 40)];
    if ([*(a1 + 32) _activateSecureElementWrapper:v18])
    {
      v61 = v18;
      v62 = objc_opt_new();
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      obj = *(a1 + 48);
      v22 = [obj countByEnumeratingWithState:&v66 objects:v80 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = 0;
        v20 = 0;
        v19 = 0;
        v64 = *v67;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v67 != v64)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v66 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = [*(a1 + 32) embeddedSecureElementWrapper];
              v28 = *(a1 + 72);
              v29 = *(a1 + 80);
              v65 = v19;
              v30 = sub_100157A30(v27, v26, v28, v29, &v65);
              v31 = v65;

              if (v31)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                Logger = NFLogGetLogger();
                if (Logger)
                {
                  v33 = Logger;
                  Class = object_getClass(*(a1 + 32));
                  isMetaClass = class_isMetaClass(Class);
                  ClassName = object_getClassName(*(a1 + 32));
                  Name = sel_getName(*(a1 + 64));
                  v37 = 45;
                  if (isMetaClass)
                  {
                    v37 = 43;
                  }

                  v33(3, "%c[%{public}s %{public}s]:%i transceive failed for [%d]: %{public}@", v37, ClassName, Name, 947, v24, v31);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v38 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  v39 = object_getClass(*(a1 + 32));
                  if (class_isMetaClass(v39))
                  {
                    v40 = 43;
                  }

                  else
                  {
                    v40 = 45;
                  }

                  v41 = object_getClassName(*(a1 + 32));
                  v42 = sel_getName(*(a1 + 64));
                  *buf = 67110402;
                  v71 = v40;
                  v72 = 2082;
                  v73 = v41;
                  v74 = 2082;
                  v75 = v42;
                  v76 = 1024;
                  v77 = 947;
                  v78 = 1024;
                  LODWORD(v79[0]) = v24;
                  WORD2(v79[0]) = 2114;
                  *(v79 + 6) = v31;
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i transceive failed for [%d]: %{public}@", buf, 0x32u);
                }

                v43 = v31;
                v20 = v43;
              }

              if (v30)
              {
                [v62 addObject:v30];
              }

              else
              {
                v54 = objc_opt_new();
                [v62 addObject:v54];
              }

              v19 = v31;
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v44 = NFLogGetLogger();
              if (v44)
              {
                v45 = v44;
                v46 = object_getClass(*(a1 + 32));
                v47 = class_isMetaClass(v46);
                v58 = object_getClassName(*(a1 + 32));
                v60 = sel_getName(*(a1 + 64));
                v48 = 45;
                if (v47)
                {
                  v48 = 43;
                }

                v45(3, "%c[%{public}s %{public}s]:%i Invalid class for APDU %d", v48, v58, v60, 939, v24);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v49 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                v50 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v50))
                {
                  v51 = 43;
                }

                else
                {
                  v51 = 45;
                }

                v52 = object_getClassName(*(a1 + 32));
                v53 = sel_getName(*(a1 + 64));
                *buf = 67110146;
                v71 = v51;
                v72 = 2082;
                v73 = v52;
                v74 = 2082;
                v75 = v53;
                v76 = 1024;
                v77 = 939;
                v78 = 1024;
                LODWORD(v79[0]) = v24;
                _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid class for APDU %d", buf, 0x28u);
              }

              v19 = v19;
              v30 = v20;
              v20 = v19;
            }

            v24 = (v24 + 1);
          }

          v23 = [obj countByEnumeratingWithState:&v66 objects:v80 count:16];
        }

        while (v23);
      }

      else
      {
        v20 = 0;
        v19 = 0;
      }

      v21 = v62;
      (*(*(a1 + 56) + 16))();
      v18 = v61;
    }

    else
    {
      v55 = *(a1 + 56);
      v56 = [NSError alloc];
      v19 = [NSString stringWithUTF8String:"nfcd"];
      v81 = NSLocalizedDescriptionKey;
      v20 = [NSString stringWithUTF8String:"Stack Error"];
      v82 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      v57 = [v56 initWithDomain:v19 code:15 userInfo:v21];
      (*(v55 + 16))(v55, 0, v57);
    }

    goto LABEL_15;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v2 = NFLogGetLogger();
  if (v2)
  {
    v3 = v2;
    v4 = object_getClass(*(a1 + 32));
    v5 = class_isMetaClass(v4);
    v6 = object_getClassName(*(a1 + 32));
    v7 = sel_getName(*(a1 + 64));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 923, v8);
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
    v14 = sel_getName(*(a1 + 64));
    v15 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v71 = v12;
    v72 = 2082;
    v73 = v13;
    v74 = 2082;
    v75 = v14;
    v76 = 1024;
    v77 = 923;
    v78 = 2114;
    v79[0] = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v83 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v84 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
    v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
    (*(v16 + 16))(v16, 0, v21);
LABEL_15:
  }
}

void sub_1001686DC(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v38[3] = -1;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v37[3] = 0;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2020000000;
    v36 = 0;
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3032000000;
    v33[3] = sub_100006ABC;
    v33[4] = sub_10016895C;
    v34 = objc_opt_new();
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v32[3] = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_100168964;
    v30 = sub_100168990;
    v31 = 0;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100168998;
    v14[3] = &unk_10031A1C8;
    v19 = v32;
    v15 = v7;
    v20 = v38;
    v21 = v37;
    v22 = v35;
    v23 = v33;
    v18 = v9;
    v16 = a1;
    v24 = &v26;
    v25 = "_executeCommands:params:completion:";
    v17 = v8;
    v10 = objc_retainBlock(v14);
    v11 = v27[5];
    v27[5] = v10;

    v13.receiver = a1;
    v13.super_class = _NFSecureElementManagerSession;
    v12 = objc_msgSendSuper2(&v13, "workQueue");
    dispatch_async(v12, v27[5]);

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(v32, 8);
    _Block_object_dispose(v33, 8);

    _Block_object_dispose(v35, 8);
    _Block_object_dispose(v37, 8);
    _Block_object_dispose(v38, 8);
  }
}

id sub_100168964(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100168998(uint64_t a1)
{
  v2 = *(*(*(a1 + 64) + 8) + 24);
  if (v2 < [*(a1 + 32) count])
  {
    if ([*(a1 + 40) didEnd])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v4 = Logger;
        Class = object_getClass(*(a1 + 40));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 40));
        Name = sel_getName(*(a1 + 112));
        v8 = 45;
        if (isMetaClass)
        {
          v8 = 43;
        }

        v4(5, "%c[%{public}s %{public}s]:%i Aborted", v8, ClassName, Name, 1117);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = object_getClass(*(a1 + 40));
        if (class_isMetaClass(v10))
        {
          v11 = 43;
        }

        else
        {
          v11 = 45;
        }

        v12 = object_getClassName(*(a1 + 40));
        v13 = sel_getName(*(a1 + 112));
        *buf = 67109890;
        v55 = v11;
        v56 = 2082;
        v57 = v12;
        v58 = 2082;
        v59 = v13;
        v60 = 1024;
        v61 = 1117;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Aborted", buf, 0x22u);
      }

      v14 = *(a1 + 56);
      v15 = [NSError alloc];
      v16 = [NSString stringWithUTF8String:"nfcd"];
      v64[0] = NSLocalizedDescriptionKey;
      v17 = [NSString stringWithUTF8String:"Aborted"];
      v65[0] = v17;
      v65[1] = &off_100332760;
      v64[1] = @"Line";
      v64[2] = @"Method";
      v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 112))];
      v65[2] = v18;
      v64[3] = NSDebugDescriptionErrorKey;
      v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 112)), 1118];
      v65[3] = v19;
      v20 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:4];
      v21 = [v15 initWithDomain:v16 code:3 userInfo:v20];
      (*(v14 + 16))(v14, v21, 0, 0, 0, *(*(*(a1 + 96) + 8) + 40));

      v22 = *(*(a1 + 104) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = 0;

      return;
    }

    v30 = *(a1 + 32);
    ++*(*(*(a1 + 64) + 8) + 24);
    v31 = [v30 objectAtIndex:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [*(a1 + 40) _sendOneCommand:v31 params:*(a1 + 48) responses:*(*(*(a1 + 96) + 8) + 40) lastStatus:*(*(a1 + 72) + 8) + 24 totalTXTime:*(*(a1 + 80) + 8) + 24 failureDetected:*(*(a1 + 88) + 8) + 24];
      if (v32)
      {
        v33 = v32;
        v34 = *(*(*(a1 + 72) + 8) + 24);
        v35 = *(*(*(a1 + 80) + 8) + 24);
        v36 = *(*(*(a1 + 88) + 8) + 24);
        v37 = *(*(*(a1 + 96) + 8) + 40);
        (*(*(a1 + 56) + 16))();
        v38 = *(*(a1 + 104) + 8);
        v39 = *(v38 + 40);
        *(v38 + 40) = 0;

LABEL_30:
        return;
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v40 = NFLogGetLogger();
      if (v40)
      {
        v41 = v40;
        v42 = object_getClass(*(a1 + 40));
        v43 = class_isMetaClass(v42);
        v50 = object_getClassName(*(a1 + 40));
        v52 = sel_getName(*(a1 + 112));
        v44 = 45;
        if (v43)
        {
          v44 = 43;
        }

        v41(5, "%c[%{public}s %{public}s]:%i Command is not in expected format: %{public}@", v44, v50, v52, 1125, v31);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v45 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = object_getClass(*(a1 + 40));
        if (class_isMetaClass(v46))
        {
          v47 = 43;
        }

        else
        {
          v47 = 45;
        }

        v48 = object_getClassName(*(a1 + 40));
        v49 = sel_getName(*(a1 + 112));
        *buf = 67110146;
        v55 = v47;
        v56 = 2082;
        v57 = v48;
        v58 = 2082;
        v59 = v49;
        v60 = 1024;
        v61 = 1125;
        v62 = 2114;
        v63 = v31;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Command is not in expected format: %{public}@", buf, 0x2Cu);
      }
    }

    v53.receiver = *(a1 + 40);
    v53.super_class = _NFSecureElementManagerSession;
    v33 = objc_msgSendSuper2(&v53, "workQueue");
    dispatch_async(v33, *(*(*(a1 + 104) + 8) + 40));
    goto LABEL_30;
  }

  v24 = *(*(*(a1 + 72) + 8) + 24);
  v25 = *(*(*(a1 + 80) + 8) + 24);
  v26 = *(*(*(a1 + 88) + 8) + 24);
  v27 = *(*(*(a1 + 96) + 8) + 40);
  (*(*(a1 + 56) + 16))();
  v28 = *(*(a1 + 104) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = 0;
}

void sub_1001690B8(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 1155, v8);
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
    v213 = v12;
    v214 = 2082;
    v215 = v13;
    v216 = 2082;
    v217 = v14;
    v218 = 1024;
    v219 = 1155;
    v220 = 2114;
    v221 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    [*(a1 + 32) markAsDirty:1];
    v36 = *(a1 + 32);
    v37 = [*(a1 + 40) seid];
    v32 = [v36 _getSecureElementWrapperForSEID:v37];

    if (([*(a1 + 32) _activateSecureElementWrapper:v32] & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v42 = NFLogGetLogger();
      if (v42)
      {
        v43 = v42;
        v44 = object_getClass(*(a1 + 32));
        v45 = class_isMetaClass(v44);
        v46 = object_getClassName(*(a1 + 32));
        v175 = sel_getName(*(a1 + 64));
        v47 = 45;
        if (v45)
        {
          v47 = 43;
        }

        v43(3, "%c[%{public}s %{public}s]:%i SE activation failed", v47, v46, v175, 1163);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v48 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
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
        v52 = sel_getName(*(a1 + 64));
        *buf = 67109890;
        v213 = v50;
        v214 = 2082;
        v215 = v51;
        v216 = 2082;
        v217 = v52;
        v218 = 1024;
        v219 = 1163;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i SE activation failed", buf, 0x22u);
      }

      v53 = *(a1 + 56);
      v54 = [NSError alloc];
      v39 = [NSString stringWithUTF8String:"nfcd"];
      v230[0] = NSLocalizedDescriptionKey;
      v55 = [NSString stringWithUTF8String:"Stack Error"];
      v231[0] = v55;
      v231[1] = &off_100332778;
      v230[1] = @"Line";
      v230[2] = @"Method";
      v56 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
      v231[2] = v56;
      v230[3] = NSDebugDescriptionErrorKey;
      v57 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 1164];
      v231[3] = v57;
      v58 = [NSDictionary dictionaryWithObjects:v231 forKeys:v230 count:4];
      v59 = [v54 initWithDomain:v39 code:15 userInfo:v58];
      (*(v53 + 16))(v53, 0, -1, v59, 0.0);

      goto LABEL_40;
    }

    if ([*(a1 + 40) deactivateAllApps])
    {
      v38 = [*(a1 + 32) embeddedSecureElementWrapper];
      v39 = sub_100256130(v38);

      if (v39)
      {
        v40 = *(a1 + 56);
        v41 = objc_opt_new();
        (*(v40 + 16))(v40, v41, 0, v39, 0.0);

LABEL_40:
        goto LABEL_24;
      }
    }

    if (![*(a1 + 48) count])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v105 = NFLogGetLogger();
      if (v105)
      {
        v106 = v105;
        v107 = object_getClass(*(a1 + 32));
        v108 = class_isMetaClass(v107);
        v109 = object_getClassName(*(a1 + 32));
        v177 = sel_getName(*(a1 + 64));
        v110 = 45;
        if (v108)
        {
          v110 = 43;
        }

        v106(5, "%c[%{public}s %{public}s]:%i Script is empty", v110, v109, v177, 1179);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v111 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        v112 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v112))
        {
          v113 = 43;
        }

        else
        {
          v113 = 45;
        }

        v114 = object_getClassName(*(a1 + 32));
        v115 = sel_getName(*(a1 + 64));
        *buf = 67109890;
        v213 = v113;
        v214 = 2082;
        v215 = v114;
        v216 = 2082;
        v217 = v115;
        v218 = 1024;
        v219 = 1179;
        _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Script is empty", buf, 0x22u);
      }

      (*(*(a1 + 56) + 16))(0.0);
      goto LABEL_24;
    }

    v60 = [*(a1 + 48) NF_stringForKey:@"kBatchId"];
    v61 = [*(a1 + 48) NF_arrayForKey:@"kCommands"];
    v62 = [*(a1 + 48) NF_stringForKey:@"kTaskId"];
    v199 = v60;
    if (!v60 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v84 = v61;
      v85 = v62;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v86 = NFLogGetLogger();
      if (v86)
      {
        v87 = v86;
        v88 = object_getClass(*(a1 + 32));
        v89 = class_isMetaClass(v88);
        v90 = object_getClassName(*(a1 + 32));
        v176 = sel_getName(*(a1 + 64));
        v91 = 45;
        if (v89)
        {
          v91 = 43;
        }

        v87(3, "%c[%{public}s %{public}s]:%i Invalid batch ID", v91, v90, v176, 1190);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v92 = NFSharedLogGetLogger();
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
        v213 = v94;
        v214 = 2082;
        v215 = v95;
        v216 = 2082;
        v217 = v96;
        v218 = 1024;
        v219 = 1190;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid batch ID", buf, 0x22u);
      }

      v97 = *(a1 + 56);
      v98 = [NSError alloc];
      v99 = [NSString stringWithUTF8String:"nfcd"];
      v228[0] = NSLocalizedDescriptionKey;
      v100 = [NSString stringWithUTF8String:"Missing Parameter"];
      v229[0] = v100;
      v229[1] = &off_100332790;
      v228[1] = @"Line";
      v228[2] = @"Method";
      v101 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
      v229[2] = v101;
      v228[3] = NSDebugDescriptionErrorKey;
      v102 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 1191];
      v229[3] = v102;
      v103 = [NSDictionary dictionaryWithObjects:v229 forKeys:v228 count:4];
      v104 = [v98 initWithDomain:v99 code:9 userInfo:v103];
      (*(v97 + 16))(v97, 0, -1, v104, 0.0);

      v68 = 0;
      v62 = v85;
      v61 = v84;
      v60 = v199;
      goto LABEL_103;
    }

    v198 = v61;
    if (v61 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (v62)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([*(a1 + 40) initialSelectBeforeRun])
          {
            v63 = [*(a1 + 40) AIDAllowList];
            v64 = [v63 count];

            if (v64)
            {
              v195 = v62;
              v65 = [*(a1 + 32) embeddedSecureElementWrapper];
              v66 = [*(a1 + 40) AIDAllowList];
              v67 = [v66 firstObject];
              v207 = 0;
              v196 = sub_100158A6C(v65, v67, &v207);
              v68 = v207;

              if (v68)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v69 = NFLogGetLogger();
                if (v69)
                {
                  v70 = v69;
                  v71 = object_getClass(*(a1 + 32));
                  v190 = class_isMetaClass(v71);
                  v185 = object_getClassName(*(a1 + 32));
                  v182 = sel_getName(*(a1 + 64));
                  v72 = [*(a1 + 40) AIDAllowList];
                  v73 = [v72 firstObject];
                  v74 = 45;
                  if (v190)
                  {
                    v74 = 43;
                  }

                  v70(3, "%c[%{public}s %{public}s]:%i Fail to select %{public}@", v74, v185, v182, 1216, v73);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v75 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                {
                  v76 = object_getClass(*(a1 + 32));
                  if (class_isMetaClass(v76))
                  {
                    v77 = 43;
                  }

                  else
                  {
                    v77 = 45;
                  }

                  v191 = v77;
                  v186 = object_getClassName(*(a1 + 32));
                  v78 = sel_getName(*(a1 + 64));
                  v79 = [*(a1 + 40) AIDAllowList];
                  v80 = [v79 firstObject];
                  *buf = 67110146;
                  v213 = v191;
                  v214 = 2082;
                  v215 = v186;
                  v216 = 2082;
                  v217 = v78;
                  v218 = 1024;
                  v219 = 1216;
                  v220 = 2114;
                  v221 = v80;
                  _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Fail to select %{public}@", buf, 0x2Cu);
                }

                v81 = *(a1 + 56);
                v183 = [NSError alloc];
                v82 = [NSString stringWithUTF8String:"nfcd"];
                v181 = [v68 code];
                v208[0] = NSLocalizedDescriptionKey;
                if ([v68 code] > 75)
                {
                  v83 = 76;
                }

                else
                {
                  v83 = [v68 code];
                }

                v192 = [NSString stringWithUTF8String:off_100319F08[v83]];
                v209[0] = v192;
                v209[1] = v68;
                v208[1] = NSUnderlyingErrorKey;
                v208[2] = @"Line";
                v209[2] = &off_1003327F0;
                v208[3] = @"Method";
                v152 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
                v209[3] = v152;
                v208[4] = NSDebugDescriptionErrorKey;
                v153 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 1217];
                v209[4] = v153;
                v154 = [NSDictionary dictionaryWithObjects:v209 forKeys:v208 count:5];
                v155 = v82;
                v156 = [v183 initWithDomain:v82 code:v181 userInfo:v154];
                (*(v81 + 16))(v81, 0, -1, v156, 0.0);
LABEL_119:

                v62 = v195;
                goto LABEL_103;
              }

              if ([v196 status] != 36864)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v157 = NFLogGetLogger();
                if (v157)
                {
                  v158 = v157;
                  v159 = object_getClass(*(a1 + 32));
                  v193 = class_isMetaClass(v159);
                  v187 = object_getClassName(*(a1 + 32));
                  v184 = sel_getName(*(a1 + 64));
                  v160 = [*(a1 + 40) AIDAllowList];
                  v161 = [v160 firstObject];
                  v180 = [v196 status];
                  v162 = 45;
                  if (v193)
                  {
                    v162 = 43;
                  }

                  v158(3, "%c[%{public}s %{public}s]:%i Fail to select %{public}@, status=0x%hX", v162, v187, v184, 1210, v161, v180);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v163 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
                {
                  v164 = object_getClass(*(a1 + 32));
                  if (class_isMetaClass(v164))
                  {
                    v165 = 43;
                  }

                  else
                  {
                    v165 = 45;
                  }

                  v194 = v165;
                  v188 = object_getClassName(*(a1 + 32));
                  v166 = sel_getName(*(a1 + 64));
                  v167 = [*(a1 + 40) AIDAllowList];
                  v168 = [v167 firstObject];
                  v169 = [v196 status];
                  *buf = 67110402;
                  v213 = v194;
                  v214 = 2082;
                  v215 = v188;
                  v216 = 2082;
                  v217 = v166;
                  v218 = 1024;
                  v219 = 1210;
                  v220 = 2114;
                  v221 = v168;
                  v222 = 1024;
                  v223 = v169;
                  _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Fail to select %{public}@, status=0x%hX", buf, 0x32u);
                }

                v170 = *(a1 + 56);
                v189 = [NSError alloc];
                v171 = [NSString stringWithUTF8String:"nfcd"];
                v210[0] = NSLocalizedDescriptionKey;
                v192 = [NSString stringWithUTF8String:"Not found"];
                v211[0] = v192;
                v211[1] = &off_1003327D8;
                v210[1] = @"Line";
                v210[2] = @"Method";
                v152 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
                v211[2] = v152;
                v210[3] = NSDebugDescriptionErrorKey;
                v172 = [NSString alloc];
                v174 = sel_getName(*(a1 + 64));
                v173 = v172;
                v155 = v171;
                v153 = [v173 initWithFormat:@"%s:%d", v174, 1211];
                v211[3] = v153;
                v154 = [NSDictionary dictionaryWithObjects:v211 forKeys:v210 count:4];
                v156 = [v189 initWithDomain:v171 code:65 userInfo:v154];
                (*(v170 + 16))(v170, 0, -1, v156, 0.0);
                goto LABEL_119;
              }

              v62 = v195;
            }
          }

          v149 = *(a1 + 32);
          v150 = *(a1 + 40);
          v200[0] = _NSConcreteStackBlock;
          v200[1] = 3221225472;
          v200[2] = sub_10016A894;
          v200[3] = &unk_10031A1F0;
          v200[4] = v149;
          v197 = *(a1 + 56);
          v151 = v197;
          v206 = v197;
          v201 = *(a1 + 40);
          v202 = v60;
          v203 = v62;
          v204 = *(a1 + 48);
          v205 = v61;
          sub_1001686DC(v149, v61, v150, v200);

          v68 = 0;
LABEL_103:

          goto LABEL_24;
        }
      }

      v116 = v62;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v136 = NFLogGetLogger();
      if (v136)
      {
        v137 = v136;
        v138 = object_getClass(*(a1 + 32));
        v139 = class_isMetaClass(v138);
        v140 = object_getClassName(*(a1 + 32));
        v179 = sel_getName(*(a1 + 64));
        v141 = 45;
        if (v139)
        {
          v141 = 43;
        }

        v137(3, "%c[%{public}s %{public}s]:%i Invalid task ID", v141, v140, v179, 1202);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v142 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
      {
        v143 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v143))
        {
          v144 = 43;
        }

        else
        {
          v144 = 45;
        }

        v145 = object_getClassName(*(a1 + 32));
        v146 = sel_getName(*(a1 + 64));
        *buf = 67109890;
        v213 = v144;
        v214 = 2082;
        v215 = v145;
        v216 = 2082;
        v217 = v146;
        v218 = 1024;
        v219 = 1202;
        _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid task ID", buf, 0x22u);
      }

      v128 = *(a1 + 56);
      v129 = [NSError alloc];
      v130 = [NSString stringWithUTF8String:"nfcd"];
      v224[0] = NSLocalizedDescriptionKey;
      v131 = [NSString stringWithUTF8String:"Missing Parameter"];
      v225[0] = v131;
      v225[1] = &off_1003327C0;
      v224[1] = @"Line";
      v224[2] = @"Method";
      v132 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
      v225[2] = v132;
      v224[3] = NSDebugDescriptionErrorKey;
      v133 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 1203];
      v225[3] = v133;
      v134 = v225;
      v135 = v224;
    }

    else
    {
      v116 = v62;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v117 = NFLogGetLogger();
      if (v117)
      {
        v118 = v117;
        v119 = object_getClass(*(a1 + 32));
        v120 = class_isMetaClass(v119);
        v121 = object_getClassName(*(a1 + 32));
        v178 = sel_getName(*(a1 + 64));
        v122 = 45;
        if (v120)
        {
          v122 = 43;
        }

        v118(3, "%c[%{public}s %{public}s]:%i Invalid commands", v122, v121, v178, 1196);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v123 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        v124 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v124))
        {
          v125 = 43;
        }

        else
        {
          v125 = 45;
        }

        v126 = object_getClassName(*(a1 + 32));
        v127 = sel_getName(*(a1 + 64));
        *buf = 67109890;
        v213 = v125;
        v214 = 2082;
        v215 = v126;
        v216 = 2082;
        v217 = v127;
        v218 = 1024;
        v219 = 1196;
        _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid commands", buf, 0x22u);
      }

      v128 = *(a1 + 56);
      v129 = [NSError alloc];
      v130 = [NSString stringWithUTF8String:"nfcd"];
      v226[0] = NSLocalizedDescriptionKey;
      v131 = [NSString stringWithUTF8String:"Missing Parameter"];
      v227[0] = v131;
      v227[1] = &off_1003327A8;
      v226[1] = @"Line";
      v226[2] = @"Method";
      v132 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
      v227[2] = v132;
      v226[3] = NSDebugDescriptionErrorKey;
      v133 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 1197];
      v227[3] = v133;
      v134 = v227;
      v135 = v226;
    }

    v147 = [NSDictionary dictionaryWithObjects:v134 forKeys:v135 count:4];
    v148 = [v129 initWithDomain:v130 code:9 userInfo:v147];
    (*(v128 + 16))(v128, 0, -1, v148, 0.0);

    v68 = 0;
    v62 = v116;
    v61 = v198;
    v60 = v199;
    goto LABEL_103;
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

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 1157, v22);
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
    v213 = v26;
    v214 = 2082;
    v215 = v27;
    v216 = 2082;
    v217 = v28;
    v218 = 1024;
    v219 = 1157;
    v220 = 2114;
    v221 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 56);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v232 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v233 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v233 forKeys:&v232 count:1];
    v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
    (*(v30 + 16))(v30, 0, -1, v35, 0.0);

LABEL_24:
  }
}