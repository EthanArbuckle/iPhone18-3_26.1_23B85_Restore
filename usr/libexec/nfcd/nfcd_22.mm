void sub_100278B88(uint64_t a1)
{
  if ((*(*(a1 + 32) + 184) & 1) == 0)
  {
    v2 = NFSharedSignpostLog();
    if (os_signpost_enabled(v2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "initialLoad", &unk_1002E8B7A, buf, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _loadHW];
    v3 = NFSharedSignpostLog();
    if (os_signpost_enabled(v3))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "initialLoad", &unk_1002E8B7A, v4, 2u);
    }
  }
}

void sub_100278C80(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 didCloseXPCConnection:WeakRetained];
}

void sub_100278CD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 didCloseXPCConnection:WeakRetained];
}

void sub_100278E04(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i Reader mode must stop", v7, ClassName, Name, 1120);
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
    v21 = v10;
    v22 = 2082;
    v23 = v11;
    v24 = 2082;
    v25 = v12;
    v26 = 1024;
    v27 = 1120;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Reader mode must stop", buf, 0x22u);
  }

  v13 = *(*(a1 + 32) + 64);
  v14 = objc_opt_respondsToSelector();
  v15 = *(a1 + 32);
  if (v14)
  {
    [*(v15 + 64) handleReaderBurnoutTimer];
  }

  else
  {
    v16 = *(v15 + 88);
    v17 = sub_10004C268();
    v18 = [v16 setRouting:v17];
  }
}

id sub_1002790B4(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i Reader mode can resume", v7, ClassName, Name, 1136);
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
    v19 = v10;
    v20 = 2082;
    v21 = v11;
    v22 = 2082;
    v23 = v12;
    v24 = 1024;
    v25 = 1136;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Reader mode can resume", buf, 0x22u);
  }

  v13 = *(*(a1 + 32) + 64);
  v14 = objc_opt_respondsToSelector();
  v15 = *(a1 + 32);
  if (v14)
  {
    return [v15[8] handleReaderBurnoutCleared];
  }

  else
  {
    return [v15 maybeStartNextSession];
  }
}

void sub_100279554(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 106) == 1)
  {
    if (*(v1 + 112) < 5uLL)
    {
      if ((*(v1 + 107) & 1) == 0)
      {
        *(v1 + 107) = 1;
        ++*(*(a1 + 32) + 112);
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v17 = Logger;
          Class = object_getClass(*(a1 + 32));
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(*(a1 + 32));
          Name = sel_getName(*(a1 + 40));
          v22 = 45;
          if (isMetaClass)
          {
            v22 = 43;
          }

          v17(6, "%c[%{public}s %{public}s]:%i Restart MT detection : %d", v22, ClassName, Name, 1185, *(*(a1 + 32) + 112));
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
          v27 = sel_getName(*(a1 + 40));
          v28 = *(*(a1 + 32) + 112);
          *buf = 67110146;
          v38 = v25;
          v39 = 2082;
          v40 = v26;
          v41 = 2082;
          v42 = v27;
          v43 = 1024;
          v44 = 1185;
          v45 = 1024;
          v46 = v28;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restart MT detection : %d", buf, 0x28u);
        }

        v29 = +[NFPowerAssertion sharedPowerAssertion];
        v30 = [v29 holdPowerAssertion:@"NfcacdPLLUnlock" behaviourWhenSleepStarted:0];

        v31 = dispatch_time(0, 5000000000);
        v32 = *(a1 + 32);
        v33 = *(v32 + 16);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10027992C;
        block[3] = &unk_100315EB8;
        block[4] = v32;
        v36 = v30;
        dispatch_after(v31, v33, block);
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v3 = NFLogGetLogger();
      if (v3)
      {
        v4 = v3;
        v5 = object_getClass(*(a1 + 32));
        v6 = class_isMetaClass(v5);
        v7 = object_getClassName(*(a1 + 32));
        v34 = sel_getName(*(a1 + 40));
        v8 = 45;
        if (v6)
        {
          v8 = 43;
        }

        v4(3, "%c[%{public}s %{public}s]:%i Max restarts reached", v8, v7, v34, 1173);
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
        v13 = sel_getName(*(a1 + 40));
        *buf = 67109890;
        v38 = v11;
        v39 = 2082;
        v40 = v12;
        v41 = 2082;
        v42 = v13;
        v43 = 1024;
        v44 = 1173;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Max restarts reached", buf, 0x22u);
      }

      v14 = +[NSDistributedNotificationCenter defaultCenter];
      [v14 postNotificationName:@"com.apple.nfcacd.multitag.restart.error" object:0 userInfo:0 options:3];

      v15 = *(*(a1 + 32) + 168);
      if (v15)
      {
        sub_100235394(v15, @"com.apple.nfcacd.multitag.restart.error", 1);
      }
    }
  }
}

