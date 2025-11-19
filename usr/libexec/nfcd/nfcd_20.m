void sub_10024325C(uint64_t a1, void *a2)
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

      v5(3, "%c[%{public}s %{public}s]:%i Device start error: %{public}@", v8, ClassName, Name, 358, v3);
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
      v13 = sel_getName(*(a1 + 56));
      *buf = 67110146;
      v29 = v11;
      v30 = 2082;
      v31 = v12;
      v32 = 2082;
      v33 = v13;
      v34 = 1024;
      v35 = 358;
      v36 = 2114;
      v37 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Device start error: %{public}@", buf, 0x2Cu);
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

    v19 = [NSString stringWithUTF8String:(&off_10031CC50)[v18]];
    v27[0] = v19;
    v27[1] = v3;
    v26[1] = NSUnderlyingErrorKey;
    v26[2] = @"Line";
    v27[2] = &off_100336978;
    v26[3] = @"Method";
    v20 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v27[3] = v20;
    v26[4] = NSDebugDescriptionErrorKey;
    v21 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 359];
    v27[4] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:5];
    v23 = [v15 initWithDomain:v16 code:v17 userInfo:v22];
    (*(v14 + 16))(v14, v23);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100243AD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) driverWrapper];
  if (v4 && (v5 = v4, v6 = [*(v4 + 56) readerModeProtectionActive], v5, v6))
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
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v8(4, "%c[%{public}s %{public}s]:%i Reader mode protection enabled", v12, ClassName, Name, 401);
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
      v35 = v15;
      v36 = 2082;
      v37 = v16;
      v38 = 2082;
      v39 = v17;
      v40 = 1024;
      v41 = 401;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Reader mode protection enabled", buf, 0x22u);
    }

    v18 = *(a1 + 40);
    v19 = [NSError alloc];
    v20 = [NSString stringWithUTF8String:"nfcd"];
    v32[0] = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithUTF8String:"Reader mode temporarily disabled"];
    v33[0] = v21;
    v33[1] = &off_1003369A8;
    v32[1] = @"Line";
    v32[2] = @"Method";
    v22 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v33[2] = v22;
    v32[3] = NSDebugDescriptionErrorKey;
    v23 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 402];
    v33[3] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];
    v25 = [v19 initWithDomain:v20 code:47 userInfo:v24];
    (*(v18 + 16))(v18, v25);
  }

  else
  {
    if (!v3)
    {
      v26 = [*(a1 + 32) powerConsumptionReporter];
      sub_1001B0320(v26, *(a1 + 32));

      if ([*(a1 + 32) role] == 1 || objc_msgSend(*(a1 + 32), "role") == 4)
      {
        v27 = [[NSData alloc] initWithBytes:&unk_100297C50 length:6];
      }

      else
      {
        v27 = 0;
      }

      v28 = sub_10004C55C(NFRoutingConfig, 0, 1, 0, v27);
      sub_10004C450(v28, 19, 48);
      v29 = +[_NFHardwareManager sharedHardwareManager];
      v30 = [v29 setRoutingConfig:v28];
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100244604(uint64_t a1)
{
  if (([*(a1 + 32) didEnd] & 1) == 0)
  {
    v5 = +[_NFHardwareManager sharedHardwareManager];
    v2 = [v5 defaultRoutingConfig:3];
    v3 = [v5 setRoutingConfig:v2];

    v4 = [*(a1 + 32) powerConsumptionReporter];
    sub_1001AF894(v4, *(a1 + 32));
  }
}

void sub_1002447BC(uint64_t a1)
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

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 483, v8);
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
      v67 = v12;
      v68 = 2082;
      v69 = v13;
      v70 = 2082;
      v71 = v14;
      v72 = 1024;
      v73 = 483;
      v74 = 2114;
      v75 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 56);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v64 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v65 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);

LABEL_15:
    }
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v18 = *(a1 + 40);
    v22 = [v18 countByEnumeratingWithState:&v52 objects:v63 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v53;
      while (2)
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v53 != v24)
          {
            objc_enumerationMutation(v18);
          }

          v26 = *(*(&v52 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v38 = *(a1 + 56);
            v39 = [NSError alloc];
            v40 = [NSString stringWithUTF8String:"nfcd"];
            v61[0] = NSLocalizedDescriptionKey;
            v41 = [NSString stringWithUTF8String:"Invalid Parameter"];
            v62[0] = v41;
            v62[1] = &off_1003369C0;
            v61[1] = @"Line";
            v61[2] = @"Method";
            v42 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
            v62[2] = v42;
            v61[3] = NSDebugDescriptionErrorKey;
            v43 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 487];
            v62[3] = v43;
            v44 = v62;
            v45 = v61;
LABEL_38:
            v46 = [NSDictionary dictionaryWithObjects:v44 forKeys:v45 count:4];
            v47 = [v39 initWithDomain:v40 code:10 userInfo:v46];
            (*(v38 + 16))(v38, v47);

            goto LABEL_15;
          }
        }

        v23 = [v18 countByEnumeratingWithState:&v52 objects:v63 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v18 = *(a1 + 48);
    v27 = [v18 countByEnumeratingWithState:&v48 objects:v60 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v49;
      while (2)
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v49 != v29)
          {
            objc_enumerationMutation(v18);
          }

          v31 = *(*(&v48 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v38 = *(a1 + 56);
            v39 = [NSError alloc];
            v40 = [NSString stringWithUTF8String:"nfcd"];
            v58[0] = NSLocalizedDescriptionKey;
            v41 = [NSString stringWithUTF8String:"Invalid Parameter"];
            v59[0] = v41;
            v59[1] = &off_1003369D8;
            v58[1] = @"Line";
            v58[2] = @"Method";
            v42 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
            v59[2] = v42;
            v58[3] = NSDebugDescriptionErrorKey;
            v43 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 493];
            v59[3] = v43;
            v44 = v59;
            v45 = v58;
            goto LABEL_38;
          }
        }

        v28 = [v18 countByEnumeratingWithState:&v48 objects:v60 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    if ([*(a1 + 32) role] == 3 || !objc_msgSend(*(a1 + 32), "role"))
    {
      [*(a1 + 32) _startTNEPDeviceWithServices:*(a1 + 40) optionalRecords:*(a1 + 48) callback:*(a1 + 56)];
    }

    else
    {
      v32 = *(a1 + 56);
      v33 = [NSError alloc];
      v34 = [NSString stringWithUTF8String:"nfcd"];
      v56 = NSLocalizedDescriptionKey;
      v35 = [NSString stringWithUTF8String:"Invalid State"];
      v57 = v35;
      v36 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v37 = [v33 initWithDomain:v34 code:12 userInfo:v36];
      (*(v32 + 16))(v32, v37);
    }
  }
}

void sub_100244FD4(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
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

      v26(6, "%c[%{public}s %{public}s]:%i ", v30, ClassName, Name, 513);
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
      v35 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v58 = v33;
      v59 = 2082;
      v60 = v34;
      v61 = 2082;
      v62 = v35;
      v63 = 1024;
      v64 = 513;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    v36 = [*(a1 + 32) tnepHandler];
    if (v36)
    {
      v37 = v36;
      v38 = [*(a1 + 32) role];

      if (v38 == 3)
      {
        v18 = [*(a1 + 32) tnepHandler];
        [v18 tnepTagDeviceSendNDEFMessage:*(a1 + 40) callback:*(a1 + 48)];
        goto LABEL_16;
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFLogGetLogger();
    if (v39)
    {
      v40 = v39;
      v41 = object_getClass(*(a1 + 32));
      v42 = class_isMetaClass(v41);
      v43 = object_getClassName(*(a1 + 32));
      v52 = sel_getName(*(a1 + 56));
      v44 = 45;
      if (v42)
      {
        v44 = 43;
      }

      v40(3, "%c[%{public}s %{public}s]:%i Invalid state", v44, v43, v52, 515);
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
      v49 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v58 = v47;
      v59 = 2082;
      v60 = v48;
      v61 = 2082;
      v62 = v49;
      v63 = 1024;
      v64 = 515;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid state", buf, 0x22u);
    }

    v16 = *(a1 + 48);
    v50 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v53 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Invalid State"];
    v54 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v21 = v50;
    v22 = v18;
    v23 = 12;
LABEL_15:
    v24 = [v21 initWithDomain:v22 code:v23 userInfo:v20];
    (*(v16 + 16))(v16, v24);

LABEL_16:
    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v2 = NFLogGetLogger();
  if (v2)
  {
    v3 = v2;
    v4 = object_getClass(*(a1 + 32));
    v5 = class_isMetaClass(v4);
    v6 = object_getClassName(*(a1 + 32));
    v7 = sel_getName(*(a1 + 56));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 511, v8);
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
    v58 = v12;
    v59 = 2082;
    v60 = v13;
    v61 = 2082;
    v62 = v14;
    v63 = 1024;
    v64 = 511;
    v65 = 2114;
    v66 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v55 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v56 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v21 = v17;
    v22 = v18;
    v23 = 54;
    goto LABEL_15;
  }
}

void sub_100245630(uint64_t a1)
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

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 528, v8);
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
      v47 = v12;
      v48 = 2082;
      v49 = v13;
      v50 = 2082;
      v51 = v14;
      v52 = 1024;
      v53 = 528;
      v54 = 2114;
      v55 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v44 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v45 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);
    }
  }

  else if ([*(a1 + 32) role] == 4)
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);

    [v22 _startTNEPReaderWithCallback:v23];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v25 = v24;
      v26 = object_getClass(*(a1 + 32));
      v27 = class_isMetaClass(v26);
      v28 = object_getClassName(*(a1 + 32));
      v41 = sel_getName(*(a1 + 48));
      v29 = 45;
      if (v27)
      {
        v29 = 43;
      }

      v25(3, "%c[%{public}s %{public}s]:%i Invalid state", v29, v28, v41, 531);
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
      *buf = 67109890;
      v47 = v32;
      v48 = 2082;
      v49 = v33;
      v50 = 2082;
      v51 = v34;
      v52 = 1024;
      v53 = 531;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid state", buf, 0x22u);
    }

    v35 = *(a1 + 40);
    v36 = [NSError alloc];
    v37 = [NSString stringWithUTF8String:"nfcd"];
    v42 = NSLocalizedDescriptionKey;
    v38 = [NSString stringWithUTF8String:"Invalid State"];
    v43 = v38;
    v39 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v40 = [v36 initWithDomain:v37 code:12 userInfo:v39];
    (*(v35 + 16))(v35, v40);
  }
}

void sub_100245BE4(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v25 = [*(a1 + 32) tnepHandler];

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v27 = Logger;
    if (v25)
    {
      if (Logger)
      {
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 56));
        v32 = 45;
        if (isMetaClass)
        {
          v32 = 43;
        }

        v27(6, "%c[%{public}s %{public}s]:%i %{public}@", v32, ClassName, Name, 549, *(a1 + 40));
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v34))
        {
          v35 = 43;
        }

        else
        {
          v35 = 45;
        }

        v36 = object_getClassName(*(a1 + 32));
        v37 = sel_getName(*(a1 + 56));
        v38 = *(a1 + 40);
        *buf = 67110146;
        v55 = v35;
        v56 = 2082;
        v57 = v36;
        v58 = 2082;
        v59 = v37;
        v60 = 1024;
        v61 = 549;
        v62 = 2114;
        v63 = v38;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
      }

      v18 = [*(a1 + 32) tnepHandler];
      [v18 tnepReaderSelectService:*(a1 + 40) callback:*(a1 + 48)];
      goto LABEL_16;
    }

    if (Logger)
    {
      v39 = object_getClass(*(a1 + 32));
      v40 = class_isMetaClass(v39);
      v41 = object_getClassName(*(a1 + 32));
      v49 = sel_getName(*(a1 + 56));
      v42 = 45;
      if (v40)
      {
        v42 = 43;
      }

      v27(3, "%c[%{public}s %{public}s]:%i Missing tnepHandler", v42, v41, v49, 546);
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
      v47 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v55 = v45;
      v56 = 2082;
      v57 = v46;
      v58 = 2082;
      v59 = v47;
      v60 = 1024;
      v61 = 546;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing tnepHandler", buf, 0x22u);
    }

    v16 = *(a1 + 48);
    v48 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v50 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Invalid State"];
    v51 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v21 = v48;
    v22 = v18;
    v23 = 12;
LABEL_15:
    v24 = [v21 initWithDomain:v22 code:v23 userInfo:v20];
    (*(v16 + 16))(v16, v24);

LABEL_16:
    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v2 = NFLogGetLogger();
  if (v2)
  {
    v3 = v2;
    v4 = object_getClass(*(a1 + 32));
    v5 = class_isMetaClass(v4);
    v6 = object_getClassName(*(a1 + 32));
    v7 = sel_getName(*(a1 + 56));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 543, v8);
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
    v55 = v12;
    v56 = 2082;
    v57 = v13;
    v58 = 2082;
    v59 = v14;
    v60 = 1024;
    v61 = 543;
    v62 = 2114;
    v63 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v52 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v53 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v21 = v17;
    v22 = v18;
    v23 = 54;
    goto LABEL_15;
  }
}

void sub_100246234(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v25 = [*(a1 + 32) tnepHandler];

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v27 = Logger;
    if (v25)
    {
      if (Logger)
      {
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 48));
        v31 = 45;
        if (isMetaClass)
        {
          v31 = 43;
        }

        v27(6, "%c[%{public}s %{public}s]:%i ", v31, ClassName, Name, 564);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
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
        v36 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v54 = v34;
        v55 = 2082;
        v56 = v35;
        v57 = 2082;
        v58 = v36;
        v59 = 1024;
        v60 = 564;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
      }

      v18 = [*(a1 + 32) tnepHandler];
      [v18 tnepReaderDeselectWithCallback:*(a1 + 40)];
      goto LABEL_16;
    }

    if (Logger)
    {
      v37 = object_getClass(*(a1 + 32));
      v38 = class_isMetaClass(v37);
      v39 = object_getClassName(*(a1 + 32));
      v48 = sel_getName(*(a1 + 48));
      v40 = 45;
      if (v38)
      {
        v40 = 43;
      }

      v27(3, "%c[%{public}s %{public}s]:%i Missing tnepHandler", v40, v39, v48, 561);
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
      *buf = 67109890;
      v54 = v43;
      v55 = 2082;
      v56 = v44;
      v57 = 2082;
      v58 = v45;
      v59 = 1024;
      v60 = 561;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing tnepHandler", buf, 0x22u);
    }

    v16 = *(a1 + 40);
    v46 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v49 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Invalid State"];
    v50 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v21 = v46;
    v22 = v18;
    v23 = 12;
LABEL_15:
    v24 = [v21 initWithDomain:v22 code:v23 userInfo:v20];
    (*(v16 + 16))(v16, v24);

LABEL_16:
    return;
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

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 558, v8);
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
    v54 = v12;
    v55 = 2082;
    v56 = v13;
    v57 = 2082;
    v58 = v14;
    v59 = 1024;
    v60 = 558;
    v61 = 2114;
    v62 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v51 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v52 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v21 = v17;
    v22 = v18;
    v23 = 54;
    goto LABEL_15;
  }
}

void sub_100246894(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v25 = [*(a1 + 32) tnepHandler];

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v27 = Logger;
    if (v25)
    {
      if (Logger)
      {
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 56));
        v31 = 45;
        if (isMetaClass)
        {
          v31 = 43;
        }

        v27(6, "%c[%{public}s %{public}s]:%i ", v31, ClassName, Name, 580);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
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
        v36 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v54 = v34;
        v55 = 2082;
        v56 = v35;
        v57 = 2082;
        v58 = v36;
        v59 = 1024;
        v60 = 580;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
      }

      v18 = [*(a1 + 32) tnepHandler];
      [v18 tnepReaderSend:*(a1 + 40) callback:*(a1 + 48)];
      goto LABEL_16;
    }

    if (Logger)
    {
      v37 = object_getClass(*(a1 + 32));
      v38 = class_isMetaClass(v37);
      v39 = object_getClassName(*(a1 + 32));
      v48 = sel_getName(*(a1 + 56));
      v40 = 45;
      if (v38)
      {
        v40 = 43;
      }

      v27(3, "%c[%{public}s %{public}s]:%i Missing tnepHandler", v40, v39, v48, 577);
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
      v54 = v43;
      v55 = 2082;
      v56 = v44;
      v57 = 2082;
      v58 = v45;
      v59 = 1024;
      v60 = 577;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing tnepHandler", buf, 0x22u);
    }

    v16 = *(a1 + 48);
    v46 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v49 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Invalid State"];
    v50 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v21 = v46;
    v22 = v18;
    v23 = 12;
LABEL_15:
    v24 = [v21 initWithDomain:v22 code:v23 userInfo:v20];
    (*(v16 + 16))(v16, 0, v24);

LABEL_16:
    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v2 = NFLogGetLogger();
  if (v2)
  {
    v3 = v2;
    v4 = object_getClass(*(a1 + 32));
    v5 = class_isMetaClass(v4);
    v6 = object_getClassName(*(a1 + 32));
    v7 = sel_getName(*(a1 + 56));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 574, v8);
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
    v54 = v12;
    v55 = 2082;
    v56 = v13;
    v57 = 2082;
    v58 = v14;
    v59 = 1024;
    v60 = 574;
    v61 = 2114;
    v62 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v51 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v52 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v21 = v17;
    v22 = v18;
    v23 = 54;
    goto LABEL_15;
  }
}

void sub_100246ED0(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v25 = [*(a1 + 32) tnepHandler];

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v27 = Logger;
    if (v25)
    {
      if (Logger)
      {
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 48));
        v31 = 45;
        if (isMetaClass)
        {
          v31 = 43;
        }

        v27(6, "%c[%{public}s %{public}s]:%i ", v31, ClassName, Name, 595);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
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
        v36 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v57 = v34;
        v58 = 2082;
        v59 = v35;
        v60 = 2082;
        v61 = v36;
        v62 = 1024;
        v63 = 595;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
      }

      v37 = [*(a1 + 32) driverWrapper];
      v38 = [*(a1 + 32) connectedTag];
      sub_10019117C(v37, v38, 0);

      v39 = [*(a1 + 32) tnepHandler];
      [v39 tnepReaderRestartPollingWithCallback:*(a1 + 40)];

      v18 = [*(a1 + 32) driverWrapper];
      sub_10021E364(v18);
      goto LABEL_16;
    }

    if (Logger)
    {
      v40 = object_getClass(*(a1 + 32));
      v41 = class_isMetaClass(v40);
      v42 = object_getClassName(*(a1 + 32));
      v51 = sel_getName(*(a1 + 48));
      v43 = 45;
      if (v41)
      {
        v43 = 43;
      }

      v27(3, "%c[%{public}s %{public}s]:%i Missing tnepHandler", v43, v42, v51, 592);
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
      v57 = v46;
      v58 = 2082;
      v59 = v47;
      v60 = 2082;
      v61 = v48;
      v62 = 1024;
      v63 = 592;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing tnepHandler", buf, 0x22u);
    }

    v16 = *(a1 + 40);
    v49 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v52 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Invalid State"];
    v53 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v21 = v49;
    v22 = v18;
    v23 = 12;
LABEL_15:
    v24 = [v21 initWithDomain:v22 code:v23 userInfo:v20];
    (*(v16 + 16))(v16, v24);

LABEL_16:
    return;
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

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 589, v8);
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
    v57 = v12;
    v58 = 2082;
    v59 = v13;
    v60 = 2082;
    v61 = v14;
    v62 = 1024;
    v63 = 589;
    v64 = 2114;
    v65 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v54 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v55 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v21 = v17;
    v22 = v18;
    v23 = 54;
    goto LABEL_15;
  }
}

void sub_100247830(uint64_t a1)
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

      v4(6, "%c[%{public}s %{public}s]:%i ", v8, ClassName, Name, 613);
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
      v26 = 613;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    v14 = [WeakRetained tnepHandler];
    [v14 tnepServiceInvalidate];

    [WeakRetained setTnepHandler:0];
    v15 = +[_NFHardwareManager sharedHardwareManager];
    v16 = sub_10004BF60(NFRoutingConfig, 1);
    v17 = [v15 setRoutingConfig:v16];
  }
}

void sub_100247E14(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 640, v3);
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
    v23 = 640;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_100248484(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 655, v3);
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
    v23 = 655;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_10024861C(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 670, v3);
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
    v23 = 670;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_1002487B4(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 674, v3);
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
    v23 = 674;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_100248A94(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  [*(a1 + 32) setDeviceHandoverSelectError:v8];
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

      v10(3, "%c[%{public}s %{public}s]:%i CH process error=%{public}@", v13, ClassName, Name, 688, v8);
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
      v32 = v16;
      v33 = 2082;
      v34 = v17;
      v35 = 2082;
      v36 = v18;
      v37 = 1024;
      v38 = 688;
      v39 = 2114;
      v40 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i CH process error=%{public}@", buf, 0x2Cu);
    }
  }

  if ([v7 length])
  {
    v19 = [[NFNdefMessageInternal alloc] initWithBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];
  }

  else
  {
    v19 = [*(a1 + 32) createCHSelectErrorMessage];
  }

  v20 = v19;
  v21 = [*(a1 + 32) tnepHandler];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100248D44;
  v27[3] = &unk_100316638;
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v28 = v8;
  v29 = v23;
  v27[4] = v22;
  v30 = a3;
  v24 = v8;
  [v21 tnepTagDeviceSendNDEFMessage:v20 callback:v27];
}

void sub_100248D44(uint64_t a1, void *a2)
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

      v5(3, "%c[%{public}s %{public}s]:%i error=%{public}@", v8, ClassName, Name, 697, v3);
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
    v38 = 697;
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

      v19(6, "%c[%{public}s %{public}s]:%i TNEP is completed", v23, v22, v34, 699);
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
    v38 = 699;
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

