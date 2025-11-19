void sub_10016A894(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, int a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  if (v11 && [v11 code] != 66 || objc_msgSend(v12, "count"))
  {
    if ([v12 count] && (objc_msgSend(*(a1 + 40), "disableCompletionNotification") & 1) == 0)
    {
      *(*(a1 + 32) + 177) = 1;
    }

    v13 = [NSMutableDictionary alloc];
    v68[0] = @"kBatchId";
    v68[1] = @"kTaskId";
    v14 = *(a1 + 56);
    v69[0] = *(a1 + 48);
    v69[1] = v14;
    v68[2] = @"kCommandsResponse";
    v68[3] = @"kVersion";
    v69[2] = v12;
    v69[3] = &off_100332820;
    v15 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:4];
    v16 = [v13 initWithDictionary:v15];

    if ([*(a1 + 40) includeAPDUDuration])
    {
      v17 = [NSNumber numberWithUnsignedLongLong:a4];
      [v16 setObject:v17 forKeyedSubscript:@"totalCommandResponseTimeInMS"];
    }

    v18 = @"targetSEID";
    v19 = [*(a1 + 64) objectForKey:@"targetSEID"];

    if (v19 || (v18 = @"SEID", [*(a1 + 64) objectForKey:@"SEID"], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
    {
      v21 = [*(a1 + 40) seid];
      [v16 setValue:v21 forKey:v18];
    }

    v22 = [v12 count];
    if (v22 != [*(a1 + 72) count])
    {
      [v16 setValue:&__kCFBooleanTrue forKey:@"incompletedExecution"];
    }

    if (a5)
    {
      [v16 setValue:&__kCFBooleanTrue forKey:@"commandResponseFailureDetected"];
    }

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

      v24(6, "%c[%{public}s %{public}s]:%i Done running script. Status = %ld, error = %@", v28, ClassName, Name, 1264, a3, v11);
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
      v33 = sel_getName(*(a1 + 88));
      *buf = 67110402;
      v57 = v31;
      v58 = 2082;
      v59 = v32;
      v60 = 2082;
      v61 = v33;
      v62 = 1024;
      v63 = 1264;
      v64 = 2048;
      v65 = a3;
      v66 = 2112;
      v67 = v11;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Done running script. Status = %ld, error = %@", buf, 0x36u);
    }

    (*(*(a1 + 80) + 16))(a4 / 1000.0);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFLogGetLogger();
    if (v34)
    {
      v35 = v34;
      v36 = object_getClass(*(a1 + 32));
      v37 = class_isMetaClass(v36);
      v38 = object_getClassName(*(a1 + 32));
      v55 = sel_getName(*(a1 + 88));
      v39 = 45;
      if (v37)
      {
        v39 = 43;
      }

      v35(3, "%c[%{public}s %{public}s]:%i No response from SE", v39, v38, v55, 1230);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v40 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
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
      v44 = sel_getName(*(a1 + 88));
      *buf = 67109890;
      v57 = v42;
      v58 = 2082;
      v59 = v43;
      v60 = 2082;
      v61 = v44;
      v62 = 1024;
      v63 = 1230;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No response from SE", buf, 0x22u);
    }

    v45 = a4;
    v46 = *(a1 + 80);
    v47 = v45 / 1000.0;
    v48 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v70[0] = NSLocalizedDescriptionKey;
    v49 = [NSString stringWithUTF8String:"Empty response"];
    v71[0] = v49;
    v71[1] = &off_100332808;
    v70[1] = @"Line";
    v70[2] = @"Method";
    v50 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 88))];
    v71[2] = v50;
    v70[3] = NSDebugDescriptionErrorKey;
    v51 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 88)), 1231];
    v71[3] = v51;
    v52 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:4];
    v53 = [v48 initWithDomain:v16 code:66 userInfo:v52];
    (*(v46 + 16))(v46, 0, -1, v53, v47);
  }
}

void sub_10016AFDC(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 1274, v8);
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
    v63 = v12;
    v64 = 2082;
    v65 = v13;
    v66 = 2082;
    v67 = v14;
    v68 = 1024;
    v69 = 1274;
    v70 = 2114;
    v71 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v32 = [*(a1 + 32) _getSecureElementWrapperForSEID:*(a1 + 40)];
    if ([*(a1 + 32) _activateSecureElementWrapper:v32])
    {
      v36 = [*(a1 + 32) embeddedSecureElementWrapper];
      v37 = [v36 handle];
      v38 = [v37 info];
      v39 = [v38 restrictedMode];

      if ((v39 & 1) == 0)
      {
        v40 = +[_NFHardwareManager sharedHardwareManager];
        [v40 refreshSecureElementInfo];
      }

      v41 = [*(a1 + 32) embeddedSecureElementWrapper];
      v34 = sub_100253E14(v41);

      v42 = [*(a1 + 32) embeddedSecureElementWrapper];
      v43 = sub_100261EA4(v42);

      if ([*(a1 + 32) isDirty])
      {
        [*(a1 + 32) embeddedSecureElementWrapper];
      }

      if (v34)
      {
        v44 = *(a1 + 48);
        v34 = v34;
        v45 = [NSError alloc];
        v46 = [NSString stringWithUTF8String:"nfcd"];
        v56[0] = NSLocalizedDescriptionKey;
        v47 = [NSString stringWithUTF8String:"Command Error"];
        v57[0] = v47;
        v57[1] = v34;
        v56[1] = NSUnderlyingErrorKey;
        v56[2] = @"Line";
        v57[2] = &off_100332838;
        v56[3] = @"Method";
        v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
        v57[3] = v48;
        v56[4] = NSDebugDescriptionErrorKey;
        v49 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 1304];
        v57[4] = v49;
        v50 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:5];
        v51 = [v45 initWithDomain:v46 code:16 userInfo:v50];
        (*(v44 + 16))(v44, v51);
      }

      else
      {
        [*(a1 + 32) markAsDirty:0];
        (*(*(a1 + 48) + 16))();
      }

      v33 = 0;
    }

    else
    {
      v52 = *(a1 + 48);
      v53 = [NSError alloc];
      v33 = [NSString stringWithUTF8String:"nfcd"];
      v58 = NSLocalizedDescriptionKey;
      v34 = [NSString stringWithUTF8String:"Stack Error"];
      v59 = v34;
      v54 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v55 = [v53 initWithDomain:v33 code:15 userInfo:v54];
      (*(v52 + 16))(v52, v55);
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
    v21 = sel_getName(*(a1 + 56));
    v22 = [*(a1 + 32) sessionUID];
    v23 = 45;
    if (v19)
    {
      v23 = 43;
    }

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 1276, v22);
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
    v63 = v26;
    v64 = 2082;
    v65 = v27;
    v66 = 2082;
    v67 = v28;
    v68 = 1024;
    v69 = 1276;
    v70 = 2114;
    v71 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 48);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v60 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v61 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
    (*(v30 + 16))(v30, v35);

LABEL_24:
  }
}

void sub_10016B7E0(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 1313, v8);
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
    v59 = v12;
    v60 = 2082;
    v61 = v13;
    v62 = 2082;
    v63 = v14;
    v64 = 1024;
    v65 = 1313;
    v66 = 2114;
    v67 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    if ([*(a1 + 32) uid])
    {
      v36 = [*(a1 + 32) uid];
    }

    else
    {
      v36 = 0xFFFFFFFFLL;
    }

    v37 = [*(a1 + 32) embeddedSecureElementWrapper];
    v38 = sub_10020029C(v37, v36);

    v39 = *(a1 + 40);
    switch(v38)
    {
      case 0x18u:
        v45 = [NSError alloc];
        v32 = [NSString stringWithUTF8String:"nfcd"];
        v52 = NSLocalizedDescriptionKey;
        v33 = [NSString stringWithUTF8String:"Restricted Mode"];
        v53 = v33;
        v41 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v42 = v45;
        v43 = v32;
        v44 = 24;
        break;
      case 8u:
        v40 = [NSError alloc];
        v32 = [NSString stringWithUTF8String:"nfcd"];
        v54 = NSLocalizedDescriptionKey;
        v33 = [NSString stringWithUTF8String:"Security Not Initialized"];
        v55 = v33;
        v41 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v42 = v40;
        v43 = v32;
        v44 = 27;
        break;
      case 0u:
        v32 = [*(a1 + 32) embeddedSecureElementWrapper];
        (*(v39 + 16))(v39, 0, 0, [v32 getPairingVersion]);
        goto LABEL_25;
      default:
        v46 = [NSError alloc];
        v32 = [NSString stringWithUTF8String:"nfcd"];
        v50 = NSLocalizedDescriptionKey;
        v33 = [NSString stringWithUTF8String:"Unknown Error"];
        v51 = v33;
        v41 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        v42 = v46;
        v43 = v32;
        v44 = 6;
        break;
    }

    v47 = [v42 initWithDomain:v43 code:v44 userInfo:v41];
    v48 = [*(a1 + 32) embeddedSecureElementWrapper];
    v49 = [v48 serialNumber];
    (*(v39 + 16))(v39, v47, v49, 0);

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

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 1315, v22);
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
    v59 = v26;
    v60 = 2082;
    v61 = v27;
    v62 = 2082;
    v63 = v28;
    v64 = 1024;
    v65 = 1315;
    v66 = 2114;
    v67 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 40);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v56 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v57 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
    (*(v30 + 16))(v30, v35, 0, 0);

    goto LABEL_24;
  }
}

void sub_10016BF50(uint64_t a1)
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

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 1347, v8);
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
      v29 = v12;
      v30 = 2082;
      v31 = v13;
      v32 = 2082;
      v33 = v14;
      v34 = 1024;
      v35 = 1347;
      v36 = 2114;
      v37 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 48);
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
    v25 = [*(a1 + 32) _getSecureElementWrapperForSEID:*(a1 + 40)];
    v22 = *(a1 + 48);
    v23 = +[_NFHardwareManager sharedHardwareManager];
    v24 = [v23 secureElementDidExitRestrictedMode:v25 os:0 reason:1];
    (*(v22 + 16))(v22, v24);
  }
}

void sub_10016C368(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 1361, v8);
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
    v75 = v12;
    v76 = 2082;
    v77 = v13;
    v78 = 2082;
    v79 = v14;
    v80 = 1024;
    v81 = 1361;
    v82 = 2114;
    v83 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v39 = [*(a1 + 32) embeddedSecureElementWrapper];

    if (v39)
    {
      v40 = [*(a1 + 32) embeddedSecureElementWrapper];
      v41 = v40;
      v66 = 0;
      v67 = 0;
      if (v40)
      {
        v42 = sub_100202BC4(v40, &v67, &v66);
        v44 = v66;
        v43 = v67;
      }

      else
      {
        v44 = 0;
        v43 = 0;
        v42 = 0;
      }

      v32 = v43;
      v33 = v44;

      if (v42)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v45 = NFLogGetLogger();
        if (v45)
        {
          v46 = v45;
          v47 = object_getClass(*(a1 + 32));
          v48 = class_isMetaClass(v47);
          v49 = object_getClassName(*(a1 + 32));
          v65 = sel_getName(*(a1 + 48));
          v50 = 45;
          if (v48)
          {
            v50 = 43;
          }

          v46(3, "%c[%{public}s %{public}s]:%i Failed to get cryptogram", v50, v49, v65, 1376);
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
          v55 = sel_getName(*(a1 + 48));
          *buf = 67109890;
          v75 = v53;
          v76 = 2082;
          v77 = v54;
          v78 = 2082;
          v79 = v55;
          v80 = 1024;
          v81 = 1376;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get cryptogram", buf, 0x22u);
        }

        v56 = *(a1 + 40);
        v57 = [NSError alloc];
        v58 = [NSString stringWithUTF8String:"nfcd"];
        v59 = v42;
        v68 = NSLocalizedDescriptionKey;
        if (v42 >= 0x4C)
        {
          v60 = 76;
        }

        else
        {
          v60 = v42;
        }

        v61 = [NSString stringWithUTF8String:off_100319F08[v60]];
        v69 = v61;
        v62 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v63 = [v57 initWithDomain:v58 code:v59 userInfo:v62];
        (*(v56 + 16))(v56, 0, 0, v63);
      }

      else
      {
        (*(*(a1 + 40) + 16))();
      }

      goto LABEL_25;
    }

    v30 = *(a1 + 40);
    v64 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v70 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Stack Error"];
    v71 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v35 = v64;
    v36 = v32;
    v37 = 15;
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
    v21 = sel_getName(*(a1 + 48));
    v22 = [*(a1 + 32) sessionUID];
    v23 = 45;
    if (v19)
    {
      v23 = 43;
    }

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 1363, v22);
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
    v75 = v26;
    v76 = 2082;
    v77 = v27;
    v78 = 2082;
    v79 = v28;
    v80 = 1024;
    v81 = 1363;
    v82 = 2114;
    v83 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 40);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v72 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v73 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v35 = v31;
    v36 = v32;
    v37 = 54;
    goto LABEL_24;
  }
}

void sub_10016CBC4(uint64_t a1)
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

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 1394, v8);
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
      v61 = v12;
      v62 = 2082;
      v63 = v13;
      v64 = 2082;
      v65 = v14;
      v66 = 1024;
      v67 = 1394;
      v68 = 2114;
      v69 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v58 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v59 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v21 = v17;
      v22 = v18;
      v23 = 54;
LABEL_15:
      v24 = [v21 initWithDomain:v22 code:v23 userInfo:v20];
      (*(v16 + 16))(v16, v24);

LABEL_16:
    }
  }

  else
  {
    v25 = NFSharedSignpostLog();
    if (os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SEMSession:setExpressPassConfig", "processing", buf, 2u);
    }

    v26 = [*(a1 + 32) expressModeManager];

    if (v26)
    {
      v18 = [*(a1 + 32) clientName];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFLogGetLogger();
      if (v27)
      {
        v28 = v27;
        v29 = object_getClass(*(a1 + 32));
        v30 = class_isMetaClass(v29);
        v53 = object_getClassName(*(a1 + 32));
        v54 = sel_getName(*(a1 + 56));
        v31 = 45;
        if (v30)
        {
          v31 = 43;
        }

        v28(6, "%c[%{public}s %{public}s]:%i %{public}@", v31, v53, v54, 1408, v18);
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
        *buf = 67110146;
        v61 = v34;
        v62 = 2082;
        v63 = v35;
        v64 = 2082;
        v65 = v36;
        v66 = 1024;
        v67 = 1408;
        v68 = 2114;
        v69 = v18;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
      }

      v37 = [*(a1 + 32) expressModeManager];
      v19 = sub_100031E18(v37, *(a1 + 40), *(a1 + 64), 1);

      v38 = NFSharedSignpostLog();
      if (os_signpost_enabled(v38))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:setExpressPassConfig", "user callback", buf, 2u);
      }

      if (v19 && [v19 code] == 75)
      {
        v39 = [[NSString alloc] initWithFormat:@"%s, client=%@, ", sel_getName(*(a1 + 56)), v18];
        sub_100199548(NFBugCapture, @"Express Mode Failure", @"Express config init before 1st unlock", v39, 0, 0);
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_16;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v40 = NFLogGetLogger();
    if (v40)
    {
      v41 = v40;
      v42 = object_getClass(*(a1 + 32));
      v43 = class_isMetaClass(v42);
      v44 = object_getClassName(*(a1 + 32));
      v55 = sel_getName(*(a1 + 56));
      v45 = 45;
      if (v43)
      {
        v45 = 43;
      }

      v41(3, "%c[%{public}s %{public}s]:%i EMM is nil!", v45, v44, v55, 1399);
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
      v61 = v48;
      v62 = 2082;
      v63 = v49;
      v64 = 2082;
      v65 = v50;
      v66 = 1024;
      v67 = 1399;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i EMM is nil!", buf, 0x22u);
    }

    if (*(a1 + 48))
    {
      v51 = NFSharedSignpostLog();
      if (os_signpost_enabled(v51))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:setExpressPassConfig", "failure", buf, 2u);
      }

      v16 = *(a1 + 48);
      v52 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v56 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Invalid State"];
      v57 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v21 = v52;
      v22 = v18;
      v23 = 12;
      goto LABEL_15;
    }
  }
}

void sub_10016D3E4(uint64_t a1)
{
  v2 = [*(a1 + 32) clientName];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v4(6, "%c[%{public}s %{public}s]:%i %{public}@", v7, ClassName, Name, 1426, v2);
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
    *buf = 67110146;
    v53 = v10;
    v54 = 2082;
    v55 = v11;
    v56 = 2082;
    v57 = v12;
    v58 = 1024;
    v59 = 1426;
    v60 = 2114;
    v61 = v2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v33 = [*(a1 + 32) expressModeManager];

    if (v33)
    {
      v34 = [*(a1 + 32) expressModeManager];
      v29 = sub_100006D58(v34);

      if (!v29)
      {
        v35 = +[_NFHardwareManager sharedHardwareManager];
        v36 = sub_100002E88(v35);

        if ((v36 & 1) == 0)
        {
          v37 = [[NSString alloc] initWithFormat:@"%s, client=%@, ", sel_getName(*(a1 + 48)), v2];
          sub_100199548(NFBugCapture, @"Express Mode Failure", @"Express config init before 1st unlock", v37, 0, 0);
        }
      }

      v38 = *(*(a1 + 40) + 16);
    }

    else
    {
      v39 = [NSError alloc];
      v40 = [NSString stringWithUTF8String:"nfcd"];
      v48[0] = NSLocalizedDescriptionKey;
      v41 = [NSString stringWithUTF8String:"Feature Not Supported"];
      v49[0] = v41;
      v49[1] = &off_100332850;
      v48[1] = @"Line";
      v48[2] = @"Method";
      v42 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v49[2] = v42;
      v48[3] = NSDebugDescriptionErrorKey;
      v43 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 1432];
      v49[3] = v43;
      v48[4] = NSLocalizedFailureReasonErrorKey;
      v44 = [[NSString alloc] initWithFormat:@"EMM not initialized"];
      v49[4] = v44;
      v45 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:5];
      v29 = [v39 initWithDomain:v40 code:14 userInfo:v45];

      v38 = *(*(a1 + 40) + 16);
    }

    v38();
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

    v14(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v20, v17, v18, 1428, v19);
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
    v53 = v23;
    v54 = 2082;
    v55 = v24;
    v56 = 2082;
    v57 = v25;
    v58 = 1024;
    v59 = 1428;
    v60 = 2114;
    v61 = v26;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v27 = *(a1 + 40);
  if (v27)
  {
    v28 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v50 = NSLocalizedDescriptionKey;
    v30 = [NSString stringWithUTF8String:"Session not active"];
    v51 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v32 = [v28 initWithDomain:v29 code:54 userInfo:v31];
    (*(v27 + 16))(v27, 0, v32);

LABEL_24:
  }
}