void sub_10027992C(uint64_t a1)
{
  [*(a1 + 32) maybeStartNextSession];
  if (*(a1 + 40) == 1)
  {
    v2 = +[NFPowerAssertion sharedPowerAssertion];
    [v2 releasePowerAssertion:@"NfcacdPLLUnlock"];
  }
}

void sub_100279DFC(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_TAGS_DETECTED", &unk_1002E8B7A, buf, 2u);
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
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v4(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 1215, *(a1 + 40));
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
    v15 = *(a1 + 40);
    *buf = 67110146;
    v75 = v12;
    v76 = 2082;
    v77 = v13;
    v78 = 2082;
    v79 = v14;
    v80 = 1024;
    v81 = 1215;
    v82 = 2114;
    v83 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (*(*(a1 + 32) + 64) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(*(a1 + 32) + 64) handleRemoteTagsDetected:*(a1 + 40)];
    return;
  }

  if ([*(a1 + 40) count])
  {
    v16 = [*(a1 + 40) objectAtIndex:0];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v18 = v17;
      v19 = object_getClass(*(a1 + 32));
      v20 = class_isMetaClass(v19);
      v68 = object_getClassName(*(a1 + 32));
      v69 = sel_getName(*(a1 + 48));
      v21 = 45;
      if (v20)
      {
        v21 = 43;
      }

      v18(6, "%c[%{public}s %{public}s]:%i Connecting to tag; %{public}@", v21, v68, v69, 1221, v16);
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
      v26 = sel_getName(*(a1 + 48));
      *buf = 67110146;
      v75 = v24;
      v76 = 2082;
      v77 = v25;
      v78 = 2082;
      v79 = v26;
      v80 = 1024;
      v81 = 1221;
      v82 = 2114;
      v83 = v16;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Connecting to tag; %{public}@", buf, 0x2Cu);
    }

    v27 = [*(*(a1 + 32) + 88) connectTag:v16];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFLogGetLogger();
    v29 = v28;
    if (v27)
    {
      if (v27 != 51)
      {
        if (v28)
        {
          v59 = object_getClass(*(a1 + 32));
          v60 = class_isMetaClass(v59);
          v61 = object_getClassName(*(a1 + 32));
          v73 = sel_getName(*(a1 + 48));
          v62 = 45;
          if (v60)
          {
            v62 = 43;
          }

          v29(6, "%c[%{public}s %{public}s]:%i Resuming discovery after failed connection", v62, v61, v73, 1228);
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
          *buf = 67109890;
          v75 = v65;
          v76 = 2082;
          v77 = v66;
          v78 = 2082;
          v79 = v67;
          v80 = 1024;
          v81 = 1228;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Resuming discovery after failed connection", buf, 0x22u);
        }

        [*(*(a1 + 32) + 88) resumeDiscovery];
        goto LABEL_67;
      }

      if (v28)
      {
        v30 = object_getClass(*(a1 + 32));
        v31 = class_isMetaClass(v30);
        v32 = object_getClassName(*(a1 + 32));
        v70 = sel_getName(*(a1 + 48));
        v33 = 45;
        if (v31)
        {
          v33 = 43;
        }

        v29(6, "%c[%{public}s %{public}s]:%i Restarting discovery after failed connection", v33, v32, v70, 1225);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v34 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
LABEL_56:

        [*(*(a1 + 32) + 88) restartDiscovery];
LABEL_67:

        return;
      }

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
      v38 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v75 = v36;
      v76 = 2082;
      v77 = v37;
      v78 = 2082;
      v79 = v38;
      v80 = 1024;
      v81 = 1225;
      v39 = "%c[%{public}s %{public}s]:%i Restarting discovery after failed connection";
    }

    else
    {
      if (v28)
      {
        v40 = object_getClass(*(a1 + 32));
        v41 = class_isMetaClass(v40);
        v42 = object_getClassName(*(a1 + 32));
        v71 = sel_getName(*(a1 + 48));
        v43 = 45;
        if (v41)
        {
          v43 = 43;
        }

        v29(6, "%c[%{public}s %{public}s]:%i Disconnecting with tag removal detection", v43, v42, v71, 1233);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v44 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
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
        v75 = v46;
        v76 = 2082;
        v77 = v47;
        v78 = 2082;
        v79 = v48;
        v80 = 1024;
        v81 = 1233;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Disconnecting with tag removal detection", buf, 0x22u);
      }

      if (![*(*(a1 + 32) + 88) disconnectTag:v16 tagRemovalDetect:1])
      {
        goto LABEL_67;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v49 = NFLogGetLogger();
      if (v49)
      {
        v50 = v49;
        v51 = object_getClass(*(a1 + 32));
        v52 = class_isMetaClass(v51);
        v53 = object_getClassName(*(a1 + 32));
        v72 = sel_getName(*(a1 + 48));
        v54 = 45;
        if (v52)
        {
          v54 = 43;
        }

        v50(6, "%c[%{public}s %{public}s]:%i Restarting discovery after failed disconnection", v54, v53, v72, 1236);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v34 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

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
      *buf = 67109890;
      v75 = v56;
      v76 = 2082;
      v77 = v57;
      v78 = 2082;
      v79 = v58;
      v80 = 1024;
      v81 = 1236;
      v39 = "%c[%{public}s %{public}s]:%i Restarting discovery after failed disconnection";
    }

    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v39, buf, 0x22u);
    goto LABEL_56;
  }
}

