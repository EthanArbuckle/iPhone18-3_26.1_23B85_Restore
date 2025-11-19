void sub_100226E30(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product");
  if (v1)
  {
    v2 = v1;
    CFProperty = IORegistryEntryCreateCFProperty(v1, @"has-applelpm", 0, 0);
    IOObjectRelease(v2);
    if (CFProperty)
    {
      v4 = CFGetTypeID(CFProperty);
      if (v4 == CFDataGetTypeID())
      {
        CFDataGetBytePtr(CFProperty);
        CFDataGetLength(CFProperty);
        __memcpy_chk();
      }

      CFRelease(CFProperty);
      byte_10035DAE8 = 0;
    }
  }
}

uint64_t sub_100226F00(void *a1)
{
  v1 = a1;
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(v1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v1);
      Name = sel_getName("print");
      v8 = +[NSLocale currentLocale];
      v9 = [v8 objectForKey:NSLocaleIdentifier];
      v10 = +[NSLocale currentLocale];
      v11 = [v10 objectForKey:NSLocaleLanguageCode];
      v12 = +[NSLocale preferredLanguages];
      v13 = 43;
      if (!isMetaClass)
      {
        v13 = 45;
      }

      v3(6, "%c[%{public}s %{public}s]:%i Locale code = %{public}@, Language code = %{public}@, Preferred : %{public}@", v13, ClassName, Name, 395, v9, v11, v12);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = object_getClass(v1);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      v41 = v16;
      v17 = object_getClassName(v1);
      v18 = sel_getName("print");
      v19 = +[NSLocale currentLocale];
      v20 = [v19 objectForKey:NSLocaleIdentifier];
      v21 = +[NSLocale currentLocale];
      v22 = [v21 objectForKey:NSLocaleLanguageCode];
      v23 = +[NSLocale preferredLanguages];
      *buf = 67110658;
      v43 = v41;
      v44 = 2082;
      v45 = v17;
      v46 = 2082;
      v47 = v18;
      v48 = 1024;
      v49 = 395;
      v50 = 2114;
      v51 = v20;
      v52 = 2114;
      v53 = v22;
      v54 = 2114;
      v55 = v23;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Locale code = %{public}@, Language code = %{public}@, Preferred : %{public}@", buf, 0x40u);
    }

    if (qword_10035DB00 != -1)
    {
      dispatch_once(&qword_10035DB00, &stru_10031C540);
    }

    if (byte_10035DAE8)
    {
      v24 = &off_1003391B0;
    }

    else
    {
      v24 = &off_1003391C8;
    }

    v25 = +[NSLocale preferredLanguages];
    v26 = [NSBundle preferredLocalizationsFromArray:v24 forPreferences:v25];

    if (v26)
    {
      v27 = [v26 firstObject];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFLogGetLogger();
      if (v28)
      {
        v29 = v28;
        v30 = object_getClass(v1);
        v31 = class_isMetaClass(v30);
        v39 = object_getClassName(v1);
        v40 = sel_getName("getIndexFromLocale");
        v32 = 45;
        if (v31)
        {
          v32 = 43;
        }

        v29(6, "%c[%{public}s %{public}s]:%i Best match: %{public}@", v32, v39, v40, 377, v27);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = object_getClass(v1);
        if (class_isMetaClass(v34))
        {
          v35 = 43;
        }

        else
        {
          v35 = 45;
        }

        v36 = object_getClassName(v1);
        v37 = sel_getName("getIndexFromLocale");
        *buf = 67110146;
        v43 = v35;
        v44 = 2082;
        v45 = v36;
        v46 = 2082;
        v47 = v37;
        v48 = 1024;
        v49 = 377;
        v50 = 2114;
        v51 = v27;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Best match: %{public}@", buf, 0x2Cu);
      }

      v1 = [v24 indexOfObject:v27];
      if (v1 == 0x7FFFFFFFFFFFFFFFLL)
      {
        LOBYTE(v1) = 1;
      }

      else
      {
        LOBYTE(v1) = v1 + 1;
      }
    }

    else
    {
      LOBYTE(v1) = 1;
    }
  }

  return v1;
}

id sub_1002273D8(void *a1)
{
  v2 = sub_100226A20(a1);
  if (v2)
  {
    v3 = v2;
    CFProperty = IORegistryEntryCreateCFProperty(v2, @"IOPMUBootLPMCtrl", 0, 0);
    IOObjectRelease(v3);
    if (CFProperty)
    {
      v5 = CFProperty;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("getLPMControl");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Could not find service: %s", v10, ClassName, Name, 477, "AppleDialogSPMIPMU");
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

      *buf = 67110146;
      v18 = v13;
      v19 = 2082;
      v20 = object_getClassName(a1);
      v21 = 2082;
      v22 = sel_getName("getLPMControl");
      v23 = 1024;
      v24 = 477;
      v25 = 2080;
      v26 = "AppleDialogSPMIPMU";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not find service: %s", buf, 0x2Cu);
    }

    v5 = 0;
  }

  return v5;
}

id sub_1002275C8(id a1, int a2)
{
  v2 = a1;
  if (a1)
  {
    valuePtr = 0;
    v4 = sub_100226A20(a1);
    if (!v4)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v20 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("pushIndexToPMU:");
        v23 = 45;
        if (isMetaClass)
        {
          v23 = 43;
        }

        v20(3, "%c[%{public}s %{public}s]:%i Could not find service: %s", v23, ClassName, Name, 503, "AppleDialogSPMIPMU");
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = object_getClass(v2);
        if (class_isMetaClass(v25))
        {
          v26 = 43;
        }

        else
        {
          v26 = 45;
        }

        *buf = 67110146;
        *&buf[4] = v26;
        *&buf[8] = 2082;
        *&buf[10] = object_getClassName(v2);
        *&buf[18] = 2082;
        *&v179 = sel_getName("pushIndexToPMU:");
        WORD4(v179) = 1024;
        *(&v179 + 10) = 503;
        HIWORD(v179) = 2080;
        v180[0] = "AppleDialogSPMIPMU";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not find service: %s", buf, 0x2Cu);
      }

      v27 = [NSError alloc];
      v28 = [NSString stringWithUTF8String:"nfcd"];
      v162 = NSLocalizedDescriptionKey;
      v29 = [NSString stringWithUTF8String:"Unknown Error"];
      v163 = v29;
      v30 = &v163;
      v31 = &v162;
      goto LABEL_92;
    }

    v155 = v4;
    CFProperty = IORegistryEntryCreateCFProperty(v4, @"IOPMUBootLPMCtrl", 0, 0);
    v6 = CFProperty;
    if (!CFProperty || (v7 = CFGetTypeID(CFProperty), v7 != CFDictionaryGetTypeID()))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v8 = NFLogGetLogger();
      if (v8)
      {
        v9 = v8;
        v10 = object_getClass(v2);
        v11 = class_isMetaClass(v10);
        v141 = object_getClassName(v2);
        v146 = sel_getName("pushIndexToPMU:");
        v12 = 45;
        if (v11)
        {
          v12 = 43;
        }

        v9(4, "%c[%{public}s %{public}s]:%i Failed to fetch property: %s.", v12, v141, v146, 509, "IOPMUBootLPMCtrl");
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = object_getClass(v2);
        if (class_isMetaClass(v14))
        {
          v15 = 43;
        }

        else
        {
          v15 = 45;
        }

        *buf = 67110146;
        *&buf[4] = v15;
        *&buf[8] = 2082;
        *&buf[10] = object_getClassName(v2);
        *&buf[18] = 2082;
        *&v179 = sel_getName("pushIndexToPMU:");
        WORD4(v179) = 1024;
        *(&v179 + 10) = 509;
        HIWORD(v179) = 2080;
        v180[0] = "IOPMUBootLPMCtrl";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to fetch property: %s.", buf, 0x2Cu);
      }
    }

    v16 = *(v2 + 4);
    if ((v16 & 0xF) != 0)
    {
      v17 = 1;
    }

    else
    {
      v17 = (v16 >> 4) & 1;
    }

    v154 = v17;
    if (v6)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 4, v6);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 4, 0, 0);
    }

    v32 = MutableCopy;
    if ((v16 & 3) != 0 || (v16 & 0x1C) == 0)
    {
      v44 = a2;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFLogGetLogger();
      if (v33)
      {
        v34 = v33;
        v35 = object_getClass(v2);
        v36 = class_isMetaClass(v35);
        v37 = object_getClassName(v2);
        v148 = sel_getName("pushIndexToPMU:");
        v38 = 45;
        if (v36)
        {
          v38 = 43;
        }

        v34(6, "%c[%{public}s %{public}s]:%i Overriding image index to 0 since no express.", v38, v37, v148, 533);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v39 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
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
        v43 = sel_getName("pushIndexToPMU:");
        *buf = 67109890;
        *&buf[4] = v41;
        *&buf[8] = 2082;
        *&buf[10] = v42;
        *&buf[18] = 2082;
        *&v179 = v43;
        WORD4(v179) = 1024;
        *(&v179 + 10) = 533;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding image index to 0 since no express.", buf, 0x22u);
      }

      v44 = 0;
    }

    valuePtr = v44;
    v45 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v32, @"imgIdx", v45);
    CFRelease(v45);
    if ((v16 & 4) != 0)
    {
      v46 = a2;
    }

    else
    {
      v46 = 0;
    }

    valuePtr = v46;
    v47 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v32, @"imgIdxFindMy", v47);
    CFRelease(v47);
    valuePtr = v154;
    v48 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v32, @"lpm0", v48);
    CFRelease(v48);
    valuePtr = (v16 & 2) >> 1;
    v49 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v32, @"lpm1", v49);
    CFRelease(v49);
    valuePtr = (v16 & 4) >> 2;
    v50 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v32, @"lpm2", v50);
    CFRelease(v50);
    valuePtr = (v16 >> 3) & 1;
    v51 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v32, @"lpm3", v51);
    CFRelease(v51);
    valuePtr = (v16 >> 4) & 1;
    v52 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v32, @"lpm4", v52);
    CFRelease(v52);
    v53 = [(__CFDictionary *)v32 isEqualToDictionary:v6];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v54 = NFLogGetLogger();
    v55 = v54;
    if (v53)
    {
      if (v54)
      {
        v56 = object_getClass(v2);
        v57 = class_isMetaClass(v56);
        v58 = object_getClassName(v2);
        v59 = sel_getName("pushIndexToPMU:");
        if (v6)
        {
          v60 = v6;
        }

        else
        {
          v60 = @"NULL";
        }

        v61 = 45;
        if (v57)
        {
          v61 = 43;
        }

        v55(6, "%c[%{public}s %{public}s]:%i No change to LPEM : %{public}@", v61, v58, v59, 574, v60);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v62 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = object_getClass(v2);
        if (class_isMetaClass(v63))
        {
          v64 = 43;
        }

        else
        {
          v64 = 45;
        }

        v65 = object_getClassName(v2);
        v66 = sel_getName("pushIndexToPMU:");
        *buf = 67110146;
        if (v6)
        {
          v67 = v6;
        }

        else
        {
          v67 = @"NULL";
        }

        *&buf[4] = v64;
        *&buf[8] = 2082;
        *&buf[10] = v65;
        *&buf[18] = 2082;
        *&v179 = v66;
        WORD4(v179) = 1024;
        *(&v179 + 10) = 574;
        HIWORD(v179) = 2114;
        v180[0] = v67;
        v68 = "%c[%{public}s %{public}s]:%i No change to LPEM : %{public}@";
        v69 = v62;
        v70 = 44;
LABEL_78:
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, v68, buf, v70);
      }
    }

    else
    {
      if (v54)
      {
        v71 = object_getClass(v2);
        v72 = class_isMetaClass(v71);
        v73 = object_getClassName(v2);
        v74 = sel_getName("pushIndexToPMU:");
        if (v6)
        {
          v75 = v6;
        }

        else
        {
          v75 = @"nil";
        }

        v153 = v75;
        v76 = 45;
        if (v72)
        {
          v76 = 43;
        }

        v55(6, "%c[%{public}s %{public}s]:%i Changing new LPM control %{public}@ -> %{public}@", v76, v73, v74, 576, v153, v32);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v62 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v77 = object_getClass(v2);
        if (class_isMetaClass(v77))
        {
          v78 = 43;
        }

        else
        {
          v78 = 45;
        }

        v79 = object_getClassName(v2);
        v80 = sel_getName("pushIndexToPMU:");
        *buf = 67110402;
        if (v6)
        {
          v81 = v6;
        }

        else
        {
          v81 = @"nil";
        }

        *&buf[4] = v78;
        *&buf[8] = 2082;
        *&buf[10] = v79;
        *&buf[18] = 2082;
        *&v179 = v80;
        WORD4(v179) = 1024;
        *(&v179 + 10) = 576;
        HIWORD(v179) = 2114;
        v180[0] = v81;
        LOWORD(v180[1]) = 2114;
        *(&v180[1] + 2) = v32;
        v68 = "%c[%{public}s %{public}s]:%i Changing new LPM control %{public}@ -> %{public}@";
        v69 = v62;
        v70 = 54;
        goto LABEL_78;
      }
    }

    v82 = v155;

    if (v6)
    {
      CFRelease(v6);
    }

    v83 = IORegistryEntrySetCFProperty(v155, @"IOPMUBootLPMCtrl", v32);
    if (v83)
    {
      v84 = v83;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v85 = NFLogGetLogger();
      if (v85)
      {
        v86 = v85;
        v87 = object_getClass(v2);
        v88 = class_isMetaClass(v87);
        v143 = object_getClassName(v2);
        v149 = sel_getName("pushIndexToPMU:");
        v89 = 45;
        if (v88)
        {
          v89 = 43;
        }

        v86(3, "%c[%{public}s %{public}s]:%i Failed to set dictionary : 0x%x", v89, v143, v149, 585, v84);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v90 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        v91 = object_getClass(v2);
        if (class_isMetaClass(v91))
        {
          v92 = 43;
        }

        else
        {
          v92 = 45;
        }

        v93 = object_getClassName(v2);
        v94 = sel_getName("pushIndexToPMU:");
        *buf = 67110146;
        *&buf[4] = v92;
        v82 = v155;
        *&buf[8] = 2082;
        *&buf[10] = v93;
        *&buf[18] = 2082;
        *&v179 = v94;
        WORD4(v179) = 1024;
        *(&v179 + 10) = 585;
        HIWORD(v179) = 1024;
        LODWORD(v180[0]) = v84;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set dictionary : 0x%x", buf, 0x28u);
      }

      CFRelease(v32);
      IOObjectRelease(v82);
      v27 = [NSError alloc];
      v28 = [NSString stringWithUTF8String:"nfcd"];
      v160 = NSLocalizedDescriptionKey;
      v29 = [NSString stringWithUTF8String:"Unknown Error"];
      v161 = v29;
      v30 = &v161;
      v31 = &v160;
LABEL_92:
      v95 = [NSDictionary dictionaryWithObjects:v30 forKeys:v31 count:1];
      v2 = [v27 initWithDomain:v28 code:6 userInfo:v95];

LABEL_93:
      goto LABEL_94;
    }

    v28 = sub_1002273D8(v2);
    if (([v28 isEqualToDictionary:v32] & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v97 = NFLogGetLogger();
      if (v97)
      {
        v98 = v97;
        v99 = object_getClass(v2);
        v100 = class_isMetaClass(v99);
        v144 = object_getClassName(v2);
        v150 = sel_getName("pushIndexToPMU:");
        v101 = 45;
        if (v100)
        {
          v101 = 43;
        }

        v98(3, "%c[%{public}s %{public}s]:%i Read back of LPM control error : %{public}@", v101, v144, v150, 593, v28);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v102 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
      {
        v103 = object_getClass(v2);
        if (class_isMetaClass(v103))
        {
          v104 = 43;
        }

        else
        {
          v104 = 45;
        }

        v105 = object_getClassName(v2);
        v106 = sel_getName("pushIndexToPMU:");
        *buf = 67110146;
        *&buf[4] = v104;
        v82 = v155;
        *&buf[8] = 2082;
        *&buf[10] = v105;
        *&buf[18] = 2082;
        *&v179 = v106;
        WORD4(v179) = 1024;
        *(&v179 + 10) = 593;
        HIWORD(v179) = 2114;
        v180[0] = v28;
        _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Read back of LPM control error : %{public}@", buf, 0x2Cu);
      }
    }

    CFRelease(v32);
    IOObjectRelease(v82);
    if (!NFProductHasB0LPKey())
    {
      v2 = 0;
      goto LABEL_93;
    }

    if ((v16 & 2) != 0)
    {
      v107 = 3;
    }

    else
    {
      if ((v16 & 5) != 5)
      {
        v108 = (v16 & 5) != 0;
        v107 = (v16 & 5) != 0;
        goto LABEL_116;
      }

      v107 = 2;
    }

    v108 = 1;
LABEL_116:
    if (v108 && (*(v2 + 10) & 1) != 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v109 = NFLogGetLogger();
      if (v109)
      {
        v110 = v109;
        v111 = object_getClass(v2);
        v112 = class_isMetaClass(v111);
        v113 = object_getClassName(v2);
        v151 = sel_getName("pushIndexToPMU:");
        v114 = 45;
        if (v112)
        {
          v114 = 43;
        }

        v110(6, "%c[%{public}s %{public}s]:%i SMC value has been overwritten", v114, v113, v151, 613);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v115 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
      {
        v116 = object_getClass(v2);
        if (class_isMetaClass(v116))
        {
          v117 = 43;
        }

        else
        {
          v117 = 45;
        }

        v118 = object_getClassName(v2);
        v119 = sel_getName("pushIndexToPMU:");
        *buf = 67109890;
        *&buf[4] = v117;
        *&buf[8] = 2082;
        *&buf[10] = v118;
        *&buf[18] = 2082;
        *&v179 = v119;
        WORD4(v179) = 1024;
        *(&v179 + 10) = 613;
        _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i SMC value has been overwritten", buf, 0x22u);
      }

      v107 = 1;
    }

    connect = 0;
    v120 = IOServiceMatching("AppleSMC");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v120);
    if (!MatchingService || (v122 = MatchingService, v123 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect), IOObjectRelease(v122), v123) || !connect || IOConnectCallScalarMethod(connect, 0, 0, 0, 0, 0))
    {
      connect = 0;
    }

    else if (connect)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v128 = NFLogGetLogger();
      if (v128)
      {
        v129 = v128;
        v130 = object_getClass(v2);
        v131 = class_isMetaClass(v130);
        v145 = object_getClassName(v2);
        v152 = sel_getName("pushB0LPToSMC:");
        v132 = 45;
        if (v131)
        {
          v132 = 43;
        }

        v129(6, "%c[%{public}s %{public}s]:%i Setting B0LP to %d", v132, v145, v152, 411, v107);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v133 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
      {
        v134 = object_getClass(v2);
        if (class_isMetaClass(v134))
        {
          v135 = 43;
        }

        else
        {
          v135 = 45;
        }

        v136 = object_getClassName(v2);
        v137 = sel_getName("pushB0LPToSMC:");
        *buf = 67110146;
        *&buf[4] = v135;
        *&buf[8] = 2082;
        *&buf[10] = v136;
        *&buf[18] = 2082;
        *&v179 = v137;
        WORD4(v179) = 1024;
        *(&v179 + 10) = 411;
        HIWORD(v179) = 1024;
        LODWORD(v180[0]) = v107;
        _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Setting B0LP to %d", buf, 0x28u);
      }

      outputStructCnt = 80;
      memset(v180, 0, 44);
      v179 = 0u;
      *&buf[4] = 0u;
      memset(outputStruct, 0, sizeof(outputStruct));
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      strcpy(v159, "B0LP");
      BYTE6(v180[0]) = 6;
      *buf = 1110461520;
      DWORD2(v179) = 2;
      WORD2(v180[1]) = v107;
      v138 = IOConnectCallStructMethod(connect, 2u, buf, 0x50uLL, outputStruct, &outputStructCnt);
      if (!v138 && !BYTE8(v175))
      {
        goto LABEL_154;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v139 = NFLogGetLogger();
      if (v139)
      {
        v139(3, "%s:%i Write failed for key '%s' (0x%X, 0x%X)\n", "_writeSMCKey", 131, v159, v138, BYTE8(v175));
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v140 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
      {
        *v164 = 136447234;
        v165 = "_writeSMCKey";
        v166 = 1024;
        v167 = 131;
        v168 = 2080;
        v169 = v159;
        v170 = 1024;
        v171 = v138;
        v172 = 1024;
        v173 = BYTE8(v175);
        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_ERROR, "%{public}s:%i Write failed for key '%s' (0x%X, 0x%X)\n", v164, 0x28u);
      }

      if (!v138)
      {
LABEL_154:
        v2 = 0;
        goto LABEL_132;
      }
    }

    v124 = [NSError alloc];
    v125 = [NSString stringWithUTF8String:"nfcd"];
    *&outputStruct[0] = NSLocalizedDescriptionKey;
    v126 = [NSString stringWithUTF8String:"Unknown Error"];
    *buf = v126;
    v127 = [NSDictionary dictionaryWithObjects:buf forKeys:outputStruct count:1];
    v2 = [v124 initWithDomain:v125 code:6 userInfo:v127];

LABEL_132:
    if (connect && !IOConnectCallScalarMethod(connect, 1u, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
    }

    goto LABEL_93;
  }

LABEL_94:

  return v2;
}

void sub_1002287C0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    *(a1 + 32) = a2;
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setInteger:*(a1 + 32) forKey:@"HeadlessFeatures"];
    v3 = +[NSDate now];
    [v3 timeIntervalSince1970];
    [v4 setDouble:@"HeadlessFeaturesSetTime" forKey:?];
  }
}

