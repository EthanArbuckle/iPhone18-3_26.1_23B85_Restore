void sub_100053248(uint64_t a1)
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

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 543, v8);
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
      v59 = v12;
      v60 = 2082;
      v61 = v13;
      v62 = 2082;
      v63 = v14;
      v64 = 1024;
      v65 = 543;
      v66 = 2114;
      v67 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v56 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v57 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, 0, v21);
    }
  }

  else
  {
    v22 = *(a1 + 32);
    if (v22)
    {
      v23 = *(v22 + 232);
    }

    else
    {
      v23 = 0;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFLogGetLogger();
    v25 = v24;
    if (v23)
    {
      if (v24)
      {
        v26 = object_getClass(*(a1 + 32));
        v27 = class_isMetaClass(v26);
        v28 = object_getClassName(*(a1 + 32));
        v52 = sel_getName(*(a1 + 56));
        v29 = 45;
        if (v27)
        {
          v29 = 43;
        }

        v25(6, "%c[%{public}s %{public}s]:%i ", v29, v28, v52, 549);
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
        v34 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v59 = v32;
        v60 = 2082;
        v61 = v33;
        v62 = 2082;
        v63 = v34;
        v64 = 1024;
        v65 = 549;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
      }

      v35 = *(a1 + 32);
      if (v35)
      {
        v36 = *(v35 + 232);
      }

      else
      {
        v36 = 0;
      }

      [v36 tnepReaderSend:*(a1 + 40) callback:*(a1 + 48)];
    }

    else
    {
      if (v24)
      {
        v37 = object_getClass(*(a1 + 32));
        v38 = class_isMetaClass(v37);
        v39 = object_getClassName(*(a1 + 32));
        v53 = sel_getName(*(a1 + 56));
        v40 = 45;
        if (v38)
        {
          v40 = 43;
        }

        v25(3, "%c[%{public}s %{public}s]:%i Missing tnepHandler", v40, v39, v53, 546);
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
        v59 = v43;
        v60 = 2082;
        v61 = v44;
        v62 = 2082;
        v63 = v45;
        v64 = 1024;
        v65 = 546;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing tnepHandler", buf, 0x22u);
      }

      v46 = *(a1 + 48);
      v47 = [NSError alloc];
      v48 = [NSString stringWithUTF8String:"nfcd"];
      v54 = NSLocalizedDescriptionKey;
      v49 = [NSString stringWithUTF8String:"Invalid State"];
      v55 = v49;
      v50 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v51 = [v47 initWithDomain:v48 code:12 userInfo:v50];
      (*(v46 + 16))(v46, 0, v51);
    }
  }
}

void sub_1000538C8(uint64_t a1)
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

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 558, v8);
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
      v65 = v12;
      v66 = 2082;
      v67 = v13;
      v68 = 2082;
      v69 = v14;
      v70 = 1024;
      v71 = 558;
      v72 = 2114;
      v73 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 40);
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
    v22 = *(a1 + 32);
    if (v22)
    {
      v23 = *(v22 + 232);
    }

    else
    {
      v23 = 0;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFLogGetLogger();
    v25 = v24;
    if (v23)
    {
      if (v24)
      {
        v26 = object_getClass(*(a1 + 32));
        v27 = class_isMetaClass(v26);
        v28 = object_getClassName(*(a1 + 32));
        v58 = sel_getName(*(a1 + 48));
        v29 = 45;
        if (v27)
        {
          v29 = 43;
        }

        v25(6, "%c[%{public}s %{public}s]:%i ", v29, v28, v58, 564);
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
        v34 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v65 = v32;
        v66 = 2082;
        v67 = v33;
        v68 = 2082;
        v69 = v34;
        v70 = 1024;
        v71 = 564;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
      }

      v35 = *(a1 + 32);
      if (v35)
      {
        v36 = *(v35 + 200);
        v37 = *(v35 + 224);
      }

      else
      {
        v36 = 0;
        v37 = 0;
      }

      v38 = v36;
      sub_10019117C(v38, v37, 0);

      v39 = *(a1 + 32);
      if (v39)
      {
        v40 = *(v39 + 232);
      }

      else
      {
        v40 = 0;
      }

      [v40 tnepReaderRestartPollingWithCallback:*(a1 + 40)];
      v41 = *(a1 + 32);
      if (v41)
      {
        v42 = *(v41 + 200);
      }

      else
      {
        v42 = 0;
      }

      sub_10021E364(v42);
    }

    else
    {
      if (v24)
      {
        v43 = object_getClass(*(a1 + 32));
        v44 = class_isMetaClass(v43);
        v45 = object_getClassName(*(a1 + 32));
        v59 = sel_getName(*(a1 + 48));
        v46 = 45;
        if (v44)
        {
          v46 = 43;
        }

        v25(3, "%c[%{public}s %{public}s]:%i Missing tnepHandler", v46, v45, v59, 561);
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
        v51 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v65 = v49;
        v66 = 2082;
        v67 = v50;
        v68 = 2082;
        v69 = v51;
        v70 = 1024;
        v71 = 561;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing tnepHandler", buf, 0x22u);
      }

      v52 = *(a1 + 40);
      v53 = [NSError alloc];
      v54 = [NSString stringWithUTF8String:"nfcd"];
      v60 = NSLocalizedDescriptionKey;
      v55 = [NSString stringWithUTF8String:"Invalid State"];
      v61 = v55;
      v56 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v57 = [v53 initWithDomain:v54 code:12 userInfo:v56];
      (*(v52 + 16))(v52, v57);
    }
  }
}

void sub_10005427C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(WeakRetained);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(WeakRetained);
      Name = sel_getName(*(a1 + 40));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v4(6, "%c[%{public}s %{public}s]:%i ", v8, ClassName, Name, 582);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(WeakRetained);
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(WeakRetained);
      v13 = sel_getName(*(a1 + 40));
      *buf = 67109890;
      v20 = v11;
      v21 = 2082;
      v22 = v12;
      v23 = 2082;
      v24 = v13;
      v25 = 1024;
      v26 = 582;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    [WeakRetained[29] tnepServiceInvalidate];
    v14 = WeakRetained[29];
    WeakRetained[29] = 0;

    v15 = +[_NFHardwareManager sharedHardwareManager];
    v16 = sub_10004BF60(NFRoutingConfig, 1);
    v17 = [v15 setRoutingConfig:v16];
  }
}

void sub_10005485C(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 609, v3);
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
    *buf = 67110146;
    v17 = v11;
    v18 = 2082;
    v19 = v12;
    v20 = 2082;
    v21 = v13;
    v22 = 1024;
    v23 = 609;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_100054EA8(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 624, v3);
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
    *buf = 67110146;
    v17 = v11;
    v18 = 2082;
    v19 = v12;
    v20 = 2082;
    v21 = v13;
    v22 = 1024;
    v23 = 624;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_100055040(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 248), a2);
  }
}

void sub_100055058(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 639, v3);
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
    *buf = 67110146;
    v17 = v11;
    v18 = 2082;
    v19 = v12;
    v20 = 2082;
    v21 = v13;
    v22 = 1024;
    v23 = 639;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_1000551F0(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 643, v3);
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
    *buf = 67110146;
    v17 = v11;
    v18 = 2082;
    v19 = v12;
    v20 = 2082;
    v21 = v13;
    v22 = 1024;
    v23 = 643;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_1000554E0(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  sub_100055040(*(a1 + 32), v8);
  if (v8)
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
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i CH process error=%{public}@", v13, ClassName, Name, 657, v8);
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
      v18 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v38 = v16;
      v39 = 2082;
      v40 = v17;
      v41 = 2082;
      v42 = v18;
      v43 = 1024;
      v44 = 657;
      v45 = 2114;
      v46 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i CH process error=%{public}@", buf, 0x2Cu);
    }
  }

  if ([v7 length])
  {
    v19 = [[NFNdefMessageInternal alloc] initWithBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];
  }

  else if (*(a1 + 32))
  {
    v20 = objc_alloc_init(NFNdefRecordInternal);
    [v20 setTypeNameFormat:1];
    v21 = [[NSData alloc] initWithBytes:&unk_100296CB6 length:3];
    [v20 setType:v21];

    v22 = [[NSData alloc] initWithBytes:&unk_100296CB9 length:2];
    [v20 setPayload:v22];

    v23 = objc_alloc_init(NFNdefRecordInternal);
    v24 = [[NSMutableData alloc] initWithBytes:&unk_100296CBD length:2];
    v25 = [v20 asData];
    [v24 appendData:v25];

    [v23 setTypeNameFormat:1];
    v26 = [[NSData alloc] initWithBytes:&unk_100296CBB length:2];
    [v23 setType:v26];

    [v23 setPayload:v24];
    v19 = objc_alloc_init(NFNdefMessageInternal);
    [v19 addRecord:v23];
  }

  else
  {
    v19 = 0;
  }

  v27 = *(a1 + 32);
  if (v27)
  {
    v28 = *(v27 + 232);
  }

  else
  {
    v28 = 0;
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000558C4;
  v33[3] = &unk_100316638;
  v29 = *(a1 + 40);
  v34 = v8;
  v35 = v29;
  v33[4] = v27;
  v36 = a3;
  v30 = v8;
  [v28 tnepTagDeviceSendNDEFMessage:v19 callback:v33];
}

void sub_1000558C4(uint64_t a1, void *a2)
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
      Name = sel_getName(*(a1 + 48));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i error=%{public}@", v8, ClassName, Name, 666, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

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
    *v36 = v11;
    *&v36[4] = 2082;
    *&v36[6] = v12;
    *&v36[14] = 2082;
    *&v36[16] = v13;
    v37 = 1024;
    v38 = 666;
    v39 = 2114;
    v40 = v3;
    v14 = "%c[%{public}s %{public}s]:%i error=%{public}@";
    v15 = v9;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 44;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v15, v16, v14, buf, v17);
LABEL_12:

    goto LABEL_24;
  }

  if (!*(a1 + 40) && *(a1 + 56) == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v19 = v18;
      v20 = object_getClass(*(a1 + 32));
      v21 = class_isMetaClass(v20);
      v22 = object_getClassName(*(a1 + 32));
      v34 = sel_getName(*(a1 + 48));
      v23 = 45;
      if (v21)
      {
        v23 = 43;
      }

      v19(6, "%c[%{public}s %{public}s]:%i TNEP is completed", v23, v22, v34, 668);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
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
    v27 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    *v36 = v25;
    *&v36[4] = 2082;
    *&v36[6] = v26;
    *&v36[14] = 2082;
    *&v36[16] = v27;
    v37 = 1024;
    v38 = 668;
    v14 = "%c[%{public}s %{public}s]:%i TNEP is completed";
    v15 = v9;
    v16 = OS_LOG_TYPE_DEFAULT;
    v17 = 34;
    goto LABEL_11;
  }

LABEL_24:
  v28 = NFSharedSignpostLog();
  v29 = [*(a1 + 32) signpostId];
  if ((v29 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v30 = v29;
    if (os_signpost_enabled(v28))
    {
      if (v3)
      {
        v31 = "Failed";
      }

      else
      {
        v31 = "Failed";
        if (!*(a1 + 40) && *(a1 + 56))
        {
          v31 = "Completed";
        }
      }

      *buf = 136315394;
      *v36 = v31;
      *&v36[8] = 2112;
      *&v36[10] = v3;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_END, v30, "CH_Negotiation", "status=%s, error=%@", buf, 0x16u);
    }
  }
}

void sub_1000560DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSError alloc];
  v5 = [NSString stringWithUTF8String:"nfcd"];
  v6 = [v3 code];
  v16[0] = NSLocalizedDescriptionKey;
  if ([v3 code] > 75)
  {
    v7 = 76;
  }

  else
  {
    v7 = [v3 code];
  }

  v8 = [NSString stringWithUTF8String:off_1003162D8[v7]];
  v17[0] = v8;
  v17[1] = v3;
  v16[1] = NSUnderlyingErrorKey;
  v16[2] = @"Line";
  v17[2] = &off_1003303A8;
  v16[3] = @"Method";
  v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v17[3] = v9;
  v16[4] = NSDebugDescriptionErrorKey;
  v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 696];
  v17[4] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:5];
  v12 = [v4 initWithDomain:v5 code:v6 userInfo:v11];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100056364;
  v14[3] = &unk_1003162B8;
  v15 = *(a1 + 32);
  v13 = sub_10004D188(v15, v14);
  [v13 connectionHandoverProcessFailure:v12];

  if ([v3 code] == 47)
  {
    [*(a1 + 32) tnepReaderServicesAborted:v3];
  }
}

void sub_100056364(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 698, v3);
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
    *buf = 67110146;
    v17 = v11;
    v18 = 2082;
    v19 = v12;
    v20 = 2082;
    v21 = v13;
    v22 = 1024;
    v23 = 698;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_1000564FC(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 707, v3);
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
    *buf = 67110146;
    v17 = v11;
    v18 = 2082;
    v19 = v12;
    v20 = 2082;
    v21 = v13;
    v22 = 1024;
    v23 = 707;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_100056694(uint64_t a1, void *a2)
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
      Name = sel_getName(*(a1 + 48));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i select failed, error=%{public}@", v8, ClassName, Name, 712, v3);
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
      v25 = v11;
      v26 = 2082;
      v27 = v12;
      v28 = 2082;
      v29 = v13;
      v30 = 1024;
      v31 = 712;
      v32 = 2114;
      v33 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i select failed, error=%{public}@", buf, 0x2Cu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = v14[27];
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v17 = [v14 workQueue];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100056908;
    v22[3] = &unk_100316688;
    v22[4] = *(a1 + 32);
    v21 = *(a1 + 40);
    v18 = v21;
    v23 = v21;
    [v16 generateConnectionHandoverRequestWithQueue:v17 responseHandler:v22];
  }
}

void sub_100056908(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i CH Request generation fail: %{public}@", v11, ClassName, Name, 720, v6);
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
      *buf = 67110146;
      v27 = v14;
      v28 = 2082;
      v29 = v15;
      v30 = 2082;
      v31 = v16;
      v32 = 1024;
      v33 = 720;
      v34 = 2114;
      v35 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i CH Request generation fail: %{public}@", buf, 0x2Cu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v17 = [[NFNdefMessageInternal alloc] initWithBytes:objc_msgSend(v5 length:{"bytes"), objc_msgSend(v5, "length")}];
    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = *(v18 + 232);
    }

    else
    {
      v19 = 0;
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100056BA8;
    v24[3] = &unk_1003166B0;
    v24[4] = v18;
    v23 = *(a1 + 40);
    v20 = v23;
    v25 = v23;
    [v19 tnepReaderSend:v17 callback:v24];
  }
}

void sub_100056BA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
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
      Name = sel_getName(*(a1 + 48));
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i CH exchange error=%{public}@", v10, ClassName, Name, 728, v5);
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
      *buf = 67110146;
      v31 = v13;
      v32 = 2082;
      v33 = v14;
      v34 = 2082;
      v35 = v15;
      v36 = 1024;
      v37 = 728;
      v38 = 2114;
      v39 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i CH exchange error=%{public}@", buf, 0x2Cu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      v16 = v16[27];
    }

    v17 = v16;
    v18 = [a2 asData];
    v19 = [*(a1 + 32) workQueue];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100056EA4;
    v28[3] = &unk_100316598;
    v28[4] = *(a1 + 32);
    v26 = *(a1 + 40);
    v20 = v26;
    v29 = v26;
    [v17 connectRemoteWithConnectionHandoverSelect:v18 callbackQueue:v19 responseHandler:v28];

    v21 = *(a1 + 32);
    if (v21)
    {
      v22 = *(v21 + 232);
    }

    else
    {
      v22 = 0;
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100057054;
    v27[3] = &unk_1003162B8;
    v23 = *(a1 + 48);
    v27[4] = v21;
    v27[5] = v23;
    [v22 tnepReaderDeselectWithCallback:v27];
  }
}

void sub_100056EA4(uint64_t a1, void *a2)
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
      Name = sel_getName(*(a1 + 48));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i AC connection failure: %{public}@", v8, ClassName, Name, 738, v3);
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
      v17 = v11;
      v18 = 2082;
      v19 = v12;
      v20 = 2082;
      v21 = v13;
      v22 = 1024;
      v23 = 738;
      v24 = 2114;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i AC connection failure: %{public}@", buf, 0x2Cu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100057054(uint64_t a1, void *a2)
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
      Name = sel_getName(*(a1 + 40));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i Deselect failure: %@; ignore since AC has successfully negotiated and connection attempt started", v8, ClassName, Name, 748, v3);
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
      v20 = v11;
      v21 = 2082;
      v22 = v12;
      v23 = 2082;
      v24 = v13;
      v25 = 1024;
      v26 = 748;
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Deselect failure: %@; ignore since AC has successfully negotiated and connection attempt started", buf, 0x2Cu);
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100057258;
  v17[3] = &unk_1003162B8;
  v18 = *(a1 + 32);
  v14 = sub_10004D188(v18, v17);
  [v14 connectionHandoverProcessCompleted];
}

void sub_100057258(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 751, v3);
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
    *buf = 67110146;
    v17 = v11;
    v18 = 2082;
    v19 = v12;
    v20 = 2082;
    v21 = v13;
    v22 = 1024;
    v23 = 751;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_10005763C(uint64_t a1, void *a2)
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
      Name = sel_getName(*(a1 + 40));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i AC connection failure: %{public}@", v8, ClassName, Name, 766, v3);
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
      *buf = 67110146;
      v22 = v11;
      v23 = 2082;
      v24 = v12;
      v25 = 2082;
      v26 = v13;
      v27 = 1024;
      v28 = 766;
      v29 = 2114;
      v30 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i AC connection failure: %{public}@", buf, 0x2Cu);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000578B4;
    v19[3] = &unk_1003162B8;
    v20 = *(a1 + 32);
    v14 = sub_10004D188(v20, v19);
    [v14 connectionHandoverProcessFailure:v3];
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100057A4C;
    v17[3] = &unk_1003162B8;
    v18 = *(a1 + 32);
    v14 = sub_10004D188(v18, v17);
    [v14 connectionHandoverProcessCompleted];
  }
}

void sub_1000578B4(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 768, v3);
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
    *buf = 67110146;
    v17 = v11;
    v18 = 2082;
    v19 = v12;
    v20 = 2082;
    v21 = v13;
    v22 = 1024;
    v23 = 768;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_100057A4C(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 773, v3);
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
    *buf = 67110146;
    v17 = v11;
    v18 = 2082;
    v19 = v12;
    v20 = 2082;
    v21 = v13;
    v22 = 1024;
    v23 = 773;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_100057E58(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 788, v3);
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
    *buf = 67110146;
    v17 = v11;
    v18 = 2082;
    v19 = v12;
    v20 = 2082;
    v21 = v13;
    v22 = 1024;
    v23 = 788;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_100058EAC(uint64_t a1)
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
    if (*(a1 + 56))
    {
      v8 = "Enable";
    }

    else
    {
      v8 = "Disable";
    }

    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %s ContinuousWave", v9, ClassName, Name, 182, v8);
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
    if (*(a1 + 56))
    {
      v15 = "Enable";
    }

    else
    {
      v15 = "Disable";
    }

    *buf = 67110146;
    v51 = v12;
    v52 = 2082;
    v53 = v13;
    v54 = 2082;
    v55 = v14;
    v56 = 1024;
    v57 = 182;
    v58 = 2080;
    v59 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %s ContinuousWave", buf, 0x2Cu);
  }

  v16 = [*(a1 + 32) driverWrapper];
  v17 = sub_10004C268();
  v18 = [v16 setRouting:v17];

  if (v18)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v20 = v19;
      v21 = object_getClass(*(a1 + 32));
      v22 = class_isMetaClass(v21);
      v23 = object_getClassName(*(a1 + 32));
      v48 = sel_getName(*(a1 + 48));
      v24 = 45;
      if (v22)
      {
        v24 = 43;
      }

      v20(6, "%c[%{public}s %{public}s]:%i Error turning off operating mode.", v24, v23, v48, 186);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
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
    v29 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v51 = v27;
    v52 = 2082;
    v53 = v28;
    v54 = 2082;
    v55 = v29;
    v56 = 1024;
    v57 = 186;
    v30 = "%c[%{public}s %{public}s]:%i Error turning off operating mode.";
    v31 = v25;
    v32 = OS_LOG_TYPE_DEFAULT;
    v33 = 34;
    goto LABEL_42;
  }

  v34 = [*(a1 + 32) driverWrapper];
  v18 = [v34 enableContinuousWave:*(a1 + 56) withFrequencySweep:*(a1 + 57)];

  if (!v18)
  {
    *(*(a1 + 32) + 112) = *(a1 + 56);
    goto LABEL_44;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v35 = NFLogGetLogger();
  if (v35)
  {
    v36 = v35;
    v37 = object_getClass(*(a1 + 32));
    v38 = class_isMetaClass(v37);
    v39 = object_getClassName(*(a1 + 32));
    v40 = sel_getName(*(a1 + 48));
    if (*(a1 + 56))
    {
      v41 = "enable";
    }

    else
    {
      v41 = "disable";
    }

    v49 = v41;
    v42 = 45;
    if (v38)
    {
      v42 = 43;
    }

    v36(3, "%c[%{public}s %{public}s]:%i Failed to %s ContinuousWave - error=%{public}@", v42, v39, v40, 190, v49, v18);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
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
    if (*(a1 + 56))
    {
      v47 = "enable";
    }

    else
    {
      v47 = "disable";
    }

    *buf = 67110402;
    v51 = v44;
    v52 = 2082;
    v53 = v45;
    v54 = 2082;
    v55 = v46;
    v56 = 1024;
    v57 = 190;
    v58 = 2080;
    v59 = v47;
    v60 = 2114;
    v61 = v18;
    v30 = "%c[%{public}s %{public}s]:%i Failed to %s ContinuousWave - error=%{public}@";
    v31 = v25;
    v32 = OS_LOG_TYPE_ERROR;
    v33 = 54;
LABEL_42:
    _os_log_impl(&_mh_execute_header, v31, v32, v30, buf, v33);
  }

LABEL_43:

LABEL_44:
  (*(*(a1 + 40) + 16))();
}

