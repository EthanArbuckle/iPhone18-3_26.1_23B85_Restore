id sub_1001B4810(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = *(result + 4);
    if (*(v3 + 256) == 1)
    {
      v4 = *(v3 + 232);
      v5 = [*(result + 5) count];

      return [v4 coreNFCUITagScannedCount:v5];
    }
  }

  return result;
}

void sub_1001B6F54(uint64_t a1)
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

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 875, v8);
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
      v34 = 875;
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
      (*(v16 + 16))(v16, 0, v21);
    }
  }

  else
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v24 = *(a1 + 48);

    [v22 _sync_connect:v23 completion:v24];
  }
}

void sub_1001B76B4(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", v12, ClassName, Name, 907, v8, v10, v11);
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
    v45 = v15;
    v46 = 2082;
    v47 = v16;
    v48 = 2082;
    v49 = v17;
    v50 = 1024;
    v51 = 907;
    v52 = 2114;
    v53 = v18;
    v54 = 1024;
    v55 = v20;
    v56 = 2114;
    v57 = v21;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", buf, 0x3Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v38 = [*(a1 + 32) _disconnectWithCardRemoval:*(a1 + 56)];
    (*(*(a1 + 40) + 16))();
    if (v38)
    {
      +[NFExceptionsCALogger postAnalyticsReaderModeExceptionForType:tagType:rfFrameInterface:withErrorCode:](NFExceptionsCALogger, "postAnalyticsReaderModeExceptionForType:tagType:rfFrameInterface:withErrorCode:", 2, [*(a1 + 32) _getTagTypeFromTag:*(*(a1 + 32) + 376)], (*(*(a1 + 32) + 304) >> 12) & 1, objc_msgSend(v38, "code"));
      sub_10022F438(NFDailyStatisticsCALogger, @"readerModeDisconnectErrorCount");
    }

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

    v23(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v29, v26, v27, 909, v28);
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
    v45 = v32;
    v46 = 2082;
    v47 = v33;
    v48 = 2082;
    v49 = v34;
    v50 = 1024;
    v51 = 909;
    v52 = 2114;
    v53 = v35;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v36 = *(a1 + 40);
  if (v36)
  {
    v37 = [NSError alloc];
    v38 = [NSString stringWithUTF8String:"nfcd"];
    v42 = NSLocalizedDescriptionKey;
    v39 = [NSString stringWithUTF8String:"Session not active"];
    v43 = v39;
    v40 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v41 = [v37 initWithDomain:v38 code:54 userInfo:v40];
    (*(v36 + 16))(v36, v41);

LABEL_24:
  }
}

void sub_1001B8768(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 376);
  v6 = [NSError alloc];
  v7 = [NSString stringWithUTF8String:"nfcd"];
  v21 = NSLocalizedDescriptionKey;
  if (a2 >= 0x4C)
  {
    v8 = 76;
  }

  else
  {
    v8 = a2;
  }

  v9 = [NSString stringWithUTF8String:off_10031B2E8[v8], NSLocalizedDescriptionKey];
  v22 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v11 = [v6 initWithDomain:v7 code:a2 userInfo:v10];
  (*(v4 + 16))(v4, v5, 0, v11);

  +[NFExceptionsCALogger postAnalyticsReaderModeExceptionForType:tagType:rfFrameInterface:withErrorCode:](NFExceptionsCALogger, "postAnalyticsReaderModeExceptionForType:tagType:rfFrameInterface:withErrorCode:", 3, [*(a1 + 32) _getTagTypeFromTag:*(*(a1 + 32) + 376)], (*(*(a1 + 32) + 304) >> 12) & 1, 8);
  sub_10022F438(NFDailyStatisticsCALogger, @"readerModeTransceiveErrorCount");
  if (a2 == 32)
  {
    *(*(a1 + 32) + 240) = 0;
    [*(a1 + 32) endSession:0];
    v12 = [*(a1 + 32) remoteObject];
    v13 = [NSError alloc];
    v14 = [NSString stringWithUTF8String:"nfcd"];
    v19 = v18;
    v15 = [NSString stringWithUTF8String:"Not entitled"];
    v20 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v17 = [v13 initWithDomain:v14 code:32 userInfo:v16];
    [v12 didTerminate:v17];
  }
}

void sub_1001B8AF0(uint64_t a1)
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

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 1065, v8);
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
      v34 = 1065;
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
      (*(v16 + 16))(v16, 0, 0, v21);
    }
  }

  else
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v24 = *(a1 + 48);

    [v22 _sync_transceive:v23 completion:v24];
  }
}

void sub_1001B8EB8(uint64_t a1)
{
  memset(v56, 0, sizeof(v56));
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v25 = *(a1 + 32);
    if (v25[47])
    {
      v26 = [v25 _refreshNdefTagConnection];
      if (!v26)
      {
        v48 = *(a1 + 32);
        v49 = *(v48 + 344);
        v50 = *(v48 + 376);
        v55 = 0;
        v51 = sub_1001916A4(v49, v50, v56, &v55);
        v52 = v55;
        v18 = v52;
        if (v51)
        {
          v53 = *(*(a1 + 40) + 16);
        }

        else
        {
          if ([v52 code] == 37)
          {

            v18 = 0;
          }

          v53 = *(*(a1 + 40) + 16);
        }

        v53();
        goto LABEL_17;
      }

      v27 = v26;
      v28 = *(a1 + 40);
      v29 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v30 = v27;
      v57[0] = NSLocalizedDescriptionKey;
      if (v27 >= 0x4C)
      {
        v31 = 76;
      }

      else
      {
        v31 = v27;
      }

      v19 = [NSString stringWithUTF8String:off_10031B2E8[v31]];
      v58[0] = v19;
      v58[1] = &off_100333A20;
      v57[1] = @"Line";
      v57[2] = @"Method";
      v32 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v58[2] = v32;
      v57[3] = NSDebugDescriptionErrorKey;
      v33 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 1088];
      v58[3] = v33;
      v34 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:4];
      v35 = [v29 initWithDomain:v18 code:v30 userInfo:v34];
      (*(v28 + 16))(v28, 0, 0, v35);

LABEL_16:
LABEL_17:

      return;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v37 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v41 = 45;
      if (isMetaClass)
      {
        v41 = 43;
      }

      v37(3, "%c[%{public}s %{public}s]:%i Tag not connected", v41, ClassName, Name, 1081);
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
      v64 = v44;
      v65 = 2082;
      v66 = v45;
      v67 = 2082;
      v68 = v46;
      v69 = 1024;
      v70 = 1081;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag not connected", buf, 0x22u);
    }

    v16 = *(a1 + 40);
    v47 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v59 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Tag Not Found"];
    v60 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v21 = v47;
    v22 = v18;
    v23 = 28;
LABEL_15:
    v24 = [v21 initWithDomain:v22 code:v23 userInfo:v20];
    (*(v16 + 16))(v16, 0, 0, v24);

    goto LABEL_16;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v2 = NFLogGetLogger();
  if (v2)
  {
    v3 = v2;
    v4 = object_getClass(*(a1 + 32));
    v5 = class_isMetaClass(v4);
    v6 = object_getClassName(*(a1 + 32));
    v7 = sel_getName(*(a1 + 48));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 1078, v8);
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
    v64 = v12;
    v65 = 2082;
    v66 = v13;
    v67 = 2082;
    v68 = v14;
    v69 = 1024;
    v70 = 1078;
    v71 = 2114;
    v72 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v61 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v62 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v21 = v17;
    v22 = v18;
    v23 = 54;
    goto LABEL_15;
  }
}

void sub_1001B9648(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", v12, ClassName, Name, 1116, v8, v10, v11);
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
    v130 = v15;
    v131 = 2082;
    v132 = v16;
    v133 = 2082;
    v134 = v17;
    v135 = 1024;
    v136 = 1116;
    v137 = 2114;
    v138 = v18;
    v139 = 1024;
    v140 = v20;
    v141 = 2114;
    v142 = v21;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", buf, 0x3Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v45 = *(a1 + 32);
    v46 = *(v45 + 376);
    if (!v46)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v57 = NFLogGetLogger();
      if (v57)
      {
        v58 = v57;
        v59 = object_getClass(*(a1 + 32));
        v60 = class_isMetaClass(v59);
        v61 = object_getClassName(*(a1 + 32));
        v113 = sel_getName(*(a1 + 48));
        v62 = 45;
        if (v60)
        {
          v62 = 43;
        }

        v58(3, "%c[%{public}s %{public}s]:%i Tag not connected", v62, v61, v113, 1121);
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
        v67 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v130 = v65;
        v131 = 2082;
        v132 = v66;
        v133 = 2082;
        v134 = v67;
        v135 = 1024;
        v136 = 1121;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag not connected", buf, 0x22u);
      }

      v36 = *(a1 + 40);
      v68 = [NSError alloc];
      v38 = [NSString stringWithUTF8String:"nfcd"];
      v125 = NSLocalizedDescriptionKey;
      v39 = [NSString stringWithUTF8String:"Tag Not Found"];
      v126 = v39;
      v40 = [NSDictionary dictionaryWithObjects:&v126 forKeys:&v125 count:1];
      v41 = v68;
      v42 = v38;
      v43 = 28;
      goto LABEL_24;
    }

    if ((*(v45 + 385) & 2) == 0)
    {
      v47 = [v45 _refreshNdefTagConnection];
      if (v47)
      {
        v48 = v47;
        v49 = *(a1 + 40);
        v50 = [NSError alloc];
        v38 = [NSString stringWithUTF8String:"nfcd"];
        v51 = v48;
        v123[0] = NSLocalizedDescriptionKey;
        if (v48 >= 0x4C)
        {
          v52 = 76;
        }

        else
        {
          v52 = v48;
        }

        v39 = [NSString stringWithUTF8String:off_10031B2E8[v52]];
        v124[0] = v39;
        v124[1] = &off_100333A38;
        v123[1] = @"Line";
        v123[2] = @"Method";
        v53 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
        v124[2] = v53;
        v123[3] = NSDebugDescriptionErrorKey;
        v54 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 1142];
        v124[3] = v54;
        v55 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:4];
        v56 = [v50 initWithDomain:v38 code:v51 userInfo:v55];
        (*(v49 + 16))(v49, v56, 0);

        goto LABEL_25;
      }

      v118[0] = 0;
      v118[1] = 0;
      v119 = 0;
      v74 = *(a1 + 32);
      v75 = *(v74 + 344);
      v76 = *(v74 + 376);
      v117 = 0;
      v77 = sub_1001916A4(v75, v76, v118, &v117);
      v38 = v117;
      if ((v77 & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v85 = NFLogGetLogger();
        if (v85)
        {
          v86 = v85;
          v87 = object_getClass(*(a1 + 32));
          v88 = class_isMetaClass(v87);
          v112 = object_getClassName(*(a1 + 32));
          v114 = sel_getName(*(a1 + 48));
          v89 = 45;
          if (v88)
          {
            v89 = 43;
          }

          v86(3, "%c[%{public}s %{public}s]:%i Failed to query NDEF capability, %{public}@", v89, v112, v114, 1148, v38);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v90 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          v91 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v91))
          {
            v92 = 43;
          }

          else
          {
            v92 = 45;
          }

          v93 = object_getClassName(*(a1 + 32));
          v94 = sel_getName(*(a1 + 48));
          *buf = 67110146;
          v130 = v92;
          v131 = 2082;
          v132 = v93;
          v133 = 2082;
          v134 = v94;
          v135 = 1024;
          v136 = 1148;
          v137 = 2114;
          v138 = v38;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query NDEF capability, %{public}@", buf, 0x2Cu);
        }

        (*(*(a1 + 40) + 16))();
        goto LABEL_26;
      }

      if ((v119 & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v95 = NFLogGetLogger();
        if (v95)
        {
          v96 = v95;
          v97 = object_getClass(*(a1 + 32));
          v98 = class_isMetaClass(v97);
          v99 = object_getClassName(*(a1 + 32));
          v115 = sel_getName(*(a1 + 48));
          v100 = 45;
          if (v98)
          {
            v100 = 43;
          }

          v96(3, "%c[%{public}s %{public}s]:%i Tag is not NDEF readable", v100, v99, v115, 1154);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v101 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          v102 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v102))
          {
            v103 = 43;
          }

          else
          {
            v103 = 45;
          }

          v104 = object_getClassName(*(a1 + 32));
          v105 = sel_getName(*(a1 + 48));
          *buf = 67109890;
          v130 = v103;
          v131 = 2082;
          v132 = v104;
          v133 = 2082;
          v134 = v105;
          v135 = 1024;
          v136 = 1154;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag is not NDEF readable", buf, 0x22u);
        }

        v106 = *(a1 + 40);
        v107 = [NSError alloc];
        v108 = [NSString stringWithUTF8String:"nfcd"];
        v121 = NSLocalizedDescriptionKey;
        v109 = [NSString stringWithUTF8String:"Tag Not NDEF formatted"];
        v122 = v109;
        v110 = [NSDictionary dictionaryWithObjects:&v122 forKeys:&v121 count:1];
        v111 = [v107 initWithDomain:v108 code:37 userInfo:v110];
        (*(v106 + 16))(v106, v111, 0);

        goto LABEL_26;
      }

      v78 = *(a1 + 32);
      v79 = *(v78 + 344);
      v80 = *(v78 + 376);
      v116 = v38;
      v81 = sub_100193E90(v79, v80, &v116);
      v82 = v116;

      if (v81)
      {
        v83 = sub_10024DC10();
        v84 = [v81 asData];
        sub_10024E250(v83, [v84 length]);
      }

      else
      {
        if (!v82)
        {
LABEL_78:
          (*(*(a1 + 40) + 16))();

          v38 = v82;
          goto LABEL_26;
        }

        v83 = sub_10024DC10();
        sub_10024E3FC(v83, v82);
      }

      goto LABEL_78;
    }

    v69 = *(v45 + 344);
    v120 = 0;
    v70 = sub_100193E90(v69, v46, &v120);
    v71 = v120;
    v38 = v71;
    if (v70)
    {
      v72 = sub_10024DC10();
      v73 = [v70 asData];
      sub_10024E250(v72, [v73 length]);
    }

    else
    {
      if (!v71)
      {
LABEL_54:
        (*(*(a1 + 40) + 16))();

        goto LABEL_26;
      }

      v72 = sub_10024DC10();
      sub_10024E3FC(v72, v38);
    }

    goto LABEL_54;
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

    v23(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v29, v26, v27, 1119, v28);
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
    v130 = v32;
    v131 = 2082;
    v132 = v33;
    v133 = 2082;
    v134 = v34;
    v135 = 1024;
    v136 = 1119;
    v137 = 2114;
    v138 = v35;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v36 = *(a1 + 40);
  if (v36)
  {
    v37 = [NSError alloc];
    v38 = [NSString stringWithUTF8String:"nfcd"];
    v127 = NSLocalizedDescriptionKey;
    v39 = [NSString stringWithUTF8String:"Session not active"];
    v128 = v39;
    v40 = [NSDictionary dictionaryWithObjects:&v128 forKeys:&v127 count:1];
    v41 = v37;
    v42 = v38;
    v43 = 54;
LABEL_24:
    v44 = [v41 initWithDomain:v42 code:v43 userInfo:v40];
    (*(v36 + 16))(v36, v44, 0);

LABEL_25:
LABEL_26:
  }
}

void sub_1001BA3AC(uint64_t a1)
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
    v9 = [*(a1 + 32) connection];
    v10 = [v9 processIdentifier];
    v11 = [*(a1 + 32) sessionUID];
    v12 = 43;
    if (!isMetaClass)
    {
      v12 = 45;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", v12, ClassName, Name, 1174, v8, v10, v11);
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
    v17 = sel_getName(*(a1 + 56));
    v18 = [*(a1 + 32) clientName];
    v19 = [*(a1 + 32) connection];
    v20 = [v19 processIdentifier];
    v21 = [*(a1 + 32) sessionUID];
    *buf = 67110658;
    v142 = v15;
    v143 = 2082;
    v144 = v16;
    v145 = 2082;
    v146 = v17;
    v147 = 1024;
    v148 = 1174;
    v149 = 2114;
    v150 = v18;
    v151 = 1024;
    v152 = v20;
    v153 = 2114;
    v154 = v21;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", buf, 0x3Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    if (*(*(a1 + 32) + 376))
    {
      if ([*(a1 + 40) conformsToProtocol:&OBJC_PROTOCOL___NFNdefMessage])
      {
        v45 = *(a1 + 32);
        if ((*(v45 + 385) & 2) != 0)
        {
          v80 = *(v45 + 344);
          v81 = *(a1 + 40);
          v82 = *(v45 + 376);
          v130 = 0;
          if (v80)
          {
            sub_100193F64(v80, v81, v82, 1, &v130);
            v83 = v130;
          }

          else
          {
            v83 = 0;
          }

          v38 = v83;
        }

        else
        {
          v46 = [*(a1 + 32) _refreshNdefTagConnection];
          if (v46)
          {
            v47 = v46;
            v48 = *(a1 + 48);
            v49 = [NSError alloc];
            v38 = [NSString stringWithUTF8String:"nfcd"];
            v50 = v47;
            v133[0] = NSLocalizedDescriptionKey;
            if (v47 >= 0x4C)
            {
              v51 = 76;
            }

            else
            {
              v51 = v47;
            }

            v39 = [NSString stringWithUTF8String:off_10031B2E8[v51]];
            v134[0] = v39;
            v134[1] = &off_100333A50;
            v133[1] = @"Line";
            v133[2] = @"Method";
            v52 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
            v134[2] = v52;
            v133[3] = NSDebugDescriptionErrorKey;
            v53 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 1199];
            v134[3] = v53;
            v54 = [NSDictionary dictionaryWithObjects:v134 forKeys:v133 count:4];
            v55 = [v49 initWithDomain:v38 code:v50 userInfo:v54];
            (*(v48 + 16))(v48, v55);

            goto LABEL_25;
          }

          v128[0] = 0;
          v128[1] = 0;
          v129 = 0;
          v84 = *(a1 + 32);
          v85 = *(v84 + 344);
          v86 = *(v84 + 376);
          v127 = 0;
          v87 = sub_1001916A4(v85, v86, v128, &v127);
          v38 = v127;
          if (v87)
          {
            if ((v129 & 0x100) != 0)
            {
              v89 = *(a1 + 32);
              v88 = *(a1 + 40);
              v90 = *(v89 + 344);
              v91 = *(v89 + 376);
              v126 = v38;
              v92 = v38;
              if (v90)
              {
                sub_100193F64(v90, v88, v91, 1, &v126);
                v92 = v126;
              }

              v93 = v92;

              (*(*(a1 + 48) + 16))();
              v38 = v93;
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v104 = NFLogGetLogger();
              if (v104)
              {
                v105 = v104;
                v106 = object_getClass(*(a1 + 32));
                v107 = class_isMetaClass(v106);
                v108 = object_getClassName(*(a1 + 32));
                v125 = sel_getName(*(a1 + 56));
                v109 = 45;
                if (v107)
                {
                  v109 = 43;
                }

                v105(3, "%c[%{public}s %{public}s]:%i Not writable", v109, v108, v125, 1211);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v110 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
              {
                v111 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v111))
                {
                  v112 = 43;
                }

                else
                {
                  v112 = 45;
                }

                v113 = object_getClassName(*(a1 + 32));
                v114 = sel_getName(*(a1 + 56));
                *buf = 67109890;
                v142 = v112;
                v143 = 2082;
                v144 = v113;
                v145 = 2082;
                v146 = v114;
                v147 = 1024;
                v148 = 1211;
                _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Not writable", buf, 0x22u);
              }

              v115 = *(a1 + 48);
              v116 = [NSError alloc];
              v117 = [NSString stringWithUTF8String:"nfcd"];
              v131 = NSLocalizedDescriptionKey;
              v118 = [NSString stringWithUTF8String:"Tag is Read Only"];
              v132 = v118;
              v119 = [NSDictionary dictionaryWithObjects:&v132 forKeys:&v131 count:1];
              v120 = [v116 initWithDomain:v117 code:46 userInfo:v119];
              (*(v115 + 16))(v115, v120);
            }

            goto LABEL_26;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v94 = NFLogGetLogger();
          if (v94)
          {
            v95 = v94;
            v96 = object_getClass(*(a1 + 32));
            v97 = class_isMetaClass(v96);
            v121 = object_getClassName(*(a1 + 32));
            v124 = sel_getName(*(a1 + 56));
            v98 = 45;
            if (v97)
            {
              v98 = 43;
            }

            v95(3, "%c[%{public}s %{public}s]:%i Failed to query NDEF capability, %{public}@", v98, v121, v124, 1205, v38);
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
            v142 = v101;
            v143 = 2082;
            v144 = v102;
            v145 = 2082;
            v146 = v103;
            v147 = 1024;
            v148 = 1205;
            v149 = 2114;
            v150 = v38;
            _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query NDEF capability, %{public}@", buf, 0x2Cu);
          }
        }

        (*(*(a1 + 48) + 16))();
        goto LABEL_26;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v68 = NFLogGetLogger();
      if (v68)
      {
        v69 = v68;
        v70 = object_getClass(*(a1 + 32));
        v71 = class_isMetaClass(v70);
        v72 = object_getClassName(*(a1 + 32));
        v123 = sel_getName(*(a1 + 56));
        v73 = 45;
        if (v71)
        {
          v73 = 43;
        }

        v69(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v73, v72, v123, 1186);
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
        v142 = v76;
        v143 = 2082;
        v144 = v77;
        v145 = 2082;
        v146 = v78;
        v147 = 1024;
        v148 = 1186;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
      }

      v36 = *(a1 + 48);
      v79 = [NSError alloc];
      v38 = [NSString stringWithUTF8String:"nfcd"];
      v135 = NSLocalizedDescriptionKey;
      v39 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v136 = v39;
      v40 = [NSDictionary dictionaryWithObjects:&v136 forKeys:&v135 count:1];
      v41 = v79;
      v42 = v38;
      v43 = 10;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v56 = NFLogGetLogger();
      if (v56)
      {
        v57 = v56;
        v58 = object_getClass(*(a1 + 32));
        v59 = class_isMetaClass(v58);
        v60 = object_getClassName(*(a1 + 32));
        v122 = sel_getName(*(a1 + 56));
        v61 = 45;
        if (v59)
        {
          v61 = 43;
        }

        v57(3, "%c[%{public}s %{public}s]:%i Tag not connected", v61, v60, v122, 1180);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v62 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v63 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v63))
        {
          v64 = 43;
        }

        else
        {
          v64 = 45;
        }

        v65 = object_getClassName(*(a1 + 32));
        v66 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v142 = v64;
        v143 = 2082;
        v144 = v65;
        v145 = 2082;
        v146 = v66;
        v147 = 1024;
        v148 = 1180;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag not connected", buf, 0x22u);
      }

      v36 = *(a1 + 48);
      v67 = [NSError alloc];
      v38 = [NSString stringWithUTF8String:"nfcd"];
      v137 = NSLocalizedDescriptionKey;
      v39 = [NSString stringWithUTF8String:"Tag Not Found"];
      v138 = v39;
      v40 = [NSDictionary dictionaryWithObjects:&v138 forKeys:&v137 count:1];
      v41 = v67;
      v42 = v38;
      v43 = 28;
    }

