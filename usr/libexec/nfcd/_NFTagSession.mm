@interface _NFTagSession
+ (id)validateEntitlements:(id)a3;
- (BOOL)willStartSession;
- (unsigned)_hceComplete;
- (void)_handleOneAPDU:(id)a3;
- (void)_printHceCurrentState;
- (void)cleanup;
- (void)didEndSession:(id)a3;
- (void)didStartSession:(id)a3;
- (void)enableWrite:(BOOL)a3 completion:(id)a4;
- (void)endSession:(id)a3;
- (void)getTagContentWithCompletion:(id)a3;
- (void)handleHostCardReaderDetected:(id)a3;
- (void)handleNdefTagRead;
- (void)prioritizeSessionWithCompletion:(id)a3;
- (void)setTagContent:(id)a3 completion:(id)a4;
- (void)startEmulation:(id)a3 withMessageType:(unsigned int)a4 completion:(id)a5;
- (void)stopEmulationWithCompletion:(id)a3;
@end

@implementation _NFTagSession

+ (id)validateEntitlements:(id)a3
{
  if ([a3 readerInternalAccess])
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

      v7(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring internal reader access", v11, ClassName, Name, 30);
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
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring internal reader access", buf, 0x22u);
    }

    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v23[0] = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Not entitled"];
    v24[0] = v17;
    v24[1] = &off_1003313C8;
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

- (void)cleanup
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

    v5(6, "%c[%{public}s %{public}s]:%i Terminating session, flagging reads as interrupted.", v9, ClassName, Name, 52);
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
    v22 = 52;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Terminating session, flagging reads as interrupted.", buf, 0x22u);
  }

  v14.receiver = self;
  v14.super_class = _NFTagSession;
  [(_NFSession *)&v14 cleanup];
}

- (BOOL)willStartSession
{
  sub_10026449C();
  v4.receiver = self;
  v4.super_class = _NFTagSession;
  return [(_NFSession *)&v4 willStartSession];
}

- (void)endSession:(id)a3
{
  v3.receiver = self;
  v3.super_class = _NFTagSession;
  [(_NFXPCSession *)&v3 endSession:a3];
}

- (void)prioritizeSessionWithCompletion:(id)a3
{
  v3.receiver = self;
  v3.super_class = _NFTagSession;
  [(_NFXPCSession *)&v3 prioritizeSessionWithCompletion:a3];
}

- (void)didStartSession:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = _NFTagSession;
  [(_NFXPCSession *)&v16 didStartSession:v5];
  if (v5)
  {
    v6 = [(_NFXPCSession *)self remoteObject];
    [v6 didStartSession:v5];
  }

  else
  {
    v7 = objc_alloc_init(NFHceTagReadCALogger);
    tagReadCALogger = self->_tagReadCALogger;
    self->_tagReadCALogger = v7;

    sub_10000AA28(self->_tagReadCALogger);
    v9 = [(_NFXPCSession *)self remoteObject];
    [v9 didStartSession:0];

    v10 = sub_1000A7AB0(&self->_tagAgent->super.isa);

    if (v10)
    {
      objc_initWeak(&location, self);
      v14.receiver = self;
      v14.super_class = _NFTagSession;
      v11 = [(_NFSession *)&v14 workQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000D95D8;
      v12[3] = &unk_1003161B0;
      objc_copyWeak(v13, &location);
      v12[4] = self;
      v13[1] = a2;
      dispatch_async(v11, v12);

      objc_destroyWeak(v13);
      objc_destroyWeak(&location);
    }
  }
}

- (void)didEndSession:(id)a3
{
  v5 = a3;
  if (![(_NFSession *)self didEnd])
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v12 = [(_NFXPCSession *)self clientName];
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i NFC emulation mode terminated: %@", v13, ClassName, Name, 108, v12);
    }

    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
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
      v19 = [(_NFXPCSession *)self clientName];
      *buf = 67110146;
      v23 = v16;
      v24 = 2082;
      v25 = v17;
      v26 = 2082;
      v27 = v18;
      v28 = 1024;
      v29 = 108;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC emulation mode terminated: %@", buf, 0x2Cu);
    }

    sub_10000A778(self->_tagReadCALogger);
    sub_10000AA98(self->_tagReadCALogger);
    tagReadCALogger = self->_tagReadCALogger;
    self->_tagReadCALogger = 0;
  }

  v21.receiver = self;
  v21.super_class = _NFTagSession;
  [(_NFSession *)&v21 didEndSession:v5];
}