void sub_100059588(uint64_t a1)
{
  *(*(a1 + 32) + 88) = 1;
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "scanningForTags", &unk_1002E8B7A, v6, 2u);
  }

  sub_1001B0320(*(*(a1 + 32) + 128), *(a1 + 32));
  v3 = [*(a1 + 32) driverWrapper];
  v4 = sub_10004C6FC(NFRoutingConfig, 239, 0);
  v5 = [v3 setRouting:v4];

  (*(*(a1 + 40) + 16))();
}

void sub_1000598D8(uint64_t a1)
{
  v2 = *(a1 + 52);
  *(*(a1 + 32) + 88) = 1;
  *(*(a1 + 32) + 92) = *(a1 + 48);
  v3 = NFSharedSignpostLog();
  if (os_signpost_enabled(v3))
  {
    v4 = *(a1 + 48);
    v10[0] = 67109120;
    v10[1] = v4;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "scanningForTags", "tech=0x%04x", v10, 8u);
  }

  v5 = *(a1 + 48);
  v6 = (v5 - 1);
  if (v6 <= 0x3F)
  {
    if (((1 << (v5 - 1)) & 0x800000008000000BLL) != 0)
    {
      goto LABEL_10;
    }

    if (v6 == 15)
    {
      v5 = 8;
      goto LABEL_10;
    }
  }

  if (v5 == 128)
  {
    v5 = 128;
  }

  else
  {
    v5 = 239;
  }

LABEL_10:
  sub_1001B0320(*(*(a1 + 32) + 128), *(a1 + 32));
  v7 = [*(a1 + 32) driverWrapper];
  v8 = sub_10004C6FC(NFRoutingConfig, v5, v2);
  v9 = [v7 setRouting:v8];

  (*(*(a1 + 40) + 16))();
}

void sub_100059C9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 88) == 1)
  {
    *(v2 + 88) = 0;
    v3 = NFSharedSignpostLog();
    if (os_signpost_enabled(v3))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "scanningForTags", &unk_1002E8B7A, v7, 2u);
    }

    v2 = *(a1 + 32);
  }

  sub_1001AF894(*(v2 + 128), v2);
  v4 = [*(a1 + 32) driverWrapper];
  v5 = sub_10004C268();
  v6 = [v4 setRouting:v5];

  (*(*(a1 + 40) + 16))();
}

void sub_100059FC8(uint64_t a1)
{
  sub_1001AF894(*(*(a1 + 32) + 128), *(a1 + 32));
  v2 = [*(a1 + 32) driverWrapper];
  v3 = [v2 currentRouting];
  v4 = [v3 copy];

  v5 = [*(a1 + 32) driverWrapper];
  v6 = sub_10004C268();
  v8 = [v5 setRouting:v6];

  if (!v8)
  {
    sub_1001B0320(*(*(a1 + 32) + 128), *(a1 + 32));
    v7 = [*(a1 + 32) driverWrapper];
    v8 = [v7 setRouting:v4];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10005A340(uint64_t a1)
{
  v31.tv_sec = 0;
  *&v31.tv_usec = 0;
  v30 = 0;
  gettimeofday(&v31, &v30);
  *(*(a1 + 32) + 96) = 1000 * v31.tv_sec + v31.tv_usec / 1000;
  *(*(a1 + 32) + 89) = 0;
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "connectTag", &unk_1002E8B7A, buf, 2u);
  }

  v3 = [*(a1 + 32) driverWrapper];
  v4 = [v3 connectTag:*(a1 + 40)];

  v5 = NFSharedSignpostLog();
  if (os_signpost_enabled(v5))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "connectTag", &unk_1002E8B7A, buf, 2u);
  }

  if (v4)
  {
    v6 = [NSError alloc];
    v7 = [NSString stringWithUTF8String:"nfcd"];
    v32 = NSLocalizedDescriptionKey;
    v8 = [NSString stringWithUTF8String:"Unknown Error"];
    v33 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v10 = [v6 initWithDomain:v7 code:6 userInfo:v9];
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
    [*(a1 + 32) _getMaxRFTimeLimitOverride];
    if (v11 > 0.0)
    {
      v12 = v11;
      v13 = *(a1 + 32);
      v14 = v13[15];
      if (!v14)
      {
        objc_initWeak(buf, v13);
        v15 = [NFTimer alloc];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10005A780;
        v27[3] = &unk_1003169B8;
        v16 = *(a1 + 56);
        v27[4] = *(a1 + 32);
        v28[1] = v16;
        objc_copyWeak(v28, buf);
        v26.receiver = *(a1 + 32);
        v26.super_class = _NFACReaderSession;
        v17 = objc_msgSendSuper2(&v26, "workQueue");
        v18 = [v15 initWithCallback:v27 queue:v17];
        v19 = *(a1 + 32);
        v20 = *(v19 + 120);
        *(v19 + 120) = v18;

        objc_destroyWeak(v28);
        objc_destroyWeak(buf);
        v14 = *(*(a1 + 32) + 120);
      }

      [v14 startTimer:v12];
    }

    v10 = 0;
  }

  if ([*(a1 + 40) type] == 8)
  {
    v21 = [*(a1 + 32) driverWrapper];
    v22 = [v21 setISO15693DataRate:*(*(a1 + 32) + 104) forTag:*(a1 + 40)];

    v10 = v22;
  }

  (*(*(a1 + 48) + 16))();
  v23 = sub_10020E4DC();
  v24 = sub_10020E970(v23, [*(*(a1 + 32) + 80) type], 1, 0, objc_msgSend(v10, "code"));

  v25 = +[NSDistributedNotificationCenter defaultCenter];
  [v25 postNotificationName:@"com.apple.nfcacd.tag.session.event" object:0 userInfo:v24 options:3];
}

void sub_10005A780(uint64_t a1)
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

    v3(3, "%c[%{public}s %{public}s]:%i Max session limit reached", v7, ClassName, Name, 298);
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
    v16 = v10;
    v17 = 2082;
    v18 = v11;
    v19 = 2082;
    v20 = v12;
    v21 = 1024;
    v22 = 298;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Max session limit reached", buf, 0x22u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleReaderBurnoutTimer];
}

void sub_10005AB30(uint64_t a1)
{
  v24.tv_sec = 0;
  *&v24.tv_usec = 0;
  v23 = 0;
  [*(*(a1 + 32) + 120) stopTimer];
  gettimeofday(&v24, &v23);
  tv_sec = v24.tv_sec;
  tv_usec = v24.tv_usec;
  v4 = *(*(a1 + 32) + 80);
  if (v4)
  {
    v5 = [v4 type];
    v6 = NFSharedSignpostLog();
    if (os_signpost_enabled(v6))
    {
      *v22 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "disconnectTag", &unk_1002E8B7A, v22, 2u);
    }

    v7 = [*(a1 + 32) driverWrapper];
    v8 = [v7 disconnectTag:*(*(a1 + 32) + 80) tagRemovalDetect:0];

    v9 = NFSharedSignpostLog();
    if (os_signpost_enabled(v9))
    {
      *v22 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "disconnectTag", &unk_1002E8B7A, v22, 2u);
    }

    if (v8)
    {
      v10 = [NSError alloc];
      v11 = [NSString stringWithUTF8String:"nfcd"];
      v25 = NSLocalizedDescriptionKey;
      v12 = [NSString stringWithUTF8String:"Unknown Error"];
      v26 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v14 = [v10 initWithDomain:v11 code:6 userInfo:v13];
    }

    else
    {
      v14 = 0;
      v18 = *(a1 + 32);
      v11 = *(v18 + 80);
      *(v18 + 80) = 0;
    }
  }

  else
  {
    v15 = [NSError alloc];
    v11 = [NSString stringWithUTF8String:"nfcd"];
    v27 = NSLocalizedDescriptionKey;
    v16 = [NSString stringWithUTF8String:"Invalid State"];
    v28 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v14 = [v15 initWithDomain:v11 code:12 userInfo:v17];

    v5 = 0;
  }

  (*(*(a1 + 40) + 16))();
  v19 = sub_10020E4DC();
  v20 = sub_10020E970(v19, v5, 2, 1000 * tv_sec + tv_usec / 1000 - *(*(a1 + 32) + 96), [v14 code]);

  v21 = +[NSDistributedNotificationCenter defaultCenter];
  [v21 postNotificationName:@"com.apple.nfcacd.tag.session.event" object:0 userInfo:v20 options:3];
}

void sub_10005B0F0(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_READER_SESSION_CHECK_PRESENCE", &unk_1002E8B7A, buf, 2u);
  }

  v3 = *(a1 + 32);
  if (!v3[10])
  {
    v28 = *(a1 + 40);
    v29 = [NSError alloc];
    v22 = [NSString stringWithUTF8String:"nfcd"];
    v45 = NSLocalizedDescriptionKey;
    v30 = [NSString stringWithUTF8String:"Invalid State"];
    v46 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v32 = [v29 initWithDomain:v22 code:12 userInfo:v31];
    (*(v28 + 16))(v28, 0, v32);

LABEL_25:
    return;
  }

  v4 = [v3 driverWrapper];
  v5 = [v4 checkTagPresence:*(*(a1 + 32) + 80)];

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
      Name = sel_getName(*(a1 + 48));
      if (v5 == 28)
      {
        v12 = "NFResultTagNotFound";
      }

      else
      {
        v12 = "NFResultRFDeactivated";
      }

      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i checkTagPresence return error: %s", v13, ClassName, Name, 376, v12);
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
      *buf = 67110146;
      if (v5 == 28)
      {
        v19 = "NFResultTagNotFound";
      }

      else
      {
        v19 = "NFResultRFDeactivated";
      }

      v36 = v16;
      v37 = 2082;
      v38 = v17;
      v39 = 2082;
      v40 = v18;
      v41 = 1024;
      v42 = 376;
      v43 = 2080;
      v44 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i checkTagPresence return error: %s", buf, 0x2Cu);
    }

    v20 = *(a1 + 40);
    v21 = [NSError alloc];
    v22 = [NSString stringWithUTF8String:"nfcd"];
    v23 = v5;
    v33 = NSLocalizedDescriptionKey;
    if (v5 >= 0x4C)
    {
      v24 = 76;
    }

    else
    {
      v24 = v5;
    }

    v25 = [NSString stringWithUTF8String:off_100316748[v24]];
    v34 = v25;
    v26 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v27 = [v21 initWithDomain:v22 code:v23 userInfo:v26];
    (*(v20 + 16))(v20, 0, v27);

    goto LABEL_25;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10005B6F8(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_READER_SESSION_CHECK_NDEF", &unk_1002E8B7A, buf, 2u);
  }

  *buf = 0;
  v8 = 0;
  v9 = 0;
  v3 = [*(a1 + 32) driverWrapper];
  v4 = *(*(a1 + 32) + 80);
  v6 = 0;
  [v3 queryTagNDEFCapability:v4 hasNdefAbility:buf error:&v6];
  v5 = v6;

  (*(*(a1 + 40) + 16))();
}

void sub_10005BA04(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_READER_SESSION_READ_NDEF", &unk_1002E8B7A, buf, 2u);
  }

  *buf = 0;
  v17 = 0;
  v18 = 0;
  v3 = NFSharedSignpostLog();
  if (os_signpost_enabled(v3))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "readNdef", &unk_1002E8B7A, v15, 2u);
  }

  v4 = [*(a1 + 32) driverWrapper];
  v5 = *(*(a1 + 32) + 80);
  v14 = 0;
  v6 = [v4 queryTagNDEFCapability:v5 hasNdefAbility:buf error:&v14];
  v7 = v14;

  if (v6)
  {
    if (v18 == 1)
    {
      v8 = [*(a1 + 32) driverWrapper];
      v9 = *(*(a1 + 32) + 80);
      v13 = v7;
      v10 = [v8 readNdefDataFromTag:v9 messageSize:*buf error:&v13];
      v11 = v13;

      v7 = v11;
    }

    else
    {
      v10 = 0;
    }

    [*(*(a1 + 32) + 80) _setNDEFMessageSize:*buf];
    [*(*(a1 + 32) + 80) _setNDEFContainerSize:v17];
  }

  else
  {
    v10 = 0;
  }

  v12 = NFSharedSignpostLog();
  if (os_signpost_enabled(v12))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "readNdef", &unk_1002E8B7A, v15, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10005BE6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(*(a1 + 40) + 80))
  {
    v3 = NFSharedSignpostLog();
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "transceive", &unk_1002E8B7A, buf, 2u);
    }

    v4 = [*(a1 + 40) driverWrapper];
    v5 = *(*(a1 + 40) + 80);
    v24 = 0;
    v6 = [v4 transceive:v2 tag:v5 maxTimeout:&v24 error:20.0];
    v7 = v24;

    v8 = NFSharedSignpostLog();
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceive", &unk_1002E8B7A, buf, 2u);
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v10 = Logger;
      Class = object_getClass(*(a1 + 40));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 40));
      Name = sel_getName(*(a1 + 56));
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i No tag is connected", v14, ClassName, Name, 431);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
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
      v19 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v28 = v17;
      v29 = 2082;
      v30 = v18;
      v31 = 2082;
      v32 = v19;
      v33 = 1024;
      v34 = 431;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No tag is connected", buf, 0x22u);
    }

    v20 = [NSError alloc];
    v8 = [NSString stringWithUTF8String:"nfcd"];
    v25 = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithUTF8String:"Tag Not Found"];
    v26 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v7 = [v20 initWithDomain:v8 code:28 userInfo:v22];

    v6 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10005D468(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (v2)
  {
    v3 = [v2 silentType];
    v4 = *(a1 + 32);
    if (v3 == 1 || (v5 = [*(v4 + 80) silentType], v4 = *(a1 + 32), v5 == 2) || (v6 = objc_msgSend(*(v4 + 80), "silentType"), v4 = *(a1 + 32), v6 == 3) || (v25 = *(v4 + 92), v25 == 32) || v25 == 128 || v25 == 64)
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);

      [v4 _transceiveTypeAAccessoryCommand:v7 callback:v8];
    }

    else
    {
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);

      [v4 _transceiveNTAG5VAccessoryCommand:v26 callback:v27];
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v10 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i No tag is connected", v14, ClassName, Name, 561);
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
      v19 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v32 = v17;
      v33 = 2082;
      v34 = v18;
      v35 = 2082;
      v36 = v19;
      v37 = 1024;
      v38 = 561;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No tag is connected", buf, 0x22u);
    }

    v20 = [NSError alloc];
    v21 = [NSString stringWithUTF8String:"nfcd"];
    v29 = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithUTF8String:"Tag Not Found"];
    v30 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v24 = [v20 initWithDomain:v21 code:28 userInfo:v23];

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10005E25C(uint64_t a1)
{
  if (*(*(a1 + 32) + 80))
  {
    v2 = NFSharedSignpostLog();
    if (os_signpost_enabled(v2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "readTypeIdentifier", &unk_1002E8B7A, buf, 2u);
    }

    v3 = [*(*(a1 + 32) + 80) technology];
    v4 = *(a1 + 32);
    if (v3 == 1)
    {
      v27 = 0;
      v5 = &v27;
      v6 = [v4 _readTypeATagId:&v27];
    }

    else
    {
      if ([v4[10] technology] != 16)
      {
        v23 = 0;
        v22 = 0;
LABEL_20:
        v19 = NFSharedSignpostLog();
        if (os_signpost_enabled(v19))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "readTypeIdentifier", &unk_1002E8B7A, buf, 2u);
        }

        goto LABEL_22;
      }

      v24 = *(a1 + 32);
      v26 = 0;
      v5 = &v26;
      v6 = [v24 _readTypeVTagId:&v26];
    }

    v23 = v6;
    v22 = *v5;
    goto LABEL_20;
  }

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

    v8(3, "%c[%{public}s %{public}s]:%i No tag is connected", v12, ClassName, Name, 676);
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
    v17 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v31 = v15;
    v32 = 2082;
    v33 = v16;
    v34 = 2082;
    v35 = v17;
    v36 = 1024;
    v37 = 676;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No tag is connected", buf, 0x22u);
  }

  v18 = [NSError alloc];
  v19 = [NSString stringWithUTF8String:"nfcd"];
  v28 = NSLocalizedDescriptionKey;
  v20 = [NSString stringWithUTF8String:"Tag Not Found"];
  v29 = v20;
  v21 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v22 = [v18 initWithDomain:v19 code:28 userInfo:v21];

  v23 = 0;
LABEL_22:

  (*(*(a1 + 40) + 16))();
}

void sub_10005E7F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 88) & 1) != 0 || *(v2 + 80))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v4(3, "%c[%{public}s %{public}s]:%i Cannot change rate when polling or connected", v8, ClassName, Name, 703);
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
      *buf = 67109890;
      v25 = v11;
      v26 = 2082;
      v27 = v12;
      v28 = 2082;
      v29 = v13;
      v30 = 1024;
      v31 = 703;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Cannot change rate when polling or connected", buf, 0x22u);
    }

    v14 = [NSError alloc];
    v15 = [NSString stringWithUTF8String:"nfcd"];
    v22 = NSLocalizedDescriptionKey;
    v16 = [NSString stringWithUTF8String:"Invalid State"];
    v23 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v18 = [v14 initWithDomain:v15 code:12 userInfo:v17];
  }

  else
  {
    v19 = NFSharedSignpostLog();
    if (os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "setTypeATagDataRate", &unk_1002E8B7A, buf, 2u);
    }

    v20 = [*(a1 + 32) driverWrapper];
    v18 = [v20 setTypeATagDataRate:*(a1 + 56)];

    *(*(a1 + 32) + 104) = *(a1 + 56);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10005EB74(uint64_t a1)
{
  [*(a1 + 32) disconnectTag:&stru_100316A20];
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "handleReaderBurnoutTimer", &unk_1002E8B7A, v9, 2u);
  }

  [*(a1 + 32) internalEndSession:&stru_100316A40];
  v3 = [*(a1 + 32) remoteObject];
  v4 = [NSError alloc];
  v5 = [NSString stringWithUTF8String:"nfcd"];
  v10 = NSLocalizedDescriptionKey;
  v6 = [NSString stringWithUTF8String:"Timeout"];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v4 initWithDomain:v5 code:5 userInfo:v7];
  [v3 didTerminate:v8];
}

void sub_10005F3D8(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v22 = [*(a1 + 32) secureElementWrapper];
    v23 = 0;
    v18 = sub_1002543BC(v22, &v23);
    v19 = v23;

    (*(*(a1 + 40) + 16))();
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
    Name = sel_getName(*(a1 + 48));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 63, v8);
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
    v33 = 63;
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
    (*(v16 + 16))(v16, 0, v21);

LABEL_15:
  }
}

void sub_10005F7EC(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 76, v8);
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
    v46 = v12;
    v47 = 2082;
    v48 = v13;
    v49 = 2082;
    v50 = v14;
    v51 = 1024;
    v52 = 76;
    v53 = 2114;
    v54 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v36 = [*(a1 + 32) secureElementWrapper];
    v37 = *(a1 + 40);
    v38 = [*(a1 + 32) uid];
    v39 = *(a1 + 48);
    v42 = 0;
    v32 = sub_1001F966C(v36, v37, v38, v39, &v42);
    v40 = v42;

    (*(*(a1 + 56) + 16))();
    v41 = [*(a1 + 48) appletIdentifier];

    sub_1002503FC(NFHciTransactionEventCALogger, v32, v41);
    sub_10022E700(NFDailyStatisticsCALogger, @"totalAuthECommerce");
    [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339378];
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

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 78, v22);
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
    v46 = v26;
    v47 = 2082;
    v48 = v27;
    v49 = 2082;
    v50 = v28;
    v51 = 1024;
    v52 = 78;
    v53 = 2114;
    v54 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 56);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v43 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v44 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
    (*(v30 + 16))(v30, 0, v35);

LABEL_24:
  }
}

