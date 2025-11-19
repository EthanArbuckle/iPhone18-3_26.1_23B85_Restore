@interface NFACDriverWrapper
- (BOOL)_restartDiscoveryWithReconfig:(BOOL)a3;
- (BOOL)_writeSMCMultiTagEnabled:(BOOL)a3;
- (BOOL)clearMultiTagPollingState;
- (BOOL)configureMultiTagPolling;
- (BOOL)getControllerInfo:(id *)a3;
- (BOOL)getRFSettings:(id)a3;
- (BOOL)queryTagNDEFCapability:(id)a3 hasNdefAbility:(_NFNDEFTagInfo *)a4 error:(id *)a5;
- (BOOL)restartDiscovery;
- (BOOL)resumeDiscovery;
- (BOOL)sendToHCEDevice:(void *)a3 buffer:(const void *)a4 length:(unsigned int)a5;
- (BOOL)writeLockNdef:(id)a3 error:(id *)a4;
- (NFACDriverWrapper)init;
- (_NFData)readFromHCEDevice:(void *)a3;
- (id)_internalTagFromMultiTag:(_NFDriverRemoteTag *)a3;
- (id)combinePowerCounters:(id)a3 with:(id)a4 overflow:(BOOL)a5;
- (id)enableContinuousWave:(BOOL)a3 withFrequencySweep:(BOOL)a4;
- (id)getDieID;
- (id)getPowerCounters:(id *)a3;
- (id)owners;
- (id)pushSignedRF:(id)a3;
- (id)queryMultiTagState:(BOOL *)a3 error:(id *)a4;
- (id)readNdefDataFromTag:(id)a3 messageSize:(unsigned int)a4 error:(id *)a5;
- (id)setISO15693DataRate:(int)a3 forTag:(id)a4;
- (id)setRouting:(id)a3;
- (id)state;
- (id)transceive:(id)a3 tag:(id)a4 maxTimeout:(double)a5 error:(id *)a6;
- (int)_componentModeToSERouting:(unint64_t)a3;
- (unint64_t)_openDriver:(BOOL *)a3;
- (unint64_t)openSession:(id)a3;
- (unsigned)checkTagPresence:(id)a3;
- (unsigned)connectTag:(id)a3;
- (unsigned)disconnectTag:(id)a3 tagRemovalDetect:(BOOL)a4;
- (unsigned)getTagType:(id)a3;
- (unsigned)queryMifareTagCapability:(id)a3 error:(id *)a4;
- (void)_getDriverConfig:(_NFDriverConfig *)a3;
- (void)_getHandleForTag:(id)a3;
- (void)closeSession:(id)a3;
- (void)configureDriverSettings:(id)a3;
- (void)driverDidDetectHardwareReset:(const char *)a3;
- (void)driverDidDetectHostCardReader:(void *)a3;
- (void)driverDidDetectRemoteTags:(_NFDriverRemoteTag *)a3 count:(unsigned __int8)a4;
- (void)driverPLLUnlock;
- (void)driverRestartDiscovery;
- (void)driverSPMIErrorOccurred:(_NFDriverSPMIErrorRegisters *)a3;
- (void)handleReaderBurnoutTimer;
- (void)setDriverCallbacks;
- (void)setPowerConsumptionMonitor:(id)a3;
@end

@implementation NFACDriverWrapper

- (NFACDriverWrapper)init
{
  v10.receiver = self;
  v10.super_class = NFACDriverWrapper;
  v2 = [(NFACDriverWrapper *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sessionOwners = v2->_sessionOwners;
    v2->_sessionOwners = v3;

    v5 = objc_opt_new();
    remoteTags = v2->_remoteTags;
    v2->_remoteTags = v5;

    v7 = objc_opt_new();
    multiTagState = v2->_multiTagState;
    v2->_multiTagState = v7;
  }

  return v2;
}

- (id)owners
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_sessionOwners copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)configureDriverSettings:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"flags"];
  self->_flags = [v5 unsignedLongValue];

  v6 = [v4 objectForKeyedSubscript:@"pollPeriod"];
  self->_pollingPeriod = [v6 unsignedIntValue];

  v7 = [v4 objectForKeyedSubscript:@"multiTagPollPeriod"];
  self->_multiTagPollingPeriod = [v7 unsignedIntValue];

  v8 = [v4 objectForKeyedSubscript:@"multiTagPollRetries"];
  self->_multiTagPollingRetries = [v8 unsignedIntValue];

  v9 = [v4 objectForKeyedSubscript:@"typeATagDataRate"];
  self->_typeATagDataRate = [v9 unsignedIntValue];

  v10 = [v4 objectForKeyedSubscript:@"ntag5DataRate"];
  self->_ntag5DataRate = [v10 unsignedIntValue];

  v11 = [v4 objectForKeyedSubscript:@"ntag5T1"];

  self->_ntag5T1 = [v11 unsignedIntValue];
}

- (unint64_t)openSession:(id)a3
{
  v5 = a3;
  v64 = 0;
  v6 = self;
  objc_sync_enter(v6);
  sessionCount = v6->_sessionCount;
  if (!sessionCount)
  {
    v6->_isClosing = 0;
    v8 = [(NFACDriverWrapper *)v6 _openDriver:&v64];
    if (v8 != 1)
    {
      v60 = v8;
      v6->_isClosing = 1;
      goto LABEL_44;
    }

    sessionCount = v6->_sessionCount;
  }

  v6->_sessionCount = sessionCount + 1;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v10 = Logger;
    Class = object_getClass(v6);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v6);
    Name = sel_getName(a2);
    v15 = 45;
    if (isMetaClass)
    {
      v15 = 43;
    }

    v10(3, "%c[%{public}s %{public}s]:%i Session count: %lu", v15, ClassName, Name, 154, v6->_sessionCount);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = object_getClass(v6);
    if (class_isMetaClass(v17))
    {
      v18 = 43;
    }

    else
    {
      v18 = 45;
    }

    v19 = object_getClassName(v6);
    v20 = sel_getName(a2);
    v21 = v6->_sessionCount;
    *buf = 67110146;
    v66 = v18;
    v67 = 2082;
    v68 = v19;
    v69 = 2082;
    v70 = v20;
    v71 = 1024;
    v72 = 154;
    v73 = 2048;
    v74 = v21;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session count: %lu", buf, 0x2Cu);
  }

  v22 = [(NSMutableDictionary *)v6->_sessionOwners objectForKey:v5];

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v23 = NFLogGetLogger();
  v24 = v23;
  if (v22)
  {
    if (v23)
    {
      v25 = object_getClass(v6);
      v26 = class_isMetaClass(v25);
      v27 = object_getClassName(v6);
      v28 = sel_getName(a2);
      v29 = [(NSMutableDictionary *)v6->_sessionOwners objectForKeyedSubscript:v5];
      v30 = 45;
      if (v26)
      {
        v30 = 43;
      }

      v24(3, "%c[%{public}s %{public}s]:%i Owner %{public}@ already has a session : %{public}@", v30, v27, v28, 156, v5, v29);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
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
      v36 = [(NSMutableDictionary *)v6->_sessionOwners objectForKeyedSubscript:v5];
      *buf = 67110402;
      v66 = v33;
      v67 = 2082;
      v68 = v34;
      v69 = 2082;
      v70 = v35;
      v71 = 1024;
      v72 = 156;
      v73 = 2114;
      v74 = v5;
      v75 = 2114;
      v76 = v36;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Owner %{public}@ already has a session : %{public}@", buf, 0x36u);
    }

    v37 = [(NSMutableDictionary *)v6->_sessionOwners objectForKeyedSubscript:v5];
    v38 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v37 intValue] + 1);
    [(NSMutableDictionary *)v6->_sessionOwners setObject:v38 forKeyedSubscript:v5];
  }

  else
  {
    if (v23)
    {
      v39 = object_getClass(v6);
      v40 = class_isMetaClass(v39);
      v62 = object_getClassName(v6);
      v63 = sel_getName(a2);
      v41 = 45;
      if (v40)
      {
        v41 = 43;
      }

      v24(6, "%c[%{public}s %{public}s]:%i Opening session on behalf of %{public}@", v41, v62, v63, 160, v5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v42 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = object_getClass(v6);
      if (class_isMetaClass(v43))
      {
        v44 = 43;
      }

      else
      {
        v44 = 45;
      }

      v45 = object_getClassName(v6);
      v46 = sel_getName(a2);
      *buf = 67110146;
      v66 = v44;
      v67 = 2082;
      v68 = v45;
      v69 = 2082;
      v70 = v46;
      v71 = 1024;
      v72 = 160;
      v73 = 2114;
      v74 = v5;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Opening session on behalf of %{public}@", buf, 0x2Cu);
    }

    v37 = [NSNumber numberWithInt:1];
    [(NSMutableDictionary *)v6->_sessionOwners setObject:v37 forKeyedSubscript:v5];
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v47 = NFLogGetLogger();
  if (v47)
  {
    v48 = v47;
    v49 = object_getClass(v6);
    v50 = class_isMetaClass(v49);
    v51 = object_getClassName(v6);
    v52 = sel_getName(a2);
    v53 = 45;
    if (v50)
    {
      v53 = 43;
    }

    v48(6, "%c[%{public}s %{public}s]:%i Session Owners: %{public}@", v53, v51, v52, 163, v6->_sessionOwners);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v54 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v55 = object_getClass(v6);
    if (class_isMetaClass(v55))
    {
      v56 = 43;
    }

    else
    {
      v56 = 45;
    }

    v57 = object_getClassName(v6);
    v58 = sel_getName(a2);
    sessionOwners = v6->_sessionOwners;
    *buf = 67110146;
    v66 = v56;
    v67 = 2082;
    v68 = v57;
    v69 = 2082;
    v70 = v58;
    v71 = 1024;
    v72 = 163;
    v73 = 2114;
    v74 = sessionOwners;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Session Owners: %{public}@", buf, 0x2Cu);
  }

  v60 = 1;
LABEL_44:
  objc_sync_exit(v6);

  return v60;
}

- (void)closeSession:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(NSMutableDictionary *)v6->_sessionOwners objectForKey:v5];
  if ([v7 BOOLValue] && objc_msgSend(v7, "intValue"))
  {
    v8 = [v7 intValue];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v10 = Logger;
    if (v8 == 1)
    {
      if (Logger)
      {
        Class = object_getClass(v6);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v6);
        Name = sel_getName(a2);
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v10(6, "%c[%{public}s %{public}s]:%i Closing session on behalf of %{public}@", v13, ClassName, Name, 183, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = object_getClass(v6);
        if (class_isMetaClass(v15))
        {
          v16 = 43;
        }

        else
        {
          v16 = 45;
        }

        *buf = 67110146;
        v87 = v16;
        v88 = 2082;
        v89 = object_getClassName(v6);
        v90 = 2082;
        v91 = sel_getName(a2);
        v92 = 1024;
        v93 = 183;
        v94 = 2114;
        v95 = v5;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Closing session on behalf of %{public}@", buf, 0x2Cu);
      }

      [(NSMutableDictionary *)v6->_sessionOwners removeObjectForKey:v5];
    }

    else
    {
      if (Logger)
      {
        v45 = object_getClass(v6);
        v46 = class_isMetaClass(v45);
        v83 = object_getClassName(v6);
        v85 = sel_getName(a2);
        v47 = 45;
        if (v46)
        {
          v47 = 43;
        }

        v10(6, "%c[%{public}s %{public}s]:%i Decrementing session on behalf of %{public}@", v47, v83, v85, 186, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v48 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = object_getClass(v6);
        if (class_isMetaClass(v49))
        {
          v50 = 43;
        }

        else
        {
          v50 = 45;
        }

        *buf = 67110146;
        v87 = v50;
        v88 = 2082;
        v89 = object_getClassName(v6);
        v90 = 2082;
        v91 = sel_getName(a2);
        v92 = 1024;
        v93 = 186;
        v94 = 2114;
        v95 = v5;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Decrementing session on behalf of %{public}@", buf, 0x2Cu);
      }

      v51 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 intValue] - 1);
      [(NSMutableDictionary *)v6->_sessionOwners setObject:v51 forKeyedSubscript:v5];
    }

    sessionCount = v6->_sessionCount;
    if (sessionCount > 0 || (+[NSAssertionHandler currentHandler](NSAssertionHandler, "currentHandler"), v81 = objc_claimAutoreleasedReturnValue(), [v81 handleFailureInMethod:a2 object:v6 file:@"NFACDriverWrapper.m" lineNumber:190 description:@"Session over released"], v81, (sessionCount = v6->_sessionCount) != 0))
    {
      v53 = 0;
      v6->_sessionCount = sessionCount - 1;
    }

    else
    {
      v53 = 1;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v54 = NFLogGetLogger();
    if (v54)
    {
      v55 = v54;
      v56 = object_getClass(v6);
      v57 = class_isMetaClass(v56);
      v58 = object_getClassName(v6);
      v59 = sel_getName(a2);
      v60 = 45;
      if (v57)
      {
        v60 = 43;
      }

      v55(3, "%c[%{public}s %{public}s]:%i Session count: %lu", v60, v58, v59, 196, v6->_sessionCount);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v61 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = object_getClass(v6);
      if (class_isMetaClass(v62))
      {
        v63 = 43;
      }

      else
      {
        v63 = 45;
      }

      v64 = object_getClassName(v6);
      v65 = sel_getName(a2);
      v66 = v6->_sessionCount;
      *buf = 67110146;
      v87 = v63;
      v88 = 2082;
      v89 = v64;
      v90 = 2082;
      v91 = v65;
      v92 = 1024;
      v93 = 196;
      v94 = 2048;
      v95 = v66;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session count: %lu", buf, 0x2Cu);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v67 = NFLogGetLogger();
    if (v67)
    {
      v68 = v67;
      v69 = object_getClass(v6);
      v70 = class_isMetaClass(v69);
      v71 = object_getClassName(v6);
      v72 = sel_getName(a2);
      v73 = 45;
      if (v70)
      {
        v73 = 43;
      }

      v68(6, "%c[%{public}s %{public}s]:%i Session Owners: %{public}@", v73, v71, v72, 197, v6->_sessionOwners);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v74 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v75 = object_getClass(v6);
      if (class_isMetaClass(v75))
      {
        v76 = 43;
      }

      else
      {
        v76 = 45;
      }

      v77 = object_getClassName(v6);
      v78 = sel_getName(a2);
      sessionOwners = v6->_sessionOwners;
      *buf = 67110146;
      v87 = v76;
      v88 = 2082;
      v89 = v77;
      v90 = 2082;
      v91 = v78;
      v92 = 1024;
      v93 = 197;
      v94 = 2114;
      v95 = sessionOwners;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Session Owners: %{public}@", buf, 0x2Cu);
    }

    if (v6->_sessionCount)
    {
      v80 = 1;
    }

    else
    {
      v80 = v53;
    }

    if ((v80 & 1) == 0)
    {
      v6->_isClosing = 1;
      [(NFACDriverWrapper *)v6 _closeDriverAndLeaveHWEnabled:0];
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v18 = v17;
      v19 = object_getClass(v6);
      v20 = class_isMetaClass(v19);
      v21 = object_getClassName(v6);
      v22 = sel_getName(a2);
      v23 = [(NSMutableDictionary *)v6->_sessionOwners objectForKeyedSubscript:v5];
      v24 = 45;
      if (v20)
      {
        v24 = 43;
      }

      v18(3, "%c[%{public}s %{public}s]:%i Owner %{public}@ does not have a session : %{public}@", v24, v21, v22, 176, v5, v23);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = object_getClass(v6);
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      v28 = object_getClassName(v6);
      v29 = sel_getName(a2);
      v30 = [(NSMutableDictionary *)v6->_sessionOwners objectForKeyedSubscript:v5];
      *buf = 67110402;
      v87 = v27;
      v88 = 2082;
      v89 = v28;
      v90 = 2082;
      v91 = v29;
      v92 = 1024;
      v93 = 176;
      v94 = 2114;
      v95 = v5;
      v96 = 2114;
      v97 = v30;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Owner %{public}@ does not have a session : %{public}@", buf, 0x36u);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v32 = v31;
      v33 = object_getClass(v6);
      v34 = class_isMetaClass(v33);
      v35 = object_getClassName(v6);
      v36 = sel_getName(a2);
      v37 = 45;
      if (v34)
      {
        v37 = 43;
      }

      v32(3, "%c[%{public}s %{public}s]:%i Session owners : %{public}@", v37, v35, v36, 177, v6->_sessionOwners);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = object_getClass(v6);
      if (class_isMetaClass(v39))
      {
        v40 = 43;
      }

      else
      {
        v40 = 45;
      }

      v41 = object_getClassName(v6);
      v42 = sel_getName(a2);
      v43 = v6->_sessionOwners;
      *buf = 67110146;
      v87 = v40;
      v88 = 2082;
      v89 = v41;
      v90 = 2082;
      v91 = v42;
      v92 = 1024;
      v93 = 177;
      v94 = 2114;
      v95 = v43;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session owners : %{public}@", buf, 0x2Cu);
    }

    if (NFIsInternalBuild())
    {
      v44 = +[NSAssertionHandler currentHandler];
      [v44 handleFailureInMethod:a2 object:v6 file:@"NFACDriverWrapper.m" lineNumber:179 description:@"driver session not held"];
    }
  }

  objc_sync_exit(v6);
}