void sub_100228858(_BYTE *a1)
{
  if (a1 && a1[11] == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("cancelRTCTimer");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i Cancelling RTC timer", v7, ClassName, Name, 829);
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
      v47 = v10;
      v48 = 2082;
      v49 = object_getClassName(a1);
      v50 = 2082;
      v51 = sel_getName("cancelRTCTimer");
      v52 = 1024;
      v53 = 829;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Cancelling RTC timer", buf, 0x22u);
    }

    v40 = a1;

    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v11 = IOPMCopyScheduledPowerEvents();
    v12 = [(__CFArray *)v11 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v42;
      v39 = v11;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v41 + 1) + 8 * i);
          v17 = [[NSString alloc] initWithUTF8String:"time"];
          v18 = [v16 objectForKey:v17];

          v19 = [[NSString alloc] initWithUTF8String:"scheduledby"];
          v20 = [v16 objectForKey:v19];

          v21 = [[NSString alloc] initWithUTF8String:"eventtype"];
          v22 = [v16 objectForKey:v21];

          if ([v20 isEqualToString:@"com.apple.nfcd.headless"])
          {
            v23 = [[NSString alloc] initWithUTF8String:"poweron"];
            v24 = [v22 isEqualToString:v23];

            if (v24)
            {
              if (IOPMCancelScheduledPowerEvent(v18, @"com.apple.nfcd.headless", @"poweron"))
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v25 = NFLogGetLogger();
                if (v25)
                {
                  v26 = v25;
                  v27 = object_getClass(v40);
                  v28 = class_isMetaClass(v27);
                  v29 = object_getClassName(v40);
                  v38 = sel_getName("cancelRTCTimer");
                  v30 = 45;
                  if (v28)
                  {
                    v30 = 43;
                  }

                  v36 = v29;
                  v11 = v39;
                  v26(3, "%c[%{public}s %{public}s]:%i Failed to set RTC timer", v30, v36, v38, 840);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v31 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  v32 = object_getClass(v40);
                  if (class_isMetaClass(v32))
                  {
                    v33 = 43;
                  }

                  else
                  {
                    v33 = 45;
                  }

                  v34 = object_getClassName(v40);
                  v35 = sel_getName("cancelRTCTimer");
                  *buf = 67109890;
                  v47 = v33;
                  v11 = v39;
                  v48 = 2082;
                  v49 = v34;
                  v50 = 2082;
                  v51 = v35;
                  v52 = 1024;
                  v53 = 840;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set RTC timer", buf, 0x22u);
                }
              }
            }
          }
        }

        v13 = [(__CFArray *)v11 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v13);
    }

    [v40[2] stopTimer];
  }
}

void sub_100228CE0(id val)
{
  if (val && *(val + 11) == 1)
  {
    if (!*(val + 2))
    {
      objc_initWeak(&location, val);
      v2 = [NFTimer alloc];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100229980;
      v6[3] = &unk_100315F08;
      objc_copyWeak(&v7, &location);
      v3 = dispatch_get_global_queue(0, 0);
      v4 = [v2 initSleepTimerWithCallback:v6 queue:v3];
      v5 = *(val + 2);
      *(val + 2) = v4;

      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }

    sub_100229698(val);
  }
}

BOOL sub_100228DE4(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  objc_sync_enter(v3);
  v4 = v3[4];
  v5 = v4 != a2;
  if (v4 != a2)
  {
    sub_1002287C0(v3, a2);
    v6 = sub_1002269CC(v3);
  }

  objc_sync_exit(v3);

  return v5;
}

BOOL sub_100228E60(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  objc_sync_enter(v3);
  v4 = *(v3 + 4);
  v5 = v4 != (v4 | a2);
  if (v4 != (v4 | a2))
  {
    sub_1002287C0(v3, v4 | a2);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("addHeadlessModeFeature:");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Adding LPEM feature %d changed the feature set", v10, ClassName, Name, 675, a2);
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

      *buf = 67110146;
      v31 = v13;
      v32 = 2082;
      v33 = object_getClassName(v3);
      v34 = 2082;
      v35 = sel_getName("addHeadlessModeFeature:");
      v36 = 1024;
      v37 = 675;
      v38 = 1024;
      v39 = a2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Adding LPEM feature %d changed the feature set", buf, 0x28u);
    }

    v14 = sub_1002269CC(v3);
  }

  if (*(v3 + 9) == 1)
  {
    *(v3 + 9) = 0;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v16 = v15;
      v17 = object_getClass(v3);
      v18 = class_isMetaClass(v17);
      v19 = object_getClassName(v3);
      v29 = sel_getName("addHeadlessModeFeature:");
      v20 = 45;
      if (v18)
      {
        v20 = 43;
      }

      v16(6, "%c[%{public}s %{public}s]:%i First time setting LPEM, reported as change", v20, v19, v29, 684);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = object_getClass(v3);
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      v24 = object_getClassName(v3);
      v25 = sel_getName("addHeadlessModeFeature:");
      *buf = 67109890;
      v31 = v23;
      v32 = 2082;
      v33 = v24;
      v34 = 2082;
      v35 = v25;
      v36 = 1024;
      v37 = 684;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i First time setting LPEM, reported as change", buf, 0x22u);
    }

    v5 = 1;
  }

  objc_sync_exit(v3);

  return v5;
}

BOOL sub_100229170(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  objc_sync_enter(v3);
  v4 = *(v3 + 4);
  v5 = v4 & ~a2;
  v6 = v4 != v5;
  if (v4 != v5)
  {
    sub_1002287C0(v3, v5);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("removeHeadlessModeFeature:");
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v8(6, "%c[%{public}s %{public}s]:%i Removing LPEM feature %d changed the feature set", v11, ClassName, Name, 701, a2);
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

      *buf = 67110146;
      v32 = v14;
      v33 = 2082;
      v34 = object_getClassName(v3);
      v35 = 2082;
      v36 = sel_getName("removeHeadlessModeFeature:");
      v37 = 1024;
      v38 = 701;
      v39 = 1024;
      v40 = a2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Removing LPEM feature %d changed the feature set", buf, 0x28u);
    }

    v15 = sub_1002269CC(v3);
  }

  if (*(v3 + 9) == 1)
  {
    *(v3 + 9) = 0;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v17 = v16;
      v18 = object_getClass(v3);
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(v3);
      v30 = sel_getName("removeHeadlessModeFeature:");
      v21 = 45;
      if (v19)
      {
        v21 = 43;
      }

      v17(6, "%c[%{public}s %{public}s]:%i First time setting LPEM, reported as change", v21, v20, v30, 710);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = object_getClass(v3);
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      v25 = object_getClassName(v3);
      v26 = sel_getName("removeHeadlessModeFeature:");
      *buf = 67109890;
      v32 = v24;
      v33 = 2082;
      v34 = v25;
      v35 = 2082;
      v36 = v26;
      v37 = 1024;
      v38 = 710;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i First time setting LPEM, reported as change", buf, 0x22u);
    }

    v6 = 1;
  }

  objc_sync_exit(v3);

  return v6;
}

void sub_100229480(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      v2 = objc_opt_new();
      objc_initWeak(&location, a1);
      [v2 setUnderlyingQueue:*(a1 + 24)];
      v3 = +[NSNotificationCenter defaultCenter];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1002295A0;
      v5[3] = &unk_10031C568;
      objc_copyWeak(&v6, &location);
      v4 = [v3 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:v2 usingBlock:v5];

      *(a1 + 8) = 1;
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }
}

void sub_1002295A0(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "headless locale changed", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v2, &v6);
  os_activity_scope_leave(&v6);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && WeakRetained[4])
  {
    v5 = sub_1002269CC(WeakRetained);
  }
}

void sub_100229630(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8) == 1)
    {
      v2 = +[NSNotificationCenter defaultCenter];
      [v2 removeObserver:a1 name:NSCurrentLocaleDidChangeNotification object:0];

      *(a1 + 8) = 0;
    }
  }
}

void sub_100229698(id *a1)
{
  v2 = [NSDate dateWithTimeIntervalSinceNow:3600.0];
  [a1[2] startTimer:1200.0];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("headlessTimerLogic");
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v4(6, "%c[%{public}s %{public}s]:%i Setting RTC timer", v8, ClassName, Name, 777);
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

    *buf = 67109890;
    v26 = v11;
    v27 = 2082;
    v28 = object_getClassName(a1);
    v29 = 2082;
    v30 = sel_getName("headlessTimerLogic");
    v31 = 1024;
    v32 = 777;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Setting RTC timer", buf, 0x22u);
  }

  if (IOPMSchedulePowerEvent(v2, @"com.apple.nfcd.headless", @"poweron"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v13 = v12;
      v14 = object_getClass(a1);
      v15 = class_isMetaClass(v14);
      v16 = object_getClassName(a1);
      v24 = sel_getName("headlessTimerLogic");
      v17 = 45;
      if (v15)
      {
        v17 = 43;
      }

      v13(3, "%c[%{public}s %{public}s]:%i Failed to set RTC timer", v17, v16, v24, 781);
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
      v22 = sel_getName("headlessTimerLogic");
      *buf = 67109890;
      v26 = v20;
      v27 = 2082;
      v28 = v21;
      v29 = 2082;
      v30 = v22;
      v31 = 1024;
      v32 = 781;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set RTC timer", buf, 0x22u);
    }
  }
}

void sub_100229980(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.hw.rtc.kickTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v2, &v5);
  os_activity_scope_leave(&v5);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    sub_100228858(WeakRetained);
    sub_100229698(v4);
  }
}

void *sub_100229A08(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = [NSNumber numberWithBool:*(v1 + 8)];
    [v2 setObject:v3 forKeyedSubscript:@"registered"];

    v4 = v1[2];
    if (v4)
    {
      v5 = [v4 description];
      [v2 setObject:v5 forKeyedSubscript:@"timer"];
    }

    else
    {
      [v2 setObject:@"nil" forKeyedSubscript:@"timer"];
    }

    v6 = [NSNumber numberWithUnsignedInteger:v1[4]];
    [v2 setObject:v6 forKeyedSubscript:@"features"];

    v7 = sub_1002273D8(v1);
    [v2 setObject:v7 forKeyedSubscript:@"PMU"];

    v8 = [NSNumber numberWithBool:*(v1 + 11)];
    [v2 setObject:v8 forKeyedSubscript:@"Requires SCC timer"];

    v1 = [[NSDictionary alloc] initWithDictionary:v2];
  }

  return v1;
}

BOOL sub_100229BB0(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  if (a2)
  {
    *a2 = 0;
  }

  v4 = SSEIsFeatureSupported();
  v5 = v4;
  if (v4 > -11)
  {
    if (!v4)
    {
      return v5 == 0;
    }

    if (v4 != -10)
    {
      goto LABEL_28;
    }
  }

  else if (v4 != -19)
  {
    if (v4 == -17)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName("supportsEntanglement:");
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v7(3, "%c[%{public}s %{public}s]:%i Feature support check not supported", v11, ClassName, Name, 38);
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
        v51 = v14;
        v52 = 2082;
        v53 = object_getClassName(v3);
        v54 = 2082;
        v55 = sel_getName("supportsEntanglement:");
        v56 = 1024;
        v57 = 38;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Feature support check not supported", buf, 0x22u);
      }

      goto LABEL_40;
    }

LABEL_28:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v32 = v31;
      v33 = object_getClass(v3);
      v34 = class_isMetaClass(v33);
      v35 = object_getClassName(v3);
      v45 = sel_getName("supportsEntanglement:");
      v36 = 45;
      if (v34)
      {
        v36 = 43;
      }

      v32(3, "%c[%{public}s %{public}s]:%i Feature support check failed : %d", v36, v35, v45, 35, v5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = object_getClass(v3);
      if (class_isMetaClass(v38))
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }

      *buf = 67110146;
      v51 = v39;
      v52 = 2082;
      v53 = object_getClassName(v3);
      v54 = 2082;
      v55 = sel_getName("supportsEntanglement:");
      v56 = 1024;
      v57 = 35;
      v58 = 1024;
      v59 = v5;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Feature support check failed : %d", buf, 0x28u);
    }

    if (a2)
    {
      v40 = [NSError alloc];
      v12 = [NSString stringWithUTF8String:"nfcd"];
      v46[0] = NSLocalizedDescriptionKey;
      v24 = [NSString stringWithUTF8String:"Security Not Initialized"];
      v47[0] = v24;
      v47[1] = &off_1003362D0;
      v46[1] = @"Line";
      v46[2] = @"Method";
      v25 = [[NSString alloc] initWithFormat:@"%s", sel_getName("supportsEntanglement:")];
      v47[2] = v25;
      v46[3] = NSDebugDescriptionErrorKey;
      v26 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("supportsEntanglement:"), 36];
      v47[3] = v26;
      v27 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:4];
      v28 = v40;
      v29 = v12;
      v30 = 27;
      goto LABEL_39;
    }

    return v5 == 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v16 = v15;
    v17 = object_getClass(v3);
    v18 = class_isMetaClass(v17);
    v42 = object_getClassName(v3);
    v44 = sel_getName("supportsEntanglement:");
    v19 = 45;
    if (v18)
    {
      v19 = 43;
    }

    v16(3, "%c[%{public}s %{public}s]:%i Feature support check not allowed : %d", v19, v42, v44, 32, v5);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = object_getClass(v3);
    if (class_isMetaClass(v21))
    {
      v22 = 43;
    }

    else
    {
      v22 = 45;
    }

    *buf = 67110146;
    v51 = v22;
    v52 = 2082;
    v53 = object_getClassName(v3);
    v54 = 2082;
    v55 = sel_getName("supportsEntanglement:");
    v56 = 1024;
    v57 = 32;
    v58 = 1024;
    v59 = v5;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Feature support check not allowed : %d", buf, 0x28u);
  }

  if (a2)
  {
    v23 = [NSError alloc];
    v12 = [NSString stringWithUTF8String:"nfcd"];
    v48[0] = NSLocalizedDescriptionKey;
    v24 = [NSString stringWithUTF8String:"Keychain locked"];
    v49[0] = v24;
    v49[1] = &off_1003362B8;
    v48[1] = @"Line";
    v48[2] = @"Method";
    v25 = [[NSString alloc] initWithFormat:@"%s", sel_getName("supportsEntanglement:")];
    v49[2] = v25;
    v48[3] = NSDebugDescriptionErrorKey;
    v26 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("supportsEntanglement:"), 33];
    v49[3] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:4];
    v28 = v23;
    v29 = v12;
    v30 = 41;
LABEL_39:
    *a2 = [v28 initWithDomain:v29 code:v30 userInfo:v27];

LABEL_40:
  }

  return v5 == 0;
}

uint64_t sub_10022A230(uint64_t a1, int a2)
{
  v3 = objc_opt_self();
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(v3);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v3);
    Name = sel_getName("useEntangledFlag:");
    if (a2)
    {
      v10 = "entangled";
    }

    else
    {
      v10 = "non-entangled";
    }

    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Telling SSE to use %s auth", v11, ClassName, Name, 52, v10);
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
    v16 = sel_getName("useEntangledFlag:");
    *buf = 67110146;
    if (a2)
    {
      v17 = "entangled";
    }

    else
    {
      v17 = "non-entangled";
    }

    v34 = v14;
    v35 = 2082;
    v36 = v15;
    v37 = 2082;
    v38 = v16;
    v39 = 1024;
    v40 = 52;
    v41 = 2080;
    v42 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Telling SSE to use %s auth", buf, 0x2Cu);
  }

  result = SSEUseEntangledAuthorizationRandom();
  if (result)
  {
    v19 = result;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v21 = v20;
      v22 = object_getClass(v3);
      v23 = class_isMetaClass(v22);
      v31 = object_getClassName(v3);
      v32 = sel_getName("useEntangledFlag:");
      v24 = 45;
      if (v23)
      {
        v24 = 43;
      }

      v21(3, "%c[%{public}s %{public}s]:%i Failed set flag: %d", v24, v31, v32, 55, v19);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = object_getClass(v3);
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      v28 = object_getClassName(v3);
      v29 = sel_getName("useEntangledFlag:");
      *buf = 67110146;
      v34 = v27;
      v35 = 2082;
      v36 = v28;
      v37 = 2082;
      v38 = v29;
      v39 = 1024;
      v40 = 55;
      v41 = 1024;
      LODWORD(v42) = v19;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed set flag: %d", buf, 0x28u);
    }

    if (v19 == -19 || v19 == -10)
    {
      return 41;
    }

    else
    {
      return 6;
    }
  }

  return result;
}

uint64_t sub_10022A53C(uint64_t a1, int a2)
{
  v3 = objc_opt_self();
  if (a2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("sseEffaceAuthorization:");
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i Telling SSE to use entangled auth", v9, ClassName, Name, 73);
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

      *buf = 67109890;
      v43 = v12;
      v44 = 2082;
      v45 = object_getClassName(v3);
      v46 = 2082;
      v47 = sel_getName("sseEffaceAuthorization:");
      v48 = 1024;
      v49 = 73;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Telling SSE to use entangled auth", buf, 0x22u);
    }

    v13 = SSEUseEntangledAuthorizationRandom();
    if (v13)
    {
      v14 = v13;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v16 = v15;
        v17 = object_getClass(v3);
        v18 = class_isMetaClass(v17);
        v37 = object_getClassName(v3);
        v40 = sel_getName("sseEffaceAuthorization:");
        v19 = 45;
        if (v18)
        {
          v19 = 43;
        }

        v16(3, "%c[%{public}s %{public}s]:%i Failed to set entangled: %d", v19, v37, v40, 76, v14);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v20 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = object_getClass(v3);
        if (class_isMetaClass(v21))
        {
          v22 = 43;
        }

        else
        {
          v22 = 45;
        }

        v23 = object_getClassName(v3);
        v24 = sel_getName("sseEffaceAuthorization:");
        *buf = 67110146;
        v43 = v22;
        v44 = 2082;
        v45 = v23;
        v46 = 2082;
        v47 = v24;
        v48 = 1024;
        v49 = 76;
        v50 = 1024;
        v51 = v14;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set entangled: %d", buf, 0x28u);
      }
    }
  }

  result = SSEEffaceAuthorizationRandom();
  if (result)
  {
    v26 = result;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v28 = v27;
      v29 = object_getClass(v3);
      v30 = class_isMetaClass(v29);
      v38 = object_getClassName(v3);
      v41 = sel_getName("sseEffaceAuthorization:");
      v31 = 45;
      if (v30)
      {
        v31 = 43;
      }

      v28(3, "%c[%{public}s %{public}s]:%i Failed to efface: %d", v31, v38, v41, 83, v26);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v32 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = object_getClass(v3);
      if (class_isMetaClass(v33))
      {
        v34 = 43;
      }

      else
      {
        v34 = 45;
      }

      v35 = object_getClassName(v3);
      v36 = sel_getName("sseEffaceAuthorization:");
      *buf = 67110146;
      v43 = v34;
      v44 = 2082;
      v45 = v35;
      v46 = 2082;
      v47 = v36;
      v48 = 1024;
      v49 = 83;
      v50 = 1024;
      v51 = v26;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to efface: %d", buf, 0x28u);
    }

    if (v26 == -10)
    {
      return 41;
    }

    else
    {
      return 6;
    }
  }

  return result;
}

uint64_t sub_10022A938(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, int a6)
{
  v10 = a2;
  v11 = objc_opt_self();
  v12 = sub_10022A9B0(v11, v10, a3, a4, a5, a6, 0);

  return v12;
}