void sub_10005FDAC(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 104, v8);
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
    v43 = v12;
    v44 = 2082;
    v45 = v13;
    v46 = 2082;
    v47 = v14;
    v48 = 1024;
    v49 = 104;
    v50 = 2114;
    v51 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v38 = *(a1 + 40);
    v39 = 0;
    v33 = sub_1001D99C8(NFECommercePaymentRequestEncoder, v38, 0, &v39);
    v32 = v39;
    (*(*(a1 + 48) + 16))();
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
    v21 = sel_getName(*(a1 + 56));
    v22 = [*(a1 + 32) sessionUID];
    v23 = 45;
    if (v19)
    {
      v23 = 43;
    }

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 106, v22);
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
    v43 = v26;
    v44 = 2082;
    v45 = v27;
    v46 = 2082;
    v47 = v28;
    v48 = 1024;
    v49 = 106;
    v50 = 2114;
    v51 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 48);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v40[0] = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v41[0] = v33;
    v41[1] = &off_1003303F0;
    v40[1] = @"Line";
    v40[2] = @"Method";
    v34 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v41[2] = v34;
    v40[3] = NSDebugDescriptionErrorKey;
    v35 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 106];
    v41[3] = v35;
    v36 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:4];
    v37 = [v31 initWithDomain:v32 code:54 userInfo:v36];
    (*(v30 + 16))(v30, v37);

LABEL_24:
  }
}

void sub_1000603BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_opt_self();
  v12[0] = @"status";
  v7 = [NSNumber numberWithUnsignedInt:a3];
  v13[0] = v7;
  v12[1] = @"stackLoadTime";
  v8 = [NSNumber numberWithUnsignedInt:a2];
  v13[1] = v8;
  v12[2] = @"nfcControllerType";
  v9 = [NSNumber numberWithUnsignedInt:a4];
  v13[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  v11 = +[NFCALogger sharedCALogger];
  [v11 postCAEventFor:@"com.apple.nfcd.stackLoadEvent" eventInput:v10];
}

void sub_1000604EC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_1001E2F2C();
  [v2 setInterface:v3 forSelector:"queueSecureElementManagerSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];
}

void sub_10006056C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_100061478();
  [v2 setInterface:v3 forSelector:"queueSeshatSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];
}

void sub_1000605EC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10004C790();
  [v2 setInterface:v3 forSelector:"queueReaderSessionInternal:sessionAttribute:completion:" argumentIndex:0 ofReply:1];
}

void sub_10006066C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_1000D8714();
  [v2 setInterface:v3 forSelector:"queueContactlessPaymentSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];

  v4 = sub_1000D8714();
  [v2 setInterface:v4 forSelector:"queueLoyaltyAndPaymentSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];

  v5 = sub_1000D8714();
  [v2 setInterface:v5 forSelector:"queueUnifiedAccessSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];
}

void sub_100060754(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = +[NFSecureTransactionServicesHandoverSessionInterface interface];
  [v2 setInterface:v3 forSelector:"queueSecureTransactionServicesSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];

  v4 = +[NFSecureTransactionServicesHandoverHybridSessionInterface interface];
  [v2 setInterface:v4 forSelector:"queueSecureTransactionServicesHybridSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];
}

void sub_100060808(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFHardwareManagerInterface];
  v2 = qword_10035D938;
  qword_10035D938 = v1;

  v3 = [NSSet alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v108 = [v3 initWithObjects:{v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  [qword_10035D938 setClasses:v108 forSelector:"checkExpressPassCompatibilityDeprecated:callback:" argumentIndex:0 ofReply:0];
  [qword_10035D938 setClasses:v108 forSelector:"checkExpressPassCompatibility:callback:" argumentIndex:0 ofReply:0];
  v12 = qword_10035D938;
  v13 = [NSSet alloc];
  v14 = objc_opt_class();
  v15 = [v13 initWithObjects:{v14, objc_opt_class(), 0}];
  [v12 setClasses:v15 forSelector:"secureElementsWithCompletion:" argumentIndex:0 ofReply:1];

  v107 = sub_10000692C();
  [qword_10035D938 setInterface:v107 forSelector:"registerForCallbacks:withUUID:completion:" argumentIndex:0 ofReply:0];
  v16 = qword_10035D938;
  v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFSecureElementManagerSessionCallbacks];
  [v16 setInterface:v17 forSelector:"queueSecureElementManagerSession:sessionAttribute:completion:" argumentIndex:0 ofReply:0];

  v18 = sub_1000D8C0C();
  [qword_10035D938 setInterface:v18 forSelector:"queueContactlessPaymentSession:sessionAttribute:completion:" argumentIndex:0 ofReply:0];
  v105 = v18;
  [qword_10035D938 setInterface:v18 forSelector:"queueLoyaltyAndPaymentSession:sessionAttribute:completion:" argumentIndex:0 ofReply:0];
  v106 = +[NFContactlessSessionCallbacks interface];
  [qword_10035D938 setInterface:v106 forSelector:? argumentIndex:? ofReply:?];
  v19 = qword_10035D938;
  v20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFECommercePaymentSessionCallbacks];
  [v19 setInterface:v20 forSelector:? argumentIndex:? ofReply:?];

  v21 = qword_10035D938;
  v22 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFCardMigrationPaymentSessionCallbacks];
  [v21 setInterface:v22 forSelector:? argumentIndex:? ofReply:?];

  v23 = qword_10035D938;
  v24 = +[NFFieldDetectSessionInterfaceCallbacks interface];
  [v23 setInterface:v24 forSelector:? argumentIndex:? ofReply:?];

  v25 = qword_10035D938;
  v26 = +[NFReaderSessionInternalCallbacks interface];
  [v25 setInterface:v26 forSelector:"queueReaderSessionInternal:sessionAttribute:completion:" argumentIndex:0 ofReply:0];

  v27 = qword_10035D938;
  v28 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFSeshatSessionCallbacks];
  [v27 setInterface:v28 forSelector:"queueSeshatSession:sessionAttribute:completion:" argumentIndex:0 ofReply:0];

  v29 = qword_10035D938;
  v30 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFPeerPaymentSessionCallbacks];
  [v29 setInterface:v30 forSelector:? argumentIndex:? ofReply:?];

  v31 = qword_10035D938;
  v32 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFTrustSessionCallbacks];
  [v31 setInterface:v32 forSelector:? argumentIndex:? ofReply:?];

  v33 = qword_10035D938;
  v34 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFNdefTagSessionCallbacks];
  [v33 setInterface:v34 forSelector:? argumentIndex:? ofReply:?];

  v35 = qword_10035D938;
  v36 = +[NFHostEmulationSessionCallbacks interface];
  [v35 setInterface:v36 forSelector:"queueHostEmulationSession:sessionAttribute:completion:" argumentIndex:0 ofReply:0];

  v37 = qword_10035D938;
  v38 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFSecureElementAndHostCardEmulationSessionCallbacks];
  [v37 setInterface:v38 forSelector:? argumentIndex:? ofReply:?];

  v39 = qword_10035D938;
  v40 = +[NFSecureElementReaderSessionCallbacks interface];
  [v39 setInterface:v40 forSelector:"queueSecureElementReaderSession:sessionAttribute:completion:" argumentIndex:0 ofReply:0];

  v41 = qword_10035D938;
  v42 = +[NFSecureTransactionServicesHandoverSessionCallbacksInterface interface];
  [v41 setInterface:v42 forSelector:"queueSecureTransactionServicesSession:sessionAttribute:completion:" argumentIndex:0 ofReply:0];

  v43 = qword_10035D938;
  v44 = +[NFSecureTransactionServicesHandoverHybridSessionCallbacksInterface interface];
  [v43 setInterface:v44 forSelector:"queueSecureTransactionServicesHybridSession:sessionAttribute:completion:" argumentIndex:0 ofReply:0];

  [qword_10035D938 setInterface:v18 forSelector:"queueUnifiedAccessSession:sessionAttribute:completion:" argumentIndex:0 ofReply:0];
  v45 = qword_10035D938;
  v46 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFSecureElementLoggingSessionCallbacks];
  [v45 setInterface:v46 forSelector:"queueSecureElementLoggingSession:sessionAttribute:completion:" argumentIndex:0 ofReply:0];

  v47 = qword_10035D938;
  v48 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFLPEMConfigSessionCallbacks];
  [v47 setInterface:v48 forSelector:"queueLPEMConfigSession:sessionAttribute:completion:" argumentIndex:0 ofReply:0];

  v49 = qword_10035D938;
  v50 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFCredentialSessionCallbackInterface];
  [v49 setInterface:v50 forSelector:"queueCredentialSession:sessionAttribute:completion:" argumentIndex:0 ofReply:0];

  v51 = qword_10035D938;
  v52 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFInternalConfigurationSessionCallbacks];
  [v51 setInterface:v52 forSelector:"queueInternalConfigurationSession:sessionAttribute:completion:" argumentIndex:0 ofReply:0];

  v53 = qword_10035D938;
  v54 = +[NFECommercePaymentSessionInterface interface];
  [v53 setInterface:v54 forSelector:"queueECommercePaymentSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];

  v55 = qword_10035D938;
  v56 = +[NFCardMigrationPaymentSessionInterface interface];
  [v55 setInterface:v56 forSelector:"queueCardMigrationPaymentSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];

  v57 = qword_10035D938;
  v58 = +[NFContactlessSessionInterface interface];
  [v57 setInterface:v58 forSelector:"queueContactlessSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];

  v59 = qword_10035D938;
  v60 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFFieldDetectSessionInterface];
  [v59 setInterface:v60 forSelector:"queueFieldDetectSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];

  v61 = qword_10035D938;
  v62 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFPeerPaymentSessionInterface];
  [v61 setInterface:v62 forSelector:"queuePeerPaymentSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];

  v63 = qword_10035D938;
  v64 = +[NFTrustSessionInterface interface];
  [v63 setInterface:v64 forSelector:"queueTrustSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];

  v65 = qword_10035D938;
  v66 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFNdefTagSessionInterface];
  [v65 setInterface:v66 forSelector:"queueNdefTagSession:sessionAttribute:data:completion:" argumentIndex:0 ofReply:1];

  v67 = qword_10035D938;
  v68 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFHostEmulationSessionInterface];
  [v67 setInterface:v68 forSelector:"queueHostEmulationSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];

  v69 = qword_10035D938;
  v70 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFSecureElementAndHostCardEmulationSessionInterface];
  [v69 setInterface:v70 forSelector:"queueSecureElementAndHostEmulationSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];

  v71 = qword_10035D938;
  v72 = +[NFSecureElementReaderSessionInterface interface];
  [v71 setInterface:v72 forSelector:"queueSecureElementReaderSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];

  v73 = qword_10035D938;
  v74 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFSecureElementLoggingSessionInterface];
  [v73 setInterface:v74 forSelector:"queueSecureElementLoggingSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];

  v75 = qword_10035D938;
  v76 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFLPEMConfigSessionInterface];
  [v75 setInterface:v76 forSelector:"queueLPEMConfigSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];

  v77 = qword_10035D938;
  v78 = +[NFCredentialSessionInterface interface];
  [v77 setInterface:v78 forSelector:"queueCredentialSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];

  v79 = qword_10035D938;
  v80 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFInternalConfigurationSessionInterface];
  [v79 setInterface:v80 forSelector:"queueInternalConfigurationSession:sessionAttribute:completion:" argumentIndex:0 ofReply:1];

  v103 = qword_10035D938;
  v81 = [NSSet alloc];
  v82 = objc_opt_class();
  v83 = objc_opt_class();
  v84 = objc_opt_class();
  v85 = objc_opt_class();
  v86 = objc_opt_class();
  v87 = objc_opt_class();
  v88 = objc_opt_class();
  v89 = objc_opt_class();
  v90 = objc_opt_class();
  v91 = [v81 initWithObjects:{v82, v83, v84, v85, v86, v87, v88, v89, v90, objc_opt_class(), 0}];
  [v103 setClasses:v91 forSelector:"stateInfoWithCompletion:" argumentIndex:0 ofReply:1];

  [qword_10035D938 setClasses:v108 forSelector:"requestAssertion:waitOnComplete:completion:" argumentIndex:0 ofReply:0];
  v104 = qword_10035D938;
  v92 = [NSSet alloc];
  v93 = objc_opt_class();
  v94 = objc_opt_class();
  v95 = objc_opt_class();
  v96 = objc_opt_class();
  v97 = objc_opt_class();
  v98 = objc_opt_class();
  v99 = objc_opt_class();
  v100 = objc_opt_class();
  v101 = objc_opt_class();
  v102 = [v92 initWithObjects:{v93, v94, v95, v96, v97, v98, v99, v100, v101, objc_opt_class(), 0}];
  [v104 setClasses:v102 forSelector:"updateBackgroundTagReading:params:completion:" argumentIndex:1 ofReply:0];
}

void sub_100061430(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFHardwareManagerCallbacks];
  v2 = qword_10035D948;
  qword_10035D948 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100061478()
{
  objc_opt_self();
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFSeshatSessionInterface];
  v1 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v1 forSelector:"allocateSlot:authorizingUser:authorizingUserToken:completion:" argumentIndex:0 ofReply:0];

  v2 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v2 forSelector:"derive:userHash:completion:" argumentIndex:0 ofReply:0];

  v3 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:"resetCounter:userToken:completion:" argumentIndex:0 ofReply:0];

  v4 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v4 forSelector:"authorizeUpdate:slotIndex:userToken:completion:" argumentIndex:0 ofReply:0];

  v5 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:"allocateSlot:authorizingUser:authorizingUserToken:completion:" argumentIndex:0 ofReply:1];

  v6 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:"derive:userHash:completion:" argumentIndex:0 ofReply:1];

  v7 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v7 forSelector:"getDataWithCompletion:" argumentIndex:0 ofReply:1];

  return v0;
}

void sub_100061DDC(uint64_t a1)
{
  kdebug_trace();
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_START_EMULATION", &unk_1002E8B7A, buf, 2u);
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
    v9 = [*(a1 + 32) clientName];
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v4(6, "%c[%{public}s %{public}s]:%i %{public}@", v10, ClassName, Name, 69, v9);
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
    v16 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v56 = v13;
    v57 = 2082;
    v58 = v14;
    v59 = 2082;
    v60 = v15;
    v61 = 1024;
    v62 = 69;
    v63 = 2114;
    v64 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v37 = +[_NFHardwareManager sharedHardwareManager];
    v38 = sub_10004BFDC();
    v39 = [v37 setRoutingConfig:v38];

    (*(*(a1 + 40) + 16))();
    v40 = NFLogGetLogger();
    if (v40)
    {
      v41 = v40;
      v42 = object_getClass(*(a1 + 32));
      v43 = class_isMetaClass(v42);
      v44 = object_getClassName(*(a1 + 32));
      v45 = sel_getName(*(a1 + 48));
      v46 = [*(a1 + 32) clientName];
      v47 = 45;
      if (v43)
      {
        v47 = 43;
      }

      v41(6, "%c[%{public}s %{public}s]:%i NFC emulation mode activated: %@", v47, v44, v45, 76, v46);
    }

    v33 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
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
      v51 = sel_getName(*(a1 + 48));
      v52 = [*(a1 + 32) clientName];
      *buf = 67110146;
      v56 = v49;
      v57 = 2082;
      v58 = v50;
      v59 = 2082;
      v60 = v51;
      v61 = 1024;
      v62 = 76;
      v63 = 2112;
      v64 = v52;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC emulation mode activated: %@", buf, 0x2Cu);
    }

    goto LABEL_26;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFLogGetLogger();
  if (v17)
  {
    v18 = v17;
    v19 = object_getClass(*(a1 + 32));
    v20 = class_isMetaClass(v19);
    v21 = object_getClassName(*(a1 + 32));
    v22 = sel_getName(*(a1 + 48));
    v23 = [*(a1 + 32) sessionUID];
    v24 = 45;
    if (v20)
    {
      v24 = 43;
    }

    v18(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v24, v21, v22, 71, v23);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
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
    v29 = sel_getName(*(a1 + 48));
    v30 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v56 = v27;
    v57 = 2082;
    v58 = v28;
    v59 = 2082;
    v60 = v29;
    v61 = 1024;
    v62 = 71;
    v63 = 2114;
    v64 = v30;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v31 = *(a1 + 40);
  if (v31)
  {
    v32 = [NSError alloc];
    v33 = [NSString stringWithUTF8String:"nfcd"];
    v53 = NSLocalizedDescriptionKey;
    v34 = [NSString stringWithUTF8String:"Session not active"];
    v54 = v34;
    v35 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v36 = [v32 initWithDomain:v33 code:54 userInfo:v35];
    (*(v31 + 16))(v31, v36);

LABEL_26:
  }
}

void sub_1000624B0(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 83, v8);
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
    v55 = v12;
    v56 = 2082;
    v57 = v13;
    v58 = 2082;
    v59 = v14;
    v60 = 1024;
    v61 = 83;
    v62 = 2114;
    v63 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v36 = +[_NFHardwareManager sharedHardwareManager];
    v37 = sub_10004BF2C();
    v38 = [v36 setRoutingConfig:v37];

    (*(*(a1 + 40) + 16))();
    v39 = NFLogGetLogger();
    if (v39)
    {
      v40 = v39;
      v41 = object_getClass(*(a1 + 32));
      v42 = class_isMetaClass(v41);
      v43 = object_getClassName(*(a1 + 32));
      v44 = sel_getName(*(a1 + 48));
      v45 = [*(a1 + 32) clientName];
      v46 = 45;
      if (v42)
      {
        v46 = 43;
      }

      v40(6, "%c[%{public}s %{public}s]:%i NFC emulation mode terminated: %@", v46, v43, v44, 91, v45);
    }

    v32 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
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
      v51 = [*(a1 + 32) clientName];
      *buf = 67110146;
      v55 = v48;
      v56 = 2082;
      v57 = v49;
      v58 = 2082;
      v59 = v50;
      v60 = 1024;
      v61 = 91;
      v62 = 2112;
      v63 = v51;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC emulation mode terminated: %@", buf, 0x2Cu);
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
    v21 = sel_getName(*(a1 + 48));
    v22 = [*(a1 + 32) sessionUID];
    v23 = 45;
    if (v19)
    {
      v23 = 43;
    }

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 85, v22);
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
    v55 = v26;
    v56 = 2082;
    v57 = v27;
    v58 = 2082;
    v59 = v28;
    v60 = 1024;
    v61 = 85;
    v62 = 2114;
    v63 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 40);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v52 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v53 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
    (*(v30 + 16))(v30, v35);

LABEL_24:
  }
}

