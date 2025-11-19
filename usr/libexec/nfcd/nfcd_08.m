void sub_1000DCE14(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 335, v8);
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
    v40 = v12;
    v41 = 2082;
    v42 = v13;
    v43 = 2082;
    v44 = v14;
    v45 = 1024;
    v46 = 335;
    v47 = 2114;
    v48 = v15;
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

      v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 336, v22);
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
      v40 = v26;
      v41 = 2082;
      v42 = v27;
      v43 = 2082;
      v44 = v28;
      v45 = 1024;
      v46 = 336;
      v47 = 2114;
      v48 = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v30 = *(a1 + 40);
    if (v30)
    {
      v31 = [NSError alloc];
      v32 = [NSString stringWithUTF8String:"nfcd"];
      v37 = NSLocalizedDescriptionKey;
      v33 = [NSString stringWithUTF8String:"Session not active"];
      v38 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
      (*(v30 + 16))(v30, v35);
    }
  }

  else
  {
    v36 = *(*(a1 + 32) + 184);
    if (v36)
    {
      *(v36 + 29) = *(a1 + 56);
      sub_1000A6790(v36);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000DD294(id a1)
{
  v1 = objc_alloc_init(_NFHardwareManager);
  v2 = qword_10035D9F8;
  qword_10035D9F8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000DD7DC(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.hw.postStartupTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state = 0;
  *state_8 = 0;
  os_activity_scope_enter(v2, &state);
  os_activity_scope_leave(&state);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = sub_1000DE198(WeakRetained);
  v5 = *&v4;
  if (v4 > 0.0)
  {
    v6 = v4;
LABEL_70:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v66 = Logger;
      Class = object_getClass(WeakRetained);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(WeakRetained);
      Name = sel_getName(*(a1 + 48));
      v70 = 45;
      if (isMetaClass)
      {
        v70 = 43;
      }

      v66(6, "%c[%{public}s %{public}s]:%i Delaying post stack bootup work by %f seconds", v70, ClassName, Name, 437, *&v6);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v71 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      v72 = object_getClass(WeakRetained);
      if (class_isMetaClass(v72))
      {
        v73 = 43;
      }

      else
      {
        v73 = 45;
      }

      v74 = object_getClassName(WeakRetained);
      v75 = sel_getName(*(a1 + 48));
      LODWORD(state) = 67110146;
      HIDWORD(state) = v73;
      *state_8 = 2082;
      *&state_8[2] = v74;
      *&state_8[10] = 2082;
      *&state_8[12] = v75;
      *&state_8[20] = 1024;
      *&state_8[22] = 437;
      *&state_8[26] = 2048;
      *&state_8[28] = v6;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Delaying post stack bootup work by %f seconds", &state, 0x2Cu);
    }

    [WeakRetained[17] startTimer:v6];
    goto LABEL_80;
  }

  v7 = +[NFPowerAssertion sharedPowerAssertion];
  v8 = [v7 holdPowerAssertion:@"runPostStartupWork" onBehalfOf:0xFFFFFFFFLL behaviourWhenSleepStarted:1];

  if (!v8)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFLogGetLogger();
    if (v34)
    {
      v35 = v34;
      v36 = object_getClass(WeakRetained);
      v37 = class_isMetaClass(v36);
      v38 = object_getClassName(WeakRetained);
      v79 = sel_getName(*(a1 + 48));
      v39 = 45;
      if (v37)
      {
        v39 = 43;
      }

      v35(3, "%c[%{public}s %{public}s]:%i Failed to acquire power assertion, system heading to sleep", v39, v38, v79, 431);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v40 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = object_getClass(WeakRetained);
      if (class_isMetaClass(v41))
      {
        v42 = 43;
      }

      else
      {
        v42 = 45;
      }

      v43 = object_getClassName(WeakRetained);
      v44 = sel_getName(*(a1 + 48));
      LODWORD(state) = 67109890;
      HIDWORD(state) = v42;
      *state_8 = 2082;
      *&state_8[2] = v43;
      *&state_8[10] = 2082;
      *&state_8[12] = v44;
      *&state_8[20] = 1024;
      *&state_8[22] = 431;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to acquire power assertion, system heading to sleep", &state, 0x22u);
    }

    v6 = 60.0;
    goto LABEL_70;
  }

  v9 = sub_10021A4A0(WeakRetained[47], @"runPostStartupWork", 1uLL);
  if (v9)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFLogGetLogger();
    if (v10)
    {
      v11 = v10;
      v12 = object_getClass(*(a1 + 32));
      v13 = class_isMetaClass(v12);
      v76 = object_getClassName(*(a1 + 32));
      v77 = sel_getName(*(a1 + 48));
      v14 = 45;
      if (v13)
      {
        v14 = 43;
      }

      v11(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v14, v76, v77, 404, v9);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      v18 = object_getClassName(*(a1 + 32));
      v19 = sel_getName(*(a1 + 48));
      LODWORD(state) = 67110146;
      HIDWORD(state) = v17;
      *state_8 = 2082;
      *&state_8[2] = v18;
      *&state_8[10] = 2082;
      *&state_8[12] = v19;
      *&state_8[20] = 1024;
      *&state_8[22] = 404;
      *&state_8[26] = 2112;
      *&state_8[28] = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", &state, 0x2Cu);
    }
  }

  v20 = WeakRetained[47];
  if (!v20)
  {
    __assert_rtn("[_NFHardwareManager init]_block_invoke", "_NFHardwareManager.m", 419, "strongself->_driverWrapper != nil");
  }

  v21 = 0;
  v22 = v20[32];
  v6 = 60.0;
  if (v22 > 2)
  {
    if (v22 != 3)
    {
      if (v22 == 4)
      {
        goto LABEL_67;
      }

      goto LABEL_42;
    }

LABEL_64:
    v29 = WeakRetained[17];
    WeakRetained[17] = 0;
    v21 = 1;
LABEL_65:

    goto LABEL_66;
  }

  if (v22 != 1)
  {
    if (v22 == 2)
    {
      goto LABEL_67;
    }

    if (!v22)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v24 = v23;
        v25 = object_getClass(WeakRetained);
        v26 = class_isMetaClass(v25);
        v27 = object_getClassName(WeakRetained);
        v78 = sel_getName(*(a1 + 48));
        v28 = 45;
        if (v26)
        {
          v28 = 43;
        }

        v24(3, "%c[%{public}s %{public}s]:%i Error : Unexpected state : unknown.", v28, v27, v78, 421);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = object_getClass(WeakRetained);
        if (class_isMetaClass(v30))
        {
          v31 = 43;
        }

        else
        {
          v31 = 45;
        }

        v32 = object_getClassName(WeakRetained);
        v33 = sel_getName(*(a1 + 48));
        LODWORD(state) = 67109890;
        HIDWORD(state) = v31;
        *state_8 = 2082;
        *&state_8[2] = v32;
        *&state_8[10] = 2082;
        *&state_8[12] = v33;
        *&state_8[20] = 1024;
        *&state_8[22] = 421;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : Unexpected state : unknown.", &state, 0x22u);
      }

      v21 = 0;
      v5 = 0x404E000000000000;
      goto LABEL_65;
    }

LABEL_42:
    __assert_rtn("[_NFHardwareManager init]_block_invoke", "_NFHardwareManager.m", 420, "hwState == NFDriverHWStateUnknown");
  }

  if (WeakRetained[17])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v45 = NFLogGetLogger();
    if (v45)
    {
      v46 = v45;
      v47 = object_getClass(WeakRetained);
      v48 = class_isMetaClass(v47);
      v49 = object_getClassName(WeakRetained);
      v80 = sel_getName("doPostStartupWork");
      v50 = 45;
      if (v48)
      {
        v50 = 43;
      }

      v46(6, "%c[%{public}s %{public}s]:%i Running post stack bootup work", v50, v49, v80, 786);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v51 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = object_getClass(WeakRetained);
      if (class_isMetaClass(v52))
      {
        v53 = 43;
      }

      else
      {
        v53 = 45;
      }

      v54 = object_getClassName(WeakRetained);
      v55 = sel_getName("doPostStartupWork");
      LODWORD(state) = 67109890;
      HIDWORD(state) = v53;
      *state_8 = 2082;
      *&state_8[2] = v54;
      *&state_8[10] = 2082;
      *&state_8[12] = v55;
      *&state_8[20] = 1024;
      *&state_8[22] = 786;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Running post stack bootup work", &state, 0x22u);
    }

    v56 = NFSharedSignpostLog();
    if (os_signpost_enabled(v56))
    {
      LOWORD(state) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DUMP_LOGS_BOOTUP", &unk_1002E8B7A, &state, 2u);
    }

    if (NFIsInternalBuild() & 1) != 0 || (*(WeakRetained + 357))
    {
      v57 = WeakRetained[30];
      v58 = sub_10004BF2C();
      state = _NSConcreteStackBlock;
      *state_8 = 3221225472;
      *&state_8[8] = sub_1000EA2A4;
      *&state_8[16] = &unk_100318458;
      *&state_8[24] = WeakRetained;
      *&state_8[32] = "dumpLPEMAppletLogs";
      v59 = [_NFBuiltinSession createSession:@"LPEM dump" workQueue:v57 routing:v58 sessionQueuer:WeakRetained didStartWork:&state];
    }

    else
    {
      v60 = NFSharedSignpostLog();
      if (os_signpost_enabled(v60))
      {
        LOWORD(state) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v60, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DUMP_LOGS_BOOTUP", &unk_1002E8B7A, &state, 2u);
      }
    }

    if (NFIsInternalBuild())
    {
      v61 = WeakRetained[30];
      v62 = sub_10004BF2C();
      state = _NSConcreteStackBlock;
      *state_8 = 3221225472;
      *&state_8[8] = sub_1000E1E88;
      *&state_8[16] = &unk_100318458;
      *&state_8[24] = WeakRetained;
      *&state_8[32] = "cacheSeMemory";
      v63 = [_NFBuiltinSession createSession:@"SE Memory" workQueue:v61 routing:v62 sessionQueuer:WeakRetained didStartWork:&state];
    }

    goto LABEL_64;
  }

  v21 = 1;
LABEL_66:
  v6 = *&v5;
LABEL_67:
  if (!v9)
  {
    sub_10021CC94(WeakRetained[47], @"runPostStartupWork");
  }

  v64 = +[NFPowerAssertion sharedPowerAssertion];
  [v64 releasePowerAssertion:@"runPostStartupWork"];

  if ((v21 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_80:
}

double sub_1000DE198(uint64_t a1)
{
  v1 = 0.0;
  if (a1 && *(a1 + 136))
  {
    if (!sub_100003110(*(a1 + 96)))
    {
      return 60.0;
    }

    v1 = 20.0;
    if (!*(a1 + 120) && ![*(a1 + 184) count])
    {
      v3 = *(a1 + 24);
      if ((!v3 || (*(v3 + 181) & 1) == 0) && (*(a1 + 353) & 1) == 0)
      {
        if (*(a1 + 364) & 1) != 0 || (*(a1 + 351))
        {
          return 60.0;
        }

        if (*(a1 + 363))
        {
          return 20.0;
        }

        else
        {
          return 0.0;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1000DE678(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 240);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000DE724;
  v5[3] = &unk_1003161D8;
  v5[4] = v1;
  v5[5] = &v6;
  dispatch_async_and_wait(v2, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1000DE724(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = sub_1000F4A20(*(a1 + 32));
    v19 = 0;
    v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:&v19];
    v5 = v19;

    if (v5)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("dumpState");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v7(3, "%c[%{public}s %{public}s]:%i Failed to serialize state dump: %{public}@", v10, ClassName, Name, 9834, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = object_getClass(v2);
        if (class_isMetaClass(v12))
        {
          v13 = 43;
        }

        else
        {
          v13 = 45;
        }

        v14 = object_getClassName(v2);
        v15 = sel_getName("dumpState");
        *buf = 67110146;
        v21 = v13;
        v22 = 2082;
        v23 = v14;
        v24 = 2082;
        v25 = v15;
        v26 = 1024;
        v27 = 9834;
        v28 = 2114;
        v29 = v5;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to serialize state dump: %{public}@", buf, 0x2Cu);
      }
    }

    v16 = [v4 length];
    v2 = malloc_type_calloc(1uLL, v16 + 200, 0x1000040BEF03554uLL);
    *v2 = 1;
    v2[1] = v16;
    __strlcpy_chk();
    memcpy(v2 + 50, [v4 bytes], v16);
  }

  *(*(*(a1 + 40) + 8) + 24) = v2;
}

void sub_1000DE998(void *a1, uint64_t a2)
{
  if (!a1 || dword_10035C9B0 == a2)
  {
    return;
  }

  dword_10035C9B0 = a2;
  out_token = 0;
  v4 = notify_register_check("com.apple.stockholm.sessions.active", &out_token);
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
      Name = sel_getName("_postActiveSessionsNotification:");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Failed to notify register check : %d", v10, ClassName, Name, 1401, v5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
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

      v14 = object_getClassName(a1);
      v15 = sel_getName("_postActiveSessionsNotification:");
      *buf = 67110146;
      v51 = v13;
      v52 = 2082;
      v53 = v14;
      v54 = 2082;
      v55 = v15;
      v56 = 1024;
      v57 = 1401;
      v58 = 1024;
      v59 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to notify register check : %d", buf, 0x28u);
    }

    goto LABEL_37;
  }

  v16 = notify_set_state(out_token, dword_10035C9B0);
  if (v16)
  {
    v17 = v16;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v19 = v18;
      v20 = object_getClass(a1);
      v21 = class_isMetaClass(v20);
      v44 = object_getClassName(a1);
      v47 = sel_getName("_postActiveSessionsNotification:");
      v22 = 45;
      if (v21)
      {
        v22 = 43;
      }

      v19(3, "%c[%{public}s %{public}s]:%i Failed to notify set state : %d", v22, v44, v47, 1395, v17);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

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
    v27 = sel_getName("_postActiveSessionsNotification:");
    *buf = 67110146;
    v51 = v25;
    v52 = 2082;
    v53 = v26;
    v54 = 2082;
    v55 = v27;
    v56 = 1024;
    v57 = 1395;
    v58 = 1024;
    v59 = v17;
    v28 = "%c[%{public}s %{public}s]:%i Failed to notify set state : %d";
LABEL_34:
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v28, buf, 0x28u);
LABEL_35:

    goto LABEL_36;
  }

  v29 = notify_post("com.apple.stockholm.sessions.active");
  if (v29)
  {
    v30 = v29;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v32 = v31;
      v33 = object_getClass(a1);
      v34 = class_isMetaClass(v33);
      v45 = object_getClassName(a1);
      v48 = sel_getName("_postActiveSessionsNotification:");
      v35 = 45;
      if (v34)
      {
        v35 = 43;
      }

      v32(3, "%c[%{public}s %{public}s]:%i Failed to notify : %d", v35, v45, v48, 1391, v30);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

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
    v39 = sel_getName("_postActiveSessionsNotification:");
    *buf = 67110146;
    v51 = v37;
    v52 = 2082;
    v53 = v38;
    v54 = 2082;
    v55 = v39;
    v56 = 1024;
    v57 = 1391;
    v58 = 1024;
    v59 = v30;
    v28 = "%c[%{public}s %{public}s]:%i Failed to notify : %d";
    goto LABEL_34;
  }

LABEL_36:
  notify_cancel(out_token);
LABEL_37:
  v40 = +[NFSecureXPCEventPublisherManager sharedManager];
  v41 = [v40 wallet];
  v42 = [NSNumber numberWithInt:a2];
  if (v41)
  {
    sub_100235540(v41, @"com.apple.stockholm.sessions.active", v42, 1);
  }
}

void sub_1000DEE30(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 361) == 1)
  {
    v3 = sub_100210FEC();
    sub_100213A94(v3, 0);

    v2 = *(a1 + 32);
  }

  sub_1000DEF84(v2, 0);
  v4 = sub_100003384(*(a1 + 32));
  v5 = v4;
  sub_1000E0EB4(*(a1 + 32), v4);
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = *(*(a1 + 32) + 344);
  objc_sync_exit(v6);

  if (v7 == 1)
  {
    if (v5 == 2 || v5 == 4)
    {
      v8 = sub_100210FEC();
      sub_100214014(v8, 0, 1);

      v9 = *(a1 + 32);

      sub_1000E1108(v9);
    }

    else
    {
      v10 = sub_100210FEC();
      sub_100214014(v10, 1, 1);
    }
  }
}

