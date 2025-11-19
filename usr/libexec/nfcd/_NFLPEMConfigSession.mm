@interface _NFLPEMConfigSession
+ (id)validateEntitlements:(id)a3;
- (BOOL)_dumpLPEMAppletLogs;
- (void)configureHardwareForLPEMWithCompletion:(id)a3;
- (void)didStartSession:(id)a3;
- (void)disableLPEMFeature:(unint64_t)a3 completion:(id)a4;
- (void)enableLPEMFeature:(unint64_t)a3 completion:(id)a4;
- (void)getLPEMBluetoothLog:(BOOL)a3 callback:(id)a4;
- (void)getLPEMFeaturesWithCompletion:(id)a3;
@end

@implementation _NFLPEMConfigSession

+ (id)validateEntitlements:(id)a3
{
  if ([a3 lpemConfigSessionAccess])
  {
    v5 = 0;
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
      Name = sel_getName(a2);
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring LPEM Config session access", v11, ClassName, Name, 30);
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
      v26 = v14;
      v27 = 2082;
      v28 = object_getClassName(a1);
      v29 = 2082;
      v30 = sel_getName(a2);
      v31 = 1024;
      v32 = 30;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring LPEM Config session access", buf, 0x22u);
    }

    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v23[0] = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Not entitled"];
    v24[0] = v17;
    v24[1] = &off_100332280;
    v23[1] = @"Line";
    v23[2] = @"Method";
    v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v24[2] = v18;
    v23[3] = NSDebugDescriptionErrorKey;
    v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 31];
    v24[3] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
    v5 = [v15 initWithDomain:v16 code:32 userInfo:v20];
  }

  return v5;
}

- (void)didStartSession:(id)a3
{
  v6.receiver = self;
  v6.super_class = _NFLPEMConfigSession;
  v4 = a3;
  [(_NFXPCSession *)&v6 didStartSession:v4];
  v5 = [(_NFXPCSession *)self remoteObject:v6.receiver];
  [v5 didStartSession:v4];
}

- (void)configureHardwareForLPEMWithCompletion:(id)a3
{
  v5 = a3;
  if ([(_NFSession *)self didStart]&& ![(_NFSession *)self isSuspended]&& ![(_NFSession *)self didEnd])
  {
    v21 = +[_NFHardwareManager sharedHardwareManager];
    sub_1001A1808(v21, v5);
    goto LABEL_15;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v12 = [(_NFSession *)self sessionUID];
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v7(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v13, ClassName, Name, 44, v12);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = object_getClass(self);
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    v17 = object_getClassName(self);
    v18 = sel_getName(a2);
    v19 = [(_NFSession *)self sessionUID];
    *buf = 67110146;
    v28 = v16;
    v29 = 2082;
    v30 = v17;
    v31 = 2082;
    v32 = v18;
    v33 = 1024;
    v34 = 44;
    v35 = 2114;
    v36 = v19;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  if (v5)
  {
    v20 = [NSError alloc];
    v21 = [NSString stringWithUTF8String:"nfcd"];
    v25 = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithUTF8String:"Session not active"];
    v26 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v24 = [v20 initWithDomain:v21 code:54 userInfo:v23];
    (*(v5 + 2))(v5, v24);

LABEL_15:
  }
}

