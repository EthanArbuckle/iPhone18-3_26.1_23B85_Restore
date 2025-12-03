@interface NFWalletPresentationSettingsSESD
+ (id)defaultSetting;
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (BOOL)isEligibleForDoubleClick;
- (NFWalletPresentationSettingsSESD)initWithSuiteName:(id)name;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation NFWalletPresentationSettingsSESD

+ (id)defaultSetting
{
  v2 = [[NFWalletPresentationSettingsSESD alloc] initWithSuiteName:@"com.apple.seserviced.contactlessCredential.settings"];

  return v2;
}

- (NFWalletPresentationSettingsSESD)initWithSuiteName:(id)name
{
  v10.receiver = self;
  v10.super_class = NFWalletPresentationSettingsSESD;
  v3 = [(NFWalletPresentationSettings *)&v10 initWithSuiteName:name];
  v4 = v3;
  if (v3)
  {
    [(NFWalletPresentationSettingsSESD *)v3 setWalletDomain:-1];
    defaults = [(NFWalletPresentationSettings *)v4 defaults];
    [defaults addObserver:v4 forKeyPath:@"defaultAppIdentifier" options:5 context:off_10035D508];

    defaults2 = [(NFWalletPresentationSettings *)v4 defaults];
    [defaults2 addObserver:v4 forKeyPath:@"domain" options:5 context:off_10035D510];

    defaults3 = [(NFWalletPresentationSettings *)v4 defaults];
    [defaults3 addObserver:v4 forKeyPath:@"doubleClickEnabled" options:5 context:off_10035D518];

    v8 = v4;
  }

  return v4;
}

- (void)dealloc
{
  defaults = [(NFWalletPresentationSettings *)self defaults];
  [defaults removeObserver:self forKeyPath:@"defaultAppIdentifier"];

  defaults2 = [(NFWalletPresentationSettings *)self defaults];
  [defaults2 removeObserver:self forKeyPath:@"domain"];

  defaults3 = [(NFWalletPresentationSettings *)self defaults];
  [defaults3 removeObserver:self forKeyPath:@"doubleClickEnabled"];

  v6.receiver = self;
  v6.super_class = NFWalletPresentationSettingsSESD;
  [(NFWalletPresentationSettingsSESD *)&v6 dealloc];
}