LABEL_24:
    v44 = [v41 initWithDomain:v42 code:v43 userInfo:v40];
    (*(v36 + 16))(v36, v44);

LABEL_25:
LABEL_26:

    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v22 = NFLogGetLogger();
  if (v22)
  {
    v23 = v22;
    v24 = object_getClass(*(a1 + 32));
    v25 = class_isMetaClass(v24);
    v26 = object_getClassName(*(a1 + 32));
    v27 = sel_getName(*(a1 + 56));
    v28 = [*(a1 + 32) sessionUID];
    v29 = 45;
    if (v25)
    {
      v29 = 43;
    }

    v23(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v29, v26, v27, 1177, v28);
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
    v35 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v142 = v32;
    v143 = 2082;
    v144 = v33;
    v145 = 2082;
    v146 = v34;
    v147 = 1024;
    v148 = 1177;
    v149 = 2114;
    v150 = v35;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v36 = *(a1 + 48);
  if (v36)
  {
    v37 = [NSError alloc];
    v38 = [NSString stringWithUTF8String:"nfcd"];
    v139 = NSLocalizedDescriptionKey;
    v39 = [NSString stringWithUTF8String:"Session not active"];
    v140 = v39;
    v40 = [NSDictionary dictionaryWithObjects:&v140 forKeys:&v139 count:1];
    v41 = v37;
    v42 = v38;
    v43 = 54;
    goto LABEL_24;
  }
}

void sub_1001BB1E0(uint64_t a1)
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
    v9 = [*(a1 + 32) connection];
    v10 = [v9 processIdentifier];
    v11 = [*(a1 + 32) sessionUID];
    v12 = 43;
    if (!isMetaClass)
    {
      v12 = 45;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", v12, ClassName, Name, 1223, v8, v10, v11);
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
    v17 = sel_getName(*(a1 + 56));
    v18 = [*(a1 + 32) clientName];
    v19 = [*(a1 + 32) connection];
    v20 = [v19 processIdentifier];
    v21 = [*(a1 + 32) sessionUID];
    *buf = 67110658;
    v81 = v15;
    v82 = 2082;
    v83 = v16;
    v84 = 2082;
    v85 = v17;
    v86 = 1024;
    v87 = 1223;
    v88 = 2114;
    v89 = v18;
    v90 = 1024;
    v91 = v20;
    v92 = 2114;
    v93 = v21;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", buf, 0x3Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v45 = *(a1 + 32);
    if (v45[47])
    {
      v46 = [v45 _refreshNdefTagConnection];
      if (!v46)
      {
        v69 = *(a1 + 32);
        v68 = *(a1 + 40);
        v70 = *(v69 + 344);
        v71 = *(v69 + 376);
        v73 = 0;
        sub_100195514(v70, v71, v68, &v73);
        v38 = v73;
        (*(*(a1 + 48) + 16))();
        goto LABEL_26;
      }

      v47 = v46;
      v48 = *(a1 + 48);
      v49 = [NSError alloc];
      v38 = [NSString stringWithUTF8String:"nfcd"];
      v50 = v47;
      v74[0] = NSLocalizedDescriptionKey;
      if (v47 >= 0x4C)
      {
        v51 = 76;
      }

      else
      {
        v51 = v47;
      }

      v39 = [NSString stringWithUTF8String:off_10031B2E8[v51]];
      v75[0] = v39;
      v75[1] = &off_100333A68;
      v74[1] = @"Line";
      v74[2] = @"Method";
      v52 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v75[2] = v52;
      v74[3] = NSDebugDescriptionErrorKey;
      v53 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 1235];
      v75[3] = v53;
      v54 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:4];
      v55 = [v49 initWithDomain:v38 code:v50 userInfo:v54];
      (*(v48 + 16))(v48, v55);

LABEL_25:
LABEL_26:

      return;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v56 = NFLogGetLogger();
    if (v56)
    {
      v57 = v56;
      v58 = object_getClass(*(a1 + 32));
      v59 = class_isMetaClass(v58);
      v60 = object_getClassName(*(a1 + 32));
      v72 = sel_getName(*(a1 + 56));
      v61 = 45;
      if (v59)
      {
        v61 = 43;
      }

      v57(3, "%c[%{public}s %{public}s]:%i Invalid tag state", v61, v60, v72, 1228);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v62 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v63))
      {
        v64 = 43;
      }

      else
      {
        v64 = 45;
      }

      v65 = object_getClassName(*(a1 + 32));
      v66 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v81 = v64;
      v82 = 2082;
      v83 = v65;
      v84 = 2082;
      v85 = v66;
      v86 = 1024;
      v87 = 1228;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid tag state", buf, 0x22u);
    }

    v36 = *(a1 + 48);
    v67 = [NSError alloc];
    v38 = [NSString stringWithUTF8String:"nfcd"];
    v76 = NSLocalizedDescriptionKey;
    v39 = [NSString stringWithUTF8String:"Invalid State"];
    v77 = v39;
    v40 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v41 = v67;
    v42 = v38;
    v43 = 12;
LABEL_24:
    v44 = [v41 initWithDomain:v42 code:v43 userInfo:v40];
    (*(v36 + 16))(v36, v44);

    goto LABEL_25;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v22 = NFLogGetLogger();
  if (v22)
  {
    v23 = v22;
    v24 = object_getClass(*(a1 + 32));
    v25 = class_isMetaClass(v24);
    v26 = object_getClassName(*(a1 + 32));
    v27 = sel_getName(*(a1 + 56));
    v28 = [*(a1 + 32) sessionUID];
    v29 = 45;
    if (v25)
    {
      v29 = 43;
    }

    v23(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v29, v26, v27, 1225, v28);
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
    v35 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v81 = v32;
    v82 = 2082;
    v83 = v33;
    v84 = 2082;
    v85 = v34;
    v86 = 1024;
    v87 = 1225;
    v88 = 2114;
    v89 = v35;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v36 = *(a1 + 48);
  if (v36)
  {
    v37 = [NSError alloc];
    v38 = [NSString stringWithUTF8String:"nfcd"];
    v78 = NSLocalizedDescriptionKey;
    v39 = [NSString stringWithUTF8String:"Session not active"];
    v79 = v39;
    v40 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v41 = v37;
    v42 = v38;
    v43 = 54;
    goto LABEL_24;
  }
}

void sub_1001BBA88(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", v12, ClassName, Name, 1249, v8, v10, v11);
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
    v100 = v15;
    v101 = 2082;
    v102 = v16;
    v103 = 2082;
    v104 = v17;
    v105 = 1024;
    v106 = 1249;
    v107 = 2114;
    v108 = v18;
    v109 = 1024;
    v110 = v20;
    v111 = 2114;
    v112 = v21;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", buf, 0x3Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v42 = *(a1 + 32);
    v43 = *(v42 + 376);
    if (v43)
    {
      v44 = sub_100195444(*(v42 + 344), v43);
      if (!v44)
      {
        (*(*(a1 + 40) + 16))();
        return;
      }

      v45 = v44;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v46 = NFLogGetLogger();
      if (v46)
      {
        v47 = v46;
        v48 = object_getClass(*(a1 + 32));
        v49 = class_isMetaClass(v48);
        v50 = object_getClassName(*(a1 + 32));
        v51 = sel_getName(*(a1 + 48));
        if (v45 == 28)
        {
          v52 = "NFResultTagNotFound";
        }

        else
        {
          v52 = "NFResultRFDeactivated";
        }

        v53 = 45;
        if (v49)
        {
          v53 = 43;
        }

        v47(3, "%c[%{public}s %{public}s]:%i checkTagPresence return error: %s", v53, v50, v51, 1263, v52);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v54 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
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
        *buf = 67110146;
        if (v45 == 28)
        {
          v59 = "NFResultTagNotFound";
        }

        else
        {
          v59 = "NFResultRFDeactivated";
        }

        v100 = v56;
        v101 = 2082;
        v102 = v57;
        v103 = 2082;
        v104 = v58;
        v105 = 1024;
        v106 = 1263;
        v107 = 2080;
        v108 = v59;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i checkTagPresence return error: %s", buf, 0x2Cu);
      }

      v60 = sub_10024DC10();
      v61 = [NSError alloc];
      v62 = [NSString stringWithUTF8String:"nfcd"];
      v63 = v45;
      v93 = NSLocalizedDescriptionKey;
      v64 = off_10031B2E8[v45];
      v65 = [NSString stringWithUTF8String:v64];
      v94 = v65;
      v66 = [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];
      v67 = [v61 initWithDomain:v62 code:v63 userInfo:v66];
      sub_10024E3FC(v60, v67);

      v68 = *(a1 + 40);
      v69 = [NSError alloc];
      v70 = [NSString stringWithUTF8String:"nfcd"];
      v91 = NSLocalizedDescriptionKey;
      v71 = [NSString stringWithUTF8String:v64];
      v92 = v71;
      v72 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
      v73 = [v69 initWithDomain:v70 code:v63 userInfo:v72];
      (*(v68 + 16))(v68, v73, 0);
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v74 = NFLogGetLogger();
      if (v74)
      {
        v75 = v74;
        v76 = object_getClass(*(a1 + 32));
        v77 = class_isMetaClass(v76);
        v78 = object_getClassName(*(a1 + 32));
        v90 = sel_getName(*(a1 + 48));
        v79 = 45;
        if (v77)
        {
          v79 = 43;
        }

        v75(3, "%c[%{public}s %{public}s]:%i Invalid tag state", v79, v78, v90, 1254);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v80 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        v81 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v81))
        {
          v82 = 43;
        }

        else
        {
          v82 = 45;
        }

        v83 = object_getClassName(*(a1 + 32));
        v84 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v100 = v82;
        v101 = 2082;
        v102 = v83;
        v103 = 2082;
        v104 = v84;
        v105 = 1024;
        v106 = 1254;
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid tag state", buf, 0x22u);
      }

      v85 = *(a1 + 40);
      v86 = [NSError alloc];
      v70 = [NSString stringWithUTF8String:"nfcd"];
      v95 = NSLocalizedDescriptionKey;
      v87 = [NSString stringWithUTF8String:"Invalid State"];
      v96 = v87;
      v88 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];
      v89 = [v86 initWithDomain:v70 code:12 userInfo:v88];
      (*(v85 + 16))(v85, v89, 0);
    }

    return;
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

    v23(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v29, v26, v27, 1251, v28);
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
    v100 = v32;
    v101 = 2082;
    v102 = v33;
    v103 = 2082;
    v104 = v34;
    v105 = 1024;
    v106 = 1251;
    v107 = 2114;
    v108 = v35;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v36 = *(a1 + 40);
  if (v36)
  {
    v37 = [NSError alloc];
    v38 = [NSString stringWithUTF8String:"nfcd"];
    v97 = NSLocalizedDescriptionKey;
    v39 = [NSString stringWithUTF8String:"Session not active"];
    v98 = v39;
    v40 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];
    v41 = [v37 initWithDomain:v38 code:54 userInfo:v40];
    (*(v36 + 16))(v36, v41, 0);
  }
}

id sub_1001BD450(uint64_t a1)
{
  if (([*(a1 + 32) didEnd] & 1) != 0 || objc_msgSend(*(a1 + 32), "isSuspended"))
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

      v3(3, "%c[%{public}s %{public}s]:%i Session has been terminated / suspended", v7, ClassName, Name, 1394);
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
      *buf = 67109890;
      *v44 = v10;
      *&v44[4] = 2082;
      *&v44[6] = v11;
      *&v44[14] = 2082;
      *&v44[16] = v12;
      v45 = 1024;
      v46 = 1394;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session has been terminated / suspended", buf, 0x22u);
    }

    v13 = [NSError alloc];
    v14 = [NSString stringWithUTF8String:"nfcd"];
    v49 = NSLocalizedDescriptionKey;
    v15 = [NSString stringWithUTF8String:"Invalid State"];
    v50 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v17 = [v13 initWithDomain:v14 code:12 userInfo:v16];
    goto LABEL_35;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 352));
  sub_1001B0320(WeakRetained, *(a1 + 32));

  v19 = +[_NFHardwareManager sharedHardwareManager];
  [v19 notifyReaderModeActivityEnd];

  *(*(a1 + 32) + 224) = *(a1 + 48);
  if (*(a1 + 64))
  {
    goto LABEL_14;
  }

  if (*(a1 + 65) == 1)
  {
    v44[0] = 2;
    *buf = 4194666;
    v20 = [NSData alloc];
    v21 = buf;
LABEL_19:
    v22 = [v20 initWithBytes:v21 length:5];
LABEL_20:
    v14 = v22;
    goto LABEL_21;
  }

  if ([*(a1 + 32) _isCoreNFCSession])
  {
    v20 = [NSData alloc];
    v21 = &unk_1002979E9;
    goto LABEL_19;
  }

  if (*(a1 + 66) == 1)
  {
    v22 = *(*(a1 + 32) + 312);
    goto LABEL_20;
  }

LABEL_14:
  v14 = 0;
LABEL_21:
  v15 = sub_10004C55C(NFRoutingConfig, (*(a1 + 56) >> 11) & 1, 2, 0, v14);
  sub_10004C450(v15, *(*(a1 + 32) + 304), [*(a1 + 32) _getTagNotificationConfig]);
  v23 = +[_NFHardwareManager sharedHardwareManager];
  v17 = [v23 setRoutingConfig:v15];

  if (!v17)
  {
    v24 = NFLogGetLogger();
    if (v24)
    {
      v25 = v24;
      v26 = object_getClass(*(a1 + 32));
      v27 = class_isMetaClass(v26);
      v28 = object_getClassName(*(a1 + 32));
      v29 = sel_getName(*(a1 + 40));
      v30 = [*(a1 + 32) clientName];
      v31 = 45;
      if (v27)
      {
        v31 = 43;
      }

      v25(6, "%c[%{public}s %{public}s]:%i NFC Reader mode activated: %@", v31, v28, v29, 1427, v30);
    }

    v32 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v33))
      {
        v34 = 43;
      }

      else
      {
        v34 = 45;
      }

      v35 = object_getClassName(*(a1 + 32));
      v36 = sel_getName(*(a1 + 40));
      v37 = [*(a1 + 32) clientName];
      *buf = 67110146;
      *v44 = v34;
      *&v44[4] = 2082;
      *&v44[6] = v35;
      *&v44[14] = 2082;
      *&v44[16] = v36;
      v45 = 1024;
      v46 = 1427;
      v47 = 2112;
      v48 = v37;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC Reader mode activated: %@", buf, 0x2Cu);
    }

    v38 = NFSharedSignpostLog();
    if (os_signpost_enabled(v38))
    {
      v39 = [*(a1 + 32) _isCoreNFCSession];
      v40 = *(*(a1 + 32) + 392);
      *buf = 134349312;
      *v44 = v39;
      *&v44[8] = 2050;
      *&v44[10] = v40;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Polling", " coreNFC=%{public,signpost.description:attribute}lu  sessionType=%{public,signpost.description:attribute}lu ", buf, 0x16u);
    }
  }

  v16 = sub_10024DC10();
  sub_10024EA4C(v16, *(*(a1 + 32) + 224));
LABEL_35:

  return v17;
}

void sub_1001BD9F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i Not ready: %{public}@", v8, ClassName, Name, 1444, v3);
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
      *buf = 67110146;
      v26 = v11;
      v27 = 2082;
      v28 = v12;
      v29 = 2082;
      v30 = v13;
      v31 = 1024;
      v32 = 1444;
      v33 = 2114;
      v34 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Not ready: %{public}@", buf, 0x2Cu);
    }

    v14 = *(a1 + 40);
    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v23 = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Busy"];
    v24 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v19 = [v15 initWithDomain:v16 code:2 userInfo:v18];
    (*(v14 + 16))(v14, v19);
  }

  else
  {
    v20 = *(a1 + 40);
    v16 = (*(*(a1 + 48) + 16))();
    (*(v20 + 16))(v20, v16);
  }
}

void sub_1001BDFC8(uint64_t a1)
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

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 1476, v8);
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
      v34 = 1476;
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

    [v22 _sync_setECPPayload:v23 completion:v24];
  }
}

void sub_1001BE408(uint64_t a1)
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
      Name = sel_getName(*(a1 + 48));
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 1506, v8);
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
      v29 = v12;
      v30 = 2082;
      v31 = v13;
      v32 = 2082;
      v33 = v14;
      v34 = 1024;
      v35 = 1506;
      v36 = 2114;
      v37 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v26 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v27 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);
    }
  }

  else
  {
    v22 = *(a1 + 56);
    v23 = *(a1 + 64);
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);

    [v24 _sync_startPollingForTags:v22 sessionConfig:v23 completion:v25];
  }
}

void sub_1001BE7C8(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 1515);
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
    v37 = v10;
    v38 = 2082;
    v39 = v11;
    v40 = 2082;
    v41 = v12;
    v42 = 1024;
    v43 = 1515;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
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

      v14(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v20, v17, v18, 1516, v19);
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
      v37 = v23;
      v38 = 2082;
      v39 = v24;
      v40 = 2082;
      v41 = v25;
      v42 = 1024;
      v43 = 1516;
      v44 = 2114;
      v45 = v26;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v27 = *(a1 + 40);
    if (v27)
    {
      v28 = [NSError alloc];
      v29 = [NSString stringWithUTF8String:"nfcd"];
      v34 = NSLocalizedDescriptionKey;
      v30 = [NSString stringWithUTF8String:"Session not active"];
      v35 = v30;
      v31 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v32 = [v28 initWithDomain:v29 code:54 userInfo:v31];
      (*(v27 + 16))(v27, v32);
    }
  }

  else
  {
    *(*(a1 + 32) + 339) = 1;
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001BF360(uint64_t a1)
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
      Name = sel_getName(*(a1 + 64));
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 1556, v8);
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
      v29 = v12;
      v30 = 2082;
      v31 = v13;
      v32 = 2082;
      v33 = v14;
      v34 = 1024;
      v35 = 1556;
      v36 = 2114;
      v37 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 56);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v26 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v27 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);
    }
  }

  else
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v24 = *(a1 + 48);
    v25 = *(a1 + 56);

    [v22 _sync_startPollingWithConfig:v23 validatedAIDList:v24 completion:v25];
  }
}

