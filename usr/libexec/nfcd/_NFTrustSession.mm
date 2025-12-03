@interface _NFTrustSession
+ (id)validateEntitlements:(id)entitlements;
- (BOOL)willStartSession;
- (_NFTrustSession)initWithRemoteObject:(id)object workQueue:(id)queue;
- (id)deleteDBKey:(id)key;
- (id)getListOfKeysWithError:(id *)error;
- (id)selectInstance;
- (unint64_t)getNumberOfKeys:(id *)keys;
- (void)createKey:(id)key cresteKeyRequest:(id)request completion:(id)completion;
- (void)deleteKey:(id)key completion:(id)completion;
- (void)deselectInstance;
- (void)didStartSession:(id)session;
- (void)listKeysWithCompletion:(id)completion;
- (void)signWithKey:(id)key signRequest:(id)request paymentRequest:(id)paymentRequest authorization:(id)authorization completion:(id)completion;
@end

@implementation _NFTrustSession

+ (id)validateEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  applicationIdentifier = [entitlementsCopy applicationIdentifier];

  if (applicationIdentifier)
  {
    if ([entitlementsCopy purpleTrustAccess])
    {
      v7 = 0;
      goto LABEL_25;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v21 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v25 = 45;
      if (isMetaClass)
      {
        v25 = 43;
      }

      v21(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring PT access", v25, ClassName, Name, 44);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
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

      *buf = 67109890;
      v41 = v28;
      v42 = 2082;
      v43 = object_getClassName(self);
      v44 = 2082;
      v45 = sel_getName(a2);
      v46 = 1024;
      v47 = 44;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring PT access", buf, 0x22u);
    }

    v29 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v36[0] = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Not entitled"];
    v37[0] = v18;
    v37[1] = &off_100331020;
    v36[1] = @"Line";
    v36[2] = @"Method";
    v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v37[2] = v19;
    v36[3] = NSDebugDescriptionErrorKey;
    v30 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 45];
    v37[3] = v30;
    v31 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:4];
    v7 = [v29 initWithDomain:v17 code:32 userInfo:v31];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFLogGetLogger();
    if (v8)
    {
      v9 = v8;
      v10 = object_getClass(self);
      v11 = class_isMetaClass(v10);
      v33 = object_getClassName(self);
      v34 = sel_getName(a2);
      v12 = 45;
      if (v11)
      {
        v12 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i Missing entitlement: %{public}@", v12, v33, v34, 39, @"application-identifier");
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = object_getClass(self);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      *buf = 67110146;
      v41 = v15;
      v42 = 2082;
      v43 = object_getClassName(self);
      v44 = 2082;
      v45 = sel_getName(a2);
      v46 = 1024;
      v47 = 39;
      v48 = 2114;
      v49 = @"application-identifier";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing entitlement: %{public}@", buf, 0x2Cu);
    }

    v16 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v38 = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Not entitled"];
    v39 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v7 = [v16 initWithDomain:v17 code:32 userInfo:v19];
  }

LABEL_25:

  return v7;
}