- (BOOL)isEligibleForDoubleClick
{
  defaultAppIdentifier = [(NFWalletPresentationSettingsSESD *)self defaultAppIdentifier];
  if ([defaultAppIdentifier lengthOfBytesUsingEncoding:4] && (-[NFWalletPresentationSettingsSESD walletDomain](self, "walletDomain") == 1 || -[NFWalletPresentationSettingsSESD walletDomain](self, "walletDomain") == 2))
  {
    doubleClickEnable = [(NFWalletPresentationSettingsSESD *)self doubleClickEnable];
  }

  else
  {
    doubleClickEnable = 0;
  }

  return doubleClickEnable;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v14 = changeCopy;
  if (off_10035D508 == context)
  {
    v15 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
    if (v15)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v157 = pathCopy;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v63 = [(__CFString *)v15 lengthOfBytesUsingEncoding:4];
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          v65 = Logger;
          if (v63)
          {
            if (Logger)
            {
              Class = object_getClass(self);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(self);
              Name = sel_getName(a2);
              defaultAppIdentifier = [(NFWalletPresentationSettingsSESD *)self defaultAppIdentifier];
              v70 = 43;
              if (!isMetaClass)
              {
                v70 = 45;
              }

              v65(6, "%c[%{public}s %{public}s]:%i %@ existing=%{public}@, new=%{public}@", v70, ClassName, Name, 112, @"defaultAppIdentifier", defaultAppIdentifier, v15);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v71 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
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
              defaultAppIdentifier2 = [(NFWalletPresentationSettingsSESD *)self defaultAppIdentifier];
              *buf = 67110658;
              v161 = v73;
              v162 = 2082;
              v163 = v74;
              v164 = 2082;
              v165 = v75;
              v166 = 1024;
              v167 = 112;
              v168 = 2112;
              v169 = @"defaultAppIdentifier";
              v170 = 2114;
              *v171 = defaultAppIdentifier2;
              *&v171[8] = 2114;
              v172 = v15;
              _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %@ existing=%{public}@, new=%{public}@", buf, 0x40u);
            }

            [(NFWalletPresentationSettingsSESD *)self setDefaultAppIdentifier:v15];
            goto LABEL_131;
          }

          if (Logger)
          {
            v135 = object_getClass(self);
            v136 = class_isMetaClass(v135);
            v137 = object_getClassName(self);
            v153 = sel_getName(a2);
            v138 = 45;
            if (v136)
            {
              v138 = 43;
            }

            v65(4, "%c[%{public}s %{public}s]:%i Invalid appId; 0 length", v138, v137, v153, 108);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v62 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v139 = object_getClass(self);
            if (class_isMetaClass(v139))
            {
              v140 = 43;
            }

            else
            {
              v140 = 45;
            }

            *buf = 67109890;
            v161 = v140;
            v162 = 2082;
            v163 = object_getClassName(self);
            v164 = 2082;
            v165 = sel_getName(a2);
            v166 = 1024;
            v167 = 108;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid appId; 0 length", buf, 0x22u);
          }

LABEL_47:

LABEL_107:
          goto LABEL_108;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v91 = NFLogGetLogger();
        if (v91)
        {
          v92 = v91;
          v93 = object_getClass(self);
          v94 = class_isMetaClass(v93);
          v141 = object_getClassName(self);
          v149 = sel_getName(a2);
          v95 = 45;
          if (v94)
          {
            v95 = 43;
          }

          v92(4, "%c[%{public}s %{public}s]:%i Unexpected data type for appId: %@", v95, v141, v149, 103, v15);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v22 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v96 = object_getClass(self);
          if (class_isMetaClass(v96))
          {
            v97 = 43;
          }

          else
          {
            v97 = 45;
          }

          *buf = 67110146;
          v161 = v97;
          v162 = 2082;
          v163 = object_getClassName(self);
          v164 = 2082;
          v165 = sel_getName(a2);
          v166 = 1024;
          v167 = 103;
          v168 = 2112;
          v169 = v15;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected data type for appId: %@", buf, 0x2Cu);
        }

LABEL_46:

        v62 = objc_opt_new();
        [(NFWalletPresentationSettingsSESD *)self setDefaultAppIdentifier:v62];
        goto LABEL_47;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v17 = v16;
        v18 = object_getClass(self);
        v19 = class_isMetaClass(v18);
        v20 = object_getClassName(self);
        v144 = sel_getName(a2);
        v21 = 45;
        if (v19)
        {
          v21 = 43;
        }

        v17(4, "%c[%{public}s %{public}s]:%i No settings found; init to default empty id", v21, v20, v144, 98);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v22 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      v23 = object_getClass(self);
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      *buf = 67109890;
      v161 = v24;
      v162 = 2082;
      v163 = object_getClassName(self);
      v164 = 2082;
      v165 = sel_getName(a2);
      v166 = 1024;
      v167 = 98;
      v25 = "%c[%{public}s %{public}s]:%i No settings found; init to default empty id";
      v26 = v22;
      v27 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v54 = NFLogGetLogger();
      if (v54)
      {
        v55 = v54;
        v56 = object_getClass(self);
        v57 = class_isMetaClass(v56);
        v58 = object_getClassName(self);
        v147 = sel_getName(a2);
        v59 = 45;
        if (v57)
        {
          v59 = 43;
        }

        v55(5, "%c[%{public}s %{public}s]:%i Invalid setting, default to none", v59, v58, v147, 93);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v22 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      v60 = object_getClass(self);
      if (class_isMetaClass(v60))
      {
        v61 = 43;
      }

      else
      {
        v61 = 45;
      }

      *buf = 67109890;
      v161 = v61;
      v162 = 2082;
      v163 = object_getClassName(self);
      v164 = 2082;
      v165 = sel_getName(a2);
      v166 = 1024;
      v167 = 93;
      v25 = "%c[%{public}s %{public}s]:%i Invalid setting, default to none";
      v26 = v22;
      v27 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&_mh_execute_header, v26, v27, v25, buf, 0x22u);
    goto LABEL_46;
  }

  if (off_10035D510 == context)
  {
    v15 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFLogGetLogger();
      if (v30)
      {
        v31 = v30;
        v32 = object_getClass(self);
        v33 = class_isMetaClass(v32);
        v34 = object_getClassName(self);
        v145 = sel_getName(a2);
        v35 = 45;
        if (v33)
        {
          v35 = 43;
        }

        v31(4, "%c[%{public}s %{public}s]:%i No settings found; init to unknown domain", v35, v34, v145, 120);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v36 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_94;
      }

      v37 = object_getClass(self);
      if (class_isMetaClass(v37))
      {
        v38 = 43;
      }

      else
      {
        v38 = 45;
      }

      *buf = 67109890;
      v161 = v38;
      v162 = 2082;
      v163 = object_getClassName(self);
      v164 = 2082;
      v165 = sel_getName(a2);
      v166 = 1024;
      v167 = 120;
      v39 = "%c[%{public}s %{public}s]:%i No settings found; init to unknown domain";
      v40 = v36;
      v41 = 34;
LABEL_93:
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, v39, buf, v41);
LABEL_94:

      [(NFWalletPresentationSettingsSESD *)self setWalletDomain:0];
      goto LABEL_107;
    }

    if (((isKindOfClass | v29) & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v98 = NFLogGetLogger();
      if (v98)
      {
        v99 = v98;
        v100 = object_getClass(self);
        v101 = class_isMetaClass(v100);
        v142 = object_getClassName(self);
        v150 = sel_getName(a2);
        v102 = 45;
        if (v101)
        {
          v102 = 43;
        }

        v99(4, "%c[%{public}s %{public}s]:%i Unexpected data type for domain: %@, reset to unknown domain", v102, v142, v150, 125, v15);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v36 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_94;
      }

      v103 = object_getClass(self);
      if (class_isMetaClass(v103))
      {
        v104 = 43;
      }

      else
      {
        v104 = 45;
      }

      *buf = 67110146;
      v161 = v104;
      v162 = 2082;
      v163 = object_getClassName(self);
      v164 = 2082;
      v165 = sel_getName(a2);
      v166 = 1024;
      v167 = 125;
      v168 = 2112;
      v169 = v15;
      v39 = "%c[%{public}s %{public}s]:%i Unexpected data type for domain: %@, reset to unknown domain";
      v40 = v36;
      v41 = 44;
      goto LABEL_93;
    }

    if (isKindOfClass)
    {
      integerValue = [(__CFString *)v15 integerValue];
    }

    else
    {
      integerValue = [(__CFString *)v15 unsignedIntegerValue];
    }

    v112 = integerValue;
    v157 = pathCopy;
    if (integerValue >= 6)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v113 = NFLogGetLogger();
      if (v113)
      {
        v114 = v113;
        v115 = object_getClass(self);
        v116 = class_isMetaClass(v115);
        v117 = object_getClassName(self);
        v152 = sel_getName(a2);
        v118 = 45;
        if (v116)
        {
          v118 = 43;
        }

        v114(5, "%c[%{public}s %{public}s]:%i Invalid setting, default to unknown", v118, v117, v152, 133);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v119 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
      {
        v120 = object_getClass(self);
        if (class_isMetaClass(v120))
        {
          v121 = 43;
        }

        else
        {
          v121 = 45;
        }

        *buf = 67109890;
        v161 = v121;
        v162 = 2082;
        v163 = object_getClassName(self);
        v164 = 2082;
        v165 = sel_getName(a2);
        v166 = 1024;
        v167 = 133;
        _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalid setting, default to unknown", buf, 0x22u);
      }

      v112 = 0;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v122 = NFLogGetLogger();
    if (v122)
    {
      v123 = v122;
      v124 = object_getClass(self);
      v125 = class_isMetaClass(v124);
      v126 = object_getClassName(self);
      v127 = sel_getName(a2);
      walletDomain = [(NFWalletPresentationSettingsSESD *)self walletDomain];
      v128 = 43;
      if (!v125)
      {
        v128 = 45;
      }

      v123(6, "%c[%{public}s %{public}s]:%i %@ existing=%{public}lu, new=%{public}lu", v128, v126, v127, 137, @"domain", walletDomain, v112);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v129 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
    {
      v130 = object_getClass(self);
      if (class_isMetaClass(v130))
      {
        v131 = 43;
      }

      else
      {
        v131 = 45;
      }

      v132 = object_getClassName(self);
      v133 = sel_getName(a2);
      walletDomain2 = [(NFWalletPresentationSettingsSESD *)self walletDomain];
      *buf = 67110658;
      v161 = v131;
      v162 = 2082;
      v163 = v132;
      v164 = 2082;
      v165 = v133;
      v166 = 1024;
      v167 = 137;
      v168 = 2112;
      v169 = @"domain";
      v170 = 2050;
      *v171 = walletDomain2;
      *&v171[8] = 2050;
      v172 = v112;
      _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %@ existing=%{public}lu, new=%{public}lu", buf, 0x40u);
    }

    [(NFWalletPresentationSettingsSESD *)self setWalletDomain:v112];
LABEL_131:

    pathCopy = v157;
    goto LABEL_108;
  }

  if (off_10035D518 == context)
  {
    v15 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v42 = NFLogGetLogger();
      if (v42)
      {
        v43 = v42;
        v44 = object_getClass(self);
        v45 = class_isMetaClass(v44);
        v46 = object_getClassName(self);
        v146 = sel_getName(a2);
        v47 = 45;
        if (v45)
        {
          v47 = 43;
        }

        v43(4, "%c[%{public}s %{public}s]:%i No settings found; init to default dbl click", v47, v46, v146, 143);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v48 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_105;
      }

      v49 = object_getClass(self);
      if (class_isMetaClass(v49))
      {
        v50 = 43;
      }

      else
      {
        v50 = 45;
      }

      *buf = 67109890;
      v161 = v50;
      v162 = 2082;
      v163 = object_getClassName(self);
      v164 = 2082;
      v165 = sel_getName(a2);
      v166 = 1024;
      v167 = 143;
      v51 = "%c[%{public}s %{public}s]:%i No settings found; init to default dbl click";
      v52 = v48;
      v53 = 34;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [(__CFString *)v15 BOOLValue];
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v79 = NFLogGetLogger();
        if (v79)
        {
          v80 = v79;
          v81 = object_getClass(self);
          v82 = class_isMetaClass(v81);
          v158 = object_getClassName(self);
          v83 = pathCopy;
          v84 = sel_getName(a2);
          doubleClickEnable = [(NFWalletPresentationSettingsSESD *)self doubleClickEnable];
          v148 = v84;
          pathCopy = v83;
          v85 = 43;
          if (!v82)
          {
            v85 = 45;
          }

          v80(6, "%c[%{public}s %{public}s]:%i %@ existing=%{public}d, new=%{public}d", v85, v158, v148, 155, @"doubleClickEnabled", doubleClickEnable, bOOLValue);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v86 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          v87 = object_getClass(self);
          if (class_isMetaClass(v87))
          {
            v88 = 43;
          }

          else
          {
            v88 = 45;
          }

          *buf = 67110658;
          v161 = v88;
          v162 = 2082;
          v163 = object_getClassName(self);
          v164 = 2082;
          v165 = sel_getName(a2);
          v166 = 1024;
          v167 = 155;
          v168 = 2112;
          v169 = @"doubleClickEnabled";
          v170 = 1026;
          *v171 = [(NFWalletPresentationSettingsSESD *)self doubleClickEnable];
          *&v171[4] = 1026;
          *&v171[6] = bOOLValue;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %@ existing=%{public}d, new=%{public}d", buf, 0x38u);
        }

        selfCopy2 = self;
        v90 = bOOLValue;
        goto LABEL_106;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v105 = NFLogGetLogger();
      if (v105)
      {
        v106 = v105;
        v107 = object_getClass(self);
        v108 = class_isMetaClass(v107);
        v143 = object_getClassName(self);
        v151 = sel_getName(a2);
        v109 = 45;
        if (v108)
        {
          v109 = 43;
        }

        v106(4, "%c[%{public}s %{public}s]:%i Unexpected data type for dbl click: %@", v109, v143, v151, 148, v15);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v48 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
LABEL_105:

        selfCopy2 = self;
        v90 = 0;
LABEL_106:
        [(NFWalletPresentationSettingsSESD *)selfCopy2 setDoubleClickEnable:v90];
        goto LABEL_107;
      }

      v110 = object_getClass(self);
      if (class_isMetaClass(v110))
      {
        v111 = 43;
      }

      else
      {
        v111 = 45;
      }

      *buf = 67110146;
      v161 = v111;
      v162 = 2082;
      v163 = object_getClassName(self);
      v164 = 2082;
      v165 = sel_getName(a2);
      v166 = 1024;
      v167 = 148;
      v168 = 2112;
      v169 = v15;
      v51 = "%c[%{public}s %{public}s]:%i Unexpected data type for dbl click: %@";
      v52 = v48;
      v53 = 44;
    }

    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, v51, buf, v53);
    goto LABEL_105;
  }

  v159.receiver = self;
  v159.super_class = NFWalletPresentationSettingsSESD;
  [(NFWalletPresentationSettingsSESD *)&v159 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_108:
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___NFWalletPresentationSettingsSESD;
  keyCopy = key;
  v4 = objc_msgSendSuper2(&v8, "keyPathsForValuesAffectingValueForKey:", keyCopy);
  v5 = [keyCopy isEqualToString:{@"isEligibleForDoubleClick", v8.receiver, v8.super_class}];

  if (v5)
  {
    v6 = [v4 setByAddingObjectsFromArray:&off_1003391E0];

    v4 = v6;
  }

  return v4;
}

@end