void sub_100062B60(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v22 = [*(a1 + 32) _getSecureElementWrapperForSEID:*(a1 + 40)];
    if (v22)
    {
      v18 = v22;
      v23 = [*(a1 + 32) embeddedSecureElementWrapper];
      v24 = *(a1 + 48);
      v29 = 0;
      v19 = sub_1001579EC(v23, v24, 0, &v29);
      v20 = v29;

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v25 = *(a1 + 56);
      v26 = [NSError alloc];
      v19 = [NSString stringWithUTF8String:"nfcd"];
      v30 = NSLocalizedDescriptionKey;
      v20 = [NSString stringWithUTF8String:"Stack Error"];
      v31 = v20;
      v27 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v28 = [v26 initWithDomain:v19 code:15 userInfo:v27];
      (*(v25 + 16))(v25, 0, v28);

      v18 = 0;
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

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 98, v8);
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
    v41 = 98;
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

uint64_t sub_10006375C(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 p1] == 4 && !objc_msgSend(v3, "p2"))
  {
    if ([v3 payloadBytes] && objc_msgSend(v3, "payloadLength") == 10)
    {
      v15 = [v3 payloadBytes];
      if (*v15 == 0x2E5341562E45534FLL && v15[4] == 12592)
      {
        v13 = 36864;
        goto LABEL_14;
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v18 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_validateOseSelect:");
      v21 = 45;
      if (isMetaClass)
      {
        v21 = 43;
      }

      v18(3, "%c[%{public}s %{public}s]:%i Bad Select OSE VAS version number: %{public}@", v21, ClassName, Name, 105, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v22 = object_getClass(a1);
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      *buf = 67110146;
      v28 = v23;
      v29 = 2082;
      v30 = object_getClassName(a1);
      v31 = 2082;
      v32 = sel_getName("_validateOseSelect:");
      v33 = 1024;
      v34 = 105;
      v35 = 2114;
      v36 = v3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Bad Select OSE VAS version number: %{public}@", buf, 0x2Cu);
    }

    v13 = 27264;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v4 = NFLogGetLogger();
    if (v4)
    {
      v5 = v4;
      v6 = object_getClass(a1);
      v7 = class_isMetaClass(v6);
      v8 = object_getClassName(a1);
      v25 = sel_getName("_validateOseSelect:");
      v9 = 45;
      if (v7)
      {
        v9 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i Bad p1/p2", v9, v8, v25, 100);
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
      v28 = v12;
      v29 = 2082;
      v30 = object_getClassName(a1);
      v31 = 2082;
      v32 = sel_getName("_validateOseSelect:");
      v33 = 1024;
      v34 = 100;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Bad p1/p2", buf, 0x22u);
    }

    v13 = 27392;
  }

LABEL_14:
  return v13;
}

unsigned int *sub_100063A94(unsigned int *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = sub_10006375C(a1, a2);
    *(v2 + 7) = v3;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v5 = Logger;
    if (v3 == 36864)
    {
      if (Logger)
      {
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("_handleOseSelect:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v5(6, "%c[%{public}s %{public}s]:%i MobileCaps = 0x%04x encryption = 0x%02x, loyalty = 0x%02x, payment = 0x%02x", v10, ClassName, Name, 140, v2[2], v2[2] & 3, (v2[2] >> 2) & 3, (v2[2] >> 4) & 3);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
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
        v15 = sel_getName("_handleOseSelect:");
        v16 = v2[2];
        *buf = 67110914;
        v45 = v13;
        v46 = 2082;
        v47 = v14;
        v48 = 2082;
        v49 = v15;
        v50 = 1024;
        v51 = 140;
        v52 = 1024;
        v53 = v16;
        v54 = 1024;
        v55 = v16 & 3;
        v56 = 1024;
        v57 = (v16 >> 2) & 3;
        v58 = 1024;
        v59 = (v16 >> 4) & 3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i MobileCaps = 0x%04x encryption = 0x%02x, loyalty = 0x%02x, payment = 0x%02x", buf, 0x3Au);
      }

      v17 = *(v2 + 3);
      v18 = [NSNumber numberWithUnsignedInt:v2[2]];
      [v17 setObject:v18 forKey:@"DeviceCaps"];

      *buf = 0;
      if (SecRandomCopyBytes(kSecRandomDefault, 4uLL, buf))
      {
        v41 = +[NSAssertionHandler currentHandler];
        [v41 handleFailureInMethod:"_handleOseSelect:" object:v2 file:@"NFLoyaltyAgent.m" lineNumber:145 description:@"Failed to initialize nonce"];
      }

      v19 = *(v2 + 3);
      v20 = [[NSData alloc] initWithBytes:buf length:4];
      [v19 setObject:v20 forKey:@"DeviceNonce"];

      v21 = [NSMutableArray alloc];
      v22 = [[NSData alloc] initWithBytes:"ApplePay" length:8];
      v23 = [NFTLV TLVWithTag:80 value:v22];
      v24 = [[NSData alloc] initWithBytes:&unk_100296CC8 length:2];
      v25 = [NFTLV TLVWithTag:40737 value:v24];
      v26 = [NFTLV TLVWithTag:40740 unsignedLongValue:*buf];
      v27 = [NFTLV TLVWithTag:40739 unsignedLongValue:bswap32(v2[2])];
      v28 = [v21 initWithObjects:{v23, v25, v26, v27, 0}];

      v29 = [NFTLV TLVWithTag:111 children:v28];
      v30 = [v29 asMutableData];

      if (v30)
      {
        v43 = 144;
        [v30 appendBytes:&v43 length:2];
      }

      *(v2 + 7) = -28672;
      *(v2 + 12) = 1;
      *(v2 + 32) = 1;
      v2 = v30;
    }

    else
    {
      if (Logger)
      {
        v31 = object_getClass(v2);
        v32 = class_isMetaClass(v31);
        v33 = object_getClassName(v2);
        v42 = sel_getName("_handleOseSelect:");
        v34 = 45;
        if (v32)
        {
          v34 = 43;
        }

        v5(6, "%c[%{public}s %{public}s]:%i returning failed validation", v34, v33, v42, 127);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v35 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = object_getClass(v2);
        if (class_isMetaClass(v36))
        {
          v37 = 43;
        }

        else
        {
          v37 = 45;
        }

        *buf = 67109890;
        v45 = v37;
        v46 = 2082;
        v47 = object_getClassName(v2);
        v48 = 2082;
        v49 = sel_getName("_handleOseSelect:");
        v50 = 1024;
        v51 = 127;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i returning failed validation", buf, 0x22u);
      }

      v38 = objc_opt_new();
      v39 = v38;
      if (v38)
      {
        *buf = __rev16(v3);
        [v38 appendBytes:buf length:2];
      }

      [NFExceptionsCALogger postAnalyticsVASTransactionException:0 withSWStatus:v3];
      v2 = v39;
    }
  }

  return v2;
}

id sub_100064004(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v3 = [&off_100338F88 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v29;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v29 != v5)
          {
            objc_enumerationMutation(&off_100338F88);
          }

          v7 = *(*(&v28 + 1) + 8 * i);
          v8 = [*(a1 + 24) objectForKey:v7];
          if (v8)
          {
            [v2 setObject:v8 forKey:v7];
          }
        }

        v4 = [&off_100338F88 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v4);
    }

    v9 = *(a1 + 12);
    if (v9 == 4)
    {
      v16 = [NSError alloc];
      v17 = *(a1 + 14);
      v32 = NSLocalizedDescriptionKey;
      if (v17 == 36864)
      {
        v18 = "Success";
      }

      else
      {
        v19 = &word_100316AB0;
        v20 = 24;
        v18 = "Unknown Error";
        while (--v20)
        {
          v21 = v19 + 8;
          v22 = *v19;
          v19 += 8;
          if (v22 == v17)
          {
            v18 = *(v21 - 1);
            break;
          }
        }
      }

      v23 = [NSString stringWithUTF8String:v18];
      v33 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v25 = [v16 initWithDomain:@"GP" code:v17 userInfo:v24];
      [v2 setObject:v25 forKey:@"Error"];

      v26 = *(a1 + 14);
      switch(v26)
      {
        case 25223:
          v15 = &off_100330438;
          break;
        case 27267:
          v15 = &off_100330468;
          break;
        case 27012:
          v15 = &off_100330450;
          break;
        default:
          v15 = &off_100330480;
          break;
      }
    }

    else
    {
      if (v9 != 3)
      {
        goto LABEL_28;
      }

      v10 = [NSError alloc];
      v11 = [NSString stringWithUTF8String:"nfcd"];
      v34 = NSLocalizedDescriptionKey;
      v12 = [NSString stringWithUTF8String:"Success"];
      v35 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v14 = [v10 initWithDomain:v11 code:0 userInfo:v13];
      [v2 setObject:v14 forKey:@"Error"];

      v15 = &off_100330420;
    }

    [v2 setObject:v15 forKey:@"Result"];
  }

  else
  {
    v2 = 0;
  }

LABEL_28:

  return v2;
}

