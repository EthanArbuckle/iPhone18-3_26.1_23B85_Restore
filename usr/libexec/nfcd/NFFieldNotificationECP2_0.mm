@interface NFFieldNotificationECP2_0
- (BOOL)isEqual:(id)equal;
- (NFFieldNotificationECP2_0)initWithCoder:(id)coder;
- (NFFieldNotificationECP2_0)initWithDictionary:(id)dictionary;
- (id)_parseCHTerminalTypeData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFFieldNotificationECP2_0

- (void)encodeWithCoder:(id)coder
{
  odaRequired = self->_odaRequired;
  coderCopy = coder;
  [coderCopy encodeBool:odaRequired forKey:@"odaRequired"];
  [coderCopy encodeInteger:self->_terminalMode forKey:@"terminalMode"];
  [coderCopy encodeInteger:self->_terminalType forKey:@"terminalType"];
  [coderCopy encodeInteger:self->_terminalSubType forKey:@"terminalSubType"];
  [coderCopy encodeObject:self->_tciArray forKey:@"tciArray"];
  [coderCopy encodeObject:self->_openLoopSchemeBitfield forKey:@"openLoopSchemeBitfield"];
  [coderCopy encodeObject:self->_homeKitSchemeDataPayload forKey:@"homeKitSchemeDataPayload"];
  [coderCopy encodeObject:self->_readerIdentifier forKey:@"readerIdentifier"];
  [coderCopy encodeInteger:self->_pairingMode forKey:@"pairingMode"];
  [coderCopy encodeBool:self->_ignoreRFTechOnIsEqual forKey:@"ignoreRFTechOnIsEqual"];
  [coderCopy encodeObject:self->_userInfo forKey:@"userInfo"];
  v6.receiver = self;
  v6.super_class = NFFieldNotificationECP2_0;
  [(NFFieldNotification *)&v6 encodeWithCoder:coderCopy];
}

- (NFFieldNotificationECP2_0)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = NFFieldNotificationECP2_0;
  v5 = [(NFFieldNotification *)&v28 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_odaRequired = [coderCopy decodeBoolForKey:@"odaRequired"];
    v5->_terminalMode = [coderCopy decodeIntegerForKey:@"terminalMode"];
    v5->_terminalType = [coderCopy decodeIntegerForKey:@"terminalType"];
    v5->_terminalSubType = [coderCopy decodeIntegerForKey:@"terminalSubType"];
    v6 = [NFNSCheckedDecoder coder:coderCopy decodeArrayOfClass:objc_opt_class() forKey:@"tciArray"];
    tciArray = v5->_tciArray;
    v5->_tciArray = v6;

    v8 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"openLoopSchemeBitfield"];
    openLoopSchemeBitfield = v5->_openLoopSchemeBitfield;
    v5->_openLoopSchemeBitfield = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeKitSchemeDataPayload"];
    homeKitSchemeDataPayload = v5->_homeKitSchemeDataPayload;
    v5->_homeKitSchemeDataPayload = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
    readerIdentifier = v5->_readerIdentifier;
    v5->_readerIdentifier = v13;

    v5->_pairingMode = [coderCopy decodeIntForKey:@"pairingMode"];
    v5->_ignoreRFTechOnIsEqual = [coderCopy decodeBoolForKey:@"ignoreRFTechOnIsEqual"];
    v27 = [NSSet alloc];
    v26 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v27 initWithObjects:{v26, v15, v16, v17, v18, v19, v20, v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v23;
  }

  return v5;
}

