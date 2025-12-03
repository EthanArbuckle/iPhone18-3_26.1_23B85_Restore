@interface NFExpressConfig
+ (unsigned)expressTypeForATLConfigKey:(id)key;
- (BOOL)hasExpressWithAutoSelection;
- (BOOL)isSEOperational;
- (BOOL)loadConfig:(id)config outError:(id *)error;
- (NFExpressConfig)initWithDriverWrapper:(id)wrapper;
- (id)arrayConfigFromDictionary:(id)dictionary;
- (id)deactivateExpressConfig;
- (id)expressTypesForPassIDs:(id)ds;
- (id)getExpressAidsForType:(unsigned __int8)type onlyInExpress:(BOOL)express;
- (id)passForAid:(id)aid;
- (id)passIDListForApplet:(id)applet keyIdentifiers:(id)identifiers;
- (id)restoreAuthForApplet:(id)applet;
- (unsigned)expressTypeForApplet:(id)applet;
- (void)activateExpressConfig;
- (void)removeAppletsFromConfig:(id)config;
- (void)updateExpressAppletNumbers;
@end

@implementation NFExpressConfig

+ (unsigned)expressTypeForATLConfigKey:(id)key
{
  keyCopy = key;
  if (qword_10035DA38 != -1)
  {
    dispatch_once(&qword_10035DA38, &stru_100319710);
  }

  v4 = [qword_10035DA30 objectForKeyedSubscript:keyCopy];
  v5 = v4;
  if (v4)
  {
    unsignedIntValue = [v4 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (void)updateExpressAppletNumbers
{
  *&self->_numberOfExpressFelicaTransitApplets = 0u;
  p_numberOfExpressFelicaTransitApplets = &self->_numberOfExpressFelicaTransitApplets;
  *&self->_numberOfExpressECPAccessApplets = 0u;
  *&self->_numberOfExpressECP2Applets = 0u;
  v4 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v51 = p_numberOfExpressFelicaTransitApplets;
  obj = *(p_numberOfExpressFelicaTransitApplets - 1);
  v5 = [obj countByEnumeratingWithState:&v55 objects:v81 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v56;
    v52 = v4;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v56 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v55 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"expressEnabled"];
        bOOLValue = [v10 BOOLValue];

        if (bOOLValue)
        {
          v12 = [v9 objectForKeyedSubscript:@"ExpressType"];
          v13 = [NFExpressConfig expressTypeForATLConfigKey:v12];

          if (v13 > 3)
          {
            switch(v13)
            {
              case 4:
                ++self->_numberOfExpressECP2Applets;
                goto LABEL_30;
              case 5:
                ++self->_numberOfExpressCathayTransitApplets;
                goto LABEL_30;
              case 6:
                ++self->_numberOfExpressSinglePollApplets;
                goto LABEL_30;
            }
          }

          else
          {
            switch(v13)
            {
              case 1:
                ++*v51;
                goto LABEL_30;
              case 2:
                ++self->_numberOfExpressECPAccessApplets;
                goto LABEL_30;
              case 3:
                ++self->_numberOfExpressGenericAApplets;
LABEL_30:
                v28 = [v9 objectForKeyedSubscript:@"appletIdentifier"];
                [(NSArray *)v4 addObject:v28];

                continue;
            }
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v15 = Logger;
            Class = object_getClass(self);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(self);
            Name = sel_getName(a2);
            v20 = [v9 objectForKeyedSubscript:@"ExpressType"];
            v50 = Name;
            v4 = v52;
            v21 = 45;
            if (isMetaClass)
            {
              v21 = 43;
            }

            v15(4, "%c[%{public}s %{public}s]:%i unknown express type %{public}@", v21, ClassName, v50, 189, v20);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v22 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = object_getClass(self);
            if (class_isMetaClass(v23))
            {
              v24 = 43;
            }

            else
            {
              v24 = 45;
            }

            v25 = object_getClassName(self);
            v26 = sel_getName(a2);
            v27 = [v9 objectForKeyedSubscript:@"ExpressType"];
            *buf = 67110146;
            v60 = v24;
            v61 = 2082;
            v62 = v25;
            v63 = 2082;
            v64 = v26;
            v65 = 1024;
            v66 = 189;
            v67 = 2114;
            v68 = v27;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i unknown express type %{public}@", buf, 0x2Cu);

            v4 = v52;
          }

          goto LABEL_30;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v55 objects:v81 count:16];
    }

    while (v6);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v29 = NFLogGetLogger();
  if (v29)
  {
    v30 = v29;
    v31 = object_getClass(self);
    v32 = class_isMetaClass(v31);
    v33 = object_getClassName(self);
    v34 = sel_getName(a2);
    seName = [(NFExpressConfig *)self seName];
    v36 = 43;
    if (!v32)
    {
      v36 = 45;
    }

    v30(6, "%c[%{public}s %{public}s]:%i %{public}@: num suica = %d, num cathay = %d, num access = %d, num generic-A = %d, num ecp2 = %d, num single poll = %d", v36, v33, v34, 201, seName, *&self->_numberOfExpressFelicaTransitApplets, *&self->_numberOfExpressECPAccessApplets, self->_numberOfExpressECP2Applets, self->_numberOfExpressSinglePollApplets);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v37 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = object_getClass(self);
    if (class_isMetaClass(v38))
    {
      v39 = 43;
    }

    else
    {
      v39 = 45;
    }

    v40 = object_getClassName(self);
    v41 = sel_getName(a2);
    seName2 = [(NFExpressConfig *)self seName];
    numberOfExpressFelicaTransitApplets = self->_numberOfExpressFelicaTransitApplets;
    numberOfExpressCathayTransitApplets = self->_numberOfExpressCathayTransitApplets;
    numberOfExpressECPAccessApplets = self->_numberOfExpressECPAccessApplets;
    numberOfExpressGenericAApplets = self->_numberOfExpressGenericAApplets;
    numberOfExpressECP2Applets = self->_numberOfExpressECP2Applets;
    numberOfExpressSinglePollApplets = self->_numberOfExpressSinglePollApplets;
    *buf = 67111682;
    v60 = v39;
    v61 = 2082;
    v62 = v40;
    v63 = 2082;
    v64 = v41;
    v65 = 1024;
    v66 = 201;
    v67 = 2114;
    v68 = seName2;
    v69 = 1024;
    v70 = numberOfExpressFelicaTransitApplets;
    v71 = 1024;
    v72 = numberOfExpressCathayTransitApplets;
    v73 = 1024;
    v74 = numberOfExpressECPAccessApplets;
    v75 = 1024;
    v76 = numberOfExpressGenericAApplets;
    v77 = 1024;
    v78 = numberOfExpressECP2Applets;
    v79 = 1024;
    v80 = numberOfExpressSinglePollApplets;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@: num suica = %d, num cathay = %d, num access = %d, num generic-A = %d, num ecp2 = %d, num single poll = %d", buf, 0x50u);
  }

  allAids = self->_allAids;
  self->_allAids = v4;
}

- (unsigned)expressTypeForApplet:(id)applet
{
  appletCopy = applet;
  v5 = sub_100148E24(&self->super.isa);
  identifier = [appletCopy identifier];

  v7 = [v5 objectForKey:identifier];

  if (v7)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (id)expressTypesForPassIDs:(id)ds
{
  dsCopy = ds;
  v22 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = dsCopy;
  v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v26)
  {
    v24 = *v33;
    selfCopy = self;
    do
    {
      v5 = 0;
      do
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v32 + 1) + 8 * v5);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v27 = v5;
        if (self)
        {
          passes = self->_passes;
        }

        else
        {
          passes = 0;
        }

        v8 = passes;
        v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v29;
          while (2)
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v29 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v28 + 1) + 8 * i);
              v14 = [v13 objectForKeyedSubscript:{@"expressEnabled", v22}];
              bOOLValue = [v14 BOOLValue];

              if (bOOLValue)
              {
                v16 = [v13 objectForKeyedSubscript:@"passUniqueID"];
                if ([v6 isEqualToString:v16])
                {
                  v17 = [v13 objectForKeyedSubscript:@"ExpressType"];
                  v18 = [NFExpressConfig expressTypeForATLConfigKey:v17];

                  if (v18)
                  {
                    v19 = [NSNumber numberWithUnsignedChar:v18];
                    [v22 addObject:v19];
                  }

                  goto LABEL_22;
                }
              }
            }

            v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:

        v5 = v27 + 1;
        self = selfCopy;
      }

      while ((v27 + 1) != v26);
      v20 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      v26 = v20;
    }

    while (v20);
  }

  return v22;
}

