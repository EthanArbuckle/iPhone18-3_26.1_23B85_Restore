@interface NFStepUpController
- (NFStepUpController)initWithQueue:(id)a3 driverWrapper:(id)a4 expressModeManager:(id)a5;
- (id)extractKeyTypeFromExpressPass;
- (void)handleStepUpEvent:(id)a3 transactionType:(unsigned int)a4 forApplet:(id)a5;
- (void)hceReadWithHandle:(id)a3 completion:(id)a4;
- (void)invalidate;
@end

@implementation NFStepUpController

- (NFStepUpController)initWithQueue:(id)a3 driverWrapper:(id)a4 expressModeManager:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v31.receiver = self;
  v31.super_class = NFStepUpController;
  v13 = [(NFStepUpController *)&v31 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_3;
  }

  objc_storeStrong(&v13->_workQueue, a3);
  objc_storeStrong(&v14->_driverWrapper, a4);
  objc_storeWeak(&v14->_expressModeManager, v12);
  v14->_transactionType = 0;
  v15 = objc_opt_new();
  stsHelper = v14->_stsHelper;
  v14->_stsHelper = v15;

  if (!v14->_stsHelper)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v19 = Logger;
      Class = object_getClass(v14);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v14);
      Name = sel_getName(a2);
      v23 = 45;
      if (isMetaClass)
      {
        v23 = 43;
      }

      v19(3, "%c[%{public}s %{public}s]:%i Could not allocate STS helper object", v23, ClassName, Name, 50);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = object_getClass(v14);
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      v27 = object_getClassName(v14);
      v28 = sel_getName(a2);
      *buf = 67109890;
      v33 = v26;
      v34 = 2082;
      v35 = v27;
      v36 = 2082;
      v37 = v28;
      v38 = 1024;
      v39 = 50;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not allocate STS helper object", buf, 0x22u);
    }

    v17 = 0;
  }

  else
  {
LABEL_3:
    v17 = v14;
  }

  return v17;
}

- (void)invalidate
{
  [(STSHelperLibrary *)self->_stsHelper invalidate];
  stsHelper = self->_stsHelper;
  self->_stsHelper = 0;

  applet = self->_applet;
  self->_applet = 0;
}

- (void)handleStepUpEvent:(id)a3 transactionType:(unsigned int)a4 forApplet:(id)a5
{
  v10 = a3;
  v11 = a5;
  v12 = [v10 objectForKeyedSubscript:@"StepUpReaderData"];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v57 = v11;
    objc_storeStrong(&self->_theStepUpEvent, a3);
    self->_transactionType = a4;
    objc_storeStrong(&self->_applet, a5);
    v13 = [v10 objectForKeyedSubscript:@"appletIdentifier"];

    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = [v13 copy];
    }

    else
    {
      v14 = 0;
    }

    v56 = [v10 objectForKeyedSubscript:@"StepUpReaderData"];
    v23 = [v56 objectForKeyedSubscript:@"SharedSecret"];

    if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v60 = [v23 copy];
    }

    else
    {
      v60 = 0;
    }

    v24 = [v10 objectForKeyedSubscript:@"endPointIdentifier"];

    if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v59 = [v24 copy];
    }

    else
    {
      v59 = 0;
    }

    v12 = [v10 objectForKeyedSubscript:@"ProtocolVersion"];

    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v58 = [v12 copy];
    }

    else
    {
      v58 = &off_100332B80;
    }

    v25 = [NSData NF_dataWithHexString:v59];
    v26 = v25;
    if (v60 && v25 && v14)
    {
      v73[0] = @"appletIdentifier";
      v73[1] = STSUAStepupEventKeyEndpointData;
      v74[0] = v14;
      v74[1] = v25;
      v73[2] = STSUAStepupEventKeySharedSecretData;
      v73[3] = @"ProtocolVersion";
      v74[2] = v60;
      v74[3] = v58;
      v27 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:4];
      v28 = [(STSHelperLibrary *)self->_stsHelper signalUnifiedAccessStepUpWithEventDictionary:v27];
      if (v28)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v30 = Logger;
          Class = object_getClass(self);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(self);
          Name = sel_getName(a2);
          v33 = 45;
          if (isMetaClass)
          {
            v33 = 43;
          }

          v30(3, "%c[%{public}s %{public}s]:%i error: %{public}@", v33, ClassName, Name, 129, v28);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v34 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = object_getClass(self);
          if (class_isMetaClass(v35))
          {
            v36 = 43;
          }

          else
          {
            v36 = 45;
          }

          *buf = 67110146;
          v62 = v36;
          v63 = 2082;
          v64 = object_getClassName(self);
          v65 = 2082;
          v66 = sel_getName(a2);
          v67 = 1024;
          v68 = 129;
          v69 = 2114;
          v70 = v28;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i error: %{public}@", buf, 0x2Cu);
        }
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v37 = NFLogGetLogger();
      if (v37)
      {
        v38 = v37;
        v39 = object_getClass(self);
        v40 = class_isMetaClass(v39);
        v41 = object_getClassName(self);
        v42 = sel_getName(a2);
        v43 = @"Missing Step-Up data ";
        if (v60)
        {
          v43 = &stru_10031EA18;
        }

        v44 = @"Missing Endpoint identifier";
        if (v26)
        {
          v44 = &stru_10031EA18;
        }

        v54 = v43;
        v45 = 45;
        if (v40)
        {
          v45 = 43;
        }

        v38(3, "%c[%{public}s %{public}s]:%i Invalid data from Event. %{public}@ %{public}@", v45, v41, v42, 132, v54, v44);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v46 = object_getClass(self);
        if (class_isMetaClass(v46))
        {
          v47 = 43;
        }

        else
        {
          v47 = 45;
        }

        v48 = object_getClassName(self);
        v49 = sel_getName(a2);
        *buf = 67110402;
        v50 = @"Missing Step-Up data ";
        if (v60)
        {
          v50 = &stru_10031EA18;
        }

        v62 = v47;
        v51 = @"Missing Endpoint identifier";
        if (v26)
        {
          v51 = &stru_10031EA18;
        }

        v63 = 2082;
        v64 = v48;
        v65 = 2082;
        v66 = v49;
        v67 = 1024;
        v68 = 132;
        v69 = 2114;
        v70 = v50;
        v71 = 2114;
        v72 = v51;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid data from Event. %{public}@ %{public}@", buf, 0x36u);
      }
    }

    v11 = v57;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v16 = v15;
      v17 = object_getClass(self);
      v18 = class_isMetaClass(v17);
      v19 = object_getClassName(self);
      v52 = sel_getName(a2);
      v20 = 45;
      if (v18)
      {
        v20 = 43;
      }

      v16(3, "%c[%{public}s %{public}s]:%i StepUp event from ATL is of invalid type", v20, v19, v52, 86);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
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

      *buf = 67109890;
      v62 = v22;
      v63 = 2082;
      v64 = object_getClassName(self);
      v65 = 2082;
      v66 = sel_getName(a2);
      v67 = 1024;
      v68 = 86;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i StepUp event from ATL is of invalid type", buf, 0x22u);
    }
  }
}