void sub_100249558(uint64_t a1, void *a2)
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

  v8 = [NSString stringWithUTF8String:(&off_10031CC50)[v7]];
  v17[0] = v8;
  v17[1] = v3;
  v16[1] = NSUnderlyingErrorKey;
  v16[2] = @"Line";
  v17[2] = &off_1003369F0;
  v16[3] = @"Method";
  v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v17[3] = v9;
  v16[4] = NSDebugDescriptionErrorKey;
  v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 727];
  v17[4] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:5];
  v12 = [v4 initWithDomain:v5 code:v6 userInfo:v11];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002497E0;
  v14[3] = &unk_1003162B8;
  v15 = *(a1 + 32);
  v13 = [v15 _asynchronousRemoteProxyWithErrorHandler:v14];
  [v13 connectionHandoverProcessFailure:v12];

  if ([v3 code] == 47)
  {
    [*(a1 + 32) tnepReaderServicesAborted:v3];
  }
}

void sub_1002497E0(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 729, v3);
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
    v23 = 729;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_100249978(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 738, v3);
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
    v23 = 738;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_100249B10(uint64_t a1, void *a2)
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

      v5(3, "%c[%{public}s %{public}s]:%i select failed, error=%{public}@", v8, ClassName, Name, 743, v3);
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
      v23 = v11;
      v24 = 2082;
      v25 = v12;
      v26 = 2082;
      v27 = v13;
      v28 = 1024;
      v29 = 743;
      v30 = 2114;
      v31 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i select failed, error=%{public}@", buf, 0x2Cu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = [*(a1 + 32) stsHelper];
    v15 = [*(a1 + 32) workQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100249D70;
    v20[3] = &unk_100316688;
    v20[4] = *(a1 + 32);
    v19 = *(a1 + 40);
    v16 = v19;
    v21 = v19;
    [v14 generateConnectionHandoverRequestWithQueue:v15 responseHandler:v20];
  }
}

void sub_100249D70(uint64_t a1, void *a2, void *a3)
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

      v8(3, "%c[%{public}s %{public}s]:%i CH Request generation fail: %{public}@", v11, ClassName, Name, 751, v6);
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
      v26 = v14;
      v27 = 2082;
      v28 = v15;
      v29 = 2082;
      v30 = v16;
      v31 = 1024;
      v32 = 751;
      v33 = 2114;
      v34 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i CH Request generation fail: %{public}@", buf, 0x2Cu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v17 = [[NFNdefMessageInternal alloc] initWithBytes:objc_msgSend(v5 length:{"bytes"), objc_msgSend(v5, "length")}];
    v18 = [*(a1 + 32) tnepHandler];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10024A00C;
    v23[3] = &unk_1003166B0;
    v23[4] = *(a1 + 32);
    v22 = *(a1 + 40);
    v19 = v22;
    v24 = v22;
    [v18 tnepReaderSend:v17 callback:v23];
  }
}

void sub_10024A00C(uint64_t a1, void *a2, void *a3)
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

      v8(3, "%c[%{public}s %{public}s]:%i CH exchange error=%{public}@", v11, ClassName, Name, 759, v6);
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
      v30 = v14;
      v31 = 2082;
      v32 = v15;
      v33 = 2082;
      v34 = v16;
      v35 = 1024;
      v36 = 759;
      v37 = 2114;
      v38 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i CH exchange error=%{public}@", buf, 0x2Cu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v17 = [*(a1 + 32) stsHelper];
    v18 = [v5 asData];
    v19 = [*(a1 + 32) workQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10024A304;
    v27[3] = &unk_100316598;
    v27[4] = *(a1 + 32);
    v25 = *(a1 + 40);
    v20 = v25;
    v28 = v25;
    [v17 connectRemoteWithConnectionHandoverSelect:v18 callbackQueue:v19 responseHandler:v27];

    v21 = [*(a1 + 32) tnepHandler];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10024A4B4;
    v26[3] = &unk_1003162B8;
    v22 = *(a1 + 48);
    v26[4] = *(a1 + 32);
    v26[5] = v22;
    [v21 tnepReaderDeselectWithCallback:v26];
  }
}

void sub_10024A304(uint64_t a1, void *a2)
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

      v5(3, "%c[%{public}s %{public}s]:%i AC connection failure: %{public}@", v8, ClassName, Name, 769, v3);
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
      v23 = 769;
      v24 = 2114;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i AC connection failure: %{public}@", buf, 0x2Cu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10024A4B4(uint64_t a1, void *a2)
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

      v5(6, "%c[%{public}s %{public}s]:%i Deselect failure: %@; ignore since AC has successfully negotiated and connection attempt started", v8, ClassName, Name, 779, v3);
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
      v26 = 779;
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Deselect failure: %@; ignore since AC has successfully negotiated and connection attempt started", buf, 0x2Cu);
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10024A6B8;
  v17[3] = &unk_1003162B8;
  v18 = *(a1 + 32);
  v14 = [v18 _asynchronousRemoteProxyWithErrorHandler:v17];
  [v14 connectionHandoverProcessCompleted];
}

void sub_10024A6B8(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 782, v3);
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
    v23 = 782;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_10024AA8C(uint64_t a1, void *a2)
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

      v5(3, "%c[%{public}s %{public}s]:%i AC connection failure: %{public}@", v8, ClassName, Name, 797, v3);
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
      v28 = 797;
      v29 = 2114;
      v30 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i AC connection failure: %{public}@", buf, 0x2Cu);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10024AD04;
    v19[3] = &unk_1003162B8;
    v20 = *(a1 + 32);
    v14 = [v20 _asynchronousRemoteProxyWithErrorHandler:v19];
    [v14 connectionHandoverProcessFailure:v3];
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10024AE9C;
    v17[3] = &unk_1003162B8;
    v18 = *(a1 + 32);
    v14 = [v18 _asynchronousRemoteProxyWithErrorHandler:v17];
    [v14 connectionHandoverProcessCompleted];
  }
}

void sub_10024AD04(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 799, v3);
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
    v23 = 799;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_10024AE9C(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 804, v3);
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
    v23 = 804;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_10024B2A8(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 819, v3);
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
    v23 = 819;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_10024BDBC(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 915, v3);
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
    v23 = 915;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_10024DBA0(uint64_t a1)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 163) = 0;
  v2 = *(a1 + 136);
  *(a1 + 136) = 0;

  v3 = *(a1 + 144);
  *(a1 + 144) = 0;
}

id sub_10024DC10()
{
  objc_opt_self();
  if (qword_10035DB48 != -1)
  {
    dispatch_once(&qword_10035DB48, &stru_10031CEB8);
  }

  v0 = qword_10035DB40;

  return v0;
}

void sub_10024DC68(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10035DB40;
  qword_10035DB40 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10024DCA4(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v6 = *(a1 + 40);
    *(a1 + 40) = 0;
    v9 = v4;

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    [*(a1 + 48) removeAllObjects];
    v4 = [*(a1 + 48) addEntriesFromDictionary:&off_100339EB8];
    v5 = v9;
    if (v9)
    {
      v4 = [*(a1 + 40) isEqualToNFTag:v9];
      v5 = v9;
      if ((v4 & 1) == 0)
      {
        objc_storeStrong((a1 + 40), a2);
        v7 = +[NFCALogger sharedCALogger];
        *(a1 + 32) = [v7 getTimestamp];

        v5 = v9;
      }
    }
  }

  return _objc_release_x1(v4, v5);
}

void sub_10024DD78(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (!v5 || ![v5 isEqualToNFTag:*(a1 + 40)])
    {
      goto LABEL_38;
    }

    v7 = +[NFCALogger sharedCALogger];
    v8 = [v7 getDurationFrom:*(a1 + 32)];

    v9 = +[NSUUID UUID];
    v10 = [v9 UUIDString];

    if (*(a1 + 40))
    {
      v11 = 0;
      if (a3 <= 7)
      {
        if ((a3 - 1) < 3)
        {
          v12 = 15;
          v13 = 1;
        }

        else
        {
          if ((a3 - 4) >= 3)
          {
            if (a3 == 7)
            {
              v30 = *(a1 + 108);
              if (((v30 + 256) & 0xF00) != 0)
              {
                v30 += 256;
              }

              *(a1 + 108) = v30;
              v11 = 3;
            }

            goto LABEL_37;
          }

          v12 = 240;
          v13 = 16;
        }
      }

      else
      {
        if (a3 > 12)
        {
          if (a3 > 14)
          {
            if (a3 == 15)
            {
              v33 = *(a1 + 108);
              if (v33 >> 28 != 15)
              {
                v33 += 0x10000000;
              }

              *(a1 + 108) = v33;
              v11 = 8;
            }

            else if (a3 == 16)
            {
              v16 = *(a1 + 112);
              if (((v16 + 16) & 0xF0) != 0)
              {
                v16 += 16;
              }

              *(a1 + 112) = v16;
              v11 = 10;
            }

            goto LABEL_37;
          }

          if (a3 != 13)
          {
            v14 = *(a1 + 112);
            if (((v14 + 1) & 0xF) != 0)
            {
              ++v14;
            }

            *(a1 + 112) = v14;
            v11 = 9;
            goto LABEL_37;
          }
        }

        else
        {
          if (a3 > 10)
          {
            if (a3 == 11)
            {
              v32 = *(a1 + 108);
              if (((v32 + 0x100000) & 0xF00000) != 0)
              {
                v32 += 0x100000;
              }

              *(a1 + 108) = v32;
              v11 = 6;
            }

            else
            {
              v15 = *(a1 + 108);
              if (((v15 + 0x1000000) & 0xF000000) != 0)
              {
                v15 += 0x1000000;
              }

              *(a1 + 108) = v15;
              v11 = 7;
            }

            goto LABEL_37;
          }

          if (a3 == 8)
          {
            v31 = *(a1 + 108);
            if (((v31 + 4096) & 0xF000) != 0)
            {
              v31 += 4096;
            }

            *(a1 + 108) = v31;
            v11 = 4;
            goto LABEL_37;
          }

          if (a3 != 9)
          {
LABEL_37:
            v35 = *(a1 + 48);
            v39[0] = v10;
            v38[0] = @"transactionUUID";
            v38[1] = @"rawCommandCount";
            v36 = [NSNumber numberWithUnsignedInt:*(a1 + 24)];
            v39[1] = v36;
            v38[2] = @"rawBytesRx";
            v19 = [NSNumber numberWithUnsignedLongLong:*(a1 + 16)];
            v39[2] = v19;
            v38[3] = @"rawBytesTx";
            v20 = [NSNumber numberWithUnsignedLongLong:*(a1 + 8)];
            v39[3] = v20;
            v38[4] = @"duration";
            v21 = [NSNumber numberWithUnsignedInt:v8];
            v39[4] = v21;
            v38[5] = @"durationDim";
            v22 = [NSNumber numberWithUnsignedInt:v8];
            v39[5] = v22;
            v38[6] = @"tagType";
            v23 = [NSNumber numberWithUnsignedInt:v11];
            v39[6] = v23;
            v38[7] = @"isConnectionHandover";
            [NSNumber numberWithBool:*(a1 + 165)];
            v24 = v37 = v10;
            v39[7] = v24;
            v38[8] = @"isCoreNFC";
            [NSNumber numberWithBool:*(a1 + 166)];
            v25 = v34 = v8;
            v39[8] = v25;
            v26 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:9];
            [v35 addEntriesFromDictionary:v26];

            v27 = +[NFCALogger sharedCALogger];
            [v27 postCAEventFor:@"com.apple.nfcd.tagReadEvent" eventInput:*(a1 + 48)];

            ++*(a1 + 156);
            *(a1 + 104) += v34;
            *(a1 + 120) = vadd_s32(*(a1 + 120), vrev64_s32(vmovn_s64(*(a1 + 8))));
            *(a1 + 128) += *(a1 + 24);
            v28 = *(a1 + 40);
            *(a1 + 40) = 0;

            *(a1 + 32) = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
            *(a1 + 24) = 0;
            [*(a1 + 48) removeAllObjects];
            [*(a1 + 48) addEntriesFromDictionary:&off_100339EB8];

LABEL_38:
            v29 = *(a1 + 40);
            *(a1 + 40) = 0;

            goto LABEL_39;
          }
        }

        v12 = 983040;
        v13 = 0x10000;
      }

      v17 = *(a1 + 108) + v13;
      if ((v17 & v12) != 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = *(a1 + 108);
      }

      *(a1 + 108) = v18;
    }

    if (a3 > 0x10)
    {
      v11 = 0;
    }

    else
    {
      v11 = dword_100297C60[a3];
    }

    goto LABEL_37;
  }

LABEL_39:
}

void sub_10024E250(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 40))
    {
      [*(a1 + 48) setObject:&off_100336AC8 forKeyedSubscript:@"isNdef"];
      v4 = [NSNumber numberWithUnsignedLong:a2];
      [*(a1 + 48) setObject:v4 forKeyedSubscript:@"ndefPayloadSize"];

      *(a1 + 160) = 1;
    }
  }
}

void sub_10024E2D4(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = a2;
    sub_10024DCA4(a1, v3);
    [*(a1 + 48) setObject:&off_100336AC8 forKeyedSubscript:@"tagProhibited"];
    [*(a1 + 48) setObject:&off_100336AE0 forKeyedSubscript:@"resultCode"];
    sub_10024DD78(a1, v3, [v3 type]);
  }
}

void sub_10024E378(uint64_t a1, uint64_t a2)
{
  if (a1 && *(a1 + 40))
  {
    v3 = [NSNumber numberWithUnsignedInt:a2];
    [*(a1 + 48) setObject:v3 forKeyedSubscript:@"backgroundTagReadResult"];
  }
}

void sub_10024E3FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v5 = v3;
    if (([v3 code] & 0x8000000000000000) != 0 || objc_msgSend(v5, "code") > 75)
    {
      [*(a1 + 48) setObject:&off_100336AF8 forKeyedSubscript:@"resultCode"];
    }

    else
    {
      v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 code]);
      [*(a1 + 48) setObject:v4 forKeyedSubscript:@"resultCode"];
    }

    v3 = v5;
  }
}

void sub_10024E4B4(uint64_t a1, void *a2, int a3, void *a4)
{
  v10 = a2;
  v8 = a4;
  if (a1)
  {
    sub_10024DBA0(a1);
    v9 = +[NFCALogger sharedCALogger];
    *(a1 + 56) = [v9 getTimestamp];

    objc_storeStrong((a1 + 136), a2);
    *(a1 + 152) = a3;
    objc_storeStrong((a1 + 144), a4);
  }
}

void sub_10024E568(uint64_t a1, uint64_t a2)
{
  if (a1 && *(a1 + 56))
  {
    v4 = +[NFCALogger sharedCALogger];
    *(a1 + 64) = [v4 getDurationFrom:*(a1 + 56)];

    v5 = +[NFCALogger getBatteryPercent];
    v33[0] = *(a1 + 136);
    v32[0] = @"sessionUUID";
    v32[1] = @"sessionType";
    v31 = [NSNumber numberWithUnsignedInt:*(a1 + 152)];
    v33[1] = v31;
    v32[2] = @"tagCount";
    v30 = [NSNumber numberWithUnsignedInt:*(a1 + 156)];
    v33[2] = v30;
    v32[3] = @"tagTypeCountSetA";
    v29 = [NSNumber numberWithUnsignedInt:*(a1 + 108)];
    v33[3] = v29;
    v32[4] = @"tagTypeCountSetB";
    v28 = [NSNumber numberWithUnsignedInt:*(a1 + 112)];
    v33[4] = v28;
    v32[5] = @"sessionDuration";
    v27 = [NSNumber numberWithUnsignedInt:*(a1 + 64)];
    v33[5] = v27;
    v32[6] = @"sessionDurationDim";
    v26 = [NSNumber numberWithUnsignedInt:*(a1 + 64)];
    v33[6] = v26;
    v32[7] = @"pollingDuration";
    v25 = [NSNumber numberWithUnsignedInt:*(a1 + 80)];
    v33[7] = v25;
    v32[8] = @"pollingDurationDim";
    v24 = [NSNumber numberWithUnsignedInt:*(a1 + 80)];
    v33[8] = v24;
    v32[9] = @"connectedDuration";
    v23 = [NSNumber numberWithUnsignedInt:*(a1 + 104)];
    v33[9] = v23;
    v32[10] = @"connectedDurationDim";
    v22 = [NSNumber numberWithUnsignedInt:*(a1 + 104)];
    v33[10] = v22;
    v32[11] = @"batteryLevel";
    v21 = [NSNumber numberWithUnsignedInt:v5];
    v33[11] = v21;
    v32[12] = @"exitReason";
    v6 = [NSNumber numberWithUnsignedInt:a2];
    if (*(a1 + 163))
    {
      v7 = &off_100336AC8;
    }

    else
    {
      v7 = &off_100336A98;
    }

    v33[12] = v6;
    v33[13] = v7;
    v32[13] = @"burnout";
    v32[14] = @"pollingConfig";
    v8 = [NSNumber numberWithUnsignedInt:*(a1 + 116), v6];
    v33[14] = v8;
    v32[15] = @"bytesRx";
    v9 = [NSNumber numberWithUnsignedInt:*(a1 + 120)];
    v33[15] = v9;
    v32[16] = @"bytesTx";
    v10 = [NSNumber numberWithUnsignedInt:*(a1 + 124)];
    v33[16] = v10;
    v32[17] = @"commandCount";
    v11 = [NSNumber numberWithUnsignedInt:*(a1 + 128)];
    v33[17] = v11;
    v32[18] = @"didReadNdef";
    v12 = [NSNumber numberWithBool:*(a1 + 160)];
    v33[18] = v12;
    v32[19] = @"didPACE";
    v13 = [NSNumber numberWithBool:*(a1 + 164)];
    v33[19] = v13;
    v32[20] = @"isConnectionHandover";
    v14 = [NSNumber numberWithBool:*(a1 + 165)];
    v33[20] = v14;
    v32[21] = @"isCoreNFC";
    v15 = [NSNumber numberWithBool:*(a1 + 166)];
    v16 = v15;
    v32[22] = @"appID";
    v17 = *(a1 + 144);
    if (!v17)
    {
      v17 = &stru_10031EA18;
    }

    v33[21] = v15;
    v33[22] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:23];

    v19 = +[NFCALogger sharedCALogger];
    [v19 postCAEventFor:@"com.apple.nfcd.readerSessionEvent" eventInput:v18];

    if (*(a1 + 163) == 1)
    {
      [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339EE0];
    }

    [NFGeneralStatisticsCALogger updateGeneralDeviceStatistic:&off_100339F08];
    sub_10024DBA0(a1);
  }
}

void sub_10024EA4C(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = +[NFCALogger sharedCALogger];
    *(a1 + 72) = [v4 getTimestamp];

    *(a1 + 116) = a2;
  }
}

void sub_10024EAA4(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 72))
    {
      v2 = +[NFCALogger sharedCALogger];
      *(a1 + 80) += [v2 getDurationFrom:*(a1 + 72)];

      *(a1 + 72) = 0;
    }
  }
}