void sub_10016DB50(uint64_t a1)
{
  v2 = [*(a1 + 32) clientName];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v4(6, "%c[%{public}s %{public}s]:%i %{public}@", v7, ClassName, Name, 1453, v2);
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
    *buf = 67110146;
    v111 = v10;
    v112 = 2082;
    v113 = v11;
    v114 = 2082;
    v115 = v12;
    v116 = 1024;
    v117 = 1453;
    v118 = 2114;
    v119 = v2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
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

      v14(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v20, v17, v18, 1455, v19);
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
      v111 = v23;
      v112 = 2082;
      v113 = v24;
      v114 = 2082;
      v115 = v25;
      v116 = 1024;
      v117 = 1455;
      v118 = 2114;
      v119 = v26;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v27 = *(a1 + 40);
    if (v27)
    {
      v28 = [NSError alloc];
      v29 = [NSString stringWithUTF8String:"nfcd"];
      v108 = NSLocalizedDescriptionKey;
      v30 = [NSString stringWithUTF8String:"Session not active"];
      v109 = v30;
      v31 = [NSDictionary dictionaryWithObjects:&v109 forKeys:&v108 count:1];
      v32 = v28;
      v33 = v29;
      v34 = 54;
LABEL_24:
      v35 = [v32 initWithDomain:v33 code:v34 userInfo:v31];
      (*(v27 + 16))(v27, v35);

LABEL_25:
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v36 = NFSharedSignpostLog();
  if (os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SEMSession:setExpressModesControlState", "processing", buf, 2u);
  }

  if (*(a1 + 56) != 1)
  {
LABEL_45:
    v56 = [*(a1 + 32) expressModeManager];

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v57 = NFLogGetLogger();
    v58 = v57;
    if (v56)
    {
      if (v57)
      {
        v59 = object_getClass(*(a1 + 32));
        v60 = class_isMetaClass(v59);
        v61 = object_getClassName(*(a1 + 32));
        v62 = sel_getName(*(a1 + 48));
        v63 = 45;
        if (v60)
        {
          v63 = 43;
        }

        v58(6, "%c[%{public}s %{public}s]:%i state=%ld", v63, v61, v62, 1489, *(a1 + 56));
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v64 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v65))
        {
          v66 = 43;
        }

        else
        {
          v66 = 45;
        }

        v67 = object_getClassName(*(a1 + 32));
        v68 = sel_getName(*(a1 + 48));
        v69 = *(a1 + 56);
        *buf = 67110146;
        v111 = v66;
        v112 = 2082;
        v113 = v67;
        v114 = 2082;
        v115 = v68;
        v116 = 1024;
        v117 = 1489;
        v118 = 2048;
        v119 = v69;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i state=%ld", buf, 0x2Cu);
      }

      v70 = [*(a1 + 32) expressModeManager];
      v29 = sub_100030C60(v70, *(a1 + 56));

      if (v29 && [v29 code] == 75)
      {
        v71 = [[NSString alloc] initWithFormat:@"%s, client=%@, ", sel_getName(*(a1 + 48)), v2];
        sub_100199548(NFBugCapture, @"Express Mode Failure", @"Express config init before 1st unlock", v71, 0, 0);
      }

      v72 = NFSharedSignpostLog();
      if (os_signpost_enabled(v72))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v72, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:setExpressModesControlState", "user callback", buf, 2u);
      }

      (*(*(a1 + 40) + 16))();
      goto LABEL_25;
    }

    if (v57)
    {
      v73 = object_getClass(*(a1 + 32));
      v74 = class_isMetaClass(v73);
      v75 = object_getClassName(*(a1 + 32));
      v100 = sel_getName(*(a1 + 48));
      v76 = 45;
      if (v74)
      {
        v76 = 43;
      }

      v58(3, "%c[%{public}s %{public}s]:%i EMM is nil!", v76, v75, v100, 1481);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v77 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      v78 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v78))
      {
        v79 = 43;
      }

      else
      {
        v79 = 45;
      }

      v80 = object_getClassName(*(a1 + 32));
      v81 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v111 = v79;
      v112 = 2082;
      v113 = v80;
      v114 = 2082;
      v115 = v81;
      v116 = 1024;
      v117 = 1481;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i EMM is nil!", buf, 0x22u);
    }

    if (*(a1 + 40))
    {
      v82 = NFSharedSignpostLog();
      if (os_signpost_enabled(v82))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v82, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:setExpressModesControlState", "failure", buf, 2u);
      }

      v27 = *(a1 + 40);
      v83 = [NSError alloc];
      v29 = [NSString stringWithUTF8String:"nfcd"];
      v102 = NSLocalizedDescriptionKey;
      v30 = [NSString stringWithUTF8String:"Invalid State"];
      v103 = v30;
      v31 = [NSDictionary dictionaryWithObjects:&v103 forKeys:&v102 count:1];
      v32 = v83;
      v33 = v29;
      v34 = 12;
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  v37 = [*(a1 + 32) embeddedSecureElementWrapper];
  v38 = [v37 handle];
  v39 = [v38 info];
  v40 = [v39 restrictedMode];

  if (!v40)
  {
    v54 = +[_NFHardwareManager sharedHardwareManager];
    v55 = [v54 nfcRadioEnabled:0 showUIPopup:0];

    if (!v55)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v84 = NFLogGetLogger();
      if (v84)
      {
        v85 = v84;
        v86 = object_getClass(*(a1 + 32));
        v87 = class_isMetaClass(v86);
        v88 = object_getClassName(*(a1 + 32));
        v101 = sel_getName(*(a1 + 48));
        v89 = 45;
        if (v87)
        {
          v89 = 43;
        }

        v85(6, "%c[%{public}s %{public}s]:%i NFC radio disabled", v89, v88, v101, 1471);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v90 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
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
        *buf = 67109890;
        v111 = v92;
        v112 = 2082;
        v113 = v93;
        v114 = 2082;
        v115 = v94;
        v116 = 1024;
        v117 = 1471;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC radio disabled", buf, 0x22u);
      }

      if (*(a1 + 40))
      {
        v95 = NFSharedSignpostLog();
        if (os_signpost_enabled(v95))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v95, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:setExpressModesControlState", "failure", buf, 2u);
        }

        v27 = *(a1 + 40);
        v96 = [NSError alloc];
        v29 = [NSString stringWithUTF8String:"nfcd"];
        v104 = NSLocalizedDescriptionKey;
        v30 = [NSString stringWithUTF8String:"NFC radio disabled"];
        v105 = v30;
        v31 = [NSDictionary dictionaryWithObjects:&v105 forKeys:&v104 count:1];
        v32 = v96;
        v33 = v29;
        v34 = 50;
        goto LABEL_24;
      }

      goto LABEL_26;
    }

    goto LABEL_45;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v41 = NFLogGetLogger();
  if (v41)
  {
    v42 = v41;
    v43 = object_getClass(*(a1 + 32));
    v44 = class_isMetaClass(v43);
    v45 = object_getClassName(*(a1 + 32));
    v99 = sel_getName(*(a1 + 48));
    v46 = 45;
    if (v44)
    {
      v46 = 43;
    }

    v42(3, "%c[%{public}s %{public}s]:%i SE in restricted mode", v46, v45, v99, 1462);
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
    v111 = v49;
    v112 = 2082;
    v113 = v50;
    v114 = 2082;
    v115 = v51;
    v116 = 1024;
    v117 = 1462;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i SE in restricted mode", buf, 0x22u);
  }

  if (*(a1 + 40))
  {
    v52 = NFSharedSignpostLog();
    if (os_signpost_enabled(v52))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:setExpressModesControlState", "failure", buf, 2u);
    }

    v27 = *(a1 + 40);
    v53 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v106 = NSLocalizedDescriptionKey;
    v30 = [NSString stringWithUTF8String:"Restricted Mode"];
    v107 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
    v32 = v53;
    v33 = v29;
    v34 = 24;
    goto LABEL_24;
  }

LABEL_26:
}

void sub_10016E960(uint64_t a1)
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
      v14 = sel_getName(*(a1 + 56));
      v15 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v90 = v12;
      v91 = 2082;
      v92 = v13;
      v93 = 2082;
      v94 = v14;
      v95 = 1024;
      v96 = 1506;
      v97 = 2114;
      v98 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v87 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v88 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
      v21 = v17;
      v22 = v18;
      v23 = 54;
LABEL_15:
      v24 = [v21 initWithDomain:v22 code:v23 userInfo:v20];
      (*(v16 + 16))(v16, v24);

LABEL_16:
    }
  }

  else
  {
    v25 = NFSharedSignpostLog();
    if (os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SEMSession:restoreAuthorizationForAllAppletsExcept", "processing", buf, 2u);
    }

    v26 = [*(a1 + 32) expressModeManager];

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFLogGetLogger();
    v28 = v27;
    if (v26)
    {
      if (v27)
      {
        v29 = object_getClass(*(a1 + 32));
        v30 = class_isMetaClass(v29);
        v31 = object_getClassName(*(a1 + 32));
        v32 = sel_getName(*(a1 + 56));
        v33 = 45;
        if (v30)
        {
          v33 = 43;
        }

        v28(6, "%c[%{public}s %{public}s]:%i %{public}@", v33, v31, v32, 1519, *(a1 + 40));
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
        v38 = sel_getName(*(a1 + 56));
        v39 = *(a1 + 40);
        *buf = 67110146;
        v90 = v36;
        v91 = 2082;
        v92 = v37;
        v93 = 2082;
        v94 = v38;
        v95 = 1024;
        v96 = 1519;
        v97 = 2114;
        v98 = v39;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
      }

      v40 = [*(a1 + 32) expressModeManager];
      v41 = *(a1 + 40);
      v42 = [*(a1 + 32) uid];
      v82 = 0;
      v43 = sub_100032C9C(v40, v41, v42, &v82);
      v18 = v82;

      if (v18 && [v18 code] == 75)
      {
        v44 = [NSString alloc];
        v45 = sel_getName(*(a1 + 56));
        v46 = [*(a1 + 32) clientName];
        v47 = [v44 initWithFormat:@"%s, client=%@, ", v45, v46];

        sub_100199548(NFBugCapture, @"Express Mode Failure", @"Express config init before 1st unlock", v47, 0, 0);
      }

      if (v43)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v48 = NFLogGetLogger();
        if (v48)
        {
          v49 = v48;
          v50 = object_getClass(*(a1 + 32));
          v51 = class_isMetaClass(v50);
          v52 = object_getClassName(*(a1 + 32));
          v80 = sel_getName(*(a1 + 56));
          v53 = 45;
          if (v51)
          {
            v53 = 43;
          }

          v49(3, "%c[%{public}s %{public}s]:%i Failed to restore authorization on all applets", v53, v52, v80, 1529);
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
          v58 = sel_getName(*(a1 + 56));
          *buf = 67109890;
          v90 = v56;
          v91 = 2082;
          v92 = v57;
          v93 = 2082;
          v94 = v58;
          v95 = 1024;
          v96 = 1529;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to restore authorization on all applets", buf, 0x22u);
        }

        v59 = NFSharedSignpostLog();
        if (os_signpost_enabled(v59))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:restoreAuthorizationForAllAppletsExcept", "failure", buf, 2u);
        }

        v60 = *(a1 + 48);
        v61 = [NSError alloc];
        v62 = [NSString stringWithUTF8String:"nfcd"];
        v63 = v43;
        v83 = NSLocalizedDescriptionKey;
        if (v43 >= 0x4C)
        {
          v64 = 76;
        }

        else
        {
          v64 = v43;
        }

        v65 = [NSString stringWithUTF8String:off_100319F08[v64]];
        v84 = v65;
        v66 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v67 = [v61 initWithDomain:v62 code:v63 userInfo:v66];
        (*(v60 + 16))(v60, v67);
      }

      else
      {
        v79 = NFSharedSignpostLog();
        if (os_signpost_enabled(v79))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v79, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:restoreAuthorizationForAllAppletsExcept", "user callback", buf, 2u);
        }

        (*(*(a1 + 48) + 16))();
      }

      goto LABEL_16;
    }

    if (v27)
    {
      v68 = object_getClass(*(a1 + 32));
      v69 = class_isMetaClass(v68);
      v70 = object_getClassName(*(a1 + 32));
      v81 = sel_getName(*(a1 + 56));
      v71 = 45;
      if (v69)
      {
        v71 = 43;
      }

      v28(3, "%c[%{public}s %{public}s]:%i EMM is nil!", v71, v70, v81, 1511);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v72 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      v73 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v73))
      {
        v74 = 43;
      }

      else
      {
        v74 = 45;
      }

      v75 = object_getClassName(*(a1 + 32));
      v76 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v90 = v74;
      v91 = 2082;
      v92 = v75;
      v93 = 2082;
      v94 = v76;
      v95 = 1024;
      v96 = 1511;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i EMM is nil!", buf, 0x22u);
    }

    if (*(a1 + 48))
    {
      v77 = NFSharedSignpostLog();
      if (os_signpost_enabled(v77))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v77, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:restoreAuthorizationForAllAppletsExcept", "failure", buf, 2u);
      }

      v16 = *(a1 + 48);
      v78 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v85 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Invalid State"];
      v86 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      v21 = v78;
      v22 = v18;
      v23 = 12;
      goto LABEL_15;
    }
  }
}

void sub_10016F468(uint64_t a1)
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

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 1545, v8);
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
      v76 = v12;
      v77 = 2082;
      v78 = v13;
      v79 = 2082;
      v80 = v14;
      v81 = 1024;
      v82 = 1545;
      v83 = 2114;
      v84 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 56);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v89 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v90 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
      v21 = v17;
      v22 = v18;
      v23 = 54;
LABEL_15:
      v24 = [v21 initWithDomain:v22 code:v23 userInfo:v20];
      (*(v16 + 16))(v16, v24);

LABEL_16:
    }
  }

  else
  {
    v25 = NFSharedSignpostLog();
    if (os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SEMSession:restoreAuthorizarionForKeys", "processing", buf, 2u);
    }

    v26 = [*(a1 + 32) expressModeManager];

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFLogGetLogger();
    v28 = v27;
    if (v26)
    {
      if (v27)
      {
        v29 = object_getClass(*(a1 + 32));
        v30 = class_isMetaClass(v29);
        v31 = object_getClassName(*(a1 + 32));
        v32 = sel_getName(*(a1 + 64));
        v33 = 45;
        if (v30)
        {
          v33 = 43;
        }

        v28(6, "%c[%{public}s %{public}s]:%i keys: %{public}@  applet:%{public}@", v33, v31, v32, 1558, *(a1 + 40), *(a1 + 48));
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
        v38 = sel_getName(*(a1 + 64));
        v39 = *(a1 + 40);
        v40 = *(a1 + 48);
        *buf = 67110402;
        v76 = v36;
        v77 = 2082;
        v78 = v37;
        v79 = 2082;
        v80 = v38;
        v81 = 1024;
        v82 = 1558;
        v83 = 2114;
        v84 = v39;
        v85 = 2114;
        v86 = v40;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i keys: %{public}@  applet:%{public}@", buf, 0x36u);
      }

      v41 = [*(a1 + 32) expressModeManager];
      v42 = *(a1 + 40);
      v43 = *(a1 + 48);
      v74 = 0;
      v19 = sub_1000330EC(v41, v42, v43, &v74);
      v18 = v74;

      v44 = NFSharedSignpostLog();
      if (os_signpost_enabled(v44))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:restoreAuthorizarionForKeys", "user callback", buf, 2u);
      }

      if (v18 && [v18 code] == 75)
      {
        v45 = [NSString alloc];
        v46 = sel_getName(*(a1 + 64));
        v47 = [*(a1 + 32) clientName];
        v48 = [v45 initWithFormat:@"%s, client=%@, ", v46, v47];

        sub_100199548(NFBugCapture, @"Express Mode Failure", @"Express config init before 1st unlock", v48, 0, 0);
      }

      if (v19)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v49 = NFLogGetLogger();
        if (v49)
        {
          v50 = v49;
          v51 = object_getClass(*(a1 + 32));
          v52 = class_isMetaClass(v51);
          v53 = object_getClassName(*(a1 + 32));
          v72 = sel_getName(*(a1 + 64));
          v54 = 45;
          if (v52)
          {
            v54 = 43;
          }

          v50(3, "%c[%{public}s %{public}s]:%i Failed to restore authorization on keys", v54, v53, v72, 1570);
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
          v59 = sel_getName(*(a1 + 64));
          *buf = 67109890;
          v76 = v57;
          v77 = 2082;
          v78 = v58;
          v79 = 2082;
          v80 = v59;
          v81 = 1024;
          v82 = 1570;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to restore authorization on keys", buf, 0x22u);
        }

        v60 = *(*(a1 + 56) + 16);
      }

      else
      {
        v60 = *(*(a1 + 56) + 16);
      }

      v60();
      goto LABEL_16;
    }

    if (v27)
    {
      v61 = object_getClass(*(a1 + 32));
      v62 = class_isMetaClass(v61);
      v63 = object_getClassName(*(a1 + 32));
      v73 = sel_getName(*(a1 + 64));
      v64 = 45;
      if (v62)
      {
        v64 = 43;
      }

      v28(3, "%c[%{public}s %{public}s]:%i EMM is nil!", v64, v63, v73, 1550);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v65 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v66 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v66))
      {
        v67 = 43;
      }

      else
      {
        v67 = 45;
      }

      v68 = object_getClassName(*(a1 + 32));
      v69 = sel_getName(*(a1 + 64));
      *buf = 67109890;
      v76 = v67;
      v77 = 2082;
      v78 = v68;
      v79 = 2082;
      v80 = v69;
      v81 = 1024;
      v82 = 1550;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i EMM is nil!", buf, 0x22u);
    }

    if (*(a1 + 56))
    {
      v70 = NFSharedSignpostLog();
      if (os_signpost_enabled(v70))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v70, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:restoreAuthorizarionForKeys", "failure", buf, 2u);
      }

      v16 = *(a1 + 56);
      v71 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v87 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Invalid State"];
      v88 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
      v21 = v71;
      v22 = v18;
      v23 = 12;
      goto LABEL_15;
    }
  }
}

void sub_1001700B4(uint64_t a1)
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
      Name = sel_getName(*(a1 + 72));
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 1603, v8);
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
      v14 = sel_getName(*(a1 + 72));
      v15 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v84 = v12;
      v85 = 2082;
      v86 = v13;
      v87 = 2082;
      v88 = v14;
      v89 = 1024;
      v90 = 1603;
      v91 = 2114;
      v92 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 64);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v97 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v98 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);

LABEL_15:
LABEL_16:
    }
  }

  else
  {
    v22 = NFSharedSignpostLog();
    if (os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SEMSession:disableAuthorizationForApplets", "processing", buf, 2u);
    }

    v23 = [*(a1 + 32) expressModeManager];

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
        v29 = sel_getName(*(a1 + 72));
        v30 = [NFApplet aidListForPrinting:*(a1 + 40)];
        v31 = [*(a1 + 32) clientName];
        v32 = 45;
        if (v27)
        {
          v32 = 43;
        }

        v25(6, "%c[%{public}s %{public}s]:%i applets=%{public}@  client=%{public}@", v32, v28, v29, 1616, v30, v31);
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
        v37 = sel_getName(*(a1 + 72));
        v38 = [NFApplet aidListForPrinting:*(a1 + 40)];
        v39 = [*(a1 + 32) clientName];
        *buf = 67110402;
        v84 = v35;
        v85 = 2082;
        v86 = v36;
        v87 = 2082;
        v88 = v37;
        v89 = 1024;
        v90 = 1616;
        v91 = 2114;
        v92 = v38;
        v93 = 2114;
        v94 = v39;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i applets=%{public}@  client=%{public}@", buf, 0x36u);
      }

      v40 = [*(a1 + 32) expressModeManager];
      v18 = sub_1000370EC(v40, *(a1 + 40), *(a1 + 48), *(a1 + 56));

      v41 = NFSharedSignpostLog();
      if (os_signpost_enabled(v41))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:disableAuthorizationForApplets", "user callback", buf, 2u);
      }

      if (v18)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v42 = NFLogGetLogger();
        if (v42)
        {
          v43 = v42;
          v44 = object_getClass(*(a1 + 32));
          v45 = class_isMetaClass(v44);
          v46 = object_getClassName(*(a1 + 32));
          v79 = sel_getName(*(a1 + 72));
          v47 = 45;
          if (v45)
          {
            v47 = 43;
          }

          v43(3, "%c[%{public}s %{public}s]:%i Failed to disable auth on applet", v47, v46, v79, 1621);
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
          v52 = sel_getName(*(a1 + 72));
          *buf = 67109890;
          v84 = v50;
          v85 = 2082;
          v86 = v51;
          v87 = 2082;
          v88 = v52;
          v89 = 1024;
          v90 = 1621;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to disable auth on applet", buf, 0x22u);
        }

        v53 = *(a1 + 64);
        v54 = [NSError alloc];
        v55 = [NSString stringWithUTF8String:"nfcd"];
        v56 = [v18 code];
        v81[0] = NSLocalizedDescriptionKey;
        if ([v18 code] > 75)
        {
          v57 = 76;
        }

        else
        {
          v57 = [v18 code];
        }

        v74 = [NSString stringWithUTF8String:off_100319F08[v57]];
        v82[0] = v74;
        v82[1] = v18;
        v81[1] = NSUnderlyingErrorKey;
        v81[2] = @"Line";
        v82[2] = &off_100332898;
        v81[3] = @"Method";
        v75 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 72))];
        v82[3] = v75;
        v81[4] = NSDebugDescriptionErrorKey;
        v76 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 72)), 1622];
        v82[4] = v76;
        v77 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:5];
        v78 = [v54 initWithDomain:v55 code:v56 userInfo:v77];
        (*(v53 + 16))(v53, v78);
      }

      else
      {
        (*(*(a1 + 64) + 16))();
      }

      goto LABEL_16;
    }

    if (v24)
    {
      v58 = object_getClass(*(a1 + 32));
      v59 = class_isMetaClass(v58);
      v60 = object_getClassName(*(a1 + 32));
      v80 = sel_getName(*(a1 + 72));
      v61 = 45;
      if (v59)
      {
        v61 = 43;
      }

      v25(3, "%c[%{public}s %{public}s]:%i EMM is nil!", v61, v60, v80, 1608);
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
      v66 = sel_getName(*(a1 + 72));
      *buf = 67109890;
      v84 = v64;
      v85 = 2082;
      v86 = v65;
      v87 = 2082;
      v88 = v66;
      v89 = 1024;
      v90 = 1608;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i EMM is nil!", buf, 0x22u);
    }

    if (*(a1 + 64))
    {
      v67 = NFSharedSignpostLog();
      if (os_signpost_enabled(v67))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v67, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:disableAuthorizationForApplets", "failure", buf, 2u);
      }

      v68 = *(a1 + 64);
      v69 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v95[0] = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Invalid State"];
      v96[0] = v19;
      v96[1] = &off_100332880;
      v95[1] = @"Line";
      v95[2] = @"Method";
      v70 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 72))];
      v96[2] = v70;
      v95[3] = NSDebugDescriptionErrorKey;
      v71 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 72)), 1611];
      v96[3] = v71;
      v72 = [NSDictionary dictionaryWithObjects:v96 forKeys:v95 count:4];
      v73 = [v69 initWithDomain:v18 code:12 userInfo:v72];
      (*(v68 + 16))(v68, v73);

      goto LABEL_15;
    }
  }
}

