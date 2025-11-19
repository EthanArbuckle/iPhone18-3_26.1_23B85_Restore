void sub_100210BC0(void *a1)
{
  if (a1)
  {
    v2 = +[NSDate now];
    [v2 timeIntervalSinceDate:a1[4]];
    v4 = v3;

    v5 = sub_1002106B0(a1) - v4;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("nextRetryTime");
      v16 = sub_1002106B0(a1);
      v12 = 43;
      if (!isMetaClass)
      {
        v12 = 45;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Next retry : interval = %f, next backoff = %f -> nextRetry = %f", v12, ClassName, Name, 349, *&v4, *&v16, *&v5);
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
      v18 = v15;
      v19 = 2082;
      v20 = object_getClassName(a1);
      v21 = 2082;
      v22 = sel_getName("nextRetryTime");
      v23 = 1024;
      v24 = 349;
      v25 = 2048;
      v26 = v4;
      v27 = 2048;
      v28 = sub_1002106B0(a1);
      v29 = 2048;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Next retry : interval = %f, next backoff = %f -> nextRetry = %f", buf, 0x40u);
    }
  }
}

BOOL sub_100210DD8(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1[6];
  if (v3 != 2 && v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("initializeRecoveryNeeded:");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i Not overriding state from external caller.", v10, ClassName, Name, 375);
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
      v17 = v13;
      v18 = 2082;
      v19 = object_getClassName(a1);
      v20 = 2082;
      v21 = sel_getName("initializeRecoveryNeeded:");
      v22 = 1024;
      v23 = 375;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Not overriding state from external caller.", buf, 0x22u);
    }

    return a1[6] != 2;
  }

  else
  {
    v4 = 1;
    if (!a2)
    {
      v4 = 2;
    }

    a1[6] = v4;
  }

  return a2;
}

id sub_100210FEC()
{
  objc_opt_self();
  if (qword_10035DAE0 != -1)
  {
    dispatch_once(&qword_10035DAE0, &stru_10031BF68);
  }

  v0 = qword_10035DAD8;

  return v0;
}

void sub_100211044(id a1)
{
  v1 = objc_alloc_init(_NFFailForwardCoordinator);
  v2 = qword_10035DAD8;
  qword_10035DAD8 = v1;

  _objc_release_x1(v1, v2);
}

_DWORD *sub_10021122C(uint64_t a1)
{
  v2 = sub_100211480(*(a1 + 32));
  v20 = 0;
  v3 = [NSPropertyListSerialization dataWithPropertyList:v2 format:200 options:0 error:&v20];
  v4 = v20;

  if (v4)
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
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v6(3, "%c[%{public}s %{public}s]:%i Failed to serialize state dump: %{public}@", v9, ClassName, Name, 449, v4);
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
      v14 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v22 = v12;
      v23 = 2082;
      v24 = v13;
      v25 = 2082;
      v26 = v14;
      v27 = 1024;
      v28 = 449;
      v29 = 2114;
      v30 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to serialize state dump: %{public}@", buf, 0x2Cu);
    }
  }

  v15 = [v3 length];
  v16 = malloc_type_calloc(1uLL, v15 + 200, 0x1000040BEF03554uLL);
  *v16 = 1;
  v16[1] = v15;
  __strlcpy_chk();
  memcpy(v16 + 50, [v3 bytes], v15);

  return v16;
}

id sub_100211480(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = v1;
    objc_sync_enter(v3);
    v4 = [NSNumber numberWithBool:v3[104]];
    [v2 setObject:v4 forKeyedSubscript:@"Disabled"];

    WeakRetained = objc_loadWeakRetained(v3 + 1);
    if (WeakRetained)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    [v2 setObject:v6 forKeyedSubscript:@"Primary delegate"];

    v7 = *(v3 + 3);
    if (v7 > 2)
    {
      v8 = @"???? ERROR !!!!";
    }

    else
    {
      v8 = *(&off_10031C000 + v7);
    }

    [v2 setObject:v8 forKeyedSubscript:@"Primary delegate State"];
    v9 = objc_loadWeakRetained(v3 + 4);
    if (v9)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    [v2 setObject:v10 forKeyedSubscript:@"Secondary delegate"];

    v11 = *(v3 + 6);
    if (v11 > 2)
    {
      v12 = @"???? ERROR !!!!";
    }

    else
    {
      v12 = *(&off_10031C000 + v11);
    }

    [v2 setObject:v12 forKeyedSubscript:@"Secondary delegate State"];
    v13 = *(v3 + 11);
    if (v13)
    {
      v15 = sub_10020FD54(v13);
      v16 = *(v3 + 11);
      if (v16)
      {
        Property = objc_getProperty(v16, v14, 16, 1);
      }

      else
      {
        Property = 0;
      }

      [v2 setObject:v15 forKeyedSubscript:Property];
    }

    v18 = *(v3 + 12);
    if (v18)
    {
      v20 = sub_10020FD54(v18);
      v21 = *(v3 + 12);
      if (v21)
      {
        v22 = objc_getProperty(v21, v19, 16, 1);
      }

      else
      {
        v22 = 0;
      }

      [v2 setObject:v20 forKeyedSubscript:v22];
    }

    objc_sync_exit(v3);

    v1 = [[NSDictionary alloc] initWithDictionary:v2];
  }

  return v1;
}

id sub_100211684(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  return [v2 canResume:1 status:v3];
}

id sub_1002116AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  return [v2 canResume:2 status:v3];
}

void sub_1002116D4(uint64_t a1)
{
  v1 = *(a1 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100212E38;
  block[3] = &unk_100315F30;
  block[4] = a1;
  dispatch_async(v1, block);
}

uint64_t sub_100211748(void *a1)
{
  v1 = a1;
  objc_sync_enter(v1);
  v2 = v1[11];
  if (v2)
  {
    v3 = *(v2 + 48) == 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = v1[12];
  if (v4)
  {
    v5 = *(v4 + 48) == 1;
  }

  else
  {
    v5 = 0;
  }

  if ((NFIsProductType() & 1) != 0 || (NFIsProductType() & 1) != 0 || (NFIsProductType() & 1) != 0 || (NFIsProductType() & 1) != 0 || (NFIsProductType() & 1) != 0 || (NFIsProductType() & 1) != 0 || (NFIsProductType() & 1) != 0 || (NFIsProductType() & 1) != 0 || (NFIsProductType() & 1) != 0 || (NFIsProductType() & 1) != 0 || (NFIsProductType() & 1) != 0 || NFIsProductType())
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(v1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v1);
      Name = sel_getName("_retrieveWhichControllerMustStop");
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Dependency detected, primaryMustStop=%d, secondaryMustStop=%d", v11, ClassName, Name, 752, v3, v5);
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

      *buf = 67110402;
      v18 = v14;
      v19 = 2082;
      v20 = object_getClassName(v1);
      v21 = 2082;
      v22 = sel_getName("_retrieveWhichControllerMustStop");
      v23 = 1024;
      v24 = 752;
      v25 = 1024;
      v26 = v3;
      v27 = 1024;
      v28 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Dependency detected, primaryMustStop=%d, secondaryMustStop=%d", buf, 0x2Eu);
    }

    LOBYTE(v5) = v3 || v5;
    LOBYTE(v3) = v5;
  }

  if (!v3 && !v5)
  {
    __assert_rtn("[_NFFailForwardCoordinator _retrieveWhichControllerMustStop]", "_NFFailForwardCoordinator.m", 760, "primaryMustStop || secondaryMustStop");
  }

  objc_sync_exit(v1);

  if (v5)
  {
    return v3 | 2;
  }

  else
  {
    return v3;
  }
}

void sub_100211A08(void *a1, double a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    v4 = v3[9];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v6 = Logger;
    if (v4)
    {
      if (Logger)
      {
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName("_rescheduleRecoveryForLater:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v6(6, "%c[%{public}s %{public}s]:%i retry timer already running.", v10, ClassName, Name, 700);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = object_getClass(v3);
        if (class_isMetaClass(v12))
        {
          v13 = 43;
        }

        else
        {
          v13 = 45;
        }

        *buf = 67109890;
        v27 = v13;
        v28 = 2082;
        v29 = object_getClassName(v3);
        v30 = 2082;
        v31 = sel_getName("_rescheduleRecoveryForLater:");
        v32 = 1024;
        v33 = 700;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i retry timer already running.", buf, 0x22u);
      }
    }

    else
    {
      if (Logger)
      {
        v14 = object_getClass(v3);
        v15 = class_isMetaClass(v14);
        v16 = object_getClassName(v3);
        v24 = sel_getName("_rescheduleRecoveryForLater:");
        v17 = 45;
        if (v15)
        {
          v17 = 43;
        }

        v6(6, "%c[%{public}s %{public}s]:%i retryTime=%f", v17, v16, v24, 681, *&a2);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = object_getClass(v3);
        if (class_isMetaClass(v19))
        {
          v20 = 43;
        }

        else
        {
          v20 = 45;
        }

        *buf = 67110146;
        v27 = v20;
        v28 = 2082;
        v29 = object_getClassName(v3);
        v30 = 2082;
        v31 = sel_getName("_rescheduleRecoveryForLater:");
        v32 = 1024;
        v33 = 681;
        v34 = 2048;
        v35 = a2;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i retryTime=%f", buf, 0x2Cu);
      }

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100211D44;
      v25[3] = &unk_100315F58;
      v25[4] = v3;
      v25[5] = "_rescheduleRecoveryForLater:";
      v21 = [[NFTimer alloc] initSleepTimerWithCallback:v25 queue:v3[7]];
      v22 = v3[9];
      v3[9] = v21;

      [v3[9] startTimer:a2];
    }

    objc_sync_exit(v3);
  }
}

void sub_100211D44(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.hw.recoveryTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v2, state);
  os_activity_scope_leave(state);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v4(6, "%c[%{public}s %{public}s]:%i Timer expired, retrying now.", v8, ClassName, Name, 685);
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
    *state = 67109890;
    *&state[4] = v11;
    *&state[8] = 2082;
    *&state[10] = v12;
    v20 = 2082;
    v21 = v13;
    v22 = 1024;
    v23 = 685;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Timer expired, retrying now.", state, 0x22u);
  }

  v14 = sub_100211F44(*(a1 + 32));
  v15 = *(a1 + 32);
  if (v14)
  {
    sub_100211FA4(v15);
  }

  else
  {
    v16 = sub_100212010(v15);
    v17 = *(a1 + 32);
    if (v16)
    {
      sub_100211FA4(v17);
      sub_10021230C(*(a1 + 32));
    }

    else
    {
      [v17[9] startTimer:30.0];
    }
  }
}

BOOL sub_100211F44(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  if (v1[3])
  {
    v2 = 1;
  }

  else
  {
    v2 = v1[6] != 0;
  }

  objc_sync_exit(v1);

  return v2;
}

void sub_100211FA4(void *a1)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    v1 = obj[9];
    if (v1)
    {
      [v1 stopTimer];
      v2 = obj[9];
      obj[9] = 0;
    }

    objc_sync_exit(obj);
  }
}

uint64_t sub_100212010(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100211748(a1);
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 1;
    WeakRetained = objc_loadWeakRetained(v1 + 1);
    v4 = WeakRetained;
    if ((v2 & 1) != 0 && WeakRetained)
    {
      v5 = *(v1 + 2);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100212DA8;
      block[3] = &unk_1003161D8;
      v30 = &v31;
      v29 = WeakRetained;
      dispatch_async_and_wait(v5, block);
    }

    v6 = objc_loadWeakRetained(v1 + 4);
    v7 = v6;
    if (v2 >= 2 && v6)
    {
      v8 = *(v1 + 5);
      v22 = _NSConcreteStackBlock;
      v23 = 3221225472;
      v24 = sub_100212DE4;
      v25 = &unk_1003161D8;
      v27 = &v31;
      v26 = v6;
      dispatch_async_and_wait(v8, &v22);
    }

    if (v32[3])
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v10 = Logger;
        Class = object_getClass(v1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v1);
        Name = sel_getName("_delegatesCanStop");
        v14 = 45;
        if (isMetaClass)
        {
          v14 = 43;
        }

        v10(6, "%c[%{public}s %{public}s]:%i Can't stop right now.", v14, ClassName, Name, 852, v22, v23, v24, v25);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = object_getClass(v1);
        if (class_isMetaClass(v16))
        {
          v17 = 43;
        }

        else
        {
          v17 = 45;
        }

        v18 = object_getClassName(v1);
        v19 = sel_getName("_delegatesCanStop");
        *buf = 67109890;
        v36 = v17;
        v37 = 2082;
        v38 = v18;
        v39 = 2082;
        v40 = v19;
        v41 = 1024;
        v42 = 852;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Can't stop right now.", buf, 0x22u);
      }

      LOBYTE(v1) = *(v32 + 24);
    }

    _Block_object_dispose(&v31, 8);
  }

  return v1 & 1;
}

void sub_10021230C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = sub_100211748(v1);
    v3 = -1.0;
    if (v2)
    {
      v5 = *(v1 + 11);
      if (v5 && v5[5] > v5[8])
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v7 = Logger;
          Class = object_getClass(v1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(v1);
          Name = sel_getName("_isRestoreAllowedForController:withDelay:");
          v11 = 45;
          if (isMetaClass)
          {
            v11 = 43;
          }

          v7(6, "%c[%{public}s %{public}s]:%i Primary retry count exceeded", v11, ClassName, Name, 788);
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
          v99 = v14;
          v100 = 2082;
          v101 = object_getClassName(v1);
          v102 = 2082;
          v103 = sel_getName("_isRestoreAllowedForController:withDelay:");
          v104 = 1024;
          v105 = 788;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Primary retry count exceeded", buf, 0x22u);
        }

        v4 = 0;
      }

      else
      {
        if (sub_100210894(v5))
        {
          v4 = 0;
          v15 = 1;
          goto LABEL_30;
        }

        sub_100210BC0(*(v1 + 11));
        v3 = v16;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v17 = NFLogGetLogger();
        if (v17)
        {
          v18 = v17;
          v19 = object_getClass(v1);
          v20 = class_isMetaClass(v19);
          v21 = object_getClassName(v1);
          v89 = sel_getName("_isRestoreAllowedForController:withDelay:");
          v22 = 45;
          if (v20)
          {
            v22 = 43;
          }

          v18(6, "%c[%{public}s %{public}s]:%i Primary retry delayed for %f", v22, v21, v89, 791, *&v3);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v12 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
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

          *buf = 67110146;
          v99 = v24;
          v100 = 2082;
          v101 = object_getClassName(v1);
          v102 = 2082;
          v103 = sel_getName("_isRestoreAllowedForController:withDelay:");
          v104 = 1024;
          v105 = 791;
          v106 = 2048;
          v107 = v3;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Primary retry delayed for %f", buf, 0x2Cu);
        }

        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }

    v15 = 0;
LABEL_30:
    if (v2 >= 2)
    {
      v25 = *(v1 + 11);
      if (v25)
      {
        v26 = *(v25 + 48) == 1;
      }

      else
      {
        v26 = 0;
      }

      v27 = *(v1 + 12);
      if (!v27 || v27[5] <= v27[8])
      {
        if (!sub_100210894(v27))
        {
          sub_100210BC0(*(v1 + 12));
          v51 = v50;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v52 = NFLogGetLogger();
          if (v52)
          {
            v53 = v52;
            v54 = object_getClass(v1);
            v55 = class_isMetaClass(v54);
            v56 = object_getClassName(v1);
            v92 = sel_getName("_isRestoreAllowedForController:withDelay:");
            v57 = 45;
            if (v55)
            {
              v57 = 43;
            }

            v53(6, "%c[%{public}s %{public}s]:%i Secondary retry delayed for %f", v57, v56, v92, 814, *&v51);
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
            v62 = sel_getName("_isRestoreAllowedForController:withDelay:");
            *buf = 67110146;
            v99 = v60;
            v100 = 2082;
            v101 = v61;
            v102 = 2082;
            v103 = v62;
            v104 = 1024;
            v105 = 814;
            v106 = 2048;
            v107 = v51;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Secondary retry delayed for %f", buf, 0x2Cu);
          }

          if ((v4 & (v3 < v51)) == 0)
          {
            v3 = v51;
          }

          if ((v15 & v26 & 1) == 0)
          {
LABEL_32:
            if (v3 >= 0.0)
            {
              sub_100211A08(v1, v3);
LABEL_102:
              objc_sync_exit(v1);

              return;
            }

LABEL_49:
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v39 = NFLogGetLogger();
            if (v39)
            {
              v40 = v39;
              v41 = object_getClass(v1);
              v42 = class_isMetaClass(v41);
              v43 = object_getClassName(v1);
              v91 = sel_getName("_triggerMustStopDelegates");
              v44 = 45;
              if (v42)
              {
                v44 = 43;
              }

              v40(6, "%c[%{public}s %{public}s]:%i Retries exceeded, not rescheduling..", v44, v43, v91, 878);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v45 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = object_getClass(v1);
              if (class_isMetaClass(v46))
              {
                v47 = 43;
              }

              else
              {
                v47 = 45;
              }

              v48 = object_getClassName(v1);
              v49 = sel_getName("_triggerMustStopDelegates");
              *buf = 67109890;
              v99 = v47;
              v100 = 2082;
              v101 = v48;
              v102 = 2082;
              v103 = v49;
              v104 = 1024;
              v105 = 878;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Retries exceeded, not rescheduling..", buf, 0x22u);
            }

            goto LABEL_102;
          }
        }

LABEL_72:
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v63 = NFLogGetLogger();
        if (v63)
        {
          v64 = v63;
          v65 = object_getClass(v1);
          v66 = class_isMetaClass(v65);
          v67 = object_getClassName(v1);
          v68 = sel_getName("_triggerMustStopDelegates");
          if (v2)
          {
            v69 = @"YES";
          }

          else
          {
            v69 = @"NO";
          }

          if (v2 <= 1)
          {
            v70 = @"NO";
          }

          else
          {
            v70 = @"YES";
          }

          v93 = v69;
          v71 = 45;
          if (v66)
          {
            v71 = 43;
          }

          v64(6, "%c[%{public}s %{public}s]:%i primary must stop=%@, secondary must stop=%@", v71, v67, v68, 884, v93, v70);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v72 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          v73 = object_getClass(v1);
          if (class_isMetaClass(v73))
          {
            v74 = 43;
          }

          else
          {
            v74 = 45;
          }

          v75 = object_getClassName(v1);
          v76 = sel_getName("_triggerMustStopDelegates");
          *buf = 67110402;
          if (v2)
          {
            v77 = @"YES";
          }

          else
          {
            v77 = @"NO";
          }

          v99 = v74;
          if (v2 <= 1)
          {
            v78 = @"NO";
          }

          else
          {
            v78 = @"YES";
          }

          v100 = 2082;
          v101 = v75;
          v102 = 2082;
          v103 = v76;
          v104 = 1024;
          v105 = 884;
          v106 = 2112;
          v107 = *&v77;
          v108 = 2112;
          v109 = v78;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i primary must stop=%@, secondary must stop=%@", buf, 0x36u);
        }

        v79 = *(v1 + 10);
        if (!v79)
        {
          v80 = [[NFTimer alloc] initWithCallback:&stru_10031BFB0 queue:*(v1 + 7)];
          v81 = *(v1 + 10);
          *(v1 + 10) = v80;

          v79 = *(v1 + 10);
        }

        [v79 startTimer:120.0];
        WeakRetained = objc_loadWeakRetained(v1 + 1);
        v83 = WeakRetained;
        if ((v2 & 1) != 0 && WeakRetained)
        {
          *(v1 + 3) = 1;
          v84 = *(v1 + 2);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100212E20;
          block[3] = &unk_100315F30;
          v97 = WeakRetained;
          dispatch_async(v84, block);
        }

        v85 = objc_loadWeakRetained(v1 + 4);
        v86 = v85;
        if (v2 >= 2 && v85)
        {
          *(v1 + 6) = 1;
          v87 = *(v1 + 5);
          v94[0] = _NSConcreteStackBlock;
          v94[1] = 3221225472;
          v94[2] = sub_100212E2C;
          v94[3] = &unk_100315F30;
          v95 = v85;
          dispatch_async(v87, v94);
        }

        goto LABEL_102;
      }

      if (!v26)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v28 = NFLogGetLogger();
        if (v28)
        {
          v29 = v28;
          v30 = object_getClass(v1);
          v31 = class_isMetaClass(v30);
          v32 = object_getClassName(v1);
          v90 = sel_getName("_isRestoreAllowedForController:withDelay:");
          v33 = 45;
          if (v31)
          {
            v33 = 43;
          }

          v29(6, "%c[%{public}s %{public}s]:%i Secondary retry count exceeded", v33, v32, v90, 807);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v34 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = object_getClass(v1);
          if (class_isMetaClass(v35))
          {
            v36 = 43;
          }

          else
          {
            v36 = 45;
          }

          v37 = object_getClassName(v1);
          v38 = sel_getName("_isRestoreAllowedForController:withDelay:");
          *buf = 67109890;
          v99 = v36;
          v100 = 2082;
          v101 = v37;
          v102 = 2082;
          v103 = v38;
          v104 = 1024;
          v105 = 807;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Secondary retry count exceeded", buf, 0x22u);
        }

        goto LABEL_49;
      }
    }

    if ((v15 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_72;
  }
}

void sub_100212CE4(id a1)
{
  v1 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.hw.recoveryTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v2.opaque[0] = 0;
  v2.opaque[1] = 0;
  os_activity_scope_enter(v1, &v2);
  os_activity_scope_leave(&v2);

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v2.opaque[0]) = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Watchdog timer fired, a client has not replied to mustStop call!", &v2, 2u);
  }

  sub_100199CC4(NFBugCapture, @"Watchdog", @"Delegate failed to reply to stop request", 0);
}

id sub_100212DA8(uint64_t a1)
{
  result = [*(a1 + 32) canStop];
  *(*(*(a1 + 40) + 8) + 24) &= result;
  return result;
}

id sub_100212DE4(uint64_t a1)
{
  result = [*(a1 + 32) canStop];
  *(*(*(a1 + 40) + 8) + 24) &= result;
  return result;
}

void sub_100212E38(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
    objc_sync_enter(v3);
    v4 = v3[9];
    objc_sync_exit(v3);

    if (v4)
    {
      return;
    }

    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  if (!sub_100211F44(v5))
  {
    v6 = sub_100212010(*(a1 + 32));
    v7 = *(a1 + 32);
    if (v6)
    {
      sub_100211FA4(v7);
      v8 = *(a1 + 32);

      sub_10021230C(v8);
    }

    else
    {

      sub_100211A08(v7, 30.0);
    }
  }
}

