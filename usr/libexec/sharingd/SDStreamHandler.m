@interface SDStreamHandler
- (BOOL)evaluateCert;
- (BOOL)shouldReadNetwork;
- (SDStreamHandler)initWithInputStream:(id)a3 outputStream:(id)a4 isClient:(BOOL)a5;
- (SDStreamHandlerDelegate)delegate;
- (id)headerWithLength:(unsigned int)a3;
- (id)messageWithData:(id)a3;
- (id)trimHeader:(id)a3;
- (unsigned)parseHeader:(id)a3;
- (void)_stop;
- (void)applySSLSettings:(id)a3;
- (void)dealloc;
- (void)handleBytesAvailable;
- (void)handleBytesForMessage;
- (void)handleBytesForStream;
- (void)handleHeaderRead;
- (void)handleMessageRead;
- (void)handleMessageWritten:(id)a3;
- (void)handleOpenedStream:(id)a3;
- (void)handleSpaceAvailable;
- (void)handleSpaceForMessage;
- (void)handleSpaceForStream;
- (void)invalidateOpenTimer;
- (void)logTransfer;
- (void)openTimerFired:(id)a3;
- (void)resetReadState;
- (void)sendMessage:(id)a3 withCompletionHandler:(id)a4;
- (void)sendMessage:(id)a3 withErrorHandler:(id)a4;
- (void)setShouldReadNetwork:(BOOL)a3;
- (void)setTCPProperties:(id)a3;
- (void)start;
- (void)startOpenTimer;
- (void)stop;
- (void)stopIfReady;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
- (void)writeToStreamWithData:(id)a3;
@end

@implementation SDStreamHandler

- (SDStreamHandler)initWithInputStream:(id)a3 outputStream:(id)a4 isClient:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v29.receiver = self;
  v29.super_class = SDStreamHandler;
  v11 = [(SDStreamHandler *)&v29 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_inputStream, a3);
    objc_storeStrong(&v12->_outputStream, a4);
    v12->_client = a5;
    v12->_byteIndex = 0;
    v12->_bytesRead = 0;
    bundleID = v12->_bundleID;
    v12->_bundleID = &stru_1008EFBD0;

    inMessage = v12->_inMessage;
    v12->_inMessage = 0;

    v12->_shouldStop = 0;
    openTimer = v12->_openTimer;
    v12->_openTimer = 0;

    outMessage = v12->_outMessage;
    v12->_outMessage = 0;

    v12->_checkedCert = 0;
    streamError = v12->_streamError;
    v12->_streamError = 0;

    v12->_inMessageLength = 0;
    *&v12->_registeredStreams = 256;
    *&v12->_shouldReadNetwork = 257;
    v18 = objc_opt_new();
    inData = v12->_inData;
    v12->_inData = v18;

    v20 = objc_opt_new();
    messageQueue = v12->_messageQueue;
    v12->_messageQueue = v20;

    v22 = objc_opt_new();
    handlers = v12->_handlers;
    v12->_handlers = v22;

    v24 = objc_opt_new();
    outputStreamData = v12->_outputStreamData;
    v12->_outputStreamData = v24;

    v12->_inputState = 0;
    timeToOpen = v12->_timeToOpen;
    v12->_timeToOpen = 0;

    timeOpened = v12->_timeOpened;
    v12->_timeOpened = 0;

    v12->_loggedTransfer = 0;
    v12->_wroteToNetwork = 0;
    v12->_readFromNetwork = 0;
  }

  return v12;
}

- (void)dealloc
{
  v3 = streams_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ Deallocating Stream Handler", buf, 0xCu);
  }

  [(SDStreamHandler *)self _stop];
  v4.receiver = self;
  v4.super_class = SDStreamHandler;
  [(SDStreamHandler *)&v4 dealloc];
}