- (void)handleHostCardReaderDetected:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v5 = NFSharedSignpostLog();
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_READ_START", &unk_1002E8B7A, v6, 2u);
  }

  sub_10000A684(self->_tagReadCALogger);
  [(_NFTagSession *)self _handleOneAPDU:v4];
}

- (void)handleNdefTagRead
{
  kdebug_trace();
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_READ_END", &unk_1002E8B7A, buf, 2u);
  }

  tagAgent = self->_tagAgent;
  if (tagAgent && tagAgent->_tagRead)
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

      v7(6, "%c[%{public}s %{public}s]:%i Tag is read", v11, ClassName, Name, 133);
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

      v15 = object_getClassName(self);
      v16 = sel_getName(a2);
      *buf = 67109890;
      v20 = v14;
      v21 = 2082;
      v22 = v15;
      v23 = 2082;
      v24 = v16;
      v25 = 1024;
      v26 = 133;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Tag is read", buf, 0x22u);
    }

    v17 = [(_NFXPCSession *)self remoteObject];
    [v17 didTagStateChange:2];
  }
}

- (unsigned)_hceComplete
{
  kdebug_trace();
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_HCE_COMPLETE", &unk_1002E8B7A, buf, 2u);
  }

  tagAgent = self->_tagAgent;
  if (!tagAgent)
  {
    return 0;
  }

  if (!tagAgent->_tagWritten)
  {
    v18 = 0;
LABEL_17:
    if (tagAgent->_lastStatus == -28672)
    {
      goto LABEL_28;
    }

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

      v20(6, "%c[%{public}s %{public}s]:%i Tag had error", v24, ClassName, Name, 151);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
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
      *buf = 67109890;
      v36 = v27;
      v37 = 2082;
      v38 = v28;
      v39 = 2082;
      v40 = v29;
      v41 = 1024;
      v42 = 151;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Tag had error", buf, 0x22u);
    }

    v30 = [(_NFXPCSession *)self remoteObject];
    v18 = 5;
    [v30 didTagStateChange:5];

    tagAgent = self->_tagAgent;
    if (tagAgent)
    {
LABEL_28:
      if (tagAgent->_isSelected)
      {
        v31 = [(_NFXPCSession *)self remoteObject];
        v18 = 4;
        [v31 didTagStateChange:4];
      }
    }

    return v18;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v6 = NFLogGetLogger();
  if (v6)
  {
    v7 = v6;
    v8 = object_getClass(self);
    v9 = class_isMetaClass(v8);
    v10 = object_getClassName(self);
    v33 = sel_getName(a2);
    v11 = 45;
    if (v9)
    {
      v11 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i Tag was written", v11, v10, v33, 145);
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

    v15 = object_getClassName(self);
    v16 = sel_getName(a2);
    *buf = 67109890;
    v36 = v14;
    v37 = 2082;
    v38 = v15;
    v39 = 2082;
    v40 = v16;
    v41 = 1024;
    v42 = 145;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Tag was written", buf, 0x22u);
  }

  v17 = [(_NFXPCSession *)self remoteObject];
  v18 = 3;
  [v17 didTagStateChange:3];

  tagAgent = self->_tagAgent;
  if (tagAgent)
  {
    goto LABEL_17;
  }

  return v18;
}

