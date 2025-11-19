@interface NFFieldNotification
+ (NFFieldNotification)notificationWithDictionary:(id)a3;
+ (id)fieldNotificationFromXPCObject:(id)a3;
- (BOOL)isCHAutoNegotiationField;
- (BOOL)isCHTerminal;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualTerminalInfo:(id)a3;
- (BOOL)isEqualWithoutRFTech:(id)a3;
- (NFFieldNotification)initWithCoder:(id)a3;
- (NFFieldNotification)initWithDictionary:(id)a3;
- (NFFieldNotification)initWithNotificationType:(unint64_t)a3 rfTechnology:(unsigned int)a4 typeFSystemCode:(unsigned __int16)a5 creationDate:(id)a6 cachedBeforeRFReset:(BOOL)a7;
- (id)_creationDateString;
- (id)asXPCObject;
- (id)chRandomData;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)chFieldType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFFieldNotification

- (void)encodeWithCoder:(id)a3
{
  rfTechnology = self->_rfTechnology;
  v5 = a3;
  [v5 encodeInteger:rfTechnology forKey:@"rfTechnology"];
  [v5 encodeInteger:self->_typeFSystemCode forKey:@"typeFSystemCode"];
  [v5 encodeInteger:self->_notificationType forKey:@"notificationType"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v5 encodeBool:self->_cachedBeforeRFReset forKey:@"cachedBeforeRFReset"];
  [v5 encodeInteger:self->_category forKey:@"category"];
}

- (NFFieldNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NFFieldNotification;
  v5 = [(NFFieldNotification *)&v9 init];
  if (v5)
  {
    v5->_rfTechnology = [v4 decodeIntegerForKey:@"rfTechnology"];
    v5->_typeFSystemCode = [v4 decodeIntegerForKey:@"typeFSystemCode"];
    v5->_notificationType = [v4 decodeIntegerForKey:@"notificationType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v6;

    v5->_cachedBeforeRFReset = [v4 decodeBoolForKey:@"cachedBeforeRFReset"];
    v5->_category = [v4 decodeIntegerForKey:@"category"];
  }

  return v5;
}

+ (NFFieldNotification)notificationWithDictionary:(id)a3
{
  v5 = a3;
  if (![v5 count])
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"NFFieldNotification.m" lineNumber:63 description:@"Empty dictionary"];

    v12 = 0;
    goto LABEL_34;
  }

  v6 = [v5 objectForKey:@"ECPData"];
  if ([v6 length] < 3)
  {
    goto LABEL_31;
  }

  v7 = [v6 bytes];
  if (*v7 != 106)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v14 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
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
    v36 = v21;
    v37 = 2082;
    v38 = object_getClassName(a1);
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

  v8 = v7;
  v9 = v7[1];
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
      v25 = object_getClass(a1);
      v26 = class_isMetaClass(v25);
      v27 = object_getClassName(a1);
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

    v29 = object_getClass(a1);
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
    v38 = object_getClassName(a1);
    v39 = 2082;
    v40 = sel_getName(a2);
    v41 = 1024;
    v42 = 85;
    v22 = "%c[%{public}s %{public}s]:%i Unexpected ECP version; initialized to non ECP";
    goto LABEL_29;
  }

  if ([v6 length] == 8 && *v8 == 0x820202C3026ALL)
  {
    v31 = [[NFFieldNotificationECP1_0 alloc] initWithDictionaryForDavenport:v5];
    goto LABEL_33;
  }

  v10 = NFFieldNotificationECP2_0;
LABEL_32:
  v31 = [[v10 alloc] initWithDictionary:v5];
LABEL_33:
  v12 = v31;

LABEL_34:

  return v12;
}

