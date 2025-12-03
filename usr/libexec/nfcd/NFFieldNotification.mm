@interface NFFieldNotification
+ (NFFieldNotification)notificationWithDictionary:(id)dictionary;
+ (id)fieldNotificationFromXPCObject:(id)object;
- (BOOL)isCHAutoNegotiationField;
- (BOOL)isCHTerminal;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualTerminalInfo:(id)info;
- (BOOL)isEqualWithoutRFTech:(id)tech;
- (NFFieldNotification)initWithCoder:(id)coder;
- (NFFieldNotification)initWithDictionary:(id)dictionary;
- (NFFieldNotification)initWithNotificationType:(unint64_t)type rfTechnology:(unsigned int)technology typeFSystemCode:(unsigned __int16)code creationDate:(id)date cachedBeforeRFReset:(BOOL)reset;
- (id)_creationDateString;
- (id)asXPCObject;
- (id)chRandomData;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)chFieldType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFFieldNotification

- (void)encodeWithCoder:(id)coder
{
  rfTechnology = self->_rfTechnology;
  coderCopy = coder;
  [coderCopy encodeInteger:rfTechnology forKey:@"rfTechnology"];
  [coderCopy encodeInteger:self->_typeFSystemCode forKey:@"typeFSystemCode"];
  [coderCopy encodeInteger:self->_notificationType forKey:@"notificationType"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeBool:self->_cachedBeforeRFReset forKey:@"cachedBeforeRFReset"];
  [coderCopy encodeInteger:self->_category forKey:@"category"];
}

- (NFFieldNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NFFieldNotification;
  v5 = [(NFFieldNotification *)&v9 init];
  if (v5)
  {
    v5->_rfTechnology = [coderCopy decodeIntegerForKey:@"rfTechnology"];
    v5->_typeFSystemCode = [coderCopy decodeIntegerForKey:@"typeFSystemCode"];
    v5->_notificationType = [coderCopy decodeIntegerForKey:@"notificationType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v6;

    v5->_cachedBeforeRFReset = [coderCopy decodeBoolForKey:@"cachedBeforeRFReset"];
    v5->_category = [coderCopy decodeIntegerForKey:@"category"];
  }

  return v5;
}

+ (NFFieldNotification)notificationWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (![dictionaryCopy count])
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NFFieldNotification.m" lineNumber:63 description:@"Empty dictionary"];

    v12 = 0;
    goto LABEL_34;
  }

  v6 = [dictionaryCopy objectForKey:@"ECPData"];
  if ([v6 length] < 3)
  {
    goto LABEL_31;
  }

  bytes = [v6 bytes];
  if (*bytes != 106)
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

      v14(4, "%c[%{public}s %{public}s]:%i Unexpected ECP command; initialized to non ECP", v18, ClassName, Name, 88);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v20 = object_getClass(self);
    if (class_isMetaClass(v20))
    {
      v21 = 43;
    }

    else
    {
      v21 = 45;
    }

    *buf = 67109890;
    v36 = v21;
    v37 = 2082;
    v38 = object_getClassName(self);
    v39 = 2082;
    v40 = sel_getName(a2);
    v41 = 1024;
    v42 = 88;
    v22 = "%c[%{public}s %{public}s]:%i Unexpected ECP command; initialized to non ECP";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v22, buf, 0x22u);
LABEL_30:

LABEL_31:
    v10 = NFFieldNotification;
    goto LABEL_32;
  }

  v8 = bytes;
  v9 = bytes[1];
  if (v9 != 2)
  {
    if (v9 == 1)
    {
      v10 = NFFieldNotificationECP1_0;
      goto LABEL_32;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v24 = v23;
      v25 = object_getClass(self);
      v26 = class_isMetaClass(v25);
      v27 = object_getClassName(self);
      v34 = sel_getName(a2);
      v28 = 45;
      if (v26)
      {
        v28 = 43;
      }

      v24(4, "%c[%{public}s %{public}s]:%i Unexpected ECP version; initialized to non ECP", v28, v27, v34, 85);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v29 = object_getClass(self);
    if (class_isMetaClass(v29))
    {
      v30 = 43;
    }

    else
    {
      v30 = 45;
    }

    *buf = 67109890;
    v36 = v30;
    v37 = 2082;
    v38 = object_getClassName(self);
    v39 = 2082;
    v40 = sel_getName(a2);
    v41 = 1024;
    v42 = 85;
    v22 = "%c[%{public}s %{public}s]:%i Unexpected ECP version; initialized to non ECP";
    goto LABEL_29;
  }

  if ([v6 length] == 8 && *v8 == 0x820202C3026ALL)
  {
    v31 = [[NFFieldNotificationECP1_0 alloc] initWithDictionaryForDavenport:dictionaryCopy];
    goto LABEL_33;
  }

  v10 = NFFieldNotificationECP2_0;
LABEL_32:
  v31 = [[v10 alloc] initWithDictionary:dictionaryCopy];
LABEL_33:
  v12 = v31;

LABEL_34:

  return v12;
}