void sub_100212EFC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v108 = a4;
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("registerDelegate:forController:queue:");
      v14 = sub_100213A20(a3);
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v9(6, "%c[%{public}s %{public}s]:%i %@", v15, ClassName, Name, 953, v14);
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

      v19 = object_getClassName(a1);
      v20 = sel_getName("registerDelegate:forController:queue:");
      v21 = sub_100213A20(a3);
      *buf = 67110146;
      *&buf[4] = v18;
      *v110 = 2082;
      *&v110[2] = v19;
      v111 = 2082;
      v112 = v20;
      v113 = 1024;
      v114 = 953;
      v115 = 2112;
      v116 = v21;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
    }

    v22 = a1;
    objc_sync_enter(v22);
    if (a3 == 1)
    {
      v23 = 88;
      v24 = 16;
      v25 = 8;
      v26 = @"restore.primary";
    }

    else
    {
      if (a3 != 2)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v95 = NFLogGetLogger();
        if (v95)
        {
          v96 = v95;
          v97 = object_getClass(v22);
          v98 = class_isMetaClass(v97);
          v99 = object_getClassName(v22);
          v107 = sel_getName("registerDelegate:forController:queue:");
          v100 = 45;
          if (v98)
          {
            v100 = 43;
          }

          v96(3, "%c[%{public}s %{public}s]:%i Invalid controller.", v100, v99, v107, 968);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v101 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          v102 = object_getClass(v22);
          if (class_isMetaClass(v102))
          {
            v103 = 43;
          }

          else
          {
            v103 = 45;
          }

          v104 = object_getClassName(v22);
          v105 = sel_getName("registerDelegate:forController:queue:");
          *buf = 67109890;
          *&buf[4] = v103;
          *v110 = 2082;
          *&v110[2] = v104;
          v111 = 2082;
          v112 = v105;
          v113 = 1024;
          v114 = 968;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid controller.", buf, 0x22u);
        }

        __assert_rtn("[_NFFailForwardCoordinator registerDelegate:forController:queue:]", "_NFFailForwardCoordinator.m", 969, "(controller == kRecoveryCoordinatorControllerPrimary) || (controller == kRecoveryCoordinatorControllerSecondary)");
      }

      v23 = 96;
      v24 = 40;
      v25 = 32;
      v26 = @"restore.secondary";
    }

    objc_storeWeak(&v22[v25], v7);
    objc_storeStrong(&v22[v24], a4);
    v27 = [_NFRecoveryState alloc];
    v28 = v26;
    if (v27)
    {
      *buf = v27;
      *v110 = _NFRecoveryState;
      v29 = [(uint8_t *)buf init];
      v27 = v29;
      if (v29)
      {
        objc_storeStrong(v29 + 2, v26);
        v30 = [NSDate dateWithTimeIntervalSince1970:0.0];
        lastAttempt = v27->_lastAttempt;
        v27->_lastAttempt = v30;

        v27->_recoveryInProgress = 0;
        v27->_retryCount = 0;
        v27->_state = 0;
        recoveredBuild = v27->_recoveredBuild;
        v27->_recoveredBuild = 0;

        *&v27->_internalBuildCustomRetries = xmmword_100297BB0;
      }
    }

    v33 = *&v22[v23];
    *&v22[v23] = v27;

    v34 = *&v22[v23];
    if (v34)
    {
      v35 = +[NSUserDefaults standardUserDefaults];
      v36 = [v35 objectForKey:*(v34 + 16)];
      if (v36)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v37 = [v36 objectForKey:@"RecoveryNeeded"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(v34 + 48) = [v37 BOOLValue];
          }

          v38 = [v36 objectForKey:@"RecoveryAttempts"];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(v34 + 40) = [v38 integerValue];
          }

          v39 = [v36 objectForKey:@"RecoveryInProgress"];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(v34 + 8) = [v39 BOOLValue];
          }

          v40 = [v36 objectForKey:@"RecoveredBuild"];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong((v34 + 24), v40);
          }

          if (NFIsInternalBuild())
          {
            v41 = [v36 objectForKey:@"internalRetryDelay"];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *(v34 + 56) = [v41 integerValue];
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v42 = NFLogGetLogger();
              if (v42)
              {
                v43 = v42;
                v44 = object_getClass(v34);
                v45 = class_isMetaClass(v44);
                v46 = object_getClassName(v34);
                v47 = sel_getName("loadStateFromDisk");
                v48 = 45;
                if (v45)
                {
                  v48 = 43;
                }

                v43(4, "%c[%{public}s %{public}s]:%i Overwritting retry delay to %lld", v48, v46, v47, 229, *(v34 + 56));
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v49 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                v50 = object_getClass(v34);
                if (class_isMetaClass(v50))
                {
                  v51 = 43;
                }

                else
                {
                  v51 = 45;
                }

                v52 = object_getClassName(v34);
                v53 = sel_getName("loadStateFromDisk");
                v54 = *(v34 + 56);
                *buf = 67110146;
                *&buf[4] = v51;
                *v110 = 2082;
                *&v110[2] = v52;
                v111 = 2082;
                v112 = v53;
                v113 = 1024;
                v114 = 229;
                v115 = 2048;
                v116 = v54;
                _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Overwritting retry delay to %lld", buf, 0x2Cu);
              }
            }

            v40 = [v36 objectForKey:@"internalMaxRetries"];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *(v34 + 64) = [v40 integerValue];
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v55 = NFLogGetLogger();
              if (v55)
              {
                v56 = v55;
                v57 = object_getClass(v34);
                v58 = class_isMetaClass(v57);
                v59 = object_getClassName(v34);
                v60 = sel_getName("loadStateFromDisk");
                v61 = 45;
                if (v58)
                {
                  v61 = 43;
                }

                v56(4, "%c[%{public}s %{public}s]:%i Overwritting max retries to %lld", v61, v59, v60, 235, *(v34 + 64));
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v62 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                v63 = object_getClass(v34);
                if (class_isMetaClass(v63))
                {
                  v64 = 43;
                }

                else
                {
                  v64 = 45;
                }

                v65 = object_getClassName(v34);
                v66 = sel_getName("loadStateFromDisk");
                v67 = *(v34 + 64);
                *buf = 67110146;
                *&buf[4] = v64;
                *v110 = 2082;
                *&v110[2] = v65;
                v111 = 2082;
                v112 = v66;
                v113 = 1024;
                v114 = 235;
                v115 = 2048;
                v116 = v67;
                _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Overwritting max retries to %lld", buf, 0x2Cu);
              }
            }
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v68 = NFLogGetLogger();
          if (v68)
          {
            v69 = v68;
            v70 = object_getClass(v34);
            v71 = class_isMetaClass(v70);
            v72 = object_getClassName(v34);
            v73 = sel_getName("loadStateFromDisk");
            v74 = 43;
            if (!v71)
            {
              v74 = 45;
            }

            v69(6, "%c[%{public}s %{public}s]:%i State loaded for %@ : {state=%lu, count=%lu, progress=%d, recovered build=%@}", v74, v72, v73, 239, *(v34 + 16), *(v34 + 48), *(v34 + 40), *(v34 + 8), *(v34 + 24));
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v75 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            v76 = object_getClass(v34);
            if (class_isMetaClass(v76))
            {
              v77 = 43;
            }

            else
            {
              v77 = 45;
            }

            v78 = object_getClassName(v34);
            v79 = sel_getName("loadStateFromDisk");
            v81 = *(v34 + 40);
            v80 = *(v34 + 48);
            v82 = *(v34 + 8);
            v83 = *(v34 + 16);
            v84 = *(v34 + 24);
            *buf = 67111170;
            *&buf[4] = v77;
            *v110 = 2082;
            *&v110[2] = v78;
            v111 = 2082;
            v112 = v79;
            v113 = 1024;
            v114 = 239;
            v115 = 2112;
            v116 = v83;
            v117 = 2048;
            v118 = v80;
            v119 = 2048;
            v120 = v81;
            v121 = 1024;
            v122 = v82;
            v123 = 2112;
            v124 = v84;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i State loaded for %@ : {state=%lu, count=%lu, progress=%d, recovered build=%@}", buf, 0x50u);
          }
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v85 = NFLogGetLogger();
          if (v85)
          {
            v86 = v85;
            v87 = object_getClass(v34);
            v88 = class_isMetaClass(v87);
            v89 = object_getClassName(v34);
            v106 = sel_getName("loadStateFromDisk");
            v90 = 45;
            if (v88)
            {
              v90 = 43;
            }

            v86(3, "%c[%{public}s %{public}s]:%i Invalid state struct", v90, v89, v106, 203);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v40 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v91 = object_getClass(v34);
            if (class_isMetaClass(v91))
            {
              v92 = 43;
            }

            else
            {
              v92 = 45;
            }

            v93 = object_getClassName(v34);
            v94 = sel_getName("loadStateFromDisk");
            *buf = 67109890;
            *&buf[4] = v92;
            *v110 = 2082;
            *&v110[2] = v93;
            v111 = 2082;
            v112 = v94;
            v113 = 1024;
            v114 = 203;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid state struct", buf, 0x22u);
          }
        }
      }
    }

    objc_sync_exit(v22);
  }
}

id sub_100213A20(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [NSString stringWithFormat:@"???? ERROR : 0x%lx!!!!", a1];
  }

  else
  {
    v2 = *(&off_10031BFE8 + a1 - 1);
  }

  return v2;
}

void sub_100213A94(void *a1, int a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("configureRecoveryAllowed:");
      if (a2)
      {
        v10 = "Allowed";
      }

      else
      {
        v10 = "Disabled";
      }

      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v5(4, "%c[%{public}s %{public}s]:%i Recovery is %s", v11, ClassName, Name, 978, v10);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(v3);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(v3);
      v16 = sel_getName("configureRecoveryAllowed:");
      *buf = 67110146;
      if (a2)
      {
        v17 = "Allowed";
      }

      else
      {
        v17 = "Disabled";
      }

      v19 = v14;
      v20 = 2082;
      v21 = v15;
      v22 = 2082;
      v23 = v16;
      v24 = 1024;
      v25 = 978;
      v26 = 2080;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Recovery is %s", buf, 0x2Cu);
    }

    v3[104] = a2 ^ 1;
    objc_sync_exit(v3);
  }
}

void sub_100213C7C(uint64_t a1)
{
  if (a1)
  {
    if ((byte_10035DB91 & 1) == 0)
    {
      byte_10035DB91 = 1;
      v1 = *(a1 + 56);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100213D0C;
      block[3] = &unk_100315F30;
      block[4] = a1;
      dispatch_async(v1, block);
    }
  }
}

void sub_100213D0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(v1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v1);
      Name = sel_getName("_firstUnlockOccured");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 671);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = object_getClass(v1);
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      *buf = 67109890;
      v28 = v10;
      v29 = 2082;
      v30 = object_getClassName(v1);
      v31 = 2082;
      v32 = sel_getName("_firstUnlockOccured");
      v33 = 1024;
      v34 = 671;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    if (MSUParsedToleratedFailureForStep())
    {
      v11 = v1;
      objc_sync_enter(v11);
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFLogGetLogger();
      if (v12)
      {
        v13 = v12;
        v14 = object_getClass(v11);
        v15 = class_isMetaClass(v14);
        v16 = object_getClassName(v11);
        v26 = sel_getName("_checkMobileSoftwareUpdateFailure");
        v17 = 45;
        if (v15)
        {
          v17 = 43;
        }

        v13(6, "%c[%{public}s %{public}s]:%i FF failure detected.", v17, v16, v26, 651);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = object_getClass(v11);
        if (class_isMetaClass(v19))
        {
          v20 = 43;
        }

        else
        {
          v20 = 45;
        }

        v21 = object_getClassName(v11);
        v22 = sel_getName("_checkMobileSoftwareUpdateFailure");
        *buf = 67109890;
        v28 = v20;
        v29 = 2082;
        v30 = v21;
        v31 = 2082;
        v32 = v22;
        v33 = 1024;
        v34 = 651;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i FF failure detected.", buf, 0x22u);
      }

      sub_100210010(v11[11]);
      sub_100210010(v11[12]);
      v23 = v11[11];
      if (v23 && v23[6] == 1 || (v24 = v11[12]) != 0 && v24[6] == 1)
      {
        sub_1002116D4(v11);
      }

      objc_sync_exit(v11);
    }
  }
}

void sub_100214014(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  v5 = a1;
  objc_sync_enter(v5);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(v5);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v5);
    Name = sel_getName("setRecoveryNeeded:controller:");
    v12 = sub_100213A20(a3);
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i controller=%@, needed=%d", v13, ClassName, Name, 1004, v12, a2);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = object_getClass(v5);
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    v17 = object_getClassName(v5);
    v18 = sel_getName("setRecoveryNeeded:controller:");
    v19 = sub_100213A20(a3);
    *buf = 67110402;
    v23 = v16;
    v24 = 2082;
    v25 = v17;
    v26 = 2082;
    v27 = v18;
    v28 = 1024;
    v29 = 1004;
    v30 = 2112;
    v31 = v19;
    v32 = 1024;
    v33 = a2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i controller=%@, needed=%d", buf, 0x32u);
  }

  if (a3 == 2)
  {
    v21 = sub_100210DD8(v5[12], a2);
    sub_10020FEB4(v5[12]);
    objc_sync_exit(v5);

    if (!v21)
    {
      return;
    }

    goto LABEL_16;
  }

  if (a3 != 1)
  {
    objc_sync_exit(v5);

    return;
  }

  v20 = sub_100210DD8(v5[11], a2);
  sub_10020FEB4(v5[11]);
  objc_sync_exit(v5);

  if (v20)
  {
LABEL_16:
    sub_1002116D4(v5);
  }
}

BOOL sub_100214280(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  objc_sync_enter(v3);
  if ((a2 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    __assert_rtn("[_NFFailForwardCoordinator shouldControllerStop:]", "_NFFailForwardCoordinator.m", 1026, "(controller == kRecoveryCoordinatorControllerPrimary) || (controller == kRecoveryCoordinatorControllerSecondary)");
  }

  v4 = 48;
  if (a2 == 1)
  {
    v4 = 24;
  }

  v5 = *&v3[v4] == 1;
  objc_sync_exit(v3);

  return v5;
}

void sub_100214310(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("didStop:");
      v10 = sub_100213A20(a2);
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i controller=%@", v11, ClassName, Name, 1045, v10);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(v3);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(v3);
      v16 = sel_getName("didStop:");
      v17 = sub_100213A20(a2);
      *buf = 67110146;
      v23 = v14;
      v24 = 2082;
      v25 = v15;
      v26 = 2082;
      v27 = v16;
      v28 = 1024;
      v29 = 1045;
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i controller=%@", buf, 0x2Cu);
    }

    if (a2 == 2)
    {
      v18 = v3 + 6;
      if (v3[6] != 1)
      {
        __assert_rtn("[_NFFailForwardCoordinator didStop:]", "_NFFailForwardCoordinator.m", 1052, "_secondaryDelegateState == kDelegateStateMustStop");
      }
    }

    else
    {
      if (a2 != 1)
      {
        goto LABEL_17;
      }

      v18 = v3 + 3;
      if (v3[3] != 1)
      {
        __assert_rtn("[_NFFailForwardCoordinator didStop:]", "_NFFailForwardCoordinator.m", 1048, "_primaryDelegateState == kDelegateStateMustStop");
      }
    }

    *v18 = 2;
LABEL_17:
    if (v3[3] == 1)
    {
      objc_sync_exit(v3);
    }

    else
    {
      v19 = v3[6];
      objc_sync_exit(v3);

      if (v19 != 1)
      {
        v20 = v3[7];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1002145F4;
        block[3] = &unk_100315F30;
        block[4] = v3;
        dispatch_async(v20, block);
      }
    }
  }
}

void sub_1002145F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [*(v1 + 80) stopTimer];
    v3 = *(v1 + 80);
    *(v1 + 80) = 0;

    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = sub_100211748(v4);
      v6 = v4;
      objc_sync_enter(v6);
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = Logger;
        Class = object_getClass(v6);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v6);
        Name = sel_getName("_startRestoreProcess");
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v8(6, "%c[%{public}s %{public}s]:%i ", v12, ClassName, Name, 604);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = object_getClass(v6);
        if (class_isMetaClass(v14))
        {
          v15 = 43;
        }

        else
        {
          v15 = 45;
        }

        *buf = 67109890;
        *&buf[4] = v15;
        *v117 = 2082;
        *&v117[2] = object_getClassName(v6);
        *&v117[10] = 2082;
        *&v117[12] = sel_getName("_startRestoreProcess");
        *&v117[20] = 1024;
        *&v117[22] = 604;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
      }

      v16 = *(v6 + 11);
      if (v16)
      {
        v17 = *(v16 + 48) == 1;
      }

      else
      {
        v17 = 0;
      }

      v18 = *(v6 + 12);
      if (v18)
      {
        v19 = *(v18 + 48) == 1;
      }

      else
      {
        v19 = 0;
      }

      LODWORD(v20) = v5 > 1 || v19;
      v21 = v17 | v5;
      v22 = v6[104];
      if (((v17 | v5) & 1) != 0 && *(v6 + 3) != 2)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v23 = NFLogGetLogger();
        if (v23)
        {
          v24 = v23;
          v25 = v21;
          v26 = v20;
          v27 = object_getClass(v6);
          if (class_isMetaClass(v27))
          {
            v20 = 43;
          }

          else
          {
            v20 = 45;
          }

          v28 = object_getClassName(v6);
          v29 = sel_getName("_startRestoreProcess");
          v30 = *(v6 + 3);
          if (v30 > 2)
          {
            v31 = @"???? ERROR !!!!";
          }

          else
          {
            v31 = *(&off_10031C000 + v30);
          }

          v24(3, "%c[%{public}s %{public}s]:%i Error unexpected primary delegate state: %@", v20, v28, v29, 614, v31);
          LODWORD(v20) = v26;
          v21 = v25;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v32 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v110 = v21;
          v33 = v20;
          v34 = object_getClass(v6);
          if (class_isMetaClass(v34))
          {
            v35 = 43;
          }

          else
          {
            v35 = 45;
          }

          v36 = object_getClassName(v6);
          v37 = sel_getName("_startRestoreProcess");
          v38 = *(v6 + 3);
          if (v38 > 2)
          {
            v39 = @"???? ERROR !!!!";
          }

          else
          {
            v39 = *(&off_10031C000 + v38);
          }

          *buf = 67110146;
          *&buf[4] = v35;
          *v117 = 2082;
          *&v117[2] = v36;
          *&v117[10] = 2082;
          *&v117[12] = v37;
          *&v117[20] = 1024;
          *&v117[22] = 614;
          *&v117[26] = 2112;
          *&v117[28] = v39;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error unexpected primary delegate state: %@", buf, 0x2Cu);
          LODWORD(v20) = v33;
          v21 = v110;
        }

        if (*(v6 + 3) != 2)
        {
          __assert_rtn("[_NFFailForwardCoordinator _startRestoreProcess]", "_NFFailForwardCoordinator.m", 615, "_primaryDelegateState == kDelegateStateDidStop");
        }
      }

      if (v20 && *(v6 + 6) != 2)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v40 = NFLogGetLogger();
        if (v40)
        {
          v41 = v40;
          v42 = v21;
          v43 = v20;
          v44 = object_getClass(v6);
          if (class_isMetaClass(v44))
          {
            v20 = 43;
          }

          else
          {
            v20 = 45;
          }

          v45 = object_getClassName(v6);
          v46 = sel_getName("_startRestoreProcess");
          v47 = *(v6 + 6);
          if (v47 > 2)
          {
            v48 = @"???? ERROR !!!!";
          }

          else
          {
            v48 = *(&off_10031C000 + v47);
          }

          v41(3, "%c[%{public}s %{public}s]:%i Error unexpected secondary delegate state: %@", v20, v45, v46, 619, v48);
          LOBYTE(v20) = v43;
          v21 = v42;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v49 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v111 = v21;
          v50 = v20;
          v51 = object_getClass(v6);
          if (class_isMetaClass(v51))
          {
            LODWORD(v20) = 43;
          }

          else
          {
            LODWORD(v20) = 45;
          }

          v52 = object_getClassName(v6);
          v53 = sel_getName("_startRestoreProcess");
          v54 = *(v6 + 6);
          if (v54 > 2)
          {
            v55 = @"???? ERROR !!!!";
          }

          else
          {
            v55 = *(&off_10031C000 + v54);
          }

          *buf = 67110146;
          *&buf[4] = v20;
          *v117 = 2082;
          *&v117[2] = v52;
          *&v117[10] = 2082;
          *&v117[12] = v53;
          *&v117[20] = 1024;
          *&v117[22] = 619;
          *&v117[26] = 2112;
          *&v117[28] = v55;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error unexpected secondary delegate state: %@", buf, 0x2Cu);
          LOBYTE(v20) = v50;
          v21 = v111;
        }

        if (*(v6 + 6) != 2)
        {
          __assert_rtn("[_NFFailForwardCoordinator _startRestoreProcess]", "_NFFailForwardCoordinator.m", 620, "_secondaryDelegateState == kDelegateStateDidStop");
        }
      }

      objc_sync_exit(v6);

      if (v17 || v19)
      {
        if (v22)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v56 = NFLogGetLogger();
          if (v56)
          {
            v57 = v56;
            v58 = object_getClass(v6);
            v59 = class_isMetaClass(v58);
            v60 = object_getClassName(v6);
            v107 = sel_getName("_startRestoreProcess");
            v61 = 45;
            if (v59)
            {
              v61 = 43;
            }

            v57(4, "%c[%{public}s %{public}s]:%i Warning : recovery is disabled", v61, v60, v107, 632);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v62 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v63 = object_getClass(v6);
            if (class_isMetaClass(v63))
            {
              v64 = 43;
            }

            else
            {
              v64 = 45;
            }

            v65 = object_getClassName(v6);
            v66 = sel_getName("_startRestoreProcess");
            *buf = 67109890;
            *&buf[4] = v64;
            *v117 = 2082;
            *&v117[2] = v65;
            *&v117[10] = 2082;
            *&v117[12] = v66;
            *&v117[20] = 1024;
            *&v117[22] = 632;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Warning : recovery is disabled", buf, 0x22u);
          }

          v67 = 0;
        }

        else
        {
          if (!v17 && !v19)
          {
            __assert_rtn("[_NFFailForwardCoordinator _runPrimaryRestore:secondary:]", "_NFFailForwardCoordinator.m", 564, "primaryRestoreNeeded || secondaryRestoreNeeded");
          }

          v68 = v6;
          objc_sync_enter(v68);
          if (v17)
          {
            sub_1002101E8(*(v6 + 11));
          }

          if (v19)
          {
            sub_1002101E8(*(v6 + 12));
            v69 = &off_100339DF0;
          }

          else
          {
            v69 = 0;
          }

          objc_sync_exit(v68);

          sub_10022F438(NFDailyStatisticsCALogger, @"failForwardRestoreAttemptFailureCount");
          v70 = &off_100339DC8;
          if (v17 && v19)
          {
            v70 = &off_100339DA0;
          }

          if (v17)
          {
            v69 = v70;
          }

          v71 = objc_opt_new();
          v72 = [v71 runService:v69];
          if (!v72)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v94 = NFLogGetLogger();
            if (v94)
            {
              v95 = v94;
              v96 = object_getClass(v68);
              v97 = class_isMetaClass(v96);
              v98 = object_getClassName(v68);
              v109 = sel_getName("_runPrimaryRestore:secondary:");
              v99 = 45;
              if (v97)
              {
                v99 = 43;
              }

              v95(3, "%c[%{public}s %{public}s]:%i No status from restore service !", v99, v98, v109, 581);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v100 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              v101 = object_getClass(v68);
              if (class_isMetaClass(v101))
              {
                v102 = 43;
              }

              else
              {
                v102 = 45;
              }

              v103 = object_getClassName(v68);
              v104 = sel_getName("_runPrimaryRestore:secondary:");
              *buf = 67109890;
              *&buf[4] = v102;
              *v117 = 2082;
              *&v117[2] = v103;
              *&v117[10] = 2082;
              *&v117[12] = v104;
              *&v117[20] = 1024;
              *&v117[22] = 581;
              _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No status from restore service !", buf, 0x22u);
            }

            __assert_rtn("[_NFFailForwardCoordinator _runPrimaryRestore:secondary:]", "_NFFailForwardCoordinator.m", 582, "restoreResult != nil");
          }

          v62 = v72;
          v73 = [v72 objectForKey:@"Error"];
          [v71 disconnect];
          v67 = v73;
          v74 = v68;
          objc_sync_enter(v74);
          if (v17)
          {
            sub_100210430(*(v6 + 11), v67);
          }

          if (v19)
          {
            sub_100210430(*(v6 + 12), v67);
          }

          objc_sync_exit(v74);

          v75 = NFSharedSignpostLog();
          if (os_signpost_enabled(v75))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v75, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RESTORE_NFCC", "success", buf, 2u);
          }
        }

        v76 = v67;
        v77 = v6;
        objc_sync_enter(v77);
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v78 = NFLogGetLogger();
        if (v78)
        {
          v79 = v78;
          v80 = object_getClass(v77);
          v81 = class_isMetaClass(v80);
          v105 = object_getClassName(v77);
          v108 = sel_getName("_restoreCompleted:forPrimary:secondary:");
          v82 = 45;
          if (v81)
          {
            v82 = 43;
          }

          v79(6, "%c[%{public}s %{public}s]:%i Restore completed with status %@", v82, v105, v108, 492, v76);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v83 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          v84 = object_getClass(v77);
          if (class_isMetaClass(v84))
          {
            v85 = 43;
          }

          else
          {
            v85 = 45;
          }

          v86 = object_getClassName(v77);
          v87 = sel_getName("_restoreCompleted:forPrimary:secondary:");
          *buf = 67110146;
          *&buf[4] = v85;
          *v117 = 2082;
          *&v117[2] = v86;
          *&v117[10] = 2082;
          *&v117[12] = v87;
          *&v117[20] = 1024;
          *&v117[22] = 492;
          *&v117[26] = 2112;
          *&v117[28] = v76;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restore completed with status %@", buf, 0x2Cu);
        }

        WeakRetained = objc_loadWeakRetained(v77 + 1);
        v89 = WeakRetained;
        if (WeakRetained && *(v77 + 3) == 2)
        {
          *(v77 + 3) = 0;
          v90 = *(v77 + 2);
          *buf = _NSConcreteStackBlock;
          *v117 = 3221225472;
          *&v117[8] = sub_100211684;
          *&v117[16] = &unk_100315B38;
          *&v117[24] = WeakRetained;
          v118 = v21 & 1;
          *&v117[32] = v76;
          dispatch_async(v90, buf);
        }

        v91 = objc_loadWeakRetained(v77 + 4);
        v92 = v91;
        if (v91 && *(v77 + 6) == 2)
        {
          *(v77 + 6) = 0;
          v93 = *(v77 + 5);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1002116AC;
          block[3] = &unk_100315B38;
          v113 = v91;
          v115 = v20;
          v114 = v76;
          dispatch_async(v93, block);
        }

        objc_sync_exit(v77);
        if (v76)
        {
          sub_1002116D4(v77);
        }
      }
    }
  }
}