uint64_t sub_10022A9B0(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, int a6, uint64_t a7)
{
  v11 = a2;
  v12 = objc_opt_self();
  v49 = 0;
  v50 = 0;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v14 = Logger;
  if (a6)
  {
    if (Logger)
    {
      Class = object_getClass(v12);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v12);
      Name = sel_getName("sseGetAuthRandom:uid:authRandom:mac:entangled:previous:");
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v14(6, "%c[%{public}s %{public}s]:%i Get entangled auth %d", v17, ClassName, Name, 116, a7);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = object_getClass(v12);
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      *buf = 67110146;
      v52 = v20;
      v53 = 2082;
      v54 = object_getClassName(v12);
      v55 = 2082;
      v56 = sel_getName("sseGetAuthRandom:uid:authRandom:mac:entangled:previous:");
      v57 = 1024;
      v58 = 116;
      v59 = 1024;
      v60 = a7;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Get entangled auth %d", buf, 0x28u);
    }

    v21 = SSEGetEntangledAuthorizationRandom();
  }

  else
  {
    if (Logger)
    {
      v22 = object_getClass(v12);
      v23 = class_isMetaClass(v22);
      v24 = object_getClassName(v12);
      v46 = sel_getName("sseGetAuthRandom:uid:authRandom:mac:entangled:previous:");
      v25 = 45;
      if (v23)
      {
        v25 = 43;
      }

      v14(6, "%c[%{public}s %{public}s]:%i Get non-entangled auth %d", v25, v24, v46, 119, a7);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = object_getClass(v12);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      *buf = 67110146;
      v52 = v28;
      v53 = 2082;
      v54 = object_getClassName(v12);
      v55 = 2082;
      v56 = sel_getName("sseGetAuthRandom:uid:authRandom:mac:entangled:previous:");
      v57 = 1024;
      v58 = 119;
      v59 = 1024;
      v60 = a7;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Get non-entangled auth %d", buf, 0x28u);
    }

    v21 = SSEGetAuthorizationRandom(a3, v11, &v50, &v49);
  }

  v29 = v21;

  if (v29)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v30 = NFLogGetLogger();
    if (v30)
    {
      v31 = v30;
      v32 = object_getClass(v12);
      v33 = class_isMetaClass(v32);
      v34 = object_getClassName(v12);
      v47 = sel_getName("sseGetAuthRandom:uid:authRandom:mac:entangled:previous:");
      v35 = 45;
      if (v33)
      {
        v35 = 43;
      }

      v31(3, "%c[%{public}s %{public}s]:%i Failed to generate: error %d for uid %d", v35, v34, v47, 129, v29, a3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v36 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = object_getClass(v12);
      if (class_isMetaClass(v37))
      {
        v38 = 43;
      }

      else
      {
        v38 = 45;
      }

      v39 = object_getClassName(v12);
      v40 = sel_getName("sseGetAuthRandom:uid:authRandom:mac:entangled:previous:");
      *buf = 67110402;
      v52 = v38;
      v53 = 2082;
      v54 = v39;
      v55 = 2082;
      v56 = v40;
      v57 = 1024;
      v58 = 129;
      v59 = 1024;
      v60 = v29;
      v61 = 1024;
      v62 = a3;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to generate: error %d for uid %d", buf, 0x2Eu);
    }

    if (v29 == -10)
    {
      return 41;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = v50;
    }

    if (a5)
    {
      v42 = v49;
      v43 = v49;
      result = 0;
      *a5 = v42;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10022AE54(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, unsigned __int16 *a6, void *a7)
{
  v12 = a5;
  v13 = a4;
  v14 = a2;
  v15 = objc_opt_self();
  v34 = 0;
  v16 = [v12 subdataWithRange:{0, 8}];
  v17 = [v12 subdataWithRange:{8, 8}];

  v18 = SSEGetActivationTimeout(v14, v13, v16, v17, a6, &v34);
  if (v18)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v20 = Logger;
      Class = object_getClass(v15);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v15);
      Name = sel_getName("sseGetAuthorizationTimeout:uid:challenge:response:timeout:mac:");
      v24 = 45;
      if (isMetaClass)
      {
        v24 = 43;
      }

      v20(3, "%c[%{public}s %{public}s]:%i Failed to get activation timeout: %d for uid %d", v24, ClassName, Name, 165, v18, a3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = object_getClass(v15);
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      v28 = object_getClassName(v15);
      v29 = sel_getName("sseGetAuthorizationTimeout:uid:challenge:response:timeout:mac:");
      *buf = 67110402;
      v36 = v27;
      v37 = 2082;
      v38 = v28;
      v39 = 2082;
      v40 = v29;
      v41 = 1024;
      v42 = 165;
      v43 = 1024;
      v44 = v18;
      v45 = 1024;
      v46 = a3;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get activation timeout: %d for uid %d", buf, 0x2Eu);
    }

    switch(v18)
    {
      case 0xFFFFFFF6:
        return 41;
      case 0xFFFFFFFC:
        return 10;
      case 0xFFFFFFFD:
        return 8;
      default:
        return 6;
    }
  }

  else if (a7)
  {
    v31 = v34;
    v32 = v34;
    result = 0;
    *a7 = v31;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_10022B0E8(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = SSEGetHostChallenge();
  if (v4)
  {
    v5 = v4;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("sseGetHostChallenge:");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Failed to get host challenge: %d", v10, ClassName, Name, 188, v5);
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

      *buf = 67110146;
      v19 = v13;
      v20 = 2082;
      v21 = object_getClassName(v3);
      v22 = 2082;
      v23 = sel_getName("sseGetHostChallenge:");
      v24 = 1024;
      v25 = 188;
      v26 = 1024;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get host challenge: %d", buf, 0x28u);
    }

    if (v5 == -10)
    {
      return 41;
    }

    else
    {
      return 6;
    }
  }

  else if (a2)
  {
    v15 = 0;
    result = 0;
    *a2 = 0;
  }

  else
  {
    return 0;
  }

  return result;
}

id sub_10022B2D0(uint64_t a1, int a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13)
{
  v18 = a7;
  v19 = a6;
  v20 = a4;
  v21 = a3;
  v22 = objc_opt_self();
  [v18 subdataWithRange:{0, 8}];
  [v18 subdataWithRange:{8, 8}];

  if (a2 == 5)
  {
    v23 = SSEAuthorizeWithPIN();

    v24 = a9;
    if (v23)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v26 = Logger;
        Class = object_getClass(v22);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v22);
        Name = sel_getName("sseAuthorize:handle:SEID:uid:challenge:response:validation:encryptedPIN:confirmationHash:confirmationSignature:confirmationVersion:certs:");
        v30 = 45;
        if (isMetaClass)
        {
          v30 = 43;
        }

        v26(3, "%c[%{public}s %{public}s]:%i Failed to authorize with PIN: %d for uid %d", v30, ClassName, Name, 291, v23, a5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v32 = object_getClass(v22);
      if (class_isMetaClass(v32))
      {
        v33 = 43;
      }

      else
      {
        v33 = 45;
      }

      *buf = 67110402;
      v63 = v33;
      v64 = 2082;
      v65 = object_getClassName(v22);
      v66 = 2082;
      v67 = sel_getName("sseAuthorize:handle:SEID:uid:challenge:response:validation:encryptedPIN:confirmationHash:confirmationSignature:confirmationVersion:certs:");
      v68 = 1024;
      v69 = 291;
      v70 = 1024;
      v71 = v23;
      v72 = 1024;
      v73 = a5;
      v34 = "%c[%{public}s %{public}s]:%i Failed to authorize with PIN: %d for uid %d";
      v35 = v31;
      v36 = 46;
LABEL_22:
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
LABEL_23:

      goto LABEL_35;
    }
  }

  else
  {
    v37 = SSEAuthorize();

    v24 = a9;
    *a9 = 0;
    if (v37)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v38 = NFLogGetLogger();
      if (v38)
      {
        v39 = v38;
        v40 = object_getClass(v22);
        v41 = class_isMetaClass(v40);
        v58 = object_getClassName(v22);
        v60 = sel_getName("sseAuthorize:handle:SEID:uid:challenge:response:validation:encryptedPIN:confirmationHash:confirmationSignature:confirmationVersion:certs:");
        v42 = 45;
        if (v41)
        {
          v42 = 43;
        }

        v39(3, "%c[%{public}s %{public}s]:%i Failed to authorize: %d", v42, v58, v60, 328, v37);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v43 = object_getClass(v22);
      if (class_isMetaClass(v43))
      {
        v44 = 43;
      }

      else
      {
        v44 = 45;
      }

      *buf = 67110146;
      v63 = v44;
      v64 = 2082;
      v65 = object_getClassName(v22);
      v66 = 2082;
      v67 = sel_getName("sseAuthorize:handle:SEID:uid:challenge:response:validation:encryptedPIN:confirmationHash:confirmationSignature:confirmationVersion:certs:");
      v68 = 1024;
      v69 = 328;
      v70 = 1024;
      v71 = v37;
      v34 = "%c[%{public}s %{public}s]:%i Failed to authorize: %d";
      v35 = v31;
      v36 = 40;
      goto LABEL_22;
    }
  }

  if (a12)
  {
    *a12 = 0;
  }

  if (a8)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v46 = NFLogGetLogger();
    if (v46)
    {
      v47 = v46;
      v48 = object_getClass(v22);
      v49 = class_isMetaClass(v48);
      v50 = object_getClassName(v22);
      v51 = sel_getName("sseAuthorize:handle:SEID:uid:challenge:response:validation:encryptedPIN:confirmationHash:confirmationSignature:confirmationVersion:certs:");
      v52 = 45;
      if (v49)
      {
        v52 = 43;
      }

      v47(3, "%c[%{public}s %{public}s]:%i Unknown validation: %d", v52, v50, v51, 350, 0);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v53 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = object_getClass(v22);
      if (class_isMetaClass(v54))
      {
        v55 = 43;
      }

      else
      {
        v55 = 45;
      }

      v56 = object_getClassName(v22);
      v57 = sel_getName("sseAuthorize:handle:SEID:uid:challenge:response:validation:encryptedPIN:confirmationHash:confirmationSignature:confirmationVersion:certs:");
      *buf = 67110146;
      v63 = v55;
      v64 = 2082;
      v65 = v56;
      v66 = 2082;
      v67 = v57;
      v68 = 1024;
      v69 = 350;
      v70 = 1024;
      v71 = 0;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown validation: %d", buf, 0x28u);
    }

    if (!v24)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v24)
  {
LABEL_28:
    *v24 = 0;
  }

LABEL_29:
  if (a10)
  {
    *a10 = 0;
  }

  if (a11)
  {
    *a11 = 0;
  }

  if (a13)
  {
    *a13 = 0;
  }

LABEL_35:

  return 0;
}

uint64_t sub_10022B8B8()
{
  objc_opt_self();
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v5 = 0;
  sub_10027E3D4(COERCE_DOUBLE(3221225472));
  v0 = *(v3 + 24);
  _Block_object_dispose(&v2, 8);
  return v0;
}

uint64_t sub_10022B98C(uint64_t result, int a2, char a3)
{
  **(result + 40) = a2;
  if (!a2)
  {
    *(*(*(result + 32) + 8) + 24) = a3;
  }

  return result;
}

uint64_t sub_10022B9AC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  [v2 bytes];
  [v2 length];

  if (!sub_10027E37C(v4))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v17 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("acmGetOlsoType:");
      v21 = 45;
      if (isMetaClass)
      {
        v21 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Unable to reconstruct cred context", v21, ClassName, Name, 410);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = object_getClass(v3);
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      *buf = 67109890;
      v63 = v24;
      v64 = 2082;
      v65 = object_getClassName(v3);
      v66 = 2082;
      v67 = sel_getName("acmGetOlsoType:");
      v68 = 1024;
      v69 = 410;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unable to reconstruct cred context", buf, 0x22u);
    }

    return 0;
  }

  if (sub_10022B8B8())
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v5 = NFLogGetLogger();
    if (v5)
    {
      v6 = v5;
      v7 = object_getClass(v3);
      v8 = class_isMetaClass(v7);
      v9 = object_getClassName(v3);
      v57 = sel_getName("acmGetOlsoType:");
      v10 = 45;
      if (v8)
      {
        v10 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i Policy is prague PIN", v10, v9, v57, 423);
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
      v63 = v13;
      v64 = 2082;
      v65 = object_getClassName(v3);
      v66 = 2082;
      v67 = sel_getName("acmGetOlsoType:");
      v68 = 1024;
      v69 = 423;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Policy is prague PIN", buf, 0x22u);
    }

    sub_10027E3A8(v14);
    return 4;
  }

  if (sub_10022B8B8())
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFLogGetLogger();
    if (v25)
    {
      v26 = v25;
      v27 = object_getClass(v3);
      v28 = class_isMetaClass(v27);
      v29 = object_getClassName(v3);
      v59 = sel_getName("acmGetOlsoType:");
      v30 = 45;
      if (v28)
      {
        v30 = 43;
      }

      v26(6, "%c[%{public}s %{public}s]:%i Policy is prague", v30, v29, v59, 430);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = object_getClass(v3);
      if (class_isMetaClass(v32))
      {
        v33 = 43;
      }

      else
      {
        v33 = 45;
      }

      *buf = 67109890;
      v63 = v33;
      v64 = 2082;
      v65 = object_getClassName(v3);
      v66 = 2082;
      v67 = sel_getName("acmGetOlsoType:");
      v68 = 1024;
      v69 = 430;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Policy is prague", buf, 0x22u);
    }

    sub_10027E3A8(v34);
    return 3;
  }

  if (sub_10022B8B8())
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v36 = NFLogGetLogger();
    if (v36)
    {
      v37 = v36;
      v38 = object_getClass(v3);
      v39 = class_isMetaClass(v38);
      v40 = object_getClassName(v3);
      v60 = sel_getName("acmGetOlsoType:");
      v41 = 45;
      if (v39)
      {
        v41 = 43;
      }

      v37(6, "%c[%{public}s %{public}s]:%i Policy is oslo PIN", v41, v40, v60, 443);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v42 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = object_getClass(v3);
      if (class_isMetaClass(v43))
      {
        v44 = 43;
      }

      else
      {
        v44 = 45;
      }

      *buf = 67109890;
      v63 = v44;
      v64 = 2082;
      v65 = object_getClassName(v3);
      v66 = 2082;
      v67 = sel_getName("acmGetOlsoType:");
      v68 = 1024;
      v69 = 443;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Policy is oslo PIN", buf, 0x22u);
    }

    sub_10027E3A8(v45);
    return 2;
  }

  if (!sub_10022B8B8())
  {
    sub_10027E3A8(v46);
    return 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v47 = NFLogGetLogger();
  if (v47)
  {
    v48 = v47;
    v49 = object_getClass(v3);
    v50 = class_isMetaClass(v49);
    v51 = object_getClassName(v3);
    v61 = sel_getName("acmGetOlsoType:");
    v52 = 45;
    if (v50)
    {
      v52 = 43;
    }

    v48(6, "%c[%{public}s %{public}s]:%i Policy is oslo", v52, v51, v61, 450);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v53 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = object_getClass(v3);
    if (class_isMetaClass(v54))
    {
      v55 = 43;
    }

    else
    {
      v55 = 45;
    }

    *buf = 67109890;
    v63 = v55;
    v64 = 2082;
    v65 = object_getClassName(v3);
    v66 = 2082;
    v67 = sel_getName("acmGetOlsoType:");
    v68 = 1024;
    v69 = 450;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Policy is oslo", buf, 0x22u);
  }

  sub_10027E3A8(v56);
  return 1;
}

__CFData *sub_10022C208(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5, void *a6, BOOL a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15)
{
  v19 = a11;
  v20 = a10;
  v21 = a9;
  v22 = a6;
  v23 = a5;
  v24 = a3;
  v25 = objc_opt_self();
  v60 = 0;
  if (a2 == 6)
  {
    v26 = a4;
    v27 = SSEAuthorizeAndSignAPDU();

    v29 = a13;
    v28 = a15;
    v30 = a12;
  }

  else
  {
    v26 = a4;
    v27 = SSEAuthorizeAndSignECommerceBlob(v23, a4, v22, a7, v21, v20, v19, v24, &v60);

    v30 = a12;
    if (a12)
    {
      *a12 = 0;
    }

    v29 = a13;
    v28 = a15;
    if (a13)
    {
      *a13 = 0;
    }

    if (a15)
    {
      *a15 = 0;
    }
  }

  if (v27)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v32 = v26;
    if (Logger)
    {
      v33 = Logger;
      Class = object_getClass(v25);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v25);
      Name = sel_getName("authorizeAndSign:requestBlob:uid:handle:SEID:usePIN:hasPrague:hostChallenge:cardChallenge:cardCryptogram:confirmationBlob:confirmationBlobSignature:confirmationVersion:certs:");
      v37 = 45;
      if (isMetaClass)
      {
        v37 = 43;
      }

      v33(3, "%c[%{public}s %{public}s]:%i Failed to authorize: %d for uid %d", v37, ClassName, Name, 547, v27, v32);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = object_getClass(v25);
      if (class_isMetaClass(v39))
      {
        v40 = 43;
      }

      else
      {
        v40 = 45;
      }

      v41 = object_getClassName(v25);
      v42 = sel_getName("authorizeAndSign:requestBlob:uid:handle:SEID:usePIN:hasPrague:hostChallenge:cardChallenge:cardCryptogram:confirmationBlob:confirmationBlobSignature:confirmationVersion:certs:");
      *buf = 67110402;
      v62 = v40;
      v63 = 2082;
      v64 = v41;
      v65 = 2082;
      v66 = v42;
      v67 = 1024;
      v68 = 547;
      v69 = 1024;
      v70 = v27;
      v71 = 1024;
      v72 = v32;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to authorize: %d for uid %d", buf, 0x2Eu);
    }

LABEL_20:
    v43 = 0;
    goto LABEL_21;
  }

  v43 = v60;
  if (!v60)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v45 = NFLogGetLogger();
    if (v45)
    {
      v46 = v45;
      v47 = object_getClass(v25);
      v48 = class_isMetaClass(v47);
      v49 = object_getClassName(v25);
      v57 = sel_getName("authorizeAndSign:requestBlob:uid:handle:SEID:usePIN:hasPrague:hostChallenge:cardChallenge:cardCryptogram:confirmationBlob:confirmationBlobSignature:confirmationVersion:certs:");
      v50 = 45;
      if (v48)
      {
        v50 = 43;
      }

      v46(3, "%c[%{public}s %{public}s]:%i Failed to get signed APDU, no error though", v50, v49, v57, 552);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v51 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = object_getClass(v25);
      if (class_isMetaClass(v52))
      {
        v53 = 43;
      }

      else
      {
        v53 = 45;
      }

      v54 = object_getClassName(v25);
      v55 = sel_getName("authorizeAndSign:requestBlob:uid:handle:SEID:usePIN:hasPrague:hostChallenge:cardChallenge:cardCryptogram:confirmationBlob:confirmationBlobSignature:confirmationVersion:certs:");
      *buf = 67109890;
      v62 = v53;
      v63 = 2082;
      v64 = v54;
      v65 = 2082;
      v66 = v55;
      v67 = 1024;
      v68 = 552;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get signed APDU, no error though", buf, 0x22u);
    }

    goto LABEL_20;
  }

  if (a14)
  {
    *a14 = 0;
  }

  if (v30)
  {
    *v30 = 0;
  }

  if (v29)
  {
    *v29 = 0;
  }

  if (v28)
  {
    *v28 = 0;
  }

LABEL_21:

  return v43;
}

id sub_10022C66C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v66 = objc_opt_self();
  v16 = [NFTLV TLVWithTag:4 value:v11];

  v86[0] = v16;
  v17 = objc_opt_new();
  v18 = [NFTLV TLVWithTag:4 value:v17];
  v86[1] = v18;
  v19 = [NSArray arrayWithObjects:v86 count:2];
  v20 = [NFTLV TLVWithTag:48 children:v19];
  v21 = [v20 asData];

  v69 = 0;
  v70 = 0;
  v22 = +[NSData data];
  v67 = v21;
  v23 = SSEEvaluateSecureElementACL(v14, v12, v21, v22, v15, v13, 3u, &v70, &v69);

  v24 = v69;
  v25 = v70;
  if (v23)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v27 = Logger;
      Class = object_getClass(v66);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v66);
      Name = sel_getName("getSignedOperationApproval:handle:nonce:SEID:acl:error:");
      v30 = 45;
      if (isMetaClass)
      {
        v30 = 43;
      }

      v27(3, "%c[%{public}s %{public}s]:%i Failed to authorize: %d", v30, ClassName, Name, 596, v23);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = object_getClass(v66);
      if (class_isMetaClass(v32))
      {
        v33 = 43;
      }

      else
      {
        v33 = 45;
      }

      v34 = object_getClassName(v66);
      v35 = sel_getName("getSignedOperationApproval:handle:nonce:SEID:acl:error:");
      *buf = 67110146;
      v77 = v33;
      v78 = 2082;
      v79 = v34;
      v80 = 2082;
      v81 = v35;
      v82 = 1024;
      v83 = 596;
      v84 = 1024;
      v85 = v23;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to authorize: %d", buf, 0x28u);
    }

    if (!a7)
    {
      v46 = 0;
      goto LABEL_29;
    }

    v36 = v24;
    v37 = v25;
    v38 = [NSError alloc];
    v39 = [NSString stringWithUTF8String:"nfcd"];
    v74[0] = NSLocalizedDescriptionKey;
    v40 = [NSString stringWithUTF8String:"Security Violation"];
    v75[0] = v40;
    v75[1] = &off_1003362E8;
    v74[1] = @"Line";
    v74[2] = @"Method";
    v41 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getSignedOperationApproval:handle:nonce:SEID:acl:error:")];
    v75[2] = v41;
    v74[3] = NSDebugDescriptionErrorKey;
    v42 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getSignedOperationApproval:handle:nonce:SEID:acl:error:"), 598];
    v75[3] = v42;
    v74[4] = NSLocalizedFailureReasonErrorKey;
    v43 = [[NSString alloc] initWithFormat:@"SSE refused w/ %d", v23];
    v75[4] = v43;
    v44 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:5];
    v45 = v38;
    v25 = v37;
    v24 = v36;
    *a7 = [v45 initWithDomain:v39 code:8 userInfo:v44];

    v46 = 0;
    goto LABEL_28;
  }

  if (v70 && v69)
  {
    v39 = [NFTLV TLVWithTag:48 fromData:v70];
    v71[0] = v39;
    v40 = [NFTLV TLVWithTag:4 value:v24];
    v71[1] = v40;
    v41 = [NSArray arrayWithObjects:v71 count:2];
    v42 = [NFTLV TLVWithTag:236 children:v41];
    v46 = [v42 asData];
LABEL_28:

    goto LABEL_29;
  }

  v47 = v70;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v48 = NFLogGetLogger();
  if (v48)
  {
    v49 = v48;
    v50 = object_getClass(v66);
    v51 = class_isMetaClass(v50);
    v52 = object_getClassName(v66);
    v65 = sel_getName("getSignedOperationApproval:handle:nonce:SEID:acl:error:");
    v53 = 45;
    if (v51)
    {
      v53 = 43;
    }

    v49(3, "%c[%{public}s %{public}s]:%i Failed to get operation approval, no error though", v53, v52, v65, 603);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v54 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    v55 = object_getClass(v66);
    if (class_isMetaClass(v55))
    {
      v56 = 43;
    }

    else
    {
      v56 = 45;
    }

    v57 = object_getClassName(v66);
    v58 = sel_getName("getSignedOperationApproval:handle:nonce:SEID:acl:error:");
    *buf = 67109890;
    v77 = v56;
    v78 = 2082;
    v79 = v57;
    v80 = 2082;
    v81 = v58;
    v82 = 1024;
    v83 = 603;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get operation approval, no error though", buf, 0x22u);
  }

  if (a7)
  {
    v59 = [NSError alloc];
    v39 = [NSString stringWithUTF8String:"nfcd"];
    v72[0] = NSLocalizedDescriptionKey;
    v40 = [NSString stringWithUTF8String:"Unknown Error"];
    v73[0] = v40;
    v73[1] = &off_100336300;
    v72[1] = @"Line";
    v72[2] = @"Method";
    v41 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getSignedOperationApproval:handle:nonce:SEID:acl:error:")];
    v73[2] = v41;
    v72[3] = NSDebugDescriptionErrorKey;
    v42 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getSignedOperationApproval:handle:nonce:SEID:acl:error:"), 605];
    v73[3] = v42;
    v72[4] = NSLocalizedFailureReasonErrorKey;
    v60 = [[NSString alloc] initWithFormat:@"SSE inconsistent return"];
    v73[4] = v60;
    v61 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:5];
    *a7 = [v59 initWithDomain:v39 code:6 userInfo:v61];

    v46 = 0;
    v25 = v47;
    goto LABEL_28;
  }

  v46 = 0;
  v25 = v47;
LABEL_29:

  return v46;
}