uint64_t sub_1000643D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 payload];
  v5 = [NFTLV TLVsWithData:v4];

  if ((*(a1 + 32) & 1) == 0)
  {
    v140 = v5;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v142 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_validateGetVasDataCommand:");
      v146 = 45;
      if (isMetaClass)
      {
        v146 = 43;
      }

      v142(3, "%c[%{public}s %{public}s]:%i Applet is not in selected state", v146, ClassName, Name, 243);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v147 = object_getClass(a1);
      if (class_isMetaClass(v147))
      {
        v148 = 43;
      }

      else
      {
        v148 = 45;
      }

      *buf = 67109890;
      v302 = v148;
      v303 = 2082;
      v304 = object_getClassName(a1);
      v305 = 2082;
      v306 = sel_getName("_validateGetVasDataCommand:");
      v307 = 1024;
      v308 = 243;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Applet is not in selected state", buf, 0x22u);
    }

    v9 = 0;
    v149 = 27013;
    goto LABEL_157;
  }

  if ([v3 p1] != 1 || objc_msgSend(v3, "p2") && objc_msgSend(v3, "p2") != 1)
  {
    v140 = v5;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v150 = NFLogGetLogger();
    if (v150)
    {
      v151 = v150;
      v152 = object_getClass(a1);
      v153 = class_isMetaClass(v152);
      v154 = object_getClassName(a1);
      v279 = sel_getName("_validateGetVasDataCommand:");
      v155 = 45;
      if (v153)
      {
        v155 = 43;
      }

      v151(3, "%c[%{public}s %{public}s]:%i Invalid P1/P2", v155, v154, v279, 248);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v156 = object_getClass(a1);
      if (class_isMetaClass(v156))
      {
        v157 = 43;
      }

      else
      {
        v157 = 45;
      }

      *buf = 67109890;
      v302 = v157;
      v303 = 2082;
      v304 = object_getClassName(a1);
      v305 = 2082;
      v306 = sel_getName("_validateGetVasDataCommand:");
      v307 = 1024;
      v308 = 248;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid P1/P2", buf, 0x22u);
    }

    v9 = 0;
    v149 = 27392;
LABEL_157:
    v128 = v140;
    goto LABEL_158;
  }

  v299 = 0u;
  v300 = 0u;
  v297 = 0u;
  v298 = 0u;
  v291 = v5;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v297 objects:v312 count:16];
  if (!v7)
  {

    v9 = 0;
LABEL_161:
    v128 = v291;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v159 = NFLogGetLogger();
    if (v159)
    {
      v160 = v159;
      v161 = object_getClass(a1);
      v162 = class_isMetaClass(v161);
      v163 = object_getClassName(a1);
      v280 = sel_getName("_validateGetVasDataCommand:");
      v164 = 45;
      if (v162)
      {
        v164 = 43;
      }

      v160(3, "%c[%{public}s %{public}s]:%i Missing mandatory fields", v164, v163, v280, 365);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v6 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_171;
    }

    v165 = object_getClass(a1);
    if (class_isMetaClass(v165))
    {
      v166 = 43;
    }

    else
    {
      v166 = 45;
    }

    v167 = object_getClassName(a1);
    v168 = sel_getName("_validateGetVasDataCommand:");
    *buf = 67109890;
    v302 = v166;
    v303 = 2082;
    v304 = v167;
    v305 = 2082;
    v306 = v168;
    v307 = 1024;
    v308 = 365;
    v139 = "%c[%{public}s %{public}s]:%i Missing mandatory fields";
    goto LABEL_170;
  }

  v8 = v7;
  v290 = 0;
  v292 = 0;
  v294 = 0;
  v9 = 0;
  v295 = *v298;
  v293 = v3;
  while (2)
  {
    for (i = 0; i < v8; ++i)
    {
      v11 = v9;
      if (*v298 != v295)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v297 + 1) + 8 * i);
      v9 = [v12 value];

      if ([v12 tag] == 40738)
      {
        if ([v9 length] != 2)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v169 = NFLogGetLogger();
          if (v169)
          {
            v170 = v169;
            v171 = object_getClass(a1);
            v172 = class_isMetaClass(v171);
            v173 = object_getClassName(a1);
            v281 = sel_getName("_validateGetVasDataCommand:");
            v174 = 45;
            if (v172)
            {
              v174 = 43;
            }

            v170(3, "%c[%{public}s %{public}s]:%i Invalid terminal app version length", v174, v173, v281, 259);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v175 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
          {
            v176 = object_getClass(a1);
            if (class_isMetaClass(v176))
            {
              v177 = 43;
            }

            else
            {
              v177 = 45;
            }

            v178 = object_getClassName(a1);
            v179 = sel_getName("_validateGetVasDataCommand:");
            *buf = 67109890;
            v302 = v177;
            v303 = 2082;
            v304 = v178;
            v305 = 2082;
            v306 = v179;
            v307 = 1024;
            v308 = 259;
            v180 = "%c[%{public}s %{public}s]:%i Invalid terminal app version length";
            goto LABEL_181;
          }

          goto LABEL_203;
        }

        if (*[v9 bytes] != 1)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v183 = NFLogGetLogger();
          if (v183)
          {
            v184 = v183;
            v185 = object_getClass(a1);
            v186 = class_isMetaClass(v185);
            v187 = object_getClassName(a1);
            v282 = sel_getName("_validateGetVasDataCommand:");
            v188 = 45;
            if (v186)
            {
              v188 = 43;
            }

            v184(3, "%c[%{public}s %{public}s]:%i Invalid AppVersion", v188, v187, v282, 264);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v175 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
          {
            v189 = object_getClass(a1);
            if (class_isMetaClass(v189))
            {
              v190 = 43;
            }

            else
            {
              v190 = 45;
            }

            v191 = object_getClassName(a1);
            v192 = sel_getName("_validateGetVasDataCommand:");
            *buf = 67109890;
            v302 = v190;
            v303 = 2082;
            v304 = v191;
            v305 = 2082;
            v306 = v192;
            v307 = 1024;
            v308 = 264;
            v193 = "%c[%{public}s %{public}s]:%i Invalid AppVersion";
            v194 = v175;
            v195 = OS_LOG_TYPE_ERROR;
            goto LABEL_191;
          }

          goto LABEL_192;
        }

        v13 = [v12 valueAsUnsignedShort];
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v14 = NFLogGetLogger();
        if (v14)
        {
          v15 = v14;
          v16 = object_getClass(a1);
          v17 = class_isMetaClass(v16);
          v18 = object_getClassName(a1);
          v268 = sel_getName("_validateGetVasDataCommand:");
          v19 = !v17;
          v3 = v293;
          v20 = 45;
          if (!v19)
          {
            v20 = 43;
          }

          v15(10, "%c[%{public}s %{public}s]:%i VAS Terminal Version number = 0x%08x, %d", v20, v18, v268, 269, v13, v13);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v21 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = object_getClass(a1);
          if (class_isMetaClass(v22))
          {
            v23 = 43;
          }

          else
          {
            v23 = 45;
          }

          v24 = object_getClassName(a1);
          v25 = sel_getName("_validateGetVasDataCommand:");
          *buf = 67110402;
          v302 = v23;
          v303 = 2082;
          v304 = v24;
          v305 = 2082;
          v306 = v25;
          v307 = 1024;
          v308 = 269;
          v309 = 1024;
          *v310 = v13;
          *&v310[4] = 1024;
          *&v310[6] = v13;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i VAS Terminal Version number = 0x%08x, %d", buf, 0x2Eu);
        }

        v26 = *(a1 + 24);
        v27 = [NSNumber numberWithUnsignedInt:__rev16(v13)];
        [v26 setObject:v27 forKey:@"TerminalAppVersion"];

        v294 = 1;
      }

      else if ([v12 tag] == 40741)
      {
        v28 = [v9 length];
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v29 = NFLogGetLogger();
        v30 = v29;
        if (v28 != 32)
        {
          if (v29)
          {
            v196 = object_getClass(a1);
            v197 = class_isMetaClass(v196);
            v198 = object_getClassName(a1);
            v199 = sel_getName("_validateGetVasDataCommand:");
            v289 = [v9 length];
            v200 = 45;
            if (v197)
            {
              v200 = 43;
            }

            v30(3, "%c[%{public}s %{public}s]:%i Invalid merchantId length: %d", v200, v198, v199, 276, v289);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v175 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
          {
            v201 = object_getClass(a1);
            if (class_isMetaClass(v201))
            {
              v202 = 43;
            }

            else
            {
              v202 = 45;
            }

            v203 = object_getClassName(a1);
            v204 = sel_getName("_validateGetVasDataCommand:");
            v205 = [v9 length];
            *buf = 67110146;
            v302 = v202;
            v303 = 2082;
            v304 = v203;
            v305 = 2082;
            v306 = v204;
            v307 = 1024;
            v308 = 276;
            v309 = 1024;
            *v310 = v205;
            v180 = "%c[%{public}s %{public}s]:%i Invalid merchantId length: %d";
            v181 = v175;
            v182 = 40;
            goto LABEL_202;
          }

          goto LABEL_203;
        }

        if (v29)
        {
          v31 = object_getClass(a1);
          v32 = class_isMetaClass(v31);
          v266 = object_getClassName(a1);
          v269 = sel_getName("_validateGetVasDataCommand:");
          v33 = 45;
          if (v32)
          {
            v33 = 43;
          }

          v30(10, "%c[%{public}s %{public}s]:%i VAS Terminal Merchant Id: %@", v33, v266, v269, 280, v9);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v34 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
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

          v37 = object_getClassName(a1);
          v38 = sel_getName("_validateGetVasDataCommand:");
          *buf = 67110146;
          v302 = v36;
          v303 = 2082;
          v304 = v37;
          v305 = 2082;
          v306 = v38;
          v307 = 1024;
          v308 = 280;
          v309 = 2112;
          *v310 = v9;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i VAS Terminal Merchant Id: %@", buf, 0x2Cu);
        }

        [*(a1 + 24) setObject:v9 forKey:@"MerchantId"];
        v292 = 1;
      }

      else
      {
        if ([v12 tag] == 40744)
        {
          if ([v9 length] == 4)
          {
            [*(a1 + 24) setObject:v9 forKey:@"TerminalNonce"];
            continue;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v206 = NFLogGetLogger();
          if (v206)
          {
            v207 = v206;
            v208 = object_getClass(a1);
            v209 = class_isMetaClass(v208);
            v210 = object_getClassName(a1);
            v283 = sel_getName("_validateGetVasDataCommand:");
            v211 = 45;
            if (v209)
            {
              v211 = 43;
            }

            v207(3, "%c[%{public}s %{public}s]:%i Invalid nonce length", v211, v210, v283, 285);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v175 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
          {
            v212 = object_getClass(a1);
            if (class_isMetaClass(v212))
            {
              v213 = 43;
            }

            else
            {
              v213 = 45;
            }

            v214 = object_getClassName(a1);
            v215 = sel_getName("_validateGetVasDataCommand:");
            *buf = 67109890;
            v302 = v213;
            v303 = 2082;
            v304 = v214;
            v305 = 2082;
            v306 = v215;
            v307 = 1024;
            v308 = 285;
            v180 = "%c[%{public}s %{public}s]:%i Invalid nonce length";
            goto LABEL_181;
          }

          goto LABEL_203;
        }

        if ([v12 tag] == 40747)
        {
          if ([v9 length] == 4)
          {
            v39 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", bswap32(*[v9 bytes]));
            [*(a1 + 24) setObject:v39 forKey:@"Filter"];
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v40 = NFLogGetLogger();
            if (v40)
            {
              v41 = v40;
              v42 = object_getClass(a1);
              v43 = class_isMetaClass(v42);
              v267 = object_getClassName(a1);
              v270 = sel_getName("_validateGetVasDataCommand:");
              v44 = 45;
              if (v43)
              {
                v44 = 43;
              }

              v41(10, "%c[%{public}s %{public}s]:%i VAS Filter: %@", v44, v267, v270, 297, v39);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v45 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
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

              v48 = object_getClassName(a1);
              v49 = sel_getName("_validateGetVasDataCommand:");
              *buf = 67110146;
              v302 = v47;
              v303 = 2082;
              v304 = v48;
              v305 = 2082;
              v306 = v49;
              v307 = 1024;
              v308 = 297;
              v309 = 2112;
              *v310 = v39;
              v50 = v45;
              v51 = "%c[%{public}s %{public}s]:%i VAS Filter: %@";
              v52 = 44;
              goto LABEL_74;
            }

            goto LABEL_75;
          }

          if ([v9 length] == 5)
          {
            v69 = [v9 bytes];
            v70 = *v69;
            if ((v70 - 1) < 2)
            {
              v39 = [NSNumber numberWithInt:bswap32(*(v69 + 1))];
              v71 = *(a1 + 24);
              v72 = [NSNumber numberWithInt:v70];
              [v71 setObject:v72 forKey:@"FilterType"];

              [*(a1 + 24) setObject:v39 forKey:@"Filter"];
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v73 = NFLogGetLogger();
              if (v73)
              {
                v74 = v73;
                v75 = object_getClass(a1);
                v76 = class_isMetaClass(v75);
                v77 = object_getClassName(a1);
                v272 = sel_getName("_validateGetVasDataCommand:");
                v78 = 45;
                if (v76)
                {
                  v78 = 43;
                }

                v74(10, "%c[%{public}s %{public}s]:%i VAS Filter = %@, FilterType = %d", v78, v77, v272, 311, v39, v70);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v45 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                v79 = object_getClass(a1);
                if (class_isMetaClass(v79))
                {
                  v80 = 43;
                }

                else
                {
                  v80 = 45;
                }

                v81 = object_getClassName(a1);
                v82 = sel_getName("_validateGetVasDataCommand:");
                *buf = 67110402;
                v302 = v80;
                v303 = 2082;
                v304 = v81;
                v305 = 2082;
                v306 = v82;
                v307 = 1024;
                v308 = 311;
                v309 = 2112;
                *v310 = v39;
                *&v310[8] = 1024;
                v311 = v70;
                v50 = v45;
                v51 = "%c[%{public}s %{public}s]:%i VAS Filter = %@, FilterType = %d";
                v52 = 50;
LABEL_74:
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, v51, buf, v52);
              }

LABEL_75:

              v3 = v293;
              continue;
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v236 = NFLogGetLogger();
            if (v236)
            {
              v237 = v236;
              v238 = object_getClass(a1);
              v239 = class_isMetaClass(v238);
              v240 = object_getClassName(a1);
              v286 = sel_getName("_validateGetVasDataCommand:");
              v241 = 45;
              if (v239)
              {
                v241 = 43;
              }

              v237(5, "%c[%{public}s %{public}s]:%i Invalid Filter Type", v241, v240, v286, 304);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v175 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
            {
              v242 = object_getClass(a1);
              if (class_isMetaClass(v242))
              {
                v243 = 43;
              }

              else
              {
                v243 = 45;
              }

              v244 = object_getClassName(a1);
              v245 = sel_getName("_validateGetVasDataCommand:");
              *buf = 67109890;
              v302 = v243;
              v303 = 2082;
              v304 = v244;
              v305 = 2082;
              v306 = v245;
              v307 = 1024;
              v308 = 304;
              v193 = "%c[%{public}s %{public}s]:%i Invalid Filter Type";
              v194 = v175;
              v195 = OS_LOG_TYPE_DEFAULT;
LABEL_191:
              _os_log_impl(&_mh_execute_header, v194, v195, v193, buf, 0x22u);
            }

LABEL_192:
            v149 = 27264;
LABEL_204:

            v128 = v291;
            goto LABEL_158;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v216 = NFLogGetLogger();
          if (v216)
          {
            v217 = v216;
            v218 = object_getClass(a1);
            v219 = class_isMetaClass(v218);
            v220 = object_getClassName(a1);
            v284 = sel_getName("_validateGetVasDataCommand:");
            v221 = 45;
            if (v219)
            {
              v221 = 43;
            }

            v217(3, "%c[%{public}s %{public}s]:%i Invalid category filter length", v221, v220, v284, 314);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v175 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
          {
            v222 = object_getClass(a1);
            if (class_isMetaClass(v222))
            {
              v223 = 43;
            }

            else
            {
              v223 = 45;
            }

            v224 = object_getClassName(a1);
            v225 = sel_getName("_validateGetVasDataCommand:");
            *buf = 67109890;
            v302 = v223;
            v303 = 2082;
            v304 = v224;
            v305 = 2082;
            v306 = v225;
            v307 = 1024;
            v308 = 314;
            v180 = "%c[%{public}s %{public}s]:%i Invalid category filter length";
            goto LABEL_181;
          }

LABEL_203:
          v149 = 26368;
          goto LABEL_204;
        }

        if ([v12 tag] == 40742)
        {
          if ([v9 length] != 4)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v226 = NFLogGetLogger();
            if (v226)
            {
              v227 = v226;
              v228 = object_getClass(a1);
              v229 = class_isMetaClass(v228);
              v230 = object_getClassName(a1);
              v285 = sel_getName("_validateGetVasDataCommand:");
              v231 = 45;
              if (v229)
              {
                v231 = 43;
              }

              v227(3, "%c[%{public}s %{public}s]:%i Invalid category filter length", v231, v230, v285, 321);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v175 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
            {
              v232 = object_getClass(a1);
              if (class_isMetaClass(v232))
              {
                v233 = 43;
              }

              else
              {
                v233 = 45;
              }

              v234 = object_getClassName(a1);
              v235 = sel_getName("_validateGetVasDataCommand:");
              *buf = 67109890;
              v302 = v233;
              v303 = 2082;
              v304 = v234;
              v305 = 2082;
              v306 = v235;
              v307 = 1024;
              v308 = 321;
              v180 = "%c[%{public}s %{public}s]:%i Invalid category filter length";
              goto LABEL_181;
            }

            goto LABEL_203;
          }

          v296 = 0;
          [v9 getBytes:&v296 range:{objc_msgSend(v9, "length") - 1, 1}];
          v53 = *(a1 + 24);
          v54 = [NSNumber numberWithUnsignedInt:v296];
          [v53 setObject:v54 forKey:@"TerminalCaps"];

          v55 = v296;
          v56 = v296 & 3;
          if (v56 <= 1)
          {
            if (v56)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v96 = NFLogGetLogger();
              if (v96)
              {
                v97 = v96;
                v98 = object_getClass(a1);
                v99 = class_isMetaClass(v98);
                v100 = object_getClassName(a1);
                v274 = sel_getName("_validateGetVasDataCommand:");
                v101 = 45;
                if (v99)
                {
                  v101 = 43;
                }

                v97(6, "%c[%{public}s %{public}s]:%i Terminal Capabilities: VAS + PAYMENT", v101, v100, v274, 330);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v63 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                v102 = object_getClass(a1);
                if (class_isMetaClass(v102))
                {
                  v103 = 43;
                }

                else
                {
                  v103 = 45;
                }

                v104 = object_getClassName(a1);
                v105 = sel_getName("_validateGetVasDataCommand:");
                *buf = 67109890;
                v302 = v103;
                v303 = 2082;
                v304 = v104;
                v305 = 2082;
                v306 = v105;
                v307 = 1024;
                v308 = 330;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Terminal Capabilities: VAS + PAYMENT", buf, 0x22u);
              }

              v68 = 4;
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v57 = NFLogGetLogger();
              if (v57)
              {
                v58 = v57;
                v59 = object_getClass(a1);
                v60 = class_isMetaClass(v59);
                v61 = object_getClassName(a1);
                v271 = sel_getName("_validateGetVasDataCommand:");
                v62 = 45;
                if (v60)
                {
                  v62 = 43;
                }

                v58(6, "%c[%{public}s %{public}s]:%i Terminal Capabilities: VAS | PAYMENT", v62, v61, v271, 338);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v63 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                v64 = object_getClass(a1);
                if (class_isMetaClass(v64))
                {
                  v65 = 43;
                }

                else
                {
                  v65 = 45;
                }

                v66 = object_getClassName(a1);
                v67 = sel_getName("_validateGetVasDataCommand:");
                *buf = 67109890;
                v302 = v65;
                v303 = 2082;
                v304 = v66;
                v305 = 2082;
                v306 = v67;
                v307 = 1024;
                v308 = 338;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Terminal Capabilities: VAS | PAYMENT", buf, 0x22u);
              }

              v68 = 8;
            }

            goto LABEL_100;
          }

          if (v56 == 2)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v86 = NFLogGetLogger();
            if (v86)
            {
              v87 = v86;
              v88 = object_getClass(a1);
              v89 = class_isMetaClass(v88);
              v90 = object_getClassName(a1);
              v273 = sel_getName("_validateGetVasDataCommand:");
              v91 = 45;
              if (v89)
              {
                v91 = 43;
              }

              v87(6, "%c[%{public}s %{public}s]:%i Terminal Capabilites: VAS ONLY", v91, v90, v273, 334);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v63 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              v92 = object_getClass(a1);
              if (class_isMetaClass(v92))
              {
                v93 = 43;
              }

              else
              {
                v93 = 45;
              }

              v94 = object_getClassName(a1);
              v95 = sel_getName("_validateGetVasDataCommand:");
              *buf = 67109890;
              v302 = v93;
              v303 = 2082;
              v304 = v94;
              v305 = 2082;
              v306 = v95;
              v307 = 1024;
              v308 = 334;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Terminal Capabilites: VAS ONLY", buf, 0x22u);
            }

            v68 = 2;
LABEL_100:

            v106 = *(a1 + 24);
            v107 = [NSNumber numberWithShort:v68];
            [v106 setObject:v107 forKey:@"TerminalMode"];

            v55 = v296;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v108 = NFLogGetLogger();
          v109 = v108;
          if ((v55 & 0x80) != 0)
          {
            if (v108)
            {
              v120 = object_getClass(a1);
              v121 = class_isMetaClass(v120);
              v122 = object_getClassName(a1);
              v276 = sel_getName("_validateGetVasDataCommand:");
              v123 = 45;
              if (v121)
              {
                v123 = 43;
              }

              v109(6, "%c[%{public}s %{public}s]:%i More GET VAS DATA requests expected", v123, v122, v276, 343);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v114 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
            {
              v124 = object_getClass(a1);
              if (class_isMetaClass(v124))
              {
                v125 = 43;
              }

              else
              {
                v125 = 45;
              }

              v126 = object_getClassName(a1);
              v127 = sel_getName("_validateGetVasDataCommand:");
              *buf = 67109890;
              v302 = v125;
              v303 = 2082;
              v304 = v126;
              v305 = 2082;
              v306 = v127;
              v307 = 1024;
              v308 = 343;
              _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i More GET VAS DATA requests expected", buf, 0x22u);
            }

            v119 = &__kCFBooleanFalse;
          }

          else
          {
            if (v108)
            {
              v110 = object_getClass(a1);
              v111 = class_isMetaClass(v110);
              v112 = object_getClassName(a1);
              v275 = sel_getName("_validateGetVasDataCommand:");
              v113 = 45;
              if (v111)
              {
                v113 = 43;
              }

              v109(6, "%c[%{public}s %{public}s]:%i Last GET VAS DATA request", v113, v112, v275, 347);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v114 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
            {
              v115 = object_getClass(a1);
              if (class_isMetaClass(v115))
              {
                v116 = 43;
              }

              else
              {
                v116 = 45;
              }

              v117 = object_getClassName(a1);
              v118 = sel_getName("_validateGetVasDataCommand:");
              *buf = 67109890;
              v302 = v116;
              v303 = 2082;
              v304 = v117;
              v305 = 2082;
              v306 = v118;
              v307 = 1024;
              v308 = 347;
              _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Last GET VAS DATA request", buf, 0x22u);
            }

            v119 = &__kCFBooleanTrue;
          }

          [*(a1 + 24) setObject:v119 forKey:@"LastRequest"];
          BYTE4(v290) = 1;
          continue;
        }

        if ([v12 tag] != 40745)
        {
          continue;
        }

        if ([v9 length] >= 0x41)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v246 = NFLogGetLogger();
          if (v246)
          {
            v247 = v246;
            v248 = object_getClass(a1);
            v249 = class_isMetaClass(v248);
            v250 = object_getClassName(a1);
            v287 = sel_getName("_validateGetVasDataCommand:");
            v251 = 45;
            if (v249)
            {
              v251 = 43;
            }

            v247(3, "%c[%{public}s %{public}s]:%i Invalid merchant url length", v251, v250, v287, 354);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v175 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
          {
            v252 = object_getClass(a1);
            if (class_isMetaClass(v252))
            {
              v253 = 43;
            }

            else
            {
              v253 = 45;
            }

            v254 = object_getClassName(a1);
            v255 = sel_getName("_validateGetVasDataCommand:");
            *buf = 67109890;
            v302 = v253;
            v303 = 2082;
            v304 = v254;
            v305 = 2082;
            v306 = v255;
            v307 = 1024;
            v308 = 354;
            v180 = "%c[%{public}s %{public}s]:%i Invalid merchant url length";
LABEL_181:
            v181 = v175;
            v182 = 34;
LABEL_202:
            _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_ERROR, v180, buf, v182);
          }

          goto LABEL_203;
        }

        v83 = [v12 valueAsString];
        v84 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
        v85 = [v83 stringByTrimmingCharactersInSet:v84];

        [*(a1 + 24) setObject:v85 forKey:@"SignupUrl"];
        LOBYTE(v290) = 1;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v297 objects:v312 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

  if ((v294 & v292 & 1) == 0)
  {
    goto LABEL_161;
  }

  v128 = v291;
  if ([v3 p2] != 1)
  {
    if (([v3 p2] != 0) | v290 & 1)
    {
      goto LABEL_251;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v256 = NFLogGetLogger();
    if (v256)
    {
      v257 = v256;
      v258 = object_getClass(a1);
      v259 = class_isMetaClass(v258);
      v260 = object_getClassName(a1);
      v288 = sel_getName("_validateGetVasDataCommand:");
      v261 = 45;
      if (v259)
      {
        v261 = 43;
      }

      v257(3, "%c[%{public}s %{public}s]:%i Missing URL", v261, v260, v288, 378);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v6 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_171;
    }

    v262 = object_getClass(a1);
    if (class_isMetaClass(v262))
    {
      v263 = 43;
    }

    else
    {
      v263 = 45;
    }

    v264 = object_getClassName(a1);
    v265 = sel_getName("_validateGetVasDataCommand:");
    *buf = 67109890;
    v302 = v263;
    v303 = 2082;
    v304 = v264;
    v305 = 2082;
    v306 = v265;
    v307 = 1024;
    v308 = 378;
    v139 = "%c[%{public}s %{public}s]:%i Missing URL";
LABEL_170:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v139, buf, 0x22u);
    goto LABEL_171;
  }

  if ((v290 & 0x100000000) != 0)
  {
LABEL_251:
    v149 = 36864;
    goto LABEL_159;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v129 = NFLogGetLogger();
  if (v129)
  {
    v130 = v129;
    v131 = object_getClass(a1);
    v132 = class_isMetaClass(v131);
    v133 = object_getClassName(a1);
    v277 = sel_getName("_validateGetVasDataCommand:");
    v134 = 45;
    if (v132)
    {
      v134 = 43;
    }

    v130(3, "%c[%{public}s %{public}s]:%i Missing terminal capabilities", v134, v133, v277, 372);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v135 = object_getClass(a1);
    if (class_isMetaClass(v135))
    {
      v136 = 43;
    }

    else
    {
      v136 = 45;
    }

    v137 = object_getClassName(a1);
    v138 = sel_getName("_validateGetVasDataCommand:");
    *buf = 67109890;
    v302 = v136;
    v303 = 2082;
    v304 = v137;
    v305 = 2082;
    v306 = v138;
    v307 = 1024;
    v308 = 372;
    v139 = "%c[%{public}s %{public}s]:%i Missing terminal capabilities";
    goto LABEL_170;
  }

LABEL_171:
  v149 = 27264;
LABEL_158:

LABEL_159:
  return v149;
}

BOOL sub_10006640C(_BOOL8 a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    a1 = [v3 isSelectCommand] && sub_10006375C(a1, v4) == 36864;
  }

  return a1;
}

void sub_100067904(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFCHardwareManagerInterface];
  v2 = qword_10035D958;
  qword_10035D958 = v1;

  v3 = qword_10035D958;
  v4 = +[NFReaderSessionCallbacks interface];
  [v3 setInterface:v4 forSelector:"queueReaderSession:sessionConfig:completion:" argumentIndex:0 ofReply:0];

  v5 = qword_10035D958;
  v6 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v5 setClasses:v6 forSelector:"queueReaderSession:sessionConfig:completion:" argumentIndex:1 ofReply:0];

  v7 = qword_10035D958;
  v8 = +[NFReaderSessionInterface interface];
  [v7 setInterface:v8 forSelector:"queueReaderSession:sessionConfig:completion:" argumentIndex:0 ofReply:1];

  v9 = qword_10035D958;
  v10 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v9 setClasses:v10 forSelector:"queueCardSession:sessionConfig:completion:" argumentIndex:1 ofReply:0];

  v11 = qword_10035D958;
  v12 = sub_1002607A4();
  [v11 setInterface:v12 forSelector:"queueCardSession:sessionConfig:completion:" argumentIndex:0 ofReply:0];

  v13 = qword_10035D958;
  v14 = sub_10026076C();
  [v13 setInterface:v14 forSelector:"queueCardSession:sessionConfig:completion:" argumentIndex:0 ofReply:1];

  v15 = qword_10035D958;
  v16 = +[NFCFieldDetectSessionCallbacksInterface interface];
  [v15 setInterface:v16 forSelector:"queueCardFieldDetectSession:completion:" argumentIndex:0 ofReply:0];

  v17 = qword_10035D958;
  v18 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFCFieldDetectSessionInterface];
  [v17 setInterface:v18 forSelector:"queueCardFieldDetectSession:completion:" argumentIndex:0 ofReply:1];
}

void sub_100067BB4(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFCHardwareManagerCallbacks];
  v2 = qword_10035D968;
  qword_10035D968 = v1;

  _objc_release_x1(v1, v2);
}

id *sub_10006841C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = NFThermalMonitor;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      *(v5 + 6) = -1;
      v5[1] = 0;
      objc_storeStrong(v5 + 2, a2);
    }
  }

  return a1;
}

void sub_1000684A0(int *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v4 = a1 + 6;
    if (a1[6] == -1)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100068720;
      handler[3] = &unk_100316C78;
      objc_copyWeak(&v21, &location);
      v5 = notify_register_dispatch(kOSThermalNotificationPressureLevelName, a1 + 6, v3, handler);
      if (v5)
      {
        v6 = v5;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v8 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("registerOSThermalStateChange:");
          v11 = 45;
          if (isMetaClass)
          {
            v11 = 43;
          }

          v8(3, "%c[%{public}s %{public}s]:%i Failed to register thermal pressure notification : %d", v11, ClassName, Name, 82, v6);
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
          v16 = sel_getName("registerOSThermalStateChange:");
          *buf = 67110146;
          *&buf[4] = v14;
          v24 = 2082;
          v25 = v15;
          v26 = 2082;
          v27 = v16;
          v28 = 1024;
          v29 = 82;
          v30 = 1024;
          v31 = v6;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to register thermal pressure notification : %d", buf, 0x28u);
        }
      }

      else
      {
        v17 = *v4;
        if (*v4 != -1)
        {
          *buf = 0;
          if (!notify_get_state(v17, buf))
          {
            sub_1000687D0(a1, *buf);
          }
        }
      }

      objc_destroyWeak(&v21);
    }

    objc_destroyWeak(&location);
  }
}

void sub_100068720(uint64_t a1, int a2)
{
  state64 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (!notify_get_state(a2, &state64))
    {
      v4 = _os_activity_create(&_mh_execute_header, "thermalStateChange:Nominal", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v4, &state);
      os_activity_scope_leave(&state);

      sub_1000687D0(WeakRetained, state64);
      v5 = WeakRetained[4];
      if (v5)
      {
        (*(v5 + 16))(v5, WeakRetained[1]);
      }
    }
  }
}

void sub_1000687D0(void *a1, uint64_t a2)
{
  v3 = a1;
  objc_sync_enter(v3);
  if (a2 <= 29)
  {
    if (a2)
    {
      if (a2 == 10)
      {
        a2 = 1;
      }

      else
      {
        if (a2 != 20)
        {
          goto LABEL_13;
        }

        a2 = 2;
      }
    }

    goto LABEL_12;
  }

  if (a2 == 30)
  {
    a2 = 3;
    goto LABEL_12;
  }

  if (a2 == 40 || a2 == 50)
  {
    a2 = 4;
LABEL_12:
    v3[1] = a2;
  }

LABEL_13:
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(v3);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v3);
    Name = sel_getName("storeThermalLevel:");
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i New state : %lx", v10, ClassName, Name, 176, v3[1]);
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

    v14 = object_getClassName(v3);
    v15 = sel_getName("storeThermalLevel:");
    v16 = v3[1];
    *buf = 67110146;
    v18 = v13;
    v19 = 2082;
    v20 = v14;
    v21 = 2082;
    v22 = v15;
    v23 = 1024;
    v24 = 176;
    v25 = 2048;
    v26 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i New state : %lx", buf, 0x2Cu);
  }

  objc_sync_exit(v3);
}

void sub_1000689D8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = objc_retainBlock(v8);
    v7 = *(a1 + 32);
    *(a1 + 32) = v6;

    if (NFThermalMonitorProvidedBySMC())
    {
      sub_1001AC360(*(a1 + 16), a1, v5);
    }

    else
    {
      sub_1000684A0(a1, v5);
    }
  }
}

void sub_100068A6C(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    *(a1 + 32) = 0;

    if (NFThermalMonitorProvidedBySMC())
    {
      v3 = *(a1 + 16);

      sub_1001AC360(v3, 0, 0);
    }

    else
    {
      v4 = *(a1 + 24);
      if ((v4 & 0x80000000) == 0)
      {
        notify_cancel(v4);
        *(a1 + 24) = -1;
      }
    }
  }
}

uint64_t sub_100068AE0(uint64_t result, id a2)
{
  if (result)
  {
    v2 = result;
    v3 = objc_retainBlock(a2);
    v4 = *(v2 + 40);
    *(v2 + 40) = v3;

    return _objc_release_x1(v3, v4);
  }

  return result;
}

void sub_10006B064(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 NF_asHexString];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006B178;
  v10[3] = &unk_100316CA0;
  v11 = objc_opt_new();
  v9 = v11;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];

  [*(a1 + 32) setObject:v9 forKey:v8];
}

void sub_10006B178(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 isEqualToString:@"tagHandle"])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = *(a1 + 32);
    if (isKindOfClass)
    {
      [v7 setObject:@"NULL" forKeyedSubscript:v9];
      if (![(__CFString *)v5 pointerValue])
      {
        goto LABEL_7;
      }

      v7 = *(a1 + 32);
      v8 = @"NON-NULL";
    }

    else
    {
      v8 = v5;
    }

    [v7 setObject:v8 forKeyedSubscript:v9];
  }

LABEL_7:
}