void sub_10024EB60(uint64_t a1, void *a2, void *a3, char a4, int a5)
{
  v8 = a2;
  v9 = a3;
  v10 = objc_opt_self();
  v11 = [v9 objectForKeyedSubscript:@"EventType"];
  v220 = v11;
  v214 = v9;
  v215 = v8;
  if (!v11)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v16 = Logger;
      Class = object_getClass(v10);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v10);
      Name = sel_getName("postAnalyticsHciTransactionEventWithEventDict:atlData:withExpressEnabled:prepOnly:");
      v20 = 45;
      if (isMetaClass)
      {
        v20 = 43;
      }

      v16(6, "%c[%{public}s %{public}s]:%i No valid event from ATL, HCI didn't contain a relevant message", v20, ClassName, Name, 137);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v22 = object_getClass(v10);
    if (class_isMetaClass(v22))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    *buf = 67109890;
    v262 = v23;
    v263 = 2082;
    v264 = object_getClassName(v10);
    v265 = 2082;
    v266 = sel_getName("postAnalyticsHciTransactionEventWithEventDict:atlData:withExpressEnabled:prepOnly:");
    v267 = 1024;
    v268 = 137;
    v24 = "%c[%{public}s %{public}s]:%i No valid event from ATL, HCI didn't contain a relevant message";
    v25 = v21;
    v26 = 34;
    goto LABEL_26;
  }

  v12 = v11;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v12 isEqualToString:@"EndEvent"])
    {
      [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339F30];
    }

    if (a5)
    {
      if ([v12 isEqualToString:@"ActivityTimeout"])
      {
        v13 = +[NSDate now];
        v14 = qword_10035DB58;
        qword_10035DB58 = v13;
      }

      else
      {
        if (qword_10035DB50)
        {
          v49 = +[NSUUID UUID];
          v50 = [v49 UUIDString];

          if (qword_10035DB58)
          {
            [qword_10035DB58 timeIntervalSinceDate:qword_10035DB50];
            v52 = (v51 * 1000.0);
            v53 = qword_10035DB58 == 0;
          }

          else
          {
            v52 = 0;
            v53 = 1;
          }

          v252[0] = @"transactionUUID";
          v252[1] = @"command";
          v253[0] = v50;
          v253[1] = off_10035D580[0];
          v252[2] = @"commandParam1";
          v252[3] = @"commandResult";
          v252[4] = @"status";
          v252[5] = @"aid";
          v255 = off_10035D5A8;
          v256 = off_10035D5A0;
          v257 = off_10035D598;
          v252[6] = @"expressType";
          v252[7] = @"closingEventType";
          v254 = *off_10035D588;
          if (v53)
          {
            v159 = v220;
            v160 = &off_100336B10;
          }

          else
          {
            v160 = [NSNumber numberWithUnsignedInteger:v52];
            v159 = @"ActivityTimeout";
          }

          v258 = v159;
          v259 = &off_100336B10;
          v252[8] = @"transactionDurationMS";
          v252[9] = @"timeoutValue";
          v260 = v160;
          v161 = [NSDictionary dictionaryWithObjects:v253 forKeys:v252 count:10];
          if (!v53)
          {
          }

          v162 = +[NFCALogger sharedCALogger];
          [v162 postCAEventFor:@"com.apple.nfcd.hciTransactionEvent" eventInput:v161];

          if ([off_10035D590[0] unsignedIntValue] != 36864)
          {
            [NFExceptionsCALogger postAnalyticsHciTransactionException:v50 eventType:v220 commandResult:off_10035D590[0] status:&off_100336B10];
          }

          [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339F58];
          if (qword_10035DB58)
          {
            [NFExceptionsCALogger postAnalyticsHciTransactionException:v50 eventType:v220 commandResult:&off_100336B10 status:off_10035D5A8];
            [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339F80];
          }

          v163 = qword_10035DB50;
          qword_10035DB50 = 0;

          v164 = off_10035D580[0];
          off_10035D580[0] = &off_100336B10;

          v165 = off_10035D588[0];
          off_10035D588[0] = &off_100336B10;

          v166 = off_10035D590[0];
          off_10035D590[0] = &off_100336B10;

          v167 = off_10035D5A8;
          off_10035D5A8 = &off_100336B10;

          v168 = off_10035D598;
          off_10035D598 = &off_100336B10;

          v169 = off_10035D5A0;
          off_10035D5A0 = &stru_10031EA18;

          v170 = off_10035D5B0;
          off_10035D5B0 = &stru_10031EA18;

          v171 = qword_10035DB58;
          qword_10035DB58 = 0;

          v9 = v214;
        }

        v172 = +[NSDate now];
        v173 = qword_10035DB50;
        qword_10035DB50 = v172;

        v174 = [v8 objectForKeyedSubscript:@"command"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v176 = [v8 objectForKeyedSubscript:@"command"];
          v177 = off_10035D580[0];
          off_10035D580[0] = v176;
        }

        v178 = [v8 objectForKeyedSubscript:@"commandParam1"];
        objc_opt_class();
        v179 = objc_opt_isKindOfClass();

        if (v179)
        {
          v180 = [v8 objectForKeyedSubscript:@"commandParam1"];
          v181 = off_10035D588[0];
          off_10035D588[0] = v180;
        }

        v182 = [v8 objectForKeyedSubscript:@"commandResult"];
        objc_opt_class();
        v183 = objc_opt_isKindOfClass();

        if (v183)
        {
          v184 = [v8 objectForKeyedSubscript:@"commandResult"];
          v185 = off_10035D590[0];
          off_10035D590[0] = v184;
        }

        v186 = [v8 objectForKeyedSubscript:@"expressType"];
        objc_opt_class();
        v187 = objc_opt_isKindOfClass();

        if (v187)
        {
          v188 = [v8 objectForKeyedSubscript:@"expressType"];
          v189 = off_10035D598;
          off_10035D598 = v188;
        }

        v190 = [v9 objectForKeyedSubscript:@"appletIdentifier"];
        objc_opt_class();
        v191 = objc_opt_isKindOfClass();

        if (v191)
        {
          v192 = [v9 objectForKeyedSubscript:@"appletIdentifier"];
          v193 = off_10035D5A0;
          off_10035D5A0 = v192;

          objc_storeStrong(&off_10035D5B0, off_10035D5A0);
        }
      }

      goto LABEL_28;
    }

    v44 = +[NSUUID UUID];
    v213 = [v44 UUIDString];

    v202 = +[NSDate now];
    v45 = [v8 objectForKeyedSubscript:@"aid"];
    objc_opt_class();
    v46 = objc_opt_isKindOfClass();

    if (v46)
    {
      v211 = [v8 objectForKeyedSubscript:@"aid"];
      v47 = [v211 NF_asHexString];
      v48 = off_10035D5B0;
      off_10035D5B0 = v47;

      if (!off_10035D5B0)
      {
        off_10035D5B0 = &stru_10031EA18;
      }
    }

    else
    {
      v211 = 0;
    }

    v54 = [v8 objectForKeyedSubscript:@"informative"];
    objc_opt_class();
    v55 = objc_opt_isKindOfClass();

    if (v55)
    {
      v212 = [v8 objectForKeyedSubscript:@"informative"];
    }

    else
    {
      v212 = &off_100336B10;
    }

    v56 = [v8 objectForKeyedSubscript:@"SPRaw"];
    objc_opt_class();
    v57 = objc_opt_isKindOfClass();

    if (v57)
    {
      v209 = [v8 objectForKeyedSubscript:@"SPRaw"];
    }

    else
    {
      v209 = &off_100336B10;
    }

    v58 = [v8 objectForKeyedSubscript:@"status"];
    objc_opt_class();
    v59 = objc_opt_isKindOfClass();

    if (v59)
    {
      v60 = [v8 objectForKeyedSubscript:@"status"];
      v61 = off_10035D5A8;
      off_10035D5A8 = v60;
    }

    v62 = [v8 objectForKeyedSubscript:@"transactionStatus"];
    objc_opt_class();
    v63 = objc_opt_isKindOfClass();

    v64 = @"transactionStatus";
    if (v63 & 1) != 0 || (v64 = @"result", [v8 objectForKeyedSubscript:@"result"], v65 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v66 = objc_opt_isKindOfClass(), v65, (v66))
    {
      v222 = [v8 objectForKeyedSubscript:v64];
    }

    else
    {
      v222 = &off_100336B10;
    }

    v67 = v8;
    v68 = [v8 objectForKeyedSubscript:@"transactionCategory"];
    objc_opt_class();
    v69 = objc_opt_isKindOfClass();

    if (v69)
    {
      v208 = [v8 objectForKeyedSubscript:@"transactionCategory"];
    }

    else
    {
      v208 = &off_100336B10;
    }

    v70 = [v8 objectForKeyedSubscript:@"transactionType"];
    objc_opt_class();
    v71 = objc_opt_isKindOfClass();

    if (v71)
    {
      v207 = [v8 objectForKeyedSubscript:@"transactionType"];
    }

    else
    {
      v207 = &off_100336B10;
    }

    v72 = [v8 objectForKeyedSubscript:@"expressType"];
    objc_opt_class();
    v73 = objc_opt_isKindOfClass();

    if (v73)
    {
      v74 = [v8 objectForKeyedSubscript:@"expressType"];
      v75 = off_10035D598;
      off_10035D598 = v74;
    }

    v76 = [v8 objectForKeyedSubscript:@"transactionExtension"];
    objc_opt_class();
    v77 = objc_opt_isKindOfClass();

    if (v77)
    {
      v210 = [v8 objectForKeyedSubscript:@"transactionExtension"];
    }

    else
    {
      v210 = &off_100336B10;
    }

    v200 = a4;
    v78 = [v8 objectForKeyedSubscript:@"accessUniversityCode"];
    objc_opt_class();
    v79 = objc_opt_isKindOfClass();

    if (v79)
    {
      v80 = [v8 objectForKeyedSubscript:@"accessUniversityCode"];
    }

    else
    {
      v80 = &off_100336B10;
    }

    v81 = [v8 objectForKeyedSubscript:@"interface"];
    objc_opt_class();
    v82 = objc_opt_isKindOfClass();

    if (v82)
    {
      v83 = [v8 objectForKeyedSubscript:@"interface"];
    }

    else
    {
      v83 = &off_100336B28;
    }

    v206 = v83;
    v84 = [v8 objectForKeyedSubscript:@"ReadOperationInfo"];
    objc_opt_class();
    v85 = objc_opt_isKindOfClass();

    if (v85)
    {
      v86 = [v8 objectForKeyedSubscript:@"ReadOperationInfo"];
    }

    else
    {
      v86 = &off_100336B10;
    }

    v87 = [v67 objectForKeyedSubscript:@"WriteOperationInfo"];
    objc_opt_class();
    v88 = objc_opt_isKindOfClass();

    if (v88)
    {
      v218 = [v67 objectForKeyedSubscript:@"WriteOperationInfo"];
    }

    else
    {
      v218 = &off_100336B10;
    }

    v89 = [v67 objectForKeyedSubscript:@"NFMultiTagState"];
    objc_opt_class();
    v90 = objc_opt_isKindOfClass();

    v219 = v86;
    if (v90)
    {
      v91 = [v67 objectForKeyedSubscript:@"NFMultiTagState"];
    }

    else
    {
      v91 = &off_100336B10;
    }

    v216 = v80;
    v217 = v91;
    v92 = [v67 objectForKeyedSubscript:@"terminalType"];
    objc_opt_class();
    v93 = objc_opt_isKindOfClass();

    if (v93)
    {
      v94 = [v67 objectForKeyedSubscript:@"terminalType"];
    }

    else
    {
      v94 = &off_100336B10;
    }

    v205 = v94;
    v95 = [v67 objectForKeyedSubscript:@"command"];
    objc_opt_class();
    v96 = objc_opt_isKindOfClass();

    v97 = v67;
    if (v96 & 1) != 0 || ([v9 objectForKeyedSubscript:@"command"], v98 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v99 = objc_opt_isKindOfClass(), v98, v97 = v9, (v99))
    {
      v203 = [v97 objectForKeyedSubscript:@"command"];
    }

    else
    {
      v203 = &off_100336B10;
    }

    v100 = [v67 objectForKeyedSubscript:@"commandParam1"];
    objc_opt_class();
    v101 = objc_opt_isKindOfClass();

    if (v101)
    {
      v204 = [v67 objectForKeyedSubscript:@"commandParam1"];
    }

    else
    {
      v204 = &off_100336B10;
    }

    v102 = [v67 objectForKeyedSubscript:@"status"];
    objc_opt_class();
    v103 = objc_opt_isKindOfClass();

    if (v103)
    {
      v104 = @"status";
      v105 = v67;
    }

    else
    {
      v106 = [v9 objectForKeyedSubscript:@"result"];
      objc_opt_class();
      v107 = objc_opt_isKindOfClass();

      if ((v107 & 1) == 0)
      {
        v199 = &off_100336B10;
LABEL_91:
        v108 = [v9 objectForKeyedSubscript:@"didError"];
        objc_opt_class();
        v109 = v9;
        v110 = objc_opt_isKindOfClass();

        if (v110)
        {
          v111 = [v109 objectForKeyedSubscript:@"didError"];
          v198 = [v111 BOOLValue];
        }

        else
        {
          v198 = 0;
        }

        v112 = off_10035D5B0;
        objc_opt_self();
        v113 = [[NSData alloc] initWithBytes:&unk_100297CA4 length:7];
        v114 = [v113 NF_asHexString];
        if (([(__CFString *)v112 hasPrefix:v114]& 1) == 0)
        {
          v115 = [[NSData alloc] initWithBytes:&unk_100297CAB length:7];
          v116 = [v115 NF_asHexString];
          if (([(__CFString *)v112 hasPrefix:v116]& 1) == 0)
          {
            v117 = [[NSData alloc] initWithBytes:&unk_100297CB2 length:9];
            v118 = [v117 NF_asHexString];
            if (([(__CFString *)v112 hasPrefix:?]& 1) == 0)
            {
              v157 = [[NSData alloc] initWithBytes:&unk_100297CBB length:13];
              v158 = [v157 NF_asHexString];
              v197 = [(__CFString *)v112 hasPrefix:v158];

              v67 = v215;
              if ((v197 & 1) == 0)
              {
                v121 = &off_100336B10;
                v122 = v210;
                goto LABEL_103;
              }

LABEL_100:
              v119 = [v67 objectForKeyedSubscript:@"supportsUWB"];
              objc_opt_class();
              v120 = objc_opt_isKindOfClass();

              v121 = &off_100336B28;
              v122 = v210;
              if (v120)
              {
                v123 = [v67 objectForKeyedSubscript:@"supportsUWB"];
                v124 = [v123 BOOLValue];

                if (v124)
                {
                  v121 = &off_100336B40;
                }
              }

LABEL_103:
              if (v200)
              {
                v201 = 1;
              }

              else
              {
                v125 = [v67 objectForKeyedSubscript:@"expressEnabled"];
                objc_opt_class();
                v126 = objc_opt_isKindOfClass();

                if (v126)
                {
                  v127 = [v67 objectForKeyedSubscript:@"expressEnabled"];
                  v201 = [v127 BOOLValue];
                }

                else
                {
                  v201 = 0;
                }
              }

              if (qword_10035DB50)
              {
                [v202 timeIntervalSinceDate:?];
                v129 = (v128 * 1000.0);
                if (qword_10035DB58)
                {
                  [qword_10035DB58 timeIntervalSinceDate:qword_10035DB50];
                  v131 = (v130 * 1000.0);
                  goto LABEL_113;
                }
              }

              else
              {
                v129 = 0;
              }

              v131 = 0;
LABEL_113:
              v132 = &off_100336B10;
              if ([v211 length] >= 0xA)
              {
                v133 = v129;
                v134 = [v211 subdataWithRange:{0, 10}];
                v135 = [[NSData alloc] initWithBytes:&unk_100297CC8 length:10];
                v136 = [v134 isEqualToData:v135];

                if (v136)
                {
                  v132 = [v214 objectForKeyedSubscript:@"identityAuthStatus"];
                }

                v122 = v210;
                v129 = v133;
              }

              v223[0] = @"transactionUUID";
              v223[1] = @"command";
              v137 = sub_10007C824();
              v224[0] = v213;
              v224[1] = off_10035D580[0];
              v225 = *off_10035D588;
              v223[2] = @"commandParam1";
              v223[3] = @"commandResult";
              v223[4] = @"status";
              v223[5] = @"expressType";
              v226 = off_10035D5A8;
              v227 = off_10035D598;
              v223[6] = @"aid";
              v223[7] = @"informative";
              v228 = off_10035D5B0;
              v229 = v212;
              v223[8] = @"SPID";
              v223[9] = @"transactionStatus";
              v230 = v209;
              v231 = v222;
              v223[10] = @"transactionCategory";
              v223[11] = @"transactionType";
              v232 = v208;
              v233 = v207;
              v223[12] = @"transactionExtension";
              v223[13] = @"accessUniversityCode";
              v234 = v122;
              v235 = v216;
              v223[14] = @"endEventInterface";
              v223[15] = @"sfiRead";
              v236 = v206;
              v237 = v219;
              v223[16] = @"sfiUpdated";
              v223[17] = @"multiTagState";
              v238 = v218;
              v239 = v217;
              v240 = v205;
              v223[18] = @"terminalType";
              v223[19] = @"transactionDurationMS";
              v138 = [NSNumber numberWithUnsignedInteger:v129];
              v241 = v138;
              v223[20] = @"timeoutValue";
              v139 = [NSNumber numberWithUnsignedInteger:v131];
              v242 = v139;
              v243 = v203;
              v223[21] = @"endEventCommand";
              v223[22] = @"endEventCommandParam1";
              v244 = v204;
              v245 = v199;
              v223[23] = @"endEventCommandResult";
              v223[24] = @"didError";
              v140 = &__kCFBooleanFalse;
              if (v198)
              {
                v140 = &__kCFBooleanTrue;
              }

              v246 = v140;
              v247 = v220;
              v223[25] = @"closingEventType";
              v223[26] = @"keyType";
              v248 = v121;
              v223[27] = @"expressEnabled";
              v141 = [NSNumber numberWithBool:v201];
              v249 = v141;
              v250 = v132;
              v223[28] = @"identityAuthStatus";
              v223[29] = @"deviceOrientation";
              v142 = [NSNumber numberWithUnsignedInteger:v137];
              v251 = v142;
              v143 = [NSDictionary dictionaryWithObjects:v224 forKeys:v223 count:30];

              v144 = +[NFCALogger sharedCALogger];
              [v144 postCAEventFor:@"com.apple.nfcd.hciTransactionEvent" eventInput:v143];

              if ([(__CFString *)v220 isEqualToString:@"EndEvent"])
              {
                if (v198)
                {
                  v145 = &off_100339FA8;
                  v146 = v222;
                  v147 = v207;
                }

                else
                {
                  v146 = v222;
                  v147 = v207;
                  if ([v222 unsignedIntValue] != 256 && (objc_msgSend(v212, "unsignedIntValue") & 0x80) == 0)
                  {
                    goto LABEL_128;
                  }

                  v145 = &off_100339FA8;
                }
              }

              else
              {
                v146 = v222;
                v147 = v207;
                if (![(__CFString *)v220 isEqualToString:@"ActivityTimeout"])
                {
LABEL_128:
                  v221 = v146;
                  v148 = qword_10035DB50;
                  qword_10035DB50 = 0;

                  v149 = qword_10035DB58;
                  qword_10035DB58 = 0;

                  v150 = off_10035D580[0];
                  off_10035D580[0] = &off_100336B10;

                  v151 = off_10035D588[0];
                  off_10035D588[0] = &off_100336B10;

                  v152 = off_10035D590[0];
                  off_10035D590[0] = &off_100336B10;

                  v153 = off_10035D598;
                  off_10035D598 = &off_100336B10;

                  v154 = off_10035D5A0;
                  off_10035D5A0 = &stru_10031EA18;

                  v155 = off_10035D5A8;
                  off_10035D5A8 = &off_100336B10;

                  v156 = off_10035D5B0;
                  off_10035D5B0 = &stru_10031EA18;

                  v37 = v208;
                  v38 = v209;
                  v35 = v210;
                  v40 = v199;
                  v42 = v203;
                  v41 = v204;
                  v36 = v147;
                  v34 = v205;
                  v43 = v206;
                  v39 = v212;
                  goto LABEL_29;
                }

                v145 = &off_100339FD0;
              }

              [NFExceptionsCALogger postAnalyticsHciTransactionException:v213 eventType:v220 commandResult:v199 status:off_10035D5A8];
              [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:v145];
              goto LABEL_128;
            }

            v67 = v215;
          }
        }

        goto LABEL_100;
      }

      v104 = @"result";
      v105 = v9;
    }

    v199 = [v105 objectForKeyedSubscript:v104];
    goto LABEL_91;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v27 = NFLogGetLogger();
  if (v27)
  {
    v28 = v27;
    v29 = object_getClass(v10);
    v30 = class_isMetaClass(v29);
    v194 = object_getClassName(v10);
    v196 = sel_getName("postAnalyticsHciTransactionEventWithEventDict:atlData:withExpressEnabled:prepOnly:");
    v31 = 45;
    if (v30)
    {
      v31 = 43;
    }

    v28(6, "%c[%{public}s %{public}s]:%i Error : invalid event class : %{public}@", v31, v194, v196, 141, v12);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v21 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v32 = object_getClass(v10);
    if (class_isMetaClass(v32))
    {
      v33 = 43;
    }

    else
    {
      v33 = 45;
    }

    *buf = 67110146;
    v262 = v33;
    v263 = 2082;
    v264 = object_getClassName(v10);
    v265 = 2082;
    v266 = sel_getName("postAnalyticsHciTransactionEventWithEventDict:atlData:withExpressEnabled:prepOnly:");
    v267 = 1024;
    v268 = 141;
    v269 = 2114;
    v270 = v12;
    v24 = "%c[%{public}s %{public}s]:%i Error : invalid event class : %{public}@";
    v25 = v21;
    v26 = 44;
LABEL_26:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
  }

LABEL_27:

LABEL_28:
  v34 = &off_100336B10;
  v217 = &off_100336B10;
  v218 = &off_100336B10;
  v219 = &off_100336B10;
  v216 = &off_100336B10;
  v35 = &off_100336B10;
  v36 = &off_100336B10;
  v37 = &off_100336B10;
  v221 = &off_100336B10;
  v38 = &off_100336B10;
  v39 = &off_100336B10;
  v40 = &off_100336B10;
  v41 = &off_100336B10;
  v42 = &off_100336B10;
  v43 = &off_100336B28;
LABEL_29:
}

void sub_1002503FC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v9[0] = @"status";
  if (v4)
  {
    v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
  }

  else
  {
    v6 = &off_100336B10;
  }

  v9[1] = @"aid";
  v10[0] = v6;
  v10[1] = v5;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (v4)
  {
  }

  v8 = +[NFCALogger sharedCALogger];
  [v8 postCAEventFor:@"com.apple.nfcd.eCommerceTransactionEvent" eventInput:v7];
}

void sub_100250520(uint64_t a1, void *a2, int a3)
{
  v28 = a2;
  v4 = objc_opt_self();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_25;
  }

  [v5 setObject:&off_100336B40 forKeyedSubscript:@"version"];
  v9 = @"appletIdentifier";
  v10 = [v28 objectForKeyedSubscript:@"appletIdentifier"];

  if (v10 || (v9 = @"aid", [v28 objectForKeyedSubscript:@"aid"], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [v28 objectForKeyedSubscript:v9];
    v13 = [NSData NF_dataWithHexString:v12];

    if (v13)
    {
      [v5 setObject:v13 forKeyedSubscript:@"aid"];
    }
  }

  v14 = [v28 objectForKeyedSubscript:@"result"];

  if (v14)
  {
    v15 = [v28 objectForKeyedSubscript:@"result"];
    [v5 setObject:v15 forKeyedSubscript:@"result"];
  }

  v16 = [v28 objectForKeyedSubscript:@"transactionStatus"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v18 = [v28 objectForKeyedSubscript:@"transactionStatus"];
    [v5 setObject:v18 forKeyedSubscript:@"transactionStatus"];
  }

  v19 = [v28 objectForKeyedSubscript:@"expressType"];

  if (v19)
  {
    v20 = [v28 objectForKeyedSubscript:@"expressType"];
    [v5 setObject:v20 forKeyedSubscript:@"expressType"];
  }

  if (a3)
  {
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"expressEnabled"];
LABEL_19:
    v22 = v28;
    goto LABEL_20;
  }

  v21 = [v28 objectForKeyedSubscript:@"expressEnabled"];

  v22 = v28;
  if (v21)
  {
    v23 = [v28 objectForKeyedSubscript:@"expressEnabled"];
    [v5 setObject:v23 forKeyedSubscript:@"expressEnabled"];

    goto LABEL_19;
  }

LABEL_20:
  v24 = [v22 objectForKeyedSubscript:@"felicaInfo"];

  if (v24)
  {
    v25 = [v28 objectForKeyedSubscript:@"felicaInfo"];
    v26 = [v25 objectForKeyedSubscript:@"NFServiceProviderID"];

    if (v26)
    {
      v27 = [v25 objectForKeyedSubscript:@"NFServiceProviderID"];
      [v5 setObject:v27 forKeyedSubscript:@"SPRaw"];
    }
  }

  [v7 setObject:@"EndEvent" forKeyedSubscript:@"EventType"];
  sub_10024EB60(v4, v5, v7, a3, 0);
LABEL_25:
}

