@interface _NFACReaderSession
- (_NFACReaderSession)initWithRemoteObject:(id)object workQueue:(id)queue;
- (double)_getMaxRFTimeLimitOverride;
- (id)_readTypeATagId:(id *)id;
- (id)_readTypeVTagId:(id *)id;
- (id)_send7816Command:(id)command error:(id *)error;
- (id)transceive:(id)transceive response:(id *)response maxTimeout:(double)timeout;
- (id)willStartSession;
- (void)_transceiveNTAG5VAccessoryCommand:(id)command callback:(id)callback;
- (void)_transceiveTypeAAccessoryCommand:(id)command callback:(id)callback;
- (void)checkNdefSupport:(id)support;
- (void)checkPresence:(id)presence;
- (void)cleanup;
- (void)connectTag:(id)tag callback:(id)callback;
- (void)didStartSession:(id)session;
- (void)disconnectTag:(id)tag;
- (void)enableContinuousWave:(BOOL)wave withFrequencySweep:(BOOL)sweep callback:(id)callback;
- (void)handleFieldChanged:(BOOL)changed;
- (void)handleReaderBurnoutCleared;
- (void)handleReaderBurnoutTimer;
- (void)handleRemoteTagsDetected:(id)detected;
- (void)readRawNdef:(id)ndef;
- (void)readTypeIdentifier:(id)identifier;
- (void)restartPolling:(id)polling;
- (void)setTagDataRate:(int64_t)rate callback:(id)callback;
- (void)startPolling:(id)polling;
- (void)stopPolling:(id)polling;
- (void)transceive:(id)transceive callback:(id)callback;
- (void)transceiveAccessoryCommand:(id)command callback:(id)callback;
@end

@implementation _NFACReaderSession

- (_NFACReaderSession)initWithRemoteObject:(id)object workQueue:(id)queue
{
  v5.receiver = self;
  v5.super_class = _NFACReaderSession;
  result = [(_NFACSession *)&v5 initWithRemoteObject:object workQueue:queue];
  if (result)
  {
    result->_tagDataRate = 0;
    result->_continuousWaveEnabled = 0;
  }

  return result;
}

- (id)willStartSession
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

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 106);
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
    v18 = v12;
    v19 = 2082;
    v20 = object_getClassName(self);
    v21 = 2082;
    v22 = sel_getName(a2);
    v23 = 1024;
    v24 = 106;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v16.receiver = self;
  v16.super_class = _NFACReaderSession;
  willStartSession = [(_NFACSession *)&v16 willStartSession];

  return willStartSession;
}