uint64_t sub_100216084(void *a1)
{
  v7 = 0;
  v1 = sub_100217D44(a1, &v7);
  v2 = v7;
  if (v2)
  {
LABEL_9:
    v3 = 0;
    goto LABEL_10;
  }

  if (v1 != 36864)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(4, "%s:%i SW1SW2 error=0x%x", "_IsRAPDUSuccess", 59, v1);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "_IsRAPDUSuccess";
      v10 = 1024;
      v11 = 59;
      v12 = 1024;
      v13 = v1;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i SW1SW2 error=0x%x", buf, 0x18u);
    }

    goto LABEL_9;
  }

  v3 = 1;
LABEL_10:

  return v3;
}

void *sub_100217D44(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 length] > 1)
  {
    a2 = (bswap32(*([v3 bytes] + objc_msgSend(v3, "length") - 2)) >> 16);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(4, "%s:%i Invalid tag response", "_ParseSWFromRAPDUEX", 42);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v14 = "_ParseSWFromRAPDUEX";
      v15 = 1024;
      v16 = 42;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid tag response", buf, 0x12u);
    }

    if (a2)
    {
      v6 = [NSError alloc];
      v7 = [NSString stringWithUTF8String:"nfcd"];
      v11 = NSLocalizedDescriptionKey;
      v8 = [NSString stringWithUTF8String:"Tag Error"];
      v12 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      *a2 = [v6 initWithDomain:v7 code:29 userInfo:v9];

      a2 = 0;
    }
  }

  return a2;
}

id sub_100218DB8(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(v2 + 396);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100218E3C;
  v6[3] = &unk_100315EE0;
  v4 = a1[6];
  v6[4] = v2;
  v6[5] = v4;
  return [v3 hceReadWithHandle:v1 completion:v6];
}

void sub_100218E3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
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
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v12(3, "%c[%{public}s %{public}s]:%i Invalid decoded event for posting EndEvent.", v16, ClassName, Name, 91);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
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
      *buf = 67109890;
      v31 = v18;
      v32 = 2082;
      v33 = v19;
      v34 = 2082;
      v35 = v20;
      v36 = 1024;
      v37 = 91;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid decoded event for posting EndEvent.", buf, 0x22u);
    }

    goto LABEL_14;
  }

  v7 = [*(a1 + 32) expressModeManager];
  if (v7)
  {
    v8 = v7[181];

    v9 = *(a1 + 32);
    if (v8 == 1)
    {
      v10 = [v9 expressModeManager];
      [v10 handleTransactionEndEvent:v5 atlData:v6 caData:0];
LABEL_14:

      goto LABEL_17;
    }
  }

  else
  {
    v9 = *(a1 + 32);
  }

  [v9 handleTransactionEndEvent:v5 atlData:v6];
LABEL_17:
  v21 = [v6 objectForKeyedSubscript:@"appletIdentifier"];
  if ([*(a1 + 32) isUnifiedAccessForHome:v21])
  {
    v22 = [v6 objectForKeyedSubscript:@"endPointIdentifier"];
    v23 = [v6 objectForKeyedSubscript:@"readerIdentifier"];
    v24 = objc_opt_new();
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v24 setObject:v22 forKeyedSubscript:@"endPointIdentifier"];
      }
    }

    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v24 setObject:v21 forKeyedSubscript:@"appletIdentifier"];
      }
    }

    if (v23)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v24 setObject:v23 forKeyedSubscript:@"readerIdentifier"];
      }
    }

    if (v5)
    {
      if ([v5 didError])
      {
        v25 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 didError]);
        [v24 setObject:v25 forKeyedSubscript:@"didError"];
      }

      else
      {
        [v24 setObject:&off_100336048 forKeyedSubscript:@"didError"];
      }
    }

    [v24 setObject:&off_100336060 forKeyedSubscript:@"isStepUp"];
    v26 = +[_NFHardwareManager sharedHardwareManager];
    v27 = +[NFSecureXPCEventPublisherManager sharedManager];
    v28 = [v27 homed];
    [v26 postEventForPublisher:v28 event:"com.apple.stockholm.forHome.transaction.end" additionalData:v24];
  }
}

id *sub_100219FE8(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v26.receiver = a1;
    v26.super_class = NFDriverWrapper;
    v5 = objc_msgSendSuper2(&v26, "init");
    a1 = v5;
    if (v5)
    {
      v5[18] = 0;
      v5[19] = 0;
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = a1[3];
      a1[3] = v6;

      *(a1 + 176) = 0;
      v8 = objc_alloc_init(NFCoreTelephonyConnection);
      v9 = a1[14];
      a1[14] = v8;

      v10 = objc_alloc_init(NSLock);
      v11 = a1[9];
      a1[9] = v10;

      *(a1 + 175) = 0;
      objc_initWeak(&location, a1);
      v12 = [NFTimer alloc];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10021A200;
      v23[3] = &unk_100315F08;
      objc_copyWeak(&v24, &location);
      v13 = [v12 initWithCallback:v23 queue:v4];
      v14 = a1[10];
      a1[10] = v13;

      v15 = [NFTimer alloc];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10021A350;
      v21[3] = &unk_100315F08;
      objc_copyWeak(&v22, &location);
      v16 = [v15 initWithCallback:v21 queue:v4];
      v17 = a1[11];
      a1[11] = v16;

      objc_storeStrong(a1 + 17, a2);
      *(a1 + 174) = NFProductIsPhone() ^ 1;
      *(a1 + 173) = NFProductHasNFCRadio();
      v18 = objc_opt_new();
      v19 = a1[16];
      a1[16] = v18;

      *(a1 + 41) = 0;
      objc_destroyWeak(&v22);
      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }
  }

  return a1;
}

void sub_10021A200(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.field.assertionTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v2, state);
  os_activity_scope_leave(state);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Field assertion timeout.", "[NFDriverWrapper initWithQueue:]_block_invoke", 190);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *state = 136446466;
    *&state[4] = "[NFDriverWrapper initWithQueue:]_block_invoke";
    *&state[12] = 1024;
    *&state[14] = 190;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Field assertion timeout.", state, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100003678(WeakRetained);
}

void sub_10021A350(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.field.coalescingTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v2, state);
  os_activity_scope_leave(state);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Field coalesing timer expired", "[NFDriverWrapper initWithQueue:]_block_invoke", 196);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *state = 136446466;
    *&state[4] = "[NFDriverWrapper initWithQueue:]_block_invoke";
    *&state[12] = 1024;
    *&state[14] = 196;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Field coalesing timer expired", state, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100003678(WeakRetained);
}

id sub_10021A4A0(void *a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = a1;
    objc_sync_enter(v6);
    if (*(v6 + 40))
    {
      v7 = 0;
    }

    else
    {
      v33 = sub_10021B0D8(v6, v5);
      v7 = v33;
      if (v33)
      {
        if ([v33 code] == 58 && NFProductIsDevBoard())
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v35 = Logger;
            Class = object_getClass(v6);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v6);
            Name = sel_getName("openSession:forType:");
            v39 = 45;
            if (isMetaClass)
            {
              v39 = 43;
            }

            v35(3, "%c[%{public}s %{public}s]:%i Hardware unavailable; please verify all hardware connections and power cycle system to retry", v39, ClassName, Name, 358);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v40 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = object_getClass(v6);
            if (class_isMetaClass(v41))
            {
              v42 = 43;
            }

            else
            {
              v42 = 45;
            }

            *buf = 67109890;
            v94 = v42;
            v95 = 2082;
            v96 = object_getClassName(v6);
            v97 = 2082;
            v98 = sel_getName("openSession:forType:");
            v99 = 1024;
            v100 = 358;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Hardware unavailable; please verify all hardware connections and power cycle system to retry", buf, 0x22u);
          }

          v6[32] = 3;
          v43 = [NSError alloc];
          v44 = [NSString stringWithUTF8String:"nfcd"];
          v105[0] = NSLocalizedDescriptionKey;
          v45 = [NSString stringWithUTF8String:"Unresponsive hardware"];
          v106[0] = v45;
          v106[1] = &off_100336090;
          v105[1] = @"Line";
          v105[2] = @"Method";
          v46 = [[NSString alloc] initWithFormat:@"%s", sel_getName("openSession:forType:")];
          v106[2] = v46;
          v105[3] = NSDebugDescriptionErrorKey;
          v47 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("openSession:forType:"), 360];
          v106[3] = v47;
          v48 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:4];
          v49 = [v43 initWithDomain:v44 code:58 userInfo:v48];

          goto LABEL_58;
        }

        v8 = 0;
LABEL_5:
        v9 = v6[32];
        if (v9 == 1 || v9 == 4 && (a3 & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          if ([v7 code] == 56)
          {

            v7 = 0;
          }

          v16 = *(v6 + 40);
          if (!v16)
          {
            *(v6 + 169) = 0;
            sub_10021CAB4(v6);
            v16 = *(v6 + 40);
          }

          *(v6 + 40) = v16 + 1;
          v17 = [v6[16] objectForKey:v5];

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v18 = NFLogGetLogger();
          v19 = v18;
          if (v17)
          {
            if (v18)
            {
              v20 = object_getClass(v6);
              v21 = class_isMetaClass(v20);
              v22 = object_getClassName(v6);
              v23 = sel_getName("openSession:forType:");
              v24 = [v6[16] objectForKeyedSubscript:v5];
              v25 = 45;
              if (v21)
              {
                v25 = 43;
              }

              v19(3, "%c[%{public}s %{public}s]:%i Owner %@ already has a session : %@", v25, v22, v23, 383, v5, v24);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v26 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = object_getClass(v6);
              if (class_isMetaClass(v27))
              {
                v28 = 43;
              }

              else
              {
                v28 = 45;
              }

              v29 = object_getClassName(v6);
              v30 = sel_getName("openSession:forType:");
              v31 = [v6[16] objectForKeyedSubscript:v5];
              *buf = 67110402;
              v94 = v28;
              v95 = 2082;
              v96 = v29;
              v97 = 2082;
              v98 = v30;
              v99 = 1024;
              v100 = 383;
              v101 = 2112;
              v102 = v5;
              v103 = 2112;
              v104 = v31;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Owner %@ already has a session : %@", buf, 0x36u);
            }

            v11 = [v6[16] objectForKeyedSubscript:v5];
            v32 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v11 intValue] + 1);
            [v6[16] setObject:v32 forKeyedSubscript:v5];
          }

          else
          {
            if (v18)
            {
              v55 = object_getClass(v6);
              v56 = class_isMetaClass(v55);
              v57 = object_getClassName(v6);
              v86 = sel_getName("openSession:forType:");
              v58 = 45;
              if (v56)
              {
                v58 = 43;
              }

              v19(6, "%c[%{public}s %{public}s]:%i Opening session on behalf of %@ with type %lu", v58, v57, v86, 387, v5, a3);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v59 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              v60 = object_getClass(v6);
              if (class_isMetaClass(v60))
              {
                v61 = 43;
              }

              else
              {
                v61 = 45;
              }

              *buf = 67110402;
              v94 = v61;
              v95 = 2082;
              v96 = object_getClassName(v6);
              v97 = 2082;
              v98 = sel_getName("openSession:forType:");
              v99 = 1024;
              v100 = 387;
              v101 = 2112;
              v102 = v5;
              v103 = 2048;
              v104 = a3;
              _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Opening session on behalf of %@ with type %lu", buf, 0x36u);
            }

            v11 = [NSNumber numberWithInt:1];
            [v6[16] setObject:v11 forKeyedSubscript:v5];
          }

          goto LABEL_57;
        }

        if (*(v6 + 40))
        {
          if (v8)
          {
            v10 = [NSError alloc];
            v11 = [NSString stringWithUTF8String:"nfcd"];
            v89[0] = NSLocalizedDescriptionKey;
            v12 = [NSString stringWithUTF8String:"NFCC is in Download mode. NCI not available."];
            v90[0] = v12;
            v90[1] = &off_1003360C0;
            v89[1] = @"Line";
            v89[2] = @"Method";
            v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName("openSession:forType:")];
            v90[2] = v13;
            v89[3] = NSDebugDescriptionErrorKey;
            v14 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("openSession:forType:"), 409];
            v90[3] = v14;
            v15 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:4];
            v7 = [v10 initWithDomain:v11 code:56 userInfo:v15];

LABEL_57:
            v7 = v7;
            v49 = v7;
LABEL_58:

            objc_sync_exit(v6);
            goto LABEL_59;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v68 = NFLogGetLogger();
          if (v68)
          {
            v69 = v68;
            v70 = object_getClass(v6);
            v71 = class_isMetaClass(v70);
            v83 = object_getClassName(v6);
            v87 = sel_getName("openSession:forType:");
            v72 = 45;
            if (v71)
            {
              v72 = 43;
            }

            v69(3, "%c[%{public}s %{public}s]:%i FAILED: %s", v72, v83, v87, 408, "error == ((void*)0)");
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v73 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            v74 = object_getClass(v6);
            if (class_isMetaClass(v74))
            {
              v75 = 43;
            }

            else
            {
              v75 = 45;
            }

            *buf = 67110146;
            v94 = v75;
            v95 = 2082;
            v96 = object_getClassName(v6);
            v97 = 2082;
            v98 = sel_getName("openSession:forType:");
            v99 = 1024;
            v100 = 408;
            v101 = 2080;
            v102 = "error == ((void*)0)";
LABEL_81:
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i FAILED: %s", buf, 0x2Cu);
          }
        }

        else
        {
          if (!v8)
          {
            *(v6 + 169) = 1;
            if (v9 == 4)
            {
              v50 = v6[1];
              NFDriverUnloadStackAndLeaveHWEnabled();
              v51 = v6[1];
              NFDriverClose();
              v6[1] = 0;
            }

            v52 = [NSError alloc];
            v11 = [NSString stringWithUTF8String:"nfcd"];
            v53 = [v7 code];
            v91[0] = NSLocalizedDescriptionKey;
            if ([v7 code] > 75)
            {
              v54 = 76;
            }

            else
            {
              v54 = [v7 code];
            }

            v62 = [NSString stringWithUTF8String:off_10031C280[v54]];
            v92[0] = v62;
            v92[1] = v7;
            v91[1] = NSUnderlyingErrorKey;
            v91[2] = @"Line";
            v92[2] = &off_1003360A8;
            v91[3] = @"Method";
            v63 = [[NSString alloc] initWithFormat:@"%s", sel_getName("openSession:forType:")];
            v92[3] = v63;
            v91[4] = NSDebugDescriptionErrorKey;
            v64 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("openSession:forType:"), 405];
            v92[4] = v64;
            v65 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:5];
            v66 = [v52 initWithDomain:v11 code:v53 userInfo:v65];

            v7 = v66;
            goto LABEL_57;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v76 = NFLogGetLogger();
          if (v76)
          {
            v77 = v76;
            v78 = object_getClass(v6);
            v79 = class_isMetaClass(v78);
            v84 = object_getClassName(v6);
            v88 = sel_getName("openSession:forType:");
            v80 = 45;
            if (v79)
            {
              v80 = 43;
            }

            v77(3, "%c[%{public}s %{public}s]:%i FAILED: %s", v80, v84, v88, 395, "error != ((void*)0)");
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v73 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            v81 = object_getClass(v6);
            if (class_isMetaClass(v81))
            {
              v82 = 43;
            }

            else
            {
              v82 = 45;
            }

            *buf = 67110146;
            v94 = v82;
            v95 = 2082;
            v96 = object_getClassName(v6);
            v97 = 2082;
            v98 = sel_getName("openSession:forType:");
            v99 = 1024;
            v100 = 395;
            v101 = 2080;
            v102 = "error != ((void*)0)";
            goto LABEL_81;
          }
        }

        abort();
      }
    }

    v8 = 1;
    goto LABEL_5;
  }

  v49 = 0;
LABEL_59:

  return v49;
}