id sub_1001C0D48(uint64_t a1)
{
  if (([*(a1 + 32) didEnd] & 1) != 0 || objc_msgSend(*(a1 + 32), "isSuspended"))
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

      v3(3, "%c[%{public}s %{public}s]:%i Session has been terminated / suspended", v7, ClassName, Name, 1676);
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
      v12 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      *v38 = v10;
      *&v38[4] = 2082;
      *&v38[6] = v11;
      *&v38[14] = 2082;
      *&v38[16] = v12;
      v39 = 1024;
      v40 = 1676;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session has been terminated / suspended", buf, 0x22u);
    }

    v13 = [NSError alloc];
    v14 = [NSString stringWithUTF8String:"nfcd"];
    v43 = NSLocalizedDescriptionKey;
    v15 = [NSString stringWithUTF8String:"Invalid State"];
    v44 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v17 = [v13 initWithDomain:v14 code:12 userInfo:v16];

LABEL_13:
    goto LABEL_14;
  }

  v14 = sub_10004C55C(NFRoutingConfig, [*(a1 + 40) lpcd], *(a1 + 64), objc_msgSend(*(a1 + 40), "pollDuration"), *(a1 + 48));
  sub_10004C450(v14, *(*(a1 + 32) + 304), [*(a1 + 32) _getTagNotificationConfig]);
  v19 = +[_NFHardwareManager sharedHardwareManager];
  v17 = [v19 setRoutingConfig:v14];

  if (!v17)
  {
    v20 = NFLogGetLogger();
    if (v20)
    {
      v21 = v20;
      v22 = object_getClass(*(a1 + 32));
      v23 = class_isMetaClass(v22);
      v24 = object_getClassName(*(a1 + 32));
      v25 = sel_getName(*(a1 + 56));
      v26 = [*(a1 + 32) clientName];
      v27 = 45;
      if (v23)
      {
        v27 = 43;
      }

      v21(6, "%c[%{public}s %{public}s]:%i NFC Reader mode activated: %@", v27, v24, v25, 1690, v26);
    }

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
      v33 = [*(a1 + 32) clientName];
      *buf = 67110146;
      *v38 = v30;
      *&v38[4] = 2082;
      *&v38[6] = v31;
      *&v38[14] = 2082;
      *&v38[16] = v32;
      v39 = 1024;
      v40 = 1690;
      v41 = 2112;
      v42 = v33;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC Reader mode activated: %@", buf, 0x2Cu);
    }

    v15 = NFSharedSignpostLog();
    if (os_signpost_enabled(v15))
    {
      v34 = [*(a1 + 32) _isCoreNFCSession];
      v35 = *(*(a1 + 32) + 392);
      *buf = 134349312;
      *v38 = v34;
      *&v38[8] = 2050;
      *&v38[10] = v35;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Polling", " coreNFC=%{public,signpost.description:attribute}lu  sessionType=%{public,signpost.description:attribute}lu ", buf, 0x16u);
    }

    v17 = 0;
    goto LABEL_13;
  }

LABEL_14:

  return v17;
}

void sub_1001C11F8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i Not ready: %{public}@", v8, ClassName, Name, 1705, v3);
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
      *buf = 67110146;
      v26 = v11;
      v27 = 2082;
      v28 = v12;
      v29 = 2082;
      v30 = v13;
      v31 = 1024;
      v32 = 1705;
      v33 = 2114;
      v34 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Not ready: %{public}@", buf, 0x2Cu);
    }

    v14 = *(a1 + 40);
    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v23 = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Busy"];
    v24 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v19 = [v15 initWithDomain:v16 code:2 userInfo:v18];
    (*(v14 + 16))(v14, v19);
  }

  else
  {
    v20 = *(a1 + 40);
    v16 = (*(*(a1 + 48) + 16))();
    (*(v20 + 16))(v20, v16);
  }
}

void sub_1001C1558(uint64_t a1)
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
      Name = sel_getName(*(a1 + 48));
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 1723, v8);
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
      v28 = v12;
      v29 = 2082;
      v30 = v13;
      v31 = 2082;
      v32 = v14;
      v33 = 1024;
      v34 = 1723;
      v35 = 2114;
      v36 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 40);
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
    v22 = *(a1 + 56);
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);

    [v23 _sync_startPollingForNDEFMessagesWithSessionConfig:v22 completion:v24];
  }
}

id sub_1001C1DD4(uint64_t a1)
{
  if (([*(a1 + 32) didEnd] & 1) != 0 || objc_msgSend(*(a1 + 32), "isSuspended"))
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

      v3(3, "%c[%{public}s %{public}s]:%i Session has been terminated / suspended", v7, ClassName, Name, 1741);
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
      *buf = 67109890;
      *v41 = v10;
      *&v41[4] = 2082;
      *&v41[6] = v11;
      *&v41[14] = 2082;
      *&v41[16] = v12;
      v42 = 1024;
      v43 = 1741;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session has been terminated / suspended", buf, 0x22u);
    }

    v13 = [NSError alloc];
    v14 = [NSString stringWithUTF8String:"nfcd"];
    v46 = NSLocalizedDescriptionKey;
    v15 = [NSString stringWithUTF8String:"Invalid State"];
    v47 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v17 = [v13 initWithDomain:v14 code:12 userInfo:v16];
  }

  else
  {
    *(*(a1 + 32) + 224) = 2;
    *(*(a1 + 32) + 384) = *(a1 + 48);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 352));
    sub_1001B0320(WeakRetained, *(a1 + 32));

    v19 = +[_NFHardwareManager sharedHardwareManager];
    [v19 notifyReaderModeActivityEnd];

    *(*(a1 + 32) + 304) = 15;
    if ([*(a1 + 32) _isCoreNFCSession])
    {
      v14 = [[NSData alloc] initWithBytes:&unk_1002979E9 length:5];
      *(*(a1 + 32) + 304) |= 0x10u;
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_10004C55C(NFRoutingConfig, 0, 2, 0, v14);
    sub_10004C450(v15, *(*(a1 + 32) + 304), [*(a1 + 32) _getTagNotificationConfig]);
    v20 = +[_NFHardwareManager sharedHardwareManager];
    v17 = [v20 setRoutingConfig:v15];

    if (!v17)
    {
      v21 = NFLogGetLogger();
      if (v21)
      {
        v22 = v21;
        v23 = object_getClass(*(a1 + 32));
        v24 = class_isMetaClass(v23);
        v25 = object_getClassName(*(a1 + 32));
        v26 = sel_getName(*(a1 + 40));
        v27 = [*(a1 + 32) clientName];
        v28 = 45;
        if (v24)
        {
          v28 = 43;
        }

        v22(6, "%c[%{public}s %{public}s]:%i NFC Reader mode activated: %@", v28, v25, v26, 1763, v27);
      }

      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
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
        v33 = sel_getName(*(a1 + 40));
        v34 = [*(a1 + 32) clientName];
        *buf = 67110146;
        *v41 = v31;
        *&v41[4] = 2082;
        *&v41[6] = v32;
        *&v41[14] = 2082;
        *&v41[16] = v33;
        v42 = 1024;
        v43 = 1763;
        v44 = 2112;
        v45 = v34;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC Reader mode activated: %@", buf, 0x2Cu);
      }

      v35 = NFSharedSignpostLog();
      if (os_signpost_enabled(v35))
      {
        v36 = [*(a1 + 32) _isCoreNFCSession];
        v37 = *(*(a1 + 32) + 392);
        *buf = 134349312;
        *v41 = v36;
        *&v41[8] = 2050;
        *&v41[10] = v37;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Polling", " coreNFC=%{public,signpost.description:attribute}lu  sessionType=%{public,signpost.description:attribute}lu ", buf, 0x16u);
      }
    }

    v16 = sub_10024DC10();
    sub_10024EA4C(v16, *(*(a1 + 32) + 224));
  }

  return v17;
}

void sub_1001C233C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i Not ready: %{public}@", v8, ClassName, Name, 1780, v3);
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
      *buf = 67110146;
      v26 = v11;
      v27 = 2082;
      v28 = v12;
      v29 = 2082;
      v30 = v13;
      v31 = 1024;
      v32 = 1780;
      v33 = 2114;
      v34 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Not ready: %{public}@", buf, 0x2Cu);
    }

    v14 = *(a1 + 40);
    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v23 = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Busy"];
    v24 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v19 = [v15 initWithDomain:v16 code:2 userInfo:v18];
    (*(v14 + 16))(v14, v19);
  }

  else
  {
    v20 = *(a1 + 40);
    v16 = (*(*(a1 + 48) + 16))();
    (*(v20 + 16))(v20, v16);
  }
}

void sub_1001C2690(uint64_t a1)
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
      Name = sel_getName(*(a1 + 48));
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 1798, v8);
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
      v27 = v12;
      v28 = 2082;
      v29 = v13;
      v30 = 2082;
      v31 = v14;
      v32 = 1024;
      v33 = 1798;
      v34 = 2114;
      v35 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v24 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v25 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);
    }
  }

  else
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);

    [v22 _sync_stopPolling:v23];
  }
}

void sub_1001C2FCC(uint64_t a1)
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
      Name = sel_getName(*(a1 + 48));
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 1828, v8);
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
      v27 = v12;
      v28 = 2082;
      v29 = v13;
      v30 = 2082;
      v31 = v14;
      v32 = 1024;
      v33 = 1828;
      v34 = 2114;
      v35 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v24 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v25 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);
    }
  }

  else
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);

    [v22 _sync_restartPolling:v23];
  }
}

void sub_1001C37E4(uint64_t a1)
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

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 1871, v8);
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
      v34 = 1871;
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
      (*(v16 + 16))(v16, 0, 0, v21, 0.0);
    }
  }

  else
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v24 = *(a1 + 48);

    [v22 _sync_execRemoteAdminScript:v23 completion:v24];
  }
}

void sub_1001C58D0(uint64_t a1)
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
      Name = sel_getName(*(a1 + 64));
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 2048, v8);
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
      v30 = v12;
      v31 = 2082;
      v32 = v13;
      v33 = 2082;
      v34 = v14;
      v35 = 1024;
      v36 = 2048;
      v37 = 2114;
      v38 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 56);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v27 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v28 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, 0, v21);
    }
  }

  else
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v24 = *(a1 + 72);
    v25 = *(a1 + 48);
    v26 = *(a1 + 56);

    [v22 _sync_felicaStateForSystemCode:v23 withRequestService:v25 performSearchServiceCode:v24 completion:v26];
  }
}

void sub_1001C6548(uint64_t a1)
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

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 2136, v8);
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
      v26 = v12;
      v27 = 2082;
      v28 = v13;
      v29 = 2082;
      v30 = v14;
      v31 = 1024;
      v32 = 2136;
      v33 = 2114;
      v34 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v23 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v24 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);
    }
  }

  else
  {
    [*(*(a1 + 32) + 232) coreNFCUISetScanText:*(a1 + 40)];
    v22 = *(*(a1 + 48) + 16);

    v22();
  }
}

void sub_1001C6930(uint64_t a1)
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
      Name = sel_getName(*(a1 + 48));
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 2152, v8);
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
      v26 = v12;
      v27 = 2082;
      v28 = v13;
      v29 = 2082;
      v30 = v14;
      v31 = 1024;
      v32 = 2152;
      v33 = 2114;
      v34 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v23 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v24 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);
    }
  }

  else
  {
    *(*(a1 + 32) + 240) = *(a1 + 56);
    v22 = *(*(a1 + 40) + 16);

    v22();
  }
}

void sub_1001C6D34(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v18 = [*(a1 + 32) _RequestService:*(a1 + 40)];
    v22 = [v18 count];
    v23 = [*(a1 + 40) count];
    v24 = *(a1 + 48);
    if (v22 == v23)
    {
      (*(v24 + 16))(v24, v18, 0);
    }

    else
    {
      v25 = [NSError alloc];
      v26 = [NSString stringWithUTF8String:"nfcd"];
      v30 = NSLocalizedDescriptionKey;
      v27 = [NSString stringWithUTF8String:"Unexpected Result"];
      v31 = v27;
      v28 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v29 = [v25 initWithDomain:v26 code:13 userInfo:v28];
      (*(v24 + 16))(v24, v18, v29);
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
    Name = sel_getName(*(a1 + 56));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 2166, v8);
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
    v35 = v12;
    v36 = 2082;
    v37 = v13;
    v38 = 2082;
    v39 = v14;
    v40 = 1024;
    v41 = 2166;
    v42 = 2114;
    v43 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v32 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v33 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
    (*(v16 + 16))(v16, 0, v21);

LABEL_15:
  }
}

void sub_1001C71F8(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v18 = [*(a1 + 32) _RequestService:*(a1 + 40) forSystemCode:*(a1 + 48)];
    v22 = [v18 count];
    v23 = [*(a1 + 40) count];
    v24 = *(a1 + 56);
    if (v22 == v23)
    {
      (*(v24 + 16))(v24, v18, 0);
    }

    else
    {
      v25 = [NSError alloc];
      v26 = [NSString stringWithUTF8String:"nfcd"];
      v30 = NSLocalizedDescriptionKey;
      v27 = [NSString stringWithUTF8String:"Unexpected Result"];
      v31 = v27;
      v28 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v29 = [v25 initWithDomain:v26 code:13 userInfo:v28];
      (*(v24 + 16))(v24, v18, v29);
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

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 2181, v8);
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
    v35 = v12;
    v36 = 2082;
    v37 = v13;
    v38 = 2082;
    v39 = v14;
    v40 = 1024;
    v41 = 2181;
    v42 = 2114;
    v43 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v32 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v33 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
    (*(v16 + 16))(v16, 0, v21);

LABEL_15:
  }
}

void sub_1001C7674(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 2196, v8);
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
    v61 = v12;
    v62 = 2082;
    v63 = v13;
    v64 = 2082;
    v65 = v14;
    v66 = 1024;
    v67 = 2196;
    v68 = 2114;
    v69 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v39 = *(a1 + 32);
    v40 = *(v39 + 376);
    if (v40)
    {
      v41 = *(v39 + 344);
      v55 = 0;
      sub_100194D54(v41, v40, &v55);
      v32 = v55;
      (*(*(a1 + 40) + 16))();
      goto LABEL_25;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v42 = NFLogGetLogger();
    if (v42)
    {
      v43 = v42;
      v44 = object_getClass(*(a1 + 32));
      v45 = class_isMetaClass(v44);
      v46 = object_getClassName(*(a1 + 32));
      v54 = sel_getName(*(a1 + 48));
      v47 = 45;
      if (v45)
      {
        v47 = 43;
      }

      v43(3, "%c[%{public}s %{public}s]:%i Invalid tag state", v47, v46, v54, 2202);
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
      v52 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v61 = v50;
      v62 = 2082;
      v63 = v51;
      v64 = 2082;
      v65 = v52;
      v66 = 1024;
      v67 = 2202;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid tag state", buf, 0x22u);
    }

    v30 = *(a1 + 40);
    v53 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v56 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Invalid State"];
    v57 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v35 = v53;
    v36 = v32;
    v37 = 12;
LABEL_24:
    v38 = [v35 initWithDomain:v36 code:v37 userInfo:v34];
    (*(v30 + 16))(v30, v38);

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

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 2199, v22);
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
    v61 = v26;
    v62 = 2082;
    v63 = v27;
    v64 = 2082;
    v65 = v28;
    v66 = 1024;
    v67 = 2199;
    v68 = 2114;
    v69 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 40);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v58 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v59 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v35 = v31;
    v36 = v32;
    v37 = 54;
    goto LABEL_24;
  }
}

void sub_1001C7D4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[47])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v26 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v30 = 45;
      if (isMetaClass)
      {
        v30 = 43;
      }

      v26(3, "%c[%{public}s %{public}s]:%i Tag not connected", v30, ClassName, Name, 2217);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
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
      v35 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v111 = v33;
      v112 = 2082;
      v113 = v34;
      v114 = 2082;
      v115 = v35;
      v116 = 1024;
      v117 = 2217;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag not connected", buf, 0x22u);
    }

    v17 = *(a1 + 48);
    v36 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v120 = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithUTF8String:"Tag Not Found"];
    v121 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v121 forKeys:&v120 count:1];
    v22 = v36;
    v23 = v19;
    v24 = 28;
    goto LABEL_26;
  }

  if ([v2 didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v19 = *(a1 + 40);
    v38 = [v19 countByEnumeratingWithState:&v99 objects:v107 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v100;
      while (2)
      {
        for (i = 0; i != v39; i = i + 1)
        {
          if (*v100 != v40)
          {
            objc_enumerationMutation(v19);
          }

          if (![NFVASRequest validateDictionary:*(*(&v99 + 1) + 8 * i)])
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v60 = NFLogGetLogger();
            if (v60)
            {
              v61 = v60;
              v62 = object_getClass(*(a1 + 32));
              v63 = class_isMetaClass(v62);
              v64 = object_getClassName(*(a1 + 32));
              v94 = sel_getName(*(a1 + 56));
              v65 = 45;
              if (v63)
              {
                v65 = 43;
              }

              v61(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v65, v64, v94, 2226);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v66 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              v67 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v67))
              {
                v68 = 43;
              }

              else
              {
                v68 = 45;
              }

              v69 = object_getClassName(*(a1 + 32));
              v70 = sel_getName(*(a1 + 56));
              *buf = 67109890;
              v111 = v68;
              v112 = 2082;
              v113 = v69;
              v114 = 2082;
              v115 = v70;
              v116 = 1024;
              v117 = 2226;
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
            }

            v71 = *(a1 + 48);
            v72 = [NSError alloc];
            v20 = [NSString stringWithUTF8String:"nfcd"];
            v105 = NSLocalizedDescriptionKey;
            v21 = [NSString stringWithUTF8String:"Invalid Parameter"];
            v106 = v21;
            v37 = [NSDictionary dictionaryWithObjects:&v106 forKeys:&v105 count:1];
            v73 = [v72 initWithDomain:v20 code:10 userInfo:v37];
            (*(v71 + 16))(v71, v73, 0);

            goto LABEL_27;
          }
        }

        v39 = [v19 countByEnumeratingWithState:&v99 objects:v107 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }
    }

    v20 = objc_opt_new();
    v42 = [*(a1 + 32) driverWrapper];
    sub_10007FEC0(v20, v42);

    v43 = [*(a1 + 32) currentTag];
    sub_10007FEB0(v20, v43);

    v44 = [*(a1 + 32) whitelistChecker];
    [v44 sessionTimeLimit];
    if (v20)
    {
      *(v20 + 24) = v45;
    }

    v98 = 0;
    v21 = sub_10007D5CC(v20, &v98);
    v46 = v98;
    if (v46)
    {
      v19 = v46;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v47 = NFLogGetLogger();
      if (v47)
      {
        v48 = v47;
        v49 = object_getClass(*(a1 + 32));
        v50 = class_isMetaClass(v49);
        v90 = object_getClassName(*(a1 + 32));
        v93 = sel_getName(*(a1 + 56));
        v51 = 45;
        if (v50)
        {
          v51 = 43;
        }

        v48(3, "%c[%{public}s %{public}s]:%i error: %{public}@", v51, v90, v93, 2240, v19);
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
        *buf = 67110146;
        v111 = v54;
        v112 = 2082;
        v113 = v55;
        v114 = 2082;
        v115 = v56;
        v116 = 1024;
        v117 = 2240;
        v118 = 2114;
        v119 = v19;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i error: %{public}@", buf, 0x2Cu);
      }

      v57 = *(a1 + 48);
      v96 = [NSError alloc];
      v37 = [NSString stringWithUTF8String:"nfcd"];
      v58 = [v19 code];
      v103[0] = NSLocalizedDescriptionKey;
      if ([v19 code] > 75)
      {
        v59 = 76;
      }

      else
      {
        v59 = [v19 code];
      }

      v85 = [NSString stringWithUTF8String:off_10031B2E8[v59]];
      v104[0] = v85;
      v104[1] = v19;
      v103[1] = NSUnderlyingErrorKey;
      v103[2] = @"Line";
      v104[2] = &off_100333AB0;
      v103[3] = @"Method";
      v86 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v104[3] = v86;
      v103[4] = NSDebugDescriptionErrorKey;
      v87 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 2241];
      v104[4] = v87;
      v88 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:5];
      v89 = [v96 initWithDomain:v37 code:v58 userInfo:v88];
      (*(v57 + 16))(v57, v89, 0);
    }

    else
    {
      v74 = *(a1 + 40);
      v97 = 0;
      v19 = sub_10007E604(v20, v74, &v97);
      v37 = v97;
      if (v19)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v75 = NFLogGetLogger();
        if (v75)
        {
          v76 = v75;
          v77 = object_getClass(*(a1 + 32));
          v78 = class_isMetaClass(v77);
          v91 = object_getClassName(*(a1 + 32));
          v95 = sel_getName(*(a1 + 56));
          v79 = 45;
          if (v78)
          {
            v79 = 43;
          }

          v76(3, "%c[%{public}s %{public}s]:%i error: %{public}@", v79, v91, v95, 2248, v19);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v80 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          v81 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v81))
          {
            v82 = 43;
          }

          else
          {
            v82 = 45;
          }

          v83 = object_getClassName(*(a1 + 32));
          v84 = sel_getName(*(a1 + 56));
          *buf = 67110146;
          v111 = v82;
          v112 = 2082;
          v113 = v83;
          v114 = 2082;
          v115 = v84;
          v116 = 1024;
          v117 = 2248;
          v118 = 2114;
          v119 = v19;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i error: %{public}@", buf, 0x2Cu);
        }
      }

      (*(*(a1 + 48) + 16))(*(a1 + 48), v19, v37);
    }

    goto LABEL_27;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v3 = NFLogGetLogger();
  if (v3)
  {
    v4 = v3;
    v5 = object_getClass(*(a1 + 32));
    v6 = class_isMetaClass(v5);
    v7 = object_getClassName(*(a1 + 32));
    v8 = sel_getName(*(a1 + 56));
    v9 = [*(a1 + 32) sessionUID];
    v10 = 45;
    if (v6)
    {
      v10 = 43;
    }

    v4(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v10, v7, v8, 2222, v9);
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
    v15 = sel_getName(*(a1 + 56));
    v16 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v111 = v13;
    v112 = 2082;
    v113 = v14;
    v114 = 2082;
    v115 = v15;
    v116 = 1024;
    v117 = 2222;
    v118 = 2114;
    v119 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v108 = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithUTF8String:"Session not active"];
    v109 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v109 forKeys:&v108 count:1];
    v22 = v18;
    v23 = v19;
    v24 = 54;