- (void)start
{
  if (![(NSInputStream *)self->_inputStream streamStatus])
  {
    [(SDStreamHandler *)self applySSLSettings:self->_inputStream];
    inputStream = self->_inputStream;
    v4 = +[NSRunLoop currentRunLoop];
    [(NSInputStream *)inputStream scheduleInRunLoop:v4 forMode:NSDefaultRunLoopMode];

    [(NSInputStream *)self->_inputStream setProperty:&__kCFBooleanFalse forKey:kCFStreamPropertyAutoErrorOnSystemChange];
    [(NSInputStream *)self->_inputStream setProperty:&__kCFBooleanTrue forKey:kCFStreamPropertyIndefiniteConnection];
    if (!self->_client)
    {
      [(NSInputStream *)self->_inputStream setProperty:&off_10090BEB0 forKey:_kCFStreamPropertySSLClientSideAuthentication];
    }

    [(NSInputStream *)self->_inputStream setDelegate:self];
    [(NSInputStream *)self->_inputStream open];
  }

  if (![(NSOutputStream *)self->_outputStream streamStatus])
  {
    [(SDStreamHandler *)self applySSLSettings:self->_outputStream];
    outputStream = self->_outputStream;
    v6 = +[NSRunLoop currentRunLoop];
    [(NSOutputStream *)outputStream scheduleInRunLoop:v6 forMode:NSDefaultRunLoopMode];

    [(NSOutputStream *)self->_outputStream setProperty:&__kCFBooleanFalse forKey:kCFStreamPropertyAutoErrorOnSystemChange];
    [(NSOutputStream *)self->_outputStream setProperty:&__kCFBooleanTrue forKey:kCFStreamPropertyIndefiniteConnection];
    if (!self->_client)
    {
      [(NSInputStream *)self->_inputStream setProperty:&off_10090BEB0 forKey:_kCFStreamPropertySSLClientSideAuthentication];
    }

    [(NSOutputStream *)self->_outputStream setDelegate:self];
    [(NSOutputStream *)self->_outputStream open];
  }

  v7 = +[NSDate date];
  timeToOpen = self->_timeToOpen;
  self->_timeToOpen = v7;

  if (!self->_registeredStreams)
  {
    v9 = +[SDStreamManager sharedManager];
    [v9 registerConnectedStreams];

    self->_registeredStreams = 1;
  }

  [(SDStreamHandler *)self startOpenTimer];
  v10 = streams_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Creating network streams", v11, 2u);
  }
}

- (void)stop
{
  if ([(SDStreamHandler *)self usingMessages])
  {

    [(SDStreamHandler *)self _stop];
  }

  else
  {
    self->_shouldStop = 1;

    [(SDStreamHandler *)self stopIfReady];
  }
}

- (void)stopIfReady
{
  if (self->_shouldStop && ![(NSMutableData *)self->_outputStreamData length])
  {

    [(SDStreamHandler *)self _stop];
  }
}

- (void)_stop
{
  if (self->_inputStream)
  {
    v3 = streams_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ Closing input stream", &v13, 0xCu);
    }

    [(NSInputStream *)self->_inputStream close];
    [(NSInputStream *)self->_inputStream setDelegate:0];
    inputStream = self->_inputStream;
    self->_inputStream = 0;
  }

  outputStream = self->_outputStream;
  if (outputStream)
  {
    [(NSOutputStream *)outputStream close];
    [(NSOutputStream *)self->_outputStream setDelegate:0];
    v6 = streams_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ Closing output stream", &v13, 0xCu);
    }

    v7 = self->_outputStream;
    self->_outputStream = 0;
  }

  if (self->_registeredStreams)
  {
    v8 = +[SDStreamManager sharedManager];
    [v8 unregisterConnectedStreams];

    self->_registeredStreams = 0;
  }

  [(SDStreamHandler *)self logTransfer];
  v9 = streams_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Network streams closed", &v13, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 streamHandlerDidClose:self withError:self->_streamError];
  }
}

- (BOOL)shouldReadNetwork
{
  v2 = self;
  objc_sync_enter(v2);
  shouldReadNetwork = v2->_shouldReadNetwork;
  objc_sync_exit(v2);

  return shouldReadNetwork;
}