void sub_1000DEF84(uint64_t a1, int a2)
{
  if (!a1)
  {
    return;
  }

  v4 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
  v5 = +[NFPowerAssertion sharedPowerAssertion];
  v6 = [v5 holdPowerAssertion:@"Load Stack" behaviourWhenSleepStarted:2];

  if (v6)
  {
    if (!*(a1 + 88))
    {
      v7 = sub_10023F674([NFManagedConfigMonitor alloc], *(a1 + 240), a1);
      v8 = *(a1 + 88);
      *(a1 + 88) = v7;
    }

    v9 = *(a1 + 376);
    v10 = sub_1000E44B8(a1);
    sub_10021D78C(v9, v10);

    v11 = *(a1 + 376);
    if (!v11 || (*(v11 + 173) & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v13 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_loadDriverConfigsFromDisk");
        v17 = 45;
        if (isMetaClass)
        {
          v17 = 43;
        }

        v13(6, "%c[%{public}s %{public}s]:%i clearing persistent field detect, device does not have antenna", v17, ClassName, Name, 991);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = object_getClass(a1);
        if (class_isMetaClass(v19))
        {
          v20 = 43;
        }

        else
        {
          v20 = 45;
        }

        *buf = 67109890;
        *&buf[4] = v20;
        *&buf[8] = 2082;
        *&buf[10] = object_getClassName(a1);
        *&buf[18] = 2082;
        *&buf[20] = sel_getName("_loadDriverConfigsFromDisk");
        *&buf[28] = 1024;
        *&buf[30] = 991;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i clearing persistent field detect, device does not have antenna", buf, 0x22u);
      }

      [*(a1 + 16) removeAllPersistentFieldObservers];
    }

    sub_1000E3290(a1, @"Load HW");
    v21 = sub_100003384(a1);
    v22 = a1;
    objc_sync_enter(v22);
    v23 = v22[344];
    objc_sync_exit(v22);

    if (v21 == 4)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFLogGetLogger();
      if (v25)
      {
        v26 = v25;
        v27 = object_getClass(v22);
        v28 = class_isMetaClass(v27);
        v29 = object_getClassName(v22);
        v269 = sel_getName("_updateSystemHealth:reportFailure:");
        v30 = 45;
        if (v28)
        {
          v30 = 43;
        }

        v26(5, "%c[%{public}s %{public}s]:%i NFC/SE not supported on this device", v30, v29, v269, 1036);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = object_getClass(v22);
        if (class_isMetaClass(v32))
        {
          v33 = 43;
        }

        else
        {
          v33 = 45;
        }

        v34 = object_getClassName(v22);
        v35 = sel_getName("_updateSystemHealth:reportFailure:");
        *v295 = 67109890;
        *&v295[4] = v33;
        *v296 = 2082;
        *&v296[2] = v34;
        *&v296[10] = 2082;
        *&v296[12] = v35;
        *&v296[20] = 1024;
        *&v296[22] = 1036;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC/SE not supported on this device", v295, 0x22u);
      }

      goto LABEL_72;
    }

    sub_10027EACC(v24);
    v46 = *(v45 + 232);
    if (objc_opt_class() && v23)
    {
      if (v21 == 2)
      {
        v47 = 1;
      }

      else
      {
        v47 = 2;
      }

      v48 = v22;
      objc_sync_enter(v48);
      if (v47 == qword_10035C9A8)
      {
        objc_sync_exit(v48);

        goto LABEL_58;
      }

      objc_sync_exit(v48);

      if (v21 != 2 && !a2)
      {
LABEL_58:
        if (v21 != 2 && v21 != 5)
        {
LABEL_72:
          v77 = +[NFPowerAssertion sharedPowerAssertion];
          [v77 releasePowerAssertion:@"Load Stack"];

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v78 = NFLogGetLogger();
          if (v78)
          {
            v79 = v78;
            v80 = object_getClass(v22);
            v81 = class_isMetaClass(v80);
            v262 = object_getClassName(v22);
            v273 = sel_getName("_initializeHardwareAndReportFailure:");
            v82 = 45;
            if (v81)
            {
              v82 = 43;
            }

            v79(4, "%c[%{public}s %{public}s]:%i Hardware not available : %lu", v82, v262, v273, 926, v21);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v83 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            v84 = object_getClass(v22);
            if (class_isMetaClass(v84))
            {
              v85 = 43;
            }

            else
            {
              v85 = 45;
            }

            v86 = object_getClassName(v22);
            v87 = sel_getName("_initializeHardwareAndReportFailure:");
            *buf = 67110146;
            *&buf[4] = v85;
            *&buf[8] = 2082;
            *&buf[10] = v86;
            *&buf[18] = 2082;
            *&buf[20] = v87;
            *&buf[28] = 1024;
            *&buf[30] = 926;
            *&buf[34] = 2048;
            *&buf[36] = v21;
            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Hardware not available : %lu", buf, 0x2Cu);
          }

          return;
        }

        v289 = v21;
        v61 = sub_10021A4A0(*(a1 + 376), @"Load HW Info", 0);
        if (v61)
        {
          v62 = v61;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v63 = NFLogGetLogger();
          if (v63)
          {
            v64 = v63;
            v65 = object_getClass(v22);
            v66 = class_isMetaClass(v65);
            v261 = object_getClassName(v22);
            v272 = sel_getName("_initializeSecureElementInfo");
            v67 = 45;
            if (v66)
            {
              v67 = 43;
            }

            v64(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v67, v261, v272, 1231, v62);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v68 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            v69 = object_getClass(v22);
            if (class_isMetaClass(v69))
            {
              v70 = 43;
            }

            else
            {
              v70 = 45;
            }

            v71 = object_getClassName(v22);
            v72 = sel_getName("_initializeSecureElementInfo");
            *buf = 67110146;
            *&buf[4] = v70;
            *&buf[8] = 2082;
            *&buf[10] = v71;
            *&buf[18] = 2082;
            *&buf[20] = v72;
            *&buf[28] = 1024;
            *&buf[30] = 1231;
            *&buf[34] = 2112;
            *&buf[36] = v62;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
          }

          v73 = [NSError alloc];
          v74 = [NSString stringWithUTF8String:"nfcd"];
          v75 = [v62 code];
          *v295 = NSLocalizedDescriptionKey;
          if ([v62 code] > 75)
          {
            v76 = 76;
          }

          else
          {
            v76 = [v62 code];
          }

          v94 = [NSString stringWithUTF8String:off_1003184A0[v76]];
          *buf = v94;
          *&buf[8] = v62;
          *v296 = NSUnderlyingErrorKey;
          *&v296[8] = @"Line";
          *&buf[16] = &off_100331410;
          *&v296[16] = @"Method";
          v95 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_initializeSecureElementInfo")];
          *&buf[24] = v95;
          *&v296[24] = NSDebugDescriptionErrorKey;
          v96 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_initializeSecureElementInfo"), 1232];
          *&buf[32] = v96;
          v97 = [NSDictionary dictionaryWithObjects:buf forKeys:v295 count:5];
          v98 = [v73 initWithDomain:v74 code:v75 userInfo:v97];

          v4 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
          v99 = v289;
          goto LABEL_113;
        }

        v88 = sub_10004BF60(NFRoutingConfig, 0);
        v89 = [v22 setRoutingConfig:v88];

        if (v89)
        {
          v90 = [NSError alloc];
          v91 = [NSString stringWithUTF8String:"nfcd"];
          v92 = [v89 code];
          *v295 = NSLocalizedDescriptionKey;
          sel = v92;
          if ([v89 code] > 75)
          {
            v93 = 76;
          }

          else
          {
            v93 = [v89 code];
          }

          v101 = [NSString stringWithUTF8String:off_1003184A0[v93]];
          *buf = v101;
          *&buf[8] = v89;
          *v296 = NSUnderlyingErrorKey;
          *&v296[8] = @"Line";
          *&buf[16] = &off_100331428;
          *&v296[16] = @"Method";
          v102 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_initializeSecureElementInfo")];
          *&buf[24] = v102;
          *&v296[24] = NSDebugDescriptionErrorKey;
          v103 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_initializeSecureElementInfo"), 1238];
          *&buf[32] = v103;
          v104 = [NSDictionary dictionaryWithObjects:buf forKeys:v295 count:5];
          v100 = [v90 initWithDomain:v91 code:sel userInfo:v104];

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v105 = NFLogGetLogger();
          if (v105)
          {
            v106 = v105;
            v107 = object_getClass(v22);
            v108 = class_isMetaClass(v107);
            v109 = v100;
            v110 = object_getClassName(v22);
            v274 = sel_getName("_initializeSecureElementInfo");
            v111 = 45;
            if (v108)
            {
              v111 = 43;
            }

            v263 = v110;
            v100 = v109;
            v106(3, "%c[%{public}s %{public}s]:%i Failed to set routing mode", v111, v263, v274, 1239);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v112 = NFSharedLogGetLogger();
          v4 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
          if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
          {
            v113 = object_getClass(v22);
            if (class_isMetaClass(v113))
            {
              v114 = 43;
            }

            else
            {
              v114 = 45;
            }

            v115 = object_getClassName(v22);
            v116 = sel_getName("_initializeSecureElementInfo");
            *v293 = 67109890;
            *&v293[4] = v114;
            *v294 = 2082;
            *&v294[2] = v115;
            *&v294[10] = 2082;
            *&v294[12] = v116;
            *&v294[20] = 1024;
            *&v294[22] = 1239;
            _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set routing mode", v293, 0x22u);
          }
        }

        else
        {
          if ([v22 refreshSecureElementInfo])
          {
            sub_10021CC94(*(a1 + 376), @"Load HW Info");
            v100 = 0;
LABEL_112:
            v99 = v289;
            v62 = v100;
            v98 = v62;
LABEL_113:

            if (v98)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to get SE info but stack is up...", buf, 2u);
              }

              sub_1000E3608(v22, 2);
              v136 = [v4[427] sharedPowerAssertion];
              [v136 releasePowerAssertion:@"Load Stack"];

              sub_10021CC94(*(a1 + 376), @"Load HW");
            }

            else
            {
              if (NFIsInternalBuild())
              {
                if ([*(v22 + 49) siliconName] >= 0xE)
                {
                  v137 = sub_1001EC1C0(*(a1 + 376));

                  if (!v137)
                  {
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v138 = NFLogGetLogger();
                    if (v138)
                    {
                      v138(6, "%s:%i ATE Trim version = %d (%x)", "[_NFHardwareManager _dumpATETrim]", 1091, *(v22 + 170), *(v22 + 170));
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v139 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
                    {
                      v140 = *(v22 + 170);
                      *buf = 136446978;
                      *&buf[4] = "[_NFHardwareManager _dumpATETrim]";
                      *&buf[12] = 1024;
                      *&buf[14] = 1091;
                      *&buf[18] = 1024;
                      *&buf[20] = v140;
                      *&buf[24] = 1024;
                      *&buf[26] = v140;
                      _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ATE Trim version = %d (%x)", buf, 0x1Eu);
                    }
                  }
                }
              }

              os_unfair_lock_lock(v22 + 12);
              v141 = (v22 + 40);
              v142 = [[NFSecureElementHandle alloc] initWithID:1 driverWrapper:*(a1 + 376) seInfo:*(v22 + 5)];
              os_unfair_lock_unlock(v22 + 12);
              v143 = [[NFSecureElementWrapper alloc] initWithHandle:v142];
              v144 = *(v22 + 48);
              *(v22 + 48) = v143;

              [*(v22 + 48) setDelegate:v22];
              v287 = v142;
              if ([*(v22 + 5) migrationContext] == 4 || objc_msgSend(*v141, "migrationContext") == 5)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v145 = NFLogGetLogger();
                if (v145)
                {
                  v146 = v145;
                  v147 = object_getClass(v22);
                  v148 = class_isMetaClass(v147);
                  v149 = object_getClassName(v22);
                  v150 = sel_getName("_loadEmbeddedSecureElement");
                  v281 = [*(v22 + 5) migrationContext];
                  v151 = 45;
                  if (v148)
                  {
                    v151 = 43;
                  }

                  v146(4, "%c[%{public}s %{public}s]:%i Detected a torn SLAM migration state! %d", v151, v149, v150, 1515, v281);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v152 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
                {
                  v153 = object_getClass(v22);
                  if (class_isMetaClass(v153))
                  {
                    v154 = 43;
                  }

                  else
                  {
                    v154 = 45;
                  }

                  v155 = object_getClassName(v22);
                  v156 = sel_getName("_loadEmbeddedSecureElement");
                  v157 = [*(v22 + 5) migrationContext];
                  *buf = 67110146;
                  *&buf[4] = v154;
                  *&buf[8] = 2082;
                  *&buf[10] = v155;
                  *&buf[18] = 2082;
                  *&buf[20] = v156;
                  *&buf[28] = 1024;
                  *&buf[30] = 1515;
                  *&buf[34] = 1024;
                  *&buf[36] = v157;
                  _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Detected a torn SLAM migration state! %d", buf, 0x28u);
                }

                v158 = [*(v22 + 48) recoverSLAM];
                if (v158)
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v159 = NFLogGetLogger();
                  if (v159)
                  {
                    v160 = v159;
                    v161 = object_getClass(v22);
                    v162 = class_isMetaClass(v161);
                    v265 = object_getClassName(v22);
                    v276 = sel_getName("_loadEmbeddedSecureElement");
                    v163 = 45;
                    if (v162)
                    {
                      v163 = 43;
                    }

                    v160(3, "%c[%{public}s %{public}s]:%i Failed to recover SLAM? %{public}@", v163, v265, v276, 1518, v158);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v164 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
                  {
                    v165 = object_getClass(v22);
                    if (class_isMetaClass(v165))
                    {
                      v166 = 43;
                    }

                    else
                    {
                      v166 = 45;
                    }

                    v167 = object_getClassName(v22);
                    v168 = sel_getName("_loadEmbeddedSecureElement");
                    *buf = 67110146;
                    *&buf[4] = v166;
                    *&buf[8] = 2082;
                    *&buf[10] = v167;
                    *&buf[18] = 2082;
                    *&buf[20] = v168;
                    *&buf[28] = 1024;
                    *&buf[30] = 1518;
                    *&buf[34] = 2114;
                    *&buf[36] = v158;
                    _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to recover SLAM? %{public}@", buf, 0x2Cu);
                  }
                }

                v169 = *(a1 + 376);
                *v295 = 0;
                v170 = sub_100015150(v169, 1, v295);
                v171 = *v295;
                v286 = *v295;
                if ((v170 & 1) == 0)
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v172 = NFLogGetLogger();
                  if (v172)
                  {
                    v173 = v172;
                    v174 = object_getClass(v22);
                    v175 = class_isMetaClass(v174);
                    v176 = object_getClassName(v22);
                    v277 = sel_getName("_loadEmbeddedSecureElement");
                    v177 = 45;
                    if (v175)
                    {
                      v177 = 43;
                    }

                    v173(3, "%c[%{public}s %{public}s]:%i Failed to get embedded SE info", v177, v176, v277, 1523);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v178 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
                  {
                    v179 = object_getClass(v22);
                    if (class_isMetaClass(v179))
                    {
                      v180 = 43;
                    }

                    else
                    {
                      v180 = 45;
                    }

                    v181 = object_getClassName(v22);
                    v182 = sel_getName("_loadEmbeddedSecureElement");
                    *buf = 67109890;
                    *&buf[4] = v180;
                    *&buf[8] = 2082;
                    *&buf[10] = v181;
                    *&buf[18] = 2082;
                    *&buf[20] = v182;
                    *&buf[28] = 1024;
                    *&buf[30] = 1523;
                    _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get embedded SE info", buf, 0x22u);
                  }
                }

                os_unfair_lock_lock(v22 + 12);
                objc_storeStrong(v22 + 5, v171);
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v183 = NFLogGetLogger();
                if (v183)
                {
                  v184 = v183;
                  v185 = object_getClass(v22);
                  v186 = class_isMetaClass(v185);
                  v187 = object_getClassName(v22);
                  v188 = sel_getName("_loadEmbeddedSecureElement");
                  v282 = [*(v22 + 5) migrationContext];
                  v283 = [*(v22 + 5) migrationState];
                  v189 = 45;
                  if (v186)
                  {
                    v189 = 43;
                  }

                  v184(6, "%c[%{public}s %{public}s]:%i After SLAM recovery, ctx %d state %d", v189, v187, v188, 1528, v282, v283);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v190 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
                {
                  v191 = object_getClass(v22);
                  if (class_isMetaClass(v191))
                  {
                    v192 = 43;
                  }

                  else
                  {
                    v192 = 45;
                  }

                  v193 = object_getClassName(v22);
                  v194 = sel_getName("_loadEmbeddedSecureElement");
                  v195 = [*(v22 + 5) migrationContext];
                  v196 = [*(v22 + 5) migrationState];
                  *buf = 67110402;
                  *&buf[4] = v192;
                  *&buf[8] = 2082;
                  *&buf[10] = v193;
                  *&buf[18] = 2082;
                  *&buf[20] = v194;
                  *&buf[28] = 1024;
                  *&buf[30] = 1528;
                  *&buf[34] = 1024;
                  *&buf[36] = v195;
                  *&buf[40] = 1024;
                  *&buf[42] = v196;
                  _os_log_impl(&_mh_execute_header, v190, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i After SLAM recovery, ctx %d state %d", buf, 0x2Eu);
                }

                os_unfair_lock_unlock(v22 + 12);
                v99 = v289;
              }

              else
              {
                v286 = 0;
              }

              v197 = [NSString alloc];
              v198 = NSTemporaryDirectory();
              v199 = [v197 initWithFormat:@"%@/%@", v198, @"nfcd.firstlaunch"];

              os_unfair_lock_lock(v22 + 12);
              v200 = *v141;
              os_unfair_lock_unlock(v22 + 12);
              if (v200)
              {
                v201 = +[NSFileManager defaultManager];
                v202 = [v201 fileExistsAtPath:v199];

                if ((v202 & 1) == 0)
                {
                  v203 = +[NSFileManager defaultManager];
                  v204 = [v203 createFileAtPath:v199 contents:0 attributes:0];

                  if (v204)
                  {
                    v205 = +[NSUserDefaults standardUserDefaults];
                    v206 = [v205 arrayForKey:@"BootHistory"];

                    v285 = v206;
                    if (v206)
                    {
                      v207 = [[NSMutableArray alloc] initWithArray:v206];
                    }

                    else
                    {
                      v207 = objc_opt_new();
                    }

                    v284 = v207;
                    v208 = [v200 restrictedMode];
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v209 = NFLogGetLogger();
                    if (v209)
                    {
                      v210 = v209;
                      v211 = object_getClass(v22);
                      v212 = class_isMetaClass(v211);
                      v266 = object_getClassName(v22);
                      v278 = sel_getName("_initializeSecureElementBootHistory");
                      v213 = 45;
                      if (v212)
                      {
                        v213 = 43;
                      }

                      v210(6, "%c[%{public}s %{public}s]:%i Boot SE state: %d", v213, v266, v278, 1117, v208);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v214 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
                    {
                      v215 = object_getClass(v22);
                      if (class_isMetaClass(v215))
                      {
                        v216 = 43;
                      }

                      else
                      {
                        v216 = 45;
                      }

                      v217 = object_getClassName(v22);
                      v218 = sel_getName("_initializeSecureElementBootHistory");
                      *buf = 67110146;
                      *&buf[4] = v216;
                      *&buf[8] = 2082;
                      *&buf[10] = v217;
                      *&buf[18] = 2082;
                      *&buf[20] = v218;
                      *&buf[28] = 1024;
                      *&buf[30] = 1117;
                      *&buf[34] = 1024;
                      *&buf[36] = v208;
                      _os_log_impl(&_mh_execute_header, v214, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Boot SE state: %d", buf, 0x28u);
                    }

                    v219 = [NSNumber numberWithInt:v208];
                    [v284 addObject:v219];

                    v220 = v284;
                    v221 = v220;
                    if ([v220 count] >= 0x1F)
                    {
                      v221 = [v220 subarrayWithRange:{1, 30}];
                    }

                    v222 = +[NSUserDefaults standardUserDefaults];
                    [v222 removeObjectForKey:@"lowTemperatureCount"];

                    v223 = +[NSUserDefaults standardUserDefaults];
                    [v223 setObject:v221 forKey:@"BootHistory"];

                    v224 = +[NSUserDefaults standardUserDefaults];
                    [v224 synchronize];

                    v99 = v289;
                  }
                }

                v225 = v22;
                objc_sync_enter(v225);
                v226 = +[NSUserDefaults standardUserDefaults];
                v227 = [v226 arrayForKey:@"BootHistory"];
                [v200 setBootHistory:v227];

                objc_sync_exit(v225);
              }

              v228 = sub_10004BF60(NFRoutingConfig, 0);
              v229 = [v22 setRoutingConfig:v228];

              if (!v229)
              {
                v230 = sub_100256130(*(v22 + 48));
                v231 = sub_100261EA4(*(v22 + 48));
                v232 = +[NSUserDefaults standardUserDefaults];
                [v232 removeObjectForKey:@"SecureElementSequenceCounter"];

                *v293 = 0;
                v233 = sub_1000A02D0(*(v22 + 48), v293);
                if (v233)
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v234 = NFLogGetLogger();
                  if (v234)
                  {
                    v235 = v234;
                    v236 = object_getClass(v22);
                    v237 = class_isMetaClass(v236);
                    v267 = object_getClassName(v22);
                    v279 = sel_getName("_loadEmbeddedSecureElement");
                    v238 = 45;
                    if (v237)
                    {
                      v238 = 43;
                    }

                    v235(3, "%c[%{public}s %{public}s]:%i Failed to get LPEMCounter: %{public}@", v238, v267, v279, 1553, v233);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v239 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v239, OS_LOG_TYPE_ERROR))
                  {
                    v240 = object_getClass(v22);
                    if (class_isMetaClass(v240))
                    {
                      v241 = 43;
                    }

                    else
                    {
                      v241 = 45;
                    }

                    v242 = object_getClassName(v22);
                    v243 = sel_getName("_loadEmbeddedSecureElement");
                    *buf = 67110146;
                    *&buf[4] = v241;
                    *&buf[8] = 2082;
                    *&buf[10] = v242;
                    *&buf[18] = 2082;
                    *&buf[20] = v243;
                    *&buf[28] = 1024;
                    *&buf[30] = 1553;
                    *&buf[34] = 2114;
                    *&buf[36] = v233;
                    _os_log_impl(&_mh_execute_header, v239, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get LPEMCounter: %{public}@", buf, 0x2Cu);
                  }
                }

                v99 = v289;
              }

              if (([*(v22 + 8) registerForEvents] & 1) == 0)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v244 = NFLogGetLogger();
                if (v244)
                {
                  v245 = v244;
                  v246 = object_getClass(v22);
                  v247 = class_isMetaClass(v246);
                  v248 = object_getClassName(v22);
                  v280 = sel_getName("_initializeHardwareAndReportFailure:");
                  v249 = 45;
                  if (v247)
                  {
                    v249 = 43;
                  }

                  v245(3, "%c[%{public}s %{public}s]:%i Failed to register for power events", v249, v248, v280, 948);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v250 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v250, OS_LOG_TYPE_ERROR))
                {
                  v251 = object_getClass(v22);
                  if (class_isMetaClass(v251))
                  {
                    v252 = 43;
                  }

                  else
                  {
                    v252 = 45;
                  }

                  v253 = object_getClassName(v22);
                  v254 = sel_getName("_initializeHardwareAndReportFailure:");
                  *buf = 67109890;
                  *&buf[4] = v252;
                  *&buf[8] = 2082;
                  *&buf[10] = v253;
                  *&buf[18] = 2082;
                  *&buf[20] = v254;
                  *&buf[28] = 1024;
                  *&buf[30] = 948;
                  _os_log_impl(&_mh_execute_header, v250, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to register for power events", buf, 0x22u);
                }
              }

              v255 = objc_opt_new();
              v256 = *(v22 + 12);
              *(v22 + 12) = v255;

              v257 = *(v22 + 12);
              v258 = *(v22 + 30);
              v290[0] = _NSConcreteStackBlock;
              v290[1] = 3221225472;
              v290[2] = sub_1000E3860;
              v290[3] = &unk_100316188;
              v290[4] = v22;
              sub_100207314(v257, v258, v290);
              if (v99 == 2)
              {
                sub_1000E3F30(v22);
              }

              [v22 maybeStartNextSession];
              sub_10021CC94(*(a1 + 376), @"Load HW");
              v259 = +[NFPowerAssertion sharedPowerAssertion];
              [v259 releasePowerAssertion:@"Load Stack"];

              sub_1000E2158(v22, 60.0);
              notify_post("com.apple.nfcd.started");
            }

            return;
          }

          v117 = [NSError alloc];
          v118 = [NSString stringWithUTF8String:"nfcd"];
          *v293 = NSLocalizedDescriptionKey;
          v119 = [NSString stringWithUTF8String:"Stack Error"];
          *v295 = v119;
          *v296 = &off_100331440;
          *v294 = @"Line";
          *&v294[8] = @"Method";
          v120 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_initializeSecureElementInfo")];
          *&v296[8] = v120;
          *&v294[16] = NSDebugDescriptionErrorKey;
          v121 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_initializeSecureElementInfo"), 1244];
          *&v296[16] = v121;
          v122 = [NSDictionary dictionaryWithObjects:v295 forKeys:v293 count:4];
          v100 = [v117 initWithDomain:v118 code:15 userInfo:v122];

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v123 = NFLogGetLogger();
          if (v123)
          {
            v124 = v123;
            v125 = object_getClass(v22);
            v126 = class_isMetaClass(v125);
            v127 = v100;
            v128 = object_getClassName(v22);
            v275 = sel_getName("_initializeSecureElementInfo");
            v129 = 45;
            if (v126)
            {
              v129 = 43;
            }

            v264 = v128;
            v100 = v127;
            v124(3, "%c[%{public}s %{public}s]:%i Failed to get embedded SE info", v129, v264, v275, 1245);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v112 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
          {
            v130 = object_getClass(v22);
            if (class_isMetaClass(v130))
            {
              v131 = 43;
            }

            else
            {
              v131 = 45;
            }

            v132 = object_getClassName(v22);
            v133 = sel_getName("_initializeSecureElementInfo");
            *buf = 67109890;
            *&buf[4] = v131;
            *&buf[8] = 2082;
            *&buf[10] = v132;
            *&buf[18] = 2082;
            *&buf[20] = v133;
            *&buf[28] = 1024;
            *&buf[30] = 1245;
            _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get embedded SE info", buf, 0x22u);
          }

          v4 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
        }

        sub_10021CC94(*(a1 + 376), @"Load HW Info");
        if (v100)
        {
          v134 = *(v22 + 49);
          *(v22 + 49) = 0;

          os_unfair_lock_lock(v22 + 12);
          v135 = *(v22 + 5);
          *(v22 + 5) = 0;

          os_unfair_lock_unlock(v22 + 12);
        }

        goto LABEL_112;
      }

      v56 = dispatch_get_global_queue(17, 0);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000E6228;
      *&buf[24] = &unk_100318330;
      *&buf[32] = v48;
      *&buf[40] = v47;
      v292 = "_updateSystemHealth:reportFailure:";
      dispatch_async(v56, buf);
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v49 = NFLogGetLogger();
      if (v49)
      {
        v50 = v49;
        v51 = object_getClass(v22);
        v52 = class_isMetaClass(v51);
        v53 = v21;
        v54 = object_getClassName(v22);
        v271 = sel_getName("_updateSystemHealth:reportFailure:");
        v55 = 45;
        if (v52)
        {
          v55 = 43;
        }

        v260 = v54;
        v21 = v53;
        v50(4, "%c[%{public}s %{public}s]:%i missing system health library", v55, v260, v271, 1081);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v56 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = object_getClass(v22);
        if (class_isMetaClass(v57))
        {
          v58 = 43;
        }

        else
        {
          v58 = 45;
        }

        v59 = object_getClassName(v22);
        v60 = sel_getName("_updateSystemHealth:reportFailure:");
        *v295 = 67109890;
        *&v295[4] = v58;
        *v296 = 2082;
        *&v296[2] = v59;
        *&v296[10] = 2082;
        *&v296[12] = v60;
        *&v296[20] = 1024;
        *&v296[22] = 1081;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i missing system health library", v295, 0x22u);
      }
    }

    goto LABEL_58;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v36 = NFLogGetLogger();
  if (v36)
  {
    v37 = v36;
    v38 = object_getClass(a1);
    v39 = class_isMetaClass(v38);
    v40 = object_getClassName(a1);
    v270 = sel_getName("_initializeHardwareAndReportFailure:");
    v41 = 45;
    if (v39)
    {
      v41 = 43;
    }

    v37(3, "%c[%{public}s %{public}s]:%i Failed to hold assertion - device is probably going to sleep.", v41, v40, v270, 910);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v42 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v43 = object_getClass(a1);
    if (class_isMetaClass(v43))
    {
      v44 = 43;
    }

    else
    {
      v44 = 45;
    }

    *buf = 67109890;
    *&buf[4] = v44;
    *&buf[8] = 2082;
    *&buf[10] = object_getClassName(a1);
    *&buf[18] = 2082;
    *&buf[20] = sel_getName("_initializeHardwareAndReportFailure:");
    *&buf[28] = 1024;
    *&buf[30] = 910;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to hold assertion - device is probably going to sleep.", buf, 0x22u);
  }
}

void sub_1000E0EB4(id *a1, uint64_t a2)
{
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("notifyOfHwStateChanged:");
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i Notifying client of state update : %u.", v8, ClassName, Name, 557, a2);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(a1);
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      *buf = 67110146;
      v26 = v11;
      v27 = 2082;
      v28 = object_getClassName(a1);
      v29 = 2082;
      v30 = sel_getName("notifyOfHwStateChanged:");
      v31 = 1024;
      v32 = 557;
      v33 = 1024;
      v34 = a2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Notifying client of state update : %u.", buf, 0x28u);
    }

    v12 = sub_100003548(a1);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = [v12 allValues];
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v20 + 1) + 8 * i) hwStateDidChange:a2];
        }

        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }

    [a1[21] hwStateDidChange:a2];
  }
}

void sub_1000E1108(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 104))
    {
      v2 = sub_100233748();
      v3 = *(a1 + 104);
      *(a1 + 104) = v2;

      v4 = *(a1 + 104);
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1000E11C0;
      v5[3] = &unk_1003162B8;
      v5[4] = a1;
      v5[5] = "_scheduleDailyAnalytics";
      sub_100233938(v4, @"com.apple.nfcd.coreanalytics.event", v5);
    }
  }
}

void sub_1000E11C0(uint64_t a1, void *a2)
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
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Stats scheduler invoked", v9, ClassName, Name, 535);
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
    *v31 = 2082;
    *&v31[2] = v13;
    *&v31[10] = 2082;
    *&v31[12] = v14;
    *&v31[20] = 1024;
    *&v31[22] = 535;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Stats scheduler invoked", buf, 0x22u);
  }

  if (v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v16 = v15;
      v17 = object_getClass(*(a1 + 32));
      v18 = class_isMetaClass(v17);
      v27 = object_getClassName(*(a1 + 32));
      v29 = sel_getName(*(a1 + 40));
      v19 = 45;
      if (v18)
      {
        v19 = 43;
      }

      v16(3, "%c[%{public}s %{public}s]:%i %{public}@", v19, v27, v29, 538, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
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
      *buf = 67110146;
      *&buf[4] = v22;
      *v31 = 2082;
      *&v31[2] = v23;
      *&v31[10] = 2082;
      *&v31[12] = v24;
      *&v31[20] = 1024;
      *&v31[22] = 538;
      *&v31[26] = 2114;
      *&v31[28] = v3;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }
  }

  else
  {
    v25 = *(a1 + 32);
    if (v25)
    {
      v26 = *(v25 + 240);
      *buf = _NSConcreteStackBlock;
      *v31 = 3221225472;
      *&v31[8] = sub_1000E230C;
      *&v31[16] = &unk_100315F58;
      *&v31[24] = v25;
      *&v31[32] = "triggerDailyStats";
      dispatch_async(v26, buf);
    }
  }
}

void sub_1000E1A90(uint64_t a1)
{
  os_unfair_lock_lock(*(a1 + 48));
  v2 = *(*(a1 + 40) + 8);
  if (*(v2 + 24))
  {
    *(v2 + 24) = 0;
    os_unfair_lock_unlock(*(a1 + 48));
    v3 = *(a1 + 32);
    if (*(v3 + 364) != 1)
    {
      if ([*(v3 + 392) hasLPEMSupport])
      {
        v4 = [*(a1 + 32) driverWrapper];
        v5 = sub_1001A9F5C(v4);

        if (v5)
        {
          return;
        }
      }

      v3 = *(a1 + 32);
    }

    v7 = *(v3 + 376);

    sub_10021D334(v7);
  }

  else
  {
    v6 = *(a1 + 48);

    os_unfair_lock_unlock(v6);
  }
}

BOOL sub_1000E1B64(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a1[48];
  v5 = [[NSData alloc] initWithBytes:&unk_100297758 length:12];
  LODWORD(v4) = sub_1001595DC(v4, v5, 0);

  if (!v4)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_getSEMemoryInfo:result:");
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i Failed to select CASD", v13, ClassName, Name, 1220);
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

      *buf = 67109890;
      v19 = v16;
      v20 = 2082;
      v21 = object_getClassName(a1);
      v22 = 2082;
      v23 = sel_getName("_getSEMemoryInfo:result:");
      v24 = 1024;
      v25 = 1220;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CASD", buf, 0x22u);
    }

    return 0;
  }

  v6 = a1[48];

  return sub_100092D68(v6, a2);
}

id sub_1000E1D7C(uint64_t a1)
{
  if (!a1 || [*(a1 + 392) siliconName] < 0xE)
  {
    v2 = 0;
    goto LABEL_10;
  }

  v3 = *(a1 + 376);
  v8 = 0;
  v4 = sub_1001E9340(v3, &v8);
  v5 = v8;
  v6 = v5;
  if (v4)
  {
  }

  else if ([v5 count])
  {
    v2 = v6;
    goto LABEL_9;
  }

  v2 = 0;
LABEL_9:

LABEL_10:

  return v2;
}

id sub_1000E1E20(uint64_t a1)
{
  if (!a1 || !*(a1 + 392))
  {
    return 0;
  }

  v2 = +[NFCALogger sharedCALogger];
  v3 = [v2 getHardwareTypeForCA:{objc_msgSend(*(a1 + 392), "siliconName")}];

  return v3;
}

void sub_1000E1E88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[4];
  if (!v5)
  {
    *(*(a1 + 32) + 32) = malloc_type_calloc(1uLL, 0x34uLL, 0x10000403884A0CCuLL);
    v4 = *(a1 + 32);
    v5 = v4[4];
    if (!v5)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v19 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 40));
        v23 = 45;
        if (isMetaClass)
        {
          v23 = 43;
        }

        v19(3, "%c[%{public}s %{public}s]:%i Failed to create SE memory.", v23, ClassName, Name, 771);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

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
      v27 = sel_getName(*(a1 + 40));
      *buf = 67109890;
      v31 = v25;
      v32 = 2082;
      v33 = v26;
      v34 = 2082;
      v35 = v27;
      v36 = 1024;
      v37 = 771;
      v17 = "%c[%{public}s %{public}s]:%i Failed to create SE memory.";
      goto LABEL_22;
    }
  }

  if (!sub_1000E1B64(v4, v5))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v6 = NFLogGetLogger();
    if (v6)
    {
      v7 = v6;
      v8 = object_getClass(*(a1 + 32));
      v9 = class_isMetaClass(v8);
      v10 = object_getClassName(*(a1 + 32));
      v28 = sel_getName(*(a1 + 40));
      v11 = 45;
      if (v9)
      {
        v11 = 43;
      }

      v7(4, "%c[%{public}s %{public}s]:%i Failed to get memory info", v11, v10, v28, 776);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

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
    v16 = sel_getName(*(a1 + 40));
    *buf = 67109890;
    v31 = v14;
    v32 = 2082;
    v33 = v15;
    v34 = 2082;
    v35 = v16;
    v36 = 1024;
    v37 = 776;
    v17 = "%c[%{public}s %{public}s]:%i Failed to get memory info";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v17, buf, 0x22u);
LABEL_23:
  }
}