LABEL_26:
    v37 = [v22 initWithDomain:v23 code:v24 userInfo:v21];
    (*(v17 + 16))(v17, v37, 0);
LABEL_27:
  }
}

void sub_1001C89C4(uint64_t a1)
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
      Name = sel_getName(*(a1 + 48));
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 2258, v8);
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
      v72 = v12;
      v73 = 2082;
      v74 = v13;
      v75 = 2082;
      v76 = v14;
      v77 = 1024;
      v78 = 2258;
      v79 = 2114;
      v80 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v69 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v70 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);
    }

    return;
  }

  if ([*(*(a1 + 32) + 176) readerInternalAccess] && (objc_msgSend(*(*(a1 + 32) + 176), "pollingProfileUpdate") & 1) != 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v23 = v22;
      v24 = object_getClass(*(a1 + 32));
      v25 = class_isMetaClass(v24);
      v26 = object_getClassName(*(a1 + 32));
      v27 = sel_getName(*(a1 + 48));
      v28 = 45;
      if (v25)
      {
        v28 = 43;
      }

      v23(6, "%c[%{public}s %{public}s]:%i Using polling profile: %ld", v28, v26, v27, 2266, *(a1 + 56));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
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
      v33 = sel_getName(*(a1 + 48));
      v34 = *(a1 + 56);
      *buf = 67110146;
      v72 = v31;
      v73 = 2082;
      v74 = v32;
      v75 = 2082;
      v76 = v33;
      v77 = 1024;
      v78 = 2266;
      v79 = 2048;
      v80 = v34;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Using polling profile: %ld", buf, 0x2Cu);
    }

    *(*(a1 + 32) + 320) = 0;
    v35 = *(a1 + 56);
    if (v35 <= 1)
    {
      v47 = 0;
      if (v35)
      {
        if (v35 != 1)
        {
          goto LABEL_57;
        }

        v47 = 1;
      }
    }

    else
    {
      switch(v35)
      {
        case 2:
          v47 = 2;
          break;
        case 3:
          v47 = 3;
          break;
        case 4:
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v36 = NFLogGetLogger();
          if (v36)
          {
            v37 = v36;
            v38 = object_getClass(*(a1 + 32));
            v39 = class_isMetaClass(v38);
            v40 = object_getClassName(*(a1 + 32));
            v65 = sel_getName(*(a1 + 48));
            v41 = 45;
            if (v39)
            {
              v41 = 43;
            }

            v37(6, "%c[%{public}s %{public}s]:%i NON ECP Polling", v41, v40, v65, 2278);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v42 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
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
            v72 = v44;
            v73 = 2082;
            v74 = v45;
            v75 = 2082;
            v76 = v46;
            v77 = 1024;
            v78 = 2278;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NON ECP Polling", buf, 0x22u);
          }

          v47 = 4;
          break;
        default:
LABEL_57:
          (*(*(a1 + 40) + 16))();
          return;
      }
    }

    *(*(a1 + 32) + 320) = v47;
    goto LABEL_57;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v48 = NFLogGetLogger();
  if (v48)
  {
    v49 = v48;
    v50 = object_getClass(*(a1 + 32));
    v51 = class_isMetaClass(v50);
    v52 = object_getClassName(*(a1 + 32));
    v66 = sel_getName(*(a1 + 48));
    v53 = 45;
    if (v51)
    {
      v53 = 43;
    }

    v49(3, "%c[%{public}s %{public}s]:%i Missing entitlement", v53, v52, v66, 2261);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v54 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
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
    *buf = 67109890;
    v72 = v56;
    v73 = 2082;
    v74 = v57;
    v75 = 2082;
    v76 = v58;
    v77 = 1024;
    v78 = 2261;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing entitlement", buf, 0x22u);
  }

  v59 = *(a1 + 40);
  v60 = [NSError alloc];
  v61 = [NSString stringWithUTF8String:"nfcd"];
  v67 = NSLocalizedDescriptionKey;
  v62 = [NSString stringWithUTF8String:"Not entitled"];
  v68 = v62;
  v63 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  v64 = [v60 initWithDomain:v61 code:32 userInfo:v63];
  (*(v59 + 16))(v59, v64);
}

void sub_1001C9480(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) readerInternalAccess];
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
      Name = sel_getName(*(a1 + 48));
      if (*(a1 + 56))
      {
        v9 = "enable";
      }

      else
      {
        v9 = "disable";
      }

      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v4(6, "%c[%{public}s %{public}s]:%i Wanting to %s ContinuousWave", v10, ClassName, Name, 2315, v9);
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
      v15 = sel_getName(*(a1 + 48));
      if (*(a1 + 56))
      {
        v16 = "enable";
      }

      else
      {
        v16 = "disable";
      }

      *buf = 67110146;
      v68 = v13;
      v69 = 2082;
      v70 = v14;
      v71 = 2082;
      v72 = v15;
      v73 = 1024;
      v74 = 2315;
      v75 = 2080;
      v76 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Wanting to %s ContinuousWave", buf, 0x2Cu);
    }

    v17 = +[_NFHardwareManager sharedHardwareManager];
    v18 = sub_10004C224(NFRoutingConfig, 0);
    v19 = [v17 setRoutingConfig:v18];

    if (v19)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v20 = NFLogGetLogger();
      if (v20)
      {
        v21 = v20;
        v22 = object_getClass(*(a1 + 32));
        v23 = class_isMetaClass(v22);
        v24 = object_getClassName(*(a1 + 32));
        v64 = sel_getName(*(a1 + 48));
        v25 = 45;
        if (v23)
        {
          v25 = 43;
        }

        v21(6, "%c[%{public}s %{public}s]:%i Error turning off routing.", v25, v24, v64, 2319);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v26 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

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
      v30 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v68 = v28;
      v69 = 2082;
      v70 = v29;
      v71 = 2082;
      v72 = v30;
      v73 = 1024;
      v74 = 2319;
      v31 = "%c[%{public}s %{public}s]:%i Error turning off routing.";
      v32 = v26;
      v33 = OS_LOG_TYPE_DEFAULT;
      v34 = 34;
    }

    else
    {
      v49 = *(a1 + 57);
      v19 = sub_1001EBF94(*(*(a1 + 32) + 344), *(a1 + 56));
      if (!v19)
      {
        v63 = 1;
        if (*(a1 + 57))
        {
          v63 = 2;
        }

        *(*(a1 + 32) + 328) = v63;
        goto LABEL_55;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFLogGetLogger();
      if (v50)
      {
        v51 = v50;
        v52 = object_getClass(*(a1 + 32));
        v53 = class_isMetaClass(v52);
        v54 = object_getClassName(*(a1 + 32));
        v55 = sel_getName(*(a1 + 48));
        if (*(a1 + 56))
        {
          v56 = "enable";
        }

        else
        {
          v56 = "disable";
        }

        v66 = v56;
        v57 = 45;
        if (v53)
        {
          v57 = 43;
        }

        v51(3, "%c[%{public}s %{public}s]:%i Failed to %s ContinuousWave - error=%{public}@", v57, v54, v55, 2323, v66, v19);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v26 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
LABEL_54:

LABEL_55:
        (*(*(a1 + 40) + 16))();
        goto LABEL_56;
      }

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
      v61 = sel_getName(*(a1 + 48));
      if (*(a1 + 56))
      {
        v62 = "enable";
      }

      else
      {
        v62 = "disable";
      }

      *buf = 67110402;
      v68 = v59;
      v69 = 2082;
      v70 = v60;
      v71 = 2082;
      v72 = v61;
      v73 = 1024;
      v74 = 2323;
      v75 = 2080;
      v76 = v62;
      v77 = 2114;
      v78 = v19;
      v31 = "%c[%{public}s %{public}s]:%i Failed to %s ContinuousWave - error=%{public}@";
      v32 = v26;
      v33 = OS_LOG_TYPE_ERROR;
      v34 = 54;
    }

    _os_log_impl(&_mh_execute_header, v32, v33, v31, buf, v34);
    goto LABEL_54;
  }

  if (Logger)
  {
    v35 = object_getClass(*(a1 + 32));
    v36 = class_isMetaClass(v35);
    v37 = object_getClassName(*(a1 + 32));
    v65 = sel_getName(*(a1 + 48));
    v38 = 45;
    if (v36)
    {
      v38 = 43;
    }

    v4(3, "%c[%{public}s %{public}s]:%i Missing entitlement", v38, v37, v65, 2310);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v39 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
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
    v43 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v68 = v41;
    v69 = 2082;
    v70 = v42;
    v71 = 2082;
    v72 = v43;
    v73 = 1024;
    v74 = 2310;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing entitlement", buf, 0x22u);
  }

  v44 = *(a1 + 40);
  v45 = [NSError alloc];
  v19 = [NSString stringWithUTF8String:"nfcd"];
  v79 = NSLocalizedDescriptionKey;
  v46 = [NSString stringWithUTF8String:"Not entitled"];
  v80 = v46;
  v47 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
  v48 = [v45 initWithDomain:v19 code:32 userInfo:v47];
  (*(v44 + 16))(v44, v48);

LABEL_56:
}

void sub_1001C9E60(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", v12, ClassName, Name, 2343, v8, v10, v11);
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
    v48 = v15;
    v49 = 2082;
    v50 = v16;
    v51 = 2082;
    v52 = v17;
    v53 = 1024;
    v54 = 2343;
    v55 = 2114;
    v56 = v18;
    v57 = 1024;
    v58 = v20;
    v59 = 2114;
    v60 = v21;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", buf, 0x3Cu);
  }

  if ([*(*(a1 + 32) + 176) readerInternalAccess])
  {
    v22 = *(*(a1 + 32) + 344);
    v44 = 0;
    v23 = sub_10022541C(v22, &v44);
    v24 = v44;
    (*(*(a1 + 40) + 16))(v23);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFLogGetLogger();
    if (v25)
    {
      v26 = v25;
      v27 = object_getClass(*(a1 + 32));
      v28 = class_isMetaClass(v27);
      v29 = object_getClassName(*(a1 + 32));
      v43 = sel_getName(*(a1 + 48));
      v30 = 45;
      if (v28)
      {
        v30 = 43;
      }

      v26(3, "%c[%{public}s %{public}s]:%i Missing entitlement", v30, v29, v43, 2346);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
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
      v35 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v48 = v33;
      v49 = 2082;
      v50 = v34;
      v51 = 2082;
      v52 = v35;
      v53 = 1024;
      v54 = 2346;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing entitlement", buf, 0x22u);
    }

    v36 = *(a1 + 40);
    v37 = [NSError alloc];
    v24 = [NSString stringWithUTF8String:"nfcd"];
    v45[0] = NSLocalizedDescriptionKey;
    v38 = [NSString stringWithUTF8String:"Not entitled"];
    v46[0] = v38;
    v46[1] = &off_100333AC8;
    v45[1] = @"Line";
    v45[2] = @"Method";
    v39 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v46[2] = v39;
    v45[3] = NSDebugDescriptionErrorKey;
    v40 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 2347];
    v46[3] = v40;
    v41 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:4];
    v42 = [v37 initWithDomain:v24 code:32 userInfo:v41];
    (*(v36 + 16))(v36, v42, 0.0);
  }
}

void sub_1001CABAC(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.reader.presenceCheckTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v2, &v7);
  os_activity_scope_leave(&v7);

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained && ([WeakRetained didEnd] & 1) == 0)
  {
    v5 = sub_100195444(v4[43], *(*(*(a1 + 32) + 8) + 40));
    if (v5 != 51)
    {
      if (!v5)
      {
        [*(*(*(a1 + 40) + 8) + 40) startTimer:0.5];
        goto LABEL_10;
      }

      sub_10019117C(v4[43], *(*(*(a1 + 32) + 8) + 40), 0);
    }

    v6 = NFSharedSignpostLog();
    if (os_signpost_enabled(v6))
    {
      LOWORD(v7.opaque[0]) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "tagRemovalDetect", &unk_1002E8B7A, &v7, 2u);
    }

    sub_10021E364(v4[43]);
  }

LABEL_10:
}

id sub_1001D7CCC(uint64_t a1, unint64_t a2, size_t a3)
{
  objc_opt_self();
  v5 = malloc_type_calloc(1uLL, a3, 0x100004077774924uLL);
  v6 = (a3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = vdupq_n_s64(a3 - 1);
  v8 = v5 + 7;
  v9 = xmmword_100297A40;
  v10 = xmmword_100297A50;
  v11 = xmmword_100297A60;
  v12 = xmmword_100297A70;
  v13 = xmmword_100297A80;
  v14 = xmmword_100297A90;
  v15 = xmmword_100297AA0;
  v16 = xmmword_100297710;
  do
  {
    v17 = vmovn_s64(vcgeq_u64(v7, v16));
    v18 = vdupq_n_s64(1uLL);
    v19 = vaddq_s64(v16, v18);
    if (vuzp1_s8(vuzp1_s16(v17, *v7.i8), *v7.i8).u8[0])
    {
      *(v8 - 7) = a2 >> (8 * (a3 - v19.i8[0]));
    }

    if (vuzp1_s8(vuzp1_s16(v17, *&v7), *&v7).i8[1])
    {
      *(v8 - 6) = a2 >> (8 * (a3 - v19.i8[8]));
    }

    v20 = vaddq_s64(v15, v18);
    if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v15))), *&v7).i8[2])
    {
      *(v8 - 5) = a2 >> (8 * (a3 - v20.i8[0]));
      *(v8 - 4) = a2 >> (8 * (a3 - v20.i8[8]));
    }

    v21 = vaddq_s64(v14, v18);
    v22 = vmovn_s64(vcgeq_u64(v7, v14));
    if (vuzp1_s8(*&v7, vuzp1_s16(v22, *&v7)).i32[1])
    {
      *(v8 - 3) = a2 >> (8 * (a3 - v21.i8[0]));
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(v22, *&v7)).i8[5])
    {
      *(v8 - 2) = a2 >> (8 * (a3 - v21.i8[8]));
    }

    v23 = vaddq_s64(v13, v18);
    if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v13)))).i8[6])
    {
      *(v8 - 1) = a2 >> (8 * (a3 - v23.i8[0]));
      *v8 = a2 >> (8 * (a3 - v23.i8[8]));
    }

    v24 = vaddq_s64(v12, v18);
    v25 = vmovn_s64(vcgeq_u64(v7, v12));
    if (vuzp1_s8(vuzp1_s16(v25, *v7.i8), *v7.i8).u8[0])
    {
      v8[1] = a2 >> (8 * (a3 - v24.i8[0]));
    }

    if (vuzp1_s8(vuzp1_s16(v25, *&v7), *&v7).i8[1])
    {
      v8[2] = a2 >> (8 * (a3 - v24.i8[8]));
    }

    v26 = vaddq_s64(v11, v18);
    if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v11))), *&v7).i8[2])
    {
      v8[3] = a2 >> (8 * (a3 - v26.i8[0]));
      v8[4] = a2 >> (8 * (a3 - v26.i8[8]));
    }

    v27 = vaddq_s64(v10, v18);
    v28 = vmovn_s64(vcgeq_u64(v7, v10));
    if (vuzp1_s8(*&v7, vuzp1_s16(v28, *&v7)).i32[1])
    {
      v8[5] = a2 >> (8 * (a3 - v27.i8[0]));
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(v28, *&v7)).i8[5])
    {
      v8[6] = a2 >> (8 * (a3 - v27.i8[8]));
    }

    v29 = vaddq_s64(v9, v18);
    if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v9)))).i8[6])
    {
      v8[7] = a2 >> (8 * (a3 - v29.i8[0]));
      v8[8] = a2 >> (8 * (a3 - v29.i8[8]));
    }

    v30 = vdupq_n_s64(0x10uLL);
    v14 = vaddq_s64(v14, v30);
    v15 = vaddq_s64(v15, v30);
    v16 = vaddq_s64(v16, v30);
    v13 = vaddq_s64(v13, v30);
    v12 = vaddq_s64(v12, v30);
    v11 = vaddq_s64(v11, v30);
    v10 = vaddq_s64(v10, v30);
    v9 = vaddq_s64(v9, v30);
    v8 += 16;
    v6 -= 16;
  }

  while (v6);
  v31 = [[NSData alloc] initWithBytesNoCopy:v5 length:a3];

  return v31;
}

id sub_1001D8074(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  if (v2)
  {
    v4 = +[NSCalendar currentCalendar];
    v5 = [v4 components:28 fromDate:v2];

    v6 = [v5 year];
    v7 = (v6 / 10 * 0x6666666666666667) >> 64;
    buf[0] = ([v5 year] % 10) | (16 * (v6 / 10 - 10 * ((v7 < 0) + (v7 >> 2))));
    v8 = [v5 month];
    v9 = (v8 / 10 * 0x6666666666666667) >> 64;
    buf[1] = ([v5 month] % 10) | (16 * (v8 / 10 - 10 * ((v9 < 0) + (v9 >> 2))));
    v10 = [v5 day];
    v11 = (v10 / 10 * 0x6666666666666667) >> 64;
    buf[2] = ([v5 day] % 10) | (16 * (v10 / 10 - 10 * ((v11 < 0) + (v11 >> 2))));
    v12 = [[NSData alloc] initWithBytes:buf length:3];
    v13 = [NFTLV TLVWithTag:154 value:v12];
  }

  else
  {
    v14 = v3;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v16 = Logger;
      Class = object_getClass(v14);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v14);
      Name = sel_getName("_tlvForDate:");
      v20 = 45;
      if (isMetaClass)
      {
        v20 = 43;
      }

      v16(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v20, ClassName, Name, 52);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = object_getClass(v14);
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      *buf = 67109890;
      v27 = v23;
      v28 = 2082;
      v29 = object_getClassName(v14);
      v30 = 2082;
      v31 = sel_getName("_tlvForDate:");
      v32 = 1024;
      v33 = 52;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
    }

    v13 = 0;
  }

  return v13;
}

id sub_1001D8388(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = sub_1001D85A8(NFECommercePaymentRequestEncoder, v2);
  if (v4)
  {
    v5 = sub_1001D7CCC(v3, v4, 2uLL);
    v6 = [NFTLV TLVWithTag:40730 value:v5];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("_tlvForCountryCode:");
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i Invalid country code, %{public}@", v11, ClassName, Name, 75, v2);
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

      *buf = 67110146;
      v19 = v14;
      v20 = 2082;
      v21 = object_getClassName(v3);
      v22 = 2082;
      v23 = sel_getName("_tlvForCountryCode:");
      v24 = 1024;
      v25 = 75;
      v26 = 2114;
      v27 = v2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid country code, %{public}@", buf, 0x2Cu);
    }

    v6 = 0;
  }

  return v6;
}