- (id)passIDListForApplet:(id)applet keyIdentifiers:(id)identifiers
{
  appletCopy = applet;
  identifiersCopy = identifiers;
  v8 = identifiersCopy;
  if (appletCopy)
  {
    if (identifiersCopy && ![identifiersCopy count])
    {
      v41 = objc_opt_new();
    }

    else
    {
      v41 = objc_opt_new();
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      selfCopy = self;
      if (self)
      {
        passes = self->_passes;
      }

      else
      {
        passes = 0;
      }

      obj = passes;
      v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v44 objects:v58 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v45;
        v13 = @"appletIdentifier";
        v38 = v8;
        do
        {
          v14 = 0;
          v42 = v11;
          do
          {
            if (*v45 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v44 + 1) + 8 * v14);
            v16 = [v15 objectForKeyedSubscript:v13];
            identifier = [appletCopy identifier];
            v18 = [v16 isEqualToString:identifier];

            if (v18)
            {
              v19 = appletCopy;
              v20 = v13;
              v21 = [v15 objectForKeyedSubscript:@"passUniqueID"];
              v22 = [v15 objectForKey:@"expressEnabled"];
              bOOLValue = [v22 BOOLValue];

              if (bOOLValue)
              {
                if (!v8)
                {
                  [v41 addObject:v21];
                  v13 = v20;
LABEL_28:
                  appletCopy = v19;

                  v11 = v42;
                  goto LABEL_29;
                }
              }

              else
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
                  v28 = 45;
                  if (isMetaClass)
                  {
                    v28 = 43;
                  }

                  v8 = v38;
                  v25(4, "%c[%{public}s %{public}s]:%i Pass %{public}@ has express disabled", v28, ClassName, Name, 266, v21);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v29 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v30 = object_getClass(selfCopy);
                  if (class_isMetaClass(v30))
                  {
                    v31 = 43;
                  }

                  else
                  {
                    v31 = 45;
                  }

                  v32 = object_getClassName(selfCopy);
                  v33 = sel_getName(a2);
                  *buf = 67110146;
                  v49 = v31;
                  v8 = v38;
                  v50 = 2082;
                  v51 = v32;
                  v52 = 2082;
                  v53 = v33;
                  v54 = 1024;
                  v55 = 266;
                  v56 = 2114;
                  v57 = v21;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Pass %{public}@ has express disabled", buf, 0x2Cu);
                }
              }

              v34 = [v15 objectForKeyedSubscript:@"keyIdentifier"];
              v13 = v20;
              if ([v8 containsObject:v34])
              {
                [v41 addObject:v21];
              }

              goto LABEL_28;
            }

LABEL_29:

            v14 = v14 + 1;
          }

          while (v11 != v14);
          v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v44 objects:v58 count:16];
        }

        while (v11);
      }
    }
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