void sub_100170CBC(uint64_t a1)
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

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 1637, v8);
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
      v84 = v12;
      v85 = 2082;
      v86 = v13;
      v87 = 2082;
      v88 = v14;
      v89 = 1024;
      v90 = 1637;
      v91 = 2114;
      v92 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 56);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v97 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v98 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);

LABEL_15:
LABEL_16:
    }
  }

  else
  {
    v22 = NFSharedSignpostLog();
    if (os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SEMSession:disableAuthorizationForPasses", "processing", buf, 2u);
    }

    v23 = [*(a1 + 32) expressModeManager];

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
        v29 = sel_getName(*(a1 + 64));
        v30 = *(a1 + 40);
        v31 = [*(a1 + 32) clientName];
        v32 = 45;
        if (v27)
        {
          v32 = 43;
        }

        v25(6, "%c[%{public}s %{public}s]:%i passes=%{public}@  client=%{public}@", v32, v28, v29, 1650, v30, v31);
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
        v37 = sel_getName(*(a1 + 64));
        v38 = *(a1 + 40);
        v39 = [*(a1 + 32) clientName];
        *buf = 67110402;
        v84 = v35;
        v85 = 2082;
        v86 = v36;
        v87 = 2082;
        v88 = v37;
        v89 = 1024;
        v90 = 1650;
        v91 = 2114;
        v92 = v38;
        v93 = 2114;
        v94 = v39;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i passes=%{public}@  client=%{public}@", buf, 0x36u);
      }

      v40 = [*(a1 + 32) expressModeManager];
      v18 = sub_100038D7C(v40, *(a1 + 40), *(a1 + 48));

      v41 = NFSharedSignpostLog();
      if (os_signpost_enabled(v41))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:disableAuthorizationForPasses", "user callback", buf, 2u);
      }

      if (v18)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v42 = NFLogGetLogger();
        if (v42)
        {
          v43 = v42;
          v44 = object_getClass(*(a1 + 32));
          v45 = class_isMetaClass(v44);
          v46 = object_getClassName(*(a1 + 32));
          v79 = sel_getName(*(a1 + 64));
          v47 = 45;
          if (v45)
          {
            v47 = 43;
          }

          v43(3, "%c[%{public}s %{public}s]:%i Failed to disable auth on passes", v47, v46, v79, 1655);
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
          v84 = v50;
          v85 = 2082;
          v86 = v51;
          v87 = 2082;
          v88 = v52;
          v89 = 1024;
          v90 = 1655;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to disable auth on passes", buf, 0x22u);
        }

        v53 = *(a1 + 56);
        v54 = [NSError alloc];
        v55 = [NSString stringWithUTF8String:"nfcd"];
        v56 = [v18 code];
        v81[0] = NSLocalizedDescriptionKey;
        if ([v18 code] > 75)
        {
          v57 = 76;
        }

        else
        {
          v57 = [v18 code];
        }

        v74 = [NSString stringWithUTF8String:off_100319F08[v57]];
        v82[0] = v74;
        v82[1] = v18;
        v81[1] = NSUnderlyingErrorKey;
        v81[2] = @"Line";
        v82[2] = &off_1003328C8;
        v81[3] = @"Method";
        v75 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
        v82[3] = v75;
        v81[4] = NSDebugDescriptionErrorKey;
        v76 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 1656];
        v82[4] = v76;
        v77 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:5];
        v78 = [v54 initWithDomain:v55 code:v56 userInfo:v77];
        (*(v53 + 16))(v53, v78);
      }

      else
      {
        (*(*(a1 + 56) + 16))();
      }

      goto LABEL_16;
    }

    if (v24)
    {
      v58 = object_getClass(*(a1 + 32));
      v59 = class_isMetaClass(v58);
      v60 = object_getClassName(*(a1 + 32));
      v80 = sel_getName(*(a1 + 64));
      v61 = 45;
      if (v59)
      {
        v61 = 43;
      }

      v25(3, "%c[%{public}s %{public}s]:%i EMM is nil!", v61, v60, v80, 1642);
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
      v66 = sel_getName(*(a1 + 64));
      *buf = 67109890;
      v84 = v64;
      v85 = 2082;
      v86 = v65;
      v87 = 2082;
      v88 = v66;
      v89 = 1024;
      v90 = 1642;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i EMM is nil!", buf, 0x22u);
    }

    if (*(a1 + 56))
    {
      v67 = NFSharedSignpostLog();
      if (os_signpost_enabled(v67))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v67, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:disableAuthorizationForPasses", "failure", buf, 2u);
      }

      v68 = *(a1 + 56);
      v69 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v95[0] = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Invalid State"];
      v96[0] = v19;
      v96[1] = &off_1003328B0;
      v95[1] = @"Line";
      v95[2] = @"Method";
      v70 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
      v96[2] = v70;
      v95[3] = NSDebugDescriptionErrorKey;
      v71 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 1645];
      v96[3] = v71;
      v72 = [NSDictionary dictionaryWithObjects:v96 forKeys:v95 count:4];
      v73 = [v69 initWithDomain:v18 code:12 userInfo:v72];
      (*(v68 + 16))(v68, v73);

      goto LABEL_15;
    }
  }
}

void sub_100171868(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v22 = NFSharedSignpostLog();
    if (os_signpost_enabled(v22))
    {
      v23 = [*(a1 + 32) expressModeManager];
      v24 = v23;
      if (v23)
      {
        v25 = *(v23 + 181);
      }

      else
      {
        v25 = 0;
      }

      *buf = 67109120;
      v70 = v25;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SEMSession:getFelicaAppletState", "InSessionExpress=%d", buf, 8u);
    }

    v26 = *(a1 + 32);
    v27 = [*(a1 + 40) identifier];
    v18 = [v26 _getSecureElementForAID:v27];

    if ([*(a1 + 32) _activateSecureElementWrapper:v18])
    {
      v28 = [*(a1 + 40) identifierAsData];
      v64 = 0;
      v21 = sub_100257F24(v18, v28, &v64);
      v29 = v64;

      v63 = v29;
      v19 = sub_1002607E8(v18, v21, &v63);
      v30 = v63;

      v31 = NFSharedSignpostLog();
      if (os_signpost_enabled(v31))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:getFelicaAppletState", "user callback", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v33 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 56));
        v37 = 45;
        if (isMetaClass)
        {
          v37 = 43;
        }

        v33(6, "%c[%{public}s %{public}s]:%i Delaying express mode", v37, ClassName, Name, 1697);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v38 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
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
        v42 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v70 = v40;
        v71 = 2082;
        v72 = v41;
        v73 = 2082;
        v74 = v42;
        v75 = 1024;
        v76 = 1697;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Delaying express mode", buf, 0x22u);
      }

      v62 = v30;
      v43 = sub_100260EA4(v18, v21, &v62);
      v20 = v62;

      if (!v20)
      {
        v20 = [v43 objectForKeyedSubscript:@"DelayExpressReentry"];

        if (v20)
        {
          v44 = [v43 objectForKeyedSubscript:@"DelayExpressReentry"];
          [v44 doubleValue];
          *(*(a1 + 32) + 184) = v45 / 1000.0;

          v20 = 0;
        }
      }
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
        v61 = sel_getName(*(a1 + 56));
        v51 = 45;
        if (v49)
        {
          v51 = 43;
        }

        v47(3, "%c[%{public}s %{public}s]:%i Failed to set mode to wired", v51, v50, v61, 1681);
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
        v70 = v54;
        v71 = 2082;
        v72 = v55;
        v73 = 2082;
        v74 = v56;
        v75 = 1024;
        v76 = 1681;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set mode to wired", buf, 0x22u);
      }

      v57 = NFSharedSignpostLog();
      if (os_signpost_enabled(v57))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v57, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:getFelicaAppletState", "failure", buf, 2u);
      }

      v58 = *(a1 + 48);
      v59 = [NSError alloc];
      v19 = [NSString stringWithUTF8String:"nfcd"];
      v65 = NSLocalizedDescriptionKey;
      v20 = [NSString stringWithUTF8String:"Unexpected Result"];
      v66 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      v43 = [v59 initWithDomain:v19 code:13 userInfo:v21];
      (*(v58 + 16))(v58, 0, v43);
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
    v7 = sel_getName(*(a1 + 56));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 1672, v8);
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
    v70 = v12;
    v71 = 2082;
    v72 = v13;
    v73 = 2082;
    v74 = v14;
    v75 = 1024;
    v76 = 1672;
    v77 = 2114;
    v78 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v67 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v68 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
    (*(v16 + 16))(v16, 0, v21);
LABEL_15:
  }
}

void sub_1001721B4(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v22 = NFSharedSignpostLog();
    if (os_signpost_enabled(v22))
    {
      v23 = [*(a1 + 32) expressModeManager];
      v24 = v23;
      if (v23)
      {
        v25 = *(v23 + 181);
      }

      else
      {
        v25 = 0;
      }

      *buf = 67109120;
      v70 = v25;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SEMSession:getTransitAppletState", "InSessionExpress=%d", buf, 8u);
    }

    v26 = *(a1 + 32);
    v27 = [*(a1 + 40) identifier];
    v18 = [v26 _getSecureElementForAID:v27];

    if ([*(a1 + 32) _activateSecureElementWrapper:v18])
    {
      v28 = [*(a1 + 40) identifierAsData];
      v64 = 0;
      v20 = sub_100257F24(v18, v28, &v64);
      v29 = v64;

      v63 = v29;
      v21 = sub_1002607E8(v18, v20, &v63);
      v30 = v63;

      v31 = NFSharedSignpostLog();
      if (os_signpost_enabled(v31))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:getTransitAppletState", "user callback", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v33 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 56));
        v37 = 45;
        if (isMetaClass)
        {
          v37 = 43;
        }

        v33(6, "%c[%{public}s %{public}s]:%i Delaying express mode", v37, ClassName, Name, 1738);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v38 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
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
        v42 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v70 = v40;
        v71 = 2082;
        v72 = v41;
        v73 = 2082;
        v74 = v42;
        v75 = 1024;
        v76 = 1738;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Delaying express mode", buf, 0x22u);
      }

      v62 = v30;
      v43 = sub_100260EA4(v18, v20, &v62);
      v19 = v62;

      if (!v19)
      {
        v19 = [v43 objectForKeyedSubscript:@"DelayExpressReentry"];

        if (v19)
        {
          v44 = [v43 objectForKeyedSubscript:@"DelayExpressReentry"];
          [v44 doubleValue];
          *(*(a1 + 32) + 184) = v45 / 1000.0;

          v19 = 0;
        }
      }
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
        v61 = sel_getName(*(a1 + 56));
        v51 = 45;
        if (v49)
        {
          v51 = 43;
        }

        v47(3, "%c[%{public}s %{public}s]:%i Failed to set mode to wired", v51, v50, v61, 1724);
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
        v70 = v54;
        v71 = 2082;
        v72 = v55;
        v73 = 2082;
        v74 = v56;
        v75 = 1024;
        v76 = 1724;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set mode to wired", buf, 0x22u);
      }

      v57 = NFSharedSignpostLog();
      if (os_signpost_enabled(v57))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v57, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:getTransitAppletState", "failure", buf, 2u);
      }

      v58 = *(a1 + 48);
      v59 = [NSError alloc];
      v19 = [NSString stringWithUTF8String:"nfcd"];
      v65 = NSLocalizedDescriptionKey;
      v20 = [NSString stringWithUTF8String:"Unexpected Result"];
      v66 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      v43 = [v59 initWithDomain:v19 code:13 userInfo:v21];
      (*(v58 + 16))(v58, 0, v43);
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
    v7 = sel_getName(*(a1 + 56));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 1715, v8);
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
    v70 = v12;
    v71 = 2082;
    v72 = v13;
    v73 = 2082;
    v74 = v14;
    v75 = 1024;
    v76 = 1715;
    v77 = 2114;
    v78 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v67 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v68 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
    (*(v16 + 16))(v16, 0, v21);
LABEL_15:
  }
}

void sub_100172B4C(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v22 = NFSharedSignpostLog();
    if (os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SEMSession:getServiceProviderDataForApplet", "processing", buf, 2u);
    }

    v23 = *(a1 + 32);
    v24 = [*(a1 + 40) identifier];
    v18 = [v23 _getSecureElementForAID:v24];

    if ([*(a1 + 32) _activateSecureElementWrapper:v18])
    {
      v25 = [*(a1 + 40) identifierAsData];
      v50 = 0;
      v20 = sub_100257F24(v18, v25, &v50);
      v26 = v50;

      v27 = *(a1 + 48);
      if (v27 && (v28 = *(a1 + 56)) != 0)
      {
        v49 = v26;
        v29 = &v49;
        v30 = sub_100261998(v18, v20, v27, v28, &v49);
      }

      else
      {
        v48 = v26;
        v29 = &v48;
        v30 = sub_100261364(v18, v20, &v48);
      }

      v21 = v30;
      v19 = *v29;

      v46 = NFSharedSignpostLog();
      if (os_signpost_enabled(v46))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:getServiceProviderDataForApplet", "user callback", buf, 2u);
      }

      (*(*(a1 + 64) + 16))(*(a1 + 64), v21, v19);
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

        v32(3, "%c[%{public}s %{public}s]:%i Failed to set mode to wired", v36, ClassName, Name, 1770);
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
        v56 = v39;
        v57 = 2082;
        v58 = v40;
        v59 = 2082;
        v60 = v41;
        v61 = 1024;
        v62 = 1770;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set mode to wired", buf, 0x22u);
      }

      v42 = NFSharedSignpostLog();
      if (os_signpost_enabled(v42))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SEMSession:getServiceProviderDataForApplet", "failure", buf, 2u);
      }

      v43 = *(a1 + 64);
      v44 = [NSError alloc];
      v19 = [NSString stringWithUTF8String:"nfcd"];
      v51 = NSLocalizedDescriptionKey;
      v20 = [NSString stringWithUTF8String:"Unexpected Result"];
      v52 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v45 = [v44 initWithDomain:v19 code:13 userInfo:v21];
      (*(v43 + 16))(v43, 0, v45);
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
    v7 = sel_getName(*(a1 + 72));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 1761, v8);
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
    v14 = sel_getName(*(a1 + 72));
    v15 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v56 = v12;
    v57 = 2082;
    v58 = v13;
    v59 = 2082;
    v60 = v14;
    v61 = 1024;
    v62 = 1761;
    v63 = 2114;
    v64 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v53 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v54 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
    (*(v16 + 16))(v16, 0, v21);
LABEL_15:
  }
}

void sub_10017326C(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 1809, v8);
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
    v73 = v12;
    v74 = 2082;
    v75 = v13;
    v76 = 2082;
    v77 = v14;
    v78 = 1024;
    v79 = 1809;
    v80 = 2114;
    v81 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v67 = -1;
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v39 = *(a1 + 32);
    v40 = [v39 embeddedSecureElementWrapper];
    LOBYTE(v39) = [v39 _activateSecureElementWrapper:v40];

    if (v39)
    {
      v41 = [*(a1 + 32) embeddedSecureElementWrapper];
      v32 = sub_1000A02D0(v41, &v67);

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v42 = NFLogGetLogger();
      if (v42)
      {
        v43 = v42;
        v44 = object_getClass(*(a1 + 32));
        v45 = class_isMetaClass(v44);
        v46 = object_getClassName(*(a1 + 32));
        v47 = sel_getName(*(a1 + 48));
        v48 = 45;
        if (v45)
        {
          v48 = 43;
        }

        v43(6, "%c[%{public}s %{public}s]:%i Counter = %lu, ", v48, v46, v47, 1822, v67);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v49 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
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
        v53 = sel_getName(*(a1 + 48));
        *buf = 67110146;
        v73 = v51;
        v74 = 2082;
        v75 = v52;
        v76 = 2082;
        v77 = v53;
        v78 = 1024;
        v79 = 1822;
        v80 = 2048;
        v81 = v67;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Counter = %lu, ", buf, 0x2Cu);
      }

      (*(*(a1 + 40) + 16))();
      goto LABEL_25;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v54 = NFLogGetLogger();
    if (v54)
    {
      v55 = v54;
      v56 = object_getClass(*(a1 + 32));
      v57 = class_isMetaClass(v56);
      v58 = object_getClassName(*(a1 + 32));
      v66 = sel_getName(*(a1 + 48));
      v59 = 45;
      if (v57)
      {
        v59 = 43;
      }

      v55(3, "%c[%{public}s %{public}s]:%i Failed to set mode to wired", v59, v58, v66, 1816);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v60 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v61))
      {
        v62 = 43;
      }

      else
      {
        v62 = 45;
      }

      v63 = object_getClassName(*(a1 + 32));
      v64 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v73 = v62;
      v74 = 2082;
      v75 = v63;
      v76 = 2082;
      v77 = v64;
      v78 = 1024;
      v79 = 1816;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set mode to wired", buf, 0x22u);
    }

    v30 = *(a1 + 40);
    v65 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v68 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Unexpected Result"];
    v69 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    v35 = v65;
    v36 = v32;
    v37 = 13;
LABEL_24:
    v38 = [v35 initWithDomain:v36 code:v37 userInfo:v34];
    (*(v30 + 16))(v30, -1, v38);

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

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 1813, v22);
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
    v73 = v26;
    v74 = 2082;
    v75 = v27;
    v76 = 2082;
    v77 = v28;
    v78 = 1024;
    v79 = 1813;
    v80 = 2114;
    v81 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 40);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v70 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v71 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v35 = v31;
    v36 = v32;
    v37 = 54;
    goto LABEL_24;
  }
}