void sub_10027A664(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v8, ClassName, Name, 1247, *(a1 + 40));
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
    v51 = v11;
    v52 = 2082;
    v53 = v12;
    v54 = 2082;
    v55 = v13;
    v56 = 1024;
    v57 = 1247;
    v58 = 2114;
    v59 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v15 = NFSharedSignpostLog();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_MULTI_TAG_STATE_CHANGE", &unk_1002E8B7A, buf, 2u);
  }

  v16 = sub_10020E4DC();
  v17 = sub_10020EB44(v16, *(a1 + 40), *(*(a1 + 32) + 152), *(a1 + 56));

  if ((*(a1 + 56) & 1) == 0)
  {
    v18 = [*(a1 + 40) copy];
    v19 = *(a1 + 32);
    v20 = *(v19 + 152);
    *(v19 + 152) = v18;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v21 = NFLogGetLogger();
  if (v21)
  {
    v22 = v21;
    v23 = object_getClass(*(a1 + 32));
    v24 = class_isMetaClass(v23);
    v25 = object_getClassName(*(a1 + 32));
    v26 = sel_getName(*(a1 + 48));
    v27 = 45;
    if (v24)
    {
      v27 = 43;
    }

    v22(6, "%c[%{public}s %{public}s]:%i %{public}@", v27, v25, v26, 1257, *(*(a1 + 32) + 152));
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
    v32 = sel_getName(*(a1 + 48));
    v33 = *(*(a1 + 32) + 152);
    *buf = 67110146;
    v51 = v30;
    v52 = 2082;
    v53 = v31;
    v54 = 2082;
    v55 = v32;
    v56 = 1024;
    v57 = 1257;
    v58 = 2114;
    v59 = v33;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v34 = +[NSDistributedNotificationCenter defaultCenter];
  [v34 postNotificationName:@"com.apple.nfcacd.multitag.state.change" object:0 userInfo:v17 options:3];

  v35 = *(*(a1 + 32) + 168);
  if (v35)
  {
    sub_100235394(v35, @"com.apple.nfcacd.multitag.state.change", 1);
  }

  if (*(a1 + 56) == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v36 = NFLogGetLogger();
    if (v36)
    {
      v37 = v36;
      v38 = object_getClass(*(a1 + 32));
      v39 = class_isMetaClass(v38);
      v40 = object_getClassName(*(a1 + 32));
      v49 = sel_getName(*(a1 + 48));
      v41 = 45;
      if (v39)
      {
        v41 = 43;
      }

      v37(3, "%c[%{public}s %{public}s]:%i RF Error seen during multitag scan", v41, v40, v49, 1265);
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
      v51 = v44;
      v52 = 2082;
      v53 = v45;
      v54 = 2082;
      v55 = v46;
      v56 = 1024;
      v57 = 1265;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i RF Error seen during multitag scan", buf, 0x22u);
    }

    v47 = +[NSDistributedNotificationCenter defaultCenter];
    [v47 postNotificationName:@"com.apple.nfcacd.multitag.state.change.rfError" object:0 userInfo:0 options:3];

    v48 = *(*(a1 + 32) + 168);
    if (v48)
    {
      sub_100235394(v48, @"com.apple.nfcacd.multitag.state.change.rfError", 1);
    }
  }

  *(*(a1 + 32) + 112) = 0;
}

void sub_10027B8F8(uint64_t a1)
{
  v2 = [*(a1 + 32) openSession:@"Delayed Sleep"];
  if (v2 == 1)
  {
    v3 = [*(*(a1 + 32) + 88) triggerDelayedWake:*(a1 + 56)];
    v4 = *(a1 + 40);
    if (v3)
    {
      (*(v4 + 16))(*(a1 + 40), 0);
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

        v6(6, "%c[%{public}s %{public}s]:%i Delaying session close for %d seconds", v11, ClassName, Name, 1462, *(a1 + 56) + 1);
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
        v51 = v14;
        v52 = 2082;
        v53 = v15;
        v54 = 2082;
        v55 = v16;
        v56 = 1024;
        v57 = 1462;
        v58 = 1024;
        LODWORD(v59) = v17;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Delaying session close for %d seconds", buf, 0x28u);
      }

      v18 = dispatch_time(0, 1000000000 * *(a1 + 56) + 1000000000);
      v19 = *(a1 + 32);
      v20 = *(v19 + 16);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10027BDFC;
      block[3] = &unk_100315F30;
      block[4] = v19;
      dispatch_after(v18, v20, block);
    }

    else
    {
      v38 = [NSError alloc];
      v39 = [NSString stringWithUTF8String:"nfcd"];
      v46 = NSLocalizedDescriptionKey;
      v40 = [NSString stringWithUTF8String:"Stack Error"];
      v47 = v40;
      v41 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v42 = [v38 initWithDomain:v39 code:15 userInfo:v41];
      (*(v4 + 16))(v4, v42);

      [*(*(a1 + 32) + 88) closeSession:@"Delayed Sleep"];
    }
  }

  else
  {
    v21 = v2;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v23 = v22;
      v24 = object_getClass(*(a1 + 32));
      v25 = class_isMetaClass(v24);
      v43 = object_getClassName(*(a1 + 32));
      v44 = sel_getName(*(a1 + 48));
      v26 = 45;
      if (v25)
      {
        v26 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Failed to open session; hwState=%lu", v26, v43, v44, 1447, v21);
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
      *buf = 67110146;
      v51 = v29;
      v52 = 2082;
      v53 = v30;
      v54 = 2082;
      v55 = v31;
      v56 = 1024;
      v57 = 1447;
      v58 = 2048;
      v59 = v21;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session; hwState=%lu", buf, 0x2Cu);
    }

    v32 = *(a1 + 40);
    v33 = [NSError alloc];
    v34 = [NSString stringWithUTF8String:"nfcd"];
    v48 = NSLocalizedDescriptionKey;
    v35 = [NSString stringWithUTF8String:"Stack Error"];
    v49 = v35;
    v36 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v37 = [v33 initWithDomain:v34 code:15 userInfo:v36];
    (*(v32 + 16))(v32, v37);
  }
}