void sub_100071700(void *a1, unsigned int a2, unsigned __int8 *a3, int a4)
{
  if ((a2 & 0x10) == 0)
  {
    v8 = a2;
    word_10035D978 = 0;
    v9 = objc_opt_new();
    v10 = v9;
    if ((v8 & 8) != 0 && a3 && a4 >= 1)
    {
      if (*a3 != 106)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i Houston we have a problem! Payload corrupted without RF errors being set. vData[0] = 0x%X", "_NFDriverWrapperProccessRFTechDetectionInfo", 1687, *a3);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v13 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v26 = *a3;
          *buf = 136446722;
          v30 = "_NFDriverWrapperProccessRFTechDetectionInfo";
          v31 = 1024;
          v32 = 1687;
          v33 = 1024;
          v34 = v26;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i Houston we have a problem! Payload corrupted without RF errors being set. vData[0] = 0x%X", buf, 0x18u);
        }

        v15 = 0;
        goto LABEL_35;
      }

      [v9 appendBytes:a3 length:a4];
    }

    v27[0] = @"FieldTechnology";
    v11 = [NSNumber numberWithUnsignedInt:v8 & 0xF];
    v28[0] = v11;
    v27[1] = @"SystemCode";
    v12 = [NSNumber numberWithUnsignedShort:(v8 << 29 >> 31) & HIWORD(a2)];
    v27[2] = @"ECPData";
    v28[1] = v12;
    v28[2] = v10;
    v13 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];

    v14 = [NFFieldNotification notificationWithDictionary:v13];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v23(3, "%s:%i Error creating field notification", "_NFDriverWrapperProccessRFTechDetectionInfo", 1714);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v30 = "_NFDriverWrapperProccessRFTechDetectionInfo";
        v31 = 1024;
        v32 = 1714;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}s:%i Error creating field notification", buf, 0x12u);
      }
    }

LABEL_35:
    if (v15)
    {
      [a1 driverDidReceiveTechnologyEvent:v15];
    }

    return;
  }

  ++word_10035D978;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFLogGetLogger();
  if (v17)
  {
    v17(3, "%s:%i ECP payload corrupted.", "_NFDriverWrapperProccessRFTechDetectionInfo", 1659);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v30 = "_NFDriverWrapperProccessRFTechDetectionInfo";
    v31 = 1024;
    v32 = 1659;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i ECP payload corrupted.", buf, 0x12u);
  }

  v19 = word_10035D978;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFLogGetLogger();
  if (v19 > 4)
  {
    if (v20)
    {
      v20(3, "%s:%i Too many back to back RF Error found. Probably bad Reader. Will no longer attempt to restart discovery", "_NFDriverWrapperProccessRFTechDetectionInfo", 1665);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v30 = "_NFDriverWrapperProccessRFTechDetectionInfo";
      v31 = 1024;
      v32 = 1665;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i Too many back to back RF Error found. Probably bad Reader. Will no longer attempt to restart discovery", buf, 0x12u);
    }
  }

  else
  {
    if (v20)
    {
      v20(3, "%s:%i RF Error found. Restart Discovery", "_NFDriverWrapperProccessRFTechDetectionInfo", 1661);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v30 = "_NFDriverWrapperProccessRFTechDetectionInfo";
      v31 = 1024;
      v32 = 1661;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i RF Error found. Restart Discovery", buf, 0x12u);
    }

    [a1 driverRestartDiscovery];
  }
}

id sub_100071BFC(void *a1, uint64_t a2)
{
  v4 = _os_activity_create(&_mh_execute_header, "SPMI Error occurred", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v4, &v6);
  os_activity_scope_leave(&v6);

  return [a1 driverSPMIErrorOccurred:a2];
}

_UNKNOWN **sub_100074B0C(uint64_t a1)
{
  v2 = [*(a1 + 32) requestedApplets];
  v3 = [v2 objectForKey:*(a1 + 40)];
  if (v3)
  {
    v4 = &off_1003305B8;
  }

  else
  {
    v4 = &off_1003305D0;
  }

  v5 = v4;

  return v4;
}

uint64_t sub_100075244(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[24] == 2)
    {
      v8 = WeakRetained;
      WeakRetained = [WeakRetained firstFieldNotification];
      v2 = v8;
      if ((WeakRetained & 1) == 0)
      {
        v3 = +[_NFHardwareManager sharedHardwareManager];
        v4 = [v3 driverWrapper];
        if (v4)
        {
          v5 = v4;
          [*(v4 + 72) lock];
          v6 = *(v5 + 170);
          [*(v5 + 72) unlock];

          v2 = v8;
          if (v6)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v2 = v8;
        }

        WeakRetained = [v2 handleFieldChanged:0];
        v2 = v8;
      }
    }
  }

LABEL_7:

  return _objc_release_x1(WeakRetained, v2);
}

void sub_1000765D4(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 80));
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %@", v9, ClassName, Name, 353, v8);
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
    v14 = sel_getName(*(a1 + 80));
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    *v262 = v12;
    *&v262[4] = 2082;
    *&v262[6] = v13;
    v263 = 2082;
    v264 = v14;
    v265 = 1024;
    v266 = 353;
    v267 = 2112;
    v268 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
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
      v21 = sel_getName(*(a1 + 80));
      v22 = [*(a1 + 32) sessionUID];
      v23 = 45;
      if (v19)
      {
        v23 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 359, v22);
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
      v28 = sel_getName(*(a1 + 80));
      v29 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      *v262 = v26;
      *&v262[4] = 2082;
      *&v262[6] = v27;
      v263 = 2082;
      v264 = v28;
      v265 = 1024;
      v266 = 359;
      v267 = 2114;
      v268 = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v30 = *(a1 + 72);
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v286[0] = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v287[0] = v33;
    v287[1] = &off_1003306D8;
    v286[1] = @"Line";
    v286[2] = @"Method";
    v34 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 80))];
    v287[2] = v34;
    v286[3] = NSDebugDescriptionErrorKey;
    v35 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 80)), 356];
    v287[3] = v35;
    v36 = [NSDictionary dictionaryWithObjects:v287 forKeys:v286 count:4];
    v37 = [v31 initWithDomain:v32 code:54 userInfo:v36];
    (*(v30 + 16))(v30, v37);

    v38 = NFSharedSignpostLog();
    if (os_signpost_enabled(v38))
    {
      *buf = 0;
      v39 = "Session not active";
LABEL_24:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession requestApplets:externalAuth:mode:", v39, buf, 2u);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v40 = *(a1 + 88);
  if (v40 == 1)
  {
    if (![*(a1 + 48) count] && !objc_msgSend(*(a1 + 56), "count"))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v127 = NFLogGetLogger();
      if (v127)
      {
        v128 = v127;
        v129 = object_getClass(*(a1 + 32));
        v130 = class_isMetaClass(v129);
        v131 = object_getClassName(*(a1 + 32));
        v237 = sel_getName(*(a1 + 80));
        v132 = 45;
        if (v130)
        {
          v132 = 43;
        }

        v128(3, "%c[%{public}s %{public}s]:%i Missing applet on wired", v132, v131, v237, 369);
      }

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
        v137 = sel_getName(*(a1 + 80));
        *buf = 67109890;
        *v262 = v135;
        *&v262[4] = 2082;
        *&v262[6] = v136;
        v263 = 2082;
        v264 = v137;
        v265 = 1024;
        v266 = 369;
        _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing applet on wired", buf, 0x22u);
      }

      v138 = *(a1 + 72);
      v139 = [NSError alloc];
      v140 = [NSString stringWithUTF8String:"nfcd"];
      v282[0] = NSLocalizedDescriptionKey;
      v141 = [NSString stringWithUTF8String:"Missing Parameter"];
      v283[0] = v141;
      v283[1] = &off_100330708;
      v282[1] = @"Line";
      v282[2] = @"Method";
      v142 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 80))];
      v283[2] = v142;
      v282[3] = NSDebugDescriptionErrorKey;
      v143 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 80)), 370];
      v283[3] = v143;
      v144 = [NSDictionary dictionaryWithObjects:v283 forKeys:v282 count:4];
      v145 = [v139 initWithDomain:v140 code:9 userInfo:v144];
      (*(v138 + 16))(v138, v145);

      v38 = NFSharedSignpostLog();
      if (os_signpost_enabled(v38))
      {
        *buf = 0;
        v39 = "Missing applet on wired";
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    goto LABEL_33;
  }

  if (!v40)
  {
    if (*(a1 + 40))
    {
      v41 = *(a1 + 72);
      v42 = [NSError alloc];
      v43 = [NSString stringWithUTF8String:"nfcd"];
      v284[0] = NSLocalizedDescriptionKey;
      v44 = [NSString stringWithUTF8String:"Invalid State"];
      v285[0] = v44;
      v285[1] = &off_1003306F0;
      v284[1] = @"Line";
      v284[2] = @"Method";
      v45 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 80))];
      v285[2] = v45;
      v284[3] = NSDebugDescriptionErrorKey;
      v46 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 80)), 362];
      v285[3] = v46;
      v47 = [NSDictionary dictionaryWithObjects:v285 forKeys:v284 count:4];
      v48 = [v42 initWithDomain:v43 code:12 userInfo:v47];
      (*(v41 + 16))(v41, v48);

      v38 = NFSharedSignpostLog();
      if (!os_signpost_enabled(v38))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v39 = "InvalidState";
      goto LABEL_24;
    }

LABEL_33:
    v40 = *(a1 + 88);
  }

  if (v40 == 2)
  {
    v49 = *(a1 + 32);
    if (!v49 || (v50 = *(v49 + 184)) == 0 || (*(v50 + 173) & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v62 = NFLogGetLogger();
      if (v62)
      {
        v63 = v62;
        v64 = object_getClass(*(a1 + 32));
        v65 = class_isMetaClass(v64);
        v66 = object_getClassName(*(a1 + 32));
        v234 = sel_getName(*(a1 + 80));
        v67 = 45;
        if (v65)
        {
          v67 = 43;
        }

        v63(3, "%c[%{public}s %{public}s]:%i Non-supported hardware", v67, v66, v234, 377);
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
        v72 = sel_getName(*(a1 + 80));
        *buf = 67109890;
        *v262 = v70;
        *&v262[4] = 2082;
        *&v262[6] = v71;
        v263 = 2082;
        v264 = v72;
        v265 = 1024;
        v266 = 377;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Non-supported hardware", buf, 0x22u);
      }

      v73 = *(a1 + 72);
      v74 = [NSError alloc];
      v38 = [NSString stringWithUTF8String:"nfcd"];
      v280[0] = NSLocalizedDescriptionKey;
      v75 = [NSString stringWithUTF8String:"Feature Not Supported"];
      v281[0] = v75;
      v281[1] = &off_100330720;
      v280[1] = @"Line";
      v280[2] = @"Method";
      v76 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 80))];
      v281[2] = v76;
      v280[3] = NSDebugDescriptionErrorKey;
      v77 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 80)), 378];
      v281[3] = v77;
      v78 = [NSDictionary dictionaryWithObjects:v281 forKeys:v280 count:4];
      v79 = [v74 initWithDomain:v38 code:14 userInfo:v78];
      (*(v73 + 16))(v73, v79);

      goto LABEL_25;
    }

    if ([*(a1 + 48) count] != 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v99 = NFLogGetLogger();
      if (v99)
      {
        v100 = v99;
        v101 = object_getClass(*(a1 + 32));
        v102 = class_isMetaClass(v101);
        v103 = object_getClassName(*(a1 + 32));
        v236 = sel_getName(*(a1 + 80));
        v104 = 45;
        if (v102)
        {
          v104 = 43;
        }

        v100(3, "%c[%{public}s %{public}s]:%i Single applet support only on contactless", v104, v103, v236, 383);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v105 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        v106 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v106))
        {
          v107 = 43;
        }

        else
        {
          v107 = 45;
        }

        v108 = object_getClassName(*(a1 + 32));
        v109 = sel_getName(*(a1 + 80));
        *buf = 67109890;
        *v262 = v107;
        *&v262[4] = 2082;
        *&v262[6] = v108;
        v263 = 2082;
        v264 = v109;
        v265 = 1024;
        v266 = 383;
        _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Single applet support only on contactless", buf, 0x22u);
      }

      v110 = *(a1 + 72);
      v111 = [NSError alloc];
      v112 = [NSString stringWithUTF8String:"nfcd"];
      v278[0] = NSLocalizedDescriptionKey;
      v113 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v279[0] = v113;
      v279[1] = &off_100330738;
      v278[1] = @"Line";
      v278[2] = @"Method";
      v114 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 80))];
      v279[2] = v114;
      v278[3] = NSDebugDescriptionErrorKey;
      v115 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 80)), 384];
      v279[3] = v115;
      v116 = [NSDictionary dictionaryWithObjects:v279 forKeys:v278 count:4];
      v117 = [v111 initWithDomain:v112 code:10 userInfo:v116];
      (*(v110 + 16))(v110, v117);

      v38 = NFSharedSignpostLog();
      if (os_signpost_enabled(v38))
      {
        *buf = 0;
        v39 = ">1 applet on contactless";
        goto LABEL_24;
      }

      goto LABEL_25;
    }
  }

  v51 = *(a1 + 40);
  if (!v51 || [v51 length])
  {
    v38 = objc_opt_new();
    v52 = *(a1 + 88);
    if (v52 == 1)
    {
      if ([*(a1 + 56) count])
      {
        [v38 addObjectsFromArray:*(a1 + 56)];
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v146 = NFLogGetLogger();
        if (v146)
        {
          v147 = v146;
          v148 = object_getClass(*(a1 + 32));
          v149 = class_isMetaClass(v148);
          v150 = object_getClassName(*(a1 + 32));
          v238 = sel_getName(*(a1 + 80));
          v151 = 45;
          if (v149)
          {
            v151 = 43;
          }

          v147(6, "%c[%{public}s %{public}s]:%i Use provided applet's AIDs for allowed list", v151, v150, v238, 414);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v152 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
        {
          v153 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v153))
          {
            v154 = 43;
          }

          else
          {
            v154 = 45;
          }

          v155 = object_getClassName(*(a1 + 32));
          v156 = sel_getName(*(a1 + 80));
          *buf = 67109890;
          *v262 = v154;
          *&v262[4] = 2082;
          *&v262[6] = v155;
          v263 = 2082;
          v264 = v156;
          v265 = 1024;
          v266 = 414;
          _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Use provided applet's AIDs for allowed list", buf, 0x22u);
        }

        v255 = 0u;
        v256 = 0u;
        v253 = 0u;
        v254 = 0u;
        v157 = *(a1 + 48);
        v158 = [v157 countByEnumeratingWithState:&v253 objects:v272 count:16];
        if (v158)
        {
          v159 = v158;
          v160 = *v254;
          do
          {
            for (i = 0; i != v159; i = i + 1)
            {
              if (*v254 != v160)
              {
                objc_enumerationMutation(v157);
              }

              v162 = [*(*(&v253 + 1) + 8 * i) identifierAsData];
              [v38 addObject:v162];
            }

            v159 = [v157 countByEnumeratingWithState:&v253 objects:v272 count:16];
          }

          while (v159);
        }
      }

      v163 = objc_opt_new();
      v164 = [*(a1 + 32) secureElementWrapper];
      v243 = v38;
      v165 = [v38 allObjects];
      v166 = sub_100257058(v164, v165, v163);

      v251 = 0u;
      v252 = 0u;
      v249 = 0u;
      v250 = 0u;
      v53 = v163;
      v167 = [v53 countByEnumeratingWithState:&v249 objects:v271 count:16];
      if (v167)
      {
        v168 = v167;
        v245 = *v250;
        v244 = v53;
        do
        {
          for (j = 0; j != v168; j = j + 1)
          {
            if (*v250 != v245)
            {
              objc_enumerationMutation(v53);
            }

            v170 = *(*(&v249 + 1) + 8 * j);
            v171 = [v170 objectForKeyedSubscript:@"appletAid"];
            if (v171 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v172 = [NSData NF_dataWithHexString:v171];
              if (([v243 containsObject:v172]& 1) != 0)
              {
                v173 = [v170 objectForKeyedSubscript:@"associatedSSD"];
                if (v173 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v174 = [NSData NF_dataWithHexString:v173];
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v175 = NFLogGetLogger();
                  if (v175)
                  {
                    v176 = v175;
                    v177 = object_getClass(*(a1 + 32));
                    v178 = class_isMetaClass(v177);
                    v179 = object_getClassName(*(a1 + 32));
                    v239 = sel_getName(*(a1 + 80));
                    v180 = 45;
                    if (v178)
                    {
                      v180 = 43;
                    }

                    v232 = v179;
                    v53 = v244;
                    v176(6, "%c[%{public}s %{public}s]:%i Found associated domain %{public}@ for %{public}@", v180, v232, v239, 444, v174, v171);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v181 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
                  {
                    v182 = object_getClass(*(a1 + 32));
                    if (class_isMetaClass(v182))
                    {
                      v183 = 43;
                    }

                    else
                    {
                      v183 = 45;
                    }

                    v184 = object_getClassName(*(a1 + 32));
                    v185 = sel_getName(*(a1 + 80));
                    *buf = 67110402;
                    *v262 = v183;
                    *&v262[4] = 2082;
                    *&v262[6] = v184;
                    v53 = v244;
                    v263 = 2082;
                    v264 = v185;
                    v265 = 1024;
                    v266 = 444;
                    v267 = 2114;
                    v268 = v174;
                    v269 = 2114;
                    v270 = v171;
                    _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found associated domain %{public}@ for %{public}@", buf, 0x36u);
                  }

                  [v243 addObject:v174];
                }

                else
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v205 = NFLogGetLogger();
                  if (v205)
                  {
                    v206 = v205;
                    v207 = object_getClass(*(a1 + 32));
                    v208 = class_isMetaClass(v207);
                    v209 = object_getClassName(*(a1 + 32));
                    v242 = sel_getName(*(a1 + 80));
                    v210 = 45;
                    if (v208)
                    {
                      v210 = 43;
                    }

                    v206(6, "%c[%{public}s %{public}s]:%i Missing ssdID", v210, v209, v242, 438);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v174 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
                  {
                    v211 = object_getClass(*(a1 + 32));
                    if (class_isMetaClass(v211))
                    {
                      v212 = 43;
                    }

                    else
                    {
                      v212 = 45;
                    }

                    v213 = object_getClassName(*(a1 + 32));
                    v214 = sel_getName(*(a1 + 80));
                    *buf = 67109890;
                    *v262 = v212;
                    v53 = v244;
                    *&v262[4] = 2082;
                    *&v262[6] = v213;
                    v263 = 2082;
                    v264 = v214;
                    v265 = 1024;
                    v266 = 438;
                    _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Missing ssdID", buf, 0x22u);
                  }
                }
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v196 = NFLogGetLogger();
                if (v196)
                {
                  v197 = v196;
                  v198 = object_getClass(*(a1 + 32));
                  v199 = class_isMetaClass(v198);
                  v233 = object_getClassName(*(a1 + 32));
                  v241 = sel_getName(*(a1 + 80));
                  v200 = 45;
                  if (v199)
                  {
                    v200 = 43;
                  }

                  v197(4, "%c[%{public}s %{public}s]:%i %{public}@ not found", v200, v233, v241, 432, v172);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v173 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
                {
                  v201 = object_getClass(*(a1 + 32));
                  if (class_isMetaClass(v201))
                  {
                    v202 = 43;
                  }

                  else
                  {
                    v202 = 45;
                  }

                  v203 = object_getClassName(*(a1 + 32));
                  v204 = sel_getName(*(a1 + 80));
                  *buf = 67110146;
                  *v262 = v202;
                  v53 = v244;
                  *&v262[4] = 2082;
                  *&v262[6] = v203;
                  v263 = 2082;
                  v264 = v204;
                  v265 = 1024;
                  v266 = 432;
                  v267 = 2114;
                  v268 = v172;
                  _os_log_impl(&_mh_execute_header, v173, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ not found", buf, 0x2Cu);
                }
              }
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v186 = NFLogGetLogger();
              if (v186)
              {
                v187 = v186;
                v188 = object_getClass(*(a1 + 32));
                v189 = class_isMetaClass(v188);
                v190 = object_getClassName(*(a1 + 32));
                v240 = sel_getName(*(a1 + 80));
                v191 = 45;
                if (v189)
                {
                  v191 = 43;
                }

                v187(6, "%c[%{public}s %{public}s]:%i missing appID", v191, v190, v240, 427);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v172 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
              {
                v192 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v192))
                {
                  v193 = 43;
                }

                else
                {
                  v193 = 45;
                }

                v194 = object_getClassName(*(a1 + 32));
                v195 = sel_getName(*(a1 + 80));
                *buf = 67109890;
                *v262 = v193;
                v53 = v244;
                *&v262[4] = 2082;
                *&v262[6] = v194;
                v263 = 2082;
                v264 = v195;
                v265 = 1024;
                v266 = 427;
                _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i missing appID", buf, 0x22u);
              }
            }
          }

          v168 = [v53 countByEnumeratingWithState:&v249 objects:v271 count:16];
        }

        while (v168);
      }

      v38 = v243;
    }

    else
    {
      if (v52 != 2)
      {
LABEL_170:
        v215 = *(a1 + 32);
        v246[0] = _NSConcreteStackBlock;
        v246[1] = 3221225472;
        v246[2] = sub_1000784AC;
        v246[3] = &unk_100315FA8;
        v216 = *(a1 + 48);
        v217 = *(a1 + 32);
        v247 = v216;
        v248 = v217;
        os_unfair_lock_lock(v215 + 45);
        sub_1000784AC(v246);
        os_unfair_lock_unlock(v215 + 45);
        v218 = *(a1 + 32);
        if (v218 && v218[24] == 2)
        {
          if (*(a1 + 88) == 2)
          {
            goto LABEL_181;
          }

          v219 = sub_1001AE20C();
          sub_1001AEDB0(v219, v220);
        }

        v221 = *(a1 + 88);
        if (v221 <= 1)
        {
          if (!v221)
          {
            v224 = *(a1 + 32);
            v225 = 0;
            v226 = 0;
            v227 = 0;
            goto LABEL_185;
          }

          if (v221 != 1)
          {
            goto LABEL_183;
          }

LABEL_182:
          v224 = *(a1 + 32);
          v225 = *(a1 + 40);
          v226 = *(a1 + 48);
          v227 = *(a1 + 64);
LABEL_185:
          v223 = [v224 _startWiredModeWithExternalAuth:v225 applets:v226 selectOnStart:v227];
LABEL_186:
          [*(a1 + 32) setAppletSelectedInWiredMode:0];
          if (v223)
          {
            [*(a1 + 32) setMode:0];
            v228 = 0;
            v229 = 0;
            goto LABEL_192;
          }

LABEL_188:
          [*(a1 + 32) setMode:*(a1 + 88)];
          [*(a1 + 32) _setupFirstFieldNotificationTimer:*(a1 + 88)];
          v223 = 0;
          if ([v38 count])
          {
            v229 = v38;
          }

          else
          {
            v229 = 0;
          }

          v228 = 1;
LABEL_192:
          [*(a1 + 32) setAllowedAIDsListInWiredMode:v229];
          (*(*(a1 + 72) + 16))();
          v230 = NFSharedSignpostLog();
          if (os_signpost_enabled(v230))
          {
            if (v228)
            {
              v231 = @"Success";
            }

            else
            {
              v231 = [v223 description];
            }

            *buf = 138412290;
            *v262 = v231;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v230, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession requestApplets:externalAuth:mode:", "%@", buf, 0xCu);
            if ((v228 & 1) == 0)
            {
            }
          }

          v56 = v247;
LABEL_199:

          goto LABEL_25;
        }

        if (v221 == 3)
        {
          goto LABEL_182;
        }

        if (v221 != 2)
        {
LABEL_183:
          [*(a1 + 32) setAppletSelectedInWiredMode:0];
          goto LABEL_188;
        }

        v218 = *(a1 + 32);
LABEL_181:
        v222 = [*(a1 + 48) firstObject];
        v223 = [v218 _startCardEmulationWithApplet:v222 externalAuth:*(a1 + 40) ceType:*(a1 + 96)];

        goto LABEL_186;
      }

      v259 = 0u;
      v260 = 0u;
      v257 = 0u;
      v258 = 0u;
      v53 = *(a1 + 48);
      v54 = [v53 countByEnumeratingWithState:&v257 objects:v275 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = v53;
        v57 = *v258;
        while (2)
        {
          for (k = 0; k != v55; k = k + 1)
          {
            if (*v258 != v57)
            {
              objc_enumerationMutation(v56);
            }

            v59 = *(*(&v257 + 1) + 8 * k);
            v60 = [*(a1 + 32) secureElementWrapper];
            v61 = [v60 cachedAppletsUnfiltered];
            LOBYTE(v59) = [v61 containsObject:v59];

            if ((v59 & 1) == 0)
            {
              v118 = *(a1 + 72);
              v119 = [NSError alloc];
              v120 = [NSString stringWithUTF8String:"nfcd"];
              v273[0] = NSLocalizedDescriptionKey;
              v121 = [NSString stringWithUTF8String:"Not found"];
              v274[0] = v121;
              v274[1] = &off_100330768;
              v273[1] = @"Line";
              v273[2] = @"Method";
              v122 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 80))];
              v274[2] = v122;
              v273[3] = NSDebugDescriptionErrorKey;
              v123 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 80)), 403];
              v274[3] = v123;
              v124 = [NSDictionary dictionaryWithObjects:v274 forKeys:v273 count:4];
              v125 = [v119 initWithDomain:v120 code:65 userInfo:v124];
              (*(v118 + 16))(v118, v125);

              v126 = NFSharedSignpostLog();
              if (os_signpost_enabled(v126))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v126, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession requestApplets:externalAuth:mode:", "ResultNotFound", buf, 2u);
              }

              goto LABEL_199;
            }
          }

          v55 = [v56 countByEnumeratingWithState:&v257 objects:v275 count:16];
          if (v55)
          {
            continue;
          }

          break;
        }

        v53 = v56;
      }
    }

    goto LABEL_170;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v80 = NFLogGetLogger();
  if (v80)
  {
    v81 = v80;
    v82 = object_getClass(*(a1 + 32));
    v83 = class_isMetaClass(v82);
    v84 = object_getClassName(*(a1 + 32));
    v235 = sel_getName(*(a1 + 80));
    v85 = 45;
    if (v83)
    {
      v85 = 43;
    }

    v81(3, "%c[%{public}s %{public}s]:%i Invalid auth data", v85, v84, v235, 390);
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
    v90 = sel_getName(*(a1 + 80));
    *buf = 67109890;
    *v262 = v88;
    *&v262[4] = 2082;
    *&v262[6] = v89;
    v263 = 2082;
    v264 = v90;
    v265 = 1024;
    v266 = 390;
    _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid auth data", buf, 0x22u);
  }

  v91 = *(a1 + 72);
  v92 = [NSError alloc];
  v93 = [NSString stringWithUTF8String:"nfcd"];
  v276[0] = NSLocalizedDescriptionKey;
  v94 = [NSString stringWithUTF8String:"Invalid Parameter"];
  v277[0] = v94;
  v277[1] = &off_100330750;
  v276[1] = @"Line";
  v276[2] = @"Method";
  v95 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 80))];
  v277[2] = v95;
  v276[3] = NSDebugDescriptionErrorKey;
  v96 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 80)), 391];
  v277[3] = v96;
  v97 = [NSDictionary dictionaryWithObjects:v277 forKeys:v276 count:4];
  v98 = [v92 initWithDomain:v93 code:10 userInfo:v97];
  (*(v91 + 16))(v91, v98);

  v38 = NFSharedSignpostLog();
  if (os_signpost_enabled(v38))
  {
    *buf = 0;
    v39 = "Invalid auth data";
    goto LABEL_24;
  }