- (_NFTrustSession)initWithRemoteObject:(id)object workQueue:(id)queue
{
  v50.receiver = self;
  v50.super_class = _NFTrustSession;
  v5 = [(_NFXPCSession *)&v50 initWithRemoteObject:object workQueue:queue];
  if (!v5)
  {
    goto LABEL_27;
  }

  v6 = sub_10001F6E4();
  [(_NFTrustSession *)v5 setTrustDB:v6];

  trustDB = [(_NFTrustSession *)v5 trustDB];

  if (!trustDB)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v23 = Logger;
      Class = object_getClass(v5);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v5);
      Name = sel_getName(a2);
      v27 = 45;
      if (isMetaClass)
      {
        v27 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Could not get DataBase", v27, ClassName, Name, 59);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v28 = object_getClass(v5);
      if (class_isMetaClass(v28))
      {
        v29 = 43;
      }

      else
      {
        v29 = 45;
      }

      v30 = object_getClassName(v5);
      v31 = sel_getName(a2);
      *buf = 67109890;
      v52 = v29;
      v53 = 2082;
      v54 = v30;
      v55 = 2082;
      v56 = v31;
      v57 = 1024;
      v58 = 59;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not get DataBase", buf, 0x22u);
    }

    goto LABEL_24;
  }

  trustDB2 = [(_NFTrustSession *)v5 trustDB];
  v49 = 0;
  v9 = sub_10001E1AC(trustDB2, @"A000000704C0000000000002", &v49);
  v10 = v49;

  if (!v9)
  {
    [(_NFTrustSession *)v5 setTrustDBApplet:v10];
    trustDBApplet = [(_NFTrustSession *)v5 trustDBApplet];

    if (!trustDBApplet)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v35 = NFLogGetLogger();
      if (v35)
      {
        v36 = v35;
        v37 = object_getClass(v5);
        v38 = class_isMetaClass(v37);
        v45 = object_getClassName(v5);
        v48 = sel_getName(a2);
        v39 = 45;
        if (v38)
        {
          v39 = 43;
        }

        v36(3, "%c[%{public}s %{public}s]:%i Could not find DB Applet with AID %{public}@ in DataBase", v39, v45, v48, 76, @"A000000704C0000000000002");
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v16 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
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

      v42 = object_getClassName(v5);
      v43 = sel_getName(a2);
      *buf = 67110146;
      v52 = v41;
      v53 = 2082;
      v54 = v42;
      v55 = 2082;
      v56 = v43;
      v57 = 1024;
      v58 = 76;
      v59 = 2114;
      v60 = @"A000000704C0000000000002";
      v21 = "%c[%{public}s %{public}s]:%i Could not find DB Applet with AID %{public}@ in DataBase";
      goto LABEL_13;
    }

LABEL_27:
    v32 = v5;
    goto LABEL_28;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFLogGetLogger();
  if (v11)
  {
    v12 = v11;
    v13 = object_getClass(v5);
    v14 = class_isMetaClass(v13);
    v44 = object_getClassName(v5);
    v46 = sel_getName(a2);
    v15 = 45;
    if (v14)
    {
      v15 = 43;
    }

    v12(3, "%c[%{public}s %{public}s]:%i Could not get DB Applet from DataBase : %{public}@", v15, v44, v46, 68, v9);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFSharedLogGetLogger();
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_14;
  }

  v17 = object_getClass(v5);
  if (class_isMetaClass(v17))
  {
    v18 = 43;
  }

  else
  {
    v18 = 45;
  }

  v19 = object_getClassName(v5);
  v20 = sel_getName(a2);
  *buf = 67110146;
  v52 = v18;
  v53 = 2082;
  v54 = v19;
  v55 = 2082;
  v56 = v20;
  v57 = 1024;
  v58 = 68;
  v59 = 2114;
  v60 = v9;
  v21 = "%c[%{public}s %{public}s]:%i Could not get DB Applet from DataBase : %{public}@";
LABEL_13:
  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v21, buf, 0x2Cu);
LABEL_14:

LABEL_24:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)didStartSession:(id)session
{
  sessionCopy = session;
  v5 = +[_NFHardwareManager sharedHardwareManager];
  secureElementWrapper = [v5 secureElementWrapper];
  secureElementWrapper = self->_secureElementWrapper;
  self->_secureElementWrapper = secureElementWrapper;

  if (sessionCopy)
  {
    v8 = 0;
  }

  else
  {
    v12 = 0;
    v9 = [(_NFTrustSession *)self getListOfKeysWithError:&v12];
    v8 = v12;
    [(_NFTrustSession *)self setKeys:v9];
  }

  v11.receiver = self;
  v11.super_class = _NFTrustSession;
  [(_NFXPCSession *)&v11 didStartSession:sessionCopy];
  remoteObject = [(_NFXPCSession *)self remoteObject];
  [remoteObject didStartSession:sessionCopy];
}

- (BOOL)willStartSession
{
  sub_10026449C();
  v4.receiver = self;
  v4.super_class = _NFTrustSession;
  return [(_NFSession *)&v4 willStartSession];
}

