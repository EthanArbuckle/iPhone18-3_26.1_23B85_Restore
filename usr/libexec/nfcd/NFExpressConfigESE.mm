@interface NFExpressConfigESE
- (BOOL)hasUWBKeys:(id)keys;
- (BOOL)validateAndUpdateExpressConfig:(id)config avoidChangingRouting:(BOOL)routing;
- (NFExpressConfigESE)initWithDriverWrapper:(id)wrapper;
- (id)disableExpressForKeys:(id)keys onApplet:(id)applet;
- (id)extractConfigFrom:(id)from;
- (id)fetchFromStorage;
- (id)getSecureElementWrapper;
- (id)getSecureElementWrapperAndSetRouting;
- (id)migrateFromDefaults;
- (id)updateExpressConfigLimitedTo:(id)to andActivate:(BOOL)activate hasChanged:(BOOL *)changed disableDPDEnter:(BOOL *)enter;
- (void)updateStorage;
@end

@implementation NFExpressConfigESE

- (NFExpressConfigESE)initWithDriverWrapper:(id)wrapper
{
  v11.receiver = self;
  v11.super_class = NFExpressConfigESE;
  v3 = [(NFExpressConfig *)&v11 initWithDriverWrapper:wrapper];
  v4 = v3;
  if (v3)
  {
    v3->_effectivePassConfigHash = -1;
    v3->_effectiveRestrictedPassIDListHash = -1;
    v5 = +[_NFHardwareManager sharedHardwareManager];
    v6 = v5;
    if (v5)
    {
      walletDomain = [*(v5 + 128) walletDomain];
      v8 = 0x19u >> walletDomain;
      if (walletDomain > 4)
      {
        LOBYTE(v8) = 0;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    v4->_lastIsLegacyWalletBehaviour = v8 & 1;

    v9 = v4;
  }

  return v4;
}

- (id)getSecureElementWrapper
{
  v2 = +[_NFHardwareManager sharedHardwareManager];
  secureElementWrapper = [v2 secureElementWrapper];

  return secureElementWrapper;
}

- (id)getSecureElementWrapperAndSetRouting
{
  v4 = +[_NFHardwareManager sharedHardwareManager];
  v5 = sub_10004BF2C();
  lastKnownRoutingConfig = [v4 lastKnownRoutingConfig];
  if (sub_10004B630(lastKnownRoutingConfig, v5))
  {

LABEL_14:
    secureElementWrapper = [v4 secureElementWrapper];
    goto LABEL_15;
  }

  v7 = [v4 setRoutingConfig:v5];

  if (!v7)
  {
    goto LABEL_14;
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
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v9(3, "%c[%{public}s %{public}s]:%i Failed to set eSE to wired mode", v13, ClassName, Name, 151);
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

    *buf = 67109890;
    v21 = v16;
    v22 = 2082;
    v23 = object_getClassName(self);
    v24 = 2082;
    v25 = sel_getName(a2);
    v26 = 1024;
    v27 = 151;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set eSE to wired mode", buf, 0x22u);
  }

  secureElementWrapper = 0;
LABEL_15:

  return secureElementWrapper;
}

- (void)updateStorage
{
  v4 = objc_opt_new();
  v85 = +[NSUserDefaults standardUserDefaults];
  LOBYTE(v5) = [v85 BOOLForKey:@"eSETestDBErrors"];
  v6 = 0;
  while (1)
  {
    if (self)
    {
      passes = self->super._passes;
    }

    else
    {
      passes = 0;
    }

    v8 = passes;
    p_super = &v8->super.super;
    if ((v5 & 1) == 0)
    {
      goto LABEL_21;
    }

    v10 = [(NSMutableArray *)v8 count];

    if (!v6 && v10)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v12 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v16 = 45;
        if (isMetaClass)
        {
          v16 = 43;
        }

        v12(6, "%c[%{public}s %{public}s]:%i testing DB errors - doubling array", v16, ClassName, Name, 169);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = object_getClass(self);
        if (class_isMetaClass(v18))
        {
          v19 = 43;
        }

        else
        {
          v19 = 45;
        }

        v20 = object_getClassName(self);
        v21 = sel_getName(a2);
        *buf = 67109890;
        v89 = v19;
        v90 = 2082;
        v91 = v20;
        v92 = 2082;
        v93 = v21;
        v94 = 1024;
        v95 = 169;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i testing DB errors - doubling array", buf, 0x22u);
      }

      if (self)
      {
        v22 = self->super._passes;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;
      p_super = [NSMutableArray arrayWithArray:v23];

      if (self)
      {
        v24 = self->super._passes;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;
      [p_super addObjectsFromArray:v25];

LABEL_21:
      [v4 updateESEExpressEntitiesWithConfig:p_super];
      v5 = 0;
      goto LABEL_34;
    }

    if (self)
    {
      v26 = self->super._passes;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    [v4 updateESEExpressEntitiesWithConfig:v27];

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v29 = v28;
      v30 = object_getClass(self);
      v31 = class_isMetaClass(v30);
      v32 = object_getClassName(self);
      v81 = sel_getName(a2);
      v33 = 45;
      if (v31)
      {
        v33 = 43;
      }

      v29(6, "%c[%{public}s %{public}s]:%i Read back the config", v33, v32, v81, 181);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    p_super = NFSharedLogGetLogger();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v34 = object_getClass(self);
      if (class_isMetaClass(v34))
      {
        v35 = 43;
      }

      else
      {
        v35 = 45;
      }

      v36 = object_getClassName(self);
      v37 = sel_getName(a2);
      *buf = 67109890;
      v89 = v35;
      v90 = 2082;
      v91 = v36;
      v92 = 2082;
      v93 = v37;
      v94 = 1024;
      v95 = 181;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Read back the config", buf, 0x22u);
    }

    v5 = 1;
LABEL_34:

    v87 = 0;
    v38 = [v4 fetchESEExpressEntitiesWithError:&v87];
    v39 = v87;
    v40 = v39;
    if (!v38 || v39)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v58 = NFLogGetLogger();
      if (v58)
      {
        v59 = v58;
        v60 = object_getClass(self);
        v61 = class_isMetaClass(v60);
        v62 = object_getClassName(self);
        v83 = sel_getName(a2);
        v63 = 45;
        if (v61)
        {
          v63 = 43;
        }

        v59(3, "%c[%{public}s %{public}s]:%i Failed to read expressConfig from storage (iteration %d): error: %{public}@", v63, v62, v83, 189, v6, v40);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v64 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v65 = object_getClass(self);
        if (class_isMetaClass(v65))
        {
          v66 = 43;
        }

        else
        {
          v66 = 45;
        }

        v67 = object_getClassName(self);
        v68 = sel_getName(a2);
        *buf = 67110402;
        v89 = v66;
        v90 = 2082;
        v91 = v67;
        v92 = 2082;
        v93 = v68;
        v94 = 1024;
        v95 = 189;
        v96 = 1024;
        v97 = v6;
        v98 = 2114;
        v99 = v40;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to read expressConfig from storage (iteration %d): error: %{public}@", buf, 0x32u);
      }

      goto LABEL_62;
    }

    v41 = self ? self->super._passes : 0;
    v42 = v41;
    v43 = [(NSMutableArray *)v42 NF_isEqualToExpressConfigList:v38];

    if (v43)
    {
      break;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v44 = NFLogGetLogger();
    if (v44)
    {
      v45 = v44;
      v46 = object_getClass(self);
      v47 = class_isMetaClass(v46);
      v48 = object_getClassName(self);
      v82 = sel_getName(a2);
      v49 = 45;
      if (v47)
      {
        v49 = 43;
      }

      v45(3, "%c[%{public}s %{public}s]:%i Passes in storage don't match to configured (iteration %d)", v49, v48, v82, 202, v6);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v50 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = object_getClass(self);
      if (class_isMetaClass(v51))
      {
        v52 = 43;
      }

      else
      {
        v52 = 45;
      }

      v53 = object_getClassName(self);
      v54 = sel_getName(a2);
      *buf = 67110146;
      v89 = v52;
      v90 = 2082;
      v91 = v53;
      v92 = 2082;
      v93 = v54;
      v94 = 1024;
      v95 = 202;
      v96 = 1024;
      v97 = v6;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Passes in storage don't match to configured (iteration %d)", buf, 0x28u);
    }

    if (self)
    {
      v55 = self->super._passes;
    }

    else
    {
      v55 = 0;
    }

    v56 = v55;
    [(NFExpressConfig *)self dumpConfig:v56 logLevel:3 prefix:@"updateStorage: current config"];

    v86 = 0;
    v57 = [v4 fetchESEExpressEntitiesWithError:&v86];
    v40 = v86;
    [(NFExpressConfig *)self dumpConfig:v57 logLevel:3 prefix:@"updateStorage: stored config"];

    if (!v6)
    {
      sub_100199C14(NFBugCapture, @"Incorrect eSE config has been stored", @"CoreData update error", 0);
      [NFExceptionsCALogger postAnalyticsExpressSetupFailureEvent:2 context:0 error:0];
    }

LABEL_62:

    v6 = (v6 + 1);
    if (v6 == 5)
    {
      [v4 disconnect];
      goto LABEL_82;
    }
  }

  if (v5)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v69 = NFLogGetLogger();
    if (v69)
    {
      v70 = v69;
      v71 = object_getClass(self);
      v72 = class_isMetaClass(v71);
      v73 = object_getClassName(self);
      v84 = sel_getName(a2);
      v74 = 45;
      if (v72)
      {
        v74 = 43;
      }

      v70(6, "%c[%{public}s %{public}s]:%i passes match", v74, v73, v84, 193);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v75 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
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
      *buf = 67109890;
      v89 = v77;
      v90 = 2082;
      v91 = v78;
      v92 = 2082;
      v93 = v79;
      v94 = 1024;
      v95 = 193;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i passes match", buf, 0x22u);
    }
  }

  [v4 disconnect];

LABEL_82:
}

- (BOOL)validateAndUpdateExpressConfig:(id)config avoidChangingRouting:(BOOL)routing
{
  routingCopy = routing;
  configCopy = config;
  if (![configCopy count])
  {
    v35 = 1;
    goto LABEL_93;
  }

  v103 = a2;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = configCopy;
  v8 = [obj countByEnumeratingWithState:&v107 objects:v123 count:16];
  if (!v8)
  {
    v35 = 1;
    goto LABEL_92;
  }

  v9 = v8;
  v10 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
  v105 = *v108;
  v102 = configCopy;
  while (2)
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v108 != v105)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v107 + 1) + 8 * i);
      v13 = [v12 objectForKeyedSubscript:@"appletIdentifier"];
      v14 = v10[475];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_100199C14(NFBugCapture, @"Unable to set as express", @"NFExpressConfigESE : validateAndUpdateExpressConfig, Error: Wrong class", 0);
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v62 = Logger;
          Class = object_getClass(self);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(self);
          Name = sel_getName(v103);
          v66 = 45;
          if (isMetaClass)
          {
            v66 = 43;
          }

          v62(3, "%c[%{public}s %{public}s]:%i Wrong class for AID", v66, ClassName, Name, 243);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v67 = NFSharedLogGetLogger();
        configCopy = v102;
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
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
          v71 = sel_getName(v103);
          *buf = 67109890;
          v112 = v69;
          v113 = 2082;
          v114 = v70;
          v115 = 2082;
          v116 = v71;
          v117 = 1024;
          v118 = 243;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Wrong class for AID", buf, 0x22u);
        }

        [NFExceptionsCALogger postAnalyticsExpressSetupFailureEvent:0 context:1 error:0];
        goto LABEL_91;
      }

      v15 = [v12 objectForKeyedSubscript:@"ExpressType"];
      v16 = v10[475];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![NFExpressConfig expressTypeForATLConfigKey:v15])
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v36 = NFLogGetLogger();
        if (v36)
        {
          v37 = v36;
          v38 = object_getClass(self);
          v39 = class_isMetaClass(v38);
          v40 = object_getClassName(self);
          v97 = sel_getName(v103);
          v41 = 45;
          if (v39)
          {
            v41 = 43;
          }

          v37(3, "%c[%{public}s %{public}s]:%i Incorrect express type %{public}@ for %{public}@", v41, v40, v97, 253, v15, v13);
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

          v45 = object_getClassName(self);
          v46 = sel_getName(v103);
          *buf = 67110402;
          v112 = v44;
          v113 = 2082;
          v114 = v45;
          v115 = 2082;
          v116 = v46;
          v117 = 1024;
          v118 = 253;
          v119 = 2114;
          v120 = v15;
          v121 = 2114;
          v122 = v13;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Incorrect express type %{public}@ for %{public}@", buf, 0x36u);
        }

        v47 = [[NSString alloc] initWithFormat:@"NFExpressConfigESE : validateAndUpdateExpressConfig, Error: Wrong express type %@ for %@", v15, v13];
        sub_100199C14(NFBugCapture, @"Incorrect express type", v47, 0);
        [NFExceptionsCALogger postAnalyticsExpressSetupFailureEvent:1 context:2 error:0];

        configCopy = v102;
        goto LABEL_91;
      }

      v17 = [v12 objectForKeyedSubscript:@"inSessionOnly"];

      if (!v17)
      {
        [v12 setObject:&__kCFBooleanFalse forKeyedSubscript:@"inSessionOnly"];
      }

      v18 = [v12 objectForKeyedSubscript:@"UWBExpressEnabled"];

      if (!v18)
      {
        [v12 setObject:&__kCFBooleanFalse forKeyedSubscript:@"UWBExpressEnabled"];
      }

      v19 = [v12 objectForKeyedSubscript:@"userChoice"];

      if (!v19)
      {
        [v12 setObject:&__kCFBooleanFalse forKeyedSubscript:@"userChoice"];
      }

      v20 = [v12 objectForKeyedSubscript:@"supportsUWB"];

      if (!v20)
      {
        [v12 setObject:&__kCFBooleanFalse forKeyedSubscript:@"supportsUWB"];
      }

      v106 = 0;
      v21 = sub_10000ADB0(self, v13, !routingCopy, &v106);
      v22 = v21;
      if (routingCopy && (v106 & 1) != 0)
      {
        goto LABEL_35;
      }

      if (!v21)
      {
        v72 = [NSString stringWithFormat:@"NFExpressConfigESE: validateAndUpdateExpressConfig, Error: %@ is not on SE", v13];
        sub_100199C14(NFBugCapture, @"Unable to set as express", v72, 0);

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v73 = NFLogGetLogger();
        if (v73)
        {
          v74 = v73;
          v75 = object_getClass(self);
          v76 = class_isMetaClass(v75);
          v95 = object_getClassName(self);
          v100 = sel_getName(v103);
          v77 = 45;
          if (v76)
          {
            v77 = 43;
          }

          v74(3, "%c[%{public}s %{public}s]:%i %{public}@ not installed on eSE", v77, v95, v100, 282, v13);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v55 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v78 = object_getClass(self);
          if (class_isMetaClass(v78))
          {
            v79 = 43;
          }

          else
          {
            v79 = 45;
          }

          v80 = object_getClassName(self);
          v81 = sel_getName(v103);
          *buf = 67110146;
          v112 = v79;
          v113 = 2082;
          v114 = v80;
          v115 = 2082;
          v116 = v81;
          v117 = 1024;
          v118 = 282;
          v119 = 2114;
          v120 = v13;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ not installed on eSE", buf, 0x2Cu);
        }

        v60 = 3;
LABEL_90:
        configCopy = v102;

        [NFExceptionsCALogger postAnalyticsExpressSetupFailureEvent:0 context:v60 error:0];
LABEL_91:

        v35 = 0;
        goto LABEL_92;
      }

      selfCopy = self;
      v24 = [v12 objectForKeyedSubscript:@"expressEnabled"];
      if ([v24 BOOLValue])
      {
        authTransientSupport = [v22 authTransientSupport];

        if (authTransientSupport)
        {
          v82 = [NSString stringWithFormat:@"NFExpressConfigESE: validateAndUpdateExpressConfig, Error: Transient authorization enabled for %@", v13];
          sub_100199C14(NFBugCapture, @"Unable to set as express", v82, 0);

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v83 = NFLogGetLogger();
          v84 = selfCopy;
          if (v83)
          {
            v85 = v83;
            v86 = object_getClass(selfCopy);
            v87 = class_isMetaClass(v86);
            v96 = object_getClassName(selfCopy);
            v101 = sel_getName(v103);
            v88 = 45;
            if (v87)
            {
              v88 = 43;
            }

            v85(3, "%c[%{public}s %{public}s]:%i Transient authorization enabled for %{public}@", v88, v96, v101, 294, v13);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v55 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v89 = object_getClass(v84);
            if (class_isMetaClass(v89))
            {
              v90 = 43;
            }

            else
            {
              v90 = 45;
            }

            v91 = object_getClassName(v84);
            v92 = sel_getName(v103);
            *buf = 67110146;
            v112 = v90;
            v113 = 2082;
            v114 = v91;
            v115 = 2082;
            v116 = v92;
            v117 = 1024;
            v118 = 294;
            v119 = 2114;
            v120 = v13;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Transient authorization enabled for %{public}@", buf, 0x2Cu);
          }

          v60 = 4;
          goto LABEL_90;
        }
      }

      else
      {
      }

      if ([v22 lifecycleState] == 129 || objc_msgSend(v22, "lifecycleState") == 130)
      {
        v48 = [NSString stringWithFormat:@"NFExpressConfigESE: validateAndUpdateExpressConfig, Error: Applet %@ is terminated/frozen", v13];
        sub_100199C14(NFBugCapture, @"Unable to set as express", v48, 0);

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v49 = NFLogGetLogger();
        v50 = selfCopy;
        if (v49)
        {
          v51 = v49;
          v52 = object_getClass(selfCopy);
          v53 = class_isMetaClass(v52);
          v94 = object_getClassName(selfCopy);
          v98 = sel_getName(v103);
          v54 = 45;
          if (v53)
          {
            v54 = 43;
          }

          v51(3, "%c[%{public}s %{public}s]:%i Applet %{public}@ is terminated/frozen", v54, v94, v98, 307, v13);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v55 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v56 = object_getClass(v50);
          if (class_isMetaClass(v56))
          {
            v57 = 43;
          }

          else
          {
            v57 = 45;
          }

          v58 = object_getClassName(v50);
          v59 = sel_getName(v103);
          *buf = 67110146;
          v112 = v57;
          v113 = 2082;
          v114 = v58;
          v115 = 2082;
          v116 = v59;
          v117 = 1024;
          v118 = 307;
          v119 = 2114;
          v120 = v13;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Applet %{public}@ is terminated/frozen", buf, 0x2Cu);
        }

        v60 = 5;
        goto LABEL_90;
      }

      v26 = [v12 objectForKeyedSubscript:@"moduleIdentifier"];

      self = selfCopy;
      if (!v26)
      {
        moduleIdentifier = [v22 moduleIdentifier];
        [v12 setObject:moduleIdentifier forKeyedSubscript:@"moduleIdentifier"];
      }

      v28 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v22 groupActivationStyle]);
      [v12 setObject:v28 forKeyedSubscript:@"groupActivationStyle"];

      moduleIdentifier2 = [v22 moduleIdentifier];

      v10 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
      if (moduleIdentifier2)
      {
        moduleIdentifier3 = [v22 moduleIdentifier];
        [v12 setObject:moduleIdentifier3 forKeyedSubscript:@"moduleIdentifier"];
      }

      groupHeadID = [v22 groupHeadID];

      if (groupHeadID)
      {
        groupHeadID2 = [v22 groupHeadID];
        [v12 setObject:groupHeadID2 forKeyedSubscript:@"groupHead"];
      }

      groupMemberIDs = [v22 groupMemberIDs];

      if (groupMemberIDs)
      {
        groupMemberIDs2 = [v22 groupMemberIDs];
        [v12 setObject:groupMemberIDs2 forKeyedSubscript:@"groupMembers"];
      }