LABEL_25:
}

void sub_1000784AC(uint64_t a1)
{
  v2 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [v8 identifier];
        [v2 setObject:v8 forKey:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) setRequestedApplets:v2];
}

void sub_100078738(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    if (class_isMetaClass(Class))
    {
      v5 = 43;
    }

    else
    {
      v5 = 45;
    }

    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v8 = [*(a1 + 32) clientName];
    v9 = v8;
    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = *(v10 + 192);
    }

    v3(6, "%c[%{public}s %{public}s]:%i %@, mode=%lu", v5, ClassName, Name, 497, v8, v10);
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
    v16 = [*(a1 + 32) clientName];
    v17 = v16;
    v18 = *(a1 + 32);
    if (v18)
    {
      v18 = *(v18 + 192);
    }

    *buf = 67110402;
    *v105 = v13;
    *&v105[4] = 2082;
    *&v105[6] = v14;
    v106 = 2082;
    v107 = v15;
    v108 = 1024;
    v109 = 497;
    v110 = 2112;
    v111 = v16;
    v112 = 2048;
    v113 = v18;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %@, mode=%lu", buf, 0x36u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v43 = *(a1 + 32);
    if (v43)
    {
      v44 = v43[24];
      if (v44 == 1)
      {
        v97 = 0;
        v53 = *(a1 + 40);
        v96 = 0;
        v54 = [v43 _validateCAPDU:v53 isDFSelectCommand:&v97 outError:&v96];
        v41 = v96;
        if (!v54)
        {
          (*(*(a1 + 48) + 16))();
          v58 = NFSharedSignpostLog();
          if (!os_signpost_enabled(v58))
          {
LABEL_72:

            goto LABEL_30;
          }

          v91 = [v41 description];
          *buf = 138412290;
          *v105 = v91;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v58, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession transceive:", "Validate APDU failed %@", buf, 0xCu);
LABEL_71:

          goto LABEL_72;
        }

        v43 = *(a1 + 32);
LABEL_39:
        v55 = v41;
        v56 = [v43 secureElementWrapper];
        v57 = *(a1 + 40);
        v95 = v41;
        v58 = [v56 transceive:v57 error:&v95];
        v41 = v95;

        [*(a1 + 32) setSeDirty:1];
        if (v97 != 1)
        {
          goto LABEL_52;
        }

        v59 = [NFResponseAPDU responseWithData:v58];
        if ([v59 status] == 27268)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v60 = NFLogGetLogger();
          if (v60)
          {
            v61 = v60;
            v62 = object_getClass(*(a1 + 32));
            isMetaClass = class_isMetaClass(v62);
            v64 = object_getClassName(*(a1 + 32));
            v93 = sel_getName(*(a1 + 56));
            v65 = 45;
            if (isMetaClass)
            {
              v65 = 43;
            }

            v61(4, "%c[%{public}s %{public}s]:%i SELECT returns memory full", v65, v64, v93, 534);
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
            *v105 = v68;
            *&v105[4] = 2082;
            *&v105[6] = v69;
            v106 = 2082;
            v107 = v70;
            v108 = 1024;
            v109 = 534;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i SELECT returns memory full", buf, 0x22u);
          }

          v71 = [*(a1 + 32) secureElementWrapper];
          v72 = sub_10015D3EC(v71);
        }

        if ((v97 & 1) == 0)
        {
LABEL_52:
          if (([*(a1 + 32) appletSelectedInWiredMode] & 1) == 0)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v73 = NFLogGetLogger();
            if (v73)
            {
              v74 = v73;
              v75 = object_getClass(*(a1 + 32));
              v76 = class_isMetaClass(v75);
              v77 = object_getClassName(*(a1 + 32));
              v94 = sel_getName(*(a1 + 56));
              v78 = 45;
              if (v76)
              {
                v78 = 43;
              }

              v74(4, "%c[%{public}s %{public}s]:%i Not in selected state", v78, v77, v94, 540);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v79 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
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
              *v105 = v81;
              *&v105[4] = 2082;
              *&v105[6] = v82;
              v106 = 2082;
              v107 = v83;
              v108 = 1024;
              v109 = 540;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Not in selected state", buf, 0x22u);
            }

            v84 = [NSError alloc];
            v85 = [NSString stringWithUTF8String:"nfcd"];
            v98[0] = NSLocalizedDescriptionKey;
            v86 = [NSString stringWithUTF8String:"Security Not Initialized"];
            v99[0] = v86;
            v99[1] = &off_1003307B0;
            v98[1] = @"Line";
            v98[2] = @"Method";
            v87 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
            v99[2] = v87;
            v98[3] = NSDebugDescriptionErrorKey;
            v88 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 541];
            v99[3] = v88;
            v89 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:4];
            v90 = [v84 initWithDomain:v85 code:27 userInfo:v89];

            v41 = v90;
          }
        }

        (*(*(a1 + 48) + 16))();
        v91 = NFSharedSignpostLog();
        if (os_signpost_enabled(v91))
        {
          if (v41)
          {
            v92 = [v41 description];
          }

          else
          {
            v92 = @"Success";
          }

          *buf = 138412290;
          *v105 = v92;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v91, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession transceive:", "%@", buf, 0xCu);
          if (v41)
          {
          }
        }

        goto LABEL_71;
      }

      if (v44 == 3)
      {
        v41 = 0;
        v97 = 0;
        goto LABEL_39;
      }
    }

    v45 = *(a1 + 48);
    v46 = [NSError alloc];
    v47 = [NSString stringWithUTF8String:"nfcd"];
    v100[0] = NSLocalizedDescriptionKey;
    v48 = [NSString stringWithUTF8String:"Invalid State"];
    v101[0] = v48;
    v101[1] = &off_100330798;
    v100[1] = @"Line";
    v100[2] = @"Method";
    v49 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v101[2] = v49;
    v100[3] = NSDebugDescriptionErrorKey;
    v50 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 507];
    v101[3] = v50;
    v51 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:4];
    v52 = [v46 initWithDomain:v47 code:12 userInfo:v51];
    (*(v45 + 16))(v45, 0, v52);

    v41 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v41))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v42 = "Invalid state";
    goto LABEL_29;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v20 = v19;
    v21 = object_getClass(*(a1 + 32));
    v22 = class_isMetaClass(v21);
    v23 = object_getClassName(*(a1 + 32));
    v24 = sel_getName(*(a1 + 56));
    v25 = [*(a1 + 32) sessionUID];
    v26 = 45;
    if (v22)
    {
      v26 = 43;
    }

    v20(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v26, v23, v24, 503, v25);
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
    v31 = sel_getName(*(a1 + 56));
    v32 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    *v105 = v29;
    *&v105[4] = 2082;
    *&v105[6] = v30;
    v106 = 2082;
    v107 = v31;
    v108 = 1024;
    v109 = 503;
    v110 = 2114;
    v111 = v32;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v33 = *(a1 + 48);
  v34 = [NSError alloc];
  v35 = [NSString stringWithUTF8String:"nfcd"];
  v102[0] = NSLocalizedDescriptionKey;
  v36 = [NSString stringWithUTF8String:"Session not active"];
  v103[0] = v36;
  v103[1] = &off_100330780;
  v102[1] = @"Line";
  v102[2] = @"Method";
  v37 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
  v103[2] = v37;
  v102[3] = NSDebugDescriptionErrorKey;
  v38 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 500];
  v103[3] = v38;
  v39 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:4];
  v40 = [v34 initWithDomain:v35 code:54 userInfo:v39];
  (*(v33 + 16))(v33, 0, v40);

  v41 = NFSharedSignpostLog();
  if (os_signpost_enabled(v41))
  {
    *buf = 0;
    v42 = "Session not active";
LABEL_29:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession transceive:", v42, buf, 2u);
  }

LABEL_30:
}

void sub_1000794A8(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %@", v9, ClassName, Name, 569, v8);
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
    v70 = v12;
    v71 = 2082;
    v72 = v13;
    v73 = 2082;
    v74 = v14;
    v75 = 1024;
    v76 = 569;
    v77 = 2112;
    v78 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
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

      v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 575, v22);
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
      v70 = v26;
      v71 = 2082;
      v72 = v27;
      v73 = 2082;
      v74 = v28;
      v75 = 1024;
      v76 = 575;
      v77 = 2114;
      v78 = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v30 = *(a1 + 40);
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v67[0] = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v68[0] = v33;
    v68[1] = &off_1003307C8;
    v67[1] = @"Line";
    v67[2] = @"Method";
    v34 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v68[2] = v34;
    v67[3] = NSDebugDescriptionErrorKey;
    v35 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 572];
    v68[3] = v35;
    v36 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:4];
    v37 = [v31 initWithDomain:v32 code:54 userInfo:v36];
    (*(v30 + 16))(v30, 0, v37);

    v38 = NFSharedSignpostLog();
    if (os_signpost_enabled(v38))
    {
      *buf = 0;
      v39 = "Session not active";
LABEL_24:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession listAppletsAndRefreshCache:", v39, buf, 2u);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v40 = [*(a1 + 32) secureElementWrapper];
  v41 = [v40 cachedAppletsUnfiltered];
  if (![v41 count] || (v42 = *(a1 + 32)) == 0)
  {

    goto LABEL_38;
  }

  v43 = *(v42 + 192);

  if (v43 != 3)
  {
LABEL_38:
    v57 = *(a1 + 40);
    v58 = [NSError alloc];
    v59 = [NSString stringWithUTF8String:"nfcd"];
    v65[0] = NSLocalizedDescriptionKey;
    v60 = [NSString stringWithUTF8String:"Invalid State"];
    v66[0] = v60;
    v66[1] = &off_1003307E0;
    v65[1] = @"Line";
    v65[2] = @"Method";
    v61 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v66[2] = v61;
    v65[3] = NSDebugDescriptionErrorKey;
    v62 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 579];
    v66[3] = v62;
    v63 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:4];
    v64 = [v58 initWithDomain:v59 code:12 userInfo:v63];
    (*(v57 + 16))(v57, 0, v64);

    v38 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v38))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v39 = "InvalidState";
    goto LABEL_24;
  }

  if ((*(a1 + 56) & 1) != 0 || [*(a1 + 32) seDirty])
  {
    v44 = *(a1 + 32);
    if (v44)
    {
      v45 = [*(a1 + 32) secureElementWrapper];
      v46 = [v45 handle];
      v47 = [v46 info];
      v48 = [v47 restrictedMode];

      if ((v48 & 1) == 0)
      {
        v49 = +[_NFHardwareManager sharedHardwareManager];
        [v49 refreshSecureElementInfo];
      }

      v50 = [v44 secureElementWrapper];
      v51 = sub_100253E14(v50);

      v52 = [v44 secureElementWrapper];
      v53 = sub_100261EA4(v52);

      [v44 secureElementWrapper];
    }
  }

  [*(a1 + 32) setSeDirty:0];
  v54 = *(a1 + 40);
  v55 = [*(a1 + 32) secureElementWrapper];
  v56 = [v55 cachedAppletsUnfiltered];
  (*(v54 + 16))(v54, v56, 0);

  v38 = NFSharedSignpostLog();
  if (os_signpost_enabled(v38))
  {
    *buf = 0;
    v39 = "Success";
    goto LABEL_24;
  }

LABEL_25:
}

void sub_100079DFC(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %@", v9, ClassName, Name, 604, v8);
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
    *v46 = v12;
    *&v46[4] = 2082;
    *&v46[6] = v13;
    v47 = 2082;
    v48 = v14;
    v49 = 1024;
    v50 = 604;
    v51 = 2112;
    v52 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
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
      v21 = sel_getName(*(a1 + 56));
      v22 = [*(a1 + 32) sessionUID];
      v23 = 45;
      if (v19)
      {
        v23 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 610, v22);
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
      *v46 = v26;
      *&v46[4] = 2082;
      *&v46[6] = v27;
      v47 = 2082;
      v48 = v28;
      v49 = 1024;
      v50 = 610;
      v51 = 2114;
      v52 = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v30 = *(a1 + 48);
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v43[0] = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v44[0] = v33;
    v44[1] = &off_1003307F8;
    v43[1] = @"Line";
    v43[2] = @"Method";
    v34 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v44[2] = v34;
    v43[3] = NSDebugDescriptionErrorKey;
    v35 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 607];
    v44[3] = v35;
    v36 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:4];
    v37 = [v31 initWithDomain:v32 code:54 userInfo:v36];
    (*(v30 + 16))(v30, 0, v37);

    v38 = NFSharedSignpostLog();
    if (os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession queryExtraInfoForApplets:", "Session not active", buf, 2u);
    }
  }

  else
  {
    v38 = objc_opt_new();
    v39 = [*(a1 + 32) secureElementWrapper];
    v40 = sub_100257058(v39, *(a1 + 40), v38);

    (*(*(a1 + 48) + 16))();
    v41 = NFSharedSignpostLog();
    if (os_signpost_enabled(v41))
    {
      if (v40)
      {
        v42 = [v40 description];
      }

      else
      {
        v42 = @"Success";
      }

      *buf = 138412290;
      *v46 = v42;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession queryExtraInfoForApplets:", "%@", buf, 0xCu);
      if (v40)
      {
      }
    }
  }
}