id *sub_1000E2158(id *result, double a2)
{
  if (result[17])
  {
    v3 = result;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("schedulePostStartupWork:");
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i Scheduling post stack bootup work in %f seconds", v9, ClassName, Name, 857, *&a2);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = object_getClass(v3);
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      *buf = 67110146;
      v15 = v12;
      v16 = 2082;
      v17 = object_getClassName(v3);
      v18 = 2082;
      v19 = sel_getName("schedulePostStartupWork:");
      v20 = 1024;
      v21 = 857;
      v22 = 2048;
      v23 = a2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Scheduling post stack bootup work in %f seconds", buf, 0x2Cu);
    }

    return [v3[17] startTimer:a2];
  }

  return result;
}

void sub_1000E230C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 240);
  v3 = sub_10004BF2C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E23D8;
  v5[3] = &unk_100318458;
  v6 = *(a1 + 32);
  v4 = [_NFBuiltinSession createSession:@"Daily Stats" workQueue:v2 routing:v3 sessionQueuer:v6 didStartWork:v5];
}

void sub_1000E23D8(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i daily stats", v7, ClassName, Name, 876);
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
    *&buf[4] = v10;
    *v88 = 2082;
    *&v88[2] = v11;
    *&v88[10] = 2082;
    *&v88[12] = v12;
    *&v88[20] = 1024;
    *&v88[22] = 876;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i daily stats", buf, 0x22u);
  }

  sub_1000E2CD4(*(a1 + 32));
  v13 = sub_100033938(*(*(a1 + 32) + 24));
  if (v13)
  {
    sub_1000A5C04(NFUnifiedAccessTransactionCALogger, v13);
  }

  v14 = sub_100033F64(*(*(a1 + 32) + 24));

  if (v14)
  {
    sub_1000A5C78(NFUnifiedAccessTransactionCALogger, v14);
  }

  v15 = *(a1 + 32);
  v16 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
  if (v15)
  {
    v17 = objc_opt_new();
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    if (sub_1000E1B64(v15, &v80))
    {
      v101[0] = @"seTransientDeselect";
      v18 = [NSNumber numberWithUnsignedInt:DWORD2(v80)];
      v102[0] = v18;
      v101[1] = @"seTransientReset";
      v19 = [NSNumber numberWithUnsignedInt:DWORD1(v80)];
      v102[1] = v19;
      v101[2] = @"seTransientPersistent";
      v20 = [NSNumber numberWithUnsignedInt:v80];
      v102[2] = v20;
      v101[3] = @"seAvailableIndices";
      [NSNumber numberWithUnsignedInt:HIDWORD(v80)];
      v22 = v21 = v17;
      v102[3] = v22;
      v101[4] = @"seTotalIndices";
      v23 = [NSNumber numberWithUnsignedInt:v81];
      v102[4] = v23;
      v24 = [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:5];
      [v21 addEntriesFromDictionary:v24];

      v17 = v21;
      v16 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
    }

    v25 = sub_1000E1D7C(v15);
    v26 = v25;
    if (v25 && [v25 count])
    {
      sub_10022EED8(NFDailyStatisticsCALogger, v26);
    }

    os_unfair_lock_lock((v15 + 48));
    v27 = *(v15 + 40);
    if (v27)
    {
      v28 = [*(v15 + 40) migrationState];
      v66 = [*(v15 + 40) deviceType];
      v69 = [*(v15 + 40) firmwareVersion];
      v65 = [*(v15 + 40) hardwareVersion];
      v73 = [*(v15 + 40) signingKeyType];
      v29 = [*(v15 + 40) sequenceCounter];
      v77 = [*(v15 + 40) referenceCounter];
      v71 = [*(v15 + 40) OSMode];
      v68 = [*(v15 + 40) restrictedMode];
      v76 = [*(v15 + 40) migrationPackages];
      v75 = [*(v15 + 40) migrationInstances];
      v74 = [*(v15 + 40) platformIdentifier];
    }

    else
    {
      v69 = 0;
      v71 = 0;
      v29 = 0;
      v76 = 0;
      v77 = 0;
      v74 = 0;
      v75 = 0;
      v65 = 0;
      v66 = 0;
      v73 = 0;
      v28 = 0;
      v68 = 1;
    }

    os_unfair_lock_unlock((v15 + 48));
    v78 = &stru_10031EA18;
    if (v27 && *(v15 + 392))
    {
      v61 = v28;
      v30 = *(v15 + 384);
      v79 = &stru_10031EA18;
      v31 = sub_1000A0C8C(v30, &v79);
      v78 = v79;
      v32 = sub_10009E0B8(*(v15 + 384), &v83 + 1, 1);
      v86[0] = @"nfccHWVersion";
      v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(v15 + 392) siliconVersion]);
      *buf = v33;
      v86[1] = @"nfccROMVersion";
      v59 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(v15 + 392) ROMVersion]);
      *v88 = v59;
      v86[2] = @"nfccFWVersion";
      v58 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(v15 + 392) firmwareVersion]);
      *&v88[8] = v58;
      v86[3] = @"middlewareVersion";
      v57 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(v15 + 392) middlewareVersion]);
      *&v88[16] = v57;
      v86[4] = @"hardwareType";
      v56 = sub_1000E1E20(v15);
      v63 = v26;
      v64 = v14;
      v72 = v17;
      v62 = v27;
      v60 = v33;
      if (v56)
      {
        v34 = [NSNumber numberWithUnsignedInt:sub_1000E1E20(v15)];
      }

      else
      {
        v34 = &off_1003313E0;
      }

      v35 = v66;
      v67 = v34;
      *&v88[24] = v34;
      v86[5] = @"seDeviceType";
      v36 = [NSNumber numberWithUnsignedInteger:v35];
      v89 = v36;
      v86[6] = @"seHWVersion";
      v37 = [NSNumber numberWithUnsignedInteger:v65];
      v90 = v37;
      v86[7] = @"seFWVersion";
      v38 = [NSNumber numberWithUnsignedInteger:v69];
      v91 = v38;
      v86[8] = @"seSignKeyType";
      v39 = [NSNumber numberWithUnsignedInteger:v73];
      v40 = v39;
      v70 = v29;
      if (v29)
      {
        v41 = v29;
      }

      else
      {
        v41 = &off_1003313E0;
      }

      v92 = v39;
      v93 = v41;
      v86[9] = @"seSequenceCounter";
      v86[10] = @"seReferenceCounter";
      v42 = v77;
      if (!v77)
      {
        v42 = &off_1003313E0;
      }

      v94 = v42;
      v86[11] = @"seOSMode";
      v43 = [NSNumber numberWithUnsignedInteger:v71];
      v95 = v43;
      v86[12] = @"seRestrictedMode";
      v44 = [NSNumber numberWithBool:v68];
      v96 = v44;
      v86[13] = @"seMigrationState";
      v45 = [NSNumber numberWithUnsignedInteger:v61];
      v46 = v45;
      v47 = v76;
      if (!v76)
      {
        v47 = &off_1003313E0;
      }

      v97 = v45;
      v98 = v47;
      v86[14] = @"seMigrationPkgs";
      v86[15] = @"seMigrationInst";
      v48 = v75;
      if (!v75)
      {
        v48 = &off_1003313E0;
      }

      v86[16] = @"sePidMigrationState";
      v99 = v48;
      v100 = v78;
      v49 = [NSDictionary dictionaryWithObjects:buf forKeys:v86 count:17];
      [v72 addEntriesFromDictionary:v49];

      if (v56)
      {
      }

      v26 = v63;
      v14 = v64;
      v16 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
      v17 = v72;
      v27 = v62;
      v29 = v70;
    }

    if ([v17 count])
    {
      sub_10022E8DC(NFDailyStatisticsCALogger, v17);
    }

    v50 = [*(v15 + 384) cachedAppletsUnfiltered];

    if (v50)
    {
      sub_1002531D4(*(v15 + 384));
    }

    v51 = v16[421];
    v84 = @"radioIsEnabled";
    if (*(v15 + 296) == 1)
    {
      v52 = &__kCFBooleanTrue;
    }

    else
    {
      v52 = &__kCFBooleanFalse;
    }

    v85 = v52;
    [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    v54 = v53 = v16;
    [v51 updateGeneralDeviceStatistic:v54];

    v16 = v53;
    [v53[421] postGeneralDeviceStatistics];
    [*(v15 + 128) updateNFCDefaultForCA];
    [v53[421] postAnalyticsGeneralTransactionStatistics];
    if (HIDWORD(v83) && v27 && *(v15 + 392))
    {
      sub_10022E960(NFDailyStatisticsCALogger, HIDWORD(v83), v73, v29, v74);
    }
  }

  [v16[421] postDailyTagStatistics];
}

void sub_1000E2CD4(void **a1)
{
  if (a1)
  {
    v49 = 0;
    v2 = sub_10009DEA8(a1[48]);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v4 = Logger;
    if (v2)
    {
      if (Logger)
      {
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_logSEAttacks");
        v7 = 45;
        if (isMetaClass)
        {
          v7 = 43;
        }

        v4(3, "%c[%{public}s %{public}s]:%i Failed to get AC log presence : %@", v7, ClassName, Name, 8386, v2);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v8 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = object_getClass(a1);
        if (class_isMetaClass(v9))
        {
          v10 = 43;
        }

        else
        {
          v10 = 45;
        }

        *buf = 67110146;
        v53 = v10;
        v54 = 2082;
        v55 = object_getClassName(a1);
        v56 = 2082;
        v57 = sel_getName("_logSEAttacks");
        v58 = 1024;
        v59 = 8386;
        v60 = 2112;
        v61 = v2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get AC log presence : %@", buf, 0x2Cu);
      }
    }

    else
    {
      if (Logger)
      {
        v11 = object_getClass(a1);
        v12 = class_isMetaClass(v11);
        v13 = object_getClassName(a1);
        v14 = sel_getName("_logSEAttacks");
        v15 = 45;
        if (v12)
        {
          v15 = 43;
        }

        v4(6, "%c[%{public}s %{public}s]:%i AC Log%s present", v15, v13, v14, 8383, " not");
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
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

        *buf = 67110146;
        v53 = v18;
        v54 = 2082;
        v55 = object_getClassName(a1);
        v56 = 2082;
        v57 = sel_getName("_logSEAttacks");
        v58 = 1024;
        v59 = 8383;
        v60 = 2080;
        v61 = " not";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i AC Log%s present", buf, 0x2Cu);
      }

      v50 = @"hasAttackLogs";
      v51 = &__kCFBooleanFalse;
      v8 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      [NFGeneralStatisticsCALogger updateGeneralDeviceStatistic:v8];
    }

    v19 = a1[48];
    v48 = v2;
    v20 = sub_10009D0D0(v19, &v48);
    v21 = v48;

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    v23 = v22;
    if (v21)
    {
      if (v22)
      {
        v24 = object_getClass(a1);
        v25 = class_isMetaClass(v24);
        v43 = object_getClassName(a1);
        v46 = sel_getName("_logSEAttacks");
        v26 = 45;
        if (v25)
        {
          v26 = 43;
        }

        v23(3, "%c[%{public}s %{public}s]:%i Failed to get AC log : %@", v26, v43, v46, 8392, v21);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      v28 = object_getClass(a1);
      if (class_isMetaClass(v28))
      {
        v29 = 43;
      }

      else
      {
        v29 = 45;
      }

      v30 = object_getClassName(a1);
      v31 = sel_getName("_logSEAttacks");
      *buf = 67110146;
      v53 = v29;
      v54 = 2082;
      v55 = v30;
      v56 = 2082;
      v57 = v31;
      v58 = 1024;
      v59 = 8392;
      v60 = 2112;
      v61 = v21;
      v32 = "%c[%{public}s %{public}s]:%i Failed to get AC log : %@";
      v33 = v27;
      v34 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (v22)
      {
        v35 = object_getClass(a1);
        v36 = class_isMetaClass(v35);
        v44 = object_getClassName(a1);
        v47 = sel_getName("_logSEAttacks");
        v37 = 45;
        if (v36)
        {
          v37 = 43;
        }

        v23(6, "%c[%{public}s %{public}s]:%i AC Log : %{public}@", v37, v44, v47, 8390, v20);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      v38 = object_getClass(a1);
      if (class_isMetaClass(v38))
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }

      v40 = object_getClassName(a1);
      v41 = sel_getName("_logSEAttacks");
      *buf = 67110146;
      v53 = v39;
      v54 = 2082;
      v55 = v40;
      v56 = 2082;
      v57 = v41;
      v58 = 1024;
      v59 = 8390;
      v60 = 2114;
      v61 = v20;
      v32 = "%c[%{public}s %{public}s]:%i AC Log : %{public}@";
      v33 = v27;
      v34 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&_mh_execute_header, v33, v34, v32, buf, 0x2Cu);
LABEL_42:
  }
}

void sub_1000E3290(void **a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (NFProductIsVM())
    {
      sub_1000E3608(a1, 3);
    }

    else
    {
      v4 = sub_10021A4A0(a1[47], v3, 0);
      v5 = a1[47];
      if (v5)
      {
        v6 = v5[32];
      }

      else
      {
        v6 = 0;
      }

      sub_1000E3608(a1, v6);
      if (v4)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v8 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("_bootHardwareForSession:");
          v12 = 45;
          if (isMetaClass)
          {
            v12 = 43;
          }

          v8(4, "%c[%{public}s %{public}s]:%i Failed to open session : %@. State is %lu", v12, ClassName, Name, 1012, v4, v6);
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

          *buf = 67110402;
          v29 = v15;
          v30 = 2082;
          v31 = object_getClassName(a1);
          v32 = 2082;
          v33 = sel_getName("_bootHardwareForSession:");
          v34 = 1024;
          v35 = 1012;
          v36 = 2112;
          v37 = v4;
          v38 = 2048;
          v39 = v6;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@. State is %lu", buf, 0x36u);
        }
      }

      else
      {
        v16 = sub_10021A4A0(a1[47], @"Check RF Session Allowed", 1uLL);
        if (!v16)
        {
          sub_10021CC94(a1[47], @"Check RF Session Allowed");
          goto LABEL_29;
        }

        v4 = v16;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v17 = NFLogGetLogger();
        if (v17)
        {
          v18 = v17;
          v19 = object_getClass(a1);
          v20 = class_isMetaClass(v19);
          v25 = object_getClassName(a1);
          v27 = sel_getName("_bootHardwareForSession:");
          v21 = 45;
          if (v20)
          {
            v21 = 43;
          }

          v18(3, "%c[%{public}s %{public}s]:%i RF sessions NOT allowed : %@", v21, v25, v27, 1016, v4);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v22 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
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

          *buf = 67110146;
          v29 = v24;
          v30 = 2082;
          v31 = object_getClassName(a1);
          v32 = 2082;
          v33 = sel_getName("_bootHardwareForSession:");
          v34 = 1024;
          v35 = 1016;
          v36 = 2112;
          v37 = v4;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i RF sessions NOT allowed : %@", buf, 0x2Cu);
        }
      }
    }
  }

LABEL_29:
}

void sub_1000E3608(void *a1, uint64_t a2)
{
  v3 = a1;
  objc_sync_enter(v3);
  if (v3[36] != a2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(v3);
      if (class_isMetaClass(Class))
      {
        v7 = 43;
      }

      else
      {
        v7 = 45;
      }

      ClassName = object_getClassName(v3);
      Name = sel_getName("_updateHardwareState:");
      v10 = v3[36] - 1;
      if (v10 > 3)
      {
        v11 = @"Unknown";
      }

      else
      {
        v11 = *(&off_100318DA8 + v10);
      }

      if ((a2 - 1) > 3)
      {
        v12 = @"Unknown";
      }

      else
      {
        v12 = *(&off_100318DA8 + a2 - 1);
      }

      v5(6, "%c[%{public}s %{public}s]:%i Hardware state %@ -> %@", v7, ClassName, Name, 1722, v11, v12);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = object_getClass(v3);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      v16 = object_getClassName(v3);
      v17 = sel_getName("_updateHardwareState:");
      v18 = v3[36] - 1;
      if (v18 > 3)
      {
        v19 = @"Unknown";
      }

      else
      {
        v19 = *(&off_100318DA8 + v18);
      }

      if ((a2 - 1) > 3)
      {
        v20 = @"Unknown";
      }

      else
      {
        v20 = *(&off_100318DA8 + a2 - 1);
      }

      *buf = 67110402;
      v22 = v15;
      v23 = 2082;
      v24 = v16;
      v25 = 2082;
      v26 = v17;
      v27 = 1024;
      v28 = 1722;
      v29 = 2112;
      v30 = v19;
      v31 = 2112;
      v32 = v20;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Hardware state %@ -> %@", buf, 0x36u);
    }

    v3[36] = a2;
  }

  objc_sync_exit(v3);
}

void sub_1000E3860(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "Lock state changed", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state = 0;
  *state_8 = 0;
  os_activity_scope_enter(v2, &state);
  os_activity_scope_leave(&state);

  v3 = *(a1 + 32);
  if (v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("lockStateChanged");
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 2784);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = object_getClass(v3);
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(v3);
      v14 = sel_getName("lockStateChanged");
      LODWORD(state) = 67109890;
      HIDWORD(state) = v12;
      *state_8 = 2082;
      *&state_8[2] = v13;
      *&state_8[10] = 2082;
      *&state_8[12] = v14;
      *&state_8[20] = 1024;
      *&state_8[22] = 2784;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", &state, 0x22u);
    }

    v15 = sub_100207630(*(v3 + 96));
    v16 = sub_1000030C8(*(v3 + 96));
    v17 = sub_100003110(*(v3 + 96));
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v19 = v18;
      v20 = object_getClass(v3);
      v21 = class_isMetaClass(v20);
      v54 = object_getClassName(v3);
      v57 = sel_getName("lockStateChanged");
      v22 = 43;
      if (!v21)
      {
        v22 = 45;
      }

      v19(6, "%c[%{public}s %{public}s]:%i isLocked: %d, hasBeenUnLocked: %d, hasBeenSEUnlocked: %d", v22, v54, v57, 2794, v15, v16, v17);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = object_getClass(v3);
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      v26 = object_getClassName(v3);
      v27 = sel_getName("lockStateChanged");
      LODWORD(state) = 67110658;
      HIDWORD(state) = v25;
      *state_8 = 2082;
      *&state_8[2] = v26;
      *&state_8[10] = 2082;
      *&state_8[12] = v27;
      *&state_8[20] = 1024;
      *&state_8[22] = 2794;
      *&state_8[26] = 1024;
      *&state_8[28] = v15;
      *&state_8[32] = 1024;
      *&state_8[34] = v16;
      v64 = 1024;
      v65 = v17;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i isLocked: %d, hasBeenUnLocked: %d, hasBeenSEUnlocked: %d", &state, 0x34u);
    }

    if (v17)
    {
      v28 = sub_100210FEC();
      sub_100213C7C(v28);
    }

    if ((v15 & 1) == 0)
    {
      objc_opt_self();
      if ((byte_10035DB90 & 1) == 0 && sub_10015C898(*(v3 + 384)))
      {
        v61 = 0;
        v29 = sub_100229BB0(NFSSEWrapper, &v61);
        v30 = v61;
        if (v29)
        {
          sub_1000E66DC(v3, 0);
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v31 = NFLogGetLogger();
          if (v31)
          {
            v32 = v31;
            v33 = object_getClass(v3);
            v34 = class_isMetaClass(v33);
            v55 = object_getClassName(v3);
            v58 = sel_getName("lockStateChanged");
            v35 = 45;
            if (v34)
            {
              v35 = 43;
            }

            v32(6, "%c[%{public}s %{public}s]:%i SSE does not support entanglement : %{public}@", v35, v55, v58, 2808, v30);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v36 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = object_getClass(v3);
            if (class_isMetaClass(v37))
            {
              v38 = 43;
            }

            else
            {
              v38 = 45;
            }

            v39 = object_getClassName(v3);
            v40 = sel_getName("lockStateChanged");
            LODWORD(state) = 67110146;
            HIDWORD(state) = v38;
            *state_8 = 2082;
            *&state_8[2] = v39;
            *&state_8[10] = 2082;
            *&state_8[12] = v40;
            *&state_8[20] = 1024;
            *&state_8[22] = 2808;
            *&state_8[26] = 2114;
            *&state_8[28] = v30;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i SSE does not support entanglement : %{public}@", &state, 0x2Cu);
          }
        }
      }
    }

    if (v16)
    {
      if ((NFProductIsMac() & 1) == 0)
      {
        sub_1000EA4CC(v3, 0);
      }

      if ((v17 & 1) == 0)
      {
        NFProductIsWatch();
LABEL_57:
        v53 = *(v3 + 240);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000F0368;
        block[3] = &unk_100315F30;
        block[4] = v3;
        dispatch_async(v53, block);
        return;
      }

      if (*(v3 + 345) == 1)
      {
        *(v3 + 345) = 0;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v41 = NFLogGetLogger();
        if (v41)
        {
          v42 = v41;
          v43 = object_getClass(v3);
          v44 = class_isMetaClass(v43);
          v45 = object_getClassName(v3);
          v59 = sel_getName("lockStateChanged");
          v46 = 45;
          if (v44)
          {
            v46 = 43;
          }

          v42(6, "%c[%{public}s %{public}s]:%i Ending hardware pre-warm", v46, v45, v59, 2841);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v47 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = object_getClass(v3);
          if (class_isMetaClass(v48))
          {
            v49 = 43;
          }

          else
          {
            v49 = 45;
          }

          v50 = object_getClassName(v3);
          v51 = sel_getName("lockStateChanged");
          LODWORD(state) = 67109890;
          HIDWORD(state) = v49;
          *state_8 = 2082;
          *&state_8[2] = v50;
          *&state_8[10] = 2082;
          *&state_8[12] = v51;
          *&state_8[20] = 1024;
          *&state_8[22] = 2841;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Ending hardware pre-warm", &state, 0x22u);
        }

        sub_10021CC94(*(v3 + 376), @"Prewarm");
      }
    }

    if ((NFProductIsWatch() & 1) == 0 && ((v17 ^ 1) & 1) == 0)
    {
      v52 = *(v3 + 240);
      state = _NSConcreteStackBlock;
      *state_8 = 3221225472;
      *&state_8[8] = sub_1000F025C;
      *&state_8[16] = &unk_100315F30;
      *&state_8[24] = v3;
      dispatch_async(v52, &state);
    }

    goto LABEL_57;
  }
}

uint64_t sub_1000E3F30(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (sub_100003384(result) == 2)
  {
    v2 = sub_10002F3E4([NFExpressModeManager alloc], v1, *(v1 + 376), *(v1 + 8), *(v1 + 240));
    v3 = *(v1 + 24);
    *(v1 + 24) = v2;

    v4 = *(v1 + 24);
    if (v4 && (*(v4 + 152) == 1 || *(v4 + 179) == 1))
    {
      v5 = sub_10021A4A0(*(v1 + 376), @"Enable Express", 1uLL);
      if (v5)
      {
LABEL_37:
        v12 = 0;
        goto LABEL_38;
      }

      if ([*(v1 + 392) hasLPEMSupport] && sub_1001A9FAC(*(v1 + 376), 1))
      {
        sub_1001AA264(*(v1 + 376), 1);
      }
    }

    else if ([*(v1 + 392) hasLPEMSupport])
    {
      v13 = sub_1002261A0();
      if (v13)
      {
        v14 = v13[4];

        if (v14)
        {
          if (v14)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v16 = Logger;
              Class = object_getClass(v1);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(v1);
              Name = sel_getName("_initializeExpressMode");
              v20 = 45;
              if (isMetaClass)
              {
                v20 = 43;
              }

              v16(3, "%c[%{public}s %{public}s]:%i ERROR : NFC headless mode is enabled but express is not.", v20, ClassName, Name, 1171);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v21 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = object_getClass(v1);
              if (class_isMetaClass(v22))
              {
                v23 = 43;
              }

              else
              {
                v23 = 45;
              }

              *buf = 67109890;
              *&buf[4] = v23;
              *v42 = 2082;
              *&v42[2] = object_getClassName(v1);
              *&v42[10] = 2082;
              *&v42[12] = sel_getName("_initializeExpressMode");
              *&v42[20] = 1024;
              *&v42[22] = 1171;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i ERROR : NFC headless mode is enabled but express is not.", buf, 0x22u);
            }
          }

          if (v14 != 1)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v24 = NFLogGetLogger();
            if (v24)
            {
              v25 = v24;
              v26 = object_getClass(v1);
              v27 = class_isMetaClass(v26);
              v28 = object_getClassName(v1);
              v40 = sel_getName("_initializeExpressMode");
              v29 = 45;
              if (v27)
              {
                v29 = 43;
              }

              v25(6, "%c[%{public}s %{public}s]:%i Headless mode is enabled but express is not. Taking session", v29, v28, v40, 1176);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v30 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = object_getClass(v1);
              if (class_isMetaClass(v31))
              {
                v32 = 43;
              }

              else
              {
                v32 = 45;
              }

              v33 = object_getClassName(v1);
              v34 = sel_getName("_initializeExpressMode");
              *buf = 67109890;
              *&buf[4] = v32;
              *v42 = 2082;
              *&v42[2] = v33;
              *&v42[10] = 2082;
              *&v42[12] = v34;
              *&v42[20] = 1024;
              *&v42[22] = 1176;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Headless mode is enabled but express is not. Taking session", buf, 0x22u);
            }

            sub_10019C0A0(v1);
          }
        }
      }
    }

    v5 = 0;
    goto LABEL_37;
  }

  v6 = [NSError alloc];
  v7 = [NSString stringWithUTF8String:"nfcd"];
  v43[0] = NSLocalizedDescriptionKey;
  v8 = [NSString stringWithUTF8String:"Unresponsive hardware"];
  *buf = v8;
  *v42 = &off_1003313F8;
  v43[1] = @"Line";
  v43[2] = @"Method";
  v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_initializeExpressMode")];
  *&v42[8] = v9;
  v43[3] = NSDebugDescriptionErrorKey;
  v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_initializeExpressMode"), 1147];
  *&v42[16] = v10;
  v11 = [NSDictionary dictionaryWithObjects:buf forKeys:v43 count:4];
  v12 = [v6 initWithDomain:v7 code:58 userInfo:v11];

  v5 = 0;
LABEL_38:

  sub_1001E121C(*(v1 + 376));
  v35 = [v1 defaultRoutingConfig:1];
  v36 = [v1 setRoutingConfig:v35];

  result = NFProductIsDevBoard();
  if ((result & 1) == 0)
  {
    result = NFProductIsNED();
    if ((result & 1) == 0 && !*(v1 + 416))
    {
      v37 = [[NFBackgroundTagReadingManager alloc] initWithQueue:*(v1 + 240) driverWrapper:*(v1 + 376)];
      v38 = *(v1 + 416);
      *(v1 + 416) = v37;

      return _objc_release_x1(v37, v38);
    }
  }

  return result;
}