void sub_100173A6C(uint64_t a1)
{
  v2 = [*(a1 + 32) clientName];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v4(6, "%c[%{public}s %{public}s]:%i %{public}@", v7, ClassName, Name, 1835, v2);
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
    *buf = 67110146;
    v57 = v10;
    v58 = 2082;
    v59 = v11;
    v60 = 2082;
    v61 = v12;
    v62 = 1024;
    v63 = 1835;
    v64 = 2114;
    v65 = v2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v13 = [*(a1 + 32) expressModeManager];
  v53 = 0;
  v14 = sub_10003A788(v13, &v53);
  v15 = v53;

  if (v15 && [v15 code] == 75)
  {
    v16 = [[NSString alloc] initWithFormat:@"%s, client=%@, ", sel_getName(*(a1 + 48)), v2];
    sub_100199548(NFBugCapture, @"Express Mode Failure", @"Express config init before 1st unlock", v16, 0, 0);
  }

  v17 = [*(a1 + 32) expressModeManager];
  if (v17)
  {
    v18 = v17[19];
  }

  else
  {
    v18 = 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v20 = v19;
    v21 = object_getClass(*(a1 + 32));
    v22 = class_isMetaClass(v21);
    v23 = object_getClassName(*(a1 + 32));
    v52 = sel_getName(*(a1 + 48));
    v24 = 45;
    if (v22)
    {
      v24 = 43;
    }

    v20(6, "%c[%{public}s %{public}s]:%i Control state: %ld, express applets: %{public}@", v24, v23, v52, 1843, v18, v14);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
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
    *buf = 67110402;
    v57 = v27;
    v58 = 2082;
    v59 = v28;
    v60 = 2082;
    v61 = v29;
    v62 = 1024;
    v63 = 1843;
    v64 = 2048;
    v65 = v18;
    v66 = 2114;
    v67 = v14;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Control state: %ld, express applets: %{public}@", buf, 0x36u);
  }

  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v30 = NFLogGetLogger();
    if (v30)
    {
      v31 = v30;
      v32 = object_getClass(*(a1 + 32));
      v33 = class_isMetaClass(v32);
      v34 = object_getClassName(*(a1 + 32));
      v35 = sel_getName(*(a1 + 48));
      v36 = [*(a1 + 32) sessionUID];
      v37 = 45;
      if (v33)
      {
        v37 = 43;
      }

      v31(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v37, v34, v35, 1845, v36);
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
      v42 = sel_getName(*(a1 + 48));
      v43 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v57 = v40;
      v58 = 2082;
      v59 = v41;
      v60 = 2082;
      v61 = v42;
      v62 = 1024;
      v63 = 1845;
      v64 = 2114;
      v65 = v43;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v44 = *(a1 + 40);
    if (v44)
    {
      v45 = [NSError alloc];
      v46 = [NSString stringWithUTF8String:"nfcd"];
      v54 = NSLocalizedDescriptionKey;
      v47 = [NSString stringWithUTF8String:"Session not active"];
      v55 = v47;
      v48 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v49 = [v45 initWithDomain:v46 code:54 userInfo:v48];
      (*(v44 + 16))(v44, 0, 0, v49);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100174164(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v25 = [*(a1 + 40) alternateDSID];

    if (v25)
    {
      v26 = NFSharedSignpostLog();
      if (os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SURF_ENROLLMENT", "in", buf, 2u);
      }

      v27 = [*(a1 + 32) embeddedSecureElementWrapper];
      v28 = [*(a1 + 40) alternateDSID];
      v54 = 0;
      v20 = sub_1000897C4(v27, v28, &v54);
      v19 = v54;

      v18 = 0;
      if (!v20)
      {
        v29 = [*(a1 + 32) embeddedSecureElementWrapper];
        v30 = sub_100092208(v29);

        v31 = objc_opt_new();
        v32 = [v30 objectForKeyedSubscript:@"ECKA"];

        if (v32)
        {
          v33 = [v30 objectForKeyedSubscript:@"ECKA"];
          [v31 setObject:v33 forKey:@"ECC"];
        }

        v34 = [v30 objectForKeyedSubscript:@"ECDSA"];

        if (v34)
        {
          v35 = [v30 objectForKeyedSubscript:@"ECDSA"];
          [v31 setObject:v35 forKey:@"ECDSA"];
        }

        v36 = [v30 objectForKeyedSubscript:@"RSA"];

        if (v36)
        {
          v37 = [v30 objectForKeyedSubscript:@"RSA"];
          [v31 setObject:v37 forKey:@"RSA"];
        }

        v55[0] = @"paymentCertificate";
        v55[1] = @"certificates";
        v56[0] = v19;
        v56[1] = v31;
        v38 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];
        v18 = [[NFPeerPaymentEnrollmentResponse alloc] initWithDictionary:v38];
      }

      v39 = NFSharedSignpostLog();
      if (os_signpost_enabled(v39))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SURF_ENROLLMENT", "user callback", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
      v40 = NFSharedSignpostLog();
      if (os_signpost_enabled(v40))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SURF_ENROLLMENT", "out", buf, 2u);
      }

      v24 = [*(a1 + 32) embeddedSecureElementWrapper];
      sub_100089210(v24);
      goto LABEL_16;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v42 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v46 = 45;
      if (isMetaClass)
      {
        v46 = 43;
      }

      v42(3, "%c[%{public}s %{public}s]:%i Invalid authtoken parameter : nil", v46, ClassName, Name, 1860);
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
      v51 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v62 = v49;
      v63 = 2082;
      v64 = v50;
      v65 = 2082;
      v66 = v51;
      v67 = 1024;
      v68 = 1860;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid authtoken parameter : nil", buf, 0x22u);
    }

    v16 = *(a1 + 48);
    v52 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v57 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Missing Parameter"];
    v58 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v21 = v52;
    v22 = v18;
    v23 = 9;
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

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 1857, v8);
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
    v62 = v12;
    v63 = 2082;
    v64 = v13;
    v65 = 2082;
    v66 = v14;
    v67 = 1024;
    v68 = 1857;
    v69 = 2114;
    v70 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v59 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v60 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v21 = v17;
    v22 = v18;
    v23 = 54;
    goto LABEL_15;
  }
}

void sub_1001749BC(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 1903, v8);
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
    v51 = v12;
    v52 = 2082;
    v53 = v13;
    v54 = 2082;
    v55 = v14;
    v56 = 1024;
    v57 = 1903;
    v58 = 2114;
    v59 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v36 = *(a1 + 40);
    v37 = [*(*(a1 + 32) + 224) serialNumber];
    if ([v36 isEqualToString:v37])
    {
    }

    else
    {
      v38 = *(a1 + 40);
      v39 = [*(*(a1 + 32) + 224) systemOSSerialNumber];
      LODWORD(v38) = [v38 isEqualToString:v39];

      if (!v38)
      {
        v41 = [NSError alloc];
        v40 = [NSString stringWithUTF8String:"nfcd"];
        v46[0] = NSLocalizedDescriptionKey;
        v42 = [NSString stringWithUTF8String:"SE not available"];
        v47[0] = v42;
        v47[1] = &off_1003328E0;
        v46[1] = @"Line";
        v46[2] = @"Method";
        v43 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
        v47[2] = v43;
        v46[3] = NSDebugDescriptionErrorKey;
        v44 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 1909];
        v47[3] = v44;
        v45 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:4];
        v32 = [v41 initWithDomain:v40 code:35 userInfo:v45];

        goto LABEL_31;
      }
    }

    v40 = +[_NFHardwareManager sharedHardwareManager];
    v32 = [v40 powerCycleSE:*(*(a1 + 32) + 224)];
LABEL_31:

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

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 1904, v22);
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
    v51 = v26;
    v52 = 2082;
    v53 = v27;
    v54 = 2082;
    v55 = v28;
    v56 = 1024;
    v57 = 1904;
    v58 = 2114;
    v59 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 48);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v48 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v49 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
    (*(v30 + 16))(v30, v35);

LABEL_24:
  }
}

void sub_10017508C(uint64_t a1)
{
  v73 = 0;
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 1923, v8);
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
    v83 = v12;
    v84 = 2082;
    v85 = v13;
    v86 = 2082;
    v87 = v14;
    v88 = 1024;
    v89 = 1923;
    v90 = 2114;
    v91 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v32 = [*(a1 + 32) _getSecureElementWrapperForSEID:*(a1 + 40)];
    if ([*(a1 + 32) _activateSecureElementWrapper:v32])
    {
      v34 = +[NSMutableDictionary dictionary];
      v36 = sub_10009DEA8(v32);

      if (!v36)
      {
        v37 = [NSNumber numberWithBool:v73];
        [v34 setObject:v37 forKeyedSubscript:@"Presence"];
      }

      v72 = 0;
      v38 = sub_10009D0D0(v32, &v72);
      v33 = v72;
      [v34 addEntriesFromDictionary:v38];

      if (*(a1 + 64) == 1)
      {
        v39 = sub_10009D20C(v32);
      }

      v40 = [v34 count];
      v41 = *(a1 + 48);
      if (v40 < 2)
      {
        v57 = [NSError alloc];
        v58 = [NSString stringWithUTF8String:"nfcd"];
        v59 = v58;
        if (v33)
        {
          v71 = v58;
          v70 = [v33 code];
          v76[0] = NSLocalizedDescriptionKey;
          if ([v33 code] > 75)
          {
            v60 = 76;
          }

          else
          {
            v60 = [v33 code];
          }

          v69 = [NSString stringWithUTF8String:off_100319F08[v60]];
          v77[0] = v69;
          v77[1] = v33;
          v76[1] = NSUnderlyingErrorKey;
          v76[2] = @"Line";
          v77[2] = &off_1003328F8;
          v76[3] = @"Method";
          v64 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
          v77[3] = v64;
          v76[4] = NSDebugDescriptionErrorKey;
          v65 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 1948];
          v77[4] = v65;
          v66 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:5];
          v67 = [v57 initWithDomain:v71 code:v70 userInfo:v66];
          (*(v41 + 16))(v41, 0, v67);
        }

        else
        {
          v74 = NSLocalizedDescriptionKey;
          v61 = [NSString stringWithUTF8String:"Unexpected Result"];
          v75 = v61;
          v62 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          v63 = [v57 initWithDomain:v59 code:13 userInfo:v62];
          (*(v41 + 16))(v41, 0, v63);

          v33 = 0;
        }
      }

      else
      {
        (*(v41 + 16))(*(a1 + 48), v34, v33);
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v42 = NFLogGetLogger();
      if (v42)
      {
        v43 = v42;
        v44 = object_getClass(*(a1 + 32));
        v45 = class_isMetaClass(v44);
        v46 = object_getClassName(*(a1 + 32));
        v68 = sel_getName(*(a1 + 56));
        v47 = 45;
        if (v45)
        {
          v47 = 43;
        }

        v43(3, "%c[%{public}s %{public}s]:%i Failed to activate embedded secure element", v47, v46, v68, 1929);
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
        v52 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v83 = v50;
        v84 = 2082;
        v85 = v51;
        v86 = 2082;
        v87 = v52;
        v88 = 1024;
        v89 = 1929;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to activate embedded secure element", buf, 0x22u);
      }

      v53 = *(a1 + 48);
      v54 = [NSError alloc];
      v33 = [NSString stringWithUTF8String:"nfcd"];
      v78 = NSLocalizedDescriptionKey;
      v34 = [NSString stringWithUTF8String:"Stack Error"];
      v79 = v34;
      v55 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
      v56 = [v54 initWithDomain:v33 code:15 userInfo:v55];
      (*(v53 + 16))(v53, 0, v56);
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
    v21 = sel_getName(*(a1 + 56));
    v22 = [*(a1 + 32) sessionUID];
    v23 = 45;
    if (v19)
    {
      v23 = 43;
    }

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 1925, v22);
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
    v83 = v26;
    v84 = 2082;
    v85 = v27;
    v86 = 2082;
    v87 = v28;
    v88 = 1024;
    v89 = 1925;
    v90 = 2114;
    v91 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 48);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v80 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v81 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
    (*(v30 + 16))(v30, 0, v35);

LABEL_24:
  }
}

void sub_100175A88(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 1959, v8);
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
    v59 = v12;
    v60 = 2082;
    v61 = v13;
    v62 = 2082;
    v63 = v14;
    v64 = 1024;
    v65 = 1959;
    v66 = 2114;
    v67 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v32 = [*(a1 + 32) _getSecureElementWrapperForSEID:*(a1 + 40)];
    if ([*(a1 + 32) _activateSecureElementWrapper:v32])
    {
      v33 = sub_10009DEA8(v32);
      (*(*(a1 + 48) + 16))();
      goto LABEL_25;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v36 = NFLogGetLogger();
    if (v36)
    {
      v37 = v36;
      v38 = object_getClass(*(a1 + 32));
      v39 = class_isMetaClass(v38);
      v40 = object_getClassName(*(a1 + 32));
      v53 = sel_getName(*(a1 + 56));
      v41 = 45;
      if (v39)
      {
        v41 = 43;
      }

      v37(3, "%c[%{public}s %{public}s]:%i Failed to activate embedded secure element", v41, v40, v53, 1965);
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
      v46 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v59 = v44;
      v60 = 2082;
      v61 = v45;
      v62 = 2082;
      v63 = v46;
      v64 = 1024;
      v65 = 1965;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to activate embedded secure element", buf, 0x22u);
    }

    v47 = *(a1 + 48);
    v48 = [NSError alloc];
    v33 = [NSString stringWithUTF8String:"nfcd"];
    v54[0] = NSLocalizedDescriptionKey;
    v34 = [NSString stringWithUTF8String:"Stack Error"];
    v55[0] = v34;
    v55[1] = &off_100332910;
    v54[1] = @"Line";
    v54[2] = @"Method";
    v49 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v55[2] = v49;
    v54[3] = NSDebugDescriptionErrorKey;
    v50 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 1966];
    v55[3] = v50;
    v51 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:4];
    v52 = [v48 initWithDomain:v33 code:15 userInfo:v51];
    (*(v47 + 16))(v47, 0, v52);

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

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 1961, v22);
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
    v59 = v26;
    v60 = 2082;
    v61 = v27;
    v62 = 2082;
    v63 = v28;
    v64 = 1024;
    v65 = 1961;
    v66 = 2114;
    v67 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 48);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v56 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v57 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
    (*(v30 + 16))(v30, 0, v35);

    goto LABEL_24;
  }
}

void sub_10017623C(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v18 = [*(a1 + 32) _getSecureElementWrapperForSEID:*(a1 + 40)];
    if ([*(a1 + 32) _activateSecureElementWrapper:v18])
    {
      v22 = *(a1 + 64);
      v39 = 0;
      v20 = sub_100096634(v18, v22, &v39);
      v19 = v39;
      (*(*(a1 + 48) + 16))();
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
        Name = sel_getName(*(a1 + 56));
        v28 = 45;
        if (isMetaClass)
        {
          v28 = 43;
        }

        v24(3, "%c[%{public}s %{public}s]:%i Failed to activate secure element", v28, ClassName, Name, 1990);
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
        v33 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v45 = v31;
        v46 = 2082;
        v47 = v32;
        v48 = 2082;
        v49 = v33;
        v50 = 1024;
        v51 = 1990;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to activate secure element", buf, 0x22u);
      }

      v34 = *(a1 + 48);
      v35 = [NSError alloc];
      v19 = [NSString stringWithUTF8String:"nfcd"];
      v40 = NSLocalizedDescriptionKey;
      v20 = [NSString stringWithUTF8String:"Stack Error"];
      v41 = v20;
      v36 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v37 = [v35 initWithDomain:v19 code:15 userInfo:v36];
      (*(v34 + 16))(v34, 0, v37);
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
    v7 = sel_getName(*(a1 + 56));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 1984, v8);
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
    v45 = v12;
    v46 = 2082;
    v47 = v13;
    v48 = 2082;
    v49 = v14;
    v50 = 1024;
    v51 = 1984;
    v52 = 2114;
    v53 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v42 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v43 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
    (*(v16 + 16))(v16, 0, v21);

LABEL_15:
  }
}

void sub_1001767F8(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v25 = *(a1 + 32);
    v26 = [v25 embeddedSecureElementWrapper];
    LOBYTE(v25) = [v25 _activateSecureElementWrapper:v26];

    if (v25)
    {
      v27 = [*(a1 + 32) embeddedSecureElementWrapper];
      v50 = 0;
      v19 = sub_10009CE9C(v27, &v50);
      v28 = v50;

      if (v28)
      {
        v29 = [NSError alloc];
        v30 = [NSString stringWithUTF8String:"nfcd"];
        v31 = [v28 code];
        v51[0] = NSLocalizedDescriptionKey;
        if ([v28 code] > 75)
        {
          v32 = 76;
        }

        else
        {
          v32 = [v28 code];
        }

        v45 = [NSString stringWithUTF8String:off_100319F08[v32]];
        v52[0] = v45;
        v52[1] = v28;
        v51[1] = NSUnderlyingErrorKey;
        v51[2] = @"Line";
        v52[2] = &off_100332928;
        v51[3] = @"Method";
        v46 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
        v52[3] = v46;
        v51[4] = NSDebugDescriptionErrorKey;
        v47 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 2019];
        v52[4] = v47;
        v48 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:5];
        v18 = [v29 initWithDomain:v30 code:v31 userInfo:v48];
      }

      else
      {
        v18 = 0;
      }

      (*(*(a1 + 40) + 16))();
      goto LABEL_16;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v34 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v38 = 45;
      if (isMetaClass)
      {
        v38 = 43;
      }

      v34(3, "%c[%{public}s %{public}s]:%i Failed to activate embedded secure element", v38, ClassName, Name, 2011);
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
      v58 = v41;
      v59 = 2082;
      v60 = v42;
      v61 = 2082;
      v62 = v43;
      v63 = 1024;
      v64 = 2011;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to activate embedded secure element", buf, 0x22u);
    }

    v16 = *(a1 + 40);
    v44 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v53 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Stack Error"];
    v54 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v21 = v44;
    v22 = v18;
    v23 = 15;
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
    v7 = sel_getName(*(a1 + 48));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 2008, v8);
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
    v58 = v12;
    v59 = 2082;
    v60 = v13;
    v61 = 2082;
    v62 = v14;
    v63 = 1024;
    v64 = 2008;
    v65 = 2114;
    v66 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 40);
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

NSXPCInterface *sub_10017A5E0()
{
  objc_opt_self();

  return [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFReaderSessionAccessoryInterface];
}

id sub_10017A618()
{
  objc_opt_self();
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFReaderSessionAccessoryCallbacks];
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = [v1 initWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:"didDetectTags:" argumentIndex:0 ofReply:0];

  return v0;
}

id sub_10017AA44(void *a1, void *a2)
{
  v3 = a2;
  v5 = objc_opt_new();
  if (a1)
  {
    Property = objc_getProperty(a1, v4, 176, 1);
  }

  else
  {
    Property = 0;
  }

  v22 = Property;
  objc_sync_enter(v22);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  if (a1)
  {
    v8 = objc_getProperty(a1, v7, 176, 1);
  }

  else
  {
    v8 = 0;
  }

  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [*(*(&v28 + 1) + 8 * i) NF_userInfo];
        v14 = [v13 objectForKeyedSubscript:@"assertions"];

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v25;
          do
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v25 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v24 + 1) + 8 * j);
              if ([v20 isEqualType:v3])
              {
                [v5 addObject:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v17);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v22);

  return v5;
}