id sub_10022CE54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_self();
  if (a2 && v4)
  {
    v6 = SSEGetVersion();
    if (v6)
    {
      v7 = v6;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(v5);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v5);
        Name = sel_getName("getPlatformData:forSEID:");
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v9(3, "%c[%{public}s %{public}s]:%i Failed to get SSE version : %d", v12, ClassName, Name, 633, v7);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = object_getClass(v5);
        if (class_isMetaClass(v14))
        {
          v15 = 43;
        }

        else
        {
          v15 = 45;
        }

        *buf = 67110146;
        v54 = v15;
        v55 = 2082;
        v56 = object_getClassName(v5);
        v57 = 2082;
        v58 = sel_getName("getPlatformData:forSEID:");
        v59 = 1024;
        v60 = 633;
        v61 = 1024;
        v62 = v7;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get SSE version : %d", buf, 0x28u);
      }

      v16 = [NSError alloc];
      v17 = [NSString stringWithUTF8String:"nfcd"];
      v51 = NSLocalizedDescriptionKey;
      v18 = [NSString stringWithUTF8String:"Unexpected Result"];
      v52 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v20 = v16;
      v21 = v17;
      v22 = 13;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v35 = NFLogGetLogger();
      if (v35)
      {
        v36 = v35;
        v37 = object_getClass(v5);
        v38 = class_isMetaClass(v37);
        v39 = object_getClassName(v5);
        v48 = sel_getName("getPlatformData:forSEID:");
        v40 = 45;
        if (v38)
        {
          v40 = 43;
        }

        v36(3, "%c[%{public}s %{public}s]:%i SSE version too old : %d", v40, v39, v48, 637, 0);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v41 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = object_getClass(v5);
        if (class_isMetaClass(v42))
        {
          v43 = 43;
        }

        else
        {
          v43 = 45;
        }

        *buf = 67110146;
        v54 = v43;
        v55 = 2082;
        v56 = object_getClassName(v5);
        v57 = 2082;
        v58 = sel_getName("getPlatformData:forSEID:");
        v59 = 1024;
        v60 = 637;
        v61 = 1024;
        v62 = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i SSE version too old : %d", buf, 0x28u);
      }

      v44 = [NSError alloc];
      v17 = [NSString stringWithUTF8String:"nfcd"];
      v49 = NSLocalizedDescriptionKey;
      v18 = [NSString stringWithUTF8String:"Feature Not Supported"];
      v50 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v20 = v44;
      v21 = v17;
      v22 = 14;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v24 = v23;
      v25 = object_getClass(v5);
      v26 = class_isMetaClass(v25);
      v27 = object_getClassName(v5);
      v47 = sel_getName("getPlatformData:forSEID:");
      v28 = 45;
      if (v26)
      {
        v28 = 43;
      }

      v24(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v28, v27, v47, 627);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
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
      v54 = v31;
      v55 = 2082;
      v56 = object_getClassName(v5);
      v57 = 2082;
      v58 = sel_getName("getPlatformData:forSEID:");
      v59 = 1024;
      v60 = 627;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
    }

    v32 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v63 = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v64 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v20 = v32;
    v21 = v17;
    v22 = 10;
  }

  v33 = [v20 initWithDomain:v21 code:v22 userInfo:v19];

  return v33;
}

uint64_t sub_10022D684(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = SSEGetVersion();
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(v3);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v3);
    Name = sel_getName("supportsAuthorizeAndSign:");
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i SSEGetVersion version=0x%x, status=%d", v10, ClassName, Name, 665, 0, v4);
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

    *buf = 67110402;
    v23 = v13;
    v24 = 2082;
    v25 = object_getClassName(v3);
    v26 = 2082;
    v27 = sel_getName("supportsAuthorizeAndSign:");
    v28 = 1024;
    v29 = 665;
    v30 = 1024;
    v31 = 0;
    v32 = 1024;
    v33 = v4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i SSEGetVersion version=0x%x, status=%d", buf, 0x2Eu);
  }

  if (!v4)
  {
    return 0;
  }

  if (a2)
  {
    v14 = [NSError alloc];
    v15 = [NSString stringWithUTF8String:"nfcd"];
    v20 = NSLocalizedDescriptionKey;
    v16 = [NSString stringWithUTF8String:"Unknown Error"];
    v21 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    *a2 = [v14 initWithDomain:v15 code:6 userInfo:v17];
  }

  return 0;
}

uint64_t sub_10022D948(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = SSEGetAuthKeySharingState();

  if (v4)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("getSharingState:");
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v6(3, "%c[%{public}s %{public}s]:%i Failed to get SSE sharing state : %d", v9, ClassName, Name, 694, v4);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
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
      v17 = v12;
      v18 = 2082;
      v19 = object_getClassName(v3);
      v20 = 2082;
      v21 = sel_getName("getSharingState:");
      v22 = 1024;
      v23 = 694;
      v24 = 1024;
      v25 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get SSE sharing state : %d", buf, 0x28u);
    }
  }

  return 0;
}

id sub_10022DB28(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [v2 NF_asHexString];
  v5 = [v4 uppercaseString];

  v55[0] = @"VerifyData";
  v55[1] = @"StripImg4";
  v56[0] = &__kCFBooleanFalse;
  v56[1] = &__kCFBooleanFalse;
  v55[2] = @"GetCombined";
  v56[2] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:3];
  v38 = AMFDRSealingMapCopyLocalData();
  v7 = SSESetSEPubKey();
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v9 = Logger;
  if (v7)
  {
    v37 = v5;
    if (Logger)
    {
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("setSEPublicKeyWithSEID:");
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i Failed to set SE Public key : %d", v12, ClassName, Name, 733, v7);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
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

      *buf = 67110146;
      v40 = v15;
      v41 = 2082;
      v42 = object_getClassName(v3);
      v43 = 2082;
      v44 = sel_getName("setSEPublicKeyWithSEID:");
      v45 = 1024;
      v46 = 733;
      v47 = 1024;
      LODWORD(v48) = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set SE Public key : %d", buf, 0x28u);
    }

    v16 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    if (v7 == -10)
    {
      v53[0] = NSLocalizedDescriptionKey;
      v18 = [NSString stringWithUTF8String:"Keychain locked"];
      v54[0] = v18;
      v54[1] = &off_100336330;
      v53[1] = @"Line";
      v53[2] = @"Method";
      v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setSEPublicKeyWithSEID:")];
      v54[2] = v19;
      v53[3] = NSDebugDescriptionErrorKey;
      v20 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setSEPublicKeyWithSEID:"), 735];
      v54[3] = v20;
      v21 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:4];
      v22 = v16;
      v23 = v17;
      v24 = 41;
    }

    else
    {
      v51[0] = NSLocalizedDescriptionKey;
      v18 = [NSString stringWithUTF8String:"Security Violation"];
      v52[0] = v18;
      v52[1] = &off_100336348;
      v51[1] = @"Line";
      v51[2] = @"Method";
      v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setSEPublicKeyWithSEID:")];
      v52[2] = v19;
      v51[3] = NSDebugDescriptionErrorKey;
      v20 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setSEPublicKeyWithSEID:"), 737];
      v52[3] = v20;
      v21 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
      v22 = v16;
      v23 = v17;
      v24 = 8;
    }

    v32 = [v22 initWithDomain:v23 code:v24 userInfo:v21];

    v5 = v37;
    v31 = v38;
  }

  else
  {
    if (Logger)
    {
      v25 = object_getClass(v3);
      v26 = class_isMetaClass(v25);
      v27 = object_getClassName(v3);
      v36 = sel_getName("setSEPublicKeyWithSEID:");
      v28 = 45;
      if (v26)
      {
        v28 = 43;
      }

      v9(6, "%c[%{public}s %{public}s]:%i Successfully set SE Public key %{public}@ for SEID %{public}@", v28, v27, v36, 741, v38, v2);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v29 = object_getClass(v3);
      if (class_isMetaClass(v29))
      {
        v30 = 43;
      }

      else
      {
        v30 = 45;
      }

      *buf = 67110402;
      v40 = v30;
      v41 = 2082;
      v42 = object_getClassName(v3);
      v43 = 2082;
      v44 = sel_getName("setSEPublicKeyWithSEID:");
      v45 = 1024;
      v46 = 741;
      v47 = 2114;
      v31 = v38;
      v48 = v38;
      v49 = 2114;
      v50 = v2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Successfully set SE Public key %{public}@ for SEID %{public}@", buf, 0x36u);
      v32 = 0;
    }

    else
    {
      v32 = 0;
      v31 = v38;
    }
  }

  return v32;
}

id sub_10022E394(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = objc_opt_self();
  v14 = SSEPerformAuthKeySharing();

  if (v14)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v16 = Logger;
      Class = object_getClass(v13);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v13);
      Name = sel_getName("performSharing:signature:SEID:hostEphPK:hostEphPKSignature:");
      v19 = 45;
      if (isMetaClass)
      {
        v19 = 43;
      }

      v16(3, "%c[%{public}s %{public}s]:%i Failed to set SE Public key : %d", v19, ClassName, Name, 762, v14);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = object_getClass(v13);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      *buf = 67110146;
      v39 = v22;
      v40 = 2082;
      v41 = object_getClassName(v13);
      v42 = 2082;
      v43 = sel_getName("performSharing:signature:SEID:hostEphPK:hostEphPKSignature:");
      v44 = 1024;
      v45 = 762;
      v46 = 1024;
      v47 = v14;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set SE Public key : %d", buf, 0x28u);
    }

    v23 = [NSError alloc];
    v24 = [NSString stringWithUTF8String:"nfcd"];
    if (v14 == -10)
    {
      v36 = NSLocalizedDescriptionKey;
      v25 = [NSString stringWithUTF8String:"Keychain locked"];
      v37 = v25;
      v26 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v27 = v23;
      v28 = v24;
      v29 = 41;
    }

    else
    {
      v34 = NSLocalizedDescriptionKey;
      v25 = [NSString stringWithUTF8String:"Security Violation"];
      v35 = v25;
      v26 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v27 = v23;
      v28 = v24;
      v29 = 8;
    }

    v30 = [v27 initWithDomain:v28 code:v29 userInfo:v26];
  }

  else
  {
    *a5 = 0;
    v30 = 0;
    *a6 = 0;
  }

  return v30;
}

void sub_10022E6B8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10035DB08;
  qword_10035DB08 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10022E700(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10022E850();
  v7[0] = @"totalCEEnable";
  v7[1] = @"totalAuthEvents";
  v8[0] = &off_100336360;
  v8[1] = &off_100336360;
  v7[2] = @"totalDeAuth";
  v7[3] = @"totalAuthECommerce";
  v8[2] = &off_100336360;
  v8[3] = &off_100336360;
  v7[4] = @"dailyDeviceUUID";
  v8[4] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:5];
  v5 = [NSMutableDictionary dictionaryWithDictionary:v4];

  [v5 setObject:&off_100336378 forKeyedSubscript:v2];
  v6 = +[NFCALogger sharedCALogger];
  [v6 postCAEventFor:@"com.apple.nfcd.crsAuthOperationStatistic" eventInput:v5];
}

__CFString *sub_10022E850()
{
  objc_opt_self();
  v0 = +[NFCALogger sharedCALogger];
  v1 = [v0 generateDailyUUIDForCA];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = @"noUUID";
  }

  return v2;
}

void sub_10022E8DC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v4 = [v2 mutableCopy];

  v3 = +[NFCALogger sharedCALogger];
  [v3 postCAEventFor:@"com.apple.nfcd.version" eventInput:v4];
}

void sub_10022E960(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  objc_opt_self();
  v17[0] = @"counter";
  v10 = [NSNumber numberWithUnsignedInt:a2];
  v18[0] = v10;
  v17[1] = @"JCOP_Dev";
  v11 = [NSNumber numberWithInt:a3 == 1];
  v12 = v11;
  v13 = &off_100336360;
  if (v9)
  {
    v13 = v9;
  }

  v18[1] = v11;
  v18[2] = v13;
  v17[2] = @"OSVersion";
  v17[3] = @"platformIdentifier";
  if (v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = &stru_10031EA18;
  }

  v18[3] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];

  v16 = +[NFCALogger sharedCALogger];

  [v16 postCAEventFor:@"nfcd.exceptions.seAppletMigrationFailure" eventInput:v15];
}

id sub_10022EAD0()
{
  v0 = objc_opt_self();
  v1 = +[NFCALogger sharedCALogger];
  v2 = [v1 getCALoggerUserDefaults];

  v3 = [v2 objectForKey:@"flashCounters"];
  if (!v3)
  {
LABEL_32:
    v10 = 0;
    goto LABEL_33;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(v0);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v0);
      Name = sel_getName("_getStoredCounters");
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v12(3, "%c[%{public}s %{public}s]:%i Unexpected type in storage", v16, ClassName, Name, 77);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = object_getClass(v0);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      *buf = 67109890;
      v40 = v19;
      v41 = 2082;
      v42 = object_getClassName(v0);
      v43 = 2082;
      v44 = sel_getName("_getStoredCounters");
      v45 = 1024;
      v46 = 77;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected type in storage", buf, 0x22u);
    }

    [v2 removeObjectForKey:@"flashCounters"];
    goto LABEL_32;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v20 = NFLogGetLogger();
          if (v20)
          {
            v21 = v20;
            v22 = object_getClass(v0);
            v23 = class_isMetaClass(v22);
            v24 = object_getClassName(v0);
            v33 = sel_getName("_getStoredCounters");
            v25 = 45;
            if (v23)
            {
              v25 = 43;
            }

            v21(3, "%c[%{public}s %{public}s]:%i Unexpected type in storage", v25, v24, v33, 84, v34);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v26 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = object_getClass(v0);
            if (class_isMetaClass(v27))
            {
              v28 = 43;
            }

            else
            {
              v28 = 45;
            }

            v29 = object_getClassName(v0);
            v30 = sel_getName("_getStoredCounters");
            *buf = 67109890;
            v40 = v28;
            v41 = 2082;
            v42 = v29;
            v43 = 2082;
            v44 = v30;
            v45 = 1024;
            v46 = 84;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected type in storage", buf, 0x22u);
          }

          [v2 removeObjectForKey:@"flashCounters"];
          goto LABEL_32;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = v4;
LABEL_33:

  return v10;
}

void sub_10022EED8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = v2;
  objc_opt_self();
  v4 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
  if (NFIsInternalBuild())
  {
    v5 = sub_10022EAD0();
    v6 = +[NFCALogger sharedCALogger];
    v7 = [v6 getCALoggerUserDefaults];

    v8 = [v7 objectForKey:@"flashCountersDate"];
    v9 = v8;
    if (v5)
    {
      if (v8)
      {
        [v8 timeIntervalSince1970];
        v43 = v10;
        v11 = gmtime(&v43);
        v42 = time(0);
        v12 = gmtime(&v42);
        if (v11->tm_year != v12->tm_year || v11->tm_yday != v12->tm_yday)
        {
          v13 = [v5 count];
          if (v13 == [v3 count])
          {
            v14 = 0;
            if ([v5 count])
            {
              while (1)
              {
                v15 = [v5 objectAtIndex:v14];
                v16 = [v3 objectAtIndexedSubscript:v14];
                v17 = [v16 unsignedLongValue];
                if ((v17 - [v15 unsignedLongValue]) >= 0x2BD)
                {
                  break;
                }

                ++v14;

                if (v14 >= [v5 count])
                {
                  v14 = 0;
                  goto LABEL_14;
                }
              }

              v18 = [[NSString alloc] initWithFormat:@"Page %d was %@ is %@", v14, v15, v16];
              v14 = [0 stringByAppendingFormat:@"%@%@", @"  ", v18];;
              sub_100199974(NFBugCapture, @"Excessive flash writes", v18, 0);
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                v45 = v18;
                _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Flash page write exceeded %@", buf, 0xCu);
              }

LABEL_14:
              v4 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
            }

            [NFExceptionsCALogger postAnalyticsSEFailureEvent:0 context:v14 error:0];
          }
        }
      }
    }
  }

  v19 = sub_10022EAD0();
  v20 = [v19 count];
  if (v20 != [v3 count])
  {

    v19 = 0;
  }

  v21 = objc_opt_new();
  if ([v3 count])
  {
    v22 = 0;
    do
    {
      v23 = v22 + 1;
      v24 = [NSString stringWithFormat:@"Page%02d", v22 + 1];
      v25 = [v3 objectAtIndexedSubscript:v22];
      [v21 setObject:v25 forKeyedSubscript:v24];

      v22 = v23;
    }

    while ([v3 count] > v23);
  }

  v26 = v19;
  if (v19)
  {
    v27 = objc_opt_new();
    if ([v3 count])
    {
      v28 = 0;
      do
      {
        v29 = v28 + 1;
        v30 = [NSString stringWithFormat:@"Page%02d", v28 + 1];
        v31 = [NSNumber alloc];
        v32 = [v3 objectAtIndexedSubscript:v28];
        v33 = [v32 intValue];
        v34 = [v26 objectAtIndexedSubscript:v28];
        v35 = [v31 initWithInt:{v33 - objc_msgSend(v34, "intValue")}];
        [v27 setObject:v35 forKeyedSubscript:v30];

        v28 = v29;
      }

      while ([v3 count] > v29);
      v4 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
    }
  }

  else
  {
    v27 = 0;
  }

  v36 = [v4[416] sharedCALogger];
  [v36 postCAEventFor:@"com.apple.nfcd.flashCounterTotals" eventInput:v21];

  if (v27)
  {
    v37 = [v4[416] sharedCALogger];
    [v37 postCAEventFor:@"com.apple.nfcd.flashCounterDeltas" eventInput:v27];
  }

  v41 = v3;
  objc_opt_self();
  v38 = [v4[416] sharedCALogger];
  v39 = [v38 getCALoggerUserDefaults];

  [v39 setObject:v41 forKey:@"flashCounters"];
  v40 = +[NSDate now];
  [v39 setObject:v40 forKey:@"flashCountersDate"];
}

void sub_10022F438(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10022E850();
  v6[0] = @"dailyDeviceUUID";
  v6[1] = v2;
  v7[0] = v3;
  v7[1] = &off_100336378;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  v5 = +[NFCALogger sharedCALogger];

  [v5 postCAEventFor:@"com.apple.nfcd.deviceExceptionStatistic" eventInput:v4];
}

id sub_100233748()
{
  objc_opt_self();
  if (qword_10035DB28 != -1)
  {
    dispatch_once(&qword_10035DB28, &stru_10031C838);
  }

  v0 = qword_10035DB20;

  return v0;
}

void sub_1002337A0(id a1)
{
  v1 = objc_alloc_init(NFBackgroundActivityScheduler);
  v2 = qword_10035DB20;
  qword_10035DB20 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1002338AC(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a1 + 32);
    v5 = a2;
    v7 = [v4 objectForKey:a3];
    v6 = objc_retainBlock(v5);

    [v7 addObject:v6];
  }
}

void sub_100233938(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
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
      Name = sel_getName("schedulePreRegisteredActivity:callback:");
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v8(6, "%c[%{public}s %{public}s]:%i ", v12, ClassName, Name, 91);
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
      v23 = v15;
      v24 = 2082;
      v25 = object_getClassName(a1);
      v26 = 2082;
      v27 = sel_getName("schedulePreRegisteredActivity:callback:");
      v28 = 1024;
      v29 = 91;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    v16 = a1[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100233B60;
    block[3] = &unk_100316078;
    block[4] = a1;
    v19 = v5;
    v21 = "schedulePreRegisteredActivity:callback:";
    v20 = v6;
    dispatch_async(v16, block);
  }
}

void sub_100233B60(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && ([*(v2 + 24) objectForKey:*(a1 + 40)], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i getActivity for identifier (%{public}@): %{public}@", v11, ClassName, Name, 97, *(a1 + 40), v4);
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
      v16 = sel_getName(*(a1 + 56));
      v17 = *(a1 + 40);
      *buf = 67110402;
      v41 = v14;
      v42 = 2082;
      v43 = v15;
      v44 = 2082;
      v45 = v16;
      v46 = 1024;
      v47 = 97;
      v48 = 2114;
      v49 = v17;
      v50 = 2114;
      v51 = v4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i getActivity for identifier (%{public}@): %{public}@", buf, 0x36u);
    }

    sub_1002338AC(*(a1 + 32), *(a1 + 48), *(a1 + 40));
  }

  else
  {
    v4 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:*(a1 + 40)];
    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = *(v18 + 32);
      v20 = *(a1 + 40);
      v21 = objc_opt_new();
      [v19 setObject:v21 forKey:v20];
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
      v28 = 45;
      if (v25)
      {
        v28 = 43;
      }

      v23(6, "%c[%{public}s %{public}s]:%i getActivity for identifier (%{public}@): nil, generated new activity: %{public}@", v28, v26, v27, 104, *(a1 + 40), v4);
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
      v33 = sel_getName(*(a1 + 56));
      v34 = *(a1 + 40);
      *buf = 67110402;
      v41 = v31;
      v42 = 2082;
      v43 = v32;
      v44 = 2082;
      v45 = v33;
      v46 = 1024;
      v47 = 104;
      v48 = 2114;
      v49 = v34;
      v50 = 2114;
      v51 = v4;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i getActivity for identifier (%{public}@): nil, generated new activity: %{public}@", buf, 0x36u);
    }

    [v4 setPreregistered:1];
    v35 = *(a1 + 32);
    if (v35)
    {
      [*(v35 + 24) setObject:v4 forKey:*(a1 + 40)];
      v36 = *(a1 + 32);
    }

    else
    {
      v36 = 0;
    }

    sub_1002338AC(v36, *(a1 + 48), *(a1 + 40));
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100233F64;
    v38[3] = &unk_10031C860;
    v37 = *(a1 + 40);
    v38[4] = *(a1 + 32);
    v39 = v37;
    [v4 scheduleWithBlock:v38];
  }
}

void sub_100233F64(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [*(v4 + 32) objectForKey:{*(a1 + 40), v10}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * i) + 16))();
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  v3[2](v3, 1);
}

id sub_1002340EC()
{
  if (qword_10035DB30 != -1)
  {
    dispatch_once(&qword_10035DB30, &stru_10031C880);
  }

  v1 = qword_10035DB38;

  return v1;
}

void sub_100234140(id a1)
{
  *in = 0u;
  memset(v6, 0, sizeof(v6));
  v3 = 37;
  if (!sysctlbyname("kern.bootsessionuuid", in, &v3, 0, 0))
  {
    memset(uu, 0, sizeof(uu));
    uuid_parse(in, uu);
    v1 = [NSData dataWithBytes:uu length:16];
    v2 = qword_10035DB38;
    qword_10035DB38 = v1;
  }
}