- (void)setShouldReadNetwork:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  obj->_shouldReadNetwork = v3;
  if (v3 && [(NSInputStream *)obj->_inputStream hasBytesAvailable]&& ![(SDStreamHandler *)obj usingMessages])
  {
    [(SDStreamHandler *)obj handleBytesForStream];
  }

  objc_sync_exit(obj);
}

- (void)logTransfer
{
  wroteToNetwork = self->_wroteToNetwork;
  readFromNetwork = self->_readFromNetwork;
  if (self->_timeOpened)
  {
    v5 = +[NSDate date];
    [v5 timeIntervalSinceDate:self->_timeOpened];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  if (!self->_loggedTransfer)
  {
    v8 = readFromNetwork + wroteToNetwork;
    v9 = !self->_bundleID || v8 == 0;
    if (!v9 && v7 != 0.0)
    {
      v10 = streams_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(NSString *)self->_bundleID isEqualToString:&stru_1008EFBD0];
        v12 = v11;
        if (v11)
        {
          bundleID = self->_bundleID;
        }

        else
        {
          bundleID = [NSString stringWithFormat:@", bundleID = %@", self->_bundleID];
        }

        *buf = 134218498;
        v15 = v8;
        v16 = 2048;
        v17 = v7;
        v18 = 2112;
        v19 = bundleID;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Stream Stats: total bytes transferred = %ld, duration = %g%@", buf, 0x20u);
        if ((v12 & 1) == 0)
        {
        }
      }

      sub_10008746C(self->_bundleID, v8, v7);
      self->_loggedTransfer = 1;
    }
  }
}

- (void)startOpenTimer
{
  v3 = streams_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = 30;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting open timer with timeout = %d", v6, 8u);
  }

  v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"openTimerFired:" selector:0 userInfo:0 repeats:30.0];
  openTimer = self->_openTimer;
  self->_openTimer = v4;
}

- (void)openTimerFired:(id)a3
{
  if (![(NSInputStream *)self->_inputStream streamStatus]|| [(NSInputStream *)self->_inputStream streamStatus]== 1 || ![(NSOutputStream *)self->_outputStream streamStatus]|| [(NSOutputStream *)self->_outputStream streamStatus]== 1)
  {
    v4 = streams_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSInputStream *)self->_inputStream streamStatus];
      v6 = [(NSOutputStream *)self->_outputStream streamStatus];
      *buf = 67109376;
      v14 = v5;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Open timer fired with input stream status = %d, output stream status = %d, closing streams", buf, 0xEu);
    }

    v11 = NSLocalizedDescriptionKey;
    v12 = @"Connection timed out";
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:60 userInfo:v7];
    streamError = self->_streamError;
    self->_streamError = v8;

    [(SDStreamHandler *)self _stop];
  }

  openTimer = self->_openTimer;
  self->_openTimer = 0;
}

- (void)invalidateOpenTimer
{
  if (self->_openTimer)
  {
    v3 = streams_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Streams invalidating open timer", v5, 2u);
    }

    [(NSTimer *)self->_openTimer invalidate];
    openTimer = self->_openTimer;
    self->_openTimer = 0;
  }
}