uint64_t sub_1001D85A8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  objc_sync_enter(v3);
  if (!qword_10035DAB8)
  {
    qword_10035DAB8 = &off_100339C10;
  }

  objc_sync_exit(v3);

  if ([v2 length] != 2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("_iso3166ForCountryCode:");
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i Country code length too small", v12, ClassName, Name, 352);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v14 = object_getClass(v3);
    if (class_isMetaClass(v14))
    {
      v15 = 43;
    }

    else
    {
      v15 = 45;
    }

    *buf = 67109890;
    v31 = v15;
    v32 = 2082;
    v33 = object_getClassName(v3);
    v34 = 2082;
    v35 = sel_getName("_iso3166ForCountryCode:");
    v36 = 1024;
    v37 = 352;
    v16 = "%c[%{public}s %{public}s]:%i Country code length too small";
    v17 = v13;
    v18 = 34;
    goto LABEL_24;
  }

  v4 = [qword_10035DAB8 objectForKey:v2];
  v5 = [v4 unsignedShortValue];

  if (!v5)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v20 = v19;
      v21 = object_getClass(v3);
      v22 = class_isMetaClass(v21);
      v27 = object_getClassName(v3);
      v29 = sel_getName("_iso3166ForCountryCode:");
      v23 = 45;
      if (v22)
      {
        v23 = 43;
      }

      v20(3, "%c[%{public}s %{public}s]:%i Invalid country code, %{public}@", v23, v27, v29, 358, v2);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v24 = object_getClass(v3);
    if (class_isMetaClass(v24))
    {
      v25 = 43;
    }

    else
    {
      v25 = 45;
    }

    *buf = 67110146;
    v31 = v25;
    v32 = 2082;
    v33 = object_getClassName(v3);
    v34 = 2082;
    v35 = sel_getName("_iso3166ForCountryCode:");
    v36 = 1024;
    v37 = 358;
    v38 = 2114;
    v39 = v2;
    v16 = "%c[%{public}s %{public}s]:%i Invalid country code, %{public}@";
    v17 = v13;
    v18 = 44;
LABEL_24:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
LABEL_25:

    v6 = 0;
    goto LABEL_26;
  }

  v6 = v5;
LABEL_26:

  return v6;
}

id sub_1001D88E0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  if ([v4 length] != 3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v10 = Logger;
      Class = object_getClass(v5);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v5);
      Name = sel_getName("_tlvForCurrency:decimalDigits:");
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i Invalid parameter length", v14, ClassName, Name, 86);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v16 = object_getClass(v5);
    if (class_isMetaClass(v16))
    {
      v17 = 43;
    }

    else
    {
      v17 = 45;
    }

    *buf = 67109890;
    v37 = v17;
    v38 = 2082;
    v39 = object_getClassName(v5);
    v40 = 2082;
    v41 = sel_getName("_tlvForCurrency:decimalDigits:");
    v42 = 1024;
    v43 = 86;
    v18 = "%c[%{public}s %{public}s]:%i Invalid parameter length";
    v19 = v15;
    v20 = 34;
    goto LABEL_22;
  }

  v46 = 0;
  [v4 getCharacters:&v46 range:{0, 3}];
  NumericCode = ucurr_getNumericCode();
  if (!NumericCode)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v22 = v21;
      v23 = object_getClass(v5);
      v24 = class_isMetaClass(v23);
      v33 = object_getClassName(v5);
      v35 = sel_getName("_tlvForCurrency:decimalDigits:");
      v25 = 45;
      if (v24)
      {
        v25 = 43;
      }

      v22(3, "%c[%{public}s %{public}s]:%i Unable to determine ISO currency code for %{public}@", v25, v33, v35, 95, v4);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v26 = object_getClass(v5);
    if (class_isMetaClass(v26))
    {
      v27 = 43;
    }

    else
    {
      v27 = 45;
    }

    *buf = 67110146;
    v37 = v27;
    v38 = 2082;
    v39 = object_getClassName(v5);
    v40 = 2082;
    v41 = sel_getName("_tlvForCurrency:decimalDigits:");
    v42 = 1024;
    v43 = 95;
    v44 = 2114;
    v45 = v4;
    v18 = "%c[%{public}s %{public}s]:%i Unable to determine ISO currency code for %{public}@";
    v19 = v15;
    v20 = 44;
LABEL_22:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
LABEL_23:

    v28 = 0;
    goto LABEL_27;
  }

  v7 = NumericCode;
  DefaultFractionDigits = ucurr_getDefaultFractionDigits();
  if (a3)
  {
    *a3 = DefaultFractionDigits;
  }

  v29 = v7 / 100 % 100;
  v30 = (((103 * v29) >> 15) & 1) + ((103 * v29) >> 10);
  v31 = sub_1001D7CCC(v5, ((v30 << 12) | ((v29 - 10 * v30) << 8)) | ((v7 % 100 - 10 * ((((103 * (v7 % 100)) & 0x8000) != 0) + ((103 * (v7 % 100)) >> 10))) | (16 * ((((103 * (v7 % 100)) & 0x8000) != 0) + ((103 * (v7 % 100)) >> 10)))), 2uLL);
  v28 = [NFTLV TLVWithTag:24362 value:v31];

LABEL_27:

  return v28;
}

id sub_1001D8E10(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  if (!v4)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v17 = Logger;
      Class = object_getClass(v5);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v5);
      Name = sel_getName("_tlvForAmount:decimalDigits:");
      v21 = 45;
      if (isMetaClass)
      {
        v21 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v21, ClassName, Name, 116);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

    v22 = object_getClass(v5);
    if (class_isMetaClass(v22))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    *buf = 67109890;
    v95 = v23;
    v96 = 2082;
    v97 = object_getClassName(v5);
    v98 = 2082;
    v99 = sel_getName("_tlvForAmount:decimalDigits:");
    v100 = 1024;
    v101 = 116;
    v15 = "%c[%{public}s %{public}s]:%i Invalid parameter";
    goto LABEL_53;
  }

  if (a3 < 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v25 = v24;
      v26 = object_getClass(v5);
      v27 = class_isMetaClass(v26);
      v28 = object_getClassName(v5);
      v87 = sel_getName("_tlvForAmount:decimalDigits:");
      v29 = 45;
      if (v27)
      {
        v29 = 43;
      }

      v25(3, "%c[%{public}s %{public}s]:%i Digits is negative", v29, v28, v87, 121);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

    v30 = object_getClass(v5);
    if (class_isMetaClass(v30))
    {
      v31 = 43;
    }

    else
    {
      v31 = 45;
    }

    *buf = 67109890;
    v95 = v31;
    v96 = 2082;
    v97 = object_getClassName(v5);
    v98 = 2082;
    v99 = sel_getName("_tlvForAmount:decimalDigits:");
    v100 = 1024;
    v101 = 121;
    v15 = "%c[%{public}s %{public}s]:%i Digits is negative";
    goto LABEL_53;
  }

  if (a3 >= 0x10000)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v6 = NFLogGetLogger();
    if (v6)
    {
      v7 = v6;
      v8 = object_getClass(v5);
      v9 = class_isMetaClass(v8);
      v10 = object_getClassName(v5);
      v85 = sel_getName("_tlvForAmount:decimalDigits:");
      v11 = 45;
      if (v9)
      {
        v11 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Digits is too large", v11, v10, v85, 126);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

    v13 = object_getClass(v5);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    *buf = 67109890;
    v95 = v14;
    v96 = 2082;
    v97 = object_getClassName(v5);
    v98 = 2082;
    v99 = sel_getName("_tlvForAmount:decimalDigits:");
    v100 = 1024;
    v101 = 126;
    v15 = "%c[%{public}s %{public}s]:%i Digits is too large";
LABEL_53:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v15, buf, 0x22u);
LABEL_54:

    v47 = 0;
    goto LABEL_55;
  }

  v32 = +[NSDecimalNumber notANumber];
  v33 = [v4 isEqualToNumber:v32];

  if (v33)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFLogGetLogger();
    if (v34)
    {
      v35 = v34;
      v36 = object_getClass(v5);
      v37 = class_isMetaClass(v36);
      v38 = object_getClassName(v5);
      v88 = sel_getName("_tlvForAmount:decimalDigits:");
      v39 = 45;
      if (v37)
      {
        v39 = 43;
      }

      v35(3, "%c[%{public}s %{public}s]:%i Value is NaN", v39, v38, v88, 132);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

    v40 = object_getClass(v5);
    if (class_isMetaClass(v40))
    {
      v41 = 43;
    }

    else
    {
      v41 = 45;
    }

    *buf = 67109890;
    v95 = v41;
    v96 = 2082;
    v97 = object_getClassName(v5);
    v98 = 2082;
    v99 = sel_getName("_tlvForAmount:decimalDigits:");
    v100 = 1024;
    v101 = 132;
    v15 = "%c[%{public}s %{public}s]:%i Value is NaN";
    goto LABEL_53;
  }

  v42 = +[NSDecimalNumber zero];
  v43 = [v4 compare:v42];

  if (v43 == -1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v48 = NFLogGetLogger();
    if (v48)
    {
      v49 = v48;
      v50 = object_getClass(v5);
      v51 = class_isMetaClass(v50);
      v52 = object_getClassName(v5);
      v89 = sel_getName("_tlvForAmount:decimalDigits:");
      v53 = 45;
      if (v51)
      {
        v53 = 43;
      }

      v49(3, "%c[%{public}s %{public}s]:%i Value is negative", v53, v52, v89, 138);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

    v54 = object_getClass(v5);
    if (class_isMetaClass(v54))
    {
      v55 = 43;
    }

    else
    {
      v55 = 45;
    }

    *buf = 67109890;
    v95 = v55;
    v96 = 2082;
    v97 = object_getClassName(v5);
    v98 = 2082;
    v99 = sel_getName("_tlvForAmount:decimalDigits:");
    v100 = 1024;
    v101 = 138;
    v15 = "%c[%{public}s %{public}s]:%i Value is negative";
    goto LABEL_53;
  }

  v93 = 0;
  v92 = 0;
  v44 = +[NSDecimalNumber zero];
  v45 = [v4 isEqualToNumber:v44];

  if (v45)
  {
    goto LABEL_43;
  }

  v57 = +[NSDecimalNumber one];
  v58 = [v4 isEqualToNumber:v57];

  if (v58)
  {
    v59 = __exp10(a3);
  }

  else
  {
    v60 = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:0 scale:a3 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
    v46 = [v4 decimalNumberByRoundingAccordingToBehavior:v60];

    if (v46)
    {
      [v46 decimalValue];
    }

    v61 = __exp10(a3);
    if (!is_mul_ok(0, v61))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v62 = NFLogGetLogger();
      if (v62)
      {
        v63 = v62;
        v64 = object_getClass(v5);
        v65 = class_isMetaClass(v64);
        v66 = object_getClassName(v5);
        v90 = sel_getName("_tlvForAmount:decimalDigits:");
        v67 = 45;
        if (v65)
        {
          v67 = 43;
        }

        v63(3, "%c[%{public}s %{public}s]:%i mantissa overflow during mult of %llu and %lld", v67, v66, v90, 185, 0, v61);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v68 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v69 = object_getClass(v5);
        if (class_isMetaClass(v69))
        {
          v70 = 43;
        }

        else
        {
          v70 = 45;
        }

        v71 = object_getClassName(v5);
        v72 = sel_getName("_tlvForAmount:decimalDigits:");
        *buf = 67110402;
        v95 = v70;
        v96 = 2082;
        v97 = v71;
        v98 = 2082;
        v99 = v72;
        v100 = 1024;
        v101 = 185;
        v102 = 2048;
        v103 = 0;
        v104 = 2048;
        v105 = v61;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i mantissa overflow during mult of %llu and %lld", buf, 0x36u);
      }

      goto LABEL_89;
    }

    v59 = 0;
  }

  if (v59 > 0xE8D4A50FFFLL)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v73 = NFLogGetLogger();
    if (v73)
    {
      v74 = v73;
      v75 = object_getClass(v5);
      v76 = class_isMetaClass(v75);
      v77 = object_getClassName(v5);
      v91 = sel_getName("_tlvForAmount:decimalDigits:");
      v78 = 45;
      if (v76)
      {
        v78 = 43;
      }

      v74(3, "%c[%{public}s %{public}s]:%i Size of mantissa > provided buffer size.", v78, v77, v91, 194);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v46 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v79 = object_getClass(v5);
      if (class_isMetaClass(v79))
      {
        v80 = 43;
      }

      else
      {
        v80 = 45;
      }

      v81 = object_getClassName(v5);
      v82 = sel_getName("_tlvForAmount:decimalDigits:");
      *buf = 67109890;
      v95 = v80;
      v96 = 2082;
      v97 = v81;
      v98 = 2082;
      v99 = v82;
      v100 = 1024;
      v101 = 194;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Size of mantissa > provided buffer size.", buf, 0x22u);
    }

LABEL_89:
    v47 = 0;
    goto LABEL_90;
  }

  if (v59)
  {
    v83 = 5;
    do
    {
      *(&v92 + v83) = (v59 % 0x64 % 0xA) | (16 * (v59 % 0x64 / 0xA));
      if ((v83 + 1) < 2)
      {
        break;
      }

      --v83;
      v84 = v59 > 0x63;
      v59 /= 0x64uLL;
    }

    while (v84);
  }

LABEL_43:
  v46 = [[NSData alloc] initWithBytes:&v92 length:6];
  v47 = [NFTLV TLVWithTag:40706 value:v46];
LABEL_90:

LABEL_55:

  return v47;
}

void *sub_1001D99C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  if (v6)
  {
    v9 = [v6 merchantData];

    if (v9)
    {
      v132 = 0;
      v10 = objc_opt_new();
      v11 = [v6 countryCode];
      v12 = sub_1001D8388(v8, v11);

      if (v12)
      {
        [v10 addObject:v12];
        v13 = [v6 transactionDate];
        v14 = sub_1001D8074(v8, v13);

        if (v14)
        {
          [v10 addObject:v14];
          v15 = [v6 currencyCode];
          v16 = sub_1001D88E0(v8, v15, &v132);

          if (v16)
          {
            [v10 addObject:v16];
            v17 = [v6 transactionAmount];
            v18 = sub_1001D8E10(v8, v17, v132);

            if (v18)
            {
              [v10 addObject:v18];
              v19 = [v6 unpredictableNumber];
              v20 = objc_opt_self();
              v21 = sub_1001D7CCC(v20, v19, 4uLL);
              v22 = [NFTLV TLVWithTag:40759 value:v21];

              if (v22)
              {
                [v10 addObject:v22];
                v23 = [v6 merchantCapabilities];
                v24 = objc_opt_self();
                v25 = v24;
                if ((v23 & 0x43) == 0 || (v23 & 0xBC) != 0)
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  Logger = NFLogGetLogger();
                  if (Logger)
                  {
                    v68 = Logger;
                    Class = object_getClass(v25);
                    isMetaClass = class_isMetaClass(Class);
                    sel = object_getClassName(v25);
                    Name = sel_getName("_tlvForMerchantCapabilities:");
                    v71 = 45;
                    if (isMetaClass)
                    {
                      v71 = 43;
                    }

                    v68(3, "%c[%{public}s %{public}s]:%i Invalid merchant capabilities 0x%x", v71, sel, Name, 218, v23);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v72 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                  {
                    v73 = object_getClass(v25);
                    if (class_isMetaClass(v73))
                    {
                      v74 = 43;
                    }

                    else
                    {
                      v74 = 45;
                    }

                    v130 = v74;
                    ClassName = object_getClassName(v25);
                    v76 = sel_getName("_tlvForMerchantCapabilities:");
                    *buf = 67110146;
                    *&buf[4] = v130;
                    *v150 = 2082;
                    *&v150[2] = ClassName;
                    *&v150[10] = 2082;
                    *&v150[12] = v76;
                    *&v150[20] = 1024;
                    *&v150[22] = 218;
                    v151 = 1024;
                    LODWORD(v152) = v23;
                    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid merchant capabilities 0x%x", buf, 0x28u);
                  }
                }

                else
                {
                  v26 = sub_1001D7CCC(v24, v23 | 0x80, 1uLL);
                  v27 = [NFTLV TLVWithTag:40757 value:v26];

                  if (v27)
                  {
                    [v10 addObject:v27];
                    if (v7)
                    {
                      v28 = [NFTLV TLVWithTag:153 value:v7];
                      [v10 addObject:v28];
                    }

                    v128 = v27;
                    v29 = objc_opt_new();
                    v30 = [v6 appletIdentifier];
                    v31 = objc_opt_self();
                    if (v30)
                    {
                      v32 = [NSData NF_dataWithHexString:v30];
                      if (v32)
                      {
                        v33 = v32;
                        v34 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
                        v35 = [NFTLV TLVWithTag:79 value:v32];
LABEL_92:

                        goto LABEL_93;
                      }

                      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                      v93 = NFLogGetLogger();
                      if (v93)
                      {
                        v94 = v93;
                        v95 = object_getClass(v31);
                        v96 = class_isMetaClass(v95);
                        v97 = object_getClassName(v31);
                        v122 = sel_getName("_tlvForApplicationIdentifier:error:");
                        v98 = 45;
                        if (v96)
                        {
                          v98 = 43;
                        }

                        v94(3, "%c[%{public}s %{public}s]:%i Invalid identifier: %{public}@", v98, v97, v122, 41, v30);
                      }

                      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                      v99 = NFSharedLogGetLogger();
                      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
                      {
                        v100 = object_getClass(v31);
                        if (class_isMetaClass(v100))
                        {
                          v101 = 43;
                        }

                        else
                        {
                          v101 = 45;
                        }

                        v102 = object_getClassName(v31);
                        v103 = sel_getName("_tlvForApplicationIdentifier:error:");
                        *buf = 67110146;
                        *&buf[4] = v101;
                        *v150 = 2082;
                        *&v150[2] = v102;
                        *&v150[10] = 2082;
                        *&v150[12] = v103;
                        *&v150[20] = 1024;
                        *&v150[22] = 41;
                        v151 = 2114;
                        v152 = v30;
                        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid identifier: %{public}@", buf, 0x2Cu);
                      }

                      if (a4)
                      {
                        v125 = [NSError alloc];
                        v123 = [NSString stringWithUTF8String:"nfcd"];
                        v153 = NSLocalizedDescriptionKey;
                        v127 = [NSString stringWithUTF8String:"Invalid Parameter"];
                        *buf = v127;
                        *v150 = &off_100333E40;
                        v154 = @"Line";
                        v155 = @"Method";
                        v104 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_tlvForApplicationIdentifier:error:")];
                        *&v150[8] = v104;
                        v156 = NSDebugDescriptionErrorKey;
                        v105 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_tlvForApplicationIdentifier:error:"), 42];
                        *&v150[16] = v105;
                        v106 = [NSDictionary dictionaryWithObjects:buf forKeys:&v153 count:4];
                        *a4 = [v125 initWithDomain:v123 code:10 userInfo:v106];
                      }

                      v33 = 0;
                    }

                    else
                    {
                      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                      v79 = NFLogGetLogger();
                      if (v79)
                      {
                        v80 = v79;
                        v81 = object_getClass(v31);
                        v82 = class_isMetaClass(v81);
                        v83 = object_getClassName(v31);
                        v121 = sel_getName("_tlvForApplicationIdentifier:error:");
                        v84 = 45;
                        if (v82)
                        {
                          v84 = 43;
                        }

                        v80(3, "%c[%{public}s %{public}s]:%i Invalid parameter length", v84, v83, v121, 34);
                      }

                      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                      v85 = NFSharedLogGetLogger();
                      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                      {
                        v86 = object_getClass(v31);
                        if (class_isMetaClass(v86))
                        {
                          v87 = 43;
                        }

                        else
                        {
                          v87 = 45;
                        }

                        v88 = object_getClassName(v31);
                        v89 = sel_getName("_tlvForApplicationIdentifier:error:");
                        *buf = 67109890;
                        *&buf[4] = v87;
                        *v150 = 2082;
                        *&v150[2] = v88;
                        *&v150[10] = 2082;
                        *&v150[12] = v89;
                        *&v150[20] = 1024;
                        *&v150[22] = 34;
                        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter length", buf, 0x22u);
                      }

                      if (!a4)
                      {
                        v35 = 0;
                        v34 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
LABEL_93:

                        if (v35)
                        {
                          v107 = [v35 asData];
                          [v29 appendData:v107];

                          v108 = v34[435];
                          v109 = [v6 merchantData];
                          v110 = [v108 TLVWithTag:40726 value:v109];
                          v111 = [v110 asData];
                          [v29 appendData:v111];

                          if (([v6 merchantCapabilities] & 0x40) != 0)
                          {
                            v112 = [v6 networkMerchantIdentifier];

                            if (v112)
                            {
                              v113 = v34[435];
                              v114 = [v6 networkMerchantIdentifier];
                              v115 = [v113 TLVWithTag:57206 value:v114];
                              v116 = [v115 asData];
                              [v29 appendData:v116];
                            }
                          }

                          v117 = [v34[435] TLVWithTag:226 children:v10];
                          v118 = [v117 asData];
                          [v29 appendData:v118];

                          v29 = v29;
                          a4 = v29;
                          goto LABEL_63;
                        }

LABEL_62:
                        a4 = 0;
LABEL_63:

                        goto LABEL_64;
                      }

                      v126 = [NSError alloc];
                      v33 = [NSString stringWithUTF8String:"nfcd"];
                      v153 = NSLocalizedDescriptionKey;
                      v124 = [NSString stringWithUTF8String:"Missing Parameter"];
                      *buf = v124;
                      *v150 = &off_100333E28;
                      v154 = @"Line";
                      v155 = @"Method";
                      v90 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_tlvForApplicationIdentifier:error:")];
                      *&v150[8] = v90;
                      v156 = NSDebugDescriptionErrorKey;
                      v91 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_tlvForApplicationIdentifier:error:"), 35];
                      *&v150[16] = v91;
                      v92 = [NSDictionary dictionaryWithObjects:buf forKeys:&v153 count:4];
                      *a4 = [v126 initWithDomain:v33 code:9 userInfo:v92];
                    }

                    v35 = 0;
                    v34 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
                    goto LABEL_92;
                  }
                }

                if (a4)
                {
                  v62 = [NSError alloc];
                  v35 = [NSString stringWithUTF8String:"nfcd"];
                  v133[0] = NSLocalizedDescriptionKey;
                  v29 = [NSString stringWithUTF8String:"Encoding Error"];
                  v134[0] = v29;
                  v134[1] = &off_100333F00;
                  v133[1] = @"Line";
                  v133[2] = @"Method";
                  v63 = [[NSString alloc] initWithFormat:@"%s", sel_getName("encodeRequest:withPIN:error:")];
                  v134[2] = v63;
                  v133[3] = NSDebugDescriptionErrorKey;
                  v64 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("encodeRequest:withPIN:error:"), 269];
                  v134[3] = v64;
                  v65 = v134;
                  v66 = v133;
                  goto LABEL_61;
                }

LABEL_64:

                goto LABEL_65;
              }

              if (!a4)
              {
                goto LABEL_64;
              }

              v62 = [NSError alloc];
              v35 = [NSString stringWithUTF8String:"nfcd"];
              v135[0] = NSLocalizedDescriptionKey;
              v29 = [NSString stringWithUTF8String:"Encoding Error"];
              v136[0] = v29;
              v136[1] = &off_100333EE8;
              v135[1] = @"Line";
              v135[2] = @"Method";
              v63 = [[NSString alloc] initWithFormat:@"%s", sel_getName("encodeRequest:withPIN:error:")];
              v136[2] = v63;
              v135[3] = NSDebugDescriptionErrorKey;
              v64 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("encodeRequest:withPIN:error:"), 266];
              v136[3] = v64;
              v65 = v136;
              v66 = v135;
            }

            else
            {
              if (!a4)
              {
                goto LABEL_64;
              }

              v62 = [NSError alloc];
              v35 = [NSString stringWithUTF8String:"nfcd"];
              v137[0] = NSLocalizedDescriptionKey;
              v29 = [NSString stringWithUTF8String:"Encoding Error"];
              v138[0] = v29;
              v138[1] = &off_100333ED0;
              v137[1] = @"Line";
              v137[2] = @"Method";
              v63 = [[NSString alloc] initWithFormat:@"%s", sel_getName("encodeRequest:withPIN:error:")];
              v138[2] = v63;
              v137[3] = NSDebugDescriptionErrorKey;
              v64 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("encodeRequest:withPIN:error:"), 263];
              v138[3] = v64;
              v65 = v138;
              v66 = v137;
            }
          }

          else
          {
            if (!a4)
            {
              goto LABEL_64;
            }

            v62 = [NSError alloc];
            v35 = [NSString stringWithUTF8String:"nfcd"];
            v139[0] = NSLocalizedDescriptionKey;
            v29 = [NSString stringWithUTF8String:"Encoding Error"];
            v140[0] = v29;
            v140[1] = &off_100333EB8;
            v139[1] = @"Line";
            v139[2] = @"Method";
            v63 = [[NSString alloc] initWithFormat:@"%s", sel_getName("encodeRequest:withPIN:error:")];
            v140[2] = v63;
            v139[3] = NSDebugDescriptionErrorKey;
            v64 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("encodeRequest:withPIN:error:"), 260];
            v140[3] = v64;
            v65 = v140;
            v66 = v139;
          }
        }

        else
        {
          if (!a4)
          {
            goto LABEL_64;
          }

          v62 = [NSError alloc];
          v35 = [NSString stringWithUTF8String:"nfcd"];
          v141[0] = NSLocalizedDescriptionKey;
          v29 = [NSString stringWithUTF8String:"Encoding Error"];
          v142[0] = v29;
          v142[1] = &off_100333EA0;
          v141[1] = @"Line";
          v141[2] = @"Method";
          v63 = [[NSString alloc] initWithFormat:@"%s", sel_getName("encodeRequest:withPIN:error:")];
          v142[2] = v63;
          v141[3] = NSDebugDescriptionErrorKey;
          v64 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("encodeRequest:withPIN:error:"), 256];
          v142[3] = v64;
          v65 = v142;
          v66 = v141;
        }
      }

      else
      {
        if (!a4)
        {
          goto LABEL_64;
        }

        v62 = [NSError alloc];
        v35 = [NSString stringWithUTF8String:"nfcd"];
        v143[0] = NSLocalizedDescriptionKey;
        v29 = [NSString stringWithUTF8String:"Encoding Error"];
        v144[0] = v29;
        v144[1] = &off_100333E88;
        v143[1] = @"Line";
        v143[2] = @"Method";
        v63 = [[NSString alloc] initWithFormat:@"%s", sel_getName("encodeRequest:withPIN:error:")];
        v144[2] = v63;
        v143[3] = NSDebugDescriptionErrorKey;
        v64 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("encodeRequest:withPIN:error:"), 253];
        v144[3] = v64;
        v65 = v144;
        v66 = v143;
      }