- (NFFieldNotificationECP2_0)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v111.receiver = self;
  v111.super_class = NFFieldNotificationECP2_0;
  v6 = [(NFFieldNotification *)&v111 initWithDictionary:dictionaryCopy];
  if (!v6)
  {
    goto LABEL_101;
  }

  v7 = [dictionaryCopy objectForKey:@"ECPData"];
  if ([v7 length] > 4)
  {
    [(NFFieldNotification *)v6 setNotificationType:3];
    bytes = [v7 bytes];
    v21 = bytes[2];
    v22 = (v21 & 0xF);
    if ([v7 length] - 5 != v22)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v27 = Logger;
        Class = object_getClass(v6);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v6);
        Name = sel_getName(a2);
        v31 = 45;
        if (isMetaClass)
        {
          v31 = 43;
        }

        v27(4, "%c[%{public}s %{public}s]:%i Invalid terminal type data length", v31, ClassName, Name, 532);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v32 = object_getClass(v6);
      if (class_isMetaClass(v32))
      {
        v33 = 43;
      }

      else
      {
        v33 = 45;
      }

      v34 = object_getClassName(v6);
      v35 = sel_getName(a2);
      *buf = 67109890;
      v113 = v33;
      v114 = 2082;
      v115 = v34;
      v116 = 2082;
      v117 = v35;
      v118 = 1024;
      v119 = 532;
      v19 = "%c[%{public}s %{public}s]:%i Invalid terminal type data length";
      goto LABEL_25;
    }

    v6->_odaRequired = (v21 & 0x40) == 0;
    v6->_terminalType = bytes[3];
    v6->_terminalMode = (v21 >> 5) & 4;
    v6->_terminalSubType = bytes[4];
    v6->_pairingMode = 0;
    v23 = [dictionaryCopy objectForKey:@"IgnoreRFTechOnIsEqual"];
    v6->_ignoreRFTechOnIsEqual = [v23 BOOLValue];

    [(NFFieldNotificationECP2_0 *)v6 _initCategoryWithType:v6->_terminalType subType:v6->_terminalSubType];
    terminalType = v6->_terminalType;
    if (terminalType == 2)
    {
      if ((v6->_terminalSubType - 8) > 3u)
      {
        v25 = 0;
      }

      else
      {
        v25 = dword_100297E10[(v6->_terminalSubType - 8)];
      }

      v6->_pairingMode = v25;
    }

    if (terminalType > 2 || v22 < 3)
    {
      if (!v22)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v37 = [v7 subdataWithRange:{5, 3}];
      v122 = v37;
      v38 = [NSArray arrayWithObjects:&v122 count:1];
      tciArray = v6->_tciArray;
      v6->_tciArray = v38;

      terminalType = v6->_terminalType;
    }

    if (terminalType == 5 && !v6->_terminalSubType)
    {
      v40 = [v7 subdataWithRange:{5, v22}];
      v41 = [(NFFieldNotificationECP2_0 *)v6 _parseCHTerminalTypeData:v40];

      if ([v41 count])
      {
        v42 = [[NSMutableDictionary alloc] initWithDictionary:v41];
        userInfo = v6->_userInfo;
        v6->_userInfo = v42;
      }
    }