id *sub_1000E44B8(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v294 = objc_opt_new();
    v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
    [v2 synchronize];
    if ([v2 BOOLForKey:@"LogNCI"])
    {
      v3 = 132;
    }

    else
    {
      v3 = 128;
    }

    if ([v2 BOOLForKey:@"LogAPI"])
    {
      v3 |= 8uLL;
    }

    if ([v2 BOOLForKey:@"LogAPDU"])
    {
      v3 |= 0x10uLL;
    }

    if ([v2 BOOLForKey:@"LogTransactionDetails"])
    {
      v3 |= 0x200uLL;
    }

    if ([v2 BOOLForKey:@"LogExpressMode"])
    {
      v3 |= 0x400uLL;
    }

    if ([v2 BOOLForKey:@"LogRSSI"])
    {
      v3 |= 0x4000uLL;
    }

    if ([v2 BOOLForKey:@"LogMW"])
    {
      v3 |= 0x40000000uLL;
    }

    if ([v2 BOOLForKey:@"DisableSEUptime"])
    {
      v3 |= 0x8000uLL;
    }

    if ([v2 BOOLForKey:@"SinglePollExpress"])
    {
      v3 |= 0x40000uLL;
    }

    if ([v2 BOOLForKey:@"SimulateRestoreOS"])
    {
      v3 |= 0x200000uLL;
    }

    if ([v2 BOOLForKey:@"LogL1ExtStandby"])
    {
      v3 |= 0x400000uLL;
    }

    if ([v2 BOOLForKey:@"ForceVenReset"])
    {
      v3 |= 0x4000000uLL;
    }

    v4 = [v2 integerForKey:@"LogRF"];
    v5 = v3 | 1;
    v6 = v3 | 2;
    if (v4 != 1)
    {
      v6 = v3;
    }

    if (v4 != 2)
    {
      v5 = v6;
    }

    if (v4 == 4)
    {
      v7 = v3 | 3;
    }

    else
    {
      v7 = v5;
    }

    if ([v2 integerForKey:@"LogLPCD"])
    {
      v7 |= 0x2000uLL;
    }

    if ([v2 integerForKey:@"LogLPCDAssist"])
    {
      v7 |= 0x100000uLL;
    }

    v8 = [v2 integerForKey:@"CETech"];
    v9 = v7 | 0x140;
    v10 = v7 | 0x160;
    if (v8 != 7)
    {
      v10 = v7;
    }

    if (v8 != 6)
    {
      v9 = v10;
    }

    v11 = v7 | 0x60;
    v12 = v7 | 0x120;
    if (v8 != 5)
    {
      v12 = v7;
    }

    if (v8 != 4)
    {
      v11 = v12;
    }

    if (v8 <= 5)
    {
      v9 = v11;
    }

    v13 = v7 | 0x20;
    v14 = v7 | 0x40;
    v15 = v7 | 0x100;
    if (v8 != 3)
    {
      v15 = v7;
    }

    if (v8 != 2)
    {
      v14 = v15;
    }

    if (v8 != 1)
    {
      v13 = v14;
    }

    if (v8 <= 3)
    {
      v16 = v13;
    }

    else
    {
      v16 = v9;
    }

    v17 = [v2 objectForKey:@"lpcdConfigOverride"];
    v293 = v17;
    if (v17)
    {
      v18 = v17;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [v18 BOOLValue];
        v20 = 0x10000;
        if (v19)
        {
          v20 = 4096;
        }

        v16 |= v20;
      }
    }

    if ([v2 BOOLForKey:@"lpcdAssistDisabled"])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v22 = Logger;
        Class = object_getClass(v1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v1);
        Name = sel_getName("_readDriverSettings");
        v26 = 45;
        if (isMetaClass)
        {
          v26 = 43;
        }

        v22(6, "%c[%{public}s %{public}s]:%i disabling LPCD assist with defaults", v26, ClassName, Name, 9053);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = object_getClass(v1);
        if (class_isMetaClass(v28))
        {
          v29 = 43;
        }

        else
        {
          v29 = 45;
        }

        *buf = 67109890;
        v296 = v29;
        v297 = 2082;
        v298 = object_getClassName(v1);
        v299 = 2082;
        v300 = sel_getName("_readDriverSettings");
        v301 = 1024;
        v302 = 9053;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i disabling LPCD assist with defaults", buf, 0x22u);
      }

      v16 |= 0x2000000uLL;
    }

    if ([v2 BOOLForKey:@"lpcdAssistWithECP"])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFLogGetLogger();
      if (v30)
      {
        v31 = v30;
        v32 = object_getClass(v1);
        v33 = class_isMetaClass(v32);
        v34 = object_getClassName(v1);
        v276 = sel_getName("_readDriverSettings");
        v35 = 45;
        if (v33)
        {
          v35 = 43;
        }

        v31(6, "%c[%{public}s %{public}s]:%i Enabling LPCD assist w/ECP", v35, v34, v276, 9058);
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
        v40 = sel_getName("_readDriverSettings");
        *buf = 67109890;
        v296 = v38;
        v297 = 2082;
        v298 = v39;
        v299 = 2082;
        v300 = v40;
        v301 = 1024;
        v302 = 9058;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Enabling LPCD assist w/ECP", buf, 0x22u);
      }

      v16 |= 0x80000000uLL;
    }

    if ([v2 BOOLForKey:@"DisableLPCDCardRemoval"])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v41 = NFLogGetLogger();
      if (v41)
      {
        v42 = v41;
        v43 = object_getClass(v1);
        v44 = class_isMetaClass(v43);
        v45 = object_getClassName(v1);
        v277 = sel_getName("_readDriverSettings");
        v46 = 45;
        if (v44)
        {
          v46 = 43;
        }

        v42(6, "%c[%{public}s %{public}s]:%i Disable LPCD card removal with defaults", v46, v45, v277, 9063);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v47 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = object_getClass(v1);
        if (class_isMetaClass(v48))
        {
          v49 = 43;
        }

        else
        {
          v49 = 45;
        }

        v50 = object_getClassName(v1);
        v51 = sel_getName("_readDriverSettings");
        *buf = 67109890;
        v296 = v49;
        v297 = 2082;
        v298 = v50;
        v299 = 2082;
        v300 = v51;
        v301 = 1024;
        v302 = 9063;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Disable LPCD card removal with defaults", buf, 0x22u);
      }

      v16 |= 0x8000000uLL;
    }

    if ([v2 BOOLForKey:@"WriteCounters"])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v52 = NFLogGetLogger();
      if (v52)
      {
        v53 = v52;
        v54 = object_getClass(v1);
        v55 = class_isMetaClass(v54);
        v56 = object_getClassName(v1);
        v278 = sel_getName("_readDriverSettings");
        v57 = 45;
        if (v55)
        {
          v57 = 43;
        }

        v53(6, "%c[%{public}s %{public}s]:%i Enabling write counters", v57, v56, v278, 9068);
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
        v62 = sel_getName("_readDriverSettings");
        *buf = 67109890;
        v296 = v60;
        v297 = 2082;
        v298 = v61;
        v299 = 2082;
        v300 = v62;
        v301 = 1024;
        v302 = 9068;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Enabling write counters", buf, 0x22u);
      }

      v16 |= 0x10000000uLL;
    }

    if ([v2 BOOLForKey:@"forceFieldDetectOff"])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v63 = NFLogGetLogger();
      if (v63)
      {
        v64 = v63;
        v65 = object_getClass(v1);
        v66 = class_isMetaClass(v65);
        v67 = object_getClassName(v1);
        v279 = sel_getName("_readDriverSettings");
        v68 = 45;
        if (v66)
        {
          v68 = 43;
        }

        v64(6, "%c[%{public}s %{public}s]:%i Force disabling FD", v68, v67, v279, 9073);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v69 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = object_getClass(v1);
        if (class_isMetaClass(v70))
        {
          v71 = 43;
        }

        else
        {
          v71 = 45;
        }

        v72 = object_getClassName(v1);
        v73 = sel_getName("_readDriverSettings");
        *buf = 67109890;
        v296 = v71;
        v297 = 2082;
        v298 = v72;
        v299 = 2082;
        v300 = v73;
        v301 = 1024;
        v302 = 9073;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Force disabling FD", buf, 0x22u);
      }

      v16 |= 0x20000000uLL;
    }

    if ([v2 BOOLForKey:@"DisableTypeBSuppression"])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v74 = NFLogGetLogger();
      if (v74)
      {
        v75 = v74;
        v76 = object_getClass(v1);
        v77 = class_isMetaClass(v76);
        v78 = object_getClassName(v1);
        v280 = sel_getName("_readDriverSettings");
        v79 = 45;
        if (v77)
        {
          v79 = 43;
        }

        v75(6, "%c[%{public}s %{public}s]:%i Force disabling Type B Suppression", v79, v78, v280, 9078);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v80 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v81 = object_getClass(v1);
        if (class_isMetaClass(v81))
        {
          v82 = 43;
        }

        else
        {
          v82 = 45;
        }

        v83 = object_getClassName(v1);
        v84 = sel_getName("_readDriverSettings");
        *buf = 67109890;
        v296 = v82;
        v297 = 2082;
        v298 = v83;
        v299 = 2082;
        v300 = v84;
        v301 = 1024;
        v302 = 9078;
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Force disabling Type B Suppression", buf, 0x22u);
      }

      v16 |= &_mh_execute_header;
    }

    if ([v2 BOOLForKey:@"coreDumpOnSPMIError"])
    {
      v16 |= 0x4000000000uLL;
    }

    if ([v2 BOOLForKey:@"disableStandby"])
    {
      v16 |= 0x800uLL;
    }

    if ([v2 BOOLForKey:@"disableLPEMFlashWrites"])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v85 = NFLogGetLogger();
      if (v85)
      {
        v86 = v85;
        v87 = object_getClass(v1);
        v88 = class_isMetaClass(v87);
        v89 = object_getClassName(v1);
        v281 = sel_getName("_readDriverSettings");
        v90 = 45;
        if (v88)
        {
          v90 = 43;
        }

        v86(6, "%c[%{public}s %{public}s]:%i Disabling LPEM flash writes", v90, v89, v281, 9090);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v91 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        v92 = object_getClass(v1);
        if (class_isMetaClass(v92))
        {
          v93 = 43;
        }

        else
        {
          v93 = 45;
        }

        v94 = object_getClassName(v1);
        v95 = sel_getName("_readDriverSettings");
        *buf = 67109890;
        v296 = v93;
        v297 = 2082;
        v298 = v94;
        v299 = 2082;
        v300 = v95;
        v301 = 1024;
        v302 = 9090;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Disabling LPEM flash writes", buf, 0x22u);
      }

      v16 |= 0x2000000000uLL;
    }

    v96 = +[NSUserDefaults standardUserDefaults];
    v97 = [v96 BOOLForKey:@"disableSERMPowerSave"];

    if (v97)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v98 = NFLogGetLogger();
      if (v98)
      {
        v99 = v98;
        v100 = object_getClass(v1);
        v101 = class_isMetaClass(v100);
        v102 = object_getClassName(v1);
        v282 = sel_getName("_readDriverSettings");
        v103 = 45;
        if (v101)
        {
          v103 = 43;
        }

        v99(6, "%c[%{public}s %{public}s]:%i Disabling SE reader mode Power save.", v103, v102, v282, 9096);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v104 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        v105 = object_getClass(v1);
        if (class_isMetaClass(v105))
        {
          v106 = 43;
        }

        else
        {
          v106 = 45;
        }

        v107 = object_getClassName(v1);
        v108 = sel_getName("_readDriverSettings");
        *buf = 67109890;
        v296 = v106;
        v297 = 2082;
        v298 = v107;
        v299 = 2082;
        v300 = v108;
        v301 = 1024;
        v302 = 9096;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Disabling SE reader mode Power save.", buf, 0x22u);
      }

      v16 |= 0x200000000uLL;
    }

    v109 = [[NSDictionary alloc] initWithContentsOfFile:@"/Library/Preferences/Logging/Subsystems/com.apple.nfc.plist"];
    if (v109)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v110 = NFLogGetLogger();
      if (v110)
      {
        v111 = v110;
        v112 = object_getClass(v1);
        v113 = class_isMetaClass(v112);
        v114 = object_getClassName(v1);
        v283 = sel_getName("_readDriverSettings");
        v115 = 45;
        if (v113)
        {
          v115 = 43;
        }

        v111(6, "%c[%{public}s %{public}s]:%i Loading managed profile settings", v115, v114, v283, 9109);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v116 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        v117 = object_getClass(v1);
        if (class_isMetaClass(v117))
        {
          v118 = 43;
        }

        else
        {
          v118 = 45;
        }

        v119 = object_getClassName(v1);
        v120 = sel_getName("_readDriverSettings");
        *buf = 67109890;
        v296 = v118;
        v297 = 2082;
        v298 = v119;
        v299 = 2082;
        v300 = v120;
        v301 = 1024;
        v302 = 9109;
        _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Loading managed profile settings", buf, 0x22u);
      }

      v121 = [v109 objectForKey:@"LogTransactionDetails"];

      if (v121)
      {
        v122 = [v109 objectForKey:@"LogTransactionDetails"];
        v123 = [v122 BOOLValue];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v124 = NFLogGetLogger();
        if (v124)
        {
          v125 = v124;
          v126 = object_getClass(v1);
          v127 = class_isMetaClass(v126);
          v267 = object_getClassName(v1);
          v284 = sel_getName("_readDriverSettings");
          v128 = 45;
          if (v127)
          {
            v128 = 43;
          }

          v125(5, "%c[%{public}s %{public}s]:%i Overriding pref settings for Tx Details with managed profile: %d", v128, v267, v284, 9112, v123);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v129 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
        {
          v130 = object_getClass(v1);
          if (class_isMetaClass(v130))
          {
            v131 = 43;
          }

          else
          {
            v131 = 45;
          }

          v132 = object_getClassName(v1);
          v133 = sel_getName("_readDriverSettings");
          *buf = 67110146;
          v296 = v131;
          v297 = 2082;
          v298 = v132;
          v299 = 2082;
          v300 = v133;
          v301 = 1024;
          v302 = 9112;
          v303 = 1024;
          v304 = v123;
          _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings for Tx Details with managed profile: %d", buf, 0x28u);
        }

        v134 = 512;
        if (!v123)
        {
          v134 = 0;
        }

        v16 = v134 | v16 & 0xFFFFFFFFFFFFFDFFLL;
      }

      v135 = [v109 objectForKey:@"LogAPDU"];

      if (v135)
      {
        v136 = [v109 objectForKey:@"LogAPDU"];
        v137 = [v136 BOOLValue];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v138 = NFLogGetLogger();
        if (v138)
        {
          v139 = v138;
          v140 = object_getClass(v1);
          v141 = class_isMetaClass(v140);
          v268 = object_getClassName(v1);
          v285 = sel_getName("_readDriverSettings");
          v142 = 45;
          if (v141)
          {
            v142 = 43;
          }

          v139(5, "%c[%{public}s %{public}s]:%i Overriding pref settings for LogAPDU with managed profile: %d", v142, v268, v285, 9118, v137);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v143 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
        {
          v144 = object_getClass(v1);
          if (class_isMetaClass(v144))
          {
            v145 = 43;
          }

          else
          {
            v145 = 45;
          }

          v146 = object_getClassName(v1);
          v147 = sel_getName("_readDriverSettings");
          *buf = 67110146;
          v296 = v145;
          v297 = 2082;
          v298 = v146;
          v299 = 2082;
          v300 = v147;
          v301 = 1024;
          v302 = 9118;
          v303 = 1024;
          v304 = v137;
          _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings for LogAPDU with managed profile: %d", buf, 0x28u);
        }

        v148 = 16;
        if (!v137)
        {
          v148 = 0;
        }

        v16 = v148 | v16 & 0xFFFFFFFFFFFFFFEFLL;
      }

      v149 = [v109 objectForKey:@"LogAPI"];

      if (v149)
      {
        v150 = [v109 objectForKey:@"LogAPI"];
        v151 = [v150 BOOLValue];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v152 = NFLogGetLogger();
        if (v152)
        {
          v153 = v152;
          v154 = object_getClass(v1);
          v155 = class_isMetaClass(v154);
          v269 = object_getClassName(v1);
          v286 = sel_getName("_readDriverSettings");
          v156 = 45;
          if (v155)
          {
            v156 = 43;
          }

          v153(5, "%c[%{public}s %{public}s]:%i Overriding pref settings for LogAPI with managed profile: %d", v156, v269, v286, 9124, v151);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v157 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
        {
          v158 = object_getClass(v1);
          if (class_isMetaClass(v158))
          {
            v159 = 43;
          }

          else
          {
            v159 = 45;
          }

          v160 = object_getClassName(v1);
          v161 = sel_getName("_readDriverSettings");
          *buf = 67110146;
          v296 = v159;
          v297 = 2082;
          v298 = v160;
          v299 = 2082;
          v300 = v161;
          v301 = 1024;
          v302 = 9124;
          v303 = 1024;
          v304 = v151;
          _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings for LogAPI with managed profile: %d", buf, 0x28u);
        }

        v162 = 8;
        if (!v151)
        {
          v162 = 0;
        }

        v16 = v162 | v16 & 0xFFFFFFFFFFFFFFF7;
      }

      v163 = [v109 objectForKey:@"LogExpressMode"];

      if (v163)
      {
        v164 = [v109 objectForKey:@"LogExpressMode"];
        v165 = [v164 BOOLValue];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v166 = NFLogGetLogger();
        if (v166)
        {
          v167 = v166;
          v168 = object_getClass(v1);
          v169 = class_isMetaClass(v168);
          v270 = object_getClassName(v1);
          v287 = sel_getName("_readDriverSettings");
          v170 = 45;
          if (v169)
          {
            v170 = 43;
          }

          v167(5, "%c[%{public}s %{public}s]:%i Overriding pref settings for LogExpressMode with managed profile: %d", v170, v270, v287, 9130, v165);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v171 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
        {
          v172 = object_getClass(v1);
          if (class_isMetaClass(v172))
          {
            v173 = 43;
          }

          else
          {
            v173 = 45;
          }

          v174 = object_getClassName(v1);
          v175 = sel_getName("_readDriverSettings");
          *buf = 67110146;
          v296 = v173;
          v297 = 2082;
          v298 = v174;
          v299 = 2082;
          v300 = v175;
          v301 = 1024;
          v302 = 9130;
          v303 = 1024;
          v304 = v165;
          _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings for LogExpressMode with managed profile: %d", buf, 0x28u);
        }

        v176 = 1024;
        if (!v165)
        {
          v176 = 0;
        }

        v16 = v176 | v16 & 0xFFFFFFFFFFFFFBFFLL;
      }

      v177 = [v109 objectForKey:@"LogNCI"];

      if (v177)
      {
        v178 = [v109 objectForKey:@"LogNCI"];
        v179 = [v178 BOOLValue];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v180 = NFLogGetLogger();
        if (v180)
        {
          v181 = v180;
          v182 = object_getClass(v1);
          v183 = class_isMetaClass(v182);
          v271 = object_getClassName(v1);
          v288 = sel_getName("_readDriverSettings");
          v184 = 45;
          if (v183)
          {
            v184 = 43;
          }

          v181(5, "%c[%{public}s %{public}s]:%i Overriding pref settings with LogNCI managed profile: %d", v184, v271, v288, 9136, v179);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v185 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
        {
          v186 = object_getClass(v1);
          if (class_isMetaClass(v186))
          {
            v187 = 43;
          }

          else
          {
            v187 = 45;
          }

          v188 = object_getClassName(v1);
          v189 = sel_getName("_readDriverSettings");
          *buf = 67110146;
          v296 = v187;
          v297 = 2082;
          v298 = v188;
          v299 = 2082;
          v300 = v189;
          v301 = 1024;
          v302 = 9136;
          v303 = 1024;
          v304 = v179;
          _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings with LogNCI managed profile: %d", buf, 0x28u);
        }

        v190 = 4;
        if (!v179)
        {
          v190 = 0;
        }

        v16 = v190 | v16 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v191 = [v109 objectForKey:@"SinglePollExpress"];

      if (v191)
      {
        v192 = [v109 objectForKey:@"SinglePollExpress"];
        v193 = [v192 BOOLValue];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v194 = NFLogGetLogger();
        if (v194)
        {
          v195 = v194;
          v196 = object_getClass(v1);
          v197 = class_isMetaClass(v196);
          v272 = object_getClassName(v1);
          v289 = sel_getName("_readDriverSettings");
          v198 = 45;
          if (v197)
          {
            v198 = 43;
          }

          v195(5, "%c[%{public}s %{public}s]:%i Overriding pref settings with Force SinglePoll Express managed profile: %d", v198, v272, v289, 9143, v193);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v199 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
        {
          v200 = object_getClass(v1);
          if (class_isMetaClass(v200))
          {
            v201 = 43;
          }

          else
          {
            v201 = 45;
          }

          v202 = object_getClassName(v1);
          v203 = sel_getName("_readDriverSettings");
          *buf = 67110146;
          v296 = v201;
          v297 = 2082;
          v298 = v202;
          v299 = 2082;
          v300 = v203;
          v301 = 1024;
          v302 = 9143;
          v303 = 1024;
          v304 = v193;
          _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings with Force SinglePoll Express managed profile: %d", buf, 0x28u);
        }

        v204 = 0x40000;
        if (!v193)
        {
          v204 = 0;
        }

        v16 = v204 | v16 & 0xFFFFFFFFFFFBFFFFLL;
      }

      v205 = [v109 objectForKey:@"CETech"];

      if (v205)
      {
        v206 = [v109 objectForKey:@"CETech"];
        v207 = [v206 intValue];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v208 = NFLogGetLogger();
        if (v208)
        {
          v209 = v208;
          v210 = object_getClass(v1);
          v211 = class_isMetaClass(v210);
          v273 = object_getClassName(v1);
          v290 = sel_getName("_readDriverSettings");
          v212 = 45;
          if (v211)
          {
            v212 = 43;
          }

          v209(5, "%c[%{public}s %{public}s]:%i Overriding pref settings with CE Tech managed profile: 0x%04x", v212, v273, v290, 9150, v207);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v213 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
        {
          v214 = object_getClass(v1);
          if (class_isMetaClass(v214))
          {
            v215 = 43;
          }

          else
          {
            v215 = 45;
          }

          v216 = object_getClassName(v1);
          v217 = sel_getName("_readDriverSettings");
          *buf = 67110146;
          v296 = v215;
          v297 = 2082;
          v298 = v216;
          v299 = 2082;
          v300 = v217;
          v301 = 1024;
          v302 = 9150;
          v303 = 1024;
          v304 = v207;
          _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings with CE Tech managed profile: 0x%04x", buf, 0x28u);
        }

        v218 = v16 & 0xFFFFFFFFFFFFFE9FLL;
        v219 = v16 & 0xFFFFFFFFFFFFFE9FLL | 0x140;
        v220 = v16 | 0x160;
        if (v207 != 7)
        {
          v220 = v16 & 0xFFFFFFFFFFFFFE9FLL;
        }

        if (v207 != 6)
        {
          v219 = v220;
        }

        v221 = v218 | 0x60;
        v222 = v218 | 0x120;
        if (v207 != 5)
        {
          v222 = v16 & 0xFFFFFFFFFFFFFE9FLL;
        }

        if (v207 != 4)
        {
          v221 = v222;
        }

        if (v207 <= 5)
        {
          v219 = v221;
        }

        v223 = v218 | 0x20;
        v224 = v218 | 0x40;
        if (v207 == 3)
        {
          v218 |= 0x100uLL;
        }

        if (v207 == 2)
        {
          v218 = v224;
        }

        if (v207 == 1)
        {
          v218 = v223;
        }

        if (v207 <= 3)
        {
          v16 = v218;
        }

        else
        {
          v16 = v219;
        }
      }

      v225 = [v109 objectForKey:@"LogRF"];

      if (v225)
      {
        v226 = [v109 objectForKey:@"LogRF"];
        v227 = [v226 intValue];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v228 = NFLogGetLogger();
        if (v228)
        {
          v229 = v228;
          v230 = object_getClass(v1);
          v231 = class_isMetaClass(v230);
          v274 = object_getClassName(v1);
          v291 = sel_getName("_readDriverSettings");
          v232 = 45;
          if (v231)
          {
            v232 = 43;
          }

          v229(5, "%c[%{public}s %{public}s]:%i Overriding pref settings with LogRF managed profile: 0x%04x", v232, v274, v291, 9165, v227);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v233 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
        {
          v234 = object_getClass(v1);
          if (class_isMetaClass(v234))
          {
            v235 = 43;
          }

          else
          {
            v235 = 45;
          }

          v236 = object_getClassName(v1);
          v237 = sel_getName("_readDriverSettings");
          *buf = 67110146;
          v296 = v235;
          v297 = 2082;
          v298 = v236;
          v299 = 2082;
          v300 = v237;
          v301 = 1024;
          v302 = 9165;
          v303 = 1024;
          v304 = v227;
          _os_log_impl(&_mh_execute_header, v233, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings with LogRF managed profile: 0x%04x", buf, 0x28u);
        }

        v238 = v16 & 0xFFFFFFFFFFFFFFFCLL;
        if (v227 == 1)
        {
          v238 = v16 & 0xFFFFFFFFFFFFFFFCLL | 2;
        }

        if (v227 == 2)
        {
          v238 = v16 & 0xFFFFFFFFFFFFFFFCLL | 1;
        }

        if (v227 == 4)
        {
          v16 |= 3uLL;
        }

        else
        {
          v16 = v238;
        }
      }
    }

    v239 = [v2 dataForKey:@"ChipscopeConfig"];
    if (v239)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v239 bytes] && objc_msgSend(v239, "length") && objc_msgSend(v2, "integerForKey:", @"Chipscope"))
      {
        v16 |= 0x20000uLL;
        [v294 setObject:v239 forKeyedSubscript:@"chipscope"];
      }
    }

    v240 = [v2 integerForKey:@"PollingPeriod"];
    v241 = v240 & ~(v240 >> 63);
    v242 = [v2 integerForKey:@"GenericATxTimeout"];
    v243 = v242 & ~(v242 >> 63);
    if (NFProductHasThermistor())
    {
      v244 = v16 | 0x1000000;
    }

    else
    {
      v244 = v16;
    }

    v245 = [NSNumber numberWithUnsignedLongLong:v244];
    v246 = v294;
    [v294 setObject:v245 forKeyedSubscript:@"flags"];

    v247 = [NSNumber numberWithInteger:v241];
    [v294 setObject:v247 forKeyedSubscript:@"pollPeriod"];

    v248 = [NSNumber numberWithInteger:v243];
    [v294 setObject:v248 forKeyedSubscript:@"atx"];

    v249 = v1[11];
    if (v249)
    {
      LOBYTE(v249) = v249[8];
    }

    sub_1000E73D4(v1, v249 & 1);
    if (NFIsInternalBuild())
    {
      v250 = [v2 objectForKey:@"chFieldDetectOverride"];

      if (v250)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v251 = NFLogGetLogger();
        if (v251)
        {
          v252 = v251;
          v253 = object_getClass(v1);
          v254 = class_isMetaClass(v253);
          v255 = object_getClassName(v1);
          v292 = sel_getName("_readDriverSettings");
          v256 = 45;
          if (v254)
          {
            v256 = 43;
          }

          v252(6, "%c[%{public}s %{public}s]:%i CH field detect overridden", v256, v255, v292, 9221);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v257 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v257, OS_LOG_TYPE_DEFAULT))
        {
          v258 = object_getClass(v1);
          if (class_isMetaClass(v258))
          {
            v259 = 43;
          }

          else
          {
            v259 = 45;
          }

          v260 = object_getClassName(v1);
          v261 = sel_getName("_readDriverSettings");
          *buf = 67109890;
          v296 = v259;
          v297 = 2082;
          v298 = v260;
          v299 = 2082;
          v300 = v261;
          v301 = 1024;
          v302 = 9221;
          _os_log_impl(&_mh_execute_header, v257, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i CH field detect overridden", buf, 0x22u);
        }

        v262 = [v250 unsignedIntegerValue];
        if (v262 <= 2)
        {
          v263 = v262;
        }

        else
        {
          v263 = 0;
        }

        v1[56] = v263;
        v246 = v294;
      }
    }

    else
    {
      v250 = v293;
    }

    [v1[52] refreshUserDefaultsOverride];
    *(v1 + 357) = [v2 BOOLForKey:@"DumpLogsOnStartup"];
    *(v1 + 356) = [v2 BOOLForKey:@"LPMAlwaysOn"];
    if (NFIsInternalBuild())
    {
      v264 = [v2 integerForKey:@"PowerCountersInterval"];
      v265 = v264 & ~(v264 >> 63);
    }

    else
    {
      v265 = 0;
    }

    v1[38] = v265;
    v1 = v246;
  }

  return v1;
}

void sub_1000E6228(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  sub_10027EACC(v2);
  v4 = *(v3 + 232);
  v5 = objc_opt_new();
  v6 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E63A8;
  v10[3] = &unk_100318480;
  objc_copyWeak(v11, &location);
  v7 = *(a1 + 40);
  v11[1] = *(a1 + 48);
  v11[2] = v7;
  [v5 postComponentStatusEventFor:7 status:v6 withReply:v10];

  v8 = *(a1 + 32);
  objc_sync_enter(v8);
  qword_10035C9A8 = *(a1 + 40);
  objc_sync_exit(v8);

  v9 = *(a1 + 40);
  if (v9 != 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 134217984;
    v14 = v9;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "HW in bad state %llu - reported to the system health monitor", buf, 0xCu);
  }

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void sub_1000E63A8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v8 = Logger;
  if (v5)
  {
    if (Logger)
    {
      Class = object_getClass(WeakRetained);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(WeakRetained);
      Name = sel_getName(*(a1 + 40));
      if (a2)
      {
        v13 = @"success";
      }

      else
      {
        v13 = @"failure";
      }

      v36 = v13;
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i Error posting status (%{public}@) to SystemHealthManager - %{public}@", v14, ClassName, Name, 1065, v36, v5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = object_getClass(WeakRetained);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      v18 = object_getClassName(WeakRetained);
      v19 = sel_getName(*(a1 + 40));
      *buf = 67110402;
      if (a2)
      {
        v20 = @"success";
      }

      else
      {
        v20 = @"failure";
      }

      v38 = v17;
      v39 = 2082;
      v40 = v18;
      v41 = 2082;
      v42 = v19;
      v43 = 1024;
      v44 = 1065;
      v45 = 2114;
      v46 = v20;
      v47 = 2114;
      v48 = v5;
      v21 = "%c[%{public}s %{public}s]:%i Error posting status (%{public}@) to SystemHealthManager - %{public}@";
      v22 = v15;
      v23 = OS_LOG_TYPE_ERROR;
LABEL_30:
      _os_log_impl(&_mh_execute_header, v22, v23, v21, buf, 0x36u);
    }
  }

  else
  {
    if (Logger)
    {
      v24 = object_getClass(WeakRetained);
      v25 = class_isMetaClass(v24);
      v26 = object_getClassName(WeakRetained);
      v27 = sel_getName(*(a1 + 40));
      v28 = @"failure";
      if (a2)
      {
        v28 = @"success";
      }

      v29 = 45;
      if (v25)
      {
        v29 = 43;
      }

      v8(6, "%c[%{public}s %{public}s]:%i Posted status (%llu) to SystemHealthManager - %@", v29, v26, v27, 1068, *(a1 + 48), v28);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v30 = object_getClass(WeakRetained);
      if (class_isMetaClass(v30))
      {
        v31 = 43;
      }

      else
      {
        v31 = 45;
      }

      v32 = object_getClassName(WeakRetained);
      v33 = sel_getName(*(a1 + 40));
      v34 = *(a1 + 48);
      v35 = @"failure";
      *buf = 67110402;
      v38 = v31;
      if (a2)
      {
        v35 = @"success";
      }

      v39 = 2082;
      v40 = v32;
      v41 = 2082;
      v42 = v33;
      v43 = 1024;
      v44 = 1068;
      v45 = 2048;
      v46 = v34;
      v47 = 2112;
      v48 = v35;
      v21 = "%c[%{public}s %{public}s]:%i Posted status (%llu) to SystemHealthManager - %@";
      v22 = v15;
      v23 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_30;
    }
  }
}

void sub_1000E66DC(uint64_t a1, int a2)
{
  v4 = [*(a1 + 384) upgradeChecked];
  objc_opt_self();
  if ((byte_10035DB90 & 1) == 0 && (v4 & 1) == 0 && sub_10015C898(*(a1 + 384)) && sub_100229BB0(NFSSEWrapper, 0))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_upgradeAuthRandomSynchronously:");
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i UpgradeChecked = %d", v9, ClassName, Name, 1271, 0);
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
      *&buf[4] = v12;
      *v46 = 2082;
      *&v46[2] = object_getClassName(a1);
      *&v46[10] = 2082;
      *&v46[12] = sel_getName("_upgradeAuthRandomSynchronously:");
      *&v46[20] = 1024;
      *&v46[22] = 1271;
      *&v46[26] = 1024;
      *&v46[28] = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i UpgradeChecked = %d", buf, 0x28u);
    }

    *buf = 0;
    *v46 = buf;
    *&v46[8] = 0x3032000000;
    *&v46[16] = sub_100006A8C;
    *&v46[24] = sub_1000E6B84;
    v47 = 0;
    if (a2)
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000E6B8C;
      v34[3] = &unk_100318710;
      v34[4] = a1;
      v34[5] = buf;
      v13 = sub_10004BF60(NFRoutingConfig, 0);
      v14 = sub_1000E6BE4(a1, v34, @"Upgrade SEP token", v13);

      if (v14 && !*(*v46 + 40))
      {
        *(a1 + 350) = 1;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v15 = NFLogGetLogger();
        if (v15)
        {
          v16 = v15;
          v17 = object_getClass(a1);
          v18 = class_isMetaClass(v17);
          v19 = object_getClassName(a1);
          v20 = sel_getName("_upgradeAuthRandomSynchronously:");
          v21 = 45;
          if (v18)
          {
            v21 = 43;
          }

          v16(3, "%c[%{public}s %{public}s]:%i Failed: %{public}@", v21, v19, v20, 1285, *(*v46 + 40));
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v22 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
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
          v26 = sel_getName("_upgradeAuthRandomSynchronously:");
          v27 = *(*v46 + 40);
          *v35 = 67110146;
          v36 = v24;
          v37 = 2082;
          v38 = v25;
          v39 = 2082;
          v40 = v26;
          v41 = 1024;
          v42 = 1285;
          v43 = 2114;
          v44 = v27;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed: %{public}@", v35, 0x2Cu);
        }
      }
    }

    else
    {
      v28 = *(a1 + 240);
      v29 = sub_10004BF2C();
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1000E6FE4;
      v33[3] = &unk_100318738;
      v33[4] = a1;
      v30 = [_NFBuiltinSession createSession:@"Upgrade auth Random" workQueue:v28 routing:v29 sessionQueuer:a1 didStartWork:v33];
    }

    _Block_object_dispose(buf, 8);
  }
}