LABEL_61:
      v77 = [NSDictionary dictionaryWithObjects:v65 forKeys:v66 count:4];
      *a4 = [v62 initWithDomain:v35 code:22 userInfo:v77];

      goto LABEL_62;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v52 = NFLogGetLogger();
    if (v52)
    {
      v53 = v52;
      v54 = object_getClass(v8);
      v55 = class_isMetaClass(v54);
      v56 = object_getClassName(v8);
      v120 = sel_getName("encodeRequest:withPIN:error:");
      v57 = 45;
      if (v55)
      {
        v57 = 43;
      }

      v53(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v57, v56, v120, 244);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v58 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = object_getClass(v8);
      if (class_isMetaClass(v59))
      {
        v60 = 43;
      }

      else
      {
        v60 = 45;
      }

      *buf = 67109890;
      *&buf[4] = v60;
      *v150 = 2082;
      *&v150[2] = object_getClassName(v8);
      *&v150[10] = 2082;
      *&v150[12] = sel_getName("encodeRequest:withPIN:error:");
      *&v150[20] = 1024;
      *&v150[22] = 244;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
    }

    if (a4)
    {
      v45 = [NSError alloc];
      v46 = [NSString stringWithUTF8String:"nfcd"];
      v145[0] = NSLocalizedDescriptionKey;
      v47 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v146[0] = v47;
      v146[1] = &off_100333E70;
      v145[1] = @"Line";
      v145[2] = @"Method";
      v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName("encodeRequest:withPIN:error:")];
      v146[2] = v48;
      v145[3] = NSDebugDescriptionErrorKey;
      v49 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("encodeRequest:withPIN:error:"), 245];
      v146[3] = v49;
      v50 = v146;
      v51 = v145;
      goto LABEL_38;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v36 = NFLogGetLogger();
    if (v36)
    {
      v37 = v36;
      v38 = object_getClass(v8);
      v39 = class_isMetaClass(v38);
      v40 = object_getClassName(v8);
      v119 = sel_getName("encodeRequest:withPIN:error:");
      v41 = 45;
      if (v39)
      {
        v41 = 43;
      }

      v37(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v41, v40, v119, 238);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v42 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = object_getClass(v8);
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
      *v150 = 2082;
      *&v150[2] = object_getClassName(v8);
      *&v150[10] = 2082;
      *&v150[12] = sel_getName("encodeRequest:withPIN:error:");
      *&v150[20] = 1024;
      *&v150[22] = 238;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
    }

    if (a4)
    {
      v45 = [NSError alloc];
      v46 = [NSString stringWithUTF8String:"nfcd"];
      v147[0] = NSLocalizedDescriptionKey;
      v47 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v148[0] = v47;
      v148[1] = &off_100333E58;
      v147[1] = @"Line";
      v147[2] = @"Method";
      v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName("encodeRequest:withPIN:error:")];
      v148[2] = v48;
      v147[3] = NSDebugDescriptionErrorKey;
      v49 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("encodeRequest:withPIN:error:"), 239];
      v148[3] = v49;
      v50 = v148;
      v51 = v147;
LABEL_38:
      v61 = [NSDictionary dictionaryWithObjects:v50 forKeys:v51 count:4];
      *a4 = [v45 initWithDomain:v46 code:10 userInfo:v61];

      a4 = 0;
    }
  }

LABEL_65:

  return a4;
}

uint64_t sub_1001DAF88(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  if ([v2 length] != 3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("_iso4217ForCurrencyCode:");
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Invalid parameter length", v11, ClassName, Name, 295);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

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
    v31 = v14;
    v32 = 2082;
    v33 = object_getClassName(v3);
    v34 = 2082;
    v35 = sel_getName("_iso4217ForCurrencyCode:");
    v36 = 1024;
    v37 = 295;
    v15 = "%c[%{public}s %{public}s]:%i Invalid parameter length";
    v16 = v12;
    v17 = 34;
    goto LABEL_22;
  }

  v40 = 0;
  [v2 getCharacters:&v40 range:{0, 3}];
  NumericCode = ucurr_getNumericCode();
  if (!NumericCode)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v19 = v18;
      v20 = object_getClass(v3);
      v21 = class_isMetaClass(v20);
      v27 = object_getClassName(v3);
      v29 = sel_getName("_iso4217ForCurrencyCode:");
      v22 = 45;
      if (v21)
      {
        v22 = 43;
      }

      v19(3, "%c[%{public}s %{public}s]:%i Unable to determine ISO currency code for %{public}@", v22, v27, v29, 304, v2);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v23 = object_getClass(v3);
    if (class_isMetaClass(v23))
    {
      v24 = 43;
    }

    else
    {
      v24 = 45;
    }

    *buf = 67110146;
    v31 = v24;
    v32 = 2082;
    v33 = object_getClassName(v3);
    v34 = 2082;
    v35 = sel_getName("_iso4217ForCurrencyCode:");
    v36 = 1024;
    v37 = 304;
    v38 = 2114;
    v39 = v2;
    v15 = "%c[%{public}s %{public}s]:%i Unable to determine ISO currency code for %{public}@";
    v16 = v12;
    v17 = 44;
LABEL_22:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
LABEL_23:

    v26 = -1;
    goto LABEL_24;
  }

  v5 = NumericCode;
  ucurr_getDefaultFractionDigits();
  v26 = v5;
LABEL_24:

  return v26;
}

id sub_1001DB5E0(void *a1, void *a2, int a3, _DWORD *a4)
{
  v50 = a2;
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("queueSessionPreCheckConnection:checkSE:outUID:");
      v13 = [v50 NF_clientName];
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v8(6, "%c[%{public}s %{public}s]:%i %{public}@", v14, ClassName, Name, 35, v13);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = object_getClass(a1);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      v18 = object_getClassName(a1);
      v19 = sel_getName("queueSessionPreCheckConnection:checkSE:outUID:");
      v20 = [v50 NF_clientName];
      *buf = 67110146;
      v66 = v17;
      v67 = 2082;
      v68 = v18;
      v69 = 2082;
      v70 = v19;
      v71 = 1024;
      v72 = 35;
      v73 = 2114;
      v74 = v20;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    v21 = sub_100003384(a1);
    if (v21 > 3)
    {
      if (v21 == 4)
      {
        v44 = [NSError alloc];
        v23 = [NSString stringWithUTF8String:"nfcd"];
        v61[0] = NSLocalizedDescriptionKey;
        v24 = [NSString stringWithUTF8String:"No NFC on device"];
        v62[0] = v24;
        v62[1] = &off_100335658;
        v61[1] = @"Line";
        v61[2] = @"Method";
        v25 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queueSessionPreCheckConnection:checkSE:outUID:")];
        v62[2] = v25;
        v61[3] = NSDebugDescriptionErrorKey;
        v26 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queueSessionPreCheckConnection:checkSE:outUID:"), 42];
        v62[3] = v26;
        v27 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:4];
        v28 = v44;
        v29 = v23;
        v30 = 57;
        goto LABEL_25;
      }

      if (v21 == 5)
      {
        v31 = [NSError alloc];
        v23 = [NSString stringWithUTF8String:"nfcd"];
        v59[0] = NSLocalizedDescriptionKey;
        v24 = [NSString stringWithUTF8String:"Invalid State"];
        v60[0] = v24;
        v60[1] = &off_100335670;
        v59[1] = @"Line";
        v59[2] = @"Method";
        v25 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queueSessionPreCheckConnection:checkSE:outUID:")];
        v60[2] = v25;
        v59[3] = NSDebugDescriptionErrorKey;
        v26 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queueSessionPreCheckConnection:checkSE:outUID:"), 44];
        v60[3] = v26;
        v27 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:4];
        v28 = v31;
        v29 = v23;
        v30 = 12;
        goto LABEL_25;
      }
    }

    else if (v21 == 1 || v21 == 3)
    {
      v22 = [NSError alloc];
      v23 = [NSString stringWithUTF8String:"nfcd"];
      v63[0] = NSLocalizedDescriptionKey;
      v24 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      v64[0] = v24;
      v64[1] = &off_100335640;
      v63[1] = @"Line";
      v63[2] = @"Method";
      v25 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queueSessionPreCheckConnection:checkSE:outUID:")];
      v64[2] = v25;
      v63[3] = NSDebugDescriptionErrorKey;
      v26 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queueSessionPreCheckConnection:checkSE:outUID:"), 40];
      v64[3] = v26;
      v27 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:4];
      v28 = v22;
      v29 = v23;
      v30 = 58;
LABEL_25:
      v45 = [v28 initWithDomain:v29 code:v30 userInfo:v27];

      goto LABEL_26;
    }

    if (a4)
    {
      *a4 = -1;
    }

    if (a3)
    {
      v23 = a1;
      objc_sync_enter(v23);
      os_unfair_lock_lock(v23 + 12);
      v32 = [*(v23 + 5) OSMode];
      os_unfair_lock_unlock(v23 + 12);
      if (v32 == 2)
      {
        v33 = [v23 secureElementInfo];
        v34 = [v33 restrictedMode];

        if (v34)
        {
          v35 = [NSError alloc];
          v36 = [NSString stringWithUTF8String:"nfcd"];
          v55[0] = NSLocalizedDescriptionKey;
          v37 = [NSString stringWithUTF8String:"Restricted Mode"];
          v56[0] = v37;
          v56[1] = &off_1003356A0;
          v55[1] = @"Line";
          v55[2] = @"Method";
          v38 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queueSessionPreCheckConnection:checkSE:outUID:")];
          v56[2] = v38;
          v55[3] = NSDebugDescriptionErrorKey;
          v39 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queueSessionPreCheckConnection:checkSE:outUID:"), 67];
          v56[3] = v39;
          v40 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:4];
          v41 = v35;
          v42 = v36;
          v43 = 24;
        }

        else if (sub_1000E70DC(v23))
        {
          v48 = [NSError alloc];
          v36 = [NSString stringWithUTF8String:"nfcd"];
          v53[0] = NSLocalizedDescriptionKey;
          v37 = [NSString stringWithUTF8String:"Applet Migration"];
          v54[0] = v37;
          v54[1] = &off_1003356B8;
          v53[1] = @"Line";
          v53[2] = @"Method";
          v38 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queueSessionPreCheckConnection:checkSE:outUID:")];
          v54[2] = v38;
          v53[3] = NSDebugDescriptionErrorKey;
          v39 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queueSessionPreCheckConnection:checkSE:outUID:"), 70];
          v54[3] = v39;
          v40 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:4];
          v41 = v48;
          v42 = v36;
          v43 = 26;
        }

        else
        {
          if (!sub_1000E7158(v23))
          {
            objc_sync_exit(v23);
            v45 = 0;
            goto LABEL_26;
          }

          v49 = [NSError alloc];
          v36 = [NSString stringWithUTF8String:"nfcd"];
          v51[0] = NSLocalizedDescriptionKey;
          v37 = [NSString stringWithUTF8String:"JCOP in OSU"];
          v52[0] = v37;
          v52[1] = &off_1003356D0;
          v51[1] = @"Line";
          v51[2] = @"Method";
          v38 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queueSessionPreCheckConnection:checkSE:outUID:")];
          v52[2] = v38;
          v51[3] = NSDebugDescriptionErrorKey;
          v39 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queueSessionPreCheckConnection:checkSE:outUID:"), 73];
          v52[3] = v39;
          v40 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
          v41 = v49;
          v42 = v36;
          v43 = 52;
        }
      }

      else
      {
        v47 = [NSError alloc];
        v36 = [NSString stringWithUTF8String:"nfcd"];
        v57[0] = NSLocalizedDescriptionKey;
        v37 = [NSString stringWithUTF8String:"JCOP not available"];
        v58[0] = v37;
        v58[1] = &off_100335688;
        v57[1] = @"Line";
        v57[2] = @"Method";
        v38 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queueSessionPreCheckConnection:checkSE:outUID:")];
        v58[2] = v38;
        v57[3] = NSDebugDescriptionErrorKey;
        v39 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queueSessionPreCheckConnection:checkSE:outUID:"), 64];
        v58[3] = v39;
        v40 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:4];
        v41 = v47;
        v42 = v36;
        v43 = 53;
      }

      v45 = [v41 initWithDomain:v42 code:v43 userInfo:v40];

      objc_sync_exit(v23);
LABEL_26:

      goto LABEL_27;
    }
  }

  v45 = 0;
LABEL_27:

  return v45;
}