id sub_10021B0D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v6 = Logger;
    if (v4)
    {
      if (Logger)
      {
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_openDriver:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v6(3, "%c[%{public}s %{public}s]:%i Stack already opened !", v10, ClassName, Name, 1911);
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
        v15 = sel_getName("_openDriver:");
        *buf = 67109890;
        *&buf[4] = v13;
        *&buf[8] = 2082;
        *&buf[10] = v14;
        *&buf[18] = 2082;
        *&buf[20] = v15;
        *&buf[28] = 1024;
        *&buf[30] = 1911;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Stack already opened !", buf, 0x22u);
      }

      if (*(a1 + 175) == 1)
      {
        v16 = [NSError alloc];
        v17 = [NSString stringWithUTF8String:"nfcd"];
        v190[0] = NSLocalizedDescriptionKey;
        v18 = [NSString stringWithUTF8String:"NFCC is in Download mode. NCI not available."];
        v191[0] = v18;
        v191[1] = &off_100336210;
        v190[1] = @"Line";
        v190[2] = @"Method";
        v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_openDriver:")];
        v191[2] = v19;
        v190[3] = NSDebugDescriptionErrorKey;
        v20 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_openDriver:"), 1913];
        v191[3] = v20;
        v21 = [NSDictionary dictionaryWithObjects:v191 forKeys:v190 count:4];
        v22 = [v16 initWithDomain:v17 code:56 userInfo:v21];
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_99;
    }

    if (Logger)
    {
      v23 = object_getClass(a1);
      v24 = class_isMetaClass(v23);
      v176 = object_getClassName(a1);
      v181 = sel_getName("_openDriver:");
      v25 = 45;
      if (v24)
      {
        v25 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i starting stack requested by %@", v25, v176, v181, 1764, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = object_getClass(a1);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      v29 = object_getClassName(a1);
      v30 = sel_getName("_openDriver:");
      *buf = 67110146;
      *&buf[4] = v28;
      *&buf[8] = 2082;
      *&buf[10] = v29;
      *&buf[18] = 2082;
      *&buf[20] = v30;
      *&buf[28] = 1024;
      *&buf[30] = 1764;
      *&buf[34] = 2112;
      *&buf[36] = v3;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i starting stack requested by %@", buf, 0x2Cu);
    }

    *(a1 + 170) = 0;
    *(a1 + 168) = 0;
    *(a1 + 164) = 0;
    *(a1 + 144) = 0;
    v31 = *(a1 + 104);
    *(a1 + 104) = 0;

    memset(buf, 0, 48);
    *buf = getenv("STOCKHOLM_DEVICE");
    *&buf[8] = getenv("HAMMERFEST_DEVICE");
    *&buf[24] = *(a1 + 248);
    v32 = *(a1 + 200);
    *&buf[32] = *(a1 + 180);
    *&buf[36] = v32;
    v33 = NFSharedSignpostLog();
    if (os_signpost_enabled(v33))
    {
      *v204 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DRIVER_OPEN", &unk_1002E8B7A, v204, 2u);
    }

    v34 = NFDriverOpen();
    *(a1 + 8) = v34;
    if (!v34)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v80 = NFLogGetLogger();
      if (v80)
      {
        v81 = v80;
        v82 = object_getClass(a1);
        v83 = class_isMetaClass(v82);
        v84 = object_getClassName(a1);
        v85 = sel_getName("_openDriver:");
        v86 = *buf;
        v87 = *&buf[8];
        if (!*&buf[8])
        {
          v87 = "Unknown device";
        }

        if (!*buf)
        {
          v86 = v87;
        }

        v88 = 45;
        if (v83)
        {
          v88 = 43;
        }

        v81(3, "%c[%{public}s %{public}s]:%i Failed to open device: %s", v88, v84, v85, 1774, v86);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v89 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        v90 = object_getClass(a1);
        if (class_isMetaClass(v90))
        {
          v91 = 43;
        }

        else
        {
          v91 = 45;
        }

        v92 = object_getClassName(a1);
        v93 = sel_getName("_openDriver:");
        v94 = *buf;
        v95 = *&buf[8];
        if (!*&buf[8])
        {
          v95 = "Unknown device";
        }

        if (!*buf)
        {
          v94 = v95;
        }

        *v204 = 67110146;
        *&v204[4] = v91;
        *&v204[8] = 2082;
        *&v204[10] = v92;
        *&v204[18] = 2082;
        *&v204[20] = v93;
        *&v204[28] = 1024;
        *&v204[30] = 1774;
        *&v204[34] = 2080;
        *&v204[36] = v94;
        _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open device: %s", v204, 0x2Cu);
      }

      v96 = NFSharedSignpostLog();
      if (os_signpost_enabled(v96))
      {
        *v204 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v96, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DRIVER_OPEN", "open failure", v204, 2u);
      }

      *(a1 + 256) = 2;
      v97 = [NSError alloc];
      v98 = [NSString stringWithUTF8String:"nfcd"];
      v202[0] = NSLocalizedDescriptionKey;
      v99 = [NSString stringWithUTF8String:"Stack Error"];
      v203[0] = v99;
      v203[1] = &off_100336180;
      v202[1] = @"Line";
      v202[2] = @"Method";
      v100 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_openDriver:")];
      v203[2] = v100;
      v202[3] = NSDebugDescriptionErrorKey;
      v101 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_openDriver:"), 1777];
      v203[3] = v101;
      v102 = [NSDictionary dictionaryWithObjects:v203 forKeys:v202 count:4];
      v122 = [v97 initWithDomain:v98 code:15 userInfo:v102];

      v123 = 0;
      goto LABEL_100;
    }

    v35 = NFSharedSignpostLog();
    if (os_signpost_enabled(v35))
    {
      *v204 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DRIVER_OPEN", "success", v204, 2u);
    }

    v36 = *(a1 + 8);
    NFDriverSetCallback();
    v37 = *(a1 + 8);
    NFDriverSetCallback();
    v38 = *(a1 + 8);
    NFDriverSetCallback();
    v39 = *(a1 + 8);
    NFDriverSetCallback();
    v40 = *(a1 + 8);
    NFDriverSetCallback();
    v41 = *(a1 + 8);
    NFDriverSetCallback();
    v42 = *(a1 + 8);
    NFDriverSetCallback();
    v43 = *(a1 + 8);
    NFDriverSetCallback();
    v44 = *(a1 + 8);
    NFDriverSetCallback();
    v45 = *(a1 + 8);
    NFDriverSetCallback();
    v46 = *(a1 + 8);
    NFDriverSetCallback();
    v47 = *(a1 + 8);
    NFDriverSetCallback();
    v48 = *(a1 + 8);
    NFDriverSetCallback();
    v49 = *(a1 + 8);
    NFDriverSetCallback();
    v50 = *(a1 + 8);
    NFDriverSetCallback();
    v51 = *(a1 + 8);
    NFDriverSetCallback();
    v52 = *(a1 + 8);
    NFDriverSetCallback();
    v53 = *(a1 + 8);
    NFDriverSetCallback();
    v54 = *(a1 + 8);
    NFDriverSetCallback();
    v55 = *(a1 + 8);
    NFDriverSetCallback();
    v56 = *(a1 + 8);
    NFDriverSetCallback();
    v57 = *(a1 + 8);
    NFDriverSetCallback();
    v58 = *(a1 + 8);
    NFDriverSetCallback();
    v59 = *(a1 + 8);
    NFDriverSetCallback();
    v60 = *(a1 + 8);
    NFDriverSetCallback();
    v61 = *(a1 + 8);
    NFDriverSetCallback();
    v62 = *(a1 + 8);
    NFDriverSetCallback();
    v63 = *(a1 + 8);
    NFDriverSetCallback();
    v64 = NFSharedSignpostLog();
    if (os_signpost_enabled(v64))
    {
      *v204 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v64, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DRIVER_LOAD_STACK", &unk_1002E8B7A, v204, 2u);
    }

    v65 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
    v189 = v65;
    if (NFIsInternalBuild() && ([v65 objectForKey:@"fakeDriverInitResult"], v66 = objc_claimAutoreleasedReturnValue(), v66, v66))
    {
      Stack = [v65 integerForKey:@"fakeDriverInitResult"];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v68 = NFLogGetLogger();
      if (v68)
      {
        v69 = v68;
        v70 = object_getClass(a1);
        v71 = class_isMetaClass(v70);
        v72 = v3;
        v73 = object_getClassName(a1);
        v182 = sel_getName("_openDriver:");
        v74 = 45;
        if (v71)
        {
          v74 = 43;
        }

        v177 = v73;
        v3 = v72;
        v69(4, "%c[%{public}s %{public}s]:%i Faking driver init failure; error code=%d", v74, v177, v182, 1848, Stack);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v75 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        v76 = object_getClass(a1);
        if (class_isMetaClass(v76))
        {
          v77 = 43;
        }

        else
        {
          v77 = 45;
        }

        v78 = object_getClassName(a1);
        v79 = sel_getName("_openDriver:");
        *v204 = 67110146;
        *&v204[4] = v77;
        *&v204[8] = 2082;
        *&v204[10] = v78;
        *&v204[18] = 2082;
        *&v204[20] = v79;
        *&v204[28] = 1024;
        *&v204[30] = 1848;
        *&v204[34] = 1024;
        *&v204[36] = Stack;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Faking driver init failure; error code=%d", v204, 0x28u);
      }

      sleep(2u);
    }

    else
    {
      if ((*(a1 + 175) & 1) == 0)
      {
        *(a1 + 173);
      }

      if ([v65 BOOLForKey:@"DisableFWCompatibilityCheck"])
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v103 = NFLogGetLogger();
        if (v103)
        {
          v104 = v103;
          v105 = object_getClass(a1);
          v106 = class_isMetaClass(v105);
          v107 = v3;
          v108 = object_getClassName(a1);
          v183 = sel_getName("_openDriver:");
          v109 = 45;
          if (v106)
          {
            v109 = 43;
          }

          v178 = v108;
          v3 = v107;
          v104(4, "%c[%{public}s %{public}s]:%i Disabling FW compatibility check", v109, v178, v183, 1858);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v110 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
        {
          v111 = object_getClass(a1);
          if (class_isMetaClass(v111))
          {
            v112 = 43;
          }

          else
          {
            v112 = 45;
          }

          v113 = object_getClassName(a1);
          v114 = sel_getName("_openDriver:");
          *v204 = 67109890;
          *&v204[4] = v112;
          *&v204[8] = 2082;
          *&v204[10] = v113;
          *&v204[18] = 2082;
          *&v204[20] = v114;
          *&v204[28] = 1024;
          *&v204[30] = 1858;
          _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Disabling FW compatibility check", v204, 0x22u);
        }
      }

      v115 = +[NFCALogger sharedCALogger];
      v116 = [v115 getTimestamp];
      v117 = *(a1 + 8);
      Stack = NFDriverLoadStack();
      v118 = [v115 getDurationFrom:v116];
      if (Stack)
      {
        v119 = v118;
        v120 = Stack;
        v121 = 0;
      }

      else
      {
        memset(v204, 0, 44);
        v124 = *(a1 + 8);
        NFDriverGetControllerInfo();
        v121 = [v115 getHardwareTypeForCA:*&v204[4]];
        v119 = v118;
        v120 = 0;
      }

      sub_1000603BC(NFHardwareEventCALogger, v119, v120, v121);
    }

    v125 = v189;
    if (!Stack)
    {
      v144 = NFSharedSignpostLog();
      if (os_signpost_enabled(v144))
      {
        *v204 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v144, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DRIVER_LOAD_STACK", "success", v204, 2u);
      }

      v22 = 0;
      *(a1 + 256) = 1;
      *(a1 + 175) = 0;
      goto LABEL_98;
    }

    if (Stack == 24)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v126 = NFLogGetLogger();
      if (v126)
      {
        v127 = v126;
        v128 = object_getClass(a1);
        v129 = class_isMetaClass(v128);
        v130 = object_getClassName(a1);
        v184 = sel_getName("_openDriver:");
        v131 = 45;
        if (v129)
        {
          v131 = 43;
        }

        v127(3, "%c[%{public}s %{public}s]:%i Stack not loaded, NFCC is download mode", v131, v130, v184, 1900);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v132 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
      {
        v133 = object_getClass(a1);
        if (class_isMetaClass(v133))
        {
          v134 = 43;
        }

        else
        {
          v134 = 45;
        }

        v135 = object_getClassName(a1);
        v136 = sel_getName("_openDriver:");
        *v204 = 67109890;
        *&v204[4] = v134;
        *&v204[8] = 2082;
        *&v204[10] = v135;
        *&v204[18] = 2082;
        *&v204[20] = v136;
        *&v204[28] = 1024;
        *&v204[30] = 1900;
        _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Stack not loaded, NFCC is download mode", v204, 0x22u);
      }

      v137 = NFSharedSignpostLog();
      if (os_signpost_enabled(v137))
      {
        *v204 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v137, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DRIVER_LOAD_STACK", "limited", v204, 2u);
      }

      *(a1 + 256) = 4;
      *(a1 + 175) = 1;
      v138 = [NSError alloc];
      v139 = [NSString stringWithUTF8String:"nfcd"];
      v192[0] = NSLocalizedDescriptionKey;
      v140 = [NSString stringWithUTF8String:"NFCC is in Download mode. NCI not available."];
      v193[0] = v140;
      v193[1] = &off_1003361F8;
      v192[1] = @"Line";
      v192[2] = @"Method";
      v141 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_openDriver:")];
      v193[2] = v141;
      v192[3] = NSDebugDescriptionErrorKey;
      v142 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_openDriver:"), 1904];
      v193[3] = v142;
      v143 = [NSDictionary dictionaryWithObjects:v193 forKeys:v192 count:4];
      v22 = [v138 initWithDomain:v139 code:56 userInfo:v143];

      v125 = v189;
LABEL_98:

LABEL_99:
      v123 = v22;
      v122 = v123;
LABEL_100:

      goto LABEL_101;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v146 = NFLogGetLogger();
    if (v146)
    {
      v147 = v146;
      v148 = object_getClass(a1);
      v149 = class_isMetaClass(v148);
      v150 = v3;
      v151 = object_getClassName(a1);
      v185 = sel_getName("_openDriver:");
      v152 = 45;
      if (v149)
      {
        v152 = 43;
      }

      v179 = v151;
      v3 = v150;
      v147(3, "%c[%{public}s %{public}s]:%i Failed to start stack : %d", v152, v179, v185, 1877, Stack);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v153 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
    {
      v154 = object_getClass(a1);
      if (class_isMetaClass(v154))
      {
        v155 = 43;
      }

      else
      {
        v155 = 45;
      }

      v156 = object_getClassName(a1);
      v157 = sel_getName("_openDriver:");
      *v204 = 67110146;
      *&v204[4] = v155;
      *&v204[8] = 2082;
      *&v204[10] = v156;
      *&v204[18] = 2082;
      *&v204[20] = v157;
      *&v204[28] = 1024;
      *&v204[30] = 1877;
      *&v204[34] = 1024;
      *&v204[36] = Stack;
      _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to start stack : %d", v204, 0x28u);
    }

    v158 = NFSharedSignpostLog();
    if (os_signpost_enabled(v158))
    {
      *v204 = 67109120;
      *&v204[4] = Stack;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v158, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DRIVER_LOAD_STACK", "failure (%d)", v204, 8u);
    }

    sub_10022F438(NFDailyStatisticsCALogger, @"loadStackErrorCount");
    *(a1 + 256) = 2;
    v188 = v3;
    if ((Stack & 0xFFFFFFFE) == 0x10)
    {
      sub_100199974(NFBugCapture, @"NFC controller in bad state", @"NFC controller in bad state", 0);
      v186 = [NSError alloc];
      v159 = [NSString stringWithUTF8String:"nfcd"];
      v200[0] = NSLocalizedDescriptionKey;
      v160 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      v201[0] = v160;
      v201[1] = &off_100336198;
      v200[1] = @"Line";
      v200[2] = @"Method";
      v161 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_openDriver:")];
      v201[2] = v161;
      v200[3] = NSDebugDescriptionErrorKey;
      v162 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_openDriver:"), 1884];
      v201[3] = v162;
      v163 = [NSDictionary dictionaryWithObjects:v201 forKeys:v200 count:4];
      v164 = [v186 initWithDomain:v159 code:58 userInfo:v163];

      [NFExceptionsCALogger postAnalyticsSEFailureEvent:4 context:@"NFC controller in bad state" error:v164];
LABEL_124:
      v175 = *(a1 + 8);
      NFDriverClose();
      *(a1 + 8) = 0;
      v123 = v164;

      v3 = v188;
      v122 = v123;
      goto LABEL_100;
    }

    v187 = [NSError alloc];
    v165 = [NSString stringWithUTF8String:"nfcd"];
    if (Stack == 14)
    {
      v196[0] = NSLocalizedDescriptionKey;
      v166 = [NSString stringWithUTF8String:"Bad firmware"];
      v197[0] = v166;
      v197[1] = &off_1003361C8;
      v196[1] = @"Line";
      v196[2] = @"Method";
      v167 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_openDriver:")];
      v197[2] = v167;
      v196[3] = NSDebugDescriptionErrorKey;
      v168 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_openDriver:"), 1891];
      v197[3] = v168;
      v169 = v197;
      v170 = v196;
    }

    else
    {
      if (Stack != 2)
      {
        v194[0] = NSLocalizedDescriptionKey;
        v166 = [NSString stringWithUTF8String:"Stack Error"];
        v195[0] = v166;
        v195[1] = &off_1003361E0;
        v194[1] = @"Line";
        v194[2] = @"Method";
        v167 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_openDriver:")];
        v195[2] = v167;
        v194[3] = NSDebugDescriptionErrorKey;
        v168 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_openDriver:"), 1893];
        v195[3] = v168;
        v171 = [NSDictionary dictionaryWithObjects:v195 forKeys:v194 count:4];
        v172 = v187;
        v173 = v165;
        v174 = 15;
        goto LABEL_123;
      }

      v198[0] = NSLocalizedDescriptionKey;
      v166 = [NSString stringWithUTF8String:"Bad firmware"];
      v199[0] = v166;
      v199[1] = &off_1003361B0;
      v198[1] = @"Line";
      v198[2] = @"Method";
      v167 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_openDriver:")];
      v199[2] = v167;
      v198[3] = NSDebugDescriptionErrorKey;
      v168 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_openDriver:"), 1889];
      v199[3] = v168;
      v169 = v199;
      v170 = v198;
    }

    v171 = [NSDictionary dictionaryWithObjects:v169 forKeys:v170 count:4];
    v172 = v187;
    v173 = v165;
    v174 = 55;
LABEL_123:
    v164 = [v172 initWithDomain:v173 code:v174 userInfo:v171];

    goto LABEL_124;
  }

  v122 = 0;
LABEL_101:

  return v122;
}

void sub_10021CAB4(uint64_t a1)
{
  if (a1)
  {
    if (NFProductHasThermistor())
    {
      v2 = objc_opt_new();
      v3 = *(a1 + 48);
      *(a1 + 48) = v2;

      v4 = sub_1001E6C10(*(a1 + 48));
      objc_initWeak(&location, a1);
      v5 = [NFTimer alloc];
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_10022442C;
      v17 = &unk_1003161B0;
      objc_copyWeak(v19, &location);
      v18 = a1;
      v19[1] = "_openDriverFinalizer";
      v6 = [v5 initWithCallback:&v14 queue:*(a1 + 136)];
      v7 = *(a1 + 96);
      *(a1 + 96) = v6;

      objc_destroyWeak(v19);
      objc_destroyWeak(&location);
    }

    [*(a1 + 208) handleStackLoad];
    [*(a1 + 56) stackLoaded:*(a1 + 136)];
    v8 = [[NSDate alloc] initWithTimeIntervalSinceNow:0.0];
    v9 = *(a1 + 40);
    *(a1 + 40) = v8;

    if ((*(a1 + 250) & 2) != 0)
    {
      v10 = *(a1 + 8);
      [*(a1 + 232) bytes];
      [*(a1 + 232) length];
      NFDriverSetChipscope();
    }

    v11 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
    if (NFIsInternalBuild())
    {
      v12 = [v11 objectForKey:@"smbLogEnabled"];

      if (v12)
      {
        if ([v11 BOOLForKey:@"smbLogEnabled"])
        {
          v13 = *(a1 + 8);
          NFDriverEnableSMBLogging();
        }
      }
    }
  }
}

void sub_10021CC94(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    v5 = [*(v4 + 16) objectForKey:v3];
    v6 = v5;
    if (v5 && [v5 intValue])
    {
      v7 = [v6 intValue];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      v9 = Logger;
      if (v7 == 1)
      {
        if (Logger)
        {
          Class = object_getClass(v4);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(v4);
          Name = sel_getName("closeSession:");
          v12 = 45;
          if (isMetaClass)
          {
            v12 = 43;
          }

          v9(6, "%c[%{public}s %{public}s]:%i Closing session on behalf of %{public}@", v12, ClassName, Name, 430, v3);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v13 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = object_getClass(v4);
          if (class_isMetaClass(v14))
          {
            v15 = 43;
          }

          else
          {
            v15 = 45;
          }

          *buf = 67110146;
          v59 = v15;
          v60 = 2082;
          v61 = object_getClassName(v4);
          v62 = 2082;
          v63 = sel_getName("closeSession:");
          v64 = 1024;
          v65 = 430;
          v66 = 2114;
          v67 = v3;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Closing session on behalf of %{public}@", buf, 0x2Cu);
        }

        [*(v4 + 16) removeObjectForKey:v3];
      }

      else
      {
        if (Logger)
        {
          v44 = object_getClass(v4);
          v45 = class_isMetaClass(v44);
          v55 = object_getClassName(v4);
          v57 = sel_getName("closeSession:");
          v46 = 45;
          if (v45)
          {
            v46 = 43;
          }

          v9(6, "%c[%{public}s %{public}s]:%i Decrementing session on behalf of %{public}@", v46, v55, v57, 433, v3);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v47 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = object_getClass(v4);
          if (class_isMetaClass(v48))
          {
            v49 = 43;
          }

          else
          {
            v49 = 45;
          }

          *buf = 67110146;
          v59 = v49;
          v60 = 2082;
          v61 = object_getClassName(v4);
          v62 = 2082;
          v63 = sel_getName("closeSession:");
          v64 = 1024;
          v65 = 433;
          v66 = 2114;
          v67 = v3;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Decrementing session on behalf of %{public}@", buf, 0x2Cu);
        }

        v50 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 intValue] - 1);
        [*(v4 + 16) setObject:v50 forKeyedSubscript:v3];
      }

      v51 = *(v4 + 40);
      if (v51 <= 0)
      {
        v53 = +[NSAssertionHandler currentHandler];
        [v53 handleFailureInMethod:"closeSession:" object:v4 file:@"NFDriverWrapper.m" lineNumber:437 description:@"Session over released"];

        v51 = *(v4 + 40);
      }

      v52 = v51 - 1;
      *(v4 + 40) = v52;
      if (!v52)
      {
        *(v4 + 169) = 1;
        sub_10021D4E8(v4, 0);
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v17 = v16;
        v18 = object_getClass(v4);
        v19 = class_isMetaClass(v18);
        v20 = object_getClassName(v4);
        v21 = sel_getName("closeSession:");
        v22 = [*(v4 + 16) objectForKeyedSubscript:v3];
        v23 = 45;
        if (v19)
        {
          v23 = 43;
        }

        v17(3, "%c[%{public}s %{public}s]:%i Owner %{public}@ does not have a session : %{public}@", v23, v20, v21, 423, v3, v22);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = object_getClass(v4);
        if (class_isMetaClass(v25))
        {
          v26 = 43;
        }

        else
        {
          v26 = 45;
        }

        v27 = object_getClassName(v4);
        v28 = sel_getName("closeSession:");
        v29 = [*(v4 + 16) objectForKeyedSubscript:v3];
        *buf = 67110402;
        v59 = v26;
        v60 = 2082;
        v61 = v27;
        v62 = 2082;
        v63 = v28;
        v64 = 1024;
        v65 = 423;
        v66 = 2114;
        v67 = v3;
        v68 = 2114;
        v69 = v29;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Owner %{public}@ does not have a session : %{public}@", buf, 0x36u);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFLogGetLogger();
      if (v30)
      {
        v31 = v30;
        v32 = object_getClass(v4);
        v33 = class_isMetaClass(v32);
        v34 = object_getClassName(v4);
        v35 = sel_getName("closeSession:");
        v36 = 45;
        if (v33)
        {
          v36 = 43;
        }

        v31(3, "%c[%{public}s %{public}s]:%i Session Owners: %{public}@", v36, v34, v35, 424, *(v4 + 16));
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v37 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = object_getClass(v4);
        if (class_isMetaClass(v38))
        {
          v39 = 43;
        }

        else
        {
          v39 = 45;
        }

        v40 = object_getClassName(v4);
        v41 = sel_getName("closeSession:");
        v42 = *(v4 + 16);
        *buf = 67110146;
        v59 = v39;
        v60 = 2082;
        v61 = v40;
        v62 = 2082;
        v63 = v41;
        v64 = 1024;
        v65 = 424;
        v66 = 2114;
        v67 = v42;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session Owners: %{public}@", buf, 0x2Cu);
      }

      if (NFIsInternalBuild())
      {
        v43 = +[NSAssertionHandler currentHandler];
        [v43 handleFailureInMethod:"closeSession:" object:v4 file:@"NFDriverWrapper.m" lineNumber:426 description:@"driver session not held"];
      }
    }

    objc_sync_exit(v4);
  }
}

void sub_10021D334(void *a1)
{
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("stopNow");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i Closing driver now !", v7, ClassName, Name, 452);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
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

      *buf = 67109890;
      v14 = v10;
      v15 = 2082;
      v16 = object_getClassName(a1);
      v17 = 2082;
      v18 = sel_getName("stopNow");
      v19 = 1024;
      v20 = 452;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Closing driver now !", buf, 0x22u);
    }

    v11 = a1;
    objc_sync_enter(v11);
    v11[169] = 1;
    sub_10021D4E8(v11, 1);
    objc_sync_exit(v11);
  }
}

void sub_10021D4E8(uint64_t a1, char a2)
{
  if (a1 && *(a1 + 8))
  {
    kdebug_trace();
    v4 = NFSharedSignpostLog();
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRIVER_CLOSE", &unk_1002E8B7A, buf, 2u);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_closeDriver:");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i stopping stack", v10, ClassName, Name, 2008);
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

      v14 = object_getClassName(a1);
      v15 = sel_getName("_closeDriver:");
      *buf = 67109890;
      v26 = v13;
      v27 = 2082;
      v28 = v14;
      v29 = 2082;
      v30 = v15;
      v31 = 1024;
      v32 = 2008;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i stopping stack", buf, 0x22u);
    }

    [*(a1 + 80) stopTimer];
    [*(a1 + 88) stopTimer];
    [*(a1 + 96) stopTimer];
    v16 = *(a1 + 96);
    *(a1 + 96) = 0;

    if ((a2 & 1) == 0)
    {
      [*(a1 + 56) stackUnloaded];
      v17 = *(a1 + 56);
      *(a1 + 56) = 0;

      sub_100003678(a1);
      [*(a1 + 208) handleStackUnload];
      v18 = sub_1001E6E54(*(a1 + 48));
      v19 = *(a1 + 48);
      *(a1 + 48) = 0;
    }

    v20 = *(a1 + 8);
    NFDriverUnloadStackAndLeaveHWEnabled();
    v21 = *(a1 + 8);
    NFDriverClose();
    *(a1 + 8) = 0;
    v22 = *(a1 + 40);
    *(a1 + 40) = 0;

    v23 = *(a1 + 120);
    *(a1 + 120) = 0;
  }
}