- (void)_printHceCurrentState
{
  tagAgent = self->_tagAgent;
  if (tagAgent)
  {
    if (!tagAgent->_tagWritten)
    {
      goto LABEL_37;
    }

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

      v6(6, "%c[%{public}s %{public}s]:%i Tag is written", v10, ClassName, Name, 167);
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

      *buf = 67109890;
      v40 = v13;
      v41 = 2082;
      v42 = object_getClassName(self);
      v43 = 2082;
      v44 = sel_getName(a2);
      v45 = 1024;
      v46 = 167;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Tag is written", buf, 0x22u);
    }

    tagAgent = self->_tagAgent;
    if (tagAgent)
    {
LABEL_37:
      if (!tagAgent->_tagRead)
      {
        goto LABEL_24;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFLogGetLogger();
      if (v14)
      {
        v15 = v14;
        v16 = object_getClass(self);
        v17 = class_isMetaClass(v16);
        v18 = object_getClassName(self);
        v37 = sel_getName(a2);
        v19 = 45;
        if (v17)
        {
          v19 = 43;
        }

        v15(6, "%c[%{public}s %{public}s]:%i Tag is read", v19, v18, v37, 175);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v20 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = object_getClass(self);
        if (class_isMetaClass(v21))
        {
          v22 = 43;
        }

        else
        {
          v22 = 45;
        }

        v23 = object_getClassName(self);
        v24 = sel_getName(a2);
        *buf = 67109890;
        v40 = v22;
        v41 = 2082;
        v42 = v23;
        v43 = 2082;
        v44 = v24;
        v45 = 1024;
        v46 = 175;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Tag is read", buf, 0x22u);
      }

      tagAgent = self->_tagAgent;
      if (tagAgent)
      {
LABEL_24:
        if (tagAgent->_lastStatus != -28672)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v25 = NFLogGetLogger();
          if (v25)
          {
            v26 = v25;
            v27 = object_getClass(self);
            v28 = class_isMetaClass(v27);
            v29 = object_getClassName(self);
            v38 = sel_getName(a2);
            v30 = 45;
            if (v28)
            {
              v30 = 43;
            }

            v26(6, "%c[%{public}s %{public}s]:%i Tag error", v30, v29, v38, 179);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v31 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = object_getClass(self);
            if (class_isMetaClass(v32))
            {
              v33 = 43;
            }

            else
            {
              v33 = 45;
            }

            v34 = object_getClassName(self);
            v35 = sel_getName(a2);
            *buf = 67109890;
            v40 = v33;
            v41 = 2082;
            v42 = v34;
            v43 = 2082;
            v44 = v35;
            v45 = 1024;
            v46 = 179;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Tag error", buf, 0x22u);
          }
        }
      }
    }
  }
}

- (void)_handleOneAPDU:(id)a3
{
  v5 = a3;
  if ([(_NFSession *)self didEnd])
  {
    kdebug_trace();
    v6 = NFSharedSignpostLog();
    if (os_signpost_enabled(v6))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_READ_END", &unk_1002E8B7A, &buf, 2u);
    }

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

      v8(6, "%c[%{public}s %{public}s]:%i Session terminated while reading. Exiting.", v12, ClassName, Name, 194);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
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

      v16 = object_getClassName(self);
      v17 = sel_getName(a2);
      LODWORD(buf) = 67109890;
      HIDWORD(buf) = v15;
      v134 = 2082;
      v135 = v16;
      v136 = 2082;
      v137 = v17;
      v138 = 1024;
      v139 = 194;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Session terminated while reading. Exiting.", &buf, 0x22u);
    }

    goto LABEL_88;
  }

  v132 = 0;
  v18 = [v5 readApduAndReturnError:&v132];
  v19 = v132;
  v13 = v19;
  if (!v18)
  {
    if ([v19 code]== 62)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v79 = NFLogGetLogger();
      if (v79)
      {
        v80 = v79;
        v81 = object_getClass(self);
        v82 = class_isMetaClass(v81);
        v83 = object_getClassName(self);
        v114 = sel_getName(a2);
        v84 = 45;
        if (v82)
        {
          v84 = 43;
        }

        v80(6, "%c[%{public}s %{public}s]:%i Tag halted", v84, v83, v114, 201);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v85 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        v86 = object_getClass(self);
        if (class_isMetaClass(v86))
        {
          v87 = 43;
        }

        else
        {
          v87 = 45;
        }

        v88 = object_getClassName(self);
        v89 = sel_getName(a2);
        LODWORD(buf) = 67109890;
        HIDWORD(buf) = v87;
        v134 = 2082;
        v135 = v88;
        v136 = 2082;
        v137 = v89;
        v138 = 1024;
        v139 = 201;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Tag halted", &buf, 0x22u);
      }

      v90 = [(_NFXPCSession *)self remoteObject];
      [v90 didTagStateChange:6];

      goto LABEL_87;
    }

    v91 = [v13 code];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v92 = NFLogGetLogger();
    v93 = v92;
    if (v91 == 28)
    {
      if (v92)
      {
        v94 = object_getClass(self);
        v95 = class_isMetaClass(v94);
        v96 = object_getClassName(self);
        v115 = sel_getName(a2);
        v97 = 45;
        if (v95)
        {
          v97 = 43;
        }

        v93(6, "%c[%{public}s %{public}s]:%i Connection lost", v97, v96, v115, 205);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v98 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_86;
      }

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
      LODWORD(buf) = 67109890;
      HIDWORD(buf) = v100;
      v134 = 2082;
      v135 = v101;
      v136 = 2082;
      v137 = v102;
      v138 = 1024;
      v139 = 205;
      v103 = "%c[%{public}s %{public}s]:%i Connection lost";
    }

    else
    {
      if (v92)
      {
        v104 = object_getClass(self);
        v105 = class_isMetaClass(v104);
        v106 = object_getClassName(self);
        v116 = sel_getName(a2);
        v107 = 45;
        if (v105)
        {
          v107 = 43;
        }

        v93(6, "%c[%{public}s %{public}s]:%i Failed to read from remote device, stopping", v107, v106, v116, 207);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v98 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_86;
      }

      v108 = object_getClass(self);
      if (class_isMetaClass(v108))
      {
        v109 = 43;
      }

      else
      {
        v109 = 45;
      }

      v110 = object_getClassName(self);
      v111 = sel_getName(a2);
      LODWORD(buf) = 67109890;
      HIDWORD(buf) = v109;
      v134 = 2082;
      v135 = v110;
      v136 = 2082;
      v137 = v111;
      v138 = 1024;
      v139 = 207;
      v103 = "%c[%{public}s %{public}s]:%i Failed to read from remote device, stopping";
    }

    _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, v103, &buf, 0x22u);