- (id)extractKeyTypeFromExpressPass
{
  v3 = [NSMutableDictionary dictionaryWithDictionary:self->_theStepUpEvent];
  WeakRetained = objc_loadWeakRetained(&self->_expressModeManager);
  v5 = [(NFApplet *)self->_applet identifier];
  v6 = sub_100032938(WeakRetained, v5);

  v7 = [NSNumber numberWithUnsignedInt:sub_1000A5614(NFUnifiedAccessTransactionCALogger, v6, v3)];
  [v3 setObject:v7 forKeyedSubscript:@"keyType"];

  return v3;
}

- (void)hceReadWithHandle:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_100006ADC;
  v47 = sub_1001862F4;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100006ADC;
  v41 = sub_1001862F4;
  v42 = objc_opt_new();
  v36 = 0;
  v8 = [v6 readApduAndReturnError:&v36];
  v9 = v36;
  theStepUpEvent = self->_theStepUpEvent;
  if (theStepUpEvent)
  {
    v11 = [(NSDictionary *)theStepUpEvent objectForKeyedSubscript:@"appletIdentifier"];

    if (v11)
    {
      v12 = [(NSDictionary *)self->_theStepUpEvent objectForKeyedSubscript:@"appletIdentifier"];
      [v38[5] setObject:v12 forKeyedSubscript:@"appletIdentifier"];
    }
  }

  if (v8 && !v9)
  {
    strcpy(buf, "o");
    v13 = [[NSData alloc] initWithBytes:buf length:2];
    v14 = v13;
    stsHelper = self->_stsHelper;
    if (!stsHelper)
    {
      [v6 sendAPDU:v13];
      [v38[5] setObject:&__kCFBooleanTrue forKeyedSubscript:@"didError"];
      v22 = [NFContactlessPaymentEndEvent alloc];
      v23 = [(NFContactlessPaymentEndEvent *)v22 initWithDictionary:v38[5]];
      v24 = v44[5];
      v44[5] = v23;

      v7[2](v7, v44[5], self->_theStepUpEvent);
      if (self->_theStepUpEvent)
      {
        v25 = [(NFStepUpController *)self extractKeyTypeFromExpressPass];
        sub_1000A3C44(NFUnifiedAccessTransactionCALogger, v25, self->_transactionType, 28416);
        v26 = NFSharedSignpostLog();
        if (os_signpost_enabled(v26))
        {
          *v34 = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AtlEvent", "AtlStepUpEventComplete", v34, 2u);
        }

        v27 = self->_theStepUpEvent;
        self->_theStepUpEvent = 0;
      }

      goto LABEL_15;
    }

    workQueue = self->_workQueue;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001862FC;
    v28[3] = &unk_10031AA10;
    v28[4] = v13;
    v32 = &v37;
    v33 = &v43;
    v29 = v6;
    v30 = self;
    v31 = v7;
    [(STSHelperLibrary *)stsHelper processUnifiedAccessStepupAPDU:v8 callbackQueue:workQueue responseHandler:v28];

    v17 = v29;
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  if ([v9 code] == 62)
  {
    v7[2](v7, 0, 0);
  }

  else
  {
    sub_10021E364(self->_driverWrapper);
    [v38[5] setObject:&__kCFBooleanTrue forKeyedSubscript:@"didError"];
    v18 = [NFContactlessPaymentEndEvent alloc];
    v19 = [(NFContactlessPaymentEndEvent *)v18 initWithDictionary:v38[5]];
    v20 = v44[5];
    v44[5] = v19;

    v7[2](v7, v44[5], self->_theStepUpEvent);
    if (self->_theStepUpEvent)
    {
      v14 = [(NFStepUpController *)self extractKeyTypeFromExpressPass];
      sub_1000A3C44(NFUnifiedAccessTransactionCALogger, v14, self->_transactionType, [v9 code]);
      v21 = NFSharedSignpostLog();
      if (os_signpost_enabled(v21))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AtlEvent", "AtlStepUpEventComplete", buf, 2u);
      }

      v17 = self->_theStepUpEvent;
      self->_theStepUpEvent = 0;
      goto LABEL_14;
    }
  }

LABEL_16:

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);
}

@end