void sub_1002508A4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 objectForKeyedSubscript:@"appletIdentifier"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v2 objectForKeyedSubscript:@"appletIdentifier"];
  }

  else
  {
    v5 = &stru_10031EA18;
  }

  v6 = [v2 objectForKeyedSubscript:@"Version"];
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();

  if (v7)
  {
    v8 = [v2 objectForKeyedSubscript:@"Version"];
  }

  else
  {
    v8 = &off_100336B10;
  }

  v9 = [v2 objectForKeyedSubscript:@"Interface"];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if (v10)
  {
    v11 = [v2 objectForKeyedSubscript:@"Interface"];
  }

  else
  {
    v11 = &off_100336B10;
  }

  v12 = [v2 objectForKeyedSubscript:@"UnavailableCertFileId"];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  if (v13)
  {
    v14 = [v2 objectForKeyedSubscript:@"UnavailableCertFileId"];
  }

  else
  {
    v14 = &off_100336B10;
  }

  v15 = [v2 objectForKeyedSubscript:@"UnavailableCertAvailablityInfo"];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    v17 = [v2 objectForKeyedSubscript:@"UnavailableCertAvailablityInfo"];
  }

  else
  {
    v17 = &off_100336B10;
  }

  v20[0] = @"aid";
  v20[1] = @"version";
  v21[0] = v5;
  v21[1] = v8;
  v20[2] = @"interface";
  v20[3] = @"fileId";
  v21[2] = v11;
  v21[3] = v14;
  v20[4] = @"availabilityInfo";
  v21[4] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:5];
  v19 = +[NFCALogger sharedCALogger];
  [v19 postCAEventFor:@"com.apple.nfcd.mDocHybridUnavailableCertEvent" eventInput:v18];
}

void sub_1002512B0(uint64_t a1)
{
  v2 = [*(a1 + 32) serialNumber];
  v3 = objc_opt_new();
  v88 = objc_opt_new();
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = [v3 fetchAppletEntitiesWithError:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (*(*(*(a1 + 40) + 8) + 40) || ![v5 count])
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
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Could not load applets from storage : %{public}@ (config %{public}@)", v12, ClassName, Name, 82, *(*(*(a1 + 40) + 8) + 40), v5);
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
      v18 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 67110402;
      v100 = v15;
      v101 = 2082;
      v102 = v16;
      v103 = 2082;
      v104 = v17;
      v105 = 1024;
      v106 = 82;
      v107 = 2114;
      v108 = v18;
      v109 = 2114;
      v110 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not load applets from storage : %{public}@ (config %{public}@)", buf, 0x36u);
    }

    goto LABEL_11;
  }

  v13 = [v5 objectForKey:@"applets"];
  v19 = [v5 objectForKey:@"crsUpdateCounter"];
  v20 = [v5 objectForKey:@"seid"];
  v86 = v19;
  v87 = v20;
  if (v20)
  {
    v21 = v20;
    if ([v20 isEqualToString:v2])
    {
      if (!v13)
      {
        goto LABEL_51;
      }

      objc_opt_class();
      v85 = v13;
      if (objc_opt_isKindOfClass())
      {
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v22 = v13;
        v23 = [v22 countByEnumeratingWithState:&v89 objects:v96 count:16];
        if (!v23)
        {
LABEL_50:

          v13 = v85;
LABEL_51:
          if (v19)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v88 count])
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v66 = NFLogGetLogger();
                if (v66)
                {
                  v67 = v66;
                  v68 = object_getClass(*(a1 + 32));
                  v69 = class_isMetaClass(v68);
                  v70 = object_getClassName(*(a1 + 32));
                  v71 = sel_getName(*(a1 + 48));
                  v82 = [v88 count];
                  v72 = 45;
                  if (v69)
                  {
                    v72 = 43;
                  }

                  v67(6, "%c[%{public}s %{public}s]:%i Loading applets from storage into cache using counter %{public}@ : %ld applets", v72, v70, v71, 76, v86, v82);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v73 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
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
                  v78 = [v88 count];
                  *buf = 67110402;
                  v100 = v75;
                  v101 = 2082;
                  v102 = v76;
                  v103 = 2082;
                  v104 = v77;
                  v105 = 1024;
                  v106 = 76;
                  v107 = 2114;
                  v108 = v86;
                  v109 = 2048;
                  v110 = v78;
                  _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Loading applets from storage into cache using counter %{public}@ : %ld applets", buf, 0x36u);
                }

                v19 = v86;
                v79 = [v86 copy];
                [*(a1 + 32) setCachedAppletUpdateCounter:v79];

                [*(a1 + 32) setCachedAppletsUnfiltered:v88];
                v21 = v87;
              }
            }
          }

LABEL_11:
          [v3 disconnect];
          goto LABEL_12;
        }

        v24 = v23;
        v83 = v2;
        v25 = *v90;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v90 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v89 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = [[NSMutableDictionary alloc] initWithDictionary:v27];
              [v28 setObject:&off_100336B58 forKeyedSubscript:@"activationState"];
              v29 = [[NFApplet alloc] initWithDictionary:v28];
              if (v29)
              {
                [v88 addObject:v29];
              }
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v89 objects:v96 count:16];
        }

        while (v24);
        v2 = v83;
      }

      else
      {
        v84 = [NSError alloc];
        v48 = [NSString stringWithUTF8String:"nfcd"];
        v94[0] = NSLocalizedDescriptionKey;
        v49 = [NSString stringWithUTF8String:"Invalid State"];
        v95[0] = v49;
        v95[1] = &off_100336B70;
        v94[1] = @"Line";
        v94[2] = @"Method";
        v50 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
        v95[2] = v50;
        v94[3] = NSDebugDescriptionErrorKey;
        v51 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 72];
        v95[3] = v51;
        v52 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:4];
        v53 = [v84 initWithDomain:v48 code:12 userInfo:v52];
        v54 = *(*(a1 + 40) + 8);
        v55 = *(v54 + 40);
        *(v54 + 40) = v53;

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v56 = NFLogGetLogger();
        if (v56)
        {
          v57 = v56;
          v58 = object_getClass(*(a1 + 32));
          v59 = class_isMetaClass(v58);
          v60 = object_getClassName(*(a1 + 32));
          v81 = sel_getName(*(a1 + 48));
          v61 = 45;
          if (v59)
          {
            v61 = 43;
          }

          v57(3, "%c[%{public}s %{public}s]:%i Invalid applet storage", v61, v60, v81, 73);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v22 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
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
          v100 = v63;
          v101 = 2082;
          v102 = v64;
          v103 = 2082;
          v104 = v65;
          v105 = 1024;
          v106 = 73;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid applet storage", buf, 0x22u);
        }
      }

      v19 = v86;
      v21 = v87;
      goto LABEL_50;
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v30 = NFLogGetLogger();
  if (v30)
  {
    v31 = v30;
    v32 = object_getClass(*(a1 + 32));
    v33 = class_isMetaClass(v32);
    v34 = object_getClassName(*(a1 + 32));
    v80 = sel_getName(*(a1 + 48));
    v35 = 45;
    if (v33)
    {
      v35 = 43;
    }

    v31(6, "%c[%{public}s %{public}s]:%i SEID is not matching : %{public}@ != %{public}@", v35, v34, v80, 50, v87, v2);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v36 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
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
    v40 = sel_getName(*(a1 + 48));
    *buf = 67110402;
    v100 = v38;
    v101 = 2082;
    v102 = v39;
    v103 = 2082;
    v104 = v40;
    v105 = 1024;
    v106 = 50;
    v107 = 2114;
    v108 = v87;
    v109 = 2114;
    v110 = v2;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i SEID is not matching : %{public}@ != %{public}@", buf, 0x36u);
  }

  v41 = [NSError alloc];
  v42 = [NSString stringWithUTF8String:"nfcd"];
  v97 = NSLocalizedDescriptionKey;
  v43 = [NSString stringWithUTF8String:"SEID changed"];
  v98 = v43;
  v44 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];
  v45 = [v41 initWithDomain:v42 code:30 userInfo:v44];
  v46 = *(*(a1 + 40) + 8);
  v47 = *(v46 + 40);
  *(v46 + 40) = v45;

  [v3 disconnect];
LABEL_12:
}

void sub_100251CC8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 asDictionary];
  [v2 addObject:v3];
}

id sub_100251D20(id *a1, void *a2, int a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a1;
    *&v138 = 0;
    *(&v138 + 1) = &v138;
    *&v139 = 0x3032000000;
    *(&v139 + 1) = sub_100006B5C;
    *&v140 = sub_1002512A8;
    *(&v140 + 1) = 0;
    *buf = _NSConcreteStackBlock;
    *v133 = 3221225472;
    *&v133[8] = sub_1002512B0;
    *&v133[16] = &unk_10031A9C0;
    *&v133[24] = a1;
    *&v133[32] = &v138;
    *&v133[40] = "_loadStoredAppletsOnce";
    if (qword_10035DB60 != -1)
    {
      dispatch_once(&qword_10035DB60, buf);
    }

    v5 = *(*(&v138 + 1) + 40);
    _Block_object_dispose(&v138, 8);

    v123[0] = 0;
    v6 = sub_1001599F4(v4, v123);
    v7 = v123[0];
    if (v7 || !v6)
    {
      v120 = v4;
      v15 = [NSError alloc];
      v9 = [NSString stringWithUTF8String:"nfcd"];
      if (v7)
      {
        v16 = [v7 code];
        *&v138 = NSLocalizedDescriptionKey;
        if ([v7 code] > 75)
        {
          v17 = 76;
        }

        else
        {
          v17 = [v7 code];
        }

        v19 = [NSString stringWithUTF8String:off_10031CED8[v17]];
        *buf = v19;
        *v133 = v7;
        *(&v138 + 1) = NSUnderlyingErrorKey;
        *&v139 = @"Line";
        *&v133[8] = &off_100336B88;
        *(&v139 + 1) = @"Method";
        v23 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_selectCRSandReturnGlobalUpdateCounter:")];
        *&v133[16] = v23;
        *&v140 = NSDebugDescriptionErrorKey;
        v27 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_selectCRSandReturnGlobalUpdateCounter:"), 128];
        *&v133[24] = v27;
        v28 = [NSDictionary dictionaryWithObjects:buf forKeys:&v138 count:5];
        v14 = [v15 initWithDomain:v9 code:v16 userInfo:v28];
        v29 = v14;
      }

      else
      {
        *&v138 = NSLocalizedDescriptionKey;
        v19 = [NSString stringWithUTF8String:"Command Error"];
        *buf = v19;
        *v133 = &off_100336B88;
        *(&v138 + 1) = @"Line";
        *&v139 = @"Method";
        v23 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_selectCRSandReturnGlobalUpdateCounter:")];
        *&v133[8] = v23;
        *(&v139 + 1) = NSDebugDescriptionErrorKey;
        v24 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_selectCRSandReturnGlobalUpdateCounter:"), 128];
        *&v133[16] = v24;
        v25 = [NSDictionary dictionaryWithObjects:buf forKeys:&v138 count:4];
        v14 = [v15 initWithDomain:v9 code:16 userInfo:v25];
        v26 = v14;
      }

      v10 = 0;
      v4 = v120;
LABEL_27:
    }

    else
    {
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v8 = [v6 data];
      v9 = [NFTLV TLVsWithData:v8];

      v10 = [v9 countByEnumeratingWithState:&v138 objects:buf count:16];
      if (!v10)
      {
LABEL_14:
        v14 = 0;
        goto LABEL_29;
      }

      v11 = *v139;
LABEL_8:
      v12 = 0;
      while (1)
      {
        if (*v139 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v138 + 1) + 8 * v12);
        if ([v13 tag] == 111)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v9 countByEnumeratingWithState:&v138 objects:buf count:16];
          if (v10)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }

      v18 = [v13 childWithTag:165];
      v19 = [v18 childWithTag:254];

      if (v19 || ([v13 childWithTag:165], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "childWithTag:", 128), v19 = objc_claimAutoreleasedReturnValue(), v20, v19))
      {
        v21 = [v19 value];
        v22 = [v21 length];

        if (v22 == 2)
        {
          v23 = [v19 value];
          v10 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", (bswap32(*[v23 bytes]) >> 16));
          v14 = 0;
          goto LABEL_27;
        }
      }

      v14 = 0;
      v10 = 0;
    }

LABEL_29:
    v30 = v14;
    v31 = v30;
    if (v30)
    {
      v32 = v30;
LABEL_98:

      goto LABEL_99;
    }

    v121 = v10;
    if (a4)
    {
      v33 = 0;
    }

    else
    {
      v34 = [v4 cachedAppletsUnfiltered];
      if (v34)
      {
        v35 = [v4 cachedAppletUpdateCounter];
        v33 = 0;
        if (v35 && v121)
        {
          v36 = [v4 cachedAppletUpdateCounter];
          v33 = [v36 isEqualToNumber:v121];
        }
      }

      else
      {
        v33 = 0;
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v38 = Logger;
      Class = object_getClass(v4);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v4);
      Name = sel_getName("_getApplicationsFromSE:filtered:forceReadAndSkipUpdate:");
      v43 = [v4 cachedAppletsUnfiltered];
      v44 = [v4 cachedAppletUpdateCounter];
      v45 = 43;
      if (!isMetaClass)
      {
        v45 = 45;
      }

      v38(6, "%c[%{public}s %{public}s]:%i haveCache %d cacheCtr %{public}@ currentCtr %{public}@ useCache %d forceReadAndSkipUpdate %d", v45, ClassName, Name, 171, v43 != 0, v44, v121, v33, a4);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v46 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = object_getClass(v4);
      if (class_isMetaClass(v47))
      {
        v48 = 43;
      }

      else
      {
        v48 = 45;
      }

      v49 = object_getClassName(v4);
      v50 = sel_getName("_getApplicationsFromSE:filtered:forceReadAndSkipUpdate:");
      v51 = [v4 cachedAppletsUnfiltered];
      v52 = [v4 cachedAppletUpdateCounter];
      *buf = 67111170;
      *&buf[4] = v48;
      *v133 = 2082;
      *&v133[2] = v49;
      *&v133[10] = 2082;
      *&v133[12] = v50;
      *&v133[20] = 1024;
      *&v133[22] = 171;
      *&v133[26] = 1024;
      *&v133[28] = v51 != 0;
      *&v133[32] = 2114;
      *&v133[34] = v52;
      *&v133[42] = 2114;
      *&v133[44] = v121;
      v134 = 1024;
      v135 = v33;
      v136 = 1024;
      v137 = a4;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i haveCache %d cacheCtr %{public}@ currentCtr %{public}@ useCache %d forceReadAndSkipUpdate %d", buf, 0x48u);
    }

    if (v33)
    {
      v53 = 0;
      v54 = a2;
    }

    else
    {
      v57 = objc_opt_new();
      v58 = [NFTLV TLVWithTag:79 value:0];
      v59 = [v58 asData];
      [v57 appendData:v59];

      v60 = [[NSMutableData alloc] initWithBytes:&unk_100297CE0 length:10];
      if (([v4 supportedTechnologies] & 4) != 0)
      {
        [v60 appendBytes:&unk_100297CEA length:1];
      }

      v61 = [NFTLV TLVWithTag:92 value:v60];
      v62 = [v61 asData];
      [v57 appendData:v62];

      v53 = sub_1000B3EA0(v4, v57, 0);

      if (!v53)
      {
        v76 = [NSError alloc];
        v77 = [NSString stringWithUTF8String:"nfcd"];
        v130[0] = NSLocalizedDescriptionKey;
        v78 = [NSString stringWithUTF8String:"Command Error"];
        v131[0] = v78;
        v131[1] = &off_100336BA0;
        v130[1] = @"Line";
        v130[2] = @"Method";
        v79 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_getApplicationsFromSE:filtered:forceReadAndSkipUpdate:")];
        v131[2] = v79;
        v130[3] = NSDebugDescriptionErrorKey;
        v80 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_getApplicationsFromSE:filtered:forceReadAndSkipUpdate:"), 178];
        v131[3] = v80;
        v81 = [NSDictionary dictionaryWithObjects:v131 forKeys:v130 count:4];
        v32 = [v76 initWithDomain:v77 code:16 userInfo:v81];

LABEL_96:
        v10 = v121;
        goto LABEL_97;
      }

      v53 = v53;
      v124 = 0;
      v125 = &v124;
      v126 = 0x3032000000;
      v127 = sub_100006B5C;
      v128 = sub_1002512A8;
      v129 = objc_opt_new();
      v123[0] = _NSConcreteStackBlock;
      v123[1] = 3221225472;
      v123[2] = sub_100257798;
      v123[3] = &unk_10031D170;
      v123[5] = &v124;
      v123[6] = "_addInstanceACLsToApplets:";
      v123[4] = v4;
      v63 = sub_10018EE10(v4, 64, &unk_100297DA9, 2uLL, v123);
      if (v63)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v64 = NFLogGetLogger();
        if (v64)
        {
          v65 = v64;
          v66 = object_getClass(v4);
          v67 = class_isMetaClass(v66);
          v68 = object_getClassName(v4);
          v114 = sel_getName("_addInstanceACLsToApplets:");
          v69 = 45;
          if (v67)
          {
            v69 = 43;
          }

          v65(3, "%c[%{public}s %{public}s]:%i Failed proprietary get status for InstaneACL", v69, v68, v114, 677);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v70 = NFSharedLogGetLogger();
        v54 = a2;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v71 = object_getClass(v4);
          if (class_isMetaClass(v71))
          {
            v72 = 43;
          }

          else
          {
            v72 = 45;
          }

          v73 = object_getClassName(v4);
          v74 = sel_getName("_addInstanceACLsToApplets:");
          *buf = 67109890;
          *&buf[4] = v72;
          *v133 = 2082;
          *&v133[2] = v73;
          *&v133[10] = 2082;
          *&v133[12] = v74;
          *&v133[20] = 1024;
          *&v133[22] = 677;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed proprietary get status for InstaneACL", buf, 0x22u);
        }

        v75 = v63;
      }

      else
      {
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v116 = v53;
        v82 = v53;
        v83 = [v82 countByEnumeratingWithState:&v138 objects:buf count:16];
        if (v83)
        {
          v84 = v83;
          v85 = *v139;
          do
          {
            for (i = 0; i != v84; i = i + 1)
            {
              if (*v139 != v85)
              {
                objc_enumerationMutation(v82);
              }

              v87 = *(*(&v138 + 1) + 8 * i);
              v88 = v125[5];
              v89 = [v87 identifierAsData];
              v90 = [v88 objectForKeyedSubscript:v89];

              if (v90)
              {
                [v87 setInstanceACL:v90];
              }
            }

            v84 = [v82 countByEnumeratingWithState:&v138 objects:buf count:16];
          }

          while (v84);
        }

        v75 = 0;
        v54 = a2;
        v53 = v116;
        v63 = 0;
      }

      _Block_object_dispose(&v124, 8);
      if (a4)
      {
        v10 = v121;
        if (v54)
        {
LABEL_82:
          v91 = v53;
          v32 = 0;
          *v54 = v53;
LABEL_97:

          v31 = 0;
          goto LABEL_98;
        }

LABEL_83:
        v32 = 0;
        goto LABEL_97;
      }

      [v4 setCachedAppletsUnfiltered:v53];
      [v4 setCachedAppletUpdateCounter:v121];
      v92 = [v4 cachedAppletUpdateCounter];

      if (v92)
      {
        v117 = v53;
        v93 = objc_opt_new();
        v94 = objc_opt_new();
        v95 = objc_opt_new();
        v96 = [v4 cachedAppletsUnfiltered];
        *&v138 = _NSConcreteStackBlock;
        *(&v138 + 1) = 3221225472;
        *&v139 = sub_100251CC8;
        *(&v139 + 1) = &unk_10031D148;
        v97 = v94;
        *&v140 = v97;
        [v96 enumerateObjectsUsingBlock:&v138];

        v98 = [v4 cachedAppletUpdateCounter];
        [v93 setObject:v98 forKey:@"crsUpdateCounter"];

        v99 = [v4 serialNumber];
        [v93 setObject:v99 forKey:@"seid"];

        [v93 setObject:v97 forKey:@"applets"];
        v100 = [v95 updateAppletEntitiesWithConfig:v93];
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v101 = NFLogGetLogger();
        if (v101)
        {
          v102 = v101;
          v103 = object_getClass(v4);
          v104 = class_isMetaClass(v103);
          v105 = object_getClassName(v4);
          v115 = sel_getName("storeApplets");
          v106 = 45;
          if (v104)
          {
            v106 = 43;
          }

          v102(6, "%c[%{public}s %{public}s]:%i Storing applets from cache : %{public}@, error %{public}@", v106, v105, v115, 107, v93, v100);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v107 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
        {
          v108 = object_getClass(v4);
          if (class_isMetaClass(v108))
          {
            v109 = 43;
          }

          else
          {
            v109 = 45;
          }

          v110 = object_getClassName(v4);
          v111 = sel_getName("storeApplets");
          *buf = 67110402;
          *&buf[4] = v109;
          *v133 = 2082;
          *&v133[2] = v110;
          *&v133[10] = 2082;
          *&v133[12] = v111;
          *&v133[20] = 1024;
          *&v133[22] = 107;
          *&v133[26] = 2114;
          *&v133[28] = v93;
          *&v133[36] = 2114;
          *&v133[38] = v100;
          _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Storing applets from cache : %{public}@, error %{public}@", buf, 0x36u);
        }

        [v95 disconnect];
        v53 = v117;
      }
    }

    v10 = v121;
    if (v54)
    {
      if (!a4)
      {
        v55 = [v4 cachedAppletsUnfiltered];
        v56 = v55;
        if (a3)
        {
          *v54 = sub_100252DDC(v4, v55);

          v32 = 0;
        }

        else
        {
          v112 = v55;
          v32 = 0;
          *v54 = v56;
        }

        goto LABEL_96;
      }

      goto LABEL_82;
    }

    goto LABEL_83;
  }

  v32 = 0;
LABEL_99:

  return v32;
}

