@interface NFExpressModeManager
- (id)appletForIdentifier:(id)a3 filtered:(BOOL)a4 cacheOnly:(BOOL)a5;
- (void)driverExpressModeEntered:(unsigned __int8)a3;
- (void)driverFieldEntered;
- (void)driverFieldExited;
- (void)driverRequestService:(id)a3;
- (void)handleAppletInactivityTimeout:(id)a3 atlData:(id)a4 caData:(id)a5;
- (void)handleFelicaStateEvent:(id)a3 appletAID:(id)a4;
- (void)handleHostCardReaderDetected:(id)a3;
- (void)handleStepUpEvent:(id)a3 forApplet:(id)a4;
- (void)handleTransactionEndEvent:(id)a3 atlData:(id)a4 caData:(id)a5;
- (void)handleTransactionStartEvent:(id)a3 atlData:(id)a4 caData:(id)a5;
@end

@implementation NFExpressModeManager

- (void)driverFieldExited
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_expressModeState == 5)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(5, "%s:%i CLEARING EXPRESS MODE STATE", "[NFExpressModeManager driverFieldExited]", 2402);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v7 = "[NFExpressModeManager driverFieldExited]";
      v8 = 1024;
      v9 = 2402;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%i CLEARING EXPRESS MODE STATE", buf, 0x12u);
    }

    v3->_expressModeState = 0;
    v3->_expressModeType = 0;
  }

  objc_sync_exit(v3);

  [(NFTimer *)v3->_typeFTransactionTimer stopTimer];
  [(NFExpressModeManagerDelegate *)v3->_delegate handleFieldChanged:0];
}

- (void)driverFieldEntered
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005410;
  block[3] = &unk_100315F30;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)driverExpressModeEntered:(unsigned __int8)a3
{
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003C584;
  v4[3] = &unk_100315EB8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(workQueue, v4);
}

- (void)driverRequestService:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003C97C;
  v7[3] = &unk_100315FA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (void)handleHostCardReaderDetected:(id)a3
{
  v5 = a3;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003DA94;
  block[3] = &unk_100315F80;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(workQueue, block);
}

- (id)appletForIdentifier:(id)a3 filtered:(BOOL)a4 cacheOnly:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = +[_NFHardwareManager sharedHardwareManager];
  v10 = [v9 secureElementWrapper];
  v11 = v10;
  v12 = v6 && !self->_factoryTestMode;
  v13 = v12;
  if (v5)
  {
    sub_100258B98(v10, v8, v13, 0);
  }

  else
  {
    sub_100258B60(v10, v8, v13, 0);
  }
  v14 = ;

  return v14;
}

- (void)handleAppletInactivityTimeout:(id)a3 atlData:(id)a4 caData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = self;
  objc_sync_enter(v12);
  if (v12->_expressModeState - 1 > 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v14 = Logger;
      Class = object_getClass(v12);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v12);
      Name = sel_getName(a2);
      v19 = 45;
      if (isMetaClass)
      {
        v19 = 43;
      }

      v14(5, "%c[%{public}s %{public}s]:%i Express mode state is unexpected: %d", v19, ClassName, Name, 2499, v12->_expressModeState);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = object_getClass(v12);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      v23 = object_getClassName(v12);
      v24 = sel_getName(a2);
      expressModeState = v12->_expressModeState;
      *buf = 67110146;
      v30 = v22;
      v31 = 2082;
      v32 = v23;
      v33 = 2082;
      v34 = v24;
      v35 = 1024;
      v36 = 2499;
      v37 = 1024;
      v38 = expressModeState;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Express mode state is unexpected: %d", buf, 0x28u);
    }
  }

  else
  {
    v12->_expressModeState = 3;
  }

  objc_sync_exit(v12);

  v26 = [v9 objectForKeyedSubscript:@"applet"];
  v27 = [v26 identifierAsData];
  [(NSMutableDictionary *)v12->_caTransactionInfo setObject:v27 forKeyedSubscript:@"AID"];

  if (v11)
  {
    v28 = [NSNumber numberWithUnsignedChar:v12->_expressModeType];
    [v11 setObject:v28 forKeyedSubscript:@"expressType"];
  }

  [(NFExpressModeManagerDelegate *)v12->_delegate handleAppletInactivityTimeout:v9 atlData:v10 caData:v11];
}

- (void)handleFelicaStateEvent:(id)a3 appletAID:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = sub_100036644(self, v6);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 identifierAsData];
    [(NSMutableDictionary *)self->_caTransactionInfo setObject:v9 forKeyedSubscript:@"AID"];
  }

  v10 = [v12 objectForKeyedSubscript:@"NFServiceProviderID"];

  if (v10)
  {
    v11 = [v12 objectForKeyedSubscript:@"NFServiceProviderID"];
    [(NSMutableDictionary *)self->_caTransactionInfo setObject:v11 forKeyedSubscript:@"SPID"];
  }

  [(NFExpressModeManagerDelegate *)self->_delegate handleFelicaStateEvent:v12 appletAID:v6];
}