- (id)selectInstance
{
  trustDBApplet = [(_NFTrustSession *)self trustDBApplet];

  if (!trustDBApplet)
  {
    v5 = sub_10013DE50();
    goto LABEL_30;
  }

  if ([(_NFTrustSession *)self isInstanceSelected])
  {
    v5 = 0;
    goto LABEL_30;
  }

  secureElementWrapper = [(_NFTrustSession *)self secureElementWrapper];

  if (!secureElementWrapper)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v37 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v41 = 45;
      if (isMetaClass)
      {
        v41 = 43;
      }

      v37(3, "%c[%{public}s %{public}s]:%i secureElementWrapper is nil, error in NFCd, could not select instance", v41, ClassName, Name, 145);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v42 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = object_getClass(self);
      if (class_isMetaClass(v43))
      {
        v44 = 43;
      }

      else
      {
        v44 = 45;
      }

      *buf = 67109890;
      v100 = v44;
      v101 = 2082;
      v102 = object_getClassName(self);
      v103 = 2082;
      v104 = sel_getName(a2);
      v105 = 1024;
      v106 = 145;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i secureElementWrapper is nil, error in NFCd, could not select instance", buf, 0x22u);
    }

    v45 = [NSError alloc];
    v12 = [NSString stringWithUTF8String:"nfcd"];
    v111 = NSLocalizedDescriptionKey;
    v46 = [NSString stringWithUTF8String:"Unknown Error"];
    v112 = v46;
    v47 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1];
    v5 = [v45 initWithDomain:v12 code:6 userInfo:v47];

    goto LABEL_29;
  }

  secureElementWrapper2 = [(_NFTrustSession *)self secureElementWrapper];
  trustDBApplet2 = [(_NFTrustSession *)self trustDBApplet];
  instanceAID = [trustDBApplet2 instanceAID];
  v10 = [NSData NF_dataWithHexString:instanceAID];
  v90 = 0;
  v11 = sub_100158A6C(secureElementWrapper2, v10, &v90);
  v12 = v90;

  if (v12)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v14 = v13;
      v15 = object_getClass(self);
      v16 = class_isMetaClass(v15);
      v17 = object_getClassName(self);
      v18 = sel_getName(a2);
      [(_NFTrustSession *)self trustDBApplet];
      v20 = v19 = v11;
      instanceAID2 = [v20 instanceAID];
      v22 = 45;
      if (v16)
      {
        v22 = 43;
      }

      v14(3, "%c[%{public}s %{public}s]:%i Could not select instance (AID: %{public}@): %{public}@", v22, v17, v18, 152, instanceAID2, v12);

      v11 = v19;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = object_getClass(self);
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      v26 = object_getClassName(self);
      v27 = sel_getName(a2);
      trustDBApplet3 = [(_NFTrustSession *)self trustDBApplet];
      instanceAID3 = [trustDBApplet3 instanceAID];
      *buf = 67110402;
      v100 = v25;
      v101 = 2082;
      v102 = v26;
      v103 = 2082;
      v104 = v27;
      v105 = 1024;
      v106 = 152;
      v107 = 2114;
      v108 = instanceAID3;
      v109 = 2114;
      v110 = v12;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not select instance (AID: %{public}@): %{public}@", buf, 0x36u);
    }

    v30 = [NSError alloc];
    v31 = [NSString stringWithUTF8String:"nfcd"];
    v97 = NSLocalizedDescriptionKey;
    v32 = [NSString stringWithUTF8String:"Unknown Error"];
    v98 = v32;
    v33 = &v98;
    v34 = &v97;
  }

  else if (v11)
  {
    if ([v11 status] == 27266)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v49 = NFLogGetLogger();
      if (v49)
      {
        v50 = v49;
        v51 = object_getClass(self);
        v52 = class_isMetaClass(v51);
        v53 = object_getClassName(self);
        v87 = sel_getName(a2);
        v54 = 45;
        if (v52)
        {
          v54 = 43;
        }

        v50(3, "%c[%{public}s %{public}s]:%i Failed to select instance, instance not found on device, erase database for this instance", v54, v53, v87, 162);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v55 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = object_getClass(self);
        if (class_isMetaClass(v56))
        {
          v57 = 43;
        }

        else
        {
          v57 = 45;
        }

        v58 = object_getClassName(self);
        v59 = sel_getName(a2);
        *buf = 67109890;
        v100 = v57;
        v101 = 2082;
        v102 = v58;
        v103 = 2082;
        v104 = v59;
        v105 = 1024;
        v106 = 162;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select instance, instance not found on device, erase database for this instance", buf, 0x22u);
      }

      trustDB = [(_NFTrustSession *)self trustDB];
      v61 = sub_10001F2CC(trustDB);

      v30 = [NSError alloc];
      v31 = [NSString stringWithUTF8String:"nfcd"];
      v93 = NSLocalizedDescriptionKey;
      v32 = [NSString stringWithUTF8String:"Unknown Error"];
      v94 = v32;
      v33 = &v94;
      v34 = &v93;
    }

    else
    {
      if ([v11 status] == 36864)
      {
        [(_NFTrustSession *)self setIsInstanceSelected:1];
        v5 = 0;
        goto LABEL_18;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v73 = NFLogGetLogger();
      if (v73)
      {
        v74 = v73;
        v75 = object_getClass(self);
        v76 = class_isMetaClass(v75);
        v77 = object_getClassName(self);
        v78 = sel_getName(a2);
        status = [v11 status];
        v79 = 45;
        if (v76)
        {
          v79 = 43;
        }

        v74(3, "%c[%{public}s %{public}s]:%i Failed to select instance %u", v79, v77, v78, 168, status);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v80 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        v81 = object_getClass(self);
        if (class_isMetaClass(v81))
        {
          v82 = 43;
        }

        else
        {
          v82 = 45;
        }

        v83 = object_getClassName(self);
        v84 = sel_getName(a2);
        status2 = [v11 status];
        *buf = 67110146;
        v100 = v82;
        v101 = 2082;
        v102 = v83;
        v103 = 2082;
        v104 = v84;
        v105 = 1024;
        v106 = 168;
        v107 = 1024;
        LODWORD(v108) = status2;
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select instance %u", buf, 0x28u);
      }

      v30 = [NSError alloc];
      v31 = [NSString stringWithUTF8String:"nfcd"];
      v91 = NSLocalizedDescriptionKey;
      v32 = [NSString stringWithUTF8String:"Unknown Error"];
      v92 = v32;
      v33 = &v92;
      v34 = &v91;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v62 = NFLogGetLogger();
    if (v62)
    {
      v63 = v62;
      v64 = object_getClass(self);
      v65 = class_isMetaClass(v64);
      v66 = object_getClassName(self);
      v88 = sel_getName(a2);
      v67 = 45;
      if (v65)
      {
        v67 = 43;
      }

      v63(3, "%c[%{public}s %{public}s]:%i Failed to select instance, expecting RAPDU", v67, v66, v88, 157);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v68 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v69 = object_getClass(self);
      if (class_isMetaClass(v69))
      {
        v70 = 43;
      }

      else
      {
        v70 = 45;
      }

      v71 = object_getClassName(self);
      v72 = sel_getName(a2);
      *buf = 67109890;
      v100 = v70;
      v101 = 2082;
      v102 = v71;
      v103 = 2082;
      v104 = v72;
      v105 = 1024;
      v106 = 157;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select instance, expecting RAPDU", buf, 0x22u);
    }

    v30 = [NSError alloc];
    v31 = [NSString stringWithUTF8String:"nfcd"];
    v95 = NSLocalizedDescriptionKey;
    v32 = [NSString stringWithUTF8String:"Unknown Error"];
    v96 = v32;
    v33 = &v96;
    v34 = &v95;
  }

  v35 = [NSDictionary dictionaryWithObjects:v33 forKeys:v34 count:1];
  v5 = [v30 initWithDomain:v31 code:6 userInfo:v35];

LABEL_18:
LABEL_29:

LABEL_30:

  return v5;
}