- (int)_componentModeToSERouting:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (id)setRouting:(id)a3
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  if ([(NFACDriverWrapper *)v7 _isClosed])
  {
    v8 = [NSError alloc];
    v9 = [NSString stringWithUTF8String:"nfcd"];
    v125 = NSLocalizedDescriptionKey;
    v10 = [NSString stringWithUTF8String:"Aborted"];
    v126 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v126 forKeys:&v125 count:1];
    v12 = [v8 initWithDomain:v9 code:3 userInfo:v11];

    objc_sync_exit(v7);
    goto LABEL_91;
  }

  objc_sync_exit(v7);

  sub_10004B810(v6, 0);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v14 = Logger;
    Class = object_getClass(v7);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v7);
    Name = sel_getName(a2);
    v17 = 45;
    if (isMetaClass)
    {
      v17 = 43;
    }

    v14(6, "%c[%{public}s %{public}s]:%i requesting: %{public}@", v17, ClassName, Name, 242, v6);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = object_getClass(v7);
    if (class_isMetaClass(v19))
    {
      v20 = 43;
    }

    else
    {
      v20 = 45;
    }

    *buf = 67110146;
    v116 = v20;
    v117 = 2082;
    v118 = object_getClassName(v7);
    v119 = 2082;
    v120 = sel_getName(a2);
    v121 = 1024;
    v122 = 242;
    v123 = 2114;
    v124 = v6;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i requesting: %{public}@", buf, 0x2Cu);
  }

  if (v6)
  {
    currentRouting = v7->_currentRouting;
    if (currentRouting)
    {
      if (sub_10004B630(currentRouting, v6))
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v22 = NFLogGetLogger();
        if (v22)
        {
          v23 = v22;
          v24 = object_getClass(v7);
          v25 = class_isMetaClass(v24);
          v26 = object_getClassName(v7);
          v105 = sel_getName(a2);
          v27 = 45;
          if (v25)
          {
            v27 = 43;
          }

          v23(6, "%c[%{public}s %{public}s]:%i Routing did not change", v27, v26, v105, 244);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v28 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = object_getClass(v7);
          if (class_isMetaClass(v29))
          {
            v30 = 43;
          }

          else
          {
            v30 = 45;
          }

          v31 = object_getClassName(v7);
          v32 = sel_getName(a2);
          *buf = 67109890;
          v116 = v30;
          v117 = 2082;
          v118 = v31;
          v119 = 2082;
          v120 = v32;
          v121 = 1024;
          v122 = 244;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Routing did not change", buf, 0x22u);
        }

LABEL_79:
        v12 = 0;
        goto LABEL_91;
      }
    }
  }

  if (([v6 wantsReader] & 1) != 0 || objc_msgSend(v6, "wantsMultiTag"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFLogGetLogger();
    if (v33)
    {
      v34 = v33;
      v35 = object_getClass(v7);
      v36 = class_isMetaClass(v35);
      v37 = object_getClassName(v7);
      v38 = sel_getName(a2);
      v110 = [v6 polling];
      v39 = 45;
      if (v36)
      {
        v39 = 43;
      }

      v34(6, "%c[%{public}s %{public}s]:%i Setting pollingMask: 0x%04x", v39, v37, v38, 250, v110);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v40 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = object_getClass(v7);
      if (class_isMetaClass(v41))
      {
        v42 = 43;
      }

      else
      {
        v42 = 45;
      }

      v43 = object_getClassName(v7);
      v44 = sel_getName(a2);
      v45 = [v6 polling];
      *buf = 67110146;
      v116 = v42;
      v117 = 2082;
      v118 = v43;
      v119 = 2082;
      v120 = v44;
      v121 = 1024;
      v122 = 250;
      v123 = 1024;
      LODWORD(v124) = v45;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Setting pollingMask: 0x%04x", buf, 0x28u);
    }

    -[NFACDriverWrapper setPollingConfig:tagNotificationConfig:](v7, "setPollingConfig:tagNotificationConfig:", [v6 polling], objc_msgSend(v6, "tagDiscoveryConfig"));
    v46 = 1;
  }

  else
  {
    v46 = 0;
  }

  if ([v6 wantsMultiTag])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v47 = NFLogGetLogger();
    if (v47)
    {
      v48 = v47;
      v49 = object_getClass(v7);
      v50 = class_isMetaClass(v49);
      v51 = object_getClassName(v7);
      v106 = sel_getName(a2);
      v52 = 45;
      if (v50)
      {
        v52 = 43;
      }

      v48(6, "%c[%{public}s %{public}s]:%i Enabling Multitag routing", v52, v51, v106, 257);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v53 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = object_getClass(v7);
      if (class_isMetaClass(v54))
      {
        v55 = 43;
      }

      else
      {
        v55 = 45;
      }

      v56 = object_getClassName(v7);
      v57 = sel_getName(a2);
      *buf = 67109890;
      v116 = v55;
      v117 = 2082;
      v118 = v56;
      v119 = 2082;
      v120 = v57;
      v121 = 1024;
      v122 = 257;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Enabling Multitag routing", buf, 0x22u);
    }

    v58 = 1;
  }

  else
  {
    v59 = [v6 wantsMultiTag];
    v58 = v59 ^ [(NFRoutingConfig *)v7->_currentRouting wantsMultiTag];
  }

  -[NFACDriverWrapper _componentModeToSERouting:](v7, "_componentModeToSERouting:", [v6 embeddedMode]);
  if ((v46 & 1) == 0)
  {
    -[NFACDriverWrapper _componentModeToSERouting:](v7, "_componentModeToSERouting:", [v6 hostMode]);
  }

  [v6 fdOn];
  [v6 pollingType];
  if (v46 && [(NFReaderRestrictor *)v7->_readerPolicy readerModeProtectionActive])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v60 = NFLogGetLogger();
    if (v60)
    {
      v61 = v60;
      v62 = object_getClass(v7);
      v63 = class_isMetaClass(v62);
      v64 = object_getClassName(v7);
      v107 = sel_getName(a2);
      v65 = 45;
      if (v63)
      {
        v65 = 43;
      }

      v61(4, "%c[%{public}s %{public}s]:%i Denying reader mode, protection active", v65, v64, v107, 277);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v66 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v67 = object_getClass(v7);
      if (class_isMetaClass(v67))
      {
        v68 = 43;
      }

      else
      {
        v68 = 45;
      }

      v69 = object_getClassName(v7);
      v70 = sel_getName(a2);
      *buf = 67109890;
      v116 = v68;
      v117 = 2082;
      v118 = v69;
      v119 = 2082;
      v120 = v70;
      v121 = 1024;
      v122 = 277;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Denying reader mode, protection active", buf, 0x22u);
    }

    v71 = [NSError alloc];
    v72 = [NSString stringWithUTF8String:"nfcd"];
    v113 = NSLocalizedDescriptionKey;
    v73 = [NSString stringWithUTF8String:"Reader mode temporarily disabled"];
    v114 = v73;
    v74 = [NSDictionary dictionaryWithObjects:&v114 forKeys:&v113 count:1];
    v75 = v71;
    v76 = v72;
    v77 = 47;
  }

  else
  {
    if (![v6 pollingType] && -[NFReaderRestrictor readerModeStoppedShouldCooloffRun](v7->_readerPolicy, "readerModeStoppedShouldCooloffRun"))
    {
      [(NFACDriverWrapper *)v7 openSession:@"Cooloff"];
    }

    driver = v7->_driver;
    if (NFDriverSetConfiguration())
    {
      objc_storeStrong(&v7->_currentRouting, a3);
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v79 = NFLogGetLogger();
      if (v79)
      {
        v80 = v79;
        v81 = object_getClass(v7);
        v82 = class_isMetaClass(v81);
        v102 = object_getClassName(v7);
        v108 = sel_getName(a2);
        v83 = 45;
        if (v82)
        {
          v83 = 43;
        }

        v80(6, "%c[%{public}s %{public}s]:%i Operating mode changed to:%{public}@", v83, v102, v108, 291, v6);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v84 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v85 = object_getClass(v7);
        if (class_isMetaClass(v85))
        {
          v86 = 43;
        }

        else
        {
          v86 = 45;
        }

        v87 = object_getClassName(v7);
        v88 = sel_getName(a2);
        *buf = 67110146;
        v116 = v86;
        v117 = 2082;
        v118 = v87;
        v119 = 2082;
        v120 = v88;
        v121 = 1024;
        v122 = 291;
        v123 = 2114;
        v124 = v6;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Operating mode changed to:%{public}@", buf, 0x2Cu);
      }

      if (v58)
      {
        -[NFACDriverWrapper _writeSMCMultiTagEnabled:](v7, "_writeSMCMultiTagEnabled:", [v6 wantsMultiTag]);
      }

      goto LABEL_79;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v89 = NFLogGetLogger();
    if (v89)
    {
      v90 = v89;
      v91 = object_getClass(v7);
      v92 = class_isMetaClass(v91);
      v103 = object_getClassName(v7);
      v109 = sel_getName(a2);
      v93 = 45;
      if (v92)
      {
        v93 = 43;
      }

      v90(3, "%c[%{public}s %{public}s]:%i Failed to set configuration: %{public}@", v93, v103, v109, 286, v6);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v94 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      v95 = object_getClass(v7);
      if (class_isMetaClass(v95))
      {
        v96 = 43;
      }

      else
      {
        v96 = 45;
      }

      v97 = object_getClassName(v7);
      v98 = sel_getName(a2);
      *buf = 67110146;
      v116 = v96;
      v117 = 2082;
      v118 = v97;
      v119 = 2082;
      v120 = v98;
      v121 = 1024;
      v122 = 286;
      v123 = 2114;
      v124 = v6;
      _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set configuration: %{public}@", buf, 0x2Cu);
    }

    v99 = [NSError alloc];
    v72 = [NSString stringWithUTF8String:"nfcd"];
    v111 = NSLocalizedDescriptionKey;
    v73 = [NSString stringWithUTF8String:"Stack Error"];
    v112 = v73;
    v74 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1];
    v75 = v99;
    v76 = v72;
    v77 = 15;
  }

  v12 = [v75 initWithDomain:v76 code:v77 userInfo:v74];