- (void)didStartSession:(id)session
{
  sessionCopy = session;
  v6 = NFSharedSignpostLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_READER_SESSION_START", &unk_1002E8B7A, buf, 2u);
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

    v8(6, "%c[%{public}s %{public}s]:%i ", v12, ClassName, Name, 113);
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
    *buf = 67109890;
    v37 = v15;
    v38 = 2082;
    v39 = v16;
    v40 = 2082;
    v41 = v17;
    v42 = 1024;
    v43 = 113;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v35.receiver = self;
  v35.super_class = _NFACReaderSession;
  [(_NFACSession *)&v35 didStartSession:sessionCopy];
  driverWrapper = [(_NFACSession *)self driverWrapper];
  v19 = sub_10004C268();
  v20 = [driverWrapper setRouting:v19];

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v21 = NFLogGetLogger();
  if (v21)
  {
    v22 = v21;
    v23 = object_getClass(self);
    v24 = class_isMetaClass(v23);
    v25 = object_getClassName(self);
    v34 = sel_getName(a2);
    v26 = 45;
    if (v24)
    {
      v26 = 43;
    }

    v22(6, "%c[%{public}s %{public}s]:%i Invoking didStartSessioncallback", v26, v25, v34, 118);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v27 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
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
    *buf = 67109890;
    v37 = v29;
    v38 = 2082;
    v39 = v30;
    v40 = 2082;
    v41 = v31;
    v42 = 1024;
    v43 = 118;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invoking didStartSessioncallback", buf, 0x22u);
  }

  remoteObject = [(_NFACSession *)self remoteObject];
  [remoteObject didStartSession:sessionCopy];
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

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 124);
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
    v23 = v12;
    v24 = 2082;
    v25 = object_getClassName(self);
    v26 = 2082;
    v27 = sel_getName(a2);
    v28 = 1024;
    v29 = 124;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v13 = NFSharedSignpostLog();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "cleanup", "_NFACReaderSession", buf, 2u);
  }

  if ([(_NFACSession *)self needsCleanup])
  {
    [(NFTimer *)self->_maxRFTimer stopTimer];
    if (self->_continuousWaveEnabled)
    {
      driverWrapper = [(_NFACSession *)self driverWrapper];
      v15 = [driverWrapper enableContinuousWave:0 withFrequencySweep:0];

      self->_continuousWaveEnabled = 0;
    }

    sub_1001AF894(self->_powerConsumptionReporter, self);
    driverWrapper2 = [(_NFACSession *)self driverWrapper];
    v17 = sub_10004C268();
    v18 = [driverWrapper2 setRouting:v17];
  }

  v21.receiver = self;
  v21.super_class = _NFACReaderSession;
  [(_NFACSession *)&v21 cleanup];
  v19 = NFSharedSignpostLog();
  if (os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "cleanup", "_NFACReaderSession", buf, 2u);
  }
}

- (void)handleRemoteTagsDetected:(id)detected
{
  detectedCopy = detected;
  v6 = NFSharedSignpostLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_READER_TAGS_DETECTED", &unk_1002E8B7A, buf, 2u);
  }

  if (self->_scanning)
  {
    self->_scanning = 0;
    v7 = NFSharedSignpostLog();
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "scanningForTags", &unk_1002E8B7A, buf, 2u);
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v9 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v12 = 45;
    if (isMetaClass)
    {
      v12 = 43;
    }

    v9(6, "%c[%{public}s %{public}s]:%i %{public}@", v12, ClassName, Name, 156, detectedCopy);
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
    *buf = 67110146;
    v22 = v15;
    v23 = 2082;
    v24 = v16;
    v25 = 2082;
    v26 = v17;
    v27 = 1024;
    v28 = 156;
    v29 = 2114;
    v30 = detectedCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  remoteObject = [(_NFACSession *)self remoteObject];
  [remoteObject didDetectTags:detectedCopy];
}

- (void)handleFieldChanged:(BOOL)changed
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

    v6(6, "%c[%{public}s %{public}s]:%i ", v10, ClassName, Name, 162);
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
    v22 = 162;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }
}

- (id)transceive:(id)transceive response:(id *)response maxTimeout:(double)timeout
{
  transceiveCopy = transceive;
  driverWrapper = [(_NFACSession *)self driverWrapper];
  curTag = self->_curTag;
  v15 = 0;
  v11 = [driverWrapper transceive:transceiveCopy tag:curTag maxTimeout:&v15 error:timeout];

  v12 = v15;
  v13 = v11;
  *response = v11;

  return v12;
}