- (void)applySSLSettings:(id)a3
{
  v4 = a3;
  v5 = +[SDStatusMonitor sharedMonitor];
  v6 = [v5 disableContinuityTLS];

  if ((v6 & 1) == 0)
  {
    v7 = +[SDStatusMonitor sharedMonitor];
    v8 = [v7 copyMyAppleIDSecIdentity];

    if (v8)
    {
      v9 = +[SDStatusMonitor sharedMonitor];
      v10 = [v9 copyMyAppleIDIntermediateCertificate];

      if (v10)
      {
        v21[0] = v8;
        v21[1] = v10;
        v11 = [NSArray arrayWithObjects:v21 count:2];
        v19[0] = kCFStreamSSLLevel;
        v19[1] = kCFStreamSSLCertificates;
        v20[0] = kCFStreamSocketSecurityLevelTLSv1;
        v20[1] = v11;
        v19[2] = kCFStreamSSLValidatesCertificateChain;
        v19[3] = kCFStreamSSLIsServer;
        if (self->_client)
        {
          v12 = kCFBooleanFalse;
        }

        else
        {
          v12 = kCFBooleanTrue;
        }

        v20[2] = kCFBooleanFalse;
        v20[3] = v12;
        v13 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
        v14 = streams_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Applying tls settings", v18, 2u);
        }

        [v4 setProperty:v13 forKey:kCFStreamPropertySSLSettings];
        CFRelease(v10);
      }

      else
      {
        v16 = +[SDStatusMonitor sharedMonitor];
        v17 = [v16 myAppleID];
        SFMetricsLogUnexpectedEvent();

        v11 = streams_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1001B8D40();
        }
      }

      CFRelease(v8);
    }

    else
    {
      v15 = streams_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1001B8D74();
      }
    }
  }
}

- (BOOL)evaluateCert
{
  v2 = [(NSInputStream *)self->_inputStream propertyForKey:kCFStreamPropertySSLPeerTrust];
  if (v2)
  {
    v3 = sub_100091420(v2);
    if ([v3 count])
    {
      v16 = 0;
      if (!SFAppleIDVerifyCertificateChainSync())
      {
        v4 = streams_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_1001B8DA8(&v16);
        }

        v5 = 0;
        goto LABEL_29;
      }

      [v3 objectAtIndexedSubscript:0];

      v15 = 0;
      v7 = SFAppleIDCommonNameForCertificate();
      v4 = 0;
      v16 = v7;
      if (v7)
      {
        v8 = streams_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1001B8E20(&v16);
        }

        v5 = 0;
        goto LABEL_28;
      }

      v9 = +[SDStatusMonitor sharedMonitor];
      v8 = [v9 myAppleIDCommonName];

      if ([v8 length])
      {
        v10 = [v4 isEqualToString:v8];
        v11 = streams_log();
        v12 = v11;
        if (v10)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *v14 = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Accounts match", v14, 2u);
          }

          v5 = 1;
          goto LABEL_27;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1001B8E98();
        }
      }

      else
      {
        v12 = streams_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1001B8ECC();
        }
      }

      v5 = 0;
LABEL_27:

LABEL_28:
LABEL_29:

      goto LABEL_30;
    }

    v6 = streams_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001B8F00();
    }
  }

  else
  {
    v3 = streams_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1001B8F34();
    }
  }

  v5 = 0;
LABEL_30:

  return v5;
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      [(SDStreamHandler *)self handleOpenedStream:v6];
    }

    else if (a4 == 2)
    {
      [(SDStreamHandler *)self handleBytesAvailable];
    }
  }

  else
  {
    switch(a4)
    {
      case 4uLL:
        [(SDStreamHandler *)self handleSpaceAvailable];
        break;
      case 8uLL:
        v8 = streams_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1001B8F68(v6);
        }

        v9 = [v6 streamError];
        streamError = self->_streamError;
        self->_streamError = v9;

        goto LABEL_15;
      case 0x10uLL:
        v7 = streams_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Stream end encountered, closing streams", v11, 2u);
        }

LABEL_15:
        [(SDStreamHandler *)self _stop];
        break;
    }
  }
}

- (void)setTCPProperties:(id)a3
{
  v6 = -1;
  v3 = [a3 propertyForKey:kCFStreamPropertySocketNativeHandle];
  [v3 getBytes:&v6 length:4];
  if (v6 < 0)
  {
    v4 = streams_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001B8FF4(&v6);
    }

    goto LABEL_7;
  }

  v5 = 0x4000;
  if (setsockopt(v6, 6, 513, &v5, 4u) == -1)
  {
    v4 = streams_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001B906C();
    }