BOOL sub_10021D78C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 objectForKeyedSubscript:@"atx"];
    v6 = [v5 unsignedIntValue];

    v7 = *(a1 + 200);
    v8 = v7 != v6;
    if (v7 != v6)
    {
      *(a1 + 200) = v6;
    }

    v9 = [v4 objectForKeyedSubscript:@"chipscope"];
    v10 = *(a1 + 232);
    if (!v10 && v9 || v10 && !v9 || v10 && v9 && ([v10 isEqualToData:v9] & 1) == 0)
    {
      objc_storeStrong((a1 + 232), v9);
      v8 = 1;
    }

    v11 = [v4 objectForKeyedSubscript:@"flags"];
    v12 = [v11 unsignedLongValue];

    if (*(a1 + 248) != v12)
    {
      *(a1 + 248) = v12;
      v8 = 1;
    }

    v13 = [v4 objectForKeyedSubscript:@"pollPeriod"];
    v14 = [v13 unsignedIntValue];

    if (*(a1 + 180) != v14)
    {
      *(a1 + 180) = v14;
      v8 = 1;
    }

    v15 = [v4 objectForKeyedSubscript:@"multiTagPollPeriod"];
    v16 = [v15 unsignedIntValue];

    if (*(a1 + 184) != v16)
    {
      *(a1 + 184) = v16;
      v8 = 1;
    }

    v17 = [v4 objectForKeyedSubscript:@"multiTagPollRetries"];
    v18 = [v17 unsignedIntValue];

    if (*(a1 + 188) != v18)
    {
      *(a1 + 188) = v18;
      v8 = 1;
    }

    v19 = [v4 objectForKeyedSubscript:@"typeATagDataRate"];
    v20 = [v19 unsignedIntValue];

    if (*(a1 + 64) != v20)
    {
      *(a1 + 64) = v20;
      v8 = 1;
    }

    v21 = [v4 objectForKeyedSubscript:@"ntag5DataRate"];
    v22 = [v21 unsignedIntValue];

    if (*(a1 + 192) != v22)
    {
      *(a1 + 192) = v22;
      v8 = 1;
    }

    v23 = [v4 objectForKeyedSubscript:@"ntag5T1"];
    v24 = [v23 unsignedIntValue];

    if (*(a1 + 196) != v24)
    {
      *(a1 + 196) = v24;
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_10021D9F4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  if ((*(v1 + 169) & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(v1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v1);
      Name = sel_getName("restartDriver");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i re-starting the driver..", v7, ClassName, Name, 530);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = object_getClass(v1);
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      *buf = 67109890;
      v30 = v10;
      v31 = 2082;
      v32 = object_getClassName(v1);
      v33 = 2082;
      v34 = sel_getName("restartDriver");
      v35 = 1024;
      v36 = 530;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i re-starting the driver..", buf, 0x22u);
    }

    sub_10021D4E8(v1, 0);
    v11 = sub_10021B0D8(v1, @"restart");
    if (v11)
    {
      v12 = v11;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFLogGetLogger();
      if (v13)
      {
        v14 = v13;
        v15 = object_getClass(v1);
        v16 = class_isMetaClass(v15);
        v26 = object_getClassName(v1);
        v28 = sel_getName("restartDriver");
        v17 = 45;
        if (v16)
        {
          v17 = 43;
        }

        v14(3, "%c[%{public}s %{public}s]:%i failed to re-start the driver! error=%@", v17, v26, v28, 534, v12);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = object_getClass(v1);
        if (class_isMetaClass(v19))
        {
          v20 = 43;
        }

        else
        {
          v20 = 45;
        }

        v21 = object_getClassName(v1);
        v22 = sel_getName("restartDriver");
        *buf = 67110146;
        v30 = v20;
        v31 = 2082;
        v32 = v21;
        v33 = 2082;
        v34 = v22;
        v35 = 1024;
        v36 = 534;
        v37 = 2112;
        v38 = v12;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i failed to re-start the driver! error=%@", buf, 0x2Cu);
      }

      v23 = *(v1 + 1);
      NFDriverSimulateCrash();

      v24 = 0;
      goto LABEL_25;
    }

    sub_10021CAB4(v1);
  }

  v24 = 1;
LABEL_25:
  objc_sync_exit(v1);

  return v24;
}

uint64_t sub_10021DD20(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    if (*(v4 + 169))
    {
      v5 = 1;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(v4);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v4);
        Name = sel_getName("runActionWithoutMiddleware:");
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v7(6, "%c[%{public}s %{public}s]:%i re-starting the driver..", v11, ClassName, Name, 552);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = object_getClass(v4);
        if (class_isMetaClass(v13))
        {
          v14 = 43;
        }

        else
        {
          v14 = 45;
        }

        *buf = 67109890;
        v33 = v14;
        v34 = 2082;
        v35 = object_getClassName(v4);
        v36 = 2082;
        v37 = sel_getName("runActionWithoutMiddleware:");
        v38 = 1024;
        v39 = 552;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i re-starting the driver..", buf, 0x22u);
      }

      sub_10021D4E8(v4, 0);
      v5 = v3[2](v3);
      v15 = sub_10021B0D8(v4, @"restart");
      if (v15)
      {
        v16 = v15;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v17 = NFLogGetLogger();
        if (v17)
        {
          v18 = v17;
          v19 = object_getClass(v4);
          v20 = class_isMetaClass(v19);
          v29 = object_getClassName(v4);
          v31 = sel_getName("runActionWithoutMiddleware:");
          v21 = 45;
          if (v20)
          {
            v21 = 43;
          }

          v18(3, "%c[%{public}s %{public}s]:%i failed to re-start the driver! error=%@", v21, v29, v31, 560, v16);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v22 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = object_getClass(v4);
          if (class_isMetaClass(v23))
          {
            v24 = 43;
          }

          else
          {
            v24 = 45;
          }

          v25 = object_getClassName(v4);
          v26 = sel_getName("runActionWithoutMiddleware:");
          *buf = 67110146;
          v33 = v24;
          v34 = 2082;
          v35 = v25;
          v36 = 2082;
          v37 = v26;
          v38 = 1024;
          v39 = 560;
          v40 = 2112;
          v41 = v16;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i failed to re-start the driver! error=%@", buf, 0x2Cu);
        }

        v27 = *(v4 + 1);
        NFDriverSimulateCrash();

        v5 = 0;
      }

      else
      {
        sub_10021CAB4(v4);
      }
    }

    objc_sync_exit(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10021E074(uint64_t a1)
{
  if (a1)
  {
    [*(a1 + 72) lock];
    v2 = *(a1 + 104);
    [*(a1 + 72) unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10021E0D0(uint64_t a1)
{
  if (a1)
  {
    [*(a1 + 72) lock];
    v2 = *(a1 + 170);
    [*(a1 + 80) stopTimer];
    [*(a1 + 88) stopTimer];
    [*(a1 + 72) unlock];
    if (v2 == 1)
    {
      v3 = *(a1 + 136);
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_10021E188;
      v4[3] = &unk_100315F58;
      v4[4] = a1;
      v4[5] = "_resetFieldState";
      dispatch_async(v3, v4);
    }
  }
}

void sub_10021E188(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i Forcing field exit on state reset", v7, ClassName, Name, 739);
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
    v15 = v10;
    v16 = 2082;
    v17 = v11;
    v18 = 2082;
    v19 = v12;
    v20 = 1024;
    v21 = 739;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Forcing field exit on state reset", buf, 0x22u);
  }

  sub_100003678(*(a1 + 32));
}

void sub_10021E30C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = *(a1 + 224);
    v3 = a2;
    [v2 driverRequestService:v3];
  }
}

uint64_t sub_10021E364(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("restartDiscovery");
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 1565);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
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

    *buf = 67109890;
    v16 = v10;
    v17 = 2082;
    v18 = object_getClassName(a1);
    v19 = 2082;
    v20 = sel_getName("restartDiscovery");
    v21 = 1024;
    v22 = 1565;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v11 = a1;
  objc_sync_enter(v11);
  if (v11[169])
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_100220BD0(v11);
  }

  objc_sync_exit(v11);

  return v12;
}

void *sub_10021E530(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = [NSNumber numberWithBool:*(v1 + 169)];
    [v2 setObject:v3 forKeyedSubscript:@"isClosing"];

    v4 = [NSNumber numberWithBool:*(v1 + 170)];
    [v2 setObject:v4 forKeyedSubscript:@"FieldON"];

    v5 = [NSNumber numberWithBool:*(v1 + 168)];
    [v2 setObject:v5 forKeyedSubscript:@"TechnologySent"];

    v6 = v1[7];
    if (v6)
    {
      v7 = [v6 state];
      [v2 setObject:v7 forKeyedSubscript:@"Reader Policy"];
    }

    else
    {
      [v2 setObject:&stru_10031EA18 forKeyedSubscript:@"Reader Policy"];
    }

    v8 = [[NSDictionary alloc] initWithDictionary:v1[16]];
    [v2 setObject:v8 forKeyedSubscript:@"driverSessionOpened"];

    v9 = [NSNumber numberWithInt:*(v1 + 40)];
    [v2 setObject:v9 forKeyedSubscript:@"driverSessionCount"];

    v1 = [[NSDictionary alloc] initWithDictionary:v2];
  }

  return v1;
}

uint64_t sub_10021E6CC(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  objc_sync_enter(v3);
  if (!*(v3 + 1))
  {
    v104 = +[NSAssertionHandler currentHandler];
    [v104 handleFailureInMethod:"getControllerInfo:" object:v3 file:@"NFDriverWrapper.m" lineNumber:1179 description:@"driver not open"];

    v105 = *(v3 + 1);
  }

  v127 = 0u;
  memset(v128, 0, 28);
  ControllerInfo = NFDriverGetControllerInfo();
  if ((ControllerInfo & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("getControllerInfo:");
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Failed to get info", v11, ClassName, Name, 1183);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(v3);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      *buf = 67109890;
      v134 = v14;
      v135 = 2082;
      v136 = object_getClassName(v3);
      v137 = 2082;
      v138 = sel_getName("getControllerInfo:");
      v139 = 1024;
      v140 = 1183;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get info", buf, 0x22u);
    }

    goto LABEL_100;
  }

  v124 = ControllerInfo;
  v123 = a2;
  if ((NF_isFeatureSupported() & 1) == 0)
  {
    v15 = v3;
    objc_sync_enter(v15);
    if (v15[169] == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v17 = v16;
        v18 = object_getClass(v15);
        v19 = class_isMetaClass(v18);
        v20 = object_getClassName(v15);
        v108 = sel_getName("isHostWakeCapable:");
        v21 = 45;
        if (v19)
        {
          v21 = 43;
        }

        v17(6, "%c[%{public}s %{public}s]:%i Driver is closed", v21, v20, v108, 2144);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v22 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = object_getClass(v15);
        if (class_isMetaClass(v23))
        {
          v24 = 43;
        }

        else
        {
          v24 = 45;
        }

        *buf = 67109890;
        v134 = v24;
        v135 = 2082;
        v136 = object_getClassName(v15);
        v137 = 2082;
        v138 = sel_getName("isHostWakeCapable:");
        v139 = 1024;
        v140 = 2144;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Driver is closed", buf, 0x22u);
      }

      v25 = [NSError alloc];
      v26 = [NSString stringWithUTF8String:"nfcd"];
      v131[0] = NSLocalizedDescriptionKey;
      v27 = [NSString stringWithUTF8String:"Aborted"];
      v132[0] = v27;
      v132[1] = &off_100336240;
      v131[1] = @"Line";
      v131[2] = @"Method";
      v28 = [[NSString alloc] initWithFormat:@"%s", sel_getName("isHostWakeCapable:")];
      v132[2] = v28;
      v131[3] = NSDebugDescriptionErrorKey;
      v29 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("isHostWakeCapable:"), 2145];
      v132[3] = v29;
      v30 = [NSDictionary dictionaryWithObjects:v132 forKeys:v131 count:4];
      v31 = v25;
      v32 = v26;
      v33 = 3;
    }

    else
    {
      if (*(v3 + 1))
      {
        IsHostWakeCapable = NFDriverIsHostWakeCapable();
        objc_sync_exit(v15);

        v34 = 0;
LABEL_56:

        goto LABEL_58;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v35 = NFLogGetLogger();
      if (v35)
      {
        v36 = v35;
        v37 = object_getClass(v15);
        v38 = class_isMetaClass(v37);
        v39 = object_getClassName(v15);
        v40 = sel_getName("isHostWakeCapable:");
        if (*(v3 + 1))
        {
          v41 = "open";
        }

        else
        {
          v41 = "closed";
        }

        v42 = 45;
        if (v38)
        {
          v42 = 43;
        }

        v36(6, "%c[%{public}s %{public}s]:%i Driver is %s", v42, v39, v40, 2151, v41);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v43 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = object_getClass(v15);
        if (class_isMetaClass(v44))
        {
          v45 = 43;
        }

        else
        {
          v45 = 45;
        }

        v46 = object_getClassName(v15);
        v47 = sel_getName("isHostWakeCapable:");
        if (*(v3 + 1))
        {
          v48 = "open";
        }

        else
        {
          v48 = "closed";
        }

        *buf = 67110146;
        v134 = v45;
        v135 = 2082;
        v136 = v46;
        v137 = 2082;
        v138 = v47;
        v139 = 1024;
        v140 = 2151;
        v141 = 2080;
        v142 = v48;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Driver is %s", buf, 0x2Cu);
      }

      v49 = [NSError alloc];
      v26 = [NSString stringWithUTF8String:"nfcd"];
      v129[0] = NSLocalizedDescriptionKey;
      v27 = [NSString stringWithUTF8String:"Invalid State"];
      v130[0] = v27;
      v130[1] = &off_100336258;
      v129[1] = @"Line";
      v129[2] = @"Method";
      v28 = [[NSString alloc] initWithFormat:@"%s", sel_getName("isHostWakeCapable:")];
      v130[2] = v28;
      v129[3] = NSDebugDescriptionErrorKey;
      v29 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("isHostWakeCapable:"), 2152];
      v130[3] = v29;
      v30 = [NSDictionary dictionaryWithObjects:v130 forKeys:v129 count:4];
      v31 = v49;
      v32 = v26;
      v33 = 12;
    }

    v50 = [v31 initWithDomain:v32 code:v33 userInfo:v30];

    objc_sync_exit(v15);
    if (!v50)
    {
      IsHostWakeCapable = 0;
      goto LABEL_58;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v51 = NFLogGetLogger();
    if (v51)
    {
      v52 = v51;
      v53 = object_getClass(v15);
      v54 = class_isMetaClass(v53);
      v55 = object_getClassName(v15);
      v109 = sel_getName("getControllerInfo:");
      v56 = 45;
      if (v54)
      {
        v56 = 43;
      }

      v52(3, "%c[%{public}s %{public}s]:%i Error querying wake capability", v56, v55, v109, 1191);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v57 = object_getClass(v15);
      if (class_isMetaClass(v57))
      {
        v58 = 43;
      }

      else
      {
        v58 = 45;
      }

      v59 = object_getClassName(v15);
      v60 = sel_getName("getControllerInfo:");
      *buf = 67109890;
      v134 = v58;
      v135 = 2082;
      v136 = v59;
      v137 = 2082;
      v138 = v60;
      v139 = 1024;
      v140 = 1191;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error querying wake capability", buf, 0x22u);
    }

    IsHostWakeCapable = 0;
    goto LABEL_56;
  }

  IsHostWakeCapable = 1;
LABEL_58:
  v120 = [NFHardwareControllerInfo alloc];
  v125[0] = @"siliconVersion";
  v12 = [NSNumber numberWithUnsignedInt:v127];
  v126[0] = v12;
  v125[1] = @"siliconName";
  v122 = [NSNumber numberWithUnsignedInt:DWORD1(v127)];
  v126[1] = v122;
  v125[2] = @"ROMVersion";
  v121 = [NSNumber numberWithUnsignedInt:DWORD2(v127)];
  v126[2] = v121;
  v125[3] = @"firmwareVersion";
  v61 = [NSNumber numberWithUnsignedInt:HIDWORD(v127)];
  v126[3] = v61;
  v125[4] = @"firmwareRevision";
  v119 = [NSNumber numberWithUnsignedInt:v128[0]];
  v126[4] = v119;
  v125[5] = @"middlewareVersion";
  v118 = [NSNumber numberWithUnsignedInt:v128[1]];
  v126[5] = v118;
  v125[6] = @"hasAntenna";
  v117 = [NSNumber numberWithBool:v3[173]];
  v126[6] = v117;
  v125[7] = @"hasMFW";
  v116 = [NSNumber numberWithBool:*(*(v3 + 1) + 58)];
  v126[7] = v116;
  v125[8] = @"hasHLMSupport";
  v115 = [NSNumber numberWithBool:*(*(v3 + 1) + 64)];
  v126[8] = v115;
  v125[9] = @"hasLPEMSupport";
  v114 = [NSNumber numberWithInt:sub_1001A9C94(v3)];
  v126[9] = v114;
  v125[10] = @"hasCarKeySupport";
  if (v3[173] != 1)
  {
    goto LABEL_62;
  }

  if (!NFProductIsPhone())
  {
    IsWatch = NFProductIsWatch();
    if (DWORD1(v127) > 7)
    {
      v62 = IsWatch;
    }

    else
    {
      v62 = 0;
    }

    goto LABEL_66;
  }

  if (DWORD1(v127) >= 8)
  {
    v62 = sub_1001A9C94(v3);
  }

  else
  {
LABEL_62:
    v62 = 0;
  }

LABEL_66:
  v64 = [NSNumber numberWithInt:v62];
  v126[10] = v64;
  v125[11] = @"hasReaderModeSupport";
  v65 = +[NSUserDefaults standardUserDefaults];
  v66 = [v65 BOOLForKey:@"ReaderMode"];

  if (v66)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v67 = NFLogGetLogger();
    if (v67)
    {
      v68 = v67;
      v69 = object_getClass(v3);
      v70 = class_isMetaClass(v69);
      v71 = v61;
      v72 = IsHostWakeCapable;
      v73 = object_getClassName(v3);
      v110 = sel_getName("_supportsReaderMode");
      v74 = 45;
      if (v70)
      {
        v74 = 43;
      }

      v106 = v73;
      IsHostWakeCapable = v72;
      v61 = v71;
      v68(4, "%c[%{public}s %{public}s]:%i Defaults override for reader mode", v74, v106, v110, 1472);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v75 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v76 = object_getClass(v3);
      if (class_isMetaClass(v76))
      {
        v77 = 43;
      }

      else
      {
        v77 = 45;
      }

      v78 = v61;
      v79 = IsHostWakeCapable;
      v80 = object_getClassName(v3);
      v81 = sel_getName("_supportsReaderMode");
      *buf = 67109890;
      v134 = v77;
      v135 = 2082;
      v136 = v80;
      IsHostWakeCapable = v79;
      v61 = v78;
      v137 = 2082;
      v138 = v81;
      v139 = 1024;
      v140 = 1472;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Defaults override for reader mode", buf, 0x22u);
    }

    LOBYTE(v75) = 1;
  }

  else
  {
    LODWORD(v75) = NFProductSupportsNFCReader();
    if (NFIsInternalBuild() && v3[173] != v75)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v82 = NFLogGetLogger();
      if (v82)
      {
        log = v82;
        v83 = object_getClass(v3);
        v84 = IsHostWakeCapable;
        v85 = class_isMetaClass(v83);
        v86 = object_getClassName(v3);
        v87 = sel_getName("_supportsReaderMode");
        v88 = @"NO";
        if (v3[173])
        {
          v89 = @"YES";
        }

        else
        {
          v89 = @"NO";
        }

        if (v75)
        {
          v88 = @"YES";
        }

        v111 = v89;
        v90 = !v85;
        IsHostWakeCapable = v84;
        v91 = 45;
        if (!v90)
        {
          v91 = 43;
        }

        (log)(3, "%c[%{public}s %{public}s]:%i DeviceSupportsNFC result does not match!!! hasAntenna=%{public}@,  expected=%{public}@", v91, v86, v87, 1500, v111, v88);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v92 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        v93 = object_getClass(v3);
        loga = v92;
        if (class_isMetaClass(v93))
        {
          v94 = 43;
        }

        else
        {
          v94 = 45;
        }

        v95 = IsHostWakeCapable;
        v96 = object_getClassName(v3);
        v97 = sel_getName("_supportsReaderMode");
        v98 = @"NO";
        if (v3[173])
        {
          v99 = @"YES";
        }

        else
        {
          v99 = @"NO";
        }

        *buf = 67110402;
        if (v75)
        {
          v98 = @"YES";
        }

        v134 = v94;
        v92 = loga;
        v135 = 2082;
        v136 = v96;
        IsHostWakeCapable = v95;
        v137 = 2082;
        v138 = v97;
        v139 = 1024;
        v140 = 1500;
        v141 = 2114;
        v142 = v99;
        v143 = 2114;
        v144 = v98;
        _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i DeviceSupportsNFC result does not match!!! hasAntenna=%{public}@,  expected=%{public}@", buf, 0x36u);
      }

      LOBYTE(v75) = v3[173];
    }
  }

  v100 = [NSNumber numberWithInt:v75 & 1];
  v126[11] = v100;
  v125[12] = @"poweredRunDuringSleep";
  v101 = [NSNumber numberWithBool:IsHostWakeCapable];
  v126[12] = v101;
  v102 = [NSDictionary dictionaryWithObjects:v126 forKeys:v125 count:13];
  *v123 = [(NFHardwareControllerInfo *)v120 initWithDictionary:v102];

  ControllerInfo = v124;
LABEL_100:

  objc_sync_exit(v3);
  return ControllerInfo;
}

unint64_t sub_10021F57C(unint64_t result)
{
  if (result >= 3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Returning NFSecureElementRoutingOff because of invalid mode.", "[NFDriverWrapper _asSecureElementRouting:]", 1230);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v2 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v4 = "[NFDriverWrapper _asSecureElementRouting:]";
      v5 = 1024;
      v6 = 1230;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Returning NFSecureElementRoutingOff because of invalid mode.", buf, 0x12u);
    }

    return 0;
  }

  return result;
}