- (void)enableContinuousWave:(BOOL)wave withFrequencySweep:(BOOL)sweep callback:(id)callback
{
  callbackCopy = callback;
  v17.receiver = self;
  v17.super_class = _NFACReaderSession;
  workQueue = [(_NFACSession *)&v17 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100058EAC;
  v12[3] = &unk_1003166D8;
  v13 = callbackCopy;
  v14 = a2;
  waveCopy = wave;
  sweepCopy = sweep;
  v12[4] = self;
  v11 = callbackCopy;
  dispatch_async(workQueue, v12);
}

- (void)startPolling:(id)polling
{
  pollingCopy = polling;
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

    v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 202);
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
    v22 = v14;
    v23 = 2082;
    v24 = object_getClassName(self);
    v25 = 2082;
    v26 = sel_getName(a2);
    v27 = 1024;
    v28 = 202;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v20.receiver = self;
  v20.super_class = _NFACReaderSession;
  workQueue = [(_NFACSession *)&v20 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100059588;
  block[3] = &unk_100316700;
  block[4] = self;
  v19 = pollingCopy;
  v16 = pollingCopy;
  dispatch_async(workQueue, block);
}

- (void)stopPolling:(id)polling
{
  pollingCopy = polling;
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

    v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 242);
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
    v22 = v14;
    v23 = 2082;
    v24 = object_getClassName(self);
    v25 = 2082;
    v26 = sel_getName(a2);
    v27 = 1024;
    v28 = 242;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v20.receiver = self;
  v20.super_class = _NFACReaderSession;
  workQueue = [(_NFACSession *)&v20 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100059C9C;
  block[3] = &unk_100316700;
  block[4] = self;
  v19 = pollingCopy;
  v16 = pollingCopy;
  dispatch_async(workQueue, block);
}

- (void)restartPolling:(id)polling
{
  pollingCopy = polling;
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

    v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 256);
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
    v22 = v14;
    v23 = 2082;
    v24 = object_getClassName(self);
    v25 = 2082;
    v26 = sel_getName(a2);
    v27 = 1024;
    v28 = 256;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v20.receiver = self;
  v20.super_class = _NFACReaderSession;
  workQueue = [(_NFACSession *)&v20 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100059FC8;
  block[3] = &unk_100316700;
  block[4] = self;
  v19 = pollingCopy;
  v16 = pollingCopy;
  dispatch_async(workQueue, block);
}

- (void)connectTag:(id)tag callback:(id)callback
{
  tagCopy = tag;
  callbackCopy = callback;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v10 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v10(6, "%c[%{public}s %{public}s]:%i tag: %{public}@", v13, ClassName, Name, 272, tagCopy);
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

    *buf = 67110146;
    v28 = v16;
    v29 = 2082;
    v30 = object_getClassName(self);
    v31 = 2082;
    v32 = sel_getName(a2);
    v33 = 1024;
    v34 = 272;
    v35 = 2114;
    v36 = tagCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i tag: %{public}@", buf, 0x2Cu);
  }

  v26.receiver = self;
  v26.super_class = _NFACReaderSession;
  workQueue = [(_NFACSession *)&v26 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005A340;
  block[3] = &unk_100316078;
  block[4] = self;
  v23 = tagCopy;
  v24 = callbackCopy;
  v25 = a2;
  v18 = callbackCopy;
  v19 = tagCopy;
  dispatch_async(workQueue, block);
}

- (void)disconnectTag:(id)tag
{
  tagCopy = tag;
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

    v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 324);
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
    v22 = v14;
    v23 = 2082;
    v24 = object_getClassName(self);
    v25 = 2082;
    v26 = sel_getName(a2);
    v27 = 1024;
    v28 = 324;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v20.receiver = self;
  v20.super_class = _NFACReaderSession;
  workQueue = [(_NFACSession *)&v20 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005AB30;
  block[3] = &unk_100316700;
  block[4] = self;
  v19 = tagCopy;
  v16 = tagCopy;
  dispatch_async(workQueue, block);
}

- (void)checkPresence:(id)presence
{
  presenceCopy = presence;
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

    v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 365);
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
    v23 = v14;
    v24 = 2082;
    v25 = object_getClassName(self);
    v26 = 2082;
    v27 = sel_getName(a2);
    v28 = 1024;
    v29 = 365;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v21.receiver = self;
  v21.super_class = _NFACReaderSession;
  workQueue = [(_NFACSession *)&v21 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B0F0;
  block[3] = &unk_100316050;
  block[4] = self;
  v19 = presenceCopy;
  v20 = a2;
  v16 = presenceCopy;
  dispatch_async(workQueue, block);
}

- (void)checkNdefSupport:(id)support
{
  supportCopy = support;
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

    v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 386);
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
    v22 = v14;
    v23 = 2082;
    v24 = object_getClassName(self);
    v25 = 2082;
    v26 = sel_getName(a2);
    v27 = 1024;
    v28 = 386;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v20.receiver = self;
  v20.super_class = _NFACReaderSession;
  workQueue = [(_NFACSession *)&v20 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B6F8;
  block[3] = &unk_100316700;
  block[4] = self;
  v19 = supportCopy;
  v16 = supportCopy;
  dispatch_async(workQueue, block);
}

- (void)readRawNdef:(id)ndef
{
  ndefCopy = ndef;
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

    v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 399);
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
    v22 = v14;
    v23 = 2082;
    v24 = object_getClassName(self);
    v25 = 2082;
    v26 = sel_getName(a2);
    v27 = 1024;
    v28 = 399;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v20.receiver = self;
  v20.super_class = _NFACReaderSession;
  workQueue = [(_NFACSession *)&v20 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005BA04;
  block[3] = &unk_100316700;
  block[4] = self;
  v19 = ndefCopy;
  v16 = ndefCopy;
  dispatch_async(workQueue, block);
}

- (void)transceive:(id)transceive callback:(id)callback
{
  transceiveCopy = transceive;
  callbackCopy = callback;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v10 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v10(6, "%c[%{public}s %{public}s]:%i ", v14, ClassName, Name, 423);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
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

    *buf = 67109890;
    v29 = v17;
    v30 = 2082;
    v31 = object_getClassName(self);
    v32 = 2082;
    v33 = sel_getName(a2);
    v34 = 1024;
    v35 = 423;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v27.receiver = self;
  v27.super_class = _NFACReaderSession;
  workQueue = [(_NFACSession *)&v27 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005BE6C;
  block[3] = &unk_100316078;
  v23 = transceiveCopy;
  selfCopy = self;
  v25 = callbackCopy;
  v26 = a2;
  v19 = callbackCopy;
  v20 = transceiveCopy;
  dispatch_async(workQueue, block);
}

- (double)_getMaxRFTimeLimitOverride
{
  v4 = 0.0;
  if (NFPlatformShouldLimitAccessoryReaderTime())
  {
    v5 = +[_NFACHardwareManager sharedHardwareManager];
    isWalletAttached = [v5 isWalletAttached];

    if (isWalletAttached)
    {
      v4 = 10.0;
    }

    else
    {
      v4 = 3.0;
    }
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

    v8(6, "%c[%{public}s %{public}s]:%i %f", v12, ClassName, Name, 461, *&v4);
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

    *buf = 67110146;
    v19 = v15;
    v20 = 2082;
    v21 = object_getClassName(self);
    v22 = 2082;
    v23 = sel_getName(a2);
    v24 = 1024;
    v25 = 461;
    v26 = 2048;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %f", buf, 0x2Cu);
  }

  return v4;
}

- (void)_transceiveTypeAAccessoryCommand:(id)command callback:(id)callback
{
  callbackCopy = callback;
  commandCopy = command;
  v8 = NFSharedSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "transceiveToTypeS", &unk_1002E8B7A, buf, 2u);
  }

  v39 = 0;
  v38 = 43520;
  v40 = bswap32([commandCopy length]) >> 16;
  v9 = [[NSMutableData alloc] initWithBytes:&v38 length:7];
  [v9 appendData:commandCopy];

  v37 = 0;
  [v9 appendBytes:&v37 length:2];
  driverWrapper = [(_NFACSession *)self driverWrapper];
  curTag = self->_curTag;
  v36 = 0;
  v12 = [driverWrapper transceive:v9 tag:curTag maxTimeout:&v36 error:2.0];
  v13 = v36;

  v14 = [NFResponseAPDU responseWithData:v12];
  v15 = v14;
  if (v14 && [v14 status] == 36864)
  {
    response = [v15 response];
    callbackCopy[2](callbackCopy, response, 0);

    v17 = v13;
  }

  else
  {
    v18 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v53 = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithUTF8String:"Command Error"];
    v54 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v17 = [v18 initWithDomain:v19 code:16 userInfo:v21];

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

      v23(3, "%c[%{public}s %{public}s]:%i Command failed: %{public}@   error:%{public}@", v27, ClassName, Name, 493, v9, v17);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
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

      v31 = object_getClassName(self);
      v32 = sel_getName(a2);
      *buf = 67110402;
      v42 = v30;
      v43 = 2082;
      v44 = v31;
      v45 = 2082;
      v46 = v32;
      v47 = 1024;
      v48 = 493;
      v49 = 2114;
      v50 = v9;
      v51 = 2114;
      v52 = v17;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command failed: %{public}@   error:%{public}@", buf, 0x36u);
    }

    (callbackCopy)[2](callbackCopy, 0, v17);
  }

  v33 = NFSharedSignpostLog();
  if (os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToTypeS", &unk_1002E8B7A, buf, 2u);
  }
}