- (BOOL)hasExpressWithAutoSelection
{
  v2 = sub_100148E24(&self->super.isa);
  v3 = [v2 count] != 0;

  return v3;
}

- (NFExpressConfig)initWithDriverWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v9.receiver = self;
  v9.super_class = NFExpressConfig;
  v6 = [(NFExpressConfig *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_driverWrapper, wrapper);
  }

  return v7;
}

- (BOOL)loadConfig:(id)config outError:(id *)error
{
  configCopy = config;
  if ([configCopy count])
  {
    v8 = 0;
  }

  else
  {
    migrateFromDefaults = [(NFExpressConfig *)self migrateFromDefaults];
    v8 = migrateFromDefaults == 0;
    if (!migrateFromDefaults)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v11 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v15 = 45;
        if (isMetaClass)
        {
          v15 = 43;
        }

        v11(3, "%c[%{public}s %{public}s]:%i Failed to migrate config from defaults - init with epmty config", v15, ClassName, Name, 333);
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

        *buf = 67109890;
        v108 = v18;
        v109 = 2082;
        v110 = object_getClassName(self);
        v111 = 2082;
        v112 = sel_getName(a2);
        v113 = 1024;
        v114 = 333;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to migrate config from defaults - init with epmty config", buf, 0x22u);
      }

      v19 = +[NSMutableArray array];

      configCopy = v19;
    }

    v20 = [migrateFromDefaults count];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFLogGetLogger();
    v22 = v21;
    if (v20)
    {
      if (v21)
      {
        v23 = object_getClass(self);
        v24 = class_isMetaClass(v23);
        v25 = object_getClassName(self);
        v99 = sel_getName(a2);
        v26 = 45;
        if (v24)
        {
          v26 = 43;
        }

        v22(6, "%c[%{public}s %{public}s]:%i Successfully migrated from defaults", v26, v25, v99, 338);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = object_getClass(self);
        if (class_isMetaClass(v28))
        {
          v29 = 43;
        }

        else
        {
          v29 = 45;
        }

        v30 = object_getClassName(self);
        v31 = sel_getName(a2);
        *buf = 67109890;
        v108 = v29;
        v109 = 2082;
        v110 = v30;
        v111 = 2082;
        v112 = v31;
        v113 = 1024;
        v114 = 338;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Successfully migrated from defaults", buf, 0x22u);
      }

      v32 = configCopy;
      v8 = 1;
      configCopy = migrateFromDefaults;
    }

    else
    {
      if (v21)
      {
        v33 = object_getClass(self);
        v34 = class_isMetaClass(v33);
        v35 = object_getClassName(self);
        v100 = sel_getName(a2);
        v36 = 45;
        if (v34)
        {
          v36 = 43;
        }

        v22(6, "%c[%{public}s %{public}s]:%i No express aids in defaults", v36, v35, v100, 343);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v32 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
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
        v108 = v38;
        v109 = 2082;
        v110 = v39;
        v111 = 2082;
        v112 = v40;
        v113 = 1024;
        v114 = 343;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No express aids in defaults", buf, 0x22u);
      }
    }
  }

  [(NFExpressConfig *)self dumpConfig:configCopy logLevel:6 prefix:@"init config"];
  v41 = 1;
  v42 = [(NFExpressConfig *)self reconfigureWithArray:configCopy updateStorage:v8 avoidChangingRouting:1 restoreAuthorization:0];
  if (v42)
  {
    v43 = v42;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v44 = NFLogGetLogger();
    if (v44)
    {
      v45 = v44;
      v46 = object_getClass(self);
      v47 = class_isMetaClass(v46);
      v96 = object_getClassName(self);
      v101 = sel_getName(a2);
      v48 = 45;
      if (v47)
      {
        v48 = 43;
      }

      v45(3, "%c[%{public}s %{public}s]:%i failed to initialize with stored config - %{public}@", v48, v96, v101, 351, v43);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v49 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
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

      v52 = object_getClassName(self);
      v53 = sel_getName(a2);
      *buf = 67110146;
      v108 = v51;
      v109 = 2082;
      v110 = v52;
      v111 = 2082;
      v112 = v53;
      v113 = 1024;
      v114 = 351;
      v115 = 2114;
      v116 = v43;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i failed to initialize with stored config - %{public}@", buf, 0x2Cu);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v54 = NFLogGetLogger();
    if (v54)
    {
      v55 = v54;
      v56 = object_getClass(self);
      v57 = class_isMetaClass(v56);
      v58 = object_getClassName(self);
      v102 = sel_getName(a2);
      v59 = 45;
      if (v57)
      {
        v59 = 43;
      }

      v55(3, "%c[%{public}s %{public}s]:%i init with empty config instead", v59, v58, v102, 352);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v60 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = object_getClass(self);
      if (class_isMetaClass(v61))
      {
        v62 = 43;
      }

      else
      {
        v62 = 45;
      }

      v63 = object_getClassName(self);
      v64 = sel_getName(a2);
      *buf = 67109890;
      v108 = v62;
      v109 = 2082;
      v110 = v63;
      v111 = 2082;
      v112 = v64;
      v113 = 1024;
      v114 = 352;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i init with empty config instead", buf, 0x22u);
    }

    v41 = 1;
    v65 = [(NFExpressConfig *)self reconfigureWithArray:&__NSArray0__struct updateStorage:1 avoidChangingRouting:1 restoreAuthorization:0];

    if (v65)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v66 = NFLogGetLogger();
      if (v66)
      {
        v67 = v66;
        v68 = object_getClass(self);
        v69 = class_isMetaClass(v68);
        v97 = object_getClassName(self);
        v103 = sel_getName(a2);
        v70 = 45;
        if (v69)
        {
          v70 = 43;
        }

        v67(3, "%c[%{public}s %{public}s]:%i failed to initialize with empty config - %{public}@", v70, v97, v103, 355, v65);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v71 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v72 = object_getClass(self);
        if (class_isMetaClass(v72))
        {
          v73 = 43;
        }

        else
        {
          v73 = 45;
        }

        v74 = object_getClassName(self);
        v75 = sel_getName(a2);
        *buf = 67110146;
        v108 = v73;
        v109 = 2082;
        v110 = v74;
        v111 = 2082;
        v112 = v75;
        v113 = 1024;
        v114 = 355;
        v115 = 2114;
        v116 = v65;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i failed to initialize with empty config - %{public}@", buf, 0x2Cu);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v76 = NFLogGetLogger();
      if (v76)
      {
        v77 = v76;
        v78 = object_getClass(self);
        v79 = class_isMetaClass(v78);
        v80 = object_getClassName(self);
        v104 = sel_getName(a2);
        v81 = 45;
        if (v79)
        {
          v81 = 43;
        }

        v77(3, "%c[%{public}s %{public}s]:%i Express Mode is disabled", v81, v80, v104, 356);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v82 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        v83 = object_getClass(self);
        if (class_isMetaClass(v83))
        {
          v84 = 43;
        }

        else
        {
          v84 = 45;
        }

        v85 = object_getClassName(self);
        v86 = sel_getName(a2);
        *buf = 67109890;
        v108 = v84;
        v109 = 2082;
        v110 = v85;
        v111 = 2082;
        v112 = v86;
        v113 = 1024;
        v114 = 356;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Express Mode is disabled", buf, 0x22u);
      }

      if (error)
      {
        v87 = [NSError alloc];
        v88 = [NSString stringWithUTF8String:"nfcd"];
        code = [v65 code];
        v105[0] = NSLocalizedDescriptionKey;
        if ([v65 code] > 75)
        {
          code2 = 76;
        }

        else
        {
          code2 = [v65 code];
        }

        v91 = [NSString stringWithUTF8String:off_100319730[code2]];
        v106[0] = v91;
        v106[1] = v65;
        v105[1] = NSUnderlyingErrorKey;
        v105[2] = @"Line";
        v106[2] = &off_1003323D0;
        v105[3] = @"Method";
        v92 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v106[3] = v92;
        v105[4] = NSDebugDescriptionErrorKey;
        v93 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 358];
        v106[4] = v93;
        v94 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:5];
        *error = [v87 initWithDomain:v88 code:code userInfo:v94];
      }

      v41 = 0;
    }
  }

  else
  {
    v65 = 0;
  }

  return v41;
}