uint64_t sub_1002341F4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v6 = 0;
  if ([v2 length] > 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = [v2 length];
  }

  [v2 getCharacters:&v6 range:{0, v3}];
  DefaultFractionDigits = ucurr_getDefaultFractionDigits();

  return DefaultFractionDigits;
}

void sub_1002342B0(uint64_t a1)
{
  if (a1)
  {
    v2 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 7uLL, &_dispatch_main_q);
    v3 = *(a1 + 8);
    *(a1 + 8) = v2;

    v4 = *(a1 + 8);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100234364;
    handler[3] = &unk_100315F30;
    handler[4] = a1;
    dispatch_source_set_event_handler(v4, handler);
    dispatch_resume(*(a1 + 8));
  }
}

void sub_100234364(uint64_t a1)
{
  if (dispatch_source_get_data(*(*(a1 + 32) + 8)) == 4)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(4, "%s:%i Memory Pressure Critical - Jetsam?", "[NFMemoryObserver start]_block_invoke", 42);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v2 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v4 = "[NFMemoryObserver start]_block_invoke";
      v5 = 1024;
      v6 = 42;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Memory Pressure Critical - Jetsam?", buf, 0x12u);
    }
  }
}

void sub_1002344C8(os_unfair_lock_s *a1)
{
  if (a1)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10023455C;
    v2[3] = &unk_100315F30;
    v2[4] = a1;
    os_unfair_lock_lock(a1 + 4);
    sub_10023455C(v2);
    os_unfair_lock_unlock(a1 + 4);
  }
}

void sub_10023455C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    xpc_connection_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    *(v3 + 48) = 0;
  }
}

void sub_1002345B4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_45;
  }

  type = xpc_get_type(v3);
  if (type != &_xpc_type_error)
  {
    v6 = type;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(WeakRetained);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(WeakRetained);
      Name = sel_getName(*(a1 + 40));
      v57 = xpc_type_get_name(v6);
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v8(4, "%c[%{public}s %{public}s]:%i Unexpected typed: %s", v13, ClassName, Name, 89, v57);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = object_getClass(WeakRetained);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      v17 = object_getClassName(WeakRetained);
      v18 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v61 = v16;
      v62 = 2082;
      v63 = v17;
      v64 = 2082;
      v65 = v18;
      v66 = 1024;
      v67 = 89;
      v68 = 2080;
      v69 = xpc_type_get_name(v6);
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected typed: %s", buf, 0x2Cu);
    }

    goto LABEL_45;
  }

  if (xpc_equal(v3, &_xpc_error_connection_interrupted))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v20 = v19;
      v21 = object_getClass(WeakRetained);
      v22 = class_isMetaClass(v21);
      v23 = object_getClassName(WeakRetained);
      v24 = sel_getName(*(a1 + 40));
      v25 = 45;
      if (v22)
      {
        v25 = 43;
      }

      v20(6, "%c[%{public}s %{public}s]:%i Service interrupted: %@", v25, v23, v24, 75, *&WeakRetained[6]._os_unfair_lock_opaque);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = object_getClass(WeakRetained);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      v29 = object_getClassName(WeakRetained);
      v30 = sel_getName(*(a1 + 40));
      v31 = *&WeakRetained[6]._os_unfair_lock_opaque;
      *buf = 67110146;
      v61 = v28;
      v62 = 2082;
      v63 = v29;
      v64 = 2082;
      v65 = v30;
      v66 = 1024;
      v67 = 75;
      v68 = 2112;
      v69 = v31;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Service interrupted: %@", buf, 0x2Cu);
    }

LABEL_44:

    goto LABEL_45;
  }

  if (!xpc_equal(v3, &_xpc_error_connection_invalid))
  {
    v26 = xpc_dictionary_get_value(v3, _xpc_error_key_description);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v45 = NFLogGetLogger();
    if (v45)
    {
      v46 = v45;
      v47 = object_getClass(WeakRetained);
      v48 = class_isMetaClass(v47);
      v49 = object_getClassName(WeakRetained);
      v50 = sel_getName(*(a1 + 40));
      string_ptr = xpc_string_get_string_ptr(v26);
      v51 = 45;
      if (v48)
      {
        v51 = 43;
      }

      v46(3, "%c[%{public}s %{public}s]:%i %s", v51, v49, v50, 86, string_ptr);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v52 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = object_getClass(WeakRetained);
      if (class_isMetaClass(v53))
      {
        v54 = 43;
      }

      else
      {
        v54 = 45;
      }

      v55 = object_getClassName(WeakRetained);
      v56 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v61 = v54;
      v62 = 2082;
      v63 = v55;
      v64 = 2082;
      v65 = v56;
      v66 = 1024;
      v67 = 86;
      v68 = 2080;
      v69 = xpc_string_get_string_ptr(v26);
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %s", buf, 0x2Cu);
    }

    goto LABEL_44;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v32 = NFLogGetLogger();
  if (v32)
  {
    v33 = v32;
    v34 = object_getClass(WeakRetained);
    v35 = class_isMetaClass(v34);
    v36 = object_getClassName(WeakRetained);
    v37 = sel_getName(*(a1 + 40));
    v38 = 45;
    if (v35)
    {
      v38 = 43;
    }

    v33(6, "%c[%{public}s %{public}s]:%i Service not available: %@", v38, v36, v37, 77, *&WeakRetained[6]._os_unfair_lock_opaque);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v39 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = object_getClass(WeakRetained);
    if (class_isMetaClass(v40))
    {
      v41 = 43;
    }

    else
    {
      v41 = 45;
    }

    v42 = object_getClassName(WeakRetained);
    v43 = sel_getName(*(a1 + 40));
    v44 = *&WeakRetained[6]._os_unfair_lock_opaque;
    *buf = 67110146;
    v61 = v41;
    v62 = 2082;
    v63 = v42;
    v64 = 2082;
    v65 = v43;
    v66 = 1024;
    v67 = 77;
    v68 = 2112;
    v69 = v44;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Service not available: %@", buf, 0x2Cu);
  }

  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_100234BF8;
  v59[3] = &unk_100315F30;
  v59[4] = WeakRetained;
  os_unfair_lock_lock(WeakRetained + 4);
  sub_100234BF8(v59);
  os_unfair_lock_unlock(WeakRetained + 4);
LABEL_45:
}

void sub_100234BF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = *(v1 + 48);
    if (v3)
    {
      xpc_connection_cancel(v3);
      v4 = *(a1 + 32);
      if (v4)
      {

        objc_storeStrong((v4 + 48), 0);
      }
    }
  }
}

id *sub_100234C58(void *a1, void *a2, char a3, int a4, void *a5, void *a6)
{
  v12 = a2;
  v13 = a5;
  v14 = a6;
  if (a1 && (v21.receiver = a1, v21.super_class = NFSecureXPCEventPublisher, (v15 = objc_msgSendSuper2(&v21, "init")) != 0))
  {
    v16 = v15;
    objc_storeStrong(v15 + 3, a2);
    *(v16 + 8) = a3;
    *(v16 + 3) = a4;
    objc_storeStrong(v16 + 4, a5);
    objc_storeStrong(v16 + 5, a6);
    *(v16 + 4) = 0;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100234DB4;
    v19[3] = &unk_100315F30;
    v17 = v16;
    v20 = v17;
    os_unfair_lock_lock(v16 + 4);
    sub_100234DB4(v19);
    os_unfair_lock_unlock(v16 + 4);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void sub_100234DD8(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100234EEC;
    v10[3] = &unk_100315F80;
    v10[4] = a1;
    v12 = "_sendEvent:dispatch:";
    v11 = v5;
    v7 = objc_retainBlock(v10);
    v8 = v7;
    if (a3)
    {
      if (*(a1 + 8) == 1)
      {
        v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, *(a1 + 12), -1, v7);
        dispatch_async(*(a1 + 40), v9);
      }

      else
      {
        dispatch_async(*(a1 + 40), v7);
      }
    }

    else
    {
      (v7[2])(v7);
    }
  }
}

void sub_100234EEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100234F98;
  v4[3] = &unk_100315F80;
  v4[4] = v1;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  os_unfair_lock_lock(v1 + 4);
  sub_100234F98(v4);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_100234F98(uint64_t a1)
{
  v2 = sub_100003D58(*(a1 + 32));
  if (v2)
  {
    type = xpc_get_type(*(a1 + 40));
    if (type == &_xpc_type_dictionary)
    {
      v30 = *(a1 + 32);
      if (v30 && *(v30 + 8) == 1)
      {
        v31 = NFSharedSignpostLog();
        if (os_signpost_enabled(v31))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSecureXPCEventPublisher_post_wQOS", &unk_1002E8B7A, buf, 2u);
        }

        xpc_connection_send_message(v2, *(a1 + 40));
      }

      else
      {
        v32 = NFSharedSignpostLog();
        if (os_signpost_enabled(v32))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSecureXPCEventPublisher_post", &unk_1002E8B7A, buf, 2u);
        }

        v33 = *(a1 + 40);
        xpc_connection_send_notification();
      }
    }

    else
    {
      v4 = type;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 48));
        v34 = xpc_type_get_name(v4);
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v6(3, "%c[%{public}s %{public}s]:%i Invalid event type: %s", v11, ClassName, Name, 148, v34);
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
        v36 = v14;
        v37 = 2082;
        v38 = v15;
        v39 = 2082;
        v40 = v16;
        v41 = 1024;
        v42 = 148;
        v43 = 2080;
        v44 = xpc_type_get_name(v4);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid event type: %s", buf, 0x2Cu);
      }
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v18 = v17;
      v19 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      v21 = object_getClassName(*(a1 + 32));
      v22 = sel_getName(*(a1 + 48));
      v23 = *(a1 + 32);
      if (v23)
      {
        v23 = *(v23 + 24);
      }

      v18(3, "%c[%{public}s %{public}s]:%i Service unavailable: %{public}@", v20, v21, v22, 143, v23);
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
      v29 = *(a1 + 32);
      if (v29)
      {
        v29 = *(v29 + 24);
      }

      *buf = 67110146;
      v36 = v26;
      v37 = 2082;
      v38 = v27;
      v39 = 2082;
      v40 = v28;
      v41 = 1024;
      v42 = 143;
      v43 = 2114;
      v44 = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Service unavailable: %{public}@", buf, 0x2Cu);
    }
  }
}

void sub_100235394(uint64_t a1, id a2, char a3)
{
  if (a1)
  {
    keys = "xpcEventName";
    values = xpc_string_create([a2 UTF8String]);
    v5 = xpc_dictionary_create(&keys, &values, 1uLL);
    sub_100234DD8(a1, v5, a3);
  }
}

void sub_100235448(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a3;
  if (a1)
  {
    *keys = *off_10031C8C8;
    v10[0] = xpc_string_create([a2 UTF8String]);
    v10[1] = xpc_string_create([v7 UTF8String]);
    v8 = xpc_dictionary_create(keys, v10, 2uLL);
    sub_100234DD8(a1, v8, a4);

    for (i = 1; i != -1; --i)
    {
    }
  }
}

void sub_100235540(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a3;
  if (a1)
  {
    *keys = *off_10031C8D8;
    v8 = [v7 integerValue];
    v11[1] = xpc_int64_create(v8);
    v9 = xpc_dictionary_create(keys, v11, 2uLL);
    sub_100234DD8(a1, v9, a4);

    for (i = 1; i != -1; --i)
    {
    }
  }
}