id sub_10027BFC0(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i Disabling all routing to change RF settings", v7, ClassName, Name, 1482);
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
    v32 = v10;
    v33 = 2082;
    v34 = v11;
    v35 = 2082;
    v36 = v12;
    v37 = 1024;
    v38 = 1482;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Disabling all routing to change RF settings", buf, 0x22u);
  }

  v13 = *(*(a1 + 32) + 88);
  v14 = sub_10004C268();
  v15 = [v13 setRouting:v14];

  v16 = [*(*(a1 + 32) + 88) pushSignedRF:*(a1 + 40)];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFLogGetLogger();
  if (v17)
  {
    v18 = v17;
    v19 = object_getClass(*(a1 + 32));
    v20 = class_isMetaClass(v19);
    v21 = object_getClassName(*(a1 + 32));
    v30 = sel_getName(*(a1 + 48));
    v22 = 45;
    if (v20)
    {
      v22 = 43;
    }

    v18(6, "%c[%{public}s %{public}s]:%i Restoring routing", v22, v21, v30, 1488);
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
    v32 = v25;
    v33 = 2082;
    v34 = v26;
    v35 = 2082;
    v36 = v27;
    v37 = 1024;
    v38 = 1488;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restoring routing", buf, 0x22u);
  }

  [*(a1 + 32) maybeStartNextSession];

  return v16;
}