- (void)deselectInstance
{
  trustDBApplet = [(_NFTrustSession *)self trustDBApplet];

  if (!trustDBApplet)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(3, "%c[%{public}s %{public}s]:%i Could not deselect instance, instance not found in database", v10, ClassName, Name, 183);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
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

      *buf = 67109890;
      v78 = v13;
      v79 = 2082;
      v80 = object_getClassName(self);
      v81 = 2082;
      v82 = sel_getName(a2);
      v83 = 1024;
      v84 = 183;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not deselect instance, instance not found in database", buf, 0x22u);
    }
  }

  [(_NFTrustSession *)self setIsInstanceSelected:0];
  secureElementWrapper = [(_NFTrustSession *)self secureElementWrapper];

  if (secureElementWrapper)
  {
    secureElementWrapper2 = [(_NFTrustSession *)self secureElementWrapper];
    v16 = [[NSData alloc] initWithBytes:&unk_100296F16 length:8];
    v76 = 0;
    v17 = sub_100158A6C(secureElementWrapper2, v16, &v76);
    v18 = v76;

    if (v18)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v19 = NFLogGetLogger();
      if (v19)
      {
        v20 = v19;
        v21 = object_getClass(self);
        v22 = class_isMetaClass(v21);
        v23 = object_getClassName(self);
        v24 = sel_getName(a2);
        [(_NFTrustSession *)self trustDBApplet];
        v25 = a2;
        v27 = v26 = v17;
        instanceAID = [v27 instanceAID];
        v29 = 45;
        if (v22)
        {
          v29 = 43;
        }

        v20(3, "%c[%{public}s %{public}s]:%i Could not deselect instance (AID: %{public}@): %{public}@", v29, v23, v24, 196, instanceAID, v18);

        v17 = v26;
        a2 = v25;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = object_getClass(self);
        if (class_isMetaClass(v31))
        {
          v32 = 43;
        }

        else
        {
          v32 = 45;
        }

        v33 = object_getClassName(self);
        v34 = sel_getName(a2);
        trustDBApplet2 = [(_NFTrustSession *)self trustDBApplet];
        instanceAID2 = [trustDBApplet2 instanceAID];
        *buf = 67110402;
        v78 = v32;
        v79 = 2082;
        v80 = v33;
        v81 = 2082;
        v82 = v34;
        v83 = 1024;
        v84 = 196;
        v85 = 2114;
        v86 = instanceAID2;
        v87 = 2114;
        v88 = v18;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not deselect instance (AID: %{public}@): %{public}@", buf, 0x36u);
      }

      goto LABEL_53;
    }

    if (v17)
    {
      if ([v17 status] == 36864)
      {
LABEL_54:

        goto LABEL_55;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v47 = NFLogGetLogger();
      if (v47)
      {
        v48 = v47;
        v49 = object_getClass(self);
        v50 = class_isMetaClass(v49);
        v51 = object_getClassName(self);
        v52 = sel_getName(a2);
        status = [v17 status];
        v53 = 45;
        if (v50)
        {
          v53 = 43;
        }

        v48(3, "%c[%{public}s %{public}s]:%i Failed to deselect instance %u", v53, v51, v52, 206, status);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
LABEL_53:

        goto LABEL_54;
      }

      v54 = object_getClass(self);
      if (class_isMetaClass(v54))
      {
        v55 = 43;
      }

      else
      {
        v55 = 45;
      }

      v56 = object_getClassName(self);
      v57 = sel_getName(a2);
      status2 = [v17 status];
      *buf = 67110146;
      v78 = v55;
      v79 = 2082;
      v80 = v56;
      v81 = 2082;
      v82 = v57;
      v83 = 1024;
      v84 = 206;
      v85 = 1024;
      LODWORD(v86) = status2;
      v59 = "%c[%{public}s %{public}s]:%i Failed to deselect instance %u";
      v60 = v30;
      v61 = 40;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v62 = NFLogGetLogger();
      if (v62)
      {
        v63 = v62;
        v64 = object_getClass(self);
        v65 = class_isMetaClass(v64);
        v66 = object_getClassName(self);
        v74 = sel_getName(a2);
        v67 = 45;
        if (v65)
        {
          v67 = 43;
        }

        v63(3, "%c[%{public}s %{public}s]:%i Failed to deselect instance, expecting RAPDU", v67, v66, v74, 201);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      v68 = object_getClass(self);
      if (class_isMetaClass(v68))
      {
        v69 = 43;
      }

      else
      {
        v69 = 45;
      }

      v70 = object_getClassName(self);
      v71 = sel_getName(a2);
      *buf = 67109890;
      v78 = v69;
      v79 = 2082;
      v80 = v70;
      v81 = 2082;
      v82 = v71;
      v83 = 1024;
      v84 = 201;
      v59 = "%c[%{public}s %{public}s]:%i Failed to deselect instance, expecting RAPDU";
      v60 = v30;
      v61 = 34;
    }

    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, v59, buf, v61);
    goto LABEL_53;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v37 = NFLogGetLogger();
  if (v37)
  {
    v38 = v37;
    v39 = object_getClass(self);
    v40 = class_isMetaClass(v39);
    v41 = object_getClassName(self);
    v73 = sel_getName(a2);
    v42 = 45;
    if (v40)
    {
      v42 = 43;
    }

    v38(3, "%c[%{public}s %{public}s]:%i secureElementWrapper is nil, could not deselect instance", v42, v41, v73, 189);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v43 = object_getClass(self);
    if (class_isMetaClass(v43))
    {
      v44 = 43;
    }

    else
    {
      v44 = 45;
    }

    v45 = object_getClassName(self);
    v46 = sel_getName(a2);
    *buf = 67109890;
    v78 = v44;
    v79 = 2082;
    v80 = v45;
    v81 = 2082;
    v82 = v46;
    v83 = 1024;
    v84 = 189;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i secureElementWrapper is nil, could not deselect instance", buf, 0x22u);
  }

LABEL_55:
}