id sub_100252DDC(uint64_t a1, void *a2)
{
  v29 = a2;
  if (a1)
  {
    v30 = [[NSData alloc] initWithBytes:&unk_100297CEB length:14];
    v37[0] = v30;
    v28 = [[NSData alloc] initWithBytes:&unk_100297CF9 length:12];
    v37[1] = v28;
    v27 = [[NSData alloc] initWithBytes:&unk_100297D05 length:7];
    v37[2] = v27;
    v26 = [[NSData alloc] initWithBytes:&unk_100297D0C length:7];
    v37[3] = v26;
    v3 = [[NSData alloc] initWithBytes:&unk_100297D13 length:9];
    v37[4] = v3;
    v4 = [[NSData alloc] initWithBytes:&unk_100297D1C length:8];
    v37[5] = v4;
    v5 = [[NSData alloc] initWithBytes:&unk_100297D24 length:12];
    v37[6] = v5;
    v6 = [[NSData alloc] initWithBytes:&unk_100297D30 length:12];
    v37[7] = v6;
    v7 = [[NSData alloc] initWithBytes:&unk_100297D3C length:10];
    v37[8] = v7;
    v8 = [[NSData alloc] initWithBytes:&unk_100297D46 length:14];
    v37[9] = v8;
    v9 = [[NSData alloc] initWithBytes:&unk_100297D54 length:10];
    v37[10] = v9;
    v10 = [[NSData alloc] initWithBytes:&unk_100297D5E length:10];
    v37[11] = v10;
    v11 = [[NSData alloc] initWithBytes:&unk_100297D68 length:9];
    v37[12] = v11;
    v12 = [NSArray arrayWithObjects:v37 count:13];

    v31 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = v29;
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          v19 = [v18 identifierAsData];
          v20 = [v12 containsObject:v19];

          if ((v20 & 1) == 0 && [v18 lifecycleState] != 129 && (objc_msgSend(v18, "isContainer") & 1) == 0 && (objc_msgSend(v18, "isProxy") & 1) == 0)
          {
            v21 = [v18 identifier];
            v22 = [v21 hasPrefix:@"A00000085881"];

            if ((v22 & 1) == 0)
            {
              v23 = [v18 identifier];
              v24 = [v23 hasPrefix:@"A000000704E0000100"];

              if ((v24 & 1) == 0)
              {
                [v31 addObject:v18];
              }
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

void sub_1002531D4(void *a1)
{
  if (a1)
  {
    v2 = sub_100253854(a1);
    v58 = objc_opt_new();
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v2;
    v3 = [obj countByEnumeratingWithState:&v60 objects:v80 count:16];
    if (v3)
    {
      v4 = 0;
      v5 = *v61;
      while (1)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v61 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v60 + 1) + 8 * i);
          if ([v7 lifecycleState] == 15)
          {
            v8 = [v7 identifierAsData];
            v9 = [v7 identifier];
            [v58 addObject:v9];

            v10 = [[NSData alloc] initWithBytes:&unk_100297D71 length:13];
            v11 = [v8 NF_hasPrefix:v10];

            if (v11)
            {
              v12 = &v67;
              goto LABEL_16;
            }

            v13 = [[NSData alloc] initWithBytes:&unk_100297D7E length:7];
            v14 = [v8 NF_hasPrefix:v13];

            if (v14)
            {
              v12 = &v65;
              goto LABEL_16;
            }

            v15 = [[NSData alloc] initWithBytes:&unk_100297D85 length:7];
            v16 = [v8 NF_hasPrefix:v15];

            if (v16)
            {
              v12 = &v64;
              goto LABEL_16;
            }

            v17 = [[NSData alloc] initWithBytes:&unk_100297D8C length:9];
            v18 = [v8 NF_hasPrefix:v17];

            if (v18)
            {
              v12 = &v66;
LABEL_16:
              if (sub_100159994(a1, v7, 0))
              {
                v19 = sub_10018019C(a1, 0);
                v20 = v19;
                if (v19 && [v19 count])
                {
                  v21 = *v12;
                  v22 = [v20 count]+ v21;
                  if (v22 >= 5)
                  {
                    v22 = 5;
                  }

                  *v12 = v22;
                }
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                Logger = NFLogGetLogger();
                if (Logger)
                {
                  v24 = Logger;
                  Class = object_getClass(a1);
                  isMetaClass = class_isMetaClass(Class);
                  ClassName = object_getClassName(a1);
                  Name = sel_getName("updateProvisionedCardsForCA");
                  v28 = 45;
                  if (isMetaClass)
                  {
                    v28 = 43;
                  }

                  v24(3, "%c[%{public}s %{public}s]:%i Failed to select applet, skipping...", v28, ClassName, Name, 313);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v20 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  v29 = object_getClass(a1);
                  if (class_isMetaClass(v29))
                  {
                    v30 = 43;
                  }

                  else
                  {
                    v30 = 45;
                  }

                  v31 = object_getClassName(a1);
                  v32 = sel_getName("updateProvisionedCardsForCA");
                  *buf = 67109890;
                  v69 = v30;
                  v70 = 2082;
                  v71 = v31;
                  v72 = 2082;
                  v73 = v32;
                  v74 = 1024;
                  v75 = 313;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applet, skipping...", buf, 0x22u);
                }
              }
            }

            v4 = (v4 + 1);

            continue;
          }
        }

        v3 = [obj countByEnumeratingWithState:&v60 objects:v80 count:16];
        if (!v3)
        {
          v33 = v66;
          v3 = v67;
          v34 = v64;
          v35 = v65;
          goto LABEL_37;
        }
      }
    }

    v34 = 0;
    v35 = 0;
    v33 = 0;
    v4 = 0;
LABEL_37:

    v36 = [v58 componentsJoinedByString:@"_"];
    v78[0] = @"totalCardProvisioned";
    v37 = [NSNumber numberWithInt:v4];
    v38 = v37;
    v39 = &stru_10031EA18;
    if (v36)
    {
      v39 = v36;
    }

    v79[0] = v37;
    v79[1] = v39;
    v78[1] = @"currentProvisionedCards";
    v78[2] = @"alishaEndpointCount";
    v40 = [NSNumber numberWithInteger:v3];
    v79[2] = v40;
    v78[3] = @"aliroEndpointCount";
    v41 = [NSNumber numberWithInteger:v33];
    v79[3] = v41;
    v78[4] = @"uaHomeEndpointCount";
    v42 = [NSNumber numberWithInteger:v35];
    v79[4] = v42;
    v78[5] = @"uaCorporateEndpointCount";
    v43 = [NSNumber numberWithInteger:v34];
    v79[5] = v43;
    v44 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:6];

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v45 = NFLogGetLogger();
    if (v45)
    {
      v46 = v45;
      v47 = object_getClass(a1);
      v48 = class_isMetaClass(v47);
      v55 = object_getClassName(a1);
      v57 = sel_getName("updateProvisionedCardsForCA");
      v49 = 45;
      if (v48)
      {
        v49 = 43;
      }

      v46(6, "%c[%{public}s %{public}s]:%i Provisioned cards: %@", v49, v55, v57, 335, v44);
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
      v54 = sel_getName("updateProvisionedCardsForCA");
      *buf = 67110146;
      v69 = v52;
      v70 = 2082;
      v71 = v53;
      v72 = 2082;
      v73 = v54;
      v74 = 1024;
      v75 = 335;
      v76 = 2112;
      v77 = v44;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Provisioned cards: %@", buf, 0x2Cu);
    }

    [NFGeneralStatisticsCALogger updateGeneralDeviceStatistic:v44];
  }
}

id sub_100253854(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 cachedAppletsUnfiltered];
    if (v2)
    {
      v3 = [v1 cachedAppletsUnfiltered];
      v1 = sub_100252DDC(v1, v3);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

id sub_1002538DC(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v40 = 0;
  v8 = sub_1001599F4(a1, &v40);
  v9 = v40;
  if (v9)
  {
    v10 = [NSError alloc];
    v11 = [NSString stringWithUTF8String:"nfcd"];
    v12 = [v9 code];
    v55[0] = NSLocalizedDescriptionKey;
    if ([v9 code] > 75)
    {
      v13 = 76;
    }

    else
    {
      v13 = [v9 code];
    }

    v15 = [NSString stringWithUTF8String:off_10031CED8[v13]];
    v56[0] = v15;
    v56[1] = v9;
    v55[1] = NSUnderlyingErrorKey;
    v55[2] = @"Line";
    v56[2] = &off_100336BB8;
    v55[3] = @"Method";
    v16 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setApplications:asSelectable:groupActivationStyle:")];
    v56[3] = v16;
    v55[4] = NSDebugDescriptionErrorKey;
    v17 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setApplications:asSelectable:groupActivationStyle:"), 354];
    v56[4] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:5];
    v19 = v10;
    v20 = v11;
    v21 = v12;
  }

  else
  {
    if (sub_1000B57E8(a1, v7, a3, a4))
    {
      v14 = 0;
      goto LABEL_23;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v23 = @"enable";
    if (Logger)
    {
      v24 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("setApplications:asSelectable:groupActivationStyle:");
      if (!a3)
      {
        v23 = @"disable";
      }

      v27 = [NFApplet aidListForPrinting:v7];
      v28 = 45;
      if (isMetaClass)
      {
        v28 = 43;
      }

      v24(3, "%c[%{public}s %{public}s]:%i Failed to %{public}@ applications: %{public}@", v28, ClassName, Name, 358, v23, v27);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = object_getClass(a1);
      v31 = @"enable";
      if (class_isMetaClass(v30))
      {
        v32 = 43;
      }

      else
      {
        v32 = 45;
      }

      v33 = object_getClassName(a1);
      v34 = sel_getName("setApplications:asSelectable:groupActivationStyle:");
      if (!a3)
      {
        v31 = @"disable";
      }

      v35 = [NFApplet aidListForPrinting:v7];
      *buf = 67110402;
      v44 = v32;
      v45 = 2082;
      v46 = v33;
      v47 = 2082;
      v48 = v34;
      v49 = 1024;
      v50 = 358;
      v51 = 2114;
      v52 = v31;
      v53 = 2114;
      v54 = v35;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to %{public}@ applications: %{public}@", buf, 0x36u);
    }

    v36 = [NSError alloc];
    v11 = [NSString stringWithUTF8String:"nfcd"];
    v41[0] = NSLocalizedDescriptionKey;
    v15 = [NSString stringWithUTF8String:"Command Error"];
    v42[0] = v15;
    v42[1] = &off_100336BD0;
    v41[1] = @"Line";
    v41[2] = @"Method";
    v16 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setApplications:asSelectable:groupActivationStyle:")];
    v42[2] = v16;
    v41[3] = NSDebugDescriptionErrorKey;
    v17 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setApplications:asSelectable:groupActivationStyle:"), 359];
    v42[3] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:4];
    v19 = v36;
    v20 = v11;
    v21 = 16;
  }

  v14 = [v19 initWithDomain:v20 code:v21 userInfo:v18];

LABEL_23:

  return v14;
}

id *sub_100253E14(id *a1)
{
  if (a1)
  {
    a1 = sub_100251D20(a1, 0, 1, 0);
    v1 = vars8;
  }

  return a1;
}

id sub_100253E50(id *a1, uint64_t a2)
{
  if (!a1)
  {
LABEL_40:
    v46 = 0;
    goto LABEL_45;
  }

  v2 = a1;
  v3 = sub_1001FD9E0(a1, a2);
  v56 = v2;
  if (!v3)
  {
    v61 = 0;
    v23 = sub_1002543BC(v2, &v61);
    v24 = v61;

    if (!v23)
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = v24;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v57 objects:v78 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v58;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v58 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v57 + 1) + 8 * i);
            if ([v30 isGPLocked] && (sub_1000B6574(v2, v30) & 1) == 0)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              Logger = NFLogGetLogger();
              if (Logger)
              {
                v32 = Logger;
                Class = object_getClass(v2);
                isMetaClass = class_isMetaClass(Class);
                ClassName = object_getClassName(v2);
                Name = sel_getName("deleteAllApplets:");
                v37 = [v30 identifier];
                v53 = ClassName;
                v38 = 45;
                if (isMetaClass)
                {
                  v38 = 43;
                }

                v2 = v56;
                v32(3, "%c[%{public}s %{public}s]:%i Failed to mark %{public}@ for MFF", v38, v53, Name, 401, v37);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v39 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                v40 = object_getClass(v2);
                if (class_isMetaClass(v40))
                {
                  v41 = 43;
                }

                else
                {
                  v41 = 45;
                }

                v42 = object_getClassName(v2);
                v43 = sel_getName("deleteAllApplets:");
                v44 = [v30 identifier];
                *buf = 67110146;
                v65 = v41;
                v66 = 2082;
                v67 = v42;
                v68 = 2082;
                v69 = v43;
                v2 = v56;
                v70 = 1024;
                v71 = 401;
                v72 = 2114;
                v73 = v44;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to mark %{public}@ for MFF", buf, 0x2Cu);
              }
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v57 objects:v78 count:16];
        }

        while (v27);
      }

      v24 = v55;
    }

    v45 = sub_100253E14(v2);
    [v2 setActiveApplet:0];
    [NFGeneralStatisticsCALogger updateGeneralDeviceStatistic:&off_100339FF8];
    goto LABEL_40;
  }

  v4 = v3;
  v5 = sub_100253E14(v2);
  [v2 setActiveApplet:0];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v6 = NFLogGetLogger();
  if (v6)
  {
    v7 = v6;
    v8 = object_getClass(v2);
    v9 = class_isMetaClass(v8);
    v10 = object_getClassName(v2);
    v11 = sel_getName("deleteAllApplets:");
    if (v4 >= 0x4C)
    {
      v12 = 76;
    }

    else
    {
      v12 = v4;
    }

    v54 = off_10031CED8[v12];
    v52 = v10;
    v13 = 43;
    if (!v9)
    {
      v13 = 45;
    }

    v2 = v56;
    v7(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v13, v52, v11, 414, @"Returned", v4, v54);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = object_getClass(v2);
    v16 = !class_isMetaClass(v15);
    v17 = v2;
    if (v16)
    {
      v18 = 45;
    }

    else
    {
      v18 = 43;
    }

    v19 = object_getClassName(v17);
    v20 = sel_getName("deleteAllApplets:");
    if (v4 >= 0x4C)
    {
      v21 = 76;
    }

    else
    {
      v21 = v4;
    }

    v22 = off_10031CED8[v21];
    *buf = 67110658;
    v65 = v18;
    v66 = 2082;
    v67 = v19;
    v68 = 2082;
    v69 = v20;
    v70 = 1024;
    v71 = 414;
    v72 = 2112;
    v73 = @"Returned";
    v74 = 1024;
    v75 = v4;
    v76 = 2080;
    v77 = v22;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ err=%d %s", buf, 0x3Cu);
  }

  else if (v4 >= 0x4C)
  {
    v21 = 76;
  }

  else
  {
    v21 = v4;
  }

  v47 = [NSError alloc];
  v48 = [NSString stringWithUTF8String:"nfcd"];
  v62 = NSLocalizedDescriptionKey;
  v49 = [NSString stringWithUTF8String:off_10031CED8[v21]];
  v63 = v49;
  v50 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  v46 = [v47 initWithDomain:v48 code:v4 userInfo:v50];

LABEL_45:

  return v46;
}

id sub_1002543BC(void *a1, void *a2)
{
  if (a1)
  {
    v4 = sub_100253854(a1);
    if (v4 || (v29 = 0, sub_100251D20(a1, &v29, 1, 0), v7 = objc_claimAutoreleasedReturnValue(), v4 = v29, !v7))
    {
      if (a2)
      {
        v5 = v4;
        v6 = 0;
        *a2 = v4;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("getApplets:");
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v9(3, "%c[%{public}s %{public}s]:%i Failed to get applications : %@", v12, ClassName, Name, 598, v7);
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

        v16 = object_getClassName(a1);
        v17 = sel_getName("getApplets:");
        *buf = 67110146;
        v33 = v15;
        v34 = 2082;
        v35 = v16;
        v36 = 2082;
        v37 = v17;
        v38 = 1024;
        v39 = 598;
        v40 = 2112;
        v41 = v7;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get applications : %@", buf, 0x2Cu);
      }

      v18 = [NSError alloc];
      v19 = [NSString stringWithUTF8String:"nfcd"];
      v20 = [v7 code];
      v30[0] = NSLocalizedDescriptionKey;
      if ([v7 code] > 75)
      {
        v21 = 76;
      }

      else
      {
        v21 = [v7 code];
      }

      v22 = [NSString stringWithUTF8String:off_10031CED8[v21]];
      v31[0] = v22;
      v31[1] = v7;
      v30[1] = NSUnderlyingErrorKey;
      v30[2] = @"Line";
      v31[2] = &off_100336CD8;
      v30[3] = @"Method";
      v23 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getApplets:")];
      v31[3] = v23;
      v30[4] = NSDebugDescriptionErrorKey;
      v24 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getApplets:"), 599];
      v31[4] = v24;
      v25 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:5];
      v6 = [v18 initWithDomain:v19 code:v20 userInfo:v25];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_100254768(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = NFSharedSignpostLog();
      if (os_signpost_enabled(v5))
      {
        v6 = [v4 identifier];
        *buf = 138412290;
        *v40 = v6;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ACTIVATE_APPLET", "Activate applet %@", buf, 0xCu);
      }

      v36 = v4;
      v7 = [NSArray arrayWithObjects:&v36 count:1];
      v8 = sub_1002538DC(a1, v7, 1, [v4 groupActivationStyle]);

      if (!v8)
      {
        [a1 setActiveApplet:v4];
        v8 = [[NSData alloc] initWithBytes:&unk_100297D95 length:8];
        v27 = sub_100158A6C(a1, v8, 0);
        v26 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v9 = [[NSData alloc] initWithBytes:&unk_100297D95 length:8];
      v10 = sub_100158A6C(a1, v9, 0);

      v11 = [NSError alloc];
      v12 = [NSString stringWithUTF8String:"nfcd"];
      v13 = [v8 code];
      v34[0] = NSLocalizedDescriptionKey;
      if ([v8 code] > 75)
      {
        v14 = 76;
      }

      else
      {
        v14 = [v8 code];
      }

      v28 = [NSString stringWithUTF8String:off_10031CED8[v14]];
      v35[0] = v28;
      v35[1] = v8;
      v34[1] = NSUnderlyingErrorKey;
      v34[2] = @"Line";
      v35[2] = &off_100336C30;
      v34[3] = @"Method";
      v29 = [[NSString alloc] initWithFormat:@"%s", sel_getName("activateApplet:")];
      v35[3] = v29;
      v34[4] = NSDebugDescriptionErrorKey;
      v30 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("activateApplet:"), 446];
      v35[4] = v30;
      v31 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:5];
      v26 = [v11 initWithDomain:v12 code:v13 userInfo:v31];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v16 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("activateApplet:");
        v20 = 45;
        if (isMetaClass)
        {
          v20 = 43;
        }

        v16(3, "%c[%{public}s %{public}s]:%i Missing applet parameter", v20, ClassName, Name, 429);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v21 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
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

        *buf = 67109890;
        *v40 = v23;
        *&v40[4] = 2082;
        *&v40[6] = object_getClassName(a1);
        v41 = 2082;
        v42 = sel_getName("activateApplet:");
        v43 = 1024;
        v44 = 429;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing applet parameter", buf, 0x22u);
      }

      v24 = [NSError alloc];
      v8 = [NSString stringWithUTF8String:"nfcd"];
      v37 = NSLocalizedDescriptionKey;
      v12 = [NSString stringWithUTF8String:"Missing Parameter"];
      v38 = v12;
      v25 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v26 = [v24 initWithDomain:v8 code:9 userInfo:v25];
    }

    goto LABEL_22;
  }

  v26 = 0;
LABEL_23:

  return v26;
}

id sub_100254C8C(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3 && [v3 count] == 2)
    {
      v5 = [v4 firstObject];
      v6 = [v4 lastObject];
      v7 = [v5 groupActivationStyle];
      if (v7 == [v6 groupActivationStyle])
      {
        v8 = NFSharedSignpostLog();
        if (os_signpost_enabled(v8))
        {
          v9 = [v5 identifier];
          v10 = [v6 identifier];
          *buf = 138412546;
          *v61 = v9;
          *&v61[8] = 2112;
          *&v61[10] = v10;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ACTIVATE_APPLET", "Activate primary applet %@ and secondary applet %@", buf, 0x16u);
        }

        v11 = sub_1002538DC(a1, v4, 1, [v5 groupActivationStyle]);
        if (v11)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v13 = Logger;
            Class = object_getClass(a1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(a1);
            Name = sel_getName("activateApplets:");
            v17 = 45;
            if (isMetaClass)
            {
              v17 = 43;
            }

            v13(3, "%c[%{public}s %{public}s]:%i Unable to activate applets %@. Error %@", v17, ClassName, Name, 476, v4, v11);
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
            v22 = sel_getName("activateApplets:");
            *buf = 67110402;
            *v61 = v20;
            *&v61[4] = 2082;
            *&v61[6] = v21;
            *&v61[14] = 2082;
            *&v61[16] = v22;
            v62 = 1024;
            v63 = 476;
            v64 = 2112;
            v65 = v4;
            v66 = 2112;
            v67 = v11;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unable to activate applets %@. Error %@", buf, 0x36u);
          }
        }

        else
        {
          [a1 setActiveApplet:v5];
        }

        v47 = [[NSData alloc] initWithBytes:&unk_100297D95 length:8];
        v48 = sub_100158A6C(a1, v47, 0);

        if (!v11)
        {
          v34 = 0;
LABEL_47:

          goto LABEL_48;
        }

        v57 = [NSError alloc];
        v32 = [NSString stringWithUTF8String:"nfcd"];
        v56 = [v11 code];
        v58[0] = NSLocalizedDescriptionKey;
        if ([v11 code] > 75)
        {
          v49 = 76;
        }

        else
        {
          v49 = [v11 code];
        }

        v33 = [NSString stringWithUTF8String:off_10031CED8[v49]];
        v59[0] = v33;
        v59[1] = v11;
        v58[1] = NSUnderlyingErrorKey;
        v58[2] = @"Line";
        v59[2] = &off_100336C78;
        v58[3] = @"Method";
        v45 = [[NSString alloc] initWithFormat:@"%s", sel_getName("activateApplets:")];
        v59[3] = v45;
        v58[4] = NSDebugDescriptionErrorKey;
        v46 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("activateApplets:"), 482];
        v59[4] = v46;
        v50 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:5];
        v34 = [v57 initWithDomain:v32 code:v56 userInfo:v50];
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v35 = NFLogGetLogger();
        if (v35)
        {
          v36 = v35;
          v37 = object_getClass(a1);
          v38 = class_isMetaClass(v37);
          v39 = object_getClassName(a1);
          v55 = sel_getName("activateApplets:");
          v40 = 45;
          if (v38)
          {
            v40 = 43;
          }

          v36(3, "%c[%{public}s %{public}s]:%i Mismatch activation styles on both the applets.", v40, v39, v55, 463);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v41 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = object_getClass(a1);
          if (class_isMetaClass(v42))
          {
            v43 = 43;
          }

          else
          {
            v43 = 45;
          }

          *buf = 67109890;
          *v61 = v43;
          *&v61[4] = 2082;
          *&v61[6] = object_getClassName(a1);
          *&v61[14] = 2082;
          *&v61[16] = sel_getName("activateApplets:");
          v62 = 1024;
          v63 = 463;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Mismatch activation styles on both the applets.", buf, 0x22u);
        }

        v44 = [NSError alloc];
        v11 = [NSString stringWithUTF8String:"nfcd"];
        v68[0] = NSLocalizedDescriptionKey;
        v32 = [NSString stringWithUTF8String:"Invalid Parameter"];
        v69[0] = v32;
        v69[1] = &off_100336C60;
        v68[1] = @"Line";
        v68[2] = @"Method";
        v33 = [[NSString alloc] initWithFormat:@"%s", sel_getName("activateApplets:")];
        v69[2] = v33;
        v68[3] = NSDebugDescriptionErrorKey;
        v45 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("activateApplets:"), 464];
        v69[3] = v45;
        v46 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:4];
        v34 = [v44 initWithDomain:v11 code:10 userInfo:v46];
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v24 = v23;
        v25 = object_getClass(a1);
        v26 = class_isMetaClass(v25);
        v52 = object_getClassName(a1);
        v54 = sel_getName("activateApplets:");
        v27 = 45;
        if (v26)
        {
          v27 = 43;
        }

        v24(3, "%c[%{public}s %{public}s]:%i Missing or invalid applets parameter %@", v27, v52, v54, 453, v4);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = object_getClass(a1);
        if (class_isMetaClass(v29))
        {
          v30 = 43;
        }

        else
        {
          v30 = 45;
        }

        *buf = 67110146;
        *v61 = v30;
        *&v61[4] = 2082;
        *&v61[6] = object_getClassName(a1);
        *&v61[14] = 2082;
        *&v61[16] = sel_getName("activateApplets:");
        v62 = 1024;
        v63 = 453;
        v64 = 2112;
        v65 = v4;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing or invalid applets parameter %@", buf, 0x2Cu);
      }

      v31 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v70[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Missing Parameter"];
      v71[0] = v6;
      v71[1] = &off_100336C48;
      v70[1] = @"Line";
      v70[2] = @"Method";
      v11 = [[NSString alloc] initWithFormat:@"%s", sel_getName("activateApplets:")];
      v71[2] = v11;
      v70[3] = NSDebugDescriptionErrorKey;
      v32 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("activateApplets:"), 454];
      v71[3] = v32;
      v33 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:4];
      v34 = [v31 initWithDomain:v5 code:9 userInfo:v33];
    }

    goto LABEL_47;
  }

  v34 = 0;