LABEL_7:
  }
}

- (void)handleOpenedStream:(id)a3
{
  v4 = a3;
  if ([(NSInputStream *)self->_inputStream streamStatus]>= 2 && [(NSOutputStream *)self->_outputStream streamStatus]>= 2)
  {
    v5 = streams_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Network streams opened", &v12, 2u);
    }

    if (!self->_timeOpened)
    {
      v6 = +[NSDate date];
      timeOpened = self->_timeOpened;
      self->_timeOpened = v6;
    }

    if (self->_timeToOpen)
    {
      v8 = streams_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = +[NSDate date];
        [v9 timeIntervalSinceDate:self->_timeToOpen];
        v12 = 134217984;
        v13 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Time to open streams = %f", &v12, 0xCu);
      }

      timeToOpen = self->_timeToOpen;
      self->_timeToOpen = 0;
    }

    [(SDStreamHandler *)self invalidateOpenTimer];
  }

  if ([v4 isEqual:self->_outputStream])
  {
    [(SDStreamHandler *)self setTCPProperties:self->_outputStream];
  }
}

- (void)handleBytesAvailable
{
  v3 = +[SDStatusMonitor sharedMonitor];
  if ([v3 disableContinuityTLS])
  {

    goto LABEL_5;
  }

  v4 = [(SDStreamHandler *)self checkedCert];

  if ((v4 & 1) != 0 || ([(SDStreamHandler *)self setCheckedCert:1], [(SDStreamHandler *)self evaluateCert]))
  {
LABEL_5:
    if ([(SDStreamHandler *)self usingMessages])
    {

      [(SDStreamHandler *)self handleBytesForMessage];
    }

    else
    {

      [(SDStreamHandler *)self handleBytesForStream];
    }

    return;
  }

  v5 = streams_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1001B90F4();
  }

  [(SDStreamHandler *)self _stop];
}

- (void)handleSpaceAvailable
{
  v3 = +[SDStatusMonitor sharedMonitor];
  if ([v3 disableContinuityTLS])
  {

    goto LABEL_5;
  }

  v4 = [(SDStreamHandler *)self checkedCert];

  if ((v4 & 1) != 0 || ([(SDStreamHandler *)self setCheckedCert:1], [(SDStreamHandler *)self evaluateCert]))
  {
LABEL_5:
    if ([(SDStreamHandler *)self usingMessages])
    {

      [(SDStreamHandler *)self handleSpaceForMessage];
    }

    else
    {

      [(SDStreamHandler *)self handleSpaceForStream];
    }

    return;
  }

  v5 = streams_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1001B90F4();
  }

  [(SDStreamHandler *)self _stop];
}

- (void)writeToStreamWithData:(id)a3
{
  [(NSMutableData *)self->_outputStreamData appendData:a3];
  if (self->_bufferSpaceAvailable && [(NSMutableData *)self->_outputStreamData length]> 0x20000)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      self->_bufferSpaceAvailable = 0;
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 streamHandler:self bufferSpaceChanged:0];
    }
  }

  if ([(SDStreamHandler *)self usingMessages]|| ![(NSOutputStream *)self->_outputStream hasSpaceAvailable])
  {
    v7 = +[SDStatusMonitor sharedMonitor];
    v8 = [v7 enableStreamDebugging];

    if (v8)
    {
      v9 = streams_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No space available on network output stream, queuing stream data", v10, 2u);
      }
    }
  }

  else
  {

    [(SDStreamHandler *)self handleSpaceForStream];
  }
}