LABEL_38:
    openLoopSchemeBitfield = v6->_openLoopSchemeBitfield;
    v6->_openLoopSchemeBitfield = 0;

    homeKitSchemeDataPayload = v6->_homeKitSchemeDataPayload;
    v6->_homeKitSchemeDataPayload = 0;

    v46 = v6->_terminalType;
    if (v46 == 1)
    {
      if ([v7 length] == 13)
      {
        v47 = [v7 subdataWithRange:{8, 5}];
        p_super = &v6->_openLoopSchemeBitfield->super;
        v6->_openLoopSchemeBitfield = v47;
        goto LABEL_99;
      }

      v46 = v6->_terminalType;
    }

    if (v46 == 2 && v6->_terminalSubType == 4)
    {
      if ([v7 length] <= 0xF)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v49 = NFLogGetLogger();
        if (v49)
        {
          v50 = v49;
          v51 = object_getClass(v6);
          v52 = class_isMetaClass(v51);
          v53 = object_getClassName(v6);
          v54 = sel_getName(a2);
          v110 = [v7 length];
          v55 = 45;
          if (v52)
          {
            v55 = 43;
          }

          v50(4, "%c[%{public}s %{public}s]:%i Invalid data length %lu", v55, v53, v54, 591, v110);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        p_super = NFSharedLogGetLogger();
        if (!os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_99;
        }

        v56 = object_getClass(v6);
        if (class_isMetaClass(v56))
        {
          v57 = 43;
        }

        else
        {
          v57 = 45;
        }

        v58 = object_getClassName(v6);
        v59 = sel_getName(a2);
        v60 = [v7 length];
        *buf = 67110146;
        v113 = v57;
        v114 = 2082;
        v115 = v58;
        v116 = 2082;
        v117 = v59;
        v118 = 1024;
        v119 = 591;
        v120 = 2048;
        v121 = v60;
        v61 = "%c[%{public}s %{public}s]:%i Invalid data length %lu";
        v62 = p_super;
        v63 = 44;
        goto LABEL_98;
      }

      v77 = [v7 subdataWithRange:{2, 14}];
      v78 = v6->_homeKitSchemeDataPayload;
      v6->_homeKitSchemeDataPayload = v77;

      if (v22 == 11)
      {
LABEL_68:
        v79 = [v7 subdataWithRange:{8, 8}];
        p_super = &v6->_readerIdentifier->super;
        v6->_readerIdentifier = v79;
        goto LABEL_99;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v94 = NFLogGetLogger();
      if (v94)
      {
        v95 = v94;
        v96 = object_getClass(v6);
        v97 = class_isMetaClass(v96);
        v98 = object_getClassName(v6);
        v109 = sel_getName(a2);
        v99 = 45;
        if (v97)
        {
          v99 = 43;
        }

        v95(4, "%c[%{public}s %{public}s]:%i Expected reader identifier but ECP frame does not contain it.", v99, v98, v109, 601);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      p_super = NFSharedLogGetLogger();
      if (!os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_99;
      }

      v100 = object_getClass(v6);
      if (class_isMetaClass(v100))
      {
        v101 = 43;
      }

      else
      {
        v101 = 45;
      }

      v102 = object_getClassName(v6);
      v103 = sel_getName(a2);
      *buf = 67109890;
      v113 = v101;
      v114 = 2082;
      v115 = v102;
      v116 = 2082;
      v117 = v103;
      v118 = 1024;
      v119 = 601;
      v61 = "%c[%{public}s %{public}s]:%i Expected reader identifier but ECP frame does not contain it.";
    }

    else
    {
      v64 = objc_opt_new();
      v65 = v6->_openLoopSchemeBitfield;
      v6->_openLoopSchemeBitfield = v64;

      if (v6->_terminalType != 2)
      {
        goto LABEL_100;
      }

      terminalSubType = v6->_terminalSubType;
      if (terminalSubType > 0xB)
      {
        goto LABEL_100;
      }

      if (((1 << terminalSubType) & 0xCF0) == 0)
      {
        if (terminalSubType != 1 || ![(NSArray *)v6->_tciArray count])
        {
          goto LABEL_100;
        }

        v80 = [(NSArray *)v6->_tciArray objectAtIndexedSubscript:0];
        p_super = v80;
        if (v80 && [v80 length]>= 3)
        {
          bytes2 = [p_super bytes];
          if (*bytes2 == 3841 && bytes2[2] == 255)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v83 = NFLogGetLogger();
            if (v83)
            {
              v84 = v83;
              v85 = object_getClass(v6);
              v86 = class_isMetaClass(v85);
              v87 = object_getClassName(v6);
              v108 = sel_getName(a2);
              v88 = 45;
              if (v86)
              {
                v88 = 43;
              }

              v84(6, "%c[%{public}s %{public}s]:%i Charger TCI detected", v88, v87, v108, 629);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v89 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
            {
              v90 = object_getClass(v6);
              if (class_isMetaClass(v90))
              {
                v91 = 43;
              }

              else
              {
                v91 = 45;
              }

              v92 = object_getClassName(v6);
              v93 = sel_getName(a2);
              *buf = 67109890;
              v113 = v91;
              v114 = 2082;
              v115 = v92;
              v116 = 2082;
              v117 = v93;
              v118 = 1024;
              v119 = 629;
              _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Charger TCI detected", buf, 0x22u);
            }

            v6->_terminalType = 0;
            v6->_terminalSubType = 1;
            [(NFFieldNotification *)v6 setCategory:5];
          }
        }

LABEL_99:

LABEL_100:
LABEL_101:
        v36 = v6;
        goto LABEL_102;
      }

      if (v22 == 11)
      {
        goto LABEL_68;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v67 = NFLogGetLogger();
      if (v67)
      {
        v68 = v67;
        v69 = object_getClass(v6);
        v70 = class_isMetaClass(v69);
        v71 = object_getClassName(v6);
        v107 = sel_getName(a2);
        v72 = 45;
        if (v70)
        {
          v72 = 43;
        }

        v68(4, "%c[%{public}s %{public}s]:%i Expected reader identifier but ECP frame does not contain it.", v72, v71, v107, 621);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      p_super = NFSharedLogGetLogger();
      if (!os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_99;
      }

      v73 = object_getClass(v6);
      if (class_isMetaClass(v73))
      {
        v74 = 43;
      }

      else
      {
        v74 = 45;
      }

      v75 = object_getClassName(v6);
      v76 = sel_getName(a2);
      *buf = 67109890;
      v113 = v74;
      v114 = 2082;
      v115 = v75;
      v116 = 2082;
      v117 = v76;
      v118 = 1024;
      v119 = 621;
      v61 = "%c[%{public}s %{public}s]:%i Expected reader identifier but ECP frame does not contain it.";
    }

    v62 = p_super;
    v63 = 34;
LABEL_98:
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, v61, buf, v63);
    goto LABEL_99;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFLogGetLogger();
  if (v8)
  {
    v9 = v8;
    v10 = object_getClass(v6);
    v11 = class_isMetaClass(v10);
    v12 = object_getClassName(v6);
    v105 = sel_getName(a2);
    v13 = 45;
    if (v11)
    {
      v13 = 43;
    }

    v9(4, "%c[%{public}s %{public}s]:%i Frame packet length shorter than expected", v13, v12, v105, 505);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_26;
  }

  v15 = object_getClass(v6);
  if (class_isMetaClass(v15))
  {
    v16 = 43;
  }

  else
  {
    v16 = 45;
  }

  v17 = object_getClassName(v6);
  v18 = sel_getName(a2);
  *buf = 67109890;
  v113 = v16;
  v114 = 2082;
  v115 = v17;
  v116 = 2082;
  v117 = v18;
  v118 = 1024;
  v119 = 505;
  v19 = "%c[%{public}s %{public}s]:%i Frame packet length shorter than expected";
LABEL_25:
  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v19, buf, 0x22u);
LABEL_26:

  v36 = 0;
LABEL_102:

  return v36;
}

- (id)description
{
  v3 = objc_opt_new();
  if (([(NFFieldNotification *)self rfTechnology]& 1) != 0)
  {
    [v3 appendString:{@"A, "}];
  }

  if (([(NFFieldNotification *)self rfTechnology]& 2) != 0)
  {
    [v3 appendString:{@"B, "}];
  }

  if (([(NFFieldNotification *)self rfTechnology]& 4) != 0)
  {
    [v3 appendString:{@"F, "}];
  }

  if (([(NFFieldNotification *)self rfTechnology]& 0x10) != 0)
  {
    [v3 appendString:{@"V, "}];
  }

  if (([(NFFieldNotification *)self rfTechnology]& 8) != 0)
  {
    [v3 appendString:{@"ECP, "}];
  }

  if (![v3 length])
  {
    [v3 appendString:@"None"];
  }

  terminalType = self->_terminalType;
  if (terminalType > 1)
  {
    if (terminalType == 2)
    {
      if (self->_terminalSubType != 4)
      {
        pairingMode = self->_pairingMode;
        if (pairingMode > 2)
        {
          v38 = &stru_10031EA18;
        }

        else
        {
          v38 = *(&off_10031D498 + pairingMode);
        }

        v77 = v38;
        v74 = [NSString alloc];
        ClassName = object_getClassName(self);
        odaRequired = self->_odaRequired;
        terminalMode = self->_terminalMode;
        v48 = self->_terminalType;
        terminalSubType = self->_terminalSubType;
        tciArray = self->_tciArray;
        readerIdentifier = self->_readerIdentifier;
        _creationDateString = [(NFFieldNotification *)self _creationDateString];
        cachedBeforeRFReset2 = _creationDateString;
        cachedBeforeRFReset = [(NFFieldNotification *)self cachedBeforeRFReset];
        v68 = readerIdentifier;
        v63 = tciArray;
        v65 = v77;
        v59 = v48;
        v61 = terminalSubType;
        v55 = odaRequired;
        v57 = terminalMode;
        v13 = @"<%s: tech=[%@], oda=%d, terminalMode=%lu, terminalType=%lu, terminalSubType=%d, tcis=%@, pairingMode=%@ readerIdentifier=%@, date=%@, cached=%d>";
        v53 = ClassName;
        v54 = v3;
        v36 = v74;
        goto LABEL_31;
      }

      v75 = [NSString alloc];
      v29 = object_getClassName(self);
      typeFSystemCode = [(NFFieldNotification *)self typeFSystemCode];
      v31 = self->_odaRequired;
      v32 = self->_terminalMode;
      v33 = self->_terminalType;
      v34 = self->_terminalSubType;
      homeKitSchemeDataPayload = self->_homeKitSchemeDataPayload;
      _creationDateString = [(NFFieldNotification *)self _creationDateString];
      v68 = _creationDateString;
      cachedBeforeRFReset2 = [(NFFieldNotification *)self cachedBeforeRFReset];
      v63 = v34;
      v65 = homeKitSchemeDataPayload;
      v59 = v32;
      v61 = v33;
      v55 = typeFSystemCode;
      v57 = v31;
      v13 = @"<%s: tech=%@ sc=0x%X, oda=%d, terminalMode=%lu, terminalType=%lu, terminalSubType=%d, homeKitPayload=%@, date=%@, cached=%d>";
      v53 = v29;
      v54 = v3;
LABEL_24:
      v36 = v75;
LABEL_31:
      v44 = [v36 initWithFormat:v13, v53, v54, v55, v57, v59, v61, v63, v65, v68, cachedBeforeRFReset2, cachedBeforeRFReset];
      goto LABEL_32;
    }

    if (terminalType != 5 || self->_terminalSubType)
    {
LABEL_20:
      v76 = [NSString alloc];
      v73 = object_getClassName(self);
      typeFSystemCode2 = [(NFFieldNotification *)self typeFSystemCode];
      v15 = self->_odaRequired;
      v16 = self->_terminalMode;
      v17 = self->_terminalType;
      v18 = self->_terminalSubType;
      _creationDateString = [(NSData *)self->_terminalTypeData debugDescription];
      v19 = self->_readerIdentifier;
      _creationDateString2 = [(NFFieldNotification *)self _creationDateString];
      v21 = [v76 initWithFormat:@"<%s: tech=[%@] sc=0x%X, oda=%d, terminalMode=%lu, terminalType=%lu, terminalSubType=%d, terminalTypeData=%@, readerIdentifier=%@, date=%@, cached=%d>", v73, v3, typeFSystemCode2, v15, v16, v17, v18, _creationDateString, v19, _creationDateString2, -[NFFieldNotification cachedBeforeRFReset](self, "cachedBeforeRFReset")];

      goto LABEL_33;
    }

    v22 = [NSString alloc];
    v23 = object_getClassName(self);
    v39 = self->_odaRequired;
    v40 = self->_terminalMode;
    v41 = self->_terminalType;
    v42 = self->_terminalSubType;
    userInfo = self->_userInfo;
    _creationDateString = [(NFFieldNotification *)self _creationDateString];
    cachedBeforeRFReset4 = _creationDateString;
    cachedBeforeRFReset3 = [(NFFieldNotification *)self cachedBeforeRFReset];
    v62 = v42;
    v64 = userInfo;
    v58 = v40;
    v60 = v41;
    v56 = v39;
    v28 = @"<%s: tech=[%@], oda=%d, terminalMode=%lu, terminalType=%lu, terminalSubType=%d, userInfo=%@, date=%@, cached=%d>";
  }

  else
  {
    if (terminalType)
    {
      if (terminalType == 1)
      {
        v75 = [NSString alloc];
        v72 = object_getClassName(self);
        typeFSystemCode3 = [(NFFieldNotification *)self typeFSystemCode];
        v6 = self->_odaRequired;
        v7 = self->_terminalMode;
        v8 = self->_terminalType;
        v9 = self->_terminalSubType;
        v10 = self->_tciArray;
        openLoopSchemeBitfield = self->_openLoopSchemeBitfield;
        _creationDateString = [(NFFieldNotification *)self _creationDateString];
        cachedBeforeRFReset2 = _creationDateString;
        cachedBeforeRFReset = [(NFFieldNotification *)self cachedBeforeRFReset];
        v65 = v10;
        v68 = openLoopSchemeBitfield;
        v61 = v8;
        v63 = v9;
        v57 = v6;
        v59 = v7;
        v54 = v3;
        v55 = typeFSystemCode3;
        v13 = @"<%s: tech=[%@] sc=0x%X, oda=%d, terminalMode=%lu, terminalType=%lu, terminalSubType=%d, tcis=%@, openLoop=%@, date=%@, cached=%d>";
        v53 = v72;
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    v22 = [NSString alloc];
    v23 = object_getClassName(self);
    v24 = self->_odaRequired;
    v25 = self->_terminalMode;
    v26 = self->_terminalType;
    v27 = self->_terminalSubType;
    _creationDateString = [(NFFieldNotification *)self _creationDateString];
    v64 = _creationDateString;
    cachedBeforeRFReset4 = [(NFFieldNotification *)self cachedBeforeRFReset];
    v60 = v26;
    v62 = v27;
    v56 = v24;
    v58 = v25;
    v28 = @"<%s: tech=[%@], oda=%d, terminalMode=%lu, terminalType=%lu, terminalSubType=%d, date=%@, cached=%d>";
  }

  v44 = [v22 initWithFormat:v28, v23, v3, v56, v58, v60, v62, v64, cachedBeforeRFReset4, cachedBeforeRFReset3, v69, cachedBeforeRFReset];
LABEL_32:
  v21 = v44;
LABEL_33:

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      odaRequired = [(NFFieldNotificationECP2_0 *)v6 odaRequired];
      if (odaRequired != [(NFFieldNotificationECP2_0 *)self odaRequired])
      {
        goto LABEL_47;
      }

      terminalType = [(NFFieldNotificationECP2_0 *)v6 terminalType];
      if (terminalType != [(NFFieldNotificationECP2_0 *)self terminalType])
      {
        goto LABEL_47;
      }

      terminalSubType = [(NFFieldNotificationECP2_0 *)v6 terminalSubType];
      if (terminalSubType != [(NFFieldNotificationECP2_0 *)self terminalSubType])
      {
        goto LABEL_47;
      }

      terminalMode = [(NFFieldNotificationECP2_0 *)v6 terminalMode];
      if (terminalMode != [(NFFieldNotificationECP2_0 *)self terminalMode])
      {
        goto LABEL_47;
      }

      tciArray = [(NFFieldNotificationECP2_0 *)v6 tciArray];
      v12 = [tciArray count];
      tciArray2 = [(NFFieldNotificationECP2_0 *)self tciArray];
      v14 = [tciArray2 count];

      if (v12 != v14)
      {
        goto LABEL_47;
      }

      tciArray3 = [(NFFieldNotificationECP2_0 *)v6 tciArray];
      if ([tciArray3 count])
      {
        tciArray4 = [(NFFieldNotificationECP2_0 *)v6 tciArray];
        tciArray5 = [(NFFieldNotificationECP2_0 *)self tciArray];
        v18 = [tciArray4 isEqualToArray:tciArray5];

        if (!v18)
        {
          goto LABEL_47;
        }
      }

      else
      {
      }

      openLoopSchemeBitfield = [(NFFieldNotificationECP2_0 *)v6 openLoopSchemeBitfield];
      v21 = [openLoopSchemeBitfield length];
      openLoopSchemeBitfield2 = [(NFFieldNotificationECP2_0 *)self openLoopSchemeBitfield];
      v23 = [openLoopSchemeBitfield2 length];

      if (v21 != v23)
      {
        goto LABEL_47;
      }

      openLoopSchemeBitfield3 = [(NFFieldNotificationECP2_0 *)v6 openLoopSchemeBitfield];
      if (openLoopSchemeBitfield3)
      {
        v25 = openLoopSchemeBitfield3;
        openLoopSchemeBitfield4 = [(NFFieldNotificationECP2_0 *)v6 openLoopSchemeBitfield];
        openLoopSchemeBitfield5 = [(NFFieldNotificationECP2_0 *)self openLoopSchemeBitfield];
        v28 = [openLoopSchemeBitfield4 isEqualToData:openLoopSchemeBitfield5];

        if (!v28)
        {
          goto LABEL_47;
        }
      }

      readerIdentifier = [(NFFieldNotificationECP2_0 *)v6 readerIdentifier];
      readerIdentifier4 = [readerIdentifier length];
      readerIdentifier2 = [(NFFieldNotificationECP2_0 *)self readerIdentifier];
      v32 = [readerIdentifier2 length];

      if (readerIdentifier4 != v32)
      {
        goto LABEL_47;
      }

      readerIdentifier3 = [(NFFieldNotificationECP2_0 *)v6 readerIdentifier];
      if ([readerIdentifier3 length])
      {
        readerIdentifier4 = [(NFFieldNotificationECP2_0 *)v6 readerIdentifier];
        readerIdentifier5 = [(NFFieldNotificationECP2_0 *)self readerIdentifier];
        v35 = [readerIdentifier4 isEqualToData:readerIdentifier5];

        if (!v35)
        {
          goto LABEL_47;
        }
      }

      else
      {
      }

      pairingMode = [(NFFieldNotificationECP2_0 *)v6 pairingMode];
      if (pairingMode != [(NFFieldNotificationECP2_0 *)self pairingMode])
      {
LABEL_47:
        v19 = 0;
LABEL_48:

        goto LABEL_49;
      }

      if ([(NFFieldNotificationECP2_0 *)self terminalType]!= 5 || [(NFFieldNotificationECP2_0 *)self terminalSubType])
      {
LABEL_25:
        if ([(NFFieldNotificationECP2_0 *)self ignoreRFTechOnIsEqual])
        {
          v59.receiver = self;
          v59.super_class = NFFieldNotificationECP2_0;
          v37 = [(NFFieldNotification *)&v59 isEqualWithoutRFTech:v6];
        }

        else
        {
          v58.receiver = self;
          v58.super_class = NFFieldNotificationECP2_0;
          v37 = [(NFFieldNotification *)&v58 isEqual:v6];
        }

        v19 = v37;
        goto LABEL_48;
      }

      userInfo = [(NFFieldNotificationECP2_0 *)self userInfo];
      v39 = [userInfo count];
      if (v39 || (-[NFFieldNotificationECP2_0 userInfo](v6, "userInfo"), readerIdentifier4 = objc_claimAutoreleasedReturnValue(), ![readerIdentifier4 count]))
      {
        userInfo2 = [(NFFieldNotificationECP2_0 *)self userInfo];
        if ([userInfo2 count])
        {
          userInfo3 = [(NFFieldNotificationECP2_0 *)v6 userInfo];
          v42 = [userInfo3 count];

          if (!v39)
          {
          }

          if (!v42)
          {
            goto LABEL_47;
          }
        }

        else
        {

          if (!v39)
          {
          }
        }

        userInfo4 = [(NFFieldNotificationECP2_0 *)v6 userInfo];
        userInfo = [userInfo4 objectForKey:@"CHCfgBytes"];

        userInfo5 = [(NFFieldNotificationECP2_0 *)self userInfo];
        readerIdentifier4 = [userInfo5 objectForKey:@"CHCfgBytes"];

        if ((userInfo || !readerIdentifier4) && (!userInfo || readerIdentifier4))
        {
          unsignedShortValue = [userInfo unsignedShortValue];
          if (unsignedShortValue != [readerIdentifier4 unsignedShortValue])
          {
            unsignedShortValue2 = [userInfo unsignedShortValue];
            if ((([readerIdentifier4 unsignedShortValue] ^ unsignedShortValue2) & 3) != 0)
            {
              goto LABEL_46;
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v49 = Logger;
              Class = object_getClass(self);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(self);
              Name = sel_getName(a2);
              v53 = 45;
              if (isMetaClass)
              {
                v53 = 43;
              }

              v49(4, "%c[%{public}s %{public}s]:%i Contains undefined RFU bits but existing feature definition matches", v53, ClassName, Name, 875);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v54 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v55 = object_getClass(self);
              if (class_isMetaClass(v55))
              {
                v56 = 43;
              }

              else
              {
                v56 = 45;
              }

              *buf = 67109890;
              v61 = v56;
              v62 = 2082;
              v63 = object_getClassName(self);
              v64 = 2082;
              v65 = sel_getName(a2);
              v66 = 1024;
              v67 = 875;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Contains undefined RFU bits but existing feature definition matches", buf, 0x22u);
            }
          }

          goto LABEL_25;
        }
      }

LABEL_46:

      goto LABEL_47;
    }

    v19 = 0;
  }

LABEL_49:

  return v19;
}

- (id)_parseCHTerminalTypeData:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  if ([dataCopy length] <= 2)
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
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v8(6, "%c[%{public}s %{public}s]:%i Missing minimum required length", v12, ClassName, Name, 895);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v14 = object_getClass(self);
    if (class_isMetaClass(v14))
    {
      v15 = 43;
    }

    else
    {
      v15 = 45;
    }

    *buf = 67109890;
    v78 = v15;
    v79 = 2082;
    v80 = object_getClassName(self);
    v81 = 2082;
    v82 = sel_getName(a2);
    v83 = 1024;
    v84 = 895;
    v16 = "%c[%{public}s %{public}s]:%i Missing minimum required length";
LABEL_31:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v16, buf, 0x22u);
LABEL_32:
    v37 = 0;
    goto LABEL_69;
  }

  v17 = *bytes;
  if (!*bytes)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFLogGetLogger();
    if (v29)
    {
      v30 = v29;
      v31 = object_getClass(self);
      v32 = class_isMetaClass(v31);
      v33 = object_getClassName(self);
      v73 = sel_getName(a2);
      v34 = 45;
      if (v32)
      {
        v34 = 43;
      }

      v30(6, "%c[%{public}s %{public}s]:%i Minimal version not met", v34, v33, v73, 903);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v35 = object_getClass(self);
    if (class_isMetaClass(v35))
    {
      v36 = 43;
    }

    else
    {
      v36 = 45;
    }

    *buf = 67109890;
    v78 = v36;
    v79 = 2082;
    v80 = object_getClassName(self);
    v81 = 2082;
    v82 = sel_getName(a2);
    v83 = 1024;
    v84 = 903;
    v16 = "%c[%{public}s %{public}s]:%i Minimal version not met";
    goto LABEL_31;
  }

  v13 = objc_opt_new();
  v18 = [[NSNumber alloc] initWithUnsignedChar:v17];
  [v13 setObject:v18 forKeyedSubscript:@"CHVersion"];

  v19 = [[NSNumber alloc] initWithUnsignedShort:bswap32(*(bytes + 1)) >> 16];
  [v13 setObject:v19 forKeyedSubscript:@"CHCfgBytes"];

  if ([dataCopy length] > 8)
  {
    if ([dataCopy length] >= 0xA)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v38 = NFLogGetLogger();
      if (v38)
      {
        v39 = v38;
        v40 = object_getClass(self);
        v41 = class_isMetaClass(v40);
        v42 = object_getClassName(self);
        v74 = sel_getName(a2);
        v43 = 45;
        if (v41)
        {
          v43 = 43;
        }

        v39(4, "%c[%{public}s %{public}s]:%i Truncates excess to expected data length", v43, v42, v74, 919);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v44 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = object_getClass(self);
        if (class_isMetaClass(v45))
        {
          v46 = 43;
        }

        else
        {
          v46 = 45;
        }

        *buf = 67109890;
        v78 = v46;
        v79 = 2082;
        v80 = object_getClassName(self);
        v81 = 2082;
        v82 = sel_getName(a2);
        v83 = 1024;
        v84 = 919;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Truncates excess to expected data length", buf, 0x22u);
      }
    }

    v47 = [[NSData alloc] initWithBytes:bytes + 3 length:6];
    if (v47)
    {
      v26 = v47;
      if (v17 != 1)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v48 = NFLogGetLogger();
        if (v48)
        {
          v49 = v48;
          v50 = object_getClass(self);
          v51 = class_isMetaClass(v50);
          v70 = object_getClassName(self);
          v75 = sel_getName(a2);
          v52 = 45;
          if (v51)
          {
            v52 = 43;
          }

          v49(4, "%c[%{public}s %{public}s]:%i Assume random in detected version %{public}d", v52, v70, v75, 931, v17);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v53 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
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
          *buf = 67110146;
          v78 = v55;
          v79 = 2082;
          v80 = v56;
          v81 = 2082;
          v82 = v57;
          v83 = 1024;
          v84 = 931;
          v85 = 1026;
          v86 = v17;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Assume random in detected version %{public}d", buf, 0x28u);
        }
      }

      [v13 setObject:v26 forKeyedSubscript:@"CHRemoteRandom"];
      v37 = v13;
      goto LABEL_68;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v58 = NFLogGetLogger();
    if (v58)
    {
      v59 = v58;
      v60 = object_getClass(self);
      v61 = class_isMetaClass(v60);
      v62 = object_getClassName(self);
      v76 = sel_getName(a2);
      v63 = 45;
      if (v61)
      {
        v63 = 43;
      }

      v59(3, "%c[%{public}s %{public}s]:%i out of resource", v63, v62, v76, 924);
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
      *buf = 67109890;
      v78 = v66;
      v79 = 2082;
      v80 = v67;
      v81 = 2082;
      v82 = v68;
      v83 = 1024;
      v84 = 924;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i out of resource", buf, 0x22u);
    }

    v26 = 0;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v21 = v20;
      v22 = object_getClass(self);
      v23 = class_isMetaClass(v22);
      v24 = object_getClassName(self);
      v72 = sel_getName(a2);
      v25 = 45;
      if (v23)
      {
        v25 = 43;
      }

      v21(6, "%c[%{public}s %{public}s]:%i Missing random", v25, v24, v72, 913);
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

      *buf = 67109890;
      v78 = v28;
      v79 = 2082;
      v80 = object_getClassName(self);
      v81 = 2082;
      v82 = sel_getName(a2);
      v83 = 1024;
      v84 = 913;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Missing random", buf, 0x22u);
    }
  }

  v37 = 0;