- (void)_transceiveNTAG5VAccessoryCommand:(id)command callback:(id)callback
{
  commandCopy = command;
  callbackCopy = callback;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v10 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v10(6, "%c[%{public}s %{public}s]:%i ", v14, ClassName, Name, 505);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
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

    *buf = 67109890;
    v98 = v17;
    v99 = 2082;
    v100 = object_getClassName(self);
    v101 = 2082;
    v102 = sel_getName(a2);
    v103 = 1024;
    v104 = 505;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v18 = NFSharedSignpostLog();
  if (os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c", &unk_1002E8B7A, buf, 2u);
  }

  v19 = [[NFAccessoryTagI2CBridge alloc] initWithType:0 delegate:self];
  tagID = [(NFTagInternal *)self->_curTag tagID];
  [v19 setTagUUID:tagID];

  [v19 setSelected:self->_tagSelected];
  if (!self->_tagSelected)
  {
    selectTag = [v19 selectTag];
    if (selectTag)
    {
      v22 = selectTag;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v24 = v23;
        v25 = object_getClass(self);
        v26 = class_isMetaClass(v25);
        v81 = object_getClassName(self);
        v84 = sel_getName(a2);
        v27 = 45;
        if (v26)
        {
          v27 = 43;
        }

        v24(3, "%c[%{public}s %{public}s]:%i Tag selection failed, status=0x%{public}@", v27, v81, v84, 518, v22);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
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

        v31 = object_getClassName(self);
        v32 = sel_getName(a2);
        *buf = 67110146;
        v98 = v30;
        v99 = 2082;
        v100 = v31;
        v101 = 2082;
        v102 = v32;
        v103 = 1024;
        v104 = 518;
        v105 = 2114;
        v106 = v22;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag selection failed, status=0x%{public}@", buf, 0x2Cu);
      }

      v33 = [NSError alloc];
      v34 = [NSString stringWithUTF8String:"nfcd"];
      v95 = NSLocalizedDescriptionKey;
      v35 = [NSString stringWithUTF8String:"Tag Error"];
      v96 = v35;
      v36 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];
      v37 = [v33 initWithDomain:v34 code:29 userInfo:v36];
      callbackCopy[2](callbackCopy, 0, v37);

      v38 = NFSharedSignpostLog();
      if (os_signpost_enabled(v38))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c", &unk_1002E8B7A, buf, 2u);
      }

      goto LABEL_56;
    }

    self->_tagSelected = 1;
  }

  v90 = 0;
  v39 = [v19 writeToBridge:commandCopy fragmentationSupport:1 response:&v90];
  v40 = v90;
  v38 = v40;
  v88 = callbackCopy;
  if (v39)
  {
    v86 = v39;
    v41 = a2;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v42 = NFLogGetLogger();
    if (v42)
    {
      v43 = v42;
      v44 = object_getClass(self);
      v45 = commandCopy;
      v46 = class_isMetaClass(v44);
      v47 = object_getClassName(self);
      v48 = sel_getName(v41);
      nF_asHexString = [v38 NF_asHexString];
      v50 = !v46;
      commandCopy = v45;
      v51 = 45;
      if (!v50)
      {
        v51 = 43;
      }

      v43(3, "%c[%{public}s %{public}s]:%i Failed to write payload, status=0x%{public}@", v51, v47, v48, 529, nF_asHexString);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v52 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = object_getClass(self);
      v54 = commandCopy;
      if (class_isMetaClass(v53))
      {
        v55 = 43;
      }

      else
      {
        v55 = 45;
      }

      v56 = object_getClassName(self);
      v57 = sel_getName(v41);
      nF_asHexString2 = [v38 NF_asHexString];
      *buf = 67110146;
      v98 = v55;
      commandCopy = v54;
      v99 = 2082;
      v100 = v56;
      v101 = 2082;
      v102 = v57;
      v103 = 1024;
      v104 = 529;
      v105 = 2114;
      v106 = nF_asHexString2;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to write payload, status=0x%{public}@", buf, 0x2Cu);
    }

    v59 = [NSError alloc];
    v60 = [NSString stringWithUTF8String:"nfcd"];
    v93 = NSLocalizedDescriptionKey;
    v61 = [NSString stringWithUTF8String:"Tag Error"];
    v94 = v61;
    v62 = [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];
    v63 = [v59 initWithDomain:v60 code:29 userInfo:v62];
    v88[2](v88, 0, v63);

    v64 = NFSharedSignpostLog();
    if (os_signpost_enabled(v64))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v64, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c", &unk_1002E8B7A, buf, 2u);
    }

    v22 = v86;
    callbackCopy = v88;
  }

  else
  {
    v89 = v40;
    v22 = [v19 readFromBridge:0 fragmentationSupport:1 response:&v89];
    v65 = v89;

    if (v22)
    {
      v87 = v65;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v66 = NFLogGetLogger();
      if (v66)
      {
        v67 = v66;
        v68 = object_getClass(self);
        v69 = class_isMetaClass(v68);
        v82 = object_getClassName(self);
        v85 = sel_getName(a2);
        v70 = 45;
        if (v69)
        {
          v70 = 43;
        }

        v67(3, "%c[%{public}s %{public}s]:%i Failed to read payload, error=%{public}@", v70, v82, v85, 537, v22);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v71 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
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
        *buf = 67110146;
        v98 = v73;
        v99 = 2082;
        v100 = v74;
        v101 = 2082;
        v102 = v75;
        v103 = 1024;
        v104 = 537;
        v105 = 2114;
        v106 = v22;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to read payload, error=%{public}@", buf, 0x2Cu);
      }

      v76 = [NSError alloc];
      v77 = [NSString stringWithUTF8String:"nfcd"];
      v91 = NSLocalizedDescriptionKey;
      v78 = [NSString stringWithUTF8String:"Tag Error"];
      v92 = v78;
      v79 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
      v80 = [v76 initWithDomain:v77 code:29 userInfo:v79];
      v88[2](v88, 0, v80);

      v64 = NFSharedSignpostLog();
      if (os_signpost_enabled(v64))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v64, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c", &unk_1002E8B7A, buf, 2u);
      }

      v38 = v87;
      callbackCopy = v88;
    }

    else
    {
      (callbackCopy)[2](callbackCopy, v65, 0);
      v64 = NFSharedSignpostLog();
      if (os_signpost_enabled(v64))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v64, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c", &unk_1002E8B7A, buf, 2u);
        v22 = 0;
      }

      v38 = v65;
    }
  }