void sub_10027C32C(uint64_t a1)
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
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %d", v8, ClassName, Name, 1500, *(a1 + 48));
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
    v14 = *(a1 + 48);
    *buf = 67110146;
    v29 = v11;
    v30 = 2082;
    v31 = v12;
    v32 = 2082;
    v33 = v13;
    v34 = 1024;
    v35 = 1500;
    v36 = 1024;
    v37 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %d", buf, 0x28u);
  }

  v15 = *(a1 + 32);
  if (*(v15 + 106) == 1 && *(v15 + 128) || *(v15 + 105) == 1 && *(v15 + 120))
  {
    [v15 maybeStartNextSession];
  }

  else
  {
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

      v17(5, "%c[%{public}s %{public}s]:%i MultiTag or LPCD not setup yet", v21, v20, v27, 1507);
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
      v26 = sel_getName(*(a1 + 40));
      *buf = 67109890;
      v29 = v24;
      v30 = 2082;
      v31 = v25;
      v32 = 2082;
      v33 = v26;
      v34 = 1024;
      v35 = 1507;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i MultiTag or LPCD not setup yet", buf, 0x22u);
    }
  }
}

uint64_t sub_10027E324(double a1)
{
  if (!atomic_load(&dword_10035D8D4))
  {
    sub_10027F380(a1);
  }

  return ACMContextAddCredentialWithScope();
}

uint64_t sub_10027E350(double a1)
{
  if (!atomic_load(&dword_10035D8D4))
  {
    sub_10027F380(a1);
  }

  return ACMContextCreate();
}

uint64_t sub_10027E37C(double a1)
{
  if (!atomic_load(&dword_10035D8D4))
  {
    sub_10027F380(a1);
  }

  return ACMContextCreateWithExternalForm();
}

uint64_t sub_10027E3A8(double a1)
{
  if (!atomic_load(&dword_10035D8D4))
  {
    sub_10027F380(a1);
  }

  return ACMContextDelete();
}

uint64_t sub_10027E3D4(double a1)
{
  if (!atomic_load(&dword_10035D8D4))
  {
    sub_10027F380(a1);
  }

  return ACMContextVerifyPolicyEx();
}

uint64_t sub_10027E400(double a1)
{
  if (!atomic_load(&dword_10035D8D4))
  {
    sub_10027F380(a1);
  }

  return ACMCredentialCreate();
}

uint64_t sub_10027E42C(double a1)
{
  if (!atomic_load(&dword_10035D8D4))
  {
    sub_10027F380(a1);
  }

  return ACMCredentialDelete();
}

uint64_t sub_10027E458(double a1)
{
  if (!atomic_load(&dword_10035D8C0))
  {
    sub_10027F04C(a1);
  }

  return BiomeLibrary();
}

uint64_t sub_10027E484(double a1)
{
  if (!atomic_load(&dword_10035D8BC))
  {
    sub_10027EFA8(a1);
  }

  return CPPhoneNumberCopyLastKnownNetworkCountryCode();
}

