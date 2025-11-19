@interface NFTNEPHandler
- (void)startTNEPDeviceWithServices:(id)a3 optionalRecords:(id)a4 callback:(id)a5;
- (void)startTNEPReaderWithCallback:(id)a3;
- (void)tnepReaderDeselectWithCallback:(id)a3;
- (void)tnepReaderRestartPollingWithCallback:(id)a3;
- (void)tnepReaderSelectService:(id)a3 callback:(id)a4;
- (void)tnepReaderSend:(id)a3 callback:(id)a4;
- (void)tnepTagDeviceSendNDEFMessage:(id)a3 callback:(id)a4;
@end

@implementation NFTNEPHandler

- (void)startTNEPDeviceWithServices:(id)a3 optionalRecords:(id)a4 callback:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = NFSharedSignpostLog();
  v13 = v12;
  if (self)
  {
    signpostId = self->_signpostId;
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, signpostId, "TNEP_TagDevice_Start", &unk_1002E8B7A, buf, 2u);
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v16 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v20 = 45;
    if (isMetaClass)
    {
      v20 = 43;
    }

    v16(6, "%c[%{public}s %{public}s]:%i ", v20, ClassName, Name, 152);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v21 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = object_getClass(self);
    if (class_isMetaClass(v22))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    v24 = object_getClassName(self);
    v25 = sel_getName(a2);
    *buf = 67109890;
    v33 = v23;
    v34 = 2082;
    v35 = v24;
    v36 = 2082;
    v37 = v25;
    v38 = 1024;
    v39 = 152;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  sub_100265DBC(self, 0);
  v26 = [[NSMutableArray alloc] initWithArray:v11];

  sub_100265DBC(self, v26);
  sub_100265DCC(self, 0);
  v27 = [[NSArray alloc] initWithArray:v10];

  sub_100265DCC(self, v27);
  if (self)
  {
    self = self->_workQueue;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100265DDC;
  block[3] = &unk_100318A90;
  v31 = v9;
  v28 = v9;
  dispatch_async(&self->super, block);
}

- (void)tnepTagDeviceSendNDEFMessage:(id)a3 callback:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self && self->_isServiceSelected)
  {
    if (sub_10026637C(self, v7))
    {
      v9 = 0;
    }

    else
    {
      v21 = [NSError alloc];
      v22 = [NSString stringWithUTF8String:"nfcd"];
      v53 = NSLocalizedDescriptionKey;
      v23 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v54 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v9 = [v21 initWithDomain:v22 code:10 userInfo:v24];

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v26 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v29 = 45;
        if (isMetaClass)
        {
          v29 = 43;
        }

        v26(3, "%c[%{public}s %{public}s]:%i Error sending message=%{public}@", v29, ClassName, Name, 178, v7);
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
        v44 = v32;
        v45 = 2082;
        v46 = object_getClassName(self);
        v47 = 2082;
        v48 = sel_getName(a2);
        v49 = 1024;
        v50 = 178;
        v51 = 2114;
        v52 = v7;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error sending message=%{public}@", buf, 0x2Cu);
      }
    }

    workQueue = self->_workQueue;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1002664B8;
    v38[3] = &unk_10031B170;
    v39 = v9;
    v40 = v8;
    v20 = v9;
    v34 = v8;
    dispatch_async(workQueue, v38);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFLogGetLogger();
    if (v10)
    {
      v11 = v10;
      v12 = object_getClass(self);
      v13 = class_isMetaClass(v12);
      v14 = object_getClassName(self);
      v36 = sel_getName(a2);
      v15 = 45;
      if (v13)
      {
        v15 = 43;
      }

      v11(6, "%c[%{public}s %{public}s]:%i TNEP reader not in selected state", v15, v14, v36, 168);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
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
      v44 = v18;
      v45 = 2082;
      v46 = object_getClassName(self);
      v47 = 2082;
      v48 = sel_getName(a2);
      v49 = 1024;
      v50 = 168;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i TNEP reader not in selected state", buf, 0x22u);
    }

    if (self)
    {
      self = self->_workQueue;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100266264;
    block[3] = &unk_100318A90;
    v42 = v8;
    v19 = v8;
    dispatch_async(&self->super, block);
    v20 = v42;
  }
}