LABEL_48:

  return v34;
}

id sub_1002555D4(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 firstObject];
    if ([v4 count] <= 1)
    {
      v6 = v5;
    }

    else
    {
      v6 = [v4 objectAtIndexedSubscript:1];
    }

    v7 = v6;
    v8 = NFSharedSignpostLog();
    if (os_signpost_enabled(v8))
    {
      v9 = [v5 identifier];
      v10 = [v7 identifier];
      *buf = 138412546;
      *v40 = v9;
      *&v40[8] = 2112;
      *&v40[10] = v10;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ACTIVATE_APPLET", "Activate primary applet %@ and secondary applet %@", buf, 0x16u);
    }

    v11 = sub_1002538DC(a1, v4, 1, [v5 groupActivationStyle]);
    if (v11)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v13 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("activateAppletsForTest:");
        v17 = 45;
        if (isMetaClass)
        {
          v17 = 43;
        }

        v13(3, "%c[%{public}s %{public}s]:%i Unable to activate applets %@. Error %@", v17, ClassName, Name, 500, v4, v11);
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
        v22 = sel_getName("activateAppletsForTest:");
        *buf = 67110402;
        *v40 = v20;
        *&v40[4] = 2082;
        *&v40[6] = v21;
        *&v40[14] = 2082;
        *&v40[16] = v22;
        v41 = 1024;
        v42 = 500;
        v43 = 2112;
        v44 = v4;
        v45 = 2112;
        v46 = v11;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unable to activate applets %@. Error %@", buf, 0x36u);
      }
    }

    else
    {
      [a1 setActiveApplet:v5];
    }

    v23 = [[NSData alloc] initWithBytes:&unk_100297D95 length:8];
    v24 = sub_100158A6C(a1, v23, 0);

    if (v11)
    {
      v25 = [NSError alloc];
      v26 = [NSString stringWithUTF8String:"nfcd"];
      v27 = [v11 code];
      v37[0] = NSLocalizedDescriptionKey;
      v36 = v7;
      if ([v11 code] > 75)
      {
        v28 = 76;
      }

      else
      {
        v28 = [v11 code];
      }

      v30 = [NSString stringWithUTF8String:off_10031CED8[v28]];
      v38[0] = v30;
      v38[1] = v11;
      v37[1] = NSUnderlyingErrorKey;
      v37[2] = @"Line";
      v38[2] = &off_100336C90;
      v37[3] = @"Method";
      v31 = [[NSString alloc] initWithFormat:@"%s", sel_getName("activateAppletsForTest:")];
      v38[3] = v31;
      v37[4] = NSDebugDescriptionErrorKey;
      v32 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("activateAppletsForTest:"), 506];
      v38[4] = v32;
      v33 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:5];
      v29 = [v25 initWithDomain:v26 code:v27 userInfo:v33];

      v7 = v36;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

id sub_100255A90(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_36;
  }

  if (v3)
  {
    if ([v3 count])
    {
      v5 = sub_1002538DC(a1, v4, 0, 0);
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
          Name = sel_getName("deselectApplets:");
          v11 = 45;
          if (isMetaClass)
          {
            v11 = 43;
          }

          v8(3, "%c[%{public}s %{public}s]:%i Error in setApplications: %@", v11, ClassName, Name, 524, v6);
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

          *buf = 67110146;
          v56 = v14;
          v57 = 2082;
          v58 = object_getClassName(a1);
          v59 = 2082;
          v60 = sel_getName("deselectApplets:");
          v61 = 1024;
          v62 = 524;
          v63 = 2112;
          v64 = v6;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error in setApplications: %@", buf, 0x2Cu);
        }

        v15 = [NSError alloc];
        v16 = [NSString stringWithUTF8String:"nfcd"];
        v17 = [v6 code];
        v53[0] = NSLocalizedDescriptionKey;
        if ([v6 code] > 75)
        {
          v18 = 76;
        }

        else
        {
          v18 = [v6 code];
        }

        v44 = [NSString stringWithUTF8String:off_10031CED8[v18]];
        v54[0] = v44;
        v54[1] = v6;
        v53[1] = NSUnderlyingErrorKey;
        v53[2] = @"Line";
        v54[2] = &off_100336CA8;
        v53[3] = @"Method";
        v45 = [[NSString alloc] initWithFormat:@"%s", sel_getName("deselectApplets:")];
        v54[3] = v45;
        v53[4] = NSDebugDescriptionErrorKey;
        v46 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("deselectApplets:"), 525];
        v54[4] = v46;
        v47 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:5];
        v32 = [v15 initWithDomain:v16 code:v17 userInfo:v47];

        goto LABEL_42;
      }

      v32 = [a1 activeApplet];
      if (!v32)
      {
        goto LABEL_42;
      }

      v42 = [a1 activeApplet];
      v43 = [v4 containsObject:v42];

      if (v43)
      {
        [a1 setActiveApplet:0];
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
        v52 = sel_getName("deselectApplets:");
        v38 = 45;
        if (v36)
        {
          v38 = 43;
        }

        v34(6, "%c[%{public}s %{public}s]:%i Empty array", v38, v37, v52, 518);
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

        *buf = 67109890;
        v56 = v41;
        v57 = 2082;
        v58 = object_getClassName(a1);
        v59 = 2082;
        v60 = sel_getName("deselectApplets:");
        v61 = 1024;
        v62 = 518;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Empty array", buf, 0x22u);
      }
    }

LABEL_36:
    v32 = 0;
    goto LABEL_42;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v20 = v19;
    v21 = object_getClass(a1);
    v22 = class_isMetaClass(v21);
    v23 = object_getClassName(a1);
    v51 = sel_getName("deselectApplets:");
    v24 = 45;
    if (v22)
    {
      v24 = 43;
    }

    v20(3, "%c[%{public}s %{public}s]:%i Missing applets parameter", v24, v23, v51, 514);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
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

    *buf = 67109890;
    v56 = v27;
    v57 = 2082;
    v58 = object_getClassName(a1);
    v59 = 2082;
    v60 = sel_getName("deselectApplets:");
    v61 = 1024;
    v62 = 514;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing applets parameter", buf, 0x22u);
  }

  v28 = [NSError alloc];
  v29 = [NSString stringWithUTF8String:"nfcd"];
  v65 = NSLocalizedDescriptionKey;
  v30 = [NSString stringWithUTF8String:"Missing Parameter"];
  v66 = v30;
  v31 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
  v32 = [v28 initWithDomain:v29 code:9 userInfo:v31];

LABEL_42:

  return v32;
}

id sub_100256130(id *a1)
{
  if (a1)
  {
    v2 = NFSharedSignpostLog();
    if (os_signpost_enabled(v2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DEACTIVATE_ALL", "deactivate all applets on eSE", buf, 2u);
    }

    v12 = 0;
    v3 = sub_1001599F4(a1, &v12);
    v4 = v12;
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      if (sub_1000B539C(a1))
      {
        goto LABEL_8;
      }

      v7 = [NSError alloc];
      v8 = [NSString stringWithUTF8String:"nfcd"];
      v14 = NSLocalizedDescriptionKey;
      v9 = [NSString stringWithUTF8String:"Command Error"];
      v15 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v6 = [v7 initWithDomain:v8 code:16 userInfo:v10];

      if (!v6)
      {
LABEL_8:
        [a1 setActiveApplet:0];
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1002562FC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(v1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v1);
      Name = sel_getName("deselectAllIfNeeded");
      v8 = [v1 activeApplet];
      v9 = [v8 identifier];
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i eSE: activeApplet:%{public}@", v10, ClassName, Name, 560, v9);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = object_getClass(v1);
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      v14 = object_getClassName(v1);
      v15 = sel_getName("deselectAllIfNeeded");
      v16 = [v1 activeApplet];
      v17 = [v16 identifier];
      *buf = 67110146;
      v21 = v13;
      v22 = 2082;
      v23 = v14;
      v24 = 2082;
      v25 = v15;
      v26 = 1024;
      v27 = 560;
      v28 = 2114;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i eSE: activeApplet:%{public}@", buf, 0x2Cu);
    }

    v18 = [v1 activeApplet];

    if (v18)
    {
      a1 = sub_100256130(v1);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

id sub_100256530(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_56;
  }

  v92 = a1;
  if (v3 && [v3 count])
  {
    v5 = v4;
    v93 = 0;
    v6 = sub_1001599F4(a1, &v93);
    v7 = v93;
    v89 = v4;
    v88 = v5;
    if (v7)
    {
      v8 = v7;
      v9 = [NSError alloc];
      v10 = [NSString stringWithUTF8String:"nfcd"];
      v11 = [v8 code];
      *&v112 = NSLocalizedDescriptionKey;
      if ([v8 code] > 75)
      {
        v12 = 76;
      }

      else
      {
        v12 = [v8 code];
      }

      v54 = [NSString stringWithUTF8String:off_10031CED8[v12]];
      *buf = v54;
      *v111 = v8;
      *(&v112 + 1) = NSUnderlyingErrorKey;
      *&v113 = @"Line";
      *&v111[8] = &off_100336BE8;
      *(&v113 + 1) = @"Method";
      v55 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_markApplicationsForDelete:")];
      *&v111[16] = v55;
      *&v114 = NSDebugDescriptionErrorKey;
      v56 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_markApplicationsForDelete:"), 372];
      *&v111[24] = v56;
      v57 = [NSDictionary dictionaryWithObjects:buf forKeys:&v112 count:5];
      v58 = [v9 initWithDomain:v10 code:v11 userInfo:v57];

      a1 = v92;
    }

    else
    {
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      obj = v5;
      v27 = [obj countByEnumeratingWithState:&v112 objects:buf count:16];
      if (v27)
      {
        v28 = v27;
        v29 = 0;
        v30 = *v113;
        do
        {
          v31 = 0;
          v90 = v28;
          do
          {
            if (*v113 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v112 + 1) + 8 * v31);
            if ((sub_1000B6574(a1, v32) & 1) == 0)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              Logger = NFLogGetLogger();
              if (Logger)
              {
                v34 = Logger;
                Class = object_getClass(v92);
                isMetaClass = class_isMetaClass(Class);
                ClassName = object_getClassName(v92);
                Name = sel_getName("_markApplicationsForDelete:");
                v39 = [v32 identifier];
                v40 = 45;
                if (isMetaClass)
                {
                  v40 = 43;
                }

                v34(3, "%c[%{public}s %{public}s]:%i Failed to mark application for delete: %{public}@", v40, ClassName, Name, 377, v39);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v41 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v42 = object_getClass(v92);
                if (class_isMetaClass(v42))
                {
                  v43 = 43;
                }

                else
                {
                  v43 = 45;
                }

                v44 = object_getClassName(v92);
                v45 = sel_getName("_markApplicationsForDelete:");
                v46 = [v32 identifier];
                *v100 = 67110146;
                v101 = v43;
                v102 = 2082;
                v103 = v44;
                v104 = 2082;
                v105 = v45;
                v106 = 1024;
                v107 = 377;
                v108 = 2114;
                v109 = v46;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to mark application for delete: %{public}@", v100, 0x2Cu);
              }

              v47 = [NSError alloc];
              v48 = [NSString stringWithUTF8String:"nfcd"];
              v98[0] = NSLocalizedDescriptionKey;
              v49 = [NSString stringWithUTF8String:"Command Error"];
              v99[0] = v49;
              v99[1] = &off_100336C00;
              v98[1] = @"Line";
              v98[2] = @"Method";
              v50 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_markApplicationsForDelete:")];
              v99[2] = v50;
              v98[3] = NSDebugDescriptionErrorKey;
              v51 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_markApplicationsForDelete:"), 378];
              v99[3] = v51;
              v52 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:4];
              v53 = [v47 initWithDomain:v48 code:16 userInfo:v52];

              v29 = v53;
              a1 = v92;
              v28 = v90;
            }

            v31 = v31 + 1;
          }

          while (v28 != v31);
          v28 = [obj countByEnumeratingWithState:&v112 objects:buf count:16];
        }

        while (v28);
      }

      else
      {
        v29 = 0;
      }

      v59 = sub_100253E14(a1);
      [a1 setActiveApplet:0];
      v8 = v29;
      v58 = v8;
    }

    v4 = v89;
    if (v58)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v60 = NFLogGetLogger();
      if (v60)
      {
        v61 = v60;
        v62 = object_getClass(a1);
        v63 = class_isMetaClass(v62);
        v85 = object_getClassName(a1);
        v87 = sel_getName("deleteApplets:");
        v64 = 45;
        if (v63)
        {
          v64 = 43;
        }

        a1 = v92;
        v61(3, "%c[%{public}s %{public}s]:%i Failed to Mark For Delete : %@", v64, v85, v87, 576, v58);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v65 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v66 = object_getClass(a1);
        if (class_isMetaClass(v66))
        {
          v67 = 43;
        }

        else
        {
          v67 = 45;
        }

        v68 = object_getClassName(a1);
        v69 = sel_getName("deleteApplets:");
        *buf = 67110146;
        *&buf[4] = v67;
        *v111 = 2082;
        *&v111[2] = v68;
        *&v111[10] = 2082;
        *&v111[12] = v69;
        *&v111[20] = 1024;
        *&v111[22] = 576;
        *&v111[26] = 2112;
        *&v111[28] = v58;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to Mark For Delete : %@", buf, 0x2Cu);
      }

      v70 = [NSError alloc];
      v71 = [NSString stringWithUTF8String:"nfcd"];
      v72 = [v58 code];
      v94[0] = NSLocalizedDescriptionKey;
      if ([v58 code] > 75)
      {
        v73 = 76;
      }

      else
      {
        v73 = [v58 code];
      }

      v79 = [NSString stringWithUTF8String:off_10031CED8[v73]];
      v95[0] = v79;
      v95[1] = v58;
      v94[1] = NSUnderlyingErrorKey;
      v94[2] = @"Line";
      v95[2] = &off_100336CC0;
      v94[3] = @"Method";
      v80 = [[NSString alloc] initWithFormat:@"%s", sel_getName("deleteApplets:")];
      v95[3] = v80;
      v94[4] = NSDebugDescriptionErrorKey;
      v81 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("deleteApplets:"), 577];
      v95[4] = v81;
      v82 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:5];
      v26 = [v70 initWithDomain:v71 code:v72 userInfo:v82];

      v4 = v89;
      goto LABEL_59;
    }

    v74 = [a1 activeApplet];
    if (v74)
    {
      v75 = v74;
      v76 = a1;
      v77 = [a1 activeApplet];
      v78 = [v88 containsObject:v77];

      if (v78)
      {
        [v76 setActiveApplet:0];
      }
    }

    [NFGeneralStatisticsCALogger updateGeneralDeviceStatistic:&off_10033A020];
LABEL_56:
    v26 = 0;
    goto LABEL_59;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v13 = NFLogGetLogger();
  if (v13)
  {
    v14 = v13;
    v15 = object_getClass(a1);
    v16 = class_isMetaClass(v15);
    v17 = object_getClassName(a1);
    v86 = sel_getName("deleteApplets:");
    v18 = 45;
    if (v16)
    {
      v18 = 43;
    }

    v84 = v17;
    a1 = v92;
    v14(3, "%c[%{public}s %{public}s]:%i Missing applet parameter", v18, v84, v86, 570);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = object_getClass(a1);
    if (class_isMetaClass(v20))
    {
      v21 = 43;
    }

    else
    {
      v21 = 45;
    }

    *buf = 67109890;
    *&buf[4] = v21;
    *v111 = 2082;
    *&v111[2] = object_getClassName(a1);
    *&v111[10] = 2082;
    *&v111[12] = sel_getName("deleteApplets:");
    *&v111[20] = 1024;
    *&v111[22] = 570;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing applet parameter", buf, 0x22u);
  }

  v22 = [NSError alloc];
  v23 = [NSString stringWithUTF8String:"nfcd"];
  v96 = NSLocalizedDescriptionKey;
  v24 = [NSString stringWithUTF8String:"Missing Parameter"];
  v97 = v24;
  v25 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
  v26 = [v22 initWithDomain:v23 code:9 userInfo:v25];

LABEL_59:

  return v26;
}

id *sub_100257058(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v38 = a3;
  if (a1)
  {
    v6 = [[NSData alloc] initWithBytes:&unk_100297D9D length:12];
    v43 = 0;
    v7 = sub_100158A6C(a1, v6, &v43);
    v8 = v43;

    v9 = v7;
    v37 = v8;
    if ([v7 status] == 26277)
    {
      v10 = [NSError alloc];
      v11 = [NSString stringWithUTF8String:"nfcd"];
      v51[0] = NSLocalizedDescriptionKey;
      v12 = [NSString stringWithUTF8String:"Restricted Mode"];
      v52[0] = v12;
      v52[1] = &off_100336CF0;
      v51[1] = @"Line";
      v51[2] = @"Method";
      v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryAppletExtraInfo:outInfo:")];
      v52[2] = v13;
      v51[3] = NSDebugDescriptionErrorKey;
      v14 = v11;
      v15 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryAppletExtraInfo:outInfo:"), 615];
      v52[3] = v15;
      v16 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
      v17 = v10;
      v18 = v11;
      v19 = 24;
    }

    else if (v8)
    {
      v20 = [NSError alloc];
      v14 = [NSString stringWithUTF8String:"nfcd"];
      v21 = [v8 code];
      v49[0] = NSLocalizedDescriptionKey;
      if ([v8 code] > 75)
      {
        v22 = 76;
      }

      else
      {
        v22 = [v8 code];
      }

      v12 = [NSString stringWithUTF8String:off_10031CED8[v22]];
      v50[0] = v12;
      v50[1] = v8;
      v49[1] = NSUnderlyingErrorKey;
      v49[2] = @"Line";
      v50[2] = &off_100336D08;
      v49[3] = @"Method";
      v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryAppletExtraInfo:outInfo:")];
      v50[3] = v13;
      v49[4] = NSDebugDescriptionErrorKey;
      v15 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryAppletExtraInfo:outInfo:"), 618];
      v50[4] = v15;
      v16 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:5];
      v17 = v20;
      v18 = v14;
      v19 = v21;
    }

    else
    {
      if (sub_10018AF80(a1))
      {
        v14 = sub_10018B0A0(a1, 1);
        if ([v14 count])
        {
          v12 = [v14 objectForKeyedSubscript:@"containers"];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v23 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
          if (v23)
          {
            v24 = v23;
            v35 = v14;
            v36 = v9;
            v25 = *v40;
            do
            {
              for (i = 0; i != v24; i = i + 1)
              {
                if (*v40 != v25)
                {
                  objc_enumerationMutation(v12);
                }

                v27 = *(*(&v39 + 1) + 8 * i);
                v28 = [v27 objectForKeyedSubscript:@"appletAid"];
                if (v28)
                {
                  v29 = [NSData NF_dataWithHexString:v28];
                  if (v29 && [v5 containsObject:v29])
                  {
                    [v38 addObject:v27];
                  }
                }
              }

              v24 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
            }

            while (v24);
            a1 = 0;
            v9 = v36;
            v8 = v37;
            v14 = v35;
          }

          else
          {
            a1 = 0;
          }

          goto LABEL_27;
        }

        v33 = [NSError alloc];
        v12 = [NSString stringWithUTF8String:"nfcd"];
        v45[0] = NSLocalizedDescriptionKey;
        v13 = [NSString stringWithUTF8String:"Command Error"];
        v46[0] = v13;
        v46[1] = &off_100336D38;
        v45[1] = @"Line";
        v45[2] = @"Method";
        v15 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryAppletExtraInfo:outInfo:")];
        v46[2] = v15;
        v45[3] = NSDebugDescriptionErrorKey;
        v16 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryAppletExtraInfo:outInfo:"), 627];
        v46[3] = v16;
        v34 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:4];
        a1 = [v33 initWithDomain:v12 code:16 userInfo:v34];

LABEL_26:
        v8 = v37;
LABEL_27:

        goto LABEL_28;
      }

      v30 = [NSError alloc];
      v31 = [NSString stringWithUTF8String:"nfcd"];
      v47[0] = NSLocalizedDescriptionKey;
      v12 = [NSString stringWithUTF8String:"Feature Not Supported"];
      v48[0] = v12;
      v48[1] = &off_100336D20;
      v47[1] = @"Line";
      v47[2] = @"Method";
      v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryAppletExtraInfo:outInfo:")];
      v48[2] = v13;
      v47[3] = NSDebugDescriptionErrorKey;
      v14 = v31;
      v15 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryAppletExtraInfo:outInfo:"), 622];
      v48[3] = v15;
      v16 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:4];
      v17 = v30;
      v18 = v31;
      v19 = 14;
    }

    a1 = [v17 initWithDomain:v18 code:v19 userInfo:v16];
    goto LABEL_26;
  }