LABEL_35:
    }

    v9 = [obj countByEnumeratingWithState:&v107 objects:v123 count:16];
    v35 = 1;
    configCopy = v102;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_92:

LABEL_93:
  return v35;
}

- (id)fetchFromStorage
{
  v4 = objc_opt_new();
  v20 = 0;
  v5 = [v4 fetchESEExpressEntitiesWithError:&v20];
  v6 = v20;
  if (v6)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i Failed to execute fetch request: %{public}@", v11, ClassName, Name, 337, v6);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(self);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(self);
      v16 = sel_getName(a2);
      *buf = 67110146;
      v22 = v14;
      v23 = 2082;
      v24 = v15;
      v25 = 2082;
      v26 = v16;
      v27 = 1024;
      v28 = 337;
      v29 = 2114;
      v30 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to execute fetch request: %{public}@", buf, 0x2Cu);
    }
  }

  [v4 disconnect];

  return v5;
}

- (id)migrateFromDefaults
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 dictionaryForKey:@"eSEExpressConfig"];
  v161 = v4;
  if (v4)
  {
    v5 = [v4 mutableCopy];
    if (v5)
    {
      v6 = v5;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v8(6, "%c[%{public}s %{public}s]:%i new style express config: %{public}@", v11, ClassName, Name, 357, v6);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = object_getClass(self);
        if (class_isMetaClass(v13))
        {
          v14 = 43;
        }

        else
        {
          v14 = 45;
        }

        *buf = 67110146;
        v198 = v14;
        v199 = 2082;
        v200 = object_getClassName(self);
        v201 = 2082;
        v202 = sel_getName(a2);
        v203 = 1024;
        v204 = 357;
        v205 = 2114;
        v206 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i new style express config: %{public}@", buf, 0x2Cu);
      }

      [v3 removeObjectForKey:@"eSEExpressConfig"];
LABEL_141:
      v43 = [(NFExpressConfig *)self arrayConfigFromDictionary:v6];
      goto LABEL_142;
    }
  }

  v15 = [v3 objectForKey:@"ExpressTransitIdentifiers"];
  v159 = [v3 objectForKey:@"ExpressTransitIdentifier"];
  v6 = objc_opt_new();
  v16 = +[_NFHardwareManager sharedHardwareManager];
  secureElementWrapper = [v16 secureElementWrapper];

  if (secureElementWrapper)
  {
    v154 = secureElementWrapper;
    v160 = v3;
    v167 = v6;
    if (([secureElementWrapper supportedTechnologies] & 4) != 0)
    {
      if (v15)
      {
        v194 = 0u;
        v195 = 0u;
        v192 = 0u;
        v193 = 0u;
        v155 = v15;
        obj = v15;
        v18 = [obj countByEnumeratingWithState:&v192 objects:v212 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v193;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v193 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v192 + 1) + 8 * i);
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v23 = NFLogGetLogger();
              if (v23)
              {
                v24 = v23;
                v25 = object_getClass(self);
                v26 = class_isMetaClass(v25);
                v141 = object_getClassName(self);
                v147 = sel_getName(a2);
                v27 = 45;
                if (v26)
                {
                  v27 = 43;
                }

                v24(6, "%c[%{public}s %{public}s]:%i Adding Express Transit: %{public}@", v27, v141, v147, 382, v22);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v28 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = object_getClass(self);
                if (class_isMetaClass(v29))
                {
                  v30 = 43;
                }

                else
                {
                  v30 = 45;
                }

                v31 = object_getClassName(self);
                v32 = sel_getName(a2);
                *buf = 67110146;
                v198 = v30;
                v199 = 2082;
                v200 = v31;
                v201 = 2082;
                v202 = v32;
                v203 = 1024;
                v204 = 382;
                v205 = 2114;
                v206 = v22;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Adding Express Transit: %{public}@", buf, 0x2Cu);
              }

              v33 = objc_opt_new();
              [v33 setObject:@"Suica" forKeyedSubscript:@"ExpressType"];
              v6 = v167;
              [v167 setObject:v33 forKeyedSubscript:v22];
            }

            v19 = [obj countByEnumeratingWithState:&v192 objects:v212 count:16];
          }

          while (v19);
        }

        [v3 removeObjectForKey:@"ExpressTransitIdentifiers"];
        v15 = v155;
      }

      else if (v159)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v44 = NFLogGetLogger();
        if (v44)
        {
          v45 = v44;
          v46 = object_getClass(self);
          v47 = class_isMetaClass(v46);
          v142 = object_getClassName(self);
          v149 = sel_getName(a2);
          v48 = 45;
          if (v47)
          {
            v48 = 43;
          }

          v45(6, "%c[%{public}s %{public}s]:%i Express Transit aid: %{public}@", v48, v142, v149, 392, v159);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v49 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = object_getClass(self);
          if (class_isMetaClass(v50))
          {
            v51 = 43;
          }

          else
          {
            v51 = 45;
          }

          *buf = 67110146;
          v198 = v51;
          v199 = 2082;
          v200 = object_getClassName(self);
          v201 = 2082;
          v202 = sel_getName(a2);
          v203 = 1024;
          v204 = 392;
          v205 = 2114;
          v206 = v159;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Express Transit aid: %{public}@", buf, 0x2Cu);
        }

        v52 = objc_opt_new();
        [v52 setObject:@"Suica" forKeyedSubscript:@"ExpressType"];
        [v6 setObject:v52 forKeyedSubscript:v159];
        [v3 removeObjectForKey:@"ExpressTransitIdentifier"];
      }
    }

    v53 = [v3 objectForKey:@"ExpressAccessIdentifiers"];

    if (v53)
    {
      v190 = 0u;
      v191 = 0u;
      v188 = 0u;
      v189 = 0u;
      v156 = v53;
      obja = v53;
      v54 = [obja countByEnumeratingWithState:&v188 objects:v211 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = *v189;
        do
        {
          for (j = 0; j != v55; j = j + 1)
          {
            if (*v189 != v56)
            {
              objc_enumerationMutation(obja);
            }

            v58 = *(*(&v188 + 1) + 8 * j);
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v59 = NFLogGetLogger();
            if (v59)
            {
              v60 = v59;
              v61 = object_getClass(self);
              v62 = class_isMetaClass(v61);
              v143 = object_getClassName(self);
              v150 = sel_getName(a2);
              v63 = 45;
              if (v62)
              {
                v63 = 43;
              }

              v60(6, "%c[%{public}s %{public}s]:%i Adding Express Access aid: %{public}@", v63, v143, v150, 406, v58);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v64 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              v65 = object_getClass(self);
              if (class_isMetaClass(v65))
              {
                v66 = 43;
              }

              else
              {
                v66 = 45;
              }

              v67 = object_getClassName(self);
              v68 = sel_getName(a2);
              *buf = 67110146;
              v198 = v66;
              v199 = 2082;
              v200 = v67;
              v201 = 2082;
              v202 = v68;
              v203 = 1024;
              v204 = 406;
              v205 = 2114;
              v206 = v58;
              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Adding Express Access aid: %{public}@", buf, 0x2Cu);
            }

            v69 = objc_opt_new();
            [v69 setObject:@"ECP1.Access" forKeyedSubscript:@"ExpressType"];
            v6 = v167;
            [v167 setObject:v69 forKeyedSubscript:v58];
          }

          v55 = [obja countByEnumeratingWithState:&v188 objects:v211 count:16];
        }

        while (v55);
      }

      [v3 removeObjectForKey:@"ExpressAccessIdentifiers"];
      v53 = v156;
    }

    v70 = [v3 objectForKey:@"ExpressGenericAIdentifiers"];

    if (v70)
    {
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v157 = v70;
      objb = v70;
      v71 = [objb countByEnumeratingWithState:&v184 objects:v210 count:16];
      if (v71)
      {
        v72 = v71;
        v73 = *v185;
        do
        {
          for (k = 0; k != v72; k = k + 1)
          {
            if (*v185 != v73)
            {
              objc_enumerationMutation(objb);
            }

            v75 = *(*(&v184 + 1) + 8 * k);
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v76 = NFLogGetLogger();
            if (v76)
            {
              v77 = v76;
              v78 = object_getClass(self);
              v79 = class_isMetaClass(v78);
              v144 = object_getClassName(self);
              v151 = sel_getName(a2);
              v80 = 45;
              if (v79)
              {
                v80 = 43;
              }

              v77(6, "%c[%{public}s %{public}s]:%i Adding Express Generic-A aid: %{public}@", v80, v144, v151, 420, v75);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v81 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
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

              v84 = object_getClassName(self);
              v85 = sel_getName(a2);
              *buf = 67110146;
              v198 = v83;
              v199 = 2082;
              v200 = v84;
              v201 = 2082;
              v202 = v85;
              v203 = 1024;
              v204 = 420;
              v205 = 2114;
              v206 = v75;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Adding Express Generic-A aid: %{public}@", buf, 0x2Cu);
            }

            v86 = objc_opt_new();
            [v86 setObject:@"GenericA" forKeyedSubscript:@"ExpressType"];
            v6 = v167;
            [v167 setObject:v86 forKeyedSubscript:v75];
          }

          v72 = [objb countByEnumeratingWithState:&v184 objects:v210 count:16];
        }

        while (v72);
      }

      [v3 removeObjectForKey:@"ExpressGenericAIdentifiers"];
      v70 = v157;
    }

    v87 = [v3 objectForKey:@"ExpressECP2Identifiers"];

    v158 = v87;
    if (v87)
    {
      v182 = 0u;
      v183 = 0u;
      v180 = 0u;
      v181 = 0u;
      objc = v87;
      v88 = [objc countByEnumeratingWithState:&v180 objects:v209 count:16];
      if (v88)
      {
        v89 = v88;
        v90 = *v181;
        do
        {
          for (m = 0; m != v89; m = m + 1)
          {
            if (*v181 != v90)
            {
              objc_enumerationMutation(objc);
            }

            v92 = *(*(&v180 + 1) + 8 * m);
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v93 = NFLogGetLogger();
            if (v93)
            {
              v94 = v93;
              v95 = object_getClass(self);
              v96 = class_isMetaClass(v95);
              v145 = object_getClassName(self);
              v152 = sel_getName(a2);
              v97 = 45;
              if (v96)
              {
                v97 = 43;
              }

              v94(6, "%c[%{public}s %{public}s]:%i Adding Express ECP2.0 aid: %{public}@", v97, v145, v152, 434, v92);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v98 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              v99 = object_getClass(self);
              if (class_isMetaClass(v99))
              {
                v100 = 43;
              }

              else
              {
                v100 = 45;
              }

              v101 = object_getClassName(self);
              v102 = sel_getName(a2);
              *buf = 67110146;
              v198 = v100;
              v199 = 2082;
              v200 = v101;
              v201 = 2082;
              v202 = v102;
              v203 = 1024;
              v204 = 434;
              v205 = 2114;
              v206 = v92;
              _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Adding Express ECP2.0 aid: %{public}@", buf, 0x2Cu);
            }

            v103 = objc_opt_new();
            [v103 setObject:@"ECP2" forKeyedSubscript:@"ExpressType"];
            v6 = v167;
            [v167 setObject:v103 forKeyedSubscript:v92];
          }

          v89 = [objc countByEnumeratingWithState:&v180 objects:v209 count:16];
        }

        while (v89);
      }

      [v3 removeObjectForKey:@"ExpressECP2Identifiers"];
      v87 = v158;
    }

    v104 = [v3 objectForKey:@"ExpressAppletTCIs"];
    if (v104)
    {
      v105 = v104;
      if ([v3 BOOLForKey:@"Migrated49292960"])
      {
        [v3 removeObjectForKey:@"Migrated49292960"];
      }

      else
      {
        v174 = 0;
        v175 = &v174;
        v176 = 0x3032000000;
        v177 = sub_1000069DC;
        v178 = sub_10000DC80;
        v179 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v105, "count")}];
        v173[0] = _NSConcreteStackBlock;
        v173[1] = 3221225472;
        v173[2] = sub_10000DC88;
        v173[3] = &unk_1003152C8;
        v173[4] = &v174;
        [v105 enumerateKeysAndObjectsUsingBlock:v173];
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v106 = NFLogGetLogger();
        if (v106)
        {
          v107 = v106;
          v108 = object_getClass(self);
          v109 = class_isMetaClass(v108);
          v110 = object_getClassName(self);
          v111 = sel_getName(a2);
          v112 = 45;
          if (v109)
          {
            v112 = 43;
          }

          v107(4, "%c[%{public}s %{public}s]:%i Migrated %{public}@ --> %{public}@", v112, v110, v111, 459, v105, v175[5]);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v113 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
        {
          v114 = object_getClass(self);
          if (class_isMetaClass(v114))
          {
            v115 = 43;
          }

          else
          {
            v115 = 45;
          }

          v116 = object_getClassName(self);
          v117 = sel_getName(a2);
          v118 = v175[5];
          *buf = 67110402;
          v198 = v115;
          v199 = 2082;
          v200 = v116;
          v201 = 2082;
          v202 = v117;
          v203 = 1024;
          v204 = 459;
          v205 = 2114;
          v206 = v105;
          v207 = 2114;
          v208 = v118;
          _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Migrated %{public}@ --> %{public}@", buf, 0x36u);
        }

        v119 = v175[5];
        _Block_object_dispose(&v174, 8);

        v105 = v119;
      }

      v171 = 0u;
      v172 = 0u;
      v169 = 0u;
      v170 = 0u;
      objd = [v6 allKeys];
      v120 = [objd countByEnumeratingWithState:&v169 objects:v196 count:16];
      if (v120)
      {
        v121 = v120;
        v122 = *v170;
        do
        {
          for (n = 0; n != v121; n = n + 1)
          {
            if (*v170 != v122)
            {
              objc_enumerationMutation(objd);
            }

            v124 = *(*(&v169 + 1) + 8 * n);
            v125 = [v105 objectForKey:v124];
            if (v125)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v126 = NFLogGetLogger();
              if (v126)
              {
                v127 = v126;
                v128 = object_getClass(self);
                v129 = class_isMetaClass(v128);
                v130 = object_getClassName(self);
                v153 = sel_getName(a2);
                v131 = 45;
                if (v129)
                {
                  v131 = 43;
                }

                v127(6, "%c[%{public}s %{public}s]:%i %{public}@ --> TCIs: %{public}@", v131, v130, v153, 470, v124, v125);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v132 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
              {
                v133 = object_getClass(self);
                if (class_isMetaClass(v133))
                {
                  v134 = 43;
                }

                else
                {
                  v134 = 45;
                }

                v135 = object_getClassName(self);
                v136 = sel_getName(a2);
                *buf = 67110402;
                v198 = v134;
                v199 = 2082;
                v200 = v135;
                v201 = 2082;
                v202 = v136;
                v203 = 1024;
                v204 = 470;
                v205 = 2114;
                v206 = v124;
                v207 = 2114;
                v208 = v125;
                _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ --> TCIs: %{public}@", buf, 0x36u);
              }

              v137 = [v167 objectForKeyedSubscript:v124];
              v138 = [[NSMutableDictionary alloc] initWithDictionary:v125];
              [v137 setObject:v138 forKeyedSubscript:@"ECP2Info"];
            }
          }

          v121 = [objd countByEnumeratingWithState:&v169 objects:v196 count:16];
        }

        while (v121);
      }

      v3 = v160;
      [v160 removeObjectForKey:@"ExpressAppletTCIs"];

      v6 = v167;
      v87 = v158;
    }

    goto LABEL_141;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v34 = NFLogGetLogger();
  if (v34)
  {
    v35 = v34;
    v36 = object_getClass(self);
    v37 = class_isMetaClass(v36);
    v38 = object_getClassName(self);
    v148 = sel_getName(a2);
    v39 = 45;
    if (v37)
    {
      v39 = 43;
    }

    v35(3, "%c[%{public}s %{public}s]:%i Failed to initialize eSE wrapper", v39, v38, v148, 371);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v40 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v41 = object_getClass(self);
    if (class_isMetaClass(v41))
    {
      v42 = 43;
    }

    else
    {
      v42 = 45;
    }

    *buf = 67109890;
    v198 = v42;
    v199 = 2082;
    v200 = object_getClassName(self);
    v201 = 2082;
    v202 = sel_getName(a2);
    v203 = 1024;
    v204 = 371;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to initialize eSE wrapper", buf, 0x22u);
  }

  v43 = 0;