+ (id)fieldNotificationFromXPCObject:(id)object
{
  objectCopy = object;
  if (xpc_get_type(objectCopy) != &_xpc_type_data)
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
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Unexpected parameter: %@", v10, ClassName, Name, 98, objectCopy);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    *buf = 67110146;
    v47 = v13;
    v48 = 2082;
    v49 = object_getClassName(self);
    v50 = 2082;
    v51 = sel_getName(a2);
    v52 = 1024;
    v53 = 98;
    v54 = 2112;
    v55 = objectCopy;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected parameter: %@", buf, 0x2Cu);
LABEL_12:
    v14 = 0;
    goto LABEL_36;
  }

  v15 = _CFXPCCreateCFObjectFromXPCObject();
  if (!v15)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v32 = NFLogGetLogger();
    if (v32)
    {
      v33 = v32;
      v34 = object_getClass(self);
      v35 = class_isMetaClass(v34);
      v41 = object_getClassName(self);
      v44 = sel_getName(a2);
      v36 = 45;
      if (v35)
      {
        v36 = 43;
      }

      v33(3, "%c[%{public}s %{public}s]:%i Unexpected parameter: %@", v36, v41, v44, 104, objectCopy);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
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

    *buf = 67110146;
    v47 = v38;
    v48 = 2082;
    v49 = object_getClassName(self);
    v50 = 2082;
    v51 = sel_getName(a2);
    v52 = 1024;
    v53 = 104;
    v54 = 2112;
    v55 = objectCopy;
    goto LABEL_11;
  }

  v11 = v15;
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [NSSet setWithObjects:v16, v17, objc_opt_class(), 0];
  v45 = 0;
  v19 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClasses:v18 fromData:v11 error:&v45];
  v20 = v45;
  if (v20)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v22 = v21;
      v23 = object_getClass(self);
      v24 = class_isMetaClass(v23);
      v25 = object_getClassName(self);
      v43 = sel_getName(a2);
      v26 = 45;
      if (v24)
      {
        v26 = 43;
      }

      v22(3, "%c[%{public}s %{public}s]:%i Fail to decode: %@", v26, v25, v43, 119, v20);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
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
      *buf = 67110146;
      v47 = v29;
      v48 = 2082;
      v49 = v30;
      v50 = 2082;
      v51 = v31;
      v52 = 1024;
      v53 = 119;
      v54 = 2112;
      v55 = v20;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Fail to decode: %@", buf, 0x2Cu);
    }

    v14 = 0;
  }

  else
  {
    v14 = v19;
  }

LABEL_36:

  return v14;
}