BOOL sub_1000E6B8C(uint64_t a1)
{
  v2 = sub_100200318(*(*(a1 + 32) + 384));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) == 0;
}

uint64_t sub_1000E6BE4(void **a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [a1 lastKnownRoutingConfig];
    v11 = [v10 copy];

    if (!v8)
    {
      goto LABEL_7;
    }

    v12 = sub_10004BF60(NFRoutingConfig, 0);
    v13 = 0;
    if (([v9 isEqual:v12] & 1) == 0)
    {
      v14 = sub_10004C144();
      v13 = [v9 isEqual:v14] ^ 1;
    }

    v15 = sub_10021A4A0(a1[47], v8, v13);
    if (v15)
    {
      v16 = 0;
    }

    else
    {
LABEL_7:
      v17 = [a1 setRoutingConfig:v9];

      if (v17)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v19 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("executeBlock:sessionName:routingConfig:");
          v23 = 45;
          if (isMetaClass)
          {
            v23 = 43;
          }

          v19(3, "%c[%{public}s %{public}s]:%i Failed to change routing.", v23, ClassName, Name, 1919);
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

          *buf = 67109890;
          v41 = v26;
          v42 = 2082;
          v43 = object_getClassName(a1);
          v44 = 2082;
          v45 = sel_getName("executeBlock:sessionName:routingConfig:");
          v46 = 1024;
          v47 = 1919;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to change routing.", buf, 0x22u);
        }

        sub_10021CC94(a1[47], v8);
        v16 = 0;
      }

      else
      {
        v16 = v7[2](v7);
        v27 = [a1 setRoutingConfig:v11];

        if (v27)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v28 = NFLogGetLogger();
          if (v28)
          {
            v29 = v28;
            v30 = object_getClass(a1);
            v31 = class_isMetaClass(v30);
            v32 = object_getClassName(a1);
            v39 = sel_getName("executeBlock:sessionName:routingConfig:");
            v33 = 45;
            if (v31)
            {
              v33 = 43;
            }

            v29(3, "%c[%{public}s %{public}s]:%i Failed to restore routing", v33, v32, v39, 1927);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v34 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = object_getClass(a1);
            if (class_isMetaClass(v35))
            {
              v36 = 43;
            }

            else
            {
              v36 = 45;
            }

            *buf = 67109890;
            v41 = v36;
            v42 = 2082;
            v43 = object_getClassName(a1);
            v44 = 2082;
            v45 = sel_getName("executeBlock:sessionName:routingConfig:");
            v46 = 1024;
            v47 = 1927;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to restore routing", buf, 0x22u);
          }
        }

        if (v8)
        {
          sub_10021CC94(a1[47], v8);
        }
      }

      v15 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_1000E6FE4(uint64_t a1)
{
  v2 = sub_100200318(*(*(a1 + 32) + 384));
  if (!v2)
  {
    *(*(a1 + 32) + 350) = 1;
  }
}

BOOL sub_1000E7034(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 384) negotiatePerBootAuthKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) == 0;
}

void sub_1000E708C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 384) negotiatePerBootAuthKeys];
  if (!v2)
  {
    *(*(a1 + 32) + 350) = 1;
  }
}

os_unfair_lock_s *sub_1000E70DC(os_unfair_lock_s *result)
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 12);
    v2 = [*&v1[10]._os_unfair_lock_opaque migrationState];
    os_unfair_lock_unlock(v1 + 12);
    if (v2 == 1)
    {
      return 0;
    }

    else
    {
      sub_100199A24(NFBugCapture, @"Failed to start the session", @"File: _NFHardwareManager, Function: _isInAppletMigrationState, Error: Migration state is not idle", &off_100339788);
      return 1;
    }
  }

  return result;
}

os_unfair_lock_s *sub_1000E7158(os_unfair_lock_s *result)
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 12);
    if ([*&v1[10]._os_unfair_lock_opaque migrationState] && objc_msgSend(*&v1[10]._os_unfair_lock_opaque, "migrationState") != 1 && objc_msgSend(*&v1[10]._os_unfair_lock_opaque, "migrationContext") == 3)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v3 = Logger;
        Class = object_getClass(v1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v1);
        Name = sel_getName("_isInOSUAppletMigrationState");
        v16 = [*&v1[10]._os_unfair_lock_opaque migrationState];
        v17 = [*&v1[10]._os_unfair_lock_opaque migrationContext];
        v8 = 45;
        if (isMetaClass)
        {
          v8 = 43;
        }

        v3(3, "%c[%{public}s %{public}s]:%i OSU SE migration incomplete 0x%04x, context 0x%04x", v8, ClassName, Name, 1360, v16, v17);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = object_getClass(v1);
        if (class_isMetaClass(v10))
        {
          v11 = 43;
        }

        else
        {
          v11 = 45;
        }

        v12 = object_getClassName(v1);
        v13 = sel_getName("_isInOSUAppletMigrationState");
        v14 = [*&v1[10]._os_unfair_lock_opaque migrationState];
        v15 = [*&v1[10]._os_unfair_lock_opaque migrationContext];
        *buf = 67110402;
        v19 = v11;
        v20 = 2082;
        v21 = v12;
        v22 = 2082;
        v23 = v13;
        v24 = 1024;
        v25 = 1360;
        v26 = 1024;
        v27 = v14;
        v28 = 1024;
        v29 = v15;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i OSU SE migration incomplete 0x%04x, context 0x%04x", buf, 0x2Eu);
      }

      os_unfair_lock_unlock(v1 + 12);
      return 1;
    }

    else
    {
      os_unfair_lock_unlock(v1 + 12);
      return 0;
    }
  }

  return result;
}

BOOL sub_1000E737C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 48));
  v2 = [*(a1 + 40) OSMode] == 2;
  os_unfair_lock_unlock((a1 + 48));
  return v2;
}

void sub_1000E73D4(void *a1, char a2)
{
  if (a1)
  {
    v4 = a1[37];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_1000E7A9C;
    v64[3] = &unk_100318760;
    v64[4] = a1;
    v5 = objc_retainBlock(v64);
    if (a2)
    {
      v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
      [v6 synchronize];
      if ((NFIsChinaSku() & 1) == 0)
      {
        if (!NFIsInternalBuild())
        {
          goto LABEL_48;
        }

        v34 = [v6 objectForKey:@"forceChinaSku"];

        if (!v34)
        {
          goto LABEL_48;
        }

        v35 = [v6 BOOLForKey:@"forceChinaSku"];
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v37 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("radioConfigChanged:");
          if (v35)
          {
            v42 = @"on";
          }

          else
          {
            v42 = @"off";
          }

          v43 = 45;
          if (isMetaClass)
          {
            v43 = 43;
          }

          v37(5, "%c[%{public}s %{public}s]:%i Force China Sku: %{public}@", v43, ClassName, Name, 1452, v42);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v44 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = object_getClass(a1);
          if (class_isMetaClass(v45))
          {
            v46 = 43;
          }

          else
          {
            v46 = 45;
          }

          v47 = object_getClassName(a1);
          v48 = sel_getName("radioConfigChanged:");
          *buf = 67110146;
          v49 = @"off";
          if (v35)
          {
            v49 = @"on";
          }

          v66 = v46;
          v67 = 2082;
          v68 = v47;
          v69 = 2082;
          v70 = v48;
          v71 = 1024;
          v72 = 1452;
          v73 = 2114;
          v74 = v49;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Force China Sku: %{public}@", buf, 0x2Cu);
        }

        if (!v35)
        {
          goto LABEL_48;
        }
      }

      v7 = [v6 objectForKey:@"nfcRadioEnabled"];

      if (v7)
      {
        v8 = [v6 BOOLForKey:@"nfcRadioEnabled"];
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v9 = NFLogGetLogger();
        if (v9)
        {
          v10 = v9;
          v11 = object_getClass(a1);
          v12 = class_isMetaClass(v11);
          v13 = object_getClassName(a1);
          v14 = sel_getName("radioConfigChanged:");
          if (v8)
          {
            v15 = @"on";
          }

          else
          {
            v15 = @"off";
          }

          v16 = 45;
          if (v12)
          {
            v16 = 43;
          }

          v10(5, "%c[%{public}s %{public}s]:%i NFC radio preference setting %{public}@", v16, v13, v14, 1461, v15);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v17 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
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
          v21 = sel_getName("radioConfigChanged:");
          v22 = @"off";
          *buf = 67110146;
          v66 = v19;
          v67 = 2082;
          if (v8)
          {
            v22 = @"on";
          }

          v68 = v20;
          v69 = 2082;
          v70 = v21;
          v71 = 1024;
          v72 = 1461;
          v73 = 2114;
          v74 = v22;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC radio preference setting %{public}@", buf, 0x2Cu);
        }
      }

      else
      {
LABEL_48:
        v8 = 1;
      }

      a1[37] = v8;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFLogGetLogger();
      if (v50)
      {
        v51 = v50;
        v52 = object_getClass(a1);
        v53 = class_isMetaClass(v52);
        v54 = object_getClassName(a1);
        v55 = sel_getName("radioConfigChanged:");
        v56 = 45;
        if (v53)
        {
          v56 = 43;
        }

        v51(6, "%c[%{public}s %{public}s]:%i radio state: %d", v56, v54, v55, 1469, a1[37]);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v57 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = object_getClass(a1);
        if (class_isMetaClass(v58))
        {
          v59 = 43;
        }

        else
        {
          v59 = 45;
        }

        v60 = object_getClassName(a1);
        v61 = sel_getName("radioConfigChanged:");
        v62 = a1[37];
        *buf = 67110146;
        v66 = v59;
        v67 = 2082;
        v68 = v60;
        v69 = 2082;
        v70 = v61;
        v71 = 1024;
        v72 = 1469;
        v73 = 1024;
        LODWORD(v74) = v62;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i radio state: %d", buf, 0x28u);
      }

      if (v4 != v8)
      {
        (v5[2])(v5, a1[37]);
      }
    }

    else
    {
      a1[37] = -1;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v24 = v23;
        v25 = object_getClass(a1);
        v26 = class_isMetaClass(v25);
        v27 = object_getClassName(a1);
        v63 = sel_getName("radioConfigChanged:");
        v28 = 45;
        if (v26)
        {
          v28 = 43;
        }

        v24(5, "%c[%{public}s %{public}s]:%i Radio disabled by mobileconfig", v28, v27, v63, 1432);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = object_getClass(a1);
        if (class_isMetaClass(v30))
        {
          v31 = 43;
        }

        else
        {
          v31 = 45;
        }

        v32 = object_getClassName(a1);
        v33 = sel_getName("radioConfigChanged:");
        *buf = 67109890;
        v66 = v31;
        v67 = 2082;
        v68 = v32;
        v69 = 2082;
        v70 = v33;
        v71 = 1024;
        v72 = 1432;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Radio disabled by mobileconfig", buf, 0x22u);
      }

      if (v4 != a1[37])
      {
        (v5[2])(v5);
      }
    }
  }
}

void sub_1000E7A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003548(*(a1 + 32));
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 allValues];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * i) didChangeRadioState:a2 != 0];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (a2)
  {
    v10 = @"1";
  }

  else
  {
    v10 = @"0";
  }

  sub_1000E7BDC(*(a1 + 32), "com.apple.stockhom.radio.stateChanged", v10);
}

void sub_1000E7BDC(void *a1, uint64_t a2, void *a3)
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
      Name = sel_getName("_postEvent:objectString:");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i posting notification: %s", v10, ClassName, Name, 3024, a2);
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
      v22 = v13;
      v23 = 2082;
      v24 = object_getClassName(a1);
      v25 = 2082;
      v26 = sel_getName("_postEvent:objectString:");
      v27 = 1024;
      v28 = 3024;
      v29 = 2080;
      v30 = a2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i posting notification: %s", buf, 0x2Cu);
    }

    v14 = [[NSString alloc] initWithUTF8String:a2];
    v15 = +[NSDistributedNotificationCenter defaultCenter];
    [v15 postNotificationName:v14 object:v5 userInfo:0 options:3];

    v16 = +[NFSecureXPCEventPublisherManager sharedManager];
    v17 = [v16 wallet];
    v18 = v17;
    if (v5)
    {
      if (v17)
      {
        sub_100235448(v17, v14, v5, 1);
      }
    }

    else if (v17)
    {
      sub_100235394(v17, v14, 1);
    }
  }
}

void sub_1000E7E30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = WeakRetained;
    objc_sync_enter(v2);
    v2[359] = 0;
    objc_sync_exit(v2);

    WeakRetained = v3;
  }
}

void sub_1000E8494(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 NF_userInfo];
    v8 = [v7 objectForKey:@"RBSApp"];
    v9 = [v8 BOOLValue];

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("didCloseXPCConnection:invalidated:");
      v16 = [v6 NF_clientName];
      v17 = 43;
      if (!isMetaClass)
      {
        v17 = 45;
      }

      v11(6, "%c[%{public}s %{public}s]:%i Removing XPC connection (invalidated=%d, isRBSApp=%d) for %{public}@ - %{public}@ ", v17, ClassName, Name, 1648, a3, v9, v16, v6);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = object_getClass(a1);
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      v21 = object_getClassName(a1);
      v22 = sel_getName("didCloseXPCConnection:invalidated:");
      v23 = [v6 NF_clientName];
      *buf = 67110914;
      v35 = v20;
      v36 = 2082;
      *v37 = v21;
      *&v37[8] = 2082;
      *&v37[10] = v22;
      v38 = 1024;
      v39 = 1648;
      v40 = 1024;
      v41 = a3;
      v42 = 1024;
      v43 = v9;
      v44 = 2114;
      v45 = v23;
      v46 = 2114;
      v47 = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Removing XPC connection (invalidated=%d, isRBSApp=%d) for %{public}@ - %{public}@ ", buf, 0x42u);
    }

    kdebug_trace();
    v24 = NFSharedSignpostLog();
    if (os_signpost_enabled(v24))
    {
      v25 = [v6 NF_clientName];
      *buf = 67109634;
      v35 = a3;
      v36 = 1024;
      *v37 = v9;
      *&v37[4] = 2112;
      *&v37[6] = v25;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "XPC_DISCONNECT", "removing XPC connection (invalidated=%d, isRBSApp=%d) for %@", buf, 0x18u);
    }

    v26 = [v6 NF_serviceType];
    v27 = v26;
    if (v26 && [v26 unsignedIntegerValue] == 2)
    {
      v28 = *(a1 + 168);
      *(a1 + 168) = 0;
    }

    if (!v9 || a3)
    {
      sub_100043834(*(a1 + 80), v6);
    }

    v29 = *(a1 + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E883C;
    block[3] = &unk_1003187B0;
    v32 = v9;
    v33 = a3;
    block[4] = a1;
    v31 = v6;
    dispatch_async(v29, block);
  }
}

id sub_1000E883C(uint64_t a1)
{
  if (*(a1 + 48) == 1 && (*(a1 + 49) & 1) == 0)
  {
    v1 = (a1 + 32);
    sub_1000E8CD8(*(a1 + 32), *(a1 + 40));
  }

  else
  {
    v1 = (a1 + 32);
    v2 = *(*(a1 + 32) + 176);
    objc_sync_enter(v2);
    [*(*v1 + 22) removeObject:v1[1]];
    objc_sync_exit(v2);

    v3 = *v1;
    v4 = v1[1];
    v5 = [v4 NF_callbackUUID];
    sub_1000E8904(v3, v4, v5);

    [v1[1] NF_clearCallbackUUID];
    sub_1000E8CD8(*v1, v1[1]);
    sub_10017D528(*v1, v1[1]);
  }

  v6 = *v1;

  return [v6 maybeStartNextSession];
}

void sub_1000E8904(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 NF_whitelistChecker];
    if (v6)
    {
      v39 = v7;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_unregisterForCallbacks:callbackUUID:");
        v14 = [v5 processIdentifier];
        v15 = [v39 clientName];
        v16 = 43;
        if (!isMetaClass)
        {
          v16 = 45;
        }

        v9(6, "%c[%{public}s %{public}s]:%i Client %d (%{public}@) unregistered callback [%@]", v16, ClassName, Name, 3575, v14, v15, v6);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
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
        v21 = sel_getName("_unregisterForCallbacks:callbackUUID:");
        v22 = [v5 processIdentifier];
        v23 = [v39 clientName];
        *buf = 67110658;
        v41 = v19;
        v42 = 2082;
        v43 = v20;
        v44 = 2082;
        v45 = v21;
        v46 = 1024;
        v47 = 3575;
        v48 = 1024;
        v49 = v22;
        v50 = 2114;
        v51 = v23;
        v52 = 2112;
        v53 = v6;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Client %d (%{public}@) unregistered callback [%@]", buf, 0x3Cu);
      }

      v24 = [v6 UUIDString];
      v25 = *(a1 + 160);
      objc_sync_enter(v25);
      [*(a1 + 160) removeObjectForKey:v24];
      if (![*(a1 + 160) count] && *(a1 + 280))
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v26 = NFLogGetLogger();
        if (v26)
        {
          v27 = v26;
          v28 = object_getClass(a1);
          v29 = class_isMetaClass(v28);
          v30 = object_getClassName(a1);
          v38 = sel_getName("_unregisterForCallbacks:callbackUUID:");
          v31 = 45;
          if (v29)
          {
            v31 = 43;
          }

          v27(6, "%c[%{public}s %{public}s]:%i releasing NFCD keep alive transaction", v31, v30, v38, 3583);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v32 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
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

          v35 = object_getClassName(a1);
          v36 = sel_getName("_unregisterForCallbacks:callbackUUID:");
          *buf = 67109890;
          v41 = v34;
          v42 = 2082;
          v43 = v35;
          v44 = 2082;
          v45 = v36;
          v46 = 1024;
          v47 = 3583;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i releasing NFCD keep alive transaction", buf, 0x22u);
        }

        v37 = *(a1 + 280);
        *(a1 + 280) = 0;
      }

      objc_sync_exit(v25);

      v7 = v39;
    }
  }
}