id sub_10021F67C(void *a1, void *a2)
{
  v3 = a2;
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
      Name = sel_getName("setRouting:");
      if ([v3 fdOn])
      {
        v10 = "yes";
      }

      else
      {
        v10 = "no";
      }

      v129 = v10;
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i FieldDetect=%s : Routing %{public}@", v11, ClassName, Name, 1256, v129, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
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
      v16 = sel_getName("setRouting:");
      *buf = 67110402;
      if ([v3 fdOn])
      {
        v17 = "yes";
      }

      else
      {
        v17 = "no";
      }

      v143 = v14;
      v144 = 2082;
      v145 = v15;
      v146 = 2082;
      v147 = v16;
      v148 = 1024;
      v149 = 1256;
      v150 = 2080;
      v151 = v17;
      v152 = 2114;
      v153 = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i FieldDetect=%s : Routing %{public}@", buf, 0x36u);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v19 = v18;
      v20 = object_getClass(a1);
      v21 = class_isMetaClass(v20);
      v22 = object_getClassName(a1);
      v23 = sel_getName("setRouting:");
      v24 = 45;
      if (v21)
      {
        v24 = 43;
      }

      v19(6, "%c[%{public}s %{public}s]:%i current routing: %{public}@", v24, v22, v23, 1257, a1[15]);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = object_getClass(a1);
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      v28 = object_getClassName(a1);
      v29 = sel_getName("setRouting:");
      v30 = a1[15];
      *buf = 67110146;
      v143 = v27;
      v144 = 2082;
      v145 = v28;
      v146 = 2082;
      v147 = v29;
      v148 = 1024;
      v149 = 1257;
      v150 = 2114;
      v151 = v30;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i current routing: %{public}@", buf, 0x2Cu);
    }

    v31 = [v3 fdOn];
    v32 = [v3 wantsCardEmulation];
    v33 = [v3 pollingType];
    v34 = [v3 wantsExpress];
    v35 = [v3 wantsSEReader];
    v36 = a1;
    objc_sync_enter(v36);
    if (v36[169] == 1)
    {
      v37 = [NSError alloc];
      v38 = [NSString stringWithUTF8String:"nfcd"];
      v140[0] = NSLocalizedDescriptionKey;
      v39 = [NSString stringWithUTF8String:"Aborted"];
      v141[0] = v39;
      v141[1] = &off_100336108;
      v140[1] = @"Line";
      v140[2] = @"Method";
      v40 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setRouting:")];
      v141[2] = v40;
      v140[3] = NSDebugDescriptionErrorKey;
      v41 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setRouting:"), 1271];
      v141[3] = v41;
      v42 = [NSDictionary dictionaryWithObjects:v141 forKeys:v140 count:4];
      v43 = v37;
      v44 = v38;
      v45 = 3;
LABEL_135:
      v109 = [v43 initWithDomain:v44 code:v45 userInfo:v42];

      goto LABEL_136;
    }

    if (!*(v36 + 1))
    {
      v124 = +[NSAssertionHandler currentHandler];
      [v124 handleFailureInMethod:"setRouting:" object:v36 file:@"NFDriverWrapper.m" lineNumber:1274 description:@"driver not open"];
    }

    v46 = *(v36 + 15);
    if (v46 && sub_10004B630(v46, v3) && (v31 == [*(v36 + 15) fdOn] || objc_msgSend(v3, "fieldDetectType") == 3))
    {
      v47 = NFSharedSignpostLog();
      if (os_signpost_enabled(v47))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SetRoutingConfigInDriverWrapper", "No changes necessary", buf, 2u);
      }

      goto LABEL_122;
    }

    v134 = v35;
    if ([v3 pollingType] == 1 || objc_msgSend(v3, "pollingType") == 2)
    {
      [v3 polling];
      [v3 tagDiscoveryConfig];
      sub_1001E0DA4(v36);
    }

    [*(v36 + 9) lock];
    v48 = v36[170];
    *(v36 + 41) = 1;
    [*(v36 + 9) unlock];
    if ([v3 embeddedMode] == 1)
    {
      v49 = 0.0;
      if (v48)
      {
        if (v36[176])
        {
          v49 = 1.0;
        }

        else
        {
          v49 = 0.5;
        }
      }

      goto LABEL_62;
    }

    if ([v3 embeddedMode] == 2)
    {
      if (v48)
      {
        v49 = 0.5;
      }

      else
      {
        v49 = 0.0;
      }
    }

    else
    {
      v49 = 0.0;
      if ([v3 embeddedMode] || v36[32] != 1)
      {
        goto LABEL_62;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFLogGetLogger();
      if (v50)
      {
        v51 = v50;
        v52 = object_getClass(v36);
        v130 = class_isMetaClass(v52);
        log = object_getClassName(v36);
        v125 = sel_getName("setRouting:");
        v53 = 45;
        if (v130)
        {
          v53 = 43;
        }

        v51(6, "%c[%{public}s %{public}s]:%i Resetting applet state", v53, log, v125, 1324);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v54 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = object_getClass(v36);
        if (class_isMetaClass(v55))
        {
          v56 = 43;
        }

        else
        {
          v56 = 45;
        }

        v131 = v56;
        loga = v54;
        v57 = object_getClassName(v36);
        v58 = sel_getName("setRouting:");
        *buf = 67109890;
        v143 = v131;
        v144 = 2082;
        v145 = v57;
        v54 = loga;
        v146 = 2082;
        v147 = v58;
        v148 = 1024;
        v149 = 1324;
        _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Resetting applet state", buf, 0x22u);
      }
    }

    v36[32] = 0;
LABEL_62:
    v59 = [v3 hostMode] == 2;
    v60 = 0.5;
    if ((v59 & v48 & (v49 == 0.0)) == 0)
    {
      v60 = v49;
    }

    if ((v48 & (v60 == 0.0)) != 0)
    {
      v61 = 1.0;
    }

    else
    {
      v61 = v60;
    }

    if ((v32 | v34))
    {
      *(*(v36 + 1) + 59) = sub_100207B18(*(v36 + 14), 0);
    }

    if (v32)
    {
      [v3 cardEmulationType];
    }

    if (v33)
    {
      if (v33 == 3)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v62 = NFLogGetLogger();
        if (v62)
        {
          v63 = v62;
          v64 = object_getClass(v36);
          v65 = class_isMetaClass(v64);
          v66 = object_getClassName(v36);
          v126 = sel_getName("setRouting:");
          v67 = 45;
          if (v65)
          {
            v67 = 43;
          }

          v63(6, "%c[%{public}s %{public}s]:%i MultiTag Detection enabled", v67, v66, v126, 1362);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v68 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v69 = object_getClass(v36);
          if (class_isMetaClass(v69))
          {
            v70 = 43;
          }

          else
          {
            v70 = 45;
          }

          v71 = object_getClassName(v36);
          v72 = sel_getName("setRouting:");
          *buf = 67109890;
          v143 = v70;
          v144 = 2082;
          v145 = v71;
          v146 = 2082;
          v147 = v72;
          v148 = 1024;
          v149 = 1362;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i MultiTag Detection enabled", buf, 0x22u);
        }
      }

      [v3 pollingDuration];
      sub_1001E0E74(v36);
      if ([*(v36 + 7) readerModeProtectionActive])
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v73 = NFLogGetLogger();
        if (v73)
        {
          v74 = v73;
          v75 = object_getClass(v36);
          v76 = class_isMetaClass(v75);
          v77 = object_getClassName(v36);
          v78 = sel_getName("setRouting:");
          v79 = [*(v36 + 7) state];
          v80 = 45;
          if (v76)
          {
            v80 = 43;
          }

          v74(4, "%c[%{public}s %{public}s]:%i Denying reader mode, protection active. state=%@", v80, v77, v78, 1369, v79);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v81 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          v82 = object_getClass(v36);
          if (class_isMetaClass(v82))
          {
            v83 = 43;
          }

          else
          {
            v83 = 45;
          }

          v84 = object_getClassName(v36);
          v85 = sel_getName("setRouting:");
          v86 = [*(v36 + 7) state];
          *buf = 67110146;
          v143 = v83;
          v144 = 2082;
          v145 = v84;
          v146 = 2082;
          v147 = v85;
          v148 = 1024;
          v149 = 1369;
          v150 = 2112;
          v151 = v86;
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Denying reader mode, protection active. state=%@", buf, 0x2Cu);
        }

        v87 = [NSError alloc];
        v38 = [NSString stringWithUTF8String:"nfcd"];
        v138[0] = NSLocalizedDescriptionKey;
        v39 = [NSString stringWithUTF8String:"Reader mode temporarily disabled"];
        v139[0] = v39;
        v139[1] = &off_100336120;
        v138[1] = @"Line";
        v138[2] = @"Method";
        v40 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setRouting:")];
        v139[2] = v40;
        v138[3] = NSDebugDescriptionErrorKey;
        v41 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setRouting:"), 1370];
        v139[3] = v41;
        v42 = [NSDictionary dictionaryWithObjects:v139 forKeys:v138 count:4];
        v43 = v87;
        v44 = v38;
        v45 = 47;
        goto LABEL_135;
      }
    }

    else
    {
      sub_1001E0E74(v36);
      sub_1001E6EFC(*(v36 + 6), 0);
      if ([*(v36 + 7) readerModeStoppedShouldCooloffRun])
      {
        v88 = sub_10021A4A0(v36, @"Cooloff", 1uLL);
      }
    }

    v89 = [v3 lpcdEcpFrame];

    if (v89)
    {
      v90 = [v3 lpcdEcpFrame];
      [v90 bytes];
      v91 = [v3 lpcdEcpFrame];
      [v91 length];
      NFDataCreateWithBytes();
    }

    v92 = v3;
    [v92 wantsExpress];
    [v92 wantsIsoDepToHost];
    sub_10021F57C([v92 embeddedMode]);
    v93 = [v92 hostMode];

    sub_10021F57C(v93);
    v94 = NFSharedSignpostLog();
    if (os_signpost_enabled(v94))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v94, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SET_SE_ROUTING", "NFDriverSetConfiguration", buf, 2u);
    }

    v95 = mach_absolute_time();
    v96 = *(v36 + 1);
    if ((NFDriverSetConfiguration() & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v110 = NFLogGetLogger();
      if (v110)
      {
        v111 = v110;
        v112 = object_getClass(v36);
        v113 = class_isMetaClass(v112);
        v114 = object_getClassName(v36);
        v128 = sel_getName("setRouting:");
        v115 = 45;
        if (v113)
        {
          v115 = 43;
        }

        v111(3, "%c[%{public}s %{public}s]:%i Failed to set configuration", v115, v114, v128, 1403);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v116 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
      {
        v117 = object_getClass(v36);
        if (class_isMetaClass(v117))
        {
          v118 = 43;
        }

        else
        {
          v118 = 45;
        }

        v119 = object_getClassName(v36);
        v120 = sel_getName("setRouting:");
        *buf = 67109890;
        v143 = v118;
        v144 = 2082;
        v145 = v119;
        v146 = 2082;
        v147 = v120;
        v148 = 1024;
        v149 = 1403;
        _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set configuration", buf, 0x22u);
      }

      v121 = NFSharedSignpostLog();
      if (os_signpost_enabled(v121))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v121, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SET_SE_ROUTING", "Error in NFDriverSetConfiguration", buf, 2u);
      }

      NFDataRelease();
      v122 = [NSError alloc];
      v38 = [NSString stringWithUTF8String:"nfcd"];
      v136[0] = NSLocalizedDescriptionKey;
      v39 = [NSString stringWithUTF8String:"Stack Error"];
      v137[0] = v39;
      v137[1] = &off_100336138;
      v136[1] = @"Line";
      v136[2] = @"Method";
      v40 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setRouting:")];
      v137[2] = v40;
      v136[3] = NSDebugDescriptionErrorKey;
      v41 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setRouting:"), 1406];
      v137[3] = v41;
      v42 = [NSDictionary dictionaryWithObjects:v137 forKeys:v136 count:4];
      v43 = v122;
      v44 = v38;
      v45 = 15;
      goto LABEL_135;
    }

    NFDataRelease();
    objc_storeStrong(v36 + 15, a2);
    v97 = NFSharedSignpostLog();
    if (os_signpost_enabled(v97))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v97, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SET_SE_ROUTING", "NFDriverSetConfiguration", buf, 2u);
    }

    if (v134 && v36[32] == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v98 = NFLogGetLogger();
      if (v98)
      {
        v99 = v98;
        v100 = object_getClass(v36);
        v101 = class_isMetaClass(v100);
        v102 = object_getClassName(v36);
        v127 = sel_getName("setRouting:");
        v103 = 45;
        if (v101)
        {
          v103 = 43;
        }

        v99(6, "%c[%{public}s %{public}s]:%i Reader starting and Applet is ready.", v103, v102, v127, 1413);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v104 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        v105 = object_getClass(v36);
        if (class_isMetaClass(v105))
        {
          v106 = 43;
        }

        else
        {
          v106 = 45;
        }

        v107 = object_getClassName(v36);
        v108 = sel_getName("setRouting:");
        *buf = 67109890;
        v143 = v106;
        v144 = 2082;
        v145 = v107;
        v146 = 2082;
        v147 = v108;
        v148 = 1024;
        v149 = 1413;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Reader starting and Applet is ready.", buf, 0x22u);
      }
    }

    if (v61 != 0.0)
    {
      [*(v36 + 9) lock];
      if (v36[170] == 1 && v95 > *(v36 + 19))
      {
        if (*(v36 + 41) == 1)
        {
          [*(v36 + 11) startTimer:v61];
        }

        *(v36 + 41) = 0;
      }

      [*(v36 + 9) unlock];
    }

LABEL_122:
    v109 = 0;
LABEL_136:
    objc_sync_exit(v36);

    goto LABEL_137;
  }

  v109 = 0;
LABEL_137:

  return v109;
}

void sub_1002208E4(void *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v5 = a1;
    objc_sync_enter(v5);
    if ((*(v5 + 169) & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(v5);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v5);
        Name = sel_getName("setExpressConfig:updateLPEMConfig:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v7(6, "%c[%{public}s %{public}s]:%i 0x%04x", v10, ClassName, Name, 1443, a2);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = object_getClass(v5);
        if (class_isMetaClass(v12))
        {
          v13 = 43;
        }

        else
        {
          v13 = 45;
        }

        *buf = 67110146;
        v31 = v13;
        v32 = 2082;
        v33 = object_getClassName(v5);
        v34 = 2082;
        v35 = sel_getName("setExpressConfig:updateLPEMConfig:");
        v36 = 1024;
        v37 = 1443;
        v38 = 1024;
        v39 = a2;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i 0x%04x", buf, 0x28u);
      }

      v14 = *(v5 + 1);
      NFDriverSetExpressConfig();
      if (a3)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v15 = NFLogGetLogger();
        if (v15)
        {
          v16 = v15;
          v17 = object_getClass(v5);
          v18 = class_isMetaClass(v17);
          v19 = object_getClassName(v5);
          v29 = sel_getName("setExpressConfig:updateLPEMConfig:");
          v20 = 45;
          if (v18)
          {
            v20 = 43;
          }

          v16(6, "%c[%{public}s %{public}s]:%i Updating the express config", v20, v19, v29, 1446);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v21 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = object_getClass(v5);
          if (class_isMetaClass(v22))
          {
            v23 = 43;
          }

          else
          {
            v23 = 45;
          }

          v24 = object_getClassName(v5);
          v25 = sel_getName("setExpressConfig:updateLPEMConfig:");
          *buf = 67109890;
          v31 = v23;
          v32 = 2082;
          v33 = v24;
          v34 = 2082;
          v35 = v25;
          v36 = 1024;
          v37 = 1446;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Updating the express config", buf, 0x22u);
        }

        v26 = *(v5 + 1);
        NFDriverSetHeadlessMode();
      }
    }

    objc_sync_exit(v5);
  }
}

uint64_t sub_100220BD0(uint64_t a1)
{
  if (*(*(a1 + 8) + 32))
  {
    v2 = [*(a1 + 56) readerModeProtectionActive];
  }

  else
  {
    v2 = 0;
  }

  sub_1001E6EFC(*(a1 + 48), 0);
  if ([*(a1 + 56) readerModeStoppedShouldCooloffRun])
  {
    v2 = 1;
    v3 = sub_10021A4A0(a1, @"Cooloff", 1);
  }

  [*(a1 + 72) lock];
  v4 = *(a1 + 170);
  if (v4 == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_restartDiscoveryWithReconfig:");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i Restarting field coalescing timer", v10, ClassName, Name, 1539);
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
      v32 = v13;
      v33 = 2082;
      v34 = object_getClassName(a1);
      v35 = 2082;
      v36 = sel_getName("_restartDiscoveryWithReconfig:");
      v37 = 1024;
      v38 = 1539;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restarting field coalescing timer", buf, 0x22u);
    }

    [*(a1 + 88) stopTimer];
    [*(a1 + 88) startTimer:0.5];
  }

  [*(a1 + 72) unlock];
  v14 = *(a1 + 8);
  restarted = NFDriverRestartDiscovery();
  if ((v2 & restarted) == 1)
  {
    v16 = 1;
    sub_1001E6EFC(*(a1 + 48), 1);
    [*(a1 + 56) triggerBurnoutTimer];
  }

  else
  {
    v16 = restarted;
    if (((restarted | v4 ^ 1) & 1) == 0)
    {
      [*(a1 + 72) lock];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFLogGetLogger();
      if (v17)
      {
        v18 = v17;
        v19 = object_getClass(a1);
        v20 = class_isMetaClass(v19);
        v21 = object_getClassName(a1);
        v30 = sel_getName("_restartDiscoveryWithReconfig:");
        v22 = 45;
        if (v20)
        {
          v22 = 43;
        }

        v18(4, "%c[%{public}s %{public}s]:%i Stopping coalescing timer as restart discovery failed", v22, v21, v30, 1555);
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
        v27 = sel_getName("_restartDiscoveryWithReconfig:");
        *buf = 67109890;
        v32 = v25;
        v33 = 2082;
        v34 = v26;
        v35 = 2082;
        v36 = v27;
        v37 = 1024;
        v38 = 1555;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Stopping coalescing timer as restart discovery failed", buf, 0x22u);
      }

      [*(a1 + 88) stopTimer];
      [*(a1 + 72) unlock];
      return 0;
    }
  }

  return v16;
}

uint64_t sub_100220F6C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("resumeDiscovery");
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 1577);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
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

    *buf = 67109890;
    v16 = v10;
    v17 = 2082;
    v18 = object_getClassName(a1);
    v19 = 2082;
    v20 = sel_getName("resumeDiscovery");
    v21 = 1024;
    v22 = 1577;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v11 = a1;
  objc_sync_enter(v11);
  if (v11[169])
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_100220BD0(v11);
  }

  objc_sync_exit(v11);

  return v12;
}

id sub_100221138(void *a1)
{
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("getDieID");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 1589);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
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

      *buf = 67109890;
      *&buf[4] = v10;
      v18 = 2082;
      v19 = object_getClassName(a1);
      v20 = 2082;
      v21 = sel_getName("getDieID");
      v22 = 1024;
      v23 = 1589;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    v11 = a1;
    objc_sync_enter(v11);
    if (*(v11 + 169))
    {
      v12 = 0;
    }

    else
    {
      *buf = 0;
      v13 = *(v11 + 1);
      v12 = 0;
      if (NFDriverReadDieID() && *buf)
      {
        v14 = [NSData alloc];
        v12 = [v14 initWithBytesNoCopy:*buf length:0];
      }
    }

    objc_sync_exit(v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void *sub_100221348(void *a1, void *a2)
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
      Name = sel_getName("getUniqueFDRKey:");
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 1612);
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

      *buf = 67109890;
      v37 = v12;
      v38 = 2082;
      v39 = object_getClassName(a1);
      v40 = 2082;
      v41 = sel_getName("getUniqueFDRKey:");
      v42 = 1024;
      v43 = 1612;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    v13 = a1;
    objc_sync_enter(v13);
    if (*(v13 + 169) == 1)
    {
      if (a2)
      {
        v14 = [NSError alloc];
        v15 = [NSString stringWithUTF8String:"nfcd"];
        v34[0] = NSLocalizedDescriptionKey;
        v16 = [NSString stringWithUTF8String:"Aborted"];
        v35[0] = v16;
        v35[1] = &off_100336150;
        v34[1] = @"Line";
        v34[2] = @"Method";
        v17 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getUniqueFDRKey:")];
        v35[2] = v17;
        v34[3] = NSDebugDescriptionErrorKey;
        v18 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getUniqueFDRKey:"), 1616];
        v35[3] = v18;
        v19 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];
        *a2 = [v14 initWithDomain:v15 code:3 userInfo:v19];

LABEL_27:
        a2 = 0;
      }
    }

    else
    {
      if (a2)
      {
        *a2 = 0;
      }

      *buf = 0;
      v20 = *(v13 + 1);
      UniqueFDRKey = NFDriverGetUniqueFDRKey();
      if (UniqueFDRKey)
      {
        v22 = *buf == 0;
      }

      else
      {
        v22 = 0;
      }

      v23 = !v22;
      if (a2 && v23)
      {
        v24 = [NSError alloc];
        v25 = [NSString stringWithUTF8String:"nfcd"];
        v32[0] = NSLocalizedDescriptionKey;
        v26 = [NSString stringWithUTF8String:"Stack Error"];
        v33[0] = v26;
        v33[1] = &off_100336168;
        v32[1] = @"Line";
        v32[2] = @"Method";
        v27 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getUniqueFDRKey:")];
        v33[2] = v27;
        v32[3] = NSDebugDescriptionErrorKey;
        v28 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getUniqueFDRKey:"), 1625];
        v33[3] = v28;
        v29 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];
        *a2 = [v24 initWithDomain:v25 code:15 userInfo:v29];
      }

      if (!UniqueFDRKey)
      {
        goto LABEL_27;
      }

      a2 = [[NSString alloc] initWithUTF8String:UniqueFDRKey];
      free(UniqueFDRKey);
    }

    objc_sync_exit(v13);

    goto LABEL_29;
  }

  a2 = 0;
LABEL_29:

  return a2;
}

id sub_1002217FC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    if (*(v1 + 169))
    {
      v2 = 0;
    }

    else
    {
      v3 = *(v1 + 1);
      v2 = NFDriverCopyAndClearAssertion();
    }

    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id *sub_100221884(id *result, _BYTE *a2, void *a3)
{
  if (result)
  {
    v5 = result;
    [result[9] lock];
    if (a2)
    {
      *a2 = *(v5 + 170);
    }

    if (a3)
    {
      *a3 = v5[13];
    }

    v6 = v5[9];

    return [v6 unlock];
  }

  return result;
}

id sub_1002218F4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    if (*(v1 + 169) == 1)
    {
      v2 = [NSError alloc];
      ErrorCode = [NSString stringWithUTF8String:"nfcd"];
      v13 = NSLocalizedDescriptionKey;
      v4 = [NSString stringWithUTF8String:"Aborted"];
      v14 = v4;
      v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v6 = [v2 initWithDomain:ErrorCode code:3 userInfo:v5];
    }

    else
    {
      v7 = *(v1 + 1);
      if (!NFDriverGetSWIOTemperature())
      {
        v6 = 0;
        goto LABEL_7;
      }

      ErrorCode = NFDriverCreateErrorCode();
      v8 = [NSError alloc];
      v4 = [NSString stringWithUTF8String:"nfcd"];
      v11[0] = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithUTF8String:"Stack Error"];
      v11[1] = NSUnderlyingErrorKey;
      v12[0] = v5;
      v12[1] = ErrorCode;
      v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
      v6 = [v8 initWithDomain:v4 code:15 userInfo:v9];
    }

LABEL_7:
    objc_sync_exit(v1);

    goto LABEL_8;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_100221B00(void *a1, double a2)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    v4 = obj;
    if ((*(obj + 169) & 1) == 0)
    {
      v5 = obj[6];
      if (v5)
      {
        v6 = a2;
        v7 = sub_1001E70A0(v5, v6, v3);
        v4 = obj;
      }
    }

    objc_sync_exit(v4);
  }
}

void sub_100221B80(uint64_t a1, uint64_t a2)
{
  v4 = _os_activity_create(&_mh_execute_header, "NFCC hw reset", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v4, &v5);
  os_activity_scope_leave(&v5);

  if (a1)
  {
    [*(a1 + 208) handleHardwareReset:a2];
  }
}