LABEL_28:

  return a1;
}

void sub_100257798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [NFTLV TLVSsWithBytes:a2 length:a3 requireDefiniteEncoding:1];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [v9 childWithTag:218];
        if (v10)
        {
          v11 = [v9 childWithTag:79];
          if (v11)
          {
            v12 = [v10 value];
            v13 = *(*(*(a1 + 40) + 8) + 40);
            v14 = [v11 value];
            [v13 setObject:v12 forKeyedSubscript:v14];
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v16 = Logger;
              Class = object_getClass(*(a1 + 32));
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(*(a1 + 32));
              Name = sel_getName(*(a1 + 48));
              v20 = 45;
              if (isMetaClass)
              {
                v20 = 43;
              }

              v16(3, "%c[%{public}s %{public}s]:%i Missing AID tag", v20, ClassName, Name, 670);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v12 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
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
              v24 = sel_getName(*(a1 + 48));
              *buf = 67109890;
              v31 = v22;
              v32 = 2082;
              v33 = v23;
              v34 = 2082;
              v35 = v24;
              v36 = 1024;
              v37 = 670;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing AID tag", buf, 0x22u);
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v6);
  }
}

id sub_100257A4C(void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = [a1 cachedAppletsUnfiltered];

      if (v4)
      {
        [a1 cachedAppletsUnfiltered];
        *a2 = v5 = 0;
      }

      else
      {
        v36 = 0;
        v11 = sub_100251D20(a1, &v36, 0, 0);
        v12 = v36;
        v13 = v12;
        if (v11)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v15 = Logger;
            Class = object_getClass(a1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(a1);
            Name = sel_getName("getUnfilteredApplets:");
            v18 = 45;
            if (isMetaClass)
            {
              v18 = 43;
            }

            v15(3, "%c[%{public}s %{public}s]:%i Error getting applications : %@", v18, ClassName, Name, 705, v11);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v19 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = object_getClass(a1);
            if (class_isMetaClass(v20))
            {
              v21 = 43;
            }

            else
            {
              v21 = 45;
            }

            v22 = object_getClassName(a1);
            v23 = sel_getName("getUnfilteredApplets:");
            *buf = 67110146;
            v40 = v21;
            v41 = 2082;
            v42 = v22;
            v43 = 2082;
            v44 = v23;
            v45 = 1024;
            v46 = 705;
            v47 = 2112;
            v48 = v11;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error getting applications : %@", buf, 0x2Cu);
          }

          v24 = [NSError alloc];
          v25 = [NSString stringWithUTF8String:"nfcd"];
          v26 = [v11 code];
          v37[0] = NSLocalizedDescriptionKey;
          if ([v11 code] > 75)
          {
            v27 = 76;
          }

          else
          {
            v27 = [v11 code];
          }

          v29 = [NSString stringWithUTF8String:off_10031CED8[v27]];
          v38[0] = v29;
          v38[1] = v11;
          v37[1] = NSUnderlyingErrorKey;
          v37[2] = @"Line";
          v38[2] = &off_100336D50;
          v37[3] = @"Method";
          v30 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getUnfilteredApplets:")];
          v38[3] = v30;
          v37[4] = NSDebugDescriptionErrorKey;
          v31 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getUnfilteredApplets:"), 706];
          v38[4] = v31;
          v32 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:5];
          v5 = [v24 initWithDomain:v25 code:v26 userInfo:v32];
        }

        else if (v12)
        {
          v28 = v12;
          v5 = 0;
          *a2 = v13;
        }

        else
        {
          v5 = 0;
        }
      }
    }

    else
    {
      v6 = [NSError alloc];
      v7 = [NSString stringWithUTF8String:"nfcd"];
      v49[0] = NSLocalizedDescriptionKey;
      v8 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v50[0] = v8;
      v49[1] = NSLocalizedFailureReasonErrorKey;
      v9 = [[NSString alloc] initWithFormat:@"Nil outparam"];
      v50[1] = v9;
      v10 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
      v5 = [v6 initWithDomain:v7 code:10 userInfo:v10];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id *sub_100257EEC(id *a1, void *a2)
{
  if (a1)
  {
    a1 = sub_100251D20(a1, a2, 0, 1);
    v2 = vars8;
  }

  return a1;
}

id sub_100257F24(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    a1 = sub_100257F60(a1, a2, 1, 0, a3);
    v3 = vars8;
  }

  return a1;
}

id sub_100257F60(void *a1, void *a2, char a3, int a4, void *a5)
{
  v9 = a2;
  v10 = v9;
  if (!a1)
  {
    goto LABEL_43;
  }

  if (!v9)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_appletForIdentifier:filtered:cacheOnly:outError:");
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v13(4, "%c[%{public}s %{public}s]:%i Missing identifier", v17, ClassName, Name, 749);
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

      *buf = 67109890;
      v108 = v20;
      v109 = 2082;
      v110 = object_getClassName(a1);
      v111 = 2082;
      v112 = sel_getName("_appletForIdentifier:filtered:cacheOnly:outError:");
      v113 = 1024;
      v114 = 749;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing identifier", buf, 0x22u);
    }

    if (a5)
    {
      v21 = [NSError alloc];
      v22 = [NSString stringWithUTF8String:"nfcd"];
      v105[0] = NSLocalizedDescriptionKey;
      v23 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v106[0] = v23;
      v106[1] = &off_100336D68;
      v105[1] = @"Line";
      v105[2] = @"Method";
      v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_appletForIdentifier:filtered:cacheOnly:outError:")];
      v106[2] = v24;
      v105[3] = NSDebugDescriptionErrorKey;
      v25 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_appletForIdentifier:filtered:cacheOnly:outError:"), 750];
      v106[3] = v25;
      v26 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:4];
      obj = v22;
      *a5 = [v21 initWithDomain:v22 code:10 userInfo:v26];

      goto LABEL_30;
    }

LABEL_43:
    v41 = 0;
    goto LABEL_72;
  }

  if ((a3 & 1) == 0)
  {
    v11 = [a1 cachedAppletsUnfiltered];
    if (!a4)
    {
      goto LABEL_31;
    }

    goto LABEL_18;
  }

  v11 = sub_100253854(a1);
  if (a4)
  {
LABEL_18:
    if (v11)
    {
      goto LABEL_31;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v28 = v27;
      v29 = object_getClass(a1);
      v30 = class_isMetaClass(v29);
      v31 = object_getClassName(a1);
      v80 = sel_getName("_appletForIdentifier:filtered:cacheOnly:outError:");
      v32 = 45;
      if (v30)
      {
        v32 = 43;
      }

      v28(4, "%c[%{public}s %{public}s]:%i Cache not available", v32, v31, v80, 758);
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

      *buf = 67109890;
      v108 = v35;
      v109 = 2082;
      v110 = object_getClassName(a1);
      v111 = 2082;
      v112 = sel_getName("_appletForIdentifier:filtered:cacheOnly:outError:");
      v113 = 1024;
      v114 = 758;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Cache not available", buf, 0x22u);
    }

    if (!a5)
    {
      obj = 0;
      goto LABEL_45;
    }

    v36 = [NSError alloc];
    v23 = [NSString stringWithUTF8String:"nfcd"];
    v103[0] = NSLocalizedDescriptionKey;
    v37 = [NSString stringWithUTF8String:"Cache missed"];
    v104[0] = v37;
    v104[1] = &off_100336D80;
    v103[1] = @"Line";
    v103[2] = @"Method";
    v38 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_appletForIdentifier:filtered:cacheOnly:outError:")];
    v104[2] = v38;
    v103[3] = NSDebugDescriptionErrorKey;
    v39 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_appletForIdentifier:filtered:cacheOnly:outError:"), 759];
    v104[3] = v39;
    v40 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:4];
    *a5 = [v36 initWithDomain:v23 code:73 userInfo:v40];

    obj = 0;
LABEL_30:
    v41 = 0;
LABEL_70:

    goto LABEL_71;
  }

LABEL_31:
  v83 = a5;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v11;
  v42 = [obj countByEnumeratingWithState:&v91 objects:v102 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v92;
    while (2)
    {
      for (i = 0; i != v43; i = i + 1)
      {
        if (*v92 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v91 + 1) + 8 * i);
        v47 = [v46 identifierAsData];
        v48 = [v10 isEqualToData:v47];

        if (v48)
        {
          v41 = v46;
          v23 = obj;
          goto LABEL_70;
        }
      }

      v43 = [obj countByEnumeratingWithState:&v91 objects:v102 count:16];
      if (v43)
      {
        continue;
      }

      break;
    }
  }

  if (!a4)
  {
    if (a3)
    {
      v90 = 0;
      v55 = &v90;
      v56 = sub_1002543BC(a1, &v90);
    }

    else
    {
      v89 = 0;
      v55 = &v89;
      v56 = sub_100257A4C(a1, &v89);
    }

    v57 = v56;
    v58 = *v55;
    v23 = v58;
    if (v57)
    {
      if (v83)
      {
        v59 = [NSError alloc];
        v60 = [NSString stringWithUTF8String:"nfcd"];
        v81 = [v57 code];
        v98[0] = NSLocalizedDescriptionKey;
        if ([v57 code] > 75)
        {
          v61 = 76;
        }

        else
        {
          v61 = [v57 code];
        }

        v74 = [NSString stringWithUTF8String:off_10031CED8[v61]];
        v99[0] = v74;
        v99[1] = v57;
        v98[1] = NSUnderlyingErrorKey;
        v98[2] = @"Line";
        v99[2] = &off_100336DB0;
        v98[3] = @"Method";
        v75 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_appletForIdentifier:filtered:cacheOnly:outError:")];
        v99[3] = v75;
        v98[4] = NSDebugDescriptionErrorKey;
        v76 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_appletForIdentifier:filtered:cacheOnly:outError:"), 779];
        v99[4] = v76;
        v77 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:5];
        *v83 = [v59 initWithDomain:v60 code:v81 userInfo:v77];

LABEL_67:
        v41 = 0;
LABEL_68:

        goto LABEL_69;
      }
    }

    else
    {
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v60 = v58;
      v62 = [v60 countByEnumeratingWithState:&v85 objects:v97 count:16];
      if (v62)
      {
        v63 = v62;
        v64 = *v86;
        while (2)
        {
          for (j = 0; j != v63; j = j + 1)
          {
            if (*v86 != v64)
            {
              objc_enumerationMutation(v60);
            }

            v66 = *(*(&v85 + 1) + 8 * j);
            v67 = [v66 identifierAsData];
            v68 = [v67 isEqualToData:v10];

            if (v68)
            {
              v41 = v66;
              goto LABEL_68;
            }
          }

          v63 = [v60 countByEnumeratingWithState:&v85 objects:v97 count:16];
          if (v63)
          {
            continue;
          }

          break;
        }
      }

      if (v83)
      {
        v82 = [NSError alloc];
        v60 = [NSString stringWithUTF8String:"nfcd"];
        v95[0] = NSLocalizedDescriptionKey;
        v69 = [NSString stringWithUTF8String:"Not found"];
        v96[0] = v69;
        v96[1] = &off_100336DC8;
        v95[1] = @"Line";
        v95[2] = @"Method";
        v70 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_appletForIdentifier:filtered:cacheOnly:outError:")];
        v96[2] = v70;
        v95[3] = NSDebugDescriptionErrorKey;
        v71 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_appletForIdentifier:filtered:cacheOnly:outError:"), 789];
        v96[3] = v71;
        v95[4] = NSLocalizedFailureReasonErrorKey;
        v72 = [[NSString alloc] initWithFormat:@"applet not found in cache nor SE."];
        v96[4] = v72;
        v73 = [NSDictionary dictionaryWithObjects:v96 forKeys:v95 count:5];
        *v83 = [v82 initWithDomain:v60 code:65 userInfo:v73];

        goto LABEL_67;
      }
    }

    v41 = 0;
LABEL_69:

    goto LABEL_70;
  }

  if (v83)
  {
    v49 = [NSError alloc];
    v23 = [NSString stringWithUTF8String:"nfcd"];
    v100[0] = NSLocalizedDescriptionKey;
    v50 = [NSString stringWithUTF8String:"Not found"];
    v101[0] = v50;
    v101[1] = &off_100336D98;
    v100[1] = @"Line";
    v100[2] = @"Method";
    v51 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_appletForIdentifier:filtered:cacheOnly:outError:")];
    v101[2] = v51;
    v100[3] = NSDebugDescriptionErrorKey;
    v52 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_appletForIdentifier:filtered:cacheOnly:outError:"), 770];
    v101[3] = v52;
    v100[4] = NSLocalizedFailureReasonErrorKey;
    v53 = [[NSString alloc] initWithFormat:@"applet not found in cache."];
    v101[4] = v53;
    v54 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:5];
    *v83 = [v49 initWithDomain:v23 code:65 userInfo:v54];

    goto LABEL_30;
  }

LABEL_45:
  v41 = 0;
LABEL_71:

LABEL_72:

  return v41;
}

id sub_100258B60(void *a1, void *a2, char a3, void *a4)
{
  if (a1)
  {
    a1 = sub_100257F60(a1, a2, a3, 0, a4);
    v4 = vars8;
  }

  return a1;
}

id sub_100258B98(void *a1, void *a2, char a3, void *a4)
{
  if (a1)
  {
    a1 = sub_100257F60(a1, a2, a3, 1, a4);
    v4 = vars8;
  }

  return a1;
}

id sub_100258BD0(void *a1, uint64_t a2)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:");
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i visible=%d", v8, ClassName, Name, 827, a2);
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
    v116 = v11;
    v117 = 2082;
    v118 = object_getClassName(a1);
    v119 = 2082;
    v120 = sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:");
    v121 = 1024;
    v122 = 827;
    v123 = 1024;
    v124 = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i visible=%d", buf, 0x28u);
  }

  v12 = [NFTLV TLVWithTag:131 unsignedChar:a2];
  v13 = [v12 asData];
  v98 = 0;
  v14 = sub_100158334(a1, 128, 52, 0, 0, v13, &v98);
  v15 = v98;

  v97 = v14;
  if (v14)
  {
    if ([v14 status] == 36864)
    {
      v16 = 0;
      goto LABEL_54;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v32 = NFLogGetLogger();
    if (v32)
    {
      v33 = v32;
      v34 = object_getClass(a1);
      v35 = class_isMetaClass(v34);
      v36 = object_getClassName(a1);
      v37 = sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:");
      v91 = [v97 status];
      v90 = v37;
      v14 = v97;
      v38 = 45;
      if (v35)
      {
        v38 = 43;
      }

      v33(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v38, v36, v90, 850, v91);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = object_getClass(a1);
      v41 = v12;
      if (class_isMetaClass(v40))
      {
        v42 = 43;
      }

      else
      {
        v42 = 45;
      }

      v43 = object_getClassName(a1);
      v44 = sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:");
      v45 = [v14 status];
      *buf = 67110146;
      v116 = v42;
      v12 = v41;
      v117 = 2082;
      v118 = v43;
      v119 = 2082;
      v120 = v44;
      v121 = 1024;
      v122 = 850;
      v123 = 1024;
      v124 = v45;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", buf, 0x28u);
    }

    if ([v14 status] != 26880)
    {
      v46 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Non-90000 response. Response: 0x%04X", [v14 status]);
      sub_100199A24(NFBugCapture, @"Failed to set instance visibility", v46, &off_10033A070);
    }

    v47 = [v14 status];
    v48 = [NSError alloc];
    v49 = [NSString stringWithUTF8String:"nfcd"];
    v96 = v12;
    v94 = v47;
    if (v15)
    {
      v92 = v48;
      v50 = [v15 code];
      v105[0] = NSLocalizedDescriptionKey;
      if ([v15 code] > 75)
      {
        v51 = 76;
      }

      else
      {
        v51 = [v15 code];
      }

      v79 = [NSString stringWithUTF8String:off_10031CED8[v51]];
      v106[0] = v79;
      v106[1] = v15;
      v105[1] = NSUnderlyingErrorKey;
      v105[2] = @"Line";
      v106[2] = &off_100336E58;
      v105[3] = @"Method";
      v80 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:")];
      v106[3] = v80;
      v105[4] = NSDebugDescriptionErrorKey;
      v81 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:"), 860];
      v106[4] = v81;
      v82 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:5];
      v83 = [v92 initWithDomain:v49 code:v50 userInfo:v82];
      [NFExceptionsCALogger postAnalyticsContactlessErrorsEvent:0 status:v94 error:v83];

      v84 = [NSError alloc];
      v58 = [NSString stringWithUTF8String:"nfcd"];
      v69 = [v15 code];
      v101[0] = NSLocalizedDescriptionKey;
      if ([v15 code] > 75)
      {
        v85 = 76;
      }

      else
      {
        v85 = [v15 code];
      }

      v59 = [NSString stringWithUTF8String:off_10031CED8[v85]];
      v102[0] = v59;
      v102[1] = v15;
      v101[1] = NSUnderlyingErrorKey;
      v101[2] = @"Line";
      v102[2] = &off_100336E88;
      v101[3] = @"Method";
      v60 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:")];
      v102[3] = v60;
      v101[4] = NSDebugDescriptionErrorKey;
      v61 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:"), 862];
      v102[4] = v61;
      v62 = [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:5];
      v63 = v84;
LABEL_52:
      v77 = v58;
      v78 = v69;
      goto LABEL_53;
    }

    v103[0] = NSLocalizedDescriptionKey;
    v71 = [NSString stringWithUTF8String:"Command Error"];
    v104[0] = v71;
    v104[1] = &off_100336E70;
    v103[1] = @"Line";
    v103[2] = @"Method";
    v72 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:")];
    v104[2] = v72;
    v103[3] = NSDebugDescriptionErrorKey;
    v73 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:"), 861];
    v104[3] = v73;
    v74 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:4];
    v75 = [v48 initWithDomain:v49 code:16 userInfo:v74];
    [NFExceptionsCALogger postAnalyticsContactlessErrorsEvent:0 status:v94 error:v75];

    v76 = [NSError alloc];
    v58 = [NSString stringWithUTF8String:"nfcd"];
    v99[0] = NSLocalizedDescriptionKey;
    v59 = [NSString stringWithUTF8String:"Command Error"];
    v100[0] = v59;
    v100[1] = &off_100336E88;
    v99[1] = @"Line";
    v99[2] = @"Method";
    v60 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:")];
    v100[2] = v60;
    v99[3] = NSDebugDescriptionErrorKey;
    v61 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:"), 862];
    v100[3] = v61;
    v62 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:4];
    v63 = v76;
  }

  else
  {
    v96 = v12;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v18 = v17;
      v19 = object_getClass(a1);
      v20 = class_isMetaClass(v19);
      v21 = object_getClassName(a1);
      v89 = sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:");
      v22 = 45;
      if (v20)
      {
        v22 = 43;
      }

      v18(3, "%c[%{public}s %{public}s]:%i Command (%02X) failed; error: %{public}@", v22, v21, v89, 839, 52, v15);
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
      v27 = sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:");
      *buf = 67110402;
      v116 = v25;
      v117 = 2082;
      v118 = v26;
      v119 = 2082;
      v120 = v27;
      v121 = 1024;
      v122 = 839;
      v123 = 1024;
      v124 = 52;
      v125 = 2114;
      v126 = v15;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command (%02X) failed; error: %{public}@", buf, 0x32u);
    }

    sub_100199A24(NFBugCapture, @"Failed to set instance visibility", @"No Response from SE", &off_10033A048);
    v28 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    if (v15)
    {
      v93 = v28;
      v30 = [v15 code];
      v113[0] = NSLocalizedDescriptionKey;
      if ([v15 code] > 75)
      {
        v31 = 76;
      }

      else
      {
        v31 = [v15 code];
      }

      v64 = [NSString stringWithUTF8String:off_10031CED8[v31]];
      v114[0] = v64;
      v114[1] = v15;
      v113[1] = NSUnderlyingErrorKey;
      v113[2] = @"Line";
      v114[2] = &off_100336E10;
      v113[3] = @"Method";
      v65 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:")];
      v114[3] = v65;
      v113[4] = NSDebugDescriptionErrorKey;
      v66 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:"), 845];
      v114[4] = v66;
      v67 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:5];
      v68 = [v93 initWithDomain:v29 code:v30 userInfo:v67];
      [NFExceptionsCALogger postAnalyticsContactlessErrorsEvent:0 status:0 error:v68];

      v95 = [NSError alloc];
      v58 = [NSString stringWithUTF8String:"nfcd"];
      v69 = [v15 code];
      v109[0] = NSLocalizedDescriptionKey;
      if ([v15 code] > 75)
      {
        v70 = 76;
      }

      else
      {
        v70 = [v15 code];
      }

      v59 = [NSString stringWithUTF8String:off_10031CED8[v70]];
      v110[0] = v59;
      v110[1] = v15;
      v109[1] = NSUnderlyingErrorKey;
      v109[2] = @"Line";
      v110[2] = &off_100336E40;
      v109[3] = @"Method";
      v60 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:")];
      v110[3] = v60;
      v109[4] = NSDebugDescriptionErrorKey;
      v61 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:"), 847];
      v110[4] = v61;
      v62 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:5];
      v63 = v95;
      goto LABEL_52;
    }

    v111[0] = NSLocalizedDescriptionKey;
    v52 = [NSString stringWithUTF8String:"Command Error"];
    v112[0] = v52;
    v112[1] = &off_100336E28;
    v111[1] = @"Line";
    v111[2] = @"Method";
    v53 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:")];
    v112[2] = v53;
    v111[3] = NSDebugDescriptionErrorKey;
    v54 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:"), 846];
    v112[3] = v54;
    v55 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:4];
    v56 = [v28 initWithDomain:v29 code:16 userInfo:v55];
    [NFExceptionsCALogger postAnalyticsContactlessErrorsEvent:0 status:0 error:v56];

    v57 = [NSError alloc];
    v58 = [NSString stringWithUTF8String:"nfcd"];
    v107[0] = NSLocalizedDescriptionKey;
    v59 = [NSString stringWithUTF8String:"Command Error"];
    v108[0] = v59;
    v108[1] = &off_100336E40;
    v107[1] = @"Line";
    v107[2] = @"Method";
    v60 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:")];
    v108[2] = v60;
    v107[3] = NSDebugDescriptionErrorKey;
    v61 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_setTemporaryVisibilityOnAllEndpointsOfSelectedApplet:"), 847];
    v108[3] = v61;
    v62 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:4];
    v63 = v57;
  }

  v77 = v58;
  v78 = 16;