- (id)arrayConfigFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014ADD4;
  v10[3] = &unk_1003199A0;
  v10[4] = self;
  v6 = objc_opt_new();
  v11 = v6;
  v12 = a2;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

- (id)restoreAuthForApplet:(id)applet
{
  appletCopy = applet;
  if ([appletCopy authTransientSupport])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Applet already requires auth", v11, ClassName, Name, 484);
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

      *buf = 67109890;
      v66 = v14;
      v67 = 2082;
      v68 = object_getClassName(self);
      v69 = 2082;
      v70 = sel_getName(a2);
      v71 = 1024;
      v72 = 484;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Applet already requires auth", buf, 0x22u);
    }

    goto LABEL_37;
  }

  getSecureElementWrapperAndSetRouting = [(NFExpressConfig *)self getSecureElementWrapperAndSetRouting];
  if (getSecureElementWrapperAndSetRouting)
  {
    v12 = getSecureElementWrapperAndSetRouting;
    v62 = appletCopy;
    v16 = [NSArray arrayWithObjects:&v62 count:1];
    v17 = sub_1002040C4(v12, 1, 0xFFFFFFFF, v16, 0);

    if (!v17)
    {
      v53 = sub_100253E14(&v12->isa);
LABEL_37:
      v37 = 0;
      goto LABEL_38;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v19 = v18;
      v20 = object_getClass(self);
      v21 = class_isMetaClass(v20);
      v22 = object_getClassName(self);
      v57 = sel_getName(a2);
      v23 = 45;
      if (v21)
      {
        v23 = 43;
      }

      v19(3, "%c[%{public}s %{public}s]:%i Failed to restore authorization on applet", v23, v22, v57, 499);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = object_getClass(self);
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      v27 = object_getClassName(self);
      v28 = sel_getName(a2);
      *buf = 67109890;
      v66 = v26;
      v67 = 2082;
      v68 = v27;
      v69 = 2082;
      v70 = v28;
      v71 = 1024;
      v72 = 499;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to restore authorization on applet", buf, 0x22u);
    }

    v59 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v30 = v17;
    v60[0] = NSLocalizedDescriptionKey;
    if (v17 >= 0x4C)
    {
      v31 = 76;
    }

    else
    {
      v31 = v17;
    }

    v32 = [NSString stringWithUTF8String:off_100319730[v31]];
    v61[0] = v32;
    v61[1] = &off_100332400;
    v60[1] = @"Line";
    v60[2] = @"Method";
    v33 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v61[2] = v33;
    v60[3] = NSDebugDescriptionErrorKey;
    v34 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 500];
    v61[3] = v34;
    v60[4] = NSLocalizedFailureReasonErrorKey;
    v35 = [[NSString alloc] initWithFormat:@"Failed to restore transient auth"];
    v61[4] = v35;
    v36 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:5];
    v37 = [v59 initWithDomain:v29 code:v30 userInfo:v36];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFLogGetLogger();
    if (v38)
    {
      v39 = v38;
      v40 = object_getClass(self);
      v41 = class_isMetaClass(v40);
      v55 = object_getClassName(self);
      v58 = sel_getName(a2);
      v42 = 45;
      if (v41)
      {
        v42 = 43;
      }

      v39(3, "%c[%{public}s %{public}s]:%i Failed to load SE for applet: %{public}@", v42, v55, v58, 490, appletCopy);
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
      v66 = v45;
      v67 = 2082;
      v68 = object_getClassName(self);
      v69 = 2082;
      v70 = sel_getName(a2);
      v71 = 1024;
      v72 = 490;
      v73 = 2114;
      v74 = appletCopy;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to load SE for applet: %{public}@", buf, 0x2Cu);
    }

    v46 = [NSError alloc];
    v47 = [NSString stringWithUTF8String:"nfcd"];
    v63[0] = NSLocalizedDescriptionKey;
    v48 = [NSString stringWithUTF8String:"Stack Error"];
    v64[0] = v48;
    v64[1] = &off_1003323E8;
    v63[1] = @"Line";
    v63[2] = @"Method";
    v49 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v64[2] = v49;
    v63[3] = NSDebugDescriptionErrorKey;
    v50 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 491];
    v64[3] = v50;
    v63[4] = NSLocalizedFailureReasonErrorKey;
    v51 = [[NSString alloc] initWithFormat:@"Failed to initialize SE wrapper"];
    v64[4] = v51;
    v52 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:5];
    v37 = [v46 initWithDomain:v47 code:15 userInfo:v52];

    v12 = 0;
  }