LABEL_86:

    [(_NFTagSession *)self _hceComplete];
LABEL_87:
    [(NFNdefTagAgent *)self->_tagAgent handleDeselect];
    goto LABEL_88;
  }

  v127 = self;
  v20 = [[NFCommandAPDU alloc] initWithData:v18];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v21 = NFLogGetLogger();
  v22 = v20;
  if (v21)
  {
    v23 = v21;
    v24 = object_getClass(v127);
    v122 = class_isMetaClass(v24);
    v124 = object_getClassName(v127);
    v120 = sel_getName(a2);
    v25 = [v20 clss];
    v26 = [v20 instruction];
    v27 = [v22 p1];
    v28 = [v22 p2];
    v118 = [v22 payloadLength];
    v119 = [v22 lengthExpected];
    v117 = v26;
    v20 = v22;
    v29 = 43;
    if (!v122)
    {
      v29 = 45;
    }

    v23(6, "%c[%{public}s %{public}s]:%i class = %02x ins = %02x  p1 = %d p2 = %d, lc = %u, le = %u", v29, v124, v120, 218, v25, v117, v27, v28, v118, v119);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v30 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = object_getClass(v127);
    if (class_isMetaClass(v31))
    {
      v32 = 43;
    }

    else
    {
      v32 = 45;
    }

    v126 = v32;
    v125 = object_getClassName(v127);
    v121 = sel_getName(a2);
    v123 = [v20 clss];
    v33 = [v20 instruction];
    v34 = v5;
    v35 = [v22 p1];
    v36 = v18;
    v37 = v13;
    v38 = [v22 p2];
    v39 = a2;
    v40 = [v22 payloadLength];
    v41 = [v22 lengthExpected];
    LODWORD(buf) = 67111426;
    HIDWORD(buf) = v126;
    v134 = 2082;
    v135 = v125;
    v136 = 2082;
    v137 = v121;
    v138 = 1024;
    v139 = 218;
    v140 = 1024;
    *v141 = v123;
    *&v141[4] = 1024;
    *&v141[6] = v33;
    v20 = v22;
    v142 = 1024;
    v143 = v35;
    v5 = v34;
    v144 = 1024;
    v145 = v38;
    v13 = v37;
    v18 = v36;
    v146 = 1024;
    v147 = v40;
    a2 = v39;
    v148 = 1024;
    v149 = v41;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i class = %02x ins = %02x  p1 = %d p2 = %d, lc = %u, le = %u", &buf, 0x46u);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v42 = NFLogGetLogger();
  if (v42)
  {
    v43 = v42;
    v44 = object_getClass(v127);
    v45 = class_isMetaClass(v44);
    v46 = object_getClassName(v127);
    v47 = sel_getName(a2);
    v48 = [v20 payload];
    v49 = 45;
    if (v45)
    {
      v49 = 43;
    }

    v43(6, "%c[%{public}s %{public}s]:%i payload: %{public}@", v49, v46, v47, 219, v48);

    v20 = v22;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v50 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = object_getClass(v127);
    if (class_isMetaClass(v51))
    {
      v52 = 43;
    }

    else
    {
      v52 = 45;
    }

    v53 = object_getClassName(v127);
    v54 = sel_getName(a2);
    v55 = [v22 payload];
    LODWORD(buf) = 67110146;
    HIDWORD(buf) = v52;
    v20 = v22;
    v134 = 2082;
    v135 = v53;
    v136 = 2082;
    v137 = v54;
    v138 = 1024;
    v139 = 219;
    v140 = 2114;
    *v141 = v55;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i payload: %{public}@", &buf, 0x2Cu);
  }

  if ([v20 instruction] == 164 && objc_msgSend(v20, "p1") == 4)
  {
    v56 = v127;
    [(NFNdefTagAgent *)v127->_tagAgent handleDeselect];
    v57 = [(NFNdefTagAgent *)v127->_tagAgent handleSelect:v20];
    if (!v57)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v58 = NFLogGetLogger();
      if (v58)
      {
        v59 = v58;
        v60 = object_getClass(v127);
        v61 = class_isMetaClass(v60);
        v62 = object_getClassName(v127);
        v113 = sel_getName(a2);
        v63 = 45;
        if (v61)
        {
          v63 = 43;
        }

        v59(6, "%c[%{public}s %{public}s]:%i Failed to find suitable applet", v63, v62, v113, 225);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v64 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = object_getClass(v127);
        if (class_isMetaClass(v65))
        {
          v66 = 43;
        }

        else
        {
          v66 = 45;
        }

        v67 = object_getClassName(v127);
        v68 = sel_getName(a2);
        LODWORD(buf) = 67109890;
        HIDWORD(buf) = v66;
        v134 = 2082;
        v135 = v67;
        v136 = 2082;
        v137 = v68;
        v138 = 1024;
        v139 = 225;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Failed to find suitable applet", &buf, 0x22u);
      }

      LOWORD(buf) = -32150;
      v69 = [[NSData alloc] initWithBytes:&buf length:2];
      v57 = [NFResponseAPDU responseWithData:v69];
    }

    if ([v57 status] == 36864)
    {
      v70 = [(_NFXPCSession *)v127 remoteObject];
      [v70 didTagStateChange:1];
    }
  }

  else
  {
    v56 = v127;
    v57 = [(NFNdefTagAgent *)v127->_tagAgent handleAPDU:v20];
    [(_NFTagSession *)v127 _printHceCurrentState];
  }

  v71 = [v57 data];
  [v5 sendAPDU:v71];

  tagReadCALogger = v56->_tagReadCALogger;
  v73 = [v18 length];
  if (tagReadCALogger)
  {
    tagReadCALogger->_rawBytesTx += v73;
  }

  v74 = v56->_tagReadCALogger;
  if (v74)
  {
    ++v74->_rawCommandCount;
    v75 = v56->_tagReadCALogger;
  }

  else
  {
    v75 = 0;
  }

  v76 = [v57 data];
  v77 = [v76 length];
  if (v75)
  {
    v75->_rawBytesRx += v77;
    v75->_wasRead = 1;
  }

  objc_initWeak(&buf, v56);
  v131.receiver = v56;
  v131.super_class = _NFTagSession;
  v78 = [(_NFSession *)&v131 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DB3A0;
  block[3] = &unk_1003183C0;
  objc_copyWeak(&v130, &buf);
  v129 = v5;
  dispatch_async(v78, block);

  objc_destroyWeak(&v130);
  objc_destroyWeak(&buf);

  v13 = v18;
LABEL_88:
}

- (void)startEmulation:(id)a3 withMessageType:(unsigned int)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  kdebug_trace();
  v10 = NFSharedSignpostLog();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_START_EMULATION_XPC", &unk_1002E8B7A, buf, 2u);
  }

  v18.receiver = self;
  v18.super_class = _NFTagSession;
  v11 = [(_NFSession *)&v18 workQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000DB570;
  v14[3] = &unk_1003165E8;
  v16 = v9;
  v17 = a2;
  v14[4] = self;
  v15 = v8;
  v12 = v8;
  v13 = v9;
  dispatch_async(v11, v14);
}

- (void)stopEmulationWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFTagSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DBD88;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)setTagContent:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _NFTagSession;
  v9 = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000DC414;
  v12[3] = &unk_1003165E8;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

- (void)getTagContentWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFTagSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DC904;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)enableWrite:(BOOL)a3 completion:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _NFTagSession;
  v8 = [(_NFSession *)&v14 workQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000DCE14;
  v10[3] = &unk_100316FA0;
  v11 = v7;
  v12 = a2;
  v10[4] = self;
  v13 = a3;
  v9 = v7;
  dispatch_async(v8, v10);
}

@end