BOOL sub_100235634(void *a1, void *a2, char a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = _CFXPCCreateXPCObjectFromCFObject();
    v7 = v6 != 0;
    if (v6)
    {
      sub_100234DD8(a1, v6, a3);
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
        Name = sel_getName("_sendDictionary:dispatch:");
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v9(3, "%c[%{public}s %{public}s]:%i Invalid dictionary content: %{public}@", v12, ClassName, Name, 247, v5);
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
        v20 = v15;
        v21 = 2082;
        v22 = object_getClassName(a1);
        v23 = 2082;
        v24 = sel_getName("_sendDictionary:dispatch:");
        v25 = 1024;
        v26 = 247;
        v27 = 2114;
        v28 = v5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid dictionary content: %{public}@", buf, 0x2Cu);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1002358D0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v285 = v2;
  v4 = [NFTLV TLVWithData:v2];
  v283 = v4;
  if (v4)
  {
    v5 = v4;
    if ([v4 tag] == 49)
    {
      v6 = [v5 children];
      v7 = [v6 count];

      if (v7)
      {
        v282 = objc_opt_new();
        v288 = 0u;
        v289 = 0u;
        v290 = 0u;
        v291 = 0u;
        obj = [v5 children];
        v8 = [obj countByEnumeratingWithState:&v288 objects:v295 count:16];
        if (!v8)
        {
          goto LABEL_304;
        }

        v9 = v8;
        v10 = *v289;
        v286 = v3;
        while (1)
        {
          v11 = 0;
          do
          {
            if (*v289 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v288 + 1) + 8 * v11);
            if ([v12 tag] == 48)
            {
              v13 = [v12 children];
              v14 = [v13 count];

              if (v14)
              {
                v15 = [v12 children];
                v16 = [v15 objectAtIndex:0];

                if ([v16 tag] != 6)
                {
                  goto LABEL_21;
                }

                v17 = [v16 value];
                if ([v17 length] <= 7)
                {

                  goto LABEL_21;
                }

                v18 = [v16 value];
                v19 = [v18 bytes];
                v20 = *v19 == 8323076 && *(v19 + 3) == 33687296;
                v21 = !v20;

                if (v21)
                {
LABEL_21:
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  Logger = NFLogGetLogger();
                  if (Logger)
                  {
                    v23 = Logger;
                    Class = object_getClass(v3);
                    isMetaClass = class_isMetaClass(Class);
                    ClassName = object_getClassName(v3);
                    Name = sel_getName("securityInfoArrayFromData:");
                    v26 = 45;
                    if (isMetaClass)
                    {
                      v26 = 43;
                    }

                    v23(4, "%c[%{public}s %{public}s]:%i Unexpected ASN sequence item 0: %{public}@", v26, ClassName, Name, 96, v16);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v27 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                  {
                    v28 = object_getClass(v3);
                    if (class_isMetaClass(v28))
                    {
                      v29 = 43;
                    }

                    else
                    {
                      v29 = 45;
                    }

                    v30 = object_getClassName(v3);
                    v31 = sel_getName("securityInfoArrayFromData:");
                    *buf = 67110146;
                    *&buf[4] = v29;
                    *&buf[8] = 2082;
                    *&buf[10] = v30;
                    *&buf[18] = 2082;
                    *&buf[20] = v31;
                    *&buf[28] = 1024;
                    *&buf[30] = 96;
                    *&buf[34] = 2114;
                    *&buf[36] = v16;
                    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected ASN sequence item 0: %{public}@", buf, 0x2Cu);
                  }

                  goto LABEL_30;
                }

                v32 = [v16 value];
                v33 = *([v32 bytes] + 7);

                if (v33 != 3)
                {
                  if (v33 != 4)
                  {
                    goto LABEL_122;
                  }

                  v34 = [PaceInfo alloc];
                  v35 = v12;
                  if (v34)
                  {
                    v292.receiver = v34;
                    v292.super_class = PaceInfo;
                    v284 = objc_msgSendSuper2(&v292, "initWithType:", 0);
                    if (v284)
                    {
                      [v35 children];
                      v37 = v36 = v35;
                      v38 = [v37 count];

                      v281 = v36;
                      if (v38 - 4 <= 0xFFFFFFFD)
                      {
                        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                        v39 = NFLogGetLogger();
                        if (v39)
                        {
                          v40 = v39;
                          v41 = object_getClass(v284);
                          v42 = class_isMetaClass(v41);
                          v43 = object_getClassName(v284);
                          v257 = sel_getName("initFromTLV:");
                          v44 = 45;
                          if (v42)
                          {
                            v44 = 43;
                          }

                          v40(3, "%c[%{public}s %{public}s]:%i Unexpected # of elements in sequence", v44, v43, v257, 219);
                        }

                        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                        v45 = NFSharedLogGetLogger();
                        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                        {
                          v46 = object_getClass(v284);
                          v47 = v45;
                          if (class_isMetaClass(v46))
                          {
                            v48 = 43;
                          }

                          else
                          {
                            v48 = 45;
                          }

                          v49 = object_getClassName(v284);
                          v50 = sel_getName("initFromTLV:");
                          *buf = 67109890;
                          *&buf[4] = v48;
                          v45 = v47;
                          *&buf[8] = 2082;
                          *&buf[10] = v49;
                          *&buf[18] = 2082;
                          *&buf[20] = v50;
                          *&buf[28] = 1024;
                          *&buf[30] = 219;
                          v51 = v47;
                          goto LABEL_59;
                        }

                        goto LABEL_60;
                      }

                      v269 = v38;
                      v67 = [v36 children];
                      v68 = [v67 objectAtIndex:0];

                      v69 = [v68 value];
                      v280 = 4;
                      v279 = v68;
                      if ([v69 length] != 9 && objc_msgSend(v69, "length") != 10 || (v70 = objc_msgSend(v69, "bytes"), *v70 != 0x4020207007F0004))
                      {
                        v71 = -1;
                        v72 = 1;
LABEL_66:

                        v73 = [v68 tag];
                        if ((v72 & 1) == 0 && v73 == 6)
                        {
                          if (v71 <= 0x14 && ((1 << v71) & 0x108421) != 0)
                          {
                            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                            v74 = NFLogGetLogger();
                            if (v74)
                            {
                              v75 = v74;
                              v76 = object_getClass(v284);
                              v77 = class_isMetaClass(v76);
                              v78 = object_getClassName(v284);
                              v259 = sel_getName("initFromTLV:");
                              v79 = 45;
                              if (v77)
                              {
                                v79 = 43;
                              }

                              v75(6, "%c[%{public}s %{public}s]:%i DomainParameterInfo found", v79, v78, v259, 233);
                            }

                            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                            v80 = NFSharedLogGetLogger();
                            v33 = 4;
                            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                            {
                              v81 = object_getClass(v284);
                              if (class_isMetaClass(v81))
                              {
                                v82 = 43;
                              }

                              else
                              {
                                v82 = 45;
                              }

                              v83 = object_getClassName(v284);
                              v84 = sel_getName("initFromTLV:");
                              *buf = 67109890;
                              *&buf[4] = v82;
                              *&buf[8] = 2082;
                              *&buf[10] = v83;
                              *&buf[18] = 2082;
                              *&buf[20] = v84;
                              *&buf[28] = 1024;
                              *&buf[30] = 233;
                              v85 = v80;
                              goto LABEL_96;
                            }

                            goto LABEL_117;
                          }

                          v166 = [v281 children];
                          v167 = [v166 objectAtIndex:1];

                          v274 = v167;
                          if ([v167 tag]== 2)
                          {
                            v168 = [v167 valueAsUnsignedLong];
                            if (v168 == 2)
                            {
                              if (v269 == 3)
                              {
                                v169 = [v281 children];
                                v154 = [v169 objectAtIndex:2];
                              }

                              else
                              {
                                v154 = 0;
                              }

                              v217 = v284;
                              v284[2] = v71;
                              v218 = [NSNumber numberWithUnsignedLong:[v154 valueAsUnsignedLong]];
                              v219 = &OBJC_IVAR___PaceInfo__protocol;
                              goto LABEL_290;
                            }

                            v207 = v168;
                            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                            v208 = NFLogGetLogger();
                            if (v208)
                            {
                              v209 = v208;
                              v210 = object_getClass(v284);
                              v211 = class_isMetaClass(v210);
                              v255 = object_getClassName(v284);
                              v267 = sel_getName("initFromTLV:");
                              v212 = 45;
                              if (v211)
                              {
                                v212 = 43;
                              }

                              v209(4, "%c[%{public}s %{public}s]:%i Unexpected version: %lu", v212, v255, v267, 246, v207);
                            }

                            v271 = v207;
                            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                            v154 = NFSharedLogGetLogger();
                            if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
                            {
                              v213 = object_getClass(v284);
                              if (class_isMetaClass(v213))
                              {
                                v214 = 43;
                              }

                              else
                              {
                                v214 = 45;
                              }

                              v215 = object_getClassName(v284);
                              v216 = sel_getName("initFromTLV:");
                              *buf = 67110146;
                              *&buf[4] = v214;
                              *&buf[8] = 2082;
                              *&buf[10] = v215;
                              *&buf[18] = 2082;
                              *&buf[20] = v216;
                              *&buf[28] = 1024;
                              *&buf[30] = 246;
                              *&buf[34] = 2048;
                              *&buf[36] = v271;
                              v159 = v154;
                              v160 = "%c[%{public}s %{public}s]:%i Unexpected version: %lu";
                              goto LABEL_245;
                            }

LABEL_247:
                            v27 = 0;
LABEL_291:
                            v33 = v280;

                            v35 = v281;
                            v80 = v274;
LABEL_118:

                            v45 = v279;
LABEL_119:

LABEL_120:
                            if (v27)
                            {
                              [v282 addObject:v27];
LABEL_30:

                              goto LABEL_31;
                            }

LABEL_122:
                            v293[0] = &off_100336540;
                            v293[1] = &off_100336558;
                            v294[0] = @"PK";
                            v294[1] = @"TA";
                            v293[2] = &off_100336570;
                            v293[3] = &off_100336588;
                            v294[2] = @"CA";
                            v294[3] = @"PACE";
                            v293[4] = &off_1003365A0;
                            v293[5] = &off_1003365B8;
                            v294[4] = @"RI";
                            v294[5] = @"CI";
                            v293[6] = &off_1003365D0;
                            v293[7] = &off_1003365E8;
                            v294[6] = @"eIDSecurity";
                            v294[7] = @"PT";
                            v293[8] = &off_100336600;
                            v293[9] = &off_100336618;
                            v294[8] = @"PS";
                            v294[9] = @"PasswordType";
                            v293[10] = &off_100336630;
                            v294[10] = @"eIDApplicationInfo";
                            v27 = [NSDictionary dictionaryWithObjects:v294 forKeys:v293 count:11];
                            v123 = [NSNumber numberWithUnsignedChar:v33];
                            v124 = [v27 objectForKey:v123];

                            v125 = [v16 value];
                            v126 = v125;
                            if (v124)
                            {
                              [NSString stringWithFormat:@"id-%@ found (oid=%@)", v124, v125];
                            }

                            else
                            {
                              [NSString stringWithFormat:@"Unknown info (%@) found", v125, v249];
                            }
                            v127 = ;

                            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                            v128 = NFLogGetLogger();
                            if (v128)
                            {
                              v129 = v128;
                              v130 = object_getClass(v3);
                              v131 = class_isMetaClass(v130);
                              v253 = object_getClassName(v286);
                              v263 = sel_getName("securityInfoArrayFromData:");
                              v20 = !v131;
                              v3 = v286;
                              v132 = 45;
                              if (!v20)
                              {
                                v132 = 43;
                              }

                              v129(6, "%c[%{public}s %{public}s]:%i %{public}@ found", v132, v253, v263, 132, v127);
                            }

                            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                            v133 = NFSharedLogGetLogger();
                            if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
                            {
                              v134 = object_getClass(v3);
                              if (class_isMetaClass(v134))
                              {
                                v135 = 43;
                              }

                              else
                              {
                                v135 = 45;
                              }

                              v136 = object_getClassName(v286);
                              v137 = sel_getName("securityInfoArrayFromData:");
                              *buf = 67110146;
                              *&buf[4] = v135;
                              v3 = v286;
                              *&buf[8] = 2082;
                              *&buf[10] = v136;
                              *&buf[18] = 2082;
                              *&buf[20] = v137;
                              *&buf[28] = 1024;
                              *&buf[30] = 132;
                              *&buf[34] = 2114;
                              *&buf[36] = v127;
                              _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ found", buf, 0x2Cu);
                            }

                            goto LABEL_30;
                          }

                          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                          v184 = NFLogGetLogger();
                          if (v184)
                          {
                            v185 = v184;
                            v186 = object_getClass(v284);
                            v187 = class_isMetaClass(v186);
                            v188 = object_getClassName(v284);
                            v266 = sel_getName("initFromTLV:");
                            v189 = 45;
                            if (v187)
                            {
                              v189 = 43;
                            }

                            v185(3, "%c[%{public}s %{public}s]:%i Incorrect type for version", v189, v188, v266, 239);
                          }

                          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                          v154 = NFSharedLogGetLogger();
                          if (!os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_247;
                          }

                          v190 = object_getClass(v284);
                          if (class_isMetaClass(v190))
                          {
                            v191 = 43;
                          }

                          else
                          {
                            v191 = 45;
                          }

                          v192 = object_getClassName(v284);
                          v193 = sel_getName("initFromTLV:");
                          *buf = 67109890;
                          *&buf[4] = v191;
                          *&buf[8] = 2082;
                          *&buf[10] = v192;
                          *&buf[18] = 2082;
                          *&buf[20] = v193;
                          *&buf[28] = 1024;
                          *&buf[30] = 239;
                          v159 = v154;
                          v160 = "%c[%{public}s %{public}s]:%i Incorrect type for version";
LABEL_205:
                          v194 = 34;
                          goto LABEL_246;
                        }

                        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                        v103 = NFLogGetLogger();
                        if (v103)
                        {
                          v104 = v103;
                          v105 = object_getClass(v284);
                          v106 = class_isMetaClass(v105);
                          v251 = object_getClassName(v284);
                          v261 = sel_getName("initFromTLV:");
                          v107 = 45;
                          if (v106)
                          {
                            v107 = 43;
                          }

                          v104(3, "%c[%{public}s %{public}s]:%i Invalid protocol: %{public}@", v107, v251, v261, 226, v279);
                        }

                        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                        v108 = NFSharedLogGetLogger();
                        v33 = 4;
                        if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
                        {
                          v109 = object_getClass(v284);
                          if (class_isMetaClass(v109))
                          {
                            v110 = 43;
                          }

                          else
                          {
                            v110 = 45;
                          }

                          v111 = object_getClassName(v284);
                          v112 = sel_getName("initFromTLV:");
                          *buf = 67110146;
                          *&buf[4] = v110;
                          *&buf[8] = 2082;
                          *&buf[10] = v111;
                          *&buf[18] = 2082;
                          *&buf[20] = v112;
                          *&buf[28] = 1024;
                          *&buf[30] = 226;
                          *&buf[34] = 2114;
                          *&buf[36] = v279;
                          v113 = v108;
                          goto LABEL_115;
                        }

                        goto LABEL_116;
                      }

                      LODWORD(v71) = v70[8];
                      if (v71 > 2)
                      {
                        if (v71 == 3)
                        {
                          v277 = v70;
                          v182 = v70 + 9;
                          v183 = [v69 bytes];
                          if ([v69 length] + v183 != v182)
                          {
                            LODWORD(v71) = *v182;
                            if (v71 > 2)
                            {
                              v70 = v277;
                              v68 = v279;
                              if (v71 == 3)
                              {
                                v72 = 0;
                                v71 = 8;
                                goto LABEL_66;
                              }

                              v138 = 9;
                              if (v71 == 4)
                              {
                                v72 = 0;
                                v71 = 9;
                                goto LABEL_66;
                              }
                            }

                            else
                            {
                              v70 = v277;
                              v68 = v279;
                              if (v71 == 1)
                              {
                                v72 = 0;
                                v71 = 6;
                                goto LABEL_66;
                              }

                              v138 = 9;
                              if (v71 == 2)
                              {
                                v72 = 0;
                                v71 = 7;
                                goto LABEL_66;
                              }
                            }

                            goto LABEL_262;
                          }

                          v72 = 0;
                          v71 = 5;
                        }

                        else
                        {
                          v138 = 8;
                          if (v71 != 4)
                          {
                            goto LABEL_262;
                          }

                          v275 = v70;
                          v161 = v70 + 9;
                          v162 = [v69 bytes];
                          if ([v69 length] + v162 != v161)
                          {
                            LODWORD(v71) = *v161;
                            if (v71 > 2)
                            {
                              v70 = v275;
                              v68 = v279;
                              if (v71 == 3)
                              {
                                v72 = 0;
                                v71 = 18;
                                goto LABEL_66;
                              }

                              v138 = 9;
                              if (v71 == 4)
                              {
                                v72 = 0;
                                v71 = 19;
                                goto LABEL_66;
                              }
                            }

                            else
                            {
                              v70 = v275;
                              v68 = v279;
                              if (v71 == 1)
                              {
                                v72 = 0;
                                v71 = 16;
                                goto LABEL_66;
                              }

                              v138 = 9;
                              if (v71 == 2)
                              {
                                v72 = 0;
                                v71 = 17;
                                goto LABEL_66;
                              }
                            }

                            goto LABEL_262;
                          }

                          v72 = 0;
                          v71 = 15;
                        }
                      }

                      else if (v71 == 1)
                      {
                        v276 = v70;
                        v180 = v70 + 9;
                        v181 = [v69 bytes];
                        if ([v69 length] + v181 != v180)
                        {
                          v71 = *v180;
                          if (*v180 > 2u)
                          {
                            v70 = v276;
                            v68 = v279;
                            if (v71 == 3)
                            {
                              v72 = 0;
                              v71 = 3;
                              goto LABEL_66;
                            }

                            v138 = 9;
                            if (v71 == 4)
                            {
                              v72 = 0;
                              v71 = 4;
                              goto LABEL_66;
                            }
                          }

                          else
                          {
                            v70 = v276;
                            v68 = v279;
                            if (v71 == 1)
                            {
                              v72 = 0;
                              goto LABEL_66;
                            }

                            v138 = 9;
                            if (v71 == 2)
                            {
                              v72 = 0;
                              v71 = 2;
                              goto LABEL_66;
                            }
                          }

                          goto LABEL_262;
                        }

                        v72 = 0;
                        v71 = 0;
                      }

                      else
                      {
                        v138 = 8;
                        if (v71 != 2)
                        {
                          goto LABEL_262;
                        }

                        v273 = v70;
                        v139 = v70 + 9;
                        v140 = [v69 bytes];
                        if ([v69 length] + v140 == v139)
                        {
                          v72 = 0;
                          v71 = 10;
                        }

                        else
                        {
                          LODWORD(v71) = *v139;
                          if (v71 > 2)
                          {
                            v70 = v273;
                            v68 = v279;
                            if (v71 == 3)
                            {
                              v72 = 0;
                              v71 = 13;
                              goto LABEL_66;
                            }

                            v138 = 9;
                            if (v71 == 4)
                            {
                              v72 = 0;
                              v71 = 14;
                              goto LABEL_66;
                            }
                          }

                          else
                          {
                            v70 = v273;
                            v68 = v279;
                            if (v71 == 1)
                            {
                              v72 = 0;
                              v71 = 11;
                              goto LABEL_66;
                            }

                            v138 = 9;
                            if (v71 == 2)
                            {
                              v72 = 0;
                              v71 = 12;
                              goto LABEL_66;
                            }
                          }

LABEL_262:
                          if (v71 == 6)
                          {
                            v220 = &v70[v138 + 1];
                            v221 = [v69 bytes];
                            if ([v69 length] + v221 == v220)
                            {
                              v72 = 0;
                              v71 = 20;
                            }

                            else
                            {
                              v222 = *v220;
                              if (v222 != 2)
                              {
                                v68 = v279;
                                if (v222 == 4)
                                {
                                  v72 = 0;
                                  v71 = 23;
                                  goto LABEL_66;
                                }

                                if (v222 == 3)
                                {
                                  v72 = 0;
                                  v71 = 22;
                                  goto LABEL_66;
                                }

                                goto LABEL_268;
                              }

                              v72 = 0;
                              v71 = 21;
                            }
                          }

                          else
                          {
LABEL_268:
                            memset(buf, 0, 48);
                            v223 = [v69 length];
                            v224 = [v69 bytes];
                            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                            v278 = NFLogGetLogger();
                            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                            v225 = NFSharedLogGetLogger();
                            if (os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
                            {
                              v226 = [v69 length];
                              *v296 = 136315906;
                              v297 = "PaceProtocolMapper";
                              v298 = 1024;
                              v299 = 205;
                              v300 = 2082;
                              v301 = "Failed mapping:";
                              v302 = 2048;
                              v303 = v226;
                              _os_log_impl(&_mh_execute_header, v225, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", v296, 0x26u);
                            }

                            if (v278)
                            {
                              v278(4, "%s:%i %s %lu bytes :", "PaceProtocolMapper", 205, "Failed mapping:", [v69 length]);
                            }

                            if (v223)
                            {
                              v227 = 0;
                              do
                              {
                                v228 = 0;
                                v229 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v227)];
                                do
                                {
                                  v230 = v224[v227++];
                                  v231 = sprintf(v229, "0x%02X ", v230);
                                  if (v228 > 6)
                                  {
                                    break;
                                  }

                                  v229 += v231;
                                  ++v228;
                                }

                                while (v227 < v223);
                                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                                v232 = NFSharedLogGetLogger();
                                if (os_log_type_enabled(v232, OS_LOG_TYPE_ERROR))
                                {
                                  *v296 = 136446210;
                                  v297 = buf;
                                  _os_log_impl(&_mh_execute_header, v232, OS_LOG_TYPE_ERROR, "%{public}s", v296, 0xCu);
                                }

                                v3 = v286;
                                if (v278)
                                {
                                  v278(4, "%s", buf);
                                }
                              }

                              while (v227 < v223);
                            }

                            v71 = -1;
                            v72 = 1;
                          }
                        }
                      }

                      v68 = v279;
                      goto LABEL_66;
                    }
                  }

LABEL_61:
                  v27 = 0;
                  goto LABEL_120;
                }

                v52 = [ChipAuthenticationInfo alloc];
                v35 = v12;
                if (!v52)
                {
                  goto LABEL_61;
                }

                v292.receiver = v52;
                v292.super_class = ChipAuthenticationInfo;
                v284 = objc_msgSendSuper2(&v292, "initWithType:", 1);
                if (!v284)
                {
                  goto LABEL_61;
                }

                [v35 children];
                v54 = v53 = v35;
                v55 = [v54 count];

                v268 = v55;
                v281 = v53;
                if (v55 - 4 <= 0xFFFFFFFD)
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v56 = NFLogGetLogger();
                  if (v56)
                  {
                    v57 = v56;
                    v58 = object_getClass(v284);
                    v59 = class_isMetaClass(v58);
                    v60 = object_getClassName(v284);
                    v258 = sel_getName("initFromTLV:");
                    v61 = 45;
                    if (v59)
                    {
                      v61 = 43;
                    }

                    v57(3, "%c[%{public}s %{public}s]:%i Unexpected # of elements in sequence", v61, v60, v258, 343);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v45 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                  {
                    v62 = object_getClass(v284);
                    v63 = v45;
                    if (class_isMetaClass(v62))
                    {
                      v64 = 43;
                    }

                    else
                    {
                      v64 = 45;
                    }

                    v65 = object_getClassName(v284);
                    v66 = sel_getName("initFromTLV:");
                    *buf = 67109890;
                    *&buf[4] = v64;
                    v45 = v63;
                    *&buf[8] = 2082;
                    *&buf[10] = v65;
                    *&buf[18] = 2082;
                    *&buf[20] = v66;
                    *&buf[28] = 1024;
                    *&buf[30] = 343;
                    v51 = v63;
LABEL_59:
                    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected # of elements in sequence", buf, 0x22u);
                  }

LABEL_60:
                  v27 = 0;
                  v35 = v281;
                  goto LABEL_119;
                }

                v86 = [v53 children];
                v87 = [v86 objectAtIndex:0];

                v88 = [v87 value];
                v272 = v88;
                v279 = v87;
                v280 = 3;
                if ([v88 length] != 9 && objc_msgSend(v88, "length") != 10 || (v89 = objc_msgSend(v88, "bytes"), *v89 != 0x3020207007F0004))
                {
                  v90 = -1;
                  v91 = 1;
                  goto LABEL_83;
                }

                v141 = v89[8];
                if (v141 == 2)
                {
                  v142 = v87;
                  v163 = v89 + 9;
                  v164 = [v88 bytes];
                  if ([v88 length] + v164 == v163)
                  {
                    v91 = 0;
                    v90 = 5;
                    goto LABEL_210;
                  }

                  v165 = *v163;
                  if (v165 > 2)
                  {
                    v87 = v142;
                    if (v165 == 3)
                    {
                      v91 = 0;
                      v90 = 8;
                      goto LABEL_83;
                    }

                    if (v165 == 4)
                    {
                      v91 = 0;
                      v90 = 9;
                      goto LABEL_83;
                    }
                  }

                  else
                  {
                    v87 = v142;
                    if (v165 == 1)
                    {
                      v91 = 0;
                      v90 = 6;
                      goto LABEL_83;
                    }

                    if (v165 == 2)
                    {
                      v91 = 0;
                      v90 = 7;
                      goto LABEL_83;
                    }
                  }
                }

                else if (v141 == 1)
                {
                  v142 = v87;
                  v143 = v89 + 9;
                  v144 = [v88 bytes];
                  if ([v88 length] + v144 != v143)
                  {
                    v90 = *v143;
                    if (*v143 > 2u)
                    {
                      v87 = v142;
                      if (v90 == 3)
                      {
                        v91 = 0;
                        v90 = 3;
                        goto LABEL_83;
                      }

                      if (v90 == 4)
                      {
                        v91 = 0;
                        v90 = 4;
                        goto LABEL_83;
                      }
                    }

                    else
                    {
                      v87 = v142;
                      if (v90 == 1)
                      {
                        v91 = 0;
                        goto LABEL_83;
                      }

                      if (v90 == 2)
                      {
                        v91 = 0;
                        v90 = 2;
                        goto LABEL_83;
                      }
                    }

                    goto LABEL_217;
                  }

                  v91 = 0;
                  v90 = 0;
LABEL_210:
                  v87 = v142;
                  goto LABEL_83;
                }

LABEL_217:
                memset(buf, 0, 48);
                v196 = [v88 length];
                v197 = [v88 bytes];
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v198 = NFLogGetLogger();
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v199 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
                {
                  v200 = [v272 length];
                  *v296 = 136315906;
                  v297 = "ChipAuthProtocolMapper";
                  v298 = 1024;
                  v299 = 329;
                  v300 = 2082;
                  v301 = "Failed mapping:";
                  v302 = 2048;
                  v303 = v200;
                  _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", v296, 0x26u);
                }

                if (v198)
                {
                  v198(4, "%s:%i %s %lu bytes :", "ChipAuthProtocolMapper", 329, "Failed mapping:", [v272 length]);
                }

                if (v196)
                {
                  v201 = 0;
                  do
                  {
                    v202 = 0;
                    v203 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v201)];
                    do
                    {
                      v204 = v197[v201++];
                      v205 = sprintf(v203, "0x%02X ", v204);
                      if (v202 > 6)
                      {
                        break;
                      }

                      v203 += v205;
                      ++v202;
                    }

                    while (v201 < v196);
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v206 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
                    {
                      *v296 = 136446210;
                      v297 = buf;
                      _os_log_impl(&_mh_execute_header, v206, OS_LOG_TYPE_ERROR, "%{public}s", v296, 0xCu);
                    }

                    if (v198)
                    {
                      v198(4, "%s", buf);
                    }
                  }

                  while (v201 < v196);
                }

                v90 = -1;
                v91 = 1;
                v3 = v286;
                v87 = v279;
LABEL_83:

                v92 = [v87 tag];
                if ((v91 & 1) == 0 && v92 == 6)
                {
                  if (v90 == 5 || !v90)
                  {
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v93 = NFLogGetLogger();
                    if (v93)
                    {
                      v94 = v93;
                      v95 = object_getClass(v284);
                      v96 = class_isMetaClass(v95);
                      v97 = object_getClassName(v284);
                      v260 = sel_getName("initFromTLV:");
                      v98 = 45;
                      if (v96)
                      {
                        v98 = 43;
                      }

                      v94(6, "%c[%{public}s %{public}s]:%i DomainParameterInfo found", v98, v97, v260, 354);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v80 = NFSharedLogGetLogger();
                    v33 = 3;
                    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                    {
                      v99 = object_getClass(v284);
                      if (class_isMetaClass(v99))
                      {
                        v100 = 43;
                      }

                      else
                      {
                        v100 = 45;
                      }

                      v101 = object_getClassName(v284);
                      v102 = sel_getName("initFromTLV:");
                      *buf = 67109890;
                      *&buf[4] = v100;
                      *&buf[8] = 2082;
                      *&buf[10] = v101;
                      *&buf[18] = 2082;
                      *&buf[20] = v102;
                      *&buf[28] = 1024;
                      *&buf[30] = 354;
                      v85 = v80;
LABEL_96:
                      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i DomainParameterInfo found", buf, 0x22u);
                    }

LABEL_117:
                    v27 = 0;
                    v35 = v281;
                    goto LABEL_118;
                  }

                  v145 = [v281 children];
                  v146 = [v145 objectAtIndex:1];

                  v274 = v146;
                  if ([v146 tag]!= 2)
                  {
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v170 = NFLogGetLogger();
                    if (v170)
                    {
                      v171 = v170;
                      v172 = object_getClass(v284);
                      v173 = class_isMetaClass(v172);
                      v174 = object_getClassName(v284);
                      v265 = sel_getName("initFromTLV:");
                      v175 = 45;
                      if (v173)
                      {
                        v175 = 43;
                      }

                      v171(3, "%c[%{public}s %{public}s]:%i Incorrect type for version", v175, v174, v265, 360);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v154 = NFSharedLogGetLogger();
                    if (!os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_247;
                    }

                    v176 = object_getClass(v284);
                    if (class_isMetaClass(v176))
                    {
                      v177 = 43;
                    }

                    else
                    {
                      v177 = 45;
                    }

                    v178 = object_getClassName(v284);
                    v179 = sel_getName("initFromTLV:");
                    *buf = 67109890;
                    *&buf[4] = v177;
                    *&buf[8] = 2082;
                    *&buf[10] = v178;
                    *&buf[18] = 2082;
                    *&buf[20] = v179;
                    *&buf[28] = 1024;
                    *&buf[30] = 360;
                    v159 = v154;
                    v160 = "%c[%{public}s %{public}s]:%i Incorrect type for version";
                    goto LABEL_205;
                  }

                  v147 = [v146 valueAsUnsignedLong];
                  if (v147 - 4 > 0xFFFFFFFC)
                  {
                    if (v268 == 3)
                    {
                      v195 = [v281 children];
                      v154 = [v195 objectAtIndex:2];
                    }

                    else
                    {
                      v154 = 0;
                    }

                    v217 = v284;
                    v284[2] = v90;
                    v218 = [NSNumber numberWithUnsignedLong:[v154 valueAsUnsignedLong]];
                    v219 = &OBJC_IVAR___ChipAuthenticationInfo__protocol;
LABEL_290:
                    v233 = v219[1];
                    v234 = *&v217[v233];
                    *&v217[v233] = v218;

                    v27 = v217;
                    goto LABEL_291;
                  }

                  v148 = v147;
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v149 = NFLogGetLogger();
                  if (v149)
                  {
                    v150 = v149;
                    v151 = object_getClass(v284);
                    v152 = class_isMetaClass(v151);
                    v254 = object_getClassName(v284);
                    v264 = sel_getName("initFromTLV:");
                    v153 = 45;
                    if (v152)
                    {
                      v153 = 43;
                    }

                    v150(4, "%c[%{public}s %{public}s]:%i Unexpected version: %lu", v153, v254, v264, 368, v148);
                  }

                  v270 = v148;
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v154 = NFSharedLogGetLogger();
                  if (!os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_247;
                  }

                  v155 = object_getClass(v284);
                  if (class_isMetaClass(v155))
                  {
                    v156 = 43;
                  }

                  else
                  {
                    v156 = 45;
                  }

                  v157 = object_getClassName(v284);
                  v158 = sel_getName("initFromTLV:");
                  *buf = 67110146;
                  *&buf[4] = v156;
                  *&buf[8] = 2082;
                  *&buf[10] = v157;
                  *&buf[18] = 2082;
                  *&buf[20] = v158;
                  *&buf[28] = 1024;
                  *&buf[30] = 368;
                  *&buf[34] = 2048;
                  *&buf[36] = v270;
                  v159 = v154;
                  v160 = "%c[%{public}s %{public}s]:%i Unexpected version: %lu";
LABEL_245:
                  v194 = 44;
LABEL_246:
                  _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_ERROR, v160, buf, v194);
                  goto LABEL_247;
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v114 = NFLogGetLogger();
                if (v114)
                {
                  v115 = v114;
                  v116 = object_getClass(v284);
                  v117 = class_isMetaClass(v116);
                  v252 = object_getClassName(v284);
                  v262 = sel_getName("initFromTLV:");
                  v118 = 45;
                  if (v117)
                  {
                    v118 = 43;
                  }

                  v115(3, "%c[%{public}s %{public}s]:%i Invalid protocol: %{public}@", v118, v252, v262, 350, v279);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v108 = NFSharedLogGetLogger();
                v33 = 3;
                if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
                {
                  v119 = object_getClass(v284);
                  if (class_isMetaClass(v119))
                  {
                    v120 = 43;
                  }

                  else
                  {
                    v120 = 45;
                  }

                  v121 = object_getClassName(v284);
                  v122 = sel_getName("initFromTLV:");
                  *buf = 67110146;
                  *&buf[4] = v120;
                  *&buf[8] = 2082;
                  *&buf[10] = v121;
                  *&buf[18] = 2082;
                  *&buf[20] = v122;
                  *&buf[28] = 1024;
                  *&buf[30] = 350;
                  *&buf[34] = 2114;
                  *&buf[36] = v279;
                  v113 = v108;
LABEL_115:
                  _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid protocol: %{public}@", buf, 0x2Cu);
                }

LABEL_116:
                v80 = v108;
                goto LABEL_117;
              }
            }

LABEL_31:
            v11 = v11 + 1;
          }

          while (v11 != v9);
          v235 = [obj countByEnumeratingWithState:&v288 objects:v295 count:16];
          v9 = v235;
          if (!v235)
          {
LABEL_304:

            v236 = v282;
            goto LABEL_320;
          }
        }
      }
    }
  }

  memset(buf, 0, 48);
  v237 = [v285 length];
  v238 = [v285 bytes];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v239 = NFLogGetLogger();
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v240 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
  {
    v241 = [v285 length];
    *v296 = 136315906;
    v297 = "+[SecurityInfo securityInfoArrayFromData:]";
    v298 = 1024;
    v299 = 78;
    v300 = 2082;
    v301 = "Unexpected CardAccess response";
    v302 = 2048;
    v303 = v241;
    _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v296, 0x26u);
  }

  if (v239)
  {
    v239(6, "%s:%i %s %lu bytes :", "+[SecurityInfo securityInfoArrayFromData:]", 78, "Unexpected CardAccess response", [v285 length]);
  }

  if (v237)
  {
    v242 = 0;
    do
    {
      v243 = 0;
      v244 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v242)];
      do
      {
        v245 = v238[v242++];
        v246 = sprintf(v244, "0x%02X ", v245);
        if (v243 > 6)
        {
          break;
        }

        v244 += v246;
        ++v243;
      }

      while (v242 < v237);
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v247 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v247, OS_LOG_TYPE_DEFAULT))
      {
        *v296 = 136446210;
        v297 = buf;
        _os_log_impl(&_mh_execute_header, v247, OS_LOG_TYPE_DEFAULT, "%{public}s", v296, 0xCu);
      }

      if (v239)
      {
        v239(6, "%s", buf);
      }
    }

    while (v242 < v237);
  }

  v236 = 0;