LABEL_142:

  return v43;
}

- (id)extractConfigFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  [(NFExpressConfig *)self dumpConfig:fromCopy logLevel:8 prefix:@"expressConfig"];
  v5 = objc_opt_new();
  v6 = +[_NFHardwareManager sharedHardwareManager];
  secureElementWrapper = [v6 secureElementWrapper];

  if (secureElementWrapper)
  {
    supportedTechnologies = [secureElementWrapper supportedTechnologies];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v9 = fromCopy;
    v10 = [v9 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v10)
    {
      v11 = v10;
      v49 = fromCopy;
      v53 = v5;
      v50 = 0;
      v12 = *v55;
      v13 = supportedTechnologies & 4;
      do
      {
        v14 = v9;
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v55 != v12)
          {
            objc_enumerationMutation(v14);
          }

          v16 = *(*(&v54 + 1) + 8 * i);
          v17 = [v16 objectForKeyedSubscript:@"ExpressType"];
          v18 = [NFExpressConfig expressTypeForATLConfigKey:v17];

          if (v18 != 1 || v13 != 0)
          {
            v20 = [v16 mutableCopy];
            v21 = [v16 objectForKeyedSubscript:@"expressEnabled"];
            bOOLValue = [v21 BOOLValue];

            if (bOOLValue)
            {
              v23 = v18 == 6;
            }

            else
            {
              v23 = 0;
            }

            if (v23)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              Logger = NFLogGetLogger();
              if (Logger)
              {
                v25 = Logger;
                Class = object_getClass(selfCopy);
                isMetaClass = class_isMetaClass(Class);
                ClassName = object_getClassName(selfCopy);
                Name = sel_getName(a2);
                v29 = 45;
                if (isMetaClass)
                {
                  v29 = 43;
                }

                v25(4, "%c[%{public}s %{public}s]:%i Overriding SinglePoll with GenericA mode express", v29, ClassName, Name, 524);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v30 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v31 = object_getClass(selfCopy);
                if (class_isMetaClass(v31))
                {
                  v32 = 43;
                }

                else
                {
                  v32 = 45;
                }

                v33 = object_getClassName(selfCopy);
                v34 = sel_getName(a2);
                *buf = 67109890;
                v60 = v32;
                v61 = 2082;
                v62 = v33;
                v63 = 2082;
                v64 = v34;
                v65 = 1024;
                v66 = 524;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Overriding SinglePoll with GenericA mode express", buf, 0x22u);
              }

              [v20 setObject:@"GenericA" forKeyedSubscript:@"ExpressType"];
              v50 = 1;
            }

            [v53 addObject:v20];
          }
        }

        v9 = v14;
        v11 = [v14 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v11);

      if (v50)
      {
        v35 = 4;
      }

      else
      {
        v35 = 8;
      }

      fromCopy = v49;
      v5 = v53;
    }

    else
    {

      v35 = 8;
    }

    [(NFExpressConfig *)selfCopy dumpConfig:v5 logLevel:v35 prefix:@"new config"];
    v45 = v5;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v36 = NFLogGetLogger();
    if (v36)
    {
      v37 = v36;
      v38 = object_getClass(selfCopy);
      v39 = class_isMetaClass(v38);
      v40 = object_getClassName(selfCopy);
      v48 = sel_getName(a2);
      v41 = 45;
      if (v39)
      {
        v41 = 43;
      }

      v37(3, "%c[%{public}s %{public}s]:%i Failed to initialize eSE wrapper", v41, v40, v48, 501);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v42 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = object_getClass(selfCopy);
      if (class_isMetaClass(v43))
      {
        v44 = 43;
      }

      else
      {
        v44 = 45;
      }

      *buf = 67109890;
      v60 = v44;
      v61 = 2082;
      v62 = object_getClassName(selfCopy);
      v63 = 2082;
      v64 = sel_getName(a2);
      v65 = 1024;
      v66 = 501;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to initialize eSE wrapper", buf, 0x22u);
    }

    v45 = 0;
  }

  return v45;
}

