@interface NFCTagReader
+ (id)sharedInstance;
- (BOOL)registerReadTagCallback:(id)callback;
- (NFCTagReader)init;
- (void)startReading;
- (void)stopReading;
- (void)tagReaderSession:(id)session didDetectTags:(id)tags;
- (void)tagReaderSession:(id)session didInvalidateWithError:(id)error;
- (void)tagReaderSessionDidBecomeActive:(id)active;
- (void)tryReadAgain:(id)again;
- (void)unregisterAll;
@end

@implementation NFCTagReader

- (NFCTagReader)init
{
  v10.receiver = self;
  v10.super_class = NFCTagReader;
  v2 = [(MDRBaseObject *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.MDR.nfcreaderQ", v3);
    readerQ = v2->_readerQ;
    v2->_readerQ = v4;

    v6 = dispatch_queue_create("com.apple.MDR.nfccallbackQ", v3);
    callbackQ = v2->_callbackQ;
    v2->_callbackQ = v6;

    v8 = v2;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1000264F0 != -1)
  {
    sub_1000134C0();
  }

  v3 = qword_1000264E8;

  return v3;
}

- (BOOL)registerReadTagCallback:(id)callback
{
  callbackCopy = callback;
  v5 = +[NFCNDEFReaderSession readingAvailable];
  if (v5)
  {
    v6 = objc_retainBlock(callbackCopy);
    callback = self->_callback;
    self->_callback = v6;

    [(NFCTagReader *)self startReading];
    v8 = [NSString stringWithFormat:@"Read tag callback is registered"];
    logger = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", &v11, 0xCu);
    }
  }

  else
  {
    v8 = [NSString stringWithFormat:@"NFC reading is not available on this device."];
    logger = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      sub_1000134D4();
    }
  }

  return v5;
}

- (void)unregisterAll
{
  callback = self->_callback;
  self->_callback = 0;

  [(NFCTagReader *)self stopReading];
  v4 = [NSString stringWithFormat:@"Read tag callback is unregistered"];
  logger = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", &v6, 0xCu);
  }
}

- (void)startReading
{
  readerQ = self->_readerQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007504;
  block[3] = &unk_1000208A8;
  block[4] = self;
  dispatch_async(readerQ, block);
}

- (void)stopReading
{
  readerQ = self->_readerQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000076EC;
  block[3] = &unk_1000208A8;
  block[4] = self;
  dispatch_async(readerQ, block);
}

- (void)tryReadAgain:(id)again
{
  againCopy = again;
  if (self->_session == againCopy)
  {
    sleep(2u);
    againCopy = [NSString stringWithFormat:@"Session %@ | Restart polling", againCopy];
    logger = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = againCopy;
      _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    [(NFCTagReaderSession *)againCopy restartPolling];
  }

  else
  {
    againCopy2 = [NSString stringWithFormat:@"Session %@ | tryReadAgain: possibly an old session, ignore it", againCopy];
    logger2 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = againCopy2;
      _os_log_impl(&_mh_execute_header, logger2, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }
}

- (void)tagReaderSessionDidBecomeActive:(id)active
{
  active = [NSString stringWithFormat:@"Session %@ | Became active", active];
  logger = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = active;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }
}

- (void)tagReaderSession:(id)session didDetectTags:(id)tags
{
  sessionCopy = session;
  if (self->_session == sessionCopy)
  {
    firstObject = [tags firstObject];
    v10 = [NSString stringWithFormat:@"Session %@ | Detected NFC tag(s): %@", sessionCopy, firstObject];
    logger = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100007C3C;
    v12[3] = &unk_100020A38;
    v13 = sessionCopy;
    selfCopy = self;
    v15 = firstObject;
    sessionCopy = firstObject;
    [(NFCTagReaderSession *)v13 connectToTag:sessionCopy completionHandler:v12];

    p_super = &v13->super.super;
  }

  else
  {
    sessionCopy = [NSString stringWithFormat:@"Session %@ | didDetectTags: possibly an old session, ignore it", sessionCopy];
    p_super = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = sessionCopy;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }
}

- (void)tagReaderSession:(id)session didInvalidateWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  v8 = errorCopy;
  if (self->_session == sessionCopy)
  {
    if ([errorCopy code] != 200)
    {
      code = [v8 code];
      localizedDescription = [v8 localizedDescription];
      v13 = [NSString stringWithFormat:@"Session %@ | invalidated due to code %ld: %@", sessionCopy, code, localizedDescription];

      logger = [(MDRBaseObject *)self logger];
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v16 = v13;
        _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      [(NFCTagReader *)self startReading];
    }
  }

  else
  {
    sessionCopy = [NSString stringWithFormat:@"Session %@ | didDetectTags: possibly an old session, ignore it", sessionCopy];
    logger2 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = sessionCopy;
      _os_log_impl(&_mh_execute_header, logger2, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }
}

@end