void sub_10007A50C(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %@", v9, ClassName, Name, 631, v8);
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
    *v74 = v12;
    *&v74[4] = 2082;
    *&v74[6] = v13;
    v75 = 2082;
    v76 = v14;
    v77 = 1024;
    v78 = 631;
    v79 = 2112;
    v80 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
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
      v21 = sel_getName(*(a1 + 56));
      v22 = [*(a1 + 32) sessionUID];
      v23 = 45;
      if (v19)
      {
        v23 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 637, v22);
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
      *v74 = v26;
      *&v74[4] = 2082;
      *&v74[6] = v27;
      v75 = 2082;
      v76 = v28;
      v77 = 1024;
      v78 = 637;
      v79 = 2114;
      v80 = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v30 = *(a1 + 48);
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v71[0] = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v72[0] = v33;
    v72[1] = &off_100330810;
    v71[1] = @"Line";
    v71[2] = @"Method";
    v34 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v72[2] = v34;
    v71[3] = NSDebugDescriptionErrorKey;
    v35 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 634];
    v72[3] = v35;
    v36 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:4];
    v37 = [v31 initWithDomain:v32 code:54 userInfo:v36];
    (*(v30 + 16))(v30, v37);

    v38 = NFSharedSignpostLog();
    if (os_signpost_enabled(v38))
    {
      *buf = 0;
      v39 = "Session not active";
LABEL_24:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession deleteApplets:", v39, buf, 2u);
    }
  }

  else
  {
    v40 = *(a1 + 32);
    if (!v40 || v40[24] != 3)
    {
      v42 = *(a1 + 48);
      v43 = [NSError alloc];
      v44 = [NSString stringWithUTF8String:"nfcd"];
      v69[0] = NSLocalizedDescriptionKey;
      v45 = [NSString stringWithUTF8String:"Invalid State"];
      v70[0] = v45;
      v70[1] = &off_100330828;
      v69[1] = @"Line";
      v69[2] = @"Method";
      v46 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v70[2] = v46;
      v69[3] = NSDebugDescriptionErrorKey;
      v47 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 640];
      v70[3] = v47;
      v48 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:4];
      v49 = [v43 initWithDomain:v44 code:12 userInfo:v48];
      (*(v42 + 16))(v42, v49);

      v38 = NFSharedSignpostLog();
      if (!os_signpost_enabled(v38))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v39 = "InvalidState";
      goto LABEL_24;
    }

    [v40 setSeDirty:1];
    if (*(a1 + 40))
    {
      v41 = [*(a1 + 32) secureElementWrapper];
      v38 = sub_100256530(v41, *(a1 + 40));
    }

    else
    {
      v38 = 0;
    }

    v50 = *(a1 + 32);
    if (v50 && v50[24] == 1)
    {
      v51 = [v50 defaultWiredModeApplet];
      if (!v51)
      {
        v51 = [[NSData alloc] initWithBytes:"FACTORYTESTAPP" length:14];
      }

      v52 = [*(a1 + 32) secureElementWrapper];
      v66 = v38;
      v53 = sub_1001595DC(v52, v51, &v66);
      v54 = v66;

      if ((v53 & 1) == 0)
      {
        v65 = [NSError alloc];
        v55 = [NSString stringWithUTF8String:"nfcd"];
        v56 = [v54 code];
        v67[0] = NSLocalizedDescriptionKey;
        if ([v54 code]> 75)
        {
          v57 = 76;
        }

        else
        {
          v57 = [v54 code];
        }

        v58 = [NSString stringWithUTF8String:off_100316CC0[v57]];
        v68[0] = v58;
        v68[1] = v54;
        v67[1] = NSUnderlyingErrorKey;
        v67[2] = @"Line";
        v68[2] = &off_100330840;
        v67[3] = @"Method";
        v59 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
        v68[3] = v59;
        v67[4] = NSDebugDescriptionErrorKey;
        v60 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 661];
        v68[4] = v60;
        v61 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:5];
        v62 = [v65 initWithDomain:v55 code:v56 userInfo:v61];

        v54 = v62;
      }

      v38 = v54;
    }

    (*(*(a1 + 48) + 16))();
    v63 = NFSharedSignpostLog();
    if (os_signpost_enabled(v63))
    {
      if (v38)
      {
        v64 = [v38 description];
      }

      else
      {
        v64 = @"Success";
      }

      *buf = 138412290;
      *v74 = v64;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v63, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession deleteApplets:", "%@", buf, 0xCu);
      if (v38)
      {
      }
    }
  }

LABEL_25:
}

void sub_10007AFCC(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %@", v9, ClassName, Name, 680, v8);
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
    v90 = 680;
    v91 = 2112;
    v92 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
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
      v21 = sel_getName(*(a1 + 56));
      v22 = [*(a1 + 32) sessionUID];
      v23 = 45;
      if (v19)
      {
        v23 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 686, v22);
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
      v90 = 686;
      v91 = 2114;
      v92 = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v30 = *(a1 + 48);
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v99[0] = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v100[0] = v33;
    v100[1] = &off_100330858;
    v99[1] = @"Line";
    v99[2] = @"Method";
    v34 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v100[2] = v34;
    v99[3] = NSDebugDescriptionErrorKey;
    v35 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 683];
    v100[3] = v35;
    v36 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:4];
    v37 = [v31 initWithDomain:v32 code:54 userInfo:v36];
    (*(v30 + 16))(v30, 0, v37);

    v38 = NFSharedSignpostLog();
    if (os_signpost_enabled(v38))
    {
      *buf = 0;
      v39 = "Session not active";
LABEL_24:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession signChallenge:", v39, buf, 2u);
    }
  }

  else
  {
    v40 = *(a1 + 32);
    if (!v40 || v40[24] != 3)
    {
      v59 = *(a1 + 48);
      v60 = [NSError alloc];
      v61 = [NSString stringWithUTF8String:"nfcd"];
      v97[0] = NSLocalizedDescriptionKey;
      v62 = [NSString stringWithUTF8String:"Invalid State"];
      v98[0] = v62;
      v98[1] = &off_100330870;
      v97[1] = @"Line";
      v97[2] = @"Method";
      v63 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v98[2] = v63;
      v97[3] = NSDebugDescriptionErrorKey;
      v64 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 689];
      v98[3] = v64;
      v65 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:4];
      v66 = [v60 initWithDomain:v61 code:12 userInfo:v65];
      (*(v59 + 16))(v59, 0, v66);

      v38 = NFSharedSignpostLog();
      if (!os_signpost_enabled(v38))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v39 = "InvalidState";
      goto LABEL_24;
    }

    v41 = [v40 secureElementWrapper];
    v42 = *(a1 + 40);
    v80 = 0;
    v43 = sub_100203358(v41, v42, &v80);
    v38 = v80;

    if (v43)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v44 = NFLogGetLogger();
      if (v44)
      {
        v45 = v44;
        v46 = object_getClass(*(a1 + 32));
        v47 = class_isMetaClass(v46);
        v48 = object_getClassName(*(a1 + 32));
        v49 = sel_getName(*(a1 + 56));
        if (v43 >= 0x4C)
        {
          v50 = 76;
        }

        else
        {
          v50 = v43;
        }

        v79 = off_100316CC0[v50];
        v51 = 43;
        if (!v47)
        {
          v51 = 45;
        }

        v45(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v51, v48, v49, 697, @"Returned", v43, v79);
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
        if (v43 >= 0x4C)
        {
          v57 = 76;
        }

        else
        {
          v57 = v43;
        }

        v58 = off_100316CC0[v57];
        *buf = 67110658;
        v84 = v54;
        v85 = 2082;
        v86 = v55;
        v87 = 2082;
        v88 = v56;
        v89 = 1024;
        v90 = 697;
        v91 = 2112;
        v92 = @"Returned";
        v93 = 1024;
        v94 = v43;
        v95 = 2080;
        v96 = v58;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ err=%d %s", buf, 0x3Cu);
      }

      else if (v43 >= 0x4C)
      {
        v57 = 76;
      }

      else
      {
        v57 = v43;
      }

      v70 = *(a1 + 48);
      v71 = [NSError alloc];
      v72 = [NSString stringWithUTF8String:"nfcd"];
      v73 = v43;
      v81[0] = NSLocalizedDescriptionKey;
      v74 = [NSString stringWithUTF8String:off_100316CC0[v57]];
      v82[0] = v74;
      v82[1] = &off_100330888;
      v81[1] = @"Line";
      v81[2] = @"Method";
      v75 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v82[2] = v75;
      v81[3] = NSDebugDescriptionErrorKey;
      v76 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 698];
      v82[3] = v76;
      v77 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:4];
      v78 = [v71 initWithDomain:v72 code:v73 userInfo:v77];
      (*(v70 + 16))(v70, 0, v78);

      v69 = NFSharedSignpostLog();
      if (os_signpost_enabled(v69))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v69, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession signChallenge:", "Sign Challenge Error", buf, 2u);
      }
    }

    else
    {
      v67 = NFSharedSignpostLog();
      if (os_signpost_enabled(v67))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v67, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCredentialSession signChallenge:", "user callback", buf, 2u);
      }

      v68 = *(a1 + 48);
      v69 = [v38 objectForKeyedSubscript:@"SignedResponse"];
      (*(v68 + 16))(v68, v69, 0);
    }
  }

LABEL_25:
}

id sub_10007C304(uint64_t a1)
{
  v1 = [*(a1 + 32) requestedApplets];
  v2 = [v1 copy];

  return v2;
}

uint64_t sub_10007C824()
{
  if (qword_10035D988 != -1)
  {
    dispatch_once(&qword_10035D988, &stru_100317008);
  }

  state64 = 0;
  state = notify_get_state(dword_10035D980, &state64);
  if (state)
  {
    v1 = state;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Failed to get orientation: %u", "NFDeviceOrientationGetOrientation", 42, v1);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v3 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v11 = "NFDeviceOrientationGetOrientation";
      v12 = 1024;
      v13 = 42;
      v14 = 1024;
      LODWORD(v15) = v1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Failed to get orientation: %u", buf, 0x18u);
    }

    v4 = 0;
  }

  else
  {
    v4 = state64;
    if (state64 >= 7)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v5 = NFLogGetLogger();
      if (v5)
      {
        v5(4, "%s:%i Unexpected orientation %llu", "NFDeviceOrientationGetOrientation", 69, state64);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v6 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v11 = "NFDeviceOrientationGetOrientation";
        v12 = 1024;
        v13 = 69;
        v14 = 2048;
        v15 = state64;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected orientation %llu", buf, 0x1Cu);
      }

      v4 = 0;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v7 = NFLogGetLogger();
    if (v7)
    {
      v7(6, "%s:%i Device orientation: %u", "NFDeviceOrientationGetOrientation", 74, v4);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v3 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v11 = "NFDeviceOrientationGetOrientation";
      v12 = 1024;
      v13 = 74;
      v14 = 1024;
      LODWORD(v15) = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Device orientation: %u", buf, 0x18u);
    }
  }

  return v4;
}

id *sub_10007D4A4(id *a1, void *a2, void *a3, void *a4, char a5, __int16 a6)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = NFVASSelectResponse;
    v15 = objc_msgSendSuper2(&v17, "init");
    a1 = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 2, a2);
      objc_storeStrong(a1 + 3, a3);
      objc_storeStrong(a1 + 4, a4);
      *(a1 + 8) = a5;
      *(a1 + 5) = a6;
    }
  }

  return a1;
}

NSObject *sub_10007D5CC(uint64_t a1, void *a2)
{
  if (a1)
  {
    v156 = *"OSE.VAS.01";
    v157 = 12592;
    v137 = 10;
    v136 = 304128;
    v135 = 0;
    v5 = [[NSMutableData alloc] initWithBytes:&v136 length:5];
    [v5 appendBytes:&v156 length:10];
    [v5 appendBytes:&v135 length:1];
    v6 = *(a1 + 32);
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    v134 = 0;
    v9 = v7;
    v10 = v6;
    v11 = sub_1001960B0(v10, v5, v9, &v134);
    v12 = v134;

    if (v12)
    {
      if (a2)
      {
        v133 = v11;
        v13 = [NSError alloc];
        v14 = [NSString stringWithUTF8String:"nfcd"];
        v15 = [v12 code];
        v154[0] = NSLocalizedDescriptionKey;
        if ([v12 code] > 75)
        {
          v16 = 76;
        }

        else
        {
          v16 = [v12 code];
        }

        v22 = [NSString stringWithUTF8String:off_100317028[v16]];
        v155[0] = v22;
        v155[1] = v12;
        v154[1] = NSUnderlyingErrorKey;
        v154[2] = @"Line";
        v155[2] = &off_1003308A0;
        v154[3] = @"Method";
        v23 = v12;
        v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName("selectOSE:")];
        v155[3] = v24;
        v154[4] = NSDebugDescriptionErrorKey;
        v25 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("selectOSE:"), 95];
        v155[4] = v25;
        v26 = [NSDictionary dictionaryWithObjects:v155 forKeys:v154 count:5];
        *a2 = [v13 initWithDomain:v14 code:v15 userInfo:v26];

        v12 = v23;
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    if ([v11 length] <= 1)
    {
      if (a2)
      {
        v133 = v11;
        v17 = [NSError alloc];
        v14 = [NSString stringWithUTF8String:"nfcd"];
        v152[0] = NSLocalizedDescriptionKey;
        v18 = [NSString stringWithUTF8String:"Tag Error"];
        v153[0] = v18;
        v153[1] = &off_1003308B8;
        v152[1] = @"Line";
        v152[2] = @"Method";
        v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName("selectOSE:")];
        v153[2] = v19;
        v152[3] = NSDebugDescriptionErrorKey;
        v20 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("selectOSE:"), 100];
        v153[3] = v20;
        v21 = [NSDictionary dictionaryWithObjects:v153 forKeys:v152 count:4];
        *a2 = [v17 initWithDomain:v14 code:29 userInfo:v21];

LABEL_12:
        v2 = 0;
LABEL_13:

        v11 = v133;
        goto LABEL_14;
      }

LABEL_9:
      v2 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v132 = [NFResponseAPDU responseWithData:v11];
    v131 = a2;
    v133 = v11;
    if ([v132 status] == 36864)
    {
      v28 = [v11 subdataWithRange:{0, objc_msgSend(v11, "length") - 2}];
      v29 = [NFTLV TLVWithData:v28];

      v130 = v29;
      if ([v29 tag] != 111)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v82 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("selectOSE:");
          v85 = [v132 response];
          v86 = [v85 debugDescription];
          v87 = 45;
          if (isMetaClass)
          {
            v87 = 43;
          }

          v82(6, "%c[%{public}s %{public}s]:%i Invalid SELECT_OSE response=%{public}@", v87, ClassName, Name, 109, v86);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v88 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          v89 = object_getClass(a1);
          if (class_isMetaClass(v89))
          {
            v90 = 43;
          }

          else
          {
            v90 = 45;
          }

          v91 = object_getClassName(a1);
          v92 = sel_getName("selectOSE:");
          v93 = [v132 response];
          v94 = [v93 debugDescription];
          *buf = 67110146;
          v143 = v90;
          a2 = v131;
          v144 = 2082;
          v145 = v91;
          v146 = 2082;
          v147 = v92;
          v148 = 1024;
          v149 = 109;
          v150 = 2114;
          v151 = v94;
          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalid SELECT_OSE response=%{public}@", buf, 0x2Cu);
        }

        if (a2)
        {
          v95 = [NSError alloc];
          v96 = [NSString stringWithUTF8String:"nfcd"];
          v140[0] = NSLocalizedDescriptionKey;
          v97 = [NSString stringWithUTF8String:"Decoding Error"];
          v141[0] = v97;
          v141[1] = &off_1003308D0;
          v140[1] = @"Line";
          v140[2] = @"Method";
          v98 = [[NSString alloc] initWithFormat:@"%s", sel_getName("selectOSE:")];
          v141[2] = v98;
          v140[3] = NSDebugDescriptionErrorKey;
          v99 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("selectOSE:"), 110];
          v141[3] = v99;
          v100 = [NSDictionary dictionaryWithObjects:v141 forKeys:v140 count:4];
          *v131 = [v95 initWithDomain:v96 code:23 userInfo:v100];
        }

        v2 = sub_10007D4A4([NFVASSelectResponse alloc], 0, 0, 0, 0, [v132 status]);
        goto LABEL_71;
      }

      if ([v29 tag] == 111)
      {
        v126 = [v29 childWithTag:80];
        if (v126)
        {
          v30 = [v126 value];
          objc_storeStrong((a1 + 40), v30);

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v31 = NFLogGetLogger();
          if (v31)
          {
            v32 = v31;
            v33 = object_getClass(a1);
            v34 = class_isMetaClass(v33);
            v35 = object_getClassName(a1);
            v36 = sel_getName("selectOSE:");
            v37 = 45;
            if (v34)
            {
              v37 = 43;
            }

            v32(6, "%c[%{public}s %{public}s]:%i VAS APP LABEL: %{public}@", v37, v35, v36, 122, *(a1 + 40));
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v2 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
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

            v40 = object_getClassName(a1);
            v41 = sel_getName("selectOSE:");
            v42 = *(a1 + 40);
            *buf = 67110146;
            v143 = v39;
            v144 = 2082;
            v145 = v40;
            v146 = 2082;
            v147 = v41;
            v148 = 1024;
            v149 = 122;
            v150 = 2114;
            v151 = v42;
            _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i VAS APP LABEL: %{public}@", buf, 0x2Cu);
          }
        }

        v128 = [v29 childWithTag:40737];
        if (v128)
        {
          v43 = [v128 value];
          objc_storeStrong((a1 + 48), v43);

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v44 = NFLogGetLogger();
          if (v44)
          {
            v45 = v44;
            v46 = object_getClass(a1);
            v47 = class_isMetaClass(v46);
            v48 = object_getClassName(a1);
            v49 = sel_getName("selectOSE:");
            v50 = 45;
            if (v47)
            {
              v50 = 43;
            }

            v45(6, "%c[%{public}s %{public}s]:%i VAS APP VERSION: %{public}@", v50, v48, v49, 127, *(a1 + 48));
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v2 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
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
            v54 = sel_getName("selectOSE:");
            v55 = *(a1 + 48);
            *buf = 67110146;
            v143 = v52;
            v144 = 2082;
            v145 = v53;
            v146 = 2082;
            v147 = v54;
            v148 = 1024;
            v149 = 127;
            v150 = 2114;
            v151 = v55;
            _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i VAS APP VERSION: %{public}@", buf, 0x2Cu);
          }
        }

        v125 = [v29 childWithTag:40740];
        if (v125)
        {
          v56 = [v128 value];
          objc_storeStrong((a1 + 56), v56);

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v57 = NFLogGetLogger();
          if (v57)
          {
            v58 = v57;
            v59 = object_getClass(a1);
            v60 = class_isMetaClass(v59);
            v61 = object_getClassName(a1);
            v62 = sel_getName("selectOSE:");
            v63 = 45;
            if (v60)
            {
              v63 = 43;
            }

            v58(6, "%c[%{public}s %{public}s]:%i VAS APP NONCE: %{public}@", v63, v61, v62, 132, *(a1 + 56));
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v2 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
          {
            v64 = object_getClass(a1);
            if (class_isMetaClass(v64))
            {
              v65 = 43;
            }

            else
            {
              v65 = 45;
            }

            v66 = object_getClassName(a1);
            v67 = sel_getName("selectOSE:");
            v68 = *(a1 + 56);
            *buf = 67110146;
            v143 = v65;
            v144 = 2082;
            v145 = v66;
            v146 = 2082;
            v147 = v67;
            v148 = 1024;
            v149 = 132;
            v150 = 2114;
            v151 = v68;
            _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i VAS APP NONCE: %{public}@", buf, 0x2Cu);
          }
        }

        v69 = [v29 childWithTag:40739];
        v70 = v69;
        if (v69)
        {
          v71 = [v69 value];
          v72 = [v71 bytes];

          v73 = [v70 value];
          v74 = [v73 length];

          if (v74 >= 4)
          {
            *(a1 + 8) = v72[3];
          }

          v75 = [NFVASSelectResponse alloc];
          v76 = *(a1 + 40);
          v77 = *(a1 + 48);
          v124 = *(a1 + 8);
          v78 = *(a1 + 56);
          v79 = v77;
          v80 = v76;
          v2 = sub_10007D4A4(&v75->super.isa, v80, v79, v78, v124, [v132 status]);
        }

        if (v70)
        {
LABEL_71:

          v12 = 0;
          v14 = v132;
          goto LABEL_13;
        }
      }

      v12 = 0;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v101 = NFLogGetLogger();
    if (v101)
    {
      v102 = v101;
      v103 = object_getClass(a1);
      v104 = class_isMetaClass(v103);
      v105 = object_getClassName(a1);
      v106 = v12;
      v107 = sel_getName("selectOSE:");
      v123 = [v132 status];
      v122 = v107;
      v12 = v106;
      v108 = 45;
      if (v104)
      {
        v108 = 43;
      }

      v102(6, "%c[%{public}s %{public}s]:%i SELECT_OSE failed=0x%{public}02X", v108, v105, v122, 152, v123);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v109 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      v110 = object_getClass(a1);
      if (class_isMetaClass(v110))
      {
        v111 = 43;
      }

      else
      {
        v111 = 45;
      }

      v112 = object_getClassName(a1);
      v113 = sel_getName("selectOSE:");
      v114 = [v132 status];
      *buf = 67110146;
      v143 = v111;
      v144 = 2082;
      v145 = v112;
      v146 = 2082;
      v147 = v113;
      v148 = 1024;
      v149 = 152;
      v150 = 1026;
      LODWORD(v151) = v114;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i SELECT_OSE failed=0x%{public}02X", buf, 0x28u);
    }

    if (v131)
    {
      v115 = [NSError alloc];
      v116 = [NSString stringWithUTF8String:"nfcd"];
      v138[0] = NSLocalizedDescriptionKey;
      v117 = [NSString stringWithUTF8String:"Not found"];
      v139[0] = v117;
      v139[1] = &off_1003308E8;
      v138[1] = @"Line";
      v138[2] = @"Method";
      v118 = v12;
      v119 = [[NSString alloc] initWithFormat:@"%s", sel_getName("selectOSE:")];
      v139[2] = v119;
      v138[3] = NSDebugDescriptionErrorKey;
      v120 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("selectOSE:"), 153];
      v139[3] = v120;
      v121 = [NSDictionary dictionaryWithObjects:v139 forKeys:v138 count:4];
      *v131 = [v115 initWithDomain:v116 code:65 userInfo:v121];

      v12 = v118;
    }

    v14 = v132;
    v2 = sub_10007D4A4([NFVASSelectResponse alloc], 0, 0, 0, 0, [v132 status]);
    goto LABEL_13;
  }

  v2 = 0;
LABEL_15:

  return v2;
}