id sub_10017AC8C(void *a1, id a2)
{
  if (a1)
  {
    v4 = objc_opt_new();
    v19 = objc_getProperty(a1, v5, 176, 1);
    objc_sync_enter(v19);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = objc_getProperty(a1, v6, 176, 1);
    v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v22)
    {
      v21 = *v28;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v8 = [*(*(&v27 + 1) + 8 * i) NF_userInfo];
          v9 = [v8 objectForKeyedSubscript:@"assertions"];

          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v24;
            do
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v24 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v23 + 1) + 8 * j);
                v16 = [v15 remoteAssertion];
                v17 = [v16 assertionType];

                if (v17 == a2)
                {
                  [v4 addObject:v15];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v12);
          }
        }

        v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v22);
    }

    objc_sync_exit(v19);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10017AEE8(id *a1, void *a2, void *a3, char a4, void *a5)
{
  v9 = a2;
  v169 = a3;
  v10 = a5;
  if (a1)
  {
    v167 = [v169 NF_whitelistChecker];
    v11 = [v9 objectForKey:@"NFAssertionType"];
    v168 = v9;
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v19 = [NSError alloc];
      v20 = [NSString stringWithUTF8String:"nfcd"];
      v206[0] = NSLocalizedDescriptionKey;
      v21 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v207[0] = v21;
      v207[1] = &off_100332940;
      v206[1] = @"Line";
      v206[2] = @"Method";
      v22 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:")];
      v207[2] = v22;
      v206[3] = NSDebugDescriptionErrorKey;
      v23 = v20;
      v24 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:"), 165];
      v207[3] = v24;
      v25 = [NSDictionary dictionaryWithObjects:v207 forKeys:v206 count:4];
      v26 = [v19 initWithDomain:v23 code:10 userInfo:v25];
      v10[2](v10, 0, v26);

      goto LABEL_104;
    }

    v162 = [v11 unsignedIntegerValue];
    v12 = sub_100003384(a1);
    if (v12 != 2 && v12 != 5)
    {
      v27 = [NSError alloc];
      v28 = [NSString stringWithUTF8String:"nfcd"];
      v204[0] = NSLocalizedDescriptionKey;
      v21 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      v205[0] = v21;
      v205[1] = &off_100332958;
      v204[1] = @"Line";
      v204[2] = @"Method";
      v22 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:")];
      v205[2] = v22;
      v204[3] = NSDebugDescriptionErrorKey;
      v23 = v28;
      v24 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:"), 174];
      v205[3] = v24;
      v29 = [NSDictionary dictionaryWithObjects:v205 forKeys:v204 count:4];
      v30 = [v27 initWithDomain:v23 code:58 userInfo:v29];
      v10[2](v10, 0, v30);

      goto LABEL_104;
    }

    v152 = a4;
    v13 = [NFAssertionInternal alloc];
    v203[0] = v11;
    v202[0] = @"NFAssertionType";
    v202[1] = @"NFAssertionPID";
    v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v169 processIdentifier]);
    v203[1] = v14;
    v202[2] = @"NFAssertionTime";
    v15 = +[NSDate now];
    v203[2] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v203 forKeys:v202 count:3];
    v17 = [v13 initWithDictionary:v16];

    v18 = [v169 NF_serviceType];
    v156 = v18;
    if (v18)
    {
      v155 = [v18 unsignedIntegerValue] == 2;
    }

    else
    {
      v155 = 0;
    }

    v179 = 0;
    v31 = v168;
    v166 = v17;
    v32 = v169;
    v33 = [v32 NF_clientName];
    v157 = v32;
    v158 = [[NSString alloc] initWithFormat:@"%@, PID:%d", v33, objc_msgSend(v32, "processIdentifier")];
    v24 = [v31 objectForKey:@"NFAssertionType"];
    v34 = [v24 unsignedIntegerValue];

    if (v34 > 3)
    {
      if (v34 > 5)
      {
        if (v34 != 6)
        {
          v35 = v34 == 7;
          v36 = v166;
          v37 = v157;
          if (v35)
          {
            v42 = [v31 NF_numberForKey:@"backgroundTagReading"];
            v150 = v42;
            if (v42)
            {
              if ([v42 BOOLValue])
              {
                v43 = 9;
              }

              else
              {
                v43 = 11;
              }
            }

            else
            {
              v43 = 9;
            }

            v128 = [v31 NF_numberForKey:@"connectionHandover"];
            v149 = v128;
            if (v128 && ![v128 BOOLValue])
            {
              v43 |= 4uLL;
            }

            v129 = [v31 objectForKey:@"passID"];
            v148 = v129;
            if (v129)
            {
              v130 = [[NSSet alloc] initWithArray:v129];
            }

            else
            {
              v130 = 0;
            }

            v147 = v130;
            v131 = [NFAssertPKPresentConfiguration configurationWithOptions:v43 expressPassIDList:v130 clientInfo:v158];
            v36 = v166;
            v37 = v157;
            v24 = sub_1000AAD04([NFAssertPKWalletForegroundPresentment alloc], v131, v166, v157, &v179);
          }

          goto LABEL_39;
        }
      }

      else if (v34 != 4)
      {
        v35 = v34 == 5;
        v36 = v166;
        v37 = v157;
        if (v35)
        {
          v40 = [NFAssertPKPresentConfiguration configurationWithOptions:1 expressPassIDList:0 clientInfo:v158];
          v24 = sub_1000AAD04([NFAssertPKWalletForegroundPresentment alloc], v40, v166, v157, &v179);

          v37 = v157;
        }

        goto LABEL_39;
      }

      v36 = v166;
      v37 = v157;
      v41 = sub_10018383C([NFAssertSuppressPresentmentIntentToDefaultApp alloc], v166, v158, v157);
      goto LABEL_38;
    }

    if (v34 > 1)
    {
      if (v34 != 2)
      {
        v35 = v34 == 3;
        v36 = v166;
        v37 = v157;
        if (!v35)
        {
          goto LABEL_39;
        }

        v41 = sub_1001E2864([NFAssertPreventConnectionHandover alloc], v166, v158, v157);
        goto LABEL_38;
      }

      v44 = NFAssertPreventBackgroundTagReading;
    }

    else
    {
      if (v34)
      {
        v35 = v34 == 1;
        v36 = v166;
        v37 = v157;
        if (!v35)
        {
          goto LABEL_39;
        }

        v38 = [NFAssertDontReset alloc];
        v39 = v166;
        goto LABEL_37;
      }

      v44 = NFAssertPowerUp;
    }

    v38 = [v44 alloc];
    v36 = v166;
    v39 = v166;
    v37 = v157;
LABEL_37:
    v41 = [(NFAsserter *)v38 initWithRemoteAssertion:v39 xpcConnection:v37];
LABEL_38:
    v24 = v41;
LABEL_39:

    v22 = v179;
    if (v24)
    {
      if ([v24 isEntitled:v37])
      {
        if ([v24 isSupported])
        {
          if (v162 != 4 || !v155 || (v45 = a1[10], v46 = sub_100044050(v45, v37), v45, (v46 & 1) != 0))
          {
            if (NFIsInternalBuild())
            {
              v48 = sub_10017AA44(a1, v24);
              if ([v48 count])
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                Logger = NFLogGetLogger();
                if (Logger)
                {
                  v50 = Logger;
                  Class = object_getClass(a1);
                  isMetaClass = class_isMetaClass(Class);
                  ClassName = object_getClassName(a1);
                  Name = sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:");
                  v54 = 45;
                  if (isMetaClass)
                  {
                    v54 = 43;
                  }

                  v37 = v157;
                  v50(5, "%c[%{public}s %{public}s]:%i Found pre-existing assertions: %{public}@", v54, ClassName, Name, 229, v48);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v55 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
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
                  v59 = sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:");
                  *buf = 67110146;
                  v181 = v57;
                  v182 = 2082;
                  v183 = v58;
                  v37 = v157;
                  v184 = 2082;
                  v185 = v59;
                  v186 = 1024;
                  v187 = 229;
                  v188 = 2114;
                  v189 = v48;
                  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found pre-existing assertions: %{public}@", buf, 0x2Cu);
                }
              }
            }

            v60 = objc_getProperty(a1, v47, 176, 1);
            objc_sync_enter(v60);
            v61 = [v37 NF_userInfo];
            [v61 objectForKeyedSubscript:@"assertions"];
            v63 = v62 = v37;

            if (!v63)
            {
              v64 = objc_opt_new();
              v65 = [v62 NF_userInfo];
              [v65 setObject:v64 forKeyedSubscript:@"assertions"];
            }

            v66 = [v62 NF_userInfo];
            v67 = [v66 objectForKeyedSubscript:@"assertions"];

            [v67 addObject:v24];
            objc_sync_exit(v60);

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v68 = NFLogGetLogger();
            if (v68)
            {
              v69 = v68;
              v70 = object_getClass(a1);
              v153 = class_isMetaClass(v70);
              v160 = object_getClassName(a1);
              v151 = sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:");
              v71 = [v62 processIdentifier];
              v72 = [v167 clientName];
              v73 = 43;
              if (!v153)
              {
                v73 = 45;
              }

              v69(6, "%c[%{public}s %{public}s]:%i Assertion [%{public}@] requested from PID %d (%{public}@)", v73, v160, v151, 243, v24, v71, v72);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v74 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
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

              v154 = object_getClassName(a1);
              v77 = sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:");
              v161 = [v157 processIdentifier];
              v78 = [v167 clientName];
              *buf = 67110658;
              v181 = v76;
              v182 = 2082;
              v183 = v154;
              v184 = 2082;
              v185 = v77;
              v186 = 1024;
              v187 = 243;
              v188 = 2114;
              v189 = v24;
              v190 = 1024;
              v191 = v161;
              v192 = 2114;
              v193 = v78;
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Assertion [%{public}@] requested from PID %d (%{public}@)", buf, 0x3Cu);
            }

            if (v152)
            {
              v9 = v168;
              v21 = v156;
              v79 = v166;
            }

            else
            {
              v79 = v166;
              (v10)[2](v10, v166, 0);

              v10 = 0;
              v9 = v168;
              v21 = v156;
            }

            v127 = a1[30];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10017C4F4;
            block[3] = &unk_10031A638;
            v24 = v24;
            v176 = v162;
            v171 = v24;
            v172 = a1;
            v10 = v10;
            v175 = v10;
            v173 = v79;
            v177 = "_requestAssertion:xpcConnection:waitOnComplete:completion:";
            v23 = v173;
            v174 = v157;
            v178 = v155;
            dispatch_async(v127, block);

            goto LABEL_104;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v132 = NFLogGetLogger();
          if (v132)
          {
            v133 = v132;
            v134 = object_getClass(a1);
            v135 = class_isMetaClass(v134);
            v136 = object_getClassName(a1);
            v146 = sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:");
            v137 = 45;
            if (v135)
            {
              v137 = 43;
            }

            v133(6, "%c[%{public}s %{public}s]:%i Client is not foreground", v137, v136, v146, 218);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v138 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
          {
            v139 = object_getClass(a1);
            if (class_isMetaClass(v139))
            {
              v140 = 43;
            }

            else
            {
              v140 = 45;
            }

            v141 = object_getClassName(a1);
            v142 = sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:");
            *buf = 67109890;
            v181 = v140;
            v182 = 2082;
            v183 = v141;
            v184 = 2082;
            v185 = v142;
            v186 = 1024;
            v187 = 218;
            _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Client is not foreground", buf, 0x22u);
          }

          v165 = [NSError alloc];
          v112 = [NSString stringWithUTF8String:"nfcd"];
          v194[0] = NSLocalizedDescriptionKey;
          v107 = [NSString stringWithUTF8String:"Invalid State"];
          v195[0] = v107;
          v195[1] = &off_1003329A0;
          v194[1] = @"Line";
          v194[2] = @"Method";
          v108 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:")];
          v195[2] = v108;
          v194[3] = NSDebugDescriptionErrorKey;
          v109 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:"), 219];
          v195[3] = v109;
          v110 = [NSDictionary dictionaryWithObjects:v195 forKeys:v194 count:4];
          v111 = v165;
          v113 = v112;
          v114 = 12;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v115 = NFLogGetLogger();
          if (v115)
          {
            v116 = v115;
            v117 = object_getClass(a1);
            v118 = class_isMetaClass(v117);
            v119 = object_getClassName(a1);
            v145 = sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:");
            v120 = 45;
            if (v118)
            {
              v120 = 43;
            }

            v116(6, "%c[%{public}s %{public}s]:%i Not supported", v120, v119, v145, 211);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v121 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
          {
            v122 = object_getClass(a1);
            if (class_isMetaClass(v122))
            {
              v123 = 43;
            }

            else
            {
              v123 = 45;
            }

            v124 = object_getClassName(a1);
            v125 = sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:");
            *buf = 67109890;
            v181 = v123;
            v182 = 2082;
            v183 = v124;
            v184 = 2082;
            v185 = v125;
            v186 = 1024;
            v187 = 211;
            _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Not supported", buf, 0x22u);
          }

          v164 = [NSError alloc];
          v112 = [NSString stringWithUTF8String:"nfcd"];
          v196[0] = NSLocalizedDescriptionKey;
          v107 = [NSString stringWithUTF8String:"Feature Not Supported"];
          v197[0] = v107;
          v197[1] = &off_100332988;
          v196[1] = @"Line";
          v196[2] = @"Method";
          v108 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:")];
          v197[2] = v108;
          v196[3] = NSDebugDescriptionErrorKey;
          v109 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:"), 212];
          v197[3] = v109;
          v110 = [NSDictionary dictionaryWithObjects:v197 forKeys:v196 count:4];
          v111 = v164;
          v113 = v112;
          v114 = 14;
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v95 = NFLogGetLogger();
        if (v95)
        {
          v96 = v95;
          v97 = object_getClass(a1);
          v98 = class_isMetaClass(v97);
          v99 = object_getClassName(a1);
          v144 = sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:");
          v100 = 45;
          if (v98)
          {
            v100 = 43;
          }

          v96(6, "%c[%{public}s %{public}s]:%i Not Entitled", v100, v99, v144, 205);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v101 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
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
          v105 = sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:");
          *buf = 67109890;
          v181 = v103;
          v182 = 2082;
          v183 = v104;
          v184 = 2082;
          v185 = v105;
          v186 = 1024;
          v187 = 205;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Not Entitled", buf, 0x22u);
        }

        v106 = [NSError alloc];
        v163 = [NSString stringWithUTF8String:"nfcd"];
        v198[0] = NSLocalizedDescriptionKey;
        v107 = [NSString stringWithUTF8String:"Not entitled"];
        v199[0] = v107;
        v199[1] = &off_100332970;
        v198[1] = @"Line";
        v198[2] = @"Method";
        v108 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:")];
        v199[2] = v108;
        v198[3] = NSDebugDescriptionErrorKey;
        v109 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:"), 206];
        v199[3] = v109;
        v110 = [NSDictionary dictionaryWithObjects:v199 forKeys:v198 count:4];
        v111 = v106;
        v112 = v163;
        v113 = v163;
        v114 = 32;
      }

      v126 = [v111 initWithDomain:v113 code:v114 userInfo:v110];
      v10[2](v10, 0, v126);

      v9 = v168;
      v21 = v156;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v80 = NFLogGetLogger();
      if (v80)
      {
        v81 = v80;
        v82 = object_getClass(a1);
        v83 = class_isMetaClass(v82);
        v84 = object_getClassName(a1);
        v143 = sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:");
        v85 = 45;
        if (v83)
        {
          v85 = 43;
        }

        v81(3, "%c[%{public}s %{public}s]:%i Resource allocation failed", v85, v84, v143, 198);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v86 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        v87 = object_getClass(a1);
        if (class_isMetaClass(v87))
        {
          v88 = 43;
        }

        else
        {
          v88 = 45;
        }

        v89 = object_getClassName(a1);
        v90 = sel_getName("_requestAssertion:xpcConnection:waitOnComplete:completion:");
        *buf = 67109890;
        v181 = v88;
        v182 = 2082;
        v183 = v89;
        v184 = 2082;
        v185 = v90;
        v186 = 1024;
        v187 = 198;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Resource allocation failed", buf, 0x22u);
      }

      v21 = v156;
      if (!v22)
      {
        v91 = [NSError alloc];
        v92 = [NSString stringWithUTF8String:"nfcd"];
        v200 = NSLocalizedDescriptionKey;
        v93 = [NSString stringWithUTF8String:"No resources"];
        v201 = v93;
        v94 = [NSDictionary dictionaryWithObjects:&v201 forKeys:&v200 count:1];
        v22 = [v91 initWithDomain:v92 code:34 userInfo:v94];

        v21 = v156;
      }

      v10[2](v10, 0, v22);
      v24 = 0;
      v9 = v168;
    }

    v23 = v166;
LABEL_104:
  }
}

void sub_10017C4F4(uint64_t a1)
{
  if ([*(a1 + 32) state])
  {
    __assert_rtn("[_NFHardwareManager(Assertion) _requestAssertion:xpcConnection:waitOnComplete:completion:]_block_invoke", "_NFHardwareManager+Assertion.m", 251, "internalAsserter.state == NFAsserterStateIdle");
  }

  if (*(a1 + 72) == 7)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v2 = v2[54];
    }

    v3 = v2;

    if (!v3)
    {
      v4 = objc_opt_new();
      sub_1001263D0(*(a1 + 40), v4);
    }
  }

  v5 = [*(a1 + 32) onAssert];
  if (v5)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      v7 = *(a1 + 48);
      v8 = [NSError alloc];
      v9 = [NSString stringWithUTF8String:"nfcd"];
      v10 = [v5 code];
      v25[0] = NSLocalizedDescriptionKey;
      if ([v5 code] > 75)
      {
        v11 = 76;
      }

      else
      {
        v11 = [v5 code];
      }

      v19 = [NSString stringWithUTF8String:off_10031A3C8[v11]];
      v26[0] = v19;
      v26[1] = v5;
      v25[1] = NSUnderlyingErrorKey;
      v25[2] = @"Line";
      v26[2] = &off_1003329B8;
      v25[3] = @"Method";
      v20 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 80))];
      v26[3] = v20;
      v25[4] = NSDebugDescriptionErrorKey;
      v21 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 80)), 264];
      v26[4] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:5];
      v23 = [v8 initWithDomain:v9 code:v10 userInfo:v22];
      (*(v6 + 16))(v6, v7, v23);
    }
  }

  else
  {
    v12 = *(a1 + 72);
    if (v12 == 6)
    {
      [*(a1 + 56) NF_setFDPresentmentIntentSuppressionHolder];
    }

    else if (v12 == 4)
    {
      v13 = [NSDictionary alloc];
      v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 56) processIdentifier]);
      v15 = +[NSDate now];
      v16 = v15;
      if (*(a1 + 88))
      {
        v17 = &off_1003329D0;
      }

      else
      {
        v17 = &off_1003329E8;
      }

      v18 = [v13 initWithObjectsAndKeys:{v14, @"PID", v15, @"startTime", v17, @"assertionType", 0}];

      [NFAssertionCALogger postAnalyticsDefaultAppSupression:v18 prepOnly:1];
      [*(a1 + 56) NF_setPresentmentIntentSuppressionHolder];
    }

    v24 = *(a1 + 64);
    if (v24)
    {
      (*(v24 + 16))(v24, *(a1 + 48), 0);
    }
  }
}

id sub_10017C8A0(_BYTE *a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 sessionID];
    v4 = v3;
    if (a1[363])
    {
      v5 = [NSError alloc];
      v6 = [NSString stringWithUTF8String:"nfcd"];
      v13[0] = NSLocalizedDescriptionKey;
      v7 = [NSString stringWithUTF8String:"Invalid State"];
      v14[0] = v7;
      v14[1] = &off_100332A00;
      v13[1] = @"Line";
      v13[2] = @"Method";
      v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_openSessionForAssertion:")];
      v14[2] = v8;
      v13[3] = NSDebugDescriptionErrorKey;
      v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_openSessionForAssertion:"), 297];
      v14[3] = v9;
      v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
      v11 = [v5 initWithDomain:v6 code:12 userInfo:v10];
    }

    else
    {
      if (!v3)
      {
        v11 = 0;
        goto LABEL_7;
      }

      v6 = [a1 driverWrapper];
      v11 = sub_10021A4A0(v6, v4, 0);
    }

LABEL_7:
    goto LABEL_8;
  }

  v11 = 0;
LABEL_8:

  return v11;
}

void sub_10017CAB8(id *a1, void *a2, void *a3, char a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    v79 = [v10 NF_whitelistChecker];
    v13 = objc_getProperty(a1, v12, 176, 1);
    objc_sync_enter(v13);
    v14 = [v10 NF_userInfo];
    v15 = [v14 objectForKeyedSubscript:@"assertions"];

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v87 objects:v103 count:16];
    if (v17)
    {
      v18 = v17;
      v74 = v13;
      v75 = a4;
      v76 = v11;
      v78 = v10;
      v19 = *v88;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v88 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v87 + 1) + 8 * i);
          v22 = [v21 remoteAssertion];
          v23 = [v22 isEqual:v9];

          if (v23)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v26 = Logger;
              Class = object_getClass(a1);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(a1);
              Name = sel_getName("_releaseAssertion:xpcConnection:waitOnComplete:completion:");
              v31 = [v78 processIdentifier];
              v32 = [v79 clientName];
              v33 = 43;
              if (!isMetaClass)
              {
                v33 = 45;
              }

              v26(6, "%c[%{public}s %{public}s]:%i Assertion [%{public}@] released from PID %d (%{public}@)", v33, ClassName, Name, 322, v9, v31, v32);
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
              v38 = sel_getName("_releaseAssertion:xpcConnection:waitOnComplete:completion:");
              v39 = [v78 processIdentifier];
              v40 = [v79 clientName];
              *buf = 67110658;
              v92 = v36;
              v93 = 2082;
              v94 = v37;
              v95 = 2082;
              v96 = v38;
              v97 = 1024;
              v98 = 322;
              v99 = 2114;
              *v100 = v9;
              *&v100[8] = 1024;
              *&v100[10] = v39;
              v101 = 2114;
              v102 = v40;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Assertion [%{public}@] released from PID %d (%{public}@)", buf, 0x3Cu);
            }

            v24 = v21;
            [v16 removeObject:v24];
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v41 = NFLogGetLogger();
            v10 = v78;
            if (v41)
            {
              v42 = v41;
              v43 = object_getClass(a1);
              v44 = class_isMetaClass(v43);
              v45 = object_getClassName(a1);
              v46 = sel_getName("_releaseAssertion:xpcConnection:waitOnComplete:completion:");
              v47 = [v78 processIdentifier];
              v48 = [v79 clientName];
              v73 = v47;
              v10 = v78;
              v49 = 43;
              if (!v44)
              {
                v49 = 45;
              }

              v42(6, "%c[%{public}s %{public}s]:%i Updated available assertions for PID %d (%{public}@) are %{public}@", v49, v45, v46, 327, v73, v48, v16);
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
              v54 = sel_getName("_releaseAssertion:xpcConnection:waitOnComplete:completion:");
              v55 = [v10 processIdentifier];
              v56 = [v79 clientName];
              *buf = 67110658;
              v92 = v52;
              v93 = 2082;
              v94 = v53;
              v95 = 2082;
              v96 = v54;
              v97 = 1024;
              v98 = 327;
              v99 = 1024;
              *v100 = v55;
              *&v100[4] = 2114;
              *&v100[6] = v56;
              v101 = 2114;
              v102 = v16;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Updated available assertions for PID %d (%{public}@) are %{public}@", buf, 0x3Cu);

              v10 = v78;
            }

            goto LABEL_30;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v87 objects:v103 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v24 = 0;
      v10 = v78;