LABEL_68:

LABEL_69:

  return v37;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NFFieldNotificationECP2_0 alloc];
  notificationType = [(NFFieldNotification *)self notificationType];
  rfTechnology = [(NFFieldNotification *)self rfTechnology];
  typeFSystemCode = [(NFFieldNotification *)self typeFSystemCode];
  creationDate = [(NFFieldNotification *)self creationDate];
  cachedBeforeRFReset = [(NFFieldNotification *)self cachedBeforeRFReset];
  LOBYTE(v15) = self->_ignoreRFTechOnIsEqual;
  LODWORD(v14) = self->_pairingMode;
  LOBYTE(v13) = self->_terminalSubType;
  LODWORD(v12) = self->_terminalMode;
  v10 = [(NFFieldNotificationECP2_0 *)v4 initWithNotificationType:notificationType rfTechnology:rfTechnology typeFSystemCode:typeFSystemCode creationDate:creationDate cachedBeforeRFReset:cachedBeforeRFReset odaRequired:self->_odaRequired terminalMode:v12 terminalType:self->_terminalType terminalSubType:v13 tciArray:self->_tciArray openLoopSchemeBitfield:self->_openLoopSchemeBitfield homeKitSchemeDataPayload:self->_homeKitSchemeDataPayload readerIdentifier:self->_readerIdentifier pairingMode:v14 terminalTypeData:self->_terminalTypeData ignoreRFTechOnIsEqual:v15 userInfo:self->_userInfo];

  return v10;
}

@end