- (id)disableExpressForKeys:(id)keys onApplet:(id)applet
{
  keysCopy = keys;
  appletCopy = applet;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v10 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    identifier = [appletCopy identifier];
    v16 = 45;
    if (isMetaClass)
    {
      v16 = 43;
    }

    v10(6, "%c[%{public}s %{public}s]:%i keys:%{public}@ applet:%{public}@", v16, ClassName, Name, 757, keysCopy, identifier);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = object_getClass(self);
    if (class_isMetaClass(v18))
    {
      v19 = 43;
    }

    else
    {
      v19 = 45;
    }

    v20 = object_getClassName(self);
    v21 = sel_getName(a2);
    identifier2 = [appletCopy identifier];
    *buf = 67110402;
    v78 = v19;
    v79 = 2082;
    v80 = v20;
    v81 = 2082;
    v82 = v21;
    v83 = 1024;
    v84 = 757;
    v85 = 2114;
    v86 = keysCopy;
    v87 = 2114;
    v88 = identifier2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i keys:%{public}@ applet:%{public}@", buf, 0x36u);
  }

  getSecureElementWrapperAndSetRouting = [(NFExpressConfigESE *)self getSecureElementWrapperAndSetRouting];
  v24 = getSecureElementWrapperAndSetRouting;
  if (getSecureElementWrapperAndSetRouting)
  {
    v66 = getSecureElementWrapperAndSetRouting;
    v69 = appletCopy;
    v68 = objc_alloc_init(NSMutableArray);
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v67 = keysCopy;
    v25 = keysCopy;
    v26 = [v25 countByEnumeratingWithState:&v70 objects:v74 count:16];
    if (!v26)
    {
      goto LABEL_31;
    }

    v27 = v26;
    v28 = *v71;
    while (1)
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v71 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v70 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (![v30 length])
          {
            continue;
          }

          v31 = objc_alloc_init(NSMutableDictionary);
          [v31 setObject:v30 forKeyedSubscript:@"keyIdentifier"];
          identifier3 = [v69 identifier];
          [v31 setObject:identifier3 forKeyedSubscript:@"appletIdentifier"];

          [v68 addObject:v31];
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v33 = NFLogGetLogger();
          if (v33)
          {
            v34 = v33;
            v35 = object_getClass(self);
            v36 = class_isMetaClass(v35);
            v37 = object_getClassName(self);
            v64 = sel_getName(a2);
            v38 = 45;
            if (v36)
            {
              v38 = 43;
            }

            v34(3, "%c[%{public}s %{public}s]:%i Invalid key type.", v38, v37, v64, 769);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v31 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v39 = object_getClass(self);
            if (class_isMetaClass(v39))
            {
              v40 = 43;
            }

            else
            {
              v40 = 45;
            }

            v41 = object_getClassName(self);
            v42 = sel_getName(a2);
            *buf = 67109890;
            v78 = v40;
            v79 = 2082;
            v80 = v41;
            v81 = 2082;
            v82 = v42;
            v83 = 1024;
            v84 = 769;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid key type.", buf, 0x22u);
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v70 objects:v74 count:16];
      if (!v27)
      {
LABEL_31:

        v43 = v68;
        if ([v68 count])
        {
          appletCopy = v69;
          v44 = sub_10000E24C(self, v68, v69, 0, 0, 0xFFFFFFFF);
          keysCopy = v67;
        }

        else
        {
          v44 = 0;
          keysCopy = v67;
          appletCopy = v69;
        }

        v24 = v66;
        goto LABEL_45;
      }
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v45 = NFLogGetLogger();
  if (v45)
  {
    v46 = v45;
    v47 = object_getClass(self);
    v48 = class_isMetaClass(v47);
    v49 = object_getClassName(self);
    v65 = sel_getName(a2);
    v50 = 45;
    if (v48)
    {
      v50 = 43;
    }

    v46(3, "%c[%{public}s %{public}s]:%i Failed to initialize eSE wrapper", v50, v49, v65, 761);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v51 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    v52 = object_getClass(self);
    if (class_isMetaClass(v52))
    {
      v53 = 43;
    }

    else
    {
      v53 = 45;
    }

    v54 = object_getClassName(self);
    v55 = sel_getName(a2);
    *buf = 67109890;
    v78 = v53;
    v79 = 2082;
    v80 = v54;
    v81 = 2082;
    v82 = v55;
    v83 = 1024;
    v84 = 761;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to initialize eSE wrapper", buf, 0x22u);
  }

  v56 = [NSError alloc];
  v57 = [NSString stringWithUTF8String:"nfcd"];
  v75[0] = NSLocalizedDescriptionKey;
  v58 = [NSString stringWithUTF8String:"Stack Error"];
  v76[0] = v58;
  v76[1] = &off_10032FA30;
  v75[1] = @"Line";
  v75[2] = @"Method";
  v59 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
  v76[2] = v59;
  v75[3] = NSDebugDescriptionErrorKey;
  v60 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 762];
  v76[3] = v60;
  v75[4] = NSLocalizedFailureReasonErrorKey;
  v43 = v57;
  v61 = [[NSString alloc] initWithFormat:@"Failed to initialize eSE wrapper"];
  v76[4] = v61;
  v62 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:5];
  v44 = [v56 initWithDomain:v43 code:15 userInfo:v62];