id sub_1001DC138(uint64_t a1, void *a2, void *a3, void *a4, _BYTE *a5)
{
  v9 = a2;
  v10 = a3;
  v12 = a4;
  if (a1)
  {
    v13 = objc_getProperty(a1, v11, 176, 1);
    objc_sync_enter(v13);
    v15 = objc_getProperty(a1, v14, 176, 1);
    v16 = [v15 containsObject:v10];

    objc_sync_exit(v13);
    v17 = *(a1 + 184);
    objc_sync_enter(v17);
    v227 = a1;
    if (([v9 didEnd] & 1) != 0 || objc_msgSend(v9, "isEnding"))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v19 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        v23 = v17;
        v24 = ClassName;
        Name = sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:");
        v25 = 45;
        if (isMetaClass)
        {
          v25 = 43;
        }

        v195 = v24;
        v17 = v23;
        a1 = v227;
        v19(6, "%c[%{public}s %{public}s]:%i Session ended before queueing - not queueing it up.", v25, v195, Name, 96);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v26 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = object_getClass(a1);
        v28 = v26;
        if (class_isMetaClass(v27))
        {
          v29 = 43;
        }

        else
        {
          v29 = 45;
        }

        *buf = 67109890;
        *v246 = v29;
        v26 = v28;
        *&v246[4] = 2082;
        *&v246[6] = object_getClassName(a1);
        v247 = 2082;
        v248 = sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:");
        v249 = 1024;
        v250 = 96;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Session ended before queueing - not queueing it up.", buf, 0x22u);
      }

      v30 = 0;
LABEL_14:

      objc_sync_exit(v17);
LABEL_15:

      goto LABEL_16;
    }

    v32 = [v9 startOnFieldList];
    v33 = [v32 count];

    if (v33)
    {
      v206 = v12;
      v209 = v17;
      v204 = v10;
      v243 = 0u;
      v244 = 0u;
      v241 = 0u;
      v242 = 0u;
      obj = *(a1 + 192);
      v34 = [obj countByEnumeratingWithState:&v241 objects:v269 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v242;
        while (2)
        {
          for (i = 0; i != v35; i = i + 1)
          {
            if (*v242 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(*(&v241 + 1) + 8 * i);
            if (([v38 isEnding] & 1) == 0 && (objc_msgSend(v38, "didEnd") & 1) == 0)
            {
              v39 = [v38 startOnFieldList];
              v40 = [v39 count];

              if (v40)
              {
                v202 = v9;
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v49 = NFLogGetLogger();
                if (v49)
                {
                  v50 = v49;
                  v51 = object_getClass(a1);
                  v52 = class_isMetaClass(v51);
                  v53 = object_getClassName(a1);
                  v197 = sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:");
                  v54 = 45;
                  if (v52)
                  {
                    v54 = 43;
                  }

                  v50(3, "%c[%{public}s %{public}s]:%i Suspended Auto-Start-on-field Session already exists:", v54, v53, v197, 105);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v55 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                {
                  v56 = object_getClass(a1);
                  if (class_isMetaClass(v56))
                  {
                    v57 = 43;
                  }

                  else
                  {
                    v57 = 45;
                  }

                  v58 = object_getClassName(a1);
                  v59 = sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:");
                  *buf = 67109890;
                  *v246 = v57;
                  *&v246[4] = 2082;
                  *&v246[6] = v58;
                  v247 = 2082;
                  v248 = v59;
                  v249 = 1024;
                  v250 = 105;
                  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Suspended Auto-Start-on-field Session already exists:", buf, 0x22u);
                }

                v239 = 0u;
                v240 = 0u;
                v237 = 0u;
                v238 = 0u;
                v218 = *(a1 + 192);
                v224 = [v218 countByEnumeratingWithState:&v237 objects:v268 count:16];
                if (v224)
                {
                  v221 = *v238;
                  do
                  {
                    for (j = 0; j != v224; j = j + 1)
                    {
                      if (*v238 != v221)
                      {
                        objc_enumerationMutation(v218);
                      }

                      v61 = *(*(&v237 + 1) + 8 * j);
                      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                      v62 = NFLogGetLogger();
                      if (v62)
                      {
                        v63 = v62;
                        v64 = object_getClass(a1);
                        v229 = class_isMetaClass(v64);
                        v65 = object_getClassName(a1);
                        v66 = sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:");
                        v67 = [v61 sessionUID];
                        v68 = [v61 clientName];
                        v69 = [v61 processIdentifier];
                        v70 = +[NSDate now];
                        v71 = [v61 dequeueDate];
                        [v70 timeIntervalSinceDate:v71];
                        v73 = 45;
                        if (v229)
                        {
                          v73 = 43;
                        }

                        v63(3, "%c[%{public}s %{public}s]:%i %{public}@ for %{public}@ (%d) for %f seconds", v73, v65, v66, 111, v67, v68, v69, v72);

                        a1 = v227;
                      }

                      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                      v74 = NFSharedLogGetLogger();
                      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                      {
                        v75 = object_getClass(a1);
                        if (class_isMetaClass(v75))
                        {
                          v76 = 43;
                        }

                        else
                        {
                          v76 = 45;
                        }

                        v77 = object_getClassName(a1);
                        v78 = sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:");
                        v79 = [v61 sessionUID];
                        v80 = [v61 clientName];
                        v81 = [v61 processIdentifier];
                        v82 = +[NSDate now];
                        v83 = [v61 dequeueDate];
                        [v82 timeIntervalSinceDate:v83];
                        *buf = 67110914;
                        *v246 = v76;
                        *&v246[4] = 2082;
                        *&v246[6] = v77;
                        v247 = 2082;
                        v248 = v78;
                        v249 = 1024;
                        v250 = 111;
                        v251 = 2114;
                        v252 = v79;
                        v253 = 2114;
                        v254 = v80;
                        v255 = 1024;
                        v256 = v81;
                        v257 = 2048;
                        v258 = v84;
                        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ for %{public}@ (%d) for %f seconds", buf, 0x46u);

                        a1 = v227;
                      }
                    }

                    v224 = [v218 countByEnumeratingWithState:&v237 objects:v268 count:16];
                  }

                  while (v224);
                }

                v85 = [NSError alloc];
                v86 = [NSString stringWithUTF8String:"nfcd"];
                v266[0] = NSLocalizedDescriptionKey;
                v87 = [NSString stringWithUTF8String:"No resources"];
                v267[0] = v87;
                v267[1] = &off_1003356E8;
                v266[1] = @"Line";
                v266[2] = @"Method";
                v88 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:")];
                v267[2] = v88;
                v266[3] = NSDebugDescriptionErrorKey;
                v89 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:"), 113];
                v267[3] = v89;
                v90 = [NSDictionary dictionaryWithObjects:v267 forKeys:v266 count:4];
                v30 = [v85 initWithDomain:v86 code:34 userInfo:v90];

                v9 = v202;
                v10 = v204;
                v12 = v206;
                v17 = v209;
                v26 = obj;
                goto LABEL_14;
              }
            }
          }

          v35 = [obj countByEnumeratingWithState:&v241 objects:v269 count:16];
          if (v35)
          {
            continue;
          }

          break;
        }
      }

      v10 = v204;
      v12 = v206;
      v17 = v209;
    }

    objc_opt_class();
    if (!(v16 & 1 | ((objc_opt_isKindOfClass() & 1) == 0)))
    {
      v91 = v17;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v92 = NFLogGetLogger();
      if (v92)
      {
        v93 = v92;
        v94 = object_getClass(a1);
        v95 = class_isMetaClass(v94);
        v96 = object_getClassName(a1);
        v198 = sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:");
        v97 = 45;
        if (v95)
        {
          v97 = 43;
        }

        v93(6, "%c[%{public}s %{public}s]:%i XPC connection disappeared before queueing.", v97, v96, v198, 119);
      }

      v98 = v12;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v99 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        v100 = object_getClass(v227);
        if (class_isMetaClass(v100))
        {
          v101 = 43;
        }

        else
        {
          v101 = 45;
        }

        v102 = object_getClassName(v227);
        v103 = sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:");
        *buf = 67109890;
        *v246 = v101;
        *&v246[4] = 2082;
        *&v246[6] = v102;
        v247 = 2082;
        v248 = v103;
        v249 = 1024;
        v250 = 119;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i XPC connection disappeared before queueing.", buf, 0x22u);
      }

      v104 = [NSError alloc];
      v105 = [NSString stringWithUTF8String:"nfcd"];
      v264[0] = NSLocalizedDescriptionKey;
      v106 = [NSString stringWithUTF8String:"User cancelled"];
      v265[0] = v106;
      v265[1] = &off_100335700;
      v264[1] = @"Line";
      v264[2] = @"Method";
      v107 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:")];
      v265[2] = v107;
      v264[3] = NSDebugDescriptionErrorKey;
      v108 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:"), 120];
      v265[3] = v108;
      v109 = [NSDictionary dictionaryWithObjects:v265 forKeys:v264 count:4];
      v110 = v104;
      v26 = v105;
      v30 = [v110 initWithDomain:v105 code:48 userInfo:v109];

      v12 = v98;
      v17 = v91;
      goto LABEL_14;
    }

    if (v10)
    {
      v41 = [v10 NF_userInfo];
      v42 = [v41 objectForKeyedSubscript:@"ProxyObjects"];

      if ([v9 serviceType] == 2)
      {
        v207 = v12;
        v210 = v17;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v43 = v42;
        v44 = [v43 countByEnumeratingWithState:&v233 objects:v263 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v234;
          while (2)
          {
            for (k = 0; k != v45; k = k + 1)
            {
              if (*v234 != v46)
              {
                objc_enumerationMutation(v43);
              }

              if ([*(*(&v233 + 1) + 8 * k) serviceType] == 2)
              {
                v112 = v10;
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v113 = NFLogGetLogger();
                if (v113)
                {
                  v114 = v113;
                  v115 = object_getClass(v227);
                  v116 = class_isMetaClass(v115);
                  v117 = object_getClassName(v227);
                  v118 = sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:");
                  v200 = objc_opt_class();
                  v119 = 45;
                  if (v116)
                  {
                    v119 = 43;
                  }

                  v114(6, "%c[%{public}s %{public}s]:%i %{public}@ already exist in queue", v119, v117, v118, 129, v200);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v120 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
                {
                  v121 = object_getClass(v227);
                  if (class_isMetaClass(v121))
                  {
                    v122 = 43;
                  }

                  else
                  {
                    v122 = 45;
                  }

                  v123 = object_getClassName(v227);
                  v124 = sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:");
                  v125 = objc_opt_class();
                  *buf = 67110146;
                  *v246 = v122;
                  *&v246[4] = 2082;
                  *&v246[6] = v123;
                  v247 = 2082;
                  v248 = v124;
                  v249 = 1024;
                  v250 = 129;
                  v251 = 2114;
                  v252 = v125;
                  v126 = v125;
                  _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ already exist in queue", buf, 0x2Cu);
                }

                v127 = [NSError alloc];
                v128 = [NSString stringWithUTF8String:"nfcd"];
                v261[0] = NSLocalizedDescriptionKey;
                v129 = [NSString stringWithUTF8String:"Busy"];
                v262[0] = v129;
                v262[1] = &off_100335718;
                v261[1] = @"Line";
                v261[2] = @"Method";
                v130 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:")];
                v262[2] = v130;
                v261[3] = NSDebugDescriptionErrorKey;
                v131 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:"), 130];
                v262[3] = v131;
                v132 = [NSDictionary dictionaryWithObjects:v262 forKeys:v261 count:4];
                v30 = [v127 initWithDomain:v128 code:2 userInfo:v132];

                v26 = v43;
                v10 = v112;
                v12 = v207;
                v17 = v210;
                goto LABEL_14;
              }
            }

            v45 = [v43 countByEnumeratingWithState:&v233 objects:v263 count:16];
            if (v45)
            {
              continue;
            }

            break;
          }
        }

        v12 = v207;
        v17 = v210;
        a1 = v227;
      }

      [v42 addObject:v9];
    }

    if (a5)
    {
      *a5 = [a1 isFirstInQueue];
    }

    ++*(a1 + 368);
    [v9 setSessionID:?];
    if (v33)
    {
      v48 = *(a1 + 192);
      [v48 addObject:v9];
    }

    else
    {
      v111 = *(a1 + 120);
      if (v111)
      {
      }

      else
      {
        v133 = *(a1 + 184);
        v134 = [v133 count];

        if (!v134)
        {
          sub_1000DE998(a1, 1);
        }
      }

      v135 = *(a1 + 184);
      [v135 addObject:v9];

      if (!v12)
      {
        goto LABEL_116;
      }

      v136 = [v12 NF_dataForKey:@"session.handofftoken"];
      v137 = [v12 NF_stringForKey:@"session.handofftoken.failurebehaviour"];
      if (v136)
      {
        v48 = v136;
        v30 = [a1 switchToSession:v9 withToken:v136];
        if (v30 && (!v137 || ([v137 isEqualToString:@"ignore"] & 1) == 0))
        {
          v211 = v17;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v138 = NFLogGetLogger();
          if (v138)
          {
            v139 = v138;
            v140 = object_getClass(v227);
            v141 = class_isMetaClass(v140);
            v142 = object_getClassName(v227);
            v199 = sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:");
            v143 = 45;
            if (v141)
            {
              v143 = 43;
            }

            v139(3, "%c[%{public}s %{public}s]:%i Invalid token - failing session start.", v143, v142, v199, 160);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v144 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
          {
            v145 = object_getClass(v227);
            if (class_isMetaClass(v145))
            {
              v146 = 43;
            }

            else
            {
              v146 = 45;
            }

            v147 = object_getClassName(v227);
            v148 = sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:");
            *buf = 67109890;
            *v246 = v146;
            *&v246[4] = 2082;
            *&v246[6] = v147;
            v247 = 2082;
            v248 = v148;
            v249 = 1024;
            v250 = 160;
            _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid token - failing session start.", buf, 0x22u);
          }

          v149 = v227[23];
          [v149 removeObject:v9];

          v17 = v211;
          v26 = v48;
          goto LABEL_14;
        }
      }

      else
      {
        v48 = 0;
        v30 = 0;
      }
    }

LABEL_116:
    if ([v9 priority])
    {
      sub_100008AA4(a1);
      v150 = sub_100007D90(a1);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001DD8C4;
      block[3] = &unk_100315F30;
      block[4] = a1;
      dispatch_async(v150, block);
    }

    v151 = *(a1 + 120);

    if (v151)
    {
      v212 = v17;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v152 = NFLogGetLogger();
      if (v152)
      {
        v153 = v152;
        v154 = object_getClass(a1);
        v219 = class_isMetaClass(v154);
        v222 = object_getClassName(a1);
        obja = sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:");
        v230 = *(a1 + 120);
        v155 = [v230 sessionUID];
        v225 = *(a1 + 120);
        v156 = [v225 clientName];
        v216 = *(a1 + 120);
        v157 = v12;
        v158 = [v216 processIdentifier];
        +[NSDate now];
        v159 = v203 = v9;
        v160 = v227[15];
        [v160 dequeueDate];
        v161 = v205 = v10;
        [v159 timeIntervalSinceDate:v161];
        v163 = v162;
        v164 = v227[15];
        v165 = [v164 creation];
        v201 = v158;
        v12 = v157;
        a1 = v227;
        v166 = 43;
        if (!v219)
        {
          v166 = 45;
        }

        v153(6, "%c[%{public}s %{public}s]:%i Currently processing session %{public}@ for %{public}@ (%d) for %f seconds, created %@", v166, v222, obja, 183, v155, v156, v201, v163, v165);

        v10 = v205;
        v9 = v203;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v167 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
      {
        v168 = object_getClass(a1);
        if (class_isMetaClass(v168))
        {
          v169 = 43;
        }

        else
        {
          v169 = 45;
        }

        v223 = v169;
        v220 = object_getClassName(a1);
        v217 = sel_getName("queueSecureElementSession:forConnection:attributes:isFirstInQueue:");
        v231 = *(a1 + 120);
        v170 = [v231 sessionUID];
        sel = *(a1 + 120);
        v171 = [sel clientName];
        v226 = *(a1 + 120);
        v208 = v12;
        v172 = [v226 processIdentifier];
        objb = +[NSDate now];
        v173 = *(a1 + 120);
        v174 = [v173 dequeueDate];
        [objb timeIntervalSinceDate:v174];
        v176 = v175;
        v177 = *(a1 + 120);
        v178 = v10;
        v179 = v9;
        v180 = v177;
        v181 = [v177 creation];
        *buf = 67111170;
        *v246 = v223;
        *&v246[4] = 2082;
        *&v246[6] = v220;
        v247 = 2082;
        v248 = v217;
        v249 = 1024;
        v250 = 183;
        v251 = 2114;
        v252 = v170;
        v253 = 2114;
        v254 = v171;
        v255 = 1024;
        v256 = v172;
        v12 = v208;
        v257 = 2048;
        v258 = v176;
        v259 = 2112;
        v260 = v181;
        _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Currently processing session %{public}@ for %{public}@ (%d) for %f seconds, created %@", buf, 0x50u);

        v9 = v179;
        v10 = v178;
        a1 = v227;
      }

      v17 = v212;
    }

    v182 = v12;
    kdebug_trace();
    v183 = NFSharedSignpostLog();
    if (os_signpost_enabled(v183))
    {
      v184 = [v9 sessionUID];
      *buf = 138412290;
      *v246 = v184;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v183, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SESSION_QUEUED", "sessionUID=%@", buf, 0xCu);
    }

    objc_sync_exit(v17);
    v186 = objc_getProperty(a1, v185, 176, 1);
    objc_sync_enter(v186);
    v187 = [v10 NF_userInfo];
    v188 = [v187 objectForKeyedSubscript:@"CurrentSessionCount"];

    v189 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v188 unsignedLongLongValue] + 1);

    v190 = [v10 NF_userInfo];
    [v190 setObject:v189 forKeyedSubscript:@"CurrentSessionCount"];

    v191 = [v10 NF_userInfo];
    v192 = [v191 objectForKeyedSubscript:@"TotalSessionCount"];

    v193 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v192 unsignedLongLongValue] + 1);

    v194 = [v10 NF_userInfo];
    [v194 setObject:v193 forKeyedSubscript:@"TotalSessionCount"];

    objc_sync_exit(v186);
    v17 = *(a1 + 416);
    [v17 retainECPOption:{objc_msgSend(v9, "backgroundTagReadEcpOption")}];
    v30 = 0;
    v12 = v182;
    goto LABEL_15;
  }

  v30 = 0;
LABEL_16:

  return v30;
}

void sub_1001DD8CC(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 342))
    {
      v2 = *(a1 + 120);
      if (v2)
      {
        v3 = v2;
        v4 = *(a1 + 120);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
        }

        else
        {
          v5 = *(a1 + 120);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            return;
          }
        }

        v7 = *(a1 + 120);
        [v7 handlePendingServerRequest];
      }
    }
  }
}