- (void)handleBytesForStream
{
  if ([(SDStreamHandler *)self shouldReadNetwork])
  {
    bzero(buf, 0x8000uLL);
    v3 = [(NSInputStream *)self->_inputStream read:buf maxLength:0x8000];
    if (v3 < 1)
    {
      v5 = streams_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1001B9128();
      }
    }

    else
    {
      v4 = v3;
      v5 = [NSData dataWithBytes:buf length:v3];
      if (v5)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v7 = objc_opt_respondsToSelector();

        if (v7)
        {
          v8 = objc_loadWeakRetained(&self->_delegate);
          [v8 streamHandler:self didReceiveStreamData:v5];
        }

        else
        {
          v8 = streams_log();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_1001B915C();
          }
        }
      }

      else
      {
        v8 = streams_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1001B9190();
        }
      }

      self->_readFromNetwork += v4;
      v9 = +[SDStatusMonitor sharedMonitor];
      v10 = [v9 enableStreamDebugging];

      if (v10)
      {
        v11 = streams_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          readFromNetwork = self->_readFromNetwork;
          v13 = 134217984;
          v14 = readFromNetwork;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Total read from network = %ld", &v13, 0xCu);
        }
      }
    }
  }

  else
  {
    v5 = streams_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client buffer full, waiting to read from network", buf, 2u);
    }
  }
}

- (void)handleSpaceForStream
{
  if ([(NSMutableData *)self->_outputStreamData length])
  {
    v3 = [(NSOutputStream *)self->_outputStream write:[(NSMutableData *)self->_outputStreamData bytes] maxLength:[(NSMutableData *)self->_outputStreamData length]];
    if (v3 < 1)
    {
      v4 = streams_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1001B91C4();
      }
    }

    else
    {
      v4 = [(NSMutableData *)self->_outputStreamData subdataWithRange:v3, [(NSMutableData *)self->_outputStreamData length]- v3];
      v5 = [NSMutableData dataWithData:v4];
      outputStreamData = self->_outputStreamData;
      self->_outputStreamData = v5;

      if (!self->_bufferSpaceAvailable && [(NSMutableData *)self->_outputStreamData length]>> 15 <= 2)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v8 = objc_opt_respondsToSelector();

        if (v8)
        {
          self->_bufferSpaceAvailable = 1;
          v9 = objc_loadWeakRetained(&self->_delegate);
          [v9 streamHandler:self bufferSpaceChanged:1];
        }
      }

      self->_wroteToNetwork += v3;
      v10 = +[SDStatusMonitor sharedMonitor];
      v11 = [v10 enableStreamDebugging];

      if (v11)
      {
        v12 = streams_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          wroteToNetwork = self->_wroteToNetwork;
          v16 = 134217984;
          v17 = wroteToNetwork;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Total written to network = %ld", &v16, 0xCu);
        }
      }

      [(SDStreamHandler *)self stopIfReady];
    }
  }

  else
  {
    v14 = +[SDStatusMonitor sharedMonitor];
    v15 = [v14 enableStreamDebugging];

    if (!v15)
    {
      return;
    }

    v4 = streams_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No output stream data to write to network", &v16, 2u);
    }
  }
}

- (void)sendMessage:(id)a3 withErrorHandler:(id)a4
{
  v4 = streams_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1001B9234();
  }
}

- (void)sendMessage:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SDStreamHandler *)self usingMessages])
  {
    v8 = [(SDStreamHandler *)self messageWithData:v6];
    if (!v8)
    {
      v11 = streams_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1001B9268();
      }

      if (v7)
      {
        v17 = NSLocalizedDescriptionKey;
        v18 = @"Could not create message payload";
        v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:91 userInfo:v12];
        v7[2](v7, 0, v13);
      }

      goto LABEL_8;
    }

    [(NSMutableArray *)self->_messageQueue addObject:v8];
    v9 = [v7 copy];
    [(NSMutableDictionary *)self->_handlers setObject:v9 forKeyedSubscript:v8];

    if ([(NSOutputStream *)self->_outputStream hasSpaceAvailable])
    {
      [(SDStreamHandler *)self handleSpaceForMessage];
LABEL_8:

      goto LABEL_9;
    }

    v10 = streams_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No space available on network output stream, queuing message", &v14, 2u);
    }

LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Cannot send messages of these streams";
    v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:94 userInfo:v8];
    v7[2](v7, 0, v10);
    goto LABEL_7;
  }