LABEL_91:

  return v12;
}

- (id)state
{
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithBool:self->_isClosing];
  [v3 setObject:v4 forKeyedSubscript:@"isClosing"];

  v5 = objc_opt_new();
  remoteTags = self->_remoteTags;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10006B064;
  v36[3] = &unk_100316CA0;
  v7 = v5;
  v37 = v7;
  [(NSMutableDictionary *)remoteTags enumerateKeysAndObjectsUsingBlock:v36];
  v29 = v7;
  v8 = [[NSDictionary alloc] initWithDictionary:v7];
  v31 = v3;
  [v3 setObject:v8 forKeyedSubscript:@"Remote Tags"];

  v9 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v30 = self;
  v10 = self->_multiTagState;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = [NSMutableDictionary alloc];
        v17 = [v15 asDictionary];
        v18 = [v16 initWithDictionary:v17];

        v19 = [v18 NF_dataForKey:@"identifier"];
        v20 = v19;
        if (v19)
        {
          v21 = [v19 NF_asHexString];
          [v18 setObject:v21 forKeyedSubscript:@"identifier"];
        }

        [v9 addObject:v18];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v12);
  }

  v22 = [[NSArray alloc] initWithArray:v9];
  [v31 setObject:v22 forKeyedSubscript:@"Multi Tags"];

  thermalMonitor = v30->_thermalMonitor;
  if (thermalMonitor)
  {
    v24 = [NSNumber numberWithUnsignedInteger:sub_100005D64(thermalMonitor)];
    [v31 setObject:v24 forKeyedSubscript:@"ThermalState"];
  }

  else
  {
    [v31 setObject:@"N/A" forKeyedSubscript:@"ThermalState"];
  }

  v25 = [[NSDictionary alloc] initWithDictionary:v30->_sessionOwners];
  [v31 setObject:v25 forKeyedSubscript:@"driverSessionOpened"];

  v26 = [NSNumber numberWithInt:v30->_sessionCount];
  [v31 setObject:v26 forKeyedSubscript:@"driverSessionCount"];

  v27 = [[NSDictionary alloc] initWithDictionary:v31];

  return v27;
}

- (void)driverRestartDiscovery
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

    v5(6, "%c[%{public}s %{public}s]:%i Restarting Discovery", v9, ClassName, Name, 371);
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
    v15 = v12;
    v16 = 2082;
    v17 = object_getClassName(self);
    v18 = 2082;
    v19 = sel_getName(a2);
    v20 = 1024;
    v21 = 371;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restarting Discovery", buf, 0x22u);
  }
}

- (void)driverPLLUnlock
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

    v5(6, "%c[%{public}s %{public}s]:%i PLL UNLOCK", v9, ClassName, Name, 376);
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
    v17 = v12;
    v18 = 2082;
    v19 = object_getClassName(self);
    v20 = 2082;
    v21 = sel_getName(a2);
    v22 = 1024;
    v23 = 376;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i PLL UNLOCK", buf, 0x22u);
  }

  v13 = [(NFACDriverWrapper *)self delegate];
  [v13 handlePLLUnlock];

  v14 = sub_10020E4DC();
  sub_10020FC48(v14, @"pllUnlock");
}

- (void)driverDidDetectHardwareReset:(const char *)a3
{
  v4 = [(NFACDriverWrapper *)self delegate];
  [v4 handleHardwareReset:a3];
}

- (void)driverDidDetectHostCardReader:(void *)a3
{
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

    v6(6, "%c[%{public}s %{public}s]:%i Host card reader detected", v10, ClassName, Name, 398);
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
    v16 = v13;
    v17 = 2082;
    v18 = object_getClassName(self);
    v19 = 2082;
    v20 = sel_getName(a2);
    v21 = 1024;
    v22 = 398;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Host card reader detected", buf, 0x22u);
  }
}

- (void)driverSPMIErrorOccurred:(_NFDriverSPMIErrorRegisters *)a3
{
  v3 = [[NSString alloc] initWithFormat:@"Error Status: 0x%04x, Parity: 0x%08X", a3->var1, a3->var0];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "SPMI Error Interrupt received: %@", buf, 0xCu);
  }

  v4 = sub_10020E4DC();
  sub_10020FC48(v4, @"spmiErrorCount");

  if (NFIsInternalBuild())
  {
    v5 = [[NSString alloc] initWithFormat:@"[NFAccessory] SPMI Error Interrupt: %@", v3];
    v6 = objc_opt_new();
    v7 = +[NSFileManager defaultManager];
    v8 = [v7 fileExistsAtPath:@"/dev/nfc.log"];

    if (v8)
    {
      v9 = +[NSFileManager defaultManager];
      [v9 copyItemAtPath:@"/dev/nfc.log" toPath:@"var/tmp/nfc.log" error:0];

      [v6 setObject:@"var/tmp/nfc.log" forKeyedSubscript:@"Attachments"];
    }

    sub_100199700(NFBugCapture, v5, @"Purple Stockholm", 0, @"NFAccessory Failure", &stru_10031EA18, v6);
  }
}

- (void)driverDidDetectRemoteTags:(_NFDriverRemoteTag *)a3 count:(unsigned __int8)a4
{
  v4 = a4;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v9 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v9(6, "%c[%{public}s %{public}s]:%i ", v13, ClassName, Name, 430);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
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

    *buf = 67109890;
    v99 = v16;
    v100 = 2082;
    v101 = object_getClassName(self);
    v102 = 2082;
    v103 = sel_getName(a2);
    v104 = 1024;
    v105 = 430;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v17 = objc_opt_new();
  [(NSMutableDictionary *)self->_remoteTags removeAllObjects];
  if (a3 && v4)
  {
    v18 = 0;
    sel = a2;
    v94 = 96 * v4;
    v95 = v17;
    while (1)
    {
      v19 = objc_alloc_init(NFTagInternal);
      v20 = [[NSData alloc] initWithBytes:a3[v18 / 0x60].var3 length:a3[v18 / 0x60].var4];
      [v19 _setIdentifier:v20];
      var1 = a3[v18 / 0x60].var1;
      if (var1 > 5)
      {
        if (var1 <= 8)
        {
          if (var1 == 6)
          {
            [v19 _setTechnology:1];
            v23 = v19;
            v24 = 11;
          }

          else if (var1 == 7)
          {
            [v19 _setTechnology:1];
            v23 = v19;
            v24 = 12;
          }

          else
          {
            [v19 _setTechnology:0];
            v23 = v19;
            v24 = 10;
          }

          goto LABEL_59;
        }

        switch(var1)
        {
          case 9:
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v44 = NFLogGetLogger();
            if (v44)
            {
              v45 = v44;
              v46 = object_getClass(self);
              v47 = class_isMetaClass(v46);
              v48 = object_getClassName(self);
              v90 = sel_getName(sel);
              v49 = 45;
              if (v47)
              {
                v49 = 43;
              }

              v45(6, "%c[%{public}s %{public}s]:%i Found silent tag", v49, v48, v90, 507);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v50 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v51 = object_getClass(self);
              if (class_isMetaClass(v51))
              {
                v52 = 43;
              }

              else
              {
                v52 = 45;
              }

              v53 = object_getClassName(self);
              v54 = sel_getName(sel);
              *buf = 67109890;
              v99 = v52;
              v100 = 2082;
              v101 = v53;
              v102 = 2082;
              v103 = v54;
              v104 = 1024;
              v105 = 507;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found silent tag", buf, 0x22u);
            }

            [v19 _setTechnology:1];
            [v19 _setType:3];
            v36 = v19;
            v37 = 1;
            goto LABEL_72;
          case 10:
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v61 = NFLogGetLogger();
            if (v61)
            {
              v62 = v61;
              v63 = object_getClass(self);
              v64 = class_isMetaClass(v63);
              v65 = object_getClassName(self);
              v91 = sel_getName(sel);
              v66 = 45;
              if (v64)
              {
                v66 = 43;
              }

              v62(6, "%c[%{public}s %{public}s]:%i Found silent A2 tag", v66, v65, v91, 513);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v67 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              v68 = object_getClass(self);
              if (class_isMetaClass(v68))
              {
                v69 = 43;
              }

              else
              {
                v69 = 45;
              }

              v70 = object_getClassName(self);
              v71 = sel_getName(sel);
              *buf = 67109890;
              v99 = v69;
              v100 = 2082;
              v101 = v70;
              v102 = 2082;
              v103 = v71;
              v104 = 1024;
              v105 = 513;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found silent A2 tag", buf, 0x22u);
            }

            [v19 _setTechnology:1];
            [v19 _setType:3];
            v36 = v19;
            v37 = 2;
            goto LABEL_72;
          case 11:
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v25 = NFLogGetLogger();
            if (v25)
            {
              v26 = v25;
              v27 = object_getClass(self);
              v28 = class_isMetaClass(v27);
              v29 = object_getClassName(self);
              v89 = sel_getName(sel);
              v30 = 45;
              if (v28)
              {
                v30 = 43;
              }

              v26(6, "%c[%{public}s %{public}s]:%i Found silent A3 tag", v30, v29, v89, 519);
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
              v35 = sel_getName(sel);
              *buf = 67109890;
              v99 = v33;
              v100 = 2082;
              v101 = v34;
              v102 = 2082;
              v103 = v35;
              v104 = 1024;
              v105 = 519;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found silent A3 tag", buf, 0x22u);
            }

            [v19 _setTechnology:1];
            [v19 _setType:3];
            v36 = v19;
            v37 = 3;
LABEL_72:
            [v36 _setSilentType:v37];
            break;
        }
      }

      else if (var1 > 2)
      {
        if (var1 != 3)
        {
          if (var1 == 4)
          {
            [v19 _setTechnology:1];
            [v19 _setType:9];
            v57 = [NSData alloc];
            v55 = &a3[v18 / 0x60];
LABEL_61:
            v58 = [v57 initWithBytes:v55->var2.var6.var3 length:v55->var2.var0.var4];
            [v19 _setHistoricalBytes:v58];

            v59 = [[NSData alloc] initWithBytes:&v55->var2.var4.var0[5] length:2];
            [v19 _setAtqa:v59];

            v60 = [[NSData alloc] initWithBytes:&v55->var2.var3.var0[4] length:1];
            [v19 _setSak:v60];

            goto LABEL_73;
          }

          [v19 _setTechnology:16];
          v23 = v19;
          v24 = 8;
          goto LABEL_59;
        }

        [v19 _setTechnology:4];
        [v19 _setType:7];
        v38 = [[NSData alloc] initWithBytes:&a3[v18 / 0x60].var2.var0.var0 + 1 length:a3[v18 / 0x60].var2.var2.var0];
        [v19 _setIdentifier:v38];

        v39 = [[NSData alloc] initWithBytes:&a3[v18 / 0x60].var2.var0.var0 + 1 length:a3[v18 / 0x60].var2.var2.var0];
        [v19 _setIDm:v39];

        v40 = [[NSData alloc] initWithBytes:&a3[v18 / 0x60].var2.var6.var3[4] length:8];
        [v19 _setPMm:v40];

        v41 = [NSArray alloc];
        v42 = [[NSData alloc] initWithBytes:&a3[v18 / 0x60].var2.var6.var3[12] length:2];
        v43 = [v41 initWithObjects:{v42, 0}];
        [v19 _setSystemCodes:v43];
      }

      else
      {
        switch(var1)
        {
          case 0:
            [v19 _setTechnology:0];
            v23 = v19;
            v24 = 0;
            goto LABEL_59;
          case 1:
            [v19 _setTechnology:1];
            v55 = &a3[v18 / 0x60];
            var0 = a3[v18 / 0x60].var2.var0.var0;
            if (var0 <= 2)
            {
              [v19 _setType:var0 + 1];
            }

            v57 = [NSData alloc];
            goto LABEL_61;
          case 2:
            [v19 _setTechnology:2];
            v22 = a3[v18 / 0x60].var2.var0.var0;
            switch(v22)
            {
              case 2:
                v23 = v19;
                v24 = 6;
                goto LABEL_59;
              case 1:
                v23 = v19;
                v24 = 5;
                goto LABEL_59;
              case 0:
                v23 = v19;
                v24 = 4;
LABEL_59:
                [v23 _setType:v24];
                break;
            }

            break;
        }
      }

LABEL_73:
      v72 = [v19 tagID];
      remoteTags = self->_remoteTags;
      v96[0] = @"tagHandle";
      v74 = [NSValue valueWithPointer:a3[v18 / 0x60].var0];
      v96[1] = @"type";
      v97[0] = v74;
      v75 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v19 type]);
      v97[1] = v75;
      v76 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:2];
      [(NSMutableDictionary *)remoteTags setObject:v76 forKey:v72];

      [v19 _setUID:v72];
      v17 = v95;
      [v95 addObject:v19];

      v18 += 96;
      if (v94 == v18)
      {
        [(NFReaderRestrictor *)self->_readerPolicy tagDetected];
        v87 = [(NFACDriverWrapper *)self delegate];
        [v87 handleRemoteTagsDetected:v95];
        goto LABEL_86;
      }
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v77 = NFLogGetLogger();
  if (v77)
  {
    v78 = v77;
    v79 = object_getClass(self);
    v80 = class_isMetaClass(v79);
    v81 = object_getClassName(self);
    v92 = sel_getName(a2);
    v82 = 45;
    if (v80)
    {
      v82 = 43;
    }

    v78(3, "%c[%{public}s %{public}s]:%i Invalid tag data", v82, v81, v92, 437);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v87 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
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
    v99 = v84;
    v100 = 2082;
    v101 = v85;
    v102 = 2082;
    v103 = v86;
    v104 = 1024;
    v105 = 437;
    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid tag data", buf, 0x22u);
  }