LABEL_45:

  return v44;
}

- (id)updateExpressConfigLimitedTo:(id)to andActivate:(BOOL)activate hasChanged:(BOOL *)changed disableDPDEnter:(BOOL *)enter
{
  toCopy = to;
  if (![(NFExpressConfig *)self isSEOperational])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v20 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v24 = 45;
      if (isMetaClass)
      {
        v24 = 43;
      }

      v20(4, "%c[%{public}s %{public}s]:%i eSE is not in operational mode", v24, ClassName, Name, 809);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = object_getClass(self);
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      *buf = 67109890;
      v330 = v27;
      v331 = 2082;
      v332 = object_getClassName(self);
      v333 = 2082;
      v334 = sel_getName(a2);
      v335 = 1024;
      v336 = 809;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i eSE is not in operational mode", buf, 0x22u);
    }

    v28 = 0;
    goto LABEL_274;
  }

  if (self)
  {
    passes = self->super._passes;
  }

  else
  {
    passes = 0;
  }

  v13 = passes;

  if (!v13)
  {
    v28 = 0;
    goto LABEL_275;
  }

  enterCopy = enter;
  changedCopy = changed;
  v14 = NFSharedSignpostLog();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_UPDATE_ESE_APPLETS", "begin", buf, 2u);
  }

  selfCopy = self;
  getSecureElementWrapperAndSetRouting = [(NFExpressConfigESE *)self getSecureElementWrapperAndSetRouting];
  if (!getSecureElementWrapperAndSetRouting)
  {
    v29 = [NSError alloc];
    v30 = [NSString stringWithUTF8String:"nfcd"];
    v315[0] = NSLocalizedDescriptionKey;
    v31 = [NSString stringWithUTF8String:"Stack Error"];
    v316[0] = v31;
    v316[1] = &off_10032FA48;
    v315[1] = @"Line";
    v315[2] = @"Method";
    v32 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v316[2] = v32;
    v315[3] = NSDebugDescriptionErrorKey;
    v33 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 824];
    v316[3] = v33;
    v315[4] = NSLocalizedFailureReasonErrorKey;
    v34 = a2;
    v35 = [[NSString alloc] initWithFormat:@"Failed to initialize eSE wrapper"];
    v316[4] = v35;
    v36 = [NSDictionary dictionaryWithObjects:v316 forKeys:v315 count:5];
    v37 = [v29 initWithDomain:v30 code:15 userInfo:v36];

    v38 = v34;
    [NFExceptionsCALogger postAnalyticsExpressSetupFailureEvent:3 context:6 error:v37];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFLogGetLogger();
    if (v39)
    {
      v40 = v39;
      v41 = object_getClass(selfCopy);
      v42 = class_isMetaClass(v41);
      v43 = object_getClassName(selfCopy);
      v269 = sel_getName(v34);
      v44 = 45;
      if (v42)
      {
        v44 = 43;
      }

      v40(3, "%c[%{public}s %{public}s]:%i Failed to initialize eSE wrapper", v44, v43, v269, 828);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v45 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = object_getClass(selfCopy);
      if (class_isMetaClass(v46))
      {
        v47 = 43;
      }

      else
      {
        v47 = 45;
      }

      v48 = object_getClassName(selfCopy);
      v49 = sel_getName(v38);
      *buf = 67109890;
      v330 = v47;
      v331 = 2082;
      v332 = v48;
      v333 = 2082;
      v334 = v49;
      v335 = 1024;
      v336 = 828;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to initialize eSE wrapper", buf, 0x22u);
    }

    v25 = v37;
    getSecureElementWrapperAndSetRouting = 0;
    goto LABEL_273;
  }

  v16 = +[_NFHardwareManager sharedHardwareManager];
  v17 = v16;
  if (v16 && (v18 = [*(v16 + 128) walletDomain], v18 <= 4))
  {
    v288 = 0x19u >> v18;
  }

  else
  {
    LOBYTE(v288) = 0;
  }

  v50 = -2;
  if (toCopy)
  {
    v50 = 0;
  }

  v295 = v50;
  v51 = +[_NFHardwareManager sharedHardwareManager];
  v52 = [v51 nfcRadioEnabled:0 showUIPopup:0];

  v293 = toCopy;
  if (!v52)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v144 = NFLogGetLogger();
    if (v144)
    {
      v145 = v144;
      v146 = object_getClass(selfCopy);
      v147 = class_isMetaClass(v146);
      v148 = object_getClassName(selfCopy);
      v277 = sel_getName(a2);
      v149 = 45;
      if (v147)
      {
        v149 = 43;
      }

      v145(6, "%c[%{public}s %{public}s]:%i NFC radio disabled - use empty config", v149, v148, v277, 840);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v150 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
    {
      v151 = object_getClass(selfCopy);
      if (class_isMetaClass(v151))
      {
        v152 = 43;
      }

      else
      {
        v152 = 45;
      }

      v153 = object_getClassName(selfCopy);
      v154 = sel_getName(a2);
      *buf = 67109890;
      v330 = v152;
      v331 = 2082;
      v332 = v153;
      v333 = 2082;
      v334 = v154;
      v335 = 1024;
      v336 = 840;
      _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC radio disabled - use empty config", buf, 0x22u);
    }

    v155 = +[NSMutableArray array];
    expressConfigUpdateRequired = 0;
    nF_expressConfigHash = 0;
    v294 = 0;
LABEL_158:
    v160 = v288 & 1;
    if ((!selfCopy || !selfCopy->super._expressConfigUpdateRequired) && selfCopy->_effectivePassConfigHash == nF_expressConfigHash && selfCopy->_lastIsLegacyWalletBehaviour == v160)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v161 = NFLogGetLogger();
      if (v161)
      {
        v162 = v161;
        v163 = object_getClass(selfCopy);
        v164 = class_isMetaClass(v163);
        v165 = object_getClassName(selfCopy);
        v278 = sel_getName(a2);
        v166 = 45;
        if (v164)
        {
          v166 = 43;
        }

        v162(6, "%c[%{public}s %{public}s]:%i No change; skipping update", v166, v165, v278, 925);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v167 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_184;
      }

      v168 = object_getClass(selfCopy);
      if (class_isMetaClass(v168))
      {
        v169 = 43;
      }

      else
      {
        v169 = 45;
      }

      v170 = object_getClassName(selfCopy);
      v171 = sel_getName(a2);
      *buf = 67109890;
      v330 = v169;
      v331 = 2082;
      v332 = v170;
      v333 = 2082;
      v334 = v171;
      v335 = 1024;
      v336 = 925;
LABEL_183:
      _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No change; skipping update", buf, 0x22u);
LABEL_184:

      v25 = 0;
LABEL_271:
      v157 = v155;
      goto LABEL_272;
    }

    if (!selfCopy->super._expressConfigUpdateRequired && selfCopy->_effectiveRestrictedPassIDListHash == v295 && selfCopy->_lastIsLegacyWalletBehaviour == v160)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v172 = NFLogGetLogger();
      if (v172)
      {
        v173 = v172;
        v174 = object_getClass(selfCopy);
        v175 = class_isMetaClass(v174);
        v176 = object_getClassName(selfCopy);
        v279 = sel_getName(a2);
        v177 = 45;
        if (v175)
        {
          v177 = 43;
        }

        v173(6, "%c[%{public}s %{public}s]:%i No change; skipping update", v177, v176, v279, 931);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v167 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_184;
      }

      v178 = object_getClass(selfCopy);
      if (class_isMetaClass(v178))
      {
        v179 = 43;
      }

      else
      {
        v179 = 45;
      }

      v180 = object_getClassName(selfCopy);
      v181 = sel_getName(a2);
      *buf = 67109890;
      v330 = v179;
      v331 = 2082;
      v332 = v180;
      v333 = 2082;
      v334 = v181;
      v335 = 1024;
      v336 = 931;
      goto LABEL_183;
    }

    if (!expressConfigUpdateRequired)
    {
LABEL_253:
      v244 = NFSharedSignpostLog();
      if (os_signpost_enabled(v244))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v244, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_UPDATE_ESE_APPLETS", "configuring ATL", buf, 2u);
      }

      [(NFExpressConfig *)selfCopy dumpConfig:v155 logLevel:6 prefix:@"Configuring"];
      if (v294)
      {
        v245 = v160;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v246 = NFLogGetLogger();
        if (v246)
        {
          v247 = v246;
          v248 = object_getClass(selfCopy);
          v249 = class_isMetaClass(v248);
          v267 = object_getClassName(selfCopy);
          v283 = sel_getName(a2);
          v250 = 45;
          if (v249)
          {
            v250 = 43;
          }

          v247(6, "%c[%{public}s %{public}s]:%i effectivePassIDList=%{public}@", v250, v267, v283, 947, v294);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v251 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v251, OS_LOG_TYPE_DEFAULT))
        {
          v252 = object_getClass(selfCopy);
          if (class_isMetaClass(v252))
          {
            v253 = 43;
          }

          else
          {
            v253 = 45;
          }

          v254 = object_getClassName(selfCopy);
          v255 = sel_getName(a2);
          *buf = 67110146;
          v330 = v253;
          v331 = 2082;
          v332 = v254;
          v333 = 2082;
          v334 = v255;
          v335 = 1024;
          v336 = 947;
          v337 = 2114;
          v338 = v294;
          _os_log_impl(&_mh_execute_header, v251, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i effectivePassIDList=%{public}@", buf, 0x2Cu);
        }

        v160 = v245;
      }

      v256 = sub_100262E4C(getSecureElementWrapperAndSetRouting, v155, v294, v160, enterCopy);
      v257 = NFSharedSignpostLog();
      if (os_signpost_enabled(v257))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v257, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_UPDATE_ESE_APPLETS", "ATL configured", buf, 2u);
      }

      if (v256)
      {
        selfCopy->_lastIsLegacyWalletBehaviour = v160;
        selfCopy->_effectivePassConfigHash = nF_expressConfigHash;
        selfCopy->_effectiveRestrictedPassIDListHash = v295;
        [NFExceptionsCALogger postAnalyticsExpressSetupFailureEvent:3 context:6 error:v256];
      }

      v25 = v256;
      goto LABEL_271;
    }

    sela = a2;
    v299 = objc_autoreleasePoolPush();
    v182 = [NSMutableArray alloc];
    v183 = [(NFExpressConfig *)selfCopy getExpressAidsForType:1];
    v184 = [v182 initWithArray:v183];

    v185 = [(NFExpressConfig *)selfCopy getExpressAidsForType:5];
    [v184 addObjectsFromArray:v185];

    getSecureElementWrapperAndSetRouting2 = [(NFExpressConfigESE *)selfCopy getSecureElementWrapperAndSetRouting];
    v297 = v155;
    if (getSecureElementWrapperAndSetRouting2)
    {
      v287 = getSecureElementWrapperAndSetRouting;
      v312 = 0u;
      v313 = 0u;
      v310 = 0u;
      v311 = 0u;
      v292 = v184;
      v187 = v184;
      v188 = [v187 countByEnumeratingWithState:&v310 objects:buf count:16];
      if (v188)
      {
        v189 = v188;
        LODWORD(v190) = 0;
        v191 = *v311;
        while (2)
        {
          for (i = 0; i != v189; i = i + 1)
          {
            if (*v311 != v191)
            {
              objc_enumerationMutation(v187);
            }

            v193 = *(*(&v310 + 1) + 8 * i);
            v194 = [NSData NF_dataWithHexString:v193];
            v195 = sub_100257F24(getSecureElementWrapperAndSetRouting2, v194, 0);

            if (!v195)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v209 = NFLogGetLogger();
              if (v209)
              {
                v210 = v209;
                v211 = object_getClass(selfCopy);
                v212 = class_isMetaClass(v211);
                v265 = object_getClassName(selfCopy);
                v281 = sel_getName("_updateDriverExpressConfig");
                v213 = 45;
                if (v212)
                {
                  v213 = 43;
                }

                v210(3, "%c[%{public}s %{public}s]:%i %{public}@ not found on eSE", v213, v265, v281, 1041, v193);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v214 = NFSharedLogGetLogger();
              v184 = v292;
              if (os_log_type_enabled(v214, OS_LOG_TYPE_ERROR))
              {
                v215 = object_getClass(selfCopy);
                if (class_isMetaClass(v215))
                {
                  v216 = 43;
                }

                else
                {
                  v216 = 45;
                }

                v217 = object_getClassName(selfCopy);
                v218 = sel_getName("_updateDriverExpressConfig");
                *v317 = 67110146;
                v318 = v216;
                v319 = 2082;
                v320 = v217;
                v321 = 2082;
                v322 = v218;
                v323 = 1024;
                v324 = 1041;
                v325 = 2114;
                v326 = v193;
                v219 = "%c[%{public}s %{public}s]:%i %{public}@ not found on eSE";
LABEL_248:
                _os_log_impl(&_mh_execute_header, v214, OS_LOG_TYPE_ERROR, v219, v317, 0x2Cu);
              }

LABEL_249:
              v160 = v288 & 1;
              v208 = v299;

              goto LABEL_250;
            }

            supportedTypeFSystem = [v195 supportedTypeFSystem];
            if (supportedTypeFSystem != 1 && supportedTypeFSystem != 2)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v235 = NFLogGetLogger();
              if (v235)
              {
                v236 = v235;
                v237 = object_getClass(selfCopy);
                v238 = class_isMetaClass(v237);
                v266 = object_getClassName(selfCopy);
                v282 = sel_getName("_updateDriverExpressConfig");
                v239 = 45;
                if (v238)
                {
                  v239 = 43;
                }

                v236(3, "%c[%{public}s %{public}s]:%i Unknown type F type for applet %{public}@", v239, v266, v282, 1057, v193);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v214 = NFSharedLogGetLogger();
              v184 = v292;
              if (os_log_type_enabled(v214, OS_LOG_TYPE_ERROR))
              {
                v240 = object_getClass(selfCopy);
                if (class_isMetaClass(v240))
                {
                  v241 = 43;
                }

                else
                {
                  v241 = 45;
                }

                v242 = object_getClassName(selfCopy);
                v243 = sel_getName("_updateDriverExpressConfig");
                *v317 = 67110146;
                v318 = v241;
                v319 = 2082;
                v320 = v242;
                v321 = 2082;
                v322 = v243;
                v323 = 1024;
                v324 = 1057;
                v325 = 2114;
                v326 = v193;
                v219 = "%c[%{public}s %{public}s]:%i Unknown type F type for applet %{public}@";
                goto LABEL_248;
              }

              goto LABEL_249;
            }

            v190 = supportedTypeFSystem | v190;
          }

          v189 = [v187 countByEnumeratingWithState:&v310 objects:buf count:16];
          if (v189)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v190 = 0;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v220 = NFLogGetLogger();
      if (v220)
      {
        v221 = v220;
        v222 = object_getClass(selfCopy);
        v223 = class_isMetaClass(v222);
        v224 = object_getClassName(selfCopy);
        v225 = sel_getName("_updateDriverExpressConfig");
        if ([v187 count])
        {
          v226 = @"YES";
        }

        else
        {
          v226 = @"NO";
        }

        v284 = v226;
        v227 = 45;
        if (v223)
        {
          v227 = 43;
        }

        v221(6, "%c[%{public}s %{public}s]:%i has type F express: %{public}@  entryConditions: %02X", v227, v224, v225, 1062, v284, v190);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v228 = NFSharedLogGetLogger();
      v184 = v292;
      if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
      {
        v229 = object_getClass(selfCopy);
        if (class_isMetaClass(v229))
        {
          v230 = 43;
        }

        else
        {
          v230 = 45;
        }

        v231 = object_getClassName(selfCopy);
        v232 = sel_getName("_updateDriverExpressConfig");
        v233 = [v187 count];
        *v317 = 67110402;
        if (v233)
        {
          v234 = @"YES";
        }

        else
        {
          v234 = @"NO";
        }

        v318 = v230;
        v319 = 2082;
        v320 = v231;
        v321 = 2082;
        v322 = v232;
        v323 = 1024;
        v324 = 1062;
        v325 = 2114;
        v326 = v234;
        v327 = 1024;
        v328 = v190;
        _os_log_impl(&_mh_execute_header, v228, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i has type F express: %{public}@  entryConditions: %02X", v317, 0x32u);
      }

      getSecureElementWrapperAndSetRouting = v287;
      v160 = v288 & 1;
      v208 = v299;
      if (![v187 count]|| !v190)
      {
        goto LABEL_251;
      }

      v187 = +[_NFHardwareManager sharedHardwareManager];
      [v187 configureExpressFelicaEntry:v190];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v198 = NFLogGetLogger();
      if (v198)
      {
        v199 = v198;
        v200 = object_getClass(selfCopy);
        v201 = class_isMetaClass(v200);
        v202 = object_getClassName(selfCopy);
        v280 = sel_getName("_updateDriverExpressConfig");
        v203 = 45;
        if (v201)
        {
          v203 = 43;
        }

        v199(3, "%c[%{public}s %{public}s]:%i Failed to initialize eSE wrapper", v203, v202, v280, 1033);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v187 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
      {
        v204 = object_getClass(selfCopy);
        if (class_isMetaClass(v204))
        {
          v205 = 43;
        }

        else
        {
          v205 = 45;
        }

        v206 = object_getClassName(selfCopy);
        v207 = sel_getName("_updateDriverExpressConfig");
        *buf = 67109890;
        v330 = v205;
        v331 = 2082;
        v332 = v206;
        v333 = 2082;
        v334 = v207;
        v335 = 1024;
        v336 = 1033;
        _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to initialize eSE wrapper", buf, 0x22u);
      }

      v160 = v288 & 1;
      v208 = v299;
    }

LABEL_250:

LABEL_251:
    objc_autoreleasePoolPop(v208);
    toCopy = v293;
    a2 = sela;
    v155 = v297;
    if (selfCopy)
    {
      selfCopy->super._expressConfigUpdateRequired = 0;
    }

    goto LABEL_253;
  }

  v53 = NFSharedSignpostLog();
  if (os_signpost_enabled(v53))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_UPDATE_ESE_APPLETS", "validating", buf, 2u);
  }

  v298 = +[NSMutableOrderedSet orderedSet];
  v291 = objc_opt_new();
  if (!toCopy)
  {
    goto LABEL_43;
  }

  v54 = selfCopy;
  if (selfCopy)
  {
    v54 = selfCopy->super._passes;
  }

  v55 = v54;
  v56 = [v55 count];

  if (v56)
  {
    v294 = objc_opt_new();
  }

  else
  {
LABEL_43:
    v294 = 0;
  }

  v308 = 0u;
  v309 = 0u;
  v306 = 0u;
  v307 = 0u;
  v57 = selfCopy;
  activateCopy = activate;
  if (selfCopy)
  {
    v57 = selfCopy->super._passes;
  }

  sel = a2;
  v286 = getSecureElementWrapperAndSetRouting;
  obj = v57;
  v302 = [obj countByEnumeratingWithState:&v306 objects:v314 count:16];
  if (!v302)
  {
    v58 = selfCopy;
    goto LABEL_147;
  }

  v301 = *v307;
  v58 = selfCopy;
  do
  {
    v59 = 0;
    do
    {
      if (*v307 != v301)
      {
        objc_enumerationMutation(obj);
      }

      v60 = *(*(&v306 + 1) + 8 * v59);
      v61 = [v60 objectForKeyedSubscript:@"appletIdentifier"];
      v62 = [v60 objectForKeyedSubscript:@"expressEnabled"];
      bOOLValue = [v62 BOOLValue];

      v64 = [v60 objectForKeyedSubscript:@"passUniqueID"];
      v65 = sub_10000ADB0(v58, v61, 1, 0);
      v66 = v65;
      if (!v65)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v79 = NFLogGetLogger();
        if (v79)
        {
          v80 = v79;
          v81 = object_getClass(v58);
          v82 = class_isMetaClass(v81);
          v260 = object_getClassName(v58);
          v271 = sel_getName(sel);
          v83 = 45;
          if (v82)
          {
            v83 = 43;
          }

          v80(3, "%c[%{public}s %{public}s]:%i Could not find %{public}@ on eSE", v83, v260, v271, 864, v61);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v84 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          v85 = object_getClass(v58);
          if (class_isMetaClass(v85))
          {
            v86 = 43;
          }

          else
          {
            v86 = 45;
          }

          v87 = object_getClassName(selfCopy);
          v88 = sel_getName(sel);
          *buf = 67110146;
          v330 = v86;
          v58 = selfCopy;
          v331 = 2082;
          v332 = v87;
          v333 = 2082;
          v334 = v88;
          v335 = 1024;
          v336 = 864;
          v337 = 2114;
          v338 = v61;
          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not find %{public}@ on eSE", buf, 0x2Cu);
        }

        v77 = v298;
        v78 = v61;
        goto LABEL_74;
      }

      if ([v65 lifecycleState] == 129 || objc_msgSend(v66, "lifecycleState") == 130)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v67 = NFLogGetLogger();
        if (v67)
        {
          v68 = v67;
          v69 = object_getClass(v58);
          v70 = class_isMetaClass(v69);
          v259 = object_getClassName(v58);
          v270 = sel_getName(sel);
          v71 = 45;
          if (v70)
          {
            v71 = 43;
          }

          v68(6, "%c[%{public}s %{public}s]:%i Applet %{public}@ is terminated/frozen; remove from express mode", v71, v259, v270, 870, v61);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v72 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          v73 = object_getClass(v58);
          if (class_isMetaClass(v73))
          {
            v74 = 43;
          }

          else
          {
            v74 = 45;
          }

          v75 = object_getClassName(v58);
          v76 = sel_getName(sel);
          *buf = 67110146;
          v330 = v74;
          v331 = 2082;
          v332 = v75;
          v333 = 2082;
          v334 = v76;
          v335 = 1024;
          v336 = 870;
          v337 = 2114;
          v338 = v61;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Applet %{public}@ is terminated/frozen; remove from express mode", buf, 0x2Cu);
        }

        v77 = v298;
        v78 = v66;
        goto LABEL_74;
      }

      if (bOOLValue)
      {
        if ([v66 authTransientSupport])
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v89 = NFLogGetLogger();
          if (v89)
          {
            v90 = v89;
            v91 = object_getClass(v58);
            v92 = class_isMetaClass(v91);
            v93 = object_getClassName(v58);
            v94 = sel_getName(sel);
            identifier = [v66 identifier];
            v272 = v94;
            toCopy = v293;
            v96 = 45;
            if (v92)
            {
              v96 = 43;
            }

            v90(4, "%c[%{public}s %{public}s]:%i Applet %{public}@ requires authorization and is invalid for express", v96, v93, v272, 878, identifier);

            v58 = selfCopy;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v97 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
          {
            v98 = object_getClass(v58);
            if (class_isMetaClass(v98))
            {
              v99 = 43;
            }

            else
            {
              v99 = 45;
            }

            v100 = object_getClassName(v58);
            v101 = sel_getName(sel);
            identifier2 = [v66 identifier];
            *buf = 67110146;
            v330 = v99;
            toCopy = v293;
            v331 = 2082;
            v332 = v100;
            v333 = 2082;
            v334 = v101;
            v335 = 1024;
            v336 = 878;
            v337 = 2114;
            v338 = identifier2;
            _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Applet %{public}@ requires authorization and is invalid for express", buf, 0x2Cu);

            v58 = selfCopy;
          }

          goto LABEL_75;
        }

        if (![v66 isGPLocked])
        {
          if ([v66 lifecycleState] != 15)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v133 = NFLogGetLogger();
            if (v133)
            {
              v134 = v133;
              v135 = object_getClass(v58);
              v136 = class_isMetaClass(v135);
              v264 = object_getClassName(v58);
              v276 = sel_getName(sel);
              v137 = 45;
              if (v136)
              {
                v137 = 43;
              }

              v58 = selfCopy;
              v134(4, "%c[%{public}s %{public}s]:%i @applet %{public}@ is not personalized", v137, v264, v276, 887, v61);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v138 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
            {
              v139 = object_getClass(v58);
              if (class_isMetaClass(v139))
              {
                v140 = 43;
              }

              else
              {
                v140 = 45;
              }

              v141 = object_getClassName(selfCopy);
              v142 = sel_getName(sel);
              *buf = 67110146;
              v330 = v140;
              v58 = selfCopy;
              v331 = 2082;
              v332 = v141;
              v333 = 2082;
              v334 = v142;
              v335 = 1024;
              v336 = 887;
              v337 = 2114;
              v338 = v61;
              _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i @applet %{public}@ is not personalized", buf, 0x2Cu);
            }
          }

LABEL_75:
          if (([toCopy containsObject:v64] & 1) == 0)
          {
            goto LABEL_110;
          }

          if (bOOLValue)
          {
            [v294 addObject:v64];
            v295 ^= [v64 hash];
            goto LABEL_110;
          }

LABEL_100:
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v113 = NFLogGetLogger();
          if (v113)
          {
            v114 = v113;
            v115 = object_getClass(v58);
            v116 = class_isMetaClass(v115);
            v262 = object_getClassName(v58);
            v274 = sel_getName(sel);
            v117 = 45;
            if (v116)
            {
              v117 = 43;
            }

            v58 = selfCopy;
            v114(4, "%c[%{public}s %{public}s]:%i Pass %{public}@ is not in express; ignore", v117, v262, v274, 896, v64);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v118 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
          {
            v119 = object_getClass(v58);
            if (class_isMetaClass(v119))
            {
              v120 = 43;
            }

            else
            {
              v120 = 45;
            }

            v121 = object_getClassName(selfCopy);
            v122 = sel_getName(sel);
            *buf = 67110146;
            v330 = v120;
            v58 = selfCopy;
            v331 = 2082;
            v332 = v121;
            v333 = 2082;
            v334 = v122;
            v335 = 1024;
            v336 = 896;
            v337 = 2114;
            v338 = v64;
            _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Pass %{public}@ is not in express; ignore", buf, 0x2Cu);
          }

          goto LABEL_110;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v123 = NFLogGetLogger();
        if (v123)
        {
          v124 = v123;
          v125 = object_getClass(v58);
          v126 = class_isMetaClass(v125);
          v263 = object_getClassName(v58);
          v275 = sel_getName(sel);
          v127 = 45;
          if (v126)
          {
            v127 = 43;
          }

          v58 = selfCopy;
          v124(4, "%c[%{public}s %{public}s]:%i @applet %{public}@ is in GP locked state", v127, v263, v275, 882, v61);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v128 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
        {
          v129 = object_getClass(v58);
          if (class_isMetaClass(v129))
          {
            v130 = 43;
          }

          else
          {
            v130 = 45;
          }

          v131 = object_getClassName(selfCopy);
          v132 = sel_getName(sel);
          *buf = 67110146;
          v330 = v130;
          v58 = selfCopy;
          v331 = 2082;
          v332 = v131;
          v333 = 2082;
          v334 = v132;
          v335 = 1024;
          v336 = 882;
          v337 = 2114;
          v338 = v61;
          _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i @applet %{public}@ is in GP locked state", buf, 0x2Cu);
        }

        v77 = v291;
        v78 = v60;
LABEL_74:
        [v77 addObject:v78];
        goto LABEL_75;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v103 = NFLogGetLogger();
      if (v103)
      {
        v104 = v103;
        v105 = object_getClass(v58);
        v106 = class_isMetaClass(v105);
        v261 = object_getClassName(v58);
        v273 = sel_getName(sel);
        v107 = 45;
        if (v106)
        {
          v107 = 43;
        }

        v104(6, "%c[%{public}s %{public}s]:%i @applet %{public}@ is not in express. ATL to handle this going forward", v107, v261, v273, 875, v61);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v108 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        v109 = object_getClass(v58);
        if (class_isMetaClass(v109))
        {
          v110 = 43;
        }

        else
        {
          v110 = 45;
        }

        v111 = object_getClassName(v58);
        v112 = sel_getName(sel);
        *buf = 67110146;
        v330 = v110;
        v331 = 2082;
        v332 = v111;
        v333 = 2082;
        v334 = v112;
        v335 = 1024;
        v336 = 875;
        v337 = 2114;
        v338 = v61;
        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i @applet %{public}@ is not in express. ATL to handle this going forward", buf, 0x2Cu);
      }

      if ([toCopy containsObject:v64])
      {
        goto LABEL_100;
      }

LABEL_110:

      v59 = v59 + 1;
    }

    while (v302 != v59);
    v143 = [obj countByEnumeratingWithState:&v306 objects:v314 count:16];
    v302 = v143;
  }

  while (v143);
LABEL_147:

  v157 = v298;
  if ([v298 count])
  {
    [v58 removeAppletsFromConfig:v298];
    if (changedCopy)
    {
      *changedCopy = 1;
    }
  }

  getSecureElementWrapperAndSetRouting = v286;
  a2 = sel;
  if (activateCopy)
  {
    v158 = selfCopy;
    if (selfCopy)
    {
      v158 = selfCopy->super._passes;
    }

    v159 = v158;
    v155 = [v159 mutableCopy];

    if ([v291 count])
    {
      [v155 removeObjectsInArray:v291];
    }

    nF_expressConfigHash = [v155 NF_expressConfigHash];
    if (selfCopy)
    {
      expressConfigUpdateRequired = selfCopy->super._expressConfigUpdateRequired;
    }

    else
    {
      expressConfigUpdateRequired = 0;
    }

    goto LABEL_158;
  }

  v197 = NFSharedSignpostLog();
  if (os_signpost_enabled(v197))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v197, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_UPDATE_ESE_APPLETS", "update complete", buf, 2u);
  }

  v25 = 0;
LABEL_272:

LABEL_273:
  v28 = v25;
LABEL_274:

LABEL_275:

  return v28;
}

- (BOOL)hasUWBKeys:(id)keys
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  keysCopy = keys;
  v4 = [keysCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(keysCopy);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:{@"keyIdentifier", v15}];
        if (v9)
        {
          v10 = v9;
          v11 = [v8 objectForKeyedSubscript:@"UWBExpressEnabled"];
          bOOLValue = [v11 BOOLValue];

          if (bOOLValue)
          {
            v13 = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [keysCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

@end