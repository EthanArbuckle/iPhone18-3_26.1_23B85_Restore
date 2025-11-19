@interface NFDriverWrapper
- (BOOL)enableHeadlessMode:(BOOL)a3 shutdown:(BOOL)a4;
- (id)_getExtendedIdentifier:(id)a3;
- (id)_refreshTagInfo:(id)a3 update:(_NFDriverRemoteTag *)a4;
- (void)_cardRemovalDetect:(id)a3;
- (void)handleReaderBurnoutTimer;
@end

@implementation NFDriverWrapper

- (id)_getExtendedIdentifier:(id)a3
{
  v3 = a3;
  v4 = arc4random();
  v5 = [v3 tagID];
  v6 = [v5 hash];
  v7 = [v3 type];

  v10 = (v7 + v6) | (v4 << 32);
  v8 = [[NSData alloc] initWithBytes:&v10 length:8];

  return v8;
}

- (id)_refreshTagInfo:(id)a3 update:(_NFDriverRemoteTag *)a4
{
  v5 = a3;
  v6 = [[NFTagInternal alloc] initWithNFTag:v5];
  if (a4 && [v5 type] == 3 && a4->var2.var0.var4)
  {
    v7 = [[NSData alloc] initWithBytes:a4->var2.var6.var3 length:a4->var2.var0.var4];
    [v6 _setHistoricalBytes:v7];
  }

  return v6;
}

- (void)_cardRemovalDetect:(id)a3
{
  sub_1001909EC(self, a3);
  while (![(NFReaderRestrictor *)self->_readerPolicy readerModeProtectionActive])
  {
    driver = self->_driver;
    if (NFDriverRemoteDevCheckPresence())
    {
      return;
    }

    usleep(0x3D090u);
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
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v7(4, "%c[%{public}s %{public}s]:%i Burnout occurred", v11, ClassName, Name, 139);
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

    *buf = 67109890;
    v17 = v14;
    v18 = 2082;
    v19 = object_getClassName(self);
    v20 = 2082;
    v21 = sel_getName(a2);
    v22 = 1024;
    v23 = 139;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Burnout occurred", buf, 0x22u);
  }
}

- (BOOL)enableHeadlessMode:(BOOL)a3 shutdown:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    v7 = 1;
    byte_10035DA91 = 1;
  }

  else
  {
    v7 = byte_10035DA91;
  }

  if (v7)
  {
    v8 = !a3;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v13(3, "%c[%{public}s %{public}s]:%i Something trying to turn LPM ON after user shutdown. Denying.", v17, ClassName, Name, 239);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v18 = object_getClass(self);
    if (class_isMetaClass(v18))
    {
      v19 = 43;
    }

    else
    {
      v19 = 45;
    }

    *buf = 67109890;
    v57 = v19;
    v58 = 2082;
    v59 = object_getClassName(self);
    v60 = 2082;
    v61 = sel_getName(a2);
    v62 = 1024;
    v63 = 239;
    v20 = "%c[%{public}s %{public}s]:%i Something trying to turn LPM ON after user shutdown. Denying.";
LABEL_23:
    _os_log_impl(&_mh_execute_header, &v10->super, OS_LOG_TYPE_ERROR, v20, buf, 0x22u);
LABEL_24:
    v11 = 0;
    goto LABEL_48;
  }

  if (a3)
  {
    v9 = sub_1002261A0();

    if (!v9)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v44 = NFLogGetLogger();
      if (v44)
      {
        v45 = v44;
        v46 = object_getClass(self);
        v47 = class_isMetaClass(v46);
        v48 = object_getClassName(self);
        v55 = sel_getName(a2);
        v49 = 45;
        if (v47)
        {
          v49 = 43;
        }

        v45(3, "%c[%{public}s %{public}s]:%i LPEM not enabled", v49, v48, v55, 244);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v50 = object_getClass(self);
      if (class_isMetaClass(v50))
      {
        v51 = 43;
      }

      else
      {
        v51 = 45;
      }

      *buf = 67109890;
      v57 = v51;
      v58 = 2082;
      v59 = object_getClassName(self);
      v60 = 2082;
      v61 = sel_getName(a2);
      v62 = 1024;
      v63 = 244;
      v20 = "%c[%{public}s %{public}s]:%i LPEM not enabled";
      goto LABEL_23;
    }
  }

  v10 = self;
  objc_sync_enter(v10);
  if (v10 && v10->_isClosing)
  {
    v11 = 0;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFLogGetLogger();
    v22 = v21;
    if (v4)
    {
      if (v21)
      {
        v23 = object_getClass(v10);
        v24 = class_isMetaClass(v23);
        v25 = object_getClassName(v10);
        v53 = sel_getName(a2);
        v26 = 45;
        if (v24)
        {
          v26 = 43;
        }

        v22(6, "%c[%{public}s %{public}s]:%i Enabling LPEM", v26, v25, v53, 254);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = object_getClass(v10);
        if (class_isMetaClass(v28))
        {
          v29 = 43;
        }

        else
        {
          v29 = 45;
        }

        *buf = 67109890;
        v57 = v29;
        v58 = 2082;
        v59 = object_getClassName(v10);
        v60 = 2082;
        v61 = sel_getName(a2);
        v62 = 1024;
        v63 = 254;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Enabling LPEM", buf, 0x22u);
      }

      v30 = sub_1002261A0();
      sub_100229480(v30);

      v31 = sub_1002261A0();
      v32 = sub_1002269CC(v31);
    }

    else
    {
      if (v21)
      {
        v33 = object_getClass(v10);
        v34 = class_isMetaClass(v33);
        v35 = object_getClassName(v10);
        v54 = sel_getName(a2);
        v36 = 45;
        if (v34)
        {
          v36 = 43;
        }

        v22(6, "%c[%{public}s %{public}s]:%i Disabling LPEM", v36, v35, v54, 258);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v37 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = object_getClass(v10);
        if (class_isMetaClass(v38))
        {
          v39 = 43;
        }

        else
        {
          v39 = 45;
        }

        *buf = 67109890;
        v57 = v39;
        v58 = 2082;
        v59 = object_getClassName(v10);
        v60 = 2082;
        v61 = sel_getName(a2);
        v62 = 1024;
        v63 = 258;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Disabling LPEM", buf, 0x22u);
      }

      v40 = sub_1002261A0();
      sub_100229630(v40);

      v31 = sub_1002261A0();
      v41 = sub_100226978(v31);
    }

    driver = v10->_driver;
    v11 = NFDriverSetHeadlessMode();
  }

  objc_sync_exit(v10);
LABEL_48:

  return v11;
}

- (void)handleReaderBurnoutTimer
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

    v5(6, "%c[%{public}s %{public}s]:%i Burnout timer elapsed.", v9, ClassName, Name, 2178);
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
    v16 = v12;
    v17 = 2082;
    v18 = object_getClassName(self);
    v19 = 2082;
    v20 = sel_getName(a2);
    v21 = 1024;
    v22 = 2178;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Burnout timer elapsed.", buf, 0x22u);
  }

  if (self)
  {
    delegate = self->_delegate;
  }

  else
  {
    delegate = 0;
  }

  [(NFDriverWrapperDelegate *)delegate handleReaderBurnoutTimer];
}

@end