LABEL_56:
}

- (void)transceiveAccessoryCommand:(id)command callback:(id)callback
{
  commandCopy = command;
  callbackCopy = callback;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v10 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v10(6, "%c[%{public}s %{public}s]:%i ", v14, ClassName, Name, 554);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
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

    *buf = 67109890;
    v28 = v17;
    v29 = 2082;
    v30 = object_getClassName(self);
    v31 = 2082;
    v32 = sel_getName(a2);
    v33 = 1024;
    v34 = 554;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v26.receiver = self;
  v26.super_class = _NFACReaderSession;
  workQueue = [(_NFACSession *)&v26 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005D468;
  block[3] = &unk_1003165E8;
  v24 = callbackCopy;
  v25 = a2;
  block[4] = self;
  v23 = commandCopy;
  v19 = commandCopy;
  v20 = callbackCopy;
  dispatch_async(workQueue, block);
}

- (id)_readTypeVTagId:(id *)id
{
  v5 = [NSData NF_dataWithHexString:@"02230003"];
  driverWrapper = [(_NFACSession *)self driverWrapper];
  curTag = self->_curTag;
  v19 = 0;
  v8 = [driverWrapper transceive:v5 tag:curTag maxTimeout:&v19 error:2.0];
  v9 = v19;

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10 || [v8 length] <= 0xF)
  {
    v11 = [NSError alloc];
    v12 = [NSString stringWithUTF8String:"nfcd"];
    v22 = NSLocalizedDescriptionKey;
    v13 = [NSString stringWithUTF8String:"Command Error"];
    v23 = v13;
    v14 = &v23;
    v15 = &v22;
LABEL_7:
    v16 = [NSDictionary dictionaryWithObjects:v14 forKeys:v15 count:1];
    *id = [v11 initWithDomain:v12 code:16 userInfo:v16];

    v17 = 0;
    goto LABEL_8;
  }

  if ([v8 length] < 0x10)
  {
    v11 = [NSError alloc];
    v12 = [NSString stringWithUTF8String:"nfcd"];
    v20 = NSLocalizedDescriptionKey;
    v13 = [NSString stringWithUTF8String:"Command Error"];
    v21 = v13;
    v14 = &v21;
    v15 = &v20;
    goto LABEL_7;
  }

  v17 = [v8 subdataWithRange:{objc_msgSend(v8, "length") - 6, 4}];
LABEL_8:

  return v17;
}