void sub_1000E8CD8(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v29 = a1[23];
    objc_sync_enter(v29);
    v4 = [NSSet alloc];
    v32 = v3;
    v5 = [v3 NF_userInfo];
    v6 = [v5 objectForKeyedSubscript:@"ProxyObjects"];
    v7 = [v4 initWithSet:v6];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v33 objects:v49 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v34;
      v31 = a1;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            [v13 handleXPCInvalidation];
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v15 = Logger;
              Class = object_getClass(a1);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(a1);
              Name = sel_getName("_sync_dequeueAllXPCSessionFromConnection:");
              v20 = [v32 NF_clientName];
              v21 = 45;
              if (isMetaClass)
              {
                v21 = 43;
              }

              v28 = ClassName;
              a1 = v31;
              v15(6, "%c[%{public}s %{public}s]:%i dequeueing session:%{public}@ for %{public}@", v21, v28, Name, 2532, v13, v20);
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
              v26 = sel_getName("_sync_dequeueAllXPCSessionFromConnection:");
              v27 = [v32 NF_clientName];
              *buf = 67110402;
              v38 = v24;
              v39 = 2082;
              v40 = v25;
              v41 = 2082;
              v42 = v26;
              v43 = 1024;
              v44 = 2532;
              v45 = 2114;
              v46 = v13;
              v47 = 2114;
              v48 = v27;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i dequeueing session:%{public}@ for %{public}@", buf, 0x36u);

              a1 = v31;
            }

            sub_1000EE388(a1, v13, 0);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v33 objects:v49 count:16];
      }

      while (v9);
    }

    objc_sync_exit(v29);
    v3 = v32;
  }
}

void sub_1000E925C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = *(a1 + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E9340;
    block[3] = &unk_1003187D8;
    block[4] = a1;
    v13 = "waitForHWSupportedOnConnection:maxTries:callback:";
    v11 = v7;
    v12 = v8;
    v14 = a3;
    dispatch_async(v9, block);
  }
}

void sub_1000E9340(uint64_t a1)
{
  v2 = sub_100003384(*(a1 + 32));
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
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v4(6, "%c[%{public}s %{public}s]:%i Processing %{public}@ : HW state = %u", v10, ClassName, Name, 1751, v9, v2);
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
    *buf = 67110402;
    v53 = v13;
    v54 = 2082;
    v55 = v14;
    v56 = 2082;
    v57 = v15;
    v58 = 1024;
    v59 = 1751;
    v60 = 2114;
    v61 = v16;
    v62 = 1024;
    v63 = v2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Processing %{public}@ : HW state = %u", buf, 0x32u);
  }

  if (v2 == 1)
  {
    if (*(a1 + 64))
    {
      v17 = dispatch_time(0, 250000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000E9830;
      block[3] = &unk_1003187D8;
      v18 = *(a1 + 56);
      v51 = *(a1 + 64);
      v47 = *(a1 + 32);
      v19 = *(v47 + 240);
      v20 = *(&v47 + 1);
      *&v21 = *(a1 + 48);
      *(&v21 + 1) = v18;
      v49 = v47;
      v50 = v21;
      dispatch_after(v17, v19, block);

      return;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFLogGetLogger();
    if (v34)
    {
      v35 = v34;
      v36 = object_getClass(*(a1 + 32));
      v37 = class_isMetaClass(v36);
      v38 = object_getClassName(*(a1 + 32));
      v46 = sel_getName(*(a1 + 56));
      v39 = 45;
      if (v37)
      {
        v39 = 43;
      }

      v35(6, "%c[%{public}s %{public}s]:%i max tries reached waiting for valid hw sate", v39, v38, v46, 1757);
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
      v53 = v42;
      v54 = 2082;
      v55 = v43;
      v56 = 2082;
      v57 = v44;
      v58 = 1024;
      v59 = 1757;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i max tries reached waiting for valid hw sate", buf, 0x22u);
    }

    v33 = *(*(a1 + 48) + 16);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v23 = v22;
      v24 = object_getClass(*(a1 + 32));
      v25 = class_isMetaClass(v24);
      v26 = object_getClassName(*(a1 + 32));
      v45 = sel_getName(*(a1 + 56));
      v27 = 45;
      if (v25)
      {
        v27 = 43;
      }

      v23(6, "%c[%{public}s %{public}s]:%i HW State is now valid", v27, v26, v45, 1753);
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
      v32 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v53 = v30;
      v54 = 2082;
      v55 = v31;
      v56 = 2082;
      v57 = v32;
      v58 = 1024;
      v59 = 1753;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i HW State is now valid", buf, 0x22u);
    }

    v33 = *(*(a1 + 48) + 16);
  }

  v33();
}

uint64_t sub_1000E9830(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i Checking HW state again - retries = %lu", v8, ClassName, Name, 1762, *(a1 + 64));
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
    v14 = *(a1 + 64);
    *buf = 67110146;
    v17 = v11;
    v18 = 2082;
    v19 = v12;
    v20 = 2082;
    v21 = v13;
    v22 = 1024;
    v23 = 1762;
    v24 = 2048;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Checking HW state again - retries = %lu", buf, 0x2Cu);
  }

  return sub_1000E925C(*(a1 + 32), *(a1 + 40), *(a1 + 64) - 1, *(a1 + 48));
}

uint64_t sub_1000E9DD4(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 184);
    objc_sync_enter(v2);
    v3 = *(v1 + 120);
    if (v3 && ([v3 isEnding] & 1) == 0)
    {
      v1 = [*(v1 + 120) didEnd] ^ 1;
    }

    else
    {
      v1 = 0;
    }

    objc_sync_exit(v2);
  }

  return v1;
}

id sub_1000E9E3C(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 23);
    objc_sync_enter(v4);
    if (*(a1 + 15))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [*(a1 + 15) connection];
        a1 = [v5 isEqual:v3];
      }

      else
      {
        a1 = (v3 == 0);
      }
    }

    else
    {
      a1 = 0;
    }

    objc_sync_exit(v4);
  }

  return a1;
}

uint64_t sub_1000E9EEC(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 184);
    objc_sync_enter(v2);
    if (*(v1 + 120))
    {
      LOBYTE(v1) = objc_opt_respondsToSelector();
    }

    else
    {
      LOBYTE(v1) = 0;
    }

    objc_sync_exit(v2);
  }

  return v1 & 1;
}

void sub_1000E9F50(uint64_t a1)
{
  if (a1)
  {
    v8 = 0;
    v2 = *(a1 + 376);
    v7 = 0;
    sub_100221884(v2, &v8, &v7);
    v3 = v7;
    if (v8 == 1)
    {
      v4 = *(a1 + 120);
      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 120) handleFieldChanged:1];
      }

      if (v3)
      {
        v5 = *(a1 + 120);
        if (objc_opt_respondsToSelector())
        {
          v6 = [v3 copy];
          [v6 setCachedBeforeRFReset:1];
          [*(a1 + 120) handleFieldNotification:v6];
        }
      }

      if ([v3 chFieldType] != 1)
      {
        [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_1003397B0];
      }
    }
  }
}

void *sub_1000EA03C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = 1;
    if (([v6 isEqualToString:@"seld"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"seserviced") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"asd") & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = 0;
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v10 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("regularSessionsAllowed:clientName:");
      v21 = objc_opt_class();
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v10(6, "%c[%{public}s %{public}s]:%i Checking for %{public}@ session for %{public}@", v15, ClassName, Name, 2758, v21, v7);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
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

      *buf = 67110402;
      v23 = v18;
      v24 = 2082;
      v25 = object_getClassName(a1);
      v26 = 2082;
      v27 = sel_getName("regularSessionsAllowed:clientName:");
      v28 = 1024;
      v29 = 2758;
      v30 = 2114;
      v31 = objc_opt_class();
      v32 = 2114;
      v33 = v7;
      v19 = v31;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Checking for %{public}@ session for %{public}@", buf, 0x36u);
    }

    a1 = sub_1000ECA30(a1, v8);
  }

  return a1;
}

void sub_1000EA2A4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 384);
  v21 = 0;
  v3 = sub_100096634(v2, 5, &v21);
  v4 = v21;

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Failed to log Applet FTA CDS Log", v11, ClassName, Name, 1957);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
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
      v23 = v13;
      v24 = 2082;
      v25 = v14;
      v26 = 2082;
      v27 = v15;
      v28 = 1024;
      v29 = 1957;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Failed to log Applet FTA CDS Log", buf, 0x22u);
    }
  }

  else
  {
    v16 = [v4 copy];
    v17 = *(a1 + 32);
    v18 = *(v17 + 208);
    *(v17 + 208) = v16;
  }

  v19 = NFSharedSignpostLog();
  if (os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DUMP_LOGS_BOOTUP", &unk_1002E8B7A, buf, 2u);
  }
}

void sub_1000EA4CC(uint64_t a1, int a2)
{
  if ((*(a1 + 350) & 1) == 0)
  {
    v4 = *(a1 + 96);
    if (v4)
    {
      sub_100206C84(v4);
      v4 = *(a1 + 96);
    }

    if (sub_1000030C8(v4))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_updateSEPairingSynchronously:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v6(6, "%c[%{public}s %{public}s]:%i ", v10, ClassName, Name, 1973);
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

        *buf = 67109890;
        *&buf[4] = v13;
        *v50 = 2082;
        *&v50[2] = object_getClassName(a1);
        *&v50[10] = 2082;
        *&v50[12] = sel_getName("_updateSEPairingSynchronously:");
        *&v50[20] = 1024;
        *&v50[22] = 1973;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
      }

      sub_1000E66DC(a1, a2);
      *buf = 0;
      *v50 = buf;
      *&v50[8] = 0x3032000000;
      *&v50[16] = sub_100006A8C;
      *&v50[24] = sub_1000E6B84;
      v51 = 0;
      if (![*(a1 + 384) pairedState])
      {
        if (!a2)
        {
          v29 = *(a1 + 240);
          v30 = sub_10004BF2C();
          v33 = _NSConcreteStackBlock;
          v34 = 3221225472;
          v35 = sub_1000E708C;
          v36 = &unk_100318738;
          v37 = a1;
          v31 = [_NFBuiltinSession createSession:@"Per Boot Auth Keys" workQueue:v29 routing:v30 sessionQueuer:a1 didStartWork:&v33];

          goto LABEL_30;
        }

        v33 = _NSConcreteStackBlock;
        v34 = 3221225472;
        v35 = sub_1000E7034;
        v36 = &unk_100318710;
        v37 = a1;
        v38 = buf;
        v14 = sub_10004BF60(NFRoutingConfig, 0);
        v15 = sub_1000E6BE4(a1, &v33, @"Negotiate Auth Keys", v14);

        if (!v15 || *(*v50 + 40))
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v16 = NFLogGetLogger();
          if (v16)
          {
            v17 = v16;
            v18 = object_getClass(a1);
            v19 = class_isMetaClass(v18);
            v20 = object_getClassName(a1);
            v21 = sel_getName("_negotiatePerBootAuthKeysSynchronously:");
            v22 = 45;
            if (v19)
            {
              v22 = 43;
            }

            v17(3, "%c[%{public}s %{public}s]:%i Failed: %{public}@", v22, v20, v21, 1319, *(*v50 + 40));
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

            v26 = object_getClassName(a1);
            v27 = sel_getName("_negotiatePerBootAuthKeysSynchronously:");
            v28 = *(*v50 + 40);
            *v39 = 67110146;
            v40 = v25;
            v41 = 2082;
            v42 = v26;
            v43 = 2082;
            v44 = v27;
            v45 = 1024;
            v46 = 1319;
            v47 = 2114;
            v48 = v28;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed: %{public}@", v39, 0x2Cu);
          }

          goto LABEL_30;
        }
      }

      *(a1 + 350) = 1;
LABEL_30:
      _Block_object_dispose(buf, 8);
    }
  }
}

void sub_1000EA958(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_33;
  }

  if (sub_100003384(a1) != 2 && sub_100003384(a1) != 5)
  {
    if (*(a1 + 363) == 1)
    {
      sub_1000EC6A0(a1);
    }

    goto LABEL_33;
  }

  v4 = *(a1 + 184);
  objc_sync_enter(v4);
  kdebug_trace();
  v5 = NFSharedSignpostLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MAYBE_START_NEXT_SESSION", &unk_1002E8B7A, buf, 2u);
  }

  v6 = a1;
  objc_sync_enter(v6);
  v7 = v6[344];
  objc_sync_exit(v6);

  if (v7 != 1)
  {
LABEL_31:
    v30 = 0;
    goto LABEL_32;
  }

  if (v6[364] == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(v6);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v6);
      Name = sel_getName("maybeStartNextSessionOnField:");
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v9(6, "%c[%{public}s %{public}s]:%i User-initated shutdown started, abort further processing", v13, ClassName, Name, 2008);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v15 = object_getClass(v6);
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    v17 = object_getClassName(v6);
    v18 = sel_getName("maybeStartNextSessionOnField:");
    *buf = 67109890;
    v289 = v16;
    v290 = 2082;
    v291 = v17;
    v292 = 2082;
    v293 = v18;
    v294 = 1024;
    v295 = 2008;
    v19 = "%c[%{public}s %{public}s]:%i User-initated shutdown started, abort further processing";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v19, buf, 0x22u);
LABEL_30:

    goto LABEL_31;
  }

  if (v6[351] == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v21 = v20;
      v22 = object_getClass(v6);
      v23 = class_isMetaClass(v22);
      v24 = object_getClassName(v6);
      v256 = sel_getName("maybeStartNextSessionOnField:");
      v25 = 45;
      if (v23)
      {
        v25 = 43;
      }

      v21(6, "%c[%{public}s %{public}s]:%i System is going to sleep - delaying start of new session", v25, v24, v256, 2014);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v26 = object_getClass(v6);
    if (class_isMetaClass(v26))
    {
      v27 = 43;
    }

    else
    {
      v27 = 45;
    }

    v28 = object_getClassName(v6);
    v29 = sel_getName("maybeStartNextSessionOnField:");
    *buf = 67109890;
    v289 = v27;
    v290 = 2082;
    v291 = v28;
    v292 = 2082;
    v293 = v29;
    v294 = 1024;
    v295 = 2014;
    v19 = "%c[%{public}s %{public}s]:%i System is going to sleep - delaying start of new session";
    goto LABEL_29;
  }

  if (v6[363] == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v32 = v31;
      v33 = object_getClass(v6);
      v34 = class_isMetaClass(v33);
      v35 = object_getClassName(v6);
      v257 = sel_getName("maybeStartNextSessionOnField:");
      v36 = 45;
      if (v34)
      {
        v36 = 43;
      }

      v32(6, "%c[%{public}s %{public}s]:%i Recovery mechanism requested a stop. Waiting.", v36, v35, v257, 2019);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = object_getClass(v6);
      if (class_isMetaClass(v38))
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }

      v40 = object_getClassName(v6);
      v41 = sel_getName("maybeStartNextSessionOnField:");
      *buf = 67109890;
      v289 = v39;
      v290 = 2082;
      v291 = v40;
      v292 = 2082;
      v293 = v41;
      v294 = 1024;
      v295 = 2019;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Recovery mechanism requested a stop. Waiting.", buf, 0x22u);
    }
  }

  else
  {
    v42 = sub_100003068(v6);
    sub_1000936E0(v6, v42);
    if (!*(v6 + 15))
    {
      sub_1000EA4CC(v6, 1);
    }
  }

  v268 = v4;
  v269 = v3;
  if (v6[363])
  {
    v272 = 0;
    goto LABEL_49;
  }

  v272 = 0;
  while (2)
  {
    if (*(v6 + 15) || ![*(a1 + 184) count])
    {
      goto LABEL_49;
    }

    v43 = [*(a1 + 184) objectAtIndex:0];
    while ([*(a1 + 184) count])
    {
      v44 = [*(a1 + 184) objectAtIndex:0];
      [*(a1 + 184) removeObjectAtIndex:0];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v45 = NFLogGetLogger();
      if (v45)
      {
        v46 = v45;
        v47 = object_getClass(v6);
        v48 = class_isMetaClass(v47);
        v49 = object_getClassName(v6);
        v50 = sel_getName("copyNextDequeuableSession");
        v51 = [v44 sessionUID];
        v52 = 45;
        if (v48)
        {
          v52 = 43;
        }

        v46(6, "%c[%{public}s %{public}s]:%i Next queued session=%{public}@", v52, v49, v50, 1871, v51);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v53 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = object_getClass(v6);
        if (class_isMetaClass(v54))
        {
          v55 = 43;
        }

        else
        {
          v55 = 45;
        }

        v56 = object_getClassName(v6);
        v57 = sel_getName("copyNextDequeuableSession");
        v58 = [v44 sessionUID];
        *buf = 67110146;
        v289 = v55;
        v290 = 2082;
        v291 = v56;
        v292 = 2082;
        v293 = v57;
        v294 = 1024;
        v295 = 1871;
        v296 = 2114;
        v297 = v58;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Next queued session=%{public}@", buf, 0x2Cu);
      }

      v59 = objc_opt_class();
      if (v59 == objc_opt_class() && ((v77 = *(v6 + 47)) != 0 && ([*(v77 + 56) readerModeProtectionActive] & 1) != 0 || *(v6 + 39)))
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v78 = NFLogGetLogger();
        if (v78)
        {
          v79 = v78;
          v80 = object_getClass(v6);
          v81 = class_isMetaClass(v80);
          v82 = object_getClassName(v6);
          v259 = sel_getName("copyNextDequeuableSession");
          v83 = 45;
          if (v81)
          {
            v83 = 43;
          }

          v79(6, "%c[%{public}s %{public}s]:%i Reader sessions not ready for dequeue, enqueuing for later", v83, v82, v259, 1874);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v70 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_102;
        }

        v84 = object_getClass(v6);
        if (class_isMetaClass(v84))
        {
          v85 = 43;
        }

        else
        {
          v85 = 45;
        }

        v86 = object_getClassName(v6);
        v87 = sel_getName("copyNextDequeuableSession");
        *buf = 67109890;
        v289 = v85;
        v290 = 2082;
        v291 = v86;
        v292 = 2082;
        v293 = v87;
        v294 = 1024;
        v295 = 1874;
        v75 = v70;
        v76 = "%c[%{public}s %{public}s]:%i Reader sessions not ready for dequeue, enqueuing for later";
        goto LABEL_101;
      }

      v60 = objc_opt_class();
      if (v60 != objc_opt_class())
      {
        v61 = [v44 clientName];
        v62 = sub_1000EA03C(v6, v44, v61);

        if ((v62 & 1) == 0)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v88 = NFLogGetLogger();
          if (v88)
          {
            v89 = v88;
            v90 = object_getClass(v6);
            v91 = class_isMetaClass(v90);
            v92 = object_getClassName(v6);
            v260 = sel_getName("copyNextDequeuableSession");
            v93 = 45;
            if (v91)
            {
              v93 = 43;
            }

            v89(6, "%c[%{public}s %{public}s]:%i Only seshat session allowed currently, enqueuing for later", v93, v92, v260, 1880);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v70 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_102;
          }

          v94 = object_getClass(v6);
          if (class_isMetaClass(v94))
          {
            v95 = 43;
          }

          else
          {
            v95 = 45;
          }

          v96 = object_getClassName(v6);
          v97 = sel_getName("copyNextDequeuableSession");
          *buf = 67109890;
          v289 = v95;
          v290 = 2082;
          v291 = v96;
          v292 = 2082;
          v293 = v97;
          v294 = 1024;
          v295 = 1880;
          v75 = v70;
          v76 = "%c[%{public}s %{public}s]:%i Only seshat session allowed currently, enqueuing for later";
          goto LABEL_101;
        }
      }

      v63 = *(v6 + 3);
      if (!v63 || *(v63 + 181) != 1 || ([v44 forceExpressExit] & 1) != 0)
      {
        goto LABEL_103;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v64 = NFLogGetLogger();
      if (v64)
      {
        v65 = v64;
        v66 = object_getClass(v6);
        v67 = class_isMetaClass(v66);
        v68 = object_getClassName(v6);
        v258 = sel_getName("copyNextDequeuableSession");
        v69 = 45;
        if (v67)
        {
          v69 = 43;
        }

        v65(6, "%c[%{public}s %{public}s]:%i Express Mode in progress - delaying start of session", v69, v68, v258, 1886);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v70 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v71 = object_getClass(v6);
        if (class_isMetaClass(v71))
        {
          v72 = 43;
        }

        else
        {
          v72 = 45;
        }

        v73 = object_getClassName(v6);
        v74 = sel_getName("copyNextDequeuableSession");
        *buf = 67109890;
        v289 = v72;
        v290 = 2082;
        v291 = v73;
        v292 = 2082;
        v293 = v74;
        v294 = 1024;
        v295 = 1886;
        v75 = v70;
        v76 = "%c[%{public}s %{public}s]:%i Express Mode in progress - delaying start of session";
LABEL_101:
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, v76, buf, 0x22u);
      }

LABEL_102:

      [*(a1 + 184) addObject:v44];
      v44 = 0;
LABEL_103:
      if ([*(a1 + 184) count])
      {
        v98 = [*(a1 + 184) objectAtIndex:0];

        if (v98 != v43 && !v44)
        {
          continue;
        }
      }

      goto LABEL_108;
    }

    v44 = 0;
LABEL_108:

    v99 = *(v6 + 15);
    *(v6 + 15) = v44;

    v100 = *(v6 + 15);
    if (!v100)
    {
      goto LABEL_49;
    }

    v101 = *(v6 + 3);
    if (v101 && *(v101 + 181) == 1 && [v100 forceExpressExit])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v102 = NFLogGetLogger();
      if (v102)
      {
        v103 = v102;
        v104 = object_getClass(v6);
        v105 = class_isMetaClass(v104);
        v106 = object_getClassName(v6);
        v261 = sel_getName("maybeStartNextSessionOnField:");
        v107 = 45;
        if (v105)
        {
          v107 = 43;
        }

        v103(6, "%c[%{public}s %{public}s]:%i forcing exiting express mode", v107, v106, v261, 2050);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v108 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        v109 = object_getClass(v6);
        if (class_isMetaClass(v109))
        {
          v110 = 43;
        }

        else
        {
          v110 = 45;
        }

        v111 = object_getClassName(v6);
        v112 = sel_getName("maybeStartNextSessionOnField:");
        *buf = 67109890;
        v289 = v110;
        v290 = 2082;
        v291 = v111;
        v292 = 2082;
        v293 = v112;
        v294 = 1024;
        v295 = 2050;
        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i forcing exiting express mode", buf, 0x22u);
      }

      v113 = *(v6 + 3);
      if (v113)
      {
        sub_10003CBC0(v113, 0);
      }
    }

    if ([*(v6 + 15) priority])
    {
      sub_100008AA4(v6);
    }

    v114 = *(v6 + 15);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v115 = [*(v6 + 15) connection];
    }

    else
    {
      v115 = 0;
    }

    if (([*(v6 + 15) allowsBackgroundMode] & 1) == 0 && v115 && sub_1000439B8(*(v6 + 10), v115))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v116 = NFLogGetLogger();
      if (v116)
      {
        v117 = v116;
        v118 = object_getClass(v6);
        v119 = class_isMetaClass(v118);
        v120 = object_getClassName(v6);
        v121 = sel_getName("maybeStartNextSessionOnField:");
        v122 = [*(v6 + 15) clientName];
        v123 = 45;
        if (v119)
        {
          v123 = 43;
        }

        v117(6, "%c[%{public}s %{public}s]:%i Session is not allowed because %{public}@ is in background mode", v123, v120, v121, 2064, v122);
      }

      v270 = v115;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v124 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        v125 = object_getClass(v6);
        if (class_isMetaClass(v125))
        {
          v126 = 43;
        }

        else
        {
          v126 = 45;
        }

        v127 = object_getClassName(v6);
        v128 = sel_getName("maybeStartNextSessionOnField:");
        v129 = [*(v6 + 15) clientName];
        *buf = 67110146;
        v289 = v126;
        v290 = 2082;
        v291 = v127;
        v292 = 2082;
        v293 = v128;
        v294 = 1024;
        v295 = 2064;
        v296 = 2114;
        v297 = v129;
        _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Session is not allowed because %{public}@ is in background mode", buf, 0x2Cu);
      }

      v130 = *(v6 + 15);
      v131 = [NSError alloc];
      v132 = [NSString stringWithUTF8String:"nfcd"];
      v286[0] = NSLocalizedDescriptionKey;
      v133 = [NSString stringWithUTF8String:"Invalid State"];
      v287[0] = v133;
      v287[1] = &off_100331470;
      v286[1] = @"Line";
      v286[2] = @"Method";
      v134 = [[NSString alloc] initWithFormat:@"%s", sel_getName("maybeStartNextSessionOnField:")];
      v287[2] = v134;
      v286[3] = NSDebugDescriptionErrorKey;
      v135 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("maybeStartNextSessionOnField:"), 2065];
      v287[3] = v135;
      v136 = [NSDictionary dictionaryWithObjects:v287 forKeys:v286 count:4];
      v137 = [v131 initWithDomain:v132 code:12 userInfo:v136];
      [v130 didStartSession:v137];

      v115 = v270;
      goto LABEL_175;
    }

    if (([*(v6 + 15) holdAssertion] & 1) == 0)
    {
      [*(a1 + 184) insertObject:*(v6 + 15) atIndex:0];
      v241 = *(v6 + 15);
      *(v6 + 15) = 0;

      goto LABEL_49;
    }

    v138 = sub_10021A4A0(*(v6 + 47), @"Session", [*(v6 + 15) isSessionSEOnly] ^ 1);

    [*(v6 + 52) stop];
    if (v138)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v139 = NFLogGetLogger();
      if (v139)
      {
        v140 = v139;
        v141 = object_getClass(v6);
        v142 = class_isMetaClass(v141);
        v253 = object_getClassName(v6);
        v262 = sel_getName("maybeStartNextSessionOnField:");
        v143 = 45;
        if (v142)
        {
          v143 = 43;
        }

        v140(3, "%c[%{public}s %{public}s]:%i Failed to open session with SE : %@", v143, v253, v262, 2129, v138);
      }

      v271 = v115;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v144 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
      {
        v145 = object_getClass(v6);
        if (class_isMetaClass(v145))
        {
          v146 = 43;
        }

        else
        {
          v146 = 45;
        }

        v147 = object_getClassName(v6);
        v148 = sel_getName("maybeStartNextSessionOnField:");
        *buf = 67110146;
        v289 = v146;
        v290 = 2082;
        v291 = v147;
        v292 = 2082;
        v293 = v148;
        v294 = 1024;
        v295 = 2129;
        v296 = 2112;
        v297 = v138;
        _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session with SE : %@", buf, 0x2Cu);
      }