- (id)getListOfKeysWithError:(id *)error
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100006A7C;
  v37 = sub_1000C87CC;
  v38 = objc_opt_new();
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100006A7C;
  v31 = sub_1000C87CC;
  v32 = 0;
  if (!error)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v14 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v18 = 45;
      if (isMetaClass)
      {
        v18 = 43;
      }

      v14(3, "%c[%{public}s %{public}s]:%i getListOfKeysWithError expects error to be returned", v18, ClassName, Name, 221);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = object_getClass(self);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      v22 = object_getClassName(self);
      v23 = sel_getName(a2);
      *buf = 67109890;
      v42 = v21;
      v43 = 2082;
      v44 = v22;
      v45 = 2082;
      v46 = v23;
      v47 = 1024;
      v48 = 221;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i getListOfKeysWithError expects error to be returned", buf, 0x22u);
    }

LABEL_15:
    v12 = 0;
    goto LABEL_17;
  }

  trustDB = [(_NFTrustSession *)self trustDB];

  if (trustDB)
  {
    selectInstance = [(_NFTrustSession *)self selectInstance];
    *error = selectInstance;
    if (!selectInstance)
    {
      trustDB2 = [(_NFTrustSession *)self trustDB];
      v9 = objc_opt_class();
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000C87D4;
      v26[3] = &unk_100318250;
      v26[4] = self;
      v26[5] = &v27;
      v26[6] = &v33;
      v26[7] = a2;
      sub_10001FBBC(trustDB2, v9, v26);

      v39 = @"totalPurpleTrustKeys";
      v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v34[5] count]);
      v40 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      [NFGeneralStatisticsCALogger updateGeneralDeviceStatistic:v11];

      *error = v28[5];
      v12 = v34[5];
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  sub_10013DE50();
  *error = v12 = 0;