- (id)_send7816Command:(id)command error:(id *)error
{
  commandCopy = command;
  v7 = [NSData NF_dataWithHexString:commandCopy];
  driverWrapper = [(_NFACSession *)self driverWrapper];
  v9 = [driverWrapper transceive:v7 tag:self->_curTag maxTimeout:error error:2.0];

  v10 = [NFResponseAPDU responseWithData:v9];
  v11 = v10;
  if (v10 && [v10 status] == 36864)
  {
    v12 = v11;
  }

  else
  {
    if (!*error)
    {
      v13 = [NSError alloc];
      v14 = [NSString stringWithUTF8String:"nfcd"];
      v44 = NSLocalizedDescriptionKey;
      v15 = [NSString stringWithUTF8String:"Command Error"];
      v45 = v15;
      v16 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      *error = [v13 initWithDomain:v14 code:16 userInfo:v16];
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
      v23 = 45;
      if (isMetaClass)
      {
        v23 = 43;
      }

      v18(3, "%c[%{public}s %{public}s]:%i Command failed: %{public}@   error:%{public}@", v23, ClassName, Name, 622, commandCopy, *error);
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
      v29 = *error;
      *buf = 67110402;
      v33 = v26;
      v34 = 2082;
      v35 = v27;
      v36 = 2082;
      v37 = v28;
      v38 = 1024;
      v39 = 622;
      v40 = 2114;
      v41 = commandCopy;
      v42 = 2114;
      v43 = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command failed: %{public}@   error:%{public}@", buf, 0x36u);
    }

    v12 = 0;
  }

  return v12;
}