LABEL_38:

  return v37;
}

- (id)passForAid:(id)aid
{
  aidCopy = aid;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_passes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@"appletIdentifier", v15}];
        v12 = [aidCopy caseInsensitiveCompare:v11];

        if (!v12)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)removeAppletsFromConfig:(id)config
{
  configCopy = config;
  getSecureElementWrapperAndSetRouting = [(NFExpressConfig *)self getSecureElementWrapperAndSetRouting];
  if (getSecureElementWrapperAndSetRouting)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = configCopy;
    v8 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (!v8)
    {

      goto LABEL_31;
    }

    v9 = v8;
    v31 = getSecureElementWrapperAndSetRouting;
    v32 = configCopy;
    v10 = 0;
    v11 = *v34;
    while (1)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          identifier = [v14 identifier];
          if (!identifier)
          {
            goto LABEL_16;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v14 = 0;
            goto LABEL_16;
          }

          identifier = v13;
          v14 = 0;
          if (!identifier)
          {
            goto LABEL_16;
          }
        }

        v16 = [(NFExpressConfig *)self passForAid:identifier];
        if (v16)
        {
          [(NSMutableArray *)self->_passes removeObject:v16];
          v10 = 1;
        }

LABEL_16:
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (!v9)
      {

        getSecureElementWrapperAndSetRouting = v31;
        configCopy = v32;
        if (v10)
        {
          [(NFExpressConfig *)self updateExpressAppletNumbers];
          [(NFExpressConfig *)self updateStorage];
        }

        goto LABEL_31;
      }
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v18 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    seName = [(NFExpressConfig *)self seName];
    v24 = 45;
    if (isMetaClass)
    {
      v24 = 43;
    }

    v18(3, "%c[%{public}s %{public}s]:%i Failed to initialize %{public}@ wrapper", v24, ClassName, Name, 525, seName);
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

    v28 = object_getClassName(self);
    v29 = sel_getName(a2);
    seName2 = [(NFExpressConfig *)self seName];
    *buf = 67110146;
    v39 = v27;
    getSecureElementWrapperAndSetRouting = 0;
    v40 = 2082;
    v41 = v28;
    v42 = 2082;
    v43 = v29;
    v44 = 1024;
    v45 = 525;
    v46 = 2114;
    v47 = seName2;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to initialize %{public}@ wrapper", buf, 0x2Cu);
  }