uint64_t sub_10027E4B0(double a1)
{
  if (!atomic_load(&dword_10035D8BC))
  {
    sub_10027EFA8(a1);
  }

  return CPPhoneNumberCopyNetworkCountryCode();
}

uint64_t sub_10027E4DC(double a1)
{
  if (!atomic_load(&dword_10035D8E4))
  {
    sub_10027F610(a1);
  }

  return SBSBacklightChangeSourceForDisplayLayoutTransitionReason();
}

uint64_t sub_10027E508(double a1)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    sub_10027F758(a1);
  }

  return TCCAccessRestricted();
}

uint64_t sub_10027E534(double a1)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    sub_10027F758(a1);
  }

  return tcc_authorization_check_audit_token();
}

uint64_t sub_10027E560(double a1)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    sub_10027F758(a1);
  }

  return tcc_credential_create_for_process_with_audit_token();
}

uint64_t sub_10027E58C(double a1)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    sub_10027F758(a1);
  }

  return tcc_message_options_create();
}

uint64_t sub_10027E5B8(double a1)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    sub_10027F758(a1);
  }

  return tcc_message_options_set_reply_handler_policy();
}

uint64_t sub_10027E5E4(double a1)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    sub_10027F758(a1);
  }

  return tcc_server_create();
}

uint64_t sub_10027E610(double a1)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    sub_10027F758(a1);
  }

  return tcc_server_message_get_identity_for_credential();
}

uint64_t sub_10027E63C(double a1)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    sub_10027F758(a1);
  }

  return tcc_server_message_set_authorization_value();
}

uint64_t sub_10027E668(double a1)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    sub_10027F758(a1);
  }

  return tcc_service_singleton_for_CF_name();
}

double sub_10027E694(double result)
{
  if (!atomic_load(&dword_10035D8C0))
  {
    return sub_10027F04C(result);
  }

  return result;
}

double sub_10027E6B8(double result)
{
  if (!atomic_load(&dword_10035D8BC))
  {
    return sub_10027EFA8(result);
  }

  return result;
}

double sub_10027E6DC(double result)
{
  if (!atomic_load(&dword_10035D8BC))
  {
    return sub_10027EFA8(result);
  }

  return result;
}

void sub_10027E700(double a1)
{
  if (!atomic_load(&dword_10035D8B8))
  {
    sub_10027EF04(a1);
  }
}

void sub_10027E724(double a1)
{
  if (!atomic_load(&dword_10035D8B8))
  {
    sub_10027EF04(a1);
  }
}

void sub_10027E748(double a1)
{
  if (!atomic_load(&dword_10035D8C0))
  {
    sub_10027F04C(a1);
  }
}

double sub_10027E76C(double result)
{
  if (!atomic_load(&dword_10035D8C4))
  {
    return sub_10027F0F0(result);
  }

  return result;
}

void sub_10027E790(double a1)
{
  if (!atomic_load(&dword_10035D8C4))
  {
    sub_10027F0F0(a1);
  }
}

void sub_10027E7B4(double a1)
{
  if (!atomic_load(&dword_10035D8C4))
  {
    sub_10027F0F0(a1);
  }
}

void sub_10027E7D8(double a1)
{
  if (!atomic_load(&dword_10035D8C4))
  {
    sub_10027F0F0(a1);
  }
}

void sub_10027E7FC(double a1)
{
  if (!atomic_load(&dword_10035D8C4))
  {
    sub_10027F0F0(a1);
  }
}

double sub_10027E820(double result)
{
  if (!atomic_load(&dword_10035D8C4))
  {
    return sub_10027F0F0(result);
  }

  return result;
}

void sub_10027E844(double a1)
{
  if (!atomic_load(&dword_10035D8CC))
  {
    sub_10027F238(a1);
  }
}

void sub_10027E868(double a1)
{
  if (!atomic_load(&dword_10035D8CC))
  {
    sub_10027F238(a1);
  }
}

double sub_10027E88C(double result)
{
  if (!atomic_load(&dword_10035D8D0))
  {
    return sub_10027F2DC(result);
  }

  return result;
}