uint64_t sub_1001DD9C8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    v85 = 0;
    goto LABEL_100;
  }

  v137 = 0;
  v138 = &v137;
  v139 = 0x3032000000;
  v140 = sub_100006B1C;
  v141 = sub_1001DE708;
  v142 = 0;
  v7 = [v5 cachedBeforeRFReset];
  v119 = a1;
  if ((sub_100002E88(a1) & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v27 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("resumeSessionWaitingOnField:forceStartSession:");
      v31 = 45;
      if (isMetaClass)
      {
        v31 = 43;
      }

      v27(6, "%c[%{public}s %{public}s]:%i Ignore field due to first unlock not completed", v31, ClassName, Name, 240);
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

      v35 = object_getClassName(v119);
      v36 = sel_getName("resumeSessionWaitingOnField:forceStartSession:");
      *buf = 67109890;
      v146 = v34;
      v147 = 2082;
      v148 = v35;
      v149 = 2082;
      v150 = v36;
      v151 = 1024;
      v152 = 240;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Ignore field due to first unlock not completed", buf, 0x22u);
    }

    v143 = 0;
    goto LABEL_99;
  }

  v8 = a1[23];
  objc_sync_enter(v8);
  v9 = a1[15];

  v118 = v6;
  if (!v9)
  {
    v115 = v8;
    v116 = v5;
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    obj = a1[24];
    v37 = [obj countByEnumeratingWithState:&v133 objects:v144 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = 0;
      v25 = 0;
      v40 = *v134;
      do
      {
        for (i = 0; i != v38; i = i + 1)
        {
          if (*v134 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v42 = *(*(&v133 + 1) + 8 * i);
          v43 = v138[5];
          if (v6)
          {
            v44 = !v43 && v42 == v6;
            if (v44)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v45 = NFLogGetLogger();
              if (v45)
              {
                v46 = v45;
                v47 = object_getClass(a1);
                v48 = class_isMetaClass(v47);
                v49 = object_getClassName(a1);
                v111 = sel_getName("resumeSessionWaitingOnField:forceStartSession:");
                v50 = 45;
                if (v48)
                {
                  v50 = 43;
                }

                v108 = v49;
                v6 = v118;
                a1 = v119;
                v46(5, "%c[%{public}s %{public}s]:%i Force start session found", v50, v108, v111, 255);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v51 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
              {
                v52 = object_getClass(a1);
                if (class_isMetaClass(v52))
                {
                  v53 = 43;
                }

                else
                {
                  v53 = 45;
                }

                v54 = object_getClassName(a1);
                v55 = sel_getName("resumeSessionWaitingOnField:forceStartSession:");
                *buf = 67109890;
                v146 = v53;
                v147 = 2082;
                v148 = v54;
                v6 = v118;
                a1 = v119;
                v149 = 2082;
                v150 = v55;
                v151 = 1024;
                v152 = 255;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Force start session found", buf, 0x22u);
              }

              objc_storeStrong(v138 + 5, v42);
              v43 = v138[5];
            }
          }

          if (!((v43 != 0) | v7 & 1))
          {
            v56 = [v42 startOnFieldList];
            v127[0] = _NSConcreteStackBlock;
            v127[1] = 3221225472;
            v127[2] = sub_1001DE710;
            v127[3] = &unk_10031B770;
            v128 = v116;
            v129 = a1;
            v130 = v42;
            v131 = &v137;
            v132 = "resumeSessionWaitingOnField:forceStartSession:";
            [v56 enumerateObjectsUsingBlock:v127];
          }

          if (!((v25 != 0) | v7 & 1))
          {
            if ([v42 fieldHandlingInSuspension] & 1) != 0 && (objc_opt_respondsToSelector())
            {
              v25 = v42;
            }

            else
            {
              v25 = 0;
            }
          }

          if (!v39)
          {
            v57 = [v42 startOnFieldList];
            if ([v57 count])
            {
              v58 = [v42 parentToken];

              if (v58)
              {
                v39 = 0;
              }

              else
              {
                v39 = v42;
              }

              a1 = v119;
            }

            else
            {

              v39 = 0;
            }
          }
        }

        v38 = [obj countByEnumeratingWithState:&v133 objects:v144 count:16];
      }

      while (v38);
    }

    else
    {
      v39 = 0;
      v25 = 0;
    }

    v59 = v39;

    v5 = v116;
    if (v138[5])
    {
      objc_opt_class();
      v8 = v115;
      if (objc_opt_isKindOfClass())
      {
        v60 = v138[5];
        v61 = [v60 disableAutoStartOnField];
        if (!v6 && v61)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v62 = NFLogGetLogger();
          if (v62)
          {
            v63 = v62;
            v64 = object_getClass(a1);
            v65 = class_isMetaClass(v64);
            v66 = object_getClassName(v119);
            v112 = sel_getName("resumeSessionWaitingOnField:forceStartSession:");
            v67 = 45;
            if (v65)
            {
              v67 = 43;
            }

            v109 = v66;
            v6 = v118;
            a1 = v119;
            v63(5, "%c[%{public}s %{public}s]:%i Session resume disabled", v67, v109, v112, 339);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v68 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            v69 = object_getClass(a1);
            if (class_isMetaClass(v69))
            {
              v70 = 43;
            }

            else
            {
              v70 = 45;
            }

            v71 = object_getClassName(a1);
            v72 = sel_getName("resumeSessionWaitingOnField:forceStartSession:");
            *buf = 67109890;
            v146 = v70;
            v147 = 2082;
            v148 = v71;
            v149 = 2082;
            v150 = v72;
            v151 = 1024;
            v152 = 339;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Session resume disabled", buf, 0x22u);
          }

          if (v116)
          {
            [v60 suspensionStateUpdate:0 triggeredByField:v116];
          }

          v143 = 0;

          goto LABEL_96;
        }

        if (v116)
        {
          [v60 suspensionStateUpdate:1 triggeredByField:v116];
        }
      }

      if (![v138[5] didStart])
      {
        v87 = a1[23];
        [v87 insertObject:v138[5] atIndex:0];

        v88 = a1[24];
        [v88 removeObject:v138[5]];

        objc_sync_exit(v115);
        sub_1000EA958(a1, v116);
        v143 = 1;

        goto LABEL_98;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v73 = NFLogGetLogger();
      if (v73)
      {
        v74 = v73;
        v75 = object_getClass(a1);
        v76 = class_isMetaClass(v75);
        v77 = object_getClassName(v119);
        v113 = sel_getName("resumeSessionWaitingOnField:forceStartSession:");
        v44 = !v76;
        a1 = v119;
        v78 = 45;
        if (!v44)
        {
          v78 = 43;
        }

        v74(5, "%c[%{public}s %{public}s]:%i Resume session", v78, v77, v113, 352);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v79 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v80 = object_getClass(a1);
        if (class_isMetaClass(v80))
        {
          v81 = 43;
        }

        else
        {
          v81 = 45;
        }

        v82 = object_getClassName(a1);
        v83 = sel_getName("resumeSessionWaitingOnField:forceStartSession:");
        *buf = 67109890;
        v146 = v81;
        v147 = 2082;
        v148 = v82;
        a1 = v119;
        v149 = 2082;
        v150 = v83;
        v151 = 1024;
        v152 = 352;
        _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Resume session", buf, 0x22u);
      }

      v84 = a1[52];
      [v84 stop];

      v143 = [a1 _syncResumeSession:v138[5] field:v116];
      goto LABEL_96;
    }

    v8 = v115;
    if (!v6)
    {
      v24 = v59;
      if (v59)
      {
        v89 = [v119 lastKnownRoutingConfig];
        v90 = [v89 fdOn];

        v24 = v59;
        if (v90)
        {
          v91 = [v59 fieldHandlingInSuspension];
          v123 = 0;
          v124 = &v123;
          v125 = 0x2020000000;
          v126 = 0;
          if ((v91 & 2) != 0)
          {
            v92 = [v59 startOnFieldList];
            v120[0] = _NSConcreteStackBlock;
            v120[1] = 3221225472;
            v120[2] = sub_1001DE918;
            v120[3] = &unk_10031B798;
            v121 = v116;
            v122 = &v123;
            [v92 enumerateObjectsUsingBlock:v120];
          }

          else
          {
            v126 = 1;
          }

          v93 = v119;
          if ((v7 & 1) == 0 && *(v124 + 24) == 1)
          {
            v94 = [v119 expressModeManager];
            if (!v94 || (v95 = v94[181], v94, (v95 & 1) == 0))
            {
              v96 = [v116 chFieldType];
              if (v96 != 3 && v96 != 5)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v97 = NFLogGetLogger();
                if (v97)
                {
                  v98 = v97;
                  v99 = object_getClass(v119);
                  v100 = class_isMetaClass(v99);
                  v101 = object_getClassName(v119);
                  v114 = sel_getName("resumeSessionWaitingOnField:forceStartSession:");
                  v44 = !v100;
                  v93 = v119;
                  v102 = 45;
                  if (!v44)
                  {
                    v102 = 43;
                  }

                  v98(6, "%c[%{public}s %{public}s]:%i Restart discovery & field detect", v102, v101, v114, 320);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v103 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                {
                  v104 = object_getClass(v93);
                  if (class_isMetaClass(v104))
                  {
                    v105 = 43;
                  }

                  else
                  {
                    v105 = 45;
                  }

                  v106 = object_getClassName(v93);
                  v107 = sel_getName("resumeSessionWaitingOnField:forceStartSession:");
                  *buf = 67109890;
                  v146 = v105;
                  v147 = 2082;
                  v148 = v106;
                  v93 = v119;
                  v149 = 2082;
                  v150 = v107;
                  v151 = 1024;
                  v152 = 320;
                  _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restart discovery & field detect", buf, 0x22u);
                }

                [v93 restartDiscovery];
              }
            }
          }

          _Block_object_dispose(&v123, 8);
          v24 = v59;
        }
      }

      if (v25)
      {
        [v25 handleFieldNotification:v116];
      }

      goto LABEL_14;
    }

    v143 = 0;
LABEL_96:
    v24 = v59;
    goto LABEL_97;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFLogGetLogger();
  if (v10)
  {
    v11 = v10;
    v12 = object_getClass(a1);
    v13 = class_isMetaClass(v12);
    v14 = object_getClassName(a1);
    v15 = sel_getName("resumeSessionWaitingOnField:forceStartSession:");
    v16 = a1[15];
    v17 = 45;
    if (v13)
    {
      v17 = 43;
    }

    v11(4, "%c[%{public}s %{public}s]:%i Active session running, %{public}@", v17, v14, v15, 248, v16);
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

    v21 = object_getClassName(v119);
    v22 = sel_getName("resumeSessionWaitingOnField:forceStartSession:");
    v23 = v119[15];
    *buf = 67110146;
    v146 = v20;
    v147 = 2082;
    v148 = v21;
    v149 = 2082;
    v150 = v22;
    v6 = v118;
    v151 = 1024;
    v152 = 248;
    v153 = 2114;
    v154 = v23;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Active session running, %{public}@", buf, 0x2Cu);
  }

  v24 = 0;
  v25 = 0;
LABEL_14:
  v143 = 0;
LABEL_97:
  objc_sync_exit(v8);

LABEL_98:
LABEL_99:
  _Block_object_dispose(&v137, 8);

  v85 = v143;
LABEL_100:

  return v85;
}

void sub_1001DE710(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 isEqual:*(a1 + 32)])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(*(a1 + 40));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 40));
      Name = sel_getName(*(a1 + 64));
      v12 = *(a1 + 48);
      v13 = [*(a1 + 32) description];
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Found suspend %@ waiting on field %@", v14, ClassName, Name, 263, v12, v13);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = object_getClass(*(a1 + 40));
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      v18 = object_getClassName(*(a1 + 40));
      v19 = sel_getName(*(a1 + 64));
      v20 = *(a1 + 48);
      v21 = [*(a1 + 32) description];
      *buf = 67110402;
      v23 = v17;
      v24 = 2082;
      v25 = v18;
      v26 = 2082;
      v27 = v19;
      v28 = 1024;
      v29 = 263;
      v30 = 2112;
      v31 = v20;
      v32 = 2112;
      v33 = v21;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found suspend %@ waiting on field %@", buf, 0x36u);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 48));
    *a4 = 1;
  }
}

id sub_1001DE918(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isEqualTerminalInfo:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_1001DE960(id *a1, void *a2, uint64_t a3, void *a4, void *a5, int a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  if (!a1)
  {
    goto LABEL_17;
  }

  if (a3 == 2 && !v12)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v15 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("suspendSession:reason:field:token:startNextSession:");
      v19 = 45;
      if (isMetaClass)
      {
        v19 = 43;
      }

      v15(3, "%c[%{public}s %{public}s]:%i Missing field", v19, ClassName, Name, 396);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
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

      *buf = 67109890;
      v60 = v22;
      v61 = 2082;
      v62 = object_getClassName(a1);
      v63 = 2082;
      v64 = sel_getName("suspendSession:reason:field:token:startNextSession:");
      v65 = 1024;
      v66 = 396;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing field", buf, 0x22u);
    }

    goto LABEL_13;
  }

  if (![v11 didStart] || (objc_msgSend(v11, "didEnd") & 1) != 0)
  {
LABEL_17:
    v23 = 0;
    goto LABEL_18;
  }

  if ([v11 isSuspended])
  {
    v23 = 1;
    goto LABEL_18;
  }

  v20 = a1[23];
  objc_sync_enter(v20);
  v25 = a1[15];

  if (v25 == v11)
  {
    v34 = a1[24];
    [v34 addObject:v11];

    objc_storeStrong(a1 + 15, 0);
    v35 = a1[23];
    v36 = [v35 count];

    if (!v36)
    {
      sub_1000DE998(a1, 0);
    }

    objc_sync_exit(v20);

    v20 = objc_opt_new();
    v37 = [NSNumber numberWithInteger:a3];
    [v20 setObject:v37 forKey:@"ReasonCode"];

    if (a3 == 2)
    {
      v58 = 0;
      v38 = [NSKeyedArchiver archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v58];
      v39 = v58;
      if (v39)
      {
        v57 = v38;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v40 = NFLogGetLogger();
        if (v40)
        {
          v41 = v40;
          v42 = object_getClass(a1);
          v43 = class_isMetaClass(v42);
          v55 = object_getClassName(a1);
          v54 = sel_getName("suspendSession:reason:field:token:startNextSession:");
          v44 = 45;
          if (v43)
          {
            v44 = 43;
          }

          v41(4, "%c[%{public}s %{public}s]:%i Archive error=%{public}@", v44, v55, v54, 430, v39);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v45 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = object_getClass(a1);
          if (class_isMetaClass(v46))
          {
            v47 = 43;
          }

          else
          {
            v47 = 45;
          }

          v56 = v47;
          v48 = object_getClassName(a1);
          v49 = sel_getName("suspendSession:reason:field:token:startNextSession:");
          *buf = 67110146;
          v60 = v56;
          v61 = 2082;
          v62 = v48;
          v63 = 2082;
          v64 = v49;
          v65 = 1024;
          v66 = 430;
          v67 = 2114;
          v68 = v39;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Archive error=%{public}@", buf, 0x2Cu);
        }

        v38 = v57;
      }

      else
      {
        [v20 setObject:v38 forKey:@"Field"];
      }
    }

    if (v13)
    {
      v50 = [v11 token];
      [v20 setObject:v50 forKey:@"Token"];
    }

    v23 = [v11 suspendWithInfo:v20];
    if (v23 && a6)
    {
      [a1 maybeStartNextSession];
      v23 = 1;
    }

    goto LABEL_14;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v26 = NFLogGetLogger();
  if (v26)
  {
    v27 = v26;
    v28 = object_getClass(a1);
    v29 = class_isMetaClass(v28);
    v51 = object_getClassName(a1);
    v53 = sel_getName("suspendSession:reason:field:token:startNextSession:");
    v30 = 45;
    if (v29)
    {
      v30 = 43;
    }

    v27(6, "%c[%{public}s %{public}s]:%i %{public}@ is not active", v30, v51, v53, 415, v11);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v31 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = object_getClass(a1);
    if (class_isMetaClass(v32))
    {
      v33 = 43;
    }

    else
    {
      v33 = 45;
    }

    *buf = 67110146;
    v60 = v33;
    v61 = 2082;
    v62 = object_getClassName(a1);
    v63 = 2082;
    v64 = sel_getName("suspendSession:reason:field:token:startNextSession:");
    v65 = 1024;
    v66 = 415;
    v67 = 2114;
    v68 = v11;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ is not active", buf, 0x2Cu);
  }

  objc_sync_exit(v20);
LABEL_13:
  v23 = 0;
LABEL_14:

LABEL_18:
  return v23;
}

id *sub_1001DF43C(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 parentToken];
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_100006B1C;
    v41 = sub_1001DE708;
    v42 = 0;
    v6 = a1[23];
    objc_sync_enter(v6);
    v7 = a1[24];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1001DF850;
    v34[3] = &unk_10031B7C0;
    v8 = v5;
    v35 = v8;
    v36 = &v37;
    [v7 enumerateObjectsUsingBlock:v34];

    v9 = v38[5];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v11 = Logger;
    if (v9)
    {
      if (Logger)
      {
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("requeueParentSession:");
        v16 = 43;
        if (!isMetaClass)
        {
          v16 = 45;
        }

        v11(6, "%c[%{public}s %{public}s]:%i Found parent %{public}@ of session %{public}@ using parent token %{public}@", v16, ClassName, Name, 509, v38[5], v4, v8);
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
        v21 = sel_getName("requeueParentSession:");
        v22 = v38[5];
        *buf = 67110658;
        v44 = v19;
        v45 = 2082;
        v46 = v20;
        v47 = 2082;
        v48 = v21;
        v49 = 1024;
        v50 = 509;
        v51 = 2114;
        v52 = v22;
        v53 = 2114;
        v54 = v4;
        v55 = 2114;
        v56 = v8;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found parent %{public}@ of session %{public}@ using parent token %{public}@", buf, 0x40u);
      }

      a1 = [a1 _syncResumeSession:v38[5]];
    }

    else
    {
      if (Logger)
      {
        v23 = object_getClass(a1);
        v24 = class_isMetaClass(v23);
        v25 = object_getClassName(a1);
        v33 = sel_getName("requeueParentSession:");
        v26 = 45;
        if (v24)
        {
          v26 = 43;
        }

        v11(6, "%c[%{public}s %{public}s]:%i No parent for session %{public}@ using parent token %{public}@", v26, v25, v33, 512, v4, v8);
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
        v31 = sel_getName("requeueParentSession:");
        *buf = 67110402;
        v44 = v29;
        v45 = 2082;
        v46 = v30;
        v47 = 2082;
        v48 = v31;
        v49 = 1024;
        v50 = 512;
        v51 = 2114;
        v52 = v4;
        v53 = 2114;
        v54 = v8;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No parent for session %{public}@ using parent token %{public}@", buf, 0x36u);
      }

      a1 = 0;
    }

    objc_sync_exit(v6);
    _Block_object_dispose(&v37, 8);
  }

  return a1;
}

void sub_1001DF850(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 token];
  v8 = [v7 isEqualToData:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1001DF8E8(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v40 = a1[23];
    objc_sync_enter(v40);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v41 = a1;
    obj = a1[24];
    v4 = [obj countByEnumeratingWithState:&v43 objects:v59 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = 0;
      v8 = *v44;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v43 + 1) + 8 * v9);
        v11 = [v10 token];
        v12 = [v3 parentToken];
        v13 = [v11 isEqualToData:v12];

        if (v13)
        {
          v14 = v10;

          v7 = v14;
        }

        v15 = [v10 parentToken];
        v16 = [v3 token];
        v17 = [v15 isEqualToData:v16];

        if (v17)
        {
          v18 = v10;

          v6 = v18;
        }

        if (v6 && v7)
        {
          break;
        }

        if (v5 == ++v9)
        {
          v5 = [obj countByEnumeratingWithState:&v43 objects:v59 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v19 = v41[15];
    v20 = [v19 parentToken];
    v21 = [v3 token];
    v22 = [v20 isEqualToData:v21];

    if (v22)
    {
      if (v6)
      {
        __assert_rtn("[_NFHardwareManager(SessionQueue) fixSessionInheritance:]", "_NFHardwareManager+SessionQueue.m", 547, "childSession == nil");
      }

      v6 = v41[15];
    }

    if (v7 && v6)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v24 = Logger;
        Class = object_getClass(v41);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v41);
        Name = sel_getName("fixSessionInheritance:");
        v29 = [v7 sessionUID];
        v30 = [v6 sessionUID];
        v31 = 45;
        if (isMetaClass)
        {
          v31 = 43;
        }

        v24(6, "%c[%{public}s %{public}s]:%i Fixing up inheritance between parent %@ and child %@", v31, ClassName, Name, 552, v29, v30);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v32 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = object_getClass(v41);
        if (class_isMetaClass(v33))
        {
          v34 = 43;
        }

        else
        {
          v34 = 45;
        }

        v35 = object_getClassName(v41);
        v36 = sel_getName("fixSessionInheritance:");
        v37 = [v7 sessionUID];
        v38 = [v6 sessionUID];
        *buf = 67110402;
        v48 = v34;
        v49 = 2082;
        v50 = v35;
        v51 = 2082;
        v52 = v36;
        v53 = 1024;
        v54 = 552;
        v55 = 2112;
        v56 = v37;
        v57 = 2112;
        v58 = v38;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Fixing up inheritance between parent %@ and child %@", buf, 0x36u);
      }

      v39 = [v7 token];
      [v6 setParentToken:v39];
    }

    objc_sync_exit(v40);
  }
}

id sub_1001DFE3C(uint64_t a1)
{
  v2 = sub_1001DC138(*(a1 + 32), *(a1 + 40), 0, 0, 0);
  v3 = *(a1 + 32);

  return [v3 maybeStartNextSession];
}

void sub_1001E0DA4(void *a1)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    if ((*(obj + 169) & 1) == 0)
    {
      v1 = *(obj + 1);
      NFDriverSetPollingConfig();
    }

    objc_sync_exit(obj);
  }
}

void *sub_1001E0E20(void *result)
{
  if (result)
  {
    v1 = result;
    objc_sync_enter(v1);
    v2 = v1[1];
    v3 = NFDriverSetPollingProfile();
    objc_sync_exit(v1);

    return v3;
  }

  return result;
}

void sub_1001E0E74(void *a1)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    v1 = obj[1];
    NFDriverSetTemporaryPollingPeriod();
    objc_sync_exit(obj);
  }
}

void *sub_1001E0EDC(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    if (!v4[1])
    {
      v6 = +[NSAssertionHandler currentHandler];
      [v6 handleFailureInMethod:"getRFSettings:" object:v4 file:@"NFDriverWrapper+RFConfig.m" lineNumber:54 description:@"driver not open"];

      v7 = v4[1];
    }

    a1 = NFDriverRFSettingsCopy();
    objc_sync_exit(v4);
  }

  return a1;
}

uint64_t sub_1001E1078(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  if (*(v1 + 169))
  {
    v2 = 0;
  }

  else
  {
    v3 = *(v1 + 1);
    v2 = NFDriverEnableFelicaTxEndPatternV2();
  }

  objc_sync_exit(v1);

  return v2;
}

uint64_t sub_1001E10D8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  if ((*(v1 + 169) & 1) != 0 || !NFIsInternalBuild())
  {
    v3 = 0;
  }

  else
  {
    v2 = *(v1 + 1);
    v3 = NFDriverSetFelicaSystemCode();
  }

  objc_sync_exit(v1);

  return v3;
}

uint64_t sub_1001E1148(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  if (*(v1 + 169))
  {
    v2 = 0;
  }

  else
  {
    v3 = *(v1 + 1);
    v2 = NFDriverConfigureExpressFelicaEntry();
  }

  objc_sync_exit(v1);

  return v2;
}

BOOL sub_1001E11B0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v3 = 0;
  if ((*(v1 + 169) & 1) == 0)
  {
    v2 = *(v1 + 1);
    if (NFDriverEnableGreenCarThreshold())
    {
      v3 = 1;
    }
  }

  objc_sync_exit(v1);

  return v3;
}

uint64_t sub_1001E121C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  if (*(v1 + 169))
  {
    v2 = 0;
  }

  else
  {
    v3 = *(v1 + 1);
    v2 = NFDriverConfigureReaderModeRFForTransitPartner();
  }

  objc_sync_exit(v1);

  return v2;
}

id sub_1001E129C(void *a1)
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
      if (!NFDriverEnableAutomaticRFOverride())
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