LABEL_17:
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);

  return v12;
}

- (void)listKeysWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFTrustSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C9190;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (unint64_t)getNumberOfKeys:(id *)keys
{
  keys = [(_NFTrustSession *)self keys];
  v4 = [keys count];

  return v4;
}

- (id)deleteDBKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    v10 = sub_10013E33C(@"Could not delete Key with nil DB Key");
    goto LABEL_17;
  }

  trustDB = [(_NFTrustSession *)self trustDB];
  if (!trustDB || (v7 = trustDB, [(_NFTrustSession *)self trustDBApplet], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v19 = sub_10013DE50();
    v127[0] = @"purpleTrustOperationType";
    v127[1] = @"purpleTrustOperationErrorStep";
    v128[0] = &off_100331038;
    v128[1] = &off_100331038;
    v128[2] = &off_100331050;
    v127[2] = @"purpleTrustOperationCAErrorCode";
    v127[3] = @"purpleTrustOperationErrorCode";
    v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v19 code]);
    v128[3] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v128 forKeys:v127 count:4];

    sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v21);
    [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339468];
    v10 = v19;

LABEL_17:
    v22 = 0;
    goto LABEL_18;
  }

  selectInstance = [(_NFTrustSession *)self selectInstance];
  if (selectInstance)
  {
    v10 = selectInstance;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v12(3, "%c[%{public}s %{public}s]:%i Failed to select instance : %{public}@", v15, ClassName, Name, 366, v10);
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

      *buf = 67110146;
      v112 = v18;
      v113 = 2082;
      v114 = object_getClassName(self);
      v115 = 2082;
      v116 = sel_getName(a2);
      v117 = 1024;
      v118 = 366;
      v119 = 2114;
      v120 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select instance : %{public}@", buf, 0x2Cu);
    }

    goto LABEL_17;
  }

  v22 = keyCopy[4];
  if (v22)
  {
    trustDBApplet = [(_NFTrustSession *)self trustDBApplet];
    v10 = sub_100021094(trustDBApplet, v22);

    if (v10)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFLogGetLogger();
      if (v25)
      {
        v26 = v25;
        v27 = object_getClass(self);
        v28 = class_isMetaClass(v27);
        v94 = object_getClassName(self);
        v99 = sel_getName(a2);
        v29 = 45;
        if (v28)
        {
          v29 = 43;
        }

        v26(3, "%c[%{public}s %{public}s]:%i Failed to clean DB Applet slot : %{public}@", v29, v94, v99, 374, v10);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = object_getClass(self);
        if (class_isMetaClass(v31))
        {
          v32 = 43;
        }

        else
        {
          v32 = 45;
        }

        *buf = 67110146;
        v112 = v32;
        v113 = 2082;
        v114 = object_getClassName(self);
        v115 = 2082;
        v116 = sel_getName(a2);
        v117 = 1024;
        v118 = 374;
        v119 = 2114;
        v120 = v10;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to clean DB Applet slot : %{public}@", buf, 0x2Cu);
      }

      v125[0] = @"purpleTrustOperationType";
      v125[1] = @"purpleTrustOperationErrorStep";
      v126[0] = &off_100331038;
      v126[1] = &off_100331080;
      v126[2] = &off_100331050;
      v125[2] = @"purpleTrustOperationCAErrorCode";
      v125[3] = @"purpleTrustOperationErrorCode";
      v33 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 code]);
      v126[3] = v33;
      v34 = [NSDictionary dictionaryWithObjects:v126 forKeys:v125 count:4];

      sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v34);
      v35 = &off_100339490;
LABEL_46:
      [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:v35];
      v47 = v10;