double sub_10027E8B0(double result)
{
  if (!atomic_load(&dword_10035D8D4))
  {
    return sub_10027F380(result);
  }

  return result;
}

void sub_10027E8D4(double a1)
{
  if (!atomic_load(&dword_10035D8D4))
  {
    sub_10027F380(a1);
  }
}

void sub_10027E8F8(double a1)
{
  if (!atomic_load(&dword_10035D8D8))
  {
    sub_10027F424(a1);
  }
}

double sub_10027E91C(double result)
{
  if (!atomic_load(&dword_10035D8DC))
  {
    return sub_10027F4C8(result);
  }

  return result;
}

double sub_10027E940(double result)
{
  if (!atomic_load(&dword_10035D8DC))
  {
    return sub_10027F4C8(result);
  }

  return result;
}

void sub_10027E964(double a1)
{
  if (!atomic_load(&dword_10035D8DC))
  {
    sub_10027F4C8(a1);
  }
}

double sub_10027E988(double result)
{
  if (!atomic_load(&dword_10035D8DC))
  {
    return sub_10027F4C8(result);
  }

  return result;
}

double sub_10027E9AC(double result)
{
  if (!atomic_load(&dword_10035D8DC))
  {
    return sub_10027F4C8(result);
  }

  return result;
}

void sub_10027E9D0(double a1)
{
  if (!atomic_load(&dword_10035D8DC))
  {
    sub_10027F4C8(a1);
  }
}

double sub_10027E9F4(double result)
{
  if (!atomic_load(&dword_10035D8DC))
  {
    return sub_10027F4C8(result);
  }

  return result;
}

double sub_10027EA18(double result)
{
  if (!atomic_load(&dword_10035D8DC))
  {
    return sub_10027F4C8(result);
  }

  return result;
}

double sub_10027EA3C(double result)
{
  if (!atomic_load(&dword_10035D8E8))
  {
    return sub_10027F6B4(result);
  }

  return result;
}

double sub_10027EA60(double result)
{
  if (!atomic_load(&dword_10035D8E0))
  {
    return sub_10027F56C(result);
  }

  return result;
}

double sub_10027EA84(double result)
{
  if (!atomic_load(&dword_10035D8E0))
  {
    return sub_10027F56C(result);
  }

  return result;
}

double sub_10027EAA8(double result)
{
  if (!atomic_load(&dword_10035D8E0))
  {
    return sub_10027F56C(result);
  }

  return result;
}

double sub_10027EACC(double result)
{
  if (!atomic_load(&unk_10035D8F0))
  {
    return sub_10027F7FC(result);
  }

  return result;
}

void sub_10027EAF0(double a1)
{
  if (!atomic_load(&dword_10035D8C8))
  {
    sub_10027F194(a1);
  }
}

void sub_10027EB14(double a1)
{
  if (!atomic_load(&dword_10035D8C8))
  {
    sub_10027F194(a1);
  }
}

double sub_10027EB38(double result)
{
  if (!atomic_load(&dword_10035D8E4))
  {
    return sub_10027F610(result);
  }

  return result;
}

double sub_10027EB5C(double result)
{
  if (!atomic_load(&dword_10035D8E4))
  {
    return sub_10027F610(result);
  }

  return result;
}

double sub_10027EB80(double result)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    return sub_10027F758(result);
  }

  return result;
}

double sub_10027EBA4(double result)
{
  if (!atomic_load(&dword_10035D8C4))
  {
    return sub_10027F0F0(result);
  }

  return result;
}

double sub_10027EBC8(double result)
{
  if (!atomic_load(&dword_10035D8C4))
  {
    return sub_10027F0F0(result);
  }

  return result;
}

double sub_10027EBEC(double result)
{
  if (!atomic_load(&dword_10035D8C4))
  {
    return sub_10027F0F0(result);
  }

  return result;
}

double sub_10027EC10(double result)
{
  if (!atomic_load(&dword_10035D8C4))
  {
    return sub_10027F0F0(result);
  }

  return result;
}

double sub_10027EC34(double result)
{
  if (!atomic_load(&dword_10035D8C4))
  {
    return sub_10027F0F0(result);
  }

  return result;
}