- (void)handleStepUpEvent:(id)a3 forApplet:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = +[_NFHardwareManager sharedHardwareManager];
  v8 = v7;
  if (self && self->_expressModeInProgress && (sub_1000E9EEC(v7) & 1) == 0)
  {
    if (sub_100033654(self))
    {
      v9 = v14;
      v10 = v6;
      workQueue = self->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10003D6D8;
      block[3] = &unk_100315FD0;
      block[4] = self;
      v18 = "_handleStepUpEventInExpressMode:forApplet:";
      v12 = v9;
      v16 = v12;
      v13 = v10;
      v17 = v13;
      dispatch_async(workQueue, block);
    }
  }

  else
  {
    [(NFExpressModeManagerDelegate *)self->_delegate handleStepUpEvent:v14 forApplet:v6];
  }
}

- (void)handleTransactionEndEvent:(id)a3 atlData:(id)a4 caData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [NSNumber numberWithUnsignedChar:self->_expressModeType];
    [v10 setObject:v11 forKeyedSubscript:@"expressType"];
  }

  v12 = [v8 applet];

  if (v12)
  {
    v13 = [v8 applet];
    v14 = [v13 identifierAsData];
    [(NSMutableDictionary *)self->_caTransactionInfo setObject:v14 forKeyedSubscript:@"AID"];
  }

  if (v9)
  {
    v15 = [v9 objectForKeyedSubscript:@"State"];
    v16 = [v15 objectForKeyedSubscript:@"SPRaw"];

    if (v16)
    {
      v17 = [v15 objectForKeyedSubscript:@"SPRaw"];
      [(NSMutableDictionary *)self->_caTransactionInfo setObject:v17 forKeyedSubscript:@"SPID"];
    }

    v18 = [v9 objectForKeyedSubscript:@"ForceExpressExit"];
    if (self->_expressModeState - 6 <= 2)
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

        v20(5, "%c[%{public}s %{public}s]:%i Not firing end event because express mode transaction is already in ended state", v24, ClassName, Name, 2608);
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

        *buf = 67109890;
        v84 = v27;
        v85 = 2082;
        v86 = object_getClassName(self);
        v87 = 2082;
        v88 = sel_getName(a2);
        v89 = 1024;
        v90 = 2608;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Not firing end event because express mode transaction is already in ended state", buf, 0x22u);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFLogGetLogger();
      if (v28)
      {
        v29 = v28;
        v30 = object_getClass(self);
        v31 = class_isMetaClass(v30);
        v75 = object_getClassName(self);
        v77 = sel_getName(a2);
        v32 = 45;
        if (v31)
        {
          v32 = 43;
        }

        v29(5, "%c[%{public}s %{public}s]:%i %{public}@", v32, v75, v77, 2609, v8);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
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
        *buf = 67110146;
        v84 = v35;
        v85 = 2082;
        v86 = v36;
        v87 = 2082;
        v88 = v37;
        v89 = 1024;
        v90 = 2609;
        v91 = 2114;
        v92 = v8;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
      }

      goto LABEL_79;
    }

    if (!self->_expressModeInProgress)
    {
LABEL_77:
      [(NFExpressModeManagerDelegate *)self->_delegate handleTransactionEndEvent:v8 atlData:v9 caData:v10];
      if (self->_expressModeInProgress)
      {
        self->_didPerformExpressTransaction = 1;
      }

LABEL_79:

      if (!self->_expressModeInProgress)
      {
        goto LABEL_91;
      }

      goto LABEL_80;
    }

    if ([v8 didError] && objc_msgSend(v8, "result") == 61444)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v39 = NFLogGetLogger();
      if (v39)
      {
        v40 = v39;
        v41 = object_getClass(self);
        v42 = class_isMetaClass(v41);
        v43 = object_getClassName(self);
        v78 = sel_getName(a2);
        v44 = 45;
        if (v42)
        {
          v44 = 43;
        }

        v40(5, "%c[%{public}s %{public}s]:%i Transaction end incompatible", v44, v43, v78, 2617);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v45 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
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

        *buf = 67109890;
        v84 = v47;
        v85 = 2082;
        v86 = object_getClassName(self);
        v87 = 2082;
        v88 = sel_getName(a2);
        v89 = 1024;
        v90 = 2617;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Transaction end incompatible", buf, 0x22u);
      }

      v48 = 7;
    }

    else
    {
      if ([v8 didError] && objc_msgSend(v8, "result") == 61445)
      {
        v48 = 9;
LABEL_76:
        self->_expressModeState = v48;
        goto LABEL_77;
      }

      v49 = [v8 didError];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFLogGetLogger();
      v51 = v50;
      if (v49)
      {
        if (v50)
        {
          v52 = object_getClass(self);
          v53 = class_isMetaClass(v52);
          v54 = object_getClassName(self);
          v79 = sel_getName(a2);
          v55 = 45;
          if (v53)
          {
            v55 = 43;
          }

          v51(5, "%c[%{public}s %{public}s]:%i Transaction end failure", v55, v54, v79, 2624);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v45 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v56 = object_getClass(self);
          if (class_isMetaClass(v56))
          {
            v57 = 43;
          }

          else
          {
            v57 = 45;
          }

          *buf = 67109890;
          v84 = v57;
          v85 = 2082;
          v86 = object_getClassName(self);
          v87 = 2082;
          v88 = sel_getName(a2);
          v89 = 1024;
          v90 = 2624;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Transaction end failure", buf, 0x22u);
        }

        v48 = 8;
      }

      else
      {
        if (v50)
        {
          v58 = object_getClass(self);
          v59 = class_isMetaClass(v58);
          v60 = object_getClassName(self);
          v80 = sel_getName(a2);
          v61 = 45;
          if (v59)
          {
            v61 = 43;
          }

          v51(5, "%c[%{public}s %{public}s]:%i Transaction ended", v61, v60, v80, 2628);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v45 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v62 = object_getClass(self);
          if (class_isMetaClass(v62))
          {
            v63 = 43;
          }

          else
          {
            v63 = 45;
          }

          *buf = 67109890;
          v84 = v63;
          v85 = 2082;
          v86 = object_getClassName(self);
          v87 = 2082;
          v88 = sel_getName(a2);
          v89 = 1024;
          v90 = 2628;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Transaction ended", buf, 0x22u);
        }

        v48 = 6;
      }
    }

    goto LABEL_76;
  }

  if (self->_expressModeState)
  {
    if ([v8 didError] && objc_msgSend(v8, "result") == 61444)
    {
      v38 = 7;
    }

    else if ([v8 didError])
    {
      v38 = 8;
    }

    else
    {
      v38 = 6;
    }

    self->_expressModeState = v38;
  }

  [(NFExpressModeManagerDelegate *)self->_delegate handleTransactionEndEvent:v8 atlData:0 caData:v10];
  v18 = 0;
  if (self->_expressModeInProgress)
  {
    v18 = 0;
    self->_didPerformExpressTransaction = 1;
LABEL_80:
    if ([v18 BOOLValue])
    {
      usleep(0x30D40u);
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v64 = NFLogGetLogger();
      if (v64)
      {
        v65 = v64;
        v66 = object_getClass(self);
        v67 = class_isMetaClass(v66);
        v68 = object_getClassName(self);
        v81 = sel_getName(a2);
        v69 = 45;
        if (v67)
        {
          v69 = 43;
        }

        v65(6, "%c[%{public}s %{public}s]:%i ATLEndEventForceExpressExit set - exiting express", v69, v68, v81, 2645);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v70 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v71 = object_getClass(self);
        if (class_isMetaClass(v71))
        {
          v72 = 43;
        }

        else
        {
          v72 = 45;
        }

        v73 = object_getClassName(self);
        v74 = sel_getName(a2);
        *buf = 67109890;
        v84 = v72;
        v85 = 2082;
        v86 = v73;
        v87 = 2082;
        v88 = v74;
        v89 = 1024;
        v90 = 2645;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ATLEndEventForceExpressExit set - exiting express", buf, 0x22u);
      }

      sub_10002F314(self, 0);
    }
  }

LABEL_91:
}

- (void)handleTransactionStartEvent:(id)a3 atlData:(id)a4 caData:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  expressModeState = self->_expressModeState;
  if (expressModeState)
  {
    v11 = expressModeState == 5;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    expressModeState = 2;
    self->_expressModeState = 2;
  }

  if ((self->_expressModeType | 4) == 5 && expressModeState == 5)
  {
    [(NFTimer *)self->_typeFTransactionTimer stopTimer];
    [(NFTimer *)self->_typeFTransactionTimer startTimer:0.25];
  }

  v13 = [v17 appletIdentifier];
  v14 = sub_100036644(self, v13);
  activeApplet = self->_activeApplet;
  self->_activeApplet = v14;

  if (v9)
  {
    v16 = [NSNumber numberWithUnsignedChar:self->_expressModeType];
    [v9 setObject:v16 forKeyedSubscript:@"expressType"];
  }

  [(NFExpressModeManagerDelegate *)self->_delegate handleTransactionStartEvent:v17 atlData:v8 caData:v9];
}

@end