- (id)_readTypeATagId:(id *)id
{
  idCopy = id;
  v6 = [(_NFACReaderSession *)self _send7816Command:@"00A4040007D276000085010100" error:id];
  if (v6)
  {
    v7 = v6;
    v8 = [(_NFACReaderSession *)self _send7816Command:@"00A4000C02E103" error:idCopy];

    if (v8)
    {
      v9 = [(_NFACReaderSession *)self _send7816Command:@"00B0000000" error:idCopy];

      if (v9)
      {
        response = [v9 response];
        if ([response length] >= 2 && (v11 = *(objc_msgSend(response, "bytes") + 1), v11 >= 4) && objc_msgSend(response, "length") >= v11)
        {
          idCopy = [response subdataWithRange:{(v11 - 4), 4}];
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

            v18(6, "%c[%{public}s %{public}s]:%i id: %{public}@", v21, ClassName, Name, 656, idCopy);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v13 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
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

            *buf = 67110146;
            v29 = v23;
            v30 = 2082;
            v31 = object_getClassName(self);
            v32 = 2082;
            v33 = sel_getName(a2);
            v34 = 1024;
            v35 = 656;
            v36 = 2114;
            v37 = idCopy;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i id: %{public}@", buf, 0x2Cu);
          }
        }

        else
        {
          if (!idCopy)
          {
LABEL_10:

            goto LABEL_12;
          }

          v12 = [NSError alloc];
          v13 = [NSString stringWithUTF8String:"nfcd"];
          v26 = NSLocalizedDescriptionKey;
          v14 = [NSString stringWithUTF8String:"Command Error"];
          v27 = v14;
          v15 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          *idCopy = [v12 initWithDomain:v13 code:16 userInfo:v15];

          idCopy = 0;
        }

        goto LABEL_10;
      }
    }
  }

  idCopy = 0;