+ (id)fieldNotificationFromXPCObject:(id)a3
{
  v5 = a3;
  if (xpc_get_type(v5) != &_xpc_type_data)
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
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Unexpected parameter: %@", v10, ClassName, Name, 98, v5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

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
    v47 = v13;
    v48 = 2082;
    v49 = object_getClassName(a1);
    v50 = 2082;
    v51 = sel_getName(a2);
    v52 = 1024;
    v53 = 98;
    v54 = 2112;
    v55 = v5;
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
      v34 = object_getClass(a1);
      v35 = class_isMetaClass(v34);
      v41 = object_getClassName(a1);
      v44 = sel_getName(a2);
      v36 = 45;
      if (v35)
      {
        v36 = 43;
      }

      v33(3, "%c[%{public}s %{public}s]:%i Unexpected parameter: %@", v36, v41, v44, 104, v5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v37 = object_getClass(a1);
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
    v49 = object_getClassName(a1);
    v50 = 2082;
    v51 = sel_getName(a2);
    v52 = 1024;
    v53 = 104;
    v54 = 2112;
    v55 = v5;
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
      v23 = object_getClass(a1);
      v24 = class_isMetaClass(v23);
      v25 = object_getClassName(a1);
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
      v28 = object_getClass(a1);
      if (class_isMetaClass(v28))
      {
        v29 = 43;
      }

      else
      {
        v29 = 45;
      }

      v30 = object_getClassName(a1);
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

- (NFFieldNotification)initWithNotificationType:(unint64_t)a3 rfTechnology:(unsigned int)a4 typeFSystemCode:(unsigned __int16)a5 creationDate:(id)a6 cachedBeforeRFReset:(BOOL)a7
{
  v13 = a6;
  v18.receiver = self;
  v18.super_class = NFFieldNotification;
  v14 = [(NFFieldNotification *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_notificationType = a3;
    v14->_rfTechnology = a4;
    v14->_typeFSystemCode = a5;
    objc_storeStrong(&v14->_creationDate, a6);
    v15->_cachedBeforeRFReset = a7;
    v16 = v15;
  }

  return v15;
}

- (NFFieldNotification)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NFFieldNotification;
  v5 = [(NFFieldNotification *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"FieldTechnology"];
    v5->_rfTechnology = [v6 integerValue];

    v7 = [v4 objectForKey:@"SystemCode"];
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
  v9 = [(NFFieldNotification *)self _creationDateString];
  v10 = [v6 initWithFormat:@"<%s: tech=%@ sc=0x%X date=%@ cached=%d>", ClassName, v4, v8, v9, self->_cachedBeforeRFReset];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(NFFieldNotification *)v5 rfTechnology];
      if (v6 == [(NFFieldNotification *)self rfTechnology]&& (v7 = [(NFFieldNotification *)v5 typeFSystemCode], v7 == [(NFFieldNotification *)self typeFSystemCode]))
      {
        v8 = [(NFFieldNotification *)v5 notificationType];
        v9 = v8 == [(NFFieldNotification *)self notificationType];
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

- (BOOL)isEqualWithoutRFTech:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NFFieldNotification *)v4 notificationType];
      v6 = v5 == [(NFFieldNotification *)self notificationType];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)isEqualTerminalInfo:(id)a3
{
  v4 = a3;
  v5 = [(NFFieldNotification *)self notificationType];
  if (v5 != [v4 notificationType])
  {
    goto LABEL_8;
  }

  if ([(NFFieldNotification *)self notificationType]!= 2)
  {
    if ([(NFFieldNotification *)self notificationType]== 3)
    {
      v9 = [(NFFieldNotification *)self terminalType];
      if (v9 == [v4 terminalType])
      {
        v6 = [(NFFieldNotification *)self terminalSubType];
        v7 = [v4 terminalSubType];
        goto LABEL_4;
      }
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v6 = [(NFFieldNotification *)self terminalType];
  v7 = [v4 terminalType];
LABEL_4:
  v8 = v6 == v7;
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

- (id)copyWithZone:(_NSZone *)a3
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

  v3 = self;
  v4 = [(NFFieldNotification *)v3 terminalType]== 5 && [(NFFieldNotification *)v3 terminalSubType]== 0;

  return v4;
}

- (BOOL)isCHAutoNegotiationField
{
  if ([(NFFieldNotification *)self isCHTerminal])
  {
    v3 = self;
    v4 = [(NFFieldNotification *)v3 userInfo];

    if (v4)
    {
      v5 = [(NFFieldNotification *)v3 userInfo];
      v6 = [v5 objectForKeyedSubscript:@"CHCfgBytes"];

      v4 = ([v6 unsignedShortValue] & 1);
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (unint64_t)chFieldType
{
  if ([(NFFieldNotification *)self isCHTerminal])
  {
    v4 = self;
    v5 = [(NFFieldNotification *)v4 userInfo];

    if (!v5)
    {
      v22 = 4;
LABEL_33:

      return v22;
    }

    v6 = [(NFFieldNotification *)v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"CHCfgBytes"];

    if ([v7 unsignedShortValue])
    {
      if ([v7 unsignedShortValue])
      {
        v23 = [(NFFieldNotification *)v4 userInfo];
        v24 = [v23 objectForKey:@"CHRemoteRandom"];

        if (!v24)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v28 = Logger;
            Class = object_getClass(v4);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v4);
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
            v33 = object_getClass(v4);
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
            v42 = object_getClassName(v4);
            v43 = 2082;
            v44 = sel_getName(a2);
            v45 = 1024;
            v46 = 1021;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected state; missing randome value", buf, 0x22u);
          }

          goto LABEL_31;
        }

        v25 = [(NFFieldNotification *)v4 userInfo];
        v26 = [v25 objectForKey:@"CHInitiatorDetected"];

        if (v26)
        {
          v22 = 2;
          goto LABEL_32;
        }

        v36 = [(NFFieldNotification *)v4 userInfo];
        v37 = [v36 objectForKey:@"CHReceiverDetected"];

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
          v10 = object_getClass(v4);
          v11 = class_isMetaClass(v10);
          v12 = object_getClassName(v4);
          v13 = sel_getName(a2);
          v14 = [(NFFieldNotification *)v4 debugDescription];
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
          v17 = object_getClass(v4);
          if (class_isMetaClass(v17))
          {
            v18 = 43;
          }

          else
          {
            v18 = 45;
          }

          v19 = object_getClassName(v4);
          v20 = sel_getName(a2);
          v21 = [(NFFieldNotification *)v4 debugDescription];
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
    v3 = self;
    v4 = [(NFFieldNotification *)v3 userInfo];

    if (v4)
    {
      v5 = [(NFFieldNotification *)v3 userInfo];
      v4 = [v5 objectForKeyedSubscript:@"CHRemoteRandom"];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end