LABEL_86:
}

- (void)_getHandleForTag:(id)a3
{
  remoteTags = self->_remoteTags;
  v4 = [a3 UID];
  v5 = [(NSMutableDictionary *)remoteTags objectForKey:v4];

  v6 = [v5 objectForKey:@"tagHandle"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 pointerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unsigned)connectTag:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if ([(NFACDriverWrapper *)v6 _isClosed])
  {
    v7 = 3;
  }

  else
  {
    driver = v6->_driver;
    [(NFACDriverWrapper *)v6 _getHandleForTag:v5];
    if (NFDriverRemoteDevConnect())
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v10 = Logger;
        Class = object_getClass(v6);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v6);
        Name = sel_getName(a2);
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v10(3, "%c[%{public}s %{public}s]:%i Failed to connect to tag: %{public}@", v13, ClassName, Name, 558, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = object_getClass(v6);
        if (class_isMetaClass(v15))
        {
          v16 = 43;
        }

        else
        {
          v16 = 45;
        }

        *buf = 67110146;
        v21 = v16;
        v22 = 2082;
        v23 = object_getClassName(v6);
        v24 = 2082;
        v25 = sel_getName(a2);
        v26 = 1024;
        v27 = 558;
        v28 = 2114;
        v29 = v5;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to connect to tag: %{public}@", buf, 0x2Cu);
      }

      v7 = 28;
    }

    else
    {
      v7 = 0;
    }
  }

  objc_sync_exit(v6);

  return v7;
}

- (unsigned)disconnectTag:(id)a3 tagRemovalDetect:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = self;
  objc_sync_enter(v8);
  if ([(NFACDriverWrapper *)v8 _isClosed])
  {
    v9 = 3;
  }

  else
  {
    driver = v8->_driver;
    [(NFACDriverWrapper *)v8 _getHandleForTag:v7];
    v11 = NFDriverRemoteDevDisconnect();
    if (v11)
    {
      v12 = v11;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v14 = Logger;
        Class = object_getClass(v8);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v8);
        Name = sel_getName(a2);
        v17 = 45;
        if (isMetaClass)
        {
          v17 = 43;
        }

        v14(3, "%c[%{public}s %{public}s]:%i Failed to disconnect tag: %{public}@", v17, ClassName, Name, 575, v7);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = object_getClass(v8);
        if (class_isMetaClass(v19))
        {
          v20 = 43;
        }

        else
        {
          v20 = 45;
        }

        *buf = 67110146;
        v25 = v20;
        v26 = 2082;
        v27 = object_getClassName(v8);
        v28 = 2082;
        v29 = sel_getName(a2);
        v30 = 1024;
        v31 = 575;
        v32 = 2114;
        v33 = v7;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to disconnect tag: %{public}@", buf, 0x2Cu);
      }

      if (v12 == 18)
      {
        v9 = 51;
      }

      else
      {
        v9 = 15;
      }
    }

    else
    {
      if (v4 && [(NFReaderRestrictor *)v8->_readerPolicy readerModeStoppedShouldCooloffRun])
      {
        [(NFACDriverWrapper *)v8 openSession:@"Cooloff"];
      }

      v9 = 0;
    }
  }

  objc_sync_exit(v8);

  return v9;
}

- (BOOL)queryTagNDEFCapability:(id)a3 hasNdefAbility:(_NFNDEFTagInfo *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = self;
  objc_sync_enter(v9);
  if ([(NFACDriverWrapper *)v9 _isClosed])
  {
    if (a5)
    {
      v10 = [NSError alloc];
      v11 = [NSString stringWithUTF8String:"nfcd"];
      v51[0] = NSLocalizedDescriptionKey;
      v12 = [NSString stringWithUTF8String:"Exiting"];
      v52[0] = v12;
      v52[1] = &off_1003304B0;
      v51[1] = @"Line";
      v51[2] = @"Method";
      v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v52[2] = v13;
      v51[3] = NSDebugDescriptionErrorKey;
      v14 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 593];
      v52[3] = v14;
      v15 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
      *a5 = [v10 initWithDomain:v11 code:4 userInfo:v15];

LABEL_24:
      LOBYTE(a5) = 0;
    }
  }

  else
  {
    driver = v9->_driver;
    [(NFACDriverWrapper *)v9 _getHandleForTag:v8];
    v17 = NFDriverRemoteDevCheckNdef();
    if (v17)
    {
      v18 = v17;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v20 = Logger;
        Class = object_getClass(v9);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v9);
        Name = sel_getName(a2);
        v24 = 45;
        if (isMetaClass)
        {
          v24 = 43;
        }

        v20(3, "%c[%{public}s %{public}s]:%i Failed to perform Ndef check", v24, ClassName, Name, 600);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = object_getClass(v9);
        if (class_isMetaClass(v26))
        {
          v27 = 43;
        }

        else
        {
          v27 = 45;
        }

        *buf = 67109890;
        v44 = v27;
        v45 = 2082;
        v46 = object_getClassName(v9);
        v47 = 2082;
        v48 = sel_getName(a2);
        v49 = 1024;
        v50 = 600;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to perform Ndef check", buf, 0x22u);
      }

      if (a5)
      {
        v28 = [NSError alloc];
        v29 = [NSString stringWithUTF8String:"nfcd"];
        if (v18 == 5)
        {
          v39 = NSLocalizedDescriptionKey;
          v30 = [NSString stringWithUTF8String:"Invalid Parameter"];
          v40 = v30;
          v31 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
          v32 = v28;
          v33 = v29;
          v34 = 10;
        }

        else if (v18 == 6)
        {
          v41 = NSLocalizedDescriptionKey;
          v30 = [NSString stringWithUTF8String:"Tag Not Found"];
          v42 = v30;
          v31 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
          v32 = v28;
          v33 = v29;
          v34 = 28;
        }

        else
        {
          v37 = NSLocalizedDescriptionKey;
          v30 = [NSString stringWithUTF8String:"Stack Error"];
          v38 = v30;
          v31 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          v32 = v28;
          v33 = v29;
          v34 = 15;
        }

        *a5 = [v32 initWithDomain:v33 code:v34 userInfo:v31];

        goto LABEL_24;
      }
    }

    else
    {
      if (a5)
      {
        *a5 = 0;
      }

      LOBYTE(a5) = 1;
    }
  }

  objc_sync_exit(v9);

  return a5;
}

- (unsigned)queryMifareTagCapability:(id)a3 error:(id *)a4
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = self;
    objc_sync_enter(v8);
    if ([(NFACDriverWrapper *)v8 _isClosed])
    {
      if (!a4)
      {
LABEL_29:
        objc_sync_exit(v8);
        goto LABEL_30;
      }

      v9 = [NSError alloc];
      v10 = [NSString stringWithUTF8String:"nfcd"];
      v56[0] = NSLocalizedDescriptionKey;
      v11 = [NSString stringWithUTF8String:"Exiting"];
      v57[0] = v11;
      v57[1] = &off_1003304C8;
      v56[1] = @"Line";
      v56[2] = @"Method";
      v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v57[2] = v12;
      v56[3] = NSDebugDescriptionErrorKey;
      v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 636];
      v57[3] = v13;
      v14 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:4];
      *a4 = [v9 initWithDomain:v10 code:4 userInfo:v14];
    }

    else
    {
      v55 = 0;
      memset(buf, 0, sizeof(buf));
      driver = v8->_driver;
      [(NFACDriverWrapper *)v8 _getHandleForTag:v7];
      if (!NFDriverRemoteDevGetMiFareInfo())
      {
        if ((*buf - 1) > 4)
        {
          LODWORD(a4) = 9;
        }

        else
        {
          LODWORD(a4) = dword_100296CE0[*buf - 1];
        }

        goto LABEL_29;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v29 = Logger;
        Class = object_getClass(v8);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v8);
        Name = sel_getName(a2);
        v33 = 45;
        if (isMetaClass)
        {
          v33 = 43;
        }

        v29(3, "%c[%{public}s %{public}s]:%i Failed to query MIFARE info", v33, ClassName, Name, 644);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v34 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = object_getClass(v8);
        if (class_isMetaClass(v35))
        {
          v36 = 43;
        }

        else
        {
          v36 = 45;
        }

        *v46 = 67109890;
        v47 = v36;
        v48 = 2082;
        v49 = object_getClassName(v8);
        v50 = 2082;
        v51 = sel_getName(a2);
        v52 = 1024;
        v53 = 644;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query MIFARE info", v46, 0x22u);
      }

      if (!a4)
      {
        goto LABEL_29;
      }

      v37 = [NSError alloc];
      v38 = [NSString stringWithUTF8String:"nfcd"];
      v44 = NSLocalizedDescriptionKey;
      v39 = [NSString stringWithUTF8String:"Stack Error"];
      v45 = v39;
      v40 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      *a4 = [v37 initWithDomain:v38 code:15 userInfo:v40];
    }

    LODWORD(a4) = 0;
    goto LABEL_29;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v16 = v15;
    v17 = object_getClass(self);
    v18 = class_isMetaClass(v17);
    v19 = object_getClassName(self);
    v42 = sel_getName(a2);
    v20 = 45;
    if (v18)
    {
      v20 = 43;
    }

    v16(3, "%c[%{public}s %{public}s]:%i Invalid tag parameter", v20, v19, v42, 628);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v21 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
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

    *buf = 67109890;
    *&buf[4] = v23;
    *&buf[8] = 2082;
    *&buf[10] = object_getClassName(self);
    *&buf[18] = 2082;
    *&buf[20] = sel_getName(a2);
    *&buf[28] = 1024;
    *&buf[30] = 628;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid tag parameter", buf, 0x22u);
  }

  if (a4)
  {
    v24 = [NSError alloc];
    v8 = [NSString stringWithUTF8String:"nfcd"];
    v58 = NSLocalizedDescriptionKey;
    v25 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v59 = v25;
    v26 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    *a4 = [v24 initWithDomain:v8 code:10 userInfo:v26];

    LODWORD(a4) = 0;
LABEL_30:
  }

  return a4;
}