LABEL_31:
}

- (id)getExpressAidsForType:(unsigned __int8)type onlyInExpress:(BOOL)express
{
  expressCopy = express;
  typeCopy = type;
  v19 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = self->_passes;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if (expressCopy)
        {
          v13 = [*(*(&v20 + 1) + 8 * i) objectForKeyedSubscript:@"expressEnabled"];
          bOOLValue = [v13 BOOLValue];

          if (!bOOLValue)
          {
            continue;
          }
        }

        v15 = [v12 objectForKeyedSubscript:@"appletIdentifier"];
        v16 = [v12 objectForKeyedSubscript:@"ExpressType"];
        v17 = [NFExpressConfig expressTypeForATLConfigKey:v16];

        if (v17 == typeCopy)
        {
          [v19 addObject:v15];
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return v19;
}

- (id)deactivateExpressConfig
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 728);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = object_getClassName(self);
    v21 = 2082;
    v22 = sel_getName(a2);
    v23 = 1024;
    v24 = 728;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  getSecureElementWrapperAndSetRouting = [(NFExpressConfig *)self getSecureElementWrapperAndSetRouting];
  v14 = sub_1002562FC(getSecureElementWrapperAndSetRouting);

  return v14;
}

- (void)activateExpressConfig
{
  if (self)
  {
    self->_expressConfigUpdateRequired = 1;
  }
}

- (BOOL)isSEOperational
{
  getSecureElementWrapper = [(NFExpressConfig *)self getSecureElementWrapper];
  isOperational = [getSecureElementWrapper isOperational];

  return isOperational;
}

@end