void sub_100221C00(uint64_t a1, void *a2)
{
  v4 = _os_activity_create(&_mh_execute_header, "NFCC SE aid select", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);
  os_activity_scope_leave(&v9);

  v5 = [[NSData alloc] initWithBytes:*a2 length:a2[1]];
  if (a1)
  {
    v6 = *(a1 + 208);
    v7 = v5;
    v8 = [v7 NF_asHexString];
    [v6 handleSelectEvent:v8];
  }
}

void sub_100221CC8(uint64_t a1, void *a2, void *a3)
{
  v6 = _os_activity_create(&_mh_execute_header, "NFCC SE txn", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v6, state);
  os_activity_scope_leave(state);

  if (a2)
  {
    a2 = [[NSData alloc] initWithBytes:*a2 length:a2[1]];
  }

  if (a3)
  {
    v7 = [[NSData alloc] initWithBytes:*a3 length:a3[1]];
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = v7;
  v10 = v9;
  if (a1)
  {
    if ([v9 length] == 2)
    {
      v11 = [v10 bytes];
      v12 = *v11;
      v13 = v11[1];
      if ((v13 - 12) < 0xFFFFFFFE || (v12 - 5) <= 0xFFFFFFFD)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i Unexpected eventID=0x%x, eventType=0x%x", "ExtractProhibitTimerEvent", 116, v13, v12);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *state = 136446978;
          *&state[4] = "ExtractProhibitTimerEvent";
          *&state[12] = 1024;
          *&state[14] = 116;
          v34 = 1024;
          *v35 = v13;
          *&v35[4] = 1024;
          *&v35[6] = v12;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected eventID=0x%x, eventType=0x%x", state, 0x1Eu);
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v14 = NFLogGetLogger();
        if (v12 == 3)
        {
          if (v13 == 11)
          {
            if (v14)
            {
              v14(5, "%s:%i ProhibitTimer.Host.Start", "ExtractProhibitTimerEvent", 124);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v15 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *state = 136446466;
              *&state[4] = "ExtractProhibitTimerEvent";
              *&state[12] = 1024;
              *&state[14] = 124;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ProhibitTimer.Host.Start", state, 0x12u);
            }

            v16 = 2;
          }

          else
          {
            if (v14)
            {
              v14(5, "%s:%i ProhibitTimer.SE.Start", "ExtractProhibitTimerEvent", 127);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v15 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *state = 136446466;
              *&state[4] = "ExtractProhibitTimerEvent";
              *&state[12] = 1024;
              *&state[14] = 127;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ProhibitTimer.SE.Start", state, 0x12u);
            }

            v16 = 0;
          }
        }

        else if (v13 == 11)
        {
          if (v14)
          {
            v14(5, "%s:%i ProhibitTimer.Host.End", "ExtractProhibitTimerEvent", 132);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v15 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *state = 136446466;
            *&state[4] = "ExtractProhibitTimerEvent";
            *&state[12] = 1024;
            *&state[14] = 132;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ProhibitTimer.Host.End", state, 0x12u);
          }

          v16 = 3;
        }

        else
        {
          if (v14)
          {
            v14(5, "%s:%i ProhibitTimer.SE.End", "ExtractProhibitTimerEvent", 135);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v15 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *state = 136446466;
            *&state[4] = "ExtractProhibitTimerEvent";
            *&state[12] = 1024;
            *&state[14] = 135;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ProhibitTimer.SE.End", state, 0x12u);
          }

          v16 = 1;
        }

        [*(a1 + 208) handleReaderModeProhibitTimerEvent:v16];
      }
    }

    v19 = [[NSData alloc] initWithBytes:&unk_100297C20 length:9];
    v20 = [v8 isEqual:v19];

    if ((v20 & 1) != 0 || *(a1 + 177) != 1)
    {
      [*(a1 + 216) decodeSecureElementTransaction:v8 event:v10];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v21 = NFLogGetLogger();
      if (v21)
      {
        v22 = v21;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("driverSecureElementTransaction:event:");
        v26 = 45;
        if (isMetaClass)
        {
          v26 = 43;
        }

        v22(6, "%c[%{public}s %{public}s]:%i Routing SE transaction event to active session", v26, ClassName, Name, 952);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
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

        v30 = object_getClassName(a1);
        v31 = sel_getName("driverSecureElementTransaction:event:");
        *state = 67109890;
        *&state[4] = v29;
        *&state[8] = 2082;
        *&state[10] = v30;
        v34 = 2082;
        *v35 = v31;
        *&v35[8] = 1024;
        v36 = 952;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Routing SE transaction event to active session", state, 0x22u);
      }

      [*(a1 + 208) handleSecureElementTransactionData:v10 appletIdentifier:v8];
    }
  }
}

void sub_1002222F0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = _os_activity_create(&_mh_execute_header, "NFCC SE restricted mode enter", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v6, &v7);
  os_activity_scope_leave(&v7);

  if (a1)
  {
    [*(a1 + 208) handleSecureElementEnteredRestrictedMode:a2 os:a3];
  }
}

void sub_100222378(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = _os_activity_create(&_mh_execute_header, "NFCC SE restricted mode exit", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v6, &v7);
  os_activity_scope_leave(&v7);

  if (a1)
  {
    [*(a1 + 208) handleSecureElementEnteredRestrictedModeExit:a2 os:a3];
  }
}

void sub_100222400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _os_activity_create(&_mh_execute_header, "NFCC SE removed", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v6, &v7);
  os_activity_scope_leave(&v7);

  if (a1)
  {
    [*(a1 + 208) handleSecureElementRemoved:a2 withReason:a3];
    if (a3 == 33)
    {
      sub_100199974(NFBugCapture, @"Secure Element crashed", @"Secure Element crashed. Reason: 0x21", 0);
      [NFExceptionsCALogger postAnalyticsSEFailureEvent:1 context:@"Secure Element crashed. Reason: 0x21" error:0];
    }
  }
}

void sub_1002224CC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = _os_activity_create(&_mh_execute_header, "NFCC SE OS reset", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v6, &v7);
  os_activity_scope_leave(&v7);

  if (a1)
  {
    [*(a1 + 208) handleSecureElementOSReset:a2 withReason:a3];
  }
}

void sub_100222554(id *a1, uint64_t a2)
{
  v4 = _os_activity_create(&_mh_execute_header, "NFCC HCE dev detected", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v4, &v8);
  os_activity_scope_leave(&v8);

  if (a1)
  {
    v5 = objc_opt_new();
    v7 = v5;
    if (v5)
    {
      objc_setProperty_atomic(v5, v6, a1, 8);
      v7[2] = a2;
    }

    [a1[28] handleHostCardReaderDetected:v7];
  }
}

void sub_100222600(uint64_t a1, unsigned int a2, unsigned __int8 *a3, unsigned int a4)
{
  v8 = _os_activity_create(&_mh_execute_header, "NFCC RF tech ntf", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v8, state);
  os_activity_scope_leave(state);

  v9 = sub_1002259CC(a1, a2, a3, a4, 0);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    if (a1)
    {
      if (*(a1 + 169) == 1)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v13 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("driverDidReceiveTechnologyEvent:");
          v17 = 45;
          if (isMetaClass)
          {
            v17 = 43;
          }

          v13(3, "%c[%{public}s %{public}s]:%i Driver session is closed", v17, ClassName, Name, 901);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
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
          v22 = sel_getName("driverDidReceiveTechnologyEvent:");
          *state = 67109890;
          *&state[4] = v20;
          *&state[8] = 2082;
          *&state[10] = v21;
          v25 = 2082;
          v26 = v22;
          v27 = 1024;
          v28 = 901;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Driver session is closed", state, 0x22u);
        }
      }

      else
      {
        [*(a1 + 72) lock];
        objc_storeStrong((a1 + 104), v10);
        if (*(a1 + 168))
        {
          [*(a1 + 72) unlock];
          [*(a1 + 208) handleFilteredFieldNotification:*(a1 + 104)];
        }

        else
        {
          *(a1 + 168) = 1;
          [*(a1 + 72) unlock];
          [*(a1 + 208) handleFieldNotification:*(a1 + 104)];
        }
      }
    }
  }
}

void sub_10022286C(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "NFCC SE end of operation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  os_activity_scope_leave(&v3);

  if (a1)
  {
    *(a1 + 171) = 1;
    [*(a1 + 208) handleSecureElementEndOfOperation];
  }
}

void sub_1002228E4(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "NFCC SE RAPDU sent", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  os_activity_scope_leave(&v3);

  if (a1)
  {
    *(a1 + 172) = 1;
  }
}

void sub_100222954(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "NFCC PLL unlocked", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  os_activity_scope_leave(&v3);

  if (a1)
  {
    sub_10022F438(NFDailyStatisticsCALogger, @"pllUnlock");
  }
}

void sub_1002229D0(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a3)
  {
    v8 = "NFCC tags detected";
  }

  else
  {
    v8 = "NFCC 0 tag detected";
  }

  v9 = _os_activity_create(&_mh_execute_header, v8, &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v9, &v10);
  os_activity_scope_leave(&v10);

  sub_1001979AC(a1, a2, a3, a4);
}

void sub_100222A74(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "NFCC express txn", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  os_activity_scope_leave(&v3);

  if (a1)
  {
    [*(a1 + 224) driverExpressModeExited];
  }
}

void sub_100222AE4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = _os_activity_create(&_mh_execute_header, "NFCC typeF request service ntf", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v6, &v8);
  os_activity_scope_leave(&v8);

  if (a2)
  {
    v7 = [[NSData alloc] initWithBytes:a2 length:a3];
    sub_10021E30C(a1, v7);
  }

  else
  {
    sub_10021E30C(a1, 0);
  }
}

void sub_100222B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = _os_activity_create(&_mh_execute_header, "NFCC RSSI ntf", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v10, &v11);
  os_activity_scope_leave(&v11);

  if (a1)
  {
    [*(a1 + 216) driverRSSIStatsWithTotalSamples:a2 avgRSSI:a3 maxRSSI:a4 minRSSI:a5];
  }
}

void sub_100222C38(void *a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5)
{
  v10 = _os_activity_create(&_mh_execute_header, "NFCC express txn/w RF", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v10, state);
  os_activity_scope_leave(state);

  v11 = a1;
  v12 = sub_1002259CC(v11, a3, a4, a5, 1);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    if (!v11)
    {
LABEL_59:

      goto LABEL_60;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v16 = Logger;
      Class = object_getClass(v11);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v11);
      Name = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
      v20 = 45;
      if (isMetaClass)
      {
        v20 = 43;
      }

      v16(6, "%c[%{public}s %{public}s]:%i expressType: %d RfTech:%{public}@", v20, ClassName, Name, 845, a2, v14);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = object_getClass(v11);
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      v24 = object_getClassName(v11);
      v25 = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
      *state = 67110402;
      *&state[4] = v23;
      *&state[8] = 2082;
      *&state[10] = v24;
      v79 = 2082;
      v80 = v25;
      v81 = 1024;
      v82 = 845;
      v83 = 1024;
      v84 = a2;
      v85 = 2114;
      v86 = v14;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i expressType: %d RfTech:%{public}@", state, 0x32u);
    }

    objc_storeStrong(v11 + 13, v13);
    if (a2 <= 1)
    {
      if (!a2)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v27 = NFLogGetLogger();
        if (v27)
        {
          v28 = v27;
          v29 = object_getClass(v11);
          v30 = class_isMetaClass(v29);
          v31 = object_getClassName(v11);
          v74 = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
          v32 = 45;
          if (v30)
          {
            v32 = 43;
          }

          v28(4, "%c[%{public}s %{public}s]:%i Ignoring Express type None", v32, v31, v74, 881);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v33 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        v34 = object_getClass(v11);
        if (class_isMetaClass(v34))
        {
          v35 = 43;
        }

        else
        {
          v35 = 45;
        }

        v36 = object_getClassName(v11);
        v37 = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
        *state = 67109890;
        *&state[4] = v35;
        *&state[8] = 2082;
        *&state[10] = v36;
        v79 = 2082;
        v80 = v37;
        v81 = 1024;
        v82 = 881;
        v38 = "%c[%{public}s %{public}s]:%i Ignoring Express type None";
        goto LABEL_56;
      }

      if (a2 != 1)
      {
LABEL_34:
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v39 = NFLogGetLogger();
        if (v39)
        {
          v40 = v39;
          v41 = object_getClass(v11);
          v42 = class_isMetaClass(v41);
          v43 = object_getClassName(v11);
          v75 = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
          v44 = 45;
          if (v42)
          {
            v44 = 43;
          }

          v40(4, "%c[%{public}s %{public}s]:%i Unknown express type", v44, v43, v75, 884);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v33 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        v45 = object_getClass(v11);
        if (class_isMetaClass(v45))
        {
          v46 = 43;
        }

        else
        {
          v46 = 45;
        }

        v47 = object_getClassName(v11);
        v48 = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
        *state = 67109890;
        *&state[4] = v46;
        *&state[8] = 2082;
        *&state[10] = v47;
        v79 = 2082;
        v80 = v48;
        v81 = 1024;
        v82 = 884;
        v38 = "%c[%{public}s %{public}s]:%i Unknown express type";
        goto LABEL_56;
      }

      if ([v14 typeFSystemCode] == 768)
      {
        v26 = 1;
        goto LABEL_24;
      }

      if ([v14 typeFSystemCode] == 2176)
      {
        v26 = 5;
        goto LABEL_24;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v61 = NFLogGetLogger();
      if (v61)
      {
        v62 = v61;
        v63 = object_getClass(v11);
        v64 = class_isMetaClass(v63);
        v65 = object_getClassName(v11);
        v66 = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
        v77 = [v14 typeFSystemCode];
        v67 = 45;
        if (v64)
        {
          v67 = 43;
        }

        v62(4, "%c[%{public}s %{public}s]:%i Type-F express entered for unknown system code 0x%x?", v67, v65, v66, 863, v77);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v68 = object_getClass(v11);
        if (class_isMetaClass(v68))
        {
          v69 = 43;
        }

        else
        {
          v69 = 45;
        }

        v70 = object_getClassName(v11);
        v71 = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
        v72 = [v14 typeFSystemCode];
        *state = 67110146;
        *&state[4] = v69;
        *&state[8] = 2082;
        *&state[10] = v70;
        v79 = 2082;
        v80 = v71;
        v81 = 1024;
        v82 = 863;
        v83 = 1024;
        v84 = v72;
        v38 = "%c[%{public}s %{public}s]:%i Type-F express entered for unknown system code 0x%x?";
        v59 = v33;
        v60 = 40;
        goto LABEL_57;
      }
    }

    else
    {
      if (a2 != 2)
      {
        if (a2 == 4)
        {
          v26 = 3;
          goto LABEL_24;
        }

        if (a2 == 32)
        {
          v26 = 6;
LABEL_24:
          [v11[28] driverExpressModeEntered:v26];
          goto LABEL_59;
        }

        goto LABEL_34;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = 4;
        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = 2;
        goto LABEL_24;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v49 = NFLogGetLogger();
      if (v49)
      {
        v50 = v49;
        v51 = object_getClass(v11);
        v52 = class_isMetaClass(v51);
        v53 = object_getClassName(v11);
        v76 = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
        v54 = 45;
        if (v52)
        {
          v54 = 43;
        }

        v50(4, "%c[%{public}s %{public}s]:%i VAS express entered but field is non-ECP?", v54, v53, v76, 877);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v55 = object_getClass(v11);
        if (class_isMetaClass(v55))
        {
          v56 = 43;
        }

        else
        {
          v56 = 45;
        }

        v57 = object_getClassName(v11);
        v58 = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
        *state = 67109890;
        *&state[4] = v56;
        *&state[8] = 2082;
        *&state[10] = v57;
        v79 = 2082;
        v80 = v58;
        v81 = 1024;
        v82 = 877;
        v38 = "%c[%{public}s %{public}s]:%i VAS express entered but field is non-ECP?";
LABEL_56:
        v59 = v33;
        v60 = 34;
LABEL_57:
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, v38, state, v60);
      }
    }

LABEL_58:

    goto LABEL_59;
  }

LABEL_60:
}

void sub_100223370(uint64_t a1, int a2, _UNKNOWN **a3)
{
  if (!a1)
  {
    return;
  }

  if (!a3)
  {
    v3 = a2 - 1;
    if (a2 - 1) < 7 && ((0x7Bu >> v3))
    {
      a3 = (&off_10031C4E8)[v3];
LABEL_18:
      [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:a3];
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (a2 > 3)
  {
    a3 = &off_100339E68;
    if (a2 > 5)
    {
      if (a2 != 6)
      {
        if (a2 != 7)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else if (a2 != 4)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (a2 == 1)
  {
LABEL_17:
    a3 = &off_100339E90;
    goto LABEL_18;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      v5 = *(a1 + 56);
      v6 = 0;
      goto LABEL_36;
    }

LABEL_19:
    v7 = +[NSDate now];
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 integerForKey:@"lowTemperatureCount"];
    v10 = [v8 objectForKey:@"lastLowTemperatureDate"];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        [v7 timeIntervalSinceDate:v11];
        if (v12 >= 0.0)
        {
LABEL_24:
          [v8 setInteger:v9 + 1 forKey:@"lowTemperatureCount"];
          [v8 setObject:v7 forKey:@"lastLowTemperatureDate"];
          [v8 synchronize];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            *v14 = 0;
            _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "NFC Controller low temp", v14, 2u);
          }

          if (NFIsInternalBuild())
          {
            sub_100199974(NFBugCapture, @"NFC controller Low Temp", @"NFC controller low temp", 0);
            [NFExceptionsCALogger postAnalyticsSEFailureEvent:2 context:@"NFC controller low temp" error:0];
          }

          else if (v9 < 9 || v11 && ([v7 timeIntervalSinceDate:v11], v13 > 30.0))
          {
            sleep(1u);
            exit(-1);
          }

          return;
        }
      }
    }

    v11 = 0;
    goto LABEL_24;
  }

  [*(a1 + 96) startTimer:5.0];
  if (([*(a1 + 120) wantsReader] & 1) == 0 && !objc_msgSend(*(a1 + 120), "wantsSEReader"))
  {
    a3 = &off_100339E68;
    goto LABEL_18;
  }

  v5 = *(a1 + 56);
  v6 = 4;
LABEL_36:

  [v5 thermalStateChanged:v6];
}

uint64_t sub_100223640(void *a1, void *a2)
{
  v3 = [[NSData alloc] initWithBytes:*a2 length:a2[1]];
  v4 = v3;
  if (a1)
  {
    v6 = v3;
    sub_1001EB93C(a1, v3);
    v4 = v6;
  }

  return _objc_release_x1(v3, v4);
}

void sub_1002236A8(uint64_t a1, int a2, int a3, int a4)
{
  if (a2)
  {
    if (a4)
    {
      v8 = "NFCC SE reader started (ISODEP)";
    }

    else
    {
      v8 = "NFCC SE reader started";
    }
  }

  else if (a4)
  {
    v8 = "NFCC SE reader stopped (ISODEP)";
  }

  else
  {
    v8 = "NFCC SE reader stopped";
  }

  v9 = _os_activity_create(&_mh_execute_header, v8, &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state = 0;
  *state_8 = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  if (a1)
  {
    v10 = @"B";
    if (a3 != 2)
    {
      v10 = @"Unknown";
    }

    if (a3 == 1)
    {
      v10 = @"A";
    }

    v85[0] = @"Polling";
    v85[1] = @"Protocol";
    v11 = @"isoDep";
    if (!a4)
    {
      v11 = @"Unknown";
    }

    v86[0] = v10;
    v86[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:2];
    if (a2)
    {
      if (a3)
      {
        *(a1 + 32) = 1;
        if (*(*(a1 + 8) + 62) == 1)
        {
          v13 = [*(a1 + 56) readerModeProtectionActive];
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          v15 = Logger;
          if (v13)
          {
            if (Logger)
            {
              Class = object_getClass(a1);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(a1);
              Name = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
              v19 = 45;
              if (isMetaClass)
              {
                v19 = 43;
              }

              v15(6, "%c[%{public}s %{public}s]:%i Request to start eSE reader mode while thermal protection active. Dropping.", v19, ClassName, Name, 1056);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v20 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = object_getClass(a1);
              if (class_isMetaClass(v21))
              {
                v22 = 43;
              }

              else
              {
                v22 = 45;
              }

              v23 = object_getClassName(a1);
              v24 = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
              LODWORD(state) = 67109890;
              HIDWORD(state) = v22;
              *state_8 = 2082;
              *&state_8[2] = v23;
              *&state_8[10] = 2082;
              *&state_8[12] = v24;
              *&state_8[20] = 1024;
              *&state_8[22] = 1056;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Request to start eSE reader mode while thermal protection active. Dropping.", &state, 0x22u);
            }

            v81 = @"Error";
            v25 = [NSError alloc];
            v26 = [NSString stringWithUTF8String:"nfcd"];
            v80[0] = NSLocalizedDescriptionKey;
            v27 = [NSString stringWithUTF8String:"Reader mode temporarily disabled"];
            state = v27;
            *state_8 = &off_1003360F0;
            v80[1] = @"Line";
            v80[2] = @"Method";
            v28 = [[NSString alloc] initWithFormat:@"%s", sel_getName("driverSecureElementReaderMode:polling:isoDep:")];
            *&state_8[8] = v28;
            v80[3] = NSDebugDescriptionErrorKey;
            v29 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("driverSecureElementReaderMode:polling:isoDep:"), 1058];
            *&state_8[16] = v29;
            v30 = [NSDictionary dictionaryWithObjects:&state forKeys:v80 count:4];
            v31 = [v25 initWithDomain:v26 code:47 userInfo:v30];
            v82 = v31;
            v32 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];

            v12 = v32;
          }

          else
          {
            if (Logger)
            {
              v66 = object_getClass(a1);
              v67 = class_isMetaClass(v66);
              v68 = object_getClassName(a1);
              v79 = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
              v69 = 45;
              if (v67)
              {
                v69 = 43;
              }

              v15(6, "%c[%{public}s %{public}s]:%i Starting RF reader", v69, v68, v79, 1061);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v70 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              v71 = object_getClass(a1);
              if (class_isMetaClass(v71))
              {
                v72 = 43;
              }

              else
              {
                v72 = 45;
              }

              v73 = object_getClassName(a1);
              v74 = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
              LODWORD(state) = 67109890;
              HIDWORD(state) = v72;
              *state_8 = 2082;
              *&state_8[2] = v73;
              *&state_8[10] = 2082;
              *&state_8[12] = v74;
              *&state_8[20] = 1024;
              *&state_8[22] = 1061;
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Starting RF reader", &state, 0x22u);
            }

            sub_10021E364(a1);
          }
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v55 = NFLogGetLogger();
          if (v55)
          {
            v56 = v55;
            v57 = object_getClass(a1);
            v58 = class_isMetaClass(v57);
            v59 = object_getClassName(a1);
            v78 = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
            v60 = 45;
            if (v58)
            {
              v60 = 43;
            }

            v56(6, "%c[%{public}s %{public}s]:%i Applet requested RF reader", v60, v59, v78, 1069);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v61 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v62 = object_getClass(a1);
            if (class_isMetaClass(v62))
            {
              v63 = 43;
            }

            else
            {
              v63 = 45;
            }

            v64 = object_getClassName(a1);
            v65 = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
            LODWORD(state) = 67109890;
            HIDWORD(state) = v63;
            *state_8 = 2082;
            *&state_8[2] = v64;
            *&state_8[10] = 2082;
            *&state_8[12] = v65;
            *&state_8[20] = 1024;
            *&state_8[22] = 1069;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Applet requested RF reader", &state, 0x22u);
          }
        }

        [*(a1 + 208) handleSecureElementReaderModeStarted:v12];
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v44 = NFLogGetLogger();
        if (v44)
        {
          v45 = v44;
          v46 = object_getClass(a1);
          v47 = class_isMetaClass(v46);
          v48 = object_getClassName(a1);
          v77 = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
          v49 = 45;
          if (v47)
          {
            v49 = 43;
          }

          v45(6, "%c[%{public}s %{public}s]:%i SE reader ready", v49, v48, v77, 1048);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v50 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = object_getClass(a1);
          if (class_isMetaClass(v51))
          {
            v52 = 43;
          }

          else
          {
            v52 = 45;
          }

          v53 = object_getClassName(a1);
          v54 = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
          LODWORD(state) = 67109890;
          HIDWORD(state) = v52;
          *state_8 = 2082;
          *&state_8[2] = v53;
          *&state_8[10] = 2082;
          *&state_8[12] = v54;
          *&state_8[20] = 1024;
          *&state_8[22] = 1048;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i SE reader ready", &state, 0x22u);
        }
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFLogGetLogger();
      if (v33)
      {
        v34 = v33;
        v35 = object_getClass(a1);
        v36 = class_isMetaClass(v35);
        v37 = object_getClassName(a1);
        v76 = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
        v38 = 45;
        if (v36)
        {
          v38 = 43;
        }

        v34(6, "%c[%{public}s %{public}s]:%i Ended reader mode", v38, v37, v76, 1075);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v39 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = object_getClass(a1);
        if (class_isMetaClass(v40))
        {
          v41 = 43;
        }

        else
        {
          v41 = 45;
        }

        v42 = object_getClassName(a1);
        v43 = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
        LODWORD(state) = 67109890;
        HIDWORD(state) = v41;
        *state_8 = 2082;
        *&state_8[2] = v42;
        *&state_8[10] = 2082;
        *&state_8[12] = v43;
        *&state_8[20] = 1024;
        *&state_8[22] = 1075;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Ended reader mode", &state, 0x22u);
      }

      *(a1 + 32) = 0;
      [*(a1 + 208) handleSecureElementReaderModeEnded:v12];
    }
  }
}