- (id)readNdefDataFromTag:(id)a3 messageSize:(unsigned int)a4 error:(id *)a5
{
  v9 = a3;
  v10 = self;
  objc_sync_enter(v10);
  if ([(NFACDriverWrapper *)v10 _isClosed])
  {
    if (!a5)
    {
      goto LABEL_33;
    }

    v11 = [NSError alloc];
    v12 = [NSString stringWithUTF8String:"nfcd"];
    v98[0] = NSLocalizedDescriptionKey;
    v13 = [NSString stringWithUTF8String:"Exiting"];
    v99[0] = v13;
    v99[1] = &off_1003304E0;
    v98[1] = @"Line";
    v98[2] = @"Method";
    v14 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v99[2] = v14;
    v98[3] = NSDebugDescriptionErrorKey;
    v15 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 678];
    v99[3] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:4];
    *a5 = [v11 initWithDomain:v12 code:4 userInfo:v16];

    goto LABEL_32;
  }

  if (a4 <= 0x8000)
  {
    if (!a4)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v35 = Logger;
        Class = object_getClass(v10);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v10);
        Name = sel_getName(a2);
        v39 = 45;
        if (isMetaClass)
        {
          v39 = 43;
        }

        v35(5, "%c[%{public}s %{public}s]:%i zero-length message", v39, ClassName, Name, 690);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v40 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = object_getClass(v10);
        if (class_isMetaClass(v41))
        {
          v42 = 43;
        }

        else
        {
          v42 = 45;
        }

        *buf = 67109890;
        v83 = v42;
        v84 = 2082;
        v85 = object_getClassName(v10);
        v86 = 2082;
        v87 = sel_getName(a2);
        v88 = 1024;
        v89 = 690;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i zero-length message", buf, 0x22u);
      }

      if (a5)
      {
        v43 = [NSError alloc];
        v27 = [NSString stringWithUTF8String:"nfcd"];
        v94 = NSLocalizedDescriptionKey;
        v28 = [NSString stringWithUTF8String:"Zero-length NDEF message"];
        v95 = v28;
        v29 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        v30 = v43;
        v31 = v27;
        v32 = 49;
        goto LABEL_31;
      }

      goto LABEL_33;
    }

    if (a5)
    {
      *a5 = 0;
      if (!NFDataCreateWithLength())
      {
        v33 = [NSError alloc];
        v27 = [NSString stringWithUTF8String:"nfcd"];
        v76 = NSLocalizedDescriptionKey;
        v28 = [NSString stringWithUTF8String:"No resources"];
        v77 = v28;
        v29 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
        v30 = v33;
        v31 = v27;
        v32 = 34;
        goto LABEL_31;
      }
    }

    else if (!NFDataCreateWithLength())
    {
      goto LABEL_32;
    }

    driver = v10->_driver;
    [(NFACDriverWrapper *)v10 _getHandleForTag:v9];
    if (NFDriverRemoteDevReadNdef())
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v46 = NFLogGetLogger();
      if (v46)
      {
        v47 = v46;
        v48 = object_getClass(v10);
        v49 = class_isMetaClass(v48);
        v50 = object_getClassName(v10);
        v74 = sel_getName(a2);
        v51 = 45;
        if (v49)
        {
          v51 = 43;
        }

        v47(3, "%c[%{public}s %{public}s]:%i Failed to read NDEF from tag %{public}@, status=%d", v51, v50, v74, 706, v9, 0);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v52 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = object_getClass(v10);
        if (class_isMetaClass(v53))
        {
          v54 = 43;
        }

        else
        {
          v54 = 45;
        }

        *buf = 67110402;
        v83 = v54;
        v84 = 2082;
        v85 = object_getClassName(v10);
        v86 = 2082;
        v87 = sel_getName(a2);
        v88 = 1024;
        v89 = 706;
        v90 = 2114;
        v91 = v9;
        v92 = 1024;
        v93 = 0;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to read NDEF from tag %{public}@, status=%d", buf, 0x32u);
      }

      if (!a5)
      {
        goto LABEL_51;
      }

      v55 = [NSError alloc];
      v56 = [NSString stringWithUTF8String:"nfcd"];
      v80 = NSLocalizedDescriptionKey;
      v57 = [NSString stringWithUTF8String:"Stack Error"];
      v81 = v57;
      v58 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      v59 = v55;
      v60 = v56;
      v61 = 15;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v62 = NFLogGetLogger();
      if (v62)
      {
        v63 = v62;
        v64 = object_getClass(v10);
        v65 = class_isMetaClass(v64);
        v66 = object_getClassName(v10);
        v75 = sel_getName(a2);
        v67 = 45;
        if (v65)
        {
          v67 = 43;
        }

        v63(5, "%c[%{public}s %{public}s]:%i zero-length message", v67, v66, v75, 720);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v68 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v69 = object_getClass(v10);
        if (class_isMetaClass(v69))
        {
          v70 = 43;
        }

        else
        {
          v70 = 45;
        }

        *buf = 67109890;
        v83 = v70;
        v84 = 2082;
        v85 = object_getClassName(v10);
        v86 = 2082;
        v87 = sel_getName(a2);
        v88 = 1024;
        v89 = 720;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i zero-length message", buf, 0x22u);
      }

      if (!a5)
      {
        goto LABEL_51;
      }

      v71 = [NSError alloc];
      v56 = [NSString stringWithUTF8String:"nfcd"];
      v78 = NSLocalizedDescriptionKey;
      v57 = [NSString stringWithUTF8String:"Zero-length NDEF message"];
      v79 = v57;
      v58 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
      v59 = v71;
      v60 = v56;
      v61 = 49;
    }

    *a5 = [v59 initWithDomain:v60 code:v61 userInfo:v58];

    a5 = 0;
LABEL_51:
    NFDataRelease();
    goto LABEL_33;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFLogGetLogger();
  if (v17)
  {
    v18 = v17;
    v19 = object_getClass(v10);
    v20 = class_isMetaClass(v19);
    v21 = object_getClassName(v10);
    v72 = sel_getName(a2);
    v22 = 45;
    if (v20)
    {
      v22 = 43;
    }

    v18(5, "%c[%{public}s %{public}s]:%i NDEF message size is over the read limit", v22, v21, v72, 685);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = object_getClass(v10);
    if (class_isMetaClass(v24))
    {
      v25 = 43;
    }

    else
    {
      v25 = 45;
    }

    *buf = 67109890;
    v83 = v25;
    v84 = 2082;
    v85 = object_getClassName(v10);
    v86 = 2082;
    v87 = sel_getName(a2);
    v88 = 1024;
    v89 = 685;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NDEF message size is over the read limit", buf, 0x22u);
  }

  if (a5)
  {
    v26 = [NSError alloc];
    v27 = [NSString stringWithUTF8String:"nfcd"];
    v96 = NSLocalizedDescriptionKey;
    v28 = [NSString stringWithUTF8String:"NDEF message size is over the limit"];
    v97 = v28;
    v29 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
    v30 = v26;
    v31 = v27;
    v32 = 43;
LABEL_31:
    *a5 = [v30 initWithDomain:v31 code:v32 userInfo:v29];

LABEL_32:
    a5 = 0;
  }

LABEL_33:
  objc_sync_exit(v10);

  return a5;
}

- (BOOL)writeLockNdef:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = self;
  objc_sync_enter(v8);
  if ([(NFACDriverWrapper *)v8 _isClosed])
  {
    if (!a4)
    {
LABEL_11:
      v17 = 0;
      goto LABEL_12;
    }

    v9 = [NSError alloc];
    v10 = [NSString stringWithUTF8String:"nfcd"];
    v28[0] = NSLocalizedDescriptionKey;
    v11 = [NSString stringWithUTF8String:"Exiting"];
    v29[0] = v11;
    v29[1] = &off_1003304F8;
    v28[1] = @"Line";
    v28[2] = @"Method";
    v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v29[2] = v12;
    v28[3] = NSDebugDescriptionErrorKey;
    v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 741];
    v29[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:4];
    *a4 = [v9 initWithDomain:v10 code:4 userInfo:v14];

LABEL_10:
    goto LABEL_11;
  }

  driver = v8->_driver;
  [(NFACDriverWrapper *)v8 _getHandleForTag:v7];
  v16 = NFDriverRemoteDevWriteLockNdef();
  v17 = v16 == 0;
  if (a4)
  {
    v18 = v16;
    if (v16)
    {
      v19 = [NSError alloc];
      v10 = [NSString stringWithUTF8String:"nfcd"];
      if (v18 == 6)
      {
        v26 = NSLocalizedDescriptionKey;
        v11 = [NSString stringWithUTF8String:"Connection Closed"];
        v27 = v11;
        v12 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v20 = v19;
        v21 = v10;
        v22 = 21;
      }

      else
      {
        v24 = NSLocalizedDescriptionKey;
        v11 = [NSString stringWithUTF8String:"Stack Error"];
        v25 = v11;
        v12 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v20 = v19;
        v21 = v10;
        v22 = 15;
      }

      *a4 = [v20 initWithDomain:v21 code:v22 userInfo:v12];
      goto LABEL_10;
    }
  }

LABEL_12:
  objc_sync_exit(v8);

  return v17;
}

- (unsigned)checkTagPresence:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(NFACDriverWrapper *)v5 _isClosed])
  {
    v6 = 3;
  }

  else
  {
    driver = v5->_driver;
    [(NFACDriverWrapper *)v5 _getHandleForTag:v4];
    if (NFDriverRemoteDevCheckPresence())
    {
      v6 = 28;
    }

    else
    {
      v6 = 0;
    }
  }

  objc_sync_exit(v5);

  return v6;
}

- (id)enableContinuousWave:(BOOL)a3 withFrequencySweep:(BOOL)a4
{
  v4 = self;
  objc_sync_enter(v4);
  if ([(NFACDriverWrapper *)v4 _isClosed])
  {
    v5 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v18 = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"Aborted"];
    v19 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v9 = v5;
    v10 = v6;
    v11 = 3;
LABEL_5:
    v14 = [v9 initWithDomain:v10 code:v11 userInfo:v8];

    goto LABEL_6;
  }

  driver = v4->_driver;
  if (NFDriverContinuousWave())
  {
    v13 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v16 = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"Stack Error"];
    v17 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v9 = v13;
    v10 = v6;
    v11 = 15;
    goto LABEL_5;
  }

  v14 = 0;
LABEL_6:
  objc_sync_exit(v4);

  return v14;
}