- (void)startTNEPReaderWithCallback:(id)a3
{
  v4 = a3;
  v5 = NFSharedSignpostLog();
  v6 = v5;
  if (self)
  {
    signpostId = self->_signpostId;
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, signpostId, "TNEP_Reader_Start", &unk_1002E8B7A, buf, 2u);
    }

    objc_storeStrong(&self->_tagDeviceServices, 0);
    v8 = objc_opt_new();
    tagDeviceServices = self->_tagDeviceServices;
    self->_tagDeviceServices = v8;

    self = self->_workQueue;
  }

  else
  {
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100266620;
  block[3] = &unk_100318A90;
  v12 = v4;
  v10 = v4;
  dispatch_async(&self->super, block);
}

- (void)tnepReaderSelectService:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  LOBYTE(a4) = [v6 length];
  v8 = v6;
  v36 = a4;
  if (self)
  {
    v9 = self;
    objc_sync_enter(v9);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v10 = v9->_tagDeviceServices;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v45 objects:buf count:16];
    if (v11)
    {
      v35 = v7;
      v12 = *v46;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v46 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v45 + 1) + 8 * i);
          v15 = [v14 uri];
          v16 = [v15 isEqualToString:v8];

          if (v16)
          {
            v11 = v14;
            goto LABEL_12;
          }
        }

        v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v45 objects:buf count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_12:
      v7 = v35;
    }

    objc_sync_exit(v9);
  }

  else
  {
    v11 = 0;
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
    v21 = 45;
    if (isMetaClass)
    {
      v21 = 43;
    }

    v18(6, "%c[%{public}s %{public}s]:%i %{public}@", v21, ClassName, Name, 202, v8);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v22 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
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
    *buf = 67110146;
    *v50 = v24;
    *&v50[4] = 2082;
    *&v50[6] = v25;
    v51 = 2082;
    v52 = v26;
    v53 = 1024;
    v54 = 202;
    v55 = 2114;
    v56 = v8;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (v36 && v11)
  {
    v27 = NFSharedSignpostLog();
    v28 = v27;
    if (self)
    {
      signpostId = self->_signpostId;
      if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        *buf = 138412290;
        *v50 = v8;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, signpostId, "TNEP_Reader_Select", "service=%@", buf, 0xCu);
      }
    }

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100266B8C;
    v38[3] = &unk_10031D400;
    v38[4] = self;
    v41 = v7;
    v42 = a2;
    v39 = v8;
    v40 = v11;
    v30 = v7;
    sub_100267134(self, v40, 1, v38);

    v31 = v39;
  }

  else
  {
    if (self)
    {
      self = self->_workQueue;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100266A74;
    block[3] = &unk_100318A90;
    v44 = v7;
    v32 = v7;
    dispatch_async(&self->super, block);
    v31 = v44;
  }
}

- (void)tnepReaderDeselectWithCallback:(id)a3
{
  v5 = a3;
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

    v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 249);
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
    v24 = v14;
    v25 = 2082;
    v26 = object_getClassName(self);
    v27 = 2082;
    v28 = sel_getName(a2);
    v29 = 1024;
    v30 = 249;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v15 = NFSharedSignpostLog();
  v16 = v15;
  if (self)
  {
    signpostId = self->_signpostId;
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, signpostId, "TNEP_Reader_Deselect", &unk_1002E8B7A, buf, 2u);
    }
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100267A5C;
  v20[3] = &unk_1003166B0;
  v21 = v5;
  v22 = a2;
  v20[4] = self;
  v18 = v5;
  sub_100267134(self, 0, 0, v20);
}

- (void)tnepReaderSend:(id)a3 callback:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = NFSharedSignpostLog();
  v10 = v9;
  if (self)
  {
    signpostId = self->_signpostId;
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, signpostId, "TNEP_Reader_Send", &unk_1002E8B7A, buf, 2u);
    }

    readerSelectedService = self->_readerSelectedService;
  }

  else
  {

    readerSelectedService = 0;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100267E4C;
  v15[3] = &unk_10031D428;
  v15[4] = self;
  v16 = v7;
  v17 = v8;
  v18 = a2;
  v13 = v8;
  v14 = v7;
  sub_10026809C(self, v14, readerSelectedService, v15);
}

- (void)tnepReaderRestartPollingWithCallback:(id)a3
{
  v4 = a3;
  sub_1002684E0(self, 0);
  v4[2](v4, 0);
}

@end