void sub_100223F40(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "NFCC tag removed", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(v2, &v4);
  os_activity_scope_leave(&v4);

  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_semaphore_signal(v3);
    }
  }
}

void sub_100223FB4(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "NFCC HCE dev target lost", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  os_activity_scope_leave(&v3);

  sub_1001982E8(a1);
}

void sub_100224020(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "TXLDO Error", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  os_activity_scope_leave(&v3);

  if (a1)
  {
    if (NFIsInternalBuild())
    {
      sub_100199974(NFBugCapture, @"LDO Error detected", @"LDO Error detected", 0);
      [NFExceptionsCALogger postAnalyticsSEFailureEvent:3 context:@"LDO Error detected" error:0];
    }
  }
}

void sub_1002240C8(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "Erase counter exceeded", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  os_activity_scope_leave(&v3);

  if (a1)
  {
    [*(a1 + 208) handleEraseCounterExceeded];
  }
}

void sub_100224138(uint64_t a1, unsigned int *a2)
{
  v4 = _os_activity_create(&_mh_execute_header, "SPMI Error occurred", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  os_activity_scope_leave(&state);

  if (a1)
  {
    v5 = [[NSString alloc] initWithFormat:@"Error Status: 0x%04x, Parity: 0x%08X", *(a2 + 2), *a2];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      LODWORD(state.opaque[0]) = 138412290;
      *(state.opaque + 4) = v5;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "SPMI Error Interrupt received: %@", &state, 0xCu);
    }

    v6 = *a2;
    if (*a2)
    {
      LODWORD(v7) = 0;
      do
      {
        v7 = (v6 & 1) + v7;
        v8 = v6 > 1;
        v6 >>= 1;
      }

      while (v8);
    }

    else
    {
      v7 = 0;
    }

    sub_10022F438(NFDailyStatisticsCALogger, @"spmiErrorCount");
    [NFExceptionsCALogger postAnalyticsHardwareFault:0 errorStatus:*(a2 + 2) parityErrorCount:v7];
    if (NFIsInternalBuild())
    {
      v9 = [[NSString alloc] initWithFormat:@"SPMI Error Interrupt: %@", v5];
      v10 = objc_opt_new();
      v11 = +[NSFileManager defaultManager];
      v12 = [v11 fileExistsAtPath:@"/dev/nfc.log"];

      if (v12)
      {
        v13 = +[NSFileManager defaultManager];
        [v13 copyItemAtPath:@"/dev/nfc.log" toPath:@"var/tmp/nfc.log" error:0];

        [v10 setObject:@"var/tmp/nfc.log" forKeyedSubscript:@"Attachments"];
      }

      sub_100199700(NFBugCapture, v9, @"Purple Stockholm", 0, @"Hardware fault", &stru_10031EA18, v10);
    }
  }
}

void sub_100224390(uint64_t a1, void *a2)
{
  v4 = _os_activity_create(&_mh_execute_header, "MFG command notification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v4, &v6);
  os_activity_scope_leave(&v6);

  if (a1)
  {
    v5 = [NSData dataWithBytes:*a2 length:a2[1]];
    [*(a1 + 208) handlMFWNotification:v5];
  }
}

void sub_10022442C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && [WeakRetained[7] thermalPressureCritical])
  {
    v4 = sub_1002218F4(v3);
    if (!v4)
    {
      v6 = v3[6];
      if (v6)
      {
        v7 = sub_1001E70A0(v6, 0.0, v5);
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v9 = Logger;
          Class = object_getClass(*(a1 + 32));
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(*(a1 + 32));
          Name = sel_getName(*(a1 + 48));
          v13 = 45;
          if (isMetaClass)
          {
            v13 = 43;
          }

          v9(6, "%c[%{public}s %{public}s]:%i Requesting temperature", v13, ClassName, Name, 1936);
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
          v18 = sel_getName(*(a1 + 48));
          *buf = 67109890;
          v21 = v16;
          v22 = 2082;
          v23 = v17;
          v24 = 2082;
          v25 = v18;
          v26 = 1024;
          v27 = 1936;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Requesting temperature", buf, 0x22u);
        }
      }
    }

    [v3[12] startTimer:5.0];
  }
}

void sub_100224618(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = sub_10006841C([NFThermalMonitor alloc], v3);

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100224714;
    v9[3] = &unk_100315F58;
    v9[4] = a1;
    v9[5] = "setPowerConsumptionMonitor:";
    sub_100068AE0(v4, v9);
    ShouldUseLookbackRestrictor = NFPlatformShouldUseLookbackRestrictor();
    v6 = &off_100314CD8;
    if (!ShouldUseLookbackRestrictor)
    {
      v6 = off_100314CD0;
    }

    v7 = [objc_alloc(*v6) initWithThermalMonitor:v4 delegate:a1];
    v8 = *(a1 + 56);
    *(a1 + 56) = v7;
  }
}

void sub_100224714(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i Requesting temperature polling", v7, ClassName, Name, 1969);
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
    v22 = 1969;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Requesting temperature polling", buf, 0x22u);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    [*(v13 + 96) startTimer:5.0];
  }
}

id sub_1002248A4(void *a1, char a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    if (*(v3 + 1))
    {
      *(v3 + 178) = a2;
      NFDriverPreventReset();
      v4 = 0;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName("setPreventReset:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v6(3, "%c[%{public}s %{public}s]:%i No driver !", v10, ClassName, Name, 2133);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = object_getClass(v3);
        if (class_isMetaClass(v12))
        {
          v13 = 43;
        }

        else
        {
          v13 = 45;
        }

        *buf = 67109890;
        v25 = v13;
        v26 = 2082;
        v27 = object_getClassName(v3);
        v28 = 2082;
        v29 = sel_getName("setPreventReset:");
        v30 = 1024;
        v31 = 2133;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No driver !", buf, 0x22u);
      }

      v14 = [NSError alloc];
      v15 = [NSString stringWithUTF8String:"nfcd"];
      v22[0] = NSLocalizedDescriptionKey;
      v16 = [NSString stringWithUTF8String:"Invalid State"];
      v23[0] = v16;
      v23[1] = &off_100336228;
      v22[1] = @"Line";
      v22[2] = @"Method";
      v17 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setPreventReset:")];
      v23[2] = v17;
      v22[3] = NSDebugDescriptionErrorKey;
      v18 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setPreventReset:"), 2134];
      v23[3] = v18;
      v19 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
      v4 = [v14 initWithDomain:v15 code:12 userInfo:v19];
    }

    objc_sync_exit(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100224BB8(void *a1, _BYTE *a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    if (a2)
    {
      v4 = 0;
      *a2 = NFDriverSupportsSecureTimersInOFF();
    }

    else
    {
      v5 = [NSError alloc];
      v6 = [NSString stringWithUTF8String:"nfcd"];
      v12[0] = NSLocalizedDescriptionKey;
      v7 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v13[0] = v7;
      v13[1] = &off_100336270;
      v12[1] = @"Line";
      v12[2] = @"Method";
      v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName("supportsSecureTimersInOFF:")];
      v13[2] = v8;
      v12[3] = NSDebugDescriptionErrorKey;
      v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("supportsSecureTimersInOFF:"), 2166];
      v13[3] = v9;
      v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];
      v4 = [v5 initWithDomain:v6 code:10 userInfo:v10];
    }

    objc_sync_exit(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id *sub_100225100(id *a1, void *a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[7];
    if (v3)
    {
      if ([v3 readerModeProtectionActive])
      {
        [v2[7] expectedBurnoutTime];
      }

      else
      {
        [NSNumber numberWithInt:0];
      }
      a1 = ;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("expectedBurnoutProtectionTime:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v6(3, "%c[%{public}s %{public}s]:%i Error : no policy defined..", v10, ClassName, Name, 2207);
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

        *buf = 67109890;
        v25 = v13;
        v26 = 2082;
        v27 = object_getClassName(v2);
        v28 = 2082;
        v29 = sel_getName("expectedBurnoutProtectionTime:");
        v30 = 1024;
        v31 = 2207;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : no policy defined..", buf, 0x22u);
      }

      if (a2)
      {
        v14 = [NSError alloc];
        v15 = [NSString stringWithUTF8String:"nfcd"];
        v22[0] = NSLocalizedDescriptionKey;
        v16 = [NSString stringWithUTF8String:"Invalid State"];
        v23[0] = v16;
        v23[1] = &off_100336288;
        v22[1] = @"Line";
        v22[2] = @"Method";
        v17 = [[NSString alloc] initWithFormat:@"%s", sel_getName("expectedBurnoutProtectionTime:")];
        v23[2] = v17;
        v22[3] = NSDebugDescriptionErrorKey;
        v18 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("expectedBurnoutProtectionTime:"), 2208];
        v23[3] = v18;
        v19 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
        *a2 = [v14 initWithDomain:v15 code:12 userInfo:v19];
      }

      a1 = 0;
    }
  }

  return a1;
}

double sub_10022541C(void *a1, void *a2)
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = a1[7];
  if (!v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("expectedAllowedReaderTime:");
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Error : no policy defined..", v11, ClassName, Name, 2227);
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

      *buf = 67109890;
      v25 = v14;
      v26 = 2082;
      v27 = object_getClassName(a1);
      v28 = 2082;
      v29 = sel_getName("expectedAllowedReaderTime:");
      v30 = 1024;
      v31 = 2227;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : no policy defined..", buf, 0x22u);
    }

    if (a2)
    {
      v15 = [NSError alloc];
      v16 = [NSString stringWithUTF8String:"nfcd"];
      v22[0] = NSLocalizedDescriptionKey;
      v17 = [NSString stringWithUTF8String:"Invalid State"];
      v23[0] = v17;
      v23[1] = &off_1003362A0;
      v22[1] = @"Line";
      v22[2] = @"Method";
      v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName("expectedAllowedReaderTime:")];
      v23[2] = v18;
      v22[3] = NSDebugDescriptionErrorKey;
      v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("expectedAllowedReaderTime:"), 2228];
      v23[3] = v19;
      v20 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
      *a2 = [v15 initWithDomain:v16 code:12 userInfo:v20];
    }

    return 0.0;
  }

  [v3 maxReaderTime];
  return result;
}

void sub_10022573C(id *a1)
{
  if (a1 && [a1[7] readerModeProtectionActive])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("cancelCooloff");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i Cancelling cooloff session.", v7, ClassName, Name, 2243);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
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

      *buf = 67109890;
      v13 = v10;
      v14 = 2082;
      v15 = object_getClassName(a1);
      v16 = 2082;
      v17 = sel_getName("cancelCooloff");
      v18 = 1024;
      v19 = 2243;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Cancelling cooloff session.", buf, 0x22u);
    }

    sub_10021CC94(a1, @"Cooloff");
  }
}

id sub_1002259CC(id *a1, unsigned int a2, unsigned __int8 *a3, unsigned int a4, int a5)
{
  v5 = a4;
  v6 = a3;
  v8 = a2;
  if ((a2 & 0x10) == 0)
  {
    goto LABEL_13;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    if (a5)
    {
      v11 = "express ";
    }

    else
    {
      v11 = "";
    }

    Logger(4, "%s:%i RF Error found on %sFD (A=%d, B=%d, F=%d, V=%d)", "_NFDriverWrapperProccessRFTechDetectionInfo", 2342, v11, v8 & 1, (v8 >> 1) & 1, (v8 >> 2) & 1, (v8 >> 3) & 1);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    if (a5)
    {
      v13 = "express ";
    }

    else
    {
      v13 = "";
    }

    *buf = 136447746;
    *v56 = "_NFDriverWrapperProccessRFTechDetectionInfo";
    *&v56[8] = 1024;
    *&v56[10] = 2342;
    v57 = 2080;
    *v58 = v13;
    *&v58[8] = 1024;
    *v59 = v8 & 1;
    *&v59[4] = 1024;
    *v60 = (v8 >> 1) & 1;
    *&v60[4] = 1024;
    v61 = (v8 >> 2) & 1;
    v62 = 1024;
    v63 = (v8 >> 3) & 1;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i RF Error found on %sFD (A=%d, B=%d, F=%d, V=%d)", buf, 0x34u);
  }

  v5 = a4;
  v6 = a3;
  if (a5)
  {
LABEL_13:
    v14 = objc_opt_new();
    v15 = v14;
    if ((v8 & 8) != 0 && v6 && v5)
    {
      if (*v6 != 106)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v32 = NFLogGetLogger();
        if (v32)
        {
          v32(3, "%s:%i Houston we have a problem! Payload corrupted without RF errors being set. vData[0] = 0x%X", "_NFDriverWrapperProccessRFTechDetectionInfo", 2386, *v6);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v19 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v33 = *v6;
          *buf = 136446722;
          *v56 = "_NFDriverWrapperProccessRFTechDetectionInfo";
          *&v56[8] = 1024;
          *&v56[10] = 2386;
          v57 = 1024;
          *v58 = v33;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i Houston we have a problem! Payload corrupted without RF errors being set. vData[0] = 0x%X", buf, 0x18u);
        }

        v21 = 0;
        goto LABEL_43;
      }

      [v14 appendBytes:v6 length:v5];
    }

    v16 = ((v8 << 29) >> 31) & HIWORD(a2);
    v53[0] = @"FieldTechnology";
    v17 = [NSNumber numberWithUnsignedInt:v8 & 0xF];
    v54[0] = v17;
    v53[1] = @"SystemCode";
    v18 = [NSNumber numberWithUnsignedShort:v16];
    v53[2] = @"ECPData";
    v54[1] = v18;
    v54[2] = v15;
    v19 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:3];

    v20 = [NFFieldNotification notificationWithDictionary:v19];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFLogGetLogger();
      if (v30)
      {
        v30(3, "%s:%i Error creating field notification", "_NFDriverWrapperProccessRFTechDetectionInfo", 2412);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *v56 = "_NFDriverWrapperProccessRFTechDetectionInfo";
        *&v56[8] = 1024;
        *&v56[10] = 2412;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}s:%i Error creating field notification", buf, 0x12u);
      }
    }

LABEL_43:
    goto LABEL_66;
  }

  if ((v8 & 8) != 0)
  {
    if (!a3 || a4 < 2 || *a3 != 106)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v34 = NFLogGetLogger();
      if (v34)
      {
        v34(3, "%s:%i ECP payload corrupted.", "_NFDriverWrapperProccessRFTechDetectionInfo", 2364);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *buf = 136446466;
      *v56 = "_NFDriverWrapperProccessRFTechDetectionInfo";
      *&v56[8] = 1024;
      *&v56[10] = 2364;
      v27 = "%{public}s:%i ECP payload corrupted.";
      v28 = v25;
      v29 = 18;
LABEL_48:
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
LABEL_49:

      goto LABEL_50;
    }

    v23 = a3[1];
    if (v23 == 1)
    {
      goto LABEL_13;
    }

    if (v23 == 2)
    {
      if (a4 >= 5 && (a3[2] & 0xF) + 5 == a4)
      {
        goto LABEL_13;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v24(3, "%s:%i vDataLen %d does not match with payload length %d + %d bytes of ECP2HeaderLength", "_NFDriverWrapperProccessRFTechDetectionInfo", 2359, a4, a3[2] & 0xF, 5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      v26 = a3[2] & 0xF;
      *buf = 136447234;
      *v56 = "_NFDriverWrapperProccessRFTechDetectionInfo";
      *&v56[8] = 1024;
      *&v56[10] = 2359;
      v57 = 1024;
      *v58 = a4;
      *&v58[4] = 1024;
      *&v58[6] = v26;
      *v59 = 1024;
      *&v59[2] = 5;
      v27 = "%{public}s:%i vDataLen %d does not match with payload length %d + %d bytes of ECP2HeaderLength";
      v28 = v25;
      v29 = 36;
      goto LABEL_48;
    }
  }

LABEL_50:
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v35 = NFLogGetLogger();
  if (v35)
  {
    v35(3, "%s:%i RF Error found (A=%d, B=%d, F=%d, V=%d). Restart Discovery", "_NFDriverWrapperProccessRFTechDetectionInfo", 2370, v8 & 1, (v8 >> 1) & 1, (v8 >> 2) & 1, (v8 >> 3) & 1);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v36 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 136447490;
    *v56 = "_NFDriverWrapperProccessRFTechDetectionInfo";
    *&v56[8] = 1024;
    *&v56[10] = 2370;
    v57 = 1024;
    *v58 = v8 & 1;
    *&v58[4] = 1024;
    *&v58[6] = (v8 >> 1) & 1;
    *v59 = 1024;
    *&v59[2] = (v8 >> 2) & 1;
    *v60 = 1024;
    *&v60[2] = (v8 >> 3) & 1;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}s:%i RF Error found (A=%d, B=%d, F=%d, V=%d). Restart Discovery", buf, 0x2Au);
  }

  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFLogGetLogger();
    if (v37)
    {
      v38 = v37;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("driverRestartDiscovery");
      v42 = 45;
      if (isMetaClass)
      {
        v42 = 43;
      }

      v38(6, "%c[%{public}s %{public}s]:%i Restarting Discovery", v42, ClassName, Name, 749);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v43 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
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
      v47 = sel_getName("driverRestartDiscovery");
      *buf = 67109890;
      *v56 = v45;
      *&v56[4] = 2082;
      *&v56[6] = v46;
      v57 = 2082;
      *v58 = v47;
      *&v58[8] = 1024;
      *v59 = 749;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restarting Discovery", buf, 0x22u);
    }

    [a1[26] handleRestartDiscovery];
  }

  v21 = 0;
LABEL_66:

  return v21;
}

id sub_1002261A0()
{
  objc_opt_self();
  if (qword_10035DAF8 != -1)
  {
    dispatch_once(&qword_10035DAF8, &stru_10031C520);
  }

  v0 = qword_10035DAF0;

  return v0;
}

void sub_1002261F8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10035DAF0;
  qword_10035DAF0 = v1;

  _objc_release_x1(v1, v2);
}

_BYTE *sub_100226978(_BYTE *a1)
{
  if (a1)
  {
    v2 = a1;
    sub_1002287C0(a1, 0);
    sub_100228858(v2);
    a1 = sub_1002275C8(v2, 0);
    v1 = vars8;
  }

  return a1;
}

id sub_1002269CC(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = sub_100226F00(a1);
    sub_100228CE0(v2);
    a1 = sub_1002275C8(v2, v3);
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_100226A20(void *a1)
{
  existing = 0;
  v2 = IOServiceNameMatching("AppleDialogSPMIPMU");
  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v2, &existing);
  if (MatchingServices)
  {
    v4 = MatchingServices;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("copyPMUService");
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v6(3, "%c[%{public}s %{public}s]:%i Error retrieving services : %d", v9, ClassName, Name, 433, v4);
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

      v13 = object_getClassName(a1);
      v14 = sel_getName("copyPMUService");
      *buf = 67110146;
      *v38 = v12;
      *&v38[4] = 2082;
      *&v38[6] = v13;
      v39 = 2082;
      v40 = v14;
      v41 = 1024;
      v42 = 433;
      v43 = 1024;
      LODWORD(v44) = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error retrieving services : %d", buf, 0x28u);
    }

    return 0;
  }

  v16 = existing;
  if (!existing)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v22 = v21;
      v23 = object_getClass(a1);
      v24 = class_isMetaClass(v23);
      v33 = object_getClassName(a1);
      v35 = sel_getName("copyPMUService");
      v25 = 45;
      if (v24)
      {
        v25 = 43;
      }

      v22(3, "%c[%{public}s %{public}s]:%i Could not find service: %s", v25, v33, v35, 438, "AppleDialogSPMIPMU");
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = object_getClass(a1);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      v29 = object_getClassName(a1);
      v30 = sel_getName("copyPMUService");
      *buf = 67110146;
      *v38 = v28;
      *&v38[4] = 2082;
      *&v38[6] = v29;
      v39 = 2082;
      v40 = v30;
      v41 = 1024;
      v42 = 438;
      v43 = 2080;
      v44 = "AppleDialogSPMIPMU";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not find service: %s", buf, 0x2Cu);
    }

    return 0;
  }

  do
  {
    if (!IOIteratorIsValid(v16))
    {
      break;
    }

    v17 = IOIteratorNext(existing);
    v15 = v17;
    if (!v17)
    {
      goto LABEL_34;
    }

    CFProperty = IORegistryEntryCreateCFProperty(v17, @"IOPMUPrimary", 0, 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
      goto LABEL_34;
    }

    IOObjectRelease(v15);
    v16 = existing;
  }

  while (existing);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v19(3, "%s:%i Invalid iterator", "[NFHeadlessModeController copyPMUService]", 445);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *v38 = "[NFHeadlessModeController copyPMUService]";
    *&v38[8] = 1024;
    *&v38[10] = 445;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid iterator", buf, 0x12u);
  }

  v15 = 0;
LABEL_34:
  IOObjectRelease(existing);
  return v15;
}