- (id)transceive:(id)a3 tag:(id)a4 maxTimeout:(double)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = self;
  objc_sync_enter(v12);
  if ([(NFACDriverWrapper *)v12 _isClosed])
  {
    if (a6)
    {
      v13 = [NSError alloc];
      v14 = [NSString stringWithUTF8String:"nfcd"];
      v110[0] = NSLocalizedDescriptionKey;
      v15 = [NSString stringWithUTF8String:"Exiting"];
      v111[0] = v15;
      v111[1] = &off_100330510;
      v110[1] = @"Line";
      v110[2] = @"Method";
      v16 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v111[2] = v16;
      v110[3] = NSDebugDescriptionErrorKey;
      v17 = v11;
      v18 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 799];
      v111[3] = v18;
      v19 = [NSDictionary dictionaryWithObjects:v111 forKeys:v110 count:4];
      *a6 = [v13 initWithDomain:v14 code:4 userInfo:v19];

      v11 = v17;
    }

    objc_sync_exit(v12);
    v20 = 0;
    goto LABEL_41;
  }

  [v10 bytes];
  [v10 length];
  NFDataCreateWithBytesNoCopy();
  if (a6)
  {
    *a6 = 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v22 = Logger;
    Class = object_getClass(v12);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v12);
    v26 = v11;
    Name = sel_getName(a2);
    v28 = [v10 NF_asHexString];
    v92 = Name;
    v11 = v26;
    v29 = 45;
    if (isMetaClass)
    {
      v29 = 43;
    }

    v22(6, "%c[%{public}s %{public}s]:%i TX: %{public}@", v29, ClassName, v92, 813, v28);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v30 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = object_getClass(v12);
    if (class_isMetaClass(v31))
    {
      v32 = 43;
    }

    else
    {
      v32 = 45;
    }

    v33 = object_getClassName(v12);
    v34 = sel_getName(a2);
    v35 = [v10 NF_asHexString];
    *buf = 67110146;
    v101 = v32;
    v102 = 2082;
    v103 = v33;
    v104 = 2082;
    v105 = v34;
    v106 = 1024;
    v107 = 813;
    v108 = 2114;
    v109 = v35;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i TX: %{public}@", buf, 0x2Cu);
  }

  if ([v11 technology] == 4)
  {
    driver = v12->_driver;
    [(NFACDriverWrapper *)v12 _getHandleForTag:v11];
    v37 = NFDriverRemoteDeviceFelicaTransceive();
LABEL_23:
    v40 = v37;
    goto LABEL_24;
  }

  if ([v11 technology] == 16)
  {
    v38 = v12->_driver;
    [(NFACDriverWrapper *)v12 _getHandleForTag:v11];
    v37 = NFDriverRemoteDeviceIso15693Transceive();
    goto LABEL_23;
  }

  if ([v11 technology] == 1 || objc_msgSend(v11, "technology") == 2)
  {
    v39 = v12->_driver;
    [(NFACDriverWrapper *)v12 _getHandleForTag:v11];
    v37 = NFDriverRemoteDeviceIso14443Transceive();
    goto LABEL_23;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v67 = NFLogGetLogger();
  if (v67)
  {
    v68 = v67;
    v69 = object_getClass(v12);
    v70 = class_isMetaClass(v69);
    v71 = object_getClassName(v12);
    v72 = sel_getName(a2);
    v94 = [v11 technology];
    v73 = 45;
    if (v70)
    {
      v73 = 43;
    }

    v68(3, "%c[%{public}s %{public}s]:%i Tag tech = %d", v73, v71, v72, 825, v94);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v74 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
  {
    v75 = object_getClass(v12);
    if (class_isMetaClass(v75))
    {
      v76 = 43;
    }

    else
    {
      v76 = 45;
    }

    v77 = object_getClassName(v12);
    v78 = sel_getName(a2);
    v79 = [v11 technology];
    *buf = 67110146;
    v101 = v76;
    v102 = 2082;
    v103 = v77;
    v104 = 2082;
    v105 = v78;
    v106 = 1024;
    v107 = 825;
    v108 = 1024;
    LODWORD(v109) = v79;
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag tech = %d", buf, 0x28u);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v80 = NFLogGetLogger();
  if (v80)
  {
    v81 = v80;
    v82 = object_getClass(v12);
    v83 = class_isMetaClass(v82);
    v84 = object_getClassName(v12);
    v93 = sel_getName(a2);
    v85 = 45;
    if (v83)
    {
      v85 = 43;
    }

    v81(3, "%c[%{public}s %{public}s]:%i Reader mode transceive is not supported for this tag type", v85, v84, v93, 826);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v86 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
  {
    v87 = object_getClass(v12);
    if (class_isMetaClass(v87))
    {
      v88 = 43;
    }

    else
    {
      v88 = 45;
    }

    v89 = object_getClassName(v12);
    v90 = sel_getName(a2);
    *buf = 67109890;
    v101 = v88;
    v102 = 2082;
    v103 = v89;
    v104 = 2082;
    v105 = v90;
    v106 = 1024;
    v107 = 826;
    _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Reader mode transceive is not supported for this tag type", buf, 0x22u);
  }

  v40 = 5;
LABEL_24:
  v95 = v10;
  v41 = a2;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v42 = NFLogGetLogger();
  v43 = a6;
  if (v42)
  {
    v44 = v42;
    v45 = object_getClass(v12);
    v46 = class_isMetaClass(v45);
    v47 = v11;
    v48 = object_getClassName(v12);
    v49 = sel_getName(v41);
    v50 = [0 NF_asHexString];
    v51 = 45;
    if (v46)
    {
      v51 = 43;
    }

    v91 = v48;
    v11 = v47;
    v44(6, "%c[%{public}s %{public}s]:%i RX: %{public}@", v51, v91, v49, 834, v50);

    a6 = v43;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v52 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v53 = object_getClass(v12);
    if (class_isMetaClass(v53))
    {
      v54 = 43;
    }

    else
    {
      v54 = 45;
    }

    v55 = object_getClassName(v12);
    v56 = sel_getName(v41);
    v57 = [0 NF_asHexString];
    *buf = 67110146;
    v101 = v54;
    v102 = 2082;
    v103 = v55;
    v104 = 2082;
    v105 = v56;
    a6 = v43;
    v106 = 1024;
    v107 = 834;
    v108 = 2114;
    v109 = v57;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i RX: %{public}@", buf, 0x2Cu);
  }

  NFDataRelease();
  NFDataRelease();
  if (v40 == 6)
  {
    v58 = [NSError alloc];
    ErrorCode = [NSString stringWithUTF8String:"nfcd"];
    v98 = NSLocalizedDescriptionKey;
    v60 = [NSString stringWithUTF8String:"Tag Not Found"];
    v99 = v60;
    v61 = [NSDictionary dictionaryWithObjects:&v99 forKeys:&v98 count:1];
    v62 = [v58 initWithDomain:ErrorCode code:28 userInfo:v61];
  }

  else
  {
    ErrorCode = NFDriverCreateErrorCode();
    if (!ErrorCode)
    {
      v62 = 0;
      goto LABEL_38;
    }

    v63 = [NSError alloc];
    v60 = [NSString stringWithUTF8String:"nfcd"];
    v96[0] = NSLocalizedDescriptionKey;
    v61 = [NSString stringWithUTF8String:"Stack Error"];
    v96[1] = NSUnderlyingErrorKey;
    v97[0] = v61;
    v97[1] = ErrorCode;
    v64 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:2];
    v62 = [v63 initWithDomain:v60 code:15 userInfo:v64];
  }

  a6 = v43;
LABEL_38:

  v10 = v95;
  objc_sync_exit(v12);

  if (a6)
  {
    v65 = v62;
    *a6 = v62;
  }

  v12 = 0;

  v20 = v12;
LABEL_41:

  return v20;
}

- (id)setISO15693DataRate:(int)a3 forTag:(id)a4
{
  v7 = a4;
  ntag5DataRate = self->_ntag5DataRate;
  if (ntag5DataRate)
  {
    v9 = ntag5DataRate;
  }

  else
  {
    v9 = a3;
  }

  if (![(NFACDriverWrapper *)self _ntag5DriverRateFromTagRate:v9])
  {
    goto LABEL_7;
  }

  v10 = self;
  objc_sync_enter(v10);
  driver = v10->_driver;
  [(NFACDriverWrapper *)v10 _getHandleForTag:v7];
  ntag5T1 = v10->_ntag5T1;
  v13 = NFDriverISO15693SetDataRate();
  objc_sync_exit(v10);

  if (v13)
  {
    v14 = [NSError alloc];
    v15 = [NSString stringWithUTF8String:"nfcd"];
    v22[0] = NSLocalizedDescriptionKey;
    v16 = [NSString stringWithUTF8String:"Stack Error"];
    v23[0] = v16;
    v23[1] = &off_100330528;
    v22[1] = @"Line";
    v22[2] = @"Method";
    v17 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v23[2] = v17;
    v22[3] = NSDebugDescriptionErrorKey;
    v18 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 897];
    v23[3] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
    v20 = [v14 initWithDomain:v15 code:15 userInfo:v19];
  }

  else
  {
LABEL_7:
    v20 = 0;
  }

  return v20;
}

- (unsigned)getTagType:(id)a3
{
  remoteTags = self->_remoteTags;
  v4 = [a3 UID];
  v5 = [(NSMutableDictionary *)remoteTags objectForKey:v4];

  v6 = [v5 objectForKey:@"type"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unsignedIntValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_NFData)readFromHCEDevice:(void *)a3
{
  v3 = self;
  objc_sync_enter(v3);
  if ([(NFACDriverWrapper *)v3 _isClosed])
  {
    v4 = 0;
  }

  else
  {
    driver = v3->_driver;
    v4 = NFDriverRemoteDevReceive();
  }

  objc_sync_exit(v3);

  return v4;
}

- (BOOL)sendToHCEDevice:(void *)a3 buffer:(const void *)a4 length:(unsigned int)a5
{
  v5 = self;
  objc_sync_enter(v5);
  if ([(NFACDriverWrapper *)v5 _isClosed])
  {
    v6 = 0;
  }

  else
  {
    driver = v5->_driver;
    v6 = NFDriverRemoteDevSend();
  }

  objc_sync_exit(v5);

  return v6;
}

- (BOOL)_restartDiscoveryWithReconfig:(BOOL)a3
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = [(NFACDriverWrapper *)v3 _isClosed];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    if (v3->_driver->var4)
    {
      v6 = [(NFReaderRestrictor *)v3->_readerPolicy readerModeProtectionActive];
    }

    else
    {
      v6 = 0;
    }

    if ([(NFReaderRestrictor *)v3->_readerPolicy readerModeStoppedShouldCooloffRun])
    {
      [(NFACDriverWrapper *)v3 openSession:@"Cooloff"];
      v6 = 1;
    }

    driver = v3->_driver;
    restarted = NFDriverRestartDiscovery();
    v5 = restarted;
    if (v6 && restarted)
    {
      [(NFReaderRestrictor *)v3->_readerPolicy triggerBurnoutTimer];
      v5 = 1;
    }
  }

  objc_sync_exit(v3);

  return v5 & (v4 ^ 1);
}

- (BOOL)restartDiscovery
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

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 1020);
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
    v22 = 1020;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  return [(NFACDriverWrapper *)self _restartDiscoveryWithReconfig:1];
}

- (BOOL)resumeDiscovery
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

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 1026);
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
    v22 = 1026;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  return [(NFACDriverWrapper *)self _restartDiscoveryWithReconfig:0];
}

- (id)getDieID
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

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 1033);
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
    *&buf[4] = v12;
    v34 = 2082;
    v35 = object_getClassName(self);
    v36 = 2082;
    v37 = sel_getName(a2);
    v38 = 1024;
    v39 = 1033;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v13 = [(NFACDriverWrapper *)self openSession:@"DieID"];
  if (v13 == 1)
  {
    *buf = 0;
    driver = self->_driver;
    DieID = NFDriverReadDieID();
    [(NFACDriverWrapper *)self closeSession:@"DieID"];
    v16 = 0;
    if (DieID && *buf)
    {
      v17 = [NSData alloc];
      v16 = [v17 initWithBytesNoCopy:*buf length:0];
    }
  }

  else
  {
    v18 = v13;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v20 = v19;
      v21 = object_getClass(self);
      v22 = class_isMetaClass(v21);
      v30 = object_getClassName(self);
      v32 = sel_getName(a2);
      v23 = 45;
      if (v22)
      {
        v23 = 43;
      }

      v20(3, "%c[%{public}s %{public}s]:%i Failed to open session; hwState=%lu", v23, v30, v32, 1037, v18);
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
      *buf = 67110146;
      *&buf[4] = v26;
      v34 = 2082;
      v35 = v27;
      v36 = 2082;
      v37 = v28;
      v38 = 1024;
      v39 = 1037;
      v40 = 2048;
      v41 = v18;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session; hwState=%lu", buf, 0x2Cu);
    }

    v16 = 0;
  }

  return v16;
}

- (BOOL)configureMultiTagPolling
{
  if (!self->_driver)
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"NFACDriverWrapper.m" lineNumber:1056 description:@"driver not open"];

    driver = self->_driver;
  }

  return NFDriverConfigureAutomaticMultiTagPolling();
}

- (id)queryMultiTagState:(BOOL *)a3 error:(id *)a4
{
  v7 = objc_opt_new();
  bzero(v21, 0x300uLL);
  driver = self->_driver;
  if (NFDriverGetMultiTagState())
  {
    if (a4)
    {
      v9 = [NSError alloc];
      v10 = [NSString stringWithUTF8String:"nfcd"];
      v28 = NSLocalizedDescriptionKey;
      v11 = [NSString stringWithUTF8String:"Unexpected Result"];
      v29 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      *a4 = [v9 initWithDomain:v10 code:13 userInfo:v12];
    }

    v13 = 0;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i MultiTag Enabled: %d", "[NFACDriverWrapper queryMultiTagState:error:]", 1073, 0);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      buf = 136446722;
      v23 = "[NFACDriverWrapper queryMultiTagState:error:]";
      v24 = 1024;
      v25 = 1073;
      v26 = 1024;
      v27 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i MultiTag Enabled: %d", &buf, 0x18u);
    }

    if (a3)
    {
      *a3 = 0;
    }

    v16 = 0;
    v17 = 1;
    do
    {
      v18 = v17;
      v19 = [(NFACDriverWrapper *)self _internalTagFromMultiTag:&v21[96 * v16 + 192]];
      if (v19)
      {
        [v7 addObject:v19];
      }

      v17 = 0;
      v16 = 1;
    }

    while ((v18 & 1) != 0);
    v13 = v7;
  }

  return v13;
}

- (BOOL)clearMultiTagPollingState
{
  driver = self->_driver;
  if (!driver)
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"NFACDriverWrapper.m" lineNumber:1091 description:@"driver not open"];

    driver = self->_driver;
  }

  return _NFDriverClearAutomaticMultiTagPollingState(driver, a2);
}

- (BOOL)getRFSettings:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if (!v6->_driver)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:v6 file:@"NFACDriverWrapper.m" lineNumber:1105 description:@"driver not open"];

    driver = v6->_driver;
  }

  v7 = NFDriverRFSettingsCopy();
  objc_sync_exit(v6);

  return v7;
}

- (id)getPowerCounters:(id *)a3
{
  if (!self->_lastPowerStateQuery)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v12(3, "%c[%{public}s %{public}s]:%i Power state tracking not available", v16, ClassName, Name, 1143);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
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
      v52 = v19;
      v53 = 2082;
      v54 = object_getClassName(self);
      v55 = 2082;
      v56 = sel_getName(a2);
      v57 = 1024;
      v58 = 1143;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Power state tracking not available", buf, 0x22u);
    }

    v20 = [NSError alloc];
    ErrorCode = [NSString stringWithUTF8String:"nfcd"];
    v65 = NSLocalizedDescriptionKey;
    v44 = [NSString stringWithUTF8String:"Invalid State"];
    v66 = v44;
    v45 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v47 = [v20 initWithDomain:ErrorCode code:12 userInfo:v45];
    goto LABEL_33;
  }

  driver = self->_driver;
  PowerCounter = NFDriverGetPowerCounter();
  if (PowerCounter)
  {
    v8 = PowerCounter == 15;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    ErrorCode = NFDriverCreateErrorCode();
    v43 = [NSError alloc];
    v44 = [NSString stringWithUTF8String:"nfcd"];
    v63[0] = NSLocalizedDescriptionKey;
    v45 = [NSString stringWithUTF8String:"Stack Error"];
    v63[1] = NSUnderlyingErrorKey;
    v64[0] = v45;
    v64[1] = ErrorCode;
    v46 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:2];
    v47 = [v43 initWithDomain:v44 code:15 userInfo:v46];

LABEL_33:
    goto LABEL_34;
  }

  [(NSDate *)self->_lastPowerStateQuery timeIntervalSinceNow];
  v10 = v9;
  v44 = objc_opt_new();
  v21 = [NSNumber numberWithUnsignedInt:?];
  [v44 setObject:v21 forKey:@"idleTime"];

  v22 = [NSNumber numberWithUnsignedInt:0];
  [v44 setObject:v22 forKey:@"rfTime"];

  v23 = [NSNumber numberWithInt:(v10 * -1000.0)];
  [v44 setObject:v23 forKey:@"sleepTime"];

  v24 = [NSNumber numberWithUnsignedInt:0];
  if ([(NSMutableArray *)self->_multiTagState count])
  {
    v25 = @"vGpioFalseDetectCountWithTags";
  }

  else
  {
    v25 = @"vGpioFalseDetectCount";
  }

  [v44 setObject:v24 forKey:v25];
  v26 = sub_10020E4DC();
  sub_10020F704(v26, v24);

  v27 = [NSNumber numberWithUnsignedLongLong:0];
  [v44 setObject:v27 forKey:@"SEUptime"];

  v28 = [NSNumber numberWithBool:0];
  [v44 setObject:v28 forKey:@"eseStatus"];

  v29 = [NSNumber numberWithBool:0];
  [v44 setObject:v29 forKey:@"mboxStatus"];

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v30 = NFLogGetLogger();
  if (v30)
  {
    v31 = v30;
    v32 = object_getClass(self);
    v33 = class_isMetaClass(v32);
    v34 = object_getClassName(self);
    v50 = sel_getName(a2);
    v35 = 45;
    if (v33)
    {
      v35 = 43;
    }

    v31(6, "%c[%{public}s %{public}s]:%i Last query was %g seconds ago, power dict = %{public}@", v35, v34, v50, 1189, *&v10, v44);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v36 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
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

    *buf = 67110402;
    v52 = v38;
    v53 = 2082;
    v54 = object_getClassName(self);
    v55 = 2082;
    v56 = sel_getName(a2);
    v57 = 1024;
    v58 = 1189;
    v59 = 2048;
    v60 = v10;
    v61 = 2114;
    v62 = v44;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Last query was %g seconds ago, power dict = %{public}@", buf, 0x36u);
  }

  if (a3)
  {
    *a3 = [[NSDictionary alloc] initWithDictionary:v44];
  }

  lastPowerStateQuery = self->_lastPowerStateQuery;
  self->_lastPowerStateQuery = 0;

  v40 = [[NSDate alloc] initWithTimeIntervalSinceNow:0.0];
  v41 = self->_lastPowerStateQuery;
  self->_lastPowerStateQuery = v40;

  ErrorCode = 0;
  v47 = ErrorCode;