LABEL_12:

  return idCopy;
}

- (void)readTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
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

    v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 669);
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
    v23 = v14;
    v24 = 2082;
    v25 = object_getClassName(self);
    v26 = 2082;
    v27 = sel_getName(a2);
    v28 = 1024;
    v29 = 669;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v21.receiver = self;
  v21.super_class = _NFACReaderSession;
  workQueue = [(_NFACSession *)&v21 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005E25C;
  block[3] = &unk_100316050;
  v19 = identifierCopy;
  v20 = a2;
  block[4] = self;
  v16 = identifierCopy;
  dispatch_async(workQueue, block);
}

- (void)setTagDataRate:(int64_t)rate callback:(id)callback
{
  callbackCopy = callback;
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

    v9(6, "%c[%{public}s %{public}s]:%i ", v13, ClassName, Name, 698);
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
    v26 = v16;
    v27 = 2082;
    v28 = object_getClassName(self);
    v29 = 2082;
    v30 = sel_getName(a2);
    v31 = 1024;
    v32 = 698;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v24.receiver = self;
  v24.super_class = _NFACReaderSession;
  workQueue = [(_NFACSession *)&v24 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005E7F0;
  block[3] = &unk_1003169E0;
  v22 = a2;
  rateCopy = rate;
  block[4] = self;
  v21 = callbackCopy;
  v18 = callbackCopy;
  dispatch_async(workQueue, block);
}

- (void)handleReaderBurnoutTimer
{
  v5.receiver = self;
  v5.super_class = _NFACReaderSession;
  workQueue = [(_NFACSession *)&v5 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005EB74;
  block[3] = &unk_100315F30;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)handleReaderBurnoutCleared
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

    v5(6, "%c[%{public}s %{public}s]:%i Warning : message received - session should be gone.", v9, ClassName, Name, 731);
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
    v21 = 731;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Warning : message received - session should be gone.", buf, 0x22u);
  }
}

@end