LABEL_53:
  v16 = [v63 initWithDomain:v77 code:v78 userInfo:v62];

  v12 = v96;
LABEL_54:

  return v16;
}

id sub_100259B8C(id *a1, int a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = [NSData NF_dataWithHexString:a3];
  v115 = 0;
  v11 = sub_10025A988(a1, v10, v9, a2, &v115);
  v12 = v115;
  if (!v11)
  {
    v113 = a5;
    v15 = [[NSData alloc] initWithBytes:&unk_100297D8C length:9];
    v16 = [v15 NF_asHexString];

    v17 = [v9 identifier];
    v18 = [v17 compare:v16 options:1 range:{0, objc_msgSend(v16, "length")}];

    v19 = [v12 response];
    v11 = [v19 length];

    if (!v18)
    {
      if (v11)
      {
        v29 = v16;
        v30 = [NSData alloc];
        v27 = [v12 response];
        v31 = v30;
        v16 = v29;
        v14 = [v31 initWithData:v27];
        v11 = 0;
        v23 = v12;
LABEL_66:

        v12 = v23;
        goto LABEL_67;
      }

      v14 = 0;
LABEL_67:

      goto LABEL_68;
    }

    v112 = v16;
    if (v11 == 2)
    {
      v20 = [v12 response];
      v21 = *[v20 bytes];

      if (v21)
      {
        v22 = __rev16(v21);
        v114 = 0;
        v23 = sub_100157AB0(a1, 128, 176, 0, 0, 0, v22, 0, 0, &v114);
        v11 = v114;

        if (v23)
        {
          if ([v23 status] == 36864)
          {
            v24 = [v23 data];
            v25 = [v24 length];

            if (v25)
            {
              v26 = [NSData alloc];
              v27 = [v23 data];
              v28 = [v27 subdataWithRange:{0, v22}];
              v14 = [v26 initWithData:v28];

LABEL_25:
              v16 = v112;
              goto LABEL_66;
            }

            goto LABEL_56;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v66 = Logger;
            Class = object_getClass(a1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(a1);
            Name = sel_getName("_readTransactionCodesForContactless:forIdentifier:onApplet:outError:");
            v105 = [v23 status];
            v71 = 45;
            if (isMetaClass)
            {
              v71 = 43;
            }

            v66(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v71, ClassName, Name, 985, v105);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v72 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            v73 = object_getClass(a1);
            if (class_isMetaClass(v73))
            {
              v74 = 43;
            }

            else
            {
              v74 = 45;
            }

            v75 = object_getClassName(a1);
            v76 = sel_getName("_readTransactionCodesForContactless:forIdentifier:onApplet:outError:");
            v77 = [v23 status];
            *buf = 67110146;
            v127 = v74;
            v128 = 2082;
            v129 = v75;
            v130 = 2082;
            v131 = v76;
            v132 = 1024;
            v133 = 985;
            v134 = 1024;
            LODWORD(v135) = v77;
            _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", buf, 0x28u);
          }

          if (!v113)
          {
LABEL_56:
            v14 = 0;
            v12 = v23;
            goto LABEL_28;
          }

          v78 = [NSError alloc];
          v27 = [NSString stringWithUTF8String:"nfcd"];
          v16 = v112;
          if (v11)
          {
            v106 = [v11 code];
            v118[0] = NSLocalizedDescriptionKey;
            v109 = v78;
            if ([v11 code] > 75)
            {
              v79 = 76;
            }

            else
            {
              v79 = [v11 code];
            }

            v96 = [NSString stringWithUTF8String:off_10031CED8[v79]];
            v119[0] = v96;
            v119[1] = v11;
            v118[1] = NSUnderlyingErrorKey;
            v118[2] = @"Line";
            v119[2] = &off_100336F60;
            v118[3] = @"Method";
            v97 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_readTransactionCodesForContactless:forIdentifier:onApplet:outError:")];
            v119[3] = v97;
            v118[4] = NSDebugDescriptionErrorKey;
            v98 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_readTransactionCodesForContactless:forIdentifier:onApplet:outError:"), 988];
            v119[4] = v98;
            v99 = [NSDictionary dictionaryWithObjects:v119 forKeys:v118 count:5];
            v100 = [v109 initWithDomain:v27 code:v106 userInfo:v99];
            *v113 = v100;
          }

          else
          {
            v116[0] = NSLocalizedDescriptionKey;
            v107 = [NSString stringWithUTF8String:"Command Error"];
            v117[0] = v107;
            v117[1] = &off_100336F60;
            v116[1] = @"Line";
            v116[2] = @"Method";
            v91 = v78;
            v92 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_readTransactionCodesForContactless:forIdentifier:onApplet:outError:")];
            v117[2] = v92;
            v116[3] = NSDebugDescriptionErrorKey;
            v93 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_readTransactionCodesForContactless:forIdentifier:onApplet:outError:"), 988];
            v117[3] = v93;
            v94 = [NSDictionary dictionaryWithObjects:v117 forKeys:v116 count:4];
            v95 = [v91 initWithDomain:v27 code:16 userInfo:v94];
            *v113 = v95;

            v11 = 0;
          }

LABEL_65:
          v14 = 0;
          goto LABEL_66;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v52 = NFLogGetLogger();
        if (v52)
        {
          v53 = v52;
          v54 = object_getClass(a1);
          v55 = class_isMetaClass(v54);
          v102 = object_getClassName(a1);
          v103 = sel_getName("_readTransactionCodesForContactless:forIdentifier:onApplet:outError:");
          v56 = 45;
          if (v55)
          {
            v56 = 43;
          }

          v53(3, "%c[%{public}s %{public}s]:%i Read binary failed: %{public}@", v56, v102, v103, 978, v11);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v57 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
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
          v61 = sel_getName("_readTransactionCodesForContactless:forIdentifier:onApplet:outError:");
          *buf = 67110146;
          v127 = v59;
          v128 = 2082;
          v129 = v60;
          v130 = 2082;
          v131 = v61;
          v132 = 1024;
          v133 = 978;
          v134 = 2114;
          v135 = v11;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Read binary failed: %{public}@", buf, 0x2Cu);
        }

        if (v113)
        {
          v62 = [NSError alloc];
          v63 = [NSString stringWithUTF8String:"nfcd"];
          v16 = v112;
          if (v11)
          {
            v108 = [v11 code];
            v122[0] = NSLocalizedDescriptionKey;
            v111 = v62;
            if ([v11 code] > 75)
            {
              v64 = 76;
            }

            else
            {
              v64 = [v11 code];
            }

            v86 = [NSString stringWithUTF8String:off_10031CED8[v64]];
            v123[0] = v86;
            v123[1] = v11;
            v122[1] = NSUnderlyingErrorKey;
            v122[2] = @"Line";
            v123[2] = &off_100336F48;
            v122[3] = @"Method";
            v87 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_readTransactionCodesForContactless:forIdentifier:onApplet:outError:")];
            v123[3] = v87;
            v122[4] = NSDebugDescriptionErrorKey;
            v88 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_readTransactionCodesForContactless:forIdentifier:onApplet:outError:"), 980];
            v123[4] = v88;
            v89 = [NSDictionary dictionaryWithObjects:v123 forKeys:v122 count:5];
            v27 = v63;
            v90 = [v111 initWithDomain:v63 code:v108 userInfo:v89];
            *v113 = v90;
          }

          else
          {
            v120[0] = NSLocalizedDescriptionKey;
            v110 = [NSString stringWithUTF8String:"Command Error"];
            v121[0] = v110;
            v121[1] = &off_100336F48;
            v120[1] = @"Line";
            v120[2] = @"Method";
            v80 = v62;
            v81 = v63;
            v82 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_readTransactionCodesForContactless:forIdentifier:onApplet:outError:")];
            v121[2] = v82;
            v120[3] = NSDebugDescriptionErrorKey;
            v27 = v81;
            v83 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_readTransactionCodesForContactless:forIdentifier:onApplet:outError:"), 980];
            v121[3] = v83;
            v84 = [NSDictionary dictionaryWithObjects:v121 forKeys:v120 count:4];
            v85 = [v80 initWithDomain:v81 code:16 userInfo:v84];
            *v113 = v85;

            v11 = 0;
          }

          v23 = 0;
          goto LABEL_65;
        }

        v12 = 0;
LABEL_27:
        v14 = 0;
LABEL_28:
        v16 = v112;
        goto LABEL_67;
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v32 = NFLogGetLogger();
      if (v32)
      {
        v33 = v32;
        v34 = object_getClass(a1);
        v35 = class_isMetaClass(v34);
        v36 = object_getClassName(a1);
        v37 = sel_getName("_readTransactionCodesForContactless:forIdentifier:onApplet:outError:");
        v38 = [v12 response];
        v104 = [v38 length];
        v39 = 45;
        if (v35)
        {
          v39 = 43;
        }

        v33(3, "%c[%{public}s %{public}s]:%i Unexpected response length %lu", v39, v36, v37, 954, v104);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v40 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = object_getClass(a1);
        if (class_isMetaClass(v41))
        {
          v42 = 43;
        }

        else
        {
          v42 = 45;
        }

        v43 = object_getClassName(a1);
        v44 = sel_getName("_readTransactionCodesForContactless:forIdentifier:onApplet:outError:");
        v45 = [v12 response];
        v46 = [v45 length];
        *buf = 67110146;
        v127 = v42;
        v128 = 2082;
        v129 = v43;
        v130 = 2082;
        v131 = v44;
        v132 = 1024;
        v133 = 954;
        v134 = 2048;
        v135 = v46;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected response length %lu", buf, 0x2Cu);
      }

      if (v113)
      {
        v47 = [NSError alloc];
        v27 = [NSString stringWithUTF8String:"nfcd"];
        v124[0] = NSLocalizedDescriptionKey;
        v48 = [NSString stringWithUTF8String:"Command Error"];
        v125[0] = v48;
        v125[1] = &off_100336F30;
        v124[1] = @"Line";
        v124[2] = @"Method";
        v49 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_readTransactionCodesForContactless:forIdentifier:onApplet:outError:")];
        v125[2] = v49;
        v124[3] = NSDebugDescriptionErrorKey;
        v50 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_readTransactionCodesForContactless:forIdentifier:onApplet:outError:"), 956];
        v125[3] = v50;
        v51 = [NSDictionary dictionaryWithObjects:v125 forKeys:v124 count:4];
        *v113 = [v47 initWithDomain:v27 code:16 userInfo:v51];

        v11 = 0;
        v14 = 0;
        v23 = v12;
        goto LABEL_25;
      }
    }

    v11 = 0;
    goto LABEL_27;
  }

  if (a5)
  {
    v13 = v11;
    v14 = 0;
    *a5 = v11;
  }

  else
  {
    v14 = 0;
  }

LABEL_68:

  return v14;
}

id sub_10025A988(id *a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    v91 = 0;
    v11 = sub_100159994(a1, v10, &v91);
    v12 = v91;
    v13 = v12;
    v88 = v9;
    v89 = v10;
    if (v11)
    {
      v90 = v12;
      if (a4)
      {
        v14 = 132;
      }

      else
      {
        v14 = 133;
      }

      v15 = sub_100157AB0(a1, 128, 118, v14, 0, v9, 0, 0, 0, &v90);
      v16 = v90;

      if (a5)
      {
        v17 = v15;
        *a5 = v15;
      }

      if (v15)
      {
        if ([v15 status] == 25600 || objc_msgSend(v15, "status") == 28410)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v19 = Logger;
            Class = object_getClass(a1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(a1);
            Name = sel_getName("_validateKeyExistence:applet:contactless:rapdu:");
            v23 = 45;
            if (isMetaClass)
            {
              v23 = 43;
            }

            v19(5, "%c[%{public}s %{public}s]:%i Endpoint not found", v23, ClassName, Name, 1352);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v24 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
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

            v27 = object_getClassName(a1);
            v28 = sel_getName("_validateKeyExistence:applet:contactless:rapdu:");
            *buf = 67109890;
            v101 = v26;
            v102 = 2082;
            v103 = v27;
            v104 = 2082;
            v105 = v28;
            v106 = 1024;
            v107 = 1352;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Endpoint not found", buf, 0x22u);
          }

          v29 = [NSError alloc];
          v30 = [NSString stringWithUTF8String:"nfcd"];
          v94[0] = NSLocalizedDescriptionKey;
          v31 = [NSString stringWithUTF8String:"Not found"];
          v95[0] = v31;
          v95[1] = &off_1003370C8;
          v94[1] = @"Line";
          v94[2] = @"Method";
          v32 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_validateKeyExistence:applet:contactless:rapdu:")];
          v95[2] = v32;
          v94[3] = NSDebugDescriptionErrorKey;
          v33 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_validateKeyExistence:applet:contactless:rapdu:"), 1355];
          v95[3] = v33;
          v34 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:4];
          v35 = v29;
          v36 = v30;
          v37 = 65;
        }

        else
        {
          if ([v15 status] == 36864)
          {
            v38 = 0;
LABEL_55:

            goto LABEL_56;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v71 = NFLogGetLogger();
          if (v71)
          {
            v72 = v71;
            v73 = object_getClass(a1);
            v74 = class_isMetaClass(v73);
            v75 = object_getClassName(a1);
            v76 = sel_getName("_validateKeyExistence:applet:contactless:rapdu:");
            v87 = [v15 status];
            v77 = 45;
            if (v74)
            {
              v77 = 43;
            }

            v72(3, "%c[%{public}s %{public}s]:%i Failed to execute endpoint view command; status: 0x%04X", v77, v75, v76, 1358, v87);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v78 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
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
            v82 = sel_getName("_validateKeyExistence:applet:contactless:rapdu:");
            v83 = [v15 status];
            *buf = 67110146;
            v101 = v80;
            v102 = 2082;
            v103 = v81;
            v104 = 2082;
            v105 = v82;
            v106 = 1024;
            v107 = 1358;
            v108 = 1024;
            LODWORD(v109) = v83;
            _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to execute endpoint view command; status: 0x%04X", buf, 0x28u);
          }

          v84 = [NSError alloc];
          v30 = [NSString stringWithUTF8String:"nfcd"];
          v92[0] = NSLocalizedDescriptionKey;
          v31 = [NSString stringWithUTF8String:"Command Error"];
          v93[0] = v31;
          v93[1] = &off_1003370E0;
          v92[1] = @"Line";
          v92[2] = @"Method";
          v32 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_validateKeyExistence:applet:contactless:rapdu:")];
          v93[2] = v32;
          v92[3] = NSDebugDescriptionErrorKey;
          v33 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_validateKeyExistence:applet:contactless:rapdu:"), 1359];
          v93[3] = v33;
          v34 = [NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:4];
          v35 = v84;
          v36 = v30;
          v37 = 16;
        }

        v38 = [v35 initWithDomain:v36 code:v37 userInfo:v34];
        v13 = v16;
        goto LABEL_53;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v56 = NFLogGetLogger();
      if (v56)
      {
        v57 = v56;
        v58 = object_getClass(a1);
        v59 = class_isMetaClass(v58);
        v60 = object_getClassName(a1);
        v86 = sel_getName("_validateKeyExistence:applet:contactless:rapdu:");
        v61 = 45;
        if (v59)
        {
          v61 = 43;
        }

        v57(3, "%c[%{public}s %{public}s]:%i VIEW to %{public}@ failed: %{public}@", v61, v60, v86, 1345, v9, v16);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v62 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v63 = object_getClass(a1);
        if (class_isMetaClass(v63))
        {
          v64 = 43;
        }

        else
        {
          v64 = 45;
        }

        v65 = object_getClassName(a1);
        v66 = sel_getName("_validateKeyExistence:applet:contactless:rapdu:");
        *buf = 67110402;
        v101 = v64;
        v102 = 2082;
        v103 = v65;
        v104 = 2082;
        v105 = v66;
        v106 = 1024;
        v107 = 1345;
        v108 = 2114;
        v109 = v9;
        v110 = 2114;
        v111 = v16;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i VIEW to %{public}@ failed: %{public}@", buf, 0x36u);
      }

      v67 = [NSError alloc];
      v30 = [NSString stringWithUTF8String:"nfcd"];
      if (v16)
      {
        v68 = [v16 code];
        v98[0] = NSLocalizedDescriptionKey;
        v10 = v89;
        if ([v16 code] > 75)
        {
          v69 = 76;
        }

        else
        {
          v69 = [v16 code];
        }

        v31 = [NSString stringWithUTF8String:off_10031CED8[v69]];
        v99[0] = v31;
        v99[1] = v16;
        v98[1] = NSUnderlyingErrorKey;
        v98[2] = @"Line";
        v99[2] = &off_1003370B0;
        v98[3] = @"Method";
        v32 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_validateKeyExistence:applet:contactless:rapdu:")];
        v99[3] = v32;
        v98[4] = NSDebugDescriptionErrorKey;
        v33 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_validateKeyExistence:applet:contactless:rapdu:"), 1346];
        v99[4] = v33;
        v34 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:5];
        v38 = [v67 initWithDomain:v30 code:v68 userInfo:v34];
        v15 = 0;
        v13 = v16;
        goto LABEL_54;
      }

      v96[0] = NSLocalizedDescriptionKey;
      v31 = [NSString stringWithUTF8String:"Command Error"];
      v97[0] = v31;
      v97[1] = &off_1003370B0;
      v96[1] = @"Line";
      v96[2] = @"Method";
      v32 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_validateKeyExistence:applet:contactless:rapdu:")];
      v97[2] = v32;
      v96[3] = NSDebugDescriptionErrorKey;
      v33 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_validateKeyExistence:applet:contactless:rapdu:"), 1346];
      v97[3] = v33;
      v34 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:4];
      v38 = [v67 initWithDomain:v30 code:16 userInfo:v34];
      v13 = 0;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v39 = NFLogGetLogger();
      if (v39)
      {
        v40 = v39;
        v41 = object_getClass(a1);
        v42 = class_isMetaClass(v41);
        v43 = object_getClassName(a1);
        v44 = sel_getName("_validateKeyExistence:applet:contactless:rapdu:");
        v45 = [v10 identifier];
        v46 = 45;
        if (v42)
        {
          v46 = 43;
        }

        v40(3, "%c[%{public}s %{public}s]:%i Failed to select %{public}@", v46, v43, v44, 1327, v45);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v47 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = object_getClass(a1);
        if (class_isMetaClass(v48))
        {
          v49 = 43;
        }

        else
        {
          v49 = 45;
        }

        v50 = object_getClassName(a1);
        v51 = sel_getName("_validateKeyExistence:applet:contactless:rapdu:");
        v52 = [v89 identifier];
        *buf = 67110146;
        v101 = v49;
        v102 = 2082;
        v103 = v50;
        v104 = 2082;
        v105 = v51;
        v106 = 1024;
        v107 = 1327;
        v108 = 2114;
        v109 = v52;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select %{public}@", buf, 0x2Cu);
      }

      v53 = [NSError alloc];
      v30 = [NSString stringWithUTF8String:"nfcd"];
      if (v13)
      {
        v54 = [v13 code];
        v114[0] = NSLocalizedDescriptionKey;
        if ([v13 code] > 75)
        {
          v55 = 76;
        }

        else
        {
          v55 = [v13 code];
        }

        v10 = v89;
        v31 = [NSString stringWithUTF8String:off_10031CED8[v55]];
        v115[0] = v31;
        v115[1] = v13;
        v114[1] = NSUnderlyingErrorKey;
        v114[2] = @"Line";
        v115[2] = &off_100337098;
        v114[3] = @"Method";
        v32 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_validateKeyExistence:applet:contactless:rapdu:")];
        v115[3] = v32;
        v114[4] = NSDebugDescriptionErrorKey;
        v33 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_validateKeyExistence:applet:contactless:rapdu:"), 1328];
        v115[4] = v33;
        v34 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:5];
        v38 = [v53 initWithDomain:v30 code:v54 userInfo:v34];
        v15 = 0;
        goto LABEL_54;
      }

      v112[0] = NSLocalizedDescriptionKey;
      v31 = [NSString stringWithUTF8String:"Stack Error"];
      v113[0] = v31;
      v113[1] = &off_100337098;
      v112[1] = @"Line";
      v112[2] = @"Method";
      v32 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_validateKeyExistence:applet:contactless:rapdu:")];
      v113[2] = v32;
      v112[3] = NSDebugDescriptionErrorKey;
      v33 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_validateKeyExistence:applet:contactless:rapdu:"), 1328];
      v113[3] = v33;
      v34 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:4];
      v38 = [v53 initWithDomain:v30 code:15 userInfo:v34];
    }

    v15 = 0;
LABEL_53:
    v10 = v89;
LABEL_54:

    v16 = v13;
    v9 = v88;
    goto LABEL_55;
  }

  v38 = 0;
LABEL_56:

  return v38;
}