LABEL_34:

  return v47;
}

- (id)combinePowerCounters:(id)a3 with:(id)a4 overflow:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  if (![v7 count])
  {
    v49 = v8;
    if (!v5)
    {
      goto LABEL_11;
    }

    [v9 addEntriesFromDictionary:v8];
    v50 = [NSNumber numberWithBool:1];
    v53 = @"Overflow";
    v51 = v9;
    v52 = v50;
    goto LABEL_10;
  }

  v10 = [v7 objectForKeyedSubscript:@"idleTime"];
  v11 = [v10 intValue];
  v12 = [v8 objectForKeyedSubscript:@"idleTime"];
  v13 = [v12 intValue];

  v14 = [NSNumber numberWithUnsignedInt:v13 + v11];
  [v9 setObject:v14 forKeyedSubscript:@"idleTime"];

  v15 = [v7 objectForKeyedSubscript:@"rfTime"];
  v16 = [v15 intValue];
  v17 = [v8 objectForKeyedSubscript:@"rfTime"];
  v18 = [v17 intValue];

  v19 = [NSNumber numberWithUnsignedInt:v18 + v16];
  [v9 setObject:v19 forKeyedSubscript:@"rfTime"];

  v20 = [v7 objectForKeyedSubscript:@"sleepTime"];
  v21 = [v20 intValue];
  v22 = [v8 objectForKeyedSubscript:@"sleepTime"];
  v23 = [v22 intValue];

  v24 = [NSNumber numberWithUnsignedInt:v23 + v21];
  [v9 setObject:v24 forKeyedSubscript:@"sleepTime"];

  v25 = [v7 objectForKeyedSubscript:@"falseDetect"];
  v26 = [v25 intValue];
  v27 = [v8 objectForKeyedSubscript:@"falseDetect"];
  v28 = [v27 intValue];

  v29 = [NSNumber numberWithUnsignedInt:v28 + v26];
  [v9 setObject:v29 forKeyedSubscript:@"falseDetect"];

  v30 = [v7 objectForKeyedSubscript:@"vGpioFalseDetectCount"];
  v31 = [v30 intValue];
  v32 = [v8 objectForKeyedSubscript:@"vGpioFalseDetectCount"];
  v33 = [v32 intValue];

  v34 = [NSNumber numberWithUnsignedInt:v33 + v31];
  [v9 setObject:v34 forKeyedSubscript:@"vGpioFalseDetectCount"];

  v35 = [v7 objectForKeyedSubscript:@"vGpioFalseDetectCountWithTags"];
  v36 = [v35 intValue];
  v37 = [v8 objectForKeyedSubscript:@"vGpioFalseDetectCountWithTags"];
  v38 = [v37 intValue];

  v39 = [NSNumber numberWithUnsignedInt:v38 + v36];
  [v9 setObject:v39 forKeyedSubscript:@"vGpioFalseDetectCountWithTags"];

  v40 = [v7 objectForKeyedSubscript:@"SEUptime"];
  v41 = [v40 longLongValue];
  v42 = [v8 objectForKeyedSubscript:@"SEUptime"];
  v43 = [v42 longLongValue];

  v44 = [NSNumber numberWithUnsignedLongLong:&v41[v43]];
  [v9 setObject:v44 forKeyedSubscript:@"SEUptime"];

  if (v5)
  {
    v45 = [NSNumber numberWithBool:1];
    [v9 setObject:v45 forKeyedSubscript:@"Overflow"];
  }

  v46 = [v8 objectForKeyedSubscript:@"eseStatus"];

  if (v46)
  {
    v47 = [v8 objectForKeyedSubscript:@"eseStatus"];
    [v9 setObject:v47 forKeyedSubscript:@"eseStatus"];
  }

  v48 = [v8 objectForKeyedSubscript:@"mboxStatus"];

  v49 = v9;
  if (v48)
  {
    v50 = [v8 objectForKeyedSubscript:@"mboxStatus"];
    v51 = v9;
    v52 = v50;
    v53 = @"mboxStatus";
LABEL_10:
    [v51 setObject:v52 forKeyedSubscript:v53];

    v49 = v9;
  }

LABEL_11:
  v54 = [[NSDictionary alloc] initWithDictionary:v49];

  return v54;
}

- (id)pushSignedRF:(id)a3
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v6 = a3;
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

    v8(6, "%c[%{public}s %{public}s]:%i ", v12, ClassName, Name, 1258);
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

    *buf = 67109890;
    v34 = v15;
    v35 = 2082;
    v36 = object_getClassName(self);
    v37 = 2082;
    v38 = sel_getName(a2);
    v39 = 1024;
    v40 = 1258;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  [v6 bytes];
  [v6 length];

  if (NFDataCreateWithBytes())
  {
    driver = self->_driver;
    v17 = NFDriverRFSettingsPushSetting();
    NFDataRelease();
    if (v17)
    {
      v18 = 0;
      goto LABEL_16;
    }

    v26 = [NSError alloc];
    v20 = [NSString stringWithUTF8String:"nfcd"];
    v29 = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithUTF8String:"Unknown Error"];
    v30 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v23 = v26;
    v24 = v20;
    v25 = 6;
  }

  else
  {
    v19 = [NSError alloc];
    v20 = [NSString stringWithUTF8String:"nfcd"];
    v31 = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithUTF8String:"No resources"];
    v32 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v23 = v19;
    v24 = v20;
    v25 = 34;
  }

  v18 = [v23 initWithDomain:v24 code:v25 userInfo:v22];

LABEL_16:

  return v18;
}

- (void)_getDriverConfig:(_NFDriverConfig *)a3
{
  *&a3->var2 = 0u;
  *&a3->var4 = 0u;
  *&a3->var0 = 0u;
  var2 = a3->var2;
  a3->var2 = 0;

  a3->var0 = "com.apple.spmi.nfc.hammerfest";
  a3->var3 = self->_flags | 0x80000;
  a3->var4 = self->_pollingPeriod;
  a3->var6 = self->_multiTagPollingPeriod;
  a3->var7 = self->_multiTagPollingRetries;
}

- (void)setDriverCallbacks
{
  driver = self->_driver;
  NFDriverSetCallback();
  v4 = self->_driver;
  NFDriverSetCallback();
  v5 = self->_driver;
  NFDriverSetCallback();
  v6 = self->_driver;
  NFDriverSetCallback();
  v7 = self->_driver;
  NFDriverSetCallback();
  v8 = self->_driver;
  NFDriverSetCallback();
  v9 = self->_driver;
  NFDriverSetCallback();
  v10 = self->_driver;

  NFDriverSetCallback();
}

- (BOOL)getControllerInfo:(id *)a3
{
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_driver)
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:v5 file:@"NFACDriverWrapper.m" lineNumber:1303 description:@"driver not open"];

    driver = v5->_driver;
  }

  v39 = 0u;
  memset(v40, 0, 28);
  ControllerInfo = NFDriverGetControllerInfo();
  if (ControllerInfo)
  {
    v28 = [NFHardwareControllerInfo alloc];
    v29[0] = @"siliconVersion";
    [NSNumber numberWithUnsignedInt:v39];
    v7 = v27 = a3;
    v30[0] = v7;
    v29[1] = @"siliconName";
    v8 = [NSNumber numberWithUnsignedInt:DWORD1(v39)];
    v30[1] = v8;
    v29[2] = @"ROMVersion";
    v9 = [NSNumber numberWithUnsignedInt:DWORD2(v39)];
    v30[2] = v9;
    v29[3] = @"firmwareVersion";
    v10 = [NSNumber numberWithUnsignedInt:HIDWORD(v39)];
    v30[3] = v10;
    v29[4] = @"firmwareRevision";
    v11 = [NSNumber numberWithUnsignedInt:v40[0]];
    v30[4] = v11;
    v29[5] = @"middlewareVersion";
    v12 = [NSNumber numberWithUnsignedInt:v40[1]];
    v30[5] = v12;
    v29[6] = @"hasMFW";
    v13 = [NSNumber numberWithBool:v5->_driver->var10];
    v30[6] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:7];
    *v27 = [(NFHardwareControllerInfo *)v28 initWithDictionary:v14];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v16 = Logger;
      Class = object_getClass(v5);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v5);
      Name = sel_getName(a2);
      v20 = 45;
      if (isMetaClass)
      {
        v20 = 43;
      }

      v16(3, "%c[%{public}s %{public}s]:%i Failed to get info", v20, ClassName, Name, 1307);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v21 = object_getClass(v5);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      *buf = 67109890;
      v32 = v22;
      v33 = 2082;
      v34 = object_getClassName(v5);
      v35 = 2082;
      v36 = sel_getName(a2);
      v37 = 1024;
      v38 = 1307;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get info", buf, 0x22u);
    }
  }

  objc_sync_exit(v5);
  return ControllerInfo;
}