LABEL_30:
      v11 = v76;
      a4 = v75;
      v13 = v74;
    }

    else
    {
      v24 = 0;
    }

    objc_sync_exit(v13);
    if ((a4 & 1) == 0)
    {
      v11[2](v11, 0);

      v11 = 0;
    }

    v57 = [v10 processIdentifier];
    v58 = [v79 clientName];
    v59 = [v58 copy];

    if (v24)
    {
      v60 = a1[30];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10017D250;
      block[3] = &unk_10031A660;
      v81 = v24;
      v82 = a1;
      v86 = "_releaseAssertion:xpcConnection:waitOnComplete:completion:";
      v83 = v9;
      v84 = v10;
      v85 = v11;
      dispatch_async(v60, block);
    }

    else
    {
      v77 = v11;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v61 = NFLogGetLogger();
      if (v61)
      {
        v62 = v61;
        v63 = object_getClass(a1);
        v64 = class_isMetaClass(v63);
        v71 = object_getClassName(a1);
        v72 = sel_getName("_releaseAssertion:xpcConnection:waitOnComplete:completion:");
        v65 = 43;
        if (!v64)
        {
          v65 = 45;
        }

        v62(4, "%c[%{public}s %{public}s]:%i Assertion [%{public}@] not available for PID %d (%{public}@)", v65, v71, v72, 342, v9, v57, v59);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v66 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v67 = object_getClass(a1);
        if (class_isMetaClass(v67))
        {
          v68 = 43;
        }

        else
        {
          v68 = 45;
        }

        v69 = object_getClassName(a1);
        v70 = sel_getName("_releaseAssertion:xpcConnection:waitOnComplete:completion:");
        *buf = 67110658;
        v92 = v68;
        v93 = 2082;
        v94 = v69;
        v95 = 2082;
        v96 = v70;
        v97 = 1024;
        v98 = 342;
        v99 = 2114;
        *v100 = v9;
        *&v100[8] = 1024;
        *&v100[10] = v57;
        v101 = 2114;
        v102 = v59;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Assertion [%{public}@] not available for PID %d (%{public}@)", buf, 0x3Cu);
      }

      v11 = v77;
      if (v77)
      {
        v77[2](v77, 0);
      }
    }
  }
}

void sub_10017D250(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2 || objc_msgSend(*(a1 + 32), "state") == 1)
  {
    v2 = [*(a1 + 32) onDeassert];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(*(a1 + 40));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 40));
      Name = sel_getName(*(a1 + 72));
      v21 = *(a1 + 32);
      v22 = [v21 state];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v4(6, "%c[%{public}s %{public}s]:%i Assertion [%{public}@, state=%lu] already de-asserted", v9, ClassName, Name, 355, v21, v22);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
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
      v14 = sel_getName(*(a1 + 72));
      v15 = *(a1 + 32);
      *buf = 67110402;
      v24 = v12;
      v25 = 2082;
      v26 = v13;
      v27 = 2082;
      v28 = v14;
      v29 = 1024;
      v30 = 355;
      v31 = 2114;
      v32 = v15;
      v33 = 2048;
      v34 = [v15 state];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Assertion [%{public}@, state=%lu] already de-asserted", buf, 0x36u);
    }

    v2 = 0;
  }

  if ([*(a1 + 48) assertionType] == 4)
  {
    v16 = [NSDictionary alloc];
    v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 56) processIdentifier]);
    v18 = +[NSDate now];
    v19 = [v16 initWithObjectsAndKeys:{v17, @"PID", v18, @"endTime", 0}];

    [NFAssertionCALogger postAnalyticsDefaultAppSupression:v19 prepOnly:0];
    [*(a1 + 56) NF_clearPresentmentIntentSuppressionHolder];
  }

  else if ([*(a1 + 48) assertionType] == 6)
  {
    [*(a1 + 56) NF_clearFDPresentmentIntentSuppressionHolder];
  }

  v20 = *(a1 + 64);
  if (v20)
  {
    (*(v20 + 16))(v20, v2);
  }
}

void sub_10017D528(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v37 = [v3 NF_whitelistChecker];
    v5 = [v4 NF_userInfo];
    v6 = [v5 objectForKeyedSubscript:@"assertions"];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v6;
    v35 = [obj countByEnumeratingWithState:&v38 objects:v58 count:16];
    if (v35)
    {
      v34 = *v39;
      v36 = v4;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v39 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v38 + 1) + 8 * i);
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v10 = Logger;
            Class = object_getClass(a1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(a1);
            Name = sel_getName("releaseAssertionsForConnection:");
            v15 = [v8 state];
            v16 = [v4 processIdentifier];
            v17 = [v37 clientName];
            v18 = 45;
            if (isMetaClass)
            {
              v18 = 43;
            }

            v10(6, "%c[%{public}s %{public}s]:%i Assertion [%{public}@, state=%lu] released from PID %d (%{public}@)", v18, ClassName, Name, 385, v8, v15, v16, v17);

            v4 = v36;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v19 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
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
            v23 = sel_getName("releaseAssertionsForConnection:");
            v24 = [v8 state];
            v25 = [v4 processIdentifier];
            v26 = [v37 clientName];
            *buf = 67110914;
            v43 = v21;
            v44 = 2082;
            v45 = v22;
            v46 = 2082;
            v47 = v23;
            v48 = 1024;
            v49 = 385;
            v50 = 2114;
            v51 = v8;
            v52 = 2048;
            v53 = v24;
            v54 = 1024;
            v55 = v25;
            v4 = v36;
            v56 = 2114;
            v57 = v26;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Assertion [%{public}@, state=%lu] released from PID %d (%{public}@)", buf, 0x46u);
          }

          if ([v8 state] == 2)
          {
            v27 = [v8 onDeassert];
          }

          v28 = [v8 remoteAssertion];
          v29 = [v28 assertionType];

          if (v29 == 4)
          {
            [v4 NF_clearPresentmentIntentSuppressionHolder];
          }

          else
          {
            v30 = [v8 remoteAssertion];
            v31 = [v30 assertionType];

            if (v31 == 6)
            {
              [v4 NF_clearFDPresentmentIntentSuppressionHolder];
            }
          }
        }

        v35 = [obj countByEnumeratingWithState:&v38 objects:v58 count:16];
      }

      while (v35);
    }

    v32 = [v4 NF_userInfo];
    [v32 setObject:0 forKeyedSubscript:@"assertions"];
  }
}

void sub_10017D8F4(void *a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 sessionID];
    if (v3)
    {
      v5 = v3;
      v4 = [a1 driverWrapper];
      sub_10021CC94(v4, v5);

      v3 = v5;
    }
  }
}

void sub_10017D968(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 isEqualToString:@"NFCameraStateMonitor"])
    {
      v5 = *(a1 + 424);

      if (v5)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v8 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("requestConnectionHandoverAssert:");
          v12 = 45;
          if (isMetaClass)
          {
            v12 = 43;
          }

          v8(5, "%c[%{public}s %{public}s]:%i Camera assertion exists", v12, ClassName, Name, 414);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v13 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

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
        v39 = v15;
        v40 = 2082;
        v41 = object_getClassName(a1);
        v42 = 2082;
        v43 = sel_getName("requestConnectionHandoverAssert:");
        v44 = 1024;
        v45 = 414;
        v16 = "%c[%{public}s %{public}s]:%i Camera assertion exists";
        v17 = v13;
        v18 = OS_LOG_TYPE_DEFAULT;
LABEL_25:
        _os_log_impl(&_mh_execute_header, v17, v18, v16, buf, 0x22u);
LABEL_26:

        goto LABEL_27;
      }

      v20 = objc_getProperty(a1, v6, 176, 1);
      objc_sync_enter(v20);
      v21 = [NFAssertionInternal alloc];
      v36[0] = @"NFAssertionType";
      v36[1] = @"NFAssertionTime";
      v37[0] = &off_100332A18;
      v22 = +[NSDate now];
      v37[1] = v22;
      v23 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
      v24 = [v21 initWithDictionary:v23];
      v25 = *(a1 + 424);
      *(a1 + 424) = v24;

      objc_sync_exit(v20);
    }

    else
    {
      v19 = *(a1 + 336);
      if (v19 == -1)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v26 = NFLogGetLogger();
        if (v26)
        {
          v27 = v26;
          v28 = object_getClass(a1);
          v29 = class_isMetaClass(v28);
          v30 = object_getClassName(a1);
          v35 = sel_getName("requestConnectionHandoverAssert:");
          v31 = 45;
          if (v29)
          {
            v31 = 43;
          }

          v27(3, "%c[%{public}s %{public}s]:%i CH assertion count overflow!", v31, v30, v35, 429);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v13 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
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

        *buf = 67109890;
        v39 = v33;
        v40 = 2082;
        v41 = object_getClassName(a1);
        v42 = 2082;
        v43 = sel_getName("requestConnectionHandoverAssert:");
        v44 = 1024;
        v45 = 429;
        v16 = "%c[%{public}s %{public}s]:%i CH assertion count overflow!";
        v17 = v13;
        v18 = OS_LOG_TYPE_ERROR;
        goto LABEL_25;
      }

      *(a1 + 336) = v19 + 1;
    }
  }

LABEL_27:
}

void sub_10017DD1C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    if ([v3 isEqualToString:@"NFCameraStateMonitor"])
    {
      v5 = objc_getProperty(a1, v4, 176, 1);
      objc_sync_enter(v5);
      objc_storeStrong((a1 + 424), 0);
      objc_sync_exit(v5);

      v3 = v7;
    }

    else
    {
      v6 = *(a1 + 336);
      v3 = v7;
      if (v6)
      {
        *(a1 + 336) = v6 - 1;
      }
    }
  }
}

uint64_t sub_10017DDC4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 336))
  {
    return 1;
  }

  v2 = *(a1 + 424);
  v1 = v2 != 0;

  return v1;
}

uint64_t sub_10017DE14(void *a1, const char *a2)
{
  if (a1)
  {
    v18 = objc_getProperty(a1, a2, 176, 1);
    objc_sync_enter(v18);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = objc_getProperty(a1, v3, 176, 1);
    v4 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v25;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [*(*(&v24 + 1) + 8 * i) NF_userInfo];
          v10 = [v9 objectForKeyedSubscript:@"assertions"];

          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v21;
            do
            {
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v21 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v20 + 1) + 8 * j);
                objc_opt_class();
                v6 |= objc_opt_isKindOfClass();
              }

              v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v13);
          }
        }

        v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v5);
    }

    else
    {
      LOBYTE(v6) = 0;
    }

    objc_sync_exit(v18);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

id sub_10017E034(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = objc_getProperty(a1, v3, 176, 1);
    objc_sync_enter(v5);
    v7 = objc_getProperty(a1, v6, 176, 1);
    v8 = [v7 indexOfObject:v4];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v11 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_asserterListFromConnection:");
        v14 = 45;
        if (isMetaClass)
        {
          v14 = 43;
        }

        v11(3, "%c[%{public}s %{public}s]:%i Unexpected connection: %{public}@", v14, ClassName, Name, 495, v4);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
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

        *buf = 67110146;
        v25 = v17;
        v26 = 2082;
        v27 = object_getClassName(a1);
        v28 = 2082;
        v29 = sel_getName("_asserterListFromConnection:");
        v30 = 1024;
        v31 = 495;
        v32 = 2114;
        v33 = v4;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected connection: %{public}@", buf, 0x2Cu);
      }

      objc_sync_exit(v5);
      a1 = 0;
    }

    else
    {
      v18 = objc_getProperty(a1, v9, 176, 1);
      v19 = [v18 objectAtIndex:v8];

      objc_sync_exit(v5);
      v20 = [v19 NF_userInfo];
      a1 = [v20 objectForKeyedSubscript:@"assertions"];

      v5 = v19;
    }
  }

  return a1;
}

BOOL sub_10017E2C8(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_10017E034(a1, a2);
  v3 = [v2 count] != 0;

  return v3;
}

void sub_10017E310(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[30];
    dispatch_assert_queue_V2(v4);

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("assertOnXPCClientRunningScheduled:");
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 517, v3);
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
      v54 = v12;
      v55 = 2082;
      v56 = object_getClassName(a1);
      v57 = 2082;
      v58 = sel_getName("assertOnXPCClientRunningScheduled:");
      v59 = 1024;
      v60 = 517;
      v61 = 2114;
      v62 = v3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    v48 = v3;
    v13 = sub_10017E034(a1, v3);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v49 objects:v65 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v50;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v50 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v49 + 1) + 8 * i);
          if ([v18 state] && objc_msgSend(v18, "state") != 2)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v19 = NFLogGetLogger();
            if (v19)
            {
              v20 = v19;
              v21 = object_getClass(a1);
              v22 = class_isMetaClass(v21);
              v23 = object_getClassName(a1);
              v24 = sel_getName("assertOnXPCClientRunningScheduled:");
              v47 = [v18 state];
              v25 = 45;
              if (v22)
              {
                v25 = 43;
              }

              v20(6, "%c[%{public}s %{public}s]:%i (%{public}@) state=%lu", v25, v23, v24, 526, v18, v47);
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
              v30 = sel_getName("assertOnXPCClientRunningScheduled:");
              v31 = [v18 state];
              *buf = 67110402;
              v54 = v28;
              v55 = 2082;
              v56 = v29;
              v57 = 2082;
              v58 = v30;
              v59 = 1024;
              v60 = 526;
              v61 = 2114;
              v62 = v18;
              v63 = 2048;
              v64 = v31;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i (%{public}@) state=%lu", buf, 0x36u);
            }

            v32 = [v18 onAssert];
            if (v32)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v33 = NFLogGetLogger();
              if (v33)
              {
                v34 = v33;
                v35 = object_getClass(a1);
                v36 = class_isMetaClass(v35);
                v37 = object_getClassName(a1);
                v46 = sel_getName("assertOnXPCClientRunningScheduled:");
                v38 = 45;
                if (v36)
                {
                  v38 = 43;
                }

                v34(3, "%c[%{public}s %{public}s]:%i %{public}@ error=%{public}@", v38, v37, v46, 530, v18, v32);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v39 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
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
                v43 = sel_getName("assertOnXPCClientRunningScheduled:");
                *buf = 67110402;
                v54 = v41;
                v55 = 2082;
                v56 = v42;
                v57 = 2082;
                v58 = v43;
                v59 = 1024;
                v60 = 530;
                v61 = 2114;
                v62 = v18;
                v63 = 2114;
                v64 = v32;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ error=%{public}@", buf, 0x36u);
              }
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v49 objects:v65 count:16];
      }

      while (v15);
    }

    v3 = v48;
  }
}

void sub_10017E840(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[30];
    dispatch_assert_queue_V2(v4);

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("deassertOnXPCClientSuspension:");
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 539, v3);
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
      v54 = v12;
      v55 = 2082;
      v56 = object_getClassName(a1);
      v57 = 2082;
      v58 = sel_getName("deassertOnXPCClientSuspension:");
      v59 = 1024;
      v60 = 539;
      v61 = 2114;
      v62 = v3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    v47 = v3;
    sub_10017E034(a1, v3);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v52 = 0u;
    v13 = [obj countByEnumeratingWithState:&v49 objects:v65 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v50;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v50 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v49 + 1) + 8 * i);
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v18 = NFLogGetLogger();
          if (v18)
          {
            v19 = v18;
            v20 = object_getClass(a1);
            v21 = class_isMetaClass(v20);
            v22 = object_getClassName(a1);
            v23 = sel_getName("deassertOnXPCClientSuspension:");
            v46 = [v17 state];
            v24 = 45;
            if (v21)
            {
              v24 = 43;
            }

            v19(6, "%c[%{public}s %{public}s]:%i (%{public}@) state=%lu", v24, v22, v23, 543, v17, v46);
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
            v29 = sel_getName("deassertOnXPCClientSuspension:");
            v30 = [v17 state];
            *buf = 67110402;
            v54 = v27;
            v55 = 2082;
            v56 = v28;
            v57 = 2082;
            v58 = v29;
            v59 = 1024;
            v60 = 543;
            v61 = 2114;
            v62 = v17;
            v63 = 2048;
            v64 = v30;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i (%{public}@) state=%lu", buf, 0x36u);
          }

          if ([v17 state] == 2)
          {
            v31 = [v17 onDeassert];
            if (v31)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v32 = NFLogGetLogger();
              if (v32)
              {
                v33 = v32;
                v34 = object_getClass(a1);
                v35 = class_isMetaClass(v34);
                v36 = object_getClassName(a1);
                v45 = sel_getName("deassertOnXPCClientSuspension:");
                v37 = 45;
                if (v35)
                {
                  v37 = 43;
                }

                v33(3, "%c[%{public}s %{public}s]:%i %{public}@ error=%{public}@", v37, v36, v45, 552, v17, v31);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v38 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v39 = object_getClass(a1);
                if (class_isMetaClass(v39))
                {
                  v40 = 43;
                }

                else
                {
                  v40 = 45;
                }

                v41 = object_getClassName(a1);
                v42 = sel_getName("deassertOnXPCClientSuspension:");
                *buf = 67110402;
                v54 = v40;
                v55 = 2082;
                v56 = v41;
                v57 = 2082;
                v58 = v42;
                v59 = 1024;
                v60 = 552;
                v61 = 2114;
                v62 = v17;
                v63 = 2114;
                v64 = v31;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ error=%{public}@", buf, 0x36u);
              }
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v49 objects:v65 count:16];
      }

      while (v14);
    }

    v3 = v47;
  }
}

uint64_t sub_10017F010(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a1)
  {
    a3 = 0;
    goto LABEL_81;
  }

  v145 = 0;
  v6 = sub_100159994(a1, v5, &v145);
  v7 = v145;
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v39 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("getPtaAppletVersion:error:");
      [v5 identifier];
      v44 = a3;
      v46 = v45 = v5;
      v47 = 45;
      if (isMetaClass)
      {
        v47 = 43;
      }

      v39(3, "%c[%{public}s %{public}s]:%i Failed to select %{public}@", v47, ClassName, Name, 24, v46);

      v5 = v45;
      a3 = v44;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v48 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = object_getClass(a1);
      if (class_isMetaClass(v49))
      {
        v50 = 43;
      }

      else
      {
        v50 = 45;
      }

      v51 = object_getClassName(a1);
      v52 = sel_getName("getPtaAppletVersion:error:");
      v53 = [v5 identifier];
      *buf = 67110146;
      v155 = v50;
      v156 = 2082;
      v157 = v51;
      v158 = 2082;
      v159 = v52;
      v160 = 1024;
      v161 = 24;
      v162 = 2114;
      *v163 = v53;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select %{public}@", buf, 0x2Cu);
    }

    if (!a3)
    {
      goto LABEL_80;
    }

    v54 = [NSError alloc];
    v55 = [NSString stringWithUTF8String:"nfcd"];
    if (v8)
    {
      v56 = [v8 code];
      v166[0] = NSLocalizedDescriptionKey;
      v142 = v5;
      if ([v8 code] > 75)
      {
        v57 = 76;
      }

      else
      {
        v57 = [v8 code];
      }

      v105 = [NSString stringWithUTF8String:(&off_10031A680)[v57]];
      v167[0] = v105;
      v167[1] = v8;
      v166[1] = NSUnderlyingErrorKey;
      v166[2] = @"Line";
      v167[2] = &off_100332A30;
      v166[3] = @"Method";
      v106 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getPtaAppletVersion:error:")];
      v167[3] = v106;
      v166[4] = NSDebugDescriptionErrorKey;
      v107 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getPtaAppletVersion:error:"), 26];
      v167[4] = v107;
      v108 = [NSDictionary dictionaryWithObjects:v167 forKeys:v166 count:5];
      v109 = [v54 initWithDomain:v55 code:v56 userInfo:v108];
      *a3 = v109;

      goto LABEL_75;
    }

    v164[0] = NSLocalizedDescriptionKey;
    v100 = [NSString stringWithUTF8String:"Command Error"];
    v165[0] = v100;
    v165[1] = &off_100332A30;
    v164[1] = @"Line";
    v164[2] = @"Method";
    v101 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getPtaAppletVersion:error:")];
    v165[2] = v101;
    v164[3] = NSDebugDescriptionErrorKey;
    v102 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getPtaAppletVersion:error:"), 26];
    v165[3] = v102;
    v103 = [NSDictionary dictionaryWithObjects:v165 forKeys:v164 count:4];
    v104 = [v54 initWithDomain:v55 code:16 userInfo:v103];
    *a3 = v104;