LABEL_320:

  return v236;
}

void sub_1002381D0(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SESHAT_ALLOCATE_SLOT", &unk_1002E8B7A, buf, 2u);
  }

  v60 = 0;
  v59 = -1;
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
      if (*(a1 + 40))
      {
        v31 = "YES";
      }

      else
      {
        v31 = "NO";
      }

      v32 = 43;
      if (!isMetaClass)
      {
        v32 = 45;
      }

      v26(6, "%c[%{public}s %{public}s]:%i Allocate slot %d, authorizer %d, token : %s", v32, ClassName, Name, 75, *(a1 + 64), *(a1 + 65), v31);
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
      v38 = *(a1 + 64);
      v39 = *(a1 + 65);
      if (*(a1 + 40))
      {
        v40 = "YES";
      }

      else
      {
        v40 = "NO";
      }

      *buf = 67110658;
      v66 = v35;
      v67 = 2082;
      v68 = v36;
      v69 = 2082;
      v70 = v37;
      v71 = 1024;
      v72 = 75;
      v73 = 1024;
      *v74 = v38;
      *&v74[4] = 1024;
      *&v74[6] = v39;
      v75 = 2080;
      v76 = v40;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Allocate slot %d, authorizer %d, token : %s", buf, 0x38u);
    }

    sub_1000167B0(*(*(a1 + 32) + 176));
    v41 = [*(a1 + 32) embeddedSecureElementWrapper];

    if (v41)
    {
      v42 = [*(a1 + 32) embeddedSecureElementWrapper];
      v43 = *(a1 + 64);
      v44 = *(a1 + 65);
      v45 = *(a1 + 40);
      v58 = 0;
      v46 = [v42 allocateSlot:v43 authorizingUser:v44 authorizingUserToken:v45 outToken:&v58 outWriteCount:&v60 appletResult:&v59];
      v20 = v58;

      v47 = [v46 code];
      if (!v46)
      {
        v19 = 0;
LABEL_43:
        sub_1000167B0(*(*(a1 + 32) + 176));
        (*(*(a1 + 48) + 16))();
        v56 = NFSharedSignpostLog();
        if (os_signpost_enabled(v56))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SESHAT_ALLOCATE_SLOT", &unk_1002E8B7A, buf, 2u);
        }

        [*(a1 + 32) maybeTTR:v47 appletResult:v59];
        goto LABEL_17;
      }

      v57 = [NSError alloc];
      v48 = [NSString stringWithUTF8String:"nfcd"];
      v49 = [v46 code];
      v63[0] = NSLocalizedDescriptionKey;
      if ([v46 code] > 75)
      {
        v50 = 76;
      }

      else
      {
        v50 = [v46 code];
      }

      v52 = [NSString stringWithUTF8String:off_10031C9C0[v50]];
      v64[0] = v52;
      v64[1] = v46;
      v63[1] = NSUnderlyingErrorKey;
      v63[2] = @"Line";
      v64[2] = &off_100336678;
      v63[3] = @"Method";
      v53 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v64[3] = v53;
      v63[4] = NSDebugDescriptionErrorKey;
      v54 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 88];
      v64[4] = v54;
      v55 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:5];
      v19 = [v57 initWithDomain:v48 code:v49 userInfo:v55];
    }

    else
    {
      v51 = [NSError alloc];
      v48 = [NSString stringWithUTF8String:"nfcd"];
      v61[0] = NSLocalizedDescriptionKey;
      v52 = [NSString stringWithUTF8String:"No resources"];
      v62[0] = v52;
      v62[1] = &off_100336690;
      v61[1] = @"Line";
      v61[2] = @"Method";
      v53 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v62[2] = v53;
      v61[3] = NSDebugDescriptionErrorKey;
      v54 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 91];
      v62[3] = v54;
      v55 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:4];
      v47 = 34;
      v19 = [v51 initWithDomain:v48 code:34 userInfo:v55];
      v20 = 0;
    }

    goto LABEL_43;
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

    v4(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v10, v7, v8, 73, v9);
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
    v66 = v13;
    v67 = 2082;
    v68 = v14;
    v69 = 2082;
    v70 = v15;
    v71 = 1024;
    v72 = 73;
    v73 = 2114;
    *v74 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v77[0] = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithUTF8String:"Session not active"];
    v78[0] = v20;
    v78[1] = &off_100336660;
    v77[1] = @"Line";
    v77[2] = @"Method";
    v21 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v78[2] = v21;
    v77[3] = NSDebugDescriptionErrorKey;
    v22 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 72];
    v78[3] = v22;
    v23 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:4];
    v24 = [v18 initWithDomain:v19 code:54 userInfo:v23];
    (*(v17 + 16))(v17, 54, 0, 0, v24);

LABEL_17:
  }
}

void sub_100238BE0(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SESHAT_DERIVE", &unk_1002E8B7A, buf, 2u);
  }

  v58 = 0;
  v57 = -1;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    if (*(a1 + 40))
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v4(6, "%c[%{public}s %{public}s]:%i Derive slot %d, hash : %s", v10, ClassName, Name, 123, *(a1 + 64), v9);
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
    v16 = *(a1 + 64);
    if (*(a1 + 40))
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    *buf = 67110402;
    v66 = v13;
    v67 = 2082;
    v68 = v14;
    v69 = 2082;
    v70 = v15;
    v71 = 1024;
    v72 = 123;
    v73 = 1024;
    *v74 = v16;
    *&v74[4] = 2080;
    *&v74[6] = v17;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Derive slot %d, hash : %s", buf, 0x32u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    sub_1000167B0(*(*(a1 + 32) + 176));
    v40 = [*(a1 + 32) embeddedSecureElementWrapper];

    if (v40)
    {
      v41 = [*(a1 + 32) embeddedSecureElementWrapper];
      v42 = *(a1 + 64);
      v43 = *(a1 + 40);
      v56 = 0;
      v44 = [v41 derive:v42 userHash:v43 outData:&v56 outWriteCount:&v58 appletResult:&v57];
      v35 = v56;

      v45 = [v44 code];
      if (!v44)
      {
        v34 = 0;
LABEL_43:
        sub_1000167B0(*(*(a1 + 32) + 176));
        (*(*(a1 + 48) + 16))();
        v54 = NFSharedSignpostLog();
        if (os_signpost_enabled(v54))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SESHAT_DERIVE", &unk_1002E8B7A, buf, 2u);
        }

        [*(a1 + 32) maybeTTR:v45 appletResult:v57];
        goto LABEL_32;
      }

      v55 = [NSError alloc];
      v46 = [NSString stringWithUTF8String:"nfcd"];
      v47 = [v44 code];
      v61[0] = NSLocalizedDescriptionKey;
      if ([v44 code] > 75)
      {
        v48 = 76;
      }

      else
      {
        v48 = [v44 code];
      }

      v50 = [NSString stringWithUTF8String:off_10031C9C0[v48]];
      v62[0] = v50;
      v62[1] = v44;
      v61[1] = NSUnderlyingErrorKey;
      v61[2] = @"Line";
      v62[2] = &off_1003366C0;
      v61[3] = @"Method";
      v51 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v62[3] = v51;
      v61[4] = NSDebugDescriptionErrorKey;
      v52 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 141];
      v62[4] = v52;
      v53 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:5];
      v34 = [v55 initWithDomain:v46 code:v47 userInfo:v53];
    }

    else
    {
      v49 = [NSError alloc];
      v46 = [NSString stringWithUTF8String:"nfcd"];
      v59[0] = NSLocalizedDescriptionKey;
      v50 = [NSString stringWithUTF8String:"No resources"];
      v60[0] = v50;
      v60[1] = &off_1003366D8;
      v59[1] = @"Line";
      v59[2] = @"Method";
      v51 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v60[2] = v51;
      v59[3] = NSDebugDescriptionErrorKey;
      v52 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 144];
      v60[3] = v52;
      v53 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:4];
      v45 = 34;
      v34 = [v49 initWithDomain:v46 code:34 userInfo:v53];
      v35 = 0;
    }

    goto LABEL_43;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFLogGetLogger();
  if (v18)
  {
    v19 = v18;
    v20 = object_getClass(*(a1 + 32));
    v21 = class_isMetaClass(v20);
    v22 = object_getClassName(*(a1 + 32));
    v23 = sel_getName(*(a1 + 56));
    v24 = [*(a1 + 32) sessionUID];
    v25 = 45;
    if (v21)
    {
      v25 = 43;
    }

    v19(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v25, v22, v23, 129, v24);
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
    v30 = sel_getName(*(a1 + 56));
    v31 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v66 = v28;
    v67 = 2082;
    v68 = v29;
    v69 = 2082;
    v70 = v30;
    v71 = 1024;
    v72 = 129;
    v73 = 2114;
    *v74 = v31;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v32 = *(a1 + 48);
  if (v32)
  {
    v33 = [NSError alloc];
    v34 = [NSString stringWithUTF8String:"nfcd"];
    v63[0] = NSLocalizedDescriptionKey;
    v35 = [NSString stringWithUTF8String:"Session not active"];
    v64[0] = v35;
    v64[1] = &off_1003366A8;
    v63[1] = @"Line";
    v63[2] = @"Method";
    v36 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v64[2] = v36;
    v63[3] = NSDebugDescriptionErrorKey;
    v37 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 128];
    v64[3] = v37;
    v38 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:4];
    v39 = [v33 initWithDomain:v34 code:54 userInfo:v38];
    (*(v32 + 16))(v32, 54, 0, 0, v39);

LABEL_32:
  }
}

void sub_1002395D0(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SESHAT_RESET_COUNTER", &unk_1002E8B7A, &buf, 2u);
  }

  v55 = 0;
  v54 = -1;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    if (*(a1 + 40))
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v4(6, "%c[%{public}s %{public}s]:%i Reset counter %d, token : %s", v10, ClassName, Name, 175, *(a1 + 64), v9);
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
    v16 = *(a1 + 64);
    if (*(a1 + 40))
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    buf = 67110402;
    v63 = v13;
    v64 = 2082;
    v65 = v14;
    v66 = 2082;
    v67 = v15;
    v68 = 1024;
    v69 = 175;
    v70 = 1024;
    *v71 = v16;
    *&v71[4] = 2080;
    *&v71[6] = v17;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Reset counter %d, token : %s", &buf, 0x32u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    sub_1000167B0(*(*(a1 + 32) + 176));
    v40 = [*(a1 + 32) embeddedSecureElementWrapper];

    if (v40)
    {
      v41 = [*(a1 + 32) embeddedSecureElementWrapper];
      v42 = [v41 resetCounter:*(a1 + 64) userToken:*(a1 + 40) outWriteCount:&v55 appletResult:&v54];

      v43 = [v42 code];
      if (!v42)
      {
        v34 = 0;
LABEL_43:
        sub_1000167B0(*(*(a1 + 32) + 176));
        (*(*(a1 + 48) + 16))();
        v52 = NFSharedSignpostLog();
        if (os_signpost_enabled(v52))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SESHAT_RESET_COUNTER", &unk_1002E8B7A, &buf, 2u);
        }

        [*(a1 + 32) maybeTTR:v43 appletResult:v54];
        goto LABEL_32;
      }

      v53 = [NSError alloc];
      v44 = [NSString stringWithUTF8String:"nfcd"];
      v45 = [v42 code];
      v58[0] = NSLocalizedDescriptionKey;
      if ([v42 code] > 75)
      {
        v46 = 76;
      }

      else
      {
        v46 = [v42 code];
      }

      v48 = [NSString stringWithUTF8String:off_10031C9C0[v46]];
      v59[0] = v48;
      v59[1] = v42;
      v58[1] = NSUnderlyingErrorKey;
      v58[2] = @"Line";
      v59[2] = &off_100336708;
      v58[3] = @"Method";
      v49 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v59[3] = v49;
      v58[4] = NSDebugDescriptionErrorKey;
      v50 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 192];
      v59[4] = v50;
      v51 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:5];
      v34 = [v53 initWithDomain:v44 code:v45 userInfo:v51];
    }

    else
    {
      v47 = [NSError alloc];
      v44 = [NSString stringWithUTF8String:"nfcd"];
      v56[0] = NSLocalizedDescriptionKey;
      v48 = [NSString stringWithUTF8String:"No resources"];
      v57[0] = v48;
      v57[1] = &off_100336720;
      v56[1] = @"Line";
      v56[2] = @"Method";
      v49 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v57[2] = v49;
      v56[3] = NSDebugDescriptionErrorKey;
      v50 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 195];
      v57[3] = v50;
      v51 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:4];
      v34 = [v47 initWithDomain:v44 code:34 userInfo:v51];
      v43 = 34;
    }

    goto LABEL_43;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFLogGetLogger();
  if (v18)
  {
    v19 = v18;
    v20 = object_getClass(*(a1 + 32));
    v21 = class_isMetaClass(v20);
    v22 = object_getClassName(*(a1 + 32));
    v23 = sel_getName(*(a1 + 56));
    v24 = [*(a1 + 32) sessionUID];
    v25 = 45;
    if (v21)
    {
      v25 = 43;
    }

    v19(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v25, v22, v23, 181, v24);
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
    v30 = sel_getName(*(a1 + 56));
    v31 = [*(a1 + 32) sessionUID];
    buf = 67110146;
    v63 = v28;
    v64 = 2082;
    v65 = v29;
    v66 = 2082;
    v67 = v30;
    v68 = 1024;
    v69 = 181;
    v70 = 2114;
    *v71 = v31;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", &buf, 0x2Cu);
  }

  v32 = *(a1 + 48);
  if (v32)
  {
    v33 = [NSError alloc];
    v34 = [NSString stringWithUTF8String:"nfcd"];
    v60[0] = NSLocalizedDescriptionKey;
    v35 = [NSString stringWithUTF8String:"Session not active"];
    v61[0] = v35;
    v61[1] = &off_1003366F0;
    v60[1] = @"Line";
    v60[2] = @"Method";
    v36 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v61[2] = v36;
    v60[3] = NSDebugDescriptionErrorKey;
    v37 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 180];
    v61[3] = v37;
    v38 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:4];
    v39 = [v33 initWithDomain:v34 code:54 userInfo:v38];
    (*(v32 + 16))(v32, 54, 0, v39);

LABEL_32:
  }
}

void sub_100239FA8(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SESHAT_AUTH_UPDATE", &unk_1002E8B7A, &buf, 2u);
  }

  v57 = 0;
  v56 = -1;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    if (*(a1 + 64))
    {
      v9 = "Authorize";
    }

    else
    {
      v9 = "De-authorize";
    }

    if (*(a1 + 40))
    {
      v10 = "YES";
    }

    else
    {
      v10 = "NO";
    }

    v11 = 43;
    if (!isMetaClass)
    {
      v11 = 45;
    }

    v4(6, "%c[%{public}s %{public}s]:%i %s update, slot %d, token : %s", v11, ClassName, Name, 227, v9, *(a1 + 65), v10);
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
    v16 = sel_getName(*(a1 + 56));
    if (*(a1 + 64))
    {
      v17 = "Authorize";
    }

    else
    {
      v17 = "De-authorize";
    }

    v18 = *(a1 + 65);
    if (*(a1 + 40))
    {
      v19 = "YES";
    }

    else
    {
      v19 = "NO";
    }

    buf = 67110658;
    v65 = v14;
    v66 = 2082;
    v67 = v15;
    v68 = 2082;
    v69 = v16;
    v70 = 1024;
    v71 = 227;
    v72 = 2080;
    v73 = v17;
    v74 = 1024;
    v75 = v18;
    v76 = 2080;
    v77 = v19;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %s update, slot %d, token : %s", &buf, 0x3Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    sub_1000167B0(*(*(a1 + 32) + 176));
    v42 = [*(a1 + 32) embeddedSecureElementWrapper];

    if (v42)
    {
      v43 = [*(a1 + 32) embeddedSecureElementWrapper];
      v44 = [v43 authorizeUpdate:*(a1 + 64) slotIndex:*(a1 + 65) userToken:*(a1 + 40) outWriteCount:&v57 appletResult:&v56];

      v45 = [v44 code];
      if (!v44)
      {
        v36 = 0;
LABEL_49:
        sub_1000167B0(*(*(a1 + 32) + 176));
        (*(*(a1 + 48) + 16))();
        v54 = NFSharedSignpostLog();
        if (os_signpost_enabled(v54))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SESHAT_AUTH_UPDATE", &unk_1002E8B7A, &buf, 2u);
        }

        [*(a1 + 32) maybeTTR:v45 appletResult:v56];
        goto LABEL_38;
      }

      v55 = [NSError alloc];
      v46 = [NSString stringWithUTF8String:"nfcd"];
      v47 = [v44 code];
      v60[0] = NSLocalizedDescriptionKey;
      if ([v44 code] > 75)
      {
        v48 = 76;
      }

      else
      {
        v48 = [v44 code];
      }

      v50 = [NSString stringWithUTF8String:off_10031C9C0[v48]];
      v61[0] = v50;
      v61[1] = v44;
      v60[1] = NSUnderlyingErrorKey;
      v60[2] = @"Line";
      v61[2] = &off_100336750;
      v60[3] = @"Method";
      v51 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v61[3] = v51;
      v60[4] = NSDebugDescriptionErrorKey;
      v52 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 244];
      v61[4] = v52;
      v53 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:5];
      v36 = [v55 initWithDomain:v46 code:v47 userInfo:v53];
    }

    else
    {
      v49 = [NSError alloc];
      v46 = [NSString stringWithUTF8String:"nfcd"];
      v58[0] = NSLocalizedDescriptionKey;
      v50 = [NSString stringWithUTF8String:"No resources"];
      v59[0] = v50;
      v59[1] = &off_100336768;
      v58[1] = @"Line";
      v58[2] = @"Method";
      v51 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v59[2] = v51;
      v58[3] = NSDebugDescriptionErrorKey;
      v52 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 247];
      v59[3] = v52;
      v53 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:4];
      v36 = [v49 initWithDomain:v46 code:34 userInfo:v53];
      v45 = 34;
    }

    goto LABEL_49;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFLogGetLogger();
  if (v20)
  {
    v21 = v20;
    v22 = object_getClass(*(a1 + 32));
    v23 = class_isMetaClass(v22);
    v24 = object_getClassName(*(a1 + 32));
    v25 = sel_getName(*(a1 + 56));
    v26 = [*(a1 + 32) sessionUID];
    v27 = 45;
    if (v23)
    {
      v27 = 43;
    }

    v21(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v27, v24, v25, 233, v26);
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
    v32 = sel_getName(*(a1 + 56));
    v33 = [*(a1 + 32) sessionUID];
    buf = 67110146;
    v65 = v30;
    v66 = 2082;
    v67 = v31;
    v68 = 2082;
    v69 = v32;
    v70 = 1024;
    v71 = 233;
    v72 = 2114;
    v73 = v33;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", &buf, 0x2Cu);
  }

  v34 = *(a1 + 48);
  if (v34)
  {
    v35 = [NSError alloc];
    v36 = [NSString stringWithUTF8String:"nfcd"];
    v62[0] = NSLocalizedDescriptionKey;
    v37 = [NSString stringWithUTF8String:"Session not active"];
    v63[0] = v37;
    v63[1] = &off_100336738;
    v62[1] = @"Line";
    v62[2] = @"Method";
    v38 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v63[2] = v38;
    v62[3] = NSDebugDescriptionErrorKey;
    v39 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 232];
    v63[3] = v39;
    v40 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:4];
    v41 = [v35 initWithDomain:v36 code:54 userInfo:v40];
    (*(v34 + 16))(v34, 54, 0, v41);