LABEL_174:
      v180 = v138;

      v181 = [NSString stringWithFormat:@"Failed to open session. Error = %@", v138];
      sub_100199A24(NFBugCapture, @"Failed to start the session", v181, 0);

      v182 = *(v6 + 15);
      v183 = [NSError alloc];
      v184 = [NSString stringWithUTF8String:"nfcd"];
      v282[0] = NSLocalizedDescriptionKey;
      v185 = [NSString stringWithUTF8String:"Stack Error"];
      v283[0] = v185;
      v283[1] = v138;
      v282[1] = NSUnderlyingErrorKey;
      v282[2] = @"Line";
      v283[2] = &off_100331488;
      v282[3] = @"Method";
      v186 = [[NSString alloc] initWithFormat:@"%s", sel_getName("maybeStartNextSessionOnField:")];
      v283[3] = v186;
      v282[4] = NSDebugDescriptionErrorKey;
      v187 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("maybeStartNextSessionOnField:"), 2137];
      v283[4] = v187;
      v188 = [NSDictionary dictionaryWithObjects:v283 forKeys:v282 count:5];
      v189 = [v183 initWithDomain:v184 code:15 userInfo:v188];
      [v182 didStartSession:v189];

      v272 = v180;
      v115 = v271;
      goto LABEL_175;
    }

    v149 = [*(v6 + 15) checkSessionAllowed];
    if (v149)
    {
      v272 = v149;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v150 = NFLogGetLogger();
      if (v150)
      {
        v151 = v150;
        v152 = object_getClass(v6);
        v153 = class_isMetaClass(v152);
        v154 = object_getClassName(v6);
        v263 = sel_getName("maybeStartNextSessionOnField:");
        v155 = 45;
        if (v153)
        {
          v155 = 43;
        }

        v151(6, "%c[%{public}s %{public}s]:%i Session is not allowed ...", v155, v154, v263, 2122);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v156 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
      {
        v157 = object_getClass(v6);
        if (class_isMetaClass(v157))
        {
          v158 = 43;
        }

        else
        {
          v158 = 45;
        }

        v159 = object_getClassName(v6);
        v160 = sel_getName("maybeStartNextSessionOnField:");
        *buf = 67109890;
        v289 = v158;
        v290 = 2082;
        v291 = v159;
        v292 = 2082;
        v293 = v160;
        v294 = 1024;
        v295 = 2122;
        _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Session is not allowed ...", buf, 0x22u);
      }

      v161 = *(v6 + 15);
      v162 = [NSError alloc];
      v163 = [NSString stringWithUTF8String:"nfcd"];
      v284[0] = NSLocalizedDescriptionKey;
      v164 = [NSString stringWithUTF8String:"Stack Error"];
      v284[1] = NSUnderlyingErrorKey;
      v285[0] = v164;
      v285[1] = v272;
      v165 = [NSDictionary dictionaryWithObjects:v285 forKeys:v284 count:2];
      v166 = [v162 initWithDomain:v163 code:15 userInfo:v165];
      [v161 didStartSession:v166];

      sub_10021CC94(*(v6 + 47), @"Session");
LABEL_175:
      v190 = *(v6 + 15);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([*(v6 + 15) timeLimitedSession])
        {
          v191 = *(v6 + 82);
          v192 = __OFSUB__(v191, 1);
          v193 = v191 - 1;
          if (v193 < 0 == v192)
          {
            *(v6 + 82) = v193;
          }
        }
      }

      sub_1000EC998(*(v6 + 15), v115);
      v194 = *(v6 + 15);
      *(v6 + 15) = 0;

      if (![*(a1 + 184) count])
      {
        sub_1000DE998(v6, 0);
      }

      if (v6[363] == 1)
      {
LABEL_49:
        if (*(v6 + 15))
        {
          v3 = v269;
          v4 = v268;
        }

        else
        {
          v195 = *(v6 + 3);
          v3 = v269;
          v4 = v268;
          if (v195 && *(v195 + 181) == 1)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v196 = NFLogGetLogger();
            if (v196)
            {
              v197 = v196;
              v198 = object_getClass(v6);
              v199 = class_isMetaClass(v198);
              v200 = object_getClassName(v6);
              v265 = sel_getName("maybeStartNextSessionOnField:");
              v201 = 45;
              if (v199)
              {
                v201 = 43;
              }

              v197(6, "%c[%{public}s %{public}s]:%i Express Mode in progress - skip routing config", v201, v200, v265, 2161);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v202 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
            {
              v203 = object_getClass(v6);
              if (class_isMetaClass(v203))
              {
                v204 = 43;
              }

              else
              {
                v204 = 45;
              }

              v205 = object_getClassName(v6);
              v206 = sel_getName("maybeStartNextSessionOnField:");
              *buf = 67109890;
              v289 = v204;
              v290 = 2082;
              v291 = v205;
              v292 = 2082;
              v293 = v206;
              v294 = 1024;
              v295 = 2161;
              _os_log_impl(&_mh_execute_header, v202, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Express Mode in progress - skip routing config", buf, 0x22u);
            }
          }

          else if (v6[363] == 1)
          {
            sub_1000EC6A0(v6);
          }

          else
          {
            sub_10000453C(v6);
            if (sub_1000ECA30(v6, 1))
            {
              [*(v6 + 52) start];
            }

            if (v6[346] == 1)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v207 = NFLogGetLogger();
              if (v207)
              {
                v208 = v207;
                v209 = object_getClass(v6);
                v210 = class_isMetaClass(v209);
                v211 = object_getClassName(v6);
                v266 = sel_getName("maybeStartNextSessionOnField:");
                v212 = 45;
                if (v210)
                {
                  v212 = 43;
                }

                v208(5, "%c[%{public}s %{public}s]:%i Restarting driver for defaults changes", v212, v211, v266, 2185);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v213 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
              {
                v214 = object_getClass(v6);
                if (class_isMetaClass(v214))
                {
                  v215 = 43;
                }

                else
                {
                  v215 = 45;
                }

                v216 = object_getClassName(v6);
                v217 = sel_getName("maybeStartNextSessionOnField:");
                *buf = 67109890;
                v289 = v215;
                v290 = 2082;
                v291 = v216;
                v292 = 2082;
                v293 = v217;
                v294 = 1024;
                v295 = 2185;
                _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restarting driver for defaults changes", buf, 0x22u);
              }

              sub_10021D9F4(*(v6 + 47));
              v6[346] = 0;
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v218 = NFLogGetLogger();
              if (v218)
              {
                v219 = v218;
                v220 = object_getClass(v6);
                v221 = class_isMetaClass(v220);
                v222 = object_getClassName(v6);
                v267 = sel_getName("maybeStartNextSessionOnField:");
                v223 = 45;
                if (v221)
                {
                  v223 = 43;
                }

                v219(5, "%c[%{public}s %{public}s]:%i Done restarting driver for defaults changes", v223, v222, v267, 2188);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v224 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
              {
                v225 = object_getClass(v6);
                if (class_isMetaClass(v225))
                {
                  v226 = 43;
                }

                else
                {
                  v226 = 45;
                }

                v227 = object_getClassName(v6);
                v228 = sel_getName("maybeStartNextSessionOnField:");
                *buf = 67109890;
                v289 = v226;
                v290 = 2082;
                v291 = v227;
                v292 = 2082;
                v293 = v228;
                v294 = 1024;
                v295 = 2188;
                _os_log_impl(&_mh_execute_header, v224, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Done restarting driver for defaults changes", buf, 0x22u);
              }
            }

            v229 = [v6 lastKnownRoutingConfig];
            v230 = [v229 lpcdEcpFrame];

            v275 = 0u;
            v276 = 0u;
            v273 = 0u;
            v274 = 0u;
            v231 = *(v6 + 24);
            v232 = [v231 countByEnumeratingWithState:&v273 objects:v281 count:16];
            if (v232)
            {
              v233 = v232;
              v234 = *v274;
              while (2)
              {
                for (i = 0; i != v233; i = i + 1)
                {
                  if (*v274 != v234)
                  {
                    objc_enumerationMutation(v231);
                  }

                  v236 = *(*(&v273 + 1) + 8 * i);
                  v237 = [v236 startOnFieldList];
                  if (v237)
                  {
                    v238 = v237;
                    v239 = [v236 parentToken];
                    if (v239)
                    {
                    }

                    else
                    {
                      objc_opt_class();
                      isKindOfClass = objc_opt_isKindOfClass();

                      if (isKindOfClass)
                      {
                        v242 = [v236 effectiveECPFrame];

                        v230 = v242;
                        goto LABEL_234;
                      }
                    }
                  }
                }

                v233 = [v231 countByEnumeratingWithState:&v273 objects:v281 count:16];
                if (v233)
                {
                  continue;
                }

                break;
              }

LABEL_234:
              v3 = v269;
              v4 = v268;
            }

            sub_1000ECC30(v6, v230);
            v243 = [v6 lastKnownRoutingConfig];
            v244 = sub_1000ECE84(v6, [v243 fieldDetectType], v230);

            v245 = [v6 lastKnownRoutingConfig];
            v246 = sub_10004B630(v244, v245);

            if (!v246 || ([v6 lastKnownRoutingConfig], v247 = objc_claimAutoreleasedReturnValue(), v248 = objc_msgSend(v247, "fdOn"), v249 = sub_100003068(v6), v247, v248 != v249))
            {
              v250 = sub_10021A4A0(*(v6 + 47), @"StartSessionOFF", 1uLL);

              if (!v250)
              {
                sub_1000ED28C(v6, v230);
                sub_10021CC94(*(v6 + 47), @"StartSessionOFF");
              }
            }
          }
        }

        v30 = v272;
        goto LABEL_32;
      }

      continue;
    }

    break;
  }

  v144 = *(v6 + 15);
  [v144 willStartSession];
  v167 = [v144 initialRoutingConfigWithField:v269];
  v138 = [v6 setRoutingConfig:v167];

  if (v138)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v168 = NFLogGetLogger();
    if (v168)
    {
      v169 = v168;
      v170 = object_getClass(v6);
      v171 = class_isMetaClass(v170);
      v254 = object_getClassName(v6);
      v264 = sel_getName("maybeStartNextSessionOnField:");
      v172 = 45;
      if (v171)
      {
        v172 = 43;
      }

      v169(3, "%c[%{public}s %{public}s]:%i Failed to set initial routing for session : %{public}@", v172, v254, v264, 2115, v138);
    }

    v271 = v115;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v173 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
    {
      v174 = object_getClass(v6);
      if (class_isMetaClass(v174))
      {
        v175 = 43;
      }

      else
      {
        v175 = 45;
      }

      v176 = object_getClassName(v6);
      v177 = sel_getName("maybeStartNextSessionOnField:");
      *buf = 67110146;
      v289 = v175;
      v290 = 2082;
      v291 = v176;
      v292 = 2082;
      v293 = v177;
      v294 = 1024;
      v295 = 2115;
      v296 = 2114;
      v297 = v138;
      _os_log_impl(&_mh_execute_header, v173, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set initial routing for session : %{public}@", buf, 0x2Cu);
    }

    v178 = sub_10004C144();
    v179 = [v6 setRoutingConfig:v178];

    sub_10021CC94(*(v6 + 47), @"Session");
    goto LABEL_174;
  }

  v251 = *(v6 + 30);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EC744;
  block[3] = &unk_100315F80;
  v278 = v144;
  v279 = v6;
  v280 = "maybeStartNextSessionOnField:";
  v252 = v144;
  dispatch_async(v251, block);

  v30 = 0;
  v3 = v269;
  v4 = v268;
LABEL_32:

  objc_sync_exit(v4);
LABEL_33:
}

void sub_1000EC6A0(uint64_t a1)
{
  *(a1 + 346) = 0;
  v2 = sub_100210FEC();
  v3 = sub_100214280(v2, 1);

  if (v3)
  {
    [*(a1 + 416) stop];
    v4 = sub_100210FEC();
    sub_100214310(v4, 1);
  }
}

void sub_1000EC744(uint64_t a1)
{
  if ([*(a1 + 32) didEnd])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(*(a1 + 40));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 40));
      Name = sel_getName(*(a1 + 48));
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i Session was ended before starting...", v7, ClassName, Name, 2098);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = object_getClass(*(a1 + 40));
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      v11 = object_getClassName(*(a1 + 40));
      v12 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      *v20 = v10;
      *&v20[4] = 2082;
      *&v20[6] = v11;
      v21 = 2082;
      v22 = v12;
      v23 = 1024;
      v24 = 2098;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Session was ended before starting...", buf, 0x22u);
    }
  }

  else
  {
    kdebug_trace();
    v13 = NFSharedSignpostLog();
    if (os_signpost_enabled(v13))
    {
      v14 = [*(a1 + 32) sessionUID];
      *buf = 138412290;
      *v20 = v14;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SESSION_STARTED", "sessionUID=%@", buf, 0xCu);
    }

    [*(a1 + 32) didStartSession:0];
    v15 = [*(a1 + 32) shouldHandleSecureElementTransactionData];
    v16 = *(a1 + 40);
    v17 = *(v16 + 376);
    if (v17)
    {
      *(v17 + 177) = v15;
      v16 = *(a1 + 40);
    }

    sub_1000E9F50(v16);
    sub_1001DD8CC(*(a1 + 40));
  }
}

void sub_1000EC998(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  [v6 releaseObjects];
  if (v3)
  {
    v4 = [v3 NF_userInfo];
    v5 = [v4 objectForKeyedSubscript:@"ProxyObjects"];
    [v5 removeObject:v6];
  }
}

uint64_t sub_1000ECA30(void **a1, uint64_t a2)
{
  v4 = sub_1000030C8(a1[12]);
  v5 = sub_100003110(a1[12]);
  v6 = 1;
  if (((a2 ^ 1) & v4 & 1) == 0)
  {
    v7 = v5;
    if ((a2 & v4 & v5 & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("sessionsAllowedForTimeConsumingOperations:");
        v12 = 43;
        if (!isMetaClass)
        {
          v12 = 45;
        }

        v9(6, "%c[%{public}s %{public}s]:%i sessionTimeConsuming=%d allowSimpleSessions=%d allowTimeConsumingSessions=%d", v12, ClassName, Name, 2775, a2, v4, v7 & 1);
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

        *buf = 67110658;
        v20 = v15;
        v21 = 2082;
        v22 = object_getClassName(a1);
        v23 = 2082;
        v24 = sel_getName("sessionsAllowedForTimeConsumingOperations:");
        v25 = 1024;
        v26 = 2775;
        v27 = 1024;
        v28 = a2;
        v29 = 1024;
        v30 = v4;
        v31 = 1024;
        v32 = v7 & 1;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i sessionTimeConsuming=%d allowSimpleSessions=%d allowTimeConsumingSessions=%d", buf, 0x34u);
      }

      if (a2)
      {
        v6 = v7;
      }

      else
      {
        v6 = v4;
      }
    }
  }

  return v6 & 1;
}

void sub_1000ECC30(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_updateECPRandomOverride:");
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i %@", v8, ClassName, Name, 9532, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(a1);
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      *buf = 67110146;
      v21 = v11;
      v22 = 2082;
      v23 = object_getClassName(a1);
      v24 = 2082;
      v25 = sel_getName("_updateECPRandomOverride:");
      v26 = 1024;
      v27 = 9532;
      v28 = 2112;
      v29 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
    }

    v18 = @"ECPData";
    v19 = v3;
    v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [NFFieldNotification notificationWithDictionary:v12];

    v14 = [(os_unfair_lock_s *)v13 chRandomData];
    if (v14)
    {
      v15 = sub_100005F24();
      sub_100184B20(v15, v14);
    }
  }

  else
  {
    v13 = sub_100005F24();
    sub_100005F7C(v13);
  }
}

id sub_1000ECE84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = sub_100006030(*(a1 + 24));
    v7 = sub_100006544(*(a1 + 24));
    if ([*(a1 + 392) hasReaderModeSupport] && (NFProductIsDevBoard() & 1) == 0 && (NFProductIsNED() & 1) == 0 && objc_msgSend(a1, "nfcRadioEnabled:showUIPopup:", 0, 0) == 1)
    {
      if (NFIsUIBuild() & 1) != 0 || ([*(a1 + 416) isForceEnabledByDefaults])
      {
        if (!NFProductIsDevBoard() || *(a1 + 288) == 1) && [*(a1 + 416) isActive] && (sub_1000ECA30(a1, 1))
        {
          v8 = *(a1 + 376);
          if (!v8)
          {
            v32 = v5;
            goto LABEL_14;
          }

          v9 = [*(v8 + 56) readerModeProtectionActive];
          v10 = v5;
          if ((v9 & 1) == 0)
          {
LABEL_14:
            v11 = [*(a1 + 416) getECPFrame];

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v13 = Logger;
              Class = object_getClass(a1);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(a1);
              Name = sel_getName("defaultRoutingConfig:ecp:");
              v16 = 45;
              if (isMetaClass)
              {
                v16 = 43;
              }

              v13(6, "%c[%{public}s %{public}s]:%i Setting ecp frame for background tag scanning: %{public}@", v16, ClassName, Name, 9564, v11);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v17 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
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

              *buf = 67110146;
              v37 = v19;
              v38 = 2082;
              v39 = object_getClassName(a1);
              v40 = 2082;
              v41 = sel_getName("defaultRoutingConfig:ecp:");
              v42 = 1024;
              v43 = 9564;
              v44 = 2114;
              v45 = v11;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Setting ecp frame for background tag scanning: %{public}@", buf, 0x2Cu);
            }

            v20 = 1;
            goto LABEL_36;
          }

LABEL_35:
          v11 = v10;
          v20 = 0;
LABEL_36:
          v30 = sub_10004C2B0(NFRoutingConfig, v20, v6, v7, 0, a2, v11);

          goto LABEL_37;
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v21 = NFLogGetLogger();
        if (v21)
        {
          v22 = v21;
          v23 = object_getClass(a1);
          v24 = class_isMetaClass(v23);
          v25 = object_getClassName(a1);
          v35 = sel_getName("backgroundTagDetectAllow");
          v26 = 45;
          if (v24)
          {
            v26 = 43;
          }

          v22(4, "%c[%{public}s %{public}s]:%i Please set override to enable", v26, v25, v35, 2976);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v27 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = object_getClass(a1);
          if (class_isMetaClass(v28))
          {
            v29 = 43;
          }

          else
          {
            v29 = 45;
          }

          *buf = 67109890;
          v37 = v29;
          v38 = 2082;
          v39 = object_getClassName(a1);
          v40 = 2082;
          v41 = sel_getName("backgroundTagDetectAllow");
          v42 = 1024;
          v43 = 2976;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Please set override to enable", buf, 0x22u);
        }
      }
    }

    v10 = v5;
    goto LABEL_35;
  }

  v30 = 0;
LABEL_37:

  return v30;
}

void sub_1000ED28C(id *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100003068(a1);
  v5 = sub_1000ECE84(a1, v4, v3);

  v6 = [a1 setRoutingConfig:v5];

  if ([v6 code] == 47)
  {
    v7 = [a1 defaultRoutingConfig:3];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("enableDefaultRoutingWithECP:");
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v9(6, "%c[%{public}s %{public}s]:%i Retrying to set routing with mode %{public}@", v12, ClassName, Name, 2260, v7);
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

      *buf = 67110146;
      v20 = v15;
      v21 = 2082;
      v22 = object_getClassName(a1);
      v23 = 2082;
      v24 = sel_getName("enableDefaultRoutingWithECP:");
      v25 = 1024;
      v26 = 2260;
      v27 = 2114;
      v28 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Retrying to set routing with mode %{public}@", buf, 0x2Cu);
    }

    v16 = [a1 setRoutingConfig:v7];
  }
}

id sub_1000ED4AC(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, _BYTE *a7, _NFReaderSession **a8)
{
  v13 = a3;
  v75 = a6;
  if (a1)
  {
    v14 = a5;
    v15 = a2;
    v16 = [_NFReaderSession alloc];
    v17 = *(a1 + 240);
    v18 = [v13 uiMode];
    v19 = [v13 sessionType];
    [v13 initialScanText];
    v21 = v20 = v13;
    v22 = [(_NFReaderSession *)v16 initWithRemoteObject:v15 workQueue:v17 whitelist:v14 serviceType:a4 showSharingUI:v18 coreNFCSessionType:v19 scanText:v21];

    if (v22)
    {
      v23 = a4;
      [(_NFSession *)v22 setQueue:a1];
      v24 = v75;
      [(_NFXPCSession *)v22 setConnection:v75];
      [(_NFSession *)v22 setUid:0xFFFFFFFFLL];
      v25 = sub_1001AE20C();
      [(_NFReaderSession *)v22 setPowerConsumptionReporter:v25];

      v26 = a1;
      if ([v20 uiMode])
      {
        v76[0] = _NSConcreteStackBlock;
        v76[1] = 3221225472;
        v76[2] = sub_1000EDC90;
        v76[3] = &unk_100318800;
        v76[4] = a1;
        v76[5] = "_queueHelperReaderSession:sessionConfig:serviceType:whitelist:xpcConnection:isFirstInQueue:outSession:";
        [(_NFReaderSession *)v22 setUiInvalidationHandler:v76];
      }

      [(_NFSession *)v22 setServiceType:v23];
      [(_NFReaderSession *)v22 setDriverWrapper:*(a1 + 376)];
      *a7 = 0;
      v27 = *(a1 + 376);
      if (v27 && [*(v27 + 56) readerModeProtectionActive])
      {
        v28 = [NSError alloc];
        v29 = [NSString stringWithUTF8String:"nfcd"];
        v79[0] = NSLocalizedDescriptionKey;
        v30 = [NSString stringWithUTF8String:"Reader mode temporarily disabled"];
        v80[0] = v30;
        v80[1] = &off_1003314A0;
        v79[1] = @"Line";
        v79[2] = @"Method";
        v31 = v20;
        v32 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_queueHelperReaderSession:sessionConfig:serviceType:whitelist:xpcConnection:isFirstInQueue:outSession:")];
        v80[2] = v32;
        v79[3] = NSDebugDescriptionErrorKey;
        v33 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_queueHelperReaderSession:sessionConfig:serviceType:whitelist:xpcConnection:isFirstInQueue:outSession:"), 2314];
        v80[3] = v33;
        v34 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:4];
        v35 = [v28 initWithDomain:v29 code:47 userInfo:v34];

        v13 = v31;
LABEL_36:

        goto LABEL_37;
      }

      v50 = *(a1 + 184);
      objc_sync_enter(v50);
      if ([(_NFReaderSession *)v22 timeLimitedSession])
      {
        v51 = *(v26 + 328);
        if (v51 >= 1)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v53 = Logger;
            Class = object_getClass(v26);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v26);
            Name = sel_getName("_queueHelperReaderSession:sessionConfig:serviceType:whitelist:xpcConnection:isFirstInQueue:outSession:");
            v57 = 45;
            if (isMetaClass)
            {
              v57 = 43;
            }

            v53(6, "%c[%{public}s %{public}s]:%i MaxReaderSession reached.", v57, ClassName, Name, 2322);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v58 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v59 = object_getClass(v26);
            if (class_isMetaClass(v59))
            {
              v60 = 43;
            }

            else
            {
              v60 = 45;
            }

            v61 = object_getClassName(v26);
            v62 = sel_getName("_queueHelperReaderSession:sessionConfig:serviceType:whitelist:xpcConnection:isFirstInQueue:outSession:");
            *buf = 67109890;
            v84 = v60;
            v85 = 2082;
            v86 = v61;
            v87 = 2082;
            v88 = v62;
            v89 = 1024;
            v90 = 2322;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i MaxReaderSession reached.", buf, 0x22u);
          }

          v63 = [NSError alloc];
          v64 = [NSString stringWithUTF8String:"nfcd"];
          v77 = NSLocalizedDescriptionKey;
          v65 = [NSString stringWithUTF8String:"Busy"];
          v78 = v65;
          v66 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];
          v35 = [v63 initWithDomain:v64 code:2 userInfo:v66];

          objc_sync_exit(v50);
LABEL_30:
          v13 = v20;
          goto LABEL_36;
        }

        *(v26 + 328) = v51 + 1;
      }

      v67 = [v75 NF_userInfo];
      v68 = [v67 objectForKeyedSubscript:@"ProxyObjects"];
      [v68 addObject:v22];

      if (*(v26 + 120) || [*(v26 + 184) count])
      {
        *a7 = 0;
      }

      else
      {
        *a7 = 1;
        sub_1000DE998(v26, 1);
      }

      v13 = v20;
      [*(v26 + 184) addObject:v22];
      objc_sync_exit(v50);

      v69 = v22;
      v35 = 0;
      *a8 = v22;
      goto LABEL_36;
    }

    v36 = a1;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFLogGetLogger();
    v24 = v75;
    if (v37)
    {
      v38 = v37;
      v39 = object_getClass(a1);
      v40 = class_isMetaClass(v39);
      v41 = object_getClassName(a1);
      v71 = sel_getName("_queueHelperReaderSession:sessionConfig:serviceType:whitelist:xpcConnection:isFirstInQueue:outSession:");
      v42 = 45;
      if (v40)
      {
        v42 = 43;
      }

      v38(3, "%c[%{public}s %{public}s]:%i Session creation failed.", v42, v41, v71, 2282);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v43 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = object_getClass(v36);
      if (class_isMetaClass(v44))
      {
        v45 = 43;
      }

      else
      {
        v45 = 45;
      }

      *buf = 67109890;
      v84 = v45;
      v85 = 2082;
      v86 = object_getClassName(v36);
      v87 = 2082;
      v88 = sel_getName("_queueHelperReaderSession:sessionConfig:serviceType:whitelist:xpcConnection:isFirstInQueue:outSession:");
      v89 = 1024;
      v90 = 2282;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session creation failed.", buf, 0x22u);
    }

    v46 = [NSError alloc];
    v47 = [NSString stringWithUTF8String:"nfcd"];
    v81 = NSLocalizedDescriptionKey;
    v48 = [NSString stringWithUTF8String:"Unexpected Result"];
    v82 = v48;
    v49 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v35 = [v46 initWithDomain:v47 code:13 userInfo:v49];

    goto LABEL_30;
  }

  v35 = 0;
  v24 = v75;