- (BOOL)_writeSMCMultiTagEnabled:(BOOL)a3
{
  v3 = a3;
  v6 = IOServiceMatching("AppleSMCSensorDispatcher");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
  if (!MatchingService)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v21 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v25 = 45;
      if (isMetaClass)
      {
        v25 = 43;
      }

      v21(3, "%c[%{public}s %{public}s]:%i Failed to get AppleSMCSensorDispatcher", v25, ClassName, Name, 1329);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
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

      LODWORD(buf) = 67109890;
      HIDWORD(buf) = v28;
      *buf_8 = 2082;
      *&buf_8[2] = object_getClassName(self);
      *&buf_8[10] = 2082;
      *&buf_8[12] = sel_getName(a2);
      *&buf_8[20] = 1024;
      *&buf_8[22] = 1329;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get AppleSMCSensorDispatcher", &buf, 0x22u);
    }

    goto LABEL_23;
  }

  v8 = MatchingService;
  connect = 0;
  v9 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
  IOObjectRelease(v8);
  if (!v9)
  {
    buf = 1;
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    *&buf_8[24] = 0u;
    *buf_8 = 1313227587;
    *&buf_8[8] = v3;
    v30 = IOConnectCallStructMethod(connect, 3u, &buf, 0x58uLL, 0, 0);
    IOServiceClose(connect);
    v29 = v30 == 0;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFLogGetLogger();
    v32 = v31;
    if (v30)
    {
      if (v31)
      {
        v33 = object_getClass(self);
        v34 = class_isMetaClass(v33);
        v58 = object_getClassName(self);
        v61 = sel_getName(a2);
        v35 = 45;
        if (v34)
        {
          v35 = 43;
        }

        v32(3, "%c[%{public}s %{public}s]:%i Failed to write data to SMC - %x", v35, v58, v61, 1350, v30);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v36 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
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

      v39 = object_getClassName(self);
      v40 = sel_getName(a2);
      *v63 = 67110146;
      v64 = v38;
      v65 = 2082;
      v66 = v39;
      v67 = 2082;
      v68 = v40;
      v69 = 1024;
      v70 = 1350;
      v71 = 1024;
      LODWORD(v72) = v30;
      v41 = "%c[%{public}s %{public}s]:%i Failed to write data to SMC - %x";
      v42 = v36;
      v43 = OS_LOG_TYPE_ERROR;
      v44 = 40;
    }

    else
    {
      if (v31)
      {
        v45 = object_getClass(self);
        v46 = class_isMetaClass(v45);
        v47 = object_getClassName(self);
        v48 = sel_getName(a2);
        if (v3)
        {
          v49 = @"on";
        }

        else
        {
          v49 = @"off";
        }

        v50 = 45;
        if (v46)
        {
          v50 = 43;
        }

        v32(6, "%c[%{public}s %{public}s]:%i Sent notification to SMC about power %{public}@", v50, v47, v48, 1353, v49);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v36 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      v51 = object_getClass(self);
      if (class_isMetaClass(v51))
      {
        v52 = 43;
      }

      else
      {
        v52 = 45;
      }

      v53 = object_getClassName(self);
      v54 = sel_getName(a2);
      *v63 = 67110146;
      if (v3)
      {
        v55 = @"on";
      }

      else
      {
        v55 = @"off";
      }

      v64 = v52;
      v65 = 2082;
      v66 = v53;
      v67 = 2082;
      v68 = v54;
      v69 = 1024;
      v70 = 1353;
      v71 = 2114;
      v72 = v55;
      v41 = "%c[%{public}s %{public}s]:%i Sent notification to SMC about power %{public}@";
      v42 = v36;
      v43 = OS_LOG_TYPE_DEFAULT;
      v44 = 44;
    }

    _os_log_impl(&_mh_execute_header, v42, v43, v41, v63, v44);
LABEL_50:

    return v29;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFLogGetLogger();
  if (v10)
  {
    v11 = v10;
    v12 = object_getClass(self);
    v13 = class_isMetaClass(v12);
    v57 = object_getClassName(self);
    v59 = sel_getName(a2);
    v14 = 45;
    if (v13)
    {
      v14 = 43;
    }

    v11(3, "%c[%{public}s %{public}s]:%i Could not open service: %#x", v14, v57, v59, 1337, v9);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = object_getClass(self);
    if (class_isMetaClass(v16))
    {
      v17 = 43;
    }

    else
    {
      v17 = 45;
    }

    v18 = object_getClassName(self);
    v19 = sel_getName(a2);
    LODWORD(buf) = 67110146;
    HIDWORD(buf) = v17;
    *buf_8 = 2082;
    *&buf_8[2] = v18;
    *&buf_8[10] = 2082;
    *&buf_8[12] = v19;
    *&buf_8[20] = 1024;
    *&buf_8[22] = 1337;
    *&buf_8[26] = 1024;
    *&buf_8[28] = v9;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not open service: %#x", &buf, 0x28u);
  }

LABEL_23:
  LOBYTE(v29) = 0;
  return v29;
}

- (unint64_t)_openDriver:(BOOL *)a3
{
  if (self->_driver)
  {
    goto LABEL_2;
  }

  v12 = MKBDeviceUnlockedSinceBoot();
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

    v14(6, "%c[%{public}s %{public}s]:%i starting stack", v18, ClassName, Name, 1363);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = object_getClass(self);
    if (class_isMetaClass(v20))
    {
      v21 = 43;
    }

    else
    {
      v21 = 45;
    }

    v22 = object_getClassName(self);
    v23 = sel_getName(a2);
    LODWORD(buf) = 67109890;
    HIDWORD(buf) = v21;
    v96 = 2082;
    *v97 = v22;
    *&v97[8] = 2082;
    *&v97[10] = v23;
    v98 = 1024;
    v99 = 1363;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i starting stack", &buf, 0x22u);
  }

  v24 = NFSharedSignpostLog();
  if (os_signpost_enabled(v24))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFDriverOpen", &unk_1002E8B7A, &buf, 2u);
  }

  *&v97[6] = 0;
  [(NFACDriverWrapper *)self _getDriverConfig:&buf];
  v25 = NFDriverOpen();
  self->_driver = v25;
  if (v25)
  {
    [(NFACDriverWrapper *)self setDriverCallbacks];
    v26 = NFSharedSignpostLog();
    if (os_signpost_enabled(v26))
    {
      *v94 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverOpen", &unk_1002E8B7A, v94, 2u);
    }

    v27 = NFSharedSignpostLog();
    if (os_signpost_enabled(v27))
    {
      *v94 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "LoadStack", &unk_1002E8B7A, v94, 2u);
    }

    v28 = +[NFCALogger sharedCALogger];
    v29 = [v28 getTimestamp];
    driver = self->_driver;
    Stack = NFDriverLoadStack();
    v32 = [v28 getDurationFrom:v29];
    v33 = NFSharedSignpostLog();
    if (os_signpost_enabled(v33))
    {
      *v94 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "LoadStack", &unk_1002E8B7A, v94, 2u);
    }

    memset(v94, 0, 44);
    v34 = self->_driver;
    NFDriverGetControllerInfo();
    v35 = [v28 getHardwareTypeForCA:*&v94[4]];
    v36 = sub_10020E4DC();
    sub_10020E7CC(v36, v32, Stack, v35, v12 == 1);

    if (Stack <= 0x11)
    {
      if (((1 << Stack) & 0x34004) != 0)
      {
        v37 = self->_driver;
        NFDriverClose();
        self->_driver = 0;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v38 = NFLogGetLogger();
        v39 = v38;
        if (v12 == 1)
        {
          if (v38)
          {
            v40 = object_getClass(self);
            v41 = class_isMetaClass(v40);
            v42 = object_getClassName(self);
            v79 = sel_getName(a2);
            v43 = 45;
            if (v41)
            {
              v43 = 43;
            }

            v39(3, "%c[%{public}s %{public}s]:%i Failed to start stack: %d; recovery triggered", v43, v42, v79, 1428, Stack);
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

            *v84 = 67110146;
            v85 = v46;
            v86 = 2082;
            v87 = object_getClassName(self);
            v88 = 2082;
            v89 = sel_getName(a2);
            v90 = 1024;
            v91 = 1428;
            v92 = 1024;
            v93 = Stack;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to start stack: %d; recovery triggered", v84, 0x28u);
          }

          v47 = [NSString stringWithFormat:@"%du", Stack];
          v82[0] = @"FailureKey";
          v82[1] = @"Result";
          v83[0] = @"ttrFury";
          v48 = [NSNumber numberWithUnsignedInt:Stack];
          v83[1] = v48;
          v49 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:2];
          sub_100199CC4(NFBugCapture, @"Failed to start stack; FailForward triggered", v47, v49);

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            *v84 = 67240192;
            v85 = Stack;
            _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to start stack; FailForward triggered (result=%{public}du)", v84, 8u);
          }

          *a3 = 1;
        }

        else
        {
          if (v38)
          {
            v61 = object_getClass(self);
            v62 = class_isMetaClass(v61);
            v63 = object_getClassName(self);
            v80 = sel_getName(a2);
            v64 = 45;
            if (v62)
            {
              v64 = 43;
            }

            v39(3, "%c[%{public}s %{public}s]:%i Failed to start stack: %d; but not unlocked yet - postpone", v64, v63, v80, 1438, Stack);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v47 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
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

            *v84 = 67110146;
            v85 = v66;
            v86 = 2082;
            v87 = object_getClassName(self);
            v88 = 2082;
            v89 = sel_getName(a2);
            v90 = 1024;
            v91 = 1438;
            v92 = 1024;
            v93 = Stack;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to start stack: %d; but not unlocked yet - postpone", v84, 0x28u);
          }
        }

        sub_10022F438(NFDailyStatisticsCALogger, @"furyLoadStackErrorCount");
LABEL_58:

        return 2;
      }

      if (!Stack)
      {

LABEL_2:
        v4 = [(NFACDriverWrapper *)self delegate];
        [v4 handleStackLoad];

        [(NFReaderRestrictor *)self->_readerPolicy stackLoaded:0];
        v5 = [[NSDate alloc] initWithTimeIntervalSinceNow:0.0];
        lastPowerStateQuery = self->_lastPowerStateQuery;
        self->_lastPowerStateQuery = v5;

        v7 = self->_driver;
        NFDriverConfigureAutomaticMultiTagPolling();
        v8 = [(NFACDriverWrapper *)self setTypeATagDataRate:0];
        return 1;
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v68 = NFLogGetLogger();
    if (v68)
    {
      v69 = v68;
      v70 = object_getClass(self);
      v71 = class_isMetaClass(v70);
      v72 = object_getClassName(self);
      v81 = sel_getName(a2);
      v73 = 45;
      if (v71)
      {
        v73 = 43;
      }

      v69(3, "%c[%{public}s %{public}s]:%i Failed to start stack : %d", v73, v72, v81, 1445, Stack);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v74 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      v75 = object_getClass(self);
      if (class_isMetaClass(v75))
      {
        v76 = 43;
      }

      else
      {
        v76 = 45;
      }

      *v84 = 67110146;
      v85 = v76;
      v86 = 2082;
      v87 = object_getClassName(self);
      v88 = 2082;
      v89 = sel_getName(a2);
      v90 = 1024;
      v91 = 1445;
      v92 = 1024;
      v93 = Stack;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to start stack : %d", v84, 0x28u);
    }

    sub_10022F438(NFDailyStatisticsCALogger, @"furyLoadStackErrorCount");
    v77 = self->_driver;
    NFDriverClose();
    self->_driver = 0;
    goto LABEL_58;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v50 = NFLogGetLogger();
  if (v50)
  {
    v51 = v50;
    v52 = object_getClass(self);
    v53 = class_isMetaClass(v52);
    v54 = object_getClassName(self);
    v55 = sel_getName(a2);
    v56 = 45;
    if (v53)
    {
      v56 = 43;
    }

    v51(3, "%c[%{public}s %{public}s]:%i Failed to open device: %s", v56, v54, v55, 1378, buf);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v57 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    v58 = object_getClass(self);
    if (class_isMetaClass(v58))
    {
      v59 = 43;
    }

    else
    {
      v59 = 45;
    }

    *v94 = 67110146;
    *&v94[4] = v59;
    *&v94[8] = 2082;
    *&v94[10] = object_getClassName(self);
    *&v94[18] = 2082;
    *&v94[20] = sel_getName(a2);
    *&v94[28] = 1024;
    *&v94[30] = 1378;
    *&v94[34] = 2080;
    *&v94[36] = buf;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open device: %s", v94, 0x2Cu);
  }

  v60 = NFSharedSignpostLog();
  if (os_signpost_enabled(v60))
  {
    *v94 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v60, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverOpen", &unk_1002E8B7A, v94, 2u);
  }

  v9 = 2;
  return v9;
}

- (void)setPowerConsumptionMonitor:(id)a3
{
  v4 = a3;
  v5 = sub_10006841C([NFThermalMonitor alloc], v4);

  thermalMonitor = self->_thermalMonitor;
  self->_thermalMonitor = v5;

  v7 = [[NFLastOneReaderRestrictor alloc] initWithThermalMonitor:self->_thermalMonitor delegate:self];
  readerPolicy = self->_readerPolicy;
  self->_readerPolicy = &v7->super;

  _objc_release_x1(v7, readerPolicy);
}

- (id)_internalTagFromMultiTag:(_NFDriverRemoteTag *)a3
{
  if (!a3 || !a3->var4)
  {
    v6 = 0;
    goto LABEL_57;
  }

  v6 = objc_alloc_init(NFTagInternal);
  v7 = [[NSData alloc] initWithBytes:a3->var3 length:a3->var4];
  [v6 _setIdentifier:v7];
  var1 = a3->var1;
  if (var1 <= 5)
  {
    if (var1 > 2)
    {
      if (var1 == 3)
      {
        [v6 _setTechnology:4];
        v9 = v6;
        v10 = 7;
      }

      else if (var1 == 4)
      {
        [v6 _setTechnology:1];
        v9 = v6;
        v10 = 9;
      }

      else
      {
        [v6 _setTechnology:16];
        v9 = v6;
        v10 = 8;
      }

      goto LABEL_55;
    }

    if (var1 == 1)
    {
      [v6 _setTechnology:1];
      v9 = v6;
      v10 = 1;
      goto LABEL_55;
    }

    if (var1 == 2)
    {
      [v6 _setTechnology:2];
      v9 = v6;
      v10 = 4;
LABEL_55:
      [v9 _setType:v10];
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (var1 <= 8)
  {
    if (var1 == 6)
    {
      [v6 _setTechnology:1];
      v9 = v6;
      v10 = 11;
      goto LABEL_55;
    }

    if (var1 == 7)
    {
      [v6 _setTechnology:1];
      v9 = v6;
      v10 = 12;
      goto LABEL_55;
    }

LABEL_54:
    [v6 _setTechnology:0];
    v9 = v6;
    v10 = 0;
    goto LABEL_55;
  }

  switch(var1)
  {
    case 9:
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v23 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v27 = 45;
        if (isMetaClass)
        {
          v27 = 43;
        }

        v23(6, "%c[%{public}s %{public}s]:%i Found silent tag", v27, ClassName, Name, 1548);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
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
        v45 = v30;
        v46 = 2082;
        v47 = object_getClassName(self);
        v48 = 2082;
        v49 = sel_getName(a2);
        v50 = 1024;
        v51 = 1548;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found silent tag", buf, 0x22u);
      }

      [v6 _setTechnology:1];
      [v6 _setType:3];
      v20 = v6;
      v21 = 1;
      break;
    case 10:
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFLogGetLogger();
      if (v31)
      {
        v32 = v31;
        v33 = object_getClass(self);
        v34 = class_isMetaClass(v33);
        v35 = object_getClassName(self);
        v43 = sel_getName(a2);
        v36 = 45;
        if (v34)
        {
          v36 = 43;
        }

        v32(6, "%c[%{public}s %{public}s]:%i Found silent A2 tag", v36, v35, v43, 1554);
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

        *buf = 67109890;
        v45 = v39;
        v46 = 2082;
        v47 = object_getClassName(self);
        v48 = 2082;
        v49 = sel_getName(a2);
        v50 = 1024;
        v51 = 1554;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found silent A2 tag", buf, 0x22u);
      }

      [v6 _setTechnology:1];
      [v6 _setType:3];
      v20 = v6;
      v21 = 2;
      break;
    case 11:
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFLogGetLogger();
      if (v11)
      {
        v12 = v11;
        v13 = object_getClass(self);
        v14 = class_isMetaClass(v13);
        v15 = object_getClassName(self);
        v41 = sel_getName(a2);
        v16 = 45;
        if (v14)
        {
          v16 = 43;
        }

        v12(6, "%c[%{public}s %{public}s]:%i Found silent A3 tag", v16, v15, v41, 1560);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
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
        v45 = v19;
        v46 = 2082;
        v47 = object_getClassName(self);
        v48 = 2082;
        v49 = sel_getName(a2);
        v50 = 1024;
        v51 = 1560;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found silent A3 tag", buf, 0x22u);
      }

      [v6 _setTechnology:1];
      [v6 _setType:3];
      v20 = v6;
      v21 = 3;
      break;
    default:
      goto LABEL_54;
  }

  [v20 _setSilentType:v21];
LABEL_56:

LABEL_57:

  return v6;
}

- (void)handleReaderBurnoutTimer
{
  v2 = [(NFACDriverWrapper *)self delegate];
  [v2 handleReaderBurnoutTimer];
}

@end