- (NFFieldNotification)initWithNotificationType:(unint64_t)type rfTechnology:(unsigned int)technology typeFSystemCode:(unsigned __int16)code creationDate:(id)date cachedBeforeRFReset:(BOOL)reset
{
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = NFFieldNotification;
  v14 = [(NFFieldNotification *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_notificationType = type;
    v14->_rfTechnology = technology;
    v14->_typeFSystemCode = code;
    objc_storeStrong(&v14->_creationDate, date);
    v15->_cachedBeforeRFReset = reset;
    v16 = v15;
  }

  return v15;
}

- (NFFieldNotification)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = NFFieldNotification;
  v5 = [(NFFieldNotification *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"FieldTechnology"];
    v5->_rfTechnology = [v6 integerValue];

    v7 = [dictionaryCopy objectForKey:@"SystemCode"];
    v5->_typeFSystemCode = [v7 integerValue];

    v5->_notificationType = 1;
    v8 = +[NSDate now];
    creationDate = v5->_creationDate;
    v5->_creationDate = v8;
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = v3;
  rfTechnology = self->_rfTechnology;
  if (rfTechnology)
  {
    [v3 appendString:{@"A, "}];
    rfTechnology = self->_rfTechnology;
    if ((rfTechnology & 2) == 0)
    {
LABEL_3:
      if ((rfTechnology & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((rfTechnology & 2) == 0)
  {
    goto LABEL_3;
  }

  [v4 appendString:{@"B, "}];
  rfTechnology = self->_rfTechnology;
  if ((rfTechnology & 4) == 0)
  {
LABEL_4:
    if ((rfTechnology & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v4 appendString:{@"F, "}];
  rfTechnology = self->_rfTechnology;
  if ((rfTechnology & 0x10) == 0)
  {
LABEL_5:
    if ((rfTechnology & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  [v4 appendString:{@"V, "}];
  if ((self->_rfTechnology & 8) != 0)
  {
LABEL_6:
    [v4 appendString:{@"ECP, "}];
  }

LABEL_7:
  if (![v4 length])
  {
    [v4 appendString:@"None"];
  }

  v6 = [NSString alloc];
  ClassName = object_getClassName(self);
  v8 = bswap32(self->_typeFSystemCode) >> 16;
  _creationDateString = [(NFFieldNotification *)self _creationDateString];
  v10 = [v6 initWithFormat:@"<%s: tech=%@ sc=0x%X date=%@ cached=%d>", ClassName, v4, v8, _creationDateString, self->_cachedBeforeRFReset];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      rfTechnology = [(NFFieldNotification *)v5 rfTechnology];
      if (rfTechnology == [(NFFieldNotification *)self rfTechnology]&& (v7 = [(NFFieldNotification *)v5 typeFSystemCode], v7 == [(NFFieldNotification *)self typeFSystemCode]))
      {
        notificationType = [(NFFieldNotification *)v5 notificationType];
        v9 = notificationType == [(NFFieldNotification *)self notificationType];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)isEqualWithoutRFTech:(id)tech
{
  techCopy = tech;
  if (techCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      notificationType = [(NFFieldNotification *)techCopy notificationType];
      v6 = notificationType == [(NFFieldNotification *)self notificationType];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)isEqualTerminalInfo:(id)info
{
  infoCopy = info;
  notificationType = [(NFFieldNotification *)self notificationType];
  if (notificationType != [infoCopy notificationType])
  {
    goto LABEL_8;
  }

  if ([(NFFieldNotification *)self notificationType]!= 2)
  {
    if ([(NFFieldNotification *)self notificationType]== 3)
    {
      terminalType = [(NFFieldNotification *)self terminalType];
      if (terminalType == [infoCopy terminalType])
      {
        terminalSubType = [(NFFieldNotification *)self terminalSubType];
        terminalSubType2 = [infoCopy terminalSubType];
        goto LABEL_4;
      }
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  terminalSubType = [(NFFieldNotification *)self terminalType];
  terminalSubType2 = [infoCopy terminalType];
LABEL_4:
  v8 = terminalSubType == terminalSubType2;
LABEL_9:

  return v8;
}

- (id)asXPCObject
{
  v20 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:&v20];
  v5 = v20;
  if (v5)
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
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Failed to encode: %@", v10, ClassName, Name, 233, v5);
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

      v14 = object_getClassName(self);
      v15 = sel_getName(a2);
      *buf = 67110146;
      v22 = v13;
      v23 = 2082;
      v24 = v14;
      v25 = 2082;
      v26 = v15;
      v27 = 1024;
      v28 = 233;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to encode: %@", buf, 0x2Cu);
    }

    v16 = 0;
  }

  else
  {
    v16 = v4;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NFFieldNotification alloc];
  rfTechnology = self->_rfTechnology;
  typeFSystemCode = self->_typeFSystemCode;
  notificationType = self->_notificationType;
  creationDate = self->_creationDate;
  cachedBeforeRFReset = self->_cachedBeforeRFReset;

  return [(NFFieldNotification *)v4 initWithNotificationType:notificationType rfTechnology:rfTechnology typeFSystemCode:typeFSystemCode creationDate:creationDate cachedBeforeRFReset:cachedBeforeRFReset];
}

- (id)_creationDateString
{
  v3 = objc_opt_new();
  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSS"];
  v4 = [v3 stringFromDate:self->_creationDate];

  return v4;
}

- (BOOL)isCHTerminal
{
  if ([(NFFieldNotification *)self notificationType]!= 3)
  {
    return 0;
  }

  selfCopy = self;
  v4 = [(NFFieldNotification *)selfCopy terminalType]== 5 && [(NFFieldNotification *)selfCopy terminalSubType]== 0;

  return v4;
}

- (BOOL)isCHAutoNegotiationField
{
  if ([(NFFieldNotification *)self isCHTerminal])
  {
    selfCopy = self;
    userInfo = [(NFFieldNotification *)selfCopy userInfo];

    if (userInfo)
    {
      userInfo2 = [(NFFieldNotification *)selfCopy userInfo];
      v6 = [userInfo2 objectForKeyedSubscript:@"CHCfgBytes"];

      userInfo = ([v6 unsignedShortValue] & 1);
    }
  }

  else
  {
    LOBYTE(userInfo) = 0;
  }

  return userInfo;
}

- (unint64_t)chFieldType
{
  if ([(NFFieldNotification *)self isCHTerminal])
  {
    selfCopy = self;
    userInfo = [(NFFieldNotification *)selfCopy userInfo];

    if (!userInfo)
    {
      v22 = 4;
LABEL_33:

      return v22;
    }

    userInfo2 = [(NFFieldNotification *)selfCopy userInfo];
    v7 = [userInfo2 objectForKeyedSubscript:@"CHCfgBytes"];

    if ([v7 unsignedShortValue])
    {
      if ([v7 unsignedShortValue])
      {
        userInfo3 = [(NFFieldNotification *)selfCopy userInfo];
        v24 = [userInfo3 objectForKey:@"CHRemoteRandom"];

        if (!v24)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v28 = Logger;
            Class = object_getClass(selfCopy);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(selfCopy);
            Name = sel_getName(a2);
            v32 = 45;
            if (isMetaClass)
            {
              v32 = 43;
            }

            v28(4, "%c[%{public}s %{public}s]:%i Unexpected state; missing randome value", v32, ClassName, Name, 1021);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v16 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v33 = object_getClass(selfCopy);
            if (class_isMetaClass(v33))
            {
              v34 = 43;
            }

            else
            {
              v34 = 45;
            }

            *buf = 67109890;
            v40 = v34;
            v41 = 2082;
            v42 = object_getClassName(selfCopy);
            v43 = 2082;
            v44 = sel_getName(a2);
            v45 = 1024;
            v46 = 1021;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected state; missing randome value", buf, 0x22u);
          }

          goto LABEL_31;
        }

        userInfo4 = [(NFFieldNotification *)selfCopy userInfo];
        v26 = [userInfo4 objectForKey:@"CHInitiatorDetected"];

        if (v26)
        {
          v22 = 2;
          goto LABEL_32;
        }

        userInfo5 = [(NFFieldNotification *)selfCopy userInfo];
        v37 = [userInfo5 objectForKey:@"CHReceiverDetected"];

        if (v37)
        {
          v22 = 3;
          goto LABEL_32;
        }
      }

      if (([v7 unsignedShortValue] & 2) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v8 = NFLogGetLogger();
        if (v8)
        {
          v9 = v8;
          v10 = object_getClass(selfCopy);
          v11 = class_isMetaClass(v10);
          v12 = object_getClassName(selfCopy);
          v13 = sel_getName(a2);
          v14 = [(NFFieldNotification *)selfCopy debugDescription];
          v15 = 45;
          if (v11)
          {
            v15 = 43;
          }

          v9(4, "%c[%{public}s %{public}s]:%i Unexpected state; %{public}@", v15, v12, v13, 1038, v14);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v16 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = object_getClass(selfCopy);
          if (class_isMetaClass(v17))
          {
            v18 = 43;
          }

          else
          {
            v18 = 45;
          }

          v19 = object_getClassName(selfCopy);
          v20 = sel_getName(a2);
          v21 = [(NFFieldNotification *)selfCopy debugDescription];
          *buf = 67110146;
          v40 = v18;
          v41 = 2082;
          v42 = v19;
          v43 = 2082;
          v44 = v20;
          v45 = 1024;
          v46 = 1038;
          v47 = 2114;
          v48 = v21;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected state; %{public}@", buf, 0x2Cu);
        }

LABEL_31:

        v22 = 1;
        goto LABEL_32;
      }

      v22 = 5;
    }

    else
    {
      v22 = 4;
    }

LABEL_32:

    goto LABEL_33;
  }

  return 1;
}

- (id)chRandomData
{
  if ([(NFFieldNotification *)self isCHTerminal])
  {
    selfCopy = self;
    userInfo = [(NFFieldNotification *)selfCopy userInfo];

    if (userInfo)
    {
      userInfo2 = [(NFFieldNotification *)selfCopy userInfo];
      userInfo = [userInfo2 objectForKeyedSubscript:@"CHRemoteRandom"];
    }
  }

  else
  {
    userInfo = 0;
  }

  return userInfo;
}

@end