LABEL_47:
      v10 = v47;

      goto LABEL_18;
    }
  }

  v36 = keyCopy[3];

  if (v36)
  {
    objc_storeStrong(keyCopy + 3, 0);
  }

  trustDB2 = [(_NFTrustSession *)self trustDB];
  v10 = sub_10001EE48(trustDB2);

  if (v10)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFLogGetLogger();
    if (v38)
    {
      v39 = v38;
      v40 = object_getClass(self);
      v41 = class_isMetaClass(v40);
      v95 = object_getClassName(self);
      v100 = sel_getName(a2);
      v42 = 45;
      if (v41)
      {
        v42 = 43;
      }

      v39(3, "%c[%{public}s %{public}s]:%i Failed to commit NFTrustDB : %{public}@ ...", v42, v95, v100, 398, v10);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v43 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = object_getClass(self);
      if (class_isMetaClass(v44))
      {
        v45 = 43;
      }

      else
      {
        v45 = 45;
      }

      *buf = 67110146;
      v112 = v45;
      v113 = 2082;
      v114 = object_getClassName(self);
      v115 = 2082;
      v116 = sel_getName(a2);
      v117 = 1024;
      v118 = 398;
      v119 = 2114;
      v120 = v10;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to commit NFTrustDB : %{public}@ ...", buf, 0x2Cu);
    }

    v123[0] = @"purpleTrustOperationType";
    v123[1] = @"purpleTrustOperationErrorStep";
    v124[0] = &off_100331038;
    v124[1] = &off_100331080;
    v124[2] = &off_100331050;
    v123[2] = @"purpleTrustOperationCAErrorCode";
    v123[3] = @"purpleTrustOperationErrorCode";
    v46 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 code]);
    v124[3] = v46;
    v34 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:4];

    sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v34);
    v35 = &off_1003394B8;
    goto LABEL_46;
  }

  objc_storeStrong(keyCopy + 4, 0);
  v48 = NFSharedSignpostLog();
  if (os_signpost_enabled(v48))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "deleteKeyInSlot", &unk_1002E8B7A, buf, 2u);
  }

  if (v22 && ([(_NFTrustSession *)self secureElementWrapper], v49 = objc_claimAutoreleasedReturnValue(), sub_1000AD9F4(v49, v22), v50 = objc_claimAutoreleasedReturnValue(), v49, v50))
  {
    v51 = NFSharedSignpostLog();
    if (os_signpost_enabled(v51))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "deleteKeyInSlot", "failed", buf, 2u);
    }

    domain = [v50 domain];
    if ([domain isEqualToString:@"GP"])
    {
      code = [v50 code];

      if (code != 27272)
      {
        goto LABEL_70;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v54 = NFLogGetLogger();
      if (v54)
      {
        v55 = v54;
        v56 = object_getClass(self);
        v57 = class_isMetaClass(v56);
        v103 = object_getClassName(self);
        v58 = sel_getName(a2);
        v59 = keyCopy[1];
        v60 = 45;
        if (v57)
        {
          v60 = 43;
        }

        v55(3, "%c[%{public}s %{public}s]:%i Key with identifier %{public}@ is supposed to be in slot %{public}@ but slot is empty", v60, v103, v58, 427, v59, v22);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v61 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = object_getClass(self);
        if (class_isMetaClass(v62))
        {
          v63 = 43;
        }

        else
        {
          v63 = 45;
        }

        v104 = v63;
        v64 = object_getClassName(self);
        v65 = sel_getName(a2);
        v66 = keyCopy[1];
        *buf = 67110402;
        v112 = v104;
        v113 = 2082;
        v114 = v64;
        v115 = 2082;
        v116 = v65;
        v117 = 1024;
        v118 = 427;
        v119 = 2114;
        v120 = v66;
        v121 = 2114;
        v122 = v22;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Key with identifier %{public}@ is supposed to be in slot %{public}@ but slot is empty", buf, 0x36u);
      }

      v109[0] = @"purpleTrustOperationType";
      v109[1] = @"purpleTrustOperationErrorStep";
      v110[0] = &off_100331038;
      v110[1] = &off_100331098;
      v110[2] = &off_1003310B0;
      v109[2] = @"purpleTrustOperationCAErrorCode";
      v109[3] = @"purpleTrustOperationErrorCode";
      v67 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v50 code]);
      v110[3] = v67;
      domain = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:4];

      sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, domain);
      [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_1003394E0];
    }
  }

  else
  {
    domain = NFSharedSignpostLog();
    if (os_signpost_enabled(domain))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, domain, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "deleteKeyInSlot", &unk_1002E8B7A, buf, 2u);
    }

    v50 = 0;
  }