double sub_10027EC58(double result)
{
  if (!atomic_load(&dword_10035D8E8))
  {
    return sub_10027F6B4(result);
  }

  return result;
}

double sub_10027EC7C(double result)
{
  if (!atomic_load(&dword_10035D8E8))
  {
    return sub_10027F6B4(result);
  }

  return result;
}

double sub_10027ECA0(double result)
{
  if (!atomic_load(&dword_10035D8E8))
  {
    return sub_10027F6B4(result);
  }

  return result;
}

double sub_10027ECC4(double result)
{
  if (!atomic_load(&dword_10035D8E8))
  {
    return sub_10027F6B4(result);
  }

  return result;
}

double sub_10027ECE8(double result)
{
  if (!atomic_load(&dword_10035D8E8))
  {
    return sub_10027F6B4(result);
  }

  return result;
}

double sub_10027ED0C(double result)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    return sub_10027F758(result);
  }

  return result;
}

double sub_10027ED30(double result)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    return sub_10027F758(result);
  }

  return result;
}

double sub_10027ED54(double result)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    return sub_10027F758(result);
  }

  return result;
}

double sub_10027ED78(double result)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    return sub_10027F758(result);
  }

  return result;
}

double sub_10027ED9C(double result)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    return sub_10027F758(result);
  }

  return result;
}

double sub_10027EDC0(double result)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    return sub_10027F758(result);
  }

  return result;
}

double sub_10027EDE4(double result)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    return sub_10027F758(result);
  }

  return result;
}

double sub_10027EE08(double result)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    return sub_10027F758(result);
  }

  return result;
}

double sub_10027EE2C(double result)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    return sub_10027F758(result);
  }

  return result;
}

double sub_10027EE50(double result)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    return sub_10027F758(result);
  }

  return result;
}

double sub_10027EE74(double result)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    return sub_10027F758(result);
  }

  return result;
}

double sub_10027EE98(double result)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    return sub_10027F758(result);
  }

  return result;
}

double sub_10027EEBC(double result)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    return sub_10027F758(result);
  }

  return result;
}

double sub_10027EEE0(double result)
{
  if (!atomic_load(&dword_10035D8EC))
  {
    return sub_10027F758(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10027EF04(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/AccessibilityUtilities.framework/AccessibilityUtilities", 0);
  atomic_store(1u, &dword_10035D8B8);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10027EFA8(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/AppSupport.framework/AppSupport", 0);
  atomic_store(1u, &dword_10035D8BC);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10027F04C(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/BiomeLibrary.framework/BiomeLibrary", 0);
  atomic_store(1u, &dword_10035D8C0);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10027F0F0(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CPMS.framework/CPMS", 0);
  atomic_store(1u, &dword_10035D8C4);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10027F194(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CoreDuetContext.framework/CoreDuetContext", 0);
  atomic_store(1u, &dword_10035D8C8);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10027F238(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 0);
  atomic_store(1u, &dword_10035D8CC);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10027F2DC(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/HID.framework/HID", 0);
  atomic_store(1u, &dword_10035D8D0);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10027F380(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 0);
  atomic_store(1u, &dword_10035D8D4);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10027F424(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/OSEligibility.framework/OSEligibility", 0);
  atomic_store(1u, &dword_10035D8D8);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10027F4C8(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/RunningBoardServices.framework/RunningBoardServices", 0);
  atomic_store(1u, &dword_10035D8DC);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10027F56C(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/SEService.framework/SEService", 0);
  atomic_store(1u, &dword_10035D8E0);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10027F610(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices", 0);
  atomic_store(1u, &dword_10035D8E4);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10027F6B4(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/SymptomDiagnosticReporter.framework/SymptomDiagnosticReporter", 0);
  atomic_store(1u, &dword_10035D8E8);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10027F758(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/TCC.framework/TCC", 0);
  atomic_store(1u, &dword_10035D8EC);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10027F7FC(double a1)
{
  dlopen("/usr/lib/libSystemHealth.dylib", 0);
  atomic_store(1u, &unk_10035D8F0);
  return a1;
}