- (void)disableLPEMFeature:(unint64_t)a3 completion:(id)a4
{
  v7 = a4;
  if ([(_NFSession *)self didStart]&& ![(_NFSession *)self isSuspended]&& ![(_NFSession *)self didEnd])
  {
    v23 = +[_NFHardwareManager sharedHardwareManager];
    [v23 disableLPEMFeature:a3 completion:v7];
    goto LABEL_15;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v9 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v14 = [(_NFSession *)self sessionUID];
    v15 = 45;
    if (isMetaClass)
    {
      v15 = 43;
    }

    v9(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v15, ClassName, Name, 51, v14);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = object_getClass(self);
    if (class_isMetaClass(v17))
    {
      v18 = 43;
    }

    else
    {
      v18 = 45;
    }

    v19 = object_getClassName(self);
    v20 = sel_getName(a2);
    v21 = [(_NFSession *)self sessionUID];
    *buf = 67110146;
    v30 = v18;
    v31 = 2082;
    v32 = v19;
    v33 = 2082;
    v34 = v20;
    v35 = 1024;
    v36 = 51;
    v37 = 2114;
    v38 = v21;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  if (v7)
  {
    v22 = [NSError alloc];
    v23 = [NSString stringWithUTF8String:"nfcd"];
    v27 = NSLocalizedDescriptionKey;
    v24 = [NSString stringWithUTF8String:"Session not active"];
    v28 = v24;
    v25 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v26 = [v22 initWithDomain:v23 code:54 userInfo:v25];
    v7[2](v7, v26);

LABEL_15:
  }
}

- (void)enableLPEMFeature:(unint64_t)a3 completion:(id)a4
{
  v7 = a4;
  if ([(_NFSession *)self didStart]&& ![(_NFSession *)self isSuspended]&& ![(_NFSession *)self didEnd])
  {
    v23 = +[_NFHardwareManager sharedHardwareManager];
    sub_10019D014(v23, a3, 1, v7);
    goto LABEL_15;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v9 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v14 = [(_NFSession *)self sessionUID];
    v15 = 45;
    if (isMetaClass)
    {
      v15 = 43;
    }

    v9(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v15, ClassName, Name, 59, v14);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = object_getClass(self);
    if (class_isMetaClass(v17))
    {
      v18 = 43;
    }

    else
    {
      v18 = 45;
    }

    v19 = object_getClassName(self);
    v20 = sel_getName(a2);
    v21 = [(_NFSession *)self sessionUID];
    *buf = 67110146;
    v30 = v18;
    v31 = 2082;
    v32 = v19;
    v33 = 2082;
    v34 = v20;
    v35 = 1024;
    v36 = 59;
    v37 = 2114;
    v38 = v21;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  if (v7)
  {
    v22 = [NSError alloc];
    v23 = [NSString stringWithUTF8String:"nfcd"];
    v27 = NSLocalizedDescriptionKey;
    v24 = [NSString stringWithUTF8String:"Session not active"];
    v28 = v24;
    v25 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v26 = [v22 initWithDomain:v23 code:54 userInfo:v25];
    (*(v7 + 2))(v7, v26);

LABEL_15:
  }
}

- (void)getLPEMFeaturesWithCompletion:(id)a3
{
  v5 = a3;
  if ([(_NFSession *)self didStart]&& ![(_NFSession *)self isSuspended]&& ![(_NFSession *)self didEnd])
  {
    v21 = +[_NFHardwareManager sharedHardwareManager];
    sub_10019E0A4(v21, v5);
    goto LABEL_15;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v12 = [(_NFSession *)self sessionUID];
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v7(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v13, ClassName, Name, 66, v12);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = object_getClass(self);
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    v17 = object_getClassName(self);
    v18 = sel_getName(a2);
    v19 = [(_NFSession *)self sessionUID];
    *buf = 67110146;
    v28 = v16;
    v29 = 2082;
    v30 = v17;
    v31 = 2082;
    v32 = v18;
    v33 = 1024;
    v34 = 66;
    v35 = 2114;
    v36 = v19;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  if (v5)
  {
    v20 = [NSError alloc];
    v21 = [NSString stringWithUTF8String:"nfcd"];
    v25 = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithUTF8String:"Session not active"];
    v26 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v24 = [v20 initWithDomain:v21 code:54 userInfo:v23];
    (*(v5 + 2))(v5, v24, 0);

LABEL_15:
  }
}

- (void)getLPEMBluetoothLog:(BOOL)a3 callback:(id)a4
{
  v7 = a4;
  v8 = +[NSXPCConnection currentConnection];
  v9 = [(_NFSession *)self workQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100144CF4;
  v11[3] = &unk_100319668;
  v12 = v7;
  v13 = a2;
  v11[4] = self;
  v14 = a3;
  v10 = v7;
  dispatch_async(v9, v11);
}

- (BOOL)_dumpLPEMAppletLogs
{
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DUMP_LPEM_LOGS", &unk_1002E8B7A, buf, 2u);
  }

  if (byte_10035DA19 != 1)
  {
    v16 = sub_10004BF2C();
    v18 = +[_NFHardwareManager sharedHardwareManager];
    v19 = [v18 setRoutingConfig:v16];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v21 = Logger;
    v128 = v19;
    if (v19)
    {
      if (Logger)
      {
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v25 = 45;
        if (isMetaClass)
        {
          v25 = 43;
        }

        v21(6, "%c[%{public}s %{public}s]:%i Failed to set routing to retrieve LPEM logs", v25, ClassName, Name, 205);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v26 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = object_getClass(self);
        if (class_isMetaClass(v27))
        {
          v28 = 43;
        }

        else
        {
          v28 = 45;
        }

        v29 = object_getClassName(self);
        v30 = sel_getName(a2);
        *buf = 67109890;
        v131 = v28;
        v132 = 2082;
        v133 = v29;
        v134 = 2082;
        v135 = v30;
        v136 = 1024;
        v137 = 205;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Failed to set routing to retrieve LPEM logs", buf, 0x22u);
      }

      v31 = NFSharedSignpostLog();
      if (os_signpost_enabled(v31))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DUMP_LPEM_LOGS", &unk_1002E8B7A, buf, 2u);
      }

      v17 = 0;
      goto LABEL_111;
    }

    if (Logger)
    {
      v32 = object_getClass(self);
      v33 = class_isMetaClass(v32);
      v34 = object_getClassName(self);
      v118 = sel_getName(a2);
      v35 = 45;
      if (v33)
      {
        v35 = 43;
      }

      v21(6, "%c[%{public}s %{public}s]:%i reading logs from applet", v35, v34, v118, 210);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v36 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = object_getClass(self);
      if (class_isMetaClass(v37))
      {
        v38 = 43;
      }

      else
      {
        v38 = 45;
      }

      v39 = object_getClassName(self);
      v40 = sel_getName(a2);
      *buf = 67109890;
      v131 = v38;
      v132 = 2082;
      v133 = v39;
      v134 = 2082;
      v135 = v40;
      v136 = 1024;
      v137 = 210;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i reading logs from applet", buf, 0x22u);
    }

    v127 = v18;
    v41 = [v18 secureElementWrapper];
    v129 = 0;
    v42 = sub_100096634(v41, 4, &v129);
    v43 = v129;
    v31 = v43;
    if (v42)
    {
      v44 = 1;
    }

    else
    {
      v44 = v43 == 0;
    }

    v17 = !v44;

    if (!v17)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v63 = NFLogGetLogger();
      if (v63)
      {
        v64 = v63;
        v65 = object_getClass(self);
        v66 = class_isMetaClass(v65);
        v67 = object_getClassName(self);
        v120 = sel_getName(a2);
        v68 = 45;
        if (v66)
        {
          v68 = 43;
        }

        v64(6, "%c[%{public}s %{public}s]:%i Failed to log Applet LPEM Log", v68, v67, v120, 216);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v69 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = object_getClass(self);
        if (class_isMetaClass(v70))
        {
          v71 = 43;
        }

        else
        {
          v71 = 45;
        }

        v72 = object_getClassName(self);
        v73 = sel_getName(a2);
        *buf = 67109890;
        v131 = v71;
        v132 = 2082;
        v133 = v72;
        v134 = 2082;
        v135 = v73;
        v136 = 1024;
        v137 = 216;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Failed to log Applet LPEM Log", buf, 0x22u);
      }

      v74 = NFSharedSignpostLog();
      v18 = v127;
      if (os_signpost_enabled(v74))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v74, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DUMP_LPEM_LOGS", &unk_1002E8B7A, buf, 2u);
      }

      goto LABEL_110;
    }

    v45 = [NSString alloc];
    v46 = NSHomeDirectory();
    v47 = [v45 initWithFormat:@"%@%@", v46, @"/Library/Logs/nfcd_lpem.bin"];

    v48 = RBSProcessMonitor_ptr;
    v126 = v47;
    if (!v47)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v75 = NFLogGetLogger();
      if (v75)
      {
        v76 = v75;
        v77 = object_getClass(self);
        v78 = class_isMetaClass(v77);
        v79 = object_getClassName(self);
        v121 = sel_getName(a2);
        v80 = 45;
        if (v78)
        {
          v80 = 43;
        }

        v113 = v79;
        v48 = RBSProcessMonitor_ptr;
        v76(3, "%c[%{public}s %{public}s]:%i Failed to dump LPEM log: File URL is nil", v80, v113, v121, 249);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v81 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        v82 = object_getClass(self);
        if (class_isMetaClass(v82))
        {
          v83 = 43;
        }

        else
        {
          v83 = 45;
        }

        v84 = v81;
        v85 = object_getClassName(self);
        v86 = sel_getName(a2);
        *buf = 67109890;
        v131 = v83;
        v132 = 2082;
        v133 = v85;
        v81 = v84;
        v134 = 2082;
        v135 = v86;
        v136 = 1024;
        v137 = 249;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to dump LPEM log: File URL is nil", buf, 0x22u);
      }

      v74 = 0;
      v18 = v127;
      goto LABEL_105;
    }

    v49 = [NSDictionary dictionaryWithContentsOfFile:v47];
    sub_1002340EC();
    v125 = v124 = v49;
    v18 = v127;
    if (v49)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v50 = [v49 objectForKeyedSubscript:@"bootuuid"];
        if (v50 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v51 = [v50 isEqual:v125];

          if (v51)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v52 = NFLogGetLogger();
            if (v52)
            {
              v53 = v52;
              v54 = object_getClass(self);
              v55 = class_isMetaClass(v54);
              v56 = object_getClassName(self);
              v119 = sel_getName(a2);
              v44 = !v55;
              v18 = v127;
              v57 = 45;
              if (!v44)
              {
                v57 = 43;
              }

              v53(6, "%c[%{public}s %{public}s]:%i File already present from this boot. Not erasing.", v57, v56, v119, 246);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v58 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              v59 = object_getClass(self);
              if (class_isMetaClass(v59))
              {
                v60 = 43;
              }

              else
              {
                v60 = 45;
              }

              v61 = object_getClassName(self);
              v62 = sel_getName(a2);
              *buf = 67109890;
              v131 = v60;
              v132 = 2082;
              v133 = v61;
              v134 = 2082;
              v135 = v62;
              v136 = 1024;
              v137 = 246;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i File already present from this boot. Not erasing.", buf, 0x22u);
            }

            goto LABEL_93;
          }
        }

        else
        {
        }
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v87 = NFLogGetLogger();
    if (v87)
    {
      v88 = v87;
      v89 = object_getClass(self);
      v90 = class_isMetaClass(v89);
      v91 = object_getClassName(self);
      v122 = sel_getName(a2);
      v92 = 45;
      if (v90)
      {
        v92 = 43;
      }

      v114 = v91;
      v18 = v127;
      v88(6, "%c[%{public}s %{public}s]:%i Cached boot UUID does not match current boot UUID or file does not exist, updating ..", v92, v114, v122, 235);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v93 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
    {
      v94 = object_getClass(self);
      if (class_isMetaClass(v94))
      {
        v95 = 43;
      }

      else
      {
        v95 = 45;
      }

      v96 = object_getClassName(self);
      v97 = sel_getName(a2);
      *buf = 67109890;
      v131 = v95;
      v132 = 2082;
      v133 = v96;
      v18 = v127;
      v134 = 2082;
      v135 = v97;
      v136 = 1024;
      v137 = 235;
      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Cached boot UUID does not match current boot UUID or file does not exist, updating ..", buf, 0x22u);
    }

    v58 = [v31 mutableCopy];
    [v58 setObject:v125 forKeyedSubscript:@"bootuuid"];
    if (([v58 writeToFile:v126 atomically:0]& 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v98 = NFLogGetLogger();
      if (v98)
      {
        v99 = v98;
        v100 = object_getClass(self);
        v101 = class_isMetaClass(v100);
        v115 = object_getClassName(self);
        v123 = sel_getName(a2);
        v44 = !v101;
        v18 = v127;
        v102 = 45;
        if (!v44)
        {
          v102 = 43;
        }

        v99(3, "%c[%{public}s %{public}s]:%i Failed to dump LPEM log to %{public}@", v102, v115, v123, 241, v126);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v103 = NFSharedLogGetLogger();
      v74 = v126;
      if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
      {
        v104 = object_getClass(self);
        if (class_isMetaClass(v104))
        {
          v105 = 43;
        }

        else
        {
          v105 = 45;
        }

        v106 = object_getClassName(self);
        v107 = sel_getName(a2);
        *buf = 67110146;
        v131 = v105;
        v132 = 2082;
        v133 = v106;
        v134 = 2082;
        v135 = v107;
        v136 = 1024;
        v137 = 241;
        v138 = 2114;
        v139 = v126;
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to dump LPEM log to %{public}@", buf, 0x2Cu);
      }

      goto LABEL_104;
    }

    byte_10035DA19 = 1;
LABEL_93:
    v74 = v126;
LABEL_104:
    v81 = v124;

    v48 = RBSProcessMonitor_ptr;
LABEL_105:

    v108 = [objc_alloc(v48[56]) initWithBytes:&unk_1002977BE length:10];
    v109 = [v31 objectForKey:v108];

    if (v109)
    {
      v110 = [objc_alloc(v48[56]) initWithBytes:&unk_1002977BE length:10];
      [v110 NF_asHexString];
      PLLogRegisteredEvent();
    }

    v111 = NFSharedSignpostLog();
    if (os_signpost_enabled(v111))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v111, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DUMP_LPEM_LOGS", &unk_1002E8B7A, buf, 2u);
    }

LABEL_110:
LABEL_111:

    goto LABEL_112;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v5 = NFLogGetLogger();
  if (v5)
  {
    v6 = v5;
    v7 = object_getClass(self);
    v8 = class_isMetaClass(v7);
    v9 = object_getClassName(self);
    v116 = sel_getName(a2);
    v10 = 45;
    if (v8)
    {
      v10 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i Applet LPEM Log already retrieved", v10, v9, v116, 194);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(self);
    v15 = sel_getName(a2);
    *buf = 67109890;
    v131 = v13;
    v132 = 2082;
    v133 = v14;
    v134 = 2082;
    v135 = v15;
    v136 = 1024;
    v137 = 194;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Applet LPEM Log already retrieved", buf, 0x22u);
  }

  v16 = NFSharedSignpostLog();
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DUMP_LPEM_LOGS", &unk_1002E8B7A, buf, 2u);
  }

  v17 = 1;
LABEL_112:

  return v17;
}

@end