LABEL_70:
  trustDB3 = [(_NFTrustSession *)self trustDB];
  v69 = sub_10001E890(trustDB3, keyCopy);

  if (v69)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v70 = NFLogGetLogger();
    if (v70)
    {
      v71 = v70;
      v72 = object_getClass(self);
      v73 = class_isMetaClass(v72);
      v96 = object_getClassName(self);
      v101 = sel_getName(a2);
      v74 = 45;
      if (v73)
      {
        v74 = 43;
      }

      v71(3, "%c[%{public}s %{public}s]:%i Failed to remove Key from NFTrustDB : %{public}@ ...", v74, v96, v101, 450, v69);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v75 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v76 = object_getClass(self);
      if (class_isMetaClass(v76))
      {
        v77 = 43;
      }

      else
      {
        v77 = 45;
      }

      v78 = object_getClassName(self);
      v79 = sel_getName(a2);
      *buf = 67110146;
      v112 = v77;
      v113 = 2082;
      v114 = v78;
      v115 = 2082;
      v116 = v79;
      v117 = 1024;
      v118 = 450;
      v119 = 2114;
      v120 = v69;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to remove Key from NFTrustDB : %{public}@ ...", buf, 0x2Cu);
    }

    v107[0] = @"purpleTrustOperationType";
    v107[1] = @"purpleTrustOperationErrorStep";
    v108[0] = &off_100331038;
    v108[1] = &off_100331098;
    v108[2] = &off_100331050;
    v107[2] = @"purpleTrustOperationCAErrorCode";
    v107[3] = @"purpleTrustOperationErrorCode";
    v80 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v69 code]);
    v108[3] = v80;
    v34 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:4];

    sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v34);
    [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339508];
    v47 = v69;
    goto LABEL_47;
  }

  trustDB4 = [(_NFTrustSession *)self trustDB];
  v10 = sub_10001EE48(trustDB4);

  if (v10)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v82 = NFLogGetLogger();
    if (v82)
    {
      v83 = v82;
      v84 = object_getClass(self);
      v85 = class_isMetaClass(v84);
      v97 = object_getClassName(self);
      v102 = sel_getName(a2);
      v86 = 45;
      if (v85)
      {
        v86 = 43;
      }

      v83(3, "%c[%{public}s %{public}s]:%i Failed to commit NFTrustDB : %{public}@ ...", v86, v97, v102, 471, v10);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v87 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      v88 = object_getClass(self);
      if (class_isMetaClass(v88))
      {
        v89 = 43;
      }

      else
      {
        v89 = 45;
      }

      v90 = object_getClassName(self);
      v91 = sel_getName(a2);
      *buf = 67110146;
      v112 = v89;
      v113 = 2082;
      v114 = v90;
      v115 = 2082;
      v116 = v91;
      v117 = 1024;
      v118 = 471;
      v119 = 2114;
      v120 = v10;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to commit NFTrustDB : %{public}@ ...", buf, 0x2Cu);
    }

    v105[0] = @"purpleTrustOperationType";
    v105[1] = @"purpleTrustOperationErrorStep";
    v106[0] = &off_100331038;
    v106[1] = &off_100331098;
    v106[2] = &off_100331050;
    v105[2] = @"purpleTrustOperationCAErrorCode";
    v105[3] = @"purpleTrustOperationErrorCode";
    v92 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 code]);
    v106[3] = v92;
    v34 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:4];

    sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v34);
    v35 = &off_100339530;
    goto LABEL_46;
  }

LABEL_18:

  return v10;
}

- (void)deleteKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = _NFTrustSession;
  workQueue = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000CA958;
  v12[3] = &unk_1003182B8;
  v14 = completionCopy;
  v15 = a2;
  v12[4] = self;
  v13 = keyCopy;
  v10 = keyCopy;
  v11 = completionCopy;
  dispatch_async(workQueue, v12);
}

- (void)createKey:(id)key cresteKeyRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v19.receiver = self;
  v19.super_class = _NFTrustSession;
  keyCopy = key;
  workQueue = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CB4C4;
  block[3] = &unk_1003182E0;
  v17 = completionCopy;
  v18 = a2;
  block[4] = self;
  block[5] = keyCopy;
  v16 = requestCopy;
  v13 = requestCopy;
  v14 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)signWithKey:(id)key signRequest:(id)request paymentRequest:(id)paymentRequest authorization:(id)authorization completion:(id)completion
{
  keyCopy = key;
  paymentRequestCopy = paymentRequest;
  authorizationCopy = authorization;
  completionCopy = completion;
  v30.receiver = self;
  v30.super_class = _NFTrustSession;
  requestCopy = request;
  workQueue = [(_NFSession *)&v30 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CD9B0;
  block[3] = &unk_100318308;
  v28 = completionCopy;
  v29 = a2;
  block[4] = self;
  v24 = keyCopy;
  v25 = requestCopy;
  v26 = authorizationCopy;
  v27 = paymentRequestCopy;
  v19 = paymentRequestCopy;
  v20 = authorizationCopy;
  v21 = keyCopy;
  v22 = completionCopy;
  dispatch_async(workQueue, block);
}

@end