LABEL_9:
}

- (id)messageWithData:(id)a3
{
  v4 = a3;
  v5 = -[SDStreamHandler headerWithLength:](self, "headerWithLength:", [v4 length]);
  [v5 appendData:v4];

  return v5;
}

- (id)headerWithLength:(unsigned int)a3
{
  v7 = 1;
  v4 = [NSMutableData dataWithBytes:&v7 length:1];
  v6 = bswap32(a3);
  [v4 appendBytes:&v6 length:4];

  return v4;
}

- (void)handleBytesForMessage
{
  inputState = self->_inputState;
  if (inputState)
  {
    if (inputState != 1)
    {
      v15 = streams_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1001B938C();
      }

      return;
    }

    bytesRead = self->_bytesRead;
    v5 = bytesRead + 0x8000;
    inMessageLength = self->_inMessageLength;
    v7 = inMessageLength - bytesRead;
    if (v5 <= inMessageLength)
    {
      v8 = 0x8000;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 5;
  }

  v9 = &buf[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v9, v8);
  v10 = [(NSInputStream *)self->_inputStream read:v9 maxLength:v8];
  if (v10 < 1)
  {
    v16 = streams_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v10 < 0)
    {
      if (v17)
      {
        sub_1001B92D0();
      }

      goto LABEL_34;
    }

    if (v17)
    {
      sub_1001B929C();
    }
  }

  else
  {
    [(NSMutableData *)self->_inData appendBytes:v9 length:v10];
    self->_bytesRead += v10;
    v11 = streams_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_bytesRead;
      v13 = self->_inMessageLength;
      if (v13)
      {
        v14 = [NSString stringWithFormat:@", expected = %d", self->_inMessageLength];
      }

      else
      {
        v14 = &stru_1008EFBD0;
      }

      *buf = 134218498;
      v23 = v10;
      v24 = 2048;
      v25 = v12;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Read chunk = %ld, total = %ld%@", buf, 0x20u);
      if (v13)
      {
      }
    }

    v18 = self->_inputState;
    if (v10 >= 5 && !v18)
    {
      [(SDStreamHandler *)self handleHeaderRead];
      v18 = self->_inputState;
    }

    if (v18 == 1)
    {
      v19 = self->_bytesRead;
      v20 = self->_inMessageLength;
      if (v19 == v20)
      {
        [(SDStreamHandler *)self handleMessageRead];
        return;
      }

      if (v19 > v20)
      {
        v21 = streams_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1001B9358();
        }

LABEL_34:
        [(SDStreamHandler *)self _stop];
      }
    }
  }
}

- (void)handleHeaderRead
{
  self->_inMessageLength = [(SDStreamHandler *)self parseHeader:self->_inData];
  v3 = [(SDStreamHandler *)self trimHeader:self->_inData];
  v4 = [NSMutableData dataWithData:v3];
  inData = self->_inData;
  self->_inData = v4;

  self->_bytesRead -= 5;
  self->_inputState = 1;
  v6 = streams_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    inMessageLength = self->_inMessageLength;
    v8[0] = 67109120;
    v8[1] = inMessageLength;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Expected message length = %d", v8, 8u);
  }
}

- (void)handleMessageRead
{
  v3 = [(NSMutableData *)self->_inData copy];
  inMessage = self->_inMessage;
  self->_inMessage = v3;

  [(SDStreamHandler *)self resetReadState];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained streamHandler:self didReceiveMessage:self->_inMessage];
}

- (void)resetReadState
{
  self->_bytesRead = 0;
  self->_inMessageLength = 0;
  v3 = objc_opt_new();
  inData = self->_inData;
  self->_inData = v3;

  self->_inputState = 0;
}