LABEL_37:

  return v35;
}

void sub_1000EDC90(uint64_t a1, void *a2)
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
    v10 = [v3 sessionUID];
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Got invalidation handler (session %@)", v11, ClassName, Name, 2299, v10);
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
    v16 = sel_getName(*(a1 + 40));
    v17 = [v3 sessionUID];
    *buf = 67110146;
    v19 = v14;
    v20 = 2082;
    v21 = v15;
    v22 = 2082;
    v23 = v16;
    v24 = 1024;
    v25 = 2299;
    v26 = 2112;
    v27 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Got invalidation handler (session %@)", buf, 0x2Cu);
  }

  if ([v3 didEnd])
  {
    sub_1000EDE74(*(a1 + 32));
  }
}

void sub_1000EDE74(void *a1)
{
  if (a1)
  {
    v2 = a1[39];
    if (v2)
    {
      a1[39] = v2 - 1;
      v3 = a1[52];

      [v3 resume];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v5 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("resumeReaderSessionStart");
        v9 = 45;
        if (isMetaClass)
        {
          v9 = 43;
        }

        v5(3, "%c[%{public}s %{public}s]:%i Suspend count underflow", v9, ClassName, Name, 9877);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
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

        *buf = 67109890;
        v15 = v12;
        v16 = 2082;
        v17 = object_getClassName(a1);
        v18 = 2082;
        v19 = sel_getName("resumeReaderSessionStart");
        v20 = 1024;
        v21 = 9877;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Suspend count underflow", buf, 0x22u);
      }
    }
  }
}

void sub_1000EE050(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i Resume reader activity after expiration of %@", v8, ClassName, Name, 2378, *(a1 + 40));
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
    v16 = v11;
    v17 = 2082;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 1024;
    v22 = 2378;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Resume reader activity after expiration of %@", buf, 0x2Cu);
  }

  sub_1000EDE74(*(a1 + 32));
}

void sub_1000EE1EC(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i Resume reader activity after delay (session %@)", v8, ClassName, Name, 2516, *(a1 + 40));
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
    v16 = v11;
    v17 = 2082;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 1024;
    v22 = 2516;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Resume reader activity after delay (session %@)", buf, 0x2Cu);
  }

  sub_1000EDE74(*(a1 + 32));
}

void sub_1000EE388(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    kdebug_trace();
    v6 = NFSharedSignpostLog();
    if (os_signpost_enabled(v6))
    {
      v7 = [v5 sessionUID];
      *buf = 138412290;
      *&buf[4] = v7;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SESSION_ENDED", "sessionUID=%@", buf, 0xCu);
    }

    v8 = a1[23];
    objc_sync_enter(v8);
    v9 = a1;
    objc_sync_enter(v9);
    v10 = *(v9 + 344);
    objc_sync_exit(v9);

    if (v10 != 1)
    {
      goto LABEL_213;
    }

    v11 = v5;
    objc_opt_class();
    v236 = v5;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      if ([v12 timeLimitedSession])
      {
        v13 = *(v9 + 82);
        v14 = __OFSUB__(v13, 1);
        v15 = v13 - 1;
        if (v15 < 0 == v14)
        {
          *(v9 + 82) = v15;
        }
      }

      if (v9[15] == v12 && [v12 didStart] && objc_msgSend(v12, "uiShown"))
      {
        if ([v12 uiActivated])
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v17 = Logger;
            Class = object_getClass(v9);
            isMetaClass = class_isMetaClass(Class);
            sel = object_getClassName(v9);
            Name = sel_getName("_dequeueHelperReaderSession:");
            [v12 sessionUID];
            v21 = v20 = a3;
            v22 = 45;
            if (isMetaClass)
            {
              v22 = 43;
            }

            v17(6, "%c[%{public}s %{public}s]:%i Suspend until UI invalidation handler executes for session %@", v22, sel, Name, 2363, v21);

            a3 = v20;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v23 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = object_getClass(v9);
            if (class_isMetaClass(v24))
            {
              v25 = 43;
            }

            else
            {
              v25 = 45;
            }

            selb = object_getClassName(v9);
            v26 = a3;
            v27 = sel_getName("_dequeueHelperReaderSession:");
            v28 = [v12 sessionUID];
            *buf = 67110146;
            *&buf[4] = v25;
            *&buf[8] = 2082;
            *&buf[10] = selb;
            *&buf[18] = 2082;
            *&buf[20] = v27;
            a3 = v26;
            *&buf[28] = 1024;
            *&buf[30] = 2363;
            *&buf[34] = 2112;
            *&buf[36] = v28;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Suspend until UI invalidation handler executes for session %@", buf, 0x2Cu);
          }

          v9[39] = v9[39] + 1;
          [v9[52] suspend];
        }

        else if (v9[39])
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v29 = NFLogGetLogger();
          if (v29)
          {
            v30 = v29;
            v31 = object_getClass(v9);
            v32 = class_isMetaClass(v31);
            v33 = a3;
            ClassName = object_getClassName(v9);
            v218 = sel_getName("_dequeueHelperReaderSession:");
            v35 = 45;
            if (v32)
            {
              v35 = 43;
            }

            v217 = ClassName;
            a3 = v33;
            v30(6, "%c[%{public}s %{public}s]:%i Currently under reader suspension", v35, v217, v218, 2367);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v36 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = object_getClass(v9);
            if (class_isMetaClass(v37))
            {
              v38 = 43;
            }

            else
            {
              v38 = 45;
            }

            v39 = object_getClassName(v9);
            v40 = sel_getName("_dequeueHelperReaderSession:");
            *buf = 67109890;
            *&buf[4] = v38;
            *&buf[8] = 2082;
            *&buf[10] = v39;
            *&buf[18] = 2082;
            *&buf[20] = v40;
            *&buf[28] = 1024;
            *&buf[30] = 2367;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Currently under reader suspension", buf, 0x22u);
          }
        }

        else
        {
          v231 = a3;
          v9[39] = 1;
          [v9[52] suspend];
          v41 = [v12 sessionUID];
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v42 = NFLogGetLogger();
          if (v42)
          {
            v43 = v42;
            v44 = object_getClass(v9);
            v45 = class_isMetaClass(v44);
            v46 = object_getClassName(v9);
            v219 = sel_getName("_dequeueHelperReaderSession:");
            v47 = 45;
            if (v45)
            {
              v47 = 43;
            }

            v43(6, "%c[%{public}s %{public}s]:%i Suspend reader activity for %fs (session %@)", v47, v46, v219, 2374, 0x3FF8000000000000, v41);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v48 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = object_getClass(v9);
            v50 = v41;
            if (class_isMetaClass(v49))
            {
              v51 = 43;
            }

            else
            {
              v51 = 45;
            }

            v52 = object_getClassName(v9);
            v53 = sel_getName("_dequeueHelperReaderSession:");
            *buf = 67110402;
            *&buf[4] = v51;
            v41 = v50;
            *&buf[8] = 2082;
            *&buf[10] = v52;
            *&buf[18] = 2082;
            *&buf[20] = v53;
            *&buf[28] = 1024;
            *&buf[30] = 2374;
            *&buf[34] = 2048;
            *&buf[36] = 0x3FF8000000000000;
            *&buf[44] = 2112;
            *&buf[46] = v50;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Suspend reader activity for %fs (session %@)", buf, 0x36u);
          }

          v54 = dispatch_time(0, 1500000000);
          v55 = v9[30];
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1000EE050;
          *&buf[24] = &unk_100315F80;
          *&buf[40] = v41;
          *&buf[48] = "_dequeueHelperReaderSession:";
          *&buf[32] = v9;
          v56 = v41;
          dispatch_after(v54, v55, buf);

          a3 = v231;
        }
      }
    }

    v57 = v9[15];
    if (v57 == v11)
    {
      v228 = [v57 conformsToProtocol:&OBJC_PROTOCOL___NFContactlessPaymentSessionInterface];
      v64 = v9[15];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ([a1[23] count] <= 1 && (v70 = v9[3]) != 0)
      {
        if (*(v70 + 19) == 1)
        {
          v71 = 1;
        }

        else
        {
          v71 = v70[179];
        }

        sela = v71;
      }

      else
      {
        sela = 0;
      }

      v79 = sub_1000DE198(v9);
      sub_1000E2158(v9, v79);
      v80 = v11;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v81 = v9[15];
        if (v81 == v80)
        {
          v82 = [v81 hostCardEmulationLog];
          v83 = v9[25];
          v9[25] = v82;
        }
      }

      v84 = v80;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(v9 + 352) = 0;
      }

      v232 = a3;

      v85 = v84;
      v229 = [v85 sessionUID];
      objc_opt_class();
      v86 = objc_opt_isKindOfClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v87 = 1;
      }

      else
      {
        objc_opt_class();
        v87 = objc_opt_isKindOfClass();
      }

      objc_opt_class();
      v88 = objc_opt_isKindOfClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v89 = [v85 suspendOnFieldList];
        v90 = [v89 count] != 0;
      }

      else
      {
        v90 = 0;
      }

      if (((v86 | v87 | v88) & 1) != 0 || v90)
      {
        if (v9[39])
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v91 = NFLogGetLogger();
          if (v91)
          {
            v92 = v91;
            v93 = object_getClass(v9);
            v94 = class_isMetaClass(v93);
            v95 = object_getClassName(v9);
            v220 = sel_getName("_dequeueHelperSessionAffectingBackgroundTagReading:");
            v96 = 45;
            if (v94)
            {
              v96 = 43;
            }

            v92(6, "%c[%{public}s %{public}s]:%i Currently under reader suspension", v96, v95, v220, 2492);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v97 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
          {
            v98 = object_getClass(v9);
            if (class_isMetaClass(v98))
            {
              v99 = 43;
            }

            else
            {
              v99 = 45;
            }

            v100 = object_getClassName(v9);
            v101 = sel_getName("_dequeueHelperSessionAffectingBackgroundTagReading:");
            *buf = 67109890;
            *&buf[4] = v99;
            *&buf[8] = 2082;
            *&buf[10] = v100;
            *&buf[18] = 2082;
            *&buf[20] = v101;
            *&buf[28] = 1024;
            *&buf[30] = 2492;
            _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Currently under reader suspension", buf, 0x22u);
          }
        }

        else
        {
          v9[39] = 1;
          [v9[52] suspend];
          if (v90)
          {
            v113 = 1.0;
          }

          else
          {
            v113 = 4.0;
          }

          if (NFIsInternalBuild())
          {
            v114 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
            v115 = [v114 objectForKey:@"seReaderSessionToBGTagReaderDelay"];

            if (v115)
            {
              [v114 floatForKey:@"seReaderSessionToBGTagReaderDelay"];
              v113 = v116;
              if (v116 > 10.0)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v117 = NFLogGetLogger();
                if (v117)
                {
                  v118 = v117;
                  v119 = object_getClass(v9);
                  v120 = class_isMetaClass(v119);
                  v121 = object_getClassName(v9);
                  v222 = sel_getName("_dequeueHelperSessionAffectingBackgroundTagReading:");
                  v122 = 45;
                  if (v120)
                  {
                    v122 = 43;
                  }

                  v118(4, "%c[%{public}s %{public}s]:%i seReaderSessionToBGTagReaderDelay (%fs) is too large - using %fs instead", v122, v121, v222, 2506, *&v113, 0x4024000000000000);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v123 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
                {
                  v124 = object_getClass(v9);
                  if (class_isMetaClass(v124))
                  {
                    v125 = 43;
                  }

                  else
                  {
                    v125 = 45;
                  }

                  v126 = object_getClassName(v9);
                  v127 = sel_getName("_dequeueHelperSessionAffectingBackgroundTagReading:");
                  *buf = 67110402;
                  *&buf[4] = v125;
                  *&buf[8] = 2082;
                  *&buf[10] = v126;
                  *&buf[18] = 2082;
                  *&buf[20] = v127;
                  *&buf[28] = 1024;
                  *&buf[30] = 2506;
                  *&buf[34] = 2048;
                  *&buf[36] = v113;
                  *&buf[44] = 2048;
                  *&buf[46] = 0x4024000000000000;
                  _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i seReaderSessionToBGTagReaderDelay (%fs) is too large - using %fs instead", buf, 0x36u);
                }

                v113 = 10.0;
              }
            }
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v128 = NFLogGetLogger();
          if (v128)
          {
            v129 = v128;
            v130 = object_getClass(v9);
            v131 = class_isMetaClass(v130);
            v132 = object_getClassName(v9);
            v223 = sel_getName("_dequeueHelperSessionAffectingBackgroundTagReading:");
            v133 = 45;
            if (v131)
            {
              v133 = 43;
            }

            v129(6, "%c[%{public}s %{public}s]:%i Suspend reader activity for %fs (session %@)", v133, v132, v223, 2512, *&v113, v229);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v134 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
          {
            v135 = object_getClass(v9);
            if (class_isMetaClass(v135))
            {
              v136 = 43;
            }

            else
            {
              v136 = 45;
            }

            v137 = object_getClassName(v9);
            v138 = sel_getName("_dequeueHelperSessionAffectingBackgroundTagReading:");
            *buf = 67110402;
            *&buf[4] = v136;
            *&buf[8] = 2082;
            *&buf[10] = v137;
            *&buf[18] = 2082;
            *&buf[20] = v138;
            *&buf[28] = 1024;
            *&buf[30] = 2512;
            *&buf[34] = 2048;
            *&buf[36] = v113;
            *&buf[44] = 2112;
            *&buf[46] = v229;
            _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Suspend reader activity for %fs (session %@)", buf, 0x36u);
          }

          v139 = dispatch_time(0, (v113 * 1000000000.0));
          v140 = v9[30];
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1000EE1EC;
          *&buf[24] = &unk_100315F80;
          *&buf[32] = v9;
          *&buf[48] = "_dequeueHelperSessionAffectingBackgroundTagReading:";
          *&buf[40] = v229;
          dispatch_after(v139, v140, buf);
        }
      }

      v141 = v9[47];
      if (v141)
      {
        v141[177] = 0;
      }

      v142 = [NSError alloc];
      v143 = [NSString stringWithUTF8String:"nfcd"];
      v244 = NSLocalizedDescriptionKey;
      v144 = [NSString stringWithUTF8String:"Aborted"];
      v245 = v144;
      v145 = [NSDictionary dictionaryWithObjects:&v245 forKeys:&v244 count:1];
      v146 = [v142 initWithDomain:v143 code:3 userInfo:v145];
      [v85 didEndSession:v146];

      v147 = v9[15];
      v9[15] = 0;

      sub_1001EA490(v9);
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v148 = NFLogGetLogger();
      v149 = v232;
      if (v148)
      {
        v150 = v148;
        v151 = object_getClass(v9);
        v152 = class_isMetaClass(v151);
        v153 = object_getClassName(v9);
        v154 = sel_getName("_dequeueSession:startNextSession:");
        v155 = 43;
        if (!v152)
        {
          v155 = 45;
        }

        v150(6, "%c[%{public}s %{public}s]:%i startNextSession=%d,_systemWillSleep=%d,_powerCycleAfterThisSession=%d,nextIsExpress=%d", v155, v153, v154, 2579, v232, *(v9 + 351), *(v9 + 355), sela & 1);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v156 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
      {
        v157 = object_getClass(v9);
        if (class_isMetaClass(v157))
        {
          v158 = 43;
        }

        else
        {
          v158 = 45;
        }

        v159 = object_getClassName(v9);
        v160 = sel_getName("_dequeueSession:startNextSession:");
        v161 = *(v9 + 351);
        v162 = *(v9 + 355);
        *buf = 67110914;
        *&buf[4] = v158;
        *&buf[8] = 2082;
        *&buf[10] = v159;
        *&buf[18] = 2082;
        *&buf[20] = v160;
        *&buf[28] = 1024;
        *&buf[30] = 2579;
        *&buf[34] = 1024;
        *&buf[36] = v232;
        *&buf[40] = 1024;
        *&buf[42] = v161;
        *&buf[46] = 1024;
        *&buf[48] = v162;
        *&buf[52] = 1024;
        *&buf[54] = sela & 1;
        _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i startNextSession=%d,_systemWillSleep=%d,_powerCycleAfterThisSession=%d,nextIsExpress=%d", buf, 0x3Au);
      }

      if ([a1[23] count])
      {
        if (v232)
        {
          v163 = [a1[23] objectAtIndex:0];
          v164 = [v163 conformsToProtocol:&OBJC_PROTOCOL___NFContactlessPaymentSessionInterface];
        }

        else
        {
          v164 = 0;
        }

        v166 = 1;
      }

      else
      {
        v165 = v9[3];
        if (v165)
        {
          if (v165[19] == 1)
          {
            v166 = 1;
            v164 = 1;
          }

          else
          {
            v166 = *(v165 + 179);
            v164 = v166;
          }
        }

        else
        {
          v166 = 0;
          v164 = 0;
        }
      }

      v167 = *(v9 + 355);
      v168 = [v9[49] siliconName] < 7;
      if ([v9[49] siliconName] <= 0xD && ((v167 & v166 | v168 & (v228 & v164 ^ 1)) & 1) != 0)
      {
        *(v9 + 355) = 0;
        v169 = +[NSUserDefaults standardUserDefaults];
        v170 = [v169 BOOLForKey:@"DontPowerCycle"];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v171 = NFLogGetLogger();
        v172 = v171;
        if (v170)
        {
          if (v171)
          {
            v173 = object_getClass(v9);
            v174 = class_isMetaClass(v173);
            v175 = object_getClassName(v9);
            v224 = sel_getName("_dequeueHelperPowerCycle:startNextSession:");
            v176 = 45;
            if (v174)
            {
              v176 = 43;
            }

            v172(4, "%c[%{public}s %{public}s]:%i Defaults override of power cycling SE", v176, v175, v224, 2436);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v177 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
          {
            v178 = object_getClass(v9);
            if (class_isMetaClass(v178))
            {
              v179 = 43;
            }

            else
            {
              v179 = 45;
            }

            v180 = object_getClassName(v9);
            v181 = sel_getName("_dequeueHelperPowerCycle:startNextSession:");
            *buf = 67109890;
            *&buf[4] = v179;
            *&buf[8] = 2082;
            *&buf[10] = v180;
            *&buf[18] = 2082;
            *&buf[20] = v181;
            *&buf[28] = 1024;
            *&buf[30] = 2436;
            _os_log_impl(&_mh_execute_header, v177, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Defaults override of power cycling SE", buf, 0x22u);
          }
        }

        else
        {
          if (v171)
          {
            v182 = object_getClass(v9);
            v183 = class_isMetaClass(v182);
            v184 = object_getClassName(v9);
            v225 = sel_getName("_dequeueHelperPowerCycle:startNextSession:");
            v185 = 45;
            if (v183)
            {
              v185 = 43;
            }

            v172(6, "%c[%{public}s %{public}s]:%i Restarting eSE", v185, v184, v225, 2438);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v186 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
          {
            v187 = object_getClass(v9);
            if (class_isMetaClass(v187))
            {
              v188 = 43;
            }

            else
            {
              v188 = 45;
            }

            v189 = object_getClassName(v9);
            v190 = sel_getName("_dequeueHelperPowerCycle:startNextSession:");
            *buf = 67109890;
            *&buf[4] = v188;
            *&buf[8] = 2082;
            *&buf[10] = v189;
            *&buf[18] = 2082;
            *&buf[20] = v190;
            *&buf[28] = 1024;
            *&buf[30] = 2438;
            _os_log_impl(&_mh_execute_header, v186, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restarting eSE", buf, 0x22u);
          }

          v191 = [v9 powerCycleSE:v9[48]];
        }

        v149 = v232;
      }

      sub_10003AE30(v9[3], 0);
      if (sela)
      {
        sub_10002E9BC(v9[3]);
      }

      else if ((isKindOfClass & 1) == 0)
      {
        sub_100035ABC(v9[3]);
      }

      v192 = [v85 parentToken];

      if (v192)
      {
        v149 |= sub_1001DF43C(v9, v85) ^ 1;
      }

      if (*(v9 + 363) == 1)
      {
        sub_10021CC94(v9[47], @"Session");
        [v9 maybeStartNextSession];
      }

      else
      {
        if (v149 && (*(v9 + 351) & 1) == 0)
        {
          [v9 maybeStartNextSession];
        }

        else
        {
          sub_10000453C(v9);
        }

        v193 = sub_100003068(v9);
        v194 = sub_100093D80(v9, v193);
        if ((v149 & 1) == 0)
        {
          sub_1000ED28C(v9, 0);
        }

        sub_10021CC94(v9[47], @"Session");
      }

      if (*(v9 + 351) == 1)
      {
        v195 = v9[3];
        if (!v195 || (v195[181] & 1) == 0)
        {
          v196 = NFSharedSignpostLog();
          if (os_signpost_enabled(v196))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v196, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_dequeueSession: allowing to sleep", &unk_1002E8B7A, buf, 2u);
          }

          [v9[8] allowSleep];
        }
      }
    }

    else
    {
      if ([a1[23] containsObject:v11])
      {
        [a1[23] removeObject:v11];
        v58 = [NSError alloc];
        v59 = [NSString stringWithUTF8String:"nfcd"];
        v241 = NSLocalizedDescriptionKey;
        v60 = [NSString stringWithUTF8String:"Aborted"];
        v242 = v60;
        v61 = 1;
        v62 = [NSDictionary dictionaryWithObjects:&v242 forKeys:&v241 count:1];
        v63 = [v58 initWithDomain:v59 code:3 userInfo:v62];
        [v11 didEndSession:v63];

LABEL_189:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v198 = [v11 connection];
          if (v198)
          {
            v199 = v61;
          }

          else
          {
            v199 = 0;
          }

          if (v199 == 1)
          {
            v200 = objc_getProperty(v9, v197, 176, 1);
            objc_sync_enter(v200);
            v201 = [v198 NF_userInfo];
            v202 = [v201 objectForKeyedSubscript:@"CurrentSessionCount"];

            v203 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v202 unsignedLongLongValue] - 1);

            v204 = [v198 NF_userInfo];
            [v204 setObject:v203 forKeyedSubscript:@"CurrentSessionCount"];

            objc_sync_exit(v200);
          }
        }

        else
        {
          v198 = 0;
        }

        sub_1000EC998(v11, v198);
        v5 = v236;
        if (!v9[15] && ![a1[23] count])
        {
          sub_1000DE998(v9, 0);
        }

        sub_100008AA4(v9);
        v205 = v9[52];
        [v205 releaseECPOption:{objc_msgSend(v11, "backgroundTagReadEcpOption")}];

        if ([v11 backgroundTagReadEcpOption] == 1 && !v9[15] && objc_msgSend(v9[52], "isActive"))
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v206 = NFLogGetLogger();
          if (v206)
          {
            v207 = v206;
            v208 = object_getClass(v9);
            v209 = class_isMetaClass(v208);
            v210 = object_getClassName(v9);
            v226 = sel_getName("_dequeueSession:startNextSession:");
            v211 = 45;
            if (v209)
            {
              v211 = 43;
            }

            v207(6, "%c[%{public}s %{public}s]:%i Refresh background tag reading to update VAS", v211, v210, v226, 2676);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v212 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
          {
            v213 = object_getClass(v9);
            if (class_isMetaClass(v213))
            {
              v214 = 43;
            }

            else
            {
              v214 = 45;
            }

            v215 = object_getClassName(v9);
            v216 = sel_getName("_dequeueSession:startNextSession:");
            *buf = 67109890;
            *&buf[4] = v214;
            *&buf[8] = 2082;
            *&buf[10] = v215;
            *&buf[18] = 2082;
            *&buf[20] = v216;
            *&buf[28] = 1024;
            *&buf[30] = 2676;
            _os_log_impl(&_mh_execute_header, v212, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Refresh background tag reading to update VAS", buf, 0x22u);
          }

          [v9 maybeStartNextSession];
        }

LABEL_213:
        objc_sync_exit(v8);

        goto LABEL_214;
      }

      if ([v9[24] containsObject:v11])
      {
        sub_1001DF8E8(v9, v11);
        [v9[24] removeObject:v11];
        v65 = [NSError alloc];
        v66 = [NSString stringWithUTF8String:"nfcd"];
        v239 = NSLocalizedDescriptionKey;
        v67 = [NSString stringWithUTF8String:"Aborted"];
        v240 = v67;
        v61 = 1;
        v68 = [NSDictionary dictionaryWithObjects:&v240 forKeys:&v239 count:1];
        v69 = [v65 initWithDomain:v66 code:3 userInfo:v68];
        [v11 didEndSession:v69];

        goto LABEL_189;
      }

      if (![v11 isFeatureSupported:4])
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v102 = NFLogGetLogger();
        if (v102)
        {
          v103 = v102;
          v104 = object_getClass(v9);
          v105 = class_isMetaClass(v104);
          v106 = object_getClassName(v9);
          v221 = sel_getName("_dequeueSession:startNextSession:");
          v107 = 45;
          if (v105)
          {
            v107 = 43;
          }

          v103(4, "%c[%{public}s %{public}s]:%i Session is not active or queued", v107, v106, v221, 2649);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v108 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
        {
          v109 = object_getClass(v9);
          if (class_isMetaClass(v109))
          {
            v110 = 43;
          }

          else
          {
            v110 = 45;
          }

          v111 = object_getClassName(v9);
          v112 = sel_getName("_dequeueSession:startNextSession:");
          *buf = 67109890;
          *&buf[4] = v110;
          *&buf[8] = 2082;
          *&buf[10] = v111;
          *&buf[18] = 2082;
          *&buf[20] = v112;
          *&buf[28] = 1024;
          *&buf[30] = 2649;
          _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session is not active or queued", buf, 0x22u);
        }

        v61 = 0;
        goto LABEL_189;
      }

      v72 = [NSError alloc];
      v73 = [NSString stringWithUTF8String:"nfcd"];
      v237 = NSLocalizedDescriptionKey;
      v74 = [NSString stringWithUTF8String:"Aborted"];
      v238 = v74;
      v75 = [NSDictionary dictionaryWithObjects:&v238 forKeys:&v237 count:1];
      v76 = [v72 initWithDomain:v73 code:3 userInfo:v75];
      [v11 didEndSession:v76];

      v77 = v11;
      v78 = [v9[2] containsFieldDetectSession:v77];
      [v9[2] removeFieldDetectSession:v77];
      if (!v9[15] && v78)
      {
        [v9 maybeStartNextSession];
      }
    }

    v61 = 1;
    goto LABEL_189;
  }

LABEL_214:
}