LABEL_38:
  }
}

void sub_10023A988(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SESHAT_DELETE_SLOT", &unk_1002E8B7A, &buf, 2u);
  }

  v53 = 0;
  v52 = -1;
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

    v4(6, "%c[%{public}s %{public}s]:%i Delete counter %d", v9, ClassName, Name, 277, *(a1 + 56));
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
    v15 = *(a1 + 56);
    buf = 67110146;
    v61 = v12;
    v62 = 2082;
    v63 = v13;
    v64 = 2082;
    v65 = v14;
    v66 = 1024;
    v67 = 277;
    v68 = 1024;
    LODWORD(v69) = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Delete counter %d", &buf, 0x28u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v38 = [*(a1 + 32) embeddedSecureElementWrapper];

    if (v38)
    {
      v39 = [*(a1 + 32) embeddedSecureElementWrapper];
      v40 = [v39 deleteSlot:*(a1 + 56) outWriteCount:&v53 appletResult:&v52];

      v41 = [v40 code];
      if (!v40)
      {
        v32 = 0;
LABEL_37:
        (*(*(a1 + 40) + 16))();
        v51 = NFSharedSignpostLog();
        if (os_signpost_enabled(v51))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SESHAT_DELETE_SLOT", &unk_1002E8B7A, &buf, 2u);
        }

        [*(a1 + 32) maybeTTR:v41 appletResult:v52];
        goto LABEL_26;
      }

      v42 = [NSError alloc];
      v43 = [NSString stringWithUTF8String:"nfcd"];
      v44 = [v40 code];
      v56[0] = NSLocalizedDescriptionKey;
      if ([v40 code] > 75)
      {
        v45 = 76;
      }

      else
      {
        v45 = [v40 code];
      }

      v47 = [NSString stringWithUTF8String:off_10031C9C0[v45]];
      v57[0] = v47;
      v57[1] = v40;
      v56[1] = NSUnderlyingErrorKey;
      v56[2] = @"Line";
      v57[2] = &off_100336798;
      v56[3] = @"Method";
      v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v57[3] = v48;
      v56[4] = NSDebugDescriptionErrorKey;
      v49 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 292];
      v57[4] = v49;
      v50 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:5];
      v32 = [v42 initWithDomain:v43 code:v44 userInfo:v50];
    }

    else
    {
      v46 = [NSError alloc];
      v43 = [NSString stringWithUTF8String:"nfcd"];
      v54[0] = NSLocalizedDescriptionKey;
      v47 = [NSString stringWithUTF8String:"No resources"];
      v55[0] = v47;
      v55[1] = &off_1003367B0;
      v54[1] = @"Line";
      v54[2] = @"Method";
      v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v55[2] = v48;
      v54[3] = NSDebugDescriptionErrorKey;
      v49 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 295];
      v55[3] = v49;
      v50 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:4];
      v32 = [v46 initWithDomain:v43 code:34 userInfo:v50];
      v41 = 34;
    }

    goto LABEL_37;
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

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 283, v22);
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
    buf = 67110146;
    v61 = v26;
    v62 = 2082;
    v63 = v27;
    v64 = 2082;
    v65 = v28;
    v66 = 1024;
    v67 = 283;
    v68 = 2114;
    v69 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", &buf, 0x2Cu);
  }

  v30 = *(a1 + 40);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v58[0] = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v59[0] = v33;
    v59[1] = &off_100336780;
    v58[1] = @"Line";
    v58[2] = @"Method";
    v34 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v59[2] = v34;
    v58[3] = NSDebugDescriptionErrorKey;
    v35 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 282];
    v59[3] = v35;
    v36 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:4];
    v37 = [v31 initWithDomain:v32 code:54 userInfo:v36];
    (*(v30 + 16))(v30, 54, 0, v37);

LABEL_26:
  }
}

void sub_10023B2C0(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SESHAT_GET_DATA", &unk_1002E8B7A, buf, 2u);
  }

  v55 = 0;
  v53 = 0;
  v54 = 0;
  v52 = -1;
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

    v4(6, "%c[%{public}s %{public}s]:%i ", v8, ClassName, Name, 325);
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
    *buf = 67109890;
    v63 = v11;
    v64 = 2082;
    v65 = v12;
    v66 = 2082;
    v67 = v13;
    v68 = 1024;
    v69 = 325;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v36 = [*(a1 + 32) embeddedSecureElementWrapper];

    if (v36)
    {
      v37 = [*(a1 + 32) embeddedSecureElementWrapper];
      v51 = 0;
      v38 = [v37 getData:&v51 updateKUD:&v55 outWriteLimit:&v54 outWriteCount:&v53 appletResult:&v52];
      v31 = v51;

      v39 = [v38 code];
      if (!v38)
      {
        v30 = 0;
LABEL_37:
        (*(*(a1 + 40) + 16))();
        v48 = NFSharedSignpostLog();
        if (os_signpost_enabled(v48))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SESHAT_GET_DATA", &unk_1002E8B7A, buf, 2u);
        }

        [*(a1 + 32) maybeTTR:v39 appletResult:v52];
        goto LABEL_26;
      }

      v50 = [NSError alloc];
      v40 = [NSString stringWithUTF8String:"nfcd"];
      v41 = [v38 code];
      v58[0] = NSLocalizedDescriptionKey;
      if ([v38 code] > 75)
      {
        v42 = 76;
      }

      else
      {
        v42 = [v38 code];
      }

      v44 = [NSString stringWithUTF8String:off_10031C9C0[v42]];
      v59[0] = v44;
      v59[1] = v38;
      v58[1] = NSUnderlyingErrorKey;
      v58[2] = @"Line";
      v59[2] = &off_1003367E0;
      v58[3] = @"Method";
      v45 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v59[3] = v45;
      v58[4] = NSDebugDescriptionErrorKey;
      v46 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 342];
      v59[4] = v46;
      v47 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:5];
      v30 = [v50 initWithDomain:v40 code:v41 userInfo:v47];
    }

    else
    {
      v43 = [NSError alloc];
      v40 = [NSString stringWithUTF8String:"nfcd"];
      v56[0] = NSLocalizedDescriptionKey;
      v44 = [NSString stringWithUTF8String:"No resources"];
      v57[0] = v44;
      v57[1] = &off_1003367F8;
      v56[1] = @"Line";
      v56[2] = @"Method";
      v45 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v57[2] = v45;
      v56[3] = NSDebugDescriptionErrorKey;
      v46 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 345];
      v57[3] = v46;
      v47 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:4];
      v39 = 34;
      v30 = [v43 initWithDomain:v40 code:34 userInfo:v47];
      v31 = 0;
    }

    goto LABEL_37;
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

    v15(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v21, v18, v19, 331, v20);
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
    v63 = v24;
    v64 = 2082;
    v65 = v25;
    v66 = 2082;
    v67 = v26;
    v68 = 1024;
    v69 = 331;
    v70 = 2114;
    v71 = v27;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v28 = *(a1 + 40);
  if (v28)
  {
    v29 = [NSError alloc];
    v30 = [NSString stringWithUTF8String:"nfcd"];
    v60[0] = NSLocalizedDescriptionKey;
    v31 = [NSString stringWithUTF8String:"Session not active"];
    v61[0] = v31;
    v61[1] = &off_1003367C8;
    v60[1] = @"Line";
    v60[2] = @"Method";
    v32 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v61[2] = v32;
    v60[3] = NSDebugDescriptionErrorKey;
    v33 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 330];
    v61[3] = v33;
    v34 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:4];
    v35 = [v29 initWithDomain:v30 code:54 userInfo:v34];
    (*(v28 + 16))(v28, 54, 0, 0, 0, 0, v35);

LABEL_26:
  }
}

void sub_10023BC14(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SESHAT_GET_HASH", &unk_1002E8B7A, buf, 2u);
  }

  v52 = -1;
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

    v4(6, "%c[%{public}s %{public}s]:%i ", v8, ClassName, Name, 371);
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
    *buf = 67109890;
    v60 = v11;
    v61 = 2082;
    v62 = v12;
    v63 = 2082;
    v64 = v13;
    v65 = 1024;
    v66 = 371;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v36 = [*(a1 + 32) embeddedSecureElementWrapper];

    if (v36)
    {
      v37 = [*(a1 + 32) embeddedSecureElementWrapper];
      v51 = 0;
      v38 = [v37 getHash:&v51 appletResult:&v52];
      v31 = v51;

      v39 = [v38 code];
      if (!v38)
      {
        v30 = 0;
LABEL_37:
        (*(*(a1 + 40) + 16))();
        v48 = NFSharedSignpostLog();
        if (os_signpost_enabled(v48))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SESHAT_GET_HASH", &unk_1002E8B7A, buf, 2u);
        }

        [*(a1 + 32) maybeTTR:v39 appletResult:v52];
        goto LABEL_26;
      }

      v50 = [NSError alloc];
      v40 = [NSString stringWithUTF8String:"nfcd"];
      v41 = [v38 code];
      v55[0] = NSLocalizedDescriptionKey;
      if ([v38 code] > 75)
      {
        v42 = 76;
      }

      else
      {
        v42 = [v38 code];
      }

      v44 = [NSString stringWithUTF8String:off_10031C9C0[v42]];
      v56[0] = v44;
      v56[1] = v38;
      v55[1] = NSUnderlyingErrorKey;
      v55[2] = @"Line";
      v56[2] = &off_100336828;
      v55[3] = @"Method";
      v45 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v56[3] = v45;
      v55[4] = NSDebugDescriptionErrorKey;
      v46 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 385];
      v56[4] = v46;
      v47 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:5];
      v30 = [v50 initWithDomain:v40 code:v41 userInfo:v47];
    }

    else
    {
      v43 = [NSError alloc];
      v40 = [NSString stringWithUTF8String:"nfcd"];
      v53[0] = NSLocalizedDescriptionKey;
      v44 = [NSString stringWithUTF8String:"No resources"];
      v54[0] = v44;
      v54[1] = &off_100336840;
      v53[1] = @"Line";
      v53[2] = @"Method";
      v45 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v54[2] = v45;
      v53[3] = NSDebugDescriptionErrorKey;
      v46 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 388];
      v54[3] = v46;
      v47 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:4];
      v39 = 34;
      v30 = [v43 initWithDomain:v40 code:34 userInfo:v47];
      v31 = 0;
    }

    goto LABEL_37;
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

    v15(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v21, v18, v19, 377, v20);
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
    v60 = v24;
    v61 = 2082;
    v62 = v25;
    v63 = 2082;
    v64 = v26;
    v65 = 1024;
    v66 = 377;
    v67 = 2114;
    v68 = v27;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v28 = *(a1 + 40);
  if (v28)
  {
    v29 = [NSError alloc];
    v30 = [NSString stringWithUTF8String:"nfcd"];
    v57[0] = NSLocalizedDescriptionKey;
    v31 = [NSString stringWithUTF8String:"Session not active"];
    v58[0] = v31;
    v58[1] = &off_100336810;
    v57[1] = @"Line";
    v57[2] = @"Method";
    v32 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v58[2] = v32;
    v57[3] = NSDebugDescriptionErrorKey;
    v33 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 376];
    v58[3] = v33;
    v34 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:4];
    v35 = [v29 initWithDomain:v30 code:54 userInfo:v34];
    (*(v28 + 16))(v28, 54, 0, v35);

LABEL_26:
  }
}

void sub_10023C570(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SESHAT_UPGRADE_KEY", &unk_1002E8B7A, buf, 2u);
  }

  v55 = -1;
  v54 = 0;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    if (*(a1 + 40))
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v4(6, "%c[%{public}s %{public}s]:%i Upgrade:%d Data : %s", v10, ClassName, Name, 416, *(a1 + 64), v9);
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
    v16 = *(a1 + 64);
    if (*(a1 + 40))
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    *buf = 67110402;
    v63 = v13;
    v64 = 2082;
    v65 = v14;
    v66 = 2082;
    v67 = v15;
    v68 = 1024;
    v69 = 416;
    v70 = 1024;
    *v71 = v16;
    *&v71[4] = 2080;
    *&v71[6] = v17;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Upgrade:%d Data : %s", buf, 0x32u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    sub_1000167B0(*(*(a1 + 32) + 176));
    v40 = [*(a1 + 32) embeddedSecureElementWrapper];

    if (v40)
    {
      v41 = [*(a1 + 32) embeddedSecureElementWrapper];
      v42 = [v41 upgradeKey:*(a1 + 64) inputData:*(a1 + 40) outWriteCount:&v54 appletResult:&v55];

      v43 = [v42 code];
      if (!v42)
      {
        v34 = 0;
LABEL_43:
        sub_1000167B0(*(*(a1 + 32) + 176));
        (*(*(a1 + 48) + 16))();
        v52 = NFSharedSignpostLog();
        if (os_signpost_enabled(v52))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SESHAT_UPGRADE_KEY", &unk_1002E8B7A, buf, 2u);
        }

        [*(a1 + 32) maybeTTR:v43 appletResult:v55];
        goto LABEL_32;
      }

      v53 = [NSError alloc];
      v44 = [NSString stringWithUTF8String:"nfcd"];
      v45 = [v42 code];
      v58[0] = NSLocalizedDescriptionKey;
      if ([v42 code] > 75)
      {
        v46 = 76;
      }

      else
      {
        v46 = [v42 code];
      }

      v48 = [NSString stringWithUTF8String:off_10031C9C0[v46]];
      v59[0] = v48;
      v59[1] = v42;
      v58[1] = NSUnderlyingErrorKey;
      v58[2] = @"Line";
      v59[2] = &off_100336870;
      v58[3] = @"Method";
      v49 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v59[3] = v49;
      v58[4] = NSDebugDescriptionErrorKey;
      v50 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 432];
      v59[4] = v50;
      v51 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:5];
      v34 = [v53 initWithDomain:v44 code:v45 userInfo:v51];
    }

    else
    {
      v47 = [NSError alloc];
      v44 = [NSString stringWithUTF8String:"nfcd"];
      v56[0] = NSLocalizedDescriptionKey;
      v48 = [NSString stringWithUTF8String:"No resources"];
      v57[0] = v48;
      v57[1] = &off_100336888;
      v56[1] = @"Line";
      v56[2] = @"Method";
      v49 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v57[2] = v49;
      v56[3] = NSDebugDescriptionErrorKey;
      v50 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 435];
      v57[3] = v50;
      v51 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:4];
      v34 = [v47 initWithDomain:v44 code:34 userInfo:v51];
      v43 = 34;
    }

    goto LABEL_43;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFLogGetLogger();
  if (v18)
  {
    v19 = v18;
    v20 = object_getClass(*(a1 + 32));
    v21 = class_isMetaClass(v20);
    v22 = object_getClassName(*(a1 + 32));
    v23 = sel_getName(*(a1 + 56));
    v24 = [*(a1 + 32) sessionUID];
    v25 = 45;
    if (v21)
    {
      v25 = 43;
    }

    v19(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v25, v22, v23, 422, v24);
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
    v30 = sel_getName(*(a1 + 56));
    v31 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v63 = v28;
    v64 = 2082;
    v65 = v29;
    v66 = 2082;
    v67 = v30;
    v68 = 1024;
    v69 = 422;
    v70 = 2114;
    *v71 = v31;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v32 = *(a1 + 48);
  if (v32)
  {
    v33 = [NSError alloc];
    v34 = [NSString stringWithUTF8String:"nfcd"];
    v60[0] = NSLocalizedDescriptionKey;
    v35 = [NSString stringWithUTF8String:"Session not active"];
    v61[0] = v35;
    v61[1] = &off_100336858;
    v60[1] = @"Line";
    v60[2] = @"Method";
    v36 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v61[2] = v36;
    v60[3] = NSDebugDescriptionErrorKey;
    v37 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 421];
    v61[3] = v37;
    v38 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:4];
    v39 = [v33 initWithDomain:v34 code:54 userInfo:v38];
    (*(v32 + 16))(v32, 54, 0, v39);

LABEL_32:
  }
}

void sub_10023CF08(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SESHAT_OBLITERATE", &unk_1002E8B7A, buf, 2u);
  }

  v55 = 0;
  v54 = 0;
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

    v4(6, "%c[%{public}s %{public}s]:%i Delete all counters", v8, ClassName, Name, 463);
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
    *buf = 67109890;
    v59 = v11;
    v60 = 2082;
    v61 = v12;
    v62 = 2082;
    v63 = v13;
    v64 = 1024;
    v65 = 463;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Delete all counters", buf, 0x22u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v36 = [*(a1 + 32) embeddedSecureElementWrapper];
    v30 = [v36 deleteSlot:238 outWriteCount:&v55 appletResult:&v54];

    [v30 code];
    kdebug_trace();
    v37 = NFSharedSignpostLog();
    if (os_signpost_enabled(v37))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseEffaceAuthorization in", buf, 2u);
    }

    objc_opt_self();
    v38 = sub_10022A53C(NFSSEWrapper, byte_10035DB90);
    kdebug_trace();
    v39 = NFSharedSignpostLog();
    if (os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseEffaceAuthorization out", buf, 2u);
    }

    if (v38)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v40 = NFLogGetLogger();
      if (v40)
      {
        v41 = v40;
        v42 = object_getClass(*(a1 + 32));
        v43 = class_isMetaClass(v42);
        v44 = object_getClassName(*(a1 + 32));
        v53 = sel_getName(*(a1 + 48));
        v45 = 45;
        if (v43)
        {
          v45 = 43;
        }

        v41(3, "%c[%{public}s %{public}s]:%i Failed to efface SEP", v45, v44, v53, 484);
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
        v59 = v48;
        v60 = 2082;
        v61 = v49;
        v62 = 2082;
        v63 = v50;
        v64 = 1024;
        v65 = 484;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to efface SEP", buf, 0x22u);
      }
    }

    sub_1000167B0(*(*(a1 + 32) + 176));
    v51 = sub_100253E50(*(*(a1 + 32) + 184), 0xFFFFFFFFLL);
    sub_1000167B0(*(*(a1 + 32) + 176));
    (*(*(a1 + 40) + 16))();
    v31 = NFSharedSignpostLog();
    if (os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SESHAT_OBLITERATE", &unk_1002E8B7A, buf, 2u);
    }

    goto LABEL_26;
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

    v15(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v21, v18, v19, 469, v20);
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
    v59 = v24;
    v60 = 2082;
    v61 = v25;
    v62 = 2082;
    v63 = v26;
    v64 = 1024;
    v65 = 469;
    v66 = 2114;
    v67 = v27;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v28 = *(a1 + 40);
  if (v28)
  {
    v29 = [NSError alloc];
    v30 = [NSString stringWithUTF8String:"nfcd"];
    v56[0] = NSLocalizedDescriptionKey;
    v31 = [NSString stringWithUTF8String:"Session not active"];
    v57[0] = v31;
    v57[1] = &off_1003368A0;
    v56[1] = @"Line";
    v56[2] = @"Method";
    v32 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v57[2] = v32;
    v56[3] = NSDebugDescriptionErrorKey;
    v33 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 468];
    v57[3] = v33;
    v34 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:4];
    v35 = [v29 initWithDomain:v30 code:54 userInfo:v34];
    (*(v28 + 16))(v28, 54, v35);

LABEL_26:
  }
}

id *sub_10023F674(id *a1, void *a2, void *a3)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = NFManagedConfigMonitor;
    v9 = objc_msgSendSuper2(&v15, "init");
    a1 = v9;
    if (v9)
    {
      objc_storeWeak(v9 + 3, v8);
      objc_storeStrong(a1 + 2, a2);
      sub_10027E8D4(v10);
      v11 = *(v3 + 4040);
      if (objc_opt_class())
      {
        v12 = [*(v3 + 4040) sharedConnection];
        [v12 registerObserver:a1];

        v13 = [*(v3 + 4040) sharedConnection];
        *(a1 + 8) = [v13 isNFCAllowed];
      }

      else
      {
        *(a1 + 8) = 1;
      }
    }
  }

  return a1;
}

void sub_100240C54(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 162, v3);
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
    v23 = 162;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_100240E88(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 170, v3);
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
    v23 = 170;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_10024291C(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i error: %{public}@", v8, ClassName, Name, 273, v3);
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
    v21 = v11;
    v22 = 2082;
    v23 = v12;
    v24 = 2082;
    v25 = v13;
    v26 = 1024;
    v27 = 273;
    v28 = 2114;
    v29 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i error: %{public}@", buf, 0x2Cu);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100242B44;
  v18[3] = &unk_1003162B8;
  v19 = *(a1 + 32);
  v14 = [v19 _asynchronousRemoteProxyWithErrorHandler:v18];
  [v14 didStartSession:v3];

  v15 = [*(a1 + 32) stsHelper];
  [v15 invalidate];

  [*(a1 + 32) setStsHelper:0];
}

void sub_100242B44(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 275, v3);
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
    v23 = 275;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_100242CDC(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100242D6C;
  v2[3] = &unk_1003162B8;
  v3 = *(a1 + 32);
  v1 = [v3 _asynchronousRemoteProxyWithErrorHandler:v2];
  [v1 didStartSession:0];
}

void sub_100242D6C(uint64_t a1, void *a2)
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 283, v3);
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
    v23 = 283;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_100242F04(uint64_t a1, void *a2)
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

      v5(3, "%c[%{public}s %{public}s]:%i Reader start error: %{public}@", v8, ClassName, Name, 322, v3);
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
      v35 = 322;
      v36 = 2114;
      v37 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Reader start error: %{public}@", buf, 0x2Cu);
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
    v27[2] = &off_100336960;
    v26[3] = @"Method";
    v20 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v27[3] = v20;
    v26[4] = NSDebugDescriptionErrorKey;
    v21 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 323];
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