- (void)handleSpaceForMessage
{
  if ([(NSMutableArray *)self->_messageQueue count])
  {
    p_outMessage = &self->_outMessage;
    outMessage = self->_outMessage;
    if (!outMessage)
    {
      v5 = [(NSMutableArray *)self->_messageQueue objectAtIndexedSubscript:0];
      v6 = self->_outMessage;
      self->_outMessage = v5;

      outMessage = self->_outMessage;
    }

    v7 = [(NSMutableData *)outMessage mutableBytes];
    byteIndex = self->_byteIndex;
    p_byteIndex = &self->_byteIndex;
    v10 = [(NSMutableData *)self->_outMessage length];
    v11 = v10;
    if (v10 - self->_byteIndex >= 0x8000)
    {
      v12 = 0x8000;
    }

    else
    {
      v12 = v10 - *p_byteIndex;
    }

    v13 = &v33 - ((v12 + 15) & 0x1FFF0);
    bzero(v13, v12);
    memcpy(v13, &v7[byteIndex], v12);
    v14 = [(NSOutputStream *)self->_outputStream write:v13 maxLength:v12];
    v15 = v14;
    if (v14 >= 1)
    {
      v16 = (*p_byteIndex + v14);
      *p_byteIndex = v16;
      if (v16 == [(NSMutableData *)*p_outMessage length])
      {
        v17 = streams_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v40 = v11;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Finished writing message of size = %lu", buf, 0xCu);
        }

        [(SDStreamHandler *)self handleMessageWritten:0];
        return;
      }

      v24 = *p_byteIndex;
      if (v24 <= [(NSMutableData *)*p_outMessage length])
      {
        return;
      }

      v25 = streams_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1001B947C(&self->_byteIndex, &self->_outMessage);
      }

      v21 = NSPOSIXErrorDomain;
      v37 = NSLocalizedDescriptionKey;
      v38 = @"Wrote more bytes than message contained";
      v22 = &v38;
      v23 = &v37;
LABEL_23:
      v26 = [NSDictionary dictionaryWithObjects:v22 forKeys:v23 count:1, v33, v34];
      v27 = [NSError errorWithDomain:v21 code:94 userInfo:v26];
      [(SDStreamHandler *)self handleMessageWritten:v27];

      return;
    }

    v19 = streams_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if ((v15 & 0x8000000000000000) == 0)
    {
      if (v20)
      {
        sub_1001B93C0();
      }

      v21 = NSPOSIXErrorDomain;
      v33 = NSLocalizedDescriptionKey;
      v34 = @"Zero bytes written for message";
      v22 = &v34;
      v23 = &v33;
      goto LABEL_23;
    }

    if (v20)
    {
      sub_1001B93F4();
    }

    v28 = *__error();
    v35 = NSLocalizedDescriptionKey;
    v29 = __error();
    v30 = [NSString stringWithFormat:@"%s", strerror(*v29)];
    v36 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v32 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v28 userInfo:v31];
    [(SDStreamHandler *)self handleMessageWritten:v32];
  }

  else
  {
    v18 = streams_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No messages to write in queue", buf, 2u);
    }
  }
}

- (void)handleMessageWritten:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_handlers objectForKeyedSubscript:self->_outMessage];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, v4 == 0, v4);
    [(NSMutableDictionary *)self->_handlers removeObjectForKey:self->_outMessage];
  }

  else
  {
    v7 = streams_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001B9514();
    }
  }

  outMessage = self->_outMessage;
  self->_outMessage = 0;

  [(NSMutableArray *)self->_messageQueue removeObjectAtIndex:0];
  self->_byteIndex = 0;
}

- (unsigned)parseHeader:(id)a3
{
  v3 = a3;
  if (*[v3 bytes] == 1)
  {
    v4 = bswap32(*([v3 bytes] + 1));
  }

  else
  {
    v5 = streams_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001B9548();
    }

    v4 = -1;
  }

  return v4;
}

- (id)trimHeader:(id)a3
{
  v3 = a3;
  v4 = [v3 subdataWithRange:{5, objc_msgSend(v3, "length") - 5}];

  return v4;
}

- (SDStreamHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end