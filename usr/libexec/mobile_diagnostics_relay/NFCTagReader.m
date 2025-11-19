@interface NFCTagReader
+ (id)sharedInstance;
- (BOOL)registerReadTagCallback:(id)a3;
- (NFCTagReader)init;
- (void)startReading;
- (void)stopReading;
- (void)tagReaderSession:(id)a3 didDetectTags:(id)a4;
- (void)tagReaderSession:(id)a3 didInvalidateWithError:(id)a4;
- (void)tagReaderSessionDidBecomeActive:(id)a3;
- (void)tryReadAgain:(id)a3;
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

- (BOOL)registerReadTagCallback:(id)a3
{
  v4 = a3;
  v5 = +[NFCNDEFReaderSession readingAvailable];
  if (v5)
  {
    v6 = objc_retainBlock(v4);
    callback = self->_callback;
    self->_callback = v6;

    [(NFCTagReader *)self startReading];
    v8 = [NSString stringWithFormat:@"Read tag callback is registered"];
    v9 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", &v11, 0xCu);
    }
  }

  else
  {
    v8 = [NSString stringWithFormat:@"NFC reading is not available on this device."];
    v9 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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
  v5 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v6, 0xCu);
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

- (void)tryReadAgain:(id)a3
{
  v4 = a3;
  if (self->_session == v4)
  {
    sleep(2u);
    v7 = [NSString stringWithFormat:@"Session %@ | Restart polling", v4];
    v8 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    [(NFCTagReaderSession *)v4 restartPolling];
  }

  else
  {
    v5 = [NSString stringWithFormat:@"Session %@ | tryReadAgain: possibly an old session, ignore it", v4];
    v6 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }
}

- (void)tagReaderSessionDidBecomeActive:(id)a3
{
  v4 = [NSString stringWithFormat:@"Session %@ | Became active", a3];
  v5 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }
}

- (void)tagReaderSession:(id)a3 didDetectTags:(id)a4
{
  v6 = a3;
  if (self->_session == v6)
  {
    v9 = [a4 firstObject];
    v10 = [NSString stringWithFormat:@"Session %@ | Detected NFC tag(s): %@", v6, v9];
    v11 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100007C3C;
    v12[3] = &unk_100020A38;
    v13 = v6;
    v14 = self;
    v15 = v9;
    v7 = v9;
    [(NFCTagReaderSession *)v13 connectToTag:v7 completionHandler:v12];

    p_super = &v13->super.super;
  }

  else
  {
    v7 = [NSString stringWithFormat:@"Session %@ | didDetectTags: possibly an old session, ignore it", v6];
    p_super = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }
}

- (void)tagReaderSession:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_session == v6)
  {
    if ([v7 code] != 200)
    {
      v11 = [v8 code];
      v12 = [v8 localizedDescription];
      v13 = [NSString stringWithFormat:@"Session %@ | invalidated due to code %ld: %@", v6, v11, v12];

      v14 = [(MDRBaseObject *)self logger];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v16 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      [(NFCTagReader *)self startReading];
    }
  }

  else
  {
    v9 = [NSString stringWithFormat:@"Session %@ | didDetectTags: possibly an old session, ignore it", v6];
    v10 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }
}

@end