LABEL_70:
    v8 = 0;
    a3 = 0;
    goto LABEL_79;
  }

  v144 = v7;
  v9 = sub_100158334(a1, 128, 202, 0, 0, 0, &v144);
  v10 = v144;

  if (!v9)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v58 = NFLogGetLogger();
    if (v58)
    {
      v59 = v58;
      v60 = object_getClass(a1);
      v61 = class_isMetaClass(v60);
      v62 = object_getClassName(a1);
      v136 = sel_getName("getPtaAppletVersion:error:");
      v63 = 45;
      if (v61)
      {
        v63 = 43;
      }

      v59(3, "%c[%{public}s %{public}s]:%i Command (%02X) failed; error: %{public}@", v63, v62, v136, 39, 202, v10);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v64 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v65 = object_getClass(a1);
      if (class_isMetaClass(v65))
      {
        v66 = 43;
      }

      else
      {
        v66 = 45;
      }

      v67 = object_getClassName(a1);
      v68 = sel_getName("getPtaAppletVersion:error:");
      *buf = 67110402;
      v155 = v66;
      v156 = 2082;
      v157 = v67;
      v158 = 2082;
      v159 = v68;
      v160 = 1024;
      v161 = 39;
      v162 = 1024;
      *v163 = 202;
      *&v163[4] = 2114;
      *&v163[6] = v10;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command (%02X) failed; error: %{public}@", buf, 0x32u);
    }

    if (!a3)
    {
      v55 = 0;
      v8 = v10;
      goto LABEL_79;
    }

    v69 = [NSError alloc];
    v70 = [NSString stringWithUTF8String:"nfcd"];
    if (v10)
    {
      v71 = [v10 code];
      v152[0] = NSLocalizedDescriptionKey;
      v142 = v5;
      if ([v10 code] > 75)
      {
        v72 = 76;
      }

      else
      {
        v72 = [v10 code];
      }

      v129 = [NSString stringWithUTF8String:(&off_10031A680)[v72]];
      v153[0] = v129;
      v153[1] = v10;
      v152[1] = NSUnderlyingErrorKey;
      v152[2] = @"Line";
      v153[2] = &off_100332A48;
      v152[3] = @"Method";
      v8 = v10;
      v130 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getPtaAppletVersion:error:")];
      v153[3] = v130;
      v152[4] = NSDebugDescriptionErrorKey;
      v131 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getPtaAppletVersion:error:"), 41];
      v153[4] = v131;
      v132 = [NSDictionary dictionaryWithObjects:v153 forKeys:v152 count:5];
      v133 = [v69 initWithDomain:v70 code:v71 userInfo:v132];
      *a3 = v133;

      v55 = 0;
LABEL_75:
      a3 = 0;
      v5 = v142;
      goto LABEL_79;
    }

    v150[0] = NSLocalizedDescriptionKey;
    v124 = [NSString stringWithUTF8String:"Command Error"];
    v151[0] = v124;
    v151[1] = &off_100332A48;
    v150[1] = @"Line";
    v150[2] = @"Method";
    v125 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getPtaAppletVersion:error:")];
    v151[2] = v125;
    v150[3] = NSDebugDescriptionErrorKey;
    v126 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getPtaAppletVersion:error:"), 41];
    v151[3] = v126;
    v127 = [NSDictionary dictionaryWithObjects:v151 forKeys:v150 count:4];
    v128 = [v69 initWithDomain:v70 code:16 userInfo:v127];
    *a3 = v128;

    v55 = 0;
    goto LABEL_70;
  }

  v143 = v9;
  v141 = a3;
  if ([v9 status] == 36864)
  {
    v11 = v9;
    v12 = [v9 response];
    v13 = [v12 length];

    if (v13 > 1)
    {
      v110 = [v11 data];
      v111 = [v110 bytes];

      v112 = *v111;
      v113 = __rev16(v112);
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v114 = NFLogGetLogger();
      if (v114)
      {
        v115 = v114;
        v116 = object_getClass(a1);
        v117 = class_isMetaClass(v116);
        v135 = object_getClassName(a1);
        v138 = sel_getName("getPtaAppletVersion:error:");
        v118 = 45;
        if (v117)
        {
          v118 = 43;
        }

        v115(6, "%c[%{public}s %{public}s]:%i Applet version 0x%x", v118, v135, v138, 65, v113);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v119 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
      {
        v120 = object_getClass(a1);
        if (class_isMetaClass(v120))
        {
          v121 = 43;
        }

        else
        {
          v121 = 45;
        }

        v122 = object_getClassName(a1);
        v123 = sel_getName("getPtaAppletVersion:error:");
        *buf = 67110146;
        v155 = v121;
        v156 = 2082;
        v157 = v122;
        v158 = 2082;
        v159 = v123;
        v160 = 1024;
        v161 = 65;
        v162 = 1024;
        *v163 = v113;
        _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Applet version 0x%x", buf, 0x28u);
      }

      if (v113 <= 0x203)
      {
        v55 = v143;
        if (v112 == 770)
        {
          a3 = 5;
        }

        else if (v113 <= 0x200)
        {
          if (v113 <= 0x105)
          {
            if (v112 == 1281)
            {
              a3 = 2;
            }

            else
            {
              a3 = 1;
            }
          }

          else
          {
            a3 = 3;
          }
        }

        else
        {
          a3 = 4;
        }

        v8 = v10;
        goto LABEL_79;
      }

      a3 = 6;
      v8 = v10;
      goto LABEL_78;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v15 = v14;
      v16 = object_getClass(a1);
      v17 = class_isMetaClass(v16);
      v18 = object_getClassName(a1);
      v19 = sel_getName("getPtaAppletVersion:error:");
      v20 = [v143 response];
      [v20 NF_asHexString];
      v22 = v21 = v10;
      v23 = 45;
      if (v17)
      {
        v23 = 43;
      }

      v15(3, "%c[%{public}s %{public}s]:%i Response length too short: %{public}@", v23, v18, v19, 54, v22);

      v10 = v21;
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

      v27 = object_getClassName(a1);
      v28 = sel_getName("getPtaAppletVersion:error:");
      v29 = [v143 response];
      v30 = [v29 NF_asHexString];
      *buf = 67110146;
      v155 = v26;
      v156 = 2082;
      v157 = v27;
      v158 = 2082;
      v159 = v28;
      v160 = 1024;
      v161 = 54;
      v162 = 2114;
      *v163 = v30;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Response length too short: %{public}@", buf, 0x2Cu);
    }

    if (v141)
    {
      v31 = [NSError alloc];
      v32 = [NSString stringWithUTF8String:"nfcd"];
      v146[0] = NSLocalizedDescriptionKey;
      v33 = [NSString stringWithUTF8String:"Command Error"];
      v147[0] = v33;
      v147[1] = &off_100332A78;
      v146[1] = @"Line";
      v146[2] = @"Method";
      v34 = v10;
      v35 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getPtaAppletVersion:error:")];
      v147[2] = v35;
      v146[3] = NSDebugDescriptionErrorKey;
      v36 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getPtaAppletVersion:error:"), 56];
      v147[3] = v36;
      v37 = [NSDictionary dictionaryWithObjects:v147 forKeys:v146 count:4];
      *v141 = [v31 initWithDomain:v32 code:16 userInfo:v37];

      a3 = 0;
      v8 = v34;
LABEL_78:
      v55 = v143;
      goto LABEL_79;
    }

    a3 = 0;
LABEL_77:
    v8 = v10;
    goto LABEL_78;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v73 = NFLogGetLogger();
  if (v73)
  {
    v74 = v73;
    v75 = object_getClass(a1);
    v76 = class_isMetaClass(v75);
    v139 = object_getClassName(a1);
    v77 = v5;
    v78 = sel_getName("getPtaAppletVersion:error:");
    v79 = [v9 status];
    v80 = [v9 response];
    v81 = [v80 NF_asHexString];
    v137 = v78;
    v5 = v77;
    v82 = 45;
    if (v76)
    {
      v82 = 43;
    }

    v74(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x, response: %{public}@", v82, v139, v137, 47, v79, v81);

    a3 = v141;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v83 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
  {
    v84 = object_getClass(a1);
    v140 = v10;
    if (class_isMetaClass(v84))
    {
      v85 = 43;
    }

    else
    {
      v85 = 45;
    }

    v86 = object_getClassName(a1);
    v87 = a3;
    v88 = sel_getName("getPtaAppletVersion:error:");
    v89 = [v143 status];
    v90 = [v143 response];
    v91 = [v90 NF_asHexString];
    *buf = 67110402;
    v155 = v85;
    v10 = v140;
    v156 = 2082;
    v157 = v86;
    v158 = 2082;
    v159 = v88;
    a3 = v87;
    v160 = 1024;
    v161 = 47;
    v162 = 1024;
    *v163 = v89;
    *&v163[4] = 2114;
    *&v163[6] = v91;
    _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x, response: %{public}@", buf, 0x32u);
  }

  if (!a3)
  {
    goto LABEL_77;
  }

  v92 = [NSError alloc];
  v93 = [NSString stringWithUTF8String:"nfcd"];
  v148[0] = NSLocalizedDescriptionKey;
  v94 = [NSString stringWithUTF8String:"Command Error"];
  v149[0] = v94;
  v149[1] = &off_100332A60;
  v148[1] = @"Line";
  v148[2] = @"Method";
  v95 = v10;
  v96 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getPtaAppletVersion:error:")];
  v149[2] = v96;
  v148[3] = NSDebugDescriptionErrorKey;
  v97 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getPtaAppletVersion:error:"), 49];
  v149[3] = v97;
  v148[4] = NSLocalizedFailureReasonErrorKey;
  v55 = v143;
  v98 = [[NSString alloc] initWithFormat:@"Response status: %u", objc_msgSend(v143, "status")];
  v149[4] = v98;
  v99 = [NSDictionary dictionaryWithObjects:v149 forKeys:v148 count:5];
  *v141 = [v92 initWithDomain:v93 code:16 userInfo:v99];

  a3 = 0;
  v8 = v95;
LABEL_79:

LABEL_80:
LABEL_81:

  return a3;
}

id sub_10018019C(id *a1, void *a2)
{
  if (!a1)
  {
    v153 = 0;
    goto LABEL_101;
  }

  v3 = objc_opt_new();
  v174 = objc_opt_new();
  v180 = 0;
  v4 = sub_1001814E0(a1, 0, 0, &v180);
  v5 = v180;
  v167 = a1;
  v165 = v3;
  if (v5)
  {
    v171 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v7 = [v5 code];
    v189 = NSLocalizedDescriptionKey;
    if ([v5 code] > 75)
    {
      v8 = 76;
    }

    else
    {
      v8 = [v5 code];
    }

    v39 = [NSString stringWithUTF8String:(&off_10031A680)[v8]];
    *buf = v39;
    *v187 = v5;
    v190 = NSUnderlyingErrorKey;
    v191 = @"Line";
    *&v187[8] = &off_100332A90;
    v192 = @"Method";
    v40 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
    v41 = [[NSString alloc] initWithFormat:@"%s", sel_getName("listPtaEndpoints:")];
    *&v187[16] = v41;
    v193 = NSDebugDescriptionErrorKey;
    v42 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("listPtaEndpoints:"), 90];
    *&v187[24] = v42;
    v43 = [NSDictionary dictionaryWithObjects:buf forKeys:&v189 count:5];
    v44 = [v171 initWithDomain:v6 code:v7 userInfo:v43];
    v45 = v44;

    v46 = 0;
    v47 = v167;
    v48 = v174;
  }

  else
  {
    v9 = a1;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(v9);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v9);
      Name = sel_getName("listPtaEndpoints:");
      v16 = [v4 response];
      v17 = [v16 NF_asHexString];
      v18 = 45;
      if (isMetaClass)
      {
        v18 = 43;
      }

      v11(6, "%c[%{public}s %{public}s]:%i %@", v18, ClassName, Name, 94, v17);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = object_getClass(v9);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      v22 = object_getClassName(v9);
      v23 = sel_getName("listPtaEndpoints:");
      v24 = [v4 response];
      v25 = [v24 NF_asHexString];
      *buf = 67110146;
      *&buf[4] = v21;
      *v187 = 2082;
      *&v187[2] = v22;
      *&v187[10] = 2082;
      *&v187[12] = v23;
      *&v187[20] = 1024;
      *&v187[22] = 94;
      *&v187[26] = 2112;
      *&v187[28] = v25;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
    }

    v26 = [v4 response];
    v27 = [v26 length];

    if (v27)
    {
      v28 = 0;
      v29 = 0;
      while (1)
      {
        v30 = [v4 response];
        v31 = (v29 + 1);
        v32 = *([v30 bytes] + v28);

        v28 = (v31 + v32);
        v33 = [v4 response];
        v34 = [v33 length];

        if (v34 < v28)
        {
          break;
        }

        v35 = [v4 response];
        v36 = [v35 subdataWithRange:{(v29 + 1), v32}];
        [v174 addObject:v36];

        v37 = [v4 response];
        v38 = [v37 length];

        v29 = v31 + v32;
        if (v38 <= v28)
        {
          goto LABEL_31;
        }
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v49 = NFLogGetLogger();
      v50 = v9;
      if (v49)
      {
        v51 = v49;
        v52 = object_getClass(v9);
        v53 = class_isMetaClass(v52);
        v54 = object_getClassName(v9);
        v55 = sel_getName("listPtaEndpoints:");
        v56 = [v4 response];
        v57 = [v56 NF_asHexString];
        v58 = 43;
        if (!v53)
        {
          v58 = 45;
        }

        v51(3, "%c[%{public}s %{public}s]:%i Truncated response! i: %u, length: %u, response %{public}@", v58, v54, v55, 101, v31, v32, v57);

        v50 = v167;
      }

      v9 = v50;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v59 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v60 = object_getClass(v50);
        if (class_isMetaClass(v60))
        {
          v61 = 43;
        }

        else
        {
          v61 = 45;
        }

        v62 = object_getClassName(v50);
        v63 = sel_getName("listPtaEndpoints:");
        v64 = [v4 response];
        v65 = [v64 NF_asHexString];
        *buf = 67110658;
        *&buf[4] = v61;
        *v187 = 2082;
        *&v187[2] = v62;
        *&v187[10] = 2082;
        *&v187[12] = v63;
        *&v187[20] = 1024;
        *&v187[22] = 101;
        *&v187[26] = 1024;
        *&v187[28] = v31;
        *&v187[32] = 1024;
        *&v187[34] = v32;
        *v188 = 2114;
        *&v188[2] = v65;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Truncated response! i: %u, length: %u, response %{public}@", buf, 0x38u);
      }
    }

LABEL_31:
    v48 = v174;
    v46 = v174;
    v44 = 0;
    v40 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
    v47 = v9;
    v5 = 0;
  }

  v66 = v44;
  if (!v66)
  {
    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v164 = v46;
    obj = v46;
    v170 = [obj countByEnumeratingWithState:&v176 objects:v183 count:16];
    v67 = 0;
    if (!v170)
    {
      goto LABEL_96;
    }

    v168 = *v177;
    while (1)
    {
      for (i = 0; i != v170; i = i + 1)
      {
        v74 = v67;
        if (*v177 != v168)
        {
          objc_enumerationMutation(obj);
        }

        v75 = *(*(&v176 + 1) + 8 * i);
        v180 = 0;
        v76 = sub_1001814E0(v47, 4, v75, &v180);
        v77 = v180;
        if (v77)
        {
          sel = v74;
          v175 = v76;
          v78 = [NSError alloc];
          v79 = [v40[475] stringWithUTF8String:"nfcd"];
          v80 = [v77 code];
          v189 = NSLocalizedDescriptionKey;
          v81 = v40[475];
          v82 = v75;
          if ([v77 code] > 75)
          {
            v83 = 76;
          }

          else
          {
            v83 = [v77 code];
          }

          v91 = [v81 stringWithUTF8String:(&off_10031A680)[v83]];
          *buf = v91;
          *v187 = v77;
          v190 = NSUnderlyingErrorKey;
          v191 = @"Line";
          *&v187[8] = &off_100332AD8;
          v192 = @"Method";
          v92 = [objc_alloc(v40[475]) initWithFormat:@"%s", sel_getName("getPtaEndpointState:error:")];
          *&v187[16] = v92;
          v193 = NSDebugDescriptionErrorKey;
          v93 = [objc_alloc(v40[475]) initWithFormat:@"%s:%d", sel_getName("getPtaEndpointState:error:"), 144];
          *&v187[24] = v93;
          v94 = [NSDictionary dictionaryWithObjects:buf forKeys:&v189 count:5];
          v95 = [v78 initWithDomain:v79 code:v80 userInfo:v94];
          v96 = v95;

          v90 = 0;
          v47 = v167;
          v75 = v82;
          v74 = sel;
          v76 = v175;
        }

        else
        {
          v84 = [v76 response];
          v85 = [v84 length];

          if (v85)
          {
            v86 = v47;
            v87 = [v76 response];
            v88 = *[v87 bytes];

            if (v88)
            {
              v89 = v88 == 2;
            }

            else
            {
              v89 = 1;
            }

            if (v89)
            {
              v90 = 0;
LABEL_65:
              v95 = v74;
              v77 = 0;
              v47 = v86;
              goto LABEL_77;
            }

            if (v88 == 1)
            {
              v90 = 1;
              goto LABEL_65;
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v115 = NFLogGetLogger();
            if (v115)
            {
              v116 = v115;
              v117 = object_getClass(v86);
              v118 = class_isMetaClass(v117);
              v160 = object_getClassName(v86);
              v162 = sel_getName("getPtaEndpointState:error:");
              v119 = 45;
              if (v118)
              {
                v119 = 43;
              }

              v116(3, "%c[%{public}s %{public}s]:%i Unexpected endpoint state %u", v119, v160, v162, 164, v88);
            }

            sela = v75;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v120 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
            {
              v121 = v86;
              v122 = object_getClass(v86);
              if (class_isMetaClass(v122))
              {
                v123 = 43;
              }

              else
              {
                v123 = 45;
              }

              v124 = object_getClassName(v121);
              v125 = sel_getName("getPtaEndpointState:error:");
              *buf = 67110146;
              *&buf[4] = v123;
              *v187 = 2082;
              *&v187[2] = v124;
              *&v187[10] = 2082;
              *&v187[12] = v125;
              *&v187[20] = 1024;
              *&v187[22] = 164;
              *&v187[26] = 1024;
              *&v187[28] = v88;
              _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected endpoint state %u", buf, 0x28u);
            }

            v108 = [NSError alloc];
            v109 = [NSString stringWithUTF8String:"nfcd"];
            v189 = NSLocalizedDescriptionKey;
            v110 = [NSString stringWithUTF8String:"Command Error"];
            *buf = v110;
            *v187 = &off_100332B08;
            v190 = @"Line";
            v191 = @"Method";
            v111 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getPtaEndpointState:error:")];
            *&v187[8] = v111;
            v192 = NSDebugDescriptionErrorKey;
            v112 = [NSString alloc];
            v113 = sel_getName("getPtaEndpointState:error:");
            v114 = 168;
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v97 = NFLogGetLogger();
            if (v97)
            {
              v98 = v97;
              v99 = object_getClass(v47);
              v100 = class_isMetaClass(v99);
              v101 = object_getClassName(v47);
              v161 = sel_getName("getPtaEndpointState:error:");
              v102 = 45;
              if (v100)
              {
                v102 = 43;
              }

              v159 = v101;
              v40 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
              v98(3, "%c[%{public}s %{public}s]:%i No data returned", v102, v159, v161, 148);
            }

            sela = v75;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v103 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
            {
              v104 = object_getClass(v47);
              if (class_isMetaClass(v104))
              {
                v105 = 43;
              }

              else
              {
                v105 = 45;
              }

              v106 = object_getClassName(v47);
              v107 = sel_getName("getPtaEndpointState:error:");
              *buf = 67109890;
              *&buf[4] = v105;
              v40 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
              *v187 = 2082;
              *&v187[2] = v106;
              *&v187[10] = 2082;
              *&v187[12] = v107;
              *&v187[20] = 1024;
              *&v187[22] = 148;
              _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No data returned", buf, 0x22u);
            }

            v108 = [NSError alloc];
            v109 = [v40[475] stringWithUTF8String:"nfcd"];
            v189 = NSLocalizedDescriptionKey;
            v110 = [v40[475] stringWithUTF8String:"Command Error"];
            *buf = v110;
            *v187 = &off_100332AF0;
            v190 = @"Line";
            v191 = @"Method";
            v111 = [objc_alloc(v40[475]) initWithFormat:@"%s", sel_getName("getPtaEndpointState:error:")];
            *&v187[8] = v111;
            v192 = NSDebugDescriptionErrorKey;
            v112 = objc_alloc(v40[475]);
            v113 = sel_getName("getPtaEndpointState:error:");
            v114 = 149;
          }

          v126 = [v112 initWithFormat:@"%s:%d", v113, v114];
          *&v187[16] = v126;
          v127 = [NSDictionary dictionaryWithObjects:buf forKeys:&v189 count:4];
          v95 = [v108 initWithDomain:v109 code:16 userInfo:v127];
          v128 = v95;

          v47 = v167;
          v90 = 0;
          v75 = sela;
          v77 = 0;
        }

LABEL_77:

        v67 = v95;
        if (v67)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v129 = NFLogGetLogger();
          v130 = v47;
          if (v129)
          {
            v131 = v129;
            v132 = object_getClass(v47);
            v133 = class_isMetaClass(v132);
            v134 = object_getClassName(v47);
            v135 = sel_getName("listActivePtaEndpoints:");
            v136 = [v75 NF_asHexString];
            v163 = v135;
            v47 = v130;
            v137 = 45;
            if (v133)
            {
              v137 = 43;
            }

            v131(3, "%c[%{public}s %{public}s]:%i Error querying state for endpoint %{public}@: %{public}@", v137, v134, v163, 126, v136, v67);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v138 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
          {
            v139 = object_getClass(v47);
            if (class_isMetaClass(v139))
            {
              v140 = 43;
            }

            else
            {
              v140 = 45;
            }

            v141 = object_getClassName(v47);
            v142 = sel_getName("listActivePtaEndpoints:");
            v143 = [v75 NF_asHexString];
            *buf = 67110402;
            *&buf[4] = v140;
            *v187 = 2082;
            *&v187[2] = v141;
            *&v187[10] = 2082;
            *&v187[12] = v142;
            *&v187[20] = 1024;
            *&v187[22] = 126;
            *&v187[26] = 2114;
            *&v187[28] = v143;
            *&v187[36] = 2114;
            *v188 = v67;
            _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error querying state for endpoint %{public}@: %{public}@", buf, 0x36u);

            v47 = v130;
          }

          v40 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
          if (a2)
          {
            v144 = [NSError alloc];
            v145 = [NSString stringWithUTF8String:"nfcd"];
            v146 = [v67 code];
            v181[0] = NSLocalizedDescriptionKey;
            if ([v67 code] > 75)
            {
              v147 = 76;
            }

            else
            {
              v147 = [v67 code];
            }

            v148 = [NSString stringWithUTF8String:(&off_10031A680)[v147]];
            v182[0] = v148;
            v182[1] = v67;
            v181[1] = NSUnderlyingErrorKey;
            v181[2] = @"Line";
            v182[2] = &off_100332AC0;
            v181[3] = @"Method";
            v149 = [[NSString alloc] initWithFormat:@"%s", sel_getName("listActivePtaEndpoints:")];
            v182[3] = v149;
            v181[4] = NSDebugDescriptionErrorKey;
            v150 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("listActivePtaEndpoints:"), 127];
            v182[4] = v150;
            v151 = [NSDictionary dictionaryWithObjects:v182 forKeys:v181 count:5];
            *a2 = [v144 initWithDomain:v145 code:v146 userInfo:v151];

            v40 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
            v47 = v130;
          }
        }

        else
        {
          v40 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
          if (v90)
          {
            [v165 addObject:v75];
          }
        }
      }

      v170 = [obj countByEnumeratingWithState:&v176 objects:v183 count:16];
      if (!v170)
      {
LABEL_96:

        v152 = v165;
        v153 = v165;
        v46 = v164;
        goto LABEL_100;
      }
    }
  }

  v67 = v66;
  if (a2)
  {
    v68 = [NSError alloc];
    v69 = [NSString stringWithUTF8String:"nfcd"];
    v70 = [v67 code];
    v184[0] = NSLocalizedDescriptionKey;
    v71 = v46;
    if ([v67 code] > 75)
    {
      v72 = 76;
    }

    else
    {
      v72 = [v67 code];
    }

    v154 = [NSString stringWithUTF8String:(&off_10031A680)[v72]];
    v185[0] = v154;
    v185[1] = v67;
    v184[1] = NSUnderlyingErrorKey;
    v184[2] = @"Line";
    v185[2] = &off_100332AA8;
    v184[3] = @"Method";
    v155 = [[NSString alloc] initWithFormat:@"%s", sel_getName("listActivePtaEndpoints:")];
    v185[3] = v155;
    v184[4] = NSDebugDescriptionErrorKey;
    v156 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("listActivePtaEndpoints:"), 119];
    v185[4] = v156;
    v157 = [NSDictionary dictionaryWithObjects:v185 forKeys:v184 count:5];
    *a2 = [v68 initWithDomain:v69 code:v70 userInfo:v157];

    v153 = 0;
    v152 = v165;
    v46 = v71;
  }

  else
  {
    v153 = 0;
    v152 = v165;
  }

LABEL_100:

LABEL_101:

  return v153;
}

void *sub_1001814E0(id *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v71 = 0;
  v8 = sub_100158334(a1, 128, 118, a2, 0, v7, &v71);
  v9 = v71;
  if (v8)
  {
    if ([v8 status] == 36864)
    {
      a4 = v8;
    }

    else
    {
      v68 = v8;
      v70 = v9;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      v66 = v7;
      if (Logger)
      {
        v25 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        v28 = a4;
        Name = sel_getName("ptaViewEndpointCommand:data:error:");
        v30 = [v68 status];
        v31 = [v7 NF_asHexString];
        v32 = [v68 response];
        v33 = [v32 NF_asHexString];
        v64 = Name;
        a4 = v28;
        v34 = 43;
        if (!isMetaClass)
        {
          v34 = 45;
        }

        v25(3, "%c[%{public}s %{public}s]:%i PTA View command (0x%02X) returned error: %{public}@, status 0x%04x, data: %{public}@ response: %{public}@", v34, ClassName, v64, 196, a2, v70, v30, v31, v33);
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
        v39 = sel_getName("ptaViewEndpointCommand:data:error:");
        v40 = a4;
        v41 = [v68 status];
        v42 = [v66 NF_asHexString];
        v43 = [v68 response];
        v44 = [v43 NF_asHexString];
        *buf = 67111170;
        v75 = v37;
        v76 = 2082;
        v77 = v38;
        v78 = 2082;
        v79 = v39;
        v80 = 1024;
        v81 = 196;
        v82 = 1024;
        v83 = a2;
        v84 = 2114;
        v85 = v70;
        v86 = 1024;
        v87 = v41;
        a4 = v40;
        v88 = 2114;
        v89 = v42;
        v90 = 2114;
        v91 = v44;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i PTA View command (0x%02X) returned error: %{public}@, status 0x%04x, data: %{public}@ response: %{public}@", buf, 0x4Cu);
      }

      v8 = v68;
      if (a4)
      {
        v45 = [NSError alloc];
        v46 = [NSString stringWithUTF8String:"nfcd"];
        v72[0] = NSLocalizedDescriptionKey;
        v47 = [NSString stringWithUTF8String:"Command Error"];
        v73[0] = v47;
        v73[1] = &off_100332B38;
        v72[1] = @"Line";
        v72[2] = @"Method";
        v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName("ptaViewEndpointCommand:data:error:")];
        v73[2] = v48;
        v72[3] = NSDebugDescriptionErrorKey;
        v49 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("ptaViewEndpointCommand:data:error:"), 198];
        v73[3] = v49;
        v72[4] = NSLocalizedFailureReasonErrorKey;
        v50 = [[NSString alloc] initWithFormat:@"PTA View command (0x%02X) returned status: 0x%04x", a2, objc_msgSend(v68, "status")];
        v73[4] = v50;
        v51 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:5];
        *a4 = [v45 initWithDomain:v46 code:16 userInfo:v51];

        a4 = 0;
      }

      v7 = v66;
      v9 = v70;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFLogGetLogger();
    if (v10)
    {
      v11 = v10;
      v12 = object_getClass(a1);
      v13 = class_isMetaClass(v12);
      v14 = object_getClassName(a1);
      v63 = sel_getName("ptaViewEndpointCommand:data:error:");
      v15 = 45;
      if (v13)
      {
        v15 = 43;
      }

      v11(3, "%c[%{public}s %{public}s]:%i PTA View command (0x%02X) failed; error: %{public}@", v15, v14, v63, 187, a2, v9);
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
      v20 = sel_getName("ptaViewEndpointCommand:data:error:");
      *buf = 67110402;
      v75 = v18;
      v76 = 2082;
      v77 = v19;
      v78 = 2082;
      v79 = v20;
      v80 = 1024;
      v81 = 187;
      v82 = 1024;
      v83 = a2;
      v84 = 2114;
      v85 = v9;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i PTA View command (0x%02X) failed; error: %{public}@", buf, 0x32u);
    }

    if (a4)
    {
      v21 = [NSError alloc];
      v22 = [NSString stringWithUTF8String:"nfcd"];
      if (v9)
      {
        v67 = [v9 code];
        v94[0] = NSLocalizedDescriptionKey;
        if ([v9 code] > 75)
        {
          v23 = 76;
        }

        else
        {
          v23 = [v9 code];
        }

        v56 = [NSString stringWithUTF8String:(&off_10031A680)[v23]];
        v95[0] = v56;
        v95[1] = v9;
        v94[1] = NSUnderlyingErrorKey;
        v94[2] = @"Line";
        v95[2] = &off_100332B20;
        v94[3] = @"Method";
        v57 = [[NSString alloc] initWithFormat:@"%s", sel_getName("ptaViewEndpointCommand:data:error:")];
        v95[3] = v57;
        v94[4] = NSDebugDescriptionErrorKey;
        v58 = v9;
        v59 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("ptaViewEndpointCommand:data:error:"), 189];
        v95[4] = v59;
        v60 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:5];
        v61 = [v21 initWithDomain:v22 code:v67 userInfo:v60];
        *a4 = v61;

        v9 = v58;
      }

      else
      {
        v92[0] = NSLocalizedDescriptionKey;
        v69 = [NSString stringWithUTF8String:"Command Error"];
        v93[0] = v69;
        v93[1] = &off_100332B20;
        v92[1] = @"Line";
        v92[2] = @"Method";
        v52 = [[NSString alloc] initWithFormat:@"%s", sel_getName("ptaViewEndpointCommand:data:error:")];
        v93[2] = v52;
        v92[3] = NSDebugDescriptionErrorKey;
        v53 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("ptaViewEndpointCommand:data:error:"), 189];
        v93[3] = v53;
        v54 = [NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:4];
        v55 = [v21 initWithDomain:v22 code:16 userInfo:v54];
        *a4 = v55;

        v9 = 0;
      }

      a4 = 0;
    }
  }

  return a4;
}

void sub_1001820EC(id a1)
{
  v1 = objc_alloc_init(NFCameraStateMonitor);
  v2 = qword_10035DA40;
  qword_10035DA40 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100182128(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v3 = *(a1 + 16);
    v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v20;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v19 + 1) + 8 * i);
          v9 = [*(a1 + 16) objectForKey:v8];

          if (!v9)
          {
            [v2 addObject:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v5);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = v2;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(a1 + 16) removeObjectForKey:{*(*(&v15 + 1) + 8 * j), v15}];
        }

        v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v12);
    }
  }
}

void sub_1001822F0(os_unfair_lock_s *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (objc_opt_respondsToSelector())
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100182538;
      v17[3] = &unk_100318968;
      v17[4] = a1;
      v18 = v5;
      v19 = v6;
      os_unfair_lock_lock(a1 + 13);
      sub_100182538(v17);
      os_unfair_lock_unlock(a1 + 13);
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("registerStateChangeWithDelegate:client:");
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v8(3, "%c[%{public}s %{public}s]:%i Unexpected delegate type, dropping registration", v12, ClassName, Name, 129);
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
        v21 = v15;
        v22 = 2082;
        v23 = object_getClassName(a1);
        v24 = 2082;
        v25 = sel_getName("registerStateChangeWithDelegate:client:");
        v26 = 1024;
        v27 = 129;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected delegate type, dropping registration", buf, 0x22u);
      }
    }
  }
}

void sub_100182538(uint64_t *a1)
{
  v3 = [*(a1[4] + 16) count];
  [*(a1[4] + 16) setObject:a1[5] forKey:a1[6]];
  sub_100182128(a1[4]);
  if (!v3)
  {
    v4 = a1[4];
    if (v4)
    {
      objc_initWeak(&location, v4);
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(v4);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v4);
        Name = sel_getName("_registerForCameraNotifications");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v6(6, "%c[%{public}s %{public}s]:%i ", v10, ClassName, Name, 192);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = object_getClass(v4);
        if (class_isMetaClass(v12))
        {
          v13 = 43;
        }

        else
        {
          v13 = 45;
        }

        v14 = object_getClassName(v4);
        v15 = sel_getName("_registerForCameraNotifications");
        *buf = 67109890;
        *&buf[4] = v13;
        *&buf[8] = 2082;
        *&buf[10] = v14;
        *&buf[18] = 2082;
        *&buf[20] = v15;
        *&buf[28] = 1024;
        *&buf[30] = 192;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
      }

      sub_10027E724(v16);
      v17 = *(v1 + 272);
      if (objc_opt_class())
      {
        v18 = IONotificationPortCreate(kIOMainPortDefault);
        *(v4 + 40) = v18;
        if (v18)
        {
          IONotificationPortSetDispatchQueue(v18, *(v4 + 32));
          v19 = *(v4 + 40);
          v20 = sub_100183130(v4);
          if (v20)
          {
            v21 = v20;
            objc_initWeak(&from, v4);
            if (!*(v4 + 8))
            {
              v22 = [NFTimer alloc];
              *buf = _NSConcreteStackBlock;
              *&buf[8] = 3221225472;
              *&buf[16] = sub_10018333C;
              *&buf[24] = &unk_100316610;
              objc_copyWeak(&buf[32], &from);
              v87 = "listenForCameraNotificationFromPort:";
              v23 = [v22 initWithCallback:buf queue:*(v4 + 32)];
              v24 = *(v4 + 8);
              *(v4 + 8) = v23;

              objc_destroyWeak(&buf[32]);
            }

            v25 = objc_loadWeakRetained(&from);
            sub_10000257C(v25, v21, -536870608);

            v26 = objc_loadWeakRetained(&from);
            v27 = IOServiceAddInterestNotification(v19, v21, "IOGeneralInterest", sub_10000257C, v26, (v4 + 48));

            IOObjectRelease(v21);
            if (v27)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v28 = NFLogGetLogger();
              if (v28)
              {
                v29 = v28;
                v30 = object_getClass(v4);
                v31 = class_isMetaClass(v30);
                v32 = object_getClassName(v4);
                v78 = sel_getName("listenForCameraNotificationFromPort:");
                v33 = 45;
                if (v31)
                {
                  v33 = 43;
                }

                v29(3, "%c[%{public}s %{public}s]:%i Subscribe notification failed", v33, v32, v78, 430);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v34 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                v35 = object_getClass(v4);
                if (class_isMetaClass(v35))
                {
                  v36 = 43;
                }

                else
                {
                  v36 = 45;
                }

                v37 = object_getClassName(v4);
                v38 = sel_getName("listenForCameraNotificationFromPort:");
                *v84 = 67109890;
                *&v84[4] = v36;
                *v85 = 2082;
                *&v85[2] = v37;
                *&v85[10] = 2082;
                *&v85[12] = v38;
                *&v85[20] = 1024;
                *&v85[22] = 430;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Subscribe notification failed", v84, 0x22u);
              }
            }

            objc_destroyWeak(&from);
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v63 = NFLogGetLogger();
            if (v63)
            {
              v64 = v63;
              v65 = object_getClass(v4);
              v66 = class_isMetaClass(v65);
              v67 = object_getClassName(v4);
              v81 = sel_getName("listenForCameraNotificationFromPort:");
              v68 = 45;
              if (v66)
              {
                v68 = 43;
              }

              v64(3, "%c[%{public}s %{public}s]:%i Service not available", v68, v67, v81, 376);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v69 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              v70 = object_getClass(v4);
              if (class_isMetaClass(v70))
              {
                v71 = 43;
              }

              else
              {
                v71 = 45;
              }

              v72 = object_getClassName(v4);
              v73 = sel_getName("listenForCameraNotificationFromPort:");
              *buf = 67109890;
              *&buf[4] = v71;
              *&buf[8] = 2082;
              *&buf[10] = v72;
              *&buf[18] = 2082;
              *&buf[20] = v73;
              *&buf[28] = 1024;
              *&buf[30] = 376;
              _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Service not available", buf, 0x22u);
            }

            v74 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
            {
              *buf = 136446210;
              *&buf[4] = "[NFCameraStateMonitor listenForCameraNotificationFromPort:]";
              _os_log_fault_impl(&_mh_execute_header, v74, OS_LOG_TYPE_FAULT, "[%{public}s] Cannot locate service; check hardware configuration", buf, 0xCu);
            }
          }

          v75 = [*(v1 + 272) server];
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1000052AC;
          *&buf[24] = &unk_10031A910;
          objc_copyWeak(&buf[32], &location);
          *v84 = _NSConcreteStackBlock;
          *v85 = 3221225472;
          *&v85[8] = sub_100183198;
          *&v85[16] = &unk_10031A938;
          objc_copyWeak(&v85[24], &location);
          [v75 registerSpringBoardActionHandler:buf withIdentifierCallback:v84];

          v76 = v4;
          objc_sync_enter(v76);
          v76[16] = -1;
          objc_sync_exit(v76);

          objc_destroyWeak(&v85[24]);
          objc_destroyWeak(&buf[32]);
          goto LABEL_62;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v53 = NFLogGetLogger();
        if (v53)
        {
          v54 = v53;
          v55 = object_getClass(v4);
          v56 = class_isMetaClass(v55);
          v57 = object_getClassName(v4);
          v80 = sel_getName("_registerForCameraNotifications");
          v58 = 45;
          if (v56)
          {
            v58 = 43;
          }

          v54(3, "%c[%{public}s %{public}s]:%i Unable to get notify port", v58, v57, v80, 201);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v45 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
LABEL_48:

LABEL_62:
          objc_destroyWeak(&location);
          return;
        }

        v59 = object_getClass(v4);
        if (class_isMetaClass(v59))
        {
          v60 = 43;
        }

        else
        {
          v60 = 45;
        }

        v61 = object_getClassName(v4);
        v62 = sel_getName("_registerForCameraNotifications");
        *buf = 67109890;
        *&buf[4] = v60;
        *&buf[8] = 2082;
        *&buf[10] = v61;
        *&buf[18] = 2082;
        *&buf[20] = v62;
        *&buf[28] = 1024;
        *&buf[30] = 201;
        v50 = "%c[%{public}s %{public}s]:%i Unable to get notify port";
        v51 = v45;
        v52 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v39 = NFLogGetLogger();
        if (v39)
        {
          v40 = v39;
          v41 = object_getClass(v4);
          v42 = class_isMetaClass(v41);
          v43 = object_getClassName(v4);
          v79 = sel_getName("_registerForCameraNotifications");
          v44 = 45;
          if (v42)
          {
            v44 = 43;
          }

          v40(6, "%c[%{public}s %{public}s]:%i No accessibility support", v44, v43, v79, 195);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v45 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_48;
        }

        v46 = object_getClass(v4);
        if (class_isMetaClass(v46))
        {
          v47 = 43;
        }

        else
        {
          v47 = 45;
        }

        v48 = object_getClassName(v4);
        v49 = sel_getName("_registerForCameraNotifications");
        *buf = 67109890;
        *&buf[4] = v47;
        *&buf[8] = 2082;
        *&buf[10] = v48;
        *&buf[18] = 2082;
        *&buf[20] = v49;
        *&buf[28] = 1024;
        *&buf[30] = 195;
        v50 = "%c[%{public}s %{public}s]:%i No accessibility support";
        v51 = v45;
        v52 = OS_LOG_TYPE_DEFAULT;
      }

      _os_log_impl(&_mh_execute_header, v51, v52, v50, buf, 0